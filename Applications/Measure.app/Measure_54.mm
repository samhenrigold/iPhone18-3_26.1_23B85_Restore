void sub_100359540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18 != v18)
  {
    if (a18)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_100359584(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t *a4, int64x2_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = *result << 32;
  if (a6 <= 3)
  {
    LODWORD(v9) = 0;
    v10 = a5;
LABEL_9:
    v14 = a6 - v9;
    do
    {
      v10->i64[0] = v8;
      v10 = (v10 + 8);
      --v14;
    }

    while (v14);
    goto LABEL_11;
  }

  v9 = a6 & 0x7FFFFFFC;
  v10 = (a5 + 8 * v9);
  v11 = vdupq_n_s64(v8);
  v12 = a5 + 1;
  v13 = v9;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 4;
  }

  while (v13);
  if (v9 != a6)
  {
    goto LABEL_9;
  }

LABEL_11:
  a4 += 2 * a6;
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_15;
  }

LABEL_12:
  v15 = a7 - a6;
  v16 = (a3 + 4 * a6);
  do
  {
    v17 = *v16++;
    v18 = *a4;
    v19 = a4[1];
    a4 += 2;
    a5->i64[0] = v18 * result[v17] + v19 * result[v17 + 1];
    a5 = (a5 + 8);
    --v15;
  }

  while (v15);
  a6 = a7;
LABEL_15:
  if (a6 >= a8)
  {
    return result;
  }

  v20 = result[*(a3 + 4 * a8 - 4)] << 32;
  v21 = ~a6 + a8;
  if (v21 < 3)
  {
    v22 = a5;
LABEL_21:
    v28 = a8 - a6;
    do
    {
      v22->i64[0] = v20;
      v22 = (v22 + 8);
      --v28;
    }

    while (v28);
    return result;
  }

  v23 = v21 + 1;
  v24 = (v21 + 1) & 0x1FFFFFFFCLL;
  a6 += v24;
  v22 = (a5 + 8 * v24);
  v25 = vdupq_n_s64(v20);
  v26 = a5 + 1;
  v27 = v24;
  do
  {
    v26[-1] = v25;
    *v26 = v25;
    v26 += 2;
    v27 -= 4;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_21;
  }

  return result;
}

int32x2_t *sub_1003596B8(int32x2_t *result, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = a5 + 4;
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = result + 2;
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = a5 + 4;
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = result + 2;
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*&_Q0, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              *(v26 - 2) = v31;
              *(v26 - 1) = _Q0;
              *v26 = v32;
              *(v26 + 1) = _Q1;
              v26 += 8;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[4 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = result->u32[0] << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result->u32[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[1].u32[0] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[1].u32[1] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[2].u32[0] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[2].u32[1] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[3].u32[0] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = result + *(a3 + 4 * v36) * a2;
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = result + v45;
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = a5 + 4;
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*&_Q0, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            *(v50 - 2) = v55;
            *(v50 - 1) = _Q0;
            *v50 = v56;
            *(v50 + 1) = _Q1;
            v50 += 8;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = result + v42;
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

int32x2_t *sub_100359A98(int32x2_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s32(*result, 0x20uLL);
    if (a6 > 3)
    {
      v9 = a6 & 0x7FFFFFFC;
      v10 = &a5[2 * v9];
      *&v11 = v8.i64[0];
      *(&v11 + 1) = vdupq_laneq_s64(v8, 1).u64[0];
      v12 = a5 + 4;
      v13 = v9;
      do
      {
        *(v12 - 2) = v11;
        *(v12 - 1) = v11;
        *v12 = v11;
        *(v12 + 1) = v11;
        v12 += 8;
        v13 -= 4;
      }

      while (v13);
      if (v9 == a6)
      {
LABEL_12:
        a4 += 2 * a6;
        a5 = v10;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a5;
    }

    v14 = a6 - v9;
    do
    {
      *v10 = v8;
      v10 += 2;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v15 = a7 - a6;
    v16 = (a3 + 4 * a6);
    do
    {
      v17 = *v16++;
      v18 = &result[v17];
      v19 = v18->i32[1];
      v20 = *a4 * v18->i32[0];
      v22 = v18[1].i32[0];
      v21 = v18[1].i32[1];
      *a5 = v20 + a4[1] * v22;
      v23 = *a4;
      v24 = a4[1];
      a4 += 2;
      v25 = v23 * v19 + v24 * v21;
      v26 = a5 + 2;
      a5[1] = v25;
      a5 += 2;
      --v15;
    }

    while (v15);
    a5 = v26;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v27 = vshll_n_s32(result[*(a3 + 4 * a8 - 4)], 0x20uLL);
  v28 = (~a7 + a8);
  if (v28 < 3)
  {
    v29 = a5;
LABEL_21:
    v35 = a8 - a7;
    do
    {
      *v29 = v27;
      v29 += 2;
      --v35;
    }

    while (v35);
    return result;
  }

  v30 = v28 + 1;
  v31 = (v28 + 1) & 0x1FFFFFFFCLL;
  a7 += v31;
  v29 = &a5[2 * v31];
  *&v32 = v27.i64[0];
  *(&v32 + 1) = vdupq_laneq_s64(v27, 1).u64[0];
  v33 = a5 + 4;
  v34 = v31;
  do
  {
    *(v33 - 2) = v32;
    *(v33 - 1) = v32;
    *v33 = v32;
    *(v33 + 1) = v32;
    v33 += 8;
    v34 -= 4;
  }

  while (v34);
  if (v30 != v31)
  {
    goto LABEL_21;
  }

  return result;
}

int32x2_t *sub_100359C04(int32x2_t *result, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = a5 + 4;
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = result + 2;
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = a5 + 4;
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = result + 2;
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*&_Q0, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              *(v26 - 2) = v31;
              *(v26 - 1) = _Q0;
              *v26 = v32;
              *(v26 + 1) = _Q1;
              v26 += 8;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[4 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = result->u32[0] << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result->u32[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[1].u32[0] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[1].u32[1] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[2].u32[0] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[2].u32[1] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[3].u32[0] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = result + *(a3 + 4 * v36) * a2;
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = result + v45;
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = a5 + 4;
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*&_Q0, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            *(v50 - 2) = v55;
            *(v50 - 1) = _Q0;
            *v50 = v56;
            *(v50 + 1) = _Q1;
            v50 += 8;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = result + v42;
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

int32x2_t *sub_100359FE4(int32x2_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, int64x2_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s32(*result, 0x20uLL);
    v9 = result[1].u32[0] << 32;
    if (a6 > 3)
    {
      v10 = a6 & 0x7FFFFFFC;
      v13 = vdupq_n_s64(v9);
      v14 = vzip2q_s64(v8, v13);
      v13.i64[1] = v8.i64[0];
      v11 = (a5 + 24 * v10);
      v12.i64[0] = v8.i64[0];
      v12.i64[1] = vextq_s8(v8, v8, 8uLL).u64[0];
      v13.i64[1] = vextq_s8(v13, v13, 8uLL).u64[0];
      v14.i64[1] = vextq_s8(v14, v14, 8uLL).u64[0];
      v15 = v10;
      do
      {
        *a5 = v12;
        a5[1] = v13;
        a5[2] = v14;
        a5[3] = v12;
        a5[4] = v13;
        a5[5] = v14;
        a5 += 6;
        v15 -= 4;
      }

      while (v15);
      if (v10 == a6)
      {
LABEL_12:
        a4 += 2 * a6;
        a5 = v11;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a5;
    }

    v16 = a6 - v10;
    v17 = v11;
    do
    {
      *v17 = v8;
      v11 = (v17 + 24);
      v17[1].i64[0] = v9;
      v17 = (v17 + 24);
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v18 = a7 - a6;
    v19 = (a3 + 4 * a6);
    do
    {
      v20 = *v19++;
      v21 = result + 3 * v20;
      v22 = v21[1];
      v23 = v21[2];
      a5->i64[0] = *a4 * *v21 + a4[1] * v21[3];
      v25 = v21[4];
      v24 = v21[5];
      a5->i64[1] = *a4 * v22 + a4[1] * v25;
      v26 = *a4;
      v27 = a4[1];
      a4 += 2;
      v28 = v26 * v23 + v27 * v24;
      v29 = (a5 + 24);
      a5[1].i64[0] = v28;
      a5 = (a5 + 24);
      --v18;
    }

    while (v18);
    a5 = v29;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v30 = (result + 12 * *(a3 + 4 * a8 - 4));
  v31 = vshll_n_s32(*v30, 0x20uLL);
  v32 = v30[1].u32[0] << 32;
  v33 = (~a7 + a8);
  if (v33 < 3)
  {
    v34 = a5;
LABEL_21:
    v41 = a8 - a7;
    do
    {
      *v34 = v31;
      v34[1].i64[0] = v32;
      v34 = (v34 + 24);
      --v41;
    }

    while (v41);
    return result;
  }

  v35 = v33 + 1;
  v36 = (v33 + 1) & 0x1FFFFFFFCLL;
  a7 += v36;
  v38 = vdupq_n_s64(v32);
  v39 = vzip2q_s64(v31, v38);
  v38.i64[1] = v31.i64[0];
  v34 = (a5 + 24 * v36);
  v37.i64[0] = v31.i64[0];
  v37.i64[1] = vextq_s8(v31, v31, 8uLL).u64[0];
  v38.i64[1] = vextq_s8(v38, v38, 8uLL).u64[0];
  v39.i64[1] = vextq_s8(v39, v39, 8uLL).u64[0];
  v40 = v36;
  do
  {
    *a5 = v37;
    a5[1] = v38;
    a5[2] = v39;
    a5[3] = v37;
    a5[4] = v38;
    a5[5] = v39;
    a5 += 6;
    v40 -= 4;
  }

  while (v40);
  if (v35 != v36)
  {
    goto LABEL_21;
  }

  return result;
}

int32x2_t *sub_10035A1E0(int32x2_t *result, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = a5 + 4;
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = result + 2;
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = a5 + 4;
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = result + 2;
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*&_Q0, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              *(v26 - 2) = v31;
              *(v26 - 1) = _Q0;
              *v26 = v32;
              *(v26 + 1) = _Q1;
              v26 += 8;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[4 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = result->u32[0] << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result->u32[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[1].u32[0] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[1].u32[1] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[2].u32[0] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[2].u32[1] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[3].u32[0] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = result + *(a3 + 4 * v36) * a2;
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = result + v45;
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = a5 + 4;
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*&_Q0, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            *(v50 - 2) = v55;
            *(v50 - 1) = _Q0;
            *v50 = v56;
            *(v50 + 1) = _Q1;
            v50 += 8;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = result + v42;
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

int32x2_t *sub_10035A5C0(int32x2_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, int64x2_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s32(*result, 0x20uLL);
    v9 = vshll_n_s32(result[1], 0x20uLL);
    if (a6 > 3)
    {
      v10 = a6 & 0x7FFFFFFC;
      v11 = &a5[2 * v10];
      v12 = a5 + 4;
      v13 = v10;
      do
      {
        v12[-4] = v8;
        v12[-3] = v9;
        v12[-2] = v8;
        v12[-1] = v9;
        *v12 = v8;
        v12[1] = v9;
        v12[2] = v8;
        v12[3] = v9;
        v12 += 8;
        v13 -= 4;
      }

      while (v13);
      if (v10 == a6)
      {
LABEL_12:
        a4 += 2 * a6;
        a5 = v11;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a5;
    }

    v14 = a6 - v10;
    v15 = v11;
    do
    {
      v11 = v15 + 2;
      *v15 = v8;
      v15[1] = v9;
      v15 += 2;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v16 = a7 - a6;
    v17 = (a3 + 4 * a6);
    do
    {
      v18 = *v17++;
      v19 = &result[2 * v18];
      v20 = v19->i32[1];
      v21 = v19[2].i32[1];
      a5->i64[0] = *a4 * v19->i32[0] + a4[1] * v19[2].i32[0];
      a5->i64[1] = *a4 * v20 + a4[1] * v21;
      v22 = v19[1].i32[1];
      v23 = *a4 * v19[1].i32[0];
      v25 = v19[3].i32[0];
      v24 = v19[3].i32[1];
      a5[1].i64[0] = v23 + a4[1] * v25;
      v26 = *a4;
      v27 = a4[1];
      a4 += 2;
      v28 = v26 * v22 + v27 * v24;
      v29 = a5 + 2;
      a5[1].i64[1] = v28;
      a5 += 2;
      --v16;
    }

    while (v16);
    a5 = v29;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v30 = &result[2 * *(a3 + 4 * a8 - 4)];
  v31 = vshll_n_s32(*v30, 0x20uLL);
  v32 = vshll_n_s32(v30[1], 0x20uLL);
  v33 = (~a7 + a8);
  if (v33 < 3)
  {
    v34 = a5;
LABEL_21:
    v39 = a8 - a7;
    do
    {
      *v34 = v31;
      v34[1] = v32;
      v34 += 2;
      --v39;
    }

    while (v39);
    return result;
  }

  v35 = v33 + 1;
  v36 = (v33 + 1) & 0x1FFFFFFFCLL;
  a7 += v36;
  v34 = &a5[2 * v36];
  v37 = a5 + 4;
  v38 = v36;
  do
  {
    v37[-4] = v31;
    v37[-3] = v32;
    v37[-2] = v31;
    v37[-1] = v32;
    *v37 = v31;
    v37[1] = v32;
    v37[2] = v31;
    v37[3] = v32;
    v37 += 8;
    v38 -= 4;
  }

  while (v38);
  if (v35 != v36)
  {
    goto LABEL_21;
  }

  return result;
}

int32x2_t *sub_10035A76C(int32x2_t *result, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = a5 + 4;
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = result + 2;
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = a5 + 4;
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = result + 2;
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*&_Q0, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              *(v26 - 2) = v31;
              *(v26 - 1) = _Q0;
              *v26 = v32;
              *(v26 + 1) = _Q1;
              v26 += 8;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[4 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = result->u32[0] << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result->u32[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[1].u32[0] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[1].u32[1] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[2].u32[0] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[2].u32[1] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[3].u32[0] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = result + *(a3 + 4 * v36) * a2;
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = result + v45;
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = a5 + 4;
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*&_Q0, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            *(v50 - 2) = v55;
            *(v50 - 1) = _Q0;
            *v50 = v56;
            *(v50 + 1) = _Q1;
            v50 += 8;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = result + v42;
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

int32x2_t *sub_10035AB4C(int32x2_t *result, int a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = a5 + 4;
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = result + 2;
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          v25 = 0;
          do
          {
            v26 = a5 + 4;
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = result + 2;
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*&_Q0, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              *(v26 - 2) = v31;
              *(v26 - 1) = _Q0;
              *v26 = v32;
              *(v26 + 1) = _Q1;
              v26 += 8;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = a2 - v10;
            v34 = &result[4 * ((a2 >> 3) & 0xFFFFFFF)];
            do
            {
              v35 = *v34++;
              *a5++ = v35 << 32;
              --v33;
            }

            while (v33);
            ++v25;
          }

          while (v25 != a6);
        }
      }

      else
      {
        v8 = result->u32[0] << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result->u32[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[1].u32[0] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[1].u32[1] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[2].u32[0] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[2].u32[1] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[3].u32[0] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_39;
    }
  }

  if (a2 < 1)
  {
    LODWORD(a6) = a7;
    v39 = a8 - a7;
    if (a8 <= a7)
    {
      return result;
    }

    goto LABEL_40;
  }

  a6 = a6;
  do
  {
    v36 = 0;
    v37 = result + *(a3 + 4 * a6) * a2;
    do
    {
      v38 = *a4 * *v37;
      *a5 = v38;
      *a5++ = v38 + a4[1] * v37[a2];
      ++v37;
      v36 += 4;
    }

    while (4 * a2 != v36);
    ++a6;
    a4 += 2;
  }

  while (a6 < a7);
LABEL_39:
  v39 = a8 - a6;
  if (a8 <= a6)
  {
    return result;
  }

LABEL_40:
  if (a2 >= 1)
  {
    v40 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 8)
    {
      v43 = v40;
      v44 = a2 & 0x7FFFFFF8;
      v45 = result + v43;
      v46 = (v45 + 4);
      v47 = &v45[8 * ((a2 >> 3) & 0xFFFFFFF)];
      do
      {
        v48 = a5 + 4;
        a5 += v44;
        v49 = a2 & 0x7FFFFFF8;
        v50 = v46;
        do
        {
          _Q0 = *v50[-2].i8;
          _Q1 = *v50->i8;
          v53 = vshll_n_s32(*&_Q0, 0x20uLL);
          __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

          v54 = vshll_n_s32(*v50, 0x20uLL);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          *(v48 - 2) = v53;
          *(v48 - 1) = _Q0;
          *v48 = v54;
          *(v48 + 1) = _Q1;
          v48 += 8;
          v50 += 4;
          v49 -= 8;
        }

        while (v49);
        if (a2 != v44)
        {
          v55 = a2 - v44;
          v56 = v47;
          do
          {
            v57 = *v56++;
            *a5++ = v57 << 32;
            --v55;
          }

          while (v55);
        }

        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }

    else
    {
      v41 = result + v40;
      v42 = *v41 << 32;
      do
      {
        *a5 = v42;
        if (a2 == 1)
        {
          ++a5;
        }

        else
        {
          a5[1] = v41[1] << 32;
          if (a2 == 2)
          {
            a5 += 2;
          }

          else
          {
            a5[2] = v41[2] << 32;
            if (a2 == 3)
            {
              a5 += 3;
            }

            else
            {
              a5[3] = v41[3] << 32;
              if (a2 == 4)
              {
                a5 += 4;
              }

              else
              {
                a5[4] = v41[4] << 32;
                if (a2 == 5)
                {
                  a5 += 5;
                }

                else
                {
                  a5[5] = v41[5] << 32;
                  if (a2 == 6)
                  {
                    a5 += 6;
                  }

                  else
                  {
                    a5[6] = v41[6] << 32;
                    a5 += 7;
                  }
                }
              }
            }
          }
        }

        --v39;
      }

      while (v39);
    }
  }

  return result;
}

int32x2_t *sub_10035AF20(int32x2_t *result, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  if (a2 > 0)
  {
    if (a2 > 7)
    {
      v10 = a2 & 0x7FFFFFF8;
      v11 = 8 * v10;
      v12 = a2 - v10;
      if (a2 == v10)
      {
        v13 = a5 + 4;
        do
        {
          a5 = (a5 + v11);
          v14 = v13;
          v15 = result + 2;
          v16 = a2 & 0x7FFFFFF8;
          do
          {
            _Q0 = *v15[-2].i8;
            _Q1 = *v15->i8;
            v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v24 = vshll_n_s32(*v15, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            v14[-2] = v19;
            v14[-1] = _Q0;
            *v14 = v24;
            v14[1] = _Q1;
            v14 += 4;
            v15 += 4;
            v16 -= 8;
          }

          while (v16);
          ++v12;
          v13 = (v13 + v11);
        }

        while (v12 != a6);
      }

      else
      {
        v25 = 0;
        do
        {
          v26 = a5 + 4;
          a5 = (a5 + v11);
          v27 = a2 & 0x7FFFFFF8;
          v28 = result + 2;
          do
          {
            _Q0 = *v28[-2].i8;
            _Q1 = *v28->i8;
            v31 = vshll_n_s32(*&_Q0, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v32 = vshll_n_s32(*v28, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            *(v26 - 2) = v31;
            *(v26 - 1) = _Q0;
            *v26 = v32;
            *(v26 + 1) = _Q1;
            v26 += 8;
            v28 += 4;
            v27 -= 8;
          }

          while (v27);
          v33 = a2 - v10;
          v34 = &result[4 * ((a2 >> 3) & 0xFFFFFFF)];
          do
          {
            v35 = *v34++;
            *a5++ = v35 << 32;
            --v33;
          }

          while (v33);
          ++v25;
        }

        while (v25 != a6);
      }
    }

    else
    {
      v8 = result->u32[0] << 32;
      v9 = a6;
      do
      {
        *a5 = v8;
        if (a2 == 1)
        {
          ++a5;
        }

        else
        {
          a5[1] = result->u32[1] << 32;
          if (a2 == 2)
          {
            a5 += 2;
          }

          else
          {
            a5[2] = result[1].u32[0] << 32;
            if (a2 == 3)
            {
              a5 += 3;
            }

            else
            {
              a5[3] = result[1].u32[1] << 32;
              if (a2 == 4)
              {
                a5 += 4;
              }

              else
              {
                a5[4] = result[2].u32[0] << 32;
                if (a2 == 5)
                {
                  a5 += 5;
                }

                else
                {
                  a5[5] = result[2].u32[1] << 32;
                  if (a2 == 6)
                  {
                    a5 += 6;
                  }

                  else
                  {
                    a5[6] = result[3].u32[0] << 32;
                    a5 += 7;
                  }
                }
              }
            }
          }
        }

        --v9;
      }

      while (v9);
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 < a7)
  {
LABEL_34:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v36 = 0;
        v37 = result + *(a3 + 4 * a6) * a2;
        do
        {
          v38 = *a4;
          if (*a4)
          {
            v38 *= *v37;
          }

          *a5 = v38;
          v39 = a4[1];
          if (v39)
          {
            v39 *= v37[a2];
          }

          *a5++ = v39 + v38;
          ++v37;
          v36 += 4;
        }

        while (4 * a2 != v36);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_44:
  v40 = a8 - a6;
  if (a8 > a6 && a2 >= 1)
  {
    v41 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 8)
    {
      v44 = v41;
      v45 = a2 & 0x7FFFFFF8;
      v46 = result + v44;
      v47 = (v46 + 4);
      v48 = &v46[8 * ((a2 >> 3) & 0xFFFFFFF)];
      do
      {
        v49 = a5 + 4;
        a5 += v45;
        v50 = a2 & 0x7FFFFFF8;
        v51 = v47;
        do
        {
          _Q0 = *v51[-2].i8;
          _Q1 = *v51->i8;
          v54 = vshll_n_s32(*&_Q0, 0x20uLL);
          __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

          v55 = vshll_n_s32(*v51, 0x20uLL);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          *(v49 - 2) = v54;
          *(v49 - 1) = _Q0;
          *v49 = v55;
          *(v49 + 1) = _Q1;
          v49 += 8;
          v51 += 4;
          v50 -= 8;
        }

        while (v50);
        if (a2 != v45)
        {
          v56 = a2 - v45;
          v57 = v48;
          do
          {
            v58 = *v57++;
            *a5++ = v58 << 32;
            --v56;
          }

          while (v56);
        }

        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }

    else
    {
      v42 = result + v41;
      v43 = *v42 << 32;
      do
      {
        *a5 = v43;
        if (a2 == 1)
        {
          ++a5;
        }

        else
        {
          a5[1] = v42[1] << 32;
          if (a2 == 2)
          {
            a5 += 2;
          }

          else
          {
            a5[2] = v42[2] << 32;
            if (a2 == 3)
            {
              a5 += 3;
            }

            else
            {
              a5[3] = v42[3] << 32;
              if (a2 == 4)
              {
                a5 += 4;
              }

              else
              {
                a5[4] = v42[4] << 32;
                if (a2 == 5)
                {
                  a5 += 5;
                }

                else
                {
                  a5[5] = v42[5] << 32;
                  if (a2 == 6)
                  {
                    a5 += 6;
                  }

                  else
                  {
                    a5[6] = v42[6] << 32;
                    a5 += 7;
                  }
                }
              }
            }
          }
        }

        --v40;
      }

      while (v40);
    }
  }

  return result;
}

uint64_t sub_10035B304(uint64_t a1, int a2, unsigned int *a3, void *a4)
{
  sub_10029DA40(&v15, a2);
  v14 = 0x3FE0000000000000;
  sub_10029DFB4(&v15, &v14, &v17);
  sub_10029E004(a1, &v17, &v18);
  v13 = 0x3FE0000000000000;
  sub_10029DFDC(&v18, &v13, &v16);
  result = sub_10029DD18(&v16);
  if ((result & 0x80000000) != 0 || (v9 = *(a1 + 8), v9 < 2))
  {
    if (*(a1 + 12) <= a2 + 1)
    {
      v11 = a2 + 1;
    }

    else
    {
      v11 = *(a1 + 12);
    }

    *(a1 + 12) = v11;
  }

  else
  {
    v10 = v9 - 1;
    if (result >= v10)
    {
      *a3 = v10;
      v12 = *(a1 + 16);
      if (v12 >= a2)
      {
        v12 = a2;
      }

      *(a1 + 16) = v12;
    }

    else
    {
      *a3 = result;
      sub_10029DA40(&v14, result);
      sub_10029DFDC(&v16, &v14, &v15);
      sub_10029DAC0(&v17, &_mh_execute_header);
      sub_10029E004(&v15, &v17, &v18);
      result = sub_10029DDC8(&v18);
      *a4 = &_mh_execute_header - result;
      a4[1] = result;
    }
  }

  return result;
}

void sub_10035B45C()
{
  nullsub_1();

  operator delete();
}

int64x2_t *sub_10035B494(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v119, 0x440uLL);
  v117 = v119;
  v118 = v4;
  if (v4 >= 0x89)
  {
    operator new[]();
  }

  v5 = *a2;
  v6 = *(a1 + 104);
  if (v6 <= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(a1 + 104);
  }

  if (a2[1] >= *(a1 + 108))
  {
    v8 = *(a1 + 108);
  }

  else
  {
    v8 = a2[1];
  }

  if (v5 >= v6)
  {
    v9 = 0;
    v10 = -2;
    if (v5 >= v7)
    {
LABEL_11:
      if (v5 >= v8)
      {
        goto LABEL_86;
      }

      goto LABEL_12;
    }
  }

  else
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v119, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }
  }

  v72 = v117;
  v73 = *(a1 + 40);
  v74 = v5;
  v75 = v117 + 2;
  v76 = (*(a1 + 32) + v73 * v5);
  v77 = v76 + 1;
  do
  {
    v78 = (*(a1 + 56) * *(a1 + 48));
    if (v78 < 1)
    {
      goto LABEL_75;
    }

    if (v78 < 8)
    {
      v79 = 0;
LABEL_82:
      v87 = v78 - v79;
      v88 = &v76->i32[v79];
      v89 = &v72->i64[v79];
      do
      {
        v90 = *v89++;
        *v88++ = (v90 + 0x80000000) >> 32;
        --v87;
      }

      while (v87);
      goto LABEL_75;
    }

    v79 = v78 & 0x7FFFFFF8;
    v80 = v79;
    v81 = v77;
    v82 = v75;
    do
    {
      v84 = v82[-2];
      v83 = v82[-1];
      v86 = *v82;
      v85 = v82[1];
      v82 += 4;
      v81[-1] = vraddhn_high_s64(vraddhn_s64(v84, 0), v83, 0);
      *v81 = vraddhn_high_s64(vraddhn_s64(v86, 0), v85, 0);
      v81 += 2;
      v80 -= 8;
    }

    while (v80);
    if (v79 != v78)
    {
      goto LABEL_82;
    }

LABEL_75:
    ++v74;
    v77 = (v77 + v73);
    v76 = (v76 + v73);
  }

  while (v74 != v7);
  v5 = v7;
  if (v7 >= v8)
  {
LABEL_86:
    v28 = v117;
    v91 = *(a1 + 28);
    if (v10 + 2 <= v91)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

LABEL_12:
  v11 = v5;
  while (2)
  {
    v12 = *(a1 + 72);
    v13 = *(v12 + 4 * v11);
    if (v13 <= v10 + 2)
    {
      v14 = v10 + 2;
    }

    else
    {
      v14 = *(v12 + 4 * v11);
    }

    v15 = v13 + 2;
    v16 = *(a1 + 28);
    if (v16 < v13 + 2)
    {
      v15 = *(a1 + 28);
    }

    if (v14 < v15)
    {
      if (v10 + 2 <= v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = v10 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v17++);
        v13 = *(v12 + 4 * v11);
        v9 = (v9 & 1) == 0;
        v18 = v13 + 2;
        v16 = *(a1 + 28);
        if (v16 < v13 + 2)
        {
          v18 = *(a1 + 28);
        }
      }

      while (v17 < v18);
    }

    v19 = v16 - 2;
    if (v13 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v13;
    }

    v21 = v20 + v9;
    if (v10 > v19)
    {
      v19 = v10;
    }

    v22 = v21 - v19;
    v115 = 0;
    if (v22 >= 0)
    {
      v9 = v22 & 1;
    }

    else
    {
      v9 = -(v22 & 1);
    }

    v23 = *(a1 + 88);
    if (v9 < 1)
    {
      v24 = 0;
      v26 = 0;
      v25 = &v116;
    }

    else
    {
      v24 = *(v23 + 16 * v11 + 8);
      v25 = &v115;
      v26 = 1;
    }

    v116 = v24;
    v27 = v23 + 8 * (2 * v11 - v9);
    *v25 = *(v27 + 8 * v26);
    if (v9 <= 0)
    {
      v115 = *(v27 + 8);
      v28 = v117;
      v29 = *(a1 + 56) * *(a1 + 48);
      if (v29 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v28 = v117;
      v29 = *(a1 + 56) * *(a1 + 48);
      if (v29 < 1)
      {
        goto LABEL_13;
      }
    }

    v30 = v116 >> 63;
    if (v116 >= 0)
    {
      v31 = v116;
    }

    else
    {
      v31 = -v116;
    }

    v32 = v31;
    v33 = HIDWORD(v31);
    v34 = v115 >> 63;
    if (v115 >= 0)
    {
      v35 = v115;
    }

    else
    {
      v35 = -v115;
    }

    v36 = v35;
    v37 = HIDWORD(v35);
    v38 = v29;
    v39 = (*(a1 + 32) + *(a1 + 40) * v11);
    v40 = v28;
    do
    {
      v41 = *v40;
      if (*v40 >= 0)
      {
        v42 = *v40;
      }

      else
      {
        v42 = -v41;
      }

      v43 = v42;
      v44 = v42 * v32 + 0x80000000;
      v45 = HIDWORD(v42);
      v46 = v45 * v32;
      v47 = v43 * v33;
      v48 = v46 + v47 + HIDWORD(v44);
      v49 = HIDWORD(v46) + v45 * v33 + HIDWORD(v47) + HIDWORD(v48);
      v50 = v48;
      v51 = -v48;
      if (v48)
      {
        v52 = ~v49;
      }

      else
      {
        v52 = -v49;
      }

      v53 = v30 == v41 >> 63;
      if (v30 == v41 >> 63)
      {
        v54 = v50;
      }

      else
      {
        v54 = v51;
      }

      if (!v53)
      {
        v49 = v52;
      }

      v55 = v40[v29];
      if (v55 >= 0)
      {
        v56 = v40[v29];
      }

      else
      {
        v56 = -v55;
      }

      v57 = v56;
      v58 = v56 * v36 + 0x80000000;
      v59 = HIDWORD(v56);
      v60 = v59 * v36;
      v61 = v57 * v37;
      v62 = v60 + v61 + HIDWORD(v58);
      v63 = v49 << 32;
      v64 = HIDWORD(v60) + v59 * v37 + HIDWORD(v61) + HIDWORD(v62);
      v65 = v62;
      v66 = -v62;
      if (v62)
      {
        LODWORD(v67) = ~v64;
      }

      else
      {
        v67 = -v64;
      }

      v68 = v34 == v55 >> 63;
      if (v34 == v55 >> 63)
      {
        v69 = v65;
      }

      else
      {
        v69 = v66;
      }

      v70 = v54 + v63 + v69 + 0x80000000;
      if (v68)
      {
        v71 = v64;
      }

      else
      {
        v71 = v67;
      }

      *v39++ = HIDWORD(v70) + v71;
      ++v40;
      --v38;
    }

    while (v38);
LABEL_13:
    ++v11;
    v10 = v13;
    if (v8 != v11)
    {
      continue;
    }

    break;
  }

  v10 = v13;
  v5 = v8;
  v94 = v13 + 2;
  v91 = *(a1 + 28);
  if (v94 <= v91)
  {
LABEL_92:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v91 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v28, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_93;
  }

LABEL_87:
  v92 = v9 + ~v10 + v91;
  if (v92 >= 0)
  {
    v93 = v92 & 1;
  }

  else
  {
    v93 = -(v92 & 1);
  }

  v28 = (v28 + 8 * *(a1 + 48) * v93 * *(a1 + 56));
LABEL_93:
  v95 = a2[1];
  if (v5 < v95)
  {
    v96 = *(a1 + 40);
    v97 = v5;
    v98 = (*(a1 + 32) + v96 * v5);
    v99 = v98 + 1;
    while (2)
    {
      v100 = (*(a1 + 56) * *(a1 + 48));
      if (v100 < 1)
      {
        goto LABEL_96;
      }

      if (v100 < 8)
      {
        v101 = 0;
        goto LABEL_103;
      }

      v101 = v100 & 0x7FFFFFF8;
      v102 = v101;
      v103 = v99;
      v104 = v28 + 2;
      do
      {
        v106 = v104[-2];
        v105 = v104[-1];
        v108 = *v104;
        v107 = v104[1];
        v104 += 4;
        v103[-1] = vraddhn_high_s64(vraddhn_s64(v106, 0), v105, 0);
        *v103 = vraddhn_high_s64(vraddhn_s64(v108, 0), v107, 0);
        v103 += 2;
        v102 -= 8;
      }

      while (v102);
      if (v101 != v100)
      {
LABEL_103:
        v109 = v100 - v101;
        v110 = &v98->i32[v101];
        v111 = &v28->i64[v101];
        do
        {
          v112 = *v111++;
          *v110++ = (v112 + 0x80000000) >> 32;
          --v109;
        }

        while (v109);
      }

      v95 = a2[1];
LABEL_96:
      ++v97;
      v99 = (v99 + v96);
      v98 = (v98 + v96);
      if (v97 >= v95)
      {
        break;
      }

      continue;
    }
  }

  result = v117;
  if (v117 != v119 && v117 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_10035BA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

void sub_10035BADC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002ACE7C(v92, &off_10047AB68);
  *v88 = 1124007936;
  memset(&v88[4], 0, 60);
  v89 = &v88[8];
  v90 = v91;
  v91[0] = 0;
  v91[1] = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  LODWORD(v94[0]) = 33619968;
  *(&v94[0] + 1) = v88;
  *&v94[1] = 0;
  sub_1002EF584(a1, v94, 1, 1);
  if ((v88[0] & 7) == 5)
  {
    goto LABEL_23;
  }

  LODWORD(v94[0]) = 1124007936;
  memset(v94 + 4, 0, 60);
  v95 = v94 + 8;
  v96 = v97;
  v97[0] = 0;
  v97[1] = 0;
  LODWORD(v98) = 33619968;
  v99 = v94;
  v100 = 0;
  sub_10020EF14(v88, &v98, 5, 1.0, 0.0);
  if (*(&v94[3] + 1))
  {
    atomic_fetch_add((*(&v94[3] + 1) + 20), 1u);
  }

  if (*&v88[56] && atomic_fetch_add((*&v88[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v88);
  }

  *&v88[56] = 0;
  memset(&v88[16], 0, 32);
  if (*v88 <= 0)
  {
    v6 = DWORD1(v94[0]);
    *v88 = v94[0];
    if (SDWORD1(v94[0]) <= 2)
    {
LABEL_12:
      *&v88[4] = v6;
      *&v88[8] = *(&v94[0] + 1);
      v7 = v96;
      v8 = v90;
      *v90 = *v96;
      v8[1] = v7[1];
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    v5 = v89;
    do
    {
      *&v5[4 * v4++] = 0;
    }

    while (v4 < *&v88[4]);
    *v88 = v94[0];
    if (*&v88[4] <= 2)
    {
      v6 = DWORD1(v94[0]);
      if (SDWORD1(v94[0]) <= 2)
      {
        goto LABEL_12;
      }
    }
  }

  sub_100269B58(v88, v94);
LABEL_15:
  *&v88[16] = v94[1];
  *&v88[32] = v94[2];
  *&v88[48] = v94[3];
  if (*(&v94[3] + 1) && atomic_fetch_add((*(&v94[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v94);
  }

  *(&v94[3] + 1) = 0;
  memset(&v94[1], 0, 32);
  if (SDWORD1(v94[0]) >= 1)
  {
    v9 = 0;
    v10 = v95;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v94[0]));
  }

  if (v96 != v97)
  {
    j__free(v96);
  }

LABEL_23:
  v11 = sub_10026F620(v88, 2, -1, 1);
  v12 = v11;
  v13 = *&v88[16];
  if (v11 >= 3)
  {
    *&v94[0] = &v94[1];
    *(&v94[0] + 1) = 3 * v11;
    if (v11 >= 0x59)
    {
      operator new[]();
    }

    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    LODWORD(v17) = 0;
    LODWORD(v18) = 0;
    v19 = &v94[1] + 4 * v11;
    v98 = -1;
    v99 = -1;
    v21 = **&v88[16];
    v20 = *(*&v88[16] + 4);
    v22 = (v19 + 4);
    v23 = &v94[1];
    v24 = **&v88[16];
    v25 = v20;
    v26 = v20;
    v27 = **&v88[16];
    do
    {
      if (v27 < v21)
      {
        v21 = v27;
        LODWORD(v15) = v14;
      }

      if (v27 > v24)
      {
        v24 = v27;
        LODWORD(v17) = v14;
      }

      if (v26 > v20)
      {
        v20 = v26;
        LODWORD(v18) = v14;
      }

      if (v26 < v25)
      {
        v25 = v26;
        v16 = v14;
      }

      v28 = ++v14;
      if (v14 >= v11)
      {
        v28 = 0;
      }

      v29 = (v13 + 8 * v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = *v29 - v27;
      v33 = v31 - v26;
      *(v22 - 1) = v32;
      *v22 = v33;
      v34 = 1.0 / sqrt(v33 * v33 + v32 * v32);
      *v23++ = v34;
      v22 += 2;
      v26 = v31;
      v27 = v30;
    }

    while (v11 != v14);
    v35 = vcvtq_f64_f32(*&v19[8 * v11 - 8]);
    v36 = (&v94[1] + 4 * v11);
    v37 = v11;
    while (1)
    {
      v38 = v35;
      v35 = vcvtq_f64_f32(*v36);
      v39 = -v38.f64[1] * v35.f64[0] + v38.f64[0] * v35.f64[1];
      if (v39 != 0.0)
      {
        break;
      }

      ++v36;
      if (!--v37)
      {
        v93[0] = 0;
        v93[1] = 0;
        *sub_1002A80E0(v93, 16) = *"orientation != 0";
        sub_1002A8980(-215, v93, "rotatingCalipers", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/rotcalipers.cpp", 166);
      }
    }

    if (v39 <= 0.0)
    {
      v48 = -1.0;
    }

    else
    {
      v48 = 1.0;
    }

    v49 = 0;
    v50 = 0;
    v98 = __PAIR64__(v17, v16);
    v99 = __PAIR64__(v15, v18);
    v51 = 0.0;
    v52 = 3.4028e38;
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    do
    {
      v57 = (v51 * *&v19[8 * v16 + 4]) + (v48 * *&v19[8 * v16]);
      v58 = (v48 * *&v19[8 * v17 + 4]) - (v51 * *&v19[8 * v17]);
      v59 = -(v51 * *&v19[8 * v18 + 4]) - (v48 * *&v19[8 * v18]);
      v60 = (v51 * *&v19[8 * v15]) - (v48 * *&v19[8 * v15 + 4]);
      v61 = v57 * *(&v94[1] + v16);
      v62 = v58 * *(&v94[1] + v17);
      v63 = v62 > v61;
      v64 = *(&v94[1] + v18);
      if (v62 > v61)
      {
        v61 = v62;
      }

      if ((v59 * v64) > v61)
      {
        v61 = v59 * v64;
        v63 = 2;
      }

      if ((v60 * *(&v94[1] + v15)) > v61)
      {
        v63 = 3;
      }

      v65 = *(&v98 + v63);
      v66 = &v19[8 * v65];
      v67 = *(&v94[1] + v65);
      v68 = *v66 * v67;
      v48 = v67 * v66[1];
      v69 = -v68;
      v70 = -v48;
      if (v63 == 2)
      {
        v71 = -v48;
      }

      else
      {
        v71 = v68;
      }

      if (v63 == 2)
      {
        v70 = -v68;
      }

      if (!v63)
      {
        v69 = v48;
        v48 = v68;
      }

      if (v63 <= 1)
      {
        v51 = v69;
      }

      else
      {
        v51 = v71;
      }

      if (v63 > 1)
      {
        v48 = v70;
      }

      if (v65 + 1 == v11)
      {
        v72 = 0;
      }

      else
      {
        v72 = v65 + 1;
      }

      *(&v98 + v63) = v72;
      v16 = v98;
      v17 = SHIDWORD(v98);
      v18 = v99;
      v15 = SHIDWORD(v99);
      v73 = (v51 * (*(v13 + 8 * v17 + 4) - *(v13 + 8 * v15 + 4))) + ((*(v13 + 8 * v17) - *(v13 + 8 * v15)) * v48);
      v74 = (v13 + 8 * v98);
      v75 = (v48 * (*(v13 + 8 * v18 + 4) - v74[1])) - ((*(v13 + 8 * v18) - *v74) * v51);
      if ((v73 * v75) <= v52)
      {
        v56 = v48;
        v55 = (v51 * (*(v13 + 8 * SHIDWORD(v98) + 4) - *(v13 + 8 * SHIDWORD(v99) + 4))) + ((*(v13 + 8 * SHIDWORD(v98)) - *(v13 + 8 * SHIDWORD(v99))) * v48);
        v54 = v51;
        v53 = (v48 * (*(v13 + 8 * v99 + 4) - v74[1])) - ((*(v13 + 8 * v99) - *v74) * v51);
        v50 = v98;
        v49 = HIDWORD(v99);
        v52 = v73 * v75;
      }

      --v12;
    }

    while (v12);
    v76 = (v54 * *(v13 + 8 * v49 + 4)) + (v56 * *(v13 + 8 * v49));
    v77 = (v56 * *(v13 + 8 * v50 + 4)) - (v54 * *(v13 + 8 * v50));
    v78 = 1.0 / ((v54 * v54) + (v56 * v56));
    v79 = v56 * v55;
    v80 = v55 * v54;
    v81 = -(v54 * v53);
    v82 = v56 * v53;
    if (*&v94[0] != &v94[1] && *&v94[0])
    {
      operator delete[]();
    }

    *a2 = (v78 * ((v76 * v56) - (v77 * v54))) + ((v79 - (v54 * v53)) * 0.5);
    *(a2 + 4) = (v78 * ((v54 * v76) + (v56 * v77))) + ((v80 + v82) * 0.5);
    v83 = sqrt(v80 * v80 + v79 * v79);
    v84 = sqrt(v82 * v82 + v81 * v81);
    *(a2 + 8) = v83;
    *(a2 + 12) = v84;
    v46 = atan2(v80, v79);
    v47 = 16;
    goto LABEL_78;
  }

  if (v11 == 1)
  {
    v46 = *(*&v88[16] + 4);
    *a2 = **&v88[16];
    v47 = 4;
    goto LABEL_78;
  }

  if (v11 == 2)
  {
    v40 = **&v88[16];
    v41 = *(*&v88[16] + 8);
    *a2 = vmul_f32(vadd_f32(**&v88[16], v41), 0x3F0000003F000000);
    v42 = vsub_f32(v41, v40);
    v43 = v42.f32[0];
    v44 = v42.f32[1];
    v45 = sqrt(v44 * v44 + v43 * v43);
    *(a2 + 8) = v45;
    *(a2 + 12) = 0;
    v46 = atan2(v44, v43);
    v47 = 16;
LABEL_78:
    *(a2 + v47) = v46;
  }

  v85 = (*(a2 + 16) * 180.0) / 3.14159265;
  *(a2 + 16) = v85;
  if (*&v88[56] && atomic_fetch_add((*&v88[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v88);
  }

  *&v88[56] = 0;
  memset(&v88[16], 0, 32);
  if (*&v88[4] >= 1)
  {
    v86 = 0;
    v87 = v89;
    do
    {
      *&v87[4 * v86++] = 0;
    }

    while (v86 < *&v88[4]);
  }

  if (v90 != v91)
  {
    j__free(v90);
  }

  if (v92[2])
  {
    sub_1002ACC1C(v92);
  }
}

void sub_10035C2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035C3AC(uint64_t a1@<X0>, int *a2@<X8>)
{
  sub_1002ACE7C(v20, &off_10047AB88);
  if (sub_100271148(a1) == 0x10000)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(v4 + 16);
    v12 = *v4;
    v13 = v6;
    v14 = *(v4 + 32);
    v7 = *(v4 + 56);
    v15 = *(v4 + 48);
    v16 = v7;
    v17 = &v12 + 8;
    v18 = v19;
    v19[0] = 0;
    v19[1] = 0;
    if (v7)
    {
      atomic_fetch_add((v7 + 20), 1u);
      if (*(v4 + 4) <= 2)
      {
LABEL_4:
        v8 = *(v4 + 72);
        v9 = v18;
        *v18 = *v8;
        v9[1] = v8[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v5) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v12) = 0;
    sub_100269B58(&v12, v4);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v12);
  }

LABEL_8:
  if ((v12 & 7) != 0)
  {
    sub_10035C8B4(a2, &v12);
  }

  else
  {
    sub_10035C56C(a2, &v12);
  }

  if (v16 && atomic_fetch_add((v16 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v12);
  }

  v16 = 0;
  v13 = 0u;
  v14 = 0u;
  if (SDWORD1(v12) >= 1)
  {
    v10 = 0;
    v11 = v17;
    do
    {
      *&v11[4 * v10++] = 0;
    }

    while (v10 < SDWORD1(v12));
  }

  if (v18 != v19)
  {
    j__free(v18);
  }

  if (v20[2])
  {
    sub_1002ACC1C(v20);
  }
}

void sub_10035C53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 32);
  _Unwind_Resume(a1);
}

int *sub_10035C56C(int *result, uint64_t a2)
{
  v2 = result;
  if ((*a2 & 0xFFE) != 0)
  {
    v44[0] = 0;
    v44[1] = 0;
    qmemcpy(sub_1002A80E0(v44, 39), "img.depth() <= 1 && img.channels() == 1", 39);
    sub_1002A8980(-215, v44, "maskBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 859);
  }

  v3 = *(a2 + 64);
  v5 = *v3;
  v4 = v3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = -*(a2 + 16);
    v9 = v7 + 3;
    v10 = -1;
    v11 = **(a2 + 72);
    v12 = v7;
    v13 = v4;
    v14 = -1;
    v15 = -1;
    while (1)
    {
      if (v4 >= (v8 + (v9 & 0xFFFFFFFC)))
      {
        v17 = v8 + (v9 & 0xFFFFFFFC);
      }

      else
      {
        v17 = v4;
      }

      v18 = v7 + v11 * v6;
      v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v20 = v19 - v18;
      if (v4 >= v19 - v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = v4;
      }

      if (v21 < 1)
      {
LABEL_24:
        v16 = 0;
        if (v4 <= v20)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v22 = 0;
        while (!*(v12 + v22))
        {
          if (++v22 >= v21)
          {
            goto LABEL_24;
          }
        }

        if (v22 < v13)
        {
          v13 = v22;
        }

        if (v22 > v15)
        {
          v15 = v22;
        }

        v16 = 1;
        if (v4 <= v20)
        {
          goto LABEL_8;
        }
      }

      v23 = v13 - v21;
      if (v23 >= 4)
      {
        v24 = 0;
        do
        {
          if (*(v19 + v24))
          {
            break;
          }

          v24 += 4;
        }

        while (v23 - 4 >= v24);
      }

      else
      {
        LODWORD(v24) = 0;
      }

      v25 = v15 - v21;
      if (v24 < v23)
      {
        v26 = (v19 + v24);
        while (!*v26++)
        {
          LODWORD(v24) = v24 + 1;
          if (v23 <= v24)
          {
            goto LABEL_52;
          }
        }

        if (v24 > v25)
        {
          v25 = v24;
        }

        v16 = 1;
        v23 = v24;
      }

LABEL_52:
      v32 = v4 - v17 - 1;
      v33 = v4 + ~v17;
      v34 = v24 - 1;
      if (v24 - 1 <= v25)
      {
        v34 = v25;
      }

      v35 = v34;
      while (1)
      {
        LODWORD(v36) = v33;
        v37 = v33 & 3;
        if (v32 <= v35 || v37 == 3)
        {
          break;
        }

        v38 = *(v19 + v32);
        --v33;
        --v32;
        if (v38)
        {
          goto LABEL_65;
        }
      }

      if (v32 > v35 && v37 == 3 && v35 + 3 < v33)
      {
        do
        {
          if (*(v19 - 3 + v33))
          {
            break;
          }

          v33 -= 4;
        }

        while (v33 > v35 + 3);
        LODWORD(v36) = v33;
      }

LABEL_65:
      if (v36 > v35)
      {
        v36 = v36;
        while (!*(v19 + v36))
        {
          if (--v36 <= v35)
          {
            goto LABEL_5;
          }
        }

        v16 = 1;
        v25 = v36;
        goto LABEL_7;
      }

LABEL_5:
      if (!v16)
      {
        for (i = v24 & 0x7FFFFFFC; v36 - 3 >= i; i += 4)
        {
          if (*(v19 + i))
          {
            break;
          }
        }

        if (i > v36)
        {
LABEL_48:
          v16 = 0;
          goto LABEL_7;
        }

        v29 = i - 1;
        v30 = (v19 + i);
        while (!*v30++)
        {
          if (v36 <= ++v29)
          {
            goto LABEL_48;
          }
        }
      }

      v16 = 1;
LABEL_7:
      v13 = v23 + v21;
      v15 = v25 + v21;
LABEL_8:
      if (v10 >= 0)
      {
        result = v10;
      }

      else
      {
        result = v6;
      }

      if (v16)
      {
        v14 = v6;
        v10 = result;
      }

      ++v6;
      v8 -= v11;
      v9 += v11;
      v12 += v11;
      if (v6 == v5)
      {
        v39 = v15 + 1;
        v40 = v14 + 1;
        goto LABEL_73;
      }
    }
  }

  v39 = 0;
  v40 = 0;
  v10 = -1;
  v13 = v4;
LABEL_73:
  v41 = v13 < v4;
  if (v13 >= v4)
  {
    v42 = 0;
  }

  else
  {
    v42 = v10;
  }

  if (v41)
  {
    v43 = v13;
  }

  else
  {
    v43 = 0;
  }

  *v2 = v43;
  v2[1] = v42;
  v2[2] = v39 - v43;
  v2[3] = v40 - v42;
  return result;
}

unint64_t sub_10035C8B4(uint64_t a1, uint64_t a2)
{
  result = sub_10026F620(a2, 2, -1, 1);
  if ((result & 0x80000000) != 0 || (*a2 & 6) != 4)
  {
    v52[0] = 0;
    v52[1] = 0;
    qmemcpy(sub_1002A80E0(v52, 42), "npoints >= 0 && (depth == 5 || depth == 4)", 42);
    sub_1002A8980(-215, v52, "pointSetBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 741);
  }

  if (!result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    return result;
  }

  v5 = *(a2 + 16);
  v6 = *v5;
  if ((*a2 & 7) == 5)
  {
    *v7.i8 = veor_s8((*&vcltz_s32(v6) & 0x7FFFFFFF7FFFFFFFLL), v6);
    if (result < 2)
    {
      v9 = *v7.i8;
    }

    else
    {
      if (result >= 9)
      {
        v15 = (result - 1) & 0xFFFFFFFFFFFFFFF8;
        v8 = v15 | 1;
        v16 = vdupq_lane_s32(*v7.i8, 0);
        v7 = vdupq_lane_s32(*v7.i8, 1);
        v17 = (v5 + 5);
        v18 = v15;
        v19 = v16;
        v20 = v7;
        v21 = v16;
        v22 = v16;
        v23 = v7;
        v24 = v7;
        do
        {
          v25 = v17 - 8;
          v53 = vld2q_f32(v25);
          v55 = vld2q_f32(v17);
          v26 = veorq_s8((*&vcltzq_s32(v53.val[0]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v53.val[0]);
          v27 = veorq_s8((*&vcltzq_s32(v55.val[0]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v55.val[0]);
          v53.val[0] = veorq_s8((*&vcltzq_s32(v53.val[1]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v53.val[1]);
          v53.val[1] = veorq_s8((*&vcltzq_s32(v55.val[1]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v55.val[1]);
          v16 = vminq_s32(v16, v26);
          v19 = vminq_s32(v19, v27);
          v21 = vmaxq_s32(v21, v26);
          v22 = vmaxq_s32(v22, v27);
          v7 = vminq_s32(v7, v53.val[0]);
          v20 = vminq_s32(v20, v53.val[1]);
          v23 = vmaxq_s32(v23, v53.val[0]);
          v24 = vmaxq_s32(v24, v53.val[1]);
          v17 += 16;
          v18 -= 8;
        }

        while (v18);
        v9.i32[0] = vminvq_s32(vminq_s32(v16, v19));
        v28 = vminvq_s32(vminq_s32(v7, v20));
        v7.i64[0] = __PAIR64__(vmaxvq_s32(vmaxq_s32(v23, v24)), vmaxvq_s32(vmaxq_s32(v21, v22)));
        v9.i32[1] = v28;
        if (result - 1 == v15)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v8 = 1;
        v9 = *v7.i8;
      }

      v29 = &v5[v8];
      v30 = result - v8;
      do
      {
        v31 = *v29++;
        v32 = veor_s8((*&vcltz_s32(v31) & 0x7FFFFFFF7FFFFFFFLL), v31);
        v9 = vmin_s32(v9, v32);
        *v7.i8 = vmax_s32(*v7.i8, v32);
        --v30;
      }

      while (v30);
    }

LABEL_20:
    v7.u64[1] = v9;
    v33 = vrev64q_s32(v7);
    v34 = veorq_s8((*&vcltzq_s32(v33) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v33);
    v35 = vcvtq_s32_f32(v34);
    *v34.f32 = vmovn_s32(vcgtq_f32(vcvtq_f32_s32(v35), v34));
    v10 = v35.i32[3] - (v34.i8[6] & 1);
    v11 = v35.i32[2] - (v34.i8[4] & 1);
    v13 = v35.i32[1] - (v34.i8[2] & 1);
    v14 = v35.i32[0] - (v34.i8[0] & 1);
    goto LABEL_34;
  }

  v10 = *v5;
  v11 = HIDWORD(*v5);
  if (result >= 2)
  {
    if (result >= 9)
    {
      v36 = (result - 1) & 0xFFFFFFFFFFFFFFF8;
      v12 = v36 | 1;
      v37 = vdupq_lane_s32(v6, 0);
      v38 = vdupq_lane_s32(v6, 1);
      v39 = (v5 + 5);
      v40 = v36;
      v41 = v37;
      v42 = v38;
      v43 = v37;
      v44 = v37;
      v45 = v38;
      v46 = v38;
      do
      {
        v47 = v39 - 8;
        v54 = vld2q_f32(v47);
        v56 = vld2q_f32(v39);
        v37 = vminq_s32(v37, v54.val[0]);
        v41 = vminq_s32(v41, v56.val[0]);
        v43 = vmaxq_s32(v43, v54.val[0]);
        v44 = vmaxq_s32(v44, v56.val[0]);
        v38 = vminq_s32(v38, v54.val[1]);
        v42 = vminq_s32(v42, v56.val[1]);
        v45 = vmaxq_s32(v45, v54.val[1]);
        v46 = vmaxq_s32(v46, v56.val[1]);
        v39 += 16;
        v40 -= 8;
      }

      while (v40);
      v10 = vminvq_s32(vminq_s32(v37, v41));
      v11 = vminvq_s32(vminq_s32(v38, v42));
      v13 = vmaxvq_s32(vmaxq_s32(v43, v44));
      v14 = vmaxvq_s32(vmaxq_s32(v45, v46));
      if (result - 1 == v36)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 1;
      v13 = *v5;
      v14 = HIDWORD(*v5);
    }

    v48 = &v5[v12] + 1;
    v49 = result - v12;
    do
    {
      v50 = *(v48 - 1);
      v51 = *v48;
      if (v10 >= v50)
      {
        v10 = *(v48 - 1);
      }

      if (v13 <= v50)
      {
        v13 = *(v48 - 1);
      }

      if (v11 >= v51)
      {
        v11 = *v48;
      }

      if (v14 <= v51)
      {
        v14 = *v48;
      }

      v48 += 2;
      --v49;
    }

    while (v49);
    goto LABEL_34;
  }

  v14 = HIDWORD(*v5);
  v13 = *v5;
LABEL_34:
  *a1 = v10;
  *(a1 + 4) = v11;
  *(a1 + 8) = v13 - v10 + 1;
  *(a1 + 12) = v14 - v11 + 1;
  return result;
}

uint64_t sub_10035CC70(int *a1, int a2)
{
  v2 = a1;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  if (a1 && HIWORD(*a1) == 17049)
  {
    if ((*a1 & 0xFFE) != 0xC)
    {
      v19 = 0uLL;
      qmemcpy(sub_1002A80E0(&v19, 25), "Unsupported sequence type", 25);
      sub_1002A8980(-5, &v19, "cvBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 1316);
    }

    if (a1[1] >= 128)
    {
      if (!a2)
      {
        v11 = (a1 + 24);
        return *v11;
      }

      v3 = 0;
      if (!a1[10])
      {
        goto LABEL_8;
      }

LABEL_13:
      *&v19 = v20;
      *(&v19 + 1) = 136;
      sub_10026AD20(v2, 0, 0, &v19, v13);
      sub_10035C8B4(v18, v13);
      v4 = v18[1];
      v30 = v18[0];
      if (v14 && atomic_fetch_add((v14 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v13);
      }

      v14 = 0;
      memset(&v13[1], 0, 32);
      if (SDWORD1(v13[0]) >= 1)
      {
        v6 = 0;
        v7 = v15;
        do
        {
          *(v7 + 4 * v6++) = 0;
        }

        while (v6 < SDWORD1(v13[0]));
      }

      if (v16 != &v17)
      {
        j__free(v16);
      }

      if (v19 != v20 && v19 != 0)
      {
        operator delete[]();
      }

      goto LABEL_26;
    }
  }

  else
  {
    v5 = sub_1001FD9EC(a1, v25, 0, 0);
    if ((*v5 & 0xFFF) < 2)
    {
      sub_10026AD20(v5, 0, 0, 0, &v19);
      sub_10035C56C(v13, &v19);
      v30 = *&v13[0];
      if (v21 && atomic_fetch_add((v21 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v19);
      }

      v21 = 0;
      memset(v20, 0, sizeof(v20));
      if (SDWORD1(v19) >= 1)
      {
        v9 = 0;
        v10 = v22;
        do
        {
          *(v10 + 4 * v9++) = 0;
        }

        while (v9 < SDWORD1(v19));
      }

      if (v23 != &v24)
      {
        j__free(v23);
      }

      goto LABEL_37;
    }

    if ((*v5 & 0xFFF) - 12 > 1)
    {
      v19 = 0uLL;
      qmemcpy(sub_1002A80E0(&v19, 56), "The image/matrix format is not supported by the function", 56);
      sub_1002A8980(-210, &v19, "cvBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 1336);
    }

    v2 = sub_100375C9C(0, v5, v27, v26);
  }

  v3 = 1;
  if (v2[10])
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = 0;
LABEL_26:
  if ((v3 & 1) == 0)
  {
    *(v2 + 12) = v30;
    *(v2 + 13) = v4;
  }

LABEL_37:
  v11 = &v30;
  return *v11;
}

void sub_10035CFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10035D028(uint64_t a1, unsigned __int16 a2, int a3, int a4)
{
  v8 = a4;
  v9 = a3;
  if (((a2 ^ a1) & 0xFF8) != 0)
  {
    v7[0] = 0;
    v7[1] = 0;
    qmemcpy(sub_1002A80E0(v7, 90), "((((sumType) & ((512 - 1) << 3)) >> 3) + 1) == ((((srcType) & ((512 - 1) << 3)) >> 3) + 1)", 90);
    sub_1002A8980(-215, v7, "getRowSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1302);
  }

  v5 = a1 & 7;
  if (a4 < 0)
  {
    v8 = a3 / 2;
    v6 = a2 & 7;
    if ((a1 & 7) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = a2 & 7;
    if ((a1 & 7) != 0)
    {
      goto LABEL_9;
    }
  }

  if (v6 == 4)
  {
    operator new();
  }

LABEL_9:
  if ((a1 & 7) == 0 && v6 == 2)
  {
    operator new();
  }

  if ((a1 & 7) == 0 && v6 == 6)
  {
    operator new();
  }

  if (v5 == 2 && v6 == 4)
  {
    operator new();
  }

  if (v5 == 2 && v6 == 6)
  {
    operator new();
  }

  if (v5 == 3 && v6 == 4)
  {
    sub_10035D810();
  }

  if (v5 == 4 && v6 == 4)
  {
    sub_10035D960();
  }

  if (v5 == 3 && v6 == 6)
  {
    sub_10035DAB0();
  }

  if (v5 == 5 && v6 == 6)
  {
    sub_10035DC00();
  }

  if (v5 == 6 && v6 == 6)
  {
    sub_10035DD50();
  }

  sub_1002A8688(v7, "Unsupported combination of source format (=%d), and buffer format (=%d)", a1, HIDWORD(a1));
  sub_1002A8980(-213, v7, "getRowSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1330);
}

void sub_10035D72C()
{
  sub_1002A8124(&v1);
  *v0 = 0;
  v0[1] = 0;
}

void sub_10035D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10035D8F0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DA40(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DB90(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DCE0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DE30(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_10035DEA0(uint64_t a1, unsigned __int16 a2, int a3, int a4, double a6)
{
  v10 = a4;
  v11 = a3;
  v9 = a6;
  if (((a2 ^ a1) & 0xFF8) != 0)
  {
    v8 = 0uLL;
    qmemcpy(sub_1002A80E0(&v8, 90), "((((sumType) & ((512 - 1) << 3)) >> 3) + 1) == ((((dstType) & ((512 - 1) << 3)) >> 3) + 1)", 90);
    sub_1002A8980(-215, &v8, "getColumnSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1340);
  }

  v6 = a1 & 7;
  v7 = a2 & 7;
  if (a4 < 0)
  {
    v10 = v11 / 2;
    if (v6 != 4)
    {
      goto LABEL_9;
    }
  }

  else if (v6 != 4)
  {
    goto LABEL_9;
  }

  if ((a2 & 7) == 0)
  {
    operator new();
  }

LABEL_9:
  if (v6 == 2 && (a2 & 7) == 0)
  {
    sub_10035E6BC();
  }

  if (v6 == 6 && (a2 & 7) == 0)
  {
    operator new();
  }

  if (v6 == 4 && v7 == 2)
  {
    operator new();
  }

  if (v6 == 6 && v7 == 2)
  {
    operator new();
  }

  if (v6 == 4 && v7 == 3)
  {
    sub_10035E830();
  }

  if (v6 == 6 && v7 == 3)
  {
    sub_10035E9A0();
  }

  if (v6 == 4 && v7 == 4)
  {
    sub_10035EB10();
  }

  if (v6 == 4 && v7 == 5)
  {
    sub_10035EC80();
  }

  if (v6 == 6 && v7 == 5)
  {
    sub_10035EDF0();
  }

  if (v6 == 4 && v7 == 6)
  {
    sub_10035EF60();
  }

  if (v6 == 6 && v7 == 6)
  {
    sub_10035F0D0();
  }

  sub_1002A8688(&v8, "Unsupported combination of sum format (=%d), and destination format (=%d)", a1, HIDWORD(a1));
  sub_1002A8980(-213, &v8, "getColumnSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1372);
}

void sub_10035E618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10035E930(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035EAA0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035EC10(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035ED80(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035EEF0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035F060(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035F1D0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_10035F240(uint64_t a1, unsigned __int16 a2, int *a3, int *a4, int a5)
{
  v6 = a1 & 7;
  if ((a1 & 7) != 0)
  {
    if (v6 > 4)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 7) == 0 && a3[1] * *a3 < 257)
  {
    v7 = 2;
    goto LABEL_17;
  }

  if (!a5 || (v6 != 2 ? (v8 = 0x10000) : (v8 = 0x8000), (a1 & 7) != 0 ? (v9 = v8) : (v9 = 0x800000), a3[1] * *a3 <= v9))
  {
    v7 = 4;
LABEL_17:
    sub_10035D028(a1, v7 | a1 & 0xFF8, *a3, *a4);
  }

LABEL_15:
  v7 = 6;
  goto LABEL_17;
}

void sub_10035F520(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t *a5, int a6, char a7)
{
  sub_1002ACE7C(&v46, &off_10047ABA8);
  if (sub_100271148(a1) == 0x10000)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v40[0] = *v14;
    v40[1] = v16;
    v40[2] = *(v14 + 32);
    v17 = *(v14 + 56);
    v41 = *(v14 + 48);
    v42 = v17;
    v43 = v40 + 1;
    v44 = v45;
    v45[0] = 0;
    v45[1] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_4:
        v18 = *(v14 + 72);
        v19 = v44;
        *v44 = *v18;
        v19[1] = v18[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v40[0]) = 0;
    sub_100269B58(v40, v14);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, v40);
  }

LABEL_8:
  v20 = v40[0];
  if (a3 >= 0)
  {
    v20 = a3;
  }

  *&v34[0] = vrev64_s32(*v43);
  sub_100275370(a2, v34, v40[0] & 0xFF8 | v20 & 7u, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, v34);
    goto LABEL_17;
  }

  v21 = *(a2 + 8);
  v22 = *v21;
  v23 = *(v21 + 16);
  v34[0] = *v21;
  v34[1] = v23;
  v34[2] = *(v21 + 32);
  v24 = *(v21 + 56);
  v35 = *(v21 + 48);
  v36 = v24;
  v37 = v34 + 8;
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  if (v24)
  {
    atomic_fetch_add((v24 + 20), 1u);
    if (*(v21 + 4) <= 2)
    {
LABEL_13:
      v25 = *(v21 + 72);
      v26 = v38;
      *v38 = *v25;
      v26[1] = v25[1];
LABEL_17:
      if ((a7 & 0x10) != 0 && a6)
      {
        v27 = DWORD2(v40[0]);
        if (DWORD2(v40[0]) == 1)
        {
          a4[1] = 1;
        }

        v28 = HIDWORD(v40[0]);
        if (HIDWORD(v40[0]) == 1)
        {
          *a4 = 1;
        }

        v33 = 0;
        v32 = __PAIR64__(v27, v28);
      }

      else
      {
        v33 = 0;
        v32 = vrev64_s32(*(v40 + 8));
        if ((a7 & 0x10) == 0)
        {
          sub_10026BBAC(v40, &v32, &v33);
        }
      }

      v29 = *a4;
      v30 = *a5;
      v31 = v29;
      sub_10035F240(v40[0] & 0xFFF, v34[0] & 0xFFF, &v31, &v30, a6);
    }
  }

  else if (SDWORD1(v22) <= 2)
  {
    goto LABEL_13;
  }

  DWORD1(v34[0]) = 0;
  sub_100269B58(v34, v21);
  goto LABEL_17;
}

void sub_10035F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_100006D14(&a15);
  sub_100006D14(va);
  sub_1001D8BF4(v26 - 80);
  _Unwind_Resume(a1);
}

void sub_10035F958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_100006D14(va);
  sub_1001D8BF4(v26 - 80);
  _Unwind_Resume(a1);
}

void sub_10035F98C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char a5)
{
  sub_1002ACE7C(&v13, &off_10047ABC8);
  v10 = *a3;
  v11 = *a4;
  v12 = v10;
  sub_10035F520(a1, a2, -1, &v12, &v11, 1, a5);
}

void sub_10035FA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_10035FA38(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a1 < 8 && (a1 & 0x80000001) == 1 && a4 <= 0.0;
  if ((a2 - 5) >= 2)
  {
    __src[0] = 0;
    __src[1] = 0;
    qmemcpy(sub_1002A80E0(__src, 24), "ktype == 5 || ktype == 6", 24);
    sub_1002A8980(-215, __src, "getGaussianKernel", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1726);
  }

  *a3 = 1124007936;
  *(a3 + 4) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 64) = a3 + 8;
  *(a3 + 72) = a3 + 80;
  *(a3 + 88) = 0;
  __src[0] = a1 | 0x100000000;
  sub_100268ED0(a3, 2, __src, a2 & 0xFFF);
  v10 = (a1 - 1);
  v11 = (v10 * 0.5 + -1.0) * 0.3 + 0.8;
  if (a4 > 0.0)
  {
    v11 = a4;
  }

  if (a1 < 1)
  {
    return;
  }

  v12 = *(a3 + 16);
  if (v9)
  {
    v13 = (&unk_1003EA650 + 28 * (a1 >> 1));
    v14 = *v13;
    if (a2 == 5)
    {
      *v12 = v14;
      v15 = v14 + 0.0;
      if (a1 != 1)
      {
        v16 = v13[1];
        *(v12 + 4) = v16;
        v15 = v15 + v16;
        if (a1 != 2)
        {
          v17 = v13[2];
          *(v12 + 8) = v17;
          v15 = v15 + v17;
          if (a1 != 3)
          {
            v18 = v13[3];
            *(v12 + 12) = v18;
            v15 = v15 + v18;
            if (a1 != 4)
            {
              v19 = v13[4];
              *(v12 + 16) = v19;
              v15 = v15 + v19;
              if (a1 != 5)
              {
                v20 = v13[5];
                *(v12 + 20) = v20;
                v15 = v15 + v20;
                if (a1 != 6)
                {
                  v21 = v13[6];
                  *(v12 + 24) = v21;
                  v15 = v15 + v21;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v26 = v14;
      *v12 = v26;
      v15 = v26 + 0.0;
      if (a1 != 1)
      {
        v27 = v13[1];
        *(v12 + 8) = v27;
        v15 = v15 + v27;
        if (a1 != 2)
        {
          v28 = v13[2];
          *(v12 + 16) = v28;
          v15 = v15 + v28;
          if (a1 != 3)
          {
            v29 = v13[3];
            *(v12 + 24) = v29;
            v15 = v15 + v29;
            if (a1 != 4)
            {
              v30 = v13[4];
              *(v12 + 32) = v30;
              v15 = v15 + v30;
              if (a1 != 5)
              {
                v31 = v13[5];
                *(v12 + 40) = v31;
                v15 = v15 + v31;
                if (a1 != 6)
                {
                  v32 = v13[6];
                  *(v12 + 48) = v32;
                  v15 = v15 + v32;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_42;
  }

  v22 = -v10;
  v23 = -0.5 / (v11 * v11);
  v93 = v22;
  v94 = v23;
  if (a2 == 5)
  {
    if (a1 >= 4)
    {
      v24 = a1 & 0x7FFFFFFC;
      v83 = vdupq_lane_s64(*&v22, 0);
      v35 = &_mh_execute_header;
      v36 = (v12 + 8);
      v15 = 0.0;
      __asm { FMOV            V0.2D, #0.5 }

      v81 = _Q0;
      v41 = v24;
      do
      {
        v42 = vadd_s32(v35, 0x200000002);
        v43.i64[0] = v35;
        v43.i64[1] = HIDWORD(v35);
        v44 = vcvtq_f64_u64(v43);
        v43.i64[0] = v42.u32[0];
        v43.i64[1] = v42.u32[1];
        v45 = vmlaq_f64(v44, v81, v83);
        v46 = vmlaq_f64(vcvtq_f64_u64(v43), v81, v83);
        __x = vmulq_f64(v45, vmulq_n_f64(v45, v23));
        v91 = vmulq_f64(v46, vmulq_n_f64(v46, v94));
        v88 = exp(__x.f64[1]);
        v47.f64[0] = exp(__x.f64[0]);
        v47.f64[1] = v88;
        v89 = v47;
        __x.f64[0] = exp(v91.f64[1]);
        v48.f64[0] = exp(v91.f64[0]);
        v48.f64[1] = __x.f64[0];
        v49 = vcvt_f32_f64(v89);
        *&v48.f64[0] = vcvt_f32_f64(v48);
        *(v36 - 1) = *&v49;
        *v36 = v48.f64[0];
        v50 = vcvtq_f64_f32(v49);
        v51 = vcvtq_f64_f32(*&v48.f64[0]);
        v15 = v15 + v50.f64[0] + v50.f64[1] + v51.f64[0] + v51.f64[1];
        v23 = v94;
        v35 = vadd_s32(v35, 0x400000004);
        v36 += 2;
        v41 -= 4;
      }

      while (v41);
      v25 = v93;
      if (v24 == a1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 = 0;
      v15 = 0.0;
      v25 = v22;
    }

    do
    {
      v52 = exp((v24 + v25 * 0.5) * (v23 * (v24 + v25 * 0.5)));
      v25 = v93;
      v23 = v94;
      *&v52 = v52;
      *(v12 + 4 * v24) = LODWORD(v52);
      v15 = v15 + *&v52;
      ++v24;
    }

    while (a1 != v24);
  }

  else
  {
    if (a1 > 3)
    {
      v33 = a1 & 0x7FFFFFFC;
      v80 = vdupq_lane_s64(*&v22, 0);
      v53 = &_mh_execute_header;
      v54 = (v12 + 16);
      v15 = 0.0;
      __asm { FMOV            V0.2D, #0.5 }

      v79 = _Q0;
      v56 = v33;
      do
      {
        v57 = vadd_s32(v53, 0x200000002);
        v58.i64[0] = v53;
        v58.i64[1] = HIDWORD(v53);
        v59 = vcvtq_f64_u64(v58);
        v58.i64[0] = v57.u32[0];
        v58.i64[1] = v57.u32[1];
        v60 = vmlaq_f64(v59, v79, v80);
        v61 = vmlaq_f64(vcvtq_f64_u64(v58), v79, v80);
        __xa = vmulq_f64(v60, vmulq_n_f64(v60, v23));
        v90 = vmulq_f64(v61, vmulq_n_f64(v61, v94));
        v92 = exp(__xa.f64[1]);
        v84 = exp(__xa.f64[0]);
        *&v62 = v84;
        *(&v62 + 1) = v92;
        __xb = v62;
        v82 = exp(v90.f64[1]);
        *&v63 = exp(v90.f64[0]);
        v23 = v94;
        *(&v63 + 1) = v82;
        *(v54 - 1) = __xb;
        *v54 = v63;
        v15 = v15 + v84 + v92 + *&v63 + v82;
        v53 = vadd_s32(v53, 0x400000004);
        v54 += 2;
        v56 -= 4;
      }

      while (v56);
      v34 = v93;
      if (v33 == a1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v33 = 0;
      v15 = 0.0;
      v34 = v22;
    }

    do
    {
      v64 = exp((v33 + v34 * 0.5) * (v23 * (v33 + v34 * 0.5)));
      v34 = v93;
      v23 = v94;
      *(v12 + 8 * v33) = v64;
      v15 = v15 + v64;
      ++v33;
    }

    while (a1 != v33);
  }

LABEL_42:
  v65 = 1.0 / v15;
  if (a2 != 5)
  {
    if (a1 > 3)
    {
      v67 = a1 & 0x7FFFFFFC;
      v74 = (v12 + 16);
      v75 = v67;
      do
      {
        v76 = vmulq_n_f64(*v74, v65);
        v74[-1] = vmulq_n_f64(v74[-1], v65);
        *v74 = v76;
        v74 += 2;
        v75 -= 4;
      }

      while (v75);
      if (v67 == a1)
      {
        return;
      }
    }

    else
    {
      v67 = 0;
    }

    v77 = (v12 + 8 * v67);
    v78 = a1 - v67;
    do
    {
      *v77 = v65 * *v77;
      ++v77;
      --v78;
    }

    while (v78);
    return;
  }

  if (a1 < 8)
  {
    v66 = 0;
LABEL_50:
    v71 = (v12 + 4 * v66);
    v72 = a1 - v66;
    do
    {
      v73 = v65 * *v71;
      *v71++ = v73;
      --v72;
    }

    while (v72);
    return;
  }

  v66 = a1 & 0x7FFFFFF8;
  v68 = (v12 + 16);
  v69 = v66;
  do
  {
    v70 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v68), v65)), vmulq_n_f64(vcvt_hight_f64_f32(*v68->f32), v65));
    *v68[-2].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v68[-2]), v65)), vmulq_n_f64(vcvt_hight_f64_f32(*v68[-2].f32), v65));
    *v68->f32 = v70;
    v68 += 4;
    v69 -= 8;
  }

  while (v69);
  if (v66 != a1)
  {
    goto LABEL_50;
  }
}

void sub_1003600C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003600F4(uint64_t a1, uint64_t a2, char a3, signed int *a4, double a5, double a6)
{
  v9 = a3 & 7;
  if (a6 <= 0.0)
  {
    v10 = a5;
  }

  else
  {
    v10 = a6;
  }

  v11 = *a4;
  if (a5 > 0.0 && v11 <= 0)
  {
    if ((a3 & 7) != 0)
    {
      v13 = 4;
    }

    else
    {
      v13 = 3;
    }

    v11 = rint(v13 * a5 * 2.0 + 1.0) | 1;
    *a4 = v11;
  }

  v14 = a4[1];
  if (v10 > 0.0 && v14 <= 0)
  {
    if ((a3 & 7) != 0)
    {
      v16 = 4;
    }

    else
    {
      v16 = 3;
    }

    v14 = rint(v10 * v16 * 2.0 + 1.0) | 1;
    a4[1] = v14;
  }

  if (v11 < 1 || (v11 & 1) == 0 || v14 < 1 || (v14 & 1) == 0)
  {
    *v53 = 0uLL;
    qmemcpy(sub_1002A80E0(v53, 84), "ksize.width > 0 && ksize.width % 2 == 1 && ksize.height > 0 && ksize.height % 2 == 1", 84);
    sub_1002A8980(-215, v53, "createGaussianKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1780);
  }

  if (a5 >= 0.0)
  {
    v20 = a5;
  }

  else
  {
    v20 = 0.0;
  }

  if (v10 >= 0.0)
  {
    v21 = v10;
  }

  else
  {
    v21 = 0.0;
  }

  if (v9 <= 5)
  {
    v9 = 5;
  }

  sub_10035FA38(v11, v9, v53, v20);
  if (v53 != a1)
  {
    v22 = *(a1 + 56);
    if (v22 && atomic_fetch_add((v22 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1);
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) >= 1)
    {
      v23 = 0;
      v24 = *(a1 + 64);
      do
      {
        *(v24 + 4 * v23++) = 0;
      }

      while (v23 < *(a1 + 4));
    }

    v25 = *&v53[4];
    v26 = *&v53[16];
    *a1 = *v53;
    *(a1 + 16) = v26;
    v27 = *&v53[48];
    *(a1 + 32) = *&v53[32];
    *(a1 + 48) = v27;
    v28 = *(a1 + 72);
    if (v28 == (a1 + 80))
    {
      v29 = v55;
      if (v25 <= 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      j__free(v28);
      *(a1 + 64) = a1 + 8;
      *(a1 + 72) = a1 + 80;
      v28 = (a1 + 80);
      v29 = v55;
      if (*&v53[4] <= 2)
      {
LABEL_51:
        *v28 = *v29;
        v28[1] = v29[1];
LABEL_57:
        *v53 = 1124007936;
        memset(&v53[4], 0, 60);
        goto LABEL_58;
      }
    }

    *(a1 + 64) = v54;
    *(a1 + 72) = v29;
    v54 = &v53[8];
    v55 = v56;
    goto LABEL_57;
  }

  if (*&v53[56] && atomic_fetch_add((*&v53[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v53);
  }

LABEL_58:
  *&v53[56] = 0;
  memset(&v53[16], 0, 32);
  if (*&v53[4] >= 1)
  {
    v30 = 0;
    v31 = v54;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < *&v53[4]);
  }

  if (v55 != v56)
  {
    j__free(v55);
  }

  v32 = a4[1];
  v33 = vabdd_f64(v20, v21);
  if (v32 == *a4 && v33 < 2.22044605e-16)
  {
    if (a2 == a1)
    {
      return;
    }

    v43 = *(a1 + 56);
    if (v43)
    {
      atomic_fetch_add((v43 + 20), 1u);
    }

    v44 = *(a2 + 56);
    if (v44 && atomic_fetch_add((v44 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a2);
    }

    *(a2 + 56) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    if (*(a2 + 4) <= 0)
    {
      *a2 = *a1;
      v48 = *(a1 + 4);
      if (v48 <= 2)
      {
LABEL_91:
        *(a2 + 4) = v48;
        *(a2 + 8) = *(a1 + 8);
        v49 = *(a1 + 72);
        v50 = *(a2 + 72);
        *v50 = *v49;
        v50[1] = v49[1];
LABEL_102:
        *(a2 + 16) = *(a1 + 16);
        *(a2 + 32) = *(a1 + 32);
        *(a2 + 48) = *(a1 + 48);
        return;
      }
    }

    else
    {
      v45 = 0;
      v46 = *(a2 + 64);
      do
      {
        *(v46 + 4 * v45++) = 0;
        v47 = *(a2 + 4);
      }

      while (v45 < v47);
      *a2 = *a1;
      if (v47 <= 2)
      {
        v48 = *(a1 + 4);
        if (v48 <= 2)
        {
          goto LABEL_91;
        }
      }
    }

    sub_100269B58(a2, a1);
    goto LABEL_102;
  }

  sub_10035FA38(v32, v9, v53, v21);
  if (v53 == a2)
  {
    if (*&v53[56] && atomic_fetch_add((*&v53[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v53);
    }

    goto LABEL_95;
  }

  v35 = *(a2 + 56);
  if (v35 && atomic_fetch_add((v35 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a2);
  }

  *(a2 + 56) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (*(a2 + 4) >= 1)
  {
    v36 = 0;
    v37 = *(a2 + 64);
    do
    {
      *(v37 + 4 * v36++) = 0;
    }

    while (v36 < *(a2 + 4));
  }

  v38 = *&v53[4];
  v39 = *&v53[16];
  *a2 = *v53;
  *(a2 + 16) = v39;
  v40 = *&v53[48];
  *(a2 + 32) = *&v53[32];
  *(a2 + 48) = v40;
  v41 = *(a2 + 72);
  if (v41 == (a2 + 80))
  {
    v42 = v55;
    if (v38 <= 2)
    {
      goto LABEL_76;
    }

LABEL_93:
    *(a2 + 64) = v54;
    *(a2 + 72) = v42;
    v54 = &v53[8];
    v55 = v56;
    goto LABEL_94;
  }

  j__free(v41);
  *(a2 + 64) = a2 + 8;
  *(a2 + 72) = a2 + 80;
  v41 = (a2 + 80);
  v42 = v55;
  if (*&v53[4] > 2)
  {
    goto LABEL_93;
  }

LABEL_76:
  *v41 = *v42;
  v41[1] = v42[1];
LABEL_94:
  *v53 = 1124007936;
  memset(&v53[4], 0, 60);
LABEL_95:
  *&v53[56] = 0;
  memset(&v53[16], 0, 32);
  if (*&v53[4] >= 1)
  {
    v51 = 0;
    v52 = v54;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < *&v53[4]);
  }

  if (v55 != v56)
  {
    j__free(v55);
  }
}

void sub_1003606DC(uint64_t a1, uint64_t a2, int *a3, char a4, double a5, double a6)
{
  sub_1002ACE7C(v66, &off_10047ABE8);
  v12 = sub_100271A88(a1, -1);
  sub_100271154(a1, -1, &v65);
  *v59 = v65;
  sub_100275370(a2, v59, v12, -1, 0, 0);
  if ((a4 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  if (HIDWORD(v65) == 1)
  {
    a3[1] = 1;
  }

  if (v65 == 1)
  {
    *a3 = 1;
  }

  else
  {
LABEL_6:
    v13 = *a3;
    if (*a3 != 1)
    {
      v14 = a3[1];
      goto LABEL_11;
    }
  }

  v14 = a3[1];
  if (v14 != 1)
  {
    v13 = 1;
LABEL_11:
    *v59 = 1124007936;
    *&v59[4] = 0u;
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v62 = &v59[8];
    v63 = v64;
    v64[0] = 0;
    v64[1] = 0;
    v55[0] = 1124007936;
    memset(&v55[1], 0, 60);
    v56 = &v55[2];
    v57 = v58;
    v58[0] = 0;
    v58[1] = 0;
    *&v49[0] = __PAIR64__(v14, v13);
    sub_1003600F4(v59, v55, v12, v49, a5, a6);
    if (sub_100271148(a1) == 0x10000)
    {
      v15 = *(a1 + 8);
      v16 = *v15;
      v17 = *(v15 + 16);
      v49[0] = *v15;
      v49[1] = v17;
      v49[2] = *(v15 + 32);
      v18 = *(v15 + 56);
      v50 = *(v15 + 48);
      v51 = v18;
      v52 = v49 + 8;
      v53 = v54;
      v54[0] = 0;
      v54[1] = 0;
      if (v18)
      {
        atomic_fetch_add((v18 + 20), 1u);
        if (*(v15 + 4) <= 2)
        {
LABEL_14:
          v19 = *(v15 + 72);
          v20 = v53;
          *v53 = *v19;
          v20[1] = v19[1];
          goto LABEL_18;
        }
      }

      else if (SDWORD1(v16) <= 2)
      {
        goto LABEL_14;
      }

      DWORD1(v49[0]) = 0;
      sub_100269B58(v49, v15);
    }

    else
    {
      sub_1002703C0(a1, 0xFFFFFFFFLL, v49);
    }

LABEL_18:
    if (sub_100271148(a2) == 0x10000)
    {
      v21 = *(a2 + 8);
      v22 = *v21;
      v23 = *(v21 + 16);
      v43[0] = *v21;
      v24 = *(v21 + 32);
      v43[1] = v23;
      v43[2] = v24;
      v25 = *(v21 + 56);
      v44 = *(v21 + 48);
      v45 = v25;
      v46 = v43 + 8;
      v47 = v48;
      v48[0] = 0;
      v48[1] = 0;
      if (v25)
      {
        atomic_fetch_add((v25 + 20), 1u);
        if (*(v21 + 4) <= 2)
        {
LABEL_21:
          v26 = *(v21 + 72);
          v27 = v47;
          *v47 = *v26;
          v27[1] = v26[1];
          goto LABEL_25;
        }
      }

      else if (SDWORD1(v22) <= 2)
      {
        goto LABEL_21;
      }

      DWORD1(v43[0]) = 0;
      sub_100269B58(v43, v21);
    }

    else
    {
      sub_1002703C0(a2, 0xFFFFFFFFLL, v43);
    }

LABEL_25:
    v42 = 0;
    v41 = vrev64_s32(*(v49 + 8));
    if ((a4 & 0x10) == 0)
    {
      sub_10026BBAC(v49, &v41, &v42);
    }

    v40 = 0;
    v38 = 16842752;
    v39 = v49;
    v35 = 33619968;
    v36 = v43;
    v37 = 0;
    v34 = 0;
    v32 = 16842752;
    v33 = v59;
    v31 = 0;
    v29 = 16842752;
    v30 = v55;
    v28 = -1;
    sub_100309920(&v38, &v35, v12 & 7, &v32, &v29, &v28, a4, 0.0);
  }

  sub_100274944(a1, a2);
  if (v66[2])
  {
    sub_1002ACC1C(v66);
  }
}

void sub_100360C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_100006D14(va);
  sub_100006D14(v49 - 200);
  sub_1001D8BF4(v49 - 96);
  _Unwind_Resume(a1);
}

void sub_100360CA8()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_100360CE0(uint64_t result, unsigned __int8 *a2, int32x4_t *a3, int a4, unsigned int a5, __n128 a6, __n128 a7, __n128 a8)
{
  v8 = *(result + 8);
  if (v8 == 3)
  {
    v23 = a5 * a4;
    if (v23 < 1)
    {
      return result;
    }

    v24 = (2 * a5);
    if (v23 < 4)
    {
      v25 = 0;
      goto LABEL_12;
    }

    v25 = 0;
    v47 = a3 + 4 * v23;
    v49 = &a2[a5 + v23] > a3 && &a2[a5] < v47;
    v51 = &a2[v23] > a3 && v47 > a2;
    v52 = &a2[v24] < v47 && &a2[v24 + v23] > a3;
    if (v52 || v49 || v51)
    {
      goto LABEL_12;
    }

    if (v23 >= 0x10)
    {
      v25 = v23 & 0x7FFFFFF0;
      v94 = v25;
      v95 = a3;
      v96 = a2;
      do
      {
        v97 = *(v96 + a5);
        v98 = vaddl_high_u8(v97, *v96);
        v99 = vaddl_u8(*v97.i8, *v96->i8);
        v100 = *(v96 + v24);
        v101 = vmovl_high_u8(v100);
        a7 = vmovl_u8(*v100.i8);
        v102 = vaddl_u16(*v98.i8, *v101.i8);
        v103 = vaddl_high_u16(v98, v101);
        v104 = vaddl_u16(*v99.i8, a7.n128_u64[0]);
        *(v95 + 32) = v102;
        *(v95 + 48) = v103;
        a6 = vaddl_high_u16(v99, a7);
        *v95 = v104;
        *(v95 + 16) = a6;
        v95 += 64;
        ++v96;
        v94 -= 16;
      }

      while (v94);
      if (v25 == v23)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_12:
        v26 = &a2[v25];
        v27 = &a3->i32[v25];
        v28 = v23 - v25;
        do
        {
          *v27++ = v26[a5] + *v26 + v26[v24];
          ++v26;
          --v28;
        }

        while (v28);
        return result;
      }
    }

    else
    {
      v25 = 0;
    }

    v105 = v25;
    v25 = v23 & 0x7FFFFFFC;
    v106 = &a2[v105];
    v107 = (a3 + 4 * v105);
    v108 = v105 - v25;
    do
    {
      a6.n128_u32[0] = *v106;
      a7.n128_u32[0] = *(v106 + a5);
      v109 = vmovl_u8(a7.n128_u64[0]).u64[0];
      v110 = vaddl_u16(v109, *&vmovl_u8(a6.n128_u64[0]));
      v109.i32[0] = *(v106 + v24);
      a7.n128_u64[0] = vmovl_u8(v109).u64[0];
      a6 = vaddw_u16(v110, a7.n128_u64[0]);
      *v107++ = a6;
      ++v106;
      v108 += 4;
    }

    while (v108);
    if (v25 == v23)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v8 != 5)
  {
    v29 = v8 * a5;
    v30 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v29 < 1)
          {
            v32 = 0uLL;
            goto LABEL_149;
          }

          if (v29 < 0x1D)
          {
            v31 = 0;
            v32 = 0uLL;
            goto LABEL_148;
          }

          v113 = ((v29 - 1) >> 2) + 1;
          if (v29 >= 0x3D)
          {
            v203 = 0uLL;
            v118 = v113 & 0x7FFFFFFFFFFFFFF0;
            v204 = 0uLL;
            v205 = v113 & 0x7FFFFFFFFFFFFFF0;
            v206 = 0uLL;
            v207 = a2;
            v208 = 0uLL;
            v209 = 0uLL;
            v210 = 0uLL;
            v211 = 0uLL;
            v212 = 0uLL;
            v213 = 0uLL;
            v214 = 0uLL;
            v215 = 0uLL;
            v216 = 0uLL;
            v217 = 0uLL;
            a8 = 0uLL;
            v218 = 0uLL;
            v219 = 0uLL;
            do
            {
              v253 = vld4q_s8(v207);
              v207 += 64;
              v220 = vmovl_u8(*v253.val[0].i8);
              v221 = vmovl_high_u8(v253.val[0]);
              v219 = vaddw_high_u16(v219, v221);
              v218 = vaddw_u16(v218, *v221.i8);
              a8 = vaddw_high_u16(a8, v220);
              v217 = vaddw_u16(v217, *v220.i8);
              v222 = vmovl_u8(*v253.val[1].i8);
              v223 = vmovl_high_u8(v253.val[1]);
              v216 = vaddw_high_u16(v216, v223);
              v215 = vaddw_u16(v215, *v223.i8);
              v214 = vaddw_high_u16(v214, v222);
              v213 = vaddw_u16(v213, *v222.i8);
              v224 = vmovl_u8(*v253.val[2].i8);
              v225 = vmovl_high_u8(v253.val[2]);
              v212 = vaddw_high_u16(v212, v225);
              v211 = vaddw_u16(v211, *v225.i8);
              v210 = vaddw_high_u16(v210, v224);
              v209 = vaddw_u16(v209, *v224.i8);
              v226 = vmovl_u8(*v253.val[3].i8);
              v253.val[0] = vmovl_high_u8(v253.val[3]);
              v208 = vaddw_high_u16(v208, v253.val[0]);
              v206 = vaddw_u16(v206, *v253.val[0].i8);
              v204 = vaddw_high_u16(v204, v226);
              v203 = vaddw_u16(v203, *v226.i8);
              v205 -= 16;
            }

            while (v205);
            v227 = vaddvq_s32(vaddq_s32(vaddq_s32(v203, v206), vaddq_s32(v204, v208)));
            v228 = vaddvq_s32(vaddq_s32(vaddq_s32(v213, v215), vaddq_s32(v214, v216)));
            v229 = vaddq_s32(v217, v218);
            a7 = vaddq_s32(a8, v219);
            a7.n128_u32[0] = vaddvq_s32(vaddq_s32(v229, a7));
            v32.i64[0] = __PAIR64__(v228, a7.n128_u32[0]);
            v230 = vaddvq_s32(vaddq_s32(vaddq_s32(v209, v211), vaddq_s32(v210, v212)));
            v32.i64[1] = __PAIR64__(v227, v230);
            if (v113 == v118)
            {
              goto LABEL_149;
            }

            if ((v113 & 8) == 0)
            {
              v31 = 4 * v118;
              do
              {
LABEL_148:
                a7.n128_u32[0] = *&a2[v31];
                a7.n128_u64[0] = vmovl_u8(a7.n128_u64[0]).u64[0];
                v32 = vaddw_u16(v32, a7.n128_u64[0]);
                v31 += 4;
              }

              while (v31 < v29);
              goto LABEL_149;
            }

            v114 = v227;
            v115 = v230;
            v116 = v228;
            v117 = a7.n128_u32[0];
          }

          else
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = 0;
          }

          v31 = 4 * (v113 & 0x7FFFFFFFFFFFFFF8);
          v119 = v114;
          v120 = v115;
          v121 = v116;
          v122 = v117;
          v123 = 0uLL;
          v124 = &a2[4 * v118];
          v125 = v118 - (v113 & 0x7FFFFFFFFFFFFFF8);
          v126 = 0uLL;
          v127 = 0uLL;
          v128 = 0uLL;
          do
          {
            v252 = vld4_s8(v124);
            v124 += 32;
            v129 = vmovl_u8(v252.val[0]);
            v128 = vaddw_high_u16(v128, v129);
            v122 = vaddw_u16(v122, *v129.i8);
            v130 = vmovl_u8(v252.val[1]);
            v127 = vaddw_high_u16(v127, v130);
            v121 = vaddw_u16(v121, *v130.i8);
            v131 = vmovl_u8(v252.val[2]);
            v126 = vaddw_high_u16(v126, v131);
            v120 = vaddw_u16(v120, *v131.i8);
            *v252.val[0].i8 = vmovl_u8(v252.val[3]);
            v123 = vaddw_high_u16(v123, *v252.val[0].i8);
            v119 = vaddw_u16(v119, v252.val[0]);
            v125 += 8;
          }

          while (v125);
          a7 = vaddq_s32(v120, v126);
          a8 = vaddq_s32(v121, v127);
          v32.i64[0] = __PAIR64__(vaddvq_s32(a8), vaddvq_s32(vaddq_s32(v122, v128)));
          v32.i64[1] = __PAIR64__(vaddvq_s32(vaddq_s32(v119, v123)), vaddvq_s32(a7));
          if (v113 != (v113 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_148;
          }

LABEL_149:
          *a3 = v32;
          if (v30 >= 1)
          {
            v231 = 0;
            v232 = &a2[v29];
            v233 = a3 + 1;
            do
            {
              a7.n128_u32[0] = *&v232[v231];
              a8.n128_u32[0] = *&a2[v231];
              a8.n128_u64[0] = vmovl_u8(a8.n128_u64[0]).u64[0];
              a7 = vsubl_u16(*&vmovl_u8(a7.n128_u64[0]), a8.n128_u64[0]);
              v32 = vaddq_s32(a7, v32);
              *v233++ = v32;
              v231 += 4;
            }

            while (v231 < v30);
          }

          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v59 = 0;
        v60 = a3->i64 + 4 * a5;
        while (v29 < 1)
        {
          v62 = 0;
          a3->i32[0] = 0;
          if (v30 >= 1)
          {
            goto LABEL_90;
          }

LABEL_83:
          ++v59;
          ++a2;
          a3 = (a3 + 4);
          v60 += 4;
          if (v59 == a5)
          {
            return result;
          }
        }

        v61 = 0;
        v62 = 0;
        do
        {
          v62 += a2[v61];
          v61 += a5;
        }

        while (v29 > v61);
        a3->i32[0] = v62;
        if (v30 < 1)
        {
          goto LABEL_83;
        }

LABEL_90:
        v63 = 0;
        do
        {
          v62 = v62 - a2[v63] + a2[v29 + v63];
          *(v60 + 4 * v63) = v62;
          result = v63 + a5;
          v63 = result;
        }

        while (result < v30);
        goto LABEL_83;
      }

      if (v29 < 1)
      {
        v56 = 0;
        v55 = 0;
        v54 = 0;
        goto LABEL_157;
      }

      if (v29 < 0x16)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        goto LABEL_155;
      }

      v111 = (v29 - 1) / 3u + 1;
      if (v29 >= 0x5E)
      {
        v132 = 0uLL;
        v112 = v111 & 0x7FFFFFE0;
        v133 = 0uLL;
        v134 = a2;
        v135 = 0uLL;
        v136 = v112;
        v137 = 0uLL;
        v138 = 0uLL;
        v139 = 0uLL;
        v140 = 0uLL;
        v141 = 0uLL;
        v142 = 0uLL;
        v143 = 0uLL;
        v144 = 0uLL;
        v145 = 0uLL;
        v146 = 0uLL;
        v147 = 0uLL;
        v148 = 0uLL;
        v149 = 0uLL;
        v150 = 0uLL;
        v151 = 0uLL;
        v152 = 0uLL;
        v248 = 0u;
        v153 = 0uLL;
        v154 = 0uLL;
        v155 = 0uLL;
        v156 = 0uLL;
        do
        {
          v242 = v133;
          v243 = v151;
          v244 = v144;
          v245 = v142;
          v246 = v152;
          v247 = v132;
          v157 = v134;
          v134 += 96;
          v250 = vld3q_s8(v157);
          v157 += 48;
          v158 = vmovl_u8(*v250.val[0].i8);
          v251 = vld3q_s8(v157);
          v159 = vmovl_high_u8(v250.val[0]);
          v160 = vmovl_u8(*v251.val[0].i8);
          v161 = vmovl_high_u8(v251.val[0]);
          v162 = vmovl_u8(*v250.val[1].i8);
          v163 = vmovl_high_u8(v250.val[1]);
          v164 = vmovl_u8(*v251.val[1].i8);
          v165 = vmovl_u8(*v250.val[2].i8);
          v250.val[0] = vmovl_high_u8(v250.val[2]);
          v250.val[1] = vmovl_high_u8(v251.val[1]);
          v250.val[2] = vmovl_u8(*v251.val[2].i8);
          v251.val[0] = vmovl_high_u8(v251.val[2]);
          v248 = vaddw_high_u16(v248, v159);
          v152 = vaddw_u16(v246, *v159.i8);
          v151 = vaddw_high_u16(v243, v158);
          v150 = vaddw_u16(v150, *v158.i8);
          v156 = vaddw_high_u16(v156, v161);
          v155 = vaddw_u16(v155, *v161.i8);
          v154 = vaddw_high_u16(v154, v160);
          v153 = vaddw_u16(v153, *v160.i8);
          v145 = vaddw_high_u16(v145, v163);
          v144 = vaddw_u16(v244, *v163.i8);
          v143 = vaddw_high_u16(v143, v162);
          v142 = vaddw_u16(v245, *v162.i8);
          v149 = vaddw_high_u16(v149, v250.val[1]);
          v148 = vaddw_u16(v148, *v250.val[1].i8);
          v147 = vaddw_high_u16(v147, v164);
          v146 = vaddw_u16(v146, *v164.i8);
          v137 = vaddw_high_u16(v137, v250.val[0]);
          v135 = vaddw_u16(v135, *v250.val[0].i8);
          v133 = vaddw_high_u16(v242, v165);
          v132 = vaddw_u16(v247, *v165.i8);
          v141 = vaddw_high_u16(v141, v251.val[0]);
          v140 = vaddw_u16(v140, *v251.val[0].i8);
          v139 = vaddw_high_u16(v139, v250.val[2]);
          v138 = vaddw_u16(v138, *v250.val[2].i8);
          v136 -= 32;
        }

        while (v136);
        v54 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v138, v132), vaddq_s32(v140, v135)), vaddq_s32(vaddq_s32(v139, v133), vaddq_s32(v141, v137))));
        v55 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v146, v142), vaddq_s32(v148, v144)), vaddq_s32(vaddq_s32(v147, v143), vaddq_s32(v149, v145))));
        v56 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v153, v150), vaddq_s32(v155, v152)), vaddq_s32(vaddq_s32(v154, v151), vaddq_s32(v156, v248))));
        if (v112 == v111)
        {
          goto LABEL_157;
        }

        if (((((v29 - 1) / 3u) + 1) & 0x18) == 0)
        {
          v53 = 3 * v112;
LABEL_155:
          v234 = &a2[v53 + 2];
          do
          {
            v56 += *(v234 - 2);
            v55 += *(v234 - 1);
            v235 = *v234;
            v234 += 3;
            v54 += v235;
            v53 += 3;
          }

          while (v53 < v29);
          goto LABEL_157;
        }
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v112 = 0;
      }

      v53 = 3 * (v111 & 0x7FFFFFF8);
      v166 = v54;
      v167 = v55;
      v168 = v56;
      v169 = 0uLL;
      v170 = v112 - (v111 & 0x7FFFFFF8);
      v171 = &a2[3 * v112];
      v172 = 0uLL;
      v173 = 0uLL;
      do
      {
        v249 = vld3_s8(v171);
        v171 += 24;
        v174 = vmovl_u8(v249.val[0]);
        v173 = vaddw_high_u16(v173, v174);
        v168 = vaddw_u16(v168, *v174.i8);
        v175 = vmovl_u8(v249.val[1]);
        v172 = vaddw_high_u16(v172, v175);
        v167 = vaddw_u16(v167, *v175.i8);
        v176 = vmovl_u8(v249.val[2]);
        v169 = vaddw_high_u16(v169, v176);
        v166 = vaddw_u16(v166, *v176.i8);
        v170 += 8;
      }

      while (v170);
      v54 = vaddvq_s32(vaddq_s32(v166, v169));
      v55 = vaddvq_s32(vaddq_s32(v167, v172));
      v56 = vaddvq_s32(vaddq_s32(v168, v173));
      if ((v111 & 0x7FFFFFF8) != v111)
      {
        goto LABEL_155;
      }

LABEL_157:
      a3->i32[0] = v56;
      a3->i32[1] = v55;
      a3->i32[2] = v54;
      if (v30 >= 1)
      {
        v236 = &a3[1].u32[1];
        v237 = &a2[v29 + 2];
        v238 = a2 + 1;
        v239 = 2;
        do
        {
          v56 = v56 - *(v238 - 1) + *(v237 - 2);
          v55 = v55 - *v238 + *(v237 - 1);
          v240 = *v237;
          v237 += 3;
          v54 = v54 - v238[1] + v240;
          *(v236 - 2) = v56;
          *(v236 - 1) = v55;
          v241 = v239 + 1;
          v239 += 3;
          *v236 = v54;
          v236 += 3;
          v238 += 3;
        }

        while (v241 < v30);
      }

      return result;
    }

    if (v29 < 1)
    {
      v58 = 0;
      goto LABEL_139;
    }

    if (v29 < 4)
    {
      v57 = 0;
      v58 = 0;
      goto LABEL_137;
    }

    if (v29 >= 0x20)
    {
      v177 = 0uLL;
      v57 = v29 & 0x7FFFFFE0;
      v178 = 0uLL;
      v179 = (a2 + 16);
      v180 = v57;
      v181 = 0uLL;
      v182 = 0uLL;
      v183 = 0uLL;
      v184 = 0uLL;
      v185 = 0uLL;
      v186 = 0uLL;
      do
      {
        v187 = *v179[-2].i8;
        v188 = vmovl_u8(*v187.i8);
        v189 = vmovl_high_u8(v187);
        v190 = vmovl_u8(*v179);
        v191 = vmovl_high_u8(*v179->i8);
        v182 = vaddw_high_u16(v182, v189);
        v181 = vaddw_u16(v181, *v189.i8);
        v178 = vaddw_high_u16(v178, v188);
        v177 = vaddw_u16(v177, *v188.i8);
        v186 = vaddw_high_u16(v186, v191);
        v185 = vaddw_u16(v185, *v191.i8);
        v184 = vaddw_high_u16(v184, v190);
        v183 = vaddw_u16(v183, *v190.i8);
        v179 += 4;
        v180 -= 32;
      }

      while (v180);
      a7 = vaddq_s32(vaddq_s32(v184, v178), vaddq_s32(v186, v182));
      v58 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v183, v177), vaddq_s32(v185, v181)), a7));
      if (v57 == v29)
      {
        goto LABEL_139;
      }

      if ((v29 & 0x1C) == 0)
      {
LABEL_137:
        v197 = &a2[v57];
        v198 = v29 - v57;
        do
        {
          v199 = *v197++;
          v58 += v199;
          --v198;
        }

        while (v198);
        goto LABEL_139;
      }
    }

    else
    {
      v58 = 0;
      v57 = 0;
    }

    v192 = v57;
    v57 = v29 & 0x7FFFFFFC;
    v193 = v58;
    v194 = &a2[v192];
    v195 = v192 - v57;
    do
    {
      v196 = *v194;
      v194 += 4;
      a7.n128_u32[0] = v196;
      a7.n128_u64[0] = vmovl_u8(a7.n128_u64[0]).u64[0];
      v193 = vaddw_u16(v193, a7.n128_u64[0]);
      v195 += 4;
    }

    while (v195);
    v58 = vaddvq_s32(v193);
    if (v57 != v29)
    {
      goto LABEL_137;
    }

LABEL_139:
    a3->i32[0] = v58;
    if (v30 >= 1)
    {
      v200 = &a3->u32[1];
      do
      {
        v201 = a2[v29];
        v202 = *a2++;
        v58 = v58 - v202 + v201;
        *v200++ = v58;
        --v30;
      }

      while (v30);
    }

    return result;
  }

  v9 = a5 * a4;
  if (v9 < 1)
  {
    return result;
  }

  v10 = a5;
  v11 = (2 * a5);
  v12 = (3 * a5);
  v13 = (4 * a5);
  if (v9 < 4)
  {
    v14 = 0;
    goto LABEL_6;
  }

  v14 = 0;
  v33 = &a2[a5];
  v34 = &a2[v11];
  v35 = &a2[v12];
  v36 = &a2[v13];
  v37 = a3 + 4 * v9;
  v39 = &a2[v12 + v9] > a3 && v35 < v37;
  v41 = &a2[v11 + v9] > a3 && v34 < v37;
  v43 = &v33[v9] > a3 && v33 < v37;
  v45 = &a2[v9] > a3 && v37 > a2;
  v46 = v36 < v37 && &v36[v9] > a3;
  if (v46 || v39 || v41 || v43 || v45)
  {
    goto LABEL_6;
  }

  if (v9 >= 0x10)
  {
    v14 = v9 & 0x7FFFFFF0;
    result = v14;
    v64 = a3;
    v65 = a2;
    do
    {
      v66 = *(v65 + v10);
      v67 = vaddl_high_u8(v66, *v65);
      v68 = *(v65 + v11);
      v69 = vaddl_u8(*v66.i8, *v65->i8);
      v70 = vmovl_high_u8(v68);
      v71 = vmovl_u8(*v68.i8);
      v72 = vaddl_u16(*v69.i8, *v71.i8);
      v73 = vaddl_high_u16(v69, v71);
      v74 = vaddl_u16(*v67.i8, *v70.i8);
      v75 = vaddl_high_u16(v67, v70);
      v76 = *(v65 + v12);
      v77 = vmovl_u8(*v76.i8);
      v78 = vmovl_high_u8(v76);
      v79 = vaddw_high_u16(v75, v78);
      v80 = vaddw_u16(v74, *v78.i8);
      v81 = vaddw_high_u16(v73, v77);
      v82 = vaddw_u16(v72, *v77.i8);
      v83 = *(v65 + v13);
      v84 = vmovl_high_u8(v83);
      v85 = vmovl_u8(*v83.i8);
      a8 = vaddw_u16(v80, *v84.i8);
      a7 = vaddw_high_u16(v79, v84);
      *(v64 + 32) = a8;
      *(v64 + 48) = a7;
      a6 = vaddw_high_u16(v81, v85);
      *v64 = vaddw_u16(v82, *v85.i8);
      *(v64 + 16) = a6;
      v64 += 64;
      ++v65;
      result -= 16;
    }

    while (result);
    if (v14 == v9)
    {
      return result;
    }

    if ((v9 & 0xC) == 0)
    {
LABEL_6:
      v15 = 0;
      v16 = &a2[v14];
      v17 = &a2[v14 + v13];
      v18 = &a2[v14 + v12];
      v19 = &a2[v14 + v11];
      v20 = &a2[v14 + v10];
      v21 = v9 - v14;
      v22 = a3->i64 + 4 * v14;
      do
      {
        result = v17[v15];
        *(v22 + 4 * v15) = v20[v15] + v16[v15] + v19[v15] + v18[v15] + result;
        ++v15;
      }

      while (v21 != v15);
      return result;
    }
  }

  else
  {
    v14 = 0;
  }

  result = v9 & 0x7FFFFFFC;
  v86 = (a3 + 4 * v14);
  v87 = result;
  v88 = a2;
  do
  {
    a6.n128_u32[0] = *&v88[v14];
    a7.n128_u32[0] = *&v33[v14];
    v89 = vmovl_u8(a7.n128_u64[0]).u64[0];
    v90 = vaddl_u16(v89, *&vmovl_u8(a6.n128_u64[0]));
    v89.i32[0] = *&v34[v14];
    v91 = vmovl_u8(v89).u64[0];
    v92 = vaddw_u16(v90, v91);
    v91.i32[0] = *&v35[v14];
    a8.n128_u32[0] = *&v36[v14];
    v93 = vaddw_u16(v92, *&vmovl_u8(v91));
    a7.n128_u64[0] = vmovl_u8(a8.n128_u64[0]).u64[0];
    a6 = vaddw_u16(v93, a7.n128_u64[0]);
    *v86++ = a6;
    v88 += 4;
    v33 += 4;
    v34 += 4;
    v35 += 4;
    v36 += 4;
    v87 -= 4;
  }

  while (v14 != v87);
  v14 = v9 & 0x7FFFFFFC;
  if (result != v9)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003618D4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_10036195C()
{
  nullsub_1();

  operator delete();
}

double sub_100361994(uint64_t a1, uint8x16_t *a2, uint16x8_t *a3, int a4, unsigned int a5, uint16x8_t a6, __n128 a7, uint16x8_t a8)
{
  v8 = *(a1 + 8);
  if (v8 == 3)
  {
    v23 = a5 * a4;
    if (v23 < 1)
    {
      return *a6.i64;
    }

    v24 = (2 * a5);
    if (v23 < 8)
    {
      v25 = 0;
      goto LABEL_12;
    }

    v25 = 0;
    v46 = a3 + 2 * v23;
    v48 = &a2->i8[a5 + v23] > a3 && a2->u64 + a5 < v46;
    v50 = &a2->i8[v23] > a3 && v46 > a2;
    v51 = a2->u64 + v24 < v46 && &a2->i8[v24 + v23] > a3;
    if (v51 || v48 || v50)
    {
      goto LABEL_12;
    }

    if (v23 >= 0x20)
    {
      v25 = v23 & 0x7FFFFFE0;
      v90 = a2 + 1;
      v91 = a3 + 2;
      v92 = v25;
      do
      {
        v93 = v90[-1];
        v94 = *(&v90[-1] + a5);
        v95 = *(v90 + a5);
        v96 = vaddl_high_u8(v94, v93);
        v97 = vaddl_u8(*v94.i8, *v93.i8);
        v98 = vaddl_high_u8(v95, *v90);
        v99 = vaddl_u8(*v95.i8, *v90->i8);
        v100 = *(&v90[-1] + v24);
        v101 = *(v90 + v24);
        a6 = vaddw_u8(v97, *v100.i8);
        v91[-2] = a6;
        v91[-1] = vaddw_high_u8(v96, v100);
        *v91 = vaddw_u8(v99, *v101.i8);
        v91[1] = vaddw_high_u8(v98, v101);
        v91 += 4;
        v90 += 2;
        v92 -= 32;
      }

      while (v92);
      if (v25 == v23)
      {
        return *a6.i64;
      }

      if (((a5 * a4) & 0x18) == 0)
      {
LABEL_12:
        v26 = &a2->u8[v25];
        v27 = &a3->i16[v25];
        v28 = v23 - v25;
        do
        {
          *v27++ = v26[a5] + *v26 + v26[v24];
          ++v26;
          --v28;
        }

        while (v28);
        return *a6.i64;
      }
    }

    else
    {
      v25 = 0;
    }

    v102 = v25;
    v25 = v23 & 0x7FFFFFF8;
    v103 = &a2->i8[v102];
    v104 = (a3 + 2 * v102);
    v105 = v102 - v25;
    do
    {
      a6 = vaddw_u8(vaddl_u8(*(v103 + a5), *v103), *(v103 + v24));
      *v104++ = a6;
      ++v103;
      v105 += 8;
    }

    while (v105);
    if (v25 == v23)
    {
      return *a6.i64;
    }

    goto LABEL_12;
  }

  if (v8 != 5)
  {
    v29 = v8 * a5;
    v30 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v29 < 1)
          {
            a6.i64[0] = 0;
            goto LABEL_157;
          }

          if (v29 < 0x1D)
          {
            v31 = 0;
            a6 = 0uLL;
            goto LABEL_156;
          }

          v108 = ((v29 - 1) >> 2) + 1;
          if (v29 >= 0x7D)
          {
            v152 = 0uLL;
            v113 = v108 & 0x7FFFFFFFFFFFFFE0;
            v153 = 0uLL;
            v154 = a2 + 4;
            v155 = 0uLL;
            v156 = v108 & 0x7FFFFFFFFFFFFFE0;
            v157 = 0uLL;
            v158 = 0uLL;
            v159 = 0uLL;
            v160 = 0uLL;
            v161 = 0uLL;
            v162 = 0uLL;
            v163 = 0uLL;
            v164 = 0uLL;
            v165 = 0uLL;
            v166 = 0uLL;
            a8 = 0uLL;
            v167 = 0uLL;
            v168 = 0uLL;
            do
            {
              i8 = v154[-4].i8;
              v193 = vld4q_s8(i8);
              v194 = vld4q_s8(v154->i8);
              a8 = vaddw_high_u8(a8, v193.val[0]);
              v166 = vaddw_u8(v166, *v193.val[0].i8);
              v168 = vaddw_high_u8(v168, v194.val[0]);
              v167 = vaddw_u8(v167, *v194.val[0].i8);
              v163 = vaddw_high_u8(v163, v193.val[1]);
              v162 = vaddw_u8(v162, *v193.val[1].i8);
              v165 = vaddw_high_u8(v165, v194.val[1]);
              v164 = vaddw_u8(v164, *v194.val[1].i8);
              v159 = vaddw_high_u8(v159, v193.val[2]);
              v158 = vaddw_u8(v158, *v193.val[2].i8);
              v161 = vaddw_high_u8(v161, v194.val[2]);
              v160 = vaddw_u8(v160, *v194.val[2].i8);
              v153 = vaddw_high_u8(v153, v193.val[3]);
              v152 = vaddw_u8(v152, *v193.val[3].i8);
              v157 = vaddw_high_u8(v157, v194.val[3]);
              v155 = vaddw_u8(v155, *v194.val[3].i8);
              v154 += 8;
              v156 -= 32;
            }

            while (v156);
            v170 = vaddvq_s16(vaddq_s16(vaddq_s16(v155, v152), vaddq_s16(v157, v153)));
            v171 = vaddvq_s16(vaddq_s16(vaddq_s16(v164, v162), vaddq_s16(v165, v163)));
            v172 = vaddq_s16(v167, v166);
            a7 = vaddq_s16(v168, a8);
            a7.n128_u16[0] = vaddvq_s16(vaddq_s16(v172, a7));
            a6 = a7;
            a6.i16[1] = v171;
            v173 = vaddvq_s16(vaddq_s16(vaddq_s16(v160, v158), vaddq_s16(v161, v159)));
            a6.i16[2] = v173;
            a6.i16[3] = v170;
            if (v108 == v113)
            {
              goto LABEL_157;
            }

            if ((v108 & 0x18) == 0)
            {
              v31 = 4 * v113;
              do
              {
LABEL_156:
                a7.n128_u32[0] = a2->u32[v31 / 4];
                a6 = vaddw_u8(a6, a7.n128_u64[0]);
                v31 += 4;
              }

              while (v31 < v29);
              goto LABEL_157;
            }

            v109 = v170;
            v110 = v173;
            v111 = v171;
            v112 = a7.n128_u16[0];
          }

          else
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
          }

          v31 = 4 * (v108 & 0x7FFFFFFFFFFFFFF8);
          a8 = v109;
          a7 = v110;
          v174 = v111;
          a6 = v112;
          v175 = &a2->i8[4 * v113];
          v176 = v113 - (v108 & 0x7FFFFFFFFFFFFFF8);
          do
          {
            v192 = vld4_s8(v175);
            v175 += 32;
            a6 = vaddw_u8(a6, v192.val[0]);
            v174 = vaddw_u8(v174, v192.val[1]);
            a7 = vaddw_u8(a7, v192.val[2]);
            a8 = vaddw_u8(a8, v192.val[3]);
            v176 += 8;
          }

          while (v176);
          a6.i16[0] = vaddvq_s16(a6);
          a6.i16[1] = vaddvq_s16(v174);
          a6.i16[2] = vaddvq_s16(a7);
          a6.i16[3] = vaddvq_s16(a8);
          if (v108 != (v108 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_156;
          }

LABEL_157:
          a3->i64[0] = a6.i64[0];
          if (v30 >= 1)
          {
            v185 = 0;
            v186 = &a2->i8[v29];
            v187 = &a3->i64[1];
            do
            {
              a7.n128_u32[0] = *&v186[v185];
              a8.i32[0] = a2->i32[v185 / 4];
              a7.n128_u64[0] = vsubl_u8(a7.n128_u64[0], *a8.i8).u64[0];
              *a6.i8 = vadd_s16(a7.n128_u64[0], *a6.i8);
              *v187++ = a6.i64[0];
              v185 += 4;
            }

            while (v185 < v30);
          }

          return *a6.i64;
        }

        if (a5 < 1)
        {
          return *a6.i64;
        }

        v58 = 0;
        v59 = &a3->i8[2 * a5];
        while (v29 < 1)
        {
          v61 = 0;
          a3->i16[0] = 0;
          if (v30 >= 1)
          {
            goto LABEL_90;
          }

LABEL_83:
          ++v58;
          a2 = (a2 + 1);
          a3 = (a3 + 2);
          v59 += 2;
          if (v58 == a5)
          {
            return *a6.i64;
          }
        }

        v60 = 0;
        v61 = 0;
        do
        {
          v61 += a2->u8[v60];
          v60 += a5;
        }

        while (v29 > v60);
        a3->i16[0] = v61;
        if (v30 < 1)
        {
          goto LABEL_83;
        }

LABEL_90:
        v62 = 0;
        do
        {
          v61 += a2->u8[v29 + v62] - a2->u8[v62];
          *&v59[2 * v62] = v61;
          v62 += a5;
        }

        while (v62 < v30);
        goto LABEL_83;
      }

      if (v29 < 1)
      {
        v55 = 0;
        v54 = 0;
        v53 = 0;
        goto LABEL_151;
      }

      if (v29 < 0x16)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        goto LABEL_149;
      }

      v106 = (v29 - 1) / 3u + 1;
      if (v29 >= 0x5E)
      {
        v114 = 0uLL;
        v107 = v106 & 0x7FFFFFE0;
        v115 = 0uLL;
        v116 = a2;
        v117 = 0uLL;
        v118 = v107;
        v119 = 0uLL;
        v120 = 0uLL;
        v121 = 0uLL;
        v122 = 0uLL;
        v123 = 0uLL;
        v124 = 0uLL;
        v125 = 0uLL;
        v126 = 0uLL;
        v127 = 0uLL;
        do
        {
          v128 = v116;
          v116 += 6;
          v190 = vld3q_s8(v128);
          v128 += 48;
          v125 = vaddw_high_u8(v125, v190.val[0]);
          v191 = vld3q_s8(v128);
          v124 = vaddw_u8(v124, *v190.val[0].i8);
          v127 = vaddw_high_u8(v127, v191.val[0]);
          v126 = vaddw_u8(v126, *v191.val[0].i8);
          v121 = vaddw_high_u8(v121, v190.val[1]);
          v120 = vaddw_u8(v120, *v190.val[1].i8);
          v123 = vaddw_high_u8(v123, v191.val[1]);
          v122 = vaddw_u8(v122, *v191.val[1].i8);
          v115 = vaddw_high_u8(v115, v190.val[2]);
          v114 = vaddw_u8(v114, *v190.val[2].i8);
          v119 = vaddw_high_u8(v119, v191.val[2]);
          v117 = vaddw_u8(v117, *v191.val[2].i8);
          v118 -= 32;
        }

        while (v118);
        v129 = vaddq_s16(vaddq_s16(v117, v114), vaddq_s16(v119, v115));
        v129.i16[0] = vaddvq_s16(v129);
        v53 = v129.i32[0];
        v130 = vaddq_s16(vaddq_s16(v122, v120), vaddq_s16(v123, v121));
        v130.i16[0] = vaddvq_s16(v130);
        v54 = v130.i32[0];
        a6 = vaddq_s16(vaddq_s16(v126, v124), vaddq_s16(v127, v125));
        a6.i16[0] = vaddvq_s16(a6);
        v55 = a6.i32[0];
        if (v107 == v106)
        {
          goto LABEL_151;
        }

        if (((((v29 - 1) / 3u) + 1) & 0x18) == 0)
        {
          v52 = 3 * v107;
LABEL_149:
          v177 = &a2->u8[v52 + 2];
          do
          {
            v55 += *(v177 - 2);
            v54 += *(v177 - 1);
            v178 = *v177;
            v177 += 3;
            v53 += v178;
            v52 += 3;
          }

          while (v52 < v29);
          goto LABEL_151;
        }
      }

      else
      {
        LOWORD(v53) = 0;
        LOWORD(v54) = 0;
        LOWORD(v55) = 0;
        v107 = 0;
      }

      v52 = 3 * (v106 & 0x7FFFFFF8);
      v131 = v53;
      v132 = v54;
      a6 = v55;
      v133 = v107 - (v106 & 0x7FFFFFF8);
      v134 = &a2->i8[3 * v107];
      do
      {
        v189 = vld3_s8(v134);
        v134 += 24;
        a6 = vaddw_u8(a6, v189.val[0]);
        v132 = vaddw_u8(v132, v189.val[1]);
        v131 = vaddw_u8(v131, v189.val[2]);
        v133 += 8;
      }

      while (v133);
      v131.i16[0] = vaddvq_s16(v131);
      v53 = v131.i32[0];
      v132.i16[0] = vaddvq_s16(v132);
      v54 = v132.i32[0];
      a6.i16[0] = vaddvq_s16(a6);
      v55 = a6.i32[0];
      if ((v106 & 0x7FFFFFF8) != v106)
      {
        goto LABEL_149;
      }

LABEL_151:
      a3->i16[0] = v55;
      a3->i16[1] = v54;
      a3->i16[2] = v53;
      if (v30 >= 1)
      {
        v179 = &a3->i16[5];
        v180 = &a2->u8[v29 + 2];
        v181 = &a2->u8[1];
        v182 = 2;
        do
        {
          v55 += *(v180 - 2) - *(v181 - 1);
          v54 += *(v180 - 1) - *v181;
          v183 = *v180;
          v180 += 3;
          v53 += v183 - v181[1];
          *(v179 - 2) = v55;
          *(v179 - 1) = v54;
          v184 = v182 + 1;
          v182 += 3;
          *v179 = v53;
          v179 += 3;
          v181 += 3;
        }

        while (v184 < v30);
      }

      return *a6.i64;
    }

    if (v29 < 1)
    {
      v57 = 0;
      goto LABEL_135;
    }

    if (v29 < 8)
    {
      v56 = 0;
      v57 = 0;
      goto LABEL_133;
    }

    if (v29 >= 0x20)
    {
      v56 = v29 & 0x7FFFFFE0;
      v135 = a2 + 1;
      v136 = 0uLL;
      v137 = v56;
      v138 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      do
      {
        v141 = v135[-1];
        v138 = vaddw_high_u8(v138, v141);
        v136 = vaddw_u8(v136, *v141.i8);
        v140 = vaddw_high_u8(v140, *v135);
        v139 = vaddw_u8(v139, *v135->i8);
        v135 += 2;
        v137 -= 32;
      }

      while (v137);
      a6 = vaddq_s16(vaddq_s16(v139, v136), vaddq_s16(v140, v138));
      a6.i16[0] = vaddvq_s16(a6);
      v57 = a6.i32[0];
      if (v56 == v29)
      {
        goto LABEL_135;
      }

      if ((v29 & 0x18) == 0)
      {
LABEL_133:
        v146 = &a2->u8[v56];
        v147 = v29 - v56;
        do
        {
          v148 = *v146++;
          v57 += v148;
          --v147;
        }

        while (v147);
        goto LABEL_135;
      }
    }

    else
    {
      LOWORD(v57) = 0;
      v56 = 0;
    }

    v142 = v56;
    v56 = v29 & 0x7FFFFFF8;
    a6 = v57;
    v143 = &a2->i8[v142];
    v144 = v142 - v56;
    do
    {
      v145 = *v143++;
      a6 = vaddw_u8(a6, v145);
      v144 += 8;
    }

    while (v144);
    a6.i16[0] = vaddvq_s16(a6);
    v57 = a6.i32[0];
    if (v56 != v29)
    {
      goto LABEL_133;
    }

LABEL_135:
    a3->i16[0] = v57;
    if (v30 >= 1)
    {
      v149 = &a3->i16[1];
      do
      {
        v150 = a2->u8[v29];
        v151 = a2->u8[0];
        a2 = (a2 + 1);
        v57 += v150 - v151;
        *v149++ = v57;
        --v30;
      }

      while (v30);
    }

    return *a6.i64;
  }

  v9 = a5 * a4;
  if (v9 < 1)
  {
    return *a6.i64;
  }

  v10 = a5;
  v11 = (2 * a5);
  v12 = (3 * a5);
  v13 = (4 * a5);
  if (v9 < 8)
  {
    v14 = 0;
    goto LABEL_6;
  }

  v14 = 0;
  v32 = &a2->i8[a5];
  v33 = &a2->i8[v11];
  v34 = &a2->i8[v12];
  v35 = &a2->i8[v13];
  v36 = a3 + 2 * v9;
  v38 = &a2->i8[v12 + v9] > a3 && v34 < v36;
  v40 = &a2->i8[v11 + v9] > a3 && v33 < v36;
  v42 = &v32[v9] > a3 && v32 < v36;
  v44 = &a2->i8[v9] > a3 && v36 > a2;
  v45 = v35 < v36 && &v35[v9] > a3;
  if (v45 || v38 || v40 || v42 || v44)
  {
    goto LABEL_6;
  }

  if (v9 >= 0x20)
  {
    v14 = v9 & 0x7FFFFFE0;
    v63 = a2 + 1;
    v64 = a3 + 2;
    v65 = v14;
    do
    {
      v66 = v63[-1];
      v67 = *(&v63[-1] + v10);
      v68 = *(v63 + v10);
      v69 = vaddl_high_u8(v67, v66);
      v70 = vaddl_u8(*v67.i8, *v66.i8);
      v71 = vaddl_high_u8(v68, *v63);
      v72 = vaddl_u8(*v68.i8, *v63->i8);
      v73 = *(&v63[-1] + v11);
      v74 = *(v63 + v11);
      v75 = vaddw_u8(v70, *v73.i8);
      v76 = vaddw_high_u8(v69, v73);
      v77 = vaddw_u8(v72, *v74.i8);
      v78 = vaddw_high_u8(v71, v74);
      v79 = *(&v63[-1] + v12);
      v80 = *(v63 + v12);
      v81 = vaddw_high_u8(v76, v79);
      v82 = vaddw_u8(v75, *v79.i8);
      v83 = vaddw_high_u8(v78, v80);
      v84 = vaddw_u8(v77, *v80.i8);
      v85 = *(&v63[-1] + v13);
      v86 = *(v63 + v13);
      a6 = vaddw_u8(v82, *v85.i8);
      v64[-2] = a6;
      v64[-1] = vaddw_high_u8(v81, v85);
      *v64 = vaddw_u8(v84, *v86.i8);
      v64[1] = vaddw_high_u8(v83, v86);
      v64 += 4;
      v63 += 2;
      v65 -= 32;
    }

    while (v65);
    if (v14 == v9)
    {
      return *a6.i64;
    }

    if ((v9 & 0x18) == 0)
    {
LABEL_6:
      v15 = 0;
      v16 = &a2->i8[v14];
      v17 = &a2->i8[v14 + v13];
      v18 = &a2->i8[v14 + v12];
      v19 = &a2->i8[v14 + v11];
      v20 = &a2->i8[v14 + v10];
      v21 = v9 - v14;
      v22 = &a3->i8[2 * v14];
      do
      {
        *&v22[2 * v15] = v20[v15] + v16[v15] + v19[v15] + v18[v15] + v17[v15];
        ++v15;
      }

      while (v21 != v15);
      return *a6.i64;
    }
  }

  else
  {
    v14 = 0;
  }

  v87 = (a3 + 2 * v14);
  v88 = v9 & 0x7FFFFFF8;
  v89 = a2;
  do
  {
    a6 = vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(*&v32[v14], *&v89->i8[v14]), *&v33[v14]), *&v34[v14]), *&v35[v14]);
    *v87++ = a6;
    v89 = (v89 + 8);
    v32 += 8;
    v33 += 8;
    v34 += 8;
    v35 += 8;
    v88 -= 8;
  }

  while (v14 != v88);
  v14 = v9 & 0x7FFFFFF8;
  if (v14 != v9)
  {
    goto LABEL_6;
  }

  return *a6.i64;
}

uint64_t sub_100362390(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100362418()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_100362450(uint64_t result, int8x16_t *a2, unint64_t a3, int a4, unsigned int a5, __n128 a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10, int8x16_t a11, double a12, double a13)
{
  v14 = *(result + 8);
  if (v14 == 3)
  {
    v35 = a5 * a4;
    if (v35 < 1)
    {
      return result;
    }

    v36 = (2 * a5);
    if (v35 < 4)
    {
      v37 = 0;
      goto LABEL_12;
    }

    v37 = 0;
    v64 = a3 + 8 * v35;
    v66 = a2->u64 + a5 + v35 > a3 && a2->u64 + a5 < v64;
    v68 = a2->u64 + v35 > a3 && v64 > a2;
    v69 = a2->u64 + v36 < v64 && a2->u64 + v36 + v35 > a3;
    if (v69 || v66 || v68)
    {
      goto LABEL_12;
    }

    if (v35 >= 0x10)
    {
      v37 = v35 & 0x7FFFFFF0;
      a6.n128_u64[0] = 0xFF000000FFLL;
      v227 = v37;
      v228 = a3;
      v229 = a2;
      do
      {
        v230.i32[0] = v229->u8[0];
        v231.i32[0] = BYTE2(v229->u32[0]);
        v230.i32[1] = HIBYTE(v229->u16[0]);
        v232.i32[0] = BYTE4(v229->i64[0]);
        v233.i32[0] = BYTE6(v229->i64[0]);
        v231.i32[1] = HIBYTE(v229->u32[0]);
        v234 = *(v229 + a5);
        result = v234.u8[0];
        v232.i32[1] = (WORD2(v229->i64[0]) >> 8);
        v233.i32[1] = HIBYTE(v229->i64[0]);
        v235.i32[0] = v234.u8[0];
        v236.i32[0] = v234.u8[2];
        v237.i32[0] = v234.u8[4];
        v235.i32[1] = v234.u8[1];
        v238 = *(v229 + v36);
        v236.i32[1] = v234.u8[3];
        v239.i32[0] = v234.u8[6];
        v240.i32[0] = v238.u8[6];
        v237.i32[1] = v234.u8[5];
        v239.i32[1] = v234.u8[7];
        v240.i32[1] = v238.u8[7];
        v241.i32[0] = v238.u8[4];
        v242.i32[0] = v238.u8[2];
        v241.i32[1] = v238.u8[5];
        v242.i32[1] = v238.u8[3];
        v243.i32[0] = v238.u8[0];
        v243.i32[1] = v238.u8[1];
        v244 = vextq_s8(*v229, *v229, 8uLL).u64[0];
        v245.i32[0] = v244.u8[0];
        v245.i32[1] = v244.u8[1];
        v246.i32[0] = v244.u8[2];
        v247.i32[0] = v244.u8[4];
        v246.i32[1] = v244.u8[3];
        v247.i32[1] = v244.u8[5];
        v248 = vextq_s8(v234, v234, 8uLL).u64[0];
        v249.i32[0] = v244.u8[6];
        v249.i32[1] = v244.u8[7];
        v250 = vextq_s8(v238, v238, 8uLL).u64[0];
        v251.i32[0] = v248.u8[0];
        v234.i32[0] = v248.u8[2];
        v238.i32[0] = v248.u8[4];
        v251.i32[1] = v248.u8[1];
        v252.i32[0] = v248.u8[6];
        v244.i32[0] = v250.u8[6];
        v234.i32[1] = v248.u8[3];
        v238.i32[1] = v248.u8[5];
        v252.i32[1] = v248.u8[7];
        v253.i32[0] = v250.u8[4];
        v248.i32[0] = v250.u8[2];
        v244.i32[1] = v250.u8[7];
        v253.i32[1] = v250.u8[5];
        v254 = v250.u8[1];
        v248.i32[1] = v250.u8[3];
        v250.i32[0] = v250.u8[0];
        v255 = vand_s8(v245, 0xFF000000FFLL);
        v256.i64[0] = v255.u32[0];
        v256.i64[1] = v255.u32[1];
        v257 = v256;
        v258 = vand_s8(v246, 0xFF000000FFLL);
        v256.i64[0] = v258.u32[0];
        v256.i64[1] = v258.u32[1];
        v259 = vcvtq_f64_u64(v256);
        v260 = vand_s8(v247, 0xFF000000FFLL);
        v256.i64[0] = v260.u32[0];
        v256.i64[1] = v260.u32[1];
        v261 = v256;
        v262 = vand_s8(v249, 0xFF000000FFLL);
        v256.i64[0] = v262.u32[0];
        v256.i64[1] = v262.u32[1];
        v263 = v256;
        v264 = vand_s8(v230, 0xFF000000FFLL);
        v256.i64[0] = v264.u32[0];
        v256.i64[1] = v264.u32[1];
        v265 = v256;
        v266 = vand_s8(v231, 0xFF000000FFLL);
        v267 = vand_s8(v232, 0xFF000000FFLL);
        v268 = vand_s8(v233, 0xFF000000FFLL);
        v256.i64[0] = v268.u32[0];
        v256.i64[1] = v268.u32[1];
        v269 = vcvtq_f64_u64(v256);
        v270 = vand_s8(v239, 0xFF000000FFLL);
        v256.i64[0] = v270.u32[0];
        v256.i64[1] = v270.u32[1];
        v271 = vaddq_f64(v269, vcvtq_f64_u64(v256));
        v256.i64[0] = v267.u32[0];
        v256.i64[1] = v267.u32[1];
        v272 = vcvtq_f64_u64(v256);
        v273 = vand_s8(v237, 0xFF000000FFLL);
        v256.i64[0] = v273.u32[0];
        v256.i64[1] = v273.u32[1];
        v274 = vaddq_f64(v272, vcvtq_f64_u64(v256));
        v256.i64[0] = v266.u32[0];
        v256.i64[1] = v266.u32[1];
        v275 = vcvtq_f64_u64(v256);
        v276 = vand_s8(v236, 0xFF000000FFLL);
        v256.i64[0] = v276.u32[0];
        v256.i64[1] = v276.u32[1];
        v277 = vaddq_f64(v275, vcvtq_f64_u64(v256));
        v278 = vand_s8(v235, 0xFF000000FFLL);
        v256.i64[0] = v278.u32[0];
        v256.i64[1] = v278.u32[1];
        v279 = vand_s8(v251, 0xFF000000FFLL);
        v280 = vaddq_f64(vcvtq_f64_u64(v265), vcvtq_f64_u64(v256));
        v256.i64[0] = v279.u32[0];
        v256.i64[1] = v279.u32[1];
        v281 = vcvtq_f64_u64(v256);
        v282 = vand_s8(*v234.i8, 0xFF000000FFLL);
        v256.i64[0] = v282.u32[0];
        v256.i64[1] = v282.u32[1];
        *v234.i8 = vand_s8(*v238.i8, 0xFF000000FFLL);
        v283 = vcvtq_f64_u64(v256);
        v256.i64[0] = v234.u32[0];
        v256.i64[1] = v234.u32[1];
        v284 = vcvtq_f64_u64(v256);
        v285 = vand_s8(v252, 0xFF000000FFLL);
        v256.i64[0] = v285.u32[0];
        v256.i64[1] = v285.u32[1];
        v286 = vand_s8(v240, 0xFF000000FFLL);
        v287 = vcvtq_f64_u64(v256);
        v256.i64[0] = v286.u32[0];
        v256.i64[1] = v286.u32[1];
        v288 = vcvtq_f64_u64(v256);
        v289 = vand_s8(v241, 0xFF000000FFLL);
        v256.i64[0] = v289.u32[0];
        v256.i64[1] = v289.u32[1];
        v290 = vcvtq_f64_u64(v256);
        v291 = vaddq_f64(vcvtq_f64_u64(v263), v287);
        v292 = vand_s8(v242, 0xFF000000FFLL);
        v256.i64[0] = v292.u32[0];
        v256.i64[1] = v292.u32[1];
        v293 = vcvtq_f64_u64(v256);
        v294 = vand_s8(v243, 0xFF000000FFLL);
        v256.i64[0] = v294.u32[0];
        v256.i64[1] = v294.u32[1];
        v295 = vcvtq_f64_u64(v256);
        v296 = vand_s8(v244, 0xFF000000FFLL);
        v256.i64[0] = v296.u32[0];
        v256.i64[1] = v296.u32[1];
        v297 = vcvtq_f64_u64(v256);
        *&v287.f64[0] = vand_s8(v253, 0xFF000000FFLL);
        v256.i64[0] = LODWORD(v287.f64[0]);
        v256.i64[1] = HIDWORD(v287.f64[0]);
        v298 = vcvtq_f64_u64(v256);
        *v238.i8 = vand_s8(v248, 0xFF000000FFLL);
        v256.i64[0] = v238.u32[0];
        v256.i64[1] = v238.u32[1];
        v299 = vcvtq_f64_u64(v256);
        v250.i32[1] = v254;
        v300 = vand_s8(v250, 0xFF000000FFLL);
        v256.i64[0] = v300.u32[0];
        v256.i64[1] = v300.u32[1];
        a9 = vaddq_f64(v274, v290);
        v228[2] = a9;
        v228[3] = vaddq_f64(v271, v288);
        *v228 = vaddq_f64(v280, v295);
        v228[1] = vaddq_f64(v277, v293);
        v228[6] = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v261), v284), v298);
        v228[7] = vaddq_f64(v291, v297);
        a7 = vaddq_f64(vaddq_f64(v259, v283), v299);
        v228[4] = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v257), v281), vcvtq_f64_u64(v256));
        v228[5] = a7;
        ++v229;
        v228 += 8;
        v227 -= 16;
      }

      while (v227);
      if (v37 == v35)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_12:
        v38 = &a2->u8[v37];
        v39 = (a3 + 8 * v37);
        v40 = v35 - v37;
        do
        {
          a6.n128_u8[0] = *v38;
          LOBYTE(a7.f64[0]) = v38[a5];
          *&v41 = *&a7.f64[0];
          v42 = a6.n128_u64[0] + *&v41;
          LOBYTE(v41) = v38[v36];
          a7.f64[0] = v41;
          a6.n128_f64[0] = v42 + a7.f64[0];
          *v39++ = a6.n128_u64[0];
          ++v38;
          --v40;
        }

        while (v40);
        return result;
      }
    }

    else
    {
      v37 = 0;
    }

    v301 = v37;
    v37 = v35 & 0x7FFFFFFC;
    v302 = &a2->u8[v301];
    v303 = (a3 + 8 * v301);
    v304 = v301 - v37;
    a6.n128_u64[0] = 0xFF000000FFLL;
    do
    {
      LODWORD(a7.f64[0]) = *v302;
      v305 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
      v306 = vand_s8(*&vextq_s8(v305, v305, 8uLL), 0xFF000000FFLL);
      v307.i64[0] = v306.u32[0];
      v307.i64[1] = v306.u32[1];
      v308 = vcvtq_f64_u64(v307);
      *v305.i8 = vand_s8(*v305.i8, 0xFF000000FFLL);
      v307.i64[0] = v305.u32[0];
      v307.i64[1] = v305.u32[1];
      LODWORD(a9.f64[0]) = *&v302[a5];
      v309 = vcvtq_f64_u64(v307);
      v310 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
      v311 = vand_s8(*&vextq_s8(v310, v310, 8uLL), 0xFF000000FFLL);
      v307.i64[0] = v311.u32[0];
      v307.i64[1] = v311.u32[1];
      v312 = vcvtq_f64_u64(v307);
      *v310.i8 = vand_s8(*v310.i8, 0xFF000000FFLL);
      v307.i64[0] = v310.u32[0];
      v307.i64[1] = v310.u32[1];
      v313 = vcvtq_f64_u64(v307);
      v314 = vaddq_f64(v309, v313);
      v315 = vaddq_f64(v308, v312);
      LODWORD(v313.f64[0]) = *&v302[v36];
      v316 = vmovl_u16(*&vmovl_u8(*&v313.f64[0]));
      *&v312.f64[0] = vand_s8(*v316.i8, 0xFF000000FFLL);
      v307.i64[0] = LODWORD(v312.f64[0]);
      v307.i64[1] = HIDWORD(v312.f64[0]);
      v317 = vcvtq_f64_u64(v307);
      *v316.i8 = vand_s8(*&vextq_s8(v316, v316, 8uLL), 0xFF000000FFLL);
      v307.i64[0] = v316.u32[0];
      v307.i64[1] = v316.u32[1];
      a9 = vcvtq_f64_u64(v307);
      a7 = vaddq_f64(v314, v317);
      *v303 = a7;
      v303[1] = vaddq_f64(v315, a9);
      v303 += 2;
      v302 += 4;
      v304 += 4;
    }

    while (v304);
    if (v37 == v35)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v14 != 5)
  {
    v43 = v14 * a5;
    v44 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v43 < 1)
          {
            v46 = 0uLL;
            v47 = 0uLL;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            if (v44 < 1)
            {
              return result;
            }
          }

          else
          {
            v45 = 0;
            v46 = 0uLL;
            v47 = 0uLL;
            do
            {
              LODWORD(a9.f64[0]) = a2->i32[v45 / 4];
              v48 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
              v49 = vand_s8(*&vextq_s8(v48, v48, 8uLL), 0xFF000000FFLL);
              v50.i64[0] = v49.u32[0];
              v50.i64[1] = v49.u32[1];
              a10 = vcvtq_f64_u64(v50);
              *v48.i8 = vand_s8(*v48.i8, 0xFF000000FFLL);
              v50.i64[0] = v48.u32[0];
              v50.i64[1] = v48.u32[1];
              a9 = vcvtq_f64_u64(v50);
              v46 = vaddq_f64(v46, a9);
              v47 = vaddq_f64(v47, a10);
              v45 += 4;
            }

            while (v45 < v43);
            *a3 = v46;
            *(a3 + 16) = v47;
            if (v44 < 1)
            {
              return result;
            }
          }

          v81 = 0;
          v82 = &a2->u8[v43];
          v83 = (a3 + 32);
          do
          {
            LODWORD(a9.f64[0]) = *&v82[v81];
            LODWORD(a10.f64[0]) = a2->i32[v81 / 4];
            v84 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
            v85 = vand_s8(*&vextq_s8(v84, v84, 8uLL), 0xFF000000FFLL);
            v86.i64[0] = v85.u32[0];
            v86.i64[1] = v85.u32[1];
            v87 = vcvtq_f64_u64(v86);
            *v84.i8 = vand_s8(*v84.i8, 0xFF000000FFLL);
            v86.i64[0] = v84.u32[0];
            v86.i64[1] = v84.u32[1];
            v88 = vcvtq_f64_u64(v86);
            v89 = vmovl_u16(*&vmovl_u8(*&a10.f64[0]));
            v90 = vand_s8(*&vextq_s8(v89, v89, 8uLL), 0xFF000000FFLL);
            v86.i64[0] = v90.u32[0];
            v86.i64[1] = v90.u32[1];
            v91 = vcvtq_f64_u64(v86);
            *v89.i8 = vand_s8(*v89.i8, 0xFF000000FFLL);
            v86.i64[0] = v89.u32[0];
            v86.i64[1] = v89.u32[1];
            a9 = vsubq_f64(v88, vcvtq_f64_u64(v86));
            a10 = vsubq_f64(v87, v91);
            v47 = vaddq_f64(v47, a10);
            v46 = vaddq_f64(v46, a9);
            *v83 = v46;
            v83[1] = v47;
            v83 += 2;
            v81 += 4;
          }

          while (v81 < v44);
          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v76 = 0;
        v77 = a3 + 8 * a5;
        while (v43 < 1)
        {
          v79 = 0.0;
          *a3 = 0;
          if (v44 >= 1)
          {
            goto LABEL_92;
          }

LABEL_85:
          ++v76;
          a2 = (a2 + 1);
          a3 += 8;
          v77 += 8;
          if (v76 == a5)
          {
            return result;
          }
        }

        v78 = 0;
        v79 = 0.0;
        do
        {
          LOBYTE(a7.f64[0]) = a2->i8[v78];
          a7.f64[0] = *&a7.f64[0];
          v79 = v79 + a7.f64[0];
          v78 += a5;
        }

        while (v43 > v78);
        *a3 = v79;
        if (v44 < 1)
        {
          goto LABEL_85;
        }

LABEL_92:
        v80 = 0;
        do
        {
          LOBYTE(a7.f64[0]) = a2->i8[v43 + v80];
          LOBYTE(a8.f64[0]) = a2->i8[v80];
          a8.f64[0] = *&a8.f64[0];
          a7.f64[0] = *&a7.f64[0] - a8.f64[0];
          v79 = v79 + a7.f64[0];
          *(v77 + 8 * v80) = v79;
          v80 += a5;
        }

        while (v80 < v44);
        goto LABEL_85;
      }

      if (v43 < 1)
      {
        v73 = 0.0;
        v72 = 0.0;
        v71 = 0.0;
        goto LABEL_122;
      }

      if (v43 > 3)
      {
        v318 = (v43 - 1) / 3u + 1;
        v70 = 3 * (v318 & 0x7FFFFFFE);
        v319 = &a2->u8[2];
        v71 = 0.0;
        v320 = v318 & 0x7FFFFFFE;
        v72 = 0.0;
        v73 = 0.0;
        do
        {
          LOBYTE(a9.f64[0]) = *(v319 - 2);
          a9.f64[0] = *&a9.f64[0];
          LOBYTE(a10.f64[0]) = v319[1];
          a10.f64[0] = *&a10.f64[0];
          a11.i8[0] = *(v319 - 1);
          *a11.i64 = a11.u64[0];
          LOBYTE(a12) = v319[2];
          a12 = *&a12;
          LOBYTE(a13) = *v319;
          a13 = *&a13;
          LOBYTE(v13) = v319[3];
          v13 = *&v13;
          v71 = v71 + a13 + v13;
          v72 = v72 + *a11.i64 + a12;
          v73 = v73 + a9.f64[0] + a10.f64[0];
          v319 += 6;
          v320 -= 2;
        }

        while (v320);
        if ((v318 & 0x7FFFFFFE) == v318)
        {
LABEL_122:
          *a3 = v73;
          *(a3 + 8) = v72;
          *(a3 + 16) = v71;
          if (v44 >= 1)
          {
            v324 = (a3 + 40);
            v325 = &a2->u8[v43 + 2];
            v326 = &a2->u8[1];
            v327 = 2;
            do
            {
              LOBYTE(a9.f64[0]) = *(v325 - 2);
              LOBYTE(a10.f64[0]) = *(v326 - 1);
              *&v328 = *&a10.f64[0];
              *&v329 = *&a9.f64[0] - *&v328;
              v73 = v73 + *&v329;
              LOBYTE(v329) = *(v325 - 1);
              LOBYTE(v328) = *v326;
              *&v330 = v328;
              *&v331 = v329 - *&v330;
              v72 = v72 + *&v331;
              LOBYTE(v331) = *v325;
              LOBYTE(v330) = v326[1];
              a10.f64[0] = v330;
              a9.f64[0] = v331 - a10.f64[0];
              v71 = v71 + a9.f64[0];
              *(v324 - 2) = v73;
              *(v324 - 1) = v72;
              v332 = v327 + 1;
              v327 += 3;
              *v324 = v71;
              v324 += 3;
              v325 += 3;
              v326 += 3;
            }

            while (v332 < v44);
          }

          return result;
        }
      }

      else
      {
        v70 = 0;
        v71 = 0.0;
        v72 = 0.0;
        v73 = 0.0;
      }

      v321 = &a2->u8[v70 + 2];
      do
      {
        LOBYTE(a9.f64[0]) = *(v321 - 2);
        *&v322 = *&a9.f64[0];
        v73 = v73 + *&v322;
        LOBYTE(v322) = *(v321 - 1);
        *&v323 = v322;
        v72 = v72 + *&v323;
        LOBYTE(v323) = *v321;
        a9.f64[0] = v323;
        v71 = v71 + a9.f64[0];
        v70 += 3;
        v321 += 3;
      }

      while (v70 < v43);
      goto LABEL_122;
    }

    if (v43 < 1)
    {
      v75 = 0.0;
      goto LABEL_137;
    }

    if (v43 < 8)
    {
      v74 = 0;
      v75 = 0.0;
      goto LABEL_135;
    }

    if (v43 >= 0x20)
    {
      v333 = v43 & 0x7FFFFFE0;
      v334 = &a2[1];
      v75 = 0.0;
      *&a7.f64[0] = 0xFF000000FFLL;
      do
      {
        v336 = *(v334 - 1);
        v335 = *v334;
        v337 = vextq_s8(v336, v336, 8uLL).u64[0];
        v410 = BYTE6(v337);
        v412 = HIBYTE(v337);
        v338 = BYTE4(v337);
        v339 = BYTE5(v337);
        v340 = v336.u8[6];
        v341 = v336.u8[7];
        v342 = BYTE2(v337);
        v343 = v336.u8[4];
        v344 = v336.u8[5];
        v345 = BYTE3(v337);
        v346 = v336.u8[2];
        v347 = v336.u8[3];
        v348 = v337;
        v349 = v336.u8[1];
        v350 = BYTE1(v337);
        v336.i32[0] = v336.u8[0];
        v336.i32[1] = v349;
        v351 = vextq_s8(v335, v335, 8uLL).u64[0];
        v408 = BYTE6(v351);
        v406 = HIBYTE(v351);
        v352 = BYTE4(v351);
        result = BYTE5(v351);
        v353 = BYTE2(v351);
        v354 = BYTE3(v351);
        v355 = v351;
        v356 = BYTE1(v351);
        *v336.i8 = vand_s8(*v336.i8, 0xFF000000FFLL);
        v357.i64[0] = v336.u32[0];
        v357.i64[1] = v336.u32[1];
        v358 = vcvtq_f64_u64(v357);
        v359 = vand_s8(__PAIR64__(v347, v346), 0xFF000000FFLL);
        v357.i64[0] = v359.u32[0];
        v357.i64[1] = v359.u32[1];
        v360 = vcvtq_f64_u64(v357);
        v361 = v75 + v358.f64[0] + v358.f64[1] + v360.f64[0] + v360.f64[1];
        *&v360.f64[0] = vand_s8(__PAIR64__(v344, v343), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v360.f64[0]);
        v357.i64[1] = HIDWORD(v360.f64[0]);
        v362 = vcvtq_f64_u64(v357);
        v363 = v361 + v362.f64[0] + v362.f64[1];
        *&v362.f64[0] = vand_s8(__PAIR64__(v341, v340), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v362.f64[0]);
        v357.i64[1] = HIDWORD(v362.f64[0]);
        v364 = vcvtq_f64_u64(v357);
        v365 = v363 + v364.f64[0] + v364.f64[1];
        *&v364.f64[0] = __PAIR64__(v335.u8[7], v335.u8[6]);
        *v335.i8 = vand_s8(__PAIR64__(v345, v342), 0xFF000000FFLL);
        v357.i64[0] = v335.u32[0];
        v357.i64[1] = v335.u32[1];
        *&v358.f64[0] = vand_s8(__PAIR64__(v350, v348), 0xFF000000FFLL);
        v366 = vcvtq_f64_u64(v357);
        v357.i64[0] = LODWORD(v358.f64[0]);
        v357.i64[1] = HIDWORD(v358.f64[0]);
        v367 = vcvtq_f64_u64(v357);
        v368 = v365 + v367.f64[0] + v367.f64[1] + v366.f64[0] + v366.f64[1];
        v369 = vand_s8(__PAIR64__(v339, v338), 0xFF000000FFLL);
        v357.i64[0] = v369.u32[0];
        v357.i64[1] = v369.u32[1];
        v370 = vcvtq_f64_u64(v357);
        *&v367.f64[0] = vand_s8(__PAIR64__(v412, v410), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v367.f64[0]);
        v357.i64[1] = HIDWORD(v367.f64[0]);
        v371 = vcvtq_f64_u64(v357);
        v372 = v368 + v370.f64[0] + v370.f64[1] + v371.f64[0] + v371.f64[1];
        *&v371.f64[0] = vand_s8(__PAIR64__(BYTE1(*v334), *v334), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v371.f64[0]);
        v357.i64[1] = HIDWORD(v371.f64[0]);
        v373 = vcvtq_f64_u64(v357);
        v374 = v372 + v373.f64[0] + v373.f64[1];
        *&v373.f64[0] = vand_s8(__PAIR64__(BYTE3(*v334), BYTE2(*v334)), 0xFF000000FFLL);
        *&v366.f64[0] = vand_s8(__PAIR64__((WORD2(*v334) >> 8), BYTE4(*v334)), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v373.f64[0]);
        v357.i64[1] = HIDWORD(v373.f64[0]);
        v375 = vcvtq_f64_u64(v357);
        v357.i64[0] = LODWORD(v366.f64[0]);
        v357.i64[1] = HIDWORD(v366.f64[0]);
        v376 = vcvtq_f64_u64(v357);
        *&v370.f64[0] = vand_s8(*&v364.f64[0], 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v370.f64[0]);
        v357.i64[1] = HIDWORD(v370.f64[0]);
        v377 = vcvtq_f64_u64(v357);
        v378 = v374 + v375.f64[0] + v375.f64[1] + v376.f64[0] + v376.f64[1] + v377.f64[0] + v377.f64[1];
        *&v377.f64[0] = vand_s8(__PAIR64__(v356, v355), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v377.f64[0]);
        v357.i64[1] = HIDWORD(v377.f64[0]);
        v379 = vcvtq_f64_u64(v357);
        *&v376.f64[0] = vand_s8(__PAIR64__(v354, v353), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v376.f64[0]);
        v357.i64[1] = HIDWORD(v376.f64[0]);
        v380 = vcvtq_f64_u64(v357);
        v381 = v378 + v379.f64[0] + v379.f64[1] + v380.f64[0] + v380.f64[1];
        *&v380.f64[0] = vand_s8(__PAIR64__(result, v352), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v380.f64[0]);
        v357.i64[1] = HIDWORD(v380.f64[0]);
        v382 = vcvtq_f64_u64(v357);
        v383 = v381 + v382.f64[0] + v382.f64[1];
        *&v382.f64[0] = vand_s8(__PAIR64__(v406, v408), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v382.f64[0]);
        v357.i64[1] = HIDWORD(v382.f64[0]);
        a8 = vcvtq_f64_u64(v357);
        v384 = v383 + a8.f64[0];
        a8.f64[0] = a8.f64[1];
        v75 = v384 + a8.f64[1];
        v334 += 32;
        v333 -= 32;
      }

      while (v333);
      v74 = v43 & 0x7FFFFFE0;
      if (v74 == v43)
      {
        goto LABEL_137;
      }

      if ((v43 & 0x18) == 0)
      {
LABEL_135:
        v401 = &a2->u8[v74];
        v402 = v43 - v74;
        do
        {
          v403 = *v401++;
          a7.f64[0] = v403;
          v75 = v75 + v403;
          --v402;
        }

        while (v402);
        goto LABEL_137;
      }
    }

    else
    {
      v74 = 0;
      v75 = 0.0;
    }

    v385 = v74;
    v74 = v43 & 0x7FFFFFF8;
    v386 = &a2->u8[v385];
    v387 = v385 - v74;
    *&a7.f64[0] = 0xFF000000FFLL;
    do
    {
      v388 = *v386;
      v386 += 8;
      v389.i32[0] = BYTE6(v388);
      v389.i32[1] = HIBYTE(v388);
      v390 = vand_s8(v389, 0xFF000000FFLL);
      v391.i64[0] = v390.u32[0];
      v391.i64[1] = v390.u32[1];
      v392 = vcvtq_f64_u64(v391);
      v393.i32[0] = BYTE4(v388);
      v393.i32[1] = BYTE5(v388);
      v394 = vand_s8(v393, 0xFF000000FFLL);
      v391.i64[0] = v394.u32[0];
      v391.i64[1] = v394.u32[1];
      v395 = vcvtq_f64_u64(v391);
      v396.i32[0] = BYTE2(v388);
      v396.i32[1] = BYTE3(v388);
      v397 = vand_s8(v396, 0xFF000000FFLL);
      v391.i64[0] = v397.u32[0];
      v391.i64[1] = v397.u32[1];
      v398 = vcvtq_f64_u64(v391);
      v399.i32[0] = v388;
      v399.i32[1] = BYTE1(v388);
      v400 = vand_s8(v399, 0xFF000000FFLL);
      v391.i64[0] = v400.u32[0];
      v391.i64[1] = v400.u32[1];
      a8 = vcvtq_f64_u64(v391);
      v75 = v75 + a8.f64[0] + a8.f64[1] + v398.f64[0] + v398.f64[1] + v395.f64[0] + v395.f64[1] + v392.f64[0] + v392.f64[1];
      v387 += 8;
    }

    while (v387);
    if (v74 != v43)
    {
      goto LABEL_135;
    }

LABEL_137:
    *a3 = v75;
    if (v44 >= 1)
    {
      v404 = (a3 + 8);
      do
      {
        LOBYTE(a7.f64[0]) = a2->i8[v43];
        LOBYTE(a8.f64[0]) = a2->i8[0];
        a8.f64[0] = *&a8.f64[0];
        a7.f64[0] = *&a7.f64[0] - a8.f64[0];
        v75 = v75 + a7.f64[0];
        *v404++ = v75;
        a2 = (a2 + 1);
        --v44;
      }

      while (v44);
    }

    return result;
  }

  v15 = a5 * a4;
  if (v15 < 1)
  {
    return result;
  }

  v16 = a5;
  v17 = (2 * a5);
  v18 = (3 * a5);
  v19 = (4 * a5);
  if (v15 < 4)
  {
    v20 = 0;
    goto LABEL_6;
  }

  v20 = 0;
  v51 = &a2->u8[a5];
  v52 = &a2->u8[v17];
  v53 = &a2->u8[v18];
  v54 = &a2->u8[v19];
  v55 = a3 + 8 * v15;
  result = a2->u64 + v18 + v15 > a3 && v53 < v55;
  v58 = a2->u64 + v17 + v15 > a3 && v52 < v55;
  v60 = &v51[v15] > a3 && v51 < v55;
  v62 = a2->u64 + v15 > a3 && v55 > a2;
  v63 = v54 < v55 && &v54[v15] > a3;
  if (v63 || (result & 1) != 0 || v58 || v60 || v62)
  {
    goto LABEL_6;
  }

  if (v15 >= 0x10)
  {
    v20 = v15 & 0x7FFFFFF0;
    result = v20;
    v92 = a3;
    v93 = a2;
    do
    {
      v94 = vextq_s8(*v93, *v93, 8uLL).u64[0];
      v95 = BYTE1(v94);
      v96 = BYTE3(v94);
      v97.i32[0] = v93->u8[0];
      v97.i32[1] = HIBYTE(v93->u16[0]);
      v98.i32[0] = BYTE2(v93->u32[0]);
      v99.i32[0] = BYTE4(v93->i64[0]);
      v98.i32[1] = HIBYTE(v93->u32[0]);
      v99.i32[1] = (WORD2(v93->i64[0]) >> 8);
      v100.i32[0] = BYTE6(v93->i64[0]);
      v100.i32[1] = HIBYTE(v93->i64[0]);
      v101.i32[0] = v94;
      v102 = *(v93 + v16);
      v103.i32[0] = BYTE2(v94);
      v104.i32[0] = v102.u8[0];
      v105.i32[0] = BYTE4(v94);
      v106.i32[0] = v102.u8[2];
      v107.i32[0] = BYTE6(v94);
      v108.i32[0] = v102.u8[4];
      v109.i32[0] = v102.u8[6];
      v110 = vextq_s8(v102, v102, 8uLL).u64[0];
      LODWORD(v94) = v110;
      v104.i32[1] = v102.u8[1];
      v101.i32[1] = v95;
      v409 = v101;
      v411 = v104;
      v106.i32[1] = v102.u8[3];
      v103.i32[1] = v96;
      v108.i32[1] = v102.u8[5];
      v105.i32[1] = BYTE5(v94);
      v109.i32[1] = v102.u8[7];
      v107.i32[1] = HIBYTE(v94);
      HIDWORD(v94) = BYTE1(v110);
      v407 = v94;
      v102.i32[0] = BYTE2(v110);
      v102.i32[1] = BYTE3(v110);
      v111 = vand_s8(v98, 0xFF000000FFLL);
      v112 = vand_s8(v99, 0xFF000000FFLL);
      v113.i32[0] = BYTE4(v110);
      v113.i32[1] = BYTE5(v110);
      v114 = vand_s8(v100, 0xFF000000FFLL);
      v115.i32[0] = BYTE6(v110);
      v115.i32[1] = HIBYTE(v110);
      v116 = vand_s8(v106, 0xFF000000FFLL);
      v117 = vand_s8(v108, 0xFF000000FFLL);
      v118 = *(v93 + v17);
      v119 = vand_s8(v103, 0xFF000000FFLL);
      v101.i32[0] = v118.u8[6];
      v101.i32[1] = v118.u8[7];
      v405 = v101;
      v120 = vand_s8(v105, 0xFF000000FFLL);
      v121 = vand_s8(v109, 0xFF000000FFLL);
      v122 = vand_s8(v107, 0xFF000000FFLL);
      v105.i32[0] = v118.u8[4];
      v105.i32[1] = v118.u8[5];
      v123.i64[0] = v111.u32[0];
      v123.i64[1] = v111.u32[1];
      v124 = v123;
      v99.i32[0] = v118.u8[2];
      v99.i32[1] = v118.u8[3];
      v123.i64[0] = v112.u32[0];
      v123.i64[1] = v112.u32[1];
      v125 = v123;
      v126 = vextq_s8(v118, v118, 8uLL).u64[0];
      v123.i64[0] = v114.u32[0];
      v123.i64[1] = v114.u32[1];
      v127 = v123;
      v107.i32[0] = v118.u8[0];
      v107.i32[1] = v118.u8[1];
      v123.i64[0] = v116.u32[0];
      v123.i64[1] = v116.u32[1];
      v128 = v123;
      v114.i32[0] = BYTE6(v126);
      v114.i32[1] = HIBYTE(v126);
      v123.i64[0] = v117.u32[0];
      v123.i64[1] = v117.u32[1];
      v129 = v123;
      v123.i64[0] = v121.u32[0];
      v123.i64[1] = v121.u32[1];
      v130 = v123;
      v123.i64[0] = v119.u32[0];
      v123.i64[1] = v119.u32[1];
      v131 = v123;
      v117.i32[0] = BYTE4(v126);
      v117.i32[1] = BYTE5(v126);
      v123.i64[0] = v120.u32[0];
      v123.i64[1] = v120.u32[1];
      v132 = v123;
      v121.i32[0] = BYTE2(v126);
      v121.i32[1] = BYTE3(v126);
      v123.i64[0] = v122.u32[0];
      v123.i64[1] = v122.u32[1];
      v133 = v123;
      v134 = vand_s8(*v102.i8, 0xFF000000FFLL);
      v135 = v126;
      v136 = BYTE1(v126);
      v137 = vcvtq_f64_u64(v124);
      v102.i64[0] = __PAIR64__(v136, v135);
      v138 = *(v93 + v18);
      v139 = vcvtq_f64_u64(v125);
      v124.i64[0] = vextq_s8(v138, v138, 8uLL).u64[0];
      v140 = vcvtq_f64_u64(v127);
      v120.i32[0] = v124.u8[0];
      v120.i32[1] = v124.u8[1];
      v141 = vcvtq_f64_u64(v128);
      v128.i32[0] = v138.u8[0];
      v128.i32[1] = v138.u8[1];
      v142 = vcvtq_f64_u64(v129);
      *v129.i8 = vand_s8(v113, 0xFF000000FFLL);
      v143 = vcvtq_f64_u64(v130);
      v103.i32[0] = v138.u8[2];
      v103.i32[1] = v138.u8[3];
      v123.i64[0] = v134.u32[0];
      v123.i64[1] = v134.u32[1];
      v144 = v123;
      v130.i32[0] = v138.u8[4];
      v130.i32[1] = v138.u8[5];
      v145 = vcvtq_f64_u64(v131);
      v123.i64[0] = v129.u32[0];
      v123.i64[1] = v129.u32[1];
      v146 = vcvtq_f64_u64(v132);
      v132.i32[0] = v138.u8[6];
      v132.i32[1] = v138.u8[7];
      v147 = *(v93 + v19);
      v148 = vcvtq_f64_u64(v133);
      *v138.i8 = vand_s8(v115, 0xFF000000FFLL);
      v149 = vcvtq_f64_u64(v144);
      v115.i32[0] = v147.u8[6];
      v115.i32[1] = v147.u8[7];
      v150 = vaddq_f64(v140, v143);
      v133.i32[0] = v147.u8[4];
      v133.i32[1] = v147.u8[5];
      v151 = vcvtq_f64_u64(v123);
      v123.i64[0] = v138.u32[0];
      v123.i64[1] = v138.u32[1];
      v152 = vaddq_f64(v139, v142);
      LODWORD(v139.f64[0]) = v147.u8[2];
      HIDWORD(v139.f64[0]) = v147.u8[3];
      v153 = vaddq_f64(v137, v141);
      LODWORD(v137.f64[0]) = v147.u8[0];
      HIDWORD(v137.f64[0]) = v147.u8[1];
      v147.i64[0] = vextq_s8(v147, v147, 8uLL).u64[0];
      v154 = v124.u8[3];
      v155 = vaddq_f64(v148, vcvtq_f64_u64(v123));
      LODWORD(v141.f64[0]) = v124.u8[2];
      v156 = vaddq_f64(v146, v151);
      LODWORD(v146.f64[0]) = v124.u8[4];
      v157 = vaddq_f64(v145, v149);
      LODWORD(v148.f64[0]) = v124.u8[6];
      v124.i32[0] = v147.u8[6];
      HIDWORD(v141.f64[0]) = v154;
      HIDWORD(v146.f64[0]) = v124.u8[5];
      v158 = v147.u8[2];
      HIDWORD(v148.f64[0]) = v124.u8[7];
      v159 = v147.u8[3];
      v160 = v147.u8[0];
      v124.i32[1] = v147.u8[7];
      v161 = v147.u8[1];
      LODWORD(v145.f64[0]) = v147.u8[4];
      HIDWORD(v145.f64[0]) = v147.u8[5];
      *v147.i8 = vand_s8(v409, 0xFF000000FFLL);
      v123.i64[0] = v147.u32[0];
      v123.i64[1] = v147.u32[1];
      v162 = v123;
      *&v142.f64[0] = vand_s8(v97, 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v142.f64[0]);
      v123.i64[1] = HIDWORD(v142.f64[0]);
      v163 = vcvtq_f64_u64(v123);
      v164 = vand_s8(v411, 0xFF000000FFLL);
      v123.i64[0] = v164.u32[0];
      v123.i64[1] = v164.u32[1];
      v165 = vcvtq_f64_u64(v123);
      v166 = vand_s8(v407, 0xFF000000FFLL);
      v123.i64[0] = v166.u32[0];
      v123.i64[1] = v166.u32[1];
      v167 = vaddq_f64(vcvtq_f64_u64(v162), vcvtq_f64_u64(v123));
      v168 = vand_s8(v105, 0xFF000000FFLL);
      v169 = vand_s8(v107, 0xFF000000FFLL);
      v123.i64[0] = v169.u32[0];
      v123.i64[1] = v169.u32[1];
      v170 = vaddq_f64(vaddq_f64(v163, v165), vcvtq_f64_u64(v123));
      v123.i64[0] = v168.u32[0];
      v123.i64[1] = v168.u32[1];
      v171 = vcvtq_f64_u64(v123);
      v172 = vand_s8(v99, 0xFF000000FFLL);
      v123.i64[0] = v172.u32[0];
      v123.i64[1] = v172.u32[1];
      v173 = vaddq_f64(v153, vcvtq_f64_u64(v123));
      v174 = vand_s8(v405, 0xFF000000FFLL);
      v123.i64[0] = v174.u32[0];
      v123.i64[1] = v174.u32[1];
      v175 = vaddq_f64(v150, vcvtq_f64_u64(v123));
      *&v150.f64[0] = vand_s8(*v102.i8, 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v150.f64[0]);
      v123.i64[1] = HIDWORD(v150.f64[0]);
      v176 = vaddq_f64(v167, vcvtq_f64_u64(v123));
      *&v167.f64[0] = vand_s8(v114, 0xFF000000FFLL);
      v177 = vand_s8(v121, 0xFF000000FFLL);
      v123.i64[0] = v177.u32[0];
      v123.i64[1] = v177.u32[1];
      v178 = vaddq_f64(v157, vcvtq_f64_u64(v123));
      v123.i64[0] = LODWORD(v167.f64[0]);
      v123.i64[1] = HIDWORD(v167.f64[0]);
      v179 = vcvtq_f64_u64(v123);
      v180 = vand_s8(v117, 0xFF000000FFLL);
      v123.i64[0] = v180.u32[0];
      v123.i64[1] = v180.u32[1];
      v181 = vaddq_f64(v156, vcvtq_f64_u64(v123));
      v182 = vand_s8(v120, 0xFF000000FFLL);
      v123.i64[0] = v182.u32[0];
      v123.i64[1] = v182.u32[1];
      v183 = vcvtq_f64_u64(v123);
      v184 = vand_s8(*&v141.f64[0], 0xFF000000FFLL);
      v123.i64[0] = v184.u32[0];
      v123.i64[1] = v184.u32[1];
      v185 = vcvtq_f64_u64(v123);
      *v102.i8 = vand_s8(*&v146.f64[0], 0xFF000000FFLL);
      v186 = vand_s8(*v132.i8, 0xFF000000FFLL);
      v123.i64[0] = v186.u32[0];
      v123.i64[1] = v186.u32[1];
      v187 = vaddq_f64(v175, vcvtq_f64_u64(v123));
      v123.i64[0] = v102.u32[0];
      v123.i64[1] = v102.u32[1];
      v188 = vcvtq_f64_u64(v123);
      *v130.i8 = vand_s8(*v130.i8, 0xFF000000FFLL);
      v123.i64[0] = v130.u32[0];
      v123.i64[1] = v130.u32[1];
      v189 = vaddq_f64(vaddq_f64(v152, v171), vcvtq_f64_u64(v123));
      *v130.i8 = vand_s8(*&v148.f64[0], 0xFF000000FFLL);
      v123.i64[0] = v130.u32[0];
      v123.i64[1] = v130.u32[1];
      v190 = v123;
      v191 = vand_s8(v103, 0xFF000000FFLL);
      v123.i64[0] = v191.u32[0];
      v123.i64[1] = v191.u32[1];
      v192 = vaddq_f64(v173, vcvtq_f64_u64(v123));
      *v128.i8 = vand_s8(*v128.i8, 0xFF000000FFLL);
      v123.i64[0] = v128.u32[0];
      v123.i64[1] = v128.u32[1];
      v193 = vand_s8(v115, 0xFF000000FFLL);
      v194 = vaddq_f64(v170, vcvtq_f64_u64(v123));
      v123.i64[0] = v193.u32[0];
      v123.i64[1] = v193.u32[1];
      v195 = vcvtq_f64_u64(v123);
      *v128.i8 = vand_s8(*v133.i8, 0xFF000000FFLL);
      v123.i64[0] = v128.u32[0];
      v123.i64[1] = v128.u32[1];
      v196 = vcvtq_f64_u64(v123);
      v197 = vaddq_f64(vaddq_f64(v155, v179), vcvtq_f64_u64(v190));
      *&v173.f64[0] = vand_s8(*&v139.f64[0], 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v173.f64[0]);
      v123.i64[1] = HIDWORD(v173.f64[0]);
      v198 = vcvtq_f64_u64(v123);
      *v190.i8 = vand_s8(*&v137.f64[0], 0xFF000000FFLL);
      v123.i64[0] = v190.u32[0];
      v123.i64[1] = v190.u32[1];
      v199 = vaddq_f64(v181, v188);
      v200 = vcvtq_f64_u64(v123);
      *v190.i8 = vand_s8(*v124.i8, 0xFF000000FFLL);
      v123.i64[0] = v190.u32[0];
      v123.i64[1] = v190.u32[1];
      v201 = vcvtq_f64_u64(v123);
      *v132.i8 = vand_s8(*&v145.f64[0], 0xFF000000FFLL);
      a7 = vaddq_f64(v178, v185);
      v123.i64[0] = v132.u32[0];
      v123.i64[1] = v132.u32[1];
      v202 = vcvtq_f64_u64(v123);
      *&v171.f64[0] = vand_s8(__PAIR64__(v159, v158), 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v171.f64[0]);
      v123.i64[1] = HIDWORD(v171.f64[0]);
      v203 = vcvtq_f64_u64(v123);
      *&v150.f64[0] = vand_s8(__PAIR64__(v161, v160), 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v150.f64[0]);
      v123.i64[1] = HIDWORD(v150.f64[0]);
      a9 = vaddq_f64(vaddq_f64(v176, v183), vcvtq_f64_u64(v123));
      a11 = vaddq_f64(v192, v198);
      *(v92 + 32) = vaddq_f64(v189, v196);
      *(v92 + 48) = vaddq_f64(v187, v195);
      *v92 = vaddq_f64(v194, v200);
      *(v92 + 16) = a11;
      *(v92 + 96) = vaddq_f64(v199, v202);
      *(v92 + 112) = vaddq_f64(v197, v201);
      a6 = vaddq_f64(a7, v203);
      *(v92 + 64) = a9;
      *(v92 + 80) = a6;
      ++v93;
      v92 += 128;
      result -= 16;
    }

    while (result);
    if (v20 == v15)
    {
      return result;
    }

    if ((v15 & 0xC) == 0)
    {
LABEL_6:
      v21 = 0;
      v22 = &a2->u8[v20];
      v23 = &a2->u8[v20 + v19];
      v24 = &a2->u8[v20 + v18];
      v25 = &a2->u8[v20 + v17];
      v26 = &a2->u8[v20 + v16];
      v27 = v15 - v20;
      v28 = a3 + 8 * v20;
      do
      {
        a6.n128_u8[0] = v22[v21];
        LOBYTE(a7.f64[0]) = v26[v21];
        *&v29 = *&a7.f64[0];
        v30 = a6.n128_u64[0] + *&v29;
        LOBYTE(v29) = v25[v21];
        *&v31 = v29;
        v32 = v30 + *&v31;
        LOBYTE(v31) = v24[v21];
        *&v33 = v31;
        v34 = v32 + *&v33;
        LOBYTE(v33) = v23[v21];
        a7.f64[0] = v33;
        a6.n128_f64[0] = v34 + a7.f64[0];
        *(v28 + 8 * v21++) = a6.n128_u64[0];
      }

      while (v27 != v21);
      return result;
    }
  }

  else
  {
    v20 = 0;
  }

  result = v15 & 0x7FFFFFFC;
  v204 = (a3 + 8 * v20);
  a6.n128_u64[0] = 0xFF000000FFLL;
  v205 = result;
  v206 = a2;
  do
  {
    LODWORD(a7.f64[0]) = *&v206[v20];
    v207 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
    v208 = vand_s8(*&vextq_s8(v207, v207, 8uLL), 0xFF000000FFLL);
    v209.i64[0] = v208.u32[0];
    v209.i64[1] = v208.u32[1];
    v210 = v209;
    *v207.i8 = vand_s8(*v207.i8, 0xFF000000FFLL);
    v209.i64[0] = v207.u32[0];
    v209.i64[1] = v207.u32[1];
    LODWORD(a9.f64[0]) = *&v51[v20];
    v211 = vcvtq_f64_u64(v209);
    v212 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
    v213 = vand_s8(*&vextq_s8(v212, v212, 8uLL), 0xFF000000FFLL);
    v209.i64[0] = v213.u32[0];
    v209.i64[1] = v213.u32[1];
    v214 = v209;
    *v212.i8 = vand_s8(*v212.i8, 0xFF000000FFLL);
    v209.i64[0] = v212.u32[0];
    v209.i64[1] = v212.u32[1];
    v215 = vcvtq_f64_u64(v209);
    a11.i32[0] = *&v52[v20];
    a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
    v216 = vand_s8(*a11.i8, 0xFF000000FFLL);
    v209.i64[0] = v216.u32[0];
    v209.i64[1] = v216.u32[1];
    v217 = vcvtq_f64_u64(v209);
    a11.i64[0] = vextq_s8(a11, a11, 8uLL).u64[0];
    v218 = vaddq_f64(v211, v215);
    *&v215.f64[0] = vand_s8(*a11.i8, 0xFF000000FFLL);
    v209.i64[0] = LODWORD(v215.f64[0]);
    v209.i64[1] = HIDWORD(v215.f64[0]);
    a11.i32[0] = *&v53[v20];
    v219 = vaddq_f64(vcvtq_f64_u64(v210), vcvtq_f64_u64(v214));
    v220 = vmovl_u16(*&vmovl_u8(*a11.i8));
    *a11.i8 = vand_s8(*&vextq_s8(v220, v220, 8uLL), 0xFF000000FFLL);
    v221 = vaddq_f64(v219, vcvtq_f64_u64(v209));
    v209.i64[0] = a11.u32[0];
    v209.i64[1] = a11.u32[1];
    v222 = vcvtq_f64_u64(v209);
    *v220.i8 = vand_s8(*v220.i8, 0xFF000000FFLL);
    v209.i64[0] = v220.u32[0];
    v209.i64[1] = v220.u32[1];
    v223 = vcvtq_f64_u64(v209);
    v224 = vaddq_f64(vaddq_f64(v218, v217), v223);
    LODWORD(v223.f64[0]) = *&v54[v20];
    v225 = vmovl_u16(*&vmovl_u8(*&v223.f64[0]));
    *a11.i8 = vand_s8(*v225.i8, 0xFF000000FFLL);
    v226 = vaddq_f64(v221, v222);
    v209.i64[0] = a11.u32[0];
    v209.i64[1] = a11.u32[1];
    a9 = vcvtq_f64_u64(v209);
    *v225.i8 = vand_s8(*&vextq_s8(v225, v225, 8uLL), 0xFF000000FFLL);
    v209.i64[0] = v225.u32[0];
    v209.i64[1] = v225.u32[1];
    a7 = vaddq_f64(v224, a9);
    v206 += 4;
    v51 += 4;
    *v204 = a7;
    v204[1] = vaddq_f64(v226, vcvtq_f64_u64(v209));
    v204 += 2;
    v52 += 4;
    v53 += 4;
    v54 += 4;
    v205 -= 4;
  }

  while (v20 != v205);
  v20 = v15 & 0x7FFFFFFC;
  if (result != v15)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003638E4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_10036396C()
{
  nullsub_1();

  operator delete();
}

int32x4_t sub_1003639A4(uint64_t a1, uint16x8_t *a2, int32x4_t *a3, int a4, unsigned int a5, int32x4_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v13 = a5 * a4;
    if (v13 < 1)
    {
      return result;
    }

    v14 = (2 * a5);
    if (v13 < 4)
    {
      v15 = 0;
      goto LABEL_54;
    }

    if (v13 >= 0x10)
    {
      v15 = v13 & 0x7FFFFFF0;
      v68 = a2 + 1;
      v69 = &a3[2];
      v70 = v15;
      do
      {
        v71 = v68[-1];
        v72 = *(v68 + 2 * a5 - 16);
        v73 = *(v68 + 2 * a5);
        v74 = vaddl_high_u16(v72, v71);
        v75 = vaddl_u16(*v72.i8, *v71.i8);
        v76 = vaddl_high_u16(v73, *v68);
        v77 = vaddl_u16(*v73.i8, *v68->i8);
        v78 = *(v68 + 2 * v14 - 16);
        v79 = *(v68 + 2 * v14);
        result = vaddw_u16(v75, *v78.i8);
        v69[-2] = result;
        v69[-1] = vaddw_high_u16(v74, v78);
        *v69 = vaddw_u16(v77, *v79.i8);
        v69[1] = vaddw_high_u16(v76, v79);
        v69 += 4;
        v68 += 2;
        v70 -= 16;
      }

      while (v70);
      if (v15 == v13)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_54:
        v84 = a2 + v15;
        v85 = v13 - v15;
        v86 = &a3->i32[v15];
        do
        {
          *v86++ = v84[a5] + *v84 + v84[v14];
          ++v84;
          --v85;
        }

        while (v85);
        return result;
      }
    }

    else
    {
      v15 = 0;
    }

    v80 = v15;
    v15 = v13 & 0x7FFFFFFC;
    v81 = (a2 + 2 * v80);
    v82 = (a3 + 4 * v80);
    v83 = v80 - v15;
    do
    {
      result = vaddw_u16(vaddl_u16(*(v81 + 2 * a5), *v81), *(v81 + 2 * v14));
      *v82++ = result;
      ++v81;
      v83 += 4;
    }

    while (v83);
    if (v15 == v13)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (v6 != 5)
  {
    v16 = v6 * a5;
    v17 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v16 < 1)
          {
            result = 0uLL;
            goto LABEL_106;
          }

          if (v16 < 0xD)
          {
            v18 = 0;
            result = 0uLL;
            goto LABEL_104;
          }

          v89 = ((v16 - 1) >> 2) + 1;
          if (v16 >= 0x3D)
          {
            v131 = 0uLL;
            v94 = v89 & 0x7FFFFFFFFFFFFFF0;
            v132 = 0uLL;
            v133 = a2 + 4;
            v134 = 0uLL;
            v135 = v89 & 0x7FFFFFFFFFFFFFF0;
            v136 = 0uLL;
            v137 = 0uLL;
            v138 = 0uLL;
            v139 = 0uLL;
            v140 = 0uLL;
            v141 = 0uLL;
            v142 = 0uLL;
            v143 = 0uLL;
            v144 = 0uLL;
            v145 = 0uLL;
            v146 = 0uLL;
            v147 = 0uLL;
            v148 = 0uLL;
            do
            {
              i16 = v133[-4].i16;
              v177 = vld4q_s16(i16);
              v178 = vld4q_s16(v133->i16);
              v146 = vaddw_high_u16(v146, v177.val[0]);
              v145 = vaddw_u16(v145, *v177.val[0].i8);
              v148 = vaddw_high_u16(v148, v178.val[0]);
              v147 = vaddw_u16(v147, *v178.val[0].i8);
              v142 = vaddw_high_u16(v142, v177.val[1]);
              v141 = vaddw_u16(v141, *v177.val[1].i8);
              v144 = vaddw_high_u16(v144, v178.val[1]);
              v143 = vaddw_u16(v143, *v178.val[1].i8);
              v138 = vaddw_high_u16(v138, v177.val[2]);
              v137 = vaddw_u16(v137, *v177.val[2].i8);
              v140 = vaddw_high_u16(v140, v178.val[2]);
              v139 = vaddw_u16(v139, *v178.val[2].i8);
              v132 = vaddw_high_u16(v132, v177.val[3]);
              v131 = vaddw_u16(v131, *v177.val[3].i8);
              v136 = vaddw_high_u16(v136, v178.val[3]);
              v134 = vaddw_u16(v134, *v178.val[3].i8);
              v133 += 8;
              v135 -= 16;
            }

            while (v135);
            v150 = vaddvq_s32(vaddq_s32(vaddq_s32(v134, v131), vaddq_s32(v136, v132)));
            v151 = vaddvq_s32(vaddq_s32(vaddq_s32(v143, v141), vaddq_s32(v144, v142)));
            v152 = vaddvq_s32(vaddq_s32(vaddq_s32(v147, v145), vaddq_s32(v148, v146)));
            result.i64[0] = __PAIR64__(v151, v152);
            v153 = vaddvq_s32(vaddq_s32(vaddq_s32(v139, v137), vaddq_s32(v140, v138)));
            result.i32[2] = v153;
            result.i32[3] = v150;
            if (v89 == v94)
            {
              goto LABEL_106;
            }

            if ((v89 & 0xC) == 0)
            {
              v18 = 4 * v94;
LABEL_104:
              v166 = (a2 + 2 * v18);
              do
              {
                v167 = *v166++;
                result = vaddw_u16(result, v167);
                v18 += 4;
              }

              while (v18 < v16);
              goto LABEL_106;
            }

            v90 = v150;
            v91 = v153;
            v92 = v151;
            v93 = v152;
          }

          else
          {
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = 0;
          }

          v18 = 4 * (v89 & 0x7FFFFFFFFFFFFFFCLL);
          v154 = v90;
          v155 = v91;
          v156 = v92;
          v157 = v93;
          v158 = &a2->i16[4 * v94];
          v159 = v94 - (v89 & 0x7FFFFFFFFFFFFFFCLL);
          do
          {
            v176 = vld4_s16(v158);
            v158 += 16;
            v157 = vaddw_u16(v157, v176.val[0]);
            v156 = vaddw_u16(v156, v176.val[1]);
            v155 = vaddw_u16(v155, v176.val[2]);
            v154 = vaddw_u16(v154, v176.val[3]);
            v159 += 4;
          }

          while (v159);
          result.i64[0] = __PAIR64__(vaddvq_s32(v156), vaddvq_s32(v157));
          result.i32[2] = vaddvq_s32(v155);
          result.i32[3] = vaddvq_s32(v154);
          if (v89 != (v89 & 0x7FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_104;
          }

LABEL_106:
          *a3 = result;
          if (v17 >= 1)
          {
            v168 = 0;
            v169 = 2 * v16;
            v170 = &a3[1];
            do
            {
              v168 += 4;
              v171 = *&a2->i8[v169];
              v172 = *a2->i8;
              a2 = (a2 + 8);
              result = vaddq_s32(vsubl_u16(v171, v172), result);
              *v170++ = result;
            }

            while (v168 < v17);
          }

          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v26 = 0;
        v27 = &a3->i8[4 * a5];
        while (v16 < 1)
        {
          v29 = 0;
          a3->i32[0] = 0;
          if (v17 >= 1)
          {
            goto LABEL_34;
          }

LABEL_27:
          ++v26;
          a2 = (a2 + 2);
          a3 = (a3 + 4);
          v27 += 4;
          if (v26 == a5)
          {
            return result;
          }
        }

        v28 = 0;
        v29 = 0;
        v30 = a2;
        do
        {
          v29 += v30->u16[0];
          v30 = (v30 + 2 * a5);
          v28 += a5;
        }

        while (v16 > v28);
        a3->i32[0] = v29;
        if (v17 < 1)
        {
          goto LABEL_27;
        }

LABEL_34:
        v31 = 0;
        do
        {
          v29 = v29 - a2->u16[v31] + a2->u16[v16 + v31];
          *&v27[4 * v31] = v29;
          v31 += a5;
        }

        while (v31 < v17);
        goto LABEL_27;
      }

      if (v16 < 1)
      {
        v23 = 0;
        v22 = 0;
        v21 = 0;
        goto LABEL_99;
      }

      if (v16 < 0xA)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_97;
      }

      v87 = (v16 - 1) / 3u + 1;
      if (v16 >= 0x2E)
      {
        v95 = 0uLL;
        v88 = v87 & 0x7FFFFFF0;
        v96 = 0uLL;
        v97 = v88;
        v98 = 0uLL;
        v99 = a2;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v103 = 0uLL;
        v104 = 0uLL;
        v105 = 0uLL;
        v106 = 0uLL;
        v107 = 0uLL;
        v108 = 0uLL;
        do
        {
          v109 = v99;
          v99 += 6;
          v174 = vld3q_s16(v109);
          v109 += 24;
          v106 = vaddw_high_u16(v106, v174.val[0]);
          v175 = vld3q_s16(v109);
          v105 = vaddw_u16(v105, *v174.val[0].i8);
          v108 = vaddw_high_u16(v108, v175.val[0]);
          v107 = vaddw_u16(v107, *v175.val[0].i8);
          v102 = vaddw_high_u16(v102, v174.val[1]);
          v101 = vaddw_u16(v101, *v174.val[1].i8);
          v104 = vaddw_high_u16(v104, v175.val[1]);
          v103 = vaddw_u16(v103, *v175.val[1].i8);
          v96 = vaddw_high_u16(v96, v174.val[2]);
          v95 = vaddw_u16(v95, *v174.val[2].i8);
          v100 = vaddw_high_u16(v100, v175.val[2]);
          v98 = vaddw_u16(v98, *v175.val[2].i8);
          v97 -= 16;
        }

        while (v97);
        v21 = vaddvq_s32(vaddq_s32(vaddq_s32(v98, v95), vaddq_s32(v100, v96)));
        v22 = vaddvq_s32(vaddq_s32(vaddq_s32(v103, v101), vaddq_s32(v104, v102)));
        result = vaddq_s32(vaddq_s32(v107, v105), vaddq_s32(v108, v106));
        result.i32[0] = vaddvq_s32(result);
        v23 = result.i32[0];
        if (v88 == v87)
        {
          goto LABEL_99;
        }

        if (((((v16 - 1) / 3u) + 1) & 0xC) == 0)
        {
          v20 = 3 * v88;
LABEL_97:
          v160 = &a2->u16[v20 + 2];
          do
          {
            v23 += *(v160 - 2);
            v22 += *(v160 - 1);
            v161 = *v160;
            v160 += 3;
            v21 += v161;
            v20 += 3;
          }

          while (v20 < v16);
          goto LABEL_99;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v88 = 0;
      }

      v20 = 3 * (v87 & 0x7FFFFFFC);
      v110 = v21;
      v111 = v22;
      result = v23;
      v112 = &a2->i16[3 * v88];
      v113 = v88 - (v87 & 0x7FFFFFFC);
      do
      {
        v173 = vld3_s16(v112);
        v112 += 12;
        result = vaddw_u16(result, v173.val[0]);
        v111 = vaddw_u16(v111, v173.val[1]);
        v110 = vaddw_u16(v110, v173.val[2]);
        v113 += 4;
      }

      while (v113);
      v21 = vaddvq_s32(v110);
      v22 = vaddvq_s32(v111);
      result.i32[0] = vaddvq_s32(result);
      v23 = result.i32[0];
      if ((v87 & 0x7FFFFFFC) != v87)
      {
        goto LABEL_97;
      }

LABEL_99:
      a3->i32[0] = v23;
      a3->i32[1] = v22;
      a3->i32[2] = v21;
      if (v17 >= 1)
      {
        v162 = 0;
        v163 = &a3[1].u32[1];
        v164 = &a2->u16[1];
        v165 = &a2->u16[v16 + 1];
        do
        {
          v23 = v23 - *(v164 - 1) + *(v165 - 1);
          v22 = v22 - *v164 + *v165;
          v21 = v21 - v164[1] + v165[1];
          v162 += 3;
          *(v163 - 2) = v23;
          *(v163 - 1) = v22;
          *v163 = v21;
          v163 += 3;
          v165 += 3;
          v164 += 3;
        }

        while (v162 < v17);
      }

      return result;
    }

    if (v16 < 1)
    {
      v25 = 0;
      goto LABEL_83;
    }

    if (v16 < 4)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_81;
    }

    if (v16 >= 0x10)
    {
      v24 = v16 & 0x7FFFFFF0;
      v114 = a2 + 1;
      v115 = 0uLL;
      v116 = v24;
      v117 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      do
      {
        v120 = v114[-1];
        v117 = vaddw_high_u16(v117, v120);
        v115 = vaddw_u16(v115, *v120.i8);
        v119 = vaddw_high_u16(v119, *v114);
        v118 = vaddw_u16(v118, *v114->i8);
        v114 += 2;
        v116 -= 16;
      }

      while (v116);
      result = vaddq_s32(vaddq_s32(v118, v115), vaddq_s32(v119, v117));
      result.i32[0] = vaddvq_s32(result);
      v25 = result.i32[0];
      if (v24 == v16)
      {
        goto LABEL_83;
      }

      if ((v16 & 0xC) == 0)
      {
LABEL_81:
        v125 = a2 + v24;
        v126 = v16 - v24;
        do
        {
          v127 = *v125++;
          v25 += v127;
          --v126;
        }

        while (v126);
        goto LABEL_83;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v121 = v24;
    v24 = v16 & 0x7FFFFFFC;
    result = v25;
    v122 = (a2 + 2 * v121);
    v123 = v121 - v24;
    do
    {
      v124 = *v122++;
      result = vaddw_u16(result, v124);
      v123 += 4;
    }

    while (v123);
    result.i32[0] = vaddvq_s32(result);
    v25 = result.i32[0];
    if (v24 != v16)
    {
      goto LABEL_81;
    }

LABEL_83:
    a3->i32[0] = v25;
    if (v17 >= 1)
    {
      v128 = &a3->u32[1];
      do
      {
        v129 = a2->u16[v16];
        v130 = a2->u16[0];
        a2 = (a2 + 2);
        v25 = v25 - v130 + v129;
        *v128++ = v25;
        --v17;
      }

      while (v17);
    }

    return result;
  }

  v7 = a5 * a4;
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = (2 * a5);
  v10 = (3 * a5);
  v11 = (4 * a5);
  if (v7 < 4)
  {
    v12 = 0;
    goto LABEL_44;
  }

  v19 = 2 * a5;
  if (v7 >= 0x10)
  {
    v12 = v7 & 0x7FFFFFF0;
    v32 = a2 + 1;
    v33 = &a3[2];
    v34 = v12;
    do
    {
      v35 = v32[-1];
      v36 = *(&v32[-1] + v19);
      v37 = *(v32 + 2 * v8);
      v38 = vaddl_high_u16(v36, v35);
      v39 = vaddl_u16(*v36.i8, *v35.i8);
      v40 = vaddl_high_u16(v37, *v32);
      v41 = vaddl_u16(*v37.i8, *v32->i8);
      v42 = *(v32 + 2 * v9 - 16);
      v43 = *(v32 + 2 * v9);
      v44 = vaddw_u16(v39, *v42.i8);
      v45 = vaddw_high_u16(v38, v42);
      v46 = vaddw_u16(v41, *v43.i8);
      v47 = vaddw_high_u16(v40, v43);
      v48 = *(v32 + 2 * v10 - 16);
      v49 = *(v32 + 2 * v10);
      v50 = vaddw_high_u16(v45, v48);
      v51 = vaddw_u16(v44, *v48.i8);
      v52 = vaddw_high_u16(v47, v49);
      v53 = vaddw_u16(v46, *v49.i8);
      v54 = *(v32 + 2 * v11 - 16);
      v55 = *(v32 + 2 * v11);
      result = vaddw_u16(v51, *v54.i8);
      v33[-2] = result;
      v33[-1] = vaddw_high_u16(v50, v54);
      *v33 = vaddw_u16(v53, *v55.i8);
      v33[1] = vaddw_high_u16(v52, v55);
      v33 += 4;
      v32 += 2;
      v34 -= 16;
    }

    while (v34);
    if (v12 == v7)
    {
      return result;
    }

    if ((v7 & 0xC) == 0)
    {
LABEL_44:
      v60 = 0;
      v61 = &a2->i8[2 * v12 + 2 * v11];
      v62 = &a2->i8[2 * v12 + 2 * v10];
      v63 = &a2->i8[2 * v12 + 2 * v9];
      v64 = &a2->i8[2 * v12 + 2 * v8];
      v65 = &a2->i8[2 * v12];
      v66 = v7 - v12;
      v67 = &a3->i8[4 * v12];
      do
      {
        *&v67[4 * v60] = *&v64[2 * v60] + *&v65[2 * v60] + *&v63[2 * v60] + *&v62[2 * v60] + *&v61[2 * v60];
        ++v60;
      }

      while (v66 != v60);
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  v56 = v12;
  v12 = v7 & 0x7FFFFFFC;
  v57 = (a2 + 2 * v56);
  v58 = (a3 + 4 * v56);
  v59 = v56 - v12;
  do
  {
    result = vaddw_u16(vaddw_u16(vaddw_u16(vaddl_u16(*(v57 + 2 * v8), *v57), *(v57 + 2 * v9)), *(v57 + 2 * v10)), *(v57 + 2 * v11));
    *v58++ = result;
    ++v57;
    v59 += 4;
  }

  while (v59);
  if (v12 != v7)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_1003642F8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100364380()
{
  nullsub_1();

  operator delete();
}

float64_t sub_1003643B8(uint64_t a1, uint16x4_t *a2, uint64_t a3, int a4, unsigned int a5, float64x2_t a6, float64x2_t a7, float64x2_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v14 = *(a1 + 8);
  if (v14 == 3)
  {
    v21 = a5 * a4;
    if (v21 < 1)
    {
      return a6.f64[0];
    }

    v22 = (2 * a5);
    if (v21 >= 8)
    {
      v23 = v21 & 0x7FFFFFF8;
      v92 = v23;
      v93 = a3;
      v94 = a2;
      do
      {
        v95 = vmovl_u16(*v94);
        v96.i64[0] = v95.u32[0];
        v96.i64[1] = v95.u32[1];
        v97 = vcvtq_f64_u64(v96);
        v96.i64[0] = v95.u32[2];
        v96.i64[1] = v95.u32[3];
        v98 = vcvtq_f64_u64(v96);
        v99 = vmovl_high_u16(*v94->i8);
        v96.i64[0] = v99.u32[0];
        v96.i64[1] = v99.u32[1];
        v100 = vcvtq_f64_u64(v96);
        v96.i64[0] = v99.u32[2];
        v96.i64[1] = v99.u32[3];
        v101 = vcvtq_f64_u64(v96);
        v102 = *&v94->i8[2 * a5];
        v103 = vmovl_u16(*v102.i8);
        v96.i64[0] = v103.u32[0];
        v96.i64[1] = v103.u32[1];
        v104 = vcvtq_f64_u64(v96);
        v96.i64[0] = v103.u32[2];
        v96.i64[1] = v103.u32[3];
        v105 = vcvtq_f64_u64(v96);
        v106 = vmovl_high_u16(v102);
        v96.i64[0] = v106.u32[0];
        v96.i64[1] = v106.u32[1];
        v107 = vcvtq_f64_u64(v96);
        v96.i64[0] = v106.u32[2];
        v96.i64[1] = v106.u32[3];
        v108 = vaddq_f64(v101, vcvtq_f64_u64(v96));
        v109 = vaddq_f64(v100, v107);
        a7 = vaddq_f64(v98, v105);
        v110 = vaddq_f64(v97, v104);
        v111 = *&v94->i8[2 * v22];
        v112 = vmovl_high_u16(v111);
        v96.i64[0] = v112.u32[2];
        v96.i64[1] = v112.u32[3];
        v113 = vcvtq_f64_u64(v96);
        v96.i64[0] = v112.u32[0];
        v96.i64[1] = v112.u32[1];
        v114 = vcvtq_f64_u64(v96);
        v115 = vmovl_u16(*v111.i8);
        v96.i64[0] = v115.u32[2];
        v96.i64[1] = v115.u32[3];
        v116 = vcvtq_f64_u64(v96);
        v96.i64[0] = v115.u32[0];
        v96.i64[1] = v115.u32[1];
        v93[2] = vaddq_f64(v109, v114);
        v93[3] = vaddq_f64(v108, v113);
        a6 = vaddq_f64(a7, v116);
        *v93 = vaddq_f64(v110, vcvtq_f64_u64(v96));
        v93[1] = a6;
        v93 += 4;
        v94 += 2;
        v92 -= 8;
      }

      while (v92);
      if (v23 == v21)
      {
        return a6.f64[0];
      }
    }

    else
    {
      v23 = 0;
    }

    v117 = a2 + v23;
    v118 = v21 - v23;
    v119 = (a3 + 8 * v23);
    do
    {
      LOWORD(a6.f64[0]) = *v117;
      LOWORD(a7.f64[0]) = v117[a5];
      *&v120 = *&a7.f64[0];
      v121 = *&a6.f64[0] + *&v120;
      LOWORD(v120) = v117[v22];
      a7.f64[0] = v120;
      a6.f64[0] = v121 + a7.f64[0];
      *v119++ = a6.f64[0];
      ++v117;
      --v118;
    }

    while (v118);
    return a6.f64[0];
  }

  if (v14 != 5)
  {
    v24 = v14 * a5;
    v25 = (a4 - 1) * a5;
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v24 < 1)
          {
            a6 = 0uLL;
            v28 = 0uLL;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          else
          {
            v26 = 0;
            a6 = 0uLL;
            v27 = a2;
            v28 = 0uLL;
            do
            {
              v29 = *v27++;
              v30 = vmovl_u16(v29);
              v31.i64[0] = v30.u32[0];
              v31.i64[1] = v30.u32[1];
              v32 = vcvtq_f64_u64(v31);
              v31.i64[0] = v30.u32[2];
              v31.i64[1] = v30.u32[3];
              v28 = vaddq_f64(v28, vcvtq_f64_u64(v31));
              a6 = vaddq_f64(a6, v32);
              v26 += 4;
            }

            while (v26 < v24);
            *a3 = a6;
            *(a3 + 16) = v28;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          v131 = 0;
          v132 = 2 * v24;
          v133 = (a3 + 32);
          do
          {
            v131 += 4;
            v134 = vmovl_u16(*(a2 + v132));
            v135.i64[0] = v134.u32[0];
            v135.i64[1] = v134.u32[1];
            v136 = vcvtq_f64_u64(v135);
            v135.i64[0] = v134.u32[2];
            v135.i64[1] = v134.u32[3];
            v137 = vcvtq_f64_u64(v135);
            v138 = *a2++;
            v139 = vmovl_u16(v138);
            v135.i64[0] = v139.u32[0];
            v135.i64[1] = v139.u32[1];
            v140 = vcvtq_f64_u64(v135);
            v135.i64[0] = v139.u32[2];
            v135.i64[1] = v139.u32[3];
            a6 = vaddq_f64(a6, vsubq_f64(v136, v140));
            v28 = vaddq_f64(v28, vsubq_f64(v137, vcvtq_f64_u64(v135)));
            *v133 = a6;
            v133[1] = v28;
            v133 += 2;
          }

          while (v131 < v25);
          return a6.f64[0];
        }

        if (a5 < 1)
        {
          return a6.f64[0];
        }

        v126 = 0;
        v127 = a3 + 8 * a5;
        while (v24 < 1)
        {
          a6.f64[0] = 0.0;
          *a3 = 0;
          if (v25 >= 1)
          {
            goto LABEL_44;
          }

LABEL_37:
          ++v126;
          a2 = (a2 + 2);
          a3 += 8;
          v127 += 8;
          if (v126 == a5)
          {
            return a6.f64[0];
          }
        }

        v128 = 0;
        a6.f64[0] = 0.0;
        v129 = a2;
        do
        {
          LOWORD(a7.f64[0]) = v129->i16[0];
          a7.f64[0] = *&a7.f64[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          v129 = (v129 + 2 * a5);
          v128 += a5;
        }

        while (v24 > v128);
        *a3 = a6.f64[0];
        if (v25 < 1)
        {
          goto LABEL_37;
        }

LABEL_44:
        v130 = 0;
        do
        {
          LOWORD(a7.f64[0]) = a2->i16[v24 + v130];
          LOWORD(a8.f64[0]) = a2->i16[v130];
          a8.f64[0] = *&a8.f64[0];
          a7.f64[0] = *&a7.f64[0] - a8.f64[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          *(v127 + 8 * v130) = a6.f64[0];
          v130 += a5;
        }

        while (v130 < v25);
        goto LABEL_37;
      }

      if (v24 < 1)
      {
        v124 = 0.0;
        v123 = 0.0;
        a6.f64[0] = 0.0;
        goto LABEL_58;
      }

      if (v24 > 3)
      {
        v141 = (v24 - 1) / 3u + 1;
        v122 = 3 * (v141 & 0x7FFFFFFE);
        v142 = a2 + 3;
        a6.f64[0] = 0.0;
        v143 = v141 & 0x7FFFFFFE;
        v123 = 0.0;
        v124 = 0.0;
        do
        {
          LOWORD(a9) = *(v142 - 3);
          a9 = *&a9;
          LOWORD(a10) = *v142;
          a10 = *&a10;
          LOWORD(a11) = *(v142 - 2);
          a11 = *&a11;
          LOWORD(a12) = v142[1];
          a12 = *&a12;
          LOWORD(a13) = *(v142 - 1);
          a13 = *&a13;
          LOWORD(v13) = v142[2];
          v13 = *&v13;
          a6.f64[0] = a6.f64[0] + a13 + v13;
          v123 = v123 + a11 + a12;
          v124 = v124 + a9 + a10;
          v142 += 6;
          v143 -= 2;
        }

        while (v143);
        if ((v141 & 0x7FFFFFFE) == v141)
        {
LABEL_58:
          *a3 = v124;
          *(a3 + 8) = v123;
          *(a3 + 16) = a6.f64[0];
          if (v25 >= 1)
          {
            v147 = 0;
            v148 = (a3 + 40);
            v149 = a2 + 1;
            v150 = a2 + v24 + 1;
            do
            {
              LOWORD(a9) = *(v150 - 1);
              LOWORD(a10) = *(v149 - 1);
              *&v151 = *&a10;
              *&v152 = *&a9 - *&v151;
              v124 = v124 + *&v152;
              LOWORD(v152) = *v150;
              LOWORD(v151) = *v149;
              *&v153 = v151;
              *&v154 = v152 - *&v153;
              v123 = v123 + *&v154;
              LOWORD(v154) = v150[1];
              LOWORD(v153) = v149[1];
              a10 = v153;
              a9 = v154 - a10;
              a6.f64[0] = a6.f64[0] + a9;
              v147 += 3;
              *(v148 - 2) = v124;
              *(v148 - 1) = v123;
              *v148 = a6.f64[0];
              v148 += 3;
              v150 += 3;
              v149 += 3;
            }

            while (v147 < v25);
          }

          return a6.f64[0];
        }
      }

      else
      {
        v122 = 0;
        a6.f64[0] = 0.0;
        v123 = 0.0;
        v124 = 0.0;
      }

      v144 = a2 + v122 + 2;
      do
      {
        LOWORD(a9) = *(v144 - 2);
        *&v145 = *&a9;
        v124 = v124 + *&v145;
        LOWORD(v145) = *(v144 - 1);
        *&v146 = v145;
        v123 = v123 + *&v146;
        LOWORD(v146) = *v144;
        a9 = v146;
        a6.f64[0] = a6.f64[0] + a9;
        v122 += 3;
        v144 += 3;
      }

      while (v122 < v24);
      goto LABEL_58;
    }

    if (v24 < 1)
    {
      a6.f64[0] = 0.0;
      goto LABEL_74;
    }

    if (v24 < 8)
    {
      v125 = 0;
      a6.f64[0] = 0.0;
      goto LABEL_72;
    }

    if (v24 >= 0x10)
    {
      v125 = v24 & 0x7FFFFFF0;
      v164 = &a2[2];
      a6.f64[0] = 0.0;
      v165 = v125;
      do
      {
        v166 = v164[-1];
        v167 = vmovl_high_u16(v166);
        v168.i64[0] = v167.u32[2];
        v168.i64[1] = v167.u32[3];
        v169 = vcvtq_f64_u64(v168);
        v168.i64[0] = v167.u32[0];
        v168.i64[1] = v167.u32[1];
        v170 = vcvtq_f64_u64(v168);
        v171 = vmovl_u16(*v166.i8);
        v168.i64[0] = v171.u32[2];
        v168.i64[1] = v171.u32[3];
        v172 = vcvtq_f64_u64(v168);
        v168.i64[0] = v171.u32[0];
        v168.i64[1] = v171.u32[1];
        a7 = vcvtq_f64_u64(v168);
        v173 = vmovl_high_u16(*v164);
        v168.i64[0] = v173.u32[2];
        v168.i64[1] = v173.u32[3];
        v174 = vcvtq_f64_u64(v168);
        v168.i64[0] = v173.u32[0];
        v168.i64[1] = v173.u32[1];
        v175 = vcvtq_f64_u64(v168);
        v176 = vmovl_u16(*v164->i8);
        v168.i64[0] = v176.u32[2];
        v168.i64[1] = v176.u32[3];
        v177 = vcvtq_f64_u64(v168);
        v168.i64[0] = v176.u32[0];
        v168.i64[1] = v176.u32[1];
        a8 = vcvtq_f64_u64(v168);
        a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v172.f64[0] + v172.f64[1] + v170.f64[0] + v170.f64[1] + v169.f64[0] + v169.f64[1] + a8.f64[0] + a8.f64[1] + v177.f64[0] + v177.f64[1] + v175.f64[0] + v175.f64[1] + v174.f64[0] + v174.f64[1];
        v164 += 2;
        v165 -= 16;
      }

      while (v165);
      if (v125 == v24)
      {
        goto LABEL_74;
      }

      if ((v24 & 8) == 0)
      {
LABEL_72:
        v178 = a2 + v125;
        v179 = v24 - v125;
        do
        {
          v180 = *v178++;
          a7.f64[0] = v180;
          a6.f64[0] = a6.f64[0] + v180;
          --v179;
        }

        while (v179);
        goto LABEL_74;
      }
    }

    else
    {
      v125 = 0;
      a6.f64[0] = 0.0;
    }

    v155 = v125;
    v125 = v24 & 0x7FFFFFF8;
    v156 = (a2 + 2 * v155);
    v157 = v155 - v125;
    do
    {
      v158 = *v156++;
      v159 = vmovl_high_u16(v158);
      v160.i64[0] = v159.u32[2];
      v160.i64[1] = v159.u32[3];
      v161 = vcvtq_f64_u64(v160);
      v160.i64[0] = v159.u32[0];
      v160.i64[1] = v159.u32[1];
      a8 = vcvtq_f64_u64(v160);
      v162 = vmovl_u16(*v158.i8);
      v160.i64[0] = v162.u32[2];
      v160.i64[1] = v162.u32[3];
      v163 = vcvtq_f64_u64(v160);
      v160.i64[0] = v162.u32[0];
      v160.i64[1] = v162.u32[1];
      a7 = vcvtq_f64_u64(v160);
      a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v163.f64[0] + v163.f64[1] + a8.f64[0] + a8.f64[1] + v161.f64[0] + v161.f64[1];
      v157 += 8;
    }

    while (v157);
    if (v125 != v24)
    {
      goto LABEL_72;
    }

LABEL_74:
    *a3 = a6.f64[0];
    if (v25 >= 1)
    {
      v181 = (a3 + 8);
      do
      {
        LOWORD(a7.f64[0]) = a2->i16[v24];
        LOWORD(a8.f64[0]) = a2->i16[0];
        a8.f64[0] = *&a8.f64[0];
        a7.f64[0] = *&a7.f64[0] - a8.f64[0];
        a6.f64[0] = a6.f64[0] + a7.f64[0];
        *v181++ = a6.f64[0];
        a2 = (a2 + 2);
        --v25;
      }

      while (v25);
    }

    return a6.f64[0];
  }

  v15 = a5 * a4;
  if (v15 < 1)
  {
    return a6.f64[0];
  }

  v16 = a5;
  v17 = (2 * a5);
  v18 = (3 * a5);
  v19 = (4 * a5);
  if (v15 <= 7)
  {
    v20 = 0;
LABEL_20:
    v78 = 0;
    v79 = a2 + 2 * v20 + 2 * v19;
    v80 = a2 + 2 * v20 + 2 * v18;
    v81 = a2 + 2 * v20 + 2 * v17;
    v82 = a2 + 2 * v20 + 2 * v16;
    v83 = a2 + 2 * v20;
    v84 = v15 - v20;
    v85 = a3 + 8 * v20;
    do
    {
      LOWORD(a6.f64[0]) = *&v83[2 * v78];
      LOWORD(a7.f64[0]) = *&v82[2 * v78];
      *&v86 = *&a7.f64[0];
      v87 = *&a6.f64[0] + *&v86;
      LOWORD(v86) = *&v81[2 * v78];
      *&v88 = v86;
      v89 = v87 + *&v88;
      LOWORD(v88) = *&v80[2 * v78];
      *&v90 = v88;
      v91 = v89 + *&v90;
      LOWORD(v90) = *&v79[2 * v78];
      a7.f64[0] = v90;
      a6.f64[0] = v91 + a7.f64[0];
      *(v85 + 8 * v78++) = a6.f64[0];
    }

    while (v84 != v78);
    return a6.f64[0];
  }

  v20 = v15 & 0x7FFFFFF8;
  v33 = v20;
  v34 = a3;
  v35 = a2;
  do
  {
    v36 = vmovl_u16(*v35);
    v37.i64[0] = v36.u32[0];
    v37.i64[1] = v36.u32[1];
    v38 = vcvtq_f64_u64(v37);
    v37.i64[0] = v36.u32[2];
    v37.i64[1] = v36.u32[3];
    v39 = vcvtq_f64_u64(v37);
    v40 = vmovl_high_u16(*v35->i8);
    v37.i64[0] = v40.u32[0];
    v37.i64[1] = v40.u32[1];
    v41 = vcvtq_f64_u64(v37);
    v37.i64[0] = v40.u32[2];
    v37.i64[1] = v40.u32[3];
    v42 = vcvtq_f64_u64(v37);
    v43 = *&v35->i8[2 * v16];
    v44 = vmovl_u16(*v43.i8);
    v37.i64[0] = v44.u32[0];
    v37.i64[1] = v44.u32[1];
    v45 = vcvtq_f64_u64(v37);
    v37.i64[0] = v44.u32[2];
    v37.i64[1] = v44.u32[3];
    v46 = vcvtq_f64_u64(v37);
    v47 = vmovl_high_u16(v43);
    v37.i64[0] = v47.u32[0];
    v37.i64[1] = v47.u32[1];
    v48 = vcvtq_f64_u64(v37);
    v37.i64[0] = v47.u32[2];
    v37.i64[1] = v47.u32[3];
    v49 = vaddq_f64(v42, vcvtq_f64_u64(v37));
    v50 = vaddq_f64(v41, v48);
    v51 = vaddq_f64(v39, v46);
    v52 = *&v35->i8[2 * v17];
    v53 = vaddq_f64(v38, v45);
    v54 = vmovl_high_u16(v52);
    v37.i64[0] = v54.u32[2];
    v37.i64[1] = v54.u32[3];
    v55 = vcvtq_f64_u64(v37);
    v37.i64[0] = v54.u32[0];
    v37.i64[1] = v54.u32[1];
    v56 = vcvtq_f64_u64(v37);
    v57 = vmovl_u16(*v52.i8);
    v37.i64[0] = v57.u32[2];
    v37.i64[1] = v57.u32[3];
    v58 = vcvtq_f64_u64(v37);
    v37.i64[0] = v57.u32[0];
    v37.i64[1] = v57.u32[1];
    v59 = vaddq_f64(v53, vcvtq_f64_u64(v37));
    v60 = vaddq_f64(v51, v58);
    v61 = vaddq_f64(v50, v56);
    v62 = vaddq_f64(v49, v55);
    v63 = *&v35->i8[2 * v18];
    v64 = vmovl_u16(*v63.i8);
    v37.i64[0] = v64.u32[0];
    v37.i64[1] = v64.u32[1];
    v65 = vcvtq_f64_u64(v37);
    v37.i64[0] = v64.u32[2];
    v37.i64[1] = v64.u32[3];
    v66 = vcvtq_f64_u64(v37);
    v67 = vmovl_high_u16(v63);
    v37.i64[0] = v67.u32[0];
    v37.i64[1] = v67.u32[1];
    v68 = vcvtq_f64_u64(v37);
    v37.i64[0] = v67.u32[2];
    v37.i64[1] = v67.u32[3];
    v69 = vaddq_f64(v62, vcvtq_f64_u64(v37));
    v70 = vaddq_f64(v61, v68);
    a7 = vaddq_f64(v60, v66);
    v71 = vaddq_f64(v59, v65);
    v72 = *&v35->i8[2 * v19];
    v73 = vmovl_high_u16(v72);
    v37.i64[0] = v73.u32[2];
    v37.i64[1] = v73.u32[3];
    v74 = vcvtq_f64_u64(v37);
    v37.i64[0] = v73.u32[0];
    v37.i64[1] = v73.u32[1];
    v75 = vcvtq_f64_u64(v37);
    v76 = vmovl_u16(*v72.i8);
    v37.i64[0] = v76.u32[2];
    v37.i64[1] = v76.u32[3];
    v77 = vcvtq_f64_u64(v37);
    v37.i64[0] = v76.u32[0];
    v37.i64[1] = v76.u32[1];
    v34[2] = vaddq_f64(v70, v75);
    v34[3] = vaddq_f64(v69, v74);
    a6 = vaddq_f64(a7, v77);
    *v34 = vaddq_f64(v71, vcvtq_f64_u64(v37));
    v34[1] = a6;
    v34 += 4;
    v35 += 2;
    v33 -= 8;
  }

  while (v33);
  if (v20 != v15)
  {
    goto LABEL_20;
  }

  return a6.f64[0];
}