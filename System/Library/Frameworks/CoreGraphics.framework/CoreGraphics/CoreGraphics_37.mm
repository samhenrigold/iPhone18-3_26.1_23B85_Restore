uint64_t DITHERRGBA32M(unsigned int a1, int a2, int a3)
{
  v3 = ((a1 >> 8) & 0xFF00FF) * a3 + 65537 + (((((a1 >> 8) & 0xFF00FF) * a3) >> 8) & 0xFF00FF);
  v4 = (a1 & 0xFF00FF) * a3 + 65537 + ((((a1 & 0xFF00FF) * a3) >> 8) & 0xFF00FF);
  v5 = *(pixel_dither_lookup + ((v4 >> 7) & 0x1FELL)) + a2;
  return (4 * (*(pixel_dither_lookup + ((v3 >> 23) & 0x1FELL)) + a2)) & 0x7C00 | ((*(pixel_dither_lookup + ((v3 >> 7) & 0x1FELL)) + a2) >> 8) & 0x1F | (((v5 >> 10) & 7) << 24) & 0x7FFFFFF | (BYTE1(v5) << 27) | ((*(pixel_dither_lookup + ((v4 >> 23) & 0x1FELL)) + a2) >> 3) & 0x3E0;
}

uint64_t PDAM(unsigned int a1, char a2, char a3)
{
  v3 = ~a3 >> 3;
  v4 = ((a1 | (a1 << 11)) & 0x1F001F) * v3;
  v5 = (((a2 & 0xF8) << 13) | (a1 >> 10) & 0x1F) * v3;
  v6 = (a1 & 0x7FFFFFF | ((a2 & 0xF8) >> 3 << 27)) - (((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 5) & 0x1F | ((((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 5) & 0x1F) << 10) & 0x7FFFFFF | (((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 21) << 27));
  return v6 | (v6 >> 29 << 24);
}

uint64_t PDM(unsigned int a1, char a2)
{
  v2 = ~a2 >> 3;
  v3 = ((a1 | (a1 << 11)) & 0x1F001F) * v2;
  return (a1 - ((33 * ((a1 >> 10) & 0x1F) * v2 + 32) & 0x7C00 | ((v3 + 65537 + ((v3 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v3 + 65537 + ((v3 >> 5) & 0x1F001F)) >> 5) & 0x1F));
}

uint64_t PDAMplusDAM(unsigned int a1, char a2, unsigned int a3, unsigned int a4, char a5, unsigned int a6)
{
  v6 = ((a1 | (a1 << 11)) & 0x1F001F) * (a3 >> 3) + ((a4 | (a4 << 11)) & 0x1F001F) * (a6 >> 3);
  v7 = (((a2 & 0xF8) << 13) | (a1 >> 10) & 0x1F) * (a3 >> 3) + (((a5 & 0xF8) << 13) | (a4 >> 10) & 0x1F) * (a6 >> 3);
  return ((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 5) & 0x1F | ((((v7 + 65537 + ((v7 >> 5) & 0x1F001F)) >> 5) & 0x1F) << 10) & 0xFFFFFF | (((v7 + 65537 + ((v7 >> 5) & 0x1F001F)) >> 21) << 27) | ((((v7 + 65537 + ((v7 >> 5) & 0x1F001F)) >> 23) & 7) << 24);
}

uint64_t PDMplusDM(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 | (a1 << 11)) & 0x1F001F) * (a2 >> 3) + ((a3 | (a3 << 11)) & 0x1F001F) * (a4 >> 3);
  v5 = ((a1 >> 10) & 0x1F) * (a2 >> 3) + ((a3 >> 10) & 0x1F) * (a4 >> 3);
  return ((v5 & 0x3E0) + 32 * v5 + 32) & 0x7C00 | ((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 5) & 0x1F;
}

uint64_t PDAplusDAM(int a1, char a2, unsigned int a3, char a4, unsigned int a5)
{
  v5 = ((a3 | (a3 << 11)) & 0x1F001F) * (a5 >> 3);
  v6 = (((a4 & 0xF8) << 13) | (a3 >> 10) & 0x1F) * (a5 >> 3);
  v7 = (a1 & 0x7FFFFFF | ((a2 & 0xF8) >> 3 << 27)) + (((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 5) & 0x1F | ((((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 5) & 0x1F) << 10) & 0x7FFFFFF | (((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 21) << 27));
  return v7 | (v7 >> 29 << 24);
}

uint64_t PDAplusdDA(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = 1057 * (a2 >> 3) - a1;
  v5 = v4 >> 5;
  v6 = 1057 * (a4 >> 3) - a3;
  v7 = (v6 & 0x7C1F) + (v4 & 0x7C1F);
  v8 = ((a4 >> 3) & 0xFFFF83FF | (((v6 >> 5) & 0x1F) << 10)) + ((a2 >> 3) & 0xFFFF83FF | ((v5 & 0x1F) << 10));
  v9 = (30 * ((v8 >> 5) & 0xFFFFFC1F | v7 & 0x8020)) | (15 * ((v8 >> 5) & 0xFFFFFC1F | v7 & 0x8020));
  return (1057 * ((v9 | v8) & 0x1F) - (((v9 | v8) >> 5) & 0x3E0 | (v7 | (v9 >> 5)) & 0x7C1F)) | ((((v9 | v8) >> 2) & 7) << 24) | ((v9 | v8) << 27);
}

uint64_t PDApluslDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a3 & 0x7C1F) + (a1 & 0x7C1F);
  v5 = ((a4 >> 3) & 0xFFFF83FF | (((a3 >> 5) & 0x1F) << 10)) + ((a2 >> 3) & 0xFFFF83FF | (((a1 >> 5) & 0x1F) << 10));
  v6 = (v5 >> 5) & 0xFFFFFC1F | v4 & 0x8020;
  return (v4 | (((30 * v6) | (15 * v6)) >> 5)) & 0x7C1F | (((30 * v6) | (15 * v6) | v5) >> 5) & 0x3E0 | (((30 * v6) | (15 * v6) | v5) << 27) | (((((30 * v6) | (15 * v6) | v5) >> 2) & 7) << 24);
}

uint64_t PDAmultiplyPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(__PAIR64__(a1, a3), 0x1F0000001FLL);
  v5 = vorr_s8(vshl_n_s32(v4, 3uLL), vshr_n_u32(v4, 2uLL));
  v6 = vand_s8(vdup_n_s32(a1), 0x3E000007C00);
  v7 = a2 & 0xF8 | (a2 >> 5);
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vand_s8(vdup_n_s32(a3), 0x3E000007C00);
  v10 = vorr_s8(vshl_u32(v9, 0xFFFFFFFEFFFFFFF9), vshl_u32(v9, 0xFFFFFFF9FFFFFFF4));
  v11 = v5.i32[0];
  v12 = ((v8 ^ 0xFF) + v5.i32[0]) * v5.i32[1];
  v13 = COERCE_DOUBLE(vmul_s32(vadd_s32(vdup_n_s32(v8 ^ 0xFF), v10), vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), vshl_u32(v6, 0xFFFFFFF9FFFFFFF4))));
  v14 = COERCE_DOUBLE(vmla_s32(*&v13, v10, vdup_n_s32(v7 ^ 0xFF)));
  if (v7 == 255)
  {
    *&v15 = v13;
  }

  else
  {
    v12 += (v7 ^ 0xFF) * v11;
    *&v15 = v14;
  }

  v16 = 255 * (v8 + v7) - v8 * v7;
  v17.i32[0] = vdup_lane_s32(v15, 1).u32[0];
  v18 = v15.i32[0] + 128;
  if (v15.i32[0] >> 7 >= 0x1FD)
  {
    v18 = 65152;
  }

  v19 = v18 + (v18 >> 8);
  if (v16 >= 65152)
  {
    v20 = 65152;
  }

  else
  {
    v20 = v16 + 128;
  }

  v17.i32[1] = v12;
  v21 = vdup_n_s32(0xFE80u);
  v22 = vbsl_s8(vcgt_u32(v21, v17), vadd_s32(v17, 0x8000000080), v21);
  v23 = vand_s8(vshl_u32(vsra_n_u32(v22, v22, 8uLL), 0xFFFFFFF5FFFFFFFALL), 0x1F000003E0);
  return ((v20 + (v20 >> 8)) >> 8 << 24) & 0xF8000000 | (((v20 + (v20 >> 8)) >> 8) >> 5 << 24) | (v19 >> 1) & 0x7C00 | v23.i32[0] | v23.i32[1];
}

uint64_t PDAscreenPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vdup_n_s32(a3);
  v5 = vand_s8(__PAIR64__(a1, a3), vdup_n_s32(0x3E0u));
  v6 = vorr_s8(vshl_u32(v5, 0xFFFFFFFEFFFFFFF9), vshl_u32(v5, 0xFFFFFFF9FFFFFFFELL));
  v7 = vand_s8(vdup_n_s32(a1), 0x1F00007C00);
  v8.i32[0] = vshl_u32(v7, 0xFFFFFFFDFFFFFFF4).u32[0];
  v8.i32[1] = vshl_u32(v7, 0x30000000CLL).i32[1];
  v9 = (v6.i32[1] ^ 0xFF) * v6.i32[0] - v6.i32[1] + (v6.i32[1] << 8);
  v10 = 255 * ((a4 & 0xF8 | (a4 >> 5)) + (a2 & 0xF8 | (a2 >> 5))) - (a4 & 0xF8 | (a4 >> 5)) * (a2 & 0xF8 | (a2 >> 5));
  v11 = v9 + 128;
  if (v9 >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  v12 = v11 + (v11 >> 8);
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  v14 = vorr_s8(vshl_u32(v7, 0xFFFFFFFEFFFFFFF9), v8);
  v15 = vand_s8(v4, 0x1F00007C00);
  v16.i32[0] = vshl_u32(v15, 0xFFFFFFFDFFFFFFF4).u32[0];
  v16.i32[1] = vshl_u32(v15, 0x30000000CLL).i32[1];
  v17 = vmla_s32(vmul_s32(v14, 0xFF000000FFLL), vorr_s8(vshl_u32(v15, 0xFFFFFFFEFFFFFFF9), v16), veor_s8(v14, 0xFF000000FFLL));
  v18 = vdup_n_s32(0xFE80u);
  v19 = vbsl_s8(vcgt_u32(v18, v17), vadd_s32(v17, 0x8000000080), v18);
  v20 = vand_s8(vshl_u32(vsra_n_u32(v19, v19, 8uLL), 0xFFFFFFF5FFFFFFFFLL), 0x1F00007C00);
  return v20.i32[0] | (v12 >> 6) & 0x3E0 | v20.i32[1] | (((v13 + (v13 >> 8)) >> 8) >> 3 << 27) | ((v13 + (v13 >> 8)) >> 8 << 19) & 0x7000000;
}

uint64_t PDAoverlayPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  v5 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
  v6 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v7 = a2 & 0xF8 | (a2 >> 5);
  v8 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v9 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v10 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v11 = a4 & 0xF8 | (a4 >> 5);
  if (v8 >= v11)
  {
    v8 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v4 >= v7)
  {
    v4 = a2 & 0xF8 | (a2 >> 5);
  }

  v12 = 2 * v4 * v8;
  if (v9 >= v11)
  {
    v9 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v5 >= v7)
  {
    v5 = a2 & 0xF8 | (a2 >> 5);
  }

  v13 = 2 * v5 * v9;
  if (v10 >= v11)
  {
    v10 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v6 >= v7)
  {
    v6 = a2 & 0xF8 | (a2 >> 5);
  }

  v14 = 2 * v6 * v10;
  v15 = v11 * v7;
  v16 = (v7 + 1) >> 1;
  v17 = v11 + 255;
  v18 = v7 + 255;
  v19 = (v11 + 255) * v4 + v8 * (v7 + 255) - (v11 * v7 + v12);
  v20 = v11 ^ 0xFF;
  v21 = v7 ^ 0xFF;
  v22 = v8 * (v7 ^ 0xFF) + (v11 ^ 0xFF) * v4 + v12;
  if (v4 < v16)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v24 = v17 * v5 + v9 * v18 - (v15 + v13);
  v25 = v9 * v21 + v20 * v5 + v13;
  if (v5 < v16)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  if (v6 < v16)
  {
    v27 = v10 * v21 + v20 * v6 + v14;
  }

  else
  {
    v27 = v17 * v6 + v10 * v18 - (v15 + v14);
  }

  v28.i32[0] = 255 * (v11 + v7) - v15;
  v28.i32[1] = v23;
  v28.i64[1] = __PAIR64__(v27, v26);
  v29.i64[0] = 0x8000000080;
  v29.i64[1] = 0x8000000080;
  v30 = vdupq_n_s32(0xFE80u);
  v31 = vbslq_s8(vcgtq_s32(v30, v28), vaddq_s32(v28, v29), v30);
  v29.i32[1] = 8;
  v29.i64[1] = 0x800000008;
  v29.i32[0] = v31.i32[0] >> 8;
  v30.i32[0] = vaddq_s32(v31, v29).u32[0];
  v32 = vshlq_u32(v31, vnegq_s32(v29));
  v33 = vaddq_s32(v32, v31);
  v32.i32[0] = v30.i32[0];
  v31.i32[0] = 8;
  v34 = vshlq_s32(v32, vnegq_s32(v31));
  v35 = vshlq_u32(v33, xmmword_18439C870);
  v35.i32[0] = vshlq_u32(v34, xmmword_18439C860).u32[0];
  v36 = vandq_s8(v35, xmmword_18439C880);
  v37 = (v34.i32[0] << 19) & 0x7000000;
  *v34.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
  return v34.i32[0] | v37 | v34.i32[1];
}

uint64_t PDAlightenPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v5 = vand_s8(__PAIR64__(a1, a3), 0x3E000007C00);
  v6 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v7 = vrev64_s32(vand_s8(__PAIR64__(a1, a3), 0x7C00000003E0));
  v8 = vorr_s8(vshl_u32(v7, 0xFFFFFFFEFFFFFFF9), vshl_u32(v7, 0xFFFFFFF9FFFFFFF4));
  v7.i32[0] = a2 & 0xFFFFFFF8;
  v7.i32[1] = a4 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v7, __PAIR64__(a4, a2), 5uLL);
  v10 = vmin_u32(v8, v9);
  v11 = vrev64_s32(v9);
  v12 = vmin_u32(vorr_s8(vshl_u32(v5, 0xFFFFFFFEFFFFFFF9), vshl_u32(v5, 0xFFFFFFF9FFFFFFF4)), v11);
  v13 = COERCE_DOUBLE(vmax_u32(vmul_s32(v9, v12), vmul_s32(v10, v11)));
  v14 = v9.i32[1];
  if (v6 >= v9.i32[1])
  {
    v6 = v9.u32[1];
  }

  v15 = v9.i32[0];
  if (v4 >= v9.i32[0])
  {
    v4 = v9.i32[0];
  }

  v16 = v9.i32[1] * v4;
  if (v6 * v9.i32[0] > v9.i32[1] * v4)
  {
    v16 = v6 * v9.i32[0];
  }

  v17 = COERCE_DOUBLE(vmla_s32(*&v13, vdup_n_s32(v9.i32[1] ^ 0xFFu), __PAIR64__(v12.u32[1], v10.u32[0])));
  v18 = v16 + (v9.i32[1] ^ 0xFF) * v4;
  if (v9.i32[1] == 255)
  {
    v18 = v16;
  }

  else
  {
    v13 = v17;
  }

  v12.i32[1] = v10.i32[1];
  v19 = COERCE_DOUBLE(vmla_s32(*&v13, v12, vdup_n_s32(v9.i32[0] ^ 0xFFu)));
  v20 = v18 + v6 * (v15 ^ 0xFF);
  if (v15 == 255)
  {
    *&v21 = v13;
  }

  else
  {
    v18 = v20;
    *&v21 = v19;
  }

  v22 = 255 * (v14 + v15) - v14 * v15;
  v23 = v18 + 128;
  if (v18 >> 7 >= 0x1FD)
  {
    v23 = 65152;
  }

  v24 = v23 + (v23 >> 8);
  if (v22 >= 65152)
  {
    v25 = 65152;
  }

  else
  {
    v25 = v22 + 128;
  }

  v26 = vdup_n_s32(0xFE80u);
  v27 = vbsl_s8(vcgt_u32(v26, v21), vadd_s32(v21, 0x8000000080), v26);
  v28 = vand_s8(vshl_u32(vsra_n_u32(v27, v27, 8uLL), 0xFFFFFFFAFFFFFFFFLL), 0x3E000007C00);
  return ((v25 + (v25 >> 8)) >> 8 << 24) & 0xF8000000 | (((v25 + (v25 >> 8)) >> 8) >> 5 << 24) | (v24 >> 11) | v28.i32[0] | v28.i32[1];
}

uint64_t PDAdarkenPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v5 = vand_s8(__PAIR64__(a1, a3), 0x3E000007C00);
  v6 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v7 = vrev64_s32(vand_s8(__PAIR64__(a1, a3), 0x7C00000003E0));
  v8 = vorr_s8(vshl_u32(v7, 0xFFFFFFFEFFFFFFF9), vshl_u32(v7, 0xFFFFFFF9FFFFFFF4));
  v7.i32[0] = a2 & 0xFFFFFFF8;
  v7.i32[1] = a4 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v7, __PAIR64__(a4, a2), 5uLL);
  v10 = vmin_u32(v8, v9);
  v11 = vrev64_s32(v9);
  v12 = vmin_u32(vorr_s8(vshl_u32(v5, 0xFFFFFFFEFFFFFFF9), vshl_u32(v5, 0xFFFFFFF9FFFFFFF4)), v11);
  v13 = COERCE_DOUBLE(vmin_u32(vmul_s32(v9, v12), vmul_s32(v10, v11)));
  v14 = v9.i32[1];
  if (v6 >= v9.i32[1])
  {
    v6 = v9.u32[1];
  }

  v15 = v9.i32[0];
  if (v4 >= v9.i32[0])
  {
    v4 = v9.i32[0];
  }

  v16 = v9.i32[1] * v4;
  if (v6 * v9.i32[0] < v9.i32[1] * v4)
  {
    v16 = v6 * v9.i32[0];
  }

  v17 = COERCE_DOUBLE(vmla_s32(*&v13, vdup_n_s32(v9.i32[1] ^ 0xFFu), __PAIR64__(v12.u32[1], v10.u32[0])));
  v18 = v16 + (v9.i32[1] ^ 0xFF) * v4;
  if (v9.i32[1] == 255)
  {
    v18 = v16;
  }

  else
  {
    v13 = v17;
  }

  v12.i32[1] = v10.i32[1];
  v19 = COERCE_DOUBLE(vmla_s32(*&v13, v12, vdup_n_s32(v9.i32[0] ^ 0xFFu)));
  v20 = v18 + v6 * (v15 ^ 0xFF);
  if (v15 == 255)
  {
    *&v21 = v13;
  }

  else
  {
    v18 = v20;
    *&v21 = v19;
  }

  v22 = 255 * (v14 + v15) - v14 * v15;
  v23 = v18 + 128;
  if (v18 >> 7 >= 0x1FD)
  {
    v23 = 65152;
  }

  v24 = v23 + (v23 >> 8);
  if (v22 >= 65152)
  {
    v25 = 65152;
  }

  else
  {
    v25 = v22 + 128;
  }

  v26 = vdup_n_s32(0xFE80u);
  v27 = vbsl_s8(vcgt_u32(v26, v21), vadd_s32(v21, 0x8000000080), v26);
  v28 = vand_s8(vshl_u32(vsra_n_u32(v27, v27, 8uLL), 0xFFFFFFFAFFFFFFFFLL), 0x3E000007C00);
  return ((v25 + (v25 >> 8)) >> 8 << 24) & 0xF8000000 | (((v25 + (v25 >> 8)) >> 8) >> 5 << 24) | (v24 >> 11) | v28.i32[0] | v28.i32[1];
}

uint64_t PDAcolordodgePDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = a2 & 0xF8 | (a2 >> 5);
  v5 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v6 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v7 = a4 & 0xF8 | (a4 >> 5);
  v8 = v7 * v7;
  if ((((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7) >= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  }

  if (v5 >= v7)
  {
    v10 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v10 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  }

  if (v9)
  {
    if (v5 >= v7)
    {
      v11 = 65025;
    }

    else
    {
      v11 = (v8 * v9) / (v7 - v10);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v13 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  if ((((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7) >= v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
  }

  if (v6 >= v7)
  {
    v15 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v15 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  }

  if (v14)
  {
    if (v6 >= v7)
    {
      v16 = 65025;
    }

    else
    {
      v16 = (v8 * v14) / (v7 - v15);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 >= v4)
  {
    v17 = v4;
  }

  else
  {
    v17 = v12;
  }

  if (v13 >= v7)
  {
    v18 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v18 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (v17)
  {
    if (v13 >= v7)
    {
      v19 = 65025;
    }

    else
    {
      v19 = (v8 * v17) / (v7 - v18);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v11 + (v7 ^ 0xFF) * v9;
  v21 = v16 + (v7 ^ 0xFF) * v14;
  if (v7 == 255)
  {
    v22 = v16;
  }

  else
  {
    v19 += (v7 ^ 0xFF) * v17;
    v22 = v21;
  }

  if (v7 == 255)
  {
    v20 = v11;
  }

  v23 = v20 + v10 * (v4 ^ 0xFF);
  v24 = v22 + v15 * (v4 ^ 0xFF);
  v25 = v19 + v18 * (v4 ^ 0xFF);
  if (v4 == 255)
  {
    v25 = v19;
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  if (v4 == 255)
  {
    v23 = v20;
  }

  v27 = 255 * (v7 + v4) - v7 * v4;
  if (v23 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  if (v26 >= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v26;
  }

  if (v25 >= v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = v25;
  }

  v31.i64[0] = __PAIR64__(v30, v27);
  v31.i64[1] = __PAIR64__(v28, v29);
  v32.i64[0] = 0x8000000080;
  v32.i64[1] = 0x8000000080;
  v33 = vdupq_n_s32(0xFE80u);
  v34 = vbslq_s8(vcgtq_s32(v33, v31), vaddq_s32(v31, v32), v33);
  v32.i32[1] = 8;
  v32.i64[1] = 0x800000008;
  v32.i32[0] = v34.i32[0] >> 8;
  v33.i32[0] = vaddq_s32(v34, v32).u32[0];
  v35 = vshlq_u32(v34, vnegq_s32(v32));
  v36 = vaddq_s32(v35, v34);
  v35.i32[0] = v33.i32[0];
  v34.i32[0] = 8;
  v37 = vshlq_s32(v35, vnegq_s32(v34));
  v38 = vshlq_u32(v36, xmmword_18439C8A0);
  v38.i32[0] = vshlq_u32(v37, xmmword_18439C890).u32[0];
  v39 = vandq_s8(v38, xmmword_18439C8B0);
  v40 = (v37.i32[0] << 19) & 0x7000000;
  *v37.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
  return v37.i32[0] | v40 | v37.i32[1];
}

uint64_t PDAcolorburnPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v5 = vand_s8(vdup_n_s32(a1), 0x7C00000003E0);
  v6 = vorr_s8(vshl_u32(v5, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v5, 0xFFFFFFF4FFFFFFF9));
  v7 = vand_s8(vdup_n_s32(a3), 0x7C00000003E0);
  v8 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v9.i32[0] = a4 & 0xFFFFFFF8;
  v9.i32[1] = a2 & 0xFFFFFFF8;
  v10 = vsra_n_u32(v9, __PAIR64__(a2, a4), 5uLL);
  v11 = v10.u32[1];
  v12 = v10.i32[0];
  v13 = v10.i32[0] * v10.i32[1];
  v14 = vmin_u32(vorr_s8(vshl_u32(v7, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v7, 0xFFFFFFF4FFFFFFF9)), vdup_lane_s32(v10, 0));
  v15 = vmin_u32(v6, vdup_lane_s32(v10, 1));
  if (v8 >= v10.i32[0])
  {
    v8 = v10.i32[0];
  }

  if (v4 >= v10.i32[1])
  {
    v16 = v10.u32[1];
  }

  else
  {
    v16 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  v17 = COERCE_DOUBLE(vdup_n_s32(v13));
  v18 = ~v12;
  v19 = COERCE_DOUBLE(vmla_s32(*&v17, vdup_n_s32(v18), v15));
  v20 = v13 + v16 * v18;
  if (v12 == 255)
  {
    v20 = v13;
  }

  else
  {
    v17 = v19;
  }

  v21 = ~v11;
  v22 = COERCE_DOUBLE(vmla_s32(*&v17, v14, vdup_n_s32(v21)));
  v23 = v20 + v8 * v21;
  if (v11 == 0xFF)
  {
    v23 = v20;
  }

  else
  {
    v17 = v22;
  }

  v24 = HIDWORD(v17);
  if (v6.i32[1] < v11)
  {
    if (v14.i32[1])
    {
      v24 = (HIDWORD(v17) - (v12 * v12 * (v11 - v15.i32[1])) / v14.i32[1]) & ~((HIDWORD(v17) - (v12 * v12 * (v11 - v15.i32[1])) / v14.i32[1]) >> 31);
    }

    else
    {
      v24 = 0;
    }
  }

  v25 = LODWORD(v17);
  if (v6.i32[0] < v11)
  {
    v25 = (LODWORD(v17) - (v12 * v12 * (v11 - v15.i32[0])) / v14.i32[0]) & ~((LODWORD(v17) - (v12 * v12 * (v11 - v15.i32[0])) / v14.i32[0]) >> 31);
    if (!v14.i32[0])
    {
      v25 = 0;
    }
  }

  v26 = (v23 - (v12 * v12 * (v11 - v16)) / v8) & ~((v23 - (v12 * v12 * (v11 - v16)) / v8) >> 31);
  if (v8)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v4 < v11)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  v29 = 255 * (v12 + v11) - v13;
  v30 = vadd_s32(__PAIR64__(v25, v24), 0x8000000080);
  v31 = vdup_n_s32(0xFE80u);
  v32 = vcgt_u32(v31, __PAIR64__(v25, v24));
  if (v28 >> 7 >= 0x1FD)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v28 + 128;
  }

  v34 = v33 + (v33 >> 8);
  if (v29 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v29 + 128;
  }

  v36 = vbsl_s8(v32, v30, v31);
  v37 = vand_s8(vshl_u32(vsra_n_u32(v36, v36, 8uLL), 0xFFFFFFFAFFFFFFFFLL), 0x3E000007C00);
  return ((v35 + (v35 >> 8)) >> 8 << 24) & 0xF8000000 | (((v35 + (v35 >> 8)) >> 8) >> 5 << 24) | v37.i32[0] | v37.i32[1] | (v34 >> 11);
}

uint64_t PDAhardlightPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  v5 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
  v6 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v7 = a2 & 0xF8 | (a2 >> 5);
  v8 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v9 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v10 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v11 = a4 & 0xF8 | (a4 >> 5);
  if (v8 >= v11)
  {
    v8 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v4 >= v7)
  {
    v4 = a2 & 0xF8 | (a2 >> 5);
  }

  v12 = 2 * v4 * v8;
  if (v9 >= v11)
  {
    v9 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v5 >= v7)
  {
    v5 = a2 & 0xF8 | (a2 >> 5);
  }

  v13 = 2 * v5 * v9;
  if (v10 >= v11)
  {
    v10 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v6 >= v7)
  {
    v6 = a2 & 0xF8 | (a2 >> 5);
  }

  v14 = 2 * v6 * v10;
  v15 = v11 * v7;
  v16 = (v11 + 1) >> 1;
  v17 = v11 ^ 0xFF;
  v18 = v7 ^ 0xFF;
  v19 = v8 * (v7 ^ 0xFF) + (v11 ^ 0xFF) * v4 + v12;
  v20 = v11 + 255;
  v21 = v7 + 255;
  v22 = (v11 + 255) * v4 + v8 * (v7 + 255) - (v11 * v7 + v12);
  if (v8 <= v16)
  {
    v22 = v19;
  }

  v23 = v9 * v18 + v17 * v5 + v13;
  v24 = v20 * v5 + v9 * v21 - (v15 + v13);
  if (v9 <= v16)
  {
    v24 = v23;
  }

  v25 = v10 * v18 + v17 * v6 + v14;
  v26 = v20 * v6 + v10 * v21 - (v15 + v14);
  if (v10 <= v16)
  {
    v26 = v25;
  }

  v27.i32[0] = 255 * (v11 + v7) - v15;
  v27.i32[1] = v22;
  v27.i64[1] = __PAIR64__(v26, v24);
  v28.i64[0] = 0x8000000080;
  v28.i64[1] = 0x8000000080;
  v29 = vdupq_n_s32(0xFE80u);
  v30 = vbslq_s8(vcgtq_s32(v29, v27), vaddq_s32(v27, v28), v29);
  v28.i32[1] = 8;
  v28.i64[1] = 0x800000008;
  v28.i32[0] = v30.i32[0] >> 8;
  v29.i32[0] = vaddq_s32(v30, v28).u32[0];
  v31 = vshlq_u32(v30, vnegq_s32(v28));
  v32 = vaddq_s32(v31, v30);
  v31.i32[0] = v29.i32[0];
  v30.i32[0] = 8;
  v33 = vshlq_s32(v31, vnegq_s32(v30));
  v34 = vshlq_u32(v32, xmmword_18439C870);
  v34.i32[0] = vshlq_u32(v33, xmmword_18439C860).u32[0];
  v35 = vandq_s8(v34, xmmword_18439C880);
  v36 = (v33.i32[0] << 19) & 0x7000000;
  *v33.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
  return v33.i32[0] | v36 | v33.i32[1];
}

uint64_t PDAsoftlightPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v7 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v8 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v9 = a4 & 0xF8 | (a4 >> 5);
  if (v6 >= v9)
  {
    v6 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v4 >= v5)
  {
    v4 = a2 & 0xF8 | (a2 >> 5);
  }

  if (v5)
  {
    v10 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
    v11 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
    v12 = (v4 * v4 * (2 * v6 - v9)) / v5;
    v13 = (2 * v4 * v6 - v12) & ~((2 * v4 * v6 - v12) >> 31);
    if (v7 >= v9)
    {
      v7 = a4 & 0xF8 | (a4 >> 5);
    }

    if (v11 >= v5)
    {
      v11 = a2 & 0xF8 | (a2 >> 5);
    }

    v14 = (v11 * v11 * (2 * v7 - v9)) / v5;
    v15 = (2 * v11 * v7 - v14) & ~((2 * v11 * v7 - v14) >> 31);
    if (v8 >= v9)
    {
      v8 = a4 & 0xF8 | (a4 >> 5);
    }

    if (v10 >= v5)
    {
      v10 = a2 & 0xF8 | (a2 >> 5);
    }

    v16 = (v10 * v10 * (2 * v8 - v9)) / v5;
    v17 = (2 * v10 * v8 - v16) & ~((2 * v10 * v8 - v16) >> 31);
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v17 = 0;
    if (v7 >= v9)
    {
      v7 = a4 & 0xF8 | (a4 >> 5);
    }

    if (v8 >= v9)
    {
      v8 = a4 & 0xF8 | (a4 >> 5);
    }
  }

  v18 = v13 + (v9 ^ 0xFF) * v4;
  v19 = v15 + v11 * (v9 ^ 0xFF);
  v20 = v17 + v10 * (v9 ^ 0xFF);
  if (v9 == 255)
  {
    v20 = v17;
    v19 = v15;
    v18 = v13;
  }

  v21 = v18 + v6 * (v5 ^ 0xFF);
  v22 = v19 + v7 * (v5 ^ 0xFF);
  v23 = v20 + v8 * (v5 ^ 0xFF);
  if (v5 == 255)
  {
    v23 = v20;
    v22 = v19;
    v21 = v18;
  }

  v24 = 255 * (v9 + v5) - v9 * v5;
  v25 = v21 + 128;
  if (v21 >> 7 >= 0x1FD)
  {
    v25 = 65152;
  }

  v26 = v25 + (v25 >> 8);
  v27 = v22 + 128;
  if (v22 >> 7 >= 0x1FD)
  {
    v27 = 65152;
  }

  v28 = v27 + (v27 >> 8);
  if (v23 >> 7 >= 0x1FD)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v23 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v24 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v24 + 128;
  }

  return ((v31 + (v31 >> 8)) >> 8 << 24) & 0xF8000000 | (((v31 + (v31 >> 8)) >> 8) >> 5 << 24) | (v30 >> 11) | (v28 >> 6) & 0x3E0 | (v26 >> 1) & 0x7C00;
}

uint64_t PDAdifferencePDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vdup_n_s32(a1), 0x7C000000001FLL);
  v5.i32[0] = vshl_u32(v4, 0xC00000003).u32[0];
  v5.i32[1] = vshl_u32(v4, 0xFFFFFFF4FFFFFFFDLL).i32[1];
  v6 = vand_s8(vdup_n_s32(a3), 0x7C000000001FLL);
  v7.i32[0] = vshl_u32(v6, 0xC00000003).u32[0];
  v7.i32[1] = vshl_u32(v6, 0xFFFFFFF4FFFFFFFDLL).i32[1];
  v8 = vorr_s8(vshl_u32(v4, 0xFFFFFFF9FFFFFFFELL), v5);
  v5.i32[0] = a2 & 0xFFFFFFF8;
  v5.i32[1] = a4 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v5, __PAIR64__(a4, a2), 5uLL);
  v10 = vand_s8(__PAIR64__(a3, a1), vdup_n_s32(0x3E0u));
  v11 = vmin_u32(vorr_s8(vshl_u32(v10, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v10, 0xFFFFFFFEFFFFFFF9)), v9);
  v12 = v11.i32[1];
  v13 = v9.i32[1] * v11.i32[0];
  v14 = 255 * (v11.i32[1] + v11.i32[0]);
  v15 = vmin_u32(vorr_s8(vshl_u32(v6, 0xFFFFFFF9FFFFFFFELL), v7), vdup_lane_s32(v9, 1));
  v16 = vmin_u32(v8, vdup_lane_s32(v9, 0));
  v17 = vadd_s32(v15, v16);
  v18 = __PAIR64__(v15.u32[1], v16.u32[0]);
  v19 = vrev64_s32(v9);
  v15.i32[1] = v16.i32[1];
  v20 = vmul_s32(v9, v15);
  v21 = v9.i32[0] * v12;
  v23 = v13 - v21;
  v22 = v13 - v21 < 0;
  v24 = v14 - v21 - v13;
  if (v22)
  {
    v25 = -v23;
  }

  else
  {
    v25 = v23;
  }

  v26 = v24 + v25;
  v27 = vmul_s32(v18, v19);
  v28 = vaba_s32(vsub_s32(vsub_s32(vmul_s32(v17, 0xFF000000FFLL), v20), v27), v27, v20);
  v29 = 255 * (v9.i32[1] + v9.i32[0]) - v9.i32[1] * v9.i32[0];
  if (v26 >= 65152)
  {
    v30 = 65152;
  }

  else
  {
    v30 = v26 + 128;
  }

  v31 = v30 + (v30 >> 8);
  v32 = vdup_n_s32(0xFE80u);
  v33 = vbsl_s8(vcgt_s32(v32, v28), vadd_s32(v28, 0x8000000080), v32);
  v34 = vsra_n_u32(v33, v33, 8uLL);
  if (v29 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v29 + 128;
  }

  v36 = vand_s8(vshl_u32(v34, -11), 0x7C000000001FLL);
  return ((v35 + (v35 >> 8)) >> 8 << 24) & 0xF8000000 | (((v35 + (v35 >> 8)) >> 8) >> 5 << 24) | (v31 >> 6) & 0x3E0 | v36.i32[0] | v36.i32[1];
}

uint64_t PDAexclusionPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vdup_n_s32(a1), 0x1F00007C00);
  v5.i32[0] = vshl_u32(v4, 0xFFFFFFFDFFFFFFF4).u32[0];
  v5.i32[1] = vshl_u32(v4, 0x30000000CLL).i32[1];
  v6 = vand_s8(vdup_n_s32(a3), 0x1F00007C00);
  v7.i32[0] = vshl_u32(v6, 0xFFFFFFFDFFFFFFF4).u32[0];
  v7.i32[1] = vshl_u32(v6, 0x30000000CLL).i32[1];
  v8.i32[0] = a4 & 0xFFFFFFF8;
  v8.i32[1] = a2 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v8, __PAIR64__(a2, a4), 5uLL);
  v10 = vand_s8(__PAIR64__(a1, a3), vdup_n_s32(0x3E0u));
  v11 = vmin_u32(vorr_s8(vshl_u32(v10, 0xFFFFFFFEFFFFFFF9), vshl_u32(v10, 0xFFFFFFF9FFFFFFFELL)), v9);
  v12 = vzip2_s32(v9, v11);
  v13 = 2 * v11.i32[1];
  v14 = vzip1_s32(v9, v11);
  v15 = vadd_s32(v14, v12);
  v12.i32[1] = v14.i32[1];
  v14.i32[1] = v13;
  v16 = vmls_s32(vmul_s32(v15, 0xFF000000FFLL), v14, v12);
  v17 = v16.i32[1] + 128;
  v18 = vdup_n_s32(0xFE80u);
  v19 = vcgt_s32(v18, v16);
  if ((v19.i8[4] & 1) == 0)
  {
    v17 = 65152;
  }

  v20 = v17 + (v17 >> 8);
  if (v19.i8[0])
  {
    v21 = v16.i32[0] + 128;
  }

  else
  {
    v21 = 65152;
  }

  v22 = vorr_s8(vshl_u32(v4, 0xFFFFFFFEFFFFFFF9), v5);
  v23 = vmin_u32(vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), v7), vdup_lane_s32(v9, 0));
  v24 = vmin_u32(v22, vdup_lane_s32(v9, 1));
  v25 = vmul_s32(vadd_s32(v23, v24), 0xFF000000FFLL);
  v26 = vmul_s32(v24, v23);
  v27 = vsub_s32(v25, vadd_s32(v26, v26));
  v28 = vbsl_s8(vcgt_s32(v18, v27), vadd_s32(v27, 0x8000000080), v18);
  v29 = vand_s8(vshl_u32(vsra_n_u32(v28, v28, 8uLL), 0xFFFFFFF5FFFFFFFFLL), 0x1F00007C00);
  return v29.i32[0] | (v20 >> 6) & 0x3E0 | v29.i32[1] | (((v21 + (v21 >> 8)) >> 8) >> 3 << 27) | ((v21 + (v21 >> 8)) >> 8 << 19) & 0x7000000;
}

uint64_t PDAhuePDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vdup_n_s32(a1), 0x3E000007C00);
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = vand_s8(vdup_n_s32(a3), 0x3E000007C00);
  v7 = vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), vshl_u32(v6, 0xFFFFFFF9FFFFFFF4));
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vdup_n_s32(v8);
  v10 = vdup_n_s32(v5);
  v11 = vmin_u32(vorr_s8(vshl_u32(v4, 0xFFFFFFFEFFFFFFF9), vshl_u32(v4, 0xFFFFFFF9FFFFFFF4)), v10);
  if (((a3 >> 2) & 7 | (8 * (a3 & 0x1F))) >= v8)
  {
    v12 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v12 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (((a1 >> 2) & 7 | (8 * (a1 & 0x1F))) >= v5)
  {
    v13 = a2 & 0xF8 | (a2 >> 5);
  }

  else
  {
    v13 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  if (v8 == 255)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = vmul_s32(vdup_n_s32(v8 ^ 0xFF), v11);
    v16 = vmla_s32(0x8000000080, v9, v11);
    v11 = vshr_n_u32(vsra_n_u32(v16, v16, 8uLL), 8uLL);
    v14 = (v8 ^ 0xFF) * v13;
    v13 = (v8 * v13 + 128 + ((v8 * v13 + 128) >> 8)) >> 8;
  }

  v17 = vmin_u32(v7, v9);
  if (v5 != 255)
  {
    v15 = vmla_s32(v15, v17, vdup_n_s32(v5 ^ 0xFF));
    v18 = vmla_s32(0x8000000080, v17, v10);
    v17 = vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL);
    v14 += v12 * (v5 ^ 0xFF);
    v12 = (v12 * v5 + 128 + ((v12 * v5 + 128) >> 8)) >> 8;
  }

  v55 = v17;
  v56 = v12;
  v19 = v17.i32[0];
  v20 = v17.i32[0] < v17.i32[1];
  if (v17.i32[0] >= v17.i32[1])
  {
    v21 = v17.u32[1];
  }

  else
  {
    v21 = v17.i32[0];
  }

  if (v17.i32[0] <= v17.i32[1])
  {
    v19 = v17.u32[1];
  }

  if (v12 <= v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = v17.i32[0] < v17.i32[1];
  }

  if (v12 <= v19)
  {
    v23 = v17.i32[0] < v17.i32[1];
  }

  else
  {
    v23 = 2;
  }

  v24 = v12 >= v21;
  if (v12 >= v21)
  {
    v25 = v17.i32[0] >= v17.i32[1];
  }

  else
  {
    v25 = 2;
  }

  if (v12 >= v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v17.i32[0] >= v17.i32[1];
  }

  if (v24)
  {
    v20 = v23;
  }

  v27 = v55.i32[v20];
  v28 = v55.i32[v25];
  v29 = __OFSUB__(v27, v28);
  v30 = v27 - v28;
  if ((v30 < 0) ^ v29 | (v30 == 0))
  {
    v55.i32[v20] = 0;
    v55.i32[v26] = 0;
  }

  else
  {
    v31 = v11.u32[1];
    if (v11.i32[0] >= v11.i32[1])
    {
      v32 = v11.u32[1];
    }

    else
    {
      v32 = v11.i32[0];
    }

    if (v11.i32[0] > v11.i32[1])
    {
      v31 = v11.i32[0];
    }

    if (v13 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v13;
    }

    if (v13 >= v32)
    {
      v31 = v33;
    }

    else
    {
      v32 = v13;
    }

    v34 = v31 - v32;
    v55.i32[v20] = v34;
    v55.i32[v26] = ((v55.i32[v26] - v55.i32[v25]) * ((v34 << 16) / v30) + 0x8000) >> 16;
  }

  v35 = (v8 * v5 + 128 + ((v8 * v5 + 128) >> 8)) >> 8;
  v55.i32[v25] = 0;
  v36 = vmul_s32(vsub_s32(v11, v55), 0x970000004DLL);
  v37 = v36.i32[0] + v36.i32[1] + 28 * (v13 - v56);
  v38 = (v37 + 128) >> 8;
  v39 = vadd_s32(vdup_n_s32(v38), v55);
  v40 = v56 + v38;
  if (v37 != v37)
  {
    v41 = vcgt_s32(vdup_lane_s32(v55, 1), v55).u8[0];
    v42 = (v41 & 1) != 0 ? v39.i32[0] : v39.i32[1];
    v43 = (v41 & 1) != 0 ? v39.i32[1] : v39.i32[0];
    v44 = v40 <= v43 ? v43 : v56 + v38;
    if (v40 >= v42)
    {
      v43 = v44;
    }

    else
    {
      v42 = v56 + v38;
    }

    if (v43 > v35 || v42 < 0)
    {
      v45 = (77 * v39.i32[0] + 151 * v39.i32[1] + 28 * v40 + 128) >> 8;
      if ((v38 & 0x80000000) != 0)
      {
        v46 = v45 - v42;
        if (v45 == v42)
        {
          goto LABEL_67;
        }

        v47 = (77 * v39.i32[0] + 151 * v39.i32[1] + 28 * v40 + 128) >> 8;
      }

      else
      {
        v46 = v43 - v45;
        if (v43 == v45)
        {
          goto LABEL_67;
        }

        v47 = v35 - v45;
      }

      v48 = vdup_n_s32(v45);
      v49 = (v47 << 16) / v46;
      v40 = v45 + ((v49 * (v40 - v45) + 0x8000) >> 16);
      v39 = vsra_n_s32(v48, vmla_s32(0x800000008000, vdup_n_s32(v49), vsub_s32(v39, v48)), 0x10uLL);
    }
  }

LABEL_67:
  v50 = v14 + 128;
  if (v14 >> 7 >= 0x1FD)
  {
    v50 = 65152;
  }

  v51 = vdup_n_s32(0xFE80u);
  v52 = vbsl_s8(vcgt_u32(v51, v15), vadd_s32(v15, 0x8000000080), v51);
  v53 = vand_s8(vshl_u32(vsra_n_u32(v39, vsra_n_u32(v52, v52, 8uLL), 8uLL), 0x200000007), 0x3E000007C00);
  return ((v8 + v5 - v35) << 24) & 0xF8000000 | ((v8 + v5 - v35) >> 5 << 24) | ((v40 + ((v50 + (v50 >> 8)) >> 8)) >> 3) | v53.i32[0] | v53.i32[1];
}

uint64_t PDAsaturationPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vdup_n_s32(a1), 0x3E000007C00);
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = vand_s8(vdup_n_s32(a3), 0x3E000007C00);
  v7 = vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), vshl_u32(v6, 0xFFFFFFF9FFFFFFF4));
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vdup_n_s32(v8);
  v10 = vdup_n_s32(v5);
  v11 = vmin_u32(vorr_s8(vshl_u32(v4, 0xFFFFFFFEFFFFFFF9), vshl_u32(v4, 0xFFFFFFF9FFFFFFF4)), v10);
  if (((a3 >> 2) & 7 | (8 * (a3 & 0x1F))) >= v8)
  {
    v12 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v12 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (((a1 >> 2) & 7 | (8 * (a1 & 0x1F))) >= v5)
  {
    v13 = a2 & 0xF8 | (a2 >> 5);
  }

  else
  {
    v13 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  if (v8 == 255)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = vmul_s32(vdup_n_s32(v8 ^ 0xFF), v11);
    v16 = vmla_s32(0x8000000080, v9, v11);
    v11 = vshr_n_u32(vsra_n_u32(v16, v16, 8uLL), 8uLL);
    v14 = (v8 ^ 0xFF) * v13;
    v13 = (v8 * v13 + 128 + ((v8 * v13 + 128) >> 8)) >> 8;
  }

  v17 = vmin_u32(v7, v9);
  if (v5 != 255)
  {
    v15 = vmla_s32(v15, v17, vdup_n_s32(v5 ^ 0xFF));
    v18 = vmla_s32(0x8000000080, v17, v10);
    v17 = vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL);
    v14 += v12 * (v5 ^ 0xFF);
    v12 = (v12 * v5 + 128 + ((v12 * v5 + 128) >> 8)) >> 8;
  }

  v53 = v11;
  v54 = v13;
  v19 = v11.i32[0];
  if (v11.i32[0] >= v11.i32[1])
  {
    v20 = v11.u32[1];
  }

  else
  {
    v20 = v11.i32[0];
  }

  if (v11.i32[0] <= v11.i32[1])
  {
    v19 = v11.u32[1];
  }

  if (v13 <= v19)
  {
    v21 = 2;
  }

  else
  {
    v21 = v11.i32[0] < v11.i32[1];
  }

  if (v13 <= v19)
  {
    v22 = v11.i32[0] < v11.i32[1];
  }

  else
  {
    v22 = 2;
  }

  if (v13 >= v20)
  {
    v23 = v11.i32[0] >= v11.i32[1];
  }

  else
  {
    v23 = 2;
  }

  if (v13 >= v20)
  {
    v24 = v22;
  }

  else
  {
    v21 = v11.i32[0] >= v11.i32[1];
    v24 = v11.i32[0] < v11.i32[1];
  }

  v25 = v53.i32[v24];
  v26 = v53.i32[v23];
  v27 = __OFSUB__(v25, v26);
  v28 = v25 - v26;
  if ((v28 < 0) ^ v27 | (v28 == 0))
  {
    v53.i32[v24] = 0;
    v53.i32[v21] = 0;
  }

  else
  {
    v29 = v17.u32[1];
    if (v17.i32[0] >= v17.i32[1])
    {
      v30 = v17.u32[1];
    }

    else
    {
      v30 = v17.i32[0];
    }

    if (v17.i32[0] > v17.i32[1])
    {
      v29 = v17.i32[0];
    }

    if (v12 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v12;
    }

    if (v12 >= v30)
    {
      v12 = v30;
      v29 = v31;
    }

    v32 = v29 - v12;
    v53.i32[v24] = v32;
    v53.i32[v21] = ((v53.i32[v21] - v53.i32[v23]) * ((v32 << 16) / v28) + 0x8000) >> 16;
  }

  v33 = (v8 * v5 + 128 + ((v8 * v5 + 128) >> 8)) >> 8;
  v53.i32[v23] = 0;
  v34 = vmul_s32(vsub_s32(v11, v53), 0x970000004DLL);
  v35 = v34.i32[0] + v34.i32[1] + 28 * (v13 - v54);
  v36 = (v35 + 128) >> 8;
  v37 = vadd_s32(vdup_n_s32(v36), v53);
  v38 = v54 + v36;
  if (v35 != v35)
  {
    v39 = vcgt_s32(vdup_lane_s32(v53, 1), v53).u8[0];
    v40 = (v39 & 1) != 0 ? v37.i32[0] : v37.i32[1];
    v41 = (v39 & 1) != 0 ? v37.i32[1] : v37.i32[0];
    v42 = v38 <= v41 ? v41 : v54 + v36;
    if (v38 >= v40)
    {
      v41 = v42;
    }

    else
    {
      v40 = v54 + v36;
    }

    if (v41 > v33 || v40 < 0)
    {
      v43 = (77 * v37.i32[0] + 151 * v37.i32[1] + 28 * v38 + 128) >> 8;
      if ((v36 & 0x80000000) != 0)
      {
        v44 = v43 - v40;
        if (v43 == v40)
        {
          goto LABEL_63;
        }

        v45 = (77 * v37.i32[0] + 151 * v37.i32[1] + 28 * v38 + 128) >> 8;
      }

      else
      {
        v44 = v41 - v43;
        if (v41 == v43)
        {
          goto LABEL_63;
        }

        v45 = v33 - v43;
      }

      v46 = vdup_n_s32(v43);
      v47 = (v45 << 16) / v44;
      v38 = v43 + ((v47 * (v38 - v43) + 0x8000) >> 16);
      v37 = vsra_n_s32(v46, vmla_s32(0x800000008000, vdup_n_s32(v47), vsub_s32(v37, v46)), 0x10uLL);
    }
  }

LABEL_63:
  v48 = v14 + 128;
  if (v14 >> 7 >= 0x1FD)
  {
    v48 = 65152;
  }

  v49 = vdup_n_s32(0xFE80u);
  v50 = vbsl_s8(vcgt_u32(v49, v15), vadd_s32(v15, 0x8000000080), v49);
  v51 = vand_s8(vshl_u32(vsra_n_u32(v37, vsra_n_u32(v50, v50, 8uLL), 8uLL), 0x200000007), 0x3E000007C00);
  return ((v8 + v5 - v33) << 24) & 0xF8000000 | ((v8 + v5 - v33) >> 5 << 24) | ((v38 + ((v48 + (v48 >> 8)) >> 8)) >> 3) | v51.i32[0] | v51.i32[1];
}

uint64_t PDAluminosityPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vdup_n_s32(a1), 0x7C00000003E0);
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = vand_s8(vdup_n_s32(a3), 0x7C00000003E0);
  v7 = vorr_s8(vshl_u32(v6, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v6, 0xFFFFFFF4FFFFFFF9));
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vdup_n_s32(v8);
  v10 = vdup_n_s32(v5);
  v11 = vmin_u32(vorr_s8(vshl_u32(v4, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v4, 0xFFFFFFF4FFFFFFF9)), v10);
  if (((a3 >> 2) & 7 | (8 * (a3 & 0x1F))) >= v8)
  {
    v12 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v12 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (((a1 >> 2) & 7 | (8 * (a1 & 0x1F))) >= v5)
  {
    v13 = a2 & 0xF8 | (a2 >> 5);
  }

  else
  {
    v13 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  if (v8 == 255)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = vmul_s32(vdup_n_s32(v8 ^ 0xFF), v11);
    v16 = vmla_s32(0x8000000080, v9, v11);
    v11 = vshr_n_u32(vsra_n_u32(v16, v16, 8uLL), 8uLL);
    v14 = (v8 ^ 0xFF) * v13;
    v13 = (v8 * v13 + 128 + ((v8 * v13 + 128) >> 8)) >> 8;
  }

  v17 = vmin_u32(v7, v9);
  if (v5 != 255)
  {
    v15 = vmla_s32(v15, v17, vdup_n_s32(v5 ^ 0xFF));
    v18 = vmla_s32(0x8000000080, v17, v10);
    v17 = vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL);
    v14 += v12 * (v5 ^ 0xFF);
    v12 = (v12 * v5 + 128 + ((v12 * v5 + 128) >> 8)) >> 8;
  }

  v19 = vmul_s32(vsub_s32(v17, v11), 0x4D00000097);
  v20 = (v8 * v5 + 128 + ((v8 * v5 + 128) >> 8)) >> 8;
  v21 = v19.i32[0] + 28 * (v12 - v13) + v19.i32[1];
  v22 = (v21 + 128) >> 8;
  v23 = vadd_s32(vdup_n_s32(v22), v11);
  v24 = v13 + v22;
  if (v21 != v21)
  {
    v25 = vcgt_u32(v11, vdup_lane_s32(v11, 1)).u8[0];
    v26 = (v25 & 1) != 0 ? v23.i32[1] : v23.i32[0];
    v27 = (v25 & 1) != 0 ? v23.i32[0] : v23.i32[1];
    v28 = v24 <= v27 ? v27 : v24;
    if (v24 >= v26)
    {
      v27 = v28;
    }

    else
    {
      v26 = v24;
    }

    if (v27 > v20 || v26 < 0)
    {
      v29 = (77 * v23.i32[1] + 151 * v23.i32[0] + 28 * v24 + 128) >> 8;
      if ((v22 & 0x80000000) != 0)
      {
        v30 = v29 - v26;
        if (v29 == v26)
        {
          goto LABEL_33;
        }

        v31 = (77 * v23.i32[1] + 151 * v23.i32[0] + 28 * v24 + 128) >> 8;
      }

      else
      {
        v30 = v27 - v29;
        if (v27 == v29)
        {
          goto LABEL_33;
        }

        v31 = v20 - v29;
      }

      v32 = vdup_n_s32(v29);
      v33 = (v31 << 16) / v30;
      v24 = v29 + ((v33 * (v24 - v29) + 0x8000) >> 16);
      v23 = vsra_n_s32(v32, vmla_s32(0x800000008000, vdup_n_s32(v33), vsub_s32(v23, v32)), 0x10uLL);
    }
  }

LABEL_33:
  v34 = v8 + v5 - v20;
  v35 = v14 + 128;
  if (v14 >> 7 >= 0x1FD)
  {
    v35 = 65152;
  }

  v36 = vdup_n_s32(0xFE80u);
  v37 = vbsl_s8(vcgt_u32(v36, v15), vadd_s32(v15, 0x8000000080), v36);
  v38 = vand_s8(vshl_u32(vsra_n_u32(v23, vsra_n_u32(v37, v37, 8uLL), 8uLL), 0x700000002), 0x7C00000003E0);
  return (v34 << 24) & 0xF8000000 | (v34 >> 5 << 24) | ((v24 + ((v35 + (v35 >> 8)) >> 8)) >> 3) | v38.i32[0] | v38.i32[1];
}

void rgb555_shade_axial_RGB(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v5 * (*(*(a1 + 272) + 4) * a2)));
  v7 = a1 + 368;
  v8 = *(a1 + 368);
  v9 = (a3 >> 4) & 0xF0;
  v10 = v8 + v9;
  if (v8)
  {
    v11 = v8 + v9;
  }

  else
  {
    v11 = a1 + 368;
  }

  if (v8)
  {
    v12 = 15;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 320);
  v19 = *(a1 + 324);
  v22 = a1 + 144;
  v20 = *(a1 + 144);
  v21 = *(v22 + 8);
  v23 = *(a1 + 376);
  v24 = *(a1 + 360);
  if (v5 != 0.0)
  {
    if (v8)
    {
      v30 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    while (1)
    {
      v31 = v18;
      if (v6 >= v16)
      {
        v31 = v19;
        if (v6 <= v17)
        {
          v31 = (v15 * (v6 - v14));
        }
      }

      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

      v32 = v23;
      if (v23)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v30) = (v30 + 1) & v12;
      v6 = v5 + v6;
      v21 = (v21 + 4);
      *v20 = v32;
      v20 = (v20 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v32 = (v24 + 2 * (4 * v31));
LABEL_38:
    v33 = vaddw_u16(vdupq_n_s32(*(v11 + v30)), *v32);
    LODWORD(v32) = v33.i32[3] >> 8;
    v34 = vshlq_u32(v33, xmmword_18439C8C0);
    v35 = vextq_s8(v34, vshlq_u32(v33, xmmword_18439C8D0), 0xCuLL);
    v35.i32[1] = v34.i32[0];
    v36 = vandq_s8(v35, xmmword_18439C8E0);
    *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
    v21->i32[0] = v36.i32[0] | v36.i32[1] | (v32 << 27);
    LOBYTE(v32) = -1;
    goto LABEL_39;
  }

  if (v8)
  {
    v25 = v10;
  }

  else
  {
    v25 = v7;
  }

  if (v8)
  {
    LODWORD(v26) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v8)
  {
    LODWORD(v27) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v27) = 0;
  }

  if (v8)
  {
    v28 = 15;
  }

  else
  {
    v28 = 0;
  }

  if (v6 >= v16)
  {
    v18 = v19;
    if (v6 <= v17)
    {
      v18 = (v15 * (v6 - v14));
    }
  }

  if ((v18 & 0x80000000) == 0 || v23)
  {
    v37 = (v24 + 2 * (4 * v18));
    if (v18 < 0)
    {
      v38 = v23;
    }

    else
    {
      v38 = v37;
    }

    v39 = vmovl_u16(*v38);
    if (v8)
    {
      v40 = vdup_lane_s32(*v39.i8, 0);
      v41 = vdup_lane_s32(*v39.i8, 1);
      v42 = vdup_laneq_s32(v39, 2);
      v43 = a4 + 4;
      v44 = vdup_n_s32(0x3E0u);
      v45 = vdup_laneq_s32(v39, 3);
      do
      {
        v46 = (v25 + v27);
        v27 = (v27 + 1) & v28;
        v4.i8[0] = *v46;
        v4.i8[4] = *(v25 + v26);
        v47 = vand_s8(v4, 0xFF000000FFLL);
        v48 = vadd_s32(v40, v47);
        v49 = vadd_s32(v41, v47);
        v50 = vadd_s32(v42, v47);
        v51 = vadd_s32(v45, v47);
        v52 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v51, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v51, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v48, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v49, 3uLL), v44))), vand_s8(vshr_n_u32(v50, 8uLL), 0x1F0000001FLL));
        *v21 = v52;
        v26 = (v26 + 1) & v28;
        v52.i8[0] = *(v25 + v27);
        v52.i8[4] = *(v25 + v26);
        v53 = vand_s8(v52, 0xFF000000FFLL);
        v54 = vadd_s32(v40, v53);
        v55 = vadd_s32(v41, v53);
        v56 = vadd_s32(v42, v53);
        v57 = vadd_s32(v45, v53);
        v4 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v57, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v57, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v54, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v55, 3uLL), v44))), vand_s8(vshr_n_u32(v56, 8uLL), 0x1F0000001FLL));
        v21[1] = v4;
        *v20++ = -1;
        v21 += 2;
        v43 -= 4;
      }

      while (v43 > 4);
    }

    else
    {
      v58 = vshlq_u32(v39, xmmword_18439C8D0);
      v59 = vshlq_u32(v39, xmmword_18439C8C0);
      v60 = vzip2q_s32(vextq_s8(v58, v58, 0xCuLL), v59);
      v60.i32[1] = v59.i32[0];
      v61 = vandq_s8(v60, xmmword_18439C8F0);
      *v61.i8 = vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
      v62 = vdupq_n_s32(v61.i32[0] | v61.i32[1] | (v39.i32[3] >> 8 << 27));
      v63 = a4 + 4;
      do
      {
        *v21->i8 = v62;
        v21 += 2;
        *v20++ = -1;
        v63 -= 4;
      }

      while (v63 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = a4;
    }

    bzero(v20, ((a4 - v29 + 3) & 0xFFFFFFFC) + 4);
  }
}

unint64_t rgb555_shade_custom_RGB(unint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  _S2 = v6 * a2;
  v8 = v6 * a3;
  _D0 = *(result + 280);
  *a6.i32 = *(result + 296) + ((*(result + 288) * v8) + (_D0.f32[0] * _S2));
  v10 = result + 368;
  v11 = *(result + 368);
  if (v11)
  {
    v10 = v11 + ((a3 >> 4) & 0xF0);
  }

  v12 = 15;
  if (!v11)
  {
    v12 = 0;
  }

  __asm { FMLA            S3, S2, V0.S[1] }

  v18 = *(result + 300) + _S3;
  v19 = *(result + 304);
  v20 = *(result + 336);
  v21 = *(result + 348);
  v22 = *(result + 344);
  v23 = *(result + 356);
  v24 = *(result + 376);
  v25 = *(result + 360);
  v26 = 4 * *(result + 48);
  v28 = *(result + 144);
  v27 = *(result + 152);
  if (v11)
  {
    v29 = (a2 >> 8) & 0xF;
  }

  else
  {
    v29 = 0;
  }

  *&a6.i32[1] = v18;
  do
  {
    v30 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v19, v30))), vmovn_s32(vcgtq_f32(v30, v19)))) & 1) == 0)
    {
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 8 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      v32 = vaddw_u16(vdupq_n_s32(*(v10 + v29)), *v31);
      LODWORD(v31) = v32.i32[3] >> 8;
      v33 = vshlq_u32(v32, xmmword_18439C8C0);
      v34 = vextq_s8(v33, vshlq_u32(v32, xmmword_18439C8D0), 0xCuLL);
      v34.i32[1] = v33.i32[0];
      v35 = vandq_s8(v34, xmmword_18439C8E0);
      *v35.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      result = HIDWORD(v35.i64[0]);
      *v27 = v35.i32[0] | v35.i32[1] | (v31 << 27);
      LOBYTE(v31) = -1;
      goto LABEL_14;
    }

    v31 = v24;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_14:
    v29 = (v29 + 1) & v12;
    *a6.i8 = vadd_f32(_D0, *a6.i8);
    ++v27;
    *v28++ = v31;
    --a4;
  }

  while (a4);
  return result;
}

void rgb555_shade_conic_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 368);
  if (v9)
  {
    v10 = v9 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v10 = a1 + 368;
  }

  if (v9)
  {
    v11 = 15;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 284);
  v13 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v12 * v6));
  v33 = *(a1 + 336);
  v34 = *(a1 + 304);
  v15 = *(a1 + 344);
  v16 = *(a1 + 360);
  v18 = *(a1 + 144);
  v17 = *(a1 + 152);
  if (v9)
  {
    v19 = (a2 >> 8) & 0xF;
  }

  else
  {
    v19 = 0;
  }

  v32 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v34 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v32)) - v33);
    v21 = vcvtms_s32_f32(v20);
    v22 = ceilf(v20);
    v23 = ((v20 - floorf(v20)) * 255.0) + 0.5;
    v24 = vcvtms_s32_f32(v15 + v20);
    v25 = ceilf(v20 - v15);
    if (v20 < 0.0)
    {
      v21 = v24;
    }

    if (v20 <= v15)
    {
      v26 = v22;
    }

    else
    {
      v26 = v25;
    }

    v27 = vsraq_n_u32(vdupq_n_s32(*(v10 + v19)), vmlaq_s32(vmulq_s32(vdupq_n_s32(v23), vmovl_u16(*(v16 + 8 * v26))), vdupq_n_s32(255 - v23), vmovl_u16(*(v16 + 2 * (4 * v21)))), 8uLL);
    v28 = vshlq_u32(v27, xmmword_18439C8C0);
    v29 = vextq_s8(v28, vshlq_u32(v27, xmmword_18439C8D0), 0xCuLL);
    v29.i32[1] = v28.i32[0];
    v30 = v27.u32[3];
    v31 = vandq_s8(v29, xmmword_18439C8E0);
    *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    *v17++ = v31.i32[0] | v31.i32[1] | (v30 >> 8 << 27);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void rgb555_shade_radial_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 284);
  v7 = *(*(a1 + 272) + 4);
  v8 = v7 * a2;
  v9 = v7 * a3;
  v10 = *(a1 + 296) + ((*(a1 + 288) * v9) + (v5 * v8));
  v11 = *(a1 + 300) + ((v9 * *(a1 + 292)) + (v6 * v8));
  v13 = *(a1 + 400);
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 324);
  v19 = v13[2];
  v20 = v13[4];
  v21 = v13[5];
  v22 = v13[7];
  v25 = a1 + 144;
  v23 = *(a1 + 144);
  v24 = *(v25 + 8);
  v26 = *(a1 + 376);
  v27 = *(a1 + 360);
  v28 = (a2 >> 8) & 0xF;
  if (v19 != 0.0 || v22 != 0.0 || v6 != 0.0)
  {
    v38 = *(a1 + 320);
    v39 = v13[3];
    v40 = v13[6];
    v41 = v13[8];
    v42 = a1 + 368;
    v43 = *(a1 + 368);
    v44 = v43 + ((a3 >> 4) & 0xF0);
    v32 = v43 == 0;
    v45 = 15;
    if (v32)
    {
      v45 = 0;
      v28 = 0;
    }

    else
    {
      v42 = v44;
    }

    v46 = -v40;
    v47 = v17 - v16;
    while (1)
    {
      v48 = v46 + ((v10 + v10) * v19);
      v49 = ((v11 * v11) + (v10 * v10)) - v22;
      if (v21 == 0.0)
      {
        v56 = v49 / v48;
      }

      else
      {
        v50 = ((v21 * -4.0) * v49) + (v48 * v48);
        if (v50 < 0.0)
        {
          goto LABEL_51;
        }

        v51 = sqrtf(v50);
        v52 = v41 * (v48 - v51);
        v53 = v48 + v51;
        v54 = v41 * v53;
        v55 = (v41 * v53) <= v52;
        if ((v41 * v53) <= v52)
        {
          v56 = v41 * v53;
        }

        else
        {
          v56 = v52;
        }

        if (v55)
        {
          v54 = v52;
        }

        if (v54 < 0.0)
        {
          v57 = v54 < v39;
LABEL_37:
          v58 = v38;
          if (v57)
          {
            goto LABEL_51;
          }

LABEL_38:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v54 <= 1.0)
        {
          v59 = v16 + (v54 * v47);
          goto LABEL_49;
        }

        if ((v18 & 0x80000000) == 0)
        {
          v58 = v18;
          if (v54 <= v20)
          {
LABEL_50:
            v60 = (v27 + 2 * (4 * v58));
LABEL_52:
            v61 = vaddw_u16(vdupq_n_s32(*(v42 + v28)), *v60);
            LODWORD(v60) = v61.i32[3] >> 8;
            v62 = vshlq_u32(v61, xmmword_18439C8C0);
            v63 = vextq_s8(v62, vshlq_u32(v61, xmmword_18439C8D0), 0xCuLL);
            v63.i32[1] = v62.i32[0];
            v64 = vandq_s8(v63, xmmword_18439C8E0);
            *v64.i8 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
            v24->i32[0] = v64.i32[0] | v64.i32[1] | (v60 << 27);
            LOBYTE(v60) = -1;
            goto LABEL_53;
          }
        }
      }

      if (v56 < 0.0)
      {
        v57 = v56 < v39;
        goto LABEL_37;
      }

      if (v56 > 1.0)
      {
        v58 = v18;
        if (v56 > v20)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v59 = v16 + (v56 * v47);
LABEL_49:
      v58 = (v15 * (v59 - v14));
      if ((v58 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v60 = v26;
      if (v26)
      {
        goto LABEL_52;
      }

LABEL_53:
      v28 = (v28 + 1) & v45;
      v10 = v5 + v10;
      v11 = v6 + v11;
      v24 = (v24 + 4);
      *v23++ = v60;
      if (!--a4)
      {
        return;
      }
    }
  }

  v29 = a1 + 368;
  v30 = *(a1 + 368);
  LODWORD(v31) = (BYTE1(a2) + 1) & 0xF;
  v32 = v30 == 0;
  if (v30)
  {
    v33 = v30 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v33 = v29;
  }

  if (v32)
  {
    LODWORD(v31) = 0;
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = (a2 >> 8) & 0xF;
  }

  if (v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = 15;
  }

  v35 = v11 * v11;
  v36 = -v21;
  if (v35 <= -v21)
  {
    v65 = fabsf(v13[8]);
    v66 = v21 * -4.0;
    v67 = v17 - v16;
    v68 = a4 + 2;
    while (1)
    {
      v69 = v35 + (v10 * v10);
      v70 = v5 + v10;
      v71 = v35 + (v70 * v70);
      if (v69 <= v36 || v71 <= v36)
      {
        v73 = sqrtf(v66 * v71);
        v74 = v65 * sqrtf(v66 * v69);
        v75 = v65 * v73;
        v76 = (v15 * ((v16 + (v74 * v67)) - v14));
        v77 = (v15 * ((v16 + ((v65 * v73) * v67)) - v14));
        if (v74 > 1.0 || v75 > 1.0)
        {
          if (v74 <= 1.0)
          {
            if (v76 < 0)
            {
              goto LABEL_79;
            }

            v79 = (4 * v76);
          }

          else if (v74 > v20 || (v79 = (4 * v18), v18 < 0))
          {
LABEL_79:
            v87 = v26;
            if (v26)
            {
LABEL_80:
              v97 = vaddw_u16(vdupq_n_s32(*(v33 + a2)), *v87);
              LODWORD(v87) = v97.i32[3] >> 8;
              v98 = vshlq_u32(v97, xmmword_18439C8C0);
              v99 = vextq_s8(v98, vshlq_u32(v97, xmmword_18439C8D0), 0xCuLL);
              v99.i32[1] = v98.i32[0];
              v100 = vandq_s8(v99, xmmword_18439C8E0);
              *v100.i8 = vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
              v24->i32[0] = v100.i32[0] | v100.i32[1] | (v87 << 27);
              LOBYTE(v87) = -1;
            }

            if (v75 <= 1.0)
            {
              if (v77 < 0)
              {
                goto LABEL_88;
              }

              v101 = (4 * v77);
            }

            else if (v75 > v20 || (v101 = (4 * v18), v18 < 0))
            {
LABEL_88:
              if (!v26)
              {
                v109 = 0;
                goto LABEL_92;
              }

              v102 = *v26;
              v103 = v31;
              goto LABEL_90;
            }

            v102 = *(v27 + 2 * v101);
            v103 = v31;
LABEL_90:
            v81 = vaddw_u16(vdupq_n_s32(*(v33 + v103)), v102);
            goto LABEL_91;
          }

          v87 = (v27 + 2 * v79);
          goto LABEL_80;
        }

        v81 = vaddw_u16(vdupq_n_s32(*(v33 + v31)), *(v27 + 8 * v77));
        v82 = vaddw_u16(vdupq_n_s32(*(v33 + a2)), *(v27 + 8 * v76));
        v83 = v82.i32[3] >> 8;
        v84 = vshlq_u32(v82, xmmword_18439C8C0);
        v85 = vextq_s8(v84, vshlq_u32(v82, xmmword_18439C8D0), 0xCuLL);
        v85.i32[1] = v84.i32[0];
        v86 = vandq_s8(v85, xmmword_18439C8E0);
        *v86.i8 = vorr_s8(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
        LODWORD(v87) = v86.i32[0] | v86.i32[1] | (v83 << 27);
      }

      else
      {
        if (v18 < 0)
        {
          if (!v26)
          {
            v109 = 0;
            LOBYTE(v87) = 0;
            goto LABEL_92;
          }

          v80 = *v26;
        }

        else
        {
          v80 = *(v27 + 2 * (4 * v18));
        }

        v88 = vmovl_u16(v80);
        v89 = *(v33 + a2);
        v90 = v88.i32[2] + v89;
        v81 = vaddw_u16(vdupq_n_s32(*(v33 + v31)), v80);
        v88.i32[2] = v88.i32[3];
        v91 = vaddq_s32(vdupq_n_s32(v89), v88);
        v92 = vshlq_u32(v91, xmmword_18439C900);
        v93 = vextq_s8(v92, v92, 4uLL);
        v94 = vandq_s8(vzip2q_s32(v93, vzip1q_s32(v93, vshlq_u32(v91, xmmword_18439C910))), xmmword_18439C920);
        v95 = (v90 >> 8) & 0x1F;
        v96 = vorr_s8(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
        LODWORD(v87) = v96.i32[0] | v95 | v96.i32[1];
      }

      v24->i32[0] = v87;
      LOBYTE(v87) = -1;
LABEL_91:
      v104 = v81;
      v104.i32[2] = v81.i32[3];
      v105 = vshlq_u32(v104, xmmword_18439C900);
      v106 = vextq_s8(v105, v105, 4uLL);
      v107 = vandq_s8(vzip2q_s32(v106, vzip1q_s32(v106, vshlq_u32(v81, xmmword_18439C910))), xmmword_18439C920);
      v108 = vorr_s8(*v107.i8, *&vextq_s8(v107, v107, 8uLL));
      v24->i32[1] = v108.i32[0] | (v81.i32[2] >> 8) & 0x1F | v108.i32[1];
      v109 = -1;
LABEL_92:
      v10 = v5 + v70;
      LOBYTE(a2) = (a2 + 1) & v34;
      LOBYTE(v31) = (v31 + 1) & v34;
      ++v24;
      *v23 = v87;
      v23[1] = v109;
      v23 += 2;
      v68 -= 2;
      if (v68 <= 2)
      {
        return;
      }
    }
  }

  if (v26 || (v18 & 0x80000000) == 0)
  {
    v110 = (v27 + 2 * (4 * v18));
    if (v18 >= 0)
    {
      v111 = v110;
    }

    else
    {
      v111 = v26;
    }

    v112 = vdup_n_s32(v111[3]);
    v113 = vdup_n_s32(*v111);
    v114 = vdup_n_s32(v111[1]);
    v115 = vdup_n_s32(v111[2]);
    v116 = a4 + 4;
    v117 = vdup_n_s32(0x3E0u);
    do
    {
      v118 = (v33 + a2);
      a2 = (a2 + 1) & v34;
      v4.i8[0] = *v118;
      v4.i8[4] = *(v33 + v31);
      v119 = vand_s8(v4, 0xFF000000FFLL);
      v120 = vadd_s32(v113, v119);
      v121 = vadd_s32(v114, v119);
      v122 = vadd_s32(v115, v119);
      v123 = vadd_s32(v112, v119);
      v124 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v123, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v123, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v120, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v121, 3uLL), v117))), vand_s8(vshr_n_u32(v122, 8uLL), 0x1F0000001FLL));
      *v24 = v124;
      v31 = (v31 + 1) & v34;
      v124.i8[0] = *(v33 + a2);
      v124.i8[4] = *(v33 + v31);
      v125 = vand_s8(v124, 0xFF000000FFLL);
      v126 = vadd_s32(v113, v125);
      v127 = vadd_s32(v114, v125);
      v128 = vadd_s32(v115, v125);
      v129 = vadd_s32(v112, v125);
      v4 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v129, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v129, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v126, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v127, 3uLL), v117))), vand_s8(vshr_n_u32(v128, 8uLL), 0x1F0000001FLL));
      v24[1] = v4;
      *v23 = -1;
      v23 += 4;
      v24 += 2;
      v116 -= 4;
    }

    while (v116 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = a4;
    }

    bzero(v23, ((a4 - v37 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t rgb555_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v42, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = a3[2] >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v25, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a3;
  *(&v25 + 1) = __PAIR64__(*v6, *a3);
  if (v10 == 67449684)
  {
    if (!v36 && (~DWORD1(v26) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v26) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      rgb555_mark(a1);
      return 1;
    }

    *&v25 = rgb555_sample_rgb555;
    goto LABEL_46;
  }

  v11 = SAMPLEINDEX(v10);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > 0xB)
  {
    goto LABEL_28;
  }

  if (v11 > 6)
  {
    switch(v11)
    {
      case 7u:
        v12 = 0;
        v13 = 32;
        break;
      case 9u:
        v12 = 0;
        v13 = 40;
        break;
      case 8u:
        v12 = 0;
        v13 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v11 == 2)
  {
    if (!*(a2 + 12))
    {
      v12 = 0;
      v13 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v13 = 255;
    v12 = 1;
    goto LABEL_29;
  }

  if (v11 != 5)
  {
    if (v11 == 6)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v12 = 0;
  v13 = 24;
LABEL_29:
  *&v25 = rgb555_image_sample[v11 + 1];
  if (v25)
  {
    if (!*(a3 + 5) || (v14 = *a3, (HIWORD(*a3) & 0x3Fu) <= (*(v6 + 2) & 0x3Fu)))
    {
      DWORD2(v25) = 67449684;
      goto LABEL_45;
    }
  }

  else
  {
    v14 = *a3;
  }

  if ((HIWORD(v14) & 0x3F) > 8u)
  {
    if ((v14 & 0x3F0000) >> 16 > 0x10)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v15 = RGB8_image_sample;
    *&v25 = *&RGB8_image_sample[2 * v11 + 2];
    if (v25)
    {
      goto LABEL_43;
    }
  }

  v15 = RGB16_image_sample;
  *&v25 = *&RGB16_image_sample[2 * v11 + 2];
  if (!v25)
  {
LABEL_40:
    v15 = RGBF_image_sample;
    *&v25 = *&RGBF_image_sample[2 * v11 + 2];
    if (v25)
    {
      v16 = 16;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

  v16 = 8;
LABEL_42:
  LODWORD(v26) = v16;
LABEL_43:
  DWORD2(v25) = *v15;
  if (*(a3 + 5))
  {
    *(&v35 + 1) = pixel_dither_noise;
  }

LABEL_45:
  if ((v12 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v26) & 7) != 3 || a2[2] != 5 && a2[2] || v11 > 0xB)
  {
    goto LABEL_46;
  }

  HIDWORD(v18) = v13;
  LODWORD(v18) = v13;
  v17 = v18 >> 3;
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      *(&v25 + 2) = *a3;
      v19 = rgb555_image_mark_RGB24;
      goto LABEL_74;
    }

    if (v17 == 4)
    {
      *(&v25 + 2) = *a3;
      v19 = rgb555_image_mark_rgb32;
      goto LABEL_74;
    }

    if (v17 != 5)
    {
      goto LABEL_46;
    }

    *(&v25 + 2) = *a3;
    v20 = rgb555_image_mark_rgb32;
LABEL_72:
    v21 = v20;
    v22 = a2;
    v23 = v8;
    v24 = 8;
LABEL_75:
    rgb555_image_mark_image(v22, &v25, v23, v24, v21);
    return 1;
  }

  switch(v17)
  {
    case 0:
      *(&v25 + 2) = *a3;
      v19 = rgb555_image_mark_RGB32;
      goto LABEL_74;
    case 1:
      *(&v25 + 2) = *a3;
      v20 = rgb555_image_mark_RGB32;
      goto LABEL_72;
    case 2:
      *(&v25 + 2) = *a3;
      v19 = rgb555_image_mark_W8;
LABEL_74:
      v21 = v19;
      v22 = a2;
      v23 = v8;
      v24 = 0;
      goto LABEL_75;
  }

LABEL_46:
  rgb555_image_mark(a2, &v25, v8);
  return 1;
}

uint64_t rgb555_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v796 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(v2 + 96);
  v6 = *(v2 + 48);
  v7 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if (v7 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v2;
  v10 = *(v2 + 4);
  v11 = v10 - 1;
  if (v10 < 1)
  {
    return 0;
  }

  v12 = *(v2 + 8);
  v13 = (v12 - 1);
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v2 + 136);
  v703 = v2;
  if ((v4 & 0xFF0000) == 0x50000 || !v14)
  {
    v705 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v5 == 0) + 4 * (v6 == 0));
    if ((*v2 & 0xFF00) == 0x400)
    {
      v795[0] = *(v2 + 4);
      v785[0] = v12;
      if (v5)
      {
        v16 = *v5;
      }

      else
      {
        v16 = 255;
      }

      v29 = **(v2 + 88);
      v30 = *(v2 + 12);
      v31 = *(v2 + 16);
      v32 = *(v2 + 28) >> 1;
      if (v6)
      {
        __b = *(v2 + 32);
        v773 = (v6 + __b * v31 + v30);
        v751 = 1;
      }

      else
      {
        v773 = 0;
        __b = 0;
        v751 = 0;
      }

      v39 = ~v16;
      v40 = *(v2 + 40) + 2 * v31 * v32 + 2 * v30;
      v749 = v40;
      if (v14)
      {
        shape_enum_clip_alloc(v1, v2, v14, 1, 1, 1, *(v2 + 104), *(v2 + 108), v10, v12);
        v42 = v41;
        v43 = v773;
        v781 = __b;
        v44 = v40;
        if (v41)
        {
          goto LABEL_350;
        }

        return 1;
      }

      v777 = 0;
      if (v6)
      {
        v45 = v10;
      }

      else
      {
        v45 = 0;
      }

      v43 = v773;
      v781 = __b - v45;
      v46 = v40;
      v47 = v10;
      v44 = v40;
LABEL_74:
      v780 = v32 - v47;
      v713 = v10;
      switch(v7)
      {
        case 0:
          v75 = v44;
          v76 = v780 + v10;
          v77 = v785[0];
          v78 = v785[0] - 1;
          v79 = &v46[2 * ((v76 * v78) & (v76 >> 63))];
          if (v76 < 0)
          {
            v76 = -v76;
          }

          v80 = v10;
          CGBlt_fillBytes(2 * v10, v785[0], 0, v79, 2 * v76);
          if (!v6)
          {
            goto LABEL_201;
          }

          v81 = v781 + v80;
          v43 += (v81 * v78) & (v81 >> 63);
          if (v81 >= 0)
          {
            v82 = v781 + v80;
          }

          else
          {
            v82 = -v81;
          }

          v83 = v80;
          v84 = v77;
          v85 = 0;
          goto LABEL_200;
        case 1:
          v75 = v44;
          v129 = v10;
          v130 = v780 + v10;
          if (v130 < 0)
          {
            v46 += 2 * v130 * (v785[0] - 1);
            v130 = -v130;
          }

          v131 = 0;
          v132 = *(v703 + 88);
          if (v132)
          {
            v131 = *v132;
          }

          v133 = v785[0];
          v134 = v46;
          v135 = v10;
          CGBlt_fillBytes(2 * v10, v785[0], v131, v134, 2 * v130);
          if (v6)
          {
            v84 = v133;
            v136 = *(v703 + 96);
            if (!v136)
            {
              v136 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v43 += ((v781 + v129) * (v133 - 1)) & ((v781 + v129) >> 63);
            if (v781 + v129 >= 0)
            {
              v82 = v781 + v129;
            }

            else
            {
              v82 = -(v781 + v129);
            }

            v85 = *v136;
            v83 = v135;
LABEL_200:
            v781 = v82;
            CGBlt_fillBytes(v83, v84, v85, v43, v82);
          }

LABEL_201:
          v7 = v705;
          v44 = v75;
          goto LABEL_348;
        case 2:
          v736 = v32;
          v111 = 4 * v751;
          if (v6)
          {
            do
            {
              v112 = v795[0];
              if (v795[0] >= 4)
              {
                v113 = (v795[0] >> 2) + 1;
                do
                {
                  v114 = PDAplusDAM(v29, v16, *v46, *v43, ~v16);
                  *v46 = v114;
                  *v43 = BYTE3(v114);
                  v115 = PDAplusDAM(v29, v16, *(v46 + 1), v43[1], ~v16);
                  *(v46 + 1) = v115;
                  v43[1] = BYTE3(v115);
                  v116 = PDAplusDAM(v29, v16, *(v46 + 2), v43[2], ~v16);
                  *(v46 + 2) = v116;
                  v43[2] = BYTE3(v116);
                  v117 = PDAplusDAM(v29, v16, *(v46 + 3), v43[3], ~v16);
                  *(v46 + 3) = v117;
                  v43[3] = HIBYTE(v117);
                  v46 += 8;
                  v43 += v111;
                  --v113;
                }

                while (v113 > 1);
                v112 = v795[0] & 3;
              }

              if (v112 >= 1)
              {
                v118 = v112 + 1;
                do
                {
                  v119 = PDAplusDAM(v29, v16, *v46, *v43, ~v16);
                  *v46 = v119;
                  v46 += 2;
                  *v43 = HIBYTE(v119);
                  v43 += v751;
                  --v118;
                }

                while (v118 > 1);
              }

              v46 += 2 * v780;
              v43 += v781;
              --v785[0];
            }

            while (v785[0]);
            goto LABEL_346;
          }

          v180 = v785[0];
          v748 = v10 & 3;
          v746 = (v10 >> 2) + 1;
          do
          {
            if (v10 < 4)
            {
              v182 = v10;
            }

            else
            {
              v181 = v746;
              do
              {
                *v46 = PDplusDM(v29, *v46, ~v16);
                *(v46 + 1) = PDplusDM(v29, *(v46 + 1), ~v16);
                *(v46 + 2) = PDplusDM(v29, *(v46 + 2), ~v16);
                *(v46 + 3) = PDplusDM(v29, *(v46 + 3), ~v16);
                v46 += 8;
                v43 += v111;
                --v181;
              }

              while (v181 > 1);
              v182 = v748;
              LODWORD(v10) = v713;
            }

            if (v182 >= 1)
            {
              v183 = v182 + 1;
              do
              {
                *v46 = PDplusDM(v29, *v46, ~v16);
                v46 += 2;
                --v183;
              }

              while (v183 > 1);
              v43 += v182 * v751;
              v7 = v705;
              LODWORD(v10) = v713;
            }

            v46 += 2 * v780;
            v43 += v781;
            --v180;
          }

          while (v180);
          goto LABEL_345;
        case 3:
          do
          {
            v123 = v795[0];
            do
            {
              v124 = *v43;
              if (v124 > 7)
              {
                if (v124 < 0xF8)
                {
                  v126 = PDAM(v29, v16, v124);
                  *v46 = v126;
                  v125 = HIBYTE(v126);
                }

                else
                {
                  *v46 = v29;
                  LOBYTE(v125) = v16;
                }
              }

              else
              {
                LOBYTE(v125) = 0;
                *v46 = 0;
              }

              *v43 = v125;
              v46 += 2;
              v43 += v751;
              --v123;
            }

            while (v123);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 4:
          do
          {
            v97 = v795[0];
            do
            {
              v98 = *v43;
              if (v98 < 0xF8)
              {
                if (v98 > 7)
                {
                  v100 = PDAM(v29, v16, ~v98);
                  *v46 = v100;
                  v99 = HIBYTE(v100);
                }

                else
                {
                  *v46 = v29;
                  LOBYTE(v99) = v16;
                }
              }

              else
              {
                LOBYTE(v99) = 0;
                *v46 = 0;
              }

              *v43 = v99;
              v46 += 2;
              v43 += v751;
              --v97;
            }

            while (v97);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 5:
          do
          {
            v143 = v795[0];
            do
            {
              v144 = PDAMplusDAM(v29, v16, *v43, *v46, *v43, ~v16);
              *v46 = v144;
              v46 += 2;
              *v43 = HIBYTE(v144);
              v43 += v751;
              --v143;
            }

            while (v143);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 6:
          goto LABEL_246;
        case 7:
          if (v6)
          {
            do
            {
              v127 = v795[0];
              do
              {
                v128 = PDAM(*v46, *v43, v16);
                *v46 = v128;
                v46 += 2;
                *v43 = HIBYTE(v128);
                v43 += v751;
                --v127;
              }

              while (v127);
              v46 += 2 * v780;
              v43 += v781;
              --v785[0];
            }

            while (v785[0]);
            goto LABEL_347;
          }

          v736 = v32;
          v184 = v785[0];
          v185 = v751 + v751 * (v10 - 1);
          do
          {
            v186 = v10;
            do
            {
              *v46 = PDM(*v46, v16);
              v46 += 2;
              --v186;
            }

            while (v186);
            v46 += 2 * v780;
            v43 += v185 + v781;
            --v184;
            LODWORD(v10) = v713;
          }

          while (v184);
          goto LABEL_345;
        case 8:
          if (v6)
          {
            do
            {
              v160 = v795[0];
              do
              {
                v161 = PDAM(*v46, *v43, v39);
                *v46 = v161;
                v46 += 2;
                *v43 = HIBYTE(v161);
                v43 += v751;
                --v160;
              }

              while (v160);
              v46 += 2 * v780;
              v43 += v781;
              --v785[0];
            }

            while (v785[0]);
            goto LABEL_347;
          }

          v736 = v32;
          v187 = v785[0];
          v188 = v751 + v751 * (v10 - 1);
          do
          {
            v189 = v10;
            do
            {
              *v46 = PDM(*v46, v39);
              v46 += 2;
              --v189;
            }

            while (v189);
            v46 += 2 * v780;
            v43 += v188 + v781;
            --v187;
            LODWORD(v10) = v713;
          }

          while (v187);
          goto LABEL_345;
        case 9:
          do
          {
            v103 = v795[0];
            do
            {
              v104 = PDAMplusDAM(v29, v16, *v43 ^ 0xFFu, *v46, *v43, v16);
              *v46 = v104;
              v46 += 2;
              *v43 = HIBYTE(v104);
              v43 += v751;
              --v103;
            }

            while (v103);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 10:
          do
          {
            v158 = v795[0];
            do
            {
              v159 = PDAMplusDAM(v29, v16, *v43 ^ 0xFFu, *v46, *v43, ~v16);
              *v46 = v159;
              v46 += 2;
              *v43 = HIBYTE(v159);
              v43 += v751;
              --v158;
            }

            while (v158);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 11:
          if (v6)
          {
            do
            {
              v95 = v795[0];
              do
              {
                v96 = PDAplusdDA(*v46, *v43, v29, v16);
                *v46 = v96;
                v46 += 2;
                *v43 = HIBYTE(v96);
                v43 += v751;
                --v95;
              }

              while (v95);
              v46 += 2 * v780;
              v43 += v781;
              --v785[0];
            }

            while (v785[0]);
          }

          else
          {
            v736 = v32;
            v174 = v785[0];
            v175 = v751 + v751 * (v10 - 1);
            do
            {
              v176 = v10;
              do
              {
                *v46 = PDplusdDA(*v46, v29, v16);
                v46 += 2;
                --v176;
              }

              while (v176);
              v46 += 2 * v780;
              v43 += v175 + v781;
              --v174;
              LODWORD(v10) = v713;
            }

            while (v174);
LABEL_345:
            v785[0] = 0;
LABEL_346:
            v32 = v736;
          }

          goto LABEL_347;
        case 12:
          if (v6)
          {
            do
            {
              v101 = v795[0];
              do
              {
                v102 = PDApluslDA(*v46, *v43, v29, v16);
                *v46 = v102;
                v46 += 2;
                *v43 = HIBYTE(v102);
                v43 += v751;
                --v101;
              }

              while (v101);
              v46 += 2 * v780;
              v43 += v781;
              --v785[0];
            }

            while (v785[0]);
            goto LABEL_347;
          }

          v177 = v785[0];
          do
          {
            v178 = v10;
            do
            {
              v179 = ((*v46 | (*v46 << 15)) & 0x1F07C1F) + ((v29 | (v29 << 15)) & 0x1F07C1F);
              *v46 = (((15 * ((v179 >> 5) & 0x100401)) | v179 | (30 * ((v179 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v179 >> 5) & 0x401)) | v179 | (30 * ((v179 >> 5) & 0x401))) & 0x7C1F;
              v46 += 2;
              --v178;
            }

            while (v178);
            v46 += 2 * v780;
            v43 += v751 + v751 * (v10 - 1) + v781;
            --v177;
          }

          while (v177);
          v785[0] = 0;
          goto LABEL_348;
        case 13:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v148 = v795[0];
            do
            {
              if (v6)
              {
                v149 = *v43;
                if (v149 > 7)
                {
                  v150 = PDAmultiplyPDA(*v46, v149, v29, v16);
                  *v46 = v150;
                  *v43 = HIBYTE(v150);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAmultiplyPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v148;
            }

            while (v148);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 14:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v92 = v795[0];
            do
            {
              if (v6)
              {
                v93 = *v43;
                if (v93 > 7)
                {
                  v94 = PDAscreenPDA(*v46, v93, v29, v16);
                  *v46 = v94;
                  *v43 = HIBYTE(v94);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAscreenPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v92;
            }

            while (v92);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 15:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v120 = v795[0];
            do
            {
              if (v6)
              {
                v121 = *v43;
                if (v121 > 7)
                {
                  v122 = PDAoverlayPDA(*v46, v121, v29, v16);
                  *v46 = v122;
                  *v43 = HIBYTE(v122);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAoverlayPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v120;
            }

            while (v120);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 16:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v89 = v795[0];
            do
            {
              if (v6)
              {
                v90 = *v43;
                if (v90 > 7)
                {
                  v91 = PDAdarkenPDA(*v46, v90, v29, v16);
                  *v46 = v91;
                  *v43 = HIBYTE(v91);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAdarkenPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v89;
            }

            while (v89);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 17:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v137 = v795[0];
            do
            {
              if (v6)
              {
                v138 = *v43;
                if (v138 > 7)
                {
                  v139 = PDAlightenPDA(*v46, v138, v29, v16);
                  *v46 = v139;
                  *v43 = HIBYTE(v139);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAlightenPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v137;
            }

            while (v137);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 18:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v155 = v795[0];
            do
            {
              if (v6)
              {
                v156 = *v43;
                if (v156 > 7)
                {
                  v157 = PDAcolordodgePDA(*v46, v156, v29, v16);
                  *v46 = v157;
                  *v43 = HIBYTE(v157);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAcolordodgePDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v155;
            }

            while (v155);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 19:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v165 = v795[0];
            do
            {
              if (v6)
              {
                v166 = *v43;
                if (v166 > 7)
                {
                  v167 = PDAcolorburnPDA(*v46, v166, v29, v16);
                  *v46 = v167;
                  *v43 = HIBYTE(v167);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAcolorburnPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v165;
            }

            while (v165);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 20:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v140 = v795[0];
            do
            {
              if (v6)
              {
                v141 = *v43;
                if (v141 > 7)
                {
                  v142 = PDAsoftlightPDA(*v46, v141, v29, v16);
                  *v46 = v142;
                  *v43 = HIBYTE(v142);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAsoftlightPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v140;
            }

            while (v140);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 21:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v145 = v795[0];
            do
            {
              if (v6)
              {
                v146 = *v43;
                if (v146 > 7)
                {
                  v147 = PDAhardlightPDA(*v46, v146, v29, v16);
                  *v46 = v147;
                  *v43 = HIBYTE(v147);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAhardlightPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v145;
            }

            while (v145);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 22:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v162 = v795[0];
            do
            {
              if (v6)
              {
                v163 = *v43;
                if (v163 > 7)
                {
                  v164 = PDAdifferencePDA(*v46, v163, v29, v16);
                  *v46 = v164;
                  *v43 = HIBYTE(v164);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAdifferencePDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v162;
            }

            while (v162);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 23:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v168 = v795[0];
            do
            {
              if (v6)
              {
                v169 = *v43;
                if (v169 > 7)
                {
                  v170 = PDAexclusionPDA(*v46, v169, v29, v16);
                  *v46 = v170;
                  *v43 = HIBYTE(v170);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAexclusionPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v168;
            }

            while (v168);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 24:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v108 = v795[0];
            do
            {
              if (v6)
              {
                v109 = *v43;
                if (v109 > 7)
                {
                  v110 = PDAhuePDA(*v46, v109, v29, v16);
                  *v46 = v110;
                  *v43 = HIBYTE(v110);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAhuePDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v108;
            }

            while (v108);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 25:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v105 = v795[0];
            do
            {
              if (v6)
              {
                v106 = *v43;
                if (v106 > 7)
                {
                  v107 = PDAsaturationPDA(*v46, v106, v29, v16);
                  *v46 = v107;
                  *v43 = HIBYTE(v107);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAsaturationPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v105;
            }

            while (v105);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 26:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v171 = v795[0];
            do
            {
              if (v6)
              {
                v172 = *v43;
                if (v172 > 7)
                {
                  v173 = PDAluminosityPDA(v29, v16, *v46, v172);
                  *v46 = v173;
                  *v43 = HIBYTE(v173);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAluminosityPDA(v29, v16, *v46, 0xFFu);
              }

              v46 += 2;
              v43 += v751;
              --v171;
            }

            while (v171);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        case 27:
          if (v16 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v86 = v795[0];
            do
            {
              if (v6)
              {
                v87 = *v43;
                if (v87 > 7)
                {
                  v88 = PDAluminosityPDA(*v46, v87, v29, v16);
                  *v46 = v88;
                  *v43 = HIBYTE(v88);
                }

                else
                {
                  *v46 = v29;
                  *v43 = v16;
                }
              }

              else
              {
                *v46 = PDAluminosityPDA(*v46, 0xFFu, v29, v16);
              }

              v46 += 2;
              v43 += v751;
              --v86;
            }

            while (v86);
            v46 += 2 * v780;
            v43 += v781;
            --v785[0];
          }

          while (v785[0]);
          goto LABEL_347;
        default:
          goto LABEL_348;
      }

      while (1)
      {
LABEL_246:
        v151 = v795[0];
        do
        {
          v152 = *v43;
          if (v152 > 7)
          {
            if (v152 > 0xF7)
            {
              goto LABEL_252;
            }

            v154 = PDAplusDAM(*v46, v152, v29, v16, ~v152);
            *v46 = v154;
            v153 = HIBYTE(v154);
          }

          else
          {
            *v46 = v29;
            LOBYTE(v153) = v16;
          }

          *v43 = v153;
LABEL_252:
          v46 += 2;
          v43 += v751;
          --v151;
        }

        while (v151);
        v46 += 2 * v780;
        v43 += v781;
        if (!--v785[0])
        {
LABEL_347:
          v44 = v749;
LABEL_348:
          v42 = v777;
          if (v777)
          {
            v784 = 0;
LABEL_350:
            if (shape_enum_clip_next(v42, &v784 + 1, &v784, v795, v785))
            {
              v777 = v42;
              v46 = (v44 + 2 * v32 * v784 + 2 * SHIDWORD(v784));
              v47 = v795[0];
              if (v6)
              {
                v43 = &v773[__b * v784 + SHIDWORD(v784)];
              }

              v190 = v781;
              if (v6)
              {
                v190 = (__b - v795[0]);
              }

              v781 = v190;
              LODWORD(v10) = v795[0];
              goto LABEL_74;
            }

            v59 = v42;
LABEL_1083:
            free(v59);
          }

          return 1;
        }
      }
    }

    v795[0] = *(v2 + 4);
    v785[0] = v12;
    v17 = *(v2 + 88);
    v18 = *(v2 + 12);
    v19 = *(v2 + 16);
    v20 = *(v2 + 28) >> 1;
    if (v6)
    {
      v701 = *(v2 + 32);
      v702 = (v6 + v701 * v19 + v18);
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v701 = 0;
      v702 = 0;
      v21 = 0;
    }

    v700 = *(v2 + 40) + 2 * v19 * v20 + 2 * v18;
    v33 = *(v2 + 104);
    v34 = *(v2 + 108);
    v35 = *(v2 + 56);
    v36 = BYTE1(v4);
    v687 = v35;
    v688 = *(v2 + 60);
    if (v36 == 3)
    {
      v782 = *(v2 + 104);
      v48 = v10;
      v49 = v21;
      v1 = rgb555_colorlookup(3, v17, v5);
      v17 = v1;
      if (v5)
      {
        v50 = 0;
        v5 = (v1 + 512);
        v51 = 16;
        LODWORD(v38) = 1;
      }

      else
      {
        v51 = 0;
        LODWORD(v38) = 0;
        v50 = 1;
      }

      v57 = 16;
      LODWORD(v711) = 16;
      LOBYTE(v21) = v49;
      v58 = 16;
      v10 = v48;
      v33 = v782;
    }

    else
    {
      if (v36 == 1)
      {
        v37 = *(v2 + 60);
        v711 = *(v2 + 76) >> 1;
        if (v5)
        {
          v709 = *(v2 + 80);
          v5 += v709 * v37 + v35;
          LODWORD(v38) = -1;
        }

        else
        {
          v709 = 0;
          LODWORD(v38) = 0;
        }

        v17 += v37 * v711 + v35;
        if (v711 == v20)
        {
          v60 = (v700 - v17) >> 1;
          if (v60 >= 1)
          {
            if (v60 <= v10)
            {
              v700 += 2 * v11;
              v702 += v21 & v11;
              v5 += v38 & v11;
              v704 = -1;
              v711 = *(v2 + 28) >> 1;
              v17 += v11;
              goto LABEL_52;
            }

            v61 = v20 * v13;
            v62 = &v17[v20 * v13];
            if (v700 <= &v62[v10 - 1])
            {
              v20 = -v20;
              v74 = &v702[v701 * v13];
              v701 = -v701;
              v702 = v74;
              v21 &= 1u;
              v5 += v709 * v13;
              v709 = -v709;
              LODWORD(v38) = v38 & 1;
              v704 = 1;
              v17 = v62;
              v711 = v20;
              v700 += 2 * v61;
              goto LABEL_52;
            }
          }
        }

        v21 &= 1u;
        LODWORD(v38) = v38 & 1;
        v704 = 1;
LABEL_52:
        if (v14)
        {
          v710 = v17;
          v750 = v21;
          v745 = 0;
          v735 = 0;
          v752 = -1;
          v774 = v38;
          v58 = v711;
          v51 = v709;
          v63 = v704;
          goto LABEL_60;
        }

        v64 = v704 * v10;
        v731 = v701 - v21 * v10;
        v65 = -1;
        v51 = v709;
        v58 = v711;
LABEL_71:
        v735 = 0;
        v708 = 0;
        v745 = 0;
        v747 = v5;
        v58 -= v64;
        v712 = v10;
        v51 -= v38 * v10;
        v779 = v17;
        v783 = v5;
        __ba = v702;
        v778 = v700;
        while (2)
        {
          v750 = v21;
          v774 = v38;
          v710 = v17;
          v733 = v58;
          v734 = v20 - v64;
          v732 = v51;
          v706 = v5;
          v707 = v20;
          switch(v7)
          {
            case 0:
              v752 = v65;
              v191 = v734 - v712;
              v192 = &v778[-2 * v712 + 2];
              if (v704 >= 0)
              {
                v192 = v778;
                v191 = v734 + v712;
              }

              v193 = v785[0];
              v194 = v785[0] - 1;
              v195 = (v192 + 2 * ((v191 * v194) & (v191 >> 63)));
              if (v191 < 0)
              {
                v191 = -v191;
              }

              v196 = v21;
              CGBlt_fillBytes(2 * v712, v785[0], 0, v195, 2 * v191);
              if (v196)
              {
                v197 = v731 - v712;
                v198 = &__ba[-v712 + 1];
                if (v704 >= 0)
                {
                  v198 = __ba;
                  v197 = v731 + v712;
                }

                v199 = (v197 * v194) & (v197 >> 63);
                if (v197 >= 0)
                {
                  v200 = v197;
                }

                else
                {
                  v200 = -v197;
                }

                __ba = &v198[v199];
                v731 = v200;
                CGBlt_fillBytes(v712, v193, 0, &v198[v199], v200);
              }

              goto LABEL_1126;
            case 1:
              v380 = *(v9 + 1);
              if ((v380 - 2) < 2)
              {
                if (v712 >= 16 && (2 * v711) <= 0x40)
                {
                  v3.i32[0] = 2 * v711;
                  v381 = vcnt_s8(v3);
                  v381.i16[0] = vaddlv_u8(v381);
                  if (v381.i32[0] <= 1u)
                  {
                    v752 = v65;
                    v382 = v785[0];
                    CGSFillDRAM64(v778, 2 * (v712 + v734), 2 * v712, v785[0], v17, 2 * v58, 2 * v711, v709, 2 * v687, v688);
                    if (!v750)
                    {
                      goto LABEL_1054;
                    }

                    v67 = v708;
                    if (v774)
                    {
                      CGSFillDRAM64(__ba, v712 + v731, v712, v382, v5, v51, v711, v709, v687, v688);
                      if (!v708)
                      {
                        return 1;
                      }
                    }

                    else
                    {
                      CGBlt_fillBytes(v712, v382, -1, __ba, v712 + v731);
                      if (!v708)
                      {
                        return 1;
                      }
                    }

                    goto LABEL_1055;
                  }
                }

LABEL_960:
                if (v21)
                {
                  v579 = 2 * v704;
                  if (v38)
                  {
                    do
                    {
                      v580 = v795[0];
                      do
                      {
                        *v778 = *v779;
                        *__ba = *v783;
                        __ba += v21;
                        v581 = &v779[v704];
                        if (v581 >= v65)
                        {
                          v582 = -v711;
                        }

                        else
                        {
                          v582 = 0;
                        }

                        v779 = &v581[v582];
                        v783 += v38 + v582;
                        v778 += v579;
                        --v580;
                      }

                      while (v580);
                      if (v735)
                      {
                        v583 = &v745[v58];
                        if (v583 >= v735)
                        {
                          v584 = -(v51 * v709);
                        }

                        else
                        {
                          v584 = 0;
                        }

                        v585 = &v747[v51 + v584];
                        if (v583 >= v735)
                        {
                          v586 = -(v58 * v709);
                        }

                        else
                        {
                          v586 = 0;
                        }

                        v65 += 2 * v586 + 2 * v58;
                        v745 = &v583[v586];
                        v747 += v51 + v584;
                        v779 = v745;
                        v783 = v585;
                      }

                      else
                      {
                        v779 += v58;
                        v783 += v51;
                      }

                      v778 += 2 * v734;
                      __ba += v731;
                      --v785[0];
                    }

                    while (v785[0]);
                  }

                  else
                  {
                    do
                    {
                      v676 = v795[0];
                      do
                      {
                        *v778 = *v779;
                        *__ba = -1;
                        __ba += v21;
                        v677 = &v779[v704];
                        if (v677 >= v65)
                        {
                          v678 = -v711;
                        }

                        else
                        {
                          v678 = 0;
                        }

                        v779 = &v677[v678];
                        v783 += v678;
                        v778 += v579;
                        --v676;
                      }

                      while (v676);
                      if (v735)
                      {
                        v679 = &v745[v58];
                        if (v679 >= v735)
                        {
                          v680 = -(v51 * v709);
                        }

                        else
                        {
                          v680 = 0;
                        }

                        v681 = &v747[v51 + v680];
                        if (v679 >= v735)
                        {
                          v682 = -(v58 * v709);
                        }

                        else
                        {
                          v682 = 0;
                        }

                        v65 += 2 * v682 + 2 * v58;
                        v745 = &v679[v682];
                        v747 += v51 + v680;
                        v779 = v745;
                        v783 = v681;
                      }

                      else
                      {
                        v779 += v58;
                        v783 += v51;
                      }

                      v778 += 2 * v734;
                      __ba += v731;
                      --v785[0];
                    }

                    while (v785[0]);
                  }

LABEL_1160:
                  v752 = v65;
                }

                else
                {
                  v667 = v785[0];
                  v668 = (v785[0] - 1) + 1;
                  do
                  {
                    v669 = v712;
                    do
                    {
                      *v778 = *v779;
                      v670 = &v779[v704];
                      if (v670 >= v65)
                      {
                        v671 = -v711;
                      }

                      else
                      {
                        v671 = 0;
                      }

                      v779 = &v670[v671];
                      v783 += v38 + v671;
                      v778 += 2 * v704;
                      --v669;
                    }

                    while (v669);
                    if (v735)
                    {
                      v672 = &v745[v58];
                      if (v672 >= v735)
                      {
                        v673 = -(v51 * v709);
                      }

                      else
                      {
                        v673 = 0;
                      }

                      v674 = &v747[v51 + v673];
                      if (v672 >= v735)
                      {
                        v675 = -(v58 * v709);
                      }

                      else
                      {
                        v675 = 0;
                      }

                      v65 += 2 * v675 + 2 * v58;
                      v745 = &v672[v675];
                      v747 += v51 + v673;
                      v779 = v745;
                      v783 = v674;
                    }

                    else
                    {
                      v779 += v58;
                      v783 += v51;
                    }

                    v778 += 2 * v734;
                    --v667;
                  }

                  while (v667);
                  v752 = v65;
                  v609 = &__ba[v731 * v668];
LABEL_1144:
                  __ba = v609;
                  v785[0] = 0;
                }

                goto LABEL_1054;
              }

              if (v380 != 1)
              {
                goto LABEL_960;
              }

              v752 = v65;
              v559 = v20;
              v560 = v58 - v712;
              v561 = 2 * v712 - 2;
              v562 = (v779 - v561);
              v563 = v734 - v712;
              v564 = &v778[-v561];
              if (v704 >= 0)
              {
                v562 = v779;
                v564 = v778;
                v560 = v58 + v712;
                v563 = v734 + v712;
              }

              v565 = v785[0];
              v566 = v785[0] - 1;
              v567 = &v562[(v560 * v566) & (v560 >> 63)];
              if (v560 >= 0)
              {
                v568 = v560;
              }

              else
              {
                v568 = -v560;
              }

              if (v563 >= 0)
              {
                LODWORD(v569) = v563;
              }

              else
              {
                v569 = -v563;
              }

              v570 = v568;
              CGBlt_copyBytes(2 * v712, v785[0], v567, &v564[2 * ((v563 * v566) & (v563 >> 63))], 2 * v568, 2 * v569);
              if (!v750)
              {
                goto LABEL_1167;
              }

              if (v774)
              {
                v571 = v732 - v712;
                v572 = &v783[-v712 + 1];
                v573 = v731 - v712;
                v574 = &__ba[-v712 + 1];
                if (v704 >= 0)
                {
                  v572 = v783;
                  v574 = __ba;
                  v571 = v732 + v712;
                  v573 = v731 + v712;
                }

                v575 = (v571 * v566) & (v571 >> 63);
                if (v571 >= 0)
                {
                  v576 = v571;
                }

                else
                {
                  v576 = -v571;
                }

                v577 = (v573 * v566) & (v573 >> 63);
                if (v573 >= 0)
                {
                  v578 = v573;
                }

                else
                {
                  v578 = -v573;
                }

                v783 = &v572[v575];
                __ba = &v574[v577];
                v731 = v578;
                CGBlt_copyBytes(v712, v565, &v572[v575], &v574[v577], v576, v578);
                v20 = v559;
                v51 = v576;
              }

              else
              {
                v683 = v731 - v712;
                v684 = &__ba[-v712 + 1];
                if (v704 >= 0)
                {
                  v684 = __ba;
                  v683 = v731 + v712;
                }

                v685 = (v683 * v566) & (v683 >> 63);
                if (v683 >= 0)
                {
                  v686 = v683;
                }

                else
                {
                  v686 = -v683;
                }

                __ba = &v684[v685];
                v731 = v686;
                CGBlt_fillBytes(v712, v565, -1, &v684[v685], v686);
LABEL_1167:
                v20 = v559;
                v51 = v732;
              }

              v58 = v570;
              goto LABEL_1054;
            case 2:
              v320 = v704;
              v693 = -(v51 * v709);
              v321 = 2 * v704;
              if (v21)
              {
                v322 = v21;
                v323 = v38;
                while (1)
                {
                  v324 = v795[0];
                  do
                  {
                    v325 = *v783;
                    if (v325 < 0xF8)
                    {
                      if (v325 < 8)
                      {
                        goto LABEL_571;
                      }

                      v327 = v65;
                      v328 = PDAplusDAM(*v779, v325, *v778, *__ba, v325 ^ 0xFF);
                      v321 = 2 * v704;
                      v320 = v704;
                      v65 = v327;
                      *v778 = v328;
                      v326 = HIBYTE(v328);
                    }

                    else
                    {
                      *v778 = *v779;
                      LOBYTE(v326) = *v783;
                    }

                    *__ba = v326;
LABEL_571:
                    __ba += v322;
                    v329 = &v779[v320];
                    if (v329 >= v65)
                    {
                      v330 = -v711;
                    }

                    else
                    {
                      v330 = 0;
                    }

                    v779 = &v329[v330];
                    v783 += v323 + v330;
                    v778 += v321;
                    --v324;
                  }

                  while (v324);
                  if (v735)
                  {
                    v51 = v732;
                    v331 = &v745[v58];
                    v332 = v693;
                    if (v331 < v735)
                    {
                      v332 = 0;
                    }

                    v333 = &v747[v732 + v332];
                    v334 = -(v58 * v709);
                    if (v331 < v735)
                    {
                      v334 = 0;
                    }

                    v65 += 2 * v334 + 2 * v58;
                    v745 = &v331[v334];
                    v747 += v732 + v332;
                    v779 = v745;
                    v783 = v333;
                  }

                  else
                  {
                    v51 = v732;
                    v779 += v58;
                    v783 += v732;
                  }

                  __ba += v731;
                  v778 += 2 * v734;
                  if (!--v785[0])
                  {
                    goto LABEL_1051;
                  }
                }
              }

              v610 = v38;
              v611 = v785[0];
              v690 = (v785[0] - 1) + 1;
LABEL_1014:
              v612 = v712;
              while (1)
              {
                v613 = *v783;
                if (v613 >= 0xF8)
                {
                  break;
                }

                if (v613 >= 8)
                {
                  v615 = v65;
                  v614 = PDplusDM(*v779, *v778, v613 ^ 0xFF);
                  v321 = 2 * v704;
                  v320 = v704;
                  v65 = v615;
                  goto LABEL_1019;
                }

LABEL_1020:
                v616 = &v779[v320];
                if (v616 >= v65)
                {
                  v617 = -v711;
                }

                else
                {
                  v617 = 0;
                }

                v779 = &v616[v617];
                v783 += v610 + v617;
                v778 += v321;
                if (!--v612)
                {
                  if (v735)
                  {
                    v51 = v732;
                    v618 = &v745[v58];
                    v619 = v693;
                    if (v618 < v735)
                    {
                      v619 = 0;
                    }

                    v620 = &v747[v732 + v619];
                    v621 = -(v58 * v709);
                    if (v618 < v735)
                    {
                      v621 = 0;
                    }

                    v65 += 2 * v621 + 2 * v58;
                    v745 = &v618[v621];
                    v747 += v732 + v619;
                    v779 = v745;
                    v783 = v620;
                  }

                  else
                  {
                    v51 = v732;
                    v779 += v58;
                    v783 += v732;
                  }

                  v778 += 2 * v734;
                  v785[0] = --v611;
                  if (!v611)
                  {
                    goto LABEL_1104;
                  }

                  goto LABEL_1014;
                }
              }

              v614 = *v779;
LABEL_1019:
              *v778 = v614;
              goto LABEL_1020;
            case 3:
              v348 = v704;
              v349 = v21;
              v689 = -(v51 * v709);
              v694 = -(v58 * v709);
              v350 = 2 * v704;
              if (v38)
              {
                v351 = v38;
                v740 = v21;
                do
                {
                  v352 = v795[0];
                  do
                  {
                    v353 = *__ba;
                    if (v353 > 7)
                    {
                      v355 = *v779;
                      if (v353 < 0xF8)
                      {
                        v356 = v348;
                        v357 = v65;
                        v358 = PDAM(v355, *v783, v353);
                        v350 = 2 * v704;
                        v65 = v357;
                        v348 = v356;
                        v349 = v740;
                        *v778 = v358;
                        v354 = HIBYTE(v358);
                      }

                      else
                      {
                        *v778 = v355;
                        LOBYTE(v354) = *v783;
                      }
                    }

                    else
                    {
                      LOBYTE(v354) = 0;
                      *v778 = 0;
                    }

                    *__ba = v354;
                    __ba += v349;
                    v359 = &v779[v348];
                    if (v359 >= v65)
                    {
                      v360 = -v711;
                    }

                    else
                    {
                      v360 = 0;
                    }

                    v779 = &v359[v360];
                    v783 += v351 + v360;
                    v778 += v350;
                    --v352;
                  }

                  while (v352);
                  if (v735)
                  {
                    v51 = v732;
                    v361 = &v745[v733];
                    v362 = v689;
                    if (v361 < v735)
                    {
                      v362 = 0;
                    }

                    v363 = &v747[v732 + v362];
                    v364 = v694;
                    if (v361 < v735)
                    {
                      v364 = 0;
                    }

                    v65 += 2 * v364 + 2 * v733;
                    v745 = &v361[v364];
                    v747 += v732 + v362;
                    v779 = v745;
                    v783 = v363;
                  }

                  else
                  {
                    v51 = v732;
                    v779 += v733;
                    v783 += v732;
                  }

                  __ba += v731;
                  v778 += 2 * v734;
                  --v785[0];
                }

                while (v785[0]);
              }

              else
              {
                v622 = v785[0];
                do
                {
                  v699 = v622;
                  v623 = v712;
                  do
                  {
                    v624 = *__ba;
                    if (v624 >= 8)
                    {
                      v625 = *v779;
                      if (v624 <= 0xF7)
                      {
                        v626 = v65;
                        LOWORD(v625) = PDM(v625, v624);
                        v350 = 2 * v704;
                        v65 = v626;
                      }
                    }

                    else
                    {
                      LOWORD(v625) = 0;
                    }

                    *v778 = v625;
                    __ba += v349;
                    v627 = &v779[v704];
                    if (v627 >= v65)
                    {
                      v628 = -v711;
                    }

                    else
                    {
                      v628 = 0;
                    }

                    v779 = &v627[v628];
                    v783 += v628;
                    v778 += v350;
                    --v623;
                  }

                  while (v623);
                  if (v735)
                  {
                    v51 = v732;
                    v629 = &v745[v58];
                    v630 = v689;
                    if (v629 < v735)
                    {
                      v630 = 0;
                    }

                    v631 = &v747[v732 + v630];
                    v632 = -(v58 * v709);
                    if (v629 < v735)
                    {
                      v632 = 0;
                    }

                    v65 += 2 * v632 + 2 * v58;
                    v745 = &v629[v632];
                    v747 += v732 + v630;
                    v779 = v745;
                    v783 = v631;
                  }

                  else
                  {
                    v51 = v732;
                    v779 += v58;
                    v783 += v732;
                  }

                  __ba += v731;
                  v778 += 2 * v734;
                  v622 = v699 - 1;
                  v785[0] = v699 - 1;
                }

                while (v699 != 1);
              }

              goto LABEL_1051;
            case 4:
              v253 = v21;
              v254 = v38;
              v717 = -(v51 * v709);
              do
              {
                v255 = v795[0];
                v756 = v65;
                do
                {
                  v256 = *__ba;
                  if (v256 < 0xF8)
                  {
                    if (v256 > 7)
                    {
                      if (v38)
                      {
                        v258 = *v783;
                      }

                      else
                      {
                        v258 = -1;
                      }

                      v259 = PDAM(*v779, v258, ~v256);
                      *v778 = v259;
                      v257 = HIBYTE(v259);
                      v65 = v756;
                      LODWORD(v38) = v774;
                    }

                    else if (v38)
                    {
                      LOBYTE(v257) = *v783;
                    }

                    else
                    {
                      LOBYTE(v257) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v257) = 0;
                    *v778 = 0;
                  }

                  *__ba = v257;
                  __ba += v253;
                  v260 = &v779[v704];
                  if (v260 >= v65)
                  {
                    v261 = -v711;
                  }

                  else
                  {
                    v261 = 0;
                  }

                  v779 = &v260[v261];
                  v783 += v254 + v261;
                  v778 += 2 * v704;
                  --v255;
                }

                while (v255);
                if (v735)
                {
                  v51 = v732;
                  v262 = &v745[v58];
                  v263 = v717;
                  if (v262 < v735)
                  {
                    v263 = 0;
                  }

                  v264 = &v747[v732 + v263];
                  v265 = -(v58 * v709);
                  if (v262 < v735)
                  {
                    v265 = 0;
                  }

                  v65 += 2 * v265 + 2 * v58;
                  v745 = &v262[v265];
                  v747 += v732 + v263;
                  v779 = v745;
                  v783 = v264;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                --v785[0];
              }

              while (v785[0]);
              goto LABEL_1051;
            case 5:
              v409 = v21;
              v38 = v38;
              v763 = -(v58 * v709);
              v741 = -(v51 * v709);
              v410 = 2 * v704;
              v411 = -v711;
              do
              {
                v412 = v795[0];
                do
                {
                  v413 = v65;
                  v414 = v38;
                  v415 = v410;
                  v416 = v411;
                  v417 = PDAMplusDAM(*v779, *v783, *__ba, *v778, *__ba, *v783 ^ 0xFFu);
                  v411 = v416;
                  v410 = v415;
                  v38 = v414;
                  v65 = v413;
                  *v778 = v417;
                  *__ba = BYTE3(v417);
                  v418 = &__ba[v409];
                  v419 = &v779[v704];
                  if (v419 >= v413)
                  {
                    v420 = v416;
                  }

                  else
                  {
                    v420 = 0;
                  }

                  v779 = &v419[v420];
                  v783 += v414 + v420;
                  __ba += v409;
                  v778 += v415;
                  --v412;
                }

                while (v412);
                if (v735)
                {
                  v58 = v733;
                  v421 = &v745[v733];
                  v422 = v741;
                  if (v421 < v735)
                  {
                    v422 = 0;
                  }

                  v423 = &v747[v732 + v422];
                  v424 = v763;
                  if (v421 < v735)
                  {
                    v424 = 0;
                  }

                  v65 = v413 + 2 * v424 + 2 * v733;
                  v745 = &v421[v424];
                  v747 += v732 + v422;
                  v779 = v745;
                  v783 = v423;
                }

                else
                {
                  v58 = v733;
                  v779 += v733;
                  v783 += v732;
                }

                __ba = &v418[v731];
                v778 += 2 * v734;
                --v785[0];
              }

              while (v785[0]);
              goto LABEL_826;
            case 6:
              v451 = v21;
              v452 = v38;
              v725 = -(v51 * v709);
              while (1)
              {
                v453 = v795[0];
                v766 = v65;
                do
                {
                  v454 = *__ba;
                  if (v454 > 7)
                  {
                    if (v454 > 0xF7)
                    {
                      goto LABEL_776;
                    }

                    if (v38)
                    {
                      v456 = *v783;
                    }

                    else
                    {
                      v456 = -1;
                    }

                    v457 = PDAplusDAM(*v778, v454, *v779, v456, ~v454);
                    *v778 = v457;
                    v455 = HIBYTE(v457);
                    v65 = v766;
                    LODWORD(v38) = v774;
                  }

                  else
                  {
                    *v778 = *v779;
                    if (v38)
                    {
                      LOBYTE(v455) = *v783;
                    }

                    else
                    {
                      LOBYTE(v455) = -1;
                    }
                  }

                  *__ba = v455;
LABEL_776:
                  __ba += v451;
                  v458 = &v779[v704];
                  if (v458 >= v65)
                  {
                    v459 = -v711;
                  }

                  else
                  {
                    v459 = 0;
                  }

                  v779 = &v458[v459];
                  v783 += v452 + v459;
                  v778 += 2 * v704;
                  --v453;
                }

                while (v453);
                if (v735)
                {
                  v51 = v732;
                  v460 = &v745[v58];
                  v461 = v725;
                  if (v460 < v735)
                  {
                    v461 = 0;
                  }

                  v462 = &v747[v732 + v461];
                  v463 = -(v58 * v709);
                  if (v460 < v735)
                  {
                    v463 = 0;
                  }

                  v65 += 2 * v463 + 2 * v58;
                  v745 = &v460[v463];
                  v747 += v732 + v461;
                  v779 = v745;
                  v783 = v462;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 7:
              v365 = v704;
              v695 = -(v51 * v709);
              if (v21)
              {
                v366 = v21;
                v367 = v38;
                v368 = -v711;
                while (1)
                {
                  v369 = v795[0];
                  do
                  {
                    v370 = *v783;
                    if (v370 > 7)
                    {
                      if (v370 > 0xF7)
                      {
                        goto LABEL_636;
                      }

                      v372 = v65;
                      v373 = PDAM(*v778, *__ba, v370);
                      v368 = -v711;
                      v365 = v704;
                      v65 = v372;
                      *v778 = v373;
                      v371 = HIBYTE(v373);
                    }

                    else
                    {
                      LOBYTE(v371) = 0;
                      *v778 = 0;
                    }

                    *__ba = v371;
LABEL_636:
                    __ba += v366;
                    v374 = &v779[v365];
                    if (v374 >= v65)
                    {
                      v375 = v368;
                    }

                    else
                    {
                      v375 = 0;
                    }

                    v779 = &v374[v375];
                    v783 += v367 + v375;
                    v778 += 2 * v704;
                    --v369;
                  }

                  while (v369);
                  if (v735)
                  {
                    v51 = v732;
                    v376 = &v745[v58];
                    v377 = v695;
                    if (v376 < v735)
                    {
                      v377 = 0;
                    }

                    v378 = &v747[v732 + v377];
                    v379 = -(v58 * v709);
                    if (v376 < v735)
                    {
                      v379 = 0;
                    }

                    v65 += 2 * v379 + 2 * v58;
                    v745 = &v376[v379];
                    v747 += v732 + v377;
                    v779 = v745;
                    v783 = v378;
                  }

                  else
                  {
                    v51 = v732;
                    v779 += v58;
                    v783 += v732;
                  }

                  __ba += v731;
                  v778 += 2 * v734;
                  if (!--v785[0])
                  {
                    goto LABEL_1051;
                  }
                }
              }

              v643 = v38;
              v644 = v785[0];
              v690 = (v785[0] - 1) + 1;
LABEL_1086:
              v743 = v644;
              v645 = v712;
              while (1)
              {
                v646 = *v783;
                if (v646 < 8)
                {
                  break;
                }

                if (v646 <= 0xF7)
                {
                  v648 = v65;
                  v647 = PDM(*v778, v646);
                  v365 = v704;
                  v65 = v648;
                  goto LABEL_1091;
                }

LABEL_1092:
                v649 = &v779[v365];
                if (v649 >= v65)
                {
                  v650 = -v711;
                }

                else
                {
                  v650 = 0;
                }

                v779 = &v649[v650];
                v783 += v643 + v650;
                v778 += 2 * v704;
                if (!--v645)
                {
                  if (v735)
                  {
                    v51 = v732;
                    v651 = &v745[v58];
                    v652 = v695;
                    if (v651 < v735)
                    {
                      v652 = 0;
                    }

                    v653 = &v747[v732 + v652];
                    v654 = -(v58 * v709);
                    if (v651 < v735)
                    {
                      v654 = 0;
                    }

                    v65 += 2 * v654 + 2 * v58;
                    v745 = &v651[v654];
                    v747 += v732 + v652;
                    v779 = v745;
                    v783 = v653;
                  }

                  else
                  {
                    v51 = v732;
                    v779 += v58;
                    v783 += v732;
                  }

                  v778 += 2 * v734;
                  v644 = v743 - 1;
                  v785[0] = v743 - 1;
                  if (v743 == 1)
                  {
LABEL_1104:
                    v752 = v65;
                    __ba += v731 * v690;
                    goto LABEL_1052;
                  }

                  goto LABEL_1086;
                }
              }

              v647 = 0;
LABEL_1091:
              *v778 = v647;
              goto LABEL_1092;
            case 8:
              v491 = v58;
              v492 = v704;
              v696 = -(v51 * v709);
              v698 = -(v491 * v709);
              if (!v21)
              {
                v655 = v38;
                v656 = v785[0];
                v691 = (v785[0] - 1) + 1;
                while (1)
                {
                  v744 = v656;
                  v657 = v712;
                  do
                  {
                    v658 = *v783;
                    if (v658 <= 0xF7)
                    {
                      if (v658 < 8)
                      {
                        goto LABEL_1112;
                      }

                      v660 = v65;
                      v659 = PDM(*v778, ~v658);
                      v65 = v660;
                    }

                    else
                    {
                      v659 = 0;
                    }

                    *v778 = v659;
LABEL_1112:
                    v661 = &v779[v704];
                    if (v661 >= v65)
                    {
                      v662 = -v711;
                    }

                    else
                    {
                      v662 = 0;
                    }

                    v779 = &v661[v662];
                    v783 += v655 + v662;
                    v778 += 2 * v704;
                    --v657;
                  }

                  while (v657);
                  if (v735)
                  {
                    v663 = &v745[v733];
                    v664 = -(v51 * v709);
                    if (v663 < v735)
                    {
                      v664 = 0;
                    }

                    v665 = &v747[v51 + v664];
                    v666 = v698;
                    if (v663 < v735)
                    {
                      v666 = 0;
                    }

                    v65 += 2 * v666 + 2 * v733;
                    v745 = &v663[v666];
                    v747 += v51 + v664;
                    v779 = v745;
                    v783 = v665;
                  }

                  else
                  {
                    v779 += v733;
                    v783 += v51;
                  }

                  v778 += 2 * v734;
                  v656 = v744 - 1;
                  v785[0] = v744 - 1;
                  if (v744 == 1)
                  {
                    v752 = v65;
                    __ba += v731 * v691;
                    v7 = v705;
                    goto LABEL_1125;
                  }
                }
              }

              v493 = v21;
              v494 = v38;
              do
              {
                v495 = v795[0];
                do
                {
                  v496 = *v783;
                  if (v496 < 0xF8)
                  {
                    if (v496 < 8)
                    {
                      goto LABEL_835;
                    }

                    v498 = v65;
                    v499 = PDAM(*v778, *__ba, ~v496);
                    v65 = v498;
                    v492 = v704;
                    *v778 = v499;
                    v497 = HIBYTE(v499);
                  }

                  else
                  {
                    LOBYTE(v497) = 0;
                    *v778 = 0;
                  }

                  *__ba = v497;
LABEL_835:
                  __ba += v493;
                  v500 = &v779[v492];
                  if (v500 >= v65)
                  {
                    v501 = -v711;
                  }

                  else
                  {
                    v501 = 0;
                  }

                  v779 = &v500[v501];
                  v783 += v494 + v501;
                  v778 += 2 * v704;
                  --v495;
                }

                while (v495);
                if (v735)
                {
                  v51 = v732;
                  v502 = &v745[v733];
                  v503 = v696;
                  if (v502 < v735)
                  {
                    v503 = 0;
                  }

                  v504 = &v747[v732 + v503];
                  v505 = v698;
                  if (v502 < v735)
                  {
                    v505 = 0;
                  }

                  v65 += 2 * v505 + 2 * v733;
                  v745 = &v502[v505];
                  v747 += v732 + v503;
                  v779 = v745;
                  v783 = v504;
                }

                else
                {
                  v51 = v732;
                  v779 += v733;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                --v785[0];
              }

              while (v785[0]);
LABEL_1051:
              v752 = v65;
LABEL_1052:
              v7 = v705;
              v5 = v706;
              v9 = v703;
              v20 = v707;
LABEL_1053:
              v58 = v733;
LABEL_1054:
              v67 = v708;
              if (!v708)
              {
                return 1;
              }

LABEL_1055:
              v784 = 0;
LABEL_1056:
              if (!shape_enum_clip_next(v67, &v784 + 1, &v784, v795, v785))
              {
                v59 = v67;
                goto LABEL_1083;
              }

              v708 = v67;
              if (v735)
              {
                v778 = (v700 + 2 * v20 * v784 + 2 * SHIDWORD(v784));
                v17 = v710;
                v68 = (v784 + *(v9 + 60)) % v709;
                v64 = v795[0];
                v69 = (HIDWORD(v784) + *(v9 + 56)) % v711;
                v633 = &v710[v58 * v68];
                v634 = &v633[v69];
                v65 = &v633[v711];
                v21 = v750;
                v635 = __ba;
                if (v750)
                {
                  v635 = &v702[v701 * v784 + SHIDWORD(v784)];
                }

                __ba = v635;
                v636 = v731;
                if (v750)
                {
                  v636 = v701 - v795[0];
                }

                v731 = v636;
                if (v774)
                {
                  LODWORD(v38) = v774;
                }

                else
                {
                  LODWORD(v38) = 0;
                }

                v637 = v747;
                if (v774)
                {
                  v637 = &v5[v51 * v68 + v69];
                }

                v745 = v634;
                v747 = v637;
                v638 = v783;
                if (v774)
                {
                  v638 = &v5[v51 * v68 + v69];
                }

                v779 = v634;
                v783 = v638;
                v712 = v795[0];
LABEL_357:
                v687 = v69;
                v688 = v68;
              }

              else
              {
                v639 = SHIDWORD(v784) * v704;
                v712 = v795[0];
                v778 = (v700 + 2 * v20 * v784 + 2 * v639);
                v64 = v795[0] * v704;
                v17 = v710;
                v779 = &v710[v784 * v711 + v639];
                v58 = v711 - v795[0] * v704;
                v21 = v750;
                v640 = __ba;
                if (v750)
                {
                  v640 = &v702[v701 * v784 + SHIDWORD(v784) * v704];
                }

                __ba = v640;
                v641 = v731;
                if (v750)
                {
                  v641 = v701 - v795[0] * v704;
                }

                v731 = v641;
                if (v774)
                {
                  LODWORD(v38) = v774;
                }

                else
                {
                  LODWORD(v38) = 0;
                }

                v735 = 0;
                v642 = v783;
                if (v774)
                {
                  v642 = &v5[v784 * v709 + v639];
                }

                v783 = v642;
                if (v774)
                {
                  v51 = v709 - v64;
                }

                v65 = v752;
              }

              continue;
            case 9:
              v278 = v21;
              v38 = v38;
              v757 = -(v58 * v709);
              v739 = -(v51 * v709);
              v279 = 2 * v704;
              v280 = -v711;
              do
              {
                v281 = v795[0];
                do
                {
                  v282 = v65;
                  v283 = v38;
                  v284 = v279;
                  v285 = v280;
                  v286 = PDAMplusDAM(*v779, *v783, *__ba ^ 0xFFu, *v778, *__ba, *v783);
                  v280 = v285;
                  v279 = v284;
                  v38 = v283;
                  v65 = v282;
                  *v778 = v286;
                  *__ba = BYTE3(v286);
                  v287 = &__ba[v278];
                  v288 = &v779[v704];
                  if (v288 >= v282)
                  {
                    v289 = v285;
                  }

                  else
                  {
                    v289 = 0;
                  }

                  v779 = &v288[v289];
                  v783 += v283 + v289;
                  __ba += v278;
                  v778 += v284;
                  --v281;
                }

                while (v281);
                if (v735)
                {
                  v58 = v733;
                  v290 = &v745[v733];
                  v291 = v739;
                  if (v290 < v735)
                  {
                    v291 = 0;
                  }

                  v292 = &v747[v732 + v291];
                  v293 = v757;
                  if (v290 < v735)
                  {
                    v293 = 0;
                  }

                  v65 = v282 + 2 * v293 + 2 * v733;
                  v745 = &v290[v293];
                  v747 += v732 + v291;
                  v779 = v745;
                  v783 = v292;
                }

                else
                {
                  v58 = v733;
                  v779 += v733;
                  v783 += v732;
                }

                __ba = &v287[v731];
                v778 += 2 * v734;
                --v785[0];
              }

              while (v785[0]);
              goto LABEL_826;
            case 10:
              v477 = v21;
              v38 = v38;
              v768 = -(v58 * v709);
              v742 = -(v51 * v709);
              v478 = 2 * v704;
              do
              {
                v479 = v795[0];
                do
                {
                  v480 = v65;
                  v481 = v38;
                  v482 = v478;
                  v483 = PDAMplusDAM(*v779, *v783, *__ba ^ 0xFFu, *v778, *__ba, *v783 ^ 0xFFu);
                  v478 = v482;
                  v38 = v481;
                  v65 = v480;
                  *v778 = v483;
                  *__ba = BYTE3(v483);
                  v484 = &__ba[v477];
                  v485 = &v779[v704];
                  if (v485 >= v480)
                  {
                    v486 = -v711;
                  }

                  else
                  {
                    v486 = 0;
                  }

                  v779 = &v485[v486];
                  v783 += v481 + v486;
                  __ba += v477;
                  v778 += v482;
                  --v479;
                }

                while (v479);
                if (v735)
                {
                  v58 = v733;
                  v487 = &v745[v733];
                  v488 = v742;
                  if (v487 < v735)
                  {
                    v488 = 0;
                  }

                  v489 = &v747[v732 + v488];
                  v490 = v768;
                  if (v487 < v735)
                  {
                    v490 = 0;
                  }

                  v65 = v480 + 2 * v490 + 2 * v733;
                  v745 = &v487[v490];
                  v747 += v732 + v488;
                  v779 = v745;
                  v783 = v489;
                }

                else
                {
                  v58 = v733;
                  v779 += v733;
                  v783 += v732;
                }

                __ba = &v484[v731];
                v778 += 2 * v734;
                --v785[0];
              }

              while (v785[0]);
LABEL_826:
              v752 = v65;
              v7 = v705;
              v9 = v703;
              v20 = v707;
              v51 = v732;
              goto LABEL_1054;
            case 11:
              v692 = -(v51 * v709);
              v737 = 2 * v704;
              if (v21)
              {
                v240 = v21;
                v241 = v38;
                do
                {
                  v242 = v795[0];
                  v243 = v65;
                  do
                  {
                    if (v38)
                    {
                      v244 = *v783;
                    }

                    else
                    {
                      v244 = 255;
                    }

                    v245 = PDAplusdDA(*v778, *__ba, *v779, v244);
                    *v778 = v245;
                    *__ba = BYTE3(v245);
                    v246 = &__ba[v240];
                    LODWORD(v38) = v774;
                    v247 = &v779[v704];
                    if (v247 >= v243)
                    {
                      v248 = -v711;
                    }

                    else
                    {
                      v248 = 0;
                    }

                    v779 = &v247[v248];
                    v783 += v241 + v248;
                    __ba += v240;
                    v778 += v737;
                    --v242;
                  }

                  while (v242);
                  v65 = v243;
                  if (v735)
                  {
                    v51 = v732;
                    v249 = &v745[v58];
                    v250 = v692;
                    if (v249 < v735)
                    {
                      v250 = 0;
                    }

                    v251 = &v747[v732 + v250];
                    v252 = -(v58 * v709);
                    if (v249 < v735)
                    {
                      v252 = 0;
                    }

                    v65 = v243 + 2 * v252 + 2 * v58;
                    v745 = &v249[v252];
                    v747 += v732 + v250;
                    v779 = v745;
                    v783 = v251;
                  }

                  else
                  {
                    v51 = v732;
                    v779 += v58;
                    v783 += v732;
                  }

                  __ba = &v246[v731];
                  v778 += 2 * v734;
                  --v785[0];
                }

                while (v785[0]);
                goto LABEL_1051;
              }

              v587 = v38;
              v588 = v785[0];
              v589 = (v785[0] - 1) + 1;
              do
              {
                v590 = v712;
                v591 = v65;
                do
                {
                  if (v38)
                  {
                    v592 = *v783;
                  }

                  else
                  {
                    v592 = 255;
                  }

                  *v778 = PDplusdDA(*v778, *v779, v592);
                  LODWORD(v38) = v774;
                  v593 = &v779[v704];
                  if (v593 >= v591)
                  {
                    v594 = -v711;
                  }

                  else
                  {
                    v594 = 0;
                  }

                  v779 = &v593[v594];
                  v783 += v587 + v594;
                  v778 += v737;
                  --v590;
                }

                while (v590);
                v65 = v591;
                if (v735)
                {
                  v595 = &v745[v58];
                  v596 = v692;
                  if (v595 < v735)
                  {
                    v596 = 0;
                  }

                  v597 = &v747[v732 + v596];
                  v598 = -(v58 * v709);
                  if (v595 < v735)
                  {
                    v598 = 0;
                  }

                  v65 = v591 + 2 * v598 + 2 * v58;
                  v745 = &v595[v598];
                  v747 += v732 + v596;
                  v779 = v745;
                  v783 = v597;
                }

                else
                {
                  v779 += v58;
                  v783 += v732;
                }

                v7 = v705;
                v778 += 2 * v734;
                v785[0] = --v588;
              }

              while (v588);
              v752 = v65;
              __ba += v731 * v589;
LABEL_1125:
              v9 = v703;
              v5 = v706;
LABEL_1126:
              v20 = v707;
              v51 = v732;
              goto LABEL_1053;
            case 12:
              if (!v21)
              {
                v599 = v785[0];
                v600 = (v785[0] - 1) + 1;
                do
                {
                  v601 = v712;
                  do
                  {
                    v602 = ((*v779 | (*v779 << 15)) & 0x1F07C1F) + ((*v778 | (*v778 << 15)) & 0x1F07C1F);
                    *v778 = (((15 * ((v602 >> 5) & 0x100401)) | v602 | (30 * ((v602 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v602 >> 5) & 0x401)) | v602 | (30 * ((v602 >> 5) & 0x401))) & 0x7C1F;
                    v603 = &v779[v704];
                    if (v603 >= v65)
                    {
                      v604 = -v711;
                    }

                    else
                    {
                      v604 = 0;
                    }

                    v779 = &v603[v604];
                    v783 += v38 + v604;
                    v778 += 2 * v704;
                    --v601;
                  }

                  while (v601);
                  if (v735)
                  {
                    v605 = &v745[v58];
                    if (v605 >= v735)
                    {
                      v606 = -(v51 * v709);
                    }

                    else
                    {
                      v606 = 0;
                    }

                    v607 = &v747[v51 + v606];
                    if (v605 >= v735)
                    {
                      v608 = -(v58 * v709);
                    }

                    else
                    {
                      v608 = 0;
                    }

                    v65 += 2 * v608 + 2 * v58;
                    v745 = &v605[v608];
                    v747 += v51 + v606;
                    v779 = v745;
                    v783 = v607;
                  }

                  else
                  {
                    v779 += v58;
                    v783 += v51;
                  }

                  v778 += 2 * v734;
                  --v599;
                }

                while (v599);
                v752 = v65;
                v609 = &__ba[v731 * v600];
                goto LABEL_1144;
              }

              v738 = v21;
              v266 = v38;
              v697 = -(v51 * v709);
              do
              {
                v267 = v795[0];
                v268 = v65;
                do
                {
                  if (v38)
                  {
                    v269 = *v783;
                  }

                  else
                  {
                    v269 = 255;
                  }

                  v270 = PDApluslDA(*v778, *__ba, *v779, v269);
                  *v778 = v270;
                  *__ba = BYTE3(v270);
                  v271 = &__ba[v738];
                  LODWORD(v38) = v774;
                  v272 = &v779[v704];
                  if (v272 >= v268)
                  {
                    v273 = -v711;
                  }

                  else
                  {
                    v273 = 0;
                  }

                  v779 = &v272[v273];
                  v783 += v266 + v273;
                  __ba += v738;
                  v778 += 2 * v704;
                  --v267;
                }

                while (v267);
                v65 = v268;
                if (v735)
                {
                  v51 = v732;
                  v274 = &v745[v58];
                  v275 = v697;
                  if (v274 < v735)
                  {
                    v275 = 0;
                  }

                  v276 = &v747[v732 + v275];
                  v277 = -(v58 * v709);
                  if (v274 < v735)
                  {
                    v277 = 0;
                  }

                  v65 = v268 + 2 * v277 + 2 * v58;
                  v745 = &v274[v277];
                  v747 += v732 + v275;
                  v779 = v745;
                  v783 = v276;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba = &v271[v731];
                v778 += 2 * v734;
                --v785[0];
              }

              while (v785[0]);
              goto LABEL_1051;
            case 13:
              v438 = v21;
              v439 = v38;
              v724 = -(v51 * v709);
              while (1)
              {
                v440 = v795[0];
                v765 = v65;
                do
                {
                  if (v38)
                  {
                    v441 = *v783;
                    if (v441 < 8)
                    {
                      goto LABEL_751;
                    }

                    if (v21)
                    {
                      goto LABEL_746;
                    }
                  }

                  else
                  {
                    v441 = 255;
                    if (v21)
                    {
LABEL_746:
                      v442 = *__ba;
                      if (v442 > 7)
                      {
                        v444 = PDAmultiplyPDA(*v778, v442, *v779, v441);
                        v65 = v765;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v444;
                        *__ba = HIBYTE(v444);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v441;
                      }

                      goto LABEL_751;
                    }
                  }

                  v443 = PDAmultiplyPDA(*v778, 0xFFu, *v779, v441);
                  v65 = v765;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v443;
LABEL_751:
                  __ba += v438;
                  v445 = &v779[v704];
                  if (v445 >= v65)
                  {
                    v446 = -v711;
                  }

                  else
                  {
                    v446 = 0;
                  }

                  v779 = &v445[v446];
                  v783 += v439 + v446;
                  v778 += 2 * v704;
                  --v440;
                }

                while (v440);
                if (v735)
                {
                  v51 = v732;
                  v447 = &v745[v58];
                  v448 = v724;
                  if (v447 < v735)
                  {
                    v448 = 0;
                  }

                  v449 = &v747[v732 + v448];
                  v450 = -(v58 * v709);
                  if (v447 < v735)
                  {
                    v450 = 0;
                  }

                  v65 += 2 * v450 + 2 * v58;
                  v745 = &v447[v450];
                  v747 += v732 + v448;
                  v779 = v745;
                  v783 = v449;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 14:
              v227 = v21;
              v228 = v38;
              v716 = -(v51 * v709);
              while (1)
              {
                v229 = v795[0];
                v755 = v65;
                do
                {
                  if (v38)
                  {
                    v230 = *v783;
                    if (v230 < 8)
                    {
                      goto LABEL_426;
                    }

                    if (v21)
                    {
                      goto LABEL_421;
                    }
                  }

                  else
                  {
                    v230 = 255;
                    if (v21)
                    {
LABEL_421:
                      v231 = *__ba;
                      if (v231 > 7)
                      {
                        v233 = PDAscreenPDA(*v778, v231, *v779, v230);
                        v65 = v755;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v233;
                        *__ba = HIBYTE(v233);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v230;
                      }

                      goto LABEL_426;
                    }
                  }

                  v232 = PDAscreenPDA(*v778, 0xFFu, *v779, v230);
                  v65 = v755;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v232;
LABEL_426:
                  __ba += v227;
                  v234 = &v779[v704];
                  if (v234 >= v65)
                  {
                    v235 = -v711;
                  }

                  else
                  {
                    v235 = 0;
                  }

                  v779 = &v234[v235];
                  v783 += v228 + v235;
                  v778 += 2 * v704;
                  --v229;
                }

                while (v229);
                if (v735)
                {
                  v51 = v732;
                  v236 = &v745[v58];
                  v237 = v716;
                  if (v236 < v735)
                  {
                    v237 = 0;
                  }

                  v238 = &v747[v732 + v237];
                  v239 = -(v58 * v709);
                  if (v236 < v735)
                  {
                    v239 = 0;
                  }

                  v65 += 2 * v239 + 2 * v58;
                  v745 = &v236[v239];
                  v747 += v732 + v237;
                  v779 = v745;
                  v783 = v238;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 15:
              v335 = v21;
              v336 = v38;
              v720 = -(v51 * v709);
              while (1)
              {
                v337 = v795[0];
                v760 = v65;
                do
                {
                  if (v38)
                  {
                    v338 = *v783;
                    if (v338 < 8)
                    {
                      goto LABEL_594;
                    }

                    if (v21)
                    {
                      goto LABEL_589;
                    }
                  }

                  else
                  {
                    v338 = 255;
                    if (v21)
                    {
LABEL_589:
                      v339 = *__ba;
                      if (v339 > 7)
                      {
                        v341 = PDAoverlayPDA(*v778, v339, *v779, v338);
                        v65 = v760;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v341;
                        *__ba = HIBYTE(v341);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v338;
                      }

                      goto LABEL_594;
                    }
                  }

                  v340 = PDAoverlayPDA(*v778, 0xFFu, *v779, v338);
                  v65 = v760;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v340;
LABEL_594:
                  __ba += v335;
                  v342 = &v779[v704];
                  if (v342 >= v65)
                  {
                    v343 = -v711;
                  }

                  else
                  {
                    v343 = 0;
                  }

                  v779 = &v342[v343];
                  v783 += v336 + v343;
                  v778 += 2 * v704;
                  --v337;
                }

                while (v337);
                if (v735)
                {
                  v51 = v732;
                  v344 = &v745[v58];
                  v345 = v720;
                  if (v344 < v735)
                  {
                    v345 = 0;
                  }

                  v346 = &v747[v732 + v345];
                  v347 = -(v58 * v709);
                  if (v344 < v735)
                  {
                    v347 = 0;
                  }

                  v65 += 2 * v347 + 2 * v58;
                  v745 = &v344[v347];
                  v747 += v732 + v345;
                  v779 = v745;
                  v783 = v346;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 16:
              v214 = v21;
              v215 = v38;
              v715 = -(v51 * v709);
              while (1)
              {
                v216 = v795[0];
                v754 = v65;
                do
                {
                  if (v38)
                  {
                    v217 = *v783;
                    if (v217 < 8)
                    {
                      goto LABEL_403;
                    }

                    if (v21)
                    {
                      goto LABEL_398;
                    }
                  }

                  else
                  {
                    v217 = 255;
                    if (v21)
                    {
LABEL_398:
                      v218 = *__ba;
                      if (v218 > 7)
                      {
                        v220 = PDAdarkenPDA(*v778, v218, *v779, v217);
                        v65 = v754;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v220;
                        *__ba = HIBYTE(v220);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v217;
                      }

                      goto LABEL_403;
                    }
                  }

                  v219 = PDAdarkenPDA(*v778, 0xFFu, *v779, v217);
                  v65 = v754;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v219;
LABEL_403:
                  __ba += v214;
                  v221 = &v779[v704];
                  if (v221 >= v65)
                  {
                    v222 = -v711;
                  }

                  else
                  {
                    v222 = 0;
                  }

                  v779 = &v221[v222];
                  v783 += v215 + v222;
                  v778 += 2 * v704;
                  --v216;
                }

                while (v216);
                if (v735)
                {
                  v51 = v732;
                  v223 = &v745[v58];
                  v224 = v715;
                  if (v223 < v735)
                  {
                    v224 = 0;
                  }

                  v225 = &v747[v732 + v224];
                  v226 = -(v58 * v709);
                  if (v223 < v735)
                  {
                    v226 = 0;
                  }

                  v65 += 2 * v226 + 2 * v58;
                  v745 = &v223[v226];
                  v747 += v732 + v224;
                  v779 = v745;
                  v783 = v225;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 17:
              v383 = v21;
              v384 = v38;
              v721 = -(v51 * v709);
              while (1)
              {
                v385 = v795[0];
                v761 = v65;
                do
                {
                  if (v38)
                  {
                    v386 = *v783;
                    if (v386 < 8)
                    {
                      goto LABEL_667;
                    }

                    if (v21)
                    {
                      goto LABEL_662;
                    }
                  }

                  else
                  {
                    v386 = 255;
                    if (v21)
                    {
LABEL_662:
                      v387 = *__ba;
                      if (v387 > 7)
                      {
                        v389 = PDAlightenPDA(*v778, v387, *v779, v386);
                        v65 = v761;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v389;
                        *__ba = HIBYTE(v389);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v386;
                      }

                      goto LABEL_667;
                    }
                  }

                  v388 = PDAlightenPDA(*v778, 0xFFu, *v779, v386);
                  v65 = v761;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v388;
LABEL_667:
                  __ba += v383;
                  v390 = &v779[v704];
                  if (v390 >= v65)
                  {
                    v391 = -v711;
                  }

                  else
                  {
                    v391 = 0;
                  }

                  v779 = &v390[v391];
                  v783 += v384 + v391;
                  v778 += 2 * v704;
                  --v385;
                }

                while (v385);
                if (v735)
                {
                  v51 = v732;
                  v392 = &v745[v58];
                  v393 = v721;
                  if (v392 < v735)
                  {
                    v393 = 0;
                  }

                  v394 = &v747[v732 + v393];
                  v395 = -(v58 * v709);
                  if (v392 < v735)
                  {
                    v395 = 0;
                  }

                  v65 += 2 * v395 + 2 * v58;
                  v745 = &v392[v395];
                  v747 += v732 + v393;
                  v779 = v745;
                  v783 = v394;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 18:
              v464 = v21;
              v465 = v38;
              v726 = -(v51 * v709);
              while (1)
              {
                v466 = v795[0];
                v767 = v65;
                do
                {
                  if (v38)
                  {
                    v467 = *v783;
                    if (v467 < 8)
                    {
                      goto LABEL_799;
                    }

                    if (v21)
                    {
                      goto LABEL_794;
                    }
                  }

                  else
                  {
                    v467 = 255;
                    if (v21)
                    {
LABEL_794:
                      v468 = *__ba;
                      if (v468 > 7)
                      {
                        v470 = PDAcolordodgePDA(*v778, v468, *v779, v467);
                        v65 = v767;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v470;
                        *__ba = HIBYTE(v470);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v467;
                      }

                      goto LABEL_799;
                    }
                  }

                  v469 = PDAcolordodgePDA(*v778, 0xFFu, *v779, v467);
                  v65 = v767;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v469;
LABEL_799:
                  __ba += v464;
                  v471 = &v779[v704];
                  if (v471 >= v65)
                  {
                    v472 = -v711;
                  }

                  else
                  {
                    v472 = 0;
                  }

                  v779 = &v471[v472];
                  v783 += v465 + v472;
                  v778 += 2 * v704;
                  --v466;
                }

                while (v466);
                if (v735)
                {
                  v51 = v732;
                  v473 = &v745[v58];
                  v474 = v726;
                  if (v473 < v735)
                  {
                    v474 = 0;
                  }

                  v475 = &v747[v732 + v474];
                  v476 = -(v58 * v709);
                  if (v473 < v735)
                  {
                    v476 = 0;
                  }

                  v65 += 2 * v476 + 2 * v58;
                  v745 = &v473[v476];
                  v747 += v732 + v474;
                  v779 = v745;
                  v783 = v475;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 19:
              v519 = v21;
              v520 = v38;
              v728 = -(v51 * v709);
              while (1)
              {
                v521 = v795[0];
                v770 = v65;
                do
                {
                  if (v38)
                  {
                    v522 = *v783;
                    if (v522 < 8)
                    {
                      goto LABEL_881;
                    }

                    if (v21)
                    {
                      goto LABEL_876;
                    }
                  }

                  else
                  {
                    v522 = 255;
                    if (v21)
                    {
LABEL_876:
                      v523 = *__ba;
                      if (v523 > 7)
                      {
                        v525 = PDAcolorburnPDA(*v778, v523, *v779, v522);
                        v65 = v770;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v525;
                        *__ba = HIBYTE(v525);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v522;
                      }

                      goto LABEL_881;
                    }
                  }

                  v524 = PDAcolorburnPDA(*v778, 0xFFu, *v779, v522);
                  v65 = v770;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v524;
LABEL_881:
                  __ba += v519;
                  v526 = &v779[v704];
                  if (v526 >= v65)
                  {
                    v527 = -v711;
                  }

                  else
                  {
                    v527 = 0;
                  }

                  v779 = &v526[v527];
                  v783 += v520 + v527;
                  v778 += 2 * v704;
                  --v521;
                }

                while (v521);
                if (v735)
                {
                  v51 = v732;
                  v528 = &v745[v58];
                  v529 = v728;
                  if (v528 < v735)
                  {
                    v529 = 0;
                  }

                  v530 = &v747[v732 + v529];
                  v531 = -(v58 * v709);
                  if (v528 < v735)
                  {
                    v531 = 0;
                  }

                  v65 += 2 * v531 + 2 * v58;
                  v745 = &v528[v531];
                  v747 += v732 + v529;
                  v779 = v745;
                  v783 = v530;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 20:
              v396 = v21;
              v397 = v38;
              v722 = -(v51 * v709);
              while (1)
              {
                v398 = v795[0];
                v762 = v65;
                do
                {
                  if (v38)
                  {
                    v399 = *v783;
                    if (v399 < 8)
                    {
                      goto LABEL_690;
                    }

                    if (v21)
                    {
                      goto LABEL_685;
                    }
                  }

                  else
                  {
                    v399 = 255;
                    if (v21)
                    {
LABEL_685:
                      v400 = *__ba;
                      if (v400 > 7)
                      {
                        v402 = PDAsoftlightPDA(*v778, v400, *v779, v399);
                        v65 = v762;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v402;
                        *__ba = HIBYTE(v402);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v399;
                      }

                      goto LABEL_690;
                    }
                  }

                  v401 = PDAsoftlightPDA(*v778, 0xFFu, *v779, v399);
                  v65 = v762;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v401;
LABEL_690:
                  __ba += v396;
                  v403 = &v779[v704];
                  if (v403 >= v65)
                  {
                    v404 = -v711;
                  }

                  else
                  {
                    v404 = 0;
                  }

                  v779 = &v403[v404];
                  v783 += v397 + v404;
                  v778 += 2 * v704;
                  --v398;
                }

                while (v398);
                if (v735)
                {
                  v51 = v732;
                  v405 = &v745[v58];
                  v406 = v722;
                  if (v405 < v735)
                  {
                    v406 = 0;
                  }

                  v407 = &v747[v732 + v406];
                  v408 = -(v58 * v709);
                  if (v405 < v735)
                  {
                    v408 = 0;
                  }

                  v65 += 2 * v408 + 2 * v58;
                  v745 = &v405[v408];
                  v747 += v732 + v406;
                  v779 = v745;
                  v783 = v407;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 21:
              v425 = v21;
              v426 = v38;
              v723 = -(v51 * v709);
              while (1)
              {
                v427 = v795[0];
                v764 = v65;
                do
                {
                  if (v38)
                  {
                    v428 = *v783;
                    if (v428 < 8)
                    {
                      goto LABEL_728;
                    }

                    if (v21)
                    {
                      goto LABEL_723;
                    }
                  }

                  else
                  {
                    v428 = 255;
                    if (v21)
                    {
LABEL_723:
                      v429 = *__ba;
                      if (v429 > 7)
                      {
                        v431 = PDAhardlightPDA(*v778, v429, *v779, v428);
                        v65 = v764;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v431;
                        *__ba = HIBYTE(v431);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v428;
                      }

                      goto LABEL_728;
                    }
                  }

                  v430 = PDAhardlightPDA(*v778, 0xFFu, *v779, v428);
                  v65 = v764;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v430;
LABEL_728:
                  __ba += v425;
                  v432 = &v779[v704];
                  if (v432 >= v65)
                  {
                    v433 = -v711;
                  }

                  else
                  {
                    v433 = 0;
                  }

                  v779 = &v432[v433];
                  v783 += v426 + v433;
                  v778 += 2 * v704;
                  --v427;
                }

                while (v427);
                if (v735)
                {
                  v51 = v732;
                  v434 = &v745[v58];
                  v435 = v723;
                  if (v434 < v735)
                  {
                    v435 = 0;
                  }

                  v436 = &v747[v732 + v435];
                  v437 = -(v58 * v709);
                  if (v434 < v735)
                  {
                    v437 = 0;
                  }

                  v65 += 2 * v437 + 2 * v58;
                  v745 = &v434[v437];
                  v747 += v732 + v435;
                  v779 = v745;
                  v783 = v436;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 22:
              v506 = v21;
              v507 = v38;
              v727 = -(v51 * v709);
              while (1)
              {
                v508 = v795[0];
                v769 = v65;
                do
                {
                  if (v38)
                  {
                    v509 = *v783;
                    if (v509 < 8)
                    {
                      goto LABEL_858;
                    }

                    if (v21)
                    {
                      goto LABEL_853;
                    }
                  }

                  else
                  {
                    v509 = 255;
                    if (v21)
                    {
LABEL_853:
                      v510 = *__ba;
                      if (v510 > 7)
                      {
                        v512 = PDAdifferencePDA(*v778, v510, *v779, v509);
                        v65 = v769;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v512;
                        *__ba = HIBYTE(v512);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v509;
                      }

                      goto LABEL_858;
                    }
                  }

                  v511 = PDAdifferencePDA(*v778, 0xFFu, *v779, v509);
                  v65 = v769;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v511;
LABEL_858:
                  __ba += v506;
                  v513 = &v779[v704];
                  if (v513 >= v65)
                  {
                    v514 = -v711;
                  }

                  else
                  {
                    v514 = 0;
                  }

                  v779 = &v513[v514];
                  v783 += v507 + v514;
                  v778 += 2 * v704;
                  --v508;
                }

                while (v508);
                if (v735)
                {
                  v51 = v732;
                  v515 = &v745[v58];
                  v516 = v727;
                  if (v515 < v735)
                  {
                    v516 = 0;
                  }

                  v517 = &v747[v732 + v516];
                  v518 = -(v58 * v709);
                  if (v515 < v735)
                  {
                    v518 = 0;
                  }

                  v65 += 2 * v518 + 2 * v58;
                  v745 = &v515[v518];
                  v747 += v732 + v516;
                  v779 = v745;
                  v783 = v517;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 23:
              v532 = v21;
              v533 = v38;
              v729 = -(v51 * v709);
              while (1)
              {
                v534 = v795[0];
                v771 = v65;
                do
                {
                  if (v38)
                  {
                    v535 = *v783;
                    if (v535 < 8)
                    {
                      goto LABEL_904;
                    }

                    if (v21)
                    {
                      goto LABEL_899;
                    }
                  }

                  else
                  {
                    v535 = 255;
                    if (v21)
                    {
LABEL_899:
                      v536 = *__ba;
                      if (v536 > 7)
                      {
                        v538 = PDAexclusionPDA(*v778, v536, *v779, v535);
                        v65 = v771;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v538;
                        *__ba = HIBYTE(v538);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v535;
                      }

                      goto LABEL_904;
                    }
                  }

                  v537 = PDAexclusionPDA(*v778, 0xFFu, *v779, v535);
                  v65 = v771;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v537;
LABEL_904:
                  __ba += v532;
                  v539 = &v779[v704];
                  if (v539 >= v65)
                  {
                    v540 = -v711;
                  }

                  else
                  {
                    v540 = 0;
                  }

                  v779 = &v539[v540];
                  v783 += v533 + v540;
                  v778 += 2 * v704;
                  --v534;
                }

                while (v534);
                if (v735)
                {
                  v51 = v732;
                  v541 = &v745[v58];
                  v542 = v729;
                  if (v541 < v735)
                  {
                    v542 = 0;
                  }

                  v543 = &v747[v732 + v542];
                  v544 = -(v58 * v709);
                  if (v541 < v735)
                  {
                    v544 = 0;
                  }

                  v65 += 2 * v544 + 2 * v58;
                  v745 = &v541[v544];
                  v747 += v732 + v542;
                  v779 = v745;
                  v783 = v543;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 24:
              v307 = v21;
              v308 = v38;
              v719 = -(v51 * v709);
              while (1)
              {
                v309 = v795[0];
                v759 = v65;
                do
                {
                  if (v38)
                  {
                    v310 = *v783;
                    if (v310 < 8)
                    {
                      goto LABEL_550;
                    }

                    if (v21)
                    {
                      goto LABEL_545;
                    }
                  }

                  else
                  {
                    v310 = 255;
                    if (v21)
                    {
LABEL_545:
                      v311 = *__ba;
                      if (v311 > 7)
                      {
                        v313 = PDAhuePDA(*v778, v311, *v779, v310);
                        v65 = v759;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v313;
                        *__ba = HIBYTE(v313);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v310;
                      }

                      goto LABEL_550;
                    }
                  }

                  v312 = PDAhuePDA(*v778, 0xFFu, *v779, v310);
                  v65 = v759;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v312;
LABEL_550:
                  __ba += v307;
                  v314 = &v779[v704];
                  if (v314 >= v65)
                  {
                    v315 = -v711;
                  }

                  else
                  {
                    v315 = 0;
                  }

                  v779 = &v314[v315];
                  v783 += v308 + v315;
                  v778 += 2 * v704;
                  --v309;
                }

                while (v309);
                if (v735)
                {
                  v51 = v732;
                  v316 = &v745[v58];
                  v317 = v719;
                  if (v316 < v735)
                  {
                    v317 = 0;
                  }

                  v318 = &v747[v732 + v317];
                  v319 = -(v58 * v709);
                  if (v316 < v735)
                  {
                    v319 = 0;
                  }

                  v65 += 2 * v319 + 2 * v58;
                  v745 = &v316[v319];
                  v747 += v732 + v317;
                  v779 = v745;
                  v783 = v318;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 25:
              v294 = v21;
              v295 = v38;
              v718 = -(v51 * v709);
              while (1)
              {
                v296 = v795[0];
                v758 = v65;
                do
                {
                  if (v38)
                  {
                    v297 = *v783;
                    if (v297 < 8)
                    {
                      goto LABEL_527;
                    }

                    if (v21)
                    {
                      goto LABEL_522;
                    }
                  }

                  else
                  {
                    v297 = 255;
                    if (v21)
                    {
LABEL_522:
                      v298 = *__ba;
                      if (v298 > 7)
                      {
                        v300 = PDAsaturationPDA(*v778, v298, *v779, v297);
                        v65 = v758;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v300;
                        *__ba = HIBYTE(v300);
                      }

                      else
                      {
                        *v778 = *v779;
                        *__ba = v297;
                      }

                      goto LABEL_527;
                    }
                  }

                  v299 = PDAsaturationPDA(*v778, 0xFFu, *v779, v297);
                  v65 = v758;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v299;
LABEL_527:
                  __ba += v294;
                  v301 = &v779[v704];
                  if (v301 >= v65)
                  {
                    v302 = -v711;
                  }

                  else
                  {
                    v302 = 0;
                  }

                  v779 = &v301[v302];
                  v783 += v295 + v302;
                  v778 += 2 * v704;
                  --v296;
                }

                while (v296);
                if (v735)
                {
                  v51 = v732;
                  v303 = &v745[v58];
                  v304 = v718;
                  if (v303 < v735)
                  {
                    v304 = 0;
                  }

                  v305 = &v747[v732 + v304];
                  v306 = -(v58 * v709);
                  if (v303 < v735)
                  {
                    v306 = 0;
                  }

                  v65 += 2 * v306 + 2 * v58;
                  v745 = &v303[v306];
                  v747 += v732 + v304;
                  v779 = v745;
                  v783 = v305;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 26:
              v545 = v21;
              v546 = v38;
              v730 = -(v51 * v709);
              while (1)
              {
                v547 = v795[0];
                v772 = v65;
                do
                {
                  if (v38)
                  {
                    v548 = *v783;
                    if (v548 < 8)
                    {
                      goto LABEL_927;
                    }

                    if (v21)
                    {
                      goto LABEL_922;
                    }
                  }

                  else
                  {
                    v548 = 255;
                    if (v21)
                    {
LABEL_922:
                      v549 = *__ba;
                      v550 = *v779;
                      if (v549 > 7)
                      {
                        v552 = PDAluminosityPDA(v550, v548, *v778, v549);
                        v65 = v772;
                        LODWORD(v38) = v774;
                        LODWORD(v21) = v750;
                        *v778 = v552;
                        *__ba = HIBYTE(v552);
                      }

                      else
                      {
                        *v778 = v550;
                        *__ba = v548;
                      }

                      goto LABEL_927;
                    }
                  }

                  v551 = PDAluminosityPDA(*v779, v548, *v778, 0xFFu);
                  v65 = v772;
                  LODWORD(v38) = v774;
                  LODWORD(v21) = v750;
                  *v778 = v551;
LABEL_927:
                  __ba += v545;
                  v553 = &v779[v704];
                  if (v553 >= v65)
                  {
                    v554 = -v711;
                  }

                  else
                  {
                    v554 = 0;
                  }

                  v779 = &v553[v554];
                  v783 += v546 + v554;
                  v778 += 2 * v704;
                  --v547;
                }

                while (v547);
                if (v735)
                {
                  v51 = v732;
                  v555 = &v745[v58];
                  v556 = v730;
                  if (v555 < v735)
                  {
                    v556 = 0;
                  }

                  v557 = &v747[v732 + v556];
                  v558 = -(v58 * v709);
                  if (v555 < v735)
                  {
                    v558 = 0;
                  }

                  v65 += 2 * v558 + 2 * v58;
                  v745 = &v555[v558];
                  v747 += v732 + v556;
                  v779 = v745;
                  v783 = v557;
                }

                else
                {
                  v51 = v732;
                  v779 += v58;
                  v783 += v732;
                }

                __ba += v731;
                v778 += 2 * v734;
                if (!--v785[0])
                {
                  goto LABEL_1051;
                }
              }

            case 27:
              v201 = v21;
              v202 = v38;
              v714 = -(v51 * v709);
              break;
            default:
              goto LABEL_1160;
          }

          break;
        }

LABEL_371:
        v203 = v795[0];
        v753 = v65;
        while (1)
        {
          if (v38)
          {
            v204 = *v783;
            if (v204 < 8)
            {
              goto LABEL_380;
            }

            if (!v21)
            {
              goto LABEL_378;
            }
          }

          else
          {
            v204 = 255;
            if (!v21)
            {
LABEL_378:
              v206 = PDAluminosityPDA(*v778, 0xFFu, *v779, v204);
              v65 = v753;
              LODWORD(v38) = v774;
              LODWORD(v21) = v750;
              *v778 = v206;
              goto LABEL_380;
            }
          }

          v205 = *__ba;
          if (v205 > 7)
          {
            v207 = PDAluminosityPDA(*v778, v205, *v779, v204);
            v65 = v753;
            LODWORD(v38) = v774;
            LODWORD(v21) = v750;
            *v778 = v207;
            *__ba = HIBYTE(v207);
          }

          else
          {
            *v778 = *v779;
            *__ba = v204;
          }

LABEL_380:
          __ba += v201;
          v208 = &v779[v704];
          if (v208 >= v65)
          {
            v209 = -v711;
          }

          else
          {
            v209 = 0;
          }

          v779 = &v208[v209];
          v783 += v202 + v209;
          v778 += 2 * v704;
          if (!--v203)
          {
            if (v735)
            {
              v51 = v732;
              v210 = &v745[v58];
              v211 = v714;
              if (v210 < v735)
              {
                v211 = 0;
              }

              v212 = &v747[v732 + v211];
              v213 = -(v58 * v709);
              if (v210 < v735)
              {
                v213 = 0;
              }

              v65 += 2 * v213 + 2 * v58;
              v745 = &v210[v213];
              v747 += v732 + v211;
              v779 = v745;
              v783 = v212;
            }

            else
            {
              v51 = v732;
              v779 += v58;
              v783 += v732;
            }

            __ba += v731;
            v778 += 2 * v734;
            if (!--v785[0])
            {
              goto LABEL_1051;
            }

            goto LABEL_371;
          }
        }
      }

      LODWORD(v711) = *(v2 + 64);
      v57 = *(v2 + 68);
      v58 = *(v2 + 76) >> 1;
      if (v5)
      {
        v50 = 0;
        v51 = *(v2 + 80);
        LODWORD(v38) = 1;
      }

      else
      {
        v51 = 0;
        LODWORD(v38) = 0;
        v50 = 1;
      }
    }

    LODWORD(v709) = v57;
    v735 = &v17[v58 * v57];
    v21 &= 1u;
    if (v14)
    {
      v752 = v17;
      v774 = v38;
      v750 = v21;
      v63 = 1;
      v745 = v17;
      v710 = v17;
LABEL_60:
      v704 = v63;
      shape_enum_clip_alloc(v1, v2, v14, v63, v20, 1, v33, v34, v10, v12);
      v67 = v66;
      v747 = v5;
      v783 = v5;
      __ba = v702;
      v731 = v701;
      if (!v66)
      {
        return 1;
      }

      goto LABEL_1056;
    }

    v731 = v701 - (v21 * v10);
    if (v17)
    {
      v68 = v688 % v57;
      v69 = v687 % v711;
      v70 = &v17[v58 * v68];
      v65 = &v70[v711];
      v708 = 0;
      v71 = (v50 & 1) == 0;
      v704 = 1;
      if (v50)
      {
        v72 = v5;
      }

      else
      {
        LODWORD(v38) = 1;
        v72 = &v5[v51 * v68 + v69];
      }

      v745 = &v70[v69];
      v747 = v72;
      if (v71)
      {
        v73 = &v5[v51 * v68 + v69];
      }

      else
      {
        v73 = v5;
      }

      v779 = &v70[v69];
      v783 = v73;
      __ba = v702;
      v778 = v700;
      v712 = v10;
      v64 = v10;
      goto LABEL_357;
    }

    v65 = 0;
    v704 = 1;
    v64 = v10;
    goto LABEL_71;
  }

  v15 = *(v2 + 128);
  if ((v15 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      rgb555_mark_constmask(v2, v7);
    }

    else
    {
      rgb555_mark_pixelmask(v2, v7);
    }
  }

  else
  {
    v22 = *(v2 + 112);
    v23 = *(v2 + 116);
    v24 = (v22 + 15) & 0xFFFFFFF0;
    v25 = v24 * v23;
    if (v25 <= 4096)
    {
      v27 = v795;
      v28 = v2;
    }

    else
    {
      v26 = malloc_type_malloc(v25, 0x97CEE3C3uLL);
      if (!v26)
      {
        return 1;
      }

      v27 = v26;
      v28 = v703;
      v14 = *(v703 + 136);
      v15 = *(v703 + 128);
    }

    CGSConvertBitsToMask(v14, *(v28 + 124), v27, v24, v22, v23, v15);
    v52 = *(v28 + 112);
    v791 = *(v28 + 96);
    v792 = v52;
    v53 = *(v28 + 144);
    v793 = *(v28 + 128);
    v794 = v53;
    v54 = *(v28 + 48);
    v787 = *(v28 + 32);
    v788 = v54;
    v55 = *(v28 + 80);
    v789 = *(v28 + 64);
    v790 = v55;
    v56 = *(v28 + 16);
    *v785 = *v28;
    v786 = v56;
    HIDWORD(v792) = (v22 + 15) & 0xFFFFFFF0;
    *(&v793 + 1) = v27;
    if (BYTE1(v785[0]) << 8 == 1024)
    {
      rgb555_mark_constmask(v785, v7);
    }

    else
    {
      rgb555_mark_pixelmask(v785, v7);
    }

    if (v27 != v795)
    {
      v59 = v27;
      goto LABEL_1083;
    }
  }

  return 1;
}

void rgb555_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
{
  v83[1] = *MEMORY[0x1E69E9840];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v80 = 0u;
  v79 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v8 = (*(a2 + 184) * 255.0) + 0.5;
  v70[0] = a3;
  v70[1] = a4;
  LOBYTE(v71) = v8;
  v9 = *(a1 + 28) >> 1;
  *&v72 = v9;
  if (*(a1 + 48))
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  *&v74 = 0;
  v73 = v10;
  v11 = *(a2 + 120);
  v12 = *(a2 + 20);
  v13 = HIBYTE(v12);
  v14 = BYTE2(v12);
  if (v11)
  {
    v15 = *(a2 + 24);
    v16 = (a2 + 104);
    v17 = (a2 + 72);
    v18 = (a2 + 88);
    v19 = v13;
  }

  else
  {
    v15 = *(a2 + 8) >> 25;
    v16 = (a2 + 96);
    v17 = (a2 + 64);
    v18 = (a2 + 80);
    v11 = *(a2 + 112);
    v19 = v14;
  }

  v20 = *v18;
  v21 = *v17;
  v22 = *v16;
  v23 = v19;
  *(&v75 + 1) = v19;
  *(&v74 + 1) = v22;
  *(&v79 + 1) = v15;
  *(&v78 + 1) = v20;
  *(&v77 + 1) = v21;
  *(&v76 + 1) = v11;
  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 8) >> 25;
    v26 = (a2 + 96);
    v27 = (a2 + 64);
    v28 = (a2 + 80);
    v13 = v14;
  }

  else
  {
    v25 = *(a2 + 24);
    v26 = (a2 + 104);
    v27 = (a2 + 72);
    v28 = (a2 + 88);
    v24 = *(a2 + 136);
  }

  v69 = &v65;
  v29 = *v28;
  v30 = *v27;
  v31 = *v26;
  *&v76 = v13;
  *&v75 = v31;
  *&v80 = v25;
  *&v79 = v29;
  *&v78 = v30;
  *&v77 = v24;
  v32 = *(a1 + 4);
  v33 = MEMORY[0x1EEE9AC00](16 * v32);
  v68 = &v65 - v35 - 15;
  if (v36 <= 0xFFFFFFFFFFFFFFELL)
  {
    v38 = &v65 - v35 - 15;
  }

  else
  {
    v38 = 0;
  }

  if (v36 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000402)
  {
    v66 = v34;
    v67 = a5;
    v39 = v37;
    v33 = malloc_type_malloc(v33, 0xC166A778uLL);
    v34 = v66;
    v37 = v39;
    a5 = v67;
    v38 = v33;
  }

  *(&v80 + 1) = v38;
  if (v38)
  {
    if (*(a2 + 176))
    {
      if (v32 >= 1)
      {
        v40 = (v38 + 8);
        v41 = v37 - v22;
        do
        {
          if (((v22 - v34) | v41) < 0)
          {
            v45 = 0;
          }

          else
          {
            v42 = ((v22 & ~(-1 << v23)) >> (v23 - 4)) & 0xF;
            v43 = weights_21890[v42];
            if (v42 - 7 >= 9)
            {
              v44 = -v15;
            }

            else
            {
              v44 = v15;
            }

            v45 = v43 & 0xF | (16 * v44);
          }

          *(v40 - 1) = v15 * (v22 >> v23);
          *v40 = v45;
          v40 += 2;
          v22 += v11;
          v41 -= v11;
          --v32;
        }

        while (v32);
      }
    }

    else if (v32 >= 1)
    {
      v46 = v38 + 8;
      do
      {
        *(v46 - 1) = v15 * (v22 >> v23);
        *v46 = 0;
        v46 += 2;
        v22 += v11;
        --v32;
      }

      while (v32);
    }

    v47 = v38;
    v48 = *(a1 + 4);
    v49 = *(a1 + 8);
    v81 = v49;
    v82 = v48;
    v50 = *(a1 + 136);
    if (v50)
    {
      v51 = *(a1 + 104);
      LODWORD(v83[0]) = *(a1 + 108);
      HIDWORD(v83[0]) = v51;
      shape_enum_clip_alloc(v33, v34, v50, 1, 1, 1, v51, v83[0], v48, v49);
      v53 = v52;
      if (v52)
      {
        goto LABEL_42;
      }
    }

    v54 = 0;
    v55 = 0;
    v53 = 0;
    v83[0] = 0;
    while (1)
    {
      v56 = *(a1 + 16) + v55;
      v57 = *(a1 + 48);
      v58 = *(a1 + 12) + v54;
      v59 = v57 + v10 * v56 + v58;
      if (!v57)
      {
        v59 = 0;
      }

      *(&v71 + 1) = *(a1 + 40) + 2 * v9 * v56 + 2 * v58;
      *(&v72 + 1) = v59;
      if (*(a2 + 168))
      {
        v60 = -v58 < 0;
        v61 = -v58 & 0xF;
        v62 = v58 & 0xF;
        if (!v60)
        {
          v62 = -v61;
        }

        v60 = -v56 < 0;
        v63 = -v56 & 0xF;
        v64 = v56 & 0xF;
        if (!v60)
        {
          v64 = -v63;
        }

        *(&v73 + 1) = v62;
        *&v74 = v64;
      }

      a5(a2, v70);
      if (!v53)
      {
        break;
      }

LABEL_42:
      if (!shape_enum_clip_next(v53, v83 + 1, v83, &v82, &v81))
      {
        free(v53);
        break;
      }

      v55 = v83[0];
      v54 = HIDWORD(v83[0]);
      v9 = v72;
      v10 = v73;
    }

    if (v47 != v68)
    {
      free(v47);
    }
  }
}

uint64_t rgb555_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v139 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v144 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v129 = *(a2 + 5) - a5;
  }

  else
  {
    v129 = 0;
  }

  v10 = a2[1];
  v128 = *a2;
  v127 = *(a2 + 3) - a5;
  v143 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v124 = *(a2 + 13);
  v14 = *(a2 + 9) + v124 * a4;
  v122 = *(a2 + 6);
  v131 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v142 = v10;
  v125 = v13;
  v126 = v12;
  v123 = v17;
  if (*(result + 176))
  {
    v136 = 0;
    v18 = 0;
    v121 = *(a2 + 15);
    v119 = ~(-1 << v13);
    v120 = *(a2 + 17);
    v118 = v13 - 4;
    v117 = -v12;
    v19 = (v16 - 4);
    v140 = 32 - v10;
    v115 = v11 + 16 * a3 + 8;
    v116 = a5;
    while (1)
    {
      if (((v120 - v14) | (v14 - v121)) < 0)
      {
        v24 = 0;
        v137 = 0;
      }

      else
      {
        v20 = ((v14 & v119) >> v118) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v117;
        if (!v22)
        {
          v23 = v12;
        }

        v137 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v131;
        v136 = v25 + 16;
        v18 = (v25 + v122);
        v26 = (v131 + 1) & 0xF;
        if (v131 + 1 <= 0)
        {
          v26 = -(-(v131 + 1) & 0xF);
        }

        v131 = v26;
      }

      v27 = *(v139 + 32) + (v14 >> v13) * v12;
      v134 = a6;
      v132 = v14;
      if (v128 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v115;
        v29 = v116;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v137);
            if (v19 < v32 + v137)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (v47 & *v46) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v140);
          v49 = v48 | v144;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v136)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v142;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = result;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v143;
          if (!--v29)
          {
            goto LABEL_120;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v137);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = *v39;
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_120:
      v12 = v126;
      v8 += v127;
      v9 += v129;
      LOBYTE(v13) = v125;
      v14 = v132 + v124;
      a6 = v134 - 1;
      v17 = v123;
      if (v134 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_120;
    }

    v56 = v115;
    v55 = v116;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = *v60;
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = *v63;
        if (v24)
        {
          v65 = (v59 + v137);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = *v66;
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((v69 & *v68) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v137);
        if (v19 < v59 + v137)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (v74 & *v73) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v140);
      v76 = v75 | v144;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v136)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v142;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = result;
LABEL_118:
          *v9 = v83;
          goto LABEL_119;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v142;
          *v8 = result;
          v83 = BYTE3(result);
          goto LABEL_118;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          goto LABEL_115;
        }

        if (v82)
        {
          result = PDplusDM(result, *v8, ~result >> 24);
          LOBYTE(v10) = v142;
LABEL_115:
          *v8 = result;
        }
      }

LABEL_119:
      v56 += 2;
      ++v8;
      v9 += v143;
      if (!--v55)
      {
        goto LABEL_120;
      }
    }
  }

  v84 = 0;
  v85 = 0;
  v141 = (v11 + 16 * a3);
  v86 = v16 - 4;
  v87 = 32 - v10;
  v138 = a5;
  do
  {
    if (v17)
    {
      v88 = v17 + 16 * v131;
      v84 = v88 + 16;
      v85 = (v88 + v122);
      v89 = (v131 + 1) & 0xF;
      if (v131 + 1 <= 0)
      {
        v89 = -(-(v131 + 1) & 0xF);
      }

      v131 = v89;
    }

    v90 = *(v139 + 32) + (v14 >> v13) * v12;
    v135 = a6;
    v133 = v14;
    if (v128 != 1)
    {
      v102 = v141;
      v103 = v138;
      if (a5 < 1)
      {
        goto LABEL_178;
      }

      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = (v90 + v104);
        if (v86 < v90 + v104)
        {
          v105 = v86;
        }

        if (v105 < *(v139 + 32))
        {
          v105 = *(v139 + 32);
        }

        v106 = (*v105 << v10) | (*v105 >> v87);
        v107 = v106 | v144;
        if (v85)
        {
          v108 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v107, v108);
          }

          else
          {
            result = DITHERRGBA32M(v107, v108, v6);
          }

          LOBYTE(v10) = v142;
        }

        else
        {
          v109 = (v106 >> 17) & 0x7C00 | (v106 >> 14) & 0x3E0 | (v106 >> 11) & 0xFFFFFF | ((v107 >> 3) << 27) | (v107 >> 5 << 24);
          v110 = ((v106 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v106 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v111 = (v107 & 0xFF00FF) * v6 + 65537 + ((((v107 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v112 = (v110 >> 17) & 0x7C00 | (v110 >> 11) & 0xFFFFFF | ((v111 >> 11) << 27) | ((v107 * v6 + 1 + ((v107 * v6) >> 8)) >> 13 << 24) | (32 * (v111 >> 27));
          if (v6 == 255)
          {
            result = v109;
          }

          else
          {
            result = v112;
          }

          v85 = 0;
        }

        v113 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v114 = BYTE3(result);
            *v8 = result;
LABEL_176:
            *v9 = v114;
            goto LABEL_177;
          }

          if (v113)
          {
            result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v142;
            *v8 = result;
            v114 = BYTE3(result);
            goto LABEL_176;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            goto LABEL_173;
          }

          if (v113)
          {
            result = PDplusDM(result, *v8, ~result >> 24);
            LOBYTE(v10) = v142;
LABEL_173:
            *v8 = result;
          }
        }

LABEL_177:
        ++v8;
        v9 += v143;
        if (!--v103)
        {
          goto LABEL_178;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v141;
      v92 = v138;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = (v90 + v93);
        if (v86 < v90 + v93)
        {
          v94 = v86;
        }

        if (v94 < *(v139 + 32))
        {
          v94 = *(v139 + 32);
        }

        v95 = (*v94 << v10) | (*v94 >> v87);
        v96 = v95 | v144;
        if (v85)
        {
          v97 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v96, v97);
          }

          else
          {
            result = DITHERRGBA32M(v96, v97, v6);
          }

          LOBYTE(v10) = v142;
        }

        else
        {
          v98 = (v95 >> 17) & 0x7C00 | (v95 >> 14) & 0x3E0 | (v95 >> 11) & 0xFFFFFF | ((v96 >> 3) << 27) | (v96 >> 5 << 24);
          v99 = ((v95 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v95 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v100 = (v96 & 0xFF00FF) * v6 + 65537 + ((((v96 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v101 = (v99 >> 17) & 0x7C00 | (v99 >> 11) & 0xFFFFFF | ((v100 >> 11) << 27) | ((v96 * v6 + 1 + ((v96 * v6) >> 8)) >> 13 << 24) | (32 * (v100 >> 27));
          if (v6 == 255)
          {
            result = v98;
          }

          else
          {
            result = v101;
          }

          v85 = 0;
        }

        *v8 = result;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v143;
        --v92;
      }

      while (v92);
    }

LABEL_178:
    v12 = v126;
    v8 += v127;
    v9 += v129;
    LOBYTE(v13) = v125;
    v14 = v133 + v124;
    a6 = v135 - 1;
    v17 = v123;
  }

  while (v135 != 1);
  return result;
}

uint64_t rgb555_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v141 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v146 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v10 = a2[1];
  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v145 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v126 = *(a2 + 13);
  v14 = *(a2 + 9) + v126 * a4;
  v124 = *(a2 + 6);
  v133 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v144 = v10;
  v127 = v13;
  v128 = v12;
  v125 = v17;
  if (*(result + 176))
  {
    v138 = 0;
    v18 = 0;
    v123 = *(a2 + 15);
    v121 = ~(-1 << v13);
    v122 = *(a2 + 17);
    v120 = v13 - 4;
    v119 = -v12;
    v19 = (v16 - 4);
    v142 = 32 - v10;
    v117 = v11 + 16 * a3 + 8;
    v118 = a5;
    while (1)
    {
      if (((v122 - v14) | (v14 - v123)) < 0)
      {
        v24 = 0;
        v139 = 0;
      }

      else
      {
        v20 = ((v14 & v121) >> v120) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v119;
        if (!v22)
        {
          v23 = v12;
        }

        v139 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v133;
        v138 = v25 + 16;
        v18 = (v25 + v124);
        v26 = (v133 + 1) & 0xF;
        if (v133 + 1 <= 0)
        {
          v26 = -(-(v133 + 1) & 0xF);
        }

        v133 = v26;
      }

      v27 = *(v141 + 32) + (v14 >> v13) * v12;
      v136 = a6;
      v134 = v14;
      if (v130 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v117;
        v29 = v118;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = bswap32(*v33);
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v139);
            if (v19 < v32 + v139)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (bswap32(*v46) & v47) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v142);
          v49 = v48 | v146;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v138)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v144;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = result;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v145;
          if (!--v29)
          {
            goto LABEL_120;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = bswap32(*v36);
        if (v24)
        {
          v38 = (v32 + v139);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = bswap32(*v39);
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((bswap32(*v41) & v42) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_120:
      v12 = v128;
      v8 += v129;
      v9 += v131;
      LOBYTE(v13) = v127;
      v14 = v134 + v126;
      a6 = v136 - 1;
      v17 = v125;
      if (v136 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_120;
    }

    v56 = v117;
    v55 = v118;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = bswap32(*v60);
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = bswap32(*v63);
        if (v24)
        {
          v65 = (v59 + v139);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = bswap32(*v66);
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((bswap32(*v68) & v69) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v139);
        if (v19 < v59 + v139)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (bswap32(*v73) & v74) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v142);
      v76 = v75 | v146;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v138)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v144;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = result;
LABEL_118:
          *v9 = v83;
          goto LABEL_119;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v144;
          *v8 = result;
          v83 = BYTE3(result);
          goto LABEL_118;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          goto LABEL_115;
        }

        if (v82)
        {
          result = PDplusDM(result, *v8, ~result >> 24);
          LOBYTE(v10) = v144;
LABEL_115:
          *v8 = result;
        }
      }

LABEL_119:
      v56 += 2;
      ++v8;
      v9 += v145;
      if (!--v55)
      {
        goto LABEL_120;
      }
    }
  }

  v84 = 0;
  v85 = 0;
  v143 = (v11 + 16 * a3);
  v86 = (v16 - 4);
  v87 = 32 - v10;
  v140 = a5;
  do
  {
    if (v17)
    {
      v88 = v17 + 16 * v133;
      v84 = v88 + 16;
      v85 = (v88 + v124);
      v89 = (v133 + 1) & 0xF;
      if (v133 + 1 <= 0)
      {
        v89 = -(-(v133 + 1) & 0xF);
      }

      v133 = v89;
    }

    v90 = *(v141 + 32) + (v14 >> v13) * v12;
    v137 = a6;
    v135 = v14;
    if (v130 != 1)
    {
      v103 = v143;
      v104 = v140;
      if (a5 < 1)
      {
        goto LABEL_178;
      }

      while (1)
      {
        v105 = *v103;
        v103 += 2;
        v106 = (v90 + v105);
        if (v86 < v90 + v105)
        {
          v106 = v86;
        }

        if (v106 < *(v141 + 32))
        {
          v106 = *(v141 + 32);
        }

        v107 = bswap32(*v106);
        v108 = (v107 << v10) | (v107 >> v87);
        v109 = v108 | v146;
        if (v85)
        {
          v110 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v109, v110);
          }

          else
          {
            result = DITHERRGBA32M(v109, v110, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v111 = (v108 >> 17) & 0x7C00 | (v108 >> 14) & 0x3E0 | (v108 >> 11) & 0xFFFFFF | ((v109 >> 3) << 27) | (v109 >> 5 << 24);
          v112 = ((v108 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v108 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v109 & 0xFF00FF) * v6 + 65537 + ((((v109 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v114 = (v112 >> 17) & 0x7C00 | (v112 >> 11) & 0xFFFFFF | ((v113 >> 11) << 27) | ((v109 * v6 + 1 + ((v109 * v6) >> 8)) >> 13 << 24) | (32 * (v113 >> 27));
          if (v6 == 255)
          {
            result = v111;
          }

          else
          {
            result = v114;
          }

          v85 = 0;
        }

        v115 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v116 = BYTE3(result);
            *v8 = result;
LABEL_176:
            *v9 = v116;
            goto LABEL_177;
          }

          if (v115)
          {
            result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v144;
            *v8 = result;
            v116 = BYTE3(result);
            goto LABEL_176;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            goto LABEL_173;
          }

          if (v115)
          {
            result = PDplusDM(result, *v8, ~result >> 24);
            LOBYTE(v10) = v144;
LABEL_173:
            *v8 = result;
          }
        }

LABEL_177:
        ++v8;
        v9 += v145;
        if (!--v104)
        {
          goto LABEL_178;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v143;
      v92 = v140;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = (v90 + v93);
        if (v86 < v90 + v93)
        {
          v94 = v86;
        }

        if (v94 < *(v141 + 32))
        {
          v94 = *(v141 + 32);
        }

        v95 = bswap32(*v94);
        v96 = (v95 << v10) | (v95 >> v87);
        v97 = v96 | v146;
        if (v85)
        {
          v98 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v97, v98);
          }

          else
          {
            result = DITHERRGBA32M(v97, v98, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v99 = (v96 >> 17) & 0x7C00 | (v96 >> 14) & 0x3E0 | (v96 >> 11) & 0xFFFFFF | ((v97 >> 3) << 27) | (v97 >> 5 << 24);
          v100 = ((v96 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v96 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v101 = (v97 & 0xFF00FF) * v6 + 65537 + ((((v97 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v102 = (v100 >> 17) & 0x7C00 | (v100 >> 11) & 0xFFFFFF | ((v101 >> 11) << 27) | ((v97 * v6 + 1 + ((v97 * v6) >> 8)) >> 13 << 24) | (32 * (v101 >> 27));
          if (v6 == 255)
          {
            result = v99;
          }

          else
          {
            result = v102;
          }

          v85 = 0;
        }

        *v8 = result;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v145;
        --v92;
      }

      while (v92);
    }

LABEL_178:
    v12 = v128;
    v8 += v129;
    v9 += v131;
    LOBYTE(v13) = v127;
    v14 = v135 + v126;
    a6 = v137 - 1;
    v17 = v125;
  }

  while (v137 != 1);
  return result;
}