void sub_236785604(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = (a7 + 32 * v9);
      v11 = *v10;
      v12 = v10[1];
      v13 = fabs(*v10) == INFINITY;
      if (fabs(v12) == INFINITY)
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      if (v13)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v12;
      }

      v16 = vmulq_n_f64(xmmword_23681FB50, v15);
      v17 = v9 * a6;
      if (a4 >= 4)
      {
        v18 = a5 + 16 * v17;
        v19 = vdupq_lane_s64(*&v14, 0);
        v20 = (a8 + 16 * v9 * a9);
        for (i = 3; i < a4; i += 4)
        {
          v22 = *(v18 + 32);
          v23 = vmlaq_f64(vmulq_f64(v16, vextq_s8(*(v18 + 48), *(v18 + 48), 8uLL)), v19, *(v18 + 48));
          v24 = vmlaq_f64(vmulq_f64(v16, vextq_s8(*(v18 + 16), *(v18 + 16), 8uLL)), v19, *(v18 + 16));
          *v20 = vmlaq_f64(vmulq_f64(v16, vextq_s8(*v18, *v18, 8uLL)), v19, *v18);
          v20[1] = v24;
          v20[2] = vmlaq_f64(vmulq_f64(v16, vextq_s8(v22, v22, 8uLL)), v19, v22);
          v20[3] = v23;
          v18 += 64;
          v20 += 4;
        }
      }

      if (a4 >= 1)
      {
        v25 = (a5 + 16 * v17);
        v26 = vdupq_lane_s64(*&v14, 0);
        v27 = (a8 + 16 * v9 * a9);
        v28 = a4;
        do
        {
          v29 = *v25++;
          *v27++ = vmlaq_f64(vmulq_f64(v16, vextq_s8(v29, v29, 8uLL)), v26, v29);
          --v28;
        }

        while (v28);
      }

      ++v9;
    }

    while (v9 < a3);
  }
}

void sub_236785974(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a8 >= 1)
  {
    v14 = 0;
    __asm { FMOV            V0.4S, #-1.0 }

    v20 = vnegq_f64(_Q0);
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v22 = (a12 + 16 * v14);
      v23 = *v22;
      v24 = v22[1];
      v25 = fabsf(*v22) == INFINITY;
      if (fabsf(v24) == INFINITY)
      {
        v25 = 1;
      }

      if (v25)
      {
        *&a5 = 0.0;
      }

      else
      {
        *&a5 = v23;
      }

      if (v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      v27 = vmulq_n_f32(v20, v26);
      v28 = v14 * a11;
      if (a9 >= 4)
      {
        v29 = (a10 + 8 * v28);
        v30 = vdupq_lane_s32(*&a5, 0);
        v31 = (a13 + 8 * v14 * a14);
        for (i = 3; i < a9; i += 4)
        {
          v34 = *v29;
          v33 = v29[1];
          v29 += 2;
          *v31 = vmlaq_f32(vmulq_f32(v27, vrev64q_s32(v34)), v30, v34);
          v31[1] = vmlaq_f32(vmulq_f32(v27, vrev64q_s32(v33)), v30, v33);
          v31 += 2;
        }
      }

      if (a9 >= 1)
      {
        v35 = (a10 + 8 * v28);
        a5 = COERCE_DOUBLE(vdup_lane_s32(*&a5, 0));
        v36 = (a13 + 8 * v14 * a14);
        v37 = a9;
        do
        {
          v38 = *v35++;
          *v36++ = vmla_f32(vmul_f32(*v27.f32, vrev64_s32(v38)), *&a5, v38);
          --v37;
        }

        while (v37);
      }

      ++v14;
    }

    while (v14 < a8);
  }
}

void sub_236785C28(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = (a7 + 32 * v9);
      v11 = *v10;
      v12 = v10[1];
      v13 = fabs(*v10) == INFINITY;
      if (fabs(v12) == INFINITY)
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      if (v13)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v12;
      }

      v16 = vmulq_n_f64(xmmword_23681FB50, v15);
      v17 = v9 * a6;
      if (a4 >= 4)
      {
        v18 = a5 + 16 * v17;
        v19 = vdupq_lane_s64(*&v14, 0);
        v20 = (a8 + 16 * v9 * a9);
        for (i = 3; i < a4; i += 4)
        {
          v22 = *(v18 + 16);
          v23 = *(v18 + 48);
          v24 = vmlaq_f64(vmulq_f64(v16, vextq_s8(*(v18 + 32), *(v18 + 32), 8uLL)), v19, *(v18 + 32));
          *v20 = vmlaq_f64(vmulq_f64(v16, vextq_s8(*v18, *v18, 8uLL)), v19, *v18);
          v20[1] = vmlaq_f64(vmulq_f64(v16, vextq_s8(v22, v22, 8uLL)), v19, v22);
          v20[2] = v24;
          v20[3] = vmlaq_f64(vmulq_f64(v16, vextq_s8(v23, v23, 8uLL)), v19, v23);
          v18 += 64;
          v20 += 4;
        }
      }

      if (a4 >= 1)
      {
        v25 = (a5 + 16 * v17);
        v26 = vdupq_lane_s64(*&v14, 0);
        v27 = (a8 + 16 * v9 * a9);
        v28 = a4;
        do
        {
          v29 = *v25++;
          *v27++ = vmlaq_f64(vmulq_f64(v16, vextq_s8(v29, v29, 8uLL)), v26, v29);
          --v28;
        }

        while (v28);
      }

      ++v9;
    }

    while (v9 < a3);
  }
}

void sub_236785FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(a1 + 4);
  *a6 = *a1;
  *(a6 + 4) = v7;
  v8 = a3 + 2;
  v9 = &a3[v7 + 2];
  *(a6 + 8) = a3;
  *(a6 + 16) = v9;
  *(a6 + 24) = 0;
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 28) = *(a1 + 28);
  if (v7 <= 0)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    bzero(a3 + 2, 8 * v7);
    for (i = 0; i != v7; ++i)
    {
      if (a5)
      {
        *(a5 + 8 * i) = 0;
      }

      if (!a2 || *(a2 + 4 * i) >= 1)
      {
        v15 = (*(a1 + 8) + 8 * i);
        v16 = *v15;
        if (*v15 < v15[1])
        {
          v17 = *(a1 + 16);
          v18 = ~v16;
          do
          {
            v19 = *(v17 + 4 * v16);
            if (i >= v19 && (!a2 || *(a2 + 4 * v19) >= 1))
            {
              if (a5 && i == v19)
              {
                *(a5 + 8 * i) = v18;
              }

              else
              {
                ++v8[i];
                if (i != v19)
                {
                  ++v8[v19];
                }
              }
            }

            ++v16;
            --v18;
          }

          while (v16 < v15[1]);
        }
      }
    }

    v20 = 0;
    a3[1] = 0;
    v21 = a3 + 1;
    v22 = 2;
    v23 = v7;
    do
    {
      v20 += a3[v22];
      a3[v22++] = v20;
      --v23;
    }

    while (v23);
    v24 = 0;
    *a3 = 0;
    do
    {
      if (!a2 || *(a2 + 4 * v24) >= 1)
      {
        v25 = (*(a1 + 8) + 8 * v24);
        v26 = *v25;
        if (*v25 < v25[1])
        {
          v27 = *(a1 + 16);
          v28 = ~v26;
          do
          {
            v29 = *(v27 + 4 * v26);
            if (v24 >= v29 && (!a5 || v24 != v29) && (!a2 || *(a2 + 4 * v29) >= 1))
            {
              v30 = v21[v24];
              *(v9 + v30) = v29;
              *(a4 + 8 * v30) = v26 + 1;
              ++v21[v24];
              if (v24 != v29)
              {
                v31 = v21[v29];
                *(v9 + v31) = v24;
                *(a4 + 8 * v31) = v28;
                ++v21[v29];
              }
            }

            ++v26;
            --v28;
          }

          while (v26 < v25[1]);
          LODWORD(v7) = *(a1 + 4);
        }
      }

      ++v24;
    }

    while (v24 < v7);
  }
}

void sub_2367861D0(int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  *a6 = *a1;
  *(a6 + 4) = v8;
  v9 = a3 + 2;
  v10 = &a3[v8 + 2];
  *(a6 + 8) = a3;
  *(a6 + 16) = v10;
  *(a6 + 24) = 0;
  *(a6 + 24) = a1[6];
  *(a6 + 28) = *(a1 + 28);
  if (v8 <= 0)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  bzero(a3 + 2, 8 * v8);
  for (i = 0; i != v8; ++i)
  {
    if (a5)
    {
      *(a5 + 8 * i) = 0;
    }

    if (!a2 || *(a2 + 4 * i) >= 1)
    {
      v16 = (*(a1 + 1) + 8 * i);
      v17 = *v16;
      if (*v16 < v16[1])
      {
        v18 = *(a1 + 2);
        while (1)
        {
          v19 = *(v18 + 4 * v17);
          v20 = i <= v19 && v19 < v7;
          if (!v20 || a2 && *(a2 + 4 * v19) < 1)
          {
            goto LABEL_21;
          }

          if (a5)
          {
            v21 = v17;
            v22 = (a5 + 8 * i);
            if (i == v19)
            {
              goto LABEL_20;
            }
          }

          ++v9[i];
          if (i != v19)
          {
            break;
          }

LABEL_21:
          if (++v17 >= v16[1])
          {
            goto LABEL_22;
          }
        }

        v22 = &v9[v19];
        v21 = *v22;
LABEL_20:
        *v22 = v21 + 1;
        goto LABEL_21;
      }
    }

LABEL_22:
    ;
  }

  v23 = 0;
  a3[1] = 0;
  v24 = a3 + 1;
  v25 = 2;
  v26 = v8;
  do
  {
    v23 += a3[v25];
    a3[v25++] = v23;
    --v26;
  }

  while (v26);
  v27 = 0;
  *a3 = 0;
  do
  {
    if (!a2 || *(a2 + 4 * v27) >= 1)
    {
      v28 = (*(a1 + 1) + 8 * v27);
      v29 = *v28;
      if (*v28 < v28[1])
      {
        v30 = *(a1 + 2);
        v31 = ~v29;
        do
        {
          v32 = *(v30 + 4 * v29);
          if (v27 <= v32 && v32 < *a1 && (!a5 || v27 != v32) && (!a2 || *(a2 + 4 * v32) >= 1))
          {
            v33 = v24[v27];
            *(v10 + v33) = v32;
            *(a4 + 8 * v33) = v29 + 1;
            ++v24[v27];
            if (v27 != v32)
            {
              v34 = v24[v32];
              *(v10 + v34) = v27;
              *(a4 + 8 * v34) = v31;
              ++v24[v32];
            }
          }

          ++v29;
          --v31;
        }

        while (v29 < v28[1]);
        LODWORD(v8) = a1[1];
      }
    }

    ++v27;
  }

  while (v27 < v8);
}

void sub_236786410(uint64_t a1, double *__b, char *a3)
{
  v4 = __b;
  v6 = *(a1 + 4);
  v7 = *(a1 + 28);
  v8 = (v7 * v7);
  v75 = v6;
  v9 = (v6 * v7);
  if (v9 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v6 * v7));
  }

  v71 = 8 * v9;
  v72 = v9;
  v10 = 0;
  v11 = v7 + 1;
  v12 = 8 * (v7 * v7);
  v13 = 8 * v7;
  do
  {
    while (1)
    {
      v73 = v10;
      if (v9 >= 1)
      {
        bzero(a3, v71);
      }

      if (v75 >= 1)
      {
        v14 = 0;
        v74 = *(a1 + 8);
        v15 = *v74;
        while (1)
        {
          v16 = v14 + 1;
          v17 = v74[v14 + 1];
          if (v15 < v17)
          {
            break;
          }

LABEL_51:
          v15 = v17;
          ++v14;
          if (v16 == v75)
          {
            goto LABEL_52;
          }
        }

        v18 = *(a1 + 16);
        v19 = v14 * v7;
        v20 = v12 * v15;
        v21 = v12 * v15 + 8;
        while (1)
        {
          v22 = *(v18 + 4 * v15);
          v23 = *(v18 + 4 * v15);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v14 <= v22 && v23 < *a1)
            {
              v36 = *(a1 + 32);
              v25 = (v36 + 8 * v15 * v8);
              if (v14 == v22)
              {
                if (v7)
                {
                  v37 = 0;
                  v38 = (v36 + v21);
                  v39 = &v4[v23 * v7 + 1];
                  v40 = &a3[8 * v23 * v7 + 8];
                  v41 = v7 - 1;
                  do
                  {
                    v42 = v37 + 1;
                    v43 = v37 + v19;
                    v44 = v41;
                    v45 = v40;
                    v46 = v39;
                    v47 = v38;
                    if (v37 + 1 < v7)
                    {
                      do
                      {
                        v48 = *v46++;
                        v49 = v48;
                        v50 = *v47++;
                        v51 = v4[v43] * (v49 * fabs(v50));
                        v52 = *v45;
                        if (v51 > *v45)
                        {
                          v52 = v51;
                        }

                        *v45++ = v52;
                        if (v51 <= *&a3[8 * v43])
                        {
                          v51 = *&a3[8 * v43];
                        }

                        *&a3[8 * v43] = v51;
                        --v44;
                      }

                      while (v44);
                    }

                    v53 = v4[v43] * (v4[v43] * fabs(v25[v37 * v11]));
                    if (v53 <= *&a3[8 * v43])
                    {
                      v53 = *&a3[8 * v43];
                    }

                    *&a3[8 * v43] = v53;
                    v38 = (v38 + v13 + 8);
                    v39 += 8;
                    v40 += 8;
                    --v41;
                    ++v37;
                  }

                  while (v42 != v7);
                }

                goto LABEL_50;
              }

LABEL_41:
              if (v7)
              {
                v54 = 0;
                v55 = v23 * v7;
                v56 = &v4[v23 * v7];
                v57 = &a3[8 * v55];
                do
                {
                  v58 = v54 + v19;
                  v59 = v7;
                  v60 = v57;
                  v61 = v56;
                  v62 = v25;
                  do
                  {
                    v63 = *v61++;
                    v64 = v63;
                    v65 = *v62++;
                    v66 = v4[v58] * (v64 * fabs(v65));
                    v67 = *v60;
                    if (v66 > *v60)
                    {
                      v67 = v66;
                    }

                    *v60++ = v67;
                    if (v66 <= *&a3[8 * v58])
                    {
                      v66 = *&a3[8 * v58];
                    }

                    *&a3[8 * v58] = v66;
                    --v59;
                  }

                  while (v59);
                  ++v54;
                  v25 = (v25 + v13);
                }

                while (v54 != v7);
              }
            }
          }

          else if (v14 >= v22)
          {
            v24 = *(a1 + 32);
            v25 = (v24 + 8 * v15 * v8);
            if (v14 != v22)
            {
              goto LABEL_41;
            }

            if (v7)
            {
              v26 = 0;
              v27 = v22 * v7;
              v28 = v24 + v20;
              v29 = &v4[v22 * v7];
              v30 = &a3[8 * v27];
              do
              {
                v31 = v14 * v7;
                if (v26)
                {
                  v32 = 0;
                  v31 = v26 + v19;
                  do
                  {
                    v33 = v4[v31] * (v29[v32] * fabs(*(v28 + 8 * v32)));
                    v34 = *&v30[8 * v32];
                    if (v33 > v34)
                    {
                      v34 = v33;
                    }

                    *&v30[8 * v32] = v34;
                    if (v33 <= *&a3[8 * v31])
                    {
                      v33 = *&a3[8 * v31];
                    }

                    *&a3[8 * v31] = v33;
                    ++v32;
                  }

                  while (v26 != v32);
                }

                v35 = v4[v31] * (v4[v31] * fabs(v25[v26 * v11]));
                if (v35 <= *&a3[8 * v31])
                {
                  v35 = *&a3[8 * v31];
                }

                *&a3[8 * v31] = v35;
                ++v26;
                v28 += v13;
              }

              while (v26 != v7);
            }
          }

LABEL_50:
          ++v15;
          v21 += v12;
          v20 += v12;
          if (v15 == v17)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      v9 = v72;
      v68 = v72;
      v69 = a3;
      v70 = v4;
      if (v72 >= 1)
      {
        break;
      }

      v10 = v73 + 1;
      if (v73 == 2)
      {
        return;
      }
    }

    do
    {
      if (*v69 == 0.0)
      {
        *v70 = INFINITY;
      }

      else
      {
        *v70 = *v70 / sqrt(*v69);
      }

      ++v70;
      ++v69;
      --v68;
    }

    while (v68);
    v10 = v73 + 1;
  }

  while (v73 != 2);
  do
  {
    if (fabs(*v4) == INFINITY)
    {
      *v4 = 1.0;
    }

    ++v4;
    --v9;
  }

  while (v9);
}

void sub_236786828(int *a1, uint64_t a2, uint64_t a3, double *__b, char *a5, char *a6)
{
  v8 = __b;
  v11 = a1[1];
  v12 = *a1;
  v13 = *(a1 + 28);
  LODWORD(v14) = v12 * v13;
  v53 = v12 * v13;
  v55 = v11;
  if (v12 * v13 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v12 * v13));
    LODWORD(v14) = v12 * v13;
  }

  v15 = (v11 * v13);
  v16 = 8 * v15;
  v54 = v15;
  if (v15 >= 1)
  {
    memset_pattern16(a5, &unk_23681FAF0, 8 * (v11 * v13));
    v15 = (v11 * v13);
    LODWORD(v14) = v12 * v13;
  }

  v17 = 0;
  v50 = 8 * v14;
  v51 = v16;
  v18 = 8 * (v13 * v13);
  v19 = &a6[8 * v12];
  do
  {
    v56 = v17;
    if (v14 >= 1)
    {
      bzero(a6, v50);
      v15 = v54;
      v11 = v55;
    }

    if (v15 >= 1)
    {
      bzero(&a6[8 * v12], v51);
      v15 = v54;
      v11 = v55;
    }

    if (v11 >= 1)
    {
      v20 = 0;
      v21 = *(a1 + 1);
      do
      {
        if (a3)
        {
          v22 = *(a3 + 4 * v20);
        }

        else
        {
          v22 = v20;
        }

        v23 = *(v21 + 8 * v20++);
        v24 = *(v21 + 8 * v20);
        if (v23 < v24)
        {
          v25 = *(a1 + 2);
          v26 = v13 * v22;
          v27 = v18 * v23;
          do
          {
            v28 = *(v25 + 4 * v23);
            if ((v28 & 0x80000000) == 0 && v28 < v12)
            {
              if (a2)
              {
                v28 = *(a2 + 4 * v28);
              }

              if (v13)
              {
                v29 = 0;
                v30 = v28 * v13;
                v31 = (*(a1 + 4) + v27);
                v32 = &v8[v30];
                v33 = &a6[8 * v30];
                do
                {
                  v34 = v29 + v26;
                  v35 = v13;
                  v36 = v33;
                  v37 = v32;
                  v38 = v31;
                  do
                  {
                    v39 = *v37++;
                    v40 = v39;
                    v41 = *v38++;
                    v42 = *&a5[8 * v34] * (v40 * fabs(v41));
                    v43 = *v36;
                    if (v42 > *v36)
                    {
                      v43 = v42;
                    }

                    *v36++ = v43;
                    if (v42 <= *&v19[8 * v34])
                    {
                      v42 = *&v19[8 * v34];
                    }

                    *&v19[8 * v34] = v42;
                    --v35;
                  }

                  while (v35);
                  ++v29;
                  v31 += v13;
                }

                while (v29 != v13);
              }
            }

            ++v23;
            v27 += v18;
          }

          while (v23 != v24);
        }
      }

      while (v20 != v11);
    }

    v14 = (v12 * v13);
    v44 = v14;
    v45 = a6;
    v46 = v8;
    if (v53 >= 1)
    {
      do
      {
        if (*v45 == 0.0)
        {
          *v46 = INFINITY;
        }

        else
        {
          *v46 = *v46 / sqrt(*v45);
        }

        ++v46;
        ++v45;
        --v44;
      }

      while (v44);
    }

    v47 = v15;
    v48 = &a6[8 * v12];
    v49 = a5;
    if (v15 >= 1)
    {
      do
      {
        if (*v48 == 0.0)
        {
          *v49 = 0x7FF0000000000000;
        }

        else
        {
          *v49 = *v49 / sqrt(*v48);
        }

        v49 += 8;
        ++v48;
        --v47;
      }

      while (v47);
    }

    v17 = v56 + 1;
  }

  while (v56 != 2);
  if (v53 >= 1)
  {
    do
    {
      if (fabs(*v8) == INFINITY)
      {
        *v8 = 1.0;
      }

      ++v8;
      --v14;
    }

    while (v14);
  }

  if (v15 >= 1)
  {
    do
    {
      if (fabs(*a5) == INFINITY)
      {
        *a5 = 0x3FF0000000000000;
      }

      a5 += 8;
      --v15;
    }

    while (v15);
  }
}

uint64_t _SparseNumericFactorHermitian_Complex_Double@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v10 = a1[2];
  *(a5 + 56) = a1[3];
  *(a5 + 40) = v10;
  v11 = *a1;
  *(a5 + 24) = a1[1];
  v12 = *(a1 + 17);
  v13 = *(a1 + 3);
  *a5 = -3;
  *(a5 + 8) = v11;
  *(a5 + 72) = 1;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 16 * *(a2 + 4) * *(a2 + 28);
  atomic_fetch_add((v13 + 48), 1u);
  *(a5 + 80) = sub_236786C10(v12, v13, 2 * *(a1 + 7), a3, a6);

  return _SparseRefactorHermitian_Complex_Double(a2, a5, a3, a4);
}

uint64_t sub_236786C10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    a5 = (*(a2 + 24))(a3);
    if (!a5)
    {
      if (*(a2 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorSymmetric.", a3);
        v10 = *(a2 + 40);
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F726C();
      }

LABEL_36:
      _SparseTrap();
    }
  }

  v9 = *(a2 + 60);
  if (*(a4 + 4) <= 1u)
  {
    if (*(a4 + 4))
    {
      v11 = *(a4 + 8) == 0;
    }

    else
    {
      v11 = a1 == 0;
    }

    if (v11)
    {
      v9 = 0;
    }
  }

  else if (*(a4 + 4) - 2 >= 2)
  {
    v10 = *(a2 + 40);
    if (v10)
    {
      memset(&__str[88], 0, 168);
      strcpy(__str, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
LABEL_31:
      v10(__str, a2, a3, a4, a5);
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7228();
    }

    goto LABEL_36;
  }

  v12 = a5 + a3;
  v13 = ((a5 + 103) & 0xFFFFFFFFFFFFFFF8);
  if (a5 + a3 < v13 || (v14 = &v13[*(a2 + 64)], v14 > v12))
  {
LABEL_38:
    __break(1u);
  }

  if (v9 * 8)
  {
    v15 = (&v14[v9] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v15 = &v13[*(a2 + 64)];
    v14 = 0;
  }

  v16 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v16;
  *(a5 + 32) = 1;
  *(a5 + 40) = v13;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = v14;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 85) = 0;
  v17 = *(a2 + 64);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = *(*(a2 + 88) + 4 * v18 + 4) - *(*(a2 + 88) + 4 * v18);
      v21 = (32 * v20) | 8;
      if ((a1 - 3) >= 2)
      {
        v21 = 8;
      }

      v15 = (v19 + v21 + ((16 * (*(*(a2 + 120) + 8 * v18 + 8) - *(*(a2 + 120) + 8 * v18))) | 4) * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v15)
      {
        goto LABEL_38;
      }

      v13[v18] = v19;
      v13 = *(a5 + 40);
      *v13[v18++] = 0;
      v19 = v15;
    }

    while (v17 != v18);
  }

  if (a1 == 4)
  {
    v22 = (v15 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v22)
    {
      goto LABEL_38;
    }

    *(a5 + 48) = v15;
    v15 = (v22 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }

    *(a5 + 56) = v22;
  }

  *(a5 + 72) = v15 - *v13;
  return a5;
}

uint64_t _SparseRefactorHermitian_Complex_Double(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a2;
  v96 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  if ((~*(a1 + 12) & 0x1C) != 0)
  {
    v18 = *(v5 + 40);
    if (v18)
    {
      memset(&v90[66], 0, 190);
      strcpy(v90, "_SparseRefactorHermitian only applies to SparseHermitian matrices");
LABEL_11:
      v18(v90);
      result = 4294967292;
      goto LABEL_85;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236763D08();
    }

LABEL_23:
    _SparseTrap();
  }

  v9 = *a1;
  v10 = *(a1 + 28);
  v11 = *(a2 + 80);
  v12 = *(a2 + 25);
  v13 = *(a3 + 4);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        v88 = *(a2 + 25);
        v14 = sub_23670CFB0(v9, *(*(a1 + 1) + 8 * v9), v10);
        v15 = a4;
        if (v14 + 4 * v9 > (2 * *(v4 + 48)))
        {
          v15 = (*(v5 + 24))();
        }

        v16 = *(v11 + 64);
        v17 = *(a1 + 1);
        *v90 = *a1;
        *&v90[16] = v17;
        *&v90[32] = *(a1 + 4);
        sub_2367141F8(v90, v15, v16, &v15[4 * v9], v14);
        v12 = v88;
        if (v15 != a4)
        {
          (*(v5 + 32))(v15);
        }

        goto LABEL_15;
      }

      v18 = *(v5 + 40);
      if (v18)
      {
        memset(&v90[88], 0, 168);
        strcpy(v90, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7228();
      }

      goto LABEL_23;
    }

LABEL_14:
    v19 = *(v11 + 64);
    v20 = *(a1 + 1);
    *v90 = *a1;
    *&v90[16] = v20;
    *&v90[32] = *(a1 + 4);
    sub_23671B5CC(v90, v19, a4);
    goto LABEL_15;
  }

  if (!*(a3 + 4))
  {
    if (!*(a2 + 25))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = *(a3 + 8);
  if (v26)
  {
    v27 = (v9 * v10);
    if (v27 >= 1)
    {
      v28 = *(v11 + 64);
      do
      {
        v29 = *v26++;
        *v28++ = v29;
        --v27;
      }

      while (v27);
    }
  }

LABEL_15:
  v21 = *(a3 + 8);
  if (v21 && *(a3 + 4) != 1)
  {
    v22 = *(v11 + 64);
    v23 = (v9 * v10);
    if (v22)
    {
      if (v23 >= 1)
      {
        do
        {
          v24 = *v22++;
          *v21++ = v24;
          --v23;
        }

        while (v23);
      }
    }

    else if (v23 >= 1)
    {
      memset_pattern16(v21, &unk_23681FAF0, 8 * (v9 * v10));
    }
  }

  v87 = a1;
  v30 = *(a1 + 28);
  v31 = 0x100 / v30 * v30;
  if (v31 <= v30)
  {
    v32 = *(a1 + 28);
  }

  else
  {
    v32 = v31;
  }

  v33 = &a4[2 * *(v4 + 48)];
  v34 = *(v5 + 60);
  v89 = &a4[4 * v34 + 7] & 0xFFFFFFFFFFFFFFF8;
  if (v33 < v89)
  {
    goto LABEL_88;
  }

  if (v34 >= 1)
  {
    v35 = 0;
    v36 = *(v5 + 80);
    do
    {
      *&a4[4 * *(v36 + 4 * v35)] = v35;
      ++v35;
    }

    while (v35 < *(v5 + 60));
  }

  bzero(**(v11 + 40), *(v11 + 72));
  v37 = *(v5 + 64);
  if (v37 < 1)
  {
    v42 = 0;
  }

  else
  {
    v38 = 0;
    v39 = *(v11 + 40);
    do
    {
      v40 = *(v39 + 8 * v38);
      v41 = *v40;
      if (*v40)
      {
        bzero(v40, *v40);
        v39 = *(v11 + 40);
        v37 = *(v5 + 64);
        v40 = *(v39 + 8 * v38);
      }

      *v40 = v41;
      ++v38;
    }

    while (v38 < v37);
    v42 = v37 > 0;
  }

  v43 = *(v5 + 60);
  if (*(v5 + 52) > 1)
  {
    v44 = (16 * v32 * v32 + 56) + 4 * (v43 + 2 * v32);
    v45 = v4;
    if ((v12 - 3) >= 2)
    {
      if (v12 == 2)
      {
        v51 = *(v5 + 176);
        v52 = 16 * v51;
        v53 = v51 <= 4160;
        v54 = 66560;
        if (!v53)
        {
          v54 = v52;
        }

        v44 += v54;
      }
    }

    else
    {
      v46 = 32 * v43;
      if (*(v5 + 60) <= 2080)
      {
        v46 = 66560;
      }

      v44 += v46;
    }

    v55 = sub_2366FCCD0(0);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v56 = (v89 + (v44 + 16) * v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v33 >= v56)
    {
      v57 = sub_2366FCCD0(0);
      _X2 = 0;
      LODWORD(v91) = v57;
      atomic_store(0, &v91 + 1);
      atomic_store(0, (&v91 | 0xC));
      atomic_store(0, &v92);
      v59 = v93;
      do
      {
        _X5 = *(&v93 + 1);
        __asm { CASPAL          X4, X5, X2, X3, [X26] }

        _ZF = _X4 == v59;
        v59 = _X4;
      }

      while (!_ZF);
      *&v94 = v44;
      *(&v94 + 1) = v89;
      *&v90[36] = 0;
      *v90 = v12;
      *&v90[8] = v87;
      *&v90[16] = v5;
      *&v90[24] = v11;
      *&v90[32] = v32;
      *&v90[40] = a4;
      v66 = *(v5 + 64);
      v67 = v56 + 40 * v66;
      if (v67 <= v33)
      {
        *&v90[48] = v56;
        v68 = (v67 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v33 >= v68)
        {
          *&v90[56] = v67;
          v69 = v68 + 19200;
          if (v68 + 19200 <= v33)
          {
            *&v90[64] = sub_2367921D4(100, (v68 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v90[72] = v70;
            if (v69 + 48 * *(v5 + 168) <= v33)
            {
              *&v90[80] = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
              *&v90[88] = 0;
              *&v95 = v90;
              if (*(v5 + 64) >= 1)
              {
                _X22 = 0;
                v72 = 0;
                do
                {
                  v73 = v72 + 1;
                  v74 = *&v90[48] + 40 * v72;
                  _ZF = *(*(v5 + 96) + 4 * (v72 + 1)) == *(*(v5 + 96) + 4 * v72);
                  atomic_store(*(*(v5 + 96) + 4 * (v72 + 1)) - *(*(v5 + 96) + 4 * v72), v74);
                  *(v74 + 8) = v72;
                  *(v74 + 16) = sub_236788A18;
                  *(*&v90[56] + v72) = 0;
                  if (_ZF)
                  {
                    v75 = *&v90[48] + 40 * v72;
                    _X0 = 0;
                    _X1 = 0;
                    __asm { CASP            X0, X1, X0, X1, [X24] }

                    *(v75 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                    *(v75 + 32) = 0;
                    v79 = _X0 & 1;
                    _X2 = v79 | v75;
                    _X5 = 0;
                    __asm { CASPL           X4, X5, X2, X3, [X24] }

                    while (_X4 != _X0)
                    {
                      _X1 = 0;
                      __asm { CASP            X0, X1, X22, X23, [X10] }

                      *(v75 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v75 + 32) = 0;
                      v79 = _X0 & 1;
                      _X2 = v79 | v75;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    if (v79)
                    {
                      __ulock_wake();
                    }
                  }

                  v72 = v73;
                }

                while (v73 < *(v5 + 64));
              }

              result = sub_2366FCD2C(&v91, 0);
              v4 = v45;
              goto LABEL_85;
            }
          }
        }
      }
    }

LABEL_88:
    __break(1u);
  }

  v86 = v4;
  v47 = ((v89 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v33 < v47)
  {
    goto LABEL_88;
  }

  v48 = (&v47[v32 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v33 < v48)
  {
    goto LABEL_88;
  }

  v49 = (v48 + 4 * v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v33 < v49 || v49 + 16 * v32 * v32 > v33)
  {
    goto LABEL_88;
  }

  if (v42)
  {
    v50 = 0;
    while (1)
    {
      result = sub_236788C74(0, v50, v12, v87, v5, v11, v32, a4, v89, v47, ((&v47[v32 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v48 + 4 * v32 + 7) & 0xFFFFFFFFFFFFFFF8, (v49 + 16 * v32 * v32), 0);
      if (result)
      {
        break;
      }

      v50 = (v50 + 1);
      if (v50 >= *(v5 + 64))
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    result = 0;
  }

  v4 = v86;
LABEL_85:
  *v4 = result;
  return result;
}

uint64_t _SparseFactorHermitian_Complex_Double@<X0>(unsigned int a1@<W0>, int *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v225 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *(*(a2 + 1) + 8 * v9);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  *a5 = -3;
  *(a5 + 8) = -3;
  *(a5 + 12) = v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = a2[6] & 1;
  v11 = *(a2 + 28);
  *(a5 + 24) = v11;
  *(a5 + 25) = v7;
  *(a5 + 57) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 16 * v11 * v8;
  v12 = 8;
  if (*(a3 + 2))
  {
    v12 = 9;
  }

  v13 = v12 + v11;
  v14 = !is_mul_ok(v13, v9);
  v15 = v13 * v9;
  v16 = __CFADD__(v15, 2);
  v17 = v15 + 2;
  v18 = v16;
  v19 = v18 << 63 >> 63 != v18;
  if (v14 || v19 || ((v16 = __CFADD__(v17, 2 * v10), v20 = v17 + 2 * v10, !v16) ? (v21 = 0) : (v21 = 1), v10 < 0 || (v21 & 1) != 0 || v20 >> 62 || (v24 = 2 * v9 + 2, (v9 & 0x80000000) != 0) || 2 * v9 >= 0xFFFFFFFFFFFFFFFELL || (v25 = 2 * v10, v16 = __CFADD__(v24, v25), v26 = v24 + v25, v16) || ((v27 = 4 * v20 + 8 * v26, !__CFADD__(4 * v20, 8 * v26)) ? (v28 = 0) : (v28 = 1), v26 >> 61 || (v28 & 1) != 0 || (v29 = v27 + 88, v27 >= 0xFFFFFFFFFFFFFFA8))))
  {
    v22 = *(a3 + 5);
    if (!v22)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F71E4();
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v22(__str);
    goto LABEL_19;
  }

  v32 = (*(a3 + 3))(v29);
  if (!v32)
  {
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v29);
      return (*(a3 + 5))(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

LABEL_112:
    _SparseTrap();
  }

  __b = v32;
  v33 = *(a2 + 1);
  *__str = *a2;
  *&__str[16] = v33;
  v34 = _SparseFromStructureComplex(__str, &v216);
  v35 = BYTE12(v217);
  v213 = v216;
  v212 = v216 * BYTE12(v217);
  v36 = v212 + 224;
  if (!*(a3 + 2))
  {
    v36 = 224;
  }

  v37 = v36 + 4 * (BYTE12(v217) + 2) * v216;
  v38 = (*(a3 + 3))(v37, v34);
  if (!v38)
  {
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v37);
LABEL_50:
      (*(a3 + 5))(__str);
      return (*(a3 + 4))(__b);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  v39 = v38;
  v205 = v29;
  v40 = v38 + v37;
  v41 = (v38 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (v40 < v41)
  {
    goto LABEL_306;
  }

  v42 = v213;
  v43 = a3[1];
  v44 = a3[2];
  v221 = *a3;
  v222 = v43;
  v223 = v44;
  v45 = 1;
  v214 = v39;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    v45 = sub_2366FCCD0(0);
    v42 = v213;
    v39 = v214;
  }

  v46 = v222;
  *v39 = v221;
  v39[1] = v46;
  v39[2] = v223;
  *(v39 + 12) = 1;
  *(v39 + 13) = v45;
  *(v39 + 14) = v42;
  *(v39 + 15) = v212;
  *(v39 + 16) = 0;
  *(v39 + 72) = 0u;
  v47 = (v41 + 4 * v213 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v39 + 88) = 0u;
  *(v39 + 104) = 0u;
  *(v39 + 120) = 0u;
  *(v39 + 136) = 0u;
  *(v39 + 152) = 0u;
  *(v39 + 164) = 0u;
  if (v40 < v47)
  {
    goto LABEL_306;
  }

  *(v39 + 9) = v41;
  v48 = (v47 + 4 * v212 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v40 < v48)
  {
    goto LABEL_306;
  }

  v49 = 4 * v213;
  *(v39 + 10) = v47;
  v50 = ((v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v40 < v50)
  {
    goto LABEL_306;
  }

  *(v39 + 14) = v48;
  v51 = *(a3 + 2);
  if (v51)
  {
    if (v40 < ((v50 + v212 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_306;
    }

    *(v39 + 17) = v50;
    v52 = 9;
  }

  else
  {
    v50 = 0;
    v52 = 8;
  }

  v53 = 0;
  v54 = v52 + BYTE12(v217);
  v55 = !is_mul_ok(v54, v213);
  v56 = v54 * v213;
  v16 = __CFADD__(v56, 2);
  v57 = v56 + 2;
  v58 = v16;
  v59 = v58 << 63 >> 63 != v58;
  if (v55 || v59)
  {
    goto LABEL_64;
  }

  v53 = 0;
  v60 = *(*(&v216 + 1) + 8 * v213);
  v16 = __CFADD__(v57, 2 * v60);
  v61 = v57 + 2 * v60;
  v62 = v16;
  if (v60 < 0 || v62)
  {
    goto LABEL_64;
  }

  v53 = v61 >> 62;
  if (v61 >> 62)
  {
    goto LABEL_63;
  }

  v118 = 2 * v213 + 2;
  if (v42 < 0 || (2 * v213) >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_64;
  }

  v16 = __CFADD__(v118, 2 * v60);
  v119 = v118 + 2 * v60;
  if (v16)
  {
LABEL_63:
    v53 = 0;
  }

  else
  {
    v53 = 0;
    v120 = 4 * v61;
    v16 = __CFADD__(v120, 8 * v119);
    v121 = v120 + 8 * v119;
    v122 = v16;
    if (!(v119 >> 61) && (v122 & 1) == 0)
    {
      v53 = v121 + 88;
    }
  }

LABEL_64:
  v63 = &__b[v53];
  v64 = (v35 + 3) * v42;
  if (v64 <= 6 * v42 + 12)
  {
    v65 = 24 * v42 + 48;
  }

  else
  {
    v65 = 4 * v64;
  }

  v66 = (&__b[v65 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v63 < v66)
  {
    goto LABEL_306;
  }

  v67 = (&v66[v49 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v63 < v67)
  {
    goto LABEL_306;
  }

  v40 = (v67 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v63 < v40)
  {
    goto LABEL_306;
  }

  v209 = v41;
  v68 = *(*(&v216 + 1) + 8 * SDWORD1(v216));
  v69 = v40 + 8 * (v213 + v68) + 16;
  if (v69 > v63)
  {
    goto LABEL_306;
  }

  v210 = v48;
  v70 = v69 + 16 * v68;
  if (v70 > v63)
  {
    goto LABEL_306;
  }

  v71 = ((v70 + 8 * v213) & 0xFFFFFFFFFFFFFFF8);
  if (v63 < v71)
  {
    goto LABEL_306;
  }

  v206 = v69 + 16 * v68;
  v207 = v40 + 8 * (v213 + v68) + 16;
  v208 = (&v66[v49 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (!v51)
  {
    v71 = 0;
    goto LABEL_89;
  }

  if (v63 < (&v71[v49 + 7] & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_306:
    __break(1u);
LABEL_307:
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v40);
      return (*(a3 + 5))(__str);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

    goto LABEL_112;
  }

  bzero(v50, v212);
  if (v213 >= 1)
  {
    v72 = BYTE12(v217);
    v73 = (v213 + 3) & 0xFFFFFFFC;
    v74 = vdupq_n_s64(v213 - 1);
    v75 = xmmword_23681F910;
    v76 = xmmword_23681F920;
    v77 = v71 + 8;
    v78 = vdupq_n_s64(4uLL);
    do
    {
      v79 = vmovn_s64(vcgeq_u64(v74, v76));
      if (vuzp1_s16(v79, *v74.i8).u8[0])
      {
        *(v77 - 2) = v72;
      }

      if (vuzp1_s16(v79, *&v74).i8[2])
      {
        *(v77 - 1) = v72;
      }

      if (vuzp1_s16(*&v74, vmovn_s64(vcgeq_u64(v74, *&v75))).i32[1])
      {
        *v77 = v72;
        v77[1] = v72;
      }

      v75 = vaddq_s64(v75, v78);
      v76 = vaddq_s64(v76, v78);
      v77 += 4;
      v73 -= 4;
    }

    while (v73);
  }

  v80 = *(a3 + 2);
  v81 = *v80;
  v70 = v206;
  if ((*v80 & 0x80000000) == 0)
  {
    v82 = BYTE12(v217);
    v83 = *(v214 + 17);
    v84 = (v80 + 1);
    do
    {
      --*&v71[4 * (v81 / v82)];
      *(v83 + *(v84 - 1)) = 1;
      v85 = *v84++;
      v81 = v85;
    }

    while ((v85 & 0x80000000) == 0);
  }

  v69 = v207;
LABEL_89:
  v219 = 0u;
  v220 = 0u;
  if ((BYTE8(v217) & 2) != 0)
  {
    *__str = v216;
    *&__str[16] = v217;
    sub_2367861D0(__str, v71, v40, v69, v70, &v219);
  }

  else
  {
    v218[0] = v216;
    v218[1] = v217;
    sub_236785FB0(v218, v71, v40, v69, v70, __str);
    v219 = *__str;
    v220 = *&__str[16];
  }

  *__str = v219;
  *&__str[16] = v220;
  if (sub_2367E3E64(v7, __str, v71, v209, v66, a3))
  {
    free(v214);
    return (*(a3 + 4))(__b);
  }

  *__str = v219;
  *&__str[16] = v220;
  sub_236768978(__str, 0, v71, v209, v66, v210, __b, 0);
  sub_236750DDC(v213, v210, v209, v66, __b);
  *__str = v219;
  *&__str[16] = v220;
  sub_2366EE0E8(__str, 0, v71, v209, v66, v210, v208, __b, 0);
  v86 = sub_236767CA0(v213, BYTE12(v217), v71, v209, v66, *(v214 + 14), v208, __b, a3, &__b[4 * v213 + 4]);
  v214[16] = v86;
  *(v214 + 20) = 0;
  *(v214 + 21) = 0;
  v214[44] = 0;
  if (v86 < 1)
  {
    v40 = 0;
  }

  else
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v40 = 0;
    v91 = BYTE12(v217);
    do
    {
      v92 = *(v208 + 4 * v88);
      v93 = &__b[4 * v88];
      if (v71)
      {
        v95 = *v93;
        v94 = *(v93 + 1);
        if (v95 >= v94)
        {
          v96 = 0;
        }

        else
        {
          v96 = 0;
          v97 = v94 - v95;
          v98 = &v66[v95];
          do
          {
            v99 = *v98++;
            v96 += *&v71[4 * v99];
            --v97;
          }

          while (v97);
        }
      }

      else
      {
        v92 = v91 * v92;
        v96 = (*(v93 + 1) - *v93) * v91;
      }

      if (v96 > v90)
      {
        v214[44] = v96;
        v90 = v96;
      }

      if (v92 > 192 || v96 >= 97)
      {
        v87 += ((v96 - 1) / 96 + 1) * ((v92 - 1) / 96) + (v96 - 1) / 96 + 1;
        *(v214 + 21) = v87;
      }

      v89 += v92 * v96;
      v40 += v92;
      ++v88;
    }

    while (v88 != v86);
    *(v214 + 20) = v89;
  }

  *v211 = 4 * (v40 + 3 * v86 + 3) + 16 * v86 + 16 * *(*(&v216 + 1) + 8 * v213) + 72;
  v100 = (*(a3 + 3))();
  if (!v100)
  {
    free(v214);
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", *v211);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_114:
      sub_2366F716C();
    }

LABEL_115:
    _SparseTrap();
  }

  v101 = v100 + *v211;
  v102 = v214;
  v103 = v214[16];
  v104 = v103 + 1;
  v105 = (v100 + 4 * (v103 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v100 + *v211 < v105)
  {
    goto LABEL_306;
  }

  *(v214 + 11) = v100;
  v106 = (v105 + 4 * v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v106)
  {
    goto LABEL_306;
  }

  *(v214 + 12) = v105;
  v107 = (v106 + 4 * v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v107)
  {
    goto LABEL_306;
  }

  *(v214 + 13) = v106;
  v108 = v107 + 8 * v104;
  if (v108 > v101)
  {
    goto LABEL_306;
  }

  *(v214 + 15) = v107;
  v109 = (v108 + 4 * v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v109)
  {
    goto LABEL_306;
  }

  *(v214 + 16) = v108;
  v110 = v109 + 8 * v104;
  if (v110 > v101)
  {
    goto LABEL_306;
  }

  *(v214 + 18) = v109;
  if (v110 + 16 * *(*(&v216 + 1) + 8 * v213) > v101)
  {
    goto LABEL_306;
  }

  *(v214 + 19) = v110;
  if (v71)
  {
    if (v103 < 1)
    {
      v112 = 0;
    }

    else
    {
      v111 = 0;
      v112 = 0;
      do
      {
        *(v100 + 4 * v111) = v112;
        v113 = *&__b[4 * v111++];
        v114 = *&__b[4 * v111];
        if (v113 < v114)
        {
          v115 = v114 - v113;
          v116 = &v66[v113];
          do
          {
            v117 = *v116++;
            v112 += *&v71[4 * v117];
            --v115;
          }

          while (v115);
        }

        v103 = v214[16];
      }

      while (v111 < v103);
    }

    *(v100 + 4 * v103) = v112;
  }

  else if ((v103 & 0x80000000) == 0)
  {
    v123 = 0;
    v124 = BYTE12(v217);
    do
    {
      *(v100 + 4 * v123) = *&__b[4 * v123] * v124;
      v180 = v123++ < v214[16];
    }

    while (v180);
  }

  if (*(a3 + 2))
  {
    bzero(*(v214 + 10), 4 * v212);
    v102 = v214;
    v125 = *(a3 + 2);
    v126 = *v125;
    if ((v126 & 0x80000000) == 0)
    {
      v127 = *(v214 + 10);
      v128 = v212 - 1;
      v129 = v125 + 1;
      do
      {
        *(v127 + 4 * v126) = v128;
        v130 = *v129++;
        v126 = v130;
        --v128;
      }

      while ((v130 & 0x80000000) == 0);
    }

    if (v213 >= 1)
    {
      v131 = 0;
      v132 = 0;
      v133 = BYTE12(v217);
      do
      {
        if (v133)
        {
          v134 = 0;
          v135 = *(v214 + 10);
          do
          {
            v136 = v134 + v66[v131] * v133;
            if (!*(v135 + 4 * v136))
            {
              *(v135 + 4 * v136) = v132++;
            }

            ++v134;
          }

          while (v133 != v134);
        }

        ++v131;
      }

      while (v131 != v213);
    }
  }

  else if (v213 >= 1)
  {
    v137 = 0;
    v138 = 0;
    v139 = BYTE12(v217);
    v140 = 4 * BYTE12(v217);
    do
    {
      if (v139)
      {
        v141 = 0;
        v142 = *(v214 + 9);
        v143 = *(v214 + 10) + v137;
        do
        {
          *(v143 + 4 * v141) = v141 + *(v142 + 4 * v138) * v139;
          ++v141;
        }

        while (v139 != v141);
      }

      ++v138;
      v137 += v140;
    }

    while (v138 != v213);
  }

  sub_236812888(v102[16], *(v102 + 14), *(v102 + 12), *(v102 + 13));
  sub_23679A71C(&v219, v214, __b, *(a3 + 2), v66, &__b[4 * v214[16] + 4]);
  sub_23678A440(&v219, v214, v207, v206, __b);
  v145 = v214[15];
  v144 = v214[16];
  v146 = 8 * v144;
  v147 = *(v214 + 20);
  v148 = v145 < 0;
  v149 = 16 * v144 + 4 * v145;
  if (__CFADD__(16 * v144, 4 * v145))
  {
    v148 = 1;
  }

  if (v144 >= 0)
  {
    v150 = v148;
  }

  else
  {
    v149 = 8 * v144;
    v150 = 1;
  }

  if (v7 == 4)
  {
    if (v150)
    {
      goto LABEL_199;
    }

    v16 = __CFADD__(v147, 2 * v145);
    v147 += 2 * v145;
    v152 = v16;
    v16 = __CFADD__(v149, v146);
    v149 += v146;
    v151 = v16;
    if ((v145 & 0x80000000) != 0 || v152 || (v144 & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

    goto LABEL_194;
  }

  if (v7 == 3)
  {
    if (v150)
    {
      goto LABEL_199;
    }

    v16 = __CFADD__(v147, 2 * v145);
    v147 += 2 * v145;
    v151 = v16;
    if ((v145 & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_194:
    if (v151)
    {
      goto LABEL_199;
    }

    goto LABEL_197;
  }

  if (v150)
  {
LABEL_199:
    v154 = *(a3 + 5);
    if (!v154)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F72E4();
      }

      _SparseTrap();
    }

    memset(&__str[40], 0, 216);
    strcpy(__str, "Computation of factor size overflowed.\n");
    v154(__str);
    (*(a3 + 4))(__b);
    return sub_23680EEA8(v214, a3);
  }

LABEL_197:
  v16 = __CFADD__(v145, v147);
  v153 = v145 + v147;
  if (v16)
  {
    goto LABEL_199;
  }

  v155 = v144 + 5;
  if (v144 < -5)
  {
    v155 = -5 - v144;
  }

  v156 = 8 * v155;
  if (v144 < -5)
  {
    v156 = -8 * v155;
  }

  v16 = __CFADD__(v149, v156);
  v157 = v149 + v156;
  v158 = v16;
  if (v144 < -5)
  {
    goto LABEL_199;
  }

  if (v155 >> 61)
  {
    goto LABEL_199;
  }

  if (v158)
  {
    goto LABEL_199;
  }

  v159 = v157 + 96;
  if (v157 >= 0xFFFFFFFFFFFFFFA0)
  {
    goto LABEL_199;
  }

  v160 = __CFADD__(v159, 4 * v153);
  *(a5 + 56) = v159 + 4 * v153;
  if (v153 >> 62 || v160)
  {
    goto LABEL_199;
  }

  v161 = v159 + 8 * v153;
  v162 = __CFADD__(v159, 8 * v153);
  *(a5 + 64) = v161;
  if (v153 >> 61 || v162)
  {
    goto LABEL_199;
  }

  if ((*(a3 + 3) & 0x40) != 0)
  {
    v163 = 1;
  }

  else
  {
    v163 = sub_2366FCCD0(0);
  }

  v164 = *(a2 + 28);
  if (0x100 / v164 * v164 <= v164)
  {
    v165 = *(a2 + 28);
  }

  else
  {
    v165 = 0x100 / v164 * v164;
  }

  v166 = *(a2 + 28) * v9;
  v167 = v166 + 2 * v165;
  v168 = v167 >> 62;
  if (v167 >> 62)
  {
    v169 = 0;
LABEL_235:
    v168 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 1;
    goto LABEL_261;
  }

  v169 = 4 * v167 + 72;
  v173 = v214[16];
  if (v173 >= 0)
  {
    v174 = v214[16];
  }

  else
  {
    v174 = -v173;
  }

  v175 = 41 * v174;
  if (v173 < 0)
  {
    v175 = -v175;
  }

  v176 = v175 + 32;
  v177 = v175 >= 0xFFFFFFFFFFFFFFE0;
  v172 = 1;
  if (v173 < 0 || v177)
  {
    goto LABEL_260;
  }

  v178 = v176 + 19200;
  if (v176 >= 0xFFFFFFFFFFFFB500)
  {
    goto LABEL_235;
  }

  v168 = 0;
  v179 = *(v214 + 21);
  v180 = v179 < 0;
  v181 = v179 < 0;
  if (v179 < 0)
  {
    v179 = -v179;
  }

  v182 = (v179 * 0x30uLL) >> 64;
  v183 = 48 * v179;
  if (v180)
  {
    v184 = -v183;
  }

  else
  {
    v184 = v183;
  }

  v185 = v182 != 0;
  if (!v183)
  {
    v181 = 0;
  }

  v186 = v178 + v184;
  v187 = __CFADD__(v178, v184);
  v172 = 1;
  if (v185 || v181 || v187)
  {
LABEL_260:
    v170 = 0;
    v171 = 0;
  }

  else
  {
    v16 = __CFADD__(v186, 4 * v166);
    v171 = v186 + 4 * v166;
    if (v16)
    {
      v168 = 0;
      v170 = 0;
    }

    else
    {
      v172 = 0;
      v170 = (v164 * v164) * v9;
      v168 = v165 * v165;
    }
  }

LABEL_261:
  if ((v7 - 3) >= 2)
  {
    if (v7 == 2)
    {
      if ((v172 & 1) == 0)
      {
        LODWORD(v191) = v214[44];
        if (v191 <= 4160)
        {
          v191 = 4160;
        }

        else
        {
          v191 = v191;
        }

        v190 = v168 + v191;
        goto LABEL_276;
      }
    }

    else if ((v172 & 1) == 0)
    {
      v16 = __CFADD__(v170, 2 * v168);
      v190 = v170 + 2 * v168;
      if (!v16)
      {
        goto LABEL_276;
      }
    }

LABEL_300:
    v204 = *(a3 + 5);
    if (!v204)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7128();
      }

      _SparseTrap();
    }

    memset(&__str[73], 0, 183);
    strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
    v204(__str);
    result = (*(a3 + 4))(__b);
LABEL_19:
    *a5 = -4;
    return result;
  }

  if (v172)
  {
    goto LABEL_300;
  }

  v188 = 4160;
  if (2 * v9 > 0x1040)
  {
    v188 = 2 * v9;
  }

  v189 = v168 + v188;
  v16 = __CFADD__(v170, v189);
  v190 = v170 + v189;
  if (v16)
  {
    goto LABEL_300;
  }

LABEL_276:
  v192 = !is_mul_ok(v169, v163);
  v193 = v169 * v163;
  v16 = __CFADD__(v171, v193);
  v194 = v171 + v193;
  v195 = v16;
  if (v192 || (v195 & 1) != 0)
  {
    goto LABEL_300;
  }

  v196 = !is_mul_ok(v190, v163);
  v197 = v190 * v163;
  v16 = __CFADD__(v170, v197);
  v198 = v170 + v197;
  v199 = v16;
  if (v196 || v199)
  {
    goto LABEL_300;
  }

  v200 = __CFADD__(v194, 4 * v198);
  *(a5 + 40) = v194 + 4 * v198;
  if (v198 >> 62 || v200)
  {
    goto LABEL_300;
  }

  v16 = __CFADD__(v194, 8 * v198);
  v201 = v194 + 8 * v198;
  v202 = v16;
  *(a5 + 48) = v201;
  if (v198 >> 61 || v202)
  {
    goto LABEL_300;
  }

  v40 = 2 * v201;
  if (2 * v201 > v205)
  {
    (*(a3 + 4))(__b);
    __b = (*(a3 + 3))(v40);
    if (!__b)
    {
      goto LABEL_307;
    }
  }

  *(a5 + 8) = 0;
  *(a5 + 32) = v214;
  v203 = sub_236786C10(v7, v214, 2 * v161, a4, 0);
  if (!v203)
  {
    return (*(a3 + 4))(__b);
  }

  *(a5 + 80) = v203;
  _SparseRefactorHermitian_Complex_Double(a2, a5, a4, __b);
  return (*(a3 + 4))(__b);
}

void *sub_236788A18(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[1];
  v5 = *(v4 + 64);
  v6 = *v5;
  if ((v6 - 3) >= 2)
  {
    if (v6 != 2)
    {
      v9 = 0;
      v7 = *(v5 + 2);
      goto LABEL_9;
    }

    v7 = *(v5 + 2);
    v11 = *(v7 + 176);
    v9 = 16 * v11;
    v10 = v11 <= 4160;
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v7 + 60);
    v9 = 32 * v8;
    v10 = v8 <= 2080;
  }

  if (v10)
  {
    v9 = 66560;
  }

LABEL_9:
  v12 = result[5];
  v13 = v12 + *(v4 + 48);
  v14 = ((v12 + 4 * *(v7 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v14 || (v15 = *(v5 + 8), v16 = (&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v13 < v16) || (v17 = (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = v17 + 16 * v15 * v15, v18 > v13) || v13 < ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    result = sub_236788C74(result, a2, v6, *(v5 + 1), v7, *(v5 + 3), v15, *(v5 + 5), v12, v14, ((&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, (v17 + 16 * v15 * v15), v5);
    if (result)
    {
      _X2 = 0;
      v20 = v3[1];
      atomic_store(result, (v20 + 16));
      atomic_store(1u, (v20 + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {

        return __ulock_wake();
      }
    }

    else
    {
      v27 = *(*(*(v5 + 2) + 112) + 4 * v2);
      if (v27 != -1)
      {
        v28 = (*(v5 + 6) + 40 * v27);
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v29 = v3[2];
          if (v29)
          {
            _X4 = 0;
            _X5 = 0;
            __asm { CASP            X4, X5, X4, X5, [X1] }

            *(v29 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v29 + 32) = 0;
            v33 = _X4 & 1;
            _X2 = v33 | v29;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 != _X4)
            {
              _X4 = 0;
              do
              {
                _X7 = 0;
                __asm { CASP            X6, X7, X4, X5, [X1] }

                *(v29 + 24) = _X6 & 0xFFFFFFFFFFFFFFFELL;
                *(v29 + 32) = 0;
                v33 = _X6 & 1;
                _X2 = v33 | v29;
                _X11 = 0;
                __asm { CASPL           X10, X11, X2, X3, [X1] }
              }

              while (_X10 != _X6);
            }

            if (v33)
            {
              result = __ulock_wake();
            }
          }

          v3[2] = v28;
          v3[3] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_236788C74(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, int *a11, uint64_t a12, char *a13, uint64_t a14)
{
  v14 = a7;
  v199 = a1;
  v205 = a13;
  v206 = a2;
  v207[1] = *MEMORY[0x277D85DE8];
  v201 = a4;
  v16 = *(a4 + 28);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v17 = sub_23671470C;
    }

    else
    {
      v17 = sub_236715298;
    }
  }

  else
  {
    if (!a3)
    {
      v196 = sub_23671554C;
      v205 = 0;
      goto LABEL_9;
    }

    v17 = sub_2367160C4;
  }

  v196 = v17;
LABEL_9:
  LODWORD(v204) = a3;
  v18 = a5[15];
  v19 = v206;
  v20 = *(v18 + 8 * v206);
  v21 = *(v18 + 8 * (v206 + 1)) - v20;
  v22 = a5[11];
  v195 = v206 + 1;
  v23 = *(v22 + 4 * (v19 + 1)) - *(v22 + 4 * v19);
  v24 = *(*(a6 + 40) + 8 * v206) + 8;
  v198 = v21;
  v25 = v21;
  if (((a3 - 3) & 0xFE) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2 * v23;
  }

  v202 = v24;
  v27 = v24 + 16 * v21 * v23 + 16 * v26;
  if (v23 >= 1)
  {
    v28 = 0;
    do
    {
      *(v27 + 4 * v28) = *(a8 + 4 * (v28 + *(v22 + 4 * v19)));
      ++v28;
    }

    while (v23 != v28);
  }

  v197 = v23;
  v30 = a5[18];
  v29 = a5[19];
  v32 = a5[16];
  v31 = a5[17];
  v203 = a5;
  v33 = v32 + 4 * v20;
  v35 = *(a6 + 64);
  v36 = (v30 + 8 * v19);
  v37 = *v36;
  v38 = v36[1];
  if (v35)
  {
    if (*v36 < v38)
    {
      v200 = 16 * (v16 * v16);
      if (v16 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v16;
      }

      v40 = 16 * v16;
      v41 = 16 * v25;
      do
      {
        v42 = (v29 + 8 * v37);
        v44 = *v42;
        v43 = v42[1];
        v45 = v43 % v25;
        v46 = v201[4];
        v47 = (v43 / v25);
        v48 = v202 + 16 * v47 * v25 + 16 * v45;
        v49 = *(v33 + 4 * v45);
        if (v31)
        {
          v50 = v49 / v16 * v16;
          v51 = (v35 + 8 * v50);
          v52 = *(v33 + 4 * v47) / v16 * v16;
          v53 = v35 + 8 * v52;
          v54 = (v31 + v50);
          v55 = v31 + v52;
          v56 = 0;
          if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
          {
            v57 = -v44;
          }

          else
          {
            v57 = v44;
          }

          v58 = v57 - 1;
          if (v44 < 0)
          {
            v78 = v46 + v200 * v58 + 8;
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v79 = 0;
                v80 = v51;
                v81 = v78;
                v82 = v54;
                v83 = v39;
                do
                {
                  v84 = *v82++;
                  if ((v84 & 1) == 0)
                  {
                    v85.f64[0] = *(v81 - 1);
                    v85.f64[1] = -*v81;
                    *(v48 + 16 * v79) = vaddq_f64(*(v48 + 16 * v79), vmulq_n_f64(vmulq_n_f64(v85, *v80), *(v53 + 8 * v56)));
                    ++v79;
                  }

                  v81 = (v81 + v40);
                  ++v80;
                  --v83;
                }

                while (v83);
                v48 += 16 * v25;
              }

              ++v56;
              v78 += 16;
            }

            while (v56 != v39);
          }

          else
          {
            v59 = (v46 + v200 * v58);
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v60 = 0;
                v61 = v54;
                v62 = v51;
                v63 = v59;
                v64 = v39;
                do
                {
                  v65 = *v61++;
                  if ((v65 & 1) == 0)
                  {
                    *(v48 + 16 * v60) = vaddq_f64(*(v48 + 16 * v60), vmulq_n_f64(vmulq_n_f64(*v63, *v62), *(v53 + 8 * v56)));
                    ++v60;
                  }

                  ++v63;
                  ++v62;
                  --v64;
                }

                while (v64);
                v48 += 16 * v25;
              }

              ++v56;
              v59 = (v59 + v40);
            }

            while (v56 != v39);
          }
        }

        else
        {
          v66 = (v35 + 8 * v49);
          v67 = v35 + 8 * *(v33 + 4 * v47);
          if (v44 < 0)
          {
            if (v16)
            {
              v86 = 0;
              if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
              {
                v87 = -v44;
              }

              else
              {
                v87 = v44;
              }

              v88 = v46 + v200 * (v87 - 1) + 8;
              do
              {
                v89 = 0;
                v90 = v66;
                v91 = v88;
                do
                {
                  v92 = *v90++;
                  v93.f64[0] = *(v91 - 1);
                  v93.f64[1] = -*v91;
                  *(v48 + v89) = vaddq_f64(*(v48 + v89), vmulq_n_f64(vmulq_n_f64(v93, v92), *(v67 + 8 * v86)));
                  v89 += 16;
                  v91 = (v91 + v40);
                }

                while (v40 != v89);
                ++v86;
                v48 += v41;
                v88 += 16;
              }

              while (v86 != v16);
            }
          }

          else if (v16)
          {
            v68 = 0;
            if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
            {
              v69 = -v44;
            }

            else
            {
              v69 = v44;
            }

            v70 = (v46 + v200 * (v69 - 1));
            do
            {
              v71 = v66;
              v72 = v70;
              v73 = v48;
              v74 = v16;
              do
              {
                v75 = *v71++;
                v76 = v75;
                v77 = *v72++;
                *v73 = vaddq_f64(*v73, vmulq_n_f64(vmulq_n_f64(v77, v76), *(v67 + 8 * v68)));
                ++v73;
                --v74;
              }

              while (v74);
              ++v68;
              v48 += v41;
              v70 = (v70 + v40);
            }

            while (v68 != v16);
          }
        }

        v37 += 2;
      }

      while (v37 < v36[1]);
    }
  }

  else if (*v36 < v38)
  {
    v94 = 16 * (v16 * v16);
    if (v16 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v16;
    }

    v96 = 16 * v16;
    v97 = 16 * v21;
    do
    {
      v98 = (v29 + 8 * v37);
      v100 = *v98;
      v99 = v98[1];
      v101 = v99 % v25;
      v102 = v201[4];
      v103 = (v99 / v25);
      v104 = v202 + 16 * v103 * v25 + 16 * (v99 % v25);
      if (v31)
      {
        v105 = (v31 + *(v33 + 4 * v101) / v16 * v16);
        v106 = v31 + *(v33 + 4 * v103) / v16 * v16;
        v107 = 0;
        if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
        {
          v108 = -v100;
        }

        else
        {
          v108 = v100;
        }

        v109 = (v102 + v94 * (v108 - 1));
        if (v100 < 0)
        {
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v115 = 0;
              v116 = v105;
              v117 = v109;
              v118 = v95;
              do
              {
                v119 = *v116++;
                if ((v119 & 1) == 0)
                {
                  v120 = *(v104 + 16 * v115);
                  *&v121 = *&vaddq_f64(v120, *v117);
                  *(&v121 + 1) = *&vsubq_f64(v120, *v117).f64[1];
                  *(v104 + 16 * v115++) = v121;
                }

                v117 = (v117 + v96);
                --v118;
              }

              while (v118);
              v104 += 16 * v25;
            }

            ++v107;
            ++v109;
          }

          while (v107 != v95);
        }

        else
        {
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v110 = 0;
              v111 = v105;
              v112 = v109;
              v113 = v95;
              do
              {
                v114 = *v111++;
                if ((v114 & 1) == 0)
                {
                  *(v104 + 16 * v110) = vaddq_f64(*v112, *(v104 + 16 * v110));
                  ++v110;
                }

                ++v112;
                --v113;
              }

              while (v113);
              v104 += 16 * v25;
            }

            ++v107;
            v109 = (v109 + v96);
          }

          while (v107 != v95);
        }
      }

      else if (v100 < 0)
      {
        if (v16)
        {
          v129 = 0;
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v130 = -v100;
          }

          else
          {
            v130 = v100;
          }

          v131 = (v102 + v94 * (v130 - 1));
          do
          {
            v132 = 0;
            v133 = v131;
            do
            {
              v134 = *(v104 + v132);
              *&v135 = *&vaddq_f64(v134, *v133);
              *(&v135 + 1) = *&vsubq_f64(v134, *v133).f64[1];
              *(v104 + v132) = v135;
              v132 += 16;
              v133 = (v133 + v96);
            }

            while (v96 != v132);
            ++v129;
            v104 += v97;
            ++v131;
          }

          while (v129 != v16);
        }
      }

      else if (v16)
      {
        v122 = 0;
        if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
        {
          v123 = -v100;
        }

        else
        {
          v123 = v100;
        }

        v124 = (v102 + v94 * (v123 - 1));
        do
        {
          v125 = v124;
          v126 = v104;
          v127 = v16;
          do
          {
            v128 = *v125++;
            *v126 = vaddq_f64(v128, *v126);
            ++v126;
            --v127;
          }

          while (v127);
          ++v122;
          v104 += v97;
          v124 = (v124 + v96);
        }

        while (v122 != v16);
      }

      v37 += 2;
    }

    while (v37 < v36[1]);
  }

  if (v204 == 4)
  {
    v136 = atomic_load((*(a6 + 48) + 4 * v19));
    v137 = v203;
    if (v136 >= 1)
    {
      sub_236719090(4, v203, a6, v206, a9);
      v138 = atomic_load((*(a6 + 48) + 4 * v19));
      v139 = v138 + *(*(v203 + 120) + 8 * v195) - *(*(v203 + 120) + 8 * v19);
      v140 = *(*(a6 + 40) + 8 * v19) + 8;
      v25 = v139;
      v197 = *(*(v203 + 88) + 4 * v195) - *(*(v203 + 88) + 4 * v19) + v138;
      v202 = v140;
      v27 = v140 + 16 * v197 * v139 + 32 * v197;
      v198 = v139;
    }

    v141 = v197;
    v142 = v196(v198, v197, v202, v25, v27, a6, v205, v199, a14);
    v144 = a6;
    v145 = v197;
    *(*(a6 + 56) + 4 * v19) = v142;
    v146 = *(*(v137 + 112) + 4 * v19);
    if (v146 != -1)
    {
      atomic_fetch_add((*(a6 + 48) + 4 * v146), v141 - v142);
    }

    if (v142 >= 1)
    {
      v147 = 0;
      v148 = 0;
      v207[0] = 0;
      v149 = v202 + 16 * v25 * v141;
      do
      {
        v150 = v148 + 1;
        v143.n128_u64[0] = *(v149 + 32 * v148);
        if (v143.n128_f64[0] == INFINITY)
        {
          ++v147;
        }

        else if (v143.n128_f64[0] <= 0.0)
        {
          ++LODWORD(v207[0]);
        }

        else
        {
          ++HIDWORD(v207[0]);
        }

        ++v148;
      }

      while (v150 < v142);
      atomic_fetch_add((a6 + 80), HIDWORD(v207[0]));
      atomic_fetch_add((a6 + 84), v147);
      atomic_fetch_add((a6 + 88), v207[0]);
    }

    v151 = v198;
  }

  else
  {
    v151 = v198;
    v152 = v196(v198, v197, v202, v25, v27, a6, v205, v199, a14);
    v144 = a6;
    v145 = v197;
    if (v152 != v197)
    {
      return 0xFFFFFFFFLL;
    }
  }

  _VF = __OFSUB__(v151, v145);
  v155 = v151 - v145;
  if ((v155 < 0) ^ _VF | (v155 == 0))
  {
    return 0;
  }

  if (v155 < v14)
  {
    if (a14)
    {
      v156 = *(a14 + 56);
    }

    else
    {
      v156 = 0;
    }

    sub_2367898A8(v206, 0, 0, v204, v203, v144, v14, a12, a10, a11, a9, v156, v205);
    return 0;
  }

  if (!v199)
  {
    if (v155 >= 1)
    {
      for (i = 0; i < v155; i += v14)
      {
        v189 = i;
        do
        {
          if (a14)
          {
            v190 = *(a14 + 56);
          }

          else
          {
            v190 = 0;
          }

          sub_2367898A8(v206, v189, i, v204, v203, a6, v14, a12, a10, a11, a9, v190, v205);
          v189 += v14;
        }

        while (v189 < v155);
      }
    }

    return 0;
  }

  v157 = ((v155 - 1) / v14 + 2 + ((v155 - 1) / v14 + 2) * ((v155 - 1) / v14)) / 2;
  if (v157 >= 0x40)
  {
    v158 = 64;
  }

  else
  {
    v158 = v157;
  }

  MEMORY[0x28223BE20](v143);
  v205 = &v194 - v159;
  MEMORY[0x28223BE20](v160);
  v204 = &v194 - v161;
  HIDWORD(v207[0]) = 0;
  if (v155 < 1)
  {
    v187 = 0;
  }

  else
  {
    v201 = &v194;
    _X26 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v203 = 8 * v206;
    while (2)
    {
      v166 = v165;
      LODWORD(v202) = v165;
      do
      {
        v167 = &v204[24 * v163];
        v168 = v205;
        *v167 = v206;
        *(v167 + 1) = v166;
        *(v167 + 2) = v165;
        *(v167 + 2) = v207 + 4;
        v169 = &v168[40 * v163];
        *v169 = 0;
        *(v169 + 3) = 0;
        *(v169 + 4) = 0;
        *(v169 + 1) = v167;
        *(v169 + 2) = sub_236789CA4;
        v170 = v199[2];
        if (v170)
        {
          _X4 = 0;
          _X5 = 0;
          __asm { CASP            X4, X5, X4, X5, [X1] }

          while (1)
          {
            *(v170 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v170 + 32) = 0;
            _X2 = _X4 & 1 | v170;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 == _X4)
            {
              break;
            }

            _X5 = 0;
            __asm { CASP            X4, X5, X26, X27, [X1] }
          }

          if (_X4)
          {
            __ulock_wake();
            v165 = v202;
          }
        }

        v181 = (v164 / v158 + v203);
        v182 = v199;
        v199[2] = v169;
        v182[3] = v181;
        if (++v163 >= v158)
        {
          v183 = v163 + v164;
          v184 = atomic_load(v207 + 1);
          if (v184 < v183)
          {
            v185 = v182;
            while (1)
            {
              LOBYTE(v207[0]) = 0;
              sub_2366FCDE4(v185, v207);
              if (v207[0])
              {
                break;
              }

              v186 = atomic_load(v207 + 1);
              if (v186 >= v183)
              {
                goto LABEL_148;
              }
            }

            sub_2366FCEC8(v185);
            return atomic_load((v185[1] + 16));
          }

LABEL_148:
          v163 = 0;
          v164 += v158;
          v165 = v202;
        }

        v166 += v14;
      }

      while (v166 < v155);
      v165 += v14;
      if (v165 < v155)
      {
        continue;
      }

      break;
    }

    v187 = v163 + v164;
  }

  v191 = atomic_load(v207 + 1);
  v192 = v199;
  if (v191 >= v187)
  {
    return 0;
  }

  while (1)
  {
    LOBYTE(v207[0]) = 0;
    sub_2366FCDE4(v192, v207);
    if (LOBYTE(v207[0]) == 1)
    {
      break;
    }

    v193 = atomic_load(v207 + 1);
    if (v193 >= v187)
    {
      return 0;
    }
  }

  sub_2366FCEC8(v192);
  return atomic_load((v192[1] + 16));
}

void sub_2367898A8(uint64_t a1, int a2, int a3, int a4, void *a5, void *a6, signed int a7, uint64_t a8, int *a9, int *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_23671548C;
  v15 = sub_2367154DC;
  if (a4 <= 2)
  {
    if (a4)
    {
      v14 = sub_236800158;
      v15 = sub_236800F3C;
    }

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v14 = sub_23673EC4C;
    v15 = sub_236743138;
LABEL_6:
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = a5[10];
    v20 = (a4 - 3) < 2;
    v21 = a1;
    goto LABEL_8;
  }

  v19 = a5[10];
  v21 = a1;
  v18 = atomic_load((a6[6] + 4 * a1));
  v16 = sub_236743138;
  v14 = sub_23673EC4C;
  v20 = 1;
  v17 = 1;
LABEL_8:
  v22 = a5[15];
  v23 = a1;
  v24 = a1 + 1;
  v25 = a5[11];
  v26 = *(v25 + 4 * v24);
  v27 = v18 + *(v22 + 8 * v24) - *(v22 + 8 * v21);
  v28 = v26 - *(v25 + 4 * v21) + v18;
  v29 = v28;
  if (v17)
  {
    v29 = *(a6[7] + 4 * v21);
  }

  v30 = v28 * v27;
  if (!v20)
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = *(a6[5] + 8 * v21) + 8;
    v32 = v27;
    v33 = v31 + 16 * v30;
    v34 = v28 + a3;
    v35 = v27 - (v28 + a3);
    if (v35 >= a7)
    {
      v36 = a7;
    }

    else
    {
      v36 = v35;
    }

    v37 = v27 - v28;
    if ((v27 - v28) >= a7)
    {
      v38 = a7;
    }

    else
    {
      v38 = v27 - v28;
    }

    v39 = v38;
    v40 = *(v22 + 8 * v23) + v26 - *(v25 + 4 * v23);
    v41 = v40 + a3;
    v42 = v41 + v36;
    if (a2 == a3)
    {
      (v14)(v36, v29, v31 + 16 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      for (i = *(a5[14] + 4 * v23); i != -1; i = *(a5[14] + 4 * v45))
      {
        v44 = a5[16];
        v45 = i;
        v46 = (a5[11] + 4 * i);
        if (*(v19 + 4 * *(v44 + 4 * v61[0])) < v46[1])
        {
          if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v44 + 4 * v42)) < *v46)
          {
            return;
          }

          v47 = (a8 + 16 * (v61[0] - v41) * (v39 + 1));
          if (a12)
          {
            sub_23673A7C4(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, (a12 + v45));
          }

          else
          {
            sub_23673A7C4(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, 0);
          }
        }
      }
    }

    else
    {
      if (v37 - a2 >= a7)
      {
        v48 = a7;
      }

      else
      {
        v48 = (v37 - a2);
      }

      v16(v48, v36, v29, v31 + 16 * (v28 + a2), v31 + 16 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      v49 = *(a5[14] + 4 * v23);
      if (v49 != -1)
      {
        v50 = v40 + a2;
        v51 = v50 + v48;
        do
        {
          v52 = a5[16];
          v53 = v49;
          v54 = (a5[11] + 4 * v49);
          if (*(v19 + 4 * *(v52 + 4 * v61[0])) < v54[1])
          {
            if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v52 + 4 * v42)) < *v54)
            {
              return;
            }

            v55 = (a8 + 16 * (v61[0] - v41) * v39);
            if (a12)
            {
              sub_23673A9B0(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, (a12 + v53));
            }

            else
            {
              sub_23673A9B0(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, 0);
            }
          }

          v49 = *(a5[14] + 4 * v53);
        }

        while (v49 != -1);
      }
    }
  }
}

void sub_236789CA4(uint64_t a1, atomic_uint *volatile *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + 40);
  v13 = v12 + *(v10 + 48);
  v14 = *(v11 + 2);
  v15 = ((v12 + 4 * *(v14 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v15)
  {
    goto LABEL_7;
  }

  a7 = *(v11 + 8);
  v8 = ((&v15[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v8)
  {
    goto LABEL_7;
  }

  a8 = (&v8[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < a8)
  {
    goto LABEL_7;
  }

  v16 = a8 + 16 * a7 * a7;
  if (v16 > v13)
  {
    goto LABEL_7;
  }

  v9 = a2;
  a4 = *v11;
  if ((a4 - 2) > 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v16 + 66560 > v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_2367898A8(*v9, *(v9 + 1), *(v9 + 2), a4, v14, *(v11 + 3), a7, a8, v15, v8, v12, *(v11 + 7), v16);
  atomic_fetch_add(v9[2], 1u);
}

void _SparseRetainNumeric_Float(SparseOpaqueFactorization_Float *numericFactor)
{
  _SparseRetainSymbolic(&numericFactor->symbolicFactorization);
  v2 = BYTE1(numericFactor->symbolicFactorization.factorization);
  v3 = v2 > 0x29 || ((1 << v2) & 0x3000000001DLL) == 0;
  if (!v3 || v2 - 81 < 3)
  {
    atomic_fetch_add((numericFactor->solveWorkspaceRequiredStatic + 32), 1u);
  }
}

void _SparseDestroyOpaqueNumeric_Float(SparseOpaqueFactorization_Float *toFree)
{
  solveWorkspaceRequiredStatic = toFree->solveWorkspaceRequiredStatic;
  if (solveWorkspaceRequiredStatic)
  {
    v3 = BYTE1(toFree->symbolicFactorization.factorization);
    if (v3 <= 0x29)
    {
      if (((1 << v3) & 0x1D) != 0)
      {
        workspaceSize_Float = toFree->symbolicFactorization.workspaceSize_Float;
        numericFactorization = toFree->numericFactorization;
        if (atomic_fetch_add((solveWorkspaceRequiredStatic + 32), 0xFFFFFFFF) != 1)
        {
          goto LABEL_24;
        }

        v6 = *(workspaceSize_Float + 64);
        if (v6 >= 1)
        {
          for (i = 0; i < v6; ++i)
          {
            if (**(*(solveWorkspaceRequiredStatic + 40) + 8 * i))
            {
              (*(workspaceSize_Float + 32))();
              v6 = *(workspaceSize_Float + 64);
            }
          }
        }

LABEL_22:
        if ((numericFactorization & 1) == 0)
        {
LABEL_23:
          (*(workspaceSize_Float + 32))(solveWorkspaceRequiredStatic);
        }

LABEL_24:
        toFree->solveWorkspaceRequiredStatic = 0;
        goto LABEL_25;
      }

      if (((1 << v3) & 0x30000000000) != 0)
      {
        workspaceSize_Float = toFree->symbolicFactorization.workspaceSize_Float;
        v8 = toFree->numericFactorization;
        if (atomic_fetch_add((solveWorkspaceRequiredStatic + 32), 0xFFFFFFFF) != 1 || (v8 & 1) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    workspaceSize_Float = toFree->symbolicFactorization.workspaceSize_Float;
    numericFactorization = toFree->numericFactorization;
    if (atomic_fetch_add((solveWorkspaceRequiredStatic + 32), 0xFFFFFFFF) != 1)
    {
      goto LABEL_24;
    }

    if (*(solveWorkspaceRequiredStatic + 72))
    {
      v9 = *(workspaceSize_Float + 168);
      if (v9 >= 1)
      {
        for (j = 0; j < v9; ++j)
        {
          if (**(*(solveWorkspaceRequiredStatic + 112) + 8 * j))
          {
            (*(workspaceSize_Float + 32))();
            v9 = *(workspaceSize_Float + 168);
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_25:
  _SparseDestroyOpaqueSymbolic(&toFree->symbolicFactorization);
  toFree->status = SparseStatusReleased;
}

void _SparseReleaseOpaquePreconditioner_Float(SparseOpaquePreconditioner_Float *toFree)
{
  if ((toFree->type & 0xFFFFFFFE) == 2)
  {
    free(toFree->mem);
  }
}

uint64_t sub_236789F74(uint64_t result, int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, _DWORD *__b)
{
  v12 = a3[a2];
  v13 = *a3;
  v14 = (v12 - *a3);
  if (v12 == *a3)
  {
    **(a6 + 8) = 0;
    **(a7 + 8) = 0;
    *(a6 + 16) = 0;
    *(a7 + 16) = 0;
  }

  else
  {
    v117 = result;
    if (a2 < 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = __b;
      __pattern4 = -1;
      v20 = v14;
      memset_pattern4(__b, &__pattern4, 4 * *result);
      v14 = v20;
      v21 = 0;
      LODWORD(v22) = *a3;
      do
      {
        v23 = v21++;
        LODWORD(v24) = a3[v21];
        if (v22 < v24)
        {
          v22 = v22;
          do
          {
            __b[v22++] = v23;
            v24 = a3[v21];
          }

          while (v22 < v24);
        }

        LODWORD(v22) = v24;
      }

      while (v21 != a2);
      v13 = *a3;
    }

    v25 = (*(a6 + 8) + 16);
    v118 = a7;
    v26 = (*(a7 + 8) + 16);
    v114 = v14;
    v27 = 8 * v14;
    bzero(v25, v27);
    bzero(v26, v27);
    if (a2 == 1)
    {
      v28 = *(v117 + 4);
      v29 = a8;
      if (v28 >= 1)
      {
        v30 = 0;
        v31 = a3[1];
        v32 = *v117;
        v33 = *(v117 + 8);
        v34 = *(v117 + 16);
        do
        {
          v35 = *(a5 + 4 * v30);
          if (v35 >= v13 && v35 < v31)
          {
            v37 = (v33 + 8 * v30);
            v39 = *v37;
            v38 = v37[1];
            if (*v37 < v38)
            {
              do
              {
                v40 = *(v34 + 4 * v39);
                if ((v40 & 0x80000000) == 0 && v40 < v32)
                {
                  v41 = *(a4 + 4 * v40);
                  v42 = v41 == v35 || v41 < v13;
                  if (!v42 && v41 < v31)
                  {
                    v44 = &v26[8 * (v41 - v13)];
                    if (v41 >= v35)
                    {
                      v44 = &v25[8 * (v35 - v13)];
                    }

                    ++*v44;
                    v38 = v37[1];
                  }
                }

                ++v39;
              }

              while (v39 < v38);
            }
          }

          ++v30;
        }

        while (v30 != v28);
      }
    }

    else
    {
      v45 = *(v117 + 4);
      v29 = a8;
      if (v45 >= 1)
      {
        v46 = 0;
        v47 = *v117;
        v48 = *(v117 + 8);
        v49 = *(v117 + 16);
        v50 = *v48;
        do
        {
          v51 = v46++;
          v52 = v48[v46];
          while (v50 < v52)
          {
            v53 = *(v49 + 4 * v50);
            if ((v53 & 0x80000000) == 0 && v53 < v47)
            {
              v54 = *(a4 + 4 * v53);
              v55 = *(a5 + 4 * v51);
              if (v54 != v55)
              {
                v56 = v19[v54];
                if (v56 != -1 && v56 == v19[v55])
                {
                  if (v54 >= v55)
                  {
                    v58 = *(a5 + 4 * v51);
                  }

                  else
                  {
                    v58 = v54;
                  }

                  if (v54 >= v55)
                  {
                    v59 = v25;
                  }

                  else
                  {
                    v59 = v26;
                  }

                  ++*&v59[8 * (v58 - v13)];
                  v52 = v48[v46];
                }
              }
            }

            ++v50;
          }

          v50 = v52;
        }

        while (v46 != v45);
      }
    }

    v60 = *(a6 + 8);
    *(v60 + 8) = 0;
    v61 = v60 + 8;
    v62 = *(a7 + 8);
    *(v62 + 8) = 0;
    v63 = v62 + 8;
    if (v114 > 1)
    {
      v64 = v114 - 1;
      v65 = (v60 + 16);
      v66 = (v62 + 16);
      v67 = v26;
      v68 = v25;
      do
      {
        v69 = *v68++;
        *v65 = v69 + *(v65 - 1);
        ++v65;
        v70 = *v67++;
        *v66 = v70 + *(v66 - 1);
        ++v66;
        --v64;
      }

      while (v64);
    }

    v71 = 8 * v114 - 8;
    v72 = *&v25[v71] + *(v61 + v71);
    v73 = *(v63 + v71);
    v74 = *&v26[v71];
    *(a6 + 16) = v29;
    *(v118 + 16) = &v29[4 * v72];
    result = madvise(v29, 4 * (v72 + v73 + v74), 3);
    if (a2 == 1)
    {
      v75 = a3[1];
      v76 = *v117;
      v77 = *(v117 + 4);
      v78 = *(v117 + 8);
      v79 = *(v117 + 16);
      **(a6 + 8) = 0;
      **(v118 + 8) = 0;
      if (v77 >= 1)
      {
        for (i = 0; i != v77; ++i)
        {
          v81 = *(a5 + 4 * i);
          if (v81 < v75)
          {
            v82 = v81 - v13;
            if (((v81 - v13) & 0x80000000) == 0)
            {
              v83 = (v78 + 8 * i);
              v85 = *v83;
              v84 = v83[1];
              if (*v83 < v84)
              {
                result = v61 + 8 * v82;
                do
                {
                  v86 = *(v79 + 4 * v85);
                  if ((v86 & 0x80000000) == 0 && v86 < v76)
                  {
                    v87 = *(a4 + 4 * v86);
                    if (v87 != v81 && v87 < v75)
                    {
                      v89 = v87 - v13;
                      if (((v87 - v13) & 0x80000000) == 0)
                      {
                        v90 = (v63 + 8 * v89);
                        v91 = v87 < v81;
                        if (v87 < v81)
                        {
                          v92 = v118;
                        }

                        else
                        {
                          v90 = (v61 + 8 * v82);
                          v92 = a6;
                        }

                        if (v91)
                        {
                          v89 = v81 - v13;
                        }

                        v93 = *(v92 + 16);
                        v94 = (*v90)++;
                        *(v93 + 4 * v94) = v89;
                        v84 = v83[1];
                      }
                    }
                  }

                  ++v85;
                }

                while (v85 < v84);
              }
            }
          }
        }
      }
    }

    else
    {
      v95 = *v117;
      v96 = *(v117 + 4);
      v97 = *(v117 + 8);
      v98 = *(v117 + 16);
      **(a6 + 8) = 0;
      **(v118 + 8) = 0;
      if (v96 >= 1)
      {
        v99 = 0;
        v100 = *v97;
        do
        {
          v101 = v99++;
          v102 = v97[v99];
          while (v100 < v102)
          {
            v103 = *(v98 + 4 * v100);
            if ((v103 & 0x80000000) == 0 && v103 < v95)
            {
              v104 = *(a4 + 4 * v103);
              v105 = *(a5 + 4 * v101);
              if (v104 != v105)
              {
                result = v19[v104];
                if (result != -1 && result == v19[v105])
                {
                  v107 = v105 - v13;
                  v108 = v104 - v13;
                  v109 = v104 < v105;
                  if (v104 >= v105)
                  {
                    v110 = a6;
                  }

                  else
                  {
                    v110 = v118;
                  }

                  if (v109)
                  {
                    v111 = v108;
                  }

                  else
                  {
                    v111 = v105 - v13;
                  }

                  if (v109)
                  {
                    v112 = v63;
                  }

                  else
                  {
                    v112 = v61;
                  }

                  if (!v109)
                  {
                    v107 = v108;
                  }

                  v113 = *(v110 + 16);
                  result = *(v112 + 8 * v111);
                  *(v112 + 8 * v111) = result + 1;
                  *(v113 + 4 * result) = v107;
                  v102 = v97[v99];
                }
              }
            }

            ++v100;
          }

          v100 = v102;
        }

        while (v99 != v96);
      }
    }
  }

  return result;
}

uint64_t sub_23678A440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 144);
  v6 = *(a2 + 64);
  if (v6 <= 0)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 152);
    v10 = *(a2 + 120);
    v11 = *(a2 + 88);
    do
    {
      v12 = v7;
      *(v5 + 8 * v7++) = v8;
      v13 = *(v10 + 8 * v7);
      v14 = *(v10 + 8 * v12);
      if (v13 > v14)
      {
        v15 = *(result + 28);
        v16 = *(a2 + 128) - 4;
        v17 = *(v10 + 8 * v7);
        do
        {
          *(a5 + 4 * (*(v16 + 4 * v17) / v15)) = ~v14 + v17;
          --v17;
        }

        while (v17 > v14);
      }

      v18 = *(v11 + 4 * v12);
      v19 = *(v11 + 4 * v7);
      if (v18 < v19)
      {
        v20 = v13 - v14;
        v21 = *(a2 + 128);
        v22 = *(result + 28);
        v23 = 0xFFFFFFFFLL;
        v24 = *(v11 + 4 * v12);
        do
        {
          v25 = v24 - v18;
          v26 = (*(v21 + 4 * *(v10 + 8 * v12) + 4 * (v24 - v18)) / v22);
          if (v26 == v23)
          {
            v26 = v23;
          }

          else
          {
            v27 = *(a4 + 8 * v26);
            if (v27)
            {
              v28 = (v9 + 8 * v8);
              v29 = *(a5 + 4 * v26) + v20 * v25;
              v8 += 2;
              *v28 = v27;
              v28[1] = v29;
            }

            v30 = (*(result + 8) + 8 * v26);
            v31 = *v30;
            v32 = v30[1];
            if (*v30 < v32)
            {
              v33 = *(result + 16);
              v34 = *(a2 + 72);
              v35 = *(v34 + 4 * v26);
              v36 = v20 * v25;
              do
              {
                v37 = *(v33 + 4 * v31);
                if (*(v34 + 4 * v37) >= v35)
                {
                  v38 = (v9 + 8 * v8);
                  v39 = v36 + *(a5 + 4 * v37);
                  v8 += 2;
                  *v38 = *(a3 + 8 * v31);
                  v38[1] = v39;
                  v32 = v30[1];
                }

                ++v31;
              }

              while (v31 < v32);
            }
          }

          ++v24;
          v23 = v26;
        }

        while (v24 != v19);
      }

      v6 = *(a2 + 64);
    }

    while (v7 < v6);
  }

  *(v5 + 8 * v6) = v8;
  return result;
}

void sub_23678A5D0(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, atomic_uchar *a13)
{
  v13 = *a3;
  v14 = a4 - *a3;
  if (a4 > *a3)
  {
    v15 = a6[16];
    v16 = a6[11];
    v17 = a2;
    v18 = a2 + 1;
    if (*(a10 + 4 * *(v15 + 4 * v13)) < *(v16 + 4 * v18))
    {
      v19 = a6[15];
      v20 = *(v19 + 8 * v18);
      v21 = *(v19 + 8 * v17);
      v22 = *(*(a7 + 40) + 8 * v17);
      v23 = v20 - v21;
      v24 = v20 <= v21;
      v25 = v20 - v21;
      if (!v24)
      {
        v26 = 0;
        v27 = v15 + 4 * v21;
        do
        {
          *(a11 + 4 * *(v27 + 4 * v26)) = v26;
          ++v26;
        }

        while (v25 != v26);
      }

      v28 = 0;
      v29 = v22 + 8;
      v30 = a4 - v13;
      v31 = v15 + 4 * v13;
      while (1)
      {
        v32 = *(v31 + 4 * v28);
        if (*(a10 + 4 * v32) >= *(v16 + 4 * v18))
        {
          break;
        }

        a12[v28] = *(a11 + 4 * v32);
        *a3 = v13 + v28++ + 1;
        if (v14 == v28)
        {
          LODWORD(v28) = a4 - v13;
          if (!a13)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      if (v13 + v28 >= a4)
      {
        v30 = v28;
        if (!a13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v33 = &a12[v28];
        v34 = v28;
        do
        {
          *v33++ = *(a11 + 4 * *(v31 + 4 * v34++));
        }

        while (v14 != v34);
        v30 = v28;
        LODWORD(v28) = v34;
        if (!a13)
        {
LABEL_24:
          if (v30)
          {
            v46 = 0;
            v47 = v28;
            v48 = a12;
            v28 = v28;
            do
            {
              if (v46 < v47)
              {
                v49 = v29 + 4 * v23 * a12[v46];
                v50 = v48;
                v51 = a8;
                v52 = v28;
                do
                {
                  v54 = *v50++;
                  v53 = v54;
                  LODWORD(v54) = *v51++;
                  *(v49 + 4 * v53) = *&v54 + *(v49 + 4 * v53);
                  --v52;
                }

                while (v52);
              }

              ++v46;
              --v28;
              a8 += a9 + 1;
              ++v48;
            }

            while (v46 != v30);
          }

          return;
        }
      }

LABEL_15:
        ;
      }

      if (v30)
      {
        v35 = 0;
        v36 = v28;
        v37 = v30;
        v38 = a12;
        v39 = v36;
        do
        {
          if (v35 < v36)
          {
            v40 = v29 + 4 * v23 * a12[v35];
            v41 = v38;
            v42 = a8;
            v43 = v39;
            do
            {
              v45 = *v41++;
              v44 = v45;
              LODWORD(v45) = *v42++;
              *(v40 + 4 * v44) = *&v45 + *(v40 + 4 * v44);
              --v43;
            }

            while (v43);
          }

          ++v35;
          --v39;
          a8 += a9 + 1;
          ++v38;
        }

        while (v35 != v37);
      }

      atomic_store(0, a13);
    }
  }
}

void sub_23678A7EC(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, atomic_uchar *a16)
{
  v16 = *a4;
  v17 = a6 - *a4;
  if (a6 <= *a4)
  {
    return;
  }

  v18 = a8[16];
  v19 = a8[11];
  v20 = a2;
  v21 = a2 + 1;
  if (*(a12 + 4 * *(v18 + 4 * v16)) >= *(v19 + 4 * v21))
  {
    return;
  }

  v23 = a8[15];
  v24 = *(v23 + 8 * v21);
  v25 = *(v23 + 8 * v20);
  v26 = *(*(a9 + 40) + 8 * v20);
  v27 = v24 - v25;
  v28 = v24 - v25;
  if (v24 > v25)
  {
    v29 = 0;
    v30 = v18 + 4 * v25;
    do
    {
      *(a13 + 4 * *(v30 + 4 * v29)) = v29;
      ++v29;
    }

    while (v28 != v29);
  }

  v31 = 0;
  v32 = v26 + 8;
  v33 = a6 - v16;
  v34 = v16 + 1;
  v35 = v18 + 4 * v16;
  while (1)
  {
    v36 = *(v35 + 4 * v31);
    if (*(a12 + 4 * v36) >= *(v19 + 4 * v21))
    {
      break;
    }

    *(a15 + 4 * v31) = *(a13 + 4 * v36);
    *a4 = v34 + v31++;
    if (v17 == v31)
    {
      goto LABEL_11;
    }
  }

  v33 = v31;
LABEL_11:
  v37 = a5 - a3;
  if (a5 <= a3)
  {
    v37 = 0;
    if (a16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v38 = (v18 + 4 * a3);
    v39 = a5 - a3;
    v40 = a14;
    do
    {
      v41 = *v38++;
      *v40++ = *(a13 + 4 * v41);
      --v39;
    }

    while (v39);
    if (a16)
    {
LABEL_15:
        ;
      }

      if (v33)
      {
        v42 = 0;
        v43 = v33;
        do
        {
          if (v37)
          {
            v44 = v32 + 4 * v27 * *(a15 + 4 * v42);
            v45 = a14;
            v46 = a10;
            v47 = v37;
            do
            {
              v49 = *v45++;
              v48 = v49;
              LODWORD(v49) = *v46++;
              *(v44 + 4 * v48) = *&v49 + *(v44 + 4 * v48);
              --v47;
            }

            while (v47);
          }

          ++v42;
          a10 += a11;
        }

        while (v42 != v43);
      }

      atomic_store(0, a16);
      return;
    }
  }

  if (v33)
  {
    v50 = 0;
    v51 = v33;
    do
    {
      if (v37)
      {
        v52 = v32 + 4 * v27 * *(a15 + 4 * v50);
        v53 = a14;
        v54 = a10;
        v55 = v37;
        do
        {
          v57 = *v53++;
          v56 = v57;
          LODWORD(v57) = *v54++;
          *(v52 + 4 * v56) = *&v57 + *(v52 + 4 * v56);
          --v55;
        }

        while (v55);
      }

      ++v50;
      a10 += a11;
    }

    while (v50 != v51);
  }
}

SparseMatrix_Double *__cdecl _SparseConvertFromCoordinate_Double(SparseMatrix_Double *__return_ptr retstr, int m, int n, uint64_t nBlock, uint8_t blockSize, SparseAttributes_t attributes, const int *row, const int *col, const double *val, char *storage, int *workspace)
{
  v11 = n;
  retstr->structure.rowCount = m;
  retstr->structure.columnCount = n;
  v12 = ((storage + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (n + 1);
  v14 = ((&v12[v13 + 1] + 7) & 0xFFFFFFFFFFFFFFF0);
  *&retstr->structure.attributes = 0;
  retstr->data = v14;
  retstr->structure.attributes = attributes;
  *&retstr->structure.blockSize = v15;
  *(&retstr->structure.blockSize + 2) = blockSize;
  v107 = v14;
  v16 = ((&v14[nBlock * (blockSize * blockSize) + 1] + 7) & 0xFFFFFFFFFFFFFFF0);
  retstr->structure.columnStarts = v12;
  retstr->structure.rowIndices = v16;
  if (!nBlock)
  {
    if ((n & 0x80000000) == 0)
    {

      bzero(((storage + 15) & 0xFFFFFFFFFFFFFFF0), 8 * (n + 1));
    }

    goto LABEL_145;
  }

  v18 = blockSize;
  v19 = m;
  v106 = (blockSize * blockSize);
  v20 = attributes;
  v118 = *&attributes;
  if (n >= 1)
  {
    bzero(v12 + 2, 8 * n);
    *&attributes = v118;
  }

  v111 = (v20 >> 2) & 3;
  v21 = v106;
  if (v111 == 1)
  {
    goto LABEL_12;
  }

  if (v111 != 2)
  {
    LOBYTE(v115) = 0;
    v117 = 0;
    goto LABEL_14;
  }

  if (v18 != 1)
  {
LABEL_12:
    v117 = (*&attributes & 2) == 0;
    v115 = (*&attributes & 2) >> 1;
LABEL_14:
    v116 = 1;
    LOBYTE(v114) = 1;
    goto LABEL_15;
  }

  LOBYTE(v115) = 0;
  v117 = 0;
  v114 = (*&attributes & 2) >> 1;
  v116 = (*&attributes & 2) == 0;
LABEL_15:
  if (nBlock >= 1)
  {
    v22 = row;
    v23 = col;
    v24 = nBlock;
    do
    {
      v26 = *v22++;
      v25 = v26;
      v28 = *v23++;
      v27 = v28;
      if ((v25 & 0x80000000) == 0 && v25 < v19)
      {
        v29 = v25 > v27 && v117;
        v30 = v116;
        if (v25 >= v27)
        {
          v30 = 1;
        }

        if ((v27 & 0x80000000) == 0)
        {
          v31 = v27 < v11 && !v29;
          v32 = v31 && (v115 & (v25 < v27)) == 0;
          if (v32 && v114 & 1 | (v25 < v27) && v30)
          {
            v33 = ((*&attributes >> 1) & 1) == 0;
            if (v25 <= v27)
            {
              v33 = 0;
            }

            if (((v111 == 3) & ((v25 < v27) & (*&attributes >> 1) | v33)) == 0)
            {
              v25 = v27;
            }

            ++*(((storage + 15) & 0xFFFFFFFFFFFFFFF0) + 0x10 + 8 * v25);
          }
        }
      }

      --v24;
    }

    while (v24);
  }

  *(((storage + 15) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
  v105 = v12 + 1;
  *v12 = 0;
  if (v11 >= 1)
  {
    v34 = 0;
    v35 = v13 - 1;
    v36 = v12 + 2;
    do
    {
      v34 += *v36;
      *v36++ = v34;
      --v35;
    }

    while (v35);
  }

  v101 = ((storage + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19 >= 1)
  {
    memset_pattern16(workspace, &unk_23681FAD0, 4 * v19);
    *&attributes = v118;
  }

  v113 = v19;
  v37 = 8 * v106;
  v39 = col;
  v38 = nBlock;
  v40 = (&v12[v13 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  *&m = row;
  v41 = v111;
  v42 = v12 + 1;
  if (nBlock >= 1)
  {
    v43 = val;
    v44 = 0;
    v45 = 8 * v18;
    v102 = v11;
    do
    {
      v46 = *(*&m + 4 * v44);
      if ((v46 & 0x80000000) != 0 || v46 >= v113)
      {
        goto LABEL_122;
      }

      v47 = v39[v44];
      v48 = v46 > v47 && v117;
      v49 = v116;
      if (v46 >= v47)
      {
        v49 = 1;
      }

      if ((v47 & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      v50 = v47 < v11 && !v48;
      v51 = v50 && (v115 & (v46 < v47)) == 0;
      if (!v51 || !(v114 & 1 | (v46 < v47)) || !v49)
      {
        goto LABEL_122;
      }

      if (v41 == 3 && (v46 > v47 ? (v52 = ((*&attributes >> 1) & 1) == 0) : (v52 = 0), (*&attributes & 2) != 0 && v46 < v47 || v52))
      {
        v59 = v42[v46];
        v42[v46] = v59 + 1;
        v16[v59] = v47;
        if (v18)
        {
          v60 = 0;
          v61 = (v40 + 8 * v59 * v21);
          v62 = v43;
          v119 = v61;
          do
          {
            v63 = v18;
            v64 = v62;
            v65 = v61;
            do
            {
              *v65++ = *v64;
              v64 = (v64 + v45);
              --v63;
            }

            while (v63);
            ++v60;
            v61 = (v61 + v45);
            ++v62;
          }

          while (v60 != v18);
          v58 = v46;
LABEL_81:
          if (v18 >= 2 && v47 == v46)
          {
            v103 = v58;
            v104 = v43;
            if (v41 > 1)
            {
              if (v41 == 2)
              {
                v70 = 0;
                v71 = 0;
                v112 = workspace[v58];
                v72 = v119;
                do
                {
                  if ((*&attributes & 2) != 0)
                  {
                    v73 = 0;
                  }

                  else
                  {
                    v73 = v71;
                  }

                  ++v71;
                  if ((*&attributes & 2) != 0)
                  {
                    v74 = v71;
                  }

                  else
                  {
                    v74 = v18;
                  }

                  if (v74 <= v73 + 1)
                  {
                    v74 = v73 + 1;
                  }

                  bzero(&v119[v70 + v73], 8 * (v74 + ~v73) + 8);
                  if (v112 == -2)
                  {
                    *v72 = 0x3FF0000000000000;
                  }

                  v72 = (v72 + v45 + 8);
                  v70 += v18;
                  *&attributes = v118;
                }

                while (v18 != v71);
              }

              else
              {
                v75 = 0;
                v76 = 0;
                do
                {
                  v77 = v76 + 1;
                  if ((*&attributes & 2) != 0)
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v78 = v76 + 1;
                  }

                  if ((*&attributes & 2) != 0)
                  {
                    v79 = v76;
                  }

                  else
                  {
                    v79 = v18;
                  }

                  if (v78 < v79)
                  {
                    v80 = &v119[v76 + v18 * v78];
                    v81 = &v119[v75 + v78];
                    v82 = v79 - v78;
                    do
                    {
                      *v80 = *v81 + *v80;
                      *v81++ = 0.0;
                      v80 = (v80 + v45);
                      --v82;
                    }

                    while (v82);
                  }

                  v75 += v18;
                  v76 = v77;
                }

                while (v77 != v18);
              }
            }

            else if (v41)
            {
              v66 = 0;
              for (i = 0; i != v18; ++i)
              {
                if ((*&attributes & 2) != 0)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = i + 1;
                }

                if ((*&attributes & 2) != 0)
                {
                  v69 = i;
                }

                else
                {
                  v69 = v18;
                }

                if (v68 < v69)
                {
                  bzero(&v119[v68 + v66], 8 * (v69 + ~v68) + 8);
                  *&attributes = v118;
                }

                v66 += v18;
              }
            }

            v11 = v102;
            workspace[v103] = -1;
            v21 = v106;
            v40 = v107;
            v43 = v104;
            v42 = v105;
            *&m = row;
            v39 = col;
            v38 = nBlock;
            v41 = v111;
          }
        }
      }

      else
      {
        v53 = v42[v47];
        v42[v47] = v53 + 1;
        v16[v53] = v46;
        v54 = (v40 + 8 * v53 * v21);
        v55 = v21;
        v56 = v43;
        v119 = v54;
        if (v18)
        {
          do
          {
            v57 = *v56++;
            *v54++ = v57;
            --v55;
          }

          while (v55);
          v58 = v47;
          goto LABEL_81;
        }
      }

LABEL_122:
      ++v44;
      v43 = (v43 + v37);
    }

    while (v44 != v38);
  }

  if (v11 < 1)
  {
    v84 = 0;
    v85 = (storage + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    v85 = (storage + 15) & 0xFFFFFFFFFFFFFFF0;
    v86 = *v101;
    do
    {
      v87 = v84;
      v101[v83++] = v84;
      v88 = v101[v83];
      if (v86 < v88)
      {
        v89 = (v40 + v37 * v86);
        do
        {
          v90 = v16[v86];
          v91 = workspace[v90];
          if ((v91 & 0x80000000) != 0)
          {
            if (v84 != v86)
            {
              v16[v84] = v90;
              if (v18)
              {
                v94 = (v40 + 8 * v84 * v21);
                *&m = v21;
                v95 = v89;
                do
                {
                  v96 = *v95++;
                  *v94++ = v96;
                  --*&m;
                }

                while (*&m);
              }
            }

            workspace[v90] = v84++ - v87;
          }

          else if (v18)
          {
            v92 = 0;
            v93 = v40 + 8 * (v87 + v91) * v21;
            do
            {
              *(v93 + v92) = *&v89[v92 / 8] + *(v93 + v92);
              v92 += 8;
            }

            while (v37 != v92);
          }

          ++v86;
          v89 = (v89 + v37);
        }

        while (v86 != v88);
      }

      v97 = v84 - v87;
      if (v84 > v87)
      {
        v98 = &v16[v87];
        do
        {
          v99 = *v98++;
          workspace[v99] = -1;
          --v97;
        }

        while (v97);
      }

      v86 = v88;
    }

    while (v83 != v11);
  }

  *(v85 + 8 * v11) = v84;
LABEL_145:
  LODWORD(result) = m;
  return result;
}

uint64_t sub_23678B078(int a1, uint64_t a2, void *a3, void *a4)
{
  result = ilaenv_NEWLAPACK();
  *a3 = 8 * *(a2 + 88) + 32;
  *a4 = 8 * (result + a1 + *(a2 + 192));
  return result;
}

void sub_23678B11C(uint64_t a1, int *a2, uint64_t a3, double *a4, uint64_t a5)
{
  v604 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 25);
  v569 = v8;
  if (v8 <= 0x27)
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 80);
    sub_23678D570(*(v27 + 64), *(v26 + 136), a2, a3);
    sub_23678D660(v569, v26, v27, a3, a4);
    sub_23678DAD0(v569, v26, v27, 0, a3);
    sub_23678DE2C(v569, v26, v27, a3, a4);
    v28 = *(v27 + 64);
    v29 = *(v26 + 136);

    sub_23678D570(v28, v29, 0, a3);
  }

  else
  {
    v9 = a4 + a5;
    v561 = a4 + a5;
    if (v8 - 81 >= 3)
    {
      if (v8 == 40)
      {
        v30 = *(a1 + 24);
        v31 = *(a1 + 4);
        v32 = *(a1 + 20);
        v33 = 12;
        if ((v32 ^ v31))
        {
          v34 = 16;
        }

        else
        {
          v34 = 12;
        }

        if (((v32 ^ v31) & 1) == 0)
        {
          v33 = 16;
        }

        v35 = *(a1 + v34) * v30;
        v36 = *(a1 + v33) * v30;
        if (v35 <= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v35;
        }

        v38 = 4;
        if (*(a3 + 12))
        {
          v38 = 0;
        }

        v39 = *(a3 + v38);
        v40 = *(a1 + 32);
        v41 = *(a1 + 80);
        v588 = __PAIR64__(v39, v37);
        v590 = a4;
        v589 = v37;
        v43 = v32 & 1 ^ *(v40 + 52);
        v44 = v31 & 1;
        if (a2)
        {
          v45 = a2;
        }

        else
        {
          v45 = a3;
        }

        sub_2366FD390(v45, &v588);
        if (v43 == v44)
        {
          sub_23678E160(*(v40 + 56), v40, v41, &v588, a3, &a4[v39 * v37], v561);
          sub_23678E600(v40, v41, a3, a4);
        }

        else
        {
          v549 = &a4[v39 * v37];
          sub_23678E828(v40, v41, &v588, v549);
          sub_23678EB18(*(v40 + 56), v40, v41, &v588, a3, v549);
        }
      }

      else
      {
        v60 = *(a1 + 32);
        v61 = *(a1 + 80);
        if (a2)
        {
          sub_2366FD390(a2, a3);
        }

        sub_23678E828(v60, v61, a3, a4);

        sub_23678E600(v60, v61, a3, a4);
      }
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 80);
      if (a2)
      {
        sub_2366FD390(a2, a3);
      }

      v12 = *(a1 + 24);
      v552 = v12 * v12;
      v574 = v11;
      v551 = a3;
      if (*(a1 + 4))
      {
        v13 = 4;
        if (*(a3 + 12))
        {
          v13 = 0;
        }

        v14 = *(a3 + v13);
        LODWORD(v599) = v14;
        v15 = *(v10 + 56);
        v586 = v15;
        LODWORD(v588) = v12;
        v16 = (&a4[v15 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v9 >= v16)
        {
          v570 = v16 + 8 * v15 * v14;
          if (v570 <= v9)
          {
            v17 = *(v11 + 13);
            if (v17)
            {
              if (v14 >= 1)
              {
                v18 = 0;
                do
                {
                  if (v15 >= 1)
                  {
                    v19 = 0;
                    v20 = *(v10 + 144);
                    v21 = *(a3 + 16);
                    v22 = *(a3 + 8);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v24 = v19;
                      }

                      else
                      {
                        v24 = v18;
                      }

                      if (*(a3 + 12))
                      {
                        v25 = v18;
                      }

                      else
                      {
                        v25 = v19;
                      }

                      v23 = v19 % v12 + *(v20 + 4 * (v19 / v12)) * v12;
                      a4[v23 + v18 * v15] = *(v21 + 8 * (v25 + v24 * v22)) * *(v17 + 8 * v23);
                      ++v19;
                    }

                    while (v15 != v19);
                  }

                  ++v18;
                }

                while (v18 != v14);
              }
            }

            else if (v14 >= 1)
            {
              v62 = 0;
              do
              {
                if (v15 >= 1)
                {
                  v63 = 0;
                  v64 = *(v10 + 144);
                  v65 = *(a3 + 16);
                  v66 = *(a3 + 8);
                  do
                  {
                    if (*(a3 + 12))
                    {
                      v67 = v63;
                    }

                    else
                    {
                      v67 = v62;
                    }

                    if (*(a3 + 12))
                    {
                      v68 = v62;
                    }

                    else
                    {
                      v68 = v63;
                    }

                    a4[v63 % v12 + v62 * v15 + *(v64 + 4 * (v63 / v12)) * v12] = *(v65 + 8 * (v68 + v67 * v66));
                    ++v63;
                  }

                  while (v15 != v63);
                }

                ++v62;
              }

              while (v62 != v14);
            }

            v575 = v15;
            v582 = (&a4[v15 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v12 == 1)
            {
              v69 = *(v10 + 100);
              if (v69 >= 1)
              {
                v70 = *(v10 + 60);
                v71 = v70 - v69;
                v72 = *(v10 + 120);
                v73 = *(v11 + 5);
                v74 = *(v72 + 8 * v70);
                v75 = 8 * v70 - 8;
                v76 = 8 * v15;
                do
                {
                  --v70;
                  v77 = *(v72 + 8 * v70);
                  v78 = v77 + 1;
                  if (v77 + 1 < v74)
                  {
                    v79 = *(v10 + 128);
                    v80 = *(v10 + 136);
                    do
                    {
                      if (v14 >= 1)
                      {
                        v81 = *(v80 + 4 * *(v79 + 4 * v78));
                        v82 = -*(v73 + 8 * v78);
                        v83 = a4;
                        v84 = v14;
                        do
                        {
                          *(v83 + v75) = *(v83 + v75) + v82 * v83[v81];
                          v83 = (v83 + v76);
                          --v84;
                        }

                        while (v84);
                      }

                      ++v78;
                    }

                    while (v78 != v74);
                  }

                  v74 = v77;
                  if (v14 >= 1)
                  {
                    v85 = *(v73 + 8 * v77);
                    v86 = a4;
                    v87 = v14;
                    do
                    {
                      *(v86 + v75) = v85 * *(v86 + v75);
                      v86 = (v86 + v76);
                      --v87;
                    }

                    while (v87);
                  }

                  v75 -= 8;
                }

                while (v70 > v71);
              }
            }

            else
            {
              v88 = *(v10 + 100);
              if (v88 >= 1)
              {
                v89 = *(v10 + 60);
                v90 = *(v10 + 96) + v88;
                v91 = 8 * v552;
                do
                {
                  v92 = *(v10 + 120);
                  v93 = *(v92 + 8 * v89--);
                  v94 = *(v92 + 8 * v89) + 1;
                  v95 = v588;
                  v96 = v588;
                  if (v94 < v93)
                  {
                    v97 = *(v10 + 128);
                    v98 = *(v10 + 136);
                    v99 = v599;
                    v100 = *(v574 + 5) + v91 * v94;
                    do
                    {
                      if (v99 >= 1)
                      {
                        v101 = 0;
                        v102 = *(v98 + 4 * *(v97 + 4 * v94)) * v95;
                        do
                        {
                          if (v95 >= 1)
                          {
                            v103 = 0;
                            v104 = v96 * v89 + v101 * v586;
                            v105 = v100;
                            do
                            {
                              v106 = a4[v104 + v103];
                              v107 = v105;
                              v108 = v102;
                              v109 = v96;
                              do
                              {
                                v110 = *v107++;
                                v106 = v106 - v110 * a4[v108];
                                a4[v104 + v103] = v106;
                                ++v108;
                                --v109;
                              }

                              while (v109);
                              ++v103;
                              v105 += v95;
                            }

                            while (v103 != v96);
                          }

                          ++v101;
                          v102 += v586;
                        }

                        while (v101 != v99);
                      }

                      ++v94;
                      v100 += v91;
                    }

                    while (v94 != v93);
                  }

                  --v90;
                  dgetrs_NEWLAPACK();
                }

                while (v89 > *(v10 + 60) - *(v10 + 100));
              }
            }

            v554 = *(v10 + 104);
            if (v554 <= 0)
            {
              v111 = v588;
              goto LABEL_431;
            }

            v111 = v588;
            LODWORD(v112) = v599;
            v113 = 8 * v552;
            __n = 8 * v575;
            while (1)
            {
              v114 = *(v10 + 112);
              v553 = v554--;
              v115 = *(v114 + 4 * v553);
              v566 = *(v114 + 4 * v554);
              if (v566 < v115)
              {
                v116 = v566;
                v117 = *(v10 + 120);
                v118 = *(v117 + 8 * v566);
                do
                {
                  v119 = v116 + 1;
                  v120 = *(v117 + 8 * (v116 + 1));
                  if (v118 < v120)
                  {
                    v121 = *(v10 + 128);
                    v122 = *(v10 + 136);
                    v123 = v111 * v116;
                    v124 = *(v574 + 5) + v113 * v118;
                    do
                    {
                      if (v112 >= 1)
                      {
                        v125 = 0;
                        v126 = *(v122 + 4 * *(v121 + 4 * v118)) * v111;
                        do
                        {
                          if (v111 >= 1)
                          {
                            v127 = 0;
                            v128 = v123 + v125 * v586;
                            v129 = v124;
                            do
                            {
                              v130 = a4[v128 + v127];
                              v131 = v129;
                              v132 = v126;
                              v133 = v111;
                              do
                              {
                                v134 = *v131++;
                                v130 = v130 - v134 * a4[v132];
                                a4[v128 + v127] = v130;
                                ++v132;
                                --v133;
                              }

                              while (v133);
                              ++v127;
                              v129 += v111;
                            }

                            while (v127 != v111);
                          }

                          ++v125;
                          v126 += v586;
                        }

                        while (v125 != v112);
                      }

                      ++v118;
                      v124 += v113;
                    }

                    while (v118 != v120);
                  }

                  v118 = v120;
                  v116 = v119;
                }

                while (v119 != v115);
              }

              if (*(v10 + 168) < 1)
              {
                v212 = v566;
                goto LABEL_258;
              }

              v135 = 0;
              v136 = 8 * v586;
              v137 = v569;
              v138 = v566;
              v556 = v115;
              do
              {
                v139 = *(v10 + 176);
                v140 = *(v139 + 4 * v135);
                v141 = v140 >= v138 && v140 < v115;
                if (!v141)
                {
                  v142 = v135 + 1;
                  goto LABEL_190;
                }

                if (v137 == 83)
                {
                  v143 = *(*(v574 + 9) + 4 * v135);
                  v144 = *(*(v574 + 10) + 4 * v135);
                  v145 = *(*(v574 + 11) + 4 * v135);
                }

                else
                {
                  v143 = 0;
                  v144 = 0;
                  v145 = 0;
                }

                v142 = v135 + 1;
                v146 = v143 + (*(v139 + 4 * (v135 + 1)) - v140) * v111;
                v147 = v146;
                if (v137 == 83)
                {
                  v147 = *(*(v574 + 8) + 4 * v135);
                }

                v148 = v111 * (*(*(v10 + 200) + 8 * v142) - *(*(v10 + 200) + 8 * v135));
                v149 = *(*(v574 + 14) + 8 * v135) + 8 + 8 * (v146 + v144 + v111 * (*(*(v10 + 184) + 8 * v142) - *(*(v10 + 184) + 8 * v135))) * v146 + 8 * (v148 + v145) * v146 + 4 * v146 + 4 * v144;
                if (v137 == 81)
                {
                  v150 = 0;
                }

                else
                {
                  v150 = v149;
                }

                v151 = &v150[v146];
                if (v145 <= 0)
                {
                  v151 = 0;
                }

                v558 = v151;
                if (v147)
                {
                  v572 = v145;
                  v564 = v143 + (*(v139 + 4 * (v135 + 1)) - v140) * v111;
                  v562 = v150;
                  if (v137 == 81)
                  {
                    if (v112 >= 1)
                    {
                      v152 = 0;
                      v153 = &a4[v140 * v111];
                      v154 = v570;
                      do
                      {
                        v155 = v153;
                        v156 = v154;
                        v157 = v147;
                        if (v147 >= 1)
                        {
                          do
                          {
                            v158 = *v155++;
                            *v156++ = v158;
                            --v157;
                          }

                          while (v157);
                        }

                        ++v152;
                        v154 += v147;
                        v153 = (v153 + v136);
                      }

                      while (v152 != v112);
                      goto LABEL_153;
                    }

LABEL_160:
                    cblas_dtrsm_NEWLAPACK();
                    v167 = v562;
                    v166 = v564;
                    v165 = v572;
                    v136 = 8 * v586;
                    LODWORD(v115) = v556;
                    v138 = v566;
                    v137 = v569;
                  }

                  else
                  {
                    if (v112 < 1)
                    {
                      goto LABEL_160;
                    }

                    v159 = 0;
                    v160 = v570;
                    do
                    {
                      if (v147 >= 1)
                      {
                        v161 = v150;
                        v162 = v160;
                        v163 = v147;
                        do
                        {
                          v164 = *v161++;
                          *v162++ = a4[v159 * v586 + v164];
                          --v163;
                        }

                        while (v163);
                      }

                      ++v159;
                      v160 += v147;
                    }

                    while (v159 != v112);
LABEL_153:
                    cblas_dtrsm_NEWLAPACK();
                    v137 = v569;
                    if (v569 == 81)
                    {
                      v138 = v566;
                      v136 = 8 * v586;
                      LODWORD(v115) = v556;
                      v165 = v572;
                      v166 = v564;
                      v167 = v562;
                      v168 = 0;
                      v169 = v570;
                      v170 = a4;
                      do
                      {
                        if (v147 >= 1)
                        {
                          v171 = &v170[*(*(v10 + 176) + 4 * v135) * v111];
                          v172 = v169;
                          v173 = v147;
                          do
                          {
                            v174 = *v172++;
                            *v171++ = v174;
                            --v173;
                          }

                          while (v173);
                        }

                        ++v168;
                        v170 += v586;
                        v169 += v147;
                      }

                      while (v168 != v112);
                    }

                    else
                    {
                      v138 = v566;
                      v136 = 8 * v586;
                      LODWORD(v115) = v556;
                      v165 = v572;
                      v166 = v564;
                      v167 = v562;
                      v175 = 0;
                      v176 = v570;
                      do
                      {
                        if (v147 >= 1)
                        {
                          v177 = v176;
                          v178 = v562;
                          v179 = v147;
                          do
                          {
                            v180 = *v177++;
                            v181 = v180;
                            v182 = *v178++;
                            a4[v175 * v586 + v182] = v181;
                            --v179;
                          }

                          while (v179);
                        }

                        ++v175;
                        v176 += v147;
                      }

                      while (v175 != v112);
                    }
                  }

                  v183 = v166 + v165 + v148;
                  if (v183 > v147)
                  {
                    v184 = (v570 + 8 * v147 * v112);
                    v577 = (v166 - v147);
                    v555 = v183;
                    if (v166 > v147)
                    {
                      cblas_dgemm_NEWLAPACK();
                      v183 = v555;
                      v167 = v562;
                      v166 = v564;
                      v165 = v572;
                      v136 = 8 * v586;
                      LODWORD(v115) = v556;
                      v138 = v566;
                      v137 = v569;
                    }

                    if (v183 > v166)
                    {
                      cblas_dgemm_NEWLAPACK();
                      v183 = v555;
                      v167 = v562;
                      v166 = v564;
                      v165 = v572;
                      v136 = 8 * v586;
                      LODWORD(v115) = v556;
                      v138 = v566;
                      v137 = v569;
                    }

                    if (v112 >= 1)
                    {
                      v185 = 0;
                      v186 = (*(v10 + 200) + 8 * v135);
                      v187 = *v186;
                      v188 = v186[1];
                      v189 = 8 * v183 - 8 * v147;
                      v190 = &v167[v147];
                      v191 = a4;
                      do
                      {
                        v192 = v185 * v586;
                        if (v166 <= v147)
                        {
                          v199 = 0;
                        }

                        else
                        {
                          v193 = v190;
                          v194 = v184;
                          v195 = v577;
                          do
                          {
                            v196 = *v194++;
                            v197 = v196;
                            LODWORD(v196) = *v193++;
                            v198 = LODWORD(v196);
                            if (SLODWORD(v196) < 0)
                            {
                              v198 = -v198;
                            }

                            a4[v192 + v198] = v197 + a4[v192 + v198];
                            --v195;
                          }

                          while (v195);
                          v199 = v577;
                        }

                        v200 = v187;
                        if (v187 < v188)
                        {
                          do
                          {
                            if (v111 >= 1)
                            {
                              v201 = v199;
                              v202 = &v191[*(*(v10 + 208) + 4 * v200) * v111];
                              v199 += v111;
                              v203 = v111;
                              do
                              {
                                *v202 = v184[v201] + *v202;
                                ++v202;
                                ++v201;
                                --v203;
                              }

                              while (v203);
                            }

                            ++v200;
                          }

                          while (v200 != v188);
                        }

                        if (v165 >= 1)
                        {
                          v204 = &a4[v192];
                          v205 = v199;
                          v206 = v558;
                          v207 = v165;
                          do
                          {
                            v208 = *v206++;
                            v204[v208] = v184[v205++] + v204[v208];
                            --v207;
                          }

                          while (v207);
                        }

                        ++v185;
                        v184 = (v184 + v189);
                        v191 = (v191 + v136);
                      }

                      while (v185 != v112);
                    }
                  }

                  v142 = v135 + 1;
                }

LABEL_190:
                v209 = *(v10 + 168);
                v135 = v142;
              }

              while (v142 < v209);
              v210 = v588;
              v112 = v599;
              v114 = *(v10 + 112);
              v211 = (v114 + 4 * v554);
              v212 = *v211;
              if (v209 < 1)
              {
                v111 = v588;
              }

              else
              {
                v213 = v211[1];
                v567 = *v211;
                v557 = v213;
                do
                {
                  v214 = v209--;
                  v215 = *(v10 + 176);
                  v216 = *(v215 + 4 * v209);
                  if (v216 >= v212 && v216 < v213)
                  {
                    if (v137 == 83)
                    {
                      v218 = v574;
                      v219 = *(*(v574 + 10) + 4 * v209);
                      v220 = *(*(v574 + 11) + 4 * v209);
                      v221 = *(v215 + 4 * v214);
                      v222 = *(*(v574 + 9) + 4 * v209) + (v221 - v216) * v210;
                      v223 = *(*(v574 + 8) + 4 * v209);
                    }

                    else
                    {
                      v220 = 0;
                      v219 = 0;
                      v221 = *(v215 + 4 * v214);
                      v222 = (v221 - v216) * v210;
                      v223 = v222;
                      v218 = v574;
                    }

                    v224 = *(*(v218 + 14) + 8 * v209) + 8;
                    v225 = *(v10 + 184);
                    v226 = *(v225 + 8 * v214);
                    v227 = *(v225 + 8 * v209);
                    v228 = *(v10 + 200);
                    v229 = *(v228 + 8 * v214);
                    v230 = *(v228 + 8 * v209);
                    v231 = v219 + v222 + v210 * (v226 - v227);
                    v232 = v220 + v222 + v210 * (v229 - v230);
                    if (v137 == 81)
                    {
                      v233 = 0;
                      v234 = 0;
                    }

                    else
                    {
                      v233 = v224 + 8 * v222 * v231 + 8 * v222 * (v220 + v210 * (v229 - v230));
                      v234 = v233 + 4 * v222 + 4 * v219;
                    }

                    v235 = (v233 + 4 * v222);
                    if (v219 <= 0)
                    {
                      v235 = 0;
                    }

                    if (v223)
                    {
                      v559 = v214;
                      v563 = v232;
                      if (v112 >= 1)
                      {
                        v236 = 0;
                        v237 = v221 * v210;
                        v238 = v216 * v210;
                        v239 = &a4[v238];
                        v240 = v582;
                        v241 = v570;
                        do
                        {
                          if (v233)
                          {
                            if (v223 < 1)
                            {
                              LODWORD(v247) = 0;
                            }

                            else
                            {
                              v242 = v234;
                              v243 = v241;
                              v244 = v223;
                              do
                              {
                                v246 = *v242++;
                                v245 = v246;
                                if (v246 < 0)
                                {
                                  v245 = -v245;
                                }

                                *v243++ = a4[v236 * v586 + v245];
                                --v244;
                              }

                              while (v244);
                              LODWORD(v247) = v223;
                            }

                            if (v247 < v222)
                            {
                              v247 = v247;
                              do
                              {
                                v249 = *(v233 + 4 * v247);
                                if (v249 < 0)
                                {
                                  v249 = -v249;
                                }

                                v241[v247++] = *(v582 + 8 * v236 * v575 + 8 * v249);
                              }

                              while (v222 != v247);
                              LODWORD(v247) = v222;
                            }
                          }

                          else if (v238 >= v237)
                          {
                            LODWORD(v247) = 0;
                          }

                          else
                          {
                            v248 = 0;
                            do
                            {
                              v241[v248] = v239[v248];
                              ++v248;
                            }

                            while (v237 - v238 != v248);
                            LODWORD(v247) = v237 - v238;
                          }

                          v250 = v227;
                          if (v226 > v227)
                          {
                            do
                            {
                              if (v210 >= 1)
                              {
                                v251 = v247;
                                v252 = (v240 + 8 * *(*(v10 + 192) + 4 * v250) * v210);
                                LODWORD(v247) = v210 + v247;
                                v253 = v210;
                                do
                                {
                                  v254 = *v252++;
                                  v241[v251++] = v254;
                                  --v253;
                                }

                                while (v253);
                              }

                              ++v250;
                            }

                            while (v250 != v226);
                          }

                          if (v219 >= 1)
                          {
                            v255 = v247;
                            v256 = v235;
                            v257 = v219;
                            do
                            {
                              v258 = *v256++;
                              v241[v255++] = *(v582 + 8 * v236 * v575 + 8 * v258);
                              --v257;
                            }

                            while (v257);
                          }

                          ++v236;
                          v241 += v232;
                          v239 += v586;
                          v240 += __n;
                        }

                        while (v236 != v112);
                      }

                      if (v231 > v223)
                      {
                        cblas_dgemm_NEWLAPACK();
                      }

                      if (v223 >= 2)
                      {
                        cblas_dtrsm_NEWLAPACK();
                      }

                      if (v233)
                      {
                        v137 = v569;
                        v212 = v567;
                        v213 = v557;
                        v214 = v559;
                        if (v112 >= 1)
                        {
                          v259 = 0;
                          v260 = v570;
                          do
                          {
                            if (v223 >= 1)
                            {
                              v261 = v260;
                              v262 = v233;
                              v263 = v223;
                              do
                              {
                                v264 = *v261++;
                                v265 = v264;
                                v266 = *v262++;
                                *(v582 + 8 * v259 * v575 + 8 * v266) = v265;
                                --v263;
                              }

                              while (v263);
                            }

                            ++v259;
                            v260 += v563;
                          }

                          while (v259 != v112);
                        }
                      }

                      else
                      {
                        v137 = v569;
                        v212 = v567;
                        v213 = v557;
                        v214 = v559;
                        if (v112 >= 1)
                        {
                          v267 = 0;
                          v268 = *(v10 + 176);
                          v269 = *(v268 + 4 * v209);
                          v270 = v269 * v210;
                          v271 = *(v268 + 4 * v559);
                          v272 = ((v271 - v269) * v210);
                          v273 = (v582 + 8 * v270);
                          v274 = v570;
                          do
                          {
                            v275 = v273;
                            v276 = v274;
                            v277 = v272;
                            if (v270 < v271 * v210)
                            {
                              do
                              {
                                v278 = *v276++;
                                *v275++ = v278;
                                --v277;
                              }

                              while (v277);
                            }

                            ++v267;
                            v274 += v563;
                            v273 = (v273 + __n);
                          }

                          while (v267 != v112);
                        }
                      }
                    }
                  }
                }

                while (v214 > 1);
                v114 = *(v10 + 112);
                v212 = *(v114 + 4 * v554);
                v111 = v588;
                LODWORD(v112) = v599;
              }

LABEL_258:
              if (v112 >= 1)
              {
                v279 = 8 * (*(v114 + 4 * v553) - v212) * v111;
                v280 = v112;
                v281 = v212 * v111;
                do
                {
                  memcpy(&a4[v281], (v582 + v281 * 8), v279);
                  v281 += v586;
                  --v280;
                }

                while (v280);
              }

              v113 = 8 * v552;
              if (v553 <= 1)
              {
LABEL_431:
                v482 = *(v10 + 96);
                if (v111 == 1)
                {
                  if (v482 >= 1)
                  {
                    v483 = *(v10 + 120);
                    v484 = v599;
                    v485 = *(v574 + 5);
                    v486 = *(v483 + 8 * v482);
                    v487 = 8 * v482 - 8;
                    v488 = 8 * v586;
                    do
                    {
                      v489 = *(v483 + 8 * (v482 - 1));
                      v490 = v489 + 1;
                      if (v489 + 1 < v486)
                      {
                        v492 = *(v10 + 128);
                        v491 = *(v10 + 136);
                        do
                        {
                          if (v484 >= 1)
                          {
                            v493 = *(v491 + 4 * *(v492 + 4 * v490));
                            v494 = -*(v485 + 8 * v490);
                            v495 = a4;
                            v496 = v484;
                            do
                            {
                              *(v495 + v487) = *(v495 + v487) + v494 * v495[v493];
                              v495 = (v495 + v488);
                              --v496;
                            }

                            while (v496);
                          }

                          ++v490;
                        }

                        while (v490 != v486);
                      }

                      v486 = v489;
                      if (v484 >= 1)
                      {
                        v497 = *(v485 + 8 * v489);
                        v498 = a4;
                        v499 = v484;
                        do
                        {
                          *(v498 + v487) = v497 * *(v498 + v487);
                          v498 = (v498 + v488);
                          --v499;
                        }

                        while (v499);
                      }

                      v487 -= 8;
                      v141 = v482-- < 2;
                    }

                    while (!v141);
                  }
                }

                else if (v482 >= 1)
                {
                  v500 = 8 * v552;
                  do
                  {
                    v501 = *(v10 + 120);
                    v502 = *(v501 + 8 * v482);
                    v503 = *(v501 + 8 * (v482 - 1)) + 1;
                    v504 = v588;
                    if (v503 < v502)
                    {
                      v505 = *(v10 + 128);
                      v506 = *(v10 + 136);
                      v507 = v599;
                      v508 = *(v574 + 5) + v500 * v503;
                      do
                      {
                        if (v507 >= 1)
                        {
                          v509 = 0;
                          v510 = *(v506 + 4 * *(v505 + 4 * v503)) * v504;
                          do
                          {
                            if (v504 >= 1)
                            {
                              v511 = 0;
                              v512 = v504 * (v482 - 1) + v509 * v586;
                              v513 = v508;
                              do
                              {
                                v514 = a4[v512 + v511];
                                v515 = v513;
                                v516 = v510;
                                v517 = v504;
                                do
                                {
                                  v518 = *v515++;
                                  v514 = v514 - v518 * a4[v516];
                                  a4[v512 + v511] = v514;
                                  ++v516;
                                  --v517;
                                }

                                while (v517);
                                ++v511;
                                v513 += v504;
                              }

                              while (v511 != v504);
                            }

                            ++v509;
                            v510 += v586;
                          }

                          while (v509 != v507);
                        }

                        ++v503;
                        v508 += v500;
                      }

                      while (v503 != v502);
                    }

                    dgetrs_NEWLAPACK();
                    v141 = v482-- <= 1;
                  }

                  while (!v141);
                }

                v519 = *(v574 + 12);
                v520 = v599;
                if (v519)
                {
                  if (v599 >= 1)
                  {
                    v521 = 0;
                    v522 = 0;
                    v523 = v588;
                    do
                    {
                      if (v575 >= 1)
                      {
                        v524 = 0;
                        v525 = *(v10 + 136);
                        v526 = *(v551 + 16);
                        v527 = *(v551 + 8);
                        do
                        {
                          v528 = v524 + *(v525 + 4 * (v524 / v523)) * v523 - v524 / v523 * v523;
                          v529 = a4[v528 + v521] * *(v519 + 8 * v528);
                          if (*(v551 + 12))
                          {
                            v530 = v524;
                          }

                          else
                          {
                            v530 = v522;
                          }

                          if (*(v551 + 12))
                          {
                            v531 = v522;
                          }

                          else
                          {
                            v531 = v524;
                          }

                          *(v526 + 8 * (v531 + v530 * v527)) = v529;
                          ++v524;
                        }

                        while (v575 != v524);
                      }

                      ++v522;
                      v521 += v586;
                    }

                    while (v522 != v520);
                  }
                }

                else if (v599 >= 1)
                {
                  v532 = 0;
                  v533 = 0;
                  v534 = v588;
                  do
                  {
                    if (v575 >= 1)
                    {
                      v535 = 0;
                      v536 = *(v10 + 136);
                      v537 = *(v551 + 16);
                      v538 = *(v551 + 8);
                      do
                      {
                        if (*(v551 + 12))
                        {
                          v539 = v535;
                        }

                        else
                        {
                          v539 = v533;
                        }

                        if (*(v551 + 12))
                        {
                          v540 = v533;
                        }

                        else
                        {
                          v540 = v535;
                        }

                        *(v537 + 8 * (v540 + v539 * v538)) = a4[v532 + v535 + *(v536 + 4 * (v535 / v534)) * v534 - v535 / v534 * v534];
                        ++v535;
                      }

                      while (v575 != v535);
                    }

                    ++v533;
                    v532 += v586;
                  }

                  while (v533 != v520);
                }

                return;
              }
            }
          }
        }

LABEL_503:
        __break(1u);
      }

      v46 = 4;
      if (*(a3 + 12))
      {
        v46 = 0;
      }

      v47 = *(a3 + v46);
      v585 = v47;
      v587 = *(a1 + 24);
      v48 = *(v10 + 56);
      v584 = v48;
      v49 = (&a4[v48 * v47] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v9 < v49)
      {
        goto LABEL_503;
      }

      v50 = (v49 + 8 * v48 * v47);
      if (v50 > v9)
      {
        goto LABEL_503;
      }

      v51 = *(v11 + 12);
      if (v51)
      {
        if (v47 >= 1)
        {
          v52 = 0;
          do
          {
            if (v48 >= 1)
            {
              v53 = 0;
              v54 = *(v10 + 136);
              v55 = *(a3 + 16);
              v56 = *(a3 + 8);
              do
              {
                if (*(a3 + 12))
                {
                  v58 = v53;
                }

                else
                {
                  v58 = v52;
                }

                if (*(a3 + 12))
                {
                  v59 = v52;
                }

                else
                {
                  v59 = v53;
                }

                v57 = v53 % v12 + *(v54 + 4 * (v53 / v12)) * v12;
                a4[v57 + v52 * v48] = *(v55 + 8 * (v59 + v58 * v56)) * *(v51 + 8 * v57);
                ++v53;
              }

              while (v48 != v53);
            }

            ++v52;
          }

          while (v52 != v47);
        }
      }

      else if (v47 >= 1)
      {
        v282 = 0;
        do
        {
          v283 = 0;
          do
          {
            if (v48 >= 1)
            {
              v284 = 0;
              v285 = *(v10 + 136);
              v286 = *(a3 + 16);
              v287 = *(a3 + 8);
              do
              {
                v288 = *(a3 + 12);
                if (v288)
                {
                  v289 = v284;
                }

                else
                {
                  v289 = v283;
                }

                if (v288)
                {
                  v290 = v283;
                }

                else
                {
                  v290 = v284;
                }

                a4[(v284 % v12 + v283 * v48 + *(v285 + 4 * (v284 / v12)) * v12)] = *(v286 + 8 * (v290 + v289 * v287));
                ++v284;
              }

              while (v48 != v284);
            }

            ++v283;
          }

          while (v283 != v47);
          ++v282;
        }

        while (v282 != v47);
      }

      v291 = *(v10 + 96);
      v571 = (&a4[v48 * v47] + 7) & 0xFFFFFFFFFFFFFFF8;
      v576 = (v49 + 8 * v48 * v47);
      if (v12 == 1)
      {
        if (v291 >= 1)
        {
          v292 = 0;
          v293 = *(v10 + 120);
          v294 = *(v11 + 5);
          v295 = *v293;
          v296 = 8 * v48;
          v297 = a4;
          do
          {
            if (v47 >= 1)
            {
              v298 = *(v294 + 8 * v295);
              v299 = v297;
              v300 = v47;
              do
              {
                *v299 = v298 * *v299;
                v299 = (v299 + v296);
                --v300;
              }

              while (v300);
            }

            v301 = v293[++v292];
            v302 = v295 + 1;
            if (v302 < v301)
            {
              v304 = *(v10 + 128);
              v303 = *(v10 + 136);
              do
              {
                if (v47 >= 1)
                {
                  v305 = 0;
                  v306 = -*(v294 + 8 * v302);
                  v307 = &a4[*(v303 + 4 * *(v304 + 4 * v302))];
                  v308 = v47;
                  do
                  {
                    *(v307 + v305) = *(v307 + v305) + v306 * *(v297 + v305);
                    v305 += v296;
                    --v308;
                  }

                  while (v308);
                }

                ++v302;
              }

              while (v302 != v301);
            }

            ++v297;
            v295 = v301;
          }

          while (v292 != v291);
        }

        v12 = 1;
      }

      else if (v291 >= 1)
      {
        v309 = 0;
        v310 = **(v10 + 120);
        v311 = 8 * v552;
        do
        {
          LODWORD(v588) = 0;
          dgetrs_NEWLAPACK();
          v312 = v309 + 1;
          v313 = *(*(v10 + 120) + 8 * (v309 + 1));
          v314 = v310 + 1;
          if (v310 + 1 < v313)
          {
            v315 = *(v10 + 128);
            v316 = *(v10 + 136);
            v317 = v587 * v309;
            v318 = *(v574 + 5) + v311 * v314;
            do
            {
              if (v585 >= 1)
              {
                v319 = 0;
                v320 = *(v316 + 4 * *(v315 + 4 * v314)) * v587;
                do
                {
                  if (v587 >= 1)
                  {
                    v321 = 0;
                    v322 = v318;
                    do
                    {
                      v323 = v322;
                      v324 = v320;
                      v325 = v587;
                      do
                      {
                        v326 = *v323++;
                        a4[v324] = a4[v324] - v326 * a4[v317 + v319 * v48 + v321];
                        ++v324;
                        --v325;
                      }

                      while (v325);
                      ++v321;
                      v322 += v587;
                    }

                    while (v321 != v587);
                  }

                  ++v319;
                  v320 += v48;
                }

                while (v319 != v585);
              }

              ++v314;
              v318 += v311;
            }

            while (v314 != v313);
          }

          v310 = v313;
          v309 = v312;
        }

        while (v312 < *(v10 + 96));
        v12 = v587;
        v9 = v561;
        v50 = v576;
      }

      if (*(v10 + 104) >= 1)
      {
        _X24 = 0;
        v328 = v585;
        v329 = *(v10 + 112);
        __na = *v329;
        v583 = 8 * v552;
        v330 = 0;
        v568 = v48;
        do
        {
          v331 = *(v10 + 168);
          v332 = &v50[8 * v331];
          if (v9 < v332)
          {
            goto LABEL_503;
          }

          v565 = v330;
          v578 = v329[v330 + 1];
          v333 = v50;
          bzero(v50, 8 * v331);
          v334 = &v332[4 * *(v10 + 168) + 7] & 0xFFFFFFFFFFFFFFF8;
          if (v9 < v334)
          {
            goto LABEL_503;
          }

          v335 = v334 + 40 * *(v10 + 336);
          if (v335 > v9)
          {
            goto LABEL_503;
          }

          v336 = (v335 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
          v337 = atomic_load(v574 + 34);
          v338 = *(v10 + 52);
          v339 = 4 * *(v10 + 56);
          v340 = v578;
          if (v338 < 2)
          {
            v366 = ((v336 + v339 + 7) & 0xFFFFFFFFFFFFFFF8);
            if (v9 < v366)
            {
              goto LABEL_503;
            }

            v367 = atomic_load(v574 + 34);
            v368 = __na;
            if (&v366[8 * (v367 * v328)] > v9)
            {
              goto LABEL_503;
            }

            v369 = *(v10 + 168);
            if (v369 >= 1)
            {
              for (i = 0; i < v369; ++i)
              {
                v371 = *(*(v10 + 176) + 4 * i);
                if (v371 >= v368 && v371 < v340)
                {
                  v550 = v332;
                  v373 = v332;
                  v374 = v336;
                  v375 = v366;
                  sub_236790F98(i, v569, v12, v10, v574, v328, a4, v584, v576, v550, v366, v336);
                  v366 = v375;
                  v48 = v568;
                  v336 = v374;
                  v332 = v373;
                  v340 = v578;
                  v368 = __na;
                  v369 = *(v10 + 168);
                }
              }
            }
          }

          else
          {
            v341 = (v339 + 8 * (v337 * v328) + *MEMORY[0x277D85FA0] + 7) & -*MEMORY[0x277D85FA0];
            v602 = 0u;
            v603 = 0u;
            v601 = 0u;
            v599 = 0u;
            v600 = 0u;
            LODWORD(v599) = v338;
            atomic_store(0, &v599 + 1);
            atomic_store(0, (&v599 | 0xC));
            atomic_store(0, &v600);
            v342 = v601;
            do
            {
              _X2 = 0;
              _X5 = *(&v601 + 1);
              __asm { CASPAL          X4, X5, X2, X3, [X10] }

              _ZF = _X4 == v342;
              v342 = _X4;
            }

            while (!_ZF);
            *&v602 = v341;
            *(&v602 + 1) = v336;
            v594 = 0;
            v588 = v569;
            v589 = v10;
            v590 = v12;
            v591 = v574;
            *&v592 = v333;
            *(&v592 + 1) = v332;
            v593 = v328;
            v595 = a4;
            v596 = 0;
            v597 = v584;
            v598 = v334;
            *&v603 = &v588;
            v350 = __na;
            if (*(v10 + 336) >= 1)
            {
              v351 = 0;
              do
              {
                v352 = *(*(v10 + 176) + 4 * *(*(v10 + 344) + 4 * v351));
                if (v352 >= v350 && v352 < v340)
                {
                  v354 = *(v10 + 368) + 8 * v351;
                  v355 = *(v354 + 8);
                  v356 = *v354;
                  v357 = &v598[40 * v351];
                  v358 = v355 - v356;
                  atomic_store(v358, v357);
                  *(v357 + 2) = v351;
                  *(v357 + 2) = sub_236790DDC;
                  if (!v358)
                  {
                    _X0 = 0;
                    _X1 = 0;
                    __asm { CASP            X0, X1, X0, X1, [X10] }

                    while (1)
                    {
                      *(v357 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v357 + 4) = 0;
                      _X2 = _X0 & 1 | v357;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }

                      if (_X4 == _X0)
                      {
                        break;
                      }

                      _X1 = 0;
                      __asm { CASP            X0, X1, X24, X25, [X10] }
                    }

                    if (_X0)
                    {
                      __ulock_wake();
                      v340 = v578;
                      v350 = __na;
                    }
                  }
                }

                ++v351;
              }

              while (v351 < *(v10 + 336));
            }

            sub_2366FCD2C(&v599, 1);
          }

          v376 = &v576[40 * *(v10 + 336)];
          if (v561 < v376)
          {
            goto LABEL_503;
          }

          v377 = v585;
          v378 = (*(v10 + 112) + 4 * v565);
          v380 = *v378;
          v379 = v378[1];
          v381 = (&v376[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0]);
          v382 = atomic_load(v574 + 35);
          v383 = v377;
          if (*(v10 + 52) < 2)
          {
            v404 = atomic_load(v574 + 35);
            if (v561 < ((&v381[v404 * v585] + 7) & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_503;
            }

            v405 = *(v10 + 168);
            v406 = v569;
            if (v405 >= 1)
            {
              do
              {
                v407 = *(*(v10 + 176) + 4 * v405 - 4);
                if (v407 >= v380 && v407 < v379)
                {
                  sub_236791CF4(v405 - 1, v406, v587, v10, v574, v383, a4, v584, v571, v48, v381);
                  v406 = v569;
                }

                --v405;
              }

              while ((v405 + 1) > 1);
            }
          }

          else
          {
            v384 = v382 * v585;
            v385 = *MEMORY[0x277D85FA0];
            v602 = 0u;
            v603 = 0u;
            v573 = (v385 + 8 * v384 - 1) & -v385;
            v601 = 0u;
            v599 = 0u;
            v600 = 0u;
            v560 = &v600;
            LODWORD(v599) = sub_2366FCCD0(0);
            atomic_store(0, &v599 + 1);
            atomic_store(0, (&v599 | 0xC));
            atomic_store(0, v560);
            v386 = v601;
            do
            {
              _X2 = 0;
              _X5 = *(&v601 + 1);
              __asm { CASPAL          X4, X5, X2, X3, [X8] }

              _ZF = _X4 == v386;
              v386 = _X4;
            }

            while (!_ZF);
            *&v602 = v573;
            *(&v602 + 1) = v381;
            v588 = v569;
            v589 = v10;
            v590 = v587;
            v591 = v574;
            v592 = 0uLL;
            v593 = v383;
            v594 = v571;
            v595 = a4;
            v596 = v48;
            v597 = v584;
            v598 = v576;
            *&v603 = &v588;
            v390 = *(v10 + 336);
            if (v390 >= 1)
            {
              do
              {
                v391 = v390--;
                v392 = *(*(v10 + 176) + 4 * *(*(v10 + 344) + 4 * v390));
                if (v392 >= v380 && v392 < v379)
                {
                  v394 = *(v10 + 352);
                  v395 = *(v394 + 8 * v391);
                  v396 = *(v394 + 8 * v390);
                  v397 = &v598[40 * v390];
                  LODWORD(v395) = v395 - v396;
                  atomic_store(v395, v397);
                  *(v397 + 2) = v390;
                  *(v397 + 2) = sub_236791B58;
                  if (!v395)
                  {
                    do
                    {
                      _X0 = 0;
                      _X1 = 0;
                      __asm { CASP            X0, X1, X0, X1, [X10] }

                      *(v397 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v397 + 4) = 0;
                      _X2 = _X0 & 1 | v397;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    while (_X4 != _X0);
                    if (_X0)
                    {
                      __ulock_wake();
                    }
                  }
                }
              }

              while (v391 > 1);
            }

            sub_2366FCD2C(&v599, 1);
          }

          v329 = *(v10 + 112);
          v409 = v329[v565];
          v328 = v585;
          v12 = v587;
          v410 = v565 + 1;
          if (v585 < 1)
          {
            v413 = v574;
          }

          else
          {
            __nb = 8 * (v329[v410] - v409) * v587;
            v411 = v587 * v409;
            v412 = v585;
            do
            {
              memcpy(&a4[v411], (v571 + v411 * 8), __nb);
              v411 += v584;
              --v412;
            }

            while (v412);
            v329 = *(v10 + 112);
            v48 = v568;
            v409 = v329[v565];
            v413 = v574;
            v410 = v565 + 1;
          }

          __na = v329[v410];
          if (v409 < __na)
          {
            v414 = *(v10 + 120);
            v415 = v409;
            v416 = *(v414 + 8 * v409);
            do
            {
              v417 = v415 + 1;
              v418 = *(v414 + 8 * (v415 + 1));
              if (v416 < v418)
              {
                v419 = *(v10 + 128);
                v420 = *(v10 + 136);
                v421 = v587 * v415;
                v422 = *(v413 + 5) + v583 * v416;
                do
                {
                  if (v585 >= 1)
                  {
                    v423 = 0;
                    v424 = *(v420 + 4 * *(v419 + 4 * v416)) * v587;
                    do
                    {
                      if (v587 >= 1)
                      {
                        v425 = 0;
                        v426 = v422;
                        do
                        {
                          v427 = v426;
                          v428 = v424;
                          v429 = v587;
                          do
                          {
                            v430 = *v427++;
                            a4[v428] = a4[v428] - v430 * a4[v421 + v423 * v584 + v425];
                            ++v428;
                            --v429;
                          }

                          while (v429);
                          ++v425;
                          v426 += v587;
                        }

                        while (v425 != v587);
                      }

                      ++v423;
                      v424 += v584;
                    }

                    while (v423 != v585);
                  }

                  ++v416;
                  v422 += v583;
                }

                while (v416 != v418);
              }

              v416 = v418;
              v415 = v417;
            }

            while (v417 != __na);
          }

          v50 = v576;
          v330 = v565 + 1;
          v9 = v561;
        }

        while (v565 + 1 < *(v10 + 104));
      }

      if (v12 == 1)
      {
        v431 = *(v10 + 100);
        if (v431 >= 1)
        {
          v432 = *(v10 + 60);
          v433 = v432 - v431;
          v434 = *(v10 + 120);
          v435 = *(v574 + 5);
          v436 = v433;
          v437 = *(v434 + 8 * v433);
          v438 = &a4[v433];
          v439 = 8 * v584;
          do
          {
            if (v585 >= 1)
            {
              v440 = *(v435 + 8 * v437);
              v441 = v438;
              v442 = v585;
              do
              {
                *v441 = v440 * *v441;
                v441 = (v441 + v439);
                --v442;
              }

              while (v442);
            }

            ++v436;
            v443 = *(v434 + 8 * v436);
            v444 = v437 + 1;
            if (v444 < v443)
            {
              v446 = *(v10 + 128);
              v445 = *(v10 + 136);
              do
              {
                if (v585 >= 1)
                {
                  v447 = 0;
                  v448 = -*(v435 + 8 * v444);
                  v449 = &a4[*(v445 + 4 * *(v446 + 4 * v444))];
                  v450 = v585;
                  do
                  {
                    *(v449 + v447) = *(v449 + v447) + v448 * *(v438 + v447);
                    v447 += v439;
                    --v450;
                  }

                  while (v450);
                }

                ++v444;
              }

              while (v444 != v443);
            }

            ++v438;
            v437 = v443;
          }

          while (v436 < v432);
        }
      }

      else
      {
        v451 = *(v10 + 100);
        if (v451 >= 1)
        {
          v452 = *(v10 + 96);
          v453 = *(v10 + 60) - v451;
          v454 = *(*(v10 + 120) + 8 * v453);
          v455 = 8 * v552;
          do
          {
            LODWORD(v588) = 0;
            dgetrs_NEWLAPACK();
            if (v588)
            {
              goto LABEL_503;
            }

            v456 = v453 + 1;
            v457 = *(*(v10 + 120) + 8 * (v453 + 1));
            v458 = v454 + 1;
            if (v454 + 1 < v457)
            {
              v459 = *(v10 + 128);
              v460 = *(v10 + 136);
              v461 = v587 * v453;
              v462 = *(v574 + 5) + v455 * v458;
              do
              {
                if (v585 >= 1)
                {
                  v463 = 0;
                  v464 = *(v460 + 4 * *(v459 + 4 * v458)) * v587;
                  do
                  {
                    if (v587 >= 1)
                    {
                      v465 = 0;
                      v466 = v462;
                      do
                      {
                        v467 = v466;
                        v468 = v464;
                        v469 = v587;
                        do
                        {
                          v470 = *v467++;
                          a4[v468] = a4[v468] - v470 * a4[v461 + v463 * v584 + v465];
                          ++v468;
                          --v469;
                        }

                        while (v469);
                        ++v465;
                        v466 += v587;
                      }

                      while (v465 != v587);
                    }

                    ++v463;
                    v464 += v584;
                  }

                  while (v463 != v585);
                }

                ++v458;
                v462 += v455;
              }

              while (v458 != v457);
            }

            ++v452;
            v454 = v457;
            v453 = v456;
          }

          while (v456 < *(v10 + 60));
        }
      }

      v471 = *(v574 + 13);
      if (v471)
      {
        if (v585 >= 1)
        {
          v472 = 0;
          for (j = 0; j != v585; ++j)
          {
            if (v48 >= 1)
            {
              v474 = 0;
              v475 = *(v10 + 144);
              v476 = *(v551 + 16);
              v477 = *(v551 + 8);
              do
              {
                v478 = v474 + *(v475 + 4 * (v474 / v587)) * v587 - v474 / v587 * v587;
                v479 = a4[v478 + v472] * *(v471 + 8 * v478);
                if (*(v551 + 12))
                {
                  v480 = v474;
                }

                else
                {
                  v480 = j;
                }

                if (*(v551 + 12))
                {
                  v481 = j;
                }

                else
                {
                  v481 = v474;
                }

                *(v476 + 8 * (v481 + v480 * v477)) = v479;
                ++v474;
              }

              while (v48 != v474);
            }

            v472 += v584;
          }
        }
      }

      else if (v585 >= 1)
      {
        v541 = 0;
        for (k = 0; k != v585; ++k)
        {
          if (v48 >= 1)
          {
            v543 = 0;
            v544 = *(v10 + 144);
            v545 = *(v551 + 16);
            v546 = *(v551 + 8);
            do
            {
              if (*(v551 + 12))
              {
                v547 = v543;
              }

              else
              {
                v547 = k;
              }

              if (*(v551 + 12))
              {
                v548 = k;
              }

              else
              {
                v548 = v543;
              }

              *(v545 + 8 * (v548 + v547 * v546)) = a4[v541 + v543 + *(v544 + 4 * (v543 / v587)) * v587 - v543 / v587 * v587];
              ++v543;
            }

            while (v48 != v543);
          }

          v541 += v584;
        }
      }
    }
  }
}

int *sub_23678D570(int *result, uint64_t a2, int *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (*(a4 + 12))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if (*(a4 + 12))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = *(a4 + v5);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(a4 + v6);
      while (v9 < 1)
      {
LABEL_30:
        if (++v8 == v7)
        {
          return result;
        }
      }

      v10 = 0;
      while (a2)
      {
        v11 = *(v4 + 2);
        if (*(a2 + v10) != 1)
        {
          goto LABEL_23;
        }

        v12 = v4[2];
        v13 = v8 + v12 * v10;
        v14 = v10 + v8 * v12;
        if (v4[3])
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        v16 = *(v11 + 8 * v15);
        v17 = *(a4 + 16);
        v18 = *(a4 + 8);
        if (*(a4 + 12))
        {
          goto LABEL_27;
        }

        v19 = v10 + v18 * v8;
LABEL_29:
        *(v17 + 8 * v19) = v16;
        if (v9 == ++v10)
        {
          goto LABEL_30;
        }
      }

      v11 = *(v4 + 2);
LABEL_23:
      v20 = v4[2];
      v21 = v8 + v20 * v10;
      v22 = v10 + v8 * v20;
      if (v4[3])
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v16 = *&result[2 * v10] * *(v11 + 8 * v23);
      v17 = *(a4 + 16);
      v18 = *(a4 + 8);
      if ((*(a4 + 12) & 1) == 0)
      {
        v19 = v10 + v8 * v18;
        goto LABEL_29;
      }

LABEL_27:
      v19 = v8 + v18 * v10;
      goto LABEL_29;
    }
  }

  else if (a3)
  {
    return sub_2366FD390(a3, a4);
  }

  return result;
}

uint64_t sub_23678D660(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  if (*(a2 + 64) >= 1)
  {
    v8 = 0;
    v9 = *(a4 + v5);
    v55 = result;
    v56 = result - 3;
    do
    {
      v10 = v8;
      if (result == 4)
      {
        v11 = atomic_load((a3[6] + 4 * v8));
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 120);
      ++v8;
      v13 = *(v12 + 8 * (v10 + 1));
      v14 = *(v12 + 8 * v10);
      v15 = *(*(a2 + 88) + 4 * (v10 + 1)) - *(*(a2 + 88) + 4 * v10) + v11;
      v16 = v15;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v10);
      }

      v17 = 2 * v15;
      if (v56 >= 2)
      {
        v17 = 0;
      }

      v61 = v17;
      if (v16)
      {
        v18 = v11 + v13 - v14;
        v58 = v18;
        v59 = v10 + 1;
        v57 = *(a3[5] + 8 * v10);
        v54 = v18;
        if (v9 <= 0)
        {
          cblas_dtrsm_NEWLAPACK();
          v8 = v10 + 1;
          result = v55;
        }

        else
        {
          v19 = 0;
          v20 = 8 * v16;
          v53 = 8 * v15 * v18;
          v21 = *(a3[5] + 8 * v10) + v53 + 8 * v17 + 8;
          v22 = a5;
          do
          {
            if (v16 >= 1)
            {
              v23 = *(a4 + 16);
              v24 = v16;
              v25 = v21;
              v26 = v22;
              do
              {
                if (*(a4 + 12))
                {
                  v27 = v19 + *(a4 + 8) * *v25;
                }

                else
                {
                  v27 = *v25 + *(a4 + 8) * v19;
                }

                *v26++ = *(v23 + 8 * v27);
                ++v25;
                --v24;
              }

              while (v24);
            }

            ++v19;
            v22 = (v22 + v20);
          }

          while (v19 != v9);
          cblas_dtrsm_NEWLAPACK();
          v28 = 0;
          v29 = a5;
          result = v55;
          v8 = v10 + 1;
          do
          {
            if (v16 >= 1)
            {
              v30 = *(a4 + 16);
              v31 = v16;
              v32 = (v57 + v53 + 8 * v61 + 8);
              v33 = v29;
              do
              {
                if (*(a4 + 12))
                {
                  v34 = v28 + *(a4 + 8) * *v32;
                }

                else
                {
                  v34 = *v32 + *(a4 + 8) * v28;
                }

                v35 = *v33++;
                *(v30 + 8 * v34) = v35;
                ++v32;
                --v31;
              }

              while (v31);
            }

            ++v28;
            v29 = (v29 + v20);
          }

          while (v28 != v9);
        }

        v36 = v58 - v16;
        if (v58 > v16)
        {
          cblas_dgemm_NEWLAPACK();
          v8 = v10 + 1;
          result = v55;
          if (v9 >= 1)
          {
            v37 = 0;
            v38 = 0;
            v39 = *(a2 + 120);
            v40 = *(v39 + 8 * v10) - *(*(a2 + 88) + 4 * v10) + *(*(a2 + 88) + 4 * v59);
            v41 = v15 - v16;
            v42 = *(v39 + 8 * v59);
            do
            {
              if (v15 > v16)
              {
                v43 = *(a4 + 16);
                v44 = v37;
                v45 = (v57 + 8 * v15 * v54 + 8 * v61 + 4 * v16 + 8);
                v46 = v16;
                do
                {
                  if (*(a4 + 12))
                  {
                    v47 = v38 + *(a4 + 8) * *v45;
                  }

                  else
                  {
                    v47 = *v45 + *(a4 + 8) * v38;
                  }

                  *(v43 + 8 * v47) = *&a5[v16 * v9 + v44] + *(v43 + 8 * v47);
                  ++v46;
                  ++v45;
                  ++v44;
                }

                while (v46 < v15);
              }

              if (v40 < v42)
              {
                v48 = &a5[v16 * v9 + v41];
                v49 = *(a4 + 16);
                v50 = v40;
                do
                {
                  if (*(a4 + 12))
                  {
                    v51 = v38 + *(a4 + 8) * *(*(a2 + 128) + 4 * v50);
                  }

                  else
                  {
                    v51 = *(*(a2 + 128) + 4 * v50) + *(a4 + 8) * v38;
                  }

                  v52 = *v48++;
                  *(v49 + 8 * v51) = v52 + *(v49 + 8 * v51);
                  ++v50;
                }

                while (v50 < v42);
              }

              ++v38;
              v37 += v36;
              v41 += v36;
            }

            while (v38 != v9);
          }
        }
      }
    }

    while (v8 < *(a2 + 64));
  }

  return result;
}

int *sub_23678DAD0(int *result, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v6 = 4;
  if (*(a5 + 12))
  {
    v6 = 0;
  }

  v7 = *(a5 + v6);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a5;
  }

  if ((result - 3) >= 2)
  {
    if (result)
    {
      v26 = *(a2 + 64);
      if (v26 >= 1)
      {
        result = 0;
        v27 = *(a2 + 120);
        v28 = *(a2 + 88);
        v29 = a3[5];
        v30 = *v27;
        v31 = *v28;
        do
        {
          v32 = (result + 1);
          v33 = v27[result + 1];
          v34 = v28[result + 1];
          if (v7 >= 1)
          {
            v35 = 0;
            LODWORD(v36) = v34 - v31;
            v37 = *(v29 + 8 * result) + 8;
            v38 = v33 - v30;
            v39 = v36;
            v40 = (v37 + 8 * v38 * v36);
            if (v36 <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = v36;
            }

            v41 = 8 * v38 + 8;
            do
            {
              if (v39 >= 1)
              {
                v42 = *(v8 + 2);
                v43 = *(a5 + 16);
                v44 = v37;
                v45 = v36;
                v46 = v40;
                v47 = *(a5 + 8);
                do
                {
                  v48 = *v46;
                  if (v8[3])
                  {
                    v49 = v35 + v8[2] * *v46;
                  }

                  else
                  {
                    v49 = *v46 + v8[2] * v35;
                  }

                  v50 = *(v42 + 8 * v49);
                  if (*(a5 + 12))
                  {
                    v51 = *v46;
                  }

                  else
                  {
                    v51 = v35;
                  }

                  if (*(a5 + 12))
                  {
                    v48 = v35;
                  }

                  *(v43 + 8 * (v48 + v47 * v51)) = v50 / *v44;
                  ++v46;
                  v44 = (v44 + v41);
                  --v45;
                }

                while (v45);
              }

              ++v35;
            }

            while (v35 != v7);
          }

          v31 = v34;
          LODWORD(v30) = v33;
          result = v32;
        }

        while (v32 != v26);
      }
    }

    else if (a4)
    {

      return sub_2366FD390(a4, a5);
    }
  }

  else if (*(a2 + 64) >= 1)
  {
    v9 = 0;
    do
    {
      if (result == 4)
      {
        v10 = atomic_load((a3[6] + 4 * v9));
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a2 + 120);
      v12 = v9 + 1;
      v13 = *(v11 + 8 * (v9 + 1));
      v14 = *(v11 + 8 * v9);
      v15 = *(*(a2 + 88) + 4 * (v9 + 1)) - *(*(a2 + 88) + 4 * v9) + v10;
      v16 = v15;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v9);
      }

      if (v7 >= 1)
      {
        v17 = 0;
        v18 = *(a3[5] + 8 * v9) + 8 * (v10 + v13 - v14) * v15 + 8;
        v19 = v18 + 16 * v15;
        do
        {
          if (v16 >= 1)
          {
            v20 = 0;
            do
            {
              v21 = v20 + 1;
              v22 = *(v19 + 4 * v20);
              if (v8[3])
              {
                v23 = *(v19 + 4 * v20);
              }

              else
              {
                v23 = v17;
              }

              if (v8[3])
              {
                v24 = v17;
              }

              else
              {
                v24 = *(v19 + 4 * v20);
              }

              if (*(a5 + 12))
              {
                v25 = *(v19 + 4 * v20);
              }

              else
              {
                v25 = v17;
              }

              if (*(a5 + 12))
              {
                v22 = v17;
              }

              *(*(a5 + 16) + 8 * (v22 + *(a5 + 8) * v25)) = *(*(v8 + 2) + 8 * (v24 + v8[2] * v23)) / *(v18 + 16 * v20++);
            }

            while (v21 < v16);
          }

          ++v17;
        }

        while (v17 != v7);
      }

      v9 = v12;
    }

    while (v12 < *(a2 + 64));
  }

  return result;
}

uint64_t sub_23678DE2C(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  v6 = *(a2 + 64);
  if (v6 >= 1)
  {
    v10 = *(a4 + v5);
    v47 = result - 3;
    v44 = result;
    do
    {
      v11 = v6--;
      if (result == 4)
      {
        v12 = atomic_load((a3[6] + 4 * v6));
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 120);
      v14 = *(v13 + 8 * v11);
      v15 = *(v13 + 8 * v6);
      v16 = *(*(a2 + 88) + 4 * v11) - *(*(a2 + 88) + 4 * v6);
      v17 = (v16 + v12);
      v18 = v16 + v12;
      if (result == 4)
      {
        v18 = *(a3[7] + 4 * v6);
      }

      if (v47 >= 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = 2 * v17;
      }

      if (v18)
      {
        v20 = v12 + v14 - v15;
        v21 = *(a3[5] + 8 * v6);
        v22 = 8 * v20;
        if (v10 >= 1)
        {
          v23 = 0;
          v24 = v15 + v16;
          v25 = 8 * v12 + 8 * v16;
          v26 = a5;
          do
          {
            if (v17 >= 1)
            {
              v27 = *(a4 + 16);
              v28 = v17;
              v29 = (v21 + 8 * v17 * v20 + 8 * v19 + 8);
              v30 = v26;
              do
              {
                if (*(a4 + 12))
                {
                  v31 = v23 + *(a4 + 8) * *v29;
                }

                else
                {
                  v31 = *v29 + *(a4 + 8) * v23;
                }

                *v30++ = *(v27 + 8 * v31);
                ++v29;
                --v28;
              }

              while (v28);
            }

            if (v24 < v14)
            {
              v32 = *(a4 + 16);
              v33 = v25;
              v34 = v24;
              do
              {
                if (*(a4 + 12))
                {
                  v35 = v23 + *(a4 + 8) * *(*(a2 + 128) + 4 * v34);
                }

                else
                {
                  v35 = *(*(a2 + 128) + 4 * v34) + *(a4 + 8) * v23;
                }

                *(v26 + v33) = *(v32 + 8 * v35);
                ++v34;
                v33 += 8;
              }

              while (v34 < v14);
            }

            ++v23;
            v26 = (v26 + v22);
          }

          while (v23 != v10);
        }

        v45 = v17;
        v48 = v19;
        v46 = v21;
        if (v20 > v18)
        {
          cblas_dgemm_NEWLAPACK();
        }

        cblas_dtrsm_NEWLAPACK();
        result = v44;
        if (v10 >= 1)
        {
          v36 = 0;
          v37 = a5;
          do
          {
            if (v18 >= 1)
            {
              v38 = *(a4 + 16);
              v39 = v18;
              v40 = (v46 + 8 * v45 * v20 + 8 * v48 + 8);
              v41 = v37;
              do
              {
                if (*(a4 + 12))
                {
                  v42 = v36 + *(a4 + 8) * *v40;
                }

                else
                {
                  v42 = *v40 + *(a4 + 8) * v36;
                }

                v43 = *v41++;
                *(v38 + 8 * v42) = v43;
                ++v40;
                --v39;
              }

              while (v39);
            }

            ++v36;
            v37 = (v37 + v22);
          }

          while (v36 != v10);
        }
      }
    }

    while (v11 > 1);
  }

  return result;
}

_DWORD *sub_23678E160(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7)
{
  v13 = 4;
  if (*(a4 + 12))
  {
    v13 = 0;
  }

  v14 = *(a4 + v13);
  result = sub_23678B078(a1, a2, &v84, &v83);
  v82 = a6;
  v16 = (&a6[v14 * a1] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 > a7 || (v17 = v16 + 8 * v14 * *(a2 + 192), v17 > a7) || (v18 = v17 + 8 * *(a2 + 88), v18 > a7) || (v87 = -1, v88 = 1, v85 = 10000, v86 = 8, result = ilaenv_NEWLAPACK(), ((v18 + 8 * result * v14) & 0xFFFFFFFFFFFFFFF8) > a7))
  {
    __break(1u);
  }

  else
  {
    v19 = *(a2 + 88);
    if (v19 >= 1)
    {
      v20 = 0;
      do
      {
        v21 = *(a2 + 120);
        v22 = (v21 + 8 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(a2 + 104);
        v26 = v20 + 1;
        v27 = v24 - *v22;
        v28 = *(v25 + 8 * (v20 + 1)) - *(v25 + 8 * v20);
        if (v27)
        {
          v29 = *(v25 + 8 * (v20 + 1)) == *(v25 + 8 * v20);
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = *(a2 + 96);
          v80 = *(v30 + 4 * v26);
          v81 = *(v30 + 4 * v20);
          v79 = *(a2 + 64);
          v31 = 8 * v27;
          if (v24 > v23)
          {
            v32 = 0;
            v34 = *(a2 + 128);
            v33 = *(a2 + 136);
            v35 = v82;
            do
            {
              v36 = *(v34 + 8 * v23);
              v37 = v36 / v33;
              v38 = v36 % v33;
              if (v37 <= 0)
              {
                if (v14 >= 1)
                {
                  v47 = *(a4 + 16);
                  v48 = *(a4 + 8);
                  v49 = v48 * v38;
                  v50 = v14;
                  v51 = v35;
                  do
                  {
                    if (*(a4 + 12))
                    {
                      v52 = v49;
                    }

                    else
                    {
                      v52 = v38;
                    }

                    *v51 = *(v47 + 8 * v52);
                    LODWORD(v38) = v38 + v48;
                    ++v49;
                    v51 = (v51 + v31);
                    --v50;
                  }

                  while (v50);
                }
              }

              else
              {
                v39 = v37 - 1;
                v40 = 8 * (v37 - 1);
                v41 = v37 & 0x7FFFFFFF;
                v42 = *(v25 + 8 * v41) - *(v25 + v40);
                if (v42 >= *(v21 + 8 * v39 + 8) - *(v21 + 8 * v39))
                {
                  v42 = *(v21 + 8 * v39 + 8) - *(v21 + 8 * v39);
                }

                if (v14 >= 1)
                {
                  v43 = (*(v17 + 8 * v39) + 8 * v38);
                  v44 = 8 * (*(v30 + 4 * v39) - *(v30 + 4 * v41) + v42);
                  v45 = v14;
                  v46 = v35;
                  do
                  {
                    *v46 = *v43;
                    v46 = (v46 + v31);
                    v43 = (v43 + v44);
                    --v45;
                  }

                  while (v45);
                }
              }

              ++v23;
              ++v32;
              ++v35;
            }

            while (v32 != v27);
          }

          v53 = *(a2 + 152);
          v54 = *(v53 + 4 * v20);
          if (v54 < *(v53 + 4 * v26))
          {
            do
            {
              v55 = *(*(a2 + 160) + 4 * v54);
              v56 = *(*(a2 + 120) + 8 * v55 + 8) - *(*(a2 + 120) + 8 * v55);
              v57 = *(*(a2 + 96) + 4 * (v55 + 1)) - *(*(a2 + 96) + 4 * v55);
              if (v56 >= (*(*(a2 + 104) + 8 * (v55 + 1)) - *(*(a2 + 104) + 8 * v55)))
              {
                v56 = *(*(a2 + 104) + 8 * (v55 + 1)) - *(*(a2 + 104) + 8 * v55);
              }

              *(v17 + 8 * v55) = 0;
              v16 += 8 * (v57 - v56) * v14;
              ++v54;
            }

            while (v54 < *(*(a2 + 152) + 4 * v26));
          }

          v87 = v14;
          v88 = v27;
          if (v27 >= v28)
          {
            v58 = v28;
          }

          else
          {
            v58 = v27;
          }

          v85 = v28;
          v86 = v58;
          result = dormlq_NEWLAPACK();
          v59 = v80 - v81;
          if (v14 <= 0)
          {
            LODWORD(v71) = v58 - v59;
            *(v17 + 8 * v20) = v16;
          }

          else
          {
            v60 = 0;
            v61 = *(a2 + 96);
            v62 = *(v61 + 4 * v20);
            v63 = *(v61 + 4 * v26);
            v64 = v82;
            do
            {
              if (v63 > v62)
              {
                v65 = *(a5 + 16);
                v66 = (v63 - v62);
                v67 = v64;
                result = (v79 + 4 * v81);
                do
                {
                  if (*(a5 + 12))
                  {
                    v68 = v60 + *(a5 + 8) * *result;
                  }

                  else
                  {
                    v68 = *result + *(a5 + 8) * v60;
                  }

                  v69 = *v67++;
                  *(v65 + 8 * v68) = v69;
                  ++result;
                  --v66;
                }

                while (v66);
              }

              ++v60;
              v64 = (v64 + v31);
            }

            while (v60 != v14);
            v70 = 0;
            v71 = (v58 - v59);
            *(v17 + 8 * v20) = v16;
            v72 = &v82[v59];
            v73 = v16;
            do
            {
              v74 = -v71;
              v75 = v73;
              v76 = v72;
              if (v58 > v59)
              {
                do
                {
                  v77 = *v76++;
                  *v75++ = v77;
                }

                while (!__CFADD__(v74++, 1));
              }

              ++v70;
              v72 = (v72 + v31);
              v73 += v71;
            }

            while (v70 != v14);
          }

          v16 += 8 * v71 * v14;
          v19 = *(a2 + 88);
        }

        ++v20;
      }

      while (v26 < v19);
    }
  }

  return result;
}

void sub_23678E600(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(a1 + 88);
  if (v5 >= 1)
  {
    v8 = *(a3 + v4);
    do
    {
      v10 = *(a1 + 96);
      v9 = *(a1 + 104);
      v11 = *(v9 + 8 * v5);
      v12 = *(v9 + 8 * (v5 - 1));
      v13 = *(v10 + 4 * v5);
      v14 = *(v10 + 4 * (v5 - 1));
      v32 = *(a1 + 64);
      v15 = v11 - v12;
      if (v8 >= 1)
      {
        v16 = 0;
        v17 = a4;
        do
        {
          if (v11 > v12)
          {
            v18 = *(a3 + 16);
            v19 = v17;
            v20 = v12;
            do
            {
              if (*(a3 + 12))
              {
                v21 = v16 + *(a3 + 8) * *(*(a1 + 112) + 4 * v20);
              }

              else
              {
                v21 = *(*(a1 + 112) + 4 * v20) + *(a3 + 8) * v16;
              }

              *v19++ = *(v18 + 8 * v21);
              ++v20;
            }

            while (v11 != v20);
          }

          ++v16;
          v17 += v15;
        }

        while (v16 != v8);
      }

      v22 = (v13 - v14);
      if (v11 - v12 > v22)
      {
        cblas_dgemm_NEWLAPACK();
      }

      cblas_dtrsm_NEWLAPACK();
      if (v8 >= 1)
      {
        v23 = 0;
        v24 = a4;
        do
        {
          if (v22 >= 1)
          {
            v25 = *(a3 + 16);
            v26 = v22;
            v27 = (v32 + 4 * v14);
            v28 = v24;
            do
            {
              if (*(a3 + 12))
              {
                v29 = v23 + *(a3 + 8) * *v27;
              }

              else
              {
                v29 = *v27 + *(a3 + 8) * v23;
              }

              v30 = *v28++;
              *(v25 + 8 * v29) = v30;
              ++v27;
              --v26;
            }

            while (v26);
          }

          ++v23;
          v24 += v15;
        }

        while (v23 != v8);
      }
    }

    while (v5-- > 1);
  }
}

void sub_23678E828(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  if (*(a1 + 88) >= 1)
  {
    v7 = 0;
    v8 = *(a3 + v4);
    do
    {
      v9 = v7 + 1;
      v10 = *(a1 + 96);
      v11 = *(v10 + 4 * (v7 + 1));
      v12 = *(v10 + 4 * v7);
      v13 = *(*(a1 + 104) + 8 * (v7 + 1)) - *(*(a1 + 104) + 8 * v7);
      v14 = (v11 - v12);
      if (v8 <= 0)
      {
        cblas_dtrsm_NEWLAPACK();
      }

      else
      {
        v15 = 0;
        v16 = *(a1 + 64) + 4 * v12;
        v17 = 8 * (v11 - v12);
        v18 = a4;
        do
        {
          if (v14 >= 1)
          {
            v19 = *(a3 + 16);
            v20 = v14;
            v21 = v16;
            v22 = v18;
            do
            {
              if (*(a3 + 12))
              {
                v23 = v15 + *(a3 + 8) * *v21;
              }

              else
              {
                v23 = *v21 + *(a3 + 8) * v15;
              }

              *v22++ = *(v19 + 8 * v23);
              ++v21;
              --v20;
            }

            while (v20);
          }

          ++v15;
          v18 = (v18 + v17);
        }

        while (v15 != v8);
        cblas_dtrsm_NEWLAPACK();
        v24 = 0;
        v25 = a4;
        do
        {
          if (v14 >= 1)
          {
            v26 = *(a3 + 16);
            v27 = v14;
            v28 = v16;
            v29 = v25;
            do
            {
              if (*(a3 + 12))
              {
                v30 = v24 + *(a3 + 8) * *v28;
              }

              else
              {
                v30 = *v28 + *(a3 + 8) * v24;
              }

              v31 = *v29++;
              *(v26 + 8 * v30) = v31;
              ++v28;
              --v27;
            }

            while (v27);
          }

          ++v24;
          v25 = (v25 + v17);
        }

        while (v24 != v8);
      }

      if (v13 > v14)
      {
        v32 = &a4[v14 * v8];
        cblas_dgemm_NEWLAPACK();
        if (v8 >= 1)
        {
          v33 = 0;
          v34 = (*(a1 + 104) + 8 * v7);
          v36 = *v34;
          v35 = v34[1];
          v37 = v36 + v14;
          do
          {
            if (v37 < v35)
            {
              v38 = *(a3 + 16);
              v39 = v32;
              v40 = v37;
              do
              {
                if (*(a3 + 12))
                {
                  v41 = v33 + *(a3 + 8) * *(*(a1 + 112) + 4 * v40);
                }

                else
                {
                  v41 = *(*(a1 + 112) + 4 * v40) + *(a3 + 8) * v33;
                }

                v42 = *v39++;
                *(v38 + 8 * v41) = v42 + *(v38 + 8 * v41);
                ++v40;
              }

              while (v40 < v35);
            }

            ++v33;
            v32 = (v32 + 8 * v13 - 8 * v14);
          }

          while (v33 != v8);
        }
      }

      ++v7;
    }

    while (v9 < *(a1 + 88));
  }
}

void sub_23678EB18(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, void *a6)
{
  v9 = 4;
  if (*(a4 + 12))
  {
    v9 = 0;
  }

  v10 = *(a4 + v9);
  ilaenv_NEWLAPACK();
  if (a5[1] >= 1)
  {
    v11 = 0;
    do
    {
      bzero((*(a5 + 2) + 8 * a5[2] * v11++), 8 * *a5);
    }

    while (v11 < a5[1]);
  }

  v12 = *(a2 + 88);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 96);
    LODWORD(v15) = *v14;
    do
    {
      v16 = v13++;
      v17 = v14[v13];
      v18 = (v17 - v15);
      if (v17 > v15)
      {
        v19 = 0;
        v20 = *(a2 + 120);
        v21 = *(v20 + 8 * v16);
        v22 = *(v20 + 8 * v13);
        v15 = v15;
        if (v21 > v22)
        {
          v22 = v21;
        }

        v23 = v22 - v21;
        do
        {
          if (v19 == v23)
          {
            break;
          }

          v24 = *(a2 + 128);
          v25 = *(a2 + 136);
            ;
          }

          if (v10 >= 1)
          {
            v27 = 0;
            v28 = *(a4 + 16);
            v29 = *(a5 + 2);
            v30 = a5[2];
            do
            {
              if (*(a4 + 12))
              {
                v31 = v27 + *(a4 + 8) * *(*(a2 + 64) + 4 * v15);
              }

              else
              {
                v31 = *(*(a2 + 64) + 4 * v15) + *(a4 + 8) * v27;
              }

              v32 = *(v28 + 8 * v31);
              if (a5[3])
              {
                v33 = i;
              }

              else
              {
                v33 = v27;
              }

              if (a5[3])
              {
                v34 = v27;
              }

              else
              {
                v34 = i;
              }

              *(v29 + 8 * (v34 + v30 * v33)) = v32;
              ++v27;
            }

            while (v10 != v27);
          }

          ++v15;
          ++v19;
        }

        while (v19 != v18);
      }

      LODWORD(v15) = v17;
    }

    while (v13 != v12);
    v35 = *(a2 + 120);
    do
    {
      v36 = (v35 + 8 * (v12 - 1));
      v37 = *v36;
      v38 = v36[1];
      v39 = v38 - *v36;
      if (v39)
      {
        v40 = *(*(a2 + 104) + 8 * v12) == *(*(a2 + 104) + 8 * (v12 - 1));
      }

      else
      {
        v40 = 1;
      }

      if (!v40)
      {
        v41 = v39;
        if (v38 > v37)
        {
          v42 = 0;
          v43 = *(a2 + 96);
          v44 = a6;
          v45 = *(a2 + 128);
          v46 = *(a2 + 136);
          do
          {
              ;
            }

            if (v10 >= 1)
            {
              v48 = 0;
              v49 = *(a5 + 2);
              v50 = a5[2];
              v51 = j * v50;
              v52 = v10;
              v53 = v44;
              do
              {
                if (a5[3])
                {
                  v54 = v51;
                }

                else
                {
                  v54 = j + v48;
                }

                *v53 = *(v49 + 8 * v54);
                v48 += v50;
                ++v51;
                v53 += v39;
                --v52;
              }

              while (v52);
            }

            ++v37;
            ++v42;
            ++v44;
          }

          while (v42 != v39);
        }

        dormlq_NEWLAPACK();
        v35 = *(a2 + 120);
        v55 = *(v35 + 8 * (v12 - 1));
        v56 = *(v35 + 8 * v12);
        v57 = v56 <= v55;
        v58 = v56 - v55;
        if (!v57)
        {
          v59 = 0;
          v60 = *(a2 + 128);
          v61 = *(a2 + 136);
          v62 = a6;
          do
          {
              ;
            }

            if (v10 >= 1)
            {
              v64 = 0;
              v65 = *(a5 + 2);
              v66 = a5[2];
              v67 = k * v66;
              v68 = v10;
              v69 = v62;
              do
              {
                if (a5[3])
                {
                  v70 = v67;
                }

                else
                {
                  v70 = k + v64;
                }

                *(v65 + 8 * v70) = *v69;
                v64 += v66;
                ++v67;
                v69 += v41;
                --v68;
              }

              while (v68);
            }

            ++v55;
            ++v59;
            ++v62;
          }

          while (v59 != v58);
        }
      }

      v57 = v12-- <= 1;
    }

    while (!v57);
  }
}

void _SparseSolveOpaque_Double(const SparseOpaqueFactorization_Double *Factored, const DenseMatrix_Double *RHS, const DenseMatrix_Double *Soln, void *workspace)
{
  v4 = 4;
  if (*&Soln->attributes)
  {
    v4 = 0;
  }

  sub_23678B11C(Factored, &RHS->rowCount, Soln, workspace, Factored->solveWorkspaceRequiredPerRHS + *&Factored[1].status * *(&Soln->rowCount + v4));
}

void sub_23678EFD4(__int16 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v258 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 33);
  v12 = *(a3 + 12);
  v13 = 4;
  if (v12)
  {
    v13 = 0;
  }

  if (v11 > 0x29)
  {
    goto LABEL_19;
  }

  v14 = *(a3 + v13);
  if (((1 << v11) & 0x1D) != 0)
  {
    v15 = *(a1 + 5);
    if (*(a1 + 4) <= 2u)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v16 = *(*(a1 + 11) + 64);
          v17 = *(v15 + 136);
          goto LABEL_109;
        }

LABEL_250:
        __break(1u);
        return;
      }

      LODWORD(v23) = *(v15 + 60);
      v25 = *(v15 + 80);
      goto LABEL_60;
    }

    v254 = *(a1 + 11);
    if (v10 == 3)
    {
      v56 = 4;
      if ((v12 & 1) == 0)
      {
        v56 = 0;
      }

      v57 = *(a3 + v56);
      *&v257[0] = __PAIR64__(v14, v57);
      *(&v257[0] + 1) = v57;
      *&v257[1] = a4;
      v255 = (a4 + 8 * *(a3 + 4) * *a3);
      sub_23679019C(0, *(v15 + 60), *(v15 + 80), a2, a3, a4);
      v251 = v11;
      if (v9)
      {
        v58 = *(v15 + 64);
        v59 = v254;
        if (v58 >= 1)
        {
          v247 = v11 - 3;
          do
          {
            v60 = v58--;
            if (v11 == 4)
            {
              v61 = atomic_load((v59[6] + 4 * v58));
            }

            else
            {
              v61 = 0;
            }

            v62 = *(v15 + 120);
            v63 = *(v62 + 8 * v60);
            v64 = *(v62 + 8 * v58);
            v65 = *(*(v15 + 88) + 4 * v60) - *(*(v15 + 88) + 4 * v58);
            v66 = (v65 + v61);
            v67 = v65 + v61;
            if (v11 == 4)
            {
              v67 = *(v59[7] + 4 * v58);
            }

            if (v247 >= 2)
            {
              v68 = 0;
            }

            else
            {
              v68 = 2 * v66;
            }

            if (v67)
            {
              v69 = v61 + v63 - v64;
              v70 = *(v59[5] + 8 * v58);
              v71 = 8 * v69;
              if (v14 >= 1)
              {
                v72 = 0;
                v73 = v64 + v65;
                v74 = 8 * v61 + 8 * v65;
                v75 = v255;
                do
                {
                  if (v66 >= 1)
                  {
                    v76 = *(a3 + 16);
                    v77 = v75;
                    v78 = v66;
                    v79 = (v70 + 8 * v66 * v69 + 8 * v68 + 8);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v80 = v72 + *(a3 + 8) * *v79;
                      }

                      else
                      {
                        v80 = *v79 + *(a3 + 8) * v72;
                      }

                      *v77++ = *(v76 + 8 * v80);
                      ++v79;
                      --v78;
                    }

                    while (v78);
                  }

                  if (v73 < v63)
                  {
                    v81 = *(a3 + 16);
                    v82 = v74;
                    v83 = v73;
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v84 = v72 + *(a3 + 8) * *(*(v15 + 128) + 4 * v83);
                      }

                      else
                      {
                        v84 = *(*(v15 + 128) + 4 * v83) + *(a3 + 8) * v72;
                      }

                      *(v75 + v82) = *(v81 + 8 * v84);
                      ++v83;
                      v82 += 8;
                    }

                    while (v83 < v63);
                  }

                  ++v72;
                  v75 = (v75 + v71);
                }

                while (v72 != v14);
              }

              v240 = v66;
              v241 = v69;
              v243 = v70;
              cblas_dtrmm_NEWLAPACK();
              if (v69 > v67)
              {
                cblas_dgemm_NEWLAPACK();
              }

              v11 = v251;
              v59 = v254;
              if (v14 >= 1)
              {
                v85 = 0;
                v86 = *&v257[1];
                v87 = v255;
                do
                {
                  if (v67 >= 1)
                  {
                    v88 = DWORD2(v257[0]);
                    v89 = BYTE12(v257[0]);
                    v90 = DWORD2(v257[0]) * v85;
                    v91 = v87;
                    v92 = v67;
                    v93 = (v243 + 8 * v240 * v241 + 8 * v68 + 8);
                    do
                    {
                      v94 = *v91++;
                      v95 = v94;
                      LODWORD(v94) = *v93++;
                      v96 = v85 + v88 * v94;
                      v97 = v90 + v94;
                      if (v89)
                      {
                        v97 = v96;
                      }

                      *(v86 + 8 * v97) = v95;
                      --v92;
                    }

                    while (v92);
                  }

                  ++v85;
                  v87 = (v87 + v71);
                }

                while (v85 != v14);
              }
            }
          }

          while (v60 > 1);
        }
      }

      else
      {
        if (v14 >= 1)
        {
          for (i = 0; i < v14; ++i)
          {
            if (v57 >= 1)
            {
              v143 = v57;
              do
              {
                bzero((a4 + 8 * i * v57), 8 * v57);
                --v143;
              }

              while (v143);
            }
          }
        }

        v144 = v11;
        v145 = v254;
        if (*(v15 + 64) >= 1)
        {
          v146 = 0;
          v246 = v11 - 3;
          do
          {
            v147 = v146;
            if (v144 == 4)
            {
              v148 = atomic_load((v145[6] + 4 * v146));
            }

            else
            {
              v148 = 0;
            }

            v149 = *(v15 + 120);
            ++v146;
            v150 = *(v149 + 8 * (v147 + 1));
            v151 = *(v149 + 8 * v147);
            v152 = *(*(v15 + 88) + 4 * (v147 + 1)) - *(*(v15 + 88) + 4 * v147) + v148;
            v153 = *(*(v15 + 88) + 4 * (v147 + 1)) - *(*(v15 + 88) + 4 * v147) + v148;
            if (v144 == 4)
            {
              v153 = *(v145[7] + 4 * v147);
            }

            if (v246 >= 2)
            {
              v154 = 0;
            }

            else
            {
              v154 = 2 * v152;
            }

            if (v153)
            {
              v155 = v148 + v150 - v151;
              v156 = *(v145[5] + 8 * v147);
              v157 = 8 * v155;
              if (v14 >= 1)
              {
                v158 = 0;
                v159 = v255;
                do
                {
                  if (v153 >= 1)
                  {
                    v160 = *(a3 + 16);
                    v161 = v159;
                    v162 = v153;
                    v163 = (v156 + 8 * v152 * v155 + 8 * v154 + 8);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v164 = v158 + *(a3 + 8) * *v163;
                      }

                      else
                      {
                        v164 = *v163 + *(a3 + 8) * v158;
                      }

                      *v161++ = *(v160 + 8 * v164);
                      ++v163;
                      --v162;
                    }

                    while (v162);
                  }

                  ++v158;
                  v159 = (v159 + v157);
                }

                while (v158 != v14);
              }

              v248 = v154;
              v242 = v156;
              if (v155 > v153)
              {
                cblas_dgemm_NEWLAPACK();
              }

              cblas_dtrmm_NEWLAPACK();
              v144 = v251;
              v145 = v254;
              if (v14 >= 1)
              {
                v165 = 0;
                v166 = *(v15 + 120);
                v167 = *(v166 + 8 * v147) - *(*(v15 + 88) + 4 * v147) + *(*(v15 + 88) + 4 * v146);
                v168 = *(v166 + 8 * v146);
                v169 = *&v257[1];
                v170 = v255;
                do
                {
                  if (v152 >= 1)
                  {
                    v171 = DWORD2(v257[0]);
                    v172 = BYTE12(v257[0]);
                    v173 = DWORD2(v257[0]) * v165;
                    v174 = v170;
                    v175 = v152;
                    v176 = (v242 + 8 * v152 * v155 + 8 * v248 + 8);
                    do
                    {
                      v177 = *v174++;
                      v178 = v177;
                      LODWORD(v177) = *v176++;
                      v179 = v165 + v171 * LODWORD(v177);
                      v180 = v173 + LODWORD(v177);
                      if (v172)
                      {
                        v180 = v179;
                      }

                      *(v169 + 8 * v180) = v178 + *(v169 + 8 * v180);
                      --v175;
                    }

                    while (v175);
                  }

                  if (v167 < v168)
                  {
                    v181 = DWORD2(v257[0]);
                    v182 = BYTE12(v257[0]);
                    v183 = DWORD2(v257[0]) * v165;
                    v184 = *(v15 + 128);
                    v185 = v152;
                    v186 = v167;
                    do
                    {
                      v187 = *(v184 + 4 * v186);
                      v188 = v165 + v181 * v187;
                      v189 = v187 + v183;
                      if (v182)
                      {
                        v189 = v188;
                      }

                      *(v169 + 8 * v189) = v170[v185] + *(v169 + 8 * v189);
                      ++v186;
                      ++v185;
                    }

                    while (v186 < v168);
                  }

                  ++v165;
                  v170 = (v170 + v157);
                }

                while (v165 != v14);
              }
            }
          }

          while (v146 < *(v15 + 64));
        }
      }
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_250;
      }

      v30 = 4;
      if ((v12 & 1) == 0)
      {
        v30 = 0;
      }

      v31 = *(a3 + v30);
      *&v257[0] = __PAIR64__(v14, v31);
      *(&v257[0] + 1) = v31;
      *&v257[1] = a4;
      sub_23679019C(0, *(v15 + 60), *(v15 + 80), a2, a3, a4);
      if (v11 - 3 >= 2)
      {
        if (v11 != 2)
        {
          goto LABEL_250;
        }

        v190 = *(v15 + 64);
        if (v190 >= 1)
        {
          v191 = 0;
          v192 = *(v15 + 120);
          v193 = *(v15 + 88);
          v194 = v254[5];
          v195 = *v192;
          v196 = *v193;
          do
          {
            v197 = v191 + 1;
            v198 = v192[v191 + 1];
            v199 = v193[v191 + 1];
            if (v14 >= 1)
            {
              v200 = 0;
              LODWORD(v201) = v199 - v196;
              v202 = *(v194 + 8 * v191) + 8;
              v203 = v198 - v195;
              v204 = v201;
              v205 = (v202 + 8 * v203 * v201);
              if (v201 <= 1)
              {
                v201 = 1;
              }

              else
              {
                v201 = v201;
              }

              v206 = 8 * v203 + 8;
              do
              {
                if (v204 >= 1)
                {
                  v207 = *(a3 + 16);
                  v208 = v202;
                  v209 = v201;
                  v210 = v205;
                  do
                  {
                    if (*(a3 + 12))
                    {
                      v211 = v200 + *(a3 + 8) * *v210;
                    }

                    else
                    {
                      v211 = *v210 + *(a3 + 8) * v200;
                    }

                    *(a4 + 8 * (v200 * v31 + *v210++)) = *(v207 + 8 * v211) * *v208;
                    v208 = (v208 + v206);
                    --v209;
                  }

                  while (v209);
                }

                ++v200;
              }

              while (v200 != v14);
            }

            v196 = v199;
            LODWORD(v195) = v198;
            v191 = v197;
          }

          while (v197 != v190);
        }
      }

      else if (*(v15 + 64) >= 1)
      {
        v32 = 0;
        do
        {
          if (v11 == 4)
          {
            v33 = atomic_load((v254[6] + 4 * v32));
          }

          else
          {
            v33 = 0;
          }

          v34 = *(v15 + 120);
          v35 = v32 + 1;
          v36 = *(v34 + 8 * (v32 + 1));
          v37 = *(v34 + 8 * v32);
          v38 = *(*(v15 + 88) + 4 * (v32 + 1)) - *(*(v15 + 88) + 4 * v32) + v33;
          v39 = v38;
          if (v11 == 4)
          {
            v39 = *(v254[7] + 4 * v32);
          }

          if (v14 >= 1)
          {
            v40 = 0;
            v41 = *(v254[5] + 8 * v32) + 8 * v38 * (v33 + v36 - v37) + 8;
            v42 = v41 + 16 * v38;
            do
            {
              if (v39 >= 1)
              {
                v43 = 0;
                v44 = *&v257[1];
                v45 = DWORD2(v257[0]);
                do
                {
                  v46 = v43 + 1;
                  if (v43 + 1 >= v39)
                  {
                    v48 = *(a3 + 16);
                    v49 = *(a3 + 8);
                    v47 = 2 * v43;
                  }

                  else
                  {
                    v47 = 2 * v43;
                    v48 = *(a3 + 16);
                    v49 = *(a3 + 8);
                  }

                  v50 = *(v42 + 4 * v43);
                  if (*(a3 + 12))
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = v40;
                  }

                  if (*(a3 + 12))
                  {
                    v52 = v40;
                  }

                  else
                  {
                    v52 = v50;
                  }

                  v53 = *(v48 + 8 * (v52 + v51 * v49)) * *(v41 + 8 * v47);
                  if (BYTE12(v257[0]))
                  {
                    v54 = v50;
                  }

                  else
                  {
                    v54 = v40;
                  }

                  if (BYTE12(v257[0]))
                  {
                    v50 = v40;
                  }

                  *(v44 + 8 * (v50 + v54 * v45)) = v53;
                  v43 = v46;
                }

                while (v46 < v39);
              }

              ++v40;
            }

            while (v40 != v14);
          }

          v32 = v35;
        }

        while (v35 < *(v15 + 64));
      }
    }

    v103 = *(v15 + 60);
    v101 = *(v15 + 80);
    v104 = v257;
    v102 = 1;
    v105 = a3;
    v106 = 0;
LABEL_246:
    sub_23679019C(v102, v103, v101, v104, v105, v106);
    return;
  }

  if (((1 << v11) & 0x30000000000) != 0)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 5);
    v20 = *(a1 + 6);
    v21 = v19 * v18;
    v22 = v20 * v18;
    if (v20 * v18 >= v19 * v18)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v22 <= v21)
    {
      v22 = v19 * v18;
    }

    v24 = *(a1 + 5);
    v253 = *(a1 + 11);
    switch(v10)
    {
      case 7:
        v107 = 4;
        if ((v12 & 1) == 0)
        {
          v107 = 0;
        }

        v108 = *(a3 + v107);
        *&v257[0] = __PAIR64__(v14, v108);
        *(&v257[0] + 1) = v108;
        *&v257[1] = a4;
        v109 = a4 + 8 * (v108 * v14);
        if (v7)
        {
          v110 = v7;
        }

        else
        {
          v110 = a3;
        }

        v245 = v23;
        v256 = a4 + 8 * (v108 * v14);
        sub_23679019C(1, v23, *(v24 + 64), v110, v257, v109);
        v111 = 4;
        if (*(a3 + 12))
        {
          v111 = 0;
        }

        if (v9)
        {
          v112 = *(a3 + v111);
          v113 = *(a3 + 4);
          if (v113 >= 1)
          {
            v114 = 0;
            v115 = *a3;
            do
            {
              if (v115 >= 1)
              {
                v116 = 0;
                do
                {
                  bzero((*(a3 + 16) + 8 * *(a3 + 8) * v114), 8 * v115);
                  ++v116;
                  v115 = *a3;
                }

                while (v116 < *a3);
                v113 = *(a3 + 4);
              }

              ++v114;
            }

            while (v114 < v113);
          }

          if (*(v24 + 88) >= 1)
          {
            v117 = 0;
            do
            {
              v118 = v117 + 1;
              v119 = *(v24 + 96);
              v120 = *(*(v24 + 104) + 8 * (v117 + 1)) - *(*(v24 + 104) + 8 * v117);
              v121 = *(v119 + 4 * (v117 + 1));
              v122 = *(v119 + 4 * v117);
              v123 = (v121 - v122);
              if (v112 >= 1)
              {
                v124 = 0;
                v125 = *(v24 + 64) + 4 * v122;
                v126 = v256;
                do
                {
                  if (v123 >= 1)
                  {
                    v127 = v125;
                    v128 = v126;
                    v129 = v123;
                    do
                    {
                      v130 = *v127++;
                      *v128++ = *(a4 + 8 * (v130 + v108 * v124));
                      --v129;
                    }

                    while (v129);
                  }

                  ++v124;
                  v126 += v120;
                }

                while (v124 != v112);
              }

              if (v120 > v123)
              {
                cblas_dgemm_NEWLAPACK();
              }

              cblas_dtrmm_NEWLAPACK();
              if (v112 >= 1)
              {
                v131 = 0;
                v132 = (*(v24 + 104) + 8 * v117);
                v133 = *v132;
                v134 = v132[1];
                v135 = v256;
                do
                {
                  if (v133 < v134)
                  {
                    v136 = *(a3 + 16);
                    v137 = v135;
                    v138 = v133;
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v139 = v131 + *(a3 + 8) * *(*(v24 + 112) + 4 * v138);
                      }

                      else
                      {
                        v139 = *(*(v24 + 112) + 4 * v138) + *(a3 + 8) * v131;
                      }

                      v140 = *v137++;
                      *(v136 + 8 * v139) = v140 + *(v136 + 8 * v139);
                      ++v138;
                    }

                    while (v134 != v138);
                  }

                  ++v131;
                  v135 += v120;
                }

                while (v131 != v112);
              }

              ++v117;
            }

            while (v118 < *(v24 + 88));
          }
        }

        else
        {
          v215 = *(v24 + 88);
          if (v215 >= 1)
          {
            v216 = *(a3 + v111);
            do
            {
              v218 = *(v24 + 96);
              v217 = *(v24 + 104);
              v219 = *(v217 + 8 * v215);
              v220 = *(v217 + 8 * (v215 - 1));
              v221 = v219 - v220;
              v222 = *(v218 + 4 * v215);
              v223 = *(v218 + 4 * (v215 - 1));
              v250 = *(v24 + 64);
              if (v216 >= 1)
              {
                v224 = 0;
                v225 = (a4 + 8 * (v108 * v14));
                do
                {
                  if (v219 > v220)
                  {
                    v226 = (*(v24 + 112) + 4 * v220);
                    v227 = v225;
                    v228 = v219 - v220;
                    do
                    {
                      v229 = *v226++;
                      *v227++ = *(a4 + 8 * (v229 + v108 * v224));
                      --v228;
                    }

                    while (v228);
                  }

                  ++v224;
                  v225 += v219 - v220;
                }

                while (v224 != v216);
              }

              v249 = v219 - v220;
              v252 = v223;
              v230 = (v222 - v223);
              cblas_dtrmm_NEWLAPACK();
              if (v221 > v230)
              {
                cblas_dgemm_NEWLAPACK();
              }

              if (v216 >= 1)
              {
                v231 = 0;
                v232 = (a4 + 8 * (v108 * v14));
                do
                {
                  if (v230 >= 1)
                  {
                    v233 = *(a3 + 16);
                    v234 = v232;
                    v235 = v230;
                    v236 = (v250 + 4 * v252);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v237 = v231 + *(a3 + 8) * *v236;
                      }

                      else
                      {
                        v237 = *v236 + *(a3 + 8) * v231;
                      }

                      v238 = *v234++;
                      *(v233 + 8 * v237) = v238;
                      ++v236;
                      --v235;
                    }

                    while (v235);
                  }

                  ++v231;
                  v232 += v249;
                }

                while (v231 != v216);
              }
            }

            while (v215-- >= 2);
          }
        }

        v101 = *(v24 + 64);
        v102 = 0;
        v103 = v245;
        v104 = 0;
        v105 = a3;
        v106 = v256;
        goto LABEL_246;
      case 6:
        if ((v9 & 1) == 0)
        {
          *&v257[0] = __PAIR64__(v14, v23);
          *&v257[1] = a4;
          *(&v257[0] + 1) = v23;
          if (v7)
          {
            v212 = v7;
          }

          else
          {
            v212 = a3;
          }

          v213 = (a4 + 8 * v23 * v14);
          sub_23679019C(1, v23, *(v24 + 64), v212, v257, v213);
          if (v19 <= v20)
          {
            v214 = v20;
          }

          else
          {
            v214 = v19;
          }

          sub_23678EB18(v214 * *(a1 + 32), v24, v253, v257, a3, v213);
          return;
        }

        v244 = v23;
        *&v257[0] = __PAIR64__(v14, v22);
        *&v257[1] = a4;
        *(&v257[0] + 1) = v22;
        if (!v7)
        {
          v7 = v257;
          v99 = v22;
          sub_2366FD390(a3, v257);
          v22 = v99;
          v18 = *(a1 + 32);
        }

        if (v19 <= v20)
        {
          v100 = v20;
        }

        else
        {
          v100 = v19;
        }

        sub_23678E160(v100 * v18, v24, v253, v7, a3, (a4 + 8 * (v22 * v14)), a4 + a5);
        v101 = *(v24 + 64);
        v102 = 0;
        v103 = v244;
        v104 = 0;
        v105 = a3;
        v106 = a4;
        goto LABEL_246;
      case 1:
        v25 = *(v24 + 64);
LABEL_60:

        sub_23679019C((v9 & 1), v23, v25, v7, a3, a4);
        return;
    }

    v141 = *(v24 + 40);
    if (!v141)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23673A550();
      }

      _SparseTrap();
    }

    memset(&v257[14] + 10, 0, 22);
    memset(&v257[3] + 10, 0, 176);
    strcpy(v257, "Invalid operation for this type of object/factorization.\n");
    v141(v257, v23);
  }

  else
  {
LABEL_19:
    if (v11 - 81 >= 3)
    {
      goto LABEL_250;
    }

    v26 = *(a1 + 5);
    if (*(a1 + 4) > 8u)
    {
      v55 = *(a1 + 11);
      if (v10 == 9)
      {
        v16 = *(v55 + 96);
        v17 = *(v26 + 72);
      }

      else
      {
        v16 = *(v55 + 104);
        v17 = *(v26 + 80);
      }

LABEL_109:

      sub_23678D570(v16, v17, v7, a3);
      return;
    }

    v27 = *(a1 + 32);
    v28 = *(v26 + 60);
    if (v10 == 1)
    {
      v29 = *(v26 + 136);
    }

    else
    {
      v29 = *(v26 + 144);
    }

    sub_236790344((v9 & 1), v28, v27, v29, v7, a3, a4);
  }
}