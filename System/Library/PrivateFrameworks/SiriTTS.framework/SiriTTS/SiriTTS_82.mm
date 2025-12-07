uint64_t celt_pitch_xcorr_c(__int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 < 4)
  {
    LODWORD(v5) = 0;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 1;
    do
    {
      v7 = (a2 + 2 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7 + 3;
      v11 = v7[2];
      if (a4 < 4)
      {
        v15 = 0;
        v14 = 0;
        v13 = 0;
        v12 = 0;
        v40 = 0;
        v41 = 0;
        v36 = a1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = a1;
        do
        {
          v18 = *v17;
          v19 = *v10;
          v20 = v15 + v18 * v8;
          v21 = v14 + v18 * v9;
          v22 = v13 + v18 * v11;
          v23 = v12 + v19 * v18;
          v24 = v17[1];
          v25 = v10[1];
          v8 = v10[1];
          v26 = v20 + v24 * v9;
          v27 = v21 + v24 * v11;
          v28 = v22 + v24 * v19;
          v29 = v23 + v25 * v24;
          v30 = v17[2];
          v31 = v10[2];
          v9 = v10[2];
          v32 = v26 + v30 * v11;
          v33 = v27 + v30 * v19;
          v34 = v28 + v30 * v25;
          v35 = v29 + v31 * v30;
          v36 = v17 + 4;
          v37 = v17[3];
          v38 = v10 + 4;
          v39 = v10[3];
          v11 = v39;
          v15 = v32 + v37 * v19;
          v14 = v33 + v37 * v25;
          v13 = v34 + v37 * v31;
          v12 = v35 + v39 * v37;
          v16 += 4;
          v17 = v36;
          v10 = v38;
        }

        while (v16 < a4 - 3);
        v40 = v19;
        v41 = a4 & 0x7FFFFFFC;
        v10 = v38;
      }

      if (v41 < a4)
      {
        v43 = *v36++;
        v42 = v43;
        v44 = *v10++;
        v40 = v44;
        v15 += v42 * v8;
        v14 += v42 * v9;
        v13 += v42 * v11;
        v12 += v44 * v42;
      }

      if ((v41 | 1) < a4)
      {
        v46 = *v36++;
        v45 = v46;
        v47 = *v10++;
        v8 = v47;
        v15 += v45 * v9;
        v14 += v45 * v11;
        v13 += v45 * v40;
        v12 += v47 * v45;
      }

      if ((v41 | 2) < a4)
      {
        v48 = *v36;
        v15 += v48 * v11;
        v14 += v48 * v40;
        v13 += v48 * v8;
        v12 += *v10 * v48;
      }

      v49 = (a3 + 4 * v5);
      *v49 = v15;
      v49[1] = v14;
      v49[2] = v13;
      v49[3] = v12;
      if (v15 <= v14)
      {
        v50 = v14;
      }

      else
      {
        v50 = v15;
      }

      if (v13 <= v12)
      {
        v13 = v12;
      }

      if (v50 <= v13)
      {
        v50 = v13;
      }

      if (v6 <= v50)
      {
        v6 = v50;
      }

      else
      {
        v6 = v6;
      }

      v5 += 4;
    }

    while (v5 < (a5 - 3));
  }

  if (v5 < a5)
  {
    v51 = v5;
    v52 = (a2 + 2 * v5);
    do
    {
      if (a4 < 1)
      {
        v53 = 0;
      }

      else
      {
        v53 = 0;
        v54 = a4;
        v55 = a1;
        v56 = v52;
        do
        {
          v58 = *v55++;
          v57 = v58;
          v59 = *v56++;
          v53 += v59 * v57;
          --v54;
        }

        while (v54);
      }

      *(a3 + 4 * v51) = v53;
      if (v6 <= v53)
      {
        v6 = v53;
      }

      else
      {
        v6 = v6;
      }

      ++v51;
      ++v52;
    }

    while (v51 != a5);
  }

  return v6;
}

uint64_t pitch_search(__int16 *a1, __int16 *a2, int a3, int a4, _DWORD *a5)
{
  v75 = a5;
  v76 = a2;
  v77[1] = *MEMORY[0x1E69E9840];
  v77[0] = 0;
  v7 = a4 + a3;
  v74 = a3;
  v8 = (a3 >> 2);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v73[-v9];
  bzero(&v73[-v9], v11);
  v12 = (v7 >> 2);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v73[-v15];
  v17 = (a4 >> 1);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v73[-v19];
  if (v8 >= 1)
  {
    v21 = v8;
    v22 = v10;
    v23 = a1;
    do
    {
      v24 = *v23;
      v23 += 2;
      *v22++ = v24;
      --v21;
    }

    while (v21);
  }

  bzero(v16, v18);
  if (v12 >= 1)
  {
    v25 = (v7 >> 2);
    v26 = v16;
    v27 = v76;
    do
    {
      v28 = *v27;
      v27 += 2;
      *v26++ = v28;
      --v25;
    }

    while (v25);
  }

  if (v8 < 1)
  {
    v30 = 0;
    v29 = 0;
  }

  else
  {
    LOWORD(v29) = 0;
    LOWORD(v30) = 0;
    v31 = v10;
    v32 = v8;
    do
    {
      v34 = *v31++;
      v33 = v34;
      if (v30 <= v34)
      {
        LOWORD(v30) = v33;
      }

      if (v29 >= v33)
      {
        LOWORD(v29) = v33;
      }

      --v32;
    }

    while (v32);
    v30 = v30;
    v29 = v29;
  }

  if (v30 <= -v29)
  {
    v35 = -v29;
  }

  else
  {
    v35 = v30;
  }

  if (v12 < 1)
  {
    v37 = 0;
    v36 = 0;
  }

  else
  {
    LOWORD(v36) = 0;
    LOWORD(v37) = 0;
    v38 = v16;
    v39 = (v7 >> 2);
    do
    {
      v41 = *v38++;
      v40 = v41;
      if (v37 <= v41)
      {
        LOWORD(v37) = v40;
      }

      if (v36 >= v40)
      {
        LOWORD(v36) = v40;
      }

      --v39;
    }

    while (v39);
    v37 = v37;
    v36 = v36;
  }

  v42 = 0;
  if (v37 <= -v36)
  {
    v43 = -v36;
  }

  else
  {
    v43 = v37;
  }

  if (v35 <= v43)
  {
    v35 = v43;
  }

  if (v35 <= 1)
  {
    v35 = 1;
  }

  v44 = __clz(v35);
  if ((v44 ^ 0x1C) >= 0xC)
  {
    v45 = 20 - v44;
    if (v8 >= 1)
    {
      v46 = v8;
      v47 = v10;
      do
      {
        *v47++ >>= v45;
        --v46;
      }

      while (v46);
    }

    if (v12 >= 1)
    {
      v48 = v16;
      do
      {
        *v48++ >>= v45;
        --v12;
      }

      while (v12);
    }

    v42 = 2 * v45;
  }

  bzero(v20, 4 * v17);
  v49 = celt_pitch_xcorr_c(v10, v16, v20, v8, a4 >> 2);
  find_best_pitch(v20, v16, v8, a4 >> 2, v77, 0, v49);
  if (v17 <= 0)
  {
    LODWORD(v53) = v74 >> 1;
    v54 = 1;
  }

  else
  {
    v50 = 0;
    v51 = 2 * LODWORD(v77[0]);
    v52 = 2 * HIDWORD(v77[0]);
    v53 = (v74 >> 1);
    v54 = 1;
    v55 = v76;
    do
    {
      *&v20[4 * v50] = 0;
      v56 = v50 - v51;
      if (v50 - v51 < 0)
      {
        v56 = v51 - v50;
      }

      if (v56 < 3)
      {
        goto LABEL_51;
      }

      v57 = v50 - v52;
      if (v50 - v52 < 0)
      {
        v57 = v52 - v50;
      }

      if (v57 <= 2)
      {
LABEL_51:
        if (v53 < 1)
        {
          v58 = 0;
        }

        else
        {
          v58 = 0;
          v59 = v53;
          v60 = a1;
          v61 = v55;
          do
          {
            v63 = *v60++;
            v62 = v63;
            v64 = *v61++;
            v58 += (v64 * v62) >> v42;
            --v59;
          }

          while (v59);
        }

        if (v58 < 0)
        {
          v65 = -1;
        }

        else
        {
          v65 = v58;
        }

        *&v20[4 * v50] = v65;
        if (v54 <= v58)
        {
          v54 = v58;
        }
      }

      ++v50;
      ++v55;
    }

    while (v50 != v17);
  }

  result = find_best_pitch(v20, v76, v53, a4 >> 1, v77, v42 | 1u, v54);
  v67 = 0;
  if (SLODWORD(v77[0]) < 1)
  {
    v68 = v75;
  }

  else
  {
    v68 = v75;
    if (SLODWORD(v77[0]) < v17 - 1)
    {
      v69 = &v20[4 * LODWORD(v77[0])];
      v70 = *(v69 - 1);
      v71 = *v69;
      v72 = v69[1];
      if (v72 - v70 <= (45876 * ((v71 - v70) >> 16) + ((22938 * (v71 - v70)) >> 15)))
      {
        v67 = v70 - v72 > (45876 * ((v71 - v72) >> 16) + ((22938 * (v71 - v72)) >> 15));
      }

      else
      {
        v67 = -1;
      }
    }
  }

  *v68 = v67 + 2 * LODWORD(v77[0]);
  return result;
}

uint64_t find_best_pitch(uint64_t result, __int16 *a2, unsigned int a3, unsigned int a4, uint64_t a5, char a6, unsigned int a7)
{
  *a5 = 0x100000000;
  if (a3 < 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = a3;
    v8 = 1;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v8 += (v10 * v10) >> a6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = __clz(a7);
    v16 = a7 >> 15;
    v17 = v15 - 17;
    v18 = 17 - v15;
    v19 = -1;
    v20 = -1;
    v21 = a4;
    v22 = &a2[a3];
    do
    {
      v23 = *(result + 4 * v12);
      if (v23 >= 1)
      {
        v24 = v23 >> v18;
        v25 = v23 << v17;
        if (v16)
        {
          LOWORD(v25) = v24;
        }

        v26 = v25 * v25;
        v27 = (v26 >> 15);
        v28 = (v8 >> 15) & 0xFFFFFFFE;
        if ((((v14 >> 15) & 0xFFFFFFFE) * v27 + ((v27 * v14) >> 15)) > (v28 * v20 + ((v8 * v20) >> 15)))
        {
          v29 = v26 >> 15;
          if ((((v13 >> 15) & 0xFFFFFFFE) * v27 + ((v27 * v13) >> 15)) <= (v28 * v19 + ((v8 * v19) >> 15)))
          {
            *(a5 + 4) = v12;
            v20 = v29;
            v14 = v8;
          }

          else
          {
            *a5 = v12;
            *(a5 + 4) = v11;
            v11 = v12;
            v20 = v19;
            v19 = v29;
            v14 = v13;
            v13 = v8;
          }
        }
      }

      v8 = ((v22[v12] * v22[v12]) >> a6) + v8 - ((a2[v12] * a2[v12]) >> a6);
      if (v8 <= 1)
      {
        v8 = 1;
      }

      ++v12;
    }

    while (v21 != v12);
  }

  return result;
}

uint64_t ec_laplace_decode(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = ec_decode_bin(a1, 15);
  if (v6 >= a2)
  {
    v9 = (0x4000 - a3) * (32736 - a2);
    v10 = (v9 >> 15) + 1;
    if (v9 >= 0x8000)
    {
      v11 = 1;
      v12 = a2;
      while (1)
      {
        a2 = v12 + 2 * v10;
        if (v6 < a2)
        {
          break;
        }

        ++v11;
        v13 = ((2 * v10 - 2) * a3) >> 15;
        v10 = v13 + 1;
        v12 = a2;
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v11 = 1;
LABEL_8:
      v11 += (v6 - a2) >> 1;
      v12 = ((v6 - a2) & 0xFFFFFFFE) + a2;
    }

    if (v6 >= v12 + v10)
    {
      v7 = v11;
    }

    else
    {
      v7 = -v11;
    }

    if (v6 >= v12 + v10)
    {
      v8 = v12 + v10;
    }

    else
    {
      v8 = v12;
    }

    a2 = v10;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a2 + v8 >= 0x8000)
  {
    v14 = 0x8000;
  }

  else
  {
    v14 = a2 + v8;
  }

  ec_dec_update(a1, v8, v14, 0x8000);
  return v7;
}

uint64_t *ec_encode(uint64_t *a1, int a2, int a3, unsigned int a4)
{
  v4 = *(a1 + 8);
  v5 = v4 / a4;
  if (a2)
  {
    *(a1 + 9) += v4 + v5 * (a2 - a4);
    v6 = v5 * (a3 - a2);
  }

  else
  {
    v6 = v4 + v5 * (a3 - a4);
  }

  *(a1 + 8) = v6;
  return ec_enc_normalize(a1);
}

uint64_t *ec_enc_normalize(uint64_t *result)
{
  if (*(result + 8) <= 0x800000u)
  {
    v1 = result;
    v2 = *(result + 9);
    do
    {
      result = ec_enc_carry_out(v1, v2 >> 23);
      v2 = (*(v1 + 36) & 0x7FFFFF) << 8;
      v3 = *(v1 + 32) << 8;
      *(v1 + 32) = v3;
      *(v1 + 36) = v2;
      *(v1 + 24) += 8;
    }

    while (v3 < 0x800001);
  }

  return result;
}

uint64_t *ec_enc_bit_logp(uint64_t *result, int a2, char a3)
{
  v3 = *(result + 8);
  v4 = v3 >> a3;
  v5 = v3 - (v3 >> a3);
  if (a2)
  {
    *(result + 9) += v5;
    v5 = v4;
  }

  *(result + 8) = v5;
  return ec_enc_normalize(result);
}

uint64_t *ec_enc_uint(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v5 = a3 - 1;
  if (a3 - 1 < 0x100)
  {

    return ec_encode(a1, a2, a2 + 1, a3);
  }

  else
  {
    v6 = __clz(v5);
    v7 = 24 - v6;
    ec_encode(a1, a2 >> (24 - v6), (a2 >> (24 - v6)) + 1, (v5 >> (24 - v6)) + 1);

    return ec_enc_bits(a1, a2 & ~(-1 << v7), v7);
  }
}

uint64_t *ec_enc_bits(uint64_t *result, int a2, int a3)
{
  v3 = *(result + 4);
  v4 = *(result + 5);
  v5 = v4 + a3;
  if ((v4 + a3) < 0x21)
  {
    v11 = *(result + 5);
  }

  else
  {
    do
    {
      v7 = *(result + 2);
      v6 = *(result + 3);
      if (v6 + *(result + 7) >= v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
        v9 = *result;
        v10 = v6 + 1;
        *(result + 3) = v10;
        *(v9 + v7 - v10) = v3;
      }

      *(result + 12) |= v8;
      v3 >>= 8;
      v11 = v4 - 8;
      v12 = v4 <= 15;
      v4 -= 8;
    }

    while (!v12);
    v5 = a3 + v11;
  }

  *(result + 4) = (a2 << v11) | v3;
  *(result + 5) = v5;
  *(result + 6) += a3;
  return result;
}

uint64_t *ec_enc_carry_out(uint64_t *result, int a2)
{
  if (a2 == 255)
  {
    ++*(result + 10);
  }

  else
  {
    v2 = *(result + 11);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = *(result + 7);
      if ((*(result + 3) + v3) >= *(result + 2))
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
        v5 = *result;
        *(result + 7) = v3 + 1;
        *(v5 + v3) = v2 + BYTE1(a2);
      }

      *(result + 12) |= v4;
    }

    for (i = *(result + 10); i; *(result + 10) = i)
    {
      v7 = *(result + 7);
      if ((*(result + 3) + v7) >= *(result + 2))
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
        v9 = *result;
        *(result + 7) = v7 + 1;
        *(v9 + v7) = BYTE1(a2) - 1;
        i = *(result + 10);
      }

      *(result + 12) |= v8;
      --i;
    }

    *(result + 11) = a2;
  }

  return result;
}

uint64_t *ec_dec_init(uint64_t *a1, unsigned __int8 *a2, int a3)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 12) = xmmword_1C382E120;
  *(a1 + 28) = 0x8000000000;
  if (a3)
  {
    *(a1 + 7) = 1;
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 9) = (v3 >> 1) ^ 0x7F;
  *(a1 + 11) = v3;
  *(a1 + 12) = 0;
  return ec_dec_normalize(a1);
}

uint64_t *ec_dec_normalize(uint64_t *result)
{
  v1 = *(result + 8);
  if (v1 <= 0x800000)
  {
    v2 = *(result + 2);
    v3 = *(result + 11);
    v4 = *(result + 7);
    v5 = *(result + 9);
    v6 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v6;
      *(result + 8) = v1 << 8;
      if (v4 >= v2)
      {
        v8 = 0;
      }

      else
      {
        v7 = *result;
        *(result + 7) = v4 + 1;
        v8 = *(v7 + v4++);
      }

      v5 = (((v8 | (v3 << 8)) >> 1) | ((v5 & 0x7FFFFF) << 8)) ^ 0xFF;
      *(result + 11) = v8;
      *(result + 9) = v5;
      v6 += 8;
      v3 = v8;
      v9 = v1 > 0x8000;
      v1 <<= 8;
    }

    while (!v9);
  }

  return result;
}

uint64_t ec_decode(_DWORD *a1, unsigned int a2)
{
  v2 = a1[9];
  v3 = a1[8] / a2;
  a1[10] = v3;
  v4 = v2 / v3 + 1;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ec_decode_bin(_DWORD *a1, char a2)
{
  v2 = a1[9];
  v3 = a1[8] >> a2;
  a1[10] = v3;
  v4 = v2 / v3 + 1;
  v5 = 1 << a2 >= v4;
  v6 = (1 << a2) - v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t *ec_dec_update(uint64_t *result, int a2, int a3, int a4)
{
  v4 = *(result + 10);
  v5 = v4 * (a4 - a3);
  *(result + 9) -= v5;
  if (a2)
  {
    v6 = v4 * (a3 - a2);
  }

  else
  {
    v6 = *(result + 8) - v5;
  }

  *(result + 8) = v6;
  return ec_dec_normalize(result);
}

BOOL ec_dec_bit_logp(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = v2 >> a2;
  if (v3 >= v2 >> a2)
  {
    *(a1 + 36) = v3 - (v2 >> a2);
  }

  v5 = v2 - v4;
  v6 = v3 < v4;
  if (v3 >= v4)
  {
    v4 = v5;
  }

  *(a1 + 32) = v4;
  ec_dec_normalize(a1);
  return v6;
}

uint64_t ec_dec_icdf(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 36);
  v5 = v4 >> a3;
  LODWORD(v6) = -1;
  do
  {
    v7 = v4;
    v8 = *a2++;
    v4 = v5 * v8;
    v6 = (v6 + 1);
  }

  while (v3 < v5 * v8);
  *(a1 + 32) = v7 - v4;
  *(a1 + 36) = v3 - v4;
  ec_dec_normalize(a1);
  return v6;
}

uint64_t ec_dec_uint(uint64_t a1, unsigned int a2)
{
  v3 = a2 - 1;
  if (v3 < 0x100)
  {
    v14 = *(a1 + 36);
    v15 = *(a1 + 32) / a2;
    *(a1 + 40) = v15;
    v16 = v14 / v15 + 1;
    v10 = a2 >= v16;
    v17 = a2 - v16;
    if (v10)
    {
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }

    ec_dec_update(a1, v13, v13 + 1, a2);
  }

  else
  {
    v4 = __clz(v3);
    v5 = 24 - v4;
    v6 = (v3 >> (24 - v4)) + 1;
    v7 = *(a1 + 36);
    v8 = *(a1 + 32) / v6;
    *(a1 + 40) = v8;
    v9 = v7 / v8 + 1;
    v10 = v6 >= v9;
    v11 = v6 - v9;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    ec_dec_update(a1, v12, v12 + 1, v6);
    v13 = (v12 << v5) | ec_dec_bits(a1, v5);
    if (v13 > v3)
    {
      *(a1 + 48) = 1;
      return v3;
    }
  }

  return v13;
}

uint64_t ec_dec_bits(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  if (v3 >= a2)
  {
    v8 = *(a1 + 5);
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *(a1 + 3);
    do
    {
      if (v5 >= v4)
      {
        v7 = 0;
      }

      else
      {
        v6 = *a1;
        *(a1 + 3) = ++v5;
        v7 = *(v6 + v4 - v5);
      }

      v2 |= v7 << v3;
      v8 = v3 + 8;
      v9 = v3 < 17;
      v3 += 8;
    }

    while (v9);
  }

  *(a1 + 4) = v2 >> a2;
  *(a1 + 5) = v8 - a2;
  *(a1 + 6) += a2;
  return v2 & ~(-1 << a2);
}

uint64_t ec_tell_frac(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = __clz(v1);
  v3 = 32 - v2;
  v4 = v1 >> (16 - v2);
  for (i = 4; i > 1; --i)
  {
    v6 = v4 * v4;
    v3 = __PAIR64__(v3, v6) >> 31;
    v4 = v6 >> 15 >> (v6 < 0);
  }

  return 8 * *(a1 + 24) - v3;
}

void denormalise_bands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, int a8)
{
  v11 = 0;
  v12 = 0;
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v40 = a5;
  v39 = *(v13 + 2 * a5);
  v15 = v39 * a8;
  v38 = a2 + 2 * v15;
  v16 = a6;
  v17 = *(v13 + 2 * a6);
  v44 = v17 * a8;
  v45 = v15;
  v41 = a3 + 4 * (v15 - 1) + 4;
  v42 = 4 * v15;
  v37 = 4 * ((v14 - v17) * a8 - 1);
  v18 = v14 * a8;
  if (a7 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a7;
  }

  v43 = v19;
  v49 = v18;
  do
  {
    v20 = v11 * v18;
    if (v45 < 1)
    {
      v21 = (a3 + 4 * v20);
    }

    else
    {
      v21 = (v41 + 4 * v12);
      bzero((a3 + 4 * v18 * v11), v42);
    }

    if (a5 < a6)
    {
      v22 = (v38 + 2 * v20);
      LOWORD(v23) = v39;
      v24 = v40;
      do
      {
        v25 = v23;
        v26 = v24 + 1;
        v23 = *(v13 + 2 * (v24 + 1));
        v27 = v25 * a8;
        v28 = v23 * a8;
        v29 = *(a4 + 2 * v11 * *(a1 + 8) + 2 * v24) + (eMeans[v24] << 6);
        v30 = v29 >> 10;
        if (v30 >= -15)
        {
          v31 = 16 - v30;
          v32 = ((((((326528 * (v29 & 0x3FFu)) >> 16) + 14819) * 32 * (v29 & 0x3FF) + 1494482944) >> 16) * 32 * (v29 & 0x3FF) + 1073676288) >> 16;
          if (v30 > 16)
          {
            if (v31 == -1)
            {
              v33 = -1;
            }

            else
            {
              v33 = -2;
            }

            if (v31 >= 0xFFFFFFFE)
            {
              v34 = v32;
            }

            else
            {
              v34 = 0x7FFF;
            }

            do
            {
              v35 = *v22++;
              *v21++ = (v34 * v35) << -v33;
              ++v27;
            }

            while (v27 < v28);
            goto LABEL_22;
          }
        }

        else
        {
          LOBYTE(v31) = 0;
          v32 = 0;
        }

        do
        {
          v36 = *v22++;
          *v21++ = (v32 * v36) >> v31;
          ++v27;
        }

        while (v27 < v28);
LABEL_22:
        v24 = v26;
      }

      while (v26 != v16);
    }

    v18 = v49;
    if (v44 < v49)
    {
      bzero(v21, v37 + 4);
      v18 = v49;
    }

    ++v11;
    v12 += v18;
  }

  while (v11 != v43);
}

__int16 *anti_collapse(__int16 *result, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if (a7 < a8)
  {
    v14 = result;
    v15 = 1 << a4;
    if (1 << a4 <= 1)
    {
      v15 = 1;
    }

    v72 = a6;
    if (a5 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a5;
    }

    v68 = v17;
    v18 = a7;
    v63 = a8;
    v64 = a5;
    v19 = -v15;
    v69 = result;
    do
    {
      v66 = v18 + 1;
      v20 = *(*(v14 + 3) + 2 * (v18 + 1)) - *(*(v14 + 3) + 2 * v18);
      v71 = v20 << a4;
      v21 = (*(a12 + 4 * v18) + 1) / (v20 << a4);
      v22 = (-8388608 * v21) >> 26;
      if (v22 <= 14)
      {
        if (v22 >= -15)
        {
          v24 = ((((((20408 * ((-2048 * v21) & 0x3800u)) >> 16) + 14819) * 2 * ((-2048 * v21) & 0x3800) + 1494482944) >> 16) * 2 * ((-2048 * v21) & 0x3800) + 1073676288) >> 16;
          if (v22 > -3)
          {
            v23 = v24 << (v22 + 2);
          }

          else
          {
            v23 = v24 >> (-2 - v22);
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 2130706432;
      }

      v25 = v23 >> 1;
      if (v25 >= 0x7FFF)
      {
        v26 = 0x7FFF;
      }

      else
      {
        v26 = v25;
      }

      v75 = (__clz(v71) >> 1) ^ 0xF;
      result = celt_rsqrt_norm(v71 << (14 - 2 * v75));
      v74 = result;
      v27 = 0;
      v28 = (v26 >> 1);
      v29 = a3 + v18 * v64;
      v14 = v69;
      v30 = a5;
      v32 = v68;
      v31 = a11;
      v34 = a9;
      v33 = a10;
      v67 = v28;
      do
      {
        v35 = *(v14 + 2);
        v36 = v18 + v35 * v27;
        LOWORD(v37) = *(v33 + 2 * v36);
        v38 = *(v31 + 2 * v36);
        if (v30 == 1)
        {
          v39 = v18 + v35;
          if (v37 <= *(v33 + 2 * v39))
          {
            LOWORD(v37) = *(v33 + 2 * v39);
          }

          v40 = *(v31 + 2 * v39);
          if (v38 <= v40)
          {
            v38 = v40;
          }
        }

        v41 = *(v34 + 2 * v36);
        v37 = v37;
        if (v37 >= v38)
        {
          v37 = v38;
        }

        v42 = v41 - v37;
        if (v42 >= 0x4000)
        {
          LOWORD(v47) = 0;
        }

        else
        {
          v43 = 0;
          v44 = -(v42 & ~(v42 >> 31));
          v45 = (-65536 * (v42 & ~(v42 >> 31))) >> 26;
          if (v45 >= -15)
          {
            v46 = ((((((326528 * (v44 & 0x3FFu)) >> 16) + 14819) * 32 * (v44 & 0x3FF) + 1494482944) >> 16) * 32 * (v44 & 0x3FF) + 1073676288) >> 16;
            if (v45 > -3)
            {
              v43 = v46 << (v45 + 2);
            }

            else
            {
              v43 = v46 >> (-2 - v45);
            }
          }

          v47 = v43 >> 1;
          if (v47 >= 0x3FFF)
          {
            LOWORD(v47) = 0x3FFF;
          }

          LOWORD(v47) = 2 * v47;
        }

        v48 = v47;
        if (v47 >= 23169)
        {
          v48 = 23169;
        }

        v49 = (23170 * v48) >> 14;
        if (a4 == 3)
        {
          LOWORD(v47) = v49;
        }

        if (v28 >= v47)
        {
          v47 = v47;
        }

        else
        {
          v47 = v28;
        }

        if (a4 != 31)
        {
          v50 = 0;
          v51 = 0;
          v52 = ((v47 >> 1) * v74) >> 15 >> v75;
          result = (a2 + 2 * v27 * v72 + 2 * (*(*(v14 + 3) + 2 * v18) << a4));
          while (2)
          {
            v53 = 0;
            while (1)
            {
              v54 = (1 << (v51 + v53)) & *(v29 + v27);
              if (!v54 && v20 >= 1)
              {
                break;
              }

              if (!v54)
              {
                v50 = 1;
              }

              if (!(v19 + v51 + ++v53))
              {
                if (!v50)
                {
                  goto LABEL_62;
                }

                goto LABEL_61;
              }
            }

            v56 = 0;
            do
            {
              a13 = 1664525 * a13 + 1013904223;
              if ((a13 & 0x8000) != 0)
              {
                v57 = v52;
              }

              else
              {
                v57 = -v52;
              }

              result[v53 + v51 + (v56++ << a4)] = v57;
            }

            while (v20 != v56);
            v58 = v51 + v53;
            v51 += v53 + 1;
            v59 = v58 + v19;
            v50 = 1;
            if (v59 != -1)
            {
              continue;
            }

            break;
          }

LABEL_61:
          v60 = v18;
          v61 = v19;
          v62 = v29;
          result = renormalise_vector(result, v71, 0x7FFF);
          v29 = v62;
          v19 = v61;
          v18 = v60;
          v28 = v67;
          v34 = a9;
          v33 = a10;
          v32 = v68;
          v31 = a11;
          v14 = v69;
          v30 = a5;
        }

LABEL_62:
        ++v27;
      }

      while (v27 != v32);
      v18 = v66;
    }

    while (v66 != v63);
  }

  return result;
}

__int16 *haar1(__int16 *result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = (a2 >> 1);
    v5 = a3;
    v6 = 2 * (2 * a3);
    v7 = 4 * a3;
    v8 = &result[a3];
    do
    {
      if (v4 >= 1)
      {
        v9 = v4;
        v10 = v8;
        v11 = result;
        do
        {
          v12 = 46340 * *v11;
          v13 = 46340 * *v10;
          *v11 = HIWORD(v13) + HIWORD(v12);
          *v10 = HIWORD(v12) - HIWORD(v13);
          v11 = (v11 + v6);
          v10 = (v10 + v7);
          --v9;
        }

        while (v9);
      }

      ++v3;
      ++result;
      ++v8;
    }

    while (v3 != v5);
  }

  return result;
}

void quant_all_bands(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8, uint64_t a9, int a10, int a11, int a12, unsigned int a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, int a19, _DWORD *a20)
{
  v210 = a8;
  v195 = a5;
  v209 = a4;
  v23 = a1;
  v206 = a13;
  LODWORD(v207) = a11;
  v220 = *MEMORY[0x1E69E9840];
  v24 = *(a2 + 24);
  v196 = a6;
  v25 = a6 != 0;
  if (a6)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v200 = v26;
  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  if (a10)
  {
    v27 = 1 << a18;
  }

  else
  {
    v27 = 1;
  }

  v181 = v27;
  v28 = *(v24 + 2 * a3);
  v29 = *(a2 + 8);
  v197 = v24;
  v30 = v24 + 2 * v29;
  MEMORY[0x1EEE9AC00](a1);
  v194 = (&v164 - v31);
  bzero(&v164 - v31, v32);
  v33 = *(v30 - 2);
  *&v214 = v210;
  v191 = a17;
  *&v213 = a17;
  v202 = v23;
  LODWORD(v211) = v23;
  v192 = a2;
  *(&v211 + 1) = a2;
  v165 = a20;
  v34 = *a20;
  DWORD2(v214) = *a20;
  *(&v212 + 4) = __PAIR64__(v207, v206);
  if (a3 < v209)
  {
    v208 = 0;
    v35 = v33 << a18;
    v190 = v28;
    v36 = v28 << a18;
    v37 = &v194[v35 - (v28 << a18)];
    v38 = a3;
    v39 = a7 - 1;
    if (v196)
    {
      v40 = v194;
    }

    else
    {
      v40 = 0;
    }

    v188 = v40;
    v41 = v207 == 3 && v181 <= 1;
    v42 = !v41;
    v187 = v42;
    v186 = ~(-1 << v181);
    v178 = a19;
    v185 = a19;
    v207 = v209 - 1;
    v180 = v206;
    v43 = v197;
    v177 = v197 - 2;
    v184 = v209;
    v183 = a15;
    v182 = a14;
    v203 = a12;
    v176 = v197 + 2;
    v210 = (v195 + 2 * v35);
    v201 = a9;
    v199 = v38;
    v45 = 1;
    v175 = &v194[-v36];
    v179 = v36;
    v189 = v37;
    v164 = v37 - 2 * v36;
    v193 = a7;
    while (1)
    {
      LODWORD(v212) = v38;
      v46 = v43;
      v47 = *(v43 + 2 * v38);
      v48 = v47 << a18;
      if (v196)
      {
        v49 = (v196 + 2 * v48);
      }

      else
      {
        v49 = 0;
      }

      v206 = v38 + 1;
      v50 = *(v46 + 2 * (v38 + 1));
      v51 = ec_tell_frac(v191);
      v52 = 0;
      if (v38 == v199)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      v54 = a16 - v53;
      v205 = v51;
      v55 = v183 - v51;
      DWORD2(v213) = v183 - v51 - 1;
      if (v38 < v185)
      {
        v56 = v178 - v38;
        if (v178 - v38 >= 3)
        {
          v56 = 3;
        }

        v57 = *(v201 + 4 * v38) + v54 / v56;
        if (v55 >= v57)
        {
          v55 = v57;
        }

        v58 = v55 & ~(v55 >> 31);
        if (v58 >= 0x3FFF)
        {
          v52 = 0x3FFF;
        }

        else
        {
          v52 = v58;
        }
      }

      v59 = v50 - v47;
      v60 = v208;
      if (v202)
      {
        v61 = v193;
        v62 = v195;
        v43 = v197;
      }

      else
      {
        v43 = v197;
        if ((*(v197 + 2 * v38) - v59) << a18 >= *(v197 + 2 * v199) << a18 && (v45 || v208 == 0))
        {
          v60 = v38;
        }

        v61 = v193;
        v62 = v195;
      }

      v63 = v190;
      v64 = v194;
      v65 = v189;
      v204 = v54;
      v66 = (v62 + 2 * v48);
      v67 = *(v182 + 4 * v38);
      v68 = (v59 << a18);
      HIDWORD(v212) = v67;
      v69 = v210;
      if (v38 < *(v192 + 12))
      {
        v70 = v66;
      }

      else
      {
        v69 = 0;
        v70 = v194;
      }

      if (v38 >= *(v192 + 12))
      {
        v71 = v188;
      }

      else
      {
        v71 = v49;
      }

      if (v38 == v207)
      {
        v72 = 0;
      }

      else
      {
        v72 = v69;
      }

      v210 = v72;
      if (v67 < 0)
      {
        v73 = 1;
      }

      else
      {
        v73 = v187;
      }

      v74 = -1;
      if (v60)
      {
        v75 = v186;
        v76 = v186;
        v77 = v200;
        if (v73)
        {
          v78 = (*(v43 + 2 * v60) - v190 - v59) << a18;
          v74 = v78 & ~(v78 >> 31);
          v79 = v74 + v179;
          v80 = (v177 + 2 * v60);
          v81 = v60;
          do
          {
            v82 = *v80--;
            --v81;
          }

          while (v82 << a18 > v79);
          v83 = v79 + v68;
          v84 = v60 - 2;
          v85 = (v176 + 2 * (v60 - 1));
          do
          {
            v86 = *v85++;
            ++v84;
          }

          while (v86 << a18 < v83);
          v76 = 0;
          v75 = 0;
          do
          {
            v76 |= *(v61 + (v81 << v25));
            v75 |= *(v39 + (v81 << v25) + v200);
            v41 = v81++ < v84;
          }

          while (v41);
        }
      }

      else
      {
        v75 = v186;
        v76 = v186;
        v77 = v200;
      }

      v208 = v60;
      v209 = v68;
      if (v203)
      {
        if (v202 || v38 != v180)
        {
          if (v38 != v180)
          {
            v198 = v52;
            v88 = v52 >> 1;
            if (v74 == -1)
            {
              v89 = 0;
            }

            else
            {
              v89 = &v194[v74];
            }

            v171 = (v189 + 2 * v74);
            LODWORD(v173) = v52 >> 1;
            if (v38 == v207)
            {
              v121 = v181;
              LODWORD(v174) = quant_band(&v211, v70, v68, v88, v181, v89, a18, 0, 0x7FFF, 0, v76);
              v90 = 0;
              if (v74 == -1)
              {
                v91 = 0;
              }

              else
              {
                v91 = v171;
              }
            }

            else
            {
              v121 = v181;
              v122 = quant_band(&v211, v70, v68, v88, v181, v89, a18, &v175[2 * (*(v43 + 2 * v38) << a18)], 0x7FFF, v69, v76);
              LODWORD(v174) = v122;
              if (v74 == -1)
              {
                v91 = 0;
              }

              else
              {
                v91 = v171;
              }

              v90 = (v164 + 2 * (*(v43 + 2 * v38) << a18));
            }

            v123 = v71;
            v124 = v209;
            v109 = quant_band(&v211, v123, v209, v173, v121, v91, a18, v90, 0x7FFF, v210, v75);
            v77 = v200;
            v98 = v204;
            v99 = v198;
            LODWORD(v96) = v124;
            LOBYTE(v97) = v174;
            goto LABEL_136;
          }
        }

        else if ((*(v43 + 2 * v38) - v190) << a18 >= 1)
        {
          v87 = 0;
          do
          {
            v64[v87] = (*(v65 + 2 * v87) + v64[v87]) >> 1;
            ++v87;
          }

          while (v87 < (*(v43 + 2 * v38) - v63) << a18);
        }
      }

      if (v74 == -1)
      {
        v92 = 0;
      }

      else
      {
        v92 = &v64[v74];
      }

      if (!v71)
      {
        if (v38 == v207)
        {
          v94 = 0;
        }

        else
        {
          v94 = &v175[2 * (*(v43 + 2 * v38) << a18)];
        }

        v108 = v52;
        v109 = quant_band(&v211, v70, v68, v52, v181, v92, a18, v94, 0x7FFF, v210, v75 | v76);
        LODWORD(v96) = v209;
        v99 = v108;
        LOBYTE(v97) = v109;
        v203 = 0;
        v98 = v204;
        goto LABEL_136;
      }

      if (v38 == v207)
      {
        v93 = 0;
      }

      else
      {
        v93 = &v175[2 * (*(v43 + 2 * v38) << a18)];
      }

      v95 = v75 | v76;
      v198 = v52;
      v218 = v95;
      v219 = v52;
      if (v68 == 1)
      {
        quant_band_n1(&v211, v70, v71, v93);
        LODWORD(v96) = v209;
        LOBYTE(v97) = 1;
        v98 = v204;
        v99 = v198;
      }

      else
      {
        v173 = v93;
        v174 = v92;
        v203 = v211;
        v170 = v213;
        v215 = 0;
        v216 = 0;
        v217 = 0;
        v100 = v70;
        v101 = v181;
        compute_theta(&v211, &v215, v70, v71, v68, &v219, v181, v181, a18, 1, &v218);
        LODWORD(v171) = HIDWORD(v215);
        v169 = v215;
        v172 = v100;
        if (v209 == 2)
        {
          v102 = v219;
          if ((v217 & 0xFFFFBFFF) != 0)
          {
            v103 = -8;
          }

          else
          {
            v103 = 0;
          }

          DWORD2(v213) += v103 - HIDWORD(v217);
          if (v217 <= 0x2000)
          {
            v104 = v100;
          }

          else
          {
            v104 = v71;
          }

          if (v217 <= 0x2000)
          {
            v105 = v71;
          }

          else
          {
            v105 = v100;
          }

          v168 = v216;
          if ((v217 & 0xFFFFBFFF) != 0)
          {
            v166 = v103;
            v167 = v219;
            v106 = v105;
            if (v203)
            {
              v107 = v170;
              LODWORD(v170) = v105[1] * *v104 < *v105 * v104[1];
              ec_enc_bits(v107, v170, 1);
            }

            else
            {
              LODWORD(v170) = ec_dec_bits(v170, 1u);
            }

            v102 = v167;
            v103 = v166;
          }

          else
          {
            LODWORD(v170) = 0;
            v106 = v105;
          }

          LOBYTE(v97) = quant_band(&v211, v104, 2, v102 + v103, v181, v174, a18, v173, 0x7FFF, v210, v95);
          v139 = 2 * v170;
          *v106 = (2 * v170 - 1) * v104[1];
          v106[1] = *v104 - *v104 * v139;
          if (!v203)
          {
            v140 = v171;
            v141 = v172;
            *v172 = (v171 * *v172) >> 15;
            v141[1] = (v140 * v141[1]) >> 15;
            v142 = v168;
            v143 = v168 * *v71;
            *v71 = v143 >> 15;
            v71[1] = (v142 * v71[1]) >> 15;
            LOWORD(v142) = *v141;
            *v141 -= v143 >> 15;
            *v71 += v142;
            LOWORD(v142) = v141[1];
            v141[1] = v142 - v71[1];
            v71[1] += v142;
            v77 = v200;
            v98 = v204;
            v99 = v198;
            v96 = v209;
            goto LABEL_153;
          }

          v77 = v200;
          v98 = v204;
          v99 = v198;
LABEL_134:
          LODWORD(v96) = v209;
          goto LABEL_135;
        }

        LODWORD(v170) = v217;
        v110 = v218;
        if (v219 >= (v219 - HIDWORD(v216)) / 2)
        {
          v111 = (v219 - HIDWORD(v216)) / 2;
        }

        else
        {
          v111 = v219;
        }

        v112 = v111 & ~(v111 >> 31);
        v113 = DWORD2(v213) - HIDWORD(v217);
        DWORD2(v213) -= HIDWORD(v217);
        v114 = v101;
        if (v112 >= v219 - v112)
        {
          v166 = v218 >> v101;
          v167 = v219 - v112;
          v125 = v101;
          v126 = v216;
          LODWORD(v174) = quant_band(&v211, v172, v209, v112, v114, v174, a18, v173, 0x7FFF, v210, v218);
          v127 = DWORD2(v213) - v113 + v112;
          if (v170)
          {
            v128 = v127 <= 24;
          }

          else
          {
            v128 = 1;
          }

          if (v128)
          {
            v129 = 0;
          }

          else
          {
            v129 = v127 - 24;
          }

          v119 = quant_band(&v211, v71, v209, v129 + v167, v125, 0, a18, 0, v126, 0, v166);
          v120 = &v209;
        }

        else
        {
          v163 = v218 >> v101;
          v115 = v219 - v112;
          v168 = quant_band(&v211, v71, v209, v219 - v112, v114, 0, a18, 0, v216, 0, v163);
          v116 = DWORD2(v213) - v113 + v115;
          if (v170 == 0x4000 || v116 <= 24)
          {
            v118 = 0;
          }

          else
          {
            v118 = v116 - 24;
          }

          v119 = quant_band(&v211, v172, v209, v118 + v112, v181, v174, a18, v173, 0x7FFF, v210, v110);
          v120 = &v202;
        }

        v97 = v119 | *(v120 - 64);
        v43 = v197;
        v77 = v200;
        v99 = v198;
        v98 = v204;
        if (v203)
        {
          goto LABEL_134;
        }

        v96 = v209;
        if (v209 < 1)
        {
          v131 = 0;
          v130 = 0;
          v133 = v172;
        }

        else
        {
          v130 = 0;
          v131 = 0;
          v132 = v71;
          v133 = v172;
          v134 = v172;
          v135 = v209;
          do
          {
            v137 = *v132++;
            v136 = v137;
            v138 = *v134++;
            v131 += v138 * v136;
            v130 += v136 * v136;
            --v135;
          }

          while (v135);
        }

        v144 = v171;
        v145 = v130 + (v171 >> 1) * (v171 >> 1);
        v146 = (v131 >> 16) * 4 * v171 + 2 * ((v131 * v171) >> 15);
        v147 = v145 - v146;
        v148 = v146 + v145;
        if (v146 + v145 < 161061 || v147 < 161061)
        {
          v61 = v193;
          if (v209 >= 1)
          {
            v150 = v71;
            v151 = v209;
            do
            {
              v152 = *v133++;
              *v150++ = v152;
              --v151;
            }

            while (v151);
LABEL_153:
            if (v96 >= 1 && v169)
            {
              v162 = v96;
              do
              {
                *v71 = -*v71;
                ++v71;
                --v162;
              }

              while (v162);
            }
          }
        }

        else
        {
          LODWORD(v174) = v97;
          v153 = 31 - __clz(v147);
          v154 = 31 - __clz(v148);
          v203 = celt_rsqrt_norm(v147 >> ((v153 & 0x1E) - 14));
          v155 = celt_rsqrt_norm(v148 >> ((v154 & 0x1E) - 14));
          v96 = v209;
          if (v209 >= 1)
          {
            v156 = v71;
            v157 = v209;
            v61 = v193;
            v99 = v198;
            v158 = v172;
            v159 = v203;
            do
            {
              v160 = v144 * *v158;
              v161 = *v156;
              *v158++ = (((2 << (v153 >> 1)) >> 1) + ((v160 >> 15) - *v156) * v159) >> ((v153 >> 1) + 1);
              *v156++ = (((2 << (v154 >> 1)) >> 1) + (v161 + (v160 >> 15)) * v155) >> ((v154 >> 1) + 1);
              --v157;
            }

            while (v157);
            v43 = v197;
            v77 = v200;
            LOBYTE(v97) = v174;
            goto LABEL_153;
          }

          v61 = v193;
          v43 = v197;
          v77 = v200;
          v99 = v198;
          LOBYTE(v97) = v174;
        }
      }

LABEL_135:
      v203 = 0;
      v109 = v97;
LABEL_136:
      *(v61 + (v38 << v25)) = v97;
      *(v39 + (v38 << v25) + v77) = v109;
      a16 = v98 + v205 + *(v201 + 4 * v38);
      v45 = v99 > 8 * v96;
      v38 = v206;
      if (v206 == v184)
      {
        v34 = DWORD2(v214);
        break;
      }
    }
  }

  *v165 = v34;
}

uint64_t quant_band(int *a1, __int16 *a2, uint64_t a3, int a4, int a5, __int16 *a6, int a7, _WORD *a8, __int16 a9, __int16 *a10, int a11)
{
  v11 = a2;
  if (a3 == 1)
  {
    quant_band_n1(a1, a2, 0, a8);
    return 1;
  }

  v13 = a6;
  v39 = a5 == 1;
  v16 = *a1;
  v17 = a1[7];
  v44 = v17 & ~(v17 >> 31);
  v45 = v17;
  v18 = a3 / a5;
  if (a6 && a10)
  {
    if (v17 <= 0)
    {
      v21 = (v18 & 1) != 0 || v17 == 0;
      v22 = !v21;
      if (a5 <= 1 && !v22)
      {
        goto LABEL_26;
      }
    }

    if (a3 >= 1)
    {
      v19 = 0;
      do
      {
        a10[v19] = a6[v19];
        ++v19;
      }

      while (a3 != v19);
    }

    v13 = a10;
  }

  if (v17 < 1)
  {
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  v35 = a3 / a5;
  v40 = a5;
  for (i = 0; i != v17; ++i)
  {
    if (v16)
    {
      haar1(v11, a3 >> i, 1 << i);
    }

    if (v13)
    {
      haar1(v13, a3 >> i, 1 << i);
    }

    a11 = quant_band_bit_interleave_table[a11 & 0xF] | (4 * quant_band_bit_interleave_table[a11 >> 4]);
  }

  v37 = 1;
  a5 = v40;
  v18 = v35;
LABEL_27:
  v23 = 0;
  v24 = (a5 >> v44);
  v25 = v18 << v44;
  if (((v18 << v44) & 1) != 0 || (v17 & 0x80000000) == 0)
  {
    v26 = v18 << v44;
  }

  else
  {
    v23 = 0;
    do
    {
      if (v16)
      {
        haar1(v11, v25, v24);
      }

      if (v13)
      {
        haar1(v13, v25, v24);
      }

      a11 |= a11 << v24;
      v24 = (2 * v24);
      v26 = v25 >> 1;
      ++v23;
      if ((v25 & 2) != 0)
      {
        break;
      }

      v25 >>= 1;
    }

    while (v17++ < -1);
  }

  if (v24 < 2)
  {
    v12 = quant_partition(a1, v11, a3, a4, v24, v13, a7, a9, a11);
    if (v16)
    {
      return v12;
    }

LABEL_46:
    if (v23)
    {
      v29 = a8;
      do
      {
        LODWORD(v24) = v24 >> 1;
        v26 *= 2;
        LODWORD(v12) = (v12 >> v24) | v12;
        haar1(v11, v26, v24);
        --v23;
      }

      while (v23);
      if (!v37)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v29 = a8;
      if (!v37)
      {
LABEL_54:
        if (v29)
        {
          v31 = celt_sqrt((a3 << 22));
          if (a3 >= 1)
          {
            v32 = a3;
            do
            {
              v33 = *v11++;
              *v29++ = (v31 * v33) >> 15;
              --v32;
            }

            while (v32);
          }
        }

        return v12 & ~(-1 << (v24 << v44));
      }
    }

    v30 = 0;
    do
    {
      LODWORD(v12) = quant_band_bit_deinterleave_table[v12];
      haar1(v11, a3 >> v30, 1 << v30);
      ++v30;
    }

    while (v45 != v30);
    goto LABEL_54;
  }

  v28 = v26 >> v44;
  v36 = v24 << v44;
  if (v16)
  {
    deinterleave_hadamard(v11, v26 >> v44, v36, v39);
  }

  if (v13)
  {
    deinterleave_hadamard(v13, v28, v36, v39);
  }

  v12 = quant_partition(a1, v11, a3, a4, v24, v13, a7, a9, a11);
  if (!v16)
  {
    interleave_hadamard(v11, v28, v36, v39);
    goto LABEL_46;
  }

  return v12;
}

int *quant_band_n1(int *result, __int16 *a2, __int16 *a3, _WORD *a4)
{
  v7 = result;
  v8 = *result;
  v9 = *(result + 4);
  v10 = result[10];
  v11 = 1;
  v12 = a2;
  do
  {
    if (v10 < 8)
    {
      v14 = 0x4000;
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_12:
      *v12 = v14;
      goto LABEL_13;
    }

    if (v8)
    {
      v13 = *v12 >> 15;
      result = ec_enc_bits(v9, v13, 1);
    }

    else
    {
      result = ec_dec_bits(v9, 1u);
      v13 = result;
    }

    v10 = *(v7 + 40) - 8;
    *(v7 + 40) = v10;
    if (v13)
    {
      v14 = -16384;
    }

    else
    {
      v14 = 0x4000;
    }

    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_13:
    v15 = (a3 != 0) & v11;
    v12 = a3;
    v11 = 0;
  }

  while ((v15 & 1) != 0);
  if (a4)
  {
    *a4 = *a2 >> 4;
  }

  return result;
}

void deinterleave_hadamard(_WORD *a1, unsigned int a2, int a3, int a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - v9;
  bzero(v23 - v9, v11);
  if (a4)
  {
    if (a3 >= 1)
    {
      v12 = 0;
      v13 = a1;
      do
      {
        if (a2 >= 1)
        {
          v14 = &v10[2 * ordery_table[a3 - 2 + v12] * a2];
          v15 = a2;
          v16 = v13;
          do
          {
            *v14 = *v16;
            v14 += 2;
            v16 += a3;
            --v15;
          }

          while (v15);
        }

        ++v12;
        ++v13;
      }

      while (v12 != a3);
    }
  }

  else if (a3 >= 1)
  {
    v17 = 0;
    v18 = a1;
    v19 = v10;
    do
    {
      if (a2 >= 1)
      {
        v20 = a2;
        v21 = v18;
        v22 = v19;
        do
        {
          *v22++ = *v21;
          v21 += a3;
          --v20;
        }

        while (v20);
      }

      ++v17;
      v19 += a2;
      ++v18;
    }

    while (v17 != a3);
  }

  if (v8 >= 1)
  {
    memcpy(a1, v10, (2 * v8));
  }
}

uint64_t quant_partition(int *a1, __int16 *a2, uint64_t a3, int a4, uint64_t a5, __int16 *a6, int a7, int a8, int a9)
{
  v10 = a5;
  v13 = a9;
  v80 = a4;
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = a1[4];
  v17 = a1[6];
  v18 = *(a1 + 4);
  v20 = *(v15 + 128);
  v19 = *(v15 + 136);
  if (a7 != -1)
  {
    v21 = a7;
    v22 = *(v15 + 8) + *(v15 + 8) * a7 + v16;
    v16 = v22;
    if (a3 >= 3)
    {
      v23 = (v19 + *(v20 + 2 * v22));
      if (v23[*v23] + 12 < a4)
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v24 = a3 >> 1;
        if (a5 == 1)
        {
          a9 = a9 & 1 | (2 * a9);
        }

        v76 = a7 - 1;
        v73 = &a2[v24];
        v25 = ((a5 + 1) >> 1);
        compute_theta(a1, &v77, a2, v73, v24, &v80, (a5 + 1) >> 1, a5, a7 - 1, 0, &a9);
        v26 = WORD2(v77);
        v27 = v78;
        v28 = HIDWORD(v78);
        v29 = v79;
        v30 = (HIDWORD(v78) + ((8 * v24) >> (6 - v21))) & ((HIDWORD(v78) + ((8 * v24) >> (6 - v21))) >> 31);
        if (v79 > 0x2000)
        {
          v30 = HIDWORD(v78) - (SHIDWORD(v78) >> (5 - v21));
        }

        if ((v79 & 0x3FFF) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = HIDWORD(v78);
        }

        if (v10 >= 2)
        {
          v28 = v31;
        }

        v32 = v80;
        if (v80 >= (v80 - v28) / 2)
        {
          v33 = (v80 - v28) / 2;
        }

        else
        {
          v33 = v80;
        }

        v34 = v33 & ~(v33 >> 31);
        v70 = v10;
        v35 = v80 - v34;
        v36 = a1[10] - HIDWORD(v79);
        a1[10] = v36;
        if (a6)
        {
          v37 = &a6[v24];
        }

        else
        {
          v37 = 0;
        }

        v38 = a9;
        if (v34 >= v35)
        {
          v67 = v27;
          v69 = v37;
          v72 = quant_partition(a1, a2, v24, v34, v25, a6, v76, ((v26 * a8 + 0x4000) >> 15), a9);
          v55 = a1[10] - v36 + v34;
          if (v29)
          {
            v56 = v55 <= 24;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            v57 = 0;
          }

          else
          {
            v57 = v55 - 24;
          }

          return (quant_partition(a1, v73, v24, v57 + v35, v25, v69, v76, ((v67 * a8 + 0x4000) >> 15), v38 >> v25) << (v70 >> 1)) | v72;
        }

        else
        {
          v68 = v26;
          v74 = quant_partition(a1, v73, v24, v32 - v34, v25, v37, v76, ((v27 * a8 + 0x4000) >> 15), a9 >> v25) << (v70 >> 1);
          v39 = a1[10] - v36 + v35;
          if (v29 == 0x4000 || v39 <= 24)
          {
            v41 = 0;
          }

          else
          {
            v41 = v39 - 24;
          }

          return quant_partition(a1, a2, v24, v41 + v34, v25, a6, v76, ((v68 * a8 + 0x4000) >> 15), v38) | v74;
        }
      }
    }
  }

  v43 = 0;
  v44 = (v19 + *(v20 + 2 * v16));
  v45 = *v44;
  v46 = a4 - 1;
  v47 = 6;
  do
  {
    if (v46 <= v44[(v45 + v43 + 1) >> 1])
    {
      v45 = (v45 + v43 + 1) >> 1;
    }

    else
    {
      v43 = (v45 + v43 + 1) >> 1;
    }

    --v47;
  }

  while (v47);
  if (v43)
  {
    v48 = v44[v43];
  }

  else
  {
    v48 = -1;
  }

  if (v46 - v48 <= v44[v45] - v46)
  {
    v49 = v43;
  }

  else
  {
    v49 = v45;
  }

  if (!v49)
  {
LABEL_51:
    if (!v14)
    {
      v42 = (1 << a5) - 1;
      if ((v42 & v13) != 0)
      {
        if (a6)
        {
          if (a3 >= 1)
          {
            v58 = a1[14];
            v59 = a2;
            v60 = a3;
            do
            {
              v58 = 1664525 * v58 + 1013904223;
              v62 = *a6++;
              v61 = v62;
              if ((v58 & 0x8000) != 0)
              {
                v63 = 4;
              }

              else
              {
                v63 = -4;
              }

              *v59++ = v63 + v61;
              --v60;
            }

            while (v60);
            a1[14] = v58;
          }

          v42 = v42 & v13;
        }

        else if (a3 >= 1)
        {
          v64 = a1[14];
          v65 = a2;
          v66 = a3;
          do
          {
            v64 = 1664525 * v64 + 1013904223;
            *v65++ = v64 >> 20;
            --v66;
          }

          while (v66);
          a1[14] = v64;
        }

        renormalise_vector(a2, a3, a8);
        return v42;
      }

      if (a3 >= 1)
      {
        bzero(a2, (2 * a3));
      }
    }

    return 0;
  }

  v50 = v44[v49] + 1;
  v51 = a1[10] - v50;
  a1[10] = v51;
  if (v51 < 0 && v49 >= 1)
  {
    v52 = v49 - 1;
    do
    {
      v53 = v50 + v51;
      a1[10] = v53;
      if (!v52)
      {
        goto LABEL_51;
      }

      v50 = v44[v52] + 1;
      v51 = v53 - v50;
      a1[10] = v51;
      LODWORD(v49) = v49 - 1;
      --v52;
    }

    while (v51 < 0);
  }

  if (v49 >= 8)
  {
    v49 = (v49 & 7 | 8) << ((v49 >> 3) - 1);
  }

  else
  {
    v49 = v49;
  }

  if (v14)
  {

    return alg_quant(a2, a3, v49, v17, a5, v18);
  }

  else
  {

    return alg_unquant(a2, a3, v49, v17, a5, v18, a8);
  }
}

void interleave_hadamard(char *a1, unsigned int a2, int a3, int a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - v9;
  bzero(v25 - v9, v11);
  if (a4)
  {
    if (a3 >= 1)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (a2 >= 1)
        {
          v14 = &a1[2 * ordery_table[a3 - 2 + v12] * a2];
          v15 = a2;
          v16 = v13;
          do
          {
            v17 = *v14;
            v14 += 2;
            *v16 = v17;
            v16 += a3;
            --v15;
          }

          while (v15);
        }

        ++v12;
        ++v13;
      }

      while (v12 != a3);
    }
  }

  else if (a3 >= 1)
  {
    v18 = 0;
    v19 = v10;
    v20 = a1;
    do
    {
      if (a2 >= 1)
      {
        v21 = a2;
        v22 = v19;
        v23 = v20;
        do
        {
          v24 = *v23;
          v23 += 2;
          *v22 = v24;
          v22 += a3;
          --v21;
        }

        while (v21);
      }

      ++v18;
      v20 += 2 * a2;
      ++v19;
    }

    while (v18 != a3);
  }

  if (v8 >= 1)
  {
    memcpy(a1, v10, (2 * v8));
  }
}

uint64_t compute_theta(int *a1, uint64_t a2, __int16 *a3, __int16 *a4, uint64_t a5, int *a6, char a7, int a8, int a9, int a10, _DWORD *a11)
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v17 = a1[4];
  v84 = *(a1 + 4);
  v78 = *(a1 + 1);
  v18 = *(*(v78 + 56) + 2 * v17) + 8 * a9;
  v19 = a10 != 0;
  v20 = a5 == 2;
  v21 = !v20 || !v19;
  if (v20 && v19)
  {
    v22 = -16;
  }

  else
  {
    v22 = -4;
  }

  v23 = v22 + (v18 >> 1);
  v24 = *a6;
  if (v21)
  {
    v25 = -1;
  }

  else
  {
    v25 = -2;
  }

  v26 = v24 - v18 - 32;
  v27 = (v24 + v23 * (v25 + 2 * a5)) / (v25 + 2 * a5);
  if (v26 >= v27)
  {
    v26 = v27;
  }

  if (v26 >= 4)
  {
    if (v26 >= 0x40)
    {
      v26 = 64;
    }

    v28 = ((compute_qn_exp2_table8[v26 & 7] >> (14 - (v26 >> 3))) + 1) & 0xFFFFFFFE;
  }

  else
  {
    v28 = 1;
  }

  v77 = *(a1 + 6);
  if (v17 < a1[5] || a10 == 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = 1;
  }

  v83 = *a1;
  if (*a1)
  {
    v31 = stereo_itheta(a3, a4, a10, a5);
  }

  else
  {
    v31 = 0;
  }

  v81 = ec_tell_frac(v84);
  if (v30 != 1)
  {
    v35 = v31 * v30 + 0x2000;
    v36 = v35 >> 14;
    if (v12 > 2 && a10)
    {
      v75 = v12;
      v76 = a7;
      v80 = a2;
      v37 = v30 / 2;
      v38 = v30 / 2 + 1;
      v39 = 3 * v38;
      if (v83)
      {
        if (v36 <= v37)
        {
          v40 = 3 * v36;
        }

        else
        {
          v40 = v39 + ~v37 + v36;
        }

        if (v36 <= v37)
        {
          v41 = 3 * v36 + 3;
        }

        else
        {
          v41 = v39 - v37 + v36;
        }

        ec_encode(v84, v40, v41, 3 * v38 + v30 / 2);
        a2 = v80;
        v12 = v75;
        a7 = v76;
LABEL_50:
        v31 = (v35 & 0xFFFFC000) / v30;
        if (a10)
        {
          if (!v31)
          {
            intensity_stereo(v78, v14, v13, v77, v17, v12);
            v54 = a6;
            v55 = a11;
            v56 = v81;
LABEL_62:
            result = ec_tell_frac(v84);
            v58 = result - v56;
            *v54 -= result - v56;
            goto LABEL_84;
          }

          if (v12 >= 1)
          {
            v49 = v12;
            do
            {
              v50 = 46340 * *v14;
              v51 = (46340 * *v13) >> 16;
              *v14++ = ((46340 * *v13) >> 16) + HIWORD(v50);
              *v13++ = v51 - HIWORD(v50);
              --v49;
            }

            while (v49);
          }
        }

        goto LABEL_55;
      }

      v59 = ec_decode(v84, v39 + v30 / 2);
      if (v59 < v39)
      {
        v36 = v59 / 3;
      }

      else
      {
        v36 = v59 - 2 * v38;
      }

      if (v36 <= v37)
      {
        v60 = 3 * v36;
      }

      else
      {
        v60 = v39 + ~v37 + v36;
      }

      if (v36 <= v37)
      {
        v61 = 3 * v36 + 3;
      }

      else
      {
        v61 = v39 - v37 + v36;
      }

      ec_dec_update(v84, v60, v61, v39 + v30 / 2);
      a2 = v80;
      LOWORD(v12) = v75;
      a7 = v76;
    }

    else if (a8 >= 2 || a10)
    {
      if (v83)
      {
        ec_enc_uint(v84, v35 >> 14, v30 + 1);
        goto LABEL_50;
      }

      v36 = ec_dec_uint(v84, v30 + 1);
    }

    else
    {
      v42 = v12;
      v43 = a7;
      v44 = a2;
      v45 = v30 >> 1;
      v12 = (v30 >> 1) + 1;
      v46 = v12 * v12;
      if (v83)
      {
        v47 = v30 - v36 + 1;
        if (v36 > v45)
        {
          v48 = v46 - ((v47 * (v30 - v36 + 2)) >> 1);
        }

        else
        {
          v47 = v36 + 1;
          v48 = ((v36 + 1) * v36) >> 1;
        }

        ec_encode(v84, v48, v48 + v47, v12 * v12);
        a2 = v44;
        a7 = v43;
        LOWORD(v12) = v42;
      }

      else
      {
        v62 = ec_decode(v84, v12 * v12);
        if (v62 >= (v12 * v45) >> 1)
        {
          v36 = (2 * (v30 + 1) - isqrt32((8 * (v46 + ~v62)) | 1u)) >> 1;
          v63 = v30 + 1 - v36;
          v64 = v46 - ((v63 * (v30 - v36 + 2)) >> 1);
        }

        else
        {
          v36 = (isqrt32((8 * v62) | 1u) - 1) >> 1;
          v63 = v36 + 1;
          v64 = ((v36 + 1) * v36) >> 1;
        }

        a7 = v43;
        LOWORD(v12) = v42;
        ec_dec_update(v84, v64, v64 + v63, v46);
        a2 = v44;
      }
    }

    v52 = a6;
    v53 = v81;
    v31 = (v36 << 14) / v30;
    goto LABEL_81;
  }

  if (a10)
  {
    if (v83)
    {
      v32 = v31 <= 0x2000;
      v31 = v31 > 0x2000;
      if (!v32 && v12 >= 1)
      {
        v33 = v12;
        v34 = v13;
        do
        {
          *v34 = -*v34;
          ++v34;
          --v33;
        }

        while (v33);
      }

      intensity_stereo(v78, v14, v13, v77, v17, v12);
    }

    else
    {
      v31 = 0;
    }

    v54 = a6;
    v55 = a11;
    v56 = v81;
    if (*a6 < 17 || a1[10] < 17)
    {
      v31 = 0;
    }

    else if (v83)
    {
      ec_enc_bit_logp(v84, v31, 2);
    }

    else
    {
      v31 = ec_dec_bit_logp(v84, 2);
    }

    goto LABEL_62;
  }

LABEL_55:
  v52 = a6;
  v53 = v81;
LABEL_81:
  result = ec_tell_frac(v84);
  v58 = result - v53;
  *v52 -= result - v53;
  if (v31 == 0x4000)
  {
    v65 = 0;
    *a11 &= ~(-1 << a7) << a7;
    v66 = 0x7FFF00000000;
    v67 = 0x4000;
    goto LABEL_87;
  }

  if (v31)
  {
    v65 = 0;
    v68.i32[0] = v31 << 16;
    v68.i32[1] = 0x40000000 - (v31 << 16);
    v69 = vshr_n_s32(vmla_s32(0x800000008000, vshl_s32(v68, 0xFFFFFFF0FFFFFFF3), vshl_s32(v68, 0xFFFFFFF3FFFFFFF0)), 0x10uLL);
    v70 = vmul_s32(v69, (*&vsra_n_u32(vdup_n_s32(0x2055u), vmla_s32(0x400000004000, v69, vdup_n_s32(0x7FFFFD8Eu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL));
    v66 = veor_s8(vshr_n_s32(vshl_n_s32(vsub_s32(vshr_n_u32(vmla_s32(0x400000004000, vshr_n_s32(vadd_s32(vadd_s32(v70, v70), vdup_n_s32(0xE21D8000)), 0x10uLL), v69), 0xFuLL), v69), 0x10uLL), 0x10uLL), 0x7F0000007FLL);
    v71 = vclz_s32(v66);
    v72 = vsub_s32(v71, vdup_lane_s32(v71, 1)).u16[0];
    v73 = vshr_n_s32(vshl_n_s32(vshl_u32(v66, vadd_s32(v71, 0x1000000010)), 0x10uLL), 0x10uLL);
    v74 = vshr_n_u32(vmla_s32(0x400000004000, (*&vsra_n_u32(vdup_n_s32(0x1EFCu), vmla_s32(0x400000004000, v73, vdup_n_s32(0x7FFFF5DBu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL), v73), 0xFuLL);
    v67 = ((v74.i16[2] - v74.i16[0] + (v72 << 11)) * ((v12 << 7) - 128) + 0x4000) >> 15;
    goto LABEL_87;
  }

  v55 = a11;
LABEL_84:
  v65 = v31;
  *v55 &= ~(-1 << a7);
  v66 = 0x7FFFLL;
  v67 = -16384;
  v31 = 0;
LABEL_87:
  *a2 = v65;
  *(a2 + 4) = v66;
  *(a2 + 12) = v67;
  *(a2 + 16) = v31;
  *(a2 + 20) = v58;
  return result;
}

uint64_t intensity_stereo(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, int a5, unsigned int a6)
{
  v9 = *(a4 + 4 * a5);
  v10 = *(a4 + 4 * (*(a1 + 8) + a5));
  if (v9 <= v10)
  {
    v11 = *(a4 + 4 * (*(a1 + 8) + a5));
  }

  else
  {
    v11 = *(a4 + 4 * a5);
  }

  v12 = 31 - __clz(v11);
  if (v11 >= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9 << (13 - v13);
  v15 = v10 << (13 - v13);
  v16 = v9 >> (v13 - 13);
  v17 = v10 >> (v13 - 13);
  if (v13 >= 0xE)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  if (v13 >= 0xE)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  result = celt_sqrt((v19 * v19 + v18 * v18 + 1));
  if (a6 >= 1)
  {
    v21 = (result + 1);
    v22 = ((v18 << 16 >> 2) / v21);
    v23 = ((v19 << 16 >> 2) / v21);
    v24 = a6;
    do
    {
      v25 = *a3++;
      *a2 = ((v23 * v25) >> 14) + ((v22 * *a2) >> 14);
      ++a2;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t resampling_factor(int a1)
{
  if (a1 <= 15999)
  {
    if (a1 == 8000)
    {
      return 6;
    }

    if (a1 == 12000)
    {
      return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 16000:
        return 3;
      case 48000:
        return 1;
      case 24000:
        return 2;
    }
  }

  return 0;
}

char *comb_filter(char *result, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 *a10, unsigned int a11)
{
  if (a7 | a6)
  {
    v11 = (&comb_filter_gains + 6 * a9);
    v12 = (*v11 * a7) >> 15;
    v13 = (v11[1] * a7) >> 15;
    v14 = (v11[2] * a7) >> 15;
    v15 = -a4;
    v16 = a11;
    v17 = 1 - a4;
    v18 = ~a4;
    v19 = 2 * v12;
    v20 = -2 - a4;
    v21 = 2 * v13;
    v22 = 2 * v14;
    if (a11 < 1)
    {
      v49 = 0;
      if (a7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v59 = v14;
      v60 = a5;
      v24 = a2 + 8;
      v25 = (&comb_filter_gains + 6 * a8);
      v26 = a6 * v25[2];
      v27 = *&a2[4 * v20];
      v28 = *&a2[4 * v18];
      v29 = *&a2[4 * v15];
      v30 = *&a2[4 * v17];
      v31 = a6 * v25[1];
      v32 = ((2 * a6 * *v25) >> 15) & 0xFFFFFFFE;
      v33 = ((2 * v31) >> 15) & 0xFFFFFFFE;
      v34 = ((2 * v26) >> 15) & 0xFFFFFFFE;
      v35 = &a2[-4 * a3];
      v36 = result;
      v37 = v35;
      do
      {
        v38 = *&v24[-4 * a4];
        v39 = *a10++;
        v40 = ((v39 * v39) >> 15);
        v41 = ((2 * v39 * v39) & 0xFFFF0000 ^ 0x7FFF0000) >> 16;
        v42 = (2 * v12 * v40) >> 16;
        v43 = (v32 * v41) >> 16;
        v44 = (v21 * v40) >> 16;
        v45 = (v22 * v40) >> 16;
        v46 = v38 + v27;
        v47 = *(v37 + 1);
        v37 += 4;
        v48 = (v33 * v41) >> 16;
        *v36 = *(v24 - 2) + ((v45 * v46) >> 15) + ((v44 * (v28 + v30)) >> 15) + ((v42 * v29) >> 15) + ((((v34 * v41) >> 16) * (*(v35 - 4) + *(v35 + 4))) >> 15) + ((v48 * (*(v35 - 2) + v47)) >> 15) + ((v43 * *v35) >> 15) + 2 * (v42 * (v29 >> 16) + v44 * ((v28 + v30) >> 16) + v45 * (v46 >> 16) + v43 * (*v35 >> 16) + v48 * ((*(v35 - 1) + v47) >> 16) + ((v34 * v41) >> 16) * ((*(v35 - 2) + *(v35 + 2)) >> 16));
        v36 += 4;
        v24 += 4;
        v35 = v37;
        v27 = v28;
        v28 = v29;
        v29 = v30;
        v30 = v38;
        --v16;
      }

      while (v16);
      LODWORD(v16) = a11;
      v49 = a11;
      v19 = 2 * v12;
      a5 = v60;
      LOWORD(v14) = v59;
      v18 = ~a4;
      v15 = -a4;
      v20 = -2 - a4;
      v17 = 1 - a4;
      if (a7)
      {
LABEL_6:
        v50 = a5 - v49;
        if (v50 >= 1)
        {
          v51 = &a2[4 * v49];
          v52 = *&v51[4 * v17];
          v53 = *&v51[4 * v15];
          v54 = *&v51[4 * v18];
          v55 = *&v51[4 * v20];
          result += 4 * v49;
          do
          {
            v56 = *&v51[8 - 4 * a4];
            v57 = *v51;
            v51 += 4;
            *result = (v53 >> 16) * v19 + ((v53 * v12) >> 15) + v57 + ((v52 + v54) >> 16) * v21 + ((v56 + v55) >> 16) * v22 + (((v52 + v54) * v13) >> 15) + (((v56 + v55) * v14) >> 15);
            result += 4;
            v55 = v54;
            v54 = v53;
            v53 = v52;
            v52 = v56;
            --v50;
          }

          while (v50);
        }

        return result;
      }
    }

    if (a2 == result)
    {
      return result;
    }

    result += 4 * v16;
    a2 += 4 * v16;
    v58 = 4 * (a5 - v16);
  }

  else
  {
    if (a2 == result)
    {
      return result;
    }

    v58 = 4 * a5;
  }

  return memmove(result, a2, v58);
}

uint64_t init_caps(uint64_t result, uint64_t a2, int a3, int a4)
{
  LODWORD(v4) = *(result + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 24);
    v7 = *(result + 144);
    v10 = *v6;
    v8 = v6 + 1;
    v9 = v10;
    do
    {
      v11 = v8[v5];
      *(a2 + 4 * v5) = (((v11 - v9) << a3) * a4 * (*(v7 + v4 * (a4 + 2 * a3 - 1)) + 64)) >> 2;
      v9 = v11;
      v4 = *(result + 8);
      ++v7;
      ++v5;
    }

    while (v5 < v4);
  }

  return result;
}

const char *opus_strerror(int a1)
{
  if ((a1 - 1) >= 0xFFFFFFF8)
  {
    return opus_strerror_error_strings[-a1];
  }

  else
  {
    return "unknown error";
  }
}

void silk_decode_parameters(uint64_t a1, __int16 *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  silk_gains_dequant((a2 + 8), (a1 + 2760), (a1 + 2312), a3 == 2, *(a1 + 2324));
  silk_NLSF_decode(__src, (a1 + 2768), *(a1 + 2752));
  silk_NLSF2A(a2 + 32, __src, *(a1 + 2340));
  if (*(a1 + 2376) == 1)
  {
    *(a1 + 2791) = 4;
LABEL_8:
    memcpy(a2 + 16, a2 + 32, 2 * *(a1 + 2340));
    goto LABEL_9;
  }

  v5 = *(a1 + 2791);
  if (v5 > 3)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 2340);
  if (v6 >= 1)
  {
    v7 = (a1 + 2344);
    v8 = v22;
    v9 = __src;
    v10 = *(a1 + 2340);
    do
    {
      v12 = *v7++;
      v11 = v12;
      v13 = *v9++;
      *v8++ = v11 + (((v13 - v11) * v5) >> 2);
      --v10;
    }

    while (v10);
  }

  silk_NLSF2A(a2 + 16, v22, v6);
LABEL_9:
  v14 = *(a1 + 2340);
  memcpy((a1 + 2344), __src, 2 * v14);
  if (*(a1 + 4184))
  {
    silk_bwexpander(a2 + 16, v14, 63570);
    silk_bwexpander(a2 + 32, *(a1 + 2340), 63570);
  }

  if (*(a1 + 2789) == 2)
  {
    silk_decode_pitch(*(a1 + 2786), *(a1 + 2788), a2, *(a1 + 2316), *(a1 + 2324));
    v15 = *(a1 + 2324);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = *(&silk_LTP_vq_ptrs_Q7 + *(a1 + 2792));
      v18 = a2 + 48;
      do
      {
        v19 = 0;
        v20 = v17 + 5 * *(a1 + 2764 + v16);
        do
        {
          *(v18 + v19) = *(v20 + v19) << 7;
          ++v19;
        }

        while (v19 != 5);
        ++v16;
        v18 = (v18 + 10);
      }

      while (v16 != v15);
    }

    v21 = silk_LTPScales_table_Q14[*(a1 + 2793)];
  }

  else
  {
    bzero(a2, 4 * *(a1 + 2324));
    bzero(a2 + 48, 10 * *(a1 + 2324));
    v21 = 0;
    *(a1 + 2792) = 0;
  }

  *(a2 + 34) = v21;
}

uint64_t silk_gains_dequant(uint64_t result, char *a2, _BYTE *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = a5;
    do
    {
      if (v9 | a4)
      {
        v11 = a2[v9] - 4;
        if (v11 > *a3 + 8)
        {
          LOBYTE(v11) = 2 * v11 - 8;
        }

        else
        {
          LOBYTE(v11) = *a3 + v11;
        }
      }

      else
      {
        v11 = *a2;
        if (v11 <= *a3 - 16)
        {
          LOBYTE(v11) = *a3 - 16;
        }
      }

      v12 = v11 & ~(v11 >> 31);
      if (v12 >= 63)
      {
        v12 = 63;
      }

      *a3 = v12;
      result = silk_log2lin(29 * v12 + ((7281 * v12) >> 16) + 2090);
      *(v8 + 4 * v9++) = result;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t silk_NLSF_decode(__int16 *a1, char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a3 + 2) < 1)
  {
    v8 = *a2;
  }

  else
  {
    v6 = 0;
    v7 = *(a3 + 8) + *(a3 + 2) * *a2;
    do
    {
      a1[v6] = *(v7 + v6) << 7;
      ++v6;
    }

    while (v6 < *(a3 + 2));
    v8 = *a2;
  }

  silk_NLSF_unpack(v28, v29, a3, v8);
  v9 = *(a3 + 2);
  if (v9 >= 1)
  {
    LOWORD(v10) = 0;
    v11 = *(a3 + 4);
    v12 = *(a3 + 2);
    do
    {
      v13 = a2[v12];
      if (v13 <= 0)
      {
        v14 = ((v13 << 10) | 0x66) & (v13 >> 31);
      }

      else
      {
        v14 = (v13 << 10) - 102;
      }

      v10 = (v14 >> 16) * v11 + ((v10 * v28[v12 + 31]) >> 8) + (((v14 & 0xFFFE) * v11) >> 16);
      v27[v12 + 15] = v10;
    }

    while (v12-- > 1);
  }

  silk_NLSF_VQ_weights_laroia(v27, a1, v9);
  v16 = *(a3 + 2);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v27[v17];
      if (v18 < 1)
      {
        v23 = 0;
      }

      else
      {
        v19 = v18 << 16;
        v20 = __clz(v19);
        v21 = (v19 >> (24 - v20)) & 0x7F;
        if (v20)
        {
          v22 = 0x8000;
        }

        else
        {
          v22 = 46214;
        }

        v23 = (v22 >> (v20 >> 1)) + ((213 * (v22 >> (v20 >> 1)) * v21) >> 16);
      }

      v24 = v27[v17 + 16] << 14;
      v25 = (v24 / v23 + a1[v17]) & ~((v24 / v23 + a1[v17]) >> 31);
      if (v25 >= 0x7FFF)
      {
        LOWORD(v25) = 0x7FFF;
      }

      a1[v17++] = v25;
    }

    while (v17 < *(a3 + 2));
    LOWORD(v16) = *(a3 + 2);
  }

  return silk_NLSF_stabilize(a1, *(a3 + 56), v16);
}

uint64_t silk_resampler_init(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (!a4)
  {
    if (a2 != 8000 && a2 != 16000 && a2 != 12000)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = 0xFFFFFFFFLL;
    if (a3 <= 15999)
    {
      if (a3 != 8000)
      {
        v6 = 12000;
LABEL_22:
        if (a3 != v6)
        {
          return v4;
        }
      }
    }

    else if (a3 != 16000 && a3 != 48000)
    {
      v6 = 24000;
      goto LABEL_22;
    }

    v7 = &delay_matrix_dec + 5 * (a2 >> 12) + (((a3 >> 12) - (a3 > 0x3E80)) >> (a3 > 0x5DC0)) - 6;
    goto LABEL_24;
  }

  v4 = 0xFFFFFFFFLL;
  if (a2 <= 15999)
  {
    if (a2 != 8000)
    {
      v5 = 12000;
LABEL_15:
      if (a2 != v5)
      {
        return v4;
      }
    }
  }

  else if (a2 != 16000 && a2 != 48000)
  {
    v5 = 24000;
    goto LABEL_15;
  }

  if (a3 != 8000 && a3 != 16000 && a3 != 12000)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = &delay_matrix_enc + 3 * (((a2 >> 12) - (a2 > 0x3E80)) >> (a2 > 0x5DC0)) + (a3 >> 12) - 4;
LABEL_24:
  *(a1 + 292) = *v7;
  *(a1 + 284) = a2 / 0x3E8u;
  *(a1 + 288) = a3 / 0x3E8u;
  *(a1 + 268) = 10 * (a2 / 0x3E8u);
  if (a3 > a2)
  {
    if (a3 == 2 * a2)
    {
      v8 = 0;
      *(a1 + 264) = 1;
    }

    else
    {
      *(a1 + 264) = 2;
      v8 = 1;
    }

    goto LABEL_43;
  }

  if (a3 >= a2)
  {
    v8 = 0;
    *(a1 + 264) = 0;
    goto LABEL_43;
  }

  *(a1 + 264) = 3;
  if (4 * a3 != 3 * a2)
  {
    if (3 * a3 == 2 * a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x200000012;
      v9 = &silk_Resampler_2_3_COEFS;
      goto LABEL_42;
    }

    if (a2 == 2 * a3)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000018;
      v9 = &silk_Resampler_1_2_COEFS;
      goto LABEL_42;
    }

    if (3 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_3_COEFS;
      goto LABEL_42;
    }

    if (4 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_4_COEFS;
      goto LABEL_42;
    }

    if (6 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_6_COEFS;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  *(a1 + 276) = 0x300000012;
  v9 = &silk_Resampler_3_4_COEFS;
LABEL_42:
  *(a1 + 296) = v9;
LABEL_43:
  v10 = 4 * ((a2 << (v8 | 0xE)) / a3);
  v11 = a2 << v8;
  do
  {
    v12 = v10;
    v13 = v10 * (((a3 >> 15) + 1) >> 1) + HIWORD(v10) * a3 + ((v10 * a3) >> 16);
    ++v10;
  }

  while (v13 < v11);
  v4 = 0;
  *(a1 + 272) = v12;
  return v4;
}

uint64_t silk_resampler(unsigned int *a1, char *a2, char *__src, int a4)
{
  v8 = a1[73];
  v9 = (a1 + 42);
  v10 = (a1[71] - v8);
  memcpy(a1 + 2 * v8 + 168, __src, 2 * v10);
  v11 = a1[66];
  v12 = a1[71];
  switch(v11)
  {
    case 3u:
      silk_resampler_private_down_FIR(a1, a2, v9, v12);
      silk_resampler_private_down_FIR(a1, &a2[2 * a1[72]], &__src[2 * v10], a4 - a1[71]);
      break;
    case 2u:
      silk_resampler_private_IIR_FIR(a1, a2, v9, v12);
      silk_resampler_private_IIR_FIR(a1, &a2[2 * a1[72]], &__src[2 * v10], a4 - a1[71]);
      break;
    case 1u:
      silk_resampler_private_up2_HQ_wrapper(a1, a2, v9, v12);
      silk_resampler_private_up2_HQ_wrapper(a1, &a2[2 * a1[72]], &__src[2 * v10], a4 - a1[71]);
      break;
    default:
      memcpy(a2, v9, 2 * v12);
      memcpy(&a2[2 * a1[72]], &__src[2 * v10], 2 * (a4 - a1[71]));
      break;
  }

  memcpy(v9, &__src[2 * (a4 - a1[73])], 2 * a1[73]);
  return 0;
}

void silk_LPC_analysis_filter(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v12 = *MEMORY[0x1E69E9840];
  if (a5 < 1)
  {
    celt_fir((a2 + 2 * a5), v10, a1 + 2 * a5, a4 - a5, a5, v11);
  }

  else
  {
    v7 = 0;
    do
    {
      *&v10[v7] = -*(a3 + v7);
      v7 += 2;
    }

    while (2 * a5 != v7);
    v8 = 2 * a5;
    v9 = v11;
    do
    {
      *v9++ = *(a2 - 2 + v8);
      v8 -= 2;
    }

    while (v8);
    celt_fir((a2 + 2 * a5), v10, a1 + 2 * a5, a4 - a5, a5, v11);
    bzero(a1, (2 * v5));
  }
}

double silk_PLC_Reset(uint64_t a1)
{
  *(a1 + 4192) = *(a1 + 2328) << 7;
  *&result = 0x1000000010000;
  *(a1 + 4264) = 0x1000000010000;
  *(a1 + 4276) = 0x1400000002;
  return result;
}

void silk_PLC(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 2316);
  if (v6 != *(a1 + 4272))
  {
    *(a1 + 4192) = *(a1 + 2328) << 7;
    *(a1 + 4264) = 0x1000000010000;
    *(a1 + 4276) = 0x1400000002;
    *(a1 + 4272) = v6;
  }

  if (a4)
  {
    silk_PLC_conceal(a1, a2, a3);
    ++*(a1 + 4184);
  }

  else
  {
    v7 = *(a1 + 2789);
    *(a1 + 4188) = v7;
    if (v7 == 2)
    {
      v8 = 0;
      v9 = *(a1 + 2324);
      if (v9)
      {
        v10 = v9 - 1;
        v11 = a2->i32[v10];
        if (v11 >= 1)
        {
          v12 = 0;
          v8 = 0;
          v13 = *(a1 + 2332);
          v14 = a2 + 6;
          v15 = 5 * v9 - 5;
          do
          {
            v16 = 0;
            v17 = 0;
            v18 = v9 + ~v12;
            do
            {
              v17 += v14->i16[v15 + v16++];
            }

            while (v16 != 5);
            if (v17 > v8)
            {
              v19 = &v14->i8[10 * v18];
              v20 = *v19;
              *(a1 + 4204) = *(v19 + 4);
              *(a1 + 4196) = v20;
              *(a1 + 4192) = a2->i32[v18] << 8;
              v11 = a2->i32[v10];
              v8 = v17;
            }

            if (++v12 == v9)
            {
              break;
            }

            v15 -= 5;
          }

          while (v12 * v13 < v11);
        }
      }

      v21 = a1 + 4196;
      *(a1 + 4196) = 0;
      *(a1 + 4204) = 0;
      *(a1 + 4200) = v8;
      if (v8 > 11468)
      {
        if (v8 >= 0x3CCE)
        {
          v25 = 0;
          v26 = 0xF334000u / v8;
          do
          {
            *(v21 + v25) = (v26 * *(v21 + v25)) >> 14;
            v25 += 2;
          }

          while (v25 != 10);
        }
      }

      else
      {
        v22 = 0;
        if (v8 <= 1)
        {
          v8 = 1;
        }

        v23 = (0xB33400u / v8);
        do
        {
          *(v21 + v22) = (v23 * *(v21 + v22)) >> 10;
          v22 += 2;
        }

        while (v22 != 10);
      }
    }

    else
    {
      *(a1 + 4192) = 4608 * v6;
      *(a1 + 4196) = 0;
      *(a1 + 4204) = 0;
    }

    memcpy((a1 + 4206), &a2[4], 2 * *(a1 + 2340));
    *(a1 + 4260) = a2[8].i32[2];
    v24 = *(a1 + 2324);
    *(a1 + 4264) = *(&a2->i64[1] + 4 * v24);
    *(a1 + 4280) = *(a1 + 2332);
    *(a1 + 4276) = v24;
  }
}

int32x4_t silk_PLC_conceal(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  v131 = a3;
  v4 = a1;
  *&v147[12] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4280);
  v6 = *(a1 + 4280);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 2 * *(v7 + 2336);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v139 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 4 * (*(v11 + 2328) + v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v133 = &v126 - v16;
  v17 = v14[1066] >> 6;
  v18 = v14[1067];
  v127 = v18 >> 6;
  v140 = v18 >> 6;
  v141 = v17;
  if (v14[594])
  {
    *(v4 + 4206) = 0u;
    *(v4 + 4222) = 0u;
  }

  bzero(v9, v15);
  v19 = v4 + 4;
  v20 = -2;
  v21 = &v141;
  v22 = 1;
  v23 = v9;
  do
  {
    v24 = v22;
    if (v5 >= 1)
    {
      v25 = 0;
      v26 = (v20 + *(v4 + 4276)) * v6;
      v27 = *v21;
      v28 = v27;
      v29 = ((v27 >> 15) + 1) >> 1;
      v30 = v19 + 4 * v26;
      do
      {
        v31 = (v28 * (*(v30 + 4 * v25) >> 16) + ((v28 * *(v30 + 4 * v25)) >> 16) + v29 * *(v30 + 4 * v25)) >> 8;
        if (v31 <= -32768)
        {
          v31 = -32768;
        }

        if (v31 >= 0x7FFF)
        {
          LOWORD(v31) = 0x7FFF;
        }

        *&v23[2 * v25++] = v31;
      }

      while (v5 != v25);
    }

    v22 = 0;
    v23 += 2 * v5;
    v20 = -1;
    v21 = &v140;
  }

  while ((v24 & 1) != 0);
  v142 = 0;
  v143 = 0;
  bzero(v139, v10);
  bzero(v133, v13);
  silk_sum_sqr_shift(&v142 + 1, &v143 + 1, v9, v5);
  silk_sum_sqr_shift(&v142, &v143, &v9[2 * *(v4 + 4280)], *(v4 + 4280));
  v32 = *(v4 + 4276);
  v132 = a2;
  v128 = v18;
  if (SHIDWORD(v142) >> v143 >= v142 >> SBYTE4(v143))
  {
    v33 = *(v4 + 4280) * v32;
  }

  else
  {
    v33 = (v32 - 1) * *(v4 + 4280);
  }

  if (v33 <= 128)
  {
    v34 = 128;
  }

  else
  {
    v34 = v33;
  }

  v35 = v4 + 4196;
  LOWORD(v36) = *(v4 + 4248);
  v37 = *(v4 + 4184);
  if (v37 >= 1)
  {
    v37 = 1;
  }

  v38 = HARM_ATT_Q15[v37];
  if (*(v4 + 4188) == 2)
  {
    v39 = &PLC_RAND_ATTENUATE_V_Q15;
  }

  else
  {
    v39 = &PLC_RAND_ATTENUATE_UV_Q15;
  }

  v40 = v39[v37];
  v41 = v39[v37];
  silk_bwexpander((v4 + 4206), *(v4 + 2340), 64881);
  v42 = *(v4 + 2340);
  __memcpy_chk();
  v43 = *(v4 + 4184);
  v44 = v139;
  v136 = v34;
  if (v43)
  {
    v135 = v41;
    v45 = v42;
  }

  else if (*(v4 + 4188) == 2)
  {
    v46 = 0;
    LOWORD(v47) = 0x4000;
    v45 = v42;
    do
    {
      LOWORD(v47) = v47 - *(v35 + v46);
      v46 += 2;
    }

    while (v46 != 10);
    v135 = v41;
    v47 = v47;
    if (v47 <= 3277)
    {
      v47 = 3277;
    }

    v36 = (*(v4 + 4260) * v47) >> 14;
  }

  else
  {
    v48 = silk_LPC_inverse_pred_gain((v4 + 4206), v42);
    if (v48 >= 0x8000000)
    {
      v49 = 0x8000000;
    }

    else
    {
      v49 = v48;
    }

    if (v49 <= 0x400000)
    {
      v49 = 0x400000;
    }

    v135 = ((v49 >> 13) * v40 + ((8 * (v49 & 0x1FFF) * v40) >> 16)) >> 14;
    v45 = *(v4 + 2340);
    LOWORD(v36) = 0x4000;
  }

  v50 = *(v4 + 4244);
  v51 = ((*(v4 + 4192) >> 7) + 1) >> 1;
  v52 = *(v4 + 2336);
  v53 = v52 - (v45 + v51) - 2;
  silk_LPC_analysis_filter(&v44[2 * v53], v4 + 2 * v53 + 1348, &v144, v45 + v51 + 2, v45);
  v54 = *(v4 + 4268);
  if (v54 >= 0)
  {
    v55 = *(v4 + 4268);
  }

  else
  {
    v55 = -v54;
  }

  v56 = __clz(v55);
  v57 = v54 << (v56 - 1);
  v58 = 0x1FFFFFFF / (v57 >> 16);
  v59 = (v57 >> 16) * v58 + ((v57 * v58) >> 16);
  v60 = (v58 << 16) - 8 * v59 * (((v58 >> 15) + 1) >> 1) + ((-8 * v59) >> 16) * v58 + ((((-8 * v59) & 0xFFF8) * v58) >> 16);
  v61 = HIWORD(v55);
  v62 = v60 >> (16 - v56);
  v63 = v56 - 16;
  v64 = 0x80000000 >> v63;
  if (v60 > 0x80000000 >> v63)
  {
    v64 = v60;
  }

  if (v60 <= (0x7FFFFFFFu >> v63))
  {
    v65 = v64;
  }

  else
  {
    v65 = 0x7FFFFFFFu >> v63;
  }

  v66 = v65 << v63;
  if (v61)
  {
    v67 = v62;
  }

  else
  {
    v67 = v66;
  }

  v130 = *(v4 + 2340);
  LODWORD(v68) = v130 + v53;
  v69 = *(v4 + 2336);
  v70 = v133;
  if (v130 + v53 < v69)
  {
    if (v67 >= 0x3FFFFFFF)
    {
      v71 = 0x3FFFFFFF;
    }

    else
    {
      v71 = v67;
    }

    v68 = v68;
    do
    {
      *&v70[4 * v68] = (v71 >> 16) * *&v44[2 * v68] + ((v71 * *&v44[2 * v68]) >> 16);
      ++v68;
    }

    while (v68 < v69);
  }

  v129 = v69;
  v137 = *(v4 + 2324);
  v138 = v4;
  if (v137 >= 1)
  {
    v72 = 0;
    v73 = v19 + 4 * (v136 - 128);
    v74 = *(v4 + 2332);
    v134 = 4608 * *(v4 + 2316);
    v135 = v135;
    v75 = *(v4 + 4192);
    v136 = v74;
    do
    {
      LODWORD(v139) = v72;
      if (v74 >= 1)
      {
        v76 = *(v4 + 4196);
        v77 = *(v4 + 4198);
        v78 = *(v4 + 4200);
        v79 = *(v4 + 4202);
        v80 = &v133[4 * v52];
        v81 = -4 * v51;
        v82 = v74;
        v83 = *(v4 + 4204);
        do
        {
          v50 = 196314165 * v50 + 907633515;
          *v80 = 4 * ((*&v80[v81 + 8] >> 16) * v76 + ((*&v80[v81 + 8] * v76) >> 16) + (*&v80[v81 + 4] >> 16) * v77 + ((*&v80[v81 + 4] * v77) >> 16) + (*&v80[v81] >> 16) * v78 + ((*&v80[v81] * v78) >> 16) + (*&v80[v81 - 4] >> 16) * v79 + ((*&v80[v81 - 4] * v79) >> 16) + (*&v80[v81 - 8] >> 16) * v83 + ((*&v80[v81 - 8] * v83) >> 16) + (*(v73 + 4 * (v50 >> 25)) >> 16) * v36 + ((*(v73 + 4 * (v50 >> 25)) * v36) >> 16)) + 8;
          v80 += 4;
          ++v52;
          --v82;
        }

        while (v82);
      }

      for (i = 0; i != 10; i += 2)
      {
        *(v35 + i) = (*(v35 + i) * v38) >> 15;
      }

      v36 = (v36 * v135) >> 15;
      if ((v75 + 655 * (v75 >> 16) + ((655 * v75) >> 16)) >= v134)
      {
        v75 = v134;
      }

      else
      {
        v75 += 655 * (v75 >> 16) + ((655 * v75) >> 16);
      }

      v4 = v138;
      *(v138 + 4192) = v75;
      v51 = ((v75 >> 7) + 1) >> 1;
      v72 = v139 + 1;
      v74 = v136;
    }

    while (v139 + 1 != v137);
  }

  v86 = v132;
  v85 = v133;
  v87 = v129;
  v88 = v130;
  v89 = &v133[4 * v129];
  v90 = v89 - 64;
  v91 = (v4 + 1284);
  v92 = *(v4 + 1300);
  *(v89 - 4) = *(v4 + 1284);
  *(v89 - 3) = v92;
  v93 = *(v4 + 1332);
  *(v89 - 2) = *(v4 + 1316);
  *(v89 - 1) = v93;
  v94 = *(v4 + 2328);
  v95 = v131;
  if (v94 >= 1)
  {
    v96 = 0;
    v97 = vmovl_high_s16(v144);
    v98 = vmovl_s16(*v144.i8);
    v99 = v145;
    v100 = v146;
    v101 = v127;
    v102 = ((v128 >> 21) + 1) >> 1;
    v103 = &v85[4 * v87 - 44];
    v104.i64[0] = 0xFFFF0000FFFFLL;
    v104.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v105 = &v90[4 * v96];
      v107 = v105[2];
      v106 = v105[3];
      v108 = vrev64q_s32(vshrq_n_s32(v106, 0x10uLL));
      v109 = vrev64q_s32(vshrq_n_s32(v107, 0x10uLL));
      v110 = vrev64q_s32(vandq_s8(v106, v104));
      v111 = vrev64q_s32(vandq_s8(v107, v104));
      v112 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v110, v110, 8uLL), v98), 0x10uLL), vmulq_s32(vextq_s8(v111, v111, 8uLL), v97), 0x10uLL), vmlaq_s32(vmulq_s32(vextq_s8(v109, v109, 8uLL), v97), vextq_s8(v108, v108, 8uLL), v98))) + ((v105[1].i32[3] * v99) >> 16) + (v105[1].i32[3] >> 16) * v99 + ((v105[1].i32[2] * v100) >> 16) + (v88 >> 1) + (v105[1].i32[2] >> 16) * v100;
      if (v88 >= 11)
      {
        v113 = v88 - 10;
        v114 = v147;
        v115 = v103;
        do
        {
          v117 = *v115--;
          v116 = v117;
          v118 = *v114++;
          v112 += (v116 >> 16) * v118 + ((v116 * v118) >> 16);
          --v113;
        }

        while (v113);
      }

      v119 = *&v89[4 * v96] + 16 * v112;
      *&v89[4 * v96] = v119;
      v120 = (((v119 * v102 + (v119 >> 16) * v101 + ((v119 * v101) >> 16)) >> 7) + 1) >> 1;
      if (v120 <= -32768)
      {
        v120 = -32768;
      }

      if (v120 >= 0x7FFF)
      {
        LOWORD(v120) = 0x7FFF;
      }

      *(v95 + 2 * v96++) = v120;
      v103 += 4;
    }

    while (v96 != v94);
  }

  v121 = &v90[4 * v94];
  v122 = *(v121 + 1);
  *v91 = *v121;
  v91[1] = v122;
  v123 = *(v121 + 3);
  v91[2] = *(v121 + 2);
  v91[3] = v123;
  v124 = v138;
  *(v138 + 4244) = v50;
  *(v124 + 4248) = v36;
  result = vdupq_n_s32(v51);
  *v86 = result;
  return result;
}

unsigned int *silk_PLC_glue_frames(unsigned int *result, __int16 *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  if (result[1046])
  {
    result = silk_sum_sqr_shift(result + 1063, result + 1064, a2, a3);
    v5[1060] = 1;
  }

  else
  {
    if (result[1060])
    {
      v20 = 0;
      result = silk_sum_sqr_shift(&v20, &v20 + 1, a2, a3);
      v6 = v5[1064];
      if (SHIDWORD(v20) <= v6)
      {
        v7 = SHIDWORD(v20) < v6 ? v20 >> (v6 - BYTE4(v20)) : v20;
      }

      else
      {
        v5[1063] = v5[1063] >> (BYTE4(v20) - v6);
        v7 = v20;
      }

      v8 = v5[1063];
      if (v7 > v8)
      {
        v9 = __clz(v8);
        v10 = v8 << (v9 - 1);
        v5[1063] = v10;
        v11 = v7 >> ((25 - v9) & ~((25 - v9) >> 31));
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = v10 / v11;
        if (v12 < 1)
        {
          v16 = 0;
        }

        else
        {
          v13 = __clz(v12);
          if (v13 != 24)
          {
            if (v12 <= 0x7F)
            {
              LOBYTE(v12) = (v12 >> (56 - v13)) | (v12 << (v13 - 24));
            }

            else
            {
              LOBYTE(v12) = (v12 << (v13 + 8)) | (v12 >> (24 - v13));
            }
          }

          v14 = v12 & 0x7F;
          if (v13)
          {
            v15 = 0x8000;
          }

          else
          {
            v15 = 46214;
          }

          v16 = 16 * ((v15 >> (v13 >> 1)) + ((213 * (v15 >> (v13 >> 1)) * v14) >> 16));
        }

        if (v3 >= 1)
        {
          v17 = 4 * ((0x10000 - v16) / v3);
          v18 = v3 - 1;
          do
          {
            v19 = v18;
            *v4 = HIWORD(v16) * *v4 + (((v16 & 0xFFFCu) * *v4) >> 16);
            ++v4;
            v16 += v17;
            if (v16 > 0x10000)
            {
              break;
            }

            --v18;
          }

          while (v19);
        }
      }
    }

    v5[1060] = 0;
  }

  return result;
}

uint64_t silk_decode_indices(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4 || *(a1 + 4 * a3 + 2416))
  {
    v8 = ec_dec_icdf(a2, silk_type_offset_VAD_iCDF, 8) + 2;
  }

  else
  {
    v8 = ec_dec_icdf(a2, silk_type_offset_no_VAD_iCDF, 8);
  }

  *(a1 + 2789) = v8 >> 1;
  *(a1 + 2790) = v8 & 1;
  if (a5 == 2)
  {
    v9 = ec_dec_icdf(a2, silk_delta_gain_iCDF, 8);
  }

  else
  {
    *(a1 + 2760) = 8 * ec_dec_icdf(a2, &silk_gain_iCDF[8 * (v8 >> 1)], 8);
    v9 = *(a1 + 2760) + ec_dec_icdf(a2, silk_uniform8_iCDF, 8);
  }

  *(a1 + 2760) = v9;
  if (*(a1 + 2324) > 1)
  {
    v10 = (a1 + 2761);
    v11 = 1;
    do
    {
      *v10++ = ec_dec_icdf(a2, silk_delta_gain_iCDF, 8);
      ++v11;
    }

    while (v11 < *(a1 + 2324));
  }

  v12 = ec_dec_icdf(a2, (*(*(a1 + 2752) + 16) + **(a1 + 2752) * (*(a1 + 2789) >> 1)), 8);
  *(a1 + 2768) = v12;
  silk_NLSF_unpack(v23, v22, *(a1 + 2752), v12);
  v13 = *(a1 + 2752);
  if (*(v13 + 2) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = ec_dec_icdf(a2, (*(v13 + 40) + v23[v14]), 8);
      if (v15 == 8)
      {
        LOBYTE(v15) = ec_dec_icdf(a2, silk_NLSF_EXT_iCDF, 8) + 8;
      }

      else if (!v15)
      {
        v15 = -ec_dec_icdf(a2, silk_NLSF_EXT_iCDF, 8);
      }

      *(a1 + 2769 + v14) = v15 - 4;
      v13 = *(a1 + 2752);
      ++v14;
    }

    while (v14 < *(v13 + 2));
  }

  if (*(a1 + 2324) == 4)
  {
    v16 = ec_dec_icdf(a2, silk_NLSF_interpolation_factor_iCDF, 8);
  }

  else
  {
    v16 = 4;
  }

  *(a1 + 2791) = v16;
  if (*(a1 + 2789) == 2)
  {
    if (a5 == 2 && *(a1 + 2408) == 2 && (v17 = ec_dec_icdf(a2, silk_pitch_delta_iCDF, 8), v17 >= 1))
    {
      v18 = v17 + *(a1 + 2412) - 9;
    }

    else
    {
      *(a1 + 2786) = (*(a1 + 2316) >> 1) * ec_dec_icdf(a2, silk_pitch_lag_iCDF, 8);
      v18 = *(a1 + 2786) + ec_dec_icdf(a2, *(a1 + 2384), 8);
    }

    *(a1 + 2786) = v18;
    *(a1 + 2412) = v18;
    *(a1 + 2788) = ec_dec_icdf(a2, *(a1 + 2392), 8);
    *(a1 + 2792) = ec_dec_icdf(a2, silk_LTP_per_index_iCDF, 8);
    if (*(a1 + 2324) >= 1)
    {
      v19 = 0;
      do
      {
        *(a1 + 2764 + v19++) = ec_dec_icdf(a2, *(&silk_LTP_gain_iCDF_ptrs + *(a1 + 2792)), 8);
      }

      while (v19 < *(a1 + 2324));
    }

    if (a5)
    {
      v20 = 0;
    }

    else
    {
      v20 = ec_dec_icdf(a2, silk_LTPscale_iCDF, 8);
    }

    *(a1 + 2793) = v20;
  }

  *(a1 + 2408) = *(a1 + 2789);
  result = ec_dec_icdf(a2, silk_uniform4_iCDF, 8);
  *(a1 + 2794) = result;
  return result;
}

uint64_t silk_NLSF_unpack(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = (*(a3 + 32) + v4 * a4 / 2);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = (result + 2 * v5);
      *v9 = (v8 >> 1) & 7 | (8 * ((v8 >> 1) & 7));
      v10 = *(a3 + 2) - 1;
      if ((v8 & 1) == 0)
      {
        v10 = 0;
      }

      v11 = *(*(a3 + 24) + v10 + v5);
      v12 = (a2 + v5);
      *v12 = v11;
      v9[1] = (v7 >> 5) | (8 * (v7 >> 5));
      v12[1] = *(*(a3 + 24) + ((*(a3 + 2) - 1) & ((v7 << 27) >> 31)) + v5 + 1);
      v5 += 2;
    }

    while (v5 < *(a3 + 2));
  }

  return result;
}

uint64_t silk_shell_decoder(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    v10 = 0;
    v7 = 0u;
  }

  else
  {
    v6 = ec_dec_icdf(a2, &silk_shell_code_table3[silk_shell_code_table_offsets[a3]], 8);
    v7 = a3 - v6;
    if (v6 < 1)
    {
      v10 = 0u;
    }

    else
    {
      v8 = v6;
      v9 = ec_dec_icdf(a2, &silk_shell_code_table2[silk_shell_code_table_offsets[v6]], 8);
      v10 = v8 - v9;
      if (v9 > 0)
      {
        v11 = v9;
        v12 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v9]], 8);
        v13 = v11 - v12;
        if (v12 < 1)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v14 = v12;
          v15 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v12]], 8);
          v16 = v14 - v15;
        }

        *a1 = v15;
        *(a1 + 4) = v16;
        if (v13 < 1)
        {
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v17 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v13]], 8);
          v18 = v13 - v17;
        }

        goto LABEL_9;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  *a1 = 0;
LABEL_9:
  *(a1 + 8) = v17;
  *(a1 + 12) = v18;
  if (v10 <= 0)
  {
    v24 = 0;
    v25 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v19 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v10]], 8);
    v20 = v10 - v19;
    if (v19 < 1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v21 = v19;
      v22 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v19]], 8);
      v23 = v21 - v22;
    }

    *(a1 + 16) = v22;
    *(a1 + 20) = v23;
    if (v20 < 1)
    {
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v24 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v20]], 8);
      v25 = v20 - v24;
    }
  }

  *(a1 + 24) = v24;
  *(a1 + 28) = v25;
  if (v7 < 1)
  {
    v27 = 0u;
  }

  else
  {
    v26 = ec_dec_icdf(a2, &silk_shell_code_table2[silk_shell_code_table_offsets[v7]], 8);
    v27 = v7 - v26;
    if (v26 > 0)
    {
      v28 = v26;
      v29 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v26]], 8);
      v30 = v28 - v29;
      if (v29 < 1)
      {
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v31 = v29;
        v32 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v29]], 8);
        v33 = v31 - v32;
      }

      *(a1 + 32) = v32;
      *(a1 + 36) = v33;
      if (v30 < 1)
      {
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v30]], 8);
        v35 = v30 - v34;
      }

      goto LABEL_27;
    }
  }

  v34 = 0;
  v35 = 0;
  *(a1 + 32) = 0;
LABEL_27:
  *(a1 + 40) = v34;
  *(a1 + 44) = v35;
  if (v27 <= 0)
  {
    result = 0;
    v42 = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v36 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v27]], 8);
    v37 = v27 - v36;
    if (v36 < 1)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v38 = v36;
      v39 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v36]], 8);
      v40 = v38 - v39;
    }

    *(a1 + 48) = v39;
    *(a1 + 52) = v40;
    if (v37 < 1)
    {
      result = 0;
      v42 = 0;
    }

    else
    {
      result = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v37]], 8);
      v42 = v37 - result;
    }
  }

  *(a1 + 56) = result;
  *(a1 + 60) = v42;
  return result;
}

__n128 silk_decode_core(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v137 = a3;
  v144 = a2;
  v157 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  v8 = *(a1 + 2328);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v135 - v10;
  bzero(&v135 - v10, v12);
  v13 = 4 * *(a1 + 2332);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v15, v13);
  MEMORY[0x1EEE9AC00](v16);
  v17 = &v135 - ((v13 + 79) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(a1 + 2791);
  if (v8 >= 1)
  {
    v18 = 0;
    v19 = *(a1 + 2794);
    v20 = 16 * silk_Quantization_Offsets_Q10[2 * (*(a1 + 2789) >> 1) + *(a1 + 2790)];
    do
    {
      v21 = 196314165 * v19 + 907633515;
      v22 = *(a4 + 4 * v18) << 14;
      v23 = (v22 | 0x500) & (v22 >> 31);
      if (v22 > 0)
      {
        v23 = v22 - 1280;
      }

      v24 = v23 + v20;
      if (v21 < 0)
      {
        v24 = -v24;
      }

      *(a1 + 4 + 4 * v18) = v24;
      v19 = *(a4 + 4 * v18++) + v21;
    }

    while (v18 < *(a1 + 2328));
  }

  bzero(&v135 - ((v13 + 79) & 0xFFFFFFFFFFFFFFF0), v13 + 64);
  v25 = *(a1 + 1300);
  *v17 = *(a1 + 1284);
  *(v17 + 1) = v25;
  v26 = *(a1 + 1316);
  v27 = *(a1 + 1332);
  v136 = (a1 + 1284);
  *(v17 + 2) = v26;
  *(v17 + 3) = v27;
  if (*(a1 + 2324) >= 1)
  {
    v28 = 0;
    v29 = (a1 + 4);
    v148 = *(a1 + 2336);
    v146 = v144 + 96;
    v147 = v144 + 32;
    v145 = v144 + 16;
    v149 = a1 + 1348;
    v151 = v137;
    v139 = v7;
    do
    {
      v150 = v147 + 32 * (v28 >> 1);
      __memcpy_chk();
      v30 = *(v145 + 4 * v28);
      if (v30 >= 0)
      {
        v31 = *(v145 + 4 * v28);
      }

      else
      {
        v31 = -v30;
      }

      v32 = __clz(v31);
      v33 = v30 << (v32 - 1);
      v34 = 0x1FFFFFFF / (v33 >> 16);
      v35 = v34;
      v36 = (v33 >> 16) * v35 + ((v33 * v35) >> 16);
      v37 = (v34 << 16) - 8 * v36 * (((v34 >> 15) + 1) >> 1) + ((-8 * v36) >> 16) * v35 + ((((-8 * v36) & 0xFFF8) * v35) >> 16);
      v38 = v31 >> 17;
      v39 = v37 >> (15 - v32);
      v40 = 0x80000000 >> (v32 - 15);
      if (v37 > v40)
      {
        v40 = v37;
      }

      if (v37 <= (0x7FFFFFFFu >> (v32 - 15)))
      {
        v41 = v40;
      }

      else
      {
        v41 = 0x7FFFFFFFu >> (v32 - 15);
      }

      v42 = v41 << (v32 - 15);
      if (v38)
      {
        v43 = v39;
      }

      else
      {
        v43 = v42;
      }

      v44 = *a1;
      if (v30 == *a1)
      {
        v45 = 0x10000;
      }

      else
      {
        v46 = 0;
        if (v44 >= 0)
        {
          v47 = *a1;
        }

        else
        {
          v47 = -v44;
        }

        v48 = __clz(v47);
        v49 = v44 << (v48 - 1);
        v50 = (v49 >> 16) * v35 + ((v49 * v35) >> 16);
        v51 = v49 - (((v50 * v33) >> 29) & 0xFFFFFFF8);
        v52 = v50 + (v51 >> 16) * v35 + ((v51 * v35) >> 16);
        v53 = v48 - v32;
        if ((v53 + 29) >= 0x30)
        {
          v54 = 0;
        }

        else
        {
          v54 = v52 >> (v53 + 13);
        }

        v55 = 0x80000000 >> (-13 - v53);
        if (v52 > v55)
        {
          v55 = v52;
        }

        if (v52 <= (0x7FFFFFFFu >> (-13 - v53)))
        {
          v56 = v55;
        }

        else
        {
          v56 = 0x7FFFFFFFu >> (-13 - v53);
        }

        v57 = v56 << (-13 - v53);
        if (v53 <= -14)
        {
          v45 = v57;
        }

        else
        {
          v45 = v54;
        }

        v58 = vdupq_n_s32(v45 >> 16);
        v59 = vdupq_n_s32(v45);
        v60 = vdupq_n_s32(v45);
        v61.i64[0] = 0x100000001;
        v61.i64[1] = 0x100000001;
        do
        {
          v62 = *&v17[v46];
          v63 = vshrq_n_s32(vshlq_n_s32(v62, 0x10uLL), 0x10uLL);
          *&v17[v46] = vmlaq_s32(vsraq_n_s32(vmulq_s32(v63, v58), vmulq_s32(v63, v59), 0x10uLL), vhaddq_s32(vshrq_n_s32(v62, 0xFuLL), v61), v60);
          v46 += 16;
        }

        while (v46 != 64);
      }

      v64 = v149;
      v65.i64[0] = 0xFFFF0000FFFFLL;
      v65.i64[1] = 0xFFFF0000FFFFLL;
      v66 = (v146 + 10 * v28);
      v67 = *(a1 + 2789);
      *a1 = v30;
      if (!*(a1 + 4184) || (*(a1 + 4188) == 2 ? (v68 = v28 > 1) : (v68 = 1), !v68 ? (v69 = v67 == 2) : (v69 = 1), v69))
      {
        if (v67 != 2)
        {
          LODWORD(v70) = *(a1 + 2332);
          v71 = v29;
          goto LABEL_77;
        }

        v72 = *(v144 + 4 * v28);
      }

      else
      {
        *v66 = 0;
        v66[4] = 0;
        v66[2] = 4096;
        v72 = *(a1 + 2308);
        *(v144 + 4 * v28) = v72;
      }

      v74 = v142 < 4 && v28 == 2;
      if (!v28 || v74)
      {
        v140 = v43;
        v77 = *(a1 + 2336);
        v78 = *(a1 + 2340);
        v79 = *(a1 + 2332);
        v141 = v66;
        v143 = v72;
        if (v28 == 2)
        {
          v138 = v78;
          memcpy((v64 + 2 * v77), v137, 4 * v79);
          LODWORD(v78) = v138;
          v72 = v143;
          v64 = v149;
          v79 = *(a1 + 2332);
          v80 = *(a1 + 2336);
          v81 = *(a1 + 2340);
        }

        else
        {
          v81 = v78;
          v80 = v77;
        }

        v82 = v77 - v78 - v72 - 2;
        v83 = v139;
        silk_LPC_analysis_filter(&v139[2 * v82], v64 + 2 * (v82 + v79 * v28), v150, v80 - v82, v81);
        if (v28)
        {
          v65.i64[0] = 0xFFFF0000FFFFLL;
          v65.i64[1] = 0xFFFF0000FFFFLL;
          v66 = v141;
          v84 = v140;
        }

        else
        {
          v84 = 4 * (*(v144 + 136) * (v140 >> 16) + ((*(v144 + 136) * v140) >> 16));
          v65.i64[0] = 0xFFFF0000FFFFLL;
          v65.i64[1] = 0xFFFF0000FFFFLL;
          v66 = v141;
        }

        v72 = v143;
        if (v143 >= -1)
        {
          v85 = (v143 + 2);
          v86 = v148 - 1;
          v87 = *(a1 + 2336) - 1;
          do
          {
            v88 = *&v83[2 * v87];
            *&v11[4 * v86--] = (v84 >> 16) * v88 + ((v84 * v88) >> 16);
            --v87;
            --v85;
          }

          while (v85);
        }
      }

      else if (v45 != 0x10000 && v72 >= -1)
      {
        v75 = (v72 + 2);
        v76 = v148 - 1;
        do
        {
          *&v11[4 * v76] = *&v11[4 * v76] * (v45 >> 16) + ((*&v11[4 * v76] * v45) >> 16) + (((*&v11[4 * v76] >> 15) + 1) >> 1) * v45;
          --v76;
          --v75;
        }

        while (v75);
      }

      v70 = *(a1 + 2332);
      if (v70 < 1)
      {
        goto LABEL_86;
      }

      v89 = 0;
      v90 = *v66;
      v91 = vmovl_s16(*(v66 + 1));
      v92 = vrev64q_s32(v91);
      v93 = vextq_s8(v92, v92, 8uLL);
      v93.i32[0] = v90;
      v94 = &v11[4 * v148];
      v95 = &v11[4 * v148 - 4 * v72];
      v148 = (v148 + v70);
      do
      {
        v96 = *&v95[v89 - 8];
        v97 = vandq_s8(v96, v65);
        v96.i32[0] = *&v95[v89 + 8];
        v98 = vrev64q_s32(v97);
        v99 = v29[v89 / 4] + 2 * (vaddvq_s32(vsraq_n_s32(vmulq_s32(vshrq_n_s32(v96, 0x10uLL), v93), vmulq_s32(vextq_s8(v98, v98, 8uLL), v91), 0x10uLL)) + ((v96.u16[0] * v90) >> 16) + (*&v95[v89 - 8] >> 16) * v91.i32[3]) + 4;
        *&v15[v89] = v99;
        *&v94[v89] = 2 * v99;
        v89 += 4;
      }

      while (4 * v70 != v89);
      v71 = v15;
LABEL_77:
      if (v70 >= 1)
      {
        v100 = *(a1 + 2340);
        v101 = *v152;
        v102 = vmovl_s16(*&v152[2]);
        v103 = vmovl_high_s16(*&v152[2]);
        v104 = v153;
        v105 = vmovl_s16(v154);
        v106 = v155;
        v107 = v156;
        v108 = v70;
        v109 = *(v17 + 15);
        v110 = vmovl_high_s16(*v152);
        v111 = vmovl_s16(*v152);
        v112 = v151;
        v113 = v17;
        do
        {
          v114 = *(v113 + 44);
          v115 = *(v113 + 28);
          v116 = vrev64q_s32(vextq_s8(v115, v114, 4uLL));
          v117 = vandq_s8(v115, v65);
          v118 = vrev64q_s32(vextq_s8(v114, v114, 0xCuLL));
          v118.i32[0] = v109;
          v119 = vrev64q_s32(vandq_s8(v114, v65));
          v120 = vrev64q_s32(v117);
          v121 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v119, v119, 8uLL), v102), 0x10uLL), vmulq_s32(vextq_s8(v120, v120, 8uLL), v103), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(vextq_s8(v116, v116, 8uLL), 0x10uLL), v110), vshrq_n_s32(v118, 0x10uLL), v111))) + ((v109 * v101) >> 16) + (*(v113 + 28) >> 16) * v103.i32[3] + ((*(v113 + 6) * v104) >> 16) + (v100 >> 1) + (*(v113 + 6) >> 16) * v104;
          if (v100 == 16)
          {
            v122 = *(v113 + 8);
            v123 = vrev64q_s32(vshrq_n_s32(v122, 0x10uLL));
            v124 = vrev64q_s32(vandq_s8(v122, v65));
            v121 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v123, v123, 8uLL), v105), vmulq_s32(vextq_s8(v124, v124, 8uLL), v105), 0x10uLL)) + ((*(v113 + 1) * v106) >> 16) + (*(v113 + 1) >> 16) * v106 + ((*v113 * v107) >> 16) + (*v113 >> 16) * v107;
          }

          v125 = *v71++;
          v109 = v125 + 16 * v121;
          *(v113 + 16) = v109;
          v126 = (((v109 * (((v30 >> 21) + 1) >> 1) + (v109 >> 16) * (v30 >> 6) + ((v109 * (v30 >> 6)) >> 16)) >> 7) + 1) >> 1;
          if (v126 <= -32768)
          {
            v126 = -32768;
          }

          if (v126 >= 0x7FFF)
          {
            LOWORD(v126) = 0x7FFF;
          }

          *v112++ = v126;
          v113 += 4;
          --v108;
        }

        while (v108);
      }

LABEL_86:
      v127 = &v17[4 * v70];
      v128 = *v127;
      v129 = *(v127 + 1);
      v130 = *(v127 + 3);
      *(v17 + 2) = *(v127 + 2);
      *(v17 + 3) = v130;
      *v17 = v128;
      *(v17 + 1) = v129;
      v29 += v70;
      v151 += 2 * v70;
      ++v28;
    }

    while (v28 < *(a1 + 2324));
  }

  v131 = *(v17 + 1);
  v132 = v136;
  *v136 = *v17;
  v132[1] = v131;
  result = *(v17 + 2);
  v134 = *(v17 + 3);
  v132[2] = result;
  v132[3] = v134;
  return result;
}

uint64_t silk_insertion_sort_increasing_all_values_int16(uint64_t result, int a2)
{
  if (a2 >= 2)
  {
    for (i = 1; i != a2; ++i)
    {
      v3 = *(result + 2 * i);
      v4 = i;
      while (1)
      {
        v5 = v4 - 1;
        v6 = *(result + 2 * (v4 - 1));
        if (v3 >= v6)
        {
          break;
        }

        *(result + 2 * v4--) = v6;
        if (v5 + 1 <= 1)
        {
          LODWORD(v4) = 0;
          break;
        }
      }

      *(result + 2 * v4) = v3;
    }
  }

  return result;
}

uint64_t silk_decode_pulses(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = ec_dec_icdf(a1, &silk_rate_levels_iCDF[9 * (a3 >> 1)], 8);
  v9 = a5 >> 4;
  v31 = a5;
  if ((a5 & 0xF) != 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 1)
  {
    v33 = a2;
    v11 = 0;
    v12 = &silk_pulses_per_block_iCDF + 18 * v8;
    do
    {
      v34[v11] = 0;
      v13 = ec_dec_icdf(a1, v12, 8);
      if (v13 == 17)
      {
        v14 = 0;
        do
        {
          if (v14++ == 9)
          {
            v16 = &unk_1C382E233;
          }

          else
          {
            v16 = &silk_pulses_per_block_iCDF;
          }

          v13 = ec_dec_icdf(a1, v16 + 162, 8);
        }

        while (v13 == 17);
        v34[v11] = v14;
      }

      v35[v11++] = v13;
    }

    while (v11 != v10);
    v17 = 0;
    v18 = v35;
    v19 = v10;
    a2 = v33;
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = (v33 + 4 * (v17 >> 12));
      if (v21 < 1)
      {
        v22[2] = 0u;
        v22[3] = 0u;
        *v22 = 0u;
        v22[1] = 0u;
      }

      else
      {
        silk_shell_decoder(v22, a1, v20);
      }

      v17 += 0x10000;
      --v19;
    }

    while (v19);
    for (i = 0; i != v10; ++i)
    {
      v24 = v34[i];
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = a2 + 64 * i;
        do
        {
          v27 = *(v26 + 4 * v25);
          v28 = v24;
          do
          {
            v27 = ec_dec_icdf(a1, silk_lsb_iCDF, 8) + 2 * v27;
            --v28;
          }

          while (v28);
          *(v26 + 4 * v25++) = v27;
        }

        while (v25 != 16);
        v35[i] |= 32 * v24;
        a2 = v33;
      }
    }
  }

  return silk_decode_signs(a1, a2, v31, a3, a4, v35);
}

uint64_t silk_NLSF_stabilize(uint64_t result, __int16 *a2, int a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3;
  v8 = (result + 2);
  v9 = result + 2 * a3;
  v10 = a3;
  while (1)
  {
    v11 = *a2;
    v12 = *v5 - v11;
    LODWORD(v13) = 0;
    v14 = a3 - 2;
    if (a3 >= 2)
    {
      v15 = v8;
      for (i = 1; i != a3; ++i)
      {
        result = *(v15 - 1);
        if (*v15 - result - a2[i] < v12)
        {
          LODWORD(v13) = i;
          v12 = *v15 - result - a2[i];
        }

        ++v15;
      }
    }

    v17 = a2[a3];
    v18 = 0x8000 - *(v9 - 2) - v17;
    if (v18 >= v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = a3;
    }

    if (v18 < v12)
    {
      v12 = 0x8000 - *(v9 - 2) - v17;
    }

    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (v13)
    {
      if (v13 == a3)
      {
        *(v9 - 2) = 0x8000 - v17;
      }

      else
      {
        if (v13 < 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0;
          v20 = v13;
          v21 = a2;
          do
          {
            v22 = *v21++;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        v23 = v13;
        v24 = 0x8000;
        if (v13 < a3)
        {
          v25 = a3;
          do
          {
            v24 -= a2[v25--];
          }

          while (v25 > v13);
        }

        v26 = a2[v13] >> 1;
        v27 = v19 + v26;
        v28 = v24 - v26;
        v29 = &v5[v23];
        v30 = *v29 + *(v29 - 1);
        v31 = (v30 & 1) + (v30 >> 1);
        if (v27 <= v28)
        {
          result = v28;
        }

        else
        {
          result = v27;
        }

        if (v27 >= v28)
        {
          v27 = v28;
        }

        if (v31 > v27)
        {
          LOWORD(v27) = v31;
        }

        if (v31 > result)
        {
          LOWORD(v27) = result;
        }

        v32 = v27 - v26;
        *(v29 - 1) = v32;
        *v29 = v32 + a2[v23];
      }
    }

    else
    {
      *v5 = v11;
    }

    if (++v6 == 20)
    {
      result = silk_insertion_sort_increasing_all_values_int16(v5, a3);
      v33 = *v5;
      if (v33 <= *a2)
      {
        LOWORD(v33) = *a2;
      }

      *v5 = v33;
      if (a3 <= 1)
      {
        v42 = 0x8000 - a2[v7];
        if (*(v9 - 2) < v42)
        {
          LOWORD(v42) = *(v9 - 2);
        }

        *(v9 - 2) = v42;
      }

      else
      {
        v34 = v5 + 1;
        LOWORD(v35) = *v5;
        v36 = a2 + 1;
        v37 = v10 - 1;
        do
        {
          v38 = *v36++;
          v35 = v38 + v35;
          if (*v34 > v35)
          {
            LOWORD(v35) = *v34;
          }

          *v34++ = v35;
          --v37;
        }

        while (v37);
        v39 = *(v9 - 2);
        if (v39 >= 0x8000 - a2[v7])
        {
          LOWORD(v39) = 0x8000 - a2[v7];
        }

        *(v9 - 2) = v39;
        v40 = v14;
        LOWORD(v41) = v5[v40 + 1];
        do
        {
          v41 = v41 - a2[v40 + 1];
          if (v5[v40] < v41)
          {
            LOWORD(v41) = v5[v40];
          }

          v5[v40--] = v41;
        }

        while (v40 != 0x7FFFFFFFFFFFFFFFLL);
      }

      return result;
    }
  }

  return result;
}

int *silk_resampler_private_AR2(int *result, int *a2, __int16 *a3, __int16 *a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = *a4;
    v6 = a4[1];
    v7 = a5;
    v8 = *result;
    do
    {
      v9 = *a3++;
      v10 = v8 + (v9 << 8);
      *a2++ = v10;
      v11 = (v10 >> 14);
      v12 = 4 * (v10 & 0x3FFF);
      v8 = result[1] + v11 * v5 + ((v12 * v5) >> 16);
      *result = v8;
      result[1] = v11 * v6 + ((v12 * v6) >> 16);
      --v7;
    }

    while (v7);
  }

  return result;
}

__n128 silk_resampler_private_IIR_FIR(uint64_t a1, _WORD *a2, __int16 *a3, int a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  LODWORD(v8) = *(a1 + 268);
  MEMORY[0x1EEE9AC00](a1);
  v10 = (v18 - v9);
  bzero(v18 - v9, v11 + 16);
  v12 = a1;
  *v10 = *(a1 + 24);
  v13 = *(a1 + 272);
  for (v18[0] = a1; ; LODWORD(v8) = *(v18[0] + 268))
  {
    if (a4 >= v8)
    {
      v8 = v8;
    }

    else
    {
      v8 = a4;
    }

    silk_resampler_private_up2_HQ(v12, (v10 + 1), a3, v8);
    if ((v8 << 17) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = *(v10 + 2 * (v14 >> 16));
        v16 = ((vaddvq_s32(vmlal_s16(vmull_s16(*v15.i8, silk_resampler_frac_FIR_12[((3 * v14) >> 14)]), vrev64_s16(*&vextq_s8(v15, v15, 8uLL)), silk_resampler_frac_FIR_12[11 - ((12 * v14) >> 16)])) >> 14) + 1) >> 1;
        if (v16 <= -32768)
        {
          v16 = -32768;
        }

        if (v16 >= 0x7FFF)
        {
          LOWORD(v16) = 0x7FFF;
        }

        *a2++ = v16;
        v14 += v13;
      }

      while (v14 < v8 << 17);
    }

    a4 -= v8;
    if (a4 < 1)
    {
      break;
    }

    a3 += v8;
    *v10 = *(v10 + 4 * v8);
    v12 = v18[0];
  }

  result = *(v10 + 4 * v8);
  *(v18[0] + 24) = result;
  return result;
}

uint64_t silk_InitDecoder(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    result = silk_init_decoder((a1 + 4288 * v2));
    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  *(a1 + 8584) = 0;
  *(a1 + 8576) = 0;
  *(a1 + 8596) = 0;
  return result;
}

uint64_t silk_Decode(uint64_t inited, int *a2, int a3, int a4, uint64_t a5, uint64_t a6, int *a7)
{
  v116 = a7;
  v11 = inited;
  v122[1] = *MEMORY[0x1E69E9840];
  v119 = 0;
  v122[0] = 0;
  v12 = a2[1];
  if (a4 && v12 >= 1)
  {
    v13 = (v12 + 3) & 0xFFFFFFFC;
    v14 = xmmword_1C378AEF0;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = xmmword_1C378AF00;
    v17 = vdupq_n_s64(4uLL);
    v18 = inited;
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v15, v16));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        v18[600] = 0;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        v18[1672] = 0;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v15, *&v14))).i32[1])
      {
        v18[2744] = 0;
        v18[3816] = 0;
      }

      v14 = vaddq_s64(v14, v17);
      v16 = vaddq_s64(v16, v17);
      v18 += 4288;
      v13 -= 4;
    }

    while (v13);
  }

  if (v12 <= *(inited + 8592))
  {
    v20 = 0;
  }

  else
  {
    inited = silk_init_decoder((inited + 4288));
    v20 = inited;
    LODWORD(v12) = a2[1];
  }

  v114 = v12 == 1 && *(v11 + 8592) == 2 && a2[3] == 1000 * *(v11 + 2316);
  v21 = *(v11 + 2400);
  v118 = a3;
  v115 = a6;
  if (!v21 && v12 >= 1)
  {
    v22 = 0;
    v23 = v11;
    while (1)
    {
      v24 = a2[4];
      result = 4294967093;
      if (v24 <= 19)
      {
        if (v24)
        {
          v27 = v24 == 10;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          return result;
        }

        v26 = 2;
      }

      else
      {
        if (v24 == 60)
        {
          v26 = 4;
          v28 = 3;
          goto LABEL_35;
        }

        if (v24 == 40)
        {
          v26 = 4;
          v28 = 2;
          goto LABEL_35;
        }

        if (v24 != 20)
        {
          return result;
        }

        v26 = 4;
      }

      v28 = 1;
LABEL_35:
      *(v23 + 2404) = v28;
      *(v23 + 2324) = v26;
      v29 = a2[3] >> 10;
      if (v29 > 0xF || ((1 << v29) & 0x8880) == 0)
      {
        return 4294967096;
      }

      inited = silk_decoder_set_fs(v23, v29 + 1, a2[2]);
      v20 = (inited + v20);
      ++v22;
      v12 = a2[1];
      v23 += 4288;
      if (v22 >= v12)
      {
        a3 = v118;
        break;
      }
    }
  }

  v31 = *a2;
  if (*a2 != 2)
  {
    goto LABEL_48;
  }

  if (v12 != 2)
  {
    goto LABEL_47;
  }

  if (*(v11 + 8588) != 1 && *(v11 + 8592) != 1)
  {
    LODWORD(v12) = 2;
LABEL_47:
    v31 = 2;
    goto LABEL_48;
  }

  *(v11 + 8576) = 0;
  *(v11 + 8584) = 0;
  inited = memcpy((v11 + 6736), (v11 + 2448), 0x130uLL);
  v31 = *a2;
  LODWORD(v12) = a2[1];
LABEL_48:
  *(v11 + 8588) = v31;
  *(v11 + 8592) = v12;
  if ((a2[2] - 48001) < 0xFFFF63BF)
  {
    return 4294967096;
  }

  v113 = (v11 + 6600);
  v117 = v11;
  if (a3 == 1 || *(v11 + 2400))
  {
    goto LABEL_92;
  }

  if (v12 >= 1)
  {
    v32 = 0;
    v33 = v11 + 2416;
    do
    {
      v34 = v11 + 4288 * v32;
      if (*(v34 + 2404) >= 1)
      {
        v35 = 0;
        do
        {
          *(v33 + 4 * v35++) = ec_dec_bit_logp(a5, 1);
        }

        while (v35 < *(v34 + 2404));
      }

      inited = ec_dec_bit_logp(a5, 1);
      *(v34 + 2428) = inited;
      ++v32;
      v12 = a2[1];
      v33 += 4288;
    }

    while (v32 < v12);
    if (v12 >= 1)
    {
      v36 = 0;
      v37 = (v11 + 2444);
      v111 = xmmword_1C378AEF0;
      v110 = xmmword_1C378AF00;
      v112 = vdupq_n_s64(4uLL);
      do
      {
        v38 = v117 + 4288 * v36;
        *(v38 + 2440) = 0;
        *(v38 + 2432) = 0;
        if (*(v38 + 2428))
        {
          v39 = *(v38 + 2404);
          if (v39 == 1)
          {
            *(v38 + 2432) = 1;
          }

          else
          {
            inited = ec_dec_icdf(a5, *(&silk_LBRR_flags_iCDF_ptr + v39 - 2), 8);
            v40 = v112;
            v41 = *(v38 + 2404);
            if (v41 >= 1)
            {
              v42 = 0;
              v43 = inited + 1;
              v44 = (v41 + 3) & 0xFFFFFFFC;
              v45 = vdupq_n_s64(v41 - 1);
              v46 = v37;
              v47 = v110;
              v48 = v111;
              do
              {
                v49 = vmovn_s64(vcgeq_u64(v45, v47));
                if (vuzp1_s16(v49, *v45.i8).u8[0])
                {
                  *(v46 - 3) = (v43 >> v42) & 1;
                }

                if (vuzp1_s16(v49, *&v45).i8[2])
                {
                  *(v46 - 2) = (v43 >> (v42 + 1)) & 1;
                }

                if (vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, *&v48))).i32[1])
                {
                  *(v46 - 1) = (v43 >> (v42 + 2)) & 1;
                  *v46 = (v43 >> (v42 + 3)) & 1;
                }

                v42 += 4;
                v48 = vaddq_s64(v48, v40);
                v47 = vaddq_s64(v47, v40);
                v46 += 4;
              }

              while (v44 != v42);
            }
          }
        }

        ++v36;
        v12 = a2[1];
        v37 += 1072;
      }

      while (v36 < v12);
      v11 = v117;
    }
  }

  if (v118)
  {
    goto LABEL_92;
  }

  v50 = *(v11 + 2404);
  if (v50 < 1)
  {
    goto LABEL_92;
  }

  v51 = 0;
  v52 = v11 + 6720;
  v53 = 2428;
  do
  {
    if (v12 < 1)
    {
      goto LABEL_91;
    }

    v54 = 0;
    do
    {
      if (!*(v11 + v53 + 4))
      {
        goto LABEL_89;
      }

      if (v54 || v12 != 2 || (silk_stereo_decode_pred(a5, v122), *(v52 + 4 * v51)))
      {
        if (!v51)
        {
          goto LABEL_87;
        }
      }

      else
      {
        silk_stereo_decode_mid_only(a5, &v119 + 1);
        if (!v51)
        {
LABEL_87:
          v55 = 0;
          goto LABEL_88;
        }
      }

      if (!*(v11 + v53))
      {
        goto LABEL_87;
      }

      v55 = 2;
LABEL_88:
      silk_decode_indices(v11, a5, v51, 1, v55);
      inited = silk_decode_pulses(a5, &v120, *(v11 + 2789), *(v11 + 2790), *(v11 + 2328));
      LODWORD(v12) = a2[1];
LABEL_89:
      ++v54;
      v11 += 4288;
    }

    while (v54 < v12);
    v11 = v117;
    v50 = *(v117 + 2404);
LABEL_91:
    ++v51;
    v53 += 4;
  }

  while (v51 < v50);
LABEL_92:
  v56 = v118;
  if (v12 == 2)
  {
    if (v118)
    {
      if (v118 == 2 && *(v11 + 4 * *(v11 + 2400) + 2432) == 1)
      {
        inited = silk_stereo_decode_pred(a5, v122);
        if (!*(v11 + 4 * *(v11 + 2400) + 6720))
        {
          goto LABEL_97;
        }

LABEL_100:
        HIDWORD(v119) = 0;
      }

      else
      {
        v57 = *(v113 + 989);
        LODWORD(v122[0]) = *(v113 + 988);
        HIDWORD(v122[0]) = v57;
      }
    }

    else
    {
      inited = silk_stereo_decode_pred(a5, v122);
      if (*(v11 + 4 * *(v11 + 2400) + 6704))
      {
        goto LABEL_100;
      }

LABEL_97:
      inited = silk_stereo_decode_mid_only(a5, &v119 + 1);
    }
  }

  v58 = a2[1];
  v59 = HIDWORD(v119) == 0;
  if (v58 == 2 && HIDWORD(v119) == 0)
  {
    if (*(v11 + 8596) == 1)
    {
      bzero((v11 + 5636), 0x3C0uLL);
      *(v11 + 5604) = 0u;
      *(v11 + 5620) = 0u;
      *(v11 + 5572) = 0u;
      *(v11 + 5588) = 0u;
      *(v11 + 6596) = 100;
      *v113 = 10;
      *(v11 + 8476) = 0;
      *(v11 + 6664) = 1;
      v58 = a2[1];
    }

    else
    {
      v58 = 2;
    }
  }

  v120 = 0;
  v121 = 0;
  v61 = *(v11 + 2328);
  MEMORY[0x1EEE9AC00](inited);
  v63 = &v110 - v62;
  bzero(&v110 - v62, v64);
  v113 = v63;
  v120 = v63;
  v121 = &v63[2 * v61 + 4];
  if (!v56)
  {
    goto LABEL_115;
  }

  if (!*(v11 + 8596))
  {
    v59 = 1;
LABEL_115:
    if (v58 >= 1)
    {
      goto LABEL_116;
    }

    v72 = v115;
    goto LABEL_134;
  }

  v59 = 0;
  if (v56 != 2 || v58 != 2)
  {
    goto LABEL_115;
  }

  v59 = *(v11 + 4 * *(v11 + 6688) + 6720) == 1;
LABEL_116:
  v112.i64[0] = &v63[2 * v61 + 4];
  v66 = 0;
  v67 = v11 + 2432;
  v68 = -1;
  do
  {
    if (v66 == 0 || v59)
    {
      v69 = *(v117 + 2400);
      if (v68 + v69 + 1 < 1)
      {
        v70 = 0;
      }

      else if (v118 == 2)
      {
        v70 = 2 * (*(v67 + 4 * (v69 + v68)) != 0);
      }

      else if (v66 && *(v117 + 8596))
      {
        v70 = 1;
      }

      else
      {
        v70 = 2;
      }

      v65 = silk_decode_frame(v67 - 2432, a5, (&v120)[v66] + 4, &v119, v118, v70);
      v20 = (v65 + v20);
    }

    else
    {
      bzero((&v120)[v66] + 4, 2 * v119);
    }

    ++*(v67 - 32);
    ++v66;
    v71 = a2[1];
    --v68;
    v67 += 4288;
  }

  while (v66 < v71);
  v72 = v115;
  if (v71 == 2)
  {
    v11 = v117;
    v56 = v118;
    if (*a2 == 2)
    {
      v65 = silk_stereo_MS_to_LR((v117 + 8576), v113, v112.i64[0], v122, *(v117 + 2316), v119);
      v73 = v119;
      goto LABEL_135;
    }
  }

  else
  {
    v11 = v117;
    v56 = v118;
  }

LABEL_134:
  v74 = v113;
  *v113 = *(v11 + 8580);
  v73 = v119;
  *(v11 + 8580) = *&v74[2 * v119];
LABEL_135:
  *v116 = a2[2] * v73 / (1000 * *(v11 + 2316));
  v75 = *a2;
  MEMORY[0x1EEE9AC00](v65);
  if (v75 == 2)
  {
    v78 = &v110 - v77;
  }

  else
  {
    v78 = v72;
  }

  bzero(&v110 - v77, v76);
  v79 = a2[1];
  if (v75 >= v79)
  {
    v80 = a2[1];
  }

  else
  {
    v80 = v75;
  }

  if (v80 >= 1)
  {
    v81 = 0;
    do
    {
      v82 = silk_resampler((v11 + 4288 * v81 + 2448), v78, (&v120)[v81] + 2, v119);
      v75 = *a2;
      if (*a2 == 2)
      {
        v83 = *v116;
        if (v83 >= 1)
        {
          v84 = v78;
          v85 = v72;
          do
          {
            v86 = *v84;
            v84 += 2;
            *v85 = v86;
            v85 += 2;
            --v83;
          }

          while (v83);
        }
      }

      v20 = (v82 + v20);
      ++v81;
      v79 = a2[1];
      if (v75 >= v79)
      {
        v87 = a2[1];
      }

      else
      {
        v87 = v75;
      }

      v72 += 2;
    }

    while (v81 < v87);
    v56 = v118;
    v72 = v115;
  }

  if (v75 != 2 || v79 != 1)
  {
    goto LABEL_162;
  }

  if (!v114)
  {
    v91 = *v116;
    if (v91 >= 1)
    {
      v92 = (v72 + 2);
      do
      {
        *v92 = *(v92 - 1);
        v92 += 2;
        --v91;
      }

      while (v91);
    }

LABEL_162:
    result = v20;
    goto LABEL_163;
  }

  result = silk_resampler((v11 + 6736), v78, v113 + 2, v119) + v20;
  v88 = *v116;
  if (v88 >= 1)
  {
    v89 = (v72 + 2);
    do
    {
      v90 = *v78;
      v78 += 2;
      *v89 = v90;
      v89 += 2;
      --v88;
    }

    while (v88);
  }

LABEL_163:
  if (*(v11 + 4188) == 2)
  {
    v93 = dword_1C382EC54[(*(v11 + 2316) - 8) >> 2] * *(v11 + 2308);
  }

  else
  {
    v93 = 0;
  }

  a2[5] = v93;
  if (v56 == 1)
  {
    v94 = *(v11 + 8592);
    if (v94 >= 1)
    {
      v95 = 0;
      v96 = vdupq_n_s64(v94 - 1);
      v97 = xmmword_1C37CA010;
      v98 = xmmword_1C37CA020;
      v99 = xmmword_1C37CA030;
      v100 = xmmword_1C37CA040;
      v101 = xmmword_1C37BDD80;
      v102 = xmmword_1C37BDD90;
      v103 = xmmword_1C378AEF0;
      v104 = xmmword_1C378AF00;
      v105 = vdupq_n_s64(0x10uLL);
      do
      {
        v106 = vmovn_s64(vcgeq_u64(v96, v104));
        if (vuzp1_s8(vuzp1_s16(v106, *v96.i8), *v96.i8).u8[0])
        {
          *(v11 + v95 + 2312) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(v106, *&v96), *&v96).i8[1])
        {
          *(v11 + 6600 + v95) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v103))), *&v96).i8[2])
        {
          *(v11 + 10888 + v95) = 10;
          *(v11 + 15176 + v95) = 10;
        }

        v107 = vmovn_s64(vcgeq_u64(v96, v102));
        if (vuzp1_s8(*&v96, vuzp1_s16(v107, *&v96)).i32[1])
        {
          *(v11 + 19464 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(v107, *&v96)).i8[5])
        {
          *(v11 + 23752 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v101)))).i8[6])
        {
          *(v11 + 28040 + v95) = 10;
          *(v11 + 32328 + v95) = 10;
        }

        v108 = vmovn_s64(vcgeq_u64(v96, v100));
        if (vuzp1_s8(vuzp1_s16(v108, *v96.i8), *v96.i8).u8[0])
        {
          *(v11 + 36616 + v95) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(v108, *&v96), *&v96).i8[1])
        {
          *(v11 + 40904 + v95) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v99))), *&v96).i8[2])
        {
          *(v11 + 45192 + v95) = 10;
          *(v11 + 49480 + v95) = 10;
        }

        v109 = vmovn_s64(vcgeq_u64(v96, v98));
        if (vuzp1_s8(*&v96, vuzp1_s16(v109, *&v96)).i32[1])
        {
          *(v11 + 53768 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(v109, *&v96)).i8[5])
        {
          *(v11 + 58056 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v97)))).i8[6])
        {
          *(v11 + 62344 + v95) = 10;
          *(v11 + 66632 + v95) = 10;
        }

        v102 = vaddq_s64(v102, v105);
        v103 = vaddq_s64(v103, v105);
        v104 = vaddq_s64(v104, v105);
        v101 = vaddq_s64(v101, v105);
        v100 = vaddq_s64(v100, v105);
        v99 = vaddq_s64(v99, v105);
        v98 = vaddq_s64(v98, v105);
        v95 += 68608;
        v97 = vaddq_s64(v97, v105);
      }

      while (68608 * ((v94 + 15) >> 4) != v95);
    }
  }

  else
  {
    *(v11 + 8596) = HIDWORD(v119);
  }

  return result;
}

unint64_t silk_LPC_inverse_pred_gain(__int16 *a1, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
    return LPC_inverse_pred_gain_QA(v7, a2);
  }

  v2 = 0;
  v3 = &v7[64 * (a2 & 1)];
  v4 = a2;
  do
  {
    v5 = *a1++;
    v2 += v5;
    *v3++ = v5 << 12;
    --v4;
  }

  while (v4);
  if (v2 <= 4095)
  {
    return LPC_inverse_pred_gain_QA(v7, a2);
  }

  else
  {
    return 0;
  }
}

unint64_t LPC_inverse_pred_gain_QA(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + ((a2 & 1) << 6));
  v3 = 0x40000000;
  if (a2 >= 2)
  {
    v4 = a2;
    v5 = (a2 << 32) - 0x200000000;
    v6 = a2 - 1;
    v7 = 0x40000000;
    while (1)
    {
      v8 = v4 - 1;
      v9 = v2[v4 - 1];
      if ((v9 - 16773023) < 0xFE0020C3)
      {
        return 0;
      }

      v10 = (a1 + ((v6 & 1) << 6));
      v11 = -128 * v9;
      v12 = -((v9 << 7) * -128 * v9) >> 32;
      v13 = (0x40000000 - v12);
      v14 = (v13 * v7) >> 30;
      if (0x40000000 - v12 >= 0)
      {
        v15 = 0x40000000 - v12;
      }

      else
      {
        v15 = v12 - 0x40000000;
      }

      v16 = __clz(v15);
      v17 = v13 << (v16 - 1);
      v18 = 0x1FFFFFFF / (v17 >> 16);
      v19 = v18 * (v17 >> 16) + ((v18 * v17) >> 16);
      v7 = v14 & 0xFFFFFFFC;
      v20 = (v18 << 16) - 8 * v19 * (((v18 >> 15) + 1) >> 1) + ((-8 * v19) >> 16) * v18 + ((((-8 * v19) & 0xFFF8) * v18) >> 16);
      v21 = v6;
      v22 = v2;
      v23 = v5;
      do
      {
        v24 = *v22++;
        v25 = (v24 - ((((*(v2 + (v23 >> 30)) * v11) >> 30) + 1) >> 1)) * v20;
        v26 = ((v25 >> (31 - v16)) + 1) >> 1;
        v27 = (v25 & 1) + (v25 >> 1);
        if (v16 != 31)
        {
          LODWORD(v27) = v26;
        }

        *v10++ = v27;
        v23 -= 0x100000000;
        --v21;
      }

      while (v21);
      v5 -= 0x100000000;
      --v6;
      v2 = (a1 + ((v8 & 1) << 6));
      if (v4-- < 3)
      {
        v3 = v7;
        v2 = (a1 + ((v8 & 1) << 6));
        break;
      }
    }
  }

  v29 = *v2;
  if ((v29 - 16773023) < 0xFE0020C3)
  {
    return 0;
  }

  return (((0x40000000 - (-((v29 << 7) * -128 * v29) >> 32)) * v3) >> 30) & 0xFFFFFFFC;
}

__int16 *silk_bwexpander(__int16 *result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - 0x10000;
    v4 = (a2 - 1);
    v5 = result;
    do
    {
      *v5 = (((a3 * *v5) >> 15) + 1) >> 1;
      ++v5;
      a3 += (((a3 * v3) >> 15) + 1) >> 1;
      --v4;
    }

    while (v4);
  }

  result[a2 - 1] = (((a3 * result[a2 - 1]) >> 15) + 1) >> 1;
  return result;
}

uint64_t silk_decode_frame(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4, int a5, int a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 2328);
  memset(&v20, 0, 128);
  v21 = 0;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v20.i8[-4 * v13];
  bzero(v14, v15);
  v22 = 0;
  if (a5 == 2)
  {
    v16 = *(a1 + 2400);
    if (*(a1 + 4 * v16 + 2432) == 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    silk_PLC(a1, &v20, a3, 1);
    goto LABEL_7;
  }

  if (a5)
  {
    goto LABEL_6;
  }

  LODWORD(v16) = *(a1 + 2400);
LABEL_5:
  silk_decode_indices(a1, a2, v16, a5, a6);
  silk_decode_pulses(a2, v14, *(a1 + 2789), *(a1 + 2790), *(a1 + 2328));
  silk_decode_parameters(a1, v20.i16, a6);
  silk_decode_core(a1, &v20, a3, v14);
  silk_PLC(a1, &v20, a3, 0);
  *(a1 + 4184) = 0;
  *(a1 + 4188) = *(a1 + 2789);
  *(a1 + 2376) = 0;
LABEL_7:
  v17 = *(a1 + 2328);
  v18 = *(a1 + 2336) - v17;
  memmove((a1 + 1348), (a1 + 1348 + 2 * v17), 2 * v18);
  memcpy((a1 + 1348 + 2 * v18), a3, 2 * *(a1 + 2328));
  silk_PLC_glue_frames(a1, a3, v12);
  silk_CNG(a1, &v20, a3, v12);
  *(a1 + 2308) = v20.i32[*(a1 + 2324) - 1];
  *a4 = v12;
  return 0;
}

uint64_t silk_stereo_decode_pred(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = ec_dec_icdf(a1, silk_stereo_pred_joint_iCDF, 8);
  v12[2] = v4 / 5;
  v13[2] = v4 % 5;
  v12[0] = ec_dec_icdf(a1, silk_uniform3_iCDF, 8);
  v12[1] = ec_dec_icdf(a1, silk_uniform5_iCDF, 8);
  v5 = v12;
  v13[0] = ec_dec_icdf(a1, silk_uniform3_iCDF, 8);
  result = ec_dec_icdf(a1, silk_uniform5_iCDF, 8);
  v7 = 0;
  v13[1] = result;
  v8 = 1;
  do
  {
    v9 = *v5 + 3 * v5[2];
    v10 = (&silk_stereo_pred_quant_Q13 + 2 * v9);
    LODWORD(v10) = *v10 + ((429522944 * ((v10[1] - *v10) >> 16) + 6554 * (v10[1] - *v10)) >> 16) * ((2 * *(v5 + 2)) | 1);
    v11 = v8;
    *v5 = v9;
    a2[v7] = v10;
    v5 = v13;
    v7 = 1;
    v8 = 0;
  }

  while ((v11 & 1) != 0);
  *a2 -= a2[1];
  return result;
}

uint64_t silk_stereo_decode_mid_only(uint64_t a1, _DWORD *a2)
{
  result = ec_dec_icdf(a1, silk_stereo_only_code_mid_iCDF, 8);
  *a2 = result;
  return result;
}

uint64_t silk_decode_signs(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v14[1] = 0;
  v6 = ((a3 + 8) >> 4);
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = &silk_sign_iCDF + 8 * (((a5 << 16) + (a4 << 17)) >> 16) - (((a5 << 16) + (a4 << 17)) >> 16);
    do
    {
      if (*(a6 + 4 * v10) >= 1)
      {
        v12 = 0;
        v13 = *(a6 + 4 * v10) & 0x1F;
        if (v13 >= 6)
        {
          v13 = 6;
        }

        v14[0] = v11[v13];
        do
        {
          if (*(a2 + v12) >= 1)
          {
            result = ec_dec_icdf(v9, v14, 8);
            *(a2 + v12) *= 2 * result - 1;
          }

          v12 += 4;
        }

        while (v12 != 64);
      }

      a2 += 64;
      ++v10;
    }

    while (v10 != v6);
  }

  return result;
}

uint64_t silk_log2lin(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 > 0xF7E)
  {
    return 0x7FFFFFFFLL;
  }

  v2 = 1 << (a1 >> 7);
  v3 = (a1 & 0x7F) + ((-174 * (a1 & 0x7F) * (128 - (a1 & 0x7F))) >> 16);
  v4 = (v3 << (a1 >> 7)) >> 7;
  if (a1 > 0x7FF)
  {
    v4 = v3 * (v2 >> 7);
  }

  return v4 + v2;
}

unsigned int *silk_resampler_private_up2_HQ(unsigned int *result, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = *result;
    v5 = result[1];
    v6 = (a2 + 2);
    v7 = result[2];
    v8 = result[3];
    a4 = a4;
    v10 = result[4];
    v9 = result[5];
    do
    {
      v11 = *a3++;
      v12 = 1746 * (((v11 << 10) - v4) >> 16) + ((1746 * ((v11 << 10) - v4)) >> 16);
      v13 = v12 + v4;
      v4 = v12 + (v11 << 10);
      v14 = 14986 * ((v13 - v5) >> 16) + ((14986 * (v13 - v5)) >> 16);
      v15 = v14 + v5;
      v5 = v14 + v13;
      v16 = v15 - v7;
      v17 = -26453 * (v16 >> 16) + ((-26453 * v16) >> 16) + v15;
      v7 = v17 + v16;
      v18 = ((v17 >> 9) + 1) >> 1;
      v19 = 6854 * (((v11 << 10) - v8) >> 16) + ((6854 * ((v11 << 10) - v8)) >> 16);
      v20 = v19 + v8;
      v8 = v19 + (v11 << 10);
      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      v21 = 25769 * ((v20 - v10) >> 16) + ((25769 * (v20 - v10)) >> 16);
      v22 = v21 + v10;
      v10 = v21 + v20;
      v23 = v22 - v9;
      v24 = -9994 * (v23 >> 16) + ((-9994 * v23) >> 16) + v22;
      if (v18 >= 0x7FFF)
      {
        v25 = 0x7FFF;
      }

      else
      {
        v25 = v18;
      }

      v9 = v24 + v23;
      v26 = ((v24 >> 9) + 1) >> 1;
      *(v6 - 1) = v25;
      if (v26 <= -32768)
      {
        v26 = -32768;
      }

      if (v26 >= 0x7FFF)
      {
        LOWORD(v26) = 0x7FFF;
      }

      *v6 = v26;
      v6 += 2;
      --a4;
    }

    while (a4);
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v8;
    result[4] = v10;
    result[5] = v9;
  }

  return result;
}

int *silk_bwexpander_32(int *result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v4 = a3 - 0x10000;
    v5 = (a2 - 1);
    v6 = result;
    do
    {
      *v6 = *v6 * (a3 >> 16) + ((*v6 * a3) >> 16) + (((*v6 >> 15) + 1) >> 1) * a3;
      ++v6;
      a3 += (((a3 * v4) >> 15) + 1) >> 1;
      --v5;
    }

    while (v5);
  }

  v3 = a2 - 1;
  result[v3] = result[v3] * (a3 >> 16) + ((result[v3] * a3) >> 16) + (((result[v3] >> 15) + 1) >> 1) * a3;
  return result;
}

void *silk_resampler_private_down_FIR(uint64_t a1, _WORD *a2, __int16 *a3, int a4)
{
  v81 = a4;
  v82 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 268);
  v8 = *(a1 + 276);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v80[-v9];
  bzero(&v80[-v9], v11);
  memcpy(v10, (a1 + 24), 4 * v8);
  v12 = *(a1 + 296);
  v13 = v12 + 4;
  v14 = *(a1 + 272);
  for (i = v12; ; i = *(a1 + 296))
  {
    if (v81 < v7)
    {
      v7 = v81;
    }

    silk_resampler_private_AR2(a1, &v10[4 * v8], a3, i, v7);
    v18 = v7 << 16;
    v19 = *(a1 + 276);
    if (v19 == 18)
    {
      if (v18 >= 1)
      {
        v62 = 0;
        v63 = *(a1 + 280);
        v64.i64[0] = 0xFFFF0000FFFFLL;
        v64.i64[1] = 0xFFFF0000FFFFLL;
        do
        {
          v65 = &v10[4 * (v62 >> 16)];
          v66 = v62 * v63;
          v67 = (v13 + 18 * (v66 >> 16));
          v68 = v13 + 18 * (v63 + ~(v66 >> 16));
          v69 = *(v65 + 56);
          v16.i64[0] = *(v65 + 6);
          v70.i16[0] = v67[1].i16[0];
          v70.i16[1] = *v68;
          v71 = vmovl_high_s16(*v67);
          v72 = vmovl_s16(*v67->i8);
          v70.i16[2] = *(v68 + 2);
          v17.i32[0] = *(v65 + 8);
          v70.i16[3] = *(v68 + 4);
          v73 = vrev64q_s32(vextq_s8(v69, v17, 4uLL));
          v74 = vextq_s8(v73, v73, 8uLL);
          v75 = vuzp1q_s32(v69, v16);
          v75.i32[1] = v16.i32[1];
          v16 = vmovl_s16(*(v68 + 6));
          v75.i32[3] = *(v65 + 11);
          v76 = vshrq_n_s32(v74, 0x10uLL);
          v77 = vmovl_s16(v70);
          v17 = vandq_s8(v74, v64);
          v78 = (((vaddvq_s32(vaddq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(*v65, v64), v72), 0x10uLL), vmulq_s32(v17, v77), 0x10uLL), vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(*(v65 + 1), v64), v71), 0x10uLL), vmulq_s32(vandq_s8(v75, v64), v16), 0x10uLL)), vaddq_s32(vmlaq_s32(vmulq_s32(v76, v77), vshrq_n_s32(*v65, 0x10uLL), v72), vmlaq_s32(vmulq_s32(vshrq_n_s32(v75, 0x10uLL), v16), vshrq_n_s32(*(v65 + 1), 0x10uLL), v71)))) + ((*(v65 + 10) * *(v68 + 14)) >> 16) + (*(v65 + 10) >> 16) * *(v68 + 14) + ((*(v65 + 9) * *(v68 + 16)) >> 16) + (*(v65 + 9) >> 16) * *(v68 + 16)) >> 5) + 1) >> 1;
          if (v78 <= -32768)
          {
            v78 = -32768;
          }

          if (v78 >= 0x7FFF)
          {
            LOWORD(v78) = 0x7FFF;
          }

          *a2++ = v78;
          v62 += v14;
        }

        while (v62 < v18);
      }
    }

    else if (v19 == 24)
    {
      v42.i64[0] = 0xFFFF0000FFFFLL;
      v42.i64[1] = 0xFFFF0000FFFFLL;
      if (v18 >= 1)
      {
        for (j = 0; j < v18; j += v14)
        {
          v44 = &v10[4 * (j >> 16)];
          v45 = vrev64q_s32(v44[5]);
          v46 = vrev64q_s32(v44[4]);
          v47 = vaddq_s32(vextq_s8(v46, v46, 8uLL), v44[1]);
          v48 = vaddq_s32(vextq_s8(v45, v45, 8uLL), *v44);
          v49 = *(v12 + 4);
          v50 = vmovl_s16(*v49.i8);
          v51 = vmovl_high_s16(v49);
          v52 = *(v12 + 20);
          v53 = ((v44[3].i32[3] + v44[2].i32[0]) >> 16) * v52;
          v54 = (v44[3].i16[6] + v44[2].i16[0]) * v52;
          v55 = (v44[3].i32[2] + v44[2].i32[1]) >> 16;
          v56 = *(v12 + 22);
          v57 = (v44[3].i16[4] + v44[2].i16[2]) * v56;
          v58 = *(v12 + 24);
          v59 = ((v44[3].i32[1] + v44[2].i32[2]) >> 16) * v58;
          v60 = (v44[3].i16[2] + v44[2].i16[4]) * v58;
          LODWORD(v44) = v44[3].i32[0] + v44[2].i32[3];
          v61 = (((vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v48, v42), v50), 0x10uLL), vmulq_s32(vandq_s8(v47, v42), v51), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(v47, 0x10uLL), v51), vshrq_n_s32(v48, 0x10uLL), v50))) + (v54 >> 16) + (v57 >> 16) + (v60 >> 16) + v53 + ((v44 * *(v12 + 26)) >> 16) + v59 + v55 * v56 + (v44 >> 16) * *(v12 + 26)) >> 5) + 1) >> 1;
          if (v61 <= -32768)
          {
            v61 = -32768;
          }

          if (v61 >= 0x7FFF)
          {
            LOWORD(v61) = 0x7FFF;
          }

          *a2++ = v61;
        }
      }
    }

    else
    {
      v20 = v19 != 36 || v18 < 1;
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      if (!v20)
      {
        v22 = 0;
        do
        {
          v23 = &v10[4 * (v22 >> 16)];
          v24 = vrev64q_s32(v23[8]);
          v25 = vrev64q_s32(v23[7]);
          v26 = vaddq_s32(vextq_s8(v25, v25, 8uLL), v23[1]);
          v27 = vaddq_s32(vextq_s8(v24, v24, 8uLL), *v23);
          v28 = *(v12 + 4);
          v29 = vmovl_s16(*v28.i8);
          v30 = vmovl_high_s16(v28);
          v31 = vrev64q_s32(v23[5]);
          v32 = vrev64q_s32(v23[6]);
          v33 = vaddq_s32(vextq_s8(v32, v32, 8uLL), v23[2]);
          v34 = vaddq_s32(vextq_s8(v31, v31, 8uLL), v23[3]);
          v35 = *(v12 + 20);
          v36 = vmovl_high_s16(v35);
          v37 = vmovl_s16(*v35.i8);
          v38 = *(v12 + 36);
          v39 = ((v23[4].i32[3] + v23[4].i32[0]) >> 16) * v38;
          v40 = (v23[4].i16[6] + v23[4].i16[0]) * v38;
          LODWORD(v23) = v23[4].i32[2] + v23[4].i32[1];
          v41 = (((vaddvq_s32(vaddq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v27, v21), v29), 0x10uLL), vmulq_s32(vandq_s8(v26, v21), v30), 0x10uLL), vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v33, v21), v37), 0x10uLL), vmulq_s32(vandq_s8(v34, v21), v36), 0x10uLL)), vaddq_s32(vmlaq_s32(vmulq_s32(vshrq_n_s32(v33, 0x10uLL), v37), vshrq_n_s32(v27, 0x10uLL), v29), vmlaq_s32(vmulq_s32(vshrq_n_s32(v34, 0x10uLL), v36), vshrq_n_s32(v26, 0x10uLL), v30)))) + (v40 >> 16) + v39 + ((v23 * *(v12 + 38)) >> 16) + (v23 >> 16) * *(v12 + 38)) >> 5) + 1) >> 1;
          if (v41 <= -32768)
          {
            v41 = -32768;
          }

          if (v41 >= 0x7FFF)
          {
            LOWORD(v41) = 0x7FFF;
          }

          *a2++ = v41;
          v22 += v14;
        }

        while (v22 < v18);
      }
    }

    v81 -= v7;
    if (v81 <= 1)
    {
      break;
    }

    a3 += v7;
    memcpy(v10, &v10[4 * v7], 4 * v19);
    v7 = *(a1 + 268);
    LODWORD(v8) = *(a1 + 276);
  }

  return memcpy((a1 + 24), &v10[4 * v7], 4 * v19);
}

_WORD *silk_NLSF_VQ_weights_laroia(_WORD *result, __int16 *a2, int a3)
{
  v3 = *a2;
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a2;
  }

  v5 = 0x20000 / v4;
  v6 = a2[1] - v3;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = 0x20000u / v6;
  v8 = 0x20000u / v6 + v5;
  if (v8 >= 0x7FFF)
  {
    LOWORD(v8) = 0x7FFF;
  }

  *result = v8;
  v9 = (a3 - 1);
  if (a3 <= 2)
  {
    v9 = v9;
  }

  else
  {
    v10 = a2 + 2;
    v11 = result + 2;
    v12 = 1;
    do
    {
      v13 = *v10 - *(v10 - 1);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = 0x20000u / v13;
      v15 = v14 + v7;
      if (v15 >= 0x7FFF)
      {
        LOWORD(v15) = 0x7FFF;
      }

      *(v11 - 1) = v15;
      v12 += 2;
      v16 = v10[1] - *v10;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v7 = 0x20000u / v16;
      v17 = v7 + v14;
      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *v11 = v17;
      v11 += 2;
      v10 += 2;
    }

    while (v12 < v9);
  }

  v18 = 0x20000u / (0x8000 - a2[v9]) + v7;
  if (v18 >= 0x7FFF)
  {
    LOWORD(v18) = 0x7FFF;
  }

  result[v9] = v18;
  return result;
}

uint64_t silk_CNG_Reset(uint64_t result)
{
  v1 = *(result + 2340);
  if (v1 >= 1)
  {
    v2 = 0x7FFFu / (v1 + 1);
    v3 = (v1 + 7) & 0xFFFFFFF8;
    v4 = vdupq_n_s32(v2);
    v5 = vmovn_s32(v4);
    v6 = vmull_u16(v5, 0x7000600050004);
    v7 = vmull_u16(v5, 0x3000200010000);
    v8 = vdupq_n_s32(8 * v2);
    v9 = vdupq_n_s64(v1 - 1);
    v10 = xmmword_1C37BDD80;
    v11 = xmmword_1C37BDD90;
    v12 = xmmword_1C378AEF0;
    v13 = xmmword_1C378AF00;
    v14 = (result + 4090);
    v15 = vdupq_n_s64(8uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v9, v13));
      v17 = vaddq_s32(v7, v4);
      if (vuzp1_s8(vuzp1_s16(v16, *v4.i8), *v4.i8).u8[0])
      {
        *(v14 - 7) = v17.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v4), *&v4).i8[1])
      {
        *(v14 - 6) = v17.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v9, *&v12))), *&v4).i8[2])
      {
        *(v14 - 5) = v17.i16[4];
        *(v14 - 4) = v17.i16[6];
      }

      v18 = vaddq_s32(v6, v4);
      v19 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s8(*&v4, vuzp1_s16(v19, *&v4)).i32[1])
      {
        *(v14 - 3) = v18.i16[0];
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v19, *&v4)).i8[5])
      {
        *(v14 - 2) = v18.i16[2];
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v9, *&v10)))).i8[6])
      {
        *(v14 - 1) = v18.i16[4];
        *v14 = v18.i16[6];
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v7 = vaddq_s32(v7, v8);
      v14 += 8;
      v6 = vaddq_s32(v6, v8);
      v3 -= 8;
    }

    while (v3);
  }

  *(result + 4172) = 0x30788000000000;
  return result;
}

void silk_CNG(char *a1, uint64_t a2, __int16 *a3, unsigned int a4)
{
  v7 = a1;
  v91 = *MEMORY[0x1E69E9840];
  v8 = a1 + 2796;
  v9 = *(a1 + 579);
  if (v9 != *(a1 + 1045))
  {
    v10 = *(a1 + 585);
    if (v10 >= 1)
    {
      v11 = 0x7FFFu / (v10 + 1);
      v12 = (v10 + 7) & 0xFFFFFFF8;
      v13 = vdupq_n_s32(v11);
      v14 = vmovn_s32(v13);
      v15 = vmull_u16(v14, 0x7000600050004);
      v16 = vmull_u16(v14, 0x3000200010000);
      v17 = vdupq_n_s32(8 * v11);
      v18 = vdupq_n_s64(v10 - 1);
      v19 = xmmword_1C37BDD80;
      v20 = xmmword_1C37BDD90;
      v21 = xmmword_1C378AEF0;
      v22 = xmmword_1C378AF00;
      v23 = a1 + 4090;
      v24 = vdupq_n_s64(8uLL);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v18, v22));
        v26 = vaddq_s32(v16, v13);
        if (vuzp1_s8(vuzp1_s16(v25, *v13.i8), *v13.i8).u8[0])
        {
          *(v23 - 7) = v26.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v25, *&v13), *&v13).i8[1])
        {
          *(v23 - 6) = v26.i16[2];
        }

        if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v18, *&v21))), *&v13).i8[2])
        {
          *(v23 - 5) = v26.i16[4];
          *(v23 - 4) = v26.i16[6];
        }

        v27 = vaddq_s32(v15, v13);
        v28 = vmovn_s64(vcgeq_u64(v18, v20));
        if (vuzp1_s8(*&v13, vuzp1_s16(v28, *&v13)).i32[1])
        {
          *(v23 - 3) = v27.i16[0];
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(v28, *&v13)).i8[5])
        {
          *(v23 - 2) = v27.i16[2];
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v18, *&v19)))).i8[6])
        {
          *(v23 - 1) = v27.i16[4];
          *v23 = v27.i16[6];
        }

        v20 = vaddq_s64(v20, v24);
        v21 = vaddq_s64(v21, v24);
        v22 = vaddq_s64(v22, v24);
        v19 = vaddq_s64(v19, v24);
        v16 = vaddq_s32(v16, v17);
        v23 += 16;
        v15 = vaddq_s32(v15, v17);
        v12 -= 8;
      }

      while (v12);
    }

    *(a1 + 4172) = 0x30788000000000;
    *(a1 + 1045) = v9;
  }

  if (*(a1 + 1046))
  {
    goto LABEL_34;
  }

  if (!*(a1 + 1047))
  {
    v29 = *(a1 + 585);
    if (v29 >= 1)
    {
      v30 = a1 + 2344;
      do
      {
        *(v30 + 866) += 16348 * ((*v30 - *(v30 + 866)) >> 16) + ((16348 * (*v30 - *(v30 + 866))) >> 16);
        v30 += 2;
        --v29;
      }

      while (v29);
    }

    v31 = *(a1 + 581);
    if (v31 < 1)
    {
      v34 = 0;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        if (*(a2 + 16 + 4 * v32) > v33)
        {
          v34 = v32;
          v33 = *(a2 + 16 + 4 * v32);
        }

        ++v32;
      }

      while (v31 != v32);
    }

    memmove(&v8[4 * *(a1 + 583)], v8, 4 * *(a1 + 583) * (v31 - 1));
    a1 = memcpy(v8, &v7[4 * *(v7 + 583) * v34 + 4], 4 * *(v7 + 583));
    v35 = *(v7 + 581);
    if (v35 >= 1)
    {
      v36 = (a2 + 16);
      v37 = *(v7 + 1043);
      do
      {
        v38 = *v36++;
        v37 += 4634 * ((v38 - v37) >> 16) + ((4634 * (v38 - v37)) >> 16);
        *(v7 + 1043) = v37;
        --v35;
      }

      while (v35);
    }
  }

  if (*(v7 + 1046))
  {
LABEL_34:
    MEMORY[0x1EEE9AC00](a1);
    v40 = &v86[-v39 - 8];
    bzero(&v86[-v39 - 8], v41 + 64);
    v42 = *(v7 + 1043);
    v43 = 255;
    do
    {
      v44 = v43;
      v43 >>= 1;
    }

    while (v44 > a4);
    v45 = *(v7 + 1044);
    if (a4)
    {
      v46 = (v40 + 64);
      v47 = (v42 >> 4);
      v48 = v42 >> 19;
      v49 = a4;
      v50 = (v48 + 1) >> 1;
      do
      {
        v45 = 196314165 * v45 + 907633515;
        v51 = *&v8[4 * (v44 & HIBYTE(v45))];
        v52 = v51 * v50 + (v51 >> 16) * v47 + ((v51 * v47) >> 16);
        if (v52 <= -32768)
        {
          v52 = -32768;
        }

        if (v52 >= 0x7FFF)
        {
          v52 = 0x7FFF;
        }

        *v46++ = v52;
        --v49;
      }

      while (v49);
    }

    *(v7 + 1044) = v45;
    silk_NLSF2A(v86, v7 + 2038, *(v7 + 585));
    v53 = *(v7 + 4124);
    *v40 = *(v7 + 4108);
    *(v40 + 1) = v53;
    v54 = *(v7 + 4156);
    *(v40 + 2) = *(v7 + 4140);
    *(v40 + 3) = v54;
    if (a4 >= 1)
    {
      v55 = *(v7 + 585);
      v56 = *v86;
      v57 = vmovl_s16(*&v86[2]);
      v58 = vmovl_high_s16(*&v86[2]);
      v59 = v87;
      v60 = vmovl_s16(v88);
      v61 = v89;
      v62 = v90;
      v63 = a4;
      v64 = *(v40 + 15);
      v65 = vmovl_high_s16(*v86);
      v66 = vmovl_s16(*v86);
      v67 = (v40 + 64);
      v68.i64[0] = 0xFFFF0000FFFFLL;
      v68.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        v69 = *(v67 - 5);
        v70 = *(v67 - 9);
        v71 = vrev64q_s32(vextq_s8(v70, v69, 4uLL));
        v72 = vandq_s8(v70, v68);
        v73 = vrev64q_s32(vextq_s8(v69, v69, 0xCuLL));
        v73.i32[0] = v64;
        v74 = vrev64q_s32(vandq_s8(v69, v68));
        v75 = vrev64q_s32(v72);
        v76 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v74, v74, 8uLL), v57), 0x10uLL), vmulq_s32(vextq_s8(v75, v75, 8uLL), v58), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(vextq_s8(v71, v71, 8uLL), 0x10uLL), v65), vshrq_n_s32(v73, 0x10uLL), v66))) + ((v64 * v56) >> 16) + (*(v67 - 9) >> 16) * v58.i32[3] + ((*(v67 - 10) * v59) >> 16) + (v55 >> 1) + (*(v67 - 10) >> 16) * v59;
        if (v55 == 16)
        {
          v77 = *(v67 - 14);
          v78 = vrev64q_s32(vshrq_n_s32(v77, 0x10uLL));
          v79 = vrev64q_s32(vandq_s8(v77, v68));
          v76 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v78, v78, 8uLL), v60), vmulq_s32(vextq_s8(v79, v79, 8uLL), v60), 0x10uLL)) + ((*(v67 - 15) * v61) >> 16) + (*(v67 - 15) >> 16) * v61 + ((*(v67 - 16) * v62) >> 16) + (*(v67 - 16) >> 16) * v62;
        }

        v64 = *v67 + 16 * v76;
        *v67++ = v64;
        v80 = *a3 + (((v76 >> 5) + 1) >> 1);
        if (v80 <= -32768)
        {
          v80 = -32768;
        }

        if (v80 >= 0x7FFF)
        {
          LOWORD(v80) = 0x7FFF;
        }

        *a3++ = v80;
        --v63;
      }

      while (v63);
    }

    v81 = &v40[4 * a4];
    v82 = v81[1];
    *(v7 + 4108) = *v81;
    *(v7 + 4124) = v82;
    v83 = v81[3];
    *(v7 + 4140) = v81[2];
    *(v7 + 4156) = v83;
  }

  else
  {
    v84 = 4 * *(v7 + 585);

    bzero(v7 + 4108, v84);
  }
}

uint64_t silk_NLSF2A(__int16 *a1, __int16 *a2, int a3)
{
  *(&v68[7] + 4) = *MEMORY[0x1E69E9840];
  v6 = &silk_NLSF2A_ordering16;
  if (a3 != 16)
  {
    v6 = &silk_NLSF2A_ordering10;
  }

  v7 = a3;
  v8 = a3 - 1;
  if (a3 >= 1)
  {
    v9 = a3;
    do
    {
      v10 = *a2++;
      v11 = ((((silk_LSFCosTab_FIX_Q12[(v10 >> 8) + 1] - silk_LSFCosTab_FIX_Q12[v10 >> 8]) * v10 + (silk_LSFCosTab_FIX_Q12[v10 >> 8] << 8)) >> 3) + 1) >> 1;
      v12 = *v6++;
      *(&v67 + v12) = v11;
      --v9;
    }

    while (v9);
    v3 = v67;
  }

  v13 = (a3 >> 1);
  v65 = 0x10000;
  v66[0] = -v3;
  if (v13 <= 1)
  {
    v63 = 0x10000;
    v64[0] = -LODWORD(v68[0]);
  }

  else
  {
    v14 = v66;
    v15 = 1;
    v16 = 2;
    do
    {
      v17 = *(&v67 + 2 * v15);
      v18 = v15 + 1;
      v66[v15] = 2 * v66[v15 - 2] - ((((v66[v15 - 1] * v17) >> 15) + 1) >> 1);
      if (v15 >= 2)
      {
        v19 = v14;
        v20 = v16;
        v21 = v14;
        do
        {
          v22 = *--v21;
          *v19 = *v19 + *(v19 - 2) - ((((v22 * v17) >> 15) + 1) >> 1);
          --v20;
          v19 = v21;
        }

        while (v20 > 2);
      }

      v66[0] -= v17;
      ++v16;
      ++v14;
      v15 = v18;
    }

    while (v18 != v13);
    v23 = v64;
    v63 = 0x10000;
    v64[0] = -LODWORD(v68[0]);
    v24 = 1;
    v25 = 2;
    do
    {
      v26 = v68[v24];
      v27 = v24 + 1;
      v64[v24] = 2 * v64[v24 - 2] - ((((v64[v24 - 1] * v26) >> 15) + 1) >> 1);
      if (v24 >= 2)
      {
        v28 = v23;
        v29 = v25;
        v30 = v23;
        do
        {
          v31 = *--v30;
          *v28 = *v28 + *(v28 - 2) - ((((v31 * v26) >> 15) + 1) >> 1);
          --v29;
          v28 = v30;
        }

        while (v29 > 2);
      }

      v64[0] -= v26;
      ++v25;
      ++v23;
      v24 = v27;
    }

    while (v27 != v13);
  }

  if (v13 >= 1)
  {
    v32 = v65;
    v33 = v63;
    v34 = v64;
    v35 = v66;
    v36 = v62;
    do
    {
      v38 = *v35++;
      v37 = v38;
      v39 = v32 + v38;
      v40 = *v34++;
      v41 = v40 - v33;
      *v36++ = -(v39 + v41);
      v62[v8--] = v41 - v39;
      v33 = v40;
      v32 = v37;
      --v13;
    }

    while (v13);
  }

  v42 = 0;
  v43 = 0;
  while (a3 >= 1)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = v62[v44];
      if (v46 < 0)
      {
        v46 = -v46;
      }

      if (v46 > v45)
      {
        v45 = v46;
        v42 = v44;
      }

      ++v44;
    }

    while (v7 != v44);
    if (v45 < 0xFFFF0)
    {
      v52 = v62;
      v53 = v7;
      v54 = a1;
      do
      {
        v55 = *v52++;
        *v54++ = ((v55 >> 4) + 1) >> 1;
        --v53;
      }

      while (v53);
      break;
    }

    v47 = ((v45 >> 4) + 1) >> 1;
    if (v47 >= 0x27FFE)
    {
      v47 = 163838;
    }

    silk_bwexpander_32(v62, v7, 65470 - ((v47 << 14) - 536854528) / ((v47 + v47 * v42) >> 2));
    if (++v43 == 10)
    {
      v48 = v62;
      v49 = v7;
      v50 = a1;
      do
      {
        v51 = ((*v48 >> 4) + 1) >> 1;
        if (v51 <= -32768)
        {
          v51 = -32768;
        }

        if (v51 >= 0x7FFF)
        {
          v51 = 0x7FFF;
        }

        *v50++ = v51;
        *v48++ = 32 * v51;
        --v49;
      }

      while (v49);
      break;
    }
  }

  for (i = 0; i != 16; ++i)
  {
    result = silk_LPC_inverse_pred_gain(a1, a3);
    if (result > 107373)
    {
      break;
    }

    result = silk_bwexpander_32(v62, a3, (-2 << i) + 0x10000);
    if (a3 >= 1)
    {
      v58 = v62;
      v59 = v7;
      v60 = a1;
      do
      {
        v61 = *v58++;
        *v60++ = ((v61 >> 4) + 1) >> 1;
        --v59;
      }

      while (v59);
    }
  }

  return result;
}

unsigned __int16 *silk_stereo_MS_to_LR(unsigned __int16 *result, _DWORD *a2, _DWORD *a3, int *a4, int a5, int a6)
{
  *a2 = *(result + 1);
  *a3 = *(result + 2);
  v6 = 2 * a6;
  *(result + 1) = *(a2 + v6);
  *(result + 2) = *(a3 + v6);
  v7 = 8 * a5;
  v8 = *a4;
  v9 = a4[1];
  if (a5 >= 1)
  {
    v10 = *result;
    v11 = result[1];
    v12 = (0x10000 / v7);
    v13 = (((v12 * (v8 - v10)) >> 15) + 1) >> 1;
    v14 = (((v12 * (v9 - v11)) >> 15) + 1) >> 1;
    v15 = (a2 + 1);
    v16 = a3 + 1;
    v17 = (v14 + v11) << 16;
    v18 = v14 << 16;
    v19 = (v13 + v10) << 16;
    v20 = v13 << 16;
    v21 = (8 * a5);
    do
    {
      v22 = *(v15 - 1);
      v23 = (v22 << 10) + ((*v15 + *(v15 - 2)) << 9);
      v24 = ((((v22 >> 5) * (v17 >> 16) + (*v16 << 8) + ((((v22 & 0x1F) << 11) * (v17 >> 16)) >> 16) + (v23 >> 16) * (v19 >> 16) + (((v23 & 0xFE00) * (v19 >> 16)) >> 16)) >> 7) + 1) >> 1;
      if (v24 <= -32768)
      {
        v24 = -32768;
      }

      if (v24 >= 0x7FFF)
      {
        LOWORD(v24) = 0x7FFF;
      }

      *v16++ = v24;
      ++v15;
      v17 += v18;
      v19 += v20;
      --v21;
    }

    while (v21);
  }

  if (v7 < a6)
  {
    v25 = 2 * v7 + 2;
    v26 = (a3 + v25);
    v27 = (a2 + v25);
    v28 = a6 - v7;
    v29 = a2 + v25;
    do
    {
      v30 = *(v29 + 1);
      v29 += 2;
      v31 = v30 + *(v27 - 1);
      v32 = *v27;
      v33 = ((((v32 >> 5) * v9 + (*v26 << 8) + ((((v32 & 0x1F) << 11) * v9) >> 16) + (((v32 << 10) + (v31 << 9)) >> 16) * v8 + (((((v32 << 10) + (v31 << 9)) & 0xFE00) * v8) >> 16)) >> 7) + 1) >> 1;
      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      if (v33 >= 0x7FFF)
      {
        LOWORD(v33) = 0x7FFF;
      }

      *v26++ = v33;
      v27 = v29;
      --v28;
    }

    while (v28);
  }

  *result = v8;
  result[1] = v9;
  if (a6 >= 1)
  {
    v34 = a3 + 1;
    v35 = a2 + 1;
    v36 = a6;
    do
    {
      v37 = *v35;
      v38 = *v34;
      v39 = v37 + v38;
      if (v37 + v38 >= 0x7FFF)
      {
        v39 = 0x7FFF;
      }

      if (v39 <= -32768)
      {
        LOWORD(v39) = 0x8000;
      }

      *v35++ = v39;
      v40 = v37 - v38;
      if (v40 >= 0x7FFF)
      {
        v40 = 0x7FFF;
      }

      if (v40 <= -32768)
      {
        LOWORD(v40) = 0x8000;
      }

      *v34++ = v40;
      --v36;
    }

    while (v36);
  }

  return result;
}

uint64_t silk_decode_pitch(uint64_t result, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = 3;
  if (a5 == 4)
  {
    v5 = 11;
  }

  v6 = &silk_CB_lags_stage2_10_ms;
  if (a5 == 4)
  {
    v6 = &silk_CB_lags_stage2;
  }

  v7 = 12;
  if (a5 == 4)
  {
    v7 = 34;
    v8 = &silk_CB_lags_stage3;
  }

  else
  {
    v8 = &silk_CB_lags_stage3_10_ms;
  }

  if (a4 == 8)
  {
    v8 = v6;
  }

  else
  {
    v5 = v7;
  }

  if (a5 >= 1)
  {
    v9 = 2 * a4;
    v10 = 18 * a4;
    v12 = a5;
    v13 = &v8[a2];
    if (v9 <= v10)
    {
      v14 = 18 * a4;
    }

    else
    {
      v14 = 2 * a4;
    }

    if (v9 >= v10)
    {
      v9 = 18 * a4;
    }

    do
    {
      v11 = result + 2 * a4;
      v15 = v11 + *v13;
      if (v15 <= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v11 + *v13;
      }

      if (v15 <= v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      *a3++ = v17;
      v13 += v5;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t silk_decoder_set_fs(uint64_t a1, int a2, unsigned int a3)
{
  v6 = a2;
  *(a1 + 2332) = 5 * a2;
  v7 = *(a1 + 2324) * (5 * a2);
  if (*(a1 + 2316) == a2 && *(a1 + 2320) == a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = silk_resampler_init(a1 + 2448, 1000 * a2, a3, 0);
    v9 = 0;
    *(a1 + 2320) = a3;
    if (*(a1 + 2316) != a2)
    {
      goto LABEL_7;
    }
  }

  if (v7 != *(a1 + 2328))
  {
    v9 = 1;
LABEL_7:
    v10 = *(a1 + 2324);
    v11 = v10 == 4;
    if (v10 == 4)
    {
      v12 = &silk_pitch_contour_NB_iCDF;
    }

    else
    {
      v12 = &silk_pitch_contour_10_ms_NB_iCDF;
    }

    v13 = &silk_pitch_contour_10_ms_iCDF;
    if (v11)
    {
      v13 = &silk_pitch_contour_iCDF;
    }

    if (a2 != 8)
    {
      v12 = v13;
    }

    *(a1 + 2392) = v12;
    if (v9)
    {
      goto LABEL_26;
    }

    *(a1 + 2336) = 20 * v6;
    if ((a2 | 4) == 0xC)
    {
      v14 = &silk_NLSF_CB_NB_MB;
      v15 = 10;
    }

    else
    {
      v14 = &silk_NLSF_CB_WB;
      v15 = 16;
    }

    *(a1 + 2340) = v15;
    *(a1 + 2752) = v14;
    switch(a2)
    {
      case 16:
        v16 = silk_uniform8_iCDF;
        break;
      case 12:
        v16 = &silk_uniform6_iCDF;
        break;
      case 8:
        v16 = silk_uniform4_iCDF;
        break;
      default:
LABEL_25:
        *(a1 + 2376) = 1;
        *(a1 + 2308) = 100;
        *(a1 + 2312) = 10;
        *(a1 + 4188) = 0;
        bzero((a1 + 1348), 0x3C0uLL);
        *(a1 + 1316) = 0u;
        *(a1 + 1332) = 0u;
        *(a1 + 1284) = 0u;
        *(a1 + 1300) = 0u;
LABEL_26:
        *(a1 + 2316) = a2;
        *(a1 + 2328) = v7;
        return v8;
    }

    *(a1 + 2384) = v16;
    goto LABEL_25;
  }

  return v8;
}

uint64_t silk_init_decoder(_DWORD *a1)
{
  bzero(a1, 0x10C0uLL);
  a1[594] = 1;
  *a1 = 0x10000;
  silk_CNG_Reset(a1);
  silk_PLC_Reset(a1);
  return 0;
}

unsigned int *silk_sum_sqr_shift(unsigned int *result, int *a2, uint64_t a3, int a4)
{
  v4 = a4 - 1;
  if (a4 < 2)
  {
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = (a3 + 2);
    while (1)
    {
      v6 += *(v7 - 1) * *(v7 - 1) + *v7 * *v7;
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      v7 += 2;
      v5 += 2;
      if (v4 <= v5)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    v6 >>= 2;
    v8 = 2;
  }

LABEL_8:
  if (v5 < v4)
  {
    v9 = (a3 + 2 * v5 + 2);
    do
    {
      v6 += (*(v9 - 1) * *(v9 - 1) + *v9 * *v9) >> v8;
      if ((v6 & 0x80000000) != 0)
      {
        v8 += 2;
        v6 >>= 2;
      }

      v9 += 2;
      v5 += 2;
    }

    while (v4 > v5);
  }

  if (v5 == v4)
  {
    v10 = *(a3 + 2 * v4);
    v6 += (v10 * v10) >> v8;
  }

  v11 = v6 >> 2;
  v12 = v8 + 2;
  if (!(v6 >> 30))
  {
    v12 = v8;
    v11 = v6;
  }

  *a2 = v12;
  *result = v11;
  return result;
}

uint64_t BET3FLT__InitTreeSet(uint64_t a1, _OWORD *a2)
{
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
  return 0;
}

double BET3FLT__DeInitTreeSet(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    for (i = 104; i != 184; i += 8)
    {
      v5 = *(a2 + i);
      if (v5)
      {
        heap_Free(*(a1 + 8), v5);
      }
    }

    result = 0.0;
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

uint64_t BET3FLT__LoadTreesFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v20 = 0;
  v7 = *a4;
  if (a4[4] - v7 >= 8 && *(*(a4 + 1) + v7) == 48)
  {
    *a4 = v7 + 2;
    v10 = a2 + 2 * a3;
    v11 = a3;
    if (BET3FLT__xfread_BET3((v10 + 184), 2u, 1, a4) == 1 && BET3FLT__xfread_BET3(&v20, 2u, 1, a4) == 1 && BET3FLT__xfread_BET3((a2 + 2 * v11), 2u, 1, a4) == 1)
    {
      v12 = BET3FLT__xfread2ptr_BET3((a2 + 8 * v11 + 24), 1u, v20, a4);
      if (v12 == v20)
      {
        if (*a4)
        {
          ++*a4;
        }

        v13 = heap_Calloc(*(a1 + 8), 16, *(v10 + 184));
        v14 = a2 + 104;
        *(a2 + 104 + 8 * v11) = v13;
        if (v13)
        {
          if (*(v10 + 184))
          {
            v15 = 0;
            v16 = 0;
            while (BET3FLT__xfread_BET3((v13 + v15), 2u, 1, a4) == 1)
            {
              if (BET3FLT__xfread_BET3((*(v14 + 8 * v11) + v15 + 2), 2u, 1, a4) != 1)
              {
                break;
              }

              v17 = BET3FLT__xfread2ptr_BET3((*(v14 + 8 * v11) + v15 + 8), 2u, 3 * *(*(v14 + 8 * v11) + v15 + 2), a4);
              v13 = *(v14 + 8 * v11);
              if (v17 != 3 * *(v13 + v15 + 2))
              {
                break;
              }

              v18 = 0;
              ++v16;
              v15 += 16;
              if (v16 >= *(v10 + 184))
              {
                return v18;
              }
            }

            v18 = 2229280772;
            BET3FLT__log_select_Error(a1, 55015, "LoadTreesFile : corrupt tree nodes for type %s, state %u\n");
          }

          else
          {
            return 0;
          }
        }

        else
        {
          BET3FLT__log_select_Error(a1, 55000, "LoadTreesFile : out of memory for type %s\n", *(a5 + 8 * v11 + 144));
          return 2229280778;
        }
      }

      else
      {
        v18 = 2229280772;
        BET3FLT__log_select_Error(a1, 55013, "LoadTreesFile : corrupt tree questions for type %s\n");
      }
    }

    else
    {
      v18 = 2229280772;
      BET3FLT__log_select_Error(a1, 55012, "LoadTreesFile : corrupt tree header for type %s\n");
    }
  }

  else
  {
    v18 = 2229280772;
    BET3FLT__log_select_Error(a1, 55011, "LoadTreesFile : invalid tree data version for type %s\n");
  }

  return v18;
}

uint64_t BET3FLT__TreeSearch(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5)
{
  LOWORD(v5) = 0;
  v6 = a3 + 8 * a4;
  v7 = *(v6 + 24);
  v8 = *(*(v6 + 104) + 16 * a5 + 8);
  v9 = a2 + 2;
  v10 = a2 + 1;
  do
  {
    v11 = (v8 + 6 * -v5);
    v12 = (v7 + *v11);
    v13 = *v12;
    v14 = v12[1];
    v5 = v11[1];
    if (v13 <= 0xFC)
    {
      if (v13 == 3)
      {
        v16 = *(*(a1 + 1784) + 2 * a2);
        v17 = v16 > 0x19;
        v15 = 10 * v16;
        if (v17)
        {
          v15 = -1;
        }

        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (v13 != 252)
      {
        v18 = *(a1 + 16 + 8 * *v12);
        if (!v18)
        {
          continue;
        }

        v15 = *(v18 + a2);
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (a2 < 2)
      {
LABEL_19:
        v15 = -1;
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      v15 = *(*(a1 + 32) + a2 - 2);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 253)
    {
      if (a2 < 1)
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + a2 - 1);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 254)
    {
      if (v10 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v10);
      if (!v12[1])
      {
        continue;
      }
    }

    else
    {
      if (v9 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v9);
      if (!v12[1])
      {
        continue;
      }
    }

LABEL_27:
    v19 = v12 + 2;
    if (v14 == 255)
    {
      if (*v19 <= v15 && v12[3] >= v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = v14 - 1;
      if (v14 != 1)
      {
        v21 = 0;
        while (1)
        {
          v22 = (v20 + v21) / 2;
          v23 = v19[v22];
          if (v23 == v15)
          {
            break;
          }

          if (v15 < v23)
          {
            v20 = v22 - 1;
          }

          else
          {
            v21 = v22 + 1;
          }

          if (v21 > v20)
          {
            goto LABEL_40;
          }
        }

LABEL_33:
        v5 = v11[2];
        continue;
      }

      if (*v19 == v15)
      {
        goto LABEL_33;
      }
    }

LABEL_40:
    ;
  }

  while ((v5 & 0x8000) != 0);
  return v5;
}

uint64_t BET3FLT__select_bet3_FeatureExtractObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = 0;
  *a5 = 0;
  inited = InitRsrcFunction(a1, a2, &v11);
  if ((inited & 0x80000000) == 0)
  {
    v9 = heap_Calloc(*(v11 + 8), 1, 24);
    if (v9)
    {
      *v9 = v11;
      v9[1] = a3;
      v9[2] = a4;
      *a5 = v9;
    }

    else
    {
      log_OutPublic(*(v11 + 32), "SELECT_BET3", 55000, 0);
      return 2229280778;
    }
  }

  return inited;
}

uint64_t BET3FLT__select_bet3_FeatureExtractObjClose(uint64_t a1)
{
  if (a1)
  {
    heap_Free(*(*a1 + 8), a1);
  }

  return 0;
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  __s1 = 0;
  bzero(a5, 0xE48uLL);
  *a5 = a2;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && !strcmp(__s1, "bet3"))
  {
    (*(a1[2] + 272))(a3, a4, 128, 3, 0, 0);
  }

  return usextract_ProcessStart(*a1, "SELECT_BET3", a1[2], a3, a4, a5, a6);
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t *a10, uint64_t *a11, _DWORD *a12)
{
  v15 = a1;
  v98 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  if (a11)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v93 = v18;
  if (!v17)
  {
    *a11 = 0;
    *a12 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(a10 + 5);
  do
  {
    if (*(*a10 + 2748 + v19) == 1)
    {
      ++v20;
    }

    ++v19;
  }

  while (v19 != 218);
  v22 = heap_Calloc(*(v16 + 8), (v20 * v21), 1);
  if (!v22)
  {
    v41 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0);
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v23 = v22;
  v90 = a2;
  v94 = v15;
  v24 = 0;
  v91 = a10 + 2;
  do
  {
    v25 = *a10;
    v26 = *(*a10 + v24 + 2748);
    if (!*(*a10 + v24 + 2748))
    {
      goto LABEL_20;
    }

    if (v26 == 2)
    {
      v27 = heap_Calloc(*(v16 + 8), v21, 2);
      a10[v24 + 220] = v27;
      if (!v27)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v26 == 1)
      {
        a10[v24 + 2] = v23;
        v23 += v21;
        goto LABEL_20;
      }

      if (v24 <= 0x33u)
      {
        switch(v24)
        {
          case 0x18u:
            v34 = heap_Calloc(*(v16 + 8), v21, 8);
            a10[444] = v34;
            if (!v34)
            {
              goto LABEL_130;
            }

            break;
          case 0x2Eu:
            v39 = heap_Calloc(*(v16 + 8), v21, 9);
            a10[445] = v39;
            if (!v39)
            {
              goto LABEL_130;
            }

            break;
          case 0x33u:
            v30 = *(v25 + 2966);
            if (v30)
            {
              v31 = heap_Calloc(*(v16 + 8), (v30 * v21), 4);
              a10[446] = v31;
              if (!v31)
              {
                goto LABEL_130;
              }
            }

            break;
          default:
            goto LABEL_42;
        }
      }

      else if (v24 > 0x35u)
      {
        if (v24 == 54)
        {
          v37 = *(v25 + 3360);
          if (v37)
          {
            v38 = heap_Calloc(*(v16 + 8), (v37 * v21), 4);
            a10[449] = v38;
            if (!v38)
            {
              goto LABEL_130;
            }
          }
        }

        else
        {
          if (v24 != 56)
          {
LABEL_42:
            log_OutPublic(*(*v15 + 32), "SELECT_BET3", 55007, "%s%u", "feature", v24);
            goto LABEL_20;
          }

          v32 = *(v25 + 2966);
          if (v32)
          {
            v33 = heap_Calloc(*(v16 + 8), (v32 * v21), 1);
            a10[450] = v33;
            if (!v33)
            {
              goto LABEL_130;
            }
          }
        }
      }

      else if (v24 == 52)
      {
        v35 = *(v25 + 2966);
        if (v35)
        {
          v36 = heap_Calloc(*(v16 + 8), (v35 * v21), 4);
          a10[447] = v36;
          if (!v36)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        if (v24 != 53)
        {
          goto LABEL_42;
        }

        v28 = *(v25 + 3360);
        if (v28)
        {
          v29 = heap_Calloc(*(v16 + 8), (v28 * v21), 4);
          a10[448] = v29;
          if (!v29)
          {
            goto LABEL_130;
          }
        }
      }
    }

LABEL_20:
    ++v24;
  }

  while (v24 != 218);
  v40 = *(*a10 + 3578);
  if (v40 >= 4)
  {
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, "Invalid number of states per phoneme", "%s%u", "%s:%u", "current", v40, "max", 3);
    v41 = -2065686513;
    goto LABEL_131;
  }

  v42 = heap_Calloc(*(v16 + 8), (v40 * v21), 4);
  a10[451] = v42;
  if (!v42)
  {
    goto LABEL_130;
  }

  if (*(*a10 + 3578) * v21)
  {
    memset(v42, 255, 4 * *(*a10 + 3578) * v21);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*v15, "SELECT_BET3", a10, v21);
  if (GenericFeatureLayers < 0)
  {
    v41 = GenericFeatureLayers;
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v41 = usextract_Process(*v15, "SELECT_BET3", v15[2], a3, a4, a10);
  if (v41 < 0)
  {
    goto LABEL_132;
  }

  v88 = a3;
  v89 = a4;
  if (a10[438])
  {
    v44 = *a10;
    v45 = **(*a10 + 3336);
    if (v45)
    {
      v46 = 0;
      v47 = 1;
      do
      {
        if (!strncmp(v45, "INNO_", 5uLL))
        {
          v49 = atoi(v45 + 5) + 79;
          if (v49 <= 0x5E)
          {
            v91[v49] = *(a10[438] + 8 * v46);
          }
        }

        else
        {
          Index = usextract_getIndex(*(*(v44 + 3344) + 8 * v46), "FEATIDX", "");
          if (Index == -1)
          {
            v44 = *a10;
            v50 = *(*(*a10 + 3336) + 8 * v46);
            if (!strcmp(v50, "POS"))
            {
              a10[63] = *(a10[438] + 8 * v46);
            }

            else if (!strcmp(v50, "PHR"))
            {
              a10[64] = *(a10[438] + 8 * v46);
            }
          }

          else
          {
            v44 = *a10;
            v91[*(*(*(*a10 + 3352) + 8 * v46) + Index)] = *(a10[438] + 8 * v46);
          }
        }

        v46 = v47;
        v45 = *(*(v44 + 3336) + 8 * v47++);
      }

      while (v45);
    }
  }

  v92 = *(a10 + 5);
  v51 = v92 & ~(v92 >> 31);
  if (BET3FLT__log_select_GetLogLevel(*(v16 + 32)) >= 6)
  {
    LH_itoa(0x4Eu, v97, 0xAu);
    for (i = 0; i != 218; ++i)
    {
      if (i > 3u)
      {
        if (i == 4)
        {
          v53 = "application/x-realspeak-usplosives;version=4.0";
LABEL_84:
          v54 = *(*a10 + i + 2748);
          if (v54 == 2)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, v53, a10[i + 220], 2 * v51, 0);
          }

          else if (v54 == 1)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, v53, a10[i + 2], v51, 0);
          }

          continue;
        }

        if (i == 5)
        {
          v53 = "application/x-realspeak-usmarkers-u16;version=4.0";
          goto LABEL_84;
        }
      }

      else if (i == 2)
      {
        v96 = 5;
        v95 = 0;
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, "text/x-realspeak-usphonemes;charset=tts", &v96, 1u, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, "text/x-realspeak-usphonemes;charset=tts", a10[i + 2], v51, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v97, "text/x-realspeak-usphonemes;charset=tts", &v95, 1u, 0);
      }

      else if (i == 3)
      {
        v53 = "application/x-realspeak-usdurs;version=4.0";
        goto LABEL_84;
      }
    }
  }

  v55 = *(a10 + 880);
  if (v55)
  {
    v56 = 0;
    for (j = 0; j < v55; ++j)
    {
      if (*(a10[439] + v56) == 25)
      {
        *v97 = 0;
        paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v97);
        v58 = *(a10[439] + v56 + 24);
        *a9 = v58;
        v41 = paramc_ParamSetInt(*(v16 + 40), "waitfactor", v58);
        if (v41 < 0)
        {
          log_OutPublic(*(v16 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", "parameter", "waitfactor", "value", *a9, "lhError", v41);
          goto LABEL_146;
        }

        v55 = *(a10 + 880);
      }

      v56 += 32;
    }
  }

  featextract_adjustSilAudioOrder(a10);
  if (!v93)
  {
    goto LABEL_110;
  }

  v59 = *(a10 + 880);
  v60 = v59 + v51;
  *a12 = v60;
  if (!(v59 + v51))
  {
    goto LABEL_110;
  }

  v61 = heap_Calloc(*(v16 + 8), v60, 32);
  *a11 = v61;
  a3 = v88;
  a4 = v89;
  if (!v61 || (v62 = heap_Calloc(*(v16 + 8), *(a10 + 5), 2)) == 0)
  {
LABEL_130:
    v41 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0);
    goto LABEL_131;
  }

  v63 = v62;
  memcpy(v62, a10[225], 2 * *(a10 + 5));
  if (*a12)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    while (v67 < *(a10 + 880))
    {
      if (v66 >= v51)
      {
        v73 = (*a11 + v64);
        v74 = (a10[439] + 32 * v67);
        v75 = v74[1];
        *v73 = *v74;
        v73[1] = v75;
        ++v67;
        goto LABEL_108;
      }

      v68 = v66;
      if (!*(v63 + 2 * v66))
      {
        goto LABEL_106;
      }

      v69 = (*a11 + v64);
      v70 = (a10[439] + 32 * v67);
      v71 = v70[1];
      *v69 = *v70;
      v69[1] = v71;
      ++v67;
      --*(v63 + 2 * v66);
LABEL_108:
      ++v65;
      v64 += 32;
      if (v65 >= *a12)
      {
        goto LABEL_109;
      }
    }

    v68 = v66;
LABEL_106:
    v72 = (*a11 + v64);
    *v72 = 33;
    v72[6] = *(a10[4] + v68);
    ++v66;
    goto LABEL_108;
  }

LABEL_109:
  heap_Free(*(v16 + 8), v63);
LABEL_110:
  if (v92 >= 1)
  {
    v76 = 0;
    v77 = v90 + 7356;
    v78 = (v92 & ~(v92 >> 31)) - 1;
    while (1)
    {
      v79 = a10[31];
      if (!*(v79 + v76))
      {
        *(v79 + v76) = -1;
      }

      v80 = a10[24];
      if (*(a10[4] + v76) == 35)
      {
        v81 = 1;
      }

      else
      {
        v81 = 2 * *(v80 + v76);
      }

      *(v80 + v76) = v81;
      v82 = a10[4];
      v83 = *(v82 + v76);
      if (v78 == v76)
      {
        if (v83 == 35)
        {
          *v97 = 0;
          paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v97);
          v84 = 0;
          v85 = a10[223];
          if (*v97 != 1)
          {
            v84 = *(v85 + 2 * v76) + 200 * *a9;
          }

          if (v84 <= 1)
          {
            v84 = 1;
          }

          if (v84 >= 0xFFFF)
          {
            LOWORD(v84) = -1;
          }

          *(v85 + 2 * v76) = v84;
          v82 = a10[4];
        }

        *(v82 + v76) = *(v77 + *(v82 + v76));
        if (v78 == v76)
        {
          break;
        }
      }

      else
      {
        *(v82 + v76) = *(v77 + v83);
      }

      ++v76;
    }
  }

LABEL_146:
  a3 = v88;
  a4 = v89;
LABEL_131:
  v15 = v94;
LABEL_132:
  if (a12)
  {
LABEL_133:
    if (a11 && v41 < 0 && *a11)
    {
      heap_Free(*(v16 + 8), *a11);
      *a11 = 0;
      *a12 = 0;
    }
  }

LABEL_137:
  LODWORD(result) = (*(v15[2] + 64))(a3, a4);
  if (result >= 0 || v41 <= -1)
  {
    return v41;
  }

  else
  {
    return result;
  }
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcessEnd(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = usextract_ProcessEnd(*a1, "SELECT_BET3", a2);
  usextract_freeGenericFeatureLayers(*a1, "SELECT_BET3", a2);
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *(*a2 + v6 + 2748);
    if (!*(*a2 + v6 + 2748))
    {
      goto LABEL_12;
    }

    if (v8 == 2)
    {
      v10 = a2[v6 + 220];
      if (!v10)
      {
        goto LABEL_12;
      }

LABEL_11:
      heap_Free(*(v4 + 8), v10);
      goto LABEL_12;
    }

    if (v8 == 1)
    {
      if (v7)
      {
        v9 = a2[v6 + 2];
        if (v9)
        {
          heap_Free(*(v4 + 8), v9);
        }

        v7 = 0;
      }
    }

    else if (v6 <= 0x33u)
    {
      switch(v6)
      {
        case 0x18u:
          v10 = a2[444];
          if (v10)
          {
            goto LABEL_11;
          }

          break;
        case 0x2Eu:
          v10 = a2[445];
          if (v10)
          {
            goto LABEL_11;
          }

          break;
        case 0x33u:
          v10 = a2[446];
          if (v10)
          {
            goto LABEL_11;
          }

          break;
        default:
          goto LABEL_31;
      }
    }

    else if (v6 > 0x35u)
    {
      if (v6 == 54)
      {
        v10 = a2[449];
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v6 != 56)
        {
LABEL_31:
          log_OutPublic(*(*a1 + 32), "SELECT_BET3", 55010, "%s%u", "feature", v6);
          goto LABEL_12;
        }

        v10 = a2[450];
        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v6 == 52)
    {
      v10 = a2[447];
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v6 != 53)
      {
        goto LABEL_31;
      }

      v10 = a2[448];
      if (v10)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v6;
  }

  while (v6 != 218);
  v11 = a2[451];
  if (v11)
  {
    heap_Free(*(v4 + 8), v11);
  }

  *a2 = 0;
  return v5;
}

uint64_t BET3FLT__LoadModelFile(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a3;
  if (a2[a3 + 84])
  {
    v9 = a2 + 32;
    v10 = heap_Calloc(*(a1 + 8), a2[a3 + 32], 8);
    *(a2 + 21) = v10;
    if (!v10)
    {
      return 2229280778;
    }

    if (v9[v8] >= 1)
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (a4 + 24 * v11);
        if (BET3FLT__xfread_BET3(a2, 4u, 1, v13) != 1 || (*a2 & 0x80000000) != 0)
        {
          BET3FLT__log_select_Error(v7, 55020, "LoadModelFile: the number of HMM states is illegal for %s %d\n");
          return 2229280772;
        }

        if (BET3FLT__xfread_BET3(a2 + 11, 4u, 1, v13) != 1 || (v14 = a2[11], v14 < 0))
        {
          BET3FLT__log_select_Error(v7, 55021, "LoadModelFile: the number of PDFs is illegal for %s %d\n");
          return 2229280772;
        }

        if (!v12)
        {
          v15 = heap_Calloc(*(v7 + 8), v9[v8] * v14, 8);
          if (!v15)
          {
            return 2229280778;
          }

          v12 = v15;
          v14 = a2[11];
        }

        v16 = a5;
        *(*(a2 + 21) + 8 * v11) = v12 + 8 * v14 * v11;
        *(*(a2 + 21) + 8 * v11) -= 8;
        if (v14 >= 1)
        {
          break;
        }

LABEL_16:
        ++v11;
        a5 = v16;
        if (v11 >= v9[v8])
        {
          goto LABEL_17;
        }
      }

      v17 = 0;
      v18 = *a2;
      v19 = 8;
      while (1)
      {
        v20 = BET3FLT__xfread2ptr_BET3((*(*(a2 + 21) + 8 * v11) + v19), 4u, (2 * v18), v13);
        v18 = *a2;
        if (v20 != 2 * *a2)
        {
          break;
        }

        v21 = *(*(a2 + 21) + 8 * v11) + 8 * v17;
        *(v21 + 8) -= 8;
        ++v17;
        v19 += 8;
        if (v17 >= a2[11])
        {
          goto LABEL_16;
        }
      }

      BET3FLT__log_select_Error(v7, 55022, "LoadModelFile: PDF read failed for %s %d\n");
      return 2229280772;
    }
  }

LABEL_17:
  v22 = &a2[v8];
  if (v22[94])
  {
    v23 = a2 + 32;
    v24 = heap_Calloc(*(v7 + 8), a2[v8 + 32], 8);
    v25 = a2 + 44;
    *&a2[2 * v8 + 44] = v24;
    v26 = 2229280778;
    if (!v24)
    {
      return v26;
    }

    v59 = heap_Calloc(*(v7 + 8), *a2 * v23[v8], 8);
    if (!v59)
    {
      return v26;
    }

    if (v23[v8] >= 1)
    {
      v27 = 0;
      v28 = &a2[2 * v8];
      v57 = v7;
      while (1)
      {
        v29 = (a4 + 24 * v27);
        if (BET3FLT__xfread_BET3(v22 + 1, 4u, 1, v29) != 1 || (v22[1] & 0x80000000) != 0)
        {
          BET3FLT__log_select_Error(v7, 55023, "LoadModelFile: the vector size is illegal for %s %d\n");
          return 2229280772;
        }

        v30 = BET3FLT__xfread2ptr_BET3(v28 + 6, 4u, *a2, v29);
        if (v30 != *a2)
        {
          BET3FLT__log_select_Error(v7, 55024, "LoadModelFile: reading the number of PDFs failed for %s %d\n");
          return 2229280772;
        }

        v31 = *(v28 + 6);
        *(v28 + 6) = v31 - 2;
        if (v30 > 0)
        {
          break;
        }

        *(*&v25[2 * v8] + 8 * v27) = v59 + 8 * v30 * v27;
        *(*&v25[2 * v8] + 8 * v27) -= 16;
LABEL_34:
        ++v27;
        v7 = v57;
        if (v27 >= v23[v8])
        {
          goto LABEL_35;
        }
      }

      v32 = 2;
      do
      {
        v33 = *v31++;
        if (v33 < 0)
        {
          BET3FLT__log_select_Error(v7, 55025, "LoadModelFile: the number of PDFs for %s at state %d is illegal\n");
          return 2229280772;
        }

        ++v32;
      }

      while (v30 + 2 != v32);
      *(*&v25[2 * v8] + 8 * v27) = v59 + 8 * v30 * v27;
      *(*&v25[2 * v8] + 8 * v27) -= 16;
      v34 = *(v28 + 6);
      v35 = v22[1];
      v36 = 16;
      v37 = 2;
      while (1)
      {
        v38 = BET3FLT__xfread2ptr_BET3((*(*&v25[2 * v8] + 8 * v27) + v36), 4u, 2 * *(v34 + 4 * v37) * v35, v29);
        v34 = *(v28 + 6);
        v35 = v22[1];
        if (v38 != 2 * *(v34 + 4 * v37) * v35)
        {
          break;
        }

        v36 += 8;
        v39 = v37++ <= *a2;
        if (!v39)
        {
          goto LABEL_34;
        }
      }

      BET3FLT__log_select_Error(v57, 55026, "LoadModelFile: PDF read failed for %s %d\n");
      return 2229280772;
    }
  }

LABEL_35:
  if (!v22[104])
  {
    return 0;
  }

  v40 = a2 + 32;
  v41 = heap_Calloc(*(v7 + 8), a2[v8 + 32], 8);
  v42 = a2 + 64;
  *&a2[2 * v8 + 64] = v41;
  v26 = 2229280778;
  if (v41)
  {
    v43 = heap_Calloc(*(v7 + 8), *a2 * v40[v8], 8);
    if (v43)
    {
      if (v40[v8] >= 1)
      {
        v58 = v7;
        v60 = v43;
        v44 = 0;
        v45 = &a2[2 * v8];
        while (1)
        {
          v46 = (a4 + 24 * v44);
          if (BET3FLT__xfread_BET3(v22 + 1, 4u, 1, v46) != 1 || (v22[1] & 0x80000000) != 0)
          {
            BET3FLT__log_select_Error(v7, 55027, "LoadModelFile: the vector size is illegal for %s %d\n");
            return 2229280772;
          }

          v47 = BET3FLT__xfread2ptr_BET3(v45 + 6, 4u, *a2, v46);
          if (v47 != *a2)
          {
            BET3FLT__log_select_Error(v7, 55028, "LoadModelFile: reading the number of PDFs failed for %s %d\n");
            return 2229280772;
          }

          v48 = *(v45 + 6);
          *(v45 + 6) = v48 - 2;
          if (v47 > 0)
          {
            break;
          }

          *(*&v42[2 * v8] + 8 * v44) = v60 + 8 * v47 * v44;
          *(*&v42[2 * v8] + 8 * v44) -= 16;
LABEL_52:
          v26 = 0;
          ++v44;
          v7 = v58;
          if (v44 >= v40[v8])
          {
            return v26;
          }
        }

        v49 = 2;
        do
        {
          v50 = *v48++;
          if (v50 < 0)
          {
            BET3FLT__log_select_Error(v7, 55029, "LoadModelFile: the number of PDFs for %s at state %d is illegal\n");
            return 2229280772;
          }

          ++v49;
        }

        while (v47 + 2 != v49);
        *(*&v42[2 * v8] + 8 * v44) = v60 + 8 * v47 * v44;
        *(*&v42[2 * v8] + 8 * v44) -= 16;
        v51 = *(v45 + 6);
        v52 = v22[1];
        v53 = 16;
        v54 = 2;
        while (1)
        {
          v55 = BET3FLT__xfread2ptr_BET3((*(*&v42[2 * v8] + 8 * v44) + v53), 4u, 4 * *(v51 + 4 * v54) * v52, v46);
          v51 = *(v45 + 6);
          v52 = v22[1];
          if (v55 != 4 * *(v51 + 4 * v54) * v52)
          {
            break;
          }

          v53 += 8;
          v39 = v54++ <= *a2;
          if (!v39)
          {
            goto LABEL_52;
          }
        }

        BET3FLT__log_select_Error(v58, 55030, "LoadModelFile: PDF read failed for %s %d\n");
        return 2229280772;
      }

      return 0;
    }
  }

  return v26;
}

uint64_t BET3FLT__FindDurPDF(int32x2_t *a1, int *a2, int a3, int a4, int a5, float a6)
{
  v6 = a1[1].i32[0];
  a1[3] = 0;
  LODWORD(v7) = *a2;
  if (*a2 >= 1)
  {
    v14 = 2;
    __asm { FMOV            V0.2D, #0.5 }

    v30 = _Q0;
    v20 = 0.0;
    do
    {
      v21 = *(*(*(a2 + 21) + 8 * a4) + 8 * v6);
      v22 = *(v21 + 4 * v14);
      v23 = *(v21 + 4 * (v14 + v7));
      if (a5)
      {
        v23 = BET3FLT__bet3_finv(v23);
      }

      v24 = v22 + (v23 * a6);
      if (v24 < 0.0)
      {
        v24 = 0.0;
      }

      if (a2[115])
      {
        if (v24 > 4000.0)
        {
          v24 = 4000.0;
        }
      }

      else if (v24 > 4000.0)
      {
        v24 = v20 * 0.5;
      }

      v25.f64[0] = (v24 + a3);
      v26 = a1[2];
      v25.f64[1] = sqrt(v23);
      v27 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v25, v30)));
      *(*&v26 + 4 * v14) = v27.i32[0];
      a1[3] = vadd_s32(a1[3], v27);
      a3 += (v24 - *(*&v26 + 4 * v14));
      v7 = *a2;
      v20 = v24;
    }

    while (v14++ <= v7);
  }

  return 0;
}

uint64_t BET3FLT__FindContPDF(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a3 + 8 * a1);
  v6 = *(a4 + 4 * a1 + 4);
  v7 = *(*(*(a4 + 8 * a1 + 176) + 8 * a5) + 8 * a2) + 4 * (2 * *(v5[9] + 4 * a2) - 2) * v6;
  *(v5[19] + 8 * a2) = v7;
  *(v5[29] + 8 * a2) = v7 + 4 * v6;
  return 0;
}

uint64_t BET3FLT__FindMsdPDF(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a4 + 4;
  v7 = *(a4 + 4 + 4 * a1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = a1;
    v10 = a2;
    v11 = *(*(*(a4 + 8 * a1 + 256) + 8 * a6) + 8 * a2) + 4 * (4 * *(*(a3 + 8 * a1 + 72) + 4 * a2) - 4) * v7;
    v12 = a5 + 224;
    v13 = 1;
    do
    {
      v14 = v11 + 4 * v8;
      v15 = *(*(a3 + 152 + 8 * v9) + 8 * v10);
      *(v15 + 4 * v13) = *v14;
      v16 = *(v14 + 4);
      *(*(*(a3 + 232 + 8 * v9) + 8 * v10) + 4 * v13) = v16;
      v17 = *(a5 + 44);
      if (v17 != 0.0 && *(v12 + 4 * v9) == 2)
      {
        *(v15 + 4 * v13) = *(v15 + 4 * v13) + (v16 * v17);
      }

      if (v13 == 1)
      {
        v18 = *(v12 + 4 * v9);
        v19 = *(v14 + 8);
        if (v18 == 2)
        {
          *(*(a3 + 320) + 4 * v10) = v19;
        }

        v20 = 1 << v18;
        v21 = *(a3 + 312);
        if (v19 <= *(a5 + 2104 + 4 * v9))
        {
          v22 = *(v21 + v10) & ~v20;
        }

        else
        {
          v22 = *(v21 + v10) | v20;
        }

        *(v21 + v10) = v22;
      }

      v8 += 4;
    }

    while (v13++ < *(v6 + 4 * v9));
  }

  return 0;
}