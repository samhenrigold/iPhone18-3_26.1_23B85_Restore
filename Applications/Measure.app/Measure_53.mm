int8x8_t *sub_1003516B8(int8x8_t *result, int a2, uint64_t a3, __int16 *a4, unsigned __int8 *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 4 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->u8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 8;
            v10 += 2;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 4);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v43 = 0;
      while (1)
      {
        if (a5 >= result + a2 || &a5[2 * a2] <= result)
        {
          v10 = &a5[2 * (a2 & 0x7FFFFFE0)];
          v45 = a5 + 32;
          v46 = a2 & 0x7FFFFFE0;
          v47 = result + 2;
          do
          {
            _Q0 = *v47[-2].i8;
            _Q1 = *v47->i8;
            v50 = vshll_n_s8(*&_Q0, 8uLL);
            __asm { SHLL2           V0.8H, V0.16B, #8 }

            v51 = vshll_n_s8(*v47, 8uLL);
            __asm { SHLL2           V1.8H, V1.16B, #8 }

            *(v45 - 2) = v50;
            *(v45 - 1) = _Q0;
            *v45 = v51;
            *(v45 + 1) = _Q1;
            v45 += 64;
            v47 += 4;
            v46 -= 32;
          }

          while (v46);
          v44 = a2 & 0x7FFFFFE0;
          if (v44 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v44 = 0;
          v10 = a5;
        }

        v52 = a2 - v44;
        v53 = result + v44;
        do
        {
          v54 = *v53++;
          *v10 = v54 << 8;
          v10 += 2;
          --v52;
        }

        while (v52);
LABEL_42:
        ++v43;
        a5 = v10;
        if (v43 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 4);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = (result + *(a3 + 4 * v14) * a2);
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= v15->u8[0];
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15->u8[a2];
      }

      *a5 = v18 + v17;
      a5 += 2;
      v15 = (v15 + 1);
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = *(a3 + 4 * a8 - 4) * a2;
  v20 = result + v19;
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 2 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[2 * (v21 & 0x7FFFFFE0)];
        v30 = a5 + 32;
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 2;
        do
        {
          _Q0 = *v32[-2].i8;
          _Q1 = *v32->i8;
          v35 = vshll_n_s8(*&_Q0, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v40 = vshll_n_s8(*v32, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          *(v30 - 2) = v35;
          *(v30 - 1) = _Q0;
          *v30 = v40;
          *(v30 + 1) = _Q1;
          v30 += 64;
          v32 += 4;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v41 = v21 - result;
      result = (result + v28);
      do
      {
        v42 = result->u8[0];
        result = (result + 1);
        *v29 = v42 << 8;
        v29 += 2;
        --v41;
      }

      while (v41);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = result + v19;
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 8;
      a5 += 2;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

int8x8_t *sub_10035197C(int8x8_t *result, int a2, uint64_t a3, const __int16 *a4, int8x8_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v8 = 4 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 4);
    if (a6 < a7)
    {
      goto LABEL_9;
    }

LABEL_17:
    LODWORD(v14) = a6;
LABEL_32:
    v15 = a5;
    goto LABEL_33;
  }

  if (a2 >= 0x20)
  {
    v19 = 0;
    while (1)
    {
      if (a5 >= &result->i8[a2] || (a5 + 2 * a2) <= result)
      {
        v10 = (a5 + 2 * (a2 & 0x7FFFFFE0));
        v21 = &a5[4];
        v22 = a2 & 0x7FFFFFE0;
        v23 = result + 2;
        do
        {
          _Q0 = *v23[-2].i8;
          _Q1 = *v23->i8;
          v26 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v30 = vshll_n_s8(*v23, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v21[-2] = v26;
          v21[-1] = _Q0;
          *v21 = v30;
          v21[1] = _Q1;
          v21 += 4;
          v23 += 4;
          v22 -= 32;
        }

        while (v22);
        v20 = a2 & 0x7FFFFFE0;
        if (v20 == a2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = 0;
        v10 = a5;
      }

      v31 = result + v20;
      v32 = a2 - v20;
      do
      {
        v33 = *v31++;
        v10->i16[0] = v33 << 8;
        v10 = (v10 + 2);
        --v32;
      }

      while (v32);
LABEL_21:
      ++v19;
      a5 = v10;
      if (v19 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->u8[0];
      v11 = (v11 + 1);
      v10->i16[0] = v13 << 8;
      v10 = (v10 + 2);
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 4);
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (a2 < 1)
  {
    LODWORD(v14) = a7;
    goto LABEL_32;
  }

  v14 = a6;
  if (a2 >= 0x10)
  {
    v55 = 2 * a2;
    v56 = &a4[2 * (~a6 + a7) + 2];
    v57 = a4;
    while (1)
    {
      v58 = 0;
      v59 = *(a3 + 4 * v14);
      v60 = (result + v59 * a2);
      v61 = v60->u64 + a2;
      v62 = a5 + v55;
      v64 = a5 < &result->i8[v55 + v59 * a2] && v61 < v62;
      v66 = a5 < v61 && v60 < v62;
      v67 = a4 >= v62 || a5 >= v56;
      if (!v67 || v64 || v66)
      {
        v15 = a5;
      }

      else
      {
        v15 = (a5 + 2 * (a2 & 0x7FFFFFF0));
        v68 = v57;
        v69 = vld1q_dup_s16(v68++);
        v70 = vld1q_dup_s16(v68);
        v71 = a2 & 0x7FFFFFF0;
        do
        {
          v72 = *(v60 + a2);
          v73 = vmlaq_s16(vmulq_s16(v69, vmovl_high_u8(*v60)), v70, vmovl_high_u8(v72));
          *a5->i8 = vmlaq_s16(vmulq_s16(v69, vmovl_u8(*v60->i8)), v70, vmovl_u8(*v72.i8));
          *a5[2].i8 = v73;
          a5 += 4;
          ++v60;
          v71 -= 16;
        }

        while (v71);
        v58 = a2 & 0x7FFFFFF0;
        if (v58 == a2)
        {
          goto LABEL_52;
        }
      }

      v74 = (result + v58 + v59 * a2);
      do
      {
        v75 = *v57 * v74->u8[0];
        v15->i16[0] = v75;
        v15->i16[0] = v75 + v57[1] * v74->u8[a2];
        v15 = (v15 + 2);
        ++v58;
        v74 = (v74 + 1);
      }

      while (a2 != v58);
LABEL_52:
      ++v14;
      v57 += 2;
      a5 = v15;
      if (v14 >= a7)
      {
        goto LABEL_33;
      }
    }
  }

  v15 = a5;
  do
  {
    v16 = (result + *(a3 + 4 * v14) * a2);
    v17 = a2;
    do
    {
      v18 = *a4 * v16->u8[0];
      v15->i16[0] = v18;
      v15->i16[0] = v18 + a4[1] * v16->u8[a2];
      v15 = (v15 + 2);
      v16 = (v16 + 1);
      --v17;
    }

    while (v17);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
LABEL_33:
  if (v14 >= a8 || a2 < 1)
  {
    return result;
  }

  v34 = *(a3 + 4 * a8 - 4) * a2;
  v35 = result + v34;
  v36 = a2;
  if (a2 >= 0x20)
  {
    v40 = 2 * a2;
    v41 = &v35[a2];
    v42 = a2 & 0x7FFFFFE0;
    v43 = (result + v34);
    while (1)
    {
      if (v15 >= v41 || v35 >= v15 + v40)
      {
        result = (v15 + 2 * (v36 & 0x7FFFFFE0));
        v45 = &v15[4];
        v46 = v36 & 0x7FFFFFE0;
        v47 = v43 + 2;
        do
        {
          _Q0 = *v47[-2].i8;
          _Q1 = *v47->i8;
          v50 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v51 = vshll_n_s8(*v47, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v45[-2] = v50;
          v45[-1] = _Q0;
          *v45 = v51;
          v45[1] = _Q1;
          v45 += 4;
          v47 += 4;
          v46 -= 32;
        }

        while (v46);
        v44 = v36 & 0x7FFFFFE0;
        if (v42 == v36)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v44 = 0;
        result = v15;
      }

      v52 = v43 + v44;
      v53 = v36 - v44;
      do
      {
        v54 = *v52++;
        result->i16[0] = v54 << 8;
        result = (result + 2);
        --v53;
      }

      while (v53);
LABEL_41:
      LODWORD(v14) = v14 + 1;
      v15 = result;
      if (v14 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v37 = result + v34;
    v38 = a2;
    do
    {
      v39 = *v37++;
      v15->i16[0] = v39 << 8;
      v15 = (v15 + 2);
      --v38;
    }

    while (v38);
    LODWORD(v14) = v14 + 1;
  }

  while (v14 != a8);
  return result;
}

int8x8_t *sub_100351D64(int8x8_t *result, int a2, uint64_t a3, __int16 *a4, int16x8_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  v8 = 4 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 4);
    if (a6 >= a7)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (a2 >= 0x20)
  {
    v18 = 0;
    while (1)
    {
      if (a5 >= (result + a2) || a5 + 2 * a2 <= result)
      {
        v10 = (a5 + 2 * (a2 & 0x7FFFFFE0));
        v20 = a5 + 2;
        v21 = a2 & 0x7FFFFFE0;
        v22 = result + 2;
        do
        {
          _Q0 = *v22[-2].i8;
          _Q1 = *v22->i8;
          v25 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v30 = vshll_n_s8(*v22, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v20[-2] = v25;
          v20[-1] = _Q0;
          *v20 = v30;
          v20[1] = _Q1;
          v20 += 4;
          v22 += 4;
          v21 -= 32;
        }

        while (v21);
        v19 = a2 & 0x7FFFFFE0;
        if (v19 == a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = 0;
        v10 = a5;
      }

      v31 = result + v19;
      v32 = a2 - v19;
      do
      {
        v33 = *v31++;
        v10->i16[0] = v33 << 8;
        v10 = (v10 + 2);
        --v32;
      }

      while (v32);
LABEL_23:
      ++v18;
      a5 = v10;
      if (v18 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->u8[0];
      v11 = (v11 + 1);
      v10->i16[0] = v13 << 8;
      v10 = (v10 + 2);
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 4);
  a5 = v10;
  if (a6 < a7)
  {
LABEL_13:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v14 = 0;
        v15 = (result + *(a3 + 4 * a6) * a2);
        do
        {
          v16 = *a4;
          if (*a4)
          {
            v16 *= v15->u8[0];
          }

          a5->i16[0] = v16;
          v17 = a4[1];
          if (v17)
          {
            v17 *= v15->u8[a2];
          }

          a5->i16[0] = v17 + v16;
          a5 = (a5 + 2);
          ++v14;
          v15 = (v15 + 1);
        }

        while (a2 != v14);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 >= a8 || a2 < 1)
  {
    return result;
  }

  v34 = *(a3 + 4 * a8 - 4) * a2;
  v35 = result + v34;
  v36 = a2;
  if (a2 >= 0x20)
  {
    v40 = 2 * a2;
    v41 = &v35[a2];
    v42 = a2 & 0x7FFFFFE0;
    v43 = (result + v34);
    while (1)
    {
      if (a5 >= v41 || v35 >= &a5->i8[v40])
      {
        v44 = (a5 + 2 * (v36 & 0x7FFFFFE0));
        v45 = a5 + 2;
        v46 = v36 & 0x7FFFFFE0;
        v47 = v43 + 2;
        do
        {
          _Q0 = *v47[-2].i8;
          _Q1 = *v47->i8;
          v50 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v51 = vshll_n_s8(*v47, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v45[-2] = v50;
          v45[-1] = _Q0;
          *v45 = v51;
          v45[1] = _Q1;
          v45 += 4;
          v47 += 4;
          v46 -= 32;
        }

        while (v46);
        result = (v36 & 0x7FFFFFE0);
        if (v42 == v36)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = 0;
        v44 = a5;
      }

      v52 = result + v43;
      result = (v36 - result);
      do
      {
        v53 = *v52++;
        v44->i16[0] = v53 << 8;
        v44 = (v44 + 2);
        result = (result - 1);
      }

      while (result);
LABEL_42:
      LODWORD(a6) = a6 + 1;
      a5 = v44;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v37 = result + v34;
    v38 = a2;
    do
    {
      v39 = *v37++;
      a5->i16[0] = v39 << 8;
      a5 = (a5 + 2);
      --v38;
    }

    while (v38);
    LODWORD(a6) = a6 + 1;
  }

  while (a6 != a8);
  return result;
}

uint64_t sub_10035202C(uint64_t a1, int a2, unsigned int *a3, _WORD *a4)
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
      if ((v15 & 0x8000000000000000) != 0)
      {
        result = 0;
      }

      else
      {
        sub_10029DA40(&v17, 0x100u);
        sub_10029E004(&v15, &v17, &v18);
        result = sub_10029DC5C(&v18);
      }

      a4[1] = result;
      *a4 = 256 - result;
    }
  }

  return result;
}

void sub_100352198()
{
  nullsub_1();

  operator delete();
}

__int8 *sub_1003521D0(uint64_t a1, int *a2)
{
  v3 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v188, 0x410uLL);
  v186 = v188;
  v187 = v3;
  if (v3 >= 0x209)
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

  v183 = v8;
  if (v5 >= v6)
  {
    v9 = 0;
    v10 = 4294967294;
    if (v5 >= v7)
    {
LABEL_11:
      if (v5 < v8)
      {
        goto LABEL_50;
      }

LABEL_12:
      v11 = v186;
      v12 = *(a1 + 28);
      if (v10 + 2 <= v12)
      {
        goto LABEL_128;
      }

      goto LABEL_13;
    }
  }

  else
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v188, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = 0xFFFFFFFFLL;
    v8 = v183;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }
  }

  v15 = v5;
  v16 = &qword_1004D4000;
  v17 = 0uLL;
  do
  {
    v18 = v186;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    if (atomic_load_explicit(byte_1004D48E0, memory_order_acquire))
    {
      v23 = (v19 + v20 * v15);
      v24 = v22 * v21;
      if (v22 * v21 >= 16)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v179 = v10;
      v4 = sub_1003C8F0C();
      v17 = 0uLL;
      v16 = &qword_1004D4000;
      v8 = v183;
      v10 = v179;
      v23 = (v19 + v20 * v15);
      v24 = v22 * v21;
      if (v22 * v21 >= 16)
      {
LABEL_22:
        v25 = 0;
        v4 = *(v16 + 144);
        do
        {
          v26 = *v18;
          v27 = *(v18 + 1);
          v18 += 32;
          *v23++ = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(vqaddq_u16(v26, v4), 8uLL)), vshrq_n_u16(vqaddq_u16(v27, v4), 8uLL));
          v25 += 16;
        }

        while (v25 < v24 - 15);
        v28 = v24 & 0x7FFFFFF0;
        if ((v24 & 0x7FFFFFF0) >= v24)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }
    }

    v28 = 0;
    if (v24 <= 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v29 = (v24 + ~v28);
    if (v29 < 3 || (v23 < &v18[2 * v29 + 2] ? (v30 = v18 >= &v23->i8[v29 + 1]) : (v30 = 1), !v30))
    {
      v33 = v18;
      v34 = v23;
      goto LABEL_37;
    }

    v31 = v29 + 1;
    if (v29 >= 0x1F)
    {
      v32 = v31 & 0x1FFFFFFE0;
      i8 = v23[1].i8;
      v38 = (v18 + 32);
      v39 = v31 & 0x1FFFFFFE0;
      do
      {
        v41 = v38[-2];
        v40 = v38[-1];
        v43 = *v38;
        v42 = v38[1];
        v38 += 4;
        v44 = vraddhn_high_s16(vraddhn_s16(v41, v17), v40, v17);
        v4 = vraddhn_high_s16(vraddhn_s16(v43, v17), v42, v17);
        *(i8 - 1) = v44;
        *i8 = v4;
        i8 += 2;
        v39 -= 32;
      }

      while (v39);
      if (v31 == v32)
      {
        goto LABEL_19;
      }

      if ((v31 & 0x1C) == 0)
      {
        v34 = (v23 + v32);
        v33 = &v18[2 * v32];
        v28 += v32;
LABEL_37:
        v35 = v24 - v28;
        do
        {
          v36 = *v33;
          v33 += 2;
          v34->i8[0] = (v36 + 128) >> 8;
          v34 = (v34 + 1);
          --v35;
        }

        while (v35);
        goto LABEL_19;
      }
    }

    else
    {
      v32 = 0;
    }

    v28 += v31 & 0xFFFFFFFC;
    v33 = &v18[2 * (v31 & 0x1FFFFFFFCLL)];
    v34 = (v23 + (v31 & 0x1FFFFFFFCLL));
    v45 = (v23->i32 + v32);
    v46 = v32 - (v31 & 0x1FFFFFFFCLL);
    v47 = &v18[2 * v32];
    do
    {
      v48 = *v47++;
      v4.n128_u64[0] = v48;
      *v45++ = vraddhn_s16(v4, v17).u32[0];
      v46 += 4;
    }

    while (v46);
    if (v31 != (v31 & 0x1FFFFFFFCLL))
    {
      goto LABEL_37;
    }

LABEL_19:
    ++v15;
  }

  while (v7 != v15);
  v5 = v7;
  if (v7 >= v8)
  {
    goto LABEL_12;
  }

LABEL_50:
  v49 = v5;
  v50.i64[0] = 0x800000008000;
  v50.i64[1] = 0x800000008000;
  v51.i64[0] = 0xFF000000FFLL;
  v51.i64[1] = 0xFF000000FFLL;
  v52 = xmmword_1003E36F0;
  while (2)
  {
    v53 = v10;
    v54 = *(a1 + 72);
    v55 = v10 + 2;
    LODWORD(v10) = *(v54 + 4 * v49);
    if (v10 <= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = *(v54 + 4 * v49);
    }

    v57 = v10 + 2;
    v58 = *(a1 + 28);
    if (v58 < v10 + 2)
    {
      v57 = *(a1 + 28);
    }

    if (v56 < v57)
    {
      if (v53 + 2 <= v10)
      {
        v59 = v10;
      }

      else
      {
        v59 = v53 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v59++);
        LODWORD(v10) = *(v54 + 4 * v49);
        v9 = (v9 & 1) == 0;
        v60 = v10 + 2;
        v58 = *(a1 + 28);
        if (v58 < v10 + 2)
        {
          v60 = *(a1 + 28);
        }
      }

      while (v59 < v60);
      v8 = v183;
      v50.i64[0] = 0x800000008000;
      v50.i64[1] = 0x800000008000;
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      v52 = xmmword_1003E36F0;
    }

    v61 = v58 - 2;
    if (v10 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = v10;
    }

    v63 = v62 + v9;
    if (v53 > v61)
    {
      v61 = v53;
    }

    v64 = v63 - v61;
    v185 = 0;
    if (v64 >= 0)
    {
      v9 = v64 & 1;
    }

    else
    {
      v9 = -(v64 & 1);
    }

    v65 = *(a1 + 88);
    if (v9 < 1)
    {
      v66 = 0;
      v68 = 0;
      v67 = &v185;
    }

    else
    {
      v66 = *(v65 + 4 * v49 + 2);
      v67 = (&v185 + 2);
      v68 = 1;
    }

    LOWORD(v185) = v66;
    v69 = v65 + 2 * (2 * v49 - v9);
    *v67 = *(v69 + 2 * v68);
    if (v9 <= 0)
    {
      HIWORD(v185) = *(v69 + 2);
      v70 = v186;
      v71 = *(a1 + 48);
      v72 = *(a1 + 56);
      v73 = *(a1 + 32);
      v74 = *(a1 + 40);
      if ((atomic_load_explicit(byte_1004D48E8, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_78:
      if (atomic_load_explicit(byte_1004D48F0, memory_order_acquire))
      {
        goto LABEL_79;
      }

LABEL_87:
      v181 = v10;
      v4 = sub_1003C8F8C();
      v52 = xmmword_1003E36F0;
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      v50.i64[0] = 0x800000008000;
      v50.i64[1] = 0x800000008000;
      v8 = v183;
      LODWORD(v10) = v181;
      if ((atomic_load_explicit(byte_1004D48F8, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_80:
      v75 = v72 * v71;
      v76 = (v73 + v74 * v49);
      v77 = &v70[2 * v75];
      if (v75 >= 16)
      {
        goto LABEL_81;
      }

LABEL_89:
      v96 = 0;
      if (v75 <= 0)
      {
        goto LABEL_51;
      }

LABEL_90:
      v97 = HIWORD(v185);
      v98 = (v75 + ~v96);
      if (v98 < 3 || ((v107 = v76->u64 + v98 + 1, v76 < &v70[2 * v98 + 2]) ? (v108 = v70 >= v107) : (v108 = 1), v108 ? (v109 = 0) : (v109 = 1), v76 < (&v185 + 2) ? (v110 = &v185 >= v107) : (v110 = 1), v110 ? (v111 = 0) : (v111 = 1), v77 < v107 ? (v112 = v76 >= &v77[2 * v98 + 2]) : (v112 = 1), !v112 || (v109 & 1) != 0 || (v111 & 1) != 0))
      {
        v99 = v77;
        v100 = v70;
        v101 = v76;
      }

      else
      {
        v113 = v98 + 1;
        if (v98 < 0xF)
        {
          v114 = 0;
LABEL_122:
          v133 = 2 * (v113 & 0x1FFFFFFFCLL);
          v99 = &v77[v133];
          v96 += v113 & 0xFFFFFFFC;
          v100 = &v70[v133];
          v101 = (v76 + (v113 & 0x1FFFFFFFCLL));
          v134 = &v185;
          v135 = vld1_dup_s16(v134);
          v4 = vmovl_u16(v135);
          v136 = (v76->i32 + v114);
          v137 = &v70[2 * v114];
          v138 = &v77[2 * v114];
          v139 = v114 - (v113 & 0x1FFFFFFFCLL);
          v4.n128_u64[0] = vmovn_s32(v4);
          v140 = vdup_n_s16(v97);
          do
          {
            v141 = *v137++;
            v142 = vmull_u16(v4.n128_u64[0], v141);
            v143 = *v138++;
            *v136++ = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vmlal_u16(v142, v140, v143), v50), 0x10uLL), v51)), v4.n128_u64[0]).u32[0];
            v139 += 4;
          }

          while (v139);
          if (v113 == (v113 & 0x1FFFFFFFCLL))
          {
            goto LABEL_51;
          }

          goto LABEL_92;
        }

        v114 = v113 & 0x1FFFFFFF0;
        v115 = &v185;
        v4.n128_u64[0] = vld1_dup_s16(v115);
        v116 = vmovl_u16(v4.n128_u64[0]);
        v4 = vuzp1q_s16(v4, v116);
        v117 = vmovn_s32(v116);
        v118 = vuzp1q_s16(v4, v116);
        v119 = vdupq_n_s16(HIWORD(v185));
        v120 = v113 & 0x1FFFFFFF0;
        v121 = v77;
        v122 = v70;
        v123 = v76;
        do
        {
          v124 = *v122;
          v125 = v122[1];
          v122 += 2;
          v126 = vmull_high_u16(v4, v124);
          v127 = vmull_u16(v117, *v125.i8);
          v129 = *v121;
          v128 = v121[1];
          v121 += 2;
          v130 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v118, v125), v119, v128), v50), 0x10uLL);
          v131 = vshrq_n_u32(vaddq_s32(vmlal_u16(v127, *v119.i8, *v128.i8), v50), 0x10uLL);
          v132 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(v117, *v124.i8), *v119.i8, *v129.i8), v50), 0x10uLL);
          v189.val[1] = vminq_u32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v126, v119, v129), v50), 0x10uLL), v51);
          v189.val[0] = vminq_u32(v132, v51);
          v189.val[2] = vminq_u32(v131, v51);
          v189.val[3] = vminq_u32(v130, v51);
          *v123++ = vqtbl4q_s8(v189, v52);
          v120 -= 16;
        }

        while (v120);
        if (v113 == v114)
        {
          goto LABEL_51;
        }

        if ((v113 & 0xC) != 0)
        {
          goto LABEL_122;
        }

        v101 = (v76 + v114);
        v100 = &v70[2 * v114];
        v96 += v114;
        v99 = &v77[2 * v114];
      }

LABEL_92:
      v102 = v75 - v96;
      do
      {
        v104 = *v100++;
        v103 = v104;
        v105 = *v99++;
        v106 = (v97 * v105 + v185 * v103 + 0x8000) >> 16;
        if (v106 >= 0xFF)
        {
          LOBYTE(v106) = -1;
        }

        v101->i8[0] = v106;
        v101 = (v101 + 1);
        --v102;
      }

      while (v102);
      goto LABEL_51;
    }

    v70 = v186;
    v71 = *(a1 + 48);
    v72 = *(a1 + 56);
    v73 = *(a1 + 32);
    v74 = *(a1 + 40);
    if (atomic_load_explicit(byte_1004D48E8, memory_order_acquire))
    {
      goto LABEL_78;
    }

LABEL_86:
    v180 = v10;
    v4 = sub_1003C8F4C();
    v52 = xmmword_1003E36F0;
    v51.i64[0] = 0xFF000000FFLL;
    v51.i64[1] = 0xFF000000FFLL;
    v50.i64[0] = 0x800000008000;
    v50.i64[1] = 0x800000008000;
    v8 = v183;
    LODWORD(v10) = v180;
    if ((atomic_load_explicit(byte_1004D48F0, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_79:
    if (atomic_load_explicit(byte_1004D48F8, memory_order_acquire))
    {
      goto LABEL_80;
    }

LABEL_88:
    v182 = v10;
    v4 = sub_1003C8FCC();
    v52 = xmmword_1003E36F0;
    v51.i64[0] = 0xFF000000FFLL;
    v51.i64[1] = 0xFF000000FFLL;
    v50.i64[0] = 0x800000008000;
    v50.i64[1] = 0x800000008000;
    v8 = v183;
    LODWORD(v10) = v182;
    v75 = v72 * v71;
    v76 = (v73 + v74 * v49);
    v77 = &v70[2 * v75];
    if (v75 < 16)
    {
      goto LABEL_89;
    }

LABEL_81:
    v78 = 0;
    v79 = &v185;
    v4 = vld1q_dup_f32(v79);
    v81 = xmmword_1004D4910;
    v80 = xmmword_1004D4920;
    v82 = xmmword_1004D4930;
    do
    {
      v83 = *v70;
      v84 = *(v70 + 1);
      v70 += 32;
      v85 = vaddq_s16(v80, v83);
      v86 = *v77;
      v87 = *(v77 + 1);
      v77 += 32;
      v88 = vaddq_s16(v80, v86);
      v89 = vzip1q_s16(v85, v88);
      v90 = vzip2q_s16(v85, v88);
      v91 = vpaddq_s32(vmull_s16(*v89.i8, v4.n128_u64[0]), vmull_high_s16(v89, v4));
      v92 = vaddq_s16(v84, v80);
      v93 = vaddq_s16(v87, v80);
      v94 = vzip1q_s16(v92, v93);
      v95 = vzip2q_s16(v92, v93);
      *v76++ = vsubq_s8(vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v91, v81), 0x10uLL)), vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v90.i8, v4.n128_u64[0]), vmull_high_s16(v90, v4)), v81), 0x10uLL))), vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v94.i8, v4.n128_u64[0]), vmull_high_s16(v94, v4)), v81), 0x10uLL)), vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v95.i8, v4.n128_u64[0]), vmull_high_s16(v95, v4)), v81), 0x10uLL))), v82);
      v78 += 16;
    }

    while (v78 < v75 - 15);
    v96 = v75 & 0x7FFFFFF0;
    if ((v75 & 0x7FFFFFF0) < v75)
    {
      goto LABEL_90;
    }

LABEL_51:
    if (v8 != ++v49)
    {
      continue;
    }

    break;
  }

  v5 = v8;
  v11 = v186;
  v12 = *(a1 + 28);
  if (v10 + 2 <= v12)
  {
LABEL_128:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v12 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v11, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_129;
  }

LABEL_13:
  v13 = v9 + ~v10 + v12;
  if (v13 >= 0)
  {
    v14 = v13 & 1;
  }

  else
  {
    v14 = -(v13 & 1);
  }

  v11 += 2 * *(a1 + 48) * v14 * *(a1 + 56);
LABEL_129:
  if (v5 < a2[1])
  {
    v144 = v5;
    v145 = 0uLL;
    do
    {
      v146 = *(a1 + 32);
      v147 = *(a1 + 40);
      v148 = *(a1 + 48);
      v149 = *(a1 + 56);
      if (atomic_load_explicit(byte_1004D48E0, memory_order_acquire))
      {
        v150 = (v146 + v147 * v144);
        v151 = v149 * v148;
        if (v149 * v148 >= 16)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v4 = sub_1003C8F0C();
        v145 = 0uLL;
        v150 = (v146 + v147 * v144);
        v151 = v149 * v148;
        if (v149 * v148 >= 16)
        {
LABEL_134:
          v152 = 0;
          v4 = xmmword_1004D4900;
          v153 = v11;
          do
          {
            v154 = *v153;
            v155 = *(v153 + 1);
            v153 += 32;
            *v150++ = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(vqaddq_u16(v154, v4), 8uLL)), vshrq_n_u16(vqaddq_u16(v155, v4), 8uLL));
            v152 += 16;
          }

          while (v152 < v151 - 15);
          v156 = v151 & 0x7FFFFFF0;
          if ((v151 & 0x7FFFFFF0) >= v151)
          {
            goto LABEL_131;
          }

LABEL_140:
          v157 = (v151 + ~v156);
          if (v157 < 3 || (v150 < &v153[2 * v157 + 2] ? (v158 = v153 >= &v150->i8[v157 + 1]) : (v158 = 1), !v158))
          {
            v161 = v153;
            v162 = v150;
            goto LABEL_149;
          }

          v159 = v157 + 1;
          if (v157 >= 0x1F)
          {
            v160 = v159 & 0x1FFFFFFE0;
            v165 = v150[1].i8;
            v166 = (v153 + 32);
            v167 = v159 & 0x1FFFFFFE0;
            do
            {
              v169 = v166[-2];
              v168 = v166[-1];
              v171 = *v166;
              v170 = v166[1];
              v166 += 4;
              v172 = vraddhn_high_s16(vraddhn_s16(v169, v145), v168, v145);
              v4 = vraddhn_high_s16(vraddhn_s16(v171, v145), v170, v145);
              *(v165 - 1) = v172;
              *v165 = v4;
              v165 += 2;
              v167 -= 32;
            }

            while (v167);
            if (v159 == v160)
            {
              goto LABEL_131;
            }

            if ((v159 & 0x1C) == 0)
            {
              v162 = (v150 + v160);
              v161 = &v153[2 * v160];
              v156 += v160;
LABEL_149:
              v163 = v151 - v156;
              do
              {
                v164 = *v161;
                v161 += 2;
                v162->i8[0] = (v164 + 128) >> 8;
                v162 = (v162 + 1);
                --v163;
              }

              while (v163);
              goto LABEL_131;
            }
          }

          else
          {
            v160 = 0;
          }

          v156 += v159 & 0xFFFFFFFC;
          v161 = &v153[2 * (v159 & 0x1FFFFFFFCLL)];
          v162 = (v150 + (v159 & 0x1FFFFFFFCLL));
          v173 = (v150->i32 + v160);
          v174 = v160 - (v159 & 0x1FFFFFFFCLL);
          v175 = &v153[2 * v160];
          do
          {
            v176 = *v175++;
            v4.n128_u64[0] = v176;
            *v173++ = vraddhn_s16(v4, v145).u32[0];
            v174 += 4;
          }

          while (v174);
          if (v159 == (v159 & 0x1FFFFFFFCLL))
          {
            goto LABEL_131;
          }

          goto LABEL_149;
        }
      }

      v156 = 0;
      v153 = v11;
      if (v151 > 0)
      {
        goto LABEL_140;
      }

LABEL_131:
      ++v144;
    }

    while (v144 < a2[1]);
  }

  result = v186;
  if (v186 != v188 && v186 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_100352CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20 != a11)
  {
    if (a20)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

char *sub_100352D28(char *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, unsigned int a6, int a7, int a8)
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

  v8 = *result << 16;
  if (a6 <= 7)
  {
    LODWORD(v9) = 0;
    v10 = a5;
LABEL_9:
    v14 = a6 - v9;
    do
    {
      v10->i32[0] = v8;
      v10 = (v10 + 4);
      --v14;
    }

    while (v14);
    goto LABEL_11;
  }

  v9 = a6 & 0x7FFFFFF8;
  v10 = (a5 + 4 * v9);
  v11 = vdupq_n_s32(v8);
  v12 = a5 + 1;
  v13 = v9;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 8;
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
    a5->i32[0] = v18 * result[v17] + v19 * result[v17 + 1];
    a5 = (a5 + 4);
    --v15;
  }

  while (v15);
  a6 = a7;
LABEL_15:
  if (a6 >= a8)
  {
    return result;
  }

  v20 = result[*(a3 + 4 * a8 - 4)] << 16;
  v21 = ~a6 + a8;
  if (v21 < 7)
  {
    v22 = a5;
LABEL_21:
    v28 = a8 - a6;
    do
    {
      v22->i32[0] = v20;
      v22 = (v22 + 4);
      --v28;
    }

    while (v28);
    return result;
  }

  v23 = v21 + 1;
  v24 = (v21 + 1) & 0x1FFFFFFF8;
  a6 += v24;
  v22 = (a5 + 4 * v24);
  v25 = vdupq_n_s32(v20);
  v26 = a5 + 1;
  v27 = v24;
  do
  {
    v26[-1] = v25;
    *v26 = v25;
    v26 += 2;
    v27 -= 8;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_100352E60(int8x16_t *result, int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = a5 + 64;
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            *(v50 - 2) = v58;
            *(v50 - 1) = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            *(v50 - 4) = v59;
            *(v50 - 3) = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            *(v50 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
            *(v50 + 3) = _Q0;
            *v50 = v60;
            *(v50 + 1) = _Q1;
            v50 += 128;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = *(a3 + 4 * a8 - 4) * a2;
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = a5 + 64;
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          *(v30 - 2) = v38;
          *(v30 - 1) = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          *(v30 - 4) = v43;
          *(v30 - 3) = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          *(v30 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
          *(v30 + 3) = _Q0;
          *v30 = v44;
          *(v30 + 1) = _Q1;
          v30 += 128;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

char *sub_100353174(char *result, uint64_t a2, uint64_t a3, int *a4, int32x2_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8.i32[0] = *result;
    v8.i32[1] = result[1];
    v9 = vshl_n_s32(v8, 0x10uLL);
    if (a6 > 7)
    {
      v10 = a6 & 0x7FFFFFF8;
      v11 = &a5[v10];
      *&v12 = v9;
      *(&v12 + 1) = v9;
      v13 = a5 + 4;
      v14 = v10;
      do
      {
        *v13[-4].i8 = v12;
        *v13[-2].i8 = v12;
        *v13->i8 = v12;
        *v13[2].i8 = v12;
        v13 += 8;
        v14 -= 8;
      }

      while (v14);
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

    v15 = a6 - v10;
    do
    {
      *v11++ = v9;
      --v15;
    }

    while (v15);
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
      a5->i32[0] = *a4 * *v19 + a4[1] * v19[2];
      v20 = *a4;
      v21 = a4[1];
      a4 += 2;
      v22 = v20 * v19[1] + v21 * v19[3];
      v23 = a5 + 1;
      a5->i32[1] = v22;
      ++a5;
      --v16;
    }

    while (v16);
    a5 = v23;
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
  v24 = &result[2 * *(a3 + 4 * a8 - 4)];
  v25.i32[0] = *v24;
  v25.i32[1] = v24[1];
  v26 = vshl_n_s32(v25, 0x10uLL);
  v27 = (~a7 + a8);
  if (v27 < 7)
  {
    v28 = a5;
LABEL_21:
    v34 = a8 - a7;
    do
    {
      *v28++ = v26;
      --v34;
    }

    while (v34);
    return result;
  }

  v29 = v27 + 1;
  v30 = (v27 + 1) & 0x1FFFFFFF8;
  a7 += v30;
  v28 = &a5[v30];
  *&v31 = v26;
  *(&v31 + 1) = v26;
  v32 = a5 + 4;
  v33 = v30;
  do
  {
    *v32[-4].i8 = v31;
    *v32[-2].i8 = v31;
    *v32->i8 = v31;
    *v32[2].i8 = v31;
    v32 += 8;
    v33 -= 8;
  }

  while (v33);
  if (v29 != v30)
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_1003532FC(int8x16_t *result, int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = a5 + 64;
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            *(v50 - 2) = v58;
            *(v50 - 1) = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            *(v50 - 4) = v59;
            *(v50 - 3) = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            *(v50 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
            *(v50 + 3) = _Q0;
            *v50 = v60;
            *(v50 + 1) = _Q1;
            v50 += 128;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = *(a3 + 4 * a8 - 4) * a2;
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = a5 + 64;
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          *(v30 - 2) = v38;
          *(v30 - 1) = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          *(v30 - 4) = v43;
          *(v30 - 3) = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          *(v30 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
          *(v30 + 3) = _Q0;
          *v30 = v44;
          *(v30 + 1) = _Q1;
          v30 += 128;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

char *sub_100353610(char *result, uint64_t a2, uint64_t a3, int *a4, int32x2_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8.i32[0] = *result;
    v8.i32[1] = result[1];
    v9 = vshl_n_s32(v8, 0x10uLL);
    v10 = result[2] << 16;
    if (a6 > 7)
    {
      v11 = a6 & 0x7FFFFFF8;
      *&v13 = v9;
      *(&v13 + 1) = __PAIR64__(v9.u32[0], v10);
      LODWORD(v14) = v9.i32[1];
      DWORD1(v14) = result[2] << 16;
      *(&v14 + 1) = v9;
      v12 = (a5 + 12 * v11);
      *&v15 = __PAIR64__(v9.u32[0], DWORD1(v14));
      *(&v15 + 1) = __PAIR64__(v10, v9.u32[1]);
      v16 = v11;
      do
      {
        *a5->i8 = v13;
        *a5[2].i8 = v14;
        *a5[4].i8 = v15;
        *a5[6].i8 = v13;
        *a5[8].i8 = v14;
        *a5[10].i8 = v15;
        a5 += 12;
        v16 -= 8;
      }

      while (v16);
      if (v11 == a6)
      {
LABEL_12:
        a4 += 2 * a6;
        a5 = v12;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      v12 = a5;
    }

    v17 = a6 - v11;
    v18 = v12;
    do
    {
      *v18 = v9;
      v12 = (v18 + 12);
      v18[1].i32[0] = v10;
      v18 = (v18 + 12);
      --v17;
    }

    while (v17);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v19 = a7 - a6;
    v20 = (a3 + 4 * a6);
    do
    {
      v21 = *v20++;
      v22 = &result[3 * v21];
      a5->i32[0] = *a4 * *v22 + a4[1] * v22[3];
      a5->i32[1] = *a4 * v22[1] + a4[1] * v22[4];
      v23 = *a4;
      v24 = a4[1];
      a4 += 2;
      v25 = v23 * v22[2] + v24 * v22[5];
      v26 = (a5 + 12);
      a5[1].i32[0] = v25;
      a5 = (a5 + 12);
      --v19;
    }

    while (v19);
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
  v27 = &result[3 * *(a3 + 4 * a8 - 4)];
  v28.i32[0] = *v27;
  v28.i32[1] = v27[1];
  v29 = vshl_n_s32(v28, 0x10uLL);
  v30 = v27[2] << 16;
  v31 = (~a7 + a8);
  if (v31 < 7)
  {
    v32 = a5;
LABEL_21:
    v38 = a8 - a7;
    do
    {
      *v32 = v29;
      v32[1].i32[0] = v30;
      v32 = (v32 + 12);
      --v38;
    }

    while (v38);
    return result;
  }

  v33 = v31 + 1;
  a7 += v33 & 0xFFFFFFF8;
  *&v34 = v29;
  *(&v34 + 1) = __PAIR64__(v29.u32[0], v30);
  *&v35 = __PAIR64__(v30, v29.u32[1]);
  *(&v35 + 1) = v29;
  v32 = (a5 + 12 * (v33 & 0x1FFFFFFF8));
  *&v36 = __PAIR64__(v29.u32[0], v30);
  *(&v36 + 1) = __PAIR64__(v30, v29.u32[1]);
  v37 = v33 & 0x1FFFFFFF8;
  do
  {
    *a5->i8 = v34;
    *a5[2].i8 = v35;
    *a5[4].i8 = v36;
    *a5[6].i8 = v34;
    *a5[8].i8 = v35;
    *a5[10].i8 = v36;
    a5 += 12;
    v37 -= 8;
  }

  while (v37);
  if (v33 != (v33 & 0x1FFFFFFF8))
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_100353848(int8x16_t *result, int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = a5 + 64;
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            *(v50 - 2) = v58;
            *(v50 - 1) = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            *(v50 - 4) = v59;
            *(v50 - 3) = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            *(v50 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
            *(v50 + 3) = _Q0;
            *v50 = v60;
            *(v50 + 1) = _Q1;
            v50 += 128;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = *(a3 + 4 * a8 - 4) * a2;
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = a5 + 64;
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          *(v30 - 2) = v38;
          *(v30 - 1) = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          *(v30 - 4) = v43;
          *(v30 - 3) = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          *(v30 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
          *(v30 + 3) = _Q0;
          *v30 = v44;
          *(v30 + 1) = _Q1;
          v30 += 128;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

unsigned __int32 *sub_100353B5C(unsigned __int32 *result, __n128 a2, uint64_t a3, uint64_t a4, int *a5, __n128 *a6, unsigned int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    a2.n128_u32[0] = *result;
    a2 = vshll_n_s16(*&vmovl_s8(a2.n128_u64[0]), 0x10uLL);
    if (a7 > 7)
    {
      v9 = a7 & 0x7FFFFFF8;
      v10 = &a6[v9];
      v11 = a6 + 4;
      v12 = v9;
      do
      {
        v11[-4] = a2;
        v11[-3] = a2;
        v11[-2] = a2;
        v11[-1] = a2;
        *v11 = a2;
        v11[1] = a2;
        v11[2] = a2;
        v11[3] = a2;
        v11 += 8;
        v12 -= 8;
      }

      while (v12);
      if (v9 == a7)
      {
LABEL_12:
        a5 += 2 * a7;
        a6 = v10;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a6;
    }

    v13 = a7 - v9;
    do
    {
      *v10++ = a2;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v14 = a8 - a7;
    v15 = (a4 + 4 * a7);
    do
    {
      v16 = *v15++;
      v17 = &result[v16];
      a6->n128_u32[0] = *a5 * *v17 + a5[1] * v17[4];
      a6->n128_u32[1] = *a5 * v17[1] + a5[1] * v17[5];
      a6->n128_u32[2] = *a5 * v17[2] + a5[1] * v17[6];
      v18 = *a5;
      v19 = a5[1];
      a5 += 2;
      v20 = v18 * v17[3] + v19 * v17[7];
      v21 = a6 + 1;
      a6->n128_u32[3] = v20;
      ++a6;
      --v14;
    }

    while (v14);
    a6 = v21;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  a2.n128_u32[0] = result[*(a4 + 4 * a9 - 4)];
  v22 = vshll_n_s16(*&vmovl_s8(a2.n128_u64[0]), 0x10uLL);
  v23 = (~a8 + a9);
  if (v23 < 7)
  {
    v24 = a6;
LABEL_21:
    v29 = a9 - a8;
    do
    {
      *v24++ = v22;
      --v29;
    }

    while (v29);
    return result;
  }

  v25 = v23 + 1;
  v26 = (v23 + 1) & 0x1FFFFFFF8;
  a8 += v26;
  v24 = &a6[v26];
  v27 = a6 + 4;
  v28 = v26;
  do
  {
    v27[-4] = v22;
    v27[-3] = v22;
    v27[-2] = v22;
    v27[-1] = v22;
    *v27 = v22;
    v27[1] = v22;
    v27[2] = v22;
    v27[3] = v22;
    v27 += 8;
    v28 -= 8;
  }

  while (v28);
  if (v25 != v26)
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_100353D08(int8x16_t *result, int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = a5 + 64;
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            *(v50 - 2) = v58;
            *(v50 - 1) = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            *(v50 - 4) = v59;
            *(v50 - 3) = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            *(v50 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
            *(v50 + 3) = _Q0;
            *v50 = v60;
            *(v50 + 1) = _Q1;
            v50 += 128;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = *(a3 + 4 * a8 - 4) * a2;
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = a5 + 64;
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          *(v30 - 2) = v38;
          *(v30 - 1) = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          *(v30 - 4) = v43;
          *(v30 - 3) = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          *(v30 + 2) = vshll_n_s16(*_Q3.i8, 0x10uLL);
          *(v30 + 3) = _Q0;
          *v30 = v44;
          *(v30 + 1) = _Q1;
          v30 += 128;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

int32x4_t *sub_10035401C(int32x4_t *result, int a2, uint64_t a3, const float *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v8 = 8 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 8);
    if (a6 < a7)
    {
      goto LABEL_9;
    }

LABEL_17:
    LODWORD(v14) = a6;
LABEL_32:
    v15 = a5;
    goto LABEL_33;
  }

  if (a2 >= 0x20)
  {
    v19 = 0;
    while (1)
    {
      if (a5 >= &result->i8[a2] || (a5 + 4 * a2) <= result)
      {
        v10 = (a5 + 4 * (a2 & 0x7FFFFFE0));
        v21 = a5 + 4;
        v22 = a2 & 0x7FFFFFE0;
        v23 = &result[1];
        do
        {
          v24 = v23[-1];
          _Q2 = vmovl_high_s8(v24);
          _Q0 = vmovl_s8(*v24.i8);
          _Q3 = vmovl_high_s8(*v23);
          _Q1 = vmovl_s8(*v23->i8);
          v29 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v21[-2] = v29;
          v21[-1] = _Q2;
          v33 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v34 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v21[-4] = v33;
          v21[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v21[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v21[3] = _Q0;
          *v21 = v34;
          v21[1] = _Q1;
          v21 += 8;
          v23 += 2;
          v22 -= 32;
        }

        while (v22);
        v20 = a2 & 0x7FFFFFE0;
        if (v20 == a2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = 0;
        v10 = a5;
      }

      v36 = &result->i8[v20];
      v37 = a2 - v20;
      do
      {
        v38 = *v36++;
        v10->i32[0] = v38 << 16;
        v10 = (v10 + 4);
        --v37;
      }

      while (v37);
LABEL_21:
      ++v19;
      a5 = v10;
      if (v19 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->i8[0];
      v11 = (v11 + 1);
      v10->i32[0] = v13 << 16;
      v10 = (v10 + 4);
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 8);
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (a2 < 1)
  {
    LODWORD(v14) = a7;
    goto LABEL_32;
  }

  v14 = a6;
  if (a2 >= 0x10)
  {
    v65 = &a4[2 * (~a6 + a7) + 2];
    v66 = a4;
    while (1)
    {
      v67 = 0;
      v68 = *(a3 + 4 * v14);
      v69 = &result->i8[v68 * a2];
      v70 = v69 + a2;
      v71 = (a5 + 4 * a2);
      v73 = a5 < (result + 2 * a2 + v68 * a2) && v70 < v71;
      v75 = a5 < v70 && v69 < v71;
      v76 = a4 >= v71 || a5 >= v65;
      if (!v76 || v73 || v75)
      {
        v15 = a5;
      }

      else
      {
        v15 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v77 = v66;
        v78 = vld1q_dup_f32(v77++);
        v79 = vld1q_dup_f32(v77);
        v80 = a2 & 0x7FFFFFF0;
        do
        {
          v81 = vmovl_s8(*v69);
          v82 = vmovl_high_s8(*v69->i8);
          v83 = *&v69->i8[a2];
          v84 = vmovl_s8(*v83.i8);
          v85 = vmovl_high_s8(v83);
          a5[2] = vmlaq_s32(vmulq_s32(v78, vmovl_s16(*v82.i8)), v79, vmovl_s16(*v85.i8));
          a5[3] = vmlaq_s32(vmulq_s32(v78, vmovl_high_s16(v82)), v79, vmovl_high_s16(v85));
          *a5 = vmlaq_s32(vmulq_s32(v78, vmovl_s16(*v81.i8)), v79, vmovl_s16(*v84.i8));
          a5[1] = vmlaq_s32(vmulq_s32(v78, vmovl_high_s16(v81)), v79, vmovl_high_s16(v84));
          a5 += 4;
          v69 += 2;
          v80 -= 16;
        }

        while (v80);
        v67 = a2 & 0x7FFFFFF0;
        if (v67 == a2)
        {
          goto LABEL_52;
        }
      }

      v86 = &result->i8[v67 + v68 * a2];
      do
      {
        v87 = *v66 * *v86;
        v15->i32[0] = v87;
        v15->i32[0] = v87 + *(v66 + 1) * v86[a2];
        v15 = (v15 + 4);
        ++v67;
        ++v86;
      }

      while (a2 != v67);
LABEL_52:
      ++v14;
      v66 += 2;
      a5 = v15;
      if (v14 >= a7)
      {
        goto LABEL_33;
      }
    }
  }

  v15 = a5;
  do
  {
    v16 = &result->i8[*(a3 + 4 * v14) * a2];
    v17 = a2;
    do
    {
      v18 = *a4 * *v16;
      v15->i32[0] = v18;
      v15->i32[0] = v18 + *(a4 + 1) * v16[a2];
      v15 = (v15 + 4);
      ++v16;
      --v17;
    }

    while (v17);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
LABEL_33:
  if (v14 >= a8 || a2 < 1)
  {
    return result;
  }

  v39 = *(a3 + 4 * a8 - 4) * a2;
  v40 = &result->i8[v39];
  v41 = a2;
  if (a2 >= 0x20)
  {
    v45 = 4 * a2;
    v46 = &v40[a2];
    v47 = a2 & 0x7FFFFFE0;
    v48 = &result->i8[v39];
    while (1)
    {
      if (v15 >= v46 || v40 >= &v15->i8[v45])
      {
        result = (v15 + 4 * (v41 & 0x7FFFFFE0));
        v50 = v15 + 4;
        v51 = v41 & 0x7FFFFFE0;
        v52 = v48 + 1;
        do
        {
          v53 = v52[-1];
          _Q2 = vmovl_high_s8(v53);
          _Q0 = vmovl_s8(*v53.i8);
          _Q3 = vmovl_high_s8(*v52);
          _Q1 = vmovl_s8(*v52->i8);
          v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v50[-2] = v58;
          v50[-1] = _Q2;
          v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-4] = v59;
          v50[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v50[3] = _Q0;
          *v50 = v60;
          v50[1] = _Q1;
          v50 += 8;
          v52 += 2;
          v51 -= 32;
        }

        while (v51);
        v49 = v41 & 0x7FFFFFE0;
        if (v47 == v41)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v49 = 0;
        result = v15;
      }

      v62 = &v48->i8[v49];
      v63 = v41 - v49;
      do
      {
        v64 = *v62++;
        result->i32[0] = v64 << 16;
        result = (result + 4);
        --v63;
      }

      while (v63);
LABEL_41:
      LODWORD(v14) = v14 + 1;
      v15 = result;
      if (v14 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v42 = &result->i8[v39];
    v43 = a2;
    do
    {
      v44 = *v42++;
      v15->i32[0] = v44 << 16;
      v15 = (v15 + 4);
      --v43;
    }

    while (v43);
    LODWORD(v14) = v14 + 1;
  }

  while (v14 != a8);
  return result;
}

int8x16_t *sub_100354488(int8x16_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  v8 = 8 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (a2 >= 0x20)
  {
    v18 = 0;
    while (1)
    {
      if (a5 >= &result->i8[a2] || a5 + 4 * a2 <= result)
      {
        v10 = (a5 + 4 * (a2 & 0x7FFFFFE0));
        v20 = a5 + 4;
        v21 = a2 & 0x7FFFFFE0;
        v22 = result + 1;
        do
        {
          v23 = v22[-1];
          _Q2 = vmovl_high_s8(v23);
          _Q0 = vmovl_s8(*v23.i8);
          _Q3 = vmovl_high_s8(*v22);
          _Q1 = vmovl_s8(*v22->i8);
          v28 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v20[-2] = v28;
          v20[-1] = _Q2;
          v33 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v34 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v20[-4] = v33;
          v20[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v20[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v20[3] = _Q0;
          *v20 = v34;
          v20[1] = _Q1;
          v20 += 8;
          v22 += 2;
          v21 -= 32;
        }

        while (v21);
        v19 = a2 & 0x7FFFFFE0;
        if (v19 == a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = 0;
        v10 = a5;
      }

      v36 = &result->i8[v19];
      v37 = a2 - v19;
      do
      {
        v38 = *v36++;
        v10->i32[0] = v38 << 16;
        v10 = (v10 + 4);
        --v37;
      }

      while (v37);
LABEL_23:
      ++v18;
      a5 = v10;
      if (v18 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->i8[0];
      v11 = (v11 + 1);
      v10->i32[0] = v13 << 16;
      v10 = (v10 + 4);
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 8);
  a5 = v10;
  if (a6 < a7)
  {
LABEL_13:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v14 = 0;
        v15 = &result->i8[*(a3 + 4 * a6) * a2];
        do
        {
          v16 = *a4;
          if (*a4)
          {
            v16 *= *v15;
          }

          a5->i32[0] = v16;
          v17 = a4[1];
          if (v17)
          {
            v17 *= v15[a2];
          }

          a5->i32[0] = v17 + v16;
          a5 = (a5 + 4);
          ++v14;
          ++v15;
        }

        while (a2 != v14);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 >= a8 || a2 < 1)
  {
    return result;
  }

  v39 = *(a3 + 4 * a8 - 4) * a2;
  v40 = &result->i8[v39];
  v41 = a2;
  if (a2 >= 0x20)
  {
    v45 = 4 * a2;
    v46 = &v40[a2];
    v47 = a2 & 0x7FFFFFE0;
    v48 = (result + v39);
    while (1)
    {
      if (a5 >= v46 || v40 >= &a5->i8[v45])
      {
        v49 = (a5 + 4 * (v41 & 0x7FFFFFE0));
        v50 = a5 + 4;
        v51 = v41 & 0x7FFFFFE0;
        v52 = v48 + 1;
        do
        {
          v53 = v52[-1];
          _Q2 = vmovl_high_s8(v53);
          _Q0 = vmovl_s8(*v53.i8);
          _Q3 = vmovl_high_s8(*v52);
          _Q1 = vmovl_s8(*v52->i8);
          v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v50[-2] = v58;
          v50[-1] = _Q2;
          v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-4] = v59;
          v50[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v50[3] = _Q0;
          *v50 = v60;
          v50[1] = _Q1;
          v50 += 8;
          v52 += 2;
          v51 -= 32;
        }

        while (v51);
        result = (v41 & 0x7FFFFFE0);
        if (v47 == v41)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = 0;
        v49 = a5;
      }

      v62 = &result->i8[v48];
      result = (v41 - result);
      do
      {
        v63 = *v62++;
        v49->i32[0] = v63 << 16;
        v49 = (v49 + 4);
        result = (result - 1);
      }

      while (result);
LABEL_42:
      LODWORD(a6) = a6 + 1;
      a5 = v49;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v42 = &result->i8[v39];
    v43 = a2;
    do
    {
      v44 = *v42++;
      a5->i32[0] = v44 << 16;
      a5 = (a5 + 4);
      --v43;
    }

    while (v43);
    LODWORD(a6) = a6 + 1;
  }

  while (a6 != a8);
  return result;
}

uint64_t sub_1003547A0(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4)
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
      sub_10029DA40(&v17, 0x10000u);
      sub_10029E004(&v15, &v17, &v18);
      result = sub_10029DC5C(&v18);
      *a4 = 0x10000 - result;
      a4[1] = result;
    }
  }

  return result;
}

void sub_1003548F8()
{
  nullsub_1();

  operator delete();
}

__int8 *sub_100354930(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v162, 0x420uLL);
  v160 = v162;
  v161 = v4;
  if (v4 >= 0x109)
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
        goto LABEL_102;
      }

      goto LABEL_12;
    }
  }

  else
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v162, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }
  }

  v95 = v5;
  v96.i64[0] = 0x800000008000;
  v96.i64[1] = 0x800000008000;
  v97.i64[0] = 0x7F0000007FLL;
  v97.i64[1] = 0x7F0000007FLL;
  v98.i64[0] = 0x7F0000007FLL;
  v98.i64[1] = 0x7F0000007FLL;
  do
  {
    v99 = (*(a1 + 56) * *(a1 + 48));
    if (v99 < 1)
    {
      goto LABEL_75;
    }

    v100 = v160;
    v101 = *(a1 + 32);
    v102 = *(a1 + 40);
    if (v99 >= 4 && ((v103 = (v101 + v102 * v95), v103 < &v160[4 * v99]) ? (v104 = v160 >= &v103->i8[v99]) : (v104 = 1), v104))
    {
      if (v99 < 0x10)
      {
        v105 = 0;
LABEL_97:
        v117 = v105;
        v105 = v99 & 0x7FFFFFFC;
        v118 = &v100[4 * v117];
        v119 = (v101 + v117 + v102 * v95);
        v120 = v117 - v105;
        do
        {
          v121 = *v118++;
          *v119++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v121, v96), 0x10uLL), v97), v98)), *v96.i8).u32[0];
          v120 += 4;
        }

        while (v120);
        if (v105 == v99)
        {
          goto LABEL_75;
        }

        goto LABEL_86;
      }

      v105 = v99 & 0x7FFFFFF0;
      v111 = v105;
      v112 = v160;
      do
      {
        v114 = v112[2];
        v113 = v112[3];
        v116 = *v112;
        v115 = v112[1];
        v112 += 4;
        v163.val[3] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v113, v96), 0x10uLL), v97), v98);
        v163.val[2] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v114, v96), 0x10uLL), v97), v98);
        v163.val[1] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v115, v96), 0x10uLL), v97), v98);
        v163.val[0] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v116, v96), 0x10uLL), v97), v98);
        *v103++ = vqtbl4q_s8(v163, xmmword_1003E36F0);
        v111 -= 16;
      }

      while (v111);
      if (v105 == v99)
      {
        goto LABEL_75;
      }

      if ((v99 & 0xC) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v105 = 0;
    }

LABEL_86:
    v106 = v99 - v105;
    v107 = (v101 + v105 + v102 * v95);
    v108 = &v100[4 * v105];
    do
    {
      v109 = *v108;
      v108 += 4;
      v110 = (v109 + 0x8000) >> 16;
      if (v110 <= -128)
      {
        v110 = -128;
      }

      if (v110 >= 127)
      {
        LOBYTE(v110) = 127;
      }

      *v107++ = v110;
      --v106;
    }

    while (v106);
LABEL_75:
    ++v95;
  }

  while (v95 != v7);
  v5 = v7;
  if (v7 >= v8)
  {
LABEL_102:
    v122 = v160;
    v123 = *(a1 + 28);
    if (v10 + 2 <= v123)
    {
      goto LABEL_108;
    }

    goto LABEL_103;
  }

LABEL_12:
  v11 = v5;
  *&v12.f64[0] = 0x8000000080000000;
  *&v12.f64[1] = 0x8000000080000000;
  v13 = vnegq_f64(v12);
  v14 = vdupq_n_s64(0xFFFFFFFFFFFFFF80);
  v15 = xmmword_1003E9AF0;
  v157 = v8;
  v155 = v14;
  v156 = v13;
  while (2)
  {
    v16 = v10;
    v17 = *(a1 + 72);
    v18 = v10 + 2;
    v10 = *(v17 + 4 * v11);
    if (v10 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = *(v17 + 4 * v11);
    }

    v20 = v10 + 2;
    v21 = *(a1 + 28);
    if (v21 < v10 + 2)
    {
      v20 = *(a1 + 28);
    }

    if (v19 < v20)
    {
      if (v16 + 2 <= v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = v16 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v22++);
        v10 = *(v17 + 4 * v11);
        v9 = (v9 & 1) == 0;
        v23 = v10 + 2;
        v21 = *(a1 + 28);
        if (v21 < v10 + 2)
        {
          v23 = *(a1 + 28);
        }
      }

      while (v22 < v23);
      v8 = v157;
      v14 = v155;
      v13 = v156;
      v15 = xmmword_1003E9AF0;
    }

    v24 = v21 - 2;
    if (v10 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v10;
    }

    v26 = v25 + v9;
    if (v16 > v24)
    {
      v24 = v16;
    }

    v27 = v26 - v24;
    v158 = 0;
    v159 = 0;
    if (v27 >= 0)
    {
      v9 = v27 & 1;
    }

    else
    {
      v9 = -(v27 & 1);
    }

    v28 = *(a1 + 88);
    if (v9 < 1)
    {
      v29 = 0;
      v31 = 0;
      v30 = &v159;
    }

    else
    {
      v29 = *(v28 + 8 * v11 + 4);
      v30 = &v158;
      v31 = 1;
    }

    v159 = v29;
    v32 = v28 + 4 * (2 * v11 - v9);
    *v30 = *(v32 + 4 * v31);
    if (v9 <= 0)
    {
      v158 = *(v32 + 4);
      v33 = *(a1 + 56) * *(a1 + 48);
      if (v33 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v33 = *(a1 + 56) * *(a1 + 48);
      if (v33 < 1)
      {
        goto LABEL_13;
      }
    }

    v34 = v160;
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    v38 = v158;
    v37 = v159;
    if (v33 >= 4)
    {
      v39 = 0;
      v44 = (v35 + v36 * v11);
      v45 = &v44->i8[v33];
      v46 = &v160[4 * v33];
      v48 = v44 < &v160[4 * v33] && v160 < v45;
      v49 = v46 >= v45 || v44 >= &v46[4 * v33];
      if (!v49 || v48)
      {
        goto LABEL_44;
      }

      v50 = 4 * v33;
      if (v33 >= 0x10)
      {
        v39 = v33 & 0x7FFFFFF0;
        v51 = vdupq_n_s32(v159);
        v52 = vdupq_n_s32(v158);
        v53 = v39;
        v54 = v160;
        do
        {
          v55 = v54[1];
          v56 = v54[2];
          v57 = v54[3];
          v58 = vmull_s32(*v51.i8, *v55.i8);
          v59 = vmull_s32(*v51.i8, *v56.i8);
          v60 = vmull_s32(*v51.i8, *v57.i8);
          v62 = *(&v54[2] + v50);
          v61 = *(&v54[3] + v50);
          v64 = *(v54 + 4 * v33);
          v63 = *(&v54[1] + v50);
          v65 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, v57), v52, v61), v13), 0x20uLL);
          v66 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, v56), v52, v62), v13), 0x20uLL);
          v67 = vshrq_n_s64(vaddq_s64(vmlal_s32(v60, *v52.i8, *v61.i8), v13), 0x20uLL);
          v68 = vshrq_n_s64(vaddq_s64(vmlal_s32(v59, *v52.i8, *v62.i8), v13), 0x20uLL);
          v69 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, v55), v52, v63), v13), 0x20uLL);
          v70 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, *v54), v52, v64), v13), 0x20uLL);
          v71 = vshrq_n_s64(vaddq_s64(vmlal_s32(v58, *v52.i8, *v63.i8), v13), 0x20uLL);
          v72 = vshrq_n_s64(vaddq_s64(vmlal_s32(vmull_s32(*v51.i8, *v54->i8), *v52.i8, *v64.i8), v13), 0x20uLL);
          v73 = vbslq_s8(vcgtq_s64(v72, v14), v72, v14);
          v74 = vbslq_s8(vcgtq_s64(v71, v14), v71, v14);
          v75 = vbslq_s8(vcgtq_s64(v70, v14), v70, v14);
          v76 = vbslq_s8(vcgtq_s64(v69, v14), v69, v14);
          v77 = vbslq_s8(vcgtq_s64(v68, v14), v68, v14);
          v78 = vbslq_s8(vcgtq_s64(v67, v14), v67, v14);
          v79 = vbslq_s8(vcgtq_s64(v66, v14), v66, v14);
          v80 = vdupq_n_s64(0x7FuLL);
          v81 = vbslq_s8(vcgtq_s64(v65, v14), v65, v14);
          v165.val[3] = vbslq_s8(vcgtq_s64(v80, v81), v81, v80);
          v165.val[1] = vbslq_s8(vcgtq_s64(v80, v79), v79, v80);
          v165.val[2] = vbslq_s8(vcgtq_s64(v80, v78), v78, v80);
          v165.val[0] = vbslq_s8(vcgtq_s64(v80, v77), v77, v80);
          v166.val[3] = vbslq_s8(vcgtq_s64(v80, v76), v76, v80);
          v166.val[1] = vbslq_s8(vcgtq_s64(v80, v75), v75, v80);
          v166.val[2] = vbslq_s8(vcgtq_s64(v80, v74), v74, v80);
          v166.val[0] = vbslq_s8(vcgtq_s64(v80, v73), v73, v80);
          v75.i64[0] = vqtbl4q_s8(v166, v15).u64[0];
          v75.i64[1] = vqtbl4q_s8(v165, v15).u64[0];
          *v44++ = v75;
          v54 += 4;
          v53 -= 16;
        }

        while (v53);
        if (v39 == v33)
        {
          goto LABEL_13;
        }

        if ((v33 & 0xC) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v39 = 0;
      }

      v82 = v39;
      v39 = v33 & 0x7FFFFFFC;
      v83 = &v34[4 * v82];
      v84 = (v35 + v82 + v36 * v11);
      v85 = v82 - v39;
      v86 = vdupq_n_s32(v37);
      v87 = vdupq_n_s32(v38);
      do
      {
        v88 = *&v83->i8[4 * v33];
        v89 = vshrq_n_s64(vaddq_s64(vmlal_s32(vmull_s32(*v86.i8, *v83), *v87.i8, *v88.i8), v13), 0x20uLL);
        v90 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v86, *v83->i8), v87, v88), v13), 0x20uLL);
        v91 = vbslq_s8(vcgtq_s64(v89, v14), v89, v14);
        v92 = vdupq_n_s64(0x7FuLL);
        v93 = vbslq_s8(vcgtq_s64(v90, v14), v90, v14);
        v94 = vbslq_s8(vcgtq_s64(v92, v91), v91, v92);
        *v94.i8 = vmovn_s64(v94);
        *v93.i8 = vmovn_s64(vbslq_s8(vcgtq_s64(v92, v93), v93, v92));
        v94.i16[1] = v94.i16[2];
        v94.i16[2] = v93.i16[0];
        v94.i16[3] = v93.i16[2];
        *v84++ = vmovn_s16(v94).u32[0];
        v83 += 2;
        v85 += 4;
      }

      while (v85);
      if (v39 != v33)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v39 = 0;
LABEL_44:
      v40 = v33 - v39;
      v41 = (v35 + v39 + v36 * v11);
      v42 = &v34[4 * v39];
      do
      {
        v43 = (v38 * *&v42[4 * v33] + v37 * *v42 + 0x80000000) >> 32;
        if (v43 <= -128)
        {
          v43 = -128;
        }

        if (v43 >= 127)
        {
          LOBYTE(v43) = 127;
        }

        *v41++ = v43;
        v42 += 4;
        --v40;
      }

      while (v40);
    }

LABEL_13:
    if (v8 != ++v11)
    {
      continue;
    }

    break;
  }

  v5 = v8;
  v122 = v160;
  v123 = *(a1 + 28);
  if (v10 + 2 <= v123)
  {
LABEL_108:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v123 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v122, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_109;
  }

LABEL_103:
  v124 = v9 + ~v10 + v123;
  if (v124 >= 0)
  {
    v125 = v124 & 1;
  }

  else
  {
    v125 = -(v124 & 1);
  }

  v122 = (v122 + 4 * *(a1 + 48) * v125 * *(a1 + 56));
LABEL_109:
  v126 = a2[1];
  if (v5 < v126)
  {
    v127 = v5;
    v128.i64[0] = 0x800000008000;
    v128.i64[1] = 0x800000008000;
    v129.i64[0] = 0x7F0000007FLL;
    v129.i64[1] = 0x7F0000007FLL;
    v130.i64[0] = 0x7F0000007FLL;
    v130.i64[1] = 0x7F0000007FLL;
    while (2)
    {
      v131 = (*(a1 + 56) * *(a1 + 48));
      if (v131 < 1)
      {
        goto LABEL_112;
      }

      v132 = *(a1 + 32);
      v133 = *(a1 + 40);
      if (v131 >= 4 && ((v134 = (v132 + v133 * v127), v134 < (v122 + 4 * v131)) ? (v135 = v122 >= &v134->i8[v131]) : (v135 = 1), v135))
      {
        if (v131 >= 0x10)
        {
          v136 = v131 & 0x7FFFFFF0;
          v142 = v136;
          v143 = v122;
          do
          {
            v145 = v143[2];
            v144 = v143[3];
            v147 = *v143;
            v146 = v143[1];
            v143 += 4;
            v164.val[3] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v144, v128), 0x10uLL), v129), v130);
            v164.val[2] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v145, v128), 0x10uLL), v129), v130);
            v164.val[1] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v146, v128), 0x10uLL), v129), v130);
            v164.val[0] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v147, v128), 0x10uLL), v129), v130);
            *v134++ = vqtbl4q_s8(v164, xmmword_1003E36F0);
            v142 -= 16;
          }

          while (v142);
          if (v136 == v131)
          {
            goto LABEL_111;
          }

          if ((v131 & 0xC) == 0)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v136 = 0;
        }

        v148 = v136;
        v136 = v131 & 0x7FFFFFFC;
        v149 = (v122 + 4 * v148);
        v150 = (v132 + v148 + v133 * v127);
        v151 = v148 - v136;
        do
        {
          v152 = *v149++;
          *v150++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v152, v128), 0x10uLL), v129), v130)), *v128.i8).u32[0];
          v151 += 4;
        }

        while (v151);
        if (v136 != v131)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v136 = 0;
LABEL_123:
        v137 = v131 - v136;
        v138 = (v132 + v136 + v133 * v127);
        v139 = &v122->i32[v136];
        do
        {
          v140 = *v139++;
          v141 = (v140 + 0x8000) >> 16;
          if (v141 <= -128)
          {
            v141 = -128;
          }

          if (v141 >= 127)
          {
            LOBYTE(v141) = 127;
          }

          *v138++ = v141;
          --v137;
        }

        while (v137);
      }

LABEL_111:
      v126 = a2[1];
LABEL_112:
      if (++v127 >= v126)
      {
        break;
      }

      continue;
    }
  }

  result = v160;
  if (v160 != v162 && v160 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_100355284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20 != v20)
  {
    if (a20)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

unsigned __int16 *sub_1003552C8(unsigned __int16 *result, uint64_t a2, uint64_t a3, int32x4_t *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  v8 = *result << 16;
  v9 = vdupq_n_s32(v8);
  if (a6 < 4)
  {
    v11 = 0;
    if (a6 <= 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    v11 = a6 & 0x7FFFFFFC;
    do
    {
      *a5++ = v9;
      v10 += 4;
      a4 += 2;
    }

    while (v10 < a6 - 3);
    if (v11 >= a6)
    {
      goto LABEL_16;
    }
  }

  v12 = (~v11 + a6);
  if (v12 > 6)
  {
    v14 = v12 + 1;
    v15 = (v12 + 1) & 0x1FFFFFFF8;
    a4 = (a4 + 8 * v15);
    v13 = (a5 + 4 * v15);
    v11 += v15;
    v16 = a5 + 1;
    v17 = v15;
    do
    {
      v16[-1] = v9;
      *v16 = v9;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    if (v14 == v15)
    {
      v11 = a6;
      a5 = (a5 + 4 * v15);
      goto LABEL_16;
    }
  }

  else
  {
    v13 = a5;
  }

  v18 = a6 - v11;
  a5 = v13;
  do
  {
    a5->i32[0] = v8;
    a5 = (a5 + 4);
    a4 = (a4 + 8);
    --v18;
  }

  while (v18);
  v11 = a6;
LABEL_16:
  if (v11 < a7 - 3)
  {
    v19 = (a3 + 4 * v11 + 8);
    do
    {
      v20 = v19[1];
      if (v20 + 8 > *(a3 - 4 + 4 * a8))
      {
        break;
      }

      v21 = *(v19 - 1);
      v22 = *&result[*(v19 - 2)];
      v23 = *v19;
      v19 += 4;
      v24 = *a4;
      v25 = a4[1];
      a4 += 2;
      v26 = vmulq_s32(vmovl_u16(vzip1_s32(v22, *&result[v21])), v24);
      v27 = vmulq_s32(vmovl_u16(vzip1_s32(*&result[v23], *&result[v20])), v25);
      v28 = vdupq_laneq_s64(v26, 1);
      v26.i64[1] = v27.i64[0];
      v29 = vzip1q_s32(v26, v28);
      v30 = vzip2q_s32(v26, v27);
      v31 = vzip2q_s64(v29, v30);
      v29.i64[1] = v30.i64[0];
      *a5++ = vaddq_s32(v31, v29);
      v11 += 4;
    }

    while (a7 - 3 > v11);
  }

  if (v11 < a7)
  {
    v32 = (a3 + 4 * v11);
    do
    {
      v33 = *v32++;
      v34 = a4->i32[0];
      v35 = a4->i32[1];
      a4 = (a4 + 8);
      a5->i32[0] = v34 * result[v33] + v35 * result[v33 + 1];
      a5 = (a5 + 4);
      ++v11;
    }

    while (v11 < a7);
  }

  v36 = result[*(a3 + 4 * a8 - 4)] << 16;
  for (i = vdupq_n_s32(v36); v11 < a8 - 3; v11 += 4)
  {
    *a5++ = i;
  }

  if (v11 < a8)
  {
    v38 = (~v11 + a8);
    if (v38 <= 6)
    {
      v39 = a5;
LABEL_31:
      v44 = a8 - v11;
      do
      {
        v39->i32[0] = v36;
        v39 = (v39 + 4);
        --v44;
      }

      while (v44);
      return result;
    }

    v40 = v38 + 1;
    v41 = (v38 + 1) & 0x1FFFFFFF8;
    v39 = (a5 + 4 * v41);
    v11 += v41;
    v42 = a5 + 1;
    v43 = v41;
    do
    {
      v42[-1] = i;
      *v42 = i;
      v42 += 2;
      v43 -= 8;
    }

    while (v43);
    if (v40 != v41)
    {
      goto LABEL_31;
    }
  }

  return result;
}

int16x4_t *sub_1003554F4(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

_WORD *sub_100355798(_WORD *result, double a2, uint64_t a3, uint64_t a4, int *a5, double *a6, unsigned int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    LOWORD(a2) = *result;
    WORD2(a2) = result[1];
    a2 = COERCE_DOUBLE(vshl_n_s32(*&a2, 0x10uLL));
    if (a7 > 7)
    {
      v9 = a7 & 0x7FFFFFF8;
      v10 = &a6[v9];
      *&v11 = a2;
      *(&v11 + 1) = a2;
      v12 = a6 + 4;
      v13 = v9;
      do
      {
        *(v12 - 2) = v11;
        *(v12 - 1) = v11;
        *v12 = v11;
        *(v12 + 1) = v11;
        v12 += 8;
        v13 -= 8;
      }

      while (v13);
      if (v9 == a7)
      {
LABEL_12:
        a5 += 2 * a7;
        a6 = v10;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a6;
    }

    v14 = a7 - v9;
    do
    {
      *v10++ = a2;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v15 = a8 - a7;
    v16 = (a4 + 4 * a7);
    do
    {
      v17 = *v16++;
      v18 = &result[2 * v17];
      *a6 = *a5 * *v18 + a5[1] * v18[2];
      v19 = *a5;
      v20 = a5[1];
      a5 += 2;
      v21 = v19 * v18[1] + v20 * v18[3];
      v22 = a6 + 1;
      *(a6++ + 1) = v21;
      --v15;
    }

    while (v15);
    a6 = v22;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v23 = &result[2 * *(a4 + 4 * a9 - 4)];
  LOWORD(a2) = *v23;
  WORD2(a2) = v23[1];
  v24 = vshl_n_s32(*&a2, 0x10uLL);
  v25 = (~a8 + a9);
  if (v25 < 7)
  {
    v26 = a6;
LABEL_21:
    v32 = a9 - a8;
    do
    {
      *v26++ = *&v24;
      --v32;
    }

    while (v32);
    return result;
  }

  v27 = v25 + 1;
  v28 = (v25 + 1) & 0x1FFFFFFF8;
  a8 += v28;
  v26 = &a6[v28];
  *&v29 = v24;
  *(&v29 + 1) = v24;
  v30 = a6 + 4;
  v31 = v28;
  do
  {
    *(v30 - 2) = v29;
    *(v30 - 1) = v29;
    *v30 = v29;
    *(v30 + 1) = v29;
    v30 += 8;
    v31 -= 8;
  }

  while (v31);
  if (v27 != v28)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100355918(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

__int16 *sub_100355BBC(__int16 *result, int32x2_t a2, uint64_t a3, uint64_t a4, int *a5, int32x2_t *a6, unsigned int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    a2.i16[0] = *result;
    a2.i16[2] = result[1];
    a2 = vshl_n_s32(a2, 0x10uLL);
    v9 = result[2] << 16;
    if (a7 > 7)
    {
      v10 = a7 & 0x7FFFFFF8;
      *&v12 = a2;
      *(&v12 + 1) = __PAIR64__(a2.u32[0], v9);
      LODWORD(v13) = a2.i32[1];
      DWORD1(v13) = result[2] << 16;
      *(&v13 + 1) = a2;
      v11 = (a6 + 12 * v10);
      *&v14 = __PAIR64__(a2.u32[0], DWORD1(v13));
      *(&v14 + 1) = __PAIR64__(v9, a2.u32[1]);
      v15 = v10;
      do
      {
        *a6->i8 = v12;
        *a6[2].i8 = v13;
        *a6[4].i8 = v14;
        *a6[6].i8 = v12;
        *a6[8].i8 = v13;
        *a6[10].i8 = v14;
        a6 += 12;
        v15 -= 8;
      }

      while (v15);
      if (v10 == a7)
      {
LABEL_12:
        a5 += 2 * a7;
        a6 = v11;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a6;
    }

    v16 = a7 - v10;
    v17 = v11;
    do
    {
      *v17 = a2;
      v11 = (v17 + 12);
      v17[1].i32[0] = v9;
      v17 = (v17 + 12);
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v18 = a8 - a7;
    v19 = (a4 + 4 * a7);
    do
    {
      v20 = *v19++;
      v21 = &result[3 * v20];
      a6->i32[0] = *a5 * *v21 + a5[1] * v21[3];
      a6->i32[1] = *a5 * v21[1] + a5[1] * v21[4];
      v22 = *a5;
      v23 = a5[1];
      a5 += 2;
      v24 = v22 * v21[2] + v23 * v21[5];
      v25 = (a6 + 12);
      a6[1].i32[0] = v24;
      a6 = (a6 + 12);
      --v18;
    }

    while (v18);
    a6 = v25;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v26 = &result[3 * *(a4 + 4 * a9 - 4)];
  a2.i16[0] = *v26;
  a2.i16[2] = v26[1];
  v27 = vshl_n_s32(a2, 0x10uLL);
  v28 = v26[2] << 16;
  v29 = (~a8 + a9);
  if (v29 < 7)
  {
    v30 = a6;
LABEL_21:
    v36 = a9 - a8;
    do
    {
      *v30 = v27;
      v30[1].i32[0] = v28;
      v30 = (v30 + 12);
      --v36;
    }

    while (v36);
    return result;
  }

  v31 = v29 + 1;
  a8 += v31 & 0xFFFFFFF8;
  *&v32 = v27;
  *(&v32 + 1) = __PAIR64__(v27.u32[0], v28);
  *&v33 = __PAIR64__(v28, v27.u32[1]);
  *(&v33 + 1) = v27;
  v30 = (a6 + 12 * (v31 & 0x1FFFFFFF8));
  *&v34 = __PAIR64__(v27.u32[0], v28);
  *(&v34 + 1) = __PAIR64__(v28, v27.u32[1]);
  v35 = v31 & 0x1FFFFFFF8;
  do
  {
    *a6->i8 = v32;
    *a6[2].i8 = v33;
    *a6[4].i8 = v34;
    *a6[6].i8 = v32;
    *a6[8].i8 = v33;
    *a6[10].i8 = v34;
    a6 += 12;
    v35 -= 8;
  }

  while (v35);
  if (v31 != (v31 & 0x1FFFFFFF8))
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100355DEC(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

int16x4_t *sub_100356090(int16x4_t *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s16(*result, 0x10uLL);
    if (a6 > 7)
    {
      v9 = a6 & 0x7FFFFFF8;
      v10 = &a5[v9];
      v11 = a5 + 4;
      v12 = v9;
      do
      {
        v11[-4] = v8;
        v11[-3] = v8;
        v11[-2] = v8;
        v11[-1] = v8;
        *v11 = v8;
        v11[1] = v8;
        v11[2] = v8;
        v11[3] = v8;
        v11 += 8;
        v12 -= 8;
      }

      while (v12);
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

    v13 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v14 = a7 - a6;
    v15 = (a3 + 4 * a6);
    do
    {
      v16 = *v15++;
      v17 = &result[v16];
      a5->i32[0] = *a4 * v17->u16[0] + a4[1] * v17[1].u16[0];
      a5->i32[1] = *a4 * v17->u16[1] + a4[1] * v17[1].u16[1];
      a5->i32[2] = *a4 * v17->u16[2] + a4[1] * v17[1].u16[2];
      v18 = *a4;
      v19 = a4[1];
      a4 += 2;
      v20 = v18 * v17->u16[3] + v19 * v17[1].u16[3];
      v21 = a5 + 1;
      a5->i32[3] = v20;
      ++a5;
      --v14;
    }

    while (v14);
    a5 = v21;
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
  v22 = vshll_n_s16(result[*(a3 + 4 * a8 - 4)], 0x10uLL);
  v23 = (~a7 + a8);
  if (v23 < 7)
  {
    v24 = a5;
LABEL_21:
    v29 = a8 - a7;
    do
    {
      *v24++ = v22;
      --v29;
    }

    while (v29);
    return result;
  }

  v25 = v23 + 1;
  v26 = (v23 + 1) & 0x1FFFFFFF8;
  a7 += v26;
  v24 = &a5[v26];
  v27 = a5 + 4;
  v28 = v26;
  do
  {
    v27[-4] = v22;
    v27[-3] = v22;
    v27[-2] = v22;
    v27[-1] = v22;
    *v27 = v22;
    v27[1] = v22;
    v27[2] = v22;
    v27[3] = v22;
    v27 += 8;
    v28 -= 8;
  }

  while (v28);
  if (v25 != v26)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100356234(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

int16x4_t *sub_1003564D8(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_24;
    }

LABEL_10:
    LODWORD(v12) = a6;
LABEL_42:
    v40 = a5;
    goto LABEL_43;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v13 = 4 * (a2 & 0x7FFFFFF0);
      v14 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        i32 = a5[2].i32;
        do
        {
          a5 = (a5 + v13);
          v16 = i32;
          v17 = result + 2;
          v18 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v17[-2].i8;
            _Q1 = *v17->i8;
            v21 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v26 = vshll_n_s16(*v17, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v16[-2] = v21;
            v16[-1] = _Q0;
            *v16 = v26;
            v16[1] = _Q1;
            v16 += 4;
            v17 += 4;
            v18 -= 16;
          }

          while (v18);
          ++v14;
          i32 = (i32 + v13);
        }

        while (v14 != a6);
      }

      else
      {
        for (i = 0; i != a6; ++i)
        {
          v28 = a5[2].i32;
          a5 = (a5 + v13);
          v29 = a2 & 0x7FFFFFF0;
          v30 = result + 2;
          do
          {
            _Q0 = *v30[-2].i8;
            _Q1 = *v30->i8;
            v33 = vshll_n_s16(*&_Q0, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v34 = vshll_n_s16(*v30, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            *(v28 - 2) = v33;
            *(v28 - 1) = _Q0;
            *v28 = v34;
            *(v28 + 1) = _Q1;
            v28 += 16;
            v30 += 4;
            v29 -= 16;
          }

          while (v29);
          v35 = a2 - (a2 & 0x7FFFFFF0);
          v36 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v37 = v36->u16[0];
            v36 = (v36 + 2);
            a5->i32[0] = v37 << 16;
            a5 = (a5 + 4);
            --v35;
          }

          while (v35);
        }
      }
    }

    else
    {
      for (j = 0; j != a6; ++j)
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = v9->u16[0];
          v9 = (v9 + 2);
          a5->i32[0] = v11 << 16;
          a5 = (a5 + 4);
          --v10;
        }

        while (v10);
      }
    }
  }

  a4 += 2 * a6;
  if (a6 >= a7)
  {
    goto LABEL_10;
  }

LABEL_24:
  if (a2 < 1)
  {
    LODWORD(v12) = a7;
    goto LABEL_42;
  }

  v12 = a6;
  if (a2 >= 8)
  {
    v68 = &a4[2 * ~a6 + 2 + 2 * a7];
    v69 = a4;
    while (1)
    {
      v70 = *(a3 + 4 * v12) * a2;
      if (a5 >= v68 || a4 >= &a5->i32[a2])
      {
        v72 = (result + 2 * v70);
        v40 = &a5->i32[a2 & 0x7FFFFFF8];
        v73 = v69;
        v74 = vld1q_dup_f32(v73++);
        v75 = vld1q_dup_f32(v73);
        v76 = a2 & 0x7FFFFFF8;
        do
        {
          v77 = *(v72 + 2 * a2);
          v78 = vmlaq_s32(vmulq_s32(v74, vmovl_high_u16(*v72)), v75, vmovl_high_u16(v77));
          *a5 = vmlaq_s32(vmulq_s32(v74, vmovl_u16(*v72->i8)), v75, vmovl_u16(*v77.i8));
          a5[1] = v78;
          a5 += 2;
          ++v72;
          v76 -= 8;
        }

        while (v76);
        v71 = a2 & 0x7FFFFFF8;
        if (v71 == a2)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v71 = 0;
        v40 = a5;
      }

      v79 = result + v71 + v70;
      v80 = a2 - v71;
      do
      {
        v81 = *v69 * *v79;
        *v40 = v81;
        *v40++ = v81 + v69[1] * v79[a2];
        ++v79;
        --v80;
      }

      while (v80);
LABEL_60:
      ++v12;
      v69 += 2;
      a5 = v40;
      if (v12 >= a7)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = (a3 + 4 * a6);
  v39 = a4 + 1;
  LODWORD(v12) = a6;
  v40 = a5;
  do
  {
    v41 = *v38++;
    v42 = result + v41 * a2;
    v43 = &v42[a2];
    v44 = *(v39 - 1) * *v42;
    *v40 = v44;
    *v40 = v44 + *v39 * *v43;
    if (a2 == 1)
    {
      ++v40;
    }

    else
    {
      v45 = *(v39 - 1) * v42[1];
      v40[1] = v45;
      v40[1] = v45 + *v39 * v43[1];
      if (a2 == 2)
      {
        v40 += 2;
      }

      else
      {
        v46 = *(v39 - 1) * v42[2];
        v40[2] = v46;
        v40[2] = v46 + *v39 * v43[2];
        if (a2 == 3)
        {
          v40 += 3;
        }

        else
        {
          v47 = *(v39 - 1) * v42[3];
          v40[3] = v47;
          v40[3] = v47 + *v39 * v43[3];
          if (a2 == 4)
          {
            v40 += 4;
          }

          else
          {
            v48 = *(v39 - 1) * v42[4];
            v40[4] = v48;
            v40[4] = v48 + *v39 * v43[4];
            if (a2 == 5)
            {
              v40 += 5;
            }

            else
            {
              v49 = *(v39 - 1) * v42[5];
              v40[5] = v49;
              v40[5] = v49 + *v39 * v43[5];
              if (a2 == 6)
              {
                v40 += 6;
              }

              else
              {
                v50 = *(v39 - 1) * v42[6];
                v40[6] = v50;
                v40[6] = v50 + *v39 * v43[6];
                v40 += 7;
              }
            }
          }
        }
      }
    }

    LODWORD(v12) = v12 + 1;
    v39 += 2;
  }

  while (v12 < a7);
LABEL_43:
  if (v12 < a8 && a2 >= 1)
  {
    v51 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v56 = (result + 2 * v51);
      v57 = v56 + 2;
      v58 = &v56[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v59 = (v40 + 8);
        v40 += a2 & 0x7FFFFFF0;
        v60 = a2 & 0x7FFFFFF0;
        result = v57;
        do
        {
          _Q0 = *result[-2].i8;
          _Q1 = *result->i8;
          v63 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v64 = vshll_n_s16(*result, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v59[-2] = v63;
          v59[-1] = _Q0;
          *v59 = v64;
          v59[1] = _Q1;
          v59 += 4;
          result += 4;
          v60 -= 16;
        }

        while (v60);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v65 = a2 - (a2 & 0x7FFFFFF0);
          v66 = v58;
          do
          {
            v67 = *v66;
            v66 += 2;
            result = (v67 << 16);
            *v40++ = result;
            --v65;
          }

          while (v65);
        }

        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }

    else
    {
      v52 = result + 2 * v51;
      do
      {
        v53 = v52;
        v54 = a2;
        do
        {
          v55 = *v53++;
          *v40++ = v55 << 16;
          --v54;
        }

        while (v54);
        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }
  }

  return result;
}

int16x4_t *sub_1003569B0(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v12 = 4 * (a2 & 0x7FFFFFF0);
      v13 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        v14 = a5 + 2;
        do
        {
          a5 = (a5 + v12);
          v15 = v14;
          v16 = result + 2;
          v17 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v16[-2].i8;
            _Q1 = *v16->i8;
            v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v25 = vshll_n_s16(*v16, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v15[-2] = v20;
            v15[-1] = _Q0;
            *v15 = v25;
            v15[1] = _Q1;
            v15 += 4;
            v16 += 4;
            v17 -= 16;
          }

          while (v17);
          ++v13;
          v14 = (v14 + v12);
        }

        while (v13 != a6);
      }

      else
      {
        v26 = 0;
        do
        {
          v27 = a5 + 2;
          a5 = (a5 + v12);
          v28 = a2 & 0x7FFFFFF0;
          v29 = result + 2;
          do
          {
            _Q0 = *v29[-2].i8;
            _Q1 = *v29->i8;
            v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v33 = vshll_n_s16(*v29, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v27[-2] = v32;
            v27[-1] = _Q0;
            *v27 = v33;
            v27[1] = _Q1;
            v27 += 4;
            v29 += 4;
            v28 -= 16;
          }

          while (v28);
          v34 = a2 - (a2 & 0x7FFFFFF0);
          v35 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v36 = v35->u16[0];
            v35 = (v35 + 2);
            a5->i32[0] = v36 << 16;
            a5 = (a5 + 4);
            --v34;
          }

          while (v34);
          ++v26;
        }

        while (v26 != a6);
      }
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = v9->u16[0];
          v9 = (v9 + 2);
          a5->i32[0] = v11 << 16;
          a5 = (a5 + 4);
          --v10;
        }

        while (v10);
        ++v8;
      }

      while (v8 != a6);
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 < a7)
  {
LABEL_24:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v37 = 0;
        v38 = result + *(a3 + 4 * a6) * a2;
        do
        {
          v39 = *a4;
          if (*a4)
          {
            v39 *= *v38;
          }

          a5->i32[0] = v39;
          v40 = a4[1];
          if (v40)
          {
            v40 *= v38[a2];
          }

          a5->i32[0] = v40 + v39;
          a5 = (a5 + 4);
          ++v38;
          v37 += 2;
        }

        while (2 * a2 != v37);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 < a8 && a2 >= 1)
  {
    v41 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v46 = (result + 2 * v41);
      v47 = v46 + 2;
      v48 = &v46[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v49 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v50 = a2 & 0x7FFFFFF0;
        v51 = v47;
        do
        {
          _Q0 = *v51[-2].i8;
          _Q1 = *v51->i8;
          v54 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v55 = vshll_n_s16(*v51, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v49[-2] = v54;
          v49[-1] = _Q0;
          *v49 = v55;
          v49[1] = _Q1;
          v49 += 4;
          v51 += 4;
          v50 -= 16;
        }

        while (v50);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v56 = a2 - (a2 & 0x7FFFFFF0);
          v57 = v48;
          do
          {
            v58 = *v57;
            v57 += 2;
            a5->i32[0] = v58 << 16;
            a5 = (a5 + 4);
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
      v42 = result + 2 * v41;
      do
      {
        v43 = v42;
        v44 = a2;
        do
        {
          v45 = *v43++;
          a5->i32[0] = v45 << 16;
          a5 = (a5 + 4);
          --v44;
        }

        while (v44);
        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }
  }

  return result;
}

uint64_t sub_100356C58(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4)
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
      if ((v15 & 0x8000000000000000) != 0)
      {
        result = 0;
      }

      else
      {
        sub_10029DA40(&v17, 0x10000u);
        sub_10029E004(&v15, &v17, &v18);
        result = sub_10029DC5C(&v18);
      }

      *a4 = 0x10000 - result;
      a4[1] = result;
    }
  }

  return result;
}

void sub_100356DC0()
{
  nullsub_1();

  operator delete();
}

int32x4_t *sub_100356DF8(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v119, 0x420uLL);
  v117 = v119;
  v118 = v4;
  if (v4 >= 0x109)
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

  if (v5 < v6)
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v119, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  v9 = 0;
  v10 = -2;
  if (v5 < v7)
  {
LABEL_52:
    v62 = (*(a1 + 56) * *(a1 + 48));
    if (v62 < 1)
    {
      goto LABEL_57;
    }

    v63 = v117;
    v64 = *(a1 + 40);
    v65 = v5;
    v66 = (*(a1 + 32) + v64 * v5);
    if (v62 < 4)
    {
      do
      {
        v67 = v63;
        v68 = v66;
        v69 = v62;
        do
        {
          v70 = v67->i32[0];
          v67 = (v67 + 4);
          v68->i16[0] = (v70 + 0x8000) >> 16;
          v68 = (v68 + 2);
          --v69;
        }

        while (v69);
        ++v65;
        v66 = (v66 + v64);
      }

      while (v65 != v7);
LABEL_57:
      v5 = v7;
      if (v7 < v8)
      {
        goto LABEL_12;
      }

LABEL_58:
      v31 = v117;
      v12 = *(a1 + 28);
      if (v10 + 2 <= v12)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v85 = v66 + 1;
    while (v62 >= 0x10)
    {
      v87 = v62 & 0x7FFFFFF0;
      v88 = v85;
      v89 = v63 + 2;
      do
      {
        v91 = v89[-2];
        v90 = v89[-1];
        v93 = *v89;
        v92 = v89[1];
        v89 += 4;
        v88[-1] = vraddhn_high_s32(vraddhn_s32(v91, 0), v90, 0);
        *v88 = vraddhn_high_s32(vraddhn_s32(v93, 0), v92, 0);
        v88 += 2;
        v87 -= 16;
      }

      while (v87);
      if ((v62 & 0x7FFFFFF0) == v62)
      {
        goto LABEL_79;
      }

      v86 = v62 & 0x7FFFFFF0;
      v94 = v86;
      if ((v62 & 0xC) != 0)
      {
        goto LABEL_86;
      }

      do
      {
LABEL_89:
        v66->i16[v94] = (v63->i32[v94] + 0x8000) >> 16;
        ++v94;
      }

      while (v62 != v94);
LABEL_79:
      ++v65;
      v85 = (v85 + v64);
      v66 = (v66 + v64);
      if (v65 == v7)
      {
        goto LABEL_57;
      }
    }

    v86 = 0;
LABEL_86:
    v95 = (v63 + 4 * v86);
    v96 = v86 - (v62 & 0x7FFFFFFC);
    v97 = (v66 + 2 * v86);
    do
    {
      v98 = *v95++;
      *v97++ = vraddhn_s32(v98, 0);
      v96 += 4;
    }

    while (v96);
    v94 = v62 & 0x7FFFFFFC;
    if (v94 == v62)
    {
      goto LABEL_79;
    }

    goto LABEL_89;
  }

LABEL_11:
  if (v5 >= v8)
  {
    goto LABEL_58;
  }

LABEL_12:
  v11 = v5;
  v12 = *(a1 + 28);
  *&v13.f64[0] = 0x8000000080000000;
  *&v13.f64[1] = 0x8000000080000000;
  v14 = vnegq_f64(v13);
  v15.i64[0] = 0xFFFFLL;
  v15.i64[1] = 0xFFFFLL;
  v114 = v14;
  do
  {
    v16 = v10;
    v17 = *(a1 + 72);
    v18 = v10 + 2;
    v10 = *(v17 + 4 * v11);
    if (v10 > v18)
    {
      v18 = *(v17 + 4 * v11);
    }

    v19 = v10 + 2;
    if (v12 < v10 + 2)
    {
      v19 = v12;
    }

    if (v18 < v19)
    {
      if (v16 + 2 <= v10)
      {
        v20 = v10;
      }

      else
      {
        v20 = v16 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v20++);
        v10 = *(v17 + 4 * v11);
        v9 = (v9 & 1) == 0;
        v21 = v10 + 2;
        v12 = *(a1 + 28);
        if (v12 < v10 + 2)
        {
          v21 = *(a1 + 28);
        }
      }

      while (v20 < v21);
      v14 = v114;
      v15.i64[0] = 0xFFFFLL;
      v15.i64[1] = 0xFFFFLL;
    }

    v22 = v12 - 2;
    if (v10 <= v12 - 2)
    {
      v23 = v12 - 2;
    }

    else
    {
      v23 = v10;
    }

    v24 = v23 + v9;
    if (v16 > v22)
    {
      v22 = v16;
    }

    v25 = v24 - v22;
    v115 = 0;
    v116 = 0;
    if (v25 >= 0)
    {
      v9 = v25 & 1;
    }

    else
    {
      v9 = -(v25 & 1);
    }

    v26 = *(a1 + 88);
    if (v9 < 1)
    {
      v27 = 0;
      v29 = 0;
      v28 = &v116;
    }

    else
    {
      v27 = *(v26 + 8 * v11 + 4);
      v28 = &v115;
      v29 = 1;
    }

    v116 = v27;
    v30 = v26 + 4 * (2 * v11 - v9);
    *v28 = *(v30 + 4 * v29);
    if (v9 <= 0)
    {
      v115 = *(v30 + 4);
      v31 = v117;
      v32 = *(a1 + 56) * *(a1 + 48);
      if (v32 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v31 = v117;
      v32 = *(a1 + 56) * *(a1 + 48);
      if (v32 < 1)
      {
        goto LABEL_13;
      }
    }

    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v35 = v115;
    v36 = v116;
    if (v32 >= 8)
    {
      v37 = v32 & 0x7FFFFFF8;
      v38 = (v33 + v34 * v11);
      v39 = vdupq_n_s32(v116);
      v40 = vdupq_n_s32(v115);
      v41 = v37;
      v42 = v31;
      do
      {
        v43 = v42[1];
        v44 = vmull_high_u32(v39, v43);
        v46 = *(v42 + 4 * v32);
        v45 = *(&v42[1] + 4 * v32);
        v47 = vshrq_n_u64(vaddq_s64(vmlal_u32(vmull_u32(*v39.i8, *v43.i8), *v40.i8, *v45.i8), v14), 0x20uLL);
        v48 = vshrq_n_u64(vaddq_s64(vmlal_high_u32(v44, v40, v45), v14), 0x20uLL);
        v49 = vshrq_n_u64(vaddq_s64(vmlal_u32(vmull_u32(*v39.i8, *v42->i8), *v40.i8, *v46.i8), v14), 0x20uLL);
        v50 = vshrq_n_u64(vaddq_s64(vmlal_high_u32(vmull_high_u32(v39, *v42), v40, v46), v14), 0x20uLL);
        v51 = vcgtq_u64(v15, v50);
        v52 = vornq_s8(vandq_s8(v50, v51), v51);
        v53 = vcgtq_u64(v15, v49);
        v54 = vornq_s8(vandq_s8(v49, v53), v53);
        v55 = vcgtq_u64(v15, v48);
        v56 = vornq_s8(vandq_s8(v48, v55), v55);
        v57 = vcgtq_u64(v15, v47);
        *v38++ = vuzp1q_s16(vuzp1q_s32(v54, v52), vuzp1q_s32(vornq_s8(vandq_s8(v47, v57), v57), v56));
        v42 += 2;
        v41 -= 8;
      }

      while (v41);
      if (v37 == v32)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v37 = 0;
    }

    v58 = v32 - v37;
    v59 = (v33 + v34 * v11 + 2 * v37);
    v60 = v31 + v37;
    do
    {
      v61 = (v60[v32] * v35 + *v60 * v36 + 0x80000000) >> 32;
      if (v61 >= 0xFFFF)
      {
        LOWORD(v61) = -1;
      }

      *v59++ = v61;
      ++v60;
      --v58;
    }

    while (v58);
LABEL_13:
    ++v11;
  }

  while (v8 != v11);
  v5 = v8;
  if (v10 + 2 <= v12)
  {
LABEL_64:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v12 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v31, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_65;
  }

LABEL_59:
  v71 = v9 + ~v10 + v12;
  if (v71 >= 0)
  {
    v72 = v71 & 1;
  }

  else
  {
    v72 = -(v71 & 1);
  }

  v31 = (v31 + 4 * *(a1 + 48) * v72 * *(a1 + 56));
LABEL_65:
  v73 = a2[1];
  if (v5 < v73)
  {
    v74 = (*(a1 + 56) * *(a1 + 48));
    if (v74 >= 1)
    {
      v76 = *(a1 + 32);
      v75 = *(a1 + 40);
      v77 = v5;
      if (v74 < 4)
      {
        v78 = (v76 + v75 * v5);
        do
        {
          v79 = v31;
          v80 = v78;
          v81 = v74;
          do
          {
            v82 = v79->i32[0];
            v79 = (v79 + 4);
            *v80++ = (v82 + 0x8000) >> 16;
            --v81;
          }

          while (v81);
          ++v77;
          v78 = (v78 + v75);
        }

        while (v77 != v73);
        goto LABEL_72;
      }

      v99 = (v76 + v75 * v5);
      v100 = v99 + 1;
      while (2)
      {
        if (v74 >= 0x10)
        {
          v102 = v74 & 0x7FFFFFF0;
          v103 = v100;
          v104 = v31 + 2;
          do
          {
            v106 = v104[-2];
            v105 = v104[-1];
            v108 = *v104;
            v107 = v104[1];
            v104 += 4;
            v103[-1] = vraddhn_high_s32(vraddhn_s32(v106, 0), v105, 0);
            *v103 = vraddhn_high_s32(vraddhn_s32(v108, 0), v107, 0);
            v103 += 2;
            v102 -= 16;
          }

          while (v102);
          if ((v74 & 0x7FFFFFF0) != v74)
          {
            v101 = v74 & 0x7FFFFFF0;
            i = v101;
            if ((v74 & 0xC) != 0)
            {
              goto LABEL_99;
            }

            goto LABEL_102;
          }
        }

        else
        {
          v101 = 0;
LABEL_99:
          v110 = (v31 + 4 * v101);
          v111 = v101 - (v74 & 0x7FFFFFFC);
          v112 = (v99 + 2 * v101);
          do
          {
            v113 = *v110++;
            *v112++ = vraddhn_s32(v113, 0);
            v111 += 4;
          }

          while (v111);
          for (i = v74 & 0x7FFFFFFC; v74 != i; ++i)
          {
LABEL_102:
            v99->i16[i] = (v31->i32[i] + 0x8000) >> 16;
          }
        }

        ++v77;
        v100 = (v100 + v75);
        v99 = (v99 + v75);
        if (v77 == v73)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_72:
  result = v117;
  if (v117 != v119 && v117 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_1003574FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != v16)
  {
    if (a16)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

unsigned __int16 *sub_100357540(unsigned __int16 *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, unsigned int a6, int a7, int a8)
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

  v8 = *result << 16;
  if (a6 <= 7)
  {
    LODWORD(v9) = 0;
    v10 = a5;
LABEL_9:
    v14 = a6 - v9;
    do
    {
      v10->i32[0] = v8;
      v10 = (v10 + 4);
      --v14;
    }

    while (v14);
    goto LABEL_11;
  }

  v9 = a6 & 0x7FFFFFF8;
  v10 = (a5 + 4 * v9);
  v11 = vdupq_n_s32(v8);
  v12 = a5 + 1;
  v13 = v9;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 8;
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
    a5->i32[0] = v18 * result[v17] + v19 * result[v17 + 1];
    a5 = (a5 + 4);
    --v15;
  }

  while (v15);
  a6 = a7;
LABEL_15:
  if (a6 >= a8)
  {
    return result;
  }

  v20 = result[*(a3 + 4 * a8 - 4)] << 16;
  v21 = ~a6 + a8;
  if (v21 < 7)
  {
    v22 = a5;
LABEL_21:
    v28 = a8 - a6;
    do
    {
      v22->i32[0] = v20;
      v22 = (v22 + 4);
      --v28;
    }

    while (v28);
    return result;
  }

  v23 = v21 + 1;
  v24 = (v21 + 1) & 0x1FFFFFFF8;
  a6 += v24;
  v22 = (a5 + 4 * v24);
  v25 = vdupq_n_s32(v20);
  v26 = a5 + 1;
  v27 = v24;
  do
  {
    v26[-1] = v25;
    *v26 = v25;
    v26 += 2;
    v27 -= 8;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100357678(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

_WORD *sub_10035791C(_WORD *result, double a2, uint64_t a3, uint64_t a4, int *a5, double *a6, unsigned int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    LOWORD(a2) = *result;
    WORD2(a2) = result[1];
    a2 = COERCE_DOUBLE(vshl_n_s32(*&a2, 0x10uLL));
    if (a7 > 7)
    {
      v9 = a7 & 0x7FFFFFF8;
      v10 = &a6[v9];
      *&v11 = a2;
      *(&v11 + 1) = a2;
      v12 = a6 + 4;
      v13 = v9;
      do
      {
        *(v12 - 2) = v11;
        *(v12 - 1) = v11;
        *v12 = v11;
        *(v12 + 1) = v11;
        v12 += 8;
        v13 -= 8;
      }

      while (v13);
      if (v9 == a7)
      {
LABEL_12:
        a5 += 2 * a7;
        a6 = v10;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a6;
    }

    v14 = a7 - v9;
    do
    {
      *v10++ = a2;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v15 = a8 - a7;
    v16 = (a4 + 4 * a7);
    do
    {
      v17 = *v16++;
      v18 = &result[2 * v17];
      *a6 = *a5 * *v18 + a5[1] * v18[2];
      v19 = *a5;
      v20 = a5[1];
      a5 += 2;
      v21 = v19 * v18[1] + v20 * v18[3];
      v22 = a6 + 1;
      *(a6++ + 1) = v21;
      --v15;
    }

    while (v15);
    a6 = v22;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v23 = &result[2 * *(a4 + 4 * a9 - 4)];
  LOWORD(a2) = *v23;
  WORD2(a2) = v23[1];
  v24 = vshl_n_s32(*&a2, 0x10uLL);
  v25 = (~a8 + a9);
  if (v25 < 7)
  {
    v26 = a6;
LABEL_21:
    v32 = a9 - a8;
    do
    {
      *v26++ = *&v24;
      --v32;
    }

    while (v32);
    return result;
  }

  v27 = v25 + 1;
  v28 = (v25 + 1) & 0x1FFFFFFF8;
  a8 += v28;
  v26 = &a6[v28];
  *&v29 = v24;
  *(&v29 + 1) = v24;
  v30 = a6 + 4;
  v31 = v28;
  do
  {
    *(v30 - 2) = v29;
    *(v30 - 1) = v29;
    *v30 = v29;
    *(v30 + 1) = v29;
    v30 += 8;
    v31 -= 8;
  }

  while (v31);
  if (v27 != v28)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100357A9C(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

__int16 *sub_100357D40(__int16 *result, int32x2_t a2, uint64_t a3, uint64_t a4, int *a5, int32x2_t *a6, unsigned int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    a2.i16[0] = *result;
    a2.i16[2] = result[1];
    a2 = vshl_n_s32(a2, 0x10uLL);
    v9 = result[2] << 16;
    if (a7 > 7)
    {
      v10 = a7 & 0x7FFFFFF8;
      *&v12 = a2;
      *(&v12 + 1) = __PAIR64__(a2.u32[0], v9);
      LODWORD(v13) = a2.i32[1];
      DWORD1(v13) = result[2] << 16;
      *(&v13 + 1) = a2;
      v11 = (a6 + 12 * v10);
      *&v14 = __PAIR64__(a2.u32[0], DWORD1(v13));
      *(&v14 + 1) = __PAIR64__(v9, a2.u32[1]);
      v15 = v10;
      do
      {
        *a6->i8 = v12;
        *a6[2].i8 = v13;
        *a6[4].i8 = v14;
        *a6[6].i8 = v12;
        *a6[8].i8 = v13;
        *a6[10].i8 = v14;
        a6 += 12;
        v15 -= 8;
      }

      while (v15);
      if (v10 == a7)
      {
LABEL_12:
        a5 += 2 * a7;
        a6 = v11;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a6;
    }

    v16 = a7 - v10;
    v17 = v11;
    do
    {
      *v17 = a2;
      v11 = (v17 + 12);
      v17[1].i32[0] = v9;
      v17 = (v17 + 12);
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v18 = a8 - a7;
    v19 = (a4 + 4 * a7);
    do
    {
      v20 = *v19++;
      v21 = &result[3 * v20];
      a6->i32[0] = *a5 * *v21 + a5[1] * v21[3];
      a6->i32[1] = *a5 * v21[1] + a5[1] * v21[4];
      v22 = *a5;
      v23 = a5[1];
      a5 += 2;
      v24 = v22 * v21[2] + v23 * v21[5];
      v25 = (a6 + 12);
      a6[1].i32[0] = v24;
      a6 = (a6 + 12);
      --v18;
    }

    while (v18);
    a6 = v25;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v26 = &result[3 * *(a4 + 4 * a9 - 4)];
  a2.i16[0] = *v26;
  a2.i16[2] = v26[1];
  v27 = vshl_n_s32(a2, 0x10uLL);
  v28 = v26[2] << 16;
  v29 = (~a8 + a9);
  if (v29 < 7)
  {
    v30 = a6;
LABEL_21:
    v36 = a9 - a8;
    do
    {
      *v30 = v27;
      v30[1].i32[0] = v28;
      v30 = (v30 + 12);
      --v36;
    }

    while (v36);
    return result;
  }

  v31 = v29 + 1;
  a8 += v31 & 0xFFFFFFF8;
  *&v32 = v27;
  *(&v32 + 1) = __PAIR64__(v27.u32[0], v28);
  *&v33 = __PAIR64__(v28, v27.u32[1]);
  *(&v33 + 1) = v27;
  v30 = (a6 + 12 * (v31 & 0x1FFFFFFF8));
  *&v34 = __PAIR64__(v27.u32[0], v28);
  *(&v34 + 1) = __PAIR64__(v28, v27.u32[1]);
  v35 = v31 & 0x1FFFFFFF8;
  do
  {
    *a6->i8 = v32;
    *a6[2].i8 = v33;
    *a6[4].i8 = v34;
    *a6[6].i8 = v32;
    *a6[8].i8 = v33;
    *a6[10].i8 = v34;
    a6 += 12;
    v35 -= 8;
  }

  while (v35);
  if (v31 != (v31 & 0x1FFFFFFF8))
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100357F70(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

int16x4_t *sub_100358214(int16x4_t *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s16(*result, 0x10uLL);
    if (a6 > 7)
    {
      v9 = a6 & 0x7FFFFFF8;
      v10 = &a5[v9];
      v11 = a5 + 4;
      v12 = v9;
      do
      {
        v11[-4] = v8;
        v11[-3] = v8;
        v11[-2] = v8;
        v11[-1] = v8;
        *v11 = v8;
        v11[1] = v8;
        v11[2] = v8;
        v11[3] = v8;
        v11 += 8;
        v12 -= 8;
      }

      while (v12);
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

    v13 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v14 = a7 - a6;
    v15 = (a3 + 4 * a6);
    do
    {
      v16 = *v15++;
      v17 = &result[v16];
      a5->i32[0] = *a4 * v17->i16[0] + a4[1] * v17[1].i16[0];
      a5->i32[1] = *a4 * v17->i16[1] + a4[1] * v17[1].i16[1];
      a5->i32[2] = *a4 * v17->i16[2] + a4[1] * v17[1].i16[2];
      v18 = *a4;
      v19 = a4[1];
      a4 += 2;
      v20 = v18 * v17->i16[3] + v19 * v17[1].i16[3];
      v21 = a5 + 1;
      a5->i32[3] = v20;
      ++a5;
      --v14;
    }

    while (v14);
    a5 = v21;
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
  v22 = vshll_n_s16(result[*(a3 + 4 * a8 - 4)], 0x10uLL);
  v23 = (~a7 + a8);
  if (v23 < 7)
  {
    v24 = a5;
LABEL_21:
    v29 = a8 - a7;
    do
    {
      *v24++ = v22;
      --v29;
    }

    while (v29);
    return result;
  }

  v25 = v23 + 1;
  v26 = (v23 + 1) & 0x1FFFFFFF8;
  a7 += v26;
  v24 = &a5[v26];
  v27 = a5 + 4;
  v28 = v26;
  do
  {
    v27[-4] = v22;
    v27[-3] = v22;
    v27[-2] = v22;
    v27[-1] = v22;
    *v27 = v22;
    v27[1] = v22;
    v27[2] = v22;
    v27[3] = v22;
    v27 += 8;
    v28 -= 8;
  }

  while (v28);
  if (v25 != v26)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_1003583B8(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + *(a3 + 4 * v37) * a2;
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = *v57;
            v57 += 2;
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
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
      v43 = result + 2 * v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

int16x4_t *sub_10035865C(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, unsigned int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_24;
    }

LABEL_10:
    LODWORD(v12) = a6;
LABEL_42:
    v40 = a5;
    goto LABEL_43;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v13 = 4 * (a2 & 0x7FFFFFF0);
      v14 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        i32 = a5[2].i32;
        do
        {
          a5 = (a5 + v13);
          v16 = i32;
          v17 = result + 2;
          v18 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v17[-2].i8;
            _Q1 = *v17->i8;
            v21 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v26 = vshll_n_s16(*v17, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v16[-2] = v21;
            v16[-1] = _Q0;
            *v16 = v26;
            v16[1] = _Q1;
            v16 += 4;
            v17 += 4;
            v18 -= 16;
          }

          while (v18);
          ++v14;
          i32 = (i32 + v13);
        }

        while (v14 != a6);
      }

      else
      {
        for (i = 0; i != a6; ++i)
        {
          v28 = a5[2].i32;
          a5 = (a5 + v13);
          v29 = a2 & 0x7FFFFFF0;
          v30 = result + 2;
          do
          {
            _Q0 = *v30[-2].i8;
            _Q1 = *v30->i8;
            v33 = vshll_n_s16(*&_Q0, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v34 = vshll_n_s16(*v30, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            *(v28 - 2) = v33;
            *(v28 - 1) = _Q0;
            *v28 = v34;
            *(v28 + 1) = _Q1;
            v28 += 16;
            v30 += 4;
            v29 -= 16;
          }

          while (v29);
          v35 = a2 - (a2 & 0x7FFFFFF0);
          v36 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v37 = v36->u16[0];
            v36 = (v36 + 2);
            a5->i32[0] = v37 << 16;
            a5 = (a5 + 4);
            --v35;
          }

          while (v35);
        }
      }
    }

    else
    {
      for (j = 0; j != a6; ++j)
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = v9->u16[0];
          v9 = (v9 + 2);
          a5->i32[0] = v11 << 16;
          a5 = (a5 + 4);
          --v10;
        }

        while (v10);
      }
    }
  }

  a4 += 2 * a6;
  if (a6 >= a7)
  {
    goto LABEL_10;
  }

LABEL_24:
  if (a2 < 1)
  {
    LODWORD(v12) = a7;
    goto LABEL_42;
  }

  v12 = a6;
  if (a2 >= 8)
  {
    v68 = &a4[2 * ~a6 + 2 + 2 * a7];
    v69 = a4;
    while (1)
    {
      v70 = *(a3 + 4 * v12) * a2;
      if (a5 >= v68 || a4 >= &a5->i32[a2])
      {
        v72 = (result + 2 * v70);
        v40 = &a5->i32[a2 & 0x7FFFFFF8];
        v73 = v69;
        v74 = vld1q_dup_f32(v73++);
        v75 = vld1q_dup_f32(v73);
        v76 = a2 & 0x7FFFFFF8;
        do
        {
          v77 = *(v72 + 2 * a2);
          v78 = vmlaq_s32(vmulq_s32(v74, vmovl_high_s16(*v72)), v75, vmovl_high_s16(v77));
          *a5 = vmlaq_s32(vmulq_s32(v74, vmovl_s16(*v72->i8)), v75, vmovl_s16(*v77.i8));
          a5[1] = v78;
          a5 += 2;
          ++v72;
          v76 -= 8;
        }

        while (v76);
        v71 = a2 & 0x7FFFFFF8;
        if (v71 == a2)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v71 = 0;
        v40 = a5;
      }

      v79 = result + v71 + v70;
      v80 = a2 - v71;
      do
      {
        v81 = *v69 * *v79;
        *v40 = v81;
        *v40++ = v81 + v69[1] * v79[a2];
        ++v79;
        --v80;
      }

      while (v80);
LABEL_60:
      ++v12;
      v69 += 2;
      a5 = v40;
      if (v12 >= a7)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = (a3 + 4 * a6);
  v39 = a4 + 1;
  LODWORD(v12) = a6;
  v40 = a5;
  do
  {
    v41 = *v38++;
    v42 = result + v41 * a2;
    v43 = &v42[a2];
    v44 = *(v39 - 1) * *v42;
    *v40 = v44;
    *v40 = v44 + *v39 * *v43;
    if (a2 == 1)
    {
      ++v40;
    }

    else
    {
      v45 = *(v39 - 1) * v42[1];
      v40[1] = v45;
      v40[1] = v45 + *v39 * v43[1];
      if (a2 == 2)
      {
        v40 += 2;
      }

      else
      {
        v46 = *(v39 - 1) * v42[2];
        v40[2] = v46;
        v40[2] = v46 + *v39 * v43[2];
        if (a2 == 3)
        {
          v40 += 3;
        }

        else
        {
          v47 = *(v39 - 1) * v42[3];
          v40[3] = v47;
          v40[3] = v47 + *v39 * v43[3];
          if (a2 == 4)
          {
            v40 += 4;
          }

          else
          {
            v48 = *(v39 - 1) * v42[4];
            v40[4] = v48;
            v40[4] = v48 + *v39 * v43[4];
            if (a2 == 5)
            {
              v40 += 5;
            }

            else
            {
              v49 = *(v39 - 1) * v42[5];
              v40[5] = v49;
              v40[5] = v49 + *v39 * v43[5];
              if (a2 == 6)
              {
                v40 += 6;
              }

              else
              {
                v50 = *(v39 - 1) * v42[6];
                v40[6] = v50;
                v40[6] = v50 + *v39 * v43[6];
                v40 += 7;
              }
            }
          }
        }
      }
    }

    LODWORD(v12) = v12 + 1;
    v39 += 2;
  }

  while (v12 < a7);
LABEL_43:
  if (v12 < a8 && a2 >= 1)
  {
    v51 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v56 = (result + 2 * v51);
      v57 = v56 + 2;
      v58 = &v56[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v59 = (v40 + 8);
        v40 += a2 & 0x7FFFFFF0;
        v60 = a2 & 0x7FFFFFF0;
        result = v57;
        do
        {
          _Q0 = *result[-2].i8;
          _Q1 = *result->i8;
          v63 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v64 = vshll_n_s16(*result, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v59[-2] = v63;
          v59[-1] = _Q0;
          *v59 = v64;
          v59[1] = _Q1;
          v59 += 4;
          result += 4;
          v60 -= 16;
        }

        while (v60);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v65 = a2 - (a2 & 0x7FFFFFF0);
          v66 = v58;
          do
          {
            v67 = *v66;
            v66 += 2;
            result = (v67 << 16);
            *v40++ = result;
            --v65;
          }

          while (v65);
        }

        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }

    else
    {
      v52 = result + 2 * v51;
      do
      {
        v53 = v52;
        v54 = a2;
        do
        {
          v55 = *v53++;
          *v40++ = v55 << 16;
          --v54;
        }

        while (v54);
        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }
  }

  return result;
}

int16x4_t *sub_100358B34(int16x4_t *result, int a2, uint64_t a3, int *a4, int32x4_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v12 = 4 * (a2 & 0x7FFFFFF0);
      v13 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        v14 = a5 + 2;
        do
        {
          a5 = (a5 + v12);
          v15 = v14;
          v16 = result + 2;
          v17 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v16[-2].i8;
            _Q1 = *v16->i8;
            v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v25 = vshll_n_s16(*v16, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v15[-2] = v20;
            v15[-1] = _Q0;
            *v15 = v25;
            v15[1] = _Q1;
            v15 += 4;
            v16 += 4;
            v17 -= 16;
          }

          while (v17);
          ++v13;
          v14 = (v14 + v12);
        }

        while (v13 != a6);
      }

      else
      {
        v26 = 0;
        do
        {
          v27 = a5 + 2;
          a5 = (a5 + v12);
          v28 = a2 & 0x7FFFFFF0;
          v29 = result + 2;
          do
          {
            _Q0 = *v29[-2].i8;
            _Q1 = *v29->i8;
            v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v33 = vshll_n_s16(*v29, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v27[-2] = v32;
            v27[-1] = _Q0;
            *v27 = v33;
            v27[1] = _Q1;
            v27 += 4;
            v29 += 4;
            v28 -= 16;
          }

          while (v28);
          v34 = a2 - (a2 & 0x7FFFFFF0);
          v35 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v36 = v35->u16[0];
            v35 = (v35 + 2);
            a5->i32[0] = v36 << 16;
            a5 = (a5 + 4);
            --v34;
          }

          while (v34);
          ++v26;
        }

        while (v26 != a6);
      }
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = v9->u16[0];
          v9 = (v9 + 2);
          a5->i32[0] = v11 << 16;
          a5 = (a5 + 4);
          --v10;
        }

        while (v10);
        ++v8;
      }

      while (v8 != a6);
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 < a7)
  {
LABEL_24:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v37 = 0;
        v38 = result + *(a3 + 4 * a6) * a2;
        do
        {
          v39 = *a4;
          if (*a4)
          {
            v39 *= *v38;
          }

          a5->i32[0] = v39;
          v40 = a4[1];
          if (v40)
          {
            v40 *= v38[a2];
          }

          a5->i32[0] = v40 + v39;
          a5 = (a5 + 4);
          ++v38;
          v37 += 2;
        }

        while (2 * a2 != v37);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 < a8 && a2 >= 1)
  {
    v41 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v46 = (result + 2 * v41);
      v47 = v46 + 2;
      v48 = &v46[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v49 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v50 = a2 & 0x7FFFFFF0;
        v51 = v47;
        do
        {
          _Q0 = *v51[-2].i8;
          _Q1 = *v51->i8;
          v54 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v55 = vshll_n_s16(*v51, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v49[-2] = v54;
          v49[-1] = _Q0;
          *v49 = v55;
          v49[1] = _Q1;
          v49 += 4;
          v51 += 4;
          v50 -= 16;
        }

        while (v50);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v56 = a2 - (a2 & 0x7FFFFFF0);
          v57 = v48;
          do
          {
            v58 = *v57;
            v57 += 2;
            a5->i32[0] = v58 << 16;
            a5 = (a5 + 4);
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
      v42 = result + 2 * v41;
      do
      {
        v43 = v42;
        v44 = a2;
        do
        {
          v45 = *v43++;
          a5->i32[0] = v45 << 16;
          a5 = (a5 + 4);
          --v44;
        }

        while (v44);
        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }
  }

  return result;
}

void sub_100358DE0()
{
  nullsub_1();

  operator delete();
}

int32x4_t *sub_100358E18(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v118, 0x420uLL);
  v116 = v118;
  v117 = v4;
  if (v4 >= 0x109)
  {
    operator new[]();
  }

  LODWORD(v5) = *a2;
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

  if (v5 < v6)
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v118, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    LODWORD(v5) = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

  v9 = 0;
  v10 = -2;
  if (v5 < v7)
  {
LABEL_54:
    v59 = (*(a1 + 56) * *(a1 + 48));
    if (v59 < 1)
    {
      goto LABEL_59;
    }

    v60 = v116;
    v61 = *(a1 + 40);
    v62 = v5;
    v63 = (*(a1 + 32) + v61 * v5);
    if (v59 < 4)
    {
      do
      {
        v64 = v60;
        v65 = v63;
        v66 = v59;
        do
        {
          v67 = v64->i32[0];
          v64 = (v64 + 4);
          v65->i16[0] = (v67 + 0x8000) >> 16;
          v65 = (v65 + 2);
          --v66;
        }

        while (v66);
        ++v62;
        v63 = (v63 + v61);
      }

      while (v62 != v7);
LABEL_59:
      LODWORD(v5) = v7;
      if (v7 < v8)
      {
        goto LABEL_12;
      }

LABEL_60:
      v30 = v116;
      v11 = *(a1 + 28);
      if (v10 + 2 <= v11)
      {
        goto LABEL_66;
      }

      goto LABEL_61;
    }

    v82 = v63 + 1;
    while (v59 >= 0x10)
    {
      v84 = v59 & 0x7FFFFFF0;
      v85 = v82;
      v86 = v60 + 2;
      do
      {
        v88 = v86[-2];
        v87 = v86[-1];
        v90 = *v86;
        v89 = v86[1];
        v86 += 4;
        v85[-1] = vraddhn_high_s32(vraddhn_s32(v88, 0), v87, 0);
        *v85 = vraddhn_high_s32(vraddhn_s32(v90, 0), v89, 0);
        v85 += 2;
        v84 -= 16;
      }

      while (v84);
      if ((v59 & 0x7FFFFFF0) == v59)
      {
        goto LABEL_81;
      }

      v83 = v59 & 0x7FFFFFF0;
      v91 = v83;
      if ((v59 & 0xC) != 0)
      {
        goto LABEL_88;
      }

      do
      {
LABEL_91:
        v63->i16[v91] = (v60->i32[v91] + 0x8000) >> 16;
        ++v91;
      }

      while (v59 != v91);
LABEL_81:
      ++v62;
      v82 = (v82 + v61);
      v63 = (v63 + v61);
      if (v62 == v7)
      {
        goto LABEL_59;
      }
    }

    v83 = 0;
LABEL_88:
    v92 = (v60 + 4 * v83);
    v93 = v83 - (v59 & 0x7FFFFFFC);
    v94 = (v63 + 2 * v83);
    do
    {
      v95 = *v92++;
      *v94++ = vraddhn_s32(v95, 0);
      v93 += 4;
    }

    while (v93);
    v91 = v59 & 0x7FFFFFFC;
    if (v91 == v59)
    {
      goto LABEL_81;
    }

    goto LABEL_91;
  }

LABEL_11:
  if (v5 >= v8)
  {
    goto LABEL_60;
  }

LABEL_12:
  v5 = v5;
  v11 = *(a1 + 28);
  *&v12.f64[0] = 0x8000000080000000;
  *&v12.f64[1] = 0x8000000080000000;
  v13 = vnegq_f64(v12);
  v14 = vdupq_n_s64(0xFFFFFFFFFFFF8000);
  v113 = v8;
  v111 = v14;
  v112 = v13;
  do
  {
    v15 = v10;
    v16 = *(a1 + 72);
    v17 = v10 + 2;
    v10 = *(v16 + 4 * v5);
    if (v10 > v17)
    {
      v17 = *(v16 + 4 * v5);
    }

    v18 = v10 + 2;
    if (v11 < v10 + 2)
    {
      v18 = v11;
    }

    if (v17 < v18)
    {
      if (v15 + 2 <= v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = v15 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v19++);
        v10 = *(v16 + 4 * v5);
        v9 = (v9 & 1) == 0;
        v20 = v10 + 2;
        v11 = *(a1 + 28);
        if (v11 < v10 + 2)
        {
          v20 = *(a1 + 28);
        }
      }

      while (v19 < v20);
      v8 = v113;
      v14 = v111;
      v13 = v112;
    }

    v21 = v11 - 2;
    if (v10 <= v11 - 2)
    {
      v22 = v11 - 2;
    }

    else
    {
      v22 = v10;
    }

    v23 = v22 + v9;
    if (v15 > v21)
    {
      v21 = v15;
    }

    v24 = v23 - v21;
    v114 = 0;
    v115 = 0;
    if (v24 >= 0)
    {
      v9 = v24 & 1;
    }

    else
    {
      v9 = -(v24 & 1);
    }

    v25 = *(a1 + 88);
    if (v9 < 1)
    {
      v26 = 0;
      v28 = 0;
      v27 = &v115;
    }

    else
    {
      v26 = *(v25 + 8 * v5 + 4);
      v27 = &v114;
      v28 = 1;
    }

    v115 = v26;
    v29 = v25 + 4 * (2 * v5 - v9);
    *v27 = *(v29 + 4 * v28);
    if (v9 <= 0)
    {
      v114 = *(v29 + 4);
      v30 = v116;
      v31 = *(a1 + 56) * *(a1 + 48);
      if (v31 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v30 = v116;
      v31 = *(a1 + 56) * *(a1 + 48);
      if (v31 < 1)
      {
        goto LABEL_13;
      }
    }

    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = v114;
    v35 = v115;
    if (v31 >= 8)
    {
      v36 = v31 & 0x7FFFFFF8;
      v37 = (v32 + v33 * v5);
      v38 = vdupq_n_s32(v115);
      v39 = vdupq_n_s32(v114);
      v40 = v36;
      v41 = v30;
      do
      {
        v42 = v41[1];
        v43 = vmull_s32(*v38.i8, *v42.i8);
        v44 = *(v41 + 4 * v31);
        v45 = *(v41 + 4 * v31 + 16);
        v46 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v38, *v41), v39, v44), v13), 0x20uLL);
        v47 = vshrq_n_s64(vaddq_s64(vmlal_s32(vmull_s32(*v38.i8, *v41->i8), *v39.i8, *v44.i8), v13), 0x20uLL);
        v48 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v38, v42), v39, v45), v13), 0x20uLL);
        v49 = vshrq_n_s64(vaddq_s64(vmlal_s32(v43, *v39.i8, *v45.i8), v13), 0x20uLL);
        v50 = vbslq_s8(vcgtq_s64(v49, v14), v49, v14);
        v51 = vbslq_s8(vcgtq_s64(v48, v14), v48, v14);
        v52 = vbslq_s8(vcgtq_s64(v47, v14), v47, v14);
        v53 = vbslq_s8(vcgtq_s64(v46, v14), v46, v14);
        v54 = vdupq_n_s64(0x7FFFuLL);
        *v37++ = vuzp1q_s16(vuzp1q_s32(vbslq_s8(vcgtq_s64(v54, v52), v52, v54), vbslq_s8(vcgtq_s64(v54, v53), v53, v54)), vuzp1q_s32(vbslq_s8(vcgtq_s64(v54, v50), v50, v54), vbslq_s8(vcgtq_s64(v54, v51), v51, v54)));
        v41 += 2;
        v40 -= 8;
      }

      while (v40);
      if (v36 == v31)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v36 = 0;
    }

    v55 = v31 - v36;
    v56 = (v32 + v33 * v5 + 2 * v36);
    v57 = &v30->i32[v36];
    do
    {
      v58 = (v57[v31] * v34 + *v57 * v35 + 0x80000000) >> 32;
      if (v58 <= -32768)
      {
        v58 = -32768;
      }

      if (v58 >= 0x7FFF)
      {
        LOWORD(v58) = 0x7FFF;
      }

      *v56++ = v58;
      ++v57;
      --v55;
    }

    while (v55);
LABEL_13:
    ++v5;
  }

  while (v8 != v5);
  LODWORD(v5) = v8;
  if (v10 + 2 <= v11)
  {
LABEL_66:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v11 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v30, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_67;
  }

LABEL_61:
  v68 = v9 + ~v10 + v11;
  if (v68 >= 0)
  {
    v69 = v68 & 1;
  }

  else
  {
    v69 = -(v68 & 1);
  }

  v30 = (v30 + 4 * *(a1 + 48) * v69 * *(a1 + 56));
LABEL_67:
  v70 = a2[1];
  if (v5 < v70)
  {
    v71 = (*(a1 + 56) * *(a1 + 48));
    if (v71 >= 1)
    {
      v73 = *(a1 + 32);
      v72 = *(a1 + 40);
      v74 = v5;
      if (v71 < 4)
      {
        v75 = (v73 + v72 * v5);
        do
        {
          v76 = v30;
          v77 = v75;
          v78 = v71;
          do
          {
            v79 = v76->i32[0];
            v76 = (v76 + 4);
            *v77++ = (v79 + 0x8000) >> 16;
            --v78;
          }

          while (v78);
          ++v74;
          v75 = (v75 + v72);
        }

        while (v74 != v70);
        goto LABEL_74;
      }

      v96 = (v73 + v72 * v5);
      v97 = v96 + 1;
      while (2)
      {
        if (v71 >= 0x10)
        {
          v99 = v71 & 0x7FFFFFF0;
          v100 = v97;
          v101 = v30 + 2;
          do
          {
            v103 = v101[-2];
            v102 = v101[-1];
            v105 = *v101;
            v104 = v101[1];
            v101 += 4;
            v100[-1] = vraddhn_high_s32(vraddhn_s32(v103, 0), v102, 0);
            *v100 = vraddhn_high_s32(vraddhn_s32(v105, 0), v104, 0);
            v100 += 2;
            v99 -= 16;
          }

          while (v99);
          if ((v71 & 0x7FFFFFF0) != v71)
          {
            v98 = v71 & 0x7FFFFFF0;
            i = v98;
            if ((v71 & 0xC) != 0)
            {
              goto LABEL_101;
            }

            goto LABEL_104;
          }
        }

        else
        {
          v98 = 0;
LABEL_101:
          v107 = (v30 + 4 * v98);
          v108 = v98 - (v71 & 0x7FFFFFFC);
          v109 = (v96 + 2 * v98);
          do
          {
            v110 = *v107++;
            *v109++ = vraddhn_s32(v110, 0);
            v108 += 4;
          }

          while (v108);
          for (i = v71 & 0x7FFFFFFC; v71 != i; ++i)
          {
LABEL_104:
            v96->i16[i] = (v30->i32[i] + 0x8000) >> 16;
          }
        }

        ++v74;
        v97 = (v97 + v72);
        v96 = (v96 + v72);
        if (v74 == v70)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_74:
  result = v116;
  if (v116 != v118 && v116 != 0)
  {
    operator delete[]();
  }

  return result;
}