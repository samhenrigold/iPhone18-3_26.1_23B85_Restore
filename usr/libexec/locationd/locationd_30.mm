uint64_t sub_1001F56C8(uint64_t a1, void *a2)
{
  if (a2 - 1) < 0xB && ((0x7EFu >> (a2 - 1)))
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67240192;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "unsupported location type,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_1018F9A14(a2);
    return 0;
  }

  return result;
}

uint64_t sub_1001F57C8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 678) & 1) == 0 && (*(a1 + 679) & 1) == 0 && sub_1001F5950(*(a1 + 280), a2))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v5 = *(a2 + 76);
      v6 = *(a2 + 96);
      v7 = *(a2 + 4);
      v8 = *(a2 + 12);
      v9 = *(a2 + 20);
      v10 = *(a2 + 84);
      v11 = *(a2 + 128);
      v13 = 134350593;
      v14 = v5;
      v15 = 1026;
      v16 = v6;
      v17 = 2053;
      v18 = v7;
      v19 = 2053;
      v20 = v8;
      v21 = 2050;
      v22 = v9;
      v23 = 1026;
      v24 = v10;
      v25 = 1026;
      v26 = v11;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "location rejected by IM,timestamp,%{public}.3f,locationType,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.1f,confidence,%{public}d,integrity,%{public}d", &v13, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAC428(a2);
    }

    if (*(a1 + 673) != 1)
    {
      return 0;
    }
  }

  sub_1001F67B4(a1, a2);
  sub_1001F7C68(a1, a2);
  return 1;
}

void sub_1001F5958(unint64_t *a1, unint64_t a2)
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

  if (v4 % 0x1A)
  {
    v5 = v4 / 0x1A + 1;
  }

  else
  {
    v5 = v4 / 0x1A;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0x1A)
  {
    v7 = v6 / 0x1A;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x1A)
  {
    for (a1[4] = v6 - 26 * v7; v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_10045E430(a1, v16);
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
        sub_10045E858(a1, v12);
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

    for (a1[4] -= 26 * v7; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10045E430(a1, v16);
    }
  }
}

void sub_1001F5C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001F5CA4(void *a1, double a2, double a3)
{
  v26[0] = 0.0;
  v24 = 0u;
  v25 = 0u;
  v4 = a1[14];
  if (v4)
  {
    v7 = a1[13];
    v8 = a1[10];
    if (a3 - *(*(v8 + (((v4 + v7 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + v7 - 1)) >= a2)
    {
      v17 = 0;
      while (a3 - *(*(v8 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) < a2)
      {
        --v17;
        ++v7;
        if (-v4 == v17)
        {
          v18 = 0;
          goto LABEL_19;
        }
      }

      v18 = -v17;
LABEL_19:
      sub_1001F61A8(a1, &v24, &v25, &v24 + 1, &v25 + 1, v26, v18, a1 + 9, a3, a2);
      v9 = (*&v25 * 3.0 + *&v24 * 0.0 + *(&v24 + 1) * 5.0 + *(&v25 + 1) * 40.0 + v26[0] * 40.0) / 100.0;
    }

    else
    {
      sub_1001F61A8(a1, &v24, &v25, &v24 + 1, &v25 + 1, v26, v4, a1 + 9, a3, -1.0);
      v9 = 40.0;
      v10 = a3 - *(*(a1[10] + (((a1[14] + a1[13] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 112) + *(a1 + 104) - 1));
      v11 = a2 - v10;
      v12 = v10 + a2 - v10;
      if (v12 != 0.0)
      {
        v13 = (*&v25 * 3.0 + *&v24 * 0.0 + *(&v24 + 1) * 5.0 + *(&v25 + 1) * 40.0 + v26[0] * 40.0) / 100.0;
        if (qword_1025D4870 != -1)
        {
          sub_101B70AC4();
        }

        v14 = qword_1025D4878;
        v9 = (v11 * 40.0 + v13 * v10) / v12;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134219008;
          v38 = (v11 * 40.0 + v13 * v10) / v12;
          v39 = 2048;
          v40 = v13;
          v41 = 2048;
          v42 = v10;
          v43 = 2048;
          v44 = a2 - v10;
          v45 = 2048;
          v46 = v10 + a2 - v10;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, worstCaseAveVel %.1f, worstCaseAveVelPartial %.1f, timeSpanBuffer %.1f, residual %.1f, denom %.1f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4870 != -1)
          {
            sub_101B70C38();
          }

          v27 = 134219008;
          v28 = (v11 * 40.0 + v13 * v10) / v12;
          v29 = 2048;
          v30 = v13;
          v31 = 2048;
          v32 = v10;
          v33 = 2048;
          v34 = a2 - v10;
          v35 = 2048;
          v36 = v10 + a2 - v10;
          LODWORD(v23) = 52;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "IntegrityMonitor, worstCaseAveVel %.1f, worstCaseAveVelPartial %.1f, timeSpanBuffer %.1f, residual %.1f, denom %.1f", COERCE_DOUBLE(&v27), v23, *&v24, *(&v24 + 1), *&v25);
          v16 = v15;
          sub_100152C7C("Generic", 1, 0, 2, "double CLIntegrityMonitor::propagateHpl(double, double)", "%s\n", v15);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }
    }
  }

  else
  {
    v9 = 40.0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101B70C38();
  }

  v19 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v38 = v9;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v9 * a2;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, worstCaseAveVel %.1f, deltaTime_ %.1f, hplmodifier %.1f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v27 = 134218496;
    v28 = v9;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v9 * a2;
    LODWORD(v23) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "IntegrityMonitor, worstCaseAveVel %.1f, deltaTime_ %.1f, hplmodifier %.1f", COERCE_DOUBLE(&v27), v23, *&v24);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "double CLIntegrityMonitor::propagateHpl(double, double)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  return v9 * a2;
}

void sub_1001F61A8(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, unsigned int a7, void *a8, double a9, double a10)
{
  if (a8[5] < a7)
  {
    goto LABEL_2;
  }

  if (a7)
  {
    v15 = 0.0;
    if (a9 <= 0.0)
    {
      v20 = 0.0;
LABEL_17:
      v21 = 0.0;
LABEL_18:
      v22 = 0.0;
LABEL_19:
      v17 = 0.0;
      goto LABEL_20;
    }

    v16 = *(a8[1] + ((a8[4] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a8[4];
    v17 = a9 - *v16;
    if (v17 <= 0.0)
    {
      goto LABEL_2;
    }

    v18 = *(v16 + 8);
    if (v18 > 9)
    {
      if (v18 <= 51)
      {
        if ((v18 - 10) >= 2)
        {
          if (v18 != 41)
          {
LABEL_80:
            v20 = v17;
            goto LABEL_17;
          }

LABEL_79:
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
LABEL_20:
          if (a7 >= 2)
          {
            v23 = a8[4];
            v24 = a8[1];
            v25 = a7 - 1;
            while (1)
            {
              v26 = *(v24 + (((v23 + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v23 + 1);
              v27 = *(*(v24 + ((v23 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v23) - *v26;
              if (v27 <= 0.0)
              {
                goto LABEL_2;
              }

              v28 = *(v26 + 8);
              if (v28 > 9)
              {
                break;
              }

              if (v28 <= 4)
              {
                if ((v28 - 1) >= 2)
                {
                  if (v28 != 4)
                  {
                    goto LABEL_39;
                  }

LABEL_38:
                  v17 = v17 + v27;
                  goto LABEL_40;
                }

LABEL_30:
                v15 = v15 + v27;
                goto LABEL_40;
              }

              if (v28 == 5)
              {
                goto LABEL_36;
              }

              if (v28 != 8)
              {
                goto LABEL_39;
              }

              v22 = v22 + v27;
LABEL_40:
              ++v23;
              if (!--v25)
              {
                goto LABEL_41;
              }
            }

            if (v28 > 51)
            {
              if (v28 != 52 && v28 != 56)
              {
LABEL_39:
                v20 = v20 + v27;
                goto LABEL_40;
              }

LABEL_36:
              v21 = v21 + v27;
              goto LABEL_40;
            }

            if ((v28 - 10) >= 2)
            {
              if (v28 != 41)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            goto LABEL_30;
          }

LABEL_41:
          if (a10 <= 0.0)
          {
            goto LABEL_84;
          }

          v29 = a8[4];
          v30 = a8[1];
          v31 = *(*(v30 + (((v29 + (a7 - 1)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v29 + a7 - 1)) - a9 + a10;
          if (v31 > 0.0)
          {
            v32 = *(*(v30 + (((v29 + a7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v29 + a7) + 8);
            if (v32 > 9)
            {
              if (v32 <= 51)
              {
                if ((v32 - 10) < 2)
                {
LABEL_62:
                  v15 = v15 + v31;
LABEL_84:
                  v33 = v20 + v21 + v22 + v17 + v15;
                  *a2 = v15 / v33 * 100.0;
                  *a3 = v17 / v33 * 100.0;
                  *a4 = v22 / v33 * 100.0;
                  *a5 = v21 / v33 * 100.0;
                  *a6 = v20 / v33 * 100.0;
                  goto LABEL_85;
                }

                if (v32 == 41)
                {
LABEL_82:
                  v17 = v17 + v31;
                  goto LABEL_84;
                }

LABEL_83:
                v20 = v20 + v31;
                goto LABEL_84;
              }

              if (v32 != 52 && v32 != 56)
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v32 <= 4)
              {
                if ((v32 - 1) >= 2)
                {
                  if (v32 != 4)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_82;
                }

                goto LABEL_62;
              }

              if (v32 != 5)
              {
                if (v32 == 8)
                {
                  v22 = v22 + v31;
                  goto LABEL_84;
                }

                goto LABEL_83;
              }
            }

            v21 = v21 + v31;
            goto LABEL_84;
          }

LABEL_2:
          *a6 = 100.0;
          return;
        }

LABEL_53:
        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
        v15 = v17;
        goto LABEL_19;
      }

      if (v18 != 52 && v18 != 56)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v18 <= 4)
      {
        if ((v18 - 1) >= 2)
        {
          if (v18 != 4)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

        goto LABEL_53;
      }

      if (v18 != 5)
      {
        if (v18 == 8)
        {
          v20 = 0.0;
          v21 = 0.0;
          v22 = v17;
          goto LABEL_19;
        }

        goto LABEL_80;
      }
    }

    v20 = 0.0;
    v21 = v17;
    goto LABEL_18;
  }

  v19 = *(*(a8[1] + ((a8[4] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a8[4] + 8);
  if (v19 <= 9)
  {
    if (v19 <= 4)
    {
      if ((v19 - 1) >= 2)
      {
        if (v19 != 4)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_50;
    }

    if (v19 != 5)
    {
      if (v19 == 8)
      {
        *a4 = 100.0;
        goto LABEL_85;
      }

LABEL_65:
      *a6 = 100.0;
      goto LABEL_85;
    }

LABEL_59:
    *a5 = 100.0;
    goto LABEL_85;
  }

  if (v19 > 51)
  {
    if (v19 != 52 && v19 != 56)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  if ((v19 - 10) >= 2)
  {
    if (v19 == 41)
    {
LABEL_64:
      *a3 = 100.0;
      goto LABEL_85;
    }

    goto LABEL_65;
  }

LABEL_50:
  *a2 = 100.0;
LABEL_85:
  if (qword_1025D4870 != -1)
  {
    sub_101B70AC4();
  }

  v34 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v35 = *a2;
    v36 = *a3;
    v37 = *a4;
    v38 = *a5;
    v39 = *a6;
    *buf = 134219008;
    v59 = v35;
    v60 = 2048;
    v61 = v36;
    v62 = 2048;
    v63 = v37;
    v64 = 2048;
    v65 = v38;
    v66 = 2048;
    v67 = v39;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, static %.1f, walking %.1f, running %.1f, driving %.1f, unknown %.1f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v40 = *a2;
    v41 = *a3;
    v42 = *a4;
    v43 = *a5;
    v44 = *a6;
    v48 = 134219008;
    v49 = v40;
    v50 = 2048;
    v51 = v41;
    v52 = 2048;
    v53 = v42;
    v54 = 2048;
    v55 = v43;
    v56 = 2048;
    v57 = v44;
    LODWORD(v47) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "IntegrityMonitor, static %.1f, walking %.1f, running %.1f, driving %.1f, unknown %.1f", COERCE_DOUBLE(&v48), v47);
    v46 = v45;
    sub_100152C7C("Generic", 1, 0, 2, "void CLIntegrityMonitor::determineMotionPercentagesinBuffer(double &, double &, double &, double &, double &, int, std::deque<MotionInfo> &, double, double)", "%s\n", v45);
    if (v46 != buf)
    {
      free(v46);
    }
  }
}

void sub_1001F67B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if ((v4 & 0xFFFFFFFE) == 0xA)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v5 = 0;
    if ((v4 & 0xFFFFFFF7) != 1 || (*(a1 + 5176) & 1) == 0)
    {
      goto LABEL_10;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = *(a2 + 36);
    LODWORD(v13) = 188;
    *v14 = v6;
    v15 = 4;
    sub_100A1DF9C(&v16, &v13);
    sub_10008F96C(v14);
  }

  v5 = sub_100F281DC(a1, a2);
  if (v5)
  {
    sub_100F2838C(a1, (a1 + 328), a2);
    v19 = (a1 + 328);
    v7 = *(sub_100109DF4(a1 + 232, (a1 + 328), &unk_101C66300, &v19) + 132);
    LODWORD(v13) = 186;
    *v14 = v7;
    v15 = 4;
    sub_100A1DF9C(&v16, &v13);
    sub_10008F96C(v14);
    v19 = (a1 + 328);
    v8 = *(sub_100109DF4(a1 + 232, (a1 + 328), &unk_101C66300, &v19) + 48);
  }

  else
  {
    v8 = *(a2 + 96);
  }

  LODWORD(v13) = 184;
  v14[0] = v8;
  v15 = 0;
  sub_100A1DF9C(&v16, &v13);
  sub_10008F96C(v14);
  v9 = *(a2 + 36);
  LODWORD(v13) = 185;
  *v14 = v9;
  v15 = 4;
  sub_100A1DF9C(&v16, &v13);
  sub_10008F96C(v14);
  LODWORD(v19) = 0;
  v10 = sub_100226520((a2 + 4), (a2 + 12), &v19);
  LODWORD(v13) = 189;
  v14[0] = v10;
  v15 = 0;
  sub_100A1DF9C(&v16, &v13);
  sub_10008F96C(v14);
  v11 = *(a1 + 5192);
  memset(v12, 0, sizeof(v12));
  sub_1007B68E0(v12, v16, v17, 0xCCCCCCCCCCCCCCCDLL * ((v17 - v16) >> 3));
  [v11 setMeasurements:sub_1007B2EC4(v12)];
  v13 = v12;
  sub_1007B6858(&v13);
  v13 = &v16;
  sub_1007B6858(&v13);
LABEL_10:
  sub_1001D4CB8(a1, a2, v5);
}

void sub_1001F6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_10008F96C(v18 + 8);
  a13 = &a18;
  sub_1007B6858(&a13);
  _Unwind_Resume(a1);
}

BOOL sub_1001F6AA4(uint64_t a1, _OWORD *a2, int a3)
{
  v6 = sub_1000081AC();
  v36 = v6;
  if (*a1)
  {
    v7 = v6;
    if (fabs(sub_100021618(v6, *(a1 + 8), 315360000.0)) > 3.0)
    {
      sub_1001DF6F0(a1, a1 + 2416, v7);
      v8 = *a1;
      v9 = 368;
      if (*(a1 + 245))
      {
        v9 = 244;
      }

      buf[0] = *(a1 + v9);
      sub_1001F6ED0(v8, &v36, a1 + 1592, (a1 + 1504), (a1 + 1512), (a1 + 1520), (a1 + 1240), buf, (a1 + 440), (a1 + 1256), (a1 + 456));
      v10 = 380;
      if (*(a1 + 277))
      {
        v10 = 276;
      }

      sub_1001F7220(*a1, a1 + 1592, (a1 + 2040), a1 + 8, a1 + 1264, a1 + 3608, a1 + 3640, a1 + 3672, (a1 + 480), (a1 + 488), (a1 + 496), a1 + 1240, a1 + 2416, *(a1 + v10), 0);
    }
  }

  v11 = *(a1 + 24);
  v13 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v11 > 0.0 ? (v12 = v11 < 30.0) : (v12 = 0), v12 && *a1) && sub_100021618(v36, *(a1 + 8), 315360000.0) < 3.0;
  v14 = *(a1 + 2160);
  if (v14 > 0.0)
  {
    v15 = *(a1 + 2152);
    if (v15 > *(a1 + 48))
    {
      *(a1 + 56) = *(a1 + 2136);
      *(a1 + 64) = v14;
      *(a1 + 48) = v15;
    }
  }

  if (qword_1025D4600 != -1)
  {
    sub_100312410();
  }

  v16 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = *(a1 + 56);
    v20 = *(a1 + 64);
    v22 = *(a1 + 48);
    *buf = 134351104;
    v56 = v36;
    v57 = 1026;
    v58 = v13;
    v59 = 2050;
    v60 = v17;
    v61 = 2050;
    v62 = v18;
    v63 = 2050;
    v64 = v19;
    v65 = 2050;
    v66 = v21;
    v67 = 2050;
    v68 = v20;
    v69 = 2050;
    v70 = v22;
    v71 = 1026;
    v72 = a3;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "BaroAlt,query of calibrated baro alt,time,%{public}.3lf,isYieldingRPA,%{public}d,applicableTime,%{public}.3lf,altitude,%{public}.3lf,altitudeUnc,%{public}.3lf,bias_pa,%{public}.3lf,biasUnc_m,%{public}.3lf,biasTimestampCFAbs_s,%{public}.3lf,internal,%{public}d", buf, 0x54u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v29 = *(a1 + 24);
    v31 = *(a1 + 56);
    v30 = *(a1 + 64);
    v32 = *(a1 + 48);
    v37 = 134351104;
    v38 = v36;
    v39 = 1026;
    v40 = v13;
    v41 = 2050;
    v42 = v27;
    v43 = 2050;
    v44 = v28;
    v45 = 2050;
    v46 = v29;
    v47 = 2050;
    v48 = v31;
    v49 = 2050;
    v50 = v30;
    v51 = 2050;
    v52 = v32;
    v53 = 1026;
    v54 = a3;
    LODWORD(v35) = 84;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,query of calibrated baro alt,time,%{public}.3lf,isYieldingRPA,%{public}d,applicableTime,%{public}.3lf,altitude,%{public}.3lf,altitudeUnc,%{public}.3lf,bias_pa,%{public}.3lf,biasUnc_m,%{public}.3lf,biasTimestampCFAbs_s,%{public}.3lf,internal,%{public}d", &v37, v35);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::getCalibratedBaroAltitude(CLBarometricAltimeterCore::AltitudeUpdateData &, const BOOL)", "%s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  *a2 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24 = *(a1 + 40);
  v25 = *(a1 + 72);
  a2[3] = *(a1 + 56);
  a2[4] = v25;
  a2[1] = v23;
  a2[2] = v24;
  return v13;
}

void sub_1001F6ED0(uint64_t a1, double *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, _BYTE *a8, void *a9, void *a10, void *a11)
{
  v17 = *a2;
  *(a3 + 64) = *a2;
  v18 = *(a1 + 256);
  v20 = (v18 < 0 || ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v18 - 1) > 0xFFFFFFFFFFFFELL;
  if (v20 || ((v21 = *(a1 + 248), v21 >= 0) ? (v22 = ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v22 = 1), v22 ? (v23 = (v21 - 1) > 0xFFFFFFFFFFFFELL) : (v23 = 0), v23))
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    Current = v17 - *(a1 + 256) + *(a1 + 248);
  }

  *(a3 + 72) = Current;
  *(a3 + 80) = *a4;
  *(a3 + 96) = *a5;
  *(a3 + 104) = *a6;
  *(a3 + 112) = *a8;
  *(a3 + 168) = *a10;
  *(a3 + 184) = *a7;
  *(a3 + 256) = *a11;
  *(a3 + 264) = *a9;
  if (qword_1025D4600 != -1)
  {
    sub_10025BBF4();
  }

  v25 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a3 + 72);
    v27 = *(a3 + 80);
    v28 = *(a3 + 96);
    v29 = *(a3 + 104);
    v30 = *(a3 + 112);
    v31 = *(a3 + 168);
    v32 = *(a3 + 184);
    v33 = *(a3 + 256);
    v34 = *(a3 + 264);
    v35 = *(a3 + 64);
    *buf = 134285825;
    v69 = v35;
    v70 = 2049;
    v71 = v27;
    v72 = 2049;
    v73 = v28;
    v74 = 2049;
    v75 = v29;
    v76 = 1025;
    v77 = v30;
    v78 = 2049;
    v79 = v31;
    v80 = 2049;
    v81 = v32;
    v82 = 2049;
    v83 = v33;
    v84 = 2049;
    v85 = v34;
    v86 = 2049;
    v87 = v26;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "BaroAlt,MMKF,fillInput,machContTime_s,%{private}.3lf,refPressure_time_s,%{private}.3lf,refPressure_pa,%{private}.3lf,refPressure_unc_pa,%{private}.3lf,isReferencePressureAllowed,%{private}d,lastSignificantRelativeAlt_m,%{private}.2lf,timeOfLastOdometerData_s,%{private}.3lf,timeOfLastAltitudeData_s,%{private}.3lf,lastAltitudeDataPressure_pa,%{private}.3lf,cfAbsTime_s,%{private}.3lf", buf, 0x62u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v37 = *(a3 + 72);
    v36 = *(a3 + 80);
    v38 = *(a3 + 96);
    v39 = *(a3 + 104);
    v40 = *(a3 + 112);
    v41 = *(a3 + 168);
    v42 = *(a3 + 184);
    v43 = *(a3 + 256);
    v44 = *(a3 + 264);
    v45 = *(a3 + 64);
    v48 = 134285825;
    v49 = v45;
    v50 = 2049;
    v51 = v36;
    v52 = 2049;
    v53 = v38;
    v54 = 2049;
    v55 = v39;
    v56 = 1025;
    v57 = v40;
    v58 = 2049;
    v59 = v41;
    v60 = 2049;
    v61 = v42;
    v62 = 2049;
    v63 = v43;
    v64 = 2049;
    v65 = v44;
    v66 = 2049;
    v67 = v37;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "BaroAlt,MMKF,fillInput,machContTime_s,%{private}.3lf,refPressure_time_s,%{private}.3lf,refPressure_pa,%{private}.3lf,refPressure_unc_pa,%{private}.3lf,isReferencePressureAllowed,%{private}d,lastSignificantRelativeAlt_m,%{private}.2lf,timeOfLastOdometerData_s,%{private}.3lf,timeOfLastAltitudeData_s,%{private}.3lf,lastAltitudeDataPressure_pa,%{private}.3lf,cfAbsTime_s,%{private}.3lf", &v48, 98);
    v47 = v46;
    sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeterCore::fillInputToCalibrateBaroAlt(const CFTimeInterval &, CLBaroAltEstimatorInput &, const double &, const double &, const double &, const CFTimeInterval &, const BOOL &, const double &, const double &, const CFTimeInterval &)", "%s\n", v46);
    if (v47 != buf)
    {
      free(v47);
    }
  }
}

uint64_t sub_1001F7220(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9, double *a10, double *a11, uint64_t a12, uint64_t a13, char a14, unsigned __int8 a15)
{
  if (qword_1025D4600 != -1)
  {
    sub_10025BBF4();
  }

  v22 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a15;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "BaroAlt,queried,internal,%d", buf, 8u);
  }

  v23 = sub_10000A100(121, 2);
  if (v23)
  {
    sub_1016BCCA8(a15);
  }

  if (*a10 <= 0.0 && *a3 <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v24 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,not yet calibrated", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1016BCD94();
      return 0;
    }

    return result;
  }

  v89 = -1.0;
  v90 = 0.0;
  v87 = 0.0;
  v88 = 0;
  v85 = 0;
  v86 = -1.0;
  if (*(a2 + 112) == 1)
  {
    if (sub_1002D4484(v23, a2))
    {
      v26 = sub_1016BA2A4(a1, a2, a3, &v90, &v89, &v88);
    }

    else
    {
      v26 = 0;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v27 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "BaroAlt,calibrated,refPressure,success,%d", buf, 8u);
    }

    v23 = sub_10000A100(121, 2);
    if (v23)
    {
      sub_1016BCE70(v26);
      if (v26)
      {
        goto LABEL_25;
      }
    }

    else if (v26)
    {
LABEL_25:
      v28 = *(a2 + 264);
      *a5 = v28;
      *(a5 + 4) = 1075838976;
      if (*(a1 + 668) == 1)
      {
        *v132 = 0;
        memset(buf, 0, sizeof(buf));
        v23 = sub_1016B6D4C(a1, buf);
        if (v23)
        {
          v29 = *&buf[16] * 12.00129;
          v30 = *a5 - *&buf[8];
        }

        else
        {
          v30 = 0.0;
          v29 = -1.0;
        }

        *(a5 + 8) = v30;
        *(a5 + 12) = v29;
        v31 = v89;
      }

      else
      {
        v31 = v89;
        v32 = v89 * 12.00129;
        *(a5 + 12) = v32;
        v33 = v28 - a3[1];
        *(a5 + 8) = v33;
      }

      v34 = v90;
      v35 = v31;
      *(a5 + 44) = v34;
      *(a5 + 48) = v35;
      ++*(a6 + 16);
      ++*(a7 + 16);
      ++*(a8 + 16);
    }
  }

  v36 = sub_1002D45E8(v23, a2, a9, a10, &v87, &v86, &v85, a11);
  if (qword_1025D4600 != -1)
  {
    sub_1016BBF2C();
  }

  v37 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "BaroAlt,calibrated,dem,success,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016BCF5C(v36);
  }

  if (v36)
  {
    ++*(a6 + 12);
    ++*(a7 + 12);
    ++*(a8 + 12);
  }

  v38 = v89;
  if (a14 && v89 > 0.0)
  {
    v39 = v90;
    v40 = v88;
    v41 = a4;
    *(a4 + 36) = 1;
    v42 = v38;
  }

  else
  {
    v42 = v86;
    v41 = a4;
    if (v86 <= 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v67 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,no yield,no valid calibrated altitude is available", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1016BD048();
        return 0;
      }

      return result;
    }

    v39 = v87;
    v40 = v85;
    *(a4 + 37) = 1;
  }

  sub_100214948(a1, a2, a13);
  v45 = *(a1 + 200);
  v44 = (a1 + 200);
  v43 = v45;
  v46 = *(v44 - 1);
  if ((v45 - 1) > 0xFFFFFFFD || fabs(v46) <= 2.22044605e-16)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v63 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v64 = *(v44 - 1);
      v65 = *v44;
      *buf = 134349312;
      *&buf[4] = v64;
      *&buf[12] = 1026;
      *&buf[14] = v65;
      _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,no yield,no undulation knowledge,und,%{public}.lf,undModel%{public}d", buf, 0x12u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1016BD124();
      return 0;
    }
  }

  else
  {
    *(v41 + 8) = v39 - v46;
    *(v41 + 16) = v42;
    *(v41 + 24) = v46;
    *(v41 + 32) = v43;
    *v41 = v40;
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v47 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v48 = *(a2 + 64);
      v49 = *(a2 + 72);
      v50 = *a9;
      v51 = *a10;
      v52 = -1.0;
      if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v48) > 2.22044605e-16)
      {
        v53 = *a11;
        if ((*a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v53) > 2.22044605e-16)
        {
          v52 = vabdd_f64(v48, v53);
        }
      }

      v55 = *(a2 + 256);
      v54 = *(a2 + 264);
      v56 = *(v41 + 8);
      v57 = *(v41 + 16);
      v58 = *(v41 + 24);
      v59 = *(v41 + 32);
      v60 = *(a13 + 4);
      v61 = *(a13 + 12);
      *buf = 134353921;
      *&buf[4] = v48;
      *&buf[12] = 2050;
      *&buf[14] = v49;
      *&buf[22] = 2049;
      *&buf[24] = v50;
      *v132 = 2050;
      *&v132[2] = v51;
      v133 = 2050;
      v134 = v52;
      v135 = 2050;
      v136 = v54;
      v137 = 2050;
      v138 = v55;
      v139 = 2049;
      v140 = v56;
      v141 = 2050;
      v142 = v57;
      v143 = 2050;
      v144 = v40;
      v145 = 2049;
      v146 = v90;
      v147 = 2050;
      v148 = v38;
      v149 = 2049;
      v150 = v87;
      v151 = 2050;
      v152 = v86;
      v153 = 2049;
      v154 = v58;
      v155 = 1026;
      v156 = v59;
      v157 = 2049;
      v158 = v88;
      v159 = 2049;
      v160 = v85;
      v161 = 2053;
      v162 = v60;
      v163 = 2053;
      v164 = v61;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_INFO, "BaroAlt,calibrated,time,%{public}.3lf,cfAbsTime,%{public}.3lf,baseAlt,%{private}.3lf,unc,%{public}.3lf,timeSinceBaseAlt,%{public}.3lf,pressure,%{public}.3lf,fTimeOfLastCMAltitudeData,%{public}.3lf,calibratedAlt,%{private}.3lf,calAltUnc,%{public}.3lf,applicableTime,%{public}.3lf,calibratedAltReferencePressure,%{private}.3lf,calAltUncReferencePressure,%{public}.3lf,calibratedAltDEM,%{private}.3lf,calAltUncDEM,%{public}.3lf,undulation,%{private}.3lf,undulationModel,%{public}d,refPresAltWgs84AppMachContTime,%{private}.3lf,demCalibAltWgs84AppMachContTime,%{private}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0xC6u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v68 = *(a2 + 64);
      v69 = *(a2 + 72);
      v70 = *a9;
      v71 = *a10;
      v72 = -1.0;
      if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v68) > 2.22044605e-16)
      {
        v73 = *a11;
        if ((*a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v73) > 2.22044605e-16)
        {
          v72 = vabdd_f64(v68, v73);
        }
      }

      v75 = *(a2 + 256);
      v74 = *(a2 + 264);
      v41 = a4;
      v76 = *(a4 + 8);
      v77 = *(a4 + 16);
      v78 = *(a4 + 24);
      v79 = *(a4 + 32);
      v80 = *(a13 + 4);
      v81 = *(a13 + 12);
      v91 = 134353921;
      v92 = v68;
      v93 = 2050;
      v94 = v69;
      v95 = 2049;
      v96 = v70;
      v97 = 2050;
      v98 = v71;
      v99 = 2050;
      v100 = v72;
      v101 = 2050;
      v102 = v74;
      v103 = 2050;
      v104 = v75;
      v105 = 2049;
      v106 = v76;
      v107 = 2050;
      v108 = v77;
      v109 = 2050;
      v110 = v40;
      v111 = 2049;
      v112 = v90;
      v113 = 2050;
      v114 = v89;
      v115 = 2049;
      v116 = v87;
      v117 = 2050;
      v118 = v86;
      v119 = 2049;
      v120 = v78;
      v121 = 1026;
      v122 = v79;
      v123 = 2049;
      v124 = v88;
      v125 = 2049;
      v126 = v85;
      v127 = 2053;
      v128 = v80;
      v129 = 2053;
      v130 = v81;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,calibrated,time,%{public}.3lf,cfAbsTime,%{public}.3lf,baseAlt,%{private}.3lf,unc,%{public}.3lf,timeSinceBaseAlt,%{public}.3lf,pressure,%{public}.3lf,fTimeOfLastCMAltitudeData,%{public}.3lf,calibratedAlt,%{private}.3lf,calAltUnc,%{public}.3lf,applicableTime,%{public}.3lf,calibratedAltReferencePressure,%{private}.3lf,calAltUncReferencePressure,%{public}.3lf,calibratedAltDEM,%{private}.3lf,calAltUncDEM,%{public}.3lf,undulation,%{private}.3lf,undulationModel,%{public}d,refPresAltWgs84AppMachContTime,%{private}.3lf,demCalibAltWgs84AppMachContTime,%{private}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", &v91, 198);
      v83 = v82;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeterCore::calcCalibratedBaroAltitude(CLBaroAltEstimatorInput &, CLBaroAltEstimatorOutput &, AltitudeUpdateData &, CalibratedPressureCollectionDataBase &, BarometricAltitudeCalibrationAnalyticsData &, BarometricAltitudeCalibrationAnalyticsData &, BarometricAltitudeCalibrationAnalyticsData &, double &, double &, CFTimeInterval &, const CFTimeInterval &, const CLDaemonLocation &, const BOOL, const BOOL)", "%s\n", v82);
      if (v83 != buf)
      {
        free(v83);
      }
    }

    if (*(v41 + 16) > 0.0)
    {
      v62 = *(v41 + 8);
      if (v62 > -450.0 && v62 < 8850.0)
      {
        return 1;
      }
    }

    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v66 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_INFO, "BaroAlt,invalid calibrated altitude", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1016BD22C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F7C68(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48C0 != -1)
  {
    sub_10029D6CC();
  }

  v4 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a2 + 4);
    v22 = *(a2 + 12);
    v26 = *(a2 + 20);
    v5 = *(a2 + 96);
    v25 = sub_1001FD6E4(v5);
    v28 = *(a2 + 44);
    v29 = *(a2 + 60);
    v30 = *(a2 + 84);
    v31 = *(a2 + 88);
    v32 = *(a2 + 76);
    v7 = sub_10000B1F8(v25, v6);
    *buf = 0;
    v8 = sub_10001A6B0(v7, buf) - *(a2 + 76);
    v9 = *(a2 + 28);
    v10 = *(a2 + 36);
    v11 = *(a2 + 52);
    v12 = *(a2 + 68);
    v21 = *(a2 + 184);
    v13 = *(a2 + 476);
    v14 = *(a2 + 128);
    v23 = *(a2 + 132);
    v24 = *(a2 + 472);
    v27 = *(a2 + 136);
    v17 = sub_10000B1F8(v15, v16);
    v18 = sub_100125220(v17);
    *buf = 136321027;
    v34 = "CL-prefiltered";
    v35 = 1024;
    v36 = 0;
    v37 = 2053;
    v38 = v20;
    v39 = 2053;
    v40 = v22;
    v41 = 2048;
    v42 = v26;
    v43 = 1026;
    v44 = v5;
    v45 = 2082;
    v46 = v25;
    v47 = 2050;
    v48 = v28;
    v49 = 2050;
    v50 = v29;
    v51 = 1026;
    v52 = v30;
    v53 = 2050;
    v54 = v31;
    v55 = 2050;
    v56 = v32;
    v57 = 2050;
    v58 = v8;
    v59 = 2049;
    v60 = v9;
    v61 = 2050;
    v62 = v10;
    v63 = 2050;
    v64 = v11;
    v65 = 2050;
    v66 = v12;
    v67 = 2050;
    v68 = v21;
    v69 = 1026;
    v70 = v14;
    v71 = 2049;
    v72 = v13;
    v73 = 1026;
    v74 = v24;
    v75 = 1024;
    v76 = v23;
    v77 = 1024;
    v78 = v27;
    v79 = 2050;
    v80 = v18;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,undulation,%{private}.3lf,undulationModel,%{public}d,referenceFrame,%d,rawReferenceFrame,%d,propagation_us,%{public}.3f", buf, 0xD6u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_101AAC57C();
  }

  *buf = 33;
  return (*(*a1 + 152))(a1, buf, a2, 1, 0xFFFFFFFFLL, 0);
}

Class sub_1001F7F58(CLNanoRegistry *a1, uint64_t a2)
{
  v3 = a1;
  if ((BYTE3(a1[490].super.isa) & 1) == 0)
  {
    if (!a1[494].super.isa)
    {
      a1 = objc_alloc_init(CLNanoRegistry);
      v3[494].super.isa = a1;
    }

    v4 = sub_10001A3E8(a1, a2);
    if (sub_10001CF04(v4, v5))
    {
      v6 = [(objc_class *)v3[494].super.isa isAFire6OrOlderWatchPaired]^ 1;
    }

    else
    {
      v6 = 0;
    }

    WORD1(v3[490].super.isa) = v6 | 0x100;
    (*(v3->super.isa + 59))(v3);
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v7 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      if (BYTE3(v3[490].super.isa) == 1)
      {
        v8 = BYTE2(v3[490].super.isa);
      }

      else
      {
        v8 = 1;
      }

      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#cltr,fIsPhoneThatDoesNotNeedTrackRunProcessing,%{public}d", buf, 8u);
    }

    a1 = sub_10000A100(121, 2);
    if (a1)
    {
      sub_1019587C0();
    }
  }

  if (BYTE1(v3[498].super.isa) & 1) != 0 || BYTE1(v3[490].super.isa) == 1 && (v9 = sub_10000B1F8(a1, a2), *buf = 1, sub_10001A6B0(v9, buf) - *&v3[493].super.isa <= 86400.0) || (*(a2 + 96) - 6) < 3 || ((v10 = *(a2 + 20), v10 > 0.0) ? (v11 = v10 < 100.0) : (v11 = 0), !v11 || (v3[498].super.isa))
  {
    if (BYTE1(v3[498].super.isa) == 1)
    {
      if (qword_1025D41D0 != -1)
      {
        sub_101956170();
      }

      v12 = qword_1025D41D8;
      if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
      {
        isa = v3[491].super.isa;
        *buf = 134349056;
        *&buf[4] = isa;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#cltr,Not querying for region support due to backoff timer in effect,current,%{public}.0f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019589F0();
      }
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v15 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a2 + 4);
      v17 = *(a2 + 12);
      v18 = *(a2 + 20);
      *buf = 134546177;
      *&buf[4] = v16;
      *&buf[12] = 2053;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      v37 = v18;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#cltr,Querying for region support,ll,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%.1lf", buf, 0x20u);
    }

    v19 = sub_10000A100(121, 2);
    if (v19)
    {
      sub_1019588C8();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v37 = 0;
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100855110;
    v33 = &unk_102477220;
    v34 = buf;
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100855204;
    v27 = &unk_102477270;
    v28 = buf;
    v29 = v3;
    if (!v3[492].super.isa)
    {
      v19 = objc_alloc_init(GEOMapFeatureAccess);
      v3[492].super.isa = v19;
      if (v19)
      {
        [(objc_class *)v19 setAllowNetworkTileLoad:1, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34];
        [(objc_class *)v3[492].super.isa setAllowStaleData:1];
        v19 = [(objc_class *)v3[492].super.isa setAllowOfflineData:1];
      }
    }

    v21 = *(a2 + 4);
    v22 = *(a2 + 12);
    LOBYTE(v3[498].super.isa) = 1;
    v23 = sub_10000B1F8(v19, v20);
    v35 = 1;
    *&v3[493].super.isa = sub_10001A6B0(v23, &v35);
    sub_1001B8A14(&v3[500]);
    [(objc_class *)v3[492].super.isa findRunningTrackFlagsNear:&v30 radius:&v24 handler:v21 completionHandler:v22, *(a2 + 20) * 5.0];
    _Block_object_dispose(buf, 8);
  }

  result = v3[496].super.isa;
  if (result)
  {
    result = sub_1001F83F4(result);
    if (result)
    {
      return sub_1002D4814();
    }
  }

  return result;
}

void sub_1001F83D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1001F842C(unint64_t result, uint64_t a2, uint64_t *a3)
{
  if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
  {
    v5 = result;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v7 = *(a2 + 76);
      v9 = *(a2 + 160);
      v8 = *(a2 + 168);
      v10 = *(a2 + 176);
      v11 = *(a2 + 184);
      v12 = *(a2 + 4);
      v13 = *(a2 + 12);
      v14 = *(a2 + 20);
      v15 = *(a2 + 28);
      v16 = *(a2 + 36);
      v17 = *(a2 + 44);
      v18 = *(a2 + 52);
      v19 = *(a2 + 60);
      v20 = *(a2 + 68);
      v21 = a3;
      if (*(a3 + 23) < 0)
      {
        v21 = *a3;
      }

      v22 = 134352643;
      v23 = v7;
      v24 = 2050;
      v25 = v11;
      v26 = 2050;
      v27 = v9;
      v28 = 2050;
      v29 = v8;
      v30 = 2050;
      v31 = v10;
      v32 = 2053;
      v33 = v12;
      v34 = 2053;
      v35 = v13;
      v36 = 2050;
      v37 = v14;
      v38 = 2049;
      v39 = v15;
      v40 = 2050;
      v41 = v16;
      v42 = 2050;
      v43 = v17;
      v44 = 2050;
      v45 = v18;
      v46 = 2050;
      v47 = v19;
      v48 = 2050;
      v49 = v20;
      v50 = 2080;
      v51 = v21;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "GPSODOM,timestamp,%{public}.3lf,timestampGps,%{public}.3lf,odometer,%{public}.3lf,deltaDist,%{public}.3lf,deltaDistUnc,%{public}.3lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.1lf,alt,%{private}.3lf,vunc,%{public}.1lf,speed,%{public}.3lf,sunc,%{public}.3lf,course,%{public}.3lf,cunc,%{public}.3lf,silo,%s", &v22, 0x98u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA070();
    }

    result = *(a2 + 808);
    if (result && (result = sub_10030D934(result), result > 1) || *(a2 + 160) >= 0.0 && *(a2 + 168) >= 0.0 && *(a2 + 176) >= 0.0)
    {
      v22 = 23;
      return (*(*v5 + 152))(v5, &v22, a2, 1, 0xFFFFFFFFLL, 0);
    }
  }

  return result;
}

uint64_t sub_1001F867C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *a4;
  *a4 = 0;
  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  v12 = (a3 + 96);
  v11 = *(a3 + 96);
  if (!v11)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v25 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#Warning, LCFusion, not notifying clients when provider type is Unknown", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9F94();
    }

    return 0;
  }

  v15 = sub_1001F9450(a1, v11);
  v140 = v15;
  v18 = a1 + 240;
  v17 = *(a1 + 240);
  if (!v17)
  {
    goto LABEL_9;
  }

  v19 = a1 + 240;
  v20 = *(a1 + 240);
  do
  {
    if (*(v20 + 32) >= v15)
    {
      v19 = v20;
    }

    v20 = *(v20 + 8 * (*(v20 + 32) < v15));
  }

  while (v20);
  if (v19 == v18 || v15 < *(v19 + 32))
  {
LABEL_9:
    v19 = a1 + 240;
  }

  v22 = (a1 + 220);
  v21 = *(a1 + 220);
  if (!v17)
  {
    goto LABEL_17;
  }

  v23 = a1 + 240;
  do
  {
    if (*(v17 + 32) >= v21)
    {
      v23 = v17;
    }

    v17 = *(v17 + 8 * (*(v17 + 32) < v21));
  }

  while (v17);
  if (v23 == v18 || v21 < *(v23 + 32))
  {
LABEL_17:
    v23 = a1 + 240;
  }

  v24 = 0;
  if (v21 && v15 != v21)
  {
    if (*(v19 + 911))
    {
      v24 = 0;
      goto LABEL_40;
    }

    v135 = a1 + 232;
    v26 = *(v19 + 908);
    if (v26 <= *(v23 + 908))
    {
      v27 = sub_10000B1F8(v15, v16);
      *buf = 0;
      v28 = sub_10001A6B0(v27, buf) - *(v23 + 172);
      v29 = *(v23 + 184);
      v24 = v28 < v29;
      if (v28 < v29)
      {
        if (v140 != 1)
        {
          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v93 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = &v140;
            v94 = sub_100109DF4(v135, &v140, &unk_101C66300, buf);
            v95 = v94 + 6;
            if (*(v94 + 71) < 0)
            {
              v95 = *v95;
            }

            v96 = *(v19 + 100);
            v97 = *(v19 + 108);
            *buf = v22;
            v98 = sub_100109DF4(v135, v22, &unk_101C66300, buf);
            v100 = v98 + 6;
            if (*(v98 + 71) < 0)
            {
              v100 = *v100;
            }

            v101 = *(v19 + 172);
            v102 = sub_10000B1F8(v98, v99);
            v103 = sub_100125220(v102);
            *buf = 136447491;
            *&buf[4] = v95;
            v176 = 2053;
            *v177 = v96;
            *&v177[8] = 2053;
            *&v177[10] = v97;
            *&v177[18] = 2082;
            *&v177[20] = v100;
            *&v177[28] = 2050;
            *&v177[30] = v101;
            *&v177[38] = 2050;
            *&v177[40] = v103;
            _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_DEBUG, "LCFusion,got non-active location provider,%{public}s,lat,%{sensitive}.7f,lon,%{sensitive}.7f,ignoring,in favor of,%{public}s,mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x3Eu);
          }

          if (!sub_10000A100(121, 2))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v105 = qword_1025D4608;
          *v141 = &v140;
          v106 = sub_100109DF4(v135, &v140, &unk_101C66300, v141);
          v107 = v106 + 6;
          if (*(v106 + 71) < 0)
          {
            v107 = *v107;
          }

          v108 = *(v19 + 100);
          v109 = *(v19 + 108);
          *v141 = v22;
          v110 = sub_100109DF4(v135, v22, &unk_101C66300, v141);
          v112 = v110 + 6;
          if (*(v110 + 71) < 0)
          {
            v112 = *v112;
          }

          v113 = *(v19 + 172);
          v114 = sub_10000B1F8(v110, v111);
          v115 = sub_100125220(v114);
          *v141 = 136447491;
          *&v141[4] = v107;
          v142 = 2053;
          *v143 = v108;
          *&v143[8] = 2053;
          *&v143[10] = v109;
          *&v143[18] = 2082;
          *&v143[20] = v112;
          *&v143[28] = 2050;
          *&v143[30] = v113;
          *&v143[38] = 2050;
          *v144 = v115;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v105, 2, "LCFusion,got non-active location provider,%{public}s,lat,%{sensitive}.7f,lon,%{sensitive}.7f,ignoring,in favor of,%{public}s,mct,%{public}.3f,propagation_us,%{public}.3f", v141, 62);
          goto LABEL_100;
        }

        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v30 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(v19 + 100);
          v32 = *(v19 + 108);
          *buf = 134545921;
          *&buf[4] = v31;
          v176 = 2053;
          *v177 = v32;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "LCFusion, got non-active wifi lat,%{sensitive}.7f,lon,%{sensitive}.7f, Consuming in LCFusion ", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F9C44();
        }
      }

      LOBYTE(v26) = *(v19 + 908);
    }

    else
    {
      v24 = 0;
    }

    if (v26 > 0)
    {
      goto LABEL_40;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v76 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v77 = *(v19 + 100);
      v78 = *(v19 + 108);
      *buf = &v140;
      v79 = sub_100109DF4(v135, &v140, &unk_101C66300, buf);
      v81 = v79 + 6;
      if (*(v79 + 71) < 0)
      {
        v81 = *v81;
      }

      v82 = sub_10000B1F8(v79, v80);
      v83 = sub_100125220(v82);
      *buf = 134546435;
      *&buf[4] = v77;
      v176 = 2053;
      *v177 = v78;
      *&v177[8] = 2082;
      *&v177[10] = v81;
      *&v177[18] = 2050;
      *&v177[20] = v83;
      _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEBUG, "LCFusion Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring coarse granularity,propagation_us,%{public}.3f", buf, 0x2Au);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v84 = qword_1025D4608;
    v85 = *(v19 + 100);
    v86 = *(v19 + 108);
    *v141 = &v140;
    v87 = sub_100109DF4(v135, &v140, &unk_101C66300, v141);
    v89 = v87 + 6;
    if (*(v87 + 71) < 0)
    {
      v89 = *v89;
    }

    v90 = sub_10000B1F8(v87, v88);
    v91 = sub_100125220(v90);
    *v141 = 134546435;
    *&v141[4] = v85;
    v142 = 2053;
    *v143 = v86;
    *&v143[8] = 2082;
    *&v143[10] = v89;
    *&v143[18] = 2050;
    *&v143[20] = v91;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v84, 2, "LCFusion Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring coarse granularity,propagation_us,%{public}.3f", v141, 42);
LABEL_100:
    v116 = v92;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::updateFusionLCLocationFilter(CLDaemonLocation &, const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v92);
    if (v116 != buf)
    {
      free(v116);
    }

    return 0;
  }

LABEL_40:
  v33 = *(a1 + 280);
  if (v33 && ((*(*v33 + 480))(v33, v5), (v34 = *(a1 + 280)) != 0))
  {
    v35 = (*(*v34 + 152))(v34, a3);
  }

  else
  {
    v35 = 0;
  }

  if (*(a1 + 680) == 1 && v19 != v18 && (*(v19 + 911) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v74 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(a1 + 680);
      *buf = 67109120;
      *&buf[4] = v75;
      _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEBUG, "#Warning, LCFusion, not notifying clients when device is sleeping,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9EA8((a1 + 680));
    }

    return 0;
  }

  if ((v24 | v35 ^ 1) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v36 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v37 = *(a3 + 76);
      v38 = *(a3 + 96);
      v39 = sub_1001FD6E4(v38);
      v40 = *(a3 + 4);
      v41 = *(a3 + 12);
      v42 = *(a3 + 20);
      *buf = 134350339;
      *&buf[4] = v37;
      v176 = 1026;
      *v177 = v38;
      *&v177[4] = 2082;
      *&v177[6] = v39;
      *&v177[14] = 2053;
      *&v177[16] = v40;
      *&v177[24] = 2053;
      *&v177[26] = v41;
      *&v177[34] = 2050;
      *&v177[36] = v42;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "location rejected by LCFusion,iosTime,%{public}.3f,type,%{public}d,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9D48(a3, v12);
    }

    *a4 = 0;
  }

  else
  {
    (*(**(a1 + 280) + 168))(*(a1 + 280), a2);
    *a4 = 1;
    if (qword_1025D48C0 != -1)
    {
      sub_1018F9B20();
    }

    v43 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a2 + 4);
      v45 = *(a2 + 12);
      v123 = *(a2 + 20);
      v46 = *(a2 + 96);
      v121 = sub_1001FD6E4(v46);
      v127 = *(a2 + 44);
      v129 = *(a2 + 60);
      v131 = *(a2 + 84);
      v133 = *(a2 + 88);
      v136 = *(a2 + 76);
      v48 = sub_10000B1F8(v121, v47);
      *buf = 0;
      v49 = sub_10001A6B0(v48, buf) - *(a2 + 76);
      v50 = *(a2 + 28);
      v51 = *(a2 + 36);
      v52 = *(a2 + 52);
      v53 = *(a2 + 68);
      v117 = *(a3 + 184);
      v118 = *(a2 + 128);
      v119 = *(a2 + 132);
      v125 = *(a2 + 136);
      v56 = sub_10000B1F8(v54, v55);
      v57 = sub_100125220(v56);
      *buf = 136320515;
      *&buf[4] = "CL-filtered";
      v176 = 1024;
      *v177 = 0;
      *&v177[4] = 2053;
      *&v177[6] = v44;
      *&v177[14] = 2053;
      *&v177[16] = v45;
      *&v177[24] = 2048;
      *&v177[26] = v123;
      *&v177[34] = 1026;
      *&v177[36] = v46;
      *&v177[40] = 2082;
      *&v177[42] = v121;
      v178 = 2050;
      v179 = v127;
      v180 = 2050;
      v181 = v129;
      v182 = 1026;
      v183 = v131;
      v184 = 2050;
      v185 = v133;
      v186 = 2050;
      v187 = v136;
      v188 = 2050;
      v189 = v49;
      v190 = 2049;
      v191 = v50;
      v192 = 2050;
      v193 = v51;
      v194 = 2050;
      v195 = v52;
      v196 = 2050;
      v197 = v53;
      v198 = 2050;
      v199 = v117;
      v200 = 1026;
      v201 = v118;
      v202 = 1026;
      v203 = v119;
      v204 = 1026;
      v205 = v125;
      v206 = 2050;
      v207 = v57;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,referenceFrame,%{public}d,rawReferenceFrame,%{public}d,propagation_us,%{public}.3f", buf, 0xC6u);
    }

    if (sub_10000A100(123, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48C0 != -1)
      {
        sub_1018F9B20();
      }

      v137 = qword_1025D48C8;
      v58 = *(a2 + 4);
      v59 = *(a2 + 12);
      v60 = *(a2 + 20);
      v61 = *(a2 + 96);
      v62 = sub_1001FD6E4(v61);
      v63 = *(a2 + 44);
      v64 = *(a2 + 60);
      v65 = *(a2 + 84);
      v124 = *(a2 + 88);
      v128 = *(a2 + 76);
      v67 = sub_1000281DC(v62, v66) - v128;
      v120 = *(a2 + 28);
      v122 = *(a2 + 36);
      v126 = *(a2 + 52);
      v130 = *(a2 + 68);
      v132 = *(a3 + 184);
      v134 = *(a2 + 128);
      v139 = *(a2 + 132);
      v68 = *(a2 + 136);
      v71 = sub_10000B1F8(v69, v70);
      *v141 = 136320515;
      *&v141[4] = "CL-filtered";
      v142 = 1024;
      *v143 = 0;
      *&v143[4] = 2053;
      *&v143[6] = v58;
      *&v143[14] = 2053;
      *&v143[16] = v59;
      *&v143[24] = 2048;
      *&v143[26] = v60;
      *&v143[34] = 1026;
      *&v143[36] = v61;
      *v144 = 2082;
      *&v144[2] = v62;
      v145 = 2050;
      v146 = v63;
      v147 = 2050;
      v148 = v64;
      v149 = 1026;
      v150 = v65;
      v151 = 2050;
      v152 = v124;
      v153 = 2050;
      v154 = v128;
      v155 = 2050;
      v156 = v67;
      v157 = 2049;
      v158 = v120;
      v159 = 2050;
      v160 = v122;
      v161 = 2050;
      v162 = v126;
      v163 = 2050;
      v164 = v130;
      v165 = 2050;
      v166 = v132;
      v167 = 1026;
      v168 = v134;
      v169 = 1026;
      v170 = v139;
      v171 = 1026;
      v172 = v68;
      v173 = 2050;
      v174 = sub_100125220(v71);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v137, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,referenceFrame,%{public}d,rawReferenceFrame,%{public}d,propagation_us,%{public}.3f", v141, 198);
      v73 = v72;
      sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::updateFusionLCLocationFilter(CLDaemonLocation &, const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v72);
      if (v73 != buf)
      {
        free(v73);
      }
    }
  }

  return v35;
}

uint64_t sub_1001F9450(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    return 1;
  }

  else
  {
    return dword_101C85D08[a2];
  }
}

void sub_1001F9474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  IOHIDEventGetVendorDefinedData();
  if (qword_1025D4200 != -1)
  {
    sub_10199CB98();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Empty payload, returning", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199CBC0();
  }
}

void sub_1001F9554(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  sub_1001F96F0(v36, a2, a3);
  v6 = *(a1 + 144);
  if (!v6)
  {
    operator new();
  }

  sub_1001F9738(v36, v6);
  v7 = *(a1 + 144);
  v8 = *(v7 + 8);
  v9 = *(v7 + 56);
  v10 = *(v7 + 88);
  v33 = *(v7 + 72);
  v34 = v10;
  v35 = *(v7 + 104);
  v11 = *(v7 + 24);
  v29 = v8;
  v30 = v11;
  v31 = *(v7 + 40);
  v32 = v9;
  v12 = *(a1 + 132);
  if (!v12 || *(&v29 + 4) == v12)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v23 = 0u;
    sub_1001F9930(a1);
    if ((WORD1(v29) & 0x100) != 0)
    {
      v13 = *a4;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v14 = v23;
      v15 = v24;
      v22 = 0;
      v20 = HIDWORD(v29);
      v21 = sqrtf(((*&v32 * *&v32) + (*(&v31 + 3) * *(&v31 + 3))) + (*(&v32 + 1) * *(&v32 + 1)));
      LOBYTE(v22) = *(a1 + 28);
      sub_100061FD8(a1, 0, &v13, 120);
    }
  }
}

void *sub_1001F96F0(void *__dst, const void *__src, size_t __n)
{
  if (__n)
  {
    v3 = (*__src - 1) > 3u ? 0 : qword_101C7F0B8[(*__src - 1)];
    if (v3 == __n)
    {
      return memcpy(__dst, __src, __n);
    }
  }

  *__dst = -1;
  return __dst;
}

unsigned __int8 *sub_1001F9738(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return (*(*a2 + 32))(a2, result);
    }

    else if (v2 == 4)
    {
      return (*(*a2 + 40))(a2, result);
    }
  }

  else if (v2 == 1)
  {
    return (*(*a2 + 16))(a2, result);
  }

  else if (v2 == 2)
  {
    return (*(*a2 + 24))(a2, result);
  }

  return result;
}

__n128 sub_1001F981C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 104) = *(a2 + 24);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = result;
  return result;
}

float sub_1001F9850(float *a1)
{
  v1 = 0;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  result = (((*a1 * *a1) + (v3 * v3)) * 2.0) + -1.0;
  v6 = ((*a1 * v2) - (v3 * v4)) + ((*a1 * v2) - (v3 * v4));
  v7 = ((v3 * v2) + (*a1 * v4)) + ((v3 * v2) + (*a1 * v4));
  v11[0] = result;
  v11[1] = v6;
  v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (v11[v1] * v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (v11[v9] * v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

double sub_1001F9900(double a1, double a2)
{
  result = a1 + a2;
  v3 = 360.0;
  if (result >= 360.0)
  {
    v3 = -360.0;
    return result + v3;
  }

  if (result < 0.0)
  {
    return result + v3;
  }

  return result;
}

void sub_1001F9930(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v94 = *(v3 + 28);
  sub_10011E648(&v94, v94);
  v9 = sub_10011E6AC(v94.f32);
  v11 = v10;
  v13 = v12;
  LODWORD(v87) = *(v4 + 92);
  HIDWORD(v87) = *(v4 + 88);
  HIDWORD(v86) = *(v4 + 96);
  v14 = *(v4 + 16);
  v15 = v14 - *(v4 + 76);
  v89 = *(v4 + 20);
  v16 = *&v89 - *(v4 + 80);
  v17 = *(&v89 + 1) - *(v4 + 84);
  *&v92 = v15;
  *(&v92 + 1) = v16;
  *&v93 = v17;
  LODWORD(v91) = sub_1001F9850(v94.f32);
  v90 = COERCE_DOUBLE(__PAIR64__(v19, v18));
  v20 = 0;
  v21 = 0.0;
  do
  {
    v21 = v21 + (*(&v92 + v20) * *(&v92 + v20));
    v20 += 4;
  }

  while (v20 != 12);
  v22 = sqrtf(v21);
  v23 = (((v13 * v17) + (v11 * v16)) + (v9 * v15)) / v22;
  *&v88 = v23;
  *(&v88 + 1) = v22 * sqrtf(1.0 - (v23 * v23));
  v24 = *(v4 + 72);
  v25 = -1.0;
  v26 = -1.0;
  if (v24 != -1.0)
  {
    if (*(v6 + 272) == 1)
    {
      v27 = 180.0;
      if (*(&v88 + 1) != 0.0)
      {
        v27 = asinf(5.0 / fabsf(*(&v88 + 1))) * 57.296;
      }

      v24 = v24 + v27;
    }

    v28 = 10.0;
    if (v24 >= 10.0)
    {
      v28 = v24;
    }

    v26 = fminf(v28, 180.0);
  }

  v29 = *(v4 + 1);
  v30 = *(v4 + 68);
  if (*(v6 + 256) != -1.0)
  {
    v25 = sub_1001F9900(v30, *(v6 + 240));
  }

  if (*(v6 + 129))
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  HIDWORD(v91) = v31;
  if (*(v6 + 129))
  {
    v26 = -1.0;
  }

  v32 = *(v4 + 2);
  v33 = (v32 >> 11) & 1;
  if (*(v6 + 288) != v33)
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10199C878();
    }

    v34 = v2;
    v35 = (v6 + 288);
    v36 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *v35;
      *buf = 67109376;
      *v96 = v37;
      *&v96[4] = 1024;
      *&v96[6] = (v32 >> 11) & 1;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "Compass heading mode changed from %d to %d", buf, 0xEu);
    }

    v2 = v34;
    if (sub_10000A100(121, 2))
    {
      sub_10199CCA4((v6 + 288), (v32 >> 11) & 1);
    }

    *v35 = v33;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_10199C878();
  }

  v38 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136324354;
    v39 = *(v4 + 32);
    v97 = *(v4 + 28);
    v99 = v39;
    LODWORD(v39) = *(v4 + 40);
    v101 = *(v4 + 36);
    v103 = *&v39;
    v105 = *(&v87 + 1);
    v107 = *&v87;
    v109 = *(&v86 + 1);
    v111 = *&v91;
    v113 = *&v90;
    v115 = *(&v90 + 1);
    v117 = v14;
    v119 = *&v89;
    v121 = *(&v89 + 1);
    v123 = v9;
    v125 = v11;
    v127 = v13;
    v129 = v30;
    v131 = v25;
    v133 = v26;
    v40 = *v2;
    *v96 = "GyroCompass";
    *&v96[8] = 2048;
    v98 = 2048;
    v100 = 2048;
    v102 = 2048;
    v104 = 2048;
    v106 = 2048;
    v108 = 2048;
    v110 = 2048;
    v112 = 2048;
    v114 = 2048;
    v116 = 2048;
    v118 = 2048;
    v120 = 2048;
    v122 = 2048;
    v124 = 2048;
    v126 = 2048;
    v128 = 2048;
    v130 = 2048;
    v132 = 2048;
    v134 = 1024;
    v135 = HIDWORD(v91);
    v136 = 1024;
    v137 = (v32 >> 4) & 1;
    v138 = 1024;
    v139 = (v32 >> 3) & 1;
    v140 = 1024;
    v141 = (v32 >> 2) & 1;
    v142 = 1024;
    v143 = (v32 >> 5) & 1;
    v144 = 1024;
    v145 = (v32 >> 6) & 1;
    v146 = 1024;
    v147 = (v32 >> 8) & 1;
    v148 = 1024;
    v149 = (v32 >> 1) & 1;
    v150 = 1024;
    v151 = v32 & 1;
    v152 = 1024;
    v153 = (v32 >> 10) & 1;
    v154 = 1024;
    v155 = (v32 >> 9) & 1;
    v156 = 1024;
    v157 = (v32 >> 11) & 1;
    v158 = 1024;
    v159 = (v32 >> 12) & 1;
    v160 = 1024;
    v161 = (v32 >> 13) & 1;
    v162 = 1024;
    v163 = (v32 >> 14) & 1;
    v164 = 1024;
    v165 = v157;
    v166 = 2048;
    v167 = v40;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "Type,%s,attitude.x,%.8f,.y,%.8f,.z,%.8f,.w,%.8f,magBiasEstVar.x,%.8f,.y,%.8f,.z,%.8f,calibrated.x,%.8f,.y,%.8f,.z,%.8f,uncalibrated.x,%.8f,.y,%.8f,.z,%.8f,gravity.x,%.8f,.y,%.8f,.z,%.8f,heading,%.1f,trueheading,%.1f,accuracy,%.1f,level,%d,biasEstimation,%d,yawCorrection,%d,gravityCorrection,%d,courseCorrection,%d,visualLocalizationCorrection,%d,initalized,%d,accelSaturated,%d,gyroSaturated,%d,compassCalibration,%d,gyroCalibration,%d,course,%d,gmm,%d,north,%d,visualLocalization,%d,headingMode,%d,timestamp,%f", buf, 0x134u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42E0 != -1)
    {
      sub_10199C878();
    }

    v77 = *(v4 + 28);
    v78 = *(v4 + 32);
    v79 = *(v4 + 36);
    v80 = *(v4 + 40);
    v81 = *v2;
    *v171 = 136324354;
    *&v171[4] = "GyroCompass";
    *&v171[12] = 2048;
    *&v171[14] = v77;
    v172 = 2048;
    v173 = v78;
    *v174 = 2048;
    *&v174[2] = v79;
    *&v174[10] = 2048;
    *&v174[12] = v80;
    *&v174[20] = 2048;
    *&v174[22] = *(&v87 + 1);
    *&v174[30] = 2048;
    *&v174[32] = *&v87;
    *v175 = 2048;
    *&v175[2] = *(&v86 + 1);
    *&v175[10] = 2048;
    v176 = *&v91;
    *v177 = 2048;
    *&v177[2] = *&v90;
    v178 = 2048;
    v179 = *(&v90 + 1);
    v180 = 2048;
    v181 = v14;
    v182 = 2048;
    v183 = *&v89;
    v184 = 2048;
    v185 = *(&v89 + 1);
    v186 = 2048;
    v187 = v9;
    v188 = 2048;
    v189 = v11;
    v190 = 2048;
    v191 = v13;
    v192 = 2048;
    v193 = v30;
    v194 = 2048;
    v195 = v25;
    v196 = 2048;
    v197 = v26;
    v198 = 1024;
    v199 = HIDWORD(v91);
    v200 = 1024;
    v201 = (v32 >> 4) & 1;
    v202 = 1024;
    v203 = (v32 >> 3) & 1;
    v204 = 1024;
    v205 = (v32 >> 2) & 1;
    v206 = 1024;
    v207 = (v32 >> 5) & 1;
    v208 = 1024;
    v209 = (v32 >> 6) & 1;
    v210 = 1024;
    v211 = (v32 >> 8) & 1;
    v212 = 1024;
    v213 = (v32 >> 1) & 1;
    v214 = 1024;
    v215 = v32 & 1;
    v216 = 1024;
    v217 = (v32 >> 10) & 1;
    v218 = 1024;
    v219 = (v32 >> 9) & 1;
    v220 = 1024;
    v221 = (v32 >> 11) & 1;
    v222 = 1024;
    v223 = (v32 >> 12) & 1;
    v224 = 1024;
    v225 = (v32 >> 13) & 1;
    v226 = 1024;
    v227 = (v32 >> 14) & 1;
    v228 = 1024;
    v229 = v221;
    v230 = 2048;
    v231 = v81;
    LODWORD(v84) = 308;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "Type,%s,attitude.x,%.8f,.y,%.8f,.z,%.8f,.w,%.8f,magBiasEstVar.x,%.8f,.y,%.8f,.z,%.8f,calibrated.x,%.8f,.y,%.8f,.z,%.8f,uncalibrated.x,%.8f,.y,%.8f,.z,%.8f,gravity.x,%.8f,.y,%.8f,.z,%.8f,heading,%.1f,trueheading,%.1f,accuracy,%.1f,level,%d,biasEstimation,%d,yawCorrection,%d,gravityCorrection,%d,courseCorrection,%d,visualLocalizationCorrection,%d,initalized,%d,accelSaturated,%d,gyroSaturated,%d,compassCalibration,%d,gyroCalibration,%d,course,%d,gmm,%d,north,%d,visualLocalization,%d,headingMode,%d,timestamp,%f", v171, v84, v85, COERCE_DOUBLE(&v217), v86, v87, v88, v89, v90, v91, v92, v93, *v94.i64, *&v94.i64[1]);
    v83 = v82;
    sub_100152C7C("Generic", 1, 0, 2, "CLMotionTypeCompass CLCompass7::populateMotionType(const CMDeviceMotionReport::Compass &, const CFTimeInterval &)", "%s\n", v82);
    if (v83 != buf)
    {
      free(v83);
    }
  }

  if (*(v6 + 29) == 1)
  {
    *v171 = off_102491258;
    Current = CFAbsoluteTimeGetCurrent();
    v42 = *v2;
    *&v171[8] = Current;
    v173 = v42;
    *v174 = *(v4 + 28);
    *&v174[16] = *(v4 + 56);
    LODWORD(Current) = *(v4 + 64);
    *&v174[28] = vmul_f32(*(v4 + 44), vdup_n_s32(0x42652EE1u));
    *&v42 = *(v4 + 52) * 57.296;
    *&v174[24] = LODWORD(Current);
    *&v174[36] = LODWORD(v42);
    *v175 = v14;
    *&v175[4] = v89;
    LOBYTE(v176) = BYTE4(v91);
    *(&v176 + 1) = v30;
    *v177 = v25;
    *&v177[4] = v26;
    v43 = *(v6 + 132);
    LODWORD(v179) = 2;
    HIDWORD(v179) = v43;
    v180 = *(v4 + 2);
    v46 = sub_10015ADF4(v44, v45);
    sub_1010CF5BC(v46, v171);
    sub_10152D354(buf);
    sub_101555764(buf);
    v170 |= 1u;
    v168 = *&v171[8];
    v47 = v169;
    v48 = *v2;
    *(v169 + 124) |= 0x10u;
    *(v47 + 40) = v48;
    v49 = v169;
    v50 = *(v4 + 28);
    *(v169 + 124) |= 2u;
    *(v49 + 16) = v50;
    v51 = v169;
    v52 = *(v4 + 32);
    *(v169 + 124) |= 4u;
    *(v51 + 24) = v52;
    v53 = v169;
    v54 = *(v4 + 36);
    *(v169 + 124) |= 8u;
    *(v53 + 32) = v54;
    v55 = v169;
    v56 = *(v4 + 40);
    *(v169 + 124) |= 1u;
    *(v55 + 8) = v56;
    v57 = v169;
    LODWORD(v56) = *(v4 + 56);
    *(v169 + 124) |= 0x40000u;
    *(v57 + 100) = LODWORD(v56);
    v58 = v169;
    LODWORD(v56) = *(v4 + 60);
    *(v169 + 124) |= 0x80000u;
    *(v58 + 104) = LODWORD(v56);
    v59 = v169;
    LODWORD(v56) = *(v4 + 64);
    *(v169 + 124) |= 0x100000u;
    *(v59 + 108) = LODWORD(v56);
    v60 = v169;
    *&v56 = *(v4 + 44) * 57.296;
    *(v169 + 124) |= 0x2000u;
    *(v60 + 80) = LODWORD(v56);
    v61 = v169;
    *&v56 = *(v4 + 48) * 57.296;
    *(v169 + 124) |= 0x4000u;
    *(v61 + 84) = LODWORD(v56);
    v62 = v169;
    *&v56 = *(v4 + 52) * 57.296;
    *(v169 + 124) |= 0x8000u;
    *(v62 + 88) = LODWORD(v56);
    v63 = v169;
    *(v169 + 124) |= 0x100u;
    *(v63 + 60) = v14;
    v64 = v169;
    *(v169 + 124) |= 0x200u;
    *(v64 + 64) = LODWORD(v89);
    v65 = v169;
    *(v169 + 124) |= 0x400u;
    *(v65 + 68) = HIDWORD(v89);
    v66 = v169;
    *(v169 + 124) |= 0x80u;
    *(v66 + 56) = HIDWORD(v91);
    v67 = v169;
    *(v169 + 124) |= 0x800u;
    *(v67 + 72) = v30;
    v68 = v169;
    *(v169 + 124) |= 0x20000u;
    *(v68 + 96) = v25;
    v69 = v169;
    *(v169 + 124) |= 0x20u;
    *(v69 + 48) = v26;
    v70 = v169;
    *(v169 + 124) |= 0x1000u;
    *(v70 + 76) = 2;
    v71 = v169;
    v72 = *(v6 + 132);
    *(v169 + 124) |= 0x40u;
    *(v71 + 52) = v72;
    v73 = v169;
    v74 = *(v4 + 2);
    *(v169 + 124) |= 0x10000u;
    *(v73 + 92) = v74;
    if (qword_102637F48 != -1)
    {
      sub_10199CDBC();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  v75 = acosf(*&v88);
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *v8 = LODWORD(v91);
  *(v8 + 4) = v90;
  *(v8 + 12) = v92;
  *(v8 + 20) = LODWORD(v93);
  *(v8 + 24) = v30;
  *(v8 + 28) = v25;
  *(v8 + 32) = v26;
  *(v8 + 36) = v33;
  *(v8 + 40) = HIDWORD(v91);
  *(v8 + 48) = v22;
  *(v8 + 52) = (v75 * -57.296) + 90.0;
  *(v8 + 56) = HIDWORD(v88);
  v76 = v94.f32[2];
  *(v8 + 64) = v94.f32[3];
  *(v8 + 72) = vcvtq_f64_f32(*v94.f32);
  *(v8 + 88) = v76;
}

void sub_1001FA4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

id sub_1001FA4D8(void *a1, uint64_t a2, void *__src, size_t a4)
{
  v6 = a2;
  if (a4 >= 0x78)
  {
    v8 = 120;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0x79)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101955680();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v28 = 0x8000000101CB1415 & 0x7FFFFFFFFFFFFFFFLL;
      v29 = 2048;
      v30 = 120;
      v31 = 2048;
      v32 = a4;
      v33 = 1024;
      v34 = v6;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101955694();
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001FA86C;
  v15[3] = &unk_102476DB0;
  v15[4] = v12;
  v15[5] = v11;
  v20 = __dst[4];
  v21 = __dst[5];
  v22 = __dst[6];
  v16 = __dst[0];
  v17 = __dst[1];
  v18 = __dst[2];
  v19 = __dst[3];
  v23 = v26;
  v24 = v10;
  return [v13 async:v15];
}

__n128 sub_1001FA6CC(__int128 *a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v2 = *(a2 + 328);
    if (v2 == 6)
    {
      *(a2 + 264) = *(a1 + 10);
      v3 = *(a1 + 12);
      *(a2 + 92) = v3;
      v4 = *(a1 + 26);
      if (v4 > -1.0)
      {
        *(a2 + 401) = v3;
        if (v3 - 4 >= 2)
        {
          if (v3 == 2)
          {
            ++*(a2 + 412);
            *(a2 + 420) = v4 + *(a2 + 420);
            *(a2 + 428) = v4;
            *(a2 + 436) = v4;
          }
        }

        else
        {
          ++*(a2 + 416);
          *(a2 + 424) = v4 + *(a2 + 424);
          *(a2 + 432) = v4;
          *(a2 + 440) = v4;
        }

        *(a2 + 400) = v3;
      }
    }

    else
    {
      v4 = *(a1 + 26);
    }

    if (v4 <= -1.0)
    {
      v5 = *(a1 + 12);
    }

    else
    {
      ++*(a2 + 452);
      v5 = *(a1 + 12);
      if (v5)
      {
        if (*(a1 + 12) == 2)
        {
          ++*(a2 + 444);
        }
      }

      else
      {
        ++*(a2 + 448);
      }
    }

    *(a2 + 272) |= *(a1 + 112);
    if (*(a2 + 92) < v5)
    {
      *(a2 + 92) = v5;
    }

    if (v5 <= 0)
    {
      v6 = *(a2 + 88);
      if (v2 > 0 || !v6)
      {
        *(a2 + 88) = v6 + 1;
      }
    }

    v7 = llround((*(a1 + 27) * 180.0) / 3.14159265);
    if (*(a2 + 188) > v7)
    {
      v7 = *(a2 + 188);
    }

    *(a2 + 188) = v7;
    *(a2 + 268) = *(a1 + 10);
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = a1[3];
  *(a2 + 312) = a1[2];
  *(a2 + 328) = v10;
  *(a2 + 280) = v8;
  *(a2 + 296) = v9;
  result = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  *(a2 + 392) = *(a1 + 14);
  *(a2 + 360) = v12;
  *(a2 + 376) = v13;
  *(a2 + 344) = result;
  return result;
}

uint64_t sub_1001FA86C(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[21];

    return v3(a1 + 6, v4);
  }

  return result;
}

uint64_t sub_1001FA8C8(uint64_t a1, uint64_t a2)
{
  v4 = vcvtq_f64_f32(*(a2 + 28));
  *bytes = vcvtq_f64_f32(*(a2 + 20));
  v21 = v4;
  v18 = v4;
  v22 = vcvtq_f64_f32(*(a2 + 36));
  v23 = COERCE_UNSIGNED_INT64(CFAbsoluteTimeGetCurrent());
  v24 = vcvtq_f64_f32(*(a2 + 56));
  v25 = vrev64_s32(*(a2 + 44));
  sub_10004FD18();
  v5 = *(a1 + 96);
  if (v5 < 0.0 || *(a1 + 64) <= 0.0 || sub_1001FAD44(v18.f64[1], v5) >= *(a1 + 64))
  {
    v13 = CFDataCreate(kCFAllocatorDefault, bytes, 88);
    if (v13)
    {
      if (sub_1000433CC(v19, "kCLConnectionMessageHeadingDataKey", v13))
      {
        *buf = sub_10007005C(v19);
        sub_10023D8DC(a1, buf);
      }

      CFRelease(v13);
    }

    v14 = v23;
    *(a1 + 104) = v22;
    *(a1 + 120) = v14;
    *(a1 + 136) = v24;
    *(a1 + 152) = v25;
    v15 = v21;
    *(a1 + 72) = *bytes;
    *(a1 + 88) = v15;
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      sub_101AECA48();
    }

    v6 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 96);
      *buf = 134218496;
      *&buf[4] = v18.f64[1];
      v33 = 2048;
      v34 = v7;
      v35 = 2048;
      v36 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "new heading %.2f is within heading filter of %.2f from previous heading %.2f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AECA70(buf);
      v9 = *(a1 + 64);
      v10 = *(a1 + 96);
      v26 = 134218496;
      v27 = v18.f64[1];
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = v10;
      LODWORD(v17) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "new heading %.2f is within heading filter of %.2f from previous heading %.2f", COERCE_DOUBLE(&v26), v17, v18.f64[0]);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "void CLHeadingSubscription::onCompass(const CLCompass_Type::Sample *)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return sub_100005DA4();
}

uint64_t sub_1001FACD8(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 8) "silo")];

  return sub_1001FA8C8(a2, a1);
}

double sub_1001FAD44(double a1, double a2)
{
  v2 = vabdd_f64(a1, a2);
  if (v2 > 180.0)
  {
    if (a1 >= 180.0)
    {
      a1 = 360.0 - a1;
    }

    if (a2 >= 180.0)
    {
      a2 = 360.0 - a2;
    }

    return a1 + a2;
  }

  return v2;
}

void sub_1001FAD8C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v3 + 24);
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = v5;
    v11 = 1026;
    v12 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#provisional force intermediation response(#cblsPowerSaver), Client:%{public, location:escape_only}@, shouldContinue:%{public}hhd}", v6, 0x22u);
  }
}

void sub_1001FAE80(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 2) == 1)
  {
    if (*(a1 + 8))
    {
      v4 = sub_100027FB4(a2);
      if (v4)
      {
        v6 = sub_10000B1F8(v4, v5);
        sub_10000AED4(v6, buf);
        if (*(a1 + 96) == 1 && (v7 = *&v54[2], v8 = *&v54[2] - *(a1 + 176), v8 <= 300.0))
        {
          if ((*&v54[2] - *(a1 + 72) >= 1.0 || *&v54[2] - *(a1 + 80) >= 1.0) && v8 >= 60.0 && *&v54[2] - *(a1 + 88) >= 1.0)
          {
            if (qword_1025D4600 != -1)
            {
              sub_10193CF9C();
            }

            v17 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#HST, Updating with Cell location", buf, 2u);
            }

            v18 = sub_10000A100(121, 2);
            if (v18)
            {
              sub_10193D1CC();
            }

            sub_100226CA0(v18, a2, a1 + 100);
            v20 = v19;
            v22 = v21;
            sub_100226DAC(a1, v23, v19, v21);
            *(a1 + 88) = v7;
            sub_100226E7C(a1);
            if (*(a2 + 20) < *(a1 + 120) / (*(a2 + 76) - *(a1 + 176)))
            {
              v24 = *a2;
              *(a1 + 116) = a2[1];
              *(a1 + 100) = v24;
              v25 = a2[2];
              v26 = a2[3];
              v27 = a2[4];
              *(a1 + 180) = a2[5];
              *(a1 + 164) = v27;
              *(a1 + 148) = v26;
              *(a1 + 132) = v25;
              v28 = a2[6];
              v29 = a2[7];
              v30 = a2[8];
              *(a1 + 240) = *(a2 + 140);
              *(a1 + 228) = v30;
              *(a1 + 212) = v29;
              *(a1 + 196) = v28;
            }

            if (qword_1025D4600 != -1)
            {
              sub_10193CF9C();
            }

            v31 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v32 = *(a1 + 3);
              v33 = *(a1 + 256);
              v34 = *(a1 + 258);
              *buf = 134219008;
              v52 = v20;
              v53 = 2048;
              *v54 = v22;
              *&v54[8] = 1024;
              v55 = v32;
              v56 = 1024;
              v57 = v33;
              v58 = 1024;
              v59 = v34;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "#HST,speed,%f,speedSigma,%f,source,Cell,isHighSpeedTransit,%d,isAboveAutomobileSpeed,%d,isSmoothTrajectory,%d", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_10193CF9C();
              }

              v35 = *(a1 + 3);
              v36 = *(a1 + 256);
              v37 = *(a1 + 258);
              v41 = 134219008;
              v42 = v20;
              v43 = 2048;
              v44 = v22;
              v45 = 1024;
              v46 = v35;
              v47 = 1024;
              v48 = v36;
              v49 = 1024;
              v50 = v37;
              LODWORD(v40) = 40;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#HST,speed,%f,speedSigma,%f,source,Cell,isHighSpeedTransit,%d,isAboveAutomobileSpeed,%d,isSmoothTrajectory,%d", COERCE_DOUBLE(&v41), v40);
              v39 = v38;
              sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerHighSpeedTransitDetector::updateWithCellLocation(const CLLocationProvider_Type::NotificationData &)", "%s\n", v38);
              if (v39 != buf)
              {
                free(v39);
              }
            }
          }
        }

        else
        {
          v9 = *a2;
          *(a1 + 116) = a2[1];
          *(a1 + 100) = v9;
          v10 = a2[2];
          v11 = a2[3];
          v12 = a2[4];
          *(a1 + 180) = a2[5];
          *(a1 + 164) = v12;
          *(a1 + 148) = v11;
          *(a1 + 132) = v10;
          v13 = a2[6];
          v14 = a2[7];
          v15 = a2[8];
          *(a1 + 240) = *(a2 + 140);
          *(a1 + 228) = v15;
          *(a1 + 212) = v14;
          *(a1 + 196) = v13;
          *(a1 + 96) = 1;
        }
      }
    }
  }
}

void sub_1001FB254(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (*a2 == 5 || *a2 == 22 && sub_10030D934(*(a3 + 808)))
  {
    v5 = *(a3 + 112);
    v52 = *(a3 + 96);
    v53 = v5;
    v54[0] = *(a3 + 128);
    *(v54 + 12) = *(a3 + 140);
    v6 = *(a3 + 48);
    v48 = *(a3 + 32);
    v49 = v6;
    v7 = *(a3 + 80);
    v50 = *(a3 + 64);
    v51 = v7;
    v8 = *(a3 + 16);
    *buf = *a3;
    *&buf[16] = v8;
    v9 = sub_1001FB69C(buf, *(a3 + 936));
    if (v9)
    {
      v10 = v9;
      v11 = (a3 + 44);
      if (v9 == 2)
      {
        v11 = (a3 + 936);
      }

      v12 = *v11;
      v13 = (a3 + 952);
      if (v9 != 2)
      {
        v13 = (a3 + 52);
      }

      v14 = *v13;
      v15 = (a3 + 944);
      if (v9 != 2)
      {
        v15 = (a3 + 76);
      }

      v16 = *v15;
      v17 = CFAbsoluteTimeGetCurrent() - v16;
      if (v14 <= 0.0)
      {
        v14 = 1.5;
      }

      if (qword_1025D4250 != -1)
      {
        sub_100325134();
      }

      v18 = v12;
      v19 = fabsf(v17);
      v20 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v21 = "Location derived speed";
        v22 = *(a3 + 76);
        *buf = 136316418;
        if (v10 == 1)
        {
          v21 = "GPS speed";
        }

        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        *&buf[22] = 2048;
        *&buf[24] = v18;
        LOWORD(v48) = 2048;
        *(&v48 + 2) = v14;
        WORD5(v48) = 1024;
        HIDWORD(v48) = v10;
        LOWORD(v49) = 2048;
        *(&v49 + 2) = v19;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "%s accepted, timestamp, %f, speed, %f, speedUnc, %f, speedSource, %d, ageOfEstimation, %f", buf, 0x3Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4250 != -1)
        {
          sub_100325134();
        }

        v32 = "Location derived speed";
        v33 = *(a3 + 76);
        if (v10 == 1)
        {
          v32 = "GPS speed";
        }

        v37 = 136316418;
        v38 = v32;
        *v39 = 2048;
        *&v39[2] = v33;
        *&v39[10] = 2048;
        v40 = v18;
        v41 = 2048;
        v42 = v14;
        v43 = 1024;
        v44 = v10;
        v45 = 2048;
        v46 = v19;
        LODWORD(v36) = 58;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4258, 0, "%s accepted, timestamp, %f, speed, %f, speedUnc, %f, speedSource, %d, ageOfEstimation, %f", &v37, v36);
        v35 = v34;
        sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::sendGpsSpeed(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v34);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      v23 = *(a3 + 116);
      if (v23 >= 0.0)
      {
        v23 = sub_1001F9900(v23, -*(result + 864));
      }

      v24 = v23;
      buf[0] = 5;
      buf[1] = v10;
      v25 = 128.0;
      if (v18 <= 128.0)
      {
        v26 = v18;
      }

      else
      {
        v26 = 128.0;
      }

      if (v26 < -128.0)
      {
        v26 = -128.0;
      }

      v27 = vcvts_n_s32_f32(v26, 0x18uLL);
      *&buf[2] = 0;
      if (v14 <= 128.0)
      {
        v25 = v14;
      }

      v28 = vcvts_n_s32_f32(v25, 0x18uLL);
      *&buf[4] = v27;
      *&buf[8] = v28;
      v29 = *(a3 + 68);
      *&buf[12] = v24;
      *&buf[16] = v29;
      *&buf[20] = v19;
      sub_10025C1A0(result + 192, buf, 0);
      HIDWORD(v36) = 0;
      if (sub_10025C2F8(result, v10 | (LODWORD(v16) << 32), LODWORD(v18) | (LODWORD(v14) << 32), &v36 + 1))
      {
        v30 = *(&v36 + 1);
        if (*(&v36 + 1) > 128.0)
        {
          v30 = 128.0;
        }

        if (v30 < -128.0)
        {
          v30 = -128.0;
        }

        v37 = 1029;
        v38 = __PAIR64__(v28, vcvts_n_s32_f32(v30, 0x18uLL));
        v31 = *(a3 + 68);
        *v39 = v24;
        *&v39[4] = v31;
        *&v39[8] = v19;
        sub_10025C1A0(result + 192, &v37, 0);
      }
    }
  }
}

void sub_1001FB680(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == 22 || *a2 == 5)
  {
    sub_1001FB254(a4, a2, a3);
  }
}

uint64_t sub_1001FB69C(uint64_t a1, double a2)
{
  v2 = *(a1 + 96);
  if (v2 == 1 && *(a1 + 44) >= 0.0)
  {
    return 1;
  }

  if (a2 >= 0.0 && v2 == 4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FB6D0(unsigned int *a1, uint64_t a2)
{
  sub_1001FB7B4(*a1, a2);
  v5 = *(a2 + 76);
  v6 = *(*a1 + 4);
  if (v6 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v6 == 1);
  }

  v8 = a1[2];
  if (v8 != v7)
  {
    sub_1004E21FC(v4, v8, v7);
  }

  a1[2] = v7;
  return v5;
}

void *sub_1001FB750(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_1001FB7B4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 44);
  v3 = *(a2 + 44);
  if (v3 >= 0.0)
  {
    v4 = *(a2 + 52);
    if (v4 <= 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018A2910();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v2;
        v10 = 134217984;
        v11 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Latest speed is %lf but no information about speed uncertainty", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A2968(v2);
      }
    }

    else
    {
      v6 = *(a2 + 76);
      sub_10029627C(a1, v3 - v4, v6);
      if (sub_100292D00(a1) >= 4.16666667 && *a1 == 1)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          *(a1 + 8) = 1;
        }

        *(a1 + 16) = v6;
        *(a1 + 4) = 1;
      }
    }
  }
}

float *sub_1001FB900(float *result, float a2, float a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

double sub_1001FB908(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 40) = xmmword_101C75BF0;
  *(a1 + 56) = xmmword_101C75BF0;
  *(a1 + 72) = _Q0;
  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0xBFF0000000000000;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 124) = 0;
  *(a1 + 120) = 0;
  return result;
}

void sub_1001FB9B8(uint64_t a1, uint64_t *a2, double **a3)
{
  v3 = a2;
  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = *a2;
    while (1)
    {
      v7 = v6;
      v8 = v6[1];
      if (v8)
      {
        if (*(v8 + 16) <= (*a3)[2])
        {
          break;
        }
      }

      v6 = *v7;
      v5 = v7;
      if (!*v7)
      {
        v9 = 1;
        do
        {
          v4 = *v4;
          ++v9;
        }

        while (v4);
        do
        {
          v3 = *v3;
          --v9;
        }

        while (v9 > 1);
        operator new();
      }
    }

    if (v5 && v5[1])
    {
      operator new();
    }
  }

  sub_1001FB944(a2, a3);
}

uint64_t *sub_1001FBADC(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

BOOL sub_1001FBBCC(uint64_t a1, double *a2)
{
  v4 = *(a1 + 2168);
  v5 = *(v4 + 560);
  v6 = *(v4 + 568);
  v73 = v5;
  v74 = v6;
  v7 = sub_10000B1F8(a1, a2);
  *buf = 1;
  v8 = sub_10001A6B0(v7, buf);
  v9 = sub_1001253BC(a1 + 2424, v8, 6.0);
  if (v9 && v73 > 0.0 && (v74 - 1) <= 1)
  {
    v11 = sub_10000B1F8(v9, v10);
    *buf = 1;
    v73 = sub_10001A6B0(v11, buf);
    if (v74 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 2448);
      *buf = 134349568;
      v82 = v73;
      v83 = 1026;
      v84 = v12;
      v85 = 1026;
      v86 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,InertialOdometry derived zupt update,IO_dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v61 = *(a1 + 2448);
      v75 = 134349568;
      v76 = v73;
      v77 = 1026;
      v78 = v12;
      v79 = 1026;
      v80 = v61;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,InertialOdometry derived zupt update,IO_dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d", &v75, 24);
      v63 = v62;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v62);
      if (v63 != buf)
      {
        free(v63);
      }
    }

    sub_100125538(a1 + 2424, v12, v73);
    v15 = *(a1 + 224);
    if (v15 != (a1 + 232))
    {
      do
      {
        *(v15 + 148) = v12;
        if (!sub_1000AE380((v15 + 29), &v73, 1.5))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v16 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(v15 + 220);
            *buf = 134349312;
            v82 = v73;
            v83 = 1026;
            v84 = v17;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,provider hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v21 = *(v15 + 220);
            v75 = 134349312;
            v76 = v73;
            v77 = 1026;
            v78 = v21;
            LODWORD(v71) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,provider hypothesis zupt failed,hID,%{public}d", &v75, v71);
            v23 = v22;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v22);
            if (v23 != buf)
            {
              free(v23);
            }
          }
        }

        v18 = v15[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v15[2];
            v20 = *v19 == v15;
            v15 = v19;
          }

          while (!v20);
        }

        v15 = v19;
      }

      while (v19 != (a1 + 232));
    }

    for (i = *(a1 + 248); i; i = *i)
    {
      *(i + 140) = v12;
      if (!sub_1000AE380((i + 25), &v73, 1.5))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v53 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v54 = *(i + 212);
          *buf = 134349312;
          v82 = v73;
          v83 = 1026;
          v84 = v54;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v55 = *(i + 212);
          v75 = 134349312;
          v76 = v73;
          v77 = 1026;
          v78 = v55;
          LODWORD(v71) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,fused hypothesis zupt failed,hID,%{public}d", &v75, v71);
          v57 = v56;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v56);
          if (v57 != buf)
          {
            free(v57);
          }
        }
      }
    }

    if (*(a1 + 1104))
    {
      *(a1 + 808) = v12;
      if (!sub_1000AE380(a1 + 448, &v73, 1.5))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v58 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v59 = *(a1 + 1096);
          *buf = 134349312;
          v82 = v73;
          v83 = 1026;
          v84 = v59;
          _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,latest selected fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v68 = *(a1 + 1096);
          v75 = 134349312;
          v76 = v73;
          v77 = 1026;
          v78 = v68;
          LODWORD(v71) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,io_mct,%{public}.3f,latest selected fused hypothesis zupt failed,hID,%{public}d", &v75, v71);
          v70 = v69;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v69);
          if (v70 != buf)
          {
            free(v70);
          }
        }
      }
    }

    v25 = 0;
  }

  else
  {
    v24 = *(a1 + 224);
    if (v24 == (a1 + 232))
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      do
      {
        if ((sub_10002980C((v24 + 29), a2) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v26 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v27 = *a2;
            v28 = *(a1 + 2448);
            v29 = *(v24 + 220);
            *buf = 134349568;
            v82 = v27;
            v83 = 1026;
            v84 = v28;
            v85 = 1026;
            v86 = v29;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,provider hypothesis prediction failed,%{public}d,hID,%{public}d", buf, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v32 = *a2;
            v33 = *(a1 + 2448);
            v34 = *(v24 + 220);
            v75 = 134349568;
            v76 = v32;
            v77 = 1026;
            v78 = v33;
            v79 = 1026;
            v80 = v34;
            LODWORD(v71) = 24;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,provider hypothesis prediction failed,%{public}d,hID,%{public}d", &v75, v71);
            v36 = v35;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v35);
            if (v36 != buf)
            {
              free(v36);
            }
          }

          v25 = 1;
        }

        v30 = v24[1];
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
            v31 = v24[2];
            v20 = *v31 == v24;
            v24 = v31;
          }

          while (!v20);
        }

        v24 = v31;
      }

      while (v31 != (a1 + 232));
    }

    for (j = *(a1 + 248); j; j = *j)
    {
      if ((sub_10002980C((j + 25), a2) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v38 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v39 = *a2;
          v40 = *(a1 + 2448);
          v41 = *(j + 212);
          *buf = 134349568;
          v82 = v39;
          v83 = 1026;
          v84 = v40;
          v85 = 1026;
          v86 = v41;
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,fused hypothesis prediction failed,%{public}d,hID,%{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v42 = *a2;
          v43 = *(a1 + 2448);
          v44 = *(j + 212);
          v75 = 134349568;
          v76 = v42;
          v77 = 1026;
          v78 = v43;
          v79 = 1026;
          v80 = v44;
          LODWORD(v71) = 24;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,fused hypothesis prediction failed,%{public}d,hID,%{public}d", &v75, v71);
          v46 = v45;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v45);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        v25 = 1;
      }
    }

    if (*(a1 + 1104))
    {
      v47 = *(a1 + 816);
      v48 = *a2 <= v47 ? v47 + 0.001 : *a2;
      v72 = v48;
      if ((sub_10002980C(a1 + 448, &v72) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v49 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v50 = *(a1 + 2448);
          v51 = *(a1 + 1096);
          *buf = 134349568;
          v82 = v72;
          v83 = 1026;
          v84 = v50;
          v85 = 1026;
          v86 = v51;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,latest selected fused hypothesis prediction failed,%{public}d,hID,%{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v64 = *(a1 + 2448);
          v65 = *(a1 + 1096);
          v75 = 134349568;
          v76 = v72;
          v77 = 1026;
          v78 = v64;
          v79 = 1026;
          v80 = v65;
          LODWORD(v71) = 24;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,latest selected fused hypothesis prediction failed,%{public}d,hID,%{public}d", &v75, v71);
          v67 = v66;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v66);
          if (v67 != buf)
          {
            free(v67);
          }
        }

        v25 = 1;
      }
    }
  }

  return (v25 & 1) == 0;
}

void sub_1001FC738(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001FC760(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) > 19 || *a1 > 4)
  {
    v3 = 0;
  }

  else if (*(a1 + 8) <= *(a1 + 44))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 24) < 0.0 || (v4 = sub_10000B1F8(a1, a2), v6 = 1, vabdd_f64(sub_10001A6B0(v4, &v6), *(a1 + 24)) > 5.0))
  {
    v3 = 0;
  }

  if (!off_1025D53B8)
  {
    operator new();
  }

  v5 = off_1025D53B8 + 1;
  if (*(off_1025D53B8 + 1))
  {
    if ((v3 & 1) == *off_1025D53B8)
    {
      return;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return;
  }

  *(a1 + 32) = sub_1000081AC();
  *v5 = v3 & 1;
}

uint64_t sub_1001FC89C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 3568) = a2[1];
  *(a1 + 3552) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 3632) = a2[5];
  *(a1 + 3616) = v7;
  *(a1 + 3600) = v6;
  *(a1 + 3584) = v5;
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  *(a1 + 3692) = *(a2 + 140);
  *(a1 + 3680) = v10;
  *(a1 + 3664) = v9;
  *(a1 + 3648) = v8;
  v11 = *(a1 + 4336);
  if (v11)
  {
    sub_1001FC760(v11, a2);
  }

  v33 = 0;
  if ((sub_1001DA234(a1 + 456, a2, &v33) & 1) == 0)
  {
    if ((v33 & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_101956098();
      }

      v19 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 3336);
        v21 = *(a2 + 24);
        v22 = *(a2 + 4);
        v23 = *(a2 + 12);
        v24 = *(a2 + 20);
        *buf = 67241217;
        v35 = v20;
        v36 = 1026;
        v37 = v21;
        v38 = 2053;
        v39 = v22;
        v40 = 2053;
        v41 = v23;
        v42 = 2050;
        v43 = v24;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#fusion,failed on locationUpdate,LCFusionExeState,%{public}d,type,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101956AF8();
      }

      v25 = a2[1];
      *(a1 + 3708) = *a2;
      *(a1 + 3724) = v25;
      v26 = a2[2];
      v27 = a2[3];
      v28 = a2[5];
      *(a1 + 3772) = a2[4];
      *(a1 + 3788) = v28;
      *(a1 + 3740) = v26;
      *(a1 + 3756) = v27;
      v29 = a2[6];
      v30 = a2[7];
      v31 = a2[8];
      *(a1 + 3848) = *(a2 + 140);
      *(a1 + 3820) = v30;
      *(a1 + 3836) = v31;
      *(a1 + 3804) = v29;
      return 1;
    }

    goto LABEL_8;
  }

  if (v33)
  {
LABEL_8:
    if (qword_1025D4770 != -1)
    {
      sub_101956098();
    }

    v12 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 2000);
      v14 = *(a2 + 24);
      v15 = *(a2 + 4);
      v16 = *(a2 + 12);
      v17 = *(a2 + 20);
      *buf = 67241217;
      v35 = v13;
      v36 = 1026;
      v37 = v14;
      v38 = 2053;
      v39 = v15;
      v40 = 2053;
      v41 = v16;
      v42 = 2050;
      v43 = v17;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#fusion,rejected location,reason,%{public}d,type,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f", buf, 0x2Cu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101956CD0();
    return 0;
  }

  if (sub_100212F7C(a1 + 456, a1 + 3708))
  {
    *(a1 + 3784) = *(a2 + 76);
    *(a1 + 3864) = *(a2 + 63);
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101956098();
  }

  v32 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "#Error,LC fusion fused the location but failed to get/yield the location", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101956BEC();
    return 0;
  }

  return result;
}

BOOL sub_1001FCBD4(uint64_t a1, uint64_t a2)
{
  result = sub_100072814(a1);
  if (result)
  {
    result = sub_100072814(a2);
    if (result)
    {
      v5 = *(a1 + 88);
      v6 = *(a2 + 88);
      v7 = *(a1 + 76);
      if (v5 >= 0.0 || v6 >= 0.0)
      {
        v7 = v5 + v7;
        v8 = v6 + *(a2 + 76);
      }

      else
      {
        v8 = *(a2 + 76);
      }

      v9 = v7 - v8;
      if (vabdd_f64(*(a1 + 4), *(a2 + 4)) < 2.22044605e-16 && vabdd_f64(*(a1 + 12), *(a2 + 12)) < 2.22044605e-16 && vabdd_f64(*(a1 + 20), *(a2 + 20)) < 2.22044605e-16 && vabdd_f64(*(a1 + 28), *(a2 + 28)) < 2.22044605e-16 && vabdd_f64(*(a1 + 36), *(a2 + 36)) < 2.22044605e-16 && vabdd_f64(*(a1 + 44), *(a2 + 44)) < 2.22044605e-16 && vabdd_f64(*(a1 + 60), *(a2 + 60)) < 2.22044605e-16 && vabdd_f64(*(a1 + 52), *(a2 + 52)) < 2.22044605e-16 && vabdd_f64(*(a1 + 68), *(a2 + 68)) < 2.22044605e-16 && *(a1 + 96) == *(a2 + 96) && *(a1 + 124) == *(a2 + 124) && *(a1 + 84) == *(a2 + 84))
      {
        result = 0;
        if (*(a1 + 128) == *(a2 + 128) && fabs(v9) < 2.22044605e-16)
        {
          v10 = *(a2 + 132);
          v11 = *(a1 + 132);
          return v11 == v10 || v11 == 0 || v10 == 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1001FCE40(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) >= 0.0)
  {
    v4 = CLMotionActivity::activityTypeToString();
    sub_10000EC00(v25, v4);
    v5 = CLMotionActivity::activityConfidenceToString();
    sub_10000EC00(v23, v5);
    std::to_string(&v22, *(a1 + 32));
    if ((v26 & 0x80u) == 0)
    {
      v6 = v26;
    }

    else
    {
      v6 = v25[1];
    }

    v7 = &v19;
    sub_100070148(&v19, v6 + 1);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v19.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if ((v26 & 0x80u) == 0)
      {
        v8 = v25;
      }

      else
      {
        v8 = v25[0];
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 44;
    if ((v24 & 0x80u) == 0)
    {
      v9 = v23;
    }

    else
    {
      v9 = v23[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v10 = v24;
    }

    else
    {
      v10 = v23[1];
    }

    v11 = std::string::append(&v19, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, ",", 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v22;
    }

    else
    {
      v15 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v21, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    a2[2] = *(&v17->__r_.__value_.__l + 2);
    *a2 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  else
  {
    sub_10000EC00(a2, "NotSet");
  }
}

uint64_t *sub_1001FD038(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000432E8("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

BOOL sub_1001FD090(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5, double a6)
{
  v12 = *(a3 + 609);
  if ((v12 - 2) < 2)
  {
    if (*(a3 + 610) != 1 || *(a3 + 56) != 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    v14 = (*(a3 + 88) - 8) < 0xFFFFFFFE;
    goto LABEL_11;
  }

  if (v12 == 1 && *(a3 + 56) == 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = 0;
LABEL_11:
  *a4 = v14;
  v15 = *(a2 + 52);
  v17 = v15 > 0.0 && v15 < 1.0 && *(a2 + 44) < 4.46;
  if (*(a3 + 576) == 2)
  {
    v18 = *(a3 + 592);
    v19 = v18 <= 1.0;
    if (v18 < 0.8)
    {
      v19 = 0;
    }

    v20 = (*(a3 + 592) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v19;
  }

  else
  {
    v20 = 0;
  }

  *a5 = v20;
  v21 = sub_10002154C(a1);
  v22 = v21;
  v23 = 0;
  if (v17 && (*(a2 + 152) & 1) == 0 && (*(a3 + 512) & 1) == 0)
  {
    v23 = *a4;
    if (!*a4)
    {
      if (v21)
      {
        v23 = *(a1 + 3577) == 1 && *a5;
      }
    }
  }

  v24 = v23;
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v25 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v26 = *a4;
    v27 = *a5;
    v28 = *(a3 + 56);
    v29 = *(a3 + 88);
    v30 = *(a3 + 92);
    v31 = *(a2 + 52);
    v32 = *(a2 + 44);
    v33 = *(a3 + 576);
    v34 = *(a3 + 592);
    v35 = *(a1 + 3577);
    v36 = *(a2 + 76);
    v37 = *(a2 + 4);
    v38 = *(a2 + 12);
    v39 = *(a2 + 60);
    v40 = *(a2 + 152);
    v41 = *(a3 + 512);
    *buf = 67244801;
    v100 = v24;
    v101 = 1026;
    v102 = v26;
    v103 = 1026;
    v104 = v27;
    v105 = 1026;
    v106 = v28;
    v107 = 1026;
    v108 = v29;
    v109 = 1026;
    v110 = v30;
    v111 = 2050;
    v112 = v31;
    v113 = 2050;
    v114 = v32;
    v115 = 1026;
    v116 = v22;
    v117 = 1026;
    v118 = v33;
    v119 = 2050;
    v120 = v34;
    v121 = 1026;
    v122 = v35;
    v123 = 1026;
    v124 = v17;
    v125 = 2050;
    v126 = v36;
    v127 = 2053;
    v128 = v37;
    v129 = 2053;
    v130 = v38;
    v131 = 2050;
    v132 = v39;
    v133 = 1026;
    v134 = v40;
    v135 = 1026;
    v136 = v41;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "BaroAlt,appropriatecheck,pass,%{public}d,mapMatched,%{public}d,CNOutdoor,%{public}d,matchQuality,%{public}d,matchFormOfWay,%{public}d,matchRoadClass,%{public}d,speedAccuracy,%{public}.3lf,speed,%{public}.3lf,CnOutdoorCalTriggerEnabled,%{public}d,CNPosContextState,%{public}d,CNPosContextProb,%{public}.3lf,isNotInAVisit,%{public}d,isSpeedSlow,%{public}d,cfAbsTime,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,fromSimulationController,%{public}d,isSimulatedOrSpoofed,%{public}d", buf, 0x90u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v44 = *a4;
    v45 = *a5;
    v46 = *(a3 + 56);
    v47 = *(a3 + 88);
    v48 = *(a3 + 92);
    v49 = *(a2 + 52);
    v50 = *(a2 + 44);
    v51 = *(a3 + 576);
    v52 = *(a3 + 592);
    v53 = *(a1 + 3577);
    v54 = *(a2 + 76);
    v55 = *(a2 + 4);
    v56 = *(a2 + 12);
    v57 = *(a2 + 60);
    v58 = *(a2 + 152);
    v59 = *(a3 + 512);
    v62[0] = 67244801;
    v62[1] = v24;
    v63 = 1026;
    v64 = v44;
    v65 = 1026;
    v66 = v45;
    v67 = 1026;
    v68 = v46;
    v69 = 1026;
    v70 = v47;
    v71 = 1026;
    v72 = v48;
    v73 = 2050;
    v74 = v49;
    v75 = 2050;
    v76 = v50;
    v77 = 1026;
    v78 = v22;
    v79 = 1026;
    v80 = v51;
    v81 = 2050;
    v82 = v52;
    v83 = 1026;
    v84 = v53;
    v85 = 1026;
    v86 = v17;
    v87 = 2050;
    v88 = v54;
    v89 = 2053;
    v90 = v55;
    v91 = 2053;
    v92 = v56;
    v93 = 2050;
    v94 = v57;
    v95 = 1026;
    v96 = v58;
    v97 = 1026;
    v98 = v59;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,appropriatecheck,pass,%{public}d,mapMatched,%{public}d,CNOutdoor,%{public}d,matchQuality,%{public}d,matchFormOfWay,%{public}d,matchRoadClass,%{public}d,speedAccuracy,%{public}.3lf,speed,%{public}.3lf,CnOutdoorCalTriggerEnabled,%{public}d,CNPosContextState,%{public}d,CNPosContextProb,%{public}.3lf,isNotInAVisit,%{public}d,isSpeedSlow,%{public}d,cfAbsTime,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,fromSimulationController,%{public}d,isSimulatedOrSpoofed,%{public}d", v62, 144);
    v61 = v60;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::isAppropriateToCalibrateBaro(const CFTimeInterval, const CLDaemonLocation &, const CLDaemonLocationPrivate &, BOOL &, BOOL &)", "%s\n", v60);
    if (v61 != buf)
    {
      free(v61);
    }
  }

  *(a1 + 1352) = v24;
  *(a1 + 1353) = *a4;
  v42 = *a5;
  *(a1 + 1354) = v42;
  if (!*a4)
  {
    if (!v42)
    {
      goto LABEL_37;
    }

LABEL_41:
    ++*(a1 + 3612);
    ++*(a1 + 3644);
    ++*(a1 + 3676);
    if (!v24)
    {
      return v24;
    }

    goto LABEL_38;
  }

  ++*(a1 + 3608);
  ++*(a1 + 3640);
  ++*(a1 + 3672);
  if (v42)
  {
    goto LABEL_41;
  }

LABEL_37:
  if (v24)
  {
LABEL_38:
    ++*(a1 + 3616);
    ++*(a1 + 3648);
    ++*(a1 + 3680);
    *(a1 + 3704) = a6;
  }

  return v24;
}

unint64_t sub_1001FD5D4(double *a1)
{
  if (!(*(*a1 + 104))(a1))
  {
    return 0;
  }

  v2 = a1[4];
  v3 = vcvtad_u64_f64((a1[3] + 90.0) * 1000000.0);
  v4 = 0.0;
  if (v2 < 0.0)
  {
    v4 = 360.0;
  }

  return vcvtad_u64_f64((v2 + v4) * 1000000.0) | (v3 << 32);
}

uint64_t sub_1001FD668(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1A)
  {
    a2 = 1;
  }

  if (v2 < 0x34)
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
    *(a1 + 32) -= 26;
  }

  return v4 ^ 1u;
}

const char *sub_1001FD6E4(unsigned int a1)
{
  if (a1 <= 0xD)
  {
    return off_102493E10[a1];
  }

  else
  {
    return "<error>";
  }
}

uint64_t sub_1001FD708(uint64_t a1, double *a2, uint64_t *a3)
{
  sub_100029004(a1, a2);
  v6 = a3[1];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v8 = v7;
    if (v7)
    {
      v9 = *a3;
      if (v9)
      {
        if (*(v9 + 40) > 0.0)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          *(a1 + 568) = v9;
          v10 = *(a1 + 576);
          *(a1 + 576) = v8;
          if (v10)
          {
            sub_100008080(v10);
          }

          v11 = *a2;
          *(a1 + 368) = *a2;
          *(a1 + 376) = *(v9 + 8);
          v12 = *(v9 + 56);
          if (v12 <= 0.0)
          {
            if (*(a1 + 352) == 1 && vabdd_f64(*(v9 + 16), *(a1 + 344)) > 10.0)
            {
              *(a1 + 352) = 0;
              *(a1 + 296) = 0;
              *(a1 + 304) = xmmword_101C75BF0;
              *(a1 + 320) = 0xBFF0000000000000;
              *(a1 + 328) = 0;
              *(a1 + 336) = 0;
              *(a1 + 344) = 0xBFF0000000000000;
            }
          }

          else
          {
            v13 = *(a1 + 360) - 1;
            v14 = 4.0;
            if (v13 <= 9)
            {
              v14 = dbl_101C89760[v13];
            }

            sub_100218578(a1 + 296, (a1 + 360), *(v9 + 16), *(v9 + 48), v12, 0.0, v14);
            *(a1 + 408) = *(v9 + 48);
            v11 = *(a1 + 368);
          }

          *(a1 + 8) = *(v9 + 24) * 0.0174532925;
          *(a1 + 16) = *(v9 + 32) * 0.0174532925;
          v20 = fmax(*(v9 + 40), 1.0);
          v21 = *a2 - v11;
          v22 = v21 < 0.0;
          if (v21 > 5.0)
          {
            v22 = 1;
          }

          v23 = *(v9 + 72);
          if (v23 < 0.0)
          {
            goto LABEL_29;
          }

          v24 = *(v9 + 80);
          if (v24 > 0.0)
          {
            v25 = *(v9 + 88);
            if (v25 >= 0.0)
            {
              v53 = *(v9 + 96);
              if (v53 > 0.0 && v53 < 360.0)
              {
                if (v24 >= 5.0)
                {
                  goto LABEL_63;
                }

                v54 = *(a1 + 360);
                if ((v54 - 1) >= 5 && v54 != 10)
                {
                  goto LABEL_63;
                }

                if (v23 >= 15.0)
                {
                  v55 = 7;
                }

                else
                {
                  if (v23 < 6.0)
                  {
LABEL_63:
                    *(a1 + 424) = v25;
                    *(a1 + 432) = v53;
                    *(a1 + 440) = *a2;
                    *(a1 + 176) = 0u;
                    *(a1 + 192) = 0u;
                    *(a1 + 208) = 0u;
                    *(a1 + 224) = 0u;
                    *(a1 + 240) = 0u;
                    *(a1 + 256) = 0u;
                    *(a1 + 272) = 0u;
                    v56 = v24 * v24 * 0.5;
                    v57 = v20 * v20 * 0.5;
                    *(a1 + 168) = v57;
                    *(a1 + 208) = v57;
                    *(a1 + 248) = v56;
                    *(a1 + 288) = v56;
                    v58 = *(v9 + 72);
                    v59 = __sincos_stret(*(v9 + 88) * 0.0174532925);
                    *(a1 + 24) = v58 * v59.__cosval;
                    *(a1 + 32) = v59.__sinval * *(v9 + 72);
                    *(a1 + 416) = *(v9 + 72);
                    goto LABEL_32;
                  }

                  v55 = 6;
                }

                *(a1 + 360) = v55;
                goto LABEL_63;
              }
            }
          }

          if (v24 <= 0.0 || v22 || (v44 = *(a1 + 432), v44 <= 0.0) || v44 >= 90.0)
          {
LABEL_29:
            v26 = *(a1 + 360) - 1;
            v27 = 20.0;
            if (v26 <= 9)
            {
              v27 = dbl_101C89520[v26];
            }

            *(a1 + 256) = 0u;
            *(a1 + 272) = 0u;
            *(a1 + 224) = 0u;
            *(a1 + 240) = 0u;
            *(a1 + 192) = 0u;
            *(a1 + 208) = 0u;
            *(a1 + 176) = 0u;
            v28 = v27 * v27 * 0.5;
            v29 = v20 * v20 * 0.5;
            *(a1 + 168) = v29;
            *(a1 + 208) = v29;
            *(a1 + 248) = v28;
            *(a1 + 288) = v28;
            *(a1 + 416) = 0;
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
          }

          else
          {
            v45 = hypot(*(a1 + 24), *(a1 + 32));
            v46 = *(a1 + 248) + *(a1 + 288);
            v47 = fmax(v21, 1.0);
            v48 = sqrt(v47 * v47 * v46);
            v49 = v46 > 0.0;
            if (v45 <= 0.0)
            {
              v49 = 0;
            }

            if (v49 && v48 < v24)
            {
              v24 = v48;
              v23 = v45;
            }

            v50 = __sincos_stret(*(a1 + 424) * 0.0174532925);
            *(a1 + 24) = v50.__cosval * v23;
            *(a1 + 32) = v50.__sinval * v23;
            *(a1 + 416) = v23;
            *(a1 + 176) = 0u;
            *(a1 + 192) = 0u;
            *(a1 + 208) = 0u;
            *(a1 + 224) = 0u;
            *(a1 + 240) = 0u;
            *(a1 + 256) = 0u;
            *(a1 + 272) = 0u;
            v51 = v24 * v24 * 0.5;
            v52 = v20 * v20 * 0.5;
            *(a1 + 168) = v52;
            *(a1 + 208) = v52;
            *(a1 + 248) = v51;
            *(a1 + 288) = v51;
          }

LABEL_32:
          v64 = 0;
          v65 = 0;
          v18 = sub_100208760((a1 + 512), &v65, &v64, *(v9 + 24), *(a1 + 408));
          if (v18)
          {
            v30 = v65;
            *(a1 + 448) = v64;
            *(a1 + 456) = 1;
            *(a1 + 464) = v30;
            *(a1 + 472) = 1;
            *(a1 + 584) = *(a1 + 168) + *(a1 + 208);
            *a1 = 1;
            *(a1 + 592) = 0;
            *(a1 + 392) = 0;
            *(a1 + 400) = 0;
            *(a1 + 384) = 0;
            if (qword_1025D4770 != -1)
            {
              sub_101912E6C();
            }

            v31 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v32 = *(a1 + 596);
              v33 = *a2;
              *buf = 67240448;
              v71 = v32;
              v72 = 2050;
              v73 = v33;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,filter reinitialized", buf, 0x12u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_18;
            }

            sub_101912E28(buf);
            v34 = *(a1 + 596);
            v35 = *a2;
            v66 = 67240448;
            v67 = v34;
            v68 = 2050;
            v69 = v35;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,filter reinitialized", &v66, 18);
            v37 = v36;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::reinitialize(const CFTimeInterval &, const std::weak_ptr<const LCFusionProviderLocation>)", "%s\n", v36);
          }

          else
          {
            if (qword_1025D4770 != -1)
            {
              sub_101912E6C();
            }

            v38 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
            {
              v39 = *(a1 + 596);
              v40 = *a2;
              *buf = 67240448;
              v71 = v39;
              v72 = 2050;
              v73 = v40;
              _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,reinitialize filter calc_dNdE failed", buf, 0x12u);
            }

            if (!sub_10000A100(121, 0))
            {
              goto LABEL_18;
            }

            sub_101912E28(buf);
            v41 = *(a1 + 596);
            v42 = *a2;
            v66 = 67240448;
            v67 = v41;
            v68 = 2050;
            v69 = v42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,reinitialize filter calc_dNdE failed", &v66, 18);
            v37 = v43;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::reinitialize(const CFTimeInterval &, const std::weak_ptr<const LCFusionProviderLocation>)", "%s\n", v43);
          }

          if (v37 != buf)
          {
            free(v37);
          }

LABEL_18:
          sub_100008080(v8);
          return v18;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v15 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 596);
    v17 = *a2;
    *buf = 67240448;
    v71 = v16;
    v72 = 2050;
    v73 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,reinitialize filter failed,null or hunc <= 0", buf, 0x12u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101912E28(buf);
    v60 = *(a1 + 596);
    v61 = *a2;
    v66 = 67240448;
    v67 = v60;
    v68 = 2050;
    v69 = v61;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,reinitialize filter failed,null or hunc <= 0", &v66, 18);
    v63 = v62;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::reinitialize(const CFTimeInterval &, const std::weak_ptr<const LCFusionProviderLocation>)", "%s\n", v62);
    if (v63 != buf)
    {
      free(v63);
    }
  }

  v18 = 0;
  result = 0;
  if (v8)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_1001FDF14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1001FDF20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    return 1;
  }

  if (!*(a1 + 1104))
  {
    return 1;
  }

  v4 = *(a1 + 312);
  if (!v4 || *(*(*(a1 + 280) + 8 * ((v4 + *(a1 + 304) - 1) / 0x1AuLL)) + 152 * ((v4 + *(a1 + 304) - 1) % 0x1AuLL) + 148) != 1)
  {
    return 1;
  }

  v6 = 0;
  do
  {
    ++v6;
    v2 = *v2;
  }

  while (v2);
  if (v6 != 1)
  {
    sub_1000291EC(a1 + 256, (a2 + 16));
    if (*(a1 + 1152) != 1)
    {
      if (sub_10025BC08(a1, v7) || *(a2 + 124) == 1 && (v139 = *(a1 + 312) + *(a1 + 304) - 1, v140 = *(*(a1 + 280) + 8 * (v139 / 0x1A)) + 152 * (v139 % 0x1A), (*(v140 + 140) - 6) <= 2) && (*(v140 + 56) > 50.0 || sub_100681564(a1 + 2424, *(a2 + 16), 6.0)))
      {
        v116 = *(a1 + 248);
        if (v116)
        {
          v117 = 0;
          do
          {
            v118 = *(v116 + 214);
            if (v118)
            {
              v119 = v116[8];
              if (v119)
              {
                if (v118 == 1 && (*(*(v116[4] + 8 * ((v119 + v116[7] - 1) / 0x1AuLL)) + 152 * ((v119 + v116[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
                {
                  sub_1000291EC((v116 + 1), (a2 + 16));
                  if (*(v116 + 226) == 1)
                  {
                    v117 = v116;
                  }
                }
              }
            }

            v116 = *v116;
          }

          while (v116);
          if (v117)
          {
            v120 = *(a1 + 248);
            if (v120)
            {
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v122 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              do
              {
                if (*(v120 + 212) != *(v117 + 212))
                {
                  if (p_info[238] != -1)
                  {
                    sub_100224830();
                  }

                  v123 = v122[239];
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
                  {
                    v125 = *(v120 + 212);
                    v126 = *(v117 + 212);
                    v127 = sub_10025BC08(a1, v124);
                    v128 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
                    sub_1001FCE40(a1 + 2424, &v205);
                    v129 = &v205;
                    if (v206[15] < 0)
                    {
                      v129 = v205;
                    }

                    *buf = 67241218;
                    LODWORD(v214) = v125;
                    WORD2(v214) = 1026;
                    *(&v214 + 6) = v126;
                    WORD5(v214) = 1026;
                    HIDWORD(v214) = v127;
                    *v215 = 1026;
                    *&v215[2] = v128;
                    *&v215[6] = 2082;
                    *&v215[8] = v129;
                    _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEBUG, "#selection,Rejecting hypothesis,hID,%{public}d,in favor of,hID,%{public}d,goodGNSSQuality,%{public}d,isStationary,%{public}d,MotionActivity,%{public}s", buf, 0x24u);
                    if ((v206[15] & 0x80000000) != 0)
                    {
                      operator delete(v205);
                    }

                    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
                    v122 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    bzero(buf, 0x65CuLL);
                    if (p_info[238] != -1)
                    {
                      sub_100224830();
                    }

                    v131 = qword_1025D4778;
                    v132 = *(v120 + 212);
                    v133 = *(v117 + 212);
                    v134 = sub_10025BC08(a1, v130);
                    v135 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
                    sub_1001FCE40(a1 + 2424, &__p);
                    p_p = &__p;
                    if (v199[15] < 0)
                    {
                      p_p = __p;
                    }

                    LODWORD(v205) = 67241218;
                    HIDWORD(v205) = v132;
                    *v206 = 1026;
                    *&v206[2] = v133;
                    *&v206[6] = 1026;
                    *&v206[8] = v134;
                    *&v206[12] = 1026;
                    *&v206[14] = v135;
                    *&v206[18] = 2082;
                    *&v206[20] = p_p;
                    LODWORD(v173) = 36;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v131, 2, "#selection,Rejecting hypothesis,hID,%{public}d,in favor of,hID,%{public}d,goodGNSSQuality,%{public}d,isStationary,%{public}d,MotionActivity,%{public}s", &v205, v173);
                    v138 = v137;
                    if ((v199[15] & 0x80000000) != 0)
                    {
                      operator delete(__p);
                    }

                    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v138);
                    if (v138 != buf)
                    {
                      free(v138);
                    }

                    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                    v122 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                  }

                  *(v120 + 214) = 4;
                }

                v120 = *v120;
              }

              while (v120);
            }

            return 1;
          }
        }
      }
    }
  }

  v8 = *(a1 + 312) + *(a1 + 304) - 1;
  v9 = *(*(a1 + 280) + 8 * (v8 / 0x1A));
  v205 = off_1024DE5F8;
  v10 = v9 + 152 * (v8 % 0x1A);
  v11 = *(v10 + 88);
  v12 = *(v10 + 104);
  v13 = *(v10 + 120);
  v212 = *(v10 + 136);
  v211 = v13;
  v210 = v12;
  v209 = v11;
  v14 = *(v10 + 24);
  v15 = *(v10 + 40);
  v16 = *(v10 + 56);
  v208 = *(v10 + 72);
  v207 = v16;
  *&v206[16] = v15;
  *v206 = v14;
  sub_1000291EC(a1 + 256, (a2 + 16));
  if ((*(a1 + 1152) - 6) <= 2 && (*(a2 + 124) - 6) <= 2)
  {
    sub_100109D18((a1 + 2384), *(a2 + 24), *(a2 + 32), *&v206[16], *&v206[24], *(&v207 + 1));
    v18 = (*&v207 * *&v207 + *(a2 + 40) * *(a2 + 40)) * 0.5;
    if (v18 < 2500000000.0)
    {
      v18 = 2500000000.0;
    }

    v19 = v17 * v17 / v18;
    if (v19 > 36.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v141 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v142 = *(a1 + 1096);
        *buf = 67240448;
        LODWORD(v214) = v142;
        WORD2(v214) = 2050;
        *(&v214 + 6) = v19;
        _os_log_impl(dword_100000000, v141, OS_LOG_TYPE_DEBUG, "#selection,Rejecting last yielded/selected hypothesis,hID,%{public}d,in favor of new location/hypothesis,ratio,%{public}.1f", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v160 = *(a1 + 1096);
        LODWORD(__p) = 67240448;
        HIDWORD(__p) = v160;
        *v199 = 2050;
        *&v199[2] = v19;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Rejecting last yielded/selected hypothesis,hID,%{public}d,in favor of new location/hypothesis,ratio,%{public}.1f", &__p, 18);
        v162 = v161;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v161);
        if (v162 != buf)
        {
          free(v162);
        }
      }

      v143 = *(a1 + 248);
      if (v143)
      {
        v144 = *(a1 + 1096);
        do
        {
          if (*(v143 + 212) == v144)
          {
            *(v143 + 214) = 4;
          }

          v143 = *v143;
        }

        while (v143);
      }

      goto LABEL_218;
    }
  }

  sub_1000291EC(a1 + 256, &v206[8]);
  if (v6 != 1 || (v34 = *(a1 + 248), *(v34 + 856) == 2) && (v35 = *(v34 + 64)) != 0 && *(*(*(v34 + 32) + 8 * ((v35 + *(v34 + 56) - 1) / 0x1AuLL)) + 152 * ((v35 + *(v34 + 56) - 1) % 0x1AuLL) + 148) == 1)
  {
    if ((*(a2 + 124) - 6) <= 2 && (*(a1 + 1152) - 6) <= 2 && sub_100125424(a1 + 2424, *(a2 + 16), 6.0))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v20 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 1096);
        v22 = *(a1 + 2288);
        v23 = *(a2 + 40);
        v24 = *&v207;
        sub_1001FCE40(a1 + 2424, &__p);
        v25 = v199[15] >= 0 ? &__p : __p;
        *buf = 67241474;
        LODWORD(v214) = v21;
        WORD2(v214) = 2048;
        *(&v214 + 6) = v22;
        HIWORD(v214) = 2048;
        *v215 = v6;
        *&v215[8] = 2050;
        *&v215[10] = v23;
        *&v215[18] = 2050;
        v216 = v24;
        *v217 = 2082;
        *&v217[2] = v25;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#selection,Cell-only locations skipped outlier-detection,LastYielded_hID,%{public}d,#uniqueCell,%zu,#Hypotheses,%ld,newLocHunc,%{public}.2f,lastYieldHunc,%{public}.2f,LatestMotionActivity,%{public}s", buf, 0x3Au);
        if ((v199[15] & 0x80000000) != 0)
        {
          operator delete(__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v26 = qword_1025D4778;
        v27 = *(a1 + 1096);
        v28 = *(a1 + 2288);
        v29 = *(a2 + 40);
        v30 = v207;
        sub_1001FCE40(a1 + 2424, v179);
        if ((SBYTE3(v181) & 0x80u) == 0)
        {
          v31 = v179;
        }

        else
        {
          v31 = *v179;
        }

        LODWORD(__p) = 67241474;
        HIDWORD(__p) = v27;
        *v199 = 2048;
        *&v199[2] = v28;
        *&v199[10] = 2048;
        *&v199[12] = v6;
        *&v199[20] = 2050;
        *&v199[22] = v29;
        *&v199[30] = 2050;
        *v200 = v30;
        *&v200[8] = 2082;
        *&v200[10] = v31;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 2, "#selection,Cell-only locations skipped outlier-detection,LastYielded_hID,%{public}d,#uniqueCell,%zu,#Hypotheses,%ld,newLocHunc,%{public}.2f,lastYieldHunc,%{public}.2f,LatestMotionActivity,%{public}s", &__p, 58);
        v33 = v32;
        if (SBYTE3(v181) < 0)
        {
          operator delete(*v179);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }

      return 1;
    }
  }

  sub_1000291EC(a1 + 256, &v206[8]);
  if (v6 == 1 || *(a2 + 124) != 4)
  {
    if (v6 == 1)
    {
LABEL_72:
      v49 = *(a1 + 248);
      if (!v49)
      {
        return 1;
      }

      v50 = *(a1 + 256);
      while (1)
      {
        if (*(v49 + 214))
        {
          v51 = v49[8];
          if (v51)
          {
            v52 = v51 + v49[7] - 1;
            v53 = *(v49[4] + 8 * (v52 / 0x1A));
            v54 = v52 % 0x1A;
            if (*(v53 + 152 * v54 + 148) == 1)
            {
              break;
            }
          }
        }

LABEL_154:
        v49 = *v49;
        if (!v49)
        {
          return 1;
        }
      }

      __p = off_1024DE5F8;
      v55 = v53 + 152 * v54;
      v56 = *(v55 + 24);
      v57 = *(v55 + 40);
      v58 = *(v55 + 56);
      *&v200[16] = *(v55 + 72);
      *v200 = v58;
      *&v199[16] = v57;
      v59 = *(v55 + 88);
      v60 = *(v55 + 104);
      v61 = *(v55 + 120);
      v204 = *(v55 + 136);
      v203 = v61;
      v202 = v60;
      v201 = v59;
      *v199 = v56;
      sub_100109D18((a1 + 2384), *&v199[16], *&v199[24], *&v206[16], *&v206[24], *(&v207 + 1));
      v63 = v62;
      v64 = *&v199[8] - v50;
      if (*&v199[8] - v50 >= -1.0)
      {
        if (v64 > 900.0)
        {
          goto LABEL_102;
        }
      }

      else if (v64 > 900.0 || *(a1 + 1096) == *(v49 + 212))
      {
LABEL_102:
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v82 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v83 = *(v49 + 212);
          *buf = 67240704;
          LODWORD(v214) = v83;
          WORD2(v214) = 2050;
          *(&v214 + 6) = v64;
          HIWORD(v214) = 2050;
          *v215 = v63;
          _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEBUG, "#selection,skipped outlier detection hID,%{public}d,dt,%{public}.3f,euclideanDistance_m,%{public}.3f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v84 = *(v49 + 212);
          *v179 = 67240704;
          *&v179[4] = v84;
          *&v179[8] = 2050;
          *&v179[10] = v64;
          v180 = 2050;
          v181 = v63;
          LODWORD(v173) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,skipped outlier detection hID,%{public}d,dt,%{public}.3f,euclideanDistance_m,%{public}.3f", v179, v173);
          v86 = v85;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v85);
          if (v86 != buf)
          {
            free(v86);
          }
        }

        goto LABEL_154;
      }

      if (v64 < 2.22044605e-16)
      {
        v65 = *(a2 + 16);
        v66 = v65 <= v50;
        v67 = v65 - v50;
        if (!v66)
        {
          v64 = v67;
        }
      }

      v68 = fabs(v64);
      v69 = fmax(v68 - *(a1 + 2832), 0.0);
      v70 = v69 * 50.0;
      v71 = fmax(*&v207 + v69 * 50.0, 1.0);
      v72 = v62 / v71;
      v73 = 1.0;
      if (v62 / v71 <= 1.0)
      {
        if (*(a1 + 2176))
        {
          if (!sub_100125258(a1 + 2424, *&v199[8], 6.0))
          {
            v74 = *(a1 + 2448);
            if ((v74 - 1) < 5 || v74 == 10) && v68 > 6.0 && (*(a1 + 2800))
            {
              sub_100251B28(*(a1 + 2176), &v175);
              if (v175 > 0.0 && v177 > 0.0 && (v175 >= 0.0 && (v175 > *&v199[8] || *&v199[8] - v175 <= 6.0) || sub_1001253BC(a1 + 2424, *&v199[8], 6.0)))
              {
                v75 = v176;
                v76 = *&v207;
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v70 = fmax(v75 * 3.0, 25.0);
                v71 = fmax(v76 + v70, 1.0);
                v72 = v63 / v71;
                v77 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v78 = *(v49 + 212);
                  *buf = 67111424;
                  LODWORD(v214) = v78;
                  WORD2(v214) = 2050;
                  *(&v214 + 6) = v63 / v71;
                  HIWORD(v214) = 2050;
                  *v215 = v68;
                  *&v215[8] = 2050;
                  *&v215[10] = v69;
                  *&v215[18] = 2050;
                  v216 = v70;
                  *v217 = 2050;
                  *&v217[2] = v71;
                  v218 = 2050;
                  v219 = v63;
                  v220 = 2050;
                  v221 = v176;
                  v222 = 2050;
                  v223 = v177;
                  v224 = 2050;
                  v225 = v178;
                  _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "#selection,IO-based distance moved xCheck,hID,%d,ndis,%{public}.3f,dt,%{public}.3f,dtNonStatic,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,upperBoundHypoHunc1Sigma_m,%{public}.3f,interHypoEuclideanDistance_m,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", buf, 0x62u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_119;
                }

                sub_101A7B5F4(buf);
                v79 = *(v49 + 212);
                *v179 = 67111424;
                *&v179[4] = v79;
                *&v179[8] = 2050;
                *&v179[10] = v63 / v71;
                v180 = 2050;
                v181 = v68;
                v182 = 2050;
                v183 = v69;
                v184 = 2050;
                v185 = v70;
                v186 = 2050;
                v187 = v71;
                v188 = 2050;
                v189 = v63;
                v190 = 2050;
                v191 = v176;
                v192 = 2050;
                v193 = v177;
                v194 = 2050;
                v195 = v178;
                LODWORD(v173) = 98;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,IO-based distance moved xCheck,hID,%d,ndis,%{public}.3f,dt,%{public}.3f,dtNonStatic,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,upperBoundHypoHunc1Sigma_m,%{public}.3f,interHypoEuclideanDistance_m,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", v179, v173);
                v81 = v80;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v80);
              }

              else
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v87 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v88 = *(v49 + 212);
                  *buf = 67241472;
                  LODWORD(v214) = v88;
                  WORD2(v214) = 2050;
                  *(&v214 + 6) = *&v199[8];
                  HIWORD(v214) = 2050;
                  *v215 = v175;
                  *&v215[8] = 2050;
                  *&v215[10] = v176;
                  *&v215[18] = 2050;
                  v216 = v177;
                  *v217 = 2050;
                  *&v217[2] = v178;
                  _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEBUG, "#selection,IO data invalid or timed out,hID,%{public}d,hypo_mct,%{public}.3f,IO_mct,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", buf, 0x3Au);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_119;
                }

                sub_101A7B5F4(buf);
                v89 = *(v49 + 212);
                *v179 = 67241472;
                *&v179[4] = v89;
                *&v179[8] = 2050;
                *&v179[10] = *&v199[8];
                v180 = 2050;
                v181 = v175;
                v182 = 2050;
                v183 = v176;
                v184 = 2050;
                v185 = v177;
                v186 = 2050;
                v187 = v178;
                LODWORD(v173) = 58;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,IO data invalid or timed out,hID,%{public}d,hypo_mct,%{public}.3f,IO_mct,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", v179, v173);
                v81 = v90;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v90);
              }

              if (v81 != buf)
              {
                free(v81);
              }
            }
          }
        }
      }

LABEL_119:
      if ((*(a1 + 2800) & 1) == 0)
      {
        v91 = *(a1 + 2448);
        if ((v91 - 3) < 8 || !v91)
        {
          if (sub_100125258(a1 + 2424, *&v199[8], 6.0) || (sub_1001252CC(a1 + 2424, *&v199[8], 6.0) & 1) != 0 || (v93 = *(a1 + 2448) - 1, v93 >= 0xA) || ((0x21Fu >> v93) & 1) == 0)
          {
            v92.n128_u64[0] = *(a1 + 200);
            if (sub_100215A40((v49 + 1), v92) < 30.0)
            {
              v73 = 3.0;
            }
          }
        }
      }

      v94 = v49[8] + v49[7] - 1;
      if (*(*(v49[4] + 8 * (v94 / 0x1A)) + 152 * (v94 % 0x1A) + 136) == 1)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v95 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&v214 = 0x4008000000000000;
          _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_DEBUG, "#selection Inflating gate for associated AP to %{public}.1f", buf, 0xCu);
        }

        v73 = 3.0;
        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          *v179 = 134349056;
          *&v179[4] = 0x4008000000000000;
          LODWORD(v173) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection Inflating gate for associated AP to %{public}.1f", v179, v173);
          v112 = v111;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v111);
          if (v112 != buf)
          {
            free(v112);
          }
        }
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v96 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v97 = *(v49 + 212);
        v98 = *(v49 + 98);
        *buf = 67111680;
        LODWORD(v214) = v97;
        WORD2(v214) = 2050;
        *(&v214 + 6) = v72;
        HIWORD(v214) = 2050;
        *v215 = v73;
        *&v215[8] = 2050;
        *&v215[10] = v68;
        v99 = sqrt(v98);
        *&v215[18] = 2050;
        v216 = v69;
        *v217 = 2050;
        *&v217[2] = v70;
        v218 = 2050;
        v66 = v98 <= 0.0;
        v100 = -1.0;
        if (!v66)
        {
          v100 = v99;
        }

        v219 = v71;
        v220 = 2050;
        v221 = v63;
        v222 = 2050;
        v223 = *&v207;
        v224 = 2050;
        v225 = *v200;
        v226 = 2050;
        v227 = v100;
        _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_DEBUG, "#selection,hypothesis consistency check,hID,%d,ndis,%{public}.3f,gating,%{public}.1f,dt,%{public}.3f,dtNonStatic,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,upperBoundHypoHunc1Sigma_m,%{public}.3f,interHypoEuclideanDistance_m,%{public}.3f,selectedFusedStateHunc,%{public}.3f,hypothsisFusedStateHunc,%{public}.3f,hypothsisFilterHunc,%{public}.3f", buf, 0x6Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v105 = *(v49 + 212);
        v106 = *(v49 + 98);
        *v179 = 67111680;
        *&v179[4] = v105;
        *&v179[8] = 2050;
        *&v179[10] = v72;
        v180 = 2050;
        v181 = v73;
        v182 = 2050;
        v183 = v68;
        v107 = sqrt(v106);
        v184 = 2050;
        v185 = v69;
        v186 = 2050;
        v187 = v70;
        v66 = v106 <= 0.0;
        v108 = -1.0;
        if (!v66)
        {
          v108 = v107;
        }

        v188 = 2050;
        v189 = v71;
        v190 = 2050;
        v191 = v63;
        v192 = 2050;
        v193 = *&v207;
        v194 = 2050;
        v195 = *v200;
        v196 = 2050;
        v197 = v108;
        LODWORD(v173) = 108;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,hypothesis consistency check,hID,%d,ndis,%{public}.3f,gating,%{public}.1f,dt,%{public}.3f,dtNonStatic,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,upperBoundHypoHunc1Sigma_m,%{public}.3f,interHypoEuclideanDistance_m,%{public}.3f,selectedFusedStateHunc,%{public}.3f,hypothsisFusedStateHunc,%{public}.3f,hypothsisFilterHunc,%{public}.3f", v179, v173);
        v110 = v109;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v109);
        if (v110 != buf)
        {
          free(v110);
        }
      }

      if (v72 <= v73)
      {
        if (*(v49 + 214) == 4)
        {
          *(v49 + 214) = 1;
        }

        v101.n128_u64[0] = *(a1 + 200);
        if (sub_100215A40((v49 + 1), v101) <= 30.0)
        {
          v104 = *(a2 + 16);
          if (v104 > *(v49 + 1))
          {
            *(v49 + 1) = v104;
            v49[2] = *(a2 + 8);
          }
        }

        else if (*(v49 + 212) != *(a1 + 1096))
        {
          *(v49 + 214) = 0;
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v102 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v103 = *(v49 + 212);
          *buf = 67240704;
          LODWORD(v214) = v103;
          WORD2(v214) = 2050;
          *(&v214 + 6) = v72;
          HIWORD(v214) = 2050;
          *v215 = v73;
          _os_log_impl(dword_100000000, v102, OS_LOG_TYPE_DEBUG, "#selection,Rejecting inconsistence hypothesis,hID,%{public}d,ndis,%{public}.3f,gating,%{public}.1f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v113 = *(v49 + 212);
          *v179 = 67240704;
          *&v179[4] = v113;
          *&v179[8] = 2050;
          *&v179[10] = v72;
          v180 = 2050;
          v181 = v73;
          LODWORD(v173) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Rejecting inconsistence hypothesis,hID,%{public}d,ndis,%{public}.3f,gating,%{public}.1f", v179, v173);
          v115 = v114;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v114);
          if (v115 != buf)
          {
            free(v115);
          }
        }

        *(v49 + 214) = 4;
      }

      goto LABEL_154;
    }
  }

  else if ((*(a1 + 1152) - 6) <= 2)
  {
    v36 = *(a2 + 116);
    sub_100109D18((a1 + 2384), *(a2 + 24), *(a2 + 32), *&v206[16], *&v206[24], *(a1 + 2248));
    v38 = v37;
    v39 = *(a2 + 40);
    if (v39 < 1.0)
    {
      v39 = 1.0;
    }

    v40 = v38 / v39;
    if ((!sub_100028030(a1 + 320) || !sub_1011696A0(a1 + 256, &v205, 2.29575, -1.0)) && v36 >= 0x45 && v40 > 3.0 && *&v207 > *(a2 + 40) && v38 < 10000.0)
    {
      for (i = *(a1 + 248); i; i = *i)
      {
        if (*(i + 212) == *(a1 + 1096) && *(i + 214) != 2)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v42 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v43 = *(a1 + 1096);
            v44 = *(a2 + 40);
            *buf = 67241216;
            LODWORD(v214) = v43;
            WORD2(v214) = 2050;
            *(&v214 + 6) = v44;
            HIWORD(v214) = 2050;
            *v215 = v207;
            *&v215[8] = 2050;
            *&v215[10] = v38;
            *&v215[18] = 2050;
            v216 = v40;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "#selection,Rejecting last yielded cell-based hypothesis,hID,%{public}d,in favor of new med/high confidence WiFi fix with hunc,%{public}.2f,lastYieldHunc,%{public}.2f,distance,%{public}.2f,testRatio,%{public}.1f", buf, 0x30u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v45 = *(a1 + 1096);
            v46 = *(a2 + 40);
            LODWORD(__p) = 67241216;
            HIDWORD(__p) = v45;
            *v199 = 2050;
            *&v199[2] = v46;
            *&v199[10] = 2050;
            *&v199[12] = v207;
            *&v199[20] = 2050;
            *&v199[22] = v38;
            *&v199[30] = 2050;
            *v200 = v40;
            LODWORD(v173) = 48;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Rejecting last yielded cell-based hypothesis,hID,%{public}d,in favor of new med/high confidence WiFi fix with hunc,%{public}.2f,lastYieldHunc,%{public}.2f,distance,%{public}.2f,testRatio,%{public}.1f", &__p, v173);
            v48 = v47;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v47);
            if (v48 != buf)
            {
              free(v48);
            }
          }

          *(i + 214) = 4;
        }
      }

LABEL_218:
      bzero(buf, 0x388uLL);
      sub_100856684(buf);
      sub_100D6B33C(a1 + 256, buf);
      sub_1008572E0(buf);
      return 1;
    }
  }

  sub_1000291EC(a1 + 256, (a2 + 16));
  if (*(a1 + 1152) == 1 || (v212 & 1) != 0 || !sub_10025BD44(a1 + 2296) || !sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0) || *(a2 + 124) != 1 || *(a2 + 72) > 1.0 || *(a2 + 40) > 25.0)
  {
    goto LABEL_72;
  }

  v146 = *(a1 + 248);
  if (!v146)
  {
    return 1;
  }

  v147 = 0;
  v148 = 0;
  do
  {
    v149 = *(v146 + 214);
    if (v149)
    {
      v150 = v146[8];
      if (v150)
      {
        if (v149 == 1 && (*(*(v146[4] + 8 * ((v150 + v146[7] - 1) / 0x1AuLL)) + 152 * ((v150 + v146[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
        {
          sub_1000291EC((v146 + 1), (a2 + 16));
          if (*(v146 + 226) == 1)
          {
            v148 = v146;
            ++v147;
          }
        }
      }
    }

    v146 = *v146;
  }

  while (v146);
  if (v147 != 1 || !v148)
  {
    goto LABEL_72;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v151 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v174 = *(v148 + 212);
    sub_1000291EC(a1 + 256, (a2 + 16));
    v152 = *(a1 + 1152);
    v153 = sub_10025BD44(a1 + 2296);
    v154 = *(a2 + 40);
    v155 = *(a2 + 72);
    v156 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
    sub_1001FCE40(a1 + 2424, &__p);
    v157 = &__p;
    if (v199[15] < 0)
    {
      v157 = __p;
    }

    *buf = 67241730;
    LODWORD(v214) = v174;
    WORD2(v214) = 1026;
    *(&v214 + 6) = v152;
    WORD5(v214) = 1026;
    HIDWORD(v214) = v153;
    *v215 = 2050;
    *&v215[2] = v154;
    *&v215[10] = 2050;
    *&v215[12] = v155;
    LOWORD(v216) = 1026;
    *(&v216 + 2) = v156;
    HIWORD(v216) = 2082;
    *v217 = v157;
    _os_log_impl(dword_100000000, v151, OS_LOG_TYPE_DEBUG, "#selection,Rejecting hypotheses in favor of gps based hypothesis,hID,%{public}d,lastYieldProminentProviderType,%{public}d,goodGNSSQuality,%{public}d,gpsHunc,%{public}.1f,gpsSpeed_mps,%{public}.2f,isStationary,%{public}d,MotionActivity,%{public}s", buf, 0x38u);
    if ((v199[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v163 = qword_1025D4778;
    v164 = *(v148 + 212);
    sub_1000291EC(a1 + 256, (a2 + 16));
    v165 = *(a1 + 1152);
    v166 = sub_10025BD44(a1 + 2296);
    v167 = *(a2 + 40);
    v168 = *(a2 + 72);
    v169 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
    sub_1001FCE40(a1 + 2424, v179);
    if ((SBYTE3(v181) & 0x80u) == 0)
    {
      v170 = v179;
    }

    else
    {
      v170 = *v179;
    }

    LODWORD(__p) = 67241730;
    HIDWORD(__p) = v164;
    *v199 = 1026;
    *&v199[2] = v165;
    *&v199[6] = 1026;
    *&v199[8] = v166;
    *&v199[12] = 2050;
    *&v199[14] = v167;
    *&v199[22] = 2050;
    *&v199[24] = v168;
    *v200 = 1026;
    *&v200[2] = v169;
    *&v200[6] = 2082;
    *&v200[8] = v170;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v163, 2, "#selection,Rejecting hypotheses in favor of gps based hypothesis,hID,%{public}d,lastYieldProminentProviderType,%{public}d,goodGNSSQuality,%{public}d,gpsHunc,%{public}.1f,gpsSpeed_mps,%{public}.2f,isStationary,%{public}d,MotionActivity,%{public}s", &__p, 56);
    v172 = v171;
    if (SBYTE3(v181) < 0)
    {
      operator delete(*v179);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v172);
    if (v172 != buf)
    {
      free(v172);
    }
  }

  v158 = *(a1 + 248);
  if (v158)
  {
    v159 = *(v148 + 212);
    do
    {
      if (*(v158 + 212) != v159)
      {
        *(v158 + 214) = 4;
      }

      v158 = *v158;
    }

    while (v158);
  }

  return 1;
}

void sub_1001FFB90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1001FFBB0(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

void sub_1001FFC84(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452590;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001FFCD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024521D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001FFD2C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v268 = v5;
  if (!sub_1001F56C8(v3, *(v1 + 96)))
  {
    v13 = 0;
    return v13 & 1;
  }

  v267 = 0;
  sub_100022008(v245, v2);
  v267 = sub_1001F57C8(v4, v245);
  if (v267 & 1 | ((*(v4 + 296) & 1) == 0))
  {
    v244 = *&v245[4];
    (*(**(v4 + 280) + 232))(*(v4 + 280), v245, &v251);
    if ((*(**(v4 + 280) + 416))(*(v4 + 280), v245))
    {
      sub_100022008(v217, v2);
      v220 = v251;
      v221 = v252;
      (*(**(v4 + 280) + 440))(*(v4 + 280), v217);
      v6 = (*(**(v4 + 280) + 408))(*(v4 + 280), v245, &v251);
      if (qword_1025D48C0 != -1)
      {
        sub_101AACA10();
      }

      v7 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v8 = *&v245[4];
        v9 = *&v245[12];
        v10 = *&v245[20];
        v11 = v248;
        v12 = sub_1001FD6E4(v248);
        *buf = 136319235;
        *&buf[4] = "CL-trackrun";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v8;
        *&buf[28] = 2053;
        *&buf[30] = v9;
        *&buf[38] = 2048;
        *&buf[40] = v10;
        *&buf[48] = 1026;
        *&buf[50] = v11;
        *&buf[54] = 2082;
        *&buf[56] = v12;
        *&buf[64] = 2050;
        *&buf[66] = *&v247[12];
        *&buf[74] = 2050;
        *&buf[76] = *&v247[28];
        *&buf[84] = 1025;
        *&buf[86] = v253;
        *&buf[90] = 1025;
        *&buf[92] = v254;
        *&buf[96] = 1025;
        *&buf[98] = v257;
        *&buf[102] = 1025;
        *&buf[104] = v256;
        *&buf[108] = 1025;
        *&buf[110] = v258;
        *&buf[114] = 1025;
        *&buf[116] = v259;
        *&buf[120] = 2049;
        *&buf[122] = v260;
        *&buf[130] = 2053;
        *&buf[132] = v255;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,course,%{public}.1f,timestamp,%{public}.3f,lapCount,%{private}d,laneNumber,%{private}d,laneCount,%{private}d,estimatedLaneNumber,%{private}d,estimatedLaneConfidence,%{private}d,trackProximity,%{private}d,distanceToTrackMeters,%{private}.1lf,trackId,%{sensitive}llu", buf, 0x8Cu);
      }

      if (sub_10000A100(123, 2))
      {
        sub_101AACA38(buf);
        v35 = qword_1025D48C8;
        v36 = *&v245[4];
        v37 = *&v245[20];
        v38 = v248;
        v39 = sub_1001FD6E4(v248);
        *v269 = 136319235;
        *&v269[4] = "CL-trackrun";
        v270 = 1024;
        *v271 = 1;
        *&v271[4] = 2053;
        *&v271[6] = v36;
        *&v271[14] = 2053;
        *&v271[16] = *(&v36 + 1);
        *&v271[24] = 2048;
        *&v271[26] = v37;
        *&v271[34] = 1026;
        *&v271[36] = v38;
        *&v271[40] = 2082;
        *&v271[42] = v39;
        *&v271[50] = 2050;
        *&v271[52] = *&v247[12];
        *&v271[60] = 2050;
        *&v271[62] = *&v247[28];
        *&v271[70] = 1025;
        *&v271[72] = v253;
        *v272 = 1025;
        *&v272[2] = v254;
        *&v272[6] = 1025;
        *&v272[8] = v257;
        *&v272[12] = 1025;
        *&v272[14] = v256;
        *&v272[18] = 1025;
        *v273 = v258;
        *&v273[4] = 1025;
        *&v273[6] = v259;
        *&v273[10] = 2049;
        *&v273[12] = v260;
        v274 = 2053;
        v275 = v255;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,course,%{public}.1f,timestamp,%{public}.3f,lapCount,%{private}d,laneNumber,%{private}d,laneCount,%{private}d,estimatedLaneNumber,%{private}d,estimatedLaneConfidence,%{private}d,trackProximity,%{private}d,distanceToTrackMeters,%{private}.1lf,trackId,%{sensitive}llu", v269, 140);
        v41 = v40;
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v40);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      if (v242)
      {
        sub_100008080(v242);
      }

      if (v241 < 0)
      {
        operator delete(__p);
      }

      if (v239)
      {
        sub_100008080(v239);
      }

      if (v238)
      {
        sub_100008080(v238);
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = (*(**(v4 + 280) + 256))(*(v4 + 280));
    if (v14)
    {
      v15 = "LocationController";
    }

    else
    {
      v15 = "GnssController";
    }

    if (v14)
    {
      v16 = 18;
    }

    else
    {
      v16 = 14;
    }

    v216 = v16;
    memcpy(__dst, v15, v16);
    *(__dst + v16) = 0;
    v17 = sub_1001F842C(v4, v245, __dst);
    if (v216 < 0)
    {
      operator delete(__dst[0]);
    }

    v19 = sub_10000B1F8(v17, v18);
    *buf = 0;
    v20 = sub_10001A6B0(v19, buf);
    v21 = sub_1001D53D4(v4, v268, v245, v20);
    v267 = v21;
    *v211 = 0xFFFF;
    *&v211[4] = 0uLL;
    *&v211[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v211[36] = _Q0;
    *&v211[52] = _Q0;
    *&v211[68] = _Q0;
    *&v211[84] = 0;
    v212 = 0uLL;
    *&v211[88] = 0xBFF0000000000000;
    *(&v213 + 4) = 0xBFF0000000000000;
    LODWORD(v213) = 0;
    HIDWORD(v213) = 0x7FFFFFFF;
    memset(v214, 0, 25);
    if (v268 == 7)
    {
      if (v21)
      {
        v212 = v248;
        v213 = v249;
        *v214 = v250[0];
        *&v214[12] = *(v250 + 12);
        *&v211[32] = v246;
        *&v211[48] = *v247;
        *&v211[64] = *&v247[16];
        *&v211[80] = *&v247[32];
        v27 = 1;
        *v211 = *v245;
        *&v211[16] = *&v245[16];
        goto LABEL_38;
      }

      if (*(v4 + 296))
      {
LABEL_35:
        v27 = 0;
        goto LABEL_38;
      }
    }

    else if (*(v4 + 296))
    {
      if (v21)
      {
        v27 = sub_1006756B0(v4, v211, v245, &v268, &v267);
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v27 = sub_1001F867C(v4, v211, v245, &v267);
    v28 = *(v4 + 304);
    if (v28)
    {
      v29 = (*(**(v4 + 280) + 496))(*(v4 + 280));
      sub_1001F4EC4(v28, v29);
    }

LABEL_38:
    if (*(v4 + 1672))
    {
      if (sub_1001F4ED4(v4, v2))
      {
        sub_10025BA74(v4, v245);
        if ((v267 & 1) == 0 && (*(v4 + 673) & 1) == 0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_10022FB88();
          }

          v30 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning not notifying location with location derived speed", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AACA7C(buf);
            *v217 = 0;
            LODWORD(v159) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 0, "LocationController,#Warning not notifying location with location derived speed", v217, v159);
            v32 = v31;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v31);
            if (v32 != buf)
            {
              free(v32);
            }
          }
        }
      }

      else
      {
        sub_1001F4EA8(v4, v245);
      }
    }

    if ((v267 & 1) == 0 && *(v4 + 673) != 1)
    {
      goto LABEL_160;
    }

    sub_100022008(v217, v245);
    sub_10021347C(v4);
    if (v27)
    {
      if (*&v211[20] > 0.0)
      {
        *v218 = v212;
        *&v218[16] = v213;
        *v219 = *v214;
        *&v219[12] = *&v214[12];
        *&v217[32] = *&v211[32];
        *&v217[48] = *&v211[48];
        *&v217[64] = *&v211[64];
        *&v217[80] = *&v211[80];
        *v217 = *v211;
        *&v217[16] = *&v211[16];
        if (!v6)
        {
          goto LABEL_70;
        }

        goto LABEL_63;
      }

      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v33 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "Notifying using location KF,but no location available", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AACA7C(buf);
        *v269 = 0;
        LODWORD(v159) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 17, "Notifying using location KF,but no location available", v269, v159);
        v43 = v42;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }

        if (!v6)
        {
          goto LABEL_70;
        }

        goto LABEL_63;
      }
    }

    if (!v6)
    {
LABEL_70:
      v34 = *&v217[4];
      goto LABEL_71;
    }

LABEL_63:
    v34 = v244;
LABEL_71:
    *&v218[4] = v34;
    *&v219[8] = *&v219[4];
    *&v218[20] = *&v217[60];
    v44 = (*(**(v4 + 280) + 368))(*(v4 + 280));
    if ((v44 - 3) < 2 && v223 == 4)
    {
      v46 = 2;
    }

    else
    {
      v46 = v44;
    }

    *&v219[12] = v46;
    v229 = *&v217[20];
    v230 = *&v217[28];
    v232 = 0;
    v233 = *&v217[4];
    v234 = *&v217[20];
    v235 = *&v219[4];
    v231 = *&v217[68];
    v237 = *&v217[60];
    v236 = *&v217[28];
    if ((*(**(v4 + 280) + 376))())
    {
      (*(**(v4 + 280) + 384))(*(v4 + 280), v217, &v220);
      v194 = (*(**(v4 + 280) + 400))(*(v4 + 280), v217, &v220);
      if (qword_1025D48C0 != -1)
      {
        sub_101AACA10();
      }

      v47 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v180 = *&v217[4];
        v190 = *&v217[20];
        v48 = *v218;
        v187 = sub_1001FD6E4(*v218);
        v162 = *&v217[44];
        v164 = *&v217[60];
        v168 = *&v217[84];
        v172 = *&v217[88];
        v176 = *&v217[76];
        v50 = sub_10000B1F8(v187, v49);
        *v269 = 0;
        v51 = sub_10001A6B0(v50, v269);
        v52 = *&v217[76];
        v53 = *&v217[28];
        v54 = *&v217[36];
        v55 = *&v217[52];
        v56 = *&v217[68];
        v57 = v222;
        v58 = *v219;
        v160 = v232;
        v61 = sub_10000B1F8(v59, v60);
        v62 = sub_100125220(v61);
        *buf = 136321027;
        *&buf[4] = "CL-viofused";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v180;
        *&buf[28] = 2053;
        *&buf[30] = *(&v180 + 1);
        *&buf[38] = 2048;
        *&buf[40] = v190;
        *&buf[48] = 1024;
        *&buf[50] = v48;
        *&buf[54] = 2080;
        *&buf[56] = v187;
        *&buf[64] = 2048;
        *&buf[66] = v162;
        *&buf[74] = 2048;
        *&buf[76] = v164;
        *&buf[84] = 1024;
        *&buf[86] = v168;
        *&buf[90] = 2048;
        *&buf[92] = v172;
        *&buf[100] = 2048;
        *&buf[102] = v176;
        *&buf[110] = 2048;
        *&buf[112] = v51 - v52;
        *&buf[120] = 2048;
        *&buf[122] = v53;
        *&buf[130] = 2048;
        *&buf[132] = v54;
        *&buf[140] = 2048;
        *&buf[142] = v55;
        *&buf[150] = 2048;
        *&buf[152] = v56;
        v293 = 2048;
        v294 = v57;
        v295 = 1024;
        v296 = v58;
        v297 = 1024;
        *v298 = v194 & 1;
        *&v298[4] = 1024;
        *&v298[6] = v194 & 4;
        v299 = 1024;
        v300 = v194 & 2;
        v301 = 1024;
        v302 = v160;
        v303 = 2048;
        v304 = v62;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,isLocationFused,%d,isLocationPropagated,%d,isCourseFused,%d,isCoordinateFused,%d,propagation_us,%.3f", buf, 0xD2u);
      }

      if (sub_10000A100(123, 2))
      {
        sub_101AACA38(buf);
        v105 = *&v217[4];
        v185 = *&v217[12];
        v192 = qword_1025D48C8;
        v106 = *v218;
        v107 = sub_1001FD6E4(*v218);
        v108 = *&v217[44];
        v109 = *&v217[60];
        v174 = *&v217[84];
        v178 = *&v217[88];
        v182 = *&v217[76];
        v111 = sub_1000281DC(v107, v110);
        v112 = *&v217[76];
        v113 = *&v217[28];
        v114 = *&v217[36];
        v115 = *&v217[52];
        v161 = *&v217[68];
        v163 = v222;
        v166 = *v219;
        v170 = v232;
        v118 = sub_10000B1F8(v116, v117);
        v119 = sub_100125220(v118);
        *v269 = 136321027;
        *&v269[4] = "CL-viofused";
        v270 = 1024;
        *v271 = 1;
        *&v271[4] = 2053;
        *&v271[6] = v105;
        *&v271[14] = 2053;
        *&v271[16] = v185;
        *&v271[24] = 2048;
        *&v271[26] = *(&v185 + 1);
        *&v271[34] = 1024;
        *&v271[36] = v106;
        *&v271[40] = 2080;
        *&v271[42] = v107;
        *&v271[50] = 2048;
        *&v271[52] = v108;
        *&v271[60] = 2048;
        *&v271[62] = v109;
        *&v271[70] = 1024;
        *&v271[72] = v174;
        *v272 = 2048;
        *&v272[2] = v178;
        *&v272[10] = 2048;
        *&v272[12] = v182;
        *v273 = 2048;
        *&v273[2] = v111 - v112;
        *&v273[10] = 2048;
        *&v273[12] = v113;
        v274 = 2048;
        v275 = v114;
        v276 = 2048;
        v277 = v115;
        v278 = 2048;
        v279 = v161;
        v280 = 2048;
        v281 = v163;
        v282 = 1024;
        v283 = v166;
        v284 = 1024;
        *v285 = v194 & 1;
        *&v285[4] = 1024;
        *&v285[6] = v194 & 4;
        v286 = 1024;
        v287 = v194 & 2;
        v288 = 1024;
        v289 = v170;
        v290 = 2048;
        v291 = v119;
        LODWORD(v159) = 210;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v192, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,isLocationFused,%d,isLocationPropagated,%d,isCourseFused,%d,isCoordinateFused,%d,propagation_us,%.3f", v269, v159);
        v121 = v120;
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v120);
        if (v121 != buf)
        {
          free(v121);
        }
      }
    }

    if (*(v4 + 674) == 1 && ((*(v4 + 675) & 1) != 0 || *(v4 + 676) == 1) && (*(**(v4 + 280) + 224))(*(v4 + 280), v217, &v220))
    {
      if (qword_1025D48C0 != -1)
      {
        sub_101AACA10();
      }

      v63 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v64 = *&v217[4];
        v188 = *&v217[12];
        v195 = *&v217[20];
        v65 = *v218;
        v191 = sub_1001FD6E4(*v218);
        v66 = *&v217[44];
        v67 = *&v217[60];
        v177 = *&v217[84];
        v181 = *&v217[88];
        v184 = *&v217[76];
        v69 = sub_1000281DC(v191, v68);
        v70 = *&v217[76];
        v71 = *&v217[28];
        v72 = *&v217[36];
        v73 = *&v217[52];
        v165 = *&v217[68];
        v169 = v222;
        v173 = *v219;
        v76 = sub_10000B1F8(v74, v75);
        v77 = sub_100125220(v76);
        *buf = 136320003;
        *&buf[4] = "CL-mapmatched";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v64;
        *&buf[28] = 2053;
        *&buf[30] = v188;
        *&buf[38] = 2048;
        *&buf[40] = v195;
        *&buf[48] = 1024;
        *&buf[50] = v65;
        *&buf[54] = 2080;
        *&buf[56] = v191;
        *&buf[64] = 2048;
        *&buf[66] = v66;
        *&buf[74] = 2048;
        *&buf[76] = v67;
        *&buf[84] = 1024;
        *&buf[86] = v177;
        *&buf[90] = 2048;
        *&buf[92] = v181;
        *&buf[100] = 2048;
        *&buf[102] = v184;
        *&buf[110] = 2048;
        *&buf[112] = v69 - v70;
        *&buf[120] = 2048;
        *&buf[122] = v71;
        *&buf[130] = 2048;
        *&buf[132] = v72;
        *&buf[140] = 2048;
        *&buf[142] = v73;
        *&buf[150] = 2048;
        *&buf[152] = v165;
        v293 = 2048;
        v294 = v169;
        v295 = 1024;
        v296 = v173;
        v297 = 2048;
        *v298 = v77;
        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,propagation_us,%.3f", buf, 0xBAu);
      }

      if (sub_10000A100(123, 2))
      {
        sub_101AACA38(buf);
        v142 = *&v217[4];
        v186 = *&v217[12];
        v193 = *&v217[20];
        v196 = qword_1025D48C8;
        v143 = *v218;
        v189 = sub_1001FD6E4(*v218);
        v144 = *&v217[44];
        v145 = *&v217[60];
        v175 = *&v217[84];
        v179 = *&v217[88];
        v183 = *&v217[76];
        v147 = sub_1000281DC(v189, v146);
        v148 = *&v217[76];
        v149 = *&v217[28];
        v150 = *&v217[36];
        v151 = *&v217[52];
        v152 = *&v217[68];
        v167 = v222;
        v171 = *v219;
        v155 = sub_10000B1F8(v153, v154);
        v156 = sub_100125220(v155);
        *v269 = 136320003;
        *&v269[4] = "CL-mapmatched";
        v270 = 1024;
        *v271 = 1;
        *&v271[4] = 2053;
        *&v271[6] = v142;
        *&v271[14] = 2053;
        *&v271[16] = v186;
        *&v271[24] = 2048;
        *&v271[26] = v193;
        *&v271[34] = 1024;
        *&v271[36] = v143;
        *&v271[40] = 2080;
        *&v271[42] = v189;
        *&v271[50] = 2048;
        *&v271[52] = v144;
        *&v271[60] = 2048;
        *&v271[62] = v145;
        *&v271[70] = 1024;
        *&v271[72] = v175;
        *v272 = 2048;
        *&v272[2] = v179;
        *&v272[10] = 2048;
        *&v272[12] = v183;
        *v273 = 2048;
        *&v273[2] = v147 - v148;
        *&v273[10] = 2048;
        *&v273[12] = v149;
        v274 = 2048;
        v275 = v150;
        v276 = 2048;
        v277 = v151;
        v278 = 2048;
        v279 = v152;
        v280 = 2048;
        v281 = v167;
        v282 = 1024;
        v283 = v171;
        v284 = 2048;
        *v285 = v156;
        LODWORD(v159) = 186;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v196, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,propagation_us,%.3f", v269, v159);
        v158 = v157;
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v157);
        if (v158 != buf)
        {
          free(v158);
        }
      }
    }

    if ((*(**(v4 + 280) + 376))(*(v4 + 280)))
    {
      v78.n128_f64[0] = (*(**(v4 + 280) + 392))(*(v4 + 280), v217, &v220);
    }

    sub_10002364C(v4, v217, v78);
    if (sub_100F27E9C(v4, v217, &v220))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v79 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v80 = *&v217[4];
        v81 = *&v217[12];
        v82 = *&v217[20];
        v83 = *v218;
        v84 = sub_1001FD6E4(*v218);
        *buf = 134548227;
        *&buf[4] = v80;
        *&buf[12] = 2053;
        *&buf[14] = v81;
        *&buf[22] = 2050;
        *&buf[24] = v82;
        *&buf[32] = 1026;
        *&buf[34] = v83;
        *&buf[38] = 2082;
        *&buf[40] = v84;
        *&buf[48] = 2049;
        *&buf[50] = *&v217[28];
        *&buf[58] = 2050;
        *&buf[60] = *&v217[36];
        *&buf[68] = 2050;
        *&buf[70] = v227;
        *&buf[78] = 2050;
        *&buf[80] = v228;
        *&buf[88] = 2049;
        *&buf[90] = v225;
        *&buf[98] = 1026;
        *&buf[100] = v224;
        _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_INFO, "DEM,query,%{sensitive}.7f,%{sensitive}.7f,HorUnc,%{public}.2lf,Type,%{public}d,%{public}s,Alt,%{private}.2f,AltUnc,%{public}.2f,GroundAlt,%{public}.2lf,GroundAltUnc,%{public}.2lf,Undulation,%{private}.3lf,UndulationModel,%{public}d,", buf, 0x68u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AACA7C(buf);
        v122 = qword_1025D4608;
        v123 = *&v217[4];
        v124 = *&v217[12];
        v125 = *&v217[20];
        v126 = *v218;
        v127 = sub_1001FD6E4(*v218);
        *v269 = 134548227;
        *&v269[4] = v123;
        v270 = 2053;
        *v271 = v124;
        *&v271[8] = 2050;
        *&v271[10] = v125;
        *&v271[18] = 1026;
        *&v271[20] = v126;
        *&v271[24] = 2082;
        *&v271[26] = v127;
        *&v271[34] = 2049;
        *&v271[36] = *&v217[28];
        *&v271[44] = 2050;
        *&v271[46] = *&v217[36];
        *&v271[54] = 2050;
        *&v271[56] = v227;
        *&v271[64] = 2050;
        *&v271[66] = v228;
        *&v271[74] = 2049;
        *v272 = v225;
        *&v272[8] = 1026;
        *&v272[10] = v224;
        LODWORD(v159) = 104;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v122, 1, "DEM,query,%{sensitive}.7f,%{sensitive}.7f,HorUnc,%{public}.2lf,Type,%{public}d,%{public}s,Alt,%{private}.2f,AltUnc,%{public}.2f,GroundAlt,%{public}.2lf,GroundAltUnc,%{public}.2lf,Undulation,%{private}.3lf,UndulationModel,%{public}d,", v269, v159);
        v129 = v128;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v128);
        if (v129 != buf)
        {
          free(v129);
        }
      }
    }

    if ((*(**(v4 + 280) + 272))(*(v4 + 280), v217, &v220))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v85 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v86 = *&v217[4];
        v87 = *&v217[12];
        v88 = *&v217[20];
        v89 = *v218;
        v90 = sub_1001FD6E4(*v218);
        *buf = 134547715;
        *&buf[4] = v86;
        *&buf[12] = 2053;
        *&buf[14] = v87;
        *&buf[22] = 2050;
        *&buf[24] = v88;
        *&buf[32] = 1026;
        *&buf[34] = v89;
        *&buf[38] = 2082;
        *&buf[40] = v90;
        *&buf[48] = 2049;
        *&buf[50] = *&v217[28];
        *&buf[58] = 2050;
        *&buf[60] = *&v217[36];
        *&buf[68] = 2050;
        *&buf[70] = v225;
        *&buf[78] = 1026;
        *&buf[80] = v224;
        _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_INFO, "BaroAlt,%{sensitive}.7f,%{sensitive}.7f,HorUnc,%{public}.2lf,Type,%{public}d,%{public}s,Alt,%{private}.2f,AltUnc,%{public}.2f,undulation,%{public}.3f,undulationModel,%{public}d", buf, 0x54u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AACA7C(buf);
        v130 = qword_1025D4608;
        v131 = *&v217[4];
        v132 = *&v217[12];
        v133 = *&v217[20];
        v134 = *v218;
        v135 = sub_1001FD6E4(*v218);
        *v269 = 134547715;
        *&v269[4] = v131;
        v270 = 2053;
        *v271 = v132;
        *&v271[8] = 2050;
        *&v271[10] = v133;
        *&v271[18] = 1026;
        *&v271[20] = v134;
        *&v271[24] = 2082;
        *&v271[26] = v135;
        *&v271[34] = 2049;
        *&v271[36] = *&v217[28];
        *&v271[44] = 2050;
        *&v271[46] = *&v217[36];
        *&v271[54] = 2050;
        *&v271[56] = v225;
        *&v271[64] = 1026;
        *&v271[66] = v224;
        LODWORD(v159) = 84;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v130, 1, "BaroAlt,%{sensitive}.7f,%{sensitive}.7f,HorUnc,%{public}.2lf,Type,%{public}d,%{public}s,Alt,%{private}.2f,AltUnc,%{public}.2f,undulation,%{public}.3f,undulationModel,%{public}d", v269, v159);
        v137 = v136;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v136);
        if (v137 != buf)
        {
          free(v137);
        }
      }
    }

    v209 = 0uLL;
    v210 = 0;
    if ((*(**(v4 + 280) + 280))(*(v4 + 280), &v209))
    {
      v91 = [objc_msgSend(*(v4 + 32) "vendor")];
      if (v91)
      {
        *buf = v209;
        *&buf[16] = v210;
        [v91 setBarometricAltitudeAWDData:buf];
      }
    }

    *&v219[16] = 0;
    if ((v224 - 1) <= 1)
    {
      *&v219[16] = *&v217[28] + v225;
    }

    v92 = *&v217[20];
    if (*&v217[20] >= 0.0)
    {
      if (*&v217[20] < 1.0)
      {
        v92 = 1.0;
      }

      *&v217[20] = v92;
    }

    v93 = *&v217[36];
    if (*&v217[36] >= 0.0)
    {
      if (*&v217[36] < 3.0)
      {
        v93 = 3.0;
      }

      *&v217[36] = v93;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101AACAC0();
    }

    v94 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134548737;
      *&buf[4] = *&v217[4];
      *&buf[12] = 2053;
      *&buf[14] = *&v217[12];
      *&buf[22] = 2050;
      *&buf[24] = *&v217[20];
      *&buf[32] = 2049;
      *&buf[34] = *&v217[44];
      *&buf[42] = 2049;
      *&buf[44] = *&v217[60];
      *&buf[52] = 1026;
      *&buf[54] = *v218;
      *&buf[58] = 2049;
      *&buf[60] = *&v217[28];
      *&buf[68] = 2050;
      *&buf[70] = *&v217[36];
      *&buf[78] = 2049;
      *&buf[80] = *&v219[16];
      *&buf[88] = 2050;
      *&buf[90] = *&v217[52];
      *&buf[98] = 2050;
      *&buf[100] = *&v217[68];
      *&buf[108] = 1025;
      *&buf[110] = *&v219[12];
      *&buf[114] = 2050;
      *&buf[116] = *&v217[76];
      _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEFAULT, "@ClxClient, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, signalEnv, %{private}d, timestamp, %{public}.3f", buf, 0x7Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AACAE8(buf);
      *v269 = 134548737;
      *&v269[4] = *&v217[4];
      v270 = 2053;
      *v271 = *&v217[12];
      *&v271[8] = 2050;
      *&v271[10] = *&v217[20];
      *&v271[18] = 2049;
      *&v271[20] = *&v217[44];
      *&v271[28] = 2049;
      *&v271[30] = *&v217[60];
      *&v271[38] = 1026;
      *&v271[40] = *v218;
      *&v271[44] = 2049;
      *&v271[46] = *&v217[28];
      *&v271[54] = 2050;
      *&v271[56] = *&v217[36];
      *&v271[64] = 2049;
      *&v271[66] = *&v219[16];
      *&v271[74] = 2050;
      *v272 = *&v217[52];
      *&v272[8] = 2050;
      *&v272[10] = *&v217[68];
      *&v272[18] = 1025;
      *v273 = *&v219[12];
      *&v273[4] = 2050;
      *&v273[6] = *&v217[76];
      LODWORD(v159) = 124;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@ClxClient, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, signalEnv, %{private}d, timestamp, %{public}.3f", v269, v159);
      v104 = v103;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v103);
      if (v104 != buf)
      {
        free(v104);
      }
    }

    if (sub_10002807C(*&v217[4], *&v217[12]))
    {
      v97 = sub_1001FD6E4(*v218);
      if (qword_1025D4620 != -1)
      {
        sub_101AACAC0();
      }

      v98 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136380931;
        *&buf[4] = "client, null";
        *&buf[12] = 2081;
        *&buf[14] = v97;
        _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AACAE8(buf);
        *v269 = 136380931;
        *&v269[4] = "client, null";
        v270 = 2081;
        *v271 = v97;
        LODWORD(v159) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", v269, v159);
        v139 = v138;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v138);
        if (v139 != buf)
        {
          free(v139);
        }
      }

      v204 = _NSConcreteStackBlock;
      v205 = 3221225472;
      v206 = sub_100E6F068;
      v207 = &unk_102449CF8;
      v208 = v97;
      AnalyticsSendEventLazy();
    }

    v96.n128_u64[0] = *&v217[4];
    v95.n128_u64[0] = -1.0;
    if (*&v217[4] == -1.0)
    {
      v96.n128_u64[0] = *&v217[12];
      if (*&v217[12] == -1.0)
      {
        v99 = sub_1001FD6E4(*v218);
        if (qword_1025D4620 != -1)
        {
          sub_101AACAC0();
        }

        v100 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136380931;
          *&buf[4] = "client, sentinel";
          *&buf[12] = 2081;
          *&buf[14] = v99;
          _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AACAE8(buf);
          *v269 = 136380931;
          *&v269[4] = "client, sentinel";
          v270 = 2081;
          *v271 = v99;
          LODWORD(v159) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", v269, v159);
          v141 = v140;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v140);
          if (v141 != buf)
          {
            free(v141);
          }
        }

        v199 = _NSConcreteStackBlock;
        v200 = 3221225472;
        v201 = sub_100E6F114;
        v202 = &unk_102449CF8;
        v203 = v99;
        AnalyticsSendEventLazy();
      }
    }

    *buf = 39;
    (*(*v4 + 152))(v4, buf, v217, 1, 0xFFFFFFFFLL, 0, v95, v96);
    if (_os_feature_enabled_impl())
    {
      sub_1002150AC(v4 + 360, v217, buf);
      *v218 = *&buf[96];
      *&v218[16] = *&buf[112];
      *v219 = *&buf[128];
      *&v219[12] = *&buf[140];
      *&v217[32] = *&buf[32];
      *&v217[48] = *&buf[48];
      *&v217[64] = *&buf[64];
      *&v217[80] = *&buf[80];
      *v217 = *buf;
      *&v217[16] = *&buf[16];
    }

    *buf = 0;
    (*(*v4 + 152))(v4, buf, v217, 1, 0xFFFFFFFFLL, 0);
    *v269 = 0xBFF0000000000000;
    v198 = 0;
    (*(**(v4 + 280) + 328))(*(v4 + 280), v217, &v198, v269);
    if (v198 == 1)
    {
      sub_100021AFC(buf);
      v307 = *v269;
      v308 = *&v217[76];
      v197 = 20;
      (*(*v4 + 152))(v4, &v197, buf, 1, 0xFFFFFFFFLL, 0);

      if (v311)
      {
        sub_100008080(v311);
      }

      if (v310 < 0)
      {
        operator delete(v309);
      }

      if (v306)
      {
        sub_100008080(v306);
      }

      if (v305)
      {
        sub_100008080(v305);
      }
    }

    v101 = *(v4 + 312);
    if (v101)
    {
      sub_1002180B0(v101, v217, v226);
    }

    sub_100215910(v4 + 5296, v217);

    if (v242)
    {
      sub_100008080(v242);
    }

    if (v241 < 0)
    {
      operator delete(__p);
    }

    if (v239)
    {
      sub_100008080(v239);
    }

    if (v238)
    {
      sub_100008080(v238);
    }

LABEL_160:
    sub_10010B730(v4, v22);
    if (v267)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(v4 + 673);
    }

    goto LABEL_163;
  }

  v13 = 0;
LABEL_163:

  if (v265)
  {
    sub_100008080(v265);
  }

  if (v264 < 0)
  {
    operator delete(v263);
  }

  if (v262)
  {
    sub_100008080(v262);
  }

  if (v261)
  {
    sub_100008080(v261);
  }

  return v13 & 1;
}

void sub_100202038(uint64_t a1, unsigned int *a2, __int128 *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onCellNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onCellNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100202214(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100202214(uint64_t a1, uint64_t a2, unsigned int *a3, __int128 *a4)
{
  v13 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v14);
  sub_10000B324(v7, v14[0].i64);
  v15 = 14;
  v14[0].i32[0] = 14;
  v8 = sub_10000AD98(&v15);
  v14[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v15 = 4;
  sub_10001E898(v10, &v15, v14, (a1 + 5220), &v13, a3, a4);
  sub_10010CA08(a1, *(a1 + 332), v11, a3, a4);
  v12 = *(a1 + 784);
  if (v12)
  {
    sub_1001FAE80(v12, a4);
  }
}

uint64_t sub_1002022D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4280))
  {
    return 0;
  }

  v21 = v3;
  v22 = v4;
  if (!*(a1 + 3912) || (*(a3 + 425) & 1) != 0)
  {
    return 0;
  }

  v9 = *(a2 + 96);
  v10 = (v9 & 0xFFFFFFF7) == 1 || (v9 | 8) == 11;
  if (v10 || (result = 0, v9 == 2) && (*(a1 + 4033) & 1) != 0)
  {
    sub_1002B4D50(a1, a2);
    v11 = *(a2 + 16);
    *(a1 + 4088) = *a2;
    *(a1 + 4104) = v11;
    v12 = *(a2 + 32);
    v13 = *(a2 + 48);
    v14 = *(a2 + 80);
    *(a1 + 4152) = *(a2 + 64);
    *(a1 + 4168) = v14;
    *(a1 + 4120) = v12;
    *(a1 + 4136) = v13;
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
    v17 = *(a2 + 128);
    *(a1 + 4228) = *(a2 + 140);
    *(a1 + 4200) = v16;
    *(a1 + 4216) = v17;
    *(a1 + 4184) = v15;
    result = (*(**(a1 + 3912) + 40))(*(a1 + 3912), a2, a3);
    v18 = *(a1 + 4408);
    if (v18)
    {
      if (result)
      {
        if (!*(a1 + 4416))
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101956260();
          }

          v19 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLMM,Creating mapmatcher OS transaction", v20, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101956E08();
          }

          *(a1 + 4416) = os_transaction_create();
          v18 = *(a1 + 4408);
        }

        [v18 setNextFireDelay:300.0];
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100202484(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = 0;
LABEL_175:
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v138 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v138, OS_LOG_TYPE_ERROR, "#Error,fusion data association: init failed, null or hunc <= 0", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *v218 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,fusion data association: init failed, null or hunc <= 0", v218, 2);
      v166 = v165;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v165);
      if (v166 != buf)
      {
        free(v166);
      }
    }

    goto LABEL_180;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_175;
  }

  v6 = *a2;
  if (!*a2 || *(v6 + 40) <= 0.0)
  {
    goto LABEL_175;
  }

  v195 = 0.0;
  v196 = 0.0;
  v189 = v5;
  if ((sub_100208760((a1 + 2384), &v196, &v195, *(v6 + 24), *(a1 + 2248)) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v141 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v141, OS_LOG_TYPE_ERROR, "#Error,fusion data association, calc_dNdE failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *v218 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,fusion data association, calc_dNdE failed", v218, 2);
      v143 = v142;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v142);
      if (v143 != buf)
      {
        free(v143);
      }

      v139 = 0;
LABEL_194:
      v5 = v189;
      goto LABEL_181;
    }

LABEL_180:
    v139 = 0;
    goto LABEL_181;
  }

  v8 = *(a1 + 248);
  v193 = a1;
  if (!v8)
  {
    v194 = 0;
    v10 = 1.79769313e308;
    goto LABEL_196;
  }

  v192 = 0;
  v194 = 0;
  v9 = 0.0174532925;
  v10 = 1.79769313e308;
  v11 = v196 * 0.0174532925;
  v188 = v195 * 0.0174532925;
  __asm { FMOV            V0.2D, #-1.0 }

  v191 = _Q0;
  _Q0.f64[0] = NAN;
  _Q0.f64[1] = NAN;
  v190 = vnegq_f64(_Q0);
  do
  {
    v16 = v8[7];
    v17 = v16 / 0x1A;
    v18 = v8[4];
    v19 = v8[5];
    if (v19 == v18)
    {
      v21 = 0;
      v24 = 0;
      v23 = (v18 + ((((v8[8] + v16) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
      v20 = v16 % 0x1A;
    }

    else
    {
      v20 = v16 % 0x1A;
      v21 = *(v18 + 8 * v17) + 152 * (v16 % 0x1A);
      v22 = v8[8] + v16;
      v23 = (v18 + 8 * (v22 / 0x1A));
      v24 = *v23 + 152 * (v22 % 0x1A);
    }

    v25 = (v18 + 8 * v17);
    v26 = 1.79769313e308;
    v27 = v25;
    while (1)
    {
      v28 = v24;
      v29 = v23;
      v30 = v19 == v18 ? 0 : *v25 + 152 * v20;
      if (v30 == v24)
      {
        break;
      }

      if (v24 == *v29)
      {
        v23 = v29 - 1;
        v32 = *(v29 - 1);
        if ((*(v32 + 3948) & 1) == 0)
        {
LABEL_26:
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v34 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
          {
            v35 = v28;
            if (v28 == *v29)
            {
              v35 = *(v29 - 1) + 3952;
            }

            v36 = *(v8 + 212);
            v37 = *(v35 - 120);
            *buf = 67240448;
            *v224 = v36;
            *&v224[4] = 2050;
            *&v224[6] = v37;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "#Error,fusion data association, found no fused location in the buffer, hID,%{public}d,bufferedLocation_mct,%{public}.3f", buf, 0x12u);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v38 = *(v8 + 212);
            if (v28 == *v29)
            {
              v28 = *(v29 - 1) + 3952;
            }

            v39 = *(v28 - 120);
            *v218 = 67240448;
            *&v218[4] = v38;
            *&v218[8] = 2050;
            *&v218[10] = v39;
            LODWORD(v178) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,fusion data association, found no fused location in the buffer, hID,%{public}d,bufferedLocation_mct,%{public}.3f", v218, v178);
            v41 = v40;
            sub_100152C7C("Generic", 1, 0, 0, "auto cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)::(anonymous class)::operator()(LCFusionLocationHypothesis &) const", "%s\n", v40);
            if (v41 != buf)
            {
              free(v41);
            }
          }

LABEL_41:
          v42 = 1.79769313e308;
          goto LABEL_42;
        }

        v31 = vabdd_f64(*(v32 + 3832), *(v6 + 16));
        if (v31 > v26)
        {
          break;
        }

        v24 = v32 + 3952;
      }

      else
      {
        if ((*(v24 - 4) & 1) == 0)
        {
          goto LABEL_26;
        }

        v31 = vabdd_f64(*(v24 - 120), *(v6 + 16));
        v23 = v29;
        if (v31 > v26)
        {
          break;
        }
      }

      v24 -= 152;
      v27 = v29;
      v21 = v28;
      v26 = v31;
    }

    if (v19 == v18)
    {
      v33 = 0;
    }

    else
    {
      v33 = *v25 + 152 * v20;
    }

    if (v33 == v21)
    {
      goto LABEL_41;
    }

    v73 = v21;
    if (v21 == *v27)
    {
      v73 = *(v27 - 1) + 3952;
    }

    v74 = *(v73 - 96);
    *&v218[8] = v191;
    *&v218[40] = xmmword_101C75BF0;
    *&v218[56] = xmmword_101C75BF0;
    *&v218[72] = v191;
    v219 = v191;
    *v218 = off_1024DE5F8;
    v220 = 0xBFF0000000000000;
    v221 = 0;
    v222 = 0;
    if (v21 == *v27)
    {
      v77 = *(v27 - 1);
      if (*(v77 + 3832) > *(v6 + 16))
      {
        v75 = (v77 + 3832);
        v76 = v77 + 3952;
        goto LABEL_97;
      }

      *buf = *(v77 + 3944);
LABEL_106:
      operator new();
    }

    v75 = (v21 - 120);
    if (*(v21 - 120) <= *(v6 + 16))
    {
      *buf = 4;
      *buf = *(v21 - 8);
      goto LABEL_106;
    }

    v76 = v21;
LABEL_97:
    *buf = 4;
    *buf = *(v76 - 8);
    v78 = a2[1];
    v199 = *a2;
    v200 = v78;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v79 = sub_100208A64(a1 + 1552, v75, buf, &v199, v218);
    if (v200)
    {
      std::__shared_weak_count::__release_weak(v200);
    }

    if (!v79)
    {
      goto LABEL_41;
    }

    if (v21 == *v27)
    {
      v83 = *(v27 - 1);
      v81 = *(v83 + 3840) - *&v218[24];
      v82 = v83 + 3952;
    }

    else
    {
      v81 = *(v21 - 112) - *&v218[24];
      v82 = v21;
    }

    v84 = *&v218[32];
    *v80.i64 = *(v82 - 104) * v9;
    v85 = 0x400921FB54442D18uLL;
    if (fabs(*v80.i64) <= 3.14159265)
    {
      v87 = 0x400921FB54442D18uLL;
    }

    else
    {
      v185 = vbslq_s8(v190, 0x400921FB54442D18uLL, v80);
      v86 = fmod(*v80.i64 + *v185.i64, 6.28318531);
      v87 = 0x400921FB54442D18uLL;
      v85.i64[1] = v185.i64[1];
      *v80.i64 = v86 - *v185.i64;
    }

    *v85.i64 = v84 * v9;
    v88.i64[1] = v87.i64[1];
    if (fabs(v84 * v9) > *v87.i64)
    {
      v186 = v80.i64[0];
      v183 = *vbslq_s8(v190, v87, v85).i64;
      *v88.i64 = fmod(*v85.i64 + v183, 6.28318531);
      v87 = 0x400921FB54442D18uLL;
      v80.i64[0] = v186;
      *v85.i64 = *v88.i64 - v183;
    }

    *v88.i64 = *v80.i64 - *v85.i64;
    if (vabdd_f64(*v80.i64, *v85.i64) > *v87.i64)
    {
      v187 = *vbslq_s8(v190, v87, v88).i64;
      *v88.i64 = fmod(*v88.i64 + v187, 6.28318531) - v187;
    }

    v89 = *&v218[40] * *&v218[40] * 0.5;
    v90 = v74 * v74 * 0.5;
    v91 = v188 * (*v88.i64 * 57.2957795) * (v188 * (*v88.i64 * 57.2957795));
    v92 = v11 * v81 * (v11 * v81);
    v93 = *(v8 + 140);
    if (((v93 - 1) >= 5 && v93 != 10 || (v93 - 3) > 7 || (v94 = v8[8] + v8[7] - 1, *(*(v8[4] + 8 * (v94 / 0x1A)) + 152 * (v94 % 0x1A) + 88) < 1.0)) && (*(v6 + 124) | 2) == 3 && (v95 = *(v6 + 80), v95 > 0.0) && v95 < 5.0 && (v96 = *(v6 + 72), v96 >= 2.0))
    {
      v90 = v90 + v96 * v96;
    }

    else if (*(v6 + 123) == 1)
    {
      v97 = v21;
      if (v21 == *v27)
      {
        v97 = *(v27 - 1) + 3952;
      }

      v98 = *(v6 + 16);
      if (v98 >= *(v97 - 120) && !sub_1001253BC(a1 + 2424, v98, -1.0))
      {
        v184 = v9;
        v99 = v91 + v92;
        if (((sub_100681564(a1 + 2424, *(v6 + 16), 6.0) & 1) != 0 || sub_1002F8B34(a1 + 2424, *(v6 + 16), 6.0)) && v99 > (v90 + v89) * 9.0)
        {
          _NF = v99 < v26 * 50.0 * (v26 * 50.0);
          v9 = v184;
          if (_NF)
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v100 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              if (v21 == *v27)
              {
                v103 = *(v27 - 1);
                v101 = (v103 + 3832);
                v181 = *&v218[40];
                v102 = v103 + 3952;
              }

              else
              {
                v101 = (v21 - 120);
                v181 = *&v218[40];
                v102 = v21;
              }

              v104 = *v101;
              v179 = *(v102 - 96);
              v180 = *(v6 + 40);
              v105 = v8[8] + v8[7] - 1;
              v106 = *(*(v8[4] + 8 * (v105 / 0x1A)) + 152 * (v105 % 0x1A) + 32);
              sub_1001FCE40(a1 + 2424, __p);
              v107 = __p;
              if (v204 < 0)
              {
                v107 = *__p;
              }

              *buf = 134351106;
              *v224 = v104;
              *&v224[8] = 2050;
              *&v224[10] = v26;
              *&v224[18] = 2050;
              *&v224[20] = v91 + v92;
              *&v224[28] = 2050;
              v225 = v90 + v89;
              v226 = 2050;
              v227 = v181;
              v228 = 2050;
              v229 = v179;
              v230 = 2050;
              *v231 = v180;
              *&v231[8] = 2050;
              v232 = v106;
              v233 = 2082;
              v234 = v107;
              _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "#fusion,data association,catching up with WSB fix by inflating validation gate,lastFilterUpdateMCT,%{public}.3f,abs_deltaTimeToFusedState_s,%{public}.3f,innovation_sqrd,%{public}.3f,innovation_var,%{public}.3f,timealignedHunc,%{public}.3f,fusedStateHunc,%{public}.3f,wsbHunc,%{public}.3f,lastFusedStateMCT,%{public}.3f,MotionActivity,%{public}s", buf, 0x5Cu);
              if (SHIBYTE(v204) < 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v182 = qword_1025D4778;
              if (v21 == *v27)
              {
                v129 = *(v27 - 1);
                v127 = (v129 + 3832);
                v128 = *&v218[40];
                v21 = v129 + 3952;
              }

              else
              {
                v127 = (v21 - 120);
                v128 = *&v218[40];
              }

              v130 = *v127;
              v131 = *(v21 - 96);
              v132 = *(v6 + 40);
              v133 = v8[8] + v8[7] - 1;
              v134 = *(*(v8[4] + 8 * (v133 / 0x1A)) + 152 * (v133 % 0x1A) + 32);
              sub_1001FCE40(a1 + 2424, v197);
              v135 = v197;
              if (v198 < 0)
              {
                v135 = v197[0];
              }

              *__p = 134351106;
              *&__p[4] = v130;
              v202 = 2050;
              v203 = v26;
              v204 = 2050;
              v205 = v91 + v92;
              v206 = 2050;
              v207 = v90 + v89;
              v208 = 2050;
              v209 = v128;
              v210 = 2050;
              v211 = v131;
              v212 = 2050;
              v213 = v132;
              v214 = 2050;
              v215 = v134;
              v216 = 2082;
              v217 = v135;
              LODWORD(v178) = 92;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v182, 2, "#fusion,data association,catching up with WSB fix by inflating validation gate,lastFilterUpdateMCT,%{public}.3f,abs_deltaTimeToFusedState_s,%{public}.3f,innovation_sqrd,%{public}.3f,innovation_var,%{public}.3f,timealignedHunc,%{public}.3f,fusedStateHunc,%{public}.3f,wsbHunc,%{public}.3f,lastFusedStateMCT,%{public}.3f,MotionActivity,%{public}s", __p, v178);
              v137 = v136;
              if (v198 < 0)
              {
                operator delete(v197[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)::(anonymous class)::operator()(LCFusionLocationHypothesis &) const", "%s\n", v137);
              if (v137 != buf)
              {
                free(v137);
              }

              v9 = v184;
            }

            v90 = (v91 + v92) * 0.25;
            sub_1006ECC94((v8 + 25), sqrt(v90 + v90));
          }
        }

        else
        {
          v9 = v184;
        }
      }
    }

    v42 = v92 * (1.0 / (v89 + v90)) + v91 * (1.0 / (v89 + v90));
LABEL_42:
    v43 = v194;
    if (v42 < v10)
    {
      v43 = v8;
    }

    v194 = v43;
    if (v42 < v10)
    {
      v10 = v42;
    }

    v44 = *(v8 + 140) - 1;
    if (v44 < 0xA && ((0x21Fu >> v44) & 1) != 0 || (*(a1 + 2800) & 1) != 0)
    {
      v45 = 6.18007;
    }

    else
    {
      v46 = *(v6 + 124);
      if ((v46 & 0xFFFFFFFE) == 6 || v46 == 8)
      {
        v45 = 6.18007;
      }

      else
      {
        v45 = 11.8292;
      }
    }

    if (v42 <= v45)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v51 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(v8 + 212);
        v53 = *(v8 + 214);
        *buf = 134349824;
        *v224 = v42;
        *&v224[8] = 2050;
        *&v224[10] = v45;
        *&v224[18] = 1026;
        *&v224[20] = v52;
        *&v224[24] = 1026;
        *&v224[26] = v53;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "#fusion,data association success,mahalanobis distance (squared),%{public}.2f,GatingThreshold,%{public}.2f,hID,%{public}d,hypothesisState,%{public}d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v112 = *(v8 + 212);
        v113 = *(v8 + 214);
        *v218 = 134349824;
        *&v218[4] = v42;
        *&v218[12] = 2050;
        *&v218[14] = v45;
        *&v218[22] = 1026;
        *&v218[24] = v112;
        *&v218[28] = 1026;
        *&v218[30] = v113;
        LODWORD(v178) = 34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,data association success,mahalanobis distance (squared),%{public}.2f,GatingThreshold,%{public}.2f,hID,%{public}d,hypothesisState,%{public}d", v218, v178);
        v115 = v114;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v114);
        if (v115 != buf)
        {
          free(v115);
        }
      }

      v54 = v8[8] + v8[7] - 1;
      v55 = *(v8[4] + 8 * (v54 / 0x1A)) + 152 * (v54 % 0x1A);
      if (*(v55 + 148) == 1 && *(v6 + 16) >= *(v55 + 32))
      {
        sub_10002F4A0(v55 + 16, "data association success", *(v8 + 212));
        if (*(a1 + 2904) == 1)
        {
          v57 = v8[8] + v8[7] - 1;
          v58 = *(v8[4] + 8 * (v57 / 0x1A)) + 152 * (v57 % 0x1A);
          if (*(v58 + 56) * 3.0 < *(v6 + 40))
          {
            v59 = *(v8 + 140);
            if (((v59 - 1) < 5 || v59 == 10) && (*(a1 + 2800) != 1 || (*(a1 + 2778) & 1) == 0))
            {
              v60 = sub_10020CECC(v58 + 16, v56);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v61 = v60 * 50.0;
              v62 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v63 = v8[8] + v8[7] - 1;
                v64 = *(*(v8[4] + 8 * (v63 / 0x1A)) + 152 * (v63 % 0x1A) + 56);
                v65 = *(v8 + 98);
                *buf = 134350848;
                v66 = sqrt(v65);
                v67 = *(v6 + 40);
                v68 = *(a1 + 2800);
                v69 = *(a1 + 2778);
                *v224 = v60;
                v70 = v65 <= 0.0;
                v71 = -1.0;
                if (!v70)
                {
                  v71 = v66;
                }

                *&v224[8] = 2050;
                *&v224[10] = v64;
                *&v224[18] = 2050;
                *&v224[20] = v71;
                *&v224[28] = 2050;
                if (v61 <= v67)
                {
                  v72 = v60 * 50.0;
                }

                else
                {
                  v72 = v67;
                }

                v225 = v60 * 50.0;
                v226 = 2050;
                v227 = v67;
                v228 = 2050;
                v229 = v72;
                v230 = 1026;
                *v231 = v68;
                *&v231[4] = 1026;
                *&v231[6] = v69;
                _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "#fusion,data association success,timeSinceLastLocation_s,%{public}.3f,fusedLocationHunc,%{public}.3f,fusedFilterHunc,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,inputLocHunc,%{public}.3f,adjust_fusedLocationHunc_to,%{public}.3f,linkIsAssociated,%{public}d,inVisit,%{public}d", buf, 0x4Au);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v116 = v8[8] + v8[7] - 1;
                v117 = *(*(v8[4] + 8 * (v116 / 0x1A)) + 152 * (v116 % 0x1A) + 56);
                v118 = *(v8 + 98);
                *v218 = 134350848;
                v119 = sqrt(v118);
                v120 = *(v6 + 40);
                v121 = *(a1 + 2800);
                v122 = *(a1 + 2778);
                *&v218[4] = v60;
                v70 = v118 <= 0.0;
                v123 = -1.0;
                if (!v70)
                {
                  v123 = v119;
                }

                *&v218[12] = 2050;
                *&v218[14] = v117;
                *&v218[22] = 2050;
                *&v218[24] = v123;
                if (v61 <= v120)
                {
                  v124 = v60 * 50.0;
                }

                else
                {
                  v124 = v120;
                }

                *&v218[32] = 2050;
                *&v218[34] = v60 * 50.0;
                *&v218[42] = 2050;
                *&v218[44] = v120;
                *&v218[52] = 2050;
                *&v218[54] = v124;
                *&v218[62] = 1026;
                *&v218[64] = v121;
                *&v218[68] = 1026;
                *&v218[70] = v122;
                LODWORD(v178) = 74;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,data association success,timeSinceLastLocation_s,%{public}.3f,fusedLocationHunc,%{public}.3f,fusedFilterHunc,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,inputLocHunc,%{public}.3f,adjust_fusedLocationHunc_to,%{public}.3f,linkIsAssociated,%{public}d,inVisit,%{public}d", v218, v178);
                v126 = v125;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v125);
                if (v126 != buf)
                {
                  free(v126);
                }
              }
            }
          }
        }
      }

      sub_100204720((v8 + 1), a2);
      v192 = 1;
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v48 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v49 = *(v8 + 212);
        v50 = *(v8 + 214);
        *buf = 134349824;
        *v224 = v42;
        *&v224[8] = 2050;
        *&v224[10] = v45;
        *&v224[18] = 1026;
        *&v224[20] = v49;
        *&v224[24] = 1026;
        *&v224[26] = v50;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "#fusion,lost data association,mahalanobis distance (squared),%{public}.2f,GatingThreshold,%{public}.2f,hID,%{public}d,hypothesisState,%{public}d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v108 = *(v8 + 212);
        v109 = *(v8 + 214);
        *v218 = 134349824;
        *&v218[4] = v42;
        *&v218[12] = 2050;
        *&v218[14] = v45;
        *&v218[22] = 1026;
        *&v218[24] = v108;
        *&v218[28] = 1026;
        *&v218[30] = v109;
        LODWORD(v178) = 34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,lost data association,mahalanobis distance (squared),%{public}.2f,GatingThreshold,%{public}.2f,hID,%{public}d,hypothesisState,%{public}d", v218, v178);
        v111 = v110;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v110);
        if (v111 != buf)
        {
          free(v111);
        }
      }

      if (*(v8 + 214) == 2)
      {
        *(v8 + 214) = 3;
      }

      ++*(v8 + 213);
    }

    v8 = *v8;
  }

  while (v8);
  if (v192)
  {
    v139 = 1;
    goto LABEL_194;
  }

LABEL_196:
  v5 = v189;
  if ((*(v6 + 124) - 6) <= 2 && sub_100D70044(a1, v6))
  {
    if (v194)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v144 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v145 = *(v194 + 212);
        *buf = 134349312;
        *v224 = v10;
        *&v224[8] = 1026;
        *&v224[10] = v145;
        _os_log_impl(dword_100000000, v144, OS_LOG_TYPE_DEBUG, "#fusion,data association failed,smallest mahalanobis distance (squared),%{public}.2f,hID,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v175 = *(v194 + 212);
        *v218 = 134349312;
        *&v218[4] = v10;
        *&v218[12] = 1026;
        *&v218[14] = v175;
        LODWORD(v178) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,data association failed,smallest mahalanobis distance (squared),%{public}.2f,hID,%{public}d", v218, v178);
        v177 = v176;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v176);
        if (v177 != buf)
        {
          free(v177);
        }

        v5 = v189;
      }
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v146 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v146, OS_LOG_TYPE_DEBUG, "#fusion,Rejected inconsistent input cell location in favor of a-priori state", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v218 = 0;
      LODWORD(v178) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,Rejected inconsistent input cell location in favor of a-priori state", v218, v178);
      v168 = v167;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v167);
      if (v168 != buf)
      {
        free(v168);
      }

      v5 = v189;
    }

    v139 = 0;
    v147 = 7;
    goto LABEL_218;
  }

  v148 = *(a1 + 248);
  if (*(a1 + 2904) != 1)
  {
    if (v148)
    {
      goto LABEL_227;
    }

    goto LABEL_220;
  }

  if (!v148)
  {
LABEL_220:
    if (*(a1 + 2936))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v151 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v152 = *(a1 + 2936);
        *buf = 134349056;
        *v224 = v152;
        _os_log_impl(dword_100000000, v151, OS_LOG_TYPE_DEBUG, "#fusion,keep AOP buffered data while FusedHypotheses is empty,size of AOP buffer,%{public}zu", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v172 = *(a1 + 2936);
        *v218 = 134349056;
        *&v218[4] = v172;
        LODWORD(v178) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,keep AOP buffered data while FusedHypotheses is empty,size of AOP buffer,%{public}zu", v218, v178);
        v174 = v173;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v173);
        if (v174 != buf)
        {
          free(v174);
        }
      }
    }

    v148 = *(a1 + 248);
    if (!v148)
    {
LABEL_247:
      bzero(buf, 0x388uLL);
      sub_100856684(buf);
      operator new();
    }

    do
    {
LABEL_227:
      if ((v148[107] & 0xFFFFFFFB) != 0)
      {
        if (v148[8])
        {
          v153.n128_f64[0] = sub_10020CECC(*(v148[4] + 8 * (v148[7] / 0x1AuLL)) + 152 * (v148[7] % 0x1AuLL) + 16, v7);
          if (v153.n128_f64[0] < 15.0)
          {
            v154 = v153.n128_u64[0];
            v155 = *(a1 + 2792);
            if (!v155 || v155[1] != 1 || (*v155 & 1) == 0)
            {
              *__p = v153.n128_f64[0] / 15.0 * 0.2 + 0.00000001;
              v156 = (v148 + 102);
              v157 = *(v148 + 102);
              if (*__p < v157)
              {
                v156 = __p;
              }

              if (v157 < 0.00000001)
              {
                v156 = &unk_101CFC6F8;
              }

              v153.n128_u64[0] = *v156;
              sub_10116952C((v148 + 1), v153, v157);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v158 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v159 = *(v148 + 212);
                v160 = v148[102];
                *buf = 67240704;
                *v224 = v159;
                *&v224[4] = 2050;
                *&v224[6] = v154;
                *&v224[14] = 2050;
                *&v224[16] = v160;
                _os_log_impl(dword_100000000, v158, OS_LOG_TYPE_DEBUG, "#fusion,Provisional hypothesis likelihood restricted hID,%{public}d,age_s,%{public}.3f,likelihood,%{public}.3f", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v161 = *(v148 + 212);
                v162 = v148[102];
                *v218 = 67240704;
                *&v218[4] = v161;
                *&v218[8] = 2050;
                *&v218[10] = v154;
                *&v218[18] = 2050;
                *&v218[20] = v162;
                LODWORD(v178) = 28;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,Provisional hypothesis likelihood restricted hID,%{public}d,age_s,%{public}.3f,likelihood,%{public}.3f", v218, v178);
                v164 = v163;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v163);
                if (v164 != buf)
                {
                  free(v164);
                }

                a1 = v193;
              }
            }
          }
        }
      }

      v148 = *v148;
    }

    while (v148);
    goto LABEL_247;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v149 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v150 = *(v6 + 124);
    *buf = 67240192;
    *v224 = v150;
    _os_log_impl(dword_100000000, v149, OS_LOG_TYPE_DEBUG, "#fusion,lost data association: ignore input location type,%{public}d,to process buffered data on wakeup", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v169 = *(v6 + 124);
    *v218 = 67240192;
    *&v218[4] = v169;
    LODWORD(v178) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,lost data association: ignore input location type,%{public}d,to process buffered data on wakeup", v218, v178);
    v171 = v170;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v170);
    if (v171 != buf)
    {
      free(v171);
    }

    v5 = v189;
  }

  v139 = 0;
  v147 = 14;
LABEL_218:
  *(a1 + 1544) = v147;
LABEL_181:
  if (v5)
  {
    sub_100008080(v5);
  }

  return v139;
}

void sub_100204708(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100204720(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 852) == 1)
  {
    if (*(a1 + 56) >= 6uLL)
    {
      sub_100208200((a1 + 16));
    }
  }

  else
  {
    if (*(a1 + 56) >= 0x3CuLL && (*(a1 + 828) & 0x80000000) != 0 && *(a1 + 832) < 0.0)
    {
      sub_100208200((a1 + 16));
    }

    if (!*(a1 + 840))
    {
      if (dword_102632830 == 1999)
      {
        v4 = 2101;
      }

      else
      {
        v4 = dword_102632830 + 1;
      }

      dword_102632830 = v4;
      *(a1 + 840) = v4;
      *(a1 + 788) = v4;
    }
  }

  v5 = a2[1];
  if (!v5)
  {
    v6 = 0;
LABEL_22:
    if (qword_1025D4770 != -1)
    {
      sub_101B4BD40();
    }

    v20 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 840);
      *buf = 67240192;
      v83 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,trying to update with unavailable location object", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B4BD54(buf);
      v65 = *(a1 + 840);
      v74 = 67240192;
      v75 = v65;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "FusedLoc,hID,%{public}d,trying to update with unavailable location object", &v74, 8);
      v67 = v66;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionLocationHypothesis::newLocationUpdate(const LCFusionFusedLocation &)", "%s\n", v66);
      if (v67 != buf)
      {
        free(v67);
      }
    }

    goto LABEL_27;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
    sub_1002050FC((a1 + 16), a2);
    *(a1 + 824) = -1;
    v22 = *(a1 + 56) + *(a1 + 48) - 1;
    v23 = *(*(a1 + 24) + 8 * (v22 / 0x1A)) + 152 * (v22 % 0x1A);
    if ((*(v23 + 148) & 1) == 0)
    {
      *(v23 + 148) = 1;
      v24 = *(v7 + 8);
      v25 = *(v7 + 24);
      v26 = *(v7 + 40);
      *(v23 + 72) = *(v7 + 56);
      *(v23 + 56) = v26;
      *(v23 + 40) = v25;
      *(v23 + 24) = v24;
      v27 = *(v7 + 72);
      v28 = *(v7 + 88);
      v29 = *(v7 + 104);
      *(v23 + 136) = *(v7 + 120);
      *(v23 + 120) = v29;
      *(v23 + 104) = v28;
      *(v23 + 88) = v27;
      v30 = *(a1 + 56) + *(a1 + 48) - 1;
      v31 = *(*(a1 + 24) + 8 * (v30 / 0x1A)) + 152 * (v30 % 0x1A);
      *(v31 + 149) = 0;
      *a1 = vextq_s8(*(v7 + 8), *(v7 + 8), 8uLL);
      *(v31 + 144) = *(a1 + 552);
    }

    goto LABEL_33;
  }

  v9 = (v7 + 16);
  v10 = *(v7 + 16);
  v11 = *(a1 + 48);
  v12 = *(a1 + 24);
  if (v10 >= *(*(v12 + 8 * ((v8 + v11 - 1) / 0x1A)) + 152 * ((v8 + v11 - 1) % 0x1A) + 32))
  {
    sub_1002050FC((a1 + 16), a2);
    v32 = *(a1 + 56);
    *(*(*(a1 + 24) + 8 * ((v32 + *(a1 + 48) - 1) / 0x1AuLL)) + 152 * ((v32 + *(a1 + 48) - 1) % 0x1AuLL) + 144) = *(a1 + 552);
    *(a1 + 824) = v32 - 2;
    goto LABEL_33;
  }

  v13 = *(v12 + 8 * (v11 / 0x1A)) + 152 * (v11 % 0x1A);
  v14 = *(v13 + 32);
  if (v10 <= v14)
  {
    if (v14 - v10 <= 60.0)
    {
      sub_101168DB8((a1 + 16), a2);
      *(a1 + 824) = 0;
      v48 = *(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL);
      if ((*(v48 + 148) & 1) == 0)
      {
        *(v48 + 148) = 1;
        v49 = *(v7 + 8);
        v50 = *(v7 + 24);
        v51 = *(v7 + 40);
        *(v48 + 72) = *(v7 + 56);
        *(v48 + 56) = v51;
        *(v48 + 40) = v50;
        *(v48 + 24) = v49;
        v52 = *(v7 + 72);
        v53 = *(v7 + 88);
        v54 = *(v7 + 104);
        *(v48 + 136) = *(v7 + 120);
        *(v48 + 120) = v54;
        *(v48 + 104) = v53;
        *(v48 + 88) = v52;
        *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 149) = 0;
        *a1 = vextq_s8(*(v7 + 8), *(v7 + 8), 8uLL);
        v55 = a2[1];
        v72 = *a2;
        v73 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        *buf = *(a1 + 552);
        sub_100208438(a1 + 192, (v7 + 16), &v72, buf);
        if (v73)
        {
          std::__shared_weak_count::__release_weak(v73);
        }
      }

      *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 144) = *(a1 + 552);
      goto LABEL_33;
    }

    if (qword_1025D4770 != -1)
    {
      sub_101B4BD40();
    }

    v39 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v40 = *(a1 + 840);
      v41 = *v9;
      v42 = *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 32);
      *buf = 67240960;
      v83 = v40;
      v84 = 2050;
      v85 = v41;
      v86 = 2050;
      v87 = v42;
      v88 = 2050;
      v89 = 0x404E000000000000;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,ignoring old out-of-sequence location sample,loc_mct,%{public}.3f,oldest location in buffer mct,%{public}.3f,age_tolerance_s,%{public}.1f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B4BD54(buf);
      v43 = *(a1 + 840);
      v44 = *v9;
      v45 = *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 32);
      v74 = 67240960;
      v75 = v43;
      v76 = 2050;
      v77 = v44;
      v78 = 2050;
      v79 = v45;
      v80 = 2050;
      v81 = 0x404E000000000000;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "FusedLoc,hID,%{public}d,ignoring old out-of-sequence location sample,loc_mct,%{public}.3f,oldest location in buffer mct,%{public}.3f,age_tolerance_s,%{public}.1f", &v74, 38);
      v47 = v46;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionLocationHypothesis::newLocationUpdate(const LCFusionFusedLocation &)", "%s\n", v46);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    goto LABEL_28;
  }

  v15 = v8 - 1;
  *(a1 + 824) = v8 - 1;
  v16 = v11 + v8;
  v17 = (v12 + 8 * (v16 / 0x1A));
  v18 = *(a1 + 32);
  if (v18 == v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v17 + 152 * (v16 % 0x1A);
  }

  if (v18 == v12)
  {
    v56 = 0;
  }

  else
  {
    v56 = v13;
  }

  if (v56 == v19)
  {
    goto LABEL_82;
  }

  v57 = *v17;
  while (v19 != v57)
  {
    if (v10 >= *(v19 - 120))
    {
      goto LABEL_81;
    }

    *(a1 + 824) = --v15;
LABEL_79:
    v19 -= 152;
    if (v56 == v19)
    {
      goto LABEL_82;
    }
  }

  v57 = *(v17 - 1);
  if (v10 < *(v57 + 3832))
  {
    *(a1 + 824) = --v15;
    v19 = v57 + 3952;
    --v17;
    goto LABEL_79;
  }

LABEL_81:
  sub_101168ED4((a1 + 16), v17, v19, a2);
  *(v58 + 144) = *(a1 + 552);
  v59 = *(v7 + 8);
  v60 = *(v7 + 24);
  v61 = *(v7 + 40);
  *(v58 + 72) = *(v7 + 56);
  *(v58 + 56) = v61;
  *(v58 + 40) = v60;
  *(v58 + 24) = v59;
  v62 = *(v7 + 72);
  v63 = *(v7 + 88);
  v64 = *(v7 + 104);
  *(v58 + 136) = *(v7 + 120);
  *(v58 + 120) = v64;
  *(v58 + 104) = v63;
  *(v58 + 88) = v62;
  *(v58 + 148) = 0;
  v15 = *(a1 + 824);
LABEL_82:
  if ((v15 & 0x80000000) == 0 && v15 < *(a1 + 56) - 1 && *(a1 + 832) < 0.0)
  {
    operator new();
  }

LABEL_33:
  v33 = *(a1 + 848);
  v34 = 1;
  if (v33 > 2)
  {
    if (v33 == 3)
    {
      v34 = 2;
    }

    else if (v33 != 4)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (!v33)
  {
LABEL_42:
    *(a1 + 848) = v34;
    goto LABEL_43;
  }

  if (v33 != 1)
  {
LABEL_43:
    v35 = *(a1 + 56);
    goto LABEL_44;
  }

  v35 = *(a1 + 56);
  if (v35 >= 3)
  {
    *(a1 + 844) = 0x200000000;
LABEL_49:
    if (*(a1 + 852) == 1)
    {
      v38 = a2[1];
      v68 = *a2;
      v69 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001FD708(a1 + 192, (v7 + 16), &v68);
      v37 = v69;
      if (v69)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_27;
  }

LABEL_44:
  *(a1 + 844) = 0;
  if (v35 != 1)
  {
    goto LABEL_49;
  }

  v36 = a2[1];
  v70 = *a2;
  v71 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 16), 1uLL, memory_order_relaxed);
  }

  *buf = *(a1 + 552);
  sub_100208438(a1 + 192, (v7 + 16), &v70, buf);
  v37 = v71;
  if (v71)
  {
LABEL_53:
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_27:
  if (v6)
  {
LABEL_28:
    sub_100008080(v6);
  }
}

void sub_1002050F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

__n128 sub_1002050FC(unint64_t *a1, uint64_t a2)
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
    sub_10023D9E8(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A));
  v9 = v7 % 0x1A;
  v10 = *(a2 + 8);
  v11 = v8 + 152 * v9;
  *v11 = *a2;
  *(v11 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(v11 + 16) = off_1024DE5F8;
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  *(v11 + 72) = *(a2 + 72);
  *(v11 + 56) = v14;
  *(v11 + 40) = v13;
  *(v11 + 24) = v12;
  result = *(a2 + 88);
  v16 = *(a2 + 104);
  v17 = *(a2 + 120);
  *(v11 + 136) = *(a2 + 136);
  *(v11 + 120) = v17;
  *(v11 + 104) = v16;
  *(v11 + 88) = result;
  *(v11 + 144) = 4;
  *(v11 + 144) = *(a2 + 144);
  *(v11 + 148) = *(a2 + 148);
  ++a1[5];
  return result;
}

uint64_t sub_100205234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 824);
  if ((v3 & 0x80000000) != 0 || (v4 = *(a1 + 56), v4 <= v3))
  {
    if (qword_1025D4770 != -1)
    {
      sub_101B4BD40();
    }

    v35 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 840);
      v37 = *(a1 + 824);
      v38 = *(a1 + 56);
      *buf = 67240704;
      v73 = v36;
      v74 = 1026;
      *v75 = v37;
      *&v75[4] = 2050;
      *&v75[6] = v38;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,DataFusion called with invalid start fusion,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B4BD54(buf);
      v51 = *(a1 + 840);
      v52 = *(a1 + 824);
      v53 = *(a1 + 56);
      v66 = 67240704;
      v67 = v51;
      v68 = 1026;
      *v69 = v52;
      *&v69[4] = 2050;
      *&v69[6] = v53;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "FusedLoc,hID,%{public}d,DataFusion called with invalid start fusion,index,%{public}d,bufferSize,%{public}zu", &v66, 24);
      v46 = v54;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v54);
LABEL_53:
      if (v46 != buf)
      {
        free(v46);
      }

      return 0;
    }
  }

  else
  {
    if (v3 == v4 - 1)
    {
      if (qword_1025D4770 != -1)
      {
        sub_101B4BD40();
      }

      v5 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 840);
        v7 = *(a1 + 824);
        v8 = *(a1 + 56);
        *buf = 67240704;
        v73 = v6;
        v74 = 1026;
        *v75 = v7;
        *&v75[4] = 2050;
        *&v75[6] = v8;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,DataFusion called with nothing to do,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B4BD54(buf);
        v55 = *(a1 + 840);
        v56 = *(a1 + 824);
        v57 = *(a1 + 56);
        v66 = 67240704;
        v67 = v55;
        v68 = 1026;
        *v69 = v56;
        *&v69[4] = 2050;
        *&v69[6] = v57;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "FusedLoc,hID,%{public}d,DataFusion called with nothing to do,index,%{public}d,bufferSize,%{public}zu", &v66, 24);
        v59 = v58;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v58);
        if (v59 != buf)
        {
          free(v59);
        }
      }
    }

    v9 = *(a1 + 824);
    v10 = *(a1 + 56) - 1;
    if (v9 >= v10)
    {
      goto LABEL_51;
    }

    v11 = v9;
    __asm { FMOV            V0.2D, #-1.0 }

    v17 = *(a1 + 48);
    v18 = *(a1 + 24);
    if (*(*(v18 + 8 * ((v17 + v11) / 0x1AuLL)) + 152 * ((v17 + v11) % 0x1AuLL) + 148))
    {
      v19 = *(a1 + 832);
      v20 = v9 + 1;
      v21 = v17 + v20;
      v22 = (v17 + v20) / 0x1AuLL;
      if (v19 <= 0.0)
      {
        v23 = v21 % 0x1A;
      }

      else
      {
        v23 = v21 % 0x1A;
        v24 = *(v18 + 8 * v22) + 152 * v23;
        if (*(v24 + 32) >= v19 && *(v24 + 148) == 1)
        {
          if (qword_1025D4770 != -1)
          {
            sub_1002485F0();
          }

          v47 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v48 = *(a1 + 832);
            v49 = *(a1 + 56);
            v50 = *(*(*(a1 + 24) + 8 * ((*(a1 + 48) + v20) / 0x1AuLL)) + 152 * ((*(a1 + 48) + v20) % 0x1AuLL) + 32);
            *buf = 67240960;
            v73 = v11;
            v74 = 2050;
            *v75 = v49;
            *&v75[8] = 2050;
            *&v75[10] = v48;
            v76 = 2050;
            v77 = v50;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "FusedLoc,reached buffered location after roll-back index,breaking fusion,current fIndex,%{public}d,bufferSize,%{public}zu,first location after roll-back MCT,%{public}.3f,fIndexLocation_mct,%{public}.3f", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B4BD54(buf);
            v60 = *(a1 + 832);
            v61 = *(a1 + 56);
            v62 = *(*(*(a1 + 24) + 8 * ((*(a1 + 48) + v20) / 0x1AuLL)) + 152 * ((*(a1 + 48) + v20) % 0x1AuLL) + 32);
            v66 = 67240960;
            v67 = v11;
            v68 = 2050;
            *v69 = v61;
            *&v69[8] = 2050;
            *&v69[10] = v60;
            v70 = 2050;
            v71 = v62;
            LODWORD(v65) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "FusedLoc,reached buffered location after roll-back index,breaking fusion,current fIndex,%{public}d,bufferSize,%{public}zu,first location after roll-back MCT,%{public}.3f,fIndexLocation_mct,%{public}.3f", &v66, v65);
            v64 = v63;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v63);
            if (v64 != buf)
            {
              free(v64);
            }
          }

          v10 = *(a1 + 56) - 1;
LABEL_51:
          *(a1 + 824) = v10;
          return 1;
        }
      }

      v25 = (*(v18 + 8 * v22) + 152 * v23);
      v26 = v25[1];
      if (v26)
      {
        v27 = std::__shared_weak_count::lock(v26);
        if (v27 && *v25 && *(*v25 + 40) > 0.0)
        {
          operator new();
        }
      }

      else
      {
        v27 = 0;
      }

      if (qword_1025D4770 != -1)
      {
        sub_1002485F0();
      }

      v28 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 840);
        v30 = *(a1 + 56);
        *buf = 67240704;
        v73 = v29;
        v74 = 1026;
        *v75 = v20;
        *&v75[4] = 2050;
        *&v75[6] = v30;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_ERROR, "#Error,FusedLoc,hID,%{public}d,DataFusion called on invalid new raw location,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B4BD54(buf);
        v31 = *(a1 + 840);
        v32 = *(a1 + 56);
        v66 = 67240704;
        v67 = v31;
        v68 = 1026;
        *v69 = v20;
        *&v69[4] = 2050;
        *&v69[6] = v32;
        LODWORD(v65) = 24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,FusedLoc,hID,%{public}d,DataFusion called on invalid new raw location,index,%{public}d,bufferSize,%{public}zu", &v66, v65);
        v34 = v33;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v33);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      if (v27)
      {
        sub_100008080(v27);
      }

      return 0;
    }

    if (qword_1025D4770 != -1)
    {
      sub_1002485F0();
    }

    v40 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 840);
      v42 = *(a1 + 56);
      *buf = 67240704;
      v73 = v41;
      v74 = 1026;
      *v75 = v11;
      *&v75[4] = 2050;
      *&v75[6] = v42;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "#Error,FusedLoc,hID,%{public}d,DataFusion called on fusion index which is not previously fused,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101B4BD54(buf);
      v43 = *(a1 + 840);
      v44 = *(a1 + 56);
      v66 = 67240704;
      v67 = v43;
      v68 = 1026;
      *v69 = v11;
      *&v69[4] = 2050;
      *&v69[6] = v44;
      LODWORD(v65) = 24;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,FusedLoc,hID,%{public}d,DataFusion called on fusion index which is not previously fused,index,%{public}d,bufferSize,%{public}zu", &v66, v65);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v45);
      goto LABEL_53;
    }
  }

  return result;
}

void sub_100207950(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100207968(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v44 = off_1024DE5F8;
  v49 = *(a3 + 72);
  v50 = *(a3 + 88);
  v51 = *(a3 + 104);
  v52 = *(a3 + 120);
  v45 = *(a3 + 8);
  v46 = *(a3 + 24);
  v47 = *(a3 + 40);
  v48 = *(a3 + 56);
  (*(*a4 + 80))(a4, "predictedPreviousFusedLocation", a1[52].u32[2]);
  sub_10002F4A0(&v44, "FusedLoc,CC Fusion a priori", a1[52].i32[2]);
  v10 = *(a4 + 40);
  v11 = *(a3 + 40);
  v12.f64[0] = v11;
  v12.f64[1] = v10;
  __asm { FMOV            V1.2D, #0.5 }

  v18 = vmulq_f64(vmulq_f64(v12, v12), _Q1);
  __asm { FMOV            V1.2D, #1.0 }

  v21 = vbslq_s8(vcgtq_f64(_Q1, v18), _Q1, v18);
  v20 = vdivq_f64(_Q1, v21);
  v21.f64[0] = v20.f64[1];
  v22 = 1.0 / vaddvq_f64(v20);
  v23 = sqrt(v22 + v22);
  *&v47 = v23;
  if ((*(a3 + 124) - 6) <= 2 && (*(a4 + 124) - 6) <= 2)
  {
    if (v11 < v10)
    {
      v10 = v11;
    }

    if (v23 >= v10)
    {
      v10 = v23;
    }

    *&v47 = v10;
  }

  v24 = *(a3 + 24);
  v25 = v20.f64[0] * (*(a3 + 32) * 0.0174532925);
  v24.f64[1] = *(a4 + 24);
  v28 = vmulq_f64(v24, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v26 = vmulq_f64(v20, v28);
  v28.f64[0] = v21.f64[0] * (*(a4 + 32) * 0.0174532925);
  v21.f64[0] = v22 * vaddvq_f64(v26);
  v27 = v25 + v28.f64[0];
  v28.f64[0] = 3.14159265;
  v42 = v28;
  if (fabs(v21.f64[0]) > 3.14159265)
  {
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v41 = vbslq_s8(vnegq_f64(v29), v28, v21);
    v21.f64[0] = fmod(v21.f64[0] + *v41.i64, 6.28318531);
    *&v26.f64[1] = v41.i64[1];
    v21.f64[0] = v21.f64[0] - *v41.i64;
  }

  v26.f64[0] = v22 * v27;
  if (v21.f64[0] >= 1.57079633)
  {
    v30 = v42;
    v21.f64[0] = v42.f64[0] - v21.f64[0];
  }

  else
  {
    if (v21.f64[0] < -1.57079633)
    {
      v21.f64[0] = -3.14159265 - v21.f64[0];
    }

    v30 = v42;
  }

  *&v46 = v21.f64[0] * 57.2957795;
  if (fabs(v26.f64[0]) > *v30.i64)
  {
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v43 = *vbslq_s8(vnegq_f64(v31), v30, v26).i64;
    v26.f64[0] = fmod(v26.f64[0] + v43, 6.28318531) - v43;
  }

  *(&v46 + 1) = v26.f64[0] * 57.2957795;
  if (a5 <= 2.0 && ((*(*a3 + 48))(a3) & 1) == 0)
  {
    if (*(&v49 + 1) <= 0.0)
    {
      v49 = *(a4 + 72);
    }

    if (*(&v50 + 1) <= 0.0)
    {
      v50 = *(a4 + 88);
    }
  }

  v32 = *&v47;
  if (*&v47 < 2.0)
  {
    v32 = 2.0;
  }

  *&v47 = v32;
  sub_10002F4A0(&v44, "FusedLoc,CC Fusion a posteriori", a1[52].i32[2]);
  v33 = *(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL);
  v34 = v45;
  v35 = v46;
  v36 = v47;
  *(v33 + 72) = v48;
  *(v33 + 56) = v36;
  *(v33 + 40) = v35;
  *(v33 + 24) = v34;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  *(v33 + 136) = v52;
  *(v33 + 120) = v39;
  *(v33 + 104) = v38;
  *(v33 + 88) = v37;
  *(*(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL) + 148) = 1;
  *a1 = vextq_s8(v45, v45, 8uLL);
  return 1;
}