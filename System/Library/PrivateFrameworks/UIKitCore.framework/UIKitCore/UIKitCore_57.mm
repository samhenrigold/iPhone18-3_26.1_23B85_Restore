uint64_t sub_18908FD40(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *result;
  v15 = v4;
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    if (v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_189212B38(v2);
        v2 = result;
      }

      if (v3 > *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = (v4 + 48);
        v7 = (v2 + 48);
        do
        {
          v8 = vaddq_f64(*v6, *v7);
          v7[-1] = vaddq_f64(v6[-1], v7[-1]);
          *v7 = v8;
          v6 = (v6 + 40);
          v7 = (v7 + 40);
          --v3;
        }

        while (v3);
        *v1 = v2;
      }
    }
  }

  else if (v5 >= v3)
  {
    v9 = result;

    v14 = *(v9 + 8);
    v11 = *v9;
    v13 = *(v9 + 16);
    v10 = v13;
    *v1 = v11;
    *(v1 + 16) = v10;
    *(v1 + 29) = *(v9 + 29);
    sub_188A3F29C(&v15, v12, &qword_1EA936508, &qword_18A650CB0);
    sub_188A3F29C(&v14, v12, &qword_1EA936510, &qword_18A650CB8);
    return sub_189090BAC(&v13, v12);
  }

  return result;
}

uint64_t sub_18908FE70(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *result;
  v15 = v4;
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    if (v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_189212B38(v2);
        v2 = result;
      }

      if (v3 > *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = (v4 + 48);
        v7 = (v2 + 48);
        do
        {
          v8 = vsubq_f64(*v7, *v6);
          v7[-1] = vsubq_f64(v7[-1], v6[-1]);
          *v7 = v8;
          v6 = (v6 + 40);
          v7 = (v7 + 40);
          --v3;
        }

        while (v3);
        *v1 = v2;
      }
    }
  }

  else if (v5 >= v3)
  {
    v9 = result;

    v14 = *(v9 + 8);
    v11 = *v9;
    v13 = *(v9 + 16);
    v10 = v13;
    *v1 = v11;
    *(v1 + 16) = v10;
    *(v1 + 29) = *(v9 + 29);
    sub_188A3F29C(&v15, v12, &qword_1EA936508, &qword_18A650CB0);
    sub_188A3F29C(&v14, v12, &qword_1EA936510, &qword_18A650CB8);
    return sub_189090BAC(&v13, v12);
  }

  return result;
}

double sub_18908FFA0()
{
  v1 = *v0;
  result = 0.0;
  if (*v0)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 48);
      do
      {
        v5 = vmulq_f64(v4[-1], v4[-1]);
        v6 = result + v5.f64[0] + v5.f64[1];
        v7 = vmulq_f64(*v4, *v4);
        result = v6 + v7.f64[0] + v7.f64[1];
        v4 = (v4 + 40);
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_18909001C(uint64_t a1)
{
  if (!*v1 || !*a1)
  {
    return 1;
  }

  if (*(*v1 + 16) != *(*a1 + 16) || *(*(v1 + 8) + 16) != *(*(a1 + 8) + 16))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32) | (*(a1 + 36) << 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 36);
  v8 = *(v1 + 32);
  if (v5 == v2 && v6 == v3)
  {
    if (v8 != v4)
    {
      return 0;
    }

    return ((v4 & 0x100000000) == 0) ^ ((v8 | (v7 << 32)) >> 32) & 1;
  }

  v10 = sub_18A4A86C8();
  result = 0;
  if ((v10 & 1) != 0 && v8 == v4)
  {
    return ((v4 & 0x100000000) == 0) ^ ((v8 | (v7 << 32)) >> 32) & 1;
  }

  return result;
}

BOOL sub_1890900EC(uint64_t *a1, double *a2, __n128 a3)
{
  v4 = *a1;
  v5 = *a2;
  if (*v3)
  {
    if (v4)
    {
      return sub_189090B30(v4, *v3, v5);
    }

    v4 = *v3;
    return sub_189090ADC(v4, v5);
  }

  if (v4)
  {
    return sub_189090ADC(v4, v5);
  }

  return 1;
}

double sub_18909011C(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  if (*v2)
  {
    if (v3)
    {
      sub_189090CE0(v3, *v2, 0.00000001);
      return result;
    }

    v3 = *v2;
    return sub_189090C68(v3, 0.00000001);
  }

  if (v3)
  {
    return sub_189090C68(v3, 0.00000001);
  }

  return 0.0;
}

void sub_189090158(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A55598(a1, v9);
  sub_188A34624(0, &qword_1EA92E860, 0x1E69793D8);
  swift_dynamicCast();
  sub_1890908B0(v8, &v10);
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v10;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 36) = v7 != 0;
  *(a2 + 32) = v6;
}

uint64_t sub_189090230(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && sub_189090578(v2, v3))
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

double sub_189090270(__int128 *a1)
{
  v2 = *v1;
  if (*v1)
  {
    v4 = *a1;
    v5 = *(v1 + 24);
    v6 = *(v1 + 8);
    if (v4)
    {
      v7 = *(a1 + 2);
      v8 = *(a1 + 3);
      v9 = *(a1 + 8) | (*(a1 + 36) << 32);
      v10 = *(v1 + 16);
      v11 = *(v1 + 32);
      v12 = *(v1 + 36);
      v19 = v4;
      v20 = v7;
      v21 = v8;
      v22 = v9;
      v23 = BYTE4(v9) & 1;
      *&v14 = v2;
      *(&v14 + 1) = v6;
      v15 = v10;
      v16 = v5;
      v17 = v11;
      v18 = v12 & 1;
      sub_18908FC10(&v19);
      result = v2;
      *v1 = v14;
      *(v1 + 16) = v15;
      *(v1 + 24) = v16;
      *(v1 + 32) = v17;
      *(v1 + 36) = v18 != 0;
      return result;
    }
  }

  *(v1 + 29) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

BOOL sub_189090368()
{
  v1 = *v0;
  if (*v0)
  {
    return !v1[1].i64[0] || !*(*(v0 + 8) + 16) || !sub_189090C08(v1);
  }

  else
  {
    return 0;
  }
}

double sub_1890903B4(double result)
{
  if (*v1)
  {
    *v2 = *v1;
    *&v2[8] = *(v1 + 8);
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 36) & 1;
    sub_18908FB80(result);
    result = *v2;
    *v1 = *v2;
    *(v1 + 16) = *&v2[16];
    *(v1 + 24) = v3;
    *(v1 + 32) = v4;
    *(v1 + 36) = v5 != 0;
  }

  return result;
}

double sub_189090454@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 29) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_18909047C(uint64_t *a1, __int128 *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4[0] = v2;
  *(v4 + 13) = *(a2 + 29);
  sub_188ECCEB0(a1, &v3);
}

double sub_1890904C8@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr, __int128 *, __int128 *)@<X4>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  v11 = *a1;
  v12[0] = v5;
  *(v12 + 13) = *(a1 + 29);
  v6 = a2[1];
  v13 = *a2;
  v14[0] = v6;
  *(v14 + 13) = *(a2 + 29);
  a3(&v9, &v11, &v13);
  result = *&v9;
  v8 = *v10;
  *a4 = v9;
  *(a4 + 16) = v8;
  *(a4 + 29) = *&v10[13];
  return result;
}

void sub_189090538(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4[0] = v2;
  *(v4 + 13) = *(a2 + 29);
  sub_188ECD024(a1, &v3);
}

BOOL sub_189090578(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 + 1;
  do
  {
    result = --v5 == 0;
    if (!v5)
    {
      break;
    }

    v7 = *v4;
    v8 = *(v4 + 1);
    v4 = (v4 + 40);
    v9 = *v3;
    v10 = *(v3 + 1);
    v3 = (v3 + 40);
  }

  while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, v7), vceqq_f64(v10, v8)))) & 1) != 0);
  return result;
}

void sub_1890905D8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 8) | (*(a2 + 36) << 32);
  v10 = *a1;
  if (*a1)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    v14 = *(a1 + 8) | (*(a1 + 36) << 32);
    if (!v5)
    {
      v9 = v14 & 0x1FFFFFFFFLL;

      v6 = v11;
      v7 = v12;
      v8 = v13;
      goto LABEL_12;
    }

    v21 = *a2;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = BYTE4(v9) & 1;
    v19 = v14;
    v20 = BYTE4(v14) & 1;

    sub_18908FE70(&v21);
    v6 = v11;
    v7 = v12;
    v8 = v13;
    v15 = v19;
    v16 = v20;
  }

  else
  {
    if (!v5)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v21 = *a2;
    v22 = v6;
    v23 = v7;
    v24 = v8;

    sub_18908FB80(-1.0);
    v10 = v21;
    v7 = v23;
    v15 = v9;
    v16 = BYTE4(v9) & 1;
  }

  v17 = v16 == 0;
  v18 = 0x100000000;
  if (v17)
  {
    v18 = 0;
  }

  v9 = v18 | v15;
LABEL_12:
  *a3 = v10;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 36) = BYTE4(v9);
}

void sub_189090750(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *(a2 + 8) | (*(a2 + 36) << 32);
  v9 = *a1;
  if (*a1)
  {
    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    v13 = *(a1 + 8) | (*(a1 + 36) << 32);
    if (v4)
    {
      v23[0] = *a2;
      v23[1] = v5;
      v23[2] = v7;
      v23[3] = v6;
      v24 = v8;
      v25 = BYTE4(v8) & 1;
      v17 = v9;
      v18 = v10;
      v19 = v11;
      v20 = v12;
      v21 = v13;
      v22 = BYTE4(v13) & 1;
      sub_188F0D2E8(a2, v16);
      sub_188F0D2E8(a1, v16);
      sub_18908FD40(v23);

      v4 = v17;
      v5 = v18;
      v7 = v19;
      v6 = v20;
      v15 = 0x100000000;
      if (!v22)
      {
        v15 = 0;
      }

      v8 = v15 | v21;
    }

    else
    {
      v8 = v13 & 0x1FFFFFFFFLL;

      v4 = v9;
      v5 = v10;
      v7 = v11;
      v6 = v12;
    }
  }

  else if (v4)
  {
    sub_188F0D2E8(a2, v23);
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 36) = BYTE4(v8);
}

unint64_t sub_1890908B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 vertexCount];
  v5 = sub_188E4B8F8(0, v4 & ~(v4 >> 63), 0, MEMORY[0x1E69E7CC0]);
  result = [a1 vertexCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = result;
  if (result)
  {
    v8 = 0;
    do
    {
      [a1 vertexAtIndex_];
      v9 = v28;
      v10 = v29;
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v26 = v29;
        v27 = v28;
        v14 = sub_188E4B8F8((v11 > 1), v12 + 1, 1, v5);
        v10 = v29;
        v9 = v28;
        v5 = v14;
      }

      ++v8;
      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      *(v13 + 2) = v9;
      *(v13 + 3) = v10;
      *(v13 + 8) = v30;
    }

    while (v7 != v8);
  }

  v15 = [a1 faceCount];
  v16 = sub_188E4B7F4(0, v15 & ~(v15 >> 63), 0, MEMORY[0x1E69E7CC0]);
  result = [a1 faceCount];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v17 = result;
  if (result)
  {
    v18 = 0;
    do
    {
      [a1 faceAtIndex_];
      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_188E4B7F4((v19 > 1), v20 + 1, 1, v16);
      }

      ++v18;
      *(v16 + 2) = v20 + 1;
      v21 = &v16[32 * v20];
      *(v21 + 2) = v28;
      *(v21 + 3) = v29;
    }

    while (v17 != v18);
  }

  v22 = [a1 depthNormalization];
  v23 = sub_18A4A7288();
  v25 = v24;

  LODWORD(v22) = [a1 subdivisionSteps];
  result = [a1 replicatesEdges];
  *a2 = v5;
  *(a2 + 8) = v16;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = v22;
  *(a2 + 36) = result;
  return result;
}

BOOL sub_189090ADC(uint64_t a1, double a2)
{
  v2 = (a1 + 32);
  v3 = vdupq_lane_s64(*&a2, 0);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *v2;
    v5 = *(v2 + 1);
    v2 = (v2 + 40);
  }

  while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v3, vabsq_f64(v6)), vcgeq_f64(v3, vabsq_f64(v5)))))) & 1) == 0);
  return v4 == 0;
}

BOOL sub_189090B30(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (v3 != *(a1 + 16))
  {
    return 0;
  }

  v4 = v3 + 1;
  v5 = (a2 + 56);
  v6 = (a1 + 56);
  do
  {
    result = --v4 == 0;
    if (!v4 || vabdd_f64(*(v5 - 3), *(v6 - 3)) > a3)
    {
      break;
    }

    v9 = *(v5 - 1);
    v8 = *v5;
    v10 = *(v5 - 2);
    v5 += 5;
    v12 = *(v6 - 1);
    v11 = *v6;
    v13 = *(v6 - 2);
    v6 += 5;
    v14 = vabdd_f64(v9, v12);
    if (vabdd_f64(v10, v13) <= a3)
    {
      v16 = v14 == a3;
      v15 = v14 >= a3;
    }

    else
    {
      v15 = 1;
      v16 = 0;
    }

    v17 = vabdd_f64(v8, v11);
    if (!v16 && v15)
    {
      v18 = 1;
      v19 = 0;
    }

    else
    {
      v19 = v17 == a3;
      v18 = v17 >= a3;
    }
  }

  while (v19 || !v18);
  return result;
}

BOOL sub_189090C08(int8x16_t *a1)
{
  v1 = a1 + 4;
  v2 = a1[1].i64[0] + 1;
  v3 = vdupq_n_s64(0x7FF0000000000000uLL);
  do
  {
    if (!--v2)
    {
      break;
    }

    if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v1[-2], v3), v3), vceqq_s64(vandq_s8(v1[-1], v3), v3)))))
    {
      break;
    }

    v4 = v1->i64[0];
    v1 = (v1 + 40);
  }

  while ((v4 & 0x7FF0000000000000) != 0x7FF0000000000000);
  return v2 == 0;
}

double sub_189090C68(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = vdupq_lane_s64(*&a2, 0);
  v4 = (a1 + 56);
  v5 = 0.0;
  do
  {
    v6 = vdivq_f64(vabsq_f64(*(v4 - 3)), v3);
    v7 = fabs(*(v4 - 1));
    v8 = fabs(*v4);
    if (v6.f64[0] < v6.f64[1])
    {
      v6.f64[0] = v6.f64[1];
    }

    v9 = v7 / a2;
    if (v6.f64[0] >= v9)
    {
      v9 = v6.f64[0];
    }

    v10 = v8 / a2;
    if (v9 < v10)
    {
      v9 = v10;
    }

    if (v5 <= v9)
    {
      v5 = v9;
    }

    v4 += 5;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t sub_189090CE0(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (v3 == *(result + 16))
  {
    v4 = 0;
    v5 = vdupq_lane_s64(*&a3, 0);
    v6 = 0.0;
LABEL_3:
    v7 = 40 * v4;
    v8 = a2;
    v9 = result;
    while (v3 != v4)
    {
      if (v4 >= v3)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_17;
      }

      v11 = vdivq_f64(vabdq_f64(*(v8 + v7 + 32), *(v9 + v7 + 32)), v5);
      v12 = vabdd_f64(*(v8 + v7 + 48), *(v9 + v7 + 48));
      v13 = vabdd_f64(*(v8 + v7 + 56), *(v9 + v7 + 56));
      v14 = v11.f64[1];
      if (v11.f64[0] >= v11.f64[1])
      {
        v14 = v11.f64[0];
      }

      v15 = v12 / a3;
      if (v14 >= v15)
      {
        v15 = v14;
      }

      v16 = v13 / a3;
      if (v15 >= v16)
      {
        v16 = v15;
      }

      ++v4;
      v9 += 40;
      v8 += 40;
      if (v6 <= v16)
      {
        v6 = v16;
        v4 = v10;
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit25UIAnimatableMeshTransformV7Storage33_2F09033D354A7388341A9D68245FE6E8LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_189090DD4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 37))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_189090E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 29) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_189090E80(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_189090EBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_189090F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_189090F5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 37))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_189090FB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_189091028()
{
  result = qword_1EA92EBD8;
  if (!qword_1EA92EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBD8);
  }

  return result;
}

unint64_t sub_18909107C(uint64_t a1)
{
  result = sub_188F0D398();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1890910A8()
{
  result = qword_1EA92EBD0;
  if (!qword_1EA92EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBD0);
  }

  return result;
}

unint64_t sub_1890910FC(uint64_t a1)
{
  result = sub_189091124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_189091124()
{
  result = qword_1EA92EBC0;
  if (!qword_1EA92EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBC0);
  }

  return result;
}

double sub_189091178()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(v0 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_view) _isAncestorOfFirstResponder];
    if (v5 & 1) != 0 || (*(v0 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_alwaysAvoidsKeyboard))
    {
      v6 = sub_18A4A4D08();
      v7 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
      swift_beginAccess();
      v8 = *&v4[v7];
      if ((v6 & ~v8) != 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      *&v4[v7] = v9 | v8;
      sub_188F2461C(v8);
      v10 = (v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      v11 = *(v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      v12 = v4[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame + 32] ^ 1;
      if (*(v11 + 129) != (v12 & 1))
      {
LABEL_8:
        KeyPath = swift_getKeyPath();
        v20 = &v20;
        MEMORY[0x1EEE9AC00](KeyPath);
        v21 = v11;
        sub_188AF0C98();

        sub_18A4A2BF8();

        goto LABEL_13;
      }
    }

    else
    {
      v14 = sub_18A4A4D08();
      v15 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
      swift_beginAccess();
      v16 = *&v4[v15];
      v17 = -1;
      if ((v16 & v14) != 0)
      {
        v17 = ~v14;
      }

      *&v4[v15] = v17 & v16;
      sub_188F2461C(v16);
      v12 = 0;
      v10 = (v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      v11 = *(v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel);
      if (*(v11 + 129))
      {
        goto LABEL_8;
      }
    }

    *(v11 + 129) = v12 & 1;
LABEL_13:
    v18 = *v10;
    if (v5 == *(*v10 + 128))
    {

      *(v18 + 128) = v5;
    }

    else
    {
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      v21 = v18;
      sub_188AF0C98();

      sub_18A4A2BF8();
    }
  }

  return result;
}

void sub_1890914FC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 128);
}

void sub_18909159C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 129);
}

void sub_18909167C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = [a1 traitCollection];
    sub_1890916FC(v4, 1);
  }
}

void sub_1890916FC(void *a1, char a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [a1 glassUserInterfaceStyle];
    v9 = &selRef_userInterfaceStyle;
    if (v8)
    {
      v9 = &selRef_glassUserInterfaceStyle;
    }

    v10 = [a1 *v9];
    v11 = [(UIView *)v7 _traitOverrides];
    v12 = [(_UITraitOverrides *)v11 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    aBlock[0] = inited;
    sub_188D63200(v10);
    v14 = [(UIView *)v7 _traitOverrides];
    v15 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v14 _replaceWithOverrides:v15];

    v16 = [a1 activeAppearance];
    v17 = [(UIView *)v7 _traitOverrides];
    v18 = [(_UITraitOverrides *)v17 _swiftImplCopy];

    v19 = swift_initStackObject();
    *(v19 + 16) = v18;
    aBlock[0] = v19;
    sub_18914E550(v16);
    v20 = [(UIView *)v7 _traitOverrides];
    v21 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v20 _replaceWithOverrides:v21];

    v22 = [a1 _glassElevationLevel];
    v23 = [(UIView *)v7 _traitOverrides];
    v24 = [(_UITraitOverrides *)v23 _swiftImplCopy];

    v25 = swift_initStackObject();
    *(v25 + 16) = v24;
    aBlock[0] = v25;
    sub_188D635B0(v22);
    v26 = [(UIView *)v7 _traitOverrides];
    v27 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v26 _replaceWithOverrides:v27];

    sub_188EB3AA8(&v38);
    v28 = v38;
    v29 = [(UIView *)v7 _traitOverrides];
    v30 = [(_UITraitOverrides *)v29 _swiftImplCopy];

    v31 = swift_initStackObject();
    *(v31 + 16) = v30;
    aBlock[0] = v31;
    sub_1891DBB68(v28);
    v32 = [(UIView *)v7 _traitOverrides];
    v33 = *(aBlock[0] + 16);

    [(_UITraitOverrides *)v32 _replaceWithOverrides:v33];

    if (a2)
    {
      v34 = objc_opt_self();
      if ([v34 _isInAnimationBlockWithAnimationsEnabled])
      {
        if (![v34 _isInRetargetableAnimationBlock])
        {
          aBlock[4] = sub_189091B5C;
          aBlock[5] = v3;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_188A4A8F0;
          aBlock[3] = &block_descriptor_97;
          v36 = _Block_copy(aBlock);

          [v34 _animateByRetargetingAnimations_completion_];

          _Block_release(v36);
          return;
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        [v35 updateTraitsIfNeeded];
        [v35 layoutIfNeeded];
      }
    }
  }
}

void sub_189091AFC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong updateTraitsIfNeeded];
  [Strong layoutIfNeeded];
}

id static UICalendarViewDecoration.default(color:size:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() decorationWithColor:a1 size:a2];

  return v2;
}

id static UICalendarViewDecoration.image(_:color:size:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(UICalendarViewDecoration);

  return [v6 initWithImage:a1 color:a2 size:a3];
}

uint64_t sub_189091C1C(uint64_t a1)
{
  swift_getMetatypeMetadata();
  sub_18A4A7308();
  v1 = sub_18A4A7258();

  v2 = MEMORY[0x18CFE4050](v1);

  return v2;
}

uint64_t sub_189091CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _BoxedNSSecureCodingValue();
  sub_189093018(a2, a3, &v6);
  return v6;
}

void sub_189091D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  type metadata accessor for _BoxedNSSecureCodingValue();
  v8 = v7;
  swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  sub_189093AD8(&v10, a2, v8, a3, v8, a4, WitnessTable);
}

uint64_t sub_189091DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BoxedNSSecureCodingValue();
  sub_1890934C4(a2, a3, a4, &v8);
  return v8;
}

void sub_189091E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  type metadata accessor for _BoxedNSSecureCodingValue();
  v10 = v9;
  WitnessTable = swift_getWitnessTable();
  sub_1890940D8(&v12, a2, v10, a3, a4, v10, a5, WitnessTable);
}

double sub_189091EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return sub_18909282C(&v9, a2, a3, a4, WitnessTable);
}

void sub_189091F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  WitnessTable = swift_getWitnessTable();
  sub_1890929CC(&v10, a2, a3, a4, a5, WitnessTable);
}

void sub_189091FF0(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for _BoxedCodableValue();

  sub_189093018(a2, a3, a4);
}

void sub_18909205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _BoxedCodableValue();
  v13 = *(a7 + 8);

  sub_189093AD8(a1, a2, v12, a3, v12, a4, v13);
}

double sub_1890920F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_189095C14();
  return sub_18909282C(v10, a3, a4, a5, v8);
}

id sub_189092150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v3 flagForSetting_];
  if (result >= 2)
  {
    (*(a3 + 16))(&v7, a2, a3);
    return v7;
  }

  return result;
}

id sub_1890921D8(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_189091C1C(a3);

  return [v3 setFlag:a1 & 1 forSetting:v5];
}

uint64_t sub_189092234()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  __swift_allocate_value_buffer(v0, qword_1EA93B710);
  v1 = __swift_project_value_buffer(v0, qword_1EA93B710);
  v2 = sub_18A4A4378();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1890922D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  if ([v3 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(v16, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  v12 = swift_dynamicCast();
  v13 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v12)
  {
    v14 = *(AssociatedTypeWitness - 8);
    v13(v11, 0, 1, AssociatedTypeWitness);
    return (*(v14 + 32))(a3, v11, AssociatedTypeWitness);
  }

  else
  {
    v13(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    return (*(a2 + 16))(a1, a2);
  }
}

uint64_t sub_18909250C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[0] = a3;
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  if ([v4 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  sub_188A3F29C(v21, &v19, &qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  v12 = swift_dynamicCast();
  v13 = *(*(a2 - 8) + 56);
  if (v12)
  {
    v14 = *(a2 - 8);
    v13(v11, 0, 1, a2);
    sub_188A3F5FC(v21, &qword_1EA934050, qword_18A64CA10);
    (*(v14 + 32))(a4, v11, a2);
    v15 = a4;
    v16 = 0;
    return v13(v15, v16, 1, a2);
  }

  v13(v11, 1, 1, a2);
  (*(v9 + 8))(v11, v8);
  sub_188A3F29C(v21, &v19, &qword_1EA934050, qword_18A64CA10);
  if (*(&v20 + 1))
  {
    sub_188A34624(0, &qword_1EA93B790, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      sub_188A3F5FC(v21, &qword_1EA934050, qword_18A64CA10);
      v15 = a4;
      v16 = 1;
      return v13(v15, v16, 1, a2);
    }
  }

  else
  {
    sub_188A3F5FC(&v19, &qword_1EA934050, qword_18A64CA10);
  }

  (*(v18[0] + 16))(a1);
  return sub_188A3F5FC(v21, &qword_1EA934050, qword_18A64CA10);
}

double sub_18909282C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v17 - v12;
  (*(a4 + 16))(a3, a4, v11);
  v14 = sub_18A4A7248();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  if (v14)
  {
    [v6 setObject:0 forSetting:sub_189091C1C(a3)];
  }

  else
  {
    v16 = sub_18A4A86A8();
    [v6 setObject:v16 forSetting:sub_189091C1C(a3)];
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1890929CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v10 = *(a4 - 8);
  v68 = a1;
  v69 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v52 - v13;
  v14 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v52 - v16;
  v18 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v52 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v52 - v27;
  v29 = *(a5 + 16);
  v64 = a3;
  v65 = a2;
  v59 = a5;
  v55 = v29;
  v56 = a5 + 16;
  (v29)(a3, a5, v26);
  v62 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v57 = v18;
  v31 = *(v18 + 16);
  (v31)(v17, v68, v14);
  (v31)(&v17[v30], v28, v14);
  v32 = *(v69 + 48);
  if (v32(v17, 1, a4) == 1)
  {
    v67 = v31;
    v33 = *(v18 + 8);
    v33(v28, v14);
    if (v32(&v17[v30], 1, a4) == 1)
    {
      v33(v17, v14);
LABEL_13:
      v41 = v64;
      goto LABEL_14;
    }

    v35 = a4;
    v34 = v33;
    v31 = v67;
    goto LABEL_7;
  }

  (v31)(v67, v17, v14);
  v52 = v32;
  if (v32(&v17[v30], 1, a4) == 1)
  {
    v34 = *(v18 + 8);
    v34(v28, v14);
    (*(v69 + 8))(v67, a4);
    v32 = v52;
    v35 = a4;
LABEL_7:
    (*(v61 + 8))(v17, v62);
    v36 = v63;
    goto LABEL_8;
  }

  v46 = v53;
  (*(v69 + 32))(v53, &v17[v30], a4);
  LODWORD(v62) = sub_18A4A7248();
  v61 = *(v69 + 8);
  (v61)(v46, a4);
  v47 = v31;
  v48 = *(v18 + 8);
  v48(v28, v14);
  (v61)(v67, a4);
  v34 = v48;
  v31 = v47;
  v34(v17, v14);
  v36 = v63;
  v32 = v52;
  v35 = a4;
  if (v62)
  {
    goto LABEL_13;
  }

LABEL_8:
  (v31)(v36, v68, v14);
  v37 = v32(v36, 1, v35);
  v38 = v64;
  if (v37 != 1)
  {
    v42 = v69;
    v43 = v60;
    (*(v69 + 32))(v60, v36, v35);
    v44 = sub_18A4A86A8();
    v45 = sub_189091C1C(v38);
    [v66 setObject:v44 forSetting:v45];
    swift_unknownObjectRelease();
    (*(v42 + 8))(v43, v35);
    return;
  }

  v34(v36, v14);
  v39 = v58;
  v55(v38, v59);
  v40 = v32(v39, 1, v35);
  v34(v39, v14);
  if (v40 == 1)
  {
    v41 = v38;
LABEL_14:
    v49 = sub_189091C1C(v41);
    [v66 setObject:0 forSetting:v49];
    return;
  }

  v50 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v51 = sub_189091C1C(v38);
  [v66 setObject:v50 forSetting:v51];
}

void sub_189093018(uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v10);
  if ([v6 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v12 = v13;
      sub_1890951D8(AssociatedTypeWitness, AssociatedTypeWitness, x8_0);

      return;
    }
  }

  else
  {
    sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);
  }

  (*(a5 + 16))(a3, a5);
}

uint64_t sub_1890934C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v10);
  if ([v5 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  sub_188A3F29C(v16, &v14, &qword_1EA934050, qword_18A64CA10);
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v13;
      sub_1890951D8(a2, a2, a5);
      sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);

      return (*(*(a2 - 8) + 56))(a5, 0, 1, a2);
    }
  }

  else
  {
    sub_188A3F5FC(&v14, &qword_1EA934050, qword_18A64CA10);
  }

  sub_188A3F29C(v16, &v14, &qword_1EA934050, qword_18A64CA10);
  if (*(&v15 + 1))
  {
    sub_188A34624(0, &qword_1EA93B790, 0x1E695DFB0);
    if (swift_dynamicCast())
    {
      sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);

      return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
    }
  }

  else
  {
    sub_188A3F5FC(&v14, &qword_1EA934050, qword_18A64CA10);
  }

  (*(a4 + 16))(a1, a4);
  return sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);
}

void sub_189093AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[10] = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v28 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v28 - v18;
  (*(a6 + 16))(a4, a6, v17);
  v20 = sub_18A4A7248();
  v21 = *(v14 + 8);
  v21(v19, AssociatedTypeWitness);
  if (v20)
  {
    v22 = sub_189091C1C(a4);
    [v32 setObject:0 forSetting:v22];
  }

  else
  {
    v28[8] = a2;
    v28[9] = v21;
    v23 = v32;
    v33[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v25 = *(v14 + 16);
    v28[6] = a1;
    v28[7] = v25;
    v25(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
    v26 = *(a5 + 112);
    v28[5] = a5;
    v27 = v26(v33);
    [v23 setObject:v27 forSetting:sub_189091C1C(a4)];
  }
}

void sub_1890940D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a8;
  v69 = a6;
  v81 = a4;
  v59[2] = a3;
  v80 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v59 - v11;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = v59 - v16;
  v17 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = v59 - v19;
  v21 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v59[1] = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v61 = v59 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v67 = v59 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v75 = v59 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v79 = v59 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v59 - v34;
  v36 = *(a7 + 16);
  v78 = a2;
  v68 = a7;
  v66 = a7 + 16;
  v65 = v36;
  (v36)(v81, a7, v33);
  v73 = TupleTypeMetadata2;
  v37 = *(TupleTypeMetadata2 + 48);
  v71 = v21;
  v38 = *(v21 + 16);
  v38(v20, v80, v17);
  v38(&v20[v37], v35, v17);
  v77 = v12;
  v39 = *(v12 + 48);
  v40 = v39(v20, 1, a5);
  v74 = v38;
  if (v40 == 1)
  {
    v41 = *(v21 + 8);
    v41(v35, v17);
    if (v39(&v20[v37], 1, a5) == 1)
    {
      v41(v20, v17);
LABEL_12:
      v47 = v81;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v38(v79, v20, v17);
  if (v39(&v20[v37], 1, a5) == 1)
  {
    v41 = *(v21 + 8);
    v41(v35, v17);
    (*(v77 + 8))(v79, a5);
LABEL_6:
    (*(v72 + 8))(v20, v73);
    v42 = v75;
    goto LABEL_7;
  }

  v73 = v21 + 16;
  v51 = v77;
  v52 = v63;
  (*(v77 + 32))(v63, &v20[v37], a5);
  LODWORD(v72) = sub_18A4A7248();
  v53 = *(v51 + 8);
  v53(v52, a5);
  v41 = *(v21 + 8);
  v41(v35, v17);
  v53(v79, a5);
  v41(v20, v17);
  v42 = v75;
  if (v72)
  {
    goto LABEL_12;
  }

LABEL_7:
  v43 = v39;
  v74(v42, v80, v17);
  if (v39(v42, 1, a5) != 1)
  {
    v48 = v77;
    v49 = v70;
    (*(v77 + 32))(v70, v42, a5);
    v82[3] = a5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
    (*(v48 + 16))(boxed_opaque_existential_0, v49, a5);
    v57 = (*(v69 + 112))(v82);
    v58 = sub_189091C1C(v81);
    [v76 setObject:v57 forSetting:v58];

    (*(v48 + 8))(v49, a5);
    return;
  }

  v41(v42, v17);
  v44 = v67;
  v45 = v81;
  v65(v81, v68);
  v46 = v43(v44, 1, a5);
  v41(v44, v17);
  if (v46 == 1)
  {
    v47 = v45;
LABEL_13:
    v54 = sub_189091C1C(v47);
    [v76 setObject:0 forSetting:v54];
    return;
  }

  v55 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v56 = sub_189091C1C(v45);
  [v76 setObject:v55 forSetting:v56];
}

void sub_189094C08(uint64_t a1)
{
  sub_188A55598(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B780, &qword_18A6627D0);
  if (swift_dynamicCast())
  {
  }
}

id sub_189094C7C(uint64_t a1)
{
  sub_188A55598(a1, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B780, &qword_18A6627D0);
  if (swift_dynamicCast())
  {
    v2 = v6;
    v1 = [v6 hash];
  }

  else
  {
    sub_189095BC0();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_189094D44(uint64_t a1)
{
  sub_188A55598(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B780, &qword_18A6627D0);
  if (swift_dynamicCast())
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    v3 = v8;
    v4 = sub_18A4A7258();
    [v2 encodeObject:v3 forKey:v4];

    v5 = [v2 encodedData];
    v1 = sub_18A4A2928();
  }

  else
  {
    sub_189095BC0();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  return v1;
}

void sub_189094E94(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v9 = sub_18A4A7D38();
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v23 = &unk_1EFE50F68;
  if (!swift_dynamicCastTypeToObjCProtocolConditional())
  {
    goto LABEL_5;
  }

  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_188DBF7D8(a1, a2);
  v13 = sub_188DCC878(a1, a2);
  sub_188DC0F30(a1, a2);
  if (v5)
  {

LABEL_5:
    sub_189095BC0();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    return;
  }

  if (!v13)
  {
    goto LABEL_5;
  }

  v15 = sub_18A4A7C38();

  v22 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B778, &qword_18A6627C8);
  v16 = swift_dynamicCast();
  v17 = *(*(a4 - 8) + 56);
  if ((v16 & 1) == 0)
  {
    v17(v11, 1, 1, a4);
    (*(v20 + 8))(v11, v9);
    goto LABEL_5;
  }

  v18 = *(a4 - 8);
  v17(v11, 0, 1, a4);
  (*(v18 + 32))(v21, v11, a4);
}

uint64_t (**sub_189095168(void *a1))(void *)
{
  v3 = objc_allocWithZone(v1);
  sub_188A55598(a1, v6);
  v4 = sub_188DBF4DC(v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

void sub_1890951D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v22 = a3;
  v23 = a1;
  ObjectType = swift_getObjectType();
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents;
  swift_beginAccess();
  sub_188DC7F98(v5 + v14, v28);
  if (v29 == 1)
  {
    sub_188A55538(v28, &v25);
    sub_188A55598(&v25, v24);
    if (swift_dynamicCast())
    {
      v15 = __swift_destroy_boxed_opaque_existential_0Tm(&v25);
      v16 = v30;
      (*(v30 + 56))(v13, 0, 1, a2, v15);
      (*(v16 + 32))(v22, v13, a2);
    }

    else
    {
      (*(v30 + 56))(v13, 1, 1, a2);
      (*(v11 + 8))(v13, v10);
      sub_189095BC0();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(&v25);
    }
  }

  else
  {
    v17 = v28[0];
    (*(ObjectType + 160))(*&v28[0], *(&v28[0] + 1), v23, a2);
    if (v4)
    {
      sub_188DC0F30(v17, *(&v17 + 1));
    }

    else
    {
      v26 = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
      v20 = v30;
      (*(v30 + 16))(boxed_opaque_existential_0, v9, a2);
      sub_188DC0F30(v17, *(&v17 + 1));
      v27 = 1;
      swift_beginAccess();
      sub_188DCCB38(&v25, v5 + v14);
      swift_endAccess();
      (*(v20 + 32))(v22, v9, a2);
    }
  }
}

uint64_t sub_1890955A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v3);
  v4 = OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents;
  swift_beginAccess();
  sub_188DC7F98(v1 + v4, &v8);
  if (v10)
  {
    sub_188A55538(&v8, v7);
    v5 = (*(ObjectType + 144))(v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    v5 = v9;
    sub_188DC0F30(v8, *(&v8 + 1));
  }

  return v5;
}

BOOL sub_1890958EC(uint64_t a1)
{
  swift_getObjectType();
  sub_188A3F29C(a1, v7, &qword_1EA934050, qword_18A64CA10);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = [v1 hash];
      v4 = [v6 hash];

      return v3 == v4;
    }
  }

  else
  {
    sub_188A3F5FC(v7, &qword_1EA934050, qword_18A64CA10);
  }

  return 0;
}

uint64_t sub_189095A4C(uint64_t a1)
{
  sub_189095BC0();
  swift_allocError();
  *v1 = 1;
  return swift_willThrow();
}

id sub_189095ACC()
{
  v1 = type metadata accessor for _ValueBox();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t sub_189095B04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_189095B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_189095B8C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_189095BC0()
{
  result = qword_1EA93B750;
  if (!qword_1EA93B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B750);
  }

  return result;
}

unint64_t sub_189095C14()
{
  result = qword_1EA93B788;
  if (!qword_1EA93B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B788);
  }

  return result;
}

unint64_t sub_189095C7C()
{
  result = qword_1EA93B798;
  if (!qword_1EA93B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B798);
  }

  return result;
}

_UIKitFeatures __swiftcall _UIKitFeatures.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIKitFeatures()
{
  result = qword_1EA93B7A0;
  if (!qword_1EA93B7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93B7A0);
  }

  return result;
}

uint64_t sub_189095DF4()
{
  v0 = sub_18A4A6BD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 - 2) > 3)
  {
    v6 = MEMORY[0x1E6981CB0];
  }

  else
  {
    v6 = qword_1E70F24C0[(v5 - 2)];
  }

  (*(v1 + 104))(v3, *v6, v0);
  v7 = sub_18A4A6BE8();
  (*(v1 + 8))(v3, v0);
  return v7 & 1;
}

double sub_1890960C0()
{
  v1 = v0;
  v2 = [v0 collectorInteraction];

  v3 = sub_188E8F750(MEMORY[0x1E69E7CC0]);
  v4 = qword_1EFAB91E0;
  sub_188FAAF08(qword_1EFAB91E0, &v21);
  v5 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v5, v4, isUniquelyReferenced_nonNull_native);
  v7 = qword_1EFAB91E8;
  sub_188FAAF08(qword_1EFAB91E8, &v21);
  v8 = v21;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v8, v7, v9);
  v10 = qword_1EFAB91F0;
  sub_188FAAF08(qword_1EFAB91F0, &v21);
  v11 = v21;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v11, v10, v12);
  v13 = qword_1EFAB91F8;
  sub_188FAAF08(qword_1EFAB91F8, &v21);
  v14 = v21;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_188EA0E74(v14, v13, v15);
  v16 = v3;
  v17 = OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_glassFrostValues;
  swift_beginAccess();
  v18 = *&v1[v17];
  *&v1[v17] = v16;
  LOBYTE(v16) = sub_188F8E6AC(v18, v16);

  if ((v16 & 1) != 0 || (v19 = [v1 observer]) == 0)
  {
  }

  else
  {
    [v19 _scrollPocketAppearanceObserverDidUpdate_];

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1890963A8(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188F2AF98;
  *(v4 + 24) = v3;
  v21 = sub_188A4B574;
  v22 = v4;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188A4A968;
  v20 = &block_descriptor_98;
  v5 = _Block_copy(&v17);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v9 = [v6 style];
  v10 = [v9 verbosity];

  if (v10 == 2)
  {

    return;
  }

  v11 = [objc_opt_self() succinctStyle];
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_189096CA0;
  *(v13 + 24) = v12;
  v21 = sub_188E3FE50;
  v22 = v13;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188A4A968;
  v20 = &block_descriptor_15_2;
  v14 = _Block_copy(&v17);
  v15 = v6;
  v16 = v7;

  [v15 overlayStyle:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    goto LABEL_7;
  }
}

void sub_1890966A8(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_189096CA8;
  *(v5 + 24) = v4;
  v9[4] = sub_188E3FE50;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_25_4;
  v6 = _Block_copy(v9);
  v7 = a2;
  v8 = a1;

  [v8 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

double sub_18909680C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_glassFrostValues;
  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(1), (v5 & 1) != 0))
  {
    swift_endAccess();
    v6 = sub_18A4A8778();
    v7 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(2), (v8 & 1) != 0))
  {
    swift_endAccess();
    v9 = sub_18A4A8778();
    v10 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(4), (v11 & 1) != 0))
  {
    swift_endAccess();
    v12 = sub_18A4A8778();
    v13 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(*(a1 + v4) + 16) && (sub_188C4585C(8), (v14 & 1) != 0))
  {
    swift_endAccess();
    v15 = sub_18A4A8778();
    v16 = sub_18A4A7258();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

id _UIScrollPocketAppearanceObserverInteraction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIScrollPocketAppearanceObserverInteraction()
{
  result = qword_1EA93B7D0;
  if (!qword_1EA93B7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93B7D0);
  }

  return result;
}

void sub_189096CB0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v27 = v26;
  v114 = a8;
  v113 = a7;
  v107 = a6;
  LODWORD(v108) = a5;
  v116 = a4;
  v117 = a3;
  v106 = a1;
  v123 = a26;
  v109 = a25;
  v32 = *v26;
  v33 = *(v32 + 80);
  v110 = a21;
  v118 = sub_18A4A7D38();
  v112 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v111 = &v101 - v34;
  v121 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v103 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v102 = &v101 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v105 = &v101 - v40;
  v115 = *(v32 + 88);
  v42 = type metadata accessor for RunningInProcessAnimation(255, v33, v115, v41);
  v43 = sub_18A4A7D38();
  v104 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v101 - v44;
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v101 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v101 - v51;
  v57 = sub_188D385B0(v53, v54, v55, v56);
  v119 = v46;
  v120 = a2;
  v122 = v42;
  if (!v57)
  {
    (*(v46 + 56))(v45, 1, 1, v42);
    sub_189098FD8(v45, v107, v27, v117, v116, v108 & 1, v52);
    (*(v104 + 8))(v45, v43);
    goto LABEL_7;
  }

  v58 = v57;
  isEscapingClosureAtFileLocation = v107;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v60 = v120;
    if (byte_1EA931338 == 1)
    {
      MEMORY[0x1EEE9AC00](v57);
      *(&v101 - 8) = isEscapingClosureAtFileLocation;
      *(&v101 - 7) = v27;
      v61 = v116;
      *(&v101 - 6) = v117;
      *(&v101 - 5) = v61;
      *(&v101 - 32) = v108 & 1;
      *(&v101 - 3) = v60;
      *(&v101 - 2) = v58;
      sub_1890E3CDC(sub_18909A420, (&v101 - 10), v42, v62);
    }

    else
    {
      v64 = *(*v58 + 104);
      swift_beginAccess();
      v65 = v119;
      (*(v119 + 16))(v49, v58 + v64, v42);
      sub_189099158(v49, isEscapingClosureAtFileLocation, v27, v117, v116, v108 & 1, v60, v58, v52);

      (*(v65 + 8))(v49, v42);
    }

LABEL_7:
    _s21RunningAnimationEntryCMa(0, v33, v115, v63);
    v66 = v123;

    v42 = sub_1890E44D0(v52, v109, v66);

    v67 = v121;
    v68 = v111;
    if (v110)
    {
      swift_unknownObjectWeakAssign();
    }

    v110 = a22;
    v123 = a20;
    v109 = a19;
    v108 = a17;
    v69 = *(*v27 + 136);
    swift_beginAccess();
    v70 = v112;
    v71 = v118;
    (*(v112 + 16))(v68, v27 + v69, v118);
    if ((v67[6].isa)(v68, 1, v33) == 1)
    {
      (*(v70 + 8))(v68, v71);
      if ((a24 & 1) == 0)
      {
        v72 = v102;
        sub_18A4A83D8();
        v73 = v103;
        (v121[2].isa)(v103, v72, v33);
        sub_18A4A4E98();
        v77 = sub_1890E4524(v73, v74, v75, v76);
        isa = v121[1].isa;
        (isa)(v73, v33, v77);
        (isa)(v72, v33);
        v67 = v121;
      }
    }

    else
    {
      v79 = v105;
      (v67[4].isa)(v105, v68, v33);
      v83 = sub_1890E4524(v79, v80, v81, v82);
      (v67[1].isa)(v79, v33, v83);
    }

    v84 = swift_allocBox();
    v118 = v84;
    (v67[7].isa)(v85, 1, 1, v33);
    v86 = *(v27 + *(*v27 + 168));
    v90 = sub_188F7EA98(v122, v87, v88, v89);
    v117 = v52;
    v91 = v90;
    v92 = swift_allocObject();
    v93 = v113;
    v92[2] = v42;
    v92[3] = v93;
    v92[4] = v114;
    v92[5] = v27;
    v94 = v120;
    v92[6] = v84;
    v92[7] = v94;
    v92[8] = v108;
    v92[9] = a18;
    v95 = v123;
    v92[10] = v109;
    v92[11] = v95;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v58 = swift_allocObject();
    *(v58 + 16) = a9;
    *(v58 + 20) = a10;
    *(v58 + 24) = a11;
    *(v58 + 28) = v110;
    *(v58 + 32) = v86;
    *(v58 + 33) = v91 & 1;
    *(v58 + 40) = sub_18909A3DC;
    *(v58 + 48) = v92;
    v121 = *(v94 + 280);
    v52 = swift_allocObject();
    *(v52 + 2) = v94;
    *(v52 + 3) = v58;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_188AA7334;
    *(v33 + 24) = v52;
    aBlock[4] = sub_188E3FE50;
    v125 = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_48_2;
    v96 = _Block_copy(aBlock);
    v49 = v125;
    swift_retain_n();

    dispatch_sync(v121, v96);
    _Block_release(v96);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    v57 = swift_once();
  }

  sub_18909A2F4(v97, v98, v99, v100);

  (*(v119 + 8))(v117, v122);
}

void sub_189097724()
{
  v0 = _UIMainBundleIdentifier();
  if (v0)
  {
    v1 = v0;
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD00000000000001FLL && 0x800000018A6A3A30 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_18A4A86C8();
    }
  }

  else
  {
    v5 = 0;
  }

  byte_1EA931338 = v5 & 1;
}

uint64_t sub_1890977D4()
{
  v0 = sub_188A81128();
  if (!v0)
  {
    return 1;
  }

  v1 = v0[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_executionMode];

  return v1;
}

uint64_t sub_189097818(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16[-v8];
  sub_188AA9344(v10, &v16[-v8]);
  v11 = v2[4];
  v16[16] = a2;
  v17 = v2;
  v18 = a1;
  v19 = v9;
  _s21RunningAnimationEntryCMa(255, v6, *(v5 + 88), v12);
  sub_18A4A7D38();
  v13 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v14));
  sub_189098FB4((v11 + v13));
  os_unfair_lock_unlock((v11 + v14));
  return (*(v7 + 8))(v9, v6);
}

void sub_18909799C(void *a1, int a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v44 = a5;
  v41 = a4;
  LODWORD(v40) = a2;
  v39 = *a3;
  v8 = *(v39 + 80);
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v33 - v9;
  v11 = *(v10 + 88);
  v13 = type metadata accessor for RunningInProcessAnimation(255, v8, v11, v12);
  v14 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v45 = v13;
  v17 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  v23 = *a1;
  if (*a1)
  {
    v36 = v40 & 1;
    v34 = v22;
    v35 = v8;
    v37 = v20;
    v38 = a1;
    if (v40)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    v40 = v5;
    v39 = v19;
    swift_beginAccess();
    v33 = _s8ComposerVMa(0, v8, v11, v25);
    if (sub_1890EEB64(v33))
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    [v41 parametersForTransitionFromState:v26 toState:v24];
    v27 = *(*v23 + 104);
    swift_beginAccess();
    v28 = v45;
    (*(v17 + 16))(v16, v23 + v27, v45);
    (*(v17 + 56))(v16, 0, 1, v28);
    sub_188AA96FC(v63, &v55);
    v46 = v55;
    v47 = v56;
    v48 = v57 & 1;
    v49 = v58;
    v50 = v59 & 1 | 0x8000000000000000;
    v51 = v60;
    v52 = v61;
    v53 = v62;
    v54 = 0;
    v29 = v42;
    sub_1890E3758(v30, v42);
    type metadata accessor for InProcessAnimationManager();
    sub_18920C05C(a3);
    v31 = sub_188A33550();

    swift_beginAccess();
    v32 = v34;
    sub_1890EEB70(v16, &v46, v36, v44, v29, v33, v34, v31);
    swift_endAccess();
    (*(v43 + 8))(v29, v35);
    sub_188AAFF20(&v46);
    (*(v37 + 8))(v16, v39);
    swift_beginAccess();
    (*(v17 + 40))(v23 + v27, v32, v45);
    swift_endAccess();
    *v38 = v23;
  }
}

double sub_189097E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v10 = Strong;
  v11 = sub_188A81128();
  if (v11)
  {
    v13 = v11;
    v14 = type metadata accessor for UIAnimatableProperty(0, a5, a6, v12);

    WitnessTable = swift_getWitnessTable();
    sub_188E853EC(v10, a3, v13, v14, WitnessTable);
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  return v17;
}

uint64_t sub_189097EF8(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = __currentViewAnimationState;
  if (!__currentViewAnimationState)
  {
    return 0;
  }

  v16 = *v8;
  _s23InProcessAnimationStateCMa();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    return 0;
  }

  v31 = v17;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = objc_opt_self();
  v24 = v9;
  if (([v23 areAnimationsEnabled] & 1) != 0 || *(v31 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType) == 2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = v18;
    v30 = v24;
    v26 = swift_allocObject();
    v26[2] = *(v16 + 80);
    v26[3] = *(v16 + 88);
    v26[4] = v19;
    v26[5] = v20;
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v22;
    sub_188A52E38(a3, v18);
    sub_188A52E38(v19, v20);
    sub_188A52E38(v21, v22);
    sub_188ECE354(a1, a2, sub_189098F10, v25, sub_189098F4C, v26, sub_189098F84, v27, v8);

    v24 = v30;

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

double sub_189098124(char *a1, uint64_t a2)
{
  v42 = *a1;
  v4 = v42;
  v5 = *(v42 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v40 - v7;
  v8 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v40 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = *(v4 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v19, a2, v5);
  v21 = v6;
  v43 = *(v6 + 56);
  v44 = v6 + 56;
  v43(v19, 0, 1, v5);
  v49 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v52 = v12;
  v23 = *(v12 + 16);
  v47 = a1;
  v45 = v20;
  v23(v11, &a1[v20], v8);
  v54 = v8;
  v23(&v11[v22], v19, v8);
  v50 = v21;
  v24 = *(v21 + 48);
  v53 = v5;
  if (v24(v11, 1, v5) == 1)
  {
    v25 = *(v52 + 8);
    v25(v19, v54);
    v26 = v11;
    if (v24(&v11[v22], 1, v53) == 1)
    {
      v25(v11, v54);
      v27 = v52;
LABEL_8:
      v36 = v46;
      v43(v46, 1, 1, v53);
      v37 = v47;
      v38 = v45;
      swift_beginAccess();
      (*(v27 + 40))(&v37[v38], v36, v54);
      swift_endAccess();
      return 0.0;
    }

    goto LABEL_6;
  }

  v23(v51, v11, v54);
  v26 = v11;
  if (v24(&v11[v22], 1, v53) == 1)
  {
    (*(v52 + 8))(v19, v54);
    (*(v50 + 8))(v51, v53);
LABEL_6:
    (*(v48 + 8))(v26, v49);
    return 0.0;
  }

  v28 = v50;
  v29 = &v11[v22];
  v30 = v41;
  v31 = v53;
  (*(v50 + 32))(v41, v29, v53);
  v32 = v51;
  LODWORD(v49) = sub_18A4A7248();
  v33 = *(v28 + 8);
  v33(v30, v31);
  v27 = v52;
  v34 = *(v52 + 8);
  v35 = v54;
  v34(v19, v54);
  v33(v32, v31);
  v34(v26, v35);
  if (v49)
  {
    goto LABEL_8;
  }

  return 0.0;
}

double sub_189098670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (!*(v4 + *(*v4 + 176)))
  {
    if (sub_188D385B0(a1, a2, a3, a4))
    {
    }

    else
    {
      swift_beginAccess();
      v8 = _s8ComposerVMa(0, *(v5 + 80), *(v5 + 88), v7);
      if ((sub_1890EEB64(v8) & 1) == 0)
      {
        v9 = *(v4 + *(*v4 + 192));

        v9(v10);
      }
    }
  }

  return result;
}

uint64_t sub_18909878C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v73 = a2;
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 88);
  v8 = _s8ComposerVMa(0, v6, v7, a1);
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v58 - v9;
  v11 = _s15InstantlyStableVMa(0, v6, v7, v10);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v58 - v12;
  v14 = _s7SwiftUIVMa(0, v6, v7, v13);
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v58 - v15;
  v17 = _s14FrictionBounceVMa(0, v6, v7, v16);
  v62 = *(v17 - 8);
  v63 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v58 - v18;
  v60 = _s6SpringVMa(0, v6, v7, v19);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v21 = &v58 - v20;
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v26 = type metadata accessor for RunningInProcessAnimation(0, v6, v7, v25);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  v37 = sub_188D385B0(v33, v34, v35, v36);
  if (v37)
  {
    v38 = v37;
    v39 = *(*v37 + 104);
    swift_beginAccess();
    (*(v27 + 16))(v32, v38 + v39, v26);
    (*(v27 + 32))(v29, v32, v26);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v46 = v64;
        v47 = v65;
        v48 = v66;
        (*(v65 + 32))(v64, v29, v66);
        sub_188FBAC20(v48, v24);
        (*(v47 + 8))(v46, v48);
        goto LABEL_13;
      }

      v51 = v67;
      v50 = v68;
      v49 = v69;
      (*(v68 + 32))(v67, v29, v69);
      (*(v74 + 16))(v24, v51, v6);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v41 = v59;
        v42 = v60;
        (*(v59 + 32))(v21, v29, v60);
        (*(v74 + 16))(v24, &v21[*(v42 + 44)], v6);
        (*(v41 + 8))(v21, v42);
LABEL_13:
        v52 = v73;
        (*(v74 + 32))(v73, v24, v6);
        v53 = *(*v4 + 152);
        swift_beginAccess();
        v55 = v71;
        v54 = v72;
        v56 = v4 + v53;
        v57 = v70;
        (*(v71 + 16))(v70, v56, v72);
        sub_1890F0BA0(v52, v54, a3);

        (*(v55 + 8))(v57, v54);
        return (*(v74 + 56))(v52, 0, 1, v6);
      }

      v50 = v62;
      v49 = v63;
      v51 = v61;
      (*(v62 + 32))(v61, v29, v63);
      (*(v74 + 16))(v24, &v51[*(v49 + 52)], v6);
    }

    (*(v50 + 8))(v51, v49);
    goto LABEL_13;
  }

  v43 = v73;
  v44 = *(v74 + 56);

  return v44(v43, 1, 1, v6);
}

uint64_t sub_189098F10()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1() & 1;
  }

  else
  {
    return 0;
  }
}

double sub_189098F4C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0.0;
  }

  v1();
  return result;
}

uint64_t sub_189098F84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_189098FD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X8>)
{
  v9 = *a3;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v10);
  swift_beginAccess();
  v12 = *(v9 + 80);
  v13 = *(v9 + 88);
  v15 = _s8ComposerVMa(0, v12, v13, v14);
  v16 = sub_1890EEB64(v15);
  (*(v11 + 16))(v23, v16 & 1, a1, a4, a5, v12, v13, v10, v11);
  v17 = sub_188A33550();
  swift_beginAccess();
  sub_1890EEB70(a1, v23, a6, a4, a5, v15, a7, v17);
  swift_endAccess();
  return sub_188AAFF20(v23);
}

void sub_189099158(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v24 = a6;
  v22 = a4;
  v23 = a5;
  v21 = a2;
  v14 = type metadata accessor for RunningInProcessAnimation(255, *(*a3 + 80), *(*a3 + 88), a4);
  v15 = sub_18A4A7D38();
  v16 = *(v15 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  v20 = *(v14 - 8);
  (*(v20 + 16))(&v21 - v18, a1, v14, v17);
  (*(v20 + 56))(v19, 0, 1, v14);
  sub_189098FD8(v19, v21, a3, v22, v23, v24, a9);
  (*(v16 + 8))(v19, v15);
  sub_1890E3C68(a7, 0);
  *(a8 + *(*a8 + 120)) = 1;
}

double sub_189099334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t x6_0, uint64_t a16, __int128 a15, uint64_t a18)
{
  v24 = a1;
  sub_18A4A7D38();
  v26 = swift_projectBox();
  v44 = 0;
  v43 = 0.0;
  v30 = a2;
  v31 = v24;
  v32 = &v44;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a7 / UIAnimationDragCoefficient();
  v37 = &v43;
  v38 = v26;
  v39 = x6_0;
  v40 = a16;
  v41 = a15;
  v42 = a18;
  sub_1890E3CDC(sub_18909A47C, v29, MEMORY[0x1E69E7CA8] + 8, v27);
  return v43;
}

void sub_18909944C(double a1, uint64_t a2, void *a3, char a4, _BYTE *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, double *a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v132 = a9;
  v139 = a7;
  v140 = a6;
  v19 = a3;
  v131 = *a3;
  v20 = v131;
  v21 = v131[10];
  v22 = a11;
  v23 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v129 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v133 = v119 - v24;
  v146 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v134 = v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v135 = v119 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v137 = v119 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v141 = v119 - v32;
  v147 = v21;
  v145 = *(v21 - 8);
  v33 = v145[8];
  MEMORY[0x1EEE9AC00](v34);
  v130 = v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v136 = v119 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v128 = v119 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = (v119 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v144 = v119 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v142 = (v119 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v143 = (v119 - v47);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  if ((*(v19 + v20[15]) & 1) == 0 && (a4 & 1) == 0 && (v140() & 1) == 0)
  {
    v127 = a5;
    v123 = v48;
    v140 = v41;
    v126 = a10;
    signpost_c2_entryLock_start();
    v56 = v143;
    sub_188AA9344(v57, v143);
    v58 = v142;
    sub_1890E3E58(v142, a1);
    v59 = v131[11];
    v60 = (*(v59 + 56))(v56, v147, v59);
    *v132 = v60;
    sub_188A83298(v58, v61, v62, v63);
    signpost_c2_entryLock_start();
    v69 = sub_1890E3F08(v64, v65, v66, v67);
    v139 = v23;
    v125 = a8;
    v124 = a11;
    v120 = v59;
    v121 = v19;
    v70 = v144;
    if (v69)
    {
      sub_1890E3758(v68, v144);
      sub_18A4A8408();
      v71 = v145;
    }

    else
    {
      v71 = v145;
      (v145[2])(v144, v58, v147);
      sub_188D38BD8(v72, v140);
    }

    *v127 = v69 & 1;
    v73 = v126;
    swift_beginAccess();
    v74 = *(v146 + 16);
    v75 = v141;
    v76 = v73;
    v77 = v139;
    v74(v141, v76, v139);
    v78 = v71[2];
    v79 = v137;
    v80 = v147;
    v119[1] = v71 + 2;
    v119[0] = v78;
    v78(v137, v70, v147);
    v81 = v71[7];
    v132 = (v71 + 7);
    v131 = v81;
    (v81)(v79, 0, 1, v80);
    v82 = *(TupleTypeMetadata2 + 48);
    v83 = v133;
    v74(v133, v75, v77);
    v122 = v82;
    v74(&v83[v82], v79, v77);
    v84 = v71[6];
    v85 = v84(v83, 1, v80);
    v48 = v123;
    if (v85 == 1)
    {
      v86 = *(v146 + 8);
      v86(v79, v77);
      v86(v141, v77);
      v87 = v84(&v83[v122], 1, v147);
      v88 = v145;
      v19 = v121;
      if (v87 == 1)
      {
        v86(v83, v139);
        v89 = v88[1];
        v22 = v124;
LABEL_26:
        v92 = v147;
        v89(v140, v147);
        v89(v142, v92);
        v89(v143, v92);
        v111 = v88[4];
        a8 = v125;
        v109 = v127;
        v110 = v146;
        goto LABEL_27;
      }
    }

    else
    {
      v74(v135, v83, v77);
      v90 = v122;
      if (v84(&v83[v122], 1, v147) != 1)
      {
        v112 = v145;
        v113 = &v83[v90];
        v114 = v128;
        v115 = v147;
        (v145[4])(v128, v113, v147);
        LODWORD(TupleTypeMetadata2) = sub_18A4A7248();
        v89 = v112[1];
        v89(v114, v115);
        v116 = *(v146 + 8);
        v116(v137, v77);
        v116(v141, v77);
        v89(v135, v115);
        v116(v83, v77);
        v88 = v112;
        v22 = v124;
        v19 = v121;
        if (TupleTypeMetadata2)
        {
          goto LABEL_26;
        }

LABEL_20:
        TupleTypeMetadata2 = a13;
        v141 = a12;
        v92 = v147;
        v93 = v119[0];
        (v119[0])(v136, v144, v147);
        v94 = v130;
        v93(v130, v140, v92);
        v95 = *(v88 + 80);
        v96 = (v95 + 48) & ~v95;
        v97 = v88;
        v98 = (v33 + v95 + v96) & ~v95;
        v99 = swift_allocObject();
        v100 = v120;
        v99[2] = v92;
        v99[3] = v100;
        v99[4] = v141;
        v99[5] = a13;
        v101 = v97[4];
        (v101)(v99 + v96, v136, v92);
        v141 = v101;
        (v101)(v99 + v98, v94, v92);
        v102 = swift_allocObject();
        *(v102 + 16) = sub_18909A4C4;
        *(v102 + 24) = v99;
        swift_beginAccess();
        v103 = *(v22 + 112);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v22 + 112) = v103;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = sub_188E4B69C(0, v103[2] + 1, 1, v103);
          *(v22 + 112) = v103;
        }

        v106 = v103[2];
        v105 = v103[3];
        if (v106 >= v105 >> 1)
        {
          v103 = sub_188E4B69C((v105 > 1), v106 + 1, 1, v103);
        }

        v103[2] = v106 + 1;
        v107 = &v103[2 * v106];
        v107[4] = sub_18909A5D4;
        v107[5] = v102;
        *(v22 + 112) = v103;
        swift_endAccess();
        sub_188AA7584();

        v108 = v145[1];
        v108(v140, v92);
        v108(v142, v92);
        v108(v143, v92);
        a8 = v125;
        v109 = v127;
        v110 = v146;
        v111 = v141;
LABEL_27:
        v117 = v134;
        (v111)(v134, v144, v92);
        (v131)(v117, 0, 1, v92);
        v118 = v126;
        swift_beginAccess();
        (*(v110 + 40))(v118, v117, v139);
        if ((*v109 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_5;
      }

      v91 = *(v146 + 8);
      v91(v137, v77);
      v91(v141, v77);
      v88 = v145;
      (v145[1])(v135, v147);
      v19 = v121;
    }

    (*(v129 + 8))(v83, TupleTypeMetadata2);
    v22 = v124;
    goto LABEL_20;
  }

  *a5 = 1;
  *(v48 + 16) = 1;
LABEL_5:
  v49 = swift_allocObject();
  v49[2] = v19;
  v49[3] = a14;
  v49[4] = a15;
  v49[5] = a8;
  v49[6] = v22;
  v49[7] = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_18909A554;
  *(v50 + 24) = v49;
  swift_beginAccess();
  v51 = *(v22 + 112);

  v52 = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 112) = v51;
  if ((v52 & 1) == 0)
  {
    v51 = sub_188E4B69C(0, v51[2] + 1, 1, v51);
    *(v22 + 112) = v51;
  }

  v54 = v51[2];
  v53 = v51[3];
  if (v54 >= v53 >> 1)
  {
    v51 = sub_188E4B69C((v53 > 1), v54 + 1, 1, v51);
  }

  v51[2] = v54 + 1;
  v55 = &v51[2 * v54];
  v55[4] = sub_18909A5D4;
  v55[5] = v50;
  *(v22 + 112) = v51;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:
}

double sub_18909A138(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((*(a2 + *(*a2 + 120)) & 1) == 0)
  {
    a3(a1);
    sub_18909A2F4(0, v10, v11, v12);
    swift_beginAccess();
    sub_1890E3C68(a6, (*a7 & 1) == 0);
  }

  sub_188A32084(sub_18909A5CC, a5);

  return result;
}

void sub_18909A20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a1 + 176);
  v5 = *(a1 + v4);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v4) = v7;
    sub_189098670(a1, a2, a3, a4);
  }
}

void sub_18909A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  _s21RunningAnimationEntryCMa(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_18A4A7D38();
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_18909A434((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));
}

double sub_18909A434(void *a1)
{
  v3 = *(v1 + 32);

  *a1 = v3;

  return result;
}

double sub_18909A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 56) + 16;
  v7 = *(v4 + 32);
  v9[1] = *(v4 + 16);
  v9[2] = v7;
  v10 = v5;
  v11 = v6;
  sub_1890E3CDC(sub_18909A5BC, v9, MEMORY[0x1E69E7CA8] + 8, a4);
  return 0.0;
}

uint64_t (*UIMutableTraits._headroomSuppressionLimit.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = v3;
  *(a1 + 8) = a2;
  *a1 = (*(a3 + 80))(&type metadata for _UITraitHDRHeadroomSuppressionLimit, &type metadata for _UITraitHDRHeadroomSuppressionLimit, &protocol witness table for _UITraitHDRHeadroomSuppressionLimit, a2, a3);
  return sub_18909A740;
}

void sub_18909A7A0(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_18A4A7F68();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_188E6D40C(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v32)
    {
      v3 = sub_18A4A7F08();
    }

    else
    {
      v3 = sub_18A4A7EC8();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_189077584(v35, v36, v37, v1, v5);
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939090, &qword_18A657BA0);
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        v16 = v33;
        v38 = v33;
        v18 = *(v33 + 16);
        v17 = *(v33 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_188E6D40C((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_18A4A7F28())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7F8, &qword_18A662C58);
          v7 = sub_18A4A77C8();
          sub_18A4A7FE8();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_188FFD0A4(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                v5.n128_f64[0] = sub_188FFD0A4(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            v5.n128_f64[0] = sub_188FFD0A4(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_18909AB08(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_18A4A7F68();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_188E6D444(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      v3 = sub_18A4A7F08();
    }

    else
    {
      v3 = sub_18A4A7EC8();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1890777B0(v34, v35, v36, v1);
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E8, &qword_18A662C40);
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_188E6D444((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_18A4A7F28())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7F0, &unk_18A662C48);
          v6 = sub_18A4A77C8();
          sub_18A4A7FE8();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_188FFD0A4(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_188FFD0A4(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_188FFD0A4(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_18909AE70(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_18A4A8208();
    v3 = v1 + 56;
    v4 = sub_18A4A7EC8();
    v5 = 0;
    v6 = *(v1 + 36);
    v17 = v1 + 64;
    v18 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_21;
      }

      v19 = v5;
      v9 = *(*(*(v1 + 48) + 8 * v4) + 16);
      sub_18A4A81D8();
      sub_18A4A8218();
      v1 = v18;
      sub_18A4A8228();
      sub_18A4A81E8();
      v7 = 1 << *(v18 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v10 = *(v3 + 8 * v8);
      if ((v10 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(v18 + 36))
      {
        goto LABEL_24;
      }

      v11 = v10 & (-2 << (v4 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v8 << 6;
        v13 = v8 + 1;
        v14 = (v17 + 8 * v8);
        while (v13 < (v7 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            sub_188FFD0A4(v4, v6, 0);
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_4;
          }
        }

        sub_188FFD0A4(v4, v6, 0);
      }

LABEL_4:
      v5 = v19 + 1;
      v4 = v7;
      if (v19 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t UIScene.destructionConditions.getter()
{
  v1 = [v0 destructionConditions];
  sub_188A34624(0, &unk_1EA934368, off_1E70EA550);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368, off_1E70EA550);
  v2 = sub_18A4A77A8();

  sub_18909A7A0(v2);
  v4 = v3;

  v5 = sub_188F98E04(v4);

  return v5;
}

void sub_18909B150(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 destructionConditions];
  sub_188A34624(0, &unk_1EA934368, off_1E70EA550);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368, off_1E70EA550);
  v4 = sub_18A4A77A8();

  sub_18909A7A0(v4);
  v6 = v5;

  v7 = sub_188F98E04(v6);

  *a2 = v7;
}

void sub_18909B224(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_18909AE70(*a1);
  sub_188F98E38(v3);

  sub_188A34624(0, &unk_1EA934368, off_1E70EA550);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368, off_1E70EA550);
  v4 = sub_18A4A7798();

  [v2 setDestructionConditions_];
}

void UIScene.destructionConditions.setter(uint64_t a1)
{
  sub_18909AE70(a1);
  v3 = v2;

  sub_188F98E38(v3);

  sub_188A34624(0, &unk_1EA934368, off_1E70EA550);
  sub_188C09790(&qword_1EA938A18, &unk_1EA934368, off_1E70EA550);
  v4 = sub_18A4A7798();

  [v1 setDestructionConditions_];
}

void (*UIScene.destructionConditions.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[1] = v2;
  v6 = [v2 destructionConditions];
  v5[2] = sub_188A34624(0, &unk_1EA934368, off_1E70EA550);
  v5[3] = sub_188C09790(&qword_1EA938A18, &unk_1EA934368, off_1E70EA550);
  v7 = sub_18A4A77A8();

  sub_18909A7A0(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_188F98E04(v9);

  *v5 = v10;
  return sub_18909B500;
}

uint64_t UIScene._destructionConditions.getter()
{
  v1 = [v0 _destructionConditions];
  sub_188A34624(0, &qword_1EA934360, off_1E70EC008);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360, off_1E70EC008);
  v2 = sub_18A4A77A8();

  sub_18909AB08(v2);
  v4 = v3;

  v5 = sub_188F98F90(v4);

  return v5;
}

void sub_18909B5E8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 _destructionConditions];
  sub_188A34624(0, &qword_1EA934360, off_1E70EC008);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360, off_1E70EC008);
  v4 = sub_18A4A77A8();

  sub_18909AB08(v4);
  v6 = v5;

  v7 = sub_188F98F90(v6);

  *a2 = v7;
}

void sub_18909B6BC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_18909AE70(*a1);
  sub_188F99060(v3);

  sub_188A34624(0, &qword_1EA934360, off_1E70EC008);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360, off_1E70EC008);
  v4 = sub_18A4A7798();

  [v2 _setDestructionConditions_];
}

void UIScene._destructionConditions.setter(uint64_t a1)
{
  sub_18909AE70(a1);
  v3 = v2;

  sub_188F99060(v3);

  sub_188A34624(0, &qword_1EA934360, off_1E70EC008);
  sub_188C09790(&qword_1EA938A08, &qword_1EA934360, off_1E70EC008);
  v4 = sub_18A4A7798();

  [v1 _setDestructionConditions_];
}

void (*UIScene._destructionConditions.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[1] = v2;
  v6 = [v2 _destructionConditions];
  v5[2] = sub_188A34624(0, &qword_1EA934360, off_1E70EC008);
  v5[3] = sub_188C09790(&qword_1EA938A08, &qword_1EA934360, off_1E70EC008);
  v7 = sub_18A4A77A8();

  sub_18909AB08(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_188F98F90(v9);

  *v5 = v10;
  return sub_18909B998;
}

void sub_18909B9B8(uint64_t **a1, char a2, void (*a3)(uint64_t), SEL *a4)
{
  v6 = *a1;
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {

    sub_18909AE70(v9);
    v11 = v10;

    a3(v11);

    v12 = sub_18A4A7798();

    [v7 *a4];
  }

  else
  {
    sub_18909AE70(v8);
    v14 = v13;

    a3(v14);

    v15 = sub_18A4A7798();

    [v7 *a4];
  }

  free(v6);
}

void _sSo7UISceneC5UIKitE18DidActivateMessageV04makeE0yAESg10Foundation12NotificationVFZ_0(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v5)
  {
    sub_188A553EC(v4);
    goto LABEL_5;
  }

  sub_188A34624(0, qword_1ED490250, off_1E70EA528);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v3;
LABEL_6:
  *a1 = v2;
}

uint64_t sub_18909BC0C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_188A34624(0, qword_1ED490250, off_1E70EA528);
  v4 = v2;
  v5 = v3;
  return sub_18A4A2428();
}

uint64_t sub_18909BC98(void **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *a1;
  v5 = *a4;
  sub_188A34624(0, qword_1ED490250, off_1E70EA528);
  v6 = v4;
  v7 = v5;
  return sub_18A4A2428();
}

uint64_t sub_18909BF5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = sub_18909BFE4();

  return v3;
}

uint64_t sub_18909BFE4()
{
  v1 = [v0 button];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 isBackButton])
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (v3)
    {
      v4 = [v3 imageForState_];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 _identityDescription];
        if (v6)
        {
          v7 = v6;
          v8 = sub_18A4A7288();
          v10 = v9;

          v20 = 0x2D6B636142;
          MEMORY[0x18CFE22D0](v8, v10);

          return v20;
        }
      }
    }

    v12 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (!v12 || (v13 = [v12 attributedTitleForState_]) == 0)
    {

      return 0x6568432D6B636142;
    }

    v20 = 0x222D6B636142;
    v14 = v13;
    v15 = [v13 string];
    v16 = sub_18A4A7288();
    v18 = v17;

    MEMORY[0x18CFE22D0](v16, v18);

    MEMORY[0x18CFE22D0](34, 0xE100000000000000);

    return v20;
  }

  v11 = [v0 barButtonItem];
  if (v11)
  {
    v0 = sub_188C1908C(v11);
  }

  return v0;
}

id sub_18909C238()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v1)
  {
    [v1 _setTouchHasHighlighted_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v2)
  {
    [v2 _setTouchHasHighlighted_];
  }

  result = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (result)
  {

    return [result _setTouchHasHighlighted_];
  }

  return result;
}

double sub_18909C398(char a1, SEL *a2)
{
  v5 = [v2 button];
  if (v5 && (v6 = v5, v7 = [v5 appearanceData], v6, v7))
  {
    [v7 backgroundImagePositionAdjustmentForState_];
    v9 = v8;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = 0.0;
    if (Strong)
    {
      v11 = [Strong appearanceStorage];
      swift_unknownObjectRelease();
      if (v11)
      {
        [v11 *a2];
      }
    }
  }

  return v9;
}

id sub_18909C4A0(char a1, SEL *a2, SEL *a3)
{
  if (!dyld_program_sdk_at_least())
  {
    return 0;
  }

  v7 = [v3 button];
  if (!v7 || (v8 = v7, v9 = [v7 appearanceData], v8, !v9))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v11 = [Strong backIndicatorImage], swift_unknownObjectRelease(), v11))
    {

      v9 = 0;
    }

    else
    {
      v9 = [objc_opt_self() standardBackButtonData];
    }
  }

  if (a1)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  v14 = [v9 *v13];

  return v14;
}

id sub_18909C5C4()
{
  v1 = [objc_allocWithZone(UIPreviewParameters) init];
  if (v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] == 1 && *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] == 24)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    if (v2)
    {
      [v2 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
    }

    else
    {
      v4 = 0.0;
      v6 = 0.0;
      v8 = 0.0;
      v10 = 0.0;
    }

    v16 = [objc_opt_self() bezierPathWithOvalInRect_];
    [v1 setShadowPath_];
LABEL_17:

    return v1;
  }

  v11 = [v0 button];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isSelected];

    if (v13)
    {
      v14 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
      if (v14)
      {
        v15 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
LABEL_13:
        v19 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
        v18 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 8];
        v20 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 16];
        v21 = *&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 24];
        v22 = v14;
        [v15 bounds];
        v23 = &v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
        if (CGRectEqualToRect(*&v15[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame], *MEMORY[0x1E695F050]))
        {
          v24 = type metadata accessor for ButtonBarButtonVisualProvider.Button();
          v47.receiver = v15;
          v47.super_class = v25;
          objc_msgSendSuper2(&v47, sel__selectedIndicatorBounds, v24);
        }

        else
        {
          v26 = *v23;
          v27 = v23[1];
          v28 = v23[2];
          v29 = v23[3];
        }

        v30 = UIRectInset(v26, v27, v28, v29, v19, v21, v20, v18);
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v37 = [v0 button];
        [v15 convertRect:v37 toView:{v30, v32, v34, v36}];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        v16 = [objc_opt_self() bezierPathWithOvalInRect_];
        [v1 setShadowPath_];

        goto LABEL_17;
      }

      v17 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (v17)
      {
        v15 = v17;
        v14 = 0;
        goto LABEL_13;
      }
    }
  }

  return v1;
}

void sub_18909C888()
{
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
  v2 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 8];
  v4 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 16];
  v5 = *&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 24];
  [v0 bounds];
  v6 = &v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
  if (CGRectEqualToRect(*&v0[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame], *MEMORY[0x1E695F050]))
  {
    v11.receiver = v0;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel__selectedIndicatorBounds);
  }

  else
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
  }

  UIRectInset(v7, v8, v9, v10, v3, v5, v4, v2);
}

id sub_18909C998(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() rootSettings];
  v5 = [v4 navigationAndToolbarSettings];

  if (v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] == 1 && *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] == 24)
  {
    v6 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    if (v6)
    {
      v7 = v6;
      [v7 bounds];
      [v7 convertRect:a1 toCoordinateSpace:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v9 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
      v15 = 0.0;
    }

    v170.origin.x = v9;
    v170.origin.y = v11;
    v170.size.width = v13;
    v170.size.height = v15;
    v20 = CGRectGetWidth(v170) * 0.5;
    v21 = [objc_opt_self() shapeWithRoundedRect:v9 cornerRadius:{v11, v13, v15, v20}];
    goto LABEL_94;
  }

  v16 = [v2 button];
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v16;
  if (![v16 isSelected])
  {
    v19 = v17;
LABEL_18:

LABEL_19:
    v35 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton;
    v36 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
    if (v36)
    {
      v37 = *MEMORY[0x1E695F050];
      v38 = *(MEMORY[0x1E695F050] + 8);
      v39 = *(MEMORY[0x1E695F050] + 16);
      v40 = *(MEMORY[0x1E695F050] + 24);
      v41 = v36;
      [v41 frame];
      v184.origin.x = v42;
      v184.origin.y = v43;
      v184.size.width = v44;
      v184.size.height = v45;
      v171.origin.x = v37;
      v171.origin.y = v38;
      v171.size.width = v39;
      v171.size.height = v40;
      v172 = CGRectUnion(v171, v184);
      x = v172.origin.x;
      y = v172.origin.y;
      width = v172.size.width;
      height = v172.size.height;

      v50 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
      if (!v50)
      {
        goto LABEL_29;
      }

LABEL_24:
      v51 = v50;
      v52 = [v51 titleLabel];
      if (!v52)
      {
LABEL_37:

        goto LABEL_38;
      }

      v53 = v52;
      if (([v52 isHidden] & 1) == 0)
      {
        v54 = v53;
        [v54 bounds];
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v63 = [v2 button];
        [v54 convertRect:v63 toView:{v56, v58, v60, v62}];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;

        v173.origin.x = x;
        v173.origin.y = y;
        v173.size.width = width;
        v173.size.height = height;
        v185.origin.x = v65;
        v185.origin.y = v67;
        v185.size.width = v69;
        v185.size.height = v71;
        v174 = CGRectUnion(v173, v185);
        x = v174.origin.x;
        y = v174.origin.y;
        width = v174.size.width;
        height = v174.size.height;

        v72 = 0;
        goto LABEL_39;
      }

LABEL_36:

      goto LABEL_37;
    }

    v50 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v50)
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_24;
    }

    if (*&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton])
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
LABEL_29:
      v73 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (!v73)
      {
LABEL_38:
        v72 = 1;
LABEL_39:
        v97 = [v2 button];
        if (v97)
        {
          v98 = v97;
          v99 = [v97 isSingleItemInSectionWithPlatter];

          if (v99 && *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton])
          {
            v100 = 1;
          }

          else if (*&v2[v35])
          {
            v100 = v72;
          }

          else
          {
            v100 = 0;
          }
        }

        else
        {
          v100 = 0;
        }

        v101 = [v2 button];
        Strong = swift_unknownObjectWeakLoadStrong();
        v5 = v5;
        v103 = [v2 button];
        if (v103)
        {
          v104 = v103;
          v105 = [v103 isBackButton];
        }

        else
        {
          v105 = 0;
        }

        v106 = [v2 button];
        if (v106)
        {
          v107 = v106;
          v108 = [v106 effectiveUserInterfaceLayoutDirection];

          v109 = v108 == 1;
          if (v105)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v109 = 0;
          if (v105)
          {
LABEL_52:
            [v5 backButtonLeadingPadding];
            v111 = v110;
            [v5 backButtonTrailingPadding];
            v113 = v111 + v112;
            if (v109)
            {
              v111 = v112;
            }

LABEL_57:
            v116 = width + v113;
            v117 = x - v111;
            [v5 buttonMinimumHeight];
            if (height >= v118)
            {
              v119 = y;
            }

            else
            {
              v119 = y - (v118 - height) * 0.5;
            }

            if (height >= v118)
            {
              v120 = height;
            }

            else
            {
              v120 = v118;
            }

            if (v116 < v120)
            {
              v121 = 1;
            }

            else
            {
              v121 = v100;
            }

            if (v121)
            {
              v122 = v120;
            }

            else
            {
              v122 = v116;
            }

            if (v121)
            {
              v123 = v117 - (v120 - v116) * 0.5;
            }

            else
            {
              v123 = v117;
            }

            [v5 buttonHorizontalOffset];
            if (v109)
            {
              v124 = -v124;
            }

            v125 = v124 + v123;
            [v5 buttonVerticalOffset];
            v127 = v119 + v126;
            if (Strong)
            {
              swift_unknownObjectRetain();
              if (v105 || ([v5 enableClippingBehavior] & 1) != 0)
              {
                v128 = 0.0;
                v129 = 0.0;
                v130 = 0.0;
                v131 = 0.0;
                if (v101)
                {
                  [v101 convertRect:Strong toCoordinateSpace:{v125, v127, v122, v120}];
                  v128 = v132;
                  v129 = v133;
                  v130 = v134;
                  v131 = v135;
                }

                v167 = v130;
                v168 = v129;
                [v5 buttonMinimumDistanceFromEdge];
                v137 = v136;
                [Strong bounds];
                v178 = CGRectInset(v177, v137, 0.0);
                v138 = v178.origin.x;
                v139 = v178.origin.y;
                v140 = v178.size.width;
                v141 = v178.size.height;
                v178.origin.x = v128;
                v178.origin.y = v129;
                v178.size.width = v130;
                v178.size.height = v131;
                MinX = CGRectGetMinX(v178);
                v179.origin.x = v128;
                v179.origin.y = v129;
                v179.size.width = v130;
                v179.size.height = v131;
                MaxX = CGRectGetMaxX(v179);
                v180.origin.x = v138;
                v180.origin.y = v139;
                v180.size.width = v140;
                v180.size.height = v141;
                v143 = CGRectGetMinX(v180);
                v181.origin.x = v138;
                v181.origin.y = v139;
                v181.size.width = v140;
                v181.size.height = v141;
                v144 = CGRectGetMaxX(v181);
                v145 = v143 - MinX;
                if (v143 - MinX < 0.0)
                {
                  v145 = 0.0;
                }

                v146 = MaxX - v144;
                if (v146 < 0.0)
                {
                  v146 = 0.0;
                }

                if (v145 > v146)
                {
                  v147 = v145;
                }

                else
                {
                  v147 = v146;
                }

                v182.origin.x = v128;
                v182.size.width = v167;
                v182.origin.y = v168;
                v182.size.height = v131;
                v183 = CGRectInset(v182, v147, 0.0);
                if (v101)
                {
                  v148 = v183.origin.x;
                  v149 = v183.origin.y;
                  v150 = v183.size.width;
                  v151 = v183.size.height;
                  v152 = v101;
                  [Strong convertRect:v152 toCoordinateSpace:{v148, v149, v150, v151}];
                  v125 = v153;
                  v127 = v154;
                  v122 = v155;
                  v120 = v156;

                  swift_unknownObjectRelease();
LABEL_91:
                  [v101 convertRect:a1 toView:{v125, v127, v122, v120}];
                  v158 = v157;
                  v160 = v159;
                  v162 = v161;
                  v164 = v163;
LABEL_93:
                  v21 = [objc_opt_self() shapeWithRoundedRect:v158 cornerRadius:{v160, v162, v164, v164 * 0.5}];

                  swift_unknownObjectRelease();
LABEL_94:

                  return v21;
                }

                swift_unknownObjectRelease();
LABEL_92:
                v158 = 0.0;
                v160 = 0.0;
                v162 = 0.0;
                v164 = 0.0;
                goto LABEL_93;
              }

              swift_unknownObjectRelease();
            }

            if (v101)
            {
              goto LABEL_91;
            }

            goto LABEL_92;
          }
        }

        [v5 buttonHorizontalPadding];
        v111 = v114;
        [v5 buttonVerticalPadding];
        v113 = v111 + v111;
        y = y - v115;
        height = height + v115 + v115;
        goto LABEL_57;
      }

      v51 = v73;
      v74 = [v51 imageView];
      v53 = v74;
      if (v74)
      {
        v75 = v74;
        [v75 bounds];
        v77 = v76;
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v84 = [v2 button];
        [v75 convertRect:v84 toView:{v77, v79, v81, v83}];
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v92 = v91;
      }

      else
      {
        v86 = 0.0;
        v88 = 0.0;
        v90 = 0.0;
        v92 = 0.0;
      }

      v175.origin.x = x;
      v175.origin.y = y;
      v175.size.width = width;
      v175.size.height = height;
      v186.origin.x = v86;
      v186.origin.y = v88;
      v186.size.width = v90;
      v186.size.height = v92;
      v176 = CGRectUnion(v175, v186);
      x = v176.origin.x;
      y = v176.origin.y;
      width = v176.size.width;
      height = v176.size.height;
      goto LABEL_36;
    }

    return 0;
  }

  v18 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v18)
  {
    v19 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  }

  else
  {
    v22 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (!v22)
    {

      return 0;
    }

    v19 = v22;
    v18 = 0;
  }

  v23 = v18;
  if (![v19 _hasVisibleDefaultSelectionIndicator])
  {

    goto LABEL_18;
  }

  v25 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
  v24 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 8];
  v26 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 16];
  v27 = *&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets + 24];
  [v19 bounds];
  v28 = &v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
  if (CGRectEqualToRect(*&v19[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame], *MEMORY[0x1E695F050]))
  {
    v29 = type metadata accessor for ButtonBarButtonVisualProvider.Button();
    v169.receiver = v19;
    v169.super_class = v30;
    objc_msgSendSuper2(&v169, sel__selectedIndicatorBounds, v29);
  }

  else
  {
    v31 = *v28;
    v32 = v28[1];
    v33 = v28[2];
    v34 = v28[3];
  }

  [v19 convertRect:a1 toCoordinateSpace:{UIRectInset(v31, v32, v33, v34, v25, v27, v26, v24)}];
  v21 = [objc_opt_self() shapeWithRoundedRect:v93 cornerRadius:{v94, v95, v96, 4.0}];

  return v21;
}

uint64_t sub_18909D4D8()
{
  if (v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] == 1 && *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] == 24)
  {
    return 1;
  }

  v2 = [v0 button];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ([v2 isSelected])
  {
    v4 = [objc_opt_self() rootSettings];
    v5 = [v4 navigationAndToolbarSettings];

    v1 = [v5 enableLiftOnSelected];
    v3 = v5;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void *sub_18909D7A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  v2 = v1;
  if (!v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    v2 = v3;
    if (v3)
    {
LABEL_5:
      v5 = v3;
      goto LABEL_6;
    }

    v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
    if (v2)
    {
      v4 = v2;
      goto LABEL_5;
    }
  }

LABEL_6:
  v6 = v1;
  return v2;
}

uint64_t sub_18909D810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938AE0, &unk_18A656F50);
    result = sub_18A4A8488();
  }

  else
  {
    result = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  if ((v5 & v4) != 0)
  {

    v7 = __clz(__rbit64(v6));
LABEL_12:
    v12 = *(a1 + 56);
    v13 = (*(a1 + 48) + 16 * v7);
    v15 = *v13;
    v14 = v13[1];
    sub_188A55598(v12 + 32 * v7, &v17);
    v16[0] = v15;
    v16[1] = v14;

    sub_188A3F5FC(v16, &qword_1EA93B950, &unk_18A662DC0);
    return 0;
  }

  else
  {
    v8 = ((v3 + 63) >> 6) - 1;
    v9 = (a1 + 72);
    while (v8)
    {
      v11 = *v9++;
      v10 = v11;
      --v8;
      v6 -= 64;
      if (v11)
      {

        v7 = __clz(__rbit64(v10)) - v6;
        goto LABEL_12;
      }
    }
  }

  return result;
}

id sub_18909D928()
{
  v1 = sub_188C5B38C();
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton) = v1;
  v3 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64E3F0;
  *(v4 + 32) = 0x1EFE32440;
  *(v4 + 40) = 0x1EFE324A0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200, &unk_18A650580);
  v5 = sub_18A4A7518();

  v6 = [v3 _registerForTraitTokenChanges_withTarget_action_];
  swift_unknownObjectRelease();

  return v3;
}

void sub_18909DA24()
{
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 unspecifiedConfiguration];
    v5 = [v0 traitCollection];
    v6 = [v4 configurationWithTraitCollection_];

    [v3 _setOverridingSymbolConfiguration_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18A64E3F0;
  *(v7 + 32) = 0x1EFE32440;
  *(v7 + 40) = 0x1EFE324A0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200, &unk_18A650580);
  v8 = sub_18A4A7518();

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v13[4] = sub_1890A1664;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_188BA9E60;
  v13[3] = &block_descriptor_29_1;
  v10 = _Block_copy(v13);
  v11 = v1;

  v12 = [v0 _registerForTraitTokenChanges_withHandler_];
  _Block_release(v10);

  swift_unknownObjectRelease();
}

void sub_18909DC5C(char a1, char a2, double a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v6)
  {
    v7 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    if (!v8)
    {
      return;
    }

    v9 = a1;
    v7 = v8;
    a1 = v9;
  }

  v10 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
  if (v10)
  {
    if ((a1 & 1) != 0 && (v11 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton)) != 0)
    {
      v12 = v6;
      v13 = v10;
      v14 = v11;
      v15 = [v13 leadingAnchor];
      v16 = [v14 leadingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:-3.0];

      sub_188C5CE34(v17, 0xD000000000000017, 0x800000018A6A4410);
    }

    else
    {
      v18 = v6;
      v19 = [v10 leadingAnchor];
      v20 = [v7 leadingAnchor];
      v17 = [v19 constraintEqualToAnchor:v20 constant:-3.0];

      sub_188C5CE34(v17, 0xD000000000000016, 0x800000018A6A4390);
    }

    v36 = v10;
    v21 = [v36 trailingAnchor];
    v22 = v7;
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:3.0];

    sub_188C5CE34(v24, 0xD000000000000018, 0x800000018A6A43B0);
    if (a2)
    {
      v25 = [v36 topAnchor];
      v26 = [v22 topAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:a3 + -3.0];

      sub_188C5CE34(v27, 0x5F706F545F494742, 0xEE00706F545F4243);
      v28 = [v36 bottomAnchor];

      v29 = [v22 bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:a3 + 3.0];

      v31 = "BGI_Bottom_CB_Bottom";
    }

    else
    {
      v34 = [v36 centerYAnchor];

      v35 = [v22 centerYAnchor];
      v30 = [v34 constraintEqualToAnchor:v35 constant:a3];

      v31 = "BGI_Center_CB_Center";
    }

    sub_188C5CE34(v30, 0xD000000000000014, (v31 - 32) | 0x8000000000000000);

    v33 = v36;
  }

  else
  {
    v32 = v6;
    v33 = v7;
  }
}

double sub_18909E08C(double a1, double a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong barType];
    swift_unknownObjectRelease();
    v8 = 10.0;
    if (v7 == 1)
    {
      v8 = 22.0;
    }
  }

  else
  {
    v8 = 10.0;
  }

  return v8 - a2 - a4;
}

void *sub_18909E198(void *result, void *a2)
{
  v3 = *(v2 + *result);
  if (v3)
  {
    v4 = *(v2 + *result);
LABEL_6:
    v6 = v3;
    return v4;
  }

  v5 = *(v2 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v5 || (v5 = *(v2 + *a2)) != 0)
  {
    v4 = v5;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_18909E200(void *a1, char a2, char a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v5)
  {
    v8 = [v5 currentImage];
    if (v8)
    {
      v9 = v8;
      [v8 alignmentRectInsets];
      if (a1)
      {
        v14 = &selRef_landscapeImagePhoneInsets;
        if ((a2 & 1) == 0)
        {
          v14 = &selRef_imageInsets;
        }

        v15 = v10;
        v16 = v11;
        v17 = v12;
        v18 = v13;
        [a1 *v14];
        v20 = v19;
        v10 = v15;
        v11 = v16;
        v12 = v17;
        v13 = v18;
      }

      else
      {
        v20 = 0.0;
      }

      UIEdgeInsetsAdd(15, v10, v11, v12, v13, v20);
      if ((a3 & 1) == 0)
      {
        sub_18909C398(a2 & 1, &selRef_backgroundVerticalAdjustmentForBarMetrics_);
        v22 = 0.0;
        if (v21 != 0.0)
        {
          v22 = v21;
        }

        if (a1)
        {
          if (v21 == 0.0)
          {
            [a1 backgroundVerticalPositionAdjustmentForBarMetrics_];
          }
        }
      }

      v23 = objc_opt_self();
      v24 = +[(UIScreen *)v23];
      [v24 scale];
      v26 = v25;

      UIRoundToScale(1.0 / v26, v26);
    }
  }
}

void sub_18909E3C0(double a1, double a2, double a3, double a4, double a5)
{
  v9 = [v5 button];
  if (v9)
  {
    v10 = *&v5[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v10)
    {
      v21 = v9;
      v11 = v10;
      v12 = v21;
      v13 = [v12 effectiveUserInterfaceLayoutDirection];
      if (v13 == 1)
      {
        v14 = a3;
      }

      else
      {
        v14 = a5;
      }

      if (v13 != 1)
      {
        a5 = a3;
      }

      v15 = v11;
      v16 = [v15 leadingAnchor];
      v17 = [v12 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:a5 + a1];

      sub_188C5CE34(v18, 0xD000000000000012, 0x800000018A6A4350);
      v19 = [v12 trailingAnchor];

      v20 = [v15 trailingAnchor];
      v22 = [v19 constraintEqualToAnchor:v20 constant:v14 - a1];

      sub_188C5CE34(v22, 0xD000000000000014, 0x800000018A6A4370);
      v9 = v22;
    }
  }
}

void sub_18909E5C4(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = [v6 button];
  if (!v13)
  {
    return;
  }

  v14 = *&v6[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v14)
  {
    v51 = v13;
    v15 = v14;
    v16 = sub_18909E08C(a2, a3, a4, a5);
    v17 = v51;
    if ([v17 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v18 = -9;
      v19 = 2;
      v20 = a3;
      v21 = a5;
    }

    else
    {
      v18 = -3;
      v19 = 8;
      v20 = a5;
      v21 = a3;
    }

    if ((v18 | a1) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v27 = v16 * 0.5 + a6;
      v29 = [v15 leadingAnchor];
      v30 = [v17 leadingAnchor];
      v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30 constant:v27 - v21];

      sub_188C5CE34(v31, 0xD000000000000012, 0x800000018A6A4290);
      v28 = v27 + 0.0;
      v22 = v27;
      if ((v19 & a1) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = 0.0;
      v23 = sub_18909EB28() - v21;
      v24 = [v15 leadingAnchor];
      v25 = [v17 leadingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:v23];

      sub_188C5CE34(v26, 0xD000000000000012, 0x800000018A6A4290);
      if ((v19 & a1) != 0)
      {
        v27 = v16 * 0.5 + a6;
        v28 = 0.0;
LABEL_11:
        v32 = [v17 trailingAnchor];
        v33 = [v15 trailingAnchor];
        v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:v27 - v20];

        sub_188C5CE34(v34, 0xD000000000000014, 0x800000018A6A42B0);
        v28 = v27 + v28;
        v35 = &selRef_constrainToReference_;
        goto LABEL_14;
      }

      v28 = 0.0;
    }

    v27 = 0.0;
    v36 = sub_18909EB28() - v20;
    v37 = [v17 trailingAnchor];
    v38 = [v15 trailingAnchor];
    v35 = &selRef_constrainToReference_;
    v39 = [v37 constraintEqualToAnchor:v38 constant:v36];

    sub_188C5CE34(v39, 0xD000000000000014, 0x800000018A6A42B0);
LABEL_14:
    v40 = v22 + a3;
    v41 = v27 + a5;
    if (v22 + a3 != 0.0 || v41 == 0.0)
    {
      if (v40 == 0.0)
      {
        v40 = a3;
      }

      if (v41 == 0.0)
      {
        a3 = v40;
      }
    }

    else
    {
      a3 = -v41;
    }

    v42 = v15;
    v43 = [v42 centerXAnchor];
    v44 = [v17 centerXAnchor];
    v45 = [v43 v35[7]];

    LODWORD(v46) = 1148829696;
    [v45 setPriority_];
    sub_188C5CE34(v45, 0xD000000000000012, 0x800000018A6A42D0);
    sub_188C5D0B4(&selRef_widthMinimizingConstraint, 0xED00006874646957);
    v47 = [v17 widthAnchor];

    v48 = [v42 widthAnchor];
    v49 = [v47 v35[7]];

    LODWORD(v50) = 1148829696;
    [v49 setPriority_];
    sub_188C5CE34(v49, 0x68746469575F4249, 0xE800000000000000);

    v13 = v51;
  }
}

double sub_18909EB28()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v3 = Strong;
  v4 = [v1 barButtonItem];
  [v3 defaultEdgeSpacing];
  v6 = v5;
  if (!v4)
  {
    swift_unknownObjectRelease();
    return v6;
  }

  v7 = [v1 button];
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_10:

    return v6;
  }

  v8 = v7;
  if (([v3 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  [swift_unknownObjectRetain() additionalEdgeSpacingForButtonBarButton:v8 representingBarButtonItem:v4];
  v10 = v9;
  swift_unknownObjectRelease_n();

  return v6 + v10;
}

void sub_18909EC4C(double a1, double a2, double a3)
{
  v4 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v4)
  {
    v44 = v4;
    v7 = [v3 button];
    if (v7)
    {
      v8 = v7;
      if ([v7 verticallyCentersContents])
      {
        v9 = [v44 imageView];
        if (v9)
        {
          v10 = v9;
          [v9 alignmentRectInsets];
          v12 = v11;
          v14 = v13;
        }

        else
        {
          v12 = 0.0;
          v14 = 0.0;
        }

        v41 = [v44 centerYAnchor];
        v42 = [v8 centerYAnchor];
        v43 = [v41 constraintEqualToAnchor:v42 constant:(v12 - v14) * -0.5];

        sub_188C5CE34(v43, 0xD000000000000012, 0x800000018A6A4230);
      }

      else if (v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageHasBaseline] == 1)
      {
        v15 = v44;
        v16 = [v15 lastBaselineAnchor];
        v17 = v8;
        v18 = [v17 layoutMarginsGuide];
        v19 = [v18 bottomAnchor];

        v20 = [v16 constraintEqualToAnchor_];
        sub_188C5CE34(v20, 0xD000000000000014, 0x800000018A6A4270);

        v21 = [v15 topAnchor];
        v22 = [v17 topAnchor];
        v23 = [v21 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v23, 0x545F706F545F4249, 0xEA0000000000706FLL);
        v24 = [v17 bottomAnchor];

        v25 = [v15 bottomAnchor];
        v26 = [v24 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v26, 0xD000000000000010, 0x800000018A6A4250);
      }

      else
      {
        v27 = a3 != 0.0 && a1 == 0.0;
        v28 = -a3;
        if (v27)
        {
          v29 = v28;
        }

        else
        {
          v29 = a1;
        }

        v30 = v44;
        v31 = [v30 centerYAnchor];
        v32 = v8;
        v33 = [v32 centerYAnchor];
        v34 = [v31 constraintEqualToAnchor:v33 constant:v29];

        sub_188C5CE34(v34, 0xD000000000000012, 0x800000018A6A4230);
        v35 = [v30 topAnchor];
        v36 = [v32 topAnchor];
        v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:a1];

        sub_188C5CE34(v37, 0x545F706F545F4249, 0xEA0000000000706FLL);
        v38 = [v32 bottomAnchor];

        v39 = [v30 bottomAnchor];
        v40 = [v38 constraintGreaterThanOrEqualToAnchor:v39 constant:v28];

        sub_188C5CE34(v40, 0xD000000000000010, 0x800000018A6A4250);
        sub_188C5D0B4(&selRef_heightMinimizingConstraint, 0xEE00746867696548);
      }
    }
  }
}

double sub_18909F284()
{
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 imageView];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 imageView];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
      }

      else
      {
        v12 = 0.0;
        v14 = 0.0;
        v16 = 0.0;
        v18 = 0.0;
      }

      v36 = [v0 button];
      [v8 convertRect:v36 toView:{v12, v14, v16, v18}];
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v35 = v40;
    }

    else
    {
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    v41 = [v6 imageView];
  }

  else
  {
    v19 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (!v19)
    {
      return v4;
    }

    v6 = v19;
    v20 = [v6 titleLabel];
    if (v20)
    {
      v21 = v20;
      v22 = [v6 titleLabel];
      if (v22)
      {
        v23 = v22;
        [v22 bounds];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
      }

      else
      {
        v25 = 0.0;
        v27 = 0.0;
        v29 = 0.0;
        v31 = 0.0;
      }

      v42 = [v0 button];
      [v21 convertRect:v42 toView:{v25, v27, v29, v31}];
      v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v46;
    }

    else
    {
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    v41 = [v6 titleLabel];
  }

  v47 = v41;

  if (v47)
  {
    [v47 alignmentRectForFrame_];
    v4 = v48;
  }

  else
  {

    return 0.0;
  }

  return v4;
}

double sub_18909F588()
{
  v1 = [v0 button];
  if (!v1)
  {
    return result;
  }

  v9 = v1;
  v3 = [v0 barButtonItem];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = [Strong respondsToSelector_], swift_unknownObjectRelease(), (v6 & 1) == 0) || (v7 = swift_unknownObjectWeakLoadStrong()) == 0)
  {

    goto LABEL_10;
  }

  v8 = v7;
  if ([v7 respondsToSelector_])
  {
    [v8 configurationDependenciesChangedForButtonBarButton:v9 representingBarButtonItem:v4];

    swift_unknownObjectRelease();
LABEL_10:

    return result;
  }

  swift_unknownObjectRelease();
  return result;
}

void sub_18909F73C()
{
  v1 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  v2 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  v3 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes + 8];
  v4 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes + 16];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  v5 = sub_188C58BC4(v2, v3, v4);
  v6 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v7 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v7)
  {
    v7 = [v7 attributedTitleForState_];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 string];
      v10 = sub_18A4A7288();
      v12 = v11;

      v7 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

  sub_188C69168(v7, v12);

  v13 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  v14 = *(*&v0[v13] + 16);
  v15 = 0.0;
  if (v14)
  {
    v43 = v8;
    v44 = v1;
    v16 = 0;
    v17 = 0;
    v49 = v14 - 1;
    v45 = v6;
    while (1)
    {
      v19 = *v1;
      if (*v1)
      {
      }

      v20 = *&v0[v6];
      swift_beginAccess();
      v21 = *&v0[v13];
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v0[v13] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_189212C00(v21);
        *&v0[v13] = v21;
      }

      if (v17 >= *(v21 + 2))
      {
        __break(1u);
        return;
      }

      if (!v19 || !v20)
      {
        goto LABEL_11;
      }

      v48 = v16;
      v24 = &v21[v16];
      v25 = *&v21[v16 + 32];
      if (!v25)
      {
        break;
      }

      v47 = v22;
      v46 = v25;
      v26 = [v46 string];
      if (!v26)
      {
        sub_18A4A7288();
        v26 = sub_18A4A7258();
      }

      v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v28 = sub_18A4A7088();
      v29 = [v27 initWithString:v26 attributes:v28];

      v30 = *(v24 + 4);
      *(v24 + 4) = v29;

      v31 = *(v24 + 4);
      v1 = v44;
      v6 = v45;
      if (!v31)
      {
        goto LABEL_9;
      }

      v32 = v31;
      [v47 contentEdgeInsets];
      v34 = v33;
      v36 = v35;
      if (![v47 _visualProvider])
      {

        goto LABEL_30;
      }

      type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
      v37 = swift_dynamicCastClass();
      if (!v37)
      {

        swift_unknownObjectRelease();
LABEL_30:
        v6 = v45;
LABEL_10:
        v16 = v48;
        *&v21[v48 + 40] = 0;
LABEL_11:
        *&v0[v13] = v21;
        swift_endAccess();

        if (v49 == v17)
        {
          goto LABEL_31;
        }

        goto LABEL_12;
      }

      [v37 _intrinsicWidthForAttributedTitle_];
      *&v21[v48 + 40] = v38 - v34 - v36;
      *&v0[v13] = v21;
      swift_endAccess();

      v16 = v48;
      swift_unknownObjectRelease();

      v6 = v45;
      if (v49 == v17)
      {
LABEL_31:
        v39 = *&v0[v13];
        v8 = v43;
        if (*(v39 + 16))
        {
          v15 = *(v39 + 40);
        }

        goto LABEL_33;
      }

LABEL_12:
      v16 += 16;
      ++v17;
    }

    v18 = v22;
LABEL_9:

    goto LABEL_10;
  }

LABEL_33:
  v40 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint];
  if (v40)
  {
    [v40 setConstant_];
  }

  v41 = [v0 button];
  if (v41)
  {
    v42 = v41;
    [v41 setNeedsLayout];
  }
}

id sub_18909FB9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider + 8);
  sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);

  v3 = sub_18A4A7CB8();
  v4 = objc_opt_self();
  v8[4] = v1;
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188EBB970;
  v8[3] = &block_descriptor_53_3;
  v5 = _Block_copy(v8);

  v6 = [v4 configurationWithIdentifier:v3 previewProvider:0 actionProvider:v5];
  sub_188A55B8C(v1, v2);

  _Block_release(v5);
  return v6;
}

void sub_18909FD2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    if (!v3)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
      if (!v3)
      {
        __break(1u);
        return;
      }
    }

    v2 = v3;
  }

  v4 = v1;
  v5 = v2;
  v6 = [v5 _viewControllerForAncestor];
  v7 = [v6 view];

  if (!v7)
  {
    v7 = [v5 window];
  }

  v8 = [v5 superview];
  if (v8)
  {
    [v5 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v8 convertRect:v7 toView:{v10, v12, v14, v16}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {

    v18 = 0.0;
    v20 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
  }

  _UIControlMenuAttachmentPointForRectInContainer(v7, v18, v20, v22, v24);
}

UITargetedPreview *sub_18909FEDC()
{
  v1 = [v0 button];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  v4 = v3;
  if (!v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v4)
    {
      v5 = v4;
    }
  }

  v6 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  v7 = v3;
  v8 = v6;
  v9 = _UIControlMenuSupportTargetedPreviewOverViews(v2, v4, v8);

  return v9;
}

id sub_1890A00E0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_188C85D28(a1, v15);
  v6 = v16;
  if (!v16)
  {
    v12 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = __swift_project_boxed_opaque_existential_0(v15, v16);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = sub_18A4A86A8();
  (*(v8 + 8))(v11, v6);
  v5.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(v15);
  if (a2)
  {
LABEL_3:
    sub_188A34624(0, &qword_1ED48FC30, off_1E70EA170);
    a2 = sub_18A4A7518();
  }

LABEL_4:
  v13 = (*(a3 + 16))(a3, v12, a2, v5);
  swift_unknownObjectRelease();

  return v13;
}

id sub_1890A0270(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = Strong;
  if (Strong)
  {
    Strong = sub_188A34624(0, &qword_1ED48E8C0, off_1E70E94D0);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  aBlock = v8;
  v31 = Strong;
  v9 = a2(&aBlock, a1);
  sub_188A3F5FC(&aBlock, &qword_1EA934050, qword_18A64CA10);
  if (!v9)
  {
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 title];

      if (v12)
      {
        sub_18A4A7288();
      }
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 image];
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(UIAction);

    v17 = sub_18A4A7258();

    v32 = sub_1890A16EC;
    v33 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188BFF280;
    v31 = &block_descriptor_50_2;
    v18 = _Block_copy(&aBlock);

    v19 = [v16 initWithTitle:v17 image:v15 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v18];
    _Block_release(v18);

    v20 = v19;
    [v20 setSubtitle_];
    [v20 setSelectedImage_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18A64B710;
    *(v21 + 32) = v20;
    v22 = objc_allocWithZone(UIMenu);
    v23 = v20;
    v24 = sub_18A4A7258();
    sub_188A34624(0, &qword_1ED48FC30, off_1E70EA170);
    v25 = sub_18A4A7518();

    v26 = [v22 initWithTitle:v24 image:0 imageName:0 identifier:0 options:0 children:v25];

    v9 = v26;
    [v9 setSubtitle_];
    [v9 setPreferredElementSize_];
  }

  return v9;
}

void sub_1890A05F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _triggerActionForEvent_];
  }
}

uint64_t sub_1890A0650(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    Strong = sub_188A34624(0, &qword_1ED48E8C0, off_1E70E94D0);
  }

  else
  {
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = v7;
  v10[3] = Strong;
  v8 = a2(v10, a1);
  sub_188A3F5FC(v10, &qword_1EA934050, qword_18A64CA10);
  return v8;
}

void sub_1890A08A4(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v12 = a2;
    v9 = [v8 visualProvider];
    v10 = [v9 pointerShapeInContainer_];

    if (v10)
    {
      [v10 rect];
      [a1 setFrame_];
      v11 = [v10 cornerCurve];
      [a1 setCornerCurve_];

      [v10 cornerRadius];
      [a1 setCornerRadius_];
    }
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = ObjectType;
    objc_msgSendSuper2(&v13, sel__prepareLayer_forView_, a1, a2);
  }
}

void sub_1890A0B8C()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel__updateImageView);
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ButtonBarButtonVisualProvider.Button();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 _imageView];
      if (v6)
      {
        v2 = v6;
        v7 = [v4 traitCollection];
        v8 = [v7 _monochromaticTreatment];

        if (v8 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        [v2 _setMonochromaticTreatment_];
        [v2 _setEnableMonochromaticTreatment_];
        if ([v4 isEnabled])
        {
          v10 = v2;
          v2 = v5;
        }

        else
        {
          v11 = [v4 tintColor];

          [v4 _setImageColor_forState_];
          v10 = v5;
          v5 = v11;
        }
      }

      else
      {
        v2 = v5;
      }
    }
  }
}

void sub_1890A0D18()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel__updateTitleView);
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ButtonBarButtonVisualProvider.Button();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 _titleView];
      if (v5)
      {
        v6 = v5;
        v7 = [v4 traitCollection];
        v8 = [v7 _monochromaticTreatment];

        if (v8 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        [v6 _setMonochromaticTreatment_];
        [v6 _setEnableMonochromaticTreatment_];

        v2 = v6;
      }
    }
  }
}

double sub_1890A0F38(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

id sub_1890A1060(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = [objc_opt_self() unspecifiedConfiguration];
    v6 = [a1 traitCollection];
    v7 = [v5 configurationWithTraitCollection_];

    [a3 _setOverridingSymbolConfiguration_];
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();

  return [v8 setNeedsLayout];
}

uint64_t sub_1890A1150(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1890A11AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1890A121C(void *a1, double a2)
{
  if (a1)
  {
    v2 = [a1 string];
    v3 = sub_18A4A7288();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x18CFE22D0](v3, v5);

  MEMORY[0x18CFE22D0](2629671, 0xE300000000000000);
  v6 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v6);

  return 39;
}

id sub_1890A12F0(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_opt_self() rootSettings];
  v13 = [v12 navigationAndToolbarSettings];

  if (v13)
  {
    [v13 buttonHorizontalPadding];
    v15 = v14;
    [v13 buttonVerticalPadding];
    a3 = a3 - v15;
    v16 = v15 + v15 + a5;
    a4 = a4 - v17;
    v18 = v17 + v17 + a6;
    [v13 buttonMinimumHeight];
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
    v16 = a5 + 0.0;
    v18 = a6 + 0.0;
  }

  if (v18 >= v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
  }

  if (v16 < v21)
  {
    a3 = a3 + (v21 - v16) * -0.5;
  }

  if (v13)
  {
    [v13 buttonHorizontalOffset];
    a3 = a3 - v22;
    [v13 buttonVerticalOffset];
  }

  else
  {
    v23 = 0.0;
  }

  if (v16 >= v21)
  {
    v24 = v16;
  }

  else
  {
    v24 = v21;
  }

  v25 = a4 - (v20 - v18) * 0.5;
  if (v18 >= v20)
  {
    v25 = a4;
  }

  [a1 convertRect:a2 toView:{a3, v25 + v23, v24, v21}];
  v30 = [objc_opt_self() shapeWithRoundedRect:v26 cornerRadius:{v27, v28, v29, v29 * 0.5}];

  return v30;
}

double sub_1890A14CC(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (v4)
  {
    [v4 setHighlighted_];
  }

  v5 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v5)
  {
    [v5 setHighlighted_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v6)
  {
    [v6 setHighlighted_];
  }

  v7 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (v9 = sub_188C4585C(a1 & 1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v13 = *(v2 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
    if (v13)
    {
      [v13 setImage_];
    }
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

id sub_1890A15C8(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (v3)
  {
    [v3 _setHasActiveMenuPresentation_];
  }

  v4 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v4)
  {
    [v4 _setHasActiveMenuPresentation_];
  }

  result = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (result)
  {

    return [result _setHasActiveMenuPresentation_];
  }

  return result;
}

id sub_1890A166C()
{
  v1 = [*(v0 + 16) _representativeItemMenu];

  return v1;
}

void *sub_1890A16A4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1890A16FC@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

id static UIVisualEffect.intelligenceContentLight(source:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource_];
  [v5 setActivationTransitionDirection_];
  [v5 setDeactivationTransitionDirection_];
  return v5;
}

uint64_t sub_1890A17A8()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(v0 + 40);
  sub_18A4A8888();
  if (!v3)
  {
    MEMORY[0x18CFE37E0](1);
    v5 = v1;
LABEL_7:
    MEMORY[0x18CFE37E0](v5);
    return sub_18A4A88E8();
  }

  if (v3 != 1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  MEMORY[0x18CFE37E0](2);
  sub_18A4A7348();
  sub_18A4A7348();
  sub_18A4A88A8();
  if (v2)
  {
    v4 = v2;
    sub_18A4A7C98();
  }

  return sub_18A4A88E8();
}

void sub_1890A1890(uint64_t a1)
{
  v2 = *v1;
  if (!*(v1 + 40))
  {
    MEMORY[0x18CFE37E0](1);
    v4 = v2;
LABEL_9:
    MEMORY[0x18CFE37E0](v4);
    return;
  }

  if (*(v1 + 40) != 1)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v3 = v1[4];
  MEMORY[0x18CFE37E0](2);
  sub_18A4A7348();
  sub_18A4A7348();
  if (v3)
  {
    sub_18A4A88A8();
    v5 = v3;
    sub_18A4A7C98();
  }

  else
  {
    sub_18A4A88A8();
  }
}

uint64_t sub_1890A19A0()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(v0 + 40);
  sub_18A4A8888();
  if (!v3)
  {
    MEMORY[0x18CFE37E0](1);
    v5 = v1;
LABEL_7:
    MEMORY[0x18CFE37E0](v5);
    return sub_18A4A88E8();
  }

  if (v3 != 1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  MEMORY[0x18CFE37E0](2);
  sub_18A4A7348();
  sub_18A4A7348();
  sub_18A4A88A8();
  if (v2)
  {
    v4 = v2;
    sub_18A4A7C98();
  }

  return sub_18A4A88E8();
}

BOOL sub_1890A1A84(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1890A241C(&v5, &v7);
}

uint64_t _UIIntelligenceContentLightEffect.init(coder:)(void *a1)
{
  type metadata accessor for _UIIntelligenceContentLightEffect(v1);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t _UIIntelligenceContentLightEffect._needsUpdateForTransition(from:to:usage:)(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = result;
  result = [result reducedMotion];
  if (!a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (result != [a2 reducedMotion] && (objc_msgSend(v3, sel_activationTransitionDirection) || objc_msgSend(v3, sel_deactivationTransitionDirection)))
  {
    return 1;
  }

  v7 = &v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
  v8 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
  if (!v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 40])
  {
    if ((_UICoreMaterialStyleNeedsUpdateForEnvironmentChange(v8, v6, a2) & 1) == 0)
    {
LABEL_23:
      v16.receiver = v3;
      v16.super_class = _UIIntelligenceContentLightEffect;
      return objc_msgSendSuper2(&v16, sel__needsUpdateForTransitionFromEnvironment_toEnvironment_usage_, v6, a2, a3);
    }

    return 1;
  }

  if (v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 40] != 1)
  {
    goto LABEL_23;
  }

  v9 = v8 == *(v7 + 2) && *(v7 + 1) == *(v7 + 3);
  if (v9 || (sub_18A4A86C8() & 1) != 0)
  {
    goto LABEL_23;
  }

  v10 = [v6 traitCollection];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 userInterfaceStyle];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a2 traitCollection];
  if (!v13)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    return 1;
  }

  v14 = v13;
  v15 = [v13 userInterfaceStyle];

  result = 1;
  if (v11 && v12 == v15)
  {
    goto LABEL_23;
  }

  return result;
}

BOOL _UIIntelligenceContentLightEffect.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, &v18);
  if (*&v19[8])
  {
    type metadata accessor for _UIIntelligenceContentLightEffect(v2);
    if (swift_dynamicCast())
    {
      v3 = v16;
      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      v4 = v1;
      v5 = *(v16 + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource);
      v6 = sub_18A4A7C88();

      if (v6)
      {
        v7 = *&v4[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 16];
        v16 = *&v4[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
        v17[0] = v7;
        *(v17 + 9) = *&v4[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 25];
        v8 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 25];
        v9 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 16];
        v18 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
        *v19 = v9;
        *&v19[9] = v8;
        sub_1890A2634(&v18, &v15);
        v10 = sub_1890A241C(&v16, &v18);
        sub_1890A266C(&v18);
        if (v10)
        {
          v11 = [v4 activationTransitionDirection];
          if (v11 == [v3 activationTransitionDirection])
          {
            v12 = [v4 deactivationTransitionDirection];
            v13 = [v3 deactivationTransitionDirection];

            return v12 == v13;
          }
        }
      }
    }
  }

  else
  {
    sub_188A553EC(&v18);
  }

  return 0;
}

void __swiftcall _UIIntelligenceContentLightEffect.init()(_UIIntelligenceContentLightEffect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static UIVisualEffect.intelligenceContentLight(source:)(uint64_t a1)
{
  v2 = objc_allocWithZone(_UIIntelligenceContentLightEffect);

  return [v2 initWithLightSource_];
}

id static UIVisualEffect.intelligenceContentLight(source:blurStyle:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:a1 blurStyle:a2];
  [v6 setActivationTransitionDirection_];
  [v6 setDeactivationTransitionDirection_];
  return v6;
}

id static UIVisualEffect.intelligenceContentLight(source:lightMaterial:darkMaterial:bundle:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = objc_allocWithZone(_UIIntelligenceContentLightEffect);
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v12 initWithLightSource:a1 lightMaterial:v13 darkMaterial:v14 bundle:a6];

  [v15 setActivationTransitionDirection_];
  [v15 setDeactivationTransitionDirection_];
  return v15;
}

BOOL sub_1890A241C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v3 == *a2;
    }

    return 0;
  }

  if (*(a1 + 40) != 1)
  {
    if (*(a2 + 40) == 2)
    {
      v14 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (!(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *a2))
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 40) != 1)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v3 == *a2 && a1[1] == *(a2 + 8) || (sub_18A4A86C8()) && (v4 == v7 && v5 == v8 || (sub_18A4A86C8()))
  {
    if (v6)
    {
      if (v9)
      {
        sub_188A34624(0, &unk_1EA93B990, 0x1E696AAE8);
        v10 = v9;
        v11 = v6;
        v12 = sub_18A4A7C88();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_So33_UIIntelligenceContentLightEffectC5UIKitE8Material33_FA51475B64FD281D2276DA1E0CCE7C49LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1890A26B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1890A26F0()
{
  result = qword_1EA93B988;
  if (!qword_1EA93B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B988);
  }

  return result;
}

char *sub_1890A2744()
{
  v1 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5];
  sub_1890A43A8(v0, &v12[-v5], type metadata accessor for _Glass);
  sub_1890A43A8(v6, v3, type metadata accessor for _Glass);
  v7 = [objc_allocWithZone(_UIViewGlass) init];
  v14 = v1;
  v15 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  sub_188C4CD1C(v3, boxed_opaque_existential_0);
  v9 = v7;
  sub_188B7533C(v6);
  v10 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(&v9[v10]);
  sub_188A5EBAC(&v13, &v9[v10]);
  swift_endAccess();

  return v9;
}

void sub_1890A28A4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
LABEL_10:
    v10 = (v5 - 1) & v5;
    v11 = __clz(__rbit64(v5)) | (v6 << 6);
    v12 = *(*(v1 + 48) + 8 * v11);
    sub_188F8EA58(*(v1 + 56) + 16 * v11, v18);
    v15 = v12;
    sub_188E8FC60(v18, &v16);
    v14 = v16;
    v13 = v17;
    *v0 = v1;
    v0[1] = v2;
    v0[2] = v4;
    v0[3] = v6;
    v0[4] = v10;
    if (!v14 && v13 == 1)
    {
LABEL_15:
      sub_188A3F5FC(&v15, &unk_1EA93CB10, &unk_18A656260);
    }

    else
    {
      sub_188A3F704(&v15, v18, &unk_1EA93A760, &qword_18A65EB00);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        sub_1890A28A4();
      }

      sub_188A3F5FC(v18, &unk_1EA93A760, &qword_18A65EB00);
    }
  }

  else
  {
    v7 = (v4 + 64) >> 6;
    if (v7 <= v3 + 1)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = (v4 + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v15 = 0;
        v16 = 0;
        v17 = 1;
        *v0 = v1;
        v0[1] = v2;
        v0[2] = v4;
        v0[3] = v9;
        v0[4] = 0;
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * v6);
      ++v3;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1890A2A38()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
LABEL_10:
    v10 = (v5 - 1) & v5;
    v11 = (v6 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v1 + 48) + v11);
    sub_188A3F29C(*(v1 + 56) + v11, v15, &unk_1EA93B9E0, &unk_18A6517A0);
    v13 = v12;
    sub_188A3F704(v15, &v14, &unk_1EA93B9E0, &unk_18A6517A0);
    *v0 = v1;
    v0[1] = v2;
    v0[2] = v4;
    v0[3] = v6;
    v0[4] = v10;
    if (v12)
    {
      sub_188A3F704(&v13, v15, &unk_1EA93B9F0, &unk_18A6630C8);
      if (!swift_weakLoadStrong())
      {
        sub_1890A2A38();
      }

      sub_188A3F5FC(v15, &unk_1EA93B9F0, &unk_18A6630C8);
    }

    else
    {
LABEL_15:
      sub_188A3F5FC(&v13, &qword_1EA938700, &unk_18A656280);
    }
  }

  else
  {
    v7 = (v4 + 64) >> 6;
    if (v7 <= v3 + 1)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = (v4 + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v13 = 0;
        v14 = 0;
        *v0 = v1;
        v0[1] = v2;
        v0[2] = v4;
        v0[3] = v9;
        v0[4] = 0;
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * v6);
      ++v3;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1890A2BD8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
LABEL_10:
    v10 = (v5 - 1) & v5;
    v11 = (v6 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v1 + 48) + v11);
    sub_188A3F29C(*(v1 + 56) + v11, v15, &qword_1EA936E70, &unk_18A64E880);
    v13 = v12;
    sub_188A3F704(v15, &v14, &qword_1EA936E70, &unk_18A64E880);
    *v0 = v1;
    v0[1] = v2;
    v0[2] = v4;
    v0[3] = v6;
    v0[4] = v10;
    if (v12)
    {
      sub_188A3F704(&v13, v15, &qword_1EA93BA08, &qword_18A6630E0);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        sub_1890A2BD8();
      }

      sub_188A3F5FC(v15, &qword_1EA93BA08, &qword_18A6630E0);
    }

    else
    {
LABEL_15:
      sub_188A3F5FC(&v13, &qword_1EA93BA00, &qword_18A6630D8);
    }
  }

  else
  {
    v7 = (v4 + 64) >> 6;
    if (v7 <= v3 + 1)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = (v4 + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v13 = 0;
        v14 = 0;
        *v0 = v1;
        v0[1] = v2;
        v0[2] = v4;
        v0[3] = v9;
        v0[4] = 0;
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * v6);
      ++v3;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1890A2D7C()
{
  sub_18A4A5AB8();

  return swift_deallocClassInstance();
}

id sub_1890A2DB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B9C8, &qword_18A6630B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = sub_18A4A6178();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v31 - v16;
  v17 = type metadata accessor for UIPlatformGlassInteractionRepresentable(0);
  v18 = v1;
  v19 = v1 + *(v17 + 24);
  v20 = v10;
  sub_188A3F29C(v19, v8, &qword_1EA93B9C8, &qword_18A6630B8);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_188A3F5FC(v8, &qword_1EA93B9C8, &qword_18A6630B8);
    v22 = v20;
    goto LABEL_8;
  }

  v31 = v20;
  v32 = a1;
  v23 = *(v20 + 32);
  v23(v34, v8, v9);
  sub_188A3F29C(v18 + *(v17 + 28), v5, &qword_1EA93B9C8, &qword_18A6630B8);
  if (v21(v5, 1, v9) == 1)
  {
    v22 = v31;
    (*(v31 + 8))(v34, v9);
    sub_188A3F5FC(v5, &qword_1EA93B9C8, &qword_18A6630B8);
LABEL_7:
    a1 = v32;
    goto LABEL_8;
  }

  v24 = v33;
  v23(v33, v5, v9);
  sub_18A4A6118();
  sub_188C4B128(&qword_1EA93B9D0, MEMORY[0x1E69818E0], MEMORY[0x1E69818E8]);
  v25 = sub_18A4A7248();
  v22 = v31;
  v26 = *(v31 + 8);
  v26(v12, v9);
  if (v25)
  {
    v26(v24, v9);
    v26(v34, v9);
    goto LABEL_7;
  }

  sub_18A4A6118();
  v30 = MEMORY[0x18CFE0F70](v24, v12);
  v26(v12, v9);
  v26(v24, v9);
  v26(v34, v9);
  a1 = v32;
  if (v30)
  {
    v28 = -1;
    return [a1 _setStyle_];
  }

LABEL_8:
  sub_18A4A6118();
  sub_188C4B128(&qword_1EA93B9D0, MEMORY[0x1E69818E0], MEMORY[0x1E69818E8]);
  v27 = sub_18A4A7248();
  (*(v22 + 8))(v12, v9);
  v28 = ~v27 & 1;
  return [a1 _setStyle_];
}

char *sub_1890A3208(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B9D8, &qword_18A6630C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = [objc_allocWithZone(v2) init];
  v9 = &v8[OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_cornerRadii];
  v10 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v10;
  v9[32] = *(a1 + 32);
  v11 = sub_18A4A5968();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v13 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_proxy;
  swift_beginAccess();
  v14 = v8;
  sub_188A4B4F4(v7, &v8[v13], &qword_1EA93B9D8, &qword_18A6630C0);
  swift_endAccess();
  [v14 setDelegate_];

  (*(v12 + 8))(a2, v11);
  return v14;
}

void sub_1890A33CC(char *a1, uint64_t a2)
{
  if (a2 != 2)
  {
    if (a2)
    {
      return;
    }

    v2 = swift_unknownObjectRetain();
    sub_1890A2DB4(v2);
LABEL_4:

    swift_unknownObjectRelease();
    return;
  }

  v3 = &a1[OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_cornerRadii];
  if (a1[OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_cornerRadii + 32])
  {
    return;
  }

  v4 = v3[2];
  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  v8 = [swift_unknownObjectRetain() view];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = [v8 traitCollection];
  v11 = [v10 layoutDirection];

  if (v11 == 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (v11 == 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  if (v11 == 1)
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  CACornerRadiiMake(&v20, v14, v13, v12, v4);
  v18 = v22;
  v19 = v20;
  v16 = v23;
  v17 = v21;
  v15 = [v9 layer];
  v20 = v19;
  v21 = v17;
  v22 = v18;
  v23 = v16;
  [v15 setCornerRadii_];

  swift_unknownObjectRelease();
}

uint64_t sub_1890A37E0(__n128 a1)
{
  v2 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView_coreInteractions;
  v3 = sub_18A4A5B68();
  v4 = *(*(v3 - 8) + 8);

  return v4(v1 + v2, v3);
}

uint64_t sub_1890A3930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDE0E98](a1, ObjectType, a3);
}

char *sub_1890A3994(uint64_t a1)
{
  v2 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [result window];
    if (v7)
    {

      type metadata accessor for GlassMorphablePreview(0);
      sub_1890A43A8(a1 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_glass, v4, type metadata accessor for _Glass);
      return sub_1890A3B04(v6, v4);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

char *sub_1890A3B04(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = [a1 layer];
  v10 = [v9 presentationLayer];

  if (!v10)
  {
    v10 = [a1 layer];
  }

  result = [a1 superview];
  if (result)
  {
    v12 = result;
    [a1 bounds];
    [a1 convertPoint:v12 toCoordinateSpace:{UIRectGetCenter(v13, v14, v15)}];
    v17 = v16;
    v19 = v18;
    v20 = v12;
    [v10 transform];
    CATransform3DGetAffineTransform(&v33, &v34);
    tx = v33.tx;
    ty = v33.ty;
    v32 = *&v33.a;
    v31 = *&v33.c;
    v23 = objc_allocWithZone(UIPreviewTarget);
    *&v34.m11 = v32;
    *&v34.m13 = v31;
    v34.m21 = tx;
    v34.m22 = ty;
    v24 = [v23 initWithContainer:v20 center:&v34 transform:{v17, v19}];

    v25 = objc_allocWithZone(v2);
    v26 = [objc_allocWithZone(UIPreviewParameters) init];
    v27 = [v25 initWithView:a1 parameters:v26 target:v24];

    sub_188C4CD1C(a2, v8);
    v28 = type metadata accessor for _Glass(0);
    (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
    v29 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview_glass;
    swift_beginAccess();
    v30 = v27;
    sub_188A4B4F4(v8, v27 + v29, &unk_1EA93BA10, &qword_18A6526E0);
    swift_endAccess();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890A3DE0()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_proxy;
  v2 = sub_18A4A5968();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_188B7533C(v0 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_glass);
  MEMORY[0x18CFEA6E0](v0 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_contentView);

  return swift_deallocClassInstance();
}

void sub_1890A427C(uint64_t a1)
{
  sub_1890A47DC(319, &qword_1EA92F090, type metadata accessor for _Glass);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1890A43A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1890A4410(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1890A28A4();
  if (v6)
  {
    v7 = v5;
    do
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(a1, a2, ObjectType, v7);
      swift_unknownObjectRelease();
      sub_1890A28A4();
      v7 = v9;
    }

    while (v10);
  }

  return sub_188E036A4(a3);
}

void sub_1890A450C(void *a1)
{
  v2 = v1;
  v4 = sub_18A4A5968();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A5998();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  [a1 translation];
  [a1 translation];
  [a1 scale];
  sub_18A4A5978();
  [a1 isActive];
  sub_18A4A5988();
  v15 = *(v8 + 8);
  v15(v14, v7);
  (*(v8 + 32))(v14, v10, v7);
  v16 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_proxy;
  swift_beginAccess();
  if ((*(v5 + 48))(v2 + v16, 1, v4))
  {
    v15(v14, v7);
    swift_endAccess();
  }

  else
  {
    v17 = v2 + v16;
    v18 = v19;
    (*(v5 + 16))(v19, v17, v4);
    swift_endAccess();
    sub_18A4A5958();
    (*(v5 + 8))(v18, v4);
    v15(v14, v7);
  }
}

void sub_1890A47DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18A4A7D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1890A4830()
{
  if (!qword_1EA931130)
  {
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA931130);
    }
  }
}

void sub_1890A4930(char a1)
{
  v2 = *(v1 + OBJC_IVAR____UISearchControllerTrackableState_trackableState);
  if (*(v2 + 16) == (a1 & 1))
  {
    *(v2 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188CCA8E0();

    sub_18A4A2BF8();
  }
}

void sub_1890A4A30(char a1, char a2)
{
  if (a2)
  {
    sub_1890A4F10();
    v3 = sub_18A4A44C8();
    MEMORY[0x1EEE9AC00](v3);
    sub_18A4A4D58();
  }

  else
  {

    [v2 setIsActive_];
  }
}

uint64_t sub_1890A4B90()
{
  swift_getKeyPath();
  sub_188CCA8E0();
  sub_18A4A2C08();

  return *(v0 + 16);
}

void sub_1890A4C00(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188CCA8E0();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
}

void sub_1890A4C78(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188CCA8E0();
    sub_18A4A2BF8();
  }
}

uint64_t sub_1890A4D58()
{
  v1 = OBJC_IVAR____TtCE5UIKitCSo33_UISearchControllerTrackableStateP33_20E6E50696D6CCA920556441D9DEB6BC5State___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void __swiftcall _UISearchControllerTrackableState.init()(_UISearchControllerTrackableState *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UISearchControllerTrackableState.init()()
{
  v1 = OBJC_IVAR____UISearchControllerTrackableState_trackableState;
  _s5StateCMa_0(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_18A4A2C38();
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = _UISearchControllerTrackableState;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t type metadata accessor for _UISearchControllerTrackableState()
{
  result = qword_1EA93BA50;
  if (!qword_1EA93BA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93BA50);
  }

  return result;
}

unint64_t sub_1890A4F10()
{
  result = qword_1EA930358;
  if (!qword_1EA930358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930358);
  }

  return result;
}

id sub_1890A5000(id *a1, void *a2)
{
  v3 = [*a1 view];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a2 isDescendantOfView_];

  return v5;
}

void sub_1890A50D8(void *a1, double a2, double a3)
{
  v6 = sub_1890A5210();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 view];
    if (v8)
    {
      v18 = v8;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        if ([v9 _accessibilityShouldActivateOnHUDLift])
        {
          v11 = [a1 view];
          [v10 convertPoint:v11 fromView:{a2, a3}];
          v13 = v12;
          v15 = v14;

          [v10 _activateForAccessibilityHUDLiftAtPoint_];
        }

        else
        {
          v17 = v7;
          v7 = v18;
          v18 = v17;
        }
      }

      v16 = v18;
    }

    else
    {
      v16 = v7;
    }
  }
}

uint64_t sub_1890A5210()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____UIFloatingBarContainerView_model);
  swift_getKeyPath();
  v10[0] = v1;
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v2 = *(v1 + 296);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BAE8, &unk_18A6633A0);
  v9 = sub_1890A55E4();

  swift_unknownObjectRelease();
  *&v6 = v2;
  *(&v6 + 1) = sub_1890AD6D4;
  v7 = 0;
  sub_188A5EBAC(&v6, v10);
  v3 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  MEMORY[0x1EEE9AC00](v3);
  sub_18A4A74A8();
  v4 = v6;
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v4;
}

id sub_1890A5508(id *a1, uint64_t a2, double a3, double a4)
{
  v7 = [*a1 view];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [*(a2 + OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_view) convertPoint:v7 toCoordinateSpace:{a3, a4}];
  v9 = [v8 pointInside:0 withEvent:?];

  return v9;
}

unint64_t sub_1890A55E4()
{
  result = qword_1EA93BAF0;
  if (!qword_1EA93BAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BAE8, &unk_18A6633A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BAF0);
  }

  return result;
}

uint64_t sub_1890A566C(void *a1)
{
  v1 = [a1 view];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v4 = *(Strong + OBJC_IVAR____UIFloatingBarContainerView_model);
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v5 = *(v4 + 296);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BAE8, &unk_18A6633A0);
  v12 = sub_1890A55E4();

  swift_unknownObjectRelease();
  *&v9 = v5;
  *(&v9 + 1) = sub_1890AD6D4;
  v10 = 0;
  sub_188A5EBAC(&v9, v13);
  v6 = __swift_project_boxed_opaque_existential_0(v13, v13[3]);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18A4A74C8();

  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v7 & 1;
}

id sub_1890A5A78(void *a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = result;
    v7 = *(v2 + OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_view);
    v8 = a1;
    [v6 request:a2 locationInView:v7];
    v9 = [v7 hitTest:0 withEvent:?];
    if (!v9)
    {
LABEL_5:

      return 0;
    }

    v10 = v9;
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v11 = v7;
    v12 = v10;
    v13 = sub_18A4A7C88();

    if (v13)
    {

      goto LABEL_5;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14 || ([v14 isEnabled] & 1) != 0)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        [v15 _buttonBarHitRect];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);
        v25 = sub_18A4A7CB8();
        v26 = [v6 createRegionFromRect:v16 targetView:v25 identifier:objc_msgSend(v16 selected:{sel_isSelected), v18, v20, v22, v24}];
LABEL_14:
        v37 = v26;

        return v37;
      }

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        [v27 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);
        v25 = sub_18A4A7CB8();
        v26 = [v6 createRegionFromRect:v28 targetView:v25 identifier:objc_msgSend(v28 selected:{sel_isSelected), v30, v32, v34, v36}];
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

id sub_1890A5D38(void *a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = result;
      v7 = a1;
      v8 = [v6 targetView];
      if (v8)
      {
        v9 = v8;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 pointerInteraction:v5 styleForRegion:a2];
LABEL_10:
          v13 = v11;

          return v13;
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v11 = [v5 createStyleForButton:v12 shapeProvider:0];
          goto LABEL_10;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

void sub_1890A5E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = [v4 targetView];
  if (!v5)
  {
    return;
  }

  v11 = v5;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v10 = [v6 visualProvider];
    [v10 pointerWillEnter_];

    v7 = v10;
LABEL_6:

    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    v7 = v11;
    goto LABEL_6;
  }

  v9 = [v8 _visualProvider];
  if (v9)
  {
    [v9 pointerWillEnter_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1890A5FEC(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = [v3 targetView];
  if (!v4)
  {
    return;
  }

  v10 = v4;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v9 = [v5 visualProvider];
    [v9 pointerWillExit_];

    v6 = v9;
LABEL_5:

    return;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    v6 = v10;
    goto LABEL_5;
  }

  v8 = [v7 _visualProvider];
  if (v8)
  {
    [v8 pointerWillExit_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_1890A6140(uint64_t a1)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188D63234(&type metadata for UITraitUserInterfaceStyle, sub_188EB2DD4, 0);
  os_unfair_lock_unlock(v3[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v4 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = [v1 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v5;
}

_UIToolbarVisualProviderSwiftClassProvider __swiftcall _UIToolbarVisualProviderSwiftClassProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1890A6360(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v4 = sub_188B28038(v3, a2);

  if ((v4 & 1) == 0)
  {

    sub_188C1979C(v5);
    sub_188AEFC0C();
  }
}

id sub_1890A6410(void *a1, id a2, void *a3)
{
  result = [a2 toolbar];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  [a3 bounds];
  [v7 convertRect:a3 fromCoordinateSpace:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [a1 setFrame_];
  result = [a2 toolbar];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = result;
  [result addSubview_];

  return [a3 setAlpha_];
}

void sub_1890A6630(double a1)
{
  v3 = objc_opt_self();
  if ([v3 _isInAnimationBlockWithAnimationsEnabled])
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1890A780C;
    *(v5 + 24) = v4;
    aBlock[4] = sub_188A4B574;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_101;
    v6 = _Block_copy(aBlock);
    v7 = v1;

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (v1[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_isInteractive] == 1)
  {
    v9 = MEMORY[0x18CFE1B90](0.15, 0.85, 0.25);
    MEMORY[0x1EEE9AC00](v9);
    sub_18A4A49A8();
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model];
    if (*(v10 + 136) == a1)
    {
      *(v10 + 136) = a1;
      return;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v10;
    sub_188AF0C98();
    sub_18A4A2BF8();
  }
}

double sub_1890A68F4(double a1)
{
  sub_18A4A6C78();
  sub_18A4A49A8();

  return result;
}

void sub_1890A6964(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  if (*(v3 + 136) == a3)
  {
    *(v3 + 136) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188AF0C98();
    sub_18A4A2BF8();
  }
}

void sub_1890A6AB0()
{
  *(v0 + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_isInteractive) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v2 = *(v1 + 136);
  if (*(v1 + 144) == v2)
  {
    *(v1 + 144) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18A4A2BF8();
  }
}

void sub_1890A6C30(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  if (*(v2 + 152) == a2)
  {
    *(v2 + 152) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188AF0C98();
    sub_18A4A2BF8();
  }
}

double sub_1890A6DD0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  result = *(v1 + 152);
  if (result == 1.0)
  {
    *(v1 + 152) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188AF0C98();
    sub_18A4A2BF8();
  }

  return result;
}

__n128 sub_1890A6F80@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_188AF0C98();

  sub_18A4A2C08();

  swift_beginAccess();
  v6 = *(v3 + 88);
  v7 = *(v3 + 72);
  v4 = sub_18A4A5BC8();
  *a1 = v3;
  *(a1 + 8) = v4;
  result = v7;
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  *(a1 + 48) = 0;
  return result;
}

double sub_1890A7068@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 112);
  *a2 = result;
  return result;
}

double sub_1890A7108@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 120);
  *a2 = result;
  return result;
}

double sub_1890A71A8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 136);
  *a2 = result;
  return result;
}

double sub_1890A7248@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 144);
  *a2 = result;
  return result;
}

double sub_1890A72E8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 152);
  *a2 = result;
  return result;
}

id sub_1890A7388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v7 = *(v3 + 160);
  *a2 = v7;
  v4 = *(v3 + 168);
  *(a2 + 8) = v4;
  v5 = v4;

  return v7;
}

double sub_1890A7428(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2BF8();

  return result;
}

double sub_1890A74D8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v5 = *(v3 + 184);
  v4 = *(v3 + 192);
  v7 = *(v3 + 216);
  v6 = *(v3 + 224);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(v3 + 200);
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;

  v8 = v5;

  return result;
}

double sub_1890A75AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v5 = *(v3 + 232);
  v4 = *(v3 + 240);
  v7 = *(v3 + 264);
  v6 = *(v3 + 272);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(v3 + 248);
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;

  v8 = v5;

  return result;
}

double sub_1890A7680(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2BF8();

  return result;
}

double sub_1890A7818@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  result = *(v3 + 288);
  *a2 = result;
  return result;
}

id sub_1890A78C4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

unint64_t sub_1890A7954()
{
  result = qword_1EA93BB60;
  if (!qword_1EA93BB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CF20, &unk_18A6670F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BB60);
  }

  return result;
}

unint64_t sub_1890A79B8()
{
  result = qword_1EA930240;
  if (!qword_1EA930240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BB68, &unk_18A663648);
    sub_188B30D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930240);
  }

  return result;
}

void sub_1890A7AF4()
{
  if (!qword_1ED48CED0)
  {
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED48CED0);
    }
  }
}

uint64_t sub_1890A7B54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[81])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1890A7B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1890A7BF8(char *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolbarButtonBarElement.Item(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarButtonBarElement(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 == 2)
  {
    v14 = *a2;
    v15 = *(v14 + 16);

    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        sub_188C64928(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v13, type metadata accessor for ToolbarButtonBarElement);
        sub_188C64928(v13, v10, type metadata accessor for ToolbarButtonBarElement);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v18 = v10[8];
          sub_188C64C40(v13, type metadata accessor for ToolbarButtonBarElement);
          if (v18)
          {
LABEL_9:
            v19 = 1;
            goto LABEL_11;
          }
        }

        else
        {
          sub_188C648C0(v10, v6, type metadata accessor for ToolbarButtonBarElement.Item);
          v17 = *(v6 + 4);
          sub_188C64C40(v6, type metadata accessor for ToolbarButtonBarElement.Item);
          sub_188C64C40(v13, type metadata accessor for ToolbarButtonBarElement);
          if ((v17 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
          {
            goto LABEL_9;
          }
        }

        if (v15 == ++v16)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      v19 = 0;
LABEL_11:

      swift_beginAccess();
      *a1 = v19;
    }
  }
}

void (*sub_1890A7E84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18A4A4398();
  return sub_188E263E8;
}

unint64_t sub_1890A7F10()
{
  result = qword_1EA93BB70;
  if (!qword_1EA93BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BB70);
  }

  return result;
}

BOOL sub_1890A7F64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_18A4A29D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828, &unk_18A65EF70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A820, &qword_18A65EF68);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v15 = 0;
  if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
  {
LABEL_9:
    v19 = v12;
    v20 = *(type metadata accessor for BarLayoutElement.ItemConfig(0) + 24);
    v21 = *(v19 + 48);
    sub_188A3F29C(&a1[v20], v14, &qword_1EA93A828, &unk_18A65EF70);
    sub_188A3F29C(&a2[v20], &v14[v21], &qword_1EA93A828, &unk_18A65EF70);
    v22 = *(v5 + 48);
    if (v22(v14, 1, v4) == 1)
    {
      if (v22(&v14[v21], 1, v4) == 1)
      {
        sub_188A3F5FC(v14, &qword_1EA93A828, &unk_18A65EF70);
        return 1;
      }

      goto LABEL_14;
    }

    sub_188A3F29C(v14, v10, &qword_1EA93A828, &unk_18A65EF70);
    if (v22(&v14[v21], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_14:
      sub_188A3F5FC(v14, &qword_1EA93A820, &qword_18A65EF68);
      return 0;
    }

    (*(v5 + 32))(v7, &v14[v21], v4);
    sub_188BB0ED8(&qword_1EA930B00, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v23 = sub_18A4A7248();
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    sub_188A3F5FC(v14, &qword_1EA93A828, &unk_18A65EF70);
    return (v23 & 1) != 0;
  }

  return v15;
}

uint64_t sub_1890A82E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarButtonBarElement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890A8380(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1890A83C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890A8430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1890A8484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void *sub_1890A84DC(void *result, void *(*a2)(void *__return_ptr))
{
  if (!*result)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    result = a2(v5);
    *v4 = v5[0];
  }

  return result;
}

id sub_1890A8530()
{
  type metadata accessor for UISnapshotInteraction();
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1890A85F8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    [Strong setTag_];
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setTag_];
  }
}

void sub_1890A869C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    [Strong setTag_];
  }

  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    [v1 setTag_];
  }
}

uint64_t sub_1890A8834()
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  return *(v0 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed);
}

void sub_1890A88AC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  *a2 = *(v3 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed);
}

double sub_1890A8954(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188C4AE0C();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890A8A80(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  return *(v2 + *a2);
}

void sub_1890A8AF0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  *a2 = *(v3 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__isHidden);
}

void sub_1890A8B70(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188C4AE0C();
    sub_18A4A2BF8();
  }
}

uint64_t sub_1890A8C44()
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  return swift_weakLoadStrong();
}

void sub_1890A8DA0(void *a1)
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  swift_getKeyPath();
  sub_18A4A2C28();

  ++*(v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed);
  swift_getKeyPath();
  sub_18A4A2C18();

  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 setSelected_];
    }
  }
}

double sub_1890A9288(void *a1, SEL *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = [a1 *a2];
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  if (v7 != *(v5 + *a4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18A4A2BF8();

    swift_getKeyPath();
    sub_18A4A2C08();

    if (swift_weakLoadStrong())
    {
      sub_188AEFC0C();
    }
  }

  return result;
}

uint64_t sub_1890A9470()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 129);
}

void sub_1890A9510(char a1)
{
  if (*(v1 + 129) == (a1 & 1))
  {
    *(v1 + 129) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

void sub_1890A9620(char a1)
{
  if (*(v1 + 128) == (a1 & 1))
  {
    *(v1 + 128) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

double sub_1890A9730()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 112);
}

void sub_1890A97D0(double a1)
{
  if (*(v1 + 112) == a1)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

double sub_1890A98E8()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 288);
}

void sub_1890A9988(double a1)
{
  if (*(v1 + 288) == a1)
  {
    *(v1 + 288) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

double sub_1890A9AA0()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 120);
}

void sub_1890A9B40(double a1)
{
  if (*(v1 + 120) == a1)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

__n128 sub_1890A9C58@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  swift_beginAccess();
  v3 = *(v1 + 80);
  *(a1 + 32) = *(v1 + 64);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 96);
  result = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}