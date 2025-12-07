void sub_1AFD89404()
{
  nullsub_106();

  sub_1AFDA72A0(v0);
}

float32x4_t sub_1AFD8942C(float32x4_t *a1, float32x4_t *a2)
{
  v4 = (*(a1->i64[0] + 96))(a1);
  v15 = LODWORD(v4);
  v5 = (*(a1->i64[0] + 96))(a1);
  v13 = LODWORD(v5);
  *&v6 = (*(a1->i64[0] + 96))(a1);
  v7.i64[0] = __PAIR64__(v13, v15);
  v7.i64[1] = v6;
  v16 = v7;
  v8 = a1[2];
  v9 = vaddq_f32(a1[3], v7);
  v10 = vrecpeq_f32(v8);
  v11 = vmulq_f32(v10, vrecpsq_f32(v8, v10));
  v14 = vmulq_f32(vrecpsq_f32(v8, v11), vmulq_f32(v9, v11));
  sub_1AFD86EB0(a1, a2);
  result = vsubq_f32(vmulq_f32(v14, a1[2]), v16);
  result.i32[3] = 0;
  a1[3] = result;
  return result;
}

uint64_t sub_1AFD89540@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  *(a2 + *(result + 72)) = 1065353216;
  return result;
}

float32x4_t sub_1AFD89554(float32x4_t *a1, float32_t a2)
{
  v4 = (*(a1->i64[0] + 96))(a1);
  v16 = LODWORD(v4);
  v5 = (*(a1->i64[0] + 96))(a1);
  v14 = LODWORD(v5);
  *&v6 = (*(a1->i64[0] + 96))(a1);
  v7.i64[0] = __PAIR64__(v14, v16);
  v7.i64[1] = v6;
  v17 = vaddq_f32(a1[3], v7);
  a1[4].f32[0] = a2;
  v8 = (*(a1->i64[0] + 96))(a1);
  v15 = LODWORD(v8);
  v9 = (*(a1->i64[0] + 96))(a1);
  v13 = LODWORD(v9);
  *&v10 = (*(a1->i64[0] + 96))(a1);
  v11.i64[0] = __PAIR64__(v13, v15);
  v11.i64[1] = v10;
  result = vsubq_f32(v17, v11);
  result.i32[3] = 0;
  a1[3] = result;
  return result;
}

const char *sub_1AFD896D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFD84E6C(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 32 + i) = *(a1 + 48 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 16 + j) = *(a1 + 32 + j);
  }

  *(a2 + 48) = *(a1 + 64);
  *(a2 + 56) = *(a1 + 72);
  return "btCylinderShapeData";
}

float32x4_t sub_1AFD89754@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*a1 + 136))(&v14);
  v13 = v14;
  *a3 = v14;
  result.f32[0] = (*(*a1 + 96))(a1);
  if (result.f32[0] != 0.0)
  {
    v8 = vmulq_f32(*a2, *a2);
    *v7.f32 = vpadd_f32(*v8.i8, *v8.i8);
    v9 = vextq_s8(v8, v8, 8uLL);
    *v9.f32 = vadd_f32(*v7.f32, *v9.f32);
    v7.i32[0] = 679477248;
    v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v9), 0), xmmword_1AFE47D00, *a2);
    v11 = vmulq_f32(v10, v10);
    v12 = vmulq_n_f32(vmulq_n_f32(v10, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0])), (*(*a1 + 96))(a1));
    v12.i32[3] = 0;
    result = vaddq_f32(v13, v12);
    *a3 = result;
  }

  return result;
}

float sub_1AFD89880(float *a1)
{
  v2 = a1[12];
  v3 = (*(*a1 + 96))();
  (*(*a1 + 96))(a1);
  (*(*a1 + 96))(a1);
  return v2 + v3;
}

uint64_t sub_1AFD89928(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1AFD871FC(a1);
  *v8 = &unk_1F2571EF8;
  *(v8 + 144) = 1;
  *(v8 + 136) = 0;
  *(v8 + 124) = 0;
  *(v8 + 176) = 1;
  *(v8 + 168) = 0;
  *(v8 + 156) = 0;
  *(v8 + 8) = 9;
  if (a4 < 0)
  {
    v15 = 0;
  }

  else
  {
    if (!a4)
    {
      *(a1 + 124) = 0;
      *(a1 + 156) = 0;
      goto LABEL_29;
    }

    v9 = sub_1AFDA7294(16 * a4, 16);
    v10 = v9;
    v11 = *(a1 + 124);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 16 * v11;
      do
      {
        *(v9 + v12) = *(*(a1 + 136) + v12);
        v12 += 16;
      }

      while (v13 != v12);
    }

    v14 = *(a1 + 136);
    if (v14 && *(a1 + 144) == 1)
    {
      sub_1AFDA72A0(v14);
    }

    *(a1 + 144) = 1;
    *(a1 + 136) = v10;
    *(a1 + 128) = a4;
    v15 = *(a1 + 156);
  }

  *(a1 + 124) = a4;
  if (v15 < a4)
  {
    if (*(a1 + 160) >= a4)
    {
LABEL_25:
      bzero((*(a1 + 168) + 4 * v15), 4 * (~v15 + a4) + 4);
      goto LABEL_26;
    }

    if (a4)
    {
      v16 = sub_1AFDA7294(4 * a4, 16);
      LODWORD(v17) = *(a1 + 156);
    }

    else
    {
      v16 = 0;
      LODWORD(v17) = v15;
    }

    v18 = *(a1 + 168);
    if (v17 < 1)
    {
      if (!v18)
      {
LABEL_24:
        *(a1 + 176) = 1;
        *(a1 + 168) = v16;
        *(a1 + 160) = a4;
        goto LABEL_25;
      }
    }

    else
    {
      v17 = v17;
      v19 = v16;
      v20 = *(a1 + 168);
      do
      {
        v21 = *v20++;
        *v19++ = v21;
        --v17;
      }

      while (v17);
    }

    if (*(a1 + 176) == 1)
    {
      sub_1AFDA72A0(v18);
    }

    goto LABEL_24;
  }

LABEL_26:
  *(a1 + 156) = a4;
  if (a4 >= 1)
  {
    v22 = 0;
    do
    {
      *(*(a1 + 136) + 16 * v22) = *(a2 + 16 * v22);
      *(*(a1 + 168) + 4 * v22) = *(a3 + 4 * v22);
      ++v22;
    }

    while (a4 != v22);
  }

LABEL_29:
  sub_1AFD8738C(a1);
  return a1;
}

uint64_t sub_1AFD89B24@<X0>(uint64_t result@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = result;
  v37 = *MEMORY[0x1E69E9840];
  *a3 = 0uLL;
  v4 = *a2;
  v5 = vmulq_f32(v4, v4);
  v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
  if (v6 >= 1.4211e-14)
  {
    v7 = vmulq_n_f32(v4, 1.0 / sqrtf(v6));
  }

  else
  {
    v7 = xmmword_1AFE20150;
  }

  v35 = v7;
  v34 = 0.0;
  v8 = *(result + 124);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 168);
    v11 = *(result + 136);
    v12 = -1.0e18;
    v13 = *(result + 124);
    v32 = v13;
    do
    {
      v14 = v13 - 128;
      if (v13 >= 128)
      {
        v13 = 128;
      }

      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      v16 = v8 - v9;
      if (v8 - v9 >= 128)
      {
        v17 = 128;
      }

      else
      {
        v17 = v8 - v9;
      }

      if (v16 < 1)
      {
        result = -1;
        v28 = -3.4028e38;
      }

      else
      {
        v18 = 0;
        v19 = v17;
        v20 = v35;
        do
        {
          v21 = *v10++;
          v22 = vmulq_n_f32(vmulq_f32(v20, v3[2]), v21);
          v22.i32[3] = 0;
          v23 = *v11++;
          v33 = vaddq_f32(v23, v22);
          v24 = (*(v3->i64[0] + 96))(v3);
          v20 = v35;
          v25 = vsubq_f32(v33, vmulq_n_f32(v35, v24));
          v25.i32[3] = 0;
          v36[v18++] = v25;
        }

        while (v15 != v18);
        if (v16 > 3)
        {
          result = off_1EE810978(v36, &v35, v19, &v34);
          v28 = v34;
          v8 = v32;
          goto LABEL_26;
        }

        v26 = 0;
        v27 = -1;
        v28 = -3.4028e38;
        do
        {
          v29 = vmulq_f32(v36[v26], v35);
          v30 = vadd_f32(vpadd_f32(*v29.i8, *v29.i8), *&vextq_s8(v29, v29, 8uLL)).f32[0];
          if (v30 > v28)
          {
            v28 = v30;
            v27 = v26;
          }

          ++v26;
        }

        while (v26 < v19);
        result = v27;
        v8 = v32;
      }

      v34 = v28;
LABEL_26:
      if (v28 > v12)
      {
        *a3 = v36[result];
        v12 = v28;
      }

      v9 += 128;
      v13 = v14;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t sub_1AFD89D74(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a4 >= 1)
  {
    v4 = result;
    v32 = 0;
    v30 = a4;
    while (1)
    {
      v36 = 0.0;
      v5 = v4[7].i32[3];
      if (v5 >= 1)
      {
        break;
      }

LABEL_28:
      if (++v32 == v30)
      {
        return result;
      }
    }

    v6 = 0;
    v7 = v4[10].i64[1];
    v8 = v4[8].i64[1];
    v9 = v4[7].i32[3];
    v10 = -1.0e18;
    v11 = (a2 + 16 * v32);
    v33 = v9;
    while (1)
    {
      v12 = v9 - 128;
      if (v9 >= 128)
      {
        v9 = 128;
      }

      if (v9 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v9;
      }

      v14 = v5 - v6;
      if (v5 - v6 >= 128)
      {
        v15 = 128;
      }

      else
      {
        v15 = v5 - v6;
      }

      if (v14 < 1)
      {
        result = -1;
        v26 = -3.4028e38;
      }

      else
      {
        v34 = v12;
        v16 = 0;
        v17 = v15;
        v18 = *v11;
        do
        {
          v19 = *v7++;
          v20 = vmulq_n_f32(vmulq_f32(v18, v4[2]), v19);
          v20.i32[3] = 0;
          v21 = *v8++;
          v35 = vaddq_f32(v21, v20);
          v22 = (*(v4->i64[0] + 96))(v4);
          v18 = *v11;
          v23 = vsubq_f32(v35, vmulq_n_f32(*v11, v22));
          v23.i32[3] = 0;
          v37[v16++] = v23;
        }

        while (v13 != v16);
        if (v14 > 3)
        {
          result = off_1EE810978(v37, v11, v17, &v36);
          v26 = v36;
          v5 = v33;
          v12 = v34;
          goto LABEL_25;
        }

        v24 = 0;
        v25 = -1;
        v26 = -3.4028e38;
        do
        {
          v27 = vmulq_f32(v37[v24], *v11);
          v28 = vadd_f32(vpadd_f32(*v27.i8, *v27.i8), *&vextq_s8(v27, v27, 8uLL)).f32[0];
          if (v28 > v26)
          {
            v26 = v28;
            v25 = v24;
          }

          ++v24;
        }

        while (v24 < v17);
        result = v25;
        v5 = v33;
        v12 = v34;
      }

      v36 = v26;
LABEL_25:
      if (v26 > v10)
      {
        *(a3 + 16 * v32) = v37[result];
        v10 = v26;
      }

      v6 += 128;
      v9 = v12;
      if (v6 >= v5)
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

float sub_1AFD89FC0(float32x4_t *a1, uint64_t a2, float a3)
{
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmulq_f32(vsubq_f32(a1[6], a1[5]), v3);
  v5 = a3 / 12.0;
  v3.f32[0] = (v4.f32[2] + v4.f32[2]) * (v4.f32[2] + v4.f32[2]);
  *v4.f32 = vadd_f32(*v4.f32, *v4.f32);
  *a2 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v3.f32, 0), *v4.f32, *v4.f32), v5));
  result = v5 * (COERCE_FLOAT(vmul_f32(*&v4, *&v4).i32[1]) + (v4.f32[0] * v4.f32[0]));
  *(a2 + 8) = result;
  *(a2 + 12) = 0;
  return result;
}

const char *sub_1AFD8A018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFD84E6C(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 32 + i) = *(a1 + 48 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 16 + j) = *(a1 + 32 + j);
  }

  *(a2 + 48) = *(a1 + 64);
  v8 = *(a1 + 124);
  if (v8)
  {
    *(a2 + 56) = (*(*a3 + 56))(a3, *(a1 + 136));
    *(a2 + 64) = v8;
    v9 = (*(*a3 + 32))(a3, 20, v8);
    v10 = *(a1 + 136);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = *(v9 + 8);
      v13 = *(a1 + 168);
      v14 = *(a1 + 136);
      do
      {
        for (k = 0; k != 16; k += 4)
        {
          *(v12 + k) = *(v14 + k);
        }

        *(v12 + 16) = *(v13 + 4 * v11++);
        v12 += 20;
        v14 += 16;
      }

      while (v11 != v8);
    }

    (*(*a3 + 40))(a3, v9, "btPositionAndRadius", 1497453121, v10);
  }

  else
  {
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  return "btMultiSphereShapeData";
}

void sub_1AFD8A1A0(uint64_t a1)
{
  *a1 = &unk_1F2571EF8;
  v2 = *(a1 + 168);
  if (v2 && *(a1 + 176) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 176) = 1;
  *(a1 + 168) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  v3 = *(a1 + 136);
  if (v3 && *(a1 + 144) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 144) = 1;
  *(a1 + 136) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;

  nullsub_106();
}

void sub_1AFD8A23C(uint64_t a1)
{
  *a1 = &unk_1F2571EF8;
  v2 = *(a1 + 168);
  if (v2 && *(a1 + 176) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 176) = 1;
  *(a1 + 168) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  v3 = *(a1 + 136);
  if (v3 && *(a1 + 144) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 144) = 1;
  *(a1 + 136) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  nullsub_106();

  sub_1AFDA72A0(v4);
}

void sub_1AFD8A328(uint64_t a1)
{
  v1 = sub_1AFD6E3F8(a1);

  sub_1AFDA72A0(v1);
}

void sub_1AFD8A350(float32x4_t *a1, uint64_t a2, int a3, float32x4_t *a4, float32x4_t *a5, int32x2_t a6)
{
  a1[4].i8[8] = a3;
  if (a3)
  {
    a6.i32[0] = 1.0;
    v8 = sub_1AFD6E2E4(a1, a4, a5, a6);
    v59 = &unk_1F2572010;
    v60 = a1 + 9;
    v61 = a1;
    (*(*a2 + 16))(a2, &v59, a1 + 1, a1 + 2, v8);
    v9 = a1[9].i32[1];
    v10 = 2 * v9;
    v11 = a1[11].i32[1];
    if (v11 < 2 * v9)
    {
      v12 = v11;
      if (a1[11].i32[2] < v10)
      {
        if (v9)
        {
          v13 = sub_1AFDA7294(32 * v9, 16);
          v11 = a1[11].i32[1];
        }

        else
        {
          v13 = 0;
        }

        if (v11 >= 1)
        {
          v18 = 0;
          v19 = 16 * v11;
          do
          {
            *(v13 + v18) = *(a1[12].i64[0] + v18);
            v18 += 16;
          }

          while (v19 != v18);
        }

        v20 = a1[12].i64[0];
        if (v20 && a1[12].i8[8] == 1)
        {
          sub_1AFDA72A0(v20);
        }

        a1[12].i8[8] = 1;
        a1[12].i64[0] = v13;
        a1[11].i32[2] = v10;
      }

      v21 = 16 * v12;
      v22 = v10 - v12;
      do
      {
        v23 = (a1[12].i64[0] + v21);
        *v23 = 0;
        v23[1] = 0;
        v21 += 16;
        --v22;
      }

      while (v22);
    }

    a1[11].i32[1] = v10;
  }

  else
  {
    v59 = &unk_1F2572038;
    v60 = a1 + 5;
    v57 = xmmword_1AFEABE60;
    v58 = xmmword_1AFEABE70;
    (*(*a2 + 16))(a2, &v59, &v58, &v57, a5);
    v9 = a1[5].i32[1];
    v14 = 2 * v9;
    v15 = a1[7].i32[1];
    if (v15 < 2 * v9)
    {
      v16 = v15;
      if (a1[7].i32[2] < v14)
      {
        if (v9)
        {
          v17 = sub_1AFDA7294(v9 << 7, 16);
          v15 = a1[7].i32[1];
        }

        else
        {
          v17 = 0;
        }

        if (v15 >= 1)
        {
          v24 = 0;
          v25 = v15 << 6;
          do
          {
            v26 = (v17 + v24);
            v27 = (a1[8].i64[0] + v24);
            *v26 = *v27;
            v26[1] = v27[1];
            v28 = v27[3];
            v26[2] = v27[2];
            v26[3] = v28;
            v24 += 64;
          }

          while (v25 != v24);
        }

        v29 = a1[8].i64[0];
        if (v29 && a1[8].i8[8] == 1)
        {
          sub_1AFDA72A0(v29);
        }

        a1[8].i8[8] = 1;
        a1[8].i64[0] = v17;
        a1[7].i32[2] = v14;
      }

      v30 = v16 << 6;
      v31 = v14 - v16;
      do
      {
        v32 = (a1[8].i64[0] + v30);
        v32[2] = 0uLL;
        v32[3] = 0uLL;
        *v32 = 0uLL;
        v32[1] = 0uLL;
        v30 += 64;
        --v31;
      }

      while (v31);
    }

    a1[7].i32[1] = v14;
  }

  nullsub_106();
  a1[4].i32[1] = 0;
  if (v9)
  {
    sub_1AFD6E064(a1, 0, v9, v33, v34, v35, v36, v37, v38, v39, v40);
    if (a1[4].i8[8] == 1 && !a1[13].i32[3])
    {
      v41 = 1;
      if (!a1[14].i32[0])
      {
        v42 = sub_1AFDA7294(32, 16);
        v43 = v42;
        v44 = a1[13].u32[3];
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = 32 * v44;
          do
          {
            v47 = (v42 + v45);
            v48 = (a1[14].i64[1] + v45);
            v49 = v48[1];
            *v47 = *v48;
            v47[1] = v49;
            v45 += 32;
          }

          while (v46 != v45);
        }

        v50 = a1[14].i64[1];
        if (v50 && a1[15].i8[0] == 1)
        {
          sub_1AFDA72A0(v50);
        }

        a1[15].i8[0] = 1;
        a1[14].i64[1] = v43;
        a1[14].i32[0] = 1;
        v41 = a1[13].i32[3] + 1;
      }

      a1[13].i32[3] = v41;
      v51 = a1[14].i64[1];
      v52 = a1[12].i64[0];
      *v51 = *v52;
      *(v51 + 2) = *(v52 + 2);
      *(v51 + 4) = *(v52 + 4);
      *(v51 + 6) = *(v52 + 6);
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 10) = *(v52 + 10);
      *(v51 + 12) = 0;
      v53 = *(v52 + 12);
      if (v53 < 0)
      {
        v54 = -v53;
      }

      else
      {
        v54 = 1;
      }

      *(v51 + 16) = v54;
    }

    a1[15].i32[2] = a1[13].i32[3];
    v55 = a1[10].i64[0];
    if (v55 && a1[10].i8[8] == 1)
    {
      sub_1AFDA72A0(v55);
    }

    a1[10].i8[8] = 1;
    a1[10].i64[0] = 0;
    a1[9].i32[1] = 0;
    a1[9].i32[2] = 0;
    v56 = a1[6].i64[0];
    if (v56)
    {
      if (a1[6].i8[8] == 1)
      {
        sub_1AFDA72A0(v56);
      }
    }

    a1[6].i8[8] = 1;
    a1[6].i64[0] = 0;
    a1[5].i32[1] = 0;
    a1[5].i32[2] = 0;
  }
}

void sub_1AFD8A774(uint64_t a1)
{
  sub_1AFD86E64(a1);
  *v1 = &unk_1F2572060;
  v1[9] = 0;
}

void sub_1AFD8A7AC(void *a1)
{
  *a1 = &unk_1F2572060;
  v2 = a1[9];
  if (v2)
  {
    (**v2)(v2);
    sub_1AFDA72A0(a1[9]);
  }

  nullsub_106();
}

uint64_t sub_1AFD8A838(float32x4_t **a1, int a2)
{
  v233 = *MEMORY[0x1E69E9840];
  v4 = a1[9];
  if (v4)
  {
    (*v4->i64[0])(v4);
    sub_1AFDA72A0(a1[9]);
  }

  v5 = sub_1AFDA7294(192, 16);
  v6 = sub_1AFD87480(v5);
  a1[9] = v7;
  v229 = 1;
  v228 = 0;
  v227 = 0;
  if (((*a1)[12].i64[0])(a1, v6) >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (v13 == v12)
      {
        if (v12)
        {
          v15 = (2 * v12);
        }

        else
        {
          v15 = 1;
        }

        if (v12 < v15)
        {
          if (v15)
          {
            v16 = sub_1AFDA7294(16 * v15, 16);
          }

          else
          {
            v16 = 0;
          }

          if (v12 >= 1)
          {
            v18 = 0;
            do
            {
              *(v16 + v18) = *(v228 + v18);
              v18 += 16;
            }

            while (16 * v12 != v18);
            v11 = v228;
          }

          if (v11 && v229 == 1)
          {
            sub_1AFDA72A0(v11);
          }

          v229 = 1;
          v228 = v16;
          HIDWORD(v227) = v15;
          v17 = v227;
          goto LABEL_24;
        }

        v16 = v11;
        v17 = v12;
      }

      else
      {
        v16 = v11;
        v17 = v13;
      }

      v15 = v12;
LABEL_24:
      v19 = v17 + 1;
      LODWORD(v227) = v17 + 1;
      ((*a1)[13].i64[1])(a1, v14, v16 + 16 * v13);
      v14 = (v14 + 1);
      v11 = v16;
      v12 = v15;
      v13 = v19;
      if (v14 >= ((*a1)[12].i64[0])(a1))
      {
        goto LABEL_27;
      }
    }
  }

  v19 = 0;
  v16 = 0;
LABEL_27:
  v219 = 1;
  v218 = 0;
  v217 = 0;
  v222 = 1;
  v221 = 0;
  v220 = 0;
  v225 = 1;
  v224 = 0;
  v223 = 0;
  if (a2)
  {
    v231.i8[8] = 1;
    v231.i64[0] = 0;
    *(v230.i64 + 4) = 0;
    sub_1AFDAE764(v226, &v230);
    v215 = 1;
    v214 = 0;
    v213 = 0;
    if (v230.i32[1] >= 1)
    {
      v20 = 0;
      do
      {
        v196 = *(v231.i64[0] + 16 * v20);
        v21 = ((*a1)[6].i64[0])(a1);
        v22 = v213;
        if (v213 == HIDWORD(v213))
        {
          v23 = v213 ? 2 * v213 : 1;
          if (v213 < v23)
          {
            if (v23)
            {
              v24 = sub_1AFDA7294(16 * v23, 16);
              v22 = v213;
            }

            else
            {
              v24 = 0;
            }

            if (v22 >= 1)
            {
              v25 = 0;
              v26 = 16 * v22;
              do
              {
                *(v24 + v25) = *(v214 + v25);
                v25 += 16;
              }

              while (v26 != v25);
            }

            if (v214 && v215 == 1)
            {
              sub_1AFDA72A0(v214);
            }

            v215 = 1;
            v214 = v24;
            HIDWORD(v213) = v23;
            v22 = v213;
          }
        }

        v27 = v196;
        *(&v27 + 3) = *(&v196 + 3) - v21;
        *(v214 + 16 * v22) = v27;
        LODWORD(v213) = v213 + 1;
        ++v20;
      }

      while (v20 < v230.i32[1]);
    }

    v211 = 1;
    v210 = 0;
    v208 = 0;
    v209 = 0;
    sub_1AFDAEAB4(v212, v207);
    sub_1AFDADDF8(v216, v210, 0, 16, v208, 0.0, 0.0, v28, v29, v30);
    if (v210 && v211 == 1)
    {
      sub_1AFDA72A0(v210);
    }

    if (v214 && v215 == 1)
    {
      sub_1AFDA72A0(v214);
    }

    if (v231.i64[0] && v231.u8[8] == 1)
    {
      sub_1AFDA72A0(v231.i64[0]);
    }
  }

  else
  {
    sub_1AFDADDF8(v216, v16, 0, 16, v19, 0.0, 0.0, v8, v9, v10);
  }

  v31 = v223;
  if (v223 < 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_1AFDA7294(16 * v223, 16);
  }

  v215 = 1;
  v214 = 0;
  HIDWORD(v213) = 0;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v231.i8[8] = 1;
  v230.i32[1] = 0;
  v191 = a1;
  if ((v31 & 0x80000000) != 0)
  {
    v37 = (48 * v31 + 24);
    v38 = v31 + 1;
    do
    {
      v39 = *(v37 - 1);
      if (v39 && *v37 == 1)
      {
        sub_1AFDA72A0(v39);
      }

      *v37 = 1;
      *(v37 - 1) = 0;
      *(v37 - 20) = 0;
      v37 += 48;
    }

    while (v38++);
  }

  else if (v31)
  {
    v33 = sub_1AFDA7294(48 * v31, 16);
    v34 = v33;
    v215 = 1;
    v214 = v33;
    HIDWORD(v213) = v31;
    v35 = v31;
    do
    {
      v36 = sub_1AFD8CC40(v33, &v230);
      *(v36 + 32) = v232;
      v33 = v36 + 48;
      --v35;
    }

    while (v35);
    goto LABEL_70;
  }

  v34 = 0;
LABEL_70:
  LODWORD(v213) = v31;
  if (v231.i64[0] && v231.u8[8] == 1)
  {
    sub_1AFDA72A0(v231.i64[0]);
  }

  v41 = v217;
  v42 = a1[9];
  v43 = v42->i32[3];
  if (v43 < v217 && v42[1].i32[0] < v217)
  {
    if (v217)
    {
      v44 = sub_1AFDA7294(16 * v217, 16);
      v43 = v42->i32[3];
    }

    else
    {
      v44 = 0;
    }

    if (v43 >= 1)
    {
      v45 = 0;
      v46 = 16 * v43;
      do
      {
        *(v44 + v45) = *(v42[1].i64[1] + v45);
        v45 += 16;
      }

      while (v46 != v45);
    }

    v47 = v42[1].i64[1];
    if (v47 && v42[2].i8[0] == 1)
    {
      sub_1AFDA72A0(v47);
    }

    v42[2].i8[0] = 1;
    v42[1].i64[1] = v44;
    v42[1].i32[0] = v41;
  }

  v42->i32[3] = v41;
  if (v41 >= 1)
  {
    v48 = 0;
    do
    {
      *(a1[9][1].i64[1] + v48) = *(v218 + v48);
      v48 += 16;
    }

    while (16 * v41 != v48);
  }

  if (v31 < 1)
  {
    goto LABEL_142;
  }

  v49 = 0;
  v190 = v32;
  v197 = v31;
  do
  {
    v50 = 0;
    v51 = (v221 + 12 * *(v224 + 4 * v49));
    v52 = v34 + 48 * v49;
    v53 = v51;
    do
    {
      while (1)
      {
        v54 = v53[3 * v53[1] + 2];
        LODWORD(v55) = *(v52 + 4);
        if (v55 == *(v52 + 8))
        {
          v56 = v55 ? 2 * v55 : 1;
          if (v55 < v56)
          {
            if (v56)
            {
              v57 = sub_1AFDA7294(4 * v56, 16);
              LODWORD(v55) = *(v52 + 4);
            }

            else
            {
              v57 = 0;
            }

            v58 = *(v52 + 16);
            if (v55 < 1)
            {
              if (!v58)
              {
LABEL_107:
                *(v52 + 24) = 1;
                *(v52 + 16) = v57;
                *(v52 + 8) = v56;
                LODWORD(v55) = *(v52 + 4);
                goto LABEL_108;
              }
            }

            else
            {
              v55 = v55;
              v59 = v57;
              v60 = *(v52 + 16);
              do
              {
                v61 = *v60++;
                *v59++ = v61;
                --v55;
              }

              while (v55);
            }

            if (*(v52 + 24) == 1)
            {
              sub_1AFDA72A0(v58);
            }

            *(v52 + 16) = 0;
            goto LABEL_107;
          }
        }

LABEL_108:
        *(*(v52 + 16) + 4 * v55) = v54;
        ++*(v52 + 4);
        if (v50 <= 1)
        {
          break;
        }

        v66 = &v53[3 * v53[1]];
        v53 = &v66[3 * *v66];
        v50 = 2;
        if (v53 == v51)
        {
          goto LABEL_114;
        }
      }

      v62 = vsubq_f32(*(v218 + 16 * v53[2]), *(v218 + 16 * v54));
      v62.i32[3] = 0;
      v63 = vmulq_f32(v62, v62);
      v64 = v50 + 1;
      *(&v230 + v50) = vmulq_n_f32(v62, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v63.i8, *v63.i8), *&vextq_s8(v63, v63, 8uLL)).f32[0]));
      v65 = &v53[3 * v53[1]];
      v53 = &v65[3 * *v65];
      ++v50;
    }

    while (v53 != v51);
    if (v64 == 2)
    {
LABEL_114:
      v67 = vsubq_f32(vmulq_f32(v230, vextq_s8(vextq_s8(v231, v231, 0xCuLL), v231, 8uLL)), vmulq_f32(v231, vextq_s8(vextq_s8(v230, v230, 0xCuLL), v230, 8uLL)));
      v68 = vextq_s8(vextq_s8(v67, v67, 0xCuLL), v67, 8uLL);
      v68.i32[3] = 0;
      v32 = v190;
      v69 = (v190 + 16 * v49);
      v70 = vmulq_f32(v68, v68);
      v71 = vmulq_n_f32(v68, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v70.i8, *v70.i8), *&vextq_s8(v70, v70, 8uLL)).f32[0]));
      *v69 = v71;
      v34 = v214;
      v72 = (v214 + 48 * v49);
      v72[8] = v71.i32[0];
      v72[9] = v69->i32[1];
      v72[10] = v69->i32[2];
      v72[11] = 1900671690;
      goto LABEL_116;
    }

    v32 = v190;
    v73 = (v190 + 16 * v49);
    *v73 = 0;
    v73[1] = 0;
    v34 = v214;
LABEL_116:
    v74 = v34 + 48 * v49;
    v75 = *(v74 + 4);
    v76 = 1.0e30;
    if (v75 >= 1)
    {
      v77 = *(v74 + 16);
      v76 = 1.0e30;
      do
      {
        v78 = *v77++;
        v79 = vmulq_f32(*(a1[9][1].i64[1] + 16 * v78), *(v32 + 16 * v49));
        v80 = vadd_f32(vpadd_f32(*v79.i8, *v79.i8), *&vextq_s8(v79, v79, 8uLL)).f32[0];
        if (v76 > v80)
        {
          v76 = v80;
        }

        --v75;
      }

      while (v75);
    }

    *(v74 + 44) = -v76;
    ++v49;
  }

  while (v49 != v197);
  if (v213 < 1)
  {
LABEL_142:
    sub_1AFD876C0(a1[9]);
    goto LABEL_323;
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  while (2)
  {
    if (v81 == v83 && (!v81 ? (v84 = 1) : (v84 = (2 * v81)), v83 < v84))
    {
      if (v84)
      {
        v85 = sub_1AFDA7294(4 * v84, 16);
        if (v81)
        {
LABEL_131:
          for (i = 0; i != v81; ++i)
          {
            *(v85 + 4 * i) = *(v82 + 4 * i);
          }

LABEL_137:
          sub_1AFDA72A0(v82);
          goto LABEL_138;
        }
      }

      else
      {
        v85 = 0;
        if (v81)
        {
          goto LABEL_131;
        }
      }

      if (v82)
      {
        goto LABEL_137;
      }

      v84 = 1;
LABEL_138:
      v82 = v85;
    }

    else
    {
      v84 = v83;
    }

    *(v82 + 4 * v81) = v81;
    ++v81;
    v83 = v84;
    if (v81 < v213)
    {
      continue;
    }

    break;
  }

  v189 = v82 - 4;
  while (2)
  {
    v87 = v82;
    v88 = v81;
    LODWORD(v81) = v81 - 1;
    v192 = v87;
    v89 = *(v87 + 4 * v81);
    v90 = sub_1AFDA7294(4, 16);
    *v90 = v89;
    v91 = (v88 - 2);
    if (v88 < 2)
    {
      v109 = 1;
      v95 = v191;
      v82 = v192;
LABEL_258:
      v200 = v81;
      v156 = 0;
      v157 = v109;
      do
      {
        v158 = v90;
        v159 = v214 + 48 * v90[v156];
        sub_1AFD8CC40(&v230, v159);
        v232 = *(v159 + 32);
        v160 = v95[9];
        v161 = v160[2].i32[3];
        if (v161 == v160[3].i32[0])
        {
          v162 = v161 ? 2 * v161 : 1;
          if (v161 < v162)
          {
            if (v162)
            {
              v163 = sub_1AFDA7294(48 * v162, 16);
              v161 = v160[2].i32[3];
            }

            else
            {
              v163 = 0;
            }

            if (v161 >= 1)
            {
              v164 = 0;
              v165 = 48 * v161;
              do
              {
                v166 = v160[3].i64[1] + v164;
                *(sub_1AFD8CC40(v163 + v164, v166) + 32) = *(v166 + 32);
                v164 += 48;
              }

              while (v165 != v164);
              v167 = v160[2].u32[3];
              if (v167 >= 1)
              {
                v168 = 0;
                v169 = 48 * v167;
                do
                {
                  v170 = v160[3].i64[1] + v168;
                  v171 = *(v170 + 16);
                  if (v171 && *(v170 + 24) == 1)
                  {
                    sub_1AFDA72A0(v171);
                  }

                  *(v170 + 24) = 1;
                  *(v170 + 16) = 0;
                  *(v170 + 4) = 0;
                  *(v170 + 8) = 0;
                  v168 += 48;
                }

                while (v169 != v168);
              }
            }

            v172 = v160[3].i64[1];
            if (v172 && v160[4].i8[0] == 1)
            {
              sub_1AFDA72A0(v172);
            }

            v160[4].i8[0] = 1;
            v160[3].i64[1] = v163;
            v160[3].i32[0] = v162;
            v161 = v160[2].i32[3];
            v95 = v191;
            v82 = v192;
          }
        }

        v173 = sub_1AFD8CC40(v160[3].i64[1] + 48 * v161, &v230);
        *(v173 + 32) = v232;
        ++v160[2].i32[3];
        if (v231.i64[0] && v231.u8[8] == 1)
        {
          sub_1AFDA72A0(v231.i64[0]);
        }

        ++v156;
        v90 = v158;
      }

      while (v156 != v157);
      LODWORD(v81) = v200;
LABEL_285:
      if (!v90)
      {
        goto LABEL_287;
      }

      goto LABEL_286;
    }

    v92 = v214 + 48 * v89;
    v93.i64[0] = *(v92 + 32);
    v93.i64[1] = *(v92 + 40);
    v195 = 1;
    v94 = 1;
    v95 = v191;
    v82 = v192;
    v198 = v93;
    while (2)
    {
      v96 = *(v192 + 4 * v91);
      v97 = v214 + 48 * v96;
      v98.i64[0] = *(v97 + 32);
      v98.i64[1] = *(v97 + 40);
      v99 = vmulq_f32(v93, v98);
      if (vadd_f32(vpadd_f32(*v99.i8, *v99.i8), *&vextq_s8(v99, v99, 8uLL)).f32[0] > 0.999)
      {
        LODWORD(v100) = v195;
        if (v195 == v94)
        {
          if (v195)
          {
            v94 = 2 * v195;
          }

          else
          {
            v94 = 1;
          }

          LODWORD(v100) = v195;
          if (v195 >= v94)
          {
            v103 = v90;
            v94 = v195;
          }

          else
          {
            if (v94)
            {
              v101 = v90;
              v102 = sub_1AFDA7294(4 * v94, 16);
              LODWORD(v100) = v195;
              v90 = v101;
              v103 = v102;
            }

            else
            {
              v103 = 0;
            }

            if (v100 < 1)
            {
              v105 = v90;
              if (v90)
              {
                goto LABEL_161;
              }
            }

            else
            {
              v100 = v100;
              v104 = v103;
              v105 = v90;
              do
              {
                v106 = *v90++;
                *v104++ = v106;
                --v100;
              }

              while (v100);
LABEL_161:
              sub_1AFDA72A0(v105);
            }

            LODWORD(v100) = v195;
            v93 = v198;
          }
        }

        else
        {
          v103 = v90;
        }

        v103[v100] = v96;
        v195 = v100 + 1;
        if (v81 > 0)
        {
          v107 = 0;
          while (*(v192 + 4 * v107) != v96)
          {
            if (v81 == ++v107)
            {
              goto LABEL_170;
            }
          }

          if (v81 > v107)
          {
            v108 = *(v192 + 4 * v107);
            *(v192 + 4 * v107) = *(v189 + 4 * v81);
            *(v189 + 4 * v81) = v108;
            LODWORD(v81) = v81 - 1;
          }
        }

LABEL_170:
        v90 = v103;
      }

      v147 = v91-- <= 0;
      if (!v147)
      {
        continue;
      }

      break;
    }

    v109 = v195;
    if (v195 <= 1)
    {
LABEL_257:
      if (v109 < 1)
      {
        goto LABEL_285;
      }

      goto LABEL_258;
    }

    v110 = 0;
    v111 = 0;
    v211 = 1;
    v210 = 0;
    v208 = 0;
    v209 = 0;
    v206 = 0uLL;
    v193 = v214;
    v194 = v90;
    do
    {
      v112 = v193 + 48 * v90[v111];
      v113.i64[0] = *(v112 + 32);
      v113.i64[1] = *(v112 + 40);
      v206 = vaddq_f32(v206, v113);
      v114 = *(v112 + 4);
      if (v114 >= 1)
      {
        for (j = 0; j < v114; ++j)
        {
          v116 = *(*(v112 + 16) + 4 * j);
          v117 = *(v191[9][1].i64[1] + 16 * v116);
          if (v110 < 1)
          {
LABEL_181:
            if (v110 == v209)
            {
              v121 = v110 ? 2 * v110 : 1;
              if (v110 < v121)
              {
                v199 = *(v191[9][1].i64[1] + 16 * *(*(v112 + 16) + 4 * j));
                if (v121)
                {
                  v122 = sub_1AFDA7294(32 * v121, 16);
                  v117 = v199;
                  v123 = v122;
                  v110 = v208;
                }

                else
                {
                  v123 = 0;
                }

                if (v110 >= 1)
                {
                  v124 = 0;
                  v125 = 32 * v110;
                  do
                  {
                    v126 = v123 + v124;
                    v127 = v210 + v124;
                    *v126 = *(v210 + v124);
                    *(v126 + 16) = *(v127 + 16);
                    v124 += 32;
                  }

                  while (v125 != v124);
                }

                if (v210 && v211 == 1)
                {
                  sub_1AFDA72A0(v210);
                  v117 = v199;
                }

                v211 = 1;
                v210 = v123;
                v209 = v121;
                v110 = v208;
              }
            }

            v84 = v84 | (v116 << 32);
            v128 = v210 + 32 * v110;
            *v128 = v117;
            *(v128 + 16) = v84;
            v110 = ++v208;
            v114 = *(v112 + 4);
          }

          else
          {
            v118 = v110;
            v119 = (v210 + 20);
            while (1)
            {
              v120 = *v119;
              v119 += 8;
              if (v120 == v116)
              {
                break;
              }

              if (!--v118)
              {
                goto LABEL_181;
              }
            }
          }
        }
      }

      ++v111;
      v90 = v194;
    }

    while (v111 != v195);
    v231.i8[8] = 1;
    v231.i64[0] = 0;
    *(v230.i64 + 4) = 0;
    v129 = v193 + 48 * *v194;
    for (k = 8; k != 12; ++k)
    {
      v230.i32[k] = *(v129 + k * 4);
    }

    v205 = 1;
    v204 = 0;
    v202 = 0;
    v203 = 0;
    v131 = vmulq_f32(v206, v206);
    v206 = vmulq_n_f32(v206, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v131.i8, *v131.i8), *&vextq_s8(v131, v131, 8uLL)).f32[0]));
    sub_1AFD8BB9C(v207, v201, &v206);
    if (v202 > 0)
    {
      v132 = 0;
      v133 = v230.i32[1];
      while (2)
      {
        v134 = v204;
        if (v133 != v230.i32[2])
        {
          goto LABEL_219;
        }

        v135 = v133 ? 2 * v133 : 1;
        if (v133 >= v135)
        {
          goto LABEL_219;
        }

        if (v135)
        {
          v136 = sub_1AFDA7294(4 * v135, 16);
          v133 = v230.i32[1];
        }

        else
        {
          v136 = 0;
        }

        v137 = v231.i64[0];
        if (v133 >= 1)
        {
          v138 = v133;
          v139 = v136;
          v140 = v231.i64[0];
          do
          {
            v141 = *v140++;
            *v139++ = v141;
            --v138;
          }

          while (v138);
          goto LABEL_216;
        }

        if (v231.i64[0])
        {
LABEL_216:
          if (v231.u8[8] == 1)
          {
            sub_1AFDA72A0(v137);
          }
        }

        v231.i8[8] = 1;
        v231.i64[0] = v136;
        v230.i32[2] = v135;
        v133 = v230.i32[1];
LABEL_219:
        *(v231.i64[0] + 4 * v133) = *(v134 + 32 * v132 + 20);
        v133 = ++v230.i32[1];
        v142 = v208;
        if (v208 >= 1)
        {
          v143 = (v210 + 20);
          v144 = v208;
          while (*v143 != *(v204 + 32 * v132 + 20))
          {
            v143 += 8;
            if (!--v144)
            {
              goto LABEL_225;
            }
          }

          *v143 = -1;
        }

LABEL_225:
        if (++v132 >= v202)
        {
          goto LABEL_229;
        }

        continue;
      }
    }

    v142 = v208;
LABEL_229:
    if (v142 >= 1)
    {
      for (m = 0; m != v142; ++m)
      {
        v146 = *(v210 + 32 * m + 20);
        v147 = v146 == -1 || v213 < 1;
        if (!v147)
        {
          v148 = 0;
          while (2)
          {
            v149 = v194;
            v150 = v193 + 48 * v148;
            v151 = v195;
            while (1)
            {
              v152 = *v149++;
              if (v148 == v152)
              {
                break;
              }

              if (!--v151)
              {
                v153 = *(v150 + 4);
                if (v153 >= 1)
                {
                  v154 = *(v150 + 16);
                  while (1)
                  {
                    v155 = *v154++;
                    if (v155 == v146)
                    {
                      break;
                    }

                    if (!--v153)
                    {
                      goto LABEL_245;
                    }
                  }

                  if (v204 && v205 == 1)
                  {
                    sub_1AFDA72A0(v204);
                  }

                  if (v231.i64[0] && v231.u8[8] == 1)
                  {
                    sub_1AFDA72A0(v231.i64[0]);
                  }

                  if (v210 && v211 == 1)
                  {
                    sub_1AFDA72A0(v210);
                  }

                  v90 = v194;
                  v109 = v195;
                  goto LABEL_257;
                }

                break;
              }
            }

LABEL_245:
            if (++v148 != v213)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v174 = v191[9];
    v175 = v174[2].i32[3];
    if (v175 == v174[3].i32[0])
    {
      v176 = v175 ? 2 * v175 : 1;
      if (v175 < v176)
      {
        if (v176)
        {
          v177 = sub_1AFDA7294(48 * v176, 16);
          v175 = v174[2].i32[3];
        }

        else
        {
          v177 = 0;
        }

        if (v175 >= 1)
        {
          v178 = 0;
          v179 = 48 * v175;
          do
          {
            v180 = v174[3].i64[1] + v178;
            *(sub_1AFD8CC40(v177 + v178, v180) + 32) = *(v180 + 32);
            v178 += 48;
          }

          while (v179 != v178);
          v181 = v174[2].u32[3];
          v95 = v191;
          if (v181 >= 1)
          {
            v182 = 0;
            v183 = 48 * v181;
            do
            {
              v184 = v174[3].i64[1] + v182;
              v185 = *(v184 + 16);
              if (v185 && *(v184 + 24) == 1)
              {
                sub_1AFDA72A0(v185);
              }

              *(v184 + 24) = 1;
              *(v184 + 16) = 0;
              *(v184 + 4) = 0;
              *(v184 + 8) = 0;
              v182 += 48;
            }

            while (v183 != v182);
          }
        }

        v186 = v174[3].i64[1];
        if (v186 && v174[4].i8[0] == 1)
        {
          sub_1AFDA72A0(v186);
        }

        v174[4].i8[0] = 1;
        v174[3].i64[1] = v177;
        v174[3].i32[0] = v176;
        v175 = v174[2].i32[3];
        v82 = v192;
      }
    }

    v187 = sub_1AFD8CC40(v174[3].i64[1] + 48 * v175, &v230);
    *(v187 + 32) = v232;
    ++v174[2].i32[3];
    if (v204 && v205 == 1)
    {
      sub_1AFDA72A0(v204);
    }

    if (v231.i64[0] && v231.u8[8] == 1)
    {
      sub_1AFDA72A0(v231.i64[0]);
    }

    if (v210 && v211 == 1)
    {
      sub_1AFDA72A0(v210);
    }

    v90 = v194;
    if (v194)
    {
LABEL_286:
      sub_1AFDA72A0(v90);
    }

LABEL_287:
    if (v81)
    {
      continue;
    }

    break;
  }

  sub_1AFD876C0(v95[9]);
  v32 = v190;
  if (v82)
  {
    sub_1AFDA72A0(v82);
  }

LABEL_323:
  sub_1AFD88098(v212);
  if (v32)
  {
    sub_1AFDA72A0(v32);
  }

  if (v224 && v225 == 1)
  {
    sub_1AFDA72A0(v224);
  }

  v225 = 1;
  v224 = 0;
  v223 = 0;
  if (v221 && v222 == 1)
  {
    sub_1AFDA72A0(v221);
  }

  v222 = 1;
  v221 = 0;
  v220 = 0;
  if (v218 && v219 == 1)
  {
    sub_1AFDA72A0(v218);
  }

  if (v228 && v229 == 1)
  {
    sub_1AFDA72A0(v228);
  }

  return 1;
}

void sub_1AFD8BB9C(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  v6 = a3->f32[2];
  v7 = a3->f32[1];
  if (fabsf(v6) <= 0.70711)
  {
    v11 = 1.0 / sqrtf((v7 * v7) + (a3->f32[0] * a3->f32[0]));
    v10.i64[1] = 0;
    v10.f32[0] = -(v7 * v11);
    v10.f32[1] = a3->f32[0] * v11;
  }

  else
  {
    v8 = 1.0 / sqrtf((v6 * v6) + (v7 * v7));
    v9 = -(v6 * v8);
    v10.i32[0] = 0;
    v10.i32[3] = 0;
    v10.f32[1] = v9;
    v10.f32[2] = v7 * v8;
  }

  v12 = *(result + 4);
  if (v12 >= 2)
  {
    v24 = 0;
    for (i = 0; i < v12; ++i)
    {
      v26 = *(result + 16);
      v27 = v26[v24];
      v28 = vmulq_f32(v10, v27);
      v29 = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL));
      v30 = *v26;
      v31 = vmulq_f32(v10, *v26);
      if (vcgt_f32(vadd_f32(vpadd_f32(*v31.i8, *v31.i8), *&vextq_s8(v31, v31, 8uLL)), v29).u8[0])
      {
        v32 = v26[1].i64[0];
        *v26 = v27;
        v26[1].i64[0] = v26[v24 + 1].i64[0];
        v33 = (*(result + 16) + v24 * 16);
        *v33 = v30;
        v33[1].i64[0] = v32;
        v12 = *(result + 4);
      }

      v24 += 2;
    }

    v34 = *(result + 16);
    v34[1].i32[0] = -246811958;
    v35 = *v34;
    if (v12 >= 2)
    {
      v36 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
      f32 = v34[3].f32;
      v38 = v12 - 1;
      do
      {
        v39 = vsubq_f32(*(f32 - 4), v35);
        v39.i32[3] = 0;
        v40 = vsubq_f32(vmulq_f32(v10, vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL)), vmulq_f32(v36, v39));
        v41 = vextq_s8(vextq_s8(v40, v40, 0xCuLL), v40, 8uLL);
        v41.i32[3] = 0;
        v42 = vmulq_f32(*a3, v41);
        v43 = vmulq_f32(v39, v39);
        *f32 = vadd_f32(vpadd_f32(*v42.i8, *v42.i8), *&vextq_s8(v42, v42, 8uLL)).f32[0] / sqrtf(vadd_f32(vpadd_f32(*v43.i8, *v43.i8), *&vextq_s8(v43, v43, 8uLL)).f32[0]);
        f32 += 8;
        --v38;
      }

      while (v38);
    }

    v80 = v35;
    sub_1AFD8CA70(result, &v80, 1, v12 - 1);
    v44 = 0;
    v45 = *(a2 + 4);
    v46 = 1;
    do
    {
      v47 = v46;
      v48 = *(result + 16);
      if (v45 == *(a2 + 8))
      {
        v49 = v45 ? 2 * v45 : 1;
        if (v45 < v49)
        {
          if (v49)
          {
            v50 = sub_1AFDA7294(32 * v49, 16);
            v45 = *(a2 + 4);
          }

          else
          {
            v50 = 0;
          }

          if (v45 >= 1)
          {
            v51 = 0;
            v52 = 32 * v45;
            do
            {
              v53 = v50 + v51;
              v54 = *(a2 + 16) + v51;
              *v53 = *v54;
              *(v53 + 16) = *(v54 + 16);
              v51 += 32;
            }

            while (v52 != v51);
          }

          v55 = *(a2 + 16);
          if (v55 && *(a2 + 24) == 1)
          {
            sub_1AFDA72A0(v55);
          }

          *(a2 + 24) = 1;
          *(a2 + 16) = v50;
          *(a2 + 8) = v49;
          v45 = *(a2 + 4);
        }
      }

      v46 = 0;
      v56 = v48 + 32 * v44;
      v57 = *(a2 + 16) + 32 * v45;
      *v57 = *v56;
      *(v57 + 16) = *(v56 + 16);
      v45 = *(a2 + 4) + 1;
      *(a2 + 4) = v45;
      v44 = 1;
    }

    while ((v47 & 1) != 0);
    v58 = *(result + 4);
    if (v58 != 2)
    {
      for (j = 2; j != v58; ++j)
      {
        if (v45 >= 2)
        {
          v60 = *(a2 + 16);
          v61 = (*(result + 16) + 32 * j);
          v62 = 2 * v45;
          v63 = 32 * (v45 - 1);
          v64 = 32 * v45 - 64;
          while (1)
          {
            v65 = *(v60 + v64);
            v66 = vsubq_f32(v65, *(v60 + v63));
            v66.i32[3] = 0;
            v67 = *v61;
            v68 = vsubq_f32(v65, *v61);
            v68.i32[3] = 0;
            v69 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), v66), vmulq_f32(vextq_s8(vextq_s8(v66, v66, 0xCuLL), v66, 8uLL), v68));
            v70 = vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL);
            v70.i32[3] = 0;
            v71 = vmulq_f32(*a3, v70);
            if (vadd_f32(vpadd_f32(*v71.i8, *v71.i8), *&vextq_s8(v71, v71, 8uLL)).f32[0] > 0.0)
            {
              break;
            }

            *(a2 + 4) = --v45;
            v62 -= 2;
            v63 -= 32;
            v64 -= 32;
            if ((v45 + 1) < 3)
            {
              goto LABEL_65;
            }
          }

          if (*(a2 + 8) == v45 && v45 < v62)
          {
            v72 = sub_1AFDA7294(32 * v62, 16);
            v60 = v72;
            v73 = *(a2 + 4);
            if (v73 >= 1)
            {
              v74 = 0;
              v75 = 32 * v73;
              do
              {
                v76 = v72 + v74;
                v77 = *(a2 + 16) + v74;
                *v76 = *v77;
                *(v76 + 16) = *(v77 + 16);
                v74 += 32;
              }

              while (v75 != v74);
            }

            v78 = *(a2 + 16);
            if (v78 && *(a2 + 24) == 1)
            {
              sub_1AFDA72A0(v78);
            }

            *(a2 + 24) = 1;
            *(a2 + 16) = v60;
            *(a2 + 8) = v62;
            v45 = *(a2 + 4);
            v67 = *v61;
          }

          v79 = (v60 + 32 * v45);
          *v79 = v67;
          v79[1].i64[0] = v61[1].i64[0];
          v45 = *(a2 + 4) + 1;
          *(a2 + 4) = v45;
LABEL_65:
          v58 = *(result + 4);
        }
      }
    }
  }

  else if (v12 == 1)
  {
    v13 = 0;
    v14 = *(a2 + 4);
    do
    {
      v15 = *(result + 16);
      if (v14 == *(a2 + 8))
      {
        v16 = v14 ? 2 * v14 : 1;
        if (v14 < v16)
        {
          if (v16)
          {
            v17 = sub_1AFDA7294(32 * v16, 16);
            v14 = *(a2 + 4);
          }

          else
          {
            v17 = 0;
          }

          if (v14 >= 1)
          {
            v18 = 0;
            v19 = 32 * v14;
            do
            {
              v20 = v17 + v18;
              v21 = *(a2 + 16) + v18;
              *v20 = *v21;
              *(v20 + 16) = *(v21 + 16);
              v18 += 32;
            }

            while (v19 != v18);
          }

          v22 = *(a2 + 16);
          if (v22)
          {
            if (*(a2 + 24) == 1)
            {
              sub_1AFDA72A0(v22);
            }
          }

          *(a2 + 24) = 1;
          *(a2 + 16) = v17;
          *(a2 + 8) = v16;
          v14 = *(a2 + 4);
        }
      }

      v23 = *(a2 + 16) + 32 * v14;
      *v23 = *v15;
      *(v23 + 16) = *(v15 + 16);
      v14 = *(a2 + 4) + 1;
      *(a2 + 4) = v14;
      ++v13;
    }

    while (v13 < *(result + 4));
  }
}

uint64_t sub_1AFD8C0F4@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  *a3 = 0uLL;
  v5 = *a2;
  v6 = vmulq_f32(v5, v5);
  v7 = vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0];
  if (v7 >= 0.0001)
  {
    v8 = vmulq_n_f32(v5, 1.0 / sqrtf(v7));
  }

  else
  {
    v8 = xmmword_1AFE20150;
  }

  v23 = v8;
  v22 = 0.0;
  v21 = *a3;
  result = (*(*a1 + 192))(a1);
  if (result >= 1)
  {
    v10 = 0;
    v11 = -1.0e18;
    do
    {
      if (((*(*a1 + 192))(a1) - v10) > 127)
      {
        v12 = 128;
      }

      else
      {
        v12 = (*(*a1 + 192))(a1) - v10;
        if (v12 < 1)
        {
          v13 = -3.4028e38;
          v14 = -1;
          goto LABEL_17;
        }
      }

      v15 = 0;
      v16 = v12;
      v17 = v24;
      do
      {
        (*(*a1 + 216))(a1, v15++, v17++);
      }

      while (v16 != v15);
      if (v16 > 3)
      {
        v14 = off_1EE810978(v24, &v23, v16, &v22);
        v13 = v22;
        goto LABEL_19;
      }

      v18 = 0;
      v14 = -1;
      v13 = -3.4028e38;
      do
      {
        v19 = vmulq_f32(v24[v18], v23);
        v20 = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0];
        if (v20 > v13)
        {
          v13 = v20;
          v14 = v18;
        }

        ++v18;
      }

      while (v16 != v18);
LABEL_17:
      v22 = v13;
LABEL_19:
      if (v13 > v11)
      {
        v21 = v24[v14];
        v11 = v13;
      }

      v10 += 128;
      result = (*(*a1 + 192))(a1);
    }

    while (v10 < result);
  }

  *a3 = v21;
  return result;
}

uint64_t sub_1AFD8C394(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a4 >= 1)
  {
    v4 = result;
    v5 = (a4 + 3) & 0xFFFFFFFC;
    v27 = a4;
    v6 = vdupq_n_s64(a4 - 1);
    v7 = xmmword_1AFE21100;
    v8 = xmmword_1AFE21110;
    v9 = (a3 + 44);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 8) = -581039253;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 4) = -581039253;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = -581039253;
        v9[4] = -581039253;
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 16;
      v5 -= 4;
    }

    while (v5);
    v12 = 0;
    v28 = 0.0;
    while (1)
    {
      result = (*(*v4 + 192))(v4);
      if (result >= 1)
      {
        break;
      }

LABEL_29:
      if (++v12 == v27)
      {
        return result;
      }
    }

    v13 = 0;
    v14 = (a2 + 16 * v12);
    v15 = (a3 + 16 * v12);
    while (1)
    {
      if (((*(*v4 + 192))(v4) - v13) > 127)
      {
        v16 = 128;
      }

      else
      {
        v16 = (*(*v4 + 192))(v4) - v13;
        if (v16 < 1)
        {
          v17 = -3.4028e38;
          v18 = -1;
          goto LABEL_24;
        }
      }

      v19 = 0;
      v20 = v16;
      v21 = v29;
      do
      {
        (*(*v4 + 216))(v4, v19++, v21++);
      }

      while (v20 != v19);
      if (v20 > 3)
      {
        v18 = off_1EE810978(v29, v14, v20, &v28);
        v17 = v28;
        goto LABEL_26;
      }

      v22 = 0;
      v18 = -1;
      v17 = -3.4028e38;
      do
      {
        v23 = vmulq_f32(v29[v22], *v14);
        v24 = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).f32[0];
        if (v24 > v17)
        {
          v17 = v24;
          v18 = v22;
        }

        ++v22;
      }

      while (v20 != v22);
LABEL_24:
      v28 = v17;
LABEL_26:
      if (v17 > v15->f32[3])
      {
        *v15 = v29[v18];
        v15->f32[3] = v17;
      }

      v13 += 128;
      result = (*(*v4 + 192))(v4);
      if (v13 >= result)
      {
        goto LABEL_29;
      }
    }
  }

  return result;
}

__n128 sub_1AFD8C69C(uint64_t a1, __n128 *a2, float a3)
{
  v13 = COERCE_INT32X2_T((*(*a1 + 96))(a1));
  v16[0] = xmmword_1AFE20150;
  v16[1] = xmmword_1AFE20160;
  v16[2] = xmmword_1AFE20180;
  v17 = 0;
  v18 = 0;
  (*(*a1 + 16))(a1, v16, &v15, &v14);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v7 = vmulq_f32(vsubq_f32(v14, v15), v6);
  v8 = vextq_s8(v7, v7, 8uLL);
  v8.i32[1] = v7.i32[0];
  v9 = vadd_f32(vdup_lane_s32(v13, 0), *v8.f32);
  v10 = vadd_f32(v9, v9);
  v11 = vmul_f32(v10, v10);
  *v8.f32 = vdup_lane_s32(v11, 0);
  v8.f32[0] = ((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1])) * ((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1]));
  *v8.f32 = vadd_f32(v11, *v8.f32);
  v8.f32[2] = v11.f32[1] + (((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1])) * ((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1])));
  result = vmulq_n_f32(v8, a3 * 0.083333);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

uint64_t sub_1AFD8C7C0(float32x4_t *a1, float32x4_t *a2)
{
  sub_1AFD86EB0(a1, a2);

  return sub_1AFD8C7F8(a1);
}

uint64_t sub_1AFD8C7F8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 112) = 1;
  if ((atomic_load_explicit(qword_1EB6C1B50, memory_order_acquire) & 1) == 0)
  {
    sub_1AF0F9D7C();
  }

  memset(v7, 0, sizeof(v7));
  v2 = v7;
  result = (*(*a1 + 152))(a1, &dword_1EB6C1B60, v7, 6);
  v4 = *(a1 + 64);
  v5 = (a1 + 96);
  v6 = -48;
  do
  {
    *v5 = *v2 + v4;
    *(v5 - 4) = v2[12] - v4;
    ++v5;
    v2 += 5;
    v6 += 16;
  }

  while (v6);
  return result;
}

double sub_1AFD8C8EC(uint64_t a1)
{
  sub_1AFD86E64(a1);
  *(v1 + 72) = 0;
  *v1 = &unk_1F2572168;
  result = 0.00781250185;
  *(v1 + 80) = xmmword_1AFE208C0;
  *(v1 + 96) = xmmword_1AFE47D00;
  *(v1 + 112) = 0;
  return result;
}

float32x4_t sub_1AFD8C93C(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  *&v8 = (*(a1->i64[0] + 96))(a1);
  v10 = a1[5];
  v9 = a1[6];
  v11 = a2[1];
  v12 = a2[2];
  v13 = vandq_s8(v12, xmmword_1AFEABEA0);
  v14 = vaddq_f32(v9, v10);
  v15 = vsubq_f32(v9, v10);
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v16 = vmulq_f32(v14, v10);
  v17 = vmulq_f32(v12, v16);
  v16.i32[3] = 0;
  v18 = vmulq_f32(v15, v10);
  v18.i32[3] = 0;
  v19 = vdupq_lane_s32(v8, 0);
  v19.i32[3] = 0;
  v20 = vaddq_f32(v19, v18);
  v21 = vmulq_f32(*a2, v16);
  v22 = vmulq_f32(v11, v16);
  v17.i32[3] = 0;
  *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v23 = vaddq_f32(a2[3], v21);
  v24 = vmulq_f32(v20, vandq_s8(*a2, xmmword_1AFEABEA0));
  v25 = vmulq_f32(v20, vandq_s8(v11, xmmword_1AFEABEA0));
  v26 = vmulq_f32(v20, v13);
  v26.i32[3] = 0;
  *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
  v27 = vsubq_f32(v23, v24);
  v27.i32[3] = 0;
  *a3 = v27;
  result = vaddq_f32(v23, v24);
  *a4 = result;
  return result;
}

uint64_t sub_1AFD8CA70(uint64_t result, float32x4_t *a2, uint64_t a3, int a4)
{
  v7 = result;
  do
  {
    v8 = a3;
    v9 = *(v7 + 16) + 32 * ((a3 + a4 + ((a3 + a4) >> 31)) >> 1);
    v10 = *v9;
    v11 = *(v9 + 16);
    v12 = *(v9 + 20);
    LODWORD(v13) = a4;
    do
    {
      v14 = *(v7 + 16);
      v15 = *a2;
      v16 = vsubq_f32(v10, *a2);
      v16.i32[3] = 0;
      v17 = vmulq_f32(v16, v16);
      a3 = a3;
      v18 = v14 + 32 * a3 + 16;
      v19 = vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL));
      while (*v18 != v11)
      {
        if (*v18 >= v11)
        {
          goto LABEL_12;
        }

LABEL_11:
        ++a3;
        v18 += 32;
      }

      v20 = vsubq_f32(*(v18 - 16), v15);
      v20.i32[3] = 0;
      v21 = vmulq_f32(v20, v20);
      *v21.i8 = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL));
      v22 = vcgt_f32(v19, *v21.i8).u8[0];
      if (vmvn_s8(vceq_f32(*v21.i8, v19)).u8[0])
      {
        v23 = v22;
      }

      else
      {
        v23 = *(v18 + 4) < v12;
      }

      if (v23)
      {
        goto LABEL_11;
      }

LABEL_12:
      v13 = v13;
      for (i = (32 * v13) | 0x10; ; i -= 32)
      {
        v25 = v14 + i;
        v26 = *(v14 + i);
        if (v11 == v26)
        {
          break;
        }

        if (v11 >= v26)
        {
          goto LABEL_20;
        }

LABEL_19:
        --v13;
      }

      v27 = vsubq_f32(*(v25 - 16), v15);
      v27.i32[3] = 0;
      v28 = vmulq_f32(v27, v27);
      *v28.i8 = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL));
      v29 = vcgt_f32(*v28.i8, v19).u8[0];
      v30 = v12 < *(v25 + 4);
      if (vmvn_s8(vceq_f32(v19, *v28.i8)).u8[0])
      {
        v30 = v29;
      }

      if (v30)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (a3 <= v13)
      {
        v31 = *(v18 - 16);
        v32 = *v18;
        *(v18 - 16) = *(v14 + i - 16);
        *v18 = *(v14 + i);
        v33 = (*(v7 + 16) + i);
        *(v33 - 1) = v31;
        *v33 = v32;
        a3 = (a3 + 1);
        LODWORD(v13) = v13 - 1;
      }
    }

    while (a3 <= v13);
    if (v13 > v8)
    {
      result = sub_1AFD8CA70(v7, a2, v8, v13);
    }
  }

  while (a3 < a4);
  return result;
}

uint64_t sub_1AFD8CC40(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 4);
  if (v3 < 1)
  {
    *(a1 + 4) = v3;
    return a1;
  }

  v5 = sub_1AFDA7294(4 * v3, 16);
  v6 = *(a1 + 4);
  v7 = *(a1 + 16);
  if (v6 >= 1)
  {
    v8 = v5;
    v9 = *(a1 + 16);
    do
    {
      v10 = *v9++;
      *v8++ = v10;
      --v6;
    }

    while (v6);
LABEL_8:
    if (*(a1 + 24) == 1)
    {
      sub_1AFDA72A0(v7);
    }

    goto LABEL_10;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(a1 + 24) = 1;
  *(a1 + 16) = v5;
  *(a1 + 8) = v3;
  bzero(v5, 4 * v3);
  *(a1 + 4) = v3;
  v11 = *(a2 + 16);
  do
  {
    v12 = *v11++;
    *v5++ = v12;
    --v3;
  }

  while (v3);
  return a1;
}

double sub_1AFD8CD24(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = a2;
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 4) = 0;
  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1AFD8CD50(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 && *(a1 + 56) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  v3 = *(a1 + 16);
  if (!v3)
  {
    *(a1 + 24) = 1;
LABEL_13:
    *(a1 + 8) = 0;
LABEL_14:
    *(a1 + 56) = 1;
    *(a1 + 48) = 0;
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    goto LABEL_15;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    *(a1 + 24) = 1;
    *(a1 + 16) = 0;
    goto LABEL_13;
  }

  sub_1AFDA72A0(v3);
  v4 = *(a1 + 48);
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  if (!v4 || (*(a1 + 56) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1AFDA72A0(v4);
  v5 = *(a1 + 16);
  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  if (v5 && *(a1 + 24) == 1)
  {
    sub_1AFDA72A0(v5);
  }

LABEL_15:
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  return a1;
}

BOOL sub_1AFD8CE3C(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = (*(**(a1 + 72) + 168))(*(a1 + 72));
  if (v2 < 1)
  {
    v5 = 42;
  }

  else
  {
    v3 = 0;
    v4 = v2;
    do
    {
      (*(**(a1 + 72) + 176))(*(a1 + 72), v3, v49);
      sub_1AFD8D278();
      *&qword_1EB6C1BC0[2 * v3++ + 86] = v49[0];
    }

    while (v4 != v3);
    v5 = v3 + 42;
  }

  v6 = 0;
  v7 = &xmmword_1EB6C1BD0;
  do
  {
    v8 = *(a1 + 72);
    sub_1AFD8D278();
    (*(*v8 + 128))(v31, v8, v7);
    v49[v6++] = *v31;
    ++v7;
  }

  while (v5 != v6);
  v48 = 0x100000001000;
  v45[0] = 1;
  v45[1] = v5;
  v46 = v49;
  v47 = 0x3A83126F00000010;
  v41 = 1;
  v40 = 0;
  v39 = 0;
  v44 = 1;
  v43 = 0;
  v42 = 0;
  v33 = 1;
  v32 = 0;
  *&v31[12] = 0;
  v37 = 1;
  v36 = 0;
  v35 = 0;
  v31[0] = 1;
  *&v31[4] = 0;
  v34 = 0;
  v9 = sub_1AFDA89B8(v38, v45, v31);
  if (v9 == 1)
  {
    goto LABEL_44;
  }

  v10 = *&v31[4];
  v11 = *(a1 + 4);
  v12 = *&v31[4];
  if (v11 < *&v31[4])
  {
    v12 = *&v31[4];
    if (*(a1 + 8) < *&v31[4])
    {
      if (*&v31[4])
      {
        v13 = sub_1AFDA7294(16 * *&v31[4], 16);
        v11 = *(a1 + 4);
      }

      else
      {
        v13 = 0;
      }

      if (v11 >= 1)
      {
        v14 = 0;
        v15 = 16 * v11;
        do
        {
          *(v13 + v14) = *(*(a1 + 16) + v14);
          v14 += 16;
        }

        while (v15 != v14);
      }

      v16 = *(a1 + 16);
      if (v16 && *(a1 + 24) == 1)
      {
        sub_1AFDA72A0(v16);
      }

      *(a1 + 24) = 1;
      *(a1 + 16) = v13;
      *(a1 + 8) = v10;
      v12 = *&v31[4];
    }
  }

  *(a1 + 4) = v10;
  if (v12 >= 1)
  {
    v17 = 0;
    do
    {
      *(*(a1 + 16) + 16 * v17) = *(v32 + 16 * v17);
      ++v17;
    }

    while (v17 < *&v31[4]);
  }

  v18 = HIDWORD(v34);
  *(a1 + 64) = HIDWORD(v34);
  v19 = *(a1 + 36);
  v20 = v18;
  if (v19 <= v18)
  {
    if (v19 >= v18)
    {
LABEL_39:
      v20 = *(a1 + 64);
      goto LABEL_40;
    }

    if (*(a1 + 40) >= v18)
    {
LABEL_38:
      bzero((*(a1 + 48) + 4 * v19), 4 * (v18 + ~v19) + 4);
      goto LABEL_39;
    }

    if (v18)
    {
      v21 = sub_1AFDA7294(4 * v18, 16);
    }

    else
    {
      v21 = 0;
    }

    LODWORD(v22) = *(a1 + 36);
    v23 = *(a1 + 48);
    if (v22 < 1)
    {
      if (!v23)
      {
LABEL_37:
        *(a1 + 56) = 1;
        *(a1 + 48) = v21;
        *(a1 + 40) = v18;
        goto LABEL_38;
      }
    }

    else
    {
      v22 = v22;
      v24 = v21;
      v25 = *(a1 + 48);
      do
      {
        v26 = *v25++;
        *v24++ = v26;
        --v22;
      }

      while (v22);
    }

    if (*(a1 + 56) == 1)
    {
      sub_1AFDA72A0(v23);
    }

    goto LABEL_37;
  }

LABEL_40:
  *(a1 + 36) = v18;
  if (v20 >= 1)
  {
    v27 = 0;
    v28 = v36;
    v29 = *(a1 + 48);
    do
    {
      *(v29 + 4 * v27) = *(v28 + 4 * v27);
      ++v27;
    }

    while (v27 < *(a1 + 64));
  }

  sub_1AFDA97B0(v38, v31);
LABEL_44:
  if (v36 && v37 == 1)
  {
    sub_1AFDA72A0(v36);
  }

  v37 = 1;
  v36 = 0;
  v35 = 0;
  if (v32 && v33 == 1)
  {
    sub_1AFDA72A0(v32);
  }

  if (v43 && v44 == 1)
  {
    sub_1AFDA72A0(v43);
  }

  v44 = 1;
  v43 = 0;
  v42 = 0;
  if (v40 && v41 == 1)
  {
    sub_1AFDA72A0(v40);
  }

  return v9 != 1;
}

__int128 *sub_1AFD8D278()
{
  if ((atomic_load_explicit(qword_1EB6C1BC0, memory_order_acquire) & 1) == 0)
  {
    sub_1AF0F9E14();
  }

  return &xmmword_1EB6C1BD0;
}

void sub_1AFD8D2D8(int a1, int a2, void *a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    bzero(a3, 16 * a4);
  }
}

float32x4_t sub_1AFD8D2F0@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*a1 + 136))(&v14);
  v13 = v14;
  v6 = vmulq_f32(*a2, *a2);
  *v7.f32 = vpadd_f32(*v6.i8, *v6.i8);
  v8 = vextq_s8(v6, v6, 8uLL);
  *v8.f32 = vadd_f32(*v7.f32, *v8.f32);
  v7.i32[0] = 679477248;
  v9 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v8), 0), xmmword_1AFE47D00, *a2);
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_n_f32(vmulq_n_f32(v9, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0])), (*(*a1 + 96))(a1));
  v11.i32[3] = 0;
  result = vaddq_f32(v13, v11);
  *a3 = result;
  return result;
}

float32x4_t sub_1AFD8D3E8(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v8 = (*(*a1 + 96))(a1);
  v15 = LODWORD(v8);
  v9 = (*(*a1 + 96))(a1);
  v14 = LODWORD(v9);
  *&v10 = (*(*a1 + 96))(a1);
  v11.i64[0] = __PAIR64__(v14, v15);
  v11.i64[1] = v10;
  v12 = vsubq_f32(a2[3], v11);
  v12.i32[3] = 0;
  *a3 = v12;
  result = vaddq_f32(v11, a2[3]);
  *a4 = result;
  return result;
}

float sub_1AFD8D4D0(uint64_t a1, int32x4_t *a2, float a3)
{
  v5 = (a3 * 0.4) * (*(*a1 + 96))(a1);
  result = v5 * (*(*a1 + 96))(a1);
  v7 = vzip1q_s32(LODWORD(result), LODWORD(result));
  *&v7.i32[2] = result;
  *a2 = v7;
  return result;
}

void sub_1AFD8D574()
{
  nullsub_106();

  sub_1AFDA72A0(v0);
}

float32x4_t sub_1AFD8D5C0(uint64_t a1, float32x4_t *a2, float32_t a3)
{
  v5 = sub_1AFD85F6C(a1);
  v5->i64[0] = &unk_1F2572338;
  v6 = vmulq_f32(*a2, *a2);
  result = vmulq_n_f32(*a2, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0]));
  v5[4] = result;
  v5[5].f32[0] = a3;
  v5[6].i64[0] = 0;
  v5[6].i64[1] = 0;
  v5->i32[2] = 28;
  return result;
}

void sub_1AFD8D648()
{
  nullsub_106();

  sub_1AFDA72A0(v0);
}

double sub_1AFD8D670(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  *a3 = xmmword_1AFEABE70;
  result = 5.72459157e141;
  *a4 = xmmword_1AFEABE60;
  return result;
}

uint64_t sub_1AFD8D68C(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, float32x4_t a8, double a9, double a10, double a11, int32x4_t a12)
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v14 = *a3;
  v15 = a1[4].f32[2];
  if (fabsf(v15) <= 0.70711)
  {
    v22.i32[0] = a1[4].i32[0];
    v23 = a1[4].f32[1];
    v24 = (v23 * v23) + (v22.f32[0] * v22.f32[0]);
    v25 = 1.0 / sqrtf(v24);
    v22.f32[1] = -v23;
    v26.f32[0] = -v15;
    *a12.i8 = vmul_n_f32(v22, v25);
    v21 = vrev64q_s32(a12).u64[0];
    v26.i32[1] = a1[4].i32[2];
    *a8.f32 = vmul_f32(*a12.i8, v26);
    a8.f32[2] = v24 * v25;
  }

  else
  {
    v17 = a1[4].f32[0];
    v16 = a1[4].f32[1];
    v18 = (v15 * v15) + (v16 * v16);
    v19 = 1.0 / sqrtf(v18);
    v20 = -(v15 * v19);
    a8.f32[0] = v18 * v19;
    v21.i32[0] = 0;
    v21.i32[3] = 0;
    v21.f32[1] = v20;
    v21.f32[2] = v16 * v19;
    a8.f32[1] = -(v17 * (v16 * v19));
    a8.f32[2] = v17 * v20;
  }

  v27 = a1[4];
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v29 = vmulq_f32(vaddq_f32(v13, v14), v28);
  v30 = v29;
  v30.i32[3] = 0;
  v31 = vmulq_f32(v27, v30);
  v32 = vsubq_f32(v29, vmulq_n_f32(v27, vadd_f32(*&vextq_s8(v31, v31, 8uLL), vpadd_f32(*v31.i8, *v31.i8)).f32[0] - a1[5].f32[0]));
  v32.i32[3] = 0;
  v33 = vmulq_f32(vsubq_f32(v13, v14), v28);
  v33.i32[3] = 0;
  v34 = vmulq_f32(v33, v33);
  *v34.i32 = sqrtf(vadd_f32(*&vextq_s8(v34, v34, 8uLL), vpadd_f32(*v34.i8, *v34.i8)).f32[0]);
  v35 = vmulq_n_f32(v21, *v34.i32);
  v35.i32[3] = 0;
  v36 = vaddq_f32(v35, v32);
  v37 = vmulq_n_f32(a8, *v34.i32);
  v38 = vsubq_f32(v36, v37);
  v39 = vsubq_f32(v32, v35);
  v40 = vsubq_f32(v39, v37);
  v37.i32[3] = 0;
  v38.i32[3] = 0;
  v44 = vaddq_f32(v36, v37);
  v45 = v37;
  v39.i32[3] = 0;
  v40.i32[3] = 0;
  v42 = v40;
  v43 = v39;
  v46 = v44;
  v47 = v38;
  v48 = v40;
  (*(*a2 + 16))(a2, &v46, 0, 0);
  v46 = v42;
  v47 = vaddq_f32(v45, v43);
  v48 = v44;
  return (*(*a2 + 16))(a2, &v46, 0, 1);
}

__n128 sub_1AFD8D8AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[6] = *a2;
  return result;
}

const char *sub_1AFD8D8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFD84E6C(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 16 + i) = *(a1 + 96 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 32 + j) = *(a1 + 64 + j);
  }

  *(a2 + 48) = *(a1 + 80);
  return "btStaticPlaneShapeData";
}

uint64_t sub_1AFD8D94C(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 56))(a1);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = *(a1 + 16);
    LODWORD(v7) = *(a1 + 24);
    do
    {
      v63 = 0;
      v66 = 2;
      (*(*a1 + 32))(a1, &v69, &v64, &v67, &v65, &v68, &v67 + 4, &v63, &v66, v6);
      if (v67 == 1)
      {
        if (v66 == 2)
        {
          v53 = v62;
          if (v63 >= 1)
          {
            v54 = 0;
            do
            {
              v55 = (v68 + SHIDWORD(v67) * v54);
              v56 = (v69 + (v65 * *v55));
              v57 = v56[1].f64[0];
              v70 = vmul_f32(v53, vcvt_f32_f64(*v56));
              v71 = v7 * v57;
              v72 = 0;
              v58 = (v69 + (v55[1] * v65));
              v59 = v58[1].f64[0];
              v73 = vmul_f32(v53, vcvt_f32_f64(*v58));
              v74 = v7 * v59;
              v75 = 0;
              v60 = (v69 + (v55[2] * v65));
              v61 = v60[1].f64[0];
              v76 = vmul_f32(v53, vcvt_f32_f64(*v60));
              v77 = v7 * v61;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v54);
              v53 = v62;
              v54 = (v54 + 1);
            }

            while (v54 < v63);
          }
        }

        else if (v66 == 3)
        {
          v35 = v62;
          if (v63 >= 1)
          {
            v36 = 0;
            do
            {
              v37 = (v68 + SHIDWORD(v67) * v36);
              v38 = (v69 + v65 * *v37);
              v39 = v38[1].f64[0];
              v70 = vmul_f32(v35, vcvt_f32_f64(*v38));
              v71 = v7 * v39;
              v72 = 0;
              v40 = (v69 + v65 * v37[1]);
              v41 = v40[1].f64[0];
              v73 = vmul_f32(v35, vcvt_f32_f64(*v40));
              v74 = v7 * v41;
              v75 = 0;
              v42 = (v69 + v65 * v37[2]);
              v43 = v42[1].f64[0];
              v76 = vmul_f32(v35, vcvt_f32_f64(*v42));
              v77 = v7 * v43;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v36);
              v35 = v62;
              v36 = (v36 + 1);
            }

            while (v36 < v63);
          }
        }

        else
        {
          v17 = v62;
          if (v66 == 5 && v63 >= 1)
          {
            v18 = 0;
            do
            {
              v19 = (v68 + SHIDWORD(v67) * v18);
              v20 = (v69 + v65 * *v19);
              v21 = v20[1].f64[0];
              v70 = vmul_f32(v17, vcvt_f32_f64(*v20));
              v71 = v7 * v21;
              v72 = 0;
              v22 = (v69 + v65 * v19[1]);
              v23 = v22[1].f64[0];
              v73 = vmul_f32(v17, vcvt_f32_f64(*v22));
              v74 = v7 * v23;
              v75 = 0;
              v24 = (v69 + v65 * v19[2]);
              v25 = v24[1].f64[0];
              v76 = vmul_f32(v17, vcvt_f32_f64(*v24));
              v77 = v7 * v25;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v18);
              v17 = v62;
              v18 = (v18 + 1);
            }

            while (v18 < v63);
          }
        }
      }

      else if (!v67)
      {
        if (v66 == 2)
        {
          v44 = v62;
          if (v63 >= 1)
          {
            v45 = 0;
            do
            {
              v46 = (v68 + SHIDWORD(v67) * v45);
              v47 = (v69 + (v65 * *v46));
              v48 = v7 * v47[1].f32[0];
              v70 = vmul_f32(v44, *v47);
              v71 = v48;
              v72 = 0;
              v49 = (v69 + (v46[1] * v65));
              v50 = v7 * v49[1].f32[0];
              v73 = vmul_f32(v44, *v49);
              v74 = v50;
              v75 = 0;
              v51 = (v69 + (v46[2] * v65));
              v52 = v7 * v51[1].f32[0];
              v76 = vmul_f32(v44, *v51);
              v77 = v52;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v45);
              v44 = v62;
              v45 = (v45 + 1);
            }

            while (v45 < v63);
          }
        }

        else if (v66 == 3)
        {
          v26 = v62;
          if (v63 >= 1)
          {
            v27 = 0;
            do
            {
              v28 = (v68 + SHIDWORD(v67) * v27);
              v29 = (v69 + v65 * *v28);
              v30 = v7 * v29[1].f32[0];
              v70 = vmul_f32(v26, *v29);
              v71 = v30;
              v72 = 0;
              v31 = (v69 + v65 * v28[1]);
              v32 = v7 * v31[1].f32[0];
              v73 = vmul_f32(v26, *v31);
              v74 = v32;
              v75 = 0;
              v33 = (v69 + v65 * v28[2]);
              v34 = v7 * v33[1].f32[0];
              v76 = vmul_f32(v26, *v33);
              v77 = v34;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v27);
              v26 = v62;
              v27 = (v27 + 1);
            }

            while (v27 < v63);
          }
        }

        else
        {
          v8 = v62;
          if (v66 == 5 && v63 >= 1)
          {
            v9 = 0;
            do
            {
              v10 = (v68 + SHIDWORD(v67) * v9);
              v11 = (v69 + v65 * *v10);
              v12 = v7 * v11[1].f32[0];
              v70 = vmul_f32(v8, *v11);
              v71 = v12;
              v72 = 0;
              v13 = (v69 + v65 * v10[1]);
              v14 = v7 * v13[1].f32[0];
              v73 = vmul_f32(v8, *v13);
              v74 = v14;
              v75 = 0;
              v15 = (v69 + v65 * v10[2]);
              v16 = v7 * v15[1].f32[0];
              v76 = vmul_f32(v8, *v15);
              v77 = v16;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v9);
              v8 = v62;
              v9 = (v9 + 1);
            }

            while (v9 < v63);
          }
        }
      }

      result = (*(*a1 + 48))(a1, v6);
      v6 = (v6 + 1);
    }

    while (v6 != v5);
  }

  return result;
}

const char *sub_1AFD8E088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 56))(a1);
  *(a2 + 24) = v6;
  *a2 = 0;
  if (v6)
  {
    v7 = (*(*a3 + 32))(a3, 56, v6);
    v8 = *(v7 + 8);
    *a2 = (*(*a3 + 56))(a3, v8);
    v9 = (*(*a1 + 56))(a1);
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    if (v9 >= 1)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        (*(*a1 + 32))(a1, &v49, &v45 + 4, &v47, &v46, &v48, &v47 + 4, &v45, &v46 + 4, v11);
        v12 = v45;
        v13 = HIDWORD(v45);
        *(v8 + 48) = v45;
        *(v8 + 52) = v13;
        *v8 = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        if (HIDWORD(v46) == 5)
        {
          if (v12)
          {
            v26 = (*(*a3 + 32))(a3, 4);
            v27 = *(v26 + 8);
            *(v8 + 32) = (*(*a3 + 56))(a3, v27);
            if (v45 >= 1)
            {
              v28 = 0;
              v29 = (v27 + 2);
              do
              {
                v30 = (v48 + SHIDWORD(v47) * v28);
                *(v29 - 2) = *v30;
                *(v29 - 1) = v30[1];
                *v29 = v30[2];
                v29 += 4;
                ++v28;
              }

              while (v28 < v45);
            }

            (*(*a3 + 40))(a3, v26, "btCharIndexTripletData", 1497453121, *(v26 + 8));
          }
        }

        else if (HIDWORD(v46) == 3)
        {
          if (v12)
          {
            v20 = (*(*a3 + 32))(a3, 8);
            v21 = *(v20 + 8);
            *(v8 + 24) = (*(*a3 + 56))(a3, v21);
            v22 = v45;
            if (v45 >= 1)
            {
              v23 = SHIDWORD(v47);
              v24 = (v48 + 4);
              v25 = (v21 + 4);
              do
              {
                *(v25 - 2) = *(v24 - 2);
                *(v25 - 1) = *(v24 - 1);
                *v25 = *v24;
                v25 += 4;
                v24 = (v24 + v23);
                --v22;
              }

              while (v22);
            }

            (*(*a3 + 40))(a3, v20, "btShortIntIndexTripletData", 1497453121, *(v20 + 8));
          }
        }

        else if (HIDWORD(v46) == 2 && v12)
        {
          v14 = (*(*a3 + 32))(a3, 4, (3 * v12));
          v15 = *(v14 + 8);
          *(v8 + 16) = (*(*a3 + 56))(a3, v15);
          if (v45 >= 1)
          {
            v16 = 0;
            v17 = v48;
            v18 = (v15 + 8);
            do
            {
              v19 = (v17 + SHIDWORD(v47) * v16);
              *(v18 - 2) = *v19;
              *(v18 - 1) = v19[1];
              *v18 = v19[2];
              v18 += 3;
              ++v16;
            }

            while (v16 < v45);
          }

          (*(*a3 + 40))(a3, v14, "btIntIndexData", 1497453121, *(v14 + 8));
        }

        if (v47 == 1)
        {
          if (HIDWORD(v45))
          {
            v37 = (*(*a3 + 32))(a3, 32);
            v38 = *(v37 + 8);
            *(v8 + 8) = (*(*a3 + 56))(a3, v38);
            v39 = HIDWORD(v45);
            if (SHIDWORD(v45) >= 1)
            {
              v40 = v46;
              v41 = (v49 + 16);
              v42 = (v38 + 16);
              do
              {
                *(v42 - 2) = *(v41 - 2);
                *(v42 - 1) = *(v41 - 1);
                *v42 = *v41;
                v42 += 4;
                v41 = (v41 + v40);
                --v39;
              }

              while (v39);
            }

            (*(*a3 + 40))(a3, v37, "btVector3DoubleData", 1497453121, *(v37 + 8));
          }
        }

        else if (!v47 && HIDWORD(v45))
        {
          v31 = (*(*a3 + 32))(a3, 16);
          v32 = *(v31 + 8);
          *v8 = (*(*a3 + 56))(a3, v32);
          v33 = HIDWORD(v45);
          if (SHIDWORD(v45) >= 1)
          {
            v34 = v46;
            v35 = (v49 + 8);
            v36 = (v32 + 8);
            do
            {
              *(v36 - 2) = *(v35 - 2);
              *(v36 - 1) = *(v35 - 1);
              *v36 = *v35;
              v36 += 4;
              v35 = (v35 + v34);
              --v33;
            }

            while (v33);
          }

          (*(*a3 + 40))(a3, v31, "btVector3FloatData", 1497453121, *(v31 + 8));
        }

        (*(*a1 + 48))(a1, v11);
        v11 = (v11 + 1);
        v8 += 56;
      }

      while (v11 != v10);
    }

    (*(*a3 + 40))(a3, v7, "btMeshPartData", 1497453121, *(v7 + 8));
  }

  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 8 + i) = *(a1 + 16 + i);
  }

  return "btStridingMeshInterfaceData";
}

void sub_1AFD8E75C(uint64_t a1)
{
  *a1 = &unk_1F25723D0;
  v2 = *(a1 + 48);
  if (v2 && *(a1 + 56) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;

  nullsub_106();
}

void sub_1AFD8E7D8(uint64_t a1)
{
  sub_1AFD8E75C(a1);

  sub_1AFDA72A0(v1);
}

uint64_t sub_1AFD8E800(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, int a10)
{
  v10 = *(result + 48) + 48 * a10;
  *a3 = *(v10 + 20);
  *a2 = *(v10 + 24);
  *a4 = *(v10 + 40);
  v11 = *(v10 + 36);
  *a5 = *(v10 + 32);
  *a8 = *v10;
  *a6 = *(v10 + 8);
  *a7 = *(v10 + 16);
  *a9 = v11;
  return result;
}

uint64_t sub_1AFD8E854(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, int a10)
{
  v10 = *(result + 48) + 48 * a10;
  *a3 = *(v10 + 20);
  *a2 = *(v10 + 24);
  *a4 = *(v10 + 40);
  v11 = *(v10 + 36);
  *a5 = *(v10 + 32);
  *a8 = *v10;
  *a6 = *(v10 + 8);
  *a7 = *(v10 + 16);
  *a9 = v11;
  return result;
}

__n128 sub_1AFD8E8B8(uint64_t a1, _OWORD *a2, __n128 *a3)
{
  *(a1 + 80) = *a2;
  result = *a3;
  *(a1 + 96) = *a3;
  *(a1 + 72) = 1;
  return result;
}

__n128 sub_1AFD8E8D4(uint64_t a1, _OWORD *a2, __n128 *a3)
{
  *a2 = *(a1 + 80);
  result = *(a1 + 96);
  *a3 = result;
  return result;
}

float *sub_1AFD8E900(float *a1, uint64_t a2)
{
  v4 = sub_1AFD85F6C(a1);
  *v4 = &unk_1F2572458;
  *(v4 + 64) = a2;
  *(v4 + 8) = 21;
  if ((*(*a2 + 80))(a2))
  {
    (*(*a2 + 96))(a2, a1 + 8, a1 + 12);
  }

  else
  {
    sub_1AFD8E9BC(a1);
  }

  return a1;
}

float sub_1AFD8E9BC(float *a1)
{
  for (i = 0; i != 3; ++i)
  {
    v6[0] = 0;
    v6[1] = 0;
    *(v6 + i * 4) = 1065353216;
    (*(*a1 + 136))(&v5, a1, v6);
    a1[i + 12] = *(&v6[-2] + i * 4) + a1[6];
    *(v6 + i * 4) = -1082130432;
    (*(*a1 + 136))(&v4, a1, v6);
    v5 = v4;
    result = *(&v6[-2] + i * 4) - a1[6];
    a1[i + 8] = result;
  }

  return result;
}

void sub_1AFD8EAB8()
{
  nullsub_106();

  sub_1AFDA72A0(v0);
}

float32x4_t sub_1AFD8EAE0(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v31 = a1[2];
  v32 = a1[3];
  v8 = (*(a1->i64[0] + 96))(a1);
  v30 = LODWORD(v8);
  v9 = (*(a1->i64[0] + 96))(a1);
  v29 = LODWORD(v9);
  *&v10 = (*(a1->i64[0] + 96))(a1);
  v11 = a2[1];
  v12 = a2[2];
  v13 = vandq_s8(v12, xmmword_1AFEABEA0);
  v14 = vandq_s8(v11, xmmword_1AFEABEA0);
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v16 = vmulq_f32(vaddq_f32(a1[3], a1[2]), v15);
  v17 = vmulq_f32(v12, v16);
  v16.i32[3] = 0;
  v18 = vmulq_f32(vsubq_f32(v32, v31), v15);
  v18.i32[3] = 0;
  v19.i64[0] = __PAIR64__(v29, v30);
  v19.i64[1] = v10;
  v20 = vaddq_f32(v19, v18);
  v21 = vmulq_f32(*a2, v16);
  v22 = vmulq_f32(v11, v16);
  v17.i32[3] = 0;
  *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v23 = vaddq_f32(v21, a2[3]);
  v24 = vmulq_f32(v20, vandq_s8(*a2, xmmword_1AFEABEA0));
  v25 = vmulq_f32(v20, v14);
  v26 = vmulq_f32(v20, v13);
  v26.i32[3] = 0;
  *v24.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vpadd_f32(*v24.f32, *v25.i8));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
  v27 = vsubq_f32(v23, v24);
  v27.i32[3] = 0;
  *a3 = v27;
  result = vaddq_f32(v23, v24);
  *a4 = result;
  return result;
}

void sub_1AFD8EC98(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v5[0] = &unk_1F2572500;
  v5[1] = a2;
  v4 = *a4;
  v6 = *a3;
  v7 = v4;
  (*(**(a1 + 64) + 16))(*(a1 + 64), v5);
  nullsub_106();
}

void sub_1AFD8ED1C(uint64_t a1@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = 0uLL;
  v6 = &unk_1F2572528;
  v8 = xmmword_1AFE20150;
  v9 = xmmword_1AFE20160;
  v10 = xmmword_1AFE20180;
  v11 = 0;
  v12 = 0;
  v13 = -581039253;
  v14 = vaddq_f32(vmulq_laneq_f32(xmmword_1AFE20180, *a2, 2), vaddq_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*a2)), vmulq_lane_f32(xmmword_1AFE20160, *a2->f32, 1)));
  v4 = xmmword_1AFEAC070;
  v5 = xmmword_1AFEABE60;
  (*(*a1 + 128))(a1, &v6, &v4, &v5);
  *a3 = v7;
  nullsub_106();
}

void sub_1AFD8EE18()
{
  nullsub_106();

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AFD8EE50(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 112);
  v4 = *(result + 96);
  do
  {
    v5 = vmulq_f32(v3, *(a2 + v2));
    v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
    if (v6 > v4)
    {
      *(result + 96) = v6;
      *(result + 16) = *(a2 + v2);
      v4 = v6;
    }

    v2 += 16;
  }

  while (v2 != 48);
  return result;
}

void *sub_1AFD8EE98(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = &unk_1F2572550;
  result[1] = a4;
  result[2] = a5;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0;
  return result;
}

void *sub_1AFD8EEC0(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F2572550;
  result[1] = 0;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = a3;
  return result;
}

uint64_t sub_1AFD8EEE8(void *a1, float32x4_t *a2, int32x4_t *a3, uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v8 = sub_1AFD95BD0(a1[1]);
    v9 = a1[3];
    v10 = a1[4];
    v11 = v9[2];
    v12 = *(v10 + 8);
    v13 = (*(*v9 + 96))(v9, v8);
    v14 = (*(*a1[4] + 96))(a1[4]);
    sub_1AFD922B0(v77, v9, v10, v11, v12, a1[1], a1[2], v13, v14);
    v76 = 1566444395;
    v15 = a2[1];
    v75[0] = *a2;
    v75[1] = v15;
    v16 = a2[3];
    v75[2] = a2[2];
    v75[3] = v16;
    v17 = a3[1];
    v75[4] = *a3;
    v75[5] = v17;
    v18 = a3[3];
    v75[6] = a3[2];
    v75[7] = v18;
    return sub_1AFD92300(v19, v75, a4, 0, 0);
  }

  else
  {
    v21 = a1[3];
    v22 = a1[5];
    v23 = a2[1];
    v24 = a2[2];
    v25 = a2[3];
    v27 = *a3;
    v26 = a3[1];
    v28 = a3[2];
    v29 = vtrn1q_s32(*a3, v26);
    v30.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
    v31.i64[0] = v29.i64[0];
    v31.i64[1] = v28.u32[0];
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v32 = veorq_s8(a3[3], v29);
    v33 = vmulq_f32(v31, v32);
    *v34.f32 = vzip2_s32(*a3->i8, *v26.f32);
    *&v34.u32[2] = vzip2_s32(*v28.f32, 0);
    v35 = vmulq_f32(v34, v32);
    v30.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
    v36 = vmulq_f32(v30, v32);
    v36.i32[3] = 0;
    v73 = vadd_f32(vpadd_f32(*v33.i8, *v35.i8), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
    v37 = *a2;
    v37.i32[3] = 0;
    v38 = v23;
    v38.i32[3] = 0;
    v39 = v24;
    v39.i32[3] = 0;
    v71 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v37, *a3->i8, 1), v38, *v26.f32, 1), v39, *v28.f32, 1);
    v40 = vmulq_f32(v25, v31);
    v41 = vmulq_f32(v25, v34);
    v42 = vmulq_f32(v25, v30);
    v42.i32[3] = 0;
    v72 = vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)), vpadd_f32(*v40.i8, *v41.i8));
    v69 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v37, COERCE_FLOAT(*a3)), v38, v26.f32[0]), v39, v28.f32[0]);
    v70 = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
    v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v37, *a3, 2), v38, v26, 2), v39, v28, 2);
    v27.i32[3] = 0;
    v26.i32[3] = 0;
    v28.i32[3] = 0;
    v43 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v27, *a2->f32, 1), v26, *v23.f32, 1), v28, *v24.f32, 1);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27, COERCE_FLOAT(*a2)), v26, v23.f32[0]), v28, v24.f32[0]);
    v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, *a2, 2), v26, v23, 2), v28, v24, 2);
    v46 = veorq_s8(*(v22 + 64), v29);
    v47 = vmulq_f32(v44, v46);
    v48 = vmulq_f32(v43, v46);
    v49 = vmulq_f32(v45, v46);
    v49.i32[3] = 0;
    *v47.i8 = vadd_f32(vpadd_f32(*v47.i8, *v48.i8), vzip1_s32(*&vextq_s8(v47, v47, 8uLL), *&vextq_s8(v48, v48, 8uLL)));
    v47.u64[1] = vpadd_f32(vpadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)), 0);
    v67 = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
    v77[0] = v47;
    (*(*v21 + 128))(v75);
    v50 = vmulq_f32(v69, v75[0]);
    v51 = vmulq_f32(v71, v75[0]);
    v52 = vmulq_f32(v68, v75[0]);
    v52.i32[3] = 0;
    *v50.f32 = vadd_f32(vpadd_f32(*v50.f32, *v51.f32), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
    *v53.f32 = v72;
    *&v53.u32[2] = v70;
    *v51.f32 = v73;
    *&v51.u32[2] = v67;
    *&v50.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
    v54 = vaddq_f32(vaddq_f32(v51, v53), v50);
    v55 = *(v22 + 64);
    v56 = vmulq_f32(v55, v54);
    v57 = vmulq_n_f32(v55, vadd_f32(vpadd_f32(*v56.i8, *v56.i8), *&vextq_s8(v56, v56, 8uLL)).f32[0] - *(v22 + 80));
    v57.i32[3] = 0;
    v58 = vsubq_f32(v54, v57);
    v59 = a3[2];
    v60 = vmulq_f32(v59, v58);
    v58.i32[3] = 0;
    v61 = a3[1];
    v62 = vmulq_f32(*a3, v58);
    v63 = vmulq_f32(v61, v58);
    v60.i32[3] = 0;
    *v63.f32 = vadd_f32(vpadd_f32(*v62.i8, *v63.f32), vzip1_s32(*&vextq_s8(v62, v62, 8uLL), *&vextq_s8(v63, v63, 8uLL)));
    *&v63.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
    v64 = vmulq_f32(v55, *a3);
    v65 = vmulq_f32(v55, v61);
    v66 = vmulq_f32(v55, v59);
    v66.i32[3] = 0;
    *v59.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v64, v64, 8uLL), *&vextq_s8(v65, v65, 8uLL)), vpadd_f32(*v64.i8, *v65.i8));
    *&v59.u32[2] = vpadd_f32(vpadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL)), 0);
    v77[0] = vaddq_f32(a3[3], v63);
    v74 = v59;
    return (*(*a4 + 32))(a4, &v74, v77);
  }
}

uint64_t sub_1AFD8F324(uint64_t a1, int32x4_t *a2, uint64_t a3, int32x4_t *a4, uint64_t a5, uint64_t a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = vsubq_f32(*(a3 + 48), a2[3]);
  v11.i32[3] = 0;
  v42 = v11;
  v51 = v11;
  v45[0].i32[0] = 0;
  sub_1AFD77F40(a2, a3, &v55, v45[0].f32);
  v12 = vmulq_n_f32(v55, v45[0].f32[0]);
  v12.i32[3] = 0;
  v39 = v12;
  v50 = v12;
  v13 = vsubq_f32(*(a5 + 48), a4[3]);
  v13.i32[3] = 0;
  v40 = v13;
  v49 = v13;
  v45[0].i32[0] = 0;
  sub_1AFD77F40(a4, a5, &v55, v45[0].f32);
  v14 = vmulq_n_f32(v55, v45[0].f32[0]);
  v14.i32[3] = 0;
  v38 = v14;
  v48 = v14;
  v15 = (*(**(a1 + 24) + 32))(*(a1 + 24));
  v16 = *(a1 + 32);
  if (v16)
  {
    (*(*v16 + 32))(v16);
  }

  else
  {
    v17 = 0.0;
  }

  v18 = vmulq_f32(v39, v39);
  v19 = vmulq_f32(v38, v38);
  v20 = (v17 * sqrtf(vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0])) + (sqrtf(vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).f32[0]) * v15);
  v21 = vsubq_f32(v40, v42);
  v21.i32[3] = 0;
  v22 = vmulq_f32(v21, v21);
  if ((v20 + sqrtf(vadd_f32(vpadd_f32(*v22.i8, *v22.i8), *&vextq_s8(v22, v22, 8uLL)).f32[0])) != 0.0)
  {
    v43 = v21;
    v55.i64[0] = &unk_1F2572578;
    strcpy(v58, "k\v^]");
    sub_1AFD8EEE8(a1, a2, a4, &v55);
    v23 = v57;
    v47 = v57;
    if (LOBYTE(v58[1]) == 1)
    {
      v24 = v56;
      v25 = vmulq_f32(v56, v43);
      if ((v20 + vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0]) > 0.00000011921)
      {
        v26 = v58[0] + *(a6 + 192);
        v27 = 0.0;
        if (v26 <= 0.001)
        {
LABEL_23:
          *(a6 + 176) = v27;
          result = 1;
          *(a6 + 144) = v24;
          *(a6 + 160) = v23;
          return result;
        }

        v28 = 0;
        v29 = 0.0;
        while (1)
        {
          v30 = *(a6 + 184);
          if (v30)
          {
            v45[0] = xmmword_1AFE208C0;
            v41 = v24;
            (*(*v30 + 40))(v30, &v47, v45, 0.2);
            v24 = v41;
          }

          v31 = vmulq_f32(v24, v43);
          v32 = v20 + vadd_f32(*&vextq_s8(v31, v31, 8uLL), vpadd_f32(*v31.i8, *v31.i8)).f32[0];
          if (v32 <= 0.00000011921)
          {
            break;
          }

          result = 0;
          v34 = v26 / v32;
          v27 = v29 + v34;
          v35 = (v29 + v34) > v29 && v27 <= 1.0;
          if (!v35 || v27 < 0.0)
          {
            return result;
          }

          sub_1AFD8F808(a2, &v51, &v50, v45, v29 + v34);
          sub_1AFD8F808(a4, &v49, &v48, v44, v27);
          v36 = *(a6 + 184);
          if (v36)
          {
            v52[0] = xmmword_1AFE20150;
            (*(*v36 + 40))(v36, &v46, v52, 0.2);
          }

          (**a6)(a6, v27);
          *&v52[0] = &unk_1F2572578;
          strcpy(v54, "k\v^]");
          sub_1AFD8EEE8(a1, v45, v44, v52);
          if (LOBYTE(v54[1]) != 1)
          {
            (*(*a6 + 16))(a6, 0xFFFFFFFFLL, v28);
            return 0;
          }

          v37 = *(a6 + 192);
          v23 = v53;
          v47 = v53;
          if (v28 == 64)
          {
            (*(*a6 + 16))(a6, 4294967294, 65);
            return 0;
          }

          v28 = (v28 + 1);
          v24 = v52[1];
          v26 = v54[0] + v37;
          v29 = v27;
          if ((v54[0] + v37) <= 0.001)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  return 0;
}

void sub_1AFD8F808(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float a5)
{
  v6 = a5;
  v8 = vmulq_n_f32(*a2, a5);
  v8.i32[3] = 0;
  a4[3] = vaddq_f32(a1[3], v8);
  v9 = *a3;
  v10 = vmulq_f32(v9, v9);
  v11 = sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0]);
  if ((v11 * v6) <= 0.7854)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.7854 / v6;
  }

  if (v12 >= 0.001)
  {
    v29 = *a3;
    v31 = v6;
    v14 = sinf((v12 * 0.5) * v6);
    v9 = v29;
    v6 = v31;
    v13 = v14 / v12;
  }

  else
  {
    v13 = (v12 * ((((v6 * v6) * v6) * -0.020833) * v12)) + (v6 * 0.5);
  }

  v32 = vmulq_n_f32(v9, v13);
  v15 = cosf((v12 * v6) * 0.5);
  v16 = v32;
  v16.f32[3] = v15;
  v30 = v16;
  sub_1AFD78130(a1->f32, &v34);
  v17 = v34;
  v18 = vextq_s8(v30, v30, 8uLL).u64[0];
  v19 = vzip1_s32(v18, *v32.f32);
  v20 = vextq_s8(v17, v17, 8uLL).u64[0];
  *v21.f32 = vzip1_s32(v20, *v34.f32);
  v22 = vext_s8(v20, *v34.f32, 4uLL);
  *v23.f32 = vext_s8(*v32.f32, v18, 4uLL);
  *v24.f32 = vext_s8(*v34.f32, v20, 4uLL);
  *v25.f32 = v19;
  v25.i64[1] = v23.i64[0];
  *&v24.u32[2] = vrev64_s32(*v21.f32);
  v26 = vtrn2q_s32(v17, v17);
  *&v23.u32[2] = v19;
  *&v21.u32[2] = v22;
  v27 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v34, v30, 3), vmulq_f32(v25, v24)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(v32.i64[0], 0), vextq_s8(v26, v26, 8uLL)), vmulq_f32(v23, v21)), xmmword_1AFE47BE0));
  v28 = vmulq_f32(v27, v27);
  v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
  v33 = vmulq_n_f32(v27, 1.0 / sqrtf(vpadd_f32(*v28.f32, *v28.f32).f32[0]));
  sub_1AF35A1DC(a4, &v33);
}

void sub_1AFD8F9B4()
{
  nullsub_106();

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AFD8FA08(uint64_t result, _OWORD *a2, _OWORD *a3, float a4)
{
  if (*(result + 48) > a4)
  {
    *(result + 52) = 1;
    *(result + 16) = *a2;
    *(result + 32) = *a3;
    *(result + 48) = a4;
  }

  return result;
}

void *sub_1AFD8FA34(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_1F25725B0;
  result[1] = a4;
  result[2] = a2;
  result[3] = a3;
  return result;
}

uint64_t sub_1AFD8FA58(void *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  sub_1AFD95BD0(a1[1]);
  v32 = *(a2 + 48);
  v34 = a3[3];
  v30 = a4[3];
  v31 = a5[3];
  v44[0] = &unk_1F2572578;
  strcpy(v47, "k\v^]");
  sub_1AFD922AC(v43, a1[2], a1[3], a1[1], 0);
  v42 = 1566444395;
  v12 = *(a2 + 16);
  v36[0] = *a2;
  v36[1] = v12;
  v13 = *(a2 + 48);
  v36[2] = *(a2 + 32);
  v37 = v13;
  v14 = a4[1];
  v38 = *a4;
  v39 = v14;
  v15 = a4[3];
  v40 = a4[2];
  v41 = v15;
  sub_1AFD92300(v43, v36, v44, 0, 0);
  if (LOBYTE(v47[1]) == 1)
  {
    v16 = vsubq_f32(vsubq_f32(v34, v32), vsubq_f32(v31, v30));
    v16.i32[3] = 0;
    v33 = v16;
    v17 = v47[0];
    v18 = v45;
    if (v47[0] <= 0.001)
    {
      v27 = v46;
      v26 = 0.0;
LABEL_16:
      v28 = vmulq_f32(v18, v33);
      if (vadd_f32(*&vextq_s8(v28, v28, 8uLL), vpadd_f32(*v28.i8, *v28.i8)).f32[0] < -*(a6 + 192))
      {
        *(a6 + 176) = v26;
        result = 1;
        *(a6 + 144) = v18;
        *(a6 + 160) = v27;
        return result;
      }
    }

    else
    {
      v19 = 0.0;
      v20 = 33;
      while (--v20)
      {
        result = 0;
        v22 = vmulq_f32(v18, v33);
        v23 = v19 - (v17 / vadd_f32(*&vextq_s8(v22, v22, 8uLL), vpadd_f32(*v22.i8, *v22.i8)).f32[0]);
        v24 = v23 > v19 && v23 <= 1.0;
        if (!v24 || v23 < 0.0)
        {
          return result;
        }

        v35 = v23;
        (**a6)(a6);
        v25 = vaddq_f32(a4[3], vmulq_n_f32(vsubq_f32(a5[3], a4[3]), v35));
        v37 = vaddq_f32(*(a2 + 48), vmulq_n_f32(vsubq_f32(a3[3], *(a2 + 48)), v35));
        v41 = v25;
        sub_1AFD92300(v43, v36, v44, 0, 0);
        if (LOBYTE(v47[1]) != 1)
        {
          return 0;
        }

        v17 = v47[0];
        if (v47[0] < 0.0)
        {
          *(a6 + 176) = v35;
          v29 = v46;
          *(a6 + 144) = v45;
          *(a6 + 160) = v29;
          return 1;
        }

        v18 = v45;
        v26 = v35;
        v19 = v35;
        if (v47[0] <= 0.001)
        {
          v27 = v46;
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

void sub_1AFD8FD10()
{
  nullsub_106();

  JUMPOUT(0x1B271C6B0);
}

BOOL sub_1AFD8FD48(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  sub_1AF0FA174(a1, a2, a3, a4, a6, v41, 0);
  v45 = 0;
  v46 = 0;
  v50 = 2;
  v48 = 0;
  v47 = 0;
  v13 = sub_1AFD8FFD4(v44, v41, a5, v9, v10, v11, v12);
  v14 = v13;
  if (v13)
  {
    if (v13 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    a6->i32[0] = v15;
  }

  else
  {
    v16 = v49;
    if (*(v49 + 48))
    {
      v17 = 0;
      v37 = 0u;
      v18 = 0uLL;
      do
      {
        v38 = *(v16 + 4 * v17 + 32);
        v19 = v42;
        v20 = (v41[0].i64[0] + (v43 >> 1));
        v36 = v18;
        if (v43)
        {
          v19 = *(*v20 + v42);
        }

        v19(&v40, v20, *(v16 + 8 * v17));
        v21 = vmulq_n_f32(v40, v38);
        v21.i32[3] = 0;
        v37 = vaddq_f32(v37, v21);
        v22.i64[0] = 0x8000000080000000;
        v22.i64[1] = 0x8000000080000000;
        v39 = veorq_s8(**(v49 + 8 * v17), v22);
        sub_1AFD904EC(v41, &v39, 1, &v40);
        v23 = vmulq_n_f32(v40, v38);
        v23.i32[3] = 0;
        v18 = vaddq_f32(v36, v23);
        ++v17;
        v16 = v49;
      }

      while (v17 < *(v49 + 48));
    }

    else
    {
      v18 = 0uLL;
      v37 = 0u;
    }

    v24 = vmulq_f32(v37, *a2);
    v25 = vmulq_f32(v37, a2[1]);
    v26 = vmulq_f32(v37, a2[2]);
    v26.i32[3] = 0;
    *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
    *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
    a6[1] = vaddq_f32(v24, a2[3]);
    v27 = vmulq_f32(v18, *a2);
    v28 = vmulq_f32(v18, a2[1]);
    v29 = vmulq_f32(v18, a2[2]);
    v29.i32[3] = 0;
    *v27.f32 = vadd_f32(vpadd_f32(*v27.f32, *v28.i8), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
    *&v27.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
    v30 = vaddq_f32(v27, a2[3]);
    v31 = vsubq_f32(v37, v18);
    v31.i32[3] = 0;
    v32 = vmulq_f32(v31, v31);
    v33 = sqrtf(vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0]);
    a6[4].f32[0] = v33;
    if (v33 <= 0.0001)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 1.0 / v33;
    }

    a6[2] = v30;
    a6[3] = vmulq_n_f32(v31, v34);
  }

  return v14 == 0;
}

uint64_t sub_1AFD8FFD4(uint64_t a1, _OWORD *a2, float32x4_t *a3, double a4, double a5, float32x4_t a6, float32x4_t a7)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a1 + 416;
  *(a1 + 416) = a1 + 288;
  *(a1 + 424) = a1 + 320;
  *(a1 + 432) = a1 + 352;
  *(a1 + 440) = a1 + 384;
  *(a1 + 448) = 4;
  *(a1 + 464) = 0;
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = a2[7];
  *(a1 + 128) = a2[8];
  *(a1 + 160) = 0;
  *(a1 + 216) = 0;
  v9 = *a3;
  *(a1 + 144) = *a3;
  *(a1 + 168) = a1 + 384;
  v10 = (a1 + 168);
  v11 = vmulq_f32(v9, v9);
  *a6.f32 = vpadd_f32(*v11.i8, *v11.i8);
  v12 = vextq_s8(v11, v11, 8uLL);
  *a7.f32 = vadd_f32(*a6.f32, *v12.i8);
  a6.i64[0] = 0;
  v12.i64[0] = 0;
  v60 = a7;
  v61 = v12;
  v64[0] = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a7, a6), 0), vnegq_f32(v9), xmmword_1AFE20150);
  *(a1 + 200) = 0;
  *(a1 + 448) = 3;
  *(a1 + 216) = 1;
  sub_1AFD914E0(a1, v64, a1 + 384);
  v13 = 0;
  v14 = 0;
  *(a1 + 200) = 1065353216;
  v15 = (*v10)[1];
  *(a1 + 144) = v15;
  v64[2] = v15;
  v64[3] = v15;
  v64[0] = v15;
  v64[1] = v15;
  v16 = *(a1 + 452);
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = v15;
  while (2)
  {
    v19 = vmulq_f32(v18, v18);
    v20 = sqrtf(vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0]);
    if (v20 < 0.0001)
    {
      v21 = v16;
      *(a1 + 464) = 1;
LABEL_35:
      result = *(a1 + 464);
      break;
    }

    v21 = 1 - v16;
    v22 = &v10[7 * v16];
    v23 = &v10[7 * (1 - v16)];
    v63 = veorq_s8(v15, v17);
    v24 = *(v22 + 12);
    *(v22 + v24 + 8) = 0;
    v25 = *(a1 + 448) - 1;
    *(a1 + 448) = v25;
    v26 = *(v8 + 8 * v25);
    v22[v24] = v26;
    *(v22 + 12) = v24 + 1;
    sub_1AFD914E0(a1, &v63, v26);
    v27 = 0;
    v28 = *(v22 + 12);
    v29 = v22[v28 - 1][1];
    do
    {
      v30 = vsubq_f32(v29, v64[v27]);
      v30.i32[3] = 0;
      v31 = vmulq_f32(v30, v30);
      if (vadd_f32(vpadd_f32(*v31.i8, *v31.i8), *&vextq_s8(v31, v31, 8uLL)).f32[0] < 0.0001)
      {
        goto LABEL_34;
      }

      ++v27;
    }

    while (v27 != 4);
    v13 = (v13 + 1) & 3;
    v64[v13] = v29;
    v32 = vmulq_f32(v29, *(a1 + 144));
    v33 = vadd_f32(vpadd_f32(*v32.i8, *v32.i8), *&vextq_s8(v32, v32, 8uLL)).f32[0] / v20;
    v34 = v61;
    if (v33 > *v61.i32)
    {
      *v34.i32 = v33;
    }

    if (((v20 - *v34.i32) + (v20 * -0.0001)) <= 0.0)
    {
      goto LABEL_34;
    }

    v62 = 0;
    v61 = v34;
    if (v28 == 4)
    {
      *v35.i32 = sub_1AFD911FC(*v22 + 1, v22[1] + 1, v22[2] + 1, v22[3] + 1, &v63, &v62);
      goto LABEL_22;
    }

    if (v28 == 3)
    {
      *v35.i64 = sub_1AFD90EE8(*v22 + 1, v22[1] + 1, v22[2] + 1, &v63, &v62);
      goto LABEL_22;
    }

    v35 = v60;
    if (v28 != 2)
    {
      goto LABEL_22;
    }

    v36 = v22[1][1];
    v37 = (*v22)[1];
    v38 = vsubq_f32(v36, v37);
    v38.i32[3] = 0;
    v39 = vmulq_f32(v38, v38);
    v40 = vadd_f32(vpadd_f32(*v39.i8, *v39.i8), *&vextq_s8(v39, v39, 8uLL)).f32[0];
    if (v40 <= 0.0)
    {
LABEL_34:
      v21 = *(a1 + 452);
      v55 = &v10[7 * v21];
      v56 = *(v55 + 12) - 1;
      *(v55 + 12) = v56;
      i64 = v55[v56]->i64;
      v58 = *(a1 + 448);
      *(a1 + 448) = v58 + 1;
      *(v8 + 8 * v58) = i64;
      goto LABEL_35;
    }

    v41 = vmulq_f32(v37, v38);
    v42 = -vadd_f32(*&vextq_s8(v41, v41, 8uLL), vpadd_f32(*v41.i8, *v41.i8)).f32[0] / v40;
    if (v42 >= 1.0)
    {
      v63.i64[0] = 0x3F80000000000000;
      v62 = 2;
      v44 = vmulq_f32(v36, v36);
    }

    else
    {
      if (v42 <= 0.0)
      {
        v63.i64[0] = 1065353216;
        v62 = 1;
      }

      else
      {
        *v63.i32 = 1.0 - v42;
        *&v63.i32[1] = v42;
        v62 = 3;
        v43 = vmulq_n_f32(v38, v42);
        v43.i32[3] = 0;
        v37 = vaddq_f32(v37, v43);
      }

      v44 = vmulq_f32(v37, v37);
    }

    v45 = vpadd_f32(*v44.i8, *v44.i8);
    v35 = vextq_s8(v44, v44, 8uLL);
    *v35.i8 = vadd_f32(v45, *v35.i8);
LABEL_22:
    if (*v35.i32 < 0.0)
    {
      goto LABEL_34;
    }

    *(v23 + 12) = 0;
    v15 = 0uLL;
    *(a1 + 144) = 0u;
    *(a1 + 452) = v21;
    v46 = *(v22 + 12);
    v47 = v62;
    v18 = 0uLL;
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    if (v46)
    {
      v48 = 0;
      for (i = 0; i != v46; ++i)
      {
        v50 = v22[i];
        if ((v47 >> i))
        {
          v23[v48] = v50;
          v51 = *&v63.i32[i];
          *(v23 + 12) = v48 + 1;
          *(v23 + v48 + 8) = v51;
          v52 = vmulq_n_f32(v50[1], v51);
          v52.i32[3] = 0;
          v15 = vaddq_f32(v18, v52);
          *(a1 + 144) = v15;
          ++v48;
          v18 = v15;
        }

        else
        {
          v53 = *(a1 + 448);
          *(a1 + 448) = v53 + 1;
          *(v8 + 8 * v53) = v50;
        }
      }
    }

    if (v47 == 15)
    {
      *(a1 + 464) = 1;
    }

    if (v14 == 127)
    {
      result = 2;
      *(a1 + 464) = 2;
      *(a1 + 456) = v23;
      return result;
    }

    v60 = v35;
    ++v14;
    result = *(a1 + 464);
    v16 = v21;
    if (!result)
    {
      continue;
    }

    break;
  }

  *(a1 + 456) = &v10[7 * v21];
  if (result == 1)
  {
    *(a1 + 160) = 0;
  }

  else if (!result)
  {
    v59 = vmulq_f32(*(a1 + 144), *(a1 + 144));
    *(a1 + 160) = sqrtf(vadd_f32(vpadd_f32(*v59.i8, *v59.i8), *&vextq_s8(v59, v59, 8uLL)).f32[0]);
  }

  return result;
}

void *sub_1AFD904EC@<X0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  if (a3)
  {
    v6 = a1[8].i64[0];
    v7 = a1[8].i64[1];
    v8 = (a1->i64[1] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v12 = vmulq_f32(a1[1], *a2);
    v13 = vmulq_f32(*a2, a1[2]);
    v14 = vmulq_f32(*a2, a1[3]);
    v14.i32[3] = 0;
    *v12.i8 = vadd_f32(vpadd_f32(*v12.i8, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
    v12.u64[1] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
    v19 = v12;
    result = v6(&v20, v8, &v19);
    v16 = vmulq_f32(a1[4], v20);
    v17 = vmulq_f32(v20, a1[5]);
    v18 = vmulq_f32(v20, a1[6]);
    v18.i32[3] = 0;
    *v16.f32 = vadd_f32(vpadd_f32(*v16.f32, *v17.i8), vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)));
    *&v16.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
    *a4 = vaddq_f32(v16, a1[7]);
  }

  else
  {
    v9 = a1[8].i64[0];
    v10 = a1[8].i64[1];
    v11 = (a1->i64[0] + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    return v9(v11, a2);
  }

  return result;
}

float sub_1AFD90670(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v51 = *MEMORY[0x1E69E9840];
  sub_1AF0FA174(v7, v5, v8, v9, v1, v34, v10);
  v47 = 0;
  v46 = 0;
  v50 = 2;
  v49 = 0;
  v48 = 0;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v37[0] = veorq_s8(*v4, v11);
  v14 = sub_1AFD8FFD4(v45, v34, v37, *v37[0].i64, COERCE_DOUBLE(0x8000000080000000), v12, v13);
  if (v14 == 2)
  {
    v2->i32[0] = 2;
  }

  else if (v14 == 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    sub_1AFD916D0(v37);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v33 = veorq_s8(*v4, v16);
    if (sub_1AFD9090C(v37, v45, &v33) == 9)
    {
      v2->i32[0] = 3;
    }

    else
    {
      if (v38)
      {
        v17 = 0;
        v18 = 0uLL;
        do
        {
          v19 = v35;
          v20 = (v34[0].i64[0] + (v36 >> 1));
          v32 = v18;
          if (v36)
          {
            v19 = *(*v20 + v35);
          }

          v19(&v33, v20, v37[0].i64[v17 + 1]);
          v21 = vmulq_n_f32(v33, v37[2].f32[v17 + 2]);
          v21.i32[3] = 0;
          v18 = vaddq_f32(v32, v21);
          ++v17;
        }

        while (v17 < v38);
      }

      else
      {
        v18 = 0uLL;
      }

      v2->i32[0] = 1;
      v22 = vmulq_f32(v18, *v6);
      v23 = vmulq_f32(v18, v6[1]);
      v24 = vmulq_f32(v18, v6[2]);
      v24.i32[3] = 0;
      *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
      *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
      v25 = v39;
      v26 = v40;
      v27 = vmulq_n_f32(v39, v40);
      v27.i32[3] = 0;
      v2[1] = vaddq_f32(v22, v6[3]);
      v28 = vsubq_f32(v18, v27);
      v29 = vmulq_f32(v6[2], v28);
      v28.i32[3] = 0;
      v30 = vmulq_f32(*v6, v28);
      v31 = vmulq_f32(v6[1], v28);
      v29.i32[3] = 0;
      *v31.f32 = vadd_f32(vpadd_f32(*v30.i8, *v31.f32), vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)));
      *&v31.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
      v2[2] = vaddq_f32(v6[3], v31);
      v2[3] = vnegq_f32(v25);
      result = -v26;
      v2[4].f32[0] = -v26;
    }
  }

  return result;
}

uint64_t sub_1AFD9090C(int *a1, float32x4_t *a2, int8x16_t *a3)
{
  v5 = a2[28].i64[1];
  if (*(v5 + 12) < 2u || !sub_1AFD9173C(a2))
  {
    goto LABEL_49;
  }

  v7 = *(a1 + 1805);
  if (v7)
  {
    v8 = a1[3612];
    v9 = a1[3616];
    do
    {
      v10 = *(v7 + 72);
      v11 = *(v7 + 80);
      if (v11)
      {
        *(v11 + 72) = v10;
      }

      if (v10)
      {
        *(v10 + 80) = *(v7 + 80);
      }

      if (*(a1 + 1805) == v7)
      {
        *(a1 + 1805) = *(v7 + 80);
      }

      *(v7 + 72) = 0;
      v12 = *(a1 + 1807);
      *(v7 + 80) = v12;
      if (v12)
      {
        *(v12 + 72) = v7;
      }

      *(a1 + 1807) = v7;
      ++v9;
      v7 = *(a1 + 1805);
      --v8;
    }

    while (v7);
    a1[3612] = v8;
    a1[3616] = v9;
  }

  *a1 = 0;
  a1[3608] = 0;
  v13 = v5[2];
  v14 = v5[3][1];
  v16 = *v5;
  v15 = v5[1];
  _Q1 = vsubq_f32((*v5)[1], v14);
  v18 = vsubq_f32(v15[1], v14);
  _Q0 = vsubq_f32(v13[1], v14);
  _S6 = vmuls_lane_f32(-_Q1.f32[0], v18, 2);
  __asm { FMLA            S4, S6, V0.S[1] }

  _S3 = -_Q1.f32[1] * v18.f32[0];
  __asm { FMLA            S4, S3, V0.S[2] }

  _Q1.f32[0] = vmuls_lane_f32(_Q1.f32[0], *v18.f32, 1);
  __asm { FMLA            S4, S1, V0.S[2] }

  if ((_S4 + (vmuls_lane_f32(-_Q1.f32[2], *v18.f32, 1) * _Q0.f32[0])) >= 0.0)
  {
    v29 = v5[1];
    v15 = *v5;
  }

  else
  {
    *v5 = v15;
    v5[1] = v16;
    v5[4] = vrev64_s32(v5[4]);
    v29 = v16;
  }

  v30 = sub_1AFD91BA0(a1, v15, v29, v13, 1);
  v31 = sub_1AFD91BA0(a1, v5[1], *v5, v5[3], 1);
  v32 = sub_1AFD91BA0(a1, v5[2], v5[1], v5[3], 1);
  v33 = sub_1AFD91BA0(a1, *v5, v5[2], v5[3], 1);
  if (a1[3612] == 4)
  {
    v34 = *(a1 + 1805);
    v35 = *(v34 + 80);
    if (v35)
    {
      v36 = *(v34 + 16) * *(v34 + 16);
      do
      {
        if ((*(v35 + 16) * *(v35 + 16)) < v36)
        {
          v36 = *(v35 + 16) * *(v35 + 16);
          v34 = v35;
        }

        v35 = *(v35 + 80);
      }

      while (v35);
    }

    LODWORD(v37) = 0;
    v38 = *v34;
    v39 = *(v34 + 16);
    v40 = *(v34 + 24);
    v41 = *(v34 + 40);
    v30[5].i8[8] = 0;
    v30[3].i64[0] = v31;
    v31[5].i8[8] = 0;
    v31[3].i64[0] = v30;
    v30[5].i8[9] = 0;
    v30[3].i64[1] = v32;
    v32[5].i8[8] = 1;
    v32[3].i64[0] = v30;
    v30[5].i8[10] = 0;
    v30[4].i64[0] = v33;
    v33[5].i8[8] = 2;
    v33[3].i64[0] = v30;
    v31[5].i8[9] = 2;
    v31[3].i64[1] = v33;
    v33[5].i8[10] = 1;
    v33[4].i64[0] = v31;
    v31[5].i8[10] = 1;
    v31[4].i64[0] = v32;
    *(&v32[5].i16[4] + 1) = 258;
    v32[3].i64[1] = v31;
    v32[4].i64[0] = v33;
    v33[5].i8[9] = 2;
    v33[3].i64[1] = v32;
    *a1 = 0;
    while (1)
    {
      v42 = a1[3608];
      if (v42 > 0x3F)
      {
        *a1 = 6;
        goto LABEL_57;
      }

      v78 = v39;
      v79 = v38;
      v80 = v40;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      a1[3608] = v42 + 1;
      v43 = &a1[8 * v42 + 24];
      v37 = (v37 + 1);
      *(v34 + 91) = v37;
      sub_1AFD914E0(a2, v34, v43);
      v44 = vmulq_f32(*v34, v43[1]);
      if ((vadd_f32(vpadd_f32(*v44.i8, *v44.i8), *&vextq_s8(v44, v44, 8uLL)).f32[0] - *(v34 + 16)) <= 0.0001)
      {
        v61 = 7;
        goto LABEL_56;
      }

      v45 = 0;
      do
      {
        v46 = sub_1AFD91DF8(a1, v37, v43, *(v34 + 8 * v45 + 48), *(v34 + v45 + 88), &v81);
        if (v45 > 1)
        {
          break;
        }

        ++v45;
      }

      while ((v46 & 1) != 0);
      v47 = v83 > 2 ? v46 : 0;
      if ((v47 & 1) == 0)
      {
        break;
      }

      v48 = v81;
      v49 = v82;
      *(v81 + 89) = 2;
      *(v48 + 56) = v49;
      *(v49 + 90) = 1;
      *(v49 + 64) = v48;
      v50 = *(v34 + 72);
      v51 = *(v34 + 80);
      if (v51)
      {
        *(v51 + 72) = v50;
      }

      if (v50)
      {
        *(v50 + 80) = *(v34 + 80);
      }

      if (*(a1 + 1805) == v34)
      {
        *(a1 + 1805) = *(v34 + 80);
      }

      --a1[3612];
      *(v34 + 72) = 0;
      v52 = *(a1 + 1807);
      *(v34 + 80) = v52;
      if (v52)
      {
        *(v52 + 72) = v34;
      }

      *(a1 + 1807) = v34;
      ++a1[3616];
      v34 = *(a1 + 1805);
      v53 = *(v34 + 80);
      if (v53)
      {
        v54 = *(v34 + 16) * *(v34 + 16);
        do
        {
          if ((*(v53 + 16) * *(v53 + 16)) < v54)
          {
            v54 = *(v53 + 16) * *(v53 + 16);
            v34 = v53;
          }

          v53 = *(v53 + 80);
        }

        while (v53);
      }

      v38 = *v34;
      v39 = *(v34 + 16);
      v40 = *(v34 + 24);
      v41 = *(v34 + 40);
      if (v37 == 255)
      {
        goto LABEL_57;
      }
    }

    v61 = 4;
LABEL_56:
    *a1 = v61;
    v38 = v79;
    v40 = v80;
    v39 = v78;
LABEL_57:
    v62 = vmulq_n_f32(v38, v39);
    *(a1 + 4) = v38;
    *(a1 + 20) = v39;
    a1[14] = 3;
    *(a1 + 2) = v40;
    *(a1 + 3) = v41;
    v63 = vsubq_f32(*(*(&v40 + 1) + 16), v62);
    v63.i32[3] = 0;
    v64 = vsubq_f32(v41[1], v62);
    v64.i32[3] = 0;
    v65 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v64, v64, 0xCuLL), v64, 8uLL), v63), vmulq_f32(vextq_s8(vextq_s8(v63, v63, 0xCuLL), v63, 8uLL), v64));
    v66 = vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL);
    v66.i32[3] = 0;
    v67 = vmulq_f32(v66, v66);
    *v67.i32 = sqrtf(vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0]);
    a1[10] = v67.i32[0];
    v68 = vsubq_f32(v41[1], v62);
    v68.i32[3] = 0;
    v69 = vsubq_f32(*(v40 + 16), v62);
    v69.i32[3] = 0;
    v70 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL), v68), vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), v69));
    v71 = vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL);
    v71.i32[3] = 0;
    v72 = vmulq_f32(v71, v71);
    *v72.i32 = sqrtf(vadd_f32(vpadd_f32(*v72.i8, *v72.i8), *&vextq_s8(v72, v72, 8uLL)).f32[0]);
    a1[11] = v72.i32[0];
    v73 = vsubq_f32(*(v40 + 16), v62);
    v73.i32[3] = 0;
    v74 = vsubq_f32(*(*(&v40 + 1) + 16), v62);
    v74.i32[3] = 0;
    v75 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v74, v74, 0xCuLL), v74, 8uLL), v73), vmulq_f32(vextq_s8(vextq_s8(v73, v73, 0xCuLL), v73, 8uLL), v74));
    v76 = vextq_s8(vextq_s8(v75, v75, 0xCuLL), v75, 8uLL);
    v76.i32[3] = 0;
    v77 = vmulq_f32(v76, v76);
    *v77.i32 = sqrtf(vadd_f32(vpadd_f32(*v77.i8, *v77.i8), *&vextq_s8(v77, v77, 8uLL)).f32[0]);
    v73.f32[0] = (*v67.i32 + *v72.i32) + *v77.i32;
    *(a1 + 10) = *v67.i32 / v73.f32[0];
    *(a1 + 11) = *v72.i32 / v73.f32[0];
    *(a1 + 12) = *v77.i32 / v73.f32[0];
    return *a1;
  }

  else
  {
LABEL_49:
    *a1 = 8;
    v55.i64[0] = 0x8000000080000000;
    v55.i64[1] = 0x8000000080000000;
    v56 = veorq_s8(*a3, v55);
    v57 = vmulq_f32(v56, v56);
    v58 = sqrtf(vadd_f32(vpadd_f32(*v57.i8, *v57.i8), *&vextq_s8(v57, v57, 8uLL)).f32[0]);
    if (v58 <= 0.0)
    {
      v59 = xmmword_1AFE20150;
    }

    else
    {
      v59 = vmulq_n_f32(v56, 1.0 / v58);
      v59.i32[3] = 0;
    }

    *(a1 + 4) = v59;
    a1[20] = 0;
    a1[14] = 1;
    *(a1 + 1) = *v5;
    a1[10] = 1065353216;
    return 8;
  }
}

double sub_1AFD90EE8(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, _DWORD *a5)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v48[0] = a1;
  v48[1] = a2;
  v5 = *a1;
  v6 = vsubq_f32(*a1, *a2);
  v6.i32[3] = 0;
  v7 = *a3;
  v8 = vsubq_f32(*a2, *a3);
  v8.i32[3] = 0;
  v48[2] = a3;
  v47[0] = v6;
  v47[1] = v8;
  v9 = vsubq_f32(v7, v5);
  v9.i32[3] = 0;
  v47[2] = v9;
  v10 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v11 = vsubq_f32(vmulq_f32(v10, v6), vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), v8));
  v12 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
  v12.i32[3] = 0;
  v15 = vmulq_f32(v12, v12);
  v13 = vpadd_f32(*v15.i8, *v15.i8);
  v15.i64[0] = vextq_s8(v15, v15, 8uLL).u64[0];
  v14 = vadd_f32(v13, *v15.i8);
  v15.i32[0] = -1.0;
  if (v14.f32[0] > 0.0)
  {
    v16 = 0;
    v17 = 0;
    v15 = vextq_s8(v12, v12, 0xCuLL);
    v18 = vextq_s8(v15, v12, 8uLL);
    v19 = 0.0;
    v15.i32[0] = -1.0;
    v20 = 0.0;
    do
    {
      v21 = vsubq_f32(vmulq_f32(v18, v47[v16]), vmulq_f32(vextq_s8(vextq_s8(v47[v16], v47[v16], 0xCuLL), v47[v16], 8uLL), v12));
      v22 = vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL);
      v22.i32[3] = 0;
      v23 = *v48[v16];
      v24 = vmulq_f32(v23, v22);
      if (vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0] > 0.0)
      {
        v25 = dword_1AFEAC320[v16];
        v26 = *v48[v25];
        v27 = vsubq_f32(v26, v23);
        v27.i32[3] = 0;
        v28 = vmulq_f32(v27, v27);
        v29 = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).f32[0];
        v30 = -1.0;
        if (v29 > 0.0)
        {
          v31 = vmulq_f32(v23, v27);
          v19 = -vadd_f32(*&vextq_s8(v31, v31, 8uLL), vpadd_f32(*v31.i8, *v31.i8)).f32[0] / v29;
          if (v19 >= 1.0)
          {
            v34 = vmulq_f32(v26, v26);
            v19 = 1.0;
            v20 = 0.0;
            v17 = 2;
          }

          else if (v19 <= 0.0)
          {
            v34 = vmulq_f32(v23, v23);
            v19 = 0.0;
            v20 = 1.0;
            v17 = 1;
          }

          else
          {
            v20 = 1.0 - v19;
            v32 = vmulq_n_f32(v27, v19);
            v32.i32[3] = 0;
            v33 = vaddq_f32(v23, v32);
            v34 = vmulq_f32(v33, v33);
            v17 = 3;
          }

          LODWORD(v30) = vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).u32[0];
        }

        if (*v15.i32 < 0.0 || v30 < *v15.i32)
        {
          *(a4 + 4 * v16) = v20;
          *(a4 + 4 * v25) = v19;
          *a5 = ((v17 << 31 >> 31) & (1 << v16)) + ((1 << v25) & (v17 << 30 >> 31));
          *(a4 + 4 * dword_1AFEAC320[v25]) = 0;
          *v15.i32 = v30;
        }
      }

      ++v16;
    }

    while (v16 != 3);
    if (*v15.i32 < 0.0)
    {
      v35 = vmulq_f32(*a1, v12);
      v36 = sqrtf(v14.f32[0]);
      v37 = vmulq_n_f32(v12, vdiv_f32(vadd_f32(vpadd_f32(*v35.i8, *v35.i8), *&vextq_s8(v35, v35, 8uLL)), v14).f32[0]);
      *a5 = 7;
      v38 = vsubq_f32(*a2, v37);
      v38.i32[3] = 0;
      v39 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v38, v38, 0xCuLL), v38, 8uLL), v8), vmulq_f32(v10, v38));
      v40 = vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL);
      v40.i32[3] = 0;
      v41 = vmulq_f32(v40, v40);
      *v41.i32 = sqrtf(vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).f32[0]) / v36;
      *a4 = v41.i32[0];
      v42 = vsubq_f32(*a3, v37);
      v37.i32[3] = 0;
      v15 = vmulq_f32(v37, v37);
      v42.i32[3] = 0;
      v43 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL), v9), vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), v42));
      v44 = vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL);
      v44.i32[3] = 0;
      *v15.i8 = vadd_f32(vpadd_f32(*v15.i8, *v15.i8), *&vextq_s8(v15, v15, 8uLL));
      v45 = vmulq_f32(v44, v44);
      *v45.i32 = sqrtf(vadd_f32(vpadd_f32(*v45.i8, *v45.i8), *&vextq_s8(v45, v45, 8uLL)).f32[0]) / v36;
      *(a4 + 4) = v45.i32[0];
      *(a4 + 8) = 1.0 - (*v41.i32 + *v45.i32);
    }
  }

  return *v15.i64;
}

float sub_1AFD911FC(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, _DWORD *a6)
{
  v49[4] = *MEMORY[0x1E69E9840];
  v49[0] = a1;
  v49[1] = a2;
  v49[2] = a3;
  v49[3] = a4;
  v6 = *a1;
  v7 = *a4;
  _Q4 = vsubq_f32(*a1, *a4);
  _Q4.i32[3] = 0;
  v9 = *a2;
  v10 = vsubq_f32(*a2, *a4);
  v10.i32[3] = 0;
  v48[0] = _Q4;
  v48[1] = v10;
  v11 = *a3;
  _Q3 = vsubq_f32(*a3, v7);
  _Q3.i32[3] = 0;
  v48[2] = _Q3;
  _S17 = vmuls_lane_f32(-_Q4.f32[0], v10, 2);
  __asm { FMLA            S7, S17, V3.S[1] }

  _S6 = -_Q4.f32[1] * v10.f32[0];
  __asm { FMLA            S7, S6, V3.S[2] }

  _Q4.f32[0] = vmuls_lane_f32(_Q4.f32[0], *v10.f32, 1);
  __asm { FMLA            S7, S4, V3.S[2] }

  v22 = _S7 + (vmuls_lane_f32(-_Q4.f32[2], *v10.f32, 1) * _Q3.f32[0]);
  v23 = -1.0;
  if (v22 != 0.0)
  {
    v24 = vsubq_f32(v9, v11);
    v24.i32[3] = 0;
    v25 = vsubq_f32(v6, v9);
    v25.i32[3] = 0;
    v26 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v24), vmulq_f32(vextq_s8(vextq_s8(v24, v24, 0xCuLL), v24, 8uLL), v25));
    v27 = vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL);
    v27.i32[3] = 0;
    v28 = vmulq_f32(v6, v27);
    if ((v22 * vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).f32[0]) <= 0.0)
    {
      v33 = 0;
      v47 = 0;
      v46 = 0;
      v45 = 0;
      do
      {
        v34 = dword_1AFEAC32C[v33];
        v35 = vsubq_f32(vmulq_f32(v48[v33], vextq_s8(vextq_s8(v48[v34], v48[v34], 0xCuLL), v48[v34], 8uLL)), vmulq_f32(v48[v34], vextq_s8(vextq_s8(v48[v33], v48[v33], 0xCuLL), v48[v33], 8uLL)));
        v36 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
        v36.i32[3] = 0;
        v37 = vmulq_f32(*a4, v36);
        if ((v22 * vadd_f32(vpadd_f32(*v37.i8, *v37.i8), *&vextq_s8(v37, v37, 8uLL)).f32[0]) > 0.0)
        {
          v38 = sub_1AFD90EE8(v49[v33], v49[v34], a4, &v46, &v45);
          if (v23 < 0.0 || *&v38 < v23)
          {
            v39 = HIDWORD(v46);
            *(a5 + 4 * v33) = v46;
            *a6 = ((1 << v34) & (v45 << 30 >> 31)) + ((2 * v45) & 8) + ((v45 << 31 >> 31) & (1 << v33));
            *(a5 + 4 * v34) = v39;
            *(a5 + 4 * dword_1AFEAC32C[v34]) = 0;
            *(a5 + 12) = v47;
            v23 = *&v38;
          }
        }

        ++v33;
      }

      while (v33 != 3);
      if (v23 < 0.0)
      {
        *a6 = 15;
        *a5 = sub_1AFD91684(a3->f32, a2->f32, a4->f32) / v22;
        *(a5 + 4) = sub_1AFD91684(a1->f32, a3->f32, a4->f32) / v22;
        v40 = sub_1AFD91684(a2->f32, a1->f32, a4->f32) / v22;
        v41 = 1.0 - (v40 + (*a5 + *(a5 + 4)));
        *(a5 + 8) = v40;
        *(a5 + 12) = v41;
        return 0.0;
      }
    }
  }

  return v23;
}

__n128 sub_1AFD914E0(float32x4_t *a1, float32x4_t *a2, uint64_t a3)
{
  v5 = vmulq_f32(*a2, *a2);
  v6 = vmulq_n_f32(*a2, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0]));
  v6.i32[3] = 0;
  *a3 = v6;
  v7 = a1[8].i64[0];
  v8 = a1[8].i64[1];
  v9 = (a1->i64[0] + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  v7(&v22, v9, a3);
  v10 = a1[8].i64[0];
  v11 = a1[8].i64[1];
  v12 = (a1->i64[1] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v14 = veorq_s8(*a3, v13);
  v15 = vmulq_f32(a1[1], v14);
  v16 = vmulq_f32(a1[2], v14);
  v17 = vmulq_f32(a1[3], v14);
  v17.i32[3] = 0;
  *v15.i8 = vadd_f32(vpadd_f32(*v15.i8, *v16.i8), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  v15.u64[1] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v23 = v15;
  v10(&v24, v12, &v23);
  v18 = vmulq_f32(a1[4], v24);
  v19 = vmulq_f32(v24, a1[5]);
  v20 = vmulq_f32(v24, a1[6]);
  v20.i32[3] = 0;
  *v18.f32 = vadd_f32(vpadd_f32(*v18.f32, *v19.i8), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
  *&v18.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
  result = vsubq_f32(v22, vaddq_f32(v18, a1[7]));
  result.n128_u32[3] = 0;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1AFD916D0(uint64_t result)
{
  v1 = 0;
  *result = 9;
  *(result + 14432) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v2 = result + 14336;
  v3 = *(result + 14464);
  v4 = 128;
  v5 = *(result + 14456);
  do
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = v5;
    if (v5)
    {
      *(v5 + 72) = v2;
    }

    v5 = result + 2144 + 96 * (127 - v1);
    *(result + 14456) = v2;
    ++v1;
    v2 -= 96;
    --v4;
  }

  while (v4);
  *(result + 14464) = v3 + 128;
  return result;
}

uint64_t sub_1AFD9173C(float32x4_t *a1)
{
  v2 = a1[28].i64[1];
  v3 = *(v2 + 12);
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = 0;
        v5 = vsubq_f32(v2[1][1], (*v2)[1]);
        v5.i32[3] = 0;
        v6 = vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL);
        v7 = a1 + 26;
        v77 = v6;
        v78 = v5;
        while (1)
        {
          v81 = 0uLL;
          v81.i32[v4] = 1065353216;
          v8 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v81, v81, 0xCuLL), v81, 8uLL), v5), vmulq_f32(v6, v81));
          v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
          v9.i32[3] = 0;
          v80 = v9;
          v10 = vmulq_f32(v9, v9);
          if (vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0] > 0.0)
          {
            v11 = a1[28].i64[1];
            v12 = *(v11 + 48);
            *(v11 + 4 * v12 + 32) = 0;
            v13 = a1[28].i32[0] - 1;
            a1[28].i32[0] = v13;
            v14 = v7->i64[v13];
            *(v11 + 8 * v12) = v14;
            *(v11 + 48) = v12 + 1;
            sub_1AFD914E0(a1, &v80, v14);
            if (sub_1AFD9173C(a1))
            {
              return 1;
            }

            v15 = a1[28].i64[1];
            v16 = *(v15 + 48) - 1;
            *(v15 + 48) = v16;
            v17 = *(v15 + 8 * v16);
            v18 = a1[28].u32[0];
            v7->i64[v18] = v17;
            v19 = a1[28].i64[1];
            v20.i64[0] = 0x8000000080000000;
            v20.i64[1] = 0x8000000080000000;
            v79 = veorq_s8(v80, v20);
            v21 = *(v19 + 48);
            *(v19 + 4 * v21 + 32) = 0;
            a1[28].i32[0] = v18;
            *(v19 + 8 * v21) = v17;
            *(v19 + 48) = v21 + 1;
            sub_1AFD914E0(a1, &v79, v17);
            if (sub_1AFD9173C(a1))
            {
              return 1;
            }

            v22 = a1[28].i64[1];
            v23 = *(v22 + 48) - 1;
            *(v22 + 48) = v23;
            v24 = *(v22 + 8 * v23);
            v25 = a1[28].u32[0];
            a1[28].i32[0] = v25 + 1;
            v7->i64[v25] = v24;
            v6 = v77;
            v5 = v78;
          }

          if (++v4 == 3)
          {
            return 0;
          }
        }
      }

      return 0;
    }

    v41 = 0;
    v42 = a1 + 26;
    LODWORD(v43) = a1[28].i32[0] - 1;
    while (1)
    {
      v81 = 0uLL;
      v81.i32[v41] = 1065353216;
      v44 = a1[28].i64[1];
      v45 = *(v44 + 48);
      *(v44 + 4 * v45 + 32) = 0;
      a1[28].i32[0] = v43;
      v46 = v42->i64[v43];
      *(v44 + 8 * v45) = v46;
      *(v44 + 48) = v45 + 1;
      sub_1AFD914E0(a1, &v81, v46);
      if (sub_1AFD9173C(a1))
      {
        break;
      }

      v47 = a1[28].i64[1];
      v48 = *(v47 + 48) - 1;
      *(v47 + 48) = v48;
      v49 = *(v47 + 8 * v48);
      v50 = a1[28].u32[0];
      v42->i64[v50] = v49;
      v51 = a1[28].i64[1];
      v52.i64[0] = 0x8000000080000000;
      v52.i64[1] = 0x8000000080000000;
      v80 = veorq_s8(v81, v52);
      v53 = *(v51 + 48);
      *(v51 + 4 * v53 + 32) = 0;
      a1[28].i32[0] = v50;
      *(v51 + 8 * v53) = v49;
      *(v51 + 48) = v53 + 1;
      sub_1AFD914E0(a1, &v80, v49);
      if (sub_1AFD9173C(a1))
      {
        break;
      }

      v54 = a1[28].i64[1];
      v55 = *(v54 + 48) - 1;
      *(v54 + 48) = v55;
      v56 = *(v54 + 8 * v55);
      v43 = a1[28].u32[0];
      a1[28].i32[0] = v43 + 1;
      v42->i64[v43] = v56;
      if (++v41 == 3)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v3 == 3)
  {
    v57 = (*v2)[1];
    v58 = vsubq_f32(v2[1][1], v57);
    v58.i32[3] = 0;
    v59 = vsubq_f32(v2[2][1], v57);
    v59.i32[3] = 0;
    v60 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v59, v59, 0xCuLL), v59, 8uLL), v58), vmulq_f32(vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL), v59));
    v61 = vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL);
    v61.i32[3] = 0;
    v81 = v61;
    v62 = vmulq_f32(v61, v61);
    if (vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0] > 0.0)
    {
      *(v2 + 44) = 0x400000000;
      v63 = a1 + 26;
      v64 = a1[28].i32[0] - 1;
      a1[28].i32[0] = v64;
      v65 = a1[26].i64[v64];
      v2[3] = v65;
      sub_1AFD914E0(a1, &v81, v65);
      if (sub_1AFD9173C(a1))
      {
        return 1;
      }

      v66 = a1[28].i64[1];
      v67 = *(v66 + 48) - 1;
      *(v66 + 48) = v67;
      v68 = *(v66 + 8 * v67);
      v69 = a1[28].u32[0];
      v63->i64[v69] = v68;
      v70 = a1[28].i64[1];
      v71.i64[0] = 0x8000000080000000;
      v71.i64[1] = 0x8000000080000000;
      v80 = veorq_s8(v81, v71);
      v72 = *(v70 + 48);
      *(v70 + 4 * v72 + 32) = 0;
      a1[28].i32[0] = v69;
      *(v70 + 8 * v72) = v68;
      *(v70 + 48) = v72 + 1;
      sub_1AFD914E0(a1, &v80, v68);
      if (sub_1AFD9173C(a1))
      {
        return 1;
      }

      v73 = a1[28].i64[1];
      v74 = *(v73 + 48) - 1;
      *(v73 + 48) = v74;
      v75 = *(v73 + 8 * v74);
      v76 = a1[28].u32[0];
      a1[28].i32[0] = v76 + 1;
      v63->i64[v76] = v75;
    }

    return 0;
  }

  if (v3 != 4)
  {
    return 0;
  }

  v26 = v2[3][1];
  _Q0 = vsubq_f32((*v2)[1], v26);
  v28 = vsubq_f32(v2[1][1], v26);
  _Q1 = vsubq_f32(v2[2][1], v26);
  _S6 = vmuls_lane_f32(-_Q0.f32[0], v28, 2);
  __asm { FMLA            S4, S6, V1.S[1] }

  _S3 = -_Q0.f32[1] * v28.f32[0];
  __asm { FMLA            S4, S3, V1.S[2] }

  _Q0.f32[0] = vmuls_lane_f32(_Q0.f32[0], *v28.f32, 1);
  __asm { FMLA            S4, S0, V1.S[2] }

  v39 = _S4 + (vmuls_lane_f32(-_Q0.f32[2], *v28.f32, 1) * _Q1.f32[0]);
  result = 1;
  if (v39 >= 0.0 && v39 <= 0.0)
  {
    return 0;
  }

  return result;
}

float32x4_t *sub_1AFD91BA0(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, char a5)
{
  v6 = *(a1 + 14456);
  if (!v6)
  {
    *a1 = 5;
    return v6;
  }

  v11 = v6[4].i64[1];
  v12 = v6[5].i64[0];
  if (v12)
  {
    *(v12 + 72) = v11;
  }

  if (v11)
  {
    *(v11 + 80) = v6[5].i64[0];
  }

  if (*(a1 + 14456) == v6)
  {
    *(a1 + 14456) = v6[5].i64[0];
  }

  --*(a1 + 14464);
  v6[4].i64[1] = 0;
  v13 = *(a1 + 14440);
  v6[5].i64[0] = v13;
  if (v13)
  {
    *(v13 + 72) = v6;
  }

  *(a1 + 14440) = v6;
  ++*(a1 + 14448);
  v6[5].i8[11] = 0;
  v6[1].i64[1] = a2;
  v6[2].i64[0] = a3;
  v6[2].i64[1] = a4;
  v14 = a2[1];
  v15 = vsubq_f32(a3[1], v14);
  v16 = v15;
  v16.i32[3] = 0;
  v17 = vsubq_f32(a4[1], v14);
  v18 = v17;
  v18.i32[3] = 0;
  v19 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), v15), vmulq_f32(vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL), v17));
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  *v6 = v20;
  v21 = vmulq_f32(v20, v20);
  v22 = sqrtf(vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL)).f32[0]);
  if (v22 <= 0.0001)
  {
    v24 = 2;
    goto LABEL_20;
  }

  if (!sub_1AFD91FC0(a1, v6, a2, a3, v6[1].f32) && !sub_1AFD91FC0(a1, v6, a3, a4, v6[1].f32) && !sub_1AFD91FC0(a1, v6, a4, a2, v6[1].f32))
  {
    v23 = vmulq_f32(a2[1], *v6);
    v6[1].f32[0] = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).f32[0] / v22;
  }

  *v6 = vmulq_n_f32(*v6, 1.0 / v22);
  if ((a5 & 1) == 0 && v6[1].f32[0] < -0.00001)
  {
    v24 = 3;
LABEL_20:
    *a1 = v24;
    v25 = v6[4].i64[1];
    v26 = v6[5].i64[0];
    if (v26)
    {
      *(v26 + 72) = v25;
    }

    if (v25)
    {
      *(v25 + 80) = v6[5].i64[0];
    }

    if (*(a1 + 14440) == v6)
    {
      *(a1 + 14440) = v6[5].i64[0];
    }

    --*(a1 + 14448);
    v6[4].i64[1] = 0;
    v27 = *(a1 + 14456);
    v6[5].i64[0] = v27;
    if (v27)
    {
      *(v27 + 72) = v6;
    }

    *(a1 + 14456) = v6;
    ++*(a1 + 14464);
    return 0;
  }

  return v6;
}

uint64_t sub_1AFD91DF8(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, unsigned int a5, uint64_t *a6)
{
  if (a4[5].u8[11] == a2)
  {
    return 0;
  }

  v8 = a5;
  v12 = dword_1AFEAC338[a5];
  v13 = a5;
  v14 = vmulq_f32(*a4, a3[1]);
  if ((vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0] - a4[1].f32[0]) < -0.00001)
  {
    result = sub_1AFD91BA0(a1, a4[1].i64[v12 + 1], a4[1].i64[a5 + 1], a3, 0);
    if (!result)
    {
      return result;
    }

    *(result + 88) = v8;
    *(result + 48) = a4;
    a4[5].i8[v13 + 8] = 0;
    a4[3].i64[v13] = result;
    v15 = *a6;
    if (*a6)
    {
      *(v15 + 89) = 2;
      *(v15 + 56) = result;
      *(result + 90) = 1;
      *(result + 64) = v15;
    }

    else
    {
      a6[1] = result;
    }

    *a6 = result;
    v21 = a6 + 2;
    goto LABEL_20;
  }

  v17 = dword_1AFEAC344[a5];
  a4[5].i8[11] = a2;
  result = sub_1AFD91DF8(a1, a2, a3, a4[3].i64[v12], a4[5].u8[v12 + 8], a6);
  if (result)
  {
    result = sub_1AFD91DF8(a1, a2, a3, a4[3].i64[v17], a4[5].u8[v17 + 8], a6);
    if (result)
    {
      v18 = a4[4].i64[1];
      v19 = a4[5].i64[0];
      if (v19)
      {
        *(v19 + 72) = v18;
      }

      if (v18)
      {
        *(v18 + 80) = a4[5].i64[0];
      }

      if (*(a1 + 14440) == a4)
      {
        *(a1 + 14440) = a4[5].i64[0];
      }

      --*(a1 + 14448);
      a4[4].i64[1] = 0;
      v20 = *(a1 + 14456);
      a4[5].i64[0] = v20;
      if (v20)
      {
        *(v20 + 72) = a4;
      }

      *(a1 + 14456) = a4;
      v21 = (a1 + 14464);
LABEL_20:
      ++*v21;
      return 1;
    }
  }

  return result;
}

BOOL sub_1AFD91FC0(uint64_t a1, int8x16_t *a2, float32x4_t *a3, float32x4_t *a4, float *a5)
{
  v5 = a4[1];
  v6 = a3[1];
  v7 = vsubq_f32(v5, v6);
  v7.i32[3] = 0;
  v8 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(*a2, *a2, 0xCuLL), *a2, 8uLL), v7), vmulq_f32(*a2, vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL)));
  v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v6, v9);
  v11 = vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0];
  if (v11 < 0.0)
  {
    v12 = vmulq_f32(v6, v7);
    if (vadd_f32(*&vextq_s8(v12, v12, 8uLL), vpadd_f32(*v12.i8, *v12.i8)).f32[0] <= 0.0)
    {
      v14 = vmulq_f32(v5, v7);
      if (vadd_f32(*&vextq_s8(v14, v14, 8uLL), vpadd_f32(*v14.i8, *v14.i8)).f32[0] >= 0.0)
      {
        v16 = vmulq_f32(v7, v7);
        v17 = vmulq_f32(v5, v6);
        *v17.i32 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), vpadd_f32(*v17.i8, *v17.i8)).f32[0];
        v18 = vmulq_f32(v6, v6);
        v19 = vmulq_f32(v5, v5);
        v15 = fmaxf(((-*v17.i32 * *v17.i32) + (vadd_f32(*&vextq_s8(v18, v18, 8uLL), vpadd_f32(*v18.i8, *v18.i8)).f32[0] * vadd_f32(*&vextq_s8(v19, v19, 8uLL), vpadd_f32(*v19.i8, *v19.i8)).f32[0])) / vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8)).f32[0], 0.0);
        goto LABEL_8;
      }

      v13 = vmulq_f32(v5, v5);
    }

    else
    {
      v13 = vmulq_f32(v6, v6);
    }

    LODWORD(v15) = vadd_f32(*&vextq_s8(v13, v13, 8uLL), vpadd_f32(*v13.i8, *v13.i8)).u32[0];
LABEL_8:
    *a5 = sqrtf(v15);
  }

  return v11 < 0.0;
}

uint64_t sub_1AFD920CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, _OWORD *a7, _OWORD *a8, float32x4_t *a9)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = vsubq_f32(a6[3], a5[3]);
  v15.i32[3] = 0;
  v20 = v15;
  sub_1AFD90670(a3);
  v17 = v16;
  if ((v16 & 1) != 0 || sub_1AFD8FD48(a3, a5, a4, a6, &v20, v21))
  {
    v18 = v21[2];
    *a8 = v21[1];
    *a9 = v18;
    *a7 = v21[3];
  }

  return v17;
}

uint64_t sub_1AFD921DC(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F2572600;
  *(a1 + 16) = xmmword_1AFE20160;
  *(a1 + 32) = a5;
  *(a1 + 40) = a4;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  v7 = a3[2];
  *(a1 + 64) = a2[2];
  *(a1 + 68) = v7;
  *(a1 + 72) = (*(*a2 + 96))(a2);
  *(a1 + 76) = (*(*a3 + 96))(a3);
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 100) = 0x100000001;
  return a1;
}

double sub_1AFD922B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, float a8, float a9)
{
  *a1 = &unk_1F2572600;
  *(a1 + 16) = xmmword_1AFE20160;
  *(a1 + 32) = a7;
  *(a1 + 40) = a6;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 68) = a5;
  *(a1 + 72) = a8;
  *(a1 + 76) = a9;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *&result = 0x100000001;
  *(a1 + 100) = 0x100000001;
  return result;
}

void sub_1AFD92304(float32x4_t *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  a1[5].i32[1] = 0;
  v117 = 0uLL;
  v101 = a2[1];
  v102 = *a2;
  v113[0] = *a2;
  v113[1] = v101;
  v10 = a2[2];
  v9 = a2[3];
  v98 = a2[5];
  v99 = a2[4];
  v111[0] = v99;
  v111[1] = v98;
  v12 = a2[6];
  v11 = a2[7];
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vmulq_f32(vaddq_f32(v9, v11), v13);
  v14.i32[3] = 0;
  v100 = v10;
  v113[2] = v10;
  v114 = vsubq_f32(v9, v14);
  v96 = v114;
  v97 = v12;
  v111[2] = v12;
  v112 = vsubq_f32(v11, v14);
  v94 = v14;
  v95 = v112;
  if ((*(a1[3].i64[0] + 8) - 17) <= 1)
  {
    v8 = (*(a1[3].i64[1] + 8) - 17) < 2;
  }

  a1[1] = xmmword_1AFE20160;
  v15 = a1 + 1;
  v16 = a1[4].f32[2];
  v17 = a1[4].f32[3];
  ++dword_1EB6C3720;
  v18 = 0.0;
  if (a1[5].i8[0])
  {
    v17 = 0.0;
  }

  else
  {
    v18 = v16;
  }

  a1[6].i32[0] = 0;
  a1[5].i64[1] = 0xFFFFFFFFLL;
  v92 = v18;
  v93 = v17;
  v19 = v18 + v17;
  sub_1AFD95BD0(a1[2].i64[1]);
  v22 = *v15;
  for (i = 1.0e18; ; i = v55)
  {
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v25 = veorq_s8(v22, v24);
    v26 = *a2;
    v27 = a2[1];
    v26.i32[3] = 0;
    v27.i32[3] = 0;
    v28 = a2[2];
    v28.i32[3] = 0;
    v29 = vaddq_f32(vaddq_f32(vmulq_n_f32(v26, v25.f32[0]), vmulq_lane_f32(v27, *v25.f32, 1)), vmulq_laneq_f32(v28, v25, 2));
    v30 = a2[4];
    v31 = a2[5];
    v30.i32[3] = 0;
    v31.i32[3] = 0;
    v32 = a2[6];
    v32.n128_u32[3] = 0;
    v33 = vmulq_lane_f32(v31, *v22.f32, 1);
    v34 = vaddq_f32(vmulq_n_f32(v30, v22.f32[0]), v33);
    v115 = vaddq_f32(v34, vmulq_laneq_f32(v32, v22, 2));
    v116 = v29;
    sub_1AFD885CC(a1[3].i64[0], &v116, &v110, v21, v115, v34, v33, v32, v29, v20);
    sub_1AFD885CC(a1[3].i64[1], &v115, &v109, v41, v35, v36, v37, v38, v39, v40);
    v42 = vmulq_f32(v102, v110);
    v43 = vmulq_f32(v110, v101);
    v44 = vmulq_f32(v110, v100);
    v44.i32[3] = 0;
    *v42.f32 = vadd_f32(vpadd_f32(*v42.f32, *v43.i8), vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)));
    *&v42.u32[2] = vpadd_f32(vpadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL)), 0);
    v45 = vaddq_f32(v42, v96);
    v46 = vmulq_f32(v99, v109);
    v47 = vmulq_f32(v109, v98);
    v48 = vmulq_f32(v109, v97);
    v48.i32[3] = 0;
    *v46.f32 = vadd_f32(vpadd_f32(*v46.f32, *v47.i8), vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v47, v47, 8uLL)));
    *&v46.u32[2] = vpadd_f32(vpadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)), 0);
    v49 = vaddq_f32(v46, v95);
    v107 = v49;
    v108 = v45;
    if (v8)
    {
      v108.i32[2] = 0;
      v107.n128_u32[2] = 0;
      v49 = v107;
      v45 = v108;
    }

    v50 = vsubq_f32(v45, v49);
    v50.i32[3] = 0;
    v106 = v50;
    v51 = vmulq_f32(*v15, v50);
    v52 = vadd_f32(vpadd_f32(*v51.i8, *v51.i8), *&vextq_s8(v51, v51, 8uLL));
    if (v52.f32[0] > 0.0 && vmul_f32(v52, v52).f32[0] > (i * a2[8].f32[0]))
    {
      v57 = 10;
      goto LABEL_29;
    }

    v103 = v52.f32[0];
    if (sub_1AFD96710(a1[2].i64[1], &v106))
    {
      v57 = 1;
      goto LABEL_29;
    }

    if ((i - v103) <= (i * 0.000001))
    {
      break;
    }

    sub_1AFD95C10(a1[2].i64[1], &v106, &v108, &v107);
    sub_1AFD966E0(a1[2].i64[1], &v105);
    if (!v53)
    {
      v57 = 3;
      goto LABEL_29;
    }

    v22 = v105;
    v54 = vmulq_f32(v22, v22);
    v55 = vadd_f32(vpadd_f32(*v54.i8, *v54.i8), *&vextq_s8(v54, v54, 8uLL)).f32[0];
    if (v55 < 0.000001)
    {
      *v15 = v105;
      v57 = 6;
      goto LABEL_29;
    }

    if ((i - v55) <= (i * 0.00000011921))
    {
      v57 = 12;
      i = v55;
      goto LABEL_29;
    }

    a1[1] = v105;
    v56 = a1[5].i32[3];
    a1[5].i32[3] = v56 + 1;
    if (v56 > 1000)
    {
      v58 = 0;
      goto LABEL_34;
    }

    if (*a1[2].i64[1] == 4)
    {
      v58 = 0;
      a1[6].i32[0] = 13;
      goto LABEL_34;
    }
  }

  if ((i - v103) <= 0.0)
  {
    v57 = 2;
  }

  else
  {
    v57 = 11;
  }

LABEL_29:
  a1[6].i32[0] = v57;
  sub_1AFD967B4(a1[2].i64[1], &v116, &v115);
  v59 = a1[1];
  v117 = v59;
  v60 = vmulq_f32(v59, v59);
  v61 = vadd_f32(vpadd_f32(*v60.i8, *v60.i8), *&vextq_s8(v60, v60, 8uLL)).f32[0];
  if (v61 < 0.0001)
  {
    a1[6].i32[0] = 5;
  }

  if (v61 > 1.4211e-14)
  {
    v62 = 1.0 / sqrtf(v61);
    v63 = sqrtf(i);
    v64 = vmulq_n_f32(v59, v92 / v63);
    v64.i32[3] = 0;
    v116 = vsubq_f32(v116, v64);
    v117 = vmulq_n_f32(v59, v62);
    v65 = vmulq_n_f32(v59, v93 / v63);
    v65.i32[3] = 0;
    v115 = vaddq_f32(v115, v65);
    v66 = (1.0 / v62) - v19;
    v58 = 1;
    a1[5].i32[2] = 1;
    goto LABEL_35;
  }

  v58 = 0;
  a1[5].i32[2] = 2;
LABEL_34:
  v66 = 0.0;
LABEL_35:
  LODWORD(v67) = a1[6].i32[1];
  if (v67)
  {
    v67 = a1[2].i64[0];
    if (v67)
    {
      LODWORD(v67) = a1[6].i32[0];
      if (v67)
      {
        LODWORD(v67) = (v19 + v66) < 0.01;
      }
    }
  }

  if ((!v58 || v67) && (v68 = a1[2].i64[0]) != 0)
  {
    ++dword_1EB6C371C;
    a1[1].i64[0] = 0;
    a1[1].i64[1] = 0;
    if ((*(*v68 + 16))(v68, a1[2].i64[1], a1[3].i64[0], a1[3].i64[1], v113, v111, a1 + 1, &v110, &v109, a4))
    {
      v69 = vsubq_f32(v109, v110);
      v69.i32[3] = 0;
      v70 = vmulq_f32(v69, v69);
      v71 = vadd_f32(vpadd_f32(*v70.i8, *v70.i8), *&vextq_s8(v70, v70, 8uLL)).f32[0];
      if (v71 <= 1.4211e-14)
      {
        v69 = *v15;
        v72 = vmulq_f32(v69, v69);
        LODWORD(v71) = vadd_f32(vpadd_f32(*v72.i8, *v72.i8), *&vextq_s8(v72, v72, 8uLL)).u32[0];
      }

      if (v71 <= 1.4211e-14)
      {
        v77 = 9;
        goto LABEL_60;
      }

      v73 = vsubq_f32(v110, v109);
      v73.i32[3] = 0;
      v74 = vmulq_f32(v73, v73);
      v75 = -sqrtf(vadd_f32(*&vextq_s8(v74, v74, 8uLL), vpadd_f32(*v74.i8, *v74.i8)).f32[0]);
      if (v66 <= v75)
      {
        v76 = v58;
      }

      else
      {
        v76 = 0;
      }

      if (v76)
      {
        v77 = 8;
LABEL_60:
        a1[5].i32[2] = v77;
LABEL_61:
        if ((v58 & 1) == 0)
        {
          return;
        }

        goto LABEL_65;
      }

      v115 = v109;
      v116 = v110;
      v117 = vmulq_n_f32(v69, 1.0 / sqrtf(v71));
      a1[5].i32[2] = 3;
      v66 = v75;
    }

    else
    {
      v78 = *v15;
      v79 = vmulq_f32(v78, v78);
      v80 = vadd_f32(vpadd_f32(*v79.i8, *v79.i8), *&vextq_s8(v79, v79, 8uLL)).f32[0];
      if (v80 <= 0.0)
      {
        goto LABEL_61;
      }

      v81 = vsubq_f32(v110, v109);
      v81.i32[3] = 0;
      v82 = vmulq_f32(v81, v81);
      v83 = sqrtf(vadd_f32(vpadd_f32(*v82.i8, *v82.i8), *&vextq_s8(v82, v82, 8uLL)).f32[0]) - v19;
      if (v83 >= v66)
      {
        v84 = v58;
      }

      else
      {
        v84 = 0;
      }

      if (v84)
      {
        a1[5].i32[2] = 5;
      }

      else
      {
        v85 = vmulq_n_f32(v78, v92);
        v85.i32[3] = 0;
        v86 = vmulq_n_f32(v78, v93);
        v86.i32[3] = 0;
        v115 = vaddq_f32(v109, v86);
        v116 = vsubq_f32(v110, v85);
        v117 = vmulq_n_f32(v78, 1.0 / sqrtf(v80));
        a1[5].i32[2] = 6;
        v66 = v83;
      }
    }
  }

  else if (!v58)
  {
    return;
  }

LABEL_65:
  if (v66 < 0.0 || (v66 * v66) < a2[8].f32[0])
  {
    if (a1[6].i32[2])
    {
      (*(*a1[3].i64[0] + 16))(a1[3].i64[0], v113, &v110, &v109);
      v87.i64[0] = 0x3F0000003F000000;
      v87.i64[1] = 0x3F0000003F000000;
      v104 = vmulq_f32(vaddq_f32(v109, v110), v87);
      (*(*a1[3].i64[1] + 16))(a1[3].i64[1], v111, &v110, &v109);
      v88.i64[0] = 0x3F0000003F000000;
      v88.i64[1] = 0x3F0000003F000000;
      v89 = vsubq_f32(v104, vmulq_f32(vaddq_f32(v110, v109), v88));
      v89.i32[3] = 0;
      v90 = v117;
      v91 = vmulq_f32(v117, v89);
      if (vadd_f32(vpadd_f32(*v91.i8, *v91.i8), *&vextq_s8(v91, v91, 8uLL)).f32[0] < 0.0)
      {
        v90 = vnegq_f32(v117);
        v117 = v90;
      }
    }

    else
    {
      v90 = v117;
    }

    a1[1] = v90;
    a1[5].f32[1] = v66;
    v110 = vaddq_f32(v115, v94);
    (*(*a3 + 32))(a3, &v117, &v110, v66);
  }
}

uint64_t sub_1AFD92AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, uint64_t a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v96 = v12;
  v97 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  v19 = v18;
  v98 = v20;
  v114 = *MEMORY[0x1E69E9840];
  v99 = (v18[2] - 17) <= 1 && (v10[2] - 17) < 2;
  for (i = 0; i != 84; i += 2)
  {
    sub_1AFD931B8();
    v22 = *&qword_1EB6C1FB0[i + 2];
    v23 = vnegq_f32(v22);
    v24 = *v16;
    v25 = v16[1];
    v24.i32[3] = 0;
    v25.i32[3] = 0;
    v26 = v16[2];
    v26.i32[3] = 0;
    *&v111[i * 8] = vaddq_f32(vaddq_f32(vmulq_n_f32(v24, v23.f32[0]), vmulq_lane_f32(v25, *v23.f32, 1)), vmulq_laneq_f32(v26, v23, 2));
    v27 = *v14;
    v28 = v14[1];
    v27.i32[3] = 0;
    v28.i32[3] = 0;
    v29 = v14[2];
    v29.i32[3] = 0;
    *&v110[i * 8] = vaddq_f32(vaddq_f32(vmulq_n_f32(v27, v22.f32[0]), vmulq_lane_f32(v28, *v22.f32, 1)), vmulq_laneq_f32(v29, v22, 2));
  }

  v30 = (*(*v19 + 168))(v19);
  if (v30 < 1)
  {
    v44 = 42;
  }

  else
  {
    v31 = 0;
    v32 = v30;
    do
    {
      (*(*v19 + 176))(v19, v31, v113);
      v33 = vmulq_f32(*v16, v113[0]);
      v34 = vmulq_f32(v113[0], v16[1]);
      v35 = vmulq_f32(v113[0], v16[2]);
      v35.i32[3] = 0;
      *v33.i8 = vadd_f32(vpadd_f32(*v33.i8, *v34.i8), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)));
      v33.u64[1] = vpadd_f32(vpadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), 0);
      v113[0] = v33;
      sub_1AFD931B8();
      v36 = v113[0];
      *&qword_1EB6C1FB0[2 * v31 + 86] = v113[0];
      v37 = vnegq_f32(v36);
      v38 = *v16;
      v39 = v16[1];
      v38.i32[3] = 0;
      v39.i32[3] = 0;
      v40 = v16[2];
      v40.i32[3] = 0;
      *&v111[16 * v31 + 672] = vaddq_f32(vaddq_f32(vmulq_n_f32(v38, v37.f32[0]), vmulq_lane_f32(v39, *v37.f32, 1)), vmulq_laneq_f32(v40, v37, 2));
      v41 = *v14;
      v42 = v14[1];
      v41.i32[3] = 0;
      v42.i32[3] = 0;
      v43 = v14[2];
      v43.i32[3] = 0;
      *&v110[16 * v31++ + 672] = vaddq_f32(vaddq_f32(vmulq_n_f32(v41, v36.f32[0]), vmulq_lane_f32(v42, *v36.f32, 1)), vmulq_laneq_f32(v43, v36, 2));
    }

    while (v32 != v31);
    v44 = (v31 + 42);
  }

  v45 = (*(*v17 + 168))(v17);
  if (v45 >= 1)
  {
    v46 = v45;
    v47 = 0;
    v44 = v44;
    do
    {
      (*(*v17 + 176))(v17, v47, v113);
      v48 = vmulq_f32(*v14, v113[0]);
      v49 = vmulq_f32(v113[0], v14[1]);
      v50 = vmulq_f32(v113[0], v14[2]);
      v50.i32[3] = 0;
      *v48.i8 = vadd_f32(vpadd_f32(*v48.i8, *v49.i8), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
      v48.u64[1] = vpadd_f32(vpadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)), 0);
      v113[0] = v48;
      sub_1AFD931B8();
      v51 = v113[0];
      *&qword_1EB6C1FB0[2 * v44 + 2] = v113[0];
      v52 = *v16;
      v53 = v16[1];
      v52.i32[3] = 0;
      v53.i32[3] = 0;
      v54 = vnegq_f32(v51);
      v55 = v16[2];
      v55.i32[3] = 0;
      *&v111[16 * v44] = vaddq_f32(vaddq_f32(vmulq_n_f32(v52, v54.f32[0]), vmulq_lane_f32(v53, *v54.f32, 1)), vmulq_laneq_f32(v55, v54, 2));
      v56 = *v14;
      v57 = v14[1];
      v56.i32[3] = 0;
      v57.i32[3] = 0;
      v58 = v14[2];
      v58.i32[3] = 0;
      *&v110[16 * v44++] = vaddq_f32(vaddq_f32(vmulq_n_f32(v56, v51.f32[0]), vmulq_lane_f32(v57, *v51.f32, 1)), vmulq_laneq_f32(v58, v51, 2));
      v47 = (v47 + 1);
    }

    while (v46 != v47);
  }

  (*(*v19 + 152))(v19, v111, v113, v44);
  (*(*v17 + 152))(v17, v110, v112, v44);
  if (v44 < 1)
  {
    v101 = 0u;
    v63 = 1.0e18;
  }

  else
  {
    v59 = v44;
    v101 = 0u;
    v60 = v112;
    v61 = v113;
    v62 = &xmmword_1EB6C1FC0;
    v63 = 1.0e18;
    do
    {
      sub_1AFD931B8();
      v64 = *v62;
      v64.i32[2] = 0;
      if (v99)
      {
        v65 = -1;
      }

      else
      {
        v65 = 0;
      }

      v66 = vbslq_s8(vdupq_n_s32(v65), v64, *v62);
      v67 = vmulq_f32(v66, v66);
      if (vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0] <= 0.01)
      {
        v83 = v101;
      }

      else
      {
        v68 = vmulq_f32(*v61, *v16);
        v69 = vmulq_f32(*v61, v16[1]);
        v70 = vmulq_f32(*v61, v16[2]);
        v70.i32[3] = 0;
        *v68.f32 = vadd_f32(vpadd_f32(*v68.f32, *v69.i8), vzip1_s32(*&vextq_s8(v68, v68, 8uLL), *&vextq_s8(v69, v69, 8uLL)));
        *&v68.u32[2] = vpadd_f32(vpadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)), 0);
        v71 = vmulq_f32(*v60, *v14);
        v72 = vmulq_f32(*v60, v14[1]);
        v73 = vmulq_f32(*v60, v14[2]);
        v73.i32[3] = 0;
        *v71.f32 = vadd_f32(vpadd_f32(*v71.f32, *v72.i8), vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v72, v72, 8uLL)));
        *&v71.u32[2] = vpadd_f32(vpadd_f32(*v73.i8, *&vextq_s8(v73, v73, 8uLL)), 0);
        v74 = vaddq_f32(v68, v16[3]);
        v75 = vaddq_f32(v71, v14[3]);
        v76 = v74;
        v76.i32[2] = 0;
        v77 = v75;
        v77.i32[2] = 0;
        if (v99)
        {
          v78 = -1;
        }

        else
        {
          v78 = 0;
        }

        v79 = vdupq_n_s32(v78);
        v80 = vsubq_f32(vbslq_s8(v79, v77, v75), vbslq_s8(v79, v76, v74));
        v80.i32[3] = 0;
        v81 = vmulq_f32(v66, v80);
        v82 = vadd_f32(vpadd_f32(*v81.i8, *v81.i8), *&vextq_s8(v81, v81, 8uLL)).f32[0];
        v83 = v101;
        if (v82 < v63)
        {
          v83 = v66;
          v63 = v82;
        }
      }

      v101 = v83;
      ++v60;
      ++v61;
      ++v62;
      --v59;
    }

    while (v59);
  }

  sub_1AFD88A34(v19);
  sub_1AFD88A34(v17);
  if (v63 < 0.0)
  {
    return 0;
  }

  sub_1AFD88A34(v19);
  v86 = v85;
  sub_1AFD88A34(v17);
  v100 = v63 + ((v86 + v87) + 0.5);
  sub_1AFD922AC(v108, v19, v17, v98, 0);
  v88 = vmulq_n_f32(v101, v100);
  v88.i32[3] = 0;
  v89 = v16[2];
  v90 = vaddq_f32(v16[3], v88);
  v91 = v16[1];
  v106[0] = *v16;
  v106[1] = v91;
  v106[2] = v89;
  v106[3] = v90;
  v92 = v14[1];
  v106[4] = *v14;
  v106[5] = v92;
  v93 = v14[3];
  v106[6] = v14[2];
  v106[7] = v93;
  v107 = 1566444395;
  v102 = &unk_1F2572650;
  v105 = 0;
  v90.i64[0] = 0x8000000080000000;
  v90.i64[1] = 0x8000000080000000;
  v109 = veorq_s8(v101, v90);
  sub_1AFD92300(v108, v106, &v102, a10, 0);
  result = v105;
  if (v105 == 1)
  {
    v94 = v103;
    v95 = vsubq_f32(v103, vmulq_n_f32(v101, v100 - v104));
    v95.i32[3] = 0;
    *v96 = v95;
    *a9 = v94;
    *v97 = v101;
  }

  return result;
}

__int128 *sub_1AFD931B8()
{
  if ((atomic_load_explicit(qword_1EB6C1FB0, memory_order_acquire) & 1) == 0)
  {
    sub_1AF0FA2B0();
  }

  return &xmmword_1EB6C1FC0;
}

void *sub_1AFD93208(void *result, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    result = result[103];
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    else
    {
      if (!off_1EB6C3728)
      {
        return result;
      }

      result = off_1EB6C3728(v3);
    }

    *(a2 + 112) = 0;
  }

  return result;
}

uint64_t sub_1AFD93278(float32x4_t *a1, float32x4_t *a2)
{
  v2 = 0;
  v3 = a2[5].f32[0];
  v4 = a1 + 6;
  v5 = -1;
  do
  {
    v6 = v4->f32[0];
    v4 += 12;
    v7 = v6;
    if (v6 < v3)
    {
      v3 = v7;
      v5 = v2;
    }

    ++v2;
  }

  while (v2 != 4);
  v8 = *a2;
  if (byte_1EB6447C4)
  {
    if (v5)
    {
      v9 = a1[13];
      v10 = vsubq_f32(v8, v9);
      v10.i32[3] = 0;
      v11 = a1[37];
      v12 = a1[25];
      v13 = vsubq_f32(v11, v12);
      v13.i32[3] = 0;
      v14 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
      v15 = vsubq_f32(vmulq_f32(v14, v10), vmulq_f32(vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL), v13));
      v16 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
      v16.i32[3] = 0;
      v17 = vmulq_f32(v16, v16);
      v17.i32[0] = vadd_f32(vpadd_f32(*v17.f32, *v17.f32), *&vextq_s8(v17, v17, 8uLL)).u32[0];
      if (v5 == 1)
      {
        v18 = vsubq_f32(v8, a1[1]);
        v18.i32[3] = 0;
        v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
        v20.i32[0] = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v11 = a1[37];
      v12 = a1[25];
      v13 = vsubq_f32(v11, v12);
      v13.i32[3] = 0;
      v14 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
      v17.i32[0] = 0;
    }

    v18 = vsubq_f32(v8, a1[1]);
    v18.i32[3] = 0;
    v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
    v57 = vsubq_f32(vmulq_f32(v14, v18), vmulq_f32(v19, v13));
    v58 = vextq_s8(vextq_s8(v57, v57, 0xCuLL), v57, 8uLL);
    v58.i32[3] = 0;
    v20 = vmulq_f32(v58, v58);
    v20.i32[0] = vadd_f32(vpadd_f32(*v20.i8, *v20.i8), *&vextq_s8(v20, v20, 8uLL)).u32[0];
    v9 = a1[13];
    v59 = 0.0;
    if (v5 == 2)
    {
LABEL_19:
      v65 = vsubq_f32(v12, v9);
      v65.i32[3] = 0;
      v66 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL), v18), vmulq_f32(v19, v65));
      v67 = vextq_s8(vextq_s8(v66, v66, 0xCuLL), v66, 8uLL);
      v67.i32[3] = 0;
      v68 = vmulq_f32(v67, v67);
      LODWORD(v64) = vadd_f32(vpadd_f32(*v68.i8, *v68.i8), *&vextq_s8(v68, v68, 8uLL)).u32[0];
      goto LABEL_39;
    }

LABEL_18:
    v60 = vsubq_f32(v11, v9);
    v60.i32[3] = 0;
    v61 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL), v18), vmulq_f32(v19, v60));
    v62 = vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL);
    v62.i32[3] = 0;
    v63 = vmulq_f32(v62, v62);
    LODWORD(v59) = vadd_f32(vpadd_f32(*v63.i8, *v63.i8), *&vextq_s8(v63, v63, 8uLL)).u32[0];
    v64 = 0.0;
    if (v5 == 3)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v21 = a1[13];
    v22 = vsubq_f32(v8, v21);
    v23 = v22;
    v23.i32[3] = 0;
    v24 = a1[25];
    v25 = a1[37];
    v26 = vsubq_f32(v24, v25);
    v27 = v26;
    v27.i32[3] = 0;
    v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
    v33 = vsubq_f32(v8, v24);
    v29 = vsubq_f32(v21, v25);
    v30 = v29;
    v30.i32[3] = 0;
    v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
    v32 = vmulq_f32(v31, v33);
    v33.i32[3] = 0;
    v34 = vsubq_f32(v8, v25);
    v35 = v34;
    v35.i32[3] = 0;
    v36 = vsubq_f32(v21, v24);
    v37 = v36;
    v37.i32[3] = 0;
    v38 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
    v39 = vsubq_f32(vmulq_f32(v28, v22), vmulq_f32(v38, v26));
    v40 = vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL);
    v40.i32[3] = 0;
    v41 = vmulq_f32(vextq_s8(vextq_s8(v37, v37, 0xCuLL), v37, 8uLL), v34);
    v42 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
    v43 = vsubq_f32(v32, vmulq_f32(v42, v29));
    v44 = vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL);
    v44.i32[3] = 0;
    v45 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
    v46 = vsubq_f32(v41, vmulq_f32(v45, v36));
    v47 = vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL);
    v47.i32[3] = 0;
    v17 = vmulq_f32(v40, v40);
    *v17.f32 = vadd_f32(vpadd_f32(*v17.f32, *v17.f32), *&vextq_s8(v17, v17, 8uLL));
    v48 = vmulq_f32(v44, v44);
    v49 = vadd_f32(vpadd_f32(*v48.i8, *v48.i8), *&vextq_s8(v48, v48, 8uLL));
    v50 = vmulq_f32(v47, v47);
    LODWORD(v51) = vadd_f32(vpadd_f32(*v50.i8, *v50.i8), *&vextq_s8(v50, v50, 8uLL)).u32[0];
    if ((vcgt_f32(*v17.f32, v49).u8[0] & 1) == 0)
    {
      v17.f32[0] = v49.f32[0];
    }

    if (v17.f32[0] <= v51)
    {
      v17.f32[0] = v51;
    }

    if (v5 == 1)
    {
      v52 = a1[1];
      v53 = vsubq_f32(v8, v52);
      v53.i32[3] = 0;
      v54 = vsubq_f32(v52, v25);
      v54.i32[3] = 0;
      v55 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
      v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
      v20.i32[0] = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v24 = a1[25];
    v25 = a1[37];
    v33 = vsubq_f32(v8, v24);
    v33.i32[3] = 0;
    v35 = vsubq_f32(v8, v25);
    v35.i32[3] = 0;
    v27 = vsubq_f32(v24, v25);
    v27.i32[3] = 0;
    v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
    v42 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
    v45 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
    v17.i32[0] = 0;
  }

  v52 = a1[1];
  v53 = vsubq_f32(v8, v52);
  v69 = vmulq_f32(v28, v53);
  v53.i32[3] = 0;
  v54 = vsubq_f32(v52, v25);
  v70 = vmulq_f32(v42, v54);
  v54.i32[3] = 0;
  v72 = vsubq_f32(v52, v24);
  v71 = vmulq_f32(v45, v72);
  v72.i32[3] = 0;
  v55 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
  v73 = vsubq_f32(v69, vmulq_f32(v55, v27));
  v74 = vextq_s8(vextq_s8(v73, v73, 0xCuLL), v73, 8uLL);
  v74.i32[3] = 0;
  v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
  v75 = vsubq_f32(vmulq_f32(v56, v33), v70);
  v76 = vextq_s8(vextq_s8(v75, v75, 0xCuLL), v75, 8uLL);
  v76.i32[3] = 0;
  v77 = vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL);
  v78 = vsubq_f32(vmulq_f32(v77, v35), v71);
  v79 = vextq_s8(vextq_s8(v78, v78, 0xCuLL), v78, 8uLL);
  v79.i32[3] = 0;
  v20 = vmulq_f32(v74, v74);
  *v20.i8 = vadd_f32(vpadd_f32(*v20.i8, *v20.i8), *&vextq_s8(v20, v20, 8uLL));
  v80 = vmulq_f32(v76, v76);
  v81 = vadd_f32(vpadd_f32(*v80.i8, *v80.i8), *&vextq_s8(v80, v80, 8uLL));
  v82 = vmulq_f32(v79, v79);
  LODWORD(v83) = vadd_f32(vpadd_f32(*v82.i8, *v82.i8), *&vextq_s8(v82, v82, 8uLL)).u32[0];
  if ((vcgt_f32(*v20.i8, v81).u8[0] & 1) == 0)
  {
    *v20.i32 = v81.f32[0];
  }

  if (*v20.i32 <= v83)
  {
    *v20.i32 = v83;
  }

  v59 = 0.0;
  if (v5 == 2)
  {
    goto LABEL_34;
  }

  v21 = a1[13];
  v23 = vsubq_f32(v8, v21);
  v23.i32[3] = 0;
  v30 = vsubq_f32(v21, v25);
  v30.i32[3] = 0;
  v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
  v38 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
LABEL_27:
  v84 = vsubq_f32(vmulq_f32(v31, v53), vmulq_f32(v55, v30));
  v85 = vextq_s8(vextq_s8(v84, v84, 0xCuLL), v84, 8uLL);
  v85.i32[3] = 0;
  v86 = vsubq_f32(vmulq_f32(v56, v23), vmulq_f32(v38, v54));
  v87 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
  v87.i32[3] = 0;
  v88 = vsubq_f32(v52, v21);
  v89 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v88, v88, 0xCuLL), v88, 8uLL), v35), vmulq_f32(v45, v88));
  v90 = vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL);
  v90.i32[3] = 0;
  v91 = vmulq_f32(v85, v85);
  v92 = vadd_f32(vpadd_f32(*v91.i8, *v91.i8), *&vextq_s8(v91, v91, 8uLL));
  v93 = vmulq_f32(v87, v87);
  v94 = vadd_f32(vpadd_f32(*v93.i8, *v93.i8), *&vextq_s8(v93, v93, 8uLL));
  v95 = vmulq_f32(v90, v90);
  LODWORD(v96) = vadd_f32(vpadd_f32(*v95.i8, *v95.i8), *&vextq_s8(v95, v95, 8uLL)).u32[0];
  if ((vcgt_f32(v92, v94).u8[0] & 1) == 0)
  {
    v92.f32[0] = v94.f32[0];
  }

  if (v92.f32[0] <= v96)
  {
    v59 = v96;
  }

  else
  {
    v59 = v92.f32[0];
  }

  v64 = 0.0;
  if (v5 != 3)
  {
    v8 = *a2;
    v52 = a1[1];
    v24 = a1[25];
    v53 = vsubq_f32(*a2, v52);
    v53.i32[3] = 0;
    v33 = vsubq_f32(*a2, v24);
    v33.i32[3] = 0;
    v72 = vsubq_f32(v52, v24);
    v72.i32[3] = 0;
    v55 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
    v77 = vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL);
    v42 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
LABEL_34:
    v97 = a1[13];
    v98 = vsubq_f32(v8, v97);
    v99 = v98;
    v99.i32[3] = 0;
    v100 = vsubq_f32(v97, v24);
    v101 = vmulq_f32(v55, v100);
    v100.i32[3] = 0;
    v102 = vsubq_f32(v52, v97);
    v103 = vmulq_f32(v42, v102);
    v102.i32[3] = 0;
    v104 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v100, v100, 0xCuLL), v100, 8uLL), v53), v101);
    v105 = vextq_s8(vextq_s8(v104, v104, 0xCuLL), v104, 8uLL);
    v105.i32[3] = 0;
    v106 = vsubq_f32(vmulq_f32(v77, v98), vmulq_f32(vextq_s8(vextq_s8(v99, v99, 0xCuLL), v99, 8uLL), v72));
    v107 = vextq_s8(vextq_s8(v106, v106, 0xCuLL), v106, 8uLL);
    v107.i32[3] = 0;
    v108 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v102, v102, 0xCuLL), v102, 8uLL), v33), v103);
    v109 = vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL);
    v109.i32[3] = 0;
    v110 = vmulq_f32(v105, v105);
    v111 = vadd_f32(vpadd_f32(*v110.i8, *v110.i8), *&vextq_s8(v110, v110, 8uLL));
    v112 = vmulq_f32(v107, v107);
    v113 = vadd_f32(vpadd_f32(*v112.i8, *v112.i8), *&vextq_s8(v112, v112, 8uLL));
    v114 = vmulq_f32(v109, v109);
    LODWORD(v115) = vadd_f32(vpadd_f32(*v114.i8, *v114.i8), *&vextq_s8(v114, v114, 8uLL)).u32[0];
    if (vcgt_f32(v111, v113).u8[0])
    {
      v113.f32[0] = v111.f32[0];
    }

    if (v113.f32[0] <= v115)
    {
      v64 = v115;
    }

    else
    {
      v64 = v113.f32[0];
    }
  }

LABEL_39:
  v17.i32[1] = v20.i32[0];
  v17.i64[1] = __PAIR64__(LODWORD(v64), LODWORD(v59));
  v116 = vabsq_f32(v17);
  v117 = -1.0e18;
  if (v116.f32[0] > -1.0e18)
  {
    v118 = 0;
  }

  else
  {
    v118 = -1;
  }

  if (v116.f32[0] > -1.0e18)
  {
    v117 = v116.f32[0];
  }

  if (v116.f32[1] > v117)
  {
    v118 = 1;
    v117 = v116.f32[1];
  }

  if (v116.f32[2] > v117)
  {
    v118 = 2;
    v117 = v116.f32[2];
  }

  if (v116.f32[3] <= v117)
  {
    return v118;
  }

  else
  {
    return 3;
  }
}

float32x4_t *sub_1AFD93898(float32x4_t *result, float32x4_t *a2)
{
  v2 = result[50].u32[0];
  if (v2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = result[50].f32[1] * result[50].f32[1];
  v5 = result + 1;
  LODWORD(result) = -1;
  do
  {
    v6 = *v5;
    v5 += 12;
    v7 = vsubq_f32(v6, *a2);
    v7.i32[3] = 0;
    v8 = vmulq_f32(v7, v7);
    v9 = vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0];
    if (v9 >= v4)
    {
      result = result;
    }

    else
    {
      result = v3;
    }

    if (v9 < v4)
    {
      v4 = v9;
    }

    ++v3;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_1AFD93904(float32x4_t *a1, uint64_t a2)
{
  v4 = a1[50].i32[0];
  if (v4 == 4)
  {
    v4 = sub_1AFD93278(a1, a2);
    sub_1AFD93208(a1, &a1[12 * v4 + 1]);
  }

  else
  {
    a1[50].i32[0] = v4 + 1;
  }

  v5 = v4 & ~(v4 >> 31);
  v6 = &a1[12 * v5];
  v6[1] = *a2;
  v6[2] = *(a2 + 16);
  v6[3] = *(a2 + 32);
  v6[4] = *(a2 + 48);
  v6[5] = *(a2 + 64);
  v6[6] = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(v6 + 156) = *(a2 + 140);
  v6[8] = v8;
  v6[9] = v9;
  v6[7] = v7;
  v6[11] = *(a2 + 160);
  v6[12] = *(a2 + 176);
  v10 = a1[51].i64[1];
  if (v10 && (*(v10 + 8) & 1) != 0)
  {
    (**v10)(v10, a1, v5);
  }

  return v5;
}

void *sub_1AFD93A10(void *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *(result + 200);
  if (v3 >= 1)
  {
    v4 = result;
    v5 = v3 + 1;
    v6 = &result[24 * v3 - 3];
    do
    {
      v7 = *(v6 - 38);
      v8 = vmulq_f32(*a2, v7);
      v9 = vmulq_f32(v7, a2[1]);
      v10 = vmulq_f32(v7, a2[2]);
      v10.i32[3] = 0;
      *v8.f32 = vadd_f32(vpadd_f32(*v8.f32, *v9.i8), vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL)));
      *&v8.u32[2] = vpadd_f32(vpadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), 0);
      v11 = vaddq_f32(v8, a2[3]);
      *(v6 - 26) = v11;
      v12 = *(v6 - 34);
      v13 = vmulq_f32(*a3, v12);
      v14 = vmulq_f32(v12, a3[1]);
      v15 = vmulq_f32(v12, a3[2]);
      v15.i32[3] = 0;
      *v13.f32 = vadd_f32(vpadd_f32(*v13.f32, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
      *&v13.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
      v16 = vaddq_f32(v13, a3[3]);
      *(v6 - 30) = v16;
      v17 = vsubq_f32(v11, v16);
      v17.i32[3] = 0;
      v18 = vmulq_f32(*(v6 - 22), v17);
      *(v6 - 18) = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).u32[0];
      ++*v6;
      v6 -= 48;
      --v5;
    }

    while (v5 > 1);
    v19 = 192 * v3;
    do
    {
      v20 = v4 + v19;
      v21 = *(v4 + v19 - 96);
      v22 = *(v4 + 804);
      if (v21 <= v22 && (v23 = vsubq_f32(*(v20 - 144), vsubq_f32(*(v20 - 128), vmulq_n_f32(*(v20 - 112), v21))), v23.i32[3] = 0, v24 = vmulq_f32(v23, v23), vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0] <= (v22 * v22)))
      {
        if (off_1EB6C3730)
        {
          result = (off_1EB6C3730)(v20 - 176, *(v4 + 784), *(v4 + 792));
        }
      }

      else
      {
        result = sub_1AFD93BB4(v4, (v3 - 1));
      }

      --v3;
      v19 -= 192;
    }

    while ((v3 + 1) > 1);
  }

  return result;
}

void *sub_1AFD93BB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 824);
  if (v4 && (v4[8] & 4) != 0)
  {
    (*(*v4 + 16))(v4, a1, a2);
  }

  v5 = (a1 + 16 + 192 * v2);
  result = sub_1AFD93208(a1, v5);
  v7 = *(a1 + 800) - 1;
  if (v7 != v2)
  {
    v7 = a1 + 16 + 192 * v7;
    v8 = *(v7 + 16);
    *v5 = *v7;
    v5[1] = v8;
    v9 = *(v7 + 48);
    v5[2] = *(v7 + 32);
    v5[3] = v9;
    v5[4] = *(v7 + 64);
    v10 = *(v7 + 96);
    v11 = *(v7 + 112);
    v12 = *(v7 + 128);
    *(v5 + 140) = *(v7 + 140);
    v5[7] = v11;
    v5[8] = v12;
    v5[6] = v10;
    v5[5] = *(v7 + 80);
    v13 = *(v7 + 176);
    v5[10] = *(v7 + 160);
    v5[11] = v13;
    *(v7 + 112) = 0;
    *(v7 + 120) = 0;
    *(v7 + 128) = 0;
    *(v7 + 124) = 0;
    *(v7 + 152) = 0;
    LODWORD(v7) = *(a1 + 800) - 1;
  }

  *(a1 + 800) = v7;
  return result;
}

void sub_1AFD93CAC(uint64_t result, uint64_t a2, float32x4_t *a3, float a4)
{
  v4 = *(result + 4);
  if (v4 >= 2)
  {
    v9 = 0;
    v10 = *(*(result + 16) + 16 * v4 - 16);
    v11 = vmulq_f32(v10, *a3);
    v12 = vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0] + a4;
    while (1)
    {
      v13 = *(*(result + 16) + 16 * v9);
      v14 = vmulq_f32(v13, *a3);
      v15 = vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0] + a4;
      if (v12 < 0.0)
      {
        break;
      }

      if (v15 < 0.0)
      {
        v20 = *(a2 + 4);
        if (v20 == *(a2 + 8))
        {
          v21 = v20 ? 2 * v20 : 1;
          if (v20 < v21)
          {
            v38 = v10;
            v42 = *(*(result + 16) + 16 * v9);
            if (v21)
            {
              v22 = sub_1AFDA7294(16 * v21, 16);
              v10 = v38;
              v13 = v42;
              v23 = v22;
              v20 = *(a2 + 4);
            }

            else
            {
              v23 = 0;
            }

            if (v20 >= 1)
            {
              v29 = 0;
              v30 = 16 * v20;
              do
              {
                *(v23 + v29) = *(*(a2 + 16) + v29);
                v29 += 16;
              }

              while (v30 != v29);
            }

            v31 = *(a2 + 16);
            if (v31 && *(a2 + 24) == 1)
            {
              sub_1AFDA72A0(v31);
              v10 = v38;
              v13 = v42;
            }

            *(a2 + 24) = 1;
            *(a2 + 16) = v23;
            *(a2 + 8) = v21;
            v20 = *(a2 + 4);
          }
        }

        *(*(a2 + 16) + 16 * v20) = vaddq_f32(v10, vmulq_n_f32(vsubq_f32(v13, v10), v12 / (v12 - v15)));
        v32 = *(a2 + 8);
        v16 = *(a2 + 4) + 1;
        *(a2 + 4) = v16;
        if (v16 == v32)
        {
          v17 = v16 ? 2 * v16 : 1;
          if (v16 < v17)
          {
            if (v17)
            {
              v44 = v13;
              v33 = sub_1AFDA7294(16 * v17, 16);
              v13 = v44;
              v19 = v33;
              v16 = *(a2 + 4);
            }

            else
            {
              v19 = 0;
            }

            if (v16 >= 1)
            {
              v36 = 0;
              v37 = 16 * v16;
              do
              {
                *(v19 + v36) = *(*(a2 + 16) + v36);
                v36 += 16;
              }

              while (v37 != v36);
            }

            v28 = *(a2 + 16);
            if (v28)
            {
              v24 = v13;
              if (*(a2 + 24) == 1)
              {
                goto LABEL_63;
              }

              goto LABEL_65;
            }

LABEL_64:
            v24 = v13;
            goto LABEL_65;
          }
        }

LABEL_49:
        v24 = v13;
        goto LABEL_66;
      }

LABEL_67:
      ++v9;
      v12 = v15;
      v10 = v13;
      if (v9 == v4)
      {
        return;
      }
    }

    if (v15 < 0.0)
    {
      v16 = *(a2 + 4);
      if (v16 == *(a2 + 8))
      {
        v17 = v16 ? 2 * v16 : 1;
        if (v16 < v17)
        {
          if (v17)
          {
            v41 = *(*(result + 16) + 16 * v9);
            v18 = sub_1AFDA7294(16 * v17, 16);
            v13 = v41;
            v19 = v18;
            v16 = *(a2 + 4);
          }

          else
          {
            v19 = 0;
          }

          if (v16 >= 1)
          {
            v26 = 0;
            v27 = 16 * v16;
            do
            {
              *(v19 + v26) = *(*(a2 + 16) + v26);
              v26 += 16;
            }

            while (v27 != v26);
          }

          v28 = *(a2 + 16);
          if (v28)
          {
            v24 = v13;
            if (*(a2 + 24))
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }

          goto LABEL_64;
        }
      }

      goto LABEL_49;
    }

    v24 = vaddq_f32(v10, vmulq_n_f32(vsubq_f32(v13, v10), v12 / (v12 - v15)));
    v16 = *(a2 + 4);
    if (v16 == *(a2 + 8))
    {
      v17 = v16 ? 2 * v16 : 1;
      if (v16 < v17)
      {
        if (v17)
        {
          v39 = v24;
          v43 = *(*(result + 16) + 16 * v9);
          v25 = sub_1AFDA7294(16 * v17, 16);
          v24 = v39;
          v13 = v43;
          v19 = v25;
          v16 = *(a2 + 4);
        }

        else
        {
          v19 = 0;
        }

        if (v16 >= 1)
        {
          v34 = 0;
          v35 = 16 * v16;
          do
          {
            *(v19 + v34) = *(*(a2 + 16) + v34);
            v34 += 16;
          }

          while (v35 != v34);
        }

        v28 = *(a2 + 16);
        if (v28 && (*(a2 + 24) & 1) != 0)
        {
LABEL_63:
          v40 = v24;
          v45 = v13;
          sub_1AFDA72A0(v28);
          v24 = v40;
          v13 = v45;
        }

LABEL_65:
        *(a2 + 24) = 1;
        *(a2 + 16) = v19;
        *(a2 + 8) = v17;
        v16 = *(a2 + 4);
      }
    }

LABEL_66:
    *(*(a2 + 16) + 16 * v16) = v24;
    ++*(a2 + 4);
    goto LABEL_67;
  }
}

BOOL sub_1AFD94034(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, float *a6, float a7)
{
  _Q4 = *a4;
  v8 = vmulq_f32(*a3, *a4);
  LODWORD(v9) = vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).u32[0];
  _S3 = *(a1 + 32);
  __asm { FMLA            S2, S3, V4.S[2] }

  _S5 = *(a2 + 40);
  __asm { FMLA            S3, S5, V4.S[2] }

  v18.i64[0] = *(a2 + 16);
  v18.i64[1] = *(a1 + 20);
  v19.i64[0] = *a2;
  v19.i64[1] = *(a1 + 4);
  v20.i64[0] = *(a2 + 32);
  v20.i64[1] = *(a1 + 36);
  _Q18 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v18, *_Q4.f32, 1), v19, _Q4.f32[0]), v20, _Q4, 2);
  v22 = vmovn_s32(vcltzq_f32(_Q18));
  if (v22.i8[6])
  {
    _S7 = -*(a5 + 136);
  }

  else
  {
    _S7 = *(a5 + 136);
  }

  if (v22.i8[0])
  {
    v24 = -a6[32];
  }

  else
  {
    v24 = a6[32];
  }

  if (v22.i8[2])
  {
    v25 = -a6[33];
  }

  else
  {
    v25 = a6[33];
  }

  v26 = a6[34];
  if (_S3 < 0.0)
  {
    v26 = -v26;
  }

  __asm { FMLA            S2, S7, V18.S[3] }

  v28 = (vmuls_lane_f32(v25, *_Q18.f32, 1) + (v24 * _Q18.f32[0])) + (v26 * _S3);
  if (_S2 <= *(a5 + 144))
  {
    _S2 = *(a5 + 144);
  }

  if (v28 <= a6[36])
  {
    v28 = a6[36];
  }

  v29 = _S2 + v28;
  v30 = v9 + v29;
  v31 = v29 - v9;
  if (v30 < v31)
  {
    v31 = v30;
  }

  return v31 <= a7;
}

uint64_t sub_1AFD9416C(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v10 = a1[7];
  v11 = vmulq_f32(*a3, v10);
  v12 = vmulq_f32(v10, a3[1]);
  v13 = vmulq_f32(v10, a3[2]);
  v13.i32[3] = 0;
  *v11.f32 = vadd_f32(vpadd_f32(*v11.f32, *v12.i8), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
  *&v11.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
  v14 = vaddq_f32(v11, a3[3]);
  v15 = a2[7];
  v16 = vmulq_f32(*a4, v15);
  v17 = vmulq_f32(v15, a4[1]);
  v18 = a4[3];
  v19 = vmulq_f32(v15, a4[2]);
  v20 = vextq_s8(v16, v16, 8uLL);
  v19.i32[3] = 0;
  ++dword_1EB6C23A0;
  *v16.f32 = vadd_f32(vpadd_f32(*v16.f32, *v17.i8), vzip1_s32(*v20.f32, *&vextq_s8(v17, v17, 8uLL)));
  *&v16.u32[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  v21 = vsubq_f32(v14, vaddq_f32(v16, v18));
  v21.i32[3] = 0;
  v106 = v21;
  v111[0] = v21;
  v22 = a1[2].u32[3];
  if (v22 < 1)
  {
    v27 = 3.4028e38;
  }

  else
  {
    v23 = 0;
    v24 = dword_1EB6C3738;
    v25 = byte_1EB6447C5;
    v26 = 48 * v22;
    v27 = 3.4028e38;
    do
    {
      v28 = a1[3].i64[1] + v23;
      v21.i64[0] = *(v28 + 32);
      v21.i32[2] = *(v28 + 40);
      v29 = v21;
      v29.i32[3] = 0;
      v30 = vmulq_f32(v21, a3[2]);
      v31 = vmulq_f32(v29, *a3);
      v32 = vmulq_f32(v29, a3[1]);
      v30.i32[3] = 0;
      *v32.f32 = vadd_f32(vpadd_f32(*v31.i8, *v32.f32), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
      v33 = vextq_s8(v30, v30, 8uLL);
      *&v32.u32[2] = vpadd_f32(vpadd_f32(*v30.i8, *v33.f32), 0);
      v34 = vmulq_f32(v32, v106);
      *v33.f32 = vpadd_f32(*v34.i8, *v34.i8);
      v35 = vextq_s8(v34, v34, 8uLL);
      *v35.f32 = vadd_f32(*v33.f32, *v35.f32);
      v33.i64[0] = 0;
      v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v33, v35), 0), vnegq_f32(v32), v32);
      dword_1EB6C3738 = ++v24;
      if ((v25 & 1) != 0 && !sub_1AFD94034(a3, a4, v111, &v110, a1, a2->f32, v27))
      {
        v25 = 1;
      }

      else
      {
        ++dword_1EB6C373C;
        v109 = 0.0;
        result = sub_1AF0FA4A4(a1, a2, a3, a4, &v110, &v109, &v108, &v107);
        if (!result)
        {
          return result;
        }

        v37 = v109;
        if (v109 < v27)
        {
          *a5 = v110;
          v27 = v37;
        }

        v24 = dword_1EB6C3738;
        v25 = byte_1EB6447C5;
      }

      v23 += 48;
    }

    while (v26 != v23);
  }

  v38 = a2[2].u32[3];
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = dword_1EB6C3738;
    v41 = byte_1EB6447C5;
    v42 = 48 * v38;
    do
    {
      v43 = a2[3].i64[1] + v39;
      v21.i64[0] = *(v43 + 32);
      v21.i32[2] = *(v43 + 40);
      v44 = v21;
      v44.i32[3] = 0;
      v45 = vmulq_f32(v21, a4[2]);
      v46 = vmulq_f32(v44, *a4);
      v47 = vmulq_f32(v44, a4[1]);
      v45.i32[3] = 0;
      *v47.f32 = vadd_f32(vpadd_f32(*v46.i8, *v47.f32), vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v47, v47, 8uLL)));
      v48 = vextq_s8(v45, v45, 8uLL);
      *&v47.u32[2] = vpadd_f32(vpadd_f32(*v45.i8, *v48.f32), 0);
      v49 = vmulq_f32(v47, v106);
      *v48.f32 = vpadd_f32(*v49.i8, *v49.i8);
      v50 = vextq_s8(v49, v49, 8uLL);
      *v50.f32 = vadd_f32(*v48.f32, *v50.f32);
      v48.i64[0] = 0;
      v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v48, v50), 0), vnegq_f32(v47), v47);
      dword_1EB6C3738 = ++v40;
      if ((v41 & 1) != 0 && !sub_1AFD94034(a3, a4, v111, &v110, a1, a2->f32, v27))
      {
        v41 = 1;
      }

      else
      {
        ++dword_1EB6C373C;
        v109 = 0.0;
        result = sub_1AF0FA4A4(a1, a2, a3, a4, &v110, &v109, &v108, &v107);
        if (!result)
        {
          return result;
        }

        v51 = v109;
        if (v109 < v27)
        {
          *a5 = v110;
          v27 = v51;
        }

        v40 = dword_1EB6C3738;
        v41 = byte_1EB6447C5;
      }

      v39 += 48;
    }

    while (v42 != v39);
  }

  v52 = a1[4].i32[3];
  if (v52 >= 1)
  {
    v53 = 0;
    v54 = a2[4].i32[3];
    v100 = -1;
    v101 = -1;
    do
    {
      if (v54 >= 1)
      {
        v55 = 0;
        v56 = *(a1[5].i64[1] + 16 * v53);
        v57 = vmulq_f32(v56, *a3);
        v58 = vmulq_f32(v56, a3[1]);
        v59 = vmulq_f32(v56, a3[2]);
        v59.i32[3] = 0;
        *v57.i8 = vadd_f32(vpadd_f32(*v57.i8, *v58.i8), vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)));
        *v59.i8 = vpadd_f32(vpadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)), 0);
        *v58.i8 = vext_s8(*v57.i8, *v59.i8, 4uLL);
        v58.i64[1] = v57.i64[0];
        v103 = v58;
        v57.i64[1] = v59.i64[0];
        v105 = v57;
        do
        {
          v60 = *(a2[5].i64[1] + 16 * v55);
          v61 = vmulq_f32(v60, *a4);
          v62 = vmulq_f32(v60, a4[1]);
          v63 = vmulq_f32(v60, a4[2]);
          v20 = vextq_s8(v62, v62, 8uLL);
          v63.i32[3] = 0;
          *v64.f32 = vadd_f32(vpadd_f32(*v61.f32, *v62.i8), vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *v20.f32));
          *v63.i8 = vpadd_f32(vpadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)), 0);
          *v61.f32 = vext_s8(*v64.f32, *v63.i8, 4uLL);
          v61.i64[1] = v64.i64[0];
          v64.i64[1] = v63.i64[0];
          v65 = vsubq_f32(vmulq_f32(v105, v61), vmulq_f32(v103, v64));
          v66 = vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL);
          v66.i32[3] = 0;
          if (fabsf(v66.f32[0]) > 0.000001 || fabsf(v66.f32[1]) > 0.000001 || fabsf(v66.f32[2]) > 0.000001)
          {
            v104 = v64;
            v67 = vmulq_f32(v66, v66);
            v68 = vmulq_n_f32(v66, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0]));
            v69 = vmulq_f32(v68, v106);
            *v64.f32 = vpadd_f32(*v69.i8, *v69.i8);
            v70 = vextq_s8(v69, v69, 8uLL);
            *v70.f32 = vadd_f32(*v64.f32, *v70.f32);
            v64.i64[0] = 0;
            v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v64, v70), 0), vnegq_f32(v68), v68);
            ++dword_1EB6C3738;
            if (byte_1EB6447C5 != 1 || sub_1AFD94034(a3, a4, v111, &v110, a1, a2->f32, v27))
            {
              ++dword_1EB6C373C;
              v109 = 0.0;
              result = sub_1AF0FA4A4(a1, a2, a3, a4, &v110, &v109, &v108, &v107);
              if (!result)
              {
                return result;
              }

              v71 = v109;
              if (v109 < v27)
              {
                *a5 = v110;
                v98 = v104;
                v99 = v107;
                v96 = v108;
                v97 = v105;
                v100 = v55;
                v101 = v53;
                v27 = v71;
              }

              v54 = a2[4].i32[3];
            }
          }

          ++v55;
        }

        while (v55 < v54);
        v52 = a1[4].i32[3];
      }

      ++v53;
    }

    while (v53 < v52);
    if ((v101 & 0x80000000) == 0 && (v100 & 0x80000000) == 0)
    {
      v72 = vsubq_f32(v99, v96);
      v72.i32[3] = 0;
      v73 = vmulq_f32(v97, v98);
      v74 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), vpadd_f32(*v73.i8, *v73.i8)).f32[0];
      v75 = vmulq_f32(v97, v72);
      LODWORD(v76) = vadd_f32(*&vextq_s8(v75, v75, 8uLL), vpadd_f32(*v75.i8, *v75.i8)).u32[0];
      v77 = vmulq_f32(v98, v72);
      v78 = 1.0 - (v74 * v74);
      v79 = -vadd_f32(*&vextq_s8(v77, v77, 8uLL), vpadd_f32(*v77.i8, *v77.i8)).f32[0];
      v80 = 0.0;
      if (v78 != 0.0)
      {
        v81 = (v76 + (v79 * v74)) / v78;
        v80 = -1.0e30;
        if (v81 >= -1.0e30)
        {
          v80 = v81;
          if (v81 > 1.0e30)
          {
            v80 = 1.0e30;
          }
        }
      }

      v82 = v79 + (v80 * v74);
      if (v82 >= -1.0e30)
      {
        if (v82 > 1.0e30)
        {
          v84 = v76 + (v74 * 1.0e30);
          v80 = -1.0e30;
          v82 = 1.0e30;
          if (v84 >= -1.0e30)
          {
            v82 = 1.0e30;
            v80 = v84;
            if (v84 > 1.0e30)
            {
              v80 = 1.0e30;
              v82 = 1.0e30;
            }
          }
        }
      }

      else
      {
        v82 = -1.0e30;
        v83 = v76 + (v74 * -1.0e30);
        if (v83 >= -1.0e30)
        {
          v80 = 1.0e30;
          if (v83 <= 1.0e30)
          {
            v80 = v83;
          }
        }

        else
        {
          v80 = -1.0e30;
        }
      }

      v85 = vmulq_n_f32(v98, v82);
      v85.i32[3] = 0;
      v86 = vsubq_f32(v72, vmulq_n_f32(v97, v80));
      v86.i32[3] = 0;
      v87 = vaddq_f32(v85, v86);
      v88 = vmulq_f32(v87, v87);
      v89 = vadd_f32(vpadd_f32(*v88.i8, *v88.i8), *&vextq_s8(v88, v88, 8uLL)).f32[0];
      if (v89 > 0.00000011921)
      {
        v90 = sqrtf(v89);
        v91 = vmulq_n_f32(v87, 1.0 / v90);
        v92 = vmulq_f32(v91, v106);
        *v20.f32 = vpadd_f32(*v92.i8, *v92.i8);
        v93 = vextq_s8(v92, v92, 8uLL);
        *v93.f32 = vadd_f32(*v93.f32, *v20.f32);
        v20.i64[0] = 0;
        v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v20, v93), 0), vnegq_f32(v91), v91);
        v108 = vaddq_f32(v99, v85);
        (*(*a6 + 32))(a6, &v110, &v108, -v90);
      }
    }
  }

  v94 = vmulq_f32(*a5, v106);
  if (vadd_f32(vpadd_f32(*v94.i8, *v94.i8), *&vextq_s8(v94, v94, 8uLL)).f32[0] < 0.0)
  {
    *a5 = vnegq_f32(*a5);
  }

  return 1;
}

void sub_1AFD94970(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, float a6, float a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  v15 = a4;
  v76 = 1;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v19 = *(a4 + 4);
  if (v19 >= 1)
  {
    v76 = 1;
    v75 = sub_1AFDA7294(16 * v19, 16);
    v74 = v19;
  }

  v20 = *(a2 + 44);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *a3;
    v23 = (*(a2 + 56) + 40);
    v24 = -1;
    v25 = 3.4028e38;
    do
    {
      a12.i64[0] = *(v23 - 1);
      a12.i32[2] = *v23;
      v26 = vmulq_f32(a12, a3[2]);
      a12.i32[3] = 0;
      v27 = vmulq_f32(v22, a12);
      v28 = vmulq_f32(a12, a3[1]);
      v26.i32[3] = 0;
      *v28.f32 = vadd_f32(vpadd_f32(*v27.i8, *v28.f32), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
      *&v28.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
      v29 = vmulq_f32(v28, *a1);
      *v26.i8 = vpadd_f32(*v29.i8, *v29.i8);
      a12 = vextq_s8(v29, v29, 8uLL);
      a12.f32[0] = vadd_f32(*v26.i8, *a12.f32).f32[0];
      if (a12.f32[0] < v25)
      {
        v25 = a12.f32[0];
        v24 = v21;
      }

      ++v21;
      v23 += 12;
    }

    while (v20 != v21);
    if ((v24 & 0x80000000) == 0)
    {
      v69 = a1;
      v30 = *(a2 + 56) + 48 * v24;
      v31 = *(v30 + 4);
      if (v31 < 1)
      {
        v50 = v15;
      }

      else
      {
        v32 = 0;
        v33 = &v72;
        do
        {
          v34 = *(v30 + 16);
          v35 = *(v34 + 4 * v32);
          if (v31 - 1 == v32)
          {
            v36 = 0;
          }

          else
          {
            v36 = v32 + 1;
          }

          v37 = *(v34 + 4 * v36);
          v38 = *(a2 + 24);
          v39 = *(v38 + 16 * v35);
          v40 = vsubq_f32(v39, *(v38 + 16 * v37));
          v41 = a3[2];
          v42 = vmulq_f32(v41, v40);
          v40.i32[3] = 0;
          v43 = a3[1];
          v44 = vmulq_f32(*a3, v40);
          v45 = vmulq_f32(v43, v40);
          v42.i32[3] = 0;
          *v45.i8 = vadd_f32(vpadd_f32(*v44.i8, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
          v46 = vextq_s8(v42, v42, 8uLL);
          *v42.i8 = vpadd_f32(*v42.i8, *v46.f32);
          v46.i64[0] = *(v30 + 32);
          v46.i32[2] = *(v30 + 40);
          v47 = vmulq_f32(v41, v46);
          v46.i32[3] = 0;
          v48 = vmulq_f32(*a3, v46);
          v49 = vmulq_f32(v43, v46);
          v50 = v33;
          *v42.i8 = vpadd_f32(*v42.i8, 0);
          v47.i32[3] = 0;
          *v49.i8 = vadd_f32(vpadd_f32(*v48.i8, *v49.i8), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
          *v47.i8 = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
          *v48.i8 = vext_s8(*v45.i8, *v42.i8, 4uLL);
          *v42.i8 = vmul_f32(*v42.i8, *v49.i8);
          *v49.i8 = vsub_f32(vmul_f32(*v45.i8, vext_s8(*v49.i8, *v47.i8, 4uLL)), vmul_f32(*v48.i8, *v49.i8));
          *v45.i8 = vext_s8(*v49.i8, vsub_f32(*v42.i8, vmul_f32(*v45.i8, *v47.i8)), 4uLL);
          v45.i64[1] = v49.u32[0];
          v33 = v15;
          v42.i64[0] = 0x8000000080000000;
          v42.i64[1] = 0x8000000080000000;
          v51 = veorq_s8(v45, v42);
          v52 = vmulq_f32(v39, *a3);
          v53 = vmulq_f32(v39, v43);
          v54 = vmulq_f32(v39, v41);
          v54.i32[3] = 0;
          *v41.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v52, v52, 8uLL), *&vextq_s8(v53, v53, 8uLL)), vpadd_f32(*v52.i8, *v53.i8));
          *&v41.u32[2] = vpadd_f32(vpadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)), 0);
          v55 = vmulq_f32(vaddq_f32(v41, a3[3]), v51);
          v71 = v51;
          sub_1AFD93CAC(v15, v50, &v71, -vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0]);
          if ((*(v15 + 4) & 0x80000000) != 0 && (*(v15 + 8) & 0x80000000) != 0)
          {
            v56 = *(v15 + 16);
            if (v56 && *(v15 + 24) == 1)
            {
              sub_1AFDA72A0(v56);
            }

            *(v15 + 24) = 1;
            *(v15 + 16) = 0;
            *(v15 + 8) = 0;
          }

          ++v32;
          *(v15 + 4) = 0;
          v15 = v50;
        }

        while (v31 != v32);
      }

      v57 = *(v50 + 4);
      if (v57 >= 1)
      {
        v58 = 0;
        v22.i64[0] = *(v30 + 32);
        v22.i32[2] = *(v30 + 40);
        v59 = v22;
        v59.i32[3] = 0;
        v60 = vmulq_f32(v22, a3[2]);
        v61 = vmulq_f32(v59, *a3);
        v62 = vmulq_f32(v59, a3[1]);
        v60.i32[3] = 0;
        *v63.f32 = vadd_f32(vpadd_f32(*v61.i8, *v62.i8), vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *&vextq_s8(v62, v62, 8uLL)));
        *&v63.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
        v64 = vmulq_f32(v63, a3[3]);
        v65 = *(v30 + 44) - vadd_f32(vpadd_f32(*v64.i8, *v64.i8), *&vextq_s8(v64, v64, 8uLL)).f32[0];
        v70 = v63;
        do
        {
          v66 = *(v50 + 16);
          v67 = vmulq_f32(v63, *(v66 + 16 * v58));
          v68 = v65 + vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0];
          if (v68 <= a6)
          {
            v68 = a6;
          }

          if (v68 <= a7)
          {
            v71 = *(v66 + 16 * v58);
            (*(*a5 + 32))(a5, v69, &v71);
            v63 = v70;
            v57 = *(v50 + 4);
          }

          ++v58;
        }

        while (v58 < v57);
      }
    }
  }

  if (v75)
  {
    if (v76 == 1)
    {
      sub_1AFDA72A0(v75);
    }
  }
}

void sub_1AFD94D84(float32x4_t *result, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, float a7, float a8, double a9, float32x4_t a10, double a11, float32x4_t a12, float32x4_t a13)
{
  v17 = vmulq_f32(*result, *result);
  *v18.f32 = vpadd_f32(*v17.i8, *v17.i8);
  *v17.i32 = sqrtf(vadd_f32(*v18.f32, *&vextq_s8(v17, v17, 8uLL)).f32[0]);
  v18.i32[0] = 1.0;
  v19 = vmulq_n_f32(*result, 1.0 / *v17.i32);
  v58[0] = v19;
  v20 = *(a3 + 44);
  v21 = *(a3 + 56);
  if (v20 < 1)
  {
    v24 = -1;
  }

  else
  {
    v22 = 0;
    v18 = a5[1];
    a10 = a5[2];
    v23 = (v21 + 40);
    v24 = -1;
    LODWORD(a11) = -8388609;
    a12.i64[0] = 0;
    do
    {
      a13.i64[0] = *(v23 - 1);
      a13.i32[2] = *v23;
      v25 = vmulq_f32(a13, a10);
      a13.i32[3] = 0;
      v26 = vmulq_f32(*a5, a13);
      v27 = vmulq_f32(a13, v18);
      v25.i32[3] = 0;
      *v27.f32 = vadd_f32(vpadd_f32(*v26.i8, *v27.f32), vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)));
      *&v27.u32[2] = vpadd_f32(vpadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)), 0);
      v28 = vmulq_f32(v19, v27);
      *v25.i8 = vpadd_f32(*v28.i8, *v28.i8);
      a13 = vextq_s8(v28, v28, 8uLL);
      *a13.f32 = vadd_f32(*v25.i8, *a13.f32);
      if (a13.f32[0] > *&a11)
      {
        *&a11 = a13.f32[0];
        v24 = v22;
      }

      ++v22;
      v23 += 12;
    }

    while (v20 != v22);
  }

  v57 = 1;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v29 = v21 + 48 * v24;
  v30 = *(v29 + 4);
  if (v30 >= 1)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v34 = *(*(a3 + 24) + 16 * *(*(v29 + 16) + 4 * v31));
      v35 = *a5;
      v36 = a5[1];
      a10 = a5[2];
      a12 = a5[3];
      if (v32 != v31)
      {
        goto LABEL_24;
      }

      v37 = v31 ? 2 * v31 : 1;
      if (v32 >= v37)
      {
        goto LABEL_24;
      }

      v48 = a5[2];
      v49 = a5[1];
      v50 = *a5;
      v51 = *(*(a3 + 24) + 16 * *(*(v29 + 16) + 4 * v31));
      v52 = a5[3];
      if (v37)
      {
        v38 = sub_1AFDA7294(16 * v37, 16);
        if (v31)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v38 = 0;
        if (v31)
        {
LABEL_17:
          v39 = v32;
          v40 = v38;
          v41 = v33;
          do
          {
            v42 = *v41++;
            *v40++ = v42;
            --v39;
          }

          while (v39);
LABEL_22:
          sub_1AFDA72A0(v33);
          goto LABEL_23;
        }
      }

      if (v33)
      {
        goto LABEL_22;
      }

LABEL_23:
      v33 = v38;
      v32 = v37;
      v34 = v51;
      a12 = v52;
      v36 = v49;
      v35 = v50;
      a10 = v48;
LABEL_24:
      v43 = vmulq_f32(v35, v34);
      v44 = vmulq_f32(v34, v36);
      v18 = vmulq_f32(v34, a10);
      *&a11 = vextq_s8(v44, v44, 8uLL).u64[0];
      *a10.f32 = vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&a11);
      v18.i32[3] = 0;
      *v43.f32 = vadd_f32(vpadd_f32(*v43.f32, *v44.i8), *a10.f32);
      *&v43.u32[2] = vpadd_f32(vpadd_f32(*v18.f32, *&vextq_s8(v18, v18, 8uLL)), 0);
      *(v33 + 16 * v31++) = vaddq_f32(v43, a12);
      if (v31 == v30)
      {
        goto LABEL_27;
      }
    }
  }

  v33 = 0;
  v32 = 0;
  LODWORD(v31) = 0;
LABEL_27:
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v57 = 1;
  if ((v24 & 0x80000000) == 0)
  {
    sub_1AFD94970(v58, a2, a4, v53, a6, a7, a8, *v18.i64, *a10.i64, a11, *a12.i64, a13);
    v33 = v56;
  }

  if (v33)
  {
    if (v57 == 1)
    {
      sub_1AFDA72A0(v33);
    }
  }
}

__n128 sub_1AFD95034(uint64_t a1, _OWORD *a2, __n128 *a3, int a4)
{
  *a1 = &unk_1F2572688;
  *(a1 + 16) = *a2;
  result = *a3;
  *(a1 + 32) = *a3;
  *(a1 + 48) = a4;
  *(a1 + 52) = 1065353216;
  return result;
}

void sub_1AFD9506C(float32x4_t *a1, float32x4_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = vsubq_f32(v4, *a2);
  v6.i32[3] = 0;
  v7 = a2[2];
  v8 = vsubq_f32(v7, *a2);
  v8.i32[3] = 0;
  v9 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL), v6), vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), v8));
  v10 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
  v10.i32[3] = 0;
  v11 = vmulq_f32(*a2, v10);
  *v11.i8 = vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL));
  v12 = a1[1];
  v13 = a1[2];
  v14 = vmulq_f32(v12, v10);
  v15 = vsub_f32(vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)), *v11.i8);
  v16 = vmulq_f32(v13, v10);
  v17 = vsub_f32(vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)), *v11.i8);
  if (vmul_f32(v15, v17).f32[0] < 0.0)
  {
    v51 = v2;
    v52 = v3;
    v19 = a1[3].i32[0];
    if (v15.f32[0] > 0.0 || (a1[3].i32[0] & 1) == 0)
    {
      v21 = vdiv_f32(v15, vsub_f32(v15, v17)).f32[0];
      if (v21 < a1[3].f32[1])
      {
        v22 = vmulq_f32(v10, v10);
        v23 = vadd_f32(*&vextq_s8(v22, v22, 8uLL), vpadd_f32(*v22.i8, *v22.i8)).f32[0];
        v24 = -0.0001 * v23;
        v25 = vaddq_f32(v12, vmulq_n_f32(vsubq_f32(v13, v12), v21));
        v26 = vsubq_f32(v5, v25);
        v26.i32[3] = 0;
        v27 = vsubq_f32(v4, v25);
        v27.i32[3] = 0;
        v28 = vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL);
        v29 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
        v30 = vsubq_f32(vmulq_f32(v29, v26), vmulq_f32(v28, v27));
        v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
        v31.i32[3] = 0;
        v32 = vmulq_f32(v10, v31);
        v33 = vsubq_f32(v7, v25);
        v33.i32[3] = 0;
        v34 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
        v35 = vsubq_f32(vmulq_f32(v34, v27), vmulq_f32(v29, v33));
        v36 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
        v36.i32[3] = 0;
        v37 = vmulq_f32(v10, v36);
        LODWORD(v38) = vadd_f32(*&vextq_s8(v37, v37, 8uLL), vpadd_f32(*v37.i8, *v37.i8)).u32[0];
        v39 = vsubq_f32(vmulq_f32(v28, v33), vmulq_f32(v34, v26));
        v40 = vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL);
        v40.i32[3] = 0;
        v41 = vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0] < (-0.0001 * v23) || v38 < v24;
        v42 = vmulq_f32(v10, v40);
        LODWORD(v43) = vadd_f32(*&vextq_s8(v42, v42, 8uLL), vpadd_f32(*v42.i8, *v42.i8)).u32[0];
        if (!v41 && v43 >= v24)
        {
          v45 = vmulq_n_f32(v10, 1.0 / sqrtf(v23));
          v50 = v45;
          v46 = v19 & 2;
          if (v15.f32[0] <= 0.0 && v46 == 0)
          {
            v49 = vnegq_f32(v45);
            v48 = (*(a1->i64[0] + 24))(a1, &v49);
          }

          else
          {
            v48 = (*(a1->i64[0] + 24))(a1, &v50);
          }

          a1[3].f32[1] = v48;
        }
      }
    }
  }
}

uint64_t sub_1AFD952A8(uint64_t result, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, float a6)
{
  *result = &unk_1F25726B8;
  *(result + 8) = a2;
  *(result + 16) = *a3;
  *(result + 32) = a3[1];
  *(result + 48) = a3[2];
  *(result + 64) = a3[3];
  *(result + 80) = *a4;
  *(result + 96) = a4[1];
  *(result + 112) = a4[2];
  *(result + 128) = a4[3];
  *(result + 144) = *a5;
  *(result + 160) = a5[1];
  *(result + 176) = a5[2];
  *(result + 192) = a5[3];
  *(result + 208) = 1065353216;
  *(result + 212) = a6;
  *(result + 216) = 0;
  return result;
}

void sub_1AFD95338(float32x4_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  sub_1AFD8A774(&v22);
  v22 = &unk_1F2570DD8;
  v23 = 1;
  v8 = a2[1];
  v25 = *a2;
  v26 = v8;
  v27 = a2[2];
  v24 = a1[13].i32[1];
  v20 = 953267991;
  v21 = 0;
  v12 = &unk_1F25725D8;
  sub_1AFD8EE98(v11, a1->i64[1], &v22, v19, &v12);
  v13 = &unk_1F2570A50;
  v17 = 0;
  v16 = 1.0;
  v18 = a1[13].i32[2];
  if (sub_1AFD8F324(v11, &a1[1], &a1[5], &a1[9], &a1[9], &v13))
  {
    v9 = vmulq_f32(v14, v14);
    v10 = vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)).f32[0];
    if (v10 > 0.0001 && v16 < a1[13].f32[0])
    {
      v14 = vmulq_n_f32(v14, 1.0 / sqrtf(v10));
      (*(a1->i64[0] + 24))(a1, &v14, &v15, a3, a4, v16);
    }
  }

  nullsub_106();
  sub_1AFD8A7AC(&v22);
}

void *sub_1AFD95528(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_1F25726E8;
  result[1] = a4;
  result[2] = a2;
  result[3] = a3;
  return result;
}

uint64_t sub_1AFD9554C(void *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  sub_1AFD95BD0(a1[1]);
  v76 = a2[3];
  v74 = a4[2];
  v75 = a4[3];
  v12 = *a2;
  v13 = a2[1];
  v72 = a4[1];
  v73 = *a4;
  v14 = vsubq_f32(vsubq_f32(a3[3], v76), vsubq_f32(a5[3], v75));
  v14.i32[3] = 0;
  v65 = v14;
  v15 = a1[2];
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v17 = veorq_s8(v14, v16);
  v69 = v13;
  v70 = *a2;
  v12.i32[3] = 0;
  v13.i32[3] = 0;
  v71 = a2[2];
  v18 = v71;
  v18.i32[3] = 0;
  v67 = v13;
  v68 = v12;
  v66 = v18;
  v81 = vaddq_f32(vaddq_f32(vmulq_n_f32(v12, v17.f32[0]), vmulq_lane_f32(v13, *v17.f32, 1)), vmulq_laneq_f32(v18, v17, 2));
  (*(*v15 + 128))(&v83);
  v19 = vmulq_f32(*a2, v83);
  v20 = vmulq_f32(v83, a2[1]);
  v21 = vmulq_f32(v83, a2[2]);
  v21.i32[3] = 0;
  *v19.f32 = vadd_f32(vpadd_f32(*v19.f32, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *&v19.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v82 = vaddq_f32(v19, a2[3]);
  v22 = a1[3];
  v23 = *a4;
  v24 = a4[1];
  v23.i32[3] = 0;
  v24.i32[3] = 0;
  v25 = a4[2];
  v25.i32[3] = 0;
  v80 = vaddq_f32(vaddq_f32(vmulq_n_f32(v23, v65.f32[0]), vmulq_lane_f32(v24, *v65.f32, 1)), vmulq_laneq_f32(v25, v65, 2));
  (*(*v22 + 128))(&v83);
  v26 = vmulq_f32(*a4, v83);
  v27 = vmulq_f32(v83, a4[1]);
  v28 = vmulq_f32(v83, a4[2]);
  v28.i32[3] = 0;
  *v26.f32 = vadd_f32(vpadd_f32(*v26.f32, *v27.i8), vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)));
  *&v26.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  v29 = vaddq_f32(v26, a4[3]);
  v30 = vsubq_f32(v82, v29);
  v30.i32[3] = 0;
  v81 = v29;
  v83 = v30;
  v31 = vmulq_f32(v30, v30);
  LODWORD(v77) = 0;
  v61 = 0u;
  if (vadd_f32(vpadd_f32(*v31.i8, *v31.i8), *&vextq_s8(v31, v31, 8uLL)).f32[0] > 0.0001)
  {
    v32 = v73;
    v32.i32[3] = 0;
    v64 = v32;
    v33 = v72;
    v33.i32[3] = 0;
    v63 = v33;
    v34 = v74;
    v34.i32[3] = 0;
    v62 = v34;
    v61 = 0u;
    v77 = 0u;
    v35 = -33;
    do
    {
      if (__CFADD__(v35++, 1))
      {
        break;
      }

      v37 = a1[2];
      v38.i64[0] = 0x8000000080000000;
      v38.i64[1] = 0x8000000080000000;
      v39 = veorq_s8(v83, v38);
      v78 = vaddq_f32(vmulq_laneq_f32(v66, v39, 2), vaddq_f32(vmulq_n_f32(v68, v39.f32[0]), vmulq_lane_f32(v67, *v39.f32, 1)));
      (*(*v37 + 128))(&v79);
      v40 = vmulq_f32(v70, v79);
      v41 = vmulq_f32(v69, v79);
      v42 = vmulq_f32(v71, v79);
      v42.i32[3] = 0;
      *v40.f32 = vadd_f32(vpadd_f32(*v40.f32, *v41.i8), vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
      *&v40.u32[2] = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
      v82 = vaddq_f32(v76, v40);
      v43 = a1[3];
      v78 = vaddq_f32(vmulq_laneq_f32(v62, v83, 2), vaddq_f32(vmulq_n_f32(v64, v83.f32[0]), vmulq_lane_f32(v63, *v83.f32, 1)));
      (*(*v43 + 128))(&v79);
      v44 = vmulq_f32(v73, v79);
      v45 = vmulq_f32(v72, v79);
      v46 = vmulq_f32(v74, v79);
      v46.i32[3] = 0;
      *v44.f32 = vadd_f32(vpadd_f32(*v44.f32, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
      *&v44.u32[2] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
      v47 = vaddq_f32(v75, v44);
      v48 = vsubq_f32(v82, v47);
      v48.i32[3] = 0;
      v80 = v48;
      v81 = v47;
      if (*&v77 > 1.0)
      {
        return 0;
      }

      v49 = vmulq_f32(v83, v48);
      v50 = vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL));
      if (v50.f32[0] > 0.0)
      {
        v51 = vmulq_f32(v83, v65);
        v52 = vadd_f32(*&vextq_s8(v51, v51, 8uLL), vpadd_f32(*v51.i8, *v51.i8));
        if (v52.f32[0] >= -1.4211e-14)
        {
          return 0;
        }

        v53 = v77;
        *&v53 = *&v77 - vdiv_f32(v50, v52).f32[0];
        v76 = vaddq_f32(a2[3], vmulq_n_f32(vsubq_f32(a3[3], a2[3]), *&v53));
        v77 = v53;
        v75 = vaddq_f32(a4[3], vmulq_n_f32(vsubq_f32(a5[3], a4[3]), *&v53));
        v61 = v83;
      }

      if ((sub_1AFD96710(a1[1], &v80) & 1) == 0)
      {
        sub_1AFD95C10(a1[1], &v80, &v82, &v81);
      }

      sub_1AFD966E0(a1[1], &v83);
      if (!v54)
      {
        break;
      }

      v55 = vmulq_f32(v83, v83);
    }

    while (vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0] > 0.0001);
  }

  a6[11].i32[0] = v77;
  v56 = vmulq_f32(v61, v61);
  v57 = vadd_f32(*&vextq_s8(v56, v56, 8uLL), vpadd_f32(*v56.i8, *v56.i8)).f32[0];
  v58 = 0uLL;
  if (v57 >= 1.4211e-14)
  {
    v58 = vmulq_n_f32(v61, 1.0 / sqrtf(v57));
  }

  a6[9] = v58;
  v59 = vmulq_f32(v58, v65);
  if (vadd_f32(vpadd_f32(*v59.i8, *v59.i8), *&vextq_s8(v59, v59, 8uLL)).f32[0] >= -a6[12].f32[0])
  {
    return 0;
  }

  sub_1AFD967B4(a1[1], &v79, &v78);
  a6[10] = v78;
  return 1;
}

void sub_1AFD95AA8()
{
  nullsub_106();

  JUMPOUT(0x1B271C6B0);
}

__n128 sub_1AFD95AE0(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1 >= 4)
  {
    if ((*a2 & 8) == 0)
    {
      *a1 = --v2;
      v3 = a1 + 16 * v2;
      *(a1 + 64) = *(v3 + 16);
      *(a1 + 144) = *(v3 + 96);
      result = *(v3 + 176);
      *(a1 + 224) = result;
    }

    goto LABEL_5;
  }

  if (v2 == 3)
  {
LABEL_5:
    if ((*a2 & 4) == 0)
    {
      *a1 = --v2;
      v5 = a1 + 16 * v2;
      *(a1 + 48) = *(v5 + 16);
      *(a1 + 128) = *(v5 + 96);
      result = *(v5 + 176);
      *(a1 + 208) = result;
    }

    goto LABEL_9;
  }

  if (v2 < 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  v2 = 2;
LABEL_9:
  if ((*a2 & 2) == 0)
  {
    *a1 = --v2;
    v6 = a1 + 16 * v2;
    *(a1 + 32) = *(v6 + 16);
    *(a1 + 112) = *(v6 + 96);
    result = *(v6 + 176);
    *(a1 + 192) = result;
  }

LABEL_11:
  if ((*a2 & 1) == 0)
  {
    v7 = v2 - 1;
    *a1 = v7;
    v8 = *(a1 + 96 + 16 * v7);
    *(a1 + 16) = *(a1 + 16 + 16 * v7);
    *(a1 + 96) = v8;
    result = *(a1 + 176 + 16 * v7);
    *(a1 + 176) = result;
  }

  return result;
}

double sub_1AFD95BD0(uint64_t a1)
{
  *(a1 + 324) = 0;
  *a1 = 0;
  *(a1 + 384) = 1;
  result = 5.72459157e141;
  *(a1 + 304) = xmmword_1AFEABE60;
  *(a1 + 372) = 0;
  *(a1 + 364) = 0;
  *(a1 + 356) = 0;
  *(a1 + 352) &= 0xF0u;
  return result;
}

__n128 sub_1AFD95C10(int *a1, _OWORD *a2, _OWORD *a3, __n128 *a4)
{
  *(a1 + 19) = *a2;
  *(a1 + 384) = 1;
  *&a1[4 * *a1 + 4] = *a2;
  *&a1[4 * *a1 + 24] = *a3;
  result = *a4;
  *&a1[4 * (*a1)++ + 44] = *a4;
  return result;
}

uint64_t sub_1AFD95C60(float32x4_t *a1)
{
  if (a1[24].i8[0])
  {
    *(a1[22].i64 + 4) = 0;
    *(&a1[22].i64[1] + 4) = 0;
    a1[23].i8[4] = 0;
    v2 = a1[22].i8[0] & 0xF0;
    a1[22].i8[0] = v2;
    a1[24].i8[0] = 0;
    v3 = a1->i32[0];
    if (a1->i32[0] <= 1)
    {
      if (v3 == 1)
      {
        v19 = a1[6];
        v20 = a1[11];
        a1[16] = v19;
        a1[17] = v20;
        v21 = vsubq_f32(v19, v20);
        v21.i32[3] = 0;
        a1[18] = v21;
        a1[23].i8[4] = 0;
        *(&a1[22] + 4) = xmmword_1AFE20150;
        v18 = 1;
LABEL_27:
        a1[20].i8[4] = v18;
        return v18 & 1;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v22 = a1[1];
          v23 = vsubq_f32(0, v22);
          v23.i32[3] = 0;
          v24 = vsubq_f32(a1[2], v22);
          v24.i32[3] = 0;
          v25 = vmulq_f32(v23, v24);
          v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL));
          if (v26.f32[0] <= 0.0)
          {
            v29 = 0.0;
            v30 = 1;
          }

          else
          {
            v27 = vmulq_f32(v24, v24);
            v28 = vadd_f32(*&vextq_s8(v27, v27, 8uLL), vpadd_f32(*v27.i8, *v27.i8));
            if (vcgt_f32(v28, v26).u8[0])
            {
              LODWORD(v29) = vdiv_f32(v26, v28).u32[0];
              v30 = 3;
            }

            else
            {
              v29 = 1.0;
              v30 = 2;
            }
          }

          a1[22].i8[0] = v2 | v30;
          a1[22].f32[1] = 1.0 - v29;
          a1[22].f32[2] = v29;
          *(&a1[22].i64[1] + 4) = 0;
          v43 = a1[6];
          v44 = vmulq_n_f32(vsubq_f32(a1[7], v43), v29);
          v44.i32[3] = 0;
          v45 = vaddq_f32(v43, v44);
          v46 = a1[11];
          v47 = vmulq_n_f32(vsubq_f32(a1[12], v46), v29);
          v47.i32[3] = 0;
          v48 = vaddq_f32(v46, v47);
          a1[16] = v45;
          a1[17] = v48;
          v49 = vsubq_f32(v45, v48);
          v49.i32[3] = 0;
          a1[18] = v49;
          sub_1AFD95AE0(a1, &a1[22]);
          if (a1[22].f32[1] >= 0.0 && a1[22].f32[2] >= 0.0)
          {
            v42 = a1[22].f32[3];
LABEL_25:
            if (v42 >= 0.0)
            {
              v18 = a1[23].f32[0] >= 0.0;
              goto LABEL_27;
            }
          }

LABEL_26:
          v18 = 0;
          goto LABEL_27;
        case 3:
          v51 = 0uLL;
          sub_1AFD95F94(a1, &v51, a1 + 1, a1 + 2, a1 + 3, a1 + 21);
          v31 = a1[22].f32[1];
          v32 = vmulq_n_f32(a1[6], v31);
          v32.i32[3] = 0;
          v33 = a1[22].f32[2];
          v34 = vmulq_n_f32(a1[7], v33);
          v34.i32[3] = 0;
          v35 = vaddq_f32(v32, v34);
          v36 = a1[22].f32[3];
          v37 = vmulq_n_f32(a1[8], v36);
          v37.i32[3] = 0;
          v12 = vaddq_f32(v35, v37);
          v38 = vmulq_n_f32(a1[11], v31);
          v38.i32[3] = 0;
          v39 = vmulq_n_f32(a1[12], v33);
          v39.i32[3] = 0;
          v16 = vaddq_f32(v38, v39);
          v17 = vmulq_n_f32(a1[13], v36);
          goto LABEL_15;
        case 4:
          v51 = 0uLL;
          if (sub_1AFD96218(a1, &v51, a1 + 1, a1 + 2, a1 + 3, a1 + 4, &a1[21]))
          {
            v4 = a1[22].f32[1];
            v5 = vmulq_n_f32(a1[6], v4);
            v5.i32[3] = 0;
            v6 = a1[22].f32[2];
            v7 = vmulq_n_f32(a1[7], v6);
            v7.i32[3] = 0;
            v8 = vaddq_f32(v5, v7);
            v7.i32[0] = a1[22].i32[3];
            v9 = vmulq_n_f32(a1[8], v7.f32[0]);
            v9.i32[3] = 0;
            v10 = vaddq_f32(v8, v9);
            v9.i32[0] = a1[23].i32[0];
            v11 = vmulq_n_f32(a1[9], v9.f32[0]);
            v11.i32[3] = 0;
            v12 = vaddq_f32(v10, v11);
            v13 = vmulq_n_f32(a1[11], v4);
            v14 = vmulq_n_f32(a1[12], v6);
            v15 = vmulq_n_f32(a1[13], v7.f32[0]);
            v13.i32[3] = 0;
            v14.i32[3] = 0;
            v15.i32[3] = 0;
            v16 = vaddq_f32(vaddq_f32(v13, v14), v15);
            v17 = vmulq_n_f32(a1[14], v9.f32[0]);
LABEL_15:
            v17.i32[3] = 0;
            v40 = vaddq_f32(v16, v17);
            a1[16] = v12;
            a1[17] = v40;
            v41 = vsubq_f32(v12, v40);
            v41.i32[3] = 0;
            a1[18] = v41;
            sub_1AFD95AE0(a1, &a1[22]);
            if (a1[22].f32[1] >= 0.0 && a1[22].f32[2] >= 0.0)
            {
              v42 = a1[22].f32[3];
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (a1[23].i8[4] != 1)
          {
            v18 = 1;
            a1[20].i8[4] = 1;
            a1[18].i64[0] = 0;
            a1[18].i64[1] = 0;
            return v18 & 1;
          }

          break;
      }
    }

    v18 = 0;
    a1[20].i8[4] = 0;
  }

  else
  {
    v18 = a1[20].i8[4];
  }

  return v18 & 1;
}

uint64_t sub_1AFD95F94(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v6 = a6[1].i8[0] & 0xF0;
  a6[1].i8[0] = v6;
  v7 = *a4;
  v8 = *a3;
  v9 = vsubq_f32(*a4, *a3);
  v9.i32[3] = 0;
  v10 = *a5;
  v11 = vsubq_f32(*a5, *a3);
  v11.i32[3] = 0;
  v12 = *a2;
  v13 = vsubq_f32(*a2, *a3);
  v13.i32[3] = 0;
  v14 = vmulq_f32(v9, v13);
  v15 = vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL));
  v16 = vmulq_f32(v11, v13);
  v17 = vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL));
  if (v15.f32[0] <= 0.0 && v17.f32[0] <= 0.0)
  {
    *a6 = v8;
    a6[1].i8[0] = v6 | 1;
    v18 = 0.0;
    v19 = 1.0;
LABEL_11:
    v27 = 0.0;
    goto LABEL_12;
  }

  v20 = vsubq_f32(v12, v7);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v9, v20);
  v22 = vadd_f32(*&vextq_s8(v21, v21, 8uLL), vpadd_f32(*v21.i8, *v21.i8));
  v23 = vmulq_f32(v11, v20);
  v24 = vadd_f32(*&vextq_s8(v23, v23, 8uLL), vpadd_f32(*v23.i8, *v23.i8));
  if (v22.f32[0] >= 0.0 && (vmvn_s8(vcge_f32(v22, v24)).u8[0] & 1) == 0)
  {
    *a6 = v7;
    a6[1].i8[0] = v6 | 2;
    v18 = 1.0;
    v19 = 0.0;
    goto LABEL_11;
  }

  v25 = (v15.f32[0] * v24.f32[0]) - (v22.f32[0] * v17.f32[0]);
  if (v22.f32[0] <= 0.0 && v15.f32[0] >= 0.0 && v25 <= 0.0)
  {
    v18 = vdiv_f32(v15, vsub_f32(v15, v22)).f32[0];
    v26 = vmulq_n_f32(v9, v18);
    v26.i32[3] = 0;
    *a6 = vaddq_f32(v8, v26);
    a6[1].i8[0] = v6 | 3;
    v19 = 1.0 - v18;
    goto LABEL_11;
  }

  v29 = vsubq_f32(v12, v10);
  v29.i32[3] = 0;
  v30 = vmulq_f32(v9, v29);
  v31 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), vpadd_f32(*v30.i8, *v30.i8));
  v32 = vmulq_f32(v11, v29);
  v33 = vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8));
  if (v33.f32[0] >= 0.0 && (vmvn_s8(vcge_f32(v33, v31)).u8[0] & 1) == 0)
  {
    *a6 = v10;
    a6[1].i8[0] = v6 | 4;
    v27 = 1.0;
    v19 = 0.0;
LABEL_20:
    v18 = 0.0;
    goto LABEL_12;
  }

  v34 = (v31.f32[0] * v17.f32[0]) - (v15.f32[0] * v33.f32[0]);
  if (v33.f32[0] <= 0.0 && v34 <= 0.0 && v17.f32[0] >= 0.0)
  {
    v27 = vdiv_f32(v17, vsub_f32(v17, v33)).f32[0];
    v35 = vmulq_n_f32(v11, v27);
    v35.i32[3] = 0;
    *a6 = vaddq_f32(v8, v35);
    a6[1].i8[0] = v6 | 5;
    v19 = 1.0 - v27;
    goto LABEL_20;
  }

  v36 = (v22.f32[0] * v33.f32[0]) - (v31.f32[0] * v24.f32[0]);
  if (v36 <= 0.0 && (v37 = vsub_f32(v24, v22), v37.f32[0] >= 0.0) && (v38 = vsub_f32(v31, v33), v38.f32[0] >= 0.0))
  {
    v27 = vdiv_f32(v37, vadd_f32(v37, v38)).f32[0];
    v42 = vmulq_n_f32(vsubq_f32(v10, v7), v27);
    v42.i32[3] = 0;
    *a6 = vaddq_f32(v7, v42);
    a6[1].i8[0] = v6 | 6;
    v18 = 1.0 - v27;
    v19 = 0.0;
  }

  else
  {
    v39 = 1.0 / (v25 + (v36 + v34));
    v18 = v34 * v39;
    v27 = v25 * v39;
    v40 = vmulq_n_f32(v9, v18);
    v40.i32[3] = 0;
    v41 = vmulq_n_f32(v11, v27);
    v41.i32[3] = 0;
    *a6 = vaddq_f32(vaddq_f32(v8, v40), v41);
    a6[1].i8[0] = v6 | 7;
    v19 = (1.0 - v18) - v27;
  }

LABEL_12:
  a6[1].f32[1] = v19;
  a6[1].f32[2] = v18;
  *(&a6[1].i64[1] + 4) = LODWORD(v27);
  return 1;
}

uint64_t sub_1AFD96218(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7)
{
  v81 = *MEMORY[0x1E69E9840];
  v79 = 0;
  *a7 = *a2;
  v8 = *(a7 + 16);
  *(a7 + 16) = v8 | 0xF;
  v9 = vsubq_f32(*a4, *a3);
  v10 = vsubq_f32(*a5, *a3);
  v11 = v10;
  v11.i32[3] = 0;
  v12 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
  v13 = vsubq_f32(*a6, *a3);
  v14 = v13;
  v14.i32[3] = 0;
  v15 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
  v16 = vmulq_f32(v15, v9);
  v17 = v9;
  v17.i32[3] = 0;
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v19 = vsubq_f32(vmulq_f32(v12, v9), vmulq_f32(v18, v10));
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v14, v20);
  v22 = vsubq_f32(vmulq_f32(v15, v10), vmulq_f32(v12, v13));
  v23 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
  v23.i32[3] = 0;
  v24 = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL));
  v25 = vmulq_f32(v17, v23);
  v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL));
  v27 = vsubq_f32(vmulq_f32(v18, v13), v16);
  v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
  v28.i32[3] = 0;
  v29 = vmulq_f32(v11, v28);
  *v14.f32 = vpadd_f32(*v29.i8, *v29.i8);
  v30 = vsubq_f32(*a6, *a4);
  v31 = vsubq_f32(*a5, *a4);
  v32 = v31;
  v32.i32[3] = 0;
  v33 = vmulq_f32(vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL), v30);
  v30.i32[3] = 0;
  v16.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
  v34 = vsubq_f32(v33, vmulq_f32(vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL), v31));
  v35 = vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL);
  v35.i32[3] = 0;
  v36 = vsubq_f32(*a3, *a4);
  v36.i32[3] = 0;
  v37 = vadd_f32(*v14.f32, *v16.f32);
  v38 = vmulq_f32(v36, v35);
  v39 = vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL));
  *v14.f32 = vzip1_s32(v24, v26);
  v14.i64[1] = __PAIR64__(v39.u32[0], v37.u32[0]);
  if (vmaxv_u16(vmovn_s32(vcgtq_f32(vdupq_n_s32(0x322BCC76u), vmulq_f32(v14, v14)))))
  {
    result = 0;
    *(a7 + 36) = 1;
  }

  else
  {
    v46 = vsubq_f32(*a2, *a4);
    v46.i32[3] = 0;
    v47 = vmulq_f32(v46, v35);
    LODWORD(v48) = vmul_f32(v39, vadd_f32(*&vextq_s8(v47, v47, 8uLL), vpadd_f32(*v47.i8, *v47.i8))).u32[0];
    v49 = vsubq_f32(*a2, *a3);
    v49.i32[3] = 0;
    v50 = vmulq_f32(v49, v28);
    LODWORD(v51) = vmul_f32(v37, vadd_f32(*&vextq_s8(v50, v50, 8uLL), vpadd_f32(*v50.i8, *v50.i8))).u32[0];
    v52 = vmulq_f32(v49, v23);
    LODWORD(v53) = vmul_f32(v26, vadd_f32(*&vextq_s8(v52, v52, 8uLL), vpadd_f32(*v52.i8, *v52.i8))).u32[0];
    v54 = vmulq_f32(v49, v20);
    v55 = vmul_f32(v24, vadd_f32(*&vextq_s8(v54, v54, 8uLL), vpadd_f32(*v54.i8, *v54.i8))).f32[0];
    if (v55 < 0.0 || v53 < 0.0 || v51 < 0.0 || v48 < 0.0)
    {
      v76 = v51;
      v77 = v48;
      if (v55 >= 0.0)
      {
        v59 = 3.4028e38;
      }

      else
      {
        v74 = *a2;
        v75 = v53;
        a1 = sub_1AFD95F94(a1, a2, a3, a4, a5, &v78);
        v53 = v75;
        v56 = vsubq_f32(v78, v74);
        v56.i32[3] = 0;
        v57 = vmulq_f32(v56, v56);
        v58 = vadd_f32(vpadd_f32(*v57.i8, *v57.i8), *&vextq_s8(v57, v57, 8uLL)).f32[0];
        v59 = 3.4028e38;
        if (v58 < 3.4028e38)
        {
          *a7 = v78;
          *(a7 + 16) = v79 & 7 | v8 & 0xF0;
          v60 = *&v80[8];
          *(a7 + 20) = *v80;
          *(a7 + 28) = v60;
          *(a7 + 32) = 0;
          v59 = v58;
        }
      }

      if (v53 >= 0.0)
      {
        v64 = v76;
      }

      else
      {
        a1 = sub_1AFD95F94(a1, a2, a3, a5, a6, &v78);
        v61 = vsubq_f32(v78, *a2);
        v61.i32[3] = 0;
        v62 = vmulq_f32(v61, v61);
        v63 = vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0];
        v64 = v76;
        if (v63 < v59)
        {
          *a7 = v78;
          *(a7 + 16) = (2 * v79) & 0xC | v79 & 1 | *(a7 + 16) & 0xF0;
          *(a7 + 20) = *v80;
          *(a7 + 24) = 0;
          *(a7 + 28) = *&v80[4];
          v59 = v63;
        }
      }

      if (v64 >= 0.0)
      {
        v65 = v77;
      }

      else
      {
        a1 = sub_1AFD95F94(a1, a2, a3, a6, a4, &v78);
        v65 = v77;
        v66 = vsubq_f32(v78, *a2);
        v66.i32[3] = 0;
        v67 = vmulq_f32(v66, v66);
        v68 = vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0];
        if (v68 < v59)
        {
          *a7 = v78;
          *(a7 + 16) = v79 & 1 | (2 * ((v79 & 4) != 0)) & 0xF7 | (8 * ((v79 & 2) != 0)) | *(a7 + 16) & 0xF0;
          v70 = *&v80[4];
          v69 = *&v80[8];
          *(a7 + 20) = *v80;
          *(a7 + 24) = v69;
          *(a7 + 28) = 0;
          *(a7 + 32) = v70;
          v59 = v68;
        }
      }

      if (v65 < 0.0)
      {
        sub_1AFD95F94(a1, a2, a4, a6, a5, &v78);
        v71 = vsubq_f32(v78, *a2);
        v71.i32[3] = 0;
        v72 = vmulq_f32(v71, v71);
        if (vadd_f32(vpadd_f32(*v72.i8, *v72.i8), *&vextq_s8(v72, v72, 8uLL)).f32[0] < v59)
        {
          *a7 = v78;
          *(a7 + 16) = v79 & 4 | (2 * (v79 & 1)) & 0xF7 | (8 * ((v79 & 2) != 0)) | *(a7 + 16) & 0xF0;
          v73 = *v80;
          *(a7 + 20) = 0;
          *(a7 + 24) = v73;
          *(a7 + 28) = vrev64_s32(*&v80[4]);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1AFD966E0(float32x4_t *a1, __n128 *a2)
{
  sub_1AFD95C60(a1);
  result = a1[18];
  *a2 = result;
  return result;
}

uint64_t sub_1AFD96710(float *a1, float32x4_t *a2)
{
  v2 = *a1;
  if (v2 <= 0)
  {
    v3 = 0;
    v5 = a2->f32[3];
  }

  else
  {
    v3 = 0;
    v4 = a1 + 4;
    LODWORD(v5) = HIDWORD(*a2);
    do
    {
      v6 = *v4;
      v4 += 4;
      v7 = vsubq_f32(*a2, v6);
      v7.i32[3] = 0;
      v8 = vmulq_f32(v7, v7);
      v3 |= vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] <= a1[80];
      --v2;
    }

    while (v2);
  }

  if (v5 == a1[79] && a2->f32[2] == a1[78] && a2->f32[1] == a1[77])
  {
    v3 |= a2->f32[0] == a1[76];
  }

  return v3 & 1;
}

__n128 sub_1AFD967B4(uint64_t a1, _OWORD *a2, __n128 *a3)
{
  sub_1AFD95C60(a1);
  *a2 = *(a1 + 256);
  result = *(a1 + 272);
  *a3 = result;
  return result;
}

double sub_1AFD967F8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  sub_1AFDA19B8(a1, 5, a2, a3);
  *v7 = &unk_1F2572710;
  *(v7 + 368) = *a4;
  *(v7 + 384) = a4[1];
  *(v7 + 400) = a4[2];
  *(v7 + 416) = a4[3];
  *(v7 + 432) = *a5;
  *(v7 + 448) = a5[1];
  *(v7 + 464) = a5[2];
  v8 = a5[3];
  *(v7 + 624) = 0;
  *(v7 + 592) = 0;
  *(v7 + 656) = -1082130432;
  *(v7 + 480) = v8;
  *(v7 + 496) = xmmword_1AFEAC360;
  *(v7 + 512) = xmmword_1AFEAC370;
  *(v7 + 688) = 0;
  *&result = 1060320051;
  *(v7 + 696) = 1060320051;
  return result;
}

double sub_1AFD968C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_1AFDA18D4(a1, 5, a2);
  *v4 = &unk_1F2572710;
  v5 = *a3;
  *(v4 + 368) = *a3;
  v6 = a3[1];
  *(v4 + 384) = v6;
  v7 = a3[2];
  *(v4 + 400) = v7;
  *(v4 + 416) = a3[3];
  *(v4 + 432) = v5;
  *(v4 + 448) = v6;
  *(v4 + 464) = v7;
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 592) = 0;
  *(v4 + 624) = 0;
  *(v4 + 656) = -1082130432;
  *(v4 + 496) = xmmword_1AFEAC360;
  *(v4 + 512) = xmmword_1AFEAC370;
  *(v4 + 688) = 0;
  *&result = 1060320051;
  *(v4 + 696) = 1060320051;
  return result;
}

void sub_1AFD96968(uint64_t result, int32x2_t *a2)
{
  if (*(result + 595) == 1)
  {
    v3 = 0;
    a2->i32[0] = 0;
LABEL_9:
    a2->i32[1] = v3;
    return;
  }

  *a2 = 0x300000003;
  sub_1AFD96A30(result, (*(result + 40) + 16), (*(result + 48) + 16), (*(result + 40) + 304), (*(result + 48) + 304));
  if (*(result + 594) == 1)
  {
    v5 = *a2;
    *a2 = vadd_s32(*a2, 0xFFFFFFFF00000001);
    v6 = *(result + 524);
    if (*(result + 512) < v6 && *(result + 516) < v6)
    {
      *a2 = vadd_s32(v5, 0xFFFFFFFE00000002);
    }
  }

  if (*(result + 593) == 1)
  {
    v7 = a2->i32[1];
    ++a2->i32[0];
    v3 = v7 - 1;
    goto LABEL_9;
  }
}

void sub_1AFD96A30(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  *(a1 + 568) = 0;
  *(a1 + 593) = 0;
  if (*(a1 + 624) != 1 || (*(a1 + 595) & 1) != 0)
  {
    sub_1AFD78130(a2->f32, v269);
    sub_1AFD78130((a1 + 368), v268);
    v10 = v268[0];
    v11 = vextq_s8(v269[0], v269[0], 8uLL).u64[0];
    v12 = vzip1_s32(v11, *v269[0].f32);
    v13 = vextq_s8(v10, v10, 8uLL).u64[0];
    *v14.f32 = vzip1_s32(v13, *v268[0].f32);
    v15 = vext_s8(v13, *v268[0].f32, 4uLL);
    *v16.f32 = vext_s8(*v269[0].f32, v11, 4uLL);
    *v17.f32 = vext_s8(*v268[0].f32, v13, 4uLL);
    *v18.f32 = v12;
    v18.i64[1] = v16.i64[0];
    *&v17.u32[2] = vrev64_s32(*v14.f32);
    v19 = vtrn2q_s32(v10, v10);
    *&v14.u32[2] = v15;
    *&v16.u32[2] = v12;
    v265 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v268[0], v269[0], 3), vmulq_f32(v18, v17)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(v269[0].i64[0], 0), vextq_s8(v19, v19, 8uLL)), vmulq_f32(v16, v14)), xmmword_1AFE47BE0));
    sub_1AFD78130(a3->f32, v269);
    sub_1AFD78130((a1 + 432), v268);
    v21 = v268[0];
    v22 = vextq_s8(v269[0], v269[0], 8uLL).u64[0];
    v23 = vzip1_s32(v22, *v269[0].f32);
    v24 = vextq_s8(v21, v21, 8uLL).u64[0];
    *v25.f32 = vzip1_s32(v24, *v268[0].f32);
    v26 = vext_s8(v24, *v268[0].f32, 4uLL);
    *v27.f32 = vext_s8(*v269[0].f32, v22, 4uLL);
    *v28.f32 = vext_s8(*v268[0].f32, v24, 4uLL);
    *v29.f32 = v23;
    v29.i64[1] = v27.i64[0];
    *&v28.u32[2] = vrev64_s32(*v25.f32);
    v30 = vtrn2q_s32(v21, v21);
    *&v25.u32[2] = v26;
    *&v27.u32[2] = v23;
    v260 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v268[0], v269[0], 3), vmulq_f32(v29, v28)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(v269[0].i64[0], 0), vextq_s8(v30, v30, 8uLL)), vmulq_f32(v27, v25)), xmmword_1AFE47BE0));
    v31 = veorq_s8(v260, xmmword_1AFE47BF0);
    v30.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
    v32 = vzip1_s32(*v30.f32, *v31.f32);
    v36 = v265;
    *v33.f32 = vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *v265.f32);
    v262 = *v30.f32;
    *v29.f32 = vext_s8(*v31.f32, *v30.f32, 4uLL);
    v25.i64[0] = vextq_s8(v36, v36, 4uLL).u64[0];
    v30.i64[0] = v31.i64[0];
    *&v30.u32[2] = v32;
    *v28.f32 = vdup_laneq_s32(v265, 3);
    v28.i64[1] = vextq_s8(v36, v36, 0xCuLL).u64[0];
    v257 = v28;
    v258 = v25.i64[0];
    v37 = vmulq_f32(v28, v30);
    v259 = v33.i64[0];
    *&v33.u32[2] = vdup_lane_s32(*v265.f32, 1);
    v263 = v31;
    v264 = v32;
    *v34.f32 = v32;
    v34.i64[1] = v29.i64[0];
    v261 = v29.i64[0];
    v28.i64[0] = v29.i64[0];
    v28.i64[1] = v31.i64[0];
    *&v25.u32[2] = vrev64_s32(*v33.f32);
    v35 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v265, v31, 3), vmulq_f32(v25, v34)), veorq_s8(vaddq_f32(vmulq_f32(v33, v28), v37), xmmword_1AFE47BE0));
    *v36.f32 = vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *v35.f32);
    *v38.f32 = vdup_laneq_s32(v35, 3);
    v37.i64[0] = vextq_s8(v35, v35, 4uLL).u64[0];
    v38.i64[1] = vextq_s8(v35, v35, 0xCuLL).u64[0];
    v28.i64[0] = v36.i64[0];
    v28.i64[1] = v37.i64[0];
    v25.i64[0] = v37.i64[0];
    v25.i64[1] = v35.i64[0];
    v39 = vaddq_f32(veorq_s8(vaddq_f32(vmulq_f32(v25, xmmword_1AFE20160), vmulq_f32(v38, xmmword_1AFE21170)), xmmword_1AFE47BE0), vmulq_f32(v28, xmmword_1AFE20C10));
    v40 = veorq_s8(v35, xmmword_1AFE47BF0);
    v41 = vextq_s8(v39, v39, 8uLL).u64[0];
    *v31.f32 = vzip1_s32(v41, *v39.f32);
    v29.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
    *v42.f32 = vzip1_s32(*v29.f32, *v40.f32);
    v43 = vdup_laneq_s32(v40, 3);
    v44.i64[0] = vextq_s8(v39, v39, 4uLL).u64[0];
    *v29.f32 = vext_s8(*v40.f32, *v29.f32, 4uLL);
    v31.i64[1] = v44.i64[0];
    *&v29.u32[2] = vdup_lane_s32(*v42.f32, 1);
    v45 = vmulq_f32(v29, v31);
    v46 = vmulq_laneq_f32(v40, v39, 3);
    v47 = vtrn2q_s32(v40, v40);
    *&v44.u32[2] = v41;
    *&v42.u32[2] = v43;
    v48 = vaddq_f32(vsubq_f32(v46, v45), vaddq_f32(vmulq_f32(vextq_s8(v47, v47, 8uLL), vdupq_lane_s64(v39.i64[0], 0)), vmulq_f32(v42, v44)));
    v48.i32[3] = 0;
    v49 = vmulq_f32(v48, v48);
    v50 = vmulq_n_f32(v48, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0]));
    v51 = vmulq_f32(v50, xmmword_1AFE20150);
    v52 = vadd_f32(vpadd_f32(*v51.i8, *v51.i8), *&vextq_s8(v51, v51, 8uLL)).f32[0];
    if (v52 >= -1.0)
    {
      v54 = vmulq_f32(v50, xmmword_1AFE20160);
      v55 = vaddq_f32(vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL), vmulq_f32(v50, xmmword_1AFE213B0));
      v55.i32[3] = sqrtf((v52 + 1.0) + (v52 + 1.0));
      v56.i32[1] = 1056964608;
      v56.i64[1] = 0x3F0000003F000000;
      *v56.i32 = 1.0 / v55.f32[3];
      v57 = vzip1q_s32(v56, v56);
      v57.f32[2] = 1.0 / v55.f32[3];
      v53 = vmulq_f32(v55, v57);
    }

    else
    {
      v53 = xmmword_1AFE42B90;
    }

    v58 = vzip2q_s32(vzip1q_s32(v53, vextq_s8(v53, v53, 0xCuLL)), v53);
    v59 = vmulq_f32(v53, v53);
    v60 = vzip2q_s32(vzip1q_s32(v59, vextq_s8(v59, v59, 0xCuLL)), v59);
    v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
    v269[0] = vmulq_n_f32(v58, 1.0 / sqrtf(vpadd_f32(*v60.f32, *v60.f32).f32[0]));
    v61 = veorq_s8(v269[0], xmmword_1AFE47BF0);
    v58.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
    *v62.f32 = vzip1_s32(*v58.f32, *v61.f32);
    *v58.f32 = vext_s8(*v61.f32, *v58.f32, 4uLL);
    v63.i64[0] = v61.i64[0];
    v63.i64[1] = v62.i64[0];
    v62.i64[1] = v58.i64[0];
    v58.i64[1] = v61.i64[0];
    *&v36.u32[2] = vdup_lane_s32(*v35.f32, 1);
    *&v37.u32[2] = vrev64_s32(*v36.f32);
    v64 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v35, v61, 3), vmulq_f32(v37, v62)), veorq_s8(vaddq_f32(vmulq_f32(v36, v58), vmulq_f32(v38, v63)), xmmword_1AFE47BE0));
    v65 = vmulq_f32(v64, v64);
    v66 = vpaddq_f32(v65, v65);
    v268[0] = vmulq_n_f32(v64, 1.0 / sqrtf(vpadd_f32(*v66.f32, *v66.f32).f32[0]));
    v67 = *(a1 + 512);
    v68 = *(a1 + 524);
    if (v67 >= v68)
    {
      v69 = *(a1 + 516);
      if (v69 >= v68)
      {
        v266 = 0;
        sub_1AFD99218(a1, v269, &v266 + 1, &v267, &v266);
        v164 = v266;
        v165 = *(a1 + 496);
        if (*(&v266 + 1) > (*&v266 * v165))
        {
          *(a1 + 594) = 1;
          v166 = *(&v164 + 1) - (*&v164 * v165);
          v167 = 1.0;
          if (*(&v164 + 1) < *&v164 && v165 < 1.0)
          {
            v167 = v166 / (*&v164 + (-*&v164 * v165));
          }

          *(a1 + 596) = v167;
          *(a1 + 572) = v166;
          if (fabsf(*&v267.i32[1]) <= 0.00000011921)
          {
            v170 = v267;
          }

          else
          {
            v168 = fabsf(*&v267.i32[1] * ((v69 / v67) * (-*&v267.i32[2] / *&v267.i32[1])));
            if (*&v267.i32[2] < 0.0)
            {
              v168 = -v168;
            }

            *&v267.i32[2] = v168;
            v169 = vmulq_f32(v267, v267);
            v170 = vmulq_n_f32(v267, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v169.i8, *v169.i8), *&vextq_s8(v169, v169, 8uLL)).f32[0]));
          }

          v173.i64[0] = 0x8000000080000000;
          v173.i64[1] = 0x8000000080000000;
          v174 = veorq_s8(v170, v173);
          v175 = v260;
          v176 = vextq_s8(v174, v174, 8uLL).u64[0];
          *v177.f32 = vzip1_s32(v176, *v174.f32);
          *v173.i8 = vzip1_s32(*&vextq_s8(v175, v175, 8uLL), *v260.i8);
          v178.i64[0] = vextq_s8(v175, v175, 4uLL).u64[0];
          *v179.f32 = vext_s8(*v174.f32, v176, 4uLL);
          *v180.f32 = vdup_laneq_s32(v260, 3);
          *&v179.u32[2] = vrev64_s32(*v177.f32);
          v173.i64[1] = v178.i64[0];
          v180.i64[1] = v260.i64[0];
          *&v174.u32[2] = vdup_lane_s32(*v174.f32, 1);
          v178.i64[1] = vextq_s8(v175, v175, 0xCuLL).u64[0];
          v177.i64[1] = v177.i64[0];
          v181 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v180, v174), vmulq_f32(v178, v177)), xmmword_1AFE47BE0), vmulq_f32(v173, v179));
          v179.i64[0] = vextq_s8(v181, v181, 4uLL).u64[0];
          *v178.f32 = vzip1_s32(*&vextq_s8(v181, v181, 8uLL), *v181.f32);
          v178.i64[1] = v179.i64[0];
          v182.i64[0] = v261;
          *&v182.u32[2] = vrev64_s32(v264);
          v183 = vmulq_f32(v182, v178);
          v184 = vtrn2q_s32(v263, v263);
          v179.i64[1] = v178.i64[0];
          *v173.i8 = v264;
          v173.u64[1] = vext_s8(v262, *v263.f32, 4uLL);
          v185 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v263, v181, 3), v183), vaddq_f32(vmulq_f32(vextq_s8(v184, v184, 8uLL), vdupq_lane_s64(v181.i64[0], 0)), vmulq_f32(v173, v179)));
          v185.i32[3] = 0;
          *(a1 + 528) = v185;
          *(a1 + 608) = 0u;
          v186 = *a4;
          v187 = a4[1];
          v186.i32[3] = 0;
          v187.i32[3] = 0;
          v188 = a4[2];
          v188.i32[3] = 0;
          v189 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v188, v185, 2), vaddq_f32(vmulq_n_f32(v186, v185.f32[0]), vmulq_lane_f32(v187, *v185.f32, 1))), v185);
          v190 = *a5;
          v191 = a5[1];
          v190.i32[3] = 0;
          v191.i32[3] = 0;
          v192 = a5[2];
          v192.i32[3] = 0;
          v193 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v192, v185, 2), vaddq_f32(vmulq_n_f32(v190, v185.f32[0]), vmulq_lane_f32(v191, *v185.f32, 1))), v185);
          *(a1 + 560) = 1.0 / vadd_f32(vadd_f32(vpadd_f32(*v189.i8, *v189.i8), *&vextq_s8(v189, v189, 8uLL)), vadd_f32(vpadd_f32(*v193.i8, *v193.i8), *&vextq_s8(v193, v193, 8uLL))).f32[0];
        }

        goto LABEL_48;
      }
    }

    v66.i32[0] = *(a1 + 368);
    v66.i32[1] = *(a1 + 384);
    v66.i32[2] = *(a1 + 400);
    v70 = a2[1];
    v71 = vmulq_f32(*a2, v66);
    v72 = vmulq_f32(v66, v70);
    v73 = a2[2];
    v74 = vmulq_f32(v66, v73);
    v74.i32[3] = 0;
    v75 = vadd_f32(vpadd_f32(*v71.i8, *v72.i8), vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v72, v72, 8uLL)));
    v76 = vextq_s8(v74, v74, 8uLL);
    v77 = vpadd_f32(vpadd_f32(*v74.i8, *v76.f32), 0);
    v76.i32[0] = *(a1 + 372);
    v76.i32[1] = *(a1 + 388);
    v76.i32[2] = *(a1 + 404);
    v78 = vmulq_f32(*a2, v76);
    v79 = vmulq_f32(v70, v76);
    v80 = vmulq_f32(v73, v76);
    v80.i32[3] = 0;
    v81 = vadd_f32(vpadd_f32(*v78.i8, *v79.i8), vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v79, v79, 8uLL)));
    v82 = vpadd_f32(vpadd_f32(*v80.f32, *&vextq_s8(v80, v80, 8uLL)), 0);
    v80.i32[0] = *(a1 + 376);
    v80.i32[1] = *(a1 + 392);
    v80.i32[2] = *(a1 + 408);
    v83 = vmulq_f32(*a2, v80);
    v84 = vmulq_f32(v70, v80);
    v85 = vmulq_f32(v73, v80);
    v85.i32[3] = 0;
    v86 = vadd_f32(vpadd_f32(*v83.i8, *v84.i8), vzip1_s32(*&vextq_s8(v83, v83, 8uLL), *&vextq_s8(v84, v84, 8uLL)));
    v87 = vextq_s8(v85, v85, 8uLL);
    v88 = vpadd_f32(vpadd_f32(*v85.i8, *v87.f32), 0);
    v87.i32[0] = *(a1 + 432);
    v87.i32[1] = *(a1 + 448);
    v87.i32[2] = *(a1 + 464);
    v89 = vmulq_f32(*a3, v87);
    v90 = vmulq_f32(v87, a3[1]);
    v91 = vmulq_f32(v87, a3[2]);
    v91.i32[3] = 0;
    v92 = vadd_f32(vpadd_f32(*v89.i8, *v90.i8), vzip1_s32(*&vextq_s8(v89, v89, 8uLL), *&vextq_s8(v90, v90, 8uLL)));
    v93 = vextq_s8(v91, v91, 8uLL);
    v94 = vpadd_f32(vpadd_f32(*v91.i8, *v93.f32), 0);
    *v95.f32 = v92;
    *&v95.u32[2] = v94;
    *v74.i8 = vmul_f32(v75, v92);
    LODWORD(cosval) = vadd_f32(vpadd_f32(*v74.i8, *v74.i8), vmul_f32(v77, v94)).u32[0];
    *v91.i8 = vmul_f32(v81, v92);
    LODWORD(sinval) = vadd_f32(vpadd_f32(*v91.i8, *v91.i8), vmul_f32(v82, v94)).u32[0];
    *v91.i8 = vmul_f32(v86, v92);
    LODWORD(v98) = vadd_f32(vpadd_f32(*v91.i8, *v91.i8), vmul_f32(v88, v94)).u32[0];
    if (v67 >= v68)
    {
      if (fabsf(cosval) < 0.00000011921 && fabsf(sinval) < 0.00000011921)
      {
        goto LABEL_45;
      }

      *(a1 + 594) = 1;
      if (v67 < v68)
      {
        goto LABEL_45;
      }

      v250 = v88.i32[0];
      v251 = v94;
      v252 = v92;
      v253 = v95;
      v254 = v82.i32[0];
      v255 = v75;
      v256 = v77.i32[0];
      v246 = sinval;
      v248 = cosval;
      v107 = atan2f(sinval, cosval);
      if (v107 <= v67)
      {
        v98 = 0.0;
        if (v107 >= -v67)
        {
          v75 = v255;
          v77.i32[0] = v256;
          v95 = v253;
          v82.i32[0] = v254;
          v94 = v251;
          v92 = v252;
          cosval = v248;
          v88.i32[0] = v250;
          sinval = v246;
          goto LABEL_45;
        }

        v194 = __sincosf_stret(v67);
        cosval = v194.__cosval;
        v98 = 0.0;
        sinval = -v194.__sinval;
      }

      else
      {
        v108 = __sincosf_stret(v67);
        cosval = v108.__cosval;
        sinval = v108.__sinval;
        v98 = 0.0;
      }
    }

    else
    {
      v99 = *(a1 + 516);
      v100 = fabsf(v98);
      if (v99 < v68)
      {
        if (fabsf(sinval) < 0.00000011921 && v100 < 0.00000011921)
        {
LABEL_48:
          if (*(a1 + 520) >= 0.0)
          {
            sub_1AFD9931C(v20, v268, (a1 + 580), &v267);
            v204 = *(a1 + 580);
            v205 = *(a1 + 520);
            v206 = *(a1 + 496);
            if (v204 > (v205 * v206))
            {
              *(a1 + 593) = 1;
              v207 = v204 - (v205 * v206);
              v208 = v204 < v205;
              v209 = 1.0;
              if (v208)
              {
                v209 = 1.0;
                if (v206 < 1.0)
                {
                  v209 = v207 / (v205 + (-v205 * v206));
                }
              }

              *(a1 + 600) = v209;
              v210.i64[0] = 0x8000000080000000;
              v210.i64[1] = 0x8000000080000000;
              v211 = veorq_s8(v267, v210);
              v212 = v260;
              v213 = vextq_s8(v211, v211, 8uLL).u64[0];
              *v214.f32 = vzip1_s32(v213, *v211.f32);
              *v210.i8 = vzip1_s32(*&vextq_s8(v212, v212, 8uLL), *v260.i8);
              v215.i64[0] = vextq_s8(v212, v212, 4uLL).u64[0];
              *v216.f32 = vext_s8(*v211.f32, v213, 4uLL);
              *v217.f32 = vdup_laneq_s32(v260, 3);
              *&v216.u32[2] = vrev64_s32(*v214.f32);
              v210.i64[1] = v215.i64[0];
              v217.i64[1] = v260.i64[0];
              *&v211.u32[2] = vdup_lane_s32(*v211.f32, 1);
              v215.i64[1] = vextq_s8(v212, v212, 0xCuLL).u64[0];
              v214.i64[1] = v214.i64[0];
              v218 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v217, v211), vmulq_f32(v215, v214)), xmmword_1AFE47BE0), vmulq_f32(v210, v216));
              v216.i64[0] = vextq_s8(v218, v218, 4uLL).u64[0];
              *v219.f32 = v264;
              *v215.f32 = vzip1_s32(*&vextq_s8(v218, v218, 8uLL), *v218.f32);
              v215.i64[1] = v216.i64[0];
              v220.i64[0] = v261;
              *&v220.u32[2] = vrev64_s32(v264);
              v221 = vtrn2q_s32(v263, v263);
              v216.i64[1] = v215.i64[0];
              *&v219.u32[2] = vext_s8(v262, *v263.f32, 4uLL);
              v222 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v263, v218, 3), vmulq_f32(v220, v215)), vaddq_f32(vmulq_f32(vextq_s8(v221, v221, 8uLL), vdupq_lane_s64(v218.i64[0], 0)), vmulq_f32(v219, v216)));
              v222.i32[3] = 0;
              *(a1 + 576) = v207;
              *(a1 + 544) = v222;
              v223 = *a4;
              v224 = a4[1];
              v223.i32[3] = 0;
              v224.i32[3] = 0;
              v225 = a4[2];
              v225.i32[3] = 0;
              v226 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v225, v222, 2), vaddq_f32(vmulq_n_f32(v223, v222.f32[0]), vmulq_lane_f32(v224, *v222.f32, 1))), v222);
              v227 = *a5;
              v228 = a5[1];
              v227.i32[3] = 0;
              v228.i32[3] = 0;
              v229 = a5[2];
              v229.i32[3] = 0;
              v230 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v229, v222, 2), vaddq_f32(vmulq_n_f32(v227, v222.f32[0]), vmulq_lane_f32(v228, *v222.f32, 1))), v222);
              *(a1 + 564) = 1.0 / vadd_f32(vadd_f32(vpadd_f32(*v226.i8, *v226.i8), *&vextq_s8(v226, v226, 8uLL)), vadd_f32(vpadd_f32(*v230.i8, *v230.i8), *&vextq_s8(v230, v230, 8uLL))).f32[0];
            }

            if (*(a1 + 594) == 1)
            {
              v231.i64[0] = 0x8000000080000000;
              v231.i64[1] = 0x8000000080000000;
              v232 = veorq_s8(v267, v231);
              v231.i64[0] = vextq_s8(v232, v232, 8uLL).u64[0];
              *v233.f32 = vzip1_s32(*v231.i8, *v232.f32);
              *v231.i8 = vext_s8(*v232.f32, *v231.i8, 4uLL);
              v232.i64[1] = v233.i64[0];
              v234 = vrev64_s32(*v233.f32);
              *&v233.u32[2] = vdup_lane_s32(*v232.f32, 1);
              v235.i64[0] = v258;
              v235.i64[1] = v265.i64[0];
              v236 = vmulq_f32(v235, v233);
              v231.u64[1] = v234;
              v235.i64[0] = v259;
              v235.i64[1] = v258;
              v237 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v257, v232), v236), xmmword_1AFE47BE0), vmulq_f32(v235, v231));
              v238 = veorq_s8(v265, xmmword_1AFE47BF0);
              v235.i64[0] = vextq_s8(v238, v238, 8uLL).u64[0];
              *v239.f32 = vzip1_s32(*v235.f32, *v238.f32);
              v240 = vext_s8(*v235.f32, *v238.f32, 4uLL);
              v241.i64[0] = vextq_s8(v237, v237, 4uLL).u64[0];
              *v235.f32 = vext_s8(*v238.f32, *v235.f32, 4uLL);
              *v242.f32 = vzip1_s32(*&vextq_s8(v237, v237, 8uLL), *v237.f32);
              v242.i64[1] = v241.i64[0];
              *&v235.u32[2] = vrev64_s32(*v239.f32);
              v243 = vmulq_laneq_f32(v238, v237, 3);
              v244 = vtrn2q_s32(v238, v238);
              v241.i64[1] = v242.i64[0];
              *&v239.u32[2] = v240;
              v245 = vaddq_f32(vsubq_f32(v243, vmulq_f32(v235, v242)), vaddq_f32(vmulq_f32(vextq_s8(v244, v244, 8uLL), vdupq_lane_s64(v237.i64[0], 0)), vmulq_f32(v239, v241)));
              v245.i32[3] = 0;
              *(a1 + 608) = v245;
            }
          }

          else
          {
            *(a1 + 580) = 0;
          }

          return;
        }

        *v101.f32 = v75;
        *&v101.u32[2] = v77;
        *(a1 + 594) = 1;
        *v102.f32 = vext_s8(v92, v94, 4uLL);
        *&v102.u32[2] = v92;
        *v103.f32 = vext_s8(v75, v77, 4uLL);
        *&v103.u32[2] = v75;
        v104 = vsubq_f32(vmulq_f32(v103, v95), vmulq_f32(v101, v102));
        v105 = vextq_s8(vextq_s8(v104, v104, 0xCuLL), v104, 8uLL);
        v105.i32[3] = 0;
        v102.i64[0] = 0x8000000080000000;
        v102.i64[1] = 0x8000000080000000;
        v106 = veorq_s8(v105, v102);
LABEL_47:
        *(a1 + 528) = v106;
        goto LABEL_48;
      }

      if (fabsf(cosval) < 0.00000011921 && v100 < 0.00000011921 || (*(a1 + 594) = 1, v99 < v68))
      {
LABEL_45:
        *v93.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v81, sinval), v75, cosval), v86, v98);
        v93.f32[2] = ((sinval * v82.f32[0]) + (cosval * v77.f32[0])) + (v98 * v88.f32[0]);
        v196 = vmulq_f32(v93, v93);
        v197 = vmulq_n_f32(v93, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v196.i8, *v196.i8), *&vextq_s8(v196, v196, 8uLL)).f32[0]));
        *v198.f32 = vext_s8(v92, v94, 4uLL);
        *&v198.u32[2] = v92;
        v199 = vsubq_f32(vmulq_f32(v95, vextq_s8(vextq_s8(v197, v197, 0xCuLL), v197, 8uLL)), vmulq_f32(v198, v197));
        v200 = vextq_s8(vextq_s8(v199, v199, 0xCuLL), v199, 8uLL);
        v200.i32[3] = 0;
        v198.i64[0] = 0x8000000080000000;
        v198.i64[1] = 0x8000000080000000;
        v201 = veorq_s8(v200, v198);
        *(a1 + 528) = v201;
        v202 = vmulq_f32(v201, v201);
        v203 = sqrtf(vadd_f32(vpadd_f32(*v202.i8, *v202.i8), *&vextq_s8(v202, v202, 8uLL)).f32[0]);
        *(a1 + 572) = v203;
        if (fabsf(v203) < 0.00000011921)
        {
          goto LABEL_48;
        }

        v106 = vmulq_n_f32(v201, 1.0 / v203);
        goto LABEL_47;
      }

      v250 = v88.i32[0];
      v251 = v94;
      v252 = v92;
      v253 = v95;
      v254 = v82.i32[0];
      v255 = v75;
      v256 = v77.i32[0];
      v247 = v98;
      v249 = cosval;
      v171 = atan2f(v98, cosval);
      if (v171 <= v99)
      {
        sinval = 0.0;
        if (v171 >= -v99)
        {
          v75 = v255;
          v77.i32[0] = v256;
          v95 = v253;
          v82.i32[0] = v254;
          v94 = v251;
          v92 = v252;
          cosval = v249;
          v88.i32[0] = v250;
          v98 = v247;
          goto LABEL_45;
        }

        v195 = __sincosf_stret(v99);
        cosval = v195.__cosval;
        sinval = 0.0;
        v98 = -v195.__sinval;
      }

      else
      {
        v172 = __sincosf_stret(v99);
        cosval = v172.__cosval;
        v98 = v172.__sinval;
        sinval = 0.0;
      }
    }

    v75 = v255;
    v77.i32[0] = v256;
    v95 = v253;
    v82.i32[0] = v254;
    v94 = v251;
    v92 = v252;
    v88.i32[0] = v250;
    goto LABEL_45;
  }

  sub_1AF35A1DC(v269, (a1 + 640));
  v269[3] = 0u;
  v109 = *(a1 + 368);
  v110 = *(a1 + 384);
  v109.i32[3] = 0;
  v110.i32[3] = 0;
  v111 = a2[1];
  v112 = *(a1 + 400);
  v113 = *(a1 + 416);
  v112.i32[3] = 0;
  v114 = a2[2];
  v115 = vmlaq_lane_f32(vmulq_n_f32(v109, v114.f32[0]), v110, *v114.f32, 1);
  v116 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, v111.f32[0]), v110, *v111.f32, 1), v112, v111, 2);
  v117 = vmulq_f32(*a2, v113);
  v118 = vmulq_f32(v111, v113);
  v119 = vmulq_f32(v114, v113);
  v119.i32[3] = 0;
  v120 = vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*a2)), v110, *a2->f32, 1);
  *v110.f32 = vadd_f32(vpadd_f32(*v117.i8, *v118.i8), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
  *&v110.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
  v121 = *(a1 + 432);
  v122 = *(a1 + 448);
  v121.i32[3] = 0;
  v122.i32[3] = 0;
  v123 = vmlaq_laneq_f32(v120, v112, *a2, 2);
  v124 = *(a1 + 464);
  v125 = *(a1 + 480);
  v124.i32[3] = 0;
  v126 = a3[1];
  v127 = vmlaq_laneq_f32(v115, v112, v114, 2);
  v128 = a3[2];
  v129 = vmlaq_lane_f32(vmulq_n_f32(v121, v128.f32[0]), v122, *v128.f32, 1);
  v130 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v126.f32[0]), v122, *v126.f32, 1), v124, v126, 2);
  v131 = vmulq_f32(*a3, v125);
  v132 = vmulq_f32(v126, v125);
  v133 = vmulq_f32(v128, v125);
  v133.i32[3] = 0;
  v134 = vmlaq_lane_f32(vmulq_n_f32(v121, COERCE_FLOAT(*a3)), v122, *a3->f32, 1);
  *v131.f32 = vadd_f32(vpadd_f32(*v131.f32, *v132.i8), vzip1_s32(*&vextq_s8(v131, v131, 8uLL), *&vextq_s8(v132, v132, 8uLL)));
  *&v131.u32[2] = vpadd_f32(vpadd_f32(*v133.i8, *&vextq_s8(v133, v133, 8uLL)), 0);
  v135 = v269[0];
  v136 = v269[1];
  v135.i32[3] = 0;
  v137 = vmlaq_laneq_f32(v134, v124, *a3, 2);
  v136.i32[3] = 0;
  v138 = v269[2];
  v138.i32[3] = 0;
  v139 = vmlaq_laneq_f32(v129, v124, v128, 2);
  v140 = vaddq_f32(a2[3], v110);
  v141 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v135, v130.f32[0]), v136, *v130.f32, 1), v138, v130, 2);
  v142 = vmulq_f32(v137, 0);
  v143 = vmulq_f32(v130, 0);
  v144 = vmulq_f32(v139, 0);
  v144.i32[3] = 0;
  *v145.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v142, v142, 8uLL), *&vextq_s8(v143, v143, 8uLL)), vpadd_f32(*v142.i8, *v143.i8));
  *&v145.u32[2] = vpadd_f32(vpadd_f32(*v144.i8, *&vextq_s8(v144, v144, 8uLL)), 0);
  v146 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v135, v137.f32[0]), v136, *v137.f32, 1), v138, v137, 2);
  v147 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v135, v139.f32[0]), v136, *v139.f32, 1), v138, v139, 2);
  v148 = vtrn1q_s32(v123, v116);
  *v143.i8 = vzip2_s32(*v127.f32, 0);
  v135.i32[0] = vextq_s8(v127, v127, 8uLL).u32[0];
  v136.i64[0] = v127.u32[0];
  v127.i64[0] = vextq_s8(v148, v148, 8uLL).u64[0];
  v148.i64[1] = v136.i64[0];
  v149 = vnegq_f32(v140);
  v150 = vmulq_f32(v148, v149);
  *v116.f32 = vzip2_s32(*v123.i8, *v116.f32);
  v116.i64[1] = v143.i64[0];
  v151 = vmulq_f32(v116, v149);
  v127.i64[1] = v135.u32[0];
  v152 = vmulq_f32(v127, v149);
  v152.i32[3] = 0;
  v153 = vaddq_f32(a3[3], v131);
  *v151.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v150, v150, 8uLL), *&vextq_s8(v151, v151, 8uLL)), vpadd_f32(*v150.i8, *v151.f32));
  *&v151.u32[2] = vpadd_f32(vpadd_f32(*v152.i8, *&vextq_s8(v152, v152, 8uLL)), 0);
  v148.i32[3] = 0;
  v116.i32[3] = 0;
  v127.i32[3] = 0;
  v154 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v141.f32[0]), v116, *v141.f32, 1), v127, v141, 2);
  v155 = vmulq_f32(v146, v151);
  v156 = vmulq_f32(v141, v151);
  v157 = vmulq_f32(v147, v151);
  v157.i32[3] = 0;
  *v156.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v155, v155, 8uLL), *&vextq_s8(v156, v156, 8uLL)), vpadd_f32(*v155.i8, *v156.f32));
  *&v156.u32[2] = vpadd_f32(vpadd_f32(*v157.i8, *&vextq_s8(v157, v157, 8uLL)), 0);
  v268[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v146.f32[0]), v116, *v146.f32, 1), v127, v146, 2);
  v268[1] = v154;
  v268[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v147.f32[0]), v116, *v147.f32, 1), v127, v147, 2);
  v268[3] = vaddq_f32(vaddq_f32(v153, v145), v156);
  sub_1AFD78130(v268[0].f32, &v267);
  v158.i64[0] = v267.i64[0];
  v158.i64[1] = v267.u32[2];
  v159 = vmulq_f32(v158, v158);
  LODWORD(v160) = vadd_f32(vpadd_f32(*v159.i8, *v159.i8), *&vextq_s8(v159, v159, 8uLL)).u32[0];
  if (fabsf(v160) >= 0.00000011921)
  {
    *(a1 + 528) = vmulq_n_f32(v158, 1.0 / sqrtf(v160));
    v161 = *&v267.i32[3];
    if (*&v267.i32[3] < -1.0)
    {
      v161 = -1.0;
    }

    if (v161 > 1.0)
    {
      v161 = 1.0;
    }

    v162 = acosf(v161);
    v163 = v162 + v162;
    *(a1 + 572) = v163;
    if (fabsf(v163) >= 0.00000011921)
    {
      *(a1 + 594) = 1;
    }
  }
}