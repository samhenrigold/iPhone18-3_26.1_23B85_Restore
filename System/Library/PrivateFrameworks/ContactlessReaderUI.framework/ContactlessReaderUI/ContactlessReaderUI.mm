int8x16_t Main_theDots43_graph_5FFFB499_88F0_4B6A_BCBA_6EF5652B911B(int8x16_t result, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  result.i64[1] = vextq_s8(*a4, *a4, 8uLL).u64[0];
  *a4 = result;
  return result;
}

int8x16_t __vfx_script_theDots43_graph_5FFFB499_88F0_4B6A_BCBA_6EF5652B911B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result.i64[0] = **(arguments_buffer + 16);
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

__n128 __vfx_script_theDots43_graph_36CA844C_8E91_48B8_A106_31932436F98D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result.n128_u64[0] = **(arguments_buffer + 16);
  result.n128_u32[3] = 1.0;
  **(arguments_buffer + 24) = result;
  return result;
}

void Spawn_theDots43_graph_2D76B3B9_EBB8_405E_8D64_86B1CBD816F5(const void *a1, unsigned int a2, float a3, uint64_t a4, float a5, float a6, float *a7, float *a8, float *a9, float *a10)
{
  v10 = 0;
  v11 = (a3 * 40.0);
  v12 = a3 * 30.0;
  v13 = 0;
  v14 = a4 == 3 || a4 == 0;
  v15 = v14;
  v16 = v11;
  if (v14)
  {
    v10 = 1;
  }

  if (v14)
  {
    v13 = 1;
  }

  v17 = v12;
  v18 = (a5 * a6);
  if (v10)
  {
    v16 = 0.0;
  }

  *a7 = v16;
  if (v13)
  {
    v17 = 0.0;
  }

  *a8 = v17;
  *a9 = v17;
  if (v15)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  *a10 = v19;
}

uint64_t __vfx_script_theDots43_graph_2D76B3B9_EBB8_405E_8D64_86B1CBD816F5()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 56);
  v2 = *(result + 64);
  v3 = *(result + 72);
  v4 = **(result + 16);
  v5 = **(result + 24);
  v7 = v5 == 3 || v5 == 0;
  v8 = (v4 * 40.0);
  v9 = (v4 * 30.0);
  v10 = (**(result + 32) * **(result + 40));
  if (v7)
  {
    v8 = 0.0;
  }

  **(result + 48) = v8;
  if (v7)
  {
    v9 = 0.0;
  }

  *v1 = v9;
  *v2 = v9;
  if (v7)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  *v3 = v11;
  return result;
}

float Init_theDots43_graph_BCD27D5D_75F7_4364_B275_47FF3D6A254D(float a1, float a2, __n128 a3, uint64_t a4, uint64_t a5, float *a6, __int128 *a7, __n128 *a8, __int128 *a9, __int128 *a10, __int128 *a11, int32x4_t *a12, __n128 *a13)
{
  v15 = *a9;
  v16 = *a10;
  v17 = *a11;
  v18 = *a7;
  *&v13 = -1.03 * a3.n128_f32[0];
  *&v14 = 1.03 * a3.n128_f32[0];
  v19 = a3;
  v19.n128_u32[1] = a13->n128_u32[1];
  v20 = a3;
  v20.n128_u32[1] = a8->n128_u32[1];
  *a12 = vdupq_lane_s32(a3.n128_u64[0], 1);
  v21 = fminf(a1, a2);
  result = fmaxf(a1, a2);
  *a6 = v21;
  a6[1] = result;
  DWORD1(v13) = DWORD1(v15);
  DWORD2(v13) = DWORD2(v15);
  *a9 = v13;
  DWORD2(v16) = a3.n128_u32[1];
  *a10 = v16;
  DWORD1(v14) = DWORD1(v17);
  DWORD2(v14) = DWORD2(v17);
  *a11 = v14;
  v19.n128_u32[2] = a3.n128_u32[1];
  *a13 = v19;
  DWORD2(v18) = vmuls_lane_f32(-1.01, a3.n128_u64[0], 1);
  *a7 = v18;
  v20.n128_u32[2] = a3.n128_u32[1];
  *a8 = v20;
  return result;
}

float __vfx_script_theDots43_graph_BCD27D5D_75F7_4364_B275_47FF3D6A254D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v6 = arguments_buffer[7];
  v7 = arguments_buffer[8];
  v8 = arguments_buffer[9];
  v9 = arguments_buffer[10];
  v10 = arguments_buffer[11];
  v11 = arguments_buffer[12];
  v12 = *v1;
  v13 = *v2;
  *&v14 = *v3;
  v15 = *v7;
  v16 = *v8;
  v17 = *v9;
  v18 = *v5;
  v19 = vmuls_lane_f32(-1.01, *v3, 1);
  *&v20 = -1.03 * COERCE_FLOAT(*v3);
  v21 = v14;
  DWORD1(v21) = *(v11 + 4);
  *&v22 = 1.03 * COERCE_FLOAT(*v3);
  v23 = v14;
  DWORD1(v23) = *(v6 + 4);
  *v10 = vdupq_lane_s32(*v3, 1);
  v24 = fminf(v12, v13);
  result = fmaxf(v12, v13);
  *v4 = v24;
  v4[1] = result;
  DWORD1(v20) = DWORD1(v15);
  DWORD2(v20) = DWORD2(v15);
  *v7 = v20;
  DWORD2(v16) = DWORD1(v14);
  *v8 = v16;
  DWORD1(v22) = DWORD1(v17);
  DWORD2(v22) = DWORD2(v17);
  DWORD2(v21) = DWORD1(v14);
  *v9 = v22;
  *v11 = v21;
  *(&v18 + 2) = v19;
  DWORD2(v23) = DWORD1(v14);
  *v5 = v18;
  *v6 = v23;
  *(v5 + 3) = 1065353216;
  *(v7 + 3) = 1065353216;
  *(v9 + 3) = 1065353216;
  return result;
}

__n128 Update_theDots43_graph_5084D6A9_79BC_4F64_86C8_E5E14A582B60(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, __n128 *a5)
{
  v10 = *a5;
  if (a3)
  {
    v7 = 0.2;
  }

  else
  {
    v7 = 0.0;
  }

  vfx_script_clock_time();
  v8.n128_f32[0] = v8.n128_f64[0];
  v8.n128_f32[0] = v8.n128_f32[0] * 0.01;
  *a4 = v7;
  *(v8.n128_u64 + 4) = *(&v10 + 4);
  *a5 = v8;
  result.n128_u64[0] = v8.n128_u64[0];
  result.n128_u32[2] = v8.n128_u32[2];
  return result;
}

__n128 __vfx_script_theDots43_graph_5084D6A9_79BC_4F64_86C8_E5E14A582B60(uint64_t a1)
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 32);
  v12 = *v3;
  if (**(arguments_buffer + 16))
  {
    v4 = 0.2;
  }

  else
  {
    v4 = 0.0;
  }

  vfx_script_clock_time();
  *&v5 = v5;
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.n128_f32[0] = *&v5 * 0.01;
  *v2 = v4;
  result = v12;
  *(_Q1.n128_u64 + 4) = *(v12.n128_u64 + 4);
  *v3 = _Q1;
  return result;
}

__n128 Render_theDots43_graph_22359051_1A50_4A9E_9C98_BE787048611B(__n128 a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  a1.n128_u32[1] = HIDWORD(a4->n128_u64[0]);
  a1.n128_u32[2] = a4->n128_u64[1];
  *a4 = a1;
  result.n128_f64[0] = a1.n128_f64[0];
  result.n128_f32[2] = a1.n128_f32[2];
  return result;
}

__n128 __vfx_script_theDots43_graph_22359051_1A50_4A9E_9C98_BE787048611B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  __asm { FMOV            V0.4S, #1.0 }

  LODWORD(_Q0) = **(arguments_buffer + 16);
  DWORD1(_Q0) = HIDWORD(*v1);
  DWORD2(_Q0) = v1[1];
  *v1 = _Q0;
  result.n128_u64[0] = _Q0;
  result.n128_u32[2] = DWORD2(_Q0);
  return result;
}

float Spawn_theDots43_graph_DE046CD1_7FE7_4906_B9F1_F72E3C619103(const void *a1, unsigned int a2, float a3, uint64_t a4, float *a5)
{
  v5 = a3;
  if (a4)
  {
    v5 = 0;
  }

  result = v5;
  *a5 = v5;
  return result;
}

float __vfx_script_theDots43_graph_DE046CD1_7FE7_4906_B9F1_F72E3C619103()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  if (**(arguments_buffer + 24))
  {
    v1 = 0;
  }

  else
  {
    v1 = **(arguments_buffer + 16);
  }

  result = v1;
  **(arguments_buffer + 32) = v1;
  return result;
}

float Init_theDots43_graph_7305A5D5_5654_4FA6_A663_A585F6E30B0D(float a1, float a2, __n128 a3, uint64_t a4, uint64_t a5, float *a6, __n128 *a7)
{
  a3.n128_u32[1] = a7->n128_u32[1];
  *a6 = fminf(a1, a2);
  a6[1] = fmaxf(a1, a2);
  result = 5.0;
  a3.n128_u32[2] = 5.0;
  *a7 = a3;
  return result;
}

float __vfx_script_theDots43_graph_7305A5D5_5654_4FA6_A663_A585F6E30B0D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4 = **(arguments_buffer + 24);
  *&v5 = **(arguments_buffer + 32);
  DWORD1(v5) = *(v2 + 4);
  *v1 = fminf(v3, v4);
  v1[1] = fmaxf(v3, v4);
  result = 5.0;
  DWORD2(v5) = 5.0;
  *v2 = v5;
  return result;
}

void Update_theDots43_graph_2B30E278_AC76_44BE_AB61_653374A3FC69(const void *a1, unsigned int a2, uint64_t a3, float a4, float a5, float *a6)
{
  v6 = (a4 - a5) > 1.0 && a3 == 0;
  v7 = 0.4;
  if (!v6)
  {
    v7 = 0.0;
  }

  *a6 = v7;
}

uint64_t __vfx_script_theDots43_graph_2B30E278_AC76_44BE_AB61_653374A3FC69()
{
  result = vfx_script_get_arguments_buffer();
  v1 = (**(result + 24) - **(result + 32)) > 1.0 && **(result + 16) == 0;
  v2 = 0.4;
  if (!v1)
  {
    v2 = 0.0;
  }

  **(result + 40) = v2;
  return result;
}

float Main_theDots43_graph_CE4C8270_6015_4AB6_BEA3_093561972C9B(const void *a1, unsigned int a2, uint64_t a3, float a4, float a5, int a6, const void *a7, float a8, const void *a9, float a10, float a11, float a12, float a13, BOOL *a14, float *a15, float *a16, float *a17, float *a18, float *a19, float *a20, float *a21, float *a22, float *a23, float *a24)
{
  v28 = a5;
  v30 = a3 == 2;
  if (a6)
  {
    a5 = a4;
  }

  v42 = a5;
  v41 = fminf(fmaxf((v28 - a4) / 1.8, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v40 = 0.09 * v31;
  vfx_script_texture_sample1d();
  v33 = powf(v32, 0.454);
  v34 = fminf(fmaxf((v28 - a11) * 0.5, 0.0), 1.0);
  if (a3 != 3)
  {
    a11 = v28;
  }

  v35 = a3 - 1;
  if (v35)
  {
    a12 = v28;
  }

  vfx_script_clock_delta_time();
  v37 = a10 - v36;
  if ((v30 & (a6 ^ 1)) != 0)
  {
    v37 = 1.5;
  }

  if (v35 >= 2)
  {
    v38 = v28;
  }

  else
  {
    v38 = a13;
  }

  *a14 = v30;
  *a15 = v42;
  *a16 = v41;
  *a17 = v40;
  *a18 = v33;
  *a19 = v34;
  *a20 = a11;
  *a21 = a12;
  *a22 = v37;
  result = (fminf(fmaxf((v28 - a13) / 3.0, 0.0), 1.0) * -210.0) + 300.0;
  *a23 = v38;
  *a24 = result;
  return result;
}

float __vfx_script_theDots43_graph_CE4C8270_6015_4AB6_BEA3_093561972C9B(uint64_t a1)
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 32);
  v4 = *(arguments_buffer + 112);
  v5 = *(arguments_buffer + 120);
  v6 = *(arguments_buffer + 128);
  v7 = *(arguments_buffer + 136);
  v8 = *(arguments_buffer + 144);
  v31 = *(arguments_buffer + 152);
  v32 = *(arguments_buffer + 104);
  v29 = *(arguments_buffer + 168);
  v30 = *(arguments_buffer + 160);
  v33 = *(arguments_buffer + 184);
  v34 = *(arguments_buffer + 176);
  v9 = **(arguments_buffer + 16);
  v10 = *v3;
  v11 = **(arguments_buffer + 40);
  v12 = **(arguments_buffer + 72);
  v13 = **(arguments_buffer + 80);
  v14 = **(arguments_buffer + 88);
  v15 = **(arguments_buffer + 96);
  v16 = v9 == 2;
  if (**(arguments_buffer + 40))
  {
    v17 = *v2;
  }

  else
  {
    v17 = *v3;
  }

  v28 = v17;
  v27 = fminf(fmaxf((v10 - *v2) / 1.8, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v26 = 0.09 * v18;
  vfx_script_texture_sample1d();
  v20 = powf(v19, 0.454);
  v21 = fminf(fmaxf((v10 - v13) * 0.5, 0.0), 1.0);
  if (v9 != 3)
  {
    v13 = v10;
  }

  if (v9 != 1)
  {
    v14 = v10;
  }

  vfx_script_clock_delta_time();
  v23 = v12 - v22;
  if ((v16 & (v11 ^ 1)) != 0)
  {
    v23 = 1.5;
  }

  if ((v9 - 1) >= 2)
  {
    v24 = v10;
  }

  else
  {
    v24 = v15;
  }

  *v32 = v16;
  *v4 = v28;
  *v5 = v27;
  *v6 = v26;
  *v7 = v20;
  *v8 = v21;
  *v31 = v13;
  *v30 = v14;
  *v29 = v23;
  result = (fminf(fmaxf((v10 - v15) / 3.0, 0.0), 1.0) * -210.0) + 300.0;
  *v34 = v24;
  *v33 = result;
  return result;
}

float32x2_t Main_theDots43_graph_A0481AEC_B1D8_4B78_9EBF_4FDAD85966B8(float32x2_t a1, float a2, float32x2_t a3, float32x2_t a4, uint64_t a5, uint64_t a6, float32x2_t *a7, float32x2_t *a8, float32x2_t *a9)
{
  *a7 = vmul_n_f32(vmul_f32(a1, vdup_n_s32(0x3F99999Au)), a2);
  result = vmul_n_f32(a4, a2);
  *a8 = vmul_n_f32(a3, a2);
  *a9 = result;
  return result;
}

float32x2_t __vfx_script_theDots43_graph_A0481AEC_B1D8_4B78_9EBF_4FDAD85966B8()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = *(arguments_buffer + 56);
  v3 = *(arguments_buffer + 64);
  result = vmul_n_f32(vmul_f32(**(arguments_buffer + 16), vdup_n_s32(0x3F99999Au)), *v1);
  v5 = vmul_n_f32(**(arguments_buffer + 32), *v1);
  v6 = vmul_n_f32(**(arguments_buffer + 40), *v1);
  **(arguments_buffer + 48) = result;
  *v2 = v5;
  *v3 = v6;
  return result;
}

double Render_theDots43_graph_A8A6477D_6307_4242_B152_EF604169D0BD(__n128 a1, double a2, uint64_t a3, uint64_t a4, __n128 *a5, __n128 *a6)
{
  *a5 = a1;
  a1.n128_f64[0] = a2;
  *a6 = a1;
  return a1.n128_f64[0];
}

double __vfx_script_theDots43_graph_A8A6477D_6307_4242_B152_EF604169D0BD()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  *&v3 = **(arguments_buffer + 16);
  *&v4 = **(arguments_buffer + 24);
  *v1 = v3;
  *v2 = v4;
  *(v1 + 12) = 1065353216;
  *(v2 + 12) = 1065353216;
  return *&v3;
}

uint64_t Main_theDots43_graph_5872B619_3E0E_483F_A17A_9A51AC199048(uint64_t a1, double a2, float a3, uint64_t a4, uint64_t a5, _OWORD *a6, float *a7)
{
  vfx_script_curve_create();
  vfx_script_curve_evaluate();
  v13 = v12 * 30.0;
  if (a5 == 3)
  {
    *&v11 = 1.0;
  }

  else
  {
    *&v11 = 0.0;
  }

  v14 = *&v11 * v13;
  *&v11 = a2;
  *a6 = v11;
  *a7 = v14;
  return vfx_script_curve_destroy();
}

uint64_t __vfx_script_theDots43_graph_5872B619_3E0E_483F_A17A_9A51AC199048(uint64_t a1)
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3 = *(arguments_buffer + 48);
  *&v4 = **(arguments_buffer + 16);
  v10 = v4;
  v5 = **(arguments_buffer + 32);
  vfx_script_curve_create();
  vfx_script_curve_evaluate();
  v7 = v6 * 30.0;
  if (v5 == 3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  *v2 = v10;
  *v3 = v8 * v7;
  result = vfx_script_curve_destroy();
  *(v2 + 12) = 1065353216;
  return result;
}

float32x2_t Main_theDots43_graph_ADCAE428_080C_4109_8059_A0751E5A7216(float32x2_t a1, float a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  result = vmul_n_f32(a1, a2);
  *a5 = result;
  return result;
}

float32x2_t __vfx_script_theDots43_graph_ADCAE428_080C_4109_8059_A0751E5A7216()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result = vmul_n_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  **(arguments_buffer + 32) = result;
  return result;
}

float Init_theDots43_graph_4C67E203_F67A_42BD_B2F6_DCD0D0603B38(float a1, float a2, uint64_t a3, uint64_t a4, float *a5)
{
  v5 = fminf(a1, a2);
  result = fmaxf(a1, a2);
  *a5 = v5;
  a5[1] = result;
  return result;
}

float __vfx_script_theDots43_graph_4C67E203_F67A_42BD_B2F6_DCD0D0603B38()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  result = fmaxf(*v1, *v2);
  *v3 = fminf(*v1, *v2);
  v3[1] = result;
  return result;
}

__n128 Update_theDots43_graph_ADD6D082_79B4_45F8_8A33_ED8E6F591675(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, __n128 *a8)
{
  v15 = *a8;
  vfx_script_texture_sample1d();
  if (a6 != 3)
  {
    v12 = 0.0;
  }

  v13.n128_f32[0] = a2 * 0.01;
  *a7 = v12;
  result = v15;
  *(v13.n128_u64 + 4) = *(v15.n128_u64 + 4);
  *a8 = v13;
  return result;
}

__n128 __vfx_script_theDots43_graph_ADD6D082_79B4_45F8_8A33_ED8E6F591675()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = *(arguments_buffer + 56);
  v3 = **(arguments_buffer + 32);
  v4 = **(arguments_buffer + 40);
  v12 = *v2;
  vfx_script_texture_sample1d();
  if (v3 != 3)
  {
    v5 = 0.0;
  }

  __asm { FMOV            V2.4S, #1.0 }

  _Q2.n128_f32[0] = v4 * 0.01;
  *v1 = v5;
  result = v12;
  *(_Q2.n128_u64 + 4) = *(v12.n128_u64 + 4);
  *v2 = _Q2;
  return result;
}

__n128 __vfx_script_theDots43_graph_7BFB6AE5_BE7F_4222_9EC8_BDCE36619F0E()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result.n128_u64[0] = **(arguments_buffer + 16);
  result.n128_u32[3] = 1.0;
  **(arguments_buffer + 24) = result;
  return result;
}

float Spawn_theDots43_graph_16212ED8_D4BB_4BC2_BDD7_69D537B91698(const void *a1, unsigned int a2, const void *a3, float a4, unint64_t a5, float *a6)
{
  vfx_script_texture_sample1d();
  v9 = 10000.0 * v8;
  v10 = 0.0;
  if (a5 == 2)
  {
    v10 = 1.0;
  }

  result = v10 * v9;
  *a6 = result;
  return result;
}

float __vfx_script_theDots43_graph_16212ED8_D4BB_4BC2_BDD7_69D537B91698()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = **(arguments_buffer + 32);
  vfx_script_texture_sample1d();
  v4 = 10000.0 * v3;
  v5 = 0.0;
  if (v2 == 2)
  {
    v5 = 1.0;
  }

  result = v4 * v5;
  *v1 = result;
  return result;
}

int32x4_t Init_theDots43_graph_54EAFB11_761C_4522_A4C8_96D05E554BDA(float a1, float a2, __n128 a3, int32x4_t a4, uint64_t a5, uint64_t a6, float *a7, __n128 *a8, int32x4_t *a9)
{
  v9 = *a8;
  v10 = *a9;
  *a7 = fminf(a1, a2);
  a7[1] = fmaxf(a1, a2);
  a3.n128_u32[1] = DWORD1(v9);
  a3.n128_u32[2] = DWORD2(v9);
  *a8 = a3;
  result = vextq_s8(vzip1q_s32(v10, a4), v10, 4uLL);
  *a9 = result;
  return result;
}

int8x16_t __vfx_script_theDots43_graph_54EAFB11_761C_4522_A4C8_96D05E554BDA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = *(arguments_buffer + 56);
  v3 = *(arguments_buffer + 64);
  v4 = **(arguments_buffer + 16);
  v5 = **(arguments_buffer + 24);
  LODWORD(v6) = **(arguments_buffer + 32);
  v7.i64[0] = **(arguments_buffer + 40);
  v8 = *v2;
  v9 = *v3;
  *v1 = fminf(v4, v5);
  v1[1] = fmaxf(v4, v5);
  DWORD1(v6) = DWORD1(v8);
  DWORD2(v6) = DWORD2(v8);
  *v2 = v6;
  result = vextq_s8(vzip1q_s32(v9, v7), v9, 4uLL);
  *v3 = result;
  *(v2 + 3) = 1065353216;
  return result;
}

void Update_theDots43_graph_9806A27E_9136_41EF_9897_C1BDF928916A(const void *a1, unsigned int a2, int a3, float *a4)
{
  v4 = 0.0;
  if (a3)
  {
    v4 = 1.0;
  }

  *a4 = v4;
}

uint64_t __vfx_script_theDots43_graph_9806A27E_9136_41EF_9897_C1BDF928916A()
{
  result = vfx_script_get_arguments_buffer();
  v1 = 0.0;
  if (**(result + 16))
  {
    v1 = 1.0;
  }

  **(result + 24) = v1;
  return result;
}

float ParticleInit_theDots43_particleInit_5(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, __int128 *a5, __n128 *a6, __n128 *a7)
{
  v7 = *a5;
  *a6 = a1;
  result = 1.0;
  a2.n128_u32[3] = 1.0;
  *a7 = a2;
  DWORD1(v7) = 0;
  *a5 = v7;
  return result;
}

__n128 ParticleInit_theDots43_particleInit_127(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, _OWORD *a6, _OWORD *a7, __n128 a8, float32x4_t a9)
{
  v29 = *(a5 + 8);
  v12 = a3 + a2;
  v13 = a3 + a2 + vfx_script_clock_simulation_index();
  v14 = vfx_script_clock_simulation_index();
  v15.i32[0] = v13;
  v15.i32[1] = v12 + v14;
  v16 = vmla_s32(0xF46964429B4474D8, v15, vdup_n_s32(0x2C9277B5u));
  v17 = vmul_s32(veor_s8(vshl_u32(v16, vsub_s32(0x300000003, vshr_n_u32(v16, 0x1CuLL))), v16), vdup_n_s32(0x108EF2D9u));
  __asm { FMOV            V1.2S, #1.0 }

  v23 = vorr_s8(veor_s8(vshl_u32(v17, 0xFFFFFFE1FFFFFFF7), vshl_u32(v17, 0xFFFFFFF7FFFFFFE1)), _D1);
  __asm { FMOV            V1.2S, #-1.0 }

  v28 = vmla_f32(0x3F80000000000000, 0x3ECCCCCC3DCCCCCDLL, vadd_f32(v23, _D1));
  vfx_script_texture_sample1d();
  *a6 = v25;
  *a7 = v25;
  result = a8;
  *&v27 = v28;
  *(&v27 + 1) = __PAIR64__(a8.n128_u32[0], v29);
  *a5 = v27;
  return result;
}

float ParticleInit_theDots43_particleInit_120(uint64_t a1, int a2, int a3, float32x4_t *a4, __n128 *a5, __int128 *a6, float32x4_t *a7, __n128 *a8, float32x4_t a9, float32_t a10, __n128 a11, float a12, __n128 a13)
{
  v47 = *a6;
  v21 = vfx_script_clock_simulation_index();
  v22 = a3 + a2;
  v23 = 277803737 * (((747796405 * (v22 + v21) - 1537097584) >> (((747796405 * (v22 + v21) - 1537097584) >> 28) + 4)) ^ (747796405 * (v22 + v21) - 1537097584));
  v24 = sqrtf(COERCE_FLOAT((v23 >> 31) ^ (v23 >> 9) | 0x3F800000) + -1.0);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v22 + v25) - 2093082855) >> (((747796405 * (v22 + v25) - 2093082855) >> 28) + 4)) ^ (747796405 * (v22 + v25) - 2093082855));
  v27 = __sincosf_stret((COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0) * 6.2832);
  *&v28 = v24 * v27.__cosval;
  *(&v28 + 1) = v24 * v27.__sinval;
  v29 = a9;
  v29.i32[2] = 0;
  v44 = vmulq_f32(v28, vdupq_n_s32(0x3E99999Au));
  v30 = vaddq_f32(v29, v44);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.f32[0] = a10;
  v46 = vmulq_f32(_Q1, v30);
  v36 = vfx_script_clock_simulation_index();
  v38 = 0.0;
  if (sqrtf(vaddv_f32(*&vmulq_f32(v44, v44))) > 0.15)
  {
    v38 = a12;
  }

  v39 = v46;
  v39.i32[3] = 1.0;
  *a4 = v39;
  *a7 = v46;
  v40 = a11;
  *a8 = a13;
  v37 = 277803737 * (((747796405 * (v22 + v36) - 2015290331) >> (((747796405 * (v22 + v36) - 2015290331) >> 28) + 4)) ^ (747796405 * (v22 + v36) - 2015290331));
  v40.n128_f32[3] = COERCE_FLOAT((v37 >> 31) ^ (v37 >> 9) | 0x3F800000) + -1.0;
  *a5 = v40;
  v41 = v47;
  *&v41 = v38;
  *a6 = v41;
  return *&v41;
}

double ParticleUpdate_theDots43_particleUpdate_29(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 *a13, float32x4_t *a14, uint64_t a15, uint64_t a16, int a17, float a18, uint64_t a19, float32x4_t a20, float a21)
{
  v33 = *a13;
  v31 = a5.f32[2];
  a6.i32[2] = 0;
  v23 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a4, a3, a5, 2), a2, *a5.f32, 1), a1, a5.f32[0]), a6);
  v24 = vmulq_f32(v23, v23);
  v30 = (fminf(fmaxf(sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) / 0.8, 0.0), 1.0) + 0.0) * a7;
  vfx_script_texture_sample1d();
  v32 = vmulq_n_f32(vmulq_n_f32(v25, v30), 1.0 - fminf(fmaxf((v31 - a18) / ((a18 + 0.5) - a18), 0.0), 1.0));
  vfx_script_texture_sample1d();
  v27 = vmulq_f32(v26, v32);
  *a14 = vmlaq_n_f32(v27, vsubq_f32(vmulq_f32(v32, xmmword_2440D5BD0), v27), a21);
  v28 = v33;
  DWORD1(v28) = 0;
  *a13 = v28;
  return *&v28;
}

double ParticleUpdate_theDots43_particleUpdate_107(int32x4_t a1, float32x4_t a2, float a3, float a4, float32x2_t a5, float32x4_t a6, int32x4_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float32x4_t *a11)
{
  a7.i32[0] = vadd_f32(*a1.i8, 0).u32[0];
  __asm { FMOV            V7.2S, #-4.0 }

  *a1.i8 = vmul_f32(*a1.i8, _D7);
  a7.i32[1] = a1.i32[1];
  v15 = vzip1q_s32(a7, a1);
  v15.i32[1] = 0;
  v16 = vsubq_f32(v15, a2);
  v17 = vmulq_f32(v16, v16);
  v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
  v18 = vdupq_lane_s32(*v17.f32, 0);
  v18.i32[3] = 0;
  v19 = vrsqrteq_f32(v18);
  v20 = vmulq_f32(v19, vrsqrtsq_f32(v18, vmulq_f32(v19, v19)));
  v21 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v17.f32[0] != 0.0)), 0x1FuLL));
  v21.i32[3] = 0;
  v22 = vbslq_s8(vcltzq_s32(v21), vmulq_f32(v16, vmulq_f32(v20, vrsqrtsq_f32(v18, vmulq_f32(v20, v20)))), v16);
  *v21.i32 = a3 - a4;
  v23 = fminf(fmaxf((a3 - a4) / 0.6, 0.0), 1.0);
  v24 = vmulq_n_f32(v22, (v23 * (v23 * (v23 * v23))) * 0.4);
  if (*v21.i32 > 0.0 && a10 == 1)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = vaddq_f32(a6, vmulq_n_f32(v24, vmuls_lane_f32(v26, a5, 1)));
  v27.i32[1] = 0;
  *a11 = v27;
  return *v27.i64;
}

int8x8_t ParticleUpdate_theDots43_particleUpdate_24(int8x8_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x8_t *a6)
{
  result = vbsl_s8(vceqd_s64(a5, 2), vdup_n_s32(0x3DCCCCCDu), vbsl_s8(vceqd_s64(a5, 1), a1, a2));
  *a6 = result;
  return result;
}

__n128 ParticleUpdate_theDots43_particleUpdate_85(uint64_t a1, int8x16_t a2, int8x16_t a3, int64x2_t a4, float a5, float a6, float32x4_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int8x16_t *a13, float32x4_t *a14, int8x16_t *a15, float *a16, unsigned int a17, int8x16_t *a18)
{
  v45 = a4;
  v49 = *a18;
  v25.i64[1] = a18->i64[1];
  v25.i64[0] = a11;
  a4.i64[0] = 3;
  v26 = vceqq_s64(v25, a4);
  v27 = vandq_s8(a2, v26);
  v28 = vdupq_lane_s64(v26.i64[0], 0);
  v46 = vbslq_s8(v28, a8, a9);
  v47 = vorrq_s8(v27, vbicq_s8(a3, v28));
  vfx_script_texture_sample1d();
  v43 = v29;
  vfx_script_clock_delta_time();
  v42 = v30;
  vfx_script_clock_delta_time();
  v36.i32[1] = v42;
  __asm { FMOV            V1.2S, #1.0 }

  *v36.i8 = vminnm_f32(vmaxnm_f32(vadd_f32(vext_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL), 4uLL), vand_s8(vmul_n_f32(vmul_f32(*v36.i8, __PAIR64__(LODWORD(a5), a17)), *&a3.i32[3] + 1.0), vcltz_s32(vshl_n_s32(vdup_n_s32((vmuls_lane_f32(0.3, a3, 3) + a6) > 0.5), 0x1FuLL)))), 0), _D1);
  v37 = vmulq_f32(vmulq_n_f32(v43, 1.0 - *&v36.i32[1]), a7);
  v38 = (1.0 - *v36.i32) * *v45.i32;
  if (!_ZF)
  {
    v38 = 0.0;
  }

  *v36.i8 = vand_s8(*v36.i8, vcltz_s32(vshl_n_s32(vdup_n_s32(a11 == 3), 0x1FuLL)));
  *a14 = v37;
  *a15 = v46;
  *a16 = v38;
  v39 = vextq_s8(vextq_s8(v49, v49, 4uLL), v36, 0xCuLL);
  v39.i32[3] = v49.i32[3];
  *a18 = v39;
  v40 = v47;
  v40.i32[2] = 0;
  *a13 = v40;
  result.n128_u64[0] = v40.i64[0];
  result.n128_u32[2] = v40.u32[2];
  return result;
}

float32x4_t ParticleUpdate_theDots43_particleUpdate_70(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, uint64_t a8, uint64_t a9, __int128 *a10, float32x4_t *a11)
{
  v11 = *a10;
  a6.i32[2] = 0;
  v12 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a4, a3, a5, 2), a2, *a5.f32, 1), a1, a5.f32[0]), a6);
  v13 = vmulq_f32(v12, v12);
  result = vmulq_n_f32(a7, fminf(fmaxf(sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)), 0.0), 1.0));
  *a11 = result;
  DWORD1(v11) = 0;
  *a10 = v11;
  return result;
}

void sub_243F4D7A0(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  sub_243F4D7D4(v2);
}

void sub_243F4D7D4(char a1)
{
  LOBYTE(v10) = sub_243FEA57C() & 1;
  v11 = v2;
  v3 = sub_2440D1C40();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = [v3 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v7 setOverrideUserInterfaceStyle_];

  if (a1)
  {
    return;
  }

  v8 = [v3 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_243F4DD0C();
}

void sub_243F4D9EC(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  sub_243F4DA20(v2);
}

void sub_243F4DA20(char a1)
{
  sub_243FED1CC(v9);
  v2 = sub_2440D1C40();
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v2 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v6 setOverrideUserInterfaceStyle_];

  if (a1)
  {
    return;
  }

  v7 = [v2 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_243F4DD0C();
}

id sub_243F4DBB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_243F4DC10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243F4DD0C()
{
  v1 = [v0 layer];
  v2 = [v1 disableUpdateMask];

  v3 = [v0 layer];
  [v3 setDisableUpdateMask_];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243F4DE64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F4E158(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  sub_2440D11D0();
  v7 = sub_2440D11E0();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, 0, 1, v7);
}

uint64_t sub_243F4E250(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_243F4E2B0()
{
  result = MCGestaltIsInternalBuild();
  byte_27EDC63E0 = result;
  return result;
}

void sub_243F4E308(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27EDC6698 != -1)
  {
    v33 = a1;
    v34 = a6;
    v35 = a5;
    swift_once();
    a1 = v33;
    a5 = v35;
    a6 = v34;
  }

  v8 = byte_27EDC63E0;
  if (byte_27EDC63E0 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v41 = a3;
      v42 = a4;
      v10 = a6;
      v11 = a5;

      MEMORY[0x245D57000](8250, 0xE200000000000000);
      MEMORY[0x245D57000](v11, v10);
      a4 = v42;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = sub_2440D11C0();
    v12 = sub_2440D3490();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v12))
    {
      v37 = v12;
      v38 = a3;
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v13 = 136446466;
      sub_2440D2F40();
      sub_243F4EF64();
      v14 = sub_2440D3690();
      v16 = v15;

      v17 = sub_243F4ECA0(8uLL, v14, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF0, &qword_2440D5CB8);
      v41 = sub_2440D3040();
      v42 = v24;
      MEMORY[0x245D57000](45, 0xE100000000000000);
      v25 = MEMORY[0x245D56F70](v17, v19, v21, v23);
      v27 = v26;

      MEMORY[0x245D57000](v25, v27);

      v28 = v41;
      v29 = v42;
      v41 = 2715432;
      v42 = 0xE300000000000000;
      if (v8)
      {
        MEMORY[0x245D57000](v28, v29);
      }

      else
      {
        MEMORY[0x245D57080](v28, v29);

        v30 = sub_2440D39C0();
        MEMORY[0x245D57000](v30);
      }

      v31 = sub_243F4E6F8(v41, v42, &v40);

      *(v13 + 4) = v31;
      *(v13 + 12) = 2082;
      v32 = sub_243F4E6F8(v38, a4, &v40);

      *(v13 + 14) = v32;
      _os_log_impl(&dword_243F48000, oslog, v37, "%{public}s.%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D58570](v36, -1, -1);
      MEMORY[0x245D58570](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_243F4E6F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243F4E7C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243F4F028(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_243F4E7C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243F4E8D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2440D3870();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_243F4E8D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_243F4E91C(a1, a2);
  sub_243F4EA4C(&unk_285773080);
  return v3;
}

void *sub_243F4E91C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243F4EB38(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2440D3870();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2440D3110();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243F4EB38(v10, 0);
        result = sub_2440D3810();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243F4EA4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_243F4EBAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243F4EB38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC0500, &qword_2440D5CD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243F4EBAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC0500, &qword_2440D5CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_243F4ECA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_2440D30E0();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_2440D31C0();
}

uint64_t sub_243F4ED5C(uint64_t a1)
{
  sub_2440D2F40();
  sub_243F4EF64();
  v1 = sub_2440D3690();
  v3 = v2;

  v4 = sub_243F4ECA0(8uLL, v1, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF0, &qword_2440D5CB8);
  v24 = sub_2440D3040();
  v25 = v11;
  MEMORY[0x245D57000](45, 0xE100000000000000);
  v12 = MEMORY[0x245D56F70](v4, v6, v8, v10);
  v14 = v13;

  MEMORY[0x245D57000](v12, v14);

  v21 = v24;
  if (qword_27EDC6698 != -1)
  {
    swift_once();
    v21 = v24;
  }

  if (byte_27EDC63E0 == 1)
  {
    v22 = v25;
  }

  else
  {
    MEMORY[0x245D57080](v21, v25, v15, v16, v17, v18, v19, v20);

    v21 = sub_2440D39C0();
  }

  MEMORY[0x245D57000](v21, v22, v15, v16, v17, v18, v19, v20);

  return 2715432;
}

unint64_t sub_243F4EF64()
{
  result = qword_27EDC4A50;
  if (!qword_27EDC4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4A50);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_243F4F028(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_243F4F0EC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for PINButtonModelFactory();
    v2 = sub_2440AB104();
    v3 = sub_243F5D774(v2, v6);
    v4 = (*(**(v0 + 48) + 312))(v3);
    v1 = sub_2440AB1C4(v6, v4, 0);
    __swift_destroy_boxed_opaque_existential_0(v6);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t (*sub_243F4F1D4(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_243F4F0EC();
  return sub_243F4F21C;
}

uint64_t sub_243F4F22C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    v1 = sub_243F7E4B0();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t (*sub_243F4F2A4(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_243F4F22C();
  return sub_243F4F2EC;
}

uint64_t sub_243F4F310@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4F3CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4F498(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__pinUIIsPresented[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4F61C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4F6D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4F7A4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__readingVOInstructions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4F928@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4F9E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4FAB0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__isIssuer[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4FC34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4FCF0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4FDBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentAuth[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4FF40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 544))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4FFFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F500C8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__showLockOnStatusBar[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F5024C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 592))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F50308(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F503D4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__cancelUnlockInstruction;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

__n128 sub_243F50544@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = v6;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double sub_243F505D0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 640))(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_243F5063C(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a1[3];
  v9[2] = a1[2];
  v9[3] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[1];
  v8[4] = *a1;
  v8[5] = v5;
  v6 = a1[3];
  v8[6] = a1[2];
  v8[7] = v6;

  sub_243F5F574(v9, v8, &qword_27EDBFF08, &qword_2440D5EC0);
  return sub_2440D1350();
}

uint64_t sub_243F506E8(_OWORD *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_243F50780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF18, &qword_2440D5F18);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF10, &qword_2440D5F10);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_243F508B8()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_didMerchantAuthorize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F508FC(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_didMerchantAuthorize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243F509AC()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_incomingCallAccepted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F509F0(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_incomingCallAccepted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243F50AB4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v3;
}

uint64_t sub_243F50B20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 808))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_243F50BDC(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_243F50C48(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_243F50D14(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_243F50E4C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentingPasscode[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F50FBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_243F51030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 880))();
  *a2 = result;
  return result;
}

uint64_t sub_243F51084(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 888);

  return v2(v3);
}

uint64_t sub_243F510E0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_243F51150(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

void sub_243F511F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_243F5127C(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2440D1310();
  return swift_endAccess();
}

uint64_t sub_243F512F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF30, &qword_2440D5FC0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28, &qword_2440D5FB8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243F5142C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF30, &qword_2440D5FC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__authModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28, &qword_2440D5FB8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

void sub_243F515A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_2440D1320();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_2440D1320();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_243F51708@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity;
  swift_beginAccess();
  return sub_243F5F574(v1 + v3, a1, &qword_27EDBFF40, &unk_2440D5FD0);
}

uint64_t sub_243F51770(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity;
  swift_beginAccess();
  sub_243F517D0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_243F517D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40, &unk_2440D5FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F518B8()
{
  v1 = *v0;
  sub_2440D3B20();
  MEMORY[0x245D57A30](v1);
  return sub_2440D3B50();
}

uint64_t sub_243F5192C(uint64_t a1)
{
  v2 = *v1;
  sub_2440D3B20();
  MEMORY[0x245D57A30](v2);
  return sub_2440D3B50();
}

char *sub_243F51980(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_243F5D03C(a1, a2);

  return v4;
}

char *sub_243F519E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "model destroyed", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  (*(*v1 + 984))(v8);
  swift_unknownObjectRelease();

  v12 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__pinUIIsPresented[0];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  v14 = *(*(v13 - 8) + 8);
  v14(v1 + v12, v13);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__readingVOInstructions, v13);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__isIssuer[0], v13);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentAuth[0], v13);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__showLockOnStatusBar[0], v13);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__cancelUnlockInstruction, v13);
  v15 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__topBarModel[0];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF10, &qword_2440D5F10);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);

  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentingPasscode[0], v13);

  v17 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__authModel;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28, &qword_2440D5FB8);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  sub_243F5EED4(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity, &qword_27EDBFF40, &unk_2440D5FD0);

  return v1;
}

uint64_t sub_243F51DE8()
{
  sub_243F519E4();

  return swift_deallocClassInstance();
}

void sub_243F51E40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  v54 = sub_243F4DF68();
  sub_243F5F574(v54, v9, &qword_27EDC0A50, &qword_2440D5CB0);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v9, 1, v10);
  v53 = v11;
  if (v13 == 1)
  {
    v14 = sub_243F5EED4(v9, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v15 = sub_2440D11C0();
    v16 = sub_2440D3490();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_243F48000, v15, v16, "cleaning", v17, 2u);
      MEMORY[0x245D58570](v17, -1, -1);
    }

    v14 = (*(v11 + 8))(v9, v10);
  }

  (*(**(v1 + 64) + 168))(v14);
  v18 = *(v1 + 40);
  v19 = *(**(v18 + 56) + 312);

  v19(v20);

  v22 = *(v1 + 32);
  v23 = *(*v22 + 504);
  v24 = (v23)(v21);
  if (sub_2440B3AD0(v24))
  {
    sub_243F5F574(v54, v6, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v12(v6, 1, v10) == 1)
    {
      v25 = sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v27 = sub_2440D11C0();
      v28 = sub_2440D3470();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_243F48000, v27, v28, "still active, canceling", v29, 2u);
        MEMORY[0x245D58570](v29, -1, -1);
      }

      v25 = (*(v53 + 8))(v6, v10);
    }

    (*(*v22 + 936))(v25);
    (*(*v22 + 904))(5);
    sub_243F5D774(v18 + 16, v55);
    v30 = v56;
    v31 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v32 = (*(v31 + 56))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0(v55);
    if (v32)
    {
      v33 = *(v1 + 16);
      if (v33)
      {
        v34 = *(*v22 + 944);
        swift_unknownObjectRetain();
        v35 = v34(2, 0);
        v37 = v36;
        v38 = sub_2440D0670();
        sub_243F5D81C(v35, v37);
        [v33 reportPINErrorWithError:30 analyticsData:v38];
LABEL_21:

        swift_unknownObjectRelease();
      }
    }
  }

  else if (*(*(v1 + 48) + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1 && ((*(*v1 + 496))() & 1) != 0 && ((*(*v1 + 760))() & 1) == 0)
  {
    LOBYTE(v55[0]) = v23();
    v58 = 5;
    sub_243F5D720();
    if ((sub_2440D2F50() & 1) == 0)
    {
      v26 = v52;
      sub_243F5F574(v54, v52, &qword_27EDC0A50, &qword_2440D5CB0);
      if (v12(v26, 1, v10) == 1)
      {
        sub_243F5EED4(v26, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v47 = sub_2440D11C0();
        v48 = sub_2440D3470();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_243F48000, v47, v48, "unauthorized termination during cleanup", v49, 2u);
          MEMORY[0x245D58570](v49, -1, -1);
        }

        (*(v53 + 8))(v26, v10);
      }

      (*(*v1 + 504))(0);
      (*(*v22 + 904))(5);
      v50 = *(v1 + 16);
      if (v50)
      {
        swift_unknownObjectRetain();
        sub_2440D1040();
        v38 = sub_2440D2F80();

        [v50 pinAuthResultWithError:v38 cancelsFlow:1];
        goto LABEL_21;
      }
    }
  }

  v39 = sub_243FA9620();
  swift_beginAccess();
  v40 = *(**v39 + 496);

  v40(v41);

  v42 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper;
  v43 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
  if (v43)
  {
    v44 = v43;
    sub_2440ABF24();

    v45 = *(v1 + v42);
    if (v45)
    {
      v46 = v45 + OBJC_IVAR____TtC19ContactlessReaderUI27PrivacyAuthenticatorWrapper_delegate;
      swift_beginAccess();
      *(v46 + 8) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_243F5263C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v56 - v3;
  v4 = sub_2440D2C80();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2440D2CA0();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D0AC0();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2440D08A0();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[4];
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(*v11 + 256);

  v13(sub_243F5D8A8, v12);

  v14 = sub_243FA9620();
  swift_beginAccess();
  v15 = *v14;
  v16 = *(**v14 + 208);

  v1[2] = v16(v17);
  v18 = swift_unknownObjectRelease();
  v19 = v16(v18);
  v20 = (*(*v11 + 232))(v19);
  v21 = v16(v20);
  if (v21)
  {
    (*(*v21 + 232))(v1);
  }

  v22 = *(*v15 + 488);

  v22(&unk_2440D5FF0, v1);

  v23 = *(*v15 + 472);

  v23(&unk_2440D6000, v1);

  (*(*v1 + 1000))(v24);
  sub_243F541E0();
  v26 = v1[5];
  v25 = v1[6];
  v27 = *(v26 + 56);
  v28 = *(*v25 + 336);

  v30 = v28(v29);
  (*(*v15 + 328))();
  (*(*v27 + 304))(v30 & 1, v10);

  (*(v57 + 8))(v10, v58);
  v31 = *(**(v26 + 56) + 352);

  v31(0);

  v33 = v1[8];
  v34 = (*(*v33 + 152))(v32);
  (*(*v11 + 888))(v34 & 1);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = *(*v33 + 176);

  v36(sub_243F5DB7C, v35);

  LODWORD(v35) = *(v25 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN);
  v38 = (*(*v15 + 304))(v37);
  v39 = v38;
  if (v35 == 1)
  {
    v40 = v59;
    if (v38)
    {
      (*((*MEMORY[0x277D85000] & *v38) + 0xF8))();
    }

    sub_2440D09C0();
  }

  else
  {
    v40 = v59;
    if (v38)
    {
      (*((*MEMORY[0x277D85000] & *v38) + 0x100))(1);
    }

    (*(*v15 + 408))(1);
    sub_2440D0A40();
  }

  sub_2440D0A90();
  (*(v60 + 8))(v40, v61);
  sub_243F5DB84();
  v61 = sub_2440D3530();
  aBlock[4] = sub_243F5DBD0;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor;
  v41 = _Block_copy(aBlock);

  v42 = v62;
  sub_2440D2C90();
  v69 = MEMORY[0x277D84F90];
  sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  v43 = v64;
  v44 = v67;
  sub_2440D3710();
  v45 = v61;
  MEMORY[0x245D57440](0, v42, v43, v41);
  _Block_release(v41);

  (*(v66 + 8))(v43, v44);
  (*(v63 + 8))(v42, v65);

  v47 = (*(*v25 + 192))(v46);
  v49 = v48;
  v51 = v25[2];
  v50 = v25[3];
  v52 = sub_2440D3390();
  v53 = v68;
  (*(*(v52 - 8) + 56))(v68, 1, 1, v52);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v1;
  v54[5] = v47;
  v54[6] = v49;
  v54[7] = v51;
  v54[8] = v50;

  sub_243F54830(0, 0, v53, &unk_2440D6018, v54);
}

uint64_t sub_243F5311C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243F531AC;

  return sub_243F532B4();
}

uint64_t sub_243F531AC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_243F532B4()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40, &unk_2440D5FD0);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F53394, 0, 0);
}

uint64_t sub_243F53394()
{
  v1 = *(v0 + 40);
  v2 = sub_243F4DF68();
  sub_243F5F574(v2, v1, &qword_27EDC0A50, &qword_2440D5CB0);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (v5(v1, 1, v3) == 1)
  {
    v6 = sub_243F5EED4(*(v0 + 40), &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v7 = sub_2440D11C0();
    v8 = sub_2440D3490();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_243F48000, v7, v8, "inCallHandler - triggered", v9, 2u);
      MEMORY[0x245D58570](v9, -1, -1);
    }

    v10 = *(v0 + 40);

    v6 = (*(v4 + 8))(v10, v3);
  }

  v11 = *(v0 + 24);
  (*(**(v0 + 16) + 928))(v6);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38, &qword_2440D5FC8);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_243F5EED4(v11, &qword_27EDBFF40, &unk_2440D5FD0);
  if (v13 == 1)
  {
    v14 = swift_task_alloc();
    *(v0 + 48) = v14;
    *v14 = v0;
    v14[1] = sub_243F537A8;
    v15 = *(v0 + 16);
    v16 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0x61486C6C61436E69, 0xEF292872656C646ELL, sub_243F5F510, v15, v16);
  }

  else
  {
    v17 = *(v0 + 32);
    sub_243F5F574(v2, v17, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v5(v17, 1, v3) == 1)
    {
      sub_243F5EED4(*(v0 + 32), &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3490();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_243F48000, v18, v19, "inCallHandler - bsAction already being processed", v20, 2u);
        MEMORY[0x245D58570](v20, -1, -1);
      }

      v21 = *(v0 + 32);

      (*(v4 + 8))(v21, v3);
    }

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_243F537A8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_243F53944;
  }

  else
  {
    v2 = sub_243F538BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243F538BC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_243F53944()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_243F539DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3 + 16;
  v5 = sub_243FA9620();
  swift_beginAccess();
  v6 = *(**v5 + 360);

  v6(1);

  sub_2440D2BA0();
  sub_2440D16E0();

  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = [v7 pinViewLoaded];
  }

  v8 = *(a1 + 32);
  result = (*(*v8 + 696))(v7);
  if (result)
  {
    (*(*v8 + 456))(v13);
    if (v13[5])
    {
      return sub_243F5EED4(v13, &qword_27EDBFF68, &qword_2440DDE10);
    }

    else
    {
      v10 = sub_2440D3390();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = a1;

      sub_243F54830(0, 0, v4, &unk_2440D6460, v11);
    }
  }

  return result;
}

uint64_t sub_243F53C34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF50, &qword_2440D6028);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF58, &qword_2440D6030);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2440D5CF0;
  v7 = sub_243FA9620();
  swift_beginAccess();
  v8 = *(**v7 + 304);

  v10 = v8(v9);

  if (v10)
  {
    (*((*MEMORY[0x277D85000] & *v10) + 0xD0))(v11);

    swift_allocObject();
    swift_weakInit();
    sub_243F5DD50(&qword_27EDBFF60, &qword_27EDBFF50, &qword_2440D6028, MEMORY[0x277CBCEC8]);
    v10 = sub_2440D1370();

    (*(v3 + 8))(v5, v2);
  }

  *(v6 + 32) = v10;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_subscribers) = v6;
}

void *sub_243F53E90(unsigned __int8 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  v6 = *a1;
  v7 = sub_243F4DF68();
  sub_243F5F574(v7, v5, &qword_27EDC0A50, &qword_2440D5CB0);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_243F5EED4(v5, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v10 = sub_2440D11C0();
    v11 = sub_2440D3490();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_243F48000, v10, v11, "incoming call", v12, 2u);
      MEMORY[0x245D58570](v12, -1, -1);
    }

    (*(v9 + 8))(v5, v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (v6 == 5 || (v19[7] = v6, v19[6] = 0, sub_243F5E0B8(), (sub_2440D2F50() & 1) == 0))
    {
      (*(*v14 + 552))(*(v14[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock));
      v18 = *(**(v14[5] + 56) + 248);

      v18(0);
    }

    else
    {
      (*(*v14 + 552))(0);
      v15 = *(**(v14[5] + 56) + 248);

      v15(1);

      v16 = *(**(v14[5] + 56) + 296);

      v16(v17);
    }
  }

  return result;
}

uint64_t sub_243F541E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  type metadata accessor for PINTopBarModelFactory();
  v5 = *(v0 + 48);
  v6 = swift_allocObject();
  swift_weakInit();

  sub_2440C74DC(v5, sub_243F5F310, v6, v15);

  v7 = sub_2440D3390();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_2440D3360();

  sub_243F5F368(v15, v14);
  v8 = sub_2440D3350();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v1;
  v11 = v15[1];
  *(v9 + 40) = v15[0];
  *(v9 + 56) = v11;
  v12 = v15[3];
  *(v9 + 72) = v15[2];
  *(v9 + 88) = v12;
  sub_243F54830(0, 0, v4, &unk_2440D6470, v9);
  sub_243F5F4BC(v15);
}

uint64_t sub_243F543B0(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0x100) == 0)
  {
    v3 = *(v1 + 56);
    v4 = type metadata accessor for AddDigitCommand();
    v7 = v1 + 32;
    v5 = *(v1 + 32);
    v6 = *(v7 + 8);

    v8 = sub_243F9CB14(v6, v5, v2);
    v38 = v4;
    v39 = &off_285775200;
LABEL_9:
    v37[0] = v8;
    (*(*v3 + 96))(v37);
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  if (!a1)
  {
    v17 = *(v1 + 16);
    if (v17)
    {
      v18 = *(**(v1 + 32) + 944);
      swift_unknownObjectRetain();
      v19 = v18(1, 0);
      v21 = v20;
      v22 = sub_2440D0670();
      sub_243F5D81C(v19, v21);
      [v17 reportPINErrorWithError:30 analyticsData:v22];

      swift_unknownObjectRelease();
    }

    v23 = *(v1 + 40);
    v24 = *(**(v23 + 56) + 296);

    v26 = v1;
    v24(v25);

    v3 = *(v1 + 56);
    v27 = type metadata accessor for CancelCommand();
    v28 = *(v26 + 32);

    v8 = sub_243F9F2F0(v23, v28);
    v38 = v27;
    v39 = &off_285775240;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v9 = *(v1 + 56);
    v10 = type metadata accessor for SubmitCommand();
    v12 = *(v1 + 32);
    v11 = *(v1 + 40);
    v13 = *(**(v1 + 48) + 408);

    v15 = v13(v14);
    v16 = sub_243F9CB14(v11, v12, v15 & 1);
    v38 = v10;
    v39 = &off_285775230;
  }

  else
  {
    type metadata accessor for MockDaemon();
    if (sub_243F62C7C(56))
    {
      v29 = *(v1 + 32);
      v30 = sub_243F4E2F4();
      return (*(*v29 + 848))(v30);
    }

    v32 = v1;
    v9 = *(v1 + 56);
    v33 = type metadata accessor for RemoveDigitCommand();
    v36 = v32 + 32;
    v35 = *(v32 + 32);
    v34 = *(v36 + 8);

    v16 = sub_243FA146C(v34, v35);
    v38 = v33;
    v39 = &off_285775210;
  }

  v37[0] = v16;
  (*(*v9 + 96))(v37);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_243F546D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  v6 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v6;
  v7 = a5[3];
  *(v5 + 48) = a5[2];
  *(v5 + 64) = v7;
  sub_2440D3360();
  *(v5 + 160) = sub_2440D3350();
  v9 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F5477C, v9, v8);
}

uint64_t sub_243F5477C()
{
  v1 = *(v0 + 152);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243F5F368(v1, v0 + 80);
  sub_2440D1350();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243F54830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243F5F574(a3, v25 - v10, &unk_27EDC03E0, &qword_2440D5FE0);
  v12 = sub_2440D3390();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243F5EED4(v11, &unk_27EDC03E0, &qword_2440D5FE0);
  }

  else
  {
    sub_2440D3380();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2440D3320();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2440D3060() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_243F5EED4(a3, &unk_27EDC03E0, &qword_2440D5FE0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243F5EED4(a3, &unk_27EDC03E0, &qword_2440D5FE0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_243F54B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243F5F574(a3, v25 - v10, &unk_27EDC03E0, &qword_2440D5FE0);
  v12 = sub_2440D3390();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243F5EED4(v11, &unk_27EDC03E0, &qword_2440D5FE0);
  }

  else
  {
    sub_2440D3380();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2440D3320();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2440D3060() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFC8, &qword_2440D6430);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_243F5EED4(a3, &unk_27EDC03E0, &qword_2440D5FE0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243F5EED4(a3, &unk_27EDC03E0, &qword_2440D5FE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFC8, &qword_2440D6430);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_243F54E44(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = v2[6];
  if (*(v5 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) == 1)
  {
    v6 = (*(*v2 + 328))();
    (*(*v6 + 280))(a1, a2);
  }

  else
  {
    v8 = (*(*v5 + 432))();
    return a1(v8 & 1);
  }
}

uint64_t sub_243F54F54(char a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(**(result + 32) + 888);

    v8(a1 & 1);

    v10 = (*(**(v7 + 32) + 552))(v9);
    if ((sub_2440B446C(v10 & 1) & 1) == 0 || (a1 & 1) == 0)
    {
    }

    v11 = *(**(v7 + 32) + 456);

    v11(v25, v12);

    if (v25[5])
    {
      sub_243F5EED4(v25, &qword_27EDBFF68, &qword_2440DDE10);
    }

    v13 = sub_243F4DF68();
    sub_243F5F574(v13, v5, &qword_27EDC0A50, &qword_2440D5CB0);
    v14 = sub_2440D11E0();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      sub_243F5EED4(v5, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v16 = sub_2440D11C0();
      v17 = sub_2440D3490();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_243F48000, v16, v17, "VO activated from AX: exiting", v18, 2u);
        MEMORY[0x245D58570](v18, -1, -1);
      }

      (*(v15 + 8))(v5, v14);
    }

    v19 = *(v7 + 56);
    v20 = type metadata accessor for SwitchAXCommand();
    v22 = *(v7 + 32);
    v21 = *(v7 + 40);

    v23 = sub_243FA14A4(v21, v22, 0);
    v24[3] = v20;
    v24[4] = &off_285775250;
    v24[0] = v23;
    (*(*v19 + 96))(v24);

    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  return result;
}

uint64_t sub_243F552CC()
{
  *(v0 + 24) = sub_2440D3360();
  *(v0 + 32) = sub_2440D3350();
  v2 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F55364, v2, v1);
}

uint64_t sub_243F55364()
{
  v1 = *(v0 + 16);

  (*(*v1 + 408))(1);

  return MEMORY[0x2822009F8](sub_243F55400, 0, 0);
}

uint64_t sub_243F55400()
{
  v1 = *(v0[2] + 40);
  v0[5] = v1;
  v2 = *(v1 + 56);
  v0[6] = v2;
  v3 = *(*v2 + 288);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_243F55540;

  return v6(3);
}

uint64_t sub_243F55540()
{

  if (v0)
  {

    v1 = sub_243F5F5F0;
  }

  else
  {

    v1 = sub_243F55688;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F55688()
{
  v1 = *(v0[5] + 56);
  v0[8] = v1;
  v2 = *(*v1 + 288);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_243F557C0;

  return v5(0);
}

uint64_t sub_243F557C0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {

    v2 = sub_243F55A5C;
  }

  else
  {

    v2 = sub_243F55908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243F55908(uint64_t a1)
{
  v1[11] = v1[10];
  v1[12] = sub_2440D3350();
  v3 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F5599C, v3, v2);
}

uint64_t sub_243F5599C()
{

  sub_2440D2BA0();
  sub_2440D16E0();

  return MEMORY[0x2822009F8](sub_243F55A48, 0, 0);
}

uint64_t sub_243F55A5C(uint64_t a1)
{
  *(v1 + 88) = 0;
  *(v1 + 96) = sub_2440D3350();
  v3 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F5599C, v3, v2);
}

uint64_t sub_243F55AEC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PINViewModel(0);
  result = sub_2440D12F0();
  *a2 = result;
  return result;
}

uint64_t sub_243F55B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_243F55B4C, 0, 0);
}

uint64_t sub_243F55B4C()
{
  v1 = *(*(v0[3] + 40) + 56);
  v0[4] = v1;
  v2 = *(*v1 + 288);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_243F55C88;

  return v5(0);
}

uint64_t sub_243F55C88()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_243F5F644;
  }

  else
  {

    v2 = sub_243F55DD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243F55DF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_2440D3390();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_243F54B30(0, 0, v3, &unk_2440D6410, v5);
}

uint64_t sub_243F55F10(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-1] - v4;
  v6 = sub_243F4DF68();
  sub_243F5F574(v6, v5, &qword_27EDC0A50, &qword_2440D5CB0);
  v7 = sub_2440D11E0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_243F5EED4(v5, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22[0] = v12;
      *v11 = 136315138;
      v13 = sub_2440D0D70();
      v15 = sub_243F4E6F8(v13, v14, v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_243F48000, v9, v10, "errorInDaemon: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245D58570](v12, -1, -1);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  sub_243F5D774(*(v2 + 40) + 16, v22);
  v16 = v23;
  v17 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v17 + 56))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0(v22);
  v18 = *(v2 + 32);
  v19 = sub_243F4E2F4();
  return (*(*v18 + 848))(v19);
}

uint64_t sub_243F561B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F56268, 0, 0);
}

uint64_t sub_243F56268()
{
  v1 = v0[18];
  v31 = sub_243F4DF68();
  sub_243F5F574(v31, v1, &qword_27EDC0A50, &qword_2440D5CB0);
  v2 = sub_2440D11E0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_243F5EED4(v0[18], &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v4 = sub_2440D11C0();
    v5 = sub_2440D3490();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_243F48000, v4, v5, "starting", v6, 2u);
      MEMORY[0x245D58570](v6, -1, -1);
    }

    v7 = v0[18];

    (*(v3 + 8))(v7, v2);
  }

  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  sub_243F5D774(*(v0[12] + 40) + 16, (v0 + 2));
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = (*(v13 + 8))(v11, v10, v9, v8, v12, v13);
  v15 = v0[12];
  v16 = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  result = (*(*v15 + 304))(v16);
  v18 = result;
  v19 = *(v14 + 16);
  if (v19 >= 2)
  {

    v20 = v19 - 1;
    v21 = 33;
    do
    {
      v22 = *(v14 + v21);
      v23 = *(**(v18 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action) + 96);

      v23(v22);

      v24 = *(v18 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);
      if (v24)
      {

        v18 = v24;
      }

      ++v21;
      --v20;
    }

    while (v20);
  }

  v25 = *(v18 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);
  if (v25)
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      return result;
    }

    v26 = *(v25 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action);
    v27 = *(v14 + 32);

    (*(*v26 + 96))(v27);
  }

  else
  {
  }

  v28 = *(v0[12] + 32);
  v29 = (*(*v28 + 904))(1);
  (*(*v28 + 920))(v29);

  v30 = v0[1];

  return v30();
}

id sub_243F568A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v57 - v3;
  v4 = sub_2440D0AC0();
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v62 = sub_243F4DF68();
  sub_243F5F574(v62, v14, &qword_27EDC0A50, &qword_2440D5CB0);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    v18 = sub_243F5EED4(v14, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v58 = v4;
    v19 = v17;
    v20 = sub_2440D11C0();
    v21 = sub_2440D3490();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v57 = v16;
      v23 = v1;
      v24 = v22;
      *v22 = 0;
      _os_log_impl(&dword_243F48000, v20, v21, "closing", v22, 2u);
      v25 = v24;
      v1 = v23;
      v16 = v57;
      MEMORY[0x245D58570](v25, -1, -1);
    }

    v18 = (*(v16 + 8))(v14, v15);
    v17 = v19;
    v4 = v58;
  }

  v26 = v1[4];
  v27 = (*(*v26 + 456))(v66, v18);
  if (v66[5])
  {
    sub_243F5EED4(v66, &qword_27EDBFF68, &qword_2440DDE10);
    sub_243F5F574(v62, v11, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v17(v11, 1, v15) == 1)
    {
      return sub_243F5EED4(v11, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v37 = sub_2440D11C0();
      v38 = sub_2440D3470();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_243F48000, v37, v38, "error displayed", v39, 2u);
        MEMORY[0x245D58570](v39, -1, -1);
      }

      return (*(v16 + 8))(v11, v15);
    }
  }

  else
  {
    v29 = v17;
    v58 = v1[6];
    if (*(v58 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) == 1)
    {
      sub_2440D09B0();
      sub_2440D0AA0();
      v27 = (v59[1])(v6, v4);
    }

    (*(*v26 + 936))(v27);
    v59 = v1;
    v30 = v1[5];
    v31 = *(**(v30 + 56) + 296);

    v31(v32);

    v34 = (*(*v26 + 504))(v33);
    v35 = sub_2440B3AD0(v34);
    if (v35)
    {
      v36 = v61;
      sub_243F5F574(v62, v61, &qword_27EDC0A50, &qword_2440D5CB0);
      if (v29(v36, 1, v15) == 1)
      {
        sub_243F5EED4(v36, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v40 = sub_2440D11C0();
        v41 = sub_2440D3490();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_243F48000, v40, v41, "still active, canceling", v42, 2u);
          v43 = v42;
          v36 = v61;
          MEMORY[0x245D58570](v43, -1, -1);
        }

        (*(v16 + 8))(v36, v15);
      }

      v44 = sub_2440D3390();
      v45 = v60;
      (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v59;

      sub_243F54830(0, 0, v45, &unk_2440D6050, v46);

      sub_243F5D774(v30 + 16, v63);
      v47 = v64;
      v48 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      LOBYTE(v47) = (*(v48 + 56))(v47, v48);
      v35 = __swift_destroy_boxed_opaque_existential_0(v63);
      if (v47)
      {
        v49 = v59[2];
        if (v49)
        {
          v50 = *(*v26 + 944);
          swift_unknownObjectRetain();
          v51 = v50(2, 0);
          v53 = v52;
          v54 = sub_2440D0670();
          sub_243F5D81C(v51, v53);
          [v49 reportPINErrorWithError:30 analyticsData:v54];

          v35 = swift_unknownObjectRelease();
        }
      }
    }

    v55 = (*(*v26 + 896))(v35);
    if (*(v58 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
    {
      v56 = v59;
      if ((*(*v59 + 784))(v55) & 1) != 0 && (sub_243FC13CC())
      {
        if (((*(*v56 + 496))() & 1) == 0)
        {
          sub_243F5736C();
        }

        sub_243F5751C();
      }

      else
      {
        sub_243F5736C();
      }

      result = v56[2];
      if (result)
      {
        return [result pinAuthNeeded];
      }
    }

    else
    {
      return sub_243F57D4C();
    }
  }

  return result;
}

uint64_t sub_243F57154()
{
  v3 = (*(**(*(v0 + 16) + 32) + 872) + **(**(*(v0 + 16) + 32) + 872));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_243F57278;

  return v3(1);
}

uint64_t sub_243F57278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F5736C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E0C8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000011, 0x80000002440E89F0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  sub_2440D1180();

  sub_2440D1160();
}

uint64_t sub_243F5751C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38, &qword_2440D5FC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40, &unk_2440D5FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = sub_2440D2C80();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2440D2CA0();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v45 = sub_243F4E0C8();
  sub_243F5F574(v45, v19, &qword_27EDC0A50, &qword_2440D5CB0);
  v20 = sub_2440D11E0();
  v21 = *(v20 - 8);
  v44 = *(v21 + 48);
  if (v44(v19, 1, v20) == 1)
  {
    sub_243F5EED4(v19, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v52 = v11;
    v42 = v3;
    v22 = v21;
    v23 = sub_243F4E2F4();
    v24 = sub_243F4E2FC();
    v43 = v20;
    v25 = v23 & 1;
    v21 = v22;
    v3 = v42;
    v11 = v52;
    sub_243F4E308(v25, v1, 0xD00000000000001DLL, 0x80000002440E8700, v24, v26);
    v20 = v43;

    (*(v21 + 8))(v19, v20);
  }

  if (*(v1[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating))
    {
      v51 = v21;
      v27 = v53;
      sub_243F5F574(v45, v53, &qword_27EDC0A50, &qword_2440D5CB0);
      if (v44(v27, 1, v20) == 1)
      {
        sub_243F5EED4(v27, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v52 = v11;
        v34 = sub_2440D11C0();
        v35 = sub_2440D3490();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = v8;
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_243F48000, v34, v35, "PrivacyLock: Evaluating already", v37, 2u);
          v38 = v37;
          v8 = v36;
          v27 = v53;
          MEMORY[0x245D58570](v38, -1, -1);
        }

        (*(v51 + 8))(v27, v20);
        v11 = v52;
      }

      v39 = sub_243F59E00();
      (*(*v1 + 928))(v39);
      if ((*(v3 + 48))(v11, 1, v2))
      {
        sub_243F5EED4(v11, &qword_27EDBFF40, &unk_2440D5FD0);
      }

      else
      {
        (*(v3 + 16))(v5, v11, v2);
        sub_243F5EED4(v11, &qword_27EDBFF40, &unk_2440D5FD0);
        sub_243F5DF24();
        v40 = swift_allocError();
        *v41 = 0;
        aBlock[0] = v40;
        sub_2440D3330();
        (*(v3 + 8))(v5, v2);
      }

      (*(v3 + 56))(v8, 1, 1, v2);
      return (*(*v1 + 936))(v8);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 1;
      sub_243F5DB84();
      v29 = sub_2440D3530();
      aBlock[4] = sub_243F5DF20;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243F5F604;
      aBlock[3] = &block_descriptor_73;
      v30 = _Block_copy(aBlock);

      v31 = v46;
      sub_2440D2C90();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
      sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
      v32 = v48;
      v33 = v51;
      sub_2440D3710();
      MEMORY[0x245D57440](0, v31, v32, v30);
      _Block_release(v30);

      (*(v50 + 8))(v32, v33);
      return (*(v47 + 8))(v31, v49);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
    return sub_243F57D4C();
  }
}

uint64_t sub_243F57D4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38, &qword_2440D5FC8);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40, &unk_2440D5FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v34 - v7;
  v8 = sub_2440D2C80();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440D2CA0();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = sub_243F4DF68();
  sub_243F5F574(v17, v16, &qword_27EDC0A50, &qword_2440D5CB0);
  v18 = sub_2440D11E0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    v20 = sub_243F5EED4(v16, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v21 = sub_2440D11C0();
    v22 = sub_2440D3490();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_243F48000, v21, v22, "finish closing", v23, 2u);
      MEMORY[0x245D58570](v23, -1, -1);
    }

    v20 = (*(v19 + 8))(v16, v18);
  }

  if ((*(*v1 + 784))(v20))
  {
    (*(*v1 + 792))(0);
  }

  sub_243F5DB84();
  v24 = sub_2440D3530();
  aBlock[4] = sub_243F5ED74;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_131;
  v25 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v13, v10, v25);
  _Block_release(v25);

  (*(v37 + 8))(v10, v8);
  v26 = (*(v35 + 8))(v13, v36);
  v27 = v38;
  (*(*v1 + 928))(v26);
  v29 = v40;
  v28 = v41;
  if ((*(v40 + 48))(v27, 1, v41))
  {
    sub_243F5EED4(v27, &qword_27EDBFF40, &unk_2440D5FD0);
  }

  else
  {
    v30 = v34;
    (*(v29 + 16))(v34, v27, v28);
    sub_243F5EED4(v27, &qword_27EDBFF40, &unk_2440D5FD0);
    LOBYTE(aBlock[0]) = 1;
    sub_2440D3340();
    (*(v29 + 8))(v30, v28);
  }

  v31 = v39;
  (*(v29 + 56))(v39, 1, 1, v28);
  (*(*v1 + 936))(v31);
  v32 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
  {

    sub_2440D2CF0();
  }

  *(v1 + v32) = 0;
}

uint64_t sub_243F5848C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_243F584D0()
{
  v1 = v0;
  v2 = sub_2440D2C80();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2CA0();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_243F4DF68();
  sub_243F5F574(v11, v10, &qword_27EDC0A50, &qword_2440D5CB0);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    v14 = sub_243F5EED4(v10, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v15 = sub_2440D11C0();
    v16 = sub_2440D3490();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_243F48000, v15, v16, "closing immediately", v17, 2u);
      MEMORY[0x245D58570](v17, -1, -1);
    }

    v14 = (*(v13 + 8))(v10, v12);
  }

  ((*v1)[123])(v14);
  sub_243F5DB84();
  v18 = sub_2440D3530();
  aBlock[4] = sub_243F5DF78;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_76;
  v19 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v19);
  _Block_release(v19);

  (*(v28 + 8))(v4, v2);
  v20 = (*(v26 + 8))(v7, v27);
  (*(*v1[4] + 896))(v20);
  v21 = sub_243FA9620();
  swift_beginAccess();
  v22 = *(**v21 + 536);

  v22(v23);
}

uint64_t sub_243F589E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_243F58A2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "closed", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  result = (*(*v1 + 984))(v8);
  if (*(v1[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) == 1)
  {
    v13 = sub_243FA9620();
    swift_beginAccess();
    v14 = *(**v13 + 536);

    v14(v15);
  }

  return result;
}

uint64_t sub_243F58C80(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_2440D0AC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v50 = sub_243F4DF68();
  sub_243F5F574(v50, v14, &qword_27EDC0A50, &qword_2440D5CB0);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  v49 = *(v16 + 48);
  if (v49(v14, 1, v15) == 1)
  {
    v17 = sub_243F5EED4(v14, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v48 = v9;
    v18 = sub_2440D11C0();
    v19 = sub_2440D3490();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = v16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v47 = v4;
      v44 = v22;
      v53 = v22;
      *v21 = 136446210;
      v23 = sub_2440D0BE0();
      v46 = v2;
      v25 = v6;
      v26 = v3;
      v27 = sub_243F4E6F8(v23, v24, &v53);
      v2 = v46;

      *(v21 + 4) = v27;
      v3 = v26;
      v6 = v25;
      _os_log_impl(&dword_243F48000, v18, v19, "sessionEvent: %{public}s", v21, 0xCu);
      v28 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      v4 = v47;
      MEMORY[0x245D58570](v28, -1, -1);
      v29 = v21;
      v16 = v45;
      MEMORY[0x245D58570](v29, -1, -1);
    }

    v17 = (*(v16 + 8))(v14, v15);
    v9 = v48;
  }

  v30 = *(v2 + 32);
  v31 = (*(*v30 + 504))(v17);
  if (!sub_243FA1978(v31, 5))
  {
    switch(v52)
    {
      case 2:
        v42 = 0x206E6F6973736573;
        v43 = 0xEF64696C61766E69;
        break;
      case 1:
        v38 = (*(*v30 + 280))();
        if (v38)
        {
          v39 = v38;
          v40 = sub_2440D3390();
          (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v41[4] = v2;
          v41[5] = v39;

          sub_243F54830(0, 0, v9, &unk_2440D6068, v41);

          goto LABEL_22;
        }

        v42 = 0x20676E697373696DLL;
        v43 = 0xEC00000061746164;
        break;
      case 0:
        (*(*v30 + 856))();
LABEL_22:
        sub_2440D09E0();
        sub_2440D0A90();
        return (*(v4 + 8))(v6, v3);
      default:
        v42 = 0x206E776F6E6B6E75;
        v43 = 0xED0000746E657665;
        break;
    }

    sub_243F59278(v42, v43);
    goto LABEL_22;
  }

  v32 = v51;
  sub_243F5F574(v50, v51, &qword_27EDC0A50, &qword_2440D5CB0);
  if (v49(v32, 1, v15) == 1)
  {
    return sub_243F5EED4(v32, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  v34 = v16;
  v35 = sub_2440D11C0();
  v36 = sub_2440D3470();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_243F48000, v35, v36, "sessionEvent: canceled", v37, 2u);
    MEMORY[0x245D58570](v37, -1, -1);
  }

  return (*(v34 + 8))(v32, v15);
}

uint64_t sub_243F59278(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_243F4DF68();
  sub_243F5F574(v9, v8, &qword_27EDC0A50, &qword_2440D5CB0);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_243F5EED4(v8, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {

    v12 = sub_2440D11C0();
    v13 = sub_2440D3470();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_243F4E6F8(a1, a2, &v20);
      _os_log_impl(&dword_243F48000, v12, v13, "%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D58570](v15, -1, -1);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  v16 = *(v3 + 32);
  (*(*v16 + 288))(0);
  v17 = sub_243F4E2F4();
  return (*(*v16 + 848))(v17);
}

uint64_t sub_243F5950C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_243F59564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_243F59584, 0, 0);
}

uint64_t sub_243F59584()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v4 = *(**(v1 + 32) + 944);
    swift_unknownObjectRetain();
    v5 = v4(0, 1);
    v7 = v6;
    v8 = sub_2440D0670();
    sub_243F5D81C(v5, v7);
    [v2 pinDataReceivedWithPinData:v3 analyticsData:v8];
    swift_unknownObjectRelease();

    v1 = v0[2];
  }

  v9 = *(v1 + 32);
  (*(*v9 + 288))(0);
  v12 = (*(*v9 + 864) + **(*v9 + 864));
  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_243F59780;

  return v12();
}

uint64_t sub_243F59780()
{

  return MEMORY[0x2822009F8](sub_243F5987C, 0, 0);
}

uint64_t sub_243F5987C()
{
  v1 = *sub_244070AF8();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_243F59918;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_243F59918()
{

  if (v0)
  {

    v1 = sub_243F5F5F4;
  }

  else
  {
    v1 = sub_243F59A30;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F59A30()
{
  [*(v0 + 16) closeUI];
  v1 = *(v0 + 8);

  return v1();
}

id sub_243F59A98(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40, &unk_2440D5FD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  (*(*a2 + 792))(1, v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38, &qword_2440D5FC8);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = (*(*a2 + 936))(v10);
  if ((*(*a2 + 496))(v13))
  {
    sub_243F5751C();
    v14 = sub_243F4DF68();
    sub_243F5F574(v14, v6, &qword_27EDC0A50, &qword_2440D5CB0);
    v15 = sub_2440D11E0();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v6, 1, v15) == 1)
    {
      return sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3490();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_243F48000, v18, v19, "inCallHandler - privacyAuthenticateIfNeeded returned", v20, 2u);
        MEMORY[0x245D58570](v20, -1, -1);
      }

      return (*(v16 + 8))(v6, v15);
    }
  }

  else
  {
    (*(*a2 + 600))(1);
    return [a2 closeUI];
  }
}

uint64_t sub_243F59E00()
{
  v1 = sub_2440D2CD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_2440D2C80();
  MEMORY[0x28223BE20](v14);
  v15 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
  if (*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
  {
    v16 = sub_243F4E0C8();
    sub_243F5F574(v16, v10, &qword_27EDC0A50, &qword_2440D5CB0);
    v17 = sub_2440D11E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      return sub_243F5EED4(v10, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v25 = sub_2440D11C0();
      v26 = sub_2440D3490();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_243F48000, v25, v26, "PrivacyLock: Evaluating lock release already scheduled", v27, 2u);
        MEMORY[0x245D58570](v27, -1, -1);
      }

      return (*(v18 + 8))(v10, v17);
    }
  }

  else
  {
    v39 = v4;
    v40 = v7;
    v41 = v2;
    v42 = v1;
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_243F5ECD0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F5F604;
    aBlock[3] = &block_descriptor_127;
    v38 = _Block_copy(aBlock);
    v43 = MEMORY[0x277D84F90];
    sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
    sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
    sub_2440D3710();
    sub_2440D2D00();
    swift_allocObject();
    v21 = sub_2440D2CE0();

    *(v0 + v15) = v21;

    v22 = sub_243F4E0C8();
    sub_243F5F574(v22, v13, &qword_27EDC0A50, &qword_2440D5CB0);
    v23 = sub_2440D11E0();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v13, 1, v23) == 1)
    {
      sub_243F5EED4(v13, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v28 = sub_2440D11C0();
      v29 = sub_2440D3490();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_243F48000, v28, v29, "PrivacyLock: Scheduling evaluating lock release", v30, 2u);
        MEMORY[0x245D58570](v30, -1, -1);
      }

      (*(v24 + 8))(v13, v23);
    }

    v32 = v40;
    v31 = v41;
    v33 = v39;
    sub_243F5DB84();
    v34 = sub_2440D3530();
    sub_2440D2CC0();
    sub_2440D2D20();
    v35 = *(v31 + 8);
    v36 = v33;
    v37 = v42;
    v35(v36, v42);
    sub_2440D3510();

    return (v35)(v32, v37);
  }
}

uint64_t sub_243F5A3FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_243F4E0C8();
  sub_243F5F574(v8, v7, &qword_27EDC0A50, &qword_2440D5CB0);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    v12 = sub_243F5EED4(v7, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v13 = v10;
    v14 = sub_243F4E2F4();
    v15 = sub_243F4E2FC();
    v28 = v9;
    v16 = v14 & 1;
    v10 = v13;
    sub_243F4E308(v16, v1, 0xD000000000000011, 0x80000002440E8720, v15, v17);
    v9 = v28;

    v12 = (*(v13 + 8))(v7, v9);
  }

  v18 = (*(*v1 + 880))(v12);
  if (v18)
  {
    v19 = v18;
    (*(*v18 + 120))(0);
    type metadata accessor for PrivacyAuthenticatorWrapper();

    v20 = sub_2440ABBD4(v19, v1, &off_2857732B0);
    v21 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper) = v20;
    v22 = v20;

    sub_2440AC3A4();
  }

  else
  {
    sub_243F5F574(v8, v4, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v11(v4, 1, v9) == 1)
    {
      return sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v24 = sub_2440D11C0();
      v25 = sub_2440D3490();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_243F48000, v24, v25, "No auth model", v26, 2u);
        MEMORY[0x245D58570](v26, -1, -1);
      }

      return (*(v10 + 8))(v4, v9);
    }
  }
}

void sub_243F5A768()
{
  v1 = v0;
  v2 = sub_2440D2C80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CA0();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v0 + 48) + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
  {
    v9 = sub_243FA9620();
    swift_beginAccess();
    v10 = *(**v9 + 304);

    v12 = v10(v11);

    if (!v12 || (v14 = (*((*MEMORY[0x277D85000] & *v12) + 0xB8))(v13), v12, v14 == 5) || (LOBYTE(aBlock[0]) = v14, v19 = 0, sub_243F5E0B8(), (sub_2440D2F50() & 1) == 0))
    {
      sub_243F5DB84();
      v17 = sub_2440D3530();
      aBlock[4] = sub_243F5E088;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243F5F604;
      aBlock[3] = &block_descriptor_83;
      v15 = _Block_copy(aBlock);

      sub_2440D2C90();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
      sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
      sub_2440D3710();
      v16 = v17;
      MEMORY[0x245D57440](0, v8, v5, v15);
      _Block_release(v15);

      (*(v3 + 8))(v5, v2);
      (*(v18 + 8))(v8, v6);
    }
  }
}

uint64_t sub_243F5AB3C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = sub_243F4E0C8();
  sub_243F5F574(v4, v3, &qword_27EDC0A50, &qword_2440D5CB0);
  v5 = sub_2440D11E0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_243F5EED4(v3, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v7 = sub_2440D11C0();
    v8 = sub_2440D3490();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_243F48000, v7, v8, "PrivacyLock: release evaluating work item triggered", v9, 2u);
      MEMORY[0x245D58570](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock) = 0;
  }

  return result;
}

uint64_t sub_243F5AD58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C65636E6163;
  v5 = 0xED00007070417942;
  v6 = 0xE800000000000000;
  v7 = 0x6B6361626C6C6166;
  if (a1 != 4)
  {
    v7 = 0x65766F6365726E75;
    v6 = 0xED0000656C626172;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6164696C61766E69;
  v9 = 0xEB00000000646574;
  if (a1 != 1)
  {
    v8 = 0x64656C65636E6163;
    v9 = 0xEE00726573557942;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736563637573;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0x64656C65636E6163;
      v14 = 0x7070417942;
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6B6361626C6C6166)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v13 = 0x65766F6365726E75;
      v14 = 0x656C626172;
    }

    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v10 != v13)
    {
LABEL_34:
      v15 = sub_2440D3A10();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000646574;
      if (v10 != 0x6164696C61766E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00726573557942;
      if (v10 != 0x64656C65636E6163)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73736563637573)
    {
      goto LABEL_34;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

uint64_t sub_243F5AF94(unsigned __int8 a1)
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_243F5B0C8(uint64_t a1)
{
  sub_2440D30B0();
}

uint64_t sub_243F5B1EC(uint64_t a1, unsigned __int8 a2)
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

unint64_t sub_243F5B31C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243F5E10C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243F5B34C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736563637573;
  v5 = 0xED00007070417942;
  v6 = 0x64656C65636E6163;
  v7 = 0xE800000000000000;
  v8 = 0x6B6361626C6C6166;
  if (v2 != 4)
  {
    v8 = 0x65766F6365726E75;
    v7 = 0xED0000656C626172;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000646574;
  v10 = 0x6164696C61766E69;
  if (v2 != 1)
  {
    v10 = 0x64656C65636E6163;
    v9 = 0xEE00726573557942;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void sub_243F5B438(int a1, int a2, void *a3)
{
  v4 = v3;
  v68 = a2;
  v69 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = sub_243F4E0C8();
  sub_243F5F574(v17, v16, &qword_27EDC0A50, &qword_2440D5CB0);
  v18 = sub_2440D11E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) != 1)
  {
    v65 = v20;
    v66 = v8;
    v24 = sub_2440D11C0();
    v25 = sub_2440D3490();
    if (os_log_type_enabled(v24, v25))
    {
      v62 = v19;
      v63 = v18;
      v64 = a3;
      v26 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = v61;
      v27 = v68;
      v28 = 0xE700000000000000;
      v29 = 0x73736563637573;
      v30 = 0xED00007070417942;
      *v26 = 136315138;
      v31 = 0x64656C65636E6163;
      v32 = 0xE800000000000000;
      v33 = 0x6B6361626C6C6166;
      if (v27 != 4)
      {
        v33 = 0x65766F6365726E75;
        v32 = 0xED0000656C626172;
      }

      if (v27 != 3)
      {
        v31 = v33;
        v30 = v32;
      }

      v34 = 0xEB00000000646574;
      v35 = 0x6164696C61766E69;
      if (v27 != 1)
      {
        v35 = 0x64656C65636E6163;
        v34 = 0xEE00726573557942;
      }

      if (v27)
      {
        v29 = v35;
        v28 = v34;
      }

      if (v27 <= 2)
      {
        v36 = v29;
      }

      else
      {
        v36 = v31;
      }

      if (v27 <= 2)
      {
        v37 = v28;
      }

      else
      {
        v37 = v30;
      }

      v38 = sub_243F4E6F8(v36, v37, &v70);

      *(v26 + 4) = v38;
      _os_log_impl(&dword_243F48000, v24, v25, "PrivacyLock: didComplete with %s", v26, 0xCu);
      v39 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x245D58570](v39, -1, -1);
      MEMORY[0x245D58570](v26, -1, -1);

      v18 = v63;
      a3 = v64;
      v19 = v62;
    }

    else
    {
    }

    v21 = (*(v19 + 8))(v16, v18);
    v20 = v65;
    v8 = v66;
    if ((v69 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_29:
    sub_243F5F574(v17, v13, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v20(v13, 1, v18) == 1)
    {
      sub_243F5EED4(v13, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v40 = sub_2440D11C0();
      v41 = sub_2440D3490();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_243F48000, v40, v41, "didComplete success", v42, 2u);
        MEMORY[0x245D58570](v42, -1, -1);
      }

      (*(v19 + 8))(v13, v18);
    }

    (*(*v4 + 768))(1);
    v43 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
    if (v43)
    {
      v44 = v43;
      sub_2440ABF24();
    }

    *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
    sub_243F5BCBC(a3);
    v45 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
    if (*(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
    {

      sub_2440D2CF0();
    }

    *(v4 + v45) = 0;

    sub_243F57D4C();
    return;
  }

  v21 = sub_243F5EED4(v16, &qword_27EDC0A50, &qword_2440D5CB0);
  if (v69)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v68 == 5)
  {
    v47 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
    if (v47)
    {
      v48 = v47;
      sub_2440ABF24();
    }

    sub_243F57D4C();
    goto LABEL_54;
  }

  if (v68 != 4)
  {
    if (v68 == 2)
    {
      if (((*(*v4 + 784))(v21) & 1) != 0 && ((*(*v4 + 496))() & 1) == 0)
      {
        sub_243F5736C();
      }

      v22 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
      if (v22)
      {
        v23 = v22;
        sub_2440AC11C();
      }
    }

    else
    {
      sub_243F5F574(v17, v8, &qword_27EDC0A50, &qword_2440D5CB0);
      if (v20(v8, 1, v18) == 1)
      {
        sub_243F5EED4(v8, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v54 = sub_2440D11C0();
        v55 = sub_2440D3490();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = v8;
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_243F48000, v54, v55, "didComplete default handling", v57, 2u);
          v58 = v57;
          v8 = v56;
          MEMORY[0x245D58570](v58, -1, -1);
        }

        (*(v19 + 8))(v8, v18);
      }
    }

LABEL_54:
    *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
    v59 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
    if (*(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
    {

      sub_2440D2CF0();
    }

    *(v4 + v59) = 0;

    sub_243F5BCBC(a3);
    return;
  }

  if (((*(*v4 + 496))(v21) & 1) == 0)
  {
    sub_243F5736C();
  }

  v46 = v67;
  sub_243F5F574(v17, v67, &qword_27EDC0A50, &qword_2440D5CB0);
  if (v20(v46, 1, v18) == 1)
  {
    sub_243F5EED4(v46, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v49 = sub_243F4E2F4();
    v50 = sub_243F4E2FC();
    sub_243F4E308(v49 & 1, v4, 0xD000000000000014, 0x80000002440E8740, v50, v51);

    (*(v19 + 8))(v46, v18);
  }

  (*(*v4 + 816))(1);
  v52 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
  if (v52)
  {
    v53 = v52;
    sub_2440AE9E8();
  }
}

void sub_243F5BCBC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v48 = sub_243F4E0C8();
  sub_243F5F574(v48, v12, &qword_27EDC0A50, &qword_2440D5CB0);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  v47 = *(v14 + 48);
  if (v47(v12, 1, v13) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50, &qword_2440D5CB0);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = *(v2 + 16);
    if (v24)
    {
      [v24 pinAuthResultWithError:0 cancelsFlow:0];
    }

    return;
  }

  v46 = a1;
  v21 = sub_243F4E2F4();
  v22 = sub_243F4E2FC();
  a1 = v46;
  sub_243F4E308(v21 & 1, v2, 0xD000000000000012, 0x80000002440E8760, v22, v23);

  (*(v14 + 8))(v12, v13);
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v50 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0, &qword_2440D6070);
  type metadata accessor for LAError(0);
  if (swift_dynamicCast())
  {
    v16 = v14;
    v17 = v49;
    sub_244058890(v49);
    if (v18)
    {
      v19 = *(v2 + 16);
      if (v19)
      {
        swift_unknownObjectRetain();
        v20 = sub_2440D2F80();

        [v19 pinAuthResultWithError:v20 cancelsFlow:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    sub_243F5F574(v48, v9, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v47(v9, 1, v13) == 1)
    {

      v28 = v9;
      goto LABEL_16;
    }

    v36 = v17;
    v37 = v9;
    v38 = sub_2440D11C0();
    v39 = sub_2440D3470();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v36;
      v50 = v41;
      *v40 = 136315138;
      sub_243F5E180(&unk_27EDC5CC0, type metadata accessor for LAError, &unk_2440E61E0);
      v42 = sub_2440D3AB0();
      v44 = sub_243F4E6F8(v42, v43, &v50);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_243F48000, v38, v39, "Could not parse LAError error: [%s]", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x245D58570](v41, -1, -1);
      MEMORY[0x245D58570](v40, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v37, v13);
  }

  else
  {
    swift_getErrorValue();
    v25 = sub_2440D3AB0();
    v27 = v26;
    sub_243F5F574(v48, v6, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v47(v6, 1, v13) == 1)
    {

      v28 = v6;
LABEL_16:
      sub_243F5EED4(v28, &qword_27EDC0A50, &qword_2440D5CB0);
      return;
    }

    v29 = sub_2440D11C0();
    v30 = sub_2440D3470();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v6;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315138;
      v34 = sub_243F4E6F8(v25, v27, &v50);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_243F48000, v29, v30, "Could not cast error to LAError: [%s]", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245D58570](v33, -1, -1);
      v35 = v32;
      v6 = v31;
      MEMORY[0x245D58570](v35, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v6, v13);
  }
}

uint64_t sub_243F5C2C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38, &qword_2440D5FC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40, &unk_2440D5FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_243F4E0C8();
  sub_243F5F574(v15, v14, &qword_27EDC0A50, &qword_2440D5CB0);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_243F5EED4(v14, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v27 = v2;
    v18 = sub_243F4E2F4();
    v19 = sub_243F4E2FC();
    v26 = v5;
    v2 = v27;
    sub_243F4E308(v18 & 1, v1, 0xD000000000000012, 0x80000002440E8780, v19, v20);
    v5 = v26;

    (*(v17 + 8))(v14, v16);
  }

  sub_2440D1180();

  sub_2440D1160();

  (*(*v1 + 928))(v21);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_243F5EED4(v11, &qword_27EDBFF40, &unk_2440D5FD0);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_243F5EED4(v11, &qword_27EDBFF40, &unk_2440D5FD0);
    sub_243F5DF24();
    v22 = swift_allocError();
    *v23 = 1;
    v28 = v22;
    sub_2440D3330();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v8, 1, 1, v2);
  return (*(*v1 + 936))(v8);
}

uint64_t sub_243F5C710(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 56);
  v4 = type metadata accessor for SwitchAXCommand();
  v7 = v1 + 32;
  v5 = *(v1 + 32);
  v6 = *(v7 + 8);

  v9[3] = v4;
  v9[4] = &off_285775250;
  v9[0] = sub_243FA14A4(v6, v5, v2);
  (*(*v3 + 96))(v9);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_243F5C7C4(uint64_t a1)
{
  v2 = sub_243F5E180(&qword_27EDBFFB0, type metadata accessor for LAError, &unk_2440D6398);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243F5C830(uint64_t a1)
{
  v2 = sub_243F5E180(&qword_27EDBFFB0, type metadata accessor for LAError, &unk_2440D6398);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243F5C89C(uint64_t a1)
{
  v2 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError, &unk_2440E6260);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243F5C928(uint64_t a1)
{
  v2 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError, &unk_2440E6260);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243F5C994(uint64_t a1)
{
  v2 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError, &unk_2440E6260);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243F5CA00(void *a1, uint64_t a2)
{
  v4 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError, &unk_2440E6260);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243F5CAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError, &unk_2440E6260);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_243F5CB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2440D3B20();
  sub_2440D2F10();
  return sub_2440D3B50();
}

void *sub_243F5CB90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_243F5CBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError, &unk_2440E6260);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_243F5CC44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243F5CD3C;

  return v6(a1);
}

uint64_t sub_243F5CD3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F5CE34(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_243F5CF28;

  return v5(v2 + 32);
}

uint64_t sub_243F5CF28()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

char *sub_243F5D03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFD0, &qword_2440D6480);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28, &qword_2440D5FB8);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF10, &qword_2440D5F10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  type metadata accessor for VoiceOverStatusObserver();
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 8) = sub_243FC7308();
  *(v2 + 9) = 0;
  v16 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__pinUIIsPresented[0];
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17 = *(v13 + 32);
  v17(&v2[v16], v15, v12);
  v18 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__readingVOInstructions;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v18], v15, v12);
  v19 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__isIssuer[0];
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v19], v15, v12);
  v20 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentAuth[0];
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v20], v15, v12);
  v21 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__showLockOnStatusBar[0];
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v21], v15, v12);
  v22 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__cancelUnlockInstruction;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v22], v15, v12);
  v23 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__topBarModel[0];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF08, &qword_2440D5EC0);
  sub_2440D1300();
  (*(v9 + 32))(&v2[v23], v11, v8);
  v24 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_context;
  *&v2[v24] = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating] = 0;
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_subscribers] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_didMerchantAuthorize] = 0;
  v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_incomingCallAccepted] = 0;
  v25 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentingPasscode[0];
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v25], v15, v12);
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper] = 0;
  v26 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__authModel;
  *&v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF20, &qword_2440D5F68);
  v27 = v43;
  sub_2440D1300();
  (*(v44 + 32))(&v3[v26], v27, v45);
  v28 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38, &qword_2440D5FC8);
  (*(*(v29 - 8) + 56))(&v3[v28], 1, 1, v29);
  *&v3[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock] = 0;
  v30 = v46;
  v31 = v47;
  *(v3 + 4) = v46;
  *(v3 + 5) = *(v30 + 40);
  *(v3 + 7) = v31;

  v32 = sub_243FA9620();
  swift_beginAccess();
  v33 = *(**v32 + 256);

  v35 = v48;
  v33(v34);
  v36 = type metadata accessor for TransactionContext(0);
  result = (*(*(v36 - 8) + 48))(v35, 1, v36);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *(v35 + *(v36 + 20));
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v3 + 6) = result;

  sub_243F5F518(v35);
  v38 = *(v3 + 6);
  if (*(v38 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
  {
    type metadata accessor for PrivacyAuthenticatorModel(0);
    v39 = sub_243FD07B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = v39;

    sub_2440D1350();
    v38 = *(v3 + 6);
  }

  v40 = *(v38 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN);
  v41 = *(**(v3 + 4) + 360);

  v41(v40);

  return v3;
}

unint64_t sub_243F5D720()
{
  result = qword_27EDBFF48;
  if (!qword_27EDBFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF48);
  }

  return result;
}

uint64_t sub_243F5D774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_243F5D81C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243F5D870()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_243F5D8A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 600))(1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [result closeUI];
  }

  return result;
}

uint64_t sub_243F5D964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243F5F614;

  return sub_243F5311C();
}

uint64_t sub_243F5D9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243F5DA80;

  return sub_243F539C0();
}

uint64_t sub_243F5DA80(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_243F5DB84()
{
  result = qword_27EDC6160;
  if (!qword_27EDC6160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC6160);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243F5DC3C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_243F5F610;

  return sub_243F561B8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5DD50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243F5DD98()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_243F57134(v3, v4, v5, v2);
}

uint64_t sub_243F5DE2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_243F5DF24()
{
  result = qword_27EDBFF70;
  if (!qword_27EDBFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF70);
  }

  return result;
}

uint64_t sub_243F5DFA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5DFF0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5F610;

  return sub_243F59564(v4, v5, v6, v2, v3);
}

unint64_t sub_243F5E0B8()
{
  result = qword_27EDBFF78;
  if (!qword_27EDBFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF78);
  }

  return result;
}

unint64_t sub_243F5E10C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2440D3970();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243F5E180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243F5E1C8()
{
  result = (*(*v0 + 784))();
  if (result)
  {
    result = (*(*v0 + 496))();
    if ((result & 1) == 0)
    {

      return sub_243F5736C();
    }
  }

  return result;
}

unint64_t sub_243F5E258()
{
  result = qword_27EDBFF80;
  if (!qword_27EDBFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF80);
  }

  return result;
}

unint64_t sub_243F5E2BC()
{
  result = qword_27EDBFF88;
  if (!qword_27EDBFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF88);
  }

  return result;
}

uint64_t type metadata accessor for PINViewModel(uint64_t a1)
{
  result = qword_27EDC6B20;
  if (!qword_27EDC6B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243F5E364(uint64_t a1)
{
  sub_243F5EAAC(319, &qword_27EDBFF90, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_243F5E5AC(319, &qword_27EDBFF98, &qword_27EDBFF08, &qword_2440D5EC0, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_243F5E5AC(319, &qword_27EDBFFA0, &qword_27EDBFF20, &qword_2440D5F68, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_243F5E5AC(319, &qword_27EDBFFA8, &qword_27EDBFF38, &qword_2440D5FC8, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_243F5E5AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PINViewModel.BSActionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PINViewModel.BSActionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyLockCompleteStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyLockCompleteStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_243F5EAAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_243F5EB48()
{
  result = qword_27EDC5CD0;
  if (!qword_27EDC5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5CD0);
  }

  return result;
}

uint64_t sub_243F5EC30(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243F5F610;

  return sub_243F55B2C(a1, v5, v6, v4);
}

uint64_t sub_243F5ED8C(uint64_t a1)
{
  sub_2440D2BA0();
  sub_2440D16E0();
}

uint64_t sub_243F5EDF4()
{
  result = (*(*v0 + 360))(0);
  if ((*(v0[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) & 1) == 0)
  {
    v2 = sub_243FA9620();
    swift_beginAccess();
    v3 = *(**v2 + 528);

    v3(v4);
  }

  return result;
}

uint64_t sub_243F5EED4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243F5EF34()
{

  return swift_deallocObject();
}

uint64_t sub_243F5EF6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5F610;

  return sub_243F5CE34(a1, v4);
}

uint64_t sub_243F5F024(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5DE2C;

  return sub_243F5CE34(a1, v4);
}

uint64_t sub_243F5F0DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5F610;

  return sub_243F5CC44(a1, v4);
}

uint64_t objectdestroy_64Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5F228()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F552AC(v3, v4, v5, v2);
}

uint64_t sub_243F5F310()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243F543B0(256);
  }

  return result;
}

uint64_t sub_243F5F3C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5F424()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F546D4(v3, v4, v5, v2, (v0 + 40));
}

uint64_t sub_243F5F518(uint64_t a1)
{
  v2 = type metadata accessor for TransactionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243F5F574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_243F5F648(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  sub_243F5F68C(a1, v3);
}

void sub_243F5F68C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for IdentityView(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_24401B970();
  v12 = v11;
  sub_243F4E2F4();
  sub_243F68750();
  sub_24401E8DC();
  sub_24401B98C(sub_243F5F8AC, a1, v10, v12, v6, v9);
  v13 = sub_2440D1C40();
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor_];

  v17 = [v13 view];
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v17 setOverrideUserInterfaceStyle_];

  if (a2)
  {
LABEL_6:

    return;
  }

  v18 = [v13 view];
  if (v18)
  {
    v19 = v18;
    sub_243F4DD0C();

    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

id sub_243F5F910()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243F4E22C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "IdentityHostingController deinit", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = type metadata accessor for IdentityHostingController(0);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_243F5FAB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IdentityHostingController(uint64_t a1)
{
  result = qword_27EDC6CB0;
  if (!qword_27EDC6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_243F5FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_2440D0B30();
  sub_2440D0B20();
  v9 = sub_2440D0B10();
  v11 = v10;

  if (v11 >> 60 == 15)
  {
    return (*(*v4 + 88))(a3);
  }

  v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_243F5FECC(v9, v11);
  v14 = sub_2440D0670();
  v15 = [v13 initWithData_];

  sub_243F5FF20(v9, v11);
  if (!v15)
  {
    v16 = sub_243F4E038();
    sub_243F4DE64(v16, v8);
    v17 = sub_2440D11E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_243F5FF20(v9, v11);
      sub_243F5FAB0(v8);
    }

    else
    {
      v19 = sub_2440D11C0();
      v20 = sub_2440D3470();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_243F48000, v19, v20, "logo is not an image, default to category", v21, 2u);
        MEMORY[0x245D58570](v21, -1, -1);
      }

      sub_243F5FF20(v9, v11);

      (*(v18 + 8))(v8, v17);
    }

    return (*(*v4 + 88))(a3);
  }

  sub_2440D2690();
  sub_243F5FF20(v9, v11);
  return v15;
}

uint64_t sub_243F5FECC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243F5FF20(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243F5D81C(result, a2);
  }

  return result;
}

id sub_243F5FF34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  type metadata accessor for MerchantCategoryDefinitions();
  v8 = sub_2440CF8C0(a1);
  v9 = sub_243F602C4(v8);
  if (!v9)
  {
    v16 = sub_243F4E038();
    sub_243F4DE64(v16, v4);
    v17 = sub_2440D11E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) != 1)
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "Unable to return icon due to invalid stylingInfo", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v18 + 8))(v4, v17);
      goto LABEL_15;
    }

    v19 = v4;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 imageForSize:4 scale:1 transparent:v13];
  if (!v14)
  {
    v20 = sub_243F4E038();
    sub_243F4DE64(v20, v7);
    v21 = sub_2440D11E0();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v7, 1, v21) != 1)
    {
      v26 = sub_2440D11C0();
      v27 = sub_2440D3470();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_243F48000, v26, v27, "No icon returned for category", v28, 2u);
        MEMORY[0x245D58570](v28, -1, -1);
      }

      (*(v22 + 8))(v7, v21);
      goto LABEL_15;
    }

    v19 = v7;
LABEL_8:
    sub_243F5FAB0(v19);
LABEL_15:
    v15 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    sub_2440D2690();
    return v15;
  }

  v15 = v14;

  return v15;
}

id sub_243F602C4(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_243F4E038();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3460();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v12 = sub_2440CF1CC(v1);
      v14 = sub_243F4E6F8(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_243F48000, v8, v9, "stylingInfoForCategory %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245D58570](v11, -1, -1);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v15 = [objc_opt_self() sharedService];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  sub_2440CF1CC(v1);
  v17 = sub_2440D2F80();

  v18 = [v16 stylingForWalletCategory_];

  if (v18)
  {
    v19 = [objc_opt_self() mainScreen];
    [v19 scale];
    v21 = v20;

    if (![v18 tintColorForScale_])
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.674509804 green:0.776470588 blue:0.901960784 alpha:1.0];
    }

    sub_2440D2700();
  }

  else
  {
  }

  return v18;
}

uint64_t type metadata accessor for RegisteredDescription(uint64_t a1)
{
  result = qword_27EDC6D40;
  if (!qword_27EDC6D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243F60648()
{
  result = qword_27EDBFFF8;
  if (!qword_27EDBFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFFF8);
  }

  return result;
}

unint64_t sub_243F6069C()
{
  result = qword_27EDC0000;
  if (!qword_27EDC0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0000);
  }

  return result;
}

uint64_t sub_243F606F0@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for RegisteredDescription(0);
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v74 = v3;
  v75 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2440D1F60();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010, &qword_2440DAD50);
  MEMORY[0x28223BE20](v64);
  v6 = &v60 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0018, &qword_2440D6550);
  MEMORY[0x28223BE20](v62);
  v8 = &v60 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0020, &qword_2440D6558);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v60 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0028, &unk_2440D6560);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v60 - v10;
  v72 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008, &unk_2440D6540);
  v76 = v1;
  sub_2440D1510();
  v11 = v82;
  if (v82 > 1.3)
  {
    v11 = 1.3;
  }

  v12 = v11 * 22.0;
  LOBYTE(v79) = 1;
  sub_2440D2970();
  v13 = *&v82;
  v14 = v83;
  v15 = v84;
  v78 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0030, &qword_2440E1FA0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0038, &qword_2440D6570);
  v18 = sub_243F61520();
  v19 = sub_243F615DC();
  v20 = sub_24404D154();
  *(&v59 + 1) = v18;
  *&v59 = v17;
  v60 = v8;
  sub_24404D15C(v13, v14, v15, sub_243F60F68, sub_243F61518, v16, v8, 10.0, v20, v59, v19);
  v21 = *MEMORY[0x277CDF988];
  v22 = sub_2440D1770();
  (*(*(v22 - 8) + 104))(v6, v21, v22);
  sub_243F62C20(&qword_27EDC00D8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_2440D2F50();
  if (result)
  {
    v24 = sub_243F5DD50(&qword_27EDC00E0, &qword_27EDC0018, &qword_2440D6550, &unk_2440E2830);
    v25 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010, &qword_2440DAD50, MEMORY[0x277D84470]);
    v26 = v61;
    v27 = *&v62;
    v28 = v64;
    v29 = v60;
    sub_2440D2420();
    sub_243F5EED4(v6, &qword_27EDC0010, &qword_2440DAD50);
    sub_243F5EED4(v29, &qword_27EDC0018, &qword_2440D6550);
    v30 = v67;
    sub_2440D1F40();
    v82 = v27;
    v83 = v28;
    v84 = v24;
    v85 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v66;
    v33 = v65;
    sub_2440D2490();
    (*(v70 + 8))(v30, v71);
    (*(v63 + 8))(v26, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0, &qword_2440D6538);
    v34 = v76;
    sub_2440D1E60();
    v81 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0, &unk_2440E0F40);
    v79 = v33;
    v80 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_243F619D0();
    v35 = v77;
    v36 = v69;
    sub_2440D24A0();

    (*(v68 + 8))(v32, v36);
    LOBYTE(OpaqueTypeConformance2) = sub_2440D20C0();
    sub_2440D13D0();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0100, &qword_2440D65C0) + 36);
    *v45 = OpaqueTypeConformance2;
    *(v45 + 8) = v38;
    *(v45 + 16) = v40;
    *(v45 + 24) = v42;
    *(v45 + 32) = v44;
    *(v45 + 40) = 0;
    LOBYTE(OpaqueTypeConformance2) = sub_2440D20D0();
    sub_2440707C0();
    sub_2440D13D0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0108, &qword_2440D65C8) + 36);
    *v54 = OpaqueTypeConformance2;
    *(v54 + 8) = v47;
    *(v54 + 16) = v49;
    *(v54 + 24) = v51;
    *(v54 + 32) = v53;
    *(v54 + 40) = 0;
    v55 = v75;
    sub_243F61EB0(v34, v75);
    v56 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v57 = swift_allocObject();
    sub_243F61F18(v55, v57 + v56);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0110, &qword_2440D65D0);
    v58 = (v35 + *(result + 36));
    *v58 = sub_243F61F7C;
    v58[1] = v57;
    v58[2] = 0;
    v58[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243F60F68()
{
  sub_24401FBC0();
  v0 = sub_24401FBD4(0xD000000000000021, 0x80000002440E8D50);
  v2 = v1;
  v4 = v3;
  sub_2440D21B0();
  v5 = sub_2440D22A0();
  v7 = v6;
  v9 = v8;
  sub_243F62C68(v0, v2, v4 & 1);

  sub_2440D21D0();
  v10 = sub_2440D22E0();
  v12 = v11;
  v14 = v13;

  sub_243F62C68(v5, v7, v9 & 1);

  sub_243FFAE40();

  v15 = sub_2440D22C0();
  v17 = v16;
  v19 = v18;

  sub_243F62C68(v10, v12, v14 & 1);

  sub_2440D24E0();
  sub_243F62C68(v15, v17, v19 & 1);
}

uint64_t sub_243F61140@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = sub_2440D1B10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2440D2770();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D2760();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v13 = sub_2440D2790();

  (*(v10 + 8))(v12, v9);
  sub_2440D2160();
  sub_2440D2180();
  v14 = sub_2440D21F0();

  KeyPath = swift_getKeyPath();
  v16 = sub_2440D2660();
  v17 = swift_getKeyPath();
  LOBYTE(v28[0]) = 1;
  sub_2440D1B00();
  (*(v3 + 16))(v5, v8, v2);
  sub_243F62C20(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v18 = sub_2440D1610();
  (*(v3 + 8))(v8, v2);
  sub_2440D2B00();
  sub_2440D1560();
  v21 = v13;
  LOWORD(v22) = 1;
  *(&v22 + 1) = KeyPath;
  *&v23 = v14;
  *(&v23 + 1) = v17;
  *&v24 = v16;
  *(&v24 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0060, &qword_2440D6578);
  sub_243F61698();
  sub_2440D24E0();
  v28[4] = v25;
  v28[5] = v26;
  v28[6] = v27;
  v28[0] = v21;
  v28[1] = v22;
  v28[2] = v23;
  v28[3] = v24;
  return sub_243F5EED4(v28, &qword_27EDC0060, &qword_2440D6578);
}

unint64_t sub_243F61520()
{
  result = qword_27EDC0040;
  if (!qword_27EDC0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0030, &qword_2440E1FA0);
    sub_243F62C20(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0040);
  }

  return result;
}

unint64_t sub_243F615DC()
{
  result = qword_27EDC0050;
  if (!qword_27EDC0050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0038, &qword_2440D6570);
    sub_243F61698();
    sub_243F62C20(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0050);
  }

  return result;
}

unint64_t sub_243F61698()
{
  result = qword_27EDC0058;
  if (!qword_27EDC0058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0060, &qword_2440D6578);
    sub_243F61724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0058);
  }

  return result;
}

unint64_t sub_243F61724()
{
  result = qword_27EDC0068;
  if (!qword_27EDC0068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0070, &qword_2440D6580);
    sub_243F617DC();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0068);
  }

  return result;
}

unint64_t sub_243F617DC()
{
  result = qword_27EDC0078;
  if (!qword_27EDC0078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0080, &qword_2440D6588);
    sub_243F61894();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0, &unk_2440D7640, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0078);
  }

  return result;
}

unint64_t sub_243F61894()
{
  result = qword_27EDC0088;
  if (!qword_27EDC0088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0090, &unk_2440D6590);
    sub_243F6194C();
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0, &unk_2440D65A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0088);
  }

  return result;
}

unint64_t sub_243F6194C()
{
  result = qword_27EDC0098;
  if (!qword_27EDC0098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00A0, &qword_2440D8000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0098);
  }

  return result;
}

unint64_t sub_243F619D0()
{
  result = qword_27EDC00F8;
  if (!qword_27EDC00F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0, &unk_2440E0F40);
    sub_243F60648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC00F8);
  }

  return result;
}

uint64_t sub_243F61A54(uint64_t a1)
{
  v24 = a1;
  v26 = sub_2440D2C80();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RegisteredDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2440D2CD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_243F5DB84();
  v23 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v25 = *(v10 + 8);
  v25(v12, v9);
  sub_243F61EB0(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_243F61F18(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_243F62A80;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F62C20(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  v19 = v26;
  sub_2440D3710();
  v20 = v23;
  MEMORY[0x245D57400](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_243F61EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteredDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F61F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteredDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F61F7C()
{
  v1 = *(type metadata accessor for RegisteredDescription(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_243F61A54(v2);
}

uint64_t sub_243F61FDC()
{
  sub_243F60648();

  return sub_2440D1E70();
}

uint64_t sub_243F62028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v8 = type metadata accessor for RegisteredDescription(0);
  sub_243F620B0(a4, a5 + *(v8 + 20));
  sub_243F6069C();
  return sub_2440D1500();
}

uint64_t sub_243F620B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0, &qword_2440D6538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F62178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0, &qword_2440D6538);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008, &unk_2440D6540);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243F622C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0, &qword_2440D6538);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008, &unk_2440D6540);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243F62404(uint64_t a1)
{
  sub_243F624A0();
  if (v1 <= 0x3F)
  {
    sub_243F624F0(319);
    if (v2 <= 0x3F)
    {
      sub_243F62560(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243F624A0()
{
  if (!qword_27EDC0118)
  {
    v0 = sub_2440D2980();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0118);
    }
  }
}

void sub_243F624F0(uint64_t a1)
{
  if (!qword_27EDC0120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0, &unk_2440E0F40);
    sub_243F619D0();
    v1 = sub_2440D1E80();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC0120);
    }
  }
}

void sub_243F62560(uint64_t a1)
{
  if (!qword_27EDC0128)
  {
    sub_243F6069C();
    v1 = sub_2440D1520();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC0128);
    }
  }
}

unint64_t sub_243F625C0()
{
  result = qword_27EDC0130;
  if (!qword_27EDC0130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0110, &qword_2440D65D0);
    sub_243F6264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0130);
  }

  return result;
}

unint64_t sub_243F6264C()
{
  result = qword_27EDC0138;
  if (!qword_27EDC0138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0108, &qword_2440D65C8);
    sub_243F626D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0138);
  }

  return result;
}

unint64_t sub_243F626D8()
{
  result = qword_27EDC0140;
  if (!qword_27EDC0140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0100, &qword_2440D65C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0028, &unk_2440D6560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0, &unk_2440E0F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0020, &qword_2440D6558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0018, &qword_2440D6550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010, &qword_2440DAD50);
    sub_243F5DD50(&qword_27EDC00E0, &qword_27EDC0018, &qword_2440D6550, &unk_2440E2830);
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010, &qword_2440DAD50, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243F619D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0140);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for RegisteredDescription(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0, &qword_2440D6538);

  v6 = *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008, &unk_2440D6540);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_243F62A80()
{
  type metadata accessor for RegisteredDescription(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0, &qword_2440D6538);
  sub_2440D1E50();
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8, &qword_2440D6530);
  return sub_2440D2950();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F62B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D1A30();
  *a1 = result;
  return result;
}

uint64_t sub_243F62BC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D19B0();
  *a1 = result;
  return result;
}

uint64_t sub_243F62C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243F62C68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_243F62C7C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2440D10F0();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *sub_243FD662C();
  sub_2440B1460(v1);
  v5 = sub_2440D2F80();

  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t sub_243F62D1C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2440D10F0();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *sub_243FD662C();
  sub_2440B1460(v1);
  v5 = sub_2440D2F80();

  v6 = [v4 stringForKey_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_2440D2FB0();

  return v7;
}

uint64_t sub_243F62E08()
{
  v0 = sub_2440D0E90();
  *&v210 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v198 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v206 = &v198 - v4;
  MEMORY[0x28223BE20](v5);
  v205 = &v198 - v6;
  MEMORY[0x28223BE20](v7);
  v209 = &v198 - v8;
  v208 = sub_2440D08A0();
  *&v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v10 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0150, &unk_2440D66D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v198 - v12;
  v14 = sub_2440D0F50();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v212 = &v198 - v19;
  v21 = sub_2440D0E50();
  result = 0;
  if (v20 >> 60 != 15)
  {
    v204 = v0;
    v211 = v15;
    v23 = v20;
    sub_2440D02D0();
    swift_allocObject();
    sub_2440D02C0();
    sub_243F64408();
    sub_2440D02B0();
    v202 = v21;
    v203 = v23;

    v24 = v211;
    (*(v211 + 56))(v13, 0, 1, v14);
    v25 = v212;
    (*(v24 + 32))(v212, v13, v14);
    (*(v24 + 16))(v17, v25, v14);
    v26 = (*(v24 + 88))(v17, v14);
    if (v26 == *MEMORY[0x277D43B68])
    {
      (*(v24 + 96))(v17, v14);
      v27 = *v17;
      if (*v17 > 0.0 && v27 <= 100.0)
      {
        v201 = v14;
        v28 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
        [v28 setNumberStyle_];
        sub_243F6451C();
        v29 = sub_2440D35A0();
        [v28 setMultiplier_];

        [v28 setMinimumFractionDigits_];
        [v28 setMaximumFractionDigits_];
        v30 = sub_243FA9620();
        swift_beginAccess();
        v31 = *(**v30 + 328);

        v31(v32);

        v33 = sub_2440D0780();
        v34 = *(v207 + 8);
        v35 = v208;
        v34(v10, v208);
        [v28 setLocale_];

        v36 = [objc_allocWithZone(MEMORY[0x277CCA980]) initWithDouble_];
        v37 = [v28 stringFromNumber_];

        if (v37)
        {
          *&v210 = sub_2440D2FB0();
          v39 = v38;

          sub_2440D0800();
          v40 = sub_2440D0780();
          v34(v10, v35);
          [v28 setLocale_];

          v41 = [objc_allocWithZone(MEMORY[0x277CCA980]) initWithDouble_];
          v42 = [v28 stringFromNumber_];

          if (v42)
          {
            v43 = sub_2440D2FB0();
            v208 = v44;
            v209 = v43;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160, &qword_2440E1A60);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_2440D66C0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
            v46 = swift_allocObject();
            v207 = xmmword_2440D5CF0;
            *(v46 + 16) = xmmword_2440D5CF0;
            v47 = MEMORY[0x277D837D0];
            *(v46 + 56) = MEMORY[0x277D837D0];
            v48 = sub_243F644C8();
            *(v46 + 64) = v48;
            *(v46 + 32) = v210;
            *(v46 + 40) = v39;
            v49 = sub_243F68750();
            v50 = sub_244057E7C(v49 & 1, v46, 0xD000000000000025, 0x80000002440E8FA0);
            v52 = v51;

            *(v45 + 32) = v50;
            *(v45 + 40) = v52;
            v53 = swift_allocObject();
            *(v53 + 16) = v207;
            *(v53 + 56) = v47;
            *(v53 + 64) = v48;
            v54 = v208;
            *(v53 + 32) = v209;
            *(v53 + 40) = v54;
            v55 = sub_244057E7C(0, v53, 0xD000000000000025, 0x80000002440E8FA0);
            v57 = v56;

            *(v45 + 48) = v55;
            *(v45 + 56) = v57;
            sub_243F5FF20(v202, v203);

LABEL_45:
            (*(v211 + 8))(v212, v201);
            return v45;
          }

          (*(v211 + 8))(v212, v201);
          sub_243F5FF20(v202, v203);
        }

        else
        {
          (*(v211 + 8))(v212, v201);
          sub_243F5FF20(v202, v203);
        }

        return 0;
      }

      (*(v24 + 8))(v212, v14);
      goto LABEL_30;
    }

    v58 = *MEMORY[0x277D43B48];
    v201 = v14;
    if (v26 == v58)
    {
      v59 = (*(v24 + 96))(v17, v14);
      v60 = *v17;
      v61 = *(v17 + 2);
      *&v210 = *(v17 + 3);
      v62 = *(v17 + 4);
      v63 = *(v17 + 5);
      v64 = *(v17 + 6);
      v65 = *(v17 + 7);
      v66 = *(v17 + 8);
      v67 = *(v17 + 9);
      v68 = MEMORY[0x245D574F0](v59, 0.0);
      v209 = v60;
      v69 = v62;
      v70 = v210;
      LODWORD(v208) = v66;
      if (MEMORY[0x245D57510](v68))
      {
        LODWORD(v210) = v70;
        LODWORD(v207) = v65;
        v71 = sub_2440D0E00();
        v73 = v72;
        v74 = sub_2440D0DF0();
        v75 = sub_2440D0E40();
        v76 = sub_243FC04B4(v71, v73, v74, v75 & 1);

        v77 = objc_allocWithZone(MEMORY[0x277CCA980]);
        v213 = v209;
        v214 = v61;
        v215 = v210;
        v216 = v69;
        v217 = v63;
        v218 = v64;
        v219 = v207;
        v220 = v208;
        v221 = v67;
        v78 = [v77 initWithDecimal_];
        v79 = [v76 stringFromNumber_];

        if (v79)
        {
          v80 = sub_2440D2FB0();
          v82 = v81;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160, &qword_2440E1A60);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_2440D66C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
          v84 = swift_allocObject();
          v210 = xmmword_2440D5CF0;
          *(v84 + 16) = xmmword_2440D5CF0;
          v85 = MEMORY[0x277D837D0];
          *(v84 + 56) = MEMORY[0x277D837D0];
          v86 = sub_243F644C8();
          *(v84 + 64) = v86;
          *(v84 + 32) = v80;
          *(v84 + 40) = v82;

          v87 = sub_243F68750();
          v88 = sub_244057E7C(v87 & 1, v84, 0xD000000000000024, 0x80000002440E8F70);
          v90 = v89;

          *(v83 + 32) = v88;
          *(v83 + 40) = v90;
          v91 = swift_allocObject();
          *(v91 + 16) = v210;
          *(v91 + 56) = v85;
          *(v91 + 64) = v86;
          *(v91 + 32) = v80;
          *(v91 + 40) = v82;
          v92 = 0x80000002440E8F70;
          v93 = v91;
          v94 = 0xD000000000000024;
LABEL_12:
          v95 = sub_244057E7C(0, v93, v94, v92);
          v97 = v96;

          *(v83 + 48) = v95;
          *(v83 + 56) = v97;
          sub_243F5FF20(v202, v203);
          (*(v211 + 8))(v212, v201);
          return v83;
        }

LABEL_34:
        (*(v211 + 8))(v212, v201);
        goto LABEL_30;
      }
    }

    else
    {
      if (v26 == *MEMORY[0x277D43B58])
      {
        (*(v24 + 96))(v17, v14);
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0170, &qword_2440D66E8);
        v99 = v17 + *(v98 + 48);
        v100 = *v99;
        v101 = *(v99 + 2);
        *&v207 = *(v99 + 3);
        v206 = *(v99 + 4);
        v102 = *(v99 + 5);
        v103 = *(v99 + 6);
        v104 = *(v99 + 7);
        v105 = *(v99 + 8);
        v106 = *(v99 + 9);
        v208 = *(v17 + *(v98 + 64));
        v107 = (*(v210 + 32))(v209, v17, v204);
        v108 = MEMORY[0x245D574F0](v107, 0.0);
        v109 = v100;
        v200 = v101;
        v110 = v104;
        v112 = v206;
        v111 = v207;
        v199 = v105;
        v198 = v106;
        if ((MEMORY[0x245D57510](v108) & 1) != 0 && v208 >= 1)
        {
          LODWORD(v207) = v111;
          v113 = sub_2440D0E00();
          v115 = v114;
          v116 = sub_2440D0DF0();
          v117 = sub_2440D0E40();
          v118 = sub_243FC04B4(v113, v115, v116, v117 & 1);

          v119 = objc_allocWithZone(MEMORY[0x277CCA980]);
          v213 = v109;
          v214 = v200;
          v215 = v207;
          v216 = v112;
          v217 = v102;
          v218 = v103;
          v219 = v110;
          v220 = v199;
          v221 = v198;
          v120 = [v119 initWithDecimal_];
          v121 = [v118 stringFromNumber_];

          if (v121)
          {
            v122 = sub_2440D2FB0();
            v124 = v123;

            v125 = v210;
            v126 = v204;
            v127 = v205;
            (*(v210 + 16))(v205, v209, v204);
            v128 = (*(v125 + 88))(v127, v126);
            if (v128 == *MEMORY[0x277D43950])
            {
              v129 = "ION_INSTALLMENT_MONTHLY";
              v130 = 0xD000000000000026;
            }

            else if (v128 == *MEMORY[0x277D43960])
            {
              v129 = "ION_INSTALLMENT_YEARLY";
              v130 = 0xD000000000000027;
            }

            else
            {
              if (v128 != *MEMORY[0x277D43958])
              {
                sub_243F5FF20(v202, v203);

                v197 = *(v125 + 8);
                v197(v209, v126);
                (*(v211 + 8))(v212, v201);
                v197(v127, v126);
                return 0;
              }

              v129 = "ION_MEMBERSHIP_WEEKLY";
              v130 = 0xD000000000000026;
            }

            v206 = v130;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160, &qword_2440E1A60);
            v180 = swift_allocObject();
            v207 = xmmword_2440D66C0;
            *(v180 + 16) = xmmword_2440D66C0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
            v181 = swift_allocObject();
            *(v181 + 16) = v207;
            v182 = MEMORY[0x277D83C10];
            *(v181 + 56) = MEMORY[0x277D83B88];
            *(v181 + 64) = v182;
            v183 = v208;
            *(v181 + 32) = v208;
            *(v181 + 96) = MEMORY[0x277D837D0];
            v184 = sub_243F644C8();
            *(v181 + 104) = v184;
            v185 = v122;
            *(v181 + 72) = v122;
            *(v181 + 80) = v124;

            v186 = sub_243F68750();
            v187 = sub_244057E7C(v186 & 1, v181, v130, v129 | 0x8000000000000000);
            v189 = v188;

            *(v180 + 32) = v187;
            *(v180 + 40) = v189;
            v190 = swift_allocObject();
            *(v190 + 16) = v207;
            *(v190 + 56) = MEMORY[0x277D83B88];
            *(v190 + 64) = MEMORY[0x277D83C10];
            *(v190 + 32) = v183;
            *(v190 + 96) = MEMORY[0x277D837D0];
            *(v190 + 104) = v184;
            *(v190 + 72) = v185;
            *(v190 + 80) = v124;
            v191 = sub_244057E7C(0, v190, v206, v129 | 0x8000000000000000);
            v193 = v192;

            *(v180 + 48) = v191;
            *(v180 + 56) = v193;
            sub_243F5FF20(v202, v203);
            (*(v210 + 8))(v209, v204);
            (*(v211 + 8))(v212, v201);
            return v180;
          }

          sub_243F5FF20(v202, v203);
          (*(v210 + 8))(v209, v204);
          (*(v211 + 8))(v212, v201);
        }

        else
        {
          sub_243F5FF20(v202, v203);
          (*(v210 + 8))(v209, v204);
          (*(v24 + 8))(v212, v201);
        }

        return 0;
      }

      v131 = v210;
      if (v26 == *MEMORY[0x277D43B50])
      {
        (*(v24 + 96))(v17, v201);
        v132 = v206;
        v133 = v204;
        (*(v131 + 32))(v206, v17, v204);
        (*(v131 + 16))(v2, v132, v133);
        v134 = (*(v131 + 88))(v2, v133);
        if (v134 == *MEMORY[0x277D43950])
        {
          v135 = "ION_MEMBERSHIP_MONTHLY";
          v136 = 0xD000000000000025;
        }

        else if (v134 == *MEMORY[0x277D43960])
        {
          v135 = "ION_MEMBERSHIP_YEARLY";
          v136 = 0xD000000000000026;
        }

        else
        {
          if (v134 != *MEMORY[0x277D43958])
          {
            sub_243F5FF20(v202, v203);
            v194 = *(v131 + 8);
            v194(v132, v133);
            (*(v24 + 8))(v212, v201);
            v194(v2, v133);
            return 0;
          }

          v135 = "ION_PRE_AUTH_AMOUNT";
          v136 = 0xD000000000000025;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160, &qword_2440E1A60);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_2440D66C0;
        v171 = sub_243F68750();
        *(v45 + 32) = sub_2440579C8(v171 & 1, v136, v135 | 0x8000000000000000);
        *(v45 + 40) = v172;
        v173 = sub_2440579C8(0, v136, v135 | 0x8000000000000000);
        v175 = v174;

        *(v45 + 48) = v173;
        *(v45 + 56) = v175;
        sub_243F5FF20(v202, v203);
        (*(v131 + 8))(v132, v133);
        goto LABEL_45;
      }

      if (v26 != *MEMORY[0x277D43B40])
      {
        if (v26 == *MEMORY[0x277D43B60])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160, &qword_2440E1A60);
          v167 = swift_allocObject();
          *(v167 + 16) = xmmword_2440D66C0;
          v168 = sub_243F68750();
          *(v167 + 32) = sub_2440579C8(v168 & 1, 0xD00000000000001CLL, 0x80000002440E8E00);
          *(v167 + 40) = v169;
          *(v167 + 48) = sub_2440579C8(0, 0xD00000000000001CLL, 0x80000002440E8E00);
          *(v167 + 56) = v170;
          sub_243F5FF20(v202, v203);
          (*(v24 + 8))(v212, v201);
          return v167;
        }

        if (v26 == *MEMORY[0x277D43B70])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160, &qword_2440E1A60);
          v176 = swift_allocObject();
          *(v176 + 16) = xmmword_2440D66C0;
          v177 = sub_243F68750();
          *(v176 + 32) = sub_2440579C8(v177 & 1, 0xD000000000000024, 0x80000002440E8DD0);
          *(v176 + 40) = v178;
          *(v176 + 48) = sub_2440579C8(0, 0xD000000000000024, 0x80000002440E8DD0);
          *(v176 + 56) = v179;
          sub_243F5FF20(v202, v203);
          (*(v24 + 8))(v212, v201);
          return v176;
        }

        v195 = *(v24 + 8);
        v196 = v201;
        v195(v212, v201);
        sub_243F5FF20(v202, v203);
        v195(v17, v196);
        return 0;
      }

      (*(v24 + 96))(v17, v201);
      v137 = *v17;
      v138 = *(v17 + 2);
      *&v210 = *(v17 + 3);
      v139 = *(v17 + 4);
      v140 = *(v17 + 5);
      v141 = *(v17 + 6);
      v142 = *(v17 + 7);
      v143 = *(v17 + 8);
      v144 = *(v17 + 9);
      v145 = MEMORY[0x245D57500](0);
      v209 = v137;
      v146 = v139;
      v147 = v210;
      LODWORD(v208) = v143;
      if (MEMORY[0x245D57510](v145))
      {
        LODWORD(v210) = v147;
        LODWORD(v207) = v142;
        v148 = sub_2440D0E00();
        v150 = v149;
        v151 = sub_2440D0DF0();
        v152 = sub_2440D0E40();
        v153 = sub_243FC04B4(v148, v150, v151, v152 & 1);

        v154 = objc_allocWithZone(MEMORY[0x277CCA980]);
        v213 = v209;
        v214 = v138;
        v215 = v210;
        v216 = v146;
        v217 = v140;
        v218 = v141;
        v219 = v207;
        v220 = v208;
        v221 = v144;
        v155 = [v154 initWithDecimal_];
        v156 = [v153 stringFromNumber_];

        if (v156)
        {
          v157 = sub_2440D2FB0();
          v159 = v158;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160, &qword_2440E1A60);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_2440D66C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
          v160 = swift_allocObject();
          v210 = xmmword_2440D5CF0;
          *(v160 + 16) = xmmword_2440D5CF0;
          *(v160 + 56) = MEMORY[0x277D837D0];
          v161 = sub_243F644C8();
          *(v160 + 64) = v161;
          *(v160 + 32) = v157;
          *(v160 + 40) = v159;

          v162 = sub_243F68750();
          v163 = sub_244057E7C(v162 & 1, v160, 0xD000000000000023, 0x80000002440E8E20);
          v165 = v164;

          *(v83 + 32) = v163;
          *(v83 + 40) = v165;
          v166 = swift_allocObject();
          *(v166 + 16) = v210;
          *(v166 + 56) = MEMORY[0x277D837D0];
          *(v166 + 64) = v161;
          *(v166 + 32) = v157;
          *(v166 + 40) = v159;
          v92 = 0x80000002440E8E20;
          v93 = v166;
          v94 = 0xD000000000000023;
          goto LABEL_12;
        }

        goto LABEL_34;
      }
    }

    (*(v24 + 8))(v212, v201);
LABEL_30:
    sub_243F5FF20(v202, v203);
    return 0;
  }

  return result;
}

unint64_t sub_243F64408()
{
  result = qword_27EDC0158;
  if (!qword_27EDC0158)
  {
    sub_2440D0F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0158);
  }

  return result;
}

uint64_t sub_243F64460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0150, &unk_2440D66D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243F644C8()
{
  result = qword_27EDC0168;
  if (!qword_27EDC0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0168);
  }

  return result;
}

unint64_t sub_243F6451C()
{
  result = qword_27EDC0178;
  if (!qword_27EDC0178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC0178);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_243F645A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243F645C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

void type metadata accessor for Decimal()
{
  if (!qword_27EDC0180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDC0180);
    }
  }
}

uint64_t type metadata accessor for IdentityCenterView(uint64_t a1)
{
  result = qword_27EDC6DE0;
  if (!qword_27EDC6DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243F64688()
{
  result = qword_27EDC0190;
  if (!qword_27EDC0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0190);
  }

  return result;
}

uint64_t sub_243F646DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for IdentityCenterView(0);
  v50 = *(v3 - 1);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01C0, &qword_2440D6760);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01C8, &qword_2440D6768);
  MEMORY[0x28223BE20](v51);
  v57 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01D0, &qword_2440D6770);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - v10;
  *v7 = sub_2440D1C20();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01D8, &qword_2440D6778);
  sub_243F64DDC(v1, &v7[*(v11 + 44)]);
  v12 = sub_2440CBE68();
  swift_beginAccess();
  v13 = *v12;
  v14 = v2 + v3[11];
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v58) = v15;
  v59 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  LOBYTE(v12) = v62;
  v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01E0, &qword_2440D6780) + 36)];
  *v17 = v13;
  v17[8] = v12;
  sub_2440D2BC0();
  v18 = sub_2440D2B60();

  v19 = v2 + v3[8];
  v21 = *(v19 + 8);
  LOBYTE(v58) = *v19;
  v20 = v58;
  v59 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  LOBYTE(v12) = sub_243FA1978(v62, 2);
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01E8, &qword_2440D6788) + 36)];
  *v22 = v18;
  v22[8] = v12 & 1;
  v23 = sub_2440D2BA0();
  LOBYTE(v58) = v20;
  v59 = v21;
  sub_2440D2820();
  v24 = sub_243FA1978(v62, 4);
  v25 = &v7[*(v5 + 36)];
  *v25 = v23;
  v25[8] = v24;
  v52 = v3;
  v26 = (v2 + v3[9]);
  v27 = *v26;
  v28 = v26[1];
  v58 = v27;
  v59 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v29 = v49;
  sub_243F66AC0(v2, v49);
  v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v50 = v4;
  v31 = swift_allocObject();
  sub_243F66B28(v29, v31 + v30);
  v32 = sub_243F66BD4(&qword_27EDC01F0, &qword_27EDC01C0, &qword_2440D6760, sub_243F66BA4);
  sub_2440CC638(&v62, sub_243F66B8C, v31, v5, MEMORY[0x277D839F8], v32, MEMORY[0x277CE1508], v57);

  sub_243F5EED4(v7, &qword_27EDC01C0, &qword_2440D6760);
  if (*v2)
  {
    v33 = *(**v2 + 136);

    LOBYTE(v33) = v33(v34);

    LOBYTE(v58) = v33 & 1;
    v35 = v29;
    sub_243F66AC0(v2, v29);
    v36 = swift_allocObject();
    sub_243F66B28(v29, v36 + v30);
    v48 = sub_243F66E18();
    v37 = sub_243F66EFC();
    v38 = v53;
    v39 = v51;
    v40 = v57;
    sub_2440D25E0();

    sub_243F5EED4(v40, &qword_27EDC01C8, &qword_2440D6768);
    v41 = v2 + v52[6];
    v42 = *v41;
    v43 = *(v41 + 8);
    LOBYTE(v41) = *(v41 + 16);
    v58 = v42;
    v59 = v43;
    LOBYTE(v60) = v41;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0198, &qword_2440D7190);
    MEMORY[0x245D56840](&v62, v44);
    sub_243F66AC0(v2, v35);
    v45 = swift_allocObject();
    sub_243F66B28(v35, v45 + v30);
    v58 = v39;
    v59 = &type metadata for PhoneOrientation;
    v60 = v48;
    v61 = v37;
    swift_getOpaqueTypeConformance2();
    sub_243F67588();
    v46 = v55;
    sub_2440D25D0();

    return (*(v54 + 8))(v38, v46);
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager, &unk_2440D77E0);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243F64DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IdentityCenterView(0);
  v76 = *(v4 - 1);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = sub_2440D1F60();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0290, &qword_2440D6820);
  MEMORY[0x28223BE20](v64);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0298, &qword_2440D6828);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02A0, &qword_2440D6830);
  MEMORY[0x28223BE20](v67);
  v68 = &v57 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02A8, &qword_2440D6838);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v57 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02B0, &qword_2440D6840);
  MEMORY[0x28223BE20](v69);
  v74 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02B8, &qword_2440D6848);
  v77 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v72 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v71 = &v57 - v19;
  v20 = a1;
  v21 = (a1 + v4[11]);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v80) = v22;
  *(&v80 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  v24 = 1;
  if (v78 == 1)
  {
    v58 = v16;
    v59 = v5;
    v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = a2;
    *v9 = sub_2440D1C20();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02C0, &unk_2440D6850);
    sub_243F6568C(v20, &v9[*(v25 + 44)]);
    sub_2440D1F30();
    v26 = sub_243F5DD50(&qword_27EDC02C8, &qword_27EDC0290, &qword_2440D6820, MEMORY[0x277CE1198]);
    v27 = v64;
    sub_2440D2490();
    (*(v62 + 8))(v7, v63);
    sub_243F5EED4(v9, &qword_27EDC0290, &qword_2440D6820);
    v28 = v4[5];
    v63 = v20;
    v29 = v20 + v28;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
    v62 = v29;
    sub_2440D1E40();
    v30 = v12;
    if (v80 == 8 || (LOBYTE(v78) = 5, sub_243F68230(), (sub_2440D2F50() & 1) == 0))
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v31 = (v63 + v4[14]);
      v32 = *v31;
      v33 = *(v31 + 2);
      v80 = v32;
      v81 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
      sub_2440D2820();
      v34 = v78;
      v35 = v79;
    }

    v36 = v60;
    *&v80 = v34;
    *(&v80 + 1) = v35;
    sub_243F4EF64();
    v37 = sub_2440D2310();
    v39 = v38;
    v41 = v40;
    *&v80 = v27;
    *(&v80 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    v42 = v68;
    v43 = v66;
    sub_2440D2430();
    sub_243F62C68(v37, v39, v41 & 1);

    (*(v65 + 8))(v30, v43);
    sub_2440D1E60();
    LOBYTE(v78) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258, &qword_2440E3AF0);
    sub_243F67FF8();
    sub_243F67D98();
    v44 = v70;
    sub_2440D24A0();

    sub_243F5EED4(v42, &qword_27EDC02A0, &qword_2440D6830);
    v45 = v63;
    sub_243F66AC0(v63, v36);
    v46 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v47 = swift_allocObject();
    sub_243F66B28(v36, v47 + v46);
    v48 = v74;
    (*(v73 + 32))(v74, v44, v75);
    v49 = (v48 + *(v69 + 36));
    *v49 = sub_243F68124;
    v49[1] = v47;
    v49[2] = 0;
    v49[3] = 0;
    sub_243F66AC0(v45, v36);
    v50 = swift_allocObject();
    sub_243F66B28(v36, v50 + v46);
    v51 = v72;
    sub_243F681C8(v48, v72, &qword_27EDC02B0, &qword_2440D6840);
    v16 = v58;
    v52 = (v51 + *(v58 + 36));
    *v52 = 0;
    v52[1] = 0;
    v52[2] = sub_243F6813C;
    v52[3] = v50;
    v53 = v51;
    v54 = v71;
    sub_243F681C8(v53, v71, &qword_27EDC02B8, &qword_2440D6848);
    v55 = v54;
    a2 = v61;
    sub_243F681C8(v55, v61, &qword_27EDC02B8, &qword_2440D6848);
    v24 = 0;
  }

  return (*(v77 + 56))(a2, v24, 1, v16);
}

uint64_t sub_243F6568C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v125 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02E0, &qword_2440D6860);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v106 - v4);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02E8, &qword_2440D6868);
  MEMORY[0x28223BE20](v115);
  v118 = &v106 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02F0, &qword_2440D6870);
  MEMORY[0x28223BE20](v116);
  v120 = &v106 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02F8, &qword_2440D6878);
  MEMORY[0x28223BE20](v119);
  v124 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = &v106 - v10;
  MEMORY[0x28223BE20](v11);
  v121 = &v106 - v12;
  v13 = sub_2440D2B00();
  v122 = v14;
  v123 = v13;
  v15 = type metadata accessor for IdentityCenterView(0);
  v16 = (a1 + v15[8]);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v127) = *v16;
  *(&v127 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  LOBYTE(v127) = 0;
  sub_243F686B4();
  if (sub_2440D2F50())
  {
    sub_243F68708(&v127);
  }

  else
  {
    LOBYTE(v127) = v17;
    *(&v127 + 1) = v18;
    sub_2440D2820();
    v19 = v126[0];
    sub_243F4E2F4();
    v20 = sub_243F4E2F4();
    sub_244045F18(v20);
    sub_243F68750();
    sub_243F676A0();
    sub_243F4E2F4();
    sub_243F62020();
    sub_24406A0A8(v19, &v153);
    sub_2440D2B00();
    sub_2440D1560();
    v170 = v156;
    v169 = v155;
    *&v175 = v161;
    v174 = v160;
    v173 = v159;
    v171 = v157;
    v172 = v158;
    v168 = v154;
    v167 = v153;
    v21 = (a1 + v15[10]);
    v22 = *v21;
    v23 = v21[1];
    *&v127 = v22;
    *(&v127 + 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
    sub_2440D2820();
    v24 = *v126 * 0.0174532925;
    sub_2440D2C40();
    v26 = v25;
    v28 = v27;
    v29 = (a1 + v15[9]);
    v30 = *v29;
    v31 = v29[1];
    *&v127 = v30;
    *(&v127 + 1) = v31;
    sub_2440D2820();
    v126[8] = v175;
    v126[9] = v176;
    v126[10] = v177;
    *&v126[11] = v178;
    v126[4] = v171;
    v126[5] = v172;
    v126[6] = v173;
    v126[7] = v174;
    v126[0] = v167;
    v126[1] = v168;
    v126[2] = v169;
    v126[3] = v170;
    *(&v126[11] + 1) = v24;
    *&v126[12] = v26;
    *(&v126[12] + 1) = v28;
    nullsub_1();
    v137 = v126[10];
    v138 = v126[11];
    v139 = v126[12];
    *&v140 = *&v126[13];
    v133 = v126[6];
    v134 = v126[7];
    v135 = v126[8];
    v136 = v126[9];
    v129 = v126[2];
    v130 = v126[3];
    v131 = v126[4];
    v132 = v126[5];
    v127 = v126[0];
    v128 = v126[1];
  }

  v126[10] = v137;
  v126[11] = v138;
  v126[12] = v139;
  v126[6] = v133;
  v126[7] = v134;
  v126[8] = v135;
  v126[9] = v136;
  v126[2] = v129;
  v126[3] = v130;
  v126[4] = v131;
  v126[5] = v132;
  v126[0] = v127;
  v126[1] = v128;
  v163 = v137;
  v164 = v138;
  v165 = v139;
  v159 = v133;
  v160 = v134;
  v161 = v135;
  v162 = v136;
  v155 = v129;
  v156 = v130;
  v157 = v131;
  v158 = v132;
  v153 = v127;
  v154 = v128;
  v177 = v137;
  v178 = v138;
  v179 = v139;
  v173 = v133;
  v174 = v134;
  v175 = v135;
  v176 = v136;
  v169 = v129;
  v170 = v130;
  v171 = v131;
  v172 = v132;
  *&v126[13] = v140;
  v166 = v140;
  v180 = v140;
  v167 = v127;
  v168 = v128;
  sub_243F5F574(&v153, &v127, &qword_27EDC0300, &qword_2440D6880);
  sub_243F5EED4(&v167, &qword_27EDC0300, &qword_2440D6880);
  v191 = v163;
  v192 = v164;
  v193 = v165;
  v194 = v166;
  v187 = v159;
  v188 = v160;
  v189 = v161;
  v190 = v162;
  v183 = v155;
  v184 = v156;
  v185 = v157;
  v186 = v158;
  v32.n128_u64[1] = *(&v153 + 1);
  v181 = v153;
  v182 = v154;
  v32.n128_u64[0] = 0xC059000000000000;
  v114 = sub_243F9A1E0(v32);
  sub_2440D2B00();
  sub_2440D1560();
  *v5 = sub_2440D2B00();
  v5[1] = v33;
  v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0308, &qword_2440D6888) + 44);
  v34 = (a1 + v15[13]);
  v35 = *v34;
  v110 = v34[1];
  v111 = v35;
  v109 = v34[2];
  *&v127 = v35;
  *(&v127 + 1) = v110;
  *&v128 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
  sub_2440D2820();
  v36 = v126[0];
  sub_24401FBC0();
  v37 = sub_24401FBD4(v36, *(&v36 + 1));
  v112 = v5;
  v39 = v38;
  v41 = v40;
  sub_2440D21D0();
  v42 = sub_2440D22E0();
  v107 = v43;
  v108 = v42;
  v45 = v44;
  v106 = v46;

  sub_243F62C68(v37, v39, v41 & 1);

  v47 = (a1 + v15[10]);
  v48 = *v47;
  v49 = v47[1];
  *&v127 = v48;
  *(&v127 + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v50 = *v126 * 0.0174532925;
  sub_2440D2C40();
  v52 = v51;
  v54 = v53;
  v55 = (a1 + v15[9]);
  v56 = *v55;
  v57 = v55[1];
  *&v127 = v56;
  *(&v127 + 1) = v57;
  v58 = sub_2440D2820();
  v59 = *&v126[0];
  v60 = v45 & 1;
  LOBYTE(v127) = v45 & 1;
  v68 = sub_243F9A09C(v58, v61, v62, v63, v64, v65, v66, v67);
  *&v127 = v111;
  *(&v127 + 1) = v110;
  *&v128 = v109;
  sub_2440D2820();
  v69 = v126[0];
  KeyPath = swift_getKeyPath();
  *&v126[0] = v108;
  *(&v126[0] + 1) = v107;
  LOBYTE(v126[1]) = v60;
  *(&v126[1] + 1) = v106;
  *&v126[2] = v50;
  *(&v126[2] + 1) = v52;
  *&v126[3] = v54;
  *(&v126[3] + 1) = v59;
  *&v126[4] = v68;
  *(&v126[4] + 8) = v69;
  *(&v126[5] + 1) = KeyPath;
  LOBYTE(v126[6]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0320, &qword_2440D68D0);
  sub_243F685D0();
  v71 = v112;
  sub_2440D24E0();
  v131 = v126[4];
  v132 = v126[5];
  LOBYTE(v133) = v126[6];
  v127 = v126[0];
  v128 = v126[1];
  v129 = v126[2];
  v130 = v126[3];
  sub_243F5EED4(&v127, &qword_27EDC0320, &qword_2440D68D0);
  sub_2440D2B00();
  sub_2440D18E0();
  v72 = v118;
  sub_243F681C8(v71, v118, &qword_27EDC02E0, &qword_2440D6860);
  v73 = (v72 + *(v115 + 36));
  v74 = v151;
  v73[4] = v150;
  v73[5] = v74;
  v73[6] = v152;
  v75 = v147;
  *v73 = v146;
  v73[1] = v75;
  v76 = v149;
  v73[2] = v148;
  v73[3] = v76;
  LOBYTE(v37) = sub_2440D20C0();
  sub_2440D13D0();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v120;
  sub_243F681C8(v72, v120, &qword_27EDC02E8, &qword_2440D6868);
  v86 = v85 + *(v116 + 36);
  *v86 = v37;
  *(v86 + 8) = v78;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0;
  v87.n128_u64[0] = 0xC069000000000000;
  v88 = sub_243F9A1E0(v87);
  sub_243F9A09C(v88, v89, v90, v91, v92, v93, v94, v95);
  v96 = sub_2440D1580();

  v97 = v117;
  sub_243F681C8(v85, v117, &qword_27EDC02F0, &qword_2440D6870);
  *(v97 + *(v119 + 36)) = v96;
  v98 = v121;
  sub_243F681C8(v97, v121, &qword_27EDC02F8, &qword_2440D6878);
  v99 = v124;
  sub_243F5F574(v98, v124, &qword_27EDC02F8, &qword_2440D6878);
  v101 = v122;
  v100 = v123;
  *&v126[0] = v123;
  *(&v126[0] + 1) = v122;
  v126[11] = v191;
  v126[12] = v192;
  v126[13] = v193;
  v126[7] = v187;
  v126[8] = v188;
  v126[9] = v189;
  v126[10] = v190;
  v126[3] = v183;
  v126[4] = v184;
  v126[5] = v185;
  v126[6] = v186;
  v126[1] = v181;
  v126[2] = v182;
  v102 = v114;
  *&v126[14] = v194;
  *(&v126[14] + 1) = v114;
  v126[15] = v195;
  v126[16] = v196;
  v126[17] = v197;
  v103 = v125;
  memcpy(v125, v126, 0x120uLL);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0310, &qword_2440D6890);
  sub_243F5F574(v99, v103 + *(v104 + 48), &qword_27EDC02F8, &qword_2440D6878);
  sub_243F5F574(v126, &v127, &qword_27EDC0318, &qword_2440D6898);
  sub_243F5EED4(v98, &qword_27EDC02F8, &qword_2440D6878);
  sub_243F5EED4(v99, &qword_27EDC02F8, &qword_2440D6878);
  *&v127 = v100;
  *(&v127 + 1) = v101;
  v138 = v191;
  v139 = v192;
  v140 = v193;
  v134 = v187;
  v135 = v188;
  v136 = v189;
  v137 = v190;
  v130 = v183;
  v131 = v184;
  v132 = v185;
  v133 = v186;
  v128 = v181;
  v129 = v182;
  v141 = v194;
  v142 = v102;
  v143 = v195;
  v144 = v196;
  v145 = v197;
  return sub_243F5EED4(&v127, &qword_27EDC0318, &qword_2440D6898);
}

void sub_243F6622C(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440D2CA0();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityCenterView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243F5DB84();
  v11 = sub_2440D3530();
  sub_243F66AC0(a1, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243F66B28(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_243F684DC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_29;
  v14 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F682A4(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v14);
  _Block_release(v14);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
}

uint64_t sub_243F665B0(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440D2CA0();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityCenterView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243F5DB84();
  v11 = sub_2440D3530();
  sub_243F66AC0(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243F66B28(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_243F68284;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F682A4(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v14);
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t sub_243F66920(void *a1)
{
  if (*a1)
  {
    v1 = *(**a1 + 136);

    LOBYTE(v1) = v1(v2);

    sub_243F7CACC(v1 & 1, 1);
    type metadata accessor for IdentityCenterView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
    sub_2440D2830();
    sub_2440709C4();
    v3 = sub_2440D2B80();
    MEMORY[0x28223BE20](v3);
    sub_2440D16E0();
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager, &unk_2440D77E0);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243F66AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCenterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F66B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCenterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F66BD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220, &qword_2440D7220, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243F66C84()
{
  result = qword_27EDC0200;
  if (!qword_27EDC0200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC01E0, &qword_2440D6780);
    sub_243F5DD50(&qword_27EDC0208, &qword_27EDC0210, &unk_2440D6790, MEMORY[0x277CE1198]);
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220, &qword_2440D7220, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0200);
  }

  return result;
}

uint64_t sub_243F66D68()
{
  type metadata accessor for IdentityCenterView(0);
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

unint64_t sub_243F66E18()
{
  result = qword_27EDC0228;
  if (!qword_27EDC0228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC01C8, &qword_2440D6768);
    sub_243F66BD4(&qword_27EDC01F0, &qword_27EDC01C0, &qword_2440D6760, sub_243F66BA4);
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238, &qword_2440D67A0, &unk_2440E7B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0228);
  }

  return result;
}

unint64_t sub_243F66EFC()
{
  result = qword_27EDC09C0;
  if (!qword_27EDC09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC09C0);
  }

  return result;
}

uint64_t sub_243F66F50(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for IdentityCenterView(0);
  v3 = *a2;
  if (v3 <= 8)
  {
    if (v3 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
      sub_2440D2830();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
      sub_2440D2830();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
      sub_2440D2830();
      v4 = "VO_IDENTITY_CONNECTING_ID_HOLDER_DEVICE";
    }

    else
    {
      if (v3 != 7)
      {
LABEL_14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
        sub_2440D2830();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
        sub_2440D2830();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
        sub_2440D2830();
        return sub_2440D2830();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
      sub_2440D2830();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
      sub_2440D2830();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
      sub_2440D2830();
      v4 = "VO_IDENTITY_WAIT_ID_HOLDER_CONFIRMATION";
    }

    v6 = (v4 - 32) | 0x8000000000000000;
    v5 = 0xD000000000000027;
LABEL_13:
    sub_2440579C8(0, v5, v6);
    return sub_2440D2830();
  }

  if (v3 == 9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
    sub_2440D2830();
    v5 = 0xD000000000000024;
    v6 = 0x80000002440E9020;
    goto LABEL_13;
  }

  if (v3 != 11 && v3 != 13)
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
  return sub_2440D2830();
}

unint64_t sub_243F67588()
{
  result = qword_27EDC0240;
  if (!qword_27EDC0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0240);
  }

  return result;
}

uint64_t sub_243F675E0()
{
  type metadata accessor for FineRotationManager(0);
  sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager, &unk_2440D77E0);

  return sub_2440D1930();
}

uint64_t sub_243F67654()
{
  sub_243F64688();

  return sub_2440D1E70();
}

double sub_243F676C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a9@<X8>, double a13, uint64_t a14, double a15, uint64_t a16)
{
  *a9 = a1;
  a9[1] = a2;
  v21 = type metadata accessor for IdentityCenterView(0);
  sub_243F681C8(a3, a9 + v21[5], &qword_27EDBFFE0, &unk_2440D64A0);
  v22 = a9 + v21[6];
  *v22 = a4;
  *(v22 + 1) = a5;
  v22[16] = a6;
  v23 = v21[7];
  *(a9 + v23) = sub_244070800();
  v24 = a9 + v21[8];
  sub_2440D2810();
  *v24 = v32;
  *(v24 + 1) = *(&v32 + 1);
  v25 = (a9 + v21[9]);
  sub_2440D2810();
  *v25 = v32;
  v26 = (a9 + v21[10]);
  sub_2440D2810();
  *v26 = v32;
  v27 = a9 + v21[11];
  sub_2440D2810();
  *v27 = v32;
  *(v27 + 1) = *(&v32 + 1);
  v28 = (a9 + v21[12]);
  sub_2440D2810();
  *v28 = v32;
  v29 = a9 + v21[13];
  sub_2440D2810();
  *v29 = v32;
  *(v29 + 2) = v33;
  v30 = a9 + v21[14];
  sub_2440D2810();
  result = *&v32;
  *v30 = v32;
  *(v30 + 2) = v33;
  return result;
}