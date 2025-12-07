uint64_t sub_1AFD797E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = (*(v7 + 40) + 96 * a3);
  v14 = *v13;
  v15 = v13[1];
  v14.i32[3] = 0;
  v15.i32[3] = 0;
  v16 = v13[2];
  v17 = v13[3];
  v16.i32[3] = 0;
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v10.f32[0]), v15, *v10.f32, 1), v16, v10, 2);
  v19 = vmulq_f32(v9, v17);
  v20 = vmulq_f32(v10, v17);
  v21 = vmulq_f32(v11, v17);
  v21.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v19.i8, *v20.f32), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *&v20.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v40[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v9.f32[0]), v15, *v9.f32, 1), v16, v9, 2);
  v40[1] = v18;
  v40[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v11.f32[0]), v15, *v11.f32, 1), v16, v11, 2);
  v40[3] = vaddq_f32(v12, v20);
  (*(*a2 + 16))(a2, v40, v39, &v36);
  result = (*(**(*(a1 + 16) + 8) + 16))(*(*(a1 + 16) + 8), *(*(a1 + 16) + 24), v35, v34);
  if (!off_1EB6C3710 || (result = off_1EB6C3710(*(*(a1 + 16) + 8), a2), result))
  {
    v24 = v39[0] > v34[0] || v36 < v35[0];
    if (v39[2] > v34[2] || v38 < v35[2])
    {
      v24 = 1;
    }

    if (v39[1] <= v34[1])
    {
      v23.n128_f32[0] = v37;
      if (v37 < v35[1])
      {
        v24 = 1;
      }

      if (!v24)
      {
        v25 = *(*(a1 + 8) + 16);
        v31[0] = *(a1 + 8);
        v31[1] = a2;
        v31[2] = v25;
        v31[3] = v40;
        v32 = -1;
        v33 = a3;
        if (!*(*(a1 + 48) + 8 * a3))
        {
          *(*(a1 + 48) + 8 * a3) = (*(**(a1 + 24) + 16))(*(a1 + 24), v31, *(a1 + 16), *(a1 + 56), v23);
          v25 = *(*(a1 + 8) + 16);
        }

        v26 = *(a1 + 40);
        v27 = v26[2];
        if (*(v27 + 16) == v25)
        {
          v26[2] = v31;
          (*(*v26 + 16))(v26, 0xFFFFFFFFLL, a3, v23);
        }

        else
        {
          v27 = v26[3];
          v26[3] = v31;
          (*(*v26 + 24))(v26, 0xFFFFFFFFLL, a3, v23);
        }

        v28 = *(*(a1 + 48) + 8 * a3);
        result = (*(*v28 + 16))(v28, v31, *(a1 + 16), *(a1 + 32), *(a1 + 40));
        v29 = *(a1 + 40);
        v30 = 24;
        if (*(*(v29 + 16) + 16) == *(*(a1 + 8) + 16))
        {
          v30 = 16;
        }

        *(v29 + v30) = v27;
      }
    }
  }

  return result;
}

float sub_1AFD79B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 48))
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (*(a1 + 48))
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(a1 + 20);
  if (v7 < 1)
  {
    return 1.0;
  }

  v11 = 0;
  v12 = *(v5 + 208);
  v13 = *(v5 + 16);
  v14 = *(v5 + 32);
  v15 = *(v5 + 48);
  v34 = vdupq_lane_s32(*v13.i8, 1);
  v35 = *(v5 + 64);
  v32 = vdupq_lane_s32(*v15.i8, 1);
  v33 = vdupq_lane_s32(*v14.i8, 1);
  v38 = v13;
  v36 = v15;
  v37 = v14;
  v30 = vdupq_laneq_s32(v14, 2);
  v31 = vdupq_laneq_s32(v13, 2);
  v16 = 8 * v7;
  v17 = 1.0;
  v18 = 32;
  v29 = vdupq_laneq_s32(v15, 2);
  do
  {
    v19 = (*(v12 + 40) + v18);
    v20 = v19[-2];
    v21 = v19[-1];
    v20.i32[3] = 0;
    v21.i32[3] = 0;
    v22 = *v19;
    v23 = v19[1];
    v22.i32[3] = 0;
    v24 = vmulq_f32(v38, v23);
    v25 = vmulq_f32(v37, v23);
    v26 = vmulq_f32(v36, v23);
    v26.i32[3] = 0;
    *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
    *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
    *(v5 + 16) = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v20, v38.f32[0]), v34, v21), v31, v22);
    *(v5 + 32) = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v20, v37.f32[0]), v33, v21), v30, v22);
    *(v5 + 48) = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v20, v36.f32[0]), v32, v21), v29, v22);
    *(v5 + 64) = vaddq_f32(v35, v24);
    v27 = (*(**(*(a1 + 32) + v11) + 24))(*(*(a1 + 32) + v11), v5, v6, a4, a5);
    if (v27 < v17)
    {
      v17 = v27;
    }

    *(v5 + 16) = v38;
    *(v5 + 32) = v37;
    *(v5 + 48) = v36;
    *(v5 + 64) = v35;
    v11 += 8;
    v18 += 96;
  }

  while (v16 != v11);
  return v17;
}

_DWORD *sub_1AFD79CE8(_DWORD *result, uint64_t a2)
{
  v2 = result[5];
  if (v2 >= 1)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      result = *(*(v4 + 4) + 8 * i);
      if (result)
      {
        result = (*(*result + 32))(result, a2);
        v2 = v4[5];
      }
    }
  }

  return result;
}

void *sub_1AFD79DA0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_1AFD715C8(a1, a2);
  *v10 = &unk_1F2570D78;
  *(v10 + 16) = v5;
  sub_1AFD79FC4(v10 + 4, *a2, a3, a4, v5);
  return a1;
}

void sub_1AFD79E28(void *a1)
{
  *a1 = &unk_1F2570D78;
  sub_1AFD7A07C((a1 + 4));

  nullsub_106();
}

void sub_1AFD79E7C(void *a1)
{
  *a1 = &unk_1F2570D78;
  sub_1AFD7A07C((a1 + 4));
  nullsub_106();

  JUMPOUT(0x1B271C6B0);
}

void sub_1AFD79EE4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  if (v2)
  {
    v4 = *(a2 + 4);
    if (v4 == *(a2 + 8))
    {
      v5 = v4 ? 2 * v4 : 1;
      if (v4 < v5)
      {
        if (v5)
        {
          v7 = sub_1AFDA7294(8 * v5, 16);
          v4 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v4 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v4 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            sub_1AFDA72A0(v9);
            v4 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v5;
        v2 = *(result + 128);
      }
    }

    *(*(a2 + 16) + 8 * v4) = v2;
    *(a2 + 4) = v4 + 1;
  }
}

void *sub_1AFD79FC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  a1[9] = a2;
  a1[10] = 0;
  if (a5)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  *a1 = &unk_1F2570DB0;
  a1[1] = v6;
  if (a5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a4;
  }

  a1[2] = v7;
  v8 = (*(*a2 + 24))(a2, *(v6 + 16), *(v7 + 16));
  a1[12] = v8;
  (*(*a1[9] + 40))(a1[9], v8);
  return a1;
}

void sub_1AFD7A07C(uint64_t a1)
{
  *a1 = &unk_1F2570DB0;
  (*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 96));
  (*(**(a1 + 72) + 32))(*(a1 + 72), *(a1 + 96));

  nullsub_106();
}

void sub_1AFD7A124(uint64_t a1)
{
  sub_1AFD7A07C(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AFD7A15C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 8) + 8) + 8) <= 19)
  {
    v8 = *(a1 + 72);
    sub_1AFD8A774(&v22);
    v22 = &unk_1F2570DD8;
    v23 = 1;
    v9 = a2[1];
    v25 = *a2;
    v10 = a2[2];
    v26 = v9;
    v27 = v10;
    v24 = *(a1 + 88);
    v11 = *(a1 + 8);
    v18[0] = *(a1 + 16);
    v18[1] = &v22;
    v19 = *(v18[0] + 16);
    v20 = a3;
    v21 = a4;
    v12 = (*(*v8 + 16))(v8, v11, v18, *(a1 + 96));
    v13 = *(a1 + 64);
    v14 = v13[2];
    if (*(v14 + 16) == *(*(a1 + 16) + 16))
    {
      v13[2] = v18;
      (*(*v13 + 16))(v13, a3, a4);
    }

    else
    {
      v14 = v13[3];
      v13[3] = v18;
      (*(*v13 + 24))(v13, a3, a4);
    }

    (*(*v12 + 16))(v12, *(a1 + 8), v18, *(a1 + 80), *(a1 + 64));
    v15 = *(a1 + 64);
    v16 = 24;
    if (*(*(v15 + 16) + 16) == *(*(a1 + 16) + 16))
    {
      v16 = 16;
    }

    *(v15 + v16) = v14;
    (**v12)(v12);
    (*(*v8 + 120))(v8, v12);
    sub_1AFD8A7AC(&v22);
  }

  return result;
}

float32x4_t sub_1AFD7A3E0(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int32x2_t a6)
{
  a1->i64[1] = a3;
  a1[1].i64[0] = a4;
  a1[5].i64[0] = a2;
  a1[5].i32[2] = a6.i32[0];
  a1[4].i64[0] = a5;
  v7 = *(a4 + 24);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = *(v7 + 3);
  v12 = *(a3 + 24);
  v14 = *v12;
  v13 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  v17 = vtrn1q_s32(v8, v9);
  v18.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
  v18.i64[1] = vextq_s8(v10, v10, 8uLL).u32[0];
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  v20 = veorq_s8(v11, v19);
  v21 = vmulq_f32(v18, v20);
  v21.i32[3] = 0;
  v16.i32[3] = 0;
  v13.i32[3] = 0;
  v22 = vzip2_s32(*v10.f32, 0);
  v14.i32[3] = 0;
  v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, v8, 2), v13, v9, 2), v16, v10, 2);
  v24 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v14, *v8.f32, 1), v13, *v9.f32, 1), v16, *v10.f32, 1);
  v25 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v14, v8.f32[0]), v13, v9.f32[0]), v16, v10.f32[0]);
  v17.i64[1] = v10.u32[0];
  v26 = vmulq_f32(v17, v20);
  *v8.f32 = vzip2_s32(*v8.f32, *v9.f32);
  *&v8.u32[2] = v22;
  v27 = vmulq_f32(v8, v20);
  *v27.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vpadd_f32(*v26.i8, *v27.f32));
  v28 = vmulq_f32(v18, v15);
  v28.i32[3] = 0;
  v29 = vmulq_f32(v17, v15);
  v30 = vmulq_f32(v8, v15);
  *v30.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vpadd_f32(*v29.i8, *v30.f32));
  *&v30.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  *&v27.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v35[0] = v25;
  v35[1] = v24;
  v35[2] = v23;
  v35[3] = vaddq_f32(v27, v30);
  (*(**(a3 + 8) + 16))(*(a3 + 8), v35, a1 + 2, a1 + 3);
  v31 = vdupq_lane_s32(a6, 0);
  v31.i32[3] = 0;
  v32 = vaddq_f32(v31, a1[3]);
  result = vsubq_f32(a1[2], v31);
  a1[2] = result;
  a1[3] = v32;
  return result;
}

float32x4_t *sub_1AFD7A55C(float32x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result[1].i8[0])
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (result[1].i8[0])
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(v6 + 8);
  if ((v7[2] - 21) <= 8 && *(*(v5 + 8) + 8) <= 19)
  {
    v10 = result;
    *&v11 = (*(*v7 + 96))(*(v6 + 8));
    a5[1] = v10[8].i64[0];
    v12 = sub_1AFD7A3E0(v10 + 2, a4, v5, v6, a5, v11);
    v13 = v10[8].i64[0];
    v14 = *(v6 + 16);
    *(v13 + 784) = *(v5 + 16);
    *(v13 + 792) = v14;
    (*(*v7 + 128))(v7, v10 + 2, v10 + 4, v10 + 5, v12);
    result = a5[1];
    if (result[50].i32[0])
    {
      v15 = result[49].i64[0];
      v16 = *(a5[2] + 16);
      v17 = v15 == v16;
      if (v15 == v16)
      {
        v18 = *(a5[3] + 16);
      }

      else
      {
        v18 = *(a5[2] + 16);
      }

      if (!v17)
      {
        v16 = *(a5[3] + 16);
      }

      result = sub_1AFD93A10(result, v16 + 1, v18 + 1);
    }

    v10[2].i64[1] = 0;
    v10[3].i64[0] = 0;
  }

  return result;
}

float sub_1AFD7A690(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = v3[8];
  v5 = v3[4];
  v6 = vsubq_f32(v4, v5);
  v6.i32[3] = 0;
  v7 = vmulq_f32(v6, v6);
  v8 = 1.0;
  if (vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0] >= (v3[18].f32[0] * v3[18].f32[0]))
  {
    if (*(a1 + 16))
    {
      v9 = a2;
    }

    else
    {
      v9 = a3;
    }

    v10 = v9[13].i64[0];
    if ((v10[2] - 21) <= 8)
    {
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v14 = vzip2_s32(*v13.f32, 0);
      v15 = vextq_s8(v13, v13, 8uLL).u32[0];
      v16 = v3[6];
      v17 = v3[7];
      v17.i32[3] = 0;
      v18 = v3[5];
      v16.i32[3] = 0;
      v18.i32[3] = 0;
      v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, v11, 2), v16, v12, 2), v17, v13, 2);
      v21 = v3[2];
      v20 = v3[3];
      v20.i32[3] = 0;
      v22 = v3[1];
      v21.i32[3] = 0;
      v23 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v18, v11.f32[0]), v16, v12.f32[0]), v17, v13.f32[0]);
      v22.i32[3] = 0;
      v24 = vmlaq_lane_f32(vmulq_lane_f32(v18, *v11.f32, 1), v16, *v12.f32, 1);
      v25 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, v11.f32[0]), v21, v12.f32[0]), v20, v13.f32[0]);
      v26 = vmlaq_lane_f32(v24, v17, *v13.f32, 1);
      v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v22, v11, 2), v21, v12, 2), v20, v13, 2);
      v28 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v22, *v11.f32, 1), v21, *v12.f32, 1), v20, *v13.f32, 1);
      v29 = vtrn1q_s32(v11, v12);
      v21.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
      v29.i64[1] = v13.u32[0];
      v13.i64[0] = 0x8000000080000000;
      v13.i64[1] = 0x8000000080000000;
      v30 = veorq_s8(v9[4], v13);
      v31 = vmulq_f32(v29, v30);
      *v11.f32 = vzip2_s32(*v11.f32, *v12.f32);
      *&v11.u32[2] = v14;
      v32 = vmulq_f32(v11, v30);
      *v32.f32 = vadd_f32(vpadd_f32(*v31.i8, *v32.f32), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
      v21.i64[1] = v15;
      v33 = vmulq_f32(v21, v30);
      v33.i32[3] = 0;
      *&v32.u32[2] = vpadd_f32(vpadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)), 0);
      v34 = vmulq_f32(v4, v29);
      v35 = vmulq_f32(v4, v11);
      *v34.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vpadd_f32(*v34.f32, *v35.i8));
      v36 = vmulq_f32(v4, v21);
      v36.i32[3] = 0;
      *&v34.u32[2] = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
      v37 = vaddq_f32(v32, v34);
      v38 = vmulq_f32(v5, v29);
      v39 = vmulq_f32(v5, v11);
      v40 = vmulq_f32(v5, v21);
      v40.i32[3] = 0;
      *v39.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vpadd_f32(*v38.i8, *v39.f32));
      *&v39.u32[2] = vpadd_f32(vpadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)), 0);
      v41 = vaddq_f32(v32, v39);
      v42 = vminq_f32(v41, v37);
      v43 = vmaxq_f32(v41, v37);
      v49 = &unk_1F2570EF0;
      v50 = v25;
      v51 = v28;
      v52 = v27;
      v53 = v41;
      v54 = v23;
      v55 = v26;
      v56 = v19;
      v57 = v37;
      v41.i64[0] = v3[17].i64[1];
      v44 = vdupq_lane_s32(*v41.f32, 1);
      v44.i32[3] = 0;
      v47 = vaddq_f32(v43, v44);
      v48 = vsubq_f32(v42, v44);
      v58 = vrev64_s32(*v41.f32);
      (*(*v10 + 128))(v10, &v49, &v48, &v47);
      v45 = v58.i32[1];
      if (*&v58.i32[1] < v3[17].f32[2])
      {
        v3[17].i32[2] = v58.i32[1];
        nullsub_106();
        return *&v45;
      }

      else
      {
        nullsub_106();
      }
    }
  }

  return v8;
}

void sub_1AFD7A94C(void *a1, double a2)
{
  sub_1AFD8A7AC(a1);

  sub_1AFDA72A0(v2);
}

double sub_1AFD7A9B4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.00781250185;
  *a1 = xmmword_1AFE208C0;
  return result;
}

const char *sub_1AFD7A9D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return "btConvexInternalShapeData";
}

__n128 sub_1AFD7AA4C@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  v3 = a1 + 5;
  v6 = vmulq_f32(v4, *a2);
  v7 = vmulq_f32(*a2, v5);
  v8 = vmulq_f32(*a2, v3[2]);
  v8.i32[3] = 0;
  v9 = vadd_f32(vpadd_f32(*v6.i8, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  v10 = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
  v11 = 2;
  if (v9.f32[1] >= v10.f32[0])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if ((vcgt_f32(v10, v9).u8[0] & 1) == 0)
  {
    v11 = 0;
  }

  if (v9.f32[0] < v9.f32[1])
  {
    v11 = v12;
  }

  result = v3[v11];
  *a3 = result;
  return result;
}

float32x4_t *sub_1AFD7AAC0(float32x4_t *result, float32x4_t *a2, _OWORD *a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      v6 = vmulq_f32(result[5], v5);
      v7 = vmulq_f32(v5, result[7]);
      v8 = vmulq_f32(v5, result[6]);
      v7.i32[3] = 0;
      v9 = vadd_f32(vpadd_f32(*v6.i8, *v8.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
      v10 = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
      if (v9.f32[1] >= v10.f32[0])
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (vcgt_f32(v10, v9).u8[0])
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      if (v9.f32[0] >= v9.f32[1])
      {
        v11 = v12;
      }

      *a3++ = result[v11 + 5];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x16_t sub_1AFD7AB54(float32x4_t *a1, __int32 a2, int8x16_t *a3, int32x4_t a4)
{
  a4.i32[0] = 0;
  v4 = a1[5];
  v5 = vsubq_f32(a1[7], v4);
  v6 = v5;
  v6.i32[3] = 0;
  v7 = vsubq_f32(a1[6], v4);
  v8 = vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL);
  v9 = v7;
  v9.i32[3] = 0;
  v10 = vsubq_f32(vmulq_f32(v8, v7), vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), v5));
  v11 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
  v11.i32[3] = 0;
  v12 = vmulq_f32(v11, v11);
  *v5.f32 = vpadd_f32(*v12.i8, *v12.i8);
  v13 = vextq_s8(v12, v12, 8uLL);
  *v13.i8 = vadd_f32(*v5.f32, *v13.i8);
  v14 = vmulq_n_f32(v11, 1.0 / sqrtf(*v13.i32));
  v13.i32[0] = a2;
  result = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v13, a4), 0), v14, vnegq_f32(v14));
  *a3 = result;
  return result;
}

uint64_t sub_1AFD7ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  (*(*a1 + 216))(a1, a2, a3);
  v7 = *(*a1 + 216);

  return v7(a1, ((v5 + 1) % 3), a4);
}

__n128 sub_1AFD7AC9C(uint64_t a1, int a2, __n128 *a3)
{
  result = *(a1 + 16 * a2 + 80);
  *a3 = result;
  return result;
}

BOOL sub_1AFD7ACF0(float32x4_t *a1, float32x4_t *a2, float a3)
{
  result = 0;
  v5 = a1[5];
  v6 = vsubq_f32(a1[6], v5);
  v6.i32[3] = 0;
  v7 = vsubq_f32(a1[7], v5);
  v7.i32[3] = 0;
  v8 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), v6), vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), v7));
  v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_n_f32(v9, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0]));
  v12 = vmulq_f32(*a2, v11);
  v28 = v11;
  v13 = vmulq_f32(v5, v11);
  v14 = vsub_f32(vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL))).f32[0];
  v15 = -a3;
  if (v14 >= -a3 && v14 <= a3)
  {
    v18 = 0;
    v27 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
    do
    {
      (*(a1->i64[0] + 208))(a1, v18, &v30, &v29);
      v19 = vsubq_f32(v29, v30);
      v20 = vsubq_f32(vmulq_f32(v27, v19), vmulq_f32(v28, vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL)));
      v21 = vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL);
      v21.i32[3] = 0;
      v22 = vmulq_f32(v21, v21);
      v23 = vmulq_n_f32(v21, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v22.i8, *v22.i8), *&vextq_s8(v22, v22, 8uLL)).f32[0]));
      v24 = vmulq_f32(*a2, v23);
      v25 = vmulq_f32(v30, v23);
      *v25.i32 = vsub_f32(vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)), vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL))).f32[0];
      result = *v25.i32 >= v15;
      v26 = *v25.i32 < v15 || v18 == 2;
      v18 = (v18 + 1);
    }

    while (!v26);
  }

  return result;
}

__n128 sub_1AFD7AEA0(float32x4_t *a1, uint64_t a2, float32x4_t *a3, __n128 *a4)
{
  v4 = a1[5];
  v5 = vsubq_f32(a1[6], v4);
  v5.i32[3] = 0;
  v6 = vsubq_f32(a1[7], v4);
  v6.i32[3] = 0;
  v7 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), v5), vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), v6));
  v8 = vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL);
  v8.i32[3] = 0;
  v9 = vmulq_f32(v8, v8);
  *a3 = vmulq_n_f32(v8, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)).f32[0]));
  result = a1[5];
  *a4 = result;
  return result;
}

double sub_1AFD7AF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F2570F18;
  *&result = 0x300000000;
  *(a1 + 32) = 0x300000000;
  *(a1 + 16) = a3;
  *(a1 + 24) = a2;
  return result;
}

void sub_1AFD7AF5C(uint64_t a1)
{
  *a1 = &unk_1F2570F40;
  if (*(a1 + 32) == 1 && *(a1 + 40))
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  nullsub_106();
}

void sub_1AFD7AFEC(uint64_t a1)
{
  sub_1AFD7AF5C(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AFD7B024(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v249 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 40);
  if (!v10)
  {
    v10 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2[2], a3[2]);
    *(a1 + 40) = v10;
    *(a1 + 32) = 1;
  }

  a5[1] = v10;
  v11 = a2[1];
  v12 = a3[1];
  if (*(v11 + 8) == 10 && v12->i32[2] == 10)
  {
    v13 = sub_1AFD938FC(v10);
    v14 = *(v11 + 72);
    v15 = *(v11 + 48 + 4 * v14);
    v16 = (v14 + 2) % 3;
    v17 = v12[4].i32[2];
    v18 = v12[3].f32[v17];
    v19 = a2[3];
    v20 = a3[3];
    v21 = &v19->f32[v14];
    v22 = *v21;
    v23 = v21[4];
    v25.f32[0] = *v21;
    v24 = v21[8];
    v25.f32[1] = v23;
    v25.i64[1] = LODWORD(v24);
    v26 = &v20->i32[v17];
    v27.i32[0] = *v26;
    v27.i32[1] = v26[4];
    v27.i32[2] = v26[8];
    v28 = v20[3];
    v29 = vsubq_f32(v28, v19[3]);
    v29.i32[3] = 0;
    v30 = vmulq_f32(v25, v27);
    v31 = vadd_f32(vpadd_f32(*v30.i8, *v30.i8), *&vextq_s8(v30, v30, 8uLL)).f32[0];
    v32 = vmulq_f32(v25, v29);
    LODWORD(v33) = vadd_f32(vpadd_f32(*v32.i8, *v32.i8), *&vextq_s8(v32, v32, 8uLL)).u32[0];
    v34 = vmulq_f32(v27, v29);
    v35 = vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).f32[0];
    v36 = 1.0 - (v31 * v31);
    v37 = 0.0;
    if (v36 != 0.0)
    {
      v38 = (v33 + (-v35 * v31)) / v36;
      v37 = -v15;
      if (v38 >= -v15)
      {
        v37 = v38;
        if (v38 > v15)
        {
          v37 = v15;
        }
      }
    }

    v39 = v12[3].f32[(v17 + 2) % 3];
    v40 = (v37 * v31) - v35;
    v41 = -v18;
    if (v40 >= -v18)
    {
      if (v40 <= v18)
      {
        goto LABEL_80;
      }

      v61 = v33 + (v18 * v31);
      v37 = -v15;
      v40 = v12[3].f32[v17];
      if (v61 < -v15)
      {
        goto LABEL_80;
      }

      if (v61 <= v15)
      {
        v37 = v61;
        goto LABEL_80;
      }
    }

    else
    {
      v42 = v33 + (v41 * v31);
      v37 = -v15;
      v40 = v41;
      if (v42 < -v15)
      {
LABEL_80:
        v181 = vmulq_n_f32(v25, v37);
        v182 = vmulq_n_f32(v27, v40);
        v182.i32[3] = 0;
        v183 = vsubq_f32(v29, v181);
        v183.i32[3] = 0;
        v184 = vaddq_f32(v182, v183);
        v185 = vmulq_f32(v184, v184);
        LODWORD(v186) = vadd_f32(vpadd_f32(*v185.i8, *v185.i8), *&vextq_s8(v185, v185, 8uLL)).u32[0];
        v187 = sqrtf(v186);
        v188 = (v187 - *(v11 + 48 + 4 * v16)) - v39;
        if (v188 <= v13)
        {
          if (v186 <= 1.4211e-14)
          {
            if (fabsf(v24) <= 0.70711)
            {
              v191 = 1.0 / sqrtf((v23 * v23) + (v22 * v22));
              v212.f32[0] = -(v23 * v191);
              *(v212.i64 + 4) = COERCE_UNSIGNED_INT(v22 * v191);
            }

            else
            {
              v190 = 1.0 / sqrtf((v24 * v24) + (v23 * v23));
              v212.i32[0] = 0;
              v212.f32[1] = -(v24 * v190);
              v212.f32[2] = v23 * v190;
            }
          }

          else
          {
            v189 = vmulq_n_f32(v184, -1.0 / v187);
            v189.i32[3] = 0;
            v212 = v189;
          }

          v192 = vaddq_f32(v28, v182);
          v193 = vmulq_n_f32(v212, v39);
          v193.i32[3] = 0;
          v240 = vaddq_f32(v192, v193);
        }

        if (v188 < v13)
        {
          (*(*a5 + 32))(a5, &v212, &v240, v188);
        }

LABEL_89:
        v176 = a5[1];
        if (!*(v176 + 800))
        {
          return;
        }

        v180 = *(a5[2] + 16);
        if (*(v176 + 784) == v180)
        {
          v194 = v180 + 1;
          v195 = (*(a5[3] + 16) + 16);
          goto LABEL_94;
        }

        v178 = *(a5[3] + 16);
LABEL_92:
        v194 = v178 + 1;
        v195 = v180 + 1;
LABEL_94:
        sub_1AFD93A10(v176, v194, v195);
        return;
      }

      if (v42 <= v15)
      {
        v37 = v33 + (v41 * v31);
        goto LABEL_80;
      }
    }

    v37 = v15;
    goto LABEL_80;
  }

  v248 = 1.0e18;
  sub_1AFD922AC(v235, v11, v12, *(a1 + 16), *(a1 + 24));
  v237 = v11;
  v238 = v12;
  v43 = (*(*v11 + 96))(v11);
  v44 = v43 + (*(v12->i64[0] + 96))(v12);
  v45 = sub_1AFD938FC(*(a1 + 40));
  v248 = (v44 + v45) * (v44 + v45);
  v46 = a2[3];
  v47 = v46[1];
  v240 = *v46;
  v241 = v47;
  v48 = v46[3];
  v242 = v46[2];
  v243 = v48;
  v49 = a3[3];
  v244 = *v49;
  v245 = v49[1];
  v246 = v49[2];
  v247 = v49[3];
  v50 = *(v11 + 8);
  if (v50 > 6)
  {
    goto LABEL_45;
  }

  v51 = v12->i32[2];
  if (v51 > 6)
  {
    goto LABEL_45;
  }

  v234 = &unk_1F2570F78;
  v52 = 0.0;
  if (v50)
  {
    v53 = (*(*v11 + 96))(v11);
    if (!v12->i32[2])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v53 = 0.0;
  if (v51)
  {
LABEL_17:
    v52 = (*(v12->i64[0] + 96))(v12);
  }

LABEL_18:
  v212.i64[0] = &unk_1F2570FB0;
  v212.i64[1] = a5;
  v214.i64[0] = __PAIR64__(LODWORD(v52), LODWORD(v53));
  v214.i8[12] = 0;
  if (*(v11 + 72))
  {
    if (v12[4].i64[1])
    {
      v54 = sub_1AFD938FC(*(a1 + 40));
      if (*(a4 + 32) == 1)
      {
        if (sub_1AFD9416C(*(v11 + 72), v12[4].i64[1], a2[3], a3[3], &v231, a5))
        {
          v60 = -1.0e30;
LABEL_70:
          sub_1AFD94D84(&v231, *(v11 + 72), v12[4].i64[1], a2[3], a3[3], a5, v60 - v54, v54, v55, v56, v57, v58, v59);
        }
      }

      else
      {
        sub_1AFD92300(v235, &v240, &v212, *(a4 + 24), 0);
        v231 = v213;
        if (v214.u8[12] == 1)
        {
          v60 = v214.f32[2];
          if (v214.f32[2] < 0.0)
          {
            goto LABEL_70;
          }
        }
      }

      if (*(a1 + 32) == 1)
      {
        v176 = a5[1];
        if (*(v176 + 800))
        {
          v177 = *(v176 + 784);
          v178 = *(a5[2] + 16);
          v179 = v177 == v178;
          if (v177 == v178)
          {
            v180 = *(a5[3] + 16);
          }

          else
          {
            v180 = *(a5[2] + 16);
          }

          if (!v179)
          {
            v178 = *(a5[3] + 16);
          }

          goto LABEL_92;
        }
      }

      return;
    }

    if (v12->i32[2] == 1)
    {
      *(v231.i64 + 4) = 0x100000000;
      v62 = a3[3];
      v63 = v12[5];
      v64 = vmulq_f32(*v62, v63);
      v65 = vmulq_f32(v63, v62[1]);
      v66 = vmulq_f32(v63, v62[2]);
      v66.i32[3] = 0;
      *v64.f32 = vadd_f32(vpadd_f32(*v64.f32, *v65.i8), vzip1_s32(*&vextq_s8(v64, v64, 8uLL), *&vextq_s8(v65, v65, 8uLL)));
      *&v64.u32[2] = vpadd_f32(vpadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL)), 0);
      v208 = vaddq_f32(v64, v62[3]);
      v67 = sub_1AFDA7294(16, 16);
      *v67 = v208;
      v68 = a3[3];
      v69 = v12[6];
      v70 = vmulq_f32(*v68, v69);
      v71 = vmulq_f32(v69, v68[1]);
      v72 = vmulq_f32(v69, v68[2]);
      v72.i32[3] = 0;
      *v70.f32 = vadd_f32(vpadd_f32(*v70.f32, *v71.i8), vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v71, v71, 8uLL)));
      *&v70.u32[2] = vpadd_f32(vpadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)), 0);
      v209 = vaddq_f32(v70, v68[3]);
      v73 = sub_1AFDA7294(32, 16);
      *v73 = *v67;
      sub_1AFDA72A0(v67);
      v233 = 1;
      v232 = v73;
      v73[1] = v209;
      v74 = a3[3];
      v75 = v12[7];
      v76 = vmulq_f32(*v74, v75);
      v77 = vmulq_f32(v75, v74[1]);
      v78 = vmulq_f32(v75, v74[2]);
      v78.i32[3] = 0;
      *v76.f32 = vadd_f32(vpadd_f32(*v76.f32, *v77.i8), vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)));
      *&v76.u32[2] = vpadd_f32(vpadd_f32(*v78.i8, *&vextq_s8(v78, v78, 8uLL)), 0);
      v210 = vaddq_f32(v76, v74[3]);
      v79 = sub_1AFDA7294(64, 16);
      v80 = v232;
      *v79 = *v232;
      v79[1] = v80[1];
      if (v233 == 1)
      {
        sub_1AFDA72A0(v80);
      }

      v233 = 1;
      v232 = v79;
      v79[2] = v210;
      *(v231.i64 + 4) = 0x400000003;
      v81 = sub_1AFD938FC(*(a1 + 40));
      sub_1AFD92300(v235, &v240, &v234, *(a4 + 24), 0);
      v82 = vmulq_f32(v236, v236);
      v83 = vadd_f32(vpadd_f32(*v82.i8, *v82.i8), *&vextq_s8(v82, v82, 8uLL)).f32[0];
      if (v83 > 0.00000011921)
      {
        v84 = vmulq_n_f32(v236, 1.0 / v83);
        v84.i32[3] = 0;
        v230 = v84;
        v85 = v239;
        v86 = v85 - (*(*v11 + 96))(v11);
        v87 = (*(v12->i64[0] + 96))(v12);
        sub_1AFD94970(&v230, *(v11 + 72), a2[3], &v231, a5, (v86 - v87) - v81, v81, v88, v89, v90, v91, v92);
      }

      if (*(a1 + 32) == 1)
      {
        v93 = a5[1];
        if (*(v93 + 800))
        {
          v94 = *(v93 + 784);
          v95 = *(a5[2] + 16);
          _ZF = v94 == v95;
          if (v94 == v95)
          {
            v97 = *(a5[3] + 16);
          }

          else
          {
            v97 = *(a5[2] + 16);
          }

          if (!_ZF)
          {
            v95 = *(a5[3] + 16);
          }

          sub_1AFD93A10(v93, v95 + 1, v97 + 1);
        }
      }

      if (v232 && v233 == 1)
      {
        sub_1AFDA72A0(v232);
      }

      return;
    }
  }

LABEL_45:
  sub_1AFD92300(v235, &v240, a5, *(a4 + 24), 0);
  if (*(a1 + 52))
  {
    if (*(a5[1] + 800) < *(a1 + 56))
    {
      v98 = vmulq_f32(v236, v236);
      v99 = vpadd_f32(*v98.i8, *v98.i8);
      v100 = vextq_s8(v98, v98, 8uLL);
      v101 = vadd_f32(v99, *v100.i8).f32[0];
      if (v101 > 0.00000011921)
      {
        _Q3 = vmulq_n_f32(v236, 1.0 / v101);
        v102 = _Q3.f32[2];
        _Q3.i32[3] = 0;
        v207 = _Q3;
        _S1 = _Q3.i32[1];
        if (fabsf(_Q3.f32[2]) <= 0.70711)
        {
          v111 = vdup_lane_s32(*_Q3.f32, 0);
          v111.f32[0] = -_Q3.f32[1];
          *v100.i8 = vmul_n_f32(v111, 1.0 / sqrtf(vmuls_lane_f32(_Q3.f32[1], *_Q3.f32, 1) + (_Q3.f32[0] * _Q3.f32[0])));
          v201 = v100;
        }

        else
        {
          __asm { FMLA            S2, S1, V3.S[1] }

          v109 = 1.0 / sqrtf(_S2);
          v110.i32[0] = 0;
          v110.f32[1] = -(_Q3.f32[2] * v109);
          v110.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v109, *_Q3.f32, 1));
          v201 = v110;
        }

        v112 = (*(*v11 + 32))(v11);
        v113 = (*(v12->i64[0] + 32))(v12);
        if (v112 >= v113)
        {
          v114 = &v245;
          v115 = &v246;
          v116 = &v247;
          v117 = *&dword_1EB6447C0 / v113;
          if ((*&dword_1EB6447C0 / v113) > 0.3927)
          {
            v117 = 0.3927;
          }

          v118 = v244;
        }

        else
        {
          v114 = &v241;
          v115 = &v242;
          v116 = &v243;
          v117 = *&dword_1EB6447C0 / v112;
          if ((*&dword_1EB6447C0 / v112) > 0.3927)
          {
            v117 = 0.3927;
          }

          v118 = v240;
        }

        v206 = v118;
        v119 = *(a1 + 52);
        if (v119 >= 1)
        {
          v204 = *v115;
          v205 = *v114;
          v203 = *v116;
          v120 = vmulq_f32(v201, v201);
          LODWORD(v211) = vadd_f32(*&vextq_s8(v120, v120, 8uLL), vpadd_f32(*v120.i8, *v120.i8)).u32[0];
          v121 = __sincosf_stret(v117 * 0.5);
          v122 = 0;
          v123 = v121.__sinval / sqrtf(v211);
          *&v124 = vmuls_lane_f32(v123, v201, 2);
          v125 = vmulq_n_f32(v201, v123);
          v126.i64[0] = v125.i64[0];
          v126.i64[1] = __PAIR64__(LODWORD(v121.__cosval), v124);
          v127 = vmulq_f32(v207, v207);
          v128 = vextq_s8(v126, v126, 8uLL).u64[0];
          *v129.f32 = vzip1_s32(v128, *v125.i8);
          v130 = vextq_s8(v126, v125, 0xCuLL).u64[0];
          *v131.f32 = vext_s8(*v125.i8, v128, 4uLL);
          v202 = v126;
          *v126.f32 = vdup_laneq_s32(v126, 3);
          v132 = vrev64_s32(*v129.f32);
          *&v126.u32[2] = vdup_lane_s32(*v125.i8, 1);
          v200 = v126;
          v133 = sqrtf(vadd_f32(*&vextq_s8(v127, v127, 8uLL), vpadd_f32(*v127.i8, *v127.i8)).f32[0]);
          v125.i64[0] = v131.i64[0];
          v125.u64[1] = v132;
          v197 = v125;
          v125.i64[0] = v129.i64[0];
          v125.i64[1] = v130;
          v196 = v125;
          *&v131.u32[2] = v132;
          v198 = v131;
          v129.i64[1] = v130;
          v199 = v129;
          do
          {
            if (v211 > 0.00000011921)
            {
              v134 = __sincosf_stret(((6.2832 / v119) * v122) * 0.5);
              v135 = vmulq_n_f32(v207, v134.__sinval / v133);
              v136.i64[0] = v135.i64[0];
              v136.i64[1] = __PAIR64__(LODWORD(v134.__cosval), v102 * (v134.__sinval / v133));
              v137 = veorq_s8(v136, xmmword_1AFE47BF0);
              v138 = vextq_s8(v136, v136, 8uLL).u64[0];
              v139 = vextq_s8(v136, v135, 8uLL);
              if (v112 >= v113)
              {
                v161 = a2[3];
                v162 = v161[1];
                v240 = *v161;
                v241 = v162;
                v163 = v161[3];
                v242 = v161[2];
                v243 = v163;
                v164 = vextq_s8(v137, v137, 8uLL).u64[0];
                *v163.f32 = vzip1_s32(v164, *v137.f32);
                *v165.f32 = vext_s8(*v137.f32, v164, 4uLL);
                v166.i64[0] = v163.i64[0];
                v166.i64[1] = v165.i64[0];
                v165.i64[1] = v163.i64[0];
                v167 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v202, v137, 3), vmulq_f32(v198, v166)), veorq_s8(vaddq_f32(vmulq_f32(v200, vdupq_lane_s64(v137.i64[0], 0)), vmulq_f32(v199, v165)), xmmword_1AFE47BE0));
                *v163.f32 = vzip1_s32(v138, *v135.i8);
                v166.i64[0] = vextq_s8(v136, v135, 0xCuLL).u64[0];
                v168.i64[0] = vextq_s8(v167, v167, 4uLL).u64[0];
                *v169.f32 = vext_s8(*v135.i8, v138, 4uLL);
                *v170.f32 = vzip1_s32(*&vextq_s8(v167, v167, 8uLL), *v167.f32);
                v170.i64[1] = v168.i64[0];
                *&v169.u32[2] = vrev64_s32(*v163.f32);
                v168.i64[1] = v170.i64[0];
                v163.i64[1] = v166.i64[0];
                v231 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v136, v167, 3), vmulq_f32(v169, v170)), veorq_s8(vaddq_f32(vmulq_f32(vtrn2q_s32(v139, v139), vdupq_lane_s64(v167.i64[0], 0)), vmulq_f32(v163, v168)), xmmword_1AFE47BE0));
                sub_1AF35A1DC(&v212, &v231);
                v171 = a3[3];
                v172 = *v171;
                v173 = v171[1];
                v172.i32[3] = 0;
                v173.i32[3] = 0;
                v174 = v171[2];
                v174.i32[3] = 0;
                v157 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v212.f32[0]), v173, *v212.f32, 1), v174, v212, 2);
                v158 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v213.f32[0]), v173, *v213.f32, 1), v174, v213, 2);
                v159 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v214.f32[0]), v173, *v214.f32, 1), v174, v214, 2);
                v244 = v157;
                v245 = v158;
                v246 = v159;
                v153 = v240;
                v154 = v241;
                v155 = v242;
                v160 = v247;
              }

              else
              {
                v140 = vextq_s8(v137, v137, 8uLL).u64[0];
                v141 = vzip1_s32(v140, *v137.f32);
                *v142.f32 = vext_s8(*v137.f32, v140, 4uLL);
                *v143.f32 = v141;
                v143.i64[1] = v142.i64[0];
                *&v142.u32[2] = v141;
                v144 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v202, v137, 3), vmulq_f32(v197, v143)), veorq_s8(vaddq_f32(vmulq_f32(v200, vdupq_lane_s64(v137.i64[0], 0)), vmulq_f32(v196, v142)), xmmword_1AFE47BE0));
                *v145.f32 = vzip1_s32(v138, *v135.i8);
                v143.i64[0] = vextq_s8(v136, v135, 0xCuLL).u64[0];
                v146.i64[0] = vextq_s8(v144, v144, 4uLL).u64[0];
                *v147.f32 = vext_s8(*v135.i8, v138, 4uLL);
                *v148.f32 = vzip1_s32(*&vextq_s8(v144, v144, 8uLL), *v144.f32);
                v148.i64[1] = v146.i64[0];
                *&v147.u32[2] = vrev64_s32(*v145.f32);
                v146.i64[1] = v148.i64[0];
                v145.i64[1] = v143.i64[0];
                v231 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v136, v144, 3), vmulq_f32(v147, v148)), veorq_s8(vaddq_f32(vmulq_f32(vtrn2q_s32(v139, v139), vdupq_lane_s64(v144.i64[0], 0)), vmulq_f32(v145, v146)), xmmword_1AFE47BE0));
                sub_1AF35A1DC(&v212, &v231);
                v149 = a2[3];
                v150 = *v149;
                v151 = v149[1];
                v150.i32[3] = 0;
                v151.i32[3] = 0;
                v152 = v149[2];
                v152.i32[3] = 0;
                v153 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, v212.f32[0]), v151, *v212.f32, 1), v152, v212, 2);
                v154 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, v213.f32[0]), v151, *v213.f32, 1), v152, v213, 2);
                v155 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, v214.f32[0]), v151, *v214.f32, 1), v152, v214, 2);
                v240 = v153;
                v241 = v154;
                v242 = v155;
                v156 = a3[3];
                v157 = *v156;
                v244 = *v156;
                v158 = v156[1];
                v245 = v158;
                v159 = v156[2];
                v246 = v159;
                v160 = v156[3];
                v247 = v160;
              }

              v175 = *(a4 + 24);
              v212.i64[0] = &unk_1F2570FE8;
              v215 = a5;
              v216 = v153;
              v217 = v154;
              v218 = v155;
              v219 = v243;
              v220 = v157;
              v221 = v158;
              v222 = v159;
              v223 = v160;
              v224 = v206;
              v225 = v205;
              v226 = v204;
              v227 = v203;
              v228 = v112 < v113;
              v229 = v175;
              sub_1AFD92300(v235, &v240, &v212, v175, 0);
              v119 = *(a1 + 52);
            }

            ++v122;
          }

          while (v122 < v119);
        }
      }
    }
  }

  if (*(a1 + 32) == 1)
  {
    goto LABEL_89;
  }
}

float sub_1AFD7BF20(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = vsubq_f32(a2[8], a2[4]);
  v5.i32[3] = 0;
  v6 = vmulq_f32(v5, v5);
  if (vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0] >= (a2[18].f32[0] * a2[18].f32[0]) || (v7 = vsubq_f32(a3[8], a3[4]), v7.i32[3] = 0, v8 = vmulq_f32(v7, v7), v9 = 1.0, vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] >= (a3[18].f32[0] * a3[18].f32[0])))
  {
    v9 = 1.0;
    if ((byte_1EB6C3718 & 1) == 0)
    {
      v10 = a2[13].i64[0];
      v11 = a3[17].i32[3];
      sub_1AFD86E64(&v26);
      v26 = &unk_1F2572270;
      v27 = 8;
      v28 = v11;
      v29 = v11;
      v22[0] = &unk_1F2570A50;
      v23 = 1.0e18;
      v24 = 0;
      v25 = 0;
      v20 = 953267991;
      v21 = 0;
      sub_1AFD8FA34(v18, v10, &v26, v19);
      v9 = 1.0;
      if (sub_1AFD8FA58(v18, &a2[1], a2 + 5, a3 + 1, a3 + 5, v22))
      {
        v12 = v23;
        if (a2[17].f32[2] > v23)
        {
          a2[17].f32[2] = v23;
        }

        if (a3[17].f32[2] > v12)
        {
          a3[17].f32[2] = v12;
        }

        if (v12 < 1.0)
        {
          v9 = v12;
        }

        else
        {
          v9 = 1.0;
        }
      }

      nullsub_106();
      nullsub_106();
      v13 = a3[13].i64[0];
      v14 = a2[17].i32[3];
      sub_1AFD86E64(v15);
      v26 = &unk_1F2572270;
      v27 = 8;
      v28 = v14;
      v29 = v14;
      v22[0] = &unk_1F2570A50;
      v23 = 1.0e18;
      v24 = 0;
      v25 = 0;
      v20 = 953267991;
      v21 = 0;
      sub_1AFD8FA34(v18, &v26, v13, v19);
      if (sub_1AFD8FA58(v18, &a2[1], a2 + 5, a3 + 1, a3 + 5, v22))
      {
        v16 = v23;
        if (a2[17].f32[2] > v23)
        {
          a2[17].f32[2] = v23;
        }

        if (a3[17].f32[2] > v16)
        {
          a3[17].f32[2] = v16;
        }

        if (v9 > v16)
        {
          v9 = v16;
        }
      }

      nullsub_106();
      nullsub_106();
    }
  }

  return v9;
}

int8x16_t sub_1AFD7C1F0(int8x16_t *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 112))(*a2, 64);
  v5 = a2[1];
  v6 = a1[2].i64[0];
  v9 = a1[1];
  v7 = sub_1AFD715C8(v4, a2);
  *v7 = &unk_1F2570F40;
  result = vextq_s8(v9, v9, 8uLL);
  *(v7 + 1) = result;
  *(v7 + 32) = 0;
  v7[5] = v5;
  *(v7 + 48) = 0;
  *(v7 + 52) = v6;
  return result;
}

void sub_1AFD7C2C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2 && *(result + 32) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = sub_1AFDA7294(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            sub_1AFDA72A0(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(result + 40);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

uint64_t sub_1AFD7C3C0(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  v4 = *a2;
  v5 = vmulq_n_f32(*a2, a4);
  v5.i32[3] = 0;
  v6 = *a3;
  if (*(a1 + 256) == 1)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v9 = *(a1 + 96);
    v10 = vtrn1q_s32(v7, v8);
    v11 = vzip2_s32(*v9.f32, 0);
    v12 = vextq_s8(v9, v9, 8uLL).u32[0];
    v9.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
    v10.i64[1] = *(a1 + 96);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v14 = veorq_s8(*(a1 + 112), v13);
    v15 = vmulq_f32(v10, v14);
    *v7.f32 = vzip2_s32(*v7.f32, *v8.i8);
    *&v7.u32[2] = v11;
    v16 = vmulq_f32(v7, v14);
    v9.i64[1] = v12;
    v17 = vmulq_f32(v9, v14);
    v17.i32[3] = 0;
    v18 = *(a1 + 192);
    v19 = *(a1 + 208);
    *v16.f32 = vadd_f32(vpadd_f32(*v15.i8, *v16.f32), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
    *&v16.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
    v10.i32[3] = 0;
    v7.i32[3] = 0;
    v9.i32[3] = 0;
    v20 = *(a1 + 224);
    v21 = vmlaq_lane_f32(vmulq_n_f32(v10, v20.f32[0]), v7, *v20.f32, 1);
    v22 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v19.f32[0]), v7, *v19.f32, 1), v9, v19, 2);
    v23 = vmulq_f32(v18, v16);
    v24 = vmulq_f32(v19, v16);
    v25 = vmulq_f32(v20, v16);
    v25.i32[3] = 0;
    v26 = vaddq_f32(v6, v5);
    v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v18.f32[0]), v7, *v18.f32, 1), v9, v18, 2);
    *v7.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)), vpadd_f32(*v23.i8, *v24.i8));
    *&v7.u32[2] = vpadd_f32(vpadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)), 0);
    v28 = vmlaq_laneq_f32(v21, v9, v20, 2);
    v29 = vaddq_f32(v7, *(a1 + 240));
    v30 = vmulq_f32(v26, v27);
    v31 = vmulq_f32(v26, v22);
    v32 = vmulq_f32(v26, v28);
    v32.i32[3] = 0;
    *v30.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vpadd_f32(*v30.f32, *v31.i8));
    *&v30.u32[2] = vpadd_f32(vpadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)), 0);
    v33 = vsubq_f32(vaddq_f32(v29, v30), v6);
    v33.i32[3] = 0;
    v34 = vmulq_f32(v4, v33);
    v35 = vpadd_f32(*v34.i8, *v34.i8);
    v36 = vextq_s8(v34, v34, 8uLL);
    v36.n128_u64[0] = vadd_f32(v35, v36.n128_u64[0]);
  }

  else
  {
    v37 = *(a1 + 128);
    v38 = *(a1 + 144);
    v39 = *(a1 + 160);
    v40 = vtrn1q_s32(v37, v38);
    v41 = vzip2_s32(*v39.f32, 0);
    v42 = vextq_s8(v39, v39, 8uLL).u32[0];
    v39.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
    v40.i64[1] = *(a1 + 160);
    v43.i64[0] = 0x8000000080000000;
    v43.i64[1] = 0x8000000080000000;
    v44 = veorq_s8(*(a1 + 176), v43);
    v45 = vmulq_f32(v40, v44);
    *v37.f32 = vzip2_s32(*v37.f32, *v38.i8);
    *&v37.u32[2] = v41;
    v46 = vmulq_f32(v37, v44);
    v39.i64[1] = v42;
    v47 = vmulq_f32(v39, v44);
    v47.i32[3] = 0;
    v48 = *(a1 + 192);
    v49 = *(a1 + 208);
    *v46.f32 = vadd_f32(vpadd_f32(*v45.i8, *v46.f32), vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v46, v46, 8uLL)));
    *&v46.u32[2] = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
    v40.i32[3] = 0;
    v37.i32[3] = 0;
    v39.i32[3] = 0;
    v50 = *(a1 + 224);
    v51 = vmlaq_lane_f32(vmulq_n_f32(v40, v50.f32[0]), v37, *v50.f32, 1);
    v52 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v49.f32[0]), v37, *v49.f32, 1), v39, v49, 2);
    v53 = vmulq_f32(v48, v46);
    v54 = vmulq_f32(v49, v46);
    v55 = vmulq_f32(v50, v46);
    v55.i32[3] = 0;
    v56 = vaddq_f32(v6, v5);
    v57 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v48.f32[0]), v37, *v48.f32, 1), v39, v48, 2);
    v58 = vmlaq_laneq_f32(v51, v39, v50, 2);
    *v39.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vpadd_f32(*v53.i8, *v54.i8));
    *&v39.u32[2] = vpadd_f32(vpadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL)), 0);
    v59 = vmulq_f32(v6, v57);
    v60 = vmulq_f32(v6, v52);
    v61 = vmulq_f32(v6, v58);
    v61.i32[3] = 0;
    *v59.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v59, v59, 8uLL), *&vextq_s8(v60, v60, 8uLL)), vpadd_f32(*v59.f32, *v60.i8));
    *&v59.u32[2] = vpadd_f32(vpadd_f32(*v61.i8, *&vextq_s8(v61, v61, 8uLL)), 0);
    v62 = vsubq_f32(v56, vaddq_f32(vaddq_f32(v39, *(a1 + 240)), v59));
    v62.i32[3] = 0;
    v63 = vmulq_f32(v4, v62);
    v64 = vpadd_f32(*v63.i8, *v63.i8);
    v36 = vextq_s8(v63, v63, 8uLL);
    v36.n128_u64[0] = vadd_f32(v64, v36.n128_u64[0]);
  }

  return (*(**(a1 + 48) + 32))(*(a1 + 48), v36);
}

uint64_t sub_1AFD7C6AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = sub_1AFD6AFA8(a1, a3);
  *v15 = &unk_1F2571020;
  *(v15 + 16) = 0;
  v15[3] = a2;
  *(v15 + 32) = a6;
  *(v15 + 9) = a7;
  *(v15 + 10) = a8;
  if (!a2)
  {
    v16 = a6 == 0;
    if (a6)
    {
      v17 = a4;
    }

    else
    {
      v17 = a5;
    }

    if (v16)
    {
      a5 = a4;
    }

    if ((*(**(a1 + 8) + 48))(*(a1 + 8), *(a5 + 16), *(v17 + 16)))
    {
      *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a5 + 16), *(v17 + 16));
      *(a1 + 16) = 1;
    }
  }

  return a1;
}

uint64_t sub_1AFD7C7B8(uint64_t a1)
{
  *a1 = &unk_1F2571020;
  if (*(a1 + 16) == 1 && *(a1 + 24))
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  return a1;
}

void sub_1AFD7C838(uint64_t a1)
{
  sub_1AFD7C7B8(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AFD7C870(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 32))
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (*(a1 + 32))
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  v10 = *(v8 + 8);
  v11 = *(v9 + 8);
  v12 = *(v8 + 24);
  v72 = v12[1];
  v73 = *v12;
  v13 = v12[3];
  v71 = v12[2];
  v14 = *(v9 + 24);
  v15 = *(v14 + 1);
  v16 = vtrn1q_s32(*v14, v15);
  v17 = *(v14 + 2);
  v18.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
  v16.i64[1] = v17.u32[0];
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  v20 = veorq_s8(*(v14 + 3), v19);
  v21 = vmulq_f32(v16, v20);
  *v22.f32 = vzip2_s32(*v14, *v15.f32);
  *&v22.u32[2] = vzip2_s32(*v17.i8, 0);
  v23 = vmulq_f32(v22, v20);
  v18.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
  v24 = vmulq_f32(v18, v20);
  v24.i32[3] = 0;
  v25 = vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
  v83 = vadd_f32(vpadd_f32(*v21.i8, *v23.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
  v26 = v73;
  v26.i32[3] = 0;
  v27 = v72;
  v27.i32[3] = 0;
  v28 = v71;
  v28.i32[3] = 0;
  v85 = vmlaq_laneq_f32(vmulq_laneq_f32(v26, *v14, 2), v27, v15, 2);
  v69 = v17;
  v70 = v28;
  v79 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v26, *v14, 1), v27, *v15.f32, 1), v28, *v17.i8, 1);
  v29 = vmulq_f32(v13, v16);
  v30 = vmulq_f32(v13, v22);
  v31 = vmulq_f32(v13, v18);
  v31.i32[3] = 0;
  v81 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vpadd_f32(*v29.i8, *v30.i8));
  v75 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v26, COERCE_FLOAT(*v14)), v27, v15.f32[0]), v28, *v17.i32);
  v77 = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
  sub_1AF35A1DC(v89, a2);
  v32 = v89[0];
  v33 = v89[1];
  v32.i32[3] = 0;
  v33.i32[3] = 0;
  v34 = v89[2];
  v34.i32[3] = 0;
  v35 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v73.f32[0]), v33, *v73.f32, 1), v34, v73, 2);
  v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v72.f32[0]), v33, *v72.f32, 1), v34, v72, 2);
  v37 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v71.f32[0]), v33, *v71.f32, 1), v34, v71, 2);
  v38 = *(v9 + 24);
  v39 = *v38;
  v40 = v38[1];
  v39.i32[3] = 0;
  v40.i32[3] = 0;
  v41 = v38[2];
  v41.i32[3] = 0;
  v42 = vmlaq_laneq_f32(vmulq_laneq_f32(v39, v35, 2), v40, v36, 2);
  v43 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v39, *v35.f32, 1), v40, *v36.f32, 1), v41, *v37.f32, 1);
  v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v39, v35.f32[0]), v40, v36.f32[0]), v41, v37.f32[0]);
  v45 = vmlaq_laneq_f32(v42, v41, v37, 2);
  v40.i64[0] = 0x8000000080000000;
  v40.i64[1] = 0x8000000080000000;
  v46 = veorq_s8(*(v11 + 64), v40);
  v47 = vmulq_f32(v44, v46);
  v48 = vmulq_f32(v43, v46);
  v49 = vmulq_f32(v45, v46);
  v49.i32[3] = 0;
  *v47.i8 = vadd_f32(vpadd_f32(*v47.i8, *v48.i8), vzip1_s32(*&vextq_s8(v47, v47, 8uLL), *&vextq_s8(v48, v48, 8uLL)));
  v47.u64[1] = vpadd_f32(vpadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)), 0);
  v88 = v47;
  (*(*v10 + 128))(v89, v10, &v88);
  v50 = vmulq_f32(v75, v89[0]);
  v51 = vmulq_f32(v79, v89[0]);
  v52 = vmulq_f32(vmlaq_laneq_f32(v85, v70, v69, 2), v89[0]);
  v52.i32[3] = 0;
  *v50.f32 = vadd_f32(vpadd_f32(*v50.f32, *v51.f32), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
  *v53.f32 = v81;
  *&v53.u32[2] = v77;
  *v51.f32 = v83;
  *&v51.u32[2] = vpadd_f32(v25, 0);
  *&v50.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
  v78 = vaddq_f32(vaddq_f32(v51, v53), v50);
  v74 = *(v11 + 64);
  v54 = vmulq_f32(v74, v78);
  v86 = vadd_f32(vpadd_f32(*v54.i8, *v54.i8), *&vextq_s8(v54, v54, 8uLL)).f32[0] - *(v11 + 80);
  v55 = *(v9 + 24);
  v80 = v55[1];
  v82 = *v55;
  v76 = v55[2];
  v84 = v55[3];
  v56 = sub_1AFD938FC(*(a1 + 24));
  a6[1] = *(a1 + 24);
  if (v86 < v56)
  {
    v57 = vmulq_n_f32(v74, v86);
    v57.i32[3] = 0;
    v58 = vsubq_f32(v78, v57);
    v59 = v58;
    v59.i32[3] = 0;
    v60 = vmulq_f32(v76, v58);
    v61 = vmulq_f32(v82, v59);
    v62 = vmulq_f32(v80, v59);
    *v62.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *&vextq_s8(v62, v62, 8uLL)), vpadd_f32(*v61.i8, *v62.f32));
    v60.i32[3] = 0;
    *&v62.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
    v63 = vaddq_f32(v84, v62);
    v64 = *(v9 + 24);
    v65 = *(v11 + 64);
    v66 = vmulq_f32(*v64, v65);
    v67 = vmulq_f32(v65, v64[1]);
    v68 = vmulq_f32(v65, v64[2]);
    v68.i32[3] = 0;
    *v66.i8 = vadd_f32(vpadd_f32(*v66.i8, *v67.i8), vzip1_s32(*&vextq_s8(v66, v66, 8uLL), *&vextq_s8(v67, v67, 8uLL)));
    v66.u64[1] = vpadd_f32(vpadd_f32(*v68.i8, *&vextq_s8(v68, v68, 8uLL)), 0);
    v87 = v63;
    v88 = v66;
    (*(*a6 + 32))(a6, &v88, &v87, v86);
  }
}

void sub_1AFD7CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      v9 = a3;
    }

    else
    {
      v9 = a2;
    }

    if (*(a1 + 32))
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(v9 + 8);
    v12 = *(v10 + 8);
    v13 = *(v9 + 24);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v10 + 24);
    v17 = *(v16 + 1);
    v18 = *v16;
    v18.i32[3] = 0;
    v19 = v17;
    v19.i32[3] = 0;
    v20 = vmlaq_n_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v13)), v19, v14.f32[0]);
    v21 = vmlaq_laneq_f32(vmulq_laneq_f32(v18, *v13, 2), v19, v14, 2);
    v22 = vmlaq_lane_f32(vmulq_lane_f32(v18, *v13->f32, 1), v19, *v14.f32, 1);
    v23 = *(v16 + 2);
    v24 = vextq_s8(v23, v23, 8uLL).u32[0];
    v15.i32[3] = 0;
    v14.i32[3] = 0;
    v25 = v13[2];
    v26 = v13[3];
    v27 = v25;
    v27.i32[3] = 0;
    v116 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, COERCE_FLOAT(*v16)), v14, v17.f32[0]), v27, v23.f32[0]);
    v119 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, *v16, 2), v14, v17, 2), v27, v23, 2);
    v122 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v15, *v16, 1), v14, *v17.f32, 1), v27, *v23.f32, 1);
    v23.i32[3] = 0;
    v28 = vtrn1q_s32(*v16, v17);
    v15.i64[0] = vextq_s8(v28, v28, 8uLL).u64[0];
    v28.i64[1] = v16[2];
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v30 = veorq_s8(*(v16 + 3), v29);
    v31 = vmulq_f32(v28, v30);
    *v32.f32 = vzip2_s32(*v16, *v17.f32);
    *&v32.u32[2] = vzip2_s32(*v23.f32, 0);
    v33 = vmulq_f32(v32, v30);
    v15.i64[1] = v24;
    v34 = vmulq_f32(v15, v30);
    v34.i32[3] = 0;
    v113 = vadd_f32(vpadd_f32(*v31.i8, *v33.i8), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
    v35 = vmulq_f32(v28, v26);
    v36 = vmulq_f32(v32, v26);
    v37 = vmulq_f32(v15, v26);
    v37.i32[3] = 0;
    v109 = vadd_f32(vpadd_f32(*v35.i8, *v36.i8), vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
    v111 = vpadd_f32(vpadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)), 0);
    v38 = veorq_s8(*(v12 + 64), v29);
    v39 = vmulq_f32(vmlaq_n_f32(v20, v23, v25.f32[0]), v38);
    v40 = vmulq_f32(vmlaq_lane_f32(v22, v23, *v25.f32, 1), v38);
    v41 = vmulq_f32(vmlaq_laneq_f32(v21, v23, v25, 2), v38);
    v41.i32[3] = 0;
    *v39.i8 = vadd_f32(vpadd_f32(*v39.i8, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
    v39.u64[1] = vpadd_f32(vpadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)), 0);
    v106 = vpadd_f32(vpadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), 0);
    v127 = v39;
    (*(*v11 + 128))(&v128, v11, &v127);
    v42 = vmulq_f32(v116, v128);
    v43 = vmulq_f32(v122, v128);
    v44 = vmulq_f32(v119, v128);
    v44.i32[3] = 0;
    *v42.f32 = vadd_f32(vpadd_f32(*v42.f32, *v43.f32), vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)));
    *v45.f32 = v109;
    *&v45.u32[2] = v106;
    *v43.f32 = v113;
    *&v43.u32[2] = v111;
    *&v42.u32[2] = vpadd_f32(vpadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL)), 0);
    v112 = vaddq_f32(vaddq_f32(v43, v45), v42);
    v107 = *(v12 + 64);
    v46 = vmulq_f32(v107, v112);
    v123 = vadd_f32(vpadd_f32(*v46.i8, *v46.i8), *&vextq_s8(v46, v46, 8uLL)).f32[0] - *(v12 + 80);
    v47 = *(v10 + 24);
    v114 = v47[1];
    v117 = *v47;
    v110 = v47[2];
    v120 = v47[3];
    v48 = sub_1AFD938FC(*(a1 + 24));
    a5[1] = *(a1 + 24);
    if (v123 < v48)
    {
      v49 = vmulq_n_f32(v107, v123);
      v49.i32[3] = 0;
      v50 = vsubq_f32(v112, v49);
      v51 = v50;
      v51.i32[3] = 0;
      v52 = vmulq_f32(v110, v50);
      v53 = vmulq_f32(v117, v51);
      v54 = vmulq_f32(v114, v51);
      *v54.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vpadd_f32(*v53.i8, *v54.f32));
      v52.i32[3] = 0;
      *&v54.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
      v55 = vaddq_f32(v120, v54);
      v56 = *(v10 + 24);
      v57 = *(v12 + 64);
      v58 = vmulq_f32(*v56, v57);
      v59 = vmulq_f32(v57, v56[1]);
      v60 = vmulq_f32(v57, v56[2]);
      v60.i32[3] = 0;
      *v58.i8 = vadd_f32(vpadd_f32(*v58.i8, *v59.i8), vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v59, v59, 8uLL)));
      v58.u64[1] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
      v126 = v55;
      v127 = v58;
      (*(*a5 + 32))(a5, &v127, &v126, v123);
    }

    if (v11[2] <= 6 && *(a5[1] + 800) < *(a1 + 40))
    {
      v61 = *(v12 + 72);
      if (fabsf(v61) <= 0.70711)
      {
        v67 = *(v12 + 64);
        v68 = *(v12 + 68);
        v69 = 1.0 / sqrtf((v68 * v68) + (v67 * v67));
        v70 = v67 * v69;
        v66.i64[1] = 0;
        v66.f32[0] = -(v68 * v69);
        v66.f32[1] = v70;
      }

      else
      {
        v62 = *(v12 + 68);
        v63 = 1.0 / sqrtf((v61 * v61) + (v62 * v62));
        v64 = -(v61 * v63);
        *&v65 = v62 * v63;
        v66.i32[0] = 0;
        v66.f32[1] = v64;
        v66.i64[1] = v65;
      }

      v124 = v66;
      v71 = *&dword_1EB6447C0 / (*(*v11 + 32))(v11);
      if (v71 > 0.3927)
      {
        v71 = 0.3927;
      }

      v72 = __sincosf_stret(v71 * 0.5);
      v73 = *(a1 + 36);
      if (v73 >= 1)
      {
        v74 = 0;
        v75 = vmulq_f32(v124, v124);
        v76 = v72.__sinval / sqrtf(vadd_f32(*&vextq_s8(v75, v75, 8uLL), vpadd_f32(*v75.i8, *v75.i8)).f32[0]);
        *v75.i32 = vmuls_lane_f32(v76, v124, 2);
        v77 = vmulq_n_f32(v124, v76);
        v78.i64[0] = v77.i64[0];
        v78.i64[1] = __PAIR64__(LODWORD(v72.__cosval), v75.u32[0]);
        v79 = vextq_s8(v78, v78, 8uLL).u64[0];
        *v75.i8 = vzip1_s32(v79, *v77.i8);
        *v80.f32 = vext_s8(*v77.i8, v79, 4uLL);
        *&v80.u32[2] = vrev64_s32(*v75.i8);
        v115 = v80;
        v81 = vextq_s8(v78, v77, 0xCuLL).u64[0];
        v82 = vextq_s8(v78, v77, 8uLL);
        v108 = vtrn2q_s32(v82, v82);
        v75.i64[1] = v81;
        v118 = v75;
        v121 = v78;
        do
        {
          v125 = *(v12 + 64);
          v83 = vmulq_f32(v125, v125);
          v84 = sqrtf(vadd_f32(vpadd_f32(*v83.i8, *v83.i8), *&vextq_s8(v83, v83, 8uLL)).f32[0]);
          v85 = __sincosf_stret(((6.2832 / v73) * v74) * 0.5);
          v86 = vmulq_n_f32(v125, v85.__sinval / v84);
          v87.i64[0] = v86.i64[0];
          v87.i64[1] = __PAIR64__(LODWORD(v85.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v85.__sinval / v84, v125, 2)));
          v88 = veorq_s8(v87, xmmword_1AFE47BF0);
          v89 = vextq_s8(v88, v88, 8uLL).u64[0];
          v90 = vzip1_s32(v89, *v88.f32);
          *v91.f32 = vext_s8(*v88.f32, v89, 4uLL);
          *v92.f32 = v90;
          v92.i64[1] = v91.i64[0];
          *&v91.u32[2] = v90;
          v93 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v121, v88, 3), vmulq_f32(v115, v92)), veorq_s8(vaddq_f32(vmulq_f32(v108, vdupq_lane_s64(v88.i64[0], 0)), vmulq_f32(v118, v91)), xmmword_1AFE47BE0));
          v94 = vextq_s8(v87, v87, 8uLL).u64[0];
          *v92.f32 = vzip1_s32(v94, *v86.i8);
          v95.i64[0] = vextq_s8(v93, v93, 4uLL).u64[0];
          *v96.f32 = vext_s8(*v86.i8, v94, 4uLL);
          *v97.f32 = vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *v93.f32);
          v97.i64[1] = v95.i64[0];
          *&v96.u32[2] = vrev64_s32(*v92.f32);
          v98 = vextq_s8(v87, v86, 0xCuLL).u64[0];
          v99 = vextq_s8(v87, v86, 8uLL);
          v95.i64[1] = v97.i64[0];
          v92.i64[1] = v98;
          v127 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v87, v93, 3), vmulq_f32(v96, v97)), veorq_s8(vaddq_f32(vmulq_f32(vtrn2q_s32(v99, v99), vdupq_lane_s64(v93.i64[0], 0)), vmulq_f32(v92, v95)), xmmword_1AFE47BE0));
          sub_1AFD7C870(a1, &v127, a2, a3, v100, a5);
          ++v74;
          v73 = *(a1 + 36);
        }

        while (v74 < v73);
      }
    }

    if (*(a1 + 16) == 1)
    {
      if (*(*(a1 + 24) + 800))
      {
        v101 = a5[1];
        if (*(v101 + 800))
        {
          v102 = *(v101 + 784);
          v103 = *(a5[2] + 16);
          v104 = v102 == v103;
          if (v102 == v103)
          {
            v105 = *(a5[3] + 16);
          }

          else
          {
            v105 = *(a5[2] + 16);
          }

          if (!v104)
          {
            v103 = *(a5[3] + 16);
          }

          sub_1AFD93A10(v101, v103 + 1, v105 + 1);
        }
      }
    }
  }
}

void sub_1AFD7D320(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 && *(result + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = sub_1AFDA7294(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            sub_1AFDA72A0(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(result + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

uint64_t sub_1AFD7D40C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2571058;
  v4 = sub_1AFDA7294(400, 16);
  *(v4 + 320) = 953267991;
  *(v4 + 352) &= 0xF0u;
  *(a1 + 48) = v4;
  v5 = *(a2 + 28);
  v6 = sub_1AFDA7294(8, 16);
  if (v5)
  {
    v7 = &unk_1F25725D8;
  }

  else
  {
    v7 = &unk_1F2572628;
  }

  *v6 = v7;
  *(a1 + 56) = v6;
  v8 = sub_1AFDA7294(40, 16);
  sub_1AFD7AF10(v8, *(a1 + 48), *(a1 + 56));
  *(a1 + 64) = v9;
  v10 = sub_1AFDA7294(16, 16);
  *(v10 + 8) = 0;
  *v10 = &unk_1F2571098;
  *(a1 + 72) = v10;
  v11 = sub_1AFDA7294(16, 16);
  *(v11 + 8) = 0;
  *v11 = &unk_1F25710C0;
  *(a1 + 80) = v11;
  v12 = sub_1AFDA7294(16, 16);
  *(v12 + 8) = 0;
  *v12 = &unk_1F25710E8;
  *(a1 + 88) = v12;
  v13 = sub_1AFDA7294(16, 16);
  *(v13 + 8) = 0;
  *v13 = &unk_1F2571110;
  *(a1 + 96) = v13;
  v14 = sub_1AFDA7294(16, 16);
  *(v14 + 8) = 0;
  *v14 = &unk_1F2571138;
  *(a1 + 104) = v14;
  v15 = sub_1AFDA7294(16, 16);
  *(v15 + 8) = 0;
  *v15 = &unk_1F2571160;
  *(a1 + 112) = v15;
  v16 = sub_1AFDA7294(16, 16);
  *(v16 + 8) = 0;
  *v16 = &unk_1F2571188;
  *(a1 + 144) = v16;
  v17 = sub_1AFDA7294(16, 16);
  *v17 = &unk_1F2571188;
  *(a1 + 152) = v17;
  *(v17 + 8) = 1;
  v18 = sub_1AFDA7294(16, 16);
  *(v18 + 8) = 0;
  *v18 = &unk_1F25711B0;
  *(a1 + 136) = v18;
  v19 = sub_1AFDA7294(24, 16);
  *(v19 + 8) = 0;
  *v19 = &unk_1F25711D8;
  *(v19 + 12) = 1;
  *(a1 + 168) = v19;
  v20 = sub_1AFDA7294(24, 16);
  *v20 = &unk_1F25711D8;
  *(v20 + 12) = 1;
  *(a1 + 160) = v20;
  *(v20 + 8) = 1;
  if (*(a2 + 24) <= 144)
  {
    v21 = 144;
  }

  else
  {
    v21 = *(a2 + 24);
  }

  v22 = *a2;
  if (*a2)
  {
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 24) = 1;
    v23 = sub_1AFDA7294(32, 16);
    v22 = sub_1AFD7E1EC(v23, 832, *(a2 + 16));
  }

  *(a1 + 16) = v22;
  v24 = *(a2 + 8);
  if (v24)
  {
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 40) = 1;
    v25 = sub_1AFDA7294(32, 16);
    v24 = sub_1AFD7E1EC(v25, v21, *(a2 + 20));
  }

  *(a1 + 32) = v24;
  return a1;
}

uint64_t sub_1AFD7D78C(uint64_t a1)
{
  *a1 = &unk_1F2571058;
  if (*(a1 + 40) == 1)
  {
    sub_1AFDA72A0(*(*(a1 + 32) + 24));
    sub_1AFDA72A0(*(a1 + 32));
  }

  if (*(a1 + 24) == 1)
  {
    sub_1AFDA72A0(*(*(a1 + 16) + 24));
    sub_1AFDA72A0(*(a1 + 16));
  }

  (***(a1 + 64))(*(a1 + 64));
  sub_1AFDA72A0(*(a1 + 64));
  (***(a1 + 72))();
  sub_1AFDA72A0(*(a1 + 72));
  (***(a1 + 80))();
  sub_1AFDA72A0(*(a1 + 80));
  (***(a1 + 88))();
  sub_1AFDA72A0(*(a1 + 88));
  (***(a1 + 96))();
  sub_1AFDA72A0(*(a1 + 96));
  (***(a1 + 104))();
  sub_1AFDA72A0(*(a1 + 104));
  (***(a1 + 112))();
  sub_1AFDA72A0(*(a1 + 112));
  (***(a1 + 144))();
  sub_1AFDA72A0(*(a1 + 144));
  (***(a1 + 152))();
  sub_1AFDA72A0(*(a1 + 152));
  (***(a1 + 136))();
  sub_1AFDA72A0(*(a1 + 136));
  (***(a1 + 168))();
  sub_1AFDA72A0(*(a1 + 168));
  (***(a1 + 160))();
  sub_1AFDA72A0(*(a1 + 160));
  sub_1AFDA72A0(*(a1 + 48));
  (***(a1 + 56))();
  sub_1AFDA72A0(*(a1 + 56));
  return a1;
}

void sub_1AFD7DB78(uint64_t a1)
{
  sub_1AFD7D78C(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AFD7DBB0(uint64_t a1, int a2, int a3)
{
  if (a2 == 8 && a3 == 8)
  {
    v3 = 112;
  }

  else if (a2 == 8 && a3 == 1)
  {
    v3 = 144;
  }

  else if (a2 == 1 && a3 == 8)
  {
    v3 = 152;
  }

  else if (a3 | a2)
  {
    if (a2 <= 19 && a3 == 28)
    {
      v3 = 168;
    }

    else if (a2 == 28 && a3 < 20)
    {
      v3 = 160;
    }

    else
    {
      if (a2 > 19)
      {
        if (a3 <= 19 && (a2 - 21) < 9)
        {
          v3 = 80;
          return *(a1 + v3);
        }

        if (a2 == 31)
        {
          v3 = 88;
          return *(a1 + v3);
        }
      }

      else
      {
        if (a3 < 20)
        {
          v3 = 64;
          return *(a1 + v3);
        }

        if ((a3 - 21) < 9)
        {
          v3 = 72;
          return *(a1 + v3);
        }
      }

      v3 = 104;
      if (a3 == 31)
      {
        v3 = 96;
      }
    }
  }

  else
  {
    v3 = 136;
  }

  return *(a1 + v3);
}

void *sub_1AFD7DCD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 144);

  return sub_1AFD79E20(v7, a2, a3, a4, 0);
}

void *sub_1AFD7DD6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 144);

  return sub_1AFD79E20(v7, a2, a3, a4, 1);
}

void *sub_1AFD7DE00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 72);

  return sub_1AFD790E8(v7, a2, a3, a4, 0);
}

void *sub_1AFD7DE94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 72);

  return sub_1AFD790E8(v7, a2, a3, a4, 1);
}

void *sub_1AFD7DF28(uint64_t a1, uint64_t *a2)
{
  v3 = (*(**a2 + 112))(*a2, 16);

  return sub_1AFD7E258(v3, a2);
}

uint64_t sub_1AFD7DFA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 32);

  return sub_1AFD81A20(v7, 0, a2, a3, a4);
}

uint64_t sub_1AFD7E034(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**a2 + 112))(*a2, 40);
  v9 = a2[1];
  v10 = *(a1 + 8);

  return sub_1AFD81E34(v8, v9, a2, a3, a4, v10);
}

uint64_t sub_1AFD7E0D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 32);

  return sub_1AFD716E4(v7, 0, a2, a3, a4);
}

uint64_t sub_1AFD7E164(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**a2 + 112))(*a2, 48);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = *(a1 + 16);

  return sub_1AFD7C7B4(v8, 0, a2, a3, a4, v9, v10, v11);
}

int *sub_1AFD7E1EC(int *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = sub_1AFDA7294((a3 * a2), 16);
  *(a1 + 2) = v4;
  *(a1 + 3) = v4;
  v5 = a1[1];
  a1[2] = v5;
  v6 = v5 - 1;
  if (v6)
  {
    v7 = *a1;
    do
    {
      v8 = (v4 + v7);
      *v4 = v4 + v7;
      v4 = (v4 + v7);
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = v4;
  }

  *v8 = 0;
  return a1;
}

void *sub_1AFD7E258(void *a1, uint64_t *a2)
{
  result = sub_1AFD6AFA8(a1, a2);
  *result = &unk_1F2571200;
  return result;
}

uint64_t sub_1AFD7E2B4(uint64_t result, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!*(result + 80))
  {
    v3 = result;
    *(result + 80) = a2;
    v4 = *(result + 64);
    result = (*(*v4 + 56))(v4);
    if (result >= 1)
    {
      v5 = 0;
      do
      {
        v31 = 0;
        v29 = 2;
        v30 = 0;
        v28 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 2;
        (*(*v4 + 32))(v4, &v31, &v30, &v29, &v28, &v27, &v26 + 4, &v26, &v25, v5);
        if (v26 >= 1)
        {
          v6 = 0;
          do
          {
            v7 = 0;
            v8 = v25;
            v9 = v29;
            v10 = v28;
            v11 = v31;
            v12 = v27 + HIDWORD(v26) * v6;
            do
            {
              if (v8 == 3)
              {
                v13 = *(v12 + 2 * v7 + 4);
              }

              else if (v8 == 5)
              {
                v13 = *(v12 + v7 + 2);
              }

              else
              {
                v13 = *(v12 + 4 * v7 + 8);
              }

              v14 = v11 + v10 * v13;
              v15 = v4[2];
              if (v9)
              {
                *&v16 = vcvt_f32_f64(vmulq_f64(*v14, vcvtq_f64_f32(v15)));
                v17 = *(v14 + 16) * v4[3].f32[0];
              }

              else
              {
                *&v16 = vmul_f32(*v14, v15);
                v17 = *(v14 + 8) * v4[3].f32[0];
              }

              *(&v16 + 1) = LODWORD(v17);
              *(&v34 + v7--) = v16;
            }

            while (v7 != -3);
            v23 = vmaxq_f32(vmaxq_f32(vmaxq_f32(v32, xmmword_1AFEABE70), v33), v34);
            v24 = vminq_f32(vminq_f32(vminq_f32(v32, xmmword_1AFEABE60), v33), v34);
            v18 = &unk_1F2571238;
            v19 = v5;
            v20 = v6;
            v21 = &v32;
            v22 = a2;
            (*(*v3 + 128))(v3, &v18, &v24, &v23);
            nullsub_106();
            ++v6;
          }

          while (v6 < v26);
        }

        ++v5;
        result = (*(*v4 + 56))(v4);
      }

      while (v5 < result);
    }
  }

  return result;
}

uint64_t sub_1AFD7E5A4(float32x4_t *a1, int8x16_t *a2, float32x4_t *a3, int8x16_t *a4, float a5)
{
  v22 = *a1;
  v8 = vsubq_f32(vmulq_f32(*a1, vextq_s8(vextq_s8(*a2, *a2, 0xCuLL), *a2, 8uLL)), vmulq_f32(*a2, vextq_s8(vextq_s8(*a1, *a1, 0xCuLL), *a1, 8uLL)));
  v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(*a3, vmulq_n_f32(v9, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0])));
  v12 = vmulq_f32(*a2, *a3);
  v13 = atan2f(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0], vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0]);
  if (a5 < 0.0 && v13 < a5 || (result = 0, a5 >= 0.0) && v13 > a5)
  {
    v15 = a5 - v13;
    v16 = vmulq_f32(v22, v22);
    v17 = sqrtf(vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8)).f32[0]);
    v18 = __sincosf_stret(v15 * 0.5);
    *v24.f32 = vmul_n_f32(*v22.f32, v18.__sinval / v17);
    v24.i64[1] = __PAIR64__(LODWORD(v18.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v18.__sinval / v17, v22, 2)));
    sub_1AF35A1DC(v23, &v24);
    v19 = vmulq_f32(v23[0], *a3);
    v20 = vmulq_f32(*a3, v23[1]);
    v21 = vmulq_f32(*a3, v23[2]);
    v21.i32[3] = 0;
    *v19.i8 = vadd_f32(vpadd_f32(*v19.i8, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
    v19.u64[1] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
    *a4 = v19;
    return 1;
  }

  return result;
}

void sub_1AFD7E714(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, char a6)
{
  if (*(a2[1] + 8) == 1)
  {
    v9 = *(a2[2] + 208);
    if (*(v9 + 8) == 22)
    {
      v9 = *(v9 + 48);
    }

    v10 = *(v9 + 80);
    if (v10)
    {
      v303.i32[0] = a5 | (a4 << 21);
      v11 = sub_1AFD80504(v10 + 8, &v303);
      if (v11 != -1)
      {
        v12 = *(v10 + 88);
        if (v12)
        {
          v13 = v12 + 16 * v11;
          v14 = -1.0;
          if ((a6 & 1) == 0)
          {
            v14 = 1.0;
          }

          v296 = v14;
          v15 = a2[1];
          (*(v15->i64[0] + 216))(v15, 0, &v301);
          (*(v15->i64[0] + 216))(v15, 1, &v300);
          (*(v15->i64[0] + 216))(v15, 2, &v299);
          v16 = v15[5];
          v17 = vsubq_f32(v15[6], v16);
          v17.i32[3] = 0;
          v18 = vsubq_f32(v15[7], v16);
          v18.i32[3] = 0;
          v19 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), v17), vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), v18));
          v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
          v20.i32[3] = 0;
          v21 = vmulq_f32(v20, v20);
          LODWORD(v22) = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL)).u32[0];
          v23 = v300;
          v24 = vsubq_f32(v300, v301);
          v24.i32[3] = 0;
          v25 = vmulq_f32(v24, v24);
          v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL));
          v27 = *(a1 + 16);
          v28 = v301;
          if (v26.f32[0] >= 1.4211e-14)
          {
            v29 = vsubq_f32(v27, v301);
            v29.i32[3] = 0;
            v30 = vmulq_f32(v24, v29);
            v31 = vdiv_f32(vadd_f32(vpadd_f32(*v30.i8, *v30.i8), *&vextq_s8(v30, v30, 8uLL)), v26).f32[0];
            v32 = 0.0;
            if (v31 >= 0.0)
            {
              v32 = v31;
              if (v31 > 1.0)
              {
                v32 = 1.0;
              }
            }

            v33 = vmulq_n_f32(v24, v32);
            v33.i32[3] = 0;
            v28 = vaddq_f32(v301, v33);
          }

          v34 = sqrtf(v22);
          v35 = a2[3];
          v36 = *(v35 + 16);
          v37 = vtrn1q_s32(*v35, v36);
          v38 = *(v35 + 32);
          *v39.f32 = vzip2_s32(*v35, *v36.f32);
          v36.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
          v37.i64[1] = v38.u32[0];
          *&v39.u32[2] = vzip2_s32(*v38.i8, 0);
          v36.i64[1] = vextq_s8(v38, v38, 8uLL).u32[0];
          v40 = *(a1 + 64);
          v41 = vmulq_f32(v37, v40);
          v42 = vmulq_f32(v39, v40);
          v43 = vmulq_f32(v36, v40);
          v43.i32[3] = 0;
          *v42.f32 = vadd_f32(vpadd_f32(*v41.i8, *v42.f32), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
          *v41.i8 = vmul_f32(*v42.f32, *v42.f32);
          *&v42.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
          v44 = vmulq_n_f32(v42, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v41.i8, *v41.i8), vmul_f32(*&v42.u32[2], *&v42.u32[2])).f32[0]));
          v298 = v44;
          v45 = *(v13 + 4);
          v46 = fabsf(v45);
          v47 = *(v10 + 152);
          if (v46 >= v47)
          {
            v57 = -1;
            v56 = 1.0e18;
          }

          else
          {
            v48 = v301;
            if (v26.f32[0] >= 1.4211e-14)
            {
              v49 = vsubq_f32(v27, v301);
              v49.i32[3] = 0;
              v50 = vmulq_f32(v24, v49);
              v51 = vdiv_f32(vadd_f32(*&vextq_s8(v50, v50, 8uLL), vpadd_f32(*v50.i8, *v50.i8)), v26).f32[0];
              v52 = 0.0;
              if (v51 >= 0.0)
              {
                v52 = 1.0;
                if (v51 <= 1.0)
                {
                  v52 = v51;
                }
              }

              v53 = vmulq_n_f32(v24, v52);
              v53.i32[3] = 0;
              v48 = vaddq_f32(v301, v53);
            }

            v54 = vsubq_f32(v27, v48);
            v54.i32[3] = 0;
            v55 = vmulq_f32(v54, v54);
            v56 = sqrtf(vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0]);
            if (v56 < 1.0e18)
            {
              v57 = 0;
            }

            else
            {
              v56 = 1.0e18;
              v57 = -1;
            }
          }

          v58 = 1.0 / v34;
          if (fabsf(*(v13 + 8)) < v47)
          {
            v59 = vsubq_f32(v299, v300);
            v59.i32[3] = 0;
            v60 = vmulq_f32(v59, v59);
            v61 = vadd_f32(vpadd_f32(*v60.i8, *v60.i8), *&vextq_s8(v60, v60, 8uLL));
            v62 = v300;
            if (v61.f32[0] >= 1.4211e-14)
            {
              v63 = vsubq_f32(v27, v300);
              v63.i32[3] = 0;
              v64 = vmulq_f32(v63, v59);
              v65 = vdiv_f32(vadd_f32(*&vextq_s8(v64, v64, 8uLL), vpadd_f32(*v64.i8, *v64.i8)), v61).f32[0];
              v66 = 0.0;
              if (v65 >= 0.0)
              {
                v66 = v65;
                if (v65 > 1.0)
                {
                  v66 = 1.0;
                }
              }

              v67 = vmulq_n_f32(v59, v66);
              v67.i32[3] = 0;
              v62 = vaddq_f32(v300, v67);
            }

            v68 = vsubq_f32(v27, v62);
            v68.i32[3] = 0;
            v69 = vmulq_f32(v68, v68);
            v70 = sqrtf(vadd_f32(vpadd_f32(*v69.i8, *v69.i8), *&vextq_s8(v69, v69, 8uLL)).f32[0]);
            if (v70 < v56)
            {
              v56 = v70;
              v57 = 1;
            }
          }

          if (fabsf(*(v13 + 12)) < v47)
          {
            v71 = v299;
            v72 = vsubq_f32(v301, v299);
            v72.i32[3] = 0;
            v73 = vmulq_f32(v72, v72);
            v74 = vadd_f32(vpadd_f32(*v73.i8, *v73.i8), *&vextq_s8(v73, v73, 8uLL));
            if (v74.f32[0] >= 1.4211e-14)
            {
              v75 = vsubq_f32(v27, v299);
              v75.i32[3] = 0;
              v76 = vmulq_f32(v72, v75);
              v77 = vdiv_f32(vadd_f32(*&vextq_s8(v76, v76, 8uLL), vpadd_f32(*v76.i8, *v76.i8)), v74).f32[0];
              v78 = 0.0;
              if (v77 >= 0.0)
              {
                v78 = v77;
                if (v77 > 1.0)
                {
                  v78 = 1.0;
                }
              }

              v79 = vmulq_n_f32(v72, v78);
              v79.i32[3] = 0;
              v71 = vaddq_f32(v299, v79);
            }

            v80 = vsubq_f32(v27, v71);
            v80.i32[3] = 0;
            v81 = vmulq_f32(v80, v80);
            if (sqrtf(vadd_f32(vpadd_f32(*v81.i8, *v81.i8), *&vextq_s8(v81, v81, 8uLL)).f32[0]) < v56)
            {
              v57 = 2;
            }
          }

          v82 = vmulq_n_f32(v20, v58);
          v83 = 0;
          if (v46 >= v47)
          {
            v87 = 0;
          }

          else if (v57 || (v84 = vsubq_f32(v27, v28), v84.i32[3] = 0, v85 = vmulq_f32(v84, v84), sqrtf(vadd_f32(*&vextq_s8(v85, v85, 8uLL), vpadd_f32(*v85.i8, *v85.i8)).f32[0]) >= *(v10 + 148)))
          {
            v87 = 0;
          }

          else
          {
            v86 = vsubq_f32(v301, v300);
            v86.i32[3] = 0;
            v297 = v86;
            if (v45 == 0.0)
            {
              v83 = 1;
            }

            else
            {
              v88 = 1.0;
              if ((*v13 & 1) == 0)
              {
                v88 = -1.0;
              }

              v282 = v88;
              v285 = v27;
              v89 = vmulq_n_f32(v82, v88);
              v89.i32[3] = 0;
              v277 = v86;
              v279 = v89;
              v90 = vmulq_f32(v86, v86);
              v91 = sqrtf(vadd_f32(*&vextq_s8(v90, v90, 8uLL), vpadd_f32(*v90.i8, *v90.i8)).f32[0]);
              v288 = v44;
              v293 = v82;
              v92 = __sincosf_stret(v45 * 0.5);
              v93 = vmulq_n_f32(v277, v92.__sinval / v91);
              v94.i64[0] = v93.i64[0];
              v94.i64[1] = __PAIR64__(LODWORD(v92.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v92.__sinval / v91, v277, 2)));
              v95 = vextq_s8(v94, v94, 8uLL).u64[0];
              v96 = vextq_s8(v94, v93, 0xCuLL).u64[0];
              v97 = v293;
              *v98.f32 = vzip1_s32(*&vextq_s8(v97, v97, 8uLL), *v293.f32);
              *v99.f32 = vzip1_s32(v95, *v93.f32);
              *v100.f32 = vext_s8(*v93.f32, v95, 4uLL);
              v101.i64[0] = vextq_s8(v97, v97, 4uLL).u64[0];
              *v102.f32 = vdup_laneq_s32(v94, 3);
              v99.i64[1] = v100.i64[0];
              *&v101.u32[2] = vrev64_s32(*v98.f32);
              v102.i64[1] = v93.i64[0];
              v93.i64[0] = v293.i64[0];
              *&v93.u32[2] = vdup_lane_s32(*v293.f32, 1);
              v98.i64[1] = v98.i64[0];
              v100.i64[1] = v96;
              v302 = veorq_s8(v94, xmmword_1AFE47BF0);
              v303 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v93, v102), vmulq_f32(v98, v100)), xmmword_1AFE47BE0), vmulq_f32(v101, v99));
              v103 = sub_1AFD807B4(&v303, &v302);
              v44 = v288;
              v103.i32[0] = 0;
              v104 = v303;
              v104.i32[3] = 0;
              v105.i32[0] = *v13 & 8;
              v106 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v105, v103), 0), v303, vnegq_f32(v104)), v282);
              v106.i32[3] = 0;
              v107 = vmulq_f32(v288, v279);
              v108 = vmulq_f32(v288, v106);
              LODWORD(v109) = vadd_f32(vpadd_f32(*v108.i8, *v108.i8), *&vextq_s8(v108, v108, 8uLL)).u32[0];
              v110 = *(v10 + 136);
              if (vadd_f32(vpadd_f32(*v107.i8, *v107.i8), *&vextq_s8(v107, v107, 8uLL)).f32[0] < v110 && v109 < v110)
              {
                v83 = 1;
                v82 = v293;
              }

              else
              {
                v302 = v279;
                v112 = sub_1AFD7E5A4(&v297, &v302, &v298, &v303, *(v13 + 4));
                v82 = v293;
                if (v112)
                {
                  if ((a6 & 4) != 0 || (v113 = vmulq_n_f32(v293, v296), v113.i32[3] = 0, v114 = vmulq_f32(v303, v113), vadd_f32(vpadd_f32(*v114.i8, *v114.i8), *&vextq_s8(v114, v114, 8uLL)).f32[0] > 0.0))
                  {
                    v115 = a2[3];
                    v116 = vmulq_f32(*v115, v303);
                    v117 = vmulq_f32(v303, v115[1]);
                    v118 = vmulq_f32(v303, v115[2]);
                    v118.i32[3] = 0;
                    *v116.f32 = vadd_f32(vpadd_f32(*v116.f32, *v117.f32), vzip1_s32(*&vextq_s8(v116, v116, 8uLL), *&vextq_s8(v117, v117, 8uLL)));
                    *&v116.u32[2] = vpadd_f32(vpadd_f32(*v118.i8, *&vextq_s8(v118, v118, 8uLL)), 0);
                    *(a1 + 64) = v116;
                    v119 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v116, COERCE_FLOAT(*(a1 + 80))));
                    v119.i32[3] = 0;
                    *(a1 + 32) = v119;
                    v120 = a2[3];
                    v121 = *(v120 + 32);
                    v122 = vsubq_f32(v119, *(v120 + 48));
                    v123 = *(v120 + 16);
                    v124 = vtrn1q_s32(*v120, v123);
                    v125.i64[0] = vextq_s8(v124, v124, 8uLL).u64[0];
                    v125.i64[1] = vextq_s8(v121, v121, 8uLL).u32[0];
                    v126 = vmulq_f32(v125, v122);
                    v122.i32[3] = 0;
                    v124.i64[1] = v121.u32[0];
                    *v117.f32 = vzip2_s32(*v120, *v123.i8);
                    *&v117.u32[2] = vzip2_s32(*v121.i8, 0);
                    v127 = vmulq_f32(v124, v122);
                    v128 = vmulq_f32(v117, v122);
                    v126.i32[3] = 0;
                    *v128.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v127, v127, 8uLL), *&vextq_s8(v128, v128, 8uLL)), vpadd_f32(*v127.i8, *v128.i8));
                    v128.u64[1] = vpadd_f32(vpadd_f32(*v126.i8, *&vextq_s8(v126, v126, 8uLL)), 0);
                    *(a1 + 16) = v128;
                  }
                }

                v83 = 0;
                v44 = v288;
              }

              v27 = v285;
            }

            v87 = 1;
            v23 = v300;
          }

          v129 = v299;
          v130 = vsubq_f32(v299, v23);
          v130.i32[3] = 0;
          v131 = vmulq_f32(v130, v130);
          v132 = vadd_f32(vpadd_f32(*v131.i8, *v131.i8), *&vextq_s8(v131, v131, 8uLL));
          v133 = v23;
          if (v132.f32[0] >= 1.4211e-14)
          {
            v134 = vsubq_f32(v27, v23);
            v134.i32[3] = 0;
            v135 = vmulq_f32(v130, v134);
            v136 = vdiv_f32(vadd_f32(*&vextq_s8(v135, v135, 8uLL), vpadd_f32(*v135.i8, *v135.i8)), v132).f32[0];
            v137 = 0.0;
            if (v136 >= 0.0)
            {
              v137 = v136;
              if (v136 > 1.0)
              {
                v137 = 1.0;
              }
            }

            v138 = vmulq_n_f32(v130, v137);
            v138.i32[3] = 0;
            v133 = vaddq_f32(v23, v138);
          }

          v139 = *(v13 + 8);
          if (fabsf(v139) < *(v10 + 152) && v57 == 1)
          {
            v140 = vsubq_f32(v27, v133);
            v140.i32[3] = 0;
            v141 = vmulq_f32(v140, v140);
            if (sqrtf(vadd_f32(*&vextq_s8(v141, v141, 8uLL), vpadd_f32(*v141.i8, *v141.i8)).f32[0]) < *(v10 + 148))
            {
              v142 = vsubq_f32(v23, v299);
              v142.i32[3] = 0;
              v297 = v142;
              if (v139 == 0.0)
              {
                ++v83;
              }

              else
              {
                v143 = 1.0;
                if ((*v13 & 2) == 0)
                {
                  v143 = -1.0;
                }

                v283 = v143;
                v286 = v27;
                v144 = vmulq_n_f32(v82, v143);
                v144.i32[3] = 0;
                v278 = v142;
                v280 = v144;
                v145 = vmulq_f32(v142, v142);
                v146 = sqrtf(vadd_f32(*&vextq_s8(v145, v145, 8uLL), vpadd_f32(*v145.i8, *v145.i8)).f32[0]);
                v289 = v44;
                v294 = v82;
                v147 = __sincosf_stret(v139 * 0.5);
                v148 = vmulq_n_f32(v278, v147.__sinval / v146);
                v149.i64[0] = v148.i64[0];
                v149.i64[1] = __PAIR64__(LODWORD(v147.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v147.__sinval / v146, v278, 2)));
                v150 = vextq_s8(v149, v149, 8uLL).u64[0];
                v151 = vextq_s8(v149, v148, 0xCuLL).u64[0];
                v152 = v294;
                *v153.f32 = vzip1_s32(*&vextq_s8(v152, v152, 8uLL), *v294.f32);
                *v154.f32 = vzip1_s32(v150, *v148.f32);
                *v155.f32 = vext_s8(*v148.f32, v150, 4uLL);
                v156.i64[0] = vextq_s8(v152, v152, 4uLL).u64[0];
                *v157.f32 = vdup_laneq_s32(v149, 3);
                v154.i64[1] = v155.i64[0];
                *&v156.u32[2] = vrev64_s32(*v153.f32);
                v157.i64[1] = v148.i64[0];
                v148.i64[0] = v294.i64[0];
                *&v148.u32[2] = vdup_lane_s32(*v294.f32, 1);
                v153.i64[1] = v153.i64[0];
                v155.i64[1] = v151;
                v302 = veorq_s8(v149, xmmword_1AFE47BF0);
                v303 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v148, v157), vmulq_f32(v153, v155)), xmmword_1AFE47BE0), vmulq_f32(v156, v154));
                v158 = sub_1AFD807B4(&v303, &v302);
                v44 = v289;
                v158.i32[0] = 0;
                v159 = v303;
                v159.i32[3] = 0;
                v160.i32[0] = *v13 & 0x10;
                v161 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v160, v158), 0), v303, vnegq_f32(v159)), v283);
                v161.i32[3] = 0;
                v162 = vmulq_f32(v289, v280);
                v163 = vmulq_f32(v289, v161);
                LODWORD(v164) = vadd_f32(vpadd_f32(*v163.i8, *v163.i8), *&vextq_s8(v163, v163, 8uLL)).u32[0];
                v165 = *(v10 + 136);
                if (vadd_f32(vpadd_f32(*v162.i8, *v162.i8), *&vextq_s8(v162, v162, 8uLL)).f32[0] < v165 && v164 < v165)
                {
                  ++v83;
                  v82 = v294;
                }

                else
                {
                  v167 = a2[3];
                  v168 = *(v167 + 16);
                  v169 = *(v167 + 32);
                  v170 = vtrn1q_s32(*v167, v168);
                  v171.i64[0] = vextq_s8(v170, v170, 8uLL).u64[0];
                  v170.i64[1] = v169.u32[0];
                  *v172.f32 = vzip2_s32(*v167, *v168.i8);
                  *&v172.u32[2] = vzip2_s32(*v169.i8, 0);
                  v171.i64[1] = vextq_s8(v169, v169, 8uLL).u32[0];
                  v173 = *(a1 + 64);
                  v174 = vmulq_f32(v170, v173);
                  v175 = vmulq_f32(v172, v173);
                  v176 = vmulq_f32(v171, v173);
                  v176.i32[3] = 0;
                  *v174.i8 = vadd_f32(vpadd_f32(*v174.i8, *v175.i8), vzip1_s32(*&vextq_s8(v174, v174, 8uLL), *&vextq_s8(v175, v175, 8uLL)));
                  v174.u64[1] = vpadd_f32(vpadd_f32(*v176.i8, *&vextq_s8(v176, v176, 8uLL)), 0);
                  v290 = v174;
                  v298 = v174;
                  v302 = v280;
                  v177 = sub_1AFD7E5A4(&v297, &v302, &v298, &v303, *(v13 + 8));
                  v82 = v294;
                  if (v177)
                  {
                    if ((a6 & 4) != 0 || (v178 = vmulq_n_f32(v294, v296), v178.i32[3] = 0, v179 = vmulq_f32(v303, v178), vadd_f32(vpadd_f32(*v179.i8, *v179.i8), *&vextq_s8(v179, v179, 8uLL)).f32[0] > 0.0))
                    {
                      v180 = a2[3];
                      v181 = vmulq_f32(*v180, v303);
                      v182 = vmulq_f32(v303, v180[1]);
                      v183 = vmulq_f32(v303, v180[2]);
                      v183.i32[3] = 0;
                      *v181.f32 = vadd_f32(vpadd_f32(*v181.f32, *v182.f32), vzip1_s32(*&vextq_s8(v181, v181, 8uLL), *&vextq_s8(v182, v182, 8uLL)));
                      *&v181.u32[2] = vpadd_f32(vpadd_f32(*v183.i8, *&vextq_s8(v183, v183, 8uLL)), 0);
                      *(a1 + 64) = v181;
                      v184 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v181, COERCE_FLOAT(*(a1 + 80))));
                      v184.i32[3] = 0;
                      *(a1 + 32) = v184;
                      v185 = a2[3];
                      v186 = *(v185 + 32);
                      v187 = vsubq_f32(v184, *(v185 + 48));
                      v188 = *(v185 + 16);
                      v189 = vtrn1q_s32(*v185, v188);
                      v190.i64[0] = vextq_s8(v189, v189, 8uLL).u64[0];
                      v190.i64[1] = vextq_s8(v186, v186, 8uLL).u32[0];
                      v191 = vmulq_f32(v190, v187);
                      v187.i32[3] = 0;
                      v189.i64[1] = v186.u32[0];
                      *v182.f32 = vzip2_s32(*v185, *v188.i8);
                      *&v182.u32[2] = vzip2_s32(*v186.i8, 0);
                      v192 = vmulq_f32(v189, v187);
                      v193 = vmulq_f32(v182, v187);
                      v191.i32[3] = 0;
                      *v193.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v192, v192, 8uLL), *&vextq_s8(v193, v193, 8uLL)), vpadd_f32(*v192.i8, *v193.i8));
                      v193.u64[1] = vpadd_f32(vpadd_f32(*v191.i8, *&vextq_s8(v191, v191, 8uLL)), 0);
                      *(a1 + 16) = v193;
                    }
                  }

                  v44 = v290;
                }

                v27 = v286;
              }

              v87 = 1;
              v129 = v299;
            }
          }

          v194 = vsubq_f32(v301, v129);
          v194.i32[3] = 0;
          v195 = vmulq_f32(v194, v194);
          v196 = vadd_f32(vpadd_f32(*v195.i8, *v195.i8), *&vextq_s8(v195, v195, 8uLL));
          v197 = v129;
          if (v196.f32[0] >= 1.4211e-14)
          {
            v198 = vsubq_f32(v27, v129);
            v198.i32[3] = 0;
            v199 = vmulq_f32(v194, v198);
            v200 = vdiv_f32(vadd_f32(*&vextq_s8(v199, v199, 8uLL), vpadd_f32(*v199.i8, *v199.i8)), v196).f32[0];
            v201 = 0.0;
            if (v200 >= 0.0)
            {
              v201 = v200;
              if (v200 > 1.0)
              {
                v201 = 1.0;
              }
            }

            v202 = vmulq_n_f32(v194, v201);
            v202.i32[3] = 0;
            v197 = vaddq_f32(v129, v202);
          }

          v203 = *(v13 + 12);
          if (fabsf(v203) < *(v10 + 152) && v57 == 2)
          {
            v204 = vsubq_f32(v27, v197);
            v204.i32[3] = 0;
            v205 = vmulq_f32(v204, v204);
            if (sqrtf(vadd_f32(*&vextq_s8(v205, v205, 8uLL), vpadd_f32(*v205.i8, *v205.i8)).f32[0]) < *(v10 + 148))
            {
              v206 = vsubq_f32(v129, v301);
              v206.i32[3] = 0;
              v297 = v206;
              if (v203 == 0.0)
              {
                ++v83;
              }

              else
              {
                v207 = 1.0;
                if ((*v13 & 4) == 0)
                {
                  v207 = -1.0;
                }

                v287 = v207;
                v291 = v44;
                v208 = vmulq_n_f32(v82, v207);
                v208.i32[3] = 0;
                v281 = v206;
                v284 = v208;
                v209 = vmulq_f32(v206, v206);
                v210 = sqrtf(vadd_f32(*&vextq_s8(v209, v209, 8uLL), vpadd_f32(*v209.i8, *v209.i8)).f32[0]);
                v295 = v82;
                v211 = __sincosf_stret(v203 * 0.5);
                v212 = vmulq_n_f32(v281, v211.__sinval / v210);
                v213.i64[0] = v212.i64[0];
                v213.i64[1] = __PAIR64__(LODWORD(v211.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v211.__sinval / v210, v281, 2)));
                v214 = vextq_s8(v213, v213, 8uLL).u64[0];
                v215 = vextq_s8(v213, v212, 0xCuLL).u64[0];
                v216 = v295;
                *v217.f32 = vzip1_s32(*&vextq_s8(v216, v216, 8uLL), *v295.f32);
                *v218.f32 = vzip1_s32(v214, *v212.f32);
                *v219.f32 = vext_s8(*v212.f32, v214, 4uLL);
                v220.i64[0] = vextq_s8(v216, v216, 4uLL).u64[0];
                *v221.f32 = vdup_laneq_s32(v213, 3);
                v218.i64[1] = v219.i64[0];
                *&v220.u32[2] = vrev64_s32(*v217.f32);
                v221.i64[1] = v212.i64[0];
                v212.i64[0] = v295.i64[0];
                *&v212.u32[2] = vdup_lane_s32(*v295.f32, 1);
                v217.i64[1] = v217.i64[0];
                v219.i64[1] = v215;
                v302 = veorq_s8(v213, xmmword_1AFE47BF0);
                v303 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v212, v221), vmulq_f32(v217, v219)), xmmword_1AFE47BE0), vmulq_f32(v220, v218));
                v222 = sub_1AFD807B4(&v303, &v302);
                v44 = v291;
                v222.i32[0] = 0;
                v223 = v303;
                v223.i32[3] = 0;
                v224.i32[0] = *v13 & 0x20;
                v225 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v224, v222), 0), v303, vnegq_f32(v223)), v287);
                v225.i32[3] = 0;
                v226 = vmulq_f32(v291, v284);
                *v223.f32 = vpadd_f32(*v226.i8, *v226.i8);
                v129 = vextq_s8(v226, v226, 8uLL);
                v129.f32[0] = vadd_f32(*v223.f32, *v129.f32).f32[0];
                v227 = vmulq_f32(v291, v225);
                LODWORD(v228) = vadd_f32(vpadd_f32(*v227.i8, *v227.i8), *&vextq_s8(v227, v227, 8uLL)).u32[0];
                v229 = *(v10 + 136);
                if (v129.f32[0] < v229 && v228 < v229)
                {
                  ++v83;
                  v82 = v295;
                }

                else
                {
                  v231 = a2[3];
                  v232 = *(v231 + 16);
                  v233 = *(v231 + 32);
                  v234 = vtrn1q_s32(*v231, v232);
                  v235.i64[0] = vextq_s8(v234, v234, 8uLL).u64[0];
                  v234.i64[1] = v233.u32[0];
                  *v236.f32 = vzip2_s32(*v231, *v232.i8);
                  *&v236.u32[2] = vzip2_s32(*v233.i8, 0);
                  v235.i64[1] = vextq_s8(v233, v233, 8uLL).u32[0];
                  v237 = *(a1 + 64);
                  v238 = vmulq_f32(v234, v237);
                  v239 = vmulq_f32(v236, v237);
                  v240 = vmulq_f32(v235, v237);
                  v240.i32[3] = 0;
                  *v238.i8 = vadd_f32(vpadd_f32(*v238.i8, *v239.i8), vzip1_s32(*&vextq_s8(v238, v238, 8uLL), *&vextq_s8(v239, v239, 8uLL)));
                  v238.u64[1] = vpadd_f32(vpadd_f32(*v240.i8, *&vextq_s8(v240, v240, 8uLL)), 0);
                  v292 = v238;
                  v298 = v238;
                  v302 = v284;
                  v241 = sub_1AFD7E5A4(&v297, &v302, &v298, &v303, *(v13 + 12));
                  v82 = v295;
                  if (v241)
                  {
                    if ((a6 & 4) != 0 || (v242 = vmulq_n_f32(v295, v296), v242.i32[3] = 0, v243 = vmulq_f32(v303, v242), v244 = vpadd_f32(*v243.i8, *v243.i8), v129 = vextq_s8(v243, v243, 8uLL), vadd_f32(v244, *v129.f32).f32[0] > 0.0))
                    {
                      v245 = a2[3];
                      v246 = vmulq_f32(*v245, v303);
                      v247 = vmulq_f32(v303, v245[1]);
                      v248 = vmulq_f32(v303, v245[2]);
                      v248.i32[3] = 0;
                      *v246.f32 = vadd_f32(vpadd_f32(*v246.f32, *v247.f32), vzip1_s32(*&vextq_s8(v246, v246, 8uLL), *&vextq_s8(v247, v247, 8uLL)));
                      *&v246.u32[2] = vpadd_f32(vpadd_f32(*v248.i8, *&vextq_s8(v248, v248, 8uLL)), 0);
                      *(a1 + 64) = v246;
                      v249 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v246, COERCE_FLOAT(*(a1 + 80))));
                      v249.i32[3] = 0;
                      *(a1 + 32) = v249;
                      v250 = a2[3];
                      v251 = *(v250 + 32);
                      v252 = vsubq_f32(v249, *(v250 + 48));
                      v253 = *(v250 + 16);
                      v254 = vtrn1q_s32(*v250, v253);
                      v255.i64[0] = vextq_s8(v254, v254, 8uLL).u64[0];
                      v255.i64[1] = vextq_s8(v251, v251, 8uLL).u32[0];
                      v256 = vmulq_f32(v255, v252);
                      v252.i32[3] = 0;
                      v254.i64[1] = v251.u32[0];
                      *v247.f32 = vzip2_s32(*v250, *v253.i8);
                      *&v247.u32[2] = vzip2_s32(*v251.i8, 0);
                      v257 = vmulq_f32(v254, v252);
                      v258 = vmulq_f32(v247, v252);
                      v256.i32[3] = 0;
                      *v129.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v257, v257, 8uLL), *&vextq_s8(v258, v258, 8uLL)), vpadd_f32(*v257.i8, *v258.i8));
                      *&v129.u32[2] = vpadd_f32(vpadd_f32(*v256.i8, *&vextq_s8(v256, v256, 8uLL)), 0);
                      *(a1 + 16) = v129;
                    }
                  }

                  v44 = v292;
                }
              }

              v87 = 1;
            }
          }

          if (v87 && v83)
          {
            if ((a6 & 2) != 0)
            {
              v261 = vmulq_f32(v82, v44);
              *v129.f32 = vpadd_f32(*v261.i8, *v261.i8);
              v262 = vextq_s8(v261, v261, 8uLL);
              *v262.f32 = vadd_f32(*v129.f32, *v262.f32);
              v129.i64[0] = 0;
              v259 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v129, v262), 0), vnegq_f32(v82), v82);
            }

            else
            {
              v259 = vmulq_n_f32(v82, v296);
              v259.i32[3] = 0;
              v260 = vmulq_f32(v44, v259);
              if (vadd_f32(vpadd_f32(*v260.i8, *v260.i8), *&vextq_s8(v260, v260, 8uLL)).f32[0] < 0.0)
              {
                return;
              }
            }

            v263 = a2[3];
            v264 = vmulq_f32(*v263, v259);
            v265 = vmulq_f32(v263[1], v259);
            v266 = vmulq_f32(v263[2], v259);
            v266.i32[3] = 0;
            *v264.f32 = vadd_f32(vpadd_f32(*v264.f32, *v265.f32), vzip1_s32(*&vextq_s8(v264, v264, 8uLL), *&vextq_s8(v265, v265, 8uLL)));
            *&v264.u32[2] = vpadd_f32(vpadd_f32(*v266.i8, *&vextq_s8(v266, v266, 8uLL)), 0);
            *(a1 + 64) = v264;
            v267 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v264, COERCE_FLOAT(*(a1 + 80))));
            v267.i32[3] = 0;
            *(a1 + 32) = v267;
            v268 = a2[3];
            v269 = *(v268 + 32);
            v270 = vsubq_f32(v267, *(v268 + 48));
            v271 = *(v268 + 16);
            v272 = vtrn1q_s32(*v268, v271);
            v273.i64[0] = vextq_s8(v272, v272, 8uLL).u64[0];
            v273.i64[1] = vextq_s8(v269, v269, 8uLL).u32[0];
            v274 = vmulq_f32(v273, v270);
            v270.i32[3] = 0;
            v272.i64[1] = v269.u32[0];
            *v265.f32 = vzip2_s32(*v268, *v271.i8);
            *&v265.u32[2] = vzip2_s32(*v269.i8, 0);
            v275 = vmulq_f32(v272, v270);
            v276 = vmulq_f32(v265, v270);
            v274.i32[3] = 0;
            *v276.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v275, v275, 8uLL), *&vextq_s8(v276, v276, 8uLL)), vpadd_f32(*v275.i8, *v276.i8));
            v276.u64[1] = vpadd_f32(vpadd_f32(*v274.i8, *&vextq_s8(v274, v274, 8uLL)), 0);
            *(a1 + 16) = v276;
          }
        }
      }
    }
  }
}

void sub_1AFD7F7B4()
{
  nullsub_106();

  JUMPOUT(0x1B271C6B0);
}

void sub_1AFD7F7EC(uint64_t a1, float32x4_t *a2, unsigned int a3, unsigned int a4)
{
  v201 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  if (*(a1 + 8) != __PAIR64__(a4, a3))
  {
    v199 = -1;
    v200 = -1;
    v198 = -1;
    v197 = -1;
    v7 = vsubq_f32(a2[1], *a2);
    v7.i32[3] = 0;
    v8 = vsubq_f32(a2[2], *a2);
    v8.i32[3] = 0;
    v9 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL), v7), vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), v8));
    v10 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
    v10.i32[3] = 0;
    v11 = vmulq_f32(v10, v10);
    v8.f32[0] = vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0];
    v12 = *(a1 + 24);
    v13 = *(v12 + 144);
    if (v8.f32[0] >= v13)
    {
      v14 = *(a1 + 16);
      v15 = vsubq_f32(v14[1], *v14);
      v15.i32[3] = 0;
      v16 = vsubq_f32(v14[2], *v14);
      v16.i32[3] = 0;
      v17 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL), v15), vmulq_f32(vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL), v16));
      v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
      v18.i32[3] = 0;
      v19 = vmulq_f32(v18, v18);
      if (vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0] >= v13)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = 0;
          v23 = v14[v20];
          do
          {
            v24 = vsubq_f32(v23, a2[v22]);
            v24.i32[3] = 0;
            v25 = vmulq_f32(v24, v24);
            if (vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0] < v13)
            {
              *(&v199 + v21) = v20;
              v197.i32[v21] = v22;
              if (v21 > 1)
              {
                return;
              }

              ++v21;
            }

            ++v22;
          }

          while (v22 != 3);
          if (v21 > 2)
          {
            return;
          }

          ++v20;
        }

        while (v20 != 3);
        if (v21 != 2)
        {
          return;
        }

        v27 = v199;
        v26 = HIDWORD(v199);
        if (v199 == 0x200000000)
        {
          v26 = 0;
          v199 = 2;
          v197 = vrev64_s32(v197);
          v27 = 2;
        }

        v28 = *(a1 + 12) | (v6 << 21);
        LODWORD(v193[0]) = v28;
        v29 = sub_1AFD80504(v12 + 8, v193);
        if (v29 == -1 || (v30 = *(v12 + 88)) == 0)
        {
          *(v193 + 4) = vdup_n_s32(0x40C90FDBu);
          HIDWORD(v193[0]) = 1086918619;
          LODWORD(v193[0]) = 0;
          v31 = *(a1 + 24);
          LODWORD(v188) = v28;
          sub_1AFD802A4(v31 + 8, &v188, v193);
          v32 = *(a1 + 24);
          LODWORD(v188) = v28;
          v29 = sub_1AFD80504(v32 + 8, &v188);
          if (v29 == -1)
          {
            v181 = 0;
LABEL_22:
            v33 = v26 + v27;
            v34 = *(a1 + 16);
            v35 = 3 - (v26 + v27);
            v36 = vsubq_f32(v34[v26], v34[v27]);
            v36.i32[3] = 0;
            v182 = v36;
            sub_1AFD8A774(v193);
            *&v193[0] = &unk_1F2570DD8;
            DWORD2(v193[0]) = 1;
            v194 = *v34;
            v195 = v34[1];
            v196 = v34[2];
            v38 = v197.i32[0];
            v37 = v197.i32[1];
            v39 = 3 - (v197.i32[0] + v197.i32[1]);
            sub_1AFD8A774(&v188);
            v184 = 0;
            v188 = &unk_1F2570DD8;
            v40 = a2[v37];
            v189 = 1;
            v41 = a2[v38];
            v42 = a2[v39];
            v190 = v40;
            v191 = v41;
            v192 = v42;
            v43 = vsubq_f32(v195, v194);
            v44 = vsubq_f32(v196, v194);
            v45 = v44;
            v45.i32[3] = 0;
            v46 = vmulq_f32(vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL), v43);
            v43.i32[3] = 0;
            v47 = vsubq_f32(v46, vmulq_f32(vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL), v44));
            v48 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
            v48.i32[3] = 0;
            v49 = vmulq_f32(v48, v48);
            v50 = vsubq_f32(v41, v40);
            v51 = vsubq_f32(v42, v40);
            v52 = v51;
            v52.i32[3] = 0;
            v53 = vmulq_f32(vextq_s8(vextq_s8(v52, v52, 0xCuLL), v52, 8uLL), v50);
            v50.i32[3] = 0;
            v54 = vmulq_n_f32(v48, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0]));
            v55 = vsubq_f32(v53, vmulq_f32(vextq_s8(vextq_s8(v50, v50, 0xCuLL), v50, 8uLL), v51));
            v56 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
            v56.i32[3] = 0;
            v57 = vmulq_f32(v56, v56);
            v58 = vmulq_n_f32(v56, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v57.i8, *v57.i8), *&vextq_s8(v57, v57, 8uLL)).f32[0]));
            v59 = vmulq_f32(v182, v182);
            v60 = vmulq_n_f32(v182, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v59, v59, 8uLL), vpadd_f32(*v59.i8, *v59.i8)).f32[0]));
            v61 = vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL);
            v46.i64[0] = vextq_s8(v54, v54, 4uLL).u64[0];
            v179 = v46.i64[0];
            v46.i64[1] = v54.i64[0];
            v62 = vsubq_f32(vmulq_f32(v60, v46), vmulq_f32(v61, v54));
            v63 = vextq_s8(vextq_s8(v62, v62, 0xCuLL), v62, 8uLL);
            v63.i32[3] = 0;
            v64 = vmulq_f32(v63, v63);
            v65 = *(a1 + 16);
            v70 = *(v65 + 16 * v27);
            v66 = vmulq_n_f32(v63, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v64.i8, *v64.i8), *&vextq_s8(v64, v64, 8uLL)).f32[0]));
            v67 = vsubq_f32(*(v65 + 16 * v35), v70);
            v67.i32[3] = 0;
            v68 = vmulq_f32(v66, v67);
            *v53.f32 = vpadd_f32(*v68.i8, *v68.i8);
            v69 = vextq_s8(v68, v68, 8uLL);
            *v69.f32 = vadd_f32(*v53.f32, *v69.f32);
            v70.i64[0] = 0;
            v183 = v54;
            v178 = vextq_s8(v54, v54, 8uLL).u64[0];
            v71 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v70, v69), 0), vnegq_f32(v66), v66);
            v180 = v58;
            v72 = vsubq_f32(vmulq_f32(v60, vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL)), vmulq_f32(v61, v58));
            v73 = vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL);
            v73.i32[3] = 0;
            v74 = vmulq_f32(v73, v73);
            v75 = vmulq_n_f32(v73, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v74.i8, *v74.i8), *&vextq_s8(v74, v74, 8uLL)).f32[0]));
            v76 = vsubq_f32(v42, v41);
            v76.i32[3] = 0;
            v77 = vmulq_f32(v75, v76);
            *v42.f32 = vpadd_f32(*v77.i8, *v77.i8);
            v78 = vextq_s8(v77, v77, 8uLL);
            *v78.f32 = vadd_f32(*v42.f32, *v78.f32);
            v79 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v70, v78), 0), vnegq_f32(v75), v75);
            v80 = vextq_s8(vextq_s8(v71, v71, 0xCuLL), v71, 8uLL);
            v81 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v79, v79, 0xCuLL), v79, 8uLL), v71), vmulq_f32(v79, v80));
            v82 = vextq_s8(vextq_s8(v81, v81, 0xCuLL), v81, 8uLL);
            v82.i32[3] = 0;
            v83 = vmulq_f32(v82, v82);
            v84 = vadd_f32(vpadd_f32(*v83.i8, *v83.i8), *&vextq_s8(v83, v83, 8uLL)).f32[0];
            if (v84 >= *(*(a1 + 24) + 140))
            {
              v174 = vmulq_n_f32(v82, 1.0 / sqrtf(v84));
              v85.i64[0] = vextq_s8(v174, v174, 4uLL).u64[0];
              v85.i64[1] = v174.i64[0];
              v86 = vsubq_f32(vmulq_f32(v80, v174), vmulq_f32(v71, v85));
              v87 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
              v87.i32[3] = 0;
              v88 = vmulq_f32(v87, v87);
              v89 = vmulq_f32(v79, vmulq_n_f32(v87, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v88, v88, 8uLL), vpadd_f32(*v88.i8, *v88.i8)).f32[0])));
              v90 = vmulq_f32(v79, v71);
              v185 = v79;
              v91 = 3.1416 - atan2f(vadd_f32(vpadd_f32(*v89.i8, *v89.i8), *&vextq_s8(v89, v89, 8uLL)).f32[0], vadd_f32(*&vextq_s8(v90, v90, 8uLL), vpadd_f32(*v90.i8, *v90.i8)).f32[0]);
              v92 = vmulq_f32(v183, v185);
              *v92.i32 = vadd_f32(*&vextq_s8(v92, v92, 8uLL), vpadd_f32(*v92.i8, *v92.i8)).f32[0];
              v184 = *v92.i32 < 0.0;
              if (*v92.i32 >= 0.0)
              {
                v93 = -v91;
              }

              else
              {
                v93 = v91;
              }

              v170 = v93;
              v94 = vmulq_f32(v174, v174);
              v95 = sqrtf(vadd_f32(*&vextq_s8(v94, v94, 8uLL), vpadd_f32(*v94.i8, *v94.i8)).f32[0]);
              v96 = __sincosf_stret(v93 * -0.5);
              *v187.f32 = vmul_n_f32(*v174.f32, v96.__sinval / v95);
              v187.i64[1] = __PAIR64__(LODWORD(v96.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v96.__sinval / v95, v174, 2)));
              sub_1AF35A1DC(v186, &v187);
              v70.f32[0] = v170;
            }

            switch(v33)
            {
              case 3:
                v146 = vsubq_f32(*(*(a1 + 16) + 16), *(*(a1 + 16) + 32));
                v147 = v146;
                v147.i32[3] = 0;
                v173 = v147;
                v177 = v146;
                v148 = -v70.f32[0];
                v149 = vmulq_f32(v147, v147);
                v150 = sqrtf(vadd_f32(vpadd_f32(*v149.i8, *v149.i8), *&vextq_s8(v149, v149, 8uLL)).f32[0]);
                v151 = __sincosf_stret(v70.f32[0] * -0.5);
                v152 = vmulq_n_f32(v173, v151.__sinval / v150);
                v153.i64[0] = v152.i64[0];
                v153.i64[1] = __PAIR64__(LODWORD(v151.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v151.__sinval / v150, v177, 2)));
                v154 = vextq_s8(v153, v153, 8uLL).u64[0];
                v155.i64[0] = v183.i64[0];
                v156.i64[0] = v179;
                *v157.f32 = vzip1_s32(v178, *v183.f32);
                *v158.f32 = vzip1_s32(v154, *v152.i8);
                *v159.f32 = vext_s8(*v152.i8, v154, 4uLL);
                *v160.f32 = vdup_laneq_s32(v153, 3);
                v158.i64[1] = v159.i64[0];
                *&v156.u32[2] = vrev64_s32(*v157.f32);
                v160.i64[1] = v152.i64[0];
                *&v155.u32[2] = vdup_lane_s32(*v183.f32, 1);
                v157.i64[1] = v157.i64[0];
                v159.i64[1] = vextq_s8(v153, v152, 0xCuLL).u64[0];
                v161 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v155, v160), vmulq_f32(v157, v159)), xmmword_1AFE47BE0), vmulq_f32(v156, v158));
                v162 = veorq_s8(v153, xmmword_1AFE47BF0);
                v163 = vextq_s8(v161, v161, 8uLL).u64[0];
                *v153.i8 = vzip1_s32(v163, *v161.f32);
                v157.i64[0] = vextq_s8(v162, v162, 8uLL).u64[0];
                *v158.f32 = vzip1_s32(*v157.f32, *v162.f32);
                *v160.f32 = vdup_laneq_s32(v162, 3);
                v164.i64[0] = vextq_s8(v161, v161, 4uLL).u64[0];
                *v157.f32 = vext_s8(*v162.f32, *v157.f32, 4uLL);
                v153.i64[1] = v164.i64[0];
                *&v157.u32[2] = vdup_lane_s32(*v158.f32, 1);
                v165 = vmulq_f32(v157, v153);
                v166 = vmulq_laneq_f32(v162, v161, 3);
                v167 = vtrn2q_s32(v162, v162);
                *&v164.u32[2] = v163;
                v158.i64[1] = v160.i64[0];
                v168 = vaddq_f32(vsubq_f32(v166, v165), vaddq_f32(vmulq_f32(vextq_s8(v167, v167, 8uLL), vdupq_lane_s64(v161.i64[0], 0)), vmulq_f32(v158, v164)));
                v168.i32[3] = 0;
                v169 = vmulq_f32(v180, v168);
                if (vadd_f32(vpadd_f32(*v169.i8, *v169.i8), *&vextq_s8(v169, v169, 8uLL)).f32[0] < 0.0)
                {
                  *v181 |= 0x10u;
                }

                *(v181 + 8) = v148;
                if (!v184)
                {
                  goto LABEL_43;
                }

                v121 = 2;
                break;
              case 2:
                v122 = vsubq_f32(*(*(a1 + 16) + 32), **(a1 + 16));
                v123 = v122;
                v123.i32[3] = 0;
                v172 = v123;
                v176 = v122;
                v124 = -v70.f32[0];
                v125 = vmulq_f32(v123, v123);
                v126 = sqrtf(vadd_f32(vpadd_f32(*v125.i8, *v125.i8), *&vextq_s8(v125, v125, 8uLL)).f32[0]);
                v127 = __sincosf_stret(v70.f32[0] * -0.5);
                v128 = vmulq_n_f32(v172, v127.__sinval / v126);
                v129.i64[0] = v128.i64[0];
                v129.i64[1] = __PAIR64__(LODWORD(v127.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v127.__sinval / v126, v176, 2)));
                v130 = vextq_s8(v129, v129, 8uLL).u64[0];
                v131.i64[0] = v183.i64[0];
                v132.i64[0] = v179;
                *v133.f32 = vzip1_s32(v178, *v183.f32);
                *v134.f32 = vzip1_s32(v130, *v128.i8);
                *v135.f32 = vext_s8(*v128.i8, v130, 4uLL);
                *v136.f32 = vdup_laneq_s32(v129, 3);
                v134.i64[1] = v135.i64[0];
                *&v132.u32[2] = vrev64_s32(*v133.f32);
                v136.i64[1] = v128.i64[0];
                *&v131.u32[2] = vdup_lane_s32(*v183.f32, 1);
                v133.i64[1] = v133.i64[0];
                v135.i64[1] = vextq_s8(v129, v128, 0xCuLL).u64[0];
                v137 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v131, v136), vmulq_f32(v133, v135)), xmmword_1AFE47BE0), vmulq_f32(v132, v134));
                v138 = veorq_s8(v129, xmmword_1AFE47BF0);
                v139 = vextq_s8(v137, v137, 8uLL).u64[0];
                *v129.i8 = vzip1_s32(v139, *v137.f32);
                v133.i64[0] = vextq_s8(v138, v138, 8uLL).u64[0];
                *v134.f32 = vzip1_s32(*v133.f32, *v138.f32);
                *v136.f32 = vdup_laneq_s32(v138, 3);
                v140.i64[0] = vextq_s8(v137, v137, 4uLL).u64[0];
                *v133.f32 = vext_s8(*v138.f32, *v133.f32, 4uLL);
                v129.i64[1] = v140.i64[0];
                *&v133.u32[2] = vdup_lane_s32(*v134.f32, 1);
                v141 = vmulq_f32(v133, v129);
                v142 = vmulq_laneq_f32(v138, v137, 3);
                v143 = vtrn2q_s32(v138, v138);
                *&v140.u32[2] = v139;
                v134.i64[1] = v136.i64[0];
                v144 = vaddq_f32(vsubq_f32(v142, v141), vaddq_f32(vmulq_f32(vextq_s8(v143, v143, 8uLL), vdupq_lane_s64(v137.i64[0], 0)), vmulq_f32(v134, v140)));
                v144.i32[3] = 0;
                v145 = vmulq_f32(v180, v144);
                if (vadd_f32(vpadd_f32(*v145.i8, *v145.i8), *&vextq_s8(v145, v145, 8uLL)).f32[0] < 0.0)
                {
                  *v181 |= 0x20u;
                }

                *(v181 + 12) = v124;
                if (!v184)
                {
                  goto LABEL_43;
                }

                v121 = 4;
                break;
              case 1:
                v97 = vsubq_f32(**(a1 + 16), *(*(a1 + 16) + 16));
                v98 = v97;
                v98.i32[3] = 0;
                v171 = v98;
                v175 = v97;
                v99 = -v70.f32[0];
                v100 = vmulq_f32(v98, v98);
                v101 = sqrtf(vadd_f32(vpadd_f32(*v100.i8, *v100.i8), *&vextq_s8(v100, v100, 8uLL)).f32[0]);
                v102 = __sincosf_stret(v70.f32[0] * -0.5);
                v103 = vmulq_n_f32(v171, v102.__sinval / v101);
                v104.i64[0] = v103.i64[0];
                v104.i64[1] = __PAIR64__(LODWORD(v102.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v102.__sinval / v101, v175, 2)));
                v105 = vextq_s8(v104, v104, 8uLL).u64[0];
                v106.i64[0] = v183.i64[0];
                v107.i64[0] = v179;
                *v108.f32 = vzip1_s32(v178, *v183.f32);
                *v109.f32 = vzip1_s32(v105, *v103.i8);
                *v110.f32 = vext_s8(*v103.i8, v105, 4uLL);
                *v111.f32 = vdup_laneq_s32(v104, 3);
                v109.i64[1] = v110.i64[0];
                *&v107.u32[2] = vrev64_s32(*v108.f32);
                v111.i64[1] = v103.i64[0];
                *&v106.u32[2] = vdup_lane_s32(*v183.f32, 1);
                v108.i64[1] = v108.i64[0];
                v110.i64[1] = vextq_s8(v104, v103, 0xCuLL).u64[0];
                v112 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v106, v111), vmulq_f32(v108, v110)), xmmword_1AFE47BE0), vmulq_f32(v107, v109));
                v113 = veorq_s8(v104, xmmword_1AFE47BF0);
                v114 = vextq_s8(v112, v112, 8uLL).u64[0];
                *v104.i8 = vzip1_s32(v114, *v112.f32);
                v108.i64[0] = vextq_s8(v113, v113, 8uLL).u64[0];
                *v109.f32 = vzip1_s32(*v108.f32, *v113.f32);
                *v111.f32 = vdup_laneq_s32(v113, 3);
                v115.i64[0] = vextq_s8(v112, v112, 4uLL).u64[0];
                *v108.f32 = vext_s8(*v113.f32, *v108.f32, 4uLL);
                v104.i64[1] = v115.i64[0];
                *&v108.u32[2] = vdup_lane_s32(*v109.f32, 1);
                v116 = vmulq_f32(v108, v104);
                v117 = vmulq_laneq_f32(v113, v112, 3);
                v118 = vtrn2q_s32(v113, v113);
                *&v115.u32[2] = v114;
                v109.i64[1] = v111.i64[0];
                v119 = vaddq_f32(vsubq_f32(v117, v116), vaddq_f32(vmulq_f32(vextq_s8(v118, v118, 8uLL), vdupq_lane_s64(v112.i64[0], 0)), vmulq_f32(v109, v115)));
                v119.i32[3] = 0;
                v120 = vmulq_f32(v180, v119);
                if (vadd_f32(vpadd_f32(*v120.i8, *v120.i8), *&vextq_s8(v120, v120, 8uLL)).f32[0] < 0.0)
                {
                  *v181 |= 8u;
                }

                *(v181 + 4) = v99;
                if (!v184)
                {
                  goto LABEL_43;
                }

                v121 = 1;
                break;
              default:
                goto LABEL_43;
            }

            *v181 |= v121;
LABEL_43:
            sub_1AFD8A7AC(&v188);
            sub_1AFD8A7AC(v193);
            return;
          }

          v30 = *(v32 + 88);
        }

        v181 = v30 + 16 * v29;
        goto LABEL_22;
      }
    }
  }
}

void sub_1AFD802A4(uint64_t a1, int *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = *(a1 + 72);
  v8 = sub_1AFD80504(a1, a2);
  if (v8 != -1)
  {
    *(*(a1 + 80) + 16 * v8) = *a3;
    return;
  }

  v9 = 9 * ((v6 + ~(v6 << 15)) ^ ((v6 + ~(v6 << 15)) >> 10));
  v10 = ((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) ^ (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) >> 16);
  v11 = v7 - 1;
  v12 = *(a1 + 68);
  v13 = *(a1 + 72);
  v14 = v12;
  if (v12 == v13)
  {
    v15 = v12 ? 2 * v12 : 1;
    v14 = *(a1 + 68);
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

      if (*(a1 + 68) >= 1)
      {
        v17 = 0;
        v18 = 16 * *(a1 + 68);
        do
        {
          *(v16 + v17) = *(*(a1 + 80) + v17);
          v17 += 16;
        }

        while (v18 != v17);
      }

      v19 = *(a1 + 80);
      if (v19 && *(a1 + 88) == 1)
      {
        sub_1AFDA72A0(v19);
      }

      *(a1 + 88) = 1;
      *(a1 + 80) = v16;
      *(a1 + 72) = v15;
      v14 = *(a1 + 68);
    }
  }

  v20 = v10 & v11;
  *(*(a1 + 80) + 16 * v14) = *a3;
  ++*(a1 + 68);
  LODWORD(v21) = *(a1 + 100);
  if (v21 == *(a1 + 104))
  {
    v22 = v21 ? 2 * v21 : 1;
    if (v21 < v22)
    {
      if (v22)
      {
        v23 = sub_1AFDA7294(4 * v22, 16);
        LODWORD(v21) = *(a1 + 100);
      }

      else
      {
        v23 = 0;
      }

      v24 = *(a1 + 112);
      if (v21 < 1)
      {
        if (!v24)
        {
LABEL_34:
          *(a1 + 120) = 1;
          *(a1 + 112) = v23;
          *(a1 + 104) = v22;
          LODWORD(v21) = *(a1 + 100);
          goto LABEL_35;
        }
      }

      else
      {
        v21 = v21;
        v25 = v23;
        v26 = *(a1 + 112);
        do
        {
          v27 = *v26++;
          *v25++ = v27;
          --v21;
        }

        while (v21);
      }

      if (*(a1 + 120) == 1)
      {
        sub_1AFDA72A0(v24);
      }

      *(a1 + 112) = 0;
      goto LABEL_34;
    }
  }

LABEL_35:
  *(*(a1 + 112) + 4 * v21) = *a2;
  ++*(a1 + 100);
  if (v13 < *(a1 + 72))
  {
    sub_1AFD80580(a1);
    v28 = 9 * ((*a2 + ~(*a2 << 15)) ^ ((*a2 + ~(*a2 << 15)) >> 10));
    v29 = (v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11);
    v20 = (v29 ^ (v29 >> 16)) & (*(a1 + 72) - 1);
  }

  v30 = *(a1 + 16);
  *(*(a1 + 48) + 4 * v12) = *(v30 + 4 * v20);
  *(v30 + 4 * v20) = v12;
}

uint64_t sub_1AFD80504(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = 0xFFFFFFFFLL;
  v5 = 9 * ((v3 + ~(v3 << 15)) ^ ((v3 + ~(v3 << 15)) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = (v6 ^ (v6 >> 16)) & (*(a1 + 72) - 1);
  if (v7 < *(a1 + 4))
  {
    result = *(*(a1 + 16) + 4 * v7);
    if (result == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      while (v3 != *(*(a1 + 112) + 4 * result))
      {
        result = *(*(a1 + 48) + 4 * result);
        if (result == -1)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

void sub_1AFD80580(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 4);
  if (v2 >= v1)
  {
    return;
  }

  if (*(a1 + 8) < v1)
  {
    if (v1)
    {
      v4 = sub_1AFDA7294(4 * v1, 16);
      LODWORD(v5) = *(a1 + 4);
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = *(a1 + 4);
    }

    v6 = *(a1 + 16);
    if (v5 < 1)
    {
      if (!v6)
      {
LABEL_14:
        *(a1 + 24) = 1;
        *(a1 + 16) = v4;
        *(a1 + 8) = v1;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v5;
      v7 = v4;
      v8 = *(a1 + 16);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 24) == 1)
    {
      sub_1AFDA72A0(v6);
    }

    *(a1 + 16) = 0;
    goto LABEL_14;
  }

LABEL_15:
  bzero((*(a1 + 16) + 4 * v2), 4 * (v1 + ~v2) + 4);
  *(a1 + 4) = v1;
  v10 = *(a1 + 36);
  if (v10 < v1)
  {
    if (*(a1 + 40) >= v1)
    {
LABEL_28:
      bzero((*(a1 + 48) + 4 * v10), 4 * (v1 + ~v10) + 4);
      goto LABEL_29;
    }

    if (v1)
    {
      v11 = sub_1AFDA7294(4 * v1, 16);
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v12) = *(a1 + 36);
    v13 = *(a1 + 48);
    if (v12 < 1)
    {
      if (!v13)
      {
LABEL_27:
        *(a1 + 56) = 1;
        *(a1 + 48) = v11;
        *(a1 + 40) = v1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v12;
      v14 = v11;
      v15 = *(a1 + 48);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    if (*(a1 + 56) == 1)
    {
      sub_1AFDA72A0(v13);
    }

    goto LABEL_27;
  }

LABEL_29:
  *(a1 + 36) = v1;
  if (v1 >= 1)
  {
    memset(*(a1 + 16), 255, 4 * v1);
    memset(*(a1 + 48), 255, 4 * v1);
  }

  if (v2 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 112);
    v19 = *(a1 + 16);
    v20 = *(a1 + 48);
    do
    {
      v21 = *(v18 + 4 * v17) + ~(*(v18 + 4 * v17) << 15);
      v22 = (9 * (v21 ^ (v21 >> 10))) ^ ((9 * (v21 ^ (v21 >> 10))) >> 6);
      v23 = ((v22 + ~(v22 << 11)) ^ ((v22 + ~(v22 << 11)) >> 16)) & (*(a1 + 72) - 1);
      *(v20 + 4 * v17) = *(v19 + 4 * v23);
      *(v19 + 4 * v23) = v17++;
    }

    while (v2 != v17);
  }
}

int8x16_t sub_1AFD807B4(int8x16_t *a1, int32x2_t *a2)
{
  v2 = *a2->i8;
  v3 = vextq_s8(*a1, *a1, 8uLL).u64[0];
  v4 = vzip1_s32(v3, *a1->i8);
  v5 = vextq_s8(v2, v2, 8uLL).u64[0];
  *v6.f32 = vzip1_s32(v5, *a2);
  v7 = vext_s8(v5, *a2, 4uLL);
  *v8.f32 = vext_s8(*a1->i8, v3, 4uLL);
  *v9.f32 = vext_s8(*a2, v5, 4uLL);
  *v10.f32 = v4;
  v10.i64[1] = v8.i64[0];
  *&v9.u32[2] = vrev64_s32(*v6.f32);
  v11 = vtrn2q_s32(v2, v2);
  *&v6.u32[2] = v7;
  *&v8.u32[2] = v4;
  result = vaddq_f32(vsubq_f32(vmulq_laneq_f32(*a2->i8, *a1, 3), vmulq_f32(v10, v9)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(a1->i64[0], 0), vextq_s8(v11, v11, 8uLL)), vmulq_f32(v8, v6)), xmmword_1AFE47BE0));
  *a1 = result;
  return result;
}

float sub_1AFD8082C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 252) * *(a2 + 252);
  if (result < -10.0)
  {
    result = -10.0;
  }

  if (result > 10.0)
  {
    return 10.0;
  }

  return result;
}

void *sub_1AFD80864(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F2571260;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  return result;
}

void sub_1AFD80888(void *a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  if (sub_1AFD938FC(a1[1]) >= a4)
  {
    v7 = a1[1];
    v8 = v7[49].i64[0];
    v9 = *(a1[2] + 16);
    v10 = *a2;
    v11 = vmulq_n_f32(*a2, a4);
    v11.i32[3] = 0;
    v12 = *a3;
    v13 = vaddq_f32(*a3, v11);
    if (v8 == v9)
    {
      v28 = *(v9 + 48);
      v29 = vsubq_f32(v13, *(v9 + 64));
      v30 = *(v9 + 16);
      v31 = *(v9 + 32);
      v32 = vtrn1q_s32(v30, v31);
      *v30.f32 = vzip2_s32(*v30.f32, *v31.f32);
      v31.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
      v33 = v29;
      v33.i32[3] = 0;
      v32.i64[1] = v28.u32[0];
      *&v30.u32[2] = vzip2_s32(*v28.i8, 0);
      v31.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
      v34 = vmulq_f32(v31, v29);
      v22 = vmulq_f32(v32, v33);
      v35 = vmulq_f32(v30, v33);
      v24 = vextq_s8(v35, v35, 8uLL).u64[0];
      v34.i32[3] = 0;
      v25 = vpadd_f32(*v22.i8, *v35.i8);
      v26 = vpadd_f32(vpadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)), 0);
      v27 = *(a1[3] + 16);
    }

    else
    {
      v14 = *(a1[3] + 16);
      v15 = *(v14 + 48);
      v16 = vsubq_f32(v13, *(v14 + 64));
      v17 = *(v14 + 16);
      v18 = *(v14 + 32);
      v19 = vtrn1q_s32(v17, v18);
      *v17.f32 = vzip2_s32(*v17.f32, *v18.f32);
      v18.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
      v18.i64[1] = vextq_s8(v15, v15, 8uLL).u32[0];
      v20 = vmulq_f32(v18, v16);
      v21 = v16;
      v21.i32[3] = 0;
      v19.i64[1] = v15.u32[0];
      *&v17.u32[2] = vzip2_s32(*v15.i8, 0);
      v22 = vmulq_f32(v19, v21);
      v23 = vmulq_f32(v17, v21);
      v20.i32[3] = 0;
      v24 = vextq_s8(v23, v23, 8uLL).u64[0];
      v25 = vpadd_f32(*v22.i8, *v23.i8);
      v26 = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
      v27 = *(a1[2] + 16);
    }

    v36 = *(v27 + 48);
    v37 = vsubq_f32(v12, *(v27 + 64));
    v38 = *(v27 + 16);
    v39 = *(v27 + 32);
    v40 = vtrn1q_s32(v38, v39);
    *v41.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), v24), v25);
    v42 = vzip2_s32(*v36.f32, 0);
    *&v41.u32[2] = v26;
    v43 = vmulq_f32(vzip2q_s64(v40, v36), v37);
    v37.i32[3] = 0;
    v40.i64[1] = v36.u32[0];
    *v36.f32 = vzip2_s32(*v38.i8, *v39.i8);
    *&v36.u32[2] = v42;
    v44 = vmulq_f32(v40, v37);
    v45 = vmulq_f32(v36, v37);
    v43.i32[3] = 0;
    *v44.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vpadd_f32(*v44.i8, *v45.i8));
    v44.u64[1] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
    v81[0] = v41;
    v81[1] = v44;
    v81[3] = v13;
    v82 = v10;
    v83 = a4;
    v84 = 0;
    v85 = 0.0;
    v90 = 0;
    v91 = 0;
    v92 = 0u;
    v93 = 0u;
    v81[2] = v12;
    v46 = sub_1AFD93898(v7, v81);
    v47 = *(a1[2] + 16);
    v48 = *(a1[3] + 16);
    v49.i32[0] = *(v47 + 252);
    v50.i32[0] = *(v48 + 252);
    v85 = *(v47 + 256) * *(v48 + 256);
    v49.i32[1] = *(v47 + 260);
    v50.i32[1] = *(v48 + 260);
    v51 = vmul_f32(v49, v50);
    __asm { FMOV            V1.2S, #-10.0 }

    v57 = vbsl_s8(vcgt_f32(_D1, v51), _D1, v51);
    __asm { FMOV            V1.2S, #10.0 }

    v84 = vbsl_s8(vcgt_f32(v57, _D1), _D1, v57);
    if (fabsf(v82.f32[2]) <= 0.70711)
    {
      v67 = (v82.f32[1] * v82.f32[1]) + (v82.f32[0] * v82.f32[0]);
      v68 = 1.0 / sqrtf(v67);
      v66 = -(v82.f32[1] * v68);
      v61 = v82.f32[0] * v68;
      v63 = -(v82.f32[2] * (v82.f32[0] * v68));
      v64 = v82.f32[2] * v66;
      v65 = v67 * v68;
      v62 = 0.0;
    }

    else
    {
      v59 = (v82.f32[2] * v82.f32[2]) + (v82.f32[1] * v82.f32[1]);
      v60 = 1.0 / sqrtf(v59);
      v61 = -(v82.f32[2] * v60);
      v62 = v82.f32[1] * v60;
      v63 = v59 * v60;
      v64 = -(v82.f32[0] * (v82.f32[1] * v60));
      v65 = v61 * v82.f32[0];
      v66 = 0.0;
    }

    v94 = v66;
    v95 = v61;
    v96 = v62;
    v97 = v63;
    v98 = v64;
    v69 = 36;
    v70 = 44;
    if (v8 == v9)
    {
      v71 = 40;
    }

    else
    {
      v71 = 44;
    }

    if (v8 == v9)
    {
      v72 = 32;
    }

    else
    {
      v70 = 40;
      v72 = 36;
    }

    v73 = *(a1 + v70);
    v74 = *(a1 + v71);
    if (v8 != v9)
    {
      v69 = 32;
    }

    v75 = *(a1 + v69);
    v76 = *(a1 + v72);
    v99 = v65;
    v86 = v76;
    v87 = v75;
    v88 = v74;
    v89 = v73;
    v77 = a1[1];
    if (v46 < 0)
    {
      v46 = sub_1AFD93904(v77, v81);
    }

    else
    {
      sub_1AFD80C30(v77, v81, v46);
    }

    if (off_1ED73B5D0 && ((*(*(a1[2] + 16) + 232) & 8) != 0 || (*(*(a1[3] + 16) + 232) & 8) != 0))
    {
      v78 = 3;
      if (v8 == v9)
      {
        v79 = 2;
      }

      else
      {
        v79 = 3;
      }

      if (v8 != v9)
      {
        v78 = 2;
      }

      off_1ED73B5D0(a1[1] + 192 * v46 + 16, a1[v79], v86, v88, a1[v78], v87, v89);
    }
  }
}

_BYTE *sub_1AFD80C30(uint64_t a1, _OWORD *a2, int a3)
{
  v4 = a1 + 192 * a3;
  v5 = *(v4 + 168);
  v6 = *(v4 + 148);
  v7 = *(v4 + 128);
  *(v4 + 16) = *a2;
  *(v4 + 32) = a2[1];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = a2[3];
  *(v4 + 80) = a2[4];
  v8 = *(v4 + 140);
  *(v4 + 96) = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(v4 + 156) = *(a2 + 140);
  *(v4 + 128) = v10;
  *(v4 + 144) = v11;
  *(v4 + 112) = v9;
  *(v4 + 176) = a2[10];
  *(v4 + 192) = a2[11];
  *(v4 + 128) = v7;
  *(v4 + 140) = v8;
  *(v4 + 148) = v6;
  *(v4 + 168) = v5;
  result = *(a1 + 824);
  if (result)
  {
    if ((result[8] & 2) != 0)
    {
      return (*(*result + 8))(result, a1);
    }
  }

  return result;
}

uint64_t sub_1AFD80D08(uint64_t a1)
{
  *a1 = &unk_1F2571298;
  sub_1AFD8213C(a1 + 8);
  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 104) = 1;
  return a1;
}

uint64_t sub_1AFD80D70(uint64_t a1)
{
  *a1 = &unk_1F2571298;
  v2 = *(a1 + 88);
  if (v2 && *(a1 + 96) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  v3 = *(a1 + 56);
  if (v3 && *(a1 + 64) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  sub_1AF35E898(a1 + 8);
  return a1;
}

void sub_1AFD80E08(uint64_t a1)
{
  sub_1AFD80D70(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AFD80E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(**(a3 + 96) + 72))(*(a3 + 96), a2);
  result = (*(*v4 + 72))(v4);
  if (result)
  {
    v6 = result;
    result = (*(*v4 + 40))(v4);
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = (result + 8);
      do
      {
        v9 = **(v8 - 1);
        if (v9)
        {
          v10 = **v8;
          v11 = (*(v9 + 232) & 7) != 0 || v10 == 0;
          if (!v11 && (*(v10 + 232) & 7) == 0)
          {
            result = sub_1AFD80F48(a1 + 8, *(v9 + 236), *(v10 + 236));
          }
        }

        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_1AFD80F48(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = (v3 + 8 * a2);
  for (i = *v4; a2 != *v4; i = *v4)
  {
    a2 = *(v3 + 8 * i);
    *v4 = a2;
    v4 = (v3 + 8 * a2);
  }

  v6 = (v3 + 8 * a3);
  for (j = *v6; a3 != *v6; j = *v6)
  {
    a3 = *(v3 + 8 * j);
    *v6 = a3;
    v6 = (v3 + 8 * a3);
  }

  if (a2 != a3)
  {
    v8 = (v3 + 8 * a2);
    *v8 = a3;
    *(v3 + 8 * a3 + 4) += v8[1];
  }

  return result;
}

uint64_t sub_1AFD80FCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *(a2 + 24);
    do
    {
      v7 = *v6;
      if ((*(*v6 + 232) & 3) == 0)
      {
        v7[59] = v5++;
      }

      v7[60] = -1;
      v7[70] = 1065353216;
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  sub_1AFD82228(a1 + 8, v5);

  return sub_1AFD80E40(a1, v8, a2);
}

uint64_t sub_1AFD81060(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 24);
    do
    {
      v6 = *(v5 + 8 * v3);
      if ((*(v6 + 232) & 3) != 0)
      {
        *(v6 + 236) = 0xFFFFFFFEFFFFFFFFLL;
      }

      else
      {
        v7 = *(result + 24);
        v8 = (v7 + 8 * v4);
        v9 = *v8;
        LODWORD(v10) = v4;
        if (*v8 != v4)
        {
          v11 = (v7 + 8 * v4);
          do
          {
            v10 = *(v7 + 8 * v9);
            *v11 = v10;
            v11 = (v7 + 8 * v10);
            v9 = *v11;
          }

          while (v10 != *v11);
        }

        v8[1] = v3;
        ++v4;
        *(v6 + 236) = v10;
        *(v6 + 240) = -1;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void sub_1AFD810F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 44);
  if ((v6 & 0x80000000) != 0)
  {
    if ((*(a1 + 48) & 0x80000000) != 0)
    {
      v7 = *(a1 + 56);
      if (v7 && *(a1 + 64) == 1)
      {
        sub_1AFDA72A0(v7);
      }

      *(a1 + 64) = 1;
      *(a1 + 56) = 0;
      *(a1 + 48) = 0;
    }

    do
    {
      *(*(a1 + 56) + 8 * v6++) = 0;
    }

    while (v6);
  }

  *(a1 + 44) = 0;
  sub_1AFD82280(a1 + 8);
  v8 = *(a1 + 12);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = *(a1 + 24);
      v12 = 8 * v9;
      v13 = (v11 + v12 + 8);
      v14 = *(v11 + v12);
      if (v8 <= v9 + 1)
      {
        v15 = v9 + 1;
      }

      else
      {
        v15 = v8;
      }

      v16 = v15 - 1;
      v17 = v9 + 1;
      while (v17 < v8)
      {
        v18 = *v13;
        v13 += 2;
        ++v9;
        ++v17;
        if (v18 != v14)
        {
          v16 = v9 - 1;
          goto LABEL_18;
        }
      }

      v9 = v15;
LABEL_18:
      if (v10 <= v16)
      {
        v19 = (v11 + v12 + 4);
        v20 = v16 - v10 + 1;
        v21 = 1;
        v22 = v20;
        do
        {
          v23 = *v19;
          v19 += 2;
          v24 = *(*(a3 + 24) + 8 * v23);
          if (*(v24 + 236) == v14)
          {
            v25 = *(v24 + 244);
            v27 = v25 != 4 && v25 != 1;
            v21 &= v27;
          }

          --v22;
        }

        while (v22);
        if (v21)
        {
          v28 = v12 + 4;
          do
          {
            v29 = *(*(a3 + 24) + 8 * *(*(a1 + 24) + v28));
            if (*(v29 + 236) == v14)
            {
              sub_1AFD73C3C(v29, 2);
            }

            v28 += 8;
            --v20;
          }

          while (v20);
        }

        else
        {
          v30 = v12 + 4;
          do
          {
            v31 = *(*(a3 + 24) + 8 * *(*(a1 + 24) + v30));
            if (v31[59] == v14 && v31[61] == 2)
            {
              sub_1AFD73C3C(*(*(a3 + 24) + 8 * *(*(a1 + 24) + v30)), 3);
              v31[62] = 0;
            }

            v30 += 8;
            --v20;
          }

          while (v20);
        }
      }
    }

    while (v9 < v8);
  }

  v32 = (*(*a2 + 72))(a2);
  if (v32 >= 1)
  {
    v33 = v32;
    v34 = 0;
    do
    {
      v35 = (*(*a2 + 80))(a2, v34);
      v36 = v35;
      v37 = *(v35 + 784);
      v38 = *(v35 + 792);
      if (v37 && *(v37 + 244) != 2 || v38 && *(v38 + 244) != 2)
      {
        v39 = *(v37 + 232);
        if ((v39 & 2) != 0 && (v39 & 4) == 0 && *(v37 + 244) != 2)
        {
          sub_1AFD73C5C(*(v35 + 792), 0);
        }

        v40 = *(v38 + 232);
        if ((v40 & 2) != 0 && (v40 & 4) == 0 && *(v38 + 244) != 2)
        {
          sub_1AFD73C5C(v37, 0);
        }

        if (*(a1 + 104) == 1 && (*(*a2 + 56))(a2, v37, v38))
        {
          v41 = *(a1 + 44);
          if (v41 == *(a1 + 48))
          {
            v42 = v41 ? 2 * v41 : 1;
            if (v41 < v42)
            {
              if (v42)
              {
                v43 = sub_1AFDA7294(8 * v42, 16);
                v41 = *(a1 + 44);
              }

              else
              {
                v43 = 0;
              }

              if (v41 >= 1)
              {
                v44 = 0;
                do
                {
                  *(v43 + v44) = *(*(a1 + 56) + v44);
                  v44 += 8;
                }

                while (8 * v41 != v44);
              }

              v45 = *(a1 + 56);
              if (v45)
              {
                if (*(a1 + 64) == 1)
                {
                  sub_1AFDA72A0(v45);
                  v41 = *(a1 + 44);
                }
              }

              *(a1 + 64) = 1;
              *(a1 + 56) = v43;
              *(a1 + 48) = v42;
            }
          }

          *(*(a1 + 56) + 8 * v41) = v36;
          *(a1 + 44) = v41 + 1;
        }
      }

      v34 = (v34 + 1);
    }

    while (v34 != v33);
  }
}

void sub_1AFD81498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFD810F0(a1, a2, a3);
  if (*(a1 + 104))
  {
    v41 = a4;
    v8 = *(a1 + 12);
    v9 = *(a1 + 44);
    if (v9 > 1)
    {
      sub_1AFD81848(a1 + 40, &v45, 0, v9 - 1);
    }

    if (v8 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 1;
      v42 = v9;
      do
      {
        v44 = v11;
        v13 = v10;
        v14 = *(*(a1 + 24) + 8 * v10);
        if (v8 <= v10 + 1)
        {
          v15 = v10 + 1;
        }

        else
        {
          v15 = v8;
        }

        v43 = v15;
        v16 = 1;
        while (1)
        {
          v17 = (*(a1 + 24) + 8 * v13);
          if (*v17 != v14)
          {
            break;
          }

          v18 = *(*(a3 + 24) + 8 * v17[1]);
          v19 = *(a1 + 76);
          if (v19 == *(a1 + 80))
          {
            v20 = v19 ? 2 * v19 : 1;
            if (v19 < v20)
            {
              if (v20)
              {
                v21 = sub_1AFDA7294(8 * v20, 16);
                v19 = *(a1 + 76);
              }

              else
              {
                v21 = 0;
              }

              if (v19 >= 1)
              {
                v22 = 0;
                do
                {
                  *(v21 + v22) = *(*(a1 + 88) + v22);
                  v22 += 8;
                }

                while (8 * v19 != v22);
              }

              v23 = *(a1 + 88);
              if (v23 && *(a1 + 96) == 1)
              {
                sub_1AFDA72A0(v23);
                v19 = *(a1 + 76);
              }

              *(a1 + 96) = 1;
              *(a1 + 88) = v21;
              *(a1 + 80) = v20;
            }
          }

          *(*(a1 + 88) + 8 * v19) = v18;
          *(a1 + 76) = v19 + 1;
          v24 = *(v18 + 244);
          if (v24 != 2)
          {
            v16 &= v24 == 5;
          }

          if (++v13 >= v8)
          {
            goto LABEL_31;
          }
        }

        v43 = v13;
        if (v44 >= v42)
        {
          goto LABEL_44;
        }

LABEL_31:
        v25 = *(a1 + 56);
        v26 = v25 + 8 * v44;
        v27 = *(*(*v26 + 784) + 236);
        if (v27 < 0)
        {
          v27 = *(*(*v26 + 792) + 236);
        }

        if (v27 == v14)
        {
          if (v42 <= v44 + 1)
          {
            v28 = v44 + 1;
          }

          else
          {
            v28 = v42;
          }

          v29 = v44 + 1;
          v12 = v44;
          while (v29 < v42)
          {
            v30 = *(v25 + 8 * v29);
            v31 = *(*(v30 + 784) + 236);
            if (v31 < 0)
            {
              v31 = *(*(v30 + 792) + 236);
            }

            ++v12;
            ++v29;
            if (v14 != v31)
            {
              goto LABEL_46;
            }
          }

          v12 = v28;
LABEL_46:
          v32 = (v12 - v44);
        }

        else
        {
LABEL_44:
          v32 = 0;
          v26 = 0;
        }

        v33 = *(a1 + 76);
        if ((v16 & 1) == 0)
        {
          (*(*v41 + 16))(v41, *(a1 + 88), *(a1 + 76), v26, v32, v14);
          v33 = *(a1 + 76);
        }

        v10 = v43;
        if (v32)
        {
          v11 = v12;
        }

        else
        {
          v11 = v44;
        }

        if (v33 < 0)
        {
          if ((*(a1 + 80) & 0x80000000) != 0)
          {
            v34 = *(a1 + 88);
            if (v34 && *(a1 + 96) == 1)
            {
              sub_1AFDA72A0(v34);
            }

            *(a1 + 96) = 1;
            *(a1 + 88) = 0;
            *(a1 + 80) = 0;
          }

          v35 = v33;
          do
          {
            *(*(a1 + 88) + 8 * v35++) = 0;
          }

          while (v35);
        }

        *(a1 + 76) = 0;
      }

      while (v43 < v8);
    }
  }

  else
  {
    v36 = (*(*a2 + 88))(a2);
    v37 = (*(*a2 + 72))(a2);
    v38 = *(a3 + 24);
    v39 = *(a3 + 12);
    v40 = *(*a4 + 16);

    v40(a4, v38, v39, v36, v37, 0xFFFFFFFFLL);
  }
}

uint64_t sub_1AFD81848(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  do
  {
    v8 = a3;
    v9 = *(*(a1 + 16) + 8 * ((a3 + a4) / 2));
    v10 = a4;
    do
    {
      v11 = *(a1 + 16);
      v12 = *(*(v9 + 784) + 236);
      v13 = a3;
      do
      {
        v14 = *(v11 + 8 * v13);
        v15 = *(*(v14 + 784) + 236);
        if (v15 < 0)
        {
          v15 = *(*(v14 + 792) + 236);
        }

        v16 = *(*(v9 + 784) + 236);
        if (v12 < 0)
        {
          v16 = *(*(v9 + 792) + 236);
        }

        ++v13;
      }

      while (v15 < v16);
      v17 = v11 + 8 * v13;
      a3 = (v13 - 1);
      v18 = v10 + 1;
      v19 = (v11 + 8 * v10);
      do
      {
        v20 = *(*(v9 + 784) + 236);
        if (v12 < 0)
        {
          v20 = *(*(v9 + 792) + 236);
        }

        v21 = *v19;
        result = *(*(*v19 + 784) + 236);
        if ((result & 0x80000000) != 0)
        {
          result = *(*(v21 + 792) + 236);
        }

        --v18;
        --v10;
        --v19;
      }

      while (v20 < result);
      if (v13 - 1 <= v18)
      {
        *(v17 - 8) = v21;
        *(*(a1 + 16) + 8 * v18) = v14;
        a3 = v13;
      }

      else
      {
        ++v10;
      }
    }

    while (a3 <= v10);
    if (v10 > v8)
    {
      result = sub_1AFD81848(a1, a2, v8, v10);
    }
  }

  while (a3 < a4);
  return result;
}

uint64_t sub_1AFD81974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AFD715C8(a1, a3);
  *v9 = &unk_1F25712C8;
  *(v9 + 16) = 0;
  v9[3] = a2;
  if (!a2)
  {
    *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a4 + 16), *(a5 + 16));
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_1AFD81A24(uint64_t a1)
{
  *a1 = &unk_1F25712C8;
  if (*(a1 + 16) == 1 && *(a1 + 24))
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  nullsub_106();
}

void sub_1AFD81AB4(uint64_t a1)
{
  sub_1AFD81A24(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AFD81AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = *(a1 + 24);
  if (result)
  {
    a5[1] = result;
    v7 = *(*(a3 + 24) + 48);
    v8 = vsubq_f32(*(*(a2 + 24) + 48), v7);
    v8.i32[3] = 0;
    v9 = vmulq_f32(v8, v8);
    v10 = vpadd_f32(*v9.i8, *v9.i8);
    v13 = vextq_s8(v9, v9, 8uLL);
    v13.n128_u64[0] = vadd_f32(v10, v13.n128_u64[0]);
    v11 = sqrtf(v13.n128_f32[0]);
    v12 = *(*(a3 + 8) + 48) * *(*(a3 + 8) + 32);
    v13.n128_f32[0] = (*(*(a2 + 8) + 48) * *(*(a2 + 8) + 32)) + v12;
    if (v11 <= v13.n128_f32[0])
    {
      v13.n128_f32[0] = v11 - v13.n128_f32[0];
      v24 = xmmword_1AFE20150;
      if (v11 <= 0.00000011921)
      {
        v17 = v24;
      }

      else
      {
        v17 = vmulq_n_f32(v8, 1.0 / v11);
        v17.i32[3] = 0;
        v24 = v17;
      }

      v18 = vmulq_n_f32(v17, v12);
      v18.i32[3] = 0;
      v23 = vaddq_f32(v7, v18);
      (*(*a5 + 32))(a5, &v24, &v23, a4, v13);
      result = a5[1];
      if (*(result + 200))
      {
        v19 = result[98];
        v20 = *(a5[2] + 16);
        v21 = v19 == v20;
        if (v19 == v20)
        {
          v22 = *(a5[3] + 16);
        }

        else
        {
          v22 = *(a5[2] + 16);
        }

        if (!v21)
        {
          v20 = *(a5[3] + 16);
        }

        return sub_1AFD93A10(result, v20 + 1, v22 + 1);
      }
    }

    else if (*(result + 200))
    {
      v14 = *(a5[2] + 16);
      if (result[98] == v14)
      {
        v15 = v14 + 1;
        v16 = (*(a5[3] + 16) + 16);
      }

      else
      {
        v15 = (*(a5[3] + 16) + 16);
        v16 = v14 + 1;
      }

      return sub_1AFD93A10(result, v15, v16);
    }
  }

  return result;
}

void sub_1AFD81C8C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 && *(result + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = sub_1AFDA7294(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            sub_1AFDA72A0(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(result + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

uint64_t sub_1AFD81D78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_1AFD715C8(a1, a3);
  *v11 = &unk_1F2571300;
  *(v11 + 16) = 0;
  v11[3] = a2;
  *(v11 + 32) = a6;
  if (!a2)
  {
    *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a4 + 16), *(a5 + 16));
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_1AFD81E38(uint64_t a1)
{
  *a1 = &unk_1F2571300;
  if (*(a1 + 16) == 1 && *(a1 + 24))
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  nullsub_106();
}

void sub_1AFD81EC8(uint64_t a1)
{
  sub_1AFD81E38(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AFD81F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  result = *(a1 + 24);
  if (result)
  {
    v9 = *(a1 + 32) ? a3 : a2;
    v10 = *(a1 + 32) ? a2 : a3;
    v11 = *(v9 + 8);
    v12 = *(v10 + 8);
    a5[1] = result;
    v13 = sub_1AFD938FC(result);
    sub_1AFD70E7C(v22, v11, v12, v13);
    v24 = 1566444395;
    v14 = *(v9 + 24);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    v16 = v14[3];
    v23[2] = v14[2];
    v23[3] = v16;
    v17 = *(v10 + 24);
    v23[4] = *v17;
    v23[5] = v17[1];
    v23[6] = v17[2];
    v23[7] = v17[3];
    result = sub_1AFD70EA4(v22, v23, a5, *(a4 + 24), *(a1 + 32));
    if (*(a1 + 16) == 1)
    {
      result = a5[1];
      if (*(result + 200))
      {
        v18 = result[98];
        v19 = *(a5[2] + 16);
        v20 = v18 == v19;
        if (v18 == v19)
        {
          v21 = *(a5[3] + 16);
        }

        else
        {
          v21 = *(a5[2] + 16);
        }

        if (!v20)
        {
          v19 = *(a5[3] + 16);
        }

        return sub_1AFD93A10(result, v19 + 1, v21 + 1);
      }
    }
  }

  return result;
}

void sub_1AFD82050(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 && *(result + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = sub_1AFDA7294(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            sub_1AFDA72A0(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(result + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

uint64_t sub_1AFD8213C(uint64_t result)
{
  *(result + 24) = 1;
  *(result + 16) = 0;
  *(result + 4) = 0;
  *(result + 8) = 0;
  return result;
}

void sub_1AFD82150(uint64_t result, int a2)
{
  v4 = *(result + 4);
  if (v4 < a2)
  {
    v5 = v4;
    if (*(result + 8) < a2)
    {
      if (a2)
      {
        v6 = sub_1AFDA7294(8 * a2, 16);
        v4 = *(result + 4);
      }

      else
      {
        v6 = 0;
      }

      if (v4 >= 1)
      {
        v7 = 0;
        v8 = 8 * v4;
        do
        {
          *(v6 + v7) = *(*(result + 16) + v7);
          v7 += 8;
        }

        while (v8 != v7);
      }

      v9 = *(result + 16);
      if (v9 && *(result + 24) == 1)
      {
        sub_1AFDA72A0(v9);
      }

      *(result + 24) = 1;
      *(result + 16) = v6;
      *(result + 8) = a2;
    }

    do
    {
      *(*(result + 16) + 8 * v5++) = 0;
    }

    while (a2 != v5);
  }

  *(result + 4) = a2;
}

void sub_1AFD82228(uint64_t a1, int a2)
{
  sub_1AFD82150(a1, a2);
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = (*(a1 + 16) + 4);
    do
    {
      *(v5 - 1) = v4;
      *v5 = 1;
      ++v4;
      v5 += 2;
    }

    while (a2 != v4);
  }
}

uint64_t sub_1AFD82280(uint64_t result)
{
  v3 = *(result + 4);
  if (v3 > 0)
  {
    *&v10[1] = v1;
    v11 = v2;
    v4 = 0;
    v5 = *(result + 16);
    do
    {
      v6 = (v5 + 8 * v4);
      v7 = *v6;
      LODWORD(v8) = v4;
      if (v4 != v7)
      {
        v9 = (v5 + 8 * v4);
        do
        {
          v8 = *(v5 + 8 * v7);
          *v9 = v8;
          v9 = (v5 + 8 * v8);
          LODWORD(v7) = *v9;
        }

        while (v8 != *v9);
      }

      *v6 = v8;
      ++v4;
    }

    while (v4 != v3);
    if (v3 != 1)
    {
      return sub_1AFD82310(result, v10, 0, v3 - 1);
    }
  }

  return result;
}

uint64_t sub_1AFD82310(uint64_t result, uint64_t a2, int a3, int a4)
{
  v7 = result;
  do
  {
    v8 = a3;
    v9 = *(*(v7 + 16) + 8 * ((a3 + a4) / 2));
    v10 = a4;
    do
    {
      v11 = *(v7 + 16);
      v12 = a3 - 1;
      v13 = 8 * a3;
      v14 = a3;
      do
      {
        v15 = *(v11 + v13);
        ++v14;
        ++v12;
        v13 += 8;
      }

      while (v15 < v9);
      a3 = v14 - 1;
      v16 = v10 + 1;
      v17 = 8 * v10;
      do
      {
        v18 = *(v11 + v17);
        --v16;
        --v10;
        v17 -= 8;
      }

      while (v18 > v9);
      if (v12 <= v16)
      {
        v19 = *(v11 + 8 * v12);
        *(v11 + 8 * v12) = *(v11 + 8 * v16);
        *(*(v7 + 16) + 8 * v16) = v19;
        a3 = v14;
      }

      else
      {
        ++v10;
      }
    }

    while (a3 <= v10);
    if (v10 > v8)
    {
      result = sub_1AFD82310(v7, a2, v8, v10);
    }
  }

  while (a3 < a4);
  return result;
}

float32x4_t sub_1AFD82400(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  *&v8 = (*(a1->i64[0] + 96))(a1);
  v9 = *(a2 + 48);
  v10 = vdupq_lane_s32(v8, 0);
  v10.i32[3] = 0;
  v11 = vaddq_f32(a1[3], v10);
  v12 = vmulq_f32(v11, vandq_s8(*a2, xmmword_1AFEABEA0));
  v13 = vmulq_f32(v11, vandq_s8(*(a2 + 16), xmmword_1AFEABEA0));
  v14 = vmulq_f32(v11, vandq_s8(*(a2 + 32), xmmword_1AFEABEA0));
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vsubq_f32(v9, v12);
  v15.i32[3] = 0;
  *a3 = v15;
  result = vaddq_f32(v9, v12);
  *a4 = result;
  return result;
}

float sub_1AFD824D0(float32x4_t *a1, uint64_t a2, float a3)
{
  v14 = a1[3];
  *v6.i64 = (*(a1->i64[0] + 96))(a1);
  v13 = v6;
  v7 = (*(a1->i64[0] + 96))(a1);
  v12 = LODWORD(v7);
  v8 = (*(a1->i64[0] + 96))(a1);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v10 = vaddq_f32(v14, v9);
  v9.f32[0] = (v10.f32[2] + v10.f32[2]) * (v10.f32[2] + v10.f32[2]);
  *v10.f32 = vadd_f32(*v10.f32, *v10.f32);
  *a2 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v9.f32, 0), *v10.f32, *v10.f32), a3 / 12.0));
  result = (a3 / 12.0) * (COERCE_FLOAT(vmul_f32(*&v10, *&v10).i32[1]) + (v10.f32[0] * v10.f32[0]));
  *(a2 + 8) = result;
  *(a2 + 12) = 0;
  return result;
}

void sub_1AFD825E8(void *a1, double a2)
{
  sub_1AFD8A7AC(a1);

  sub_1AFDA72A0(v2);
}

float32x4_t sub_1AFD82610(float32x4_t *a1, float32x4_t *a2)
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

float32x4_t sub_1AFD82724(float32x4_t *a1, float32_t a2)
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

void sub_1AFD8289C(float32x4_t *a1@<X0>, float32x2_t *a2@<X1>, int8x8_t *a3@<X8>)
{
  v14 = a1[3];
  *v6.i64 = (*(a1->i64[0] + 96))(a1);
  v13 = v6;
  v7 = (*(a1->i64[0] + 96))(a1);
  v12 = LODWORD(v7);
  v8 = (*(a1->i64[0] + 96))(a1);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v11 = vaddq_f32(v14, v9);
  v9.i32[0] = a2[1].i32[0];
  v10 = vbsl_s8(vcgez_f32(*a2), *v11.f32, vneg_f32(*v11.f32));
  v11.i32[0] = v11.i32[2];
  *a3 = v10;
  if (v9.f32[0] < 0.0)
  {
    v11.f32[0] = -v11.f32[2];
  }

  a3[1].i32[0] = v11.i32[0];
  a3[1].i32[1] = 0;
}

uint64_t sub_1AFD8299C@<X0>(uint64_t result@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1].f32[0] < 0.0)
  {
    v3 = -*(result + 56);
  }

  else
  {
    v3 = *(result + 56);
  }

  *a3 = vbsl_s8(vcgez_f32(*a2), *(result + 48), vneg_f32(*(result + 48)));
  *(a3 + 8) = v3;
  *(a3 + 12) = 0;
  return result;
}

uint64_t sub_1AFD829D4(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v5 = (a3 + 12);
    v6 = (a2 + 8);
    do
    {
      if (*v6 < 0.0)
      {
        v7 = -*(result + 56);
      }

      else
      {
        v7 = *(result + 56);
      }

      *(v5 - 3) = vbsl_s8(vcgez_f32(*(v6 - 2)), *(result + 48), vneg_f32(*(result + 48)));
      *(v5 - 1) = v7;
      *v5 = 0.0;
      v5 += 4;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

float sub_1AFD82A34(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    result = flt_1AFEABF40[a2];
    v4 = dword_1AFEABF58[a2];
    v5 = dword_1AFEABF70[a2];
    *a3 = result;
    *(a3 + 4) = v4;
    *(a3 + 8) = v5;
    *(a3 + 12) = 0;
  }

  return result;
}

uint64_t sub_1AFD82A80(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 0xB)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = dword_1AFEABEB0[a2];
    v8 = dword_1AFEABEE0[a2];
  }

  (*(*a1 + 216))(a1, v7, a3);
  v9 = *(*a1 + 216);

  return v9(a1, v8, a4);
}

__n128 sub_1AFD82B40(__n128 *a1, unsigned __int32 a2, _OWORD *a3)
{
  result = a1[3];
  v4.i32[0] = a2;
  v4.i32[1] = a2 >> 1;
  v5 = vand_s8(v4, 0x100000001);
  *&v6 = vmla_f32(vmul_f32(vcvt_f32_u32(v5), vneg_f32(result.n128_u64[0])), vcvt_f32_u32(veor_s8(v5, 0x100000001)), result.n128_u64[0]);
  _S3 = ((a2 & 4) == 0);
  __asm { FMLA            S2, S3, V0.S[2] }

  *(&v6 + 1) = _S2;
  *a3 = v6;
  return result;
}

double sub_1AFD82B9C(uint64_t a1, float32x4_t *a2, _OWORD *a3, uint64_t a4)
{
  (*(*a1 + 256))(a1, &v11, a4);
  v7.i64[0] = v11;
  v7.i64[1] = v12;
  *a2 = v7;
  v9 = vnegq_f32(v7);
  (*(*a1 + 128))(&v10, a1, &v9);
  result = *&v10;
  *a3 = v10;
  return result;
}

BOOL sub_1AFD82C60(uint64_t a1, float *a2, float a3)
{
  v3 = *(a1 + 48);
  if (*a2 <= (*&v3 + a3) && *a2 >= (-*&v3 - a3) && (v4 = a2[1], v4 <= (*(&v3 + 1) + a3)) && v4 >= (-*(&v3 + 1) - a3) && (v5 = a2[2], v5 <= (*(&v3 + 2) + a3)))
  {
    return v5 >= (-*(&v3 + 2) - a3);
  }

  else
  {
    return 0;
  }
}

float sub_1AFD82CE0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 5)
  {
    v3 = dword_1AFEABF58[a3];
    v4 = dword_1AFEABF70[a3];
    v5 = *(a1 + 4 * (qword_1AFEABF10[a3] & 3) + 48);
    *a2 = flt_1AFEABF40[a3];
    *(a2 + 4) = v3;
    result = -v5;
    *(a2 + 8) = v4;
    *(a2 + 12) = -v5;
  }

  return result;
}

float32x4_t *sub_1AFD82D34(float32x4_t *a1, float32x4_t *a2)
{
  sub_1AFD8A774(a1);
  *v4 = &unk_1F2571450;
  *(v4 + 8) = 0;
  sub_1AFD82E40(v4, a2->f32, 0.1);
  *v5.i64 = (*(a1->i64[0] + 96))(a1);
  v12 = v5;
  v6 = (*(a1->i64[0] + 96))(a1);
  v11 = LODWORD(v6);
  v7 = (*(a1->i64[0] + 96))(a1);
  v8 = v12;
  v8.i32[1] = v11;
  v8.f32[2] = v7;
  v9 = vsubq_f32(vmulq_f32(*a2, a1[2]), v8);
  v9.i32[3] = 0;
  a1[3] = v9;
  return a1;
}

void sub_1AFD82E40(uint64_t a1, float *a2, float a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 >= v5;
  if (*a2 >= v5)
  {
    v4 = a2[1];
  }

  if (v4 >= a2[2])
  {
    v6 = 2;
  }

  v7 = a2[v6] * a3;
  if (v7 < (*(*a1 + 96))(a1))
  {
    v9 = *(*a1 + 88);
    v8.n128_f32[0] = v7;

    v9(a1, v8);
  }
}

float32x4_t sub_1AFD82F08(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  *&v8 = (*(a1->i64[0] + 96))(a1);
  v9 = *(a2 + 48);
  v10 = vdupq_lane_s32(v8, 0);
  v10.i32[3] = 0;
  v11 = vaddq_f32(a1[3], v10);
  v12 = vmulq_f32(v11, vandq_s8(*a2, xmmword_1AFEABEA0));
  v13 = vmulq_f32(v11, vandq_s8(*(a2 + 16), xmmword_1AFEABEA0));
  v14 = vmulq_f32(v11, vandq_s8(*(a2 + 32), xmmword_1AFEABEA0));
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vsubq_f32(v9, v12);
  v15.i32[3] = 0;
  *a3 = v15;
  result = vaddq_f32(v9, v12);
  *a4 = result;
  return result;
}

float sub_1AFD82FD8(float32x4_t *a1, uint64_t a2, float a3)
{
  v14 = a1[3];
  *v6.i64 = (*(a1->i64[0] + 96))(a1);
  v13 = v6;
  v7 = (*(a1->i64[0] + 96))(a1);
  v12 = LODWORD(v7);
  v8 = (*(a1->i64[0] + 96))(a1);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v10 = vaddq_f32(v14, v9);
  v9.f32[0] = (v10.f32[2] + v10.f32[2]) * (v10.f32[2] + v10.f32[2]);
  *v10.f32 = vadd_f32(*v10.f32, *v10.f32);
  *a2 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v9.f32, 0), *v10.f32, *v10.f32), a3 / 12.0));
  result = (a3 / 12.0) * (COERCE_FLOAT(vmul_f32(*&v10, *&v10).i32[1]) + (v10.f32[0] * v10.f32[0]));
  *(a2 + 8) = result;
  *(a2 + 12) = 0;
  return result;
}

void sub_1AFD830F0(void *a1, double a2)
{
  sub_1AFD8A7AC(a1);

  sub_1AFDA72A0(v2);
}

float32x4_t sub_1AFD83118(float32x4_t *a1, float32x4_t *a2)
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

float32x4_t sub_1AFD8322C(float32x4_t *a1, float32_t a2)
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

void sub_1AFD833A4(float32x4_t *a1@<X0>, float32x2_t *a2@<X1>, int8x8_t *a3@<X8>)
{
  v14 = a1[3];
  *v6.i64 = (*(a1->i64[0] + 96))(a1);
  v13 = v6;
  v7 = (*(a1->i64[0] + 96))(a1);
  v12 = LODWORD(v7);
  v8 = (*(a1->i64[0] + 96))(a1);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v11 = vaddq_f32(v14, v9);
  v9.i32[0] = a2[1].i32[0];
  v10 = vbsl_s8(vcgez_f32(*a2), *v11.f32, vneg_f32(*v11.f32));
  v11.i32[0] = v11.i32[2];
  *a3 = v10;
  if (v9.f32[0] < 0.0)
  {
    v11.f32[0] = -v11.f32[2];
  }

  a3[1].i32[0] = v11.i32[0];
  a3[1].i32[1] = 0;
}

uint64_t sub_1AFD834A4@<X0>(uint64_t result@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1].f32[0] < 0.0)
  {
    v3 = -*(result + 56);
  }

  else
  {
    v3 = *(result + 56);
  }

  *a3 = vbsl_s8(vcgez_f32(*a2), *(result + 48), vneg_f32(*(result + 48)));
  *(a3 + 8) = v3;
  *(a3 + 12) = 0;
  return result;
}

uint64_t sub_1AFD834DC(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v5 = (a3 + 12);
    v6 = (a2 + 8);
    do
    {
      if (*v6 < 0.0)
      {
        v7 = -*(result + 56);
      }

      else
      {
        v7 = *(result + 56);
      }

      *(v5 - 3) = vbsl_s8(vcgez_f32(*(v6 - 2)), *(result + 48), vneg_f32(*(result + 48)));
      *(v5 - 1) = v7;
      *v5 = 0.0;
      v5 += 4;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

float sub_1AFD8353C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    result = flt_1AFEAC018[a2];
    v4 = dword_1AFEAC030[a2];
    v5 = dword_1AFEAC048[a2];
    *a3 = result;
    *(a3 + 4) = v4;
    *(a3 + 8) = v5;
    *(a3 + 12) = 0;
  }

  return result;
}

uint64_t sub_1AFD83588(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 0xB)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = dword_1AFEABF88[a2];
    v8 = dword_1AFEABFB8[a2];
  }

  (*(*a1 + 216))(a1, v7, a3);
  v9 = *(*a1 + 216);

  return v9(a1, v8, a4);
}

float32x4_t sub_1AFD83648(float32x4_t *a1, unsigned __int32 a2, float32x4_t *a3)
{
  v19 = a1[3];
  *v6.i64 = (*(a1->i64[0] + 96))(a1);
  v18 = v6;
  v7 = (*(a1->i64[0] + 96))(a1);
  v17 = LODWORD(v7);
  v8 = (*(a1->i64[0] + 96))(a1);
  v9 = v18;
  v9.i32[1] = v17;
  v9.f32[2] = v8;
  result = vaddq_f32(v19, v9);
  v9.i32[0] = a2;
  v9.i32[1] = a2 >> 1;
  *v9.f32 = vand_s8(*v9.f32, 0x100000001);
  *v9.f32 = vmla_f32(vmul_f32(vcvt_f32_u32(*v9.f32), vneg_f32(*result.f32)), vcvt_f32_u32(veor_s8(*v9.f32, 0x100000001)), *result.f32);
  _S3 = ((a2 & 4) == 0);
  __asm { FMLA            S2, S3, V0.S[2] }

  v9.i64[1] = _S2;
  *a3 = v9;
  return result;
}

double sub_1AFD8376C(uint64_t a1, float32x4_t *a2, _OWORD *a3, uint64_t a4)
{
  (*(*a1 + 256))(a1, &v11, a4);
  v7.i64[0] = v11;
  v7.i64[1] = v12;
  *a2 = v7;
  v9 = vnegq_f32(v7);
  (*(*a1 + 128))(&v10, a1, &v9);
  result = *&v10;
  *a3 = v10;
  return result;
}

BOOL sub_1AFD83830(uint64_t a1, float *a2, float a3)
{
  v3 = *(a1 + 48);
  if (*a2 <= (*&v3 + a3) && *a2 >= (-*&v3 - a3) && (v4 = a2[1], v4 <= (*(&v3 + 1) + a3)) && v4 >= (-*(&v3 + 1) - a3) && (v5 = a2[2], v5 <= (*(&v3 + 2) + a3)))
  {
    return v5 >= (-*(&v3 + 2) - a3);
  }

  else
  {
    return 0;
  }
}

float sub_1AFD838B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 5)
  {
    v3 = dword_1AFEAC030[a3];
    v4 = dword_1AFEAC048[a3];
    v5 = *(a1 + 4 * (qword_1AFEABFE8[a3] & 3) + 48);
    *a2 = flt_1AFEAC018[a3];
    *(a2 + 4) = v3;
    result = -v5;
    *(a2 + 8) = v4;
    *(a2 + 12) = -v5;
  }

  return result;
}

float32x4_t *sub_1AFD83904(float32x4_t *a1, uint64_t a2, char a3, int a4)
{
  v7 = sub_1AFD8E900(a1->f32, a2);
  *v7 = &unk_1F2571568;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 88) = a3;
  *(v7 + 89) = 0;
  *(v7 + 2) = 21;
  if (a4)
  {
    sub_1AFD83978(a1);
  }

  return a1;
}

void sub_1AFD83978(float32x4_t *a1)
{
  if (a1[5].i8[9] == 1)
  {
    (**a1[4].i64[1])(a1[4].i64[1]);
    sub_1AFDA72A0(a1[4].i64[1]);
  }

  v2 = sub_1AFDA7294(256, 16);
  sub_1AFD8A2F0(v2);
  a1[4].i64[1] = v3;
  sub_1AFD8A350(v3, a1[4].i64[0], a1[5].u8[8], a1 + 2, a1 + 3, v4);
  a1[5].i8[9] = 1;
}

void sub_1AFD83A08(uint64_t a1)
{
  *a1 = &unk_1F2571568;
  if (*(a1 + 89) == 1)
  {
    (***(a1 + 72))(*(a1 + 72));
    sub_1AFDA72A0(*(a1 + 72));
  }

  j_nullsub_106_12();
}

void sub_1AFD83A98(uint64_t a1)
{
  sub_1AFD83A08(a1);

  sub_1AFDA72A0(v1);
}

float32x4_t *sub_1AFD83AC0(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, __n128 a12)
{
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  v15[0] = &unk_1F2571620;
  v15[1] = v13;
  v15[2] = a2;
  return sub_1AFD6FC84(v12, v15, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

float32x4_t *sub_1AFD83B0C(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13, __n128 a14)
{
  v15 = *(a1 + 64);
  v14 = *(a1 + 72);
  v17[0] = &unk_1F2571648;
  v17[1] = v15;
  v17[2] = a2;
  return sub_1AFD6FCB4(v14, v17, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1AFD83B58(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v7[0] = &unk_1F2571670;
  v7[1] = v5;
  v7[2] = a2;
  return sub_1AFD6EEF4(v4, v7, a3, a4);
}

void sub_1AFD83BA4(float32x4_t *a1, float32x4_t *a2)
{
  v4 = vsubq_f32(*(*(a1->i64[0] + 56))(a1), *a2);
  v4.i32[3] = 0;
  v5 = vmulq_f32(v4, v4);
  if (vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0] > 0.00000011921)
  {
    sub_1AFD8EC7C(a1->f32, a2);

    sub_1AFD83978(a1);
  }
}

const char *sub_1AFD83C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFD84E6C(a1, a2, a3);
  (*(**(a1 + 64) + 112))(*(a1 + 64), a2 + 16, a3);
  *(a2 + 72) = *(a1 + 24);
  if (!*(a1 + 72) || ((*(*a3 + 104))(a3) & 1) != 0)
  {
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, *(a1 + 72));
    if (v6)
    {
      *(a2 + 48) = v6;
      *(a2 + 56) = 0;
    }

    else
    {
      *(a2 + 48) = (*(*a3 + 56))(a3, *(a1 + 72));
      *(a2 + 56) = 0;
      v9 = (*(**(a1 + 72) + 24))(*(a1 + 72));
      v10 = (*(*a3 + 32))(a3, v9, 1);
      v11 = (*(**(a1 + 72) + 32))(*(a1 + 72), *(v10 + 8), a3);
      (*(*a3 + 40))(a3, v10, v11, 1213612625, *(a1 + 72));
    }
  }

  if (!*(a1 + 80) || ((*(*a3 + 104))(a3) & 2) != 0)
  {
    *(a2 + 64) = 0;
  }

  else
  {
    v7 = (*(*a3 + 48))(a3, *(a1 + 80));
    if (v7)
    {
      *(a2 + 64) = v7;
    }

    else
    {
      *(a2 + 64) = (*(*a3 + 56))(a3, *(a1 + 80));
      v12 = (*(**(a1 + 80) + 16))(*(a1 + 80));
      v13 = (*(*a3 + 32))(a3, v12, 1);
      v14 = (*(**(a1 + 80) + 24))(*(a1 + 80), *(v13 + 8), a3);
      (*(*a3 + 40))(a3, v13, v14, 1346456916, *(a1 + 80));
    }
  }

  return "btTriangleMeshShapeData";
}

uint64_t sub_1AFD83F90(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 72);
  if (result)
  {
    v5 = (*(*result + 24))(result);
    v6 = (*(*a2 + 32))(a2, v5, 1);
    v7 = (*(**(a1 + 72) + 32))(*(a1 + 72), *(v6 + 8), a2);
    v8 = *(a1 + 72);
    v9 = *(*a2 + 40);

    return v9(a2, v6, v7, 1213612625, v8);
  }

  return result;
}

uint64_t sub_1AFD840A4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 80);
  if (result)
  {
    v5 = (*(*result + 16))(result);
    v6 = (*(*a2 + 32))(a2, v5, 1);
    v7 = (*(**(a1 + 80) + 24))(*(a1 + 80), *(v6 + 8), a2);
    v8 = *(a1 + 80);
    v9 = *(*a2 + 40);

    return v9(a2, v6, v7, 1346456916, v8);
  }

  return result;
}

float sub_1AFD84200(uint64_t a1, float a2, float a3)
{
  sub_1AFD86E64(a1);
  *v5 = &unk_1F2571698;
  *(v5 + 8) = 10;
  *(v5 + 72) = 1;
  result = a3 * 0.5;
  *(v5 + 48) = a2;
  *(v5 + 52) = a3 * 0.5;
  *(v5 + 56) = a2;
  *(v5 + 60) = 0;
  return result;
}

void sub_1AFD84268(int *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
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

  v19 = v8;
  v9 = a1[18];
  v10 = *&a1[(v9 + 2) % 3 + 12];
  v20 = 0uLL;
  v20.i32[v9] = a1[v9 + 12];
  v11 = vmulq_n_f32(v8, v10);
  v11.i32[3] = 0;
  v18 = v11;
  v12 = vsubq_f32(vaddq_f32(v20, v11), vmulq_n_f32(v8, (*(*a1 + 96))(a1)));
  v12.i32[3] = 0;
  v13 = vmulq_f32(v19, v12);
  v14 = vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL)).f32[0];
  v15 = -1.0e18;
  if (v14 > -1.0e18)
  {
    *a3 = v12;
    v15 = v14;
  }

  v20 = 0uLL;
  v20.f32[a1[18]] = -*&a1[a1[18] + 12];
  v16 = vsubq_f32(vaddq_f32(v20, v18), vmulq_n_f32(v19, (*(*a1 + 96))(a1)));
  v16.i32[3] = 0;
  v17 = vmulq_f32(v19, v16);
  if (vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0] > v15)
  {
    *a3 = v16;
  }
}

void sub_1AFD8441C(_DWORD *a1, float32x4_t *a2, float32x4_t *a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v28 = v7;
    v29 = v6;
    v30 = v4;
    v31 = v5;
    v11 = a1 + 12;
    v12 = &a1[(a1[18] + 2) % 3 + 12];
    v13 = vld1q_dup_f32(v12);
    v26 = v13;
    v14 = a4;
    do
    {
      v27 = 0uLL;
      v27.i32[a1[18]] = v11[a1[18]];
      v15 = vmulq_f32(v26, *a2);
      v15.i32[3] = 0;
      v25 = vaddq_f32(v27, v15);
      v16 = (*(*a1 + 96))(a1);
      v17 = *a2;
      v18 = vsubq_f32(v25, vmulq_n_f32(*a2, v16));
      v18.i32[3] = 0;
      v19 = vmulq_f32(*a2, v18);
      v20 = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0];
      v21 = -1.0e18;
      if (v20 > -1.0e18)
      {
        *a3 = v18;
        v17 = *a2;
        v21 = v20;
      }

      v27 = 0uLL;
      v27.f32[a1[18]] = -*&v11[a1[18]];
      v22 = vmulq_f32(v26, v17);
      v22.i32[3] = 0;
      v23 = vsubq_f32(vaddq_f32(v27, v22), vmulq_n_f32(*a2, (*(*a1 + 96))(a1)));
      v23.i32[3] = 0;
      v24 = vmulq_f32(*a2, v23);
      if (vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0] > v21)
      {
        *a3 = v23;
      }

      ++a3;
      ++a2;
      --v14;
    }

    while (v14);
  }
}

float32_t sub_1AFD845D8(uint64_t a1, float32x2_t *a2, float a3)
{
  *(&v10 + *(a1 + 72)) = *(a1 + 48 + 4 * *(a1 + 72)) + *(&v10 + *(a1 + 72));
  v3 = ((v11 + 0.04) + (v11 + 0.04)) * ((v11 + 0.04) + (v11 + 0.04));
  v4 = a3 * 0.083333;
  v5 = vadd_f32(__PAIR64__(v10, v12), vdup_n_s32(0x3D23D70Au));
  v6 = vadd_f32(v5, v5);
  v7 = vmul_f32(v6, v6);
  v8 = vdup_lane_s32(v7, 0);
  v8.f32[0] = v3;
  *a2 = vmul_n_f32(vadd_f32(v7, v8), v4);
  result = v4 * (v7.f32[1] + v3);
  a2[1].f32[0] = result;
  return result;
}

void sub_1AFD846A4()
{
  nullsub_106();

  sub_1AFDA72A0(v0);
}

float32x4_t sub_1AFD846CC(int *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v8 = a1[18];
  v9 = a1[(v8 + 2) % 3 + 12];
  v10 = vzip1q_s32(v9, v9);
  v10.i32[2] = a1[(v8 + 2) % 3 + 12];
  v24 = v10;
  v24.f32[v8] = *&v10.i32[2] + *&a1[v8 + 12];
  v11 = (*(*a1 + 96))(a1);
  v23 = LODWORD(v11);
  v12 = (*(*a1 + 96))(a1);
  v22 = LODWORD(v12);
  *&v13 = (*(*a1 + 96))(a1);
  v14.i64[0] = __PAIR64__(v22, v23);
  v14.i64[1] = v13;
  v15 = vaddq_f32(v24, v14);
  v16 = *(a2 + 48);
  v17 = vmulq_f32(v15, vandq_s8(*a2, xmmword_1AFEABEA0));
  v18 = vmulq_f32(v15, vandq_s8(*(a2 + 16), xmmword_1AFEABEA0));
  v19 = vmulq_f32(v15, vandq_s8(*(a2 + 32), xmmword_1AFEABEA0));
  v19.i32[3] = 0;
  *v17.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vpadd_f32(*v17.f32, *v18.i8));
  *&v17.u32[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  v20 = vsubq_f32(v16, v17);
  v20.i32[3] = 0;
  *a3 = v20;
  result = vaddq_f32(v16, v17);
  *a4 = result;
  return result;
}

float32x4_t sub_1AFD8485C(float32x4_t *a1, float32x4_t *a2)
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

uint64_t sub_1AFD84970@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  *(a2 + *(result + 72)) = 1065353216;
  return result;
}

float32x4_t sub_1AFD84984(float32x4_t *a1, float32_t a2)
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

const char *sub_1AFD84B04(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return "btCapsuleShapeData";
}

__n128 sub_1AFD84B90(uint64_t a1, __n128 *a2, float *a3)
{
  v13[0] = xmmword_1AFE20150;
  v13[1] = xmmword_1AFE20160;
  v13[2] = xmmword_1AFE20180;
  v14 = 0;
  v15 = 0;
  (*(*a1 + 16))(a1, v13, &v12, &v11);
  v5 = v11;
  v6 = v12;
  v7 = vsubq_f32(v11, v12);
  v7.i32[3] = 0;
  v8 = vmulq_f32(v7, v7);
  *a3 = sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]) * 0.5;
  v9 = vaddq_f32(v5, v6);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  result = vmulq_f32(v9, v6);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

float sub_1AFD84C98(uint64_t a1)
{
  v3 = 0.0;
  (*(*a1 + 24))(a1, &v4, &v3);
  v1 = vmulq_f32(v4, v4);
  return v3 + sqrtf(vadd_f32(vpadd_f32(*v1.i8, *v1.i8), *&vextq_s8(v1, v1, 8uLL)).f32[0]);
}

float32x4_t sub_1AFD84D04(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, float32x2_t *a6, float a7)
{
  (*(*a1 + 16))(a1, a2, a5, a6);
  v12 = a6[1].f32[0];
  v13 = vmulq_n_f32(*a3, a7);
  v14 = vcgtz_f32(*v13.f32);
  v24 = vbsl_s8(v14, *a5, vadd_f32(*a5, *v13.f32));
  v25 = vbsl_s8(v14, vadd_f32(*a6, *v13.f32), *a6);
  if (v13.f32[2] > 0.0)
  {
    v12 = v12 + v13.f32[2];
  }

  v23 = v12;
  if (v13.f32[2] <= 0.0)
  {
    v15 = *(a5 + 8) + v13.f32[2];
  }

  else
  {
    v15 = *(a5 + 8);
  }

  v22 = v15;
  v16 = vmulq_f32(*a4, *a4);
  v17 = sqrtf(vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)).f32[0]);
  v18 = (*(*a1 + 32))(a1);
  *&v18 = (v17 * *&v18) * a7;
  v19 = vdupq_lane_s32(*&v18, 0);
  v19.i32[3] = 0;
  *&v20 = v24;
  *(&v20 + 1) = LODWORD(v22);
  *a5 = v20;
  *&v20 = v25;
  *(&v20 + 1) = LODWORD(v23);
  *a6->f32 = v20;
  *a5 = vsubq_f32(*a5, v19);
  result = vaddq_f32(*a6->f32, v19);
  *a6->f32 = result;
  return result;
}

const char *sub_1AFD84E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a3 + 80))(a3, a1);
  v7 = (*(*a3 + 56))(a3, v6);
  *a2 = v7;
  if (v7)
  {
    (*(*a3 + 96))(a3, v6);
  }

  *(a2 + 8) = *(a1 + 8);
  return "btCollisionShapeData";
}

uint64_t sub_1AFD84F3C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 104))(a1);
  v5 = (*(*a2 + 32))(a2, v4, 1);
  v6 = (*(*a1 + 112))(a1, *(v5 + 8), a2);
  v7 = *(*a2 + 40);

  return v7(a2, v5, v6, 1346455635, a1);
}

uint64_t sub_1AFD85040(uint64_t a1, int a2)
{
  *(a1 + 16) = 0;
  *a1 = &unk_1F2571760;
  *(a1 + 48) = 1;
  *(a1 + 40) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 64) = xmmword_1AFEABE60;
  *(a1 + 80) = xmmword_1AFEABE70;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 108) = xmmword_1AFE9AAE0;
  *(a1 + 124) = 0;
  *(a1 + 8) = 31;
  if (a2)
  {
    v3 = sub_1AFDA7294(96, 16);
    sub_1AFD6AFCC(v3);
    *(a1 + 96) = v4;
  }

  return a1;
}

uint64_t sub_1AFD850E4(uint64_t a1)
{
  *a1 = &unk_1F2571760;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_1AFD6B0EC(v2);
    sub_1AFDA72A0(*(a1 + 96));
  }

  v3 = *(a1 + 40);
  if (v3 && *(a1 + 48) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 48) = 1;
  *(a1 + 40) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_1AFD85164(uint64_t a1)
{
  v1 = sub_1AFD850E4(a1);

  sub_1AFDA72A0(v1);
}

__n128 sub_1AFD8518C(uint64_t a1, __n128 *a2, _DWORD *a3, char a4)
{
  ++*(a1 + 104);
  v29 = a2[1];
  v30 = *a2;
  v27 = a2[3];
  v28 = a2[2];
  v8 = a3[2];
  v9 = (*(*a3 + 96))(a3);
  (*(*a3 + 16))(a3, a2, &v33, &v32);
  for (i = 0; i != 12; i += 4)
  {
    v11 = a1 + i;
    v12 = *(&v33 + i);
    if (*(a1 + i + 64) > v12)
    {
      *(v11 + 64) = v12;
    }

    v13 = *(&v32 + i);
    if (*(v11 + 80) < v13)
    {
      *(v11 + 80) = v13;
    }
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    v31[0] = v33;
    v31[1] = v32;
    v15 = sub_1AFD6B2A4(v14, v31, *(a1 + 28));
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 28);
  if (v16 == *(a1 + 32))
  {
    v17 = v16 ? 2 * v16 : 1;
    if (v16 < v17)
    {
      if (v17)
      {
        v18 = sub_1AFDA7294(96 * v17, 16);
        v16 = *(a1 + 28);
      }

      else
      {
        v18 = 0;
      }

      if (v16 >= 1)
      {
        v19 = 0;
        v20 = 96 * v16;
        do
        {
          v21 = (v18 + v19);
          v22 = (*(a1 + 40) + v19);
          *v21 = *v22;
          v21[1] = v22[1];
          v21[2] = v22[2];
          v21[3] = v22[3];
          v23 = v22[4];
          *(v21 + 73) = *(v22 + 73);
          v21[4] = v23;
          v19 += 96;
        }

        while (v20 != v19);
      }

      v24 = *(a1 + 40);
      if (v24 && *(a1 + 48) == 1)
      {
        sub_1AFDA72A0(v24);
      }

      *(a1 + 48) = 1;
      *(a1 + 40) = v18;
      *(a1 + 32) = v17;
      v16 = *(a1 + 28);
    }
  }

  v25 = *(a1 + 40) + 96 * v16;
  *v25 = v30;
  *(v25 + 16) = v29;
  result = v27;
  *(v25 + 32) = v28;
  *(v25 + 48) = v27;
  *(v25 + 64) = a3;
  *(v25 + 72) = v8;
  *(v25 + 76) = v9;
  *(v25 + 80) = v15;
  *(v25 + 88) = a4;
  ++*(a1 + 28);
  return result;
}

void *sub_1AFD853D8(void *result, int a2, _OWORD *a3, int a4)
{
  v5 = result;
  v6 = (result[5] + 96 * a2);
  *v6 = *a3;
  v6[1] = a3[1];
  v6[2] = a3[2];
  v6[3] = a3[3];
  if (result[12])
  {
    v7 = 3 * a2;
    v8 = *(result[5] + 96 * a2 + 64);
    (*(*v8 + 16))(v8, a3, &v11, &v10);
    v9[0] = v11;
    v9[1] = v10;
    result = sub_1AFD6B338(v5[12], *(v5[5] + 32 * v7 + 80), v9);
  }

  if (a4)
  {
    return (*(*v5 + 136))(v5);
  }

  return result;
}

void sub_1AFD854D4(uint64_t a1, int a2)
{
  ++*(a1 + 104);
  v4 = *(a1 + 96);
  if (v4)
  {
    sub_1AFD6B4D8(v4, *(*(a1 + 40) + 96 * a2 + 80));
  }

  v6 = *(a1 + 40);
  v7 = (v6 + 96 * a2);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  *v18 = v7[4];
  *&v18[9] = *(v7 + 73);
  v12 = 96 * *(a1 + 28) - 96;
  v13 = (v6 + v12);
  v14 = v13[1];
  *v7 = *v13;
  v7[1] = v14;
  v15 = v13[3];
  v7[2] = v13[2];
  v7[3] = v15;
  v16 = *(v13 + 73);
  v7[4] = v13[4];
  *(v7 + 73) = v16;
  v17 = (*(a1 + 40) + v12);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = *v18;
  *(v17 + 73) = *&v18[9];
  if (*(a1 + 96))
  {
    *(*(*(a1 + 40) + 96 * a2 + 80) + 40) = a2;
  }

  --*(a1 + 28);
}

uint64_t sub_1AFD855DC(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 104);
  v3 = *(a1 + 28);
  if (v3 >= 1)
  {
    v5 = 96 * v3 - 32;
    do
    {
      if (*(*(a1 + 40) + v5) == a2)
      {
        sub_1AFD854D4(a1, v3 - 1);
      }

      --v3;
      v5 -= 96;
    }

    while ((v3 + 1) > 1);
  }

  v6 = *(*a1 + 136);

  return v6(a1);
}

uint64_t sub_1AFD85690(uint64_t result)
{
  *(result + 64) = xmmword_1AFEABE60;
  *(result + 80) = xmmword_1AFEABE70;
  if (*(result + 28) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = (*(**(*(v1 + 40) + 96 * v2 + 64) + 16))(*(*(v1 + 40) + 96 * v2 + 64), *(v1 + 40) + 96 * v2, v8, v7);
      for (i = 0; i != 12; i += 4)
      {
        v4 = v1 + i;
        v5 = *&v8[i];
        if (*(v1 + i + 64) > v5)
        {
          *(v4 + 64) = v5;
        }

        v6 = *&v7[i];
        if (*(v4 + 80) < v6)
        {
          *(v4 + 80) = v6;
        }
      }

      ++v2;
    }

    while (v2 < *(v1 + 28));
  }

  return result;
}

float32x4_t sub_1AFD8577C(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v32 = a1[4];
  v8 = v32;
  v33 = a1[5];
  v8.i32[0] = a1[1].i32[3];
  v31 = v8;
  v9 = (*(a1->i64[0] + 96))();
  v35 = LODWORD(v9);
  v10 = (*(a1->i64[0] + 96))(a1);
  v34 = LODWORD(v10);
  *&v11 = (*(a1->i64[0] + 96))(a1);
  v12.i32[0] = 0;
  v13 = vdupq_lane_s32(*&vceqq_s32(v31, v12), 0);
  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  v15 = vmulq_f32(vaddq_f32(v33, v32), v14);
  v15.i32[3] = 0;
  v16 = a2[1];
  v17 = vbicq_s8(v15, v13);
  v18 = vmulq_f32(vsubq_f32(v33, v32), v14);
  v18.i32[3] = 0;
  v19 = a2[2];
  v20.i64[0] = __PAIR64__(v34, v35);
  v20.i64[1] = v11;
  v21 = vaddq_f32(vbicq_s8(v18, v13), v20);
  v22 = vmulq_f32(v17, *a2);
  v23 = vmulq_f32(v17, v16);
  v24 = vmulq_f32(v17, v19);
  v24.i32[3] = 0;
  *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
  *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
  v25 = vaddq_f32(v22, a2[3]);
  v26 = vmulq_f32(v21, vandq_s8(*a2, xmmword_1AFEABEA0));
  v27 = vmulq_f32(v21, vandq_s8(v16, xmmword_1AFEABEA0));
  v28 = vmulq_f32(v21, vandq_s8(v19, xmmword_1AFEABEA0));
  v28.i32[3] = 0;
  *v26.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vpadd_f32(*v26.f32, *v27.i8));
  *&v26.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  v29 = vsubq_f32(v25, v26);
  v29.i32[3] = 0;
  *a3 = v29;
  result = vaddq_f32(v25, v26);
  *a4 = result;
  return result;
}

float sub_1AFD85934(uint64_t a1, uint64_t a2, float a3)
{
  v10[0] = xmmword_1AFE20150;
  v10[1] = xmmword_1AFE20160;
  v10[2] = xmmword_1AFE20180;
  v11 = 0;
  v12 = 0;
  (*(*a1 + 16))(a1, v10, &v9, &v8);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vmulq_f32(vsubq_f32(v8, v9), v5);
  v5.f32[0] = (v6.f32[2] + v6.f32[2]) * (v6.f32[2] + v6.f32[2]);
  *v6.f32 = vadd_f32(*v6.f32, *v6.f32);
  *a2 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v5.f32, 0), *v6.f32, *v6.f32), a3 / 12.0));
  result = (a3 / 12.0) * (COERCE_FLOAT(vmul_f32(*&v6, *&v6).i32[1]) + (v6.f32[0] * v6.f32[0]));
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AFD85A0C(float32x4_t *a1, float32x4_t *a2)
{
  if (a1[1].i32[3] >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = a1[2].i64[1] + v4;
      v14[0] = *v6;
      v14[1] = *(v6 + 16);
      v14[2] = *(v6 + 32);
      v15 = *(v6 + 48);
      v7 = (*(**(v6 + 64) + 56))(*(v6 + 64));
      v8 = a1[7];
      v9 = vrecpeq_f32(v8);
      v10 = vmulq_f32(v9, vrecpsq_f32(v8, v9));
      v13 = vmulq_f32(vrecpsq_f32(v8, v10), vmulq_f32(vmulq_f32(*v7, *a2), v10));
      v11 = *(a1[2].i64[1] + v4 + 64);
      (*(*v11 + 48))(v11, &v13);
      v15 = vmulq_f32(v15, *a2);
      sub_1AFD853D8(a1, v5++, v14, 0);
      v4 += 96;
    }

    while (v5 < a1[1].i32[3]);
  }

  a1[7] = *a2;
  return (*(a1->i64[0] + 136))(a1);
}

void sub_1AFD85B6C(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    v13 = v1;
    v14 = v2;
    v4 = sub_1AFDA7294(96, 16);
    v5.n128_f64[0] = sub_1AFD6AFCC(v4);
    *(a1 + 96) = v6;
    if (*(a1 + 28) >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(a1 + 40) + v7;
        (*(**(v9 + 64) + 16))(*(v9 + 64), v9, &v12, &v11, v5);
        v10[0] = v12;
        v10[1] = v11;
        *(v9 + 80) = sub_1AFD6B2A4(*(a1 + 96), v10, v8++);
        v7 += 96;
      }

      while (v8 < *(a1 + 28));
    }
  }
}

const char *sub_1AFD85C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFD84E6C(a1, a2, a3);
  *(a2 + 28) = *(a1 + 108);
  v6 = *(a1 + 28);
  *(a2 + 24) = v6;
  *(a2 + 16) = 0;
  if (v6)
  {
    v7 = (*(*a3 + 32))(a3, 80);
    v8 = *(v7 + 8);
    *(a2 + 16) = (*(*a3 + 56))(a3, v8);
    if (*(a2 + 24) >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 40);
      do
      {
        v12 = v11 + 96 * v10;
        *(v8 + 76) = *(v12 + 76);
        *(v8 + 64) = (*(*a3 + 56))(a3, *(v12 + 64));
        if (!(*(*a3 + 48))(a3, *(*(a1 + 40) + 96 * v10 + 64)))
        {
          v13 = *(*(a1 + 40) + 96 * v10 + 64);
          v14 = (*(*v13 + 104))(v13);
          v15 = (*(*a3 + 32))(a3, v14, 1);
          v16 = *(*(a1 + 40) + 96 * v10 + 64);
          v17 = (*(*v16 + 112))(v16, *(v15 + 8), a3);
          (*(*a3 + 40))(a3, v15, v17, 1346455635, *(*(a1 + 40) + 96 * v10 + 64));
        }

        v18 = 0;
        v11 = *(a1 + 40);
        *(v8 + 72) = *(v11 + 96 * v10 + 72);
        v19 = v11 + v9;
        v20 = v8;
        do
        {
          for (i = 0; i != 16; i += 4)
          {
            *(v20 + i) = *(v19 + i);
          }

          ++v18;
          v19 += 16;
          v20 += 16;
        }

        while (v18 != 3);
        for (j = 48; j != 64; j += 4)
        {
          *(v8 + j) = *(v11 + v9 + j);
        }

        ++v10;
        v8 += 80;
        v9 += 96;
      }

      while (v10 < *(a2 + 24));
    }

    (*(*a3 + 40))(a3, v7, "btCompoundShapeChildData", 1497453121, *(v7 + 8));
  }

  return "btCompoundShapeData";
}

uint64_t sub_1AFD85F6C(uint64_t result)
{
  *(result + 8) = 35;
  *(result + 16) = 0;
  *result = &unk_1F2571800;
  *(result + 24) = 0;
  return result;
}

float sub_1AFD85FA4(uint64_t a1, float a2, float a3)
{
  sub_1AFD86E64(a1);
  *v5 = &unk_1F2571898;
  *(v5 + 76) = a2;
  *(v5 + 80) = a3;
  *(v5 + 8) = 11;
  *(v5 + 84) = 0x100000000;
  *(v5 + 92) = 2;
  result = a2 / sqrtf((a3 * a3) + (a2 * a2));
  *(v5 + 72) = result;
  return result;
}

uint64_t sub_1AFD8601C@<X0>(uint64_t result@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 80) * 0.5;
  v5 = *(result + 84);
  v4 = *(result + 88);
  v6 = vmulq_f32(*a2, *a2);
  if (a2->f32[v4] <= (*(result + 72) * sqrtf(vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0])))
  {
    v9 = a2->f32[v5];
    v8 = *(result + 92);
    v10 = a2->f32[v8];
    v11 = sqrtf((v10 * v10) + (v9 * v9));
    if (v11 <= 0.00000011921)
    {
      *(a3 + 4 * v5) = 0;
      *(a3 + 4 * v4) = -v3;
      v7 = 0.0;
    }

    else
    {
      v12 = *(result + 76) / v11;
      *(a3 + 4 * v5) = v9 * v12;
      *(a3 + 4 * v4) = -v3;
      v7 = v10 * v12;
    }
  }

  else
  {
    *(a3 + 4 * v5) = 0;
    *(a3 + 4 * v4) = v3;
    v7 = 0.0;
    v8 = *(result + 92);
  }

  *(a3 + 4 * v8) = v7;
  return result;
}

double sub_1AFD860CC(uint64_t a1, float32x4_t *a2, _OWORD *a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = a4;
    do
    {
      sub_1AFD8601C(a1, a2, &v11);
      result = *&v11;
      *a3++ = v11;
      ++a2;
      --v9;
    }

    while (v9);
  }

  return result;
}

float32x4_t sub_1AFD86138@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  sub_1AFD8601C(a1, a2, a3);
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
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

double sub_1AFD86238(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[5].i32[1];
  v3 = a1[5].i32[3];
  v4 = a1[4].f32[3];
  v5 = a1[5].f32[0] * (a2->f32[a1[5].i32[2]] / a1[2].f32[a1[5].i32[2]]);
  a1[5].f32[0] = v5;
  v6 = v4 * (((a2->f32[v2] / a1[2].f32[v2]) + (a2->f32[v3] / a1[2].f32[v3])) * 0.5);
  a1[4].f32[2] = v6 / sqrtf((v5 * v5) + (v6 * v6));
  a1[4].f32[3] = v6;
  *&result = sub_1AFD86EB0(a1, a2).u64[0];
  return result;
}

void sub_1AFD862A0()
{
  nullsub_106();

  sub_1AFDA72A0(v0);
}

__n128 sub_1AFD862EC(uint64_t a1, __n128 *a2, float a3)
{
  v17[0] = xmmword_1AFE20150;
  v17[1] = xmmword_1AFE20160;
  v17[2] = xmmword_1AFE20180;
  v18 = 0;
  v19 = 0;
  (*(*a1 + 16))(a1, v17, &v16, &v15);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v14 = vmulq_f32(vsubq_f32(v15, v16), v6);
  v7 = (*(*a1 + 96))(a1);
  v8 = ((*&v14.i32[1] + *&v7) + (*&v14.i32[1] + *&v7)) * ((*&v14.i32[1] + *&v7) + (*&v14.i32[1] + *&v7));
  v9 = vextq_s8(v14, v14, 8uLL);
  v9.i32[1] = v14.i32[0];
  v10 = vadd_f32(*v9.f32, vdup_lane_s32(*&v7, 0));
  v11 = vadd_f32(v10, v10);
  v12 = vmul_f32(v11, v11);
  *v9.f32 = vdup_lane_s32(v12, 0);
  v9.f32[0] = v8;
  *v9.f32 = vadd_f32(v12, *v9.f32);
  v9.f32[2] = v12.f32[1] + v8;
  result = vmulq_n_f32(v9, a3 * 0.083333);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

double sub_1AFD8641C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0078125;
  *a1 = xmmword_1AFE20160;
  return result;
}

uint64_t sub_1AFD8642C(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, unsigned int a6)
{
  sub_1AFD8C8EC(a1);
  *v12 = &unk_1F2571960;
  *(v12 + 144) = 1;
  *(v12 + 136) = 0;
  *(v12 + 124) = 0;
  *(v12 + 176) = 1;
  *(v12 + 168) = 0;
  *(v12 + 156) = 0;
  *(v12 + 8) = 4;
  if (a3 < 1)
  {
    *(a1 + 124) = a3;
  }

  else
  {
    v13 = sub_1AFDA7294(16 * a3, 16);
    v14 = v13;
    v15 = *(a1 + 124);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 16 * v15;
      do
      {
        *(v13 + v16) = *(*(a1 + 136) + v16);
        v16 += 16;
      }

      while (v17 != v16);
    }

    v18 = *(a1 + 136);
    if (v18 && *(a1 + 144) == 1)
    {
      sub_1AFDA72A0(v18);
    }

    v19 = 0;
    *(a1 + 144) = 1;
    *(a1 + 136) = v14;
    *(a1 + 124) = a3;
    *(a1 + 128) = a3;
    v20 = (a2 + 8);
    do
    {
      *&v21 = *(v20 - 1);
      DWORD2(v21) = *v20;
      v20 = (v20 + a4);
      *(&v21 + 1) = DWORD2(v21);
      *(*(a1 + 136) + 16 * v19++) = v21;
    }

    while (a3 != v19);
  }

  v22 = 3 * a6;
  v23 = *(a1 + 156);
  if (v23 < (3 * a6))
  {
    if (*(a1 + 160) >= v22)
    {
LABEL_25:
      bzero((*(a1 + 168) + 4 * v23), 4 * (v22 + ~v23) + 4);
      goto LABEL_26;
    }

    if (a6)
    {
      v24 = sub_1AFDA7294(4 * v22, 16);
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v25) = *(a1 + 156);
    v26 = *(a1 + 168);
    if (v25 < 1)
    {
      if (!v26)
      {
LABEL_24:
        *(a1 + 176) = 1;
        *(a1 + 168) = v24;
        *(a1 + 160) = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v25 = v25;
      v27 = v24;
      v28 = *(a1 + 168);
      do
      {
        v29 = *v28++;
        *v27++ = v29;
        --v25;
      }

      while (v25);
    }

    if (*(a1 + 176) == 1)
    {
      sub_1AFDA72A0(v26);
    }

    goto LABEL_24;
  }

LABEL_26:
  *(a1 + 156) = v22;
  if (a6 >= 1)
  {
    v30 = a6;
    v31 = (*(a1 + 168) + 8);
    v32 = (a5 + 8);
    do
    {
      *(v31 - 2) = *(v32 - 2);
      *(v31 - 1) = *(v32 - 1);
      v33 = *v32;
      v32 += 3;
      *v31 = v33;
      v31 += 3;
      --v30;
    }

    while (v30);
  }

  sub_1AFD8C7F8(a1);
  return a1;
}

float32x4_t sub_1AFD8666C@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float32x4_t result@<Q0>)
{
  v16 = -581039253;
  v5 = a1[7].u32[3];
  if (v5 < 1)
  {
    *a3 = 0uLL;
  }

  else
  {
    v7 = a1[2];
    v8 = vmulq_f32(*a2, v7);
    v15 = v8;
    v9 = a1[8].i64[1];
    if (v5 > 3)
    {
      v11 = off_1EE810978(v9, &v15, v5, &v16);
      v9 = a1[8].i64[1];
      v7 = a1[2];
    }

    else
    {
      v10 = 0;
      v11 = -1;
      v12 = -3.4028e38;
      do
      {
        v13 = vmulq_f32(v8, *(v9 + 16 * v10));
        v14 = vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL)).f32[0];
        if (v14 > v12)
        {
          v12 = v14;
          v11 = v10;
        }

        ++v10;
      }

      while (v5 != v10);
    }

    result = vmulq_f32(*(v9 + 16 * v11), v7);
    *a3 = result;
  }

  return result;
}

float32x4_t *sub_1AFD86744(float32x4_t *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v31 = v4;
    v32 = v5;
    v8 = result;
    v9 = a3 + 12;
    v10 = a4;
    v11 = (a4 + 3) & 0xFFFFFFFC;
    v12 = vdupq_n_s64(a4 - 1);
    v13 = xmmword_1AFE21100;
    v14 = xmmword_1AFE21110;
    v15 = (a3 + 44);
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v15 - 8) = -581039253;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v15 - 4) = -581039253;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v15 = -581039253;
        v15[4] = -581039253;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v15 += 16;
      v11 -= 4;
    }

    while (v11);
    v18 = 0;
    v30 = 0.0;
    do
    {
      v19 = v8[2];
      v20 = vmulq_f32(*(a2 + 16 * v18), v19);
      v29 = v20;
      v21 = v8[7].u32[3];
      if (v21 < 1)
      {
        *(v9 + 16 * v18) = -581039253;
      }

      else
      {
        result = v8[8].i64[1];
        if (v21 > 3)
        {
          v23 = off_1EE810978(result, &v29, v21, &v30);
          result = v8[8].i64[1];
          v19 = v8[2];
          v24 = v30;
        }

        else
        {
          v22 = 0;
          v23 = -1;
          v24 = -3.4028e38;
          do
          {
            v25 = vmulq_f32(v20, result[v22]);
            v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0];
            if (v26 > v24)
            {
              v24 = v26;
              v23 = v22;
            }

            ++v22;
          }

          while (v21 != v22);
          v30 = v24;
        }

        v27 = vmulq_f32(result[v23], v19);
        v28 = (a3 + 16 * v18);
        *v28 = v27;
        v28->f32[3] = v24;
      }

      ++v18;
    }

    while (v18 != v10);
  }

  return result;
}

float32x4_t sub_1AFD86908@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*a1 + 136))(a1);
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
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

float32x4_t sub_1AFD86A38(float32x4_t *a1, int a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = a1[7].i32[3];
  *a3 = vmulq_f32(*(a1[8].i64[1] + 16 * (a2 % v4)), a1[2]);
  result = vmulq_f32(*(a1[8].i64[1] + 16 * ((a2 + 1) % v4)), a1[2]);
  *a4 = result;
  return result;
}

float32x4_t sub_1AFD86A7C(float32x4_t *a1, int a2, float32x4_t *a3)
{
  result = vmulq_f32(*(a1[8].i64[1] + 16 * a2), a1[2]);
  *a3 = result;
  return result;
}

const char *sub_1AFD86AA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a2 + 72) = v8;
  if (v8)
  {
    *(a2 + 56) = (*(*a3 + 56))(a3, *(a1 + 136));
    *(a2 + 64) = 0;
    v9 = (*(*a3 + 32))(a3, 16, v8);
    v10 = *(a1 + 136);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = *(v9 + 8);
      v13 = *(a1 + 136);
      do
      {
        for (k = 0; k != 16; k += 4)
        {
          *(v12 + k) = *(v13 + k);
        }

        ++v11;
        v12 += 16;
        v13 += 16;
      }

      while (v11 != v8);
    }

    (*(*a3 + 40))(a3, v9, "btVector3FloatData", 1497453121, v10);
  }

  else
  {
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  return "btConvexHullShapeData";
}

float32x4_t sub_1AFD86C20(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float *a4, float *a5, float32x4_t *a6, float32x4_t *a7)
{
  *a4 = 3.4028e38;
  *a5 = -3.4028e38;
  v7 = a1[7].u32[3];
  if (v7 < 1)
  {
    result.i32[0] = -8388609;
  }

  else
  {
    v8 = 0;
    v9 = 16 * v7;
    result.i32[1] = 0;
    do
    {
      v11 = vmulq_f32(*(a1[8].i64[1] + v8), a1[2]);
      v12 = vmulq_f32(*a2, v11);
      v13 = vmulq_f32(v11, a2[1]);
      v14 = vmulq_f32(v11, a2[2]);
      v14.i32[3] = 0;
      *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
      *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
      v15 = vaddq_f32(v12, a2[3]);
      v16 = vmulq_f32(v15, *a3);
      v17 = vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)).f32[0];
      if (v17 < *a4)
      {
        *a4 = v17;
        *a6 = v15;
      }

      if (v17 > *a5)
      {
        *a5 = v17;
        *a7 = v15;
      }

      v8 += 16;
    }

    while (v9 != v8);
    result.f32[0] = *a5;
  }

  v18 = *a4;
  if (*a4 > result.f32[0])
  {
    *a4 = result.f32[0];
    *a5 = v18;
    result = *a6;
    *a6 = *a7;
    *a7 = result;
  }

  return result;
}

double sub_1AFD86D14(uint64_t a1, double a2)
{
  *a1 = &unk_1F2571960;
  v3 = *(a1 + 168);
  if (v3 && *(a1 + 176) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 176) = 1;
  *(a1 + 168) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  v4 = *(a1 + 136);
  if (v4 && *(a1 + 144) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 144) = 1;
  *(a1 + 136) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;

  sub_1AFD8A7AC(a1);
  return result;
}

void sub_1AFD86DB0(uint64_t a1, double a2)
{
  *a1 = &unk_1F2571960;
  v3 = *(a1 + 168);
  if (v3 && *(a1 + 176) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 176) = 1;
  *(a1 + 168) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  v4 = *(a1 + 136);
  if (v4 && *(a1 + 144) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 144) = 1;
  *(a1 + 136) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  sub_1AFD8A7AC(a1);

  sub_1AFDA72A0(v5);
}

double sub_1AFD86E64(uint64_t a1)
{
  v1 = sub_1AFD883D8(a1);
  *v1 = &unk_1F2571A78;
  result = 0.00781250185;
  *(v1 + 32) = xmmword_1AFE208C0;
  *(v1 + 64) = 1025758986;
  return result;
}

float32x4_t sub_1AFD86EB0(float32x4_t *a1, float32x4_t *a2)
{
  result = vabsq_f32(*a2);
  a1[2] = result;
  return result;
}

void *sub_1AFD86EC0(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 96))(a1);
  for (i = 0; i != 3; ++i)
  {
    v27 = 0uLL;
    v27.i32[i] = 1065353216;
    v10 = *a2;
    v11 = a2[1];
    v10.i32[3] = 0;
    v11.i32[3] = 0;
    v12 = a2[2];
    v12.i32[3] = 0;
    v25 = vaddq_f32(vaddq_f32(vmulq_n_f32(v10, v27.f32[0]), vmulq_lane_f32(v11, *v27.f32, 1)), vmulq_laneq_f32(v12, v27, 2));
    (*(*a1 + 128))(&v26, a1, &v25);
    v13 = vmulq_f32(*a2, v26);
    v14 = vmulq_f32(v26, a2[1]);
    v15 = vmulq_f32(v26, a2[2]);
    v15.i32[3] = 0;
    *v13.f32 = vadd_f32(vpadd_f32(*v13.f32, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
    *&v13.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
    v25 = vaddq_f32(v13, a2[3]);
    *(a4 + i * 4) = v8 + v25.f32[i];
    v27.i32[i] = -1082130432;
    v16 = *a2;
    v17 = a2[1];
    v16.i32[3] = 0;
    v17.i32[3] = 0;
    v18 = a2[2];
    v18.i32[3] = 0;
    v23 = vaddq_f32(vaddq_f32(vmulq_n_f32(v16, v27.f32[0]), vmulq_lane_f32(v17, *v27.f32, 1)), vmulq_laneq_f32(v18, v27, 2));
    result = (*(*a1 + 128))(&v24, a1, &v23);
    v20 = vmulq_f32(*a2, v24);
    v21 = vmulq_f32(v24, a2[1]);
    v22 = vmulq_f32(v24, a2[2]);
    v22.i32[3] = 0;
    *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
    *&v20.u32[2] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
    v25 = vaddq_f32(v20, a2[3]);
    *(a3 + i * 4) = v25.f32[i] - v8;
  }

  return result;
}

float32x4_t sub_1AFD870DC@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*a1 + 136))(a1);
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
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

double sub_1AFD871FC(uint64_t a1)
{
  v1 = sub_1AFD883D8(a1);
  result = 0.00781250185;
  *(v1 + 32) = xmmword_1AFE208C0;
  *(v1 + 64) = 1025758986;
  *v1 = &unk_1F2571B40;
  *(v1 + 80) = xmmword_1AFE208C0;
  *(v1 + 96) = xmmword_1AFE47D00;
  *(v1 + 112) = 0;
  return result;
}

float32x4_t sub_1AFD87258(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
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

uint64_t sub_1AFD8738C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 112) = 1;
  if ((atomic_load_explicit(qword_1EB6C1AE0, memory_order_acquire) & 1) == 0)
  {
    sub_1AF0F97CC();
  }

  memset(v7, 0, sizeof(v7));
  v2 = v7;
  result = (*(*a1 + 152))(a1, &dword_1EB6C1AF0, v7, 6);
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

double sub_1AFD87480(uint64_t a1)
{
  *a1 = &unk_1F2571C08;
  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 12) = 0;
  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  return result;
}

uint64_t sub_1AFD874CC(uint64_t a1)
{
  *a1 = &unk_1F2571C08;
  v2 = *(a1 + 88);
  if (v2 && *(a1 + 96) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  sub_1AFD88098(a1 + 40);
  v3 = *(a1 + 24);
  if (v3 && *(a1 + 32) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_1AFD87564(uint64_t a1)
{
  v1 = sub_1AFD874CC(a1);

  sub_1AFDA72A0(v1);
}

BOOL sub_1AFD8758C(float32x4_t *a1)
{
  v1 = 0;
  v2 = 0;
  while (1)
  {
    if (v2 > 3)
    {
      if (v2 <= 5)
      {
        if (v2 == 4)
        {
          v4 = a1[8].f32[1];
          v3 = -a1[8].f32[0];
          goto LABEL_14;
        }

        v4 = a1[8].f32[1];
        v3 = -a1[8].f32[0];
        goto LABEL_20;
      }

      if (v2 == 6)
      {
        v5 = a1[8].f32[1];
        v3 = -a1[8].f32[0];
        goto LABEL_13;
      }

      v7 = a1[8].f32[1];
      v3 = -a1[8].f32[0];
LABEL_19:
      v4 = -v7;
LABEL_20:
      v6 = -a1[8].f32[2];
      goto LABEL_21;
    }

    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v3 = a1[8].f32[0];
        v5 = a1[8].f32[1];
LABEL_13:
        v4 = -v5;
        goto LABEL_14;
      }

      v3 = a1[8].f32[0];
      v7 = a1[8].f32[1];
      goto LABEL_19;
    }

    if (!v2)
    {
      v3 = a1[8].f32[0];
      v4 = a1[8].f32[1];
LABEL_14:
      v6 = a1[8].f32[2];
      goto LABEL_21;
    }

    v4 = a1[8].f32[1];
    v6 = -a1[8].f32[2];
    v3 = a1[8].f32[0];
LABEL_21:
    if (a1[2].i32[3] >= 1)
    {
      break;
    }

LABEL_25:
    v1 = v2++ > 6;
    if (v2 == 8)
    {
      return 1;
    }
  }

  v8.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v8.i64[1] = LODWORD(v6);
  v9 = vaddq_f32(a1[7], v8);
  v10 = (a1[3].i64[1] + 44);
  v11 = a1[2].u32[3];
  while (1)
  {
    v12.i64[0] = *(v10 - 3);
    v12.i64[1] = *(v10 - 1);
    v13 = vmulq_f32(v9, v12);
    if ((*v10 + vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL)).f32[0]) > 0.0)
    {
      return v1;
    }

    v10 += 12;
    if (!--v11)
    {
      goto LABEL_25;
    }
  }
}

void sub_1AFD876C0(float32x4_t *a1)
{
  v92 = 1;
  v91 = 0;
  v90 = 0;
  v95 = 1;
  v94 = 0;
  v93 = 0;
  v98 = 1;
  v97 = 0;
  v96 = 0;
  v101 = 1;
  v100 = 0;
  v99 = 0;
  a1[7] = 0uLL;
  v2 = a1 + 7;
  LODWORD(v3) = a1[2].i32[3];
  if (v3 < 1)
  {
    goto LABEL_54;
  }

  v4 = 0;
  do
  {
    v5 = *(a1[3].i64[1] + 48 * v4 + 4);
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = v6 + 1;
        v8 = (v6 + 1);
        v9 = *(a1[3].i64[1] + 48 * v4 + 16);
        v10 = *(v9 + 4 * v6);
        if (v7 == v5)
        {
          v8 = 0;
        }

        v11 = *(v9 + 4 * v8);
        v87 = v10;
        v88 = v11;
        if (v11 > v10)
        {
          v87 = v11;
          v88 = v10;
        }

        v12 = sub_1AFD88148(v89, &v87);
        if (v12 == -1)
        {
          v13 = 0;
        }

        else
        {
          v13 = v97 + 4 * v12;
        }

        v14 = vsubq_f32(*(a1[1].i64[1] + 16 * v88), *(a1[1].i64[1] + 16 * v87));
        v14.i32[3] = 0;
        v15 = vmulq_f32(v14, v14);
        v16 = vmulq_n_f32(v14, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v15.i8, *v15.i8), *&vextq_s8(v15, v15, 8uLL)).f32[0]));
        v17 = a1[4].i32[3];
        if (v17 < 1)
        {
LABEL_21:
          if (v17 == a1[5].i32[0])
          {
            v22 = v17 ? 2 * v17 : 1;
            if (v17 < v22)
            {
              v85 = v16;
              if (v22)
              {
                v23 = sub_1AFDA7294(16 * v22, 16);
                v16 = v85;
                v24 = v23;
                v17 = a1[4].i32[3];
              }

              else
              {
                v24 = 0;
              }

              if (v17 >= 1)
              {
                v25 = 0;
                v26 = 16 * v17;
                do
                {
                  *(v24 + v25) = *(a1[5].i64[1] + v25);
                  v25 += 16;
                }

                while (v26 != v25);
              }

              v27 = a1[5].i64[1];
              if (v27 && a1[6].i8[0] == 1)
              {
                sub_1AFDA72A0(v27);
                v16 = v85;
              }

              a1[6].i8[0] = 1;
              a1[5].i64[1] = v24;
              a1[5].i32[0] = v22;
              v17 = a1[4].i32[3];
            }
          }

          *(a1[5].i64[1] + 16 * v17) = v16;
          ++a1[4].i32[3];
        }

        else
        {
          v18 = a1[5].i64[1];
          v19 = a1[4].u32[3];
          while (1)
          {
            v20 = vsubq_f32(*v18, v16);
            if (fabsf(v20.f32[0]) <= 0.000001 && fabsf(v20.f32[1]) <= 0.000001 && fabsf(v20.f32[2]) <= 0.000001)
            {
              break;
            }

            v21 = vaddq_f32(v16, *v18);
            if (fabsf(v21.f32[0]) <= 0.000001 && fabsf(v21.f32[1]) <= 0.000001 && fabsf(v21.f32[2]) <= 0.000001)
            {
              break;
            }

            ++v18;
            if (!--v19)
            {
              goto LABEL_21;
            }
          }
        }

        if (v13)
        {
          *(v13 + 2) = v4;
        }

        else
        {
          HIWORD(v86) = -1;
          LOWORD(v86) = v4;
          sub_1AFD87D88(v89, &v87, &v86);
        }

        v6 = v7;
      }

      while (v7 != v5);
      LODWORD(v3) = a1[2].i32[3];
    }

    ++v4;
  }

  while (v4 < v3);
  if (v3 < 1)
  {
LABEL_54:
    v55.i64[0] = 0x7F0000007FLL;
    v55.i64[1] = 0x7F0000007FLL;
    a1[7] = vmulq_f32(a1[7], vnegq_f32(v55));
    a1[9].i32[0] = 2139095039;
    v51 = 3.4028e38;
  }

  else
  {
    v28 = 0;
    v29 = a1[3].i64[1];
    v30 = a1[1].i64[1];
    v3 = v3;
    v31 = 0.0;
    v32 = vdupq_n_s32(0x3EAAAAABu);
    do
    {
      v33 = v29 + 48 * v28;
      v34 = *(v33 + 4);
      if (v34 >= 3)
      {
        v35 = 0;
        v36 = **(v33 + 16);
        v37 = *v2;
        v38 = 4 * (v34 - 1) - 4;
        do
        {
          v39 = *(v29 + 48 * v28 + 16) + v35;
          v40 = *(v30 + 16 * v36);
          v41 = *(v30 + 16 * *(v39 + 4));
          v42 = vsubq_f32(v40, v41);
          v42.i32[3] = 0;
          v43 = *(v30 + 16 * *(v39 + 8));
          v44 = vsubq_f32(v40, v43);
          v44.i32[3] = 0;
          v45 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v44, v44, 0xCuLL), v44, 8uLL), v42), vmulq_f32(vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL), v44));
          v46 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
          v46.i32[3] = 0;
          v47 = vmulq_f32(v46, v46);
          *v47.i32 = sqrtf(vadd_f32(vpadd_f32(*v47.i8, *v47.i8), *&vextq_s8(v47, v47, 8uLL)).f32[0]) * 0.5;
          v48 = vmulq_n_f32(vmulq_f32(vaddq_f32(vaddq_f32(v40, v41), v43), v32), *v47.i32);
          v48.i32[3] = 0;
          v37 = vaddq_f32(v37, v48);
          *v2 = v37;
          v31 = v31 + *v47.i32;
          v35 += 4;
        }

        while (v38 != v35);
      }

      ++v28;
    }

    while (v28 != v3);
    v49 = vmulq_n_f32(a1[7], 1.0 / v31);
    a1[7] = v49;
    a1[9].i32[0] = 2139095039;
    v50 = (a1[3].i64[1] + 44);
    v51 = 3.4028e38;
    do
    {
      v52.i64[0] = *(v50 - 3);
      v52.i64[1] = *(v50 - 1);
      v53 = vmulq_f32(v49, v52);
      v54 = fabsf(*v50 + vadd_f32(vpadd_f32(*v53.i8, *v53.i8), *&vextq_s8(v53, v53, 8uLL)).f32[0]);
      if (v54 < v51)
      {
        a1[9].f32[0] = v54;
        v51 = v54;
      }

      v50 += 12;
      --v3;
    }

    while (v3);
  }

  v56 = a1->u32[3];
  if (v56 < 1)
  {
    v57 = 0x80000000800000;
    v58 = vneg_f32(0x80000000800000);
    v61 = -3.4028e38;
    v60 = 3.4028e38;
  }

  else
  {
    v57 = 0x80000000800000;
    v58 = vneg_f32(0x80000000800000);
    v59 = (a1[1].i64[1] + 8);
    v60 = 3.4028e38;
    v61 = -3.4028e38;
    do
    {
      v62 = *(v59 - 2);
      v58 = vbsl_s8(vcgt_f32(v58, v62), v62, v58);
      v57 = vbsl_s8(vcgt_f32(v62, v57), v62, v57);
      v63 = *v59;
      v59 += 4;
      v64 = v63;
      if (v63 < v60)
      {
        v60 = v64;
      }

      if (v64 > v61)
      {
        v61 = v64;
      }

      --v56;
    }

    while (v56);
  }

  v65 = vadd_f32(v57, v58);
  v66 = vsub_f32(v57, v58);
  *a1[11].f32 = v66;
  *a1[10].f32 = v65;
  a1[10].f32[2] = v60 + v61;
  a1[10].i32[3] = 0;
  v67 = v61 - v60;
  a1[11].f32[2] = v67;
  a1[11].i32[3] = 0;
  v68 = v51 / 1.7321;
  if (v66.f32[1] >= v67)
  {
    v69 = 1;
  }

  else
  {
    v69 = 2;
  }

  if (v66.f32[0] >= v66.f32[1])
  {
    v70 = 2 * (v66.f32[0] < v67);
  }

  else
  {
    v70 = v69;
  }

  v71 = a1[11].f32[v70];
  v72 = -(v68 - (v71 * 0.5)) * 0.00097656;
  a1[8].f32[1] = v68;
  a1[8].f32[2] = v68;
  a1[8].f32[0] = v68;
  v73 = a1 + 8;
  v74 = v71 * 0.5;
  a1[8].f32[v70] = v71 * 0.5;
  v75 = 1024;
  while (!sub_1AFD8758C(a1))
  {
    v74 = v74 - v72;
    v73->f32[v70] = v74;
    if (!--v75)
    {
      a1[8].f32[1] = v68;
      a1[8].f32[2] = v68;
      a1[8].f32[0] = v68;
      goto LABEL_79;
    }
  }

  v76 = v51 - v68;
  v77 = 1 << v70;
  v78 = (1 << v70) & 3;
  v79 = (1 << (v77 & 3)) & 3;
  v80 = v73->i32[v79];
  v81 = v76 * 0.00097656;
  v82 = v73->f32[v78];
  v73->f32[v78] = (v76 * 0.00097656) + v82;
  v83 = (v76 * 0.00097656) + v73->f32[v79];
  v73->f32[v79] = v83;
  if (sub_1AFD8758C(a1))
  {
    v84 = 1024;
    while (--v84)
    {
      v80 = LODWORD(v83);
      v82 = v73->f32[v78];
      v73->f32[v78] = v81 + v82;
      v83 = v81 + v73->f32[v79];
      v73->f32[v79] = v83;
      if (!sub_1AFD8758C(a1))
      {
        goto LABEL_78;
      }
    }
  }

  else
  {
LABEL_78:
    v73->f32[v78] = v82;
    v73->i32[v79] = v80;
  }

LABEL_79:
  if (v100 && v101 == 1)
  {
    sub_1AFDA72A0(v100);
  }

  v101 = 1;
  v100 = 0;
  v99 = 0;
  if (v97 && v98 == 1)
  {
    sub_1AFDA72A0(v97);
  }

  v98 = 1;
  v97 = 0;
  v96 = 0;
  if (v94 && v95 == 1)
  {
    sub_1AFDA72A0(v94);
  }

  v95 = 1;
  v94 = 0;
  v93 = 0;
  if (v91)
  {
    if (v92 == 1)
    {
      sub_1AFDA72A0(v91);
    }
  }
}

void sub_1AFD87D88(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a1 + 72);
  v9 = sub_1AFD88148(a1, a2);
  if (v9 == -1)
  {
    v10 = v6 + (v7 << 16);
    v11 = v8 - 1;
    v12 = *(a1 + 68);
    v13 = *(a1 + 72);
    v14 = v12;
    if (v12 == v13)
    {
      v15 = v12 ? 2 * v12 : 1;
      v14 = *(a1 + 68);
      if (v12 < v15)
      {
        if (v15)
        {
          v16 = sub_1AFDA7294(4 * v15, 16);
        }

        else
        {
          v16 = 0;
        }

        if (*(a1 + 68) >= 1)
        {
          v17 = 0;
          v18 = 4 * *(a1 + 68);
          do
          {
            *(v16 + v17) = *(*(a1 + 80) + v17);
            v17 += 4;
          }

          while (v18 != v17);
        }

        v19 = *(a1 + 80);
        if (v19 && *(a1 + 88) == 1)
        {
          sub_1AFDA72A0(v19);
        }

        *(a1 + 88) = 1;
        *(a1 + 80) = v16;
        *(a1 + 72) = v15;
        v14 = *(a1 + 68);
      }
    }

    v20 = v10 & v11;
    *(*(a1 + 80) + 4 * v14) = *a3;
    ++*(a1 + 68);
    v21 = *(a1 + 100);
    if (v21 == *(a1 + 104))
    {
      v22 = v21 ? 2 * v21 : 1;
      if (v21 < v22)
      {
        if (v22)
        {
          v23 = sub_1AFDA7294(4 * v22, 16);
          v21 = *(a1 + 100);
        }

        else
        {
          v23 = 0;
        }

        if (v21 >= 1)
        {
          v24 = 0;
          v25 = 4 * v21;
          do
          {
            *(v23 + v24) = *(*(a1 + 112) + v24);
            v24 += 4;
          }

          while (v25 != v24);
        }

        v26 = *(a1 + 112);
        if (v26 && *(a1 + 120) == 1)
        {
          sub_1AFDA72A0(v26);
        }

        *(a1 + 120) = 1;
        *(a1 + 112) = v23;
        *(a1 + 104) = v22;
        v21 = *(a1 + 100);
      }
    }

    *(*(a1 + 112) + 4 * v21) = *a2;
    ++*(a1 + 100);
    if (v13 < *(a1 + 72))
    {
      sub_1AFD881BC(a1);
      v20 = (*a2 + (a2[1] << 16)) & (*(a1 + 72) - 1);
    }

    v27 = *(a1 + 16);
    *(*(a1 + 48) + 4 * v12) = *(v27 + 4 * v20);
    *(v27 + 4 * v20) = v12;
  }

  else
  {
    *(*(a1 + 80) + 4 * v9) = *a3;
  }
}

float32x4_t sub_1AFD87FAC(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float *a4, float *a5, float32x4_t *a6, float32x4_t *a7)
{
  *a4 = 3.4028e38;
  *a5 = -3.4028e38;
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    result.i32[0] = -8388609;
  }

  else
  {
    v8 = 0;
    v9 = 16 * v7;
    result.i32[1] = 0;
    do
    {
      v11 = *(*(a1 + 24) + v8);
      v12 = vmulq_f32(*a2, v11);
      v13 = vmulq_f32(v11, a2[1]);
      v14 = vmulq_f32(v11, a2[2]);
      v14.i32[3] = 0;
      *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
      *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
      v15 = vaddq_f32(v12, a2[3]);
      v16 = vmulq_f32(v15, *a3);
      v17 = vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)).f32[0];
      if (v17 < *a4)
      {
        *a4 = v17;
        *a6 = v15;
      }

      if (v17 > *a5)
      {
        *a5 = v17;
        *a7 = v15;
      }

      v8 += 16;
    }

    while (v9 != v8);
    result.f32[0] = *a5;
  }

  v18 = *a4;
  if (*a4 > result.f32[0])
  {
    *a4 = result.f32[0];
    *a5 = v18;
    result = *a6;
    *a6 = *a7;
    *a7 = result;
  }

  return result;
}

uint64_t sub_1AFD88098(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 48 * v2;
    do
    {
      v5 = *(a1 + 16) + v3;
      v6 = *(v5 + 16);
      if (v6 && *(v5 + 24) == 1)
      {
        sub_1AFDA72A0(v6);
      }

      *(v5 + 24) = 1;
      *(v5 + 16) = 0;
      *(v5 + 4) = 0;
      *(v5 + 8) = 0;
      v3 += 48;
    }

    while (v4 != v3);
  }

  v7 = *(a1 + 16);
  if (v7 && *(a1 + 24) == 1)
  {
    sub_1AFDA72A0(v7);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_1AFD88148(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2[1];
  v3 = (*a2 + (v2 << 16)) & (*(a1 + 72) - 1);
  if (v3 >= *(a1 + 4))
  {
    return 0xFFFFFFFFLL;
  }

  result = *(*(a1 + 16) + 4 * v3);
  if (result == -1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v6 = (*(a1 + 112) + 4 * result);
    if (*a2 == *v6 && v2 == v6[1])
    {
      break;
    }

    result = *(*(a1 + 48) + 4 * result);
    if (result == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_1AFD881BC(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 4);
  if (v2 >= v1)
  {
    return;
  }

  if (*(a1 + 8) < v1)
  {
    if (v1)
    {
      v4 = sub_1AFDA7294(4 * v1, 16);
      LODWORD(v5) = *(a1 + 4);
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = *(a1 + 4);
    }

    v6 = *(a1 + 16);
    if (v5 < 1)
    {
      if (!v6)
      {
LABEL_14:
        *(a1 + 24) = 1;
        *(a1 + 16) = v4;
        *(a1 + 8) = v1;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v5;
      v7 = v4;
      v8 = *(a1 + 16);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 24) == 1)
    {
      sub_1AFDA72A0(v6);
    }

    *(a1 + 16) = 0;
    goto LABEL_14;
  }

LABEL_15:
  bzero((*(a1 + 16) + 4 * v2), 4 * (v1 + ~v2) + 4);
  *(a1 + 4) = v1;
  v10 = *(a1 + 36);
  if (v10 < v1)
  {
    if (*(a1 + 40) >= v1)
    {
LABEL_28:
      bzero((*(a1 + 48) + 4 * v10), 4 * (v1 + ~v10) + 4);
      goto LABEL_29;
    }

    if (v1)
    {
      v11 = sub_1AFDA7294(4 * v1, 16);
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v12) = *(a1 + 36);
    v13 = *(a1 + 48);
    if (v12 < 1)
    {
      if (!v13)
      {
LABEL_27:
        *(a1 + 56) = 1;
        *(a1 + 48) = v11;
        *(a1 + 40) = v1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v12;
      v14 = v11;
      v15 = *(a1 + 48);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    if (*(a1 + 56) == 1)
    {
      sub_1AFDA72A0(v13);
    }

    goto LABEL_27;
  }

LABEL_29:
  *(a1 + 36) = v1;
  if (v1 >= 1)
  {
    memset(*(a1 + 16), 255, 4 * v1);
    memset(*(a1 + 48), 255, 4 * v1);
  }

  if (v2 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 16);
    v19 = *(a1 + 48);
    v20 = (*(a1 + 112) + 2);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v20 += 2;
      v23 = (v21 + (v22 << 16)) & (*(a1 + 72) - 1);
      *(v19 + 4 * v17) = *(v18 + 4 * v23);
      *(v18 + 4 * v23) = v17++;
    }

    while (v2 != v17);
  }
}

uint64_t sub_1AFD883D8(uint64_t result)
{
  *(result + 8) = 35;
  *(result + 16) = 0;
  *result = &unk_1F2571C28;
  return result;
}

void *sub_1AFD8840C(uint64_t a1, float32x4_t *a2, float32x2_t *a3, float *a4, float *a5)
{
  v10 = *a2;
  v11 = a2[1];
  v10.i32[3] = 0;
  v11.i32[3] = 0;
  v12 = a2[2];
  v12.i32[3] = 0;
  v29 = vaddq_f32(vaddq_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a3->f32)), vmulq_lane_f32(v11, *a3, 1)), vmulq_laneq_f32(v12, *a3->f32, 2));
  (*(*a1 + 128))(&v28);
  v13 = vmulq_f32(*a2, v28);
  v14 = vmulq_f32(v28, a2[1]);
  v15 = vmulq_f32(v28, a2[2]);
  v15.i32[3] = 0;
  *v13.f32 = vadd_f32(vpadd_f32(*v13.f32, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
  *&v13.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
  v16 = vaddq_f32(v13, a2[3]);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v26 = v16;
  v27 = veorq_s8(v29, v13);
  result = (*(*a1 + 128))(&v28, a1, &v27);
  v18 = vmulq_f32(*a2, v28);
  v19 = vmulq_f32(v28, a2[1]);
  v20 = vmulq_f32(v28, a2[2]);
  v20.i32[3] = 0;
  *v18.f32 = vadd_f32(vpadd_f32(*v18.f32, *v19.i8), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
  *&v18.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
  v21 = vaddq_f32(v18, a2[3]);
  v22 = vmulq_f32(v26, *a3->f32);
  *a4 = vadd_f32(vpadd_f32(*v22.i8, *v22.i8), *&vextq_s8(v22, v22, 8uLL)).u32[0];
  v23 = vmulq_f32(v21, *a3->f32);
  v24 = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).f32[0];
  *a5 = v24;
  v25 = *a4;
  if (*a4 > v24)
  {
    *a4 = v24;
    *a5 = v25;
  }

  return result;
}

_DWORD *sub_1AFD885CC@<X0>(_DWORD *result@<X0>, int8x16_t *a2@<X1>, float32x4_t *a3@<X8>, __n128 a4@<Q6>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>, __n128 a9@<Q4>, __n128 a10@<Q5>)
{
  v11 = result[2];
  if (v11 <= 4)
  {
    if (!v11)
    {
      v36.i64[0] = 0x8000000080000000;
      v36.i64[1] = 0x8000000080000000;
      *a3 = veorq_s8(vandq_s8(*a2, v36), *(result + 3));
      return result;
    }

    if (v11 != 1)
    {
      if (v11 == 4)
      {
        v12 = *(result + 17);
        v13 = result[31];
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    v45 = *a2;
    v45.i32[2] = a2->i32[2];
    v46 = *(result + 5);
    v47 = *(result + 6);
    result += 20;
    v48 = vmulq_f32(v45, *(result + 2));
    v45.i32[3] = 0;
    v49 = vmulq_f32(v46, v45);
    v50 = vmulq_f32(v45, v47);
    v48.i32[3] = 0;
    v51 = vadd_f32(vpadd_f32(*v49.i8, *v50.i8), vzip1_s32(*&vextq_s8(v49, v49, 8uLL), *&vextq_s8(v50, v50, 8uLL)));
    v52 = vpadd_f32(vpadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)), 0);
    v53 = 2;
    if (v51.f32[1] >= v52.f32[0])
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    if ((vcgt_f32(v52, v51).u8[0] & 1) == 0)
    {
      v53 = 0;
    }

    if (v51.f32[0] < v51.f32[1])
    {
      v53 = v54;
    }

    v55 = *&result[4 * v53];
LABEL_54:
    a3->i64[0] = v55.i64[0];
    a3->i32[2] = v55.i32[2];
LABEL_60:
    a3->i32[3] = 0;
    return result;
  }

  if (v11 > 9)
  {
    if (v11 != 10)
    {
      if (v11 == 13)
      {
        v74 = *(result + 3);
        v14 = a2->i32[0];
        v15 = *&a2->i32[1];
        v72 = v15;
        v73[0] = v14;
        v16 = *&a2->i32[2];
        v71 = v16;
        v17 = result[18];
        v18 = v17;
        v19 = &v69;
        v20 = v73;
        v21 = &v70;
        result = v73;
        v22 = v73;
        if (v17 == 1)
        {
          v21 = &v69;
          v20 = &v72;
          v19 = &v70;
          v23 = &v74;
        }

        else
        {
          v22 = &v72;
          v23 = &v74.i32[1];
        }

        v24 = v17 == 2;
        if (v17 == 2)
        {
          v16 = v15;
          v25 = &v69;
        }

        else
        {
          v25 = &v68;
        }

        if (v17 == 2)
        {
          v26 = &v68;
        }

        else
        {
          v26 = v21;
        }

        if (v24)
        {
          v27 = &v71;
        }

        else
        {
          v27 = v20;
        }

        if (v24)
        {
          v19 = &v70;
          v28 = v73;
        }

        else
        {
          v28 = v22;
        }

        if (v24)
        {
          v29 = &v74;
        }

        else
        {
          v29 = v23;
        }

        v30 = v74.f32[v18];
        v31 = v29->f32[0];
        v32 = *v28;
        v33 = sqrtf((v16 * v16) + (v32 * v32));
        if (v33 == 0.0)
        {
          *v19 = v31;
          if (*v27 >= 0.0)
          {
            v65 = v30;
          }

          else
          {
            v65 = -v30;
          }

          *v26 = v65;
          v35 = 0.0;
        }

        else
        {
          v34 = v31 / v33;
          *v19 = v34 * v32;
          if (*v27 < 0.0)
          {
            v30 = -v30;
          }

          *v26 = v30;
          v35 = v34 * v16;
        }

        *v25 = v35;
        v66 = v68;
        v67 = v69;
        a3->i32[0] = v70;
        a3->i32[1] = v67;
        a3->i32[2] = v66;
        goto LABEL_60;
      }

LABEL_35:
      v37 = *(*result + 136);

      return v37(a5, a6, a7, a8, a9, a10, a4);
    }

    v38 = *a2;
    v38.i64[1] = a2->u32[2];
    v39 = result[18];
    v40 = *&result[v39 + 12];
    v41 = *&result[(v39 + 2) % 3 + 12];
    v42 = vmulq_f32(v38, v38);
    v43 = vadd_f32(*&vextq_s8(v42, v42, 8uLL), vpadd_f32(*v42.i8, *v42.i8)).f32[0];
    if (v43 >= 0.0001)
    {
      v44 = vmulq_n_f32(v38, 1.0 / sqrtf(v43));
    }

    else
    {
      v44 = xmmword_1AFE20150;
    }

    v74 = 0uLL;
    v74.f32[v39] = v40;
    v56 = vmulq_n_f32(v44, v41);
    v57 = vmulq_n_f32(v44, *(result + 16));
    v58 = vsubq_f32(vaddq_f32(v74, v56), v57);
    v58.i32[3] = 0;
    v59 = vmulq_f32(v44, v58);
    a4.n128_u64[0] = vpadd_f32(*v59.i8, *v59.i8);
    v60 = vextq_s8(v59, v59, 8uLL);
    *v60.f32 = vadd_f32(a4.n128_u64[0], *v60.f32);
    a4.n128_u32[0] = -581039253;
    v61 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v60, a4), 0), v58, 0);
    v60.f32[0] = fmaxf(v60.f32[0], -1.0e18);
    v74 = 0uLL;
    v74.f32[v39] = -v40;
    v62 = vsubq_f32(vaddq_f32(v74, v56), v57);
    v62.i32[3] = 0;
    v63 = vmulq_f32(v44, v62);
    *v56.f32 = vpadd_f32(*v63.i8, *v63.i8);
    v64 = vextq_s8(v63, v63, 8uLL);
    *v64.f32 = vadd_f32(*v56.f32, *v64.f32);
    v55 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v64, v60), 0), v62, v61);
    goto LABEL_54;
  }

  if (v11 != 5)
  {
    if (v11 == 8)
    {
      *a3 = 0uLL;
      return result;
    }

    goto LABEL_35;
  }

  v12 = *(result + 15);
  v13 = result[32];
LABEL_39:

  return sub_1AF0F9864(a2, v12, v13, result + 2, a3);
}

float32x4_t sub_1AFD88988@<Q0>(_DWORD *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, __n128 a4@<Q6>, __n128 a5@<Q2>, __n128 a6@<Q3>, __n128 a7@<Q4>, __n128 a8@<Q5>)
{
  v10 = *a2;
  v11 = vmulq_f32(v10, v10);
  a5.n128_u64[0] = vpadd_f32(*v11.i8, *v11.i8);
  v12 = vextq_s8(v11, v11, 8uLL);
  v12.n128_u64[0] = vadd_f32(a5.n128_u64[0], v12.n128_u64[0]);
  if (v12.n128_f32[0] < 1.4211e-14)
  {
    v10 = xmmword_1AFE47D00;
    v22 = xmmword_1AFE47D00;
    __asm { FMOV            V1.2S, #1.0 }

    v12.n128_u64[0] = vpadd_f32(_D1, _D1);
    v12.n128_f32[0] = v12.n128_f32[0] + 1.0;
  }

  a5.n128_u32[0] = 1.0;
  v12.n128_f32[0] = 1.0 / sqrtf(v12.n128_f32[0]);
  v22 = vmulq_n_f32(v10, v12.n128_f32[0]);
  sub_1AFD885CC(a1, &v22, &v21, a4, v22, v12, a5, a6, a7, a8);
  sub_1AFD88A34(a1);
  v19 = vmulq_n_f32(v22, v18);
  v19.i32[3] = 0;
  result = vaddq_f32(v21, v19);
  *a3 = result;
  return result;
}

_DWORD *sub_1AFD88A34(_DWORD *result)
{
  v1 = result[2];
  if (v1 > 7)
  {
    if (v1 != 13 && v1 != 10 && v1 != 8)
    {
      return (*(*result + 96))();
    }
  }

  else if ((v1 - 4) >= 2 && v1 >= 2)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t sub_1AFD88AB0(uint64_t a1, uint64_t a2, int a3)
{
  sub_1AFD8C8EC(a1);
  *v6 = &unk_1F2571CF0;
  *(v6 + 120) = a2;
  *(v6 + 8) = 3;
  if (a3)
  {
    sub_1AFD8C7F8(a1);
  }

  return a1;
}

void sub_1AFD88B20(uint64_t a1@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v5 = vmulq_f32(v4, v4);
  v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
  if (v6 >= 0.0001)
  {
    v7 = vmulq_n_f32(v4, 1.0 / sqrtf(v6));
  }

  else
  {
    v7 = xmmword_1AFE20150;
  }

  v12 = 0uLL;
  v11 = &unk_1F2571E00;
  v13 = -581039253;
  v14 = v7;
  v8 = *(a1 + 120);
  v9 = xmmword_1AFEAC070;
  v10 = xmmword_1AFEABE60;
  (*(*v8 + 16))(v8, &v11, &v9, &v10);
  *a3 = v12;
  nullsub_106();
}

void sub_1AFD88C18(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v24 = v4;
    v25 = v5;
    v6 = a3;
    v9 = a4;
    v10 = (a4 + 3) & 0xFFFFFFFC;
    v11 = vdupq_n_s64(a4 - 1);
    v12 = xmmword_1AFE21100;
    v13 = xmmword_1AFE21110;
    v14 = (a3 + 44);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 8) = -581039253;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 4) = -581039253;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = -581039253;
        v14[4] = -581039253;
      }

      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 16;
      v10 -= 4;
    }

    while (v10);
    do
    {
      v20 = &unk_1F2571E00;
      v21 = 0uLL;
      v22 = -581039253;
      v17 = *a2++;
      v23 = v17;
      v18 = xmmword_1AFEAC070;
      v19 = xmmword_1AFEABE60;
      (*(**(a1 + 120) + 16))(*(a1 + 120), &v20, &v18, &v19);
      *v6++ = v21;
      nullsub_106();
      --v9;
    }

    while (v9);
  }
}

float32x4_t sub_1AFD88DB0@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*a1 + 136))(a1);
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
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

void sub_1AFD88F1C(void *a1, double a2)
{
  sub_1AFD8A7AC(a1);

  sub_1AFDA72A0(v2);
}

void sub_1AFD88F50()
{
  nullsub_106();

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AFD88F88(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 48);
  v4 = *(result + 32);
  do
  {
    v5 = vmulq_f32(v3, *(a2 + v2));
    v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
    if (v6 > v4)
    {
      *(result + 32) = v6;
      *(result + 16) = *(a2 + v2);
      v4 = v6;
    }

    v2 += 16;
  }

  while (v2 != 48);
  return result;
}

float32x4_t *sub_1AFD88FD0(float32x4_t *a1, float32x4_t *a2)
{
  sub_1AFD86E64(a1);
  *v4 = &unk_1F2571E28;
  *(v4 + 72) = 1;
  sub_1AFD82E40(v4, a2->f32, 0.1);
  *v5.i64 = (*(a1->i64[0] + 96))(a1);
  v12 = v5;
  v6 = (*(a1->i64[0] + 96))(a1);
  v11 = LODWORD(v6);
  v7 = (*(a1->i64[0] + 96))(a1);
  v8 = v12;
  v8.i32[1] = v11;
  v8.f32[2] = v7;
  v9 = vsubq_f32(vmulq_f32(*a2, a1[2]), v8);
  v9.i32[3] = 0;
  a1[3] = v9;
  a1->i32[2] = 13;
  return a1;
}

float32x4_t sub_1AFD890EC(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  *&v8 = (*(a1->i64[0] + 96))(a1);
  v9 = *(a2 + 48);
  v10 = vdupq_lane_s32(v8, 0);
  v10.i32[3] = 0;
  v11 = vaddq_f32(a1[3], v10);
  v12 = vmulq_f32(v11, vandq_s8(*a2, xmmword_1AFEABEA0));
  v13 = vmulq_f32(v11, vandq_s8(*(a2 + 16), xmmword_1AFEABEA0));
  v14 = vmulq_f32(v11, vandq_s8(*(a2 + 32), xmmword_1AFEABEA0));
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vsubq_f32(v9, v12);
  v15.i32[3] = 0;
  *a3 = v15;
  result = vaddq_f32(v9, v12);
  *a4 = result;
  return result;
}

void sub_1AFD891BC(float32x4_t *a1, uint64_t a2, float a3)
{
  v20 = a1[3];
  *v6.i64 = (*(a1->i64[0] + 96))(a1);
  v19 = v6;
  v7 = (*(a1->i64[0] + 96))(a1);
  v18 = LODWORD(v7);
  v8 = (*(a1->i64[0] + 96))(a1);
  v9 = v19;
  v9.i32[1] = v18;
  v9.f32[2] = v8;
  v15 = vaddq_f32(v20, v9);
  v10 = a1[4].i32[2];
  v11 = vmulq_f32(v15, v15).f32[0];
  v12 = ((a3 * 0.25) * v11) + ((a3 / 12.0) * vmuls_lane_f32(vmuls_lane_f32(4.0, v15, 2), v15, 2));
  v13 = (a3 * 0.5) * v11;
  v14 = (a3 * 0.25) * v11;
  v15.f32[0] = ((a3 * 0.25) * (v15.f32[1] * v15.f32[1])) + ((a3 / 12.0) * ((4.0 * v15.f32[0]) * v15.f32[0]));
  v16 = (a3 * 0.5) * (v15.f32[1] * v15.f32[1]);
  if (v10)
  {
    v16 = v14 + ((a3 / 12.0) * (v15.f32[1] * (v15.f32[1] * 4.0)));
    v17 = v13;
  }

  else
  {
    v17 = v15.f32[0];
  }

  if (v10)
  {
    v15.f32[0] = v14 + ((a3 / 12.0) * (v15.f32[1] * (v15.f32[1] * 4.0)));
  }

  if (v10 == 2)
  {
    v16 = v12;
    v17 = v12;
  }

  *a2 = v16;
  *(a2 + 4) = v17;
  if (v10 == 2)
  {
    v15.f32[0] = v13;
  }

  *(a2 + 8) = v15.i32[0];
  *(a2 + 12) = 0;
}

uint64_t sub_1AFD89320@<X0>(uint64_t result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *(result + 48);
  v4 = *(result + 52);
  v5 = *a2;
  v6 = a2[2];
  v7 = sqrtf((v6 * v6) + (v5 * v5));
  if (v7 == 0.0)
  {
    if (a2[1] < 0.0)
    {
      v4 = -v4;
    }

    v9 = 0.0;
  }

  else
  {
    v8 = v3 / v7;
    v3 = v5 * v8;
    if (a2[1] < 0.0)
    {
      v4 = -v4;
    }

    v9 = v6 * v8;
  }

  *a3 = v3;
  a3[1] = v4;
  a3[2] = v9;
  return result;
}

__n128 sub_1AFD89380(uint64_t a1, uint64_t a2, __n128 *a3, unsigned int a4, __n128 a5)
{
  if (a4 >= 1)
  {
    v5 = a4;
    v6 = (a2 + 4);
    do
    {
      v7 = *(a1 + 48);
      v8 = *(v6 - 1);
      v9 = v6[1];
      v10 = sqrtf((v9 * v9) + (v8 * v8));
      v11 = -*(a1 + 52);
      if (v10 == 0.0)
      {
        if (*v6 >= 0.0)
        {
          v11 = *(a1 + 52);
        }

        v13 = 0.0;
      }

      else
      {
        v12 = v7 / v10;
        v7 = v8 * v12;
        if (*v6 >= 0.0)
        {
          v11 = *(a1 + 52);
        }

        v13 = v9 * v12;
      }

      a5.n128_u64[0] = __PAIR64__(LODWORD(v11), LODWORD(v7));
      a5.n128_f32[2] = v13;
      *a3++ = a5;
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  result.n128_f64[0] = a5.n128_f64[0];
  result.n128_f32[2] = a5.n128_f32[2];
  return result;
}