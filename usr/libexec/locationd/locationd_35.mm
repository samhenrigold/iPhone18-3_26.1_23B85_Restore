void *sub_100249EE8(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  result = *sub_100249FD8(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1000F2EC4();
  }

  return result;
}

uint64_t sub_100249F6C(uint64_t a1, char *a2)
{
  v3 = sub_100249EE8(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

char *sub_100249FD8(uint64_t **a1, uint64_t *a2, char **a3, uint64_t *a4, char *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_100019438(a5, a2 + 32) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
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

      if ((sub_100019438(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_100019438(a2 + 4, a5) & 0x80) == 0)
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
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
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

  if ((sub_100019438(a5, v15 + 32) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_1000F2B3C(a1, a3, a5);
}

void **sub_10024A16C(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 5) < a4)
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

    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x155555555555555)
      {
        v11 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_10024A2CC(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 5) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 7);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 7);
      v12 = v6[1];
    }

    v15 = (a3 - v14);
    if (a3 != v14)
    {
      result = memmove(v12, v14, (v15 - 7));
    }

    v16 = &v15[v12];
  }

  v6[1] = v16;
  return result;
}

void sub_10024A2CC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1001A4428(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10024A318(uint64_t a1, uint64_t a2)
{
  v153 = *(a2 + 16);
  v2 = *(a1 + 248);
  if (!v2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v46 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#selection,No valid hypothesis available for selection", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101A7B5F4(buf);
    LOWORD(v145) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,No valid hypothesis available for selection", &v145, 2);
    v48 = v47;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v47);
    goto LABEL_166;
  }

  v5 = 1;
  v6 = *(a1 + 248);
  do
  {
    v6 = *v6;
    --v5;
  }

  while (v6);
  if (v5)
  {
    if (sub_10024B964(a1))
    {
      v143 = 0.0;
      v144 = 0.0;
      if (sub_100208760((a1 + 2384), &v144, &v143, *(a2 + 24), *(a1 + 2248)))
      {
        v145 = off_1024DE5F8;
        v149 = xmmword_101C75BF0;
        *v152 = 0xBFF0000000000000;
        *&v152[12] = 0;
        *&v152[20] = 0;
        *&v146 = *(a2 + 8);
        *(&v146 + 1) = v153;
        v148 = xmmword_101C75BF0;
        v151 = xmmword_101C76220;
        v150 = xmmword_101C76220;
        v147 = 0uLL;
        v7 = *(a1 + 248);
        if (v7)
        {
          v112 = v143 * 0.0174532925;
          v113 = v144 * 0.0174532925;
          v8 = 0.0;
          __asm { FMOV            V0.2D, #-1.0 }

          v129 = _Q0;
          _Q0.f64[0] = 3.14159265;
          v130 = _Q0;
          _Q0.f64[0] = NAN;
          _Q0.f64[1] = NAN;
          v124 = vnegq_f64(_Q0);
          v127 = 0.0;
          v128 = 0.0;
          v126 = 0.0;
          do
          {
            if ((v7[107] & 0xFFFFFFFB) != 0)
            {
              v14 = v7[8];
              if (v14)
              {
                if (*(*(v7[4] + 8 * ((v14 + v7[7] - 1) / 0x1AuLL)) + 152 * ((v14 + v7[7] - 1) % 0x1AuLL) + 148) == 1)
                {
                  v132 = off_1024DE5F8;
                  v133 = v129;
                  v136 = xmmword_101C75BF0;
                  v137 = xmmword_101C75BF0;
                  v138 = v129;
                  v139 = v129;
                  v140 = 0xBFF0000000000000;
                  v141 = 0;
                  v142 = 0;
                  v15 = sub_10002980C((v7 + 25), &v153);
                  v17 = sub_10002A8E4((v7 + 25), v16, &v132);
                  if (*(a1 + 180) == 1)
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v18 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v19 = *(v7 + 212);
                      *buf = 67109120;
                      v157 = v19;
                      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#selection,Likelihood equal override setting likelihood to 1 for hID,%d", buf, 8u);
                    }

                    v20 = 1.0;
                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v21 = *(v7 + 212);
                      v154 = 67109120;
                      v155 = v21;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood equal override setting likelihood to 1 for hID,%d", &v154);
                      v118 = v22;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v22);
                      if (v118 != buf)
                      {
                        free(v118);
                      }
                    }
                  }

                  else
                  {
                    v20 = *(v7 + 102);
                  }

                  if ((v15 & v17) == 1 && v20 > 0.00000001)
                  {
                    v23 = v8 + v20;
                    *&v147 = (v20 * v134 + v8 * *&v147) / (v8 + v20);
                    sub_10002DA78(*&v147);
                    *&v147 = v25;
                    v26 = *(&v147 + 1);
                    *v27.i64 = v135 * 0.0174532925;
                    if (fabs(v135 * 0.0174532925) <= *v130.i64)
                    {
                      v29 = v130;
                    }

                    else
                    {
                      v119 = *vbslq_s8(v124, v130, v27).i64;
                      v28 = fmod(*v27.i64 + v119, 6.28318531);
                      v29 = v130;
                      *v27.i64 = v28 - v119;
                    }

                    *v24.i64 = v26 * 0.0174532925;
                    v30 = v26 * 0.0174532925;
                    if (fabs(v26 * 0.0174532925) > *v29.i64)
                    {
                      v114 = *vbslq_s8(v124, v29, v24).i64;
                      v120 = v27.i64[0];
                      v31 = fmod(*v24.i64 + v114, 6.28318531);
                      *v24.i64 = v26 * 0.0174532925;
                      v27.i64[0] = v120;
                      v29.i64[0] = v130.i64[0];
                      v30 = v31 - v114;
                    }

                    if (vabdd_f64(*v27.i64, v30) <= *v29.i64)
                    {
                      v32 = *v27.i64 - v30;
                    }

                    else
                    {
                      v32 = *v27.i64 - v30 + dbl_101CFC5F0[*v27.i64 - v30 > *v29.i64];
                    }

                    *(&v147 + 1) = (v20 * ((*v24.i64 + v32) * 57.2957795) + v8 * v26) / v23;
                    sub_10002DB04(*(&v147 + 1));
                    *(&v147 + 1) = v35;
                    if (*(&v136 + 1) != -1.0 && *&v137 != -1.0)
                    {
                      v36 = v20 * *(&v136 + 1) + v128 * *(&v148 + 1);
                      v128 = v128 + v20;
                      *(&v148 + 1) = v36 / v128;
                    }

                    if (v139.f64[0] != -1.0 && v139.f64[1] != -1.0)
                    {
                      v37 = *&v151;
                      *v33.i64 = v139.f64[0] * 0.0174532925;
                      if (fabs(v139.f64[0] * 0.0174532925) <= *v130.i64)
                      {
                        v39 = v130;
                      }

                      else
                      {
                        v121 = *vbslq_s8(v124, v130, v33).i64;
                        v38 = fmod(*v33.i64 + v121, 6.28318531);
                        v39 = v130;
                        *v33.i64 = v38 - v121;
                      }

                      *v34.i64 = v37 * 0.0174532925;
                      v40 = v37 * 0.0174532925;
                      if (fabs(v37 * 0.0174532925) > *v39.i64)
                      {
                        v115 = *vbslq_s8(v124, v39, v34).i64;
                        v122 = v33.i64[0];
                        v41 = fmod(*v34.i64 + v115, 6.28318531);
                        *v34.i64 = v37 * 0.0174532925;
                        v33.i64[0] = v122;
                        v39.i64[0] = v130.i64[0];
                        v40 = v41 - v115;
                      }

                      if (vabdd_f64(*v33.i64, v40) <= *v39.i64)
                      {
                        v42 = *v33.i64 - v40;
                      }

                      else
                      {
                        v42 = *v33.i64 - v40 + dbl_101CFC5F0[*v33.i64 - v40 > *v39.i64];
                      }

                      v43 = v20 * ((*v34.i64 + v42) * 57.2957795) + v126 * v37;
                      v126 = v126 + v20;
                      *&v151 = v43 / v126;
                      sub_1001D08A4(v43 / v126);
                      *&v151 = v44;
                    }

                    if (v138.f64[0] != -1.0 && v138.f64[1] != -1.0)
                    {
                      v45 = v20 * v138.f64[0] + v127 * *&v150;
                      v127 = v127 + v20;
                      *&v150 = v45 / v127;
                    }
                  }

                  else
                  {
                    v23 = v8;
                  }

                  v8 = v23;
                }
              }
            }

            v7 = *v7;
          }

          while (v7);
          if (v8 >= 0.00000001)
          {
            v59 = *(a1 + 248);
            if (v59)
            {
              v60 = 0;
              v131 = 0.0;
              v125 = 0.0;
              v116 = 0.0;
              v110 = 0.0;
              v111 = 0.0;
              v61 = -1.0;
              v62 = v127;
              v63 = v128;
              do
              {
                if ((v59[107] & 0xFFFFFFFB) != 0)
                {
                  v64 = v59[8];
                  if (v64)
                  {
                    if (*(*(v59[4] + 8 * ((v64 + v59[7] - 1) / 0x1AuLL)) + 152 * ((v64 + v59[7] - 1) % 0x1AuLL) + 148) == 1)
                    {
                      v132 = off_1024DE5F8;
                      v65 = -1.0;
                      v133 = v129;
                      v136 = xmmword_101C75BF0;
                      v137 = xmmword_101C75BF0;
                      v138 = v129;
                      v139 = v129;
                      v140 = 0xBFF0000000000000;
                      v141 = 0;
                      v142 = 0;
                      if (*(a1 + 180) == 1)
                      {
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v66 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v67 = *(v59 + 212);
                          *buf = 67109120;
                          v157 = v67;
                          _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#selection,Likelihood equal override setting likelihood to 1 for hID,%d", buf, 8u);
                        }

                        v68 = 1.0;
                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v77 = *(v59 + 212);
                          v154 = 67109120;
                          v155 = v77;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood equal override setting likelihood to 1 for hID,%d", &v154);
                          v79 = v78;
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v78);
                          if (v79 != buf)
                          {
                            free(v79);
                          }
                        }

                        v62 = v127;
                        v63 = v128;
                      }

                      else
                      {
                        v68 = *(v59 + 102);
                      }

                      if (sub_10002A8E4((v59 + 25), v65, &v132))
                      {
                        v123 = v61;
                        v117 = *&v136;
                        v69 = sub_1001FAD44(v134, *&v147);
                        v70 = *&v136;
                        v71 = sub_1001FAD44(v135, *(&v147 + 1));
                        v72 = -1.0;
                        v73 = v68;
                        v74 = v68 / v8;
                        if (*(&v136 + 1) == -1.0 || *&v137 == -1.0 || v128 <= 0.00000001)
                        {
                          v61 = v68 / v8;
                        }

                        else
                        {
                          v61 = v68 / v128;
                          v116 = v116 + v68 / v128 * ((*(&v136 + 1) - *(&v148 + 1)) * (*(&v136 + 1) - *(&v148 + 1))) + v68 / v128 * (*&v137 * *&v137);
                        }

                        if (v139.f64[0] != -1.0)
                        {
                          v75 = v139.f64[1];
                          if (v139.f64[1] == -1.0 || v126 <= 0.00000001)
                          {
                            v73 = v68;
                          }

                          else
                          {
                            v76 = sub_1001FAD44(v139.f64[0], *&v151);
                            v73 = v68;
                            v61 = v68 / v126;
                            v110 = v110 + v68 / v126 * (v76 * v76) + v68 / v126 * (v75 * v75);
                            v72 = -1.0;
                          }
                        }

                        if (v138.f64[0] != v72 && v138.f64[1] != v72 && v127 > 0.00000001)
                        {
                          v61 = v73 / v127;
                          v111 = v111 + v73 / v127 * ((v138.f64[0] - *&v150) * (v138.f64[0] - *&v150)) + v73 / v127 * (v138.f64[1] * v138.f64[1]);
                        }

                        v131 = v131 + v74 * (v113 * v69 * (v113 * v69)) + v74 * (v117 * v117) * 0.5;
                        v125 = v125 + v74 * (v112 * v71 * (v112 * v71)) + v74 * (v70 * v70) * 0.5;
                        if (v61 <= v123)
                        {
                          v61 = v123;
                        }

                        else
                        {
                          v60 = sub_1000291EC((v59 + 1), &v153);
                          sub_1002182BC(a1 + 256, (v59 + 1));
                        }

                        v62 = v127;
                        v63 = v128;
                      }
                    }
                  }
                }

                v59 = *v59;
              }

              while (v59);
              v87 = v125 + v131;
              v89 = v110;
              v88 = v111;
              v90 = v116;
            }

            else
            {
              v60 = 0;
              v88 = 0.0;
              v89 = 0.0;
              v90 = 0.0;
              v87 = 0.0;
              v62 = v127;
              v63 = v128;
            }

            *&v148 = sqrt(v87);
            if (v63 <= 0.00000001)
            {
              *(&v148 + 1) = 0xBFF0000000000000;
              v94 = -1.0;
            }

            else
            {
              v94 = sqrt(v90);
            }

            *&v149 = v94;
            if (v126 <= 0.00000001 || v89 >= 3600.0)
            {
              *&v151 = 0xBFF0000000000000;
              v95 = -1.0;
            }

            else
            {
              v95 = sqrt(v89);
            }

            *(&v151 + 1) = v95;
            if (v62 <= 0.00000001)
            {
              *&v150 = 0xBFF0000000000000;
              v96 = -1.0;
            }

            else
            {
              v96 = sqrt(v88);
            }

            *(&v150 + 1) = v96;
            v97 = *(a1 + 176);
            if (v97)
            {
              if (v97 == 4 || v97 == 1)
              {
                *&v152[20] = *(a1 + 176);
              }

              else
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v98 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_DEBUG, "#selection,Output default set to invalid type error. Setting type to unknown", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A7B5F4(buf);
                  LOWORD(v132) = 0;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Output default set to invalid type error. Setting type to unknown", &v132, 2);
                  v109 = v108;
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v108);
                  if (v109 != buf)
                  {
                    free(v109);
                  }
                }
              }
            }

            else
            {
              *&v152[20] = v60;
            }

            sub_1012E8F84(&v145, a2);
            *(a1 + 1232) = v150;
            *(a1 + 1248) = v151;
            *(a1 + 1264) = *v152;
            *(a1 + 1280) = *&v152[16];
            *(a1 + 1168) = v146;
            *(a1 + 1184) = v147;
            *(a1 + 1200) = v148;
            *(a1 + 1216) = v149;
            if (*(a1 + 1104))
            {
              v99 = *(a1 + 312);
              if (v99)
              {
                v100 = *(*(a1 + 280) + 8 * ((v99 + *(a1 + 304) - 1) / 0x1AuLL)) + 152 * ((v99 + *(a1 + 304) - 1) % 0x1AuLL);
                v101 = v151;
                v102 = *v152;
                v103 = *&v152[16];
                *(v100 + 88) = v150;
                *(v100 + 136) = v103;
                *(v100 + 120) = v102;
                *(v100 + 104) = v101;
                v104 = v146;
                v105 = v147;
                v106 = v148;
                *(v100 + 72) = v149;
                *(v100 + 56) = v106;
                *(v100 + 40) = v105;
                *(v100 + 24) = v104;
                operator new();
              }
            }

            return 1;
          }
        }

        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v80 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "#selection,No valid hypotheses with substantial likelihoods found", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
          return 0;
        }

        sub_101A7B5F4(buf);
        LOWORD(v132) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,No valid hypotheses with substantial likelihoods found", &v132, 2);
        v48 = v107;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v107);
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v57 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_ERROR, "#Error,fusion hypothesis selection, calc_dNdE failed", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          return 0;
        }

        sub_101A7B5F4(buf);
        LOWORD(v145) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,fusion hypothesis selection, calc_dNdE failed", &v145, 2);
        v48 = v58;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v58);
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v53 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_ERROR, "#selection, Failed to normalize likelihoods", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      sub_101A7B5F4(buf);
      LOWORD(v145) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#selection, Failed to normalize likelihoods", &v145, 2);
      v48 = v54;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v54);
    }

LABEL_166:
    if (v48 != buf)
    {
      free(v48);
    }

    return 0;
  }

  v49 = *(v2 + 856);
  if (!v49 || (v50 = *(v2 + 64)) == 0 || (*(*(*(v2 + 32) + 8 * ((v50 + *(v2 + 56) - 1) / 0x1AuLL)) + 152 * ((v50 + *(v2 + 56) - 1) % 0x1AuLL) + 148) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v55 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "#selection,only available hypothesis is invalid fused hypothesis, rejecting", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101A7B5F4(buf);
    LOWORD(v145) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#selection,only available hypothesis is invalid fused hypothesis, rejecting", &v145, 2);
    v48 = v56;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v56);
    goto LABEL_166;
  }

  if (v49 == 4)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v51 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "#selection,only available hypothesis is a gross outlier, rejecting", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101A7B5F4(buf);
    LOWORD(v145) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#selection,only available hypothesis is a gross outlier, rejecting", &v145, 2);
    v48 = v52;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v52);
    goto LABEL_166;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v146 = _Q0;
  v148 = xmmword_101C75BF0;
  v149 = xmmword_101C75BF0;
  v150 = _Q0;
  v151 = _Q0;
  v145 = off_1024DE5F8;
  *v152 = 0xBFF0000000000000;
  *&v152[12] = 0;
  *&v152[20] = 0;
  v84 = sub_10002980C(v2 + 200, &v153);
  v81 = sub_10002A8E4(v2 + 200, v85, &v145) & v84;
  if (v81)
  {
    *&v152[20] = sub_1000291EC(v2 + 8, &v153);
    v86 = *(v2 + 64) + *(v2 + 56) - 1;
    sub_1012E8F84(&v145, *(*(v2 + 32) + 8 * (v86 / 0x1A)) + 152 * (v86 % 0x1A) + 16);
    *(a1 + 1232) = v150;
    *(a1 + 1248) = v151;
    *(a1 + 1264) = *v152;
    *(a1 + 1280) = *&v152[16];
    *(a1 + 1168) = v146;
    *(a1 + 1184) = v147;
    *(a1 + 1200) = v148;
    *(a1 + 1216) = v149;
    sub_1002182BC(a1 + 256, v2 + 8);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v91 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_DEFAULT, "#selection,Failed to retrieve estimate from the only available hypothesis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      LOWORD(v132) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#selection,Failed to retrieve estimate from the only available hypothesis", &v132, 2);
      v93 = v92;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v92);
      if (v93 != buf)
      {
        free(v93);
      }
    }
  }

  return v81;
}

void sub_10024B94C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10024B964(uint64_t a1)
{
  v1 = *(a1 + 248);
  if (v1)
  {
    v3 = 1;
    v4 = *(a1 + 248);
    do
    {
      v4 = *v4;
      --v3;
    }

    while (v4);
    if (v3)
    {
      v5 = 0;
      v6 = v1[103];
      v7 = *(a1 + 248);
      do
      {
        if ((v7[107] & 0xFFFFFFFB) != 0)
        {
          v8 = *(v7 + 8);
          if (v8)
          {
            if (*(*(*(v7 + 4) + 8 * ((v8 + *(v7 + 7) - 1) / 0x1AuLL)) + 152 * ((v8 + *(v7 + 7) - 1) % 0x1AuLL) + 148) == 1)
            {
              if (v6 < v7[103])
              {
                v6 = v7[103];
              }

              ++v5;
            }
          }
        }

        v7 = *v7;
      }

      while (v7);
      v9 = -18.4206807 - log(v5);
      v48[0] = 0;
      v48[1] = 0;
      v47 = v48;
      v10 = 0.0;
      v11 = v1;
      do
      {
        if ((v11[107] & 0xFFFFFFFB) != 0)
        {
          v12 = *(v11 + 8);
          if (v12)
          {
            if (*(*(*(v11 + 4) + 8 * ((v12 + *(v11 + 7) - 1) / 0x1AuLL)) + 152 * ((v12 + *(v11 + 7) - 1) % 0x1AuLL) + 148) == 1)
            {
              v49 = *(v11 + 212);
              v13 = v11[103] - v6;
              *buf = &v49;
              if (v13 >= v9)
              {
                v14 = sub_1000AE2AC(&v47, &v49, &unk_101C66300, buf);
                *(v14 + 5) = exp(v13);
              }

              else
              {
                sub_1000AE2AC(&v47, &v49, &unk_101C66300, buf)[5] = 0;
              }

              *buf = &v49;
              v10 = v10 + *(sub_1000AE2AC(&v47, &v49, &unk_101C66300, buf) + 5);
            }
          }
        }

        v11 = *v11;
      }

      while (v11);
      if (((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v41 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#selection,Error in normalization method, invalid sum", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          LOWORD(v49) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Error in normalization method, invalid sum", &v49, 2);
          v44 = v43;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::normalizeHypothesesLogLikelihoods()", "%s\n", v43);
          if (v44 != buf)
          {
            free(v44);
          }
        }

        sub_100D713B0(a1);
      }

      else
      {
        v16 = *(a1 + 248);
        if (v16)
        {
          v46 = xmmword_101CFC600;
          do
          {
            if (v16[107] & 0xFFFFFFFB) != 0 && (v17 = v16[8]) != 0 && (*(*(v16[4] + 8 * ((v17 + v16[7] - 1) / 0x1AuLL)) + 152 * ((v17 + v16[7] - 1) % 0x1AuLL) + 148))
            {
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v18 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v19 = *(v16 + 212);
                v20 = v16[102];
                v21 = v16[103];
                *buf = 67109632;
                *&buf[4] = v19;
                v56 = 2048;
                v57 = v20;
                v58 = 2048;
                v59 = v21;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#selection,Likelihood normalize apriori,hID,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v35 = *(v16 + 212);
                v36 = v16[102];
                v37 = v16[103];
                v49 = 67109632;
                v50 = v35;
                v51 = 2048;
                v52 = v36;
                v53 = 2048;
                v54 = v37;
                LODWORD(v45) = 28;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood normalize apriori,hID,%d,likelihood,%.9f,logLikelihood,%.5f", &v49, v45, *&v46);
                v39 = v38;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::normalizeHypothesesLogLikelihoods()", "%s\n", v38);
                if (v39 != buf)
                {
                  free(v39);
                }
              }

              v49 = *(v16 + 212);
              *buf = &v49;
              v22 = *(sub_1000AE2AC(&v47, &v49, &unk_101C66300, buf) + 5) / v10;
              v23 = (v16 + 102);
              *(v16 + 102) = v22;
              *buf = 0x3FF0000000000000;
              if (v22 > 1.0)
              {
                v23 = buf;
              }

              if (v22 < 0.00000001)
              {
                v23 = &unk_101CFC6F8;
              }

              v24 = *v23;
              v16[102] = *v23;
              *(v16 + 103) = log(v24);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v25 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v26 = *(v16 + 212);
                v27 = v16[102];
                v28 = v16[103];
                *buf = 67109632;
                *&buf[4] = v26;
                v56 = 2048;
                v57 = v27;
                v58 = 2048;
                v59 = v28;
                _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#selection,Likelihood normalize aposteriori,hID,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v29 = *(v16 + 212);
                v30 = v16[102];
                v31 = v16[103];
                v49 = 67109632;
                v50 = v29;
                v51 = 2048;
                v52 = v30;
                v53 = 2048;
                v54 = v31;
                LODWORD(v45) = 28;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood normalize aposteriori,hID,%d,likelihood,%.9f,logLikelihood,%.5f", &v49, v45, *&v46);
                v33 = v32;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::normalizeHypothesesLogLikelihoods()", "%s\n", v32);
                if (v33 != buf)
                {
                  free(v33);
                }
              }
            }

            else
            {
              v34 = *(a1 + 2792);
              if (v34)
              {
                if (v34[1] == 1 && *v34 == 1)
                {
                  *buf = sub_1000137E0();
                  if (sub_1000291EC((v16 + 1), buf) == 3)
                  {
                    *(v16 + 51) = v46;
                  }
                }
              }
            }

            v16 = *v16;
          }

          while (v16);
        }
      }

      sub_1003C93BC(&v47, v48[0]);
    }

    else
    {
      *(v1 + 51) = xmmword_101C76100;
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v40 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#selection,Normalize method called without any valid hypotheses available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B9E8();
    }
  }

  return v1 != 0;
}

BOOL sub_10024C148(uint64_t a1, double *a2, uint64_t a3, double *a4, double *a5, double *a6)
{
  sub_1001A9800(v19, (a3 + 8));
  v11 = v21;
  sub_100102BC8(v19);
  if (!v11)
  {
    return 0;
  }

  sub_1001A9800(v19, (a3 + 8));
  v12 = *(*(v19[1] + (((v21 + v20 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v21 + v20 - 1) + 8);
  sub_100102BC8(v19);
  v13 = *a4;
  if (v13 > *(sub_1000F7F38() + 11))
  {
    return 0;
  }

  v14 = *a5;
  if (v14 < *(sub_1000F7F38() + 10))
  {
    return 0;
  }

  v15 = vabdd_f64(*a2, v12);
  if (v15 > *(sub_1000F7F38() + 14))
  {
    return 0;
  }

  v17 = *a5 - *a6;
  if (v17 <= *(sub_1000F7F38() + 17))
  {
    return 1;
  }

  v18 = *a6;
  return v18 >= *(sub_1000F7F38() + 18);
}

uint64_t *sub_10024C26C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 32);
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

uint64_t sub_10024C340(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_10018E854(a1);
  if (result)
  {
    sub_10024C3D0(a1, a3);
    v7 = *(a3 + 9);
    v17 = *(a3 + 8);
    v18 = v7;
    v8 = *(a3 + 11);
    v19 = *(a3 + 10);
    v20 = v8;
    v9 = *(a3 + 5);
    v13[4] = *(a3 + 4);
    v14 = v9;
    v10 = *(a3 + 7);
    v15 = *(a3 + 6);
    v16 = v10;
    v11 = *(a3 + 1);
    v13[0] = *a3;
    v13[1] = v11;
    v12 = *(a3 + 3);
    v13[2] = *(a3 + 2);
    v13[3] = v12;
    *(&v14 + 4) = *(a2 + 84);
    return sub_1001AFC18(a1, v13);
  }

  return result;
}

uint64_t sub_10024C400(uint64_t a1, uint64_t a2, double a3)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v20, "DELETE FROM ", 12);
    v5 = *(a1 + 255);
    if (v5 >= 0)
    {
      v6 = a1 + 232;
    }

    else
    {
      v6 = *(a1 + 232);
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 255);
    }

    else
    {
      v7 = *(a1 + 240);
    }

    v8 = sub_100038730(v4, v6, v7);
    v9 = sub_100038730(v8, " WHERE ", 7);
    v10 = sub_100038730(v9, "MAC", 3);
    v11 = sub_100038730(v10, " = ? AND ", 9);
    v12 = strlen("Timestamp");
    v13 = sub_100038730(v11, "Timestamp", v12);
    sub_100038730(v13, "= ?;", 4);
    sub_100073518(buf, __p);
    if (v18 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    sub_1000388D8(a1 + 64, v14);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v15 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteByMacAndTimestamp() without a backing database in CLWifiHarvestDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE3384();
  }

  return 0;
}

void sub_10024C78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_10024C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = [[CLOSTransaction alloc] initWithDescription:"CLTilesManager::traverseAllTilesSets"];
  v6 = 0;
  do
  {
    if ((v6 & 0x7FFFFFF7) - 1 <= 1)
    {
      v7 = sub_1001D252C(a1, v6);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = v7 + 8;
        if (*(v7 + 31) < 0)
        {
          v9 = *(v7 + 8);
        }

        *buf = 136315394;
        v20 = a2;
        v21 = 2080;
        v22 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: performing, sAction, %s, tilesSet, %s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v10 = v7 + 8;
        if (*(v7 + 31) < 0)
        {
          v10 = *(v7 + 8);
        }

        v15 = 136315394;
        v16 = a2;
        v17 = 2080;
        v18 = v10;
        LODWORD(v13) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "TILE: performing, sAction, %s, tilesSet, %s", &v15, v13);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::traverseAllTilesSets(const char *, CLTileManagerTraverseTilesSetBlock)", "%s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      (*(a3 + 16))(a3, v7);
    }

    v6 = (v6 + 1);
  }

  while (v6 != 13);
}

void sub_10024CA30(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = *(a2 + 4);
  if (v5 == 1)
  {
    v6 = sub_10001A3E8(a1, a2);
    a1 = sub_10024CA2C(v6, v7);
    v8 = a1;
    v5 = *(a2 + 4);
  }

  else
  {
    v8 = 1;
  }

  if (v5 == 2)
  {
    v9 = sub_10001A3E8(a1, a2);
    v8 &= sub_10024CA2C(v9, v10);
    v5 = *(a2 + 4);
  }

  if ((*(a2 + 148) & 0x80000000) == 0 && v5 != 9 && v8 != 0)
  {
    *(&v17 + 1) = 0;
    *(&v17 + 1) = 0xBFF0000000000000;
    Current = CFAbsoluteTimeGetCurrent();
    v20 = 1;
    v18 = *(a2 + 148);
    LOBYTE(v17) = *(a2 + 177);
    v12 = *(a2 + 4);
    v13 = *(v3 + 40);
    v14 = *(v13 + 4);
    v15 = *(v13 + 12);
    sub_10000EC00(&__p, "");
    sub_10024CB5C(v4, v12, -1, &__p, &v17, v14, v15, *(v3 + 48));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10024CB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024CB5C(uint64_t a1, unsigned int a2, uint64_t a3, const std::string *a4, __int128 *a5, double a6, double a7, double a8)
{
  v240 = a2;
  v238 = a7;
  v239 = a6;
  if ((a2 & 0xFFFFFFF7) - 1 >= 2)
  {
    sub_101ABFD78(a1, a6, a7, a8);
  }

  sub_1000850D0(&v235, &v240);
  std::string::operator=(&v237, a4);
  v12 = a5[1];
  v232 = *a5;
  v233 = v12;
  v234 = *(a5 + 4);
  v13 = sub_1001D252C(a1, v235);
  v14 = v13;
  if ((*v13 & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v32 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v33 = v240;
      v34 = sub_100085790(v240);
      *buf = 67109378;
      *&buf[4] = v33;
      *&buf[8] = 2080;
      *&buf[10] = v34;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, type, %d, %s, not active", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ABFF0C(buf);
      v152 = qword_1025D4608;
      v153 = v240;
      v154 = sub_100085790(v240);
      *v248 = 67109378;
      *&v248[4] = v153;
      *&v248[8] = 2080;
      *&v248[10] = v154;
      LODWORD(v216) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v152, 2, "TILE: requestDownload, type, %d, %s, not active", v248, v216);
      v156 = v155;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v155);
      if (v156 != buf)
      {
        free(v156);
      }
    }

    goto LABEL_35;
  }

  sub_10008511C(&v235, a3, v239, v238, *(v13 + 152), *(v13 + 160));
  if ((sub_1000852BC(&v235) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABFF50();
    }

    v36 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134546689;
      *&buf[4] = v239;
      *&buf[12] = 2053;
      *&buf[14] = v238;
      *&buf[22] = 1024;
      *&buf[24] = v235;
      *&buf[28] = 1024;
      *&buf[30] = DWORD1(v235);
      *&buf[34] = 1024;
      *&buf[36] = DWORD2(v235);
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "@TileError, RequestID, ll, %{sensitive}.3lf, %{sensitive}.3lf, tid, %d, %d, %d", buf, 0x28u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_47;
    }

    sub_101ABFF78(buf);
    *v248 = 134546689;
    *&v248[4] = v239;
    *&v248[12] = 2053;
    *&v248[14] = v238;
    *&v248[22] = 1024;
    *&v248[24] = v235;
    *&v248[28] = 1024;
    *&v248[30] = DWORD1(v235);
    *&v248[34] = 1024;
    *&v248[36] = DWORD2(v235);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@TileError, RequestID, ll, %{sensitive}.3lf, %{sensitive}.3lf, tid, %d, %d, %d", v248, 40);
    v31 = v37;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v37);
    goto LABEL_291;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101ABFEE4();
  }

  v15 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v16 = v240;
    v17 = sub_100085790(v240);
    v227 = a3;
    v18 = v238;
    v19 = v239;
    sub_100B4EFD4(&v235, v248);
    v20 = v248[23];
    v21 = *v248;
    v22 = *(a1 + 424);
    sub_100EDCE5C(__p);
    v23 = v248;
    if (v20 < 0)
    {
      v23 = v21;
    }

    v24 = __p;
    if (v243[1] < 0)
    {
      v24 = *__p;
    }

    *buf = 67110659;
    *&buf[4] = v16;
    *&buf[8] = 2080;
    *&buf[10] = v17;
    *&buf[18] = 2053;
    *&buf[20] = v19;
    *&buf[28] = 2053;
    *&buf[30] = v18;
    *&buf[38] = 2080;
    *&buf[40] = v23;
    v254 = 1024;
    v255 = v22;
    v256 = 2080;
    v257 = v24;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, type, %d, %s, location, %{sensitive}14.8lf, %{sensitive}14.8lf, id, %s, reachability, %d, details, %s", buf, 0x40u);
    if ((v243[1] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    a3 = v227;
    if ((v248[23] & 0x80000000) != 0)
    {
      operator delete(*v248);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABFF0C(buf);
    v157 = qword_1025D4608;
    v158 = v240;
    v159 = sub_100085790(v240);
    v226 = v157;
    v228 = a3;
    v160 = v238;
    v161 = v239;
    sub_100B4EFD4(&v235, __p);
    v162 = v243[1];
    v163 = *__p;
    v164 = *(a1 + 424);
    sub_100EDCE5C(v244);
    v165 = __p;
    if (v162 < 0)
    {
      v165 = v163;
    }

    if (v247 >= 0)
    {
      v166 = v244;
    }

    else
    {
      v166 = *v244;
    }

    *v248 = 67110659;
    *&v248[4] = v158;
    *&v248[8] = 2080;
    *&v248[10] = v159;
    *&v248[18] = 2053;
    *&v248[20] = v161;
    *&v248[28] = 2053;
    *&v248[30] = v160;
    *&v248[38] = 2080;
    *&v248[40] = v165;
    v249 = 1024;
    v250 = v164;
    v251 = 2080;
    v252 = v166;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v226, 2, "TILE: requestDownload, type, %d, %s, location, %{sensitive}14.8lf, %{sensitive}14.8lf, id, %s, reachability, %d, details, %s", v248, 64);
    v168 = v167;
    if (v247 < 0)
    {
      operator delete(*v244);
    }

    a3 = v228;
    if ((v243[1] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v168);
    if (v168 != buf)
    {
      free(v168);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_101ABFF50();
  }

  v25 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v26 = sub_100085790(v235);
    v27 = sub_100085338(&v235);
    v28 = sub_100085314(&v235);
    *buf = 136446723;
    *&buf[4] = v26;
    *&buf[12] = 2053;
    *&buf[14] = v27;
    *&buf[22] = 2053;
    *&buf[24] = v28;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "@TileDl, %{public}s, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABFF78(buf);
    v169 = qword_1025D4628;
    v170 = sub_100085790(v235);
    v171 = sub_100085338(&v235);
    v172 = sub_100085314(&v235);
    *v248 = 136446723;
    *&v248[4] = v170;
    *&v248[12] = 2053;
    *&v248[14] = v171;
    *&v248[22] = 2053;
    *&v248[24] = v172;
    LODWORD(v216) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v169, 1, "@TileDl, %{public}s, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf", v248, v216);
    v174 = v173;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v173);
    if (v174 != buf)
    {
      free(v174);
    }
  }

  if ((*(a1 + 201) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v38 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(a1 + 200);
      *buf = 67109120;
      *&buf[4] = v39;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_47;
    }

    sub_101ABFF0C(buf);
    v175 = *(a1 + 200);
    *v248 = 67109120;
    *&v248[4] = v175;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "TILE: requestDownload, index is not available until first unlock, fDataProtectionEnabled, %d", v248);
    v31 = v176;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v176);
    goto LABEL_291;
  }

  if (a3 != -1 || (*(v14 + 176) & 1) == 0)
  {
    if (*(a1 + 424) <= 1)
    {
      v41 = *(a1 + 496);
    }

    else
    {
      v41 = 1;
    }

    v42 = sub_10008535C(a1 + 112, &v235);
    v43 = sub_1000853E0(v14 + 184, &v235);
    if (v43)
    {
      v44 = sub_100085520(v14 + 184, &v235);
      v45 = sub_10008AC98(v44, *(a1 + 200)) ^ 1;
    }

    else
    {
      v45 = 0;
    }

    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v225 = a1 + 120;
    v46 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_100B4EFD4(&v235, v248);
      v47 = v248[23] >= 0 ? v248 : *v248;
      *buf = 136315906;
      *&buf[4] = v47;
      *&buf[12] = 1024;
      *&buf[14] = v43;
      *&buf[18] = 1024;
      *&buf[20] = v225 != v42;
      *&buf[24] = 1024;
      *&buf[26] = v45;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileId=%s isAlreadyDownloaded, %d, isBeingDownloaded, %d, shouldDownloadedBasedOnPermissions, %d", buf, 0x1Eu);
      if ((v248[23] & 0x80000000) != 0)
      {
        operator delete(*v248);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ABFF0C(buf);
      v177 = qword_1025D4608;
      sub_100B4EFD4(&v235, __p);
      if (v243[1] >= 0)
      {
        v178 = __p;
      }

      else
      {
        v178 = *__p;
      }

      *v248 = 136315906;
      *&v248[4] = v178;
      *&v248[12] = 1024;
      *&v248[14] = v43;
      *&v248[18] = 1024;
      *&v248[20] = v225 != v42;
      *&v248[24] = 1024;
      *&v248[26] = v45;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v177, 2, "TILE: requestDownload, tileId=%s isAlreadyDownloaded, %d, isBeingDownloaded, %d, shouldDownloadedBasedOnPermissions, %d", v248, 30, v217, v219);
      v180 = v179;
      if ((v243[1] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v180);
      if (v180 != buf)
      {
        free(v180);
      }
    }

    if (v45 & 1 | ((v43 & 1) == 0))
    {
      if (v225 != v42)
      {
        v48 = *(v42 + 80);
        if (*(v48 + 114) == 1)
        {
          BYTE2(v232) = 1;
        }

        if (*(v48 + 112) == 1)
        {
          LOBYTE(v232) = 1;
        }

        if (*(v48 + 113) == 1)
        {
          BYTE1(v232) = 1;
        }

        v49 = v233;
        *(v48 + 112) = v232;
        *(v48 + 128) = v49;
        *(v48 + 144) = v234;
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v50 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          (*(*v48 + 16))(buf, v48);
          v51 = buf[23];
          v52 = *buf;
          sub_100EDCE5C(v248);
          v53 = buf;
          if (v51 < 0)
          {
            v53 = v52;
          }

          if (v248[23] >= 0)
          {
            v54 = v248;
          }

          else
          {
            v54 = *v248;
          }

          *__p = 136315394;
          *&__p[4] = v53;
          *&__p[12] = 2080;
          v242 = *&v54;
          _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %s, will be downloaded, details, %s", __p, 0x16u);
          if ((v248[23] & 0x80000000) != 0)
          {
            operator delete(*v248);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABFF0C(buf);
          v192 = qword_1025D4608;
          (*(*v48 + 16))(v248, v48);
          v193 = v248[23];
          v194 = *v248;
          sub_100EDCE5C(__p);
          v195 = v248;
          if (v193 < 0)
          {
            v195 = v194;
          }

          if (v243[1] >= 0)
          {
            v196 = __p;
          }

          else
          {
            v196 = *__p;
          }

          *v244 = 136315394;
          *&v244[4] = v195;
          v245 = 2080;
          v246 = v196;
          LODWORD(v216) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v192, 2, "TILE: requestDownload, tileid, %s, will be downloaded, details, %s", v244, v216);
          v198 = v197;
          if ((v243[1] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if ((v248[23] & 0x80000000) != 0)
          {
            operator delete(*v248);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v198);
          if (v198 != buf)
          {
            free(v198);
          }
        }

        v55 = 0;
        v56 = 1;
        goto LABEL_132;
      }

      if ((v43 & *(a1 + 200) & v45) == 1)
      {
        v63 = *(a1 + 424);
        if (v63 == 2)
        {
          v55 = 1;
        }

        else
        {
          v55 = (v63 == 1) & BYTE2(v232);
        }

        v64 = sub_100085520(v14 + 184, &v235);
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v65 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          (*(*v64 + 16))(v248, v64);
          v66 = v248[23];
          v67 = *v248;
          sub_100EDCE5C(__p);
          v68 = v248;
          if (v66 < 0)
          {
            v68 = v67;
          }

          if (v243[1] >= 0)
          {
            v69 = __p;
          }

          else
          {
            v69 = *__p;
          }

          *buf = 136315906;
          *&buf[4] = v68;
          *&buf[12] = 2080;
          *&buf[14] = v69;
          *&buf[22] = 1024;
          *&buf[24] = BYTE2(v232);
          *&buf[28] = 1024;
          *&buf[30] = v55;
          _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %s, is locked will be redownloaded, details, %s, allowRedownload, %d, isAddToDownloadList, %d", buf, 0x22u);
          if ((v243[1] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if ((v248[23] & 0x80000000) != 0)
          {
            operator delete(*v248);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABFF0C(buf);
          v209 = qword_1025D4608;
          (*(*v64 + 16))(__p, v64);
          v210 = v243[1];
          v211 = *__p;
          sub_100EDCE5C(v244);
          v212 = __p;
          if (v210 < 0)
          {
            v212 = v211;
          }

          if (v247 >= 0)
          {
            v213 = v244;
          }

          else
          {
            v213 = *v244;
          }

          *v248 = 136315906;
          *&v248[4] = v212;
          *&v248[12] = 2080;
          *&v248[14] = v213;
          *&v248[22] = 1024;
          *&v248[24] = BYTE2(v232);
          *&v248[28] = 1024;
          *&v248[30] = v55;
          LODWORD(v216) = 34;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v209, 2, "TILE: requestDownload, tileid, %s, is locked will be redownloaded, details, %s, allowRedownload, %d, isAddToDownloadList, %d", v248, v216, v217, v219);
          v215 = v214;
          if (v247 < 0)
          {
            operator delete(*v244);
          }

          if ((v243[1] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v215);
          if (v215 != buf)
          {
            free(v215);
          }
        }

        goto LABEL_131;
      }

      if (v43)
      {
        v55 = 0;
LABEL_131:
        v56 = 0;
        goto LABEL_132;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v142 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v143 = v238;
        v144 = v239;
        sub_100EDCE5C(v248);
        v145 = v248[23] >= 0 ? v248 : *v248;
        *buf = 134546179;
        *&buf[4] = v144;
        *&buf[12] = 2053;
        *&buf[14] = v143;
        *&buf[22] = 2080;
        *&buf[24] = v145;
        _os_log_impl(dword_100000000, v142, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %{sensitive}.8lf, %{sensitive}8lf, will be downloaded, details, %s", buf, 0x20u);
        if ((v248[23] & 0x80000000) != 0)
        {
          operator delete(*v248);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_110;
      }

      sub_101ABFF0C(buf);
      v146 = qword_1025D4608;
      v147 = v238;
      v148 = v239;
      sub_100EDCE5C(__p);
      if (v243[1] >= 0)
      {
        v149 = __p;
      }

      else
      {
        v149 = *__p;
      }

      *v248 = 134546179;
      *&v248[4] = v148;
      *&v248[12] = 2053;
      *&v248[14] = v147;
      *&v248[22] = 2080;
      *&v248[24] = v149;
      LODWORD(v216) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v146, 2, "TILE: requestDownload, tileid, %{sensitive}.8lf, %{sensitive}8lf, will be downloaded, details, %s", v248, v216);
      v151 = v150;
      if ((v243[1] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      v57 = sub_100085520(v14 + 184, &v235);
      v58 = sub_100232000(v57, v41 & 1, *(v14 + 128), a8);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v59 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        (*(*v57 + 16))(v248, v57);
        v60 = v248[23] >= 0 ? v248 : *v248;
        *buf = 136315906;
        *&buf[4] = v60;
        *&buf[12] = 1024;
        *&buf[14] = BYTE1(v234);
        *&buf[18] = 1024;
        *&buf[20] = v58;
        *&buf[24] = 1024;
        *&buf[26] = v225 != v42;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %s, already available, isUpdateMTimestamp, %d, isShouldBeRefreshed, %d, isBeingDownloaded, %d", buf, 0x1Eu);
        if ((v248[23] & 0x80000000) != 0)
        {
          operator delete(*v248);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ABFF0C(buf);
        v181 = qword_1025D4608;
        (*(*v57 + 16))(__p, v57);
        if (v243[1] >= 0)
        {
          v182 = __p;
        }

        else
        {
          v182 = *__p;
        }

        *v248 = 136315906;
        *&v248[4] = v182;
        *&v248[12] = 1024;
        *&v248[14] = BYTE1(v234);
        *&v248[18] = 1024;
        *&v248[20] = v58;
        *&v248[24] = 1024;
        *&v248[26] = v225 != v42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v181, 2, "TILE: requestDownload, tileid, %s, already available, isUpdateMTimestamp, %d, isShouldBeRefreshed, %d, isBeingDownloaded, %d", v248, 30, v217, v219);
        v184 = v183;
        if ((v243[1] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v184);
        if (v184 != buf)
        {
          free(v184);
        }
      }

      if (BYTE1(v234) == 1)
      {
        sub_10025B540(v57, a8);
      }

      v55 = 0;
      if (!v58)
      {
        v56 = 0;
        goto LABEL_132;
      }

      v56 = 0;
      if (v225 != v42)
      {
LABEL_132:
        v70 = v240;
        if (v240 == 1)
        {
          sub_10001CAF4(buf);
          v71 = sub_10001CB4C(*buf, "ForceDownloadDEMTiles", (a1 + 448), 0xFFFFFFFFLL);
          if (*&buf[8])
          {
            sub_100008080(*&buf[8]);
          }

          if (v71)
          {
            if (qword_1025D4650 != -1)
            {
              sub_101ABFFBC();
            }

            v72 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v73 = *(a1 + 448);
              *buf = 67109120;
              *&buf[4] = v73;
              _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "TILE: DEM,fForceDownloadDEMTiles, %d", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ABFFE4(buf);
              v202 = *(a1 + 448);
              *v248 = 67109120;
              *&v248[4] = v202;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "TILE: DEM,fForceDownloadDEMTiles, %d", v248);
              v204 = v203;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v203);
              if (v204 != buf)
              {
                free(v204);
              }
            }
          }

          if ((*(a1 + 448) & 1) == 0 && (sub_10024F62C((a1 + 528), &v239, &v238) & 1) == 0)
          {
            if (qword_1025D4600 != -1)
            {
              sub_101ABFEE4();
            }

            v74 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_INFO, "TILE: DEM, skip, tile is not available based on availability file", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ABFF0C(buf);
              *v248 = 0;
              LODWORD(v216) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "TILE: DEM, skip, tile is not available based on availability file", v248, v216);
              v208 = v207;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v207);
              if (v208 != buf)
              {
                free(v208);
              }
            }

            v55 = 0;
          }

          v70 = v240;
        }

        if (v70 == 2 && (sub_100258AE0((a1 + 624), &v239, &v238) & 1) == 0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_101ABFEE4();
          }

          v83 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_INFO, "TILE: HRSE, skip, tile is not available based on availability file", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101ABFF0C(buf);
            *v248 = 0;
            LODWORD(v216) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "TILE: HRSE, skip, tile is not available based on availability file", v248, v216);
            v206 = v205;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v205);
            if (v206 != buf)
            {
              free(v206);
            }
          }
        }

        else if (v55)
        {
          sub_1010AB49C(*(v14 + 4), __p);
          v75 = *__p;
          *__p = 0;
          v231 = v75;
          sub_100EF3E20(a1, &v231, &v235, &v232);
          v76 = v231;
          v231 = 0;
          if (v76)
          {
            (*(*v76 + 8))(v76);
          }

          if (qword_1025D4620 != -1)
          {
            sub_101ABFF50();
          }

          v77 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v78 = sub_100085790(v235);
            v79 = sub_100085338(&v235);
            v80 = sub_100085314(&v235);
            v81 = *(a1 + 128);
            *buf = 136446979;
            *&buf[4] = v78;
            *&buf[12] = 2053;
            *&buf[14] = v79;
            *&buf[22] = 2053;
            *&buf[24] = v80;
            *&buf[32] = 2050;
            *&buf[34] = v81;
            _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101ABFF78(buf);
            v185 = qword_1025D4628;
            v186 = sub_100085790(v235);
            v187 = sub_100085338(&v235);
            v188 = sub_100085314(&v235);
            v189 = *(a1 + 128);
            *v248 = 136446979;
            *&v248[4] = v186;
            *&v248[12] = 2053;
            *&v248[14] = v187;
            *&v248[22] = 2053;
            *&v248[24] = v188;
            *&v248[32] = 2050;
            *&v248[34] = v189;
            LODWORD(v216) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v185, 0, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", v248, v216);
            v191 = v190;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v190);
            if (v191 != buf)
            {
              free(v191);
            }
          }

          v82 = *__p;
          *__p = 0;
          if (v82)
          {
            (*(*v82 + 8))(v82);
          }

          v56 = 1;
        }

        *v248 = v235;
        *&v248[16] = v236;
        if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&v248[24], v237.__r_.__value_.__l.__data_, v237.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v248[24] = v237;
        }

        v223 = v56;
        if ((v233 & 0x80000000) == 0)
        {
          v84 = -v233;
          v220 = (2 * v233) | 1;
          v222 = 136446979;
          v221 = -v233;
          v218 = v233;
          do
          {
            v86 = v220;
            v85 = v221;
            do
            {
              if (!(v85 | v84))
              {
                goto LABEL_230;
              }

              *v248 = v235;
              *&v248[16] = v236;
              std::string::operator=(&v248[24], &v237);
              v87 = *(v14 + 160);
              v88 = *(v14 + 152);
              *&v87 = v87;
              sub_100085AC4(v248, v84, v85, v88, *&v87);
              if (sub_1000852BC(v248))
              {
                if (qword_1025D4600 != -1)
                {
                  sub_101ABFEE4();
                }

                v89 = qword_1025D4608;
                if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                {
                  v90 = *&v248[8];
                  v91 = *&v248[4];
                  sub_100B4EFD4(v248, __p);
                  v92 = __p;
                  if (v243[1] < 0)
                  {
                    v92 = *__p;
                  }

                  *buf = 67110146;
                  *&buf[4] = v84;
                  *&buf[8] = 1024;
                  *&buf[10] = v85;
                  *&buf[14] = 1024;
                  *&buf[16] = v90;
                  *&buf[20] = 1024;
                  *&buf[22] = v91;
                  *&buf[26] = 2080;
                  *&buf[28] = v92;
                  _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                  if ((v243[1] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101ABFF0C(buf);
                  v120 = qword_1025D4608;
                  v121 = *&v248[8];
                  v122 = *&v248[4];
                  sub_100B4EFD4(v248, v244);
                  v123 = v244;
                  if (v247 < 0)
                  {
                    v123 = *v244;
                  }

                  *__p = 67110146;
                  *&__p[4] = v84;
                  *&__p[8] = 1024;
                  *&__p[10] = v85;
                  LOWORD(v242) = 1024;
                  *(&v242 + 2) = v121;
                  HIWORD(v242) = 1024;
                  *v243 = v122;
                  *&v243[4] = 2080;
                  *&v243[6] = v123;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v120, 2, "TILE: requestDownload, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", __p, 36, v217, v220, v222);
                  v125 = v124;
                  if (v247 < 0)
                  {
                    operator delete(*v244);
                  }

                  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v125);
                  if (v125 != buf)
                  {
                    free(v125);
                  }
                }

                v93 = sub_10008535C(a1 + 112, v248);
                v94 = sub_1000853E0(v14 + 184, v248);
                v95 = v240;
                if (v240 == 1)
                {
                  *buf = sub_100085338(v248) + *(v14 + 152) * 0.5;
                  *__p = sub_100085314(v248) + *(v14 + 160) * 0.5;
                  if (!sub_10024F62C((a1 + 528), buf, __p))
                  {
                    goto LABEL_230;
                  }

                  v95 = v240;
                }

                if (v95 != 2 || (*buf = sub_100085338(v248) + *(v14 + 152) * 0.5, *__p = sub_100085314(v248) + *(v14 + 160) * 0.5, (sub_100258AE0((a1 + 624), buf, __p) & 1) != 0))
                {
                  if (((*(a1 + 200) | v94) & 1) == 0)
                  {
                    v96 = *a5 & *(a5 + 1);
                    if ((v225 == v93) | v96 & 1)
                    {
                      if (qword_1025D4600 != -1)
                      {
                        sub_101ABFEE4();
                      }

                      v97 = qword_1025D4608;
                      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                      {
                        sub_100B4EFD4(v248, buf);
                        v98 = buf;
                        if (buf[23] < 0)
                        {
                          v98 = *buf;
                        }

                        *__p = 136315138;
                        *&__p[4] = v98;
                        _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, adding neighbour, %s", __p, 0xCu);
                        if ((buf[23] & 0x80000000) != 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101ABFF0C(buf);
                        v126 = qword_1025D4608;
                        sub_100B4EFD4(v248, __p);
                        v127 = __p;
                        if (v243[1] < 0)
                        {
                          v127 = *__p;
                        }

                        *v244 = 136315138;
                        *&v244[4] = v127;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v126, 2, "TILE: requestDownload, adding neighbour, %s", v244);
                        v129 = v128;
                        if ((v243[1] & 0x80000000) != 0)
                        {
                          operator delete(*__p);
                        }

                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v129);
                        if (v129 != buf)
                        {
                          free(v129);
                        }
                      }

                      if (((v225 != sub_10008535C(a1 + 112, v248)) & v96) == 1)
                      {
                        if (qword_1025D4600 != -1)
                        {
                          sub_101ABFEE4();
                        }

                        v99 = qword_1025D4608;
                        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                        {
                          sub_100B4EFD4(v248, buf);
                          v100 = buf;
                          if (buf[23] < 0)
                          {
                            v100 = *buf;
                          }

                          *__p = 136315138;
                          *&__p[4] = v100;
                          _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, neighbour already in download queue updating to cellular download, %s", __p, 0xCu);
                          if ((buf[23] & 0x80000000) != 0)
                          {
                            operator delete(*buf);
                          }
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101ABFF0C(buf);
                          v136 = qword_1025D4608;
                          sub_100B4EFD4(v248, __p);
                          v137 = __p;
                          if (v243[1] < 0)
                          {
                            v137 = *__p;
                          }

                          *v244 = 136315138;
                          *&v244[4] = v137;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v136, 2, "TILE: requestDownload, neighbour already in download queue updating to cellular download, %s", v244);
                          v139 = v138;
                          if ((v243[1] & 0x80000000) != 0)
                          {
                            operator delete(*__p);
                          }

                          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v139);
                          if (v139 != buf)
                          {
                            free(v139);
                          }
                        }

                        *buf = v248;
                        v101 = sub_10086026C((a1 + 112), v248, &unk_101C66300, buf, __p)[10];
                        v102 = *a5;
                        v103 = a5[1];
                        *(v101 + 144) = *(a5 + 16);
                        *(v101 + 112) = v102;
                        *(v101 + 128) = v103;
                      }

                      else
                      {
                        sub_1010AB49C(*(v14 + 4), &v230);
                        sub_100EF3E20(a1, &v230, v248, &v232);
                        v114 = v230;
                        v230 = 0;
                        if (v114)
                        {
                          (*(*v114 + 8))(v114);
                        }

                        v223 = 1;
                      }

                      if (qword_1025D4620 != -1)
                      {
                        sub_101ABFF50();
                      }

                      v115 = qword_1025D4628;
                      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
                      {
                        v116 = sub_100085790(*v248);
                        v117 = sub_100085338(v248);
                        v118 = sub_100085314(v248);
                        v119 = *(a1 + 128);
                        *buf = v222;
                        *&buf[4] = v116;
                        *&buf[12] = 2053;
                        *&buf[14] = v117;
                        *&buf[22] = 2053;
                        *&buf[24] = v118;
                        *&buf[32] = 2050;
                        *&buf[34] = v119;
                        _os_log_impl(dword_100000000, v115, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", buf, 0x2Au);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101ABFF78(buf);
                        v130 = qword_1025D4628;
                        v131 = sub_100085790(*v248);
                        v132 = sub_100085338(v248);
                        v133 = sub_100085314(v248);
                        v134 = *(a1 + 128);
                        *__p = v222;
                        *&__p[4] = v131;
                        *&__p[12] = 2053;
                        v242 = v132;
                        *v243 = 2053;
                        *&v243[2] = v133;
                        *&v243[10] = 2050;
                        *&v243[12] = v134;
                        LODWORD(v216) = 42;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v130, 0, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", __p, v216);
                        v113 = v135;
                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v135);
LABEL_245:
                        if (v113 != buf)
                        {
                          free(v113);
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                if (qword_1025D4600 != -1)
                {
                  sub_101ABFEE4();
                }

                v104 = qword_1025D4608;
                if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                {
                  v105 = *&v248[8];
                  v106 = *&v248[4];
                  sub_100B4EFD4(v248, __p);
                  v107 = __p;
                  if (v243[1] < 0)
                  {
                    v107 = *__p;
                  }

                  *buf = 67110146;
                  *&buf[4] = v84;
                  *&buf[8] = 1024;
                  *&buf[10] = v85;
                  *&buf[14] = 1024;
                  *&buf[16] = v105;
                  *&buf[20] = 1024;
                  *&buf[22] = v106;
                  *&buf[26] = 2080;
                  *&buf[28] = v107;
                  _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, out of boundaries, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                  if ((v243[1] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101ABFF0C(buf);
                  v108 = qword_1025D4608;
                  v109 = *&v248[8];
                  v110 = *&v248[4];
                  sub_100B4EFD4(v248, v244);
                  v111 = v244;
                  if (v247 < 0)
                  {
                    v111 = *v244;
                  }

                  *__p = 67110146;
                  *&__p[4] = v84;
                  *&__p[8] = 1024;
                  *&__p[10] = v85;
                  LOWORD(v242) = 1024;
                  *(&v242 + 2) = v109;
                  HIWORD(v242) = 1024;
                  *v243 = v110;
                  *&v243[4] = 2080;
                  *&v243[6] = v111;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v108, 2, "TILE: requestDownload, out of boundaries, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", __p, 36, v217, v220, v222);
                  v113 = v112;
                  if (v247 < 0)
                  {
                    operator delete(*v244);
                  }

                  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v113);
                  goto LABEL_245;
                }
              }

LABEL_230:
              ++v85;
              --v86;
            }

            while (v86);
          }

          while (v84++ != v218);
        }

        if (v223)
        {
          v141 = *(a1 + 40);
          v229[0] = _NSConcreteStackBlock;
          v229[1] = 3221225472;
          v229[2] = sub_100EF685C;
          v229[3] = &unk_10245D2A8;
          v229[4] = a1;
          *&v229[5] = a8;
          [v141 async:v229];
        }

        if ((v248[47] & 0x80000000) != 0)
        {
          operator delete(*&v248[24]);
        }

LABEL_35:
        v35 = 1;
        goto LABEL_48;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v61 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        (*(*v57 + 16))(buf, v57);
        v62 = buf[23] >= 0 ? buf : *buf;
        *v248 = 136315138;
        *&v248[4] = v62;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, refresh download, %s", v248, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_110:
        v56 = 0;
        v55 = 1;
        goto LABEL_132;
      }

      sub_101ABFF0C(buf);
      v199 = qword_1025D4608;
      (*(*v57 + 16))(v248, v57);
      if (v248[23] >= 0)
      {
        v200 = v248;
      }

      else
      {
        v200 = *v248;
      }

      *__p = 136315138;
      *&__p[4] = v200;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v199, 2, "TILE: requestDownload, refresh download, %s", __p);
      v151 = v201;
      if ((v248[23] & 0x80000000) != 0)
      {
        operator delete(*v248);
      }
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v151);
    if (v151 != buf)
    {
      free(v151);
    }

    goto LABEL_110;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101ABFEE4();
  }

  v29 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, ignoring request, no sec_key", buf, 2u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_47;
  }

  sub_101ABFF0C(buf);
  *v248 = 0;
  LODWORD(v216) = 2;
  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "TILE: requestDownload, ignoring request, no sec_key", v248, v216);
  v31 = v30;
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v30);
LABEL_291:
  if (v31 != buf)
  {
    free(v31);
  }

LABEL_47:
  v35 = 0;
LABEL_48:
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  return v35;
}

void sub_10024F408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10024F62C(uint64_t *a1, double *a2, long double *a3)
{
  *(a1 + 64) = 0;
  v4 = *a3;
  v5 = *a2;
  v6 = vcvtmd_s64_f64((*a2 + 90.0) * 10.0) + (floor(*a3 * 10.0) * 100000.0);
  v7 = a1;
  if ((a1[3] & 1) != 0 && (v7 = a1, v6 == *(a1 + 7)))
  {
    v8 = *(a1 + 32);
  }

  else
  {
    while (1)
    {
      v7 = v7[1];
      if (v7 == a1)
      {
        break;
      }

      if (v6 == *(v7 + 4))
      {
        v8 = 1;
        return v8 & 1;
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 7) = 0;
    *(a1 + 32) = 0;
    v9 = sub_10024FF8C(a1, v5, v4);
    v8 = v9;
    if (v9)
    {
      operator new();
    }

    if ((a1[8] & 1) == 0)
    {
      *(a1 + 24) = 1;
      *(a1 + 7) = v6;
      *(a1 + 32) = v9;
    }
  }

  return v8 & 1;
}

id *sub_10024F748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000FF38(v15, "CLCellTilesManager::traverseAllTilesSets", 0);
  for (i = -3; i != 10; ++i)
  {
    if (i <= 2)
    {
      v7 = sub_100088E8C(i + 3, (a1 + 400));
      if (qword_1025D48A0 != -1)
      {
        sub_101B15D58();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v9 = v7 + 8;
        if (*(v7 + 31) < 0)
        {
          v9 = *(v7 + 8);
        }

        *buf = 136315394;
        v21 = a2;
        v22 = 2080;
        v23 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: performing, sAction, %s, tilesSet, %s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B15D80(buf);
        v10 = v7 + 8;
        if (*(v7 + 31) < 0)
        {
          v10 = *(v7 + 8);
        }

        v16 = 136315394;
        v17 = a2;
        v18 = 2080;
        v19 = v10;
        LODWORD(v14) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TILE: performing, sAction, %s, tilesSet, %s", &v16, v14);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 2, "void CLCellTilesManager::traverseAllTilesSets(const char *, CLTileManagerTraverseTilesSetBlock)", "%s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      (*(a3 + 16))(a3, v7);
    }
  }

  return sub_10001A420(v15);
}

void sub_10024F978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

id *sub_10024F998(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 0.0)
  {
    sub_101B16980();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10024FA34;
  v5[3] = &unk_1024707B8;
  v5[4] = a1;
  v5[5] = a2;
  return sub_10024F748(a1, "updateTileLocationRelevancy", v5);
}

void sub_10024FA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 144))
  {
    (*(**(v3 + 352) + 16))(*(v3 + 352));
    v6 = *(a1 + 40);
    if (*(v6 + 20) < 0.0 || vabdd_f64(v5, *(v6 + 76)) > 3600.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B15F3C();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TILE: location not relevant", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B18B64();
      }

      return;
    }

    sub_1000850D0(v27, (a2 + 4));
    sub_10008511C(v27, -1, *(*(a1 + 40) + 4), *(*(a1 + 40) + 12), *(a2 + 152), *(a2 + 160));
    if (sub_1000852BC(v27))
    {
      v10 = sub_100085520(a2 + 184, v27);
      v11 = v10;
      if (!v10 || !sub_10008AC98(v10, *(v3 + 128)))
      {
        goto LABEL_43;
      }

      v12 = (*(**(v3 + 352) + 16))(*(v3 + 352));
      v13 = sub_10025B540(v11, v12);
      if (qword_1025D48A0 != -1)
      {
        sub_101B15D58();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a2 + 4);
        sub_100B4EFD4(v27, &v34);
        v16 = SHIBYTE(v38) >= 0 ? &v34 : v34;
        *buf = 67109634;
        *v31 = v13;
        *&v31[4] = 1024;
        *&v31[6] = v15;
        v32 = 2080;
        v33 = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "TILE: updating mtime, %d, type, %d, tileid, %s", buf, 0x18u);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(v34);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_43;
      }

      sub_101B15D80(buf);
      v17 = qword_1025D48A8;
      v18 = *(a2 + 4);
      sub_100B4EFD4(v27, __p);
      if (v26 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      LODWORD(v34) = 67109634;
      HIDWORD(v34) = v13;
      v35 = 1024;
      v36 = v18;
      v37 = 2080;
      v38 = v19;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v17, 2, "TILE: updating mtime, %d, type, %d, tileid, %s", &v34, 24, v24);
      v21 = v20;
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLCellTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v21);
      if (v21 == buf)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1000E1C54();
      }

      v22 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "CellTile, Invalid tile id!, #CloneMe", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_43;
      }

      sub_101B15D14(buf);
      LOWORD(v34) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "CellTile, Invalid tile id!, #CloneMe", &v34, 2);
      v21 = v23;
      sub_100152C7C("Generic", 1, 0, 0, "void CLCellTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v23);
      if (v21 == buf)
      {
        goto LABEL_43;
      }
    }

    free(v21);
LABEL_43:
    if (v29 < 0)
    {
      operator delete(v28);
    }

    return;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101B15F3C();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a2 + 8;
    if (*(a2 + 31) < 0)
    {
      v9 = *(a2 + 8);
    }

    *buf = 136315138;
    *v31 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: tiles, %s, not active", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B18A64();
  }
}

void sub_10024FF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024FF8C(uint64_t a1, double a2, long double a3)
{
  if ((sub_100250D6C(a1) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10195D314();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 64);
      *buf = 67240192;
      *v70 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#Warning,DEM,availability file is not valid,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195D328(a1);
    }

    return 0;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  memset(v75, 0, sizeof(v75));
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v63 = 0;
  if (qword_1025D4650 != -1)
  {
    sub_10195D314();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v7 = *v7;
    }

    *buf = 136446210;
    *v70 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "DEM,Reading,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v51 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v51 = *v51;
    }

    v64 = 136446210;
    *v65 = v51;
    LODWORD(v61) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,Reading,%{public}s", &v64, v61);
    v53 = v52;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v52);
    if (v53 != buf)
    {
      free(v53);
    }
  }

  v8 = (a1 + 72);
  v9 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v9 = *v8;
  }

  v10 = fopen(v9, "rb");
  v11 = v10;
  if (!v10)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v19 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v19 = *v8;
      }

      v20 = *(a1 + 64);
      v21 = *__error();
      *buf = 136446722;
      *v70 = v19;
      *&v70[8] = 1026;
      v71 = v20;
      v72 = 1026;
      v73 = v21;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#Error,DEM,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      if (*(a1 + 95) < 0)
      {
        v8 = *v8;
      }

      v54 = qword_1025D4658;
      v55 = *(a1 + 64);
      v56 = *__error();
      v64 = 136446722;
      *v65 = v8;
      *&v65[8] = 1026;
      v66 = v55;
      v67 = 1026;
      v68 = v56;
      LODWORD(v61) = 24;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v54, 16, "#Error,DEM,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", &v64, v61);
      v58 = v57;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v57);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    return 0;
  }

  v62 = 0;
  if ((sub_1002576A8(v10, v74, v75, &v63, &v62) & 1) == 0)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v23 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 64);
      *buf = 67240192;
      *v70 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "DEM,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_39;
    }

    sub_10195D460(buf);
    v59 = *(a1 + 64);
    v64 = 67240192;
    *v65 = v59;
    LODWORD(v61) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", &v64, v61);
    v15 = v60;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v60);
    goto LABEL_112;
  }

  v12 = SBYTE10(v76);
  if (SBYTE10(v76) <= a2)
  {
    v26 = SBYTE11(v76);
    if (SBYTE11(v76) <= a2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 134545921;
        *v70 = a2;
        *&v70[8] = 1025;
        v71 = v26;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "DEM,input latitude, %{sensitive}.3lf, beyond maximum acceptable latitude, %{private}d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_10195D460(buf);
      v64 = 134545921;
      *v65 = a2;
      *&v65[8] = 1025;
      v66 = v26;
      LODWORD(v61) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "DEM,input latitude, %{sensitive}.3lf, beyond maximum acceptable latitude, %{private}d", &v64, v61);
      v15 = v32;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v32);
      goto LABEL_112;
    }

    sub_1001D08A4(a3);
    v28 = vcvtmd_s64_f64(v27 * 10.0) + 3600 * ((floor(a2 * 10.0) + 900.0) - 10 * v12 - 900);
    if (v28 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 + 7;
    }

    HIBYTE(v61) = 0;
    if ((v29 >> 3) >= HIDWORD(v77))
    {
      *(a1 + 64) = 1;
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      v33 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 64);
        *buf = 67240448;
        *v70 = v29 >> 3;
        *&v70[4] = 1026;
        *&v70[6] = v34;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "#Warning,DEM,avl byte index,%{public}d,is larger than the data available in the availabilty file,fNeedToDownloadAvlFile,%{public}d", buf, 0xEu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_10195D460(buf);
      v35 = *(a1 + 64);
      v64 = 67240448;
      *v65 = v29 >> 3;
      *&v65[4] = 1026;
      *&v65[6] = v35;
      LODWORD(v61) = 14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,DEM,avl byte index,%{public}d,is larger than the data available in the availabilty file,fNeedToDownloadAvlFile,%{public}d", &v64, v61);
      v15 = v36;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v36);
      goto LABEL_112;
    }

    fseek(v11, v29 >> 3, 1);
    if (fread(&v61 + 7, 1uLL, 1uLL, v11) != 1)
    {
      *(a1 + 64) = 1;
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      v37 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v38 = *(a1 + 64);
        *buf = 67240192;
        *v70 = v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - unable to get data byte,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_10195D460(buf);
      v39 = *(a1 + 64);
      v64 = 67240192;
      *v65 = v39;
      LODWORD(v61) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,DEM,Invalid CLDEM availability file - unable to get data byte,fNeedToDownloadAvlFile,%{public}d", &v64, v61);
      v15 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v40);
      goto LABEL_112;
    }

    v30 = v28 - (v29 & 0xFFFFFFF8);
    fclose(v11);
    if (v30 > 3)
    {
      if (v30 <= 5)
      {
        if (v30 == 4)
        {
          v22 = (HIBYTE(v61) >> 4) & 1;
        }

        else
        {
          v22 = (HIBYTE(v61) >> 5) & 1;
        }

        goto LABEL_85;
      }

      if (v30 == 6)
      {
        v22 = (HIBYTE(v61) >> 6) & 1;
        goto LABEL_85;
      }

      if (v30 == 7)
      {
        v22 = v61 < 0;
        goto LABEL_85;
      }
    }

    else
    {
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v22 = (HIBYTE(v61) >> 2) & 1;
        }

        else
        {
          v22 = (HIBYTE(v61) >> 3) & 1;
        }

        goto LABEL_85;
      }

      if (!v30)
      {
        v22 = HIBYTE(v61) & 1;
        goto LABEL_85;
      }

      if (v30 == 1)
      {
        v22 = (HIBYTE(v61) >> 1) & 1;
LABEL_85:
        if (qword_1025D4650 != -1)
        {
          sub_10195D438();
        }

        v41 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a1 + 64);
          *buf = 67240448;
          *v70 = v22;
          *&v70[4] = 1026;
          *&v70[6] = v42;
          _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "DEM,isTileAvailable,%{public}d,fNeedToDownloadAvlFile,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195D460(buf);
          v43 = *(a1 + 64);
          v64 = 67240448;
          *v65 = v22;
          *&v65[4] = 1026;
          *&v65[6] = v43;
          LODWORD(v61) = 14;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,isTileAvailable,%{public}d,fNeedToDownloadAvlFile,%{public}d", &v64, v61);
          v45 = v44;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v44);
          if (v45 != buf)
          {
            free(v45);
          }
        }

        goto LABEL_41;
      }
    }

    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v46 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v47 = *(a1 + 64);
      *buf = 67240192;
      *v70 = v47;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_FAULT, "DEM,Unexpected case,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195D460(buf);
      v48 = *(a1 + 64);
      v64 = 67240192;
      *v65 = v48;
      LODWORD(v61) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 17, "DEM,Unexpected case,fNeedToDownloadAvlFile,%{public}d", &v64, v61);
      v50 = v49;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v49);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    goto LABEL_40;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10195D438();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 134545921;
    *v70 = a2;
    *&v70[8] = 1025;
    v71 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "DEM,input latitude, %{sensitive}.3lf, below minimum acceptable latitude, %{private}d", buf, 0x12u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_39;
  }

  sub_10195D460(buf);
  v64 = 134545921;
  *v65 = a2;
  *&v65[8] = 1025;
  v66 = v12;
  LODWORD(v61) = 18;
  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "DEM,input latitude, %{sensitive}.3lf, below minimum acceptable latitude, %{private}d", &v64, v61);
  v15 = v14;
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v14);
LABEL_112:
  if (v15 != buf)
  {
    free(v15);
  }

LABEL_39:
  fclose(v11);
LABEL_40:
  v22 = 0;
LABEL_41:
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v79);
  }

  return v22;
}

void sub_100250D10(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(*(v1 + 136));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100250D6C(uint64_t a1)
{
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  memset(v70, 0, sizeof(v70));
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v55 = 0;
  if (qword_1025D4650 != -1)
  {
    sub_10195D314();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 64);
    *buf = 67240192;
    LODWORD(v64) = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "DEM,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195D460(buf);
    v36 = *(a1 + 64);
    *v58 = 67240192;
    *&v58[4] = v36;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,fNeedToDownloadAvlFile,%{public}d", v58, 8);
    v38 = v37;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v37);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  if (!sub_100251884(a1, v4))
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v64) = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#Warning,DEM,availability file does not exist,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_10195D460(buf);
    v21 = *(a1 + 64);
    *v58 = 67240192;
    *&v58[4] = v21;
    LODWORD(v54) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,DEM,availability file does not exist,fNeedToDownloadAvlFile,%{public}d", v58, v54);
    v23 = v22;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v22);
    if (v23 == buf)
    {
      return 0;
    }

LABEL_75:
    free(v23);
    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10195D438();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v6 = *v6;
    }

    *buf = 136446210;
    v64 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "DEM,Reading,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v39 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v39 = *v39;
    }

    *v58 = 136446210;
    *&v58[4] = v39;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,Reading,%{public}s", v58, v54);
    v41 = v40;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v40);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  v7 = (a1 + 72);
  v8 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v8 = *v7;
  }

  v9 = fopen(v8, "rb");
  v10 = v9;
  if (!v9)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v25 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v25 = *v7;
      }

      v26 = *(a1 + 64);
      v27 = *__error();
      *buf = 136446722;
      v64 = v25;
      v65 = 1026;
      v66 = v26;
      v67 = 1026;
      v68 = v27;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#Error,DEM,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", buf, 0x18u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    if (*(a1 + 95) < 0)
    {
      v7 = *v7;
    }

    v42 = qword_1025D4658;
    v43 = *(a1 + 64);
    v44 = *__error();
    *v58 = 136446722;
    *&v58[4] = v7;
    v59 = 1026;
    v60 = v43;
    v61 = 1026;
    v62 = v44;
    LODWORD(v54) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v42, 16, "#Error,DEM,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", v58, v54);
    v23 = v45;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v45);
    if (v23 == buf)
    {
      return 0;
    }

    goto LABEL_75;
  }

  *v58 = 0;
  if ((sub_1002576A8(v9, v69, v70, &v55, v58) & 1) == 0)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v64) = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "#Warning,DEM,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195D460(buf);
      v46 = *(a1 + 64);
      v56 = 67240192;
      v57 = v46;
      LODWORD(v54) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,DEM,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", &v56, v54);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    fclose(v10);
    goto LABEL_52;
  }

  fclose(v10);
  if (BYTE8(v71) != 1)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v31 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v64) = v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "DEM,availability file version does not match expected,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_52;
    }

    sub_10195D460(buf);
    v49 = *(a1 + 64);
    v56 = 67240192;
    v57 = v49;
    LODWORD(v54) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,availability file version does not match expected,fNeedToDownloadAvlFile,%{public}d", &v56, v54);
    v18 = v50;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v50);
    goto LABEL_79;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v12 = *&v72;
  v13 = DWORD2(v72);
  if (Current <= v12 + v13 + (random() % 86400))
  {
    *(a1 + 64) = 0;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v64) = v35;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "DEM,end of checkAvlFileValidityAndSetDownloadFlag function reached,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195D460(buf);
      v51 = *(a1 + 64);
      v56 = 67240192;
      v57 = v51;
      LODWORD(v54) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,end of checkAvlFileValidityAndSetDownloadFlag function reached,fNeedToDownloadAvlFile,%{public}d", &v56, v54);
      v53 = v52;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v52);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    v28 = 1;
    goto LABEL_53;
  }

  *(a1 + 64) = 1;
  if (qword_1025D4650 != -1)
  {
    sub_10195D438();
  }

  v14 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 64);
    *buf = 67240192;
    LODWORD(v64) = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "DEM,availability file has expired,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195D460(buf);
    v16 = *(a1 + 64);
    v56 = 67240192;
    v57 = v16;
    LODWORD(v54) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "DEM,availability file has expired,fNeedToDownloadAvlFile,%{public}d", &v56, v54);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v17);
LABEL_79:
    if (v18 != buf)
    {
      free(v18);
    }
  }

LABEL_52:
  v28 = 0;
LABEL_53:
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v74);
  }

  return v28;
}

void sub_100251834(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100251884(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000206B4(a1, a2);
  sub_100021668(v3, &__str);
  if (*(a1 + 63) < 0)
  {
    sub_100007244(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *&__p.st_dev = *(a1 + 40);
    *&__p.st_uid = *(a1 + 56);
  }

  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if ((__p.st_gid & 0x80000000) == 0)
  {
    st_gid_high = HIBYTE(__p.st_gid);
  }

  else
  {
    st_gid_high = __p.st_ino;
  }

  std::string::append(&__str, p_p, st_gid_high);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  std::string::operator=((a1 + 72), &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v7 = stat(p_str, &__p);
  if (v7)
  {
    *(a1 + 64) = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7 == 0;
}

void sub_100251964(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100251988(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100251970);
}

id sub_100251A28(uint64_t a1, void *a2, void *a3, char a4)
{
  [objc_msgSend(a3 "attributionTimer")];
  v9 = v8;
  [objc_msgSend(a3 "attributionTimer")];
  if (v9 < 1.79769313e308)
  {
    sub_100125EAC(a1, a2, [a3 attributionIdentifier], a4);
  }

  v10 = *(a1 + 440);

  return [v10 removeObjectForKey:a2];
}

double sub_100251B28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_101C75BF0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0xBFF0000000000000;
  result = *(a1 + 16);
  if (result > 0.0)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      *a2 = result;
      v6 = hypotf((*(a1 + 132) + *(a1 + 120)) - *(a1 + 232), (*(a1 + 136) + *(a1 + 124)) - *(a1 + 236));
      v7 = *(a1 + 160) + *(a1 + 144);
      *(a2 + 8) = v6;
      *(a2 + 16) = v7;
      result = *(a1 + 184) + *(a1 + 176);
      *(a2 + 24) = result;
      *(a2 + 32) = v5;
    }
  }

  return result;
}

void sub_100251BC8(uint64_t **a1, void *a2)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 68289282;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = [objc_msgSend(a2 "description")];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion to be released, client:%{public, location:escape_only}s}", &v15, 0x1Cu);
  }

  v5 = a1[32];
  if (!v5)
  {
LABEL_10:
    if (qword_1025D47B0 != -1)
    {
      sub_101A83058();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_msgSend(a2 "description")];
      v9 = a1[33];
      v15 = 68289538;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = v8;
      v20 = 2050;
      v21 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion not released, client:%{public, location:escape_only}s, fAccuracyAssertions size:%{public}ld}", &v15, 0x26u);
    }

    return;
  }

  while (1)
  {
    v6 = v5[4];
    if (v6 <= a2)
    {
      break;
    }

LABEL_9:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_9;
  }

  if (qword_1025D47B0 != -1)
  {
    sub_101A83058();
  }

  v10 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_msgSend(a2 "description")];
    v15 = 68289282;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion released, client:%{public, location:escape_only}s}", &v15, 0x1Cu);
  }

  v15 = a2;
  sub_1002401BC(a1 + 31, &v15);

  v12 = sub_1000EE874(a1);
  v13 = a1[16];
  Current = CFAbsoluteTimeGetCurrent();
  sub_1000EEA08(v13, v12, Current);
}

void sub_100251E30(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = sub_1000081AC();
    sub_10001CAF4(&buf);
    v6 = 0.0;
    if (sub_1000B9370(buf, "CLTRRecordingFileAgeThresholdSeconds", &v6))
    {
      v3 = v6;
    }

    else
    {
      v3 = 21600.0;
    }

    if (*(&buf + 1))
    {
      sub_100008080(*(&buf + 1));
    }

    v4 = v2 - *(a1 + 16);
    if (v4 > v3)
    {
      if (qword_1025D41D0 != -1)
      {
        sub_101B95E90();
      }

      v5 = qword_1025D41D8;
      if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v4;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "TrackRun,closing current recording file and opening a new one,second since last,%.0lf", &buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B98098(v4);
      }

      sub_101066F20(*(a1 + 40));
      *(a1 + 16) = v2;
      sub_1012997DC(a1);
    }
  }
}

void sub_100251F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100251FAC(uint64_t a1)
{
  v3 = *(a1 + 3968);
  if (v3)
  {

    sub_100251E30(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v4 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#cltr,cannot send GNSS turned off notification to TrackRunController,TrackRunController not instantiated", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101958E30();
    }
  }
}

uint64_t sub_100252058(char *a1, int a2, int *a3)
{
  v14 = a2;
  if (!*a3)
  {
    *buf = &v14;
    v5 = [sub_1000488C8((a1 + 80) &v14];
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v14;
      v8 = [v5 UTF8String];
      *buf = 67240450;
      *&buf[4] = v7;
      v18 = 2082;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#wigo,off,GnssProviderBare,%{public}d,%{public}s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A791B4(&v14, v5);
    }

    v15[0] = @"ServiceName";
    v15[1] = @"Register";
    v16[0] = v5;
    v16[1] = &__kCFBooleanFalse;
    [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    PLLogRegisteredEvent();
    a2 = v14;
  }

  v9 = sub_100145710(a1, a2, a3);
  if (v9)
  {
    if (!*a3)
    {
      *buf = 0;
      if (sub_10000608C(a1, buf, 1) >= 1)
      {
        *buf = *a3;
        v10 = sub_10000608C(a1, buf, 1);
        sub_1001C5AB8(a1, 0, v10, a3);
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v12 = *a3;
      *buf = 67240448;
      *&buf[4] = v14;
      v18 = 1026;
      LODWORD(v19) = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Unregistering for client,%{public}d,notification,%{public}d,failed", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A792C8();
    }
  }

  return v9;
}

uint64_t sub_1002522F0(uint64_t *a1, int *a2)
{
  if (!*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A772C8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,off,GnssProviderInternal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A79830();
    }
  }

  sub_1001ECC7C(a1);
  v5 = *a2;
  if (*a2 <= 34)
  {
    if (v5 > 28)
    {
      if (v5 == 29)
      {
        sub_100801AF4(a1 + 15, 0);
      }

      else if (v5 == 34)
      {
        sub_10017EC94((a1 + 15), 0);
      }
    }

    else if (v5)
    {
      if (v5 == 28)
      {
        sub_100801F78(a1 + 15, 0);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "stopLocation in location notification", v13, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A799E8();
      }

      sub_100264F58(a1);
      v12 = *a2;
      v8 = sub_10000608C(a1, &v12, 1);
      sub_1001C5AB8(a1, 0, v8, a2);
    }
  }

  else if (v5 <= 37)
  {
    if (v5 == 35)
    {
      sub_100254280(a1 + 15, 0);
    }

    else if (v5 == 37)
    {
      sub_10080250C((a1 + 15), 0);
    }
  }

  else
  {
    switch(v5)
    {
      case '&':
        v11 = 38;
        (*(*a1 + 120))(a1, &v11);
        sub_1008022D0(a1 + 15, 0);
        break;
      case ',':
        sub_10027CEC4((a1 + 15), 0);
        break;
      case '-':
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v6 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "kNotificationGNSSStatusIndication unregistered", v10, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7990C();
        }

        break;
    }
  }

  return 1;
}

double sub_1002525C4(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = *(a1 + 3912);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(a1 + 4088) = 0xFFFF;
  result = 0.0;
  *(a1 + 4092) = 0u;
  *(v2 + 12) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v2 + 28) = _Q1;
  *(v2 + 44) = _Q1;
  *(v2 + 60) = _Q1;
  *(a1 + 4172) = 0;
  *(a1 + 4176) = 0xBFF0000000000000;
  *(a1 + 4184) = 0u;
  *(a1 + 4200) = 0;
  *(v2 + 108) = 0xBFF0000000000000;
  *(a1 + 4212) = 0x7FFFFFFF;
  *(a1 + 4216) = 0;
  *(a1 + 4232) = 0;
  *(a1 + 4224) = 0;
  *(a1 + 4240) = 0;
  return result;
}

uint64_t sub_100252680(void *a1)
{
  v2 = a1 + 1;
  (*(a1[1] + 16))(a1 + 1);
  sub_100252798(a1);
  v4 = a1[29];
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[31];
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = a1[74];
  if (v6)
  {
    v3.n128_f64[0] = sub_1002538D0(v6);
  }

  v7 = a1[77];
  if (v7)
  {
    v3.n128_f64[0] = sub_1002538D0(v7);
  }

  return (*(*v2 + 24))(v2, v3);
}

void sub_100252784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100252798(uint64_t a1)
{
  v1 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v2 = v1[28];
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return (*(*v1 + 24))(v1);
}

void sub_100252848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100252860(uint64_t *a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101B05780();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[142];
    v4 = a1[148];
    v5 = a1[149];
    v8 = 134349569;
    v9 = v3;
    v10 = 2053;
    v11 = v4;
    v12 = 2053;
    v13 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterReset,LL,%{sensitive}.7lf,%{sensitive}.7lf", &v8, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B067A0(a1);
  }

  sub_1002529C4(a1);
  v6 = a1[112];
  v7 = a1[111];
  while (v6 != v7)
  {
    v6 -= 14;
    sub_1007EFC90(v6);
  }

  a1[112] = v7;
  a1[121] = a1[120];
  sub_100253630((a1 + 126));
  sub_100253630((a1 + 231));
  sub_10004FF5C(a1 + 381);
  sub_10004FF5C(a1 + 384);
  sub_10004FF5C(a1 + 387);
  sub_10004FF5C(a1 + 390);
}

void sub_1002529C4(uint64_t a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101B05780();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 1136);
    v4 = *(a1 + 1184);
    v5 = *(a1 + 1192);
    *buf = 134349569;
    *&buf[4] = v3;
    *&buf[12] = 2053;
    *&buf[14] = v4;
    *&buf[22] = 2053;
    *&v23 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterResetForReseed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B066A0(a1);
  }

  sub_100252D30(a1);
  *(a1 + 2968) = -1;
  v6 = *(a1 + 872);
  v7 = *(a1 + 864);
  while (v6 != v7)
  {
    v6 -= 14;
    sub_1007EFC90(v6);
  }

  *(a1 + 872) = v7;
  sub_100253098(a1 + 984, *(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 2832) = 0u;
  sub_1001FB750((a1 + 912));
  buf[0] = 0;
  *&buf[8] = 0u;
  v23 = 0u;
  LODWORD(v24) = 0;
  WORD2(v24) = 1;
  DWORD2(v24) = 0;
  v25 = 0u;
  memset(v26, 0, 33);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v30 = 0;
  *(a1 + 2704) = 0;
  *(a1 + 2688) = *buf;
  v8 = *(a1 + 2720);
  *(a1 + 2712) = 0;
  *(a1 + 2720) = 0;
  if (v8)
  {
    sub_100008080(v8);
  }

  *(a1 + 2760) = v26[0];
  v9 = v25;
  *(a1 + 2728) = v24;
  *(a1 + 2744) = v9;
  *(a1 + 2768) = *&v26[1];
  *(a1 + 2777) = *(&v26[2] + 1);
  if ((a1 + 2688) == buf)
  {
    v10 = 0;
  }

  else
  {
    sub_100252F20((a1 + 2800), 0, 0, 0);
    v10 = v30;
  }

  *(a1 + 2824) = v10;
  *(a1 + 2972) = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  LODWORD(v16) = 0;
  WORD2(v16) = 1;
  DWORD2(v16) = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *(a1 + 2848) = 0;
  v11 = *(a1 + 2864);
  *(a1 + 2856) = 0;
  *(a1 + 2864) = 0;
  if (v11)
  {
    sub_100008080(v11);
  }

  *(a1 + 2904) = *v18;
  v12 = v17;
  *(a1 + 2872) = v16;
  *(a1 + 2888) = v12;
  *(a1 + 2912) = *&v18[8];
  *(a1 + 2921) = *&v18[17];
  if ((a1 + 2848) != &v13)
  {
    sub_100252F20((a1 + 2944), 0, 0, 0);
  }

  sub_100253384(a1 + 3824);
  *(a1 + 4032) = 0;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    sub_100008080(v15);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (*(&v23 + 1))
  {
    sub_100008080(*(&v23 + 1));
  }
}

void sub_100252CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_101043258(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100252CF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56) - *(a1 + 48);
  if (v2)
  {
    return (*a2 + 1) % (0x6DB6DB6DB6DB6DB7 * (v2 >> 4));
  }

  else
  {
    return 0;
  }
}

void sub_100252D30(uint64_t a1)
{
  *(a1 + 568) = 1;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v7 = _Q0;
  *v8 = 0xBFF0000000000000;
  v10[15] = 0;
  LODWORD(v10[16]) = 0;
  memset(&v10[10], 0, 34);
  memset(&v10[17], 0, 75);
  memset(&v10[27], 0, 56);
  memset(&v8[8], 0, 80);
  memset(v10, 0, 78);
  v9 = 0u;
  v10[34] = 0xBFF0000000000000;
  *(a1 + 168) = *v8;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v8[64];
  *(a1 + 216) = *&v8[48];
  *(a1 + 200) = *&v8[32];
  *(a1 + 184) = *&v8[16];
  std::string::operator=((a1 + 248), &v8[80]);
  memcpy((a1 + 272), v10, 0x118uLL);
  *(a1 + 592) = 0;
  *(a1 + 736) = v7;
  *(a1 + 752) = 256;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*&v8[80]);
  }
}

void sub_100252EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100252EBC(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 56) - v3) >> 4);
  if (v4 > a3)
  {
    v5 = (v3 + 112 * a3);
    v6 = *v5;
    v7 = v5[2];
    a2[1] = v5[1];
    a2[2] = v7;
    *a2 = v6;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[5];
    *(a2 + 95) = *(v5 + 95);
    a2[4] = v9;
    a2[5] = v10;
    a2[3] = v8;
  }

  return v4 > a3;
}

void **sub_100252F20(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1C71C71C71C71C7)
      {
        v11 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v11 = v10;
      }

      sub_100E9C7A0(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x8E38E38E38E38E39 * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = (a3 - v14);
    if (a3 != v14)
    {
      result = memmove(v12, v14, (v15 - 4));
    }

    v16 = &v15[v12];
  }

  v6[1] = v16;
  return result;
}

void sub_100253098(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100253098(a1, *a2);
    sub_100253098(a1, *(a2 + 1));
    if (a2[5119] < 0)
    {
      operator delete(*(a2 + 637));
    }

    if (a2[839] < 0)
    {
      operator delete(*(a2 + 102));
    }

    if (a2[407] < 0)
    {
      operator delete(*(a2 + 48));
    }

    v4 = *(a2 + 21);
    if (v4)
    {
      *(a2 + 22) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 11);
    if (v5)
    {
      sub_100008080(v5);
    }

    v6 = *(a2 + 8);
    if (v6)
    {
      sub_100008080(v6);
    }

    operator delete(a2);
  }
}

uint64_t sub_100253148(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 272);
  if (v3 == 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 272);
      v12 = 134349056;
      v13 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::isIntervalSuitableForDeltaPositionBasedCalibrationUpdate invalid fIntervalDuration_s, %{public}.3f.", &v12, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019DCE0C();
      return 0;
    }
  }

  else
  {
    v7 = *(a1 + 312);
    if (v7 >= 30.0)
    {
      LODWORD(v7) = *(a1 + 284);
      v10 = *&v7 / v3;
      if (v10 >= 0.0)
      {
        return 1;
      }

      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v11 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134349312;
        v13 = v10;
        v14 = 2050;
        v15 = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::isIntervalSuitableForDeltaPositionBasedCalibrationUpdate fractionOfTimeWithValidDeltaPosition, %{public}.3f, below threshold, %{public}.3f.", &v12, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1019DCC0C();
        return 0;
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 312);
        v12 = 134349312;
        v13 = v9;
        v14 = 2050;
        v15 = 0x403E000000000000;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::isIntervalSuitableForDeltaPositionBasedCalibrationUpdate IODisplacement_m, %{public}.3f, below threshold, %{public}.3f.", &v12, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1019DCD14();
        return 0;
      }
    }
  }

  return result;
}

void sub_100253384(uint64_t a1)
{
  v13[0] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v13[8] = _Q0;
  v15 = 0uLL;
  v14 = 0;
  v16 = _Q0;
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  __p = 0;
  v23 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v24 = 0;
  v25 = 0xBFF0000000000000;
  v7 = *v13;
  v8 = *&v13[16];
  v9 = v16;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = v9;
  *a1 = v7;
  *(a1 + 16) = v8;
  v10 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = v20;
  *(a1 + 80) = v19;
  *(a1 + 96) = v11;
  *(a1 + 112) = *v21;
  *(a1 + 120) = *&v21[8];
  *(a1 + 129) = *&v21[17];
  if (v13 == a1)
  {
    *(a1 + 176) = 0xBFF0000000000000;
  }

  else
  {
    sub_100252F20((a1 + 152), 0, 0, 0);
    v12 = __p;
    *(a1 + 176) = v25;
    if (v12)
    {
      v23 = v12;
      operator delete(v12);
    }
  }

  if (v18)
  {
    sub_100008080(v18);
  }
}

void sub_100253494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1010431D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002534A8(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(a1 + 248) != 1 || !sub_1001E9DA0(a1, a2))
  {
    result = sub_100253148(a1, a3);
    if (!result)
    {
      return result;
    }

    sub_100A9E674(a1, a2);
    sub_100A9E970(a1, a2);
    return 1;
  }

  if (sub_1012EC578(*(a1 + 232)))
  {
    v5 = *(a1 + 232);
    v6 = *(v5 + 80);
    v7 = *(v5 + 96);
    v8 = *(v5 + 88) * *(v5 + 88) * 10.0;
    *a2 = -*(v5 + 72);
    *(a2 + 8) = v8;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 * v7 * 10.0;
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::estimateAlignmentParameters, batch calibration succeeded.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DD5A8();
    }

    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1003121A4();
  }

  v11 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::estimateAlignmentParameters, batch calibration failed.", v12, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019DD4CC();
    return 0;
  }

  return result;
}

void sub_100253630(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *(a1 + 8) = 0;
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  v2[1] = 0;
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = v20;
  *(a1 + 24) = v19;
  *(a1 + 40) = v4;
  *(a1 + 56) = *v21;
  *(a1 + 64) = *&v21[8];
  *(a1 + 73) = *&v21[17];
  if (v2 == &v17)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_100252F20((a1 + 96), 0, 0, 0);
    v5 = v17;
    v6 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  *(a1 + 672) = v5;
  v7 = *(a1 + 680);
  *(a1 + 680) = v6;
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = v20;
  *(a1 + 688) = v19;
  *(a1 + 704) = v8;
  *(a1 + 720) = *v21;
  *(a1 + 728) = *&v21[8];
  *(a1 + 737) = *&v21[17];
  if ((a1 + 672) != &v17)
  {
    sub_100252F20((a1 + 760), v22, v23, 0x8E38E38E38E38E39 * ((v23 - v22) >> 3));
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *v14 = 0xBFF0000000000000;
  *&v16[120] = 0;
  *&v16[128] = 0;
  memset(&v16[80], 0, 34);
  memset(&v16[136], 0, 75);
  memset(&v16[216], 0, 56);
  memset(&v14[8], 0, 80);
  memset(v16, 0, 78);
  v15 = 0u;
  *&v16[272] = 0xBFF0000000000000;
  *(a1 + 168) = *v14;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v14[64];
  *(a1 + 216) = *&v14[48];
  *(a1 + 200) = *&v14[32];
  *(a1 + 184) = *&v14[16];
  std::string::operator=((a1 + 248), &v14[80]);
  memcpy((a1 + 272), v16, 0x118uLL);
  *a1 = 0;
  *(a1 + 552) = 0;
  *(a1 + 664) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 639) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 830) = 0;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(*&v14[80]);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v18)
  {
    sub_100008080(v18);
  }
}

void sub_1002538A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_100E9C84C((v30 - 144));
  _Unwind_Resume(a1);
}

double sub_1002538D0(uint64_t a1)
{
  *(a1 + 224) = 0xBFF0000000000000;
  sub_100253D50((a1 + 240));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  memset(v14, 0, 24);
  *v13 = v14;
  sub_100253CCC(v13);
  bzero(v14, 0x300uLL);
  v14[20] = 1;
  *&v14[24] = 0;
  v16 = 0;
  v17 = 0;
  memset(&v14[32], 0, 48);
  v15 = 0;
  v18 = 0;
  v19 = 0xBFF0000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v32 = 0;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  v35 = _Q1;
  v36 = 0;
  v37 = 0;
  v38 = 0xBFF0000000000000;
  v50 = 0;
  memset(&v48[32], 0, 32);
  v49 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v54, 0, 27);
  memset(&v54[32], 0, 48);
  v47 = 0u;
  memset(v48, 0, 30);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v56 = 0xBFF0000000000000;
  v55 = 0;
  sub_10018D404(v57);
  v57[40] = 0;
  *(v60 + 7) = 0;
  v58 = 0;
  v60[0] = 0;
  v59 = 0;
  *(v61 + 7) = 0;
  v61[0] = 0;
  sub_100253DB8(a1 + 264, v14);
  if (v60[0])
  {
    sub_100008080(v60[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&v43 + 1));
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (*&v14[8])
  {
    sub_100008080(*&v14[8]);
  }

  *(a1 + 1032) = 0;
  sub_1001FB750((a1 + 1040));
  *(a1 + 1208) = 0;
  *&v13[7] = 0u;
  memset(&v14[4], 0, 49);
  *(a1 + 1064) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1065) = *v13;
  v7 = *(a1 + 1096);
  *(a1 + 1088) = 0u;
  if (v7)
  {
    sub_100008080(v7);
  }

  *(a1 + 1104) = 0;
  *(a1 + 1108) = 1;
  *(a1 + 1112) = 0;
  *(a1 + 1116) = *v14;
  *(a1 + 1128) = *&v14[12];
  *(a1 + 1144) = *&v14[28];
  *(a1 + 1153) = *&v14[37];
  v8 = (a1 + 1176);
  v9 = *(a1 + 1176);
  if (v9)
  {
    *(a1 + 1184) = v9;
    operator delete(v9);
    *v8 = 0;
    *(a1 + 1184) = 0;
    *(a1 + 1192) = 0;
  }

  *v8 = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1212) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1257) = 0u;
  sub_100253F2C(a1 + 1280);
  *(a1 + 1752) = -1;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  *v14 = v14;
  *&v14[8] = v14;
  *&v14[16] = 0;
  sub_100254040((a1 + 1784), v14);
  sub_10004FF5C(v14);
  *v14 = v14;
  *&v14[8] = v14;
  *&v14[16] = 0;
  sub_100254040((a1 + 1808), v14);
  sub_10004FF5C(v14);
  *(a1 + 1832) = 0x600000006;
  v10 = (a1 + 1840);
  v11 = *(a1 + 1840);
  if (v11)
  {
    *(a1 + 1848) = v11;
    operator delete(v11);
    *v10 = 0;
    *(a1 + 1848) = 0;
    *(a1 + 1856) = 0;
  }

  *(a1 + 1856) = 0;
  *v10 = 0u;
  *(a1 + 1864) = 0xBFF0000000000000;
  *(a1 + 1872) = 0xBFF0000000000000;
  sub_1002540A8((a1 + 1880));
  sub_100254148((a1 + 1904));
  *(a1 + 1920) = 0;
  *(a1 + 1904) = 0u;
  memset(v14, 0, 24);
  *v13 = v14;
  sub_1002540F4(v13);
  sub_100254148((a1 + 1928));
  *(a1 + 1944) = 0;
  *(a1 + 1928) = 0u;
  memset(v14, 0, 24);
  *v13 = v14;
  sub_1002540F4(v13);
  *(a1 + 2072) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 1968) = 0xBFF0000000000000;
  *(a1 + 2048) = 0;
  result = 0.0;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2037) = 0;
  *(a1 + 2056) = 0xBFF0000000000000;
  *(a1 + 2064) = 0xBFF0000000000000;
  return result;
}

void sub_100253CCC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 14;
        sub_1007EFC90(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100253D50(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 14;
        sub_1007EFC90(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_100253DB8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  v8 = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v8;
  sub_10007057C(a1 + 88, (a2 + 88));
  *(a1 + 112) = *(a2 + 14);
  v9 = *(a2 + 120);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v10 = *(a1 + 128);
  *(a1 + 120) = v9;
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  v13 = a2[11];
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 176) = v13;
  sub_10007057C(a1 + 208, a2 + 13);
  *(a1 + 232) = *(a2 + 232);
  v14 = a2[15];
  v15 = a2[16];
  v16 = a2[18];
  *(a1 + 272) = a2[17];
  *(a1 + 288) = v16;
  *(a1 + 240) = v14;
  *(a1 + 256) = v15;
  v17 = a2[19];
  v18 = a2[20];
  v19 = a2[22];
  *(a1 + 336) = a2[21];
  *(a1 + 352) = v19;
  *(a1 + 304) = v17;
  *(a1 + 320) = v18;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v20 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v20;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  memcpy((a1 + 392), a2 + 392, 0x118uLL);
  v22 = a2[43];
  v21 = a2[44];
  v23 = a2[42];
  *(a1 + 720) = *(a2 + 90);
  *(a1 + 688) = v22;
  *(a1 + 704) = v21;
  *(a1 + 672) = v23;
  v24 = *(a2 + 728);
  *(a2 + 728) = 0u;
  v25 = *(a1 + 736);
  *(a1 + 728) = v24;
  if (v25)
  {
    sub_100008080(v25);
  }

  v26 = *(a2 + 744);
  *(a1 + 759) = *(a2 + 759);
  *(a1 + 744) = v26;
  return a1;
}

void sub_100253F2C(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *v7 = 0xBFF0000000000000;
  *&v9[120] = 0;
  *&v9[128] = 0;
  memset(&v9[80], 0, 34);
  memset(&v9[136], 0, 75);
  memset(&v9[216], 0, 56);
  memset(&v7[8], 0, 80);
  memset(v9, 0, 78);
  v8 = 0u;
  *&v9[272] = 0xBFF0000000000000;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = *v7;
  *a1 = 0uLL;
  *(a1 + 16) = _Q0;
  *(a1 + 96) = *&v7[48];
  *(a1 + 112) = *&v7[64];
  *(a1 + 64) = *&v7[16];
  *(a1 + 80) = *&v7[32];
  std::string::operator=((a1 + 128), &v7[80]);
  memcpy((a1 + 152), v9, 0x118uLL);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(*&v7[80]);
  }
}

void sub_100254024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100254040(uint64_t *a1, uint64_t *a2)
{
  sub_10004FF5C(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void sub_1002540A8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  a1[1] = v2;
}

void sub_1002540F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007EFBF0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100254148(uint64_t *a1)
{
  if (*a1)
  {
    sub_1007EFBF0(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_100254188(uint64_t a1)
{
  v1 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v2 = v1[28];
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return (*(*v1 + 24))(v1);
}

void sub_100254238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100254250(uint64_t a1)
{
  result = *(a1 + 3912);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_100254280(void *a1, void *a2)
{
  v4 = a1[148];
  if (v4)
  {
    sub_1002545D8(v4, a2);
  }

  v5 = a1[112];
  if (v5)
  {
    sub_1002546D0(v5, a2);
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#rti,updateRtiDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
    }
  }

  v7 = a1[106];
  if (v7)
  {
    sub_100256634(v7, a2);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#ee,updateEeFileDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
    }
  }

  sub_10001CAF4(buf);
  v15 = 0;
  v9 = sub_10001CB4C(*buf, "EnableRteUpdateOnTbtSession", &v15, 0xFFFFFFFFLL);
  v10 = v9 ^ 1 | v15;
  if (*v17)
  {
    sub_100008080(*v17);
  }

  if (v10)
  {
    v11 = a1[109];
    if (v11)
    {
      sub_1002568F8(v11, a2, 0);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rte,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = a2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
      }
    }

    v13 = a1[118];
    if (v13)
    {
      sub_1002568F8(v13, a2, 1);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rof,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = a2;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
      }
    }
  }
}

void sub_1002545B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002545D8(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "L5Context,Focused Nav,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A65C70(a2);
  }

  if (*(a1 + 54) != a2)
  {
    *(a1 + 54) = a2;
    sub_10017DC7C(a1);
  }
}

void sub_1002546D0(double *a1, uint64_t a2)
{
  v2 = a2;
  v9 = 0.0;
  v10 = 0.0;
  sub_100254968(a1, &v10, &v9, a2);
  if (vabdd_f64(*a1, v10) > 0.000001 || vabdd_f64(a1[1], v9) > 0.000001)
  {
    if (sub_100254C0C((a1 + 13), &v10, &v9))
    {
      v4 = v9;
      *a1 = v10;
      a1[1] = v4;
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        v18 = v10;
        v19 = 2050;
        v20 = v9;
        v21 = 1026;
        v22 = v2;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "GNSS_FILE: #rti,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v11 = 134349568;
        v12 = v10;
        v13 = 2050;
        v14 = v9;
        v15 = 1026;
        v16 = v2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GNSS_FILE: #rti,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", &v11, 28);
        v7 = v6;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::updateRtiDownloadRateOnWorkoutOrFocusedNav(const BOOL)", "%s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "GNSS_FILE: #rti,could not update assistance file download rates", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016DD5B4();
      }
    }
  }
}

void sub_100254968(uint64_t a1, double *a2, double *a3, int a4)
{
  *a2 = sub_100254BAC(a1, a2) * 3600.0;
  *a3 = sub_100254C04() * 3600.0;
  if (*(a1 + 24) == 1)
  {
    *a2 = *(a1 + 16);
  }

  if (*(a1 + 40) == 1)
  {
    *a3 = *(a1 + 32);
  }

  if (a4)
  {
    *a2 = 3600.0;
    *a3 = 3600.0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016DCB7C();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a2;
    v10 = *a3;
    *buf = 134349568;
    v22 = v9;
    v23 = 2050;
    v24 = v10;
    v25 = 1026;
    v26 = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "GNSS_FILE: #rti,updateRateCellSec,%{public}.2f,updateRateWifiSec,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016DCA68();
    }

    v11 = *a2;
    v12 = *a3;
    v15 = 134349568;
    v16 = v11;
    v17 = 2050;
    v18 = v12;
    v19 = 1026;
    v20 = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "GNSS_FILE: #rti,updateRateCellSec,%{public}.2f,updateRateWifiSec,%{public}.2f,isWorkoutOrTbtSession,%{public}d", &v15, 28);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::getRtiDownloadRates(CFTimeInterval &, CFTimeInterval &, const BOOL)", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }
}

double sub_100254BAC(uint64_t a1, uint64_t a2)
{
  v2 = 4.0;
  v3 = sub_1000734AC(a1, a2);
  if ((v3 & 1) == 0)
  {
    v5 = sub_10006FDD0(v3, v4);
    if (!v5 || (v5 = sub_10006FEAC(v5, v6), v5))
    {
      v7 = sub_10006FE30(v5, v6);
      if (!v7)
      {
        if (sub_100718F78(v7))
        {
          return 4.0;
        }

        else
        {
          return 12.0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_100254C0C(uint64_t a1, double *a2, double *a3)
{
  v6 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v7 = *a2;
  v6[9] = *a2;
  v8 = *a3;
  v6[10] = *a3;
  if (v7 > 0.0 && v7 < v8)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v10 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      *buf = 134349312;
      v35 = v11;
      v36 = 2050;
      v37 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU,update rate %{public}.3fs is shorter than WiFi update rate %{public}.3fs - overriding WiFi update rate", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DE164(buf);
      v23 = *(a1 + 80);
      v24 = *(a1 + 88);
      v28 = 134349312;
      v29 = v23;
      v30 = 2050;
      v31 = v24;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "#Warning,CLFU,update rate %{public}.3fs is shorter than WiFi update rate %{public}.3fs - overriding WiFi update rate", &v28, 22);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFileUpdate::setUpdateRate(const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    *(a1 + 88) = *(a1 + 80);
  }

  if (qword_1025D4860 != -1)
  {
    sub_1018DE100();
  }

  v13 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
  {
    v14 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v14 = *v14;
    }

    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    *buf = 136446722;
    v35 = v14;
    v36 = 2050;
    v37 = v15;
    v38 = 2050;
    v39 = v16;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "CLFU,file %{public}s update rate set to %{public}.3fs, %{public}.3fs", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v18 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v18 = *v18;
    }

    v19 = *(a1 + 80);
    v20 = *(a1 + 88);
    v28 = 136446722;
    v29 = v18;
    v30 = 2050;
    v31 = v19;
    v32 = 2050;
    v33 = v20;
    LODWORD(v27) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 1, "CLFU,file %{public}s update rate set to %{public}.3fs, %{public}.3fs", &v28, v27);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFileUpdate::setUpdateRate(const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  [*(*(a1 + 224) + 16) register:*(*(a1 + 224) + 8) forNotification:6 registrationInfo:0];
  sub_100254FFC(a1);
  (*(*v6 + 24))(v6);
  return 1;
}

void sub_100254FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100254FFC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  *&v65[1] = a1 + 8;
  (*(v2 + 16))(a1 + 8);
  v66 = 256;
  if ((v3[167] & 0x8000000000000000) != 0)
  {
    if (*(a1 + 160))
    {
LABEL_3:
      if (!sub_100255D4C(a1))
      {
        return (*(*v3 + 24))(v3);
      }

      v4 = v3 + 144;
      if ([objc_msgSend(objc_msgSend(*(a1 + 24) "vendor")] == 2)
      {
        if (qword_1025D4860 != -1)
        {
          sub_1003115C0();
        }

        v5 = qword_1025D4868;
        v6 = os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          sub_10001A3E8(v6, v7);
          v8 = sub_10001CF3C();
          v9 = "(WiFi)";
          if (v8)
          {
            v9 = "(WiFi or companion nearby)";
          }

          v10 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v10 = *v4;
          }

          v11 = *(a1 + 88);
          *buf = 136446723;
          v78 = v9;
          v79 = 2081;
          v80 = *&v10;
          v81 = 2050;
          v82 = v11;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLFU,we are now on large reachability %{public}s, scheduling a download for %{private}s (period %{public}.3f)", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018DE164(buf);
          v44 = qword_1025D4868;
          sub_10001A3E8(v45, v46);
          v47 = sub_10001CF3C();
          v48 = "(WiFi)";
          if (v47)
          {
            v48 = "(WiFi or companion nearby)";
          }

          v49 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v49 = *v4;
          }

          v50 = *(a1 + 88);
          v67 = 136446723;
          v68 = v48;
          v69 = 2081;
          v70 = *&v49;
          v71 = 2050;
          v72 = v50;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v44, 0, "CLFU,we are now on large reachability %{public}s, scheduling a download for %{private}s (period %{public}.3f)", &v67, 32);
          v52 = v51;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v51);
          if (v52 != buf)
          {
            free(v52);
          }
        }

        v12 = 88;
      }

      else
      {
        if (qword_1025D4860 != -1)
        {
          sub_1003115C0();
        }

        v16 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v17 = *v4;
          }

          v18 = *(a1 + 80);
          *buf = 136446466;
          v78 = v17;
          v79 = 2050;
          v80 = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "CLFU,we are now on short reachability (Cell), scheduling a download for %{public}s (period %{public}.3f)", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          v40 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v40 = *v4;
          }

          v41 = *(a1 + 80);
          v67 = 136446466;
          v68 = v40;
          v69 = 2050;
          v70 = v41;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,we are now on short reachability (Cell), scheduling a download for %{public}s (period %{public}.3f)", &v67, 22);
          v43 = v42;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v42);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v12 = 80;
      }

      v19 = *(a1 + v12);
      v65[0] = -1.0;
      Current = CFAbsoluteTimeGetCurrent();
      v21 = -1.0;
      if (v19 <= 0.0)
      {
        goto LABEL_71;
      }

      if (sub_100256298(a1, v65))
      {
        v22 = v65[0];
        if (v65[0] >= Current - v19)
        {
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          v21 = v19 + v22;
          v30 = qword_1025D4868;
          if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v3 + 144;
            if (*(a1 + 175) < 0)
            {
              v31 = *v4;
            }

            *buf = 136381699;
            v78 = v31;
            v79 = 2050;
            v80 = v19;
            v81 = 2050;
            v82 = v65[0];
            v83 = 2050;
            v84 = v21;
            v85 = 2050;
            v86 = v21 - Current;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "CLFU,last %{private}s downloaded less than %{public}.3f seconds ago (%{public}.3f), scheduling download for %{public}.3f (%{public}.3f away)", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v61 = v3 + 144;
            if (*(a1 + 175) < 0)
            {
              v61 = *v4;
            }

            v67 = 136381699;
            v68 = v61;
            v69 = 2050;
            v70 = v19;
            v71 = 2050;
            v72 = v65[0];
            v73 = 2050;
            v74 = v21;
            v75 = 2050;
            v76 = v21 - Current;
            LODWORD(v64) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,last %{private}s downloaded less than %{public}.3f seconds ago (%{public}.3f), scheduling download for %{public}.3f (%{public}.3f away)", &v67, v64);
            v63 = v62;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v62);
            if (v63 != buf)
            {
              free(v63);
            }
          }

          goto LABEL_61;
        }

        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v23 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v24 = *v4;
          }

          *buf = 136381187;
          v78 = v24;
          v79 = 2050;
          v80 = v19;
          v81 = 2050;
          v82 = v65[0];
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "CLFU,last %{private}s downloaded over %{public}.3f seconds ago (%{public}.3f), starting a download now", buf, 0x20u);
        }

        if (!sub_10000A100(121, 2))
        {
LABEL_53:
          v21 = Current;
LABEL_61:
          v32 = *(a1 + 96);
          if (v32 >= 0.0 && v32 < v21)
          {
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v33 = qword_1025D4868;
            if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v3 + 144;
              if (*(a1 + 175) < 0)
              {
                v34 = *v4;
              }

              v35 = *(a1 + 96);
              *buf = 136381187;
              v78 = v34;
              v79 = 2050;
              v80 = v35;
              v81 = 2050;
              v82 = v32 - v35;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "CLFU,scheduled download %{private}s is after %{public}.3f deadline (%{public}.3f after) - overriding", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4860 != -1)
              {
                sub_1018DE100();
              }

              v57 = v3 + 144;
              if (*(a1 + 175) < 0)
              {
                v57 = *v4;
              }

              v58 = *(a1 + 96);
              v67 = 136381187;
              v68 = v57;
              v69 = 2050;
              v70 = v58;
              v71 = 2050;
              v72 = v32 - v58;
              LODWORD(v64) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,scheduled download %{private}s is after %{public}.3f deadline (%{public}.3f after) - overriding", &v67, v64);
              v60 = v59;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v59);
              if (v60 != buf)
              {
                free(v60);
              }
            }

            v21 = v32;
          }

LABEL_71:
          v36 = *(a1 + 112);
          if (v36 > 0.0 && v36 > v21)
          {
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v37 = qword_1025D4868;
            if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v3 + 144;
              if (*(a1 + 175) < 0)
              {
                v38 = *v4;
              }

              *buf = 136381187;
              v78 = v38;
              v79 = 2050;
              v80 = v36;
              v81 = 2050;
              v82 = v36 - Current;
              _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "CLFU,Throttling download %{private}s due to retry delay, scheduling download for %{public}.3f (%{public}.3f away)", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4860 != -1)
              {
                sub_1018DE100();
              }

              if (*(a1 + 175) < 0)
              {
                v4 = *v4;
              }

              v67 = 136381187;
              v68 = v4;
              v69 = 2050;
              v70 = v36;
              v71 = 2050;
              v72 = v36 - Current;
              LODWORD(v64) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,Throttling download %{private}s due to retry delay, scheduling download for %{public}.3f (%{public}.3f away)", &v67, v64);
              v54 = v53;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v53);
              if (v54 != buf)
              {
                free(v54);
              }
            }

            v21 = v36;
          }

          if (v21 > 0.0)
          {
            [*(a1 + 56) setNextFireTime:v21];
          }

          return (*(*v3 + 24))(v3);
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v25 = v3 + 144;
        if (*(a1 + 175) < 0)
        {
          v25 = *v4;
        }

        v67 = 136381187;
        v68 = v25;
        v69 = 2050;
        v70 = v19;
        v71 = 2050;
        v72 = v65[0];
        LODWORD(v64) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,last %{private}s downloaded over %{public}.3f seconds ago (%{public}.3f), starting a download now", &v67, v64);
        v27 = v26;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v26);
      }

      else
      {
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v28 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v29 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v29 = *v29;
          }

          *buf = 136446210;
          v78 = v29;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "CLFU,cannot verify existence of %{public}s, attempting to re-download now", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_53;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v55 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v55 = *v55;
        }

        v67 = 136446210;
        v68 = v55;
        LODWORD(v64) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,cannot verify existence of %{public}s, attempting to re-download now", &v67, v64);
        v27 = v56;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v56);
      }

      if (v27 != buf)
      {
        free(v27);
      }

      goto LABEL_53;
    }
  }

  else if (v3[167])
  {
    goto LABEL_3;
  }

  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v13 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLFU,no download source set - not downloading", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018DE164(buf);
    LOWORD(v67) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 16, "CLFU,no download source set - not downloading", &v67, 2);
    v15 = v14;
    sub_100152C7C("Generic", 1, 0, 0, "void CLFileUpdate::scheduleDownload()", "%s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return (*(*v3 + 24))(v3);
}

void sub_100255CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100255D4C(uint64_t a1)
{
  if (*(a1 + 120) != 1)
  {
    return 1;
  }

  if (vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 104)) > *(a1 + 72))
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v5 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v6 = *v6;
      }

      v7 = 136380675;
      v8 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLFU,current download of %{private}s has timed out, canceling", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DE1A8();
    }

    (*(**(a1 + 48) + 24))(*(a1 + 48));
    *(a1 + 120) = 0;
    return 1;
  }

  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v2 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v3 = *v3;
    }

    v7 = 136380675;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLFU,download of %{private}s not yet timed out. Blocking current download request", &v7, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DE2C0();
    return 0;
  }

  return result;
}

uint64_t sub_100255F10(_BYTE *a1, int *a2)
{
  sub_1001ECC7C(a1);
  v4 = *a2;
  if (*a2 == 40)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLAccessory,PauseExternalLocation,0", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019137EC();
    }

    v8 = sub_1000081AC();
    sub_1006F14E8(a1, 0, v8);
  }

  else if (v4 == 29)
  {
    if ((a1[1371] & 1) == 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v5 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLAccessory,EnableAccessoryNMEAScreening,1,airborne,0", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019138C8();
      }

      v6 = sub_1000081AC();
      sub_10107C280((a1 + 2664), 1, v6);
      a1[2057] = 1;
      sub_1006F6794((a1 + 2056));
    }
  }

  else if (!v4)
  {
    sub_100256084(a1);
  }

  return 1;
}

uint64_t sub_100256084(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  [qword_102658FB0 stopLocation];
  [*(a1 + 992) setNextFireDelay:1.79769313e308];
  v3 = sub_1000081AC();
  sub_100256EE8(a1 + 2664, v3);

  *(a1 + 116) = 0xFFFF;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 152) = _Q0;
  *(a1 + 168) = _Q0;
  *(a1 + 184) = _Q0;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0xBFF0000000000000;
  *(a1 + 220) = 0;
  *(a1 + 212) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = 0xBFF0000000000000;
  *(a1 + 240) = 0x7FFFFFFF;
  *(a1 + 252) = 0;
  *(a1 + 268) = 0;
  *(a1 + 244) = 0;
  *(a1 + 260) = 0;
  [*(*(a1 + 1320) + 16) unregister:*(*(a1 + 1320) + 8) forNotification:4];
  *(a1 + 1368) = 0;
  [*(*(a1 + 1328) + 16) unregister:*(*(a1 + 1328) + 8) forNotification:0];
  *(a1 + 1369) = 0;
  sub_100257118(a1, v9);
  *(a1 + 6320) = 0;
  *(a1 + 2048) = 0;
  *(a1 + 2050) = 0;
  *(a1 + 2480) = 0;
  *(a1 + 2488) = 1;
  result = *(a1 + 2016);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a1 + 2016) = -1;
  }

  return result;
}

uint64_t sub_100256298(uint64_t a1, void *a2)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  *&v12[1] = a1 + 8;
  (*(v4 + 16))(a1 + 8);
  v13 = 256;
  v6 = sub_100256384(a1, v12);
  if (v6)
  {
    v8 = sub_1000206B4(v6, v7);
    v9 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v9 = *v9;
    }

    v10 = sub_1000B9370(v8, v9, a2);
  }

  else
  {
    v10 = 0;
  }

  (*(*v5 + 24))(v5);
  return v10;
}

void sub_100256370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100256384(uint64_t a1, double *a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v16 = a1 + 8;
  (*(v4 + 16))(a1 + 8);
  v17 = 256;
  v6 = (v5 + 168);
  v7 = v5 + 168;
  if (v5[191] < 0)
  {
    v7 = *v6;
  }

  v8 = stat(v7, &v15);
  if (v8)
  {
    v9 = *__error();
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v10 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
    {
      v11 = v5 + 168;
      if (*(a1 + 199) < 0)
      {
        v11 = *v6;
      }

      *buf = 136446466;
      v23 = v11;
      v24 = 1026;
      v25 = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLFU,destination stat failed,%{public}s,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      if (*(a1 + 199) < 0)
      {
        v6 = *v6;
      }

      v18 = 136446466;
      v19 = v6;
      v20 = 1026;
      v21 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 16, "CLFU,destination stat failed,%{public}s,%{public}d", &v18, 18);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLFileUpdate::getFileModifiedTime(CFAbsoluteTime &)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    *a2 = sub_10000DF28(&v15.st_mtimespec.tv_sec);
  }

  (*(*v5 + 24))(v5);
  return v8 == 0;
}

void sub_100256600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100256634(double *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_102666B58 != -1)
  {
    sub_1016DD378();
  }

  if (byte_102666B50 == 1)
  {
    v9 = 0.0;
    v10 = 0.0;
    sub_1016DB1D0(&v10, &v9, -1, v2);
    if (vabdd_f64(*a1, v10) > 0.000001 || vabdd_f64(a1[1], v9) > 0.000001)
    {
      if (sub_100254C0C((a1 + 13), &v10, &v9))
      {
        v4 = v9;
        *a1 = v10;
        a1[1] = v4;
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v5 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349568;
          v18 = v10;
          v19 = 2050;
          v20 = v9;
          v21 = 1026;
          v22 = v2;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "GNSS_FILE: #ee,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_1016DCA68();
          }

          v11 = 134349568;
          v12 = v10;
          v13 = 2050;
          v14 = v9;
          v15 = 1026;
          v16 = v2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GNSS_FILE: #ee,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", &v11, 28);
          v7 = v6;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::updateEeFileDownloadRateOnWorkoutOrFocusedNav(const BOOL)", "%s\n", v6);
          if (v7 != buf)
          {
            free(v7);
          }
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v8 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "GNSS_FILE: #ee,could not update assistance file download rates", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016DD38C();
        }
      }
    }
  }
}

void sub_1002568F8(double *a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v14 = 0.0;
  v15 = 0.0;
  sub_100256BFC(&v15, &v14, a3, a2);
  if (vabdd_f64(*a1, v15) > 0.000001 || vabdd_f64(a1[1], v14) > 0.000001)
  {
    if (sub_100254C0C((a1 + 13), &v15, &v14))
    {
      v6 = v14;
      *a1 = v15;
      a1[1] = v6;
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "#rte";
        if (a3)
        {
          v8 = "#rof";
        }

        *buf = 136315906;
        v25 = v8;
        v26 = 2050;
        v27 = v15;
        v28 = 2050;
        v29 = v14;
        v30 = 1026;
        v31 = v4;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "GNSS_FILE: %s,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v9 = "#rte";
        if (a3)
        {
          v9 = "#rof";
        }

        v16 = 136315906;
        v17 = v9;
        v18 = 2050;
        v19 = v15;
        v20 = 2050;
        v21 = v14;
        v22 = 1026;
        v23 = v4;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GNSS_FILE: %s,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", &v16, 38);
        v11 = v10;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::updateRteRofFileDownloadRateOnWorkoutOrFocusedNav(const BOOL, const BOOL)", "%s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v13 = "#rte";
        if (a3)
        {
          v13 = "#rof";
        }

        *buf = 136315138;
        v25 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "GNSS_FILE: %s,could not update assistance file download rates", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016DD4A0(a3);
      }
    }
  }
}

void sub_100256BFC(double *a1, double *a2, int a3, int a4)
{
  if (a3)
  {
    v8 = 604800.0;
  }

  else
  {
    v8 = 3600.0;
  }

  if (qword_102666BB0 != -1)
  {
    sub_1016DD478();
  }

  v9 = *&qword_102666B90;
  if (!byte_102666B98)
  {
    v9 = 604800.0;
  }

  *a1 = v9;
  v10 = *&qword_102666BA0;
  if (!byte_102666BA8)
  {
    v10 = v8;
  }

  *a2 = v10;
  if (a4)
  {
    if (qword_102666BD8 != -1)
    {
      sub_1016DD48C();
    }

    v11 = *&qword_102666BB8;
    if (!byte_102666BC0)
    {
      v11 = 3600.0;
    }

    *a1 = v11;
    v12 = *&qword_102666BC8;
    if (!byte_102666BD0)
    {
      v12 = 3600.0;
    }

    *a2 = v12;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016DCB7C();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v14 = "#rte";
    v15 = *a1;
    v16 = *a2;
    if (a3)
    {
      v14 = "#rof";
    }

    *buf = 136315906;
    v31 = v14;
    v32 = 2050;
    v33 = v15;
    v34 = 2050;
    v35 = v16;
    v36 = 1026;
    v37 = a4;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "GNSS_FILE: %s,updateRateCellSec,%{public}.2f,updateRateWifiSec,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016DCA68();
    }

    v17 = "#rte";
    if (a3)
    {
      v17 = "#rof";
    }

    v18 = *a1;
    v19 = *a2;
    v22 = 136315906;
    v23 = v17;
    v24 = 2050;
    v25 = v18;
    v26 = 2050;
    v27 = v19;
    v28 = 1026;
    v29 = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "GNSS_FILE: %s,updateRateCellSec,%{public}.2f,updateRateWifiSec,%{public}.2f,isWorkoutOrTbtSession,%{public}d", &v22, 38);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLGnssAssistanceFileDownloader::getRteRofFileDownloadRates(CFTimeInterval &, CFTimeInterval &, const BOOL, const BOOL)", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }
}

void sub_100256EE8(uint64_t a1, double a2)
{
  v3 = *(a1 + 3048);
  if (v3 > 0.0)
  {
    *(a1 + 240) += vabdd_f64(a2, v3);
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = *(a1 + 3048);
      v9 = *(a1 + 236);
      v8 = *(a1 + 240);
      *buf = 134350080;
      v28 = Current;
      v29 = 2050;
      v30 = v7;
      v31 = 2050;
      v32 = a2;
      v33 = 1026;
      v34 = v8;
      v35 = 1026;
      v36 = v9;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,locationSession,start,%{public}.1lf,end,%{public}.1lf,duration,%{public}d,sessions,%{public}d", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 != -1)
      {
        sub_101B12B9C();
      }

      v10 = qword_1025D45E8;
      v11 = CFAbsoluteTimeGetCurrent();
      v12 = *(a1 + 3048);
      v14 = *(a1 + 236);
      v13 = *(a1 + 240);
      v17 = 134350080;
      v18 = v11;
      v19 = 2050;
      v20 = v12;
      v21 = 2050;
      v22 = a2;
      v23 = 1026;
      v24 = v13;
      v25 = 1026;
      v26 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 2, "CLAccessoryAWD,%{public}.1lf,locationSession,start,%{public}.1lf,end,%{public}.1lf,duration,%{public}d,sessions,%{public}d", &v17, 44);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryAWD::locationSessionEnd(const CFTimeInterval)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    *(a1 + 3048) = 0xBFF0000000000000;
    *(a1 + 3104) = 0;
  }
}

void sub_100257118(_BYTE *a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 + 4096;
  if (a1[6377] == 1)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLAccessory,unregistered for unfiltered location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913B6C();
    }

    a1 = [*(*(v2 + 165) + 16) unregister:*(*(v2 + 165) + 8) forNotification:10];
    v3[2281] = 0;
  }

  if (v2[1984] == 1)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessory,unregistered for propagated location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913C50();
    }

    a1 = [*(*(v2 + 165) + 16) unregister:*(*(v2 + 165) + 8) forNotification:27];
    v2[1984] = 0;
  }

  if (v3[2280] == 1)
  {
    v6 = sub_1001C9C28(a1, a2);
    if (byte_102658F9F < 0)
    {
      sub_100007244(__p, xmmword_102658F88, *(&xmmword_102658F88 + 1));
    }

    else
    {
      *__p = xmmword_102658F88;
      v8 = unk_102658F98;
    }

    sub_1002572F8(v6, __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v3[2280] = 0;
  }
}

void sub_1002572DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002572F8(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 8));
  if ((*(a1 + 96) & 1) == 0)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    if (v4 != v5)
    {
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = *(a2 + 23);
      }

      else
      {
        v7 = a2[1];
      }

      while (1)
      {
        v8 = *(v4 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v4 + 8);
        }

        if (v8 == v7)
        {
          v10 = v9 >= 0 ? v4 : *v4;
          v11 = v6 >= 0 ? a2 : *a2;
          if (!memcmp(v10, v11, v7))
          {
            break;
          }
        }

        v4 += 64;
        if (v4 == v5)
        {
          goto LABEL_28;
        }
      }

      sub_10025760C(buf, (v4 + 64), v5, v4);
      v13 = v12;
      for (i = *(a1 + 80); i != v13; sub_1002575BC(i))
      {
        i -= 64;
      }

      *(a1 + 80) = v13;
      if (qword_1025D46B0 != -1)
      {
        sub_10195E914();
      }

      v15 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v16 = a2;
        if (*(a2 + 23) < 0)
        {
          v16 = *a2;
        }

        v17 = (*(a1 + 80) - *(a1 + 72)) >> 6;
        *buf = 136315394;
        v26 = v16;
        v27 = 2048;
        v28 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLMM,RouteHints,removeObserver,%s,size,%lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D46B0 != -1)
        {
          sub_10195E914();
        }

        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        v18 = (*(a1 + 80) - *(a1 + 72)) >> 6;
        v21 = 136315394;
        v22 = a2;
        v23 = 2048;
        v24 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,RouteHints,removeObserver,%s,size,%lu", &v21, 22);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapRouteHintController::removeObserver(std::string)", "%s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }
  }

LABEL_28:
  std::mutex::unlock((a1 + 8));
}

void sub_1002575BC(uint64_t a1)
{
  sub_1001C9C60(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

__int128 *sub_10025760C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      *(a4 + 24) = *(v5 + 3);
      v8 = (v5 + 2);
      sub_100866BE4(a4 + 32, v8);
      a4 += 64;
      v5 = (v8 + 32);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1002576A8(uint64_t result, __int128 *a2, uint64_t a3, int *a4, void *a5)
{
  if (result)
  {
    v9 = result;
    if (!feof(result))
    {
      v10 = 0;
      while (1)
      {
        __ptr = 0;
        if (fread(&__ptr, 1uLL, 1uLL, v9) != 1)
        {
          break;
        }

        v11 = ftell(v9);
        if (__ptr == 67)
        {
          v12 = v11;
          LOBYTE(v56) = 67;
          if (fread(&v56 + 1, 1uLL, 4uLL, v9) != 4)
          {
            return 0;
          }

          *a3 = v56;
          v14 = v57;
          *(a3 + 4) = v57;
          v13.i32[0] = *a3;
          v15 = vmovl_u8(v13).u64[0];
          if (vuzp1_s8(v15, v15).u32[0] == 1447119939 && v14 == 76)
          {
            v18 = 0;
            *a4 = 5;
            do
            {
              *(a2 + v18) = *(a3 + v18);
              ++v18;
              v19 = *a4;
            }

            while (*a4 > v18);
            v20 = (104 - v19);
            if (fread(a2 + v19, 1uLL, v20, v9) == v20)
            {
              v21 = *a2;
              v22 = a2[2];
              *(a3 + 16) = a2[1];
              *(a3 + 32) = v22;
              *a3 = v21;
              v23 = a2[3];
              v24 = a2[4];
              v25 = a2[5];
              *(a3 + 96) = *(a2 + 12);
              *(a3 + 64) = v24;
              *(a3 + 80) = v25;
              *(a3 + 48) = v23;
              v26 = *a4 + v20;
              *a4 = v26;
              LODWORD(v23) = *a3;
              *&v23 = vmovl_u8(*&v23).u64[0];
              if (vuzp1_s8(*&v23, *&v23).u32[0] == 1447119939 && *(a3 + 4) == 76)
              {
                if (fread(a2 + v26, 1uLL, 1uLL, v9) == 1)
                {
                  v27 = *a4;
                  *(a3 + 104) = *(a2 + *a4);
                  *a4 = ++v27;
                  if (fread(a2 + v27, 1uLL, 1uLL, v9) == 1)
                  {
                    v28 = *a4;
                    *(a3 + 105) = *(a2 + *a4);
                    *a4 = ++v28;
                    if (fread(a2 + v28, 1uLL, 1uLL, v9) == 1)
                    {
                      v29 = *a4;
                      *(a3 + 106) = *(a2 + *a4);
                      *a4 = ++v29;
                      if (fread(a2 + v29, 1uLL, 1uLL, v9) == 1)
                      {
                        v30 = *a4;
                        *(a3 + 107) = *(a2 + *a4);
                        *a4 = ++v30;
                        if (fread(a2 + v30, 1uLL, 4uLL, v9) == 4)
                        {
                          v31 = *a4;
                          v32 = COERCE_FLOAT(bswap32(*(a2 + *a4)));
                          *(a3 + 108) = v32;
                          v33 = v31 + 4;
                          *a4 = v33;
                          if (fabsf(v32 + -0.1) <= 0.0001)
                          {
                            if (fread(a2 + v33, 1uLL, 8uLL, v9) == 8)
                            {
                              v45 = *a4;
                              *(a3 + 112) = bswap64(*(a2 + *a4));
                              v45 += 8;
                              *a4 = v45;
                              if (fread(a2 + v45, 1uLL, 4uLL, v9) == 4)
                              {
                                v46 = *a4;
                                *(a3 + 120) = bswap32(*(a2 + *a4));
                                v46 += 4;
                                *a4 = v46;
                                if (fread(a2 + v46, 1uLL, 4uLL, v9) == 4)
                                {
                                  v47 = *a4;
                                  *(a3 + 124) = bswap32(*(a2 + *a4));
                                  v47 += 4;
                                  *a4 = v47;
                                  if (fread(a2 + v47, 1uLL, 4uLL, v9) == 4)
                                  {
                                    *a5 = *a4;
                                    v48 = *a4;
                                    *(a3 + 128) = bswap32(*(a2 + *a4));
                                    *a4 = v48 + 4;
                                    return 1;
                                  }

                                  if (qword_1025D4650 != -1)
                                  {
                                    sub_10195D314();
                                  }

                                  v52 = qword_1025D4658;
                                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 0;
                                    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - crc", buf, 2u);
                                  }

                                  result = sub_10000A100(121, 2);
                                  if (result)
                                  {
                                    sub_10195DE24();
                                    return 0;
                                  }
                                }

                                else
                                {
                                  if (qword_1025D4650 != -1)
                                  {
                                    sub_10195D314();
                                  }

                                  v51 = qword_1025D4658;
                                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 0;
                                    _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - data size", buf, 2u);
                                  }

                                  result = sub_10000A100(121, 2);
                                  if (result)
                                  {
                                    sub_10195DD48();
                                    return 0;
                                  }
                                }
                              }

                              else
                              {
                                if (qword_1025D4650 != -1)
                                {
                                  sub_10195D314();
                                }

                                v50 = qword_1025D4658;
                                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                                {
                                  *buf = 0;
                                  _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - expiration age", buf, 2u);
                                }

                                result = sub_10000A100(121, 2);
                                if (result)
                                {
                                  sub_10195DC6C();
                                  return 0;
                                }
                              }
                            }

                            else
                            {
                              if (qword_1025D4650 != -1)
                              {
                                sub_10195D314();
                              }

                              v49 = qword_1025D4658;
                              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                              {
                                *buf = 0;
                                _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - timestamp", buf, 2u);
                              }

                              result = sub_10000A100(121, 2);
                              if (result)
                              {
                                sub_10195DB90();
                                return 0;
                              }
                            }
                          }

                          else
                          {
                            v34 = (a3 + 108);
                            if (qword_1025D4650 != -1)
                            {
                              sub_10195D314();
                            }

                            v35 = qword_1025D4658;
                            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                            {
                              v36 = *v34;
                              *buf = 134349056;
                              v55 = v36;
                              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "#Warning,DEM,coarse avl file is not 0.1 deg by 0.1 deg,spacing unexpected,%{public}.1f,re-download needed", buf, 0xCu);
                            }

                            result = sub_10000A100(121, 2);
                            if (result)
                            {
                              sub_10195DF00(v34);
                              return 0;
                            }
                          }
                        }

                        else
                        {
                          if (qword_1025D4650 != -1)
                          {
                            sub_10195D314();
                          }

                          v44 = qword_1025D4658;
                          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - binsize", buf, 2u);
                          }

                          result = sub_10000A100(121, 2);
                          if (result)
                          {
                            sub_10195DAB4();
                            return 0;
                          }
                        }
                      }

                      else
                      {
                        if (qword_1025D4650 != -1)
                        {
                          sub_10195D314();
                        }

                        v43 = qword_1025D4658;
                        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                        {
                          *buf = 0;
                          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - maxLat", buf, 2u);
                        }

                        result = sub_10000A100(121, 2);
                        if (result)
                        {
                          sub_10195D9D8();
                          return 0;
                        }
                      }
                    }

                    else
                    {
                      if (qword_1025D4650 != -1)
                      {
                        sub_10195D314();
                      }

                      v42 = qword_1025D4658;
                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - minLat", buf, 2u);
                      }

                      result = sub_10000A100(121, 2);
                      if (result)
                      {
                        sub_10195D8FC();
                        return 0;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4650 != -1)
                    {
                      sub_10195D314();
                    }

                    v41 = qword_1025D4658;
                    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - headerLength", buf, 2u);
                    }

                    result = sub_10000A100(121, 2);
                    if (result)
                    {
                      sub_10195D820();
                      return 0;
                    }
                  }
                }

                else
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_10195D314();
                  }

                  v40 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - version", buf, 2u);
                  }

                  result = sub_10000A100(121, 2);
                  if (result)
                  {
                    sub_10195D744();
                    return 0;
                  }
                }
              }

              else
              {
                if (qword_1025D4650 != -1)
                {
                  sub_10195D314();
                }

                v39 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - invalid header string", buf, 2u);
                }

                result = sub_10000A100(121, 2);
                if (result)
                {
                  sub_10195D668();
                  return 0;
                }
              }
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_10195D314();
              }

              v38 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - header string", buf, 2u);
              }

              result = sub_10000A100(121, 2);
              if (result)
              {
                sub_10195D58C();
                return 0;
              }
            }

            return result;
          }

          if (fseek(v9, v12, 0))
          {
            if (qword_1025D4650 != -1)
            {
              sub_10195D314();
            }

            v37 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "DEM,fseek returned non-zero", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10195D4A4();
            }

            return 0;
          }
        }

        v16 = feof(v9);
        result = 0;
        if (!v16 && v10++ < 0x1FF)
        {
          continue;
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002580C8(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v97 = off_1024DE5F8;
  v102 = *(a3 + 72);
  v103 = *(a3 + 88);
  v104 = *(a3 + 104);
  v105 = *(a3 + 120);
  v98 = *(a3 + 8);
  v99 = *(a3 + 24);
  v100 = *(a3 + 40);
  v101 = *(a3 + 56);
  (*(*a4 + 80))(a4, "predictedPreviousRawLocation", a1[52].u32[2]);
  (*(*a5 + 80))(a5, "predictedPreviousFusedLocation", a1[52].u32[2]);
  sub_10002F4A0(&v97, "FusedLoc,IDC Fusion a priori", a1[52].i32[2]);
  v15 = *(a5 + 40) * *(a5 + 40) * 0.5;
  if (v15 < 1.0)
  {
    v15 = 1.0;
  }

  v16 = 1.0 / v15;
  v17 = *(a4 + 40);
  v17.f64[1] = *(a3 + 40);
  __asm { FMOV            V2.2D, #0.5 }

  v23 = vmulq_f64(vmulq_f64(v17, v17), _Q2);
  __asm { FMOV            V2.2D, #1.0 }

  v25 = vdivq_f64(_Q2, vbslq_s8(vcgtq_f64(_Q2, v23), _Q2, v23));
  v26 = *&v25.i64[1];
  v27 = *&v25.i64[1] - *v25.i64;
  v82 = v25;
  if (*v25.i64 > *&v25.i64[1])
  {
    v27 = *v25.i64 - *&v25.i64[1];
  }

  v28 = 1.0 / (v16 + v27);
  *&v100 = sqrt(v28 + v28);
  *v12.i64 = *(a3 + 32) * 0.0174532925;
  v29 = *(a4 + 24);
  v29.f64[1] = *(a3 + 24);
  v80 = v29;
  *v25.i64 = *(a4 + 32) * 0.0174532925;
  v30 = *(a5 + 24);
  v31 = *(a5 + 32);
  v14.i64[0] = 0x400921FB54442D18;
  v95 = v14;
  if (fabs(*v12.i64) > 3.14159265)
  {
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v90 = vbslq_s8(vnegq_f64(v32), v14, v12);
    v86 = v25;
    v33 = fmod(*v12.i64 + *v90.i64, 6.28318531);
    v25 = v86;
    v12.i64[1] = v90.i64[1];
    v14 = v95;
    *v12.i64 = v33 - *v90.i64;
  }

  *v13.i64 = v31 * 0.0174532925;
  v91 = v12;
  if (fabs(*v25.i64) > *v14.i64)
  {
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v87 = *vbslq_s8(vnegq_f64(v34), v14, v25).i64;
    v83 = v13;
    v35 = fmod(*v25.i64 + v87, 6.28318531);
    v13 = v83;
    v14 = v95;
    *v25.i64 = v35 - v87;
  }

  v88 = v25;
  if (fabs(*v13.i64) > *v14.i64)
  {
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v84 = *vbslq_s8(vnegq_f64(v36), v14, v13).i64;
    v37 = fmod(*v13.i64 + v84, 6.28318531);
    v25 = v88;
    v14 = v95;
    *v13.i64 = v37 - v84;
  }

  v38 = *v91.i64;
  v39 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v40 = fabs(*v13.i64);
  v85 = v13;
  if (vabdd_f64(*v91.i64, *v13.i64) > *v14.i64)
  {
    v77 = v39;
    if (fabs(*v91.i64) > *v14.i64)
    {
      v41.f64[0] = NAN;
      v41.f64[1] = NAN;
      v75 = *vbslq_s8(vnegq_f64(v41), v14, v91).i64;
      v42 = fmod(*v91.i64 + v75, 6.28318531);
      v13 = v85;
      v25 = v88;
      v14 = v95;
      v38 = v42 - v75;
    }

    v43 = *v13.i64;
    if (v40 > *v14.i64)
    {
      v44.f64[0] = NAN;
      v44.f64[1] = NAN;
      v76 = *vbslq_s8(vnegq_f64(v44), v14, v13).i64;
      v92 = v38;
      v45 = fmod(*v13.i64 + v76, 6.28318531);
      v13 = v85;
      v25 = v88;
      v38 = v92;
      v14 = v95;
      v43 = v45 - v76;
    }

    if (vabdd_f64(v38, v43) <= *v14.i64)
    {
      v46 = v38 - v43;
    }

    else
    {
      v46 = v38 - v43 + dbl_101CFC5F0[v38 - v43 > *v14.i64];
    }

    v38 = *v13.i64 + v46;
    v39 = v77;
  }

  v47 = vmulq_f64(v80, v39);
  if (vabdd_f64(*v25.i64, *v13.i64) > *v14.i64)
  {
    v93 = v38;
    v81 = v47;
    if (fabs(*v25.i64) > *v14.i64)
    {
      v48.f64[0] = NAN;
      v48.f64[1] = NAN;
      v78 = *vbslq_s8(vnegq_f64(v48), v14, v25).i64;
      v49 = fmod(*v25.i64 + v78, 6.28318531);
      v13 = v85;
      v14 = v95;
      *v25.i64 = v49 - v78;
    }

    v50 = *v13.i64;
    if (v40 > *v14.i64)
    {
      v51.f64[0] = NAN;
      v51.f64[1] = NAN;
      v79 = *vbslq_s8(vnegq_f64(v51), v14, v13).i64;
      v89 = v25.i64[0];
      v52 = fmod(*v13.i64 + v79, 6.28318531);
      v13.i64[0] = v85.i64[0];
      v25.i64[0] = v89;
      v14 = v95;
      v50 = v52 - v79;
    }

    if (vabdd_f64(*v25.i64, v50) <= *v14.i64)
    {
      v53 = *v25.i64 - v50;
    }

    else
    {
      v53 = *v25.i64 - v50 + dbl_101CFC5F0[*v25.i64 - v50 > *v14.i64];
    }

    *v25.i64 = *v13.i64 + v53;
    v38 = v93;
    v47 = v81;
  }

  v60 = vmulq_f64(v82, v47);
  v54 = v26 * v38;
  v55 = v82.f64[0] * *v25.i64;
  v56 = v16 * (v30 * 0.0174532925);
  v57 = v16 * *v13.i64;
  v58 = *&v60.i64[1] - *v60.i64;
  v59 = v54 - v55;
  *v60.i64 = *v60.i64 - *&v60.i64[1];
  v61 = v55 - v54;
  if (v82.f64[0] <= v26)
  {
    *v60.i64 = v58;
    v61 = v59;
  }

  v62 = v57 + v61;
  v47.f64[0] = v28 * (v56 + *v60.i64);
  if (fabs(v47.f64[0]) > *v14.i64)
  {
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    v94 = *vbslq_s8(vnegq_f64(v63), v14, v47).i64;
    v47.f64[0] = fmod(v47.f64[0] + v94, 6.28318531) - v94;
  }

  *v60.i64 = v28 * v62;
  if (v47.f64[0] >= 1.57079633)
  {
    v64 = v95;
    v47.f64[0] = *v95.i64 - v47.f64[0];
  }

  else
  {
    v64 = v95;
    if (v47.f64[0] < -1.57079633)
    {
      v47.f64[0] = -3.14159265 - v47.f64[0];
    }
  }

  *&v99 = v47.f64[0] * 57.2957795;
  if (fabs(*v60.i64) > *v64.i64)
  {
    v65.f64[0] = NAN;
    v65.f64[1] = NAN;
    v96 = *vbslq_s8(vnegq_f64(v65), v64, v60).i64;
    *v60.i64 = fmod(*v60.i64 + v96, 6.28318531) - v96;
  }

  *(&v99 + 1) = *v60.i64 * 57.2957795;
  if (a6 <= 2.0 && ((*(*a3 + 48))(a3) & 1) == 0)
  {
    if (*(&v102 + 1) <= 0.0)
    {
      v102 = *(a5 + 72);
    }

    if (*(&v103 + 1) <= 0.0)
    {
      v103 = *(a5 + 88);
    }
  }

  v66 = *&v100;
  if (*&v100 < 2.0)
  {
    v66 = 2.0;
  }

  *&v100 = v66;
  sub_10002F4A0(&v97, "FusedLoc,IDC Fusion a posteriori", a1[52].i32[2]);
  v67 = *(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL);
  v68 = v98;
  v69 = v99;
  v70 = v100;
  *(v67 + 72) = v101;
  *(v67 + 56) = v70;
  *(v67 + 40) = v69;
  *(v67 + 24) = v68;
  v71 = v102;
  v72 = v103;
  v73 = v104;
  *(v67 + 136) = v105;
  *(v67 + 120) = v73;
  *(v67 + 104) = v72;
  *(v67 + 88) = v71;
  *(*(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL) + 148) = 1;
  *a1 = vextq_s8(v98, v98, 8uLL);
  return 1;
}

uint64_t sub_10025873C(char *a1, int a2, int *a3)
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
                sub_1018F6538();
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
                  sub_1018F6538();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLTimeManager_Type::Notification, CLTimeManager_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLTimeManager_Type::Notification, NotificationData_T = CLTimeManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
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

uint64_t sub_100258AE0(uint64_t *a1, double *a2, long double *a3)
{
  *(a1 + 80) = 0;
  v3 = *a3;
  v4 = *a2;
  v5 = vcvtmd_s64_f64((*a2 + 90.0) * 20.0) + (floor(*a3 * 20.0) * 100000.0);
  v6 = a1;
  if ((*(a1 + 28) & 1) != 0 && (v6 = a1, v5 == *(a1 + 6)))
  {
    v7 = *(a1 + 29);
  }

  else
  {
    do
    {
      v6 = v6[1];
      if (v6 == a1)
      {
        *(a1 + 6) = 0;
        *(a1 + 14) = 0;
        if (sub_1004A6F7C(a1, v4, v3))
        {
          operator new();
        }

        operator new();
      }
    }

    while (v5 != *(v6 + 4));
    v7 = *(v6 + 20);
  }

  return v7 & 1;
}

void sub_100258C1C(uint64_t a1, double a2)
{
  v3 = a1;
  v4 = (*(**(a1 + 464) + 32))(*(a1 + 464));
  if (((*(**(v3 + 464) + 48))(*(v3 + 464)) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, location services disabled - no tile downloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2494();
    }

    return;
  }

  if ((*(v3 + 201) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(v3 + 200);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2578(v3);
    }

    return;
  }

  if (*(v3 + 200) == 1 && *(v3 + 440) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, no tiles while locked", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC31B8();
    }

    return;
  }

  v10 = *(v3 + 424);
  if (v10 > 1)
  {
    goto LABEL_24;
  }

  v116 = *(v3 + 496);
  if (v10 == 1)
  {
    if ((v4 & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003110B8();
      }

      v87 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, no download on none broadband cellular connections", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC2750();
      }

      return;
    }

    v112 = (v3 + 200);
    goto LABEL_25;
  }

  if (!v10)
  {
    if ((v116 & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101ABFB1C();
      }

      v14 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "TILE: checkDownloadSchedule, no data connectivity, avoiding downloads", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC266C();
      }

      return;
    }

LABEL_24:
    v112 = (v3 + 200);
    v116 = 1;
LABEL_25:
    v11 = 1;
    goto LABEL_26;
  }

  v112 = (v3 + 200);
  v11 = *(v3 + 496);
LABEL_26:
  v115 = sub_10025A480(v3, v5);
  if (qword_1025D4600 != -1)
  {
    sub_1003110B8();
  }

  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *&buf[4] = v115;
    *&buf[8] = 1024;
    *&buf[10] = v11;
    *&buf[14] = 1024;
    *&buf[16] = v116;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, checking, numOfActiveDownloads, %u, small, %d, large, %d", buf, 0x14u);
  }

  v113 = v11;
  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    *v121 = 67109632;
    *&v121[4] = v115;
    *&v121[8] = 1024;
    *&v121[10] = v11;
    *&v121[14] = 1024;
    *&v121[16] = v116;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "TILE: checkDownloadSchedule, checking, numOfActiveDownloads, %u, small, %d, large, %d", v121, 20, v101);
    v95 = v94;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v94);
    if (v95 != buf)
    {
      free(v95);
    }
  }

  if (v115 >= 2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v115;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, numOfActiveDownloads, %d, not scheduling more", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC30C8();
    }

    return;
  }

  if (*(v3 + 176) == 1 && *(v3 + 144) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v15 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, both download requests are already in use", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2FE4();
    }

    return;
  }

  if (*(v3 + 160) || *(v3 + 192))
  {
    v16 = *(v3 + 268);
    v17 = *(v3 + 200);
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v18 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v16 > 0.0;
      *&buf[8] = 1024;
      *&buf[10] = v17;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, isLocationValid, %d, isDeviceLocked, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2834((v16 > 0.0));
    }

    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v19 = (v3 + 248);
    v20 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_100072AFC(v3 + 248, buf);
      v21 = buf[23] >= 0 ? buf : *buf;
      *v121 = 136642819;
      *&v121[4] = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, lastLocation, %{sensitive}s", v121, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC293C(v3 + 248);
    }

    v23 = *(v3 + 112);
    v114 = (v3 + 120);
    if (v23 != (v3 + 120))
    {
      v106 = v3 + 136;
      v107 = v3 + 168;
      *&v22 = 136447235;
      v105 = v22;
      v108 = v3;
      while (1)
      {
        if (*(v3 + 144) == 1 && (*(v3 + 176) & 1) != 0)
        {
          goto LABEL_193;
        }

        v24 = v23[10];
        v25 = (v24 + 48);
        v26 = sub_1001D252C(v3, *(v24 + 48));
        if ((*(v24 + 48) & 0xFFFFFFF7) - 1 >= 2)
        {
          sub_101AC2A68(v26);
        }

        v27 = v26;
        if (!sub_100232000(v24, v116, *(v26 + 128), a2))
        {
          if (sub_100085A44(v24))
          {
            if (qword_1025D4600 != -1)
            {
              sub_101ABFEE4();
            }

            v35 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v36 = sub_100085A44(v24);
              *buf = 67109120;
              *&buf[4] = v36;
              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, isShouldDownload is not true, exists on server, %d", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AC2BD4(v129, v24, v130);
            }
          }

          goto LABEL_148;
        }

        v28 = *(v27 + 136);
        v29 = v19[7];
        v135 = v19[6];
        v136 = v29;
        v137[0] = v19[8];
        *(v137 + 12) = *(v19 + 140);
        v30 = v19[3];
        *&buf[32] = v19[2];
        v132 = v30;
        v31 = v19[5];
        v133 = v19[4];
        v134 = v31;
        v32 = v19[1];
        *buf = *v19;
        *&buf[16] = v32;
        v120 = sub_1010AB2BC(v24, buf, v28, a2);
        if (sub_1002332E4(v24))
        {
          goto LABEL_148;
        }

        if (v115 >= 2)
        {
          v115 = 2;
          goto LABEL_193;
        }

        v119 = 0;
        if (v120 != 1)
        {
          break;
        }

        v33 = v113;
        if ((*(v24 + 112) & v113 & 1) == 0)
        {
          v34 = *(v27 + 177);
          goto LABEL_92;
        }

LABEL_93:
        v37 = 1;
        v119 = 1;
LABEL_94:
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v38 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v39 = v120;
          v40 = v119;
          (*(*v24 + 16))(v121, v24);
          v109 = v27;
          v41 = v37;
          v42 = v19;
          v43 = v121[23];
          v44 = *v121;
          sub_100EDCE5C(&__p);
          v45 = v121;
          if (v43 < 0)
          {
            v45 = v44;
          }

          p_p = &__p;
          if (v128 < 0)
          {
            p_p = __p;
          }

          *buf = 67110402;
          *&buf[4] = 1;
          *&buf[8] = 1024;
          v37 = v41;
          *&buf[10] = v41;
          *&buf[14] = 1024;
          *&buf[16] = v39;
          *&buf[20] = 1024;
          *&buf[22] = v40;
          *&buf[26] = 2080;
          *&buf[28] = v45;
          *&buf[36] = 2080;
          *&buf[38] = p_p;
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, isShouldDownload, %d, isAllowDownload, %d, isCurrentTile, %d, isAllowCellular, %d, check, %s, details, %s", buf, 0x2Eu);
          if (v128 < 0)
          {
            operator delete(__p);
          }

          v19 = v42;
          v27 = v109;
          if ((v121[23] & 0x80000000) != 0)
          {
            operator delete(*v121);
          }

          v3 = v108;
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABFF0C(buf);
          v104 = qword_1025D4608;
          v67 = v120;
          v68 = v119;
          (*(*v24 + 16))(&__p, v24);
          v111 = v37;
          v102 = v19;
          v69 = v128;
          v70 = __p;
          sub_100EDCE5C(v117);
          v71 = &__p;
          if (v69 < 0)
          {
            v71 = v70;
          }

          v72 = v117;
          if (v118 < 0)
          {
            v72 = v117[0];
          }

          *v121 = 67110402;
          *&v121[4] = 1;
          *&v121[8] = 1024;
          *&v121[10] = v111;
          *&v121[14] = 1024;
          *&v121[16] = v67;
          *&v121[20] = 1024;
          *&v121[22] = v68;
          *&v121[26] = 2080;
          *&v121[28] = v71;
          *&v121[36] = 2080;
          *v122 = v72;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v104, 2, "TILE: checkDownloadSchedule, isShouldDownload, %d, isAllowDownload, %d, isCurrentTile, %d, isAllowCellular, %d, check, %s, details, %s", v121, 46, v102, v104, v105, *(&v105 + 1));
          v74 = v73;
          if (v118 < 0)
          {
            operator delete(v117[0]);
          }

          if (v128 < 0)
          {
            operator delete(__p);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v74);
          v19 = v101;
          v37 = v111;
          if (v74 != buf)
          {
            free(v74);
          }
        }

        if (!v37)
        {
          goto LABEL_148;
        }

        if (v119 == 1)
        {
          v47 = v106;
          if ((*(v3 + 144) & 1) == 0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v47 = v107;
          if ((*(v3 + 176) & 1) == 0)
          {
LABEL_112:
            if (qword_1025D4600 != -1)
            {
              sub_101ABFEE4();
            }

            v48 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v49 = *v47;
              *buf = 136315138;
              *&buf[4] = v49;
              _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, chose, downloadState, %s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AC2D00(v123, v47, &v124);
            }

            v50 = *(v47 + 24);
            *(v50 + 80) = v119;
            *(v50 + 81) = 1;
            if (*(v27 + 79) >= 0)
            {
              v51 = v27 + 56;
            }

            else
            {
              v51 = *(v27 + 56);
            }

            v110 = [NSString stringWithUTF8String:v51];
            if ((*(v27 + 80) & 1) == 0)
            {
              v52 = +[GEOCountryConfiguration sharedConfiguration];
              if (*(v27 + 111) >= 0)
              {
                v53 = v27 + 88;
              }

              else
              {
                v53 = *(v27 + 88);
              }

              v110 = [v52 defaultForKey:+[NSString stringWithUTF8String:](NSString defaultValue:{"stringWithUTF8String:", v53), v110}];
            }

            sub_10000EC00(buf, [(NSString *)v110 UTF8String]);
            v54 = sub_100ED9670(v24, buf, *(v47 + 24));
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v54)
            {
              *(v47 + 8) = 1;
              *(v47 + 16) = a2;
              if (qword_1025D4600 != -1)
              {
                sub_101ABFEE4();
              }

              ++v115;
              v55 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                (*(*v24 + 16))(buf, v24);
                v56 = buf;
                if (buf[23] < 0)
                {
                  v56 = *buf;
                }

                *v121 = 67109378;
                *&v121[4] = v115;
                *&v121[8] = 2080;
                *&v121[10] = v56;
                _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, started downloading, numOfActiveDownloads, %d, tile, %s", v121, 0x12u);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4600 != -1)
                {
                  sub_101ABFEE4();
                }

                v75 = qword_1025D4608;
                (*(*v24 + 16))(v121, v24);
                v76 = v121;
                if (v121[23] < 0)
                {
                  v76 = *v121;
                }

                LODWORD(__p) = 67109378;
                HIDWORD(__p) = v115;
                v126 = 2080;
                v127 = v76;
                LODWORD(v100) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v75, 2, "TILE: checkDownloadSchedule, started downloading, numOfActiveDownloads, %d, tile, %s", &__p, v100);
                v78 = v77;
                if ((v121[23] & 0x80000000) != 0)
                {
                  operator delete(*v121);
                }

                sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v78);
                if (v78 != buf)
                {
                  free(v78);
                }
              }

              sub_100EF41D4((v27 + 232), 1);
              sub_10000EC00(buf, "startDownloading");
              sub_100C43164(v27 + 232, buf, *(v3 + 424));
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (sub_100071CA0())
              {
                sub_10004FD18();
                v57 = (v24 + 8);
                if (*(v24 + 31) < 0)
                {
                  v57 = *v57;
                }

                sub_1002DC414(buf, "getTile", v57);
                sub_100043360(buf, "protection", v112);
                sub_100043360(buf, "isCurrentTile", &v120);
                sub_100043360(buf, "isAllowCellular", &v119);
                sub_100071CAC(buf, "locationd");
                sub_100005DA4();
              }

              if (qword_1025D4620 != -1)
              {
                sub_101ABFF50();
              }

              v58 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
              {
                v59 = sub_100085790(*v25);
                v60 = sub_100085338(v25);
                v61 = sub_100085314(v25);
                v62 = *(v3 + 424);
                v63 = [(NSString *)v110 UTF8String];
                *buf = v105;
                *&buf[4] = v59;
                *&buf[12] = 2053;
                *&buf[14] = v60;
                *&buf[22] = 2053;
                *&buf[24] = v61;
                *&buf[32] = 1026;
                *&buf[34] = v62;
                *&buf[38] = 2081;
                *&buf[40] = v63;
                _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, start, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reach, %{public}d, url, %{private}s", buf, 0x30u);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4620 != -1)
                {
                  sub_101ABFF50();
                }

                v79 = qword_1025D4628;
                v80 = sub_100085790(*v25);
                v81 = sub_100085338(v25);
                v82 = sub_100085314(v25);
                v83 = *(v3 + 424);
                v84 = [(NSString *)v110 UTF8String];
                *v121 = v105;
                *&v121[4] = v80;
                *&v121[12] = 2053;
                *&v121[14] = v81;
                *&v121[22] = 2053;
                *&v121[24] = v82;
                *&v121[32] = 1026;
                *&v121[34] = v83;
                *v122 = 2081;
                *&v122[2] = v84;
                LODWORD(v100) = 48;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v79, 0, "@TileReq, %{public}s, start, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reach, %{public}d, url, %{private}s", v121, v100);
                v86 = v85;
                sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v85);
                if (v86 != buf)
                {
                  free(v86);
                }
              }
            }
          }
        }

LABEL_148:
        v64 = v23[1];
        if (v64)
        {
          do
          {
            v65 = v64;
            v64 = *v64;
          }

          while (v64);
        }

        else
        {
          do
          {
            v65 = v23[2];
            v66 = *v65 == v23;
            v23 = v65;
          }

          while (!v66);
        }

        v23 = v65;
        if (v65 == v114)
        {
          goto LABEL_193;
        }
      }

      v34 = *(v24 + 113);
      v33 = v113;
LABEL_92:
      v37 = v116;
      if ((v34 & v33 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }

LABEL_193:
    v89 = *(v3 + 128);
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v90 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v91 = *(v3 + 144);
      v92 = *(v3 + 176);
      *buf = 67109888;
      *&buf[4] = v115;
      *&buf[8] = 2048;
      *&buf[10] = v89;
      *&buf[18] = 1024;
      *&buf[20] = v91;
      *&buf[24] = 1024;
      *&buf[26] = v92;
      _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, numOfActiveDownloads, %d, tilesToDownload, %lu, small, %d, large, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v96 = *(v3 + 144);
      v97 = *(v3 + 176);
      *v121 = 67109888;
      *&v121[4] = v115;
      *&v121[8] = 2048;
      *&v121[10] = v89;
      *&v121[18] = 1024;
      *&v121[20] = v96;
      *&v121[24] = 1024;
      *&v121[26] = v97;
      LODWORD(v100) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "TILE: checkDownloadSchedule, numOfActiveDownloads, %d, tilesToDownload, %lu, small, %d, large, %d", v121, v100, v101, v103);
      v99 = v98;
      sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v98);
      if (v99 != buf)
      {
        free(v99);
      }
    }

    if ((*(v3 + 144) & 1) == 0 && (*(v3 + 176) & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101ABFF50();
      }

      v93 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, NoActiveDownloads", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC2E1C();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v88 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_INFO, "TILE: checkDownloadSchedule, both download requests null, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2F00();
    }
  }
}

void sub_10025A178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10025A1D8(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 16) "vendor")];

  return [v1 syncgetIsBroadConnection];
}

void sub_10025A210(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x1A)
  {
    v6 = *(a1 + 24);
    v7 = *a1;
    v8 = &v6[-*a1];
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_10045E858(a1, v9);
  }

  *(a1 + 32) = v5 + 26;
  v10[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  sub_10045E538(a1, v10);
}

void sub_10025A414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}