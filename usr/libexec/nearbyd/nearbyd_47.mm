void sub_1003ABEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a31 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003ABF38(void *a1)
{
  v1 = a1[68];
  if (v1)
  {
    v3 = a1[67];
    v4 = a1[64];
    v5 = *(*(v4 + (((v1 + v3 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v1 + v3 - 1) & 0x1F) << 7)) - *(*(v4 + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7));
    if (v5 > 5.0)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 134217984;
        *&v30[4] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo,Pose history spans %f s - pruning down past poses from history", v30, 0xCu);
        v1 = a1[68];
        v3 = a1[67];
        v4 = a1[64];
      }

      v7 = (v3 >> 2) & 0x3FFFFFFFFFFFFFF8;
      v8 = (v4 + v7);
      v9 = a1[65];
      if (v9 == v4)
      {
        v13 = 0;
        v25 = 0;
        v24 = (v4 + 8 * (v3 >> 5));
      }

      else
      {
        v10 = *(*(v4 + (((v3 + v1 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v3 + v1 - 1) & 0x1F) << 7));
        v11 = v3 & 0x1F;
        v12 = ((v3 + v1) >> 2) & 0x3FFFFFFFFFFFFFF8;
        v13 = *v8 + (v11 << 7);
        v14 = (v3 + v1) & 0x1F;
        v15 = *(v4 + v12) + (v14 << 7);
        *v30 = v4 + v7;
        *&v30[8] = v13;
        if (v15 != v13)
        {
          v16 = v14 | (4 * (v12 - v7));
          v17 = v16 - v11;
          if (v16 != v11)
          {
            v18 = v10 + -2.0;
            do
            {
              v19 = v17 >> 1;
              v20 = sub_1003B0628(v30, v17 >> 1);
              if (v18 >= *v21)
              {
                v22 = v21 + 16;
                if ((v21 - *v20 + 128) == 4096)
                {
                  v23 = v20[1];
                  ++v20;
                  v22 = v23;
                }

                *v30 = v20;
                *&v30[8] = v22;
                v19 = v17 + ~v19;
              }

              v17 = v19;
            }

            while (v19);
            v8 = *v30;
            v13 = *&v30[8];
            v4 = a1[64];
            v3 = a1[67];
            v9 = a1[65];
          }
        }

        v24 = (v4 + 8 * (v3 >> 5));
        if (v9 == v4)
        {
          v25 = 0;
        }

        else
        {
          v25 = *v24 + ((v3 & 0x1F) << 7);
        }
      }

      sub_1003AF1E0(a1 + 63, v24, v25, v8, v13);
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[64];
        v28 = *(*(v27 + ((a1[67] >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((a1[67] & 0x1FLL) << 7));
        v29 = *(*(v27 + (((a1[67] + a1[68] - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((a1[67] + a1[68] - 1) & 0x1F) << 7));
        *v30 = 134218240;
        *&v30[4] = v28;
        *&v30[12] = 2048;
        *&v30[14] = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#sa_algo,Pose history now between %f s and %f s", v30, 0x16u);
      }
    }
  }
}

void sub_1003AC208(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 181) == 1)
  {
    v4 = *(a2 + 180);
    if (v4 <= 2)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 67109120;
        LODWORD(v42) = v4;
        v6 = "#sa_algo,mmsValStatus %d does not pass check, rejecting range result event";
        v7 = v5;
        v8 = 8;
LABEL_5:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v41, v8);
        return;
      }

      return;
    }
  }

  v9 = *(a2 + 36);
  v10 = qword_1009F9820;
  v11 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v9 == 1)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(a2 + 1);
    v13 = *(a2 + 4);
    v14 = *(a2 + 6);
    v15 = *(a2 + 7);
    v41 = 134218752;
    v42 = v12;
    v43 = 2048;
    v44 = v13;
    v45 = 2048;
    v46 = v14;
    v47 = 2048;
    v48 = v15;
    v16 = "#sa_algo,Received range result at %f s, distance: %0.2f m, az: %3.2f rad, el: %3.2f rad";
    v17 = v10;
    v18 = 42;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    v19 = *(a2 + 1);
    v20 = *(a2 + 4);
    v41 = 134218240;
    v42 = v19;
    v43 = 2048;
    v44 = v20;
    v16 = "#sa_algo,Received range result at %f s, distance: %0.2f m";
    v17 = v10;
    v18 = 22;
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v41, v18);
LABEL_12:
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 8) = *a2;
    *(a1 + 16) = 1;
  }

  if (*(a1 + 6) == 1)
  {
    v21 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#sa_algo,Target is moving - passing range measurement to range filter without VIO", &v41, 2u);
    }

    sub_1003AAC3C(a1, a2);
    goto LABEL_29;
  }

  if (*(a1 + 552) != 2)
  {
    v23 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      v24 = "#sa_algo,VIO Tracking is not normal - passing range measurement to range filter without VIO";
      goto LABEL_27;
    }

LABEL_28:
    sub_1003AAC3C(a1, a2);
    sub_1003AC660(a1, a2, 0);
LABEL_29:
    v25 = *(a2 + 1);
    if (*(a1 + 32) != 1 || *(a1 + 24) < v25)
    {
      *(a1 + 24) = v25;
      *(a1 + 32) = 1;
    }

    return;
  }

  if (!*(a1 + 544))
  {
    v23 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      v24 = "#sa_algo,Pose history is empty - passing range measurement to range filter without VIO";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v22 = *(a2 + 1);
  if (v22 < *(*(*(a1 + 512) + ((*(a1 + 536) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 536) & 0x1FLL) << 7)))
  {
    v23 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      v24 = "#sa_algo,Measurement earlier than the first pose in history - passing range measurement to range filter without VIO";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, &v41, 2u);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (*(a1 + 416) != 1)
  {
LABEL_39:
    v29 = *a2;
    v30 = a2[2];
    *(a1 + 200) = a2[1];
    *(a1 + 216) = v30;
    *(a1 + 184) = v29;
    v31 = a2[3];
    v32 = a2[4];
    v33 = a2[6];
    *(a1 + 264) = a2[5];
    *(a1 + 280) = v33;
    *(a1 + 232) = v31;
    *(a1 + 248) = v32;
    v34 = a2[7];
    v35 = a2[8];
    v36 = a2[10];
    *(a1 + 328) = a2[9];
    *(a1 + 344) = v36;
    *(a1 + 296) = v34;
    *(a1 + 312) = v35;
    v37 = a2[11];
    v38 = a2[12];
    v39 = a2[13];
    *(a1 + 408) = *(a2 + 28);
    *(a1 + 376) = v38;
    *(a1 + 392) = v39;
    *(a1 + 360) = v37;
    *(a1 + 416) = 1;
    sub_1003AC660(a1, a2, 1);
    sub_1003AAFE4(a1, v40);
    sub_1003AB6B0(a1);
    goto LABEL_29;
  }

  v26 = *(a1 + 192);
  v27 = qword_1009F9820;
  v28 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v22 > v26)
  {
    if (v28)
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#sa_algo,Received a new measurement before the cached one can be interpolated - passing the cached measurement to the range filter without VIO", &v41, 2u);
      if ((*(a1 + 416) & 1) == 0)
      {
        sub_1000195BC();
      }
    }

    sub_1003AAC3C(a1, a1 + 184);
    if (*(a1 + 416))
    {
      *(a1 + 416) = 0;
    }

    goto LABEL_39;
  }

  if (v28)
  {
    LOWORD(v41) = 0;
    v6 = "#sa_algo,Measurement earlier than the cached measurement - rejecting range measurement";
    v7 = v27;
    v8 = 2;
    goto LABEL_5;
  }
}

void sub_1003AC660(uint64_t result, float32x2_t *a2, int a3)
{
  if (*(result + 3) == 1)
  {
    if (a2[4].i8[4])
    {
      v3 = a2[2].f32[0];
      *(result + 424) = a2[1];
      *(result + 432) = v3;
      *(result + 440) = vcvtq_f64_f32(a2[3]);
      *(result + 456) = a3;
      *(result + 464) = 0;
      *(result + 488) = 0;
      *(result + 496) = 1;

      sub_1003ADA30(result);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C8250();
    }
  }
}

uint64_t sub_1003AC708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*a1 != 1)
  {
    goto LABEL_32;
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    *a2 = 0;
    goto LABEL_32;
  }

  v4 = *(a1 + 85);
  *buf = *(a1 + 80);
  *&buf[5] = v4;
  *&buf[16] = 0;
  *&v129 = 0;
  v128 = 0.0;
  v5 = sub_1003AF7C0(&buf[16], *(a1 + 96), *(a1 + 104), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 104) - *(a1 + 96)) >> 3));
  *(&v129 + 1) = *(a1 + 120);
  if (*buf <= 3)
  {
    if (*buf >= 2u)
    {
      if (*buf == 2)
      {
        v49 = *(a1 + 5);
        *a2 = 0;
        *(a2 + 4) = 0;
        *(a2 + 5) = v49;
        *(a2 + 6) = 0;
        goto LABEL_29;
      }

      if (*buf == 3)
      {
        *a2 = 0;
        v6 = 256;
LABEL_28:
        *(a2 + 4) = v6;
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_27:
    *a2 = 0;
    v6 = 1;
    goto LABEL_28;
  }

  switch(*buf)
  {
    case 4:
      *a2 = 0;
      break;
    case 6:
      goto LABEL_27;
    case 5:
      *v96 = **&buf[16];
      *&v96[16] = *(*&buf[16] + 16);
      v110 = 0;
      *&v111 = 0;
      DWORD2(v111) = 0;
      v7 = *(a1 + 544) + *(a1 + 536) - 1;
      sub_1003AD82C(v96, (*(*(a1 + 512) + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7)), &v110);
      v8 = qword_1009F9820;
      v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        if ((*(a1 + 32) & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_1004C828C(a1, &v110, v126, v8);
      }

      if (*(a1 + 16) != 1 || (*(a1 + 32) & 1) == 0)
      {
        sub_1000195BC();
      }

      v9 = *(a1 + 8);
      v10 = *&v111;
      *(a2 + 24) = v110;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 121) = 0u;
      *(a2 + 168) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 216) = 0u;
      v11 = *(a1 + 24);
      *(a2 + 8) = v9;
      *(a2 + 16) = v11;
      *(a2 + 28) = 1;
      *(a2 + 56) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 60) = 0;
      *(a2 + 64) = 0;
      *(a2 + 68) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 160) = 0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
      if ((*(a2 + 272) & 1) == 0)
      {
        *(a2 + 272) = 1;
      }

      *(a2 + 264) = v10;
      if (BYTE8(v111) == 1)
      {
        *(a2 + 248) = *(&v110 + 1) * 180.0 / 3.14159265;
        *(a2 + 256) = 1;
        *(a2 + 412) = 2;
        *(a2 + 416) = 1;
        v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
        if (v5)
        {
          sub_1004C82F0();
        }
      }

      if ((*(a1 + 128) & 1) == 0)
      {
        sub_1000195BC();
      }

      v12 = *(a1 + 88);
      if (v12 == 2)
      {
        *a2 = 1;
        v52 = *(&v111 + 1);
        if ((*(a2 + 296) & 1) == 0)
        {
          *(a2 + 296) = 1;
        }

        *(a2 + 288) = v52;
        v53 = qword_1009F9820;
        v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
        if (v5)
        {
          v73 = *&v96[16];
          *v115 = 134218496;
          v83 = *v96;
          v116 = *v96;
          *v117 = 2048;
          *(v115 | 0xE) = *&v96[8];
          v118 = 2048;
          v119 = v73;
          _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "#sa_algo,Populating world position output with SA, object position is [%4.2f, %4.2f, %4.2f] m", v115, 0x20u);
          v54 = v83;
          v55 = v73;
        }

        else
        {
          v54 = *v96;
          v55 = *&v96[16];
        }

        *&v54.f64[0] = vcvt_f32_f64(v54);
        v56 = v55;
        *&v54.f64[1] = v56;
        if ((*(a2 + 352) & 1) == 0)
        {
          *(a2 + 352) = 1;
        }

        *(a2 + 336) = v54;
        if (v52 >= 2.5)
        {
          v57 = 2;
        }

        else if (v52 <= -2.5)
        {
          v57 = 3;
        }

        else
        {
          v57 = 1;
        }

        *(a2 + 280) = v57;
        break;
      }

      if (v12 == 1)
      {
        if (fabsf(*(&v111 + 1)) < 2.5)
        {
          v51 = 1;
        }

        else
        {
          v51 = 4;
        }

        *(a2 + 280) = v51;
        *a2 = 0;
      }

      else
      {
        if (v12)
        {
          break;
        }

        *a2 = 0;
        *(a2 + 280) = 0;
      }

      *(a2 + 6) = 1;
      break;
  }

LABEL_29:
  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1000195BC();
  }

  sub_1003AD8FC(*(a1 + 24), v5, (a2 + 280));
  if (*&buf[16])
  {
    v128 = *&buf[16];
    operator delete(*&buf[16]);
  }

LABEL_32:
  if (*(a1 + 3) != 1 || *(a1 + 496) != 1)
  {
    goto LABEL_101;
  }

  v13 = *(a1 + 424);
  v14 = *(a1 + 456);
  if (v14 >= 2)
  {
    if (v14 != 2)
    {
      goto LABEL_101;
    }

    if ((*(a1 + 32) & 1) == 0)
    {
      sub_1000195BC();
    }

    v27 = *(a1 + 24);
    if (v27 - v13 >= 10.0)
    {
      v46 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v13;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#sa_algo,Not populating direction or range output from AoA meas with VIO, measurement time %f s is too stale compared to current time %f s", buf, 0x16u);
        v46 = qword_1009F9820;
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }

      if ((*(a1 + 32) & 1) == 0)
      {
        sub_1000195BC();
      }

      v50 = *(a1 + 24);
      *buf = 134218240;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      v48 = "#sa_algo,Removing AoA measurement from cache, measurement time %f s is too stale compared to current time %f s and measurement is not usable anymore";
      goto LABEL_67;
    }

    v74 = *(a1 + 464);
    v28 = *(a1 + 480);
    v29 = *(a1 + 488);
    v30 = *(a1 + 544) + *(a1 + 536) - 1;
    v31 = *(*(a1 + 512) + ((v30 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v30 & 0x1F) << 7);
    v78 = *(v31 + 64);
    *&v32 = sub_1003ADBF0(*(v31 + 16), *(v31 + 32), *(v31 + 48));
    v81 = v32;
    v102 = 0x100000003;
    v101 = xmmword_10056EDA0;
    v100 = off_1009A8F78;
    v103 = &v104;
    sub_1003A8C00(&v100, 3, 1);
    sub_1003A8C50(&v100, 0.0);
    v97 = 0x100000004;
    *&v96[8] = xmmword_10056ED80;
    *v96 = off_1009A8EE8;
    v98 = &v99;
    sub_1003A8C00(v96, 4, 1);
    sub_1003A8C50(v96, 0.0);
    for (i = 0; i != 3; ++i)
    {
      v34 = sub_1003AFDBC(&v100, i);
      v85 = v78;
      *v34 = *(&v85 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
      v35 = sub_1003AFDBC(v96, i);
      v84 = v81;
      *v35 = *(&v84 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
    }

    *sub_1003AFDBC(v96, 3) = *(&v81 + 3);
    sub_10041511C(v96, v115);
    if ((v29 & 1) == 0)
    {
      sub_1000195BC();
    }

    v93 = 0x100000003;
    v91 = off_1009A8F78;
    v92 = xmmword_10056EDA0;
    v94 = &v95;
    sub_1003A8C00(&v91, 3, 1);
    sub_1003A8C50(&v91, 0.0);
    *sub_1003AFDBC(&v91, 0) = v74.f64[0];
    *sub_1003AFDBC(&v91, 1) = v74.f64[1];
    *sub_1003AFDBC(&v91, 2) = v28;
    sub_1003AFDF8(buf, *v117, HIDWORD(v116));
    sub_1003A9464(v115, buf);
    v112 = 0x100000003;
    v111 = xmmword_10056EDA0;
    v110 = off_1009A8F78;
    v113 = v114;
    sub_1003A920C(&v91, &v100, &v110);
    v88 = 0x100000003;
    v86 = off_1009A8F78;
    v87 = xmmword_10056EDA0;
    v89 = &v90;
    sub_1003A90A8(buf, &v110, &v86);
    v112 = 0x100000003;
    v111 = xmmword_10056EDA0;
    v110 = off_1009A8F78;
    v113 = v114;
    *&v128 = 0x100000134;
    *&buf[8] = xmmword_10056EEA0;
    *buf = off_1009A9168;
    *&v129 = &v129 + 8;
    v107 = 0x100000003;
    v106 = xmmword_10056EDA0;
    v105 = off_1009A8F78;
    v108 = &v109;
    sub_1003AFEC0(&v86, &v110, buf, &v105, "2");
    v37 = v36;
    if (v36 <= 0.001)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C8364();
      }
    }

    else
    {
      v38 = sub_1002EB67C(&v86, 0);
      v39 = sub_1002EB67C(&v86, 1);
      v40 = sub_1002EB67C(&v86, 2);
      *&v41 = v38 / v37;
      v42 = v39 / v37;
      v43 = v40 / v37;
      v76 = v42;
      v79 = *&v41;
      v44 = v41;
      *(&v44 + 1) = v42;
      v82 = v43;
      *(&v44 + 2) = v43;
      if (*(a2 + 320) == 1)
      {
        *(a2 + 304) = v44;
        v45 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_90;
        }
      }

      else
      {
        *(a2 + 320) = 1;
        *(a2 + 304) = v44;
        v45 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_90;
        }
      }

      *buf = 134218752;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v79;
      *&buf[22] = 2048;
      v128 = v76;
      LOWORD(v129) = 2048;
      *(&v129 + 2) = v82;
      _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "#sa_algo,Populating direction output from AoA meas with VIO, timestamp: %f s, direction [%4.3f, %4.3f, %4.3f]", buf, 0x2Au);
    }

LABEL_90:
    if ((*(a2 + 240) & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C83D8();
      }

      if (*(a1 + 16) != 1 || (*(a1 + 32) & 1) == 0)
      {
        sub_1000195BC();
      }

      v58 = *(a1 + 24);
      v59 = v37;
      *(a2 + 8) = *(a1 + 8);
      *(a2 + 16) = v58;
      *(a2 + 24) = v59;
      *(a2 + 28) = 1;
      *(a2 + 56) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 60) = 0;
      *(a2 + 64) = 0;
      *(a2 + 68) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 121) = 0u;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 216) = 0u;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
    }

    if (*(a2 + 352))
    {
      goto LABEL_101;
    }

    v60 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = v74.f64[0];
      *&buf[12] = 2048;
      *&buf[14] = v74.f64[1];
      *&buf[22] = 2048;
      v128 = v28;
      _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "#sa_algo,Populating world position output from AoA meas with VIO, object position is [%4.2f, %4.2f, %4.2f] m", buf, 0x20u);
      *&v62 = v74.f64[0];
      v71 = v74.f64[1];
      *&v72 = v28;
      *(&v62 + 1) = v71;
      *(&v62 + 1) = __PAIR64__(HIDWORD(v74.f64[1]), v72);
      if (*(a2 + 352))
      {
        goto LABEL_100;
      }
    }

    else
    {
      *&v62 = vcvt_f32_f64(v74);
      *&v61 = v28;
      *(&v62 + 1) = __PAIR64__(HIDWORD(v74.f64[1]), v61);
    }

    *(a2 + 352) = 1;
LABEL_100:
    *(a2 + 336) = v62;
    goto LABEL_101;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (*(a1 + 24) - v13 < *(a1 + 600))
  {
    v15 = *(a1 + 432);
    v16 = *(a1 + 440);
    v17 = *(a1 + 448);
    sub_100415018(buf, 1.0, v16, v17);
    v18 = sub_1002EB67C(buf, 0);
    v19 = sub_1002EB67C(buf, 1);
    v20 = sub_1002EB67C(buf, 2);
    *&v21 = v18;
    v22 = v19;
    v23 = v20;
    v75 = v22;
    v77 = *&v21;
    v24 = v21;
    *(&v24 + 1) = v22;
    v80 = v23;
    *(&v24 + 2) = v23;
    if (*(a2 + 320) == 1)
    {
      *(a2 + 304) = v24;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_39;
      }
    }

    else
    {
      *(a2 + 320) = 1;
      *(a2 + 304) = v24;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_39;
      }
    }

    *v115 = 134219264;
    v116 = v16 * 180.0 / 3.14159265;
    *v117 = 2048;
    *&v117[2] = v17 * 180.0 / 3.14159265;
    v118 = 2048;
    v119 = v13;
    v120 = 2048;
    v121 = v77;
    v122 = 2048;
    v123 = v75;
    v124 = 2048;
    v125 = v80;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "#sa_algo,Populating direction output from AoA meas without VIO, az %f deg, el %f deg, timestamp: %f s, direction [%4.3f, %4.3f, %4.3f]", v115, 0x3Eu);
LABEL_39:
    if ((*(a2 + 240) & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C84C0();
      }

      if ((*(a1 + 16) & 1) == 0)
      {
        sub_1000195BC();
      }

      v26 = v15;
      *(a2 + 8) = *(a1 + 8);
      *(a2 + 16) = v13;
      *(a2 + 24) = v26;
      *(a2 + 28) = 1;
      *(a2 + 56) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 60) = 0;
      *(a2 + 64) = 0;
      *(a2 + 68) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 121) = 0u;
      *(a2 + 160) = 0;
      *(a2 + 232) = 0;
      *(a2 + 216) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 168) = 0u;
      *(a2 + 240) = 1;
    }

    goto LABEL_101;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C844C();
  }

  if (!v14)
  {
    v46 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
LABEL_68:
      if (*(a1 + 496) == 1)
      {
        *(a1 + 496) = 0;
      }

      sub_1003ADA30(a1);
      goto LABEL_101;
    }

    if ((*(a1 + 32) & 1) == 0)
    {
      sub_1000195BC();
    }

    v47 = *(a1 + 24);
    *buf = 134218240;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = v47;
    v48 = "#sa_algo,Removing AoA measurement from cache, measurement time %f s is too stale compared to current time %f s and measurement can't be interpolated anymore.";
LABEL_67:
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);
    goto LABEL_68;
  }

LABEL_101:
  v63 = *(a2 + 240);
  if (*(a1 + 1) != 1 || (*(a2 + 240) & 1) != 0)
  {
LABEL_113:
    if ((v63 & 1) == 0)
    {
      return sub_1003ADDB0(a1, a2);
    }

    goto LABEL_114;
  }

  if (*(a1 + 176) != 1)
  {
LABEL_112:
    v63 = 0;
    goto LABEL_113;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1000195BC();
  }

  v64 = *(a1 + 168);
  v65 = *(a1 + 24);
  if (v65 - v64 >= *(a1 + 600))
  {
    v69 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v64;
      *&buf[12] = 2048;
      *&buf[14] = v65;
      _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "#sa_algo,Not populating range output with range filter, filter time %f s is too stale compared to current time %f s", buf, 0x16u);
      if ((*(a2 + 240) & 1) == 0)
      {
        return sub_1003ADDB0(a1, a2);
      }

      goto LABEL_114;
    }

    goto LABEL_112;
  }

  v66 = *(a1 + 152);
  *(a2 + 412) = 3;
  *(a2 + 416) = 1;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C8534();
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    sub_1000195BC();
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1000195BC();
  }

  v67 = *(a1 + 24);
  v68 = v66;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v67;
  *(a2 + 24) = v68;
  *(a2 + 28) = 1;
  *(a2 + 56) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 121) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
LABEL_114:
  if (!*a2 && *(a1 + 552) != 2 && *(a1 + 568) == 1 && *(a1 + 560) < 500.0)
  {
    *(a2 + 7) = 1;
  }

  return sub_1003ADDB0(a1, a2);
}

void sub_1003AD7BC(_Unwind_Exception *a1)
{
  v2 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1003AD82C(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  *v7.f32 = vcvt_f32_f64(*a1);
  v4 = *a1[1].i64;
  v7.f32[2] = v4;
  v5 = vsubq_f32(v7, a2[4]);
  v6 = vmulq_f32(v5, v5);
  v7.f32[0] = sqrtf(v6.f32[2] + v6.f32[0]);
  *(a3 + 16) = 0;
  *a3 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  *(a3 + 4) = 0;
  *(a3 + 12) = v5.i32[1];
  *(a3 + 8) = v7.i32[0];
  *(a3 + 16) = 1;
  if (v7.f32[0] <= 0.01)
  {
    *(a3 + 16) = 0;
  }

  else
  {
    v8.i32[0] = vextq_s8(v5, v5, 8uLL).u32[0];
    v8.i32[1] = v5.i32[0];
    v12 = vdiv_f32(v8, vdup_lane_s32(*v7.f32, 0));
    v9 = sub_1003AF418(a2);
    v11 = vmla_lane_f32(vmul_n_f32(v9, v12.f32[0]), v10, v12, 1);
    *(a3 + 4) = atan2f(v11.f32[1], v11.f32[0]);
  }
}

void sub_1003AD8FC(double a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C8704();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C8778();
    }
  }

  else if (v3 == 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C8690();
    }
  }

  else if (v3 == 3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C861C();
    }
  }

  else if (v3 == 4 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C85A8();
  }
}

void sub_1003ADA30(uint64_t a1)
{
  if (*(a1 + 496))
  {
    v1 = *(a1 + 456);
    v3 = *(a1 + 464);
    v2 = *(a1 + 472);
    v4 = *(a1 + 480);
    v5 = *(a1 + 488);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C8828();
    }

    if (v1 == 2)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C88C0();
      }
    }

    else if (v1 == 1)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C88FC();
      }
    }

    else if (!v1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C8938();
    }

    v6 = qword_1009F9820;
    v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        v8 = 134218496;
        v9 = v3;
        v10 = 2048;
        v11 = v2;
        v12 = 2048;
        v13 = v4;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#sa_algo,AoA cache: world position [%3.2f, %3.2f, %3.2f] m", &v8, 0x20u);
      }
    }

    else if (v7)
    {
      sub_1004C8974();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C87EC();
  }
}

double sub_1003ADBF0(int8x16_t a1, int8x16_t a2, __n128 a3)
{
  v3 = a3.n128_f32[2] + (*a1.i32 + *&a2.i32[1]);
  if (v3 >= 0.0)
  {
    v10 = sqrtf(v3 + 1.0);
    v11 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
    v12 = vmul_f32(v11, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v11));
    v22 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), a3.n128_u64[0]), vext_s8(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL), 4uLL)), vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12)).f32[0]);
  }

  else if (*a1.i32 < *&a2.i32[1] || *a1.i32 < a3.n128_f32[2])
  {
    v5 = 1.0 - *a1.i32;
    if (*&a2.i32[1] >= a3.n128_f32[2])
    {
      v23 = sqrtf(*&a2.i32[1] + (v5 - a3.n128_f32[2]));
      *&v24 = v23 + v23;
      v25 = vrecpe_f32(v24);
      v26 = vmul_f32(v25, vrecps_f32(v24, v25));
      v27.i32[0] = vmul_f32(v26, vrecps_f32(v24, v26)).u32[0];
      v26.f32[0] = *&a1.i32[1] + *a2.i32;
      v26.i32[1] = v24;
      v27.i32[1] = 0.25;
      v22 = vmul_f32(v26, v27);
    }

    else
    {
      v6 = sqrtf(a3.n128_f32[2] + (v5 - *&a2.i32[1]));
      v7 = vrecpe_f32(COERCE_UNSIGNED_INT(v6 + v6));
      v8 = vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v7));
      v22 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)), a3.n128_u64[0]), vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v8)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v13 = sqrtf(*a1.i32 + ((1.0 - *&a2.i32[1]) - a3.n128_f32[2]));
    v14.f32[0] = v13 + v13;
    v15 = vrecpe_f32(v14.u32[0]);
    v16 = vmul_f32(v15, vrecps_f32(v14.u32[0], v15));
    v17 = vmul_f32(v16, vrecps_f32(v14.u32[0], v16)).u32[0];
    v14.f32[1] = *&a1.i32[1] + *a2.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v17;
    v22 = vmul_f32(v14, _D5);
  }

  return *&v22;
}

uint64_t sub_1003ADDB0(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != 1)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 24);
  if (*(result + 64) == 1 && v4 - *(result + 56) < 0.2)
  {
    return result;
  }

  *(result + 56) = v4;
  *(result + 64) = 1;
  sub_10026B0D4(&v97);
  sub_10026B0D4(&v93);
  sub_10026B0D4(&v89);
  sub_10026B0D4(&v85);
  sub_10026B0D4(&v81);
  sub_10026B0D4(&v77);
  sub_10026B0D4(&v73);
  sub_10026B0D4(&v69);
  v5 = v93;
  *(&v93 + *(v93 - 3) + 8) = *(&v93 + *(v93 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v95[0].__locale_ + *(v5 - 3)) = 2;
  v6 = v89;
  *(&v89 + *(v89 - 3) + 8) = *(&v89 + *(v89 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v91[0].__locale_ + *(v6 - 3)) = 1;
  v7 = v85;
  *(&v85 + *(v85 - 3) + 8) = *(&v85 + *(v85 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v87[0].__locale_ + *(v7 - 3)) = 2;
  v8 = v77;
  *(&v77 + *(v77 - 3) + 8) = *(&v77 + *(v77 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v79[0].__locale_ + *(v8 - 3)) = 2;
  v9 = v73;
  *(&v73 + *(v73 - 3) + 8) = *(&v73 + *(v73 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v75[0].__locale_ + *(v9 - 3)) = 2;
  v10 = v69;
  *(&v69 + *(v69 - 3) + 8) = *(&v69 + *(v69 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v71[0].__locale_ + *(v10 - 3)) = 2;
  if (*(a2 + 240) == 1)
  {
    std::ostream::operator<<();
    if (*(a2 + 240) != 1)
    {
      goto LABEL_102;
    }

    v11 = std::ostream::operator<<();
    v12 = " m";
    v13 = 2;
  }

  else
  {
    v12 = "-";
    v13 = 1;
    sub_10000EA44(&v97, "-", 1);
    v11 = &v93;
  }

  sub_10000EA44(v11, v12, v13);
  if (*(a2 + 256) == 1)
  {
    v14 = std::ostream::operator<<();
    v15 = " deg";
    v16 = 4;
  }

  else
  {
    v15 = "-";
    v14 = &v89;
    v16 = 1;
  }

  sub_10000EA44(v14, v15, v16);
  if (*(a2 + 272) == 1)
  {
    v17 = std::ostream::operator<<();
    v18 = " m";
    v19 = 2;
  }

  else
  {
    v18 = "-";
    v17 = &v85;
    v19 = 1;
  }

  sub_10000EA44(v17, v18, v19);
  if (*(a2 + 296) == 1)
  {
    v20 = std::ostream::operator<<();
    v21 = " m";
    v22 = 2;
  }

  else
  {
    v21 = "-";
    v20 = &v77;
    v22 = 1;
  }

  sub_10000EA44(v20, v21, v22);
  v23 = *(a2 + 280);
  if (v23 <= 4)
  {
    sub_10000EA44(&v81, off_1009A91B8[v23], qword_10056EF50[v23]);
  }

  if (*(a2 + 320) == 1)
  {
    sub_10000EA44(&v73, "[", 1);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v24 = std::ostream::operator<<();
    sub_10000EA44(v24, ", ", 2);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v25 = std::ostream::operator<<();
    sub_10000EA44(v25, ", ", 2);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v26 = std::ostream::operator<<();
    v27 = "]";
  }

  else
  {
    v27 = "-";
    v26 = &v73;
  }

  sub_10000EA44(v26, v27, 1);
  if (*(a2 + 352) != 1)
  {
    v31 = "-";
    v30 = &v69;
    v32 = 1;
    goto LABEL_31;
  }

  sub_10000EA44(&v69, "[", 1);
  if (*(a2 + 352) != 1 || (v28 = std::ostream::operator<<(), sub_10000EA44(v28, ", ", 2), *(a2 + 352) != 1) || (v29 = std::ostream::operator<<(), sub_10000EA44(v29, ", ", 2), (*(a2 + 352) & 1) == 0))
  {
LABEL_102:
    sub_1000195BC();
  }

  v30 = std::ostream::operator<<();
  v31 = "] m";
  v32 = 3;
LABEL_31:
  sub_10000EA44(v30, v31, v32);
  v33 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    if (v68 >= 0)
    {
      v34 = &v67;
    }

    else
    {
      v34 = v67;
    }

    if ((*(v3 + 32) & 1) == 0)
    {
      sub_1000195BC();
    }

    v35 = *(v3 + 24);
    if (*a2 == 1)
    {
      v36 = "YES";
    }

    else
    {
      v36 = "NO";
    }

    if (*(a2 + 4))
    {
      v37 = "YES";
    }

    else
    {
      v37 = "NO";
    }

    if (*(a2 + 5))
    {
      v38 = "YES";
    }

    else
    {
      v38 = "NO";
    }

    if (*(a2 + 6))
    {
      v39 = "YES";
    }

    else
    {
      v39 = "NO";
    }

    if (*(a2 + 7))
    {
      v40 = "YES";
    }

    else
    {
      v40 = "NO";
    }

    std::stringbuf::str();
    if (v66 >= 0)
    {
      v41 = &v65;
    }

    else
    {
      v41 = v65;
    }

    std::stringbuf::str();
    if (v64 >= 0)
    {
      v42 = &v63;
    }

    else
    {
      v42 = v63;
    }

    v52 = v42;
    std::stringbuf::str();
    if (v62 >= 0)
    {
      v43 = &v61;
    }

    else
    {
      v43 = v61;
    }

    v51 = v43;
    v44 = &v59;
    std::stringbuf::str();
    v50 = v39;
    if (v60 < 0)
    {
      v44 = v59;
    }

    v45 = &v57;
    std::stringbuf::str();
    if (v58 < 0)
    {
      v45 = v57;
    }

    std::stringbuf::str();
    std::stringbuf::str();
    v46 = &v55;
    if (v56 < 0)
    {
      v46 = v55;
    }

    p_p = &__p;
    if (v54 < 0)
    {
      p_p = __p;
    }

    *buf = 136318466;
    v102 = v34;
    v103 = 2048;
    v104 = v35;
    v105 = 2080;
    v106 = v36;
    v107 = 2080;
    v108 = v37;
    v109 = 2080;
    v110 = v38;
    v111 = 2080;
    v112 = v50;
    v113 = 2080;
    v114 = v40;
    v115 = 2080;
    v116 = v41;
    v117 = 2080;
    v118 = v52;
    v119 = 2080;
    v120 = v51;
    v121 = 2080;
    v122 = v44;
    v123 = 2080;
    v124 = v45;
    v125 = 2080;
    v126 = v46;
    v127 = 2080;
    v128 = p_p;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#sa_algo,DeviceID: %s\n\tTimestamp: %f\n\tSolution convergence: %s, insufficientDisplacement: %s, insufficientHorizontalPositionDiversity: %s, insufficientVerticalPositionDiversity: %s, insufficientLighting: %s\n\tRange: %s, Horizontal angle: %s, Horizontal distance: %s, Vertical distance: %s, Vertical state: %s, Direction: %s, World Position: %s", buf, 0x8Eu);
    if (v54 < 0)
    {
      operator delete(__p);
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    if (v62 < 0)
    {
      operator delete(v61);
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    if (v66 < 0)
    {
      operator delete(v65);
    }

    if (v68 < 0)
    {
      operator delete(v67);
    }
  }

  if (v72 < 0)
  {
    operator delete(v71[7].__locale_);
  }

  std::locale::~locale(v71);
  std::ostream::~ostream();
  std::ios::~ios();
  v73 = v48;
  *(&v73 + *(v48 - 3)) = v49;
  if (v76 < 0)
  {
    operator delete(v75[7].__locale_);
  }

  std::locale::~locale(v75);
  std::ostream::~ostream();
  std::ios::~ios();
  v77 = v48;
  *(&v77 + *(v48 - 3)) = v49;
  if (v80 < 0)
  {
    operator delete(v79[7].__locale_);
  }

  std::locale::~locale(v79);
  std::ostream::~ostream();
  std::ios::~ios();
  v81 = v48;
  *(&v81 + *(v48 - 3)) = v49;
  if (v84 < 0)
  {
    operator delete(v83[7].__locale_);
  }

  std::locale::~locale(v83);
  std::ostream::~ostream();
  std::ios::~ios();
  v85 = v48;
  *(&v85 + *(v48 - 3)) = v49;
  if (v88 < 0)
  {
    operator delete(v87[7].__locale_);
  }

  std::locale::~locale(v87);
  std::ostream::~ostream();
  std::ios::~ios();
  v89 = v48;
  *(&v89 + *(v48 - 3)) = v49;
  if (v92 < 0)
  {
    operator delete(v91[7].__locale_);
  }

  std::locale::~locale(v91);
  std::ostream::~ostream();
  std::ios::~ios();
  v93 = v48;
  *(&v93 + *(v48 - 3)) = v49;
  if (v96 < 0)
  {
    operator delete(v95[7].__locale_);
  }

  std::locale::~locale(v95);
  std::ostream::~ostream();
  std::ios::~ios();
  v97 = v48;
  *(&v97 + *(v48 - 3)) = v49;
  if (v100 < 0)
  {
    operator delete(v99[7].__locale_);
  }

  std::locale::~locale(v99);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003AEC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_10038B85C(&a60);
  sub_10038B85C(&a65);
  sub_10038B85C(&STACK[0x300]);
  sub_10038B85C(&STACK[0x408]);
  sub_10038B85C(&STACK[0x510]);
  sub_10038B85C(&STACK[0x618]);
  sub_10038B85C(&STACK[0x720]);
  sub_10038B85C(&STACK[0x828]);
  _Unwind_Resume(a1);
}

void sub_1003AED88(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (*(result + 1) == 1 && *(result + 176) == 1)
  {
    v5 = *(result + 152);
    v6 = *(result + 168);
    if (a2)
    {
      *(a3 + 412) = 3;
      *(a3 + 416) = 1;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C8A98();
      }

      if (*(result + 16))
      {
        v7 = v5;
        *(a3 + 8) = *(result + 8);
        *(a3 + 16) = v6;
        *(a3 + 24) = v7;
        *(a3 + 28) = 1;
        *(a3 + 56) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 60) = 0;
        *(a3 + 64) = 0;
        *(a3 + 68) = 0;
        *(a3 + 72) = 0;
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0u;
        *(a3 + 112) = 0u;
        *(a3 + 121) = 0u;
        *(a3 + 160) = 0;
        *(a3 + 232) = 0;
        *(a3 + 216) = 0u;
        *(a3 + 200) = 0u;
        *(a3 + 184) = 0u;
        *(a3 + 168) = 0u;
LABEL_15:
        *(a3 + 240) = 1;
        return;
      }

      goto LABEL_19;
    }

    if ((*(result + 32) & 1) == 0)
    {
      goto LABEL_19;
    }

    if (*(result + 24) - v6 < *(result + 600))
    {
      *(a3 + 412) = 3;
      *(a3 + 416) = 1;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C8A24();
      }

      if (*(result + 16) & 1) != 0 && (*(result + 32))
      {
        v8 = *(result + 24);
        v9 = v5;
        *(a3 + 8) = *(result + 8);
        *(a3 + 16) = v8;
        *(a3 + 24) = v9;
        *(a3 + 28) = 1;
        *(a3 + 56) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 60) = 0;
        *(a3 + 64) = 0;
        *(a3 + 68) = 0;
        *(a3 + 72) = 0;
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0u;
        *(a3 + 112) = 0u;
        *(a3 + 121) = 0u;
        *(a3 + 160) = 0;
        *(a3 + 168) = 0u;
        *(a3 + 184) = 0u;
        *(a3 + 200) = 0u;
        *(a3 + 216) = 0u;
        *(a3 + 232) = 0;
        goto LABEL_15;
      }

LABEL_19:
      sub_1000195BC();
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C89B0();
    }
  }
}

void sub_1003AEFD4(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    v1 = *(a1 + 80);
    if (v1 <= 2)
    {
      switch(v1)
      {
        case 0:
          v2 = qword_1009F9820;
          if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v11 = 0;
          v3 = "#sa_algo,Batch solution status: STATIC_AND_UNOBSERVABLE";
          v4 = &v11;
          goto LABEL_24;
        case 1:
          v2 = qword_1009F9820;
          if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v3 = "#sa_algo,Batch solution status: STATIC";
          v4 = buf;
          goto LABEL_24;
        case 2:
          v2 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 0;
            v3 = "#sa_algo,Batch solution status: UNOBSERVABLE";
            v4 = &v9;
LABEL_24:
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
          }

          break;
      }
    }

    else
    {
      if (v1 <= 4)
      {
        if (v1 == 3)
        {
          v2 = qword_1009F9820;
          if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v8 = 0;
          v3 = "#sa_algo,Batch solution status: DEGENERATE_PATH";
          v4 = &v8;
        }

        else
        {
          v2 = qword_1009F9820;
          if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v7 = 0;
          v3 = "#sa_algo,Batch solution status: NOT_CONVERGED";
          v4 = &v7;
        }

        goto LABEL_24;
      }

      if (v1 == 5)
      {
        v2 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v6 = 0;
        v3 = "#sa_algo,Batch solution status: INITIALIZED";
        v4 = &v6;
        goto LABEL_24;
      }

      if (v1 == 6)
      {
        v2 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v5 = 0;
          v3 = "#sa_algo,Batch solution status: RESET_FROM_HIGH_RESIDUALS";
          v4 = &v5;
          goto LABEL_24;
        }
      }
    }
  }
}

void *sub_1003AF1E0(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 7) + 4 * (a4 - a2) - ((a3 - *a2) >> 7);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 5));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + ((a1[4] & 0x1FLL) << 7);
  }

  v33 = (v7 + 8 * (a1[4] >> 5));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 7) + 4 * (a2 - v8) - ((v9 - *v8) >> 7);
  }

  v11 = sub_1003B0628(&v33, v10);
  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v12;
  if (v6 >= 1)
  {
    if (v10 <= (a1[5] - v6) >> 1)
    {
      v19 = v11;
      v20 = v12;
      v21 = v33;
      v22 = v34;
      v23 = sub_1003B0628(&v32, v6);
      sub_1003B06FC(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 128;
          v34 = v25;
          if (&v25[-*v26] == 4096)
          {
            v27 = v26[1];
            ++v26;
            v25 = v27;
            v33 = v26;
            v34 = v27;
          }
        }

        while (v25 != v36);
      }

      v28 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v28;
        ;
      }
    }

    else
    {
      v13 = sub_1003B0628(&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 5));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = (*v17 + 128 * (v15 & 0x1F));
      }

      v35 = v32;
      sub_1003B088C(v13, v14, v17, v18, &v35);
      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[1];
  if (a1[2] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + 8 * (a1[4] >> 5)) + ((a1[4] & 0x1FLL) << 7);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 5);
  v35.n128_u64[1] = v30;
  return sub_1003B0628(&v35, v10);
}

int32x2_t sub_1003AF418(float32x4_t *a1)
{
  v27 = a1[3];
  v29 = a1[2];
  v3 = acosf(-v27.f32[1]);
  v4 = v29;
  v1.i32[0] = v29.i32[1];
  v5.i32[0] = vextq_s8(v4, v4, 8uLL).u32[0];
  v5.i32[1] = v29.i32[0];
  v6 = vmulq_f32(v29, v29);
  *&v7 = sqrtf(v6.f32[2] + v6.f32[0]);
  if (fabsf(v29.f32[1]) >= fabsf(a1[1].f32[1]))
  {
    v30 = v5;
    v26 = *&v7;
    v9 = asinf(*&v7);
    if (v9 >= 0.43633)
    {
      v8 = COERCE_DOUBLE(vdiv_f32(v30, vdup_lane_s32(v26, 0)));
      v21 = v3;
      if (v3 <= 1.57079633)
      {
        *&v21 = -*(&v8 + 1);
        v22 = COERCE_DOUBLE(vzip1_s32(*&v21, *&v8));
        v23 = COERCE_DOUBLE(vneg_f32(*&v8));
        LODWORD(v24) = vdup_lane_s32(*&v23, 1).u32[0];
        if (v3 <= 0.7854)
        {
          *v4.i64 = v22;
        }

        else
        {
          v8 = v23;
          *(&v24 + 1) = -*&v23;
          *v4.i64 = v24;
        }

        return vzip1_s32(*&v8, *v4.i8);
      }
    }

    else
    {
      v10 = v27;
      v11.i32[0] = vextq_s8(v10, v10, 8uLL).u32[0];
      v11.i32[1] = v27.i32[0];
      v12 = vmulq_f32(v10, v10);
      v12.f32[0] = sqrtf(v12.f32[2] + v12.f32[0]);
      v8 = COERCE_DOUBLE(vdiv_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(v1, 0), 0), vneg_f32(v11), v11), vdup_lane_s32(*v12.f32, 0)));
      if (v9 > 0.2618)
      {
        v13 = vbsl_s8(vcgtd_f64(1.57079633, v3), vneg_f32(v30), v30);
        v14 = vmul_f32(v13, v13);
        v14.f32[0] = sqrtf(vaddv_f32(v14));
        v15 = vdiv_f32(v13, vdup_lane_s32(v14, 0));
        v13.f32[0] = -v15.f32[1];
        v16 = vzip1_s32(v13, v15);
        v28 = v16;
        v31 = v15;
        v17 = __PAIR64__(v16.u32[1], v15.u32[1]);
        v15.i32[1] = v16.i32[0];
        v18 = vmla_lane_f32(vmul_n_f32(v15, *&v8), v17, *&v8, 1);
        v19 = atan2f(v18.f32[1], v18.f32[0]);
        v20 = __sincosf_stret(((v9 + -0.43633) / -0.17453) * v19);
        v8 = COERCE_DOUBLE(vmla_n_f32(vmul_n_f32(v28, v20.__sinval), v31, v20.__cosval));
      }
    }

    v4.i32[0] = vdup_lane_s32(*&v8, 1).u32[0];
    *&v4.i32[1] = -*&v8;
    return vzip1_s32(*&v8, *v4.i8);
  }

  v8 = COERCE_DOUBLE(vdiv_f32(v5, vdup_lane_s32(*&v7, 0)));
  LODWORD(v7) = HIDWORD(v8);
  *v4.i32 = -*(&v8 + 1);
  *v4.i8 = vzip1_s32(*v4.i8, *&v8);
  if (v3 > 0.7854)
  {
    *(&v7 + 1) = -*&v8;
    *v4.i64 = v7;
  }

  return vzip1_s32(*&v8, *v4.i8);
}

void sub_1003AF634(uint64_t a1, int a2)
{
  if (*(a1 + 6) == a2)
  {
    return;
  }

  *(a1 + 6) = a2;
  v4 = qword_1009F9820;
  if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_8;
  }

  v5 = "NO";
  if (a2)
  {
    v5 = "YES";
  }

  v8 = 136315138;
  v9 = v5;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sa_algo,Target motion state changed to %s", &v8, 0xCu);
  if (*(a1 + 6))
  {
LABEL_8:
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo,Target started moving - resetting", &v8, 2u);
    }

    if (*(a1 + 416) == 1)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#sa_algo,Target started moving - passing the cached measurement to the range filter without VIO", &v8, 2u);
        if ((*(a1 + 416) & 1) == 0)
        {
          sub_1000195BC();
        }
      }

      sub_1003AAC3C(a1, a1 + 184);
    }

    sub_1003AADD8(a1);
  }
}

uint64_t *sub_1003AF7C0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003AF83C(result, a4);
  }

  return result;
}

void sub_1003AF820(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AF83C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    sub_1003AF88C(a1, a2);
  }

  sub_100019B38();
}

void sub_1003AF88C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003AF8E8(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

uint64_t sub_1003AFA50(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v4 = *a2;
    *(a1 + 5) = *(a2 + 5);
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    sub_1003AF7C0((a1 + 16), a2[2], a2[3], 0xCF3CF3CF3CF3CF3DLL * ((a2[3] - a2[2]) >> 3));
    *(a1 + 40) = a2[5];
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_1003AFAEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 24) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AFB14(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10038E1EC(result);

    operator delete();
  }

  return result;
}

void *sub_1003AFB60(void *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    result[21] = off_1009991A0;
    result[13] = off_1009991A0;
    result[5] = off_1009991A0;
    operator delete();
  }

  return result;
}

void sub_1003AFBE8(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
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
    sub_10016F098(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10016EC70(a1, &v9);
}

void sub_1003AFD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003AFDBC(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_1004C8B64();
  }

  if (a2 < 0)
  {
    sub_1004C8B38();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_1004C8B0C();
  }

  return v2 + 8 * a2;
}

uint64_t sub_1003AFDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x300000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A8FC0;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 4)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1003AFEC0(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, char *__s1)
{
  if (a1 == a2)
  {
    sub_1004C8D48();
  }

  if (a1 == a3)
  {
    sub_1004C8D1C();
  }

  if (a1 == a4)
  {
    sub_1004C8CF0();
  }

  if (a2 == a3)
  {
    sub_1004C8CC4();
  }

  if (a2 == a4)
  {
    sub_1004C8C98();
  }

  if (a3 == a4)
  {
    sub_1004C8C6C();
  }

  v7 = *(a1 + 16);
  if (*(a2 + 16) < v7)
  {
    sub_1004C8C40();
  }

  if (v7)
  {
    v9 = *(a1 + 8);
    v10 = *__s1;
    if (v9 == 1 || (v11 = *(a1 + 12), v11 == 1))
    {
      if (v10 == 50)
      {
        if (!__s1[1])
        {
          v12 = *(a1 + 32);
          v13 = *v12 * *v12;
          if (v7 != 1)
          {
            v14 = v12 + 1;
            v15 = v7 - 1;
            do
            {
              v16 = *v14++;
              v13 = v13 + v16 * v16;
              --v15;
            }

            while (v15);
          }

          return;
        }
      }

      else if (v10 == 49 && !__s1[1])
      {
        v56 = *(a1 + 32);
        v57 = fabs(*v56);
        if (v7 != 1)
        {
          v58 = v56 + 1;
          v59 = v7 - 1;
          do
          {
            v60 = *v58++;
            v57 = v57 + fabs(v60);
            --v59;
          }

          while (v59);
        }

        return;
      }

      if (!strcmp(__s1, "inf"))
      {
        v23 = *(a1 + 32);
        v24 = fabs(*v23);
        if (v7 != 1)
        {
          v25 = v23 + 1;
          v26 = v7 - 1;
          do
          {
            v27 = *v25++;
            v28 = fabs(v27);
            if (v28 > v24)
            {
              v24 = v28;
            }

            --v26;
          }

          while (v26);
        }
      }

      else if (!strcmp(__s1, "-inf"))
      {
        v40 = *(a1 + 32);
        v41 = fabs(*v40);
        if (v7 != 1)
        {
          v42 = v40 + 1;
          v43 = v7 - 1;
          do
          {
            v44 = *v42++;
            v45 = fabs(v44);
            if (v45 < v41)
            {
              v41 = v45;
            }

            --v43;
          }

          while (v43);
        }
      }

      else
      {
        v73 = 0.0;
        if (sscanf(__s1, "%lg", &v73) != 1)
        {
          sub_1004C8B90(__s1);
        }

        v17 = v73;
        if (fabs(v73) >= 2.22044605e-16)
        {
          v46 = *(a1 + 32);
          v47 = pow(fabs(*v46), v73);
          if (v7 != 1)
          {
            v48 = v46 + 1;
            v49 = v7 - 1;
            do
            {
              v50 = *v48++;
              v47 = v47 + pow(fabs(v50), v17);
              --v49;
            }

            while (v49);
          }

          pow(v47, 1.0 / v17);
        }
      }

      return;
    }

    if (v10 == 50)
    {
      if (!__s1[1])
      {
        sub_1003B03F0(a1, a2, a3, a4);
        return;
      }

      goto LABEL_30;
    }

    if (v10 != 49 || __s1[1])
    {
LABEL_30:
      if (!strcmp(__s1, "inf"))
      {
        if (v9)
        {
          v29 = *(a1 + 32);
          v30 = *(a2 + 32);
          v31 = v9;
          do
          {
            v32 = *v29++;
            *v30++ = fabs(v32);
            --v31;
          }

          while (v31);
        }

        if (v11 <= 1)
        {
          v34 = *(a2 + 32);
        }

        else
        {
          v33 = *(a1 + 32);
          v34 = *(a2 + 32);
          v35 = 1;
          v36 = v9;
          do
          {
            v37 = v9;
            v38 = v36;
            v39 = v34;
            if (v9)
            {
              do
              {
                *v39 = fabs(*(v33 + 8 * v38)) + *v39;
                ++v39;
                ++v38;
                --v37;
              }

              while (v37);
            }

            ++v35;
            v36 += v9;
          }

          while (v35 != v11);
        }

        v51 = *v34;
        if (v9 >= 2)
        {
          v52 = v34 + 1;
          v53 = v9 - 1;
          do
          {
            v54 = *v52++;
            v55 = v54;
            if (v54 > v51)
            {
              v51 = v55;
            }

            --v53;
          }

          while (v53);
        }
      }

      else
      {
        if (strcmp(__s1, "fro"))
        {
          sub_1004C8BE8(__s1);
        }

        v18 = *(a1 + 32);
        v19 = *v18 * *v18;
        if (v7 != 1)
        {
          v20 = v18 + 1;
          v21 = v7 - 1;
          do
          {
            v22 = *v20++;
            v19 = v19 + v22 * v22;
            --v21;
          }

          while (v21);
        }
      }

      return;
    }

    if (v11)
    {
      v61 = 0;
      v62 = *(a1 + 32);
      v63 = *(a2 + 32);
      v64 = 1;
      do
      {
        v65 = fabs(*(v62 + 8 * (v9 * v61)));
        v63[v61] = v65;
        v66 = v9 - 1;
        v67 = v64;
        if (v9 >= 2)
        {
          do
          {
            v65 = v65 + fabs(*(v62 + 8 * v67));
            v63[v61] = v65;
            ++v67;
            --v66;
          }

          while (v66);
        }

        ++v61;
        v64 += v9;
      }

      while (v61 != v11);
      v68 = *v63;
      v69 = v63 + 1;
      v70 = v11 - 1;
      do
      {
        v71 = *v69++;
        v72 = v71;
        if (v71 > v68)
        {
          v68 = v72;
        }

        --v70;
      }

      while (v70);
    }
  }
}

_DWORD *sub_1003B03F0(_DWORD *a1, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  v6 = a1[2];
  v5 = a1[3];
  if (v5 <= v6)
  {
    v7 = a1[2];
  }

  else
  {
    v7 = a1[3];
  }

  if (v5 >= v6)
  {
    v8 = a1[2];
  }

  else
  {
    v8 = a1[3];
  }

  if (a1 == a2)
  {
    sub_1004C8FB0();
  }

  if (a1 == a3)
  {
    sub_1004C8F84();
  }

  if (a1 == a4)
  {
    sub_1004C8F58();
  }

  if (a2 == a3)
  {
    sub_1004C8F2C();
  }

  if (a2 == a4)
  {
    sub_1004C8F00();
  }

  if (a3 == a4)
  {
    sub_1004C8ED4();
  }

  v11 = *(a3 + 28) * *(a3 + 24);
  if (!v11)
  {
    sub_1004C8EA8();
  }

  if (v11 < 3 * v8 + v7)
  {
    sub_1004C8E7C();
  }

  if (v11 < 5 * v8)
  {
    sub_1004C8E50();
  }

  if (a2[6] < v6)
  {
    sub_1004C8E24();
  }

  if (a2[7] < v5)
  {
    sub_1004C8DF8();
  }

  if (a4[6] < v8)
  {
    sub_1004C8DCC();
  }

  if (!a4[7])
  {
    sub_1004C8DA0();
  }

  sub_1003A8CFC(a2, a1);
  v12 = a2[2];
  v13 = a2[3];
  v20 = 78;
  v19 = 78;
  v17 = v13;
  v18 = v12;
  v14 = dgesvd_NEWLAPACK();
  v15 = **(a3 + 32);
  if (v11 < v15 && cnprint::CNPrinter::GetLogLevel(v14) <= 1)
  {
    LOWORD(v18) = 4;
    LOBYTE(v17) = 1;
    cnprint::CNPrinter::Print(&v18, &v17, "Warning: Svd optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v15, v11);
  }

  sub_1003A8C00(a3, *(a3 + 24), *(a3 + 28));
  return sub_1003A8C00(a4, v8, 1);
}

void *sub_1003B0628(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 7);
    if (v4 < 1)
    {
      result -= (31 - v4) >> 5;
    }

    else
    {
      result += v4 >> 5;
    }
  }

  return result;
}

uint64_t sub_1003B068C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x20)
  {
    a2 = 1;
  }

  if (v5 < 0x40)
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

__n128 sub_1003B06FC@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1003B07CC(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 4096);
    }

    v12 = (*v17 + 4096);
    v11 = a2;
  }

  sub_1003B07CC(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1003B07CC@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 7 >= v12 >> 7)
      {
        v13 = v12 >> 7;
      }

      else
      {
        v13 = (v11 - a1) >> 7;
      }

      v11 -= 128 * v13;
      a4 -= 128 * v13;
      if (v13)
      {
        result = memmove(a4, v11, (v13 << 7) - 8);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *(v6 - 1);
      v6 -= 8;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = *(v6 + 1);
      v6 += 8;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_1003B088C(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1003B0950(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1003B0950(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_1003B0950(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_1003B0950@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a4 - v9) >> 7 >= v11 >> 7 ? v11 >> 7 : (a4 - v9) >> 7;
      v13 = v12 << 7;
      if (v12)
      {
        __src = memmove(__dst, v9, v13 - 8);
      }

      v9 += 16 * v12;
      if (v9 == a4)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1003B0A1C()
{
  v1 = xmmword_10056EEC8;
  v2[0] = unk_10056EED8;
  v2[1] = xmmword_10056EEE8;
  v2[2] = unk_10056EEF8;
  qword_1009F79C8 = 0;
  unk_1009F79D0 = 0;
  qword_1009F79C0 = 0;
  sub_10004EEB8(&qword_1009F79C0, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F79C0, &_mh_execute_header);
  v1 = xmmword_10056EF08;
  qword_1009F79E0 = 0;
  unk_1009F79E8 = 0;
  qword_1009F79D8 = 0;
  sub_10004EEB8(&qword_1009F79D8, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F79D8, &_mh_execute_header);
}

void sub_1003B0B20(uint64_t a1, void *a2)
{
  v4 = a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009A91F0;
  *(a1 + 48) = 0;
  *(a1 + 280) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 416) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  v5 = [[CMAPrecisionFindingManagerAdapter alloc] initWithFindingManager:a1];
  v6 = *(a1 + 304);
  *(a1 + 304) = v5;

  if (v4)
  {
    objc_storeStrong((a1 + 288), a2);
    v7 = [[CMAPrecisionFindingManager alloc] initWithDelegate:*(a1 + 304) dispatchQueue:*(a1 + 288) findeeType:2];
    v8 = *(a1 + 296);
    *(a1 + 296) = v7;

    [*(a1 + 296) startDeviceFindingUpdates];
    operator new();
  }

  __assert_rtn("WatchItemFinderAlgorithms", "WatchItemFinderAlgorithms.mm", 34, "externalQueue");
}

void sub_1003B0D68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 320) = 0;
  *(a2 + 336) = 0;
  *(a2 + 352) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 404) = 0;
  *(a2 + 408) = 0;
  *(a2 + 412) = 0;
  *(a2 + 416) = 0;
  *(a2 + 420) = 0;
  *(a2 + 424) = 0;
  *(a2 + 428) = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (*(a1 + 280) == 1)
  {
    v5 = *(a1 + 48);
  }

  v6 = *(a1 + 320);
  if (!v6 || ([v6 doubleValue], !*(a1 + 312)))
  {
    if (*(a1 + 32))
    {
      v10 = *(a1 + 8);
      *(a2 + 8) = v5;
      *(a2 + 16) = v10;
      *(a2 + 56) = 0;
      *(a2 + 60) = 0;
      *(a2 + 64) = 0;
      *(a2 + 68) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0x100800000;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 216) = 0u;
      *(a2 + 232) = 0;
      *(a2 + 121) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 240) = 1;
      *(a2 + 412) = 0;
      *(a2 + 416) = 1;
      *(a2 + 420) = sub_1003B1160(a1);
      *(a2 + 424) = 1;
      goto LABEL_11;
    }

LABEL_15:
    sub_1000195BC();
  }

  *(a2 + 412) = 7;
  *(a2 + 416) = 1;
  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (*(a2 + 240) == 1)
  {
    *(a2 + 240) = 0;
  }

  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 28) = 1;
  *(a2 + 56) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 121) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  sub_1003B1000(a1, a2, LODWORD(v8) | &_mh_execute_header);
LABEL_11:
  objc_autoreleasePoolPop(v4);
  v14 = [*(a1 + 352) mutableCopy];
  if ((*(a2 + 240) & 1) == 0)
  {
    sub_1000195BC();
  }

  v11 = [NSNumber numberWithDouble:*(a2 + 24)];
  [v14 setObject:v11 forKey:@"DISPLAYED_DISTANCE"];

  v12 = [v14 copy];
  v13 = *(a1 + 352);
  *(a1 + 352) = v12;
}

id sub_1003B1000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 312) convergenceStatus];
  v7 = *(a1 + 328);
  v8 = 0;
  if (v7)
  {
    [v7 doubleValue];
    v10 = v9;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(a1 + 336);
  if (v12)
  {
    [v12 doubleValue];
    v8 = v13;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v6 == 2;
  if (v6 == 2)
  {
    if (*(a2 + 272) == BYTE4(a3))
    {
      if (*(a2 + 272))
      {
        *(a2 + 264) = *&a3;
      }
    }

    else if (*(a2 + 272))
    {
      *(a2 + 272) = 0;
    }

    else
    {
      *(a2 + 264) = *&a3;
      *(a2 + 272) = 1;
    }

    *(a2 + 248) = v10;
    *(a2 + 256) = v11;
    *(a2 + 368) = v8;
    *(a2 + 376) = v14;
    *(a2 + 412) = 6;
    *(a2 + 416) = 1;
  }

  if ([*(a1 + 312) revokeReason])
  {
    if ([*(a1 + 312) revokeReason] == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = sub_1003B1160(a1);
  }

  *(a2 + 420) = v15;
  *(a2 + 424) = 1;
  result = [*(a1 + 312) verticalState];
  if (result)
  {
    result = [*(a1 + 312) verticalState];
    v17 = 4 * (result == 2);
    if (result == 1)
    {
      v17 = 1;
    }

    *(a2 + 280) = v17;
  }

  return result;
}

void *sub_1003B1160(uint64_t a1)
{
  result = *(a1 + 344);
  if (result)
  {
    v3 = [result motionState];
    if (v3 < 8 && ((0x8Bu >> v3) & 1) != 0)
    {
      return dword_10056F008[v3];
    }

    else
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1004C8FDC(v5, [*(a1 + 344) motionState], v4);
      }

      return 0;
    }
  }

  return result;
}

void sub_1003B123C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 181) != 1 || *(a2 + 180) > 2u)
  {

    sub_1003B1364(a1, a2);
  }

  else
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a2 + 181) & 1) == 0)
      {
        sub_1000195BC();
      }

      v6 = *(a2 + 180);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#findalgs-watchitemfinder,mmsValStatus %d does not pass check, rejecting range result event", v7, 8u);
    }
  }
}

void sub_1003B1364(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  sub_100224EF8(728958080, 1, 0, 0, 0, 0);
  sub_1003B1528(a1, a2, *(a1 + 368));
  sub_100224EF8(728958080, 2, 0, 0, 0, 0);
  v5 = *(a1 + 280);
  v7 = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 48) = *a2;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  v8 = *(a2 + 96);
  v10 = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a1 + 128) = *(a2 + 80);
  *(a1 + 144) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  v13 = *(a2 + 112);
  v12 = *(a2 + 128);
  *(a1 + 192) = *(a2 + 144);
  *(a1 + 208) = v11;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  v15 = *(a2 + 192);
  v14 = *(a2 + 208);
  v16 = *(a2 + 176);
  *(a1 + 272) = *(a2 + 224);
  *(a1 + 240) = v15;
  *(a1 + 256) = v14;
  *(a1 + 224) = v16;
  if ((v5 & 1) == 0)
  {
    *(a1 + 280) = 1;
  }

  v17 = objc_opt_new();
  [v17 setTimestamp:*(a2 + 8)];
  [v17 setRange:*(a2 + 16)];
  [v17 setRangeError:*(a2 + 40)];
  if (*(a2 + 72))
  {
    [v17 setRssi:*(a2 + 64)];
  }

  if ((*(a2 + 176) & 0x10000) != 0)
  {
    [v17 setCycleIndex:*(a2 + 176)];
  }

  if (*(a1 + 296))
  {
    sub_100224EF8(728958084, 1, 0, 0, 0, 0);
    [*(a1 + 296) updateRanging:v17];
    sub_100224EF8(728958084, 2, 0, 0, 0, 0);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1003B1528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  dispatch_assert_queue_V2(*(a1 + 288));
  v6 = *(a2 + 8);
  if (*(a1 + 416) == 1 && v6 <= *(a1 + 408))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 416) & 1) == 0)
      {
        sub_1000195BC();
      }

      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      v13 = *(a1 + 408);
      *buf = 134218496;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#findalgs-watchitemfinder,Not passing range measurement to range filter, range: %0.2f m, timestamp: %f s, range filter time: %f s", buf, 0x20u);
    }
  }

  else
  {
    v7 = *(a2 + 16);
    *buf = *(a2 + 8);
    *&buf[8] = v7;
    *&buf[16] = 0x3FB999999999999ALL;
    LODWORD(v16) = 0;
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 134218240;
      *&v14[4] = v7;
      *&v14[12] = 2048;
      *&v14[14] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#findalgs-watchitemfinder,Passing range measurement to range filter, range: %0.2f m, timestamp: %f s", v14, 0x16u);
    }

    sub_1003C9B88(*(a1 + 376), buf, v3, 1, v14);
    if (*(a1 + 416) == 1)
    {
      *(a1 + 416) = 0;
    }

    v9 = *&v14[16];
    *(a1 + 384) = *v14;
    *(a1 + 400) = v9;
    *(a1 + 416) = 1;
  }
}

void sub_1003B1718(uint64_t a1, double *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 setTimestamp:*a2];
  [v5 setQuaternion:{a2[8], a2[9], a2[10], a2[7]}];
  [v5 setRotationRate:{a2[4], a2[5], a2[6]}];
  [v5 setAcceleration:{a2[1], a2[2], a2[3]}];
  v6 = *(a1 + 296);
  if (v6)
  {
    [v6 updateDeviceMotion:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1003B17D8(uint64_t a1, _BYTE *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = v5;
  if (*a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setCrown:v7];
  if (a2[1])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v6 setWrist:v8];
  v9 = *(a1 + 296);
  if (v9)
  {
    [v9 updateWatchOrientation:v6];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1003B188C(uint64_t a1, double *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9024();
  }

  sub_1003B18EC(a1, a2);
}

void sub_1003B18EC(uint64_t a1, double *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  if ((*(a1 + 368) & 1) == 0)
  {
    *(a1 + 368) = 1;
  }

  *(a1 + 360) = v5;
  [*(a1 + 344) setMotionState:3];
  [*(a1 + 344) setTimestamp:*a2];
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9058();
  }

  v6 = *(a1 + 296);
  if (v6)
  {
    [v6 updatePeerState:*(a1 + 344)];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1003B199C(uint64_t a1, double *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 setMachAbsoluteTimestamp:*a2];
  [v5 setRelativeAltitude:a2[1]];
  [v5 setPressure:a2[2]];
  v6 = *(a1 + 296);
  if (v6)
  {
    [v6 updateAltimeterData:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1003B1A40(uint64_t a1)
{
  [*(a1 + 304) invalidate];
  [*(a1 + 296) stopDeviceFindingUpdates];
  v2 = *(a1 + 296);
  *(a1 + 296) = 0;

  v3 = *(a1 + 352);
  *(a1 + 352) = 0;
}

void sub_1003B1A94(uint64_t a1, void *a2)
{
  v15 = a2;
  dispatch_assert_queue_V2(*(a1 + 288));
  objc_storeStrong((a1 + 312), a2);
  if (*(a1 + 312))
  {
    v4 = [*(a1 + 352) mutableCopy];
    v5 = [*(a1 + 312) horizontalDistanceNumber];
    v6 = *(a1 + 320);
    *(a1 + 320) = v5;

    v7 = [*(a1 + 312) horizontalAngleNumber];
    v8 = *(a1 + 328);
    *(a1 + 328) = v7;

    v9 = [*(a1 + 312) horizontalAngleAccuracyNumber];
    v10 = *(a1 + 336);
    *(a1 + 336) = v9;

    v11 = *(a1 + 320);
    if (v11)
    {
      [v4 setObject:v11 forKey:@"CMA_DISTANCE"];
    }

    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 312) revokeReason]);
    [v4 setObject:v12 forKey:@"REVOKE_REASON"];

    v13 = [v4 copy];
    v14 = *(a1 + 352);
    *(a1 + 352) = v13;
  }
}

void sub_1003B1BF0(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = [*(a1 + 352) mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v13}];
        [v4 setObject:v10 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v4 copy];
  v12 = *(a1 + 352);
  *(a1 + 352) = v11;
}

void sub_1003B1D90(uint64_t a1, uint64_t a2)
{
  sub_1003FD060(a1, a2);

  sub_1003B1DC8(a1);
}

void sub_1003B1DC8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 368) == 1)
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 8) - *(a1 + 360) >= 2.5)
      {
        v3 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#findalgs-watchitemfinder,Peer motion state reset to STATIC", v5, 2u);
        }

        if (*(a1 + 368) == 1)
        {
          *(a1 + 368) = 0;
        }

        [*(a1 + 344) setMotionState:1];
        if ((*(a1 + 32) & 1) == 0)
        {
          sub_1000195BC();
        }

        [*(a1 + 344) setTimestamp:*(a1 + 8)];
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C90CC();
        }

        v4 = *(a1 + 296);
        if (v4)
        {
          [v4 updatePeerState:*(a1 + 344)];
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C908C();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1003B1FF4(uint64_t a1)
{
  sub_1003B202C(a1);

  operator delete();
}

uint64_t sub_1003B202C(uint64_t a1)
{
  *a1 = off_1009A91F0;
  sub_1003AFB60((a1 + 376), 0);

  return a1;
}

void sub_1003B20C0()
{
  v0 = objc_autoreleasePoolPush();
  v1 = xmmword_10056EF78;
  v2[0] = unk_10056EF88;
  v2[1] = xmmword_10056EF98;
  v2[2] = unk_10056EFA8;
  qword_1009F79F8 = 0;
  unk_1009F7A00 = 0;
  qword_1009F79F0 = 0;
  sub_10004EEB8(&qword_1009F79F0, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F79F0, &_mh_execute_header);
  v1 = xmmword_10056EFB8;
  qword_1009F7A10 = 0;
  unk_1009F7A18 = 0;
  qword_1009F7A08 = 0;
  sub_10004EEB8(&qword_1009F7A08, &v1, v2, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7A08, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1003B21DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *a1 = off_1009A93B8;
  *(a1 + 80) = *a2;
  sub_10029F1D8((a1 + 96), a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 132) = *(a2 + 52);
  *(a1 + 120) = v4;
  sub_10029F2B8((a1 + 152), (a2 + 72));
  v5 = *(a2 + 104);
  *(a1 + 200) = *(a2 + 120);
  *(a1 + 184) = v5;
  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  v8 = *(a2 + 168);
  *(a1 + 264) = *(a2 + 184);
  *(a1 + 248) = v8;
  *(a1 + 232) = v7;
  *(a1 + 216) = v6;
  v9 = *(a2 + 200);
  v10 = *(a2 + 216);
  v11 = *(a2 + 248);
  *(a1 + 312) = *(a2 + 232);
  *(a1 + 328) = v11;
  *(a1 + 280) = v9;
  *(a1 + 296) = v10;
  v12 = *(a2 + 264);
  v13 = *(a2 + 280);
  v14 = *(a2 + 296);
  *(a1 + 392) = *(a2 + 312);
  *(a1 + 360) = v13;
  *(a1 + 376) = v14;
  *(a1 + 344) = v12;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0x3FB999999999999ALL;
  *(a1 + 416) = xmmword_10056F030;
  *(a1 + 432) = xmmword_10056F040;
  *(a1 + 448) = xmmword_10056F050;
  *(a1 + 464) = xmmword_100563C60;
  *(a1 + 480) = vdup_n_s32(0x3DCCCCCDu);
  *(a1 + 488) = 0x3FE8000000000000;
  *(a1 + 496) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(a1 + 512) = 0u;
  *(a1 + 528) = xmmword_100563BF0;
  *(a1 + 544) = 5;
  *(a1 + 552) = 0x4000000000000000;
  *(a1 + 560) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  *(a1 + 636) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 676) = 0;
  *(a1 + 600) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  sub_1003B2E4C(a1 + 680, a2);
  v15 = *(a1 + 196);
  if (v15 == 1)
  {
    operator new();
  }

  if (v15 == 2)
  {
    operator new();
  }

  (*(*a1 + 32))(a1);
  return a1;
}

double sub_1003B25D0(uint64_t a1)
{
  if (*(a1 + 608) == 1)
  {
    *(a1 + 608) = 0;
  }

  if (*(a1 + 648) == 1)
  {
    *(a1 + 648) = 0;
  }

  if (*(a1 + 664) == 1)
  {
    *(a1 + 664) = 0;
  }

  if (*(a1 + 624) == 1)
  {
    *(a1 + 624) = 0;
  }

  *(a1 + 576) = *(a1 + 568);
  (*(**(a1 + 592) + 32))(*(a1 + 592));

  return sub_1003B2674(a1);
}

double sub_1003B2674(uint64_t a1)
{
  sub_1003B2C48(a1 + 680, &v9);
  v2 = (a1 + 104);
  sub_10002074C(a1 + 96, *(a1 + 104));
  v3 = v10;
  *(a1 + 96) = v9;
  *(a1 + 104) = v3;
  v4 = v11;
  *(a1 + 112) = v11;
  if (v4)
  {
    v3[2] = v2;
    v9 = &v10;
    v10 = 0;
    v11 = 0;
    v3 = 0;
  }

  else
  {
    *(a1 + 96) = v2;
  }

  sub_10002074C(&v9, v3);
  v5 = *v2;
  if (*v2)
  {
    do
    {
      v6 = v5;
      v5 = *(v5 + 8);
    }

    while (v5);
  }

  else
  {
    do
    {
      v6 = v2[2];
      v7 = *v6 == v2;
      v2 = v6;
    }

    while (v7);
  }

  result = *(v6 + 32);
  *(a1 + 88) = result;
  return result;
}

void sub_1003B2734(uint64_t a1, double a2)
{
  if ((*(a1 + 636) & 1) == 0)
  {
    sub_1000195BC();
  }

  v4 = *(a1 + 112);
  v5 = *(a1 + 632);
  if (v5 < 2)
  {
    if (v5 == 1)
    {
      v8 = *(*(a1 + 96) + 32);
      v11 = 1.0;
      v10 = 1.0;
      v7 = v8;
    }

    else
    {
      v12 = a1 + 104;
      v13 = *(a1 + 104);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *(v13 + 8);
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v12 + 16);
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (v15);
      }

      v8 = *(v14 + 32);
      v7 = v8 - *(a1 + 368);
      v11 = 0.0;
      v10 = 1.0 / v4;
    }
  }

  else
  {
    v6 = (a1 + 96);
    *v21 = *(a1 + 96);
    sub_1000131C8(v21, (v5 - 1));
    v7 = *(*v21 + 32);
    *v21 = *v6;
    sub_1000131C8(v21, (v5 - 2));
    v8 = *(*v21 + 32);
    v9 = (v4 - (v5 + -1.0)) / v4;
    v10 = (1.0 / v4) + v9;
    v11 = v9;
  }

  v16 = v10;
  v17 = v10;
  if (v8 > a2)
  {
    v17 = v11;
    if (v7 < a2)
    {
      v17 = v11 + (a2 - v7) / (v8 - v7) * (v16 - v11);
    }
  }

  v18 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    if ((*(a1 + 636) & 1) == 0)
    {
      sub_1000195BC();
    }

    v19 = *(a1 + 112);
    v20 = *(a1 + 632);
    *v21 = 134219776;
    *&v21[4] = v19;
    v22 = 1024;
    v23 = v20;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v17;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = v8;
    v32 = 2048;
    v33 = v11;
    v34 = 2048;
    v35 = v16;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#threshold-detector, threshsize:%zu, inbubblestate: %d, estimaterssi: %f, scaledoutput: %f, lowerbThresh: %f, upperbThresh: %f, tmin: %f, tmax: %f", v21, 0x4Eu);
  }
}

double sub_1003B2980(uint64_t a1, double a2)
{
  sub_1003B2A40(a1 + 680, &v10, a2);
  v3 = (a1 + 104);
  sub_10002074C(a1 + 96, *(a1 + 104));
  v4 = v11;
  *(a1 + 96) = v10;
  *(a1 + 104) = v4;
  v5 = v12;
  *(a1 + 112) = v12;
  if (v5)
  {
    v4[2] = v3;
    v10 = &v11;
    v11 = 0;
    v12 = 0;
    v4 = 0;
  }

  else
  {
    *(a1 + 96) = v3;
  }

  sub_10002074C(&v10, v4);
  v6 = *v3;
  if (*v3)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 8);
    }

    while (v6);
  }

  else
  {
    do
    {
      v7 = v3[2];
      v8 = *v7 == v3;
      v3 = v7;
    }

    while (v8);
  }

  result = *(v7 + 32);
  *(a1 + 88) = result;
  return result;
}

void sub_1003B2A40(uint64_t a1@<X0>, uint64_t **a2@<X8>, double a3@<D0>)
{
  v6 = (a1 + 40);
  v7 = *(a1 + 40);
  v8 = *(a1 + 128);
  v9 = v7[4] - v8;
  v10 = v9 + a3;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v11 = (a1 + 48);
  if (v7 != (a1 + 48))
  {
    v12 = 1;
    do
    {
      v13 = v7[4];
      if (v12)
      {
        v13 = v10;
      }

      *buf = v13;
      sub_1003B30EC(&v20, buf, buf);
      v14 = *(v7 + 1);
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
          v15 = *(v7 + 2);
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      v12 = 0;
      v7 = v15;
    }

    while (v15 != v11);
  }

  if (v6 != &v20)
  {
    sub_10029EC60(v6, v20, v21);
  }

  *(a1 + 128) = a3;
  v17 = *(a1 + 48);
  if (v17)
  {
    do
    {
      v18 = v17;
      v17 = *(v17 + 1);
    }

    while (v17);
  }

  else
  {
    do
    {
      v18 = *(v11 + 2);
      v16 = *v18 == v11;
      v11 = v18;
    }

    while (v16);
  }

  *(a1 + 32) = v18[4];
  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = v8;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = a3;
    v27 = 2048;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#threshold-detector, offsetCurrentHighestThreshold originalOffset: %f, originalDefaultRssiThresh: %f, newOffset: %f, newRssiThresh: %f", buf, 0x2Au);
  }

  sub_10029F1D8(a2, v6);
  sub_10002074C(&v20, v21[0]);
}

void sub_1003B2C48(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  v6 = *(a1 + 128);
  v7 = v5[4];
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v8 = (a1 + 48);
  if (v5 != (a1 + 48))
  {
    v9 = 1;
    do
    {
      v10 = v5[4];
      if (v9)
      {
        v10 = v7 - v6;
      }

      *buf = v10;
      sub_1003B30EC(&v17, buf, buf);
      v11 = *(v5 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v5 + 2);
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v9 = 0;
      v5 = v12;
    }

    while (v12 != v8);
  }

  if (v4 != &v17)
  {
    sub_10029EC60(v4, v17, v18);
  }

  *(a1 + 128) = 0;
  v14 = *(a1 + 48);
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 1);
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = *(v8 + 2);
      v13 = *v15 == v8;
      v8 = v15;
    }

    while (v13);
  }

  *(a1 + 32) = v15[4];
  v16 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v6;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v7 - v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#threshold-detector, resetRssiOffset originalOffset: %f, originalRssiThresh: %f, newRssiThresh: %f", buf, 0x20u);
  }

  sub_10029F1D8(a2, v4);
  sub_10002074C(&v17, v18[0]);
}

uint64_t sub_1003B2E4C(uint64_t a1, uint64_t a2)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *a2;
  sub_10029F1D8((a1 + 40), a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 76) = *(a2 + 52);
  *(a1 + 64) = v4;
  sub_10029F2B8((a1 + 96), (a2 + 72));
  v5 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 104);
  *(a1 + 144) = v5;
  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 168);
  *(a1 + 208) = v8;
  *(a1 + 160) = v6;
  *(a1 + 176) = v7;
  v9 = *(a2 + 200);
  v10 = *(a2 + 216);
  v11 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 232);
  *(a1 + 272) = v11;
  *(a1 + 224) = v9;
  *(a1 + 240) = v10;
  v12 = *(a2 + 264);
  v13 = *(a2 + 280);
  v14 = *(a2 + 296);
  *(a1 + 336) = *(a2 + 312);
  *(a1 + 304) = v13;
  *(a1 + 320) = v14;
  *(a1 + 288) = v12;
  *(a1 + 344) = 0;
  return a1;
}

void sub_1003B2F28(uint64_t a1)
{
  sub_1003B2FF8(a1);

  operator delete();
}

uint64_t sub_1003B2F60(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10002074C(a1 + 40, *(a1 + 48));
  return a1;
}

uint64_t sub_1003B2FAC(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_10002074C(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1003B2FF8(uint64_t a1)
{
  *a1 = off_1009A93B8;
  if (*(a1 + 800) == 1 && *(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  sub_10002074C(a1 + 720, *(a1 + 728));
  v2 = *(a1 + 592);
  *(a1 + 592) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 568);
  if (v3)
  {
    *(a1 + 576) = v3;
    operator delete(v3);
  }

  if (*(a1 + 176) == 1 && *(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  sub_10002074C(a1 + 96, *(a1 + 104));
  *a1 = off_1009AA220;
  sub_100188E54((a1 + 16));
  return a1;
}

uint64_t *sub_1003B30EC(uint64_t a1, double *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 4);
      if (v4 <= v6)
      {
        break;
      }

      v3 = *v3;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 <= v4)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1003B31B8()
{
  v8[0] = xmmword_10056F060;
  v8[1] = unk_10056F070;
  sub_1001BD0B0(qword_1009F7A20, v8, 4);
  xmmword_1009F7A38 = xmmword_100563BD0;
  unk_1009F7A48 = xmmword_100563BE0;
  qword_1009F7A60 = 0;
  unk_1009F7A68 = 0;
  qword_1009F7A58 = 0x3FD999999999999ALL;
  unk_1009F7A70 = xmmword_100563BF0;
  dword_1009F7A80 = 5;
  qword_1009F7A88 = 0x4000000000000000;
  dword_1009F7A90 = 5;
  byte_1009F7A98 = 0;
  unk_1009F7A9C = 0x30000000ALL;
  xmmword_1009F7AA8 = xmmword_100563C00;
  unk_1009F7AB8 = xmmword_100563C10;
  xmmword_1009F7AC8 = xmmword_100563C20;
  qword_1009F7AD8 = 0x3FE3333333333333;
  dword_1009F7AE0 = 3;
  xmmword_1009F7AE8 = xmmword_100563C30;
  unk_1009F7AF8 = xmmword_100563C10;
  xmmword_1009F7B08 = xmmword_100563C00;
  qword_1009F7B18 = 0x3FE3333333333333;
  byte_1009F7B20 = 0;
  xmmword_1009F7B28 = xmmword_100563C40;
  unk_1009F7B38 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F7B48 = _Q0;
  qword_1009F7B58 = 0xBFD3333333333333;
  xmmword_1009F7B60 = xmmword_100563C60;
  qword_1009F7B70 = 0x3E99999A40000000;
  xmmword_1009F7B78 = xmmword_100563BE0;
  qword_1009F7B90 = 0;
  unk_1009F7B98 = 0;
  qword_1009F7B88 = 0x3FD999999999999ALL;
  xmmword_1009F7BA0 = xmmword_100563BF0;
  dword_1009F7BB0 = 5;
  qword_1009F7BB8 = 0x4000000000000000;
  dword_1009F7BC0 = 4;
  qword_1009F7BC8 = 0x300000008;
  qword_1009F7BD0 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F7BD8, &v7, 1);
  xmmword_1009F7BF0 = xmmword_100563C70;
  qword_1009F7C00 = 0x4024000000000000;
  dword_1009F7C08 = 45;
  byte_1009F7C10 = 0;
  byte_1009F7C28 = 0;
  qword_1009F7C30 = 0;
  byte_1009F7C38 = 0;
  dword_1009F7C3C = 1;
  byte_1009F7C40 = 1;
  xmmword_1009F7C48 = xmmword_100563C80;
  xmmword_1009F7C58 = xmmword_100563C90;
  xmmword_1009F7C68 = v6;
  qword_1009F7C78 = 0xC059000000000000;
  xmmword_1009F7C80 = xmmword_100563CA0;
  qword_1009F7C90 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F7C98 = xmmword_100563BE0;
  qword_1009F7CA8 = 0x3FD999999999999ALL;
  xmmword_1009F7CB0 = 0u;
  unk_1009F7CC0 = xmmword_100563BF0;
  dword_1009F7CD0 = 5;
  qword_1009F7CD8 = 0x4000000000000000;
  dword_1009F7CE0 = 10;
  qword_1009F7CE8 = 0x4034000000000000;
  dword_1009F7CF0 = 3;
  xmmword_1009F7CF8 = xmmword_100563CB0;
  return __cxa_atexit(sub_1001BB564, qword_1009F7A20, &_mh_execute_header);
}

void sub_1003B349C(uint64_t a1, double *a2)
{
  sub_1003B3540(a1, a2);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (*a2 - *(*(*(a1 + 8) + 8 * (v5 / 0x1E)) + 136 * (v5 % 0x1E)) > *(a1 + 368))
    {
      *(a1 + 32) = v5 + 1;
      *(a1 + 40) = v4 - 1;

      sub_1003B41D8(a1, 1);
    }
  }
}

__n128 sub_1003B3540(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 30 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1003B4004(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1E)) + 136 * (v7 % 0x1E);
  *v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 64);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 64) = v11;
  *(v8 + 16) = v9;
  *(v8 + 32) = v10;
  result = *(a2 + 80);
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 96) = v13;
  *(v8 + 112) = v14;
  *(v8 + 80) = result;
  ++a1[5];
  return result;
}

float32x4_t sub_1003B3610@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (*(a2 + 16) == 1)
  {
    v7 = *a2;
    v8 = *(a1 + 376);
    *&v8 = v8;
    if ((*(a1 + 352) & 1) == 0)
    {
      *(a1 + 352) = 1;
    }

    *(a1 + 336) = vdivq_f32(v7, vdupq_lane_s32(*&v8, 0));
  }

  sub_1003B3714(a1, *(a2 + 64), a4);
  v21 = v9;
  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9188(v10, v21);
  }

  v11 = vnegq_f32(v21);
  v12 = vtrn2q_s32(v21, vtrn1q_s32(v21, v11));
  v14 = *(a2 + 32);
  v13 = *(a2 + 48);
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v21, v11, 8uLL), *v13.f32, 1), vextq_s8(v12, v12, 8uLL), v13.f32[0]);
  v16 = vrev64q_s32(v21);
  v16.i32[0] = v11.i32[1];
  v16.i32[3] = v11.i32[2];
  v17 = vmlaq_laneq_f32(vmulq_laneq_f32(v21, v13, 3), v16, v13, 2);
  v18 = *(a2 + 64);
  v19 = *(a2 + 16);
  result = vaddq_f32(v15, v17);
  *a3 = *a2;
  *(a3 + 16) = v19;
  *(a3 + 32) = v14;
  *(a3 + 48) = result;
  *(a3 + 64) = v18;
  *(a3 + 64) = a4;
  return result;
}

float32x4_t sub_1003B3824@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v8 = *a2;
  sub_1003B3714(a1, *a2, a4);
  v10 = 0uLL;
  if (*(a1 + 352) == 1)
  {
    v10 = *(a1 + 336);
  }

  v131 = v10;
  v127 = a2[2];
  v128 = a2[1];
  v125 = a2[4];
  v126 = a2[3];
  *&v11 = sub_1003B3E3C(v9);
  v12 = 0;
  v133 = v11;
  v134 = v13;
  v135 = v14;
  v136 = v15;
  do
  {
    *(&v137 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, COERCE_FLOAT(*(&v133 + v12))), v127, *(&v133 + v12), 1), v126, *(&v133 + v12), 2), v125, *(&v133 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v16 = *(a1 + 8);
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = v18 / 0x1E;
  if (v17)
  {
    v20 = *(*(v16 + 8 * v19) + 136 * (v18 % 0x1E));
  }

  else
  {
    v20 = 0.0;
  }

  v21 = v131;
  v121 = v138;
  v122 = v137;
  v119 = v140;
  v120 = v139;
  v22 = 0uLL;
  if (*(a1 + 16) != v16)
  {
    v23 = *(v16 + 8 * v19);
    v24 = v23 + 136 * (v18 % 0x1E);
    v25 = *(v16 + 8 * ((v18 + v17) / 0x1E)) + 136 * ((v18 + v17) % 0x1E);
    if (v24 != v25)
    {
      v26 = 0;
      v27 = (v16 + 8 * v19);
      v28 = vdupq_n_s32(0xBF3504F3);
      v29.i64[0] = 0x8000000080000000;
      v29.i64[1] = 0x8000000080000000;
      v30 = vdupq_n_s32(0x3F3504F3u);
      v31 = xmmword_10056F0C0;
      v32 = 0uLL;
      v123 = v30;
      v124 = v28;
      do
      {
        v33 = *v24;
        if (v8 < *v24)
        {
          v35 = *(v24 + 16);
          v34 = *(v24 + 24);
          v36 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v24 + 56)), *(v24 + 72));
          v37 = vextq_s8(v36, v36, 4uLL);
          v38 = vnegq_f32(v37);
          v39 = vtrn2q_s32(v37, vtrn1q_s32(v37, v38));
          v40 = vmlaq_f32(vmulq_f32(vextq_s8(v37, v38, 8uLL), v29), v28, vextq_s8(v39, v39, 8uLL));
          v41 = vrev64q_s32(v37);
          v41.i32[0] = v38.i32[1];
          v42 = *(v24 + 8);
          v41.i32[3] = v38.i32[2];
          v43 = vaddq_f32(vmlaq_f32(vmulq_f32(v37, v30), v29, v41), v40);
          if ((v26 & 1) == 0)
          {
            v129 = v43;
            v130 = v22;
            v132 = v21;
            *&v44 = sub_1003B3E3C(xmmword_10056F0E0);
            v45 = 0;
            v133 = v44;
            v134 = v46;
            v135 = v47;
            v136 = v48;
            do
            {
              *(&v137 + v45) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, COERCE_FLOAT(*(&v133 + v45))), v127, *(&v133 + v45), 1), v126, *(&v133 + v45), 2), v125, *(&v133 + v45), 3);
              v45 += 16;
            }

            while (v45 != 64);
            v49 = *(&v139 + 2) + (*&v137 + *(&v138 + 1));
            v22 = v130;
            v21 = v132;
            v30 = v123;
            v28 = v124;
            v29.i64[0] = 0x8000000080000000;
            v29.i64[1] = 0x8000000080000000;
            v31 = xmmword_10056F0C0;
            v43 = v129;
            if (v49 >= 0.0)
            {
              v56 = sqrtf(v49 + 1.0);
              v57 = v56 + v56;
              v58 = vrecpe_f32(COERCE_UNSIGNED_INT(v56 + v56));
              v59 = vmul_f32(v58, vrecps_f32(COERCE_UNSIGNED_INT(v56 + v56), v58));
              v60 = vmul_f32(v59, vrecps_f32(COERCE_UNSIGNED_INT(v56 + v56), v59)).f32[0];
              v67 = (*(&v138 + 2) - *(&v139 + 1)) * v60;
              v68 = (*&v139 - *(&v137 + 2)) * v60;
              v69 = (*(&v137 + 1) - *&v138) * v60;
              v61 = v57 * 0.25;
            }

            else
            {
              if (*&v137 < *(&v138 + 1) || *&v137 < *(&v139 + 2))
              {
                v51 = 1.0 - *&v137;
                if (*(&v138 + 1) >= *(&v139 + 2))
                {
                  v71 = sqrtf(*(&v138 + 1) + (v51 - *(&v139 + 2)));
                  v72 = v71 + v71;
                  v73 = vrecpe_f32(COERCE_UNSIGNED_INT(v71 + v71));
                  v74 = vmul_f32(v73, vrecps_f32(COERCE_UNSIGNED_INT(v71 + v71), v73));
                  v66 = vmul_f32(v74, vrecps_f32(COERCE_UNSIGNED_INT(v71 + v71), v74)).f32[0];
                  v67 = (*(&v137 + 1) + *&v138) * v66;
                  v68 = v72 * 0.25;
                  v69 = (*(&v138 + 2) + *(&v139 + 1)) * v66;
                  v70 = *&v139 - *(&v137 + 2);
                }

                else
                {
                  v52 = sqrtf(*(&v139 + 2) + (v51 - *(&v138 + 1)));
                  v53 = v52 + v52;
                  v54 = vrecpe_f32(COERCE_UNSIGNED_INT(v52 + v52));
                  v55 = vmul_f32(v54, vrecps_f32(COERCE_UNSIGNED_INT(v52 + v52), v54));
                  v66 = vmul_f32(v55, vrecps_f32(COERCE_UNSIGNED_INT(v52 + v52), v55)).f32[0];
                  v67 = (*(&v137 + 2) + *&v139) * v66;
                  v68 = (*(&v138 + 2) + *(&v139 + 1)) * v66;
                  v69 = v53 * 0.25;
                  v70 = *(&v137 + 1) - *&v138;
                }
              }

              else
              {
                v62 = sqrtf(*&v137 + ((1.0 - *(&v138 + 1)) - *(&v139 + 2)));
                *&v63 = v62 + v62;
                v64 = vrecpe_f32(v63);
                v65 = vmul_f32(v64, vrecps_f32(v63, v64));
                v66 = vmul_f32(v65, vrecps_f32(v63, v65)).f32[0];
                v67 = *&v63 * 0.25;
                v68 = (*(&v137 + 1) + *&v138) * v66;
                v69 = (*(&v137 + 2) + *&v139) * v66;
                v70 = *(&v138 + 2) - *(&v139 + 1);
              }

              v61 = v70 * v66;
            }

            v75 = vnegq_f32(v129);
            v76 = vtrn2q_s32(v129, vtrn1q_s32(v129, v75));
            v77 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v129, v75, 8uLL), v68), vextq_s8(v76, v76, 8uLL), v67);
            v78 = vrev64q_s32(v129);
            v78.i32[0] = v75.i32[1];
            v78.i32[3] = v75.i32[2];
            v32 = vaddq_f32(v77, vmlaq_n_f32(vmulq_n_f32(v129, v61), v78, v69));
            v23 = *v27;
          }

          v79 = v42;
          v80 = v35;
          v81 = v34;
          v82 = vmulq_f32(v43, v31);
          v83 = vnegq_f32(v82);
          v84 = vtrn2q_s32(v82, vtrn1q_s32(v82, v83));
          v85 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v82, v83, 8uLL), v80), vextq_s8(v84, v84, 8uLL), v79);
          v86 = vrev64q_s32(v82);
          v86.i32[0] = v83.i32[1];
          v86.i32[3] = v83.i32[2];
          v87 = vmlaq_n_f32(v85, v86, v81);
          v88 = vnegq_f32(v87);
          v89 = vtrn2q_s32(v87, vtrn1q_s32(v87, v88));
          v90 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v87, v88, 8uLL), *v43.f32, 1), vextq_s8(v89, v89, 8uLL), v43.f32[0]);
          v91 = vrev64q_s32(v87);
          v91.i32[0] = v88.i32[1];
          v91.i32[3] = v88.i32[2];
          v92 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v87, v43, 3), v91, v43, 2), v90);
          v93 = vmulq_f32(v32, v31);
          v94 = vnegq_f32(v93);
          v95 = vtrn2q_s32(v93, vtrn1q_s32(v93, v94));
          v96 = vmulq_lane_f32(vextq_s8(v93, v94, 8uLL), *v92.f32, 1);
          v97 = vrev64q_s32(v93);
          v97.i32[0] = v94.i32[1];
          v97.i32[3] = v94.i32[2];
          v98 = vmlaq_laneq_f32(vmlaq_n_f32(v96, vextq_s8(v95, v95, 8uLL), v92.f32[0]), v97, v92, 2);
          v99 = vnegq_f32(v98);
          v100 = vtrn2q_s32(v98, vtrn1q_s32(v98, v99));
          v101 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v98, v99, 8uLL), *v32.f32, 1), vextq_s8(v100, v100, 8uLL), v32.f32[0]);
          v102 = vrev64q_s32(v98);
          v102.i32[0] = v99.i32[1];
          v102.i32[3] = v99.i32[2];
          v103 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v98, v32, 3), v102, v32, 2), v101);
          v102.f32[0] = v33 - v20;
          v22 = vmlaq_n_f32(v22, v21, v102.f32[0]);
          v21 = vmlaq_n_f32(v21, v103, v102.f32[0]);
          v26 = 1;
        }

        v24 += 136;
        if (v24 - v23 == 4080)
        {
          v104 = v27[1];
          ++v27;
          v23 = v104;
          v24 = v104;
        }

        v20 = v33;
      }

      while (v24 != v25);
    }
  }

  v105 = a2[5];
  *(a3 + 4) = a2[4];
  *(a3 + 5) = v105;
  v106 = a2[7];
  *(a3 + 6) = a2[6];
  *(a3 + 7) = v106;
  v107 = a2[1];
  *a3 = *a2;
  *(a3 + 1) = v107;
  v108 = a2[3];
  *(a3 + 2) = a2[2];
  *(a3 + 3) = v108;
  v109 = *a2;
  v110 = a2[1];
  v111 = a2[3];
  if (*(a1 + 320) == 1)
  {
    *(a1 + 224) = a2[2];
    *(a1 + 240) = v111;
    *(a1 + 192) = v109;
    *(a1 + 208) = v110;
    v112 = a2[4];
    v113 = a2[5];
    v114 = a2[6];
    *(a1 + 304) = *(a2 + 14);
    *(a1 + 272) = v113;
    *(a1 + 288) = v114;
    *(a1 + 256) = v112;
  }

  else
  {
    *(a1 + 224) = a2[2];
    *(a1 + 240) = v111;
    *(a1 + 192) = v109;
    *(a1 + 208) = v110;
    v115 = a2[4];
    v116 = a2[5];
    v117 = a2[7];
    *(a1 + 288) = a2[6];
    *(a1 + 304) = v117;
    *(a1 + 256) = v115;
    *(a1 + 272) = v116;
    *(a1 + 320) = 1;
  }

  v22.i32[3] = 0;
  result = vaddq_f32(v119, v22);
  *(a3 + 1) = v122;
  *(a3 + 2) = v121;
  *(a3 + 3) = v120;
  *(a3 + 4) = result;
  *a3 = a4;
  return result;
}

double sub_1003B3E3C(float32x4_t _Q0)
{
  _S3 = _Q0.i32[1];
  _S5 = _Q0.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = _Q0.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (_Q0.f32[0] * _Q0.f32[1])) + (v10 + (_Q0.f32[0] * _Q0.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

uint64_t sub_1003B3EF4@<X0>(uint64_t result@<X0>, int8x16_t *a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 40);
  if (v3 && (v4 = *(result + 8), v5 = *(result + 32), v6 = (v4 + 8 * (v5 / 0x1E)), v7 = *v6, v8 = *v6 + 136 * (v5 % 0x1E), *v8 <= a3))
  {
    if (*(result + 16) != v4)
    {
      result = 30;
      while (v8 != *(v4 + 8 * ((v5 + v3) / 0x1E)) + 136 * ((v5 + v3) % 0x1E))
      {
        if (*v8 > a3)
        {
          v12 = *(v8 + 72);
          v13 = *(v8 + 56);
          goto LABEL_11;
        }

        v8 += 136;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }
    }

    v11 = *(v4 + 8 * ((v3 + v5 - 1) / 0x1E)) + 136 * ((v3 + v5 - 1) % 0x1E);
    v12 = *(v11 + 72);
    v13 = *(v11 + 56);
LABEL_11:
    v14 = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v12);
    *a2 = vextq_s8(v14, v14, 4uLL);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    a2->i8[0] = 0;
  }

  a2[1].i8[0] = v9;
  return result;
}

void sub_1003B4004(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1E;
  v3 = v1 - 30;
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
    sub_10016F098(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10016EC70(a1, &v9);
}

void sub_1003B418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003B41D8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1E)
  {
    a2 = 1;
  }

  if (v2 < 0x3C)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 30;
  }

  return v4 ^ 1u;
}

uint64_t sub_1003B4238(uint64_t a1, __n128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009A9410;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  sub_100400618(a1 + 584, a2);
  return a1;
}

void sub_1003B4330(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C923C();
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 56) == 1)
  {
    sub_1003B4B60(a1, buf);
    *(a2 + 136) = *buf;
    *(a2 + 145) = *&buf[9];
    if ((*(a1 + 56) & 1) == 0)
    {
      sub_1000195BC();
    }

    v4 = 0.2;
    if (!*(a1 + 40))
    {
      v4 = 0.1;
    }

    v5 = *(a1 + 48) + v4;
    if (*(a1 + 448) == 1 && *(a1 + 312) == 1)
    {
      v47 = v5 - *(a1 + 320);
      if (v47 <= 6.3)
      {
        v17 = v5 - *(a1 + 304);
        if (v17 > 409.5)
        {
          v17 = 409.5;
        }

        v37 = v17;
        __xb = *(a1 + 384);
        v18 = fmod(round(*&__xb.i32[1] / 0.1) * 0.1 + 25.6, 51.2);
        if (v18 < 0.0)
        {
          v18 = v18 + 51.2;
        }

        v19 = v18 + -25.6;
        v20.f64[0] = v37;
        v20.f64[1] = v47;
        v50 = vdupq_n_s64(0x3FB999999999999AuLL);
        v38 = vmulq_f64(vrndaq_f64(vdivq_f64(v20, v50)), v50);
        v35 = fmod(v38.f64[1], 6.4);
        v21.f64[0] = fmod(v38.f64[0], 409.6);
        v21.f64[1] = v35;
        *(a2 + 24) = vaddq_f64(vbslq_s8(vcgezq_f64(v21), v21, vaddq_f64(v21, xmmword_10056F120)), 0);
        *(a2 + 40) = 0;
        LODWORD(v21.f64[0]) = vextq_s8(__xb, __xb, 8uLL).u32[0];
        HIDWORD(v21.f64[0]) = __xb.i32[0];
        __xe = vaddq_f64(vmulq_f64(vrndaq_f64(vdivq_f64(vcvtq_f64_f32(*&v21.f64[0]), v50)), v50), vdupq_n_s64(0x407999999999999AuLL));
        v50.i64[0] = fmod(__xe.f64[1], 819.2);
        v22.f64[0] = fmod(__xe.f64[0], 819.2);
        *&v22.f64[1] = v50.i64[0];
        *(a2 + 72) = 1;
        *(a2 + 48) = vaddq_f64(vbslq_s8(vcgezq_f64(v22), v22, vaddq_f64(v22, vdupq_n_s64(0x408999999999999AuLL))), vdupq_n_s64(0xC07999999999999ALL));
        *(a2 + 64) = v19;
        goto LABEL_38;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C9278();
      }
    }

    if ((*(a1 + 576) & 1) == 0)
    {
LABEL_29:
      if (*(a1 + 568))
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C9360();
        }

        if (v5 - *(a1 + 544) <= 6.3)
        {
          v23.f64[0] = v5 - *(a1 + 536);
          if (v23.f64[0] > 409.5)
          {
            v23.f64[0] = 409.5;
          }

          v23.f64[1] = v5 - *(a1 + 544);
          v24 = vdupq_n_s64(0x3FB999999999999AuLL);
          v51 = vmulq_f64(vrndaq_f64(vdivq_f64(v23, v24)), v24);
          __xf = fmod(*&v51.i64[1], 6.4);
          v25.f64[0] = fmod(*v51.i64, 409.6);
          v25.f64[1] = __xf;
          *(a2 + 80) = vaddq_f64(vbslq_s8(vcgezq_f64(v25), v25, vaddq_f64(v25, xmmword_10056F120)), 0);
          v26 = vdupq_n_s64(0x3FA999999999999AuLL);
          v52 = vaddq_f64(vmulq_f64(vrndaq_f64(vdivq_f64(*(a1 + 552), v26)), v26), vdupq_n_s64(0x401999999999999AuLL));
          __xg = fmod(*&v52.i64[1], 12.8);
          v27.f64[0] = fmod(*v52.i64, 12.8);
          v27.f64[1] = __xg;
          *(a2 + 96) = vaddq_f64(vbslq_s8(vcgezq_f64(v27), v27, vaddq_f64(v27, vdupq_n_s64(0x402999999999999AuLL))), vdupq_n_s64(0xC01999999999999ALL));
          *(a2 + 112) = 1;
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C93F0();
        }
      }

      goto LABEL_38;
    }

    v6 = *(a1 + 464);
    v7 = *(a1 + 472);
    v8 = v5 - v7;
    if (v5 - v7 > 409.5)
    {
      v8 = 409.5;
    }

    __x = v8;
    v9 = qword_1009F9820;
    v10 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
    v11 = v5 - v6;
    if (v5 - v6 > 6.3)
    {
      if (v10)
      {
        sub_1004C92EC();
      }

      goto LABEL_29;
    }

    if (v10)
    {
      *buf = 134218496;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      *&buf[22] = 2048;
      *&buf[24] = v5;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#findalgs-findee, Providing PDR displacement, enter time: %f, applicable time: %f, transmission time: %f", buf, 0x20u);
      v11 = v5 - v6;
    }

    v12.f64[0] = __x;
    v12.f64[1] = v11;
    v48 = vdupq_n_s64(0x3FB999999999999AuLL);
    __xa = vdivq_f64(v12, v48);
    v13 = fmod(round(*(a1 + 520) / 0.1) * 0.1 + 25.6, 51.2);
    if (v13 < 0.0)
    {
      v13 = v13 + 51.2;
    }

    v14 = v13 + -25.6;
    __xc = vmulq_f64(vrndaq_f64(__xa), v48);
    v36 = fmod(__xc.f64[1], 6.4);
    v15.f64[0] = fmod(__xc.f64[0], 409.6);
    v15.f64[1] = v36;
    *(a2 + 24) = vaddq_f64(vbslq_s8(vcgezq_f64(v15), v15, vaddq_f64(v15, xmmword_10056F120)), 0);
    *(a2 + 40) = 1;
    __xd = vaddq_f64(vmulq_f64(vrndaq_f64(vdivq_f64(*(a1 + 504), v48)), v48), vdupq_n_s64(0x407999999999999AuLL));
    v49 = fmod(__xd.f64[1], 819.2);
    v16.f64[0] = fmod(__xd.f64[0], 819.2);
    v16.f64[1] = v49;
    *(a2 + 48) = vaddq_f64(vbslq_s8(vcgezq_f64(v16), v16, vaddq_f64(v16, vdupq_n_s64(0x408999999999999AuLL))), vdupq_n_s64(0xC07999999999999ALL));
    *(a2 + 64) = v14;
    *(a2 + 72) = 1;
LABEL_38:
    if (*(a1 + 248) == 1)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004C9518();
      }

      v28 = 0;
      v29 = 232;
    }

    else
    {
      v30 = *(a1 + 296);
      if (*(a1 + 272))
      {
        if (!*(a1 + 296))
        {
LABEL_59:
          if (*(a1 + 32) == 1)
          {
            v34 = *(a1 + 8);
            v54 = 6;
            strcpy(__p, "Findee");
            *(a2 + 168) = sub_100400728(a1 + 584, __p, v34) | 0x100;
            if (v54 < 0)
            {
              operator delete(__p[0]);
            }
          }

          return;
        }

        v28 = 2;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C9464();
        }
      }

      else
      {
        v31 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
        if (v30)
        {
          if (v31)
          {
            sub_1004C94DC();
          }

          v28 = 1;
        }

        else
        {
          if (v31)
          {
            sub_1004C94A0();
          }

          v28 = 2;
        }
      }

      v29 = 288;
    }

    v32 = v5 - *(a1 + v29);
    if (v32 > 409.5)
    {
      v32 = 409.5;
    }

    v33 = fmod(round(v32 / 0.1) * 0.1, 409.6);
    if (v33 < 0.0)
    {
      v33 = v33 + 409.6;
    }

    *a2 = v33 + 0.0;
    *(a2 + 8) = v28;
    *(a2 + 16) = 1;
    goto LABEL_59;
  }
}

void sub_1003B4B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B4B60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 168) != 1 || (*(a1 + 32) & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = 0.0;
  sub_1003FD0A8(a1, &v16, *(a1 + 80));
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C9554();
    }

    goto LABEL_16;
  }

  v5 = vabdd_f64(*(a1 + 8), v16);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9594();
  }

  v6 = 0.0;
  if (v5 > 1.0)
  {
    if ((*(a1 + 168) & 1) == 0)
    {
      sub_1000195BC();
    }

    v7 = *(a1 + 104);
    if (v7 <= 3.0)
    {
      v6 = (v5 + -1.0) * fmax(v7, 2.0);
      v9 = *(a1 + 120);
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#findalgs-findee, #clcc,findee location speed exceeds a brisk walking pace,inflating uncertainty before transmitting,%.1lf", &buf, 0xCu);
      }

      v9 = *(a1 + 120);
      v6 = 200.0 - v9;
    }

    if (v6 + v9 > 200.0)
    {
LABEL_16:
      *a2 = 0;
      *(a2 + 24) = 0;
      return;
    }
  }

  *&buf = sub_1000422B8(*(a1 + 64));
  *(&buf + 1) = sub_1000422B8(*(a1 + 72));
  v10 = sub_100412E44(&buf);
  v12 = v11;
  v13 = sub_100413024(v6 + *(a1 + 120));
  v14 = 0x407FF00000000000;
  if (v10 <= 511.0)
  {
    if (v10 >= -512.0)
    {
      v15 = *&v10;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C9608();
      }

      v15 = 0xC080000000000000;
    }
  }

  else
  {
    v15 = 0x407FF00000000000;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C9674();
    }
  }

  if (v12 <= 511.0)
  {
    if (v12 >= -512.0)
    {
      v14 = *&v12;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C96E0();
      }

      v14 = 0xC080000000000000;
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C974C();
  }

  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13;
  *(a2 + 24) = 1;
}

void sub_1003B4E58(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C97B8();
  }

  *(a1 + 48) = *(a2 + 8);
  *(a1 + 56) = 1;
  if (*(a2 + 183))
  {
    if (*(a2 + 182) == 1)
    {
      if ((*(a1 + 40) & 1) == 0)
      {
        v4 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, process Range: Setting reduced range rate to true", buf, 2u);
        }
      }

      *(a1 + 40) = 1;
    }

    else
    {
      if (*(a1 + 40))
      {
        v5 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, process Range: Setting reduced range rate to false", v6, 2u);
        }
      }

      *(a1 + 40) = 0;
    }
  }

  else
  {
    *(a1 + 40) = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C9840();
    }
  }
}

void sub_1003B4F94(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9880();
  }

  *(a1 + 48) = *a2;
  *(a1 + 56) = 1;
  v4 = *(a1 + 40);
  if (*(a2 + 10) == 1)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, process missedRange: Setting reduced range rate to true", buf, 2u);
      }
    }

    v4 = 1;
  }

  else if (*(a1 + 40))
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, process missedRange: Setting reduced range rate to false", v7, 2u);
    }

    v4 = 0;
  }

  *(a1 + 40) = v4;
}

void sub_1003B50A4(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C98F8();
  }

  if (*(a1 + 448) != 1)
  {
    if ((*(a2 + 84) & 1) == 0 && *(a2 + 20) == 2)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[3];
      *(a1 + 352) = a2[2];
      *(a1 + 368) = v12;
      *(a1 + 320) = v10;
      *(a1 + 336) = v11;
      v13 = a2[4];
      v14 = a2[5];
      v15 = a2[7];
      *(a1 + 416) = a2[6];
      *(a1 + 432) = v15;
      *(a1 + 384) = v13;
      *(a1 + 400) = v14;
      *(a1 + 448) = 1;
LABEL_11:
      if ((*(a1 + 312) & 1) == 0)
      {
        *(a1 + 304) = *a2;
        *(a1 + 312) = 1;
      }

      return;
    }

    goto LABEL_13;
  }

  if (*a2 > *(a1 + 320))
  {
    if ((*(a2 + 84) & 1) == 0 && *(a2 + 20) == 2)
    {
      v4 = *a2;
      v5 = a2[1];
      v6 = a2[3];
      *(a1 + 352) = a2[2];
      *(a1 + 368) = v6;
      *(a1 + 320) = v4;
      *(a1 + 336) = v5;
      v7 = a2[4];
      v8 = a2[5];
      v9 = a2[6];
      *(a1 + 432) = *(a2 + 14);
      *(a1 + 400) = v8;
      *(a1 + 416) = v9;
      *(a1 + 384) = v7;
      goto LABEL_11;
    }

LABEL_13:
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, Encountered a disruption in VIO tracking.  Resetting.  ", v17, 2u);
    }

    if (*(a1 + 312) == 1)
    {
      *(a1 + 312) = 0;
    }

    if (*(a1 + 448) == 1)
    {
      *(a1 + 448) = 0;
    }

    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C9934();
  }
}

void sub_1003B5240(uint64_t a1, unint64_t *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C99A0();
  }

  v4.n128_u64[0] = *a2;
  if (*(a1 + 240) == 1)
  {
    *(a1 + 224) = v4.n128_u64[0];
  }

  sub_1003B5338(a1, v4);
  if (*(a1 + 448) == 1 && *a2 - *(a1 + 320) > 0.5)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, Too much time since last pose was seen.  Resetting.  ", v6, 2u);
    }

    if (*(a1 + 312) == 1)
    {
      *(a1 + 312) = 0;
    }

    if (*(a1 + 448) == 1)
    {
      *(a1 + 448) = 0;
    }
  }
}

void sub_1003B5338(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  sub_1003B5808(a1, a2.n128_f64[0], 30.0);
  v4 = *(a1 + 192);
  if (v4)
  {
    v5 = (a1 + 184);
    if (*(a1 + 216) == 1)
    {
      v6 = *(a1 + 184);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *(v6 + 8);
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

        while (v8);
      }

      if (*(v7 + 40) - *(a1 + 208) >= 16)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C99DC();
        }

LABEL_18:
        LOBYTE(v4) = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v9 = *v5;
      if (*v5)
      {
        v10 = *v5;
        do
        {
          v11 = v10;
          v10 = *(v10 + 8);
        }

        while (v10);
      }

      else
      {
        v12 = a1 + 184;
        do
        {
          v11 = *(v12 + 16);
          v8 = *v11 == v12;
          v12 = v11;
        }

        while (v8);
      }

      if (*(v11 + 40) >= 16)
      {
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          if (v9)
          {
            do
            {
              v17 = v9;
              v9 = *(v9 + 8);
            }

            while (v9);
          }

          else
          {
            do
            {
              v17 = v5[2];
              v8 = *v17 == v5;
              v5 = v17;
            }

            while (v8);
          }

          v18 = *(v17 + 40);
          v19[0] = 67109120;
          v19[1] = v18;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#findalgs-findee, Walking set to true, step count seen: %d", v19, 8u);
        }

        goto LABEL_18;
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_20:
  v14 = v4 | *(a1 + 249);
  if (*(a1 + 296) == 1)
  {
    v15 = *(a1 + 272);
    v16 = v14 & 1;
    *(a1 + 280) = v2;
    if (v15 != v16)
    {
      *(a1 + 288) = v2;
    }
  }

  else
  {
    *(a1 + 280) = v2;
    *(a1 + 288) = v2;
    *(a1 + 296) = 1;
    LOBYTE(v16) = v14 & 1;
  }

  *(a1 + 272) = v16;
}

void sub_1003B553C()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9A50();
  }
}

__n128 sub_1003B5580(uint64_t a1, __int128 *a2, int a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9A8C();
    if (a3)
    {
LABEL_3:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C9AC8();
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  if (*(a2 + 23) == 1)
  {
    v7 = *a2;
    v8 = a2[2];
    if (*(a1 + 168) == 1)
    {
      *(a1 + 80) = a2[1];
      *(a1 + 96) = v8;
      *(a1 + 64) = v7;
      result = a2[3];
      v9 = a2[4];
      v10 = a2[5];
      *(a1 + 160) = *(a2 + 24);
      *(a1 + 128) = v9;
      *(a1 + 144) = v10;
      *(a1 + 112) = result;
    }

    else
    {
      *(a1 + 80) = a2[1];
      *(a1 + 96) = v8;
      *(a1 + 64) = v7;
      result = a2[3];
      v11 = a2[4];
      v12 = a2[5];
      *(a1 + 160) = *(a2 + 12);
      *(a1 + 128) = v11;
      *(a1 + 144) = v12;
      *(a1 + 112) = result;
      *(a1 + 168) = 1;
    }
  }

  return result;
}

void sub_1003B5678(uint64_t a1, char **a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9B08();
  }

  if (*(a1 + 32) == 1)
  {
    sub_10040068C(a1 + 584, a2, *(a1 + 8));
  }
}

void sub_1003B56E8(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9B44();
  }

  v4 = *(a2 + 16);
  v5 = *(a1 + 248);
  v12 = 0.0;
  sub_1003FD084(a1, &v12, *a2);
  v7 = v12;
  if (v4 != v5)
  {
    v8 = *(a1 + 240);
    *(a1 + 224) = v12;
    *(a1 + 232) = v7;
    if ((v8 & 1) == 0)
    {
      *(a1 + 240) = 1;
    }

    v9 = *(a2 + 16);
    *(a1 + 248) = v9;
    if (v9 == 1)
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, Clearing step history because motion activity changed to stationary", v11, 2u);
        v7 = v12;
      }

      sub_1003B5808(a1, v7, 0.0);
      v7 = v12;
    }
  }

  *(a1 + 249) = *(a2 + 18);
  v6.n128_f64[0] = v7;
  sub_1003B5338(a1, v6);
}

void sub_1003B5808(uint64_t a1, double a2, double a3)
{
  v4 = (a1 + 176);
  v3 = *(a1 + 176);
  v5 = (a1 + 184);
  if (v3 != (a1 + 184))
  {
    do
    {
      v9 = *(v3 + 4);
      if (a2 - v9 <= a3)
      {
        break;
      }

      v10 = *(v3 + 10);
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v15 = v9;
        v16 = 1024;
        v17 = v10;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#findalgs-findee, removing step time: %f, step count: %d", buf, 0x12u);
      }

      v12 = *(a1 + 216);
      *(a1 + 200) = v9;
      *(a1 + 208) = v10;
      if ((v12 & 1) == 0)
      {
        *(a1 + 216) = 1;
      }

      v13 = *v4;
      sub_100037488(v4, *v4);
      operator delete(v13);
      v3 = *v4;
    }

    while (*v4 != v5);
  }
}

void sub_1003B596C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9B80();
  }

  if (*(a2 + 32) == 1 && (*(a2 + 48) & 1) != 0)
  {
    *(a1 + 576) = 1;
    v4 = (a1 + 504);
    if ((*(a1 + 528) & 1) == 0)
    {
      *v4 = 0.0;
      *(a1 + 512) = 0;
      *(a1 + 520) = 0;
      *(a1 + 528) = 1;
      *v14 = 0;
      sub_1003FD084(a1, v14, *a2);
      v5 = *v14;
      v6 = *(a1 + 480);
      *(a1 + 464) = *v14;
      *(a1 + 472) = v5;
      if ((v6 & 1) == 0)
      {
        *(a1 + 480) = 1;
      }
    }

    if (*(a1 + 496) == 1)
    {
      *(a1 + 496) = 0;
    }

    if (*(a2 + 32) & 1) != 0 && (*(a1 + 528))
    {
      v7 = *(a2 + 24) + *v4;
      *v4 = v7;
      if (*(a2 + 48))
      {
        v8 = *(a2 + 40) + *(a1 + 512);
        *(a1 + 512) = v8;
        if (*(a2 + 64) == 1)
        {
          *(a1 + 520) = *(a2 + 56) + *(a1 + 520);
        }

        v9 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 134218240;
          *&v14[4] = v7;
          v15 = 2048;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#findalgs-findee, integrated PDR, H1 pos: %f, H2 pos: %f", v14, 0x16u);
        }

        *v14 = 0;
        sub_1003FD084(a1, v14, *a2);
        v10 = *(a1 + 480);
        *(a1 + 464) = *v14;
        if ((v10 & 1) == 0)
        {
          *(a1 + 480) = 1;
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C9C34();
        }

        return;
      }
    }

LABEL_39:
    sub_1000195BC();
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9BBC();
  }

  if (*(a2 + 80) == 1 && *(a2 + 96) == 1 && (*(a2 + 112) & 1) != 0)
  {
    *(a1 + 576) = 0;
    if ((*(a1 + 496) & 1) == 0)
    {
      *v14 = 0;
      sub_1003FD084(a1, v14, *a2);
      *(a1 + 488) = *v14;
      *(a1 + 496) = 1;
    }

    *v14 = 0;
    sub_1003FD084(a1, v14, *a2);
    if (*(a1 + 568))
    {
      if (*(a2 + 80))
      {
        *(a1 + 552) = *(a2 + 72) + *(a1 + 552);
        if (*(a2 + 96))
        {
          *(a1 + 560) = *(a2 + 88) + *(a1 + 560);
          *(a1 + 544) = *v14;
          return;
        }
      }
    }

    else if (*(a1 + 496) & 1) != 0 && (*(a2 + 80) & 1) != 0 && (*(a2 + 96))
    {
      v11 = *v14;
      v12 = *(a2 + 72);
      v13 = *(a2 + 88);
      *(a1 + 536) = *(a1 + 488);
      *(a1 + 544) = v11;
      *(a1 + 552) = v12;
      *(a1 + 560) = v13;
      *(a1 + 568) = 1;
      return;
    }

    goto LABEL_39;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9BF8();
  }
}

void sub_1003B5C98()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9CAC();
  }
}

void sub_1003B5CDC(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9CE8();
  }

  v12 = 0.0;
  sub_1003FD0A8(a1, &v12, *(a2 + 8));
  if (*(a1 + 192))
  {
    v5 = *(a1 + 184);
    if (v5)
    {
      v6 = *(a1 + 184);
      do
      {
        v7 = v6;
        v6 = *(v6 + 8);
      }

      while (v6);
    }

    else
    {
      v8 = a1 + 184;
      do
      {
        v7 = *(v8 + 16);
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (v9);
    }

    if (*(a2 + 16) < *(v7 + 40))
    {
      sub_10002074C(a1 + 176, v5);
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 176) = a1 + 184;
      if (*(a1 + 216) == 1)
      {
        *(a1 + 216) = 0;
      }
    }
  }

  LODWORD(v4) = *(a2 + 16);
  v11[0] = v12;
  v11[1] = v4;
  sub_1003B5F78(a1 + 176, v11, v11);
  *(a1 + 256) = *(a1 + 8);
  *(a1 + 264) = 1;
  v10.n128_f64[0] = v12;
  sub_1003B5338(a1, v10);
}

void sub_1003B5DF8()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C9D24();
  }
}

void sub_1003B5ED8(uint64_t a1)
{
  sub_1003B5F10(a1);

  operator delete();
}

uint64_t sub_1003B5F10(uint64_t a1)
{
  *a1 = off_1009A9410;
  if (*(a1 + 616) == 1)
  {
    v2 = *(a1 + 584);
    if (v2)
    {
      *(a1 + 592) = v2;
      operator delete(v2);
    }
  }

  sub_10002074C(a1 + 176, *(a1 + 184));
  return a1;
}

uint64_t *sub_1003B5F78(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 4);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v3;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1003B6060(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1003BC2BC(a1, qword_1009F7D08, qword_1009F7D10, (qword_1009F7D10 - qword_1009F7D08) >> 4);
  *(a1 + 72) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = 0x100000003;
  *(a1 + 88) = 0;
  *(a1 + 96) = off_1009A8F78;
  *(a1 + 104) = xmmword_10056EDA0;
  *(a1 + 128) = a1 + 136;
  sub_1003A8C00((a1 + 96), 3, 1);
  sub_1003A8C50(a1 + 96, 0.0);
  *(a1 + 184) = 0x100000003;
  *(a1 + 160) = off_1009A8F78;
  *(a1 + 168) = xmmword_10056EDA0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0x100000003;
  *(a1 + 240) = off_1009A8F78;
  *(a1 + 248) = xmmword_10056EDA0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0x3FF0000000000000;
  *(a1 + 336) = xmmword_10056F1D0;
  *(a1 + 352) = 1;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  v18 = 0x100000003;
  *buf = off_1009A8F78;
  v17 = xmmword_10056EDA0;
  v19 = &v20;
  sub_1003A8C00(buf, 3, 1);
  sub_1003A8C50(buf, 0.0);
  v13 = 0x100000003;
  v11 = off_1009A8F78;
  v12 = xmmword_10056EDA0;
  v14 = &v15;
  sub_1003A8C00(&v11, 3, 1);
  sub_1003A8C50(&v11, 0.0);
  sub_1003BB924(a1 + 384, buf, &v11, 0, 0.0, 0.0, 0.0, 0.0);
  v6 = 0;
  *(a1 + 560) = 257;
  *(a1 + 562) = 0;
  *(a1 + 565) = 0;
  *(a1 + 576) = 0x1000000032;
  *(a1 + 584) = 0x3F847AE147AE147BLL;
  *(a1 + 624) = 1;
  *(a1 + 592) = xmmword_10056F1E0;
  *(a1 + 608) = xmmword_10056F1F0;
  do
  {
    *sub_1003AFDBC(a1 + 240, v6++) = 0;
  }

  while (v6 != 3);
  sub_1003B64F4((a1 + 360), 4uLL);
  v7 = &qword_1009F7D20;
  if (a2)
  {
    v8 = &qword_1009F7D08;
  }

  else
  {
    v8 = &qword_1009F7D20;
  }

  if (v8 != a1)
  {
    if (a2)
    {
      v7 = &qword_1009F7D08;
    }

    sub_100357D3C(a1, *v8, v7[1], (v7[1] - *v8) >> 4);
  }

  *(a1 + 624) = a3;
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v17) = 1024;
    *(&v17 + 2) = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,SyntheticApertureBatchFilterWithFindeeVIO constructed. Strict box span requirement %d, third party behavior %d", buf, 0xEu);
  }

  return a1;
}

void sub_1003B63FC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1003BC38C(va);
  *v22 = off_1009991A0;
  *a10 = off_1009991A0;
  *v21 = off_1009991A0;
  sub_1003BC338(va);
  v25 = *v23;
  if (*v23)
  {
    *(v20 + 48) = v25;
    operator delete(v25);
  }

  v26 = *v20;
  if (*v20)
  {
    *(v20 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1003B64F4(uint64_t *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x1745D1745D1745ELL)
    {
      sub_1003BC404(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003B65C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003BC5C0(va);
  _Unwind_Resume(a1);
}

double sub_1003B65E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if (*(a1 + 224) < a3)
  {
    *(a1 + 224) = a3;
    *sub_1003AFDBC(a1 + 96, 0) = a4;
    *sub_1003AFDBC(a1 + 96, 1) = a5;
    *sub_1003AFDBC(a1 + 96, 2) = a6;
    if (*(a1 + 562) == 1)
    {
      sub_1003B66BC(a1);
      sub_1003B6C78(a1);
    }
  }

  *a2 = *(a1 + 24);
  *(a2 + 5) = *(a1 + 29);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  sub_1003BB9A8((a2 + 16), *(a1 + 40), *(a1 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 6));
  result = *(a1 + 64);
  *(a2 + 40) = result;
  return result;
}

void sub_1003B66BC(uint64_t a1)
{
  *(a1 + 564) = 0;
  *(a1 + 568) = 0;
  if (*(a1 + 562) == 1)
  {
    v66 = 0x100000003;
    v64 = off_1009A8F78;
    v65 = xmmword_10056EDA0;
    v67 = &v68;
    sub_1004153BC(*(a1 + 72), a1 + 160, &v64);
    v61 = 0x100000003;
    v60 = xmmword_10056EDA0;
    v59 = off_1009A8F78;
    v62 = &v63;
    sub_1003A920C(&v64, a1 + 96, &v59);
    v2 = sub_1002EB67C(&v59, 0);
    v3 = sub_1002EB67C(&v59, 0);
    v4 = sub_1002EB67C(&v59, 2);
    if (sqrt(v4 * sub_1002EB67C(&v59, 2) + v2 * v3) <= 2.0)
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      if (v5 == v6)
      {
        goto LABEL_20;
      }

      v7 = xmmword_10056EDC0;
      v37 = 1;
      do
      {
        v56 = 0x100000003;
        v54 = off_1009A8F78;
        v55 = xmmword_10056EDA0;
        v57 = &v58;
        v51 = 0x400000003;
        v49 = off_1009A9008;
        v50 = v7;
        v52 = v53;
        sub_100415650(v5, a1 + 160, &v54, &v49);
        v41 = 0x400000003;
        v40 = xmmword_10056EDC0;
        __src = off_1009A9008;
        v42 = &v43;
        v8 = v5 + 136;
        sub_1003A90A8(&v49, v8, &__src);
        sub_1003A9510(v38, DWORD1(v50), v50);
        sub_1003A9464(&v49, v38);
        v46 = 0x300000003;
        v45 = xmmword_10056EDB0;
        v44 = off_1009A8FC0;
        v47 = &v48;
        sub_1003A90A8(&__src, v38, &v44);
        v9 = sub_1002EB6B8(&v44, 1, 1);
        v10 = *sub_1003AFDBC(&v54, 1);
        v11 = sub_1003AFDBC(a1 + 96, 1);
        v12 = sqrt(v9);
        v13 = v10 - *v11;
        v14 = v12 + v13;
        v15 = v13 - v12;
        v16 = v15 > -2.5 || v14 < -2.5;
        if (v16 && (v15 <= 2.5 ? (v17 = v14 < 2.5) : (v17 = 1), v17))
        {
          v18 = 0;
        }

        else
        {
          v37 = 0;
          v18 = 1;
        }

        v7 = xmmword_10056EDC0;
        if (v18)
        {
          break;
        }

        v5 = v8 + 424;
      }

      while (v5 != v6);
      if (v37)
      {
LABEL_20:
        *(a1 + 564) = 1;
      }
    }

    v19 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 368) - *(a1 + 360)) >> 4);
    __src = 0;
    v40 = 0uLL;
    sub_1003BB884(&__src, v19);
    v20 = *(a1 + 360);
    for (i = *(a1 + 368); v20 != i; v20 += 176)
    {
      v51 = 0x100000003;
      v49 = off_1009A8F78;
      v50 = xmmword_10056EDA0;
      v52 = v53;
      sub_1003A920C(&v64, v20 + 40, &v49);
      v22 = sub_1002EB67C(&v49, 0);
      v23 = sub_1002EB67C(&v49, 2);
      if ((*(a1 + 624) & 1) != 0 || sqrt(v23 * v23 + v22 * v22) <= 4.0)
      {
        v24 = sub_1002EB67C(&v49, 1);
        v25 = v40;
        if (v40 >= *(&v40 + 1))
        {
          v27 = __src;
          v28 = v40 - __src;
          v29 = (v40 - __src) >> 3;
          v30 = v29 + 1;
          if ((v29 + 1) >> 61)
          {
            sub_100019B38();
          }

          v31 = *(&v40 + 1) - __src;
          if ((*(&v40 + 1) - __src) >> 2 > v30)
          {
            v30 = v31 >> 2;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF8)
          {
            v32 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            sub_100012564(&__src, v32);
          }

          *(8 * v29) = v24;
          v26 = 8 * v29 + 8;
          memcpy(0, v27, v28);
          v33 = __src;
          __src = 0;
          v40 = v26;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v40 = v24;
          v26 = v25 + 8;
        }

        *&v40 = v26;
      }
    }

    v34 = __src;
    if (__src != v40)
    {
      LOBYTE(v38[0]) = 0;
      v35 = sub_10016D8D4(__src, v40);
      if (*v36 - *v35 >= 0.5)
      {
        *(a1 + 564) = 2;
        *(a1 + 568) = 1;
      }

      v34 = __src;
    }

    if (v34)
    {
      *&v40 = v34;
      operator delete(v34);
    }
  }
}

void sub_1003B6C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B6C78(uint64_t a1)
{
  *v65 = 0;
  v65[4] = 0;
  *&v65[8] = 0;
  *__p = 0u;
  v67 = 0u;
  v65[12] = 0;
  if (*(a1 + 563) == 1)
  {
    v2 = 6;
LABEL_3:
    *v65 = v2;
    goto LABEL_4;
  }

  if (*(a1 + 560) == 1)
  {
    if ((*(a1 + 561) & 1) == 0)
    {
      v2 = 1;
      goto LABEL_3;
    }
  }

  else
  {
    if (*(a1 + 561))
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 336);
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Linear user path length is %4.2f m", buf, 0xCu);
      }

      if (*(a1 + 336) >= 1.5)
      {
        v2 = 3;
      }

      else
      {
        v2 = 2;
      }

      goto LABEL_3;
    }

    if (*(a1 + 562) != 1)
    {
      v2 = 4;
      goto LABEL_3;
    }

    *v65 = 5;
    *&v65[8] = *(a1 + 564);
    v65[4] = *&v65[8] == 2;
    v6 = *(a1 + 72);
    for (i = *(a1 + 80); v6 != i; v6 += 560)
    {
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      *buf = 0u;
      LODWORD(v78) = 1;
      v79 = 0uLL;
      *(&v78 + 1) = 0;
      v62 = 0x100000003;
      v60 = off_1009A8F78;
      v61 = xmmword_10056EDA0;
      v63 = &v64;
      v57 = 0x400000003;
      v55 = off_1009A9008;
      v56 = xmmword_10056EDC0;
      v58 = &v59;
      sub_100415650(v6, a1 + 160, &v60, &v55);
      v52 = 0x100000003;
      v51 = xmmword_10056EDA0;
      v50 = off_1009A8F78;
      v53 = &v54;
      v47 = 0x300000003;
      v46 = xmmword_10056EDB0;
      v45 = off_1009A8FC0;
      v48 = &v49;
      v42 = 0x100000003;
      v41 = xmmword_10056EDA0;
      v40 = off_1009A8F78;
      v43 = v44;
      sub_1003A920C(&v60, a1 + 96, &v40);
      sub_100415D70(&v40, &v50, &v45);
      v42 = 0x400000003;
      v41 = xmmword_10056EDC0;
      v40 = off_1009A9008;
      v43 = v44;
      sub_1003A90A8(&v45, &v55, &v40);
      v32 = 0x400000003;
      v31 = xmmword_10056EDC0;
      v30 = off_1009A9008;
      v33 = v34;
      sub_1003A90A8(&v55, v6 + 136, &v30);
      sub_1003A9510(v29, DWORD1(v56), v56);
      sub_1003A9464(&v55, v29);
      v37 = 0x300000003;
      v36 = xmmword_10056EDB0;
      v35 = off_1009A8FC0;
      v38 = &v39;
      sub_1003A90A8(&v30, v29, &v35);
      v32 = 0x400000003;
      v31 = xmmword_10056EDC0;
      v30 = off_1009A9008;
      v33 = v34;
      sub_1003A90A8(&v40, v6 + 136, &v30);
      sub_1003A9510(v29, DWORD1(v41), v41);
      sub_1003A9464(&v40, v29);
      v26 = 0x300000003;
      v24 = off_1009A8FC0;
      v25 = xmmword_10056EDB0;
      v27 = &v28;
      sub_1003A90A8(&v30, v29, &v24);
      for (j = 0; j != 3; ++j)
      {
        *&buf[8 * j] = *sub_1003AFDBC(&v60, j);
      }

      *(&v69 + 1) = sub_1002EB6B8(&v35, 0, 0);
      *&v70 = sub_1002EB6B8(&v35, 0, 1);
      *(&v70 + 1) = sub_1002EB6B8(&v35, 0, 2);
      *&v71 = sub_1002EB6B8(&v35, 1, 1);
      *(&v71 + 1) = sub_1002EB6B8(&v35, 1, 2);
      *&v72 = sub_1002EB6B8(&v35, 2, 2);
      v8 = v36;
      if (v36 != DWORD1(v36))
      {
        __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
      }

      if (v36 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v10 = v10 + sub_1003BC8A4(&v35, v9, v9);
          ++v9;
        }

        while (v8 != v9);
      }

      v11 = *(v6 + 416);
      *(&v72 + 1) = sqrt(v10);
      *&v73 = v11;
      LODWORD(v78) = *(v6 + 424);
      *(&v73 + 1) = *sub_1003AFDBC(&v50, 0);
      *&v74 = *sub_1003AFDBC(&v50, 1);
      *(&v74 + 1) = *sub_1003AFDBC(&v50, 2);
      *&v75 = sqrt(sub_1002EB6B8(&v24, 0, 0));
      *(&v75 + 1) = sqrt(sub_1002EB6B8(&v24, 1, 1));
      v12 = 0;
      *&v76 = sqrt(sub_1002EB6B8(&v24, 2, 2));
      do
      {
        v13 = &buf[8 * v12];
        *(v13 + 17) = *sub_1003AFDBC(a1 + 96, v12);
        *(v13 + 21) = *sub_1003AFDBC(a1 + 160, v12++);
      }

      while (v12 != 3);
      v14 = __p[1];
      if (__p[1] >= v67)
      {
        v16 = __p[0];
        v17 = __p[1] - __p[0];
        v18 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 6);
        v19 = v18 + 1;
        if (v18 + 1 > 0x155555555555555)
        {
          sub_100019B38();
        }

        if (0x5555555555555556 * ((v67 - __p[0]) >> 6) > v19)
        {
          v19 = 0x5555555555555556 * ((v67 - __p[0]) >> 6);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v67 - __p[0]) >> 6) >= 0xAAAAAAAAAAAAAALL)
        {
          v19 = 0x155555555555555;
        }

        if (v19)
        {
          sub_1003BBA70(__p, v19);
        }

        v20 = ((__p[1] - __p[0]) >> 6 << 6);
        v20[8] = v76;
        v20[9] = v77;
        v20[10] = v78;
        v20[11] = v79;
        v20[4] = v72;
        v20[5] = v73;
        v20[6] = v74;
        v20[7] = v75;
        *v20 = *buf;
        v20[1] = v69;
        v20[2] = v70;
        v20[3] = v71;
        v15 = (192 * v18 + 192);
        v21 = (192 * v18 - v17);
        memcpy(v20 - v17, v16, v17);
        v22 = __p[0];
        __p[0] = v21;
        __p[1] = v15;
        *&v67 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *(__p[1] + 8) = v76;
        v14[9] = v77;
        v14[10] = v78;
        v14[11] = v79;
        v14[4] = v72;
        v14[5] = v73;
        v14[6] = v74;
        v14[7] = v75;
        *v14 = *buf;
        v14[1] = v69;
        v14[2] = v70;
        v14[3] = v71;
        v15 = v14 + 12;
      }

      __p[1] = v15;
      if ((*(a1 + 352) & 1) == 0)
      {
        sub_1000195BC();
      }

      *(&v67 + 1) = *(a1 + 344);
    }
  }

LABEL_4:
  v3 = __p[0];
  *(a1 + 24) = *v65;
  *(a1 + 29) = *&v65[5];
  if ((a1 + 24) != v65)
  {
    sub_1003BBAC8((a1 + 40), v3, __p[1], 0xAAAAAAAAAAAAAAABLL * ((__p[1] - v3) >> 6));
    v3 = __p[0];
  }

  *(a1 + 64) = *(&v67 + 1);
  if (v3)
  {
    __p[1] = v3;
    operator delete(v3);
  }
}

void sub_1003B7588(_Unwind_Exception *a1)
{
  v2 = STACK[0x480];
  if (STACK[0x480])
  {
    STACK[0x488] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

double sub_1003B75E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if (*(a1 + 232) < a3)
  {
    *(a1 + 232) = a3;
    *sub_1003AFDBC(a1 + 160, 0) = a4;
    *sub_1003AFDBC(a1 + 160, 1) = a5;
    *sub_1003AFDBC(a1 + 160, 2) = a6;
    sub_1003B66BC(a1);
    sub_1003B6C78(a1);
  }

  *a2 = *(a1 + 24);
  *(a2 + 5) = *(a1 + 29);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  sub_1003BB9A8((a2 + 16), *(a1 + 40), *(a1 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 6));
  result = *(a1 + 64);
  *(a2 + 40) = result;
  return result;
}

uint64_t *sub_1003B76B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 563) == 1)
  {
    *(a1 + 563) = 0;
    if (*(a1 + 360) != *(a1 + 368))
    {
      sub_1003B83F8(a1);
    }
  }

  v83 = 0x100000003;
  v82 = xmmword_10056EDA0;
  v81 = off_1009A8F78;
  v84 = &v85;
  sub_1003A8C00(&v81, 3, 1);
  sub_1003A8C50(&v81, 0.0);
  v78 = 0x100000004;
  v77 = xmmword_10056ED80;
  v76 = off_1009A8EE8;
  v79 = &v80;
  sub_1003A8C00(&v76, 4, 1);
  sub_1003A8C50(&v76, 0.0);
  v73 = 0x100000003;
  v72 = xmmword_10056EDA0;
  v71 = off_1009A8F78;
  v74 = &v75;
  sub_1003A8C00(&v71, 3, 1);
  sub_1003A8C50(&v71, 0.0);
  v6 = 0;
  v7 = (a2 + 152);
  do
  {
    v8 = *(v7 - 7);
    *sub_1003AFDBC(&v81, v6) = v8;
    v9 = *(v7 - 4);
    *sub_1003AFDBC(&v76, v6) = v9;
    v10 = *v7;
    *sub_1003AFDBC(&v71, v6++) = v10;
    ++v7;
  }

  while (v6 != 3);
  v11 = *(a2 + 144);
  *sub_1003AFDBC(&v76, 3) = v11;
  sub_10041511C(&v76, v70);
  v97 = 0x100000003;
  *&buf[8] = xmmword_10056EDA0;
  *buf = off_1009A8F78;
  v98 = v99;
  sub_1003A90A8(v70, a1 + 240, buf);
  v67 = 0x100000003;
  v65 = off_1009A8F78;
  v66 = xmmword_10056EDA0;
  v68 = &v69;
  sub_1003A8EBC(&v81, buf, &v65);
  v12 = *a2;
  *(a1 + 312) = *a2;
  if (v12 > *(a1 + 224))
  {
    sub_1003A8CFC(a1 + 96, &v81);
    v12 = *a2;
    *(a1 + 224) = *a2;
  }

  if (v12 > *(a1 + 232))
  {
    sub_1003A8CFC(a1 + 160, &v71);
    *(a1 + 232) = *a2;
  }

  v13 = *(a2 + 16);
  if (v13 <= 0.0 || *(a2 + 8) < -1.0)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C9D60(a2, v14, v13);
    }

    goto LABEL_70;
  }

  v15 = *(a1 + 368);
  if (v15 == *(a1 + 360))
  {
    goto LABEL_43;
  }

  v62 = 0x100000003;
  v60 = off_1009A8F78;
  v61 = xmmword_10056EDA0;
  v63 = v64;
  sub_1003A920C(&v65, v15 - 136, &v60);
  v93 = 0x100000003;
  v92 = xmmword_10056EDA0;
  v91 = off_1009A8F78;
  v94 = v95;
  v97 = 0x100000134;
  *&buf[8] = xmmword_10056EEA0;
  *buf = off_1009A9168;
  v98 = v99;
  v88 = 0x100000003;
  v87 = xmmword_10056EDA0;
  v86 = off_1009A8F78;
  v89 = v90;
  sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
  v17 = v16;
  v62 = 0x100000003;
  v60 = off_1009A8F78;
  v61 = xmmword_10056EDA0;
  v63 = v64;
  sub_1003A920C(a1 + 160, v15 - 64, &v60);
  v93 = 0x100000003;
  v92 = xmmword_10056EDA0;
  v91 = off_1009A8F78;
  v94 = v95;
  v97 = 0x100000134;
  *&buf[8] = xmmword_10056EEA0;
  *buf = off_1009A9168;
  v98 = v99;
  v88 = 0x100000003;
  v87 = xmmword_10056EDA0;
  v86 = off_1009A8F78;
  v89 = v90;
  sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
  v19 = v17 + v18;
  v20 = *(a2 + 8);
  v21 = *(v15 - 168);
  v22 = v20 - v21;
  if (v20 - v21 <= 0.0)
  {
    if ((fabs(v22) - v19) / *(a2 + 16) > 6.0)
    {
      v24 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        v97 = *&v19;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter_with,nLoS->LoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
      }

      v25 = *(a1 + 360);
      if (v25 != *(a1 + 368))
      {
        do
        {
          v62 = 0x100000003;
          v60 = off_1009A8F78;
          v61 = xmmword_10056EDA0;
          v63 = v64;
          sub_1003A920C(&v65, v25 + 40, &v60);
          v93 = 0x100000003;
          v92 = xmmword_10056EDA0;
          v91 = off_1009A8F78;
          v94 = v95;
          v97 = 0x100000134;
          *&buf[8] = xmmword_10056EEA0;
          *buf = off_1009A9168;
          v98 = v99;
          v88 = 0x100000003;
          v87 = xmmword_10056EDA0;
          v86 = off_1009A8F78;
          v89 = v90;
          sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
          v27 = v26;
          v62 = 0x100000003;
          v60 = off_1009A8F78;
          v61 = xmmword_10056EDA0;
          v63 = v64;
          sub_1003A920C(&v71, v25 + 112, &v60);
          v93 = 0x100000003;
          v92 = xmmword_10056EDA0;
          v91 = off_1009A8F78;
          v94 = v95;
          v97 = 0x100000134;
          *&buf[8] = xmmword_10056EEA0;
          *buf = off_1009A9168;
          v98 = v99;
          v88 = 0x100000003;
          v87 = xmmword_10056EDA0;
          v86 = off_1009A8F78;
          v89 = v90;
          sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
          v29 = v27 + v28;
          v30 = *(v25 + 8);
          if ((v30 - *(a2 + 8) - v29) / *(a2 + 16) <= 6.0)
          {
            v25 += 176;
            v32 = *(a1 + 368);
          }

          else
          {
            v31 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              v35 = *v25;
              *buf = 134218240;
              *&buf[4] = v35;
              *&buf[12] = 2048;
              *&buf[14] = v30;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter_with,Removing measurement at time %f s with range %f m", buf, 0x16u);
            }

            sub_1003BC650(buf, (v25 + 176), *(a1 + 368), v25);
            v33 = *(a1 + 368);
            if (v33 != v32)
            {
              v34 = v33 - 136;
              do
              {
                *(v33 - 64) = off_1009991A0;
                *(v33 - 136) = off_1009991A0;
                v34 -= 176;
                v33 -= 176;
              }

              while (v33 != v32);
            }

            *(a1 + 368) = v32;
          }
        }

        while (v25 != v32);
      }

      sub_1003B8528(a1);
      v36 = *(a1 + 360);
      v37 = *(a1 + 368);
      if (v36 == v37)
      {
        *(a1 + 328) = 0x3FF0000000000000;
      }

      else
      {
        v38 = v36 + 22;
        v39 = *(a1 + 360);
        if (v36 + 22 != v37)
        {
          v39 = *(a1 + 360);
          do
          {
            if (v38[1] < v39[1])
            {
              v39 = v38;
            }

            v38 += 22;
          }

          while (v38 != v37);
        }

        v40 = fmax(v39[1], 1.0);
        if (v40 != *(a1 + 328))
        {
          *(a1 + 328) = v40;
          do
          {
            v41 = sub_10041537C(v36[1] / *(a1 + 328));
            v36[4] = v41;
            v36[2] = v36[1] / (v41 * v36[3]);
            v36 += 22;
          }

          while (v36 != v37);
        }
      }
    }

    goto LABEL_43;
  }

  if ((v22 - v19) / *(a2 + 16) <= 6.0)
  {
LABEL_43:
    v42 = *(a1 + 360);
    v43 = *(a1 + 368);
    v44 = *(a2 + 8);
    if (v42 == v43)
    {
      v49 = fmax(v44, 1.0);
      *(a1 + 328) = v49;
      v50 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v49;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Minimum observed range initialized to %f m", buf, 0xCu);
      }
    }

    else
    {
      v45 = *(a1 + 328);
      if (v44 < v45 && v45 > 1.0)
      {
        v46 = fmax(v44, 1.0);
        *(a1 + 328) = v46;
        v47 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v46;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Minimum observed range changed to %f m", buf, 0xCu);
          v42 = *(a1 + 360);
          v43 = *(a1 + 368);
        }

        while (v42 != v43)
        {
          v48 = sub_10041537C(v42[1] / *(a1 + 328));
          v42[4] = v48;
          v42[2] = v42[1] / (v48 * v42[3]);
          v42 += 22;
        }
      }
    }

    v51 = sub_10041537C(*(a2 + 8) / *(a1 + 328));
    v52 = *(a2 + 8);
    if (v52 <= 10.0)
    {
      v53 = 0.1;
    }

    else
    {
      v53 = v52 / 10.0 * 0.1;
    }

    sub_1003BB924(buf, &v65, &v71, *(a2 + 24), *a2, v52, v53, v51);
    v54 = *(a1 + 368);
    if (v54 >= *(a1 + 376))
    {
      v55 = sub_1003BC6D8((a1 + 360), buf);
    }

    else
    {
      sub_1003BC824(a1 + 360, *(a1 + 368), buf);
      v55 = v54 + 176;
      *(a1 + 368) = v54 + 176;
    }

    *(a1 + 368) = v55;
    goto LABEL_60;
  }

  v23 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218496;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 2048;
    v97 = *&v19;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter_with,LoS->nLoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
  }

LABEL_60:
  if (((*(a1 + 560) & 1) != 0 || *(a1 + 561) == 1) && (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 368) - *(a1 + 360)) >> 4)) >= 4)
  {
    sub_1003B85B0(a1);
  }

  v56 = *(a1 + 368) - *(a1 + 360);
  if ((0x2E8BA2E8BA2E8BA3 * (v56 >> 4)) < 4 || (*(a1 + 560) & 1) != 0 || (*(a1 + 561) & 1) != 0 || *(a1 + 312) - *(a1 + 320) < 0.5)
  {
    if (v56 == 176)
    {
      v57 = *(a1 + 312);
      *(a1 + 304) = v57;
      *(a1 + 320) = v57 + -0.5;
    }
  }

  else
  {
    v59 = sub_1003B87C4(a1);
    *(a1 + 562) = v59;
    if (v59)
    {
      *(a1 + 320) = *(a1 + 312);
      sub_1003B66BC(a1);
    }
  }

LABEL_70:
  sub_1003B6C78(a1);
  *a3 = *(a1 + 24);
  *(a3 + 5) = *(a1 + 29);
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  result = sub_1003BB9A8(a3 + 2, *(a1 + 40), *(a1 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 6));
  a3[5] = *(a1 + 64);
  return result;
}

void sub_1003B83F8(uint64_t a1)
{
  v2 = *(a1 + 360);
  v3 = *(a1 + 368);
  if (v3 != v2)
  {
    v4 = v3 - 136;
    do
    {
      *(v3 - 64) = off_1009991A0;
      *(v3 - 136) = off_1009991A0;
      v4 -= 176;
      v3 -= 176;
    }

    while (v3 != v2);
  }

  *(a1 + 368) = v2;
  sub_1003B8528(a1);
  v5 = *(a1 + 40);
  *(a1 + 29) = 0;
  *(a1 + 24) = 0;
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0x3FF0000000000000;
  sub_1003BF7F0(a1 + 72, v6);
  if (*(a1 + 352) == 1)
  {
    *(a1 + 352) = 0;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter is reinitialized", v8, 2u);
  }
}

void sub_1003B8528(uint64_t a1)
{
  *(a1 + 320) = *(a1 + 304);
  *(a1 + 560) = 257;
  *(a1 + 336) = 0;
  *(a1 + 562) = 0;
  *(a1 + 568) = 0;
  *(a1 + 564) = 0;
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter is reset", v2, 2u);
  }
}

void sub_1003B85B0(uint64_t result)
{
  v1 = *(result + 360);
  v2 = *(result + 368);
  if (v1 != v2)
  {
    if (v1 + 176 != v2)
    {
      v4 = v1 + 288;
      do
      {
        v5 = *v1;
        v6 = *(v1 + 16);
        v23 = *(v1 + 32);
        v22[0] = v5;
        v22[1] = v6;
        sub_1003BBC24(&v24, v1 + 40);
        v25 = *(v1 + 104);
        sub_1003BBC24(&v26, v1 + 112);
        v7 = *(v4 - 112);
        v8 = *(v4 - 96);
        v18 = *(v4 - 80);
        v17[0] = v7;
        v17[1] = v8;
        sub_1003BBC24(&v19, v4 - 72);
        v20 = *(v4 - 8);
        sub_1003BBC24(&v21, v4);
        v21 = off_1009991A0;
        v19 = off_1009991A0;
        v26 = off_1009991A0;
        v24 = off_1009991A0;
        if (*(v22 + 1) < *(v17 + 1))
        {
          v1 = v4 - 112;
        }

        v9 = v4 + 64;
        v4 += 176;
      }

      while (v9 != v2);
    }

    v10 = *result;
    v11 = *(result + 8);
    if (*result != v11)
    {
      v12 = 0;
      v13 = *(v1 + 8);
      do
      {
        if (v12)
        {
          v12 = 1;
        }

        else
        {
          LOBYTE(v17[0]) = 1;
          v16 = 0;
          *&v22[0] = 0;
          sub_1003BAC8C(*v10, v10[1], result, (result + 360), v17, &v16, v22);
          v14 = v17[0];
          *(result + 560) &= LOBYTE(v17[0]);
          if ((v14 & 1) == 0)
          {
            if ((v16 & 1) == 0)
            {
              *(result + 561) = 0;
              return;
            }

            v15 = *(result + 336);
            if (v15 < *v22)
            {
              v15 = *v22;
            }

            *(result + 336) = v15;
          }

          v12 = v13 <= v10[1];
        }

        v10 += 2;
      }

      while (v10 != v11);
    }
  }
}

BOOL sub_1003B87C4(uint64_t a1)
{
  v2 = *(a1 + 360);
  v1 = *(a1 + 368);
  if ((0x2E8BA2E8BA2E8BA3 * ((v1 - v2) >> 4)) >= 4)
  {
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v5 = (a1 + 72);
    v4 = *(a1 + 72);
    v6 = *(a1 + 80);
    if ((*(a1 + 562) & 1) != 0 || v4 != v6)
    {
      if (v4 != v6)
      {
        do
        {
          sub_1003B9598(&v94, v4);
          v4 += 560;
        }

        while (v4 != v6);
        v4 = *v5;
      }

      sub_1003BBF40(buf, v4);
      for (i = 0; i != 3; ++i)
      {
        v10 = 0;
        v11 = *&qword_10056F2C0[i];
        do
        {
          if (v11 != 0.0 || *&qword_10056F2D8[v10] != 0.0)
          {
            sub_1003BBF40(&v79, buf);
            v12 = *sub_1003AFDBC(&v79, 1);
            *sub_1003AFDBC(&v79, 1) = v11 + v12;
            v13 = *sub_1003AFDBC(&v79, 3);
            v14 = *&qword_10056F2D8[v10];
            *sub_1003AFDBC(&v79, 3) = v13 + v14;
            sub_1003B9598(&v94, &v79);
          }

          ++v10;
        }

        while (v10 != 3);
      }
    }

    else
    {
      if (v2 != v1)
      {
        for (j = v2 + 176; j != v1; j += 176)
        {
          if (*(j + 8) < *(v2 + 8))
          {
            v2 = j;
          }
        }
      }

      if (*(v2 + 8) >= 0.5)
      {
        v15 = *(v2 + 8);
      }

      else
      {
        v15 = 0.5;
      }

      sub_1003BBC24(v84, v2 + 40);
      sub_1003BBC24(v93, v2 + 112);
      v16 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      do
      {
        sub_1003BBC24(buf, v84);
        sub_1003BBC24(&v79, v84);
        v17 = *sub_1003AFDBC(buf, v16);
        *sub_1003AFDBC(buf, v16) = v15 + v17;
        v18 = *sub_1003AFDBC(&v79, v16);
        *sub_1003AFDBC(&v79, v16) = v18 - v15;
        sub_1003B95EC(&v90, buf);
        sub_1003B95EC(&v90, &v79);
        ++v16;
      }

      while (v16 != 3);
      v19 = v90;
      for (k = v91; v19 != k; v19 += 64)
      {
        for (m = 0; m != 6; ++m)
        {
          v21 = *&qword_10056F2F0[m];
          v22 = __sincos_stret(v21);
          v98 = 0x300000003;
          *buf = off_1009A8FC0;
          *&buf[8] = xmmword_10056EDB0;
          v99 = &v100;
          *sub_1003A8DB0(buf, 0, 0) = v22.__cosval;
          *sub_1003A8DB0(buf, 1, 0) = 0;
          *sub_1003A8DB0(buf, 2, 0) = -v22.__sinval;
          *sub_1003A8DB0(buf, 0, 1) = 0;
          *sub_1003A8DB0(buf, 1, 1) = 0x3FF0000000000000;
          *sub_1003A8DB0(buf, 2, 1) = 0;
          *sub_1003A8DB0(buf, 0, 2) = v22.__sinval;
          *sub_1003A8DB0(buf, 1, 2) = 0;
          *sub_1003A8DB0(buf, 2, 2) = v22.__cosval;
          v81 = 0x100000003;
          v79 = off_1009A8F78;
          v80 = xmmword_10056EDA0;
          v82 = v83;
          sub_1003A90A8(buf, v93, &v79);
          v87 = 0x100000003;
          v85 = off_1009A8F78;
          v86 = xmmword_10056EDA0;
          v88 = &v89;
          sub_1003A920C(v19, &v79, &v85);
          v81 = 0x100000004;
          v79 = off_1009A8EE8;
          v80 = xmmword_10056ED80;
          v82 = v83;
          v23 = sub_1002EB67C(&v85, 0);
          *sub_1003AFDBC(&v79, 0) = v23;
          v24 = sub_1002EB67C(&v85, 1);
          *sub_1003AFDBC(&v79, 1) = v24;
          v25 = sub_1002EB67C(&v85, 2);
          *sub_1003AFDBC(&v79, 2) = v25;
          *sub_1003AFDBC(&v79, 3) = v21;
          sub_1003B9598(&v94, &v79);
        }
      }

      *buf = &v90;
      sub_1003BCC80(buf);
    }

    v85 = 0;
    v86 = 0uLL;
    if (v94 != v95)
    {
      sub_1003B9680(a1);
    }

    sub_1003BA1D8(&v85, 0, v86);
    v27 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v86 - v85) >> 3));
    if (v86 == v85)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    sub_1003BDB24(v85, v86, v28, 1, v26);
    if (v85 != v86)
    {
      v30 = sub_1003BA230(v29, v85, (a1 + 360));
      *(a1 + 344) = v30;
      *(a1 + 352) = 1;
      v31 = *(a1 + 616);
      if (v30 > v31)
      {
        v32 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v30;
          *&buf[12] = 2048;
          *&buf[14] = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter has detected an issue with the measurements - rms normalized error (%f) is above the threshold (%f)", buf, 0x16u);
        }

        sub_1003B83F8(a1);
        v8 = 0;
        *(a1 + 563) = 1;
        goto LABEL_99;
      }

      v90 = 0;
      v91 = 0;
      v92 = 0;
      sub_1003BA3CC(&v90, v85);
      v33 = v85;
      if ((0x4FCACE213F2B3885 * ((v86 - v85) >> 3)) >= 2)
      {
        v34 = 1;
        do
        {
          v35 = v90;
          if (v91 == v90)
          {
            goto LABEL_55;
          }

          v36 = 0;
          v37 = 1;
          do
          {
            v38 = 0;
            v39 = 0.0;
            do
            {
              v40 = *sub_1003AFDBC(&v85[77 * v34 + 1], v38);
              v41 = sub_1003AFDBC(v90 + 616 * v36 + 8, v38);
              v39 = v39 + (v40 - *v41) * (v40 - *v41);
              ++v38;
            }

            while (v38 != 3);
            v42 = *sub_1003AFDBC(&v85[77 * v34 + 1], 3);
            v43 = sub_1003AFDBC(v90 + 616 * v36 + 8, 3);
            if ((v37 & (sqrt(v39) > 0.5)) != 0)
            {
              v44 = fmod(v42 - *v43 + 3.14159265, 6.28318531);
              if (v44 < 0.0)
              {
                v44 = v44 + 6.28318531;
              }

              v37 = fabs(v44 + -3.14159265) > 0.0872664626;
            }

            else
            {
              v37 = 0;
            }

            ++v36;
            v35 = v90;
          }

          while (0x4FCACE213F2B3885 * ((v91 - v90) >> 3) > v36);
          v33 = v85;
          if (v37)
          {
LABEL_55:
            if (exp(*(v35 + 600) - v33[77 * v34 + 75]) > 0.01)
            {
              sub_1003BA3CC(&v90, &v33[77 * v34]);
              v33 = v85;
            }
          }

          ++v34;
        }

        while (0x4FCACE213F2B3885 * ((v86 - v33) >> 3) > v34);
      }

      v46 = v90;
      v45 = v91;
      if ((0x4FCACE213F2B3885 * ((v91 - v90) >> 3)) > 1)
      {
        v47 = exp(-*(v90 + 600));
        v48 = 0.0;
        if (v46 != v45)
        {
          v49 = v46;
          do
          {
            v48 = v48 + exp(-*(v49 + 600));
            v49 += 616;
          }

          while (v49 != v45);
        }

        v50 = v47 / v48;
        if (v50 < 0.9)
        {
          v51 = sub_1003AFDBC(v46 + 144, 1);
          v46 = v90;
          v45 = v91;
          if ((0x4FCACE213F2B3885 * ((v91 - v90) >> 3)) >= 2)
          {
            v52 = *v51;
            v53 = 1;
            v54 = 760;
            while (1)
            {
              v55 = sub_1003AFDBC(v46 + v54, 1);
              v56 = fmod(*v55 - v52 + 3.14159265, 6.28318531);
              if (v56 < 0.0)
              {
                v56 = v56 + 6.28318531;
              }

              v57 = fabs(v56 + -3.14159265);
              if (v57 > 0.392699082)
              {
                break;
              }

              ++v53;
              v46 = v90;
              v45 = v91;
              v54 += 616;
              if (0x4FCACE213F2B3885 * ((v91 - v90) >> 3) <= v53)
              {
                goto LABEL_73;
              }
            }

            v58 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v50;
              *&buf[12] = 2048;
              *&buf[14] = v57;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter clearing solutions since the best one has a low weight (%f) and the horizontal angle difference to a secondary solution is too high (%f)", buf, 0x16u);
            }

            sub_1003BD980(&v90, v90);
            v46 = v90;
            v45 = v91;
          }
        }
      }

LABEL_73:
      if (v46 != v45)
      {
        do
        {
          v59 = sub_1003A8DB0(v46 + 488, 1, 1);
          v60 = *(v46 + 384);
          if (v60 != *(v46 + 388))
          {
            __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
          }

          v61 = *v59;
          if (v60 < 1)
          {
            v63 = 0.0;
          }

          else
          {
            v62 = 0;
            v63 = 0.0;
            do
            {
              v63 = v63 + sub_1003BC8A4(v46 + 376, v62, v62);
              ++v62;
            }

            while (v60 != v62);
          }

          if (sqrt(v61) * 180.0 / 3.14159265 <= *(a1 + 608) || v63 <= *(a1 + 600))
          {
            v46 += 616;
          }

          else
          {
            sub_1003BDA6C(&v79, v46 + 616, v91, v46);
            sub_1003BD980(&v90, v64);
          }
        }

        while (v46 != v91);
        if (v90 != v46)
        {
          sub_1003BF7F0(v5, *v5);
          v65 = v90;
          v66 = v91;
          if (v90 == v91)
          {
            v73 = *(a1 + 80);
            v68 = 0.0;
          }

          else
          {
            v67 = *(v90 + 600);
            v68 = 0.0;
            do
            {
              sub_1003BBF40(v84, v65 + 8);
              sub_1003BBC24(v93, v65 + 144);
              sub_1003BC130(buf, v65 + 208);
              sub_1003BBDB4(&v79, v65 + 488);
              v69 = exp(v67 - *(v65 + 600));
              v70 = v69;
              v78 = v69;
              v71 = *(v65 + 608);
              v77 = v71;
              v72 = *(a1 + 80);
              if (v72 >= *(a1 + 88))
              {
                v73 = sub_1003BF8DC(v5, v84, v93, buf, &v79, &v78, &v77, a1 + 96, a1 + 160);
              }

              else
              {
                sub_1003BFA74(*(a1 + 80), v84, v93, buf, &v79, v71, a1 + 96, a1 + 160, v69);
                v73 = v72 + 560;
                *(a1 + 80) = v72 + 560;
              }

              *(a1 + 80) = v73;
              v68 = v68 + v70;
              v65 += 616;
            }

            while (v65 != v66);
          }

          for (n = *v5; n != v73; n += 560)
          {
            *(n + 416) = *(n + 416) / v68;
          }
        }
      }

      *buf = &v90;
      sub_1003BCFCC(buf);
    }

    v8 = *(a1 + 80) != *(a1 + 72);
LABEL_99:
    *buf = &v85;
    sub_1003BCFCC(buf);
    *buf = &v94;
    sub_1003BC8E8(buf);
    return v8;
  }

  return 0;
}

void sub_1003B94A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 + 176) = &a53;
  sub_1003BCFCC(&a65);
  *(v65 + 176) = v65;
  sub_1003BCFCC(&a65);
  *(v65 + 176) = &a64;
  sub_1003BC8E8(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_1003B9598(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BC9A8(a1, a2);
  }

  else
  {
    sub_1003BBF40(a1[1], a2);
    result = v3 + 72;
    a1[1] = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003B95EC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BCD40(a1, a2);
  }

  else
  {
    sub_1003BBC24(a1[1], a2);
    result = v3 + 64;
    a1[1] = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003B9640(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BD180(a1, a2);
  }

  else
  {
    sub_1003BD020(a1, a2);
    result = v3 + 616;
  }

  a1[1] = result;
  return result;
}

void sub_1003B9680(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_1003BBF40(v11, v5);
  v8 = 0x100000004;
  v7 = xmmword_10056ED80;
  v6 = off_1009A8EE8;
  v9 = &v10;
  sub_1003BA42C(v4, v11, v2, &v6);
}

void *sub_1003BA114(void *result)
{
  result[61] = off_1009991A0;
  result[47] = off_1009991A0;
  result[26] = off_1009991A0;
  result[18] = off_1009991A0;
  result[10] = off_1009991A0;
  result[1] = off_1009991A0;
  return result;
}

uint64_t sub_1003BA1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_1003BDA6C(&v7, a3, *(a1 + 8), a2);
    sub_1003BD980(a1, v5);
  }

  return a2;
}

double sub_1003BA230(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    v7 = 0.0;
    v12 = *a3;
  }

  else
  {
    v7 = 0.0;
    do
    {
      v21 = 0x100000001;
      v19 = off_1009A96E8;
      *&v8 = 0x100000001;
      *(&v8 + 1) = 0x100000001;
      v20 = v8;
      v22 = &v23;
      v16 = 0x400000001;
      v14 = off_1009A95C8;
      v15 = xmmword_10056F220;
      v17 = &v18;
      sub_100415A1C(a2 + 8, v3 + 40, v3 + 112, &v19, &v14);
      v9 = *(v3 + 32);
      v10 = *(v3 + 8);
      v11 = sub_1003AFDBC(&v19, 0);
      v7 = v7 + 1.0 / (v9 * 0.1) * (v10 - *v11) * (1.0 / (v9 * 0.1) * (v10 - *v11));
      v3 += 176;
    }

    while (v3 != v4);
    v3 = *a3;
    v12 = a3[1];
  }

  return sqrt(v7 / (0x2E8BA2E8BA2E8BA3 * ((v12 - v3) >> 4) - 3));
}

uint64_t sub_1003BA3CC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BF6A4(a1, a2);
  }

  else
  {
    sub_1003BD5E4(a1, a1[1], a2);
    result = v3 + 616;
    a1[1] = v3 + 616;
  }

  a1[1] = result;
  return result;
}

void sub_1003BA42C(uint64_t a1, uint64_t a2, double **a3, uint64_t a4)
{
  v6 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 4);
  v30 = 0;
  v29 = 0;
  v31 = 0;
  v7 = sub_1003BA874(&v29, v6);
  sub_1003BA95C(v7, a2, a3, &v29);
  v26 = 0x400000004;
  v25 = xmmword_10056ED90;
  v24 = off_1009A8F30;
  v27 = &v28;
  sub_1003A8C00(&v24, 4, 4);
  sub_1003A8C50(&v24, 0.0);
  v21 = 0x100000004;
  v20 = xmmword_10056ED80;
  v19 = off_1009A8EE8;
  v22 = &v23;
  sub_1003A8C00(&v19, 4, 1);
  v8 = 0.0;
  sub_1003A8C50(&v19, 0.0);
  v9 = v29;
  v10 = v30;
  if (v29 != v30)
  {
    do
    {
      v11 = (v9 + 1);
      v12 = *v9;
      v16 = 0x400000004;
      v14 = off_1009A8F30;
      v15 = xmmword_10056ED90;
      v17 = v18;
      sub_1003A90A8((v9 + 10), (v9 + 1), &v14);
      v34 = 0x400000004;
      v33 = xmmword_10056ED90;
      v32 = off_1009A8F30;
      v35 = v36;
      sub_1003A8EBC(&v24, &v14, &v32);
      sub_1003A8CFC(&v24, &v32);
      v16 = 0x100000004;
      v14 = off_1009A8EE8;
      v15 = xmmword_10056ED80;
      v17 = v18;
      v11 += 72;
      sub_1003C07A0(v11, &v14, v12);
      v34 = 0x100000004;
      v33 = xmmword_10056ED80;
      v32 = off_1009A8EE8;
      v35 = v36;
      sub_1003A8EBC(&v19, &v14, &v32);
      sub_1003A8CFC(&v19, &v32);
      v8 = v8 + v12 * v12;
      v9 = (v11 + 72);
    }

    while ((v11 + 72) != v10);
  }

  v13 = sub_1003A8DB0(&v24, 3, 3);
  *v13 = *v13 + 0.101321184;
  v16 = 0x400000004;
  v14 = off_1009A8F30;
  v15 = xmmword_10056ED90;
  v17 = v18;
  v39 = 0x100000004;
  v38 = xmmword_10056ED80;
  v37 = off_1009A9658;
  v40 = &v41;
  v34 = 0x100000010;
  v33 = xmmword_10056F210;
  v32 = off_1009A96A0;
  v35 = v36;
  sub_1003A9CA4(&v24, &v37, &v32, &v14);
}

void sub_1003BA828(_Unwind_Exception *a1)
{
  STACK[0x220] = &STACK[0x208];
  sub_1003C01D0(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BA874(uint64_t *result, unint64_t a2)
{
  if (0x86BCA1AF286BCA1BLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1AF286BCA1AF287)
    {
      sub_1003C0248(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003BA948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003C0584(va);
  _Unwind_Resume(a1);
}

void sub_1003BA95C(uint64_t a1, uint64_t a2, double **a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  if (*a4 != v7)
  {
    v8 = v7 - 144;
    do
    {
      *(v7 - 72) = off_1009991A0;
      *(v7 - 144) = off_1009991A0;
      v8 -= 152;
      v7 -= 152;
    }

    while (v7 != v6);
    a4[1] = v6;
    sub_1003BA874(a4, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 4));
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      v40 = 0x100000001;
      v38 = off_1009A96E8;
      *&v11 = 0x100000001;
      *(&v11 + 1) = 0x100000001;
      v39 = v11;
      v41 = &v42;
      v35 = 0x400000001;
      v33 = off_1009A95C8;
      v34 = xmmword_10056F220;
      v36 = &v37;
      sub_100415A1C(a2, (v9 + 5), (v9 + 14), &v38, &v33);
      v13 = v9[3];
      v12 = v9[4];
      v14 = v9[2];
      v15 = sub_1003AFDBC(&v38, 0);
      v16 = 1.0 / (v13 * v12);
      v32 = v14 - v16 * *v15;
      v29 = 0x400000001;
      v27 = off_1009A95C8;
      v28 = xmmword_10056F220;
      v30 = &v31;
      sub_1003C07A0(&v33, &v27, v16);
      v17 = 0;
      v24 = 0x100000004;
      v22 = off_1009A8EE8;
      v23 = xmmword_10056ED80;
      v25 = &v26;
      do
      {
        v18 = sub_1002EB67C(&v27, v17);
        *sub_1003AFDBC(&v22, v17++) = v18;
      }

      while (v17 != 4);
      v19 = a4[1];
      if (v19 >= a4[2])
      {
        v20 = sub_1003C0860(a4, &v32, &v27, &v22);
      }

      else
      {
        sub_1003C09C0(a4[1], &v27, &v22, v32);
        v20 = v19 + 152;
        a4[1] = v19 + 152;
      }

      a4[1] = v20;
      v9 += 22;
    }

    while (v9 != v10);
  }
}

void sub_1003BAC8C(double a1, double a2, uint64_t a3, uint64_t *a4, BOOL *a5, char *a6, double *a7)
{
  *a5 = 1;
  *a6 = 0;
  *a7 = 0.0;
  v7 = a4[1];
  if (*a4 != v7)
  {
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v7 - *a4) >> 4);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    sub_1003BB4E4(&v71, v14);
    v68 = 0x100000002;
    v67 = xmmword_10056F230;
    v66 = off_1009A9730;
    v69 = &v70;
    v15 = *a4;
    v16 = a4[1];
    while (v15 != v16)
    {
      if (*(v15 + 8) <= a2)
      {
        v17 = sub_1002EB67C(v15 + 40, 2);
        *sub_1003AFDBC(&v66, 0) = v17;
        v18 = sub_1002EB67C(v15 + 40, 0);
        *sub_1003AFDBC(&v66, 1) = v18;
        v19 = v72;
        if (v72 >= v73)
        {
          v20 = sub_1003C0E70(&v71, &v66);
        }

        else
        {
          sub_1003C0C14(v72, &v66);
          v20 = v19 + 56;
        }

        v72 = v20;
      }

      v15 += 176;
    }

    if (v71 != v72)
    {
      v63 = 0x100000002;
      v62 = xmmword_10056F230;
      v61 = off_1009A9730;
      v64 = &v65;
      sub_1003A8C00(&v61, 2, 1);
      sub_1003A8C50(&v61, 0.0);
      v22 = v71;
      v21 = v72;
      if (v71 != v72)
      {
        do
        {
          v76 = 0x100000002;
          v74 = off_1009A9730;
          v75 = xmmword_10056F230;
          v77 = v78;
          sub_1003A8EBC(&v61, v22, &v74);
          sub_1003A8CFC(&v61, &v74);
          v22 += 56;
        }

        while (v22 != v21);
      }

      v76 = 0x100000002;
      v75 = xmmword_10056F230;
      v74 = off_1009A9730;
      v77 = v78;
      sub_1003C07A0(&v61, &v74, 1.0 / v14);
      v48 = a5;
      sub_1003A8CFC(&v61, &v74);
      v23 = v71;
      v24 = v72;
      if (v71 == v72)
      {
        *v48 = 1;
      }

      else
      {
        v47 = a6;
        v25 = 0.0;
        do
        {
          v76 = 0x100000002;
          v74 = off_1009A9730;
          v75 = xmmword_10056F230;
          v77 = v78;
          sub_1003A920C(v23, &v61, &v74);
          sub_1003A8CFC(v23, &v74);
          v58 = 0x100000002;
          v57 = xmmword_10056F230;
          v56 = off_1009A9730;
          v59 = v60;
          v76 = 0x1000000E1;
          v75 = xmmword_10056F240;
          v74 = off_1009A9778;
          v77 = v78;
          v53 = 0x100000002;
          v51 = off_1009A9730;
          v52 = xmmword_10056F230;
          v54 = v55;
          sub_1003AFEC0(v23, &v56, &v74, &v51, "2");
          if (v26 > v25)
          {
            v25 = v26;
          }

          v23 += 56;
        }

        while (v23 != v24);
        *v48 = v25 < 0.3;
        if (v25 >= 0.3)
        {
          v76 = 0x200000002;
          v75 = xmmword_10056F250;
          v74 = off_1009A97C0;
          v77 = v78;
          sub_1003A8C00(&v74, 2, 2);
          sub_1003A8C50(&v74, 0.0);
          v28 = v71;
          for (i = v72; v28 != i; v28 += 14)
          {
            sub_1003C1194(v50, v28[3], v28[2]);
            sub_1003A9464(v28, v50);
            v53 = 0x200000002;
            v51 = off_1009A97C0;
            v52 = xmmword_10056F250;
            v54 = v55;
            sub_1003A90A8(v28, v50, &v51);
            v58 = 0x200000002;
            v57 = xmmword_10056F250;
            v56 = off_1009A97C0;
            v59 = v60;
            sub_1003A8EBC(&v74, &v51, &v56);
            sub_1003A8CFC(&v74, &v56);
          }

          v58 = 0x200000002;
          v57 = xmmword_10056F250;
          v56 = off_1009A97C0;
          v59 = v60;
          v53 = 0x200000002;
          v51 = off_1009A97C0;
          v52 = xmmword_10056F250;
          v54 = v55;
          sub_1003BB62C(&v74, &v56, &v51);
          v29 = *sub_1003A8DB0(&v51, 0, 0);
          v30 = sub_1003A8DB0(&v51, 1, 1);
          if (*v30 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = *v30;
          }

          sub_1003C106C(v50, DWORD1(v57), v57);
          sub_1003A9464(&v56, v50);
          v32 = v71;
          v33 = v72;
          if (v71 == v72)
          {
            v41 = 0.0;
            v42 = 0.0;
          }

          else
          {
            v49 = v31;
            v34 = 0.0;
            v35 = 0.0;
            v36 = 0.0;
            v37 = 0.0;
            do
            {
              v80 = 0x100000002;
              *buf = off_1009A9730;
              *&buf[8] = xmmword_10056F230;
              v81 = &v82;
              sub_1003A90A8(v50, v32, buf);
              v38 = sub_1002EB67C(buf, 0);
              v39 = sub_1002EB67C(buf, 1);
              if (v38 < v34)
              {
                v40 = v38;
              }

              else
              {
                v40 = v34;
              }

              if (v38 <= v35)
              {
                v34 = v40;
              }

              else
              {
                v35 = v38;
              }

              if (v39 <= v37)
              {
                if (v39 < v36)
                {
                  v36 = v39;
                }
              }

              else
              {
                v37 = v39;
              }

              v32 += 56;
            }

            while (v32 != v33);
            v41 = v35 - v34;
            v42 = v37 - v36;
            v31 = v49;
          }

          if (v42 >= v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v42;
          }

          if (v41 < v42)
          {
            v41 = v42;
          }

          *a7 = v41;
          if (v43 >= a1)
          {
            v45 = qword_1009F9820;
            v46 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
            v44 = 0;
            if (v46)
            {
              *buf = 134218496;
              *&buf[4] = a2;
              *&buf[12] = 2048;
              *&buf[14] = v31;
              *&buf[22] = 2048;
              v80 = *&v43;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter problem is observable now from the bin with max range %3.1f m: smallest eigenvalue is %f, smallest rectangular box dimension is %f m", buf, 0x20u);
              v44 = 0;
            }
          }

          else
          {
            v44 = 1;
          }

          *v47 = v44;
        }
      }
    }

    v74 = &v71;
    sub_1003C0A30(&v74);
  }
}

void sub_1003BB460(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  a18 = &a59;
  sub_1003C0A30(&a18);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BB4E4(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      sub_1003C0AF0(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003BB5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003C0E04(va);
  _Unwind_Resume(a1);
}

void sub_1003BB62C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v36 = 0x200000002;
  v34 = off_1009A97C0;
  v35 = xmmword_10056F250;
  v37 = &v38;
  v31 = 0x200000002;
  v29 = off_1009A97C0;
  v30 = xmmword_10056F250;
  v32 = &v33;
  v26 = 0x200000002;
  v24 = off_1009A97C0;
  v25 = xmmword_10056F250;
  v27 = &v28;
  v21 = 0x100000002;
  v19 = off_1009A9730;
  v20 = xmmword_10056F230;
  v22 = &v23;
  v16 = 0x200000002;
  v14 = off_1009A97C0;
  v15 = xmmword_10056F250;
  v17 = &v18;
  v11 = 0x1000000A8;
  v9 = off_1009A9850;
  v10 = xmmword_10056F260;
  v12 = &v13;
  sub_1003C12C0(a1, &v34, a3, &v29, a2, &v24, &v19, &v14, &v9);
  if (DWORD2(v30))
  {
    v3 = 0;
    while (1)
    {
      v4 = *sub_1003AFDBC(&v29, v3);
      if (v4 != 0.0)
      {
        break;
      }

      if (++v3 >= DWORD2(v30))
      {
        goto LABEL_6;
      }
    }

    v8 = 4;
    v7 = 2;
    cnprint::CNPrinter::Print(&v8, &v7, "Warning: Imaginary parts of complex eigenvalues are being ignored.", v4);
  }

LABEL_6:
  if (DWORD2(v25))
  {
    v5 = 0;
    while (1)
    {
      v6 = *sub_1003AFDBC(&v24, v5);
      if (v6 != 0.0)
      {
        break;
      }

      if (++v5 >= DWORD2(v25))
      {
        return;
      }
    }

    v8 = 4;
    v7 = 2;
    cnprint::CNPrinter::Print(&v8, &v7, "Warning: Imaginary parts of complex eigenvectors are being ignored.", v6);
  }
}

void sub_1003BB884(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_100012564(a1, a2);
    }

    sub_100019B38();
  }
}

uint64_t sub_1003BB924(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8)
{
  *a1 = a5;
  *(a1 + 8) = a6;
  *(a1 + 16) = a6 / (a7 * a8);
  *(a1 + 24) = a7;
  *(a1 + 32) = a8;
  sub_1003BBC24(a1 + 40, a2);
  *(a1 + 104) = a4;
  sub_1003BBC24(a1 + 112, a3);
  return a1;
}

uint64_t *sub_1003BB9A8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003BBA24(result, a4);
  }

  return result;
}

void sub_1003BBA08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003BBA24(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_1003BBA70(a1, a2);
  }

  sub_100019B38();
}

void sub_1003BBA70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t *sub_1003BBAC8(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 6) < a4)
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

    if (a4 <= 0x155555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 6);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAALL)
      {
        v11 = 0x155555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_1003BBA24(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 6) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

__n128 sub_1003BBC24(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8F78;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 sub_1003BBDB4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8FC0;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 sub_1003BBF40(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000004;
  *(a1 + 24) = 0x100000004;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8EE8;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 4)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 4u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 sub_1003BC130(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x400000004;
  *(a1 + 24) = 0x400000004;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8F30;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 4)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 5)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 4u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 4u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1003BC2BC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004EF2C(result, a4);
  }

  return result;
}

void sub_1003BC31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003BC338(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003BF7F0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003BC38C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 136;
      do
      {
        *(v3 - 8) = off_1009991A0;
        *(v3 - 17) = off_1009991A0;
        v4 -= 176;
        v3 -= 176;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_1003BC404(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003BC460(uint64_t result, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_1003BC540(result, a4 + v8, v9);
      v9 += 11;
      v8 += 176;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 112;
      do
      {
        *(v6 + 112) = off_1009991A0;
        *(v6 + 40) = off_1009991A0;
        v6 += 176;
        v10 += 176;
      }

      while (v6 != a3);
    }
  }
}

void sub_1003BC524(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1004C9DE8();
  }

  _Unwind_Resume(exception_object);
}

double sub_1003BC540(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *(a2 + 32) = *(a3 + 4);
  *a2 = v5;
  *(a2 + 16) = v6;
  sub_1003BBC24(a2 + 40, a3 + 40);
  *(a2 + 104) = *(a3 + 26);
  *&result = sub_1003BBC24(a2 + 112, (a3 + 7)).n128_u64[0];
  return result;
}

uint64_t sub_1003BC5C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 136;
    do
    {
      *(v3 - 64) = off_1009991A0;
      *(v3 - 136) = off_1009991A0;
      v3 -= 176;
      v4 -= 176;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

__int128 *sub_1003BC650(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    v8 = v5[1];
    *(a4 + 32) = *(v5 + 4);
    *a4 = v7;
    *(a4 + 16) = v8;
    sub_1003A8CFC(a4 + 40, v5 + 40);
    *(a4 + 104) = *(v5 + 26);
    sub_1003A8CFC(a4 + 112, (v5 + 7));
    a4 += 176;
    v5 += 11;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1003BC6D8(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_100019B38();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003BC404(a1, v6);
  }

  v13 = 0;
  v14 = 176 * v2;
  sub_1003BC824(a1, 176 * v2, a2);
  v15 = (176 * v2 + 176);
  v7 = a1[1];
  v8 = 176 * v2 + *a1 - v7;
  sub_1003BC460(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003BC5C0(&v13);
  return v12;
}

void sub_1003BC810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003BC5C0(va);
  _Unwind_Resume(a1);
}

double sub_1003BC824(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *(a2 + 32) = *(a3 + 4);
  *a2 = v5;
  *(a2 + 16) = v6;
  sub_1003BBC24(a2 + 40, a3 + 40);
  *(a2 + 104) = *(a3 + 26);
  *&result = sub_1003BBC24(a2 + 112, (a3 + 7)).n128_u64[0];
  return result;
}

double sub_1003BC8A4(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_1004C9E90();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_1004C9E64();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_1004C9E38();
  }

  return *(v3 + 8 * v4);
}

void sub_1003BC8E8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 9;
      v7 = v4 - 9;
      v8 = v4 - 9;
      do
      {
        v9 = *v8;
        v8 -= 9;
        (*v9)(v7);
        v6 -= 9;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1003BC9A8(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_100019B38();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003BCAF0(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_1003BBF40(72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  sub_1003BCB4C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003BCC14(&v13);
  return v12;
}