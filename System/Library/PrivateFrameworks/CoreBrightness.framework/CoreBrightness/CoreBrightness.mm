uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

float _CFXFindAdaptation(float *a1, uint64_t *a2)
{
  v20 = *(a2 + 2);
  v19 = *(a2 + 6);
  v18 = v20 - 1;
  v17 = v20 - 1;
  v16 = v19 - 1;
  v15 = v19 - 1;
  v13 = *a2;
  v12 = a2[2];
  for (i = 0; i < v20; ++i)
  {
    if (*a1 <= *(v13 + 4 * i))
    {
      v17 = i;
      if (i)
      {
        v8 = i - 1;
      }

      else
      {
        v8 = 0;
      }

      v18 = v8;
      break;
    }
  }

  for (j = 0; j < v19; ++j)
  {
    if (a1[1] <= *(v12 + 4 * j))
    {
      v15 = j;
      if (j)
      {
        v7 = j - 1;
      }

      else
      {
        v7 = 0;
      }

      v16 = v7;
      break;
    }
  }

  if (v18 == v17)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = ((*a1 - *(v13 + 4 * v18)) / (*(v13 + 4 * v17) - *(v13 + 4 * v18)));
  }

  v2 = v6;
  v9 = v2;
  if (v16 == v15)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = ((a1[1] - *(v12 + 4 * v16)) / (*(v12 + 4 * v15) - *(v12 + 4 * v16)));
  }

  v3 = v5;
  v14 = a2[4];
  return (((*(*(v14 + 8 * v15) + 4 * v17) * v9) + (*(*(v14 + 8 * v15) + 4 * v18) * (1.0 - v9))) * v3) + (((*(*(v14 + 8 * v16) + 4 * v17) * v9) + (*(*(v14 + 8 * v16) + 4 * v18) * (1.0 - v9))) * (1.0 - v3));
}

uint64_t _CFXUpdateColorFadeInternal(uint64_t a1, double *a2, char a3, double a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v38 = a4;
  v37 = a2;
  v36 = a3;
  v35 = a4 - a2[1];
  v34 = v35 / *a2;
  v33 = 0;
  if (*a2 == 0.0 || v34 >= 1.0 || v35 < 0.0)
  {
    memcpy(__dst, v37 + 20, sizeof(__dst));
    *v37 = 0.0;
    *(v37 + 16) = 1;
  }

  else
  {
    v32 = *(v39 + 360) - 1;
    v34 = v34 * v32;
    v31 = v34;
    v30 = v34 + 1;
    v29 = v34 - v34;
    v34 = (1.0 - v29) * *(*(v39 + 352) + 4 * v34) + v29 * *(*(v39 + 352) + 4 * v30);
    for (i = 0; i < 3; ++i)
    {
      for (j = 0; j < 3; ++j)
      {
        v4 = *(v37 + 3 * i + j + 23) + v34 * (*(v37 + 3 * i + j + 5) - *(v37 + 3 * i + j + 23));
        __dst[3 * i + j] = v4;
      }
    }

    v33 = 1;
  }

  __memcpy_chk();
  if ((v36 & 1) != 0 && *(v39 + 96))
  {
    v26 = *(v39 + 96);
    v13 = &v25;
    v25 = 0;
    v24 = 0;
    _CFXGetWPFromMatrix(v39, __dst, &v25, &v24);
    v15 = v23;
    memset(v23, 0, sizeof(v23));
    v14 = &v40;
    v40 = 0;
    v41 = 0;
    CFXChromaticity2Tristimulus(&v25, &v40, 100.0);
    CFXTristimulus2Lab(&v40, v23);
    if (*(v26 + 56))
    {
      v22 = *&v23[4];
      _CFXStickToPolygon(*(v26 + 56), *(v26 + 148), &dword_1DEACD84C, &v23[4], &v23[4]);
      if (*&v22 != *&v23[4] && *(&v22 + 1) != *&v23[8])
      {
        syslog(7, "Restrict: (%f, %f) -> (%f, %f)\n", *&v22, *&v22, *&v23[4], *&v23[8]);
      }
    }

    v21 = 0.0;
    v20 = 0.0;
    if (*(*(v39 + 96) + 303))
    {
      v20 = fminf(*(v26 + 336), *(v26 + 280));
    }

    else
    {
      v20 = *(v26 + 280);
    }

    *(v26 + 308) = v20;
    if (*(v26 + 144))
    {
      v21 = _CFXFindAdaptation(&v23[4], (v26 + 64));
      v19 = 0.0;
      if (*(v26 + 145))
      {
        v19 = _CFXFindAdaptation(&v23[4], (v26 + 104));
        if (v20 > 0.35)
        {
          if (v20 > 0.7)
          {
            if (v20 > 0.85)
            {
              v21 = 0.0;
            }

            else
            {
              v7 = (0.85 - v20) / 0.15;
              v16 = v7;
              v21 = ((1.0 - v7) * 0.0) + (v7 * v21);
            }
          }

          else
          {
            v6 = (0.7 - v20) / 0.35;
            v17 = v6;
            v21 = ((1.0 - v6) * v21) + (v6 * v19);
          }
        }

        else
        {
          v5 = (0.35 - v20) / 0.35;
          v18 = v5;
          v21 = ((1.0 - v5) * v19) + (v5 * 1.0);
        }
      }
    }

    v8 = (v21 * 0.0) + (1.0 - v21) * *&v23[4];
    *&v23[4] = v8;
    v9 = (v21 * 0.0) + (1.0 - v21) * *&v23[8];
    *&v23[8] = v9;
    *&v23[4] = v8 + (v20 * *(v26 + 292));
    *&v23[8] = v9 + (v20 * *(v26 + 296));
    v12 = &v40;
    CFXLab2Tristimulus(v23, &v40);
    v10 = v12;
    *(v39 + 2100) = v21;
    CFXTristimulus2Chromaticity_0(v10, (v39 + 2108));
    _CFXGetMatrix(v39, v12, __dst, (v39 + 2128));
  }

  __memcpy_chk();
  return v33 & 1;
}

uint64_t CFXUpdateColorFade(uint64_t a1, double a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = a1;
  v36 = a2;
  v35 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = mach_absolute_time();
  v27 = 1;
  if (*(v35 + 96))
  {
    v27 = *(*(v35 + 96) + 272) & 1;
    v32 = _CFXUpdateStrengthFade(v36, v35, *(v35 + 96) + 256);
    if (*(*(v35 + 96) + 300))
    {
      *(*(v35 + 96) + 300) = 0;
      v27 = 0;
    }

    if (*(*(v35 + 96) + 303))
    {
      v27 = (v27 & 1 & *(*(v35 + 96) + 328) & 1) != 0;
      if ((*(*(v35 + 96) + 328) & 1) == 0)
      {
        _CFXUpdateStrengthFade(v36, v35, *(v35 + 96) + 312);
      }
    }
  }

  v29 = (v35 + 368);
  if ((*(v35 + 384) & 1) == 0 || (v27 & 1) == 0)
  {
    v34 = _CFXUpdateColorFadeInternal(v35, v29, 1, v36);
  }

  v29 = (v35 + 536);
  if ((*(v35 + 552) & 1) == 0)
  {
    v33 = _CFXUpdateColorFadeInternal(v35, v29, 0, v36);
  }

  memcpy(__dst, (v35 + 592), sizeof(__dst));
  _CFXApplyTwilightNightShiftAdjustment(v35, __dst);
  if ((*(v35 + 2280) & 1) == 0)
  {
    v31 = CFXAmmoliteFadeInternal(v35 + 2264, *(v35 + 360), *(v35 + 352), v36);
  }

  memcpy(v47, (v35 + 496), sizeof(v47));
  Mul33MatrixBy33Matrix(v35 + 496, __dst, __src);
  if (*(v35 + 112))
  {
    _CFXMagic(__src, v45, *(v35 + 112));
  }

  else
  {
    memcpy(v45, __src, sizeof(v45));
  }

  Mul33MatrixBy33Matrix(v35 + 2320, v45, __src);
  if (*(v35 + 2520))
  {
    if ((*(v35 + 2448) & 1) == 0)
    {
      v30 = _CFXUpdateStrengthFade(v36, v35, v35 + 2432);
    }

    _CFXCorrectForNativeWP(v35, v44, *(v35 + 2456));
    memcpy(v43, __src, sizeof(v43));
    Mul33MatrixBy33Matrix(v44, v43, __src);
  }

  v42[2] = 1.0;
  v42[1] = 1.0;
  v42[0] = 1.0;
  v40 = 0;
  v41 = 0;
  Mul33MatrixBy31Vector(__src, v42, &v40);
  v2 = MaxOfVector(&v40);
  Div33MatrixByScalar(__src, v45, v2);
  v26 = *(v35 + 740) != *(v35 + 196);
  v25 = 0.0;
  v24 = 0.0;
  v12 = 1;
  if ((v34 & 1) == 0)
  {
    v12 = 1;
    if ((v33 & 1) == 0)
    {
      v12 = 1;
      if ((v32 & 1) == 0)
      {
        v12 = v31;
      }
    }
  }

  v23 = (v12 ^ 1) & 1;
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      v25 = vabds_f32(v45[3 * i + j], *(v35 + 704 + 12 * i + 4 * j));
      if (v25 > v24)
      {
        v24 = v25;
      }

      if (v23)
      {
        if (i == j)
        {
          if (vabdd_f64(v45[3 * i + j], 1.0) > 0.001)
          {
            v23 = 0;
          }
        }

        else if (fabs(v45[3 * i + j]) > 0.001)
        {
          v23 = 0;
        }
      }
    }
  }

  if (*(v35 + 96) && (*(*(v35 + 96) + 184) & 1) != 0)
  {
    v23 = 0;
  }

  if (v23)
  {
    _CFXIdentity(v45);
  }

  if (v24 > 0.001 || (v23 & 1) != 0)
  {
    v26 = 1;
  }

  if (v26 && *(v35 + 328))
  {
    __memcpy_chk();
    *(v35 + 740) = *(v35 + 196);
    Current = CFAbsoluteTimeGetCurrent();
    memset(__b, 0, sizeof(__b));
    v18 = 0.0;
    *v17 = 0;
    _CFXGetWPFromMatrix(v35, v45, v17, &v18);
    if (*(v35 + 2532) == 1)
    {
      if (*(v35 + 2528) == 1)
      {
        _CFXGetXYZD50Matrix(v35, v17, v45);
      }

      else if (!*(v35 + 2528))
      {
        _CFXGetsRGBD50Matrix(v35, v17, v45);
      }
    }

    else if (*(v35 + 2532) == 2)
    {
      if (*(v35 + 2528) == 1)
      {
        _CFXGetXYZMatrixWithLMSIlluminant(v35, v17, (v35 + 2536), v45);
      }

      else if (!*(v35 + 2528))
      {
        _CFXGetsRGBMatrixWithLMSIlluminant(v35, v17, (v35 + 2536), v45);
      }
    }

    v3 = _CFXRampInit(__b, v45, 0, 0.0, *(v35 + 740), v17[0], v17[1], Current);
    (*(v35 + 328))(*(v35 + 336), __b, v3);
    if (*(v35 + 1800))
    {
      _CFXGetWPFromMatrix(v35, v47, v17, &v18);
      v4 = _CFXRampInit(__b, v47, 2, 0.0, *(v35 + 740), v17[0], v17[1], Current);
      (*(v35 + 328))(*(v35 + 336), __b, v4);
      _CFXGetWPFromMatrix(v35, __dst, v17, &v18);
      v5 = _CFXRampInit(__b, __dst, 1, 0.0, *(v35 + 740), v17[0], v17[1], Current);
      (*(v35 + 328))(*(v35 + 336), __b, v5);
      _CFXGetWPFromMatrix(v35, (v35 + 2320), v17, &v18);
      v6 = _CFXRampInit(__b, v35 + 2320, 3, 0.0, *(v35 + 740), v17[0], v17[1], Current);
      (*(v35 + 328))(*(v35 + 336), __b, v6);
    }

    ++*(v35 + 1792);
    if (*(v35 + 1801))
    {
      ++*(v35 + 2104);
    }

    v16 = 0;
    v7 = 1.0 / v18;
    *(v35 + 2140) = v7;
    v38 = 0;
    v39 = 0;
    CFXChromaticity2Tristimulus(v17, &v38, 100.0);
    v14 = 0;
    v15 = 0;
    CFXTristimulus2Lab(&v38, &v14);
    v16 = binFromAb(&v14 + 1);
    if (v16 != *(v35 + 1228))
    {
      v13 = MachTimeToSeconds(v28 - *(v35 + 1232));
      v9 = *(v35 + 1228);
      v8 = *(v35 + 1024 + 8 * v9) + v13;
      *(v35 + 1024 + 8 * v9) = v8;
      *(v35 + 1232) = v28;
      *(v35 + 1228) = v16;
      *(v35 + 320) = v16;
      ++*(v35 + 1160 + 4 * v16);
    }

    LODWORD(v8) = *(v35 + 1784);
    _CFXUpdateCompensatedBacklight(v35, v28, v8);
  }

  v11 = 1;
  if ((v34 & 1) == 0)
  {
    v11 = 1;
    if ((v33 & 1) == 0)
    {
      v11 = 1;
      if ((v32 & 1) == 0)
      {
        v11 = 1;
        if ((v31 & 1) == 0)
        {
          v11 = v30;
        }
      }
    }
  }

  return v11 & 1;
}

uint64_t _CFXUpdateStrengthFade(double a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 - *(a3 + 8);
  v6 = v7 / *a3;
  v5 = 0;
  if (*a3 == 0.0 || v6 >= 1.0 || v7 < 0.0)
  {
    *(a3 + 24) = *(a3 + 20);
    *a3 = 0;
    *(a3 + 16) = 1;
  }

  else
  {
    v3 = *(a3 + 28) + v6 * (*(a3 + 20) - *(a3 + 28));
    *(a3 + 24) = v3;
    v5 = 1;
  }

  return v5 & 1;
}

void _CFXApplyTwilightNightShiftAdjustment(uint64_t a1, float *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = a2;
  if ((*(a1 + 2552) & 1) != 0 && !float_equal(*(v10 + 2600), 0.0) && !_CFXIsIdentity(v9))
  {
    v8 = 0;
    v7 = 0;
    CFXGetWPFromMatrix(v10, v9, &v8, &v7);
    v6 = CFXChromaticity2CCT(&v8);
    v5 = two_dimensional_interpolation(*(v10 + 2568), *(v10 + 2560), *(v10 + 2584), *(v10 + 2576), *(v10 + 2592), v6, *(v10 + 2600));
    if (!float_equal(v5, 0.0))
    {
      v4 = v6 + v5;
      v3 = 0;
      _CFXCCT2xy_Shifted(v10, &v3, v6 + v5);
      v12 = 0;
      v13 = 0;
      CFXChromaticity2Tristimulus(&v3, &v12, 100.0);
      _CFXGetMatrix(v10, &v12, v9, (v10 + 2128));
      oslog = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v11, COERCE__INT64(*(v10 + 2600)), COERCE__INT64(v6), COERCE__INT64(v4));
        _os_log_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_DEFAULT, "TWNS | Twilight.Strength=%f CCT.Original=%f CCT.Adjusted=%f", v11, 0x20u);
      }
    }
  }
}

float _CFXMagic(float *a1, float *a2, float *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  for (i = 0; i < 3; ++i)
  {
    v5[i] = (a1[3 * i] + a1[3 * i + 1]) + a1[3 * i + 2];
  }

  a2[1] = *a3 * a1[1];
  a2[2] = a3[1] * a1[2];
  *a2 = (v5[0] - a2[1]) - a2[2];
  a2[3] = a3[2] * a1[3];
  a2[5] = a3[3] * a1[5];
  a2[4] = (v5[1] - a2[3]) - a2[5];
  a2[6] = a3[4] * a1[6];
  a2[7] = a3[5] * a1[7];
  result = (v5[2] - a2[6]) - a2[7];
  a2[8] = result;
  return result;
}

uint64_t Mul33MatrixBy33Matrix(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      *(a3 + 12 * i + 4 * j) = ((*(result + 12 * i + 4) * *(a2 + 12 + 4 * j)) + (*(result + 12 * i) * *(a2 + 4 * j))) + (*(result + 12 * i + 8) * *(a2 + 24 + 4 * j));
    }
  }

  return result;
}

float CFXLab2Tristimulus(float *a1, float *a2)
{
  v5 = (*a1 + 16.0) / 116.0;
  v2 = v5 + a1[1] / 500.0;
  *a2 = 95.05 * invF(v2);
  a2[1] = 100.0 * invF(v5);
  v3 = v5 - a1[2] / 200.0;
  result = 108.9 * invF(v3);
  a2[2] = result;
  return result;
}

float Mul33MatrixBy31Vector(float *a1, float *a2, float *a3)
{
  *a3 = ((a1[1] * a2[1]) + (*a1 * *a2)) + (a1[2] * a2[2]);
  a3[1] = ((a1[4] * a2[1]) + (a1[3] * *a2)) + (a1[5] * a2[2]);
  result = ((a1[7] * a2[1]) + (a1[6] * *a2)) + (a1[8] * a2[2]);
  a3[2] = result;
  return result;
}

float _CFXGetWPFromMatrix(uint64_t a1, float *a2, void *a3, _DWORD *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v14 = 0x3F8000003F800000;
  v15 = 1065353216;
  if (*(a1 + 2520))
  {
    v14 = *(v9 + 2508);
    v15 = *(v9 + 2516);
  }

  v12 = 0;
  v13 = 0;
  Mul33MatrixBy31Vector(v8, &v14, &v12);
  v10 = 0;
  v11 = 0;
  Mul33MatrixBy31Vector((v9 + 2216), &v12, &v10);
  v5 = 0;
  CFXTristimulus2Chromaticity_0(&v10, &v5);
  *v7 = v5;
  result = *(&v10 + 1);
  *v6 = HIDWORD(v10);
  return result;
}

float _CFXStickToPolygon(uint64_t a1, int a2, float *a3, float *a4, float *a5)
{
  *&v5 = *a3;
  if (*a3 == *a4)
  {
    *&v5 = a3[1];
    if (*&v5 == a4[1])
    {
      a5[1] = a4[1];
      *&v5 = *a4;
      *a5 = *a4;
    }

    else
    {
      for (i = 0; i < a2 - 1; ++i)
      {
        *&v5 = (*(a1 + 8 * i) - *a4) * (*a4 - *(a1 + 8 * (i + 1)));
        if (*&v5 >= 0.0)
        {
          v18 = *(a1 + 8 * i + 4) + (((*(a1 + 8 * (i + 1) + 4) - *(a1 + 8 * i + 4)) / (*(a1 + 8 * (i + 1)) - *(a1 + 8 * i))) * (*a4 - *(a1 + 8 * i)));
          v17 = v18 - a4[1];
          v16 = a4[1] - a3[1];
          if ((v17 * v16) > 0.0)
          {
            a5[1] = a4[1];
            *&v5 = *a4;
            *a5 = *a4;
            return *&v5;
          }

          v5 = fabs(v17);
          if (v5 < fabs(v16))
          {
            a5[1] = v18;
            *&v5 = *a4;
            *a5 = *a4;
            return *&v5;
          }
        }
      }
    }
  }

  else
  {
    for (j = 0; j < a2 - 1; ++j)
    {
      v14 = (a4[1] - a3[1]) / (*a4 - *a3);
      v13 = a3[1] - (v14 * *a3);
      if ((*(a1 + 8 * (j + 1)) - *(a1 + 8 * j)) == 0.0)
      {
        v12 = *(a1 + 8 * (j + 1));
      }

      else
      {
        v10 = (*(a1 + 8 * (j + 1) + 4) - *(a1 + 8 * j + 4)) / (*(a1 + 8 * (j + 1)) - *(a1 + 8 * j));
        v12 = (v13 - (*(a1 + 8 * j + 4) - (v10 * *(a1 + 8 * j)))) / (v10 - v14);
      }

      v11 = v13 + (v14 * v12);
      *&v5 = (*(a1 + 8 * j) - v12) * (v12 - *(a1 + 8 * (j + 1)));
      if (*&v5 >= 0.0)
      {
        *&v5 = (*(a1 + 8 * j + 4) - v11) * (v11 - *(a1 + 8 * (j + 1) + 4));
        if (*&v5 >= 0.0)
        {
          v9 = ((a3[1] - v11) * (a3[1] - v11)) + ((*a3 - v12) * (*a3 - v12));
          v8 = ((a3[1] - a4[1]) * (a3[1] - a4[1])) + ((*a3 - *a4) * (*a3 - *a4));
          v7 = ((a4[1] - v11) * (a4[1] - v11)) + ((*a4 - v12) * (*a4 - v12));
          if (v9 >= v8 && v9 >= v7)
          {
            a5[1] = a4[1];
            *&v5 = *a4;
            *a5 = *a4;
            return *&v5;
          }

          *&v5 = ((a3[1] - a4[1]) * (a3[1] - a4[1])) + ((*a3 - *a4) * (*a3 - *a4));
          if (v8 >= v9)
          {
            *&v5 = ((a3[1] - a4[1]) * (a3[1] - a4[1])) + ((*a3 - *a4) * (*a3 - *a4));
            if (v8 >= v7)
            {
              a5[1] = v11;
              *&v5 = v12;
              *a5 = v12;
              return *&v5;
            }
          }
        }
      }
    }
  }

  return *&v5;
}

float mach_time_to_nanoseconds(unint64_t a1)
{
  if (mach_time_to_nanoseconds::token != -1)
  {
    dispatch_once(&mach_time_to_nanoseconds::token, &__block_literal_global_7);
  }

  return a1 * *&mach_time_to_nanoseconds::machTimeBaseFactor;
}

float CFXChromaticity2Tristimulus(float *a1, float *a2, float a3)
{
  *a2 = (*a1 / a1[1]) * a3;
  a2[1] = a3;
  result = (1.0 - *a1 - a1[1]) / a1[1] * a3;
  a2[2] = result;
  return result;
}

float CFXTristimulus2Chromaticity(float *a1, float *a2)
{
  v3 = (*a1 + a1[1]) + a1[2];
  *a2 = *a1 / v3;
  result = a1[1] / v3;
  a2[1] = result;
  return result;
}

float CFXTristimulus2Chromaticity_0(float *a1, float *a2)
{
  v3 = (*a1 + a1[1]) + a1[2];
  *a2 = *a1 / v3;
  result = a1[1] / v3;
  a2[1] = result;
  return result;
}

float CFXTristimulus2Chromaticity_1(float *a1, float *a2)
{
  v3 = (*a1 + a1[1]) + a1[2];
  *a2 = *a1 / v3;
  result = a1[1] / v3;
  a2[1] = result;
  return result;
}

float CFXTristimulus2Lab(float *a1, float *a2)
{
  v6 = F(*a1 / 95.05);
  v7 = F(a1[1] / 100.0);
  v2 = F(a1[2] / 108.9);
  *a2 = (116.0 * v7) + -16.0;
  a2[1] = 500.0 * (v6 - v7);
  result = 200.0 * (v7 - v2);
  a2[2] = result;
  return result;
}

float F(float a1)
{
  if (a1 > 0.0088565)
  {
    return powf(a1, 0.33333);
  }

  return 7.787 * a1 + 0.13793;
}

float invF(float a1)
{
  if (a1 > 0.2069)
  {
    return powf(a1, 3.0);
  }

  return 0.12842 * (a1 - 0.13793);
}

uint64_t _CFXGetMatrix(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = 1.0 / a2[1];
  *a2 = *a2 * v6;
  a2[1] = a2[1] * v6;
  a2[2] = a2[2] * v6;
  v18 = 0;
  v19 = 0;
  CFXTristimulus2lms(a2, &v18);
  v16 = 0;
  v17 = 0;
  Div31VectorBy31Vector(&v18, a4, &v16);
  memset(__b, 0, sizeof(__b));
  __b[4] = HIDWORD(v16);
  __b[0] = v16;
  __b[8] = v17;
  Mul33MatrixBy33Matrix(__b, a1 + 2144, v14);
  Mul33MatrixBy33Matrix(a1 + 2180, v14, v13);
  v12[2] = 1.0;
  v12[1] = 1.0;
  v12[0] = 1.0;
  v10 = 0;
  v11 = 0;
  Mul33MatrixBy31Vector(v13, v12, &v10);
  v4 = MaxOfVector(&v10);
  return Div33MatrixByScalar(v13, a3, v4);
}

uint64_t Div33MatrixByScalar(uint64_t result, uint64_t a2, float a3)
{
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      *(a2 + 12 * i + 4 * j) = *(result + 12 * i + 4 * j) / a3;
    }
  }

  return result;
}

float MaxOfVector(float *a1)
{
  if (*a1 <= a1[1])
  {
    v3 = a1[1];
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= a1[2])
  {
    return a1[2];
  }

  else
  {
    return v3;
  }
}

float Div31VectorBy31Vector(float *a1, float *a2, float *a3)
{
  *a3 = *a1 / *a2;
  a3[1] = a1[1] / a2[1];
  result = a1[2] / a2[2];
  a3[2] = result;
  return result;
}

void AABC::setPropertyForClient(AABC *this, const __CFString *a2, const void *a3, const void *a4)
{
  v4 = MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v530 = v554;
  v531 = AABC::_RampDoneCallback;
  v532 = AABC::_setInternalProperty;
  applier = AABC::UpdateSensorOverride;
  v621 = *MEMORY[0x1E69E9840];
  v599 = v4;
  v598 = v5;
  v597 = v6;
  v596 = v7;
  context = v4;
  if (_logHandle)
  {
    v529 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v528 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
      v528 = inited;
    }

    v529 = v528;
  }

  v8 = v530;
  *(v530 + 109) = v529;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v8[109], OS_LOG_TYPE_DEBUG))
  {
    log = *(v530 + 109);
    *v525 = type;
    buf = v620;
    __os_log_helper_16_0_1_4_0(v620, 4);
    _os_log_debug_impl(&dword_1DE8E5000, log, v525[0], "[%x]: ", v620, 8u);
  }

  v9 = v530;
  *(v530 + 107) = *(v530 + 111);
  *(v9 + 106) = *(v9 + 112);
  v523 = CFEqual(*(v9 + 112), @"IOHIDEventSystemClientIsUnresponsive");
  if (!v523 && *(context + 92))
  {
    if (CFEqual(*(v530 + 112), @"AABSensorOverride"))
    {
      if (*(v530 + 111))
      {
        CFDictionaryApplyFunction(*(context + 52), applier, *(v530 + 111));
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"ALSInternalSettings"))
    {
      if (*(v530 + 111))
      {
        v520 = CFGetTypeID(*(v530 + 111));
        TypeID = CFDictionaryGetTypeID();
        if (v520 == TypeID)
        {
          CFDictionaryApplyFunction(*(v530 + 111), v532, context);
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"CBSoftWakeActive"))
    {
      if (*(context + 485))
      {
        if (*(v530 + 111))
        {
          v516 = *(v530 + 111);
          v517 = objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v514 = [*(v530 + 111) intValue];
            v10 = v530;
            v11 = context;
            *(v530 + 211) = v514;
            if (![v11[485] action:*(v10 + 211)])
            {
              v512 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 156));
              AABC::UpdateDisplayBrightness_Block6(context, 1, 2, 1, v512);
            }
          }
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"CBHasExternalDisplay"))
    {
      if (*(v530 + 111))
      {
        v509 = *(v530 + 111);
        v510 = objc_opt_class();
        v508 = objc_opt_isKindOfClass();
        if (v508 & 1) != 0 && *(context + 487) && ([*(context + 487) setActive:{objc_msgSend(*(v530 + 111), "BOOLValue")}])
        {
          AABC::_UpdateNitsRestrictions(context, -1.0, 1.5, 1);
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"BrightnessCurveLevel"))
    {
      if (*(v530 + 111))
      {
        v506 = CFGetTypeID(*(v530 + 111));
        v505 = CFNumberGetTypeID();
        if (v506 == v505)
        {
          v12 = v530;
          *(v530 + 210) = 0;
          if (CFNumberGetValue(v12[111], kCFNumberIntType, valuePtr))
          {
            if (*(v530 + 210) > 2u)
            {
              if (_logHandle)
              {
                v503 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v502 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v501 = init_default_corebrightness_log();
                  v502 = v501;
                }

                v503 = v502;
              }

              v13 = v530;
              *(v530 + 104) = v503;
              v593 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v13[104], OS_LOG_TYPE_DEBUG))
              {
                v498 = *(v530 + 104);
                *v499 = v593;
                v500 = v619;
                __os_log_helper_16_0_1_4_0(v619, 2);
                _os_log_debug_impl(&dword_1DE8E5000, v498, v499[0], "[%x]: invalid curve level - setting to default.", v619, 8u);
              }

              *(context + 853) = 1;
            }

            else if (*(v530 + 210) != *(context + 853))
            {
              *(context + 853) = *(v530 + 210);
            }

            [CBAnalytics curveLevel:*(context + 853)];
            memcpy(context + 1056, context + 104 * *(context + 853) + 744, 0x68uLL);
            memcpy(context + 2548, context + 164 * *(context + 853) + 2056, 0xA4uLL);
            if (*(context + 500))
            {
              [*(context + 500) sendCommand:229 inputBuffer:context + 3412 inputBufferSize:4];
            }

            if (*(context + 719) != 1)
            {
              AABC::CancelRamp(context);
              v497 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 156));
              v14 = context;
              v15 = v530;
              *(v530 + 206) = v497;
              v496 = clamp(v15[206], v14[180], v14[182]);
              v16 = context;
              v17 = v530;
              *(v530 + 206) = v496;
              AABC::UpdateDisplayBrightness_Block6(v16, 1, 2, 1, v17[206]);
            }
          }
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"CBAOTStateUpdate"))
    {
      v18 = v530;
      *(v530 + 205) = 255;
      *(v18 + 204) = 0;
      if (*(v18 + 111) && (v494 = CFGetTypeID(*(v530 + 111)), v493 = CFNumberGetTypeID(), v494 == v493))
      {
        CFNumberGetValue(*(v530 + 111), kCFNumberIntType, v592);
        *(v530 + 204) = 1.0;
      }

      else if (*(v530 + 111))
      {
        v492 = CFGetTypeID(*(v530 + 111));
        v491 = CFDictionaryGetTypeID();
        if (v492 == v491)
        {
          Value = CFDictionaryGetValue(*(v530 + 111), @"AOTState");
          v19 = v530;
          *(v530 + 101) = Value;
          v489 = CFDictionaryGetValue(v19[111], @"AOTTransitionTime");
          v20 = v530;
          *(v530 + 100) = v489;
          if (*(v20 + 101))
          {
            v488 = CFGetTypeID(*(v530 + 101));
            v487 = CFNumberGetTypeID();
            if (v488 == v487)
            {
              CFNumberGetValue(*(v530 + 101), kCFNumberIntType, v592);
            }
          }

          if (*(v530 + 100))
          {
            v486 = CFGetTypeID(*(v530 + 100));
            v485 = CFNumberGetTypeID();
            if (v486 == v485)
            {
              CFNumberGetValue(*(v530 + 100), kCFNumberFloatType, v591);
            }
          }
        }
      }

      if (*(v530 + 205) != *(context + 719))
      {
        if (_logHandle)
        {
          v484 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v483 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v482 = init_default_corebrightness_log();
            v483 = v482;
          }

          v484 = v483;
        }

        v21 = v530;
        *(v530 + 99) = v484;
        v590 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v21[99], OS_LOG_TYPE_DEFAULT))
        {
          v479 = *(v530 + 99);
          *v480 = v590;
          if (*(v530 + 205))
          {
            v22 = "Entering AOT";
          }

          else
          {
            v22 = "Exiting AOT";
          }

          *&v23 = *(v530 + 204);
          v481 = v618;
          __os_log_helper_16_2_2_8_32_8_0(v618, v22, v23);
          _os_log_impl(&dword_1DE8E5000, v479, v480[0], "AOT State update, %s, transitionTime: %f", v618, 0x16u);
        }

        if (*(context + 500) && *(context + 40) && (*(context + 2896) & 1) == 0 && (*(context + 719) != 2 || *(v530 + 205) != 1) && (*(context + 719) != 3 || *(v530 + 205)))
        {
          if ((*(context + 4008) & 1) == 0)
          {
            DisplaySetDCPPowerAssertionForAOT(*(context + 50), 1);
            *(context + 4008) = 1;
          }

          AABC::handleAODStateUpdateProperty(context, *(v530 + 205), *(v530 + 204));
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"AOTCurve"))
    {
      v477 = objc_autoreleasePoolPush();
      if (*(v530 + 111))
      {
        v476 = CFGetTypeID(*(v530 + 111));
        v475 = CFDictionaryGetTypeID();
        if (v476 == v475)
        {
          if (_logHandle)
          {
            v474 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v473 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v472 = init_default_corebrightness_log();
              v473 = v472;
            }

            v474 = v473;
          }

          v24 = v530;
          *(v530 + 97) = v474;
          v589 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v24[97], OS_LOG_TYPE_DEFAULT))
          {
            v469 = *(v530 + 97);
            *v470 = v589;
            v25 = *(v530 + 111);
            v471 = v617;
            __os_log_helper_16_2_1_8_66(v617, v25);
            _os_log_impl(&dword_1DE8E5000, v469, v470[0], "Custom Curve: %{public}@", v617, 0xCu);
          }

          *(v530 + 95) = *(v530 + 111);
          v468 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
          v26 = v530;
          v27 = context;
          *(v530 + 94) = v468;
          *(v26 + 90) = 0;
          *(v26 + 91) = v588;
          *(v26 + 184) = 0x20000000;
          *(v26 + 185) = 32;
          *(v26 + 186) = 0;
          v28 = *(v26 + 95);
          *(v26 + 83) = MEMORY[0x1E69E9820];
          *(v26 + 168) = -1073741824;
          *(v26 + 169) = 0;
          *(v26 + 85) = ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke;
          *(v26 + 86) = &unk_1E867D030;
          *(v26 + 89) = v27;
          *(v26 + 88) = v588;
          *(v26 + 87) = *(v26 + 94);
          [v28 enumerateKeysAndObjectsUsingBlock:?];
          if (*(context + 500))
          {
            AABC::sendAOTCurvesToDCP(context);
          }

          memcpy(context + 2548, context + 164 * *(context + 853) + 2056, 0xA4uLL);
          CFDictionarySetValue(*(context + 47), *(v530 + 112), *(v530 + 111));
          _Block_object_dispose(v588, 8);
        }
      }

      objc_autoreleasePoolPop(v477);
      return;
    }

    if (CFEqual(*(v530 + 112), @"DelayedALSOverride"))
    {
      if (*(v530 + 111))
      {
        v466 = CFGetTypeID(*(v530 + 111));
        v465 = CFDictionaryGetTypeID();
        if (v466 == v465)
        {
          v29 = v530;
          *(v530 + 80) = 0;
          *(v29 + 79) = *(v29 + 111);
          v464 = [*(v29 + 79) objectForKey:@"AABSensorOverrideOrientation"];
          v30 = v530;
          *(v530 + 78) = v464;
          v463 = [v30[79] objectForKey:@"AABSensorOverrideValue"];
          v31 = v530;
          *(v530 + 77) = v463;
          v462 = [v31[79] objectForKey:@"OverrideDelay"];
          v32 = v530;
          *(v530 + 76) = v462;
          [v32[77] floatValue];
          v461 = v33;
          v34 = v530;
          *(v530 + 151) = (v33 * 65536.0);
          [v34[76] floatValue];
          v460 = v35;
          *(v530 + 150) = (v35 * 65536.0);
          v459 = objc_alloc(MEMORY[0x1E696AD98]);
          v458 = [v459 initWithInt:*(v530 + 151)];
          *(v530 + 74) = v458;
          v457 = objc_alloc(MEMORY[0x1E696AD98]);
          v456 = [v457 initWithInt:*(v530 + 150)];
          v36 = v530;
          *(v530 + 73) = v456;
          [v36[77] floatValue];
          v455 = v37;
          if (v37 == -1.0)
          {
            v454 = objc_alloc(MEMORY[0x1E696AD98]);
            v453 = [v454 initWithInt:0];
            *(v530 + 80) = v453;
          }

          else
          {
            v452 = objc_alloc(MEMORY[0x1E696AD98]);
            v451 = [v452 initWithInt:1];
            *(v530 + 80) = v451;
          }

          v450 = objc_alloc(MEMORY[0x1E695DF20]);
          v38 = *(v530 + 80);
          v39 = *(v530 + 78);
          v40 = *(v530 + 74);
          v41 = *(v530 + 73);
          v448 = v153;
          v449 = [v450 initWithObjectsAndKeys:{v38, @"ALSOverrideState", v39, @"AABSensorOverrideOrientation", v40, @"AABSensorOverrideValue", v41, @"OverrideDelay", 0}];
          v42 = context;
          *(v530 + 72) = v449;
          if (v42[40])
          {
            IOHIDServiceClientSetProperty(*(context + 40), @"DelayedALSOverride", *(v530 + 72));
          }

          MEMORY[0x1E69E5920](*(v530 + 72));
          MEMORY[0x1E69E5920](*(v530 + 80));
          MEMORY[0x1E69E5920](*(v530 + 73));
          MEMORY[0x1E69E5920](*(v530 + 74));
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"ALSResetCurve"))
    {
      AABC::CreateDefaultCurves(context);
      AAB::Reset(context);
      AABC::writeOutlierRemovalPreferences(context, 0);
      if (_logHandle)
      {
        v446 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v445 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v444 = init_default_corebrightness_log();
          v445 = v444;
        }

        v446 = v445;
      }

      v43 = v530;
      *(v530 + 71) = v446;
      v587 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v43[71], OS_LOG_TYPE_DEFAULT))
      {
        v441 = *(v530 + 71);
        *v442 = v587;
        *&v44 = *(context + 268);
        *&v45 = *(context + 270);
        *&v46 = *(context + 269);
        *&v47 = *(context + 271);
        v48 = *(context + 288);
        v443 = v616;
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_4_0(v616, v44, v45, v46, v47, v48);
        _os_log_impl(&dword_1DE8E5000, v441, v442[0], "Reseted curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f Type: %d", v616, 0x30u);
      }

      if (_logHandle)
      {
        v440 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v439 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v438 = init_default_corebrightness_log();
          v439 = v438;
        }

        v440 = v439;
      }

      v49 = v530;
      *(v530 + 69) = v440;
      v586 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v49[69], OS_LOG_TYPE_DEFAULT))
      {
        v435 = *(v530 + 69);
        *v436 = v586;
        *&v50 = *(context + 264);
        *&v51 = *(context + 265);
        *&v52 = *(context + 266);
        *&v53 = *(context + 267);
        v437 = v615;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v615, v50, v51, v52, v53);
        _os_log_impl(&dword_1DE8E5000, v435, v436[0], "Reseted dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v615, 0x2Au);
      }

      if (_logHandle)
      {
        v434 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v433 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v432 = init_default_corebrightness_log();
          v433 = v432;
        }

        v434 = v433;
      }

      v54 = v530;
      *(v530 + 67) = v434;
      v585 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v54[67], OS_LOG_TYPE_DEFAULT))
      {
        v429 = *(v530 + 67);
        *v430 = v585;
        *&v55 = *(context + 756);
        *&v56 = *(context + 758);
        *&v57 = *(context + 757);
        *&v58 = *(context + 759);
        v59 = *(context + 776);
        v431 = v614;
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_4_0(v614, v55, v56, v57, v58, v59);
        _os_log_impl(&dword_1DE8E5000, v429, v430[0], "Reseted alternative curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f Type: %d", v614, 0x30u);
      }

      if (_logHandle)
      {
        v428 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v427 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v426 = init_default_corebrightness_log();
          v427 = v426;
        }

        v428 = v427;
      }

      v60 = v530;
      *(v530 + 65) = v428;
      v584 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60[65], OS_LOG_TYPE_DEFAULT))
      {
        v424 = *(v530 + 65);
        *v425 = v584;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v613, COERCE__INT64(*(context + 752)), COERCE__INT64(*(context + 753)), COERCE__INT64(*(context + 754)), COERCE__INT64(*(context + 755)));
        _os_log_impl(&dword_1DE8E5000, v424, v425[0], "Reseted alternative dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v613, 0x2Au);
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"ALSUserPreference"))
    {
      if (*(v530 + 111))
      {
        v422 = CFGetTypeID(*(v530 + 111));
        v421 = CFDictionaryGetTypeID();
        if (v422 == v421 && !*(context + 162))
        {
          AABC::readCurveFromDictionary(context, *(v530 + 111), context + 264);
          v420 = CFDictionaryGetValue(*(v530 + 111), @"AlternativeCurve");
          v61 = v530;
          *(v530 + 63) = v420;
          if (*(v61 + 63))
          {
            v419 = CFGetTypeID(*(v530 + 63));
            v418 = CFDictionaryGetTypeID();
            if (v419 == v418)
            {
              AABC::readCurveFromDictionary(context, *(v530 + 63), context + 752);
              if (_logHandle)
              {
                v417 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v416 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v415 = init_default_corebrightness_log();
                  v416 = v415;
                }

                v417 = v416;
              }

              v62 = v530;
              *(v530 + 62) = v417;
              v583 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v62[62], OS_LOG_TYPE_INFO))
              {
                v412 = *(v530 + 62);
                *v413 = v583;
                v63 = *(v530 + 63);
                v414 = v612;
                __os_log_helper_16_2_1_8_64(v612, v63);
                _os_log_impl(&dword_1DE8E5000, v412, v413[0], "Set kIOHIDALSUserPreferenceKey: AlternativeCurve = %@", v612, 0xCu);
              }

              AABC::AlignCurveTypeWithStrategy(context, context + 264, context + 752);
            }
          }

          if (_logHandle)
          {
            v411 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v410 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v409 = init_default_corebrightness_log();
              v410 = v409;
            }

            v411 = v410;
          }

          v64 = v530;
          *(v530 + 60) = v411;
          v582 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v64[60], OS_LOG_TYPE_DEFAULT))
          {
            v405 = *(v530 + 60);
            *v406 = v582;
            v407 = *(context + 288);
            v408 = (*(**(context + 8) + 104))(*(context + 8));
            v403 = *(context + 776);
            v404 = (*(**(context + 8) + 112))(*(context + 8));
            v402 = v611;
            __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v611, v407, v408, v403, v404);
            _os_log_impl(&dword_1DE8E5000, v405, v406[0], "Curve type = %d (%d), Alternative curve type = %d (%d)", v611, 0x1Au);
          }

          v401 = (*(**(context + 8) + 104))(*(context + 8));
          v65 = context;
          *(context + 288) = v401;
          v400 = (*(*v65[8] + 112))(v65[8]);
          v66 = context;
          *(context + 776) = v400;
          if (v66[3409])
          {
            v399 = CFDictionaryGetValue(*(v530 + 111), @"CurveUpdates");
            v67 = v530;
            *(v530 + 58) = v399;
            if (*(v67 + 58))
            {
              v398 = CFGetTypeID(*(v530 + 58));
              v397 = CFArrayGetTypeID();
              if (v398 == v397)
              {
                if (_logHandle)
                {
                  v396 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v395 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v394 = init_default_corebrightness_log();
                    v395 = v394;
                  }

                  v396 = v395;
                }

                v68 = v530;
                *(v530 + 57) = v396;
                v581 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v68[57], OS_LOG_TYPE_DEFAULT))
                {
                  v391 = *(v530 + 57);
                  *v392 = v581;
                  v69 = *(v530 + 58);
                  v393 = v610;
                  __os_log_helper_16_2_1_8_64(v610, v69);
                  _os_log_impl(&dword_1DE8E5000, v391, v392[0], "Set kIOHIDALSUserPreferenceKey: CurveUpdates = %@", v610, 0xCu);
                }

                AABC::getCurveUpdatesFromArray(v580, context, *(v530 + 58));
                AAB::SetCurveUpdates(context, v580);
                std::list<AAB::CurveUpdate>::~list(v580);
              }
            }

            v390 = CFDictionaryGetValue(*(v530 + 111), @"ReplacementCurve");
            v70 = v530;
            *(v530 + 52) = v390;
            if (*(v70 + 52))
            {
              v389 = CFGetTypeID(*(v530 + 52));
              v388 = CFDictionaryGetTypeID();
              if (v389 == v388)
              {
                AABC::readCurveFromDictionary(context, *(v530 + 52), context + 726);
                if (_logHandle)
                {
                  v387 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v386 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v385 = init_default_corebrightness_log();
                    v386 = v385;
                  }

                  v387 = v386;
                }

                v71 = v530;
                *(v530 + 51) = v387;
                v579 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v71[51], OS_LOG_TYPE_DEFAULT))
                {
                  v382 = *(v530 + 51);
                  *v383 = v579;
                  v72 = *(v530 + 52);
                  v384 = v609;
                  __os_log_helper_16_2_1_8_64(v609, v72);
                  _os_log_impl(&dword_1DE8E5000, v382, v383[0], "Set kIOHIDALSUserPreferenceKey: ReplacementCurve = %@", v609, 0xCu);
                }
              }
            }

            v381 = CFDictionaryGetValue(*(v530 + 111), @"AlternativeReplacementCurve");
            v73 = v530;
            *(v530 + 49) = v381;
            if (*(v73 + 49) && (v380 = CFGetTypeID(*(v530 + 49)), v379 = CFDictionaryGetTypeID(), v380 == v379))
            {
              AABC::readCurveFromDictionary(context, *(v530 + 49), context + 778);
              if (_logHandle)
              {
                v378 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v377 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v376 = init_default_corebrightness_log();
                  v377 = v376;
                }

                v378 = v377;
              }

              v74 = v530;
              *(v530 + 48) = v378;
              v578 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v74[48], OS_LOG_TYPE_DEFAULT))
              {
                v373 = *(v530 + 48);
                *v374 = v578;
                v75 = *(v530 + 49);
                v375 = v608;
                __os_log_helper_16_2_1_8_64(v608, v75);
                _os_log_impl(&dword_1DE8E5000, v373, v374[0], "Set kIOHIDALSUserPreferenceKey: AlternativeReplacementCurve = %@", v608, 0xCu);
              }

              AABC::AlignCurveTypeWithStrategy(context, context + 726, context + 778);
            }

            else
            {
              memcpy(context + 3112, context + 2904, 0x68uLL);
            }

            if (_logHandle)
            {
              v372 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v371 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v370 = init_default_corebrightness_log();
                v371 = v370;
              }

              v372 = v371;
            }

            v76 = v530;
            *(v530 + 46) = v372;
            v577 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v76[46], OS_LOG_TYPE_DEFAULT))
            {
              v366 = *(v530 + 46);
              *v367 = v577;
              v368 = *(context + 750);
              v369 = (*(**(context + 8) + 104))(*(context + 8));
              v364 = *(context + 802);
              v365 = (*(**(context + 8) + 112))(*(context + 8));
              v363 = v607;
              __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v607, v368, v369, v364, v365);
              _os_log_impl(&dword_1DE8E5000, v366, v367[0], "Good curve type = %d (%d), Alternative good curve type = %d (%d)", v607, 0x1Au);
            }

            v362 = (*(**(context + 8) + 104))(*(context + 8));
            v77 = context;
            *(context + 750) = v362;
            v361 = (*(*v77[8] + 112))(v77[8]);
            v78 = context;
            *(context + 802) = v361;
            AABC::revertToGoodCurve(v78, 2);
          }

          if (*(context + 3376))
          {
            v360 = CFDictionaryGetValue(*(v530 + 111), @"ReplacementCurve");
            v79 = v530;
            *(v530 + 44) = v360;
            if (*(v79 + 44))
            {
              v359 = CFGetTypeID(*(v530 + 44));
              v358 = CFDictionaryGetTypeID();
              if (v359 == v358)
              {
                AABC::readCurveFromDictionary(context, *(v530 + 44), context + 726);
              }
            }

            v357 = CFDictionaryGetValue(*(v530 + 111), @"Descriptor");
            v80 = v530;
            *(v530 + 44) = v357;
            if (*(v80 + 44))
            {
              v356 = CFGetTypeID(*(v530 + 44));
              v355 = CFDictionaryGetTypeID();
              if (v356 == v355)
              {
                AABC::readCurveDescriptorFromDictionary(context, *(v530 + 44), context + 834);
              }
            }

            AABC::readOutlierRemovalPreferences(context);
            if (*(context + 834) && *(context + 834) < *(context + 845))
            {
              AABC::revertToGoodCurve(context, 4);
              *(context + 842) = 1;
            }

            *(context + 393) = 1;
          }

          *(context + 392) = 1;
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"CurveUpdates"))
    {
      if (*(v530 + 111))
      {
        v353 = CFGetTypeID(*(v530 + 111));
        v352 = CFArrayGetTypeID();
        if (v353 == v352)
        {
          AABC::getCurveUpdatesFromArray(v576, context, *(v530 + 111));
          AAB::SetCurveUpdates(context, v576);
          AABC::revertToGoodCurve(context, 1);
          std::list<AAB::CurveUpdate>::~list(v576);
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"OutlierRemoval"))
    {
      if (*(v530 + 111))
      {
        v350 = CFGetTypeID(*(v530 + 111));
        v349 = CFDictionaryGetTypeID();
        if (v350 == v349)
        {
          AABC::readOutlierRemovalFromDictionary(context, *(v530 + 111), context + 3376);
          OutlierRemovalDictionary = AABC::createOutlierRemovalDictionary(context, context + 3376);
          v81 = v530;
          v82 = context;
          *(v530 + 40) = OutlierRemovalDictionary;
          CFDictionarySetValue(v82[47], v81[112], v81[40]);
          CFRelease(*(v530 + 40));
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"ALSLockScreenAutoBrightness"))
    {
      CFBooleanValue = GetCFBooleanValue(*(v530 + 111));
      *(context + 862) = CFBooleanValue;
      if (_logHandle)
      {
        v345 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v344 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v343 = init_default_corebrightness_log();
          v344 = v343;
        }

        v345 = v344;
      }

      v83 = v530;
      *(v530 + 39) = v345;
      v575 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v83[39], OS_LOG_TYPE_DEBUG))
      {
        v340 = *(v530 + 39);
        *v341 = v575;
        v84 = *(context + 862);
        v342 = v606;
        __os_log_helper_16_0_2_4_0_4_0(v606, 2, v84);
        _os_log_debug_impl(&dword_1DE8E5000, v340, v341[0], "[%x]: _settings._internal._lockScreenAutoBrightness=%x", v606, 0xEu);
      }

      CFDictionarySetValue(*(context + 47), *(v530 + 112), *(v530 + 111));
      return;
    }

    if (CFEqual(*(v530 + 112), @"ALSAccessoryAbsoluteThreshold"))
    {
      v338 = CFGetTypeID(*(v530 + 111));
      v337 = CFNumberGetTypeID();
      if (v338 == v337)
      {
        v85 = v530;
        *(v530 + 76) = *(context + 35);
        if (CFNumberGetValue(v85[111], kCFNumberFloatType, v574))
        {
          *(context + 35) = *(v530 + 76);
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"LogLevel"))
    {
      if (_logHandle)
      {
        v334 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v333 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v332 = init_default_corebrightness_log();
          v333 = v332;
        }

        v334 = v333;
      }

      v86 = v530;
      *(v530 + 37) = v334;
      v573 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v86[37], OS_LOG_TYPE_DEBUG))
      {
        v329 = *(v530 + 37);
        *v330 = v573;
        *&v87 = *(context + 268);
        *&v88 = *(context + 270);
        *&v89 = *(context + 269);
        *&v90 = *(context + 271);
        v331 = v605;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v605, v87, v88, v89, v90);
        _os_log_debug_impl(&dword_1DE8E5000, v329, v330[0], "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f", v605, 0x2Au);
      }

      if (_logHandle)
      {
        v328 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v327 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v326 = init_default_corebrightness_log();
          v327 = v326;
        }

        v328 = v327;
      }

      v91 = v530;
      *(v530 + 35) = v328;
      v572 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v91[35], OS_LOG_TYPE_DEBUG))
      {
        v324 = *(v530 + 35);
        *v325 = v572;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v604, COERCE__INT64(*(context + 264)), COERCE__INT64(*(context + 265)), COERCE__INT64(*(context + 266)), COERCE__INT64(*(context + 267)));
        _os_log_debug_impl(&dword_1DE8E5000, v324, v325[0], "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v604, 0x2Au);
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"AutoBrightnessProxEnabled"))
    {
      *(context + 3757) = GetCFBooleanValue(*(v530 + 111)) != 0;
      return;
    }

    if (CFEqual(*(v530 + 112), @"AutoBrightnessProxDelay"))
    {
      v321 = CFGetTypeID(*(v530 + 111));
      v320 = CFNumberGetTypeID();
      if (v321 == v320)
      {
        v92 = v530;
        *(v530 + 68) = *(context + 940);
        if (CFNumberGetValue(v92[111], kCFNumberFloatType, v571))
        {
          *(context + 940) = *(v530 + 68);
        }
      }

      return;
    }

    v318 = CFEqual(*(v530 + 112), @"AutoBrightnessTouchEnabled");
    if (v318 || (v317 = CFEqual(*(v530 + 112), @"AutoBrightnessTouchDelay")) != 0 || (v316 = CFEqual(*(v530 + 112), @"AutoBrightnessTouchBufferPivot")) != 0 || (v315 = CFEqual(*(v530 + 112), @"AutoBrightnessTouchBufferMaxCount")) != 0 || (v314 = CFEqual(*(v530 + 112), @"AutoBrightnessTouchBufferWindowS")) != 0 || (v313 = CFEqual(*(v530 + 112), @"AutoBrightnessTouchRadius")) != 0)
    {
      v93 = context;
      v94 = v530;
      *(v530 + 28) = MEMORY[0x1E69E9820];
      *(v94 + 58) = -1073741824;
      *(v94 + 59) = 0;
      *(v94 + 30) = ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke_742;
      *(v94 + 31) = &__block_descriptor_48_e35_v24__0____IOHIDServiceClient__8_v16l;
      *(v94 + 32) = *(v94 + 111);
      *(v94 + 33) = *(v94 + 112);
      AABC::enumerateALSes(v93, v570);
      return;
    }

    if (CFEqual(*(v530 + 112), @"AutoBrightnessLogMask"))
    {
      v311 = CFGetTypeID(*(v530 + 111));
      v310 = CFNumberGetTypeID();
      if (v311 == v310)
      {
        v95 = v530;
        *(v530 + 55) = *(context + 79);
        if (CFNumberGetValue(v95[111], kCFNumberIntType, v569))
        {
          *(context + 79) = *(v530 + 55) | 1;
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"AutoBrightnessLuxFilter"))
    {
      v307 = CFGetTypeID(*(v530 + 111));
      v306 = CFNumberGetTypeID();
      if (v307 == v306)
      {
        v96 = v530;
        *(v530 + 54) = *(context + 866);
        if (CFNumberGetValue(v96[111], kCFNumberIntType, v568))
        {
          if ((*(v530 + 54) & 0x80000000) == 0 && *(v530 + 54) <= 3)
          {
            *(context + 866) = *(v530 + 54);
          }
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"ALSIntPeriod"))
    {
      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayBrightnessAuto"))
    {
      AABC::UpdateAutoBrightnessEnabledStatus(context, *(v530 + 111));
      return;
    }

    if (CFEqual(*(v530 + 112), @"CBDisplayPresetDisableAutoBrightness"))
    {
      v301 = GetCFBooleanValue(*(v530 + 111));
      v567 = v301 == 0;
      if ((v301 == 0) != *(context + 127))
      {
        v97 = context;
        *(context + 127) = v567;
        AABC::_UpdateNitsRestrictions(v97, 0.0, 0.0, 1);
        if (v567)
        {
          v300 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 135), *(context + 138));
          v98 = context;
          v99 = v530;
          *(v530 + 52) = v300;
          v99[52] = fmaxf(v99[52], v98[180]);
          v99[52] = fminf(v99[52], v98[182]);
          AABC::UpdateDisplayBrightness_Block6(v98, 1, 2, 1, v99[52]);
        }

        if (*(context + 43))
        {
          (*(context + 43))(*(context + 44), @"CBAutoBrightnessAvailable", [MEMORY[0x1E696AD98] numberWithBool:v567]);
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayOrientation"))
    {
      v298 = CFGetTypeID(*(v530 + 111));
      v297 = CFNumberGetTypeID();
      if (v298 == v297)
      {
        v100 = v530;
        *(v530 + 51) = 0;
        CFNumberGetValue(v100[111], kCFNumberIntType, v566);
        AABC::SetDisplayOrientation(context, *(v530 + 51));
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayBrightness"))
    {
      v295 = CFGetTypeID(*(v530 + 111));
      v294 = CFDictionaryGetTypeID();
      if (v295 == v294)
      {
        v101 = v530;
        *(v530 + 50) = *(context + 131);
        *(v101 + 49) = 0;
        v293 = CFDictionaryGetValue(*(v101 + 111), @"Brightness");
        v102 = v530;
        *(v530 + 23) = v293;
        if (*(v102 + 23))
        {
          v292 = CFNumberGetTypeID();
          v291 = CFGetTypeID(*(v530 + 23));
          if (v292 == v291)
          {
            CFNumberGetValue(*(v530 + 23), kCFNumberFloatType, v565);
          }
        }

        v290 = CFDictionaryGetValue(*(v530 + 111), @"Commit");
        v103 = v530;
        *(v530 + 22) = v290;
        if (*(v103 + 22))
        {
          v289 = GetCFBooleanValue(*(v530 + 22));
          *(v530 + 49) = v289;
        }

        AABC::SetUserBrightness(context, *(v530 + 50), *(v530 + 49));
        if ((*(context + 3425) & 1) == 0 && *(v530 + 49))
        {
          v288 = DisplaySliderToLogicalBrightness(*(context + 50), *(context + 131));
          *(context + 857) = v288;
        }

        if (*(v530 + 49))
        {
          AABC::setAABCurveUpdateReason(context, 0);
        }
      }

      else
      {
        v287 = CFGetTypeID(*(v530 + 111));
        v286 = CFNumberGetTypeID();
        if (v287 == v286)
        {
          v104 = v530;
          *(v530 + 43) = *(context + 131);
          CFNumberGetValue(v104[111], kCFNumberFloatType, v564);
          AABC::SetUserBrightness(context, *(v530 + 43), 1);
          if ((*(context + 3425) & 1) == 0)
          {
            *(context + 857) = DisplaySliderToLogicalBrightness(*(context + 50), *(context + 131));
          }
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayNitsKey"))
    {
      v284 = CFGetTypeID(*(v530 + 111));
      v283 = CFDictionaryGetTypeID();
      if (v284 == v283)
      {
        v105 = v530;
        *(v530 + 42) = *(context + 131);
        *(v105 + 41) = 0;
        v282 = CFDictionaryGetValue(*(v105 + 111), @"Brightness");
        v106 = v530;
        *(v530 + 19) = v282;
        if (*(v106 + 19))
        {
          v281 = CFNumberGetTypeID();
          v280 = CFGetTypeID(*(v530 + 19));
          if (v281 == v280)
          {
            v107 = v530;
            *(v530 + 37) = 0;
            if (CFNumberGetValue(v107[19], kCFNumberFloatType, v563))
            {
              v278 = DisplayLogicalToSliderBrightness(*(context + 50), *(v530 + 37));
              *(v530 + 42) = v278;
            }
          }
        }

        v277 = CFDictionaryGetValue(*(v530 + 111), @"Commit");
        v108 = v530;
        *(v530 + 17) = v277;
        if (*(v108 + 17))
        {
          v276 = GetCFBooleanValue(*(v530 + 17));
          *(v530 + 41) = v276;
        }

        AABC::SetUserBrightness(context, *(v530 + 42), *(v530 + 41));
      }

      else
      {
        v275 = CFGetTypeID(*(v530 + 111));
        v274 = CFNumberGetTypeID();
        if (v275 == v274)
        {
          v109 = v530;
          *(v530 + 33) = 0;
          if (CFNumberGetValue(v109[111], kCFNumberFloatType, v562))
          {
            v272 = DisplayLogicalToSliderBrightness(*(context + 50), *(v530 + 33));
            AABC::SetUserBrightness(context, v272, 1);
            if (*(context + 857) < *(context + 180))
            {
              *(context + 857) = *(v530 + 33);
            }
          }
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayAutoBrightnessStatus"))
    {
      v270 = CFGetTypeID(*(v530 + 111));
      v269 = CFDictionaryGetTypeID();
      if (v270 == v269)
      {
        v110 = v530;
        *(v530 + 32) = 0;
        *(v110 + 31) = 0;
        *(v110 + 14) = 0;
        v268 = CFDictionaryGetValue(*(v110 + 111), @"DisplayAutoBrightnessActive");
        v111 = v530;
        *(v530 + 14) = v268;
        if (*(v111 + 14))
        {
          v267 = CFGetTypeID(*(v530 + 14));
          v266 = CFBooleanGetTypeID();
          if (v267 == v266)
          {
            v265 = CFBooleanGetValue(*(v530 + 14));
            *(v530 + 32) = v265;
          }
        }

        v264 = CFDictionaryGetValue(*(v530 + 111), @"DisplayAutoBrightnessDelay");
        v112 = v530;
        *(v530 + 14) = v264;
        if (*(v112 + 14))
        {
          v263 = CFGetTypeID(*(v530 + 14));
          v262 = CFNumberGetTypeID();
          if (v263 == v262)
          {
            CFNumberGetValue(*(v530 + 14), kCFNumberFloatType, v561);
          }
        }

        AABC::SetAutoBrightnessStatus(context, *(v530 + 32), *(v530 + 31));
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayBrightnessFadePeriod"))
    {
      v260 = CFNumberGetTypeID();
      v259 = CFGetTypeID(*(v530 + 111));
      if (v260 == v259)
      {
        CFNumberGetValue(*(v530 + 111), kCFNumberFloatType, context + 492);
        if (_logHandle)
        {
          v258 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v257 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v256 = init_default_corebrightness_log();
            v257 = v256;
          }

          v258 = v257;
        }

        v113 = v530;
        *(v530 + 13) = v258;
        v560 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v113[13], OS_LOG_TYPE_DEBUG))
        {
          v254 = *(v530 + 13);
          *v255 = v560;
          __os_log_helper_16_0_2_4_0_8_0(v603, 2, COERCE__INT64(*(context + 123)));
          _os_log_debug_impl(&dword_1DE8E5000, v254, v255[0], "[%x]: _fadePeriod=%f", v603, 0x12u);
        }
      }

      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayBrightnessFactorWithFade"))
    {
      v252 = CFNumberGetTypeID();
      v251 = CFGetTypeID(*(v530 + 111));
      if (v252 == v251)
      {
        v114 = v530;
        *(v530 + 24) = *(context + 122);
        CFNumberGetValue(v114[111], kCFNumberFloatType, v559);
        AABC::SetDisplayFactor(context, *(v530 + 24), 0);
      }

      else if (*(v530 + 111))
      {
        v250 = CFDictionaryGetTypeID();
        v249 = CFGetTypeID(*(v530 + 111));
        if (v250 == v249)
        {
          v248 = CFDictionaryGetValue(*(v530 + 111), @"DisplayBrightnessFadePeriod");
          v115 = v530;
          *(v530 + 11) = v248;
          if (*(v115 + 11))
          {
            v247 = CFNumberGetTypeID();
            v246 = CFGetTypeID(*(v530 + 11));
            if (v247 == v246)
            {
              CFNumberGetValue(*(v530 + 11), kCFNumberFloat32Type, context + 492);
              if (_logHandle)
              {
                v245 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v244 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v243 = init_default_corebrightness_log();
                  v244 = v243;
                }

                v245 = v244;
              }

              v116 = v530;
              *(v530 + 10) = v245;
              v558 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v116[10], OS_LOG_TYPE_DEBUG))
              {
                v240 = *(v530 + 10);
                *v241 = v558;
                *&v117 = *(context + 123);
                v242 = v602;
                __os_log_helper_16_0_2_4_0_8_0(v602, 2, v117);
                _os_log_debug_impl(&dword_1DE8E5000, v240, v241[0], "[%x]: _fadePeriod=%f", v602, 0x12u);
              }
            }
          }

          v239 = CFDictionaryGetValue(*(v530 + 111), @"DisplayBrightnessFactor");
          v118 = v530;
          *(v530 + 8) = v239;
          if (*(v118 + 8))
          {
            v238 = CFNumberGetTypeID();
            v237 = CFGetTypeID(*(v530 + 8));
            if (v238 == v237)
            {
              v119 = v530;
              *(v530 + 15) = *(context + 122);
              CFNumberGetValue(v119[8], kCFNumberFloat32Type, v557);
              AABC::SetDisplayFactor(context, *(v530 + 15), 0);
            }
          }
        }
      }

LABEL_386:
      AABC::NotifyCPMSWhenDisplayChangeState(context, *(context + 122) > 0.0);
      return;
    }

    if (CFEqual(*(v530 + 112), @"DisplayBrightnessFactor"))
    {
      v235 = CFNumberGetTypeID();
      v234 = CFGetTypeID(*(v530 + 111));
      if (v235 == v234)
      {
        v120 = v530;
        *(v530 + 14) = *(context + 122);
        CFNumberGetValue(v120[111], kCFNumberFloatType, v556);
        AABC::SetDisplayFactor(context, *(v530 + 14), 0);
      }

      goto LABEL_386;
    }

    if (CFEqual(*(v530 + 112), @"DominoStateUpdate"))
    {
      v232 = CFBooleanGetTypeID();
      v231 = CFGetTypeID(*(v530 + 111));
      if (v232 == v231)
      {
        v230 = CFBooleanGetValue(*(v530 + 111));
        v555 = v230;
        if ((*(context + 3425) & 1) != v230)
        {
          v121 = context;
          *(context + 3425) = v555 != 0;
          if (v121[3425])
          {
            v130 = context;
            *(context + 3426) = *(context + 128) == 0;
            LogicalBrightness = DisplayGetLogicalBrightness(v130[50]);
            v131 = context;
            *(context + 857) = LogicalBrightness;
            AABC::UpdateAutoBrightnessEnabledStatus(v131, *MEMORY[0x1E695E4D0]);
            DisplaySetProperty(*(context + 50), @"DisplayBrightnessAuto", MEMORY[0x1E695E118]);
            v226 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 135), *(context + 138));
            v132 = context;
            *(v530 + 7) = v226;
            v225 = AABC::IlluminanceToLuminance(v132, v132 + 804, v132[135], v132[138]);
            v133 = context;
            v134 = v530;
            *(v530 + 6) = v225;
            v134[7] = fminf(v134[7], v134[6]);
            if ((v133[3426] & 1) == 0)
            {
              *(v530 + 7) = fminf(*(context + 857), *(v530 + 7));
            }

            v135 = context;
            v136 = v530;
            *(v530 + 7) = fmaxf(*(v530 + 7), *(context + 180));
            v136[7] = fminf(v136[7], v135[182]);
            AABC::UpdateDisplayBrightness_Block6(v135, 1, 2, 1, v136[7]);
          }

          else
          {
            if (*(context + 3426))
            {
              v229 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 135), *(context + 138));
              v125 = context;
              v126 = v530;
              *(v530 + 11) = v229;
              v126[11] = fmaxf(v126[11], v125[180]);
              v126[11] = fminf(v126[11], v125[182]);
              AABC::UpdateDisplayBrightness_Block6(v125, 1, 2, 1, v126[11]);
            }

            else
            {
              AABC::CancelRamp(context);
              v122 = context;
              v123 = v531;
              v124 = v530;
              *(v530 + 12) = 10;
              AABC::SetBrightness(v122, v122[857], 0.5, *(v124 + 12), v123, v122);
            }

            v127 = v530;
            *(v530 + 10) = *(context + 3426) & 1;
            if (*(v127 + 10))
            {
              v228 = *MEMORY[0x1E695E4D0];
            }

            else
            {
              v228 = *MEMORY[0x1E695E4C0];
            }

            v128 = context;
            v129 = v530;
            *(v530 + 4) = v228;
            AABC::UpdateAutoBrightnessEnabledStatus(v128, v129[4]);
            DisplaySetProperty(*(context + 50), @"DisplayBrightnessAuto", [MEMORY[0x1E696AD98] numberWithInt:*(v530 + 10)]);
          }
        }
      }
    }

    else if (CFEqual(*(v530 + 112), @"ActivateALS"))
    {
      v223 = CFBooleanGetTypeID();
      v222 = CFGetTypeID(*(v530 + 111));
      if (v223 == v222)
      {
        v221 = CFBooleanGetValue(*(v530 + 111));
        v137 = context;
        v138 = v530;
        v554[23] = v221;
        v139 = 1.0;
        if (!v221)
        {
          v139 = 0.0;
        }

        v140 = v139;
        *(v530 + 4) = v140;
        AABC::SetDisplayFactor(v137, v138[4], 1);
      }
    }

    else if (!CFEqual(*(v530 + 112), @"DisplayBrightnessFactorPending"))
    {
      if (CFEqual(*(v530 + 112), @"UserInteractedWithUI"))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v141 = v530;
        v142 = context;
        *(v530 + 1) = Current;
        if (v142[85] + 3.0 >= v141[1])
        {
          if (_logHandle)
          {
            v211 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v210 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v209 = init_default_corebrightness_log();
              v210 = v209;
            }

            v211 = v210;
          }

          oslog = v211;
          v550 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            v206 = oslog;
            *v207 = v550;
            v208 = v601;
            __os_log_helper_16_0_1_8_0(v601, 0x4008000000000000);
            _os_log_impl(&dword_1DE8E5000, oslog, v550, "User interacted with UI in first %f sec of fast ramp mode -> postpone switching to slow mode.", v601, 0xCu);
          }

          *(context + 86) = *(context + 85) + 3.0;
        }

        else
        {
          if (_logHandle)
          {
            v217 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v216 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v215 = init_default_corebrightness_log();
              v216 = v215;
            }

            v217 = v216;
          }

          v143 = v530;
          *v530 = v217;
          v553 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(*v143, OS_LOG_TYPE_INFO))
          {
            v212 = *v530;
            *v213 = v553;
            v214 = v552;
            __os_log_helper_16_0_0(v552);
            _os_log_impl(&dword_1DE8E5000, v212, v213[0], "User interacted with UI -> end fast ramp mode", v552, 2u);
          }

          if (*(context + 435))
          {
            AABC::CancelFastRampMode(context);
          }

          else if (*(context + 169))
          {
            *(context + 86) = *(context + 85);
          }
        }

        *(context + 3328) = 1;
      }

      else if (CFEqual(*(v530 + 112), @"ALSTurnOn"))
      {
        v549 = 0;
        v204 = CFGetTypeID(*(v530 + 111));
        v203 = CFBooleanGetTypeID();
        if (v204 == v203)
        {
          v549 = CFBooleanGetValue(*(v530 + 111));
          if (v549 != *(context + 129))
          {
            v144 = context;
            *(context + 129) = v549;
            *(v144 + 160) = v549 != 0;
            v144[102] = 1.0;
            AABC::UpdateALSState(v144, 4);
          }
        }
      }

      else if (CFEqual(*(v530 + 112), @"IOHIDALSTestMode"))
      {
        v201 = CFNumberGetTypeID();
        v200 = CFGetTypeID(*(v530 + 111));
        if (v201 == v200)
        {
          v145 = context;
          v146 = v530;
          *(context + 160) = 0;
          CFNumberGetValue(v146[111], kCFNumberSInt32Type, v145 + 640);
          AABC::UpdateALSState(context, 4);
        }
      }

      else
      {
        v199 = CFEqual(*(v530 + 112), @"Aggressivity");
        if (v199 && (v197 = *(v530 + 107), v198 = objc_opt_class(), v196 = objc_opt_isKindOfClass(), (v196 & 1) != 0))
        {
          AABC::SetAggressivity(context, [*(v530 + 107) unsignedIntValue]);
        }

        else if (CFEqual(*(v530 + 112), @"EcoMode"))
        {
          v548 = 0;
          v194 = CFGetTypeID(*(v530 + 111));
          v193 = CFBooleanGetTypeID();
          if (v194 == v193)
          {
            v192 = CFBooleanGetValue(*(v530 + 111));
            v548 = v192 != 0;
          }

          else
          {
            v191 = CFGetTypeID(*(v530 + 111));
            v190 = CFNumberGetTypeID();
            if (v191 == v190)
            {
              v547 = 0;
              CFNumberGetValue(*(v530 + 111), kCFNumberIntType, &v547);
              v548 = v547 != 0;
            }
          }

          AABC::_UpdateEcoModeState(context, v548);
          v189 = _os_feature_enabled_impl();
          if ((v189 & 1) == 0)
          {
            if (v548)
            {
              v147 = 70;
            }

            else
            {
              v147 = 0;
            }

            [*(context + 486) forceMitigationLevel:v147];
          }
        }

        else if (CFEqual(*(v530 + 112), @"PreStrobe"))
        {
          if (*(v530 + 111))
          {
            v187 = CFNumberGetTypeID();
            v186 = CFGetTypeID(*(v530 + 111));
            if (v187 == v186)
            {
              v546 = 0;
              CFNumberGetValue(*(v530 + 111), kCFNumberIntType, &v546);
              if (*(context + 58))
              {
                service = *(context + 58);
                if (v546)
                {
                  property = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  property = *MEMORY[0x1E695E4C0];
                }

                IOHIDServiceClientSetProperty(service, @"MuonEnabled", property);
              }

              *(context + 497) = v546 != 0;
            }
          }
        }

        else if (*(v530 + 111) && (v183 = CFEqual(*(v530 + 112), @"BrightnessWeakCap")) != 0)
        {
          v182 = CFNumberGetTypeID();
          v181 = CFGetTypeID(*(v530 + 111));
          if (v182 == v181)
          {
            v545 = 100.0;
            CFNumberGetValue(*(v530 + 111), kCFNumberFloatType, &v545);
            AABC::CancelRamp(context);
            if (v545 >= 100.0)
            {
              v149 = context;
              *(context + 978) = *(context + 182);
              v149[3916] = 0;
            }

            else
            {
              v180 = DisplaySliderToLogicalBrightness(*(context + 50), v545);
              v148 = context;
              *(context + 978) = v180;
              v148[3916] = 1;
              *(v148 + 980) = *(v148 + 135);
              if (_logHandle)
              {
                v179 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v178 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v178 = init_default_corebrightness_log();
                }

                v179 = v178;
              }

              v544 = v179;
              v543 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
              {
                v176 = v544;
                *v177 = v543;
                __os_log_helper_16_0_0(v542);
                _os_log_impl(&dword_1DE8E5000, v176, v177[0], "Enabling weak cap\n", v542, 2u);
              }
            }

            *(context + 3924) = 1;
          }
        }

        else if (*(v530 + 111) && (v175 = CFEqual(*(v530 + 112), @"RLuxEnable")) != 0)
        {
          v174 = CFBooleanGetTypeID();
          v173 = CFGetTypeID(*(v530 + 111));
          if (v174 == v173)
          {
            v541 = 0;
            v541 = CFBooleanGetValue(*(v530 + 111));
            v540[0] = std::bitset<3ul>::operator[][abi:de200100](context + 296, 2uLL);
            v540[1] = v150;
            std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator=[abi:de200100](v540, v541 == 0);
            AABC::evaluateAABRearConditions(context);
          }
        }

        else if (*(v530 + 111) && (v172 = CFEqual(*(v530 + 112), @"AliasingMitigationFilterDuration")) != 0)
        {
          v171 = CFNumberGetTypeID();
          v170 = CFGetTypeID(*(v530 + 111));
          if (v171 == v170)
          {
            v539 = 0;
            CFNumberGetValue(*(v530 + 111), kCFNumberIntType, &v539);
            AABC::resetFilter(context, context + 27);
            if (v539 < 0)
            {
              AABC::setFilterDuration(context, context + 216, 5);
            }

            else
            {
              AABC::setFilterDuration(context, context + 216, v539);
            }
          }
        }

        else
        {
          v169 = [@"CBDynamicSliderScaler" isEqualToString:*(v530 + 106)];
          if (v169 & 1) != 0 && (v167 = *(v530 + 107), v168 = objc_opt_class(), v166 = objc_opt_isKindOfClass(), (v166))
          {
            [*(v530 + 107) floatValue];
            AABC::UpdateAmbrosiaFactor(context, v151);
          }

          else
          {
            v165 = [@"CBPowerMitigationLevel" isEqualToString:*(v530 + 106)];
            if (v165 & 1) != 0 && (v163 = *(v530 + 107), v164 = objc_opt_class(), v162 = objc_opt_isKindOfClass(), (v162))
            {
              v161 = [*(v530 + 107) unsignedIntValue];
              v538 = v161;
              v537[0] = xmmword_1DEACE618;
              v537[1] = xmmword_1DEACE628;
              if (v161)
              {
                [*(context + 486) stop];
                v158 = *(context + 486);
                v159 = v538;
                v152 = std::array<PMMitigationLevel,4ul>::size[abi:de200100]();
                v160 = clamp(v538, 0.0, (v152 - 1));
                [v158 forceMitigationLevel:{*std::array<PMMitigationLevel, 4ul>::operator[][abi:de200100](v537, v160)}];
              }

              else
              {
                [*(context + 486) start];
              }
            }

            else
            {
              if (_logHandle)
              {
                v157 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v156 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v155 = init_default_corebrightness_log();
                  v156 = v155;
                }

                v157 = v156;
              }

              v536 = v157;
              v535 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
              {
                v153[9] = v536;
                *v154 = v535;
                __os_log_helper_16_2_3_4_0_8_64_8_64(v600, 1, *(v530 + 112), *(v530 + 111));
                _os_log_debug_impl(&dword_1DE8E5000, v536, v535, "[%x]: unknown key=%@ property=%@", v600, 0x1Cu);
              }
            }
          }
        }
      }
    }
  }
}

void CFXAnimateAmbientAdaptationModes(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, float *a6, float a7, float a8)
{
  if (a1 && *(a1 + 96) && a4 && a5 > 0)
  {
    v19 = 1.0;
    v18 = 0;
    v17 = *(*(a1 + 96) + 248);
    for (i = 0; i < a5; ++i)
    {
      v15 = _CFXGetStrengthFromMode(a1, *(a4 + 4 * i));
      if (v15 <= v19)
      {
        v19 = v15;
        v17 = *(a4 + 4 * i);
        v18 = 1;
      }
    }

    v14 = 1.0;
    v13 = 0;
    v12 = *(*(a1 + 96) + 248);
    if (a2)
    {
      for (j = 0; j < a3; ++j)
      {
        v10 = _CFXGetStrengthFromMode(a1, *(a2 + 4 * j));
        if (v10 <= v14)
        {
          v14 = v10;
          v12 = *(a2 + 4 * j);
          v13 = 1;
        }
      }
    }

    if ((v13 & 1) == 0)
    {
      v14 = _CFXGetStrengthFromMode(a1, *(*(a1 + 96) + 248));
    }

    if (v18)
    {
      v24 = fminf(1.0, fmaxf(0.0, a7));
      v9 = v14 + (v24 * (v19 - v14));
      if (a6)
      {
        *a6 = v9;
      }

      syslog(7, "ANIMATING from mode %d to mode %d with ratio %f and period %f -> strength %f", v12, v17, (v24 * 100.0), a8, v9);
      if (*(*(a1 + 96) + 184))
      {
        *&v8 = v14 + (v24 * (v19 - v14));
        CFXSetAmbientAdaptationStrength(a1, v8, a8);
      }

      if (v24 >= 1.0)
      {
        *(*(a1 + 96) + 248) = v17;
      }

      else
      {
        *(*(a1 + 96) + 248) = v12;
      }
    }
  }
}

float _CFXGetStrengthFromMode(uint64_t a1, unsigned int a2)
{
  v3 = 0.0;
  if (a1 && *(a1 + 96))
  {
    return *(*(a1 + 96) + 224 + 4 * a2);
  }

  return v3;
}

double CFXSetAmbientAdaptationStrength(uint64_t a1, double result, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = *&result;
  if (a1)
  {
    LODWORD(result) = *(a1 + 2252);
    if (*&result >= 0.0)
    {
      LODWORD(result) = *(a1 + 2252);
      a3 = *&result;
    }

    if (*(a1 + 96))
    {
      v11 = *(*(a1 + 96) + 252) * a3;
      *&result = v12;
      if (v12 != **(a1 + 96))
      {
        v8 = **(a1 + 96);
        **(a1 + 96) = v12;
        if (*(*(a1 + 96) + 56))
        {
          free(*(*(a1 + 96) + 56));
          *(*(a1 + 96) + 56) = 0;
        }

        syslog(7, "Set strength %f\n", v12);
        *(*(a1 + 96) + 56) = _CFXPolygonFromStrength((*(a1 + 96) + 40), *(*(a1 + 96) + 148), 0.85);
        Current = CFAbsoluteTimeGetCurrent();
        if ((*(a1 + 364) & 1) != 0 && (*(*(a1 + 96) + 301) & 1) == 0)
        {
          *(*(a1 + 96) + 272) = 0;
          *(*(a1 + 96) + 284) = *(*(a1 + 96) + 280);
          *(*(a1 + 96) + 276) = v12;
          *(*(a1 + 96) + 264) = Current;
          *(*(a1 + 96) + 256) = v11;
          if (*(*(a1 + 96) + 303))
          {
            *(*(a1 + 96) + 328) = 0;
            *(*(a1 + 96) + 340) = *(*(a1 + 96) + 336);
            *(*(a1 + 96) + 332) = *(*(a1 + 96) + 332);
            *(*(a1 + 96) + 320) = Current;
            *(*(a1 + 96) + 312) = v11;
          }

          if (*(a1 + 328))
          {
            (*(a1 + 328))(*(a1 + 336), 0);
          }
        }

        if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v4 = inited;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v3 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v3 = init_default_corebrightness_log();
          }

          v4 = v3;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v13, "Harmony Strength", COERCE__INT64(v8), COERCE__INT64(v12), *(*(a1 + 96) + 312));
          _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "[WP update: %s]: %f -> %f t: %f", v13, 0x2Au);
        }

        if (*(*(a1 + 96) + 184))
        {
          *&result = v12 * 10.0;
          v6 = (v12 * 10.0);
          if (v6 > 9)
          {
            v6 = 9;
          }

          if (v6 != *(a1 + 1736))
          {
            *(a1 + 1656 + 8 * *(a1 + 1736)) = *(a1 + 1656 + 8 * *(a1 + 1736)) + MachTimeToSeconds((Current - *(a1 + 1744)));
            result = Current;
            *(a1 + 1744) = Current;
            *(a1 + 1736) = v6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CFXGetAmbientAdaptationMode(uint64_t a1, float *a2)
{
  v3 = 0;
  if (a1)
  {
    if (*(a1 + 96))
    {
      v3 = *(*(a1 + 96) + 248);
      if (a2)
      {
        *a2 = _CFXGetStrengthFromMode(a1, v3);
      }
    }
  }

  return v3;
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void disp_dispatch_sync(NSObject *a1, void (**a2)(void))
{
  if (a1)
  {
    dispatch_sync(a1, a2);
  }

  else
  {
    a2[2]();
  }
}

uint64_t DisplaySetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x20000000;
  v18 = 32;
  v19 = 1;
  v3 = *(a1 + 144);
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __DisplaySetProperty_block_invoke;
  v10 = &unk_1E867CA18;
  v12 = a3;
  v13 = a2;
  v14 = v22;
  v11 = &v15;
  disp_dispatch_sync(v3, &v6);
  v5 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v5;
}

void __DisplaySetProperty_block_invoke(uint64_t a1)
{
  v651 = *MEMORY[0x1E69E9840];
  v587 = a1;
  v586 = a1;
  v585 = 0.0;
  if (*(a1 + 40) && CFEqual(*(a1 + 48), @"DisplayBrightness"))
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(*(a1 + 40)))
    {
      v585 = *(*(a1 + 56) + 336);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
      if (_logHandle)
      {
        v279 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v279 = inited;
      }

      v584 = v279;
      v583 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v650, "DisplayBrightness", COERCE__INT64(v585));
        _os_log_debug_impl(&dword_1DE8E5000, v584, v583, "DisplaySetProperty: %s = %f\n", v650, 0x16u);
      }

      v582[0] = 1;
      *&v582[1] = v585;
      __DisplayUpdateAAPStateInternal(*(a1 + 56), v582, 1);
      v581 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v585);
      if (v581 > *(*(a1 + 56) + 528))
      {
        _DisplaySetBrightnessWeakCapWithFade(*(a1 + 56), 0, v581, 0.0);
      }

      __DisplaySetBrightnessWithFade(*(a1 + 56), 12296, v585, 0.0);
    }

    else
    {
      v277 = CFDictionaryGetTypeID();
      if (v277 == CFGetTypeID(*(a1 + 40)))
      {
        Value = CFDictionaryGetValue(*(a1 + 40), @"Brightness");
        v579 = CFDictionaryGetValue(*(a1 + 40), @"Commit");
        v578 = CFDictionaryGetValue(*(a1 + 40), @"Period");
        if (Value)
        {
          v276 = CFGetTypeID(Value);
          if (v276 == CFNumberGetTypeID())
          {
            v577 = *(*(a1 + 56) + 276);
            if (v578)
            {
              v275 = CFGetTypeID(v578);
              if (v275 == CFNumberGetTypeID())
              {
                if (CFNumberIsFloatType(v578))
                {
                  CFNumberGetValue(v578, kCFNumberFloat32Type, &v577);
                }
              }
            }

            v585 = *(*(a1 + 56) + 336);
            CFNumberGetValue(Value, kCFNumberFloatType, &v585);
            v585 = v585 / *(*(a1 + 56) + 12728);
            v576[0] = 1;
            *&v576[1] = v585;
            __DisplayUpdateAAPStateInternal(*(a1 + 56), v576, v579 == *MEMORY[0x1E695E4D0]);
            v575 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v585);
            if (v575 > *(*(a1 + 56) + 528))
            {
              _DisplaySetBrightnessWeakCapWithFade(*(a1 + 56), 0, v575, v577);
            }

            if (_logHandle)
            {
              v274 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v273 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v273 = init_default_corebrightness_log();
              }

              v274 = v273;
            }

            v574 = v274;
            v573 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v274, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_3_8_32_8_0_8_0(v649, "DisplayBrightness", COERCE__INT64(v585), COERCE__INT64(v575));
              _os_log_debug_impl(&dword_1DE8E5000, v574, v573, "DisplaySetProperty: %s = %f (nits=%f)\n", v649, 0x20u);
            }

            if (v579 == *MEMORY[0x1E695E4D0])
            {
              __DisplayReportCommit(*(a1 + 56), v585);
            }

            if (v579 == *MEMORY[0x1E695E4D0])
            {
              v1 = 12296;
            }

            else
            {
              v1 = 8200;
            }

            v572 = v1;
            if (*(*(a1 + 56) + 323))
            {
              v571 = v577;
              v570 = _DisplayLuminanceToPerceptualLuminanceInternal(*(a1 + 56), *(*(a1 + 56) + 1256));
              v569 = _DisplayLuminanceToPerceptualLuminanceInternal(*(a1 + 56), v575);
              v568 = v569 - v570;
              if ((v569 - v570) < 0.0 && v571 <= 0.0)
              {
                v571 = 0.4;
              }

              if (v571 <= 0.0)
              {
                *(*(a1 + 56) + 280) = -1.0;
              }

              else
              {
                v568 = fminf(fmaxf(fabsf(v568), 0.0), 1.0);
                *(*(a1 + 56) + 280) = v585;
                v572 |= 0x80u;
                v577 = v571 * v568;
              }
            }

            __DisplaySetBrightnessWithFade(*(a1 + 56), v572, v585, v577);
            if (v579 == *MEMORY[0x1E695E4D0])
            {
              if (_logHandle)
              {
                v272 = _logHandle;
              }

              else
              {
                v271 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                v272 = v271;
              }

              v567 = v272;
              v566 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_4_0(v648, "User change", COERCE__INT64(v585), COERCE__INT64(v575), COERCE__INT64(*(*(a1 + 56) + 1260)), v579 == *MEMORY[0x1E695E4D0]);
                _os_log_impl(&dword_1DE8E5000, v567, v566, "[BRT update: %s]: slider value = %f, nits = %f, nits physical = %f, commit = %d", v648, 0x30u);
              }
            }
          }
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else if (*(a1 + 40) && CFEqual(*(a1 + 48), @"DisplayNitsKey"))
  {
    v270 = CFNumberGetTypeID();
    if (v270 == CFGetTypeID(*(a1 + 40)))
    {
      v585 = *(*(a1 + 56) + 1256);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
      if (_logHandle)
      {
        v269 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v268 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v268 = init_default_corebrightness_log();
        }

        v269 = v268;
      }

      v565 = v269;
      v564 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v647, "DisplayNitsKey", COERCE__INT64(v585));
        _os_log_debug_impl(&dword_1DE8E5000, v565, v564, "DisplaySetProperty: %s = %f\n", v647, 0x16u);
      }

      _DisplaySetLogicalBrightnessWithFade(*(a1 + 56), 12296, 0, 0, v585, 0.0);
    }

    else
    {
      v267 = CFDictionaryGetTypeID();
      if (v267 == CFGetTypeID(*(a1 + 40)))
      {
        v563 = CFDictionaryGetValue(*(a1 + 40), @"Brightness");
        v562 = CFDictionaryGetValue(*(a1 + 40), @"Commit");
        v561 = CFDictionaryGetValue(*(a1 + 40), @"Period");
        if (v563)
        {
          v266 = CFGetTypeID(v563);
          if (v266 == CFNumberGetTypeID())
          {
            v560 = *(*(a1 + 56) + 276);
            if (v561)
            {
              v265 = CFGetTypeID(v561);
              if (v265 == CFNumberGetTypeID())
              {
                if (CFNumberIsFloatType(v561))
                {
                  CFNumberGetValue(v561, kCFNumberFloat32Type, &v560);
                }
              }
            }

            v585 = *(*(a1 + 56) + 1256);
            CFNumberGetValue(v563, kCFNumberFloatType, &v585);
            if (v562 == *MEMORY[0x1E695E4D0])
            {
              v559 = _DisplayLogicalToSliderBrightnessInternal(*(a1 + 56), v585);
              __DisplayReportCommit(*(a1 + 56), v559);
            }

            if (_logHandle)
            {
              v264 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v263 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v263 = init_default_corebrightness_log();
              }

              v264 = v263;
            }

            v558 = v264;
            v557 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_2_8_32_8_0(v646, "DisplayNitsKey", COERCE__INT64(v585));
              _os_log_debug_impl(&dword_1DE8E5000, v558, v557, "DisplaySetProperty: %s = %f\n", v646, 0x16u);
            }

            if (v562 == *MEMORY[0x1E695E4D0])
            {
              v2 = 12296;
            }

            else
            {
              v2 = 8200;
            }

            _DisplaySetLogicalBrightnessWithFade(*(a1 + 56), v2, 0, 0, v585, v560);
          }
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else if (CFEqual(*(a1 + 48), @"kIOHIDDisplaySliderMovementFadePeriodKey"))
  {
    v262 = CFNumberGetTypeID();
    if (v262 == CFGetTypeID(*(a1 + 40)) && CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585))
    {
      *(*(a1 + 56) + 276) = v585;
      if (_logHandle)
      {
        v261 = _logHandle;
      }

      else
      {
        v260 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v261 = v260;
      }

      v556 = v261;
      v555 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v645, "kIOHIDDisplaySliderMovementFadePeriodKey", COERCE__INT64(v585));
        _os_log_debug_impl(&dword_1DE8E5000, v556, v555, "DisplaySetProperty: %s = %f\n", v645, 0x16u);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CPMSToggleHDRCap"))
  {
    v259 = CFBooleanGetTypeID();
    if (v259 == CFGetTypeID(*(a1 + 40)))
    {
      v3 = *(a1 + 40) == *MEMORY[0x1E695E4D0];
      v554 = v3;
      if (v3)
      {
        *(*(a1 + 56) + 12081) = 0;
        *(*(a1 + 56) + 12082) = 0;
        __DisplayStartAPLCPMSTimer(*(a1 + 56), 1.0);
      }

      else if (*(*(a1 + 56) + 12112))
      {
        __DisplayProcessHDRStatusForCoreAnalytics(*(a1 + 56));
        dispatch_release(*(*(a1 + 56) + 12112));
        *(*(a1 + 56) + 12112) = 0;
        *(*(a1 + 56) + 12088) = 0;
        *(*(a1 + 56) + 12096) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CPMSPowerAccumulator"))
  {
    v549 = 0;
    v550 = &v549;
    v551 = 0x20000000;
    v552 = 32;
    v553 = 0;
    if (DisplayHasDCP(*(a1 + 56)))
    {
      v545[0] = 0;
      v545[1] = v545;
      v546 = 0x20000000;
      v547 = 32;
      v548 = 0;
      v4 = *(*(a1 + 56) + 152);
      v537 = MEMORY[0x1E69E9820];
      v538 = -1073741824;
      v539 = 0;
      v540 = __DisplaySetProperty_block_invoke_458;
      v541 = &unk_1E867C9D8;
      v542 = &v549;
      v544 = *(a1 + 56);
      v543 = v545;
      dispatch_sync(v4, &v537);
      _Block_object_dispose(v545, 8);
    }

    else
    {
      v550[3] = __DisplayGetPowerAccumulator(*(a1 + 56));
    }

    v536 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, v550 + 3);
    if (v536)
    {
      CFDictionarySetValue(*(*(a1 + 56) + 192), @"CPMSPowerAccumulatorValue", v536);
      CFRelease(v536);
    }

    _Block_object_dispose(&v549, 8);
  }

  else if (CFEqual(*(a1 + 48), @"CoreBrightnessBDMEnabled"))
  {
    if (*(a1 + 40))
    {
      v258 = CFNumberGetTypeID();
      if (v258 == CFGetTypeID(*(a1 + 40)))
      {
        v535 = *(*(a1 + 56) + 1176) & 1;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v535);
        *(*(a1 + 56) + 1176) = v535 != 0;
        if (_logHandle)
        {
          v257 = _logHandle;
        }

        else
        {
          v256 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v257 = v256;
        }

        v534 = v257;
        v533 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v257, OS_LOG_TYPE_DEBUG))
        {
          if (v535)
          {
            v5 = "enabled";
          }

          else
          {
            v5 = "disabled";
          }

          __os_log_helper_16_2_1_8_32(v644, v5);
          _os_log_debug_impl(&dword_1DE8E5000, v534, v533, "BrightDotMitigation %s", v644, 0xCu);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayInitialBrightness"))
  {
    v255 = CFNumberGetTypeID();
    if (v255 == CFGetTypeID(*(a1 + 40)))
    {
      v585 = *(*(a1 + 56) + 336);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
      if (_logHandle)
      {
        v254 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v253 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v253 = init_default_corebrightness_log();
        }

        v254 = v253;
      }

      v532 = v254;
      v531 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v254, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v643, "DisplayInitialBrightness", COERCE__INT64(v585));
        _os_log_debug_impl(&dword_1DE8E5000, v532, v531, "DisplaySetProperty: %s = %f\n", v643, 0x16u);
      }

      v6.n128_f64[0] = *(*(a1 + 56) + 348);
      if (v6.n128_f64[0] == 0.0)
      {
        v6.n128_f32[0] = v585;
        _DisplaySetBrightness(*(a1 + 56), v6);
      }

      else if (*(*(a1 + 56) + 1384) != 0.0 && *(*(a1 + 56) + 1400) == 0.0)
      {
        *(*(a1 + 56) + 12496) = v585;
        *(*(a1 + 56) + 12500) = 4096;
      }
    }

    else
    {
      v252 = CFDictionaryGetTypeID();
      if (v252 == CFGetTypeID(*(a1 + 40)))
      {
        v530 = CFDictionaryGetValue(*(a1 + 40), @"Brightness");
        v529 = CFDictionaryGetValue(*(a1 + 40), @"Commit");
        if (v530)
        {
          v251 = CFGetTypeID(v530);
          if (v251 == CFNumberGetTypeID())
          {
            v585 = *(*(a1 + 56) + 336);
            CFNumberGetValue(v530, kCFNumberFloatType, &v585);
            if (_logHandle)
            {
              v250 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v249 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v249 = init_default_corebrightness_log();
              }

              v250 = v249;
            }

            v528 = v250;
            v527 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_2_8_32_8_0(v642, "DisplayInitialBrightness", COERCE__INT64(v585));
              _os_log_debug_impl(&dword_1DE8E5000, v528, v527, "DisplaySetProperty: %s = %f\n", v642, 0x16u);
            }

            if (*(*(a1 + 56) + 348) == 0.0)
            {
              if (v529 == *MEMORY[0x1E695E4D0])
              {
                v7 = 4096;
              }

              else
              {
                v7 = 0;
              }

              __DisplaySetBrightness(*(a1 + 56), v7, v585);
            }

            else if (*(*(a1 + 56) + 1384) != 0.0 && *(*(a1 + 56) + 1400) == 0.0)
            {
              *(*(a1 + 56) + 12496) = v585;
              if (v529 == *MEMORY[0x1E695E4D0])
              {
                v8 = 4096;
              }

              else
              {
                v8 = 0;
              }

              *(*(a1 + 56) + 12500) = v8;
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"AmbientAdaptiveDimming"))
  {
    if (*(a1 + 40))
    {
      v248 = CFDictionaryGetTypeID();
      if (v248 == CFGetTypeID(*(a1 + 40)))
      {
        v526 = 0;
        v525 = CFDictionaryGetValue(*(a1 + 40), @"AmbientAdaptiveDimmingEnable");
        if (v525)
        {
          v247 = CFNumberGetTypeID();
          if (v247 == CFGetTypeID(v525))
          {
            CFNumberGetValue(v525, kCFNumberIntType, &v526);
          }
        }

        v524 = 0.0;
        v523 = CFDictionaryGetValue(*(a1 + 40), @"AmbientAdaptiveDimmingPeriod");
        if (v523)
        {
          v246 = CFNumberGetTypeID();
          if (v246 == CFGetTypeID(v523))
          {
            CFNumberGetValue(v523, kCFNumberFloatType, &v524);
          }
        }

        if (_logHandle)
        {
          v245 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v244 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v244 = init_default_corebrightness_log();
          }

          v245 = v244;
        }

        v522 = v245;
        v521 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_4_0_8_0(v641, v526, COERCE__INT64(v524));
          _os_log_impl(&dword_1DE8E5000, v522, v521, "AutoDim request received with enable:%i, period:%f", v641, 0x12u);
        }

        if (*(*(a1 + 56) + 228) != v526)
        {
          *(*(a1 + 56) + 228) = v526;
          if (v526)
          {
            v243 = 100.0;
          }

          else
          {
            v243 = *(*(a1 + 56) + 1312);
          }

          v520 = v243;
          _DisplaySetAdaptiveDimmingLimitWithFade(*(a1 + 56), v243, v524);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"UserInteractedWithUI"))
  {
    if (*(*(a1 + 56) + 36))
    {
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      v519 = __DisplayCalculateBrightnessAtAmbient(*(a1 + 56), *(*(a1 + 56) + 1184));
      __DisplaySetLogicalBrightnessLegacy(*(a1 + 56), 2u, v519, -1.0);
      if (_logHandle)
      {
        v242 = _logHandle;
      }

      else
      {
        v241 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v242 = v241;
      }

      v518 = v242;
      v517 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v242, OS_LOG_TYPE_DEBUG))
      {
        if (*(*(a1 + 56) + 1204) == 0.0)
        {
          v9 = "false";
        }

        else
        {
          v9 = "true";
        }

        __os_log_helper_16_2_2_8_32_8_32(v640, "UserInteractedWithUI", v9);
        _os_log_debug_impl(&dword_1DE8E5000, v518, v517, "DisplaySetProperty: %s = %s\n", v640, 0x16u);
      }
    }

    *(*(a1 + 56) + 584) = 1;
    if (_logHandle)
    {
      v240 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v239 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v239 = init_default_corebrightness_log();
      }

      v240 = v239;
    }

    v516 = v240;
    v515 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
    {
      v237 = v516;
      v238 = v515;
      __os_log_helper_16_0_0(v514);
      _os_log_impl(&dword_1DE8E5000, v237, v238, "Weak cap: user interacted\n", v514, 2u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessAuto"))
  {
    CFBooleanValue = GetCFBooleanValue(*(a1 + 40));
    v10 = 1.0;
    if (!CFBooleanValue)
    {
      v10 = 0.0;
    }

    v11 = v10;
    v585 = v11;
    if (v11 == 1.0)
    {
      v513 = MGGetBoolAnswer();
      if ((v513 & 1) == 0)
      {
        if (_logHandle)
        {
          v235 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v234 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v234 = init_default_corebrightness_log();
          }

          v235 = v234;
        }

        v512 = v235;
        v511 = 16;
        if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
        {
          v232 = v512;
          v233 = v511;
          __os_log_helper_16_0_0(v510);
          _os_log_error_impl(&dword_1DE8E5000, v232, v233, "Refuse to turn on AAB without ALS", v510, 2u);
        }

        v585 = 0.0;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }

    if (v585 != *(*(a1 + 56) + 1204))
    {
      theDict = *(*(a1 + 56) + 192);
      if (v585 == 0.0)
      {
        CFDictionarySetValue(theDict, @"DisplayBrightnessAuto", *MEMORY[0x1E695E4C0]);
      }

      else
      {
        CFDictionarySetValue(theDict, @"DisplayBrightnessAuto", *MEMORY[0x1E695E4D0]);
      }

      *(*(a1 + 56) + 1204) = v585;
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      if (*(*(a1 + 56) + 36))
      {
        v509 = __DisplayCalculateBrightnessAtAmbient(*(a1 + 56), *(*(a1 + 56) + 1184));
        __DisplaySetLogicalBrightnessLegacy(*(a1 + 56), 2u, v509, -1.0);
        if (_logHandle)
        {
          v230 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v229 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v229 = init_default_corebrightness_log();
          }

          v230 = v229;
        }

        v508 = v230;
        v507 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
        {
          if (*(*(a1 + 56) + 1204) == 0.0)
          {
            v12 = "false";
          }

          else
          {
            v12 = "true";
          }

          __os_log_helper_16_2_2_8_32_8_32(v639, "DisplayBrightnessAuto", v12);
          _os_log_impl(&dword_1DE8E5000, v508, v507, "DisplaySetProperty: %s = %s\n", v639, 0x16u);
        }
      }

      else
      {
        *(*(a1 + 56) + 40) = v585 < 1.0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"kCoreBrightnessDisplayPresetNitsOverride"))
  {
    [*(a1 + 40) floatValue];
    v506 = v13;
    if (v13 == 0.0)
    {
      *(*(a1 + 56) + 1144) = 0;
    }

    else
    {
      *(*(a1 + 56) + 1148) = v506;
      *(*(a1 + 56) + 1144) = 1;
      __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 0x700Au, *(*(a1 + 56) + 1256));
    }
  }

  else if (CFEqual(*(a1 + 48), @"ClientBrightnessOverride"))
  {
    if (*(a1 + 40))
    {
      v228 = CFDictionaryGetTypeID();
      if (v228 == CFGetTypeID(*(a1 + 40)))
      {
        v505 = 0;
        v504 = CFDictionaryGetValue(*(a1 + 40), @"ClientBrightnessOverrideEnable");
        if (v504)
        {
          v227 = CFBooleanGetTypeID();
          if (v227 == CFGetTypeID(v504))
          {
            v505 = CFBooleanGetValue(v504);
          }
        }

        v503 = CFDictionaryGetValue(*(a1 + 40), @"ClientBrightnessOverrideNits");
        if (v503)
        {
          v226 = CFNumberGetTypeID();
          if (v226 == CFGetTypeID(v503))
          {
            CFNumberGetValue(v503, kCFNumberFloatType, &v585);
          }
        }

        v502 = 0;
        v501 = CFDictionaryGetValue(*(a1 + 40), @"ClientBrightnessOverrideType");
        if (v501)
        {
          v225 = CFNumberGetTypeID();
          if (v225 == CFGetTypeID(v501))
          {
            CFNumberGetValue(v501, kCFNumberIntType, &v502);
          }
        }

        setClientOverrideState(*(a1 + 56), v502, v505 != 0);
        if (v502)
        {
          if (v502 == 1)
          {
            *(*(a1 + 56) + 968) = v585;
          }
        }

        else
        {
          *(*(a1 + 56) + 964) = v585;
        }

        v500 = evaluateClientOverrides(*(a1 + 56));
        if (v500)
        {
          switch(v500)
          {
            case 1:
              _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), *(*(a1 + 56) + 968), 0.0);
              break;
            case 2:
              _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), *(*(a1 + 56) + 964), 0.0);
              break;
            case 3:
              _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), *(*(a1 + 56) + 1532), 0.0);
              *(*(a1 + 56) + 400) = *(*(a1 + 56) + 396);
              *(*(a1 + 56) + 960) = 0;
              *(*(a1 + 56) + 964) = 0;
              *(*(a1 + 56) + 968) = 0;
              break;
          }
        }

        __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 0x300Au, *(*(a1 + 56) + 1256));
        if (_logHandle)
        {
          v224 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v223 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v223 = init_default_corebrightness_log();
          }

          v224 = v223;
        }

        v499 = v224;
        v498 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_6_8_32_4_0_8_0_8_0_8_0_8_0(v638, "ClientBrightnessOverride", *(*(a1 + 56) + 960), COERCE__INT64(*(*(a1 + 56) + 964)), COERCE__INT64(*(*(a1 + 56) + 968)), COERCE__INT64(*(*(a1 + 56) + 396)), COERCE__INT64(*(*(a1 + 56) + 400)));
          _os_log_debug_impl(&dword_1DE8E5000, v499, v498, "DisplaySetProperty: %s activeFlags = %#x overrideL = %f overrideLmin = %f Lmin = %f LminCurrent = %f", v638, 0x3Au);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"ForceModuleUpdate"))
  {
    if (_logHandle)
    {
      v222 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v221 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v221 = init_default_corebrightness_log();
      }

      v222 = v221;
    }

    v497 = v222;
    v496 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_32(v637, "ForceModuleUpdate");
      _os_log_debug_impl(&dword_1DE8E5000, v497, v496, "DisplaySetProperty: %s\n", v637, 0xCu);
    }

    __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 0x300Au, *(*(a1 + 56) + 1256));
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMin"))
  {
    v585 = *(*(a1 + 56) + 340);
    v220 = CFNumberGetTypeID();
    if (v220 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    if (v585 != *(*(a1 + 56) + 340))
    {
      *(*(a1 + 56) + 340) = v585;
      if (_logHandle)
      {
        v219 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v218 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v218 = init_default_corebrightness_log();
        }

        v219 = v218;
      }

      v495 = v219;
      v494 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v636, "DisplayBrightnessMin", COERCE__INT64(v585));
        _os_log_debug_impl(&dword_1DE8E5000, v495, v494, "DisplaySetProperty: %s = %f\n", v636, 0x16u);
      }

      v14.n128_u32[0] = *(*(a1 + 56) + 336);
      _DisplaySetBrightness(*(a1 + 56), v14);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMax"))
  {
    v585 = *(*(a1 + 56) + 344);
    v217 = CFNumberGetTypeID();
    if (v217 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    if (v585 != *(*(a1 + 56) + 344))
    {
      *(*(a1 + 56) + 344) = v585;
      if (_logHandle)
      {
        v216 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v215 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v215 = init_default_corebrightness_log();
        }

        v216 = v215;
      }

      v493 = v216;
      v492 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v635, "DisplayBrightnessMax", COERCE__INT64(v585));
        _os_log_debug_impl(&dword_1DE8E5000, v493, v492, "DisplaySetProperty: %s = %f\n", v635, 0x16u);
      }

      v15.n128_u32[0] = *(*(a1 + 56) + 336);
      _DisplaySetBrightness(*(a1 + 56), v15);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessAutoWeightMax"))
  {
    v585 = *(*(a1 + 56) + 1200);
    v214 = CFNumberGetTypeID();
    if (v214 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    if (v585 != *(*(a1 + 56) + 1200))
    {
      *(*(a1 + 56) + 1200) = v585;
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      _DisplaySetAmbient(*(a1 + 56), 0, *(*(a1 + 56) + 1184));
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessAutoWeightMin"))
  {
    v585 = *(*(a1 + 56) + 1196);
    v213 = CFNumberGetTypeID();
    if (v213 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    if (v585 != *(*(a1 + 56) + 1196))
    {
      *(*(a1 + 56) + 1196) = v585;
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      _DisplaySetAmbient(*(a1 + 56), 0, *(*(a1 + 56) + 1184));
    }
  }

  else if (CFEqual(*(a1 + 48), @"IOHIDDisplayHandleAmbient"))
  {
    *(*(a1 + 56) + 36) = GetCFBooleanValue(*(a1 + 40));
    if (*(*(a1 + 56) + 36))
    {
      pthread_once(&__displayThreadInit, __DisplayBrightnessThreadInit);
    }
  }

  else if (CFEqual(*(a1 + 48), @"EcoMode"))
  {
    if (!*(*(a1 + 56) + 36))
    {
      v212 = CFBooleanGetTypeID();
      if (v212 == CFGetTypeID(*(a1 + 40)))
      {
        v491 = CFBooleanGetValue(*(a1 + 40));
        if (*(*(a1 + 56) + 220) != v491)
        {
          *(*(a1 + 56) + 220) = v491;
          v211 = *(*(a1 + 56) + 640);
          if (v211)
          {
            if (v211 == 1)
            {
              if (*(*(a1 + 56) + 220))
              {
                v210 = *(*(a1 + 56) + 656);
              }

              else
              {
                v210 = 1.0;
              }

              v16 = v210;
              v490 = v16;
              _DisplaySetBrightnessEcoModeFactorWithFade(*(a1 + 56), v16, 0.5);
            }

            else if (v211 == 2)
            {
              if (*(*(a1 + 56) + 220))
              {
                v209 = *(*(a1 + 56) + 776);
              }

              else
              {
                v209 = *(*(a1 + 56) + 1312);
              }

              v489 = v209;
              _DisplaySetBrightnessEcoModeLimitWithFade(*(a1 + 56), v209, 0.5);
            }

            else
            {
              v485 = _logHandle;
              v484 = OS_LOG_TYPE_FAULT;
              if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_FAULT))
              {
                __os_log_helper_16_0_1_4_0(v634, *(*(a1 + 56) + 640));
                _os_log_fault_impl(&dword_1DE8E5000, v485, v484, "Unexpected eco mode behaviour = %d, ignoring", v634, 8u);
              }
            }
          }

          else
          {
            if (_logHandle)
            {
              v208 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v207 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v207 = init_default_corebrightness_log();
              }

              v208 = v207;
            }

            v488 = v208;
            v487 = 2;
            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
            {
              v205 = v488;
              v206 = v487;
              __os_log_helper_16_0_0(v486);
              _os_log_debug_impl(&dword_1DE8E5000, v205, v206, "Eco mode is not enabled on this device - ignoring", v486, 2u);
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"EcoModeFactorUpdate"))
  {
    if (!*(*(a1 + 56) + 36))
    {
      if (*(a1 + 40))
      {
        v204 = CFNumberGetTypeID();
        if (v204 == CFGetTypeID(*(a1 + 40)))
        {
          v483 = 0.0;
          CFNumberGetValue(*(a1 + 40), kCFNumberDoubleType, &v483);
          *(*(a1 + 56) + 656) = 1.0 - v483 / 100.0;
          if (*(*(a1 + 56) + 220))
          {
            v17 = *(*(a1 + 56) + 656);
            _DisplaySetBrightnessEcoModeFactorWithFade(*(a1 + 56), v17, 0.5);
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DominoStateUpdate"))
  {
    v203 = CFBooleanGetTypeID();
    if (v203 == CFGetTypeID(*(a1 + 40)))
    {
      v482 = CFBooleanGetValue(*(a1 + 40));
      if (*(*(a1 + 56) + 224) != v482)
      {
        *(*(a1 + 56) + 224) = v482;
        if (_logHandle)
        {
          v202 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v201 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v201 = init_default_corebrightness_log();
          }

          v202 = v201;
        }

        v481 = v202;
        v480 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_4_0(v633, v482);
          _os_log_impl(&dword_1DE8E5000, v481, v480, "Domino State Change: %d", v633, 8u);
        }

        if (*(*(a1 + 56) + 224))
        {
          v200 = *(*(a1 + 56) + 720);
        }

        else
        {
          v200 = *(*(a1 + 56) + 1312);
        }

        v479 = v200;
        _DisplaySetBrightnessDominoModeLimitWithFade(*(a1 + 56), v200, 0.5);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFactor"))
  {
    v585 = *(*(a1 + 56) + 348);
    v199 = CFNumberGetTypeID();
    if (v199 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    __DisplayCancelFactorFade(*(a1 + 56), v18);
    if (v585 != *(*(a1 + 56) + 348))
    {
      v478 = *(*(a1 + 56) + 348);
      _DisplayUpdateWeakCapOnFactorChange(*(a1 + 56), v585);
      _DisplaySetBrightnessFactor(*(a1 + 56), v585);
      if (*(*(a1 + 56) + 36))
      {
        v197 = *(a1 + 56);
        v198 = __DisplayCalculateBrightnessFromFactorChange(v197, *(v197 + 204));
        __DisplaySetLogicalBrightnessLegacy(v197, 7u, v198, 0.0);
        *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
      }

      else
      {
        v477 = 4098;
        if (*(*(a1 + 56) + 348) == 1.0)
        {
          v477 |= 8u;
        }

        v476 = *(*(a1 + 56) + 1252);
        v475 = *(*(a1 + 56) + 1492);
        v19 = *(*(a1 + 56) + 348);
        if (v19 <= 0.0)
        {
          if (*(*(a1 + 56) + 12282))
          {
            __DisplayCancelAAPFade(*(a1 + 56), v19);
          }

          else
          {
            __DisplayCancelReflectedBrightnessFadeInternal(*(a1 + 56), v19);
          }

          *(*(a1 + 56) + 12300) = 0;
        }

        else
        {
          v476 = fmaxf(v476, *(*(a1 + 56) + 1320));
          v475 = fmaxf(v475, *(*(a1 + 56) + 1320));
          *(*(a1 + 56) + 1488) = v475;
        }

        if (_logHandle)
        {
          v196 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v195 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v195 = init_default_corebrightness_log();
          }

          v196 = v195;
        }

        v474 = v196;
        v473 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_7_8_32_8_32_8_0_8_0_8_0_8_0_8_0(v632, "Factor", "DisplayBrightnessFactor", COERCE__INT64(v478), COERCE__INT64(*(*(a1 + 56) + 348)), COERCE__INT64(*(*(a1 + 56) + 1260)), COERCE__INT64(*(*(a1 + 56) + 1252)), COERCE__INT64(v476));
          _os_log_impl(&dword_1DE8E5000, v474, v473, "[BRT update: %s]: %s: %f -> %f LcurrentDevice: %f Lpending: %f L_logical: %f", v632, 0x48u);
        }

        __DisplaySetLogicalBrightnessWithFadeInternal(*(a1 + 56), v477 | 0x2000, 0, 0, v476, 0.0);
        *(*(a1 + 56) + 12392) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"MinNits"))
  {
    v194 = CFDictionaryGetTypeID();
    if (v194 == CFGetTypeID(*(a1 + 40)))
    {
      v472 = *(*(a1 + 56) + 1256);
      v471 = 0.0;
      v470 = CFDictionaryGetValue(*(a1 + 40), @"period");
      if (v470)
      {
        v193 = CFNumberGetTypeID();
        if (v193 == CFGetTypeID(v470))
        {
          CFNumberGetValue(v470, kCFNumberFloatType, &v471);
        }
      }

      v469 = CFDictionaryGetValue(*(a1 + 40), @"nits");
      if (v469)
      {
        v192 = CFNumberGetTypeID();
        if (v192 == CFGetTypeID(v469))
        {
          CFNumberGetValue(v469, kCFNumberFloatType, &v472);
        }
      }

      if (getClientOverrideState(*(a1 + 56), 1))
      {
        v472 = fmaxf(v472, *(*(a1 + 56) + 968));
      }

      _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), v472, v471);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFactorWithFade"))
  {
    kdebug_trace();
    v585 = *(*(a1 + 56) + 348);
    v191 = CFDictionaryGetTypeID();
    if (v191 == CFGetTypeID(*(a1 + 40)))
    {
      v468 = CFDictionaryGetValue(*(a1 + 40), @"DisplayBrightnessFadePeriod");
      if (v468)
      {
        v190 = CFNumberGetTypeID();
        if (v190 == CFGetTypeID(v468))
        {
          CFNumberGetValue(v468, kCFNumberFloat32Type, (*(a1 + 56) + 372));
        }
      }

      v467 = CFDictionaryGetValue(*(a1 + 40), @"DisplayBrightnessFactor");
      if (v467)
      {
        v189 = CFNumberGetTypeID();
        if (v189 == CFGetTypeID(v467))
        {
          CFNumberGetValue(v467, kCFNumberFloat32Type, &v585);
          v466 = *(*(a1 + 56) + 1384) > 0.0;
          if (v585 != *(*(a1 + 56) + 348) || v466)
          {
            if (*(*(a1 + 56) + 36))
            {
              _DisplaySetBrightnessFactor(*(a1 + 56), v585);
              v187 = *(a1 + 56);
              v188 = __DisplayCalculateBrightnessFromFactorChange(v187, *(v187 + 204));
              __DisplaySetLogicalBrightnessLegacy(v187, 6u, v188, *(*(a1 + 56) + 372));
              *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
            }

            else
            {
              v20 = v585;
              if (v585 == 0.0)
              {
                if (*(*(a1 + 56) + 12282))
                {
                  __DisplayCancelAAPFade(*(a1 + 56), v20);
                }

                else
                {
                  __DisplayCancelReflectedBrightnessFadeInternal(*(a1 + 56), v20);
                }

                if ((*(*(a1 + 56) + 12282) & 1) == 0)
                {
                  *(*(a1 + 56) + 12392) = 0;
                }

                *(*(a1 + 56) + 12300) = 0;
              }

              _DisplayUpdateWeakCapOnFactorChange(*(a1 + 56), v585);
              _DisplaySetFactorWithFade(*(a1 + 56), v585, *(*(a1 + 56) + 372));
            }

            *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
            CFDictionarySetValue(*(*(a1 + 56) + 192), @"DisplayBrightnessFactor", v467);
          }
        }
      }
    }

    else
    {
      v186 = CFNumberGetTypeID();
      if (v186 == CFGetTypeID(*(a1 + 40)))
      {
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
        v465 = *(*(a1 + 56) + 1384) > 0.0;
        if (v585 != *(*(a1 + 56) + 348) || v465)
        {
          if (*(*(a1 + 56) + 36))
          {
            _DisplaySetBrightnessFactor(*(a1 + 56), v585);
            v184 = *(a1 + 56);
            v185 = __DisplayCalculateBrightnessFromFactorChange(v184, *(v184 + 204));
            __DisplaySetLogicalBrightnessLegacy(v184, 6u, v185, *(*(a1 + 56) + 372));
            *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
          }

          else
          {
            v21 = v585;
            if (v585 == 0.0)
            {
              if (*(*(a1 + 56) + 12282))
              {
                __DisplayCancelAAPFade(*(a1 + 56), v21);
              }

              else
              {
                __DisplayCancelReflectedBrightnessFadeInternal(*(a1 + 56), v21);
              }

              *(*(a1 + 56) + 12300) = 0;
              if ((*(*(a1 + 56) + 12282) & 1) == 0)
              {
                *(*(a1 + 56) + 12392) = 0;
              }
            }

            _DisplayUpdateWeakCapOnFactorChange(*(a1 + 56), v585);
            _DisplaySetFactorWithFade(*(a1 + 56), v585, *(*(a1 + 56) + 372));
          }

          *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
          CFDictionarySetValue(*(*(a1 + 56) + 192), @"DisplayBrightnessFactor", *(a1 + 40));
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFadePeriod"))
  {
    v585 = *(*(a1 + 56) + 372);
    v183 = CFNumberGetTypeID();
    if (v183 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    *(*(a1 + 56) + 372) = v585;
    if (_logHandle)
    {
      v182 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v181 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v181 = init_default_corebrightness_log();
      }

      v182 = v181;
    }

    v464 = v182;
    v463 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_0(v631, "DisplayBrightnessFadePeriod", COERCE__INT64(v585));
      _os_log_debug_impl(&dword_1DE8E5000, v464, v463, "DisplaySetProperty: %s = %f\n", v631, 0x16u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"LogLevel"))
  {
    v462 = *(*(a1 + 56) + 200);
    v180 = CFNumberGetTypeID();
    if (v180 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v462);
    if (_logHandle)
    {
      v179 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v178 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v178 = init_default_corebrightness_log();
      }

      v179 = v178;
    }

    v461 = v179;
    v460 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_4_0(v630, "LogLevel", v462);
      _os_log_impl(&dword_1DE8E5000, v461, v460, "DisplaySetProperty: %s = %x\n", v630, 0x12u);
    }

    if (*(*(a1 + 56) + 200) != v462)
    {
      *(*(a1 + 56) + 200) = v462;
    }

    __DisplaySetBLDriverProperty(*(a1 + 56), *(a1 + 48), *(a1 + 40));
  }

  else if (CFEqual(*(a1 + 48), @"PLCEnable"))
  {
    v459 = (*(*(a1 + 56) + 288) & 1) != 0;
    v177 = CFNumberGetTypeID();
    if (v177 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v459);
    if (v459)
    {
      if (*(*(a1 + 56) + 284) && *(*(a1 + 56) + 1260) > *(*(a1 + 56) + 284))
      {
        __DisplaySendPLCUpdate(*(a1 + 56), 1);
      }
    }

    else if (*(*(a1 + 56) + 289))
    {
      __DisplaySendPLCUpdate(*(a1 + 56), 0);
      v458 = (*(*(a1 + 56) + 1260) * 65536.0);
      SetBLDriverNitsValueIfNotInLPM(*(a1 + 56), v458);
    }

    *(*(a1 + 56) + 288) = v459;
    if (_logHandle)
    {
      v176 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v175 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v175 = init_default_corebrightness_log();
      }

      v176 = v175;
    }

    v457 = v176;
    v456 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v629, *(*(a1 + 56) + 288) & 1);
      _os_log_impl(&dword_1DE8E5000, v457, v456, "PLCEnabled=%d", v629, 8u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFadeSlope"))
  {
    v174 = CFGetTypeID(*(a1 + 40));
    if (v174 == CFNumberGetTypeID())
    {
      v455 = *(*(a1 + 56) + 1228);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v455);
      if (_logHandle)
      {
        v173 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v172 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v172 = init_default_corebrightness_log();
        }

        v173 = v172;
      }

      v454 = v173;
      v453 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v628, COERCE__INT64(v455));
        _os_log_debug_impl(&dword_1DE8E5000, v454, v453, "display->brightness.als.duration.customSlope = %f\n", v628, 0xCu);
      }

      *(*(a1 + 56) + 1228) = v455;
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayMedianFilterLength"))
  {
    v171 = CFGetTypeID(*(a1 + 40));
    if (v171 == CFNumberGetTypeID())
    {
      v452 = 0;
      CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v452);
      if (v452 <= 50)
      {
        *(*(a1 + 56) + 12740) = v452;
        *(*(a1 + 56) + 12736) = 0;
        *(*(a1 + 56) + 12732) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CabalFactorOverride"))
  {
    v170 = CFGetTypeID(*(a1 + 40));
    if (v170 == CFNumberGetTypeID())
    {
      v451 = -1.0;
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v451);
      DisplaySetCabalFactorOverride(*(a1 + 56), v451);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayAAPFactor"))
  {
    v169 = CFGetTypeID(*(a1 + 40));
    if (v169 == CFNumberGetTypeID())
    {
      v450 = *(*(a1 + 56) + 12392);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v450);
      if (_logHandle)
      {
        v168 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v167 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v167 = init_default_corebrightness_log();
        }

        v168 = v167;
      }

      v449 = v168;
      v448 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v627, "DisplayAAPFactor", COERCE__INT64(v450));
        _os_log_impl(&dword_1DE8E5000, v449, v448, "%s = %f\n", v627, 0x16u);
      }

      __DisplaySetAAPFactor(*(a1 + 56), v450);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayAAPFactorMin"))
  {
    v166 = CFGetTypeID(*(a1 + 40));
    if (v166 == CFNumberGetTypeID())
    {
      v447 = *(*(a1 + 56) + 12456);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v447);
      if (_logHandle)
      {
        v165 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v164 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v164 = init_default_corebrightness_log();
        }

        v165 = v164;
      }

      v446 = v165;
      v445 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v626, "DisplayAAPFactorMin", COERCE__INT64(v447));
        _os_log_impl(&dword_1DE8E5000, v446, v445, "%s = %f\n", v626, 0x16u);
      }

      *(*(a1 + 56) + 12456) = v447;
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayAAPFactorMax"))
  {
    v163 = CFGetTypeID(*(a1 + 40));
    if (v163 == CFNumberGetTypeID())
    {
      v444 = *(*(a1 + 56) + 12460);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v444);
      if (_logHandle)
      {
        v162 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v161 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v161 = init_default_corebrightness_log();
        }

        v162 = v161;
      }

      v443 = v162;
      v442 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v625, "DisplayAAPFactorMax", COERCE__INT64(v444));
        _os_log_impl(&dword_1DE8E5000, v443, v442, "%s = %f\n", v625, 0x16u);
      }

      *(*(a1 + 56) + 12460) = v444;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPDBMin"))
  {
    v160 = CFGetTypeID(*(a1 + 40));
    if (v160 == CFNumberGetTypeID())
    {
      v441 = *(*(a1 + 56) + 12256);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v441);
      if (_logHandle)
      {
        v159 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v158 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v158 = init_default_corebrightness_log();
        }

        v159 = v158;
      }

      v440 = v159;
      v439 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v624, "AAPDBMin", COERCE__INT64(v441));
        _os_log_debug_impl(&dword_1DE8E5000, v440, v439, "%s = %f\n", v624, 0x16u);
      }

      *(*(a1 + 56) + 12256) = v441;
      v438 = 1;
      HIDWORD(v438) = *(*(a1 + 56) + 12304);
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v438, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPK_0"))
  {
    v157 = CFGetTypeID(*(a1 + 40));
    if (v157 == CFNumberGetTypeID())
    {
      v437 = *(*(a1 + 56) + 12260);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v437);
      if (_logHandle)
      {
        v156 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v155 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v155 = init_default_corebrightness_log();
        }

        v156 = v155;
      }

      v436 = v156;
      v435 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v623, "AAPK_0", COERCE__INT64(v437));
        _os_log_debug_impl(&dword_1DE8E5000, v436, v435, "%s = %f\n", v623, 0x16u);
      }

      *(*(a1 + 56) + 12260) = v437;
      v434 = 2;
      HIDWORD(v434) = *(*(a1 + 56) + 12300);
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v434, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPK_1"))
  {
    v154 = CFGetTypeID(*(a1 + 40));
    if (v154 == CFNumberGetTypeID())
    {
      v433 = *(*(a1 + 56) + 12264);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v433);
      if (_logHandle)
      {
        v153 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v152 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v152 = init_default_corebrightness_log();
        }

        v153 = v152;
      }

      v432 = v153;
      v431 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v622, "AAPK_1", COERCE__INT64(v433));
        _os_log_debug_impl(&dword_1DE8E5000, v432, v431, "%s = %f\n", v622, 0x16u);
      }

      *(*(a1 + 56) + 12264) = v433;
      v430 = 2;
      HIDWORD(v430) = *(*(a1 + 56) + 12300);
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v430, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPManualB"))
  {
    v151 = CFGetTypeID(*(a1 + 40));
    if (v151 == CFNumberGetTypeID())
    {
      v429 = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (_logHandle)
      {
        v150 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v149 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v149 = init_default_corebrightness_log();
        }

        v150 = v149;
      }

      v428 = v150;
      v427 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_4_0(v621, "AAPManualB", v429);
        _os_log_debug_impl(&dword_1DE8E5000, v428, v427, "%s = %d\n", v621, 0x12u);
      }

      *(*(a1 + 56) + 12284) = v429;
      v426 = 0;
      BYTE4(v426) = *(*(a1 + 56) + 1232) & 1;
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v426, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPHDRMode"))
  {
    v148 = CFGetTypeID(*(a1 + 40));
    if (v148 == CFBooleanGetTypeID())
    {
      v425 = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (_logHandle)
      {
        v147 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v146 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v146 = init_default_corebrightness_log();
        }

        v147 = v146;
      }

      v424 = v147;
      v423 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_4_0(v620, "AAPHDRMode", v425);
        _os_log_debug_impl(&dword_1DE8E5000, v424, v423, "%s = %d\n", v620, 0x12u);
      }

      *(*(a1 + 56) + 12292) = v425;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPLuxDelta"))
  {
    v145 = CFGetTypeID(*(a1 + 40));
    if (v145 == CFNumberGetTypeID())
    {
      v422 = *(*(a1 + 56) + 12268);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v422);
      if (_logHandle)
      {
        v144 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v143 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v143 = init_default_corebrightness_log();
        }

        v144 = v143;
      }

      v421 = v144;
      v420 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v619, "AAPLuxDelta", COERCE__INT64(v422));
        _os_log_debug_impl(&dword_1DE8E5000, v421, v420, "%s = %f\n", v619, 0x16u);
      }

      *(*(a1 + 56) + 12268) = v422;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPRampUpTime"))
  {
    v142 = CFGetTypeID(*(a1 + 40));
    if (v142 == CFNumberGetTypeID())
    {
      v419 = *(*(a1 + 56) + 12272);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v419);
      if (_logHandle)
      {
        v141 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v140 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v140 = init_default_corebrightness_log();
        }

        v141 = v140;
      }

      v418 = v141;
      v417 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v618, "AAPRampUpTime", COERCE__INT64(v419));
        _os_log_debug_impl(&dword_1DE8E5000, v418, v417, "%s = %f\n", v618, 0x16u);
      }

      *(*(a1 + 56) + 12272) = v419;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPRampDownTime"))
  {
    v139 = CFGetTypeID(*(a1 + 40));
    if (v139 == CFNumberGetTypeID())
    {
      v416 = *(*(a1 + 56) + 12276);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v416);
      if (_logHandle)
      {
        v138 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v137 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v137 = init_default_corebrightness_log();
        }

        v138 = v137;
      }

      v415 = v138;
      v414 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v617, "AAPRampDownTime", COERCE__INT64(v416));
        _os_log_debug_impl(&dword_1DE8E5000, v415, v414, "%s = %f\n", v617, 0x16u);
      }

      *(*(a1 + 56) + 12276) = v416;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPRampDisableTime"))
  {
    v136 = CFGetTypeID(*(a1 + 40));
    if (v136 == CFNumberGetTypeID())
    {
      v413 = *(*(a1 + 56) + 12252);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v413);
      if (_logHandle)
      {
        v135 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v134 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v134 = init_default_corebrightness_log();
        }

        v135 = v134;
      }

      v412 = v135;
      v411 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v616, "AAPRampDisableTime", COERCE__INT64(v413));
        _os_log_debug_impl(&dword_1DE8E5000, v412, v411, "%s = %f\n", v616, 0x16u);
      }

      *(*(a1 + 56) + 12252) = v413;
    }
  }

  else if (CFEqual(*(a1 + 48), @"MaxBrightness"))
  {
    v133 = CFGetTypeID(*(a1 + 40));
    if (v133 == CFNumberGetTypeID())
    {
      v410 = 100.0;
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v410);
      v410 = v410 / 100.0;
      if (_logHandle)
      {
        v132 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v131 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v131 = init_default_corebrightness_log();
        }

        v132 = v131;
      }

      v409 = v132;
      v408 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v615, COERCE__INT64(v410));
        _os_log_impl(&dword_1DE8E5000, v409, v408, "Set MaxBrightness=%f", v615, 0xCu);
      }

      if (v410 >= 0.0)
      {
        v407 = 0.0;
        if (_DisplayCLTMRev2Applicable(*(a1 + 56)))
        {
          v406 = 0;
          if (v410 <= 0.95)
          {
            if (v410 <= 0.15)
            {
              v406 = 2;
            }

            else
            {
              v406 = 1;
            }
          }

          else
          {
            v406 = 0;
          }

          if (_logHandle)
          {
            v130 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v129 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v129 = init_default_corebrightness_log();
            }

            v130 = v129;
          }

          v405 = v130;
          v404 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_4_0(v614, v406);
            _os_log_impl(&dword_1DE8E5000, v405, v404, "CLTM mode=%d", v614, 8u);
          }

          if (v406 != *(*(a1 + 56) + 1560))
          {
            v613 = 0x1F59A2570;
            v612 = 0;
            v612 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v406);
            if (v613)
            {
              if (v612)
              {
                allocator = CFGetAllocator(*(a1 + 56));
                v403 = CFDictionaryCreate(allocator, &v613, &v612, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v403)
                {
                  v22 = *(*(a1 + 56) + 144);
                  v396 = MEMORY[0x1E69E9820];
                  v397 = -1073741824;
                  v398 = 0;
                  v399 = __DisplaySetProperty_block_invoke_591;
                  v400 = &__block_descriptor_48_e5_v8__0l;
                  v401 = *(a1 + 56);
                  v402 = v403;
                  dispatch_async(v22, &v396);
                }
              }
            }

            if (v612)
            {
              CFRelease(v612);
            }
          }

          *(*(a1 + 56) + 1560) = v406;
          v395 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (*(a1 + 56) + 1560));
          if (v395)
          {
            CFDictionarySetValue(*(*(a1 + 56) + 192), @"BrightnessCLTMMode", v395);
            CFRelease(v395);
          }

          *(*(a1 + 56) + 1552) = v410;
          if (v410 == 0.0)
          {
            v407 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v410);
            _DisplaySetBrightnessMaxPhysicalZeroWithFade(*(a1 + 56), _DisplayRampDoneCallback, *(a1 + 56), v407, 4.0);
          }

          else
          {
            v407 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v410);
            _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v407, 4.0);
          }
        }

        else
        {
          v407 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v410);
          _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v407, 0.0);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessCLTM"))
  {
    if (_DisplayCLTMRev2Applicable(*(a1 + 56)))
    {
      v127 = CFGetTypeID(*(a1 + 40));
      if (v127 == CFDictionaryGetTypeID())
      {
        v394 = 0.0;
        v393 = 1;
        v392 = CFDictionaryGetValue(*(a1 + 40), @"BrightnessCLTMEnable");
        if (v392)
        {
          v126 = CFGetTypeID(v392);
          if (v126 == CFBooleanGetTypeID())
          {
            v393 = CFBooleanGetValue(v392) != 0;
          }
        }

        *(*(a1 + 56) + 1556) = v393;
        v391 = 0.0;
        v390 = CFDictionaryGetValue(*(a1 + 40), @"BrightnessCLTMRampRate");
        if (v390)
        {
          v125 = CFGetTypeID(v390);
          if (v125 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v390, kCFNumberFloatType, &v391);
          }
        }

        if (_logHandle)
        {
          v124 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v123 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v123 = init_default_corebrightness_log();
          }

          v124 = v123;
        }

        v389 = v124;
        v388 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          if (*(*(a1 + 56) + 1556))
          {
            v23 = "Enable";
          }

          else
          {
            v23 = "Disable";
          }

          __os_log_helper_16_2_2_8_32_8_0(v611, v23, COERCE__INT64(v391));
          _os_log_impl(&dword_1DE8E5000, v389, v388, "%s CLTM with period %f", v611, 0x16u);
        }

        if (v393)
        {
          v394 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), *(*(a1 + 56) + 1552));
          if (*(*(a1 + 56) + 1552) == 0.0)
          {
            _DisplaySetBrightnessMaxPhysicalZeroWithFade(*(a1 + 56), _DisplayRampDoneCallback, *(a1 + 56), v394, v391);
          }

          else
          {
            _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v394, v391);
          }
        }

        else
        {
          v387 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), 1.0);
          _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v387, v391);
        }

        v610 = xmmword_1E867CA00;
        v608 = 0;
        v609 = 0;
        v608 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (*(a1 + 56) + 1556));
        v609 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v391);
        v122 = CFGetAllocator(*(a1 + 56));
        v386 = CFDictionaryCreate(v122, &v610, &v608, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v386)
        {
          CFDictionarySetValue(*(*(a1 + 56) + 192), @"BrightnessCLTM", v386);
          CFRelease(v386);
        }

        if (v608)
        {
          CFRelease(v608);
        }

        if (v609)
        {
          CFRelease(v609);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessWeakCap"))
  {
    v121 = CFGetTypeID(*(a1 + 40));
    if (v121 == CFNumberGetTypeID())
    {
      v385 = 100.0;
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v385);
      v385 = v385 / 100.0;
      if (_logHandle)
      {
        v120 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v119 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v119 = init_default_corebrightness_log();
        }

        v120 = v119;
      }

      v384 = v120;
      v383 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v607, COERCE__INT64(v385));
        _os_log_impl(&dword_1DE8E5000, v384, v383, "Set BrightnessWeakCap=%f", v607, 0xCu);
      }

      if (v385 >= 0.0)
      {
        v382 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v385);
        v381 = 0.0;
        if (v382 < *(*(a1 + 56) + 528))
        {
          v381 = 7.0;
        }

        else
        {
          v381 = 2.5;
        }

        _DisplaySetBrightnessWeakCapWithFade(*(a1 + 56), 1, v382, v381);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessMinPhysicalWithFade"))
  {
    if (*(*(a1 + 56) + 320))
    {
      v118 = CFGetTypeID(*(a1 + 40));
      if (v118 == CFNumberGetTypeID())
      {
        v380 = *(*(a1 + 56) + 396);
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v380);
        if (_logHandle)
        {
          v117 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v116 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v116 = init_default_corebrightness_log();
          }

          v117 = v116;
        }

        v379 = v117;
        v378 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_2_8_32_8_0(v606, "BrightnessMinPhysicalWithFade", COERCE__INT64(v380));
          _os_log_debug_impl(&dword_1DE8E5000, v379, v378, "DisplaySetProperty: %s = %f\n", v606, 0x16u);
        }

        if (getClientOverrideState(*(a1 + 56), 1))
        {
          v380 = fmaxf(v380, *(*(a1 + 56) + 968));
        }

        _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), v380, *(*(a1 + 56) + 372));
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFactorRamp"))
  {
    v115 = CFDictionaryGetTypeID();
    if (v115 == CFGetTypeID(*(a1 + 40)))
    {
      v377 = CFDictionaryGetValue(*(a1 + 40), @"DisplayBrightnessFactorCoeffA");
      if (v377)
      {
        v114 = CFGetTypeID(v377);
        if (v114 == CFNumberGetTypeID())
        {
          v585 = *(*(a1 + 56) + 1420);
          CFNumberGetValue(v377, kCFNumberFloatType, &v585);
          *(*(a1 + 56) + 1420) = v585;
          *(*(a1 + 56) + 1416) = 1.0 - *(*(a1 + 56) + 1420);
          *(*(a1 + 56) + 1412) = 0;
          if (_logHandle)
          {
            v113 = _logHandle;
          }

          else
          {
            v112 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v113 = v112;
          }

          v376 = v113;
          v375 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_8_0(v605, COERCE__INT64(*(*(a1 + 56) + 1420)), COERCE__INT64(*(*(a1 + 56) + 1416)), COERCE__INT64(*(*(a1 + 56) + 1412)));
            _os_log_debug_impl(&dword_1DE8E5000, v376, v375, "DisplaySetProperty: Changing Factor ramp to: %fx^2 + %fx + %f\n", v605, 0x20u);
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PreStrobeDimPeriod"))
  {
    if (*(a1 + 40))
    {
      v111 = CFNumberGetTypeID();
      if (v111 == CFGetTypeID(*(a1 + 40)))
      {
        v374 = *(*(a1 + 56) + 244);
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v374);
        *(*(a1 + 56) + 244) = v374;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CBSoftWakeActive"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (*(*(a1 + 56) + 328))
    {
      if (*(a1 + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v373 = [*(a1 + 40) intValue];
          if (![*(*(a1 + 56) + 328) action:v373])
          {
            __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 0x1002u, *(*(a1 + 56) + 1256));
            *(*(*(a1 + 32) + 8) + 24) = 1;
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CBSoftWakeFactorWithFadeKey"))
  {
    if (*(*(a1 + 56) + 328))
    {
      if ([*(*(a1 + 56) + 328) isActive])
      {
        if (*(a1 + 40))
        {
          v110 = CFDictionaryGetTypeID();
          if (v110 == CFGetTypeID(*(a1 + 40)))
          {
            v372 = *(a1 + 40);
            v371 = [v372 objectForKeyedSubscript:@"DisplayBrightnessFactor"];
            v370 = [v372 objectForKeyedSubscript:@"DisplayBrightnessFadePeriod"];
            if (v371)
            {
              if (v370)
              {
                v108 = *(*(a1 + 56) + 328);
                [v371 floatValue];
                v109 = v24;
                [v370 floatValue];
                LODWORD(v26) = v25;
                LODWORD(v27) = v109;
                if (![v108 setFactor:v27 withFade:v26])
                {
                  LODWORD(v28) = 1015580809;
                  __DisplayStartFadeWithType(*(a1 + 56), 12, v28);
                }
              }
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PreStrobeConfig"))
  {
    if (*(a1 + 40))
    {
      v107 = CFDictionaryGetTypeID();
      if (v107 == CFGetTypeID(*(a1 + 40)))
      {
        v369 = *(a1 + 40);
        if (*(*(a1 + 56) + 248))
        {
          v367 = 0;
          v366 = 0;
          v368 = CFDictionaryGetValue(v369, @"PreStrobeConfigCurrent");
          if (v368 && (v106 = CFNumberGetTypeID(), v106 == CFGetTypeID(v368)))
          {
            v367 = 1;
            v366 = 1;
          }

          else
          {
            v368 = CFDictionaryGetValue(v369, @"PreStrobeConfigNits");
            if (v368)
            {
              v105 = CFNumberGetTypeID();
              if (v105 == CFGetTypeID(v368))
              {
                v366 = 1;
              }
            }
          }

          if (v366)
          {
            v365 = -1.0;
            if (CFNumberGetValue(v368, kCFNumberFloatType, &v365))
            {
              v364 = (v365 * 65536.0);
              v363 = 0;
              v363 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v364);
              if (v363)
              {
                if (v367)
                {
                  v29 = @"PreStrobeConfigCurrent";
                }

                else
                {
                  v29 = @"PreStrobeConfigNits";
                }

                __DisplaySetBLDriverProperty(*(a1 + 56), v29, v363);
                if ((v367 & 1) == 0)
                {
                  *(*(a1 + 56) + 256) = v364;
                }

                CFRelease(v363);
              }
            }
          }

          else
          {
            *(*(a1 + 56) + 256) = *(*(a1 + 56) + 252);
            v362 = -1;
            v361 = 0;
            v361 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v362);
            if (v361)
            {
              __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobeConfigCurrent", v361);
              CFRelease(v361);
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PreStrobe"))
  {
    if (*(a1 + 40))
    {
      v104 = CFNumberGetTypeID();
      if (v104 == CFGetTypeID(*(a1 + 40)))
      {
        v360 = *(*(a1 + 56) + 244);
        v359 = 0;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v359);
        if (v359)
        {
          v103 = 0.0;
        }

        else
        {
          v103 = fmaxf(0.0, v360);
        }

        v358 = v103;
        if (v360 >= 0.0)
        {
          if (v359)
          {
            v101 = *(*(a1 + 56) + 1312);
          }

          else
          {
            v101 = 0.0;
          }

          v354 = v101;
          if (*(*(a1 + 56) + 248))
          {
            __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobe", *(a1 + 40));
            SetPreStrobeState(*(a1 + 56), v359 != 0);
          }

          if (v359)
          {
            v100 = (*(*(a1 + 56) + 1312) * 65536.0);
          }

          else
          {
            v100 = *(*(a1 + 56) + 1128);
          }

          v353 = v100;
          if (_logHandle)
          {
            v99 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v98 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v98 = init_default_corebrightness_log();
            }

            v99 = v98;
          }

          v352 = v99;
          v351 = 2;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v96 = v352;
            v97 = v351;
            __os_log_helper_16_0_0(v350);
            _os_log_debug_impl(&dword_1DE8E5000, v96, v97, "SetBLDriverNitsCap for preStrobe", v350, 2u);
          }

          SetBLDriverNitsCapIfNotInLPM(*(a1 + 56), v353);
          _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), v354, v358);
        }

        else
        {
          if (v359 && *(*(a1 + 56) + 252) > 0)
          {
            v102 = *(*(a1 + 56) + 256) < *(*(a1 + 56) + 252) ? 44236800 : *(*(a1 + 56) + 252);
            v357 = v102;
            if (*(*(a1 + 56) + 260) != v102)
            {
              *(*(a1 + 56) + 256) = v357;
              *(*(a1 + 56) + 260) = v357;
              v356 = 0;
              v356 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v357);
              if (v356)
              {
                __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobeConfigNits", v356);
                CFRelease(v356);
                v355 = v357 / *(*(a1 + 56) + 252);
                v356 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v355);
                if (v356)
                {
                  CFDictionarySetValue(*(*(a1 + 56) + 192), @"PreStrobeBrightnessRatio", v356);
                  CFRelease(v356);
                }
              }
            }
          }

          __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobe", *(a1 + 40));
          SetPreStrobeState(*(a1 + 56), v359 != 0);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"ColorFadesEnabled"))
  {
    if (*(a1 + 40))
    {
      v349 = 0;
      v348 = 0;
      v95 = CFNumberGetTypeID();
      if (v95 == CFGetTypeID(*(a1 + 40)))
      {
        v347 = 0;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v347);
        v349 = v347 != 0;
        v348 = 1;
      }

      else
      {
        v94 = CFBooleanGetTypeID();
        if (v94 == CFGetTypeID(*(a1 + 40)))
        {
          v349 = CFBooleanGetValue(*(a1 + 40)) != 0;
          v348 = 1;
        }
      }

      if ((v348 & 1) == 1 && *(*(a1 + 56) + 12504))
      {
        CFXEnableFades(*(*(a1 + 56) + 12504), v349);
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CarryLogEnabled"))
  {
    if (*(a1 + 40))
    {
      v93 = CFNumberGetTypeID();
      if (v93 == CFGetTypeID(*(a1 + 40)))
      {
        v346 = 0;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v346);
        CFXEnableLog(*(*(a1 + 56) + 12504), v346 != 0);
        if (CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]))
        {
          CFPreferencesSetAppValue(@"CBCarryLogEnabled", *(a1 + 40), *MEMORY[0x1E695E8A8]);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CarryLogComment"))
  {
    if (*(a1 + 40))
    {
      v92 = CFStringGetTypeID();
      if (v92 == CFGetTypeID(*(a1 + 40)))
      {
        CFXStoreComment(*(*(a1 + 56) + 12504), *(a1 + 40));
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CarryLogCommit"))
  {
    CFXForceLogCommit(*(*(a1 + 56) + 12504));
  }

  else if (CFEqual(*(a1 + 48), @"FreezeBrightness"))
  {
    if (*(*(a1 + 56) + 36))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    else if (*(a1 + 40))
    {
      v91 = CFDictionaryGetTypeID();
      if (v91 == CFGetTypeID(*(a1 + 40)))
      {
        v345 = CFDictionaryGetValue(*(a1 + 40), @"FreezeBrightnessPeriod");
        if (v345)
        {
          v90 = CFNumberGetTypeID();
          if (v90 == CFGetTypeID(v345))
          {
            CFNumberGetValue(v345, kCFNumberFloatType, (*(a1 + 56) + 12544));
          }
        }

        v344 = 0;
        v345 = CFDictionaryGetValue(*(a1 + 40), @"FreezeBrightnessEnable");
        if (v345 && (v89 = CFNumberGetTypeID(), v89 == CFGetTypeID(v345)))
        {
          v343 = 0;
          CFNumberGetValue(v345, kCFNumberIntType, &v343);
          v344 = v343 != 0;
        }

        else if (v345)
        {
          v88 = CFBooleanGetTypeID();
          if (v88 == CFGetTypeID(v345))
          {
            v344 = CFBooleanGetValue(v345) != 0;
          }
        }

        Count = 0;
        if (*(*(a1 + 56) + 12536))
        {
          Count = CFArrayGetCount(*(*(a1 + 56) + 12536));
        }

        v341 = Count;
        if (Count > 0 || v344)
        {
          v345 = CFDictionaryGetValue(*(a1 + 40), @"FreezeBrightnessRequestors");
          if (v345)
          {
            v87 = CFArrayGetTypeID();
            if (v87 == CFGetTypeID(v345))
            {
              v340 = v345;
              v339 = CFArrayGetCount(v345);
              if (v339 > 0)
              {
                if (v344 && !*(*(a1 + 56) + 12536))
                {
                  *(*(a1 + 56) + 12536) = CFArrayCreateMutable(*MEMORY[0x1E695E480], v339, MEMORY[0x1E695E9C0]);
                }

                if (*(*(a1 + 56) + 12536))
                {
                  ValueAtIndex = 0;
                  for (i = 0; i < v339; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v340, i);
                    if (ValueAtIndex)
                    {
                      v336 = 0;
                      Count = CFArrayGetCount(*(*(a1 + 56) + 12536));
                      for (j = 0; j < Count; ++j)
                      {
                        v334 = CFArrayGetValueAtIndex(*(*(a1 + 56) + 12536), j);
                        if (CFEqual(ValueAtIndex, v334))
                        {
                          v336 = 1;
                          if (!v344)
                          {
                            CFArrayRemoveValueAtIndex(*(*(a1 + 56) + 12536), j);
                            break;
                          }
                        }
                      }

                      if (v344 && (v336 & 1) == 0)
                      {
                        CFArrayAppendValue(*(*(a1 + 56) + 12536), ValueAtIndex);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (*(*(a1 + 56) + 12536))
        {
          v86 = CFArrayGetCount(*(*(a1 + 56) + 12536));
        }

        else
        {
          v86 = 0;
        }

        Count = v86;
        if (v341 || Count <= 0)
        {
          if (v341 > 0 && !Count)
          {
            *(*(a1 + 56) + 1256) = *(*(a1 + 56) + 12556);
            *(*(a1 + 56) + 12548) = 0;
            v331 = *(*(a1 + 56) + 12552) >= *(*(a1 + 56) + 1256);
            v30 = 2.5;
            if (!v331)
            {
              v30 = 5.0;
            }

            v330 = v30;
            v602 = xmmword_1DEACE57C;
            v603 = -1820426635;
            v600 = xmmword_1DEACE590;
            v601 = -937652876;
            v329 = (MGIsDeviceOneOfType() & 1) != 0;
            v598 = xmmword_1DEACE5A4;
            v599 = 1874287171;
            v596 = xmmword_1DEACE5B8;
            v597 = -781324731;
            if (MGIsDeviceOneOfType())
            {
              v329 = 1;
            }

            if (v329)
            {
              v328 = CFDictionaryGetValue(*(*(a1 + 56) + 192), @"CBStoreDemoModeIsPresent");
              if (v328)
              {
                if (CFBooleanGetValue(v328))
                {
                  if (_logHandle)
                  {
                    v83 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v82 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v82 = init_default_corebrightness_log();
                    }

                    v83 = v82;
                  }

                  v327 = v83;
                  v326 = OS_LOG_TYPE_DEFAULT;
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_0_2_8_0_8_0(v595, COERCE__INT64(v330), 0);
                    _os_log_impl(&dword_1DE8E5000, v327, v326, "Store Demo is present! The unfreeze period will be altered: %f -> %f.", v595, 0x16u);
                  }

                  v330 = 0.0;
                }
              }
            }

            if (_logHandle)
            {
              v81 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v80 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v80 = init_default_corebrightness_log();
              }

              v81 = v80;
            }

            v325 = v81;
            v324 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v594, COERCE__INT64(*(*(a1 + 56) + 12552)));
              _os_log_impl(&dword_1DE8E5000, v325, v324, "The brightness has been unfrozen. L cached = %f", v594, 0xCu);
            }

            _DisplaySetLogicalBrightnessWithFade(*(a1 + 56), 74, 0, 0, *(*(a1 + 56) + 12552), v330);
          }
        }

        else
        {
          *(*(a1 + 56) + 12548) = 1;
          *(*(a1 + 56) + 12556) = *(*(a1 + 56) + 1256);
          if (_logHandle)
          {
            v85 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v84 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v84 = init_default_corebrightness_log();
            }

            v85 = v84;
          }

          v333 = v85;
          v332 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_8_0(v604, COERCE__INT64(*(*(a1 + 56) + 12556)));
            _os_log_impl(&dword_1DE8E5000, v333, v332, "The brightness has been frozen. L = %f", v604, 0xCu);
          }
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          if (*(*(a1 + 56) + 12536) && CFArrayGetCount(*(*(a1 + 56) + 12536)) > 0)
          {
            CFDictionarySetValue(Mutable, @"FreezeBrightnessRequestors", *(*(a1 + 56) + 12536));
          }

          v322 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (*(a1 + 56) + 12544));
          if (v322)
          {
            CFDictionarySetValue(Mutable, @"FreezeBrightnessPeriod", v322);
            CFRelease(v322);
          }

          CFDictionarySetValue(*(*(a1 + 56) + 192), *(a1 + 48), Mutable);
          CFRelease(Mutable);
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PowerLogReportInterval"))
  {
    if (*(a1 + 40))
    {
      v79 = CFGetTypeID(*(a1 + 40));
      if (v79 == CFNumberGetTypeID())
      {
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, (*(a1 + 56) + 12584));
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"ColorRampPeriodOverride"))
  {
    if (*(a1 + 40))
    {
      v78 = CFGetTypeID(*(a1 + 40));
      if (v78 == CFNumberGetTypeID())
      {
        v321 = -1.0;
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v321);
        CFXOverrideRampPeriod(*(*(a1 + 56) + 12504), v321);
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DynamicSliderEnable"))
  {
    if (*(a1 + 40))
    {
      v77 = CFGetTypeID(*(a1 + 40));
      if (v77 == CFNumberGetTypeID())
      {
        v320 = 1;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v320);
        *(*(a1 + 56) + 1048) = v320 == 0;
        *(*(a1 + 56) + 1120) = v320 == 0;
        if (!v320)
        {
          if (*(*(a1 + 56) + 1064) > 0.0)
          {
            *(*(a1 + 56) + 1056) = *(*(a1 + 56) + 1080);
            *(*(a1 + 56) + 1064) = 0;
          }

          if (*(*(a1 + 56) + 992) > 0.0)
          {
            *(*(a1 + 56) + 984) = *(*(a1 + 56) + 1008);
            *(*(a1 + 56) + 992) = 0;
          }
        }

        __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 0x3002u, *(*(a1 + 56) + 1256));
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessForceUpdates"))
  {
    if (*(a1 + 40))
    {
      v76 = CFGetTypeID(*(a1 + 40));
      if (v76 == CFNumberGetTypeID())
      {
        v319 = 1;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v319);
        *(*(a1 + 56) + 1284) = v319 != 0;
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessGlobalScalar"))
  {
    if (*(a1 + 40))
    {
      v75 = CFGetTypeID(*(a1 + 40));
      if (v75 == CFDictionaryGetTypeID())
      {
        GlobalScalarFromDictionary = _DisplayGetGlobalScalarFromDictionary(*(a1 + 56), *(*(a1 + 56) + 80), *(a1 + 40));
        if (GlobalScalarFromDictionary > 0.0)
        {
          *(*(a1 + 56) + 1140) = GlobalScalarFromDictionary;
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if (*(a1 + 40) && CFEqual(*(a1 + 48), @"ProductTypeAccessory"))
  {
    v74 = CFBooleanGetTypeID();
    if (v74 == CFGetTypeID(*(a1 + 40)))
    {
      *(*(a1 + 56) + 312) = CFBooleanGetValue(*(a1 + 40)) != 0;
    }
  }

  else if (CFEqual(*(a1 + 48), @"PCCEnable"))
  {
    if (*(a1 + 40))
    {
      v73 = CFGetTypeID(*(a1 + 40));
      if (v73 == CFNumberGetTypeID())
      {
        v317 = -1.0;
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v317);
        if (v317 >= 0.0)
        {
          __DisplaySetBLDriverProperty(*(a1 + 56), @"pcc-enable", *MEMORY[0x1E695E4D0]);
        }

        else
        {
          __DisplaySetBLDriverProperty(*(a1 + 56), @"pcc-enable", *MEMORY[0x1E695E4C0]);
        }

        if (_logHandle)
        {
          v72 = _logHandle;
        }

        else
        {
          v71 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v72 = v71;
        }

        v316 = v72;
        v315 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          if (v317 == 0.0)
          {
            v31 = "disabled";
          }

          else
          {
            v31 = "enabled";
          }

          __os_log_helper_16_2_1_8_32(v593, v31);
          _os_log_impl(&dword_1DE8E5000, v316, v315, "PCC %s", v593, 0xCu);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PCCBrightness"))
  {
    if (*(a1 + 40))
    {
      v70 = CFGetTypeID(*(a1 + 40));
      if (v70 == CFNumberGetTypeID())
      {
        v314 = -1.0;
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v314);
        if (v314 >= 0.0)
        {
          if (_logHandle)
          {
            v69 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v68 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v68 = init_default_corebrightness_log();
            }

            v69 = v68;
          }

          v313 = v69;
          v312 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_8_0(v592, COERCE__INT64(v314));
            _os_log_impl(&dword_1DE8E5000, v313, v312, "Set PCC brightness = %f", v592, 0xCu);
          }

          v311 = (v314 * 65536.0);
          v67 = CFGetAllocator(*(a1 + 56));
          v310 = CFNumberCreate(v67, kCFNumberSInt32Type, &v311);
          if (v310)
          {
            __DisplaySetBLDriverProperty(*(a1 + 56), @"pcc-brightness", v310);
            CFRelease(v310);
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CoreBrightnessFeaturesDisabled"))
  {
    v309 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v309 objectForKey:@"OverrideBrightnessWithFixedNits"] || objc_msgSend(v309, "objectForKey:", @"OverrideBrightnessWithFixedSliderPosition"))
      {
        v308 = [v309 objectForKey:@"OverrideBrightnessWithFixedNits"];
        v307 = [v309 objectForKey:@"OverrideBrightnessWithFixedSliderPosition"];
        v306 = 0.0;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v308 floatValue];
          v306 = v32;
        }

        else
        {
          v305 = 1.0;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v307 floatValue];
            v305 = v33;
          }

          else
          {
            v305 = 1.0;
          }

          v306 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v305);
        }

        *(*(a1 + 56) + 1504) = 1;
        v304 = (*(*(a1 + 56) + 1312) * 65536.0);
        SetBLDriverNitsCap(*(a1 + 56), v304);
        v303 = (v306 * 65536.0);
        if (_logHandle)
        {
          v66 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v65 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v65 = init_default_corebrightness_log();
          }

          v66 = v65;
        }

        v302 = v66;
        v301 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v591, COERCE__INT64(v306));
          _os_log_impl(&dword_1DE8E5000, v302, v301, "Display.m CoreBrightnessFeaturesDisabled overriden brightness, desired fixed brightness is = %f", v591, 0xCu);
        }

        SetBLDriverNitsValue(*(a1 + 56), v303);
      }

      else
      {
        *(*(a1 + 56) + 1504) = 0;
        SetBLDriverNitsCapIfNotInLPM(*(a1 + 56), *(*(a1 + 56) + 1512));
        SetBLDriverNitsValueIfNotInLPM(*(a1 + 56), *(*(a1 + 56) + 1508));
        if (_logHandle)
        {
          v64 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v63 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v63 = init_default_corebrightness_log();
          }

          v64 = v63;
        }

        v300 = v64;
        v299 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v61 = v300;
          v62 = v299;
          __os_log_helper_16_0_0(v298);
          _os_log_impl(&dword_1DE8E5000, v61, v62, "Display.m CoreBrightnessFeaturesDisabled brightness override off", v298, 2u);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightDotsMitigationParameters"))
  {
    v297 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v297 objectForKey:@"brightDotsMitigationLux1"] && objc_msgSend(v297, "objectForKey:", @"brightDotsMitigationLux2") && objc_msgSend(v297, "objectForKey:", @"brightDotsMitigationNits1") && objc_msgSend(v297, "objectForKey:", @"brightDotsMitigationNits2"))
      {
        [objc_msgSend(v297 objectForKey:{@"brightDotsMitigationLux1", "floatValue"}];
        *(*(a1 + 56) + 1152) = v34;
        [objc_msgSend(v297 objectForKey:{@"brightDotsMitigationLux2", "floatValue"}];
        *(*(a1 + 56) + 1160) = v35;
        [objc_msgSend(v297 objectForKey:{@"brightDotsMitigationNits1", "floatValue"}];
        *(*(a1 + 56) + 1156) = v36;
        [objc_msgSend(v297 objectForKey:{@"brightDotsMitigationNits2", "floatValue"}];
        *(*(a1 + 56) + 1164) = v37;
      }

      if (*(*(a1 + 56) + 192))
      {
        v296 = *(*(a1 + 56) + 192);
        [v296 setObject:v297 forKey:@"BrightDotsMitigationParameters"];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"FullBrightnessRangeOverrideEnabled"))
  {
    v295 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&v38 = [v295 objectForKey:@"Status"] && (objc_msgSend(objc_msgSend(v295, "objectForKey:", @"Status"), "BOOLValue") & 1) != 0 ? DisplayEnableFullBrightnessRangeAccessOverride(*(a1 + 56), 1) : DisplayEnableFullBrightnessRangeAccessOverride(*(a1 + 56), 0);
      if (*(*(a1 + 56) + 192))
      {
        v294 = *(*(a1 + 56) + 192);
        [v294 setObject:v295 forKey:{@"FullBrightnessRangeOverrideEnabled", v38}];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplaySyncBrightnessTransactions"))
  {
    v60 = CFBooleanGetTypeID();
    if (v60 == CFGetTypeID(*(a1 + 40)))
    {
      *(*(a1 + 56) + 321) = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (*(*(a1 + 56) + 321))
      {
        *(*(a1 + 56) + 136) = 0;
        *(*(a1 + 56) + 208) = [[CBFrameLink alloc] initWithDisplay:*(a1 + 56) andQueue:*(*(a1 + 56) + 144)];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayFasterEDREngaged"))
  {
    v59 = CFBooleanGetTypeID();
    if (v59 == CFGetTypeID(*(a1 + 40)) && (*(*(a1 + 56) + 321) & 1) != 0)
    {
      *(*(a1 + 56) + 322) = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (*(*(a1 + 56) + 322))
      {
        __DisplayStartAPLCPMSTimer(*(a1 + 56), 1.0);
      }

      else if (*(*(a1 + 56) + 12112))
      {
        __DisplayProcessHDRStatusForCoreAnalytics(*(a1 + 56));
        dispatch_release(*(*(a1 + 56) + 12112));
        *(*(a1 + 56) + 12112) = 0;
        *(*(a1 + 56) + 12088) = 0;
        *(*(a1 + 56) + 12096) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMinRefreshRate"))
  {
    v585 = *(*(a1 + 56) + 384);
    v58 = CFNumberGetTypeID();
    if (v58 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    *(*(a1 + 56) + 384) = v585;
    if (_logHandle)
    {
      v57 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v56 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v56 = init_default_corebrightness_log();
      }

      v57 = v56;
    }

    oslog = v57;
    v292 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_0(v590, "DisplayBrightnessMinRefreshRate", COERCE__INT64(v585));
      _os_log_debug_impl(&dword_1DE8E5000, oslog, v292, "MinRefreshRate: %s = %f\n", v590, 0x16u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMaxRefreshRate"))
  {
    v585 = *(*(a1 + 56) + 388);
    v55 = CFNumberGetTypeID();
    if (v55 != CFGetTypeID(*(a1 + 40)))
    {
      return;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v585);
    *(*(a1 + 56) + 388) = v585;
    if (_logHandle)
    {
      v54 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v53 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v53 = init_default_corebrightness_log();
      }

      v54 = v53;
    }

    v291 = v54;
    v290 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_0(v589, "DisplayBrightnessMaxRefreshRate", COERCE__INT64(v585));
      _os_log_debug_impl(&dword_1DE8E5000, v291, v290, "MaxRefreshRate: %s = %f\n", v589, 0x16u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraRamp"))
  {
    v585 = *(*(a1 + 56) + 12952);
    v289 = 0.0;
    v288 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v287 = [v288 objectForKey:@"Factor"];
      if (v287)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v287 floatValue];
          v585 = v39;
        }
      }

      v286 = [v288 objectForKey:@"Period"];
      if (v286)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v286 floatValue];
          v289 = v40;
        }
      }

      _DisplaySetAuroraFactorWithFade(*(a1 + 56), v585, v289);
      if (*(*(a1 + 56) + 192))
      {
        v285 = *(*(a1 + 56) + 192);
        [v285 setObject:v288 forKey:@"AuroraRamp"];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraCLTMActivationThreshold"))
  {
    v52 = CFNumberGetTypeID();
    if (v52 == CFGetTypeID(*(a1 + 40)))
    {
      [*(a1 + 40) floatValue];
      *(*(a1 + 56) + 13024) = v41;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraRampUpTimeSecondsPerStop"))
  {
    v51 = CFNumberGetTypeID();
    if (v51 == CFGetTypeID(*(a1 + 40)))
    {
      [*(a1 + 40) floatValue];
      *(*(a1 + 56) + 13028) = v42;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraRampDownTimeSecondsPerStop"))
  {
    v50 = CFNumberGetTypeID();
    if (v50 == CFGetTypeID(*(a1 + 40)))
    {
      [*(a1 + 40) floatValue];
      *(*(a1 + 56) + 13032) = v43;
    }
  }

  else if (CFEqual(*(a1 + 48), @"ExternalRampIsRunning"))
  {
    v284 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 56) + 264) handleRampStart:v284];
    }
  }

  else if (CFEqual(*(a1 + 48), @"ExternalRampHasFinished"))
  {
    v283 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 56) + 264) handleRampEnd:v283];
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayDisplayStartFade"))
  {
    v49 = CFNumberGetTypeID();
    if (v49 == CFGetTypeID(*(a1 + 40)))
    {
      v48 = *(a1 + 56);
      [*(a1 + 40) floatValue];
      __DisplayStartFadeWithType(v48, 21, v44);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFadePeriodOverride"))
  {
    v282 = *(*(a1 + 56) + 376);
    v47 = CFNumberGetTypeID();
    if (v47 == CFGetTypeID(*(a1 + 40)))
    {
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v282);
      if (v282 < 0.0)
      {
        *(*(a1 + 56) + 376) = v282;
        *(*(a1 + 56) + 380) = 0;
      }

      else
      {
        *(*(a1 + 56) + 376) = v282;
        *(*(a1 + 56) + 380) = 1;
      }

      if (_logHandle)
      {
        v46 = _logHandle;
      }

      else
      {
        v45 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v46 = v45;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v588, "DisplayBrightnessFadePeriodOverride", COERCE__INT64(v282));
        _os_log_debug_impl(&dword_1DE8E5000, v46, OS_LOG_TYPE_DEBUG, "FadePeriodOverride: %s = %f\n", v588, 0x16u);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayPowerOff"))
  {
    __ShortcutAllRamps(*(a1 + 56));
    if (*(*(a1 + 56) + 1204) > 0.0)
    {
      *(*(a1 + 56) + 1256) = 0;
    }
  }

  else if (!CFEqual(*(a1 + 48), @"CBStoreDemoModeIsPresent"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1 && *(a1 + 40))
  {
    CFDictionarySetValue(*(*(a1 + 56) + 192), *(a1 + 48), *(a1 + 40));
  }

  if (*(*(a1 + 56) + 348) == 0.0)
  {
    *(*(a1 + 56) + 356) = *(*(a1 + 56) + 336);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t __DisplayGetPowerAccumulatorDCP(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = a1;
  v26 = a2;
  if (_logHandle)
  {
    v10 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
  }

  v25 = v10;
  v24 = 1;
  v23 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v10))
  {
    log = v25;
    type = v24;
    spid = v23;
    __os_log_helper_16_0_0(v22);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "DisplayGetPowerAccumulatorDCP", &unk_1DEAD656F, v22, 2u);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x20000000;
  v20 = 32;
  v21 = 0x8000000000000000;
  v12 = 0;
  v13 = &v12;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 0;
  if (*(v27 + 12144))
  {
    if (*(v27 + 12136))
    {
      Samples = IOReportCreateSamples();
      if (Samples)
      {
        IOReportIterate();
        CFRelease(Samples);
      }
    }
  }

  if (v26)
  {
    *v26 = v13[3];
  }

  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v4 = init_default_corebrightness_log();
    }

    v5 = v4;
  }

  if (os_signpost_enabled(v5))
  {
    __os_log_helper_16_0_1_8_0(v28, v18[3]);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DisplayGetPowerAccumulatorDCP", "power accumulator = %llu", v28, 0xCu);
  }

  v3 = v18[3];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v17, 8);
  return v3;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void __DisplayCPMSHDRCallback(uint64_t result)
{
  if (result)
  {
    if (DisplayHasDCP(result))
    {
      __DisplayCPMSHDRCallbackDCPStage1(result);
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v4 = Current - *(result + 12088);
      PowerAccumulator = __DisplayGetPowerAccumulator(result);
      v1 = (PowerAccumulator - *(result + 12096)) / (1000.0 * v4);
      InstantPower = v1;
      if (v1 == 0.0)
      {
        InstantPower = __DisplayGetInstantPower(result);
      }

      else
      {
        *(result + 12096) = PowerAccumulator;
        *(result + 12088) = Current;
      }

      if (*(result + 12081))
      {
        __DisplayEvaluateCPMSHDRPowerConstraint(result, InstantPower);
      }

      *(result + 12081) = 1;
    }
  }
}

void __DisplayCPMSHDRCallbackDCPStage1(NSObject **a1)
{
  v23 = a1;
  v19[0] = 0;
  v19[1] = v19;
  v20 = 0x20000000;
  v21 = 32;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v12 = 0x20000000;
  v13 = 32;
  Current = CFAbsoluteTimeGetCurrent();
  CFRetain(v23);
  v1 = v23[19];
  block = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = ____DisplayCPMSHDRCallbackDCPStage1_block_invoke;
  v6 = &unk_1E867CB70;
  v7 = v15;
  v10 = v23;
  v8 = v19;
  v9 = v11;
  dispatch_async(v1, &block);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v19, 8);
}

void sub_1DE8FAC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, _Unwind_Exception *exception_object)
{
  _Block_object_dispose((v27 - 88), 8);
  _Block_object_dispose((v27 - 56), 8);
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void __DisplayEvaluateCPMSHDRPowerConstraint(uint64_t a1, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  CPMSPowerConstraint = __DisplayGetCPMSPowerConstraint(a1);
  HDRAPLColumn = DisplayGetHDRAPLColumn(a1);
  v4 = __DisplayPhysicalBrightnessToPowerInternal(a1, HDRAPLColumn, *(a1 + 1544));
  if ((*(a1 + 12082) & 1) == 0 && CPMSPowerConstraint < v4)
  {
    *(a1 + 12082) = 1;
  }

  if (_logHandle)
  {
    v3 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_8_0(v9, COERCE__INT64(a2), COERCE__INT64(CPMSPowerConstraint), COERCE__INT64(v4));
    _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "CPMS: Current Power Output:%f Budget Constraint:%f/%f", v9, 0x20u);
  }

  if (a2 > CPMSPowerConstraint)
  {
    __DisplayUpdateHDRCap(a1);
  }
}

void __DisplayCPMSHDRCallbackDCPStage2(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v4 = (a2 - *(a1 + 12096)) / (1000.0 * (a4 - *(a1 + 12088)));
  v5 = v4;
  if (v4 == 0.0)
  {
    v5 = a3;
  }

  else
  {
    *(a1 + 12096) = a2;
    *(a1 + 12088) = a4;
  }

  if (*(a1 + 12081))
  {
    __DisplayEvaluateCPMSHDRPowerConstraint(a1, v5);
  }

  *(a1 + 12081) = 1;
}

uint64_t DisplayGetHDRAPLColumn(uint64_t a1)
{
  v8 = a1;
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayGetHDRAPLColumn_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = a1;
  v10 = &DisplayGetHDRAPLColumn_hdrToken;
  v9 = &v2;
  if (DisplayGetHDRAPLColumn_hdrToken != -1)
  {
    dispatch_once(v10, v9);
  }

  return DisplayGetHDRAPLColumn_hdrColumn;
}

float __DisplayGetCPMSPowerConstraint(uint64_t a1)
{
  if (*(a1 + 528) <= *(a1 + 524))
  {
    v4 = *(a1 + 12076);
  }

  else
  {
    APLColumnOrDefault = DisplayGetAPLColumnOrDefault(a1, 0x64u);
    v4 = DisplayPhysicalBrightnessToPower(a1, APLColumnOrDefault, *(a1 + 528));
  }

  if (*(a1 + 12080))
  {
    return *(a1 + 12072);
  }

  else
  {
    return fminf(*(a1 + 12072), v4);
  }
}

uint64_t __DisplayGetIndexFromValue(signed int a1, signed int a2, uint64_t a3, float a4)
{
  if (a1 < 0 || a2 < 0)
  {
    return 0;
  }

  else if (a1 < a2)
  {
    v5 = (a1 + a2) / 2;
    if (*(a3 + 4 * v5) <= a4)
    {
      if (a4 >= *(a3 + 4 * (v5 + 1)))
      {
        return __DisplayGetIndexFromValue(v5 + 1, a2, a3, a4);
      }

      else
      {
        return ((a1 + a2) / 2);
      }
    }

    else
    {
      return __DisplayGetIndexFromValue(a1, v5, a3, a4);
    }
  }

  else
  {
    return a2;
  }
}

float __DisplayGetPercentageFromIndex(int a1, int a2, float *a3, float a4)
{
  if (a4 < *a3 || a1 == a2)
  {
    return 0.0;
  }

  else
  {
    return (a4 - a3[a1]) / (a3[a1 + 1] - a3[a1]);
  }
}

float __DisplayPhysicalBrightnessToPowerInternal(uint64_t a1, unsigned int a2, float a3)
{
  if (!*(a1 + 1660))
  {
    return 0.0;
  }

  APLIndex = DisplayGetAPLIndex(a1, a2);
  IndexFromValue = __DisplayGetIndexFromValue(0, *(a1 + 1660) - 1, a1 + 1868, a3);
  PercentageFromIndex = __DisplayGetPercentageFromIndex(IndexFromValue, *(a1 + 1660) - 1, (a1 + 1868), a3);
  if (IndexFromValue == *(a1 + 1660) - 1)
  {
    return *(a1 + 2068 + 200 * APLIndex + 4 * IndexFromValue);
  }

  else
  {
    return *(a1 + 2068 + 200 * APLIndex + 4 * IndexFromValue) + (PercentageFromIndex * (*(a1 + 2068 + 200 * APLIndex + 4 * (IndexFromValue + 1)) - *(a1 + 2068 + 200 * APLIndex + 4 * IndexFromValue)));
  }
}

void ColorRampCallback(_BYTE *a1, int *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a1;
  v29 = a2;
  v28 = 0;
  if (a1)
  {
    v28 = v30;
    if (v29)
    {
      if (*(v28 + 3149) == 1)
      {
        v27 = 0;
        v26 = 0.0;
        v25 = 0.0;
        CFXGetWPFromMatrix(*(v28 + 1563), v29 + 1, &v27, &v26);
        v25 = 1.0 / v26;
        v24 = *(v28 + 386);
        CFXFindBrightnessCompAlpha(v24);
        v23 = v2;
        v3 = (v2 * v25) + 1.0 - v2;
        v22 = v3;
        *(v28 + 3132) = v3;
        v21 = *(v28 + 375);
        v20 = _DisplayComputeEDRNitsCap(v28);
        if (_logHandle)
        {
          v7 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v7 = inited;
        }

        oslog = v7;
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_5_8_0_8_0_4_0_8_0_8_0(v33, COERCE__INT64(v21), COERCE__INT64(v20), *(v28 + 3150), COERCE__INT64(*(v28 + 298)), COERCE__INT64(*(v28 + 3132)));
          _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Night Shift/Harmony - SetLibEDRBrightness - physicalBrightness:%f, maxLum: %f, edrState: %d, lux: %f, brightness boost: %f\n", v33, 0x30u);
        }

        SetLibEDRBrightness(v28, v21, v20, *(v28 + 298), v22);
      }

      theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], v29[10], MEMORY[0x1E695E9C0]);
      if (theArray)
      {
        for (i = 0; i < v29[10]; ++i)
        {
          value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v29[i + 1]);
          if (value)
          {
            CFArrayAppendValue(theArray, value);
            CFRelease(value);
          }
        }

        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v29 + 12);
          if (cf)
          {
            CFArrayAppendValue(Mutable, cf);
            CFRelease(cf);
          }

          cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v29 + 13);
          if (cf)
          {
            CFArrayAppendValue(Mutable, cf);
            CFRelease(cf);
          }

          valuePtr = *v29;
          v5 = MEMORY[0x1E695E480];
          v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
          v10 = CFNumberCreate(*v5, kCFNumberFloatType, v29 + 11);
          if (v11)
          {
            if (v10)
            {
              keys[0] = xmmword_1E867CB00;
              keys[1] = xmmword_1E867CB10;
              values[0] = theArray;
              values[1] = v11;
              values[2] = v10;
              values[3] = Mutable;
              v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v9)
              {
                if (*(v28 + 2))
                {
                  (*(v28 + 2))(*(v28 + 3), @"ColorRamp", v9);
                }

                CFRelease(v9);
              }
            }
          }

          if (v11)
          {
            CFRelease(v11);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          CFRelease(Mutable);
        }

        CFRelease(theArray);
      }

      v28[12521] = 0;
    }

    else
    {
      v28[12521] = 1;
      Current = CFAbsoluteTimeGetCurrent();
      if (*(v28 + 1563))
      {
        if (v28[12521])
        {
          v28[12521] = CFXUpdateColorFade(*(v28 + 1563), Current);
          if (v28[12521])
          {
            *&v4 = 1.0 / 60.0;
            __DisplayStartFadeWithType(v28, 20, v4);
          }
        }
      }
    }
  }
}

void *ColorRampCallback_0(void *result, uint64_t a2)
{
  if (result)
  {
    return [result colorRampRoutine:a2];
  }

  return result;
}

uint64_t DisplayHasDCP(uint64_t a1)
{
  v8 = a1;
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayHasDCP_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = a1;
  v10 = &DisplayHasDCP_token;
  v9 = &v2;
  if (DisplayHasDCP_token != -1)
  {
    dispatch_once(v10, v9);
  }

  return DisplayHasDCP_hasDCP & 1;
}

float AABC::calculateMovingAverage(AABC *this, float a2)
{
  v14 = this;
  v13 = a2;
  v6 = *(this + 35);
  v2 = std::array<float,3ul>::size[abi:de200100]();
  *std::array<float,3ul>::operator[][abi:de200100](this + 268, v6 % v2) = a2;
  ++*(this + 35);
  std::array<float,3ul>::cbegin[abi:de200100](this + 268);
  v8 = v3;
  v4 = std::array<float,3ul>::cend[abi:de200100](this + 268);
  v12 = std::accumulate[abi:de200100]<float const*,float>(v8, v4, 0.0);
  v10 = v12;
  v11 = std::array<float,3ul>::size[abi:de200100]();
  return v10 / *std::min[abi:de200100]<unsigned long>(&v11, this + 35);
}

uint64_t init_default_corebrightness_log()
{
  _COREBRIGHTNESS_LOG_DEFAULT = os_log_create("com.apple.CoreBrightness", "default");
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v5 = MEMORY[0x1E69E9C10];
    v4 = 16;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      log = v5;
      type = v4;
      __os_log_helper_16_0_0(v3);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create CoreBrightness default log", v3, 2u);
    }

    _COREBRIGHTNESS_LOG_DEFAULT = MEMORY[0x1E69E9C10];
  }

  return _COREBRIGHTNESS_LOG_DEFAULT;
}

uint64_t AABC::getPropertyForClient(AABC *this, const __CFString *a2, const void *a3)
{
  v238 = v258;
  v279 = *MEMORY[0x1E69E9840];
  v267 = this;
  v266 = a2;
  v265 = a3;
  v239 = this;
  if (_logHandle)
  {
    v237 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v236 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
      v236 = inited;
    }

    v237 = v236;
  }

  v3 = v238;
  v238[18] = v237;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v3[18], OS_LOG_TYPE_DEBUG))
  {
    log = v238[18];
    *v233 = type;
    buf = v278;
    __os_log_helper_16_0_1_4_0(v278, 4);
    _os_log_debug_impl(&dword_1DE8E5000, log, v233[0], "[%x]: ", v278, 8u);
  }

  if (_logHandle)
  {
    v231 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v230 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v229 = init_default_corebrightness_log();
      v230 = v229;
    }

    v231 = v230;
  }

  v4 = v238;
  v238[16] = v231;
  v263 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v4[16], OS_LOG_TYPE_DEBUG))
  {
    v226 = v238[16];
    *v227 = v263;
    v5 = v238[20];
    v228 = v277;
    __os_log_helper_16_2_2_4_0_8_64(v277, 2, v5);
    _os_log_debug_impl(&dword_1DE8E5000, v226, v227[0], "[%x]: %@", v277, 0x12u);
  }

  v6 = v239;
  v238[14] = 0;
  if (*(v6 + 92))
  {
    if (CFEqual(v238[20], @"ALSUserPreference"))
    {
      v224 = (*(**(v239 + 8) + 104))(*(v239 + 8));
      v7 = v239;
      *(v239 + 288) = v224;
      CurveDictionary = AABC::createCurveDictionary(v7, v7 + 1056);
      v8 = v238;
      v238[13] = CurveDictionary;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8[13]);
      v9 = v238;
      v238[12] = MutableCopy;
      CFRelease(v9[13]);
      if (*(v239 + 3409))
      {
        v221 = (*(**(v239 + 8) + 104))(*(v239 + 8));
        v10 = v239;
        *(v239 + 750) = v221;
        v220 = AABC::createCurveDictionary(v10, v10 + 2904);
        v11 = v238;
        v238[13] = v220;
        CFDictionaryAddValue(v11[12], @"ReplacementCurve", v11[13]);
        CFRelease(v238[13]);
        v219 = (*(**(v239 + 8) + 112))(*(v239 + 8));
        v12 = v239;
        *(v239 + 776) = v219;
        v218 = AABC::createCurveDictionary(v12, v12 + 3008);
        v13 = v238;
        v238[13] = v218;
        CFDictionaryAddValue(v13[12], @"AlternativeCurve", v13[13]);
        if (_logHandle)
        {
          v217 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v216 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v215 = init_default_corebrightness_log();
            v216 = v215;
          }

          v217 = v216;
        }

        v14 = v238;
        v238[11] = v217;
        v261 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v14[11], OS_LOG_TYPE_INFO))
        {
          v212 = v238[11];
          *v213 = v261;
          v15 = v238[13];
          v214 = v276;
          __os_log_helper_16_2_1_8_64(v276, v15);
          _os_log_impl(&dword_1DE8E5000, v212, v213[0], "Get ALSUserPreference - AlternativeCurve = %@ ", v276, 0xCu);
        }

        CFRelease(v238[13]);
        v211 = (*(**(v239 + 8) + 112))(*(v239 + 8));
        v16 = v239;
        *(v239 + 802) = v211;
        v210 = AABC::createCurveDictionary(v16, v16 + 3112);
        v17 = v238;
        v238[13] = v210;
        CFDictionaryAddValue(v17[12], @"AlternativeReplacementCurve", v17[13]);
        if (_logHandle)
        {
          v209 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v208 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v207 = init_default_corebrightness_log();
            v208 = v207;
          }

          v209 = v208;
        }

        v18 = v238;
        v238[9] = v209;
        v260 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v18[9], OS_LOG_TYPE_INFO))
        {
          v204 = v238[9];
          *v205 = v260;
          v19 = v238[13];
          v206 = v275;
          __os_log_helper_16_2_1_8_64(v275, v19);
          _os_log_impl(&dword_1DE8E5000, v204, v205[0], "Get ALSUserPreference - AlternativeReplacementCurve = %@ ", v275, 0xCu);
        }

        CFRelease(v238[13]);
        AAB::GetCurveUpdates(v259, v239);
        if (!std::list<AAB::CurveUpdate>::empty[abi:de200100](v259))
        {
          context = objc_autoreleasePoolPush();
          v202 = [MEMORY[0x1E695DF70] array];
          v20 = v238;
          v238[4] = v202;
          v20[1] = v259;
          v21 = std::list<AAB::CurveUpdate>::begin[abi:de200100](v20[1]);
          v22 = v238;
          *v238 = v21;
          v257 = std::list<AAB::CurveUpdate>::end[abi:de200100](v22[1]);
          while (std::operator!=[abi:de200100](v258, &v257))
          {
            v200 = std::__list_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](v258);
            v256 = v200;
            v198 = v238[4];
            v238[86] = @"Lux";
            LODWORD(v23) = *v256;
            v199 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
            v24 = v238;
            v238[89] = v199;
            v24[87] = @"Nits";
            LODWORD(v25) = *(v256 + 4);
            v197 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
            v26 = v238;
            v238[90] = v197;
            v26[88] = @"Timestamp";
            v196 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v256 + 8)];
            v238[91] = v196;
            v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v274 forKeys:v273 count:3];
            [v198 addObject:v195];
            std::__list_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](v258);
          }

          CFDictionaryAddValue(v238[12], @"CurveUpdates", v238[4]);
          objc_autoreleasePoolPop(context);
        }

        (*(**(v239 + 8) + 96))(*(v239 + 8));
        std::list<AAB::CurveUpdate>::~list(v259);
      }

      if (*(v239 + 3376))
      {
        v194 = AABC::createCurveDictionary(v239, v239 + 2904);
        v27 = v238;
        v238[13] = v194;
        CFDictionaryAddValue(v27[12], @"ReplacementCurve", v27[13]);
        CFRelease(v238[13]);
        CurveDescriptorDictionary = AABC::createCurveDescriptorDictionary(v239, v239 + 834);
        value = CurveDescriptorDictionary;
        CFDictionaryAddValue(v238[12], @"Descriptor", CurveDescriptorDictionary);
        CFRelease(CurveDescriptorDictionary);
        if (!v238[19])
        {
          if (AABC::isCurveGood(v239, v239 + 1056))
          {
            AABC::writeOutlierRemovalPreferences(v239, 0);
          }

          else
          {
            *(v239 + 3408) = 1;
          }
        }
      }

      CFDictionarySetValue(*(v239 + 47), @"ALSUserPreference", v238[12]);
      v28 = v238;
      v238[14] = v238[12];
      CFRelease(v28[12]);
    }

    else if (CFEqual(v238[20], @"OutlierRemoval"))
    {
      if (!CFDictionaryGetValueIfPresent(*(v239 + 47), @"OutlierRemoval", &v262))
      {
        v238[14] = 0;
      }
    }

    else if (CFEqual(v238[20], @"ALSRequiresProx"))
    {
      v238[14] = *MEMORY[0x1E695E4D0];
    }

    else if (CFEqual(v238[20], @"ALSDimPolicy"))
    {
      v188 = CFDictionaryGetValue(*(v239 + 48), @"ALSDimPolicy");
      v238[14] = v188;
    }

    else if (CFEqual(v238[20], @"ALSSpikeFilterDuration"))
    {
      v186 = CFDictionaryGetValue(*(v239 + 48), @"ALSSpikeFilterDuration");
      v238[14] = v186;
    }

    else if (CFEqual(v238[20], @"ALSMaxBrightenDuration"))
    {
      v184 = CFDictionaryGetValue(*(v239 + 48), @"ALSMaxBrightenDuration");
      v238[14] = v184;
    }

    else if (CFEqual(v238[20], @"ALSInternalSettings"))
    {
      v238[14] = *(v239 + 48);
    }

    else if (CFEqual(v238[20], @"BrightnessCurveLevel"))
    {
      v181 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v239 + 3412);
      v29 = v238;
      v238[14] = v181;
      if (v29[14])
      {
        CFDictionarySetValue(*(v239 + 48), @"BrightnessCurveLevel", v238[14]);
        CFRelease(v238[14]);
        v180 = CFDictionaryGetValue(*(v239 + 48), @"BrightnessCurveLevel");
        v238[14] = v180;
      }
    }

    else if (CFEqual(v238[20], @"AutoBrightnessLuxFilter"))
    {
      v178 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v239 + 3464);
      v238[14] = v178;
    }

    else if (CFEqual(v238[20], @"SemanticAmbientLightLevel"))
    {
      v176 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v239 + 584);
      v30 = v238;
      v238[14] = v176;
      if (v30[14])
      {
        CFDictionarySetValue(*(v239 + 47), @"SemanticAmbientLightLevel", v238[14]);
        CFRelease(v238[14]);
        v175 = CFDictionaryGetValue(*(v239 + 47), @"SemanticAmbientLightLevel");
        v238[14] = v175;
      }
    }

    else if (CFEqual(v238[20], @"TrustedLux32"))
    {
      v173 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, v239 + 540);
      v31 = v238;
      v238[14] = v173;
      if (v31[14])
      {
        CFDictionarySetValue(*(v239 + 48), @"TrustedLux32", v238[14]);
        CFRelease(v238[14]);
        v172 = CFDictionaryGetValue(*(v239 + 48), @"TrustedLux32");
        v238[14] = v172;
      }
    }

    else if (CFEqual(v238[20], @"TrustedLux"))
    {
      v170 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v239 + 540);
      v32 = v238;
      v238[14] = v170;
      if (v32[14])
      {
        CFDictionarySetValue(*(v239 + 48), @"TrustedLux", v238[14]);
        CFRelease(v238[14]);
        v169 = CFDictionaryGetValue(*(v239 + 48), @"TrustedLux");
        v238[14] = v169;
      }
    }

    else if (CFEqual(v238[20], @"TrustedFrontLux"))
    {
      v167 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v239 + 544);
      v33 = v238;
      v238[14] = v167;
      if (v33[14])
      {
        CFDictionarySetValue(*(v239 + 48), @"TrustedFrontLux", v238[14]);
        CFRelease(v238[14]);
        v166 = CFDictionaryGetValue(*(v239 + 48), @"TrustedFrontLux");
        v238[14] = v166;
      }
    }

    else
    {
      v165 = CFEqual(v238[20], @"Lux");
      if (v165 || (v164 = CFEqual(v238[20], @"AggregatedLux")) != 0)
      {
        v163 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v239 + 528);
        v34 = v238;
        v238[14] = v163;
        if (v34[14])
        {
          CFDictionarySetValue(*(v239 + 48), @"Lux", v238[14]);
          CFRelease(v238[14]);
          v162 = CFDictionaryGetValue(*(v239 + 48), @"Lux");
          v238[14] = v162;
        }
      }

      else if (CFEqual(v238[20], @"VirtualLux"))
      {
        v160 = AABC::LuminanceToIlluminance(v239, v239 + 264, *(v239 + 155));
        valuePtr = v160;
        v159 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
        v35 = v238;
        v238[14] = v159;
        if (v35[14])
        {
          CFDictionarySetValue(*(v239 + 48), @"VirtualLux", v238[14]);
          CFRelease(v238[14]);
          v158 = CFDictionaryGetValue(*(v239 + 48), @"VirtualLux");
          v238[14] = v158;
        }
      }

      else if (CFEqual(v238[20], @"ALSCurveInfo"))
      {
        v155 = &v253;
        v253 = 2;
        __len = 120;
        memcpy(__dst, off_1E867CF10, sizeof(__dst));
        memset(__b, 0, sizeof(__b));
        v156 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v253);
        v36 = v239;
        v238[56] = v156;
        v153 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v36 + 1072);
        v37 = v239;
        v238[57] = v153;
        v152 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v37 + 1080);
        v38 = v239;
        v238[58] = v152;
        v151 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v38 + 1076);
        v39 = v239;
        v238[59] = v151;
        v150 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v39 + 1084);
        v40 = v239;
        v238[60] = v150;
        v149 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v40 + 1056);
        v41 = v239;
        v238[61] = v149;
        v148 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v41 + 1060);
        v42 = v239;
        v238[62] = v148;
        v147 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v42 + 1064);
        v43 = v239;
        v238[63] = v147;
        v146 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v43 + 1068);
        v44 = v239;
        v238[64] = v146;
        v145 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v44 + 28);
        v45 = v239;
        v238[65] = v145;
        v144 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v45 + 20);
        v46 = v239;
        v238[66] = v144;
        v143 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v46 + 24);
        v47 = v239;
        v238[67] = v143;
        v142 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v47 + 32);
        v48 = v239;
        v238[68] = v142;
        v141 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v48 + 36);
        v49 = v239;
        v238[69] = v141;
        CurvePrefsDictionary = AABC::createCurvePrefsDictionary(v49, v49 + 1088);
        v238[70] = CurvePrefsDictionary;
        v139 = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, __b, 15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        theDict = v139;
        CFRelease(v238[70]);
        CFRelease(v238[69]);
        CFRelease(v238[68]);
        CFRelease(v238[67]);
        CFRelease(v238[66]);
        CFRelease(v238[65]);
        CFRelease(v238[64]);
        CFRelease(v238[63]);
        CFRelease(v238[62]);
        CFRelease(v238[61]);
        CFRelease(v238[60]);
        CFRelease(v238[59]);
        CFRelease(v238[58]);
        CFRelease(v238[57]);
        CFRelease(v238[56]);
        if (*(v239 + 3376))
        {
          v138 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
          v251 = v138;
          CFRelease(theDict);
          v137 = AABC::createCurveDescriptorDictionary(v239, v239 + 834);
          cf = v137;
          CFDictionaryAddValue(v138, @"Descriptor", v137);
          CFRelease(v137);
          theDict = v138;
        }

        CFDictionarySetValue(*(v239 + 47), @"ALSCurveInfo", theDict);
        v238[14] = theDict;
        CFRelease(theDict);
      }

      else if (CFEqual(v238[20], @"ALSAlternativeCurveInfo"))
      {
        v134 = &v249;
        v249 = 2;
        v133 = 120;
        memcpy(keys, off_1E867CF88, sizeof(keys));
        memset(values, 0, sizeof(values));
        v135 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v249);
        v50 = v239;
        v238[26] = v135;
        v132 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v50 + 3024);
        v51 = v239;
        v238[27] = v132;
        v131 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v51 + 3032);
        v52 = v239;
        v238[28] = v131;
        v130 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v52 + 3028);
        v53 = v239;
        v238[29] = v130;
        v129 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v53 + 3036);
        v54 = v239;
        v238[30] = v129;
        v128 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v54 + 3008);
        v55 = v239;
        v238[31] = v128;
        v127 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v55 + 3012);
        v56 = v239;
        v238[32] = v127;
        v126 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v56 + 3016);
        v57 = v239;
        v238[33] = v126;
        v125 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v57 + 3020);
        v58 = v239;
        v238[34] = v125;
        v124 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v58 + 28);
        v59 = v239;
        v238[35] = v124;
        v123 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v59 + 20);
        v60 = v239;
        v238[36] = v123;
        v122 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v60 + 24);
        v61 = v239;
        v238[37] = v122;
        v121 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v61 + 32);
        v62 = v239;
        v238[38] = v121;
        v120 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v62 + 36);
        v63 = v239;
        v238[39] = v120;
        v119 = AABC::createCurvePrefsDictionary(v63, v63 + 3040);
        v238[40] = v119;
        v118 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v248 = v118;
        CFRelease(v238[40]);
        CFRelease(v238[39]);
        CFRelease(v238[38]);
        CFRelease(v238[37]);
        CFRelease(v238[36]);
        CFRelease(v238[35]);
        CFRelease(v238[34]);
        CFRelease(v238[33]);
        CFRelease(v238[32]);
        CFRelease(v238[31]);
        CFRelease(v238[30]);
        CFRelease(v238[29]);
        CFRelease(v238[28]);
        CFRelease(v238[27]);
        CFRelease(v238[26]);
        CFDictionarySetValue(*(v239 + 47), @"ALSAlternativeCurveInfo", v118);
        v238[14] = v118;
        CFRelease(v248);
      }

      else if (CFEqual(v238[20], @"AODDarkerCurve"))
      {
        if (*(v239 + 718) > 0)
        {
          v116 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v247 = v116;
          v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v246 = v115;
          for (i = 0; i < *(v239 + 718); ++i)
          {
            v114 = objc_alloc(MEMORY[0x1E696AD98]);
            LODWORD(v64) = *(v239 + i + 678);
            v113 = [v114 initWithFloat:v64];
            v244 = v113;
            v112 = objc_alloc(MEMORY[0x1E696AD98]);
            LODWORD(v65) = *(v239 + i + 698);
            v111 = [v112 initWithFloat:v65];
            v243 = v111;
            [v247 addObject:v113];
            [v246 addObject:v111];
            MEMORY[0x1E69E5920](v113);
            MEMORY[0x1E69E5920](v111);
          }

          v110 = objc_alloc(MEMORY[0x1E695DF20]);
          v109 = [v110 initWithObjectsAndKeys:{v247, @"lux", v246, @"nits", 0}];
          v242 = v109;
          v238[14] = v109;
          MEMORY[0x1E69E5920](v247);
          MEMORY[0x1E69E5920](v246);
          if (v238[14])
          {
            CFDictionarySetValue(*(v239 + 48), @"AODDarkerCurve", v238[14]);
            CFRelease(v238[14]);
            v108 = CFDictionaryGetValue(*(v239 + 48), @"AODDarkerCurve");
            v238[14] = v108;
          }
        }
      }

      else if (CFEqual(v238[20], @"ALSDefaultCurves"))
      {
        v106 = CFDictionaryGetValue(*(v239 + 47), v238[20]);
        v238[14] = v106;
      }

      else if (CFEqual(v238[20], @"EcoMode"))
      {
        if (*(v239 + 3424))
        {
          v104 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v104 = *MEMORY[0x1E695E4C0];
        }

        v238[14] = v104;
      }

      else if (CFEqual(v238[20], @"CBAutoBrightnessAvailable"))
      {
        if (*(v239 + 127))
        {
          v102 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v102 = *MEMORY[0x1E695E4C0];
        }

        v238[14] = v102;
      }

      else if (CFEqual(v238[20], @"ALSBrightenPdeltaSlow"))
      {
        v100 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v239 + 3816);
        v66 = v238;
        v238[14] = v100;
        if (v66[14])
        {
          CFDictionarySetValue(*(v239 + 48), @"ALSBrightenPdeltaSlow", v238[14]);
          CFRelease(v238[14]);
          v99 = CFDictionaryGetValue(*(v239 + 48), @"ALSBrightenPdeltaSlow");
          v238[14] = v99;
        }
      }

      else if (CFEqual(v238[20], @"ALSBrightenPdeltaFast"))
      {
        v97 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v239 + 3812);
        v67 = v238;
        v238[14] = v97;
        if (v67[14])
        {
          CFDictionarySetValue(*(v239 + 48), @"ALSBrightenPdeltaFast", v238[14]);
          CFRelease(v238[14]);
          v96 = CFDictionaryGetValue(*(v239 + 48), @"ALSBrightenPdeltaFast");
          v238[14] = v96;
        }
      }

      else if (CFEqual(v238[20], @"ALSDimPdeltaSlow"))
      {
        v94 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v239 + 3804);
        v68 = v238;
        v238[14] = v94;
        if (v68[14])
        {
          CFDictionarySetValue(*(v239 + 48), @"ALSDimPdeltaSlow", v238[14]);
          CFRelease(v238[14]);
          v93 = CFDictionaryGetValue(*(v239 + 48), @"ALSDimPdeltaSlow");
          v238[14] = v93;
        }
      }

      else if (CFEqual(v238[20], @"Aggressivity"))
      {
        v91 = objc_alloc(MEMORY[0x1E696AD98]);
        v90 = [v91 initWithInt:PerceptualLuminanceThresholding::GetAggressivity(*(v239 + 479))];
        v238[14] = v90;
      }

      else if (CFEqual(v238[20], @"ProxMitigationTriggered"))
      {
        if (*(v239 + 59) && (*(v239 + 3757) & 1) != 0 && *(v239 + 942))
        {
          v88 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v88 = *MEMORY[0x1E695E4C0];
        }

        v238[14] = v88;
      }

      else if (CFEqual(v238[20], @"TouchMitigationTriggered"))
      {
        if (*(v239 + 56) && (isTouchObstructed = AABC::ALS::isTouchObstructed(*(v239 + 56)), (isTouchObstructed & 1) != 0))
        {
          v85 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v85 = *MEMORY[0x1E695E4C0];
        }

        v238[14] = v85;
      }

      else if (CFEqual(v238[20], @"BrightnessCapabilities"))
      {
        v83 = CFDictionaryGetValue(*(v239 + 48), @"BrightnessCapabilities");
        v238[14] = v83;
      }

      else if (CFEqual(v238[20], @"ALSIntegrationMode"))
      {
        v81 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v239 + 668);
        v69 = v238;
        v238[14] = v81;
        if (v69[14])
        {
          CFDictionarySetValue(*(v239 + 48), @"ALSIntegrationMode", v238[14]);
          CFRelease(v238[14]);
          v80 = CFDictionaryGetValue(*(v239 + 48), @"ALSIntegrationMode");
          v238[14] = v80;
        }
      }

      else
      {
        v79 = CFDictionaryGetValue(*(v239 + 47), v238[20]);
        v238[14] = v79;
      }
    }
  }

  if (_logHandle)
  {
    v78 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v77 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v76 = init_default_corebrightness_log();
      v77 = v76;
    }

    v78 = v77;
  }

  oslog = v78;
  v240 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
  {
    v73 = oslog;
    *v74 = v240;
    v70 = v238[20];
    v71 = v238[14];
    v75 = v268;
    __os_log_helper_16_2_3_4_0_8_64_8_64(v268, 2, v70, v71);
    _os_log_debug_impl(&dword_1DE8E5000, v73, v74[0], "[%x]: %@ result=%@", v75, 0x1Cu);
  }

  return v238[14];
}

__IOHIDEvent *AABC::filter(CFDictionaryRef *this, __IOHIDServiceClient *a2, __IOHIDEvent *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v6 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v6 = inited;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_4_0(v10, 4, *(this + 92));
    _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "[%x]: _plugInEnabled=%x", v10, 0xEu);
  }

  if (*(this + 92))
  {
    Type = IOHIDEventGetType();
    if (Type != 2)
    {
      switch(Type)
      {
        case 3:
          AABC::HandleKeyboardEvent(this, a2, a3);
          break;
        case 11:
          if (this[58] && a2 == this[58])
          {
            AABC::HandleDigitizerEvent(this, a2, a3);
          }

          break;
        case 12:
          if (this[52] && a2 && CFDictionaryContainsKey(this[52], a2))
          {
            AABC::HandleALSEvent(this, a2, a3);
          }

          break;
        default:
          if (Type == 14 && this[59] && a2 == this[59])
          {
            AABC::HandleProxEvent(this, a2, a3);
          }

          break;
      }
    }
  }

  return a3;
}

void AABC::HandleALSEvent(AABC *this, __IOHIDServiceClient *a2, __IOHIDEvent *a3)
{
  v421 = *MEMORY[0x1E69E9840];
  v398 = this;
  v397 = a2;
  v396 = a3;
  v285 = this;
  if (_logHandle)
  {
    v284 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v283 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
      v283 = inited;
    }

    v284 = v283;
  }

  v395 = v284;
  v394 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v284, OS_LOG_TYPE_DEBUG))
  {
    v279 = v395;
    v280 = v394;
    v281 = v420;
    __os_log_helper_16_0_3_4_0_8_0_8_0(v420, 4, v397, v396);
    _os_log_debug_impl(&dword_1DE8E5000, v395, v394, "[%x]: %p %p", v420, 0x1Cu);
  }

  v393 = 0;
  v391 = 0.0;
  v390 = 0;
  TimeStamp = IOHIDEventGetTimeStamp();
  v3 = TimeStamp * *&AABC::_sMachTimebaseFactor;
  v392 = v3;
  v389 = 0.0;
  if (*(v285 + 168) < v3 || *(v285 + 90))
  {
    if (v285[496] & 1) != 0 && (v285[497])
    {
      if (_logHandle)
      {
        v275 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v274 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v274 = init_default_corebrightness_log();
        }

        v275 = v274;
      }

      v386 = v275;
      v385 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v275, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v418, 4);
        _os_log_debug_impl(&dword_1DE8E5000, v386, v385, "[%x]: throwing away sample, preStrobe is in progress", v418, 8u);
      }
    }

    else
    {
      v273 = +[CBAODState sharedInstance];
      v272 = [(CBAODState *)v273 AODState];
      if (AABC::ignoreALSEventsInAOD(v285, v272))
      {
        if (_logHandle)
        {
          v271 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v270 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v270 = init_default_corebrightness_log();
          }

          v271 = v270;
        }

        v384 = v271;
        v383 = 0;
        if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
        {
          v268 = v384;
          v269 = v383;
          __os_log_helper_16_0_0(v382);
          _os_log_impl(&dword_1DE8E5000, v268, v269, "Ongoing AOD transition IN/OUT -> Ignoring ALS Events!!", v382, 2u);
        }
      }

      else if (*(v285 + 719) != 1 && *(v285 + 719) != 2 && *(v285 + 719) != 3)
      {
        Value = CFDictionaryGetValue(*(v285 + 52), v397);
        v393 = Value;
        if (Value[4])
        {
          v266 = [CBALSEvent alloc];
          v265 = [(CBALSEvent *)v266 initWithHIDEvent:v396 andNode:v393[5]];
          v381 = v265;
          [v393[4] filterEvent:v265];
        }

        isStrobePolluted = AABC::ALS::isStrobePolluted(v393);
        if (isStrobePolluted)
        {
          if (_logHandle)
          {
            v263 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v262 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v262 = init_default_corebrightness_log();
            }

            v263 = v262;
          }

          v380 = v263;
          v379 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v263, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_4_0(v417, 4);
            _os_log_debug_impl(&dword_1DE8E5000, v380, v379, "[%x]: Rear ALS in Strobe coex state -> Ignoring ALS Events", v417, 8u);
          }
        }

        else
        {
          if ((v285[436] & 1) == 0)
          {
            v4 = v285;
            v285[436] = 1;
            if (*(v4 + 56))
            {
              if (*(*(v285 + 56) + 8) == 8 || *(*(v285 + 56) + 8) == 9)
              {
                if (_logHandle)
                {
                  v261 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v260 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v259 = init_default_corebrightness_log();
                    v260 = v259;
                  }

                  v261 = v260;
                }

                v378 = v261;
                v377 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
                {
                  v256 = v378;
                  v257 = v377;
                  *&v5 = *(v285 + 854);
                  v258 = v416;
                  __os_log_helper_16_0_2_8_0_8_0(v416, v5, 0x3FE0000000000000);
                  _os_log_impl(&dword_1DE8E5000, v378, v377, "AABC has received the first ALS sample since the initialization. ALS TIMEOUT will change: %fms -> %fms.", v416, 0x16u);
                }

                *(v285 + 854) = 1056964608;
              }
            }
          }

          if ((v285[435] & 1) == 0)
          {
            v255 = mach_absolute_time();
            v376 = v255 * *&AABC::_sMachTimebaseFactor;
            v254 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v376);
            v375 = v254;
            if (v254)
            {
              if (*(v285 + 47))
              {
                CFDictionarySetValue(*(v285 + 47), @"EventTimestampFirstALSSample", v375);
              }

              if (_logHandle)
              {
                v253 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v252 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v251 = init_default_corebrightness_log();
                  v252 = v251;
                }

                v253 = v252;
              }

              v374 = v253;
              v373 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
              {
                v248 = v374;
                v249 = v373;
                v250 = v415;
                __os_log_helper_16_0_1_8_0(v415, *&v376);
                _os_log_impl(&dword_1DE8E5000, v374, v373, "ts=%f kCBEventTimestampFirstALSSampleKey", v415, 0xCu);
              }

              CFRelease(v375);
            }
          }

          v6 = v285;
          v285[435] = 1;
          if (*(v6 + 110) == 1)
          {
            v285[432] = 1;
          }

          if ((v285[432] & 1) == 0 && *(v285 + 53))
          {
            CFDictionarySetValue(*(v285 + 53), v397, v396);
            Count = CFDictionaryGetCount(*(v285 + 53));
            v372 = Count;
            v245 = Count;
            v7 = CFDictionaryGetCount(*(v285 + 52));
            v246 = v7;
            if (Count == v7)
            {
              v285[432] = 1;
            }

            v371 = &v62;
            v237 = 8 * v372;
            MEMORY[0x1EEE9AC00](v7, v8, v9, v10);
            v243 = (&v62 - ((v237 + 15) & 0xFFFFFFFF0));
            v238 = v243;
            v370 = v11;
            v239 = 512;
            if (v237 <= 0x200)
            {
              v12 = v237;
            }

            else
            {
              v12 = 512;
            }

            bzero(&v62 - ((v237 + 15) & 0xFFFFFFFF0), v12);
            v240 = v372;
            v241 = 8 * v372;
            MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
            v244 = (&v62 - ((v241 + 15) & 0xFFFFFFFF0));
            v242 = v244;
            v369 = v240;
            if (v241 <= 0x200)
            {
              v18 = v241;
            }

            else
            {
              v18 = v17;
            }

            bzero(&v62 - ((v241 + 15) & 0xFFFFFFFF0), v18);
            CFDictionaryGetKeysAndValues(*(v285 + 53), v243, v244);
            v368 = -1;
            v367 = -1.0;
            for (i = 0; i < v372; ++i)
            {
              if (v242[i])
              {
                if (v285[3756])
                {
                  IOHIDEventGetDoubleValue();
                  v236 = v19;
                  v235 = v19;
                }

                else
                {
                  IntegerValue = IOHIDEventGetIntegerValue();
                  v235 = IntegerValue;
                }

                v365 = v235;
                v20 = v235;
                v364 = v20;
                if (v20 > v367)
                {
                  v367 = v364;
                  v368 = i;
                }
              }
            }

            if ((v368 & 0x80000000) == 0)
            {
              v396 = v242[v368];
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], 0);
              v390 = Mutable;
              v232 = CFDictionaryGetValue(*(v285 + 52), v238[v368]);
              v363 = v232;
              if (v390)
              {
                if (v363)
                {
                  CFDictionaryAddValue(v390, v238[v368], v363);
                }
              }
            }
          }

          if (v285[432])
          {
            v285[433] = 0;
          }

          if (v285[437])
          {
            AABC::lazyLoadIntegrationTimes(v285, v397, v393);
          }

          v389 = *(v393 + 40);
          if (v285[3756])
          {
            IOHIDEventGetDoubleValue();
            v231 = v21;
            v230 = v21;
          }

          else
          {
            v229 = IOHIDEventGetIntegerValue();
            v230 = v229;
          }

          v362 = v230;
          if (*(v393 + 76))
          {
            v228 = *(v393 + 18);
          }

          else
          {
            v22 = v362;
            v228 = v22;
          }

          v391 = v228;
          if (_logHandle)
          {
            v227 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v226 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v225 = init_default_corebrightness_log();
              v226 = v225;
            }

            v227 = v226;
          }

          v361 = v227;
          v360 = 2;
          if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
          {
            v222 = v361;
            v223 = v360;
            if (*(v393 + 76))
            {
              v23 = "(override)";
            }

            else
            {
              v23 = "";
            }

            v224 = v414;
            __os_log_helper_16_2_3_4_0_8_0_8_32(v414, 16, COERCE__INT64(v391), v23);
            _os_log_debug_impl(&dword_1DE8E5000, v222, v223, "[%x]: %0.4f %s", v224, 0x1Cu);
          }

          if (v285[432] & 1) != 0 || (v285[434] & 1) != 0 || (v285[433])
          {
            AABC::CancelFirstSampleTimeout(v285);
          }

          *(v393 + 17) = v391;
          if (_logHandle)
          {
            v221 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v220 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v219 = init_default_corebrightness_log();
              v220 = v219;
            }

            v221 = v220;
          }

          v359 = v221;
          v358 = 2;
          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
          {
            v216 = v359;
            v217 = v358;
            *&v24 = *(v393 + 17);
            v218 = v413;
            __os_log_helper_16_0_2_4_0_8_0(v413, 16, v24);
            _os_log_debug_impl(&dword_1DE8E5000, v216, v217, "[%x]: als->_Esensor_device=%0.4f", v218, 0x12u);
          }

          v357 = 0.0;
          if (*(v285 + 59) && *(v285 + 942) == 2 && (v392 - *(v285 + 941)) > *(v285 + 940))
          {
            if (_logHandle)
            {
              v215 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v214 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v213 = init_default_corebrightness_log();
                v214 = v213;
              }

              v215 = v214;
            }

            v356 = v215;
            v355 = 2;
            if (os_log_type_enabled(v215, OS_LOG_TYPE_DEBUG))
            {
              v210 = v356;
              v211 = v355;
              v25 = *(v285 + 941);
              *&v26 = *(v285 + 940);
              v212 = v412;
              __os_log_helper_16_0_5_4_0_8_0_8_0_8_0_8_0(v412, 64, COERCE__INT64(v392), COERCE__INT64(v25), COERCE__INT64((v392 - v25)), v26);
              _os_log_debug_impl(&dword_1DE8E5000, v210, v211, "[%x]: setting _proxState = kProxNone (timestamp=%f _proxReleaseTime=%f delta=%f _proxTriggerDelay=%f)", v212, 0x30u);
            }

            v27 = v285;
            *(v285 + 942) = 0;
            if (v27[3757])
            {
              v28 = v285;
              v285[3992] = 1;
              VirtualBrightness = DisplayGetVirtualBrightness(v28[50]);
              *(v285 + 154) = VirtualBrightness;
            }
          }

          if (v393[3])
          {
            v208 = [CBALSEvent alloc];
            v207 = [(CBALSEvent *)v208 initWithHIDEvent:v396 andNode:v393[5]];
            v354 = v207;
            v353 = v393[3];
            v206 = [v353 isObstructed];
            v352 = v206 & 1;
            [v353 filterEvent:v354];
            v205 = [v353 isActive];
            if (v205)
            {
              v204 = [v353 isObstructed];
              if (v204 & 1) == 0 && (v352)
              {
                v29 = v285;
                v285[3992] = 1;
                if (v393 == v29[56])
                {
                  v203 = DisplayGetVirtualBrightness(*(v285 + 50));
                  *(v285 + 154) = v203;
                }
              }
            }
          }

          v351 = v391;
          Current = CFAbsoluteTimeGetCurrent();
          v350 = Current;
          if (*(v285 + 169) && v350 > *(v285 + 86))
          {
            AABC::CancelFastRampMode(v285);
            v285[3328] = 1;
          }

          v351 = fmaxf(v351, *(v393 + 15));
          if (v285[3376] & 1) != 0 && *(v285 + 834) && *(v285 + 834) < *(v285 + 845) && !*(v285 + 842) && v350 > *&v285[8 * (*(v285 + 834) - 1) + 3344] + *(v285 + 425) && (v285[3408])
          {
            AABC::writeOutlierRemovalPreferences(v285, 1);
            *(v285 + 834) = *(v285 + 845);
          }

          if (v285[432] & 1) != 0 || (v285[434] & 1) != 0 || (v285[433])
          {
            ++*(v285 + 150);
          }

          if (_logHandle)
          {
            v201 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v200 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v199 = init_default_corebrightness_log();
              v200 = v199;
            }

            v201 = v200;
          }

          v349 = v201;
          v348 = 2;
          if (os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG))
          {
            v196 = v349;
            v197 = v348;
            v30 = *(v285 + 866);
            v31 = *(v393 + 22);
            v198 = v411;
            __os_log_helper_16_0_3_4_0_4_0_4_0(v411, 2, v30, v31);
            _os_log_debug_impl(&dword_1DE8E5000, v196, v197, "[%x]: _luxFilter=%x als->_Ehistory_max=%d", v198, 0x14u);
          }

          if (*(v285 + 866))
          {
            v347 = 0;
            if (*(v393 + 40) <= 0.01)
            {
              v347 = 1;
            }

            else
            {
              v347 = std::__math::round[abi:de200100](v389 / *(v393 + 40));
              if (v347 < 1)
              {
                v195 = 1;
              }

              else
              {
                v195 = v347;
              }

              v347 = v195;
            }

            if (v285[264])
            {
              v194 = AABC::calculateMovingAverage(v285, v351);
              v351 = v194;
            }

            for (j = 0; j < v347; ++j)
            {
              if (*(v393 + 22))
              {
                v193 = v351;
                v32 = std::vector<float>::operator[][abi:de200100](v393 + 12, *(v393 + 20));
                *v32 = v193;
                *(v393 + 20) = (*(v393 + 20) + 1) % *(v393 + 22);
                if (*(v393 + 21) < *(v393 + 22))
                {
                  ++*(v393 + 21);
                }
              }
            }

            if ((v285[136] & 1) != 0 && *(v285 + 722) == 1)
            {
              if (!*(v393 + 32))
              {
                *(v393 + 32) = 5;
                std::vector<float>::resize(v393 + 17, *(v393 + 32));
              }

              v192 = v351;
              v33 = std::vector<float>::operator[][abi:de200100](v393 + 17, *(v393 + 30));
              *v33 = v192;
              *(v393 + 30) = (*(v393 + 30) + 1) % *(v393 + 32);
              if (*(v393 + 31) < *(v393 + 32))
              {
                ++*(v393 + 31);
              }
            }

            if (v285[160])
            {
              AABC::addToFilter(v285, (v285 + 168), v351);
            }
          }

          if (*(v285 + 866) == 3)
          {
            v345 = v351;
            if (std::vector<float>::size[abi:de200100](v393 + 12))
            {
              if (*(v393 + 21) >= 2u)
              {
                std::vector<float>::vector[abi:de200100](v344, v393 + 12);
                v191 = v344;
                v343 = std::vector<float>::begin[abi:de200100](v344);
                v342 = std::vector<float>::end[abi:de200100](v191);
                std::sort[abi:de200100]<std::__wrap_iter<float *>>(v343, v342);
                if (std::vector<float>::size[abi:de200100](v393 + 12) == 2)
                {
                  v345 = *std::vector<float>::operator[][abi:de200100](v344, 0);
                  if (_logHandle)
                  {
                    v190 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v189 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v188 = init_default_corebrightness_log();
                      v189 = v188;
                    }

                    v190 = v189;
                  }

                  v341 = v190;
                  v340 = 2;
                  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                  {
                    v185 = v341;
                    v186 = v340;
                    v187 = v339;
                    __os_log_helper_16_0_0(v339);
                    _os_log_debug_impl(&dword_1DE8E5000, v185, v186, "Median filter computed on 2 samples - defaulting to minimum", v187, 2u);
                  }
                }

                else
                {
                  v184 = v344;
                  v34 = std::vector<float>::size[abi:de200100](v344);
                  v345 = *std::vector<float>::operator[][abi:de200100](v184, v34 - ((*(v393 + 21) + 1) >> 1));
                  if (_logHandle)
                  {
                    v183 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v182 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v181 = init_default_corebrightness_log();
                      v182 = v181;
                    }

                    v183 = v182;
                  }

                  v338 = v183;
                  v337 = 2;
                  if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
                  {
                    v178 = v338;
                    v179 = v337;
                    v35 = *(v393 + 21);
                    v180 = v410;
                    __os_log_helper_16_0_2_4_0_4_0(v410, 16, v35);
                    _os_log_debug_impl(&dword_1DE8E5000, v178, v179, "[%x]: Median filter computed on %d samples", v180, 0xEu);
                  }

                  if (_logHandle)
                  {
                    v177 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v176 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v175 = init_default_corebrightness_log();
                      v176 = v175;
                    }

                    v177 = v176;
                  }

                  v336 = v177;
                  v335 = 2;
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
                  {
                    v172 = v336;
                    v173 = v335;
                    v36 = *(v393 + 21);
                    v174 = v409;
                    __os_log_helper_16_0_1_4_0(v409, v36);
                    _os_log_debug_impl(&dword_1DE8E5000, v172, v173, "Median filter computed on %d samples", v174, 8u);
                  }
                }

                std::vector<float>::~vector[abi:de200100](v344);
              }

              if (*(v285 + 169) && (v285[3468] & 1) == 0)
              {
                *(v393 + 41) = v345;
              }

              else
              {
                *(v393 + 41) = v345;
              }
            }

            else
            {
              *(v393 + 41) = v351;
            }

            if (_logHandle)
            {
              v171 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v170 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v169 = init_default_corebrightness_log();
                v170 = v169;
              }

              v171 = v170;
            }

            v334 = v171;
            v333 = 2;
            if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
            {
              v166 = v334;
              v167 = v333;
              v168 = v408;
              __os_log_helper_16_0_4_4_0_8_0_8_0_8_0(v408, 16, COERCE__INT64(v392), COERCE__INT64(v351), COERCE__INT64(v345));
              _os_log_debug_impl(&dword_1DE8E5000, v166, v167, "[%x]: ts=%f Esensor=%f Emedian=%f", v168, 0x26u);
            }

            if (v285[160])
            {
              v165 = AABC::calculate95thPercentile(v285, (v285 + 168));
              v37 = v165 * 1.25;
              *(v393 + 41) = v37;
              if (_logHandle)
              {
                v164 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v163 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v162 = init_default_corebrightness_log();
                  v163 = v162;
                }

                v164 = v163;
              }

              v332 = v164;
              v331 = 0;
              if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
              {
                v159 = v332;
                v160 = v331;
                *&v38 = *(v393 + 41);
                v161 = v407;
                __os_log_helper_16_0_1_8_0(v407, v38);
                _os_log_impl(&dword_1DE8E5000, v159, v160, "Scaled 95th percentile lux value: %f, scale factor:1.25", v161, 0xCu);
              }
            }

            if (v285[161])
            {
              AABC::addToFilter(v285, (v285 + 216), *(v393 + 41));
              v330 = *(v393 + 41);
              v158 = AABC::calculate95thPercentile(v285, (v285 + 216));
              v329 = v158;
              v328 = v285[162] & 1;
              if (v158 >= 100.0)
              {
                v41 = v285;
                *(v393 + 41) = fmaxf(*(v393 + 41), 100.0);
                v41[162] = v330 < 100.0;
              }

              else
              {
                *(v393 + 41) = v329;
                if (_logHandle)
                {
                  v157 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v156 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v155 = init_default_corebrightness_log();
                    v156 = v155;
                  }

                  v157 = v156;
                }

                v327 = v157;
                v326 = 2;
                if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
                {
                  v152 = v327;
                  v153 = v326;
                  *&v39 = *(v393 + 41);
                  v154 = v406;
                  __os_log_helper_16_0_1_8_0(v406, v39);
                  _os_log_debug_impl(&dword_1DE8E5000, v152, v153, "Aliasing Mitigation: using 95th percentile lux value: %f", v154, 0xCu);
                }

                v40 = v285;
                v285[162] = 1;
                if (v40[135] == 100.0)
                {
                  ++*(v285 + 938);
                }
              }

              if (*(v285 + 43) && (v285[162] & 1) != (v328 & 1))
              {
                if (v285[162])
                {
                  v151 = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  v151 = *MEMORY[0x1E695E4C0];
                }

                v325 = v151;
                (*(v285 + 43))(*(v285 + 44), @"AliasingMitigationActive", v151);
              }
            }
          }

          else if (*(v285 + 866) == 2)
          {
            v324 = v351;
            if (std::vector<float>::size[abi:de200100](v393 + 17) && *(v393 + 31) >= 2u)
            {
              std::vector<float>::vector[abi:de200100](v323, v393 + 17);
              v150 = v323;
              v322 = std::vector<float>::begin[abi:de200100](v323);
              v321 = std::vector<float>::end[abi:de200100](v150);
              std::sort[abi:de200100]<std::__wrap_iter<float *>>(v322, v321);
              v149 = v323;
              v42 = std::vector<float>::size[abi:de200100](v323);
              v324 = *std::vector<float>::operator[][abi:de200100](v149, v42 - ((*(v393 + 31) + 1) >> 1));
              if (_logHandle)
              {
                v148 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v147 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v146 = init_default_corebrightness_log();
                  v147 = v146;
                }

                v148 = v147;
              }

              v320 = v148;
              v319 = 2;
              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
              {
                v143 = v320;
                v144 = v319;
                v43 = *(v393 + 31);
                v145 = v405;
                __os_log_helper_16_2_3_4_0_8_32_4_0(v405, 16, "HandleALSEvent", v43);
                _os_log_debug_impl(&dword_1DE8E5000, v143, v144, "[%x]: %s: Accessory filter computed on %d samples", v145, 0x18u);
              }

              std::vector<float>::~vector[abi:de200100](v323);
            }

            if (*(v393 + 33) <= -1.0)
            {
              v142 = 0.0;
            }

            else
            {
              v142 = vabds_f32(*(v393 + 33), v351);
            }

            v318 = v142;
            if (v324 <= 0.0)
            {
              v141 = 2.0;
            }

            else
            {
              v141 = vabds_f32(v324, v351) / v324;
            }

            v317 = v141;
            if (*(v393 + 33) == -1.0)
            {
              *(v393 + 41) = v351;
              *(v393 + 33) = v351;
            }

            else if (v317 < 1.0 && v318 > *(v285 + 35) || v351 == 0.0)
            {
              *(v393 + 41) = v351;
              *(v393 + 33) = v351;
            }

            else
            {
              *(v393 + 41) = *(v393 + 33);
            }
          }

          else
          {
            if (_logHandle)
            {
              v140 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v139 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v138 = init_default_corebrightness_log();
                v139 = v138;
              }

              v140 = v139;
            }

            v316 = v140;
            v315 = 2;
            if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
            {
              v135 = v316;
              v136 = v315;
              v137 = v404;
              __os_log_helper_16_0_3_4_0_8_0_8_0(v404, 16, COERCE__INT64(v392), COERCE__INT64(v351));
              _os_log_debug_impl(&dword_1DE8E5000, v135, v136, "[%x]: ts=%f Esensor=%f", v137, 0x1Cu);
            }

            *(v393 + 41) = v351;
          }

          if (v285[432] & 1) != 0 || (v285[434] & 1) != 0 || (v285[433])
          {
            v44 = v285;
            *(v285 + 132) = 0;
            *(v44 + 133) = 0;
            if (v390)
            {
              CFDictionaryApplyFunction(v390, AABC::UpdateAggregateFunction, v285);
            }

            else
            {
              CFDictionaryApplyFunction(*(v285 + 52), AABC::UpdateAggregateFunction, v285);
            }

            AABC::_ReportEsensorAggregated(v285);
            v132 = *(v285 + 135);
            v45 = *(v285 + 150);
            v46 = -1.0;
            if (v45 <= 1)
            {
              v46 = 0.1;
            }

            v47 = v46;
            v133 = v47;
            v134 = 1;
            if (v45 >= 2)
            {
              v134 = v285[3992];
            }

            AABC::_UpdateNitsRestrictions(v285, v132, v133, v134 & 1);
            v130 = *(v285 + 468);
            v48 = *(v285 + 59);
            v131 = 0;
            if (v48)
            {
              v131 = *(v285 + 942) != 0;
            }

            v128 = v131;
            v49 = *(*(v285 + 56) + 24);
            v129 = 0;
            if (v49)
            {
              v127 = [*(*(v285 + 56) + 24) isObstructedIgnoreActive];
              v129 = v127;
            }

            [v130 recordOcclusionByProx:v128 andByTouch:v129 & 1];
            if (_logHandle)
            {
              v126 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v125 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v124 = init_default_corebrightness_log();
                v125 = v124;
              }

              v126 = v125;
            }

            v314 = v126;
            v313 = 2;
            if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
            {
              v117 = v314;
              v118 = v313;
              v119 = &v403;
              *&v120 = *(v285 + 135);
              v121 = (&kAABStateStr)[*(v285 + 90)];
              v122 = (&kProxStateStr)[*(v285 + 942)];
              isTouchObstructed = AABC::ALS::isTouchObstructed(*(v285 + 56));
              __os_log_helper_16_2_8_4_0_8_0_8_32_8_32_4_0_8_32_4_0_8_32(v119, 16, v120, v121, v122, isTouchObstructed & 1, (&kDimPolicyStr)[*(v285 + 861)], *(v285 + 861), (&kOrientationString)[*(v285 + 176)]);
              _os_log_debug_impl(&dword_1DE8E5000, v117, v118, "[%x]: _Esensor_trusted=%f _state=%s _proxState=%s _touchIsObstucted=%d _settings._internal._dimPolicy=%s %d _orientation=%s", v119, 0x46u);
            }

            if (*(v285 + 121) == 0.0 || *(v285 + 121) == 1.0)
            {
              v116 = *(v285 + 90);
              if (v116 >= 2 && v116 - 2 < 2)
              {
                v312 = 0.0;
                v311 = 0.0;
                if (*(v285 + 128))
                {
                  LogicalBrightness = DisplayGetLogicalBrightness(*(v285 + 50));
                  v312 = LogicalBrightness;
                  if (v285[3425])
                  {
                    v114 = AABC::IlluminanceToLuminance(v285, v285 + 804, *(v285 + 135), *(v285 + 138));
                    v310 = v114;
                    if (v50 | ((v285[3426] & 1) == 0))
                    {
                      v312 = fminf(*(v285 + 857), v310);
                    }
                  }

                  v113 = AABC::IlluminanceToLuminance(v285, v285 + 264, *(v285 + 135), *(v285 + 138));
                  v311 = v113;
                }

                else
                {
                  v112 = AABC::IlluminanceToLuminance(v285, v285 + 264, *(v285 + 135), *(v285 + 138));
                  v312 = v112;
                  if (v285[3425])
                  {
                    v111 = AABC::IlluminanceToLuminance(v285, v285 + 804, *(v285 + 135), *(v285 + 138));
                    v309 = v111;
                    v312 = fminf(v312, v111);
                    if (v50 | ((v285[3426] & 1) == 0))
                    {
                      v312 = fminf(*(v285 + 857), v309);
                    }
                  }
                }

                v312 = fmaxf(v312, *(v285 + 180));
                v312 = fminf(v312, *(v285 + 182));
                if (*(v285 + 128))
                {
                  v311 = fmaxf(v311, *(v285 + 180));
                  v311 = fminf(v311, *(v285 + 182));
                  DisplaySetABBrightnessForPowerReport(*(v285 + 50), 1, v311);
                }

                else
                {
                  DisplaySetABBrightnessForPowerReport(*(v285 + 50), 0, v312);
                }

                v357 = AABC::IlluminanceToReflectivity(v285, *(v285 + 138));
                if (_logHandle)
                {
                  v110 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v109 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v108 = init_default_corebrightness_log();
                    v109 = v108;
                  }

                  v110 = v109;
                }

                v308 = v110;
                v307 = 2;
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                {
                  v105 = v308;
                  v106 = v307;
                  v51 = *v393;
                  v52 = *(v393 + 1);
                  *&v53 = *(v393 + 41);
                  *&v54 = *(v285 + 135);
                  v107 = v402;
                  __os_log_helper_16_0_7_4_0_4_0_8_0_8_0_8_0_8_0_8_0(v402, v51, v52, COERCE__INT64(v391), v53, v54, COERCE__INT64(v312), COERCE__INT64(v357));
                  _os_log_debug_impl(&dword_1DE8E5000, v105, v106, "[%02x/%02x] Esensor_device: %0.2f als->_Esensor_filtered: %0.2f _Esensor_trusted: %0.2f  L: %0.4f L_reflected: %0.4f", v107, 0x40u);
                }

                v104 = [*(v285 + 467) E];
                [v104 pushNumberWeighted:v391 withWeight:*(v285 + 158)];
                [*(v285 + 464) recordTime];
                v306 = 2;
                v103 = AABC::ALS::isTouchObstructed(*(v285 + 56));
                if (v103)
                {
                  v306 = *(v285 + 59) == 0;
                }

                v102 = *(v285 + 861);
                if (v102)
                {
                  if (v102 == 1)
                  {
                    v306 = 1;
                    if (*(v285 + 58))
                    {
                      v101 = IOHIDServiceClientCopyProperty(*(v285 + 58), @"GraphicsOrientation");
                      v305 = v101;
                      if (v101)
                      {
                        v304 = 0;
                        v100 = CFGetTypeID(v305);
                        TypeID = CFNumberGetTypeID();
                        if (v100 == TypeID)
                        {
                          CFNumberGetValue(v305, kCFNumberIntType, &v304);
                        }

                        CFRelease(v305);
                        if (v304 != *(v285 + 139) && v304 == 1)
                        {
                          *(v285 + 946) = 0;
                        }

                        *(v285 + 139) = v304;
                        if (v304 == 1 && *(v285 + 946) < *(v285 + 947))
                        {
                          v55 = v285;
                          ++*(v285 + 946);
                          if (*(v55 + 946) == *(v55 + 947))
                          {
                            v56 = v285;
                            *(v285 + 943) = 0;
                            *(v56 + 944) = 0;
                            *(v56 + 151) = 0;
                            if (_logHandle)
                            {
                              v98 = _logHandle;
                            }

                            else
                            {
                              if (_COREBRIGHTNESS_LOG_DEFAULT)
                              {
                                v97 = _COREBRIGHTNESS_LOG_DEFAULT;
                              }

                              else
                              {
                                v96 = init_default_corebrightness_log();
                                v97 = v96;
                              }

                              v98 = v97;
                            }

                            v303 = v98;
                            v302 = 2;
                            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                            {
                              v93 = v303;
                              v94 = v302;
                              v57 = *(v285 + 947);
                              v95 = v401;
                              __os_log_helper_16_0_1_4_0(v401, v57);
                              _os_log_debug_impl(&dword_1DE8E5000, v93, v94, "Stayed in portrait mode for %d samples, resetting dimming", v95, 8u);
                            }
                          }
                        }
                      }
                    }
                  }

                  else if (v102 == 2)
                  {
                    if (*(v285 + 176) == 3 || *(v285 + 176) == 4)
                    {
                      v306 = 1;
                    }
                  }

                  else if (v102 != 3)
                  {
                    if (v102 == 4)
                    {
                      if (*(v285 + 950) >= 1)
                      {
                        v306 = 0;
                      }
                    }

                    else if (v102 == 5)
                    {
                      if (*(v285 + 950) >= 1)
                      {
                        v306 = 1;
                      }
                    }

                    else if ((v102 - 6) < 2)
                    {
                      v301 = 1;
                      if (*(v285 + 58))
                      {
                        v92 = IOHIDServiceClientCopyProperty(*(v285 + 58), @"GraphicsOrientation");
                        v300 = v92;
                        if (v92)
                        {
                          v299 = 0;
                          v91 = CFGetTypeID(v300);
                          v90 = CFNumberGetTypeID();
                          if (v91 == v90)
                          {
                            CFNumberGetValue(v300, kCFNumberIntType, &v299);
                          }

                          CFRelease(v300);
                          if (*(v285 + 861) == 7 && v299 == 1)
                          {
                            *(v285 + 152) = 0;
                            v301 = 0;
                          }

                          else if (v299 != *(v285 + 139))
                          {
                            if (_logHandle)
                            {
                              v89 = _logHandle;
                            }

                            else
                            {
                              if (_COREBRIGHTNESS_LOG_DEFAULT)
                              {
                                v88 = _COREBRIGHTNESS_LOG_DEFAULT;
                              }

                              else
                              {
                                v87 = init_default_corebrightness_log();
                                v88 = v87;
                              }

                              v89 = v88;
                            }

                            v298 = v89;
                            v297 = 1;
                            if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                            {
                              v84 = v298;
                              v85 = v297;
                              v86 = v296;
                              __os_log_helper_16_0_0(v296);
                              _os_log_impl(&dword_1DE8E5000, v84, v85, "Orientation changed. Allowing dimming", v86, 2u);
                            }

                            v58 = v285;
                            *(v285 + 943) = 0;
                            v58[944] = 0;
                            v58[151] = 0;
                            v306 = 1;
                            v58[152] = 0;
                            v58[140] = 0;
                            v301 = 0;
                          }

                          *(v285 + 139) = v299;
                        }
                      }

                      if (v301)
                      {
                        v295 = 0;
                        IsProxEmulationTriggered = AABC::IsProxEmulationTriggered(v285, &v295);
                        if (IsProxEmulationTriggered && *(v285 + 154) < *(v285 + 155))
                        {
                          if (_logHandle)
                          {
                            v82 = _logHandle;
                          }

                          else
                          {
                            if (_COREBRIGHTNESS_LOG_DEFAULT)
                            {
                              v81 = _COREBRIGHTNESS_LOG_DEFAULT;
                            }

                            else
                            {
                              v80 = init_default_corebrightness_log();
                              v81 = v80;
                            }

                            v82 = v81;
                          }

                          v294 = v82;
                          v293 = 1;
                          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                          {
                            v77 = v294;
                            v78 = v293;
                            v79 = v292;
                            __os_log_helper_16_0_0(v292);
                            _os_log_impl(&dword_1DE8E5000, v77, v78, "Cancel ramp, ALS covered mitigation", v79, 2u);
                          }

                          AABC::CancelRamp(v285);
                        }

                        if (v295)
                        {
                          v306 = 1;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v306 = 0;
                }

                v291 = 0;
                if (_logHandle)
                {
                  v76 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v75 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v74 = init_default_corebrightness_log();
                    v75 = v74;
                  }

                  v76 = v75;
                }

                v290 = v76;
                v289 = 2;
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                {
                  v71 = v290;
                  v72 = v289;
                  v59 = (&kDimRestrictionStr)[v306];
                  v73 = v400;
                  __os_log_helper_16_2_2_4_0_8_32(v400, 16, v59);
                  _os_log_debug_impl(&dword_1DE8E5000, v71, v72, "[%x]: dimRestriction=%s", v73, 0x12u);
                }

                DisplaySetCurrentAmbient(*(v285 + 50), *(v285 + 135));
                if (*(v285 + 122) > 0.0)
                {
                  if (*(v285 + 150) == 1)
                  {
                    if (_logHandle)
                    {
                      v70 = _logHandle;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v69 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v68 = init_default_corebrightness_log();
                        v69 = v68;
                      }

                      v70 = v69;
                    }

                    v288 = v70;
                    v287 = 2;
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                    {
                      v65 = v288;
                      v66 = v287;
                      v67 = v399;
                      __os_log_helper_16_0_1_8_0(v399, COERCE__INT64(v312));
                      _os_log_debug_impl(&dword_1DE8E5000, v65, v66, "Display on L=%0.4f", v67, 0xCu);
                    }

                    updated = AABC::UpdateDisplayBrightness_Block6(v285, 0, 2, 0, v312);
                    v291 = updated & 1;
                  }

                  else
                  {
                    v63 = AABC::UpdateDisplayBrightness_Block6(v285, 1, v306, 0, v312);
                    v291 = v63 & 1;
                  }

                  if (v291)
                  {
                    IOHIDEventSetIntegerValue();
                  }
                }
              }
            }

            if (*(v285 + 122) > 0.0 && *(v285 + 85) != v357 && std::__math::fabs[abi:de200100](1.0 - (v357 / *(v285 + 85))) > 0.1)
            {
              v286 = 0.0;
              if (v357 <= *(v285 + 85))
              {
                v286 = 45.0;
              }

              else
              {
                v286 = 3.0;
              }

              DisplaySetReflectedBrightnessWithFade(*(v285 + 50), 0, 0, v357, v286);
              *(v285 + 85) = v357;
            }

            if (*(v285 + 150) == 1 && *(v285 + 167) == 1)
            {
              if (*(v285 + 90) == 3)
              {
                v60 = v285;
                *(v285 + 158) = *(v393 + 14);
                *(v60 + 167) = 3;
              }

              else if (*(v285 + 90) == 2)
              {
                v61 = v285;
                *(v285 + 158) = *(v393 + 13);
                *(v61 + 167) = 2;
              }

              if (*(v285 + 160) && *(v285 + 158) < 0.05)
              {
                *(v285 + 158) = 1045220557;
              }

              AABC::UpdateALSState(v285, 17);
            }
          }

          if (v390)
          {
            CFRelease(v390);
          }
        }
      }
    }
  }

  else
  {
    if (_logHandle)
    {
      v277 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v276 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v276 = init_default_corebrightness_log();
      }

      v277 = v276;
    }

    v388 = v277;
    v387 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v419, 4);
      _os_log_debug_impl(&dword_1DE8E5000, v388, v387, "[%x]: throwing away stale sample", v419, 8u);
    }
  }
}