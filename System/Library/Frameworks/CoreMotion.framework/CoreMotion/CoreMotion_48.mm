void sub_19B6C22FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58)
{
  operator delete(v58);
  if (__p)
  {
    operator delete(__p);
  }

  sub_19B42A568((v59 - 192));
  sub_19B66B918(&a15);
  sub_19B42A568(&a21);
  sub_19B42A568(&a27);
  sub_19B42A568(&a33);
  sub_19B66B918(a14);
  _Unwind_Resume(a1);
}

void sub_19B6C23F4(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 12);
  sub_19B420408((a1 + 8), (a2 + 12));
  v5 = *(a1 + 48);
  if (v5 >= 0x14)
  {
    v6 = *v4;
    v7 = *v4;
    if (*(a1 + 104) <= v7 && *(a1 + 108) >= v7)
    {
      v8 = *(a1 + 40);
      v9 = v5 - 1;
      v10 = *(*(*(a1 + 16) + (((v8 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v8 + v9) & 0x3FF)) - *(*(*(a1 + 16) + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF));
      if (v10 == 0.0)
      {
LABEL_76:
        *(a1 + 40) = v8 + 1;
        *(a1 + 48) = v9;
        sub_19B420490(a1 + 8, 1);
        return;
      }

      HIDWORD(v67) = *v4;
      v11 = *(a1 + 64);
      if (v11)
      {
        v12 = a1 + 64;
        do
        {
          if (*(v11 + 32) >= v7)
          {
            v12 = v11;
          }

          v11 = *(v11 + 8 * (*(v11 + 32) < v7));
        }

        while (v11);
        if (v12 != a1 + 64 && *(v12 + 32) <= v7)
        {
LABEL_31:
          v24 = powf(0.2, v10 * 0.05);
          if (v10 >= 0.0)
          {
            v25 = v24;
            v26 = v7 + 1;
          }

          else
          {
            v25 = powf(0.2, v10 * -0.05);
            v26 = v7;
          }

          *buf = &v67 + 4;
          if (*(sub_19B6C4408((a1 + 80), v7, buf) + 8) == 30 && ((1.0 - v25) * 2147500000.0) > rand())
          {
            *buf = &v67 + 4;
            v27 = sub_19B6C4408((a1 + 80), SHIDWORD(v67), buf);
            --*(v27 + 8);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
            }

            v28 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
            {
              *buf = &v67 + 4;
              v29 = sub_19B6C38FC((a1 + 56), SHIDWORD(v67), buf);
              v30 = *(*(v29[6] + ((v29[9] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v29[9]);
              *buf = &v67 + 4;
              v31 = *(sub_19B6C4408((a1 + 80), SHIDWORD(v67), buf) + 8);
              *buf = 136315906;
              *&buf[4] = "PopSampleTime";
              *&buf[12] = 2048;
              *&buf[14] = v30;
              *&buf[22] = 2080;
              *&buf[24] = "CalibrationBinCount";
              *v88 = 1024;
              *&v88[2] = v31;
              _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%d", buf, 0x26u);
            }

            v32 = sub_19B420058();
            if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
              }

              v33 = qword_1EAFE2860;
              *v68 = &v67 + 4;
              v34 = sub_19B6C38FC((a1 + 56), SHIDWORD(v67), v68);
              v35 = *(*(v34[6] + ((v34[9] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v34[9]);
              *v68 = &v67 + 4;
              v36 = *(sub_19B6C4408((a1 + 80), SHIDWORD(v67), v68) + 8);
              *v68 = 136315906;
              *&v68[4] = "PopSampleTime";
              v69 = 2048;
              v70 = v35;
              v71 = 2080;
              v72 = "CalibrationBinCount";
              v73 = 1024;
              LODWORD(v74) = v36;
              LODWORD(v67) = 38;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v33, 2, "%s,%f,%s,%d", v68, v67);
              v38 = v37;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLRobustSlopeEstimator::addPoint(const CLPressure::Sample *)", "CoreLocation: %s\n", v37);
              if (v38 != buf)
              {
                free(v38);
              }
            }

            *buf = &v67 + 4;
            v39 = sub_19B6C38FC((a1 + 56), SHIDWORD(v67), buf);
            *(v39 + 9) = vaddq_s64(*(v39 + 9), xmmword_19B7BBE10);
            sub_19B6C42D0((v39 + 5), 1);
          }

          *buf = &v67 + 4;
          v40 = *(sub_19B6C4408((a1 + 80), SHIDWORD(v67), buf) + 8);
          v41 = *a2;
          if (v40 < 1 || v41 - *a1 > (((v26 - v6) / v10) / (30 - v40)))
          {
            v42 = v41;
            *a1 = v42;
            *buf = &v67 + 4;
            v43 = sub_19B6C38FC((a1 + 56), SHIDWORD(v67), buf);
            v44 = v43;
            v45 = v43[7];
            v46 = v43[6];
            if (v45 == v46)
            {
              v47 = 0;
            }

            else
            {
              v47 = 32 * (v45 - v46) - 1;
            }

            v48 = v43[9];
            v49 = v43[10] + v48;
            if (v47 == v49)
            {
              if (v48 < 0x100)
              {
                v50 = v43[8];
                v51 = v43[5];
                if (v45 - v46 < v50 - v51)
                {
                  operator new();
                }

                if (v50 == v51)
                {
                  v52 = 1;
                }

                else
                {
                  v52 = (v50 - v51) >> 2;
                }

                sub_19B6C3828(v52);
              }

              v43[9] = v48 - 256;
              *buf = *v46;
              v43[6] = (v46 + 8);
              sub_19B6C361C(v43 + 5, buf);
              v46 = v44[6];
              v49 = v44[10] + v44[9];
            }

            *(*&v46[(v49 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v49) = *a2;
            ++v44[10];
            *buf = &v67 + 4;
            v53 = sub_19B6C4408((a1 + 80), SHIDWORD(v67), buf);
            ++*(v53 + 8);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
            }

            v54 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
            {
              v55 = *a2;
              v57 = *(a2 + 8);
              v56 = *(a2 + 12);
              *buf = &v67 + 4;
              v58 = *(sub_19B6C4408((a1 + 80), SHIDWORD(v67), buf) + 8);
              *buf = 136317442;
              *&buf[4] = "CalibrationSampleTime";
              *&buf[12] = 2048;
              *&buf[14] = v55;
              *&buf[22] = 2080;
              *&buf[24] = "CalibrationSamplePressure";
              *v88 = 2048;
              *&v88[2] = v57;
              *&v88[10] = 2080;
              *&v88[12] = "CalibrationSampleTemperature";
              v89 = 2048;
              v90 = v56;
              v91 = 2080;
              v92 = "CalibrationTemperatureRate";
              v93 = 2048;
              v94 = v10;
              v95 = 2080;
              v96 = "CalibrationBinCount";
              v97 = 1024;
              v98 = v58;
              _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%f,%s,%f,%s,%f,%s,%d", buf, 0x62u);
            }

            v59 = sub_19B420058();
            if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
              }

              v60 = qword_1EAFE2860;
              v61 = *a2;
              v63 = *(a2 + 8);
              v62 = *(a2 + 12);
              *v68 = &v67 + 4;
              v64 = *(sub_19B6C4408((a1 + 80), SHIDWORD(v67), v68) + 8);
              *v68 = 136317442;
              *&v68[4] = "CalibrationSampleTime";
              v69 = 2048;
              v70 = v61;
              v71 = 2080;
              v72 = "CalibrationSamplePressure";
              v73 = 2048;
              v74 = v63;
              v75 = 2080;
              v76 = "CalibrationSampleTemperature";
              v77 = 2048;
              v78 = v62;
              v79 = 2080;
              v80 = "CalibrationTemperatureRate";
              v81 = 2048;
              v82 = v10;
              v83 = 2080;
              v84 = "CalibrationBinCount";
              v85 = 1024;
              v86 = v64;
              LODWORD(v67) = 98;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v60, 2, "%s,%f,%s,%f,%s,%f,%s,%f,%s,%d", v68, v67);
              v66 = v65;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLRobustSlopeEstimator::addPoint(const CLPressure::Sample *)", "CoreLocation: %s\n", v65);
              if (v66 != buf)
              {
                free(v66);
              }
            }
          }

          v8 = *(a1 + 40);
          v9 = *(a1 + 48) - 1;
          goto LABEL_76;
        }
      }

      *v88 = 0u;
      memset(buf, 0, sizeof(buf));
      *v68 = &v67 + 4;
      v13 = sub_19B6C38FC((a1 + 56), v7, v68);
      v15 = v13[6];
      v14 = v13[7];
      v13[10] = 0;
      v16 = (v14 - v15) >> 3;
      if (v16 >= 3)
      {
        do
        {
          operator delete(*v15);
          v14 = v13[7];
          v15 = (v13[6] + 8);
          v13[6] = v15;
          v16 = (v14 - v15) >> 3;
        }

        while (v16 > 2);
      }

      if (v16 == 1)
      {
        v17 = 128;
      }

      else
      {
        if (v16 != 2)
        {
LABEL_19:
          if (v13[10])
          {
            sub_19B6C42D0((v13 + 5), 0);
            v19 = v13[6];
            v18 = v13[7];
            if (v18 == v19)
            {
              v20 = 0;
            }

            else
            {
              v20 = 32 * (v18 - v19) - 1;
            }

            if ((v20 - (v13[10] + v13[9])) >= 0x100)
            {
              operator delete(*(v18 - 8));
              v13[7] -= 8;
            }
          }

          else
          {
            while (v14 != v15)
            {
              operator delete(*(v14 - 8));
              v15 = v13[6];
              v14 = v13[7] - 8;
              v13[7] = v14;
            }

            v13[9] = 0;
          }

          sub_19B6C432C(v13 + 5);
          v22 = v13[6];
          v21 = v13[7];
          if (v21 != v22)
          {
            v13[7] = v21 + ((v22 - v21 + 7) & 0xFFFFFFFFFFFFFFF8);
          }

          sub_19B6C432C(v13 + 5);
          *(v13 + 5) = *buf;
          v23 = *v88;
          *(v13 + 7) = *&buf[16];
          memset(buf, 0, sizeof(buf));
          *(v13 + 9) = v23;
          *v88 = 0;
          *&v88[8] = 0;
          sub_19B6C4224(buf);
          *buf = &v67 + 4;
          *(sub_19B6C4408((a1 + 80), SHIDWORD(v67), buf) + 8) = 0;
          v7 = HIDWORD(v67);
          v6 = *v4;
          goto LABEL_31;
        }

        v17 = 256;
      }

      v13[9] = v17;
      goto LABEL_19;
    }
  }
}

void sub_19B6C31B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  operator delete(v26);
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_19B6C31F4(uint64_t a1)
{
  *a1 = 0;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 48) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 24);
      v2 = (*(a1 + 16) + 8);
      *(a1 + 16) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    *(a1 + 40) = v6;
  }

  sub_19B6C38A0(a1 + 56, *(a1 + 64));
  *(a1 + 56) = a1 + 64;
  *(a1 + 64) = 0;
  v8 = *(a1 + 88);
  v7 = (a1 + 88);
  *(v7 - 2) = 0;
  sub_19B654634((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

void sub_19B6C32A4(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_19B6C361C(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_19B6C3828(v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_19B6C361C(a1, v16);
    }
  }
}

void sub_19B6C35CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C361C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_19B6C3828(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_19B6C3720(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B6C3828(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_19B6C3828(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_19B4C5080();
}

os_log_t sub_19B6C3870()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

void sub_19B6C38A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B6C38A0(a1, *a2);
    sub_19B6C38A0(a1, a2[1]);
    sub_19B6C4224(a2 + 5);

    operator delete(a2);
  }
}

uint64_t *sub_19B6C38FC(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

float sub_19B6C39EC(char *a1, float *a2, char *a3, float *a4)
{
  if (a4 == a2 || (v4 = a4, v5 = a2, v6 = a1, v7 = *a1, v8 = a2 - *a1, ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v8 >> 2) <= 0))
  {
    __assert_rtn("getMedianInPlace", "CMPressureUtilities.h", 172, "size > 0");
  }

  v92 = ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v8 >> 2);
  v9 = a3;
  v10 = sub_19B6C40F4(a1, a2, v92 >> 1);
  if (v11 != v4)
  {
    v14 = v5;
    v15 = v6;
    v91 = v11;
    while (1)
    {
      if (v4 == v14)
      {
        goto LABEL_4;
      }

      v16 = *v9;
      v17 = *v15;
      v18 = ((v4 - *v9) >> 2) + ((v9 - v15) << 7) - ((v14 - *v15) >> 2);
      if (v18 < 2)
      {
        goto LABEL_4;
      }

      if (v18 == 3)
      {
        v74 = v14 + 1;
        if ((v14 + 1) - v17 == 4096)
        {
          v74 = *(v15 + 1);
        }

        if (v4 == v16)
        {
          v4 = (*(v9 - 1) + 4096);
        }

        v75 = *v74;
        v76 = *v14;
        v77 = *(v4 - 1);
        if (*v74 >= *v14)
        {
          if (v77 < v75)
          {
            *v74 = v77;
            *(v4 - 1) = v75;
            v89 = *v14;
            if (*v74 < *v14)
            {
              *v14 = *v74;
              *v74 = v89;
            }
          }
        }

        else
        {
          if (v77 >= v75)
          {
            *v14 = v75;
            *v74 = v76;
            v90 = *(v4 - 1);
            if (v90 >= v76)
            {
              goto LABEL_4;
            }

            *v74 = v90;
          }

          else
          {
            *v14 = v77;
          }

          *(v4 - 1) = v76;
        }

        goto LABEL_4;
      }

      if (v18 == 2)
      {
        if (v4 == v16)
        {
          v4 = (*(v9 - 1) + 4096);
        }

        v78 = *(v4 - 1);
        v79 = *v14;
        if (v78 < *v14)
        {
          *v14 = v78;
          *(v4 - 1) = v79;
        }

        goto LABEL_4;
      }

      if (v18 <= 7)
      {
        v80 = v4;
        if (v16 == v4)
        {
          v80 = *(v9 - 1) + 4096;
        }

        v81 = (v80 - 4);
        while (v14 != v81)
        {
          if (v4 != v14)
          {
            v82 = v17;
            v83 = v14;
            v84 = v14;
            v85 = v15;
            while (1)
            {
              if (++v84 - v82 == 4096)
              {
                v86 = *(v85 + 1);
                v85 += 8;
                v82 = v86;
                v84 = v86;
              }

              if (v84 == v4)
              {
                break;
              }

              if (*v84 < *v83)
              {
                v83 = v84;
              }
            }

            if (v83 != v14)
            {
              v87 = *v14;
              *v14 = *v83;
              *v83 = v87;
            }
          }

          if (++v14 - v17 == 4096)
          {
            v88 = *(v15 + 1);
            v15 += 8;
            v17 = v88;
            v14 = v88;
          }
        }

        goto LABEL_4;
      }

      v19 = v10;
      sub_19B6C40F4(v15, v14, v18 >> 1);
      v21 = v16;
      v22 = v9;
      v23 = v4;
      if (v4 == v16)
      {
        v22 = v9 - 8;
        v21 = *(v9 - 1);
        v23 = v21 + 1024;
      }

      v25 = *(v23 - 1);
      v24 = v23 - 1;
      v26 = v25;
      v27 = *v20;
      v28 = *v14;
      if (*v20 < *v14)
      {
        break;
      }

      v10 = v19;
      if (v26 < v27)
      {
        *v20 = v26;
        *v24 = v27;
        v29 = *v14;
        if (*v20 < *v14)
        {
          *v14 = *v20;
          *v20 = v29;
        }

        goto LABEL_24;
      }

      v30 = 0;
LABEL_26:
      v31 = *v14;
      if (*v14 < *v20)
      {
LABEL_34:
        v33 = v14 + 1;
        v34 = v17;
        v35 = v15;
        if ((v14 + 1) - v17 == 4096)
        {
          v35 = v15 + 8;
          v34 = *(v15 + 1);
          v33 = v34;
        }

        if (v35 < v22 || v35 == v22 && v33 < v24)
        {
          while (1)
          {
            v36 = *v20;
            while (1)
            {
              v37 = *v33;
              if (*v33 >= v36)
              {
                break;
              }

              if (++v33 - v34 == 4096)
              {
                v38 = *(v35 + 1);
                v35 += 8;
                v34 = v38;
                v33 = v38;
              }
            }

            do
            {
              if (v24 == v21)
              {
                v39 = *(v22 - 1);
                v22 -= 8;
                v21 = v39;
                v24 = v39 + 1024;
              }

              v40 = *--v24;
              v41 = v40;
            }

            while (v40 >= v36);
            if (v35 >= v22 && (v35 != v22 || v33 >= v24))
            {
              break;
            }

            v42 = v20 == v33;
            *v33++ = v41;
            *v24 = v37;
            ++v30;
            if (v42)
            {
              v20 = v24;
            }

            if (v33 - v34 == 4096)
            {
              v43 = *(v35 + 1);
              v35 += 8;
              v34 = v43;
              v33 = v43;
            }
          }
        }

        if (v33 != v20)
        {
          v44 = *v33;
          if (*v20 < *v33)
          {
            *v33 = *v20;
            *v20 = v44;
            ++v30;
          }
        }

        v11 = v91;
        if (v33 == v91)
        {
          goto LABEL_4;
        }

        if (!v30)
        {
          if (v35 > v10 || (v46 = v34, v47 = v33, v48 = v35, v33 > v91) && (v46 = v34, v47 = v33, v48 = v35, v35 == v10))
          {
            v49 = v14;
            v50 = v15;
            while (1)
            {
              v51 = v49 + 1;
              if ((v49 + 1) - v17 == 4096)
              {
                v52 = *(v50 + 1);
                v50 += 8;
                v17 = v52;
                v51 = v52;
              }

              if (v51 == v33)
              {
                break;
              }

              v53 = *v51 < *v49;
              v49 = v51;
              if (v53)
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
            while (1)
            {
              v54 = v47 + 1;
              if ((v47 + 1) - v46 == 4096)
              {
                v55 = *(v48 + 1);
                v48 += 8;
                v46 = v55;
                v54 = v55;
              }

              if (v54 == v4)
              {
                break;
              }

              v53 = *v54 < *v47;
              v47 = v54;
              if (v53)
              {
                goto LABEL_58;
              }
            }
          }

          goto LABEL_4;
        }

LABEL_58:
        if (v35 > v10 || v33 > v91 && v35 == v10)
        {
          v45 = v14;
          v4 = v33;
          v9 = v35;
        }

        else
        {
          v45 = v33 + 1;
          if ((v33 + 1) - v34 == 4096)
          {
            v71 = *(v35 + 1);
            v35 += 8;
            v45 = v71;
          }

          v15 = v35;
        }
      }

      else
      {
        while (1)
        {
          if (v24 == v21)
          {
            v32 = *(v22 - 1);
            v22 -= 8;
            v21 = v32;
            v24 = v32 + 1024;
          }

          if (v14 == --v24)
          {
            break;
          }

          if (*v24 < *v20)
          {
            *v14 = *v24;
            *v24 = v31;
            if (v30)
            {
              v30 = 2;
            }

            else
            {
              v30 = 1;
            }

            goto LABEL_34;
          }
        }

        v45 = v14 + 1;
        if ((v14 + 1) - v17 == 4096)
        {
          v56 = *(v15 + 1);
          v15 += 8;
          v17 = v56;
          v45 = v56;
        }

        v11 = v91;
        v57 = v9;
        v58 = v4;
        if (v4 == v16)
        {
          v57 = v9 - 8;
          v16 = *(v9 - 1);
          v58 = v16 + 1024;
        }

        v60 = *(v58 - 1);
        v59 = v58 - 1;
        v61 = v60;
        if (v31 >= v60)
        {
          while (v45 != v59)
          {
            v69 = *v45;
            if (v31 < *v45)
            {
              *v45++ = v61;
              *v59 = v69;
              if (v45 - v17 == 4096)
              {
                v72 = *(v15 + 1);
                v15 += 8;
                v17 = v72;
                v45 = v72;
              }

              goto LABEL_83;
            }

            if (++v45 - v17 == 4096)
            {
              v70 = *(v15 + 1);
              v15 += 8;
              v17 = v70;
              v45 = v70;
            }
          }

          goto LABEL_4;
        }

LABEL_83:
        if (v45 == v59)
        {
          goto LABEL_4;
        }

        while (1)
        {
          v62 = *v14;
          while (1)
          {
            v63 = *v45;
            if (v62 < *v45)
            {
              break;
            }

            if (++v45 - v17 == 4096)
            {
              v64 = *(v15 + 1);
              v15 += 8;
              v17 = v64;
              v45 = v64;
            }
          }

          do
          {
            if (v59 == v16)
            {
              v65 = *(v57 - 1);
              v57 -= 8;
              v16 = v65;
              v59 = v65 + 1024;
            }

            v66 = *--v59;
            v67 = v66;
          }

          while (v62 < v66);
          if (v15 >= v57 && (v15 != v57 || v45 >= v59))
          {
            break;
          }

          *v45++ = v67;
          *v59 = v63;
          if (v45 - v17 == 4096)
          {
            v68 = *(v15 + 1);
            v15 += 8;
            v17 = v68;
            v45 = v68;
          }
        }

        if (v15 > v10 || v45 > v91 && v15 == v10)
        {
          goto LABEL_4;
        }
      }

      v14 = v45;
      if (v4 == v11)
      {
        goto LABEL_4;
      }
    }

    v10 = v19;
    if (v26 >= v27)
    {
      *v14 = v27;
      *v20 = v28;
      if (*v24 >= v28)
      {
LABEL_24:
        v30 = 1;
        goto LABEL_26;
      }

      *v20 = *v24;
    }

    else
    {
      *v14 = v26;
    }

    *v24 = v28;
    goto LABEL_24;
  }

LABEL_4:
  if (v92)
  {
    return *v11;
  }

  v12 = v11;
  if (v5 != v11)
  {
    v12 = v5;
    while (1)
    {
      if (++v5 - v7 == 4096)
      {
        v73 = *(v6 + 1);
        v6 += 8;
        v7 = v73;
        v5 = v73;
      }

      if (v5 == v11)
      {
        break;
      }

      if (*v12 < *v5)
      {
        v12 = v5;
      }
    }
  }

  return *v12 + ((*v11 - *v12) * 0.5);
}

void *sub_19B6C40F4(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 2);
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
    }

    else
    {
      result += v3 >> 10;
    }
  }

  return result;
}

void sub_19B6C4148(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_19B6C3828((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_19B6C4224(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_19B42AD10(a1);
}

void sub_19B6C42D0(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x100)
  {
    a2 = 1;
  }

  if (v3 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void sub_19B6C432C(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_19B6C3828((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t *sub_19B6C4408(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19B6C44E8(unint64_t a1)
{
  if (a1 > 0x60)
  {
    return 4;
  }

  else
  {
    return qword_19B7BBE30[a1];
  }
}

void sub_19B6C4784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C47D0(uint64_t a1, CLConnectionMessage **a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  v10 = *(a1 + 32);
  if (!*(v10 + 40))
  {
    goto LABEL_20;
  }

  v11 = *a2;
  if (!*a2)
  {
    v96 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v97, *(a1 + 40), *(a1 + 32), @"CMPedometer.mm", 111, @"Empty pedometer update.");
    v11 = *a2;
  }

  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v11, v9);
  if (DictionaryOfClasses)
  {
    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMPedometerDataObject");
    v20 = objc_msgSend_copy(*(*(a1 + 32) + 40), v18, v19);
    v21 = *(*(a1 + 32) + 16);
    if (v15)
    {
      v22 = v101;
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v23 = sub_19B6C4F68;
    }

    else
    {
      v22 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v23 = sub_19B6C4FE0;
      v15 = v17;
    }

    v22[2] = v23;
    v22[3] = &unk_1E7532B90;
    v22[4] = v15;
    v22[5] = v20;
    dispatch_async(v21, v22);
    v10 = *(a1 + 32);
LABEL_20:
    v28 = *(v10 + 32);
    if (!v28)
    {
      return;
    }

    v29 = _Block_copy(v28);
    if (*a2 && (v30 = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
    {
      v32 = v30;
      v33 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"CMErrorMessage");
      v35 = objc_msgSend_objectForKeyedSubscript_(v32, v34, @"CMPedometerDataObject");
      if (v33)
      {
        v38 = *(*(a1 + 32) + 16);
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = sub_19B6C5064;
        v99[3] = &unk_1E7532B90;
        v99[4] = v33;
        v99[5] = v29;
        v39 = v99;
LABEL_44:
        dispatch_async(v38, v39);
LABEL_45:
        _Block_release(v29);
        return;
      }

      v44 = v35;
      if (v35)
      {
        if (*(*(a1 + 32) + 48) == -1)
        {
          v45 = objc_msgSend_numberOfSteps(v35, v36, v37);
          *(*(a1 + 32) + 48) = objc_msgSend_integerValue(v45, v46, v47);
          v50 = objc_msgSend_numberOfPushes(v44, v48, v49);
          *(*(a1 + 32) + 56) = objc_msgSend_integerValue(v50, v51, v52);
          v55 = objc_msgSend_distance(v44, v53, v54);
          objc_msgSend_doubleValue(v55, v56, v57);
          *(*(a1 + 32) + 80) = v58;
          v61 = objc_msgSend_floorsAscended(v44, v59, v60);
          *(*(a1 + 32) + 96) = objc_msgSend_intValue(v61, v62, v63);
          v66 = objc_msgSend_floorsDescended(v44, v64, v65);
          *(*(a1 + 32) + 104) = objc_msgSend_intValue(v66, v67, v68);
          active = objc_msgSend_activeTime(v44, v69, v70);
          objc_msgSend_doubleValue(active, v72, v73);
          *(*(a1 + 32) + 112) = v74;
          v77 = objc_msgSend_elevationAscended(v44, v75, v76);
          *(*(a1 + 32) + 160) = objc_msgSend_intValue(v77, v78, v79);
          v82 = objc_msgSend_elevationDescended(v44, v80, v81);
          *(*(a1 + 32) + 168) = objc_msgSend_intValue(v82, v83, v84);
        }

        v85 = objc_msgSend_numberOfSteps(v44, v36, v37);
        if (!objc_msgSend_integerValue(v85, v86, v87))
        {
          v90 = objc_msgSend_numberOfPushes(v44, v88, v89);
          if (!objc_msgSend_integerValue(v90, v91, v92))
          {
            *(*(a1 + 32) + 48) = 0;
            *(*(a1 + 32) + 56) = 0;
            *(*(a1 + 32) + 80) = 0;
            *(*(a1 + 32) + 96) = 0;
            *(*(a1 + 32) + 104) = 0;
            *(*(a1 + 32) + 112) = 0;
            *(*(a1 + 32) + 160) = 0;
            *(*(a1 + 32) + 168) = 0;
          }
        }

        v93 = *(a1 + 32);
        v38 = *(v93 + 16);
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = sub_19B6C50DC;
        v98[3] = &unk_1E7532C08;
        v98[4] = v44;
        v98[5] = v93;
        v98[6] = v29;
        v39 = v98;
        goto LABEL_44;
      }

      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v94 = qword_1EAFE2818;
      if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v105 = v32;
        _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_FAULT, "Unable to parse message (%{public}@) when starting updates to queue", buf, 0xCu);
      }

      v95 = sub_19B420058();
      if ((*(v95 + 160) & 0x80000000) != 0 && (*(v95 + 164) & 0x80000000) != 0 && (*(v95 + 168) & 0x80000000) != 0 && !*(v95 + 152))
      {
        goto LABEL_45;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v102 = 138543362;
      v103 = v32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2818, 17, "Unable to parse message (%{public}@) when starting updates to queue", &v102, 12);
    }

    else
    {
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v40 = qword_1EAFE2818;
      if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "Unable to parse message when starting updates to queue!", buf, 2u);
      }

      v41 = sub_19B420058();
      if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
      {
        goto LABEL_45;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      LOWORD(v102) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2818, 16, "Unable to parse message when starting updates to queue!", &v102, 2);
    }

    v43 = v42;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v42);
    if (v43 != buf)
    {
      free(v43);
    }

    goto LABEL_45;
  }

  if (qword_1ED71C7F8 != -1)
  {
    dispatch_once(&qword_1ED71C7F8, &unk_1F0E3AF90);
  }

  v24 = qword_1ED71C7F0;
  if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Empty pedometer dictionary.", buf, 2u);
  }

  v25 = sub_19B420058();
  if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3AF90);
    }

    LOWORD(v102) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7F0, 16, "Empty pedometer dictionary.", &v102, 2);
    v27 = v26;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }
}

uint64_t sub_19B6C4F68(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6C4FE0(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v5, 1);
  return (*(v2 + 16))(v2, v3, 0);
}

uint64_t sub_19B6C5064(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

void sub_19B6C50DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_numberOfSteps(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_integerValue(v5, v6, v7) - *(*(a1 + 40) + 48) + *(*(a1 + 40) + 64);
  v11 = objc_msgSend_numberOfPushes(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_integerValue(v11, v12, v13);
  v17 = *(a1 + 40);
  v18 = v17[8];
  v19 = v14 - v17[7];
  v20 = v17[9];
  v21 = v19 + v20;
  v22 = (v19 + v20);
  if (v18 < v8 || v22 > v20)
  {
    v123 = v2;
    v24 = objc_msgSend_distance(*(a1 + 32), v15, v16);
    objc_msgSend_doubleValue(v24, v25, v26);
    v28 = v27;
    v29 = *(a1 + 40);
    v31 = *(v29 + 80);
    v30 = *(v29 + 88);
    v34 = objc_msgSend_floorsAscended(*(a1 + 32), v32, v33);
    v37 = objc_msgSend_intValue(v34, v35, v36);
    v38 = *(a1 + 40);
    v40 = *(v38 + 96);
    v39 = *(v38 + 100);
    v43 = objc_msgSend_floorsDescended(*(a1 + 32), v41, v42);
    v118 = objc_msgSend_intValue(v43, v44, v45);
    v46 = *(a1 + 40);
    v48 = *(v46 + 104);
    v47 = *(v46 + 108);
    active = objc_msgSend_activeTime(*(a1 + 32), v49, v50);
    objc_msgSend_doubleValue(active, v52, v53);
    v55 = v54;
    v56 = *(a1 + 40);
    v58 = *(v56 + 112);
    v57 = *(v56 + 120);
    v61 = objc_msgSend_elevationAscended(*(a1 + 32), v59, v60);
    v114 = objc_msgSend_intValue(v61, v62, v63);
    v64 = *(a1 + 40);
    v112 = *(v64 + 160);
    v113 = *(v64 + 164);
    v67 = objc_msgSend_elevationDescended(*(a1 + 32), v65, v66);
    v111 = objc_msgSend_intValue(v67, v68, v69);
    v70 = *(a1 + 40);
    v109 = *(v70 + 168);
    v110 = *(v70 + 172);
    StepTime = objc_msgSend_firstStepTime(*(a1 + 32), v71, v72);
    v122 = [CMPedometerData alloc];
    v121 = *(*(a1 + 40) + 128);
    v76 = objc_msgSend_endDate(*(a1 + 32), v74, v75);
    objc_msgSend_timeIntervalSinceReferenceDate(v76, v77, v78);
    v82 = v81;
    if (*(*(a1 + 40) + 137) == 1)
    {
      v120 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v79, (v37 - v40 + v39));
      if (*(*(a1 + 40) + 137))
      {
        v119 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v79, (v118 - v48 + v47));
        goto LABEL_10;
      }
    }

    else
    {
      v120 = 0;
    }

    v119 = 0;
LABEL_10:
    v117 = objc_msgSend_recordId(*(a1 + 32), v79, v80);
    if (*(*(a1 + 40) + 138) == 1)
    {
      v116 = objc_msgSend_currentPace(*(a1 + 32), v83, v84);
      if (*(*(a1 + 40) + 138))
      {
        v115 = objc_msgSend_currentCadence(*(a1 + 32), v83, v84);
        if (!StepTime)
        {
LABEL_13:
          v85 = 0.0;
          goto LABEL_17;
        }

LABEL_16:
        objc_msgSend_timeIntervalSinceReferenceDate(StepTime, v83, v84);
        v85 = v86;
LABEL_17:
        v87 = v28 - v31;
        if (*(*(a1 + 40) + 138) == 1)
        {
          v88 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v83, v84, v55 - v58 + v57);
        }

        else
        {
          v88 = 0;
        }

        v89 = v87 + v30;
        v90 = objc_msgSend_sourceId(*(a1 + 32), v83, v84);
        v91 = MEMORY[0x1E696AD98];
        isOdometerDistance = objc_msgSend_isOdometerDistance(*(a1 + 32), v92, v93);
        v96 = objc_msgSend_numberWithBool_(v91, v95, isOdometerDistance);
        v97 = MEMORY[0x1E696AD98];
        isOdometerPace = objc_msgSend_isOdometerPace(*(a1 + 32), v98, v99);
        v103 = objc_msgSend_numberWithBool_(v97, v101, isOdometerPace);
        v104 = *(a1 + 40);
        v105 = *(v104 + 156);
        if (*(v104 + 176) == 1)
        {
          v106 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v102, (v114 - v112 + v113));
          v104 = *(a1 + 40);
          if (*(v104 + 176))
          {
            v107 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v102, (v111 - v109 + v110));
            v104 = *(a1 + 40);
LABEL_25:
            v108 = objc_msgSend_initWithStartDate_endDate_steps_distance_floorsAscended_floorsDescended_recordID_currentPace_currentCadence_firstStepTime_activeTime_sourceId_isOdometerDistance_isOdometerPace_pushes_workoutType_elevationAscended_elevationDescended_distanceSource_(v122, v102, v8, v120, v119, v117, v116, v115, v121, v82, v89, v85, v88, v90, v96, v103, __PAIR64__(v105, v21), v106, v107, *(v104 + 180));
            (*(*(a1 + 48) + 16))();
            v2 = v123;
            goto LABEL_26;
          }
        }

        else
        {
          v106 = 0;
        }

        v107 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v116 = 0;
    }

    v115 = 0;
    if (!StepTime)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_26:

  objc_autoreleasePoolPop(v2);
}

void sub_19B6C5460(uint64_t a1, CLConnectionMessage **a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 144) && (*(v2 + 152) & 1) == 0)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    v13 = _Block_copy(*(*(a1 + 32) + 144));
    if (DictionaryOfClasses)
    {
      if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage"))
      {
        v15 = *(*(a1 + 32) + 16);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_19B6C58B0;
        v22[3] = &unk_1E7532B68;
        v22[4] = DictionaryOfClasses;
        v22[5] = v13;
        v16 = v22;
      }

      else if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMPedometerEventKey"))
      {
        v18 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v17, @"CMPedometerEventKey");
        v19 = *(*(a1 + 32) + 16);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_19B6C5AF8;
        v21[3] = &unk_1E7532B90;
        v21[4] = v18;
        v21[5] = v13;
        v16 = v21;
        v15 = v19;
      }

      else
      {
        v15 = *(*(a1 + 32) + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B6C5B10;
        block[3] = &unk_1E7532B40;
        block[4] = v13;
        v16 = block;
      }
    }

    else
    {
      v15 = *(*(a1 + 32) + 16);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_19B6C56CC;
      v23[3] = &unk_1E7532B40;
      v23[4] = v13;
      v16 = v23;
    }

    dispatch_async(v15, v16);
    _Block_release(v13);
  }
}

uint64_t sub_19B6C56CC(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v3 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "nil pedometer event dictionary received", buf, 2u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2818, 17, "nil pedometer event dictionary received", v8, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B6C58B0(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, @"CMErrorMessage");
  v7 = objc_msgSend_integerValue(v4, v5, v6);
  objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"CMErrorDomain", v7, 0);
  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v9 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v10, @"CMErrorMessage");
    *buf = 134349056;
    v26 = objc_msgSend_integerValue(v11, v12, v13);
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Error pedometer event, %{public}ld", buf, 0xCu);
  }

  v14 = sub_19B420058();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v16 = qword_1EAFE2818;
    v17 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v15, @"CMErrorMessage");
    v23 = 134349056;
    v24 = objc_msgSend_integerValue(v17, v18, v19);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v16, 16, "Error pedometer event, %{public}ld", &v23, 12);
    v21 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B6C5B10(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v3 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognizable pedometer event dictionary", buf, 2u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2818, 17, "Unrecognizable pedometer event dictionary", v8, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_19B6C5CF4(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v6 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMPedometer client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v10 = qword_1EAFE2818;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 1, "CMPedometer client connection interrupt, %@, %d, %p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B6C6024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C61C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C61F0(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleQueryResponse_onQueue_withHandler_(v3, a2, &v5, a1[5], a1[6]);
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B6C624C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C6368(void *a1, const char *a2, uint64_t a3)
{
  isStepCountingAvailable = objc_msgSend_isStepCountingAvailable(CMPedometer, a2, a3);
  v7 = a1[4];
  if (isStepCountingAvailable)
  {
    *(v7 + 48) = -1;
    *(a1[4] + 136) = 0;
    v8 = a1[4];
    v9 = a1[5];
    v10 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
    v11 = a1[4];
    v12 = *(v11 + 8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19B6C64F4;
    v16[3] = &unk_1E7534498;
    v13 = a1[6];
    v16[4] = v11;
    v16[5] = v13;
    objc_msgSend__internalQueryPedometerDataFromDate_toDate_onQueue_withHandler_(v8, v14, v9, v10, v12, v16);
  }

  else
  {
    v15 = *(v7 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6C6490;
    block[3] = &unk_1E7532B40;
    block[4] = a1[6];
    dispatch_async(v15, block);
  }
}

uint64_t sub_19B6C6490(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 104, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B6C64F4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v6 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      buf = 138543362;
      buf_4 = objc_msgSend_localizedDescription(a4, v7, v8);
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Error occurred: %{public}@", &buf, 0xCu);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v12 = qword_1EAFE2818;
      LODWORD(v67[0]) = 138543362;
      *(v67 + 4) = objc_msgSend_localizedDescription(a4, v10, v11);
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, v12, 16, "Error occurred: %{public}@", v67, 12);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy _startPedometerUpdatesFromDate:withHandler:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != &buf)
      {
        free(v14);
      }
    }

    v15 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6C6934;
    block[3] = &unk_1E7532B90;
    v16 = *(a1 + 40);
    block[4] = a4;
    block[5] = v16;
    dispatch_async(v15, block);
  }

  else if ((*(*(a1 + 32) + 136) & 1) == 0)
  {
    v18 = objc_msgSend_numberOfSteps(a2, a2, a3);
    *(*(a1 + 32) + 64) = objc_msgSend_integerValue(v18, v19, v20);
    v23 = objc_msgSend_numberOfPushes(a2, v21, v22);
    *(*(a1 + 32) + 72) = objc_msgSend_integerValue(v23, v24, v25);
    v28 = objc_msgSend_distance(a2, v26, v27);
    objc_msgSend_doubleValue(v28, v29, v30);
    *(*(a1 + 32) + 88) = v31;
    v34 = objc_msgSend_floorsAscended(a2, v32, v33);
    *(*(a1 + 32) + 100) = objc_msgSend_intValue(v34, v35, v36);
    v39 = objc_msgSend_floorsDescended(a2, v37, v38);
    *(*(a1 + 32) + 108) = objc_msgSend_intValue(v39, v40, v41);
    started = objc_msgSend_startDate(a2, v42, v43);
    objc_msgSend_timeIntervalSinceReferenceDate(started, v45, v46);
    *(*(a1 + 32) + 128) = v47;
    v50 = objc_msgSend_elevationAscended(a2, v48, v49);
    *(*(a1 + 32) + 164) = objc_msgSend_intValue(v50, v51, v52);
    v55 = objc_msgSend_elevationDescended(a2, v53, v54);
    *(*(a1 + 32) + 172) = objc_msgSend_intValue(v55, v56, v57);
    v59 = *(a1 + 32);
    if (*(v59 + 64) != 0)
    {
      v60 = *(v59 + 16);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_19B6C694C;
      v63[3] = &unk_1E7532B90;
      v61 = *(a1 + 40);
      v63[4] = a2;
      v63[5] = v61;
      dispatch_async(v60, v63);
      v59 = *(a1 + 32);
    }

    v62 = *(v59 + 32);
    if (!v62)
    {
      v65 = @"kCLConnectionMessageSubscribeKey";
      v66 = MEMORY[0x1E695E118];
      v67[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v58, &v66, &v65, 1);
      sub_19B6CA5DC();
    }

    _Block_release(v62);
    *(*(a1 + 32) + 32) = _Block_copy(*(a1 + 40));
  }
}

void sub_19B6C6908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a32)
  {
    sub_19B41FFEC(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C69D8(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B6CA5DC();
}

void sub_19B6C6AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C6FC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = objc_msgSend_integerValue(*(a1 + 40), a2, a3);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v7, @"CMErrorDomain", v6, 0);
  v9 = *(v5 + 16);

  return v9(v5, 0, v4, v8);
}

void sub_19B6C7048(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19B6C709C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v5 = *(v2 + 16);

  return v5(v2, 0, v3, v4);
}

void sub_19B6C7290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C7338(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = @"CMPedometerDataObject";
  v4[0] = v2;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B45280C();
}

void sub_19B6C7470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C749C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleRecordQueryResponse_withHandler_shouldStartUpdates_(v3, a2, &v5, *(a1 + 40), *(a1 + 48));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B6C74FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C77AC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6C7810(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = MEMORY[0x1E696ABC0];
  v6 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(v5, v7, @"CMErrorDomain", v6, 0);
  result = (*(v4 + 16))(v4, 0, v8);
  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);

    return MEMORY[0x1EEE66B58](v10, sel__subscribeToCumulativePedometerUpdates_, v11);
  }

  return result;
}

void *sub_19B6C78B4(uint64_t a1)
{
  result = (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    v5 = objc_msgSend_count(*(a1 + 32), v3, v4);
    v8 = objc_msgSend_maxPedometerEntries(CMPedometerData, v6, v7);
    result = objc_msgSend_unsignedIntegerValue(v8, v9, v10);
    if (v5 < result)
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);

      return MEMORY[0x1EEE66B58](v11, sel__subscribeToCumulativePedometerUpdates_, v12);
    }
  }

  return result;
}

uint64_t sub_19B6C793C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  result = (*(v3 + 16))(v3, 0, v4);
  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v6, sel__subscribeToCumulativePedometerUpdates_, v7);
  }

  return result;
}

void sub_19B6C7A38(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B6C0F30();
}

void sub_19B6C7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C7BDC(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B6C0F30();
}

void sub_19B6C7CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C7F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C8380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  if (a36)
  {
    sub_19B41FFEC(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C83B4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, 0, v3);
}

void sub_19B6C841C(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CMErrorMessage");
    v6 = objc_msgSend_objectForKeyedSubscript_(a2, v5, @"CMPedometerCalibrationBins");
    v8 = objc_msgSend_objectForKeyedSubscript_(a2, v7, @"CLMotionSyncStoreLastUpdate");
    v9 = *(*(a1 + 32) + 16);
    if (v4)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_19B6C8728;
      v20[3] = &unk_1E7532B90;
      v10 = *(a1 + 40);
      v20[4] = v4;
      v20[5] = v10;
      v11 = v20;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6C87A4;
      block[3] = &unk_1E75344C0;
      v16 = *(a1 + 40);
      block[5] = v8;
      block[6] = v16;
      block[4] = v6;
      v11 = block;
    }
  }

  else
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v12 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Unable to parse message when checking for availability!", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v18 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2818, 16, "Unable to parse message when checking for availability!", &v18, 2);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy _queryPedometerCalibrationBinsWithHandler:forType:forRemote:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v9 = *(*(a1 + 32) + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B6C87C0;
    v17[3] = &unk_1E7532B40;
    v17[4] = *(a1 + 40);
    v11 = v17;
  }

  dispatch_async(v9, v11);
}

uint64_t sub_19B6C8728(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, 0, v7);
}

uint64_t sub_19B6C87C0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, 0, v3);
}

void sub_19B6C8928(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C899C;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

uint64_t sub_19B6C8CCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B6C8D54;
  v9[3] = &unk_1E7534560;
  v9[4] = *(a1 + 56);
  return objc_msgSend__queryPedometerDataFromDate_toDate_withHandler_(v4, v7, v5, v6, v9);
}

uint64_t sub_19B6C8E80(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startPedometerUpdatesFromDate_withHandler_, v5);
}

uint64_t sub_19B6C8F34(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopPedometerUpdates, v4);
}

uint64_t sub_19B6C90C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = objc_msgSend_pedometerProxy(*(a1 + 40), a2, a3);
  if (v4)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = objc_msgSend__pedometerDataWithRecordID_(*(a1 + 40), v5, 0);
  }

  return MEMORY[0x1EEE66B58](v6, sel__startPedometerUpdatesSinceDataRecord_withHandler_, v7);
}

int64_t sub_19B6C93F4(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D400 = result;
  return result;
}

uint64_t sub_19B6C94F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startPedometerEventUpdatesWithHandler_, v5);
}

uint64_t sub_19B6C95A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopPedometerEventUpdates, v4);
}

uint64_t sub_19B6CA2FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

uint64_t sub_19B6CA3B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

uint64_t sub_19B6CA474(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

uint64_t sub_19B6CA530(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

os_log_t sub_19B6CA57C()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

os_log_t sub_19B6CA5AC()
{
  result = os_log_create("com.apple.locationd.Motion", "Pedometer");
  qword_1EAFE2818 = result;
  return result;
}

void *sub_19B6CA650(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6CA6AC((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6CA6AC(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6CA704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMotionActivity::remapActivityTypeForWheelchairUsers(uint64_t result)
{
  if (result <= 0x3E && ((1 << result) & 0x6000020000000110) != 0)
  {
    return 11805;
  }

  return result;
}

uint64_t CLMotionActivity::isTypeIndoorActivity(int a1)
{
  result = 1;
  if (a1 <= 2100)
  {
    if (((a1 - 2010) > 0x3D || ((1 << (a1 + 38)) & 0x2088004000005001) == 0) && a1 != 64)
    {
      return 0;
    }
  }

  else if (a1 <= 12149)
  {
    if (((a1 - 2101) > 0x31 || ((1 << (a1 - 53)) & 0x2000000000011) == 0) && a1 != 3015)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= 15359)
    {
      if (a1 == 12150)
      {
        return result;
      }

      v3 = 15110;
    }

    else
    {
      if (a1 == 15360 || a1 == 17150)
      {
        return result;
      }

      v3 = 19030;
    }

    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CLMotionActivity::indexToActivityType(CLMotionActivity *this)
{
  if (this <= 0xA)
  {
    return (this + 1);
  }

  if ((this - 11) > 0x3D)
  {
    return 0;
  }

  return dword_19B7BC138[this - 11];
}

uint64_t CLMotionActivity::activityTypeToIndex(int a1)
{
  if (a1 > 12149)
  {
    if (a1 > 15659)
    {
      if (a1 > 18239)
      {
        if (a1 > 90121)
        {
          if (a1 > 515620)
          {
            if (a1 == 515621)
            {
              return 65;
            }

            if (a1 == 515652)
            {
              return 58;
            }

            v1 = a1 == 519150;
            v2 = 42;
            goto LABEL_104;
          }

          v29 = 90122;
          v30 = 71;
          v31 = a1 == 90603;
          v32 = 30;
        }

        else
        {
          if (a1 > 19089)
          {
            if (a1 == 19090)
            {
              return 41;
            }

            if (a1 == 19150)
            {
              return 31;
            }

            v1 = a1 == 90121;
            v2 = 72;
            goto LABEL_104;
          }

          v29 = 18240;
          v30 = 29;
          v31 = a1 == 19030;
          v32 = 52;
        }

        goto LABEL_156;
      }

      if (a1 > 15732)
      {
        if (a1 > 18049)
        {
          if (a1 == 18050)
          {
            return 40;
          }

          if (a1 == 18100)
          {
            return 43;
          }

          v1 = a1 == 18200;
          v2 = 38;
          goto LABEL_104;
        }

        v29 = 15733;
        v30 = 63;
        v31 = a1 == 17150;
        v32 = 28;
LABEL_156:
        if (v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = -1;
        }

        if (a1 == v29)
        {
          return v30;
        }

        else
        {
          return v33;
        }
      }

      v18 = 15674;
      if (a1 == 15711)
      {
        v26 = 60;
      }

      else
      {
        v26 = -1;
      }

      if (a1 == 15675)
      {
        v20 = 56;
      }

      else
      {
        v20 = v26;
      }

      v21 = 15660;
      v22 = 67;
      v23 = a1 == 15670;
      v24 = 35;
      goto LABEL_128;
    }

    if (a1 > 15329)
    {
      if (a1 > 15559)
      {
        if (a1 <= 15609)
        {
          v29 = 15560;
          v30 = 49;
          v31 = a1 == 15592;
          v32 = 51;
          goto LABEL_156;
        }

        if (a1 == 15610)
        {
          return 44;
        }

        if (a1 == 15620)
        {
          return 64;
        }

        v1 = a1 == 15652;
        v2 = 61;
        goto LABEL_104;
      }

      v18 = 15359;
      if (a1 == 15460)
      {
        v25 = 50;
      }

      else
      {
        v25 = -1;
      }

      if (a1 == 15360)
      {
        v20 = 53;
      }

      else
      {
        v20 = v25;
      }

      v21 = 15330;
      v22 = 62;
      v23 = a1 == 15350;
      v24 = 54;
    }

    else
    {
      if (a1 > 15109)
      {
        if (a1 <= 15229)
        {
          v29 = 15110;
          v30 = 39;
          v31 = a1 == 15150;
          v32 = 66;
          goto LABEL_156;
        }

        if (a1 == 15230)
        {
          return 47;
        }

        if (a1 == 15250)
        {
          return 48;
        }

        v1 = a1 == 15255;
        v2 = 27;
LABEL_104:
        if (v1)
        {
          return v2;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      v18 = 15054;
      if (a1 == 15100)
      {
        v19 = 69;
      }

      else
      {
        v19 = -1;
      }

      if (a1 == 15055)
      {
        v20 = 55;
      }

      else
      {
        v20 = v19;
      }

      v21 = 12150;
      v22 = 26;
      v23 = a1 == 15030;
      v24 = 57;
    }

LABEL_128:
    if (v23)
    {
      v27 = v24;
    }

    else
    {
      v27 = -1;
    }

    if (a1 == v21)
    {
      v27 = v22;
    }

    if (a1 <= v18)
    {
      return v27;
    }

    else
    {
      return v20;
    }
  }

  if (a1 > 64)
  {
    if (a1 > 2064)
    {
      if (a1 <= 2104)
      {
        if (a1 == 2101)
        {
          v28 = 33;
        }

        else
        {
          v28 = -1;
        }

        if (a1 == 2071)
        {
          v6 = 22;
        }

        else
        {
          v6 = v28;
        }

        if (a1 == 2068)
        {
          v11 = 68;
        }

        else
        {
          v11 = -1;
        }

        if (a1 == 2065)
        {
          v11 = 21;
        }

        v12 = a1 <= 2070;
      }

      else
      {
        if (a1 == 11805)
        {
          v13 = 25;
        }

        else
        {
          v13 = -1;
        }

        if (a1 == 3016)
        {
          v14 = 70;
        }

        else
        {
          v14 = v13;
        }

        if (a1 == 3015)
        {
          v6 = 24;
        }

        else
        {
          v6 = v14;
        }

        if (a1 == 2150)
        {
          v11 = 23;
        }

        else
        {
          v11 = -1;
        }

        if (a1 == 2105)
        {
          v11 = 36;
        }

        v12 = a1 <= 3014;
      }
    }

    else
    {
      if (a1 == 2061)
      {
        v4 = 20;
      }

      else
      {
        v4 = -1;
      }

      if (a1 == 2048)
      {
        v5 = 19;
      }

      else
      {
        v5 = v4;
      }

      if (a1 == 2024)
      {
        v6 = 34;
      }

      else
      {
        v6 = v5;
      }

      if (a1 == 2022)
      {
        v7 = 32;
      }

      else
      {
        v7 = -1;
      }

      if (a1 == 2020)
      {
        v8 = 18;
      }

      else
      {
        v8 = v7;
      }

      if (a1 <= 2023)
      {
        v6 = v8;
      }

      if (a1 == 2010)
      {
        v9 = 17;
      }

      else
      {
        v9 = -1;
      }

      if (a1 == 100)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      if (a1 == 66)
      {
        v11 = 59;
      }

      else
      {
        v11 = -1;
      }

      if (a1 == 65)
      {
        v11 = 46;
      }

      if (a1 > 99)
      {
        v11 = v10;
      }

      v12 = a1 <= 2019;
    }
  }

  else
  {
    if (a1 <= 40)
    {
      if ((a1 - 1) >= 0xB)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (a1 - 1);
      }
    }

    if (a1 == 64)
    {
      v15 = 45;
    }

    else
    {
      v15 = -1;
    }

    if (a1 == 63)
    {
      v6 = 37;
    }

    else
    {
      v6 = v15;
    }

    if (a1 == 62)
    {
      v16 = 15;
    }

    else
    {
      v16 = -1;
    }

    if (a1 == 61)
    {
      v17 = 14;
    }

    else
    {
      v17 = v16;
    }

    if (a1 <= 62)
    {
      v6 = v17;
    }

    if (a1 == 56)
    {
      v11 = 13;
    }

    else
    {
      v11 = -1;
    }

    if (a1 == 52)
    {
      v11 = 12;
    }

    if (a1 == 41)
    {
      v11 = 11;
    }

    v12 = a1 <= 60;
  }

  if (v12)
  {
    return v11;
  }

  else
  {
    return v6;
  }
}

void sub_19B6CB088(uint64_t a1, int *a2, double a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (*a1 <= 0.0 || (*(a1 + 82) & 0x100) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "Device motion not initialized, returning", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
      }

      *v28 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Device motion not initialized, returning", v28, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService_Predict::applyConstantRotationRate(CFTimeInterval, CLSensorFusionService::Sample &, CMError &)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v11 = 109;
    goto LABEL_16;
  }

  if (v5 > a3)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v12 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      v13 = *a1;
      *buf = 134218240;
      v30 = v13;
      v31 = 2048;
      v32 = a3;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "Target prediction timestamp must be in the future,lastSample.timestamp,%f,targetTimestamp,%f", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v15 = *a1;
    *v28 = 134218240;
    *&v28[4] = v15;
    *&v28[12] = 2048;
    *&v28[14] = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Target prediction timestamp must be in the future,lastSample.timestamp,%f,targetTimestamp,%f");
LABEL_41:
    v20 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService_Predict::applyConstantRotationRate(CFTimeInterval, CLSensorFusionService::Sample &, CMError &)", "CoreLocation: %s\n", v16);
    if (v20 != buf)
    {
      free(v20);
    }

LABEL_43:
    v11 = 107;
LABEL_16:
    *a2 = v11;
    return;
  }

  v17 = a3 - v5;
  if (v17 > 2.0)
  {
    v27 = a3 - v5;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v18 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v30 = v27;
      v31 = 2048;
      v32 = 2.0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_INFO, "Prediction interval above limit,interval,%f,limit,%f", buf, 0x16u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    *v28 = 134218240;
    *&v28[4] = v27;
    *&v28[12] = 2048;
    *&v28[14] = 0x4000000000000000;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Prediction interval above limit,interval,%f,limit,%f");
    goto LABEL_41;
  }

  v21 = *(a1 + 44) * v17;
  *v28 = vmul_n_f32(*(a1 + 36), v17);
  *&v28[8] = v21;
  *v22.i64 = sub_19B66C264(buf, v28);
  v23.f32[0] = sub_19B66BF70(buf, (a1 + 8), v22);
  *v28 = __PAIR64__(v24, v23.u32[0]);
  *&v28[8] = v25;
  *&v28[12] = v26;
  sub_19B41E130(v28, v23);
  *a1 = a3;
  *(a1 + 8) = *v28;
}

void sub_19B6CB6BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B6CB6EC(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
  }

  v14 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 17, "Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBikeSensorInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B6CB914(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMBikeSensor client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
      }

      v10 = qword_1EAFE2830;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 1, "CMBikeSensor client connection interrupt, %@, %d, %p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBikeSensorInternal init]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B6CBCA0(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  v7 = *(a1 + 32);
  v9 = @"CMFitnessMachineDataRecord";
  v10[0] = v7;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v10, &v9, 1);
  sub_19B444678();
}

void sub_19B6CBE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  if (a21)
  {
    sub_19B41FFEC(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6CBE38(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, *(a1 + 32));
    if (DictionaryOfClasses)
    {
      v5 = DictionaryOfClasses;
      if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v4, @"CMErrorMessage"))
      {
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
        }

        v6 = qword_1EAFE2830;
        if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = objc_msgSend_objectForKeyedSubscript_(v5, v7, @"CMErrorMessage");
          _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Error feeding external fitness data, %@", buf, 0xCu);
        }

        v8 = sub_19B420058();
        if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2808 != -1)
          {
            dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
          }

          v10 = qword_1EAFE2830;
          LODWORD(v17) = 138412290;
          *(&v17 + 4) = objc_msgSend_objectForKeyedSubscript_(v5, v9, @"CMErrorMessage");
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 16, "Error feeding external fitness data, %@", &v17, 12, v17);
LABEL_34:
          v16 = v11;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBikeSensorInternal _feedBikeSensorData:]_block_invoke", "CoreLocation: %s\n", v11);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }
    }

    else
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
      }

      v14 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Error feeding external fitness data content. There is not any expected classes (NSString, CMFitnessMachineData).", buf, 2u);
      }

      v15 = sub_19B420058();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
        }

        LOWORD(v17) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 16, "Error feeding external fitness data content. There is not any expected classes (NSString, CMFitnessMachineData).", &v17, 2, v17);
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v12 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Error feeding external fitness data: the response is nill", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
      }

      LOWORD(v17) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 16, "Error feeding external fitness data: the response is nill", &v17, 2, v17);
      goto LABEL_34;
    }
  }
}

int64_t sub_19B6CC600(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D410 = result;
  return result;
}

os_log_t sub_19B6CC638()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

void sub_19B6CC668(uint64_t a1, double *a2)
{
  v2 = *a2;
  *(a1 + 8) = *a2;
  v3 = 1.0 / v2;
  *(a1 + 16) = v3;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 32) = &unk_1F0E33E90;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F0E31E60;
  *(a1 + 56) = 256;
  *(a1 + 60) = 0;
  *(a1 + 64) = &unk_1F0E33E90;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = &unk_1F0E33E90;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = &unk_1F0E33E90;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F0E33E90;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = &unk_1F0E33E70;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_1F0E33E90;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  *(a1 + 244) = 0;
  *(a1 + 256) = &unk_1F0E33E90;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = &unk_1F0E33E90;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 3;
  *(a1 + 332) = 0;
  *(a1 + 324) = 0;
  *(a1 + 336) = &unk_1F0E34498;
  *(a1 + 344) = &unk_1F0E33E90;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0;
  *(a1 + 368) = &unk_1F0E33E90;
  *(a1 + 376) = 0x3F80000000000000;
  *(a1 + 384) = 0;
  *(a1 + 392) = &unk_1F0E33E90;
  *(a1 + 400) = 0;
  *(a1 + 408) = 1065353216;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0x3FF0000000000000;
  *(a1 + 448) = &unk_1F0E33E90;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_1F0E33E90;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = &unk_1F0E33E90;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  v4 = v3;
  v5 = vcvtad_u64_f64(v4 * 0.125);
  *(a1 + 536) = &unk_1F0E32BF8;
  *(a1 + 544) = v5;
  *(a1 + 552) = &unk_1F0E32728;
  *(a1 + 560) = v5;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 624) = &unk_1F0E32728;
  *(a1 + 632) = v5;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = &unk_1F0E32728;
  *(a1 + 704) = v5;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0;
  v6 = vcvtad_u64_f64(v4 * 0.625);
  *(a1 + 768) = &unk_1F0E32BF8;
  *(a1 + 776) = v6;
  *(a1 + 784) = &unk_1F0E32728;
  *(a1 + 792) = v6;
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 856) = &unk_1F0E32728;
  *(a1 + 864) = v6;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 928) = &unk_1F0E32728;
  *(a1 + 936) = v6;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  v7 = vcvtad_u64_f64(*(a1 + 16) * 0.75);
  *(a1 + 1008) = &unk_1F0E32728;
  *(a1 + 1016) = v7;
  *(a1 + 1072) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1080) = &unk_1F0E32728;
  *(a1 + 1088) = v7;
  *(a1 + 1144) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1152) = &unk_1F0E32728;
  *(a1 + 1160) = v7;
  *(a1 + 1212) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1232) = &unk_1F0E32BF8;
  *(a1 + 1240) = 2;
  *(a1 + 1248) = &unk_1F0E32728;
  *(a1 + 1256) = 2;
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1320) = &unk_1F0E32728;
  *(a1 + 1328) = 2;
  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1392) = &unk_1F0E32728;
  *(a1 + 1400) = 2;
  *(a1 + 1452) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  operator new[]();
}

void sub_19B6CCD84(_Unwind_Exception *a1)
{
  sub_19B42AC20(v7);
  v1[144] = v6;
  sub_19B42A568(v1 + 147);
  v1[135] = v5;
  sub_19B42A568(v1 + 138);
  v1[126] = v4;
  sub_19B42A568(v1 + 129);
  sub_19B42AC20(v3);
  sub_19B42AC20(v2);
  _Unwind_Resume(a1);
}

void *sub_19B6CCDD8(void *a1)
{
  *a1 = &unk_1F0E31E60;
  v2 = a1[195];
  if (v2)
  {
    MEMORY[0x19EAE76D0](v2, 0x1000C8052888210);
  }

  v3 = a1[196];
  if (v3)
  {
    MEMORY[0x19EAE76D0](v3, 0x1000C8052888210);
  }

  v4 = a1[197];
  if (v4)
  {
    MEMORY[0x19EAE76D0](v4, 0x1000C8052888210);
  }

  v5 = a1[198];
  if (v5)
  {
    MEMORY[0x19EAE76D0](v5, 0x1000C8052888210);
  }

  sub_19B42AC20(a1 + 154);
  a1[144] = &unk_1F0E32728;
  sub_19B42A568(a1 + 147);
  a1[135] = &unk_1F0E32728;
  sub_19B42A568(a1 + 138);
  a1[126] = &unk_1F0E32728;
  sub_19B42A568(a1 + 129);
  sub_19B42AC20(a1 + 96);
  sub_19B42AC20(a1 + 67);
  return a1;
}

void sub_19B6CCEFC(void *a1)
{
  sub_19B6CCDD8(a1);

  JUMPOUT(0x19EAE76F0);
}

float sub_19B6CCF34(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1000))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v2 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "RotationStability buffer not set.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "RotationStability buffer not set.", v7, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAttitudeDependentKFCalibrator::init()", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  *(a1 + 472) = 0;
  *(a1 + 228) = 0;
  if ((*(a1 + 333) & 1) == 0)
  {
    *(a1 + 248) = 0;
    *(a1 + 232) = 0;
    *(a1 + 184) = 0;
    *(a1 + 220) = 0;
    *(a1 + 224) = 0;
    *(a1 + 324) = 0;
    *(a1 + 1608) = 0;
    sub_19B43FA98((a1 + 1080));
    sub_19B43FA98((a1 + 1008));
    sub_19B43FA98((a1 + 1152));
    sub_19B43FA98((a1 + 1248));
    sub_19B43FA98((a1 + 1320));
    sub_19B43FA98((a1 + 1392));
    *(a1 + 1224) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 328) = 0;
  }

  *(a1 + 244) = 0;
  sub_19B43FA98((a1 + 552));
  sub_19B43FA98((a1 + 624));
  sub_19B43FA98((a1 + 696));
  sub_19B43FA98((a1 + 784));
  sub_19B43FA98((a1 + 856));
  sub_19B43FA98((a1 + 928));
  result = *(a1 + 1536);
  *(a1 + 144) = vcvt_f32_f64(*(a1 + 1520));
  *(a1 + 152) = result;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 59) = 0;
  return result;
}

void sub_19B6CD1C0(void *a1)
{
  sub_19B43FA98(a1 + 2);
  sub_19B43FA98(a1 + 11);

  sub_19B43FA98(a1 + 20);
}

float sub_19B6CD204(float64x2_t *a1, float64x2_t *a2, int *a3, float *a4, double *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a5 && *a3 > 0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v10 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v11 = *&a2->f64[1];
      v12 = *(&a2->f64[1] + 1);
      v13 = *a2[1].f64;
      v14 = *a3;
      *buf = 134218752;
      v47 = v11;
      v48 = 2048;
      v49 = v12;
      v50 = 2048;
      v51 = v13;
      v52 = 1024;
      v53 = v14;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "setting bias (%.3f/%.3f/%.3f) level (%d)", buf, 0x26u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v16 = *&a2->f64[1];
      v17 = *(&a2->f64[1] + 1);
      v18 = *a2[1].f64;
      v19 = *a3;
      v38 = 134218752;
      v39 = v16;
      v40 = 2048;
      v41 = v17;
      v42 = 2048;
      v43 = v18;
      v44 = 1024;
      v45 = v19;
      LODWORD(v37) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "setting bias (%.3f/%.3f/%.3f) level (%d)", COERCE_DOUBLE(&v38), v37);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::setBias(const CLVector3d<float> &, const CLMotionTypeCompassCalibrationLevel &, const CLVector3d<float> &, const CLClientQuaternion *)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    BYTE5(a1[20].f64[1]) = 0;
    BYTE1(a1[3].f64[1]) = 0;
    LOBYTE(a1[1].f64[1]) = 1;
    BYTE4(a1[15].f64[1]) = 0;
    sub_19B6CD760(&a1[21], a5);
    if (&a1[4] == a2)
    {
      v22 = *&a1[4].f64[1];
      v23 = *(&a1[4].f64[1] + 1);
      v24 = *a1[5].f64;
    }

    else
    {
      v22 = *&a2->f64[1];
      *&a1[4].f64[1] = v22;
      v23 = *(&a2->f64[1] + 1);
      *(&a1[4].f64[1] + 1) = v23;
      v24 = *a2[1].f64;
      *a1[5].f64 = v24;
    }

    v30 = *a3;
    HIDWORD(a1[1].f64[0]) = *a3;
    a1[6].f64[0] = 0.0;
    LODWORD(a1[6].f64[1]) = 0;
    v31 = a4[4] - v24;
    v32 = a4[2] - v22;
    v33 = a4[3] - v23;
    v34 = ((*a1[24].f64 * v33) + (v32 * *&a1[22].f64[1])) + (v31 * *&a1[25].f64[1]);
    *&a1[7].f64[1] = vmla_n_f32(vmla_n_f32(vmul_n_f32(*&a1[23].f64[1], v33), *&a1[22].f64[0], v32), *&a1[25].f64[0], v31);
    *a1[8].f64 = v34;
    *&a1[10].f64[1] = 0x100000001;
    LODWORD(a1[11].f64[0]) = 1;
    HIDWORD(a1[1].f64[1]) = v30;
    *&a1[32].f64[1] = v22;
    *(&a1[32].f64[1] + 1) = v23;
    LODWORD(a1[33].f64[0]) = LODWORD(a1[5].f64[0]);
    HIDWORD(a1[20].f64[0]) = 0;
    bzero(&a1[92], 0x48uLL);
    a1[92] = vcvtq_f64_f32(*&a1[4].f64[1]);
    a1[93].f64[0] = *a1[5].f64;
    a1[95] = vcvtq_f64_f32(*&a1[7].f64[1]);
    a1[96].f64[0] = *a1[8].f64;
    bzero(*&a1[98].f64[0], 0x144uLL);
    v35 = 9.0 / *a3;
    v36 = a1[98].f64[0];
    **&v36 = v35;
    *(*&v36 + 40) = v35;
    *(*&v36 + 80) = v35;
    *(*&v36 + 120) = 869711765;
    *(*&v36 + 160) = 869711765;
    *(*&v36 + 200) = 869711765;
    *(*&v36 + 240) = v35;
    *(*&v36 + 280) = v35;
    *(*&v36 + 320) = v35;
    if (LOBYTE(a1[3].f64[1]) == 1)
    {
      LOBYTE(a1[3].f64[1]) = 0;
      BYTE4(a1[20].f64[1]) = 0;
    }

    sub_19B6CCF34(a1);
    sub_19B6CD8B4(a1, 0);
    sub_19B4200DC(&a1[78], &a1[4].f64[1]);
    sub_19B4200DC(&a1[82].f64[1], &a1[4].f64[1] + 1);
    return sub_19B4200DC(&a1[87], &a1[5]);
  }

  else
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v25 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_FAULT, "Could not set bias retrieved from database", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      LOWORD(v38) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Could not set bias retrieved from database", &v38, 2);
      v29 = v28;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAttitudeDependentKFCalibrator::setBias(const CLVector3d<float> &, const CLMotionTypeCompassCalibrationLevel &, const CLVector3d<float> &, const CLClientQuaternion *)", "CoreLocation: %s\n", v28);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  return result;
}

float32_t sub_19B6CD760(float32x2_t *a1, double *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_19B688C20(v6.f64, a2);
  result = v11;
  v4 = v9;
  v5 = v7;
  a1[2] = vcvt_f32_f64(v6);
  a1[3].f32[0] = v5;
  a1[5] = vcvt_f32_f64(v8);
  a1[6].f32[0] = v4;
  a1[8] = vcvt_f32_f64(v10);
  a1[9].f32[0] = result;
  return result;
}

float sub_19B6CD804(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v3 = *(a2 + 20);
  v4 = *(a2 + 40);
  v5 = *(a2 + 44);
  v6 = *(a2 + 64);
  v7 = *(a2 + 68);
  v8 = *(a2 + 24);
  v9 = *(a2 + 48);
  v10 = *(a2 + 72);
  *a1 = &unk_1F0E34498;
  *(a1 + 8) = &unk_1F0E33E90;
  *(a1 + 16) = result;
  *(a1 + 20) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = &unk_1F0E33E90;
  *(a1 + 40) = v3;
  *(a1 + 44) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = &unk_1F0E33E90;
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 72) = v10;
  return result;
}

void sub_19B6CD8B4(uint64_t a1, int a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 120);
  v5 = *(a1 + 124);
  *(a1 + 200) = v4;
  *(a1 + 204) = v5;
  v6 = *(a1 + 128);
  *(a1 + 208) = v6;
  *(a1 + 216) = sqrtf(((v5 * v5) + (v4 * v4)) + (v6 * v6));
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v7 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 200);
    v9 = *(a1 + 204);
    v10 = *(a1 + 208);
    v11 = *(a1 + 20);
    v12 = *(a1 + 224);
    v13 = *(a1 + 168);
    v14 = *(a1 + 172);
    v15 = *(a1 + 176);
    v16 = *(a1 + 236);
    v17 = *(a1 + 240);
    *buf = 134220544;
    v56 = v8;
    v57 = 2048;
    v58 = v9;
    v59 = 2048;
    v60 = v10;
    v61 = 1024;
    v62 = v11;
    v63 = 1024;
    v64 = v12;
    v65 = 1024;
    v66 = v13;
    v67 = 1024;
    v68 = v14;
    v69 = 1024;
    v70 = v15;
    v71 = 1024;
    v72 = v16;
    v73 = 1024;
    v74 = v17;
    v75 = 1024;
    v76 = a2;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "set coasting vector (%.3f/%.3f/%.3f), levels (%d %d) conv(%d %d %d) age (%d) syncAge (%d) DueTo (%d)", buf, 0x50u);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v19 = *(a1 + 200);
    v20 = *(a1 + 204);
    v21 = *(a1 + 208);
    v22 = *(a1 + 20);
    v23 = *(a1 + 224);
    v24 = *(a1 + 168);
    v25 = *(a1 + 172);
    v26 = *(a1 + 176);
    v27 = *(a1 + 236);
    v28 = *(a1 + 240);
    v33 = 134220544;
    v34 = v19;
    v35 = 2048;
    v36 = v20;
    v37 = 2048;
    v38 = v21;
    v39 = 1024;
    v40 = v22;
    v41 = 1024;
    v42 = v23;
    v43 = 1024;
    v44 = v24;
    v45 = 1024;
    v46 = v25;
    v47 = 1024;
    v48 = v26;
    v49 = 1024;
    v50 = v27;
    v51 = 1024;
    v52 = v28;
    v53 = 1024;
    v54 = a2;
    LODWORD(v32) = 80;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "set coasting vector (%.3f/%.3f/%.3f), levels (%d %d) conv(%d %d %d) age (%d) syncAge (%d) DueTo (%d)", COERCE_DOUBLE(&v33), v32);
    v30 = v29;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::setCoastingVector(BOOL)", "CoreLocation: %s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  *(a1 + 240) = 0;
  v31 = *(a1 + 20);
  if (a2)
  {
    *(a1 + 224) = v31;
    sub_19B43FA98((a1 + 1080));
    sub_19B43FA98((a1 + 1008));
    sub_19B43FA98((a1 + 1152));
    *(a1 + 59) = 1;
  }

  else
  {
    if (v31 > *(a1 + 224))
    {
      *(a1 + 236) = 0;
      *(a1 + 1608) = 0;
    }

    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 224) = v31;
    sub_19B43FA98((a1 + 1080));
    sub_19B43FA98((a1 + 1008));
    sub_19B43FA98((a1 + 1152));
  }
}

float sub_19B6CDC2C(uint64_t a1, float *a2, float *a3, float *a4)
{
  sub_19B4200DC(a1 + 16, a2);
  sub_19B4200DC(a1 + 88, a3);

  return sub_19B4200DC(a1 + 160, a4);
}

void sub_19B6CDC88(float64x2_t *a1, float *a2, float32x2_t *a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  BYTE5(a1[20].f64[1]) = 1;
  BYTE1(a1[3].f64[1]) = 0;
  LODWORD(a1[91].f64[1]) = a4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = ((a3[6].f32[0] * v7) + (v6 * a3[3].f32[0])) + (v8 * a3[9].f32[0]);
  v10 = (a1 + 1496);
  v25 = vmla_n_f32(vmla_n_f32(vmul_n_f32(a3[5], v7), a3[2], v6), a3[8], v8);
  bzero(&a1[92], 0x48uLL);
  a1[92] = vcvtq_f64_f32(*&a1[4].f64[1]);
  a1[93].f64[0] = *a1[5].f64;
  *v10 = vcvtq_f64_f32(*&a1[6].f64[0]);
  a1[94].f64[1] = *&a1[6].f64[1];
  a1[95] = vcvtq_f64_f32(v25);
  a1[96].f64[0] = v9;
  bzero(*&a1[98].f64[0], 0x144uLL);
  v11 = 9.0;
  if ((*(*&a1->f64[0] + 72))(a1))
  {
    v12 = HIDWORD(a1[1].f64[0]);
    if (LOBYTE(a1[1].f64[1]))
    {
      v13 = v12;
    }

    else
    {
      v13 = (v12 * v12);
    }

    v11 = 9.0 / v13;
  }

  v14 = a1[98].f64[0];
  **&v14 = v11;
  *(*&v14 + 40) = v11;
  *(*&v14 + 80) = v11;
  *(*&v14 + 120) = 869711765;
  *(*&v14 + 160) = 869711765;
  *(*&v14 + 200) = 869711765;
  *(*&v14 + 240) = v11;
  *(*&v14 + 280) = v11;
  *(*&v14 + 320) = v11;
  a1[32].f64[1] = a1[4].f64[1];
  LODWORD(a1[33].f64[0]) = LODWORD(a1[5].f64[0]);
  sub_19B6CCF34(a1);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v15 = qword_1EAFE2888;
  v16 = v11;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v17 = HIDWORD(a1[1].f64[0]);
    v18 = LOBYTE(a1[1].f64[1]);
    *buf = 67109888;
    v34 = v17;
    v35 = 1024;
    v36 = a4;
    v37 = 1024;
    v38 = v18;
    v39 = 2048;
    v40 = v16;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "reset internal. levels-data(%d %d %d), pScale=%.3f ", buf, 0x1Eu);
  }

  v19 = sub_19B420058();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v20 = HIDWORD(a1[1].f64[0]);
    v21 = LOBYTE(a1[1].f64[1]);
    v26[0] = 67109888;
    v26[1] = v20;
    v27 = 1024;
    v28 = a4;
    v29 = 1024;
    v30 = v21;
    v31 = 2048;
    v32 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "reset internal. levels-data(%d %d %d), pScale=%.3f ", v26, 30, v24, COERCE_DOUBLE(&unk_1F0E33E90));
    v23 = v22;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetInternal(const CLVector3d<float> &, const CLMatrix3d<float> &, CLMotionTypeCompassCalibrationLevel)", "CoreLocation: %s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }
}

void sub_19B6CE014(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = 1;
  *(a1 + 20) = 0;
  *(a1 + 320) = 3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  bzero(*(a1 + 1576), 0x6CuLL);
  v2 = *(a1 + 1576);
  *v2 = 1065353216;
  v2[4] = 1065353216;
  v2[8] = 1065353216;
  *(a1 + 25) = 0;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "compass calibrator reset", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "compass calibrator reset", v7, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::reset()", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

void sub_19B6CE208(uint64_t a1, int a2, int a3, int a4, float *a5, float *a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v179 = COERCE_DOUBLE(__PAIR64__(LODWORD(a11), LODWORD(a13)));
  v200 = *MEMORY[0x1E69E9840];
  v19 = *(a1 + 240);
  v20 = v19;
  v21 = *(a1 + 16);
  v22 = 0.0;
  if ((v21 * 10.0) < v19)
  {
    v22 = 1.0;
  }

  v23 = *(a1 + 1072);
  v24 = 0.0;
  v25 = 0.0;
  if (v23)
  {
    v25 = *(a1 + 1024) / v23;
  }

  v26 = a7;
  v27 = *(a1 + 1216);
  if (v27)
  {
    v24 = *(a1 + 1168) / v27;
  }

  v28 = v22 * 0.1 + v26 * 0.16;
  v29 = *(a1 + 1144);
  if (v29)
  {
    v30 = *(a1 + 1096) / v29;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = *(a1 + 232);
  v32 = v28;
  v33 = v21;
  if (round(v21 * 20.0) < v31)
  {
    v34 = 0.1875;
    if (v32 >= 0.1875)
    {
      v34 = v32;
    }

    if (v30 > v34 && *(a1 + 1224) < 13.75 && v25 < 27.5 && a2 && a4 && a3 && *(&v179 + 1) < 78.0 && v25 * 0.9 < v24)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v35 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 232);
        v37 = *(a1 + 240);
        *buf = 134219776;
        *v191 = v30;
        *&v191[8] = 2048;
        *&v191[10] = v24;
        *&v191[18] = 2048;
        *&v191[20] = a9;
        *&v191[28] = 2048;
        *&v191[30] = *&v179;
        *&v191[38] = 2048;
        *&v191[40] = a12;
        *&v191[48] = 2048;
        *&v191[50] = *(&v179 + 1);
        *&v191[58] = 1024;
        *&v191[60] = v36;
        *&v191[64] = 1024;
        *&v191[66] = v37;
        _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "Resync after long coasting with mag drift. mag/incDiffMean(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), Age(%d,%d)", buf, 0x4Au);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v39 = *(a1 + 232);
        v40 = *(a1 + 240);
        v180 = 134219776;
        *v181 = v30;
        *&v181[8] = 2048;
        *&v181[10] = v24;
        *&v181[18] = 2048;
        *&v181[20] = a9;
        *&v181[28] = 2048;
        *&v181[30] = *&v179;
        *&v181[38] = 2048;
        *&v181[40] = a12;
        *&v181[48] = 2048;
        *&v181[50] = *(&v179 + 1);
        *&v181[58] = 1024;
        *&v181[60] = v39;
        *&v181[64] = 1024;
        *&v181[66] = v40;
        LODWORD(v177) = 74;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Resync after long coasting with mag drift. mag/incDiffMean(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), Age(%d,%d)", COERCE_DOUBLE(&v180), v177, v178, v179);
        v42 = v41;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::resync(float, BOOL, BOOL, BOOL, float, float, float, const CLVector3d<float> &, float, float, float, const CLVector3d<float> &)", "CoreLocation: %s\n", v41);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      *(a1 + 185) = 1;
      if ((*(a1 + 333) & 1) == 0)
      {
        sub_19B6CDC88(a1, a5, (a1 + 336), 3);
      }

      return;
    }
  }

  if (a9 <= 5.0 && *(a1 + 1224) <= 13.75)
  {
    goto LABEL_196;
  }

  if (v25 <= 4.0 || !a3)
  {
    goto LABEL_196;
  }

  v43 = v30 >= v32 || a4 == 0;
  if (v43 || a2 == 0)
  {
    goto LABEL_196;
  }

  v45 = v26 * 2.0 + 4.0;
  if (v45 >= a10 && v24 <= v45)
  {
    v103 = *(a1 + 1224);
    goto LABEL_104;
  }

  v47 = 0;
  v48 = v21 + v21;
  v50 = v30 < 0.1 && v48 < v20;
  if (!v50 && (v21 * 10.0) >= v20)
  {
    v47 = *(a1 + 184) ^ 1;
  }

  v103 = *(a1 + 1224);
  v51 = vabds_f32(v103, a9) < 5.0 || v103 < 27.5;
  v52 = !v51;
  if (((v47 & 1) != 0 || v52) && (v25 * 0.9 >= v24 || v48 >= v20 && (v21 >= v20 || a9 * 0.95 >= a10) || v25 <= v103 || v103 >= 27.5))
  {
LABEL_196:
    if ((-858993459 * *(a1 + 324) + 429496729) <= 0x33333332)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v53 = qword_1EAFE2888;
      v54 = a8;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v55 = *(a1 + 1072);
        v56 = 0.0;
        v57 = 0.0;
        if (v55 >= 2)
        {
          v58 = (v55 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
          v57 = 0.0;
          if (v58 >= 0.0)
          {
            v57 = (v58 / ((v55 - 1) * v55));
          }
        }

        v59 = *(a1 + 1144);
        if (v59 >= 2)
        {
          v60 = (v59 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
          if (v60 >= 0.0)
          {
            v56 = (v60 / ((v59 - 1) * v59));
          }
        }

        v61 = *(a1 + 248);
        v62 = *(a1 + 200);
        v63 = *(a1 + 204);
        v64 = *(a1 + 208);
        v65 = a6[2];
        v66 = a6[3];
        v67 = a6[4];
        v68 = a5[2];
        v69 = a5[3];
        v70 = a5[4];
        v71 = *(a1 + 1216);
        v72 = 0.0;
        if (v71 >= 2)
        {
          v73 = (v71 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
          if (v73 >= 0.0)
          {
            v72 = (v73 / ((v71 - 1) * v71));
          }
        }

        v75 = *(a1 + 236);
        v74 = *(a1 + 240);
        v76 = *(a1 + 216);
        v77 = *(a1 + 232);
        *buf = 67115008;
        *v191 = v61;
        *&v191[4] = 2048;
        *&v191[6] = v54;
        *&v191[14] = 2048;
        *&v191[16] = v62;
        *&v191[24] = 2048;
        *&v191[26] = v63;
        *&v191[34] = 2048;
        *&v191[36] = v64;
        *&v191[44] = 2048;
        *&v191[46] = v65;
        *&v191[54] = 2048;
        *&v191[56] = v66;
        *&v191[64] = 2048;
        *&v191[66] = v67;
        *&v191[74] = 2048;
        *&v191[76] = v68;
        *&v191[84] = 2048;
        *&v191[86] = v69;
        *&v191[94] = 2048;
        *&v191[96] = v70;
        *&v191[104] = 2048;
        *&v191[106] = v25;
        *&v191[114] = 2048;
        *&v191[116] = v57;
        *&v191[124] = 2048;
        *&v191[126] = v30;
        *&v191[134] = 2048;
        *&v191[136] = v56;
        *&v191[144] = 2048;
        *&v191[146] = v24;
        *&v191[154] = 2048;
        *&v191[156] = v72;
        *&v191[164] = 2048;
        *&v191[166] = a9;
        *&v191[174] = 2048;
        *&v191[176] = *&v179;
        *&v191[184] = 2048;
        *&v191[186] = (*(&v179 + 1) - a12);
        *&v191[194] = 2048;
        *&v191[196] = v76;
        *&v191[204] = 1024;
        *&v191[206] = v75;
        v192 = 1024;
        v193 = v74;
        v194 = 1024;
        v195 = v77;
        _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "numBad(%d), delH(%.3f), coastVec(%.3f/%.3f/%.3f), expectedVec(%.3f/%.3f/%.3f), calibrated(%.3f/%.3f/%.3f), angleDiff(%.3f/%.3f), magDiff(%.3f/%.4f), incDiff(%.3f/%.3f), measure(%.3f/%.3f/%.3f), coasting(%.3f/%d/%d), coastingCount(%d)", buf, 0xE2u);
      }

      v78 = sub_19B420058();
      if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v79 = *(a1 + 1072);
        v80 = 0.0;
        v81 = 0.0;
        if (v79 >= 2)
        {
          v82 = (v79 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
          v81 = 0.0;
          if (v82 >= 0.0)
          {
            v81 = (v82 / ((v79 - 1) * v79));
          }
        }

        v83 = *(a1 + 1144);
        if (v83 >= 2)
        {
          v84 = (v83 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
          if (v84 >= 0.0)
          {
            v80 = (v84 / ((v83 - 1) * v83));
          }
        }

        v85 = *(a1 + 248);
        v86 = *(a1 + 200);
        v87 = *(a1 + 204);
        v88 = *(a1 + 208);
        v89 = a6[2];
        v90 = a6[3];
        v91 = a6[4];
        v92 = a5[2];
        v93 = a5[3];
        v94 = a5[4];
        v95 = *(a1 + 1216);
        v96 = 0.0;
        if (v95 >= 2)
        {
          v97 = (v95 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
          if (v97 >= 0.0)
          {
            v96 = (v97 / ((v95 - 1) * v95));
          }
        }

        v99 = *(a1 + 236);
        v98 = *(a1 + 240);
        v100 = *(a1 + 216);
        v101 = *(a1 + 232);
        v180 = 67115008;
        *v181 = v85;
        *&v181[4] = 2048;
        *&v181[6] = v54;
        *&v181[14] = 2048;
        *&v181[16] = v86;
        *&v181[24] = 2048;
        *&v181[26] = v87;
        *&v181[34] = 2048;
        *&v181[36] = v88;
        *&v181[44] = 2048;
        *&v181[46] = v89;
        *&v181[54] = 2048;
        *&v181[56] = v90;
        *&v181[64] = 2048;
        *&v181[66] = v91;
        *&v181[74] = 2048;
        *&v181[76] = v92;
        *&v181[84] = 2048;
        *&v181[86] = v93;
        *&v181[94] = 2048;
        *&v181[96] = v94;
        *&v181[104] = 2048;
        *&v181[106] = v25;
        *&v181[114] = 2048;
        *&v181[116] = v81;
        *&v181[124] = 2048;
        *&v181[126] = v30;
        *&v181[134] = 2048;
        *&v181[136] = v80;
        *&v181[144] = 2048;
        *&v181[146] = v24;
        *&v181[154] = 2048;
        *&v181[156] = v96;
        *&v181[164] = 2048;
        *&v181[166] = a9;
        *&v181[174] = 2048;
        *&v181[176] = *&v179;
        *&v181[184] = 2048;
        *&v181[186] = (*(&v179 + 1) - a12);
        *&v181[194] = 2048;
        *&v181[196] = v100;
        *&v181[204] = 1024;
        *&v181[206] = v99;
        v182 = 1024;
        v183 = v98;
        v184 = 1024;
        v185 = v101;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "numBad(%d), delH(%.3f), coastVec(%.3f/%.3f/%.3f), expectedVec(%.3f/%.3f/%.3f), calibrated(%.3f/%.3f/%.3f), angleDiff(%.3f/%.3f), magDiff(%.3f/%.4f), incDiff(%.3f/%.3f), measure(%.3f/%.3f/%.3f), coasting(%.3f/%d/%d), coastingCount(%d)", &v180, 226);
        goto LABEL_192;
      }
    }

    return;
  }

  if (v103 < 27.5 || v103 < a9)
  {
    goto LABEL_110;
  }

LABEL_104:
  v104 = 0.0;
  if (v33 * 3.0 < v31)
  {
    v104 = 1.0;
  }

  if (v103 >= (a9 * 4.0) || v104 * 10.0 + 80.0 <= v103)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v160 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v161 = *(a1 + 312);
      v162 = *(a1 + 240);
      *buf = 67109376;
      *v191 = v161;
      *&v191[4] = 1024;
      *&v191[6] = v162;
      _os_log_impl(&dword_19B41C000, v160, OS_LOG_TYPE_DEBUG, "fBackupInfoSet(%d), syncAge(%d)", buf, 0xEu);
    }

    v163 = sub_19B420058();
    if (*(v163 + 160) > 1 || *(v163 + 164) > 1 || *(v163 + 168) > 1 || *(v163 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v164 = *(a1 + 312);
      v165 = *(a1 + 240);
      v180 = 67109376;
      *v181 = v164;
      *&v181[4] = 1024;
      *&v181[6] = v165;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "fBackupInfoSet(%d), syncAge(%d)", &v180, 14);
      v167 = v166;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::resync(float, BOOL, BOOL, BOOL, float, float, float, const CLVector3d<float> &, float, float, float, const CLVector3d<float> &)", "CoreLocation: %s\n", v166);
      if (v167 != buf)
      {
        free(v167);
      }
    }

    if (*(a1 + 312) == 1 && *(a1 + 16) * 1.5 > *(a1 + 240) && *(a1 + 1224) > 80.0 && a12 > 78.0 && *(a1 + 248) >= 5)
    {
      *(a1 + 185) = 1;
      *(a1 + 313) = 1;
      *(a1 + 248) = 0;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v168 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v168, OS_LOG_TYPE_DEBUG, "Likely bad resync. Backup.", buf, 2u);
      }

      v169 = sub_19B420058();
      if (*(v169 + 160) > 1 || *(v169 + 164) > 1 || *(v169 + 168) > 1 || *(v169 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        LOWORD(v180) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Likely bad resync. Backup.");
        goto LABEL_192;
      }
    }

    else
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v170 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v171 = *(a1 + 248);
        v172 = *(a1 + 240);
        *buf = 67110912;
        *v191 = v171;
        *&v191[4] = 2048;
        *&v191[6] = v30;
        *&v191[14] = 2048;
        *&v191[16] = v24;
        *&v191[24] = 2048;
        *&v191[26] = a9;
        *&v191[34] = 2048;
        *&v191[36] = *&v179;
        *&v191[44] = 2048;
        *&v191[46] = a12;
        *&v191[54] = 2048;
        *&v191[56] = *(&v179 + 1);
        *&v191[64] = 1024;
        *&v191[66] = v172;
        _os_log_impl(&dword_19B41C000, v170, OS_LOG_TYPE_DEBUG, "RESYNC Rejected. numBad=%d,mag/incDiffMean(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), syncAge(%d)", buf, 0x4Au);
      }

      v173 = sub_19B420058();
      if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v174 = *(a1 + 248);
        v175 = *(a1 + 240);
        v180 = 67110912;
        *v181 = v174;
        *&v181[4] = 2048;
        *&v181[6] = v30;
        *&v181[14] = 2048;
        *&v181[16] = v24;
        *&v181[24] = 2048;
        *&v181[26] = a9;
        *&v181[34] = 2048;
        *&v181[36] = *&v179;
        *&v181[44] = 2048;
        *&v181[46] = a12;
        *&v181[54] = 2048;
        *&v181[56] = *(&v179 + 1);
        *&v181[64] = 1024;
        *&v181[66] = v175;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "RESYNC Rejected. numBad=%d,mag/incDiffMean(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), syncAge(%d)", &v180);
        goto LABEL_192;
      }
    }
  }

  else
  {
LABEL_110:
    *(a1 + 185) = 1;
    if ((*(a1 + 333) & 1) == 0 && *(a1 + 184) == 1 && v25 < 27.5 && v30 < 0.15 && v24 < 5.0)
    {
      sub_19B6CDC88(a1, a5, (a1 + 336), 3);
      v19 = *(a1 + 240);
      v33 = *(a1 + 16);
    }

    if (v33 * 1.5 >= v19 && ((v105 = *(a1 + 304)) != 0 || (*(a1 + 312) & 1) != 0))
    {
      v106 = *(a1 + 308);
      v107 = fabsf(v106);
      v108 = v106 + a8;
      *(a1 + 308) = v108;
      v109 = fabsf(v108);
      if (v109 > (v107 + 5.0))
      {
        *(a1 + 304) = v105 + 1;
        if (v105 >= 1 && v109 < ((v105 + 1) * 5.0))
        {
          *(a1 + 264) = 0;
          *(a1 + 272) = 0;
          *(a1 + 288) = 0;
          *(a1 + 296) = 0;
          *(a1 + 304) = 0;
          *(a1 + 312) = 0;
        }
      }
    }

    else
    {
      *(a1 + 264) = *(a1 + 72);
      *(a1 + 272) = *(a1 + 80);
      *(a1 + 288) = *(a1 + 200);
      *(a1 + 296) = *(a1 + 208);
      *(a1 + 316) = *(a1 + 324);
      *(a1 + 304) = 0;
      *(a1 + 312) = 1;
      *(a1 + 308) = a8;
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v110 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v111 = *(a1 + 1072);
      v112 = 0.0;
      v113 = 0.0;
      if (v111 >= 2)
      {
        v114 = (v111 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
        v113 = 0.0;
        if (v114 >= 0.0)
        {
          v113 = (v114 / ((v111 - 1) * v111));
        }
      }

      v115 = a5[4];
      v116 = *(a1 + 1144);
      if (v116 >= 2)
      {
        v117 = (v116 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
        if (v117 >= 0.0)
        {
          v112 = (v117 / ((v116 - 1) * v116));
        }
      }

      v118 = *(a1 + 248);
      v119 = *(a1 + 304);
      v120 = *(a1 + 308);
      v121 = a6[2];
      v122 = a6[3];
      v123 = a6[4];
      v124 = a5[2];
      v125 = a5[3];
      v126 = *(a1 + 1216);
      v127 = 0.0;
      if (v126 >= 2)
      {
        v128 = (v126 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
        if (v128 >= 0.0)
        {
          v127 = (v128 / ((v126 - 1) * v126));
        }
      }

      v129 = *(a1 + 216);
      v131 = *(a1 + 236);
      v130 = *(a1 + 240);
      v132 = *(a1 + 232);
      v133 = (*(a1 + 324) - *(a1 + 316));
      *buf = 67115520;
      v134 = *(a1 + 16);
      *v191 = v118;
      *&v191[4] = 2048;
      *&v191[6] = v26;
      *&v191[14] = 2048;
      *&v191[16] = a8;
      *&v191[24] = 1024;
      *&v191[26] = v119;
      *&v191[30] = 2048;
      *&v191[32] = v120;
      *&v191[40] = 2048;
      *&v191[42] = v121;
      *&v191[50] = 2048;
      *&v191[52] = v122;
      *&v191[60] = 2048;
      *&v191[62] = v123;
      *&v191[70] = 2048;
      *&v191[72] = v124;
      *&v191[80] = 2048;
      *&v191[82] = v125;
      *&v191[90] = 2048;
      *&v191[92] = v115;
      *&v191[100] = 2048;
      *&v191[102] = v25;
      *&v191[110] = 2048;
      *&v191[112] = v113;
      *&v191[120] = 2048;
      *&v191[122] = v30;
      *&v191[130] = 2048;
      *&v191[132] = v112;
      *&v191[140] = 2048;
      *&v191[142] = v24;
      *&v191[150] = 2048;
      *&v191[152] = v127;
      *&v191[160] = 2048;
      *&v191[162] = a9;
      *&v191[170] = 2048;
      *&v191[172] = *&v179;
      *&v191[180] = 2048;
      *&v191[182] = (*(&v179 + 1) - a12);
      *&v191[190] = 2048;
      *&v191[192] = a12;
      *&v191[200] = 2048;
      *&v191[202] = v129;
      v192 = 1024;
      v193 = v131;
      v194 = 1024;
      v195 = v130;
      v196 = 1024;
      v197 = v132;
      v198 = 2048;
      v199 = (v133 / v134);
      _os_log_impl(&dword_19B41C000, v110, OS_LOG_TYPE_DEBUG, "DRIFT DETECTED. numBad=%d,s=%.3f,delH(%.3f,%d,%.3f), expectedVec (%.3f/%.3f/%.3f), calibrated(%.3f/%.3f/%.3f), angleDiff(%.3f/%.3f), magDiff(%.3f/%.4f), incDiff(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), coasting(%.3f/%d/%d), coastingCount(%d),deltaTime(%.3f)", buf, 0xF2u);
    }

    v135 = sub_19B420058();
    if (*(v135 + 160) > 1 || *(v135 + 164) > 1 || *(v135 + 168) > 1 || *(v135 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v136 = *(a1 + 1072);
      v137 = 0.0;
      v138 = 0.0;
      if (v136 >= 2)
      {
        v139 = (v136 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
        v138 = 0.0;
        if (v139 >= 0.0)
        {
          v138 = (v139 / ((v136 - 1) * v136));
        }
      }

      v140 = a5[4];
      v141 = *(a1 + 1144);
      if (v141 >= 2)
      {
        v142 = (v141 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
        if (v142 >= 0.0)
        {
          v137 = (v142 / ((v141 - 1) * v141));
        }
      }

      v143 = *(a1 + 248);
      v144 = *(a1 + 304);
      v145 = *(a1 + 308);
      v146 = a6[2];
      v147 = a6[3];
      v148 = a6[4];
      v149 = a5[2];
      v150 = a5[3];
      v151 = *(a1 + 1216);
      v152 = 0.0;
      if (v151 >= 2)
      {
        v153 = (v151 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
        if (v153 >= 0.0)
        {
          v152 = (v153 / ((v151 - 1) * v151));
        }
      }

      v154 = *(a1 + 216);
      v156 = *(a1 + 236);
      v155 = *(a1 + 240);
      v157 = *(a1 + 232);
      v158 = (*(a1 + 324) - *(a1 + 316));
      v180 = 67115520;
      v159 = *(a1 + 16);
      *v181 = v143;
      *&v181[4] = 2048;
      *&v181[6] = v26;
      *&v181[14] = 2048;
      *&v181[16] = a8;
      *&v181[24] = 1024;
      *&v181[26] = v144;
      *&v181[30] = 2048;
      *&v181[32] = v145;
      *&v181[40] = 2048;
      *&v181[42] = v146;
      *&v181[50] = 2048;
      *&v181[52] = v147;
      *&v181[60] = 2048;
      *&v181[62] = v148;
      *&v181[70] = 2048;
      *&v181[72] = v149;
      *&v181[80] = 2048;
      *&v181[82] = v150;
      *&v181[90] = 2048;
      *&v181[92] = v140;
      *&v181[100] = 2048;
      *&v181[102] = v25;
      *&v181[110] = 2048;
      *&v181[112] = v138;
      *&v181[120] = 2048;
      *&v181[122] = v30;
      *&v181[130] = 2048;
      *&v181[132] = v137;
      *&v181[140] = 2048;
      *&v181[142] = v24;
      *&v181[150] = 2048;
      *&v181[152] = v152;
      *&v181[160] = 2048;
      *&v181[162] = a9;
      *&v181[170] = 2048;
      *&v181[172] = *&v179;
      *&v181[180] = 2048;
      *&v181[182] = (*(&v179 + 1) - a12);
      *&v181[190] = 2048;
      *&v181[192] = a12;
      *&v181[200] = 2048;
      *&v181[202] = v154;
      v182 = 1024;
      v183 = v156;
      v184 = 1024;
      v185 = v155;
      v186 = 1024;
      v187 = v157;
      v188 = 2048;
      v189 = (v158 / v159);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "DRIFT DETECTED. numBad=%d,s=%.3f,delH(%.3f,%d,%.3f), expectedVec (%.3f/%.3f/%.3f), calibrated(%.3f/%.3f/%.3f), angleDiff(%.3f/%.3f), magDiff(%.3f/%.4f), incDiff(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), coasting(%.3f/%d/%d), coastingCount(%d),deltaTime(%.3f)", &v180, 242);
LABEL_192:
      v176 = v102;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::resync(float, BOOL, BOOL, BOOL, float, float, float, const CLVector3d<float> &, float, float, float, const CLVector3d<float> &)", "CoreLocation: %s\n", v102);
      if (v176 != buf)
      {
        free(v176);
      }
    }
  }
}

void sub_19B6CF824(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 1;
  if ((*(a1 + 333) & 1) == 0 && *(a1 + 57) == 1)
  {
    v1 = *(a1 + 208);
    *(a1 + 128) = v1;
    v2 = *(a1 + 200);
    *(a1 + 120) = v2;
    *(a1 + 1520) = vcvtq_f64_f32(v2);
    *(a1 + 1536) = v1;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "enters coasting", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "enters coasting", v7, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::enterCoasting()", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

float sub_19B6CFA04(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = sqrtf(((v3 * v3) + (v2 * v2)) + (v4 * v4));
  if (v5 > 0.0 && (v6 = a2[2], v7 = a2[3], v8 = a2[4], v9 = sqrtf(((v7 * v7) + (v6 * v6)) + (v8 * v8)), v9 > 0.0) && (v10 = ((((v3 * v7) + (v6 * v2)) + (v8 * v4)) / v5) / v9, v10 <= 1.0))
  {
    return acosf(v10);
  }

  else
  {
    return 0.0;
  }
}

void sub_19B6CFA70(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v1 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "exits coasting", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "exits coasting", v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::exitCoasting()", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

uint64_t sub_19B6CFC1C(uint64_t result)
{
  v1 = *(result + 1312);
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v3 = (*(result + 1264) / v1);
  }

  v4 = *(result + 1384);
  v5 = *(result + 1456);
  *(result + 1472) = v3;
  if (v4)
  {
    v2 = (*(result + 1336) / v4);
  }

  *(result + 1480) = v2;
  if (v5)
  {
    v6 = (*(result + 1408) / v5);
  }

  else
  {
    v6 = 0.0;
  }

  *(result + 1488) = v6;
  *(result + 236) = 0;
  *(result + 244) = 1;
  return result;
}

void sub_19B6CFC90(uint64_t a1, float *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Divergence!!! Resetting.", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Divergence!!! Resetting.", v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::handleDivergence(const CLVector3d<float> &)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  sub_19B43FA98((a1 + 1248));
  sub_19B43FA98((a1 + 1320));
  sub_19B43FA98((a1 + 1392));
  if (*(a1 + 24) == 1)
  {
    sub_19B4200DC(a1 + 1248, (a1 + 72));
    sub_19B4200DC(a1 + 1320, (a1 + 76));
    sub_19B4200DC(a1 + 1392, (a1 + 80));
  }

  sub_19B6CDC88(a1, a2, (a1 + 336), *(a1 + 20));
}

BOOL sub_19B6CFEA0(uint64_t a1, unsigned int *a2, int a3, float *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  *a4 = 0.0;
  v8 = *(a1 + 1312);
  v9 = 0.0;
  v10 = 0.0;
  if (v8 >= 2)
  {
    v11 = (v8 * *(a1 + 1268)) - (*(a1 + 1264) * *(a1 + 1264));
    v10 = 0.0;
    if (v11 >= 0.0)
    {
      v10 = v11 / ((v8 - 1) * v8);
    }
  }

  v12 = *(a1 + 1384);
  if (v12 >= 2)
  {
    v13 = (v12 * *(a1 + 1340)) - (*(a1 + 1336) * *(a1 + 1336));
    if (v13 >= 0.0)
    {
      v9 = v13 / ((v12 - 1) * v12);
    }
  }

  v14 = *(a1 + 1456);
  v15 = 0.0;
  if (v14 >= 2)
  {
    v16 = (v14 * *(a1 + 1412)) - (*(a1 + 1408) * *(a1 + 1408));
    if (v16 >= 0.0)
    {
      v15 = v16 / ((v14 - 1) * v14);
    }
  }

  v35 = COERCE_DOUBLE(__PAIR64__(LODWORD(v9), LODWORD(v10)));
  *&v36 = v15;
  v17 = (v9 * a2[1]) + (*a2 * v10);
  v18 = a2[2];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v19 = v17 + (v18 * v15);
  v20 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[2];
    v24 = *(a1 + 1312);
    *buf = 67111168;
    v51 = v21;
    v52 = 1024;
    v53 = v22;
    v54 = 1024;
    v55 = v23;
    v56 = 2048;
    v57 = *&v35;
    v58 = 2048;
    v59 = *(&v35 + 1);
    v60 = 2048;
    v61 = *&v36;
    v62 = 2048;
    v63 = v19;
    v64 = 1024;
    v65 = a3;
    v66 = 1024;
    v67 = v24;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "new estimates calculated, converged(%d %d %d) Var (%.3f %.3f %.3f), remain (%.3f), level (%d), num=%d ", buf, 0x48u);
  }

  v25 = sub_19B420058();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v26 = *a2;
    v27 = a2[1];
    v28 = a2[2];
    v29 = *(a1 + 1312);
    LODWORD(v37) = 67111168;
    HIDWORD(v37) = v26;
    LOWORD(v38) = 1024;
    HIWORD(v38) = v27;
    v39 = *&v35;
    v40 = 2048;
    v41 = *(&v35 + 1);
    v42 = 2048;
    v43 = *&v36;
    v44 = 2048;
    v45 = v19;
    v46 = 1024;
    v47 = a3;
    v48 = 1024;
    v49 = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "new estimates calculated, converged(%d %d %d) Var (%.3f %.3f %.3f), remain (%.3f), level (%d), num=%d ", &v37, 72, v34, COERCE_DOUBLE(&unk_1F0E33E90), v35, v36, v37, v38, v28);
    v31 = v30;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::sanityCheck(unsigned int *, CLMotionTypeCompassCalibrationLevel, float &)", "CoreLocation: %s\n", v30);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  v32 = 100.0 / a3;
  if (v19 > v32)
  {
    *a4 = (v19 - v32) / v32;
  }

  return v19 <= v32;
}

float sub_19B6D02A0(uint64_t a1, float a2, float a3, float a4)
{
  v7 = a3;
  v8 = a2;
  v6 = a4;
  if ((*(a1 + 24) & 1) == 0)
  {
    *(a1 + 57) = 1;
  }

  *(a1 + 333) = 0;
  sub_19B43FA98((a1 + 1248));
  sub_19B43FA98((a1 + 1320));
  sub_19B43FA98((a1 + 1392));
  sub_19B4200DC(a1 + 1248, &v8);
  sub_19B4200DC(a1 + 1320, &v7);
  return sub_19B4200DC(a1 + 1392, &v6);
}

void sub_19B6D0320(uint64_t a1, int a2, int *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  *(a1 + 60) = a2;
  if (a2)
  {
    v4 = *a3;
    *(a1 + 120) = *a3;
    v5 = a3[1];
    *(a1 + 124) = v5;
    v6 = a3[2];
    *(a1 + 128) = v6;
    *(a1 + 200) = v4;
    *(a1 + 204) = v5;
    *(a1 + 208) = v6;
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v7 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 200);
      v9 = *(a1 + 204);
      v10 = *(a1 + 208);
      v11 = *(a1 + 120);
      v12 = *(a1 + 124);
      v13 = *(a1 + 128);
      *buf = 134219264;
      v37 = v8;
      v38 = 2048;
      v39 = v9;
      v40 = 2048;
      v41 = v10;
      v42 = 2048;
      v43 = v11;
      v44 = 2048;
      v45 = v12;
      v46 = 2048;
      v47 = v13;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "fCoastingVecPrint: %.3f, %.3f, %.3f, %.3f, %.3f, %.3f", buf, 0x3Eu);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v15 = *(a1 + 200);
      v16 = *(a1 + 204);
      v17 = *(a1 + 208);
      v18 = *(a1 + 120);
      v19 = *(a1 + 124);
      v20 = *(a1 + 128);
      v24 = 134219264;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      LODWORD(v23) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "fCoastingVecPrint: %.3f, %.3f, %.3f, %.3f, %.3f, %.3f", COERCE_DOUBLE(&v24), v23);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::referenceAttitudeChanged(BOOL, const CLMotionTypeMagneticField &)", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }
}

void sub_19B6D05B4(uint64_t a1, float *a2, double *a3)
{
  v573 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v20 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Attitude data not set.", buf, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v549 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Attitude data not set.", v549, 2);
      v23 = v22;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v22);
      goto LABEL_478;
    }

    return;
  }

  ++*(a1 + 324);
  if (*(a1 + 184) != 1)
  {
    goto LABEL_100;
  }

  v6 = *(a1 + 16);
  v7 = v6;
  v8 = *(a1 + 1144);
  if (v6 * 8.0 < *(a1 + 248))
  {
    if (v8 >= 2)
    {
      v9 = v8;
      v10 = *(a1 + 1096);
      v11 = (v8 * *(a1 + 1100)) - (v10 * v10);
      if (v11 >= 0.0 && (v11 / ((v8 - 1) * v8)) >= 0.01)
      {
        goto LABEL_36;
      }
    }

    v12 = *(a1 + 1072);
    if (v12 < 2 || (v13 = (v12 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024)), v13 < 0.0) || (v13 / ((v12 - 1) * v12)) < 20.0)
    {
      v14 = *(a1 + 1216);
      if (v14 < 2 || (v15 = (v14 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168)), v15 < 0.0) || (v15 / ((v14 - 1) * v14)) < 10.0)
      {
        (*(*a1 + 24))(a1);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v16 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "Bad heading divergence for too long. Prompt user to re-calibrate.", buf, 2u);
        }

        v17 = sub_19B420058();
        if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          *v549 = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Bad heading divergence for too long. Prompt user to re-calibrate.", v549, 2);
          v19 = v18;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetAfterCoasting()", "CoreLocation: %s\n", v18);
LABEL_98:
          if (v19 != buf)
          {
            free(v19);
          }

          goto LABEL_100;
        }

        goto LABEL_100;
      }
    }
  }

  if (!v8)
  {
    goto LABEL_37;
  }

  v10 = *(a1 + 1096);
  v9 = v8;
LABEL_36:
  if ((v10 / v9) >= 1.0)
  {
    v31 = *(a1 + 232);
    if (roundf(v6 * 120.0) < v31 && (v8 == 1 || (v32 = (v9 * *(a1 + 1100)) - (v10 * v10), v32 < 0.0) || (v32 / ((v8 - 1) * v8)) < 0.04))
    {
      (*(*a1 + 24))(a1);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v33 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "Waiting too long for high magnitude interference to go away. Exit coasting.", buf, 2u);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v549 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Waiting too long for high magnitude interference to go away. Exit coasting.", v549, 2);
        v19 = v35;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetAfterCoasting()", "CoreLocation: %s\n", v35);
        goto LABEL_98;
      }
    }

    else if (round(v7 * 360.0) < v31)
    {
      (*(*a1 + 24))(a1);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v36 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEBUG, "Coasting for too long. Exit coasting.", buf, 2u);
      }

      v37 = sub_19B420058();
      if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v549 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Coasting for too long. Exit coasting.", v549, 2);
        v19 = v38;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetAfterCoasting()", "CoreLocation: %s\n", v38);
        goto LABEL_98;
      }
    }

    goto LABEL_100;
  }

LABEL_37:
  v24 = *(a1 + 232);
  if (roundf(v6 * 120.0) <= v24)
  {
    goto LABEL_87;
  }

  if (*(a1 + 333) != 1)
  {
    goto LABEL_100;
  }

  if (round(v7 * 30.0) > v24)
  {
    goto LABEL_100;
  }

  if (*(a1 + 1224) <= 30.0)
  {
    goto LABEL_100;
  }

  if (v8 >= 2)
  {
    v25 = (v8 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
    if (v25 >= 0.0 && (v25 / ((v8 - 1) * v8)) >= 0.01)
    {
      goto LABEL_100;
    }
  }

  v26 = *(a1 + 1072);
  if (v26 >= 2)
  {
    v27 = (v26 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
    if (v27 >= 0.0 && (v27 / ((v26 - 1) * v26)) >= 200.0)
    {
      goto LABEL_100;
    }
  }

  v28 = *(a1 + 1216);
  if (v28 >= 2)
  {
    v30 = v28;
    v29 = *(a1 + 1168);
    v39 = (v28 * *(a1 + 1172)) - (v29 * v29);
    if (v39 >= 0.0 && (v39 / ((v28 - 1) * v28)) >= 100.0)
    {
      goto LABEL_100;
    }

    goto LABEL_81;
  }

  if (v28)
  {
    v29 = *(a1 + 1168);
    v30 = 1.0;
LABEL_81:
    v40 = (v29 / v30);
    goto LABEL_83;
  }

  v40 = 0.0;
LABEL_83:
  if (v26)
  {
    v41 = (*(a1 + 1024) / v26) * 0.9;
  }

  else
  {
    v41 = 0.0;
  }

  if (v41 <= v40)
  {
    goto LABEL_100;
  }

LABEL_87:
  (*(*a1 + 24))(a1);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v42 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "Waiting too long for internal re-calibration. Prompt user.", buf, 2u);
  }

  v43 = sub_19B420058();
  if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    *v549 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Waiting too long for internal re-calibration. Prompt user.", v549, 2);
    v19 = v44;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetAfterCoasting()", "CoreLocation: %s\n", v44);
    goto LABEL_98;
  }

LABEL_100:
  *(a1 + 59) = 0;
  *(a1 + 25) = 0;
  sub_19B6CD760((a1 + 336), a3);
  v45 = a3[3];
  v46 = a3[2] + a3[2];
  v47 = *a3;
  v48 = a3[1];
  v49 = v45 * (v48 + v48) - *a3 * v46;
  *&v46 = -(v45 * (v47 + v47)) - v48 * v46;
  *&v45 = v47 * (v47 + v47) + -1.0 + v48 * (v48 + v48);
  v544 = &unk_1F0E33E90;
  v545 = v49;
  v546 = LODWORD(v46);
  v547 = LODWORD(v45);
  if (*(a1 + 56) == 1)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v50 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_INFO, "Resetting calibrator states.", buf, 2u);
    }

    v51 = sub_19B420058();
    if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v549 = 0;
      LODWORD(v519) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "Resetting calibrator states.", v549, *&v519);
      v53 = v52;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetCalibration(const CLVector3d<float> &, const CLMatrix3d<float> &)", "CoreLocation: %s\n", v52);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    *(a1 + 332) = 1;
    *(a1 + 57) = 1;
    *(a1 + 24) = 0;
    *(a1 + 236) = 0;
    *(a1 + 240) = 0;
    *(a1 + 216) = 0;
    *(a1 + 20) = 0;
    *(a1 + 28) = 0;
    *(a1 + 320) = 3;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 520) = 0;
    *(a1 + 528) = 0;
    v55 = a2[3];
    v54 = a2[4];
    v56 = a2[2];
    v57 = ((*(a1 + 384) * v55) + (v56 * *(a1 + 360))) + (v54 * *(a1 + 408));
    *(a1 + 120) = vmla_n_f32(vmla_n_f32(vmul_n_f32(*(a1 + 376), v55), *(a1 + 352), v56), *(a1 + 400), v54);
    *(a1 + 128) = v57;
    bzero((a1 + 1472), 0x48uLL);
    *(a1 + 1520) = vcvtq_f64_f32(*(a1 + 120));
    *(a1 + 1536) = *(a1 + 128);
    bzero(*(a1 + 1568), 0x144uLL);
    v58 = *(a1 + 1568);
    *v58 = 1091567616;
    v58[10] = 1091567616;
    v58[20] = 1091567616;
    v58[30] = 869711765;
    v58[40] = 869711765;
    v58[50] = 869711765;
    v58[60] = 1091567616;
    v58[70] = 1091567616;
    v58[80] = 1091567616;
    sub_19B6CCF34(a1);
    v59 = *(a3 + 1);
    *(a1 + 416) = *a3;
    *(a1 + 432) = v59;
    if ((a1 + 448) != a2)
    {
      *(a1 + 456) = *(a2 + 1);
      *(a1 + 464) = a2[4];
    }

    *(a1 + 332) = 1;
    *(a1 + 56) = 0;
  }

  else if ((*(a1 + 332) & 1) == 0)
  {
    goto LABEL_119;
  }

  if ((*(*a1 + 72))(a1))
  {
    *(a1 + 332) = 0;
  }

LABEL_119:
  *(a1 + 236) = vadd_s32(*(a1 + 236), 0x100000001);
  v60 = *(a1 + 1000);
  v61 = *(v60 + 64);
  v62 = 0.0;
  if (v61)
  {
    v63 = *(v60 + 16);
    v64 = v63 / v61;
    if (v61 != 1)
    {
      v65 = (v61 * *(v60 + 20)) - (v63 * v63);
      if (v65 >= 0.0)
      {
        v62 = v65 / ((v61 - 1) * v61);
      }
    }
  }

  else
  {
    v64 = 0.0;
  }

  v67 = v62 <= 6.0 && v64 <= 4.7124;
  v69 = v62 <= 0.8 && v64 <= 1.5708;
  sub_19B4200DC(a1 + 552, a2 + 2);
  sub_19B4200DC(a1 + 624, a2 + 3);
  sub_19B4200DC(a1 + 696, a2 + 4);
  v70 = *(a1 + 616);
  v71 = 0.0;
  v72 = 0.0;
  if (v70)
  {
    v72 = *(a1 + 568) / v70;
  }

  v73 = *(a1 + 688);
  if (v73)
  {
    v71 = *(a1 + 640) / v73;
  }

  v74 = *(a1 + 760);
  if (v74)
  {
    v75 = *(a1 + 712) / v74;
  }

  else
  {
    v75 = 0.0;
  }

  v541 = &unk_1F0E33E90;
  v542 = __PAIR64__(LODWORD(v71), LODWORD(v72));
  v543 = v75;
  v537 = &unk_1F0E33E90;
  v538 = v72;
  v539 = v71;
  v540 = v75;
  v76 = sub_19B6D6034(a1, &v537);
  if (!(*(*a1 + 72))(a1, v76))
  {
    goto LABEL_447;
  }

  if (*(a1 + 60) == 1)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v77 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "Compass-withFusion";
      _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEBUG, "Type,%s,Updating reference frame.", buf, 0xCu);
    }

    v78 = sub_19B420058();
    if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v549 = 136315138;
      *&v549[4] = "Compass-withFusion";
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Type,%s,Updating reference frame.", v549);
      v80 = v79;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v79);
      if (v80 != buf)
      {
        free(v80);
      }
    }

    *(a1 + 60) = 0;
  }

  v81 = *(a1 + 20);
  if (v81 <= 3)
  {
    v82 = 2.0;
  }

  else
  {
    v82 = (5 - v81);
  }

  v83 = *(a1 + 216);
  if (v83 <= 0.0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v85 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v85, OS_LOG_TYPE_FAULT, "Coasting vector not set.", buf, 2u);
    }

    v86 = sub_19B420058();
    if ((*(v86 + 160) & 0x80000000) == 0 || (*(v86 + 164) & 0x80000000) == 0 || (*(v86 + 168) & 0x80000000) == 0 || *(v86 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v549 = 0;
      LODWORD(v519) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Coasting vector not set.", v549, *&v519);
      v88 = v87;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v87);
      if (v88 != buf)
      {
        free(v88);
      }
    }

    goto LABEL_390;
  }

  *&v530 = vabds_f32(v83, sqrtf(((v539 * v539) + (v538 * v538)) + (v540 * v540))) / v83;
  sub_19B4200DC(a1 + 1080, &v530);
  v84 = v82 * 0.25 + 1.5;
  if (*&v530 > ((v84 * 10.0) * 0.1875))
  {
    if (*(a1 + 184))
    {
      ++*(a1 + 232);
    }

    else
    {
      sub_19B6CF824(a1);
    }

    v115 = *(a1 + 1144);
    if (v115)
    {
      if ((v116 = *(a1 + 1096) / v115, v116 > 5.0) && roundf(*(a1 + 16) * 30.0) < *(a1 + 232) || v116 > 10.0 && roundf(*(a1 + 16) * 10.0) < *(a1 + 232))
      {
        (*(*a1 + 24))(a1);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v117 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v117, OS_LOG_TYPE_DEBUG, "Prolonged high magDiff. Likely bad calibration. Resetting.", buf, 2u);
        }

        v118 = sub_19B420058();
        if (*(v118 + 160) > 1 || *(v118 + 164) > 1 || *(v118 + 168) > 1 || *(v118 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          *v549 = 0;
          LODWORD(v519) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Prolonged high magDiff. Likely bad calibration. Resetting.", v549, *&v519);
          v120 = v119;
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v119);
          if (v120 != buf)
          {
            free(v120);
          }
        }
      }
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v121 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v122 = sqrtf(((v539 * v539) + (v538 * v538)) + (v540 * v540));
      v123 = *(a1 + 200);
      v124 = *(a1 + 204);
      v125 = *(a1 + 208);
      v126 = (*(a1 + 232) / *(a1 + 16));
      v127 = *(a1 + 1144);
      v128 = 0.0;
      if (v127 >= 2)
      {
        v129 = (v127 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
        v130 = (v127 - 1) * v127;
        if (v129 >= 0.0)
        {
          v128 = (v129 / v130);
        }

        else
        {
          v128 = 0.0;
        }
      }

      v131 = *(a1 + 333);
      *buf = 134220544;
      *&buf[4] = *&v530;
      *&buf[12] = 2048;
      *&buf[14] = v122;
      *&buf[22] = 2048;
      *&buf[24] = v538;
      *&buf[32] = 2048;
      *&buf[34] = v539;
      *&buf[42] = 2048;
      *&buf[44] = v540;
      *&buf[52] = 2048;
      *&buf[54] = v123;
      *&buf[62] = 2048;
      *&buf[64] = v124;
      *&buf[72] = 2048;
      *&buf[74] = v125;
      v567 = 2048;
      v568 = v126;
      v569 = 2048;
      v570 = v128;
      v571 = 1024;
      v572 = v131;
      _os_log_impl(&dword_19B41C000, v121, OS_LOG_TYPE_DEBUG, "Extremely high magnitude.  magDiff (%.3f), magnitude (%.3f), calibrated (%.3f/%.3f/%.3f), coastVector (%.3f/%.3f/%.3f),coastingTime,%.3f,magDiffVar,%.3f,resetInternal,%d", buf, 0x6Cu);
    }

    v132 = sub_19B420058();
    if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v133 = sqrtf(((v539 * v539) + (v538 * v538)) + (v540 * v540));
      v134 = *(a1 + 200);
      v135 = *(a1 + 204);
      v136 = *(a1 + 208);
      v137 = (*(a1 + 232) / *(a1 + 16));
      v138 = *(a1 + 1144);
      v139 = 0.0;
      if (v138 >= 2)
      {
        v140 = (v138 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
        if (v140 >= 0.0)
        {
          v139 = (v140 / ((v138 - 1) * v138));
        }
      }

      v141 = *(a1 + 333);
      *v549 = 134220544;
      *&v549[4] = *&v530;
      *&v549[12] = 2048;
      *&v549[14] = v133;
      *&v549[22] = 2048;
      *&v549[24] = v538;
      *&v549[32] = 2048;
      *&v549[34] = v539;
      *&v549[42] = 2048;
      *&v549[44] = v540;
      *&v549[52] = 2048;
      *&v549[54] = v134;
      *&v549[62] = 2048;
      *&v549[64] = v135;
      *&v549[72] = 2048;
      v550 = v136;
      v551 = 2048;
      v552 = v137;
      v553 = 2048;
      v554 = v139;
      v555 = 1024;
      v556 = v141;
      LODWORD(v519) = 108;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Extremely high magnitude.  magDiff (%.3f), magnitude (%.3f), calibrated (%.3f/%.3f/%.3f), coastVector (%.3f/%.3f/%.3f),coastingTime,%.3f,magDiffVar,%.3f,resetInternal,%d", COERCE_DOUBLE(v549), v519, v520, v521, v522, v523, v525, *&v527, v528, v529, LODWORD(v530));
      v23 = v142;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v142);
LABEL_478:
      if (v23 != buf)
      {
        free(v23);
      }

      return;
    }

    return;
  }

  v89 = *(a1 + 200);
  v90 = *(a1 + 204);
  v91 = *(a1 + 208);
  *&v92 = ((v90 * *(a1 + 356)) + (v89 * *(a1 + 352))) + (v91 * *(a1 + 360));
  *&v93 = ((v90 * *(a1 + 380)) + (v89 * *(a1 + 376))) + (v91 * *(a1 + 384));
  v94 = ((v90 * *(a1 + 404)) + (v89 * *(a1 + 400))) + (v91 * *(a1 + 408));
  *&v534.f64[0] = &unk_1F0E33E90;
  *&v534.f64[1] = __PAIR64__(v93, v92);
  *&v535 = v94;
  *&v559 = sub_19B6CFA04(&v537, &v534) * 57.296;
  v95 = 90.0 - sub_19B6CFA04(&v537, &v544) * 57.2957795;
  v96 = 90.0 - sub_19B6CFA04(&v534, &v544) * 57.2957795;
  LODWORD(v527) = vabds_f32(v95, v96);
  sub_19B4200DC(a1 + 1008, &v559);
  sub_19B4200DC(a1 + 1152, &v527);
  *(a1 + 1224) = 0;
  v564.i32[0] = 0;
  v562.i32[0] = 0;
  v97 = 0.0;
  if (sub_19B6DEAF0(&v534, &v544, &v562))
  {
    if (sub_19B6DEAF0(&v537, &v544, &v564))
    {
      v97 = v564.f32[0] - v562.f32[0];
      v98 = vabds_f32(v564.f32[0], v562.f32[0]);
      *(a1 + 1224) = v98;
      if (v98 > 180.0)
      {
        v99 = 360.0 - v98;
        *(a1 + 1224) = v99;
        if (v97 < 0.0)
        {
          v97 = -v99;
        }

        else
        {
          v97 = v99;
        }
      }
    }
  }

  if (*(a1 + 20) < 2 || !v69 && (v67 & (*(*a1 + 80))(a1)) != 1)
  {
    goto LABEL_387;
  }

  *(a1 + 185) = 0;
  v100 = *(a1 + 1216);
  LODWORD(v523) = 0;
  if (v100 >= 2)
  {
    v101 = (v100 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
    if (v101 >= 0.0)
    {
      *&v523 = v101 / ((v100 - 1) * v100);
    }
  }

  v102 = v84;
  v103 = *(a1 + 1072);
  v104 = 0.0;
  if (v103 >= 2)
  {
    v105 = (v103 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
    if (v105 >= 0.0)
    {
      v104 = (v105 / ((v103 - 1) * v103));
    }
  }

  v106 = *(a1 + 1144);
  v107 = 0.0;
  if (v106 >= 2)
  {
    v108 = (v106 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
    if (v108 >= 0.0)
    {
      v107 = v108 / ((v106 - 1) * v106);
    }
  }

  v110 = *(a1 + 1224);
  if (*(a1 + 252) == 1 && v110 > 27.5)
  {
    v109 = v102 * 0.0032;
    if (v107 <= v109 && (!v106 || (*(a1 + 1096) / v106) < 0.45))
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v111 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v111, OS_LOG_TYPE_DEBUG, "Likely bad database lookup. Resetting. ", buf, 2u);
      }

      v112 = sub_19B420058();
      if (*(v112 + 160) > 1 || *(v112 + 164) > 1 || *(v112 + 168) > 1 || *(v112 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v549 = 0;
        LODWORD(v519) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Likely bad database lookup. Resetting. ", v549, *&v519);
        v114 = v113;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v113);
        if (v114 != buf)
        {
          free(v114);
        }
      }

      (*(*a1 + 24))(a1);
      return;
    }
  }

  v143 = *(a1 + 248);
  if (v110 <= 80.0)
  {
    if (v143 < 1)
    {
      goto LABEL_253;
    }

    v144 = -1;
  }

  else
  {
    v144 = 1;
  }

  *(a1 + 248) = v144 + v143;
LABEL_253:
  v521 = v104;
  *&v522 = v102 * 0.0032;
  *(&v522 + 1) = v107;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  *&v525 = v84 * 13.0;
  v145 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v146 = *(a1 + 236);
    v147 = *(a1 + 248);
    *buf = 134219776;
    *&buf[4] = v84;
    *&buf[12] = 1024;
    *&buf[14] = v146;
    *&buf[18] = 2048;
    *&buf[20] = *&v530;
    *&buf[28] = 2048;
    *&buf[30] = v97;
    *&buf[38] = 2048;
    *&buf[40] = *&v559;
    *&buf[48] = 1024;
    *&buf[50] = v147;
    *&buf[54] = 2048;
    *&buf[56] = v95;
    *&buf[64] = 1024;
    *&buf[66] = *&v523 < *&v525;
    _os_log_impl(&dword_19B41C000, v145, OS_LOG_TYPE_DEBUG, "******* scale(%.3f),cAge(%d), magDiff(%.3f), dHeading(%.3f), deltaAngle(%.3f), numBad(%d), calInc(%.3f), incDiffIsStable(%d)", buf, 0x46u);
  }

  v148 = sub_19B420058();
  if (*(v148 + 160) > 1 || *(v148 + 164) > 1 || *(v148 + 168) > 1 || *(v148 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v149 = *(a1 + 236);
    v150 = *(a1 + 248);
    *v549 = 134219776;
    *&v549[4] = v84;
    *&v549[12] = 1024;
    *&v549[14] = v149;
    *&v549[18] = 2048;
    *&v549[20] = *&v530;
    *&v549[28] = 2048;
    *&v549[30] = v97;
    *&v549[38] = 2048;
    *&v549[40] = *&v559;
    *&v549[48] = 1024;
    *&v549[50] = v150;
    *&v549[54] = 2048;
    *&v549[56] = v95;
    *&v549[64] = 1024;
    *&v549[66] = *&v523 < *&v525;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "******* scale(%.3f),cAge(%d), magDiff(%.3f), dHeading(%.3f), deltaAngle(%.3f), numBad(%d), calInc(%.3f), incDiffIsStable(%d)", COERCE_DOUBLE(v549), 70, v520, v521, v522, LODWORD(v523), v525, v527);
    v152 = v151;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v151);
    if (v152 != buf)
    {
      free(v152);
    }
  }

  v153 = *&v525;
  v154 = *&v525 * 1.5;
  if (!v69 || *(a1 + 16) >= (*(a1 + 324) - *(a1 + 328)) || (LODWORD(v153) = *(a1 + 1216), round(*(a1 + 1160) * 0.5) >= *&v153) || (*(a1 + 328) = 0, sub_19B6CE208(a1, *&v523 < *&v525, v154 > v521, *(&v522 + 1) <= *&v522, &v537, &v534, v84, v97, *&v559, *&v527, v95, v96, *&v530), v154 = *&v525 * 1.5, (*(a1 + 313) & 1) == 0))
  {
    v155 = *(a1 + 16);
    v156 = *(a1 + 1072);
    v157 = 0.0;
    v158 = 0.0;
    if (v156)
    {
      v158 = *(a1 + 1024) / v156;
    }

    v159 = v155;
    v160 = *(a1 + 1144);
    if (v160)
    {
      v157 = *(a1 + 1096) / v160;
    }

    v161 = *(a1 + 236);
    v162 = v159 * 2.0 + 40.0;
    if (*(a1 + 185))
    {
      if (*(a1 + 184) != 1)
      {
LABEL_387:
        if ((*(a1 + 333) & 1) == 0 && *(a1 + 184) == 1 && *&v530 > ((v84 + 1.0) * 0.1875))
        {
          return;
        }

        goto LABEL_390;
      }

      v163 = v84 * 13.75;
      v164 = v84 * 0.1875;
LABEL_284:
      v166 = *(a1 + 232) + 1;
      *(a1 + 232) = v166;
      if (v157 > v164 || *(&v522 + 1) > *&v522 || v158 > v163 && *(a1 + 1224) >= v163 || v154 <= v521)
      {
        if ((*(a1 + 333) & 1) == 0)
        {
          if (roundf(v155 * 10.0) >= v166 && v162 < v161 && (v95 >= 78.0 || *&v523 >= *&v525 || v157 >= 0.45 || v158 <= v163 || *(a1 + 1224) <= 80.0))
          {
            return;
          }

          sub_19B6CD1C0((a1 + 1232));
          sub_19B6CDC88(a1, &v537, (a1 + 336), *(a1 + 20));
          if ((*(a1 + 333) & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v167 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v167, OS_LOG_TYPE_DEBUG, "Interference is gone.", buf, 2u);
        }

        v168 = sub_19B420058();
        if (*(v168 + 160) > 1 || *(v168 + 164) > 1 || *(v168 + 168) > 1 || *(v168 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          *v549 = 0;
          LODWORD(v519) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Interference is gone.", v549, *&v519);
          v170 = v169;
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v169);
          if (v170 != buf)
          {
            free(v170);
          }
        }

        sub_19B6CFA70(a1);
        if (*(a1 + 333) == 1 && *(a1 + 1592) <= 2)
        {
          sub_19B6CDC88(a1, &v537, (a1 + 336), *(a1 + 1464));
        }
      }

      goto LABEL_387;
    }

    v165 = *(a1 + 1224);
    if (v165 > 80.0 && v96 > 78.0 && v155 < *(a1 + 248) && v158 > 13.75 && v157 < 0.45 && (v159 * 3.5 < *(a1 + 240) || v162 >= v161))
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v181 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v181, OS_LOG_TYPE_DEBUG, "Steep inclination. Likely bad interference or bad database lookup. Resetting. ", buf, 2u);
      }

      v182 = sub_19B420058();
      if (*(v182 + 160) > 1 || *(v182 + 164) > 1 || *(v182 + 168) > 1 || *(v182 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v549 = 0;
        LODWORD(v519) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Steep inclination. Likely bad interference or bad database lookup. Resetting. ", v549, *&v519);
        v184 = v183;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v183);
        if (v184 != buf)
        {
          free(v184);
        }
      }

      *(a1 + 248) = 0;
      (*(*a1 + 24))(a1);
      return;
    }

    v163 = v84 * 13.75;
    v164 = v84 * 0.1875;
    if (*(a1 + 184))
    {
      goto LABEL_284;
    }

    if (v165 <= 13.75 && *&v530 <= 0.45)
    {
LABEL_318:
      v171 = 0;
      goto LABEL_335;
    }

    v172 = v102 + 0.8;
    if (*&v559 < (v172 * 13.75) && (*&v559 <= 13.75 || *&v530 < (v172 * 0.1875)))
    {
      v185 = *(a1 + 228);
      if (*&v559 <= v163 || !v69 && *&v530 <= v164)
      {
        _VF = __OFSUB__(v185, 1);
        v518 = v185 - 1;
        if (v518 < 0 == _VF)
        {
          v171 = 0;
          *(a1 + 228) = v518;
          goto LABEL_335;
        }

        goto LABEL_318;
      }

      *(a1 + 228) = v185 + 1;
      v186 = *(a1 + 333);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v187 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = *&v559;
        *&buf[12] = 2048;
        *&buf[14] = v97;
        *&buf[22] = 2048;
        *&buf[24] = *&v530;
        *&buf[32] = 2048;
        *&buf[34] = *&v527;
        _os_log_impl(&dword_19B41C000, v187, OS_LOG_TYPE_DEBUG, "**INTERFERENCE-0 dAngle=%.3f,dHeading=%.3f,magDiff=%.3f,incDiff=%.3f", buf, 0x2Au);
      }

      v188 = sub_19B420058();
      v171 = v186 ^ 1;
      if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v549 = 134218752;
        *&v549[4] = *&v559;
        *&v549[12] = 2048;
        *&v549[14] = v97;
        *&v549[22] = 2048;
        *&v549[24] = *&v530;
        *&v549[32] = 2048;
        *&v549[34] = *&v527;
        LODWORD(v519) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "**INTERFERENCE-0 dAngle=%.3f,dHeading=%.3f,magDiff=%.3f,incDiff=%.3f", COERCE_DOUBLE(v549), v519, v520, v521);
        v190 = v189;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v189);
        if (v190 != buf)
        {
          free(v190);
        }
      }
    }

    else
    {
      *(a1 + 228) += 5;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v173 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = *&v559;
        *&buf[12] = 2048;
        *&buf[14] = v97;
        *&buf[22] = 2048;
        *&buf[24] = *&v530;
        *&buf[32] = 2048;
        *&buf[34] = *&v527;
        _os_log_impl(&dword_19B41C000, v173, OS_LOG_TYPE_DEBUG, "**INTERFERENCE-1 dAngle=%.3f,dHeading=%.3f,magDiff=%.3f,incDiff=%.3f", buf, 0x2Au);
      }

      v174 = sub_19B420058();
      if (*(v174 + 160) > 1 || *(v174 + 164) > 1 || *(v174 + 168) > 1 || *(v174 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v549 = 134218752;
        *&v549[4] = *&v559;
        *&v549[12] = 2048;
        *&v549[14] = v97;
        *&v549[22] = 2048;
        *&v549[24] = *&v530;
        *&v549[32] = 2048;
        *&v549[34] = *&v527;
        LODWORD(v519) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "**INTERFERENCE-1 dAngle=%.3f,dHeading=%.3f,magDiff=%.3f,incDiff=%.3f", COERCE_DOUBLE(v549), v519, v520, v521);
        v176 = v175;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v175);
        if (v176 != buf)
        {
          free(v176);
        }
      }

      v171 = 1;
    }

LABEL_335:
    v177 = 0;
    v178 = (v84 * 4.0) * 13.75;
    v179 = *(a1 + 24);
    v180 = *(a1 + 228);
    if (v179 == 1 && v180 >= 2)
    {
      v177 = (*&v559 > v178 || *(a1 + 1224) > 32.0) && *&v530 < 1.12499997;
    }

    if (v180 > 40 || *&v559 > v178 || v177)
    {
      if ((v177 | v179) != 1 || (v191 = *(a1 + 236), v192 = *(a1 + 16), v192 * 0.25 <= v191) && ((v192 * 10.0) <= v191 || v192 >= *(a1 + 248) || v95 >= 78.0 || *&v523 >= *&v525))
      {
        sub_19B6CF824(a1);
        *(a1 + 228) = 0;
        return;
      }

      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v193 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v193, OS_LOG_TYPE_DEBUG, "Likely bad database lookup. Resetting. ", buf, 2u);
      }

      v194 = sub_19B420058();
      if (*(v194 + 160) > 1 || *(v194 + 164) > 1 || *(v194 + 168) > 1 || *(v194 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v549 = 0;
        LODWORD(v519) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Likely bad database lookup. Resetting. ", v549, *&v519);
        v196 = v195;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v195);
        if (v196 != buf)
        {
          free(v196);
        }
      }

      (*(*a1 + 24))(a1);
    }

    if (v171)
    {
      return;
    }

    goto LABEL_387;
  }

LABEL_390:
  if (*(a1 + 184) == 1)
  {
    HIDWORD(v197) = -858993459 * *(a1 + 324) + 429496728;
    LODWORD(v197) = HIDWORD(v197);
    if ((v197 >> 1) <= 0x19999998)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v198 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v199 = *(a1 + 333);
        *buf = 67109120;
        *&buf[4] = v199;
        _os_log_impl(&dword_19B41C000, v198, OS_LOG_TYPE_DEBUG, "Updating during coasting, fIsResetInternal(%d)", buf, 8u);
      }

      v200 = sub_19B420058();
      if (*(v200 + 160) > 1 || *(v200 + 164) > 1 || *(v200 + 168) > 1 || *(v200 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v201 = *(a1 + 333);
        *v549 = 67109120;
        *&v549[4] = v201;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Updating during coasting, fIsResetInternal(%d)", v549);
        v203 = v202;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v202);
        if (v203 != buf)
        {
          free(v203);
        }
      }
    }
  }

  if (*(a1 + 185) & v69)
  {
    v204 = *(a1 + 324);
    v206 = v62 < 0.01 && v64 > 0.15;
    if ((*(a1 + 313) & 1) == 0 && ((v207 = fabsf(*(a1 + 308)), v208 = *(a1 + 304), v208 < 2) || v207 <= (((v204 - *(a1 + 316)) / *(a1 + 16)) * 40.0)) && (v208 < 6 || v207 <= 100.0) && (v208 < 7 || !v206 || v207 <= 70.0))
    {
      sub_19B6CD804(buf, a1 + 336);
      v339 = ((v539 * *&buf[68]) + (v538 * *&buf[64])) + (v540 * *&buf[72]);
      v340 = ((v539 * *&buf[44]) + (v538 * *&buf[40])) + (v540 * *&buf[48]);
      *(a1 + 120) = ((v539 * *&buf[20]) + (v538 * *&buf[16])) + (v540 * *&buf[24]);
      *(a1 + 124) = v340;
      *(a1 + 128) = v339;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v341 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v64;
        *&buf[12] = 2048;
        *&buf[14] = v62;
        _os_log_impl(&dword_19B41C000, v341, OS_LOG_TYPE_DEBUG, "resync coasting vector. rotM,%.3f,rotV,%.3f", buf, 0x16u);
      }

      v342 = sub_19B420058();
      if (*(v342 + 160) <= 1 && *(v342 + 164) <= 1 && *(v342 + 168) <= 1 && !*(v342 + 152))
      {
        goto LABEL_433;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v549 = 134218240;
      *&v549[4] = v64;
      *&v549[12] = 2048;
      *&v549[14] = v62;
      LODWORD(v519) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "resync coasting vector. rotM,%.3f,rotV,%.3f", COERCE_DOUBLE(v549), v519);
      v218 = v343;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v343);
    }

    else
    {
      *(a1 + 72) = *(a1 + 264);
      *(a1 + 80) = *(a1 + 272);
      v209 = *(a1 + 288);
      v210 = *(a1 + 292);
      *(a1 + 120) = v209;
      *(a1 + 124) = v210;
      v211 = *(a1 + 296);
      *(a1 + 128) = v211;
      *(a1 + 328) = v204;
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      if ((*(a1 + 333) & 1) == 0)
      {
        v212 = ((v210 * *(a1 + 356)) + (v209 * *(a1 + 352))) + (v211 * *(a1 + 360));
        v213 = ((v210 * *(a1 + 380)) + (v209 * *(a1 + 376))) + (v211 * *(a1 + 384));
        v214 = ((v210 * *(a1 + 404)) + (v209 * *(a1 + 400))) + (v211 * *(a1 + 408));
        *buf = &unk_1F0E33E90;
        *&buf[8] = v212;
        *&buf[12] = v213;
        *&buf[16] = v214;
        sub_19B6CDC88(a1, buf, (a1 + 336), 3);
      }

      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v215 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v215, OS_LOG_TYPE_DEBUG, "BACKUP resync coasting vector", buf, 2u);
      }

      v216 = sub_19B420058();
      if (*(v216 + 160) <= 1 && *(v216 + 164) <= 1 && *(v216 + 168) <= 1 && !*(v216 + 152))
      {
        goto LABEL_433;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v549 = 0;
      LODWORD(v519) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "BACKUP resync coasting vector", v549, *&v519);
      v218 = v217;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v217);
    }

    if (v218 != buf)
    {
      free(v218);
    }

LABEL_433:
    sub_19B6CD8B4(a1, 1);
    goto LABEL_447;
  }

  HIDWORD(v219) = -858993459 * *(a1 + 324) + 429496728;
  LODWORD(v219) = HIDWORD(v219);
  if ((v219 >> 1) <= 0x19999998)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v220 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v221 = *a3;
      v222 = *(a3 + 1);
      v223 = *(a3 + 2);
      v224 = *(a3 + 3);
      *buf = 67110912;
      *&buf[4] = v67;
      *&buf[8] = 1024;
      *&buf[10] = v69;
      *&buf[14] = 2048;
      *&buf[16] = v64;
      *&buf[24] = 2048;
      *&buf[26] = v62;
      *&buf[34] = 2048;
      *&buf[36] = v221;
      *&buf[44] = 2048;
      *&buf[46] = v222;
      *&buf[54] = 2048;
      *&buf[56] = v223;
      *&buf[64] = 2048;
      *&buf[66] = v224;
      _os_log_impl(&dword_19B41C000, v220, OS_LOG_TYPE_DEBUG, "device status: (smooth static) = (%d %d), rotM,%.3f,rotV,%.3f, q.x,%.3f,q.y,%.3f,q.z,%.3f,q.w,%.3f)", buf, 0x4Au);
    }

    v225 = sub_19B420058();
    if (*(v225 + 160) > 1 || *(v225 + 164) > 1 || *(v225 + 168) > 1 || *(v225 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v226 = *a3;
      v227 = *(a3 + 1);
      v228 = *(a3 + 2);
      v229 = *(a3 + 3);
      *v549 = 67110912;
      *&v549[4] = v67;
      *&v549[8] = 1024;
      *&v549[10] = v69;
      *&v549[14] = 2048;
      *&v549[16] = v64;
      *&v549[24] = 2048;
      *&v549[26] = v62;
      *&v549[34] = 2048;
      *&v549[36] = v226;
      *&v549[44] = 2048;
      *&v549[46] = v227;
      *&v549[54] = 2048;
      *&v549[56] = v228;
      *&v549[64] = 2048;
      *&v549[66] = v229;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "device status: (smooth static) = (%d %d), rotM,%.3f,rotV,%.3f, q.x,%.3f,q.y,%.3f,q.z,%.3f,q.w,%.3f)", v549, 74, v520, v521, v522, v523, v525, *&v527);
      v231 = v230;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v230);
      if (v231 != buf)
      {
        free(v231);
      }
    }
  }

LABEL_447:
  v232 = *(a1 + 57);
  if (v232 != 1 || *(a1 + 20) != 5 || *(a1 + 220) != 1)
  {
    v534 = vnegq_f64(*(a1 + 416));
    v237 = *(a1 + 440);
    v535 = -*(a1 + 432);
    v536 = v237;
    sub_19B447A1C(&v530, v534.f64, a3);
    v239 = v530;
    v238 = v531;
    v241 = v532;
    v240 = v533;
    v242 = v543 - *(a1 + 464);
    v527 = &unk_1F0E33E90;
    v243 = fabs(v530) + fabs(v531) + fabs(v532) + fabs(v533);
    if (v543 == 0.0)
    {
      v244 = v242;
    }

    else
    {
      v244 = v242 / v543;
    }

    v245 = vsub_f32(v542, *(a1 + 456));
    v246 = vabs_f32(vbsl_s8(vceqz_f32(v542), v245, vdiv_f32(v245, v542)));
    v528 = *&v246;
    v247 = fabsf(v244);
    *&v529 = v247;
    if (v243 < 1.001)
    {
      v248 = (vaddv_f32(v246) + v247);
      if (v248 > 0.2)
      {
        ++*(a1 + 472);
        --*(a1 + 236);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v249 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          v250 = *(a1 + 472);
          *buf = 67110400;
          *&buf[4] = v250;
          *&buf[8] = 2048;
          *&buf[10] = v239;
          *&buf[18] = 2048;
          *&buf[20] = v238;
          *&buf[28] = 2048;
          *&buf[30] = v241;
          *&buf[38] = 2048;
          *&buf[40] = v240;
          *&buf[48] = 2048;
          *&buf[50] = v248;
          _os_log_impl(&dword_19B41C000, v249, OS_LOG_TYPE_DEBUG, "numSamplesSkipped (%d), deltaQ (%.3f/%.3f/%.3f/%.3f), deltaReadingM (%.3f)", buf, 0x3Au);
        }

        v251 = sub_19B420058();
        if (*(v251 + 160) > 1 || *(v251 + 164) > 1 || *(v251 + 168) > 1 || *(v251 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v252 = *(a1 + 472);
          *v549 = 67110400;
          *&v549[4] = v252;
          *&v549[8] = 2048;
          *&v549[10] = v239;
          *&v549[18] = 2048;
          *&v549[20] = v238;
          *&v549[28] = 2048;
          *&v549[30] = v241;
          *&v549[38] = 2048;
          *&v549[40] = v240;
          *&v549[48] = 2048;
          *&v549[50] = v248;
          LODWORD(v519) = 58;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "numSamplesSkipped (%d), deltaQ (%.3f/%.3f/%.3f/%.3f), deltaReadingM (%.3f)", v549, v519, v520, v521, v522, v523);
          v23 = v253;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v253);
          goto LABEL_478;
        }

        return;
      }
    }

    if (v232 && *(a1 + 20) == 5)
    {
      if (!v69)
      {
        ++*(a1 + 472);
        --*(a1 + 236);
        return;
      }

      if ((*(a1 + 184) & 1) == 0 && (*(a1 + 220) & 1) == 0 && (*(a1 + 16) * 4.0) <= *(a1 + 236))
      {
        *(a1 + 220) = 1;
      }
    }

    v254 = 0;
    v524 = (a1 + 448);
    *&v526 = a1 + 1496;
    v255 = *(a1 + 1568);
    v256 = 0.0;
    do
    {
      v256 = v256 + *(v255 + v254);
      v254 += 40;
    }

    while (v254 != 360);
    v257 = exp(v256 * 5.0) * 15.0;
    if (v257 > 5000.0)
    {
      v257 = 5000.0;
    }

    if (v257 < 300.0)
    {
      v257 = 300.0;
    }

    v258 = exp(-1.0 / *(a1 + 16) / v257);
    v259 = *(a1 + 472);
    if (v259 < 2)
    {
      v261 = v258;
    }

    else
    {
      v260 = v259 - 1;
      v261 = v258;
      do
      {
        v261 = v258 * v261;
        --v260;
      }

      while (v260);
    }

    v262 = 0;
    v263 = *(a1 + 20);
    *(a1 + 1520) = vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 144)), 1.0 - v261), *(a1 + 1520), v261);
    *(a1 + 1536) = (1.0 - v261) * *(a1 + 152) + v261 * *(a1 + 1536);
    v264 = v261 * v261;
    v265 = (1.0 - v261 * v261) * 6.25;
    v266 = v255 + 240;
    for (i = 6; i != 9; ++i)
    {
      for (j = 0; j != 108; j += 36)
      {
        v269 = v264 * *(v266 + j);
        if (v262 == j)
        {
          v270 = v265 + v269;
          v269 = v270;
        }

        *(v266 + j) = v269;
      }

      v262 += 36;
      v266 += 4;
    }

    sub_19B66EF8C((a1 + 1544), v255, 9);
    v271 = 0;
    v272 = *(a1 + 1576);
    v273 = v542;
    *(v272 + 36) = -v542.f32[0];
    *(v272 + 52) = -v273.f32[1];
    v274 = v543;
    *(v272 + 68) = -v543;
    *(v272 + 72) = *(a1 + 352);
    *(v272 + 84) = *(a1 + 356);
    *(v272 + 96) = *(a1 + 360);
    *(v272 + 76) = *(a1 + 376);
    *(v272 + 88) = *(a1 + 380);
    *(v272 + 100) = *(a1 + 384);
    *(v272 + 80) = *(a1 + 400);
    *(v272 + 92) = *(a1 + 404);
    *(v272 + 104) = *(a1 + 408);
    __asm { FMOV            V2.2S, #1.0 }

    v559 = _D2;
    v560.i32[0] = 1065353216;
    v565 = 0.0;
    v564 = 0;
    v280 = v272;
    do
    {
      v281 = v564.f32[v271];
      v282 = v280;
      for (k = 1472; k != 1544; k += 8)
      {
        v284 = *v282;
        v282 += 3;
        v281 = v281 + v284 * *(a1 + k);
      }

      v564.f32[v271++] = v281;
      ++v280;
    }

    while (v271 != 3);
    v562 = vsub_f32(v273, v564);
    v563 = v274 - v565;
    sub_19B66EDDC(buf, (a1 + 1544), v272, &v559, &v562, 9, 3, v549);
    v285 = *(a1 + 1568);
    bzero(*(a1 + 1584), 0x144uLL);
    bzero(v285, 0x144uLL);
    v286 = 0;
    v287 = *(a1 + 1552);
    v288 = *(a1 + 1584);
    v289 = *(a1 + 1544);
    v290 = v288;
    do
    {
      v288[10 * v286] = *(v287 + 4 * v286);
      if (v286)
      {
        v291 = 0;
        v292 = v290;
        do
        {
          *v292 = *(v287 + 4 * v286) * *(v289 + 4 * ((v286 - 1) * v286 / 2) + 4 * v291);
          v292 += 9;
          ++v291;
        }

        while (v286 != v291);
      }

      ++v286;
      ++v290;
    }

    while (v286 != 9);
    for (m = 0; m != 9; ++m)
    {
      v294 = 0;
      v295 = *(a1 + 1544) + 4 * m;
      v296 = v288;
      do
      {
        if (m <= v294)
        {
          LODWORD(n) = v294;
        }

        else
        {
          LODWORD(n) = m;
        }

        if (m >= v294)
        {
          v298 = v288[(9 * v294 + n)] + 0.0;
          LODWORD(n) = n + 1;
        }

        else
        {
          v298 = 0.0;
        }

        if (n <= 8)
        {
          for (n = n; n != 9; ++n)
          {
            v298 = v298 + (*(v295 + 4 * ((n - 1) * n / 2)) * v296[n]);
          }
        }

        *(v285 + 9 * v294++ + m) = v298;
        v296 += 9;
      }

      while (v294 != 9);
    }

    for (ii = 0; ii != 72; ii += 8)
    {
      *(a1 + ii + 1472) = *&buf[ii] + *(a1 + ii + 1472);
    }

    v300 = vcvt_f32_f64(*(a1 + 1520));
    v301 = *(a1 + 1536);
    *(a1 + 144) = v300;
    *(a1 + 152) = v301;
    if (v263 > 0)
    {
      v302 = *(a1 + 504) + 1;
      *(a1 + 504) = v302;
      v303 = *(a1 + 496) + v301;
      *(a1 + 496) = v303;
      v304 = 1.0 / v302;
      v305 = vadd_f32(*(a1 + 488), v300);
      *(a1 + 488) = v305;
      *(a1 + 144) = vmul_n_f32(v305, v304);
      *(a1 + 152) = v303 * v304;
    }

    *(a1 + 1592) = 0;
    *(a1 + 1600) = 0;
    v306 = (a1 + 1592);
    v307 = *(a1 + 1472);
    *buf = v307;
    v308 = *(a1 + 1480);
    *v549 = v308;
    v309 = *(a1 + 1488);
    *&v559 = v309;
    sub_19B4200DC(a1 + 784, buf);
    sub_19B4200DC(a1 + 856, v549);
    sub_19B4200DC(a1 + 928, &v559);
    v310 = 0;
    v311 = *(a1 + 1568);
    v312 = 0.0;
    do
    {
      v313 = *v311;
      v311 += 10;
      v564.f32[v310] = v313;
      v312 = v312 + v313;
      ++v310;
    }

    while (v310 != 3);
    v314 = *(a1 + 848);
    v315 = 0.0;
    v316 = 0.0;
    if (v314 >= 2)
    {
      v317 = (v314 * *(a1 + 804)) - (*(a1 + 800) * *(a1 + 800));
      v316 = 0.0;
      if (v317 >= 0.0)
      {
        v316 = v317 / ((v314 - 1) * v314);
      }
    }

    v318 = sqrtf(v316);
    v562.f32[0] = v318;
    v319 = *(a1 + 920);
    if (v319 >= 2)
    {
      v320 = (v319 * *(a1 + 876)) - (*(a1 + 872) * *(a1 + 872));
      if (v320 >= 0.0)
      {
        v315 = v320 / ((v319 - 1) * v319);
      }
    }

    v321 = sqrtf(v315);
    v562.f32[1] = v321;
    v322 = *(a1 + 992);
    v323 = 0.0;
    if (v322 >= 2)
    {
      v324 = (v322 * *(a1 + 948)) - (*(a1 + 944) * *(a1 + 944));
      if (v324 >= 0.0)
      {
        v323 = v324 / ((v322 - 1) * v322);
      }
    }

    v563 = sqrtf(v323);
    v325 = (v318 + v321) + v563;
    if (v325 <= 1000.0)
    {
      if (*(a1 + 20) >= 3)
      {
        if (*(a1 + 24))
        {
          v326 = 0.08;
        }

        else
        {
          v326 = 0.04;
        }
      }

      else
      {
        v326 = 0.08;
      }

      v327 = 0;
      v328 = 0;
      v329 = (a1 + 1596);
      v330 = 0.0;
      do
      {
        v331 = (*(*a1 + 72))(a1);
        v332 = v564.f32[v327];
        if (v332 <= 0.02)
        {
          v333 = v331;
        }

        else
        {
          v333 = 0;
        }

        if (v333 == 1 && v562.f32[v327] > 10.0)
        {
          goto LABEL_542;
        }

        if (v332 > v330)
        {
          v330 = v564.f32[v327];
        }

        if (v332 <= v326 && v562.f32[v327] <= 1.0)
        {
          *(a1 + v327 * 4 + 1596) = 1;
          ++v328;
        }

        ++v327;
      }

      while (v327 != 3);
      if (v312 <= 0.125 && (v328 == 3 || (v334 = (*(*a1 + 72))(a1), v325 < 15.0) && v334 != 1 && v330 <= 0.08))
      {
        *v306 = xmmword_19B7BC2C0;
        *(a1 + 320) = -1;
        if (v312 <= 0.06)
        {
          *v306 = 5;
        }
      }

      else if (v325 <= 1.0 && v328 >= 1)
      {
        if (v312 <= 0.6)
        {
          *v306 = 3;
          if (v328 <= 1)
          {
            v335 = 0;
            v336 = -1;
            v337 = 9.0;
            do
            {
              if (!v329[v335] && v564.f32[v335] < v337)
              {
                v336 = v335;
                v337 = v564.f32[v335];
              }

              ++v335;
            }

            while (v335 != 3);
            v329[v336] = 1;
          }
        }

        else if (v328 >= 2)
        {
          *v306 = v328;
        }

        if (*v329)
        {
          *(a1 + 320) = 0;
        }

        else
        {
          if (*(a1 + 1600))
          {
            v338 = 1;
          }

          else
          {
            v338 = 2;
          }

          *(a1 + 320) = v338;
        }
      }

      v548 = 0.0;
      if (*(a1 + 57))
      {
        v344 = (*(*a1 + 72))(a1);
        v345 = *(a1 + 1592);
        v346 = *(a1 + 20);
        if (v345 >= v346)
        {
          v347 = v344;
        }

        else
        {
          v347 = 0;
        }

        if (v347 == 1)
        {
          v348 = *(a1 + 80) - *(a1 + 1488);
          v349 = fabsf(v348);
          v559 = &unk_1F0E33E90;
          v350 = vabs_f32(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*(a1 + 72)), *(a1 + 1472))));
          v560 = v350;
          v561 = v349;
          if (v345 <= v346 && (v351 = vaddv_f32(v350) + v349, 10.0 / v346 >= v351))
          {
            if (v351 <= 1.0)
            {
              goto LABEL_774;
            }

            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v446 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v447 = *(a1 + 1472);
              v448 = *(a1 + 1480);
              v449 = *(a1 + 1488);
              v450 = *(a1 + 1608);
              *buf = 134218752;
              *&buf[4] = v447;
              *&buf[12] = 2048;
              *&buf[14] = v448;
              *&buf[22] = 2048;
              *&buf[24] = v449;
              *&buf[32] = 1024;
              *&buf[34] = v450;
              _os_log_impl(&dword_19B41C000, v446, OS_LOG_TYPE_DEBUG, "estimates improved.(%.3f/%.3f/%.3f), numImprov=%d ", buf, 0x26u);
            }

            v451 = sub_19B420058();
            if (*(v451 + 160) > 1 || *(v451 + 164) > 1 || *(v451 + 168) > 1 || *(v451 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
              }

              v452 = *(a1 + 1472);
              v453 = *(a1 + 1480);
              v454 = *(a1 + 1488);
              v455 = *(a1 + 1608);
              *v549 = 134218752;
              *&v549[4] = v452;
              *&v549[12] = 2048;
              *&v549[14] = v453;
              *&v549[22] = 2048;
              *&v549[24] = v454;
              *&v549[32] = 1024;
              *&v549[34] = v455;
              LODWORD(v519) = 38;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "estimates improved.(%.3f/%.3f/%.3f), numImprov=%d ", COERCE_DOUBLE(v549), v519, v520, LODWORD(v521));
              v457 = v456;
              sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v456);
              if (v457 != buf)
              {
                free(v457);
              }
            }

            v458 = *(a1 + 1472);
            *buf = v458;
            v459 = *(a1 + 1480);
            *v549 = v459;
            v460 = *(a1 + 1488);
            v557 = v460;
            sub_19B6CDC2C(a1 + 1232, buf, v549, &v557);
            v461 = 0.0;
            v462 = &v564;
            for (jj = 399; jj != 402; ++jj)
            {
              v464 = v462->f32[0];
              v462 = (v462 + 4);
              v461 = v461 + (*(a1 + 4 * jj) * v464);
            }

            if (v461 < 0.03)
            {
              v465 = *(a1 + 1608) + 1;
              *(a1 + 1608) = v465;
              if (v465 >= 2)
              {
                if (qword_1EAFE2880 != -1)
                {
                  dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
                }

                v466 = qword_1EAFE2888;
                if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
                {
                  v467 = *(a1 + 184);
                  *buf = 67109120;
                  *&buf[4] = v467;
                  _os_log_impl(&dword_19B41C000, v466, OS_LOG_TYPE_DEBUG, "new estimates needed, fIsCoasting (%d)", buf, 8u);
                }

                v468 = sub_19B420058();
                if (*(v468 + 160) > 1 || *(v468 + 164) > 1 || *(v468 + 168) > 1 || *(v468 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2880 != -1)
                  {
                    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
                  }

                  v469 = *(a1 + 184);
                  *v549 = 67109120;
                  *&v549[4] = v469;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "new estimates needed, fIsCoasting (%d)", v549);
                  v471 = v470;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v470);
                  if (v471 != buf)
                  {
                    free(v471);
                  }
                }

                sub_19B6CDC88(a1, &v537, (a1 + 336), *(a1 + 1592));
                *(a1 + 1608) = 0;
                goto LABEL_774;
              }
            }
          }

          else
          {
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v352 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v353 = *(a1 + 1472);
              v354 = *(a1 + 1480);
              v355 = *(a1 + 1488);
              v356 = *(a1 + 1596);
              v357 = *(a1 + 1600);
              v358 = *(a1 + 1604);
              v359 = *(a1 + 1592);
              *buf = 134219776;
              *&buf[4] = v353;
              *&buf[12] = 2048;
              *&buf[14] = v354;
              *&buf[22] = 2048;
              *&buf[24] = v355;
              *&buf[32] = 2048;
              *&buf[34] = v312;
              *&buf[42] = 1024;
              *&buf[44] = v356;
              *&buf[48] = 1024;
              *&buf[50] = v357;
              *&buf[54] = 1024;
              *&buf[56] = v358;
              *&buf[60] = 1024;
              *&buf[62] = v359;
              _os_log_impl(&dword_19B41C000, v352, OS_LOG_TYPE_DEBUG, "calibrated, first estimates completed (%.3f/%.3f/%.3f/%.3f), conv(%d %d %d), level (%d)", buf, 0x42u);
            }

            v360 = sub_19B420058();
            if (*(v360 + 160) > 1 || *(v360 + 164) > 1 || *(v360 + 168) > 1 || *(v360 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
              }

              v361 = *(a1 + 1472);
              v362 = *(a1 + 1480);
              v363 = *(a1 + 1488);
              v364 = *(a1 + 1596);
              v365 = *(a1 + 1600);
              v366 = *(a1 + 1604);
              v367 = *(a1 + 1592);
              *v549 = 134219776;
              *&v549[4] = v361;
              *&v549[12] = 2048;
              *&v549[14] = v362;
              *&v549[22] = 2048;
              *&v549[24] = v363;
              *&v549[32] = 2048;
              *&v549[34] = v312;
              *&v549[42] = 1024;
              *&v549[44] = v364;
              *&v549[48] = 1024;
              *&v549[50] = v365;
              *&v549[54] = 1024;
              *&v549[56] = v366;
              *&v549[60] = 1024;
              *&v549[62] = v367;
              LODWORD(v519) = 66;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "calibrated, first estimates completed (%.3f/%.3f/%.3f/%.3f), conv(%d %d %d), level (%d)", COERCE_DOUBLE(v549), v519, v520, v521, LODWORD(v522), v524, LODWORD(v526), v527);
              v369 = v368;
              sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v368);
              if (v369 != buf)
              {
                free(v369);
              }
            }

            v370 = *(a1 + 1472);
            *buf = v370;
            v371 = *(a1 + 1480);
            *v549 = v371;
            v372 = *(a1 + 1488);
            v557 = v372;
            sub_19B4200DC(a1 + 1248, buf);
            sub_19B4200DC(a1 + 1320, v549);
            sub_19B4200DC(a1 + 1392, &v557);
            *v549 = *(a1 + 168);
            *&v549[8] = *(a1 + 176);
            if (!sub_19B6CFEA0(a1, v549, *(a1 + 1592), &v548))
            {
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
              }

              v416 = qword_1EAFE2888;
              if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
              {
                v417 = *(a1 + 184);
                *buf = 67109120;
                *&buf[4] = v417;
                _os_log_impl(&dword_19B41C000, v416, OS_LOG_TYPE_DEBUG, "new estimates denied, fIsCoasting (%d)", buf, 8u);
              }

              v418 = sub_19B420058();
              if (*(v418 + 160) > 1 || *(v418 + 164) > 1 || *(v418 + 168) > 1 || *(v418 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2880 != -1)
                {
                  dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
                }

                v419 = *(a1 + 184);
                v557 = 1.5047e-36;
                v558 = v419;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "new estimates denied, fIsCoasting (%d)", &v557);
                v421 = v420;
                sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v420);
                if (v421 != buf)
                {
                  free(v421);
                }
              }

              sub_19B6CDC88(a1, &v537, (a1 + 336), *(a1 + 1592));
              goto LABEL_774;
            }

            if ((*(a1 + 172) + *(a1 + 168) + *(a1 + 176)) <= 2 && (*(a1 + 16) * 180.0) < *(a1 + 236))
            {
              v373 = *(a1 + 1592);
              if (v373 >= 4 && v373 > *(a1 + 20))
              {
                sub_19B6CDC88(a1, &v537, (a1 + 336), v373);
                goto LABEL_774;
              }
            }

            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v422 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v423 = *(a1 + 184);
              *buf = 67109120;
              *&buf[4] = v423;
              _os_log_impl(&dword_19B41C000, v422, OS_LOG_TYPE_DEBUG, "taking new estimates, fIsCoasting (%d)", buf, 8u);
            }

            v424 = sub_19B420058();
            if (*(v424 + 160) > 1 || *(v424 + 164) > 1 || *(v424 + 168) > 1 || *(v424 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
              }

              v425 = *(a1 + 184);
              v557 = 1.5047e-36;
              v558 = v425;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "taking new estimates, fIsCoasting (%d)", &v557);
              v427 = v426;
              sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v426);
              if (v427 != buf)
              {
                free(v427);
              }
            }
          }
        }

        else
        {
          if (v345 <= v346)
          {
            goto LABEL_774;
          }

          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v389 = qword_1EAFE2888;
          v390 = v312;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
          {
            v391 = *(a1 + 1472);
            v392 = *(a1 + 1480);
            v393 = *(a1 + 1488);
            v394 = *(a1 + 1596);
            v395 = *(a1 + 1600);
            v396 = *(a1 + 1604);
            v397 = *(a1 + 1592);
            *buf = 134219776;
            *&buf[4] = v391;
            *&buf[12] = 2048;
            *&buf[14] = v392;
            *&buf[22] = 2048;
            *&buf[24] = v393;
            *&buf[32] = 2048;
            *&buf[34] = v390;
            *&buf[42] = 1024;
            *&buf[44] = v394;
            *&buf[48] = 1024;
            *&buf[50] = v395;
            *&buf[54] = 1024;
            *&buf[56] = v396;
            *&buf[60] = 1024;
            *&buf[62] = v397;
            _os_log_impl(&dword_19B41C000, v389, OS_LOG_TYPE_DEBUG, "first estimates completed (%.3f/%.3f/%.3f/%.3f), conv(%d %d %d), level (%d)", buf, 0x42u);
          }

          v398 = sub_19B420058();
          if (*(v398 + 160) > 1 || *(v398 + 164) > 1 || *(v398 + 168) > 1 || *(v398 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v399 = *(a1 + 1472);
            v400 = *(a1 + 1480);
            v401 = *(a1 + 1488);
            v402 = *(a1 + 1596);
            v403 = *(a1 + 1600);
            v404 = *(a1 + 1604);
            v405 = *(a1 + 1592);
            *v549 = 134219776;
            *&v549[4] = v399;
            *&v549[12] = 2048;
            *&v549[14] = v400;
            *&v549[22] = 2048;
            *&v549[24] = v401;
            *&v549[32] = 2048;
            *&v549[34] = v390;
            *&v549[42] = 1024;
            *&v549[44] = v402;
            *&v549[48] = 1024;
            *&v549[50] = v403;
            *&v549[54] = 1024;
            *&v549[56] = v404;
            *&v549[60] = 1024;
            *&v549[62] = v405;
            LODWORD(v519) = 66;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "first estimates completed (%.3f/%.3f/%.3f/%.3f), conv(%d %d %d), level (%d)", COERCE_DOUBLE(v549), v519, v520, v521, LODWORD(v522), v524, LODWORD(v526), v527);
            v407 = v406;
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v406);
            if (v407 != buf)
            {
              free(v407);
            }
          }

          sub_19B43FA98((a1 + 1248));
          sub_19B43FA98((a1 + 1320));
          sub_19B43FA98((a1 + 1392));
          v408 = *(a1 + 1472);
          *buf = v408;
          v409 = *(a1 + 1480);
          *v549 = v409;
          v410 = *(a1 + 1488);
          *&v559 = v410;
          sub_19B4200DC(a1 + 1248, buf);
          sub_19B4200DC(a1 + 1320, v549);
          sub_19B4200DC(a1 + 1392, &v559);
        }

        *(a1 + 244) = 1;
        goto LABEL_774;
      }

      if (*(a1 + 333) == 1 && *(a1 + 1592) >= *(a1 + 1464) || *(a1 + 24) == 1 && ((v374 = *(a1 + 1592), v374 >= *(a1 + 20)) || v328 >= 2 && v374 > 2) || *(a1 + 184) == 1 && (roundf(*(a1 + 16) * 20.0) < *(a1 + 232) ? (v375 = v328 < 2) : (v375 = 1), !v375 && *v306 >= 3))
      {
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v376 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          v377 = *(a1 + 1472);
          v378 = *(a1 + 1480);
          v379 = *(a1 + 1488);
          *buf = 134218496;
          *&buf[4] = v377;
          *&buf[12] = 2048;
          *&buf[14] = v378;
          *&buf[22] = 2048;
          *&buf[24] = v379;
          _os_log_impl(&dword_19B41C000, v376, OS_LOG_TYPE_DEBUG, "new internal estimates (%.3f %.3f %.3f)", buf, 0x20u);
        }

        v380 = sub_19B420058();
        if (*(v380 + 160) > 1 || *(v380 + 164) > 1 || *(v380 + 168) > 1 || *(v380 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v381 = *(a1 + 1472);
          v382 = *(a1 + 1480);
          v383 = *(a1 + 1488);
          *v549 = 134218496;
          *&v549[4] = v381;
          *&v549[12] = 2048;
          *&v549[14] = v382;
          *&v549[22] = 2048;
          *&v549[24] = v383;
          LODWORD(v519) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "new internal estimates (%.3f %.3f %.3f)", COERCE_DOUBLE(v549), v519, v520);
          v385 = v384;
          sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v384);
          if (v385 != buf)
          {
            free(v385);
          }
        }

        *(a1 + 57) = 1;
        if (*(a1 + 333) == 1)
        {
          v386 = *(a1 + 1472);
          *buf = v386;
          v387 = *(a1 + 1480);
          *v549 = v387;
          v388 = *(a1 + 1488);
          *&v559 = v388;
          sub_19B4200DC(a1 + 1248, buf);
          sub_19B4200DC(a1 + 1320, v549);
          sub_19B4200DC(a1 + 1392, &v559);
          if (*(a1 + 1312) < *(a1 + 1256))
          {
            sub_19B6CDC88(a1, &v537, (a1 + 336), *(a1 + 1464));
            goto LABEL_774;
          }

          if (sub_19B6CFEA0(a1, v329, *(a1 + 1464), &v548))
          {
            sub_19B6CFC1C(a1);
            v428 = *(a1 + 1472);
            v429 = *(a1 + 1480);
            v430 = *(a1 + 1488);
            sub_19B6D02A0(a1, v428, v429, v430);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v431 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v432 = *(a1 + 184);
              *buf = 67109120;
              *&buf[4] = v432;
              _os_log_impl(&dword_19B41C000, v431, OS_LOG_TYPE_DEBUG, "taking new estimates, Internal. fIsCoasting (%d)", buf, 8u);
            }

            v433 = sub_19B420058();
            if (*(v433 + 160) <= 1 && *(v433 + 164) <= 1 && *(v433 + 168) <= 1 && !*(v433 + 152))
            {
              goto LABEL_774;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v434 = *(a1 + 184);
            *v549 = 67109120;
            *&v549[4] = v434;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "taking new estimates, Internal. fIsCoasting (%d)", v549);
            v436 = v435;
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v435);
          }

          else
          {
            sub_19B6CDC88(a1, &v537, (a1 + 336), *(a1 + 1592));
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v477 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v478 = *(a1 + 184);
              *buf = 67109120;
              *&buf[4] = v478;
              _os_log_impl(&dword_19B41C000, v477, OS_LOG_TYPE_DEBUG, "new estimates denied, fIsCoasting (%d)", buf, 8u);
            }

            v479 = sub_19B420058();
            if (*(v479 + 160) <= 1 && *(v479 + 164) <= 1 && *(v479 + 168) <= 1 && !*(v479 + 152))
            {
              goto LABEL_774;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v480 = *(a1 + 184);
            *v549 = 67109120;
            *&v549[4] = v480;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "new estimates denied, fIsCoasting (%d)", v549);
            v436 = v481;
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v481);
          }
        }

        else
        {
          v411 = *(a1 + 1472);
          *buf = v411;
          v412 = *(a1 + 1480);
          *v549 = v412;
          v413 = *(a1 + 1488);
          *&v559 = v413;
          sub_19B4200DC(a1 + 1248, buf);
          sub_19B4200DC(a1 + 1320, v549);
          sub_19B4200DC(a1 + 1392, &v559);
          v414 = sub_19B6CFEA0(a1, v329, *(a1 + 1592), &v548);
          v415 = *(a1 + 1592);
          if (v414)
          {
            if (v415 == 3 && *(a1 + 20) >= 4)
            {
              sub_19B6CDC2C(a1 + 1232, (a1 + 72), (a1 + 76), (a1 + 80));
              goto LABEL_774;
            }

            sub_19B6CFC1C(a1);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v472 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v473 = *v306;
              *buf = 67109120;
              *&buf[4] = v473;
              _os_log_impl(&dword_19B41C000, v472, OS_LOG_TYPE_DEBUG, "taking new estimates, reached database. (%d)", buf, 8u);
            }

            v474 = sub_19B420058();
            if (*(v474 + 160) <= 1 && *(v474 + 164) <= 1 && *(v474 + 168) <= 1 && !*(v474 + 152))
            {
              goto LABEL_774;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v475 = *v306;
            *v549 = 67109120;
            *&v549[4] = v475;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "taking new estimates, reached database. (%d)", v549);
            v436 = v476;
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v476);
          }

          else
          {
            sub_19B6CDC88(a1, &v537, (a1 + 336), v415);
            v437 = v548;
            if (v548 > 25.0 && (*(a1 + 184) & 1) == 0)
            {
              *(a1 + 252) = 1;
            }

            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v438 = qword_1EAFE2888;
            v439 = v437;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v440 = *(a1 + 1592);
              v441 = *(a1 + 252);
              *buf = 67109632;
              *&buf[4] = v440;
              *&buf[8] = 1024;
              *&buf[10] = v441;
              *&buf[14] = 2048;
              *&buf[16] = v439;
              _os_log_impl(&dword_19B41C000, v438, OS_LOG_TYPE_DEBUG, "new esitmates disagree with database. (%d,%d,%.3f)", buf, 0x18u);
            }

            v442 = sub_19B420058();
            if (*(v442 + 160) <= 1 && *(v442 + 164) <= 1 && *(v442 + 168) <= 1 && !*(v442 + 152))
            {
              goto LABEL_774;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v443 = *(a1 + 1592);
            v444 = *(a1 + 252);
            *v549 = 67109632;
            *&v549[4] = v443;
            *&v549[8] = 1024;
            *&v549[10] = v444;
            *&v549[14] = 2048;
            *&v549[16] = v439;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "new esitmates disagree with database. (%d,%d,%.3f)", v549, 24, v520);
            v436 = v445;
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v445);
          }
        }

        if (v436 != buf)
        {
          free(v436);
        }
      }
    }

    else
    {
LABEL_542:
      sub_19B6CFC90(a1, &v537);
    }

LABEL_774:
    if (*(a1 + 244))
    {
      v482 = *(a1 + 20);
      v483 = *(a1 + 1592);
      if (v482 >= 2)
      {
        if (v482 != v483 || (v484 = *(a1 + 1472), v485 = vabdd_f64(*(a1 + 520), v484), LODWORD(v484) = *(a1 + 1596), v486 = *(a1 + 1480), v487 = vabdd_f64(*(a1 + 524), v486), LODWORD(v486) = *(a1 + 1600), v488 = v487 * *&v486 + v485 * *&v484, v489 = *(a1 + 1488), v490 = vabdd_f64(*(a1 + 528), v489), LODWORD(v489) = *(a1 + 1604), *&v488 = v488 + v490 * *&v489, v483 = *(a1 + 20), *&v488 > 2.5))
        {
          *(a1 + 25) = 1;
        }
      }

      v491 = vcvt_f32_f64(*(a1 + 1472));
      v492 = *(a1 + 1488);
      *(a1 + 72) = v491;
      *(a1 + 80) = v492;
      v493 = *(a1 + 1512);
      *(a1 + 96) = vcvt_f32_f64(**&v526);
      *(a1 + 104) = v493;
      v494 = *(a1 + 1536);
      *(a1 + 120) = vcvt_f32_f64(*(a1 + 1520));
      *(a1 + 128) = v494;
      *(a1 + 20) = v483;
      *(a1 + 168) = *(*&v526 + 100);
      *(a1 + 176) = *(a1 + 1604);
      if (*(a1 + 25) == 1)
      {
        *(a1 + 520) = v491;
        *(a1 + 528) = v492;
      }

      *(a1 + 24) = 0;
      *(a1 + 252) = 0;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v495 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v496 = *(a1 + 1472);
        v497 = *(a1 + 1480);
        v498 = *(a1 + 1488);
        v499 = *(a1 + 1496);
        v500 = *(a1 + 1504);
        v501 = *(a1 + 1512);
        v502 = *(a1 + 1520);
        v503 = *(a1 + 1528);
        v504 = *(a1 + 1536);
        *buf = 134220032;
        *&buf[4] = v496;
        *&buf[12] = 2048;
        *&buf[14] = v497;
        *&buf[22] = 2048;
        *&buf[24] = v498;
        *&buf[32] = 2048;
        *&buf[34] = v499;
        *&buf[42] = 2048;
        *&buf[44] = v500;
        *&buf[52] = 2048;
        *&buf[54] = v501;
        *&buf[62] = 2048;
        *&buf[64] = v502;
        *&buf[72] = 2048;
        *&buf[74] = v503;
        v567 = 2048;
        v568 = v504;
        _os_log_impl(&dword_19B41C000, v495, OS_LOG_TYPE_DEBUG, "bias.x,%.3f,bias.y,%.3f,bias.z,%.3f,scale.x,%.5f,scale.y,%.5f,scale.z,%.5f,extF.x,%.3f,extF.y,%.3f,extF.z,%.3f", buf, 0x5Cu);
      }

      v505 = sub_19B420058();
      if (*(v505 + 160) > 1 || *(v505 + 164) > 1 || *(v505 + 168) > 1 || *(v505 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v506 = *(a1 + 1472);
        v507 = *(a1 + 1480);
        v508 = *(a1 + 1488);
        v509 = *(a1 + 1496);
        v510 = *(a1 + 1504);
        v511 = *(a1 + 1512);
        v512 = *(a1 + 1520);
        v513 = *(a1 + 1528);
        v514 = *(a1 + 1536);
        *v549 = 134220032;
        *&v549[4] = v506;
        *&v549[12] = 2048;
        *&v549[14] = v507;
        *&v549[22] = 2048;
        *&v549[24] = v508;
        *&v549[32] = 2048;
        *&v549[34] = v509;
        *&v549[42] = 2048;
        *&v549[44] = v510;
        *&v549[52] = 2048;
        *&v549[54] = v511;
        *&v549[62] = 2048;
        *&v549[64] = v512;
        *&v549[72] = 2048;
        v550 = v513;
        v551 = 2048;
        v552 = v514;
        LODWORD(v519) = 92;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "bias.x,%.3f,bias.y,%.3f,bias.z,%.3f,scale.x,%.5f,scale.y,%.5f,scale.z,%.5f,extF.x,%.3f,extF.y,%.3f,extF.z,%.3f", COERCE_DOUBLE(v549), v519, v520, v521, v522, *&v524, v526, *&v527, v528);
        v516 = v515;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::setCalibrationValues()", "CoreLocation: %s\n", v515);
        if (v516 != buf)
        {
          free(v516);
        }
      }

      sub_19B6CD8B4(a1, 0);
      *(a1 + 244) = 0;
      *(a1 + 220) = 0;
    }

    *(a1 + 472) = 0;
    v517 = *(a3 + 1);
    *(a1 + 416) = *a3;
    *(a1 + 432) = v517;
    if (&v541 != v524)
    {
      *(a1 + 456) = v542;
      *(a1 + 464) = v543;
    }

    return;
  }

  HIDWORD(v233) = -858993459 * *(a1 + 324) + 429496728;
  LODWORD(v233) = HIDWORD(v233);
  if ((v233 >> 2) <= 0xCCCCCCC)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v234 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v234, OS_LOG_TYPE_DEBUG, "coasting vector is mature, no more updating", buf, 2u);
    }

    v235 = sub_19B420058();
    if (*(v235 + 160) > 1 || *(v235 + 164) > 1 || *(v235 + 168) > 1 || *(v235 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v549 = 0;
      LODWORD(v519) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "coasting vector is mature, no more updating", v549, *&v519);
      v23 = v236;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v236);
      goto LABEL_478;
    }
  }
}

float32_t sub_19B6D6034(float32x2_t *a1, float32x2_t *a2)
{
  if ((*(*a1 + 72))(a1))
  {
    v5 = (a1[13].f32[0] + 1.0) * a2[2].f32[0];
    a2[2].f32[0] = v5;
    result = v5 - a1[10].f32[0];
    __asm { FMOV            V2.2D, #1.0 }

    v11 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(a1[12]), _Q2), vcvtq_f64_f32(a2[1])));
    a2[1] = v11;
    a2[1] = vsub_f32(v11, a1[9]);
    a2[2].f32[0] = result;
  }

  return result;
}

float32_t sub_19B6D60E0(float32x2_t *a1, float *a2, float32x2_t *a3, double *a4)
{
  sub_19B6CD760(a1 + 42, a4);
  v7 = a1[48].f32[0];
  v8 = a1[47].f32[0];
  v9 = a1[47].f32[1];
  v10 = 16;
  if (a1[23].i8[0])
  {
    v10 = 26;
  }

  v11 = 15;
  if (a1[23].i8[0])
  {
    v11 = 25;
  }

  v12 = 31;
  if (a1[23].i8[0])
  {
    v12 = 51;
  }

  v13 = a1[v10].f32[0];
  v14 = a1[v11].f32[0];
  v15 = a1->f32[v12];
  v16 = ((v15 * a1[50].f32[1]) + (v14 * a1[50].f32[0])) + (v13 * a1[51].f32[0]);
  a2[2] = ((v15 * a1[44].f32[1]) + (v14 * a1[44].f32[0])) + (v13 * a1[45].f32[0]);
  a2[3] = ((v15 * v9) + (v14 * v8)) + (v13 * v7);
  a2[4] = v16;

  return sub_19B6D6034(a1, a3);
}

float32_t sub_19B6D61BC(float32x2_t *a1, float32x2_t *a2, double *a3)
{
  if (a1[23].i8[0] == 1)
  {
    sub_19B6CD760(a1 + 42, a3);
    v6 = a1[25].f32[1];
    v5 = a1[26].f32[0];
    v7 = a1[25].f32[0];
    v8 = ((v6 * a1[50].f32[1]) + (v7 * a1[50].f32[0])) + (v5 * a1[51].f32[0]);
    v9 = ((v6 * a1[47].f32[1]) + (v7 * a1[47].f32[0])) + (v5 * a1[48].f32[0]);
    result = ((v6 * a1[44].f32[1]) + (v7 * a1[44].f32[0])) + (v5 * a1[45].f32[0]);
    a2[1].f32[0] = result;
    a2[1].f32[1] = v9;
    a2[2].f32[0] = v8;
  }

  else
  {

    return sub_19B6D6034(a1, a2);
  }

  return result;
}

float sub_19B6D6274(uint64_t a1, double *a2)
{
  v2 = *a2;
  *(a1 + 8) = *a2;
  result = 1.0 / v2;
  *(a1 + 16) = result;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

float sub_19B6D62A4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a2 = *(a1 + 72);
  result = *(a1 + 80);
  *(a2 + 8) = result;
  *a3 = *(a1 + 20);
  return result;
}

uint64_t sub_19B6D6344()
{
  if (qword_1ED71D428 != -1)
  {
    dispatch_once(&qword_1ED71D428, &unk_1F0E29A80);
  }

  return qword_1ED71D420;
}

void sub_19B6D64A0(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 280);
    v4 = *(v1 + 96);
    if (v4 > 3)
    {
      v5 = @"?";
    }

    else
    {
      v5 = off_1E75345E8[v4];
    }

    *buf = 134349314;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v7 = *(v1 + 280);
    v8 = *(v1 + 96);
    if (v8 > 3)
    {
      v9 = @"?";
    }

    else
    {
      v9 = off_1E75345E8[v8];
    }

    v13 = 134349314;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", &v13, 22);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::enable(const T *) [T = CLAccessoryDeviceMotion::ETempestMode]", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B6DC004;
  v18 = &unk_1E75327D8;
  v19 = v1;
  sub_19B420C9C(v12, buf);
}

uint64_t sub_19B6D6728(uint64_t a1)
{
  v1 = a1 - 80;
  if (!a1)
  {
    v1 = 0;
  }

  if (*(v1 + 320) == 1)
  {
    v2 = *(v1 + 308);
    v3 = v2 > 5;
    v4 = 0x34u >> v2;
    if (v3)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

void sub_19B6D6764(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 280);
    v4 = *(v1 + 96);
    if (v4 > 3)
    {
      v5 = @"?";
    }

    else
    {
      v5 = off_1E75345E8[v4];
    }

    *buf = 134349314;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v7 = *(v1 + 280);
    v8 = *(v1 + 96);
    if (v8 > 3)
    {
      v9 = @"?";
    }

    else
    {
      v9 = off_1E75345E8[v8];
    }

    v13 = 134349314;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", &v13, 22);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::enable(const T *) [T = CLAccessoryDeviceMotion::EMotionAPIMode]", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B6DC030;
  v18 = &unk_1E75327D8;
  v19 = v1;
  sub_19B420C9C(v12, buf);
}

uint64_t sub_19B6D69EC(uint64_t a1)
{
  v1 = a1 - 80;
  if (!a1)
  {
    v1 = 0;
  }

  if (*(v1 + 320) == 1)
  {
    v2 = *(v1 + 308);
    v3 = v2 > 5;
    v4 = 0xBu >> v2;
    if (v3)
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_19B6D6A2C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 96);
    if (v3 > 3)
    {
      v4 = @"?";
    }

    else
    {
      v4 = off_1E75345E8[v3];
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = *(v1 + 96);
    if (v6 > 3)
    {
      v7 = @"?";
    }

    else
    {
      v7 = off_1E75345E8[v6];
    }

    v11 = 138543362;
    v12 = v7;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &v11, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::disable(const T *) [T = CLAccessoryDeviceMotion::EDisable]", "CoreLocation: %s\n", v8);
    if (v9 != &buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v14 = sub_19B6DC05C;
  v15 = &unk_1E75327D8;
  v16 = v1;
  sub_19B420C9C(v10, &buf);
}

void sub_19B6D6C94(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 96);
    if (v3 > 3)
    {
      v4 = @"?";
    }

    else
    {
      v4 = off_1E75345E8[v3];
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = *(v1 + 96);
    if (v6 > 3)
    {
      v7 = @"?";
    }

    else
    {
      v7 = off_1E75345E8[v6];
    }

    v11 = 138543362;
    v12 = v7;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &v11, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::disable(const T *) [T = CLAccessoryDeviceMotion::EMotionAPIMode]", "CoreLocation: %s\n", v8);
    if (v9 != &buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v14 = sub_19B6DC074;
  v15 = &unk_1E75327D8;
  v16 = v1;
  sub_19B420C9C(v10, &buf);
}

void sub_19B6D6EFC(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 280);
    v4 = *(v1 + 96);
    if (v4 > 3)
    {
      v5 = @"?";
    }

    else
    {
      v5 = off_1E75345E8[v4];
    }

    *buf = 134349314;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v7 = *(v1 + 280);
    v8 = *(v1 + 96);
    if (v8 > 3)
    {
      v9 = @"?";
    }

    else
    {
      v9 = off_1E75345E8[v8];
    }

    v13 = 134349314;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", &v13, 22);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::enable(const T *) [T = CLAccessoryDeviceMotion::EInEar]", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B6DC08C;
  v18 = &unk_1E75327D8;
  v19 = v1;
  sub_19B420C9C(v12, buf);
}

uint64_t sub_19B6D7184(uint64_t a1)
{
  v1 = a1 - 80;
  if (!a1)
  {
    v1 = 0;
  }

  if (*(v1 + 320) == 1)
  {
    v2 = *(v1 + 308);
    v3 = v2 > 5;
    v4 = 0xBu >> v2;
    if (v3)
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_19B6D71C0(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 96);
    if (v3 > 3)
    {
      v4 = @"?";
    }

    else
    {
      v4 = off_1E75345E8[v3];
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = *(v1 + 96);
    if (v6 > 3)
    {
      v7 = @"?";
    }

    else
    {
      v7 = off_1E75345E8[v6];
    }

    v11 = 138543362;
    v12 = v7;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &v11, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::disable(const T *) [T = CLAccessoryDeviceMotion::EOutOfEar]", "CoreLocation: %s\n", v8);
    if (v9 != &buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v14 = sub_19B6DC0B8;
  v15 = &unk_1E75327D8;
  v16 = v1;
  sub_19B420C9C(v10, &buf);
}

void sub_19B6D742C(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6D7464(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  sub_19B750AC4(a1);
  *(a1 + 308) = sub_19B74FC3C(a1);
  v3 = *(a1 + 296);
  if (v3 <= 0.00001)
  {
    v3 = *(a1 + 288);
    v4 = (a1 + 280);
    if (v3 <= 0.00001)
    {
      *v4 = 0.0;
      goto LABEL_10;
    }

    *v4 = v3;
  }

  else
  {
    *(a1 + 280) = v3;
  }

  v4 = (a1 + 280);
  if (v3 > 0.00001)
  {
    *(a1 + 29) = 0;
    *(a1 + 204) = 0;
    *(a1 + 160) = 0;
    *(a1 + 212) = 0;
    v5 = *(a1 + 32);
    if (*(a1 + 28) == 1)
    {
      (*(*v5 + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A660);
      v6 = *(a1 + 296);
      v7 = sub_19B7851B0();
      if (v6 > 0.00001)
      {
        sub_19B787D50(v7, a1, 1);
        v8 = 2;
        goto LABEL_23;
      }
    }

    else
    {
      v15 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v2, *(a1 + 316));
      (*(*v5 + 16))(v5, @"MaxFIFOEvents", v15);
      v7 = sub_19B7851B0();
    }

    sub_19B787D50(v7, a1, 0);
    v8 = 1;
LABEL_23:
    *(a1 + 272) = v8;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v16 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 28))
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      v18 = *(a1 + 272);
      *buf = 136446466;
      v45 = v17;
      v46 = 1026;
      v47 = v18;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Low latency mode: %{public}s. TimeSync type: %{public}d", buf, 0x12u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      if (*(a1 + 28))
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      v21 = *(a1 + 272);
      *v43 = 136446466;
      *&v43[4] = v20;
      *&v43[12] = 1026;
      *&v43[14] = v21;
      LODWORD(v42) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Low latency mode: %{public}s. TimeSync type: %{public}d", v43, v42, *v43, *&v43[8]);
LABEL_40:
      v22 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v14);
      if (v22 != buf)
      {
        free(v22);
      }

      goto LABEL_42;
    }

    goto LABEL_42;
  }

LABEL_10:
  v9 = *(a1 + 32);
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v2, *(a1 + 316));
  (*(*v9 + 16))(v9, @"MaxFIFOEvents", v10);
  v11 = sub_19B7851B0();
  sub_19B787E50(v11, a1);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v12 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Low latency mode and time sync reset", buf, 2u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    *v43 = 0;
    LODWORD(v42) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Low latency mode and time sync reset", v43, v42, *v43, *&v43[8]);
    goto LABEL_40;
  }

LABEL_42:
  if (*v4 >= 0.00001)
  {
    v27 = a1 + 80;
    if (*(a1 + 296) <= 0.00001)
    {
      sub_19B79A0E8(v27, 2, &v42 + 7);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v36 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *v4;
        *buf = 134349056;
        v45 = *&v37;
        _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Entering Motion API mode with rate: %{public}f", buf, 0xCu);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        v39 = *v4;
        *v43 = 134349056;
        *&v43[4] = v39;
        LODWORD(v42) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Entering Motion API mode with rate: %{public}f", v43, v42);
        v41 = v40;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v40);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      v32 = *(a1 + 280);
      v33 = *(a1 + 48);
      v34 = a1 + 328;
      v35 = 1;
    }

    else
    {
      sub_19B79A0E8(v27, 1, &v42 + 7);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v28 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Entering Tempest Mode", buf, 2u);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        *v43 = 0;
        LODWORD(v42) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Entering Tempest Mode", v43, v42);
        v31 = v30;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v32 = *(a1 + 280);
      v33 = *(a1 + 48);
      v34 = a1 + 328;
      v35 = 2;
    }

    sub_19B6D7E9C(v34, v33, v35, v32);
  }

  else
  {
    sub_19B79A0E8(a1 + 80, 3, &v42 + 7);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v23 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Disabling", buf, 2u);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      *v43 = 0;
      LODWORD(v42) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Disabling", v43, v42);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    sub_19B6D7D4C(a1 + 328);
  }
}