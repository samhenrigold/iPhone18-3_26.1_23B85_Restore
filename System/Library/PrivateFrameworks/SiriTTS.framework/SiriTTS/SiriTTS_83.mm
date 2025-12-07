double BET3FLT__DeInitModelSet(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 456) >= 1)
  {
    v4 = 0;
    v5 = (a2 + 336);
    v6 = (a2 + 176);
    v7 = (a2 + 336);
    do
    {
      if (*v7++)
      {
        v9 = *(a2 + 168);
        if (v9)
        {
          if (*v9)
          {
            *v9 += 8;
            heap_Free(*(a1 + 8), **(a2 + 168));
            v9 = *(a2 + 168);
          }

          heap_Free(*(a1 + 8), v9);
          *(a2 + 168) = 0;
        }
      }

      if (v5[10])
      {
        v10 = *v6;
        if (*v6)
        {
          if (*v10)
          {
            *v10 += 16;
            heap_Free(*(a1 + 8), **v6);
            v10 = *v6;
          }

          heap_Free(*(a1 + 8), v10);
        }
      }

      if (v5[20])
      {
        v11 = v6[10];
        if (v11)
        {
          if (*v11)
          {
            *v11 += 16;
            heap_Free(*(a1 + 8), *v6[10]);
            v11 = v6[10];
          }

          heap_Free(*(a1 + 8), v11);
        }
      }

      ++v4;
      ++v6;
      v5 = v7;
    }

    while (v4 < *(a2 + 456));
  }

  result = 0.0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
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
  return result;
}

uint64_t BET3FLT__InitUttModel(uint64_t a1, uint64_t *a2, int *a3, unsigned int a4)
{
  v8 = 2229280778;
  bzero(a2, 0x240uLL);
  *a2 = a1;
  a2[1] = a3;
  *(a2 + 138) = a4;
  *(a2 + 141) = *a3 * a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 528);
  a2[68] = v9;
  if (v9)
  {
    v10 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
    a2[4] = v10;
    if (v10)
    {
      v11 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 1);
      a2[41] = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
        a2[42] = v12;
        if (v12)
        {
          v13 = a3[114];
          if (v13 >= 1)
          {
            v14 = 0;
            v15 = a2 + 21;
            v16 = a3;
            do
            {
              if (!v16[84])
              {
                v17 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
                *(v15 - 10) = v17;
                if (!v17)
                {
                  return v8;
                }

                v18 = *(a1 + 8);
                v19 = *(a2 + 138);
                v20 = v16[104] ? BET3FLT__ddcalloc(v18, 2 * v19 * *a3, v16[1] + 1) : heap_Calloc(v18, (2 * v19 * *a3), 8);
                *v15 = v20;
                if (!v20)
                {
                  return v8;
                }

                v15[10] = &v20[*a3 * *(a2 + 138)];
                v13 = a3[114];
              }

              ++v14;
              ++v15;
              ++v16;
            }

            while (v14 < v13);
          }

          v21 = *(a2 + 138);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *a3;
            v24 = 152;
            do
            {
              v25 = a2[68];
              v26 = v25 + 528 * v22;
              *v26 = v22;
              v27 = v22 * v23;
              v28 = a2[41] + v22 * v23;
              v29 = a2[42] + 4 * v22 * v23;
              *(v26 + 16) = a2[4] + 4 * v22 * v23 - 8;
              *(v26 + 312) = v28 - 2;
              *(v26 + 320) = v29 - 8;
              if (v13 >= 1)
              {
                v30 = (v25 + v24);
                v31 = a2 + 21;
                v32 = a3 + 84;
                v33 = v13;
                do
                {
                  if (!*v32++)
                  {
                    v35 = *(v31 - 10) + 4 * v27;
                    *(v30 - 10) = v35;
                    v36 = *v31 + 8 * v27;
                    *v30 = v36;
                    v37 = v31[10] + 8 * v27;
                    *(v30 - 10) = v35 - 8;
                    *v30 = v36 - 16;
                    v30[10] = v37 - 16;
                  }

                  ++v30;
                  ++v31;
                  --v33;
                }

                while (v33);
              }

              ++v22;
              v24 += 528;
            }

            while (v22 != v21);
          }

          return 0;
        }
      }
    }
  }

  return v8;
}

void *BET3FLT__DeInitUttModel(void *result)
{
  v1 = result;
  if (*result && result[68])
  {
    v2 = result[1];
    v3 = result[4];
    if (v3)
    {
      heap_Free(*(*result + 8), v3);
      v1[4] = 0;
    }

    v4 = v1[41];
    if (v4)
    {
      heap_Free(*(*v1 + 8), v4);
      v1[41] = 0;
    }

    v5 = v1[42];
    if (v5)
    {
      heap_Free(*(*v1 + 8), v5);
      v1[42] = 0;
    }

    if (*(v2 + 456) >= 1)
    {
      v6 = 0;
      do
      {
        if (!*(v2 + 336 + 4 * v6))
        {
          v7 = &v1[v6];
          v8 = v7[11];
          if (v8)
          {
            heap_Free(*(*v1 + 8), v8);
            v7[11] = 0;
          }

          v9 = v7[21];
          if (v9)
          {
            heap_Free(*(*v1 + 8), v9);
            v7[21] = 0;
          }
        }

        ++v6;
      }

      while (v6 < *(v2 + 456));
    }

    result = heap_Free(*(*v1 + 8), v1[68]);
  }

  v1[68] = 0;
  *(v1 + 138) = 0;
  *v1 = 0;
  return result;
}

void *BET3FLT__DeInitMSDUttModel(void *result, int a2)
{
  v2 = result[1];
  if (!*(v2 + 4 * a2 + 336))
  {
    v3 = result;
    v4 = a2;
    v5 = result + 11;
    v6 = result[a2 + 11];
    if (v6)
    {
      result = heap_Free(*(*result + 8), v6);
      v5[v4] = 0;
    }

    v7 = v3 + 21;
    v8 = v3[v4 + 21];
    if (v8)
    {
      if (*(v2 + 4 * v4 + 416))
      {
        *v8 += 4;
        result = BET3FLT__dd_free(*(*v3 + 8), v7[v4]);
      }

      else
      {
        result = heap_Free(*(*v3 + 8), v8);
      }

      v7[v4] = 0;
    }
  }

  return result;
}

uint64_t BET3FLT__InitModelSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
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
  v3 = *(a3 + 132);
  *(a2 + 456) = v3;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = (a2 + 376);
    do
    {
      v6 = a3 + 4 * v4;
      *(v5 - 62) = *(v6 + 344);
      v7 = (a2 + 336);
      if (v4)
      {
        if (*(v6 + 2144))
        {
          v7 = (a2 + 416 + 4 * v4);
        }

        else
        {
          v7 = v5;
        }
      }

      *v7 = 1;
      ++v4;
      ++v5;
    }

    while (v4 < *(a2 + 456));
  }

  return 0;
}

uint64_t BET3FLT__meancpy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 20);
    do
    {
      if (v3 >= 1)
      {
        v4 = *(result + 72);
        v5 = *(result + 40);
        v6 = v3;
        do
        {
          v7 = *v4++;
          v8 = *(v7 + 4 * v2);
          v9 = *v5++;
          *(v9 + 4 * v2) = v8;
          --v6;
        }

        while (v6);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

float BET3FLT__ConstW_Calc_R_and_r(uint64_t a1, int a2)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = a2;
  v9 = *v5;
  v10 = v5[1];
  v11 = *(*v5 + 4 * a2);
  v12 = *v4;
  v13 = v4[1];
  v14 = v11 * *(*v4 + 4 * a2);
  *v2 = v14;
  v15 = *(v10 + 4 * (v6 + a2));
  v16 = v6 + a2;
  v17 = v14 + ((v15 * -0.5) * *(v13 + 4 * v16));
  *v2 = v17;
  v18 = a2 + 2 * v6;
  v19 = *(v9 + 4 * v18);
  v20 = v17 + ((v19 * -2.0) * *(v12 + 4 * v18));
  *v2 = v20;
  v21 = *(v10 + 4 * v18);
  *v2 = v20 + (v21 * *(v13 + 4 * v18));
  v22 = *v3;
  *v22 = v11 + (((v19 * 4.0) + (v15 * 0.25)) + v21);
  v22[1] = (v19 * -2.0) + (v21 * -2.0);
  v22[2] = v21 + (v15 * -0.25);
  if (v7 < 3)
  {
    LODWORD(v23) = 1;
  }

  else
  {
    v23 = (v7 - 1);
    v24 = v3 + 1;
    v25 = v2 + 1;
    v26 = v5 + 2;
    v27 = v4 + 2;
    v28 = v23 - 1;
    do
    {
      v29 = *(v10 + 4 * v8);
      v30 = v29 * *(v13 + 4 * v8);
      *v25 = v30;
      v31 = *(v26 - 2);
      v32 = *(v31 + 4 * v16);
      v33 = *(v27 - 2);
      v34 = v30 + ((v32 * 0.5) * *(v33 + 4 * v16));
      *v25 = v34;
      v36 = *v26++;
      v35 = v36;
      v37 = *(v36 + 4 * v16);
      v39 = *v27++;
      v38 = v39;
      v40 = v34 + ((v37 * -0.5) * *(v39 + 4 * v16));
      *v25 = v40;
      v41 = *(v31 + 4 * v18);
      v42 = v40 + (v41 * *(v33 + 4 * v18));
      *v25 = v42;
      v43 = *(v10 + 4 * v18);
      v44 = v42 + ((v43 * -2.0) * *(v13 + 4 * v18));
      *v25 = v44;
      v45 = *(v35 + 4 * v18);
      *v25++ = v44 + (v45 * *(v39 + 4 * v18));
      v46 = *v24++;
      *v46 = ((((v29 + (v32 * 0.25)) + (v37 * 0.25)) + v41) + v45) + (v43 * 4.0);
      v46[1] = (v45 * -2.0) + (v43 * -2.0);
      v46[2] = v45 + (v37 * -0.25);
      v13 = v38;
      v10 = v35;
      --v28;
    }

    while (v28);
  }

  v47 = v5[v23];
  v48 = *(v47 + 4 * v8);
  v49 = v4[v23];
  v50 = v48 * *(v49 + 4 * v8);
  v2[v23] = v50;
  v51 = 8 * v23 - 8;
  v52 = *(v5 + v51);
  v53 = *(v52 + 4 * v16);
  v54 = *(v4 + v51);
  v55 = v50 + ((v53 * 0.5) * *(v54 + 4 * v16));
  v2[v23] = v55;
  v56 = *(v52 + 4 * v18);
  v57 = v55 + (v56 * *(v54 + 4 * v18));
  v2[v23] = v57;
  v58 = *(v47 + 4 * v18);
  v2[v23] = v57 + ((v58 * -2.0) * *(v49 + 4 * v18));
  v59 = v3[v23];
  result = v48 + ((v56 + (v53 * 0.25)) + (v58 * 4.0));
  *v59 = result;
  v59[1] = 0.0;
  v59[2] = 0.0;
  return result;
}

float BET3FLT__ConstW_Cholesky(uint64_t a1, double a2)
{
  v2 = *(a1 + 96);
  v3 = *v2;
  v4 = *(v2 + 8);
  LODWORD(a2) = **v2;
  v5 = vdiv_f32(*(*v2 + 4), vdup_lane_s32(*&a2, 0));
  *(v3 + 1) = v5;
  v6 = v4[1];
  v7 = *v4 + ((-v5.f32[0] * v5.f32[0]) * *&a2);
  *v4 = v7;
  v5.f32[0] = (v6 + (-(*(v3 + 1) * *(v3 + 2)) * *v3)) / v7;
  *&a2 = v4[2] / v7;
  v4[1] = v5.f32[0];
  v4[2] = *&a2;
  v8 = *(a1 + 20);
  if (v8 >= 3)
  {
    v9 = (v2 + 16);
    v10 = v8 - 2;
    do
    {
      v12 = *(v9 - 2);
      v11 = *(v9 - 1);
      v13 = *v9++;
      v14 = v13[1];
      v15 = *v13 + (-(v11[1] * v11[1]) * *v11);
      *v13 = v15;
      v16 = v15 + (-(v12[2] * v12[2]) * *v12);
      *v13 = v16;
      v17 = (v14 + (-(v11[1] * v11[2]) * *v11)) / v16;
      *&a2 = v13[2] / v16;
      v13[1] = v17;
      v13[2] = *&a2;
      --v10;
    }

    while (v10);
  }

  return *&a2;
}

float BET3FLT__ConstW_Cholesky_forward(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  v3 = *(a1 + 88);
  v4 = *v2;
  *v3 = *v2;
  v5 = *v1;
  result = v2[1] - (*(*v1 + 4) * v4);
  v3[1] = result;
  v7 = *(a1 + 20);
  if (v7 >= 3)
  {
    v8 = v3 + 2;
    v9 = v1 + 1;
    v10 = v2 + 2;
    v11 = v7 - 2;
    do
    {
      v12 = *v10++;
      v13 = v12;
      v14 = *(v5 + 8);
      v15 = *v9++;
      v5 = v15;
      result = v13 - ((v14 * *(v8 - 2)) + (*(v15 + 4) * result));
      *v8++ = result;
      --v11;
    }

    while (v11);
  }

  return result;
}

float BET3FLT__ConstW_Cholesky_backward(uint64_t a1, int a2)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 40);
  v6 = *(v3 + 4 * (v2 - 1)) / **(v4 + 8 * (v2 - 1));
  *(*(v5 + 8 * (v2 - 1)) + 4 * a2) = v6;
  v7 = *(v4 + 8 * (v2 - 2));
  result = (*(v3 + 4 * (v2 - 2)) / *v7) - (v7[1] * v6);
  *(*(v5 + 8 * (v2 - 2)) + 4 * a2) = result;
  v9 = __OFSUB__(v2, 3);
  v10 = (v2 - 3);
  if (v10 < 0 == v9)
  {
    v11 = (v5 + 8 * v10 + 16);
    v12 = v11;
    do
    {
      v13 = *--v12;
      result = ((*(v3 + 4 * v10) / **(v4 + 8 * v10)) - (*(*(v4 + 8 * v10) + 4) * *(v13 + 4 * a2))) - (*(*(v4 + 8 * v10) + 8) * *(*v11 + 4 * a2));
      *(*(v11 - 2) + 4 * a2) = result;
      --v10;
      v11 = v12;
    }

    while (v10 != -1);
  }

  return result;
}

void BET3FLT__mlpg2(uint64_t a1, int a2)
{
  if (*(a1 + 20) < 2)
  {

    BET3FLT__meancpy(a1);
  }

  else
  {
    *&v4 = BET3FLT__ConstW_Calc_R_and_r(a1, a2);
    BET3FLT__ConstW_Cholesky(a1, v4);
    BET3FLT__ConstW_Cholesky_forward(a1);

    BET3FLT__ConstW_Cholesky_backward(a1, a2);
  }
}

char *BET3FLT__heap_StrDup(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = heap_Calloc(a1, (v4 + 1), 1);
  if (!v5)
  {
    return 0;
  }

  return strcpy(v5, __s);
}

uint64_t BET3FLT__xfread_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v5 = a3;
  v6 = *a4;
  v7 = a4[4];
  if (v6 + a3 * a2 > v7)
  {
    v5 = (v7 - v6) / a2;
  }

  if (v5)
  {
    v8 = v5 * a2;
    memcpy(a1, (*(a4 + 1) + v6), v8);
    *a4 += v8;
  }

  return v5;
}

uint64_t BET3FLT__xfread2ptr_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (a2 >= 2 && v4 % a2)
  {
    return 0;
  }

  v5 = a4[4];
  if (v4 + a3 * a2 > v5)
  {
    a3 = (v5 - v4) / a2;
  }

  if (a3)
  {
    *a1 = *(a4 + 1) + v4;
    *a4 = v4 + a3 * a2;
  }

  return a3;
}

uint64_t BET3FLT__log_select_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SELECT_BET3", (a2 + 2), 0, v3);
}

uint64_t BET3FLT__log_select_GetLogLevel(uint64_t a1)
{
  LogLevel = log_GetLogLevel(a1);
  if (LogLevel >= 3)
  {
    return LogLevel - 2;
  }

  else
  {
    return 0;
  }
}

float BET3FLT__bet3_finv(float a1)
{
  v1 = 0.0;
  if (fabsf(a1) < 1.0e19)
  {
    if (a1 > 1.0e-19 || a1 < 0.0)
    {
      if (a1 < -1.0e-19 || a1 >= 0.0)
      {
        return 1.0 / a1;
      }

      else
      {
        return -1.0e38;
      }
    }

    else
    {
      return 1.0e38;
    }
  }

  return v1;
}

void *BET3FLT__ddcalloc(void *a1, int a2, unsigned int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
            ++v9;
          }

          while (v7 != v9);
        }
      }

      else
      {
        heap_Free(a1, v3);
        return 0;
      }
    }
  }

  return v3;
}

void *BET3FLT__dd_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t BET3FLT__InitDWinSet(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  a2[23] = 0u;
  a2[24] = 0u;
  a2[21] = 0u;
  a2[22] = 0u;
  a2[19] = 0u;
  a2[20] = 0u;
  a2[17] = 0u;
  a2[18] = 0u;
  a2[15] = 0u;
  a2[16] = 0u;
  a2[13] = 0u;
  a2[14] = 0u;
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v3 = *(a3 + 132);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a3 + 304;
    do
    {
      v6 = *(v5 + 4 * v4);
      if (v6 >= 1)
      {
        for (i = 0; i < v6; ++i)
        {
          *(a2 + 10 * v4) = v6 + 1;
          v6 = *(v5 + 4 * v4);
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

double BET3FLT__DeInitDWinSet(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    for (i = 0; i != 400; i += 40)
    {
      v5 = a2 + i;
      BET3FLT__dd_free(*(a1 + 8), *(a2 + i + 8));
      v6 = *(a2 + i + 16);
      if (v6)
      {
        if (!*v6 || (heap_Free(*(a1 + 8), *v6), **(v5 + 2) = 0, (v6 = *(v5 + 2)) != 0))
        {
          heap_Free(*(a1 + 8), v6);
          *(v5 + 2) = 0;
        }
      }
    }

    result = 0.0;
    a2[23] = 0u;
    a2[24] = 0u;
    a2[21] = 0u;
    a2[22] = 0u;
    a2[19] = 0u;
    a2[20] = 0u;
    a2[17] = 0u;
    a2[18] = 0u;
    a2[15] = 0u;
    a2[16] = 0u;
    a2[13] = 0u;
    a2[14] = 0u;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t BET3FLT__LoadDWinFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = (a2 + 40 * a3);
  if (!*v4)
  {
    return 0;
  }

  v7 = 2229280778;
  v8 = BET3FLT__ddcalloc(*(a1 + 8), *v4, 2u);
  *(v4 + 1) = v8;
  if (v8)
  {
    v9 = heap_Calloc(*(a1 + 8), *v4, 8);
    *(v4 + 2) = v9;
    if (v9)
    {
      ***(v4 + 1) = 0;
      **(v4 + 2) = heap_Calloc(*(a1 + 8), 1, 4);
      v10 = **(v4 + 2);
      if (v10)
      {
        *v10 = 1065353216;
        LODWORD(v11) = *v4;
        if (*v4 <= 1)
        {
LABEL_9:
          *(v4 + 3) = 0;
          if (v11 < 1)
          {
            v17 = 0;
          }

          else
          {
            v16 = 0;
            v17 = 0;
            v18 = *(v4 + 1);
            v11 = v11;
            do
            {
              v19 = *v18;
              v20 = **v18;
              if (v17 > v20)
              {
                v4[6] = v20;
                v17 = v20;
              }

              v21 = v19[1];
              if (v16 < v21)
              {
                v4[7] = v21;
                v16 = v21;
              }

              ++v18;
              --v11;
            }

            while (v11);
            if (v17 < v16)
            {
              v7 = 0;
              v4[8] = v16;
              return v7;
            }
          }

          v7 = 0;
          v4[8] = v17;
          return v7;
        }

        v12 = 1;
        v13 = 8;
        while (1)
        {
          v14 = BET3FLT__xfread2ptr_BET3((*(v4 + 2) + v13), 4u, 0xFFFFFFFFLL, a4);
          if (!v14)
          {
            break;
          }

          *(*(v4 + 2) + v13) += 4 * (v14 >> 1);
          v15 = *(*(v4 + 1) + v13);
          *v15 = -(v14 >> 1);
          v15[1] = (v14 & 1) + (v14 >> 1) - 1;
          ++v12;
          v11 = *v4;
          v13 += 8;
          a4 += 6;
          if (v12 >= v11)
          {
            goto LABEL_9;
          }
        }

        BET3FLT__log_select_Error(a1, 55019, "InitDWin: illegal data\n");
        return 2229280772;
      }
    }
  }

  return v7;
}

double BET3FLT__InitSMatrices(uint64_t a1, _OWORD *a2)
{
  result = 0.0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  *a2 = a1;
  return result;
}

double BET3FLT__FreeSMatrices(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        if (!*(a1 + 8))
        {
          BET3FLT__dd_free(*(*a1 + 8), v2);
          BET3FLT__dd_free(*(*a1 + 8), *(a1 + 48));
          v3 = *(a1 + 40);
          if (v3)
          {
            heap_Free(*(*a1 + 8), v3);
          }
        }

        *(a1 + 60) = 0;
        result = 0.0;
        *(a1 + 44) = 0u;
        *(a1 + 28) = 0u;
        *(a1 + 12) = 0u;
      }
    }
  }

  return result;
}

uint64_t BET3FLT__InitPStreamSM(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  if (a2 && *(a2 + 3) && *(a1 + 3) == *(a2 + 3) && *(a1 + 5) == *(a2 + 4) && *(a1 + 6) == *(a2 + 5))
  {
    result = 0;
    v6 = a2[3];
    v8 = *a2;
    v7 = a2[1];
    *(a1 + 5) = a2[2];
    *(a1 + 6) = v6;
    *(a1 + 3) = v8;
    *(a1 + 4) = v7;
LABEL_12:
    *(a1 + 14) = 1;
    return result;
  }

  a1[6] = v4;
  v9 = a1 + 6;
  v10 = *(a1 + 3);
  *(a1 + 14) = 0;
  *(a1 + 15) = v10;
  v11 = *(a1 + 20);
  a1[8] = v11;
  v12 = BET3FLT__ddcalloc(*(v4 + 8), 2 * v11, v10);
  a1[9] = v12;
  if (v12 && (v13 = *(a1 + 6), v14 = *(a1 + 5), a1[10] = &v12[v14], v15 = BET3FLT__ddcalloc(*(v4 + 8), v14, v13), (a1[12] = v15) != 0) && (v16 = heap_Calloc(*(v4 + 8), (2 * *(a1 + 5)), 4), (a1[11] = v16) != 0))
  {
    a1[13] = v16 + 4 * *(a1 + 5);
    if (a2)
    {
      BET3FLT__FreeSMatrices(a2);
      result = 0;
      v17 = *v9;
      v18 = *(a1 + 4);
      v19 = *(a1 + 6);
      a2[2] = *(a1 + 5);
      a2[3] = v19;
      *a2 = v17;
      a2[1] = v18;
      goto LABEL_12;
    }

    return 0;
  }

  else
  {
    BET3FLT__FreeSMatrices((a1 + 6));
    return 2229280778;
  }
}

uint64_t BET3FLT__InitPStreamParam(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  a1[6] = (2 * *(*(a1 + 4) + 32)) | 1;
  if (a2)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      if (a1[5] == *(a2 + 20) && a1[4] == *(a2 + 16))
      {
        *(a1 + 5) = v5;
        v6 = a1 + 2;
LABEL_12:
        result = 0;
        *v6 = 1;
        return result;
      }
    }
  }

  a1[2] = 0;
  v6 = a1 + 2;
  v7 = BET3FLT__ddcalloc(*(v4 + 8), a1[5], a1[4]);
  *(a1 + 5) = v7;
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = 2229280778;
  }

  if (a2 && v7)
  {
    BET3FLT__FreePStreamParam(a2);
    memcpy(a2, a1, 0x2D8uLL);
    goto LABEL_12;
  }

  return result;
}

void *BET3FLT__FreePStreamParam(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      if (!*(result + 2))
      {
        result = BET3FLT__dd_free(*(*result + 8), v2);
      }

      v1[5] = 0;
      *(v1 + 2) = 0;
    }
  }

  return result;
}

uint64_t select_float_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISelect_Bet3;
  return result;
}

uint64_t select_bet3_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2229280775;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 25957;
  }

  return result;
}

uint64_t select_bet3_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v5 = 2229280775;
  memset(v34, 0, sizeof(v34));
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else if ((safeh_HandleCheck(a1, a2, 25957, 408) & 0x80000000) != 0)
    {
      return 2229280776;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(v32 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjOpen");
      v12 = heap_Calloc(*(v32 + 8), 1, 6584);
      if (v12)
      {
        v13 = v12;
        *v12 = a3;
        v12[1] = a4;
        v14 = v32;
        v12[2] = v32;
        v12[3] = a1;
        Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v31);
        if ((Object & 0x80000000) != 0 || (v13[4] = *(v31 + 8), Object = objc_GetObject(*(v32 + 48), "LINGDB", &v31), (Object & 0x80000000) != 0))
        {
          v5 = Object;
          log_OutPublic(*(v13[2] + 32), "SELECT_BET3", 55001, 0);
        }

        else
        {
          v16 = *(v31 + 8);
          v13[5] = v16;
          ObjOpen = BET3FLT__select_bet3_FeatureExtractObjOpen(a3, a4, v13[4], v16, v13 + 7);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          ObjOpen = select_bet3_loc_CreateDataBrkString(v32, v34);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v18 = v13[3];
          if (!v18 || (v19 = *(v18 + 48)) == 0)
          {
            v19 = *(v13[2] + 48);
          }

          ObjOpen = objc_GetAddRefCountedObject(v19, v34, select_bet3_loc_ObjcVoiceOpen, select_bet3_loc_ObjcVoiceClose, v32, &v31);
          if ((ObjOpen & 0x80000000) != 0 || (v20 = v32, v21 = *(v31 + 32), v13[6] = v21, ObjOpen = select_bet3_loc_SetSynthParams(v20, v21), (ObjOpen & 0x80000000) != 0))
          {
LABEL_27:
            v5 = ObjOpen;
          }

          else
          {
            v22 = *(v32 + 40);
            v29 = v13;
            v28 = xmmword_1F42D71E0;
            v30 = xmmword_1F42D71E0;
            v23 = paramc_ListenerAdd(v22, "frequencyhz", &v29);
            if ((v23 & 0x80000000) == 0)
            {
              v24 = 0;
              while (1)
              {
                v25 = off_1E81AD800[v24];
                if ((paramc_ParamGetInt(*(v32 + 40), v25, &v33) & 0x80000000) != 0)
                {
                  v33 = dword_1C382F2F8[v24];
                  v23 = paramc_ParamSetInt(*(v32 + 40), v25, v33);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v23 = select_bet3_loc_ParamSet(v13, v25, v33);
                if ((v23 & 0x80000000) != 0)
                {
                  break;
                }

                v26 = *(v32 + 40);
                v29 = v13;
                v30 = v28;
                v5 = paramc_ListenerAdd(v26, v25, &v29);
                if ((v5 & 0x80000000) != 0)
                {
                  goto LABEL_32;
                }

                if (++v24 == 3)
                {
                  *a5 = v13;
                  *(a5 + 8) = 25958;
                  goto LABEL_29;
                }
              }
            }

            v5 = v23;
LABEL_32:
            log_OutPublic(*(v13[2] + 32), "SELECT_BET3", 55002, "%s%s");
          }
        }

        *a5 = v13;
        *(a5 + 8) = 25958;
        select_bet3_ObjClose(v13, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
      }

      else
      {
        log_OutPublic(*(v32 + 32), "SELECT_BET3", 55000, 0);
        v5 = 2229280778;
      }

LABEL_29:
      log_OutText(*(v32 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjOpen: %x", v5);
    }
  }

  return v5;
}

uint64_t select_bet3_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 25958, 6584);
  if (v3 < 0)
  {
    return 2229280776;
  }

  LODWORD(v4) = v3;
  v5 = a1[2];
  log_OutText(*(v5 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjClose");
  v6 = 0;
  v24 = xmmword_1F42D71E0;
  do
  {
    v7 = off_1E81AD820[v6];
    v8 = *(v5 + 40);
    v25 = a1;
    v26 = v24;
    v9 = paramc_ListenerRemove(v8, v7, &v25);
    if (v4 > -1 && v9 < 0)
    {
      v4 = v9;
    }

    else
    {
      v4 = v4;
    }

    ++v6;
  }

  while (v6 != 4);
  v11 = a1[6];
  if (v11)
  {
    v12 = a1[3];
    if (!v12 || (v13 = *(v12 + 48)) == 0)
    {
      v13 = *(a1[2] + 48);
    }

    v14 = objc_ReleaseObject(v13, v11);
    a1[6] = 0;
    if (v4 > -1 && v14 < 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = v4;
    }
  }

  v16 = a1[7];
  if (v16)
  {
    ObjClose = BET3FLT__select_bet3_FeatureExtractObjClose(v16);
    if (v4 > -1 && ObjClose < 0)
    {
      v4 = ObjClose;
    }

    else
    {
      v4 = v4;
    }
  }

  if (a1[5])
  {
    v19 = objc_ReleaseObject(*(v5 + 48), "LINGDB");
    if (v4 > -1 && v19 < 0)
    {
      v4 = v19;
    }

    else
    {
      v4 = v4;
    }
  }

  if (a1[4])
  {
    v21 = objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    if (v4 > -1 && v21 < 0)
    {
      v4 = v21;
    }

    else
    {
      v4 = v4;
    }
  }

  heap_Free(*(v5 + 8), a1);
  log_OutText(*(v5 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjClose: %x", v4);
  return v4;
}

uint64_t select_bet3_ObjReopen(void *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  memset(v14, 0, sizeof(v14));
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v3 = a1[2];
  log_OutText(*(v3 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjReopen");
  DataBrkString = select_bet3_loc_CreateDataBrkString(v3, v14);
  if ((DataBrkString & 0x80000000) == 0)
  {
    v5 = a1[3];
    if (!v5 || (v6 = *(v5 + 48)) == 0)
    {
      v6 = *(a1[2] + 48);
    }

    DataBrkString = objc_GetAddRefCountedObject(v6, v14, select_bet3_loc_ObjcVoiceOpen, select_bet3_loc_ObjcVoiceClose, v3, &v13);
    if ((DataBrkString & 0x80000000) == 0)
    {
      v7 = a1[6];
      if (v7)
      {
        v8 = a1[3];
        if (!v8 || (v9 = *(v8 + 48)) == 0)
        {
          v9 = *(a1[2] + 48);
        }

        objc_ReleaseObject(v9, v7);
      }

      v10 = *(v13 + 32);
      a1[6] = v10;
      DataBrkString = select_bet3_loc_SetSynthParams(v3, v10);
    }
  }

  v11 = DataBrkString;
  log_OutText(*(v3 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjReopen: %x", DataBrkString);
  return v11;
}

uint64_t select_bet3_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  synstrmaux_InitStreamOpener(a1 + 72, *(*(a1 + 16) + 32), "SELECT_BET3");
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sptchk;version=4.0", 1, a1 + 928);
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sgt;version=4.0", 1, a1 + 944);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-bet3-speech-frames;version=5.0", a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
  v8 = synstrmaux_OpenStreams((a1 + 72), *(a1 + 32), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    select_bet3_ProcessEnd(a1, v6);
  }

  *(a1 + 6576) = 0;
  return v8;
}

uint64_t select_bet3_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v43 = 0;
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *a5 = 1;
  v9 = *(a1 + 6544);
  if (*(a1 + 4616))
  {
    if (!v9)
    {
      v10 = BET3FLT__ParamGenFrames((a1 + 4616), (*(a1 + 48) + 8112), (a1 + 6544));
      if ((v10 & 0x80000000) != 0)
      {
        v24 = v10;
      }

      else
      {
        v11 = *(a1 + 6552);
        if (!v11)
        {
          goto LABEL_66;
        }

        v12 = *(a1 + 6564);
        v13 = *(a1 + 6560);
        if (v13 <= v12)
        {
          goto LABEL_66;
        }

        v14 = v11 + 32 * v12;
        v15 = *(a1 + 5228);
        v16 = *(a1 + 5232);
        if (v16 >= v15)
        {
          v17 = 0;
          v20 = (v11 + 32 * v12);
        }

        else
        {
          v17 = 0;
          v18 = *(a1 + 6576);
          v19 = v12 + 1;
          v20 = (v11 + 32 * v12);
          do
          {
            if (*v20 == 33)
            {
              v21 = *(a1 + 6572);
              v22 = *(*(a1 + 5216) + 528 * v16 + 24);
              v20[4] = v22;
              *(a1 + 6572) = v22 + v21;
              *(a1 + 5232) = ++v16;
            }

            else
            {
              if (*v20 == 8)
              {
                v18 = v20[6] / *(*(a1 + 48) + 152);
                *(a1 + 6576) = v18;
              }

              v21 = *(a1 + 6572);
              v20[4] = 0;
            }

            if (v18 > v21)
            {
              *(a1 + 6576) = v21;
              v18 = v21;
            }

            v20[3] = v21 - v18;
            v20 += 8;
            ++v17;
            if (v16 >= v15)
            {
              break;
            }
          }

          while (v19++ < v13);
        }

        if (*(a1 + 6544))
        {
          v35 = v17 + v12;
          if (v17 + v12 < v13)
          {
            v36 = *(a1 + 6572);
            v37 = v20 + 4;
            do
            {
              *(v37 - 1) = v36;
              *v37 = 0;
              v37 += 8;
              ++v35;
            }

            while (v35 < v13);
            v17 = v13 - v12;
          }
        }

        if (!v17)
        {
LABEL_66:
          v42 = a1 + 4616;
          v24 = (*(*(a1 + 32) + 104))(*(a1 + 896), *(a1 + 904), &v42, 8);
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-bet3-speech-frames;version=5.0", "lhError", v24);
          }

          else if (*(a1 + 6544))
          {
            ProcessEnd = BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
            if (ProcessEnd >= 0)
            {
              v24 = v24;
            }

            else
            {
              v24 = ProcessEnd;
            }

            v40 = *(a1 + 6552);
            if (v40)
            {
              heap_Free(*(*(a1 + 16) + 8), v40);
              *(a1 + 6552) = 0;
              *(a1 + 6560) = 0;
              *(a1 + 6568) = 0;
            }

            v34 = 1;
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v38 = (*(*(a1 + 32) + 104))(*(a1 + 912), *(a1 + 920), v14, (32 * v17));
        if ((v38 & 0x80000000) == 0)
        {
          *(a1 + 6564) += v17;
          goto LABEL_66;
        }

        v24 = v38;
        log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-markers-pp;version=4.0", "lhError", v38);
        *(a1 + 6564) += v17;
      }

LABEL_75:
      v34 = 2;
      goto LABEL_76;
    }
  }

  else if (!v9)
  {
    goto LABEL_23;
  }

  BET3FLT__DeInitVStream((a1 + 4616));
  *(a1 + 6544) = 0;
LABEL_23:
  v24 = BET3FLT__select_bet3_FeatureExtractProcessStart(*(a1 + 56), *(a1 + 48) + 9184, a3, a4, (a1 + 960), &v43);
  if ((v24 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55005, "%s%x", "lhError", v24);
  }

  else if (*(a1 + 970) > 1)
  {
    *(a1 + 6564) = 0;
    inited = BET3FLT__InitVStream(*(a1 + 16), (a1 + 4616), (*(a1 + 48) + 128));
    if ((inited & 0x80000000) != 0 || (*(a1 + 4624) = a1 + 960, inited = BET3FLT__LoadVStream(a1 + 4616, *(a1 + 48) + 8112, *(a1 + 48) + 128), (inited & 0x80000000) != 0) || (inited = BET3FLT__select_bet3_FeatureExtractProcess(*(a1 + 56), *(a1 + 48) + 128, a3, a4, *(a1 + 928), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 64), (a1 + 960), (a1 + 6552), (a1 + 6560)), (inited & 0x80000000) != 0))
    {
      v24 = inited;
    }

    else
    {
      v24 = BET3FLT__ParamGenStart(a1 + 4616, (*(a1 + 48) + 8112), (*(a1 + 48) + 128));
      if ((v24 & 0x80000000) == 0)
      {
        v34 = 4;
LABEL_76:
        *a5 = v34;
        return v24;
      }
    }

    BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    BET3FLT__DeInitVStream((a1 + 4616));
  }

  else
  {
    v25 = v43;
    if (v43)
    {
      if (*(a1 + 912))
      {
        if (*(a1 + 4480))
        {
          LODWORD(v24) = (*(*(a1 + 32) + 104))();
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-markers-pp;version=4.0", "lhError", v24);
          }
        }
      }

      v26 = synstrmaux_CloseOutStreamsOnly((a1 + 72), *(a1 + 32));
      if (v26 < 0 && v24 > -1)
      {
        LODWORD(v24) = v26;
      }

      v25 = 1;
    }

    *a5 = v25;
    v28 = BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    if (v28 >= 0 || v24 <= -1)
    {
      v30 = v24;
    }

    else
    {
      v30 = v28;
    }

    v31 = (*(*(a1 + 40) + 64))(a3, a4);
    if (v30 > -1 && v31 < 0)
    {
      return v31;
    }

    else
    {
      return v30;
    }
  }

  return v24;
}

uint64_t select_bet3_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  BET3FLT__DeInitVStream((a1 + 4616));
  *(a1 + 6544) = 0;
  BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
  v3 = *(a1 + 6552);
  if (v3)
  {
    heap_Free(*(*(a1 + 16) + 8), v3);
    *(a1 + 6552) = 0;
    *(a1 + 6560) = 0;
    *(a1 + 6568) = 0;
  }

  *(a1 + 6572) = 0;
  v4 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 72), v4);
}

uint64_t select_bet3_loc_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  __src = 0;
  memset(__dst, 0, 408);
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  memcpy(__dst, __src, 0x198uLL);
  __dst[2] = *(a5 + 32);
  v27 = 0;
  *(a4 + 32) = 0;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "FLT3", 1031, &v27);
  if (v11 < 0)
  {
    return (v11 & 0x1FFFu) - 2065686528;
  }

  v12 = heap_Calloc(*(&__dst[0] + 1), 1, 37800);
  if (v12)
  {
    __strcpy_chk();
    __strcpy_chk();
    *&v13 = -1;
    *(&v13 + 1) = -1;
    *(v12 + 11328) = v13;
    *(v12 + 11344) = v13;
    *(v12 + 11360) = v13;
    *(v12 + 11376) = v13;
    *(v12 + 11392) = v13;
    *(v12 + 11408) = v13;
    *(v12 + 11424) = v13;
    *(v12 + 11440) = v13;
    *(v12 + 11456) = v13;
    *(v12 + 11472) = v13;
    *(v12 + 11488) = v13;
    *(v12 + 11504) = v13;
    *(v12 + 11520) = v13;
    *(v12 + 11536) = v13;
    *(v12 + 11552) = v13;
    *(v12 + 11568) = v13;
    *(v12 + 12500) = v13;
    *(v12 + 12232) = v13;
    *(v12 + 12248) = v13;
    *(v12 + 12264) = v13;
    *(v12 + 12280) = v13;
    *(v12 + 12296) = v13;
    *(v12 + 12312) = v13;
    *(v12 + 12328) = v13;
    *(v12 + 12344) = v13;
    *(v12 + 12360) = v13;
    *(v12 + 12376) = v13;
    *(v12 + 12392) = v13;
    *(v12 + 12408) = v13;
    *(v12 + 12424) = v13;
    *(v12 + 12440) = v13;
    *(v12 + 12456) = v13;
    *(v12 + 12472) = v13;
    *(v12 + 12488) = v13;
    *(v12 + 12576) = v13;
    *(v12 + 12560) = v13;
    *(v12 + 11708) = 1;
    BET3FLT__InitVParam((v12 + 128));
    *&v14 = -1;
    *(&v14 + 1) = -1;
    *(v12 + 8092) = v14;
    *(v12 + 8080) = v14;
    *(v12 + 8064) = v14;
    *(v12 + 8048) = v14;
    *(v12 + 8032) = v14;
    *(v12 + 8016) = v14;
    *(v12 + 8000) = v14;
    *(v12 + 7984) = v14;
    *(v12 + 7968) = v14;
    *(v12 + 7952) = v14;
    *(v12 + 7936) = v14;
    *(v12 + 7920) = v14;
    *(v12 + 7904) = v14;
    *(v12 + 7888) = v14;
    *(v12 + 7872) = v14;
    *(v12 + 7856) = v14;
    *(v12 + 7840) = v14;
    *(v12 + 7824) = v14;
    *(v12 + 7808) = v14;
    strcpy((v12 + 7792), "mlsa");
    memset(v29, 0, sizeof(v29));
    v15 = select_bet3_ParseRiff(__dst, v12, v27, 0, v29, 0, 0);
    if ((v15 & 0x80000000) != 0)
    {
      VData = v15;
      v28 = 0;
      if (LOBYTE(v29[0]))
      {
        v23 = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v23;
        }

        while (*(v29 + 5 * v23));
      }

      log_OutPublic(*&__dst[2], "SELECT_BET3", 55003, "%s%s%s%s%s%x", "file", a3);
    }

    else if (*(v12 + 7519) && *(v12 + 260) > 0)
    {
      v16 = *(v12 + 11648);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = 0;
          v19 = 0;
          do
          {
            *(v12 + 5432 + 8 * v18) = v17;
            v18 = ++v19;
            v17 = *(*(v12 + 11648) + 8 * v19);
          }

          while (v17);
        }
      }

      v20 = BET3FLT__InitVData(__dst, (v12 + 8112), v12 + 128);
      if ((v20 & 0x80000000) != 0)
      {
        VData = v20;
      }

      else
      {
        VData = BET3FLT__LoadVData(__dst, v12 + 8112, v12 + 128);
        if ((VData & 0x80000000) == 0)
        {
          *(v12 + 12762) = 1;
          *&v22 = 0x100000001;
          *(&v22 + 1) = 0x100000001;
          *(v12 + 12352) = v22;
          *(v12 + 12368) = v22;
          *(v12 + 12384) = 0x100000001;
          *(v12 + 12396) = 1;
          *(v12 + 12412) = v22;
          *(v12 + 12428) = v22;
          *(v12 + 12444) = v22;
          *(v12 + 12460) = v22;
          *(v12 + 12476) = v22;
          *(v12 + 12492) = 1;
          *(v12 + 12496) = 0x100000001;
          *(v12 + 11934) = 33620481;
          *(v12 + 11961) = 1;
          *(v12 + 11939) = 0x101010101010101;
          *(v12 + 11947) = 0x101010101010101;
          *(v12 + 11983) = -1;
          *(v12 + 11987) = -255;
          *(v12 + 11997) = 0x101010101010101;
          *(v12 + 12002) = 0x101010101010101;
          *(v12 + 12105) = 0x101010101010101;
          *(v12 + 12113) = 0x101010101010101;
          *(v12 + 12121) = 0x101010101010101;
          if ((*(v12 + 12288) & 0x80000000) == 0)
          {
            *(v12 + 11963) = 257;
          }

          if ((*(v12 + 12304) & 0x80000000) == 0)
          {
            *(v12 + 11965) = 1;
          }

          if ((*(v12 + 12320) & 0x80000000) == 0)
          {
            *(v12 + 11966) = 1;
          }

          if ((*(v12 + 12324) & 0x80000000) == 0)
          {
            *(v12 + 11967) = 1;
          }

          if ((*(v12 + 12328) & 0x80000000) == 0)
          {
            *(v12 + 11968) = 1;
          }

          if ((*(v12 + 12332) & 0x80000000) == 0)
          {
            *(v12 + 11969) = 1;
          }

          if ((*(v12 + 12252) & 0x80000000) == 0)
          {
            *(v12 + 11957) = 257;
          }

          if ((*(v12 + 12576) & 0x80000000) == 0 || (*(v12 + 12580) & 0x80000000) == 0)
          {
            *(v12 + 11956) = 8;
          }

          if ((*(v12 + 12256) & 0x80000000) == 0)
          {
            *(v12 + 11959) = 257;
          }

          if (*(v12 + 11744))
          {
            *(v12 + 11978) = 9;
          }

          if ((*(v12 + 12352) & 0x80000000) == 0)
          {
            *(v12 + 11997) = 1;
          }

          if ((*(v12 + 12356) & 0x80000000) == 0)
          {
            *(v12 + 11998) = 1;
          }

          if ((*(v12 + 12360) & 0x80000000) == 0)
          {
            *(v12 + 11999) = 1;
          }

          *(v12 + 12008) = 257;
          *(v12 + 12000) = 16843009;
          *(v12 + 12003) = 16843009;
        }
      }
    }

    else
    {
      VData = 2229280772;
      log_OutPublic(*&__dst[2], "SELECT_BET3", 55006, "%s%s");
    }
  }

  else
  {
    log_OutPublic(*&__dst[2], "SELECT_BET3", 55000, 0);
    VData = 2229280778;
  }

  if (v27)
  {
    ssftriff_reader_ObjClose(v27);
    v27 = 0;
  }

  if ((VData & 0x80000000) != 0)
  {
    if ((VData & 0x7FF01FFF) == 0xA200014)
    {
      VData = 2229280772;
    }

    else
    {
      VData = VData;
    }

    select_bet3_loc_VoiceClose(__dst, v12);
  }

  else
  {
    *(a4 + 32) = v12;
  }

  return VData;
}

uint64_t select_bet3_loc_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v6 = 0;
  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    select_bet3_loc_VoiceClose(v6, *(a3 + 32));
  }

  return inited;
}

uint64_t select_bet3_loc_ParamCheckChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      result = 2229280785;
      goto LABEL_7;
    }
  }

  else if (!strcmp(__s1, "waitfactor") && (LH_atoi(a3) & 0x80000000) != 0)
  {
    result = 2229280783;
LABEL_7:
    *a4 = 0;
    return result;
  }

  return 0;
}

uint64_t select_bet3_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      return 2229280785;
    }

    else
    {
      return 0;
    }
  }

  if (!strcmp(__s1, "rate") || !strcmp(__s1, "waitfactor"))
  {
    v11 = 0;
    if (strcmp(__s1, "waitfactor") || (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v11), v11 != 1))
    {
      v7 = LH_atoi(a3);
      v8 = a1;
      v9 = __s1;
      return select_bet3_loc_ParamSet(v8, v9, v7);
    }

    return 0;
  }

  if (strcmp(__s1, "finalsentencefound"))
  {
    return 0;
  }

  if (LH_atou(a3) != 1)
  {
    v10 = 0;
    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", &v10);
    v7 = v10;
    v9 = "waitfactor";
    v8 = a1;
    return select_bet3_loc_ParamSet(v8, v9, v7);
  }

  paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", *(a1 + 64));

  return select_bet3_loc_ParamSet(a1, "waitfactor", 0);
}

uint64_t select_bet3_loc_CreateDataBrkString(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  __s2 = 0;
  strcpy(a2, "select");
  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &__s2);
  if (Str < 0)
  {
    return Str & 0x1FFF | 0x84E02000;
  }

  *&a2[strlen(a2)] = 47;
  strcat(a2, __s2);
  Str = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &__s2);
  if (Str < 0)
  {
    return Str & 0x1FFF | 0x84E02000;
  }

  *&a2[strlen(a2)] = 47;
  strcat(a2, __s2);
  Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v9);
  if (Str < 0)
  {
    return Str & 0x1FFF | 0x84E02000;
  }

  *&a2[strlen(a2)] = 102;
  v5 = strlen(a2);
  LH_itoa(v9 / 1000, &a2[v5], 0xAu);
  v6 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s2);
  if ((v6 & 0x80000000) == 0)
  {
    if (__s2)
    {
      if (*__s2)
      {
        v6 = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, __src, 0x80uLL);
        if ((v6 & 0x80000000) == 0)
        {
          strcpy(a2, __src);
        }
      }
    }
  }

  return v6;
}

uint64_t select_bet3_loc_SetSynthParams(uint64_t a1, uint64_t a2)
{
  v9 = a2 + 7808;
  v4 = (a2 + 7792);
  v5 = paramc_ParamSetStr(*(a1 + 40), "synth_type", (a2 + 7792));
  if ((v5 & 0x80000000) != 0)
  {
    v7 = v5;
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%s%s%x", "parameter", "synth_type", "value", v4, "lhError", v5);
  }

  else
  {
    v6 = paramc_ParamSetPermanent(*(a1 + 40), "mrcc_synthparam_ref_ptr", &v9, 8uLL);
    if ((v6 & 0x80000000) == 0)
    {
      v6 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicealpha", *(a2 + 128));
      if ((v6 & 0x80000000) == 0)
      {
        v6 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicebeta", *(a2 + 132));
        if ((v6 & 0x80000000) == 0)
        {
          v6 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicevol", *(a2 + 164));
          if ((v6 & 0x80000000) == 0)
          {
            v6 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicevuvrelamp", *(a2 + 140));
            if ((v6 & 0x80000000) == 0)
            {
              v6 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicemvfboost", *(a2 + 168));
              if ((v6 & 0x80000000) == 0)
              {
                v6 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicef0std", *(a2 + 176));
                if ((v6 & 0x80000000) == 0)
                {
                  v6 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicef0mean", *(a2 + 180));
                  if ((v6 & 0x80000000) == 0)
                  {
                    v6 = select_bet3_loc_SetSynthParamInt(a1, "bet2voiceframesize", *(a2 + 152));
                    if ((v6 & 0x80000000) == 0)
                    {
                      v6 = select_bet3_loc_SetSynthParamInt(a1, "bet2voiceorder", *(a2 + 144));
                      if ((v6 & 0x80000000) == 0)
                      {
                        v6 = select_bet3_loc_SetSynthParamArrayOfBet3_int32(a1, *(a2 + 7784), *(a2 + 144) + 1);
                        if ((v6 & 0x80000000) == 0)
                        {
                          return select_bet3_loc_SetSynthParamInt(a1, "voicepitchavghz", *(a2 + 184));
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

    return v6;
  }

  return v7;
}

uint64_t select_bet3_loc_ParamSet(uint64_t a1, char *__s1, int a3)
{
  if (strcmp(__s1, "waitfactor"))
  {
    return 0;
  }

  if ((a3 & 0x80000000) == 0)
  {
    *(a1 + 64) = a3;
    log_OutText(*(*(a1 + 16) + 32), "SELECT_BET3", 3, 0, "Set wait factor %d", a3);
    return 0;
  }

  return 2229280783;
}

uint64_t select_bet3_ParseRiff(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, int a7)
{
  v11 = a1;
  StringZ = 0;
  v225 = *MEMORY[0x1E69E9840];
  __s = (a2 + 9786);
  v221 = 0;
  v220 = 0;
  *__src = 0;
  v214 = 5 * a4;
  v191 = a2 + 5192;
  v194 = a2 + 432;
  v195 = a2 + 3992;
  v192 = a2 + 2792;
  v193 = a2 + 1432;
  v197 = a2 + 472;
  v198 = a2 + 2552;
  v200 = a2 + 2272;
  v201 = a2 + 352;
  v199 = a2 + 2232;
  v203 = a2 + 2472;
  v204 = a2 + 392;
  v202 = a2 + 2312;
  v205 = a2 + 12560;
  v207 = a2 + 12232;
  v206 = a2 + 37584;
  v208 = a2 + 11328;
  v196 = a2 + 272;
  v13 = 0x49535F454D415246;
  while ((StringZ & 0x80000000) == 0)
  {
    StringZ = ssftriff_reader_OpenChunk(a3, __src, &v221, 0);
    if ((StringZ & 0x80000000) != 0)
    {
      break;
    }

    strcpy(&a5[v214], __src);
    if (a4 == 1)
    {
      if (strcmp(a5, "FEEX"))
      {
        if (strcmp(a5, "STM3"))
        {
          if (*__src ^ 0x434E5953 | v220)
          {
            goto LABEL_19;
          }

          v223[0] = 0;
          *__s1 = 0;
          if (a6)
          {
            v18 = a6 + ssftriff_reader_GetPosition(a3) - a7;
            *__s1 = v18;
          }

          else
          {
            ChunkData = ssftriff_reader_GetChunkData(a3, v221, __s1);
            if ((ChunkData & 0x80000000) != 0)
            {
              StringZ = ChunkData;
LABEL_672:
              v144 = 1;
              v190 = StringZ;
              goto LABEL_739;
            }

            v18 = *__s1;
          }

          __dst[0] = 0;
          v223[0] = 256;
          StringZ = ssftriff_reader_ReadStringZ(a3, v18, v221, 0, __dst, v223);
          if ((StringZ & 0x80000000) != 0)
          {
            goto LABEL_608;
          }

          if (*__dst == 0x59545F48544E5953 && *&__dst[3] == 0x455059545F4854)
          {
            v143 = v223[0];
            v223[0] = 256;
            StringZ = ssftriff_reader_ReadStringZ(a3, *__s1, v221, v143, __dst, v223);
            if ((StringZ & 0x80000000) != 0)
            {
LABEL_608:
              v144 = 3;
              goto LABEL_739;
            }

            __strcpy_chk();
          }

          goto LABEL_23;
        }

        v24 = v13;
        v223[0] = 0;
        v25 = *(a2 + 260);
        if (*__src ^ 0x33435453 | v220)
        {
          if (!(*__src ^ 0x33455254 | v220))
          {
            v145 = v198;
            goto LABEL_612;
          }

          if (!(*__src ^ 0x33464450 | v220))
          {
            *__s1 = 0;
            if (a6)
            {
              v158 = a6 + ssftriff_reader_GetPosition(a3) - a7;
              *__s1 = v158;
            }

            else
            {
              v179 = ssftriff_reader_GetChunkData(a3, v221, __s1);
              if ((v179 & 0x80000000) != 0)
              {
                StringZ = v179;
LABEL_729:
                v144 = 1;
                v190 = StringZ;
LABEL_739:
                if (v144 != 3)
                {
                  return v190;
                }

                break;
              }

              v158 = *__s1;
            }

            v223[0] = 256;
            LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, v158, v221, 0, __dst, v223);
            if ((StringZ & 0x80000000) != 0)
            {
              v146 = 0;
            }

            else
            {
              v180 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
              v181 = *(v197 + 4 * v25);
              *(v193 + 40 * v25 + 8 * v181) = v180;
              if ((v223[0] & 3) != 0)
              {
                v223[0] -= v223[0] | 0xFFFFFFFC;
              }

              v146 = v192 + 120 * v25 + 24 * v181;
              *(v197 + 4 * v25) = v181 + 1;
            }

            goto LABEL_709;
          }

          if (!(*__src ^ 0x334E4957 | v220))
          {
            v172 = *(v194 + 4 * v25);
            v146 = v195 + 120 * v25 + 24 * v172;
            *(v194 + 4 * v25) = v172 + 1;
            goto LABEL_709;
          }

          if (!(*__src ^ 0x334B4243 | v220))
          {
            v145 = v191;
LABEL_612:
            v146 = v145 + 24 * v25;
LABEL_709:
            v13 = v24;
            if ((StringZ & 0x80000000) != 0 || !v146)
            {
              v11 = a1;
            }

            else
            {
              *__dst = 0;
              if (a6)
              {
                v182 = a6 + ssftriff_reader_GetPosition(a3) - a7;
              }

              else
              {
                StringZ = ssftriff_reader_GetChunkData(a3, v221, __dst);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_729;
                }

                v182 = *__dst;
              }

              v13 = v24;
              v183 = v223[0];
              *(v146 + 8) = v182 + v223[0];
              *(v146 + 16) = v221 - v183;
              v11 = a1;
            }

            goto LABEL_23;
          }

          v26 = 0;
          goto LABEL_734;
        }

        LODWORD(v217) = 0;
        *__s1 = 0;
        if (a6)
        {
          v140 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          *__s1 = v140;
        }

        else
        {
          StringZ = ssftriff_reader_GetChunkData(a3, v221, __s1);
          if ((StringZ & 0x80000000) != 0)
          {
            goto LABEL_729;
          }

          v140 = *__s1;
        }

        v161 = v223[0];
        *(v201 + 4 * v25) = *(v140 + v223[0]);
        v223[0] = v161 + 4;
        v162 = *(v140 + v161 + 4);
        *(v204 + 4 * v25) = v162;
        v223[0] = v161 + 8;
        *(v200 + 4 * v25) = *(v140 + v161 + 8) != 0;
        v223[0] = v161 + 9;
        *(v199 + 4 * v25) = *(v140 + v161 + 9);
        v163 = v161 + 13;
        v223[0] = v161 + 13;
        if (v162 < 1)
        {
LABEL_659:
          __dst[0] = 0;
          LODWORD(v217) = 256;
          LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, v140, v221, v163, __dst, &v217);
          if ((StringZ & 0x80000000) == 0)
          {
            v166 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
            *(v196 + 8 * v25) = v166;
            if (!v166)
            {
              v144 = 3;
              StringZ = 2229280778;
              goto LABEL_739;
            }

            v223[0] += v217;
            if (*(v204 + 4 * v25) >= 1)
            {
              v167 = 0;
              while (1)
              {
                __dst[0] = 0;
                LODWORD(v217) = 256;
                v168 = ssftriff_reader_ReadStringZ(a3, *__s1, v221, v223[0], __dst, &v217);
                if (v168 < 0)
                {
                  break;
                }

                *(*(v203 + 8 * v25) + 8 * v167) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v203 + 8 * v25) + 8 * v167))
                {
                  goto LABEL_730;
                }

                v223[0] += v217;
                __dst[0] = 0;
                LODWORD(v217) = 256;
                LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, *__s1, v221, v223[0], __dst, &v217);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_733;
                }

                *(*(v202 + 8 * v25) + 8 * v167) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v202 + 8 * v25) + 8 * v167))
                {
LABEL_730:
                  LODWORD(StringZ) = -2065686518;
                  goto LABEL_733;
                }

                v223[0] += v217;
                if (++v167 >= *(v204 + 4 * v25))
                {
                  goto LABEL_733;
                }
              }

              LODWORD(StringZ) = v168;
            }
          }
        }

        else
        {
          v164 = heap_Calloc(*(a1 + 8), v162, 8);
          *(v203 + 8 * v25) = v164;
          if (!v164)
          {
            LODWORD(StringZ) = -2065686518;
          }

          if ((StringZ & 0x80000000) == 0)
          {
            v165 = heap_Calloc(*(a1 + 8), *(v204 + 4 * v25), 8);
            *(v202 + 8 * v25) = v165;
            LODWORD(StringZ) = -2065686518;
            if (v165)
            {
              v140 = *__s1;
              v163 = v223[0];
              goto LABEL_659;
            }
          }
        }

LABEL_733:
        v26 = 1;
LABEL_734:
        v11 = a1;
        v13 = v24;
        if (!v26)
        {
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      if (!(*__src ^ 0x54414356 | v220))
      {
        *__dst = 0;
        if (a6)
        {
          *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          v147 = ssftriff_reader_GetChunkData(a3, v221, __dst);
          if ((v147 & 0x80000000) != 0)
          {
            return v147;
          }
        }

        v14 = v11;
        v15 = a2;
        v16 = a3;
        v17 = 2;
        goto LABEL_615;
      }

      if (*__src ^ 0x504F4256 | v220)
      {
        if (!(*__src ^ 0x33455250 | v220))
        {
          *__dst = 0;
          if (a6)
          {
            v19 = v13;
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            StringZ = ssftriff_reader_GetChunkData(a3, v221, __dst);
            if ((StringZ & 0x80000000) != 0)
            {
              return StringZ;
            }

            v19 = v13;
          }

          v173 = v221;
          if (v221 >= 2)
          {
            v174 = 0;
            do
            {
              if (*(*__dst + 2 * v174) < 0x47u)
              {
                *(v207 + 4 * *(*__dst + 2 * v174)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown preselection feature: %u for %s", *(*__dst + 2 * v174), a2);
                v173 = v221;
              }

              ++v174;
            }

            while (v173 >> 1 > v174);
          }

LABEL_700:
          v11 = a1;
LABEL_22:
          v13 = v19;
          goto LABEL_23;
        }

        if (!(*__src ^ 0x33415254 | v220))
        {
          *__dst = 0;
          if (a6)
          {
            v19 = v13;
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            StringZ = ssftriff_reader_GetChunkData(a3, v221, __dst);
            if ((StringZ & 0x80000000) != 0)
            {
              return StringZ;
            }

            v19 = v13;
          }

          v177 = v221;
          if (v221 >= 2)
          {
            v178 = 0;
            do
            {
              if (*(*__dst + 2 * v178) < 8u)
              {
                *(v205 + 4 * *(*__dst + 2 * v178)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown transition feature: %u for %s", *(*__dst + 2 * v178), a2);
                v177 = v221;
              }

              ++v178;
            }

            while (v177 >> 1 > v178);
          }

          goto LABEL_700;
        }

        if (*__src ^ 0x334D4850 | v220)
        {
          goto LABEL_19;
        }

        *__dst = 0;
        if (a6)
        {
          v23 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
          *__dst = v23;
        }

        else
        {
          StringZ = ssftriff_reader_GetChunkData(a3, v221, __dst);
          if ((StringZ & 0x80000000) != 0)
          {
            return StringZ;
          }

          v23 = *__dst;
        }

        if (v221 >= 0x100)
        {
          v159 = 256;
        }

        else
        {
          v159 = v221;
        }

        v160 = 7484;
      }

      else
      {
        *__dst = 0;
        if (a6)
        {
          v23 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
          *__dst = v23;
        }

        else
        {
          StringZ = ssftriff_reader_GetChunkData(a3, v221, __dst);
          if ((StringZ & 0x80000000) != 0)
          {
            return StringZ;
          }

          v23 = *__dst;
        }

        if (v221 >= 0xF8)
        {
          v159 = 248;
        }

        else
        {
          v159 = v221;
        }

        v160 = 11684;
      }

      memcpy((a2 + v160), v23, v159);
    }

    else if (a4)
    {
      if (strcmp(a5, "FEEX") || strcmp(a5 + 5, "VCAT"))
      {
LABEL_19:
        v19 = v13;
        v20 = 0;
        __dst[0] = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v20;
        }

        while (a4 >= v20);
        v11 = a1;
        log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown data: %s for %s", __dst, a2);
        goto LABEL_22;
      }

      *__dst = 0;
      if (a6)
      {
        *__dst = a6 + ssftriff_reader_GetPosition(a3) - a7;
      }

      else
      {
        StringZ = ssftriff_reader_GetChunkData(a3, v221, __dst);
        if ((StringZ & 0x80000000) != 0)
        {
          return StringZ;
        }
      }

      if (*__src ^ 0x48504C41 | v220)
      {
        if (*__src ^ 0x43494F56 | v220)
        {
          if (*__src ^ 0x4F564F43 | v220)
          {
            if (*__src ^ 0x45464153 | v220)
            {
              if (*__src ^ 0x534F4C50 | v220)
              {
                if (*__src ^ 0x46464944 | v220)
                {
                  if (*__src ^ 0x464E4547 | v220)
                  {
                    if (*__src ^ 0x41474154 | v220)
                    {
                      if (*__src ^ 0x414F5442 | v220)
                      {
                        goto LABEL_19;
                      }

                      v185 = *__dst;
                      v186 = v221;
                      v187 = 11656;
                    }

                    else
                    {
                      v185 = *__dst;
                      v186 = v221;
                      v187 = 11648;
                    }

                    RiffStringTable = uselect_LoadRiffStringTable(v11, a3, v185, v186, (a2 + v187));
                  }

                  else
                  {
                    RiffStringTable = select_bet3_LoadRiffGenericFeatureMap(v11, a3, *__dst, v221, (a2 + 12520), (a2 + 12528), (a2 + 12536));
                  }

                  goto LABEL_727;
                }

                *__s1 = 64;
                v169 = *__dst;
                v170 = v221;
                v171 = 11584;
              }

              else
              {
                *__s1 = 257;
                v169 = *__dst;
                v170 = v221;
                v171 = 10557;
              }
            }

            else
            {
              *__s1 = 257;
              v169 = *__dst;
              v170 = v221;
              v171 = 10814;
            }
          }

          else
          {
            *__s1 = 257;
            v169 = *__dst;
            v170 = v221;
            v171 = 10300;
          }
        }

        else
        {
          *__s1 = 257;
          v169 = *__dst;
          v170 = v221;
          v171 = 10043;
        }

        RiffStringTable = ssftriff_reader_ReadStringZ(a3, v169, v170, 0, (a2 + v171), __s1);
LABEL_727:
        LODWORD(StringZ) = RiffStringTable;
        goto LABEL_23;
      }

      *__s1 = 257;
      v213 = a3;
      v148 = a3;
      v149 = __s;
      LODWORD(StringZ) = ssftriff_reader_ReadStringZ(v148, *__dst, v221, 0, __s, __s1);
      if ((StringZ & 0x80000000) == 0)
      {
        *(__s + 947) = 255;
        if (*__s)
        {
          v150 = 0;
          v151 = 0;
          v152 = 0;
          v153 = 255;
          do
          {
            v154 = v149[v151];
            if (v154 >= v153)
            {
              v155 = v149[v151];
            }

            else
            {
              v149[1894] = v154;
              v155 = v149[v151];
              v153 = v154;
            }

            if (v155 <= v150)
            {
              v156 = v155;
              v149 = __s;
            }

            else
            {
              v149 = __s;
              __s[1895] = v155;
              v156 = __s[v151];
              v150 = v155;
            }

            *(v208 + v156) = v152;
            v151 = (v152 + 1);
            v157 = strlen(v149);
            v152 = v151;
          }

          while (v157 > v151);
        }
      }

      v11 = a1;
      a3 = v213;
      v13 = 0x49535F454D415246;
    }

    else if (*__src ^ 0x47464356 | v220)
    {
      if (*__src ^ 0x41555145 | v220)
      {
        if (!(*__src ^ 0x58454546 | v220))
        {
          goto LABEL_11;
        }

        if (*__src ^ 0x334D5453 | v220)
        {
          if (*__src ^ 0x544E5953 | v220)
          {
            goto LABEL_19;
          }

LABEL_11:
          v14 = v11;
          v15 = a2;
          v16 = a3;
          v17 = 1;
LABEL_615:
          LODWORD(StringZ) = select_bet3_ParseRiff(v14, v15, v16, v17, a5, 0, 0);
          goto LABEL_23;
        }

        Position = ssftriff_reader_GetPosition(a3);
        *__dst = 0;
        v139 = ssftriff_reader_DetachChunkData(a3, (v206 + 8 * *(a2 + 37792)), __dst);
        if (v139 < 0)
        {
          LODWORD(StringZ) = v139;
        }

        else
        {
          ++*(a2 + 37792);
          LODWORD(StringZ) = select_bet3_ParseRiff(a1, a2, a3, 1u, a5, *__dst, Position);
          ++*(a2 + 260);
        }

        v13 = 0x49535F454D415246;
        v11 = a1;
      }

      else
      {
        LODWORD(StringZ) = ssftriff_reader_DetachChunkData(a3, (v206 + 8 * *(a2 + 37792)), (a2 + 7784));
        if ((StringZ & 0x80000000) == 0)
        {
          ++*(a2 + 37792);
        }

        v13 = 0x49535F454D415246;
      }
    }

    else
    {
      v218 = 0;
      *v216 = 0;
      v217 = 0;
      if (a6)
      {
        *v216 = a6 + ssftriff_reader_GetPosition(a3) - a7;
      }

      else
      {
        StringZ = ssftriff_reader_GetChunkData(a3, v221, v216);
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_672;
        }
      }

      v27 = BET3FLT__heap_StrDup(*(v11 + 8), "PHRASE");
      *(a2 + 208) = v27;
      if (!v27)
      {
        goto LABEL_690;
      }

      *(a2 + 216) = 1000;
      v28 = v221;
      if (v221)
      {
        v29 = 0;
        do
        {
          __dst[0] = 0;
          __s1[0] = 0;
          v218 = 64;
          LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, *v216, v28, v29, __s1, &v218);
          if ((StringZ & 0x80000000) == 0 && v29 < v221)
          {
            v29 += v218;
            v218 = 256;
            LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, *v216, v221, v29, __dst, &v218);
          }

          if ((StringZ & 0x80000000) != 0)
          {
            break;
          }

          v30 = v13;
          v212 = v218;
          strcpy(v223, "bet3voiceoverride.");
          __strcat_chk();
          if ((paramc_ParamGetStr(*(a1 + 40), v223, &v217) & 0x80000000) != 0 || (v31 = v217) == 0 || !*v217)
          {
            v31 = __dst;
            v217 = __dst;
          }

          if (*__s1 == 1213221953 && *&__s1[4] == 65)
          {
            v33 = atof(v31);
            *(a2 + 128) = v33;
          }

          if (!(*__s1 ^ 0x41544542 | __s1[4]))
          {
            v34 = atof(v31);
            *(a2 + 132) = v34;
          }

          if (*__s1 == 0x5F4C45525F565556 && *&__s1[8] == 5262657)
          {
            v36 = atof(v31);
            *(a2 + 140) = v36;
          }

          if (*__s1 == 5195858)
          {
            v37 = atof(v31);
            *(a2 + 160) = v37;
          }

          if (*__s1 == 5001046)
          {
            v38 = atof(v31);
            *(a2 + 164) = v38;
          }

          if (*__s1 == 0x534F4F425F46564DLL && *&__s1[8] == 84)
          {
            v40 = atof(v31);
            *(a2 + 168) = v40;
          }

          if (*__s1 == 1381969990 && *&__s1[3] == 5195858)
          {
            v42 = atof(v31);
            *(a2 + 172) = v42;
          }

          if (*__s1 == 1398747206 && *&__s1[3] == 4478035)
          {
            v44 = atof(v31);
            *(a2 + 176) = v44;
          }

          if (*__s1 == 0x4E41454D5F3046)
          {
            v45 = atof(v31);
            *(a2 + 180) = v45;
          }

          if (!(*__s1 ^ 0x5346 | __s1[2]))
          {
            *(a2 + 136) = LH_atoi(v31);
          }

          if (*__s1 == 1162105423 && *&__s1[4] == 82)
          {
            *(a2 + 144) = LH_atoi(v217);
          }

          if (*__s1 == v30 && *&__s1[3] == 0x455A49535F454DLL)
          {
            *(a2 + 152) = LH_atoi(v217);
          }

          if (*__s1 == 0x465F484345455053 && *&__s1[7] == 0x4E41454D5F3046)
          {
            *(a2 + 184) = LH_atoi(v217);
          }

          if (*__s1 == 0x495241565F464450 && *&__s1[8] == 0x5059545F45434E41 && *&__s1[16] == 69)
          {
            *(a2 + 200) = LH_atoi(v217);
          }

          if (*__s1 == 0x52454B41455242)
          {
            v51 = *(a2 + 208);
            if (v51)
            {
              heap_Free(*(a1 + 8), v51);
            }

            v52 = BET3FLT__heap_StrDup(*(a1 + 8), v217);
            *(a2 + 208) = v52;
            if (!v52)
            {
              LODWORD(StringZ) = -2065686518;
              v13 = v30;
              break;
            }
          }

          if (*__s1 == 0x474E454C5F4B5242 && *&__s1[3] == 0x4854474E454C5FLL)
          {
            *(a2 + 216) = LH_atoi(v217);
          }

          if (*__s1 == 1598771778 && *&__s1[3] == 4412511)
          {
            *(a2 + 220) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x4441505A5F4B5242 | __s1[8]))
          {
            *(a2 + 224) = LH_atoi(v217);
          }

          if (*__s1 == 0x54535F4E474C41)
          {
            *(a2 + 240) = LH_atoi(v217) != 0;
          }

          if (*__s1 == 0x48505F4E474C41)
          {
            *(a2 + 244) = LH_atoi(v217) != 0;
          }

          if (*__s1 == 1314476886 && *&__s1[3] == 4740174)
          {
            *(a2 + 7776) = BET3FLT__heap_StrDup(*(a1 + 8), v217);
          }

          if (*__s1 == 1398031942 && *&__s1[4] == 90)
          {
            *(a2 + 7808) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E41454D5F4E45)
          {
            *(a2 + 7812) = LH_atoi(v217);
          }

          if (*__s1 == 0x5F4E455F44454546 && *&__s1[8] == 0x4F4F4C5F4E41454DLL && *&__s1[15] == 0x44414548414B4FLL)
          {
            *(a2 + 7820) = LH_atoi(v217);
          }

          if (*__s1 == 0x56555F544E554F43 && *&__s1[8] == 0x434E41545349445FLL && *&__s1[16] == 69)
          {
            *(a2 + 7816) = LH_atoi(v217);
          }

          if (*__s1 == 0x525F454C504D4153 && *&__s1[8] == 4543553)
          {
            *(a2 + 7824) = LH_atoi(v217);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[6] == 0x594752454E455FLL)
          {
            *(a2 + 7828) = LH_atoi(v217);
          }

          if (*__s1 == 0x535F524150504D41 && *&__s1[8] == 4545097)
          {
            *(a2 + 7832) = LH_atoi(v217);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x50524157514552)
          {
            *(a2 + 7836) = LH_atoi(v217);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[13] == 0x4148504C415F45)
          {
            *(a2 + 7840) = LH_atoi(v217);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[16] == 0x564E555F4148504CLL && *&__s1[22] == 0x444543494F564ELL)
          {
            *(a2 + 7844) = LH_atoi(v217);
          }

          if (*__s1 == v30 && *&__s1[8] == 0x4343524D5F455ALL)
          {
            *(a2 + 7848) = LH_atoi(v217);
          }

          if (*__s1 == 0x5F5348505F4E5953 && *&__s1[8] == 0x555F504152545845 && *&__s1[11] == 0x4553555F504152)
          {
            *(a2 + 7852) = LH_atoi(v217);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x545F514552465F45 && *&__s1[16] == 72)
          {
            *(a2 + 7856) = LH_atoi(v217);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x53555F4553494F4ELL && *&__s1[16] == 69)
          {
            *(a2 + 7860) = LH_atoi(v217);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x564D5F4553494F4ELL && *&__s1[14] == 0x4553555F46564DLL)
          {
            *(a2 + 7864) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x4F4C5F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7868) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x49485F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7872) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x494E555F4553494FLL && *&__s1[13] == 0x4D524F46494E55)
          {
            *(a2 + 7876) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x4553555F4553494FLL | __s1[16]))
          {
            *(a2 + 7880) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x46564D5F4553494FLL && *&__s1[13] == 0x4553555F46564DLL)
          {
            *(a2 + 7884) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x4F4C5F4D524148)
          {
            *(a2 + 7888) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x49485F4D524148)
          {
            *(a2 + 7892) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 5196895)
          {
            *(a2 + 7896) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 4802655)
          {
            *(a2 + 7900) = LH_atoi(v217);
          }

          if (*__s1 == 0x47494C415F4E5953 && *&__s1[8] == 0x46464F5455435F4ELL && *&__s1[14] == 0x514552465F4646)
          {
            *(a2 + 7904) = LH_atoi(v217);
          }

          if (*__s1 == 0x554245445F4E5953 && *&__s1[8] == 0x45434F52505F5A5ALL && *&__s1[15] == 0x46564D5F535345)
          {
            *(a2 + 7908) = LH_atoi(v217);
          }

          if (*__s1 == 0x415F524150504D41 && *&__s1[8] == 0x455441554E455454 && *&__s1[16] == 5657951)
          {
            *(a2 + 7912) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x50494B535F4E5953 | *&__s1[8] ^ 0x41485F4B4145575FLL | *&__s1[16] ^ 0x4F495441525F4D52 | __s1[24]))
          {
            *(a2 + 7916) = LH_atoi(v217);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
          {
            *(a2 + 7940) = LH_atoi(v217);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
          {
            *(a2 + 7944) = LH_atoi(v217);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
          {
            *(a2 + 7948) = LH_atoi(v217);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
          {
            *(a2 + 7952) = LH_atoi(v217);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
          {
            *(a2 + 7956) = LH_atoi(v217);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
          {
            *(a2 + 7960) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x305F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7964) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x315F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7968) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x325F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7972) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x335F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7976) = LH_atoi(v217);
          }

          if (*__s1 == 0x425F524150504D41 && *&__s1[8] == 5461065)
          {
            *(a2 + 7980) = LH_atoi(v217);
          }

          if (*__s1 == 0x555F524150534850 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7984) = LH_atoi(v217);
          }

          if (*__s1 == 0x555F524150504D41 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7988) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x32474F4C5F455355 | __s1[8]))
          {
            *(a2 + 7992) = LH_atoi(v217);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x505F45434E41484ELL && *&__s1[14] == 0x435053574F505FLL)
          {
            *(a2 + 7996) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[15] == 0x455441554E4554)
          {
            *(a2 + 8000) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x4C5F455441554E45 && *&__s1[24] == 79)
          {
            *(a2 + 8004) = LH_atoi(v217);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x485F455441554E45 && *&__s1[24] == 73)
          {
            *(a2 + 8008) = LH_atoi(v217);
          }

          if (*__s1 == 0x4C5050415F4E5953 && *&__s1[8] == 0x504D4545445F59)
          {
            *(a2 + 8012) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x525F49485F4E5953 | *&__s1[8] ^ 0x4E47494C415F5345 | __s1[16]))
          {
            *(a2 + 8016) = LH_atoi(v217);
          }

          if (*__s1 == 0x545341465F4E5953 && *&__s1[8] == 0x5241485F5855415FLL && *&__s1[16] == 77)
          {
            *(a2 + 8020) = LH_atoi(v217);
          }

          if (*__s1 == 0x5F5849465F4E5953 && *&__s1[8] == 4279375)
          {
            *(a2 + 8024) = LH_atoi(v217);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x494F565F44524155 && *&__s1[16] == 4474179)
          {
            *(a2 + 8028) = LH_atoi(v217);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x564E555F44524155 && *&__s1[14] == 0x444543494F564ELL)
          {
            *(a2 + 8032) = LH_atoi(v217);
          }

          if (*__s1 == 0x5551594E5F4E5953 && *&__s1[8] == 0x524155475F545349 && *&__s1[16] == 68)
          {
            *(a2 + 8036) = LH_atoi(v217);
          }

          if (*__s1 == 0x535F524150534850 && *&__s1[8] == 4545097)
          {
            *(a2 + 8040) = LH_atoi(v217);
          }

          if (*__s1 == 0x465F524150534850 && *&__s1[8] == 5261644)
          {
            *(a2 + 8044) = LH_atoi(v217);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x4F4E5F594752454ELL && *&__s1[14] == 0x48545F4D524F4ELL)
          {
            *(a2 + 8048) = LH_atoi(v217);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x5F50524157514552 && *&__s1[14] == 0x4148504C415F50)
          {
            *(a2 + 8052) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x5F5348505F4E5953 | *&__s1[8] ^ 0x49575F4E47494C41 | *&__s1[16] ^ 0x54534E4F435F4854 | __s1[24]))
          {
            *(a2 + 8056) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x524F4E5F4553494FLL | *&__s1[16] ^ 0x4C41424F4C475F4DLL | __s1[24]))
          {
            *(a2 + 8060) = LH_atoi(v217);
          }

          if (*__s1 == 0x4D4545445F4E5953 && *&__s1[7] == 0x46454F435F504DLL)
          {
            *(a2 + 8064) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x5F4553555F4E5953 | *&__s1[8] ^ 0x4F4D5F4553494F4ELL | *&__s1[16] ^ 0x4E4F4954414C5544 | __s1[24]))
          {
            *(a2 + 8068) = LH_atoi(v217);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x414C55444F4D5F45 && *&__s1[16] == 0x4341465F4E4F4954 && *&__s1[24] == 5394260)
          {
            *(a2 + 8072) = LH_atoi(v217);
          }

          if (*__s1 == 0x4D4152465F58414DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8076) = LH_atoi(v217);
          }

          if (*__s1 == 0x4D4152465F4E494DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8080) = LH_atoi(v217);
          }

          if (*__s1 == 0x5F5446465F4E494DLL && *&__s1[5] == 0x455A49535F5446)
          {
            *(a2 + 8084) = LH_atoi(v217);
          }

          v13 = 0x49535F454D415246;
          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F434E495F455ALL && *&__s1[11] == 0x4D554E5F434E49)
          {
            *(a2 + 8088) = LH_atoi(v217);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F4345445F455ALL && *&__s1[11] == 0x4D554E5F434544)
          {
            *(a2 + 8092) = LH_atoi(v217);
          }

          if (*__s1 == 0x5446465F4C414E41 && *&__s1[6] == 0x455A49535F5446)
          {
            *(a2 + 8096) = LH_atoi(v217);
          }

          if (!(*__s1 ^ 0x455A49535F544646 | __s1[8]))
          {
            *(a2 + 8100) = LH_atoi(v217);
          }

          v29 += v212;
          v28 = v221;
        }

        while (v29 < v221);
      }

      strcpy(v223, "bet3voiceoverride.");
      __strcat_chk();
      v11 = a1;
      if ((paramc_ParamGetStr(*(a1 + 40), v223, &v217) & 0x80000000) == 0)
      {
        v175 = *(a2 + 208);
        if (v175)
        {
          heap_Free(*(a1 + 8), v175);
          *(a2 + 208) = 0;
        }

        v176 = BET3FLT__heap_StrDup(*(a1 + 8), v217);
        *(a2 + 208) = v176;
        if (!v176)
        {
LABEL_690:
          v144 = 3;
          StringZ = 2229280778;
          goto LABEL_739;
        }
      }

      strcpy(v223, "bet3voiceoverride.");
      __strcat_chk();
      if ((paramc_ParamGetStr(*(a1 + 40), v223, &v217) & 0x80000000) == 0)
      {
        *(a2 + 216) = LH_atoi(v217);
      }
    }

LABEL_23:
    v21 = ssftriff_reader_CloseChunk(a3);
    if (StringZ > -1 && v21 < 0)
    {
      StringZ = v21;
    }

    else
    {
      StringZ = StringZ;
    }
  }

  if ((StringZ & 0x1FFF) == 0x14)
  {
    v188 = 0;
  }

  else
  {
    v188 = StringZ;
  }

  if ((v188 & 0x80000000) == 0)
  {
    a5[v214] = 0;
    return v188;
  }

  return StringZ;
}

void *select_bet3_loc_VoiceClose(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 11648);
    if (v4 && *v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        *(a2 + 5432 + 8 * v5) = 0;
        v4 = *(a2 + 11648);
        v5 = v6;
      }

      while (v4[v6++]);
    }

    uselect_FreeRiffStringTable(result, v4);
    uselect_FreeRiffStringTable(v3, *(a2 + 11656));
    v8 = *(a2 + 12520);
    v9 = *(a2 + 12528);
    v10 = *(a2 + 12536);
    if (v8)
    {
      v11 = *v8;
      if (*v8)
      {
        v12 = 0;
        do
        {
          heap_Free(v3[1], v11);
          v11 = v8[++v12];
        }

        while (v11);
      }

      heap_Free(v3[1], v8);
    }

    if (v9)
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = 0;
        v15 = v9;
        do
        {
          v16 = *v13;
          if (*v13)
          {
            v17 = 0;
            do
            {
              heap_Free(v3[1], v16);
              ++v17;
              v13 = *v15;
              v16 = (*v15)[v17];
            }

            while (v16);
          }

          heap_Free(v3[1], v13);
          v15 = &v9[++v14];
          v13 = *v15;
        }

        while (*v15);
      }

      heap_Free(v3[1], v9);
    }

    if (v10)
    {
      v18 = *v10;
      if (*v10)
      {
        v19 = 0;
        do
        {
          heap_Free(v3[1], v18);
          v18 = v10[++v19];
        }

        while (v18);
      }

      heap_Free(v3[1], v10);
    }

    BET3FLT__DeInitVData(v3, (a2 + 8112));
    BET3FLT__DeInitVParam(v3, (a2 + 128));
    if (*(a2 + 37792))
    {
      v20 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a2 + 37584 + 8 * v20++));
      }

      while (v20 < *(a2 + 37792));
    }

    *(a2 + 37792) = 0;
    *a2 = 0;
    v21 = v3[1];

    return heap_Free(v21, a2);
  }

  return result;
}

uint64_t select_bet3_LoadRiffGenericFeatureMap(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), v12 + 1, 8);
  *a5 = v13;
  if (v13)
  {
    v14 = heap_Calloc(*(v11 + 8), v12 + 1, 8);
    *a6 = v14;
    if (v14)
    {
      v15 = heap_Calloc(*(v11 + 8), v12 + 1, 8);
      *a7 = v15;
      if (v15)
      {
        if (!v12)
        {
          return 0;
        }

        v31 = v12;
        v32 = a3;
        v16 = 0;
        v17 = 2;
        v29 = a5;
        v30 = a7;
        while (1)
        {
          __dst[0] = 0;
          v35 = 256;
          v18 = ssftriff_reader_ReadStringZ(a2, v32, a4, v17, __dst, &v35);
          v19 = v35;
          *(*a5 + 8 * v16) = BET3FLT__heap_StrDup(*(v11 + 8), __dst);
          if (!*(*a5 + 8 * v16))
          {
            break;
          }

          v20 = v16;
          v21 = v19 + v17;
          v22 = *(v32 + v21);
          *(*a6 + 8 * v20) = heap_Calloc(*(v11 + 8), v22 + 1, 8);
          if (!*(*a6 + 8 * v20))
          {
            break;
          }

          *(*a7 + 8 * v20) = heap_Calloc(*(v11 + 8), v22 + 1, 1);
          if (!*(*a7 + 8 * v20))
          {
            break;
          }

          v17 = v21 + 2;
          if (v22)
          {
            v23 = v11;
            v24 = 0;
            while (1)
            {
              v25 = v17;
              __dst[0] = 0;
              v35 = 256;
              v18 = ssftriff_reader_ReadStringZ(a2, v32, a4, v17, __dst, &v35);
              v26 = v35;
              *(*(*a6 + 8 * v20) + v24) = BET3FLT__heap_StrDup(*(v23 + 8), __dst);
              if (!*(*(*a6 + 8 * v20) + v24))
              {
                return 2229280778;
              }

              v17 += v26;
              v24 += 8;
              if (8 * v22 == v24)
              {
                a5 = v29;
                a7 = v30;
                for (i = 0; i != v22; ++i)
                {
                  *(*(*v30 + 8 * v20) + i) = *(v32 + v25 + v26 + i);
                }

                v17 = v25 + v26 + i;
                v11 = v23;
                break;
              }
            }
          }

          v16 = v20 + 1;
          if (v20 + 1 >= v31)
          {
            return v18;
          }
        }
      }
    }
  }

  return 2229280778;
}

uint64_t select_bet3_loc_SetSynthParamFloat(uint64_t a1, const char *a2, float a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  __sprintf_chk(v8, 0, 0x20uLL, "%f", a3);
  v6 = paramc_ParamSetStr(*(a1 + 40), a2, v8);
  if ((v6 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%f%s%x", "parameter", a2, "value", v5, "lhError", v6);
  }

  return v6;
}

uint64_t select_bet3_loc_SetSynthParamInt(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = paramc_ParamSetInt(*(a1 + 40), a2, a3);
  if ((v6 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", "parameter", a2, "value", v3, "lhError", v6);
  }

  return v6;
}

uint64_t select_bet3_loc_SetSynthParamArrayOfBet3_int32(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = paramc_ParamSet(*(a1 + 40), "bet3cepstralequalizer", a2, (4 * a3));
  if ((v6 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%p%s%d%s%d", "parameter", "bet3cepstralequalizer", "{arrayPtr}", a2, "size", a3, "lhError", v6);
  }

  return v6;
}

uint64_t BET3FLT__ParamGenStart(uint64_t a1, int *a2, _DWORD *a3)
{
  v4 = a2;
  v68 = *a1;
  result = BET3FLT__InitUttModel(*a1, (a1 + 56), a2, *(*(a1 + 8) + 10));
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 16) = a3[8];
    v7 = a3[7];
    if (v7 >= 1)
    {
      v8 = *(a1 + 620);
      if (v7 < v8)
      {
        BET3FLT__log_select_Error(v68, 55018, "Specified length of generated speech is too short (this sentence is composed from %d states), specify more than %d milliseconds\n", *(a1 + 620), a3[2] * v8 * a3[6] / a3[2]);
        return 2229280775;
      }
    }

    if (*(a1 + 608) >= 1)
    {
      v9 = 0;
      v62 = 0;
      v63 = 0;
      v57 = a3 + 326;
      v58 = *(*(a1 + 8) + 1784);
      v10 = a3 + 1326;
      v66 = v4 + 162;
      v67 = a3 + 86;
      v65 = v4 + 142;
      v60 = v4 + 1;
      v61 = a3;
      v11 = *(a1 + 32);
      v12 = -0.5;
      v13 = 0.0;
      v14 = 0.0;
      v69 = v4;
      while (1)
      {
        v59 = v9;
        v15 = (*(a1 + 600) + 528 * v9);
        if (v11 >= 1)
        {
          v16 = 0;
          v17 = v57;
          do
          {
            v18 = v67[v16];
            if (v18 < 1)
            {
LABEL_16:
              LODWORD(v19) = 0;
            }

            else
            {
              v19 = 0;
              v20 = *(*(*(a1 + 8) + 248) + v15->i32[0]);
              while (1)
              {
                v21 = *&v17[2 * v19];
                if (v21)
                {
                  v22 = *&v10[2 * v20];
                  if (v22)
                  {
                    if (!strcmp(v21, v22))
                    {
                      break;
                    }
                  }
                }

                if (v18 == ++v19)
                {
                  goto LABEL_16;
                }
              }
            }

            v15[4].i32[v16++] = v19;
            v17 += 10;
          }

          while (v16 < *(a1 + 32));
        }

        v56 = v15->u32[0];
        BET3FLT__log_select_Diag(v68, 21, "[phoneme %d]\n");
        v4 = v69;
        if (!v58)
        {
          break;
        }

        if (a3[29])
        {
          v15[1].i32[0] = BET3FLT__TreeSearch(*(a1 + 8), v9, (v69 + 116), 0, 0);
          BET3FLT__log_select_Diag(v68, 6, "DUR pdf id %d\n");
          result = BET3FLT__FindDurPDF(v15, v69, 0, v15[4].i32[0], 0, *(a1 + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v23) = *(*(*(a1 + 8) + 1784) + 2 * v15->i32[0]);
          v24 = BET3FLT__div_int32_int32_to_Q8_24(v23, a3[6]);
          if (v24 != 0.0)
          {
            v25 = v24;
            v26 = 0.0;
            if (*v69 >= 1)
            {
              v27 = 2;
              do
              {
                kaldi::CuMatrixBase<float>::~CuMatrixBase();
                v26 = v26 + v28;
                v29 = v27++ <= *v69;
              }

              while (v29);
            }

            v30 = v12 + v25;
            v31 = BET3FLT__div_int32_int32_to_Q8_24(v30, v26);
            v15[3].i32[0] = 0;
            if (*v69 >= 1)
            {
              v32 = v31;
              v33 = v15[2];
              v34 = 2;
              do
              {
                BET3FLT__mul_int32_Q8_24_to_int32(*(*&v33 + 4 * v34), v32);
                kaldi::CuMatrixBase<float>::~CuMatrixBase();
                if (v35 <= 1)
                {
                  v36 = 1;
                }

                else
                {
                  v36 = v35;
                }

                v33 = v15[2];
                *(*&v33 + 4 * v34) = v36;
                v15[3].i32[0] += v36;
                v29 = v34++ <= *v69;
              }

              while (v29);
            }

            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            v12 = v30 - v37;
          }

LABEL_41:
          *(a1 + 624) += v15[3].i32[0];
          goto LABEL_42;
        }

        if (!a3[28])
        {
          break;
        }

        BET3FLT__log_select_Error(v68, 55017, "State level segmentation is not currently supported\n", v56);
LABEL_42:
        v11 = *(a1 + 32);
        if (v11 >= 1)
        {
          v41 = 0;
          v42 = v15 + 19;
          v43 = v15 + 29;
          v64 = v15 + 4;
          do
          {
            v44 = *(a1 + 24) + 1528 * v41;
            if (!*(v44 + 1480))
            {
              if (*(v44 + 1488))
              {
                v45 = *v4 * v9;
                v62 = *(*(a1 + 304 + 8 * v41) + 8 * v45);
                v63 = *(*(a1 + 224 + 8 * v41) + 8 * v45);
              }

              if (*(v66 + v41))
              {
                v46 = 0;
                v47 = 0;
                do
                {
                  v48 = *(*&v65[2 * v41] + v46);
                  *(*&v15[v41 + 9] + 4 * v48) = BET3FLT__TreeSearch(*(a1 + 8), v15->i32[0], (v69 + 116), v41, v47);
                  BET3FLT__log_select_Diag(v68, 6, "%s pdf state %d id %d\n");
                  v49 = *(a1 + 24) + 1528 * v41;
                  if (*(v49 + 1488))
                  {
                    v50 = v48 - 2 + (v48 - 2) * v60[v41];
                    *(*&v42[v41] + 8 * v48) = v63 + 4 * v50;
                    *(*&v42[v41] + 8 * v48) -= 4;
                    *(*&v43[v41] + 8 * v48) = v62 + 4 * v50;
                    *(*&v43[v41] + 8 * v48) -= 4;
                    result = BET3FLT__FindMsdPDF(v41, v48, v15, v69, v61, v64->i32[v41]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  else if (*(v49 + 1484))
                  {
                    result = BET3FLT__FindContPDF(v41, v48, v15, v69, v64->i32[v41]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  ++v47;
                  v46 += 16;
                }

                while (v47 < *(v66 + v41));
                v11 = *(a1 + 32);
                v4 = v69;
                v9 = v59;
              }
            }

            ++v41;
          }

          while (v41 < v11);
        }

        ++v9;
        a3 = v61;
        if (v9 >= *(a1 + 608))
        {
          v7 = v61[7];
          goto LABEL_61;
        }
      }

      v15[1].i32[0] = BET3FLT__TreeSearch(*(a1 + 8), v9, (v69 + 116), 0, 0);
      BET3FLT__log_select_Diag(v68, 6, "DUR pdf id %d\n");
      if (a3[7])
      {
        v38 = *v69;
        if (v38 >= 1)
        {
          v39 = (*(*(*(v69 + 21) + 8 * v15[4].i32[0]) + 8 * v15[1].i32[0]) + 8);
          v40 = (v38 + 2) - 2;
          do
          {
            v14 = v14 + *v39;
            v13 = v13 + v39[v38];
            ++v39;
            --v40;
          }

          while (v40);
        }

        goto LABEL_42;
      }

      result = BET3FLT__FindDurPDF(v15, v69, 0, v15[4].i32[0], 0, *(a1 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      SetSilenceDuration(a1, v69, a3, v15);
      goto LABEL_41;
    }

    v14 = 0.0;
    v13 = 0.0;
LABEL_61:
    if (v7 < 1 || (kaldi::CuMatrixBase<float>::~CuMatrixBase(), BET3FLT__div_int32_int32_to_Q8_24(v51 - v14, v13), kaldi::CuMatrixBase<float>::~CuMatrixBase(), *(a1 + 16) = v52, *(a1 + 608) < 1))
    {
LABEL_66:
      if (BET3FLT__log_select_GetLogLevel(*(v68 + 32)) >= 0x15)
      {
        OutLabel(a1);
      }

      BET3FLT__log_select_Diag(v68, 2, ">> tree search done\n");
      AddBreakMarks(a1, v4, a3);

      return ParamGenLT(a1, v4);
    }

    else
    {
      v53 = 0;
      v54 = 0;
      while (1)
      {
        v55 = (*(a1 + 600) + v53);
        result = BET3FLT__FindDurPDF(v55, v4, 0, v55[4].i32[0], 0, *(a1 + 16));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        SetSilenceDuration(a1, v4, a3, v55);
        *(a1 + 624) += v55[3].i32[0];
        ++v54;
        v53 += 528;
        if (v54 >= *(a1 + 608))
        {
          goto LABEL_66;
        }
      }
    }
  }

  return result;
}

void SetSilenceDuration(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v4 = *(a1 + 8);
  v5 = *a4;
  if (*(*(v4 + 32) + v5) == 1)
  {
    v8 = *(*(v4 + 1784) + 2 * v5) / *(a3 + 24);
    LODWORD(v4) = *a2;
    if (v8 <= *a2)
    {
      if (v4 >= 1)
      {
        v13 = (*(a4 + 2) + 8);
        v14 = 1;
        do
        {
          *v13++ = 1;
          ++v14;
        }

        while (v14 <= *a2);
        LODWORD(v4) = *a2;
      }

      a4[6] = v4;
    }

    else
    {
      if (v8 >= a4[6])
      {
        if (v4 < 1)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v12 = 0;
          v11 = 0;
          v15 = *(a4 + 2);
          v16 = 2;
          do
          {
            v17 = *(v15 + 4 * v16);
            if (v17 <= 0)
            {
              v17 = 1;
              *(v15 + 4 * v16) = 1;
              LODWORD(v4) = *a2;
            }

            v18 = v16 == 2 || v16 == v4 + 1;
            if (v18)
            {
              v19 = 0;
            }

            else
            {
              v19 = v17;
            }

            v11 += v19;
            if (!v18)
            {
              v17 = 0;
            }

            v12 += v17;
            v20 = v16++ <= v4;
          }

          while (v20);
        }
      }

      else
      {
        if (v4 >= 1)
        {
          v9 = (*(a4 + 2) + 8);
          v10 = 1;
          do
          {
            *v9++ = 1;
            v4 = *a2;
            ++v10;
          }

          while (v10 <= v4);
        }

        v11 = v4 - 2;
        v12 = 2;
      }

      v21 = BET3FLT__div_int32_int32_to_Q8_24((v8 - v12), v11);
      a4[6] = v12;
      LODWORD(v22) = *a2;
      if (*a2 >= 3)
      {
        v23 = v21;
        v24 = 3;
        do
        {
          if (v24 >= v22)
          {
            v25 = v8 - v12;
          }

          else
          {
            v25 = BET3FLT__mul_int32_Q8_24_to_int32(*(*(a4 + 2) + 4 * v24), v23);
          }

          if (v25 <= 1)
          {
            v25 = 1;
          }

          *(*(a4 + 2) + 4 * v24) = v25;
          v12 = a4[6] + v25;
          a4[6] = v12;
          v22 = *a2;
          v20 = v24++ < v22;
        }

        while (v20);
      }
    }
  }
}

uint64_t OutLabel(uint64_t result)
{
  if (*(result + 608) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v1 + 600) + v2;
      result = BET3FLT__log_select_Diag(*v1, 21, "%d %d %d [%d]\n");
      v4 += *(v5 + 24);
      ++v3;
      v2 += 528;
    }

    while (v3 < *(v1 + 608));
  }

  return result;
}

uint64_t AddBreakMarks(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a3 + 80);
  result = strcmp(v6, "PHRASE_TIME");
  if (result)
  {
    result = strcmp(v6, "PHRASE");
    if (result)
    {
      result = strcmp(v6, "WORD");
      if (result)
      {
        result = strcmp(v6, "SYLLABLE");
        if (result)
        {
          result = strcmp(v6, "TIME");
          if (result)
          {
            result = strcmp(v6, "NONE");
            if (result)
            {
              v8 = *a1;

              return BET3FLT__log_select_Error(v8, 55036, "valid breaker is required\n");
            }
          }

          else
          {
            v33 = *(a1 + 608);
            if (v33 >= 1)
            {
              v34 = 0;
              v35 = 0;
              v36 = *(a3 + 88);
              v37 = *a2;
              v38 = *(a1 + 600);
              v39 = v36;
              v40 = 0;
              do
              {
                result = v38 + 528 * v34;
                if (v37 >= 1)
                {
                  v41 = (*(result + 16) + 8);
                  v42 = (v37 + 2) - 2;
                  v40 = v35;
                  do
                  {
                    v43 = *v41++;
                    v40 += v43;
                    --v42;
                  }

                  while (v42);
                }

                if (v40 > v39)
                {
                  v39 = v35 + v36;
                  *(result + 4) |= 2u;
                }

                ++v34;
                v35 = v40;
              }

              while (v34 != v33);
            }
          }
        }

        else
        {
          v29 = *(a1 + 608);
          if (v29 >= 3)
          {
            v30 = (v29 - 2);
            v31 = *(a1 + 600);
            v32 = *(*(a1 + 8) + 112);
            do
            {
              if (*(v32 + *v31))
              {
                v31[133] |= 2u;
              }

              v31 += 132;
              --v30;
            }

            while (v30);
          }
        }
      }

      else
      {
        v25 = *(a1 + 608);
        if (v25 >= 3)
        {
          v26 = (v25 - 2);
          v27 = *(a1 + 600);
          v28 = *(*(a1 + 8) + 112);
          do
          {
            if ((*(v28 + *v27) & 0xFE) == 2)
            {
              v27[133] |= 2u;
            }

            v27 += 132;
            --v26;
          }

          while (v26);
        }
      }
    }

    else
    {
      v21 = *(a1 + 608);
      if (v21 >= 3)
      {
        v22 = (v21 - 2);
        v23 = *(a1 + 600);
        v24 = *(*(a1 + 8) + 112);
        do
        {
          if (*(v24 + *v23) == 3)
          {
            v23[133] |= 2u;
          }

          v23 += 132;
          --v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    v9 = *(a1 + 608);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = *(a1 + 600);
      v13 = *a2;
      v14 = *(a3 + 88);
      v15 = *(*(a1 + 8) + 112);
      do
      {
        result = v12 + 528 * v10;
        if (v13 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (*(result + 16) + 8);
          v18 = (v13 + 2) - 2;
          do
          {
            v19 = *v17++;
            v16 += v19;
            --v18;
          }

          while (v18);
        }

        v11 += v16;
        if (v11 > v14)
        {
          *(result + 4) |= 2u;
          v11 = v16;
        }

        if (*(v15 + *result) == 3 && v10 < v9 - 2)
        {
          v11 = 0;
          *(result + 532) |= 2u;
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  return result;
}

uint64_t ParamGenLT(uint64_t a1, int *a2)
{
  v3 = *a1;
  v4 = 2229280778;
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  bzero(v60, 0x2D8uLL);
  BET3FLT__InitSMatrices(v3, v59);
  BET3FLT__InitSMatrices(v3, v58);
  v5 = heap_Calloc(*(v3 + 8), (*(a1 + 624) + 1), 1);
  *(a1 + 48) = v5;
  if (!v5)
  {
    return v4;
  }

  v6 = heap_Calloc(*(v3 + 8), (*(a1 + 624) + 1), 4);
  *(a1 + 40) = v6;
  if (!v6)
  {
    return v4;
  }

  v7 = *(a1 + 608);
  if (v7 >= 1)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    LODWORD(v10) = *a2;
    do
    {
      if (v10 >= 1)
      {
        v11 = (*(a1 + 600) + 528 * v8);
        v12 = v11[2];
        v13 = 2;
        do
        {
          if (*(v12 + 4 * v13) >= 1)
          {
            v14 = 0;
            v9 = v9;
            do
            {
              *(*(a1 + 48) + v9) = *(v11[39] + v13);
              *(*(a1 + 40) + 4 * v9++) = *(v11[40] + 4 * v13);
              v12 = v11[2];
              ++v14;
            }

            while (v14 < *(v12 + 4 * v13));
          }

          v15 = *(a1 + 32);
          if (v15 >= 1)
          {
            v16 = *(a1 + 24);
            do
            {
              if (v16[372] && ((*(v11[39] + v13) >> v16[3]) & 1) != 0)
              {
                v16[11] += *(v12 + 4 * v13);
              }

              v16 += 382;
              --v15;
            }

            while (v15);
          }

          v10 = *a2;
          v17 = v13++ <= v10;
        }

        while (v17);
        v7 = *(a1 + 608);
      }

      ++v8;
    }

    while (v8 < v7);
  }

  if (*(a1 + 32) < 1)
  {
    v4 = 0;
    goto LABEL_62;
  }

  v18 = 0;
  v19 = 0;
  v4 = 0;
  while (1)
  {
    v20 = *(a1 + 24) + 1528 * v18;
    if (*(v20 + 1488))
    {
      break;
    }

LABEL_58:
    if (++v18 >= *(a1 + 32))
    {
      goto LABEL_62;
    }
  }

  if (!*(v20 + 44))
  {
LABEL_57:
    BET3FLT__DeInitMSDUttModel((a1 + 56), v18);
    goto LABEL_58;
  }

  inited = BET3FLT__InitPStreamParam((v20 + 24), 0);
  if ((inited & 0x80000000) == 0)
  {
    v22 = BET3FLT__InitPStreamSM((v20 + 24), v59);
    v4 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_62;
    }

    v23 = *(a1 + 608);
    if (v23 >= 1)
    {
      v52 = v22;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *a2;
      v57 = v18;
      do
      {
        if (v27 >= 1)
        {
          v53 = v24;
          v28 = *(a1 + 600) + 528 * v24;
          v29 = v28 + 152;
          v30 = v28 + 232;
          v55 = v28;
          v31 = *(v28 + 16);
          v32 = 2;
          do
          {
            if (*(v31 + 4 * v32) >= 1)
            {
              v33 = v26;
              v34 = *(a1 + 24);
              v35 = 1;
              do
              {
                if (*(v34 + 1528 * v18 + 36) >= 1)
                {
                  v56 = v35;
                  v36 = 0;
                  do
                  {
                    v37 = 1 << *(v34 + 1528 * v18 + 12);
                    v19 |= v37;
                    v38 = *(*(*(v20 + 56) + 8) + 8 * v36);
                    v40 = *v38;
                    v39 = v38[1];
                    if (v40 <= v39)
                    {
                      v41 = v39 - v40 + 1;
                      v42 = v26 + v40;
                      do
                      {
                        v43 = v37 ^ 0xFFLL;
                        if ((v42 & 0x80000000) == 0)
                        {
                          v43 = v37 ^ 0xFFLL;
                          if (*(a1 + 624) >= v42)
                          {
                            v43 = *(*(a1 + 48) + v42);
                          }
                        }

                        v19 &= v43;
                        ++v42;
                        --v41;
                      }

                      while (v41);
                    }

                    if ((v37 & *(*(a1 + 48) + v33)) != 0)
                    {
                      if (!v36 || (v37 & v19) != 0)
                      {
                        v45 = 4 * v36 + 4;
                        *(*(*(v20 + 96) + 8 * v25) + 4 * v36) = *(*(*(v29 + 8 * v18) + 8 * v32) + v45);
                        v46 = *(*(*(v30 + 8 * v18) + 8 * v32) + v45);
                        if (*(v34 + 1528 * v18 + 1492))
                        {
                          *(*(*(v20 + 104) + 8 * v25) + 4 * v36) = v46;
                        }

                        else
                        {
                          v47 = v20;
                          v48 = v29;
                          v49 = v26;
                          v50 = BET3FLT__bet3_finv(v46);
                          v26 = v49;
                          v29 = v48;
                          v20 = v47;
                          v18 = v57;
                          *(*(*(v20 + 104) + 8 * v25) + 4 * v36) = v50;
                          v34 = *(a1 + 24);
                        }
                      }

                      else
                      {
                        v44 = *(v20 + 104);
                        *(*(*(v20 + 96) + 8 * v25) + 4 * v36) = 0;
                        *(*(v44 + 8 * v25) + 4 * v36) = 0;
                      }
                    }

                    ++v36;
                  }

                  while (v36 < *(v34 + 1528 * v18 + 36));
                  v31 = *(v55 + 16);
                  v35 = v56;
                }

                v25 += (*(*(a1 + 48) + v33++) >> *(v34 + 1528 * v18 + 12)) & 1;
                v26 = (v26 + 1);
                v17 = v35++ < *(v31 + 4 * v32);
              }

              while (v17);
              v27 = *a2;
              v26 = v33;
            }

            v17 = v32++ <= v27;
          }

          while (v17);
          v23 = *(a1 + 608);
          v24 = v53;
        }

        ++v24;
      }

      while (v24 < v23);
      if (v25 >= 1)
      {
        (**(*(a1 + 24) + 1528 * v18 + 1504))(v20 + 24, 0);
      }

      v4 = v52;
    }

    BET3FLT__FreePStreamSM(v20 + 24);
    goto LABEL_57;
  }

  v4 = inited;
LABEL_62:
  BET3FLT__FreePStreamParam(v60);
  BET3FLT__FreeSMatrices(v59);
  BET3FLT__FreeSMatrices(v58);
  return v4;
}

uint64_t BET3FLT__ParamGenFrames(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v4 = a1;
  v5 = *a1;
  memset(v102, 0, sizeof(v102));
  memset(v101, 0, sizeof(v101));
  *a3 = 0;
  bzero(v103, 0x2D8uLL);
  BET3FLT__InitSMatrices(v5, v102);
  BET3FLT__InitSMatrices(v5, v101);
  v6 = *(v4 + 153);
  v7 = v4[75] + 528 * v6;
  *(v7 + 4) &= ~2u;
  v8 = *(v4 + 152);
  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    LODWORD(v12) = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    LODWORD(v12) = 0;
    while ((*(v7 + 4) & 2) == 0)
    {
      v13 = *a2;
      if (v13 >= 1)
      {
        v14 = (*(v7 + 16) + 8);
        do
        {
          v15 = *v14++;
          LODWORD(v12) = v15 + v12;
          --v13;
        }

        while (v13);
      }

      v7 += 528;
      if (++v11 == v10)
      {
        v11 = v10;
        break;
      }
    }
  }

  BET3FLT__log_select_Diag(v5, 2, "| processing %d models %d frames <=> ");
  if (*(v4 + 8) >= 1)
  {
    v93 = a2;
    v94 = v11;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    inited = 0;
    v91 = -v11;
    v99 = v4;
    while (1)
    {
      v21 = v4[3];
      v22 = v21 + 1528 * v16;
      if (*(v22 + 1484))
      {
        if (*(v22 + 64))
        {
          v23 = v19;
          BET3FLT__FreePStreamParam((v22 + 24));
          v19 = v23;
          v4 = v99;
          v21 = v99[3];
        }

        v24 = v21 + 1528 * v16;
        v25 = *(v24 + 1496);
        v96 = *(v24 + 1500);
        v26 = *(v4 + 153);
        v27 = *(v4 + 152);
        if ((v17 + v11 + v26) < v27 && v18 < v25)
        {
          v29 = *v93;
          v30 = v7;
          do
          {
            if (v29 >= 1)
            {
              v31 = (*(v30 + 16) + 8);
              v32 = (v29 + 2) - 2;
              do
              {
                v33 = *v31++;
                v18 += v33;
                --v32;
              }

              while (v32);
            }

            v30 += 528;
            v17 = (v17 + 1);
          }

          while ((v17 + v11 + v26) < v27 && v18 < v25);
        }

        if (v26 > v19 && v20 < v25)
        {
          v35 = v7 + 528 * v91;
          v36 = *v93;
          do
          {
            if (v36 >= 1)
            {
              v37 = (*(v35 - 512) + 8);
              v38 = (v36 + 2) - 2;
              do
              {
                v39 = *v37++;
                v20 += v39;
                --v38;
              }

              while (v38);
            }

            v19 = (v19 + 1);
            if (v26 <= v19)
            {
              break;
            }

            v35 -= 528;
          }

          while (v20 < v25);
        }

        v92 = v17;
        v98 = v19;
        BET3FLT__log_select_Diag(v5, 3, "L: %d %d  R: %d %d\n");
        *(v22 + 772) = v96 + v12 + v18 + v20 + v96;
        *(v22 + 44) = v12;
        inited = BET3FLT__InitPStreamParam((v22 + 24), 0);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        v40 = *(v22 + 40);
        if (v40 >= 1)
        {
          v41 = 0;
          v19 = v98;
          v100 = v17 + v11 + v98;
          v42 = 0;
          while (1)
          {
            if (*(*(v99[3] + 1528 * v16 + 1520) + 4 * v42) == 1)
            {
              v97 = v42;
              v43 = BET3FLT__InitPStreamParam((v22 + 752), v103);
              if ((v43 & 0x80000000) != 0)
              {
                v45 = v43;
                goto LABEL_97;
              }

              v44 = BET3FLT__InitPStreamSM((v22 + 752), v101);
              v45 = v44;
              if ((v44 & 0x80000000) != 0)
              {
                goto LABEL_97;
              }

              inited = v44;
              if (v96 < 1)
              {
                LODWORD(v46) = 0;
                v48 = v98;
              }

              else
              {
                v46 = 0;
                v47 = *(v22 + 772) & ~(*(v22 + 772) >> 31);
                v48 = v98;
                do
                {
                  if (v46 == v47)
                  {
                    break;
                  }

                  v49 = **(v22 + 784);
                  if (v49 >= 1)
                  {
                    v50 = *(*(v22 + 824) + 8 * v46);
                    v51 = *(*(v22 + 832) + 8 * v46);
                    do
                    {
                      *v50++ = 0;
                      *v51++ = 1065353216;
                      --v49;
                    }

                    while (v49);
                  }

                  ++v46;
                }

                while (v46 != v96);
              }

              LODWORD(v12) = v46;
              if (v100 >= 1)
              {
                v52 = 0;
                v53 = v99[75];
                v54 = *(v99 + 153);
                v55 = *v93;
                v56 = *v93 + 2;
                LODWORD(v12) = v46;
                do
                {
                  v7 = v53 + 528 * (v52 - v48 + v54);
                  if (v55 >= 1)
                  {
                    v57 = *(v7 + 16);
                    v58 = 2;
                    do
                    {
                      v59 = *(v57 + 4 * v58);
                      if (v59 >= 1)
                      {
                        v60 = **(v22 + 784);
                        v12 = v12;
                        v61 = 1;
                        do
                        {
                          if (v60 >= 1)
                          {
                            v62 = *(*(v7 + 152 + 8 * v16) + 8 * v58);
                            v63 = *(*(v22 + 824) + 8 * v12);
                            v64 = *(*(v7 + 232 + 8 * v16) + 8 * v58);
                            v65 = *(*(v22 + 832) + 8 * v12);
                            v66 = 4 * *(v22 + 40);
                            v67 = v60;
                            v68 = v41;
                            do
                            {
                              *v63++ = *(v62 + v68);
                              *v65++ = *(v64 + v68);
                              v68 += v66;
                              --v67;
                            }

                            while (v67);
                          }

                          ++v12;
                        }

                        while (v61++ != v59);
                      }

                      ++v58;
                    }

                    while (v58 != v56);
                  }

                  ++v52;
                }

                while (v52 != v100);
              }

              if (*(v99[3] + 1528 * v16 + 1492))
              {
                v70 = 0;
              }

              else
              {
                v70 = v46 < v12;
              }

              if (v70)
              {
                v71 = v46;
                LODWORD(v46) = **(v22 + 784);
                do
                {
                  if (v46 >= 1)
                  {
                    v72 = v7;
                    v73 = 0;
                    v74 = *(*(v22 + 832) + 8 * v71);
                    do
                    {
                      v75 = BET3FLT__bet3_finv(*(v74 + 4 * v73));
                      v74 = *(*(v22 + 832) + 8 * v71);
                      *(v74 + 4 * v73++) = v75;
                      v46 = **(v22 + 784);
                    }

                    while (v73 < v46);
                    v7 = v72;
                  }

                  ++v71;
                }

                while (v71 != v12);
              }

              v76 = *(v22 + 772);
              if (v12 >= v76)
              {
                v11 = v94;
                v42 = v97;
              }

              else
              {
                v77 = **(v22 + 784);
                v78 = v12;
                v11 = v94;
                v42 = v97;
                do
                {
                  if (v77 >= 1)
                  {
                    v79 = *(*(v22 + 824) + 8 * v78);
                    v80 = *(*(v22 + 832) + 8 * v78);
                    v81 = v77;
                    do
                    {
                      *v79++ = 0;
                      *v80++ = 1065353216;
                      --v81;
                    }

                    while (v81);
                  }

                  ++v78;
                }

                while (v78 != v76);
                LODWORD(v12) = v76;
              }

              (*(*(v99[3] + 1528 * v16 + 1504) + 8 * v42))(v22 + 752, 0);
              v82 = *(v22 + 44);
              if (v82 >= 1)
              {
                v83 = *(v22 + 64);
                v84 = (*(v22 + 792) + 8 * (v20 + v96));
                do
                {
                  v85 = *v84++;
                  v86 = *v85;
                  v87 = *v83++;
                  *(v87 + 4 * v42) = v86;
                  --v82;
                }

                while (v82);
              }

              BET3FLT__FreePStreamSM(v22 + 752);
              BET3FLT__FreePStreamParam((v22 + 752));
              v40 = *(v22 + 40);
              v19 = v98;
            }

            ++v42;
            v41 += 4;
            if (v42 >= v40)
            {
              v4 = v99;
              v17 = v92;
              goto LABEL_90;
            }
          }
        }

        v19 = v98;
      }

LABEL_90:
      if (++v16 >= *(v4 + 8))
      {
        goto LABEL_93;
      }
    }
  }

  inited = 0;
LABEL_93:
  v88 = *(v4 + 153) + v11;
  *(v4 + 153) = v88;
  if (v88 >= *(v4 + 152))
  {
    *a3 = 1;
  }

LABEL_95:
  v45 = inited;
LABEL_97:
  BET3FLT__FreePStreamParam(v103);
  BET3FLT__FreeSMatrices(v102);
  BET3FLT__FreeSMatrices(v101);
  return v45;
}

uint64_t BET3FLT__InitVData(uint64_t a1, void *a2, uint64_t a3)
{
  bzero(a2, 0x430uLL);
  result = BET3FLT__InitModelSet(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    result = BET3FLT__InitTreeSet(a1, a2 + 29);
    if ((result & 0x80000000) == 0)
    {

      return BET3FLT__InitDWinSet(a1, a2 + 42, a3);
    }
  }

  return result;
}

void BET3FLT__DeInitVData(uint64_t a1, _OWORD *a2)
{
  BET3FLT__DeInitModelSet(a1, a2);
  BET3FLT__DeInitTreeSet(a1, a2 + 29);
  BET3FLT__DeInitDWinSet(a1, a2 + 42);

  bzero(a2, 0x430uLL);
}

uint64_t BET3FLT__LoadVData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 456) < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a3 + 2424);
  v8 = a2 + 672;
  v9 = (a3 + 3864);
  do
  {
    ModelFile = BET3FLT__LoadModelFile(a1, a2, v6, (v9 - 300), a3);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FLT__LoadTreesFile(a1, a2 + 464, v6, v7, a3);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FLT__LoadDWinFile(a1, v8, v6, v9);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ++v6;
    v11 = *(a2 + 456);
    v9 += 30;
    v7 += 6;
  }

  while (v6 < v11);
  if (v11 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = a2 + 176;
  v14 = a2 + 416;
  v15 = a2 + 256;
  while (1)
  {
    if (!*(a2 + 568 + 8 * v12))
    {
      v21 = 2229280775;
      BET3FLT__log_select_Error(a1, 55032, "%s tree is required\n");
      return v21;
    }

    if (*(a2 + 336 + 4 * v12) && !*(a2 + 168))
    {
LABEL_38:
      v21 = 2229280775;
      BET3FLT__log_select_Error(a1, 55033, "%s PDF is required\n");
      return v21;
    }

    v16 = *(a2 + 376 + 4 * v12);
    if (v16)
    {
      if (!*(v13 + 8 * v12))
      {
        goto LABEL_38;
      }

      if (!*(v14 + 4 * v12))
      {
        v17 = 1;
        goto LABEL_19;
      }
    }

    else if (!*(v14 + 4 * v12))
    {
      goto LABEL_31;
    }

    if (!*(v15 + 8 * v12))
    {
      goto LABEL_38;
    }

    v17 = 0;
LABEL_19:
    v18 = *(a2 + 128 + 4 * v12);
    if (v18 >= 1)
    {
      break;
    }

LABEL_26:
    if (v16)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    if ((v20 & 1) == 0 && *(a2 + 4 + 4 * v12) % *(v8 + 40 * v12))
    {
      v21 = 2229280775;
      BET3FLT__log_select_Error(a1, 55035, "The number of dynamic windows for %s is not correct %d %d\n");
      return v21;
    }

LABEL_31:
    v21 = 0;
    if (++v12 == v11)
    {
      return v21;
    }
  }

  v19 = 0;
  while ((!v16 || *(*(v13 + 8 * v12) + 8 * v19)) && ((v17 & 1) != 0 || *(*(v15 + 8 * v12) + 8 * v19)))
  {
    if (v18 == ++v19)
    {
      goto LABEL_26;
    }
  }

  v21 = 2229280775;
  BET3FLT__log_select_Error(a1, 55034, "%s PDF layer %d is required\n");
  return v21;
}

uint64_t BET3FLT__InitVStream(uint64_t a1, char *a2, _DWORD *a3)
{
  bzero(a2, 0x788uLL);
  *a2 = a1;
  v6 = a3[33];
  *(a2 + 8) = v6;
  v7 = heap_Calloc(*(a1 + 8), v6, 1528);
  *(a2 + 3) = v7;
  if (!v7)
  {
    return 2229280778;
  }

  if (*(a2 + 8) >= 1)
  {
    v8 = 0;
    v9 = a2 + 648;
    do
    {
      *v9 = 0;
      v10 = *&a3[2 * v8 + 36];
      if (*v10)
      {
        v9 = strcpy(v9, v10);
      }

      ++v8;
      v11 = *(a2 + 8);
      v9 += 128;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(a2 + 3);
      v14 = a3[18];
      v15 = 1528 * v11;
      do
      {
        v16 = v13 + v12;
        *(v16 + 12) = a3[56];
        *(v16 + 24) = a1;
        *(v16 + 752) = a1;
        if (v12)
        {
          if (a3[536])
          {
            *(v13 + v12 + 1488) = 1;
          }

          else
          {
            *(v13 + v12 + 1484) = 1;
          }
        }

        else
        {
          *(v13 + 1480) = 1;
        }

        if (v14 == 1)
        {
          *(v13 + v12 + 1492) = 1;
        }

        v12 += 1528;
        ++a3;
      }

      while (v15 != v12);
    }
  }

  return 0;
}

uint64_t BET3FLT__LoadVStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) < 1)
  {
    return 0;
  }

  v3 = a3;
  v5 = 0;
  v6 = 2229280775;
  v7 = a2 + 672;
  v8 = a2 + 4;
  v9 = a3 + 2184;
  v34 = a2 + 672;
  v35 = a3 + 2344;
  v10 = *(a1 + 24);
  v33 = a2 + 4;
  while (1)
  {
    v11 = (v7 + 40 * v5);
    v12 = v10 + 1528 * v5;
    *(v12 + 56) = v11;
    v13 = *(v12 + 1484);
    if (v13)
    {
      *(v12 + 784) = v11;
    }

    if (*(v12 + 1480))
    {
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v15 = *(v8 + 4 * v5);
    *(v12 + 36) = v15;
    v16 = (v15 / *v11);
    v17 = v10 + 1528 * v5;
    *(v17 + 40) = v16;
    *(v17 + 1496) = *(v3 + 92);
    v18 = heap_Calloc(*(*a1 + 8), v16, 8);
    v19 = *(a1 + 24);
    *(v19 + 1528 * v5 + 1504) = v18;
    if (!v18)
    {
      return 2229280778;
    }

    LODWORD(v20) = *(v19 + 1528 * v5 + 40);
    if (v20 >= 1)
    {
      break;
    }

LABEL_15:
    v23 = heap_Calloc(*(*a1 + 8), v20, 4);
    v24 = *(a1 + 24);
    *(v24 + 1528 * v5 + 1520) = v23;
    if (!v23)
    {
      return 2229280778;
    }

    v25 = v24 + 1528 * v5;
    if (*(v25 + 40) >= 1)
    {
      v26 = v23;
      v32 = v3;
      v27 = 0;
      v28 = *(v35 + 8 * v5);
      while (1)
      {
        v29 = *(v28 + 8 * v27);
        if (!strcmp(v29, "OFF"))
        {
          v30 = 0;
        }

        else
        {
          if (*v29 != 79 || *(v29 + 1) != 78 || *(v29 + 2))
          {
            BET3FLT__log_select_Error(*a1, 55036, "valid breaker setting is required for stream %d\n", v5);
            return 2229280775;
          }

          v30 = 1;
        }

        *(v26 + 4 * v27++) = v30;
        if (v27 >= *(v25 + 40))
        {
          v6 = 2229280775;
          v3 = v32;
          break;
        }
      }
    }

    BET3FLT__log_select_Diag(*a1, 1, "%s: vSize = %d, order = %d, nLayer = %d\n");
    v10 = *(a1 + 24);
    v8 = v33;
    v7 = v34;
    if (*(v10 + 1528 * v5 + 1484))
    {
LABEL_7:
      v14 = v10 + 1528 * v5;
      *(v14 + 764) = *(v8 + 4 * v5);
      *(v14 + 768) = 1;
    }

LABEL_8:
    if (++v5 >= *(a1 + 32))
    {
      return 0;
    }
  }

  v21 = 0;
  while (1)
  {
    v22 = *(*(v9 + 8 * v5) + 8 * v21);
    if (strcmp(v22, "MLPG2"))
    {
      break;
    }

    *(*(v19 + 1528 * v5 + 1504) + 8 * v21++) = BET3FLT__mlpg2;
    v19 = *(a1 + 24);
    v20 = *(v19 + 1528 * v5 + 40);
    if (v21 >= v20)
    {
      goto LABEL_15;
    }
  }

  BET3FLT__log_select_Error(*a1, 55036, "invalid solver for stream %d: %s\n", v5, v22);
  return v6;
}

void BET3FLT__DeInitVStream(int *a1)
{
  if (a1 && *a1)
  {
    if (a1[8] >= 1)
    {
      v2 = 0;
      v3 = *(a1 + 3);
      v4 = 1520;
      do
      {
        if (!v3)
        {
          break;
        }

        BET3FLT__FreePStreamSM(v3 + v4 - 1496);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 1496));
        BET3FLT__FreePStreamSM(*(a1 + 3) + v4 - 768);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 768));
        v3 = *(a1 + 3);
        v5 = *(v3 + v4 - 16);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          v3 = *(a1 + 3);
          *(v3 + v4 - 16) = 0;
        }

        v6 = *(v3 + v4);
        if (v6)
        {
          heap_Free(*(*a1 + 8), v6);
          v3 = *(a1 + 3);
          *(v3 + v4) = 0;
        }

        ++v2;
        v4 += 1528;
      }

      while (v2 < a1[8]);
    }

    v7 = *(a1 + 6);
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
      *(a1 + 6) = 0;
    }

    v8 = *(a1 + 5);
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
      *(a1 + 5) = 0;
    }

    v9 = *(a1 + 3);
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
      *(a1 + 3) = 0;
    }

    BET3FLT__DeInitUttModel(a1 + 7);

    bzero(a1, 0x788uLL);
  }
}

void BET3FLT__DeInitVParam(uint64_t a1, void *a2)
{
  if (a2[954])
  {
    for (i = 0; i != 20; ++i)
    {
      if (*(a2[954] + 8 * i))
      {
        for (j = 0; j != 800; j += 8)
        {
          v6 = *(*(a2[954] + 8 * i) + j);
          if (v6)
          {
            heap_Free(*(a1 + 8), v6);
            *(*(a2[954] + 8 * i) + j) = 0;
          }
        }

        v7 = *(a2[954] + 8 * i);
        if (v7)
        {
          heap_Free(*(a1 + 8), v7);
          *(a2[954] + 8 * i) = 0;
        }
      }

      v8 = *(a2[955] + 8 * i);
      if (v8)
      {
        heap_Free(*(a1 + 8), v8);
        *(a2[955] + 8 * i) = 0;
      }

      v9 = *(a2[953] + 8 * i);
      if (v9)
      {
        heap_Free(*(a1 + 8), v9);
        *(a2[953] + 8 * i) = 0;
      }
    }

    v10 = a2[954];
    if (v10)
    {
      heap_Free(*(a1 + 8), v10);
      a2[954] = 0;
    }

    v11 = a2[955];
    if (v11)
    {
      heap_Free(*(a1 + 8), v11);
      a2[955] = 0;
    }

    v12 = a2[953];
    if (v12)
    {
      heap_Free(*(a1 + 8), v12);
      a2[953] = 0;
    }
  }

  v13 = a2[10];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    a2[10] = 0;
  }

  v14 = a2[15];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    a2[15] = 0;
  }

  v15 = a2[956];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    a2[956] = 0;
  }

  v16 = 0;
  v17 = a2 + 18;
  v18 = a2 + 53;
  v19 = a2 + 33;
  v20 = a2 + 293;
  v21 = a2 + 273;
  v22 = a2 + 283;
  v23 = a2;
  do
  {
    v24 = v17[v16];
    if (v24)
    {
      heap_Free(*(a1 + 8), v24);
      v17[v16] = 0;
    }

    v25 = v18[v16];
    if (v25)
    {
      heap_Free(*(a1 + 8), v25);
      v18[v16] = 0;
    }

    v26 = 5;
    v27 = v23;
    do
    {
      v28 = v27[63];
      if (v28)
      {
        heap_Free(*(a1 + 8), v28);
        v27[63] = 0;
      }

      v29 = v27[163];
      if (v29)
      {
        heap_Free(*(a1 + 8), v29);
        v27[163] = 0;
      }

      ++v27;
      --v26;
    }

    while (v26);
    v30 = 213;
    v18 = a2 + 53;
    do
    {
      v31 = v23[v30];
      if (v31)
      {
        heap_Free(*(a1 + 8), v31);
        v23[v30] = 0;
      }

      ++v30;
    }

    while (v30 != 218);
    if (*(v19 + v16))
    {
      v32 = 0;
      do
      {
        v33 = v20[v16];
        if (v33)
        {
          v34 = *(v33 + 8 * v32);
          if (v34)
          {
            heap_Free(*(a1 + 8), v34);
            *(v20[v16] + 8 * v32) = 0;
          }
        }

        v35 = v21[v16];
        if (v35)
        {
          v36 = *(v35 + 8 * v32);
          if (v36)
          {
            heap_Free(*(a1 + 8), v36);
            *(v21[v16] + 8 * v32) = 0;
          }
        }

        v37 = v22[v16];
        if (v37)
        {
          v38 = *(v37 + 8 * v32);
          if (v38)
          {
            heap_Free(*(a1 + 8), v38);
            *(v22[v16] + 8 * v32) = 0;
          }
        }

        ++v32;
      }

      while (v32 < *(v19 + v16));
    }

    v39 = v20[v16];
    if (v39)
    {
      heap_Free(*(a1 + 8), v39);
      v20[v16] = 0;
    }

    v40 = v21[v16];
    v17 = a2 + 18;
    if (v40)
    {
      heap_Free(*(a1 + 8), v40);
      v21[v16] = 0;
    }

    v41 = v22[v16];
    if (v41)
    {
      heap_Free(*(a1 + 8), v41);
      v22[v16] = 0;
    }

    ++v16;
    v23 += 5;
  }

  while (v16 != 10);
  for (k = 663; k != 919; ++k)
  {
    v43 = a2[k];
    if (v43)
    {
      heap_Free(*(a1 + 8), v43);
      a2[k] = 0;
    }
  }

  if (a2[952])
  {
    for (m = 0; m != 2048; m += 8)
    {
      v45 = *(a2[952] + m);
      if (v45)
      {
        heap_Free(*(a1 + 8), v45);
        *(a2[952] + m) = 0;
      }
    }

    heap_Free(*(a1 + 8), a2[952]);
  }

  bzero(a2, 0x1F30uLL);
}

uint64_t synth_float_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth_Bet3;
  return result;
}

uint64_t synth_bet3_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2164269063;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  __s1 = 0;
  v16 = xmmword_1F42D7268;
  v17 = off_1F42D7278;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v21);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjOpen");
    v10 = heap_Calloc(*(v21 + 8), 1, 1904);
    if (v10)
    {
      v11 = v10;
      *v10 = a3;
      v10[1] = a4;
      v12 = v21;
      v10[2] = v21;
      Listen = critsec_ObjOpen(*(v12 + 16), *(v12 + 8), v10 + 3);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      *&v16 = v11;
      Listen = synth_bet3_loc_ParamGetListen(v11, "volume", 0, 100, 80, &v16, &v19);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v11, "rate", 50, 400, 100, &v16, &v19);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v11, "pitch", 50, 200, 100, &v16, &v19);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v11, "rate_baseline", 50, 400, 100, &v16, &v19);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v11, "pitch_baseline", 50, 200, 100, &v16, &v19);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v11, "audiooutputbufsamples", 1, 0x7FFFFFFFLL, 256, &v16, &v19);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      *(v11 + 40) = v19;
      if ((paramc_ParamGetStr(*(v21 + 40), "synth_type", &__s1) & 0x80000000) == 0)
      {
        v14 = __s1;
        if (strcmp(__s1, "mlsa") && strcmp(v14, "mfs"))
        {
          log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", v14);
          return 7;
        }

        log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer");
      }

      *(v11 + 1896) = 0;
      Listen = synth_bet3_loc_SynthInit_MLSA(v11);
      if ((Listen & 0x80000000) != 0)
      {
LABEL_21:
        Object = Listen;
      }

      else
      {
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v20);
        if ((Object & 0x80000000) == 0)
        {
          *(v11 + 32) = *(v20 + 8);
          *a5 = v11;
          *(a5 + 8) = 9346;
          goto LABEL_23;
        }

        log_OutPublic(*(*(v11 + 16) + 32), "SYNTH_BET3", 56001, 0);
      }

      *a5 = v11;
      *(a5 + 8) = 9346;
      synth_bet3_ObjClose(v11, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      goto LABEL_23;
    }

    log_OutPublic(*(v21 + 32), "SYNTH_BET3", 56000, 0);
    Object = 2164269066;
LABEL_23:
    log_OutText(*(v21 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjOpen: %x", Object);
    log_OutEvent(*(v21 + 32), 22, "");
  }

  return Object;
}

uint64_t synth_bet3_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 9346, 1904);
  if (v3 < 0)
  {
    return 2164269064;
  }

  LODWORD(v4) = v3;
  v5 = *(a1 + 16);
  log_OutText(*(v5 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjClose");
  v6 = *(v5 + 40);
  v30 = a1;
  v29 = *(&xmmword_1F42D7268 + 8);
  v31 = *(&xmmword_1F42D7268 + 8);
  v7 = paramc_ListenerRemove(v6, "volume", &v30);
  v8 = *(v5 + 40);
  if (v7 < 0)
  {
    LODWORD(v4) = v7;
  }

  v30 = a1;
  v31 = v29;
  v9 = paramc_ListenerRemove(v8, "rate", &v30);
  v10 = *(v5 + 40);
  if (v9 < 0 && v4 > -1)
  {
    LODWORD(v4) = v9;
  }

  v30 = a1;
  v31 = v29;
  v12 = paramc_ListenerRemove(v10, "pitch", &v30);
  v13 = *(v5 + 40);
  if (v12 < 0 && v4 > -1)
  {
    LODWORD(v4) = v12;
  }

  v30 = a1;
  v31 = v29;
  v15 = paramc_ListenerRemove(v13, "rate_baseline", &v30);
  v16 = *(v5 + 40);
  if (v15 < 0 && v4 > -1)
  {
    LODWORD(v4) = v15;
  }

  v30 = a1;
  v31 = v29;
  v18 = paramc_ListenerRemove(v16, "pitch_baseline", &v30);
  v19 = *(v5 + 40);
  if (v18 < 0 && v4 > -1)
  {
    LODWORD(v4) = v18;
  }

  v30 = a1;
  v31 = v29;
  v21 = paramc_ListenerRemove(v19, "audiooutputbufsamples", &v30);
  if (v21 >= 0 || v4 <= -1)
  {
    v4 = v4;
  }

  else
  {
    v4 = v21;
  }

  if (*(a1 + 32))
  {
    v23 = objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    if (v23 >= 0 || v4 <= -1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v23;
    }
  }

  if (!*(a1 + 1896))
  {
    MFVSyn__deinit__MVF_Synthesis((a1 + 72));
  }

  v25 = *(a1 + 24);
  if (v25)
  {
    v26 = critsec_ObjClose(v25);
    if (v4 > -1 && v26 < 0)
    {
      v4 = v26;
    }

    else
    {
      v4 = v4;
    }
  }

  heap_Free(*(v5 + 8), a1);
  log_OutText(*(v5 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjClose: %x", v4);
  return v4;
}

uint64_t synth_bet3_ObjReopen(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v3 = *(a1 + 16);
  log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjReopen");
  inited = synth_bet3_loc_SynthInit_MLSA(a1);
  log_OutText(*(v3 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjReopen: %x", inited);
  return inited;
}

uint64_t synth_bet3_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  strcpy(__s, "audio/L16;rate=");
  v8 = strlen(__s);
  LH_itoa(*(a1 + 48), &__s[v8], 0xAu);
  v9 = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-bet3-speech-frames;version=5.0", 0, 0, a1 + 1792);
  if ((v9 & 0x80000000) != 0 || (v9 = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 0, a1 + 1808), (v9 & 0x80000000) != 0))
  {
    v14 = v9;
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56002, "%s%s");
LABEL_12:
    *(a1 + 1856) = 0;
LABEL_13:
    synth_bet3_ProcessEnd(a1, v6);
    return v14;
  }

  v10 = (*(*(a1 + 32) + 64))(a3, a4, 16, __s, 0, 1, a1 + 1824);
  if ((v10 & 0x80000000) != 0)
  {
    v14 = v10;
    goto LABEL_11;
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 64);
  v13 = (*(v11 + 152))();
  v14 = v12(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", v13, 1, a1 + 1840);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_11:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56003, "%s%s");
    goto LABEL_12;
  }

  if (!*(a1 + 1896))
  {
    v14 = BET3FLT__MFVSyn__reset__MVF_Synthesis(a1 + 72);
    *(a1 + 1856) = 0;
    if ((v14 & 0x80000000) == 0)
    {
      return v14;
    }

    goto LABEL_13;
  }

  *(a1 + 1856) = 0;
  return v14;
}

uint64_t synth_bet3_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v115 = *MEMORY[0x1E69E9840];
  v8 = -2130698234;
  v9 = safeh_HandleCheck(a1, a2, 9346, 1904);
  if (v9 < 0)
  {
    return 2164269064;
  }

  v10 = 1;
  if (v9 || !a1)
  {
    return v10;
  }

  __n = 0;
  v112 = 0;
  __src = 0;
  v111 = 0;
  v108 = 0;
  __dst = 0;
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *a5 = 1;
  v11 = *(a1 + 40);
  v12 = *(a1 + 44);
  if (v11 >= v12)
  {
    if (v12)
    {
      v12 *= v11 / v12;
    }

    else
    {
      v12 = *(a1 + 40);
    }
  }

  v10 = (*(*(a1 + 32) + 144))(*(a1 + 1792), *(a1 + 1800), &__n + 4, &v112);
  if ((v10 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56004, "%s%x");
    return v10;
  }

  if (HIDWORD(__n))
  {
    v14 = (*(*(a1 + 32) + 88))(*(a1 + 1792), *(a1 + 1800), &v111, &__n + 4);
    if ((v14 & 0x80000000) != 0)
    {
      v10 = v14;
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x");
      return v10;
    }

    v10 = (*(*(a1 + 32) + 88))(*(a1 + 1808), *(a1 + 1816), &__src, &__n);
    if ((v10 & 0x80000000) != 0)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x");
      return v10;
    }

    if (HIDWORD(__n) >= 8)
    {
      v15 = (*(*(a1 + 32) + 112))(*(a1 + 1824), *(a1 + 1832), &v108, 2 * v12);
      if ((v15 & 0x80000000) != 0)
      {
        v10 = v15;
        v89 = *(*(a1 + 16) + 32);
LABEL_189:
        log_OutPublic(v89, "SYNTH_BET3", 56007, "%s%s%s%x");
        return v10;
      }

      if (!__n || (v16 = (*(*(a1 + 32) + 112))(*(a1 + 1840), *(a1 + 1848), &__dst), (v16 & 0x80000000) == 0))
      {
        v10 = critsec_Enter(*(a1 + 24));
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v17 = *v111;
        v107 = 0;
        v106 = 0;
        v102 = *(v17 + 40);
        v103 = *(v17 + 48);
        if (__n && __src && __dst)
        {
          memcpy(__dst, __src, __n);
          LODWORD(__n) = __n >> 5;
        }

        v18 = *(v17 + 32);
        if (v18 < 1)
        {
          goto LABEL_206;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = *(v17 + 24);
        do
        {
          v23 = v22[3];
          if (v23 == 1)
          {
            v24 = v22;
          }

          else
          {
            v24 = v21;
          }

          if (v23 == 2)
          {
            v24 = v21;
            v25 = v22;
          }

          else
          {
            v25 = v20;
          }

          if (v23 == 3)
          {
            v19 = v22;
          }

          else
          {
            v21 = v24;
            v20 = v25;
          }

          v22 += 382;
          --v18;
        }

        while (v18);
        if (!v21 || !v20)
        {
          goto LABEL_206;
        }

        v26 = heap_Calloc(*(*(a1 + 16) + 8), v21[11], 1);
        if (!v26)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56000, 0);
          v8 = -2130698230;
          goto LABEL_206;
        }

        v27 = v26;
        v104 = 0;
        v105 = 0;
        LODWORD(i) = 0;
        v29 = *(a1 + 1856);
        v8 = v10;
        while (1)
        {
          if (v29 >= v21[11] || *(a1 + 52) && *(a1 + 44) + HIDWORD(v104) > v12)
          {
LABEL_154:
            heap_Free(*(*(a1 + 16) + 8), v27);
            if (HIDWORD(v104) && (v8 & 0x80000000) == 0 && (v8 = (*(*(a1 + 32) + 120))(*(a1 + 1824), *(a1 + 1832), (2 * HIDWORD(v104))), v8 < 0))
            {
              v86 = *(*(a1 + 16) + 32);
LABEL_203:
              log_OutPublic(v86, "SYNTH_BET3", 56007, "%s%s%s%x");
            }

            else if (v8 < 0 || !i)
            {
              if ((v8 & 0x80000000) == 0)
              {
                goto LABEL_193;
              }
            }

            else
            {
              v8 = (*(*(a1 + 32) + 120))(*(a1 + 1840), *(a1 + 1848), (32 * i));
              if (v8 < 0)
              {
                v86 = *(*(a1 + 16) + 32);
                goto LABEL_203;
              }

LABEL_193:
              if (*(a1 + 1856) < v21[11])
              {
                v97 = 2;
                goto LABEL_199;
              }

              v8 = (*(*(a1 + 32) + 96))(*(a1 + 1792), *(a1 + 1800), 8);
              if (v8 < 0)
              {
                v98 = *(*(a1 + 16) + 32);
LABEL_205:
                log_OutPublic(v98, "SYNTH_BET3", 56006, "%s%s%s%x");
              }

              else
              {
                *(a1 + 1856) = 0;
                if (HIDWORD(__n) <= 8)
                {
                  v97 = 1;
                }

                else
                {
                  v97 = 2;
                }

LABEL_199:
                *a5 = v97;
                if (i)
                {
                  v8 = (*(*(a1 + 32) + 96))(*(a1 + 1808), *(a1 + 1816), (32 * i));
                  if (v8 < 0)
                  {
                    v98 = *(*(a1 + 16) + 32);
                    goto LABEL_205;
                  }
                }
              }
            }

LABEL_206:
            v99 = critsec_Leave(*(a1 + 24));
            if (v99 >= 0 || v8 <= -1)
            {
              return v8;
            }

            else
            {
              return v99;
            }
          }

          v30 = __dst;
          if (__dst)
          {
            v31 = i >= __n;
          }

          else
          {
            v31 = 1;
          }

          if (!v31)
          {
            for (i = i; v30 && i < __n; ++i)
            {
              v32 = &v30[8 * i];
              v33 = v32[3];
              v34 = *(a1 + 52);
              if (v33 > *(a1 + 1860))
              {
                if (v34)
                {
                  break;
                }

LABEL_58:
                v40 = v30[3];
                v41 = v33 - v40;
                v42 = *v32;
                if (*v32 == 8 || v42 == 26)
                {
                  if (v41 < v21[11])
                  {
                    *(v27 + v41) = 1;
                    v30 = __dst;
                  }
                }

                else if (v42 == 33)
                {
                  v44 = &v30[8 * v105];
                  v45 = *(v44 + 3) - v40;
                  if (v32[6] == 35)
                  {
                    v105 = i;
                    if ((v33 == v40 || v41 < v21[11] && *(v27 + v41) || *(v44 + 4) + v45 == v41) && v32[4])
                    {
                      v46 = 0;
                      do
                      {
                        if (v41 + v46 < v21[11])
                        {
                          *(v27 + v41 + v46) = 2;
                          v30 = __dst;
                        }

                        ++v46;
                      }

                      while (v46 < v30[8 * i + 4]);
                    }
                  }

                  else if (v41 < v21[11] && !*(v27 + v41))
                  {
                    v47 = *(v44 + 4);
                    if (v47)
                    {
                      if (v47 + v45 == v41)
                      {
                        v48 = 0;
                        do
                        {
                          if (v45 + v48 < v21[11])
                          {
                            *(v27 + (v45 + v48)) = 0;
                            v30 = __dst;
                          }

                          ++v48;
                        }

                        while (v48 < v30[8 * v105 + 4]);
                      }
                    }
                  }
                }

                continue;
              }

              if (!v34)
              {
                goto LABEL_58;
              }

              if (!i)
              {
                LODWORD(v104) = v30[3];
              }

              HIDWORD(v35) = 0;
              *(a1 + 1880) = 0;
              v36 = v30[8 * i];
              if (v36 > 17)
              {
                if (v36 == 18)
                {
                  critsec_Leave(*(a1 + 24));
                  v37 = *(*(a1 + 16) + 40);
                  v38 = *(__dst + 8 * i + 6);
                  v39 = "rate";
                }

                else
                {
                  if (v36 != 24)
                  {
                    goto LABEL_92;
                  }

                  critsec_Leave(*(a1 + 24));
                  v37 = *(*(a1 + 16) + 40);
                  v38 = *(__dst + 8 * i + 6);
                  v39 = "volume";
                }
              }

              else if (v36 == 16)
              {
                critsec_Leave(*(a1 + 24));
                v37 = *(*(a1 + 16) + 40);
                v38 = *(__dst + 8 * i + 6);
                v39 = "pitch";
              }

              else
              {
                if (v36 != 17)
                {
                  goto LABEL_92;
                }

                critsec_Leave(*(a1 + 24));
                v37 = *(*(a1 + 16) + 40);
                v38 = *(__dst + 8 * i + 6);
                v39 = "timbre";
              }

              paramc_ParamSetUInt(v37, v39, v38);
              critsec_Enter(*(a1 + 24));
LABEL_92:
              v30 = __dst;
              v49 = __dst + 32 * i;
              *(v49 + 3) = *(a1 + 1864);
              if (i + 1 >= __n)
              {
                v50 = *(a1 + 44);
LABEL_96:
                LODWORD(v35) = *(v49 + 4);
                v52 = v35;
                v53 = ceil(v50 * *(a1 + 132));
                goto LABEL_97;
              }

              v50 = *(a1 + 44);
              if (v30[8 * i + 8] != 8)
              {
                goto LABEL_96;
              }

              *(a1 + 1880) = v33 - v104;
              v51 = *(v49 + 4);
              *(a1 + 1884) = v51 + v33 - v104;
              v52 = v51;
              v53 = v50;
LABEL_97:
              *(v49 + 4) = (v52 * v53 + 0.5);
            }
          }

          v54 = 0.0;
          v55 = 0.0;
          if ((*(v103 + *v21) & 4) != 0)
          {
            v56 = *(a1 + 64);
            v57 = *v20;
            v58 = exp(**(*(v20 + 8) + 8 * v57));
            v55 = *(a1 + 68) + (v56 * v58);
            *v20 = v57 + 1;
          }

          if (v19 && ((*(v103 + *v21) >> v19[3]) & 1) != 0)
          {
            v59 = *v19;
            v54 = exp(**(*(v19 + 8) + 8 * v59));
            *v19 = v59 + 1;
          }

          v60 = *(a1 + 272);
          v29 = *(a1 + 1856);
          if ((v60 & 0x80000000) == 0)
          {
            v61 = *(*(v21 + 8) + 8 * v29);
            v62 = v60 + 1;
            v63 = v114;
            v64 = v62;
            do
            {
              v65 = *v61++;
              *v63++ = v65;
              --v64;
            }

            while (v64);
            v66 = *(a1 + 1872);
            if (v66)
            {
              v67 = v114;
              do
              {
                v68 = *v66++;
                *v67 = *v67 + v68;
                ++v67;
                --v62;
              }

              while (v62);
            }
          }

          v107 = 0;
          v69 = *(a1 + 52);
          if (!v69 && (**(*(v21 + 8) + 8 * v29) == 0.0 || v29 >= v21[11] || *(v27 + v29) == 2))
          {
            v106 = vcvtps_u32_f32(*(a1 + 132) * *(a1 + 552));
          }

          else
          {
            v70 = *(a1 + 132);
            v71 = *(a1 + 1880);
            if (v71 <= v29 && *(a1 + 1884) > v29)
            {
              *(a1 + 132) = 1065353216;
            }

            if (v69 || !v29 || !*(a1 + 56))
            {
              v8 = BET3FLT__MFVSyn__SynthesisOneFrame(a1 + 72, v114, &v106, &v107, v55, 0.0, *(v102 + 4 * *v21), v54);
              v71 = *(a1 + 1880);
              v29 = *(a1 + 1856);
            }

            if (v71 <= v29 && *(a1 + 1884) > v29)
            {
              *(a1 + 132) = v70;
            }
          }

          v72 = 0;
          if ((v8 & 0x80000000) == 0)
          {
            v73 = v106;
            if (v106)
            {
              break;
            }
          }

LABEL_152:
          if (v72 || v8 < 0)
          {
            goto LABEL_154;
          }
        }

        v74.i32[0] = 1;
        v74.i32[1] = v106;
        *(a1 + 1860) = vadd_s32(*(a1 + 1860), v74);
        if (v73 + HIDWORD(v104) <= v12)
        {
          v78 = 0;
          goto LABEL_142;
        }

        if (HIDWORD(v104))
        {
          v75 = (*(*(a1 + 32) + 120))(*(a1 + 1824), *(a1 + 1832), (2 * HIDWORD(v104)));
          if (v75 < 0)
          {
            v8 = v75;
            goto LABEL_150;
          }

          v73 = v106;
        }

        if (v73 <= v12)
        {
          v76 = v12;
        }

        else
        {
          v76 = v73;
        }

        if (*(a1 + 52))
        {
          v77 = v73;
        }

        else
        {
          v77 = v76;
        }

        v8 = (*(*(a1 + 32) + 112))(*(a1 + 1824), *(a1 + 1832), &v108, 2 * v77);
        if ((v8 & 0x80000000) == 0)
        {
          HIDWORD(v104) = 0;
          v78 = *(a1 + 52) != 0;
LABEL_142:
          v79 = v107;
          if (v107)
          {
            v80 = v106;
            if (v106)
            {
              v81 = v108;
              v82 = HIDWORD(v104);
              v83 = v106;
              do
              {
                v84 = *v79++;
                *(v81 + 2 * v82++) = v84;
                --v83;
              }

              while (v83);
            }

            v85 = HIDWORD(v104);
          }

          else
          {
            v85 = HIDWORD(v104);
            v101 = v78;
            bzero((v108 + 2 * HIDWORD(v104)), v106 + 2);
            v78 = v101;
            v80 = v106;
          }

          HIDWORD(v104) = v80 + v85;
          goto LABEL_151;
        }

LABEL_150:
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", "stream", "audio output", "lhError", v8);
        HIDWORD(v104) = 0;
        v78 = *(a1 + 52);
LABEL_151:
        v72 = v78 != 0;
        ++*v21;
        v29 = *(a1 + 1856) + 1;
        *(a1 + 1856) = v29;
        goto LABEL_152;
      }

LABEL_188:
      v10 = v16;
      v89 = *(*(a1 + 16) + 32);
      goto LABEL_189;
    }
  }

  else
  {
    if (!v112)
    {
      *a5 = 0;
      return v10;
    }

    v87 = *(a1 + 1824);
    if (!v87 || (v10 = (*(*(a1 + 32) + 72))(v87, *(a1 + 1832)), *(a1 + 1824) = safeh_GetNullHandle(), *(a1 + 1832) = v88, (v10 & 0x80000000) == 0))
    {
      if (*(a1 + 1840))
      {
        v10 = (*(*(a1 + 32) + 88))(*(a1 + 1808), *(a1 + 1816), &__src, &__n);
        if ((v10 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x");
        }

        else if (__n)
        {
          v10 = (*(*(a1 + 32) + 112))(*(a1 + 1840), *(a1 + 1848), &__dst);
          if ((v10 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x");
          }
        }

        if ((v10 & 0x80000000) == 0 && __n && __src && __dst)
        {
          memcpy(__dst, __src, __n);
          v90 = __n;
          LODWORD(__n) = __n >> 5;
          if (v90 >= 0x20)
          {
            LODWORD(v91) = 0;
            v92 = 0;
            v93 = *(a1 + 1864);
            v94 = __dst + 16;
            do
            {
              *(v94 - 1) = v93;
              *v94 = 0;
              ++v92;
              v91 = (v91 + 32);
              v94 += 8;
            }

            while (v92 < __n);
          }

          else
          {
            v91 = 0;
          }

          v16 = (*(*(a1 + 32) + 120))(*(a1 + 1840), *(a1 + 1848), v91);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_188;
          }

          v95 = (*(*(a1 + 32) + 96))(*(a1 + 1808), *(a1 + 1816), v91);
          if ((v95 & 0x80000000) != 0)
          {
            v10 = v95;
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56006, "%s%s%s%x");
            return v10;
          }
        }

        else if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v10 = (*(*(a1 + 32) + 72))(*(a1 + 1840), *(a1 + 1848));
        *(a1 + 1840) = safeh_GetNullHandle();
        *(a1 + 1848) = v96;
      }
    }
  }

  return v10;
}

uint64_t synth_bet3_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 9346, 1904);
  if ((v3 & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v4 = v3;
  *(a1 + 1860) = 0;
  v5 = a1[224];
  if (v5)
  {
    v4 = (*(a1[4] + 72))(v5, a1[225]);
    a1[224] = safeh_GetNullHandle();
    a1[225] = v6;
  }

  v7 = a1[226];
  if (v7)
  {
    v8 = (*(a1[4] + 72))(v7, a1[227]);
    if (v4 > -1 && v8 < 0)
    {
      v4 = v8;
    }

    else
    {
      v4 = v4;
    }

    a1[226] = safeh_GetNullHandle();
    a1[227] = v10;
  }

  v11 = a1[228];
  if (v11)
  {
    v12 = (*(a1[4] + 72))(v11, a1[229]);
    if (v4 > -1 && v12 < 0)
    {
      v4 = v12;
    }

    else
    {
      v4 = v4;
    }

    a1[228] = safeh_GetNullHandle();
    a1[229] = v14;
  }

  v15 = a1[230];
  if (v15)
  {
    v16 = (*(a1[4] + 72))(v15, a1[231]);
    if (v4 > -1 && v16 < 0)
    {
      v4 = v16;
    }

    else
    {
      v4 = v4;
    }

    a1[230] = safeh_GetNullHandle();
    a1[231] = v18;
  }

  return v4;
}

uint64_t synth_bet3_loc_ParamCheckChange(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  if (!strcmp(__s1, "audiooutputbufsamples"))
  {
    if (LH_atoi(a3) <= 0)
    {
      result = 2164269071;
    }

    else
    {
      result = 0;
    }
  }

  else if (!strcmp(__s1, "volume"))
  {
    if (LH_atoi(a3) <= 0x64)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

  else
  {
    if (!strcmp(__s1, "rate") || !strcmp(__s1, "rate_baseline"))
    {
      v8 = __CFADD__(LH_atoi(a3) - 401, 351);
    }

    else
    {
      if (!strcmp(__s1, "ratewpm"))
      {
        result = 2164269057;
        goto LABEL_19;
      }

      if (strcmp(__s1, "pitch") && strcmp(__s1, "pitch_baseline"))
      {
        result = 0;
        goto LABEL_19;
      }

      v8 = __CFADD__(LH_atoi(a3) - 201, 151);
    }

    if (v8)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

LABEL_19:
  *a4 = result >= 0;
  return result;
}

uint64_t synth_bet3_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (strcmp(__s1, "audiooutputbufsamples") && strcmp(__s1, "volume") && strcmp(__s1, "rate") && strcmp(__s1, "rate_baseline") && strcmp(__s1, "ratewpm") && strcmp(__s1, "pitch") && strcmp(__s1, "pitch_baseline"))
  {
    return 0;
  }

  v7 = LH_atoi(a3);

  return synth_bet3_loc_ParamSet(a1, __s1, v7);
}

uint64_t synth_bet3_loc_ParamGetListen(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, int *a7)
{
  if (((paramc_ParamGetInt(*(*(a1 + 16) + 40), a2, a7) & 0x80000000) != 0 || (a5 = a3, *a7 < a3) || (a5 = a4, *a7 > a4)) && (v14 = paramc_ParamSetInt(*(*(a1 + 16) + 40), a2, a5), *a7 = a5, (v14 & 0x80000000) != 0))
  {
    v16 = v14;
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56009, "%s%s");
  }

  else
  {
    v15 = *(*(a1 + 16) + 40);
    v18 = *a6;
    v19 = *(a6 + 2);
    v16 = paramc_ListenerAdd(v15, a2, &v18);
    if ((v16 & 0x80000000) != 0)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56010, 0);
    }
  }

  return v16;
}

uint64_t synth_bet3_loc_SynthInit_MLSA(uint64_t a1)
{
  v28 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  v27 = 0;
  v20 = 0;
  v3 = "frequencyhz";
  Int = paramc_ParamGetInt(*(v2 + 40), "frequencyhz", &v28 + 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  MFVSyn__deinit__MVF_Synthesis((a1 + 72));
  *(a1 + 48) = HIDWORD(v28);
  v5 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && strcmp(__s1, "bet3") == 0;
  *(a1 + 52) = v5;
  v6 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && !strcmp(__s1, "bet4") && (paramc_ParamGetStr(*(v2 + 40), "bet4suppressbet3pcm", &__s1) & 0x80000000) == 0 && strcmp(__s1, "yes") == 0;
  *(a1 + 56) = v6;
  v22 = 0.0;
  v25 = 0x100000000;
  v26 = 0;
  v23 = xmmword_1C382F310;
  v24 = 1065353216;
  BYTE5(v25) = *(a1 + 52) != 0;
  LODWORD(v26) = 4;
  v21[0] = vcvtps_s32_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(wave_t__convertFromF0ToTp__SR(SHIDWORD(v28), 700.0))));
  v21[1] = vcvtms_s32_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(wave_t__convertFromF0ToTp__SR(SHIDWORD(v28), 40.0))));
  v3 = "bet2voicealpha";
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicealpha", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v8 = atof(__s1);
  paramc_ParamRelease(*(v2 + 40));
  v3 = "bet2voicebeta";
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicebeta", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    goto LABEL_50;
  }

  v9 = atof(__s1);
  paramc_ParamRelease(*(v2 + 40));
  v3 = "bet2voiceframesize";
  Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v27 + 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  *(a1 + 44) = HIDWORD(v27) * *(a1 + 48) / 0x3E8u;
  v3 = "bet2voicevol";
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v10 = atof(__s1);
  *(a1 + 60) = v10;
  paramc_ParamRelease(*(v2 + 40));
  v3 = "bet2voicevuvrelamp";
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevuvrelamp", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v11 = atof(__s1);
  v22 = v11;
  paramc_ParamRelease(*(v2 + 40));
  v3 = "bet2voicemvfboost";
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicemvfboost", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    goto LABEL_50;
  }

  v12 = atof(__s1);
  paramc_ParamRelease(*(v2 + 40));
  v3 = "bet2voiceorder";
  Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceorder", &v27);
  if ((Int & 0x80000000) != 0)
  {
LABEL_49:
    Str = Int;
LABEL_50:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", "parameter", v3);
    return Str;
  }

  v3 = "bet2voicef0std";
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicef0std", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v13 = atof(__s1);
  *(a1 + 64) = v13;
  paramc_ParamRelease(*(v2 + 40));
  v3 = "bet2voicef0mean";
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicef0mean", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    goto LABEL_50;
  }

  v14 = atof(__s1);
  *(a1 + 68) = v14;
  paramc_ParamRelease(*(v2 + 40));
  if ((paramc_ParamGetInt(*(v2 + 40), "bet2cpupower", &v28) & 0x80000000) == 0 && (v28 - 1) < 4)
  {
    LODWORD(v26) = v28;
  }

  if (paramc_ParamGet(*(v2 + 40), "bet3cepstralequalizer", (a1 + 1872), &v20) || v27 + 1 == v20 >> 2)
  {
    v15 = v8;
    v16 = v9;
    inited = BET3FLT__MFVSyn__init__MVF_Synthesis(*(a1 + 16), a1 + 72, v21, 0, SHIDWORD(v27), v27, v15, v16, SHIDWORD(v28));
    if ((inited & 0x80000000) == 0)
    {
      v18 = v12;
      inited = BET3FLT__MFVSyn__setMVFBoost(a1 + 72, v18);
      if ((inited & 0x80000000) == 0)
      {
        inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v28);
        if ((inited & 0x80000000) == 0)
        {
          inited = synth_bet3_loc_ParamSet(a1, "volume", v28);
          if ((inited & 0x80000000) == 0)
          {
            inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v28);
            if ((inited & 0x80000000) == 0)
            {
              inited = synth_bet3_loc_ParamSet(a1, "rate_baseline", v28);
              if ((inited & 0x80000000) == 0)
              {
                inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v28);
                if ((inited & 0x80000000) == 0)
                {
                  inited = synth_bet3_loc_ParamSet(a1, "pitch_baseline", v28);
                  if ((inited & 0x80000000) == 0)
                  {
                    inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v28);
                    if ((inited & 0x80000000) == 0)
                    {
                      inited = synth_bet3_loc_ParamSet(a1, "rate", v28);
                      if ((inited & 0x80000000) == 0)
                      {
                        inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v28);
                        if ((inited & 0x80000000) == 0)
                        {
                          return synth_bet3_loc_ParamSet(a1, "pitch", v28);
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

    return inited;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", "parameter", "bet3cepstralequalizer");
    return 0;
  }
}

uint64_t synth_bet3_loc_ParamSet(uint64_t a1, const char *a2, unsigned int a3)
{
  if (!strcmp(a2, "audiooutputbufsamples"))
  {
    v6 = 0;
    if (a3 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a3;
    }

    *(a1 + 40) = v10;
  }

  else
  {
    v6 = critsec_Enter(*(a1 + 24));
    if ((v6 & 0x80000000) == 0)
    {
      if (!strcmp(a2, "volume"))
      {
        if (a3 <= 0x64)
        {
          v7 = v6;
          if (!*(a1 + 1896))
          {
            if (a3 > 0x50)
            {
              v11 = *(a1 + 60) + (((2.0 - *(a1 + 60)) * (a3 - 80)) / 20.0);
            }

            else
            {
              v11 = (*(a1 + 60) * a3) / 80.0;
            }

            log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set volume %d (synth %f)", a3, v11);
            v7 = BET3FLT__MFVSyn__setVolumeBoost(a1 + 72, v11);
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (strcmp(a2, "rate_baseline"))
        {
          if (!strcmp(a2, "rate"))
          {
            v12 = MapProsodyValue_Scaling(50, 100, 0x190u, *(a1 + 1892), a3);
            log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set rate %d", a3);
            if (!*(a1 + 1896))
            {
              v7 = v6;
              if (*(a1 + 52))
              {
                if (MFVSyn__setRateTtsEg(a1 + 72, v12))
                {
                  v7 = 2164269071;
                }

                else
                {
                  v7 = v6;
                }
              }

              goto LABEL_38;
            }

            goto LABEL_26;
          }

          if (!strcmp(a2, "ratewpm"))
          {
            v7 = 2164269057;
            goto LABEL_38;
          }

          if (strcmp(a2, "pitch_baseline"))
          {
            if (!strcmp(a2, "pitch"))
            {
              v7 = 2164269071;
              if (a3 - 201 >= 0xFFFFFF69)
              {
                if (*(a1 + 52))
                {
                  v8 = MapProsodyValue_Scaling(50, 100, 0xC8u, *(a1 + 1888), a3);
                  log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set pitch %d (synth %f)", a3, v8);
                  v7 = v6;
                  if (!*(a1 + 1896))
                  {
                    BET3FLT__MFVSyn__setPitchLevelPercent(a1 + 72, v8);
                    if (v9)
                    {
                      v7 = 2164269071;
                    }

                    else
                    {
                      v7 = v6;
                    }
                  }

                  goto LABEL_38;
                }

                goto LABEL_26;
              }

LABEL_38:
              critsec_Leave(*(a1 + 24));
              return v7;
            }

LABEL_26:
            v7 = v6;
            goto LABEL_38;
          }

          v7 = 2164269071;
          if (a3 - 201 < 0xFFFFFF69)
          {
            goto LABEL_38;
          }

          v17 = 0;
          *(a1 + 1888) = a3;
          v13 = "pitch";
          paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v17);
          v14 = v17;
LABEL_28:
          synth_bet3_loc_ParamSet(a1, v13, v14);
          v7 = 0;
          goto LABEL_38;
        }

        if (a3 - 401 >= 0xFFFFFEA1)
        {
          v16 = 0;
          *(a1 + 1892) = a3;
          v13 = "rate";
          paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v16);
          v14 = v16;
          goto LABEL_28;
        }
      }

      v7 = 2164269071;
      goto LABEL_38;
    }
  }

  return v6;
}

void rand_num(unint64_t *a1, float *a2, unsigned int a3, float a4)
{
  if (a3 >= 1)
  {
    v6 = a4 + a4;
    v7 = a3;
    do
    {
      *a2++ = v6 * ((rand31pmc_ranf(a1) * 4.6566e-10) + -0.5);
      --v7;
    }

    while (v7);
  }
}

void BET3FLT__MFVSyn__constructExcitationShapingFilter(uint64_t a1, float a2)
{
  v2 = a2;
  if (a2 <= 0.0)
  {
    vect_t__fillZero(a1 + 576);
  }

  else
  {
    v14 = 0.0;
    rand_num((a1 + 88), &v14, 1u, 1.0);
    v4 = *(a1 + 584);
    v5 = *(a1 + 592);
    *(v4 + 4 * v5 - 4) = ((v14 * 25.0) + 25.0) + v2;
    v_equ(v4, (v4 + 4), v5 - 1);
    v14 = 0.0;
    v6 = *(a1 + 584) + 4 * *(a1 + 592);
    v7 = *(v6 - 8);
    if (v7 <= 0.0)
    {
      v9 = 0;
      v8 = 0.0;
    }

    else
    {
      v8 = (v7 * 4.0) + 0.0;
      v14 = v8;
      v9 = 4;
    }

    v10 = *(v6 - 12);
    if (v10 > 0.0)
    {
      v9 |= 2u;
      v8 = v8 + (v10 * 2.0);
      v14 = v8;
    }

    v11 = *(v6 - 16);
    if (v11 <= 0.0)
    {
      v12 = v9;
    }

    else
    {
      v8 = v11 + v8;
      v12 = v9 + 1;
    }

    v2 = v8 * invDiv[v12];
  }

  v13 = *(a1 + 168) * 0.5;
  if (v13 >= (v2 * *(a1 + 52)))
  {
    v13 = v2 * *(a1 + 52);
  }

  *(a1 + 552) = v13;
}

float MFVSyn__filterExcitationWithShapingFilterFast(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = a2;
  v7 = *(a1 + 552);
  if (v7 > 0.0)
  {
    v8 = *(a1 + 556);
    if (v8 > 0.0)
    {
      v7 = ((1.0 - a4) * v8) + (a4 * v7);
    }
  }

  v9 = *(a1 + 792);
  if (v9 < 1)
  {
LABEL_8:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (a1 + 824);
    while (*v11 < (v7 / *(a1 + 168)))
    {
      ++v10;
      v11 += 6;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = a1 + 808 + 24 * v10;
  v_equ(*(a3 + 8), *v12, *(a1 + 796));
  v13 = sqrt(v5);
  v_scale(*(a3 + 8), *(a1 + 796), *(a1 + 56) * v13);
  v14 = *(a1 + 672);
  if (v14 >= 1)
  {
    if (v14 >= v5)
    {
      v14 = v5;
    }

    if (*(a3 + 16) >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a3 + 16);
    }

    v_add(*(a3 + 8), *(a1 + 664), v15);
    v16 = *(a1 + 672);
    if (v16 > v15)
    {
      v_equ(*(a1 + 664), (*(a1 + 664) + 4 * v15), v16 - v15);
      *(a1 + 672) = (*(a1 + 672) - v15) & ~((*(a1 + 672) - v15) >> 31);
    }
  }

  vect_t__fillZero(a1 + 656);
  v17 = *(a1 + 796);
  if (v17 <= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v5;
    v_equ(*(a1 + 664), (*(a3 + 8) + 4 * v5), v17 - v5);
    v19 = *(a1 + 796) - v5;
    if (v19 <= *(a1 + 672))
    {
      v19 = *(a1 + 672);
    }

    *(a1 + 672) = v19;
  }

  v20 = *(a1 + 800);
  rand_num((a1 + 88), (*(a1 + 464) + 4 * v20), v5, (*(a1 + 44) * 1.15) * *(a1 + 56));
  v_equ(*(a1 + 464), *(a1 + 688), v20);
  v_equ(*(a1 + 688), (*(a1 + 464) + 4 * v18), v20);
  zerflt(*(a1 + 464) + 4 * v20, *(v12 + 8), *(a1 + 464) + 4 * v20, *(a1 + 800), v5);
  v_equ(*(a1 + 464), (*(a1 + 464) + 4 * v20), v5);
  v21 = *(a3 + 8);
  v22 = *(a1 + 464);

  return v_add(v21, v22, v5);
}

uint64_t BET3FLT__vect_t__createVect(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  v5 = 4 * a3;
  v6 = heap_Alloc(a1, v5);
  *(a2 + 8) = v6;
  if (!v6)
  {
    return 2164269066;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  if (a3 >= 1)
  {
    bzero(v6, v5);
  }

  return 0;
}

void *BET3FLT__vect_t__deleteVect(void *result)
{
  if (result)
  {
    v2 = result + 1;
    v1 = result[1];
    if (v1)
    {
      result = heap_Free(*result, v1);
    }

    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

void vect_t__fillZero(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 >= 1)
  {
    bzero(*(a1 + 8), 4 * v1);
  }
}

void vect_t__mulByHanning(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 8);
    do
    {
      v4 = cos(((6.2832 / (v1 - 1)) * v2));
      *(v3 + 4 * v2) = ((1.0 - v4) * 0.5) * *(v3 + 4 * v2);
      ++v2;
    }

    while (v1 != v2);
  }
}

uint64_t BET3FLT__MFVSyn__SynthesisOneFrame(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, float a5, float a6, float a7, float a8)
{
  *a3 = 0;
  *a4 = 0;
  v15 = *(a1 + 604);
  v17 = v15 == 1 && a5 == 0.0;
  if (v15)
  {
    v18 = 1;
  }

  else
  {
    v18 = a5 <= 0.0;
  }

  v19 = !v18;
  *(a1 + 600) = v19 | v17;
  if (a5 != 0.0)
  {
    a5 = *(a1 + 64) * a5;
    if (a5 < 40.0)
    {
      a5 = 40.0;
    }
  }

  *(a1 + 604) = a5 > 0.0;
  v20 = *(a1 + 480);
  v21 = *(a1 + 60);
  v22 = BET3FLT__wave_t__convertFromF0ToTp((a1 + 32), a5);
  *(a1 + 704) = LODWORD(v22);
  if (*&v22 == 0.0)
  {
    v23 = *(a1 + 544);
    *(a1 + 544) = v23 + 1;
    LODWORD(v24) = *(a1 + 536);
    v25 = *(a1 + 528);
    if (v23 >= v24)
    {
      v_equ(v25, (v25 + 4), v24 - 1);
      v25 = *(a1 + 528);
      v24 = *(a1 + 536);
      *(v25 + 4 * v24 - 4) = *(a1 + 512);
    }

    v26 = v_sum(v25, v24);
    *(a1 + 704) = *&v26 / *(a1 + 536);
  }

  else
  {
    *(a1 + 544) = 0;
    v_equ(*(a1 + 528), (*(a1 + 528) + 4), *(a1 + 536) - 1);
    *(*(a1 + 528) + 4 * *(a1 + 536) - 4) = *(a1 + 704);
  }

  v27 = v21 * v20;
  v_equ(*(a1 + 728), a2, *(a1 + 200) + 1);
  v28 = 0.0;
  if (a6 > 0.0)
  {
    v28 = 0.25;
  }

  *(a1 + 708) = v28;
  *(a1 + 712) = a8;
  v29 = *(a1 + 48);
  *(a1 + 560) = 1065353216;
  *(a1 + 568) = v29;
  BET3FLT__MFVSyn__mc2mlsa(a1, *(a1 + 728), *(a1 + 384));
  MFVSyn__postFilter(a1, *(a1 + 728), *(a1 + 384));
  v_equ(*(a1 + 728), *(a1 + 384), *(a1 + 200) + 1);
  BET3FLT__MFVSyn__constructExcitationShapingFilter(a1, *(a1 + 712));
  if (*(a1 + 600) || (v30 = vabds_f32(*(a1 + 704), *(a1 + 744)), v30 >= BET3FLT__wave_t__convertFromTpToF0((a1 + 32), 60.0)))
  {
    *(a1 + 744) = *(a1 + 704);
  }

  LODWORD(a2) = vcvtps_s32_f32(v27);
  v31 = *(a1 + 208);
  *(a1 + 84) = (v31 + 1) >> 1;
  if (*(a1 + 244))
  {
    v32 = *(a1 + 240);
    if ((v32 & 0x80000000) == 0)
    {
      v33 = 1.0 / (1 << *(a1 + 244));
      v34 = *(a1 + 728);
      v35 = *(a1 + 768);
      v36 = *(a1 + 224);
      v37 = v32 + 1;
      do
      {
        v38 = *v34++;
        v39 = v38;
        v40 = *v35++;
        *v36++ = v33 * (v39 - v40);
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v41 = *(a1 + 240);
    if ((v41 & 0x80000000) == 0)
    {
      v42 = v31 / a2;
      v43 = *(a1 + 728);
      v44 = *(a1 + 768);
      v45 = *(a1 + 224);
      v46 = v41 + 1;
      do
      {
        v47 = *v43++;
        v48 = v47;
        v49 = *v44++;
        *v45++ = v42 * (v48 - v49);
        --v46;
      }

      while (v46);
    }
  }

  v_equ(*(a1 + 184), *(a1 + 768), *(a1 + 200) + 1);
  v50 = *(a1 + 784);
  if (v50 >= 1)
  {
    v51 = *(a1 + 440);
    v52 = *(a1 + 416);
    if (v50 <= a2)
    {
      v_equ(v51, v52, v50);
      BET3FLT__MFVSyn__mlsa_filter(a1, *(a1 + 440), *(a1 + 496), *(a1 + 784));
    }

    else
    {
      v_equ(v51, v52, a2);
      BET3FLT__MFVSyn__mlsa_filter(a1, *(a1 + 440), *(a1 + 496), a2);
      v_equ(*(a1 + 416), (*(a1 + 416) + 4 * a2), *(a1 + 784) - a2);
    }
  }

  for (i = *(a1 + 784); i < a2; *(a1 + 784) = i)
  {
    v54 = i / a2;
    v55 = *(a1 + 704);
    if (*(a1 + 76) < 4u)
    {
      v56 = *(a1 + 708);
    }

    else
    {
      v55 = ((1.0 - v54) * *(a1 + 744)) + (v54 * v55);
      v56 = ((1.0 - v54) * *(a1 + 748)) + (v54 * *(a1 + 708));
    }

    v64 = 0.0;
    rand_num((a1 + 88), &v64, 1u, 1.0);
    v57 = (v55 * (1.0 - (v56 * v64)) + 0.5);
    v58 = *(a1 + 40);
    if (*(a1 + 36) > v57)
    {
      v57 = *(a1 + 36);
    }

    if (v57 >= v58)
    {
      v59 = v58;
    }

    else
    {
      v59 = v57;
    }

    if (*(a1 + 74))
    {
      MFVSyn__filterExcitationWithShapingFilterFast(a1, v59, a1 + 432, v54);
    }

    else
    {
      MFVSyn__filterExcitationWithShapingFilterHQ(a1, v59, *(a1 + 604), a1 + 432, v55, v54, a7);
    }

    v60 = *(a1 + 784);
    v61 = v60 + v59;
    if (v60 + v59 >= a2)
    {
      v61 = a2;
    }

    BET3FLT__MFVSyn__mlsa_filter(a1, *(a1 + 440), *(a1 + 496) + 4 * v60, v61 - v60);
    v62 = *(a1 + 784);
    i = v62 + v59;
    if (v62 + v59 > a2)
    {
      v_equ(*(a1 + 416), (*(a1 + 440) + 4 * (a2 - v62)), v59 - (a2 - v62));
      i = *(a1 + 784) + v59;
    }
  }

  *(a1 + 556) = *(a1 + 552);
  *(a1 + 564) = *(a1 + 560);
  *(a1 + 572) = *(a1 + 568);
  *(a1 + 752) = *(a1 + 712);
  *(a1 + 744) = *(a1 + 704);
  v_equ(*(a1 + 768), *(a1 + 728), *(a1 + 200) + 1);
  if (*(a1 + 73))
  {
    MFVSyn__disperse(a1, a1 + 488, 0, a2);
  }

  *(a1 + 784) -= a2;
  *a3 = a2;
  *a4 = *(a1 + 496);
  return 0;
}

uint64_t *BET3FLT__rand31pmc_seedi(uint64_t *result, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  *result = v2;
  return result;
}

float rand31pmc_ranf(unint64_t *a1)
{
  v1 = ((1101463552 * (*a1 >> 16)) & 0x7FFF0000) + 16807 * *a1 + ((16807 * (*a1 >> 16)) >> 15);
  if (v1 >> 31)
  {
    v1 -= 0x7FFFFFFFLL;
  }

  *a1 = v1;
  return v1;
}

uint64_t BET3FLT__MFVSyn__setVolumeBoost(uint64_t a1, float a2)
{
  if (a2 >= 0.0)
  {
    v3 = a2 == 2.0;
    v2 = a2 >= 2.0;
  }

  else
  {
    v2 = 1;
    v3 = 0;
  }

  if (!v3 && v2)
  {
    return 2164269071;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

uint64_t BET3FLT__MFVSyn__setMVFBoost(uint64_t a1, float a2)
{
  if (a2 >= 0.0)
  {
    v3 = a2 == 2.0;
    v2 = a2 >= 2.0;
  }

  else
  {
    v2 = 1;
    v3 = 0;
  }

  if (!v3 && v2)
  {
    return 2164269071;
  }

  result = 0;
  *(a1 + 52) = a2;
  return result;
}

uint64_t MFVSyn__setRateTtsEg(uint64_t a1, int a2)
{
  if (a2 >= 400)
  {
    v2 = 400;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= 50)
  {
    v3 = 50;
  }

  else
  {
    v3 = v2;
  }

  if ((a2 - 401) >= 0xFFFFFEA1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2164269071;
  }

  v5 = 100.0 / v3;
  v6 = 0.01;
  if (v5 >= 0.01)
  {
    v6 = 4.0;
    if (v5 <= 4.0)
    {
      v6 = 100.0 / v3;
    }
  }

  *(a1 + 60) = v6;
  return v4;
}

float BET3FLT__MFVSyn__setPitchLevelPercent(uint64_t a1, float result)
{
  if (result >= 50.0 && result <= 200.0)
  {
    result = result / 100.0;
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t *BET3FLT__MFVSyn__construct(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 172) = 0;
  *(a1 + 604) = 0;
  *(a1 + 584) = 0;
  result = BET3FLT__rand_num_init((a1 + 88));
  *(a1 + 224) = 0;
  *(a1 + 184) = 0;
  if (!*(a1 + 74))
  {
    *(a1 + 688) = 0;
    *(a1 + 664) = 0;
    *(a1 + 640) = 0;
    *(a1 + 616) = 0;
  }

  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  *(a1 + 496) = 0;
  *(a1 + 464) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  return result;
}

void *BET3FLT__MFVSyn__deconstruct(uint64_t a1)
{
  BET3FLT__vect_t__deleteVect((a1 + 760));
  BET3FLT__vect_t__deleteVect((a1 + 720));
  BET3FLT__vect_t__deleteVect((a1 + 520));
  BET3FLT__vect_t__deleteVect((a1 + 576));
  BET3FLT__MFVSyn__mlsa_filter_deinit(a1);
  BET3FLT__vect_t__deleteVect((a1 + 176));
  BET3FLT__vect_t__deleteVect((a1 + 216));
  if (!*(a1 + 74))
  {
    BET3FLT__vect_t__deleteVect((a1 + 608));
    BET3FLT__vect_t__deleteVect((a1 + 632));
  }

  BET3FLT__vect_t__deleteVect((a1 + 656));
  BET3FLT__vect_t__deleteVect((a1 + 680));
  BET3FLT__vect_t__deleteVect((a1 + 144));
  BET3FLT__vect_t__deleteVect((a1 + 96));
  BET3FLT__vect_t__deleteVect((a1 + 120));
  BET3FLT__vect_t__deleteVect((a1 + 408));
  BET3FLT__vect_t__deleteVect((a1 + 432));
  BET3FLT__vect_t__deleteVect((a1 + 456));

  return BET3FLT__vect_t__deleteVect((a1 + 488));
}

uint64_t BET3FLT__MFVSyn__init__MVF_Synthesis(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5, int a6, float a7, float a8, float a9)
{
  *a2 = a1;
  v14 = *a3;
  v15 = a3[1];
  *(a2 + 68) = a3[2];
  *(a2 + 52) = v15;
  *(a2 + 36) = v14;
  *(a2 + 200) = a6;
  *(a2 + 204) = a6;
  BET3FLT__wave_t__setSampleRateHz((a2 + 32), a9);
  BET3FLT__MFVSyn__construct(a2);
  *(a2 + 68) = BET3FLT__wave_t__convertFromMsecToTp((a2 + 32), a5);
  if (*(a2 + 74))
  {
    ExcTable = BET3FLT__MFVSyn__loadExcTable(a2, a4);
    if ((ExcTable & 0x80000000) != 0)
    {
      return ExcTable;
    }
  }

  *(a2 + 600) = 0;
  v17 = BET3FLT__wave_t__convertFromF0ToTp((a2 + 32), 250.0);
  *(a2 + 512) = *&v17;
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 520, 4u);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v18.i32[0] = 1.0;
  v_set(*(a2 + 528), *(a2 + 540), v18);
  v_scale(*(a2 + 528), *(a2 + 540), *(a2 + 512));
  *(a2 + 544) = 0;
  *(a2 + 168) = BET3FLT__wave_t__sampleRateHz(a2 + 32);
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 576, 5u);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  if (*(a2 + 74))
  {
    v19 = *(a2 + 796);
    if (v19 <= *(a2 + 800))
    {
      v19 = *(a2 + 800);
    }
  }

  else
  {
    *(a2 + 808) = 0;
    *(a2 + 8) = 0;
    v19 = 89;
  }

  *(a2 + 172) = v19;
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 176, *(a2 + 200) + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v20 = *(*a2 + 8);
  v21 = *(a2 + 172);
  if (*(a2 + 74))
  {
    ExcTable = BET3FLT__vect_t__createVect(v20, a2 + 656, v21);
    if ((ExcTable & 0x80000000) == 0)
    {
      *(a2 + 672) = 0;
      ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 680, *(a2 + 172));
      if ((ExcTable & 0x80000000) == 0)
      {
        *(a2 + 136) = 0;
        goto LABEL_14;
      }
    }

    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(v20, a2 + 608, v21);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 632, *(a2 + 172));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 656, *(a2 + 172));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 680, *(a2 + 172));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = MFVSyn__setDispersion(a2, *(a2 + 168));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

LABEL_14:
  *(a2 + 556) = 0;
  *(a2 + 564) = 0;
  *(a2 + 572) = 0;
  *(a2 + 784) = 0;
  v22 = *(a2 + 68);
  *(a2 + 480) = v22;
  v23 = *(a2 + 76);
  if (v23 <= 2)
  {
    if (v23 == 1)
    {
      v25 = *(a2 + 200) >> 2;
      if (v25 <= 1)
      {
        v25 = 1;
      }

      *(a2 + 240) = v25;
      *(a2 + 244) = 1;
      *(a2 + 208) = v22 >> 1;
      *(a2 + 80) = 0;
      goto LABEL_37;
    }

    if (v23 == 2)
    {
      v24 = *(a2 + 200);
      if (v24 >= 24)
      {
        v25 = v24 >> 1;
      }

      else
      {
        v25 = 12;
      }

      *(a2 + 240) = v25;
      *(a2 + 244) = 0;
      v26 = v22 >> 2;
      if (v26 >= 16)
      {
        v26 = 16;
      }

      *(a2 + 208) = v26;
      *(a2 + 80) = 1;
LABEL_37:
      v27 = 3;
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  if (v23 != 3)
  {
    if (v23 == 4)
    {
      v25 = *(a2 + 200);
      *(a2 + 240) = v25;
      *(a2 + 244) = 0;
      *(a2 + 208) = 1;
      *(a2 + 80) = 3;
LABEL_33:
      v27 = 5;
      goto LABEL_39;
    }

LABEL_32:
    v25 = *(a2 + 240);
    goto LABEL_33;
  }

  v25 = *(a2 + 200);
  *(a2 + 240) = v25;
  *(a2 + 244) = 0;
  *(a2 + 208) = 1;
  *(a2 + 80) = 2;
  v27 = 4;
LABEL_39:
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 216, v25 + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__MFVSyn__mlsa_filter_init(a2, v27, a7, a8);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  if (*(a2 + 1628) == 0.0)
  {
    *(a2 + 80) = 0;
  }

  ExcTable = MFVSyn__init__postFilter(a2);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v28 = *(a2 + 172);
  if (v28 <= 2 * *(a2 + 40))
  {
    v28 = 2 * *(a2 + 40);
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 432, 2 * v28);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v29 = *(a2 + 172);
  if (v29 <= *(a2 + 40))
  {
    v29 = *(a2 + 40);
  }

  v30 = *(a2 + 480) <= v29 ? v29 : *(a2 + 480);
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 408, v30);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v31 = *(a2 + 172);
  if (v31 <= 2 * *(a2 + 40))
  {
    v31 = 2 * *(a2 + 40);
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 456, 2 * v31);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v32 = *(a2 + 40);
  if (v32 <= *(a2 + 480))
  {
    v32 = *(a2 + 480);
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 488, *(a2 + 136) + v32 + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v33 = *(a2 + 512);
  *(a2 + 744) = v33;
  *(a2 + 752) = v33;
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 760, *(a2 + 200) + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  Vect = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 720, *(a2 + 200) + 1);
  if ((Vect & 0x80000000) == 0)
  {
    BET3FLT__MFVSyn__mc2mlsa(a2, *(a2 + 768), *(a2 + 768));
    *(a2 + 748) = 0;
  }

  return Vect;
}

uint64_t BET3FLT__MFVSyn__reset__MVF_Synthesis(uint64_t a1)
{
  if (!a1)
  {
    return 2164269063;
  }

  BET3FLT__rand_num_init((a1 + 88));
  *(a1 + 784) = 0;
  *(a1 + 604) = 0;
  *(a1 + 556) = 0;
  v_zap(*(a1 + 128), *(a1 + 140));
  v_zap(*(a1 + 1656), *(a1 + 1668));
  v_zap(*(a1 + 384), *(a1 + 396));
  *(a1 + 744) = *(a1 + 512);
  *(a1 + 752) = 0;
  v_zap(*(a1 + 768), *(a1 + 776));
  BET3FLT__MFVSyn__mc2mlsa(a1, *(a1 + 768), *(a1 + 768));
  v_zap(*(a1 + 440), *(a1 + 452));
  v_zap(*(a1 + 416), *(a1 + 428));
  v_zap(*(a1 + 664), *(a1 + 676));
  v_zap(*(a1 + 688), *(a1 + 700));
  v_zap(*(a1 + 464), *(a1 + 476));
  v_zap(*(a1 + 224), *(a1 + 236));
  v2.i32[0] = 1.0;
  v_set(*(a1 + 528), *(a1 + 540), v2);
  v_scale(*(a1 + 528), *(a1 + 540), *(a1 + 512));
  *(a1 + 544) = 0;
  v_zap(*(a1 + 584), *(a1 + 596));
  result = 0;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  *(a1 + 560) = 0;
  return result;
}

void MFVSyn__deinit__MVF_Synthesis(void *a1)
{
  BET3FLT__MFVSyn__releaseExcTable(a1);
  MFVSyn__deinit__postFilter(a1);
  BET3FLT__MFVSyn__deconstruct(a1);

  bzero(a1, 0x6B8uLL);
}

uint64_t MFVSyn__disperse(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a1 + 160);
  v_equ((*(a1 + 104) + 4 * v8), (*(a2 + 8) + 4 * a3), a4);
  v_equ(*(a1 + 104), *(a1 + 128), v8);
  v_equ(*(a1 + 128), (*(a1 + 104) + 4 * v4), v8);
  v9 = *(a1 + 104) + 4 * v8;
  v10 = *(a1 + 152);
  v11 = *(a2 + 8) + 4 * a3;

  return zerflt(v9, v10, v11, v8, v4);
}

uint64_t MFVSyn__setDispersion(uint64_t a1, int a2)
{
  v3 = &dispersion_22kHz;
  if (a2 == 22050)
  {
    v4 = 179;
  }

  else
  {
    v3 = &dispersion_16kHz;
    v4 = 129;
  }

  if (a2 == 11025)
  {
    v5 = &dispersion_8kHz;
  }

  else
  {
    v5 = v3;
  }

  if (a2 == 11025)
  {
    v4 = 65;
  }

  if (a2 == 8000)
  {
    v6 = &dispersion_8kHz;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 8000)
  {
    v7 = 65;
  }

  else
  {
    v7 = v4;
  }

  result = BET3FLT__vect_t__createVect(*(*a1 + 8), a1 + 144, v7);
  if ((result & 0x80000000) == 0)
  {
    v_equ(*(a1 + 152), v6, v7);
    v9 = *(a1 + 40);
    if (v9 <= v7)
    {
      v9 = v7;
    }

    result = BET3FLT__vect_t__createVect(*(*a1 + 8), a1 + 96, v9 + 5 * v7);
    if ((result & 0x80000000) == 0)
    {
      v10 = *(*a1 + 8);

      return BET3FLT__vect_t__createVect(v10, a1 + 120, v7);
    }
  }

  return result;
}

void *MFVSyn__pickLowPassFilter(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = *(a1 + 24);
  v8 = (a2 + 8);
  v9 = *(a2 + 16);
  v_zap(*(a2 + 8), *(a2 + 20));
  v11 = *(a3 + 8);
  v10 = (a3 + 8);
  result = v_zap(v11, *(v10 + 3));
  v13 = ceilf(a4 / 250.0) * 250.0;
  if (v13 < 1000.0)
  {
    goto LABEL_4;
  }

  v14 = *(a1 + 168);
  if (vcvtd_n_f64_s32(v14, 1uLL) + -1000.0 < v13)
  {
    v10 = v8;
LABEL_4:
    *(*v10 + (v9 >> 1)) = 1065353216;
    return result;
  }

  v15 = v7 - 1;
  v16 = *(a1 + 24);
  v17 = *(a1 + 16);
  if (v16 < 1)
  {
LABEL_10:
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = v13 / v14;
    v20 = (v17 + 20);
    while (*v20 < v19)
    {
      ++v18;
      v20 += 10;
      if (v16 == v18)
      {
        goto LABEL_10;
      }
    }
  }

  v_equ(*v8, *(v17 + 40 * v18), *(v17 + 40 * v18 + 16));
  v21 = *(a1 + 24);
  v22 = *(a1 + 16);
  if (v21 >= 1)
  {
    v23 = 0;
    v24 = (v22 + 20);
    while (*v24 < (0.5 - (v13 / *(a1 + 168))))
    {
      ++v23;
      v24 += 10;
      if (v21 == v23)
      {
        goto LABEL_17;
      }
    }

    v15 = v23;
  }

LABEL_17:
  result = v_equ(*v10, *(v22 + 40 * v15), *(v22 + 40 * v15 + 16));
  v25 = *(*(a1 + 16) + 40 * v15 + 16);
  if (v25 >= 1)
  {
    v26 = *v10;
    v27 = 1.0;
    do
    {
      *v26 = v27 * *v26;
      ++v26;
      if (v27 == 1.0)
      {
        v27 = -1.0;
      }

      else
      {
        v27 = 1.0;
      }

      --v25;
    }

    while (v25);
  }

  return result;
}

void MFVSyn__lowPassFilterCoeffGenerator(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v11 = (a2 + 8);
  v12 = *(a2 + 16);
  v13 = (v12 >> 1);
  v_zap(*(a2 + 8), *(a2 + 20));
  v15 = *(a3 + 8);
  v14 = (a3 + 8);
  v_zap(v15, *(v14 + 3));
  if (a4 <= 600.0)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 168);
  if ((v16 / 2 - 600) <= a4)
  {
    v14 = v11;
LABEL_14:
    *(*v14 + 4 * v13) = 1065353216;
    return;
  }

  if (v12 >= 1)
  {
    v17 = 0;
    v18 = a4 / v16;
    v19 = a5;
    v20 = (v18 * 6.2832);
    v21 = *v11;
    do
    {
      v22 = (v12 >> 1);
      v23 = v20 / 3.14159265 * v19;
      if (v13 != v17)
      {
        v23 = sin(v20 * (v17 - v13)) * (1.0 / ((v17 - v13) * 3.14159265) * v19);
        v22 = v17;
      }

      v24 = v23;
      *(v21 + 4 * v22) = v24;
      ++v17;
    }

    while (v12 != v17);
    v25 = 0;
    v26 = v18 * -6.28318531 + 3.14159265;
    v27 = a6;
    v28 = v26;
    v29 = (v26 / 3.1416) * a6;
    v30 = *v14;
    do
    {
      v31 = (v12 >> 1);
      v32 = v29;
      if (v13 != v25)
      {
        v33 = pow(-1.0, v25) * v27;
        v32 = v33 * (sin(v28 * (v25 - v13)) * (1.0 / ((v25 - v13) * 3.1416)));
        v31 = v25;
      }

      *(v30 + 4 * v31) = v32;
      ++v25;
    }

    while (v12 != v25);
  }
}

void MFVSyn__fillExcPulse(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5, float a6)
{
  v7 = a3;
  v11 = *(a1 + 72);
  if (*(a1 + 72))
  {
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        vect_t__fillZero(a2);
        **(a2 + 8) = sqrtf(a5);
      }

      return;
    }

    v13 = a6;
    if (a6 > 1.0)
    {
      v13 = 1.0;
    }

    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    vect_t__fillZero(a2);
    if (a4)
    {
      v15 = 1.0 - v14;
      if (v15 >= 0.1)
      {
        if (v15 > 0.8)
        {
          v15 = 0.8;
        }
      }

      else
      {
        v15 = 0.3;
      }

      v28 = sqrt(a5);
      v29 = v28;
      v30 = *(a2 + 8);
      *v30 = v29;
      v31 = v29 + 0.0;
      if (v7 >= 2)
      {
        v32 = v30 + 1;
        v33 = *v30;
        v34 = v7 - 1;
        do
        {
          v33 = v15 * v33;
          *v32++ = v33;
          v31 = v31 + v33;
          --v34;
        }

        while (v34);
      }

      v35 = v28 / v31;
      v_scale(v30, v7, v35);
      return;
    }

    v25 = *(a2 + 8);
    v27 = *(a1 + 44) * 1.25 + *(a1 + 44) * 1.25;
    v26 = (a1 + 88);
    goto LABEL_21;
  }

  vect_t__fillZero(a2);
  if (a6 <= 0.3)
  {
    v25 = *(a2 + 8);
    v26 = (a1 + 88);
    v27 = 2.25;
LABEL_21:

    rand_num(v26, v25, v7, v27);
    return;
  }

  v16 = sqrt(a5);
  v17 = v16;
  v18 = *(a2 + 8);
  *v18 = v17;
  v19 = v17 + 0.0;
  if (v7 >= 2)
  {
    v20 = fmin((1.0 - a6) * 10.0, 1.0);
    v21 = 1;
    do
    {
      v36 = 0.0;
      rand_num((a1 + 88), &v36, 1u, 2.0);
      v22 = v17 * 0.4;
      v23 = v22 * (v36 * 0.1 + 1.0);
      *(*(a2 + 8) + v21 * 4) = v23;
      rand_num((a1 + 88), &v36, 1u, 2.0);
      v17 = v22 * ((v20 * v36) + 1.0);
      v18 = *(a2 + 8);
      v19 = v19 + v18[v21++];
    }

    while (v7 != v21);
  }

  v24 = v16 / v19;
  v_scale(v18, v7, v24);
}

float *MFVSyn__filterExcitationWithShapingFilterHQ(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5, float a6, float a7)
{
  v13 = *(a1 + 552);
  if (v13 > 0.0)
  {
    v14 = *(a1 + 556);
    if (v14 > 0.0)
    {
      v13 = ((1.0 - a6) * v14) + (a6 * v13);
    }
  }

  if (*(a1 + 8))
  {
    MFVSyn__pickLowPassFilter(a1, a1 + 608, a1 + 632, v13);
  }

  else
  {
    v15 = ((1.0 - a6) * *(a1 + 564)) + (a6 * *(a1 + 560));
    v16 = ((1.0 - a6) * *(a1 + 572)) + (a6 * *(a1 + 568));
    if (v13 > 0.0)
    {
      v17 = (v13 / BET3FLT__wave_t__convertFromTpToF0((a1 + 32), a5));
      v18 = BET3FLT__wave_t__convertFromTpToF0((a1 + 32), a5) * v17;
      v13 = v18 + (BET3FLT__wave_t__convertFromTpToF0((a1 + 32), a5) * 0.5);
    }

    MFVSyn__lowPassFilterCoeffGenerator(a1, a1 + 608, a1 + 632, v13, v15, v16);
  }

  vect_t__mulByHanning(a1 + 608);
  vect_t__mulByHanning(a1 + 632);
  v_zap(*(a4 + 8), *(a4 + 20));
  v_zap(*(a1 + 464), *(a1 + 476));
  MFVSyn__fillExcPulse(a1, a4, a2, a3, a5, a7);
  v_equ((*(a1 + 464) + 4 * *(a1 + 172)), *(a4 + 8), a2);
  v_equ(*(a1 + 464), *(a1 + 664), *(a1 + 172));
  v_equ(*(a1 + 664), (*(a1 + 464) + 4 * a2), *(a1 + 172));
  v19 = *(a1 + 464) + 4 * *(a1 + 172);
  zerflt(v19, *(a1 + 616), v19, *(a1 + 624), a2);
  v_equ(*(a4 + 8), (*(a1 + 464) + 4 * *(a1 + 172)), a2);
  v_zap(*(a1 + 464), *(a1 + 476));
  rand_num((a1 + 88), (*(a1 + 464) + 4 * *(a1 + 172)), a2, *(a1 + 44) * 1.15);
  v_equ(*(a1 + 464), *(a1 + 688), *(a1 + 172));
  v_equ(*(a1 + 688), (*(a1 + 464) + 4 * a2), *(a1 + 172));
  v20 = *(a1 + 464) + 4 * *(a1 + 172);
  zerflt(v20, *(a1 + 640), v20, *(a1 + 648), a2);
  v_equ(*(a1 + 464), (*(a1 + 464) + 4 * *(a1 + 172)), a2);
  v_add(*(a4 + 8), *(a1 + 464), a2);
  v21 = *(a4 + 8);
  v22 = *(a1 + 56);

  return v_scale(v21, a2, v22);
}

float BET3FLT__MFVSyn__mc2mlsa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 200);
  result = *(a1 + 1624);
  *(a3 + 4 * v3) = *(a2 + 4 * v3);
  if (v3 >= 1)
  {
    result = -result;
    v5 = *(a3 + 4 * v3);
    v6 = v3 - 1;
    do
    {
      v5 = *(a2 + 4 * v6) + (result * v5);
      *(a3 + 4 * v6) = v5;
      v7 = v6-- + 1;
    }

    while (v7 > 1);
  }

  return result;
}

void MFVSyn__postFilter(uint64_t a1, float *a2, float *a3)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v7 = 1.0;
    if (v3 != 1)
    {
      v_equ(*(a1 + 264), a2, *(a1 + 200) + 1);
      MFVSyn__freqt__postFilter(a1);
      MFVSyn__c2ir__postFilter(a1);
      v8 = *(a1 + 400);
      if (v8 < 1)
      {
        v7 = 0.0;
      }

      else
      {
        v9 = *(a1 + 312);
        v10 = 0.0;
        do
        {
          v11 = *v9++;
          v10 = v10 + (v11 * v11);
          --v8;
        }

        while (v8);
        v7 = v10;
      }
    }

    a3[1] = a3[1] - (*(a1 + 1632) * a2[2]);
    v12 = *(a1 + 200);
    if (v12 > 1)
    {
      v13 = a3 + 2;
      v14 = v12 - 1;
      do
      {
        *v13 = *v13 * (*(a1 + 1628) + 1.0);
        ++v13;
        --v14;
      }

      while (v14);
    }

    if (*(a1 + 80) >= 2u)
    {
      v15 = *(a1 + 1624);
      v16 = *(a1 + 264);
      v17 = a3[v12];
      *(v16 + 4 * v12) = v17;
      if (v12 >= 1)
      {
        v18 = v12 - 1;
        do
        {
          v19 = a3[v18];
          *(v16 + 4 * v18) = v19 + (v15 * v17);
          v20 = v18-- + 1;
          v17 = v19;
        }

        while (v20 > 1);
      }

      MFVSyn__freqt__postFilter(a1);
      MFVSyn__c2ir__postFilter(a1);
      v21 = *(a1 + 400);
      if (v21 < 1)
      {
        v25 = 0.0;
      }

      else
      {
        v22 = *(a1 + 312);
        v23 = 0.0;
        do
        {
          v24 = *v22++;
          v23 = v23 + (v24 * v24);
          --v21;
        }

        while (v21);
        v25 = v23;
      }

      v26 = *a3;
      v27 = log(v7);
      v28 = log(v25);
      *a3 = v26 + ((v27 - v28) * 0.5);
    }
  }
}

uint64_t MFVSyn__init__postFilter(_DWORD *a1)
{
  result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 94), a1[50] + 1);
  if ((result & 0x80000000) == 0)
  {
    v3 = a1[20];
    if (v3 >= 2)
    {
      v4 = v3 == 2 ? 32 : 64;
      a1[100] = v4;
      result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 70), v4);
      if ((result & 0x80000000) == 0)
      {
        result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 64), a1[50] + 1);
        if ((result & 0x80000000) == 0)
        {
          result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 76), a1[100]);
          if ((result & 0x80000000) == 0)
          {
            result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 82), a1[100]);
            if ((result & 0x80000000) == 0)
            {
              v5 = *(*a1 + 8);
              v6 = a1[100];

              return BET3FLT__vect_t__createVect(v5, (a1 + 88), v6);
            }
          }
        }
      }
    }
  }

  return result;
}

void *MFVSyn__deinit__postFilter(uint64_t a1)
{
  if (*(a1 + 80) >= 2u)
  {
    BET3FLT__vect_t__deleteVect((a1 + 280));
    BET3FLT__vect_t__deleteVect((a1 + 256));
    BET3FLT__vect_t__deleteVect((a1 + 304));
    BET3FLT__vect_t__deleteVect((a1 + 328));
    BET3FLT__vect_t__deleteVect((a1 + 352));
  }

  return BET3FLT__vect_t__deleteVect((a1 + 376));
}

void BET3FLT__MFVSyn__mlsa_filter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 184);
    v64 = *(a1 + 224);
    v6 = *(a1 + 1644);
    v7 = *(a1 + 1656);
    v61 = v6 + 1;
    v8 = *(a1 + 200);
    v9 = 8 * (v6 + 1);
    v10 = v7 + v9;
    v11 = a1 + 1688;
    v12 = (v8 + 1);
    v60 = a4;
    v13 = v12 - 2;
    v14 = v7 + v9 + 12;
    v15 = v7 + v9 + 4 * v12;
    v59 = v7 + v9 + 4;
    do
    {
      v66 = v4;
      v16 = *(a2 + 4 * v4);
      v17 = exp(*v5);
      v18 = fminf(fmaxf(v16 * v17, -32768.0), 32767.0);
      if (v6 <= 0)
      {
        *(v7 + 4 * v61) = v18;
        v32 = 0.0;
        v30 = v18 + 0.0;
        v31 = (v10 + 4 * *(v11 + 4 * v61));
      }

      else
      {
        v19 = *(a1 + 1624);
        v20 = *(a1 + 1672);
        v21 = 0.0;
        v22 = 4 * v6 + 4 * (v6 + 1) - 4;
        v23 = v6;
        v24 = *(a1 + 1680);
        do
        {
          v25 = (v19 * *(v7 + 4 * v23)) + (v20 * *(v7 + v22));
          *(v7 + 4 * v23) = v25;
          v26 = v25 * v5[1];
          *(v7 + v22 + 4) = v26;
          v27 = v26 * *(v24 + 4 * v23);
          v28 = -v27;
          if (v23)
          {
            v28 = v27;
          }

          v18 = v18 + v28;
          v21 = v21 + v27;
          v22 -= 4;
          v29 = v23-- > 1;
        }

        while (v29);
        *(v7 + 4 * v61) = v18;
        v30 = v21 + v18;
        v31 = (v10 + 4 * *(v11 + 4 * v61));
        v32 = 0.0;
        v33 = v6;
        do
        {
          v34 = &v31[v33];
          v35 = *(v34 - 1);
          v36 = *(v11 + 4 * v33);
          v37 = (v10 + 4 * v36);
          v38 = (v19 * v37[1]) + (v20 * v35);
          *v37 = v35;
          v37[1] = v38;
          v39 = 0.0;
          if (v8 > 1)
          {
            v40 = v37[2];
            v41 = *(v59 + 4 * v36);
            v42 = v13;
            v43 = v5 + 2;
            v44 = (v14 + 4 * v36);
            do
            {
              v45 = *v44;
              v41 = v40 + (v19 * (*v44 - v41));
              *(v44 - 1) = v41;
              v46 = *v43++;
              v39 = v39 + (v41 * v46);
              ++v44;
              v40 = v45;
              --v42;
            }

            while (v42);
          }

          if (v8 >= 1)
          {
            v47 = (v15 + 4 * v36);
            v48 = v8 + 2;
            v49 = v47;
            do
            {
              v50 = *--v49;
              *v47 = v50;
              --v48;
              v47 = v49;
            }

            while (v48 > 2);
          }

          *v34 = v39;
          v51 = v39 * *(v24 + 4 * v33);
          v52 = -v51;
          if (v33)
          {
            v52 = v51;
          }

          v30 = v30 + v52;
          v32 = v32 + v51;
          v29 = v33-- <= 1;
        }

        while (!v29);
      }

      *v31 = v30;
      *(a3 + 4 * v66) = fminf(fmaxf(v32 + v30, -32768.0), 32767.0);
      if (v64)
      {
        v53 = *(a1 + 84) - 1;
        *(a1 + 84) = v53;
        if (!v53)
        {
          v54 = *(a1 + 240);
          if ((v54 & 0x80000000) == 0)
          {
            v55 = v54 + 1;
            v56 = v5;
            v57 = v64;
            do
            {
              v58 = *v57++;
              *v56 = *v56 + v58;
              ++v56;
              --v55;
            }

            while (v55);
          }

          *(a1 + 84) = *(a1 + 208);
        }
      }

      v4 = v66 + 1;
    }

    while (v66 + 1 != v60);
  }
}

uint64_t BET3FLT__MFVSyn__mlsa_filter_init(uint64_t a1, int a2, float a3, float a4)
{
  *(a1 + 1624) = a3;
  *(a1 + 1628) = a4;
  v4 = *(a1 + 200);
  if (v4 < 4)
  {
    return 0;
  }

  *(a1 + 1644) = a2;
  Vect = BET3FLT__vect_t__createVect(*(*a1 + 8), a1 + 1648, (v4 + 5) * a2 + 3);
  if ((Vect & 0x80000000) == 0)
  {
    v_zap(*(a1 + 1656), *(a1 + 1668));
    v7 = *(a1 + 1624);
    *(a1 + 1636) = -v7;
    *(a1 + 1632) = v7 * *(a1 + 1628);
    v8 = 1.0 - (v7 * v7);
    *(a1 + 1672) = v8;
    *(a1 + 1676) = v8;
    v9 = *(a1 + 1644);
    *(a1 + 1680) = &g_pade + 24 * v9;
    if (v9 >= -1)
    {
      v10 = 0;
      v11 = (v9 + 1);
      v12 = *(a1 + 200) + 2;
      v13 = v11 & ~(v11 >> 31);
      v14 = vdupq_n_s64(v11);
      v15 = vaddq_s64(v14, xmmword_1C382F9A0);
      v16 = vaddq_s64(v14, xmmword_1C378AF40);
      v17 = vdupq_n_s64(v13);
      v18 = (a1 + 4 * v11 + 1688);
      v19.i64[0] = -1;
      v19.i64[1] = -1;
      v20 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v21 = vdupq_n_s64(v10);
        v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_1C378AF00)));
        v23 = vaddq_s64(v16, v19);
        if (vuzp1_s16(v22, *v15.i8).u8[0])
        {
          *v18 = v12 * v23.i32[0];
        }

        if (vuzp1_s16(v22, *&v15).i8[2])
        {
          *(v18 - 1) = v12 * v23.i32[2];
        }

        v24 = vorrq_s8(v21, xmmword_1C378AEF0);
        v25 = vaddq_s64(v15, v19);
        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v17, v24))).i32[1])
        {
          *(v18 - 2) = v12 * v25.i32[0];
          *(v18 - 3) = v12 * v25.i32[2];
        }

        v10 += 4;
        v15 = vaddq_s64(v15, v20);
        v16 = vaddq_s64(v16, v20);
        v18 -= 4;
      }

      while (((v13 + 4) & 0x1FFFFFFFCLL) != v10);
    }
  }

  return Vect;
}

void *MFVSyn__freqt__postFilter(uint64_t a1)
{
  v2 = *(a1 + 1636);
  v3 = *(a1 + 1676);
  v4 = *(a1 + 200);
  v5 = *(a1 + 400);
  v6 = *(a1 + 264);
  v7 = *(a1 + 288);
  if (v5 >= 1)
  {
    bzero(*(a1 + 360), 4 * v5);
  }

  if (v4 < 0)
  {
    v9 = *(a1 + 360);
  }

  else
  {
    v8 = -v4;
    v9 = *(a1 + 360);
    v10 = *(a1 + 336);
    do
    {
      v11 = v8;
      v12 = *v9;
      *v10 = *v9;
      *v9 = *(v6 + 4 * -v8) + (v2 * v12);
      v13 = v9[1];
      v10[1] = v13;
      v9[1] = (v2 * v13) + (v3 * *v10);
      if (v5 >= 3)
      {
        v14 = v5 - 2;
        v15 = v9 + 2;
        v16 = v10 + 2;
        do
        {
          v17 = *v15;
          *v16 = *v15;
          *v15 = *(v16 - 1) + (v2 * (v17 - *(v15 - 1)));
          ++v15;
          ++v16;
          --v14;
        }

        while (v14);
      }

      v8 = v11 + 1;
    }

    while (v11);
  }

  return v_equ(v7, v9, v5);
}

float MFVSyn__c2ir__postFilter(uint64_t a1)
{
  v1 = *(a1 + 400);
  v2 = *(a1 + 288);
  v3 = *(a1 + 312);
  result = exp(*v2);
  *v3 = result;
  if (v1 >= 2)
  {
    v5 = 1;
    v6 = v3;
    do
    {
      v7 = 0;
      v8 = 0.0;
      v9 = v6;
      do
      {
        v10 = *v9--;
        v8 = v8 + ((v2[v7 + 1] * (v7 + 1)) * v10);
        ++v7;
      }

      while (v5 != v7);
      result = v8 * g_oneOver[v5];
      v3[v5++] = result;
      ++v6;
    }

    while (v5 != v1);
  }

  return result;
}

float v_add(float *a1, float *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *a2++;
      result = v5 + *a1;
      *a1++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double v_sum(float *a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 0.0;
  }

  v2 = a2;
  result = 0.0;
  do
  {
    v4 = *a1++;
    *&result = *&result + v4;
    --v2;
  }

  while (v2);
  return result;
}

float *v_scale(float *result, unsigned int a2, float a3)
{
  if (a3 != 1.0 && a2 >= 1)
  {
    v4 = a2;
    v5 = result;
    do
    {
      *v5 = *v5 * a3;
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t v_set(uint64_t result, unsigned int a2, int16x4_t a3)
{
  if (a2 >= 1)
  {
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C378AEF0;
    v6 = xmmword_1C378AF00;
    v7 = (result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, a3).u8[0])
      {
        *(v7 - 2) = a3.i32[0];
      }

      if (vuzp1_s16(v9, a3).i8[2])
      {
        *(v7 - 1) = a3.i32[0];
      }

      if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a3.i32[0];
        v7[1] = a3.i32[0];
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void *v_zap(void *a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, 4 * a2);
  }

  return a1;
}

uint64_t zerflt(uint64_t result, float *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    v6 = result + 4 * a5 - 4;
    do
    {
      v7 = 0.0;
      if (a4 >= 1)
      {
        v8 = a4;
        v9 = a2;
        v10 = v6;
        do
        {
          v11 = *v10--;
          v12 = v11;
          v13 = *v9++;
          v7 = v7 + (v12 * v13);
          --v8;
        }

        while (v8);
      }

      *(a3 + 4 * (v5 - 1)) = v7;
      v6 -= 4;
    }

    while (v5-- > 1);
  }

  return result;
}

double BET3FLT__wave_t__convertFromF0ToTp(float *a1, float a2)
{
  if (a2 == 0.0)
  {
    return 0.0;
  }

  *&result = (1.0 / a2) * *a1;
  return result;
}

float *BET3FLT__wave_t__setSampleRateHz(float *result, float a2)
{
  if (result)
  {
    if (a2 > 0.0)
    {
      *result = a2;
    }
  }

  return result;
}

double wave_t__convertFromF0ToTp__SR(float a1, float a2)
{
  if (a2 == 0.0)
  {
    return 0.0;
  }

  result = 1.0 / a2 * a1;
  *&result = result;
  return result;
}

uint64_t BET3FLT__MFVSyn__loadExcTable(uint64_t a1, uint64_t a2)
{
  v31[300] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  *(a1 + 792) = v4;
  v5 = *(a2 + 52);
  *(a1 + 796) = v5;
  *(a1 + 798) = *(a2 + 54);
  v6 = *(a2 + 56);
  *(a1 + 800) = v6;
  *(a1 + 802) = *(a2 + 58);
  *(a1 + 804) = *(a2 + 60);
  *(a1 + 806) = *(a2 + 62);
  v7 = heap_Alloc(*(*a1 + 8), 4 * ((v6 + v5) * v4));
  *(a1 + 808) = v7;
  v8 = *(a1 + 792);
  if (v8 > 1)
  {
    v9 = 4 * *(a1 + 796);
    v10 = v7 + v9;
    v11 = (a1 + 832);
    v12 = v8 - 1;
    do
    {
      *v11 = v10;
      v11 += 3;
      v10 += v9;
      --v12;
    }

    while (v12);
  }

  if (v8 >= 1)
  {
    v13 = (a2 + 64);
    v14 = a1 + 808;
    v15 = 4 * *(a1 + 796);
    v16 = 4 * *(a1 + 800);
    v17 = (a1 + 816);
    v18 = v8;
    do
    {
      *v17 = *(a1 + 808 + 24 * (v8 - 1)) + v15;
      v17 += 3;
      v15 += v16;
      --v18;
    }

    while (v18);
    v19 = 0;
    v20 = *(a1 + 796);
    do
    {
      __memcpy_chk();
      if (v20)
      {
        for (i = 0; i != v20; ++i)
        {
          v22 = *&v31[i];
          *(*(v14 + 24 * v19) + 4 * i) = v22;
        }
      }

      v23 = &v13[v20];
      v24 = *(a1 + 800);
      __memcpy_chk();
      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          v26 = *&v31[j];
          *(*(v14 + 24 * v19 + 8) + 4 * j) = v26;
        }
      }

      v27 = &v23[v24];
      v28 = *v27;
      v13 = v27 + 1;
      v29 = v28;
      *(v14 + 24 * v19++ + 16) = v29;
    }

    while (v19 != v8);
  }

  return 0;
}