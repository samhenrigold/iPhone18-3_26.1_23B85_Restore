_OWORD *sub_2779C96A8(uint64_t a1, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(v30, 0, 196);
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  if (setjmp(&v30[1]))
  {
    if (*(*(a1 + 270312) + 77))
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    sub_2779C9AE8(0, v6);
    return 0;
  }

  else
  {
    v30[0] = 1;
    v8 = malloc_type_malloc(0x1EFuLL, 0x5F484EBFuLL);
    if (v8)
    {
      v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v9 - 1) = v8;
      if (v9)
      {
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1D0) = 0;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1B0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1C0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x190) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1A0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x170) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x180) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x150) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x160) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x130) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x140) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x110) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x120) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xF0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x100) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xD0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xE0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xC0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
        *v9 = 0u;
      }
    }

    else
    {
      v9 = 0;
    }

    v27 = v9;
    if (!v9)
    {
      sub_2779F5C10(v28, 2, "Failed to allocate ctx");
    }

    v10 = *(a1 + 270312);
    *(v27 + 116) = 0;
    v11 = *(v10 + 77);
    v26 = byte_277C3CAE8[a2] * byte_277C3CAFE[a2];
    v12 = v26 >> 4;
    *(v27 + 35) = sub_2779724A8(v12, 1uLL);
    if (!*(v27 + 35))
    {
      sub_2779F5C10(v28, 2, "Failed to allocate ctx->blk_skip");
    }

    *(v27 + 51) = sub_2779724A8(v12, 1uLL);
    if (!*(v27 + 51))
    {
      sub_2779F5C10(v28, 2, "Failed to allocate ctx->tx_type_map");
    }

    v13 = (a3 + 24);
    *(v27 + 104) = v26 >> 4;
    v14 = 0;
    do
    {
      v15 = v14;
      *(v27 + v14 + 36) = *(v13 - 3);
      *(v27 + v14 + 39) = *v13;
      *(v27 + v14 + 42) = v13[3];
      v16 = malloc_type_malloc(2 * v12 + 39, 0x5F484EBFuLL);
      if (v16)
      {
        *(((v16 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v16;
        v17 = (v16 + 39) & 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v17 = 0;
      }

      *(v27 + v15 + 45) = v17;
      if (!*(v27 + v15 + 45))
      {
        sub_2779F5C10(v28, 2, "Failed to allocate ctx->eobs[i]");
      }

      v18 = malloc_type_malloc(v12 + 39, 0x5F484EBFuLL);
      if (v18)
      {
        *(((v18 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v18;
        v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v19 = 0;
      }

      *(v27 + v15 + 48) = v19;
      if (!*(v27 + v15 + 48))
      {
        sub_2779F5C10(v28, 2, "Failed to allocate ctx->txb_entropy_ctx[i]");
      }

      if (v11)
      {
        break;
      }

      v14 = v15 + 1;
      ++v13;
    }

    while (v15 < 2);
    if (v26 <= 0x1000)
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = v21;
        if (*(a1 + 246111) == 1)
        {
          v23 = malloc_type_malloc(v26 + 39, 0x5F484EBFuLL);
          if (v23)
          {
            *(((v23 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v23;
            v24 = (v23 + 39) & 0xFFFFFFFFFFFFFFE0;
          }

          else
          {
            v24 = 0;
          }

          *(v27 + v20 + 33) = v24;
          if (!*(v27 + v20 + 33))
          {
            sub_2779F5C10(v28, 2, "Failed to allocate ctx->color_index_map[i]");
          }
        }

        else
        {
          *(v27 + v20 + 33) = 0;
        }

        v20 = 1;
        v21 = 0;
      }

      while ((v22 & 1) != 0);
    }

    *(v27 + 53) = 0x7FFFFFFFLL;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v27[27] = vnegq_f64(v25);
    *(v27 + 56) = 0x7FFFFFFFFFFFFFFFLL;
    *(v27 + 456) = 0;
    return v27;
  }
}

void sub_2779C9AE8(void *a1, int a2)
{
  if (a1)
  {
    LODWORD(v2) = a2;
    v4 = a1[35];
    if (v4)
    {
      free(*(v4 - 8));
    }

    a1[35] = 0;
    v5 = a1[51];
    if (v5)
    {
      free(*(v5 - 8));
    }

    v6 = a1 + 48;
    v2 = v2;
    do
    {
      *(v6 - 12) = 0;
      *(v6 - 9) = 0;
      *(v6 - 6) = 0;
      v7 = *(v6 - 3);
      if (v7)
      {
        free(*(v7 - 8));
      }

      *(v6 - 3) = 0;
      if (*v6)
      {
        free(*(*v6 - 8));
      }

      *v6++ = 0;
      --v2;
    }

    while (v2);
    v8 = 0;
    v9 = a1 + 33;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = v9[v8];
      if (v12)
      {
        free(*(v12 - 8));
        v9[v8] = 0;
      }

      v10 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    v13 = *(a1 - 1);

    free(v13);
  }
}

double sub_2779C9BC8(char a1)
{
  v2 = malloc_type_malloc(0x10FuLL, 0x5F484EBFuLL);
  if (v2)
  {
    v4 = v2;
    v5 = (v2 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v5 - 8) = v4;
    if (v5)
    {
      result = 0.0;
      *(v5 + 240) = 0;
      *(v5 + 208) = 0u;
      *(v5 + 224) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 192) = 0u;
      *(v5 + 144) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *(v5 + 1) = a1;
    }
  }

  return result;
}

void sub_2779C9C3C(unsigned __int8 *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return;
  }

  if (a5 == 2 && !(a4 | a3))
  {
    sub_2779C9AE8(*(a1 + 1), a2);
    *(a1 + 1) = 0;
    sub_2779C9AE8(*(a1 + 2), a2);
    *(a1 + 2) = 0;
    sub_2779C9AE8(*(a1 + 4), a2);
    *(a1 + 4) = 0;
    sub_2779C9AE8(*(a1 + 3), a2);
    *(a1 + 3) = 0;
    sub_2779C9AE8(*(a1 + 5), a2);
    v9 = 0;
    *(a1 + 5) = 0;
    v10 = a1 + 208;
    do
    {
      v11 = *&v10[v9];
      if (v11)
      {
        sub_2779C9C3C(v11, a2, 0, 0, 2);
        *&v10[v9] = 0;
      }

      v9 += 8;
    }

    while (v9 != 32);
LABEL_62:
    v34 = *(a1 - 1);

    free(v34);
    return;
  }

  v35 = a4 | a3;
  v12 = *a1;
  if (!a4 && (!a3 || *a1))
  {
    sub_2779C9AE8(*(a1 + 1), a2);
    *(a1 + 1) = 0;
  }

  v13 = 0;
  v36 = a3;
  v14 = a3 == 0;
  v15 = v12 != 1 || a3 == 0;
  v16 = a1 + 16;
  v17 = v12 != 2 || v14;
  v18 = a1 + 32;
  v19 = 1;
  do
  {
    v20 = v19;
    if (!v15 || (sub_2779C9AE8(*&v16[8 * v13], a2), *&v16[8 * v13] = 0, v17))
    {
      sub_2779C9AE8(*&v18[8 * v13], a2);
      *&v18[8 * v13] = 0;
    }

    v19 = 0;
    v13 = 1;
  }

  while ((v20 & 1) != 0);
  v21 = v12 != 4 || v36 == 0;
  v22 = v12 != 5 || v36 == 0;
  v23 = a1 + 72;
  v24 = v12 != 6 || v36 == 0;
  v25 = v12 != 7 || v36 == 0;
  v26 = 3;
  do
  {
    if ((!v21 || (sub_2779C9AE8(*(v23 - 3), a2), *(v23 - 3) = 0, v22)) && (sub_2779C9AE8(*v23, a2), *v23 = 0, !v24) || (sub_2779C9AE8(*(v23 + 3), a2), *(v23 + 3) = 0, v25))
    {
      sub_2779C9AE8(*(v23 + 6), a2);
      *(v23 + 6) = 0;
    }

    v23 += 8;
    --v26;
  }

  while (v26);
  v27 = v12 != 8 || v36 == 0;
  v28 = v12 != 9 || v36 == 0;
  v29 = a1 + 176;
  v30 = 4;
  do
  {
    if (!v27 || (sub_2779C9AE8(*(v29 - 4), a2), *(v29 - 4) = 0, v28))
    {
      sub_2779C9AE8(*v29, a2);
      *v29 = 0;
    }

    v29 += 8;
    --v30;
  }

  while (v30);
  if (!v36 || v12 != 3)
  {
    v31 = 0;
    v32 = a1 + 208;
    do
    {
      v33 = *&v32[v31];
      if (v33)
      {
        sub_2779C9C3C(v33, a2, 0, 0, a5);
        *&v32[v31] = 0;
      }

      v31 += 8;
    }

    while (v31 != 32);
  }

  if (!v35)
  {
    goto LABEL_62;
  }
}

uint64_t sub_2779C9F18(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 271184))
  {
    return 0;
  }

  v2 = a2 + 151552;
  v3 = *(a1 + 272180) != 1 && *(a1 + 644192) != 1;
  v5 = *(*(a1 + 270312) + 28);
  if (v5 == 15)
  {
    v6 = 1365;
  }

  else
  {
    v6 = 341;
  }

  v7 = *(a2 + 154776);
  if (v7)
  {
    free(*(v7 - 8));
  }

  if (!v3)
  {
    v6 = 1;
  }

  v8 = sub_2779724A8(v6, 0x78uLL);
  *(v2 + 3224) = v8;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3)
  {
    if (v5 == 15)
    {
      v9 = 1024;
    }

    else
    {
      v9 = 256;
    }

    v10 = v8;
    v11 = v9;
    do
    {
      *v10 = 0;
      v10 += 120;
      --v11;
    }

    while (v11);
    v12 = 1u;
    v13 = v9;
    do
    {
      if (v9 < 4)
      {
        break;
      }

      v14 = *(&unk_277BCB2C0 + v12);
      v15 = 120 * v13;
      v13 += v9 >> 2;
      v16 = v9 >> 2;
      do
      {
        v17 = *(v2 + 3224) + v15;
        *v17 = v14;
        *(v17 + 8) = v8;
        *(v17 + 16) = v8 + 120;
        v18 = v8 + 480;
        *(v17 + 24) = v8 + 240;
        *(v17 + 32) = v8 + 360;
        v15 += 120;
        v8 += 480;
        --v16;
      }

      while (v16);
      ++v12;
      v8 = v18;
      v19 = v9 >= 0x10;
      LODWORD(v9) = v9 >> 2;
    }

    while (v19);
    v8 = *(v2 + 3224);
  }

  else
  {
    *v8 = 6;
  }

  v4 = 0;
  *(v2 + 3232) = &v8[120 * v6 - 120];
  return v4;
}

uint64_t sub_2779CA0A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5, unsigned int a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = dword_277C3BEE4[a3];
  v11 = dword_277C3BF30[a3];
  v12 = (&unk_277BCB2D0 + 56 * a6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = v12[5];
  v19 = v12[6];
  result = __memcpy_chk();
  if (v11 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v11;
  }

  v23 = 33;
  do
  {
    v24 = *a5++;
    v55[v23] = v24;
    v23 += 33;
    --v22;
  }

  while (v22);
  if ((0xA0E3uLL >> v9))
  {
    v43 = a1 + a2;
    v44 = 2 * a2;
    v45 = 1;
    v46 = v55;
    do
    {
      v47 = 0;
      v48 = &v55[33 * v45];
      v49 = v48 - 33;
      v50 = vld1_dup_s8(v49);
      v51 = vld1_dup_s8(v48);
      v48 += 33;
      v52 = vld1_dup_s8(v48);
      do
      {
        v21.i32[0] = *&v46[v47 + 1];
        v53 = vmlsl_u8(vmull_u8(vdup_lane_s8(v21, 0), v14), v50, v13);
        v50 = vdup_lane_s8(v21, 3);
        v21 = vqrshrun_n_s16(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(v53, vdup_lane_s8(v21, 1), v15), vdup_lane_s8(v21, 2), v16), v50, v17), v51, v18), v52, v19), 4uLL);
        *&v46[v47 + 67] = v21.i32[1];
        *(a1 + v47) = v21.i32[0];
        *(v43 + v47) = v21.i32[1];
        v51 = vdup_lane_s8(v21, 3);
        v52 = vdup_lane_s8(v21, 7);
        *&v46[v47 + 34] = v21.i32[0];
        v54 = v47 + 5;
        v47 += 4;
      }

      while (v54 <= v10);
      v45 += 2;
      v43 += v44;
      a1 += v44;
      v46 += 66;
    }

    while (v45 <= v11);
  }

  else
  {
    v25 = a1 + a2;
    v26 = 2 * a2;
    v27 = 1;
    v28 = v55;
    do
    {
      v29 = 0;
      v30 = &v55[33 * v27];
      v31 = v30 - 33;
      v32 = vld1_dup_s8(v31);
      v33 = vld1_dup_s8(v30);
      v30 += 33;
      v34 = vld1_dup_s8(v30);
      do
      {
        v35 = &v28[v29];
        v36 = *&v28[v29 + 1];
        v37 = vdup_lane_s8(v36, 3);
        v38 = vqrshrun_n_s16(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmull_u8(vdup_lane_s8(v36, 0), v14), v32, v13), vdup_lane_s8(v36, 1), v15), vdup_lane_s8(v36, 2), v16), v37, v17), v33, v18), v34, v19), 4uLL);
        v32 = vdup_lane_s8(v36, 7);
        v39 = vqrshrun_n_s16(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmull_u8(vdup_lane_s8(v36, 4), v14), v37, v13), vdup_lane_s8(v36, 5), v15), vdup_lane_s8(v36, 6), v16), v32, v17), vdup_lane_s8(v38, 3), v18), vdup_lane_s8(v38, 7), v19), 4uLL);
        v40 = vzip1_s32(v38, v39);
        v41 = vzip2_s32(v38, v39);
        *(v35 + 34) = v40;
        *(v35 + 67) = v41;
        *(a1 + v29) = v40;
        *(v25 + v29) = v41;
        v33 = vdup_lane_s8(v39, 3);
        v34 = vdup_lane_s8(v39, 7);
        v42 = v29 + 9;
        v29 += 8;
      }

      while (v42 <= v10);
      v27 += 2;
      v25 += v26;
      a1 += v26;
      v28 += 66;
    }

    while (v27 <= v11);
  }

  return result;
}

uint8x8_t sub_2779CA360(uint64_t a1, int a2, int a3, uint8x8_t result)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = v20;
    __memcpy_chk();
    v19 = v20[0];
    v8 = &v20[a2 - 1];
    v9 = *v8;
    v8[1] = *v8;
    v8[2] = v9;
    v10 = (a1 + 1);
    v11 = a2 - 1;
    if (a3 == 1)
    {
      if (a2 >= 9)
      {
        v14 = a2 + 7;
        do
        {
          result = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v7 + 2), *v7), vshll_n_u8(*(v7 + 1), 1uLL)), 2uLL);
          *v10++ = result;
          v7 += 8;
          v14 -= 8;
        }

        while (v14 > 0xF);
        v11 = v14 - 8;
      }

      if (v11 >= 1)
      {
        v13 = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v7 + 2), *v7), vshll_n_u8(*(v7 + 1), 1uLL)), 2uLL);
        goto LABEL_23;
      }
    }

    else if (a3 == 2)
    {
      if (a2 >= 9)
      {
        v12 = a2 + 7;
        result.i16[0] = 1285;
        result.i8[2] = 5;
        result.i8[3] = 5;
        result.i8[4] = 5;
        result.i8[5] = 5;
        result.i8[6] = 5;
        result.i8[7] = 5;
        do
        {
          *v10++ = vrshrn_n_s16(vmlal_u8(vmlal_u8(vmull_u8(*(v7 + 1), 0x606060606060606), *v7, result), *(v7 + 2), result), 4uLL);
          v7 += 8;
          v12 -= 8;
        }

        while (v12 > 0xF);
        v11 = v12 - 8;
      }

      if (v11 >= 1)
      {
        v13 = vrshrn_n_s16(vmlal_u8(vmlal_u8(vmull_u8(*(v7 + 1), 0x606060606060606), *v7, 0x505050505050505), *(v7 + 2), 0x505050505050505), 4uLL);
LABEL_23:
        result = vbsl_s8(vcgt_u8(0x807060504030201, vdup_n_s8(v11)), *v10, v13);
        *v10 = result;
      }
    }

    else
    {
      if (a2 < 9)
      {
        v16 = &v19;
      }

      else
      {
        v15 = a2 + 7;
        v16 = &v19;
        do
        {
          v17 = vaddw_u8(vaddl_u8(*(v16 + 2), *(v16 + 1)), *(v16 + 3));
          result = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v16 + 4), *v16), vaddq_s16(v17, v17)), 3uLL);
          *v10++ = result;
          v16 += 8;
          v15 -= 8;
        }

        while (v15 > 0xF);
        v11 = v15 - 8;
      }

      if (v11 >= 1)
      {
        v18 = vaddw_u8(vaddl_u8(*(v16 + 2), *(v16 + 1)), *(v16 + 3));
        v13 = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v16 + 4), *v16), vaddq_s16(v18, v18)), 3uLL);
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t sub_2779CA5A8(uint64_t result, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = result;
    v4 = (result - 1);
    v5 = *(result - 1);
    v8[0] = v5;
    v8[1] = v5;
    v6 = v8;
    result = __memcpy_chk();
    v8[a2 + 2] = *(v3 + a2 - 1);
    *(v3 - 2) = v5;
    v7 = a2 + 8;
    do
    {
      v10.val[1] = *(v6 + 2);
      v10.val[0] = vqrshrun_n_s16(vsubq_s16(vmlal_u8(vmull_u8(v10.val[1], 0x909090909090909), *(v6 + 1), 0x909090909090909), vaddl_u8(*(v6 + 3), *v6)), 4uLL);
      vst2_s8(v4, v10);
      v4 += 16;
      v6 += 8;
      v7 -= 8;
    }

    while (v7 > 8);
  }

  return result;
}

void sub_2779CA690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, int a11, int a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v12;
  v24 = a10;
  v26 = a9;
  v25 = HIDWORD(a9);
  v79 = *MEMORY[0x277D85DE8];
  if (!v23 || ((v27 = *(**(v23 + 7864) + 167), ((v27 >> 7) & 1) != 0) ? (v28 = (v13 + 272)) : (v28 = *(v23 + 7944)), *v28 == -1 || (v29 = v28[1], v29 == -1) || *v28 == 0x4000 && v29 == 0x4000))
  {
    if ((a12 - 1) > 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(&off_27A719800 + (a12 - 1));
    }

    if (a9)
    {
      if (HIDWORD(a9))
      {
        if (a9)
        {
          v31 = *(v30 + 4);
          v32 = *(v30 + 4);
          v33 = *v30;
          v34 = v33 + 2 * (2 * HIDWORD(a9) * v32);
          v35 = (v31 << 6) & 0x3FFF80;
          LODWORD(v65) = v18;
          HIDWORD(v65) = ((HIDWORD(a9) + 8 * v19 - 8) >> 3) + 8;
          off_280ABC830(a10 - 3 * a11, a11, &v66, 128, v33 + 2 * (2 * a9 * v32), 16, 0, 0xFFFFFFFFLL, v65);
          off_280ABC838(&v66 + v35 - 128, 128, v22, v21, 0, 0xFFFFFFFFLL, v34, 16, __PAIR64__(v20, v21));
          return;
        }

        v47 = *v30;
        v48 = *(v30 + 4);
        v39 = off_280ABC838;
        v81 = __PAIR64__(v19, v18);
        v45 = v47 + 2 * (2 * v25 * v48);
        v41 = a11;
        v42 = v21;
        v43 = v17;
        v40 = 0;
        v44 = 0xFFFFFFFFLL;
        v46 = 16;
      }

      else
      {
        v37 = *v30;
        v38 = *(v30 + 4);
        v39 = off_280ABC830;
        v81 = __PAIR64__(v19, v18);
        v40 = v37 + 2 * (2 * v26 * v38);
        v41 = a11;
        v42 = v18;
        v43 = v17;
        v44 = 16;
        v45 = 0;
        v46 = 0xFFFFFFFFLL;
      }

      v39(a10, v41, v43, v42, v40, v44, v45, v46, v81);
    }

    else if (v18 < 9)
    {
      if (v18 == 8)
      {
        do
        {
          *v22++ = *v24;
          v24 = (v24 + a11);
          --v20;
        }

        while (v20);
      }

      else
      {
        v63 = v19 / 2;
        do
        {
          LODWORD(v64) = *v24;
          HIDWORD(v64) = *(v24 + a11);
          *v22 = v64;
          v24 = (v24 + 2 * a11);
          v22 = (v22 + 2 * v18);
          --v63;
        }

        while (v63);
      }
    }

    else
    {
      do
      {
        v36 = 0;
        do
        {
          *&v22[v36 / 8] = *&v24[v36 / 8];
          v36 += 16;
        }

        while (v36 < v18);
        v24 = (v24 + a11);
        v22 = (v22 + v18);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v49 = *(v23 + 10656);
    v50 = (v27 >> 7) & 1;
    v71 = 0u;
    v72 = 0u;
    v51 = v49 - 7;
    v69 = 0u;
    v52 = 21 - v49;
    v70 = 0u;
    if (v49 <= 10)
    {
      v51 = 3;
    }

    v77 = 0;
    if (v49 <= 10)
    {
      v52 = 11;
    }

    v76 = 0uLL;
    v75 = 0uLL;
    *&v74[32] = 0uLL;
    if (v18 >= 5)
    {
      v53 = &off_27A7197B0;
    }

    else
    {
      v53 = &off_27A719770;
    }

    *&v74[16] = 0uLL;
    if (v19 >= 5)
    {
      v54 = &off_27A7197B0;
    }

    else
    {
      v54 = &off_27A719770;
    }

    *v74 = 0uLL;
    v55 = v50 == 0;
    v56 = 32;
    v73 = 0uLL;
    if (!v50)
    {
      v56 = 64;
    }

    v57 = (v23 + v56);
    v68 = 0uLL;
    v67 = 0uLL;
    *(&v71 + 1) = 0;
    *(&v69 + 1) = 0;
    *&v70 = 0;
    DWORD2(v70) = 0;
    HIDWORD(v70) = v51;
    LODWORD(v71) = v52;
    v58 = (*(*(v23 + 7960) + 192) >> 3) & 1;
    *(&v73 + 1) = __PAIR64__(v19, v18);
    *(&v75 + 1) = __PAIR64__(v58, v49);
    HIDWORD(v77) = (v27 >> 7) & 1;
    v66 = 0;
    v59 = *(v23 + 20);
    *&v74[40] = v59;
    *v74 = (4 * v14) >> v59.i8[4];
    *&v74[4] = (4 * v15) >> v59.i8[0];
    v78 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(vdup_n_s32(0x120u), vneg_s32(v59)), 0xAuLL)));
    v60 = &off_27A719760;
    if (v50)
    {
      v61 = &off_27A719760;
    }

    else
    {
      v61 = v53;
    }

    if (v55)
    {
      v60 = v54;
    }

    *&v72 = 0;
    *(&v72 + 1) = v61;
    *&v73 = v60;
    *&v75 = v28;
    v62 = v57[1];
    *&v74[8] = *v57;
    *&v74[24] = v62;
    sub_2779CAFC0(v17, v18, &v66, v15, v16, v17, v18, v19);
  }
}

void sub_2779CAB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11, char a12, int a13)
{
  v13 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = v20;
  v22 = v19;
  v23 = v18;
  v65 = *MEMORY[0x277D85DE8];
  if (!v13 || ((v24 = *(**(v13 + 7864) + 167), ((v24 >> 7) & 1) != 0) ? (v25 = (v14 + 272)) : (v25 = *(v13 + 7944)), *v25 == -1 || (v26 = v25[1], v26 == -1) || *v25 == 0x4000 && v26 == 0x4000))
  {
    if ((a13 - 1) > 2)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(&off_27A719800 + (a13 - 1));
    }

    if (a9)
    {
      if (HIDWORD(a9))
      {
        if (a9)
        {
          v28 = *(v27 + 8);
          v29 = (*v27 + 4 * HIDWORD(a9) * v28);
          sub_277A579F0(a10 - (((v28 >> 1) - 1) * a11), a11, &v52 >> 1, 128, (*v27 + 4 * a9 * v28), v19, v28 + ((HIDWORD(a9) + 8 * v20 - 8) >> 3), a12);
          sub_277A581B8((&v52 + ((*(v27 + 8) << 7) & 0x7FFF00) - 256) >> 1, 128, v23, v22, v29, v22, v21, a12);
        }

        else
        {
          v35 = (*v27 + 4 * HIDWORD(a9) * *(v27 + 8));

          sub_277A581B8(a10, a11, v18, v19, v35, v19, v20, a12);
        }
      }

      else
      {
        v34 = (*v27 + 4 * a9 * *(v27 + 8));

        sub_277A579F0(a10, a11, v18, v19, v34, v19, v20, a12);
      }
    }

    else
    {
      v30 = (2 * a10);
      v31 = (2 * v18);
      if (v19 < 5)
      {
        if (v19 == 4)
        {
          do
          {
            *v31++ = *v30;
            v30 = (v30 + 2 * a11);
            --v21;
          }

          while (v21);
        }

        else
        {
          v50 = v20 / 2;
          do
          {
            v51 = *(v30 + 2 * a11);
            *v31 = *v30;
            *(v31 + 2 * v19) = v51;
            v31 = (v31 + 4 * v19);
            v30 = (v30 + 4 * a11);
            --v50;
          }

          while (v50);
        }
      }

      else
      {
        do
        {
          v32 = 0;
          v33 = 0;
          do
          {
            *&v31[v32] = *&v30[v32];
            v33 += 8;
            v32 += 2;
          }

          while (v33 < v19);
          v31 = (v31 + 2 * v19);
          v30 = (v30 + 2 * a11);
          --v21;
        }

        while (v21);
      }
    }
  }

  else
  {
    v36 = *(v13 + 10656);
    v37 = (v24 >> 7) & 1;
    v57 = 0u;
    v58 = 0u;
    v38 = v36 - 7;
    v55 = 0u;
    v39 = 21 - v36;
    v56 = 0u;
    if (v36 <= 10)
    {
      v38 = 3;
    }

    v63 = 0;
    if (v36 <= 10)
    {
      v39 = 11;
    }

    v62 = 0uLL;
    v61 = 0uLL;
    *&v60[32] = 0uLL;
    if (v19 >= 5)
    {
      v40 = &off_27A7197B0;
    }

    else
    {
      v40 = &off_27A719770;
    }

    *&v60[16] = 0uLL;
    if (v20 >= 5)
    {
      v41 = &off_27A7197B0;
    }

    else
    {
      v41 = &off_27A719770;
    }

    *v60 = 0uLL;
    v42 = v37 == 0;
    v43 = 32;
    v59 = 0uLL;
    if (!v37)
    {
      v43 = 64;
    }

    v44 = (v13 + v43);
    v54 = 0uLL;
    v53 = 0uLL;
    *(&v57 + 1) = 0;
    *(&v55 + 1) = 0;
    *&v56 = 0;
    DWORD2(v56) = 0;
    HIDWORD(v56) = v38;
    LODWORD(v57) = v39;
    v45 = (*(*(v13 + 7960) + 192) >> 3) & 1;
    *(&v59 + 1) = __PAIR64__(v20, v19);
    *(&v61 + 1) = __PAIR64__(v45, v36);
    HIDWORD(v63) = v37;
    v52 = 0;
    v46 = (4 * v15) >> BYTE4(*(v13 + 20));
    *&v60[40] = *(v13 + 20);
    *v60 = v46;
    *&v60[4] = (4 * v16) >> v60[40];
    v64 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(vdup_n_s32(0x120u), vneg_s32(*&v60[40])), 0xAuLL)));
    v47 = &off_27A719760;
    if (v42)
    {
      v48 = v40;
    }

    else
    {
      v48 = &off_27A719760;
    }

    if (v42)
    {
      v47 = v41;
    }

    *&v58 = 0;
    *(&v58 + 1) = v48;
    *&v59 = v47;
    *&v61 = v25;
    v49 = v44[1];
    *&v60[8] = *v44;
    *&v60[24] = v49;
    sub_2779CAFC0(v18, v19, &v52, v16, v17, v18, v19, v20);
  }
}

void sub_2779CAFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  STACK[0x8038] = *MEMORY[0x277D85DE8];
  v14 = v9[21];
  v16 = vadd_s32(vshl_u32(vrev64_s32(vshr_n_s32(vshl_n_s32(v15, 0x10uLL), 0x10uLL)), vsub_s32(0x100000001, v9[20])), vrev64_s32(vshl_n_s32(v9[15], 4uLL)));
  v17 = **&v14;
  if (**&v14 == -1 || (v18 = *(*&v14 + 4), v18 == -1) || v17 == 0x4000 && v18 == 0x4000)
  {
    v19 = vshl_n_s32(v16, 6uLL);
  }

  else
  {
    v42 = 8 * v18 - 0x20000 + v18 * v16.i32[1];
    if (v42 < 0)
    {
      v43 = -((128 - v42) >> 8);
    }

    else
    {
      v43 = (v42 + 128) >> 8;
    }

    v44 = 8 * v17 - 0x20000 + v17 * v16.i32[0];
    if (v44 < 0)
    {
      v45 = -((128 - v44) >> 8);
    }

    else
    {
      v45 = (v44 + 128) >> 8;
    }

    v19 = __PAIR64__(v43, v45);
  }

  v20 = vadd_s32(v19, 0x2000000020);
  v21 = vrev64_s32(v9[26]);
  v22 = vbsl_s8(vcgt_s32(v21, v20), v21, vmin_s32(v20, vadd_s32(vshl_n_s32(v9[18], 0xAuLL), 0x100000001000)));
  v23 = *(*&v14 + 8);
  v405[1] = vand_s8(v22, 0x300000003);
  v405[2] = v22;
  v405[0] = v23;
  v24 = v9[19].u32[0];
  v25 = *&v9[17] + v24 * (v22.i32[1] >> 10) + (v22.i32[0] >> 10);
  if (v9->i32[1] > 1u)
  {
    v26 = &v9[23];
    v27 = v9[25].u8[0];
    if (v9[22].i32[1])
    {
      v28 = (&v406 >> 1);
    }

    else
    {
      v28 = &v406;
    }

    v29 = *(v10 + 56);
    v30 = *(v10 + 64);
    v31 = *(v10 + 64);
    *(v10 + 56) = &v406;
    *(v10 + 64) = 128;
    sub_27798DA3C(v25, v24, v28, 128, v10, v405);
    if (!*(v10 + 76) && *(v10 + 195) == 3)
    {
      v32 = *(v10 + 184);
      v33 = *(v10 + 112);
      v34 = *(v10 + 116);
      v35 = vdupq_n_s16(*(v10 + 68) - *(v10 + 176) + *(v10 + 72) - 6);
      if (*(v10 + 194))
      {
        if (v33 < 16)
        {
          if (v33 == 8)
          {
            if (v34 <= 1)
            {
              v63 = 1;
            }

            else
            {
              v63 = *(v10 + 116);
            }

            v64 = &v406;
            v65 = v29;
            do
            {
              *v32++ = vqsub_u8(0x1A1A1A1A1A1A1A1ALL, vshrn_n_s16(vrshlq_u16(vabdq_u16(*v65, *v64), v35), 4uLL));
              v64 += 16;
              v65 = (v65 + 2 * v30);
              --v63;
            }

            while (v63);
          }

          else if (v33 == 4)
          {
            v53 = 0;
            v54 = &v406;
            v55 = v29;
            do
            {
              v56.i64[0] = *v55;
              v56.i64[1] = *(v55 + 2 * v30);
              v57.i64[0] = *v54;
              v57.i64[1] = v54[32];
              *v32++ = vqsub_u8(0x1A1A1A1A1A1A1A1ALL, vshrn_n_s16(vrshlq_u16(vabdq_u16(v56, v57), v35), 4uLL));
              v54 += 64;
              v53 += 2;
              v55 = (v55 + 4 * v30);
            }

            while (v53 < v34);
          }
        }

        else
        {
          v36 = 0;
          if (v34 <= 1)
          {
            v34 = 1;
          }

          v37 = &v406;
          v38.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
          v38.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
          v39 = v29;
          do
          {
            v40 = 0;
            for (i = 0; i < v33; i += 16)
            {
              *v32[i / 8].i8 = vqsubq_u8(v38, vshrn_high_n_s16(vshrn_n_s16(vrshlq_u16(vabdq_u16(*v39[v40].i8, *&v37[v40]), v35), 4uLL), vrshlq_u16(vabdq_u16(*v39[v40 + 2].i8, *&v37[v40 + 2]), v35), 4uLL));
              v40 += 4;
            }

            v32 = (v32 + i);
            v37 += 32;
            ++v36;
            v39 = (v39 + 2 * v30);
          }

          while (v36 != v34);
        }
      }

      else if (v33 < 16)
      {
        if (v33 == 8)
        {
          if (v34 <= 1)
          {
            v66 = 1;
          }

          else
          {
            v66 = *(v10 + 116);
          }

          v67 = &v406;
          v68 = v29;
          do
          {
            *v32++ = vmin_u8(vadd_s8(vshrn_n_s16(vrshlq_u16(vabdq_u16(*v68, *v67), v35), 4uLL), 0x2626262626262626), 0x4040404040404040);
            v67 += 16;
            v68 = (v68 + 2 * v30);
            --v66;
          }

          while (v66);
        }

        else if (v33 == 4)
        {
          v58 = 0;
          v59 = &v406;
          v60 = v29;
          do
          {
            v61.i64[0] = *v60;
            v61.i64[1] = *(v60 + 2 * v30);
            v62.i64[0] = *v59;
            v62.i64[1] = v59[32];
            *v32++ = vmin_u8(vadd_s8(vshrn_n_s16(vrshlq_u16(vabdq_u16(v61, v62), v35), 4uLL), 0x2626262626262626), 0x4040404040404040);
            v59 += 64;
            v58 += 2;
            v60 = (v60 + 4 * v30);
          }

          while (v58 < v34);
        }
      }

      else
      {
        v46 = 0;
        if (v34 <= 1)
        {
          v34 = 1;
        }

        v47 = &v406;
        v48.i64[0] = 0x2626262626262626;
        v48.i64[1] = 0x2626262626262626;
        v49.i64[0] = 0x4040404040404040;
        v49.i64[1] = 0x4040404040404040;
        v50 = v29;
        do
        {
          v51 = 0;
          for (j = 0; j < v33; j += 16)
          {
            *v32[j / 8].i8 = vminq_u8(vaddq_s8(vshrn_high_n_s16(vshrn_n_s16(vrshlq_u16(vabdq_u16(*v50[v51].i8, *&v47[v51]), v35), 4uLL), vrshlq_u16(vabdq_u16(*v50[v51 + 2].i8, *&v47[v51 + 2]), v35), 4uLL), v48), v49);
            v51 += 4;
          }

          v32 = (v32 + j);
          v47 += 32;
          ++v46;
          v50 = (v50 + 2 * v30);
        }

        while (v46 != v34);
      }
    }

    v70 = *(v10 + 112);
    v69 = *(v10 + 116);
    v71 = *(v10 + 164);
    if (*(v10 + 195) == 2)
    {
      v26 = (*&dword_27A722360[8 * v27 + 6] + (*(v10 + 193) << 7) + 8 * *(v10 + 192));
    }

    v72 = *(v10 + 160);
    v73 = *v26;
    v74 = byte_277C3CAFE[v27];
    if (*(v10 + 180))
    {
      v75 = *(v10 + 176);
      v76 = (2 * v13);
      v77 = v71 | v72;
      if (v75 == 10)
      {
        if (v77)
        {
          if ((v71 & v72) == 1)
          {
            if (v70 <= 7)
            {
              v291 = &v406;
              v292.i64[0] = 0x40004000400040;
              v292.i64[1] = 0x40004000400040;
              v293.i64[0] = 0xFC00FC00FC00FC00;
              v293.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v294 = *v73;
                v295 = *(v73 + v74);
                v296 = (v73 + v74 + v74);
                v297 = *v296;
                v298 = (v296 + v74);
                v299 = vrshr_n_u8(vqadd_u8(vpadd_s8(v294, v297), vpadd_s8(v295, *v298)), 2uLL);
                v300 = vmovl_u8(v299);
                v301 = vsubw_u8(v292, v299);
                v302.i64[0] = 0x1700000017;
                v302.i64[1] = 0x1700000017;
                v303.i64[0] = 0x1700000017;
                v303.i64[1] = 0x1700000017;
                v304 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v302, *v300.i8, *v29), *v301.i8, *v291), 0xAuLL), vmlal_u16(vmlal_u16(v303, *&vextq_s8(v300, v300, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v301, v301, 8uLL), v291[32]), 0xAuLL), v293);
                v29 = (v29 + 2 * (2 * v31));
                *v76 = v304.i64[0];
                *(v76 + 2 * v12) = v304.i64[1];
                v76 = (v76 + 2 * (2 * v12));
                v73 = (v298 + v74);
                v291 += 64;
                v69 -= 2;
              }

              while (v69);
            }

            else
            {
              v98 = (2 * v74);
              v99 = v73 + v74;
              v100 = &v406;
              v101.i64[0] = 0x40004000400040;
              v101.i64[1] = 0x40004000400040;
              v102.i64[0] = 0xFC00FC00FC00FC00;
              v102.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v103 = 0;
                for (k = 0; k < v70; k += 8)
                {
                  v105 = vrshr_n_u8(vqadd_u8(*&vpaddq_s8(*v73[v103].i8, *v73[v103].i8), *&vpaddq_s8(*&v99[v103 * 8], *&v99[v103 * 8])), 2uLL);
                  v106 = vmovl_u8(v105);
                  v107 = vsubw_u8(v101, v105);
                  v108.i64[0] = 0x1700000017;
                  v108.i64[1] = 0x1700000017;
                  v109.i64[0] = 0x1700000017;
                  v109.i64[1] = 0x1700000017;
                  *&v76[v103] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v108, *v106.i8, v29[v103]), *v107.i8, v100[v103]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v109, v106, *v29[v103].i8), v107, *&v100[v103]), 0xAuLL), v102);
                  v103 += 2;
                }

                v73 = (v73 + v98);
                v100 += 32;
                v76 = (v76 + 2 * v12);
                v29 = (v29 + 2 * v30);
                v99 += v98;
                --v69;
              }

              while (v69);
            }
          }

          else if (v72 != 1 || v71)
          {
            v279 = (2 * v74);
            if (v70 <= 7)
            {
              v356 = &v406;
              v357.i64[0] = 0x40004000400040;
              v357.i64[1] = 0x40004000400040;
              v358.i64[0] = 0xFC00FC00FC00FC00;
              v358.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v359.i32[0] = v73->i32[0];
                v359.i32[1] = *(v73->i32 + v279);
                v360.i32[0] = *(v73->i32 + v74);
                v360.i32[1] = *(v73->i32 + 3 * v74);
                v361 = vrhadd_u8(v359, v360);
                v362 = vmovl_u8(v361);
                v363 = vsubw_u8(v357, v361);
                v364.i64[0] = 0x1700000017;
                v364.i64[1] = 0x1700000017;
                v365.i64[0] = 0x1700000017;
                v365.i64[1] = 0x1700000017;
                v366 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v364, *v362.i8, *v29), *v363.i8, *v356), 0xAuLL), vmlal_u16(vmlal_u16(v365, *&vextq_s8(v362, v362, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v363, v363, 8uLL), v356[32]), 0xAuLL), v358);
                *v76 = v366.i64[0];
                v73 = (v73 + 4 * v74);
                *(v76 + 2 * v12) = v366.i64[1];
                v356 += 64;
                v29 = (v29 + 2 * (2 * v31));
                v76 = (v76 + 2 * (2 * v12));
                v69 -= 2;
              }

              while (v69);
            }

            else
            {
              v280 = v73 + v74;
              v281 = &v406;
              v282.i64[0] = 0x40004000400040;
              v282.i64[1] = 0x40004000400040;
              v283.i64[0] = 0xFC00FC00FC00FC00;
              v283.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v284 = 0;
                for (m = 0; m < v70; m += 8)
                {
                  v286 = vrhadd_u8(v73[m / 8], *&v280[m]);
                  v287 = vmovl_u8(v286);
                  v288 = vsubw_u8(v282, v286);
                  v289.i64[0] = 0x1700000017;
                  v289.i64[1] = 0x1700000017;
                  v290.i64[0] = 0x1700000017;
                  v290.i64[1] = 0x1700000017;
                  *&v76[v284] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v289, *v287.i8, v29[v284]), *v288.i8, v281[v284]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v290, v287, *v29[v284].i8), v288, *&v281[v284]), 0xAuLL), v283);
                  v284 += 2;
                }

                v73 = (v73 + v279);
                v281 += 32;
                v76 = (v76 + 2 * v12);
                v29 = (v29 + 2 * v30);
                v280 += v279;
                --v69;
              }

              while (v69);
            }
          }

          else if (v70 <= 7)
          {
            v376 = &v406;
            v377.i64[0] = 0x40004000400040;
            v377.i64[1] = 0x40004000400040;
            v378.i64[0] = 0xFC00FC00FC00FC00;
            v378.i64[1] = 0xFC00FC00FC00FC00;
            do
            {
              v379 = vrshr_n_u8(vpadd_s8(*v73, *(v73 + v74)), 1uLL);
              v380 = vmovl_u8(v379);
              v381 = vsubw_u8(v377, v379);
              v382.i64[0] = 0x1700000017;
              v382.i64[1] = 0x1700000017;
              v383.i64[0] = 0x1700000017;
              v383.i64[1] = 0x1700000017;
              v384 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v382, *v380.i8, *v29), *v381.i8, *v376), 0xAuLL), vmlal_u16(vmlal_u16(v383, *&vextq_s8(v380, v380, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v381, v381, 8uLL), v376[32]), 0xAuLL), v378);
              *v76 = v384.i64[0];
              v73 = (v73 + 2 * v74);
              *(v76 + 2 * v12) = v384.i64[1];
              v376 += 64;
              v29 = (v29 + 2 * (2 * v31));
              v76 = (v76 + 2 * (2 * v12));
              v69 -= 2;
            }

            while (v69);
          }

          else
          {
            v184 = &v406;
            v185.i64[0] = 0x40004000400040;
            v185.i64[1] = 0x40004000400040;
            v186.i64[0] = 0xFC00FC00FC00FC00;
            v186.i64[1] = 0xFC00FC00FC00FC00;
            do
            {
              v187 = 0;
              for (n = 0; n < v70; n += 8)
              {
                v189 = vrshr_n_u8(vpadd_s8(v73[v187], v73[v187 + 1]), 1uLL);
                v190 = vmovl_u8(v189);
                v191 = vsubw_u8(v185, v189);
                v192.i64[0] = 0x1700000017;
                v192.i64[1] = 0x1700000017;
                v193.i64[0] = 0x1700000017;
                v193.i64[1] = 0x1700000017;
                *&v76[v187] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v192, *v190.i8, v29[v187]), *v191.i8, v184[v187]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v193, v190, *v29[v187].i8), v191, *&v184[v187]), 0xAuLL), v186);
                v187 += 2;
              }

              v73 = (v73 + v74);
              v184 += 32;
              v76 = (v76 + 2 * v12);
              v29 = (v29 + 2 * v30);
              --v69;
            }

            while (v69);
          }
        }

        else if (v70 <= 7)
        {
          v235 = &v406;
          v236.i64[0] = 0x40004000400040;
          v236.i64[1] = 0x40004000400040;
          v237.i64[0] = 0xFC00FC00FC00FC00;
          v237.i64[1] = 0xFC00FC00FC00FC00;
          do
          {
            v238.i32[0] = v73->i32[0];
            v238.i32[1] = *(v73->i32 + v74);
            v239 = vmovl_u8(v238);
            v240 = vsubw_u8(v236, v238);
            v241.i64[0] = 0x1700000017;
            v241.i64[1] = 0x1700000017;
            v242.i64[0] = 0x1700000017;
            v242.i64[1] = 0x1700000017;
            v243 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v241, *v239.i8, *v29), *v240.i8, *v235), 0xAuLL), vmlal_u16(vmlal_u16(v242, *&vextq_s8(v239, v239, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v240, v240, 8uLL), v235[32]), 0xAuLL), v237);
            *v76 = v243.i64[0];
            v73 = (v73 + 2 * v74);
            *(v76 + 2 * v12) = v243.i64[1];
            v235 += 64;
            v29 = (v29 + 2 * (2 * v31));
            v76 = (v76 + 2 * (2 * v12));
            v69 -= 2;
          }

          while (v69);
        }

        else
        {
          v148 = &v406;
          v149.i64[0] = 0x40004000400040;
          v149.i64[1] = 0x40004000400040;
          v150.i64[0] = 0xFC00FC00FC00FC00;
          v150.i64[1] = 0xFC00FC00FC00FC00;
          do
          {
            v151 = 0;
            for (ii = 0; ii < v70; ii += 8)
            {
              v153 = v73[ii / 8];
              v154 = vmovl_u8(v153);
              v155 = vsubw_u8(v149, v153);
              v156.i64[0] = 0x1700000017;
              v156.i64[1] = 0x1700000017;
              v157.i64[0] = 0x1700000017;
              v157.i64[1] = 0x1700000017;
              *&v76[v151] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v156, *v154.i8, v29[v151]), *v155.i8, v148[v151]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v157, v154, *v29[v151].i8), v155, *&v148[v151]), 0xAuLL), v150);
              v151 += 2;
            }

            v73 = (v73 + v74);
            v148 += 32;
            v76 = (v76 + 2 * v12);
            v29 = (v29 + 2 * v30);
            --v69;
          }

          while (v69);
        }
      }

      else if (v75 == 12)
      {
        if (v77)
        {
          if ((v71 & v72) == 1)
          {
            if (v70 <= 7)
            {
              v265 = &v406;
              v266.i64[0] = 0x40004000400040;
              v266.i64[1] = 0x40004000400040;
              v267.i64[0] = 0xF000F000F000F000;
              v267.i64[1] = 0xF000F000F000F000;
              do
              {
                v268 = *v73;
                v269 = *(v73 + v74);
                v270 = (v73 + v74 + v74);
                v271 = *v270;
                v272 = (v270 + v74);
                v273 = vrshr_n_u8(vqadd_u8(vpadd_s8(v268, v271), vpadd_s8(v269, *v272)), 2uLL);
                v274 = vmovl_u8(v273);
                v275 = vsubw_u8(v266, v273);
                v276.i64[0] = 0x1700000017;
                v276.i64[1] = 0x1700000017;
                v277.i64[0] = 0x1700000017;
                v277.i64[1] = 0x1700000017;
                v278 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v276, *v274.i8, *v29), *v275.i8, *v265), 8uLL), vmlal_u16(vmlal_u16(v277, *&vextq_s8(v274, v274, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v275, v275, 8uLL), v265[32]), 8uLL), v267);
                v29 = (v29 + 2 * (2 * v31));
                *v76 = v278.i64[0];
                *(v76 + 2 * v12) = v278.i64[1];
                v76 = (v76 + 2 * (2 * v12));
                v73 = (v272 + v74);
                v265 += 64;
                v69 -= 2;
              }

              while (v69);
            }

            else
            {
              v78 = (2 * v74);
              v79 = v73 + v74;
              v80 = &v406;
              v81.i64[0] = 0x40004000400040;
              v81.i64[1] = 0x40004000400040;
              v82.i64[0] = 0xF000F000F000F000;
              v82.i64[1] = 0xF000F000F000F000;
              do
              {
                v83 = 0;
                for (jj = 0; jj < v70; jj += 8)
                {
                  v85 = vrshr_n_u8(vqadd_u8(*&vpaddq_s8(*v73[v83].i8, *v73[v83].i8), *&vpaddq_s8(*&v79[v83 * 8], *&v79[v83 * 8])), 2uLL);
                  v86 = vmovl_u8(v85);
                  v87 = vsubw_u8(v81, v85);
                  v88.i64[0] = 0x1700000017;
                  v88.i64[1] = 0x1700000017;
                  v89.i64[0] = 0x1700000017;
                  v89.i64[1] = 0x1700000017;
                  *&v76[v83] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v88, *v86.i8, v29[v83]), *v87.i8, v80[v83]), 8uLL), vmlal_high_u16(vmlal_high_u16(v89, v86, *v29[v83].i8), v87, *&v80[v83]), 8uLL), v82);
                  v83 += 2;
                }

                v73 = (v73 + v78);
                v80 += 32;
                v76 = (v76 + 2 * v12);
                v29 = (v29 + 2 * v30);
                v79 += v78;
                --v69;
              }

              while (v69);
            }
          }

          else if (v72 != 1 || v71)
          {
            v253 = (2 * v74);
            if (v70 <= 7)
            {
              v345 = &v406;
              v346.i64[0] = 0x40004000400040;
              v346.i64[1] = 0x40004000400040;
              v347.i64[0] = 0xF000F000F000F000;
              v347.i64[1] = 0xF000F000F000F000;
              do
              {
                v348.i32[0] = v73->i32[0];
                v348.i32[1] = *(v73->i32 + v253);
                v349.i32[0] = *(v73->i32 + v74);
                v349.i32[1] = *(v73->i32 + 3 * v74);
                v350 = vrhadd_u8(v348, v349);
                v351 = vmovl_u8(v350);
                v352 = vsubw_u8(v346, v350);
                v353.i64[0] = 0x1700000017;
                v353.i64[1] = 0x1700000017;
                v354.i64[0] = 0x1700000017;
                v354.i64[1] = 0x1700000017;
                v355 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v353, *v351.i8, *v29), *v352.i8, *v345), 8uLL), vmlal_u16(vmlal_u16(v354, *&vextq_s8(v351, v351, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v352, v352, 8uLL), v345[32]), 8uLL), v347);
                *v76 = v355.i64[0];
                v73 = (v73 + 4 * v74);
                *(v76 + 2 * v12) = v355.i64[1];
                v345 += 64;
                v29 = (v29 + 2 * (2 * v31));
                v76 = (v76 + 2 * (2 * v12));
                v69 -= 2;
              }

              while (v69);
            }

            else
            {
              v254 = v73 + v74;
              v255 = &v406;
              v256.i64[0] = 0x40004000400040;
              v256.i64[1] = 0x40004000400040;
              v257.i64[0] = 0xF000F000F000F000;
              v257.i64[1] = 0xF000F000F000F000;
              do
              {
                v258 = 0;
                for (kk = 0; kk < v70; kk += 8)
                {
                  v260 = vrhadd_u8(v73[kk / 8], *&v254[kk]);
                  v261 = vmovl_u8(v260);
                  v262 = vsubw_u8(v256, v260);
                  v263.i64[0] = 0x1700000017;
                  v263.i64[1] = 0x1700000017;
                  v264.i64[0] = 0x1700000017;
                  v264.i64[1] = 0x1700000017;
                  *&v76[v258] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v263, *v261.i8, v29[v258]), *v262.i8, v255[v258]), 8uLL), vmlal_high_u16(vmlal_high_u16(v264, v261, *v29[v258].i8), v262, *&v255[v258]), 8uLL), v257);
                  v258 += 2;
                }

                v73 = (v73 + v253);
                v255 += 32;
                v76 = (v76 + 2 * v12);
                v29 = (v29 + 2 * v30);
                v254 += v253;
                --v69;
              }

              while (v69);
            }
          }

          else if (v70 <= 7)
          {
            v367 = &v406;
            v368.i64[0] = 0x40004000400040;
            v368.i64[1] = 0x40004000400040;
            v369.i64[0] = 0xF000F000F000F000;
            v369.i64[1] = 0xF000F000F000F000;
            do
            {
              v370 = vrshr_n_u8(vpadd_s8(*v73, *(v73 + v74)), 1uLL);
              v371 = vmovl_u8(v370);
              v372 = vsubw_u8(v368, v370);
              v373.i64[0] = 0x1700000017;
              v373.i64[1] = 0x1700000017;
              v374.i64[0] = 0x1700000017;
              v374.i64[1] = 0x1700000017;
              v375 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v373, *v371.i8, *v29), *v372.i8, *v367), 8uLL), vmlal_u16(vmlal_u16(v374, *&vextq_s8(v371, v371, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v372, v372, 8uLL), v367[32]), 8uLL), v369);
              *v76 = v375.i64[0];
              v73 = (v73 + 2 * v74);
              *(v76 + 2 * v12) = v375.i64[1];
              v367 += 64;
              v29 = (v29 + 2 * (2 * v31));
              v76 = (v76 + 2 * (2 * v12));
              v69 -= 2;
            }

            while (v69);
          }

          else
          {
            v174 = &v406;
            v175.i64[0] = 0x40004000400040;
            v175.i64[1] = 0x40004000400040;
            v176.i64[0] = 0xF000F000F000F000;
            v176.i64[1] = 0xF000F000F000F000;
            do
            {
              v177 = 0;
              for (mm = 0; mm < v70; mm += 8)
              {
                v179 = vrshr_n_u8(vpadd_s8(v73[v177], v73[v177 + 1]), 1uLL);
                v180 = vmovl_u8(v179);
                v181 = vsubw_u8(v175, v179);
                v182.i64[0] = 0x1700000017;
                v182.i64[1] = 0x1700000017;
                v183.i64[0] = 0x1700000017;
                v183.i64[1] = 0x1700000017;
                *&v76[v177] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v182, *v180.i8, v29[v177]), *v181.i8, v174[v177]), 8uLL), vmlal_high_u16(vmlal_high_u16(v183, v180, *v29[v177].i8), v181, *&v174[v177]), 8uLL), v176);
                v177 += 2;
              }

              v73 = (v73 + v74);
              v174 += 32;
              v76 = (v76 + 2 * v12);
              v29 = (v29 + 2 * v30);
              --v69;
            }

            while (v69);
          }
        }

        else if (v70 <= 7)
        {
          v226 = &v406;
          v227.i64[0] = 0x40004000400040;
          v227.i64[1] = 0x40004000400040;
          v228.i64[0] = 0xF000F000F000F000;
          v228.i64[1] = 0xF000F000F000F000;
          do
          {
            v229.i32[0] = v73->i32[0];
            v229.i32[1] = *(v73->i32 + v74);
            v230 = vmovl_u8(v229);
            v231 = vsubw_u8(v227, v229);
            v232.i64[0] = 0x1700000017;
            v232.i64[1] = 0x1700000017;
            v233.i64[0] = 0x1700000017;
            v233.i64[1] = 0x1700000017;
            v234 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v232, *v230.i8, *v29), *v231.i8, *v226), 8uLL), vmlal_u16(vmlal_u16(v233, *&vextq_s8(v230, v230, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v231, v231, 8uLL), v226[32]), 8uLL), v228);
            *v76 = v234.i64[0];
            v73 = (v73 + 2 * v74);
            *(v76 + 2 * v12) = v234.i64[1];
            v226 += 64;
            v29 = (v29 + 2 * (2 * v31));
            v76 = (v76 + 2 * (2 * v12));
            v69 -= 2;
          }

          while (v69);
        }

        else
        {
          v138 = &v406;
          v139.i64[0] = 0x40004000400040;
          v139.i64[1] = 0x40004000400040;
          v140.i64[0] = 0xF000F000F000F000;
          v140.i64[1] = 0xF000F000F000F000;
          do
          {
            v141 = 0;
            for (nn = 0; nn < v70; nn += 8)
            {
              v143 = v73[nn / 8];
              v144 = vmovl_u8(v143);
              v145 = vsubw_u8(v139, v143);
              v146.i64[0] = 0x1700000017;
              v146.i64[1] = 0x1700000017;
              v147.i64[0] = 0x1700000017;
              v147.i64[1] = 0x1700000017;
              *&v76[v141] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v146, *v144.i8, v29[v141]), *v145.i8, v138[v141]), 8uLL), vmlal_high_u16(vmlal_high_u16(v147, v144, *v29[v141].i8), v145, *&v138[v141]), 8uLL), v140);
              v141 += 2;
            }

            v73 = (v73 + v74);
            v138 += 32;
            v76 = (v76 + 2 * v12);
            v29 = (v29 + 2 * v30);
            --v69;
          }

          while (v69);
        }
      }

      else if (v77)
      {
        if ((v71 & v72) == 1)
        {
          if (v70 <= 7)
          {
            v317 = &v406;
            v318.i64[0] = 0x40004000400040;
            v318.i64[1] = 0x40004000400040;
            v319.i64[0] = 0xFF00FF00FF00FFLL;
            v319.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v320 = *v73;
              v321 = *(v73 + v74);
              v322 = (v73 + v74 + v74);
              v323 = *v322;
              v324 = (v322 + v74);
              v325 = vrshr_n_u8(vqadd_u8(vpadd_s8(v320, v323), vpadd_s8(v321, *v324)), 2uLL);
              v326 = vmovl_u8(v325);
              v327 = vsubw_u8(v318, v325);
              v328.i64[0] = 0x500000005;
              v328.i64[1] = 0x500000005;
              v329.i64[0] = 0x500000005;
              v329.i64[1] = 0x500000005;
              v330 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v328, *v326.i8, *v29), *v327.i8, *v317), 0xAuLL), vmlal_u16(vmlal_u16(v329, *&vextq_s8(v326, v326, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v327, v327, 8uLL), v317[32]), 0xAuLL), v319);
              v29 = (v29 + 2 * (2 * v31));
              *v76 = v330.i64[0];
              *(v76 + 2 * v12) = v330.i64[1];
              v76 = (v76 + 2 * (2 * v12));
              v73 = (v324 + v74);
              v317 += 64;
              v69 -= 2;
            }

            while (v69);
          }

          else
          {
            v110 = (2 * v74);
            v111 = v73 + v74;
            v112 = &v406;
            v113.i64[0] = 0x40004000400040;
            v113.i64[1] = 0x40004000400040;
            v114.i64[0] = 0xFF00FF00FF00FFLL;
            v114.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v115 = 0;
              for (i1 = 0; i1 < v70; i1 += 8)
              {
                v117 = vrshr_n_u8(vqadd_u8(*&vpaddq_s8(*v73[v115].i8, *v73[v115].i8), *&vpaddq_s8(*&v111[v115 * 8], *&v111[v115 * 8])), 2uLL);
                v118 = vmovl_u8(v117);
                v119 = vsubw_u8(v113, v117);
                v120.i64[0] = 0x500000005;
                v120.i64[1] = 0x500000005;
                v121.i64[0] = 0x500000005;
                v121.i64[1] = 0x500000005;
                *&v76[v115] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v120, *v118.i8, v29[v115]), *v119.i8, v112[v115]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v121, v118, *v29[v115].i8), v119, *&v112[v115]), 0xAuLL), v114);
                v115 += 2;
              }

              v73 = (v73 + v110);
              v112 += 32;
              v76 = (v76 + 2 * v12);
              v29 = (v29 + 2 * v30);
              v111 += v110;
              --v69;
            }

            while (v69);
          }
        }

        else if (v72 != 1 || v71)
        {
          v305 = (2 * v74);
          if (v70 <= 7)
          {
            v385 = &v406;
            v386.i64[0] = 0x40004000400040;
            v386.i64[1] = 0x40004000400040;
            v387.i64[0] = 0xFF00FF00FF00FFLL;
            v387.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v388.i32[0] = v73->i32[0];
              v388.i32[1] = *(v73->i32 + v305);
              v389.i32[0] = *(v73->i32 + v74);
              v389.i32[1] = *(v73->i32 + 3 * v74);
              v390 = vrhadd_u8(v388, v389);
              v391 = vmovl_u8(v390);
              v392 = vsubw_u8(v386, v390);
              v393.i64[0] = 0x500000005;
              v393.i64[1] = 0x500000005;
              v394.i64[0] = 0x500000005;
              v394.i64[1] = 0x500000005;
              v395 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v393, *v391.i8, *v29), *v392.i8, *v385), 0xAuLL), vmlal_u16(vmlal_u16(v394, *&vextq_s8(v391, v391, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v392, v392, 8uLL), v385[32]), 0xAuLL), v387);
              *v76 = v395.i64[0];
              v73 = (v73 + 4 * v74);
              *(v76 + 2 * v12) = v395.i64[1];
              v385 += 64;
              v29 = (v29 + 2 * (2 * v31));
              v76 = (v76 + 2 * (2 * v12));
              v69 -= 2;
            }

            while (v69);
          }

          else
          {
            v306 = v73 + v74;
            v307 = &v406;
            v308.i64[0] = 0x40004000400040;
            v308.i64[1] = 0x40004000400040;
            v309.i64[0] = 0xFF00FF00FF00FFLL;
            v309.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v310 = 0;
              for (i2 = 0; i2 < v70; i2 += 8)
              {
                v312 = vrhadd_u8(v73[i2 / 8], *&v306[i2]);
                v313 = vmovl_u8(v312);
                v314 = vsubw_u8(v308, v312);
                v315.i64[0] = 0x500000005;
                v315.i64[1] = 0x500000005;
                v316.i64[0] = 0x500000005;
                v316.i64[1] = 0x500000005;
                *&v76[v310] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v315, *v313.i8, v29[v310]), *v314.i8, v307[v310]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v316, v313, *v29[v310].i8), v314, *&v307[v310]), 0xAuLL), v309);
                v310 += 2;
              }

              v73 = (v73 + v305);
              v307 += 32;
              v76 = (v76 + 2 * v12);
              v29 = (v29 + 2 * v30);
              v306 += v305;
              --v69;
            }

            while (v69);
          }
        }

        else if (v70 <= 7)
        {
          v396 = &v406;
          v397.i64[0] = 0x40004000400040;
          v397.i64[1] = 0x40004000400040;
          v398.i64[0] = 0xFF00FF00FF00FFLL;
          v398.i64[1] = 0xFF00FF00FF00FFLL;
          do
          {
            v399 = vrshr_n_u8(vpadd_s8(*v73, *(v73 + v74)), 1uLL);
            v400 = vmovl_u8(v399);
            v401 = vsubw_u8(v397, v399);
            v402.i64[0] = 0x500000005;
            v402.i64[1] = 0x500000005;
            v403.i64[0] = 0x500000005;
            v403.i64[1] = 0x500000005;
            v404 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v402, *v400.i8, *v29), *v401.i8, *v396), 0xAuLL), vmlal_u16(vmlal_u16(v403, *&vextq_s8(v400, v400, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v401, v401, 8uLL), v396[32]), 0xAuLL), v398);
            *v76 = v404.i64[0];
            v73 = (v73 + 2 * v74);
            *(v76 + 2 * v12) = v404.i64[1];
            v396 += 64;
            v29 = (v29 + 2 * (2 * v31));
            v76 = (v76 + 2 * (2 * v12));
            v69 -= 2;
          }

          while (v69);
        }

        else
        {
          v194 = &v406;
          v195.i64[0] = 0x40004000400040;
          v195.i64[1] = 0x40004000400040;
          v196.i64[0] = 0xFF00FF00FF00FFLL;
          v196.i64[1] = 0xFF00FF00FF00FFLL;
          do
          {
            v197 = 0;
            for (i3 = 0; i3 < v70; i3 += 8)
            {
              v199 = vrshr_n_u8(vpadd_s8(v73[v197], v73[v197 + 1]), 1uLL);
              v200 = vmovl_u8(v199);
              v201 = vsubw_u8(v195, v199);
              v202.i64[0] = 0x500000005;
              v202.i64[1] = 0x500000005;
              v203.i64[0] = 0x500000005;
              v203.i64[1] = 0x500000005;
              *&v76[v197] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v202, *v200.i8, v29[v197]), *v201.i8, v194[v197]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v203, v200, *v29[v197].i8), v201, *&v194[v197]), 0xAuLL), v196);
              v197 += 2;
            }

            v73 = (v73 + v74);
            v194 += 32;
            v76 = (v76 + 2 * v12);
            v29 = (v29 + 2 * v30);
            --v69;
          }

          while (v69);
        }
      }

      else if (v70 <= 7)
      {
        v244 = &v406;
        v245.i64[0] = 0x40004000400040;
        v245.i64[1] = 0x40004000400040;
        v246.i64[0] = 0xFF00FF00FF00FFLL;
        v246.i64[1] = 0xFF00FF00FF00FFLL;
        do
        {
          v247.i32[0] = v73->i32[0];
          v247.i32[1] = *(v73->i32 + v74);
          v248 = vmovl_u8(v247);
          v249 = vsubw_u8(v245, v247);
          v250.i64[0] = 0x500000005;
          v250.i64[1] = 0x500000005;
          v251.i64[0] = 0x500000005;
          v251.i64[1] = 0x500000005;
          v252 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v250, *v248.i8, *v29), *v249.i8, *v244), 0xAuLL), vmlal_u16(vmlal_u16(v251, *&vextq_s8(v248, v248, 8uLL), *(v29 + 2 * v30)), *&vextq_s8(v249, v249, 8uLL), v244[32]), 0xAuLL), v246);
          *v76 = v252.i64[0];
          v73 = (v73 + 2 * v74);
          *(v76 + 2 * v12) = v252.i64[1];
          v244 += 64;
          v29 = (v29 + 2 * (2 * v31));
          v76 = (v76 + 2 * (2 * v12));
          v69 -= 2;
        }

        while (v69);
      }

      else
      {
        v158 = &v406;
        v159.i64[0] = 0x40004000400040;
        v159.i64[1] = 0x40004000400040;
        v160.i64[0] = 0xFF00FF00FF00FFLL;
        v160.i64[1] = 0xFF00FF00FF00FFLL;
        do
        {
          v161 = 0;
          for (i4 = 0; i4 < v70; i4 += 8)
          {
            v163 = v73[i4 / 8];
            v164 = vmovl_u8(v163);
            v165 = vsubw_u8(v159, v163);
            v166.i64[0] = 0x500000005;
            v166.i64[1] = 0x500000005;
            v167.i64[0] = 0x500000005;
            v167.i64[1] = 0x500000005;
            *&v76[v161] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v166, *v164.i8, v29[v161]), *v165.i8, v158[v161]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v167, v164, *v29[v161].i8), v165, *&v158[v161]), 0xAuLL), v160);
            v161 += 2;
          }

          v73 = (v73 + v74);
          v158 += 32;
          v76 = (v76 + 2 * v12);
          v29 = (v29 + 2 * v30);
          --v69;
        }

        while (v69);
      }
    }

    else if (v71 | v72)
    {
      if (v72 == 1 && v71 == 1)
      {
        if (v70 <= 7)
        {
          v214 = &v406;
          v215.i64[0] = 0x40004000400040;
          v215.i64[1] = 0x40004000400040;
          v216.i64[0] = 0x1800180018001800;
          v216.i64[1] = 0x1800180018001800;
          do
          {
            v217 = *v73;
            v218 = (v73 + v74);
            v219 = *v218;
            v220 = (v218 + v74);
            v221 = *v220;
            v222 = (v220 + v74);
            v223 = vrshr_n_u8(vqadd_u8(vpadd_s8(v217, v221), vpadd_s8(v219, *v222)), 2uLL);
            v224 = vmovl_u8(v223);
            v225 = vsubw_u8(v215, v223);
            *v225.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v225.i8, *v214), *v224.i8, *v29), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v225, v225, 8uLL), v214[32]), *&vextq_s8(v224, v224, 8uLL), *(v29 + 2 * v30)), 6uLL), v216), 4uLL);
            v214 += 64;
            *v13 = v225.i32[0];
            *(v13 + v12) = v225.i32[1];
            v13 += (2 * v12);
            v29 = (v29 + 2 * (2 * v31));
            v73 = (v222 + v74);
            v69 -= 2;
          }

          while (v69);
        }

        else
        {
          v90 = &v406;
          v91.i64[0] = 0x40004000400040;
          v91.i64[1] = 0x40004000400040;
          v92.i64[0] = 0x1800180018001800;
          v92.i64[1] = 0x1800180018001800;
          do
          {
            v93 = 0;
            for (i5 = 0; i5 < v70; i5 += 8)
            {
              v95 = vrshr_n_u8(vqadd_u8(vpadd_s8(v73[v93], v73[v93 + 1]), vpadd_s8(*(v73 + v74 + v93 * 8), *(&v73[1] + v74 + v93 * 8))), 2uLL);
              v96 = vsubw_u8(v91, v95);
              v97 = vmovl_u8(v95);
              *(v13 + i5) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v96.i8, v90[v93]), *v97.i8, v29[v93]), 6uLL), vmlal_high_u16(vmull_high_u16(v96, *&v90[v93]), v97, *v29[v93].i8), 6uLL), v92), 4uLL);
              v93 += 2;
            }

            v73 = (v73 + 2 * v74);
            v90 += 32;
            v13 += v12;
            v29 = (v29 + 2 * v30);
            --v69;
          }

          while (v69);
        }
      }

      else if (v72 != 1 || v71)
      {
        v204 = (2 * v74);
        if (v70 <= 7)
        {
          v331 = &v406;
          v332.i64[0] = 0x40004000400040;
          v332.i64[1] = 0x40004000400040;
          v333.i64[0] = 0x1800180018001800;
          v333.i64[1] = 0x1800180018001800;
          do
          {
            v334.i32[0] = v73->i32[0];
            v335.i32[0] = *(v73->i32 + v74);
            v334.i32[1] = *(v73->i32 + v204);
            v335.i32[1] = *(v73->i32 + 3 * v74);
            v336 = vrhadd_u8(v334, v335);
            v337 = vmovl_u8(v336);
            v338 = vsubw_u8(v332, v336);
            *v338.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v338.i8, *v331), *v337.i8, *v29), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v338, v338, 8uLL), v331[32]), *&vextq_s8(v337, v337, 8uLL), *(v29 + 2 * v30)), 6uLL), v333), 4uLL);
            v73 = (v73 + 4 * v74);
            *v13 = v338.i32[0];
            *(v13 + v12) = v338.i32[1];
            v331 += 64;
            v13 += (2 * v12);
            v29 = (v29 + 2 * (2 * v31));
            v69 -= 2;
          }

          while (v69);
        }

        else
        {
          v205 = v73 + v74;
          v206 = &v406;
          v207.i64[0] = 0x40004000400040;
          v207.i64[1] = 0x40004000400040;
          v208.i64[0] = 0x1800180018001800;
          v208.i64[1] = 0x1800180018001800;
          do
          {
            v209 = 0;
            for (i6 = 0; i6 < v70; i6 += 8)
            {
              v211 = vrhadd_u8(v73[i6 / 8], *&v205[i6]);
              v212 = vmovl_u8(v211);
              v213 = vsubw_u8(v207, v211);
              *(v13 + i6) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v213.i8, v206[v209]), *v212.i8, v29[v209]), 6uLL), vmlal_high_u16(vmull_high_u16(v213, *&v206[v209]), v212, *v29[v209].i8), 6uLL), v208), 4uLL);
              v209 += 2;
            }

            v73 = (v73 + v204);
            v206 += 32;
            v13 += v12;
            v29 = (v29 + 2 * v30);
            v205 += v204;
            --v69;
          }

          while (v69);
        }
      }

      else if (v70 <= 7)
      {
        v339 = &v406;
        v340.i64[0] = 0x40004000400040;
        v340.i64[1] = 0x40004000400040;
        v341.i64[0] = 0x1800180018001800;
        v341.i64[1] = 0x1800180018001800;
        do
        {
          v342 = vrshr_n_u8(vpadd_s8(*v73, *(v73 + v74)), 1uLL);
          v343 = vmovl_u8(v342);
          v344 = vsubw_u8(v340, v342);
          *v344.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v344.i8, *v339), *v343.i8, *v29), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v344, v344, 8uLL), v339[32]), *&vextq_s8(v343, v343, 8uLL), *(v29 + 2 * v30)), 6uLL), v341), 4uLL);
          v73 = (v73 + 2 * v74);
          *v13 = v344.i32[0];
          *(v13 + v12) = v344.i32[1];
          v339 += 64;
          v13 += (2 * v12);
          v29 = (v29 + 2 * (2 * v31));
          v69 -= 2;
        }

        while (v69);
      }

      else
      {
        v130 = &v406;
        v131.i64[0] = 0x40004000400040;
        v131.i64[1] = 0x40004000400040;
        v132.i64[0] = 0x1800180018001800;
        v132.i64[1] = 0x1800180018001800;
        do
        {
          v133 = 0;
          for (i7 = 0; i7 < v70; i7 += 8)
          {
            v135 = vrshr_n_u8(vpadd_s8(v73[v133], v73[v133 + 1]), 1uLL);
            v136 = vsubw_u8(v131, v135);
            v137 = vmovl_u8(v135);
            *(v13 + i7) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v136.i8, v130[v133]), *v137.i8, v29[v133]), 6uLL), vmlal_high_u16(vmull_high_u16(v136, *&v130[v133]), v137, *v29[v133].i8), 6uLL), v132), 4uLL);
            v133 += 2;
          }

          v73 = (v73 + v74);
          v130 += 32;
          v13 += v12;
          v29 = (v29 + 2 * v30);
          --v69;
        }

        while (v69);
      }
    }

    else if (v70 <= 7)
    {
      v168 = &v406;
      v169.i64[0] = 0x40004000400040;
      v169.i64[1] = 0x40004000400040;
      v170.i64[0] = 0x1800180018001800;
      v170.i64[1] = 0x1800180018001800;
      do
      {
        v171.i32[0] = v73->i32[0];
        v171.i32[1] = *(v73->i32 + v74);
        v172 = vmovl_u8(v171);
        v173 = vsubw_u8(v169, v171);
        *v173.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v173.i8, *v168), *v172.i8, *v29), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v173, v173, 8uLL), v168[32]), *&vextq_s8(v172, v172, 8uLL), *(v29 + 2 * v30)), 6uLL), v170), 4uLL);
        *v13 = v173.i32[0];
        v73 = (v73 + 2 * v74);
        *(v13 + v12) = v173.i32[1];
        v168 += 64;
        v13 += (2 * v12);
        v29 = (v29 + 2 * (2 * v31));
        v69 -= 2;
      }

      while (v69);
    }

    else
    {
      v122 = &v406;
      v123.i64[0] = 0x40004000400040;
      v123.i64[1] = 0x40004000400040;
      v124.i64[0] = 0x1800180018001800;
      v124.i64[1] = 0x1800180018001800;
      do
      {
        v125 = 0;
        for (i8 = 0; i8 < v70; i8 += 8)
        {
          v127 = v73[i8 / 8];
          v128 = vmovl_u8(v127);
          v129 = vsubw_u8(v123, v127);
          *(v13 + i8) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v129.i8, v122[v125]), *v128.i8, v29[v125]), 6uLL), vmlal_high_u16(vmull_high_u16(v129, *&v122[v125]), v128, *v29[v125].i8), 6uLL), v124), 4uLL);
          v125 += 2;
        }

        v73 = (v73 + v74);
        v122 += 32;
        v13 += v12;
        v29 = (v29 + 2 * v30);
        --v69;
      }

      while (v69);
    }
  }

  else
  {
    sub_27798DA3C(v25, v24, v13, v12, v9, v405);
  }
}

void sub_2779CCA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 7864);
  v6 = *(a1 + 88);
  v7 = *(a1 + 72) + (*(a3 + 20) >> 10) * v6 + (*(a3 + 16) >> 10);
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 80);
  *(a2 + 128) = *(a1 + 64);
  *(a2 + 144) = v10;
  v11 = *(v5 + 22);
  v12 = v11 == 4 || *(a1 + 184) >= 5u;
  v13 = &off_27A719828;
  if (v12)
  {
    v14 = &off_27A719868;
  }

  else
  {
    v14 = &off_27A719828;
  }

  v15 = &v14[2 * v11];
  v16 = *(v5 + 20);
  if (v16 == 4 || *(a1 + 185) >= 5u)
  {
    v13 = &off_27A719868;
  }

  *(a2 + 96) = v15;
  *(a2 + 104) = &v13[2 * v16];
  sub_27798DA3C(v7, v6, v8, v9, a2, a3);
}

void sub_2779CCAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v141 = v12;
  v142 = v13;
  v140 = __PAIR64__(v15, v14);
  v152 = v8;
  v183 = *MEMORY[0x277D85DE8];
  if (v10 <= v11)
  {
    v16 = v9;
    v144 = v9 + 16;
    v150 = v9 + 7944;
    v151 = v8 + 272;
    v148 = v8 + 416;
    v17 = v10;
    v143 = v11 + 1;
    v18 = v9 + 2608 * v10 + 64;
    v19 = vdup_n_s32(0x120u);
    v20 = 0uLL;
    v21 = 36;
    v149 = v8 + 240;
    v147 = v8 + 288;
    do
    {
      if (v17 && *(v16 + 12) != 1)
      {
        break;
      }

      v22 = *(v16 + 7864);
      v23 = *v22;
      v24 = v144 + 2608 * v17;
      v25 = *(v24 + 168);
      v26 = *(v24 + 169);
      v27 = **v22;
      v28 = *(*v22 + 167);
      *v159 = v17;
      v161 = v24;
      v145 = v18;
      if ((v28 & 0x80) == 0)
      {
        v30 = *(v24 + 4);
        v29 = *(v24 + 8);
        v31 = 0x10003uLL >> v27;
        v32 = (0x20005uLL >> v27) & (v29 != 0);
        if (((0x10003uLL >> v27) & (v30 != 0)) != 0 || v32)
        {
          v90 = (v32 << 63) >> 63;
          v91 = 8 * *(v16 + 8);
          v92 = v22 + v91 * v90;
LABEL_71:
          v93 = v90;
          v94 = (((0x10003uLL >> v27) & (v30 != 0)) << 63) >> 63;
          while (1)
          {
            v95 = *&v92[8 * v94];
            if ((*(v95 + 167) & 0x80) != 0 || *(v95 + 16) < 1)
            {
              break;
            }

            if (++v94 == 1)
            {
              v90 = v93 + 1;
              v92 += v91;
              if (v93)
              {
                goto LABEL_71;
              }

              v156 = 0;
              v96 = v30 != 0;
              v38 = v29 == 0;
              v97 = v29 != 0;
              v98 = byte_277C3CAFE[v27] >> v96;
              v99 = byte_277C3CAE8[v27];
              v100 = &byte_277C3BCDE[4 * v27 + 2 * v96];
              if (!v38)
              {
                ++v100;
              }

              v101 = *v100;
              v139 = byte_277C3CAE8[v101];
              v102 = v99 >> v97;
              v103 = *(v23 + 17);
              v104 = v31 & v96;
              if (v17 == 1)
              {
                v105 = 324;
              }

              else
              {
                v105 = 326;
              }

              v138 = (4 * (v140.i32[0] - v32)) >> v97;
              v106 = v103 > 0;
              v107 = (v32 << 31) >> 31;
              v108 = (4 * (v140.i32[1] - v104)) >> v96;
              if (v103 <= 0)
              {
                v109 = 11;
              }

              else
              {
                v109 = 7;
              }

              v137 = v104 << 63 >> 63;
              v146 = byte_277C3CAFE[v101];
              do
              {
                v110 = 0;
                v111 = v137;
                v154 = v107;
                do
                {
                  v158 = v111;
                  v160 = v110;
                  v112 = *(*(v16 + 7864) + 8 * (v111 + *(v16 + 8) * v107));
                  v113 = *(v24 + 40);
                  v114 = *(v149 + 4 * (*(v112 + 16) - 1));
                  v115 = *(v24 + 16) + (v156 * v113);
                  v116 = *(v148 + 8 * v114);
                  v117 = *&v116[v105];
                  v182 = 0;
                  *v181 = v20;
                  *&v181[16] = v20;
                  v179 = v20;
                  v180 = v20;
                  v177 = v20;
                  v178 = v20;
                  v175 = v20;
                  v176 = v20;
                  v173 = v20;
                  v174 = v20;
                  v171 = v20;
                  v172 = v20;
                  v118 = (*(*(v16 + 7960) + 192) >> 3) & 1;
                  v119 = *(v23 + 167);
                  v120 = *(v112 + 20);
                  HIDWORD(v177) = v108 + v160;
                  *&v181[4] = v118;
                  *&v181[28] = (v119 >> 7) & 1;
                  if ((*&v120 & 0xFF0000) == 0x40000 || v98 >= 5)
                  {
                    v122 = &off_27A719868;
                  }

                  else
                  {
                    v122 = &off_27A719828;
                  }

                  v123 = v120 == 4 || v102 >= 5;
                  v124 = &v122[2 * BYTE2(v120)];
                  if (v123)
                  {
                    v125 = &off_27A719868;
                  }

                  else
                  {
                    v125 = &off_27A719828;
                  }

                  v126 = &v125[2 * v120];
                  if ((v119 >> 7))
                  {
                    v124 = &off_27A719818;
                    v126 = &off_27A719818;
                  }

                  *&v176 = v124;
                  *(&v176 + 1) = v126;
                  *(&v180 + 1) = v147 + 16 * v114;
                  v127 = v116[317];
                  *(&v178 + 1) = v117;
                  *&v179 = __PAIR64__(v116[319], v127);
                  v128 = *(v16 + 10656);
                  *v181 = v128;
                  DWORD2(v179) = v116[321];
                  v129 = 21 - v128;
                  if (v103 > 0)
                  {
                    v129 = 7;
                  }

                  v130 = v128 <= 10;
                  v131 = v128 - 7;
                  if (v130)
                  {
                    v131 = 3;
                  }

                  if (v130)
                  {
                    v129 = v109;
                  }

                  *(&v174 + 4) = __PAIR64__(v129, v131);
                  DWORD2(v177) = v156 + v138;
                  __b = v20;
                  *&v177 = __PAIR64__(v102, v98);
                  *&v180 = *(v24 + 4);
                  v182 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(v19, vneg_s32(*&v180)), 0xAuLL)));
                  v173 = 0uLL;
                  LODWORD(v174) = 0;
                  HIDWORD(v174) = v17;
                  LODWORD(v175) = v106;
                  *(&v175 + 4) = 0;
                  HIDWORD(v175) = 0;
                  v132 = v103;
                  v133 = v16;
                  v134 = v109;
                  v135 = v106;
                  v136 = v98;
                  sub_2779CAFC0(v115 + v160, v113, &__b, v21, v17, &off_27A719868, v24, v98);
                  v17 = *v159;
                  v98 = v136;
                  v107 = v154;
                  v106 = v135;
                  v109 = v134;
                  v16 = v133;
                  v103 = v132;
                  v24 = v161;
                  v20 = 0uLL;
                  v110 = v160 + v136;
                  v111 = v158 + 1;
                }

                while (v160 + v136 < v146);
                v107 = v154 + 1;
                v156 += v102;
              }

              while (v156 < v139);
              goto LABEL_59;
            }
          }
        }
      }

      v33 = 0;
      v34 = *(v23 + 17);
      v153 = *(v24 + 16);
      v155 = (v24 + 16);
      v169 = 0;
      v35 = *(v16 + 10744);
      v36 = *(v23 + 2);
      v37 = byte_277C3CAFE[v27];
      if (v37 >= byte_277C3CAE8[v27])
      {
        LOBYTE(v37) = byte_277C3CAE8[v27];
      }

      v38 = v36 == 15 || v36 == 23;
      v39 = v38;
      v157 = v34;
      v40 = v34 <= 0 ? 1 : 2;
      do
      {
        v41 = *(v35 + 36 * *(v23 + v33 + 16) + 32) > 1u && v39;
        if (v37 <= 7u)
        {
          v41 = 0;
        }

        *(&v169 + v33++) = v41;
      }

      while (v40 != v33);
      v42 = 0;
      v43 = v34 > 0;
      v44 = vrev64_s32(*(v24 + 4));
      v45 = vshl_s32(vshl_n_s32(vsra_n_s32(v140, vshl_n_s32(vbic_s8(vmovn_s64(vshlq_u64(xmmword_277BB7360, vnegq_s64(vdupq_n_s64(v27)))), vceqz_s32(v44)), 0x1FuLL), 0x1FuLL), 2uLL), vneg_s32(v44));
      do
      {
        v46 = v151;
        if ((v28 & 0x80) == 0)
        {
          v46 = *(v150 + 8 * v42);
        }

        v47 = v155;
        if ((v28 & 0x80) == 0)
        {
          v47 = v18;
        }

        v48 = *(v23 + 24) == 2;
        v168[0] = *(&v169 + v42);
        v168[1] = v48;
        v182 = 0;
        *v181 = v20;
        *&v181[16] = v20;
        v179 = v20;
        v180 = v20;
        v177 = v20;
        v178 = v20;
        v175 = v20;
        v176 = v20;
        v173 = v20;
        v174 = v20;
        v171 = v20;
        v172 = v20;
        __b = v20;
        v49 = *(v16 + 10656);
        v50 = (*(*(v16 + 7960) + 192) >> 3) & 1;
        v51 = (*(v23 + 167) >> 7) & 1;
        v52 = *(v23 + 20);
        *&v177 = __PAIR64__(v26, v25);
        v53 = *(v161 + 4);
        *(&v177 + 1) = v45;
        *&v180 = v53;
        *v181 = v49;
        *&v181[4] = v50;
        *&v181[28] = v51;
        v182 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(v19, vneg_s32(v53)), 0xAuLL)));
        if (v51)
        {
          v59 = &off_27A719818;
          v57 = &off_27A719818;
        }

        else
        {
          if ((*&v52 & 0xFF0000) == 0x40000 || v25 >= 5)
          {
            v55 = &off_27A719868;
          }

          else
          {
            v55 = &off_27A719828;
          }

          v56 = v52 == 4 || v26 >= 5;
          v57 = &v55[2 * BYTE2(v52)];
          if (v56)
          {
            v58 = &off_27A719868;
          }

          else
          {
            v58 = &off_27A719828;
          }

          v59 = &v58[2 * v52];
        }

        *&v176 = v57;
        *(&v176 + 1) = v59;
        *(&v180 + 1) = v46;
        v60 = v47[1];
        v178 = *v47;
        v179 = v60;
        if (v157 <= 0)
        {
          v61 = *(v16 + 15032);
          v162 = 0;
          LODWORD(v163) = 0;
          if (v49 <= 10)
          {
            v63 = 11;
            v62 = 3;
          }

          else
          {
            v62 = v49 - 7;
            v63 = 21 - v49;
          }
        }

        else
        {
          DWORD1(__b) = 1;
          v61 = *(v16 + 15032);
          v162 = 0;
          LODWORD(v163) = 0;
          v62 = v49 - 7;
          if (v49 <= 10)
          {
            v62 = 3;
          }

          v63 = 7;
        }

        LODWORD(v173) = v42;
        *(&v173 + 1) = v61;
        LODWORD(v174) = 128;
        *(&v174 + 4) = __PAIR64__(v63, v62);
        HIDWORD(v174) = v17;
        LODWORD(v175) = v43;
        *(&v175 + 4) = v162;
        HIDWORD(v175) = v163;
        sub_27798E17C(v152, v23, &v175 + 2, &v175 + 3, &v175 + 1, v43);
        sub_27798D978(&__b, v168, v42, v16, v23);
        if ((*(v23 + 83) & 0xFE) == 2)
        {
          v181[24] = *v23;
          *&v181[8] = *(v23 + 72);
          if (v42 == 1)
          {
            LODWORD(v173) = 0;
            DWORD1(__b) = 2;
          }

          *&v181[8] = *(v16 + 10768);
        }

        sub_2779CAFC0(v153, *(v161 + 40), &__b, v64, v65, v66, v67, v68);
        ++v42;
        v18 += 32;
        v17 = *v159;
        v20 = 0uLL;
      }

      while (v40 != v42);
      v24 = v161;
LABEL_59:
      v76 = **(v16 + 7864);
      if (v76[16] < 1)
      {
        v77 = v145;
        v21 = 36;
      }

      else
      {
        v77 = v145;
        v21 = 36;
        if (!v76[17] && *v76 - 10 >= 0xFFFFFFF9 && v76[2] - 17 >= 0xFFFFFFFC)
        {
          v167 = 0;
          v78 = *(v16 + 2640);
          v162 = *(v16 + 32);
          v163 = v78;
          v164 = *(v16 + 5248);
          LODWORD(v78) = *(v16 + 2664);
          v165 = *(v16 + 56);
          v166 = v78;
          LODWORD(v167) = *(v16 + 5272);
          v79 = v142;
          if (!v142)
          {
            v79 = &v162;
          }

          v80 = *(v24 + 16);
          v81 = *(v24 + 40);
          v142 = v79;
          v82 = v17;
          if ((*(*(v16 + 7960) + 192) & 8) != 0)
          {
            sub_27798F54C(*(*(v152 + 24696) + 28), *(*(v152 + 24696) + 61), v16, v141, v17, v79, &__b >> 1, 128, v69, v70, v71, 0.0, v72, v73, v74, v75);
            v85 = v16;
            v86 = v141;
            v87 = v82;
            v88 = v80;
            v89 = v81;
            p_b = (&__b >> 1);
          }

          else
          {
            sub_27798F54C(*(*(v152 + 24696) + 28), *(*(v152 + 24696) + 61), v16, v141, v17, v79, &__b, 128, v69, v70, v71, 0.0, v72, v73, v74, v75);
            p_b = &__b;
            v85 = v16;
            v86 = v141;
            v87 = v82;
            v88 = v80;
            v89 = v81;
          }

          sub_27798F60C(v85, v86, v87, v88, v89, p_b, 128, v83);
          v17 = *v159;
          v77 = v145;
          v20 = 0uLL;
          v21 = 36;
        }
      }

      ++v17;
      v18 = v77 + 2608;
    }

    while (v143 != v17);
  }
}

void sub_2779CD490(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 + 7872;
  if (*(a2 + 7872) == 1)
  {
    v26 = 0;
    v27 = 0;
    v25[0] = result;
    v25[1] = a3;
    v25[2] = a4;
    v25[3] = a5;
    v25[4] = a6;
    LODWORD(v26) = *(a2 + 7928);
    v8 = *(a2 + 7864);
    v9 = **v8;
    v10 = *(*(result + 24696) + 77) ? 1 : 3;
    v24 = v10;
    v11 = *(a2 + 4);
    v12 = (v11 + *(a2 + 8308)) >= *(result + 536) ? *(result + 536) : v11 + *(a2 + 8308);
    if (((0x3EFFFCuLL >> v9) & 1) != 0 && v11 < v12)
    {
      v13 = 0;
      v14 = dword_277C31E5C[byte_277C42228[v9]];
      v15 = &(&v8[-v11])[-*(a2 + 8)];
      v16 = *(a2 + 4);
      do
      {
        v17 = **(v15 + 8 * v16);
        if ((0x1F07FFuLL >> v17))
        {
          v18 = byte_277C3F990[v17];
        }

        else
        {
          v18 = 16;
        }

        if (v18 == 1)
        {
          v19 = 2;
        }

        else
        {
          v19 = v18;
        }

        if (v18 == 1)
        {
          v20 = v16 & 0xFFFFFFFE;
        }

        else
        {
          v20 = v16;
        }

        if (v18 == 1)
        {
          v21 = v15 + 8 + 8 * (v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v21 = v15 + 8 * v16;
        }

        v22 = *v21;
        if ((*(*v21 + 167) & 0x80) != 0 || v22[16] >= 1)
        {
          ++v13;
          if (*(v6 + 436) >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = *(v6 + 436);
          }

          sub_2779CD630(a2, 0, v20 - v11, v23, 0, v22, v25, v24);
        }

        v16 = v20 + v19;
      }

      while ((v20 + v19) < v12 && v13 < v14);
    }
  }
}

void sub_2779CD630(int *a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5, char *a6, uint64_t *a7, unsigned int a8)
{
  v77 = a4;
  v14 = *a1;
  v13 = a1[1];
  if (*a6 <= 3u)
  {
    v15 = 3;
  }

  else
  {
    v15 = *a6;
  }

  v16 = a7[1];
  v17 = a7[2];
  v18 = a7[3];
  v19 = a7[4];
  v20 = (0x20005uLL >> v15) & 1;
  v21 = (0x10003uLL >> v15) & 1;
  v22 = a8;
  v23 = a1 + 14;
  v24 = a8;
  do
  {
    v25 = *(v23 - 8);
    if (v25)
    {
      _ZF = (a2 & 1) == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v27 = 0;
    }

    else
    {
      v27 = v20;
    }

    v28 = a2 - v27;
    v30 = *v16++;
    v29 = v30;
    LODWORD(v30) = *v17++;
    v31 = v30;
    LODWORD(v30) = *v18++;
    v32 = v30;
    if (*(v23 - 9))
    {
      v33 = (a3 & 1) == 0;
    }

    else
    {
      v33 = 1;
    }

    v35 = *v19++;
    v34 = v35;
    if (v33)
    {
      v36 = 0;
    }

    else
    {
      v36 = v21;
    }

    *(v23 - 3) = v29 + v34 * ((4 * v28) >> v25) + ((4 * (a3 - v36)) >> *(v23 - 9));
    *(v23 - 2) = v29;
    *(v23 - 2) = v31;
    *(v23 - 1) = v32;
    *v23 = v34;
    v23 += 652;
    --v24;
  }

  while (v24);
  v37 = a6[16];
  if ((v37 - 1) > 7 || (v38 = *a7, v39 = *(*a7 + 4 * (v37 - 1) + 240), v39 == -1))
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = *(v38 + 8 * v39 + 416);
    v41 = (v38 + 16 * v39 + 288);
  }

  *(a1 + 993) = v41;
  if (*v41 == -1 || v41[1] == -1)
  {
    sub_2779F5C10(*(a1 + 1342), 5, "Reference frame has invalid dimensions", v77);
  }

  sub_27798E424(a1, 0, v40 + 1248, v14 + a2, v13 + a3, v41, a8);
  v47 = 0;
  v48 = vshl_n_s32(vadd_s32(*a1, __PAIR64__(a3, a2)), 2uLL);
  v49 = ***(a1 + 983);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  memset(v79, 0, sizeof(v79));
  v50 = 4 * v77;
  v51 = vdup_n_s32(0x120u);
  _X21 = a1;
  do
  {
    __asm { PRFM            #0, [X21,#0x1478] }

    if (a5)
    {
      v56 = v50 >> *(_X21 + 24);
      v57 = *(_X21 + 20) + 1;
      v58 = byte_277C3CAFE[v49] >> v57;
      v59 = 0x40u >> v57;
      if (v58 < v59)
      {
        v59 = v58;
      }

      if (v58 < 4)
      {
        v59 = 4;
      }

      goto LABEL_39;
    }

    v60 = *(_X21 + 20);
    v61 = *(_X21 + 24);
    v62 = byte_277C3CAE8[v49] >> (v61 + 1);
    v63 = 0x40u >> (v61 + 1);
    if (v62 < v63)
    {
      v63 = byte_277C3CAE8[v49] >> (v61 + 1);
    }

    if (v62 >= 4)
    {
      v56 = v63;
    }

    else
    {
      v56 = 4;
    }

    if (byte_277C3BCDE[4 * v49 + 2 * v60 + v61] >= 3u)
    {
      v59 = v50 >> v60;
LABEL_39:
      v64 = a1[2664];
      v65 = (*(*(a1 + 995) + 192) >> 3) & 1;
      v66 = *(a1 + 993);
      v67 = *(a6 + 5);
      *&v84 = __PAIR64__(v56, v59);
      *&v88 = __PAIR64__(v65, v64);
      HIDWORD(v89) = 0;
      *&v79[0] = 0;
      v68 = *(_X21 + 20);
      *(&v84 + 1) = vshl_s32(v48, vneg_s32(vrev64_s32(v68)));
      *&v87 = v68;
      v90 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(v51, vneg_s32(v68)), 0xAuLL)));
      if ((*&v67 & 0xFF0000) == 0x40000 || v59 >= 5)
      {
        v70 = &off_27A719868;
      }

      else
      {
        v70 = &off_27A719828;
      }

      v71 = &v70[2 * BYTE2(v67)];
      if (v67 == 4 || v56 >= 5)
      {
        v73 = &off_27A719868;
      }

      else
      {
        v73 = &off_27A719828;
      }

      *&v83 = v71;
      *(&v83 + 1) = &v73[2 * v67];
      *(&v87 + 1) = v66;
      v74 = *(_X21 + 80);
      v85 = *(_X21 + 64);
      v86 = v74;
      v82 = 0uLL;
      v75 = v64 - 7;
      v76 = 21 - v64;
      if (v64 <= 10)
      {
        v75 = 3;
        v76 = 11;
      }

      LODWORD(v81) = 0;
      v80 = 0uLL;
      *(&v81 + 4) = __PAIR64__(v76, v75);
      HIDWORD(v81) = v47;
      sub_2779CAFC0(*(_X21 + 32), *(_X21 + 56), v79, v42, v43, v44, v45, v46);
    }

    ++v47;
    _X21 += 2608;
  }

  while (v22 != v47);
}

void sub_2779CD9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 + 7873;
  if (*(a2 + 7873) == 1)
  {
    v24 = 0;
    v25 = 0;
    v23[0] = a1;
    v23[1] = a3;
    v23[2] = a4;
    v23[3] = a5;
    v23[4] = a6;
    LODWORD(v24) = *(a2 + 7936);
    v8 = *(a2 + 7864);
    v9 = **v8;
    v10 = *(*(a1 + 24696) + 77) ? 1 : 3;
    v11 = *a2;
    v12 = *a2 + *(a2 + 8309) >= *(a1 + 532) ? *(a1 + 532) : *a2 + *(a2 + 8309);
    if (((0x3DFFFAuLL >> v9) & 1) != 0 && v11 < v12)
    {
      v13 = 0;
      v14 = dword_277C31E5C[byte_277C3CFCC[v9]];
      v15 = &v8[-(*(a2 + 8) * v11) - 1];
      v16 = *a2;
      do
      {
        v17 = *(a2 + 8);
        v18 = *(v15 + 8 * v17 * v16);
        v19 = *v18;
        if ((0x2F0BFFuLL >> v19))
        {
          if ((0x20005uLL >> v19))
          {
            v21 = v16 | 1;
            v16 &= ~1u;
            v18 = *(v15 + 8 * v17 * v21);
            v20 = 2;
          }

          else
          {
            v20 = byte_277C36D60[v19];
          }
        }

        else
        {
          v20 = 16;
        }

        if ((*(v18 + 167) & 0x80) != 0 || v18[16] >= 1)
        {
          ++v13;
          if (*(v6 + 436) >= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = *(v6 + 436);
          }

          sub_2779CD630(a2, v16 - v11, 0, v22, 1, v18, v23, v10);
        }

        v16 += v20;
      }

      while (v16 < v12 && v13 < v14);
    }
  }
}

int8x8_t *sub_2779CDB9C(int8x8_t *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(*&a1[3087] + 77);
  v29 = 0;
  v30 = 0uLL;
  v27 = 0;
  v28 = 0uLL;
  v26 = 128;
  v25 = 0x8000000080;
  v24 = 128;
  v23 = 0x8000000080;
  v22 = 128;
  v21 = 0x8000000080;
  v20 = 128;
  v19 = 0x8000000080;
  v18 = 128;
  v17 = 0x8000000080;
  v16 = 128;
  v15 = 0x8000000080;
  v5 = *(a2 + 15040);
  if ((*(*(a2 + 7960) + 192) & 8) != 0)
  {
    v9 = v5 >> 1;
    v6 = vshrq_n_u64(vaddq_s64(vdupq_n_s64(v5), xmmword_277BB7370), 1uLL);
    v10 = *(a2 + 15048);
    v7 = v10 >> 1;
    v8 = vshrq_n_u64(vaddq_s64(vdupq_n_s64(v10), xmmword_277BB7370), 1uLL);
  }

  else
  {
    v6 = vaddq_s64(vdupq_n_s64(v5), xmmword_277BB7380);
    v7 = *(a2 + 15048);
    v8 = vaddq_s64(vdupq_n_s64(v7), xmmword_277BB7380);
    v9 = *(a2 + 15040);
  }

  v29 = v9;
  v30 = v6;
  v27 = v7;
  if (v4)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v28 = v8;
  v12 = *a2;
  v13 = *(a2 + 4);
  sub_2779CD490(a1, a2, &v29, &v21, &v17, &v25);
  sub_2779CD9F8(a1, a2, &v27, &v19, &v15, &v23);
  sub_27798E348(a2 + 16, ***(a2 + 7864), *&a1[29] + 1248, v12, v13, 0, v11);
  return sub_27798E850(a1, a2, &v29, &v25, &v27, &v23);
}

void sub_2779CDD54(uint64_t a1, int a2, int a3, uint64_t *a4, unsigned int *a5)
{
  v8 = **(a1 + 7864);
  v9 = vshl_n_s32(*a1, 2uLL);
  v10 = *v8;
  v11 = byte_277C3CAFE[v10];
  v12 = v8[2];
  v13 = byte_277C3CAE8[v10];
  if (v11 < v13)
  {
    LOBYTE(v13) = v11;
  }

  v14 = v8[24];
  v18 = (v12 == 15 || v12 == 23) && *(*(a1 + 10744) + 36 * v8[a3 + 16] + 32) > 1u && v13 > 7u;
  v53[0] = v18;
  v53[1] = v14 == 2;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(v41, 0, sizeof(v41));
  v19 = *(a1 + 10656);
  v20 = (*(*(a1 + 7960) + 192) >> 3) & 1;
  v21 = *(a1 + 8 * a3 + 7944);
  v22 = a1 + 32 * a3;
  v23 = *(v8 + 5);
  *&v49 = *(a1 + 20);
  v24 = byte_277C3BCDE[4 * a2 + 2 * v49 + SDWORD1(v49)];
  v25 = byte_277C3CAE8[v24];
  v26 = vneg_s32(vrev64_s32(*&v49));
  LODWORD(v46) = byte_277C3CAFE[v24];
  DWORD1(v46) = v25;
  *(&v46 + 1) = vshl_s32(v9, v26);
  *&v50 = __PAIR64__(v20, v19);
  v52 = vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(vdup_n_s32(0x120u), v26), 0xAuLL));
  if (((0x10003uLL >> v24) & ((*&v23 & 0xFF0000) != 0x40000)) != 0)
  {
    v27 = &off_27A719828;
  }

  else
  {
    v27 = &off_27A719868;
  }

  v28 = &v27[2 * BYTE2(v23)];
  if (((0x20005uLL >> v24) & (v23 != 4)) != 0)
  {
    v29 = &off_27A719828;
  }

  else
  {
    v29 = &off_27A719868;
  }

  *&v45 = v28;
  *(&v45 + 1) = &v29[2 * v23];
  *(&v49 + 1) = v21;
  v30 = *(v22 + 80);
  v47 = *(v22 + 64);
  v48 = v30;
  v44 = 0uLL;
  v31 = 21 - v19;
  v32 = v19 <= 10;
  if (v19 <= 10)
  {
    v33 = 3;
  }

  else
  {
    v33 = v19 - 7;
  }

  if (v32)
  {
    v34 = 11;
  }

  else
  {
    v34 = v31;
  }

  v42 = 0uLL;
  LODWORD(v43) = 0;
  *(&v43 + 4) = __PAIR64__(v34, v33);
  sub_27798D978(v41, v53, a3, a1, v8);
  if ((*(*(a1 + 7960) + 192) & 8) != 0)
  {
    v40 = *a4 >> 1;
  }

  else
  {
    v40 = *a4;
  }

  sub_2779CAFC0(v40, *a5, v41, v35, v36, v37, v38, v39);
}

int8x8_t *sub_2779CDF94(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = a4;
  v9 = byte_277C3BCDE[4 * a2 + 2 * *(a1 + 20) + *(a1 + 24)];
  v10 = byte_277C3CAFE[v9];
  v11 = byte_277C3CAE8[v9];
  v12 = **(a1 + 7864);
  LODWORD(v9) = v12[17];
  v13 = *(a1 + 32);
  v14 = *(a1 + 10768);
  *(v12 + 9) = v14;
  v15 = (v12 + 72);
  v16 = *(*(a1 + 7960) + 192);
  if (v9 >= 1 && (v17 = v12[83], (v17 & 0xFE) == 2))
  {
    v18 = a6;
    if (v17 == 3)
    {
      v20 = v12[82];
      if ((v16 & 8) == 0)
      {
        sub_277A82EA0(v14, v20, a3, a4, a5, a6, v11, v10);
        v17 = v12[83];
LABEL_14:
        v26 = *v12;
        if (v17 == 2)
        {
          v15 = (*&dword_27A722360[8 * v26 + 6] + (v12[81] << 7) + 8 * v12[80]);
        }

        return sub_277A862F8(v13, *(a1 + 56), a3, v6, a5, v18, *v15, byte_277C3CAFE[v26], v10, v11, __SPAIR64__(2 << byte_277C3CFCC[v26] == v11, 2 << byte_277C42228[v26] == v10));
      }

      v27 = a3 >> 1;
      v28 = a5 >> 1;
      sub_277A6BCA4(v14, v20, a3 >> 1, a4, a5 >> 1, a6, v11, v10, *(a1 + 10656));
      v17 = v12[83];
    }

    else
    {
      if ((v16 & 8) == 0)
      {
        goto LABEL_14;
      }

      v27 = a3 >> 1;
      v28 = a5 >> 1;
    }

    v29 = *v12;
    if (v17 == 2)
    {
      v15 = (*&dword_27A722360[8 * v29 + 6] + (v12[81] << 7) + 8 * v12[80]);
    }

    return sub_277A7D91C(v13, *(a1 + 56), v27, v6, v28, v18, *v15, byte_277C3CAFE[v29], v10, v11, __SPAIR64__(2 << byte_277C3CFCC[v29] == v11, 2 << byte_277C42228[v29] == v10));
  }

  else if ((v16 & 8) != 0)
  {
    v24 = a4;
    v25 = *(a1 + 56);

    return sub_277BB3B5C(2 * a3, v24, 2 * v13, v25, v10, v11);
  }

  else
  {
    v21 = a4;
    v22 = *(a1 + 56);

    return sub_277BB3A8C(a3, v21, v13, v22, v10, v11);
  }
}

void *sub_2779CE28C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v7 = 0;
  *(a1 + 76) = a3;
  v8 = a3 << 6;
  v9 = 48 * a3;
  v10 = a1 + 24;
  if (a3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  v45 = a3;
  size = (a3 << 6) | 0x17;
  v12 = v11 << 6;
  v13 = 16 * (v11 + 2 * v11);
  do
  {
    if (v8 > 0x1FFFFFFE9 || (v14 = malloc_type_malloc(size, 0x5F484EBFuLL)) == 0)
    {
      v16 = (a1 + 8 * v7);
      *v16 = 0;
LABEL_14:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->mutex_[j]");
      if (*v16)
      {
        v20 = a3 < 1;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v15 - 8) = v14;
    v16 = (a1 + 8 * v7);
    *v16 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }

    if (a3 < 1)
    {
      if (v9 > 0x1FFFFFFE9)
      {
        goto LABEL_25;
      }

      v17 = malloc_type_malloc(v9 + 23, 0x5F484EBFuLL);
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v18 - 8) = v17;
      v19 = (v10 + 8 * v7);
      *v19 = v18;
      if (v18)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_18:
    v21 = 0;
    do
    {
      pthread_mutex_init((*v16 + v21), 0);
      v21 += 64;
    }

    while (v12 != v21);
LABEL_20:
    if (v9 > 0x1FFFFFFE9 || (v22 = malloc_type_malloc(v9 + 23, 0x5F484EBFuLL)) == 0)
    {
LABEL_25:
      v19 = (v10 + 8 * v7);
      *v19 = 0;
      goto LABEL_26;
    }

    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v23 - 8) = v22;
    v19 = (v10 + 8 * v7);
    *v19 = v23;
    if (v23)
    {
      if (a3 < 1)
      {
        goto LABEL_32;
      }

LABEL_30:
      v25 = 0;
      do
      {
        pthread_cond_init((*v19 + v25), 0);
        v25 += 48;
      }

      while (v13 != v25);
      goto LABEL_32;
    }

LABEL_26:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->cond_[j]");
    if (*v19)
    {
      v24 = a3 < 1;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_32:
    ++v7;
  }

  while (v7 != 3);
  v26 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v26)
  {
    *(a1 + 96) = 0;
    v29 = (a1 + 96);
    v30 = v45;
    v31 = a5;
    goto LABEL_37;
  }

  v27 = v26;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF0);
  *&v28[-1].__opaque[48] = v27;
  *(a1 + 96) = v28;
  v29 = (a1 + 96);
  v30 = v45;
  v31 = a5;
  if (v28)
  {
LABEL_38:
    pthread_mutex_init(v28, 0);
  }

  else
  {
LABEL_37:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->job_mutex");
    v28 = *v29;
    if (*v29)
    {
      goto LABEL_38;
    }
  }

  v32 = 8800 * v31;
  if (v32 > 0x1FFFFFFE9 || (v33 = malloc_type_malloc(v32 | 0x17, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 80) = 0;
    goto LABEL_44;
  }

  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v34 - 8) = v33;
  *(a1 + 80) = v34;
  if (!v34)
  {
LABEL_44:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->lfdata");
  }

  v35 = 0;
  *(a1 + 88) = v31;
  v36 = 4 * v30;
  v37 = a1 + 48;
  while (2)
  {
    if (v36 > 0x1FFFFFFE9 || (v38 = malloc_type_malloc(v36 + 23, 0x5F484EBFuLL)) == 0)
    {
      *(v37 + v35) = 0;
      goto LABEL_51;
    }

    v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v39 - 8) = v38;
    *(v37 + v35) = v39;
    if (!v39)
    {
LABEL_51:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->cur_sb_col[j]");
    }

    v35 += 8;
    if (v35 != 24)
    {
      continue;
    }

    break;
  }

  if ((96 * v30) > 0x1FFFFFFE9 || (result = malloc_type_malloc((96 * v30) | 0x17, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 104) = 0;
    v42 = a4;
    goto LABEL_58;
  }

  v41 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v41 - 8) = result;
  *(a1 + 104) = v41;
  v42 = a4;
  if (!v41)
  {
LABEL_58:
    result = sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->job_queue");
  }

  if (v42 >= 640)
  {
    if (v42 >= 0x501)
    {
      if (v42 > 0x1000)
      {
        v43 = 8;
      }

      else
      {
        v43 = 4;
      }
    }

    else
    {
      v43 = 2;
    }
  }

  else
  {
    v43 = 1;
  }

  *(a1 + 72) = v43;
  return result;
}

double sub_2779CE694(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = a1 + 24;
    do
    {
      v4 = *(a1 + 8 * v2);
      if (v4)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_8;
        }

        v5 = 0;
        v6 = 0;
        do
        {
          pthread_mutex_destroy((*(a1 + 8 * v2) + v5));
          ++v6;
          v5 += 64;
        }

        while (v6 < *(a1 + 76));
        v4 = *(a1 + 8 * v2);
        if (v4)
        {
LABEL_8:
          free(*(v4 - 8));
        }
      }

      v7 = *(v3 + 8 * v2);
      if (v7)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_14;
        }

        v8 = 0;
        v9 = 0;
        do
        {
          pthread_cond_destroy((*(v3 + 8 * v2) + v8));
          ++v9;
          v8 += 48;
        }

        while (v9 < *(a1 + 76));
        v7 = *(v3 + 8 * v2);
        if (v7)
        {
LABEL_14:
          free(*(v7 - 8));
        }
      }

      ++v2;
    }

    while (v2 != 3);
    v10 = *(a1 + 96);
    if (v10)
    {
      pthread_mutex_destroy(v10);
      v11 = *(a1 + 96);
      if (v11)
      {
        free(*(v11 - 8));
      }
    }

    v12 = *(a1 + 80);
    if (v12)
    {
      free(*(v12 - 8));
    }

    for (i = 48; i != 72; i += 8)
    {
      v14 = *(a1 + i);
      if (v14)
      {
        free(*(v14 - 8));
      }
    }

    v15 = *(a1 + 104);
    if (v15)
    {
      free(*(v15 - 8));
    }

    result = 0.0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_2779CE7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, unsigned __int8 *a10, _BYTE *a11, char a12)
{
  v12 = a6;
  v13 = a5;
  v14 = a2;
  v15 = a9;
  v16 = *(a2 + 536);
  v327 = a5 >> a12;
  v386 = a6 > 0 && a8 == 2;
  if (v386)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v321 = v17;
  if (!a7)
  {
    if (v16 < 1)
    {
      return;
    }

    v161 = 0;
    v319 = a6;
    v162 = (a3 + 2608 * a6);
    v314 = (v16 + 31) >> 5;
    v317 = v327;
    v320 = 1 << a12;
    v366 = a4 + 10692;
    v388 = a2 + 19184;
    v313 = 4 * a5;
    v369 = v162;
    while (1)
    {
      v163 = v14;
      sub_27798E348(a3, *(*(v14 + 24696) + 28), a1, v13, v161, v12, v321 + v12);
      v330 = v161;
      if (a8)
      {
        if (!v12)
        {
          v271 = (*(a3 + 32) + 3) >> 2;
          v272 = ((*(a3 + 36) + 3) >> 2) - v13;
          if (v272 >= v320)
          {
            v272 = 1 << a12;
          }

          v362 = v271 - v161;
          if (v271 - v161 >= 32)
          {
            v273 = 32;
          }

          else
          {
            v273 = v271 - v161;
          }

          v14 = a2;
          if (v272 < 1)
          {
            goto LABEL_509;
          }

          v274 = 0;
          v346 = *(a3 + 16);
          v378 = v273 + v161;
          v342 = 4 * *(a3 + 40);
          v339 = v161 - 1;
          v359 = v272;
          v354 = v273;
          v350 = *(a3 + 40);
          while (2)
          {
            *a10 = 0;
            v385 = v274 + a5;
            v275 = *(v14 + 568) + 8 * (*(v14 + 580) * (v274 + a5)) + 8 * v330;
            v276 = *v275;
            v277 = *(*v275 + 167);
            v372 = v274;
            if (a4 && *(v366 + 4 * (v277 & 7)))
            {
              v278 = 0;
              if (v330)
              {
                v279 = *(v275 - 8);
                v280 = a11;
                goto LABEL_449;
              }

              v284 = 128;
              v280 = a11;
              goto LABEL_469;
            }

            v278 = v276[145];
            if ((v277 & 0x80) != 0 || v276[16] >= 1)
            {
              v280 = a11;
              if (!v276[144])
              {
                v281 = *v276;
                v278 = v276[(((byte_277C3F990[v281] + 0x7FFFFFFF) & v330) >> byte_277BFC806[v281]) + (((byte_277C36D60[v281] - 1) & v385) >> byte_277BFC81C[v281] << byte_277BFC832[v281]) + 146];
              }

              if (v330)
              {
LABEL_448:
                v279 = *(v275 - 8);
                if (a4)
                {
LABEL_449:
                  v282 = *(v279 + 167);
                  if (*(v366 + 4 * (v282 & 7)))
                  {
                    v283 = 0;
LABEL_457:
                    v284 = byte_277C3CAE8[*v279];
                    v286 = sub_277A47B90(v14, v388, 0, 0, v276);
                    if (!v286)
                    {
                      v286 = sub_277A47B90(a2, v388, 0, 0, v279);
                    }

                    if (v279 == v276)
                    {
                      v14 = a2;
                      if (v276[144] && ((v277 & 0x80) != 0 || v276[16] >= 1))
                      {
                        goto LABEL_469;
                      }
                    }

                    else
                    {
                      v14 = a2;
                    }

                    if (v286)
                    {
                      *a10 = dword_277BF7ED4[19 * v278 + v283];
                      *(a10 + 1) = v388 + 48 * v286;
                    }

LABEL_469:
                    if (v284 >= byte_277C3CAE8[*v276])
                    {
                      v287 = byte_277C3CAE8[*v276];
                    }

                    else
                    {
                      v287 = v284;
                    }

                    *v280 = v278;
                    v288 = *&byte_277BFDBA0[4 * v278];
                    v289 = v288 + v330;
                    if (v288 + v330 >= v378)
                    {
                      v12 = a6;
LABEL_495:
                      if ((v372 & 3) != 0 || (v303 = v372 | 3, (v372 | 3) >= v359) || v287 <= 15)
                      {
                        v300 = v372 + 1 < v359;
                        v301 = v287 > 7;
                        v302 = v300 && v301;
                        if (v300 && v301)
                        {
                          v303 = v372 + 1;
                        }

                        else
                        {
                          v303 = v372;
                        }
                      }

                      else
                      {
                        v302 = 2;
                      }

                      v304 = a11;
                      if (v362 >= 1)
                      {
                        v305 = 0;
                        v306 = a10;
                        v307 = v346 + v342 * v372;
                        do
                        {
                          if (*v304 == 255)
                          {
                            *v306 = 0;
                            *v304 = 0;
                          }

                          v164 = sub_277A47518(v307, v350, v306, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v302, v164, v165, v166, v167, v168, v169);
                          v14 = a2;
                          v308 = *&byte_277BFDBA0[4 * *v304];
                          v305 += v308;
                          v307 += (4 * v308);
                          v306 += 16 * v308;
                          v304 += v308;
                        }

                        while (v305 < v354);
                      }

                      v274 = v303 + 1;
                      if (v303 + 1 >= v359)
                      {
                        goto LABEL_509;
                      }

                      continue;
                    }

                    v290 = &v280[v288];
                    v291 = &a10[16 * v288];
                    v12 = a6;
                    while (2)
                    {
                      v292 = v278;
                      *v291 = 0;
                      v293 = (*(v14 + 568) + 8 * (*(v14 + 580) * v385) + 8 * v289);
                      v294 = *v293;
                      v295 = *(*v293 + 167);
                      if (a4 && *(v366 + 4 * (v295 & 7)))
                      {
                        v278 = 0;
                      }

                      else
                      {
                        v278 = v294[145];
                        if (((v295 & 0x80) != 0 || v294[16] >= 1) && !v294[144])
                        {
                          v296 = *v294;
                          v278 = v294[(((byte_277C3F990[v296] - 1) & v289) >> byte_277BFC806[v296]) + 146 + (((byte_277C36D60[v296] - 1) & v385) >> byte_277BFC81C[v296] << byte_277BFC832[v296])];
                        }
                      }

                      v297 = *(v293 - 1);
                      v298 = sub_277A47B90(v14, v388, 0, 0, *v293);
                      if (!v298)
                      {
                        v298 = sub_277A47B90(a2, v388, 0, 0, v297);
                      }

                      if (v297 == v294)
                      {
                        v14 = a2;
                        if (!v294[144] || (v295 & 0x80) == 0 && v294[16] < 1)
                        {
                          goto LABEL_488;
                        }
                      }

                      else
                      {
                        v14 = a2;
LABEL_488:
                        if (v298)
                        {
                          *v291 = dword_277BF7ED4[19 * v278 + v292];
                          *(v291 + 1) = v388 + 48 * v298;
                        }
                      }

                      if (v287 >= byte_277C3CAE8[*v294])
                      {
                        v287 = byte_277C3CAE8[*v294];
                      }

                      *v290 = v278;
                      v299 = *&byte_277BFDBA0[4 * v278];
                      v289 += v299;
                      v291 += 16 * v299;
                      v290 += v299;
                      if (v289 >= v378)
                      {
                        goto LABEL_495;
                      }

                      continue;
                    }
                  }
                }

                else
                {
                  v282 = *(v279 + 167);
                }

                v283 = v279[145];
                if (((v282 & 0x80) != 0 || v279[16] >= 1) && !v279[144])
                {
                  v285 = *v279;
                  v283 = v279[(((byte_277C3F990[v285] - 1) & v339) >> byte_277BFC806[v285]) + 146 + (((byte_277C36D60[v285] - 1) & v385) >> byte_277BFC81C[v285] << byte_277BFC832[v285])];
                }

                goto LABEL_457;
              }
            }

            else
            {
              v280 = a11;
              if (v330)
              {
                goto LABEL_448;
              }
            }

            break;
          }

          v284 = 128;
          goto LABEL_469;
        }

        v171 = v162[1];
        v170 = v162[2];
        v172 = v320 >> v170;
        if (((((((v162[9] << v170) + 3) >> 2) + (1 << v170 >> 1)) >> v170) - (v13 >> v170)) < v320 >> v170)
        {
          v172 = (((((v162[9] << v170) + 3) >> 2) + (1 << v170 >> 1)) >> v170) - (v13 >> v170);
        }

        v173 = (((((v162[8] << v171) + 3) >> 2) + (1 << v171 >> 1)) >> v171) - (v161 >> v171);
        v361 = v162[1];
        if (v173 >= (0x20u >> v171))
        {
          v173 = 0x20u >> v171;
        }

        v376 = v173;
        v328 = v172;
        v14 = a2;
        if (v172 >= 1)
        {
          v174 = 0;
          v345 = v170;
          v175 = v369[10];
          v349 = -1 << v361;
          v358 = (v173 << v361) + v161;
          v325 = 4 * v175;
          v326 = v361 | v161;
          v353 = v369[10];
          v334 = 8 * v175;
          do
          {
            v337 = v174;
            *a10 = 0;
            v176 = ((v174 << v345) + a5) | v345;
            v177 = (*(v14 + 568) + 8 * (*(v14 + 580) * v176) + 8 * v326);
            v178 = *v177;
            if (a4 && *(v366 + 4 * (*(v178 + 167) & 7)))
            {
              v179 = a11;
              *a11 = 0;
              v180 = v330;
              if (!v330)
              {
                v181 = 0;
                v184 = 0;
                v185 = 64;
                goto LABEL_316;
              }

              v181 = 0;
              v182 = v177[v349];
            }

            else
            {
              v181 = byte_277C3BD80[byte_277C3BCDE[4 * *v178 + 2 * v361 + v345]];
              v179 = a11;
              v180 = v330;
              if (v181 > 0x10)
              {
                if (v181 == 17)
                {
                  v181 = 9;
                }

                else if (v181 == 18)
                {
                  v181 = 10;
                }
              }

              else if (v181 - 11 < 2 || v181 == 4)
              {
                v181 = 3;
              }

              *a11 = v181;
              if (!v330)
              {
                v185 = 64;
                goto LABEL_315;
              }

              v182 = v177[v349];
              if (!a4)
              {
                goto LABEL_294;
              }
            }

            if (*(v366 + 4 * (*(v182 + 167) & 7)))
            {
              v186 = 0;
              goto LABEL_306;
            }

LABEL_294:
            v186 = byte_277C3BD80[byte_277C3BCDE[4 * *v182 + 2 * v361 + v345]];
            if (v186 > 0x10)
            {
              if (v186 == 17)
              {
                v186 = 9;
              }

              else if (v186 == 18)
              {
                v186 = 10;
              }
            }

            else if ((v186 - 11) < 2 || v186 == 4)
            {
              v186 = 3;
            }

LABEL_306:
            v185 = dword_277C3BF30[v186];
            v188 = sub_277A47B90(v14, v388, 0, a6, v178);
            if (!v188)
            {
              v188 = sub_277A47B90(a2, v388, 0, a6, v182);
            }

            v14 = a2;
            v189 = v182 != v178 || !v178[144] || (*(v178 + 167) & 0x80) == 0 && v178[16] < 1;
            v190 = !v189;
            if (v182 != v178)
            {
              v190 = 0;
            }

            if (!v190 && v188)
            {
              *a10 = dword_277BF8A1C[19 * v181 + v186];
              *(a10 + 1) = v388 + 48 * v188;
              v184 = *v179;
              goto LABEL_316;
            }

LABEL_315:
            v184 = v181;
LABEL_316:
            if (v185 >= dword_277C3BF30[v181])
            {
              v191 = dword_277C3BF30[v181];
            }

            else
            {
              v191 = v185;
            }

            v192 = *&byte_277BFDBA0[4 * v184];
            v193 = (v192 << v361) + v180;
            if (v193 < v358)
            {
              v194 = &v179[v192];
              v195 = &a10[16 * v192];
              do
              {
                *v195 = 0;
                v196 = (*(v14 + 568) + 8 * (*(v14 + 580) * v176) + 8 * (v193 | v361));
                v197 = *v196;
                if (a4 && *(v366 + 4 * (*(v197 + 167) & 7)))
                {
                  v198 = 0;
                }

                else
                {
                  v198 = byte_277C3BD80[byte_277C3BCDE[4 * *v197 + 2 * v361 + v345]];
                  if (v198 > 0x10)
                  {
                    if (v198 == 17)
                    {
                      v198 = 9;
                    }

                    else if (v198 == 18)
                    {
                      v198 = 10;
                    }
                  }

                  else if (v198 - 11 < 2 || v198 == 4)
                  {
                    v198 = 3;
                  }
                }

                *v194 = v198;
                v200 = v196[v349];
                v201 = sub_277A47B90(v14, v388, 0, a6, v197);
                if (!v201)
                {
                  v201 = sub_277A47B90(a2, v388, 0, a6, v200);
                }

                v14 = a2;
                v202 = v200 != v197 || !v197[144] || (*(v197 + 167) & 0x80) == 0 && v197[16] < 1;
                v203 = !v202;
                v204 = v200 == v197 && v203;
                v205 = v198;
                if (!v204)
                {
                  v205 = v198;
                  if (v201)
                  {
                    *v195 = dword_277BF8A1C[19 * v198 + v184];
                    *(v195 + 1) = v388 + 48 * v201;
                    v205 = *v194;
                  }
                }

                if (v191 >= dword_277C3BF30[v198])
                {
                  v191 = dword_277C3BF30[v198];
                }

                v206 = *&byte_277BFDBA0[4 * v205];
                v193 += v206 << v361;
                v195 += 16 * v206;
                v194 += v206;
                v184 = v205;
              }

              while (v193 < v358);
            }

            if ((v337 & 3) != 0 || (v337 | 3) >= v328 || v191 <= 15)
            {
              v207 = v369;
              if (v337)
              {
                v332 = 0;
                v209 = 0;
              }

              else
              {
                v209 = (v337 | 1) < v328 && v191 > 7;
                v332 = v209;
              }
            }

            else
            {
              v209 = 2;
              v332 = 3;
              v207 = v369;
            }

            if (v376 >= 1)
            {
              v210 = 0;
              v211 = a10;
              v212 = a11;
              v341 = v209;
              while (1)
              {
                if (*v212 == 255)
                {
                  *v211 = 0;
                  *v212 = 0;
                }

                v213 = v325 * v337 + 4 * v210;
                v214 = *(v207 + 2) + v213;
                if (!v386)
                {
                  v164 = sub_277A47518(v214, v353, v211, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v209, v164, v165, v166, v167, v168, v169);
                  goto LABEL_378;
                }

                v215 = *(v207 + 328) + v213;
                v216 = *(v14 + 24696);
                v217 = *(v211 + 1);
                if (!*(v216 + 76))
                {
                  break;
                }

                v218 = *(v216 + 72);
                v219 = 2 * v214;
                v220 = 2 * v215;
                HIDWORD(v222) = *v211 - 4;
                LODWORD(v222) = HIDWORD(v222);
                v221 = v222 >> 1;
                if (v209 == 1)
                {
                  if (v221 == 1)
                  {
                    v238 = v353;
                    sub_2779D8E58(v219, v353, *v217, v217[16], v217 + 32, v218);
                    sub_2779D8E58(v219 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                    sub_2779D8E58(v220, v353, *v217, v217[16], v217 + 32, v218);
                    v240 = v220 + 2 * v325;
LABEL_403:
                    v241 = v217[16];
                    v242 = *v217;
                    v243 = v217 + 32;
                    v244 = v238;
                    v209 = v341;
                    goto LABEL_405;
                  }

                  if (v221)
                  {
                    goto LABEL_379;
                  }

                  v223 = v353;
                  sub_2779D8AAC(v219, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8AAC(v219 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8AAC(v220, v353, *v217, v217[16], v217 + 32, v218);
                  v225 = v220 + 2 * v325;
LABEL_389:
                  v229 = v217[16];
                  v230 = *v217;
                  v231 = v217 + 32;
                  v232 = v223;
                  v209 = v341;
LABEL_393:
                  *&v164 = sub_2779D8AAC(v225, v232, v230, v229, v231, v218);
LABEL_378:
                  v14 = a2;
                  goto LABEL_379;
                }

                if (v209 != 2)
                {
                  if (v221 != 1)
                  {
                    if (v221)
                    {
                      goto LABEL_379;
                    }

                    sub_2779D8AAC(v219, v353, *v217, v217[16], v217 + 32, v218);
                    v229 = v217[16];
                    v230 = *v217;
                    v231 = v217 + 32;
                    v225 = v220;
                    v232 = v353;
                    goto LABEL_393;
                  }

                  sub_2779D8E58(v219, v353, *v217, v217[16], v217 + 32, v218);
                  v241 = v217[16];
                  v242 = *v217;
                  v243 = v217 + 32;
                  v240 = v220;
                  v244 = v353;
LABEL_405:
                  *&v164 = sub_2779D8E58(v240, v244, v242, v241, v243, v218);
                  goto LABEL_378;
                }

                if (v221 == 1)
                {
                  v238 = v353;
                  sub_2779D8E58(v219, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8E58(v219 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                  v239 = v219 + 2 * v334;
                  sub_2779D8E58(v239, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8E58(v239 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8E58(v220, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8E58(v220 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8E58(v220 + 2 * v334, v353, *v217, v217[16], v217 + 32, v218);
                  v240 = v220 + 2 * v334 + 2 * v325;
                  goto LABEL_403;
                }

                if (!v221)
                {
                  v223 = v353;
                  sub_2779D8AAC(v219, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8AAC(v219 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                  v224 = v219 + 2 * v334;
                  sub_2779D8AAC(v224, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8AAC(v224 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8AAC(v220, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8AAC(v220 + 2 * v325, v353, *v217, v217[16], v217 + 32, v218);
                  sub_2779D8AAC(v220 + 2 * v334, v353, *v217, v217[16], v217 + 32, v218);
                  v225 = v220 + 2 * v334 + 2 * v325;
                  goto LABEL_389;
                }

LABEL_379:
                v226 = *&byte_277BFDBA0[4 * *v212];
                v210 += v226;
                v211 += 16 * v226;
                v212 += v226;
                if (v210 >= v376)
                {
                  goto LABEL_410;
                }
              }

              HIDWORD(v228) = *v211 - 4;
              LODWORD(v228) = HIDWORD(v228);
              v227 = v228 >> 1;
              if (v209 == 1)
              {
                if (v227 != 1)
                {
                  if (v227)
                  {
                    goto LABEL_379;
                  }

                  sub_27798CA44(v214, v353, *v217, v217[16], v217[32]);
                  sub_27798CA44(v214 + v325, v353, *v217, v217[16], v217[32]);
                  sub_27798CA44(v215, v353, *v217, v217[16], v217[32]);
                  v233 = v217[32];
                  v234 = v217[16];
                  v235 = *v217;
                  v236 = v215 + v325;
                  v209 = v341;
                  v237 = v353;
                  goto LABEL_400;
                }

                sub_27798C73C(v214, v353, *v217, v217[16], v217[32]);
                sub_27798C73C(v214 + v325, v353, *v217, v217[16], v217[32]);
                sub_27798C73C(v215, v353, *v217, v217[16], v217[32]);
                v245 = v217[32];
                v246 = v217[16];
                v247 = *v217;
                v248 = v215 + v325;
                v209 = v341;
                v249 = v353;
              }

              else
              {
                if (v209 == 2)
                {
                  if (v227 == 1)
                  {
                    sub_27798C99C(v214, v353, *(v211 + 1), v217 + 16, v217 + 32);
                    v164 = sub_27798C99C(v215, v353, v217, v217 + 16, v217 + 32);
                  }

                  else
                  {
                    if (v227)
                    {
                      goto LABEL_379;
                    }

                    sub_27798CC04(v214, v353, *(v211 + 1), v217 + 16, v217 + 32);
                    v164 = sub_27798CC04(v215, v353, v217, v217 + 16, v217 + 32);
                  }

                  goto LABEL_378;
                }

                if (v227 != 1)
                {
                  if (v227)
                  {
                    goto LABEL_379;
                  }

                  sub_27798CA44(v214, v353, *v217, v217[16], v217[32]);
                  v233 = v217[32];
                  v234 = v217[16];
                  v235 = *v217;
                  v236 = v215;
                  v237 = v353;
LABEL_400:
                  v164 = sub_27798CA44(v236, v237, v235, v234, v233);
                  goto LABEL_378;
                }

                sub_27798C73C(v214, v353, *v217, v217[16], v217[32]);
                v245 = v217[32];
                v246 = v217[16];
                v247 = *v217;
                v248 = v215;
                v249 = v353;
              }

              v164 = sub_27798C73C(v248, v249, v247, v246, v245);
              goto LABEL_378;
            }

LABEL_410:
            v174 = v337 + v332 + 1;
            v12 = a6;
          }

          while (v174 < v328);
        }
      }

      else
      {
        v250 = v162[1];
        v251 = v162[2];
        v253 = ((*(v163 + 532) + (1 << v251 >> 1)) >> v251) - (v13 >> v251);
        LODWORD(v254) = 0x20u >> v251;
        if (v253 >= (0x20u >> v251))
        {
          v254 = v254;
        }

        else
        {
          v254 = v253;
        }

        v252 = (*(v163 + 536) + (1 << v250 >> 1)) >> v250;
        if ((v252 - (v161 >> v250)) >= (0x20u >> v250))
        {
          v255 = 0x20u >> v250;
        }

        else
        {
          v255 = v252 - (v161 >> v250);
        }

        v377 = v254;
        v14 = v163;
        if (v254 >= 1)
        {
          v384 = 0;
          v371 = *(v369 + 2);
          v256 = v369[10];
          v257 = (4 * v161) >> v250;
          v258 = v313 >> v251;
          v259 = 1 << v250;
          do
          {
            if (v255 >= 1)
            {
              v260 = 0;
              v261 = v371 + 4 * v384 * v256;
              do
              {
                v391 = 0;
                v392 = 0;
                v262 = sub_277A4708C(&v391, v259, v14, a4, 0, v257 + 4 * v260, v258 + 4 * v384, v12, v369);
                if (v262 == 255)
                {
                  v269 = 0;
                  LOBYTE(v391) = 0;
                }

                else
                {
                  v269 = v262;
                }

                sub_277A47518(v261, v256, &v391, *(*(a2 + 24696) + 72), *(*(a2 + 24696) + 76), 0, v263, v264, v265, v266, v267, v268);
                v14 = a2;
                v270 = *&byte_277BFDBA0[4 * v269];
                v260 += v270;
                v261 += (4 * v270);
                v12 = a6;
              }

              while (v260 < v255);
            }

            ++v384;
          }

          while (v384 != v377);
        }
      }

LABEL_509:
      v162 = v369;
      if (a9)
      {
        v309 = v330 >> 5;
        v310 = *(a9 + 72);
        if (v314 - 1 <= (v330 >> 5))
        {
          LODWORD(v309) = v310 + v314;
LABEL_514:
          pthread_mutex_lock((*(a9 + 8 * v319) + (v317 << 6)));
          v311 = *(a9 + 48 + 8 * v319);
          v312 = *(v311 + 4 * v317);
          if (v312 <= v309)
          {
            v312 = v309;
          }

          *(v311 + 4 * v317) = v312;
          pthread_cond_broadcast((*(a9 + 24 + 8 * v319) + 48 * v317));
          pthread_mutex_unlock((*(a9 + 8 * v319) + (v317 << 6)));
          v14 = a2;
          goto LABEL_517;
        }

        if (!(v309 % v310))
        {
          goto LABEL_514;
        }
      }

LABEL_517:
      v161 = v330 + 32;
      v13 = a5;
      if (*(v14 + 536) <= v330 + 32)
      {
        return;
      }
    }
  }

  if (a7 == 1 && v16 >= 1)
  {
    v18 = 0;
    v19 = v327;
    v20 = v327 - 1;
    v21 = a9 + 48;
    v22 = a3 + 2608 * a6;
    v318 = 1 << a12;
    v360 = a4 + 10692;
    v387 = a2 + 19184;
    v316 = a5 - 1;
    v315 = 4 * a5;
    v370 = v22;
    while (1)
    {
      if (!v15)
      {
        goto LABEL_24;
      }

      v23 = v18 >> 5;
      v24 = *(v15 + 72);
      if (!v327)
      {
        break;
      }

      if (((v24 + 0x3FFFFFF) & v23) == 0)
      {
        v25 = (*(v15 + 8 * v12) + (v20 << 6));
        pthread_mutex_lock(v25);
        while (*(*(v21 + 8 * v12) + 4 * v20) - v24 < v23)
        {
          pthread_cond_wait((*(a9 + 24 + 8 * v12) + 48 * v20), v25);
        }

        pthread_mutex_unlock(v25);
        v14 = a2;
        v22 = v370;
      }

      v26 = a9 + 24;
      if (v327 != -1)
      {
        v24 = *(v15 + 72);
        goto LABEL_17;
      }

LABEL_22:
      v13 = a5;
      if (*(v15 + 88) >= 2)
      {
        pthread_mutex_lock(*(v15 + 96));
        v28 = *(v15 + 120);
        pthread_mutex_unlock(*(v15 + 96));
        v14 = a2;
        if (v28)
        {
          return;
        }
      }

LABEL_24:
      v29 = v14;
      sub_27798E348(a3, *(*(v14 + 24696) + 28), a1, v13, v18, v12, v321 + v12);
      v333 = v18;
      if (!a8)
      {
        v112 = *(v22 + 4);
        v113 = *(v22 + 8);
        v114 = ((*(v29 + 532) + (1 << v113 >> 1)) >> v113) - (v13 >> v113);
        v374 = v113;
        if (v114 >= (0x20u >> v113))
        {
          v114 = 0x20u >> v113;
        }

        v382 = v114;
        LODWORD(v115) = ((*(v29 + 536) + (1 << v112 >> 1)) >> v112) - (v18 >> v112);
        if (v115 >= (0x20u >> v112))
        {
          v115 = 0x20u >> v112;
        }

        else
        {
          v115 = v115;
        }

        v364 = v115;
        v14 = v29;
        if (v115 >= 1)
        {
          v367 = 0;
          v356 = *(v22 + 16);
          v116 = *(v22 + 40);
          v117 = (4 * v18) >> v112;
          do
          {
            if (v382 >= 1)
            {
              v118 = 0;
              v119 = (v356 + 4 * v367);
              do
              {
                v391 = 0;
                v392 = 0;
                v120 = v12;
                v121 = sub_277A4708C(&v391, (*(v14 + 580) << v374), v14, a4, 1, v117 + 4 * v367, (v315 >> v374) + 4 * v118, v12, v22);
                if (v121 == 255)
                {
                  v122 = 0;
                  LOBYTE(v391) = 0;
                }

                else
                {
                  v122 = v121;
                }

                sub_277A47D6C(v119, v116, &v391, *(*(a2 + 24696) + 72), *(*(a2 + 24696) + 76), 0);
                v14 = a2;
                v123 = *&byte_277BFDB54[4 * v122];
                v118 += v123;
                v119 = (v119 + (4 * v116 * v123));
                v12 = v120;
                v22 = v370;
              }

              while (v118 < v382);
            }

            ++v367;
          }

          while (v367 != v364);
        }

        goto LABEL_262;
      }

      if (!v12)
      {
        v124 = 1 << a12;
        if ((((*(a3 + 36) + 3) >> 2) - v13) < v318)
        {
          v124 = ((*(a3 + 36) + 3) >> 2) - v13;
        }

        v125 = ((*(a3 + 32) + 3) >> 2) - v18;
        if (v125 >= 32)
        {
          v126 = 32;
        }

        else
        {
          v126 = ((*(a3 + 32) + 3) >> 2) - v18;
        }

        v14 = a2;
        if (v125 < 1)
        {
          goto LABEL_262;
        }

        v127 = 0;
        v340 = *(a3 + 16);
        v368 = v124 + a5;
        v365 = -*(a2 + 580);
        v375 = 4 * *(a3 + 40);
        v352 = v124;
        v344 = v126;
        v348 = *(a3 + 40);
        while (2)
        {
          *a10 = 0;
          v383 = v127 + v333;
          v128 = *(v14 + 568) + 8 * (*(v14 + 580) * a5) + 8 * v383;
          v129 = *v128;
          v130 = *(*v128 + 167);
          v357 = v127;
          if (a4 && *(v360 + 4 * (v130 & 7)))
          {
            v131 = 0;
            if (a5)
            {
              v132 = *(v128 + 8 * v365);
              goto LABEL_206;
            }

LABEL_209:
            v136 = 128;
            goto LABEL_224;
          }

          v131 = v129[145];
          if (((v130 & 0x80) != 0 || v129[16] >= 1) && !v129[144])
          {
            v135 = *v129;
            v131 = v129[(((byte_277C3F990[v135] - 1) & v383) >> byte_277BFC806[v135]) + 146 + (((byte_277C36D60[v135] - 1) & a5) >> byte_277BFC81C[v135] << byte_277BFC832[v135])];
            if (!a5)
            {
              goto LABEL_209;
            }
          }

          else if (!a5)
          {
            goto LABEL_209;
          }

          v132 = *(v128 + 8 * v365);
          if (a4)
          {
LABEL_206:
            v133 = *(v132 + 167);
            if (*(v360 + 4 * (v133 & 7)))
            {
              v134 = 0;
LABEL_215:
              v136 = byte_277C3CAFE[*v132];
              v138 = sub_277A47B90(v14, v387, 1u, 0, v129);
              if (!v138)
              {
                v138 = sub_277A47B90(a2, v387, 1u, 0, v132);
              }

              if (v132 == v129)
              {
                v14 = a2;
                if (v129[144] && ((v130 & 0x80) != 0 || v129[16] >= 1))
                {
                  goto LABEL_224;
                }
              }

              else
              {
                v14 = a2;
              }

              if (v138)
              {
                *a10 = dword_277BF8478[19 * v131 + v134];
                *(a10 + 1) = v387 + 48 * v138;
              }

LABEL_224:
              if (v136 >= byte_277C3CAFE[*v129])
              {
                v139 = byte_277C3CAFE[*v129];
              }

              else
              {
                v139 = v136;
              }

              *a11 = v131;
              v140 = *&byte_277BFDB54[4 * v131];
              v141 = v140 + a5;
              if (v140 + a5 >= v368)
              {
LABEL_248:
                if ((v357 & 3) != 0 || (v155 = v357 | 3, (v357 | 3) >= v344) || v139 <= 15)
                {
                  v152 = v357 + 1 < v344;
                  v153 = v139 > 7;
                  v154 = v152 && v153;
                  if (v152 && v153)
                  {
                    v155 = v357 + 1;
                  }

                  else
                  {
                    v155 = v357;
                  }
                }

                else
                {
                  v154 = 2;
                }

                v156 = a11;
                if (v352 >= 1)
                {
                  v157 = 0;
                  v158 = a10;
                  v159 = (v340 + 4 * v357);
                  do
                  {
                    if (*v156 == 255)
                    {
                      *v158 = 0;
                      *v156 = 0;
                    }

                    sub_277A47D6C(v159, v348, v158, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v154);
                    v14 = a2;
                    v160 = *&byte_277BFDB54[4 * *v156];
                    v157 += v160;
                    v159 = (v159 + (v375 * v160));
                    v158 += 16 * v160;
                    v156 += v160;
                  }

                  while (v157 < v352);
                }

                v127 = v155 + 1;
                v22 = v370;
                if (v155 + 1 >= v344)
                {
                  goto LABEL_262;
                }

                continue;
              }

              v142 = &a11[v140];
              v143 = &a10[16 * v140];
              while (2)
              {
                v144 = v131;
                *v143 = 0;
                v145 = (*(v14 + 568) + 8 * *(v14 + 580) * v141 + 8 * v383);
                v146 = *v145;
                v147 = *(*v145 + 167);
                if (a4 && *(v360 + 4 * (v147 & 7)))
                {
                  v131 = 0;
                }

                else
                {
                  v131 = v146[145];
                  if (((v147 & 0x80) != 0 || v146[16] >= 1) && !v146[144])
                  {
                    v148 = *v146;
                    v131 = v146[(((byte_277C3F990[v148] - 1) & v383) >> byte_277BFC806[v148]) + 146 + (((byte_277C36D60[v148] - 1) & v141) >> byte_277BFC81C[v148] << byte_277BFC832[v148])];
                  }
                }

                v149 = v145[v365];
                v150 = sub_277A47B90(v14, v387, 1u, 0, *v145);
                if (!v150)
                {
                  v150 = sub_277A47B90(a2, v387, 1u, 0, v149);
                }

                if (v149 == v146)
                {
                  v14 = a2;
                  if (!v146[144] || (v147 & 0x80) == 0 && v146[16] < 1)
                  {
                    goto LABEL_243;
                  }
                }

                else
                {
                  v14 = a2;
LABEL_243:
                  if (v150)
                  {
                    *v143 = dword_277BF8478[19 * v131 + v144];
                    *(v143 + 1) = v387 + 48 * v150;
                  }
                }

                if (v139 >= byte_277C3CAFE[*v146])
                {
                  v139 = byte_277C3CAFE[*v146];
                }

                *v142 = v131;
                v151 = *&byte_277BFDB54[4 * v131];
                v141 += v151;
                v143 += 16 * v151;
                v142 += v151;
                if (v141 >= v368)
                {
                  goto LABEL_248;
                }

                continue;
              }
            }
          }

          else
          {
            v133 = *(v132 + 167);
          }

          break;
        }

        v134 = v132[145];
        if (((v133 & 0x80) != 0 || v132[16] >= 1) && !v132[144])
        {
          v137 = *v132;
          v134 = v132[(((byte_277C3F990[v137] - 1) & v383) >> byte_277BFC806[v137]) + 146 + (((byte_277C36D60[v137] - 1) & v316) >> byte_277BFC81C[v137] << byte_277BFC832[v137])];
        }

        goto LABEL_215;
      }

      v30 = *(v22 + 4);
      v31 = *(v22 + 8);
      v32 = (((((*(v22 + 36) << v31) + 3) >> 2) + (1 << v31 >> 1)) >> v31) - (v13 >> v31);
      if (v32 >= v318 >> v31)
      {
        v32 = v318 >> v31;
      }

      v373 = v32;
      v33 = (((((*(v22 + 32) << v30) + 3) >> 2) + (1 << v30 >> 1)) >> v30) - (v18 >> v30);
      if (v33 >= (0x20u >> v30))
      {
        v33 = 0x20u >> v30;
      }

      v331 = v33;
      v14 = a2;
      if (v33 >= 1)
      {
        v34 = 0;
        v343 = v30;
        v355 = (v32 << v31) + a5;
        v363 = v31;
        v329 = v31 | a5;
        v347 = -(*(a2 + 580) << v31);
        v351 = *(v22 + 40);
        do
        {
          v338 = v34;
          *a10 = 0;
          v35 = ((v34 << v343) + v333) | v343;
          v36 = (*(v14 + 568) + 8 * (*(v14 + 580) * v329) + 8 * v35);
          v37 = *v36;
          if (a4 && *(v360 + 4 * (*(v37 + 167) & 7)))
          {
            v38 = a11;
            *a11 = 0;
            v39 = a5;
            v40 = v363;
            v41 = 0;
            if (!a5)
            {
              v44 = 0;
              v45 = 64;
              goto LABEL_74;
            }

            v42 = v36[v347];
          }

          else
          {
            v40 = v363;
            v41 = byte_277C3BD80[byte_277C3BCDE[4 * *v37 + 2 * v343 + v363]];
            v39 = a5;
            v38 = a11;
            if (v41 > 0x10)
            {
              if (v41 == 17)
              {
                v41 = 9;
              }

              else if (v41 == 18)
              {
                v41 = 10;
              }
            }

            else if (v41 - 11 < 2 || v41 == 4)
            {
              v41 = 3;
            }

            *a11 = v41;
            if (!a5)
            {
              v45 = 64;
              goto LABEL_73;
            }

            v42 = v36[v347];
            if (!a4)
            {
              goto LABEL_52;
            }
          }

          if (*(v360 + 4 * (*(v42 + 167) & 7)))
          {
            v46 = 0;
            goto LABEL_64;
          }

LABEL_52:
          v46 = byte_277C3BD80[byte_277C3BCDE[4 * *v42 + 2 * v343 + v40]];
          if (v46 > 0x10)
          {
            if (v46 == 17)
            {
              v46 = 9;
            }

            else if (v46 == 18)
            {
              v46 = 10;
            }
          }

          else if ((v46 - 11) < 2 || v46 == 4)
          {
            v46 = 3;
          }

LABEL_64:
          v45 = dword_277C3BEE4[v46];
          v48 = sub_277A47B90(v14, v387, 1u, a6, v37);
          if (!v48)
          {
            v48 = sub_277A47B90(a2, v387, 1u, a6, v42);
          }

          v14 = a2;
          v49 = v42 != v37 || !v37[144] || (*(v37 + 167) & 0x80) == 0 && v37[16] < 1;
          v50 = !v49;
          if (v42 != v37)
          {
            v50 = 0;
          }

          if (!v50 && v48)
          {
            *a10 = dword_277BF8FC0[19 * v41 + v46];
            *(a10 + 1) = v387 + 48 * v48;
            v44 = *v38;
            goto LABEL_74;
          }

LABEL_73:
          v44 = v41;
LABEL_74:
          if (v45 >= dword_277C3BEE4[v41])
          {
            v51 = dword_277C3BEE4[v41];
          }

          else
          {
            v51 = v45;
          }

          v52 = *&byte_277BFDB54[4 * v44];
          v53 = v363;
          v54 = (v52 << v363) + v39;
          if (v54 >= v355)
          {
            v12 = a6;
          }

          else
          {
            v55 = &v38[v52];
            v56 = &a10[16 * v52];
            v12 = a6;
            do
            {
              *v56 = 0;
              v57 = (*(v14 + 568) + 8 * *(v14 + 580) * (v54 | v53) + 8 * v35);
              v58 = *v57;
              if (a4 && *(v360 + 4 * (*(v58 + 167) & 7)))
              {
                v59 = 0;
              }

              else
              {
                v59 = byte_277C3BD80[byte_277C3BCDE[4 * *v58 + 2 * v343 + v53]];
                if (v59 > 0x10)
                {
                  if (v59 == 17)
                  {
                    v59 = 9;
                  }

                  else if (v59 == 18)
                  {
                    v59 = 10;
                  }
                }

                else if (v59 - 11 < 2 || v59 == 4)
                {
                  v59 = 3;
                }
              }

              *v55 = v59;
              v61 = v57[v347];
              v62 = sub_277A47B90(v14, v387, 1u, a6, v58);
              if (!v62)
              {
                v62 = sub_277A47B90(a2, v387, 1u, a6, v61);
              }

              v14 = a2;
              v63 = v61 != v58 || !v58[144] || (*(v58 + 167) & 0x80) == 0 && v58[16] < 1;
              v64 = !v63;
              v65 = v61 == v58 && v64;
              v66 = v59;
              if (!v65)
              {
                v66 = v59;
                if (v62)
                {
                  *v56 = dword_277BF8FC0[19 * v59 + v44];
                  *(v56 + 1) = v387 + 48 * v62;
                  v66 = *v55;
                }
              }

              if (v51 >= dword_277C3BEE4[v59])
              {
                v51 = dword_277C3BEE4[v59];
              }

              v67 = *&byte_277BFDB54[4 * v66];
              v53 = v363;
              v54 += v67 << v363;
              v56 += 16 * v67;
              v55 += v67;
              v44 = v66;
            }

            while (v54 < v355);
          }

          if ((v338 & 3) != 0 || (v338 | 3) >= v331 || v51 <= 15)
          {
            v22 = v370;
            v68 = 4 * v351;
            if (v338)
            {
              v336 = 0;
              v71 = 0;
            }

            else
            {
              v70 = (v338 | 1) < v331 && v51 > 7;
              v336 = v70;
              v71 = v70;
            }
          }

          else
          {
            v71 = 2;
            v336 = 3;
            v22 = v370;
            v68 = 4 * v351;
          }

          if (v373 >= 1)
          {
            v72 = 0;
            v73 = a10;
            v74 = a11;
            v381 = v71;
            while (1)
            {
              if (*v74 == 255)
              {
                *v73 = 0;
                *v74 = 0;
              }

              v75 = 4 * v338 + v68 * v72;
              v76 = (*(v22 + 16) + v75);
              if (!v386)
              {
                sub_277A47D6C(v76, v351, v73, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v381);
                goto LABEL_137;
              }

              v77 = (*(v22 + 2624) + v75);
              v78 = *(v14 + 24696);
              v79 = *(v73 + 1);
              if (!*(v78 + 76))
              {
                break;
              }

              v80 = *(v78 + 72);
              v81 = (2 * v76);
              v82 = (2 * v77);
              HIDWORD(v84) = *v73 - 4;
              LODWORD(v84) = HIDWORD(v84);
              v83 = v84 >> 1;
              if (v71 == 1)
              {
                if (v83 == 1)
                {
                  v100 = v351;
                  sub_2779D8C5C(v81, v351, *v79, v79[16], v79 + 32, v80);
                  sub_2779D8C5C(v81 + 1, v351, *v79, v79[16], v79 + 32, v80);
                  sub_2779D8C5C(v82, v351, *v79, v79[16], v79 + 32, v80);
                  v101 = v79[16];
                  v102 = *v79;
                  v103 = v82 + 1;
LABEL_162:
                  v104 = v79 + 32;
                  goto LABEL_164;
                }

                if (v83)
                {
                  goto LABEL_138;
                }

                v85 = v351;
                sub_2779D893C(v81, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 1, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82, v351, *v79, v79[16], v79 + 32, v80);
                v86 = v79[16];
                v87 = *v79;
                v88 = v82 + 1;
LABEL_148:
                v92 = v79 + 32;
LABEL_152:
                v93 = v85;
                v68 = 4 * v351;
                sub_2779D893C(v88, v93, v87, v86, v92, v80);
LABEL_137:
                v71 = v381;
                v14 = a2;
                goto LABEL_138;
              }

              if (v71 != 2)
              {
                if (v83 != 1)
                {
                  if (v83)
                  {
                    goto LABEL_138;
                  }

                  v85 = v351;
                  sub_2779D893C(v81, v351, *v79, v79[16], v79 + 32, v80);
                  v86 = v79[16];
                  v87 = *v79;
                  v92 = v79 + 32;
                  v88 = v82;
                  goto LABEL_152;
                }

                v100 = v351;
                sub_2779D8C5C(v81, v351, *v79, v79[16], v79 + 32, v80);
                v101 = v79[16];
                v102 = *v79;
                v104 = v79 + 32;
                v103 = v82;
LABEL_164:
                v105 = v100;
                v68 = 4 * v351;
                sub_2779D8C5C(v103, v105, v102, v101, v104, v80);
                goto LABEL_137;
              }

              if (v83 == 1)
              {
                v100 = v351;
                sub_2779D8C5C(v81, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v81 + 1, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v81 + 2, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v81 + 3, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v82, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v82 + 1, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v82 + 2, v351, *v79, v79[16], v79 + 32, v80);
                v101 = v79[16];
                v102 = *v79;
                v103 = v82 + 3;
                goto LABEL_162;
              }

              if (!v83)
              {
                v85 = v351;
                sub_2779D893C(v81, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 1, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 2, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 3, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82 + 1, v351, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82 + 2, v351, *v79, v79[16], v79 + 32, v80);
                v86 = v79[16];
                v87 = *v79;
                v88 = v82 + 3;
                goto LABEL_148;
              }

LABEL_138:
              v89 = *&byte_277BFDB54[4 * *v74];
              v72 += v89;
              v73 += 16 * v89;
              v74 += v89;
              if (v72 >= v373)
              {
                goto LABEL_169;
              }
            }

            HIDWORD(v91) = *v73 - 4;
            LODWORD(v91) = HIDWORD(v91);
            v90 = v91 >> 1;
            if (v71 == 1)
            {
              if (v90 != 1)
              {
                if (v90)
                {
                  goto LABEL_138;
                }

                v94 = v351;
                sub_27798D060(v76, v351, *v79, v79[16], v79[32]);
                sub_27798D060(v76 + 1, v351, *v79, v79[16], v79[32]);
                sub_27798D060(v77, v351, *v79, v79[16], v79[32]);
                v95 = v79[32];
                v96 = v79[16];
                v97 = *v79;
                v98 = v77 + 1;
                goto LABEL_159;
              }

              v106 = v351;
              sub_27798CF14(v76, v351, *v79, v79[16], v79[32]);
              sub_27798CF14(v76 + 1, v351, *v79, v79[16], v79[32]);
              sub_27798CF14(v77, v351, *v79, v79[16], v79[32]);
              v107 = v79[32];
              v108 = v79[16];
              v109 = *v79;
              v110 = v77 + 1;
            }

            else
            {
              if (v71 == 2)
              {
                if (v90 == 1)
                {
                  sub_27798CFBC(v76, v351, *(v73 + 1), v79 + 16, v79 + 32);
                  v68 = 4 * v351;
                  sub_27798CFBC(v77, v351, v79, v79 + 16, v79 + 32);
                }

                else
                {
                  if (v90)
                  {
                    goto LABEL_138;
                  }

                  sub_27798D0F0(v76, v351, *(v73 + 1), v79 + 16, v79 + 32);
                  v68 = 4 * v351;
                  sub_27798D0F0(v77, v351, v79, v79 + 16, v79 + 32);
                }

                goto LABEL_137;
              }

              if (v90 != 1)
              {
                if (v90)
                {
                  goto LABEL_138;
                }

                v94 = v351;
                sub_27798D060(v76, v351, *v79, v79[16], v79[32]);
                v95 = v79[32];
                v96 = v79[16];
                v97 = *v79;
                v98 = v77;
LABEL_159:
                v99 = v94;
                v68 = 4 * v351;
                sub_27798D060(v98, v99, v97, v96, v95);
                goto LABEL_137;
              }

              v106 = v351;
              sub_27798CF14(v76, v351, *v79, v79[16], v79[32]);
              v107 = v79[32];
              v108 = v79[16];
              v109 = *v79;
              v110 = v77;
            }

            v111 = v106;
            v68 = 4 * v351;
            sub_27798CF14(v110, v111, v109, v108, v107);
            goto LABEL_137;
          }

LABEL_169:
          v34 = v338 + v336 + 1;
        }

        while (v34 < v331);
      }

LABEL_262:
      v18 = v333 + 32;
      v13 = a5;
      v15 = a9;
      v20 = v327 - 1;
      v19 = v327;
      v21 = a9 + 48;
      if ((v333 + 32) >= *(v14 + 536))
      {
        return;
      }
    }

    v26 = a9 + 24;
LABEL_17:
    if (((v24 + 0x3FFFFFF) & v23) == 0)
    {
      v27 = (*(v15 + 8 * v12) + (v19 << 6));
      pthread_mutex_lock(v27);
      while (*(*(v21 + 8 * v12) + 4 * v19) - v24 < v23)
      {
        pthread_cond_wait((*(v26 + 8 * v12) + 48 * v19), v27);
      }

      pthread_mutex_unlock(v27);
      v14 = a2;
    }

    goto LABEL_22;
  }
}

uint64_t sub_2779D126C(uint64_t result, int a2, uint64_t a3, char a4)
{
  v4 = ~(-1 << a4);
  v5 = ((v4 + result) >> a4);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = (v4 + a2) >> a4;
    do
    {
      v9 = a3;
      v10 = 3;
      do
      {
        v11 = *(a3 + 72) + v8;
        pthread_mutex_lock((*v9 + (v7 << 6)));
        v12 = v9[6];
        v13 = *(v12 + 4 * v7);
        if (v13 <= v11)
        {
          v13 = v11;
        }

        *(v12 + 4 * v7) = v13;
        pthread_cond_broadcast((v9[3] + 48 * v7));
        v14 = *v9++;
        result = pthread_mutex_unlock((v14 + (v7 << 6)));
        --v10;
      }

      while (v10);
      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

void sub_2779D132C(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, int a10)
{
  v61 = *MEMORY[0x277D85DE8];
  v14 = a2[2878].i32[0];
  if (v14)
  {
    if (a4 > 0)
    {
      v14 = 0;
      v54 = 1;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v54 = 1;
  if (a4 <= 0 && a2[2878].i32[1])
  {
LABEL_6:
    v54 = 0;
    v14 = 1;
  }

LABEL_7:
  v57 = v14;
  v15 = vand_s8(vcgt_s32(vdup_n_s32(a5), 0x200000001), vbic_s8(vcgt_s32(0x300000002, vdup_n_s32(a4)), vceqz_s32(a2[2879])));
  v58 = vand_s8(v15, 0x100000001);
  v16 = v14 ^ 1;
  if (a4 >= 1)
  {
    v16 = 0;
  }

  if (v16)
  {
    return;
  }

  v17 = v15.i8[0];
  v18 = v15.i8[4];
  if (((v14 | v15.i32[0] | v15.i32[1]) & 1) == 0)
  {
    return;
  }

  v19 = a2[66].u32[1];
  v20 = (v19 >> 1) & 0x3FFFFFF8;
  v21 = v19 >> 3;
  if (v19 <= 0x47)
  {
    v21 = 8;
  }

  if (v19 < 9)
  {
    v20 = 0;
    v21 = a2[66].i32[1];
  }

  if (a6)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (a6)
  {
    v23 = v21;
  }

  else
  {
    v23 = a2[66].i32[1];
  }

  v52 = v23 + v22;
  sub_277A46E40(a2, a4, a5);
  v55 = a2;
  if (a8 <= 1)
  {
    if (v23 < 1)
    {
      return;
    }

    v53 = v17 | v18;
    while (1)
    {
      for (i = 0; i != 3; ++i)
      {
        if (a10 == 2)
        {
          if (i == 2)
          {
            continue;
          }

          if (i == 1)
          {
            if ((v53 & 1) == 0)
            {
              continue;
            }

            v46 = 1;
          }

          else
          {
            if (v54)
            {
              continue;
            }

            v46 = 0;
          }
        }

        else
        {
          if (!*(&v57 + i))
          {
            continue;
          }

          v46 = i;
        }

        sub_2779CE7E8(a1, v55, a3 + 16, a3, v22, v46, 0, a10, 0, __dst, v59, 5);
        sub_2779CE7E8(a1, v55, a3 + 16, a3, v22, v46, 1, a10, 0, __dst, v59, 5);
      }

      v22 += 32;
      if (v22 >= v52)
      {
        return;
      }
    }
  }

  v24 = (a2[66].i32[1] + 31) >> 5;
  if (!*(a9 + 72) || v24 != *(a9 + 76) || *(a9 + 88) < a8)
  {
    sub_2779CE694(a9);
    sub_2779CE28C(a9, a2, v24, a2[7].i32[0], a8);
  }

  *(a9 + 120) = 0;
  v25 = 4 * v24;
  for (j = 48; j != 72; j += 8)
  {
    memset(*(a9 + j), 255, v25);
  }

  v27 = 0;
  v28 = 0;
  v29 = *(a9 + 104);
  v30 = 1;
  *(a9 + 112) = 0;
  do
  {
    v31 = v30;
    if (v23 < 1)
    {
      goto LABEL_44;
    }

    v32 = v22;
    do
    {
      for (k = 0; k != 3; ++k)
      {
        if (a10 == 2)
        {
          if (k == 2)
          {
            continue;
          }

          if (k == 1)
          {
            if (!*&v58)
            {
              continue;
            }
          }

          else if (!v57)
          {
            continue;
          }
        }

        else if (!*(&v57 + k))
        {
          continue;
        }

        if (*(&v57 + k))
        {
          *v29 = v32;
          v29[1] = k;
          v29[2] = v28;
          v29[3] = a10;
          v29 += 4;
          *(a9 + 112) = ++v27;
        }
      }

      v32 += 32;
    }

    while (v32 < v52);
LABEL_44:
    v30 = 0;
    v28 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = a8;
  v35 = 8800 * a8 - 8780;
  v36 = a8;
  while (1)
  {
    v37 = a7 + 56 * (v36 - 1);
    v38 = *(a9 + 80);
    *(v37 + 24) = sub_2779D188C;
    *(v37 + 32) = a9;
    v39 = (v38 + 8800 * (v36 - 1));
    *(v37 + 40) = v39;
    *v39 = a1;
    v39[1] = v55;
    v39[980] = a3;
    v40 = v38 + v35;
    v41 = a3 + 20;
    v42 = 3;
    do
    {
      v43 = *(v41 + 12);
      *(v40 + 28) = *(v41 + 28);
      *(v40 + 12) = v43;
      *v40 = *v41;
      v41 += 2608;
      v40 += 2608;
      --v42;
    }

    while (v42);
    *(v37 + 48) = 0;
    if (v36 == 1)
    {
      break;
    }

    sub_277985E48(v37, 2);
    v35 -= 8800;
    v44 = v36-- <= 1;
    if (v44)
    {
      goto LABEL_70;
    }
  }

  v47 = *(v37 + 24);
  if (v47)
  {
    *(v37 + 48) |= v47(*(v37 + 32), *(v37 + 40)) == 0;
  }

LABEL_70:
  v48 = *(a7 + 48);
  v49 = v48 == 0;
  memset(__dst, 0, 404);
  if (v48)
  {
    memcpy(__dst, (*(a7 + 40) + 8392), 0x194uLL);
    v49 = 0;
  }

LABEL_72:
  v50 = a7 - 56 + 56 * v34;
  do
  {
    v51 = v34 - 1;
    sub_277985E48(v50, 1);
    if (*(v50 + 48))
    {
      memcpy(__dst, (*(v50 + 40) + 8392), 0x194uLL);
      v49 = 0;
      v44 = v34-- > 2;
      if (v44)
      {
        goto LABEL_72;
      }

      goto LABEL_79;
    }

    v50 -= 56;
    --v34;
  }

  while (v51 + 1 > 2);
  if (v49)
  {
    return;
  }

LABEL_79:
  sub_2779F5C78(*&v55[6], __dst);
}

uint64_t sub_2779D188C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (setjmp((a2 + 8604)))
  {
    *(a2 + 8600) = 0;
    pthread_mutex_lock(v4);
    *(a1 + 120) = 1;
    pthread_mutex_unlock(v4);
    sub_2779D126C(*(*(a2 + 8) + 532), *(*(a2 + 8) + 536), a1, 5);
    return 0;
  }

  else
  {
    *(a2 + 8600) = 1;
    while (1)
    {
      pthread_mutex_lock(*(a1 + 96));
      if (*(a1 + 120))
      {
        break;
      }

      v6 = *(a1 + 116);
      if (v6 >= *(a1 + 112))
      {
        break;
      }

      *(a1 + 116) = v6 + 1;
      v7 = *(a1 + 104);
      pthread_mutex_unlock(*(a1 + 96));
      if (!v7)
      {
        goto LABEL_9;
      }

      sub_2779CE7E8(*a2, *(a2 + 8), a2 + 16, *(a2 + 7840), *(v7 + 16 * v6), *(v7 + 16 * v6 + 4), *(v7 + 16 * v6 + 8), *(v7 + 16 * v6 + 12), a1, (a2 + 7848), (a2 + 8360), 5);
    }

    pthread_mutex_unlock(*(a1 + 96));
LABEL_9:
    *(a2 + 8600) = 0;
    return 1;
  }
}

void *sub_2779D19B4(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v8 = 0;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  v9 = a1 + 24;
  v50 = a5;
  if (a4 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4;
  }

  v47 = a4;
  v48 = 48 * a4;
  size = (a4 << 6) | 0x17;
  v11 = v10 << 6;
  v12 = 16 * (v10 + 2 * v10);
  v13 = a4 >> 27;
  do
  {
    if (v13 || (v14 = malloc_type_malloc(size, 0x5F484EBFuLL)) == 0)
    {
      v16 = (a1 + 8 * v8);
      *v16 = 0;
LABEL_13:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->mutex_[j]");
      if (*v16)
      {
        v20 = a4 < 1;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v15 - 8) = v14;
    v16 = (a1 + 8 * v8);
    *v16 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    if (a4 < 1)
    {
      v17 = malloc_type_malloc(0x17uLL, 0x5F484EBFuLL);
      if (!v17)
      {
        goto LABEL_24;
      }

      v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v18 - 8) = v17;
      v19 = (v9 + 8 * v8);
      *v19 = v18;
      if (v18)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

LABEL_17:
    v21 = 0;
    do
    {
      pthread_mutex_init((*v16 + v21), 0);
      v21 += 64;
    }

    while (v11 != v21);
LABEL_19:
    if (a4 > 0xAAAAAAA || (v22 = malloc_type_malloc(v48 + 23, 0x5F484EBFuLL)) == 0)
    {
LABEL_24:
      v19 = (v9 + 8 * v8);
      *v19 = 0;
      goto LABEL_25;
    }

    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v23 - 8) = v22;
    v19 = (v9 + 8 * v8);
    *v19 = v23;
    if (v23)
    {
      if (a4 < 1)
      {
        goto LABEL_31;
      }

LABEL_29:
      v25 = 0;
      do
      {
        pthread_cond_init((*v19 + v25), 0);
        v25 += 48;
      }

      while (v12 != v25);
      goto LABEL_31;
    }

LABEL_25:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->cond_[j]");
    if (*v19)
    {
      v24 = a4 < 1;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      goto LABEL_29;
    }

LABEL_31:
    ++v8;
  }

  while (v8 != v50);
  v26 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v26)
  {
    *(a1 + 88) = 0;
    v29 = (a1 + 88);
    v30 = a3;
    v31 = v47;
    goto LABEL_36;
  }

  v27 = v26;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF0);
  *&v28[-1].__opaque[48] = v27;
  *(a1 + 88) = v28;
  v29 = (a1 + 88);
  v30 = a3;
  v31 = v47;
  if (v28)
  {
LABEL_37:
    pthread_mutex_init(v28, 0);
  }

  else
  {
LABEL_36:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->job_mutex");
    v28 = *v29;
    if (*v29)
    {
      goto LABEL_37;
    }
  }

  v32 = sub_2779724A8(v30, 0x1B0uLL);
  *(a1 + 96) = v32;
  if (!v32)
  {
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->lrworkerdata");
  }

  *(a1 + 84) = v30;
  if (v30 >= 1)
  {
    v33 = 0;
    v34 = 0;
    while (1)
    {
      if (v34 >= (v30 - 1))
      {
        *(*(a1 + 96) + v33) = *(a2 + 23248);
        goto LABEL_54;
      }

      v35 = malloc_type_malloc(0x13B9B7uLL, 0x5F484EBFuLL);
      if (!v35)
      {
        break;
      }

      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v36 - 8) = v35;
      *(*(a1 + 96) + v33) = v36;
      if (!v36)
      {
        goto LABEL_48;
      }

LABEL_49:
      v37 = malloc_type_malloc(0x1277uLL, 0x5F484EBFuLL);
      if (!v37)
      {
        *(*(a1 + 96) + v33 + 8) = 0;
LABEL_53:
        sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->lrworkerdata[worker_idx].rlbs");
        goto LABEL_54;
      }

      v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v38 - 8) = v37;
      *(*(a1 + 96) + v33 + 8) = v38;
      if (!v38)
      {
        goto LABEL_53;
      }

LABEL_54:
      ++v34;
      v33 += 432;
      if (432 * v30 == v33)
      {
        goto LABEL_55;
      }
    }

    *(*(a1 + 96) + v33) = 0;
LABEL_48:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->lrworkerdata[worker_idx].rst_tmpbuf");
    goto LABEL_49;
  }

LABEL_55:
  v39 = (a1 + 48);
  v40 = v50;
  while (2)
  {
    if (a4 > 0x7FFFFFFA || (v41 = malloc_type_malloc(4 * v31 + 23, 0x5F484EBFuLL)) == 0)
    {
      *v39 = 0;
      goto LABEL_61;
    }

    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v42 - 8) = v41;
    *v39 = v42;
    if (!v42)
    {
LABEL_61:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->cur_sb_col[j]");
    }

    ++v39;
    if (--v40)
    {
      continue;
    }

    break;
  }

  v43 = 28 * v31 * v50;
  if (v43 > 0x1FFFFFFE9 || (result = malloc_type_malloc(v43 + 23, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 104) = 0;
    goto LABEL_68;
  }

  v45 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v45 - 8) = result;
  *(a1 + 104) = v45;
  if (!v45)
  {
LABEL_68:
    result = sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->job_queue");
  }

  *(a1 + 72) = 1;
  return result;
}

double sub_2779D1E04(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = a1 + 24;
    do
    {
      v4 = *(a1 + 8 * v2);
      if (v4)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_8;
        }

        v5 = 0;
        v6 = 0;
        do
        {
          pthread_mutex_destroy((*(a1 + 8 * v2) + v5));
          ++v6;
          v5 += 64;
        }

        while (v6 < *(a1 + 76));
        v4 = *(a1 + 8 * v2);
        if (v4)
        {
LABEL_8:
          free(*(v4 - 8));
        }
      }

      v7 = *(v3 + 8 * v2);
      if (v7)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_14;
        }

        v8 = 0;
        v9 = 0;
        do
        {
          pthread_cond_destroy((*(v3 + 8 * v2) + v8));
          ++v9;
          v8 += 48;
        }

        while (v9 < *(a1 + 76));
        v7 = *(v3 + 8 * v2);
        if (v7)
        {
LABEL_14:
          free(*(v7 - 8));
        }
      }

      ++v2;
    }

    while (v2 != 3);
    v10 = *(a1 + 88);
    if (v10)
    {
      pthread_mutex_destroy(v10);
      v11 = *(a1 + 88);
      if (v11)
      {
        free(*(v11 - 8));
      }
    }

    for (i = 48; i != 72; i += 8)
    {
      v13 = *(a1 + i);
      if (v13)
      {
        free(*(v13 - 8));
      }
    }

    v14 = *(a1 + 104);
    if (v14)
    {
      free(*(v14 - 8));
    }

    v15 = *(a1 + 96);
    if (v15)
    {
      if (*(a1 + 84) < 2)
      {
        goto LABEL_34;
      }

      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(a1 + 96);
        v19 = *(v18 + v16);
        if (v19)
        {
          free(*(v19 - 8));
        }

        v20 = *(v18 + v16 + 8);
        if (v20)
        {
          free(*(v20 - 8));
        }

        ++v17;
        v16 += 432;
      }

      while (v17 < *(a1 + 84) - 1);
      v15 = *(a1 + 96);
      if (v15)
      {
LABEL_34:
        free(*(v15 - 8));
      }
    }

    result = 0.0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2779D1FB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v33 = v4 + 8;
  v5 = *(a1 + 88);
  if (setjmp((a2 + 240)))
  {
    *(a2 + 236) = 0;
    pthread_mutex_lock(v5);
    *(a1 + 120) = 1;
    pthread_mutex_unlock(v5);
    v6 = a1 + 24;
    v32 = a1 + 48;
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = v33 + 56 * v7;
      v10 = *v9;
      if (**v9)
      {
        v11 = *(v9 + 20);
        if (v11 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v31 = v10[1];
          v30 = v10[4];
          v14 = 0;
          v15 = 0;
          do
          {
            if (v11 - v12 >= 3 * v31 / 2)
            {
              v16 = v31;
            }

            else
            {
              v16 = v11 - v12;
            }

            v17 = *(v8 + 72) + v30;
            pthread_mutex_lock((*(v8 + 8 * v7) + v15));
            v18 = *(v32 + 8 * v7);
            v19 = *(v18 + v13);
            if (v19 <= v17)
            {
              v19 = v17;
            }

            *(v18 + v13) = v19;
            pthread_cond_broadcast((*(v6 + 8 * v7) + v14));
            pthread_mutex_unlock((*(v8 + 8 * v7) + v15));
            v12 += v16;
            v15 += 64;
            v14 += 48;
            v13 += 4;
          }

          while (v12 < v11);
        }
      }

      ++v7;
    }

    while (v7 != 3);
    return 0;
  }

  else
  {
    *(a2 + 236) = 1;
    while (1)
    {
      pthread_mutex_lock(*(a1 + 88));
      if (*(a1 + 120))
      {
        break;
      }

      v21 = *(a1 + 116);
      if (v21 >= *(a1 + 112))
      {
        break;
      }

      v22 = *(a1 + 104);
      *(a1 + 116) = v21 + 1;
      pthread_mutex_unlock(*(a1 + 88));
      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = (v22 + 28 * v21);
      v34 = 0;
      v35 = 0;
      v35 = *v23;
      v24 = *(v23 + 3);
      v25 = (v33 + 56 * v24);
      v26 = v25[4];
      v27 = *(v23 + 4);
      if (v27 == 1)
      {
        v28 = sub_2779D2330;
      }

      else
      {
        v28 = nullsub_2;
      }

      v29 = nullsub_1;
      if (!v27)
      {
        v29 = sub_2779D2284;
      }

      sub_2779F8AA0(&v34, v26, *v4, *(v23 + 2), *(*v25 + 4), *(*v25 + 16), *(*v25 + 12), v24, v33 + 56 * v24, *a2, *(a2 + 8), v28, v29, a1, a2 + 28);
      (*(&off_28866D5E8 + v24))(*(v4 + 184), *(v4 + 176), 0, v26, *(v23 + 5), *(v23 + 6));
      if (*(a2 + 24))
      {
        sub_277A4848C(*(v4 + 176), v24, *(v23 + 5), *(v23 + 6));
      }
    }

    pthread_mutex_unlock(*(a1 + 88));
LABEL_26:
    *(a2 + 236) = 0;
    return 1;
  }
}

uint64_t sub_2779D2284(uint64_t result, int a2, int a3, int a4, int a5)
{
  v6 = *(result + 72);
  if (a4 - 1 <= a3)
  {
    v7 = v6 + a4;
  }

  else
  {
    v7 = a3;
    if (a3 % v6)
    {
      return result;
    }
  }

  v8 = (result + 8 * a5);
  pthread_mutex_lock((*v8 + (a2 << 6)));
  v9 = v8[6];
  v10 = *(v9 + 4 * a2);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  *(v9 + 4 * a2) = v10;
  pthread_cond_broadcast((v8[3] + 48 * a2));
  v11 = (*v8 + (a2 << 6));

  return pthread_mutex_unlock(v11);
}

uint64_t sub_2779D2330(uint64_t result, int a2, int a3, int a4)
{
  if (a2)
  {
    v5 = result;
    v6 = *(result + 72);
    if (((v6 - 1) & a3) == 0)
    {
      v8 = a2 - 1;
      v9 = a2 - 1;
      v10 = (*(result + 8 * a4) + (v9 << 6));
      pthread_mutex_lock(v10);
      v11 = v5 + 48;
      if (*(*(v5 + 48 + 8 * a4) + 4 * v8) - v6 < a3)
      {
        v12 = v5 + 24;
        do
        {
          pthread_cond_wait((*(v12 + 8 * a4) + 48 * v9), v10);
        }

        while (*(*(v11 + 8 * a4) + 4 * v9) - v6 < a3);
      }

      return pthread_mutex_unlock(v10);
    }
  }

  return result;
}

uint64_t sub_2779D240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a7;
  v10 = *(a1 + 24696);
  v11 = *(v10 + 77);
  v12 = *(a1 + 532);
  v14 = v12 + 15;
  v13 = v12 < -15;
  v15 = v12 + 30;
  if (!v13)
  {
    v15 = v14;
  }

  v16 = v15 >> 4;
  v17 = 4 * *(a1 + 536) + 15;
  *(a3 + 592) = a7 == 0;
  v18 = v16 - 1;
  v19 = v16 - 1 == a7 || 16 * a7 + 16 == *(a1 + 532);
  v48 = v17 & 0xFFFFFFF0;
  *(a3 + 600) = v19;
  v20 = *(a1 + 23584);
  *a3 = a5;
  *(a3 + 608) = v20;
  v47 = 2 * v16;
  v40 = 2 * (a7 + 1);
  v41 = 16 * (a7 + 1);
  *(a3 + 612) = *(v10 + 72) - 8;
  v46 = 2 * a7;
  v21 = (a3 + 32);
  bzero((a3 + 628), 0x800uLL);
  v22 = 0;
  v23 = a2 + 32;
  v43 = a4;
  v44 = v7;
  v42 = v18;
  do
  {
    v24 = (v48 >> *(v23 - 12));
    v25 = v24 * v47;
    if (v18 == v7)
    {
      v26 = v24 * v46;
      v27 = v24 * v46;
    }

    else
    {
      v28 = v41 << (2 - *(v23 - 8));
      v29 = *(a4 + 8 * v22);
      v30 = v29 + 2 * v25;
      sub_277AA4090(*(*(a1 + 24696) + 76), (v29 + 2 * v40 * v24), v24, *v23, v28 - 2, 0, *(v23 + 24), 2, v48 >> *(v23 - 12));
      v27 = v46 * v24;
      v31 = (v30 + 2 * v27);
      v18 = v42;
      v32 = v28;
      a4 = v43;
      v7 = v44;
      sub_277AA4090(*(*(a1 + 24696) + 76), v31, v24, *v23, v32, 0, *(v23 + 24), 2, v24);
      v26 = v46 * v24;
    }

    *(v21 - 3) = *(a4 + 8 * v22) + 2 * v27;
    *v21 = *(a4 + 8 * v22) + 2 * (v25 + v26);
    if (v11)
    {
      break;
    }

    ++v21;
    v23 += 2608;
  }

  while (v22++ < 2);
  v34 = *(a6 + 8) + 24 * a7;
  pthread_mutex_lock(*v34);
  pthread_cond_signal(*(v34 + 8));
  *(v34 + 16) = 1;
  result = pthread_mutex_unlock(*v34);
  if (v7)
  {
    v36 = *(a6 + 8) + 24 * a7;
    pthread_mutex_lock(*(v36 - 24));
    while (*(v36 - 8) != 1)
    {
      pthread_cond_wait(*(v36 - 16), *(v36 - 24));
    }

    *(v36 - 8) = 0;
    v37 = *(v36 - 24);

    return pthread_mutex_unlock(v37);
  }

  return result;
}

uint64_t sub_2779D26C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 532);
  v6 = v5 + 15;
  if (v5 < -15)
  {
    v6 = v5 + 30;
  }

  v7 = (v6 >> 4);
  v8 = *a1;
  if (setjmp(a2 + 74))
  {
    *(a2 + 73) = 0;
    pthread_mutex_lock(v8);
    *(a1 + 28) = 1;
    pthread_mutex_unlock(v8);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      v9 = v7;
      v10 = 0;
      do
      {
        v11 = v9;
        v12 = v10;
        v13 = *(a1 + 8) + v10;
        pthread_mutex_lock(*v13);
        pthread_cond_signal(*(v13 + 8));
        *(v13 + 16) = 1;
        pthread_mutex_unlock(*v13);
        v10 = v12 + 24;
        v9 = v11 - 1;
      }

      while (v11 != 1);
      return 0;
    }
  }

  else
  {
    *(a2 + 73) = 1;
    v15 = *(*(v4 + 24696) + 77);
    while (1)
    {
      pthread_mutex_lock(*a1);
      if ((*(a1 + 28) & 1) != 0 || *(a1 + 16))
      {
        break;
      }

      v26 = *(a1 + 20);
      *(a1 + 20) = v26 + 1;
      if (v26 + 1 == v7)
      {
        *(a1 + 16) = 1;
      }

      pthread_mutex_unlock(*a1);
      v16 = a2[1];
      sub_277AA4334(v4, v16, (a2 + 6), (a2 + 2), a2[5], v26, a2[9], a1);
      if (*(a2 + 20))
      {
        v17 = 0;
        v18 = (v16 + 24);
        do
        {
          v19 = v17;
          v20 = v18;
          v21 = *(v4 + 232);
          v22 = 16 << (2 - *v20);
          v23 = v22 * v26;
          v24 = v22 * v26 + v22;
          if (v24 >= *(v21 + 4 * (v17 != 0) + 1272))
          {
            v25 = *(v21 + 4 * (v17 != 0) + 1272);
          }

          else
          {
            v25 = v24;
          }

          sub_277A4848C(v21 + 1248, v17, v23, v25);
          v17 = v19 + 1;
          v18 = v20 + 652;
        }

        while (!v15 && v19 < 2);
      }
    }

    pthread_mutex_unlock(*a1);
    *(a2 + 73) = 0;
    return 1;
  }
}

float32x4_t *sub_2779D28B0(float32x4_t *result, _DWORD *a2, float32x4_t *a3)
{
  v124 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = a2[2];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = result;
      v8 = *&a2[2 * v4 + 14];
      v9 = *&a2[2 * v4 + 36];
      v10 = v3;
      result = &v118[32 * v5 + 1];
      if (v4 == v3)
      {
        result = a3;
      }

      v11 = &a2[v4 + 3];
      if (v4 == v3)
      {
        v11 = a2 + 1;
      }

      v12 = *v11;
      if (v6 & 3 | v12 & 7)
      {
        if (v6 & 7 | v12 & 3)
        {
          if (v6 & 3 | v12 & 3)
          {
            if ((v6 & 7) != 0)
            {
              if ((v6 & 3) != 0)
              {
                if (v6 < 9)
                {
                  if (v6 <= 3)
                  {
                    if (v12 >= 1)
                    {
                      for (i = 0; i != v12; ++i)
                      {
                        v108 = *(v9 + 4 * i);
                        v109 = v8;
                        v110 = v7;
                        v111 = v6;
                        if (v6 >= 1)
                        {
                          do
                          {
                            v112 = *v109++;
                            v113 = v112;
                            v114 = *v110++;
                            v108 = v108 + (v113 * v114);
                            --v111;
                          }

                          while (v111);
                        }

                        result->f32[i] = fmaxf(v108, 0.0);
                        v8 = (v8 + 4 * v6);
                      }
                    }
                  }

                  else if (v12 >= 1)
                  {
                    v97 = 0;
                    f32 = v8[1].f32;
                    do
                    {
                      v99 = vmulq_f32(*v7, *(v8 + 4 * v97 * v6));
                      v100 = *(v9 + 4 * v97) + vaddv_f32(*&vpaddq_f32(v99, v99));
                      if (v6 != 4)
                      {
                        v101 = f32;
                        v102 = v7[1].f32;
                        v103 = v6 - 4;
                        do
                        {
                          v104 = *v101++;
                          v105 = v104;
                          v106 = *v102++;
                          v100 = v100 + (v105 * v106);
                          --v103;
                        }

                        while (v103);
                      }

                      result->f32[v97++] = fmaxf(v100, 0.0);
                      f32 += v6;
                    }

                    while (v97 != v12);
                  }
                }

                else if (v12 >= 1)
                {
                  v60 = 0;
                  v61 = 4 * v6;
                  v62 = (v6 & 0x7FFFFFF8u) >> 3;
                  v63 = v8 + 1;
                  v64 = v7 + 1;
                  v65 = &v7[2 * v62];
                  v66 = v8[2 * v62].f32;
                  do
                  {
                    v67 = 0uLL;
                    v68 = v6 + 8;
                    v69 = v64;
                    v70 = v63;
                    do
                    {
                      v67 = vmlaq_f32(vmlaq_f32(v67, *v70, *v69), v70[-1], v69[-1]);
                      v70 += 2;
                      v69 += 2;
                      v68 -= 8;
                    }

                    while (v68 > 0xF);
                    v71 = *(v9 + 4 * v60) + vaddv_f32(*&vpaddq_f32(v67, v67));
                    if (v6 > (v6 & 0x7FFFFFF8))
                    {
                      v72 = v66;
                      v73 = v65;
                      v74 = v6 - (v6 & 0x7FFFFFF8);
                      do
                      {
                        v75 = *v72++;
                        v76 = v75;
                        v77 = *v73++;
                        v71 = v71 + (v76 * v77);
                        --v74;
                      }

                      while (v74);
                    }

                    result->f32[v60++] = fmaxf(v71, 0.0);
                    v63 = (v63 + v61);
                    v66 = (v66 + v61);
                  }

                  while (v60 != v12);
                }
              }

              else if (v12 >= 1)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (v6 < 1)
                  {
                    v89 = 0uLL;
                  }

                  else
                  {
                    v88 = 0;
                    v89 = 0uLL;
                    v90 = v7;
                    v91 = v8;
                    do
                    {
                      v92 = *v90++;
                      v93 = v92;
                      v94 = *v91++;
                      v89 = vmlaq_f32(v89, v94, v93);
                      v88 += 4;
                    }

                    while (v88 < v6);
                  }

                  v95 = *(v9 + 4 * j) + vaddv_f32(*&vpaddq_f32(v89, v89));
                  if (v95 <= 0.0 && v4 != v10)
                  {
                    v95 = 0.0;
                  }

                  result->f32[j] = v95;
                  v8 = (v8 + 4 * v6);
                }
              }
            }

            else if (v12 >= 1)
            {
              v78 = 0;
              v79 = v8 + 1;
              v80 = v7 + 1;
              do
              {
                if (v6 < 1)
                {
                  v82 = 0uLL;
                }

                else
                {
                  v81 = 0;
                  v82 = 0uLL;
                  v83 = v80;
                  v84 = v79;
                  do
                  {
                    v82 = vmlaq_f32(vmlaq_f32(v82, *v84, *v83), v84[-1], v83[-1]);
                    v81 += 8;
                    v84 += 2;
                    v83 += 2;
                  }

                  while (v81 < v6);
                }

                v85 = *(v9 + 4 * v78) + vaddv_f32(*&vpaddq_f32(v82, v82));
                if (v85 <= 0.0 && v4 != v10)
                {
                  v85 = 0.0;
                }

                result->f32[v78++] = v85;
                v79 = (v79 + 4 * v6);
              }

              while (v78 != v12);
            }
          }

          else if (v12 >= 1)
          {
            for (k = 0; k < v12; k += 4)
            {
              v46 = *(v9 + 4 * k);
              v47 = 0uLL;
              v120 = 0u;
              v119[0] = 0u;
              v117 = 0u;
              v118[0] = 0u;
              v48 = 0uLL;
              v49 = 0uLL;
              v50 = 0uLL;
              if (v6 >= 1)
              {
                for (m = 0; m < v6; m += 4)
                {
                  v52 = 0;
                  v53 = v7[m / 4];
                  v54 = v8->i64 + 4 * k * v6 + 4 * m;
                  v55 = &v120;
                  v56 = v118;
                  v57 = 1;
                  do
                  {
                    v58 = v57;
                    *v55 = vmlaq_f32(*v55, v53, *(v54 + 4 * v52 * v6));
                    *v56 = vmlaq_f32(*v56, v53, *(v54 + 4 * (v52 | 1) * v6));
                    v55 = v119;
                    v56 = &v117;
                    v52 = 2;
                    v57 = 0;
                  }

                  while ((v58 & 1) != 0);
                }

                v50 = v120;
                v47 = v117;
                v49 = v118[0];
                v48 = v119[0];
              }

              v59 = vaddq_f32(v46, vpaddq_f32(vpaddq_f32(v50, v49), vpaddq_f32(v48, v47)));
              if (v4 != v10)
              {
                v59 = vmaxq_f32(v59, 0);
              }

              result[k / 4] = v59;
            }
          }
        }

        else if (v12 >= 1)
        {
          v30 = 0;
          v31 = v8 + 1;
          do
          {
            v32 = *(v9 + 4 * v30);
            v122 = 0uLL;
            v123 = 0uLL;
            v120 = 0uLL;
            v121 = 0uLL;
            if (v6 < 1)
            {
              v42 = 0uLL;
              v43 = 0uLL;
              v40 = 0uLL;
              v41 = 0uLL;
            }

            else
            {
              v33 = 0;
              v34 = v31;
              do
              {
                v35 = 0;
                v36 = &v7[v33 / 4];
                v37 = *v36;
                v38 = v36[1];
                v39 = v34;
                do
                {
                  *(&v120 + v35) = vmlaq_f32(vmlaq_f32(*(&v120 + v35), v39[-1], v37), *v39, v38);
                  v35 += 16;
                  v39 = (v39 + 4 * v6);
                }

                while (v35 != 64);
                v33 += 8;
                v34 += 2;
              }

              while (v33 < v6);
              v41 = v122;
              v40 = v123;
              v43 = v120;
              v42 = v121;
            }

            v44 = vaddq_f32(v32, vpaddq_f32(vpaddq_f32(v43, v42), vpaddq_f32(v41, v40)));
            if (v4 != v10)
            {
              v44 = vmaxq_f32(v44, 0);
            }

            result[v30 / 4] = v44;
            v30 += 4;
            v31 += v6;
          }

          while (v30 < v12);
        }
      }

      else if (v12 >= 1)
      {
        v13 = 0;
        v14 = 32 * v6;
        v15 = &v8->i32[v6];
        do
        {
          v16 = (v9 + 4 * v13);
          v18 = *v16;
          v17 = v16[1];
          v122 = 0uLL;
          v123 = 0uLL;
          v120 = 0uLL;
          v121 = 0uLL;
          memset(v119, 0, sizeof(v119));
          if (v6 >= 1)
          {
            v19 = 0;
            v20 = v8;
            v21 = v15;
            do
            {
              v22 = 0;
              v23 = 0;
              v24 = v7[v19 / 4];
              do
              {
                v25 = *&v21[v22];
                *(&v120 + v23 * 16) = vmlaq_f32(*(&v120 + v23 * 16), *(v20 + v22 * 4), v24);
                v119[v23] = vmlaq_f32(v119[v23], v25, v24);
                ++v23;
                v22 += 2 * v6;
              }

              while (v23 != 4);
              v19 += 4;
              v21 += 4;
              ++v20;
            }

            while (v19 < v6);
          }

          v26 = 0;
          v27 = &result[v13 / 4];
          do
          {
            *(&v120 + v26 * 16) = vpaddq_f32(*(&v120 + v26 * 16), v119[v26]);
            ++v26;
          }

          while (v26 != 4);
          v28 = vaddq_f32(v17, vpaddq_f32(v122, v123));
          v29 = vaddq_f32(v18, vpaddq_f32(v120, v121));
          if (v4 != v10)
          {
            v28 = vmaxq_f32(v28, 0);
            v29 = vmaxq_f32(v29, 0);
          }

          *v27 = v29;
          v27[1] = v28;
          v13 += 8;
          v15 = (v15 + v14);
          v8 = (v8 + v14);
        }

        while (v13 < v12);
      }

      v5 = 1 - v5;
      v3 = a2[2];
      v6 = v12;
    }

    while (v4++ < v3);
  }

  v116 = a2[1];
  if (v116 >= 1)
  {
    do
    {
      a3->f32[0] = vcvts_n_f32_s32(((a3->f32[0] * 512.0) + 0.5), 9uLL);
      a3 = (a3 + 4);
      --v116;
    }

    while (v116);
  }

  return result;
}

uint64_t sub_2779D2FCC(__int128 *a1, int a2, int a3, int a4)
{
  v4 = (a3 - 16);
  if (a3 >= 16)
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    v8 = v4 + 1;
    v9 = a3 - v4 - 16;
    *&_Q1 = 0x101010101010101;
    *(&_Q1 + 1) = 0x101010101010101;
    v11 = a4;
    do
    {
      v12 = v8;
      v13 = a3;
      v14 = a1;
      do
      {
        v15 = v12;
        v16 = *v14++;
        _Q3 = v16;
        __asm
        {
          UDOT            V2.4S, V3.16B, V1.16B
          UDOT            V0.4S, V3.16B, V3.16B
        }

        v13 -= 16;
        v12 -= 16;
      }

      while (v13 + 16 > 31);
      if (v13 + 16 >= 17)
      {
        v24 = v9;
        do
        {
          v25 = *(v14 + v24);
          v6 += v25;
          v5 += (v25 * v25);
          --v15;
          ++v24;
        }

        while (v15 > 1);
      }

      a1 = (a1 + v7);
      --v11;
    }

    while (v11);
    v26 = vaddlvq_u32(_Q2) + v6;
    v27 = vaddlvq_u32(_Q0);
    return v27 + v5 - v26 * v26 / (a4 * a3);
  }

  v28 = (a3 - 8);
  if (a3 >= 8)
  {
    v5 = 0;
    v29 = 0;
    v30 = v28 + 1;
    v31 = a3 - v28;
    _D1 = 0x101010101010101;
    v33 = a4;
    do
    {
      if (a3 != 8)
      {
        v34 = v31;
        v35 = v30;
        do
        {
          v36 = *(a1 + v34);
          v29 += v36;
          v5 += (v36 * v36);
          --v35;
          ++v34;
        }

        while (v35 > 1);
      }

      _D3 = *a1;
      __asm
      {
        UDOT            V2.2S, V3.8B, V1.8B
        UDOT            V0.2S, V3.8B, V3.8B
      }

      a1 = (a1 + a2);
      --v33;
    }

    while (v33);
    v26 = vpaddl_u32(_D2) + v29;
    v27 = vpaddl_u32(_D0);
    return v27 + v5 - v26 * v26 / (a4 * a3);
  }

  if (a3 < 4 || (a4 & 1) != 0)
  {
    return sub_2779888C0(a1, a2, a3, a4);
  }

  v41 = a4 >> 1;
  _D2 = 0x101010101010101;
  do
  {
    LODWORD(_D3) = *a1;
    HIDWORD(_D3) = *(a1 + a2);
    __asm
    {
      UDOT            V0.2S, V3.8B, V2.8B
      UDOT            V1.2S, V3.8B, V3.8B
    }

    a1 = (a1 + 2 * a2);
    --v41;
  }

  while (v41);
  v46 = vpaddl_u32(_D0);
  return vpaddl_u32(_D1) - v46 * v46 / (a4 * a3);
}

void sub_2779D3198(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v121 = *MEMORY[0x277D85DE8];
  v10 = (a2 + 101276);
  v11 = *(a5 + 48);
  if (v11 <= 8)
  {
    if (v11 == 3)
    {
      v12 = 0;
      v13 = 4;
      goto LABEL_14;
    }

    if (v11 == 6)
    {
      v12 = 0;
      v13 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v11 == 9)
  {
    v12 = 0;
    v13 = 2;
    goto LABEL_14;
  }

  if (v11 != 12)
  {
    if (v11 == 15)
    {
      return;
    }

LABEL_13:
    v12 = 0;
    v13 = -1;
    goto LABEL_14;
  }

  if (*(a2 + 94728))
  {
    v13 = 1;
    v12 = 1;
    goto LABEL_14;
  }

  v28 = 0;
  v91 = xmmword_277BB7C10;
  v92 = xmmword_277BB7790;
  v29 = a2 + 94732;
  v30 = v90;
  memset(v90, 0, sizeof(v90));
  do
  {
    v31 = *(&v91 + v28);
    if (v31 >= 1)
    {
      v32 = 4 * (*&v93[4 * v28 - 16] * *&v93[4 * v28 - 16]);
      v33 = v30;
      v34 = *(&v91 + v28);
      do
      {
        *v33++ = v29;
        v29 += v32;
        --v34;
      }

      while (v34);
    }

    v30 = (v30 + 8 * v31);
    ++v28;
  }

  while (v28 != 4);
  v89[0] = 4;
  v89[1] = &v91;
  v89[2] = &v92;
  v89[3] = v90;
  v35 = *(a2 + 11072);
  v36 = *(a2 + 16904);
  if (v36 >= 0xFF)
  {
    v37 = 255;
  }

  else
  {
    v37 = *(a2 + 16904);
  }

  if (v36 < 0)
  {
    v37 = 0;
  }

  switch(v35)
  {
    case 8:
      v38 = word_277BFDBFA;
      goto LABEL_76;
    case 12:
      v38 = &unk_277BFDFFA;
      goto LABEL_76;
    case 10:
      v38 = &unk_277BFDDFA;
LABEL_76:
      v59 = v38[v37];
      goto LABEL_78;
  }

  v59 = -1;
LABEL_78:
  *v10 = (log1pf(vcvts_n_f32_u32((v59 >> (v35 - 8)) * (v59 >> (v35 - 8)), 8uLL)) + -1.1919) / 1.73;
  v60 = *(a2 + 72);
  v87 = *(a2 + 48);
  if ((*(*(a2 + 8376) + 192) & 8) != 0)
  {
    v73 = malloc_type_malloc(0x421BuLL, 0x5F484EBFuLL);
    if (!v73)
    {
      goto LABEL_95;
    }

    *(((v73 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v73;
    if (((v73 + 23) & 0xFFFFFFFFFFFFFFF0) == 0)
    {
      goto LABEL_95;
    }

    v79 = 0;
    HIWORD(v80) = 0;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v81 = 2 * v87 - 2 * v60 - 2;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    memset(&v93[8], 0, 80);
    v82 = 2 * v60;
    v83 = (v73 + 23) & 0xFFFFFFFFFFFFFFF0;
    v120 = 0;
    v84 = v83;
    *v93 = v83;
    do
    {
      for (i = 0; i != 65; ++i)
      {
        LOWORD(v80) = *(v81 + 2 * i);
        v80 = LODWORD(v80) / ~(-1 << v35);
        *(v83 + 4 * i) = v80;
      }

      ++v79;
      v83 += 260;
      v81 += v82;
    }

    while (v79 != 65);
    v86 = sub_277A86B78(v93, &xmmword_277BB72E0, v89, v74, v75, v76, v77, v78);
    free(*(v84 - 8));
    if ((v86 & 1) == 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v61 = malloc_type_malloc(0x421BuLL, 0x5F484EBFuLL);
    if (!v61)
    {
      goto LABEL_95;
    }

    *(((v61 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v61;
    if (((v61 + 23) & 0xFFFFFFFFFFFFFFF0) == 0)
    {
      goto LABEL_95;
    }

    v68 = 0;
    v69 = ~v60 + v87;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    memset(&v93[8], 0, 80);
    v70 = (v61 + 23) & 0xFFFFFFFFFFFFFFF0;
    v120 = 0;
    v88 = v70;
    *v93 = v70;
    do
    {
      for (j = 0; j != 65; ++j)
      {
        LOBYTE(v67) = *(v69 + j);
        v67 = LODWORD(v67) / 255.0;
        *(v70 + 4 * j) = v67;
      }

      ++v68;
      v70 += 260;
      v69 += v60;
    }

    while (v68 != 65);
    v72 = sub_277A86B78(v93, &xmmword_277BB72E0, v89, v62, v63, v64, v65, v66);
    free(*(v88 - 8));
    if (!v72)
    {
LABEL_95:
      sub_2779F5C10(*(a2 + 11152), 2, "Error allocating CNN data");
      return;
    }
  }

  v12 = 1;
  *(a2 + 94728) = 1;
  v13 = 1;
LABEL_14:
  if (!*(a2 + 94728))
  {
    return;
  }

  v14 = qword_27A7198C0[v13];
  v90[0] = 0uLL;
  v15 = (a2 + 94732);
  v16 = a2 + 94812;
  if (v12)
  {
    v17 = 0;
    v18 = *(a2 + 94780);
    *&v93[32] = *(a2 + 94764);
    *&v93[48] = v18;
    *&v93[64] = *(a2 + 94796);
    v19 = *(a2 + 94748);
    *v93 = *v15;
    *&v93[16] = v19;
    v20 = 20;
    do
    {
      v21 = 0;
      v22 = &v93[4 * v20];
      v20 += 4;
      do
      {
        *&v22[v21] = *(v16 + 4 * v21);
        v21 += 4;
      }

      while (v21 != 16);
      ++v17;
      v16 += 4;
    }

    while (v17 != 4);
    *&v93[4 * v20] = *v10;
    goto LABEL_55;
  }

  v23 = a2 + 94876;
  switch(v11)
  {
    case 3u:
      v45 = 0;
      v46 = a3 - 1;
      if (a3 < 1)
      {
        v46 = a3 + 2;
      }

      v47 = (v23 + 4 * dword_277BCC580[(v46 >> 2) - 5]);
      do
      {
        v48 = *v47;
        v47 += 16;
        *&v93[v45] = v48;
        v45 += 4;
      }

      while (v45 != 80);
      v49 = 0;
      v50 = (a2 + 96156 + 4 * dword_277BCC5C0[a3 - 21]);
      do
      {
        *&v93[v49 + 80] = *v50;
        v49 += 4;
        v50 += 64;
      }

      while (v49 != 80);
      *(&v98 + 2) = *v10;
      break;
    case 6u:
      v39 = 0;
      v40 = a3 - 1;
      if (a3 < 1)
      {
        v40 = a3 + 2;
      }

      v41 = v16 + 4 * *(&xmmword_277BB7060 + (v40 >> 2) - 1);
      do
      {
        *&v93[v39] = *(v41 + 4 * v39);
        v39 += 4;
      }

      while (v39 != 16);
      v42 = (v23 + 4 * dword_277BCC580[a3 - 5]);
      for (k = 16; k != 96; k += 4)
      {
        v44 = *v42;
        v42 += 16;
        *&v93[k] = v44;
      }

      goto LABEL_47;
    case 9u:
      v24 = 0;
      v25 = *(a2 + 94780);
      *&v93[32] = *(a2 + 94764);
      *&v93[48] = v25;
      *&v93[64] = *(a2 + 94796);
      v26 = *(a2 + 94748);
      *v93 = *v15;
      *&v93[16] = v26;
      v27 = v16 + 4 * *(&xmmword_277BB7060 + a3 - 1);
      do
      {
        *&v93[v24 + 80] = *(v27 + 4 * v24);
        v24 += 4;
      }

      while (v24 != 16);
LABEL_47:
      *(&v94 + 2) = *v10;
      break;
  }

LABEL_55:
  sub_2779D28B0(v93, v14, v90);
  v51 = *(a1 + 56);
  if (v51 >= *(a1 + 60))
  {
    v51 = *(a1 + 60);
  }

  v52 = &unk_277BCC710;
  if (v51 > 479)
  {
    v52 = &unk_277BCC6E8;
  }

  v53 = &unk_277BCC724;
  if (v51 > 479)
  {
    v53 = &unk_277BCC6FC;
  }

  v54 = v51 <= 719;
  if (v51 <= 719)
  {
    v55 = v52;
  }

  else
  {
    v55 = &unk_277BCC6C0;
  }

  v56 = &unk_277BCC6D4;
  if (v54)
  {
    v56 = v53;
  }

  v57 = v56[v13];
  v58 = v90[0].f32[0];
  if (v90[0].f32[0] > v55[v13])
  {
    if (a4 != 1)
    {
      *(a5 + 284) = 0;
    }

    *(a5 + 288) = xmmword_277BB7390;
  }

  if (v58 < v57)
  {
    *(a5 + 300) = 0;
  }
}

float32x4_t *sub_2779D3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  v13 = result;
  v76 = *MEMORY[0x277D85DE8];
  v14 = &result[24724].i32[2];
  v15 = *(v11 + 48);
  if (*(v11 + 48) <= 8u)
  {
    if (v15 == 3)
    {
      v16 = 4;
      goto LABEL_13;
    }

    if (v15 == 6)
    {
      v16 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    switch(v15)
    {
      case 9:
        v16 = 2;
        goto LABEL_13;
      case 0xF:
        v16 = 0;
        goto LABEL_13;
      case 0xC:
        v16 = 1;
        goto LABEL_13;
    }
  }

  v16 = -1;
LABEL_13:
  if (result[15354].i32[2] >= result[15354].i32[3])
  {
    v17 = result[15354].i32[3];
  }

  else
  {
    v17 = result[15354].i32[2];
  }

  v18 = *v14;
  if (v18 != -1)
  {
    v19 = v18 >= 4 ? &qword_277BB6A48 : (&xmmword_277BB7060 + 4 * v18);
    v20 = *v19;
    if ((v20 & 0x80000000) == 0)
    {
      v21 = &result[40268].i8[8];
      v22 = *(v11 + 12);
      v23 = *(v12 + 16);
      v24 = *(&off_27A7198E8 + v16);
      v25 = *(&off_27A719910 + v16);
      v36 = *(&off_27A719938 + v16);
      if (v17 <= 479)
      {
        v26 = v17 > 719;
      }

      else
      {
        v26 = (v17 > 719) + 1;
      }

      v27 = (4 * v26) | (16 * v26);
      v28 = 15 * v20;
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      v29 = *(&flt_277BCC738[v28 + v16] + v27);
      v71 = 0u;
      v72 = 0u;
      v30 = *(&flt_277BCC828[v28 + v16] + v27);
      sub_2779D3D18(result, v9, v10, v22, v23, v15, v71.f32, 3, 0.0);
      sub_2779D4488(v13[17013].i64[1], v13[40268].i32[3] != 0, &v71, 17, 0);
      v31 = (v12 + 284);
      if (*v21 && (v70 = 0u, v69 = 0u, v68 = 0u, v67 = 0u, v66 = 0u, v65 = 0u, v64 = 0u, v63 = 0u, v62 = 0u, v61 = 0u, v60 = 0u, v59 = 0u, v58 = 0u, v57 = 0u, v56 = 0u, v55 = 0u, v54 = 0u, v53 = 0u, v52 = 0u, v51 = 0u, v50 = 0u, v49 = 0u, v48 = 0u, v47 = 0u, v46 = 0u, v45 = 0u, v44 = 0u, *&v43[12] = 0u, v39 = 0, v41 = v72, v42 = v73, *v43 = v74, *&v43[16] = v75, v40 = v71, (*(v21 + 4))(*(v21 + 2), &v39), memset(v37, 0, 512), result = (*(v21 + 5))(*(v21 + 2), v37), !result))
      {
        *v31 = v37[513];
        *(v12 + 300) = v38;
      }

      else
      {
        for (i = 0; i != 17; ++i)
        {
          v71.f32[i] = (v71.f32[i] - *(v24 + i * 4)) / *(v25 + i * 4);
        }

        v37[0].i32[0] = 0;
        result = sub_2779D28B0(&v71, v36, v37);
        v33 = v37[0].f32[0];
        if (v37[0].f32[0] > v29)
        {
          *(v12 + 300) = 1;
          v31->i64[0] = 0;
          *(v12 + 292) = 0;
        }

        if (v14[2] >= 2 && v33 < v30)
        {
          *(v12 + 300) = 0;
        }

        v34 = v14[16];
        if (v34)
        {
          v35 = 2.0;
          if (v17 > 719)
          {
            v35 = 3.0;
          }

          if (v33 < (v35 * flt_277BCC828[15 * v34 + 5 * v26 + v16]))
          {
            *(v12 + 296) = 0;
          }
        }
      }
    }
  }

  return result;
}

float sub_2779D3D18(_DWORD *a1, uint64_t a2, unsigned int *a3, uint64_t a4, int a5, uint64_t a6, float *a7, char a8, float result)
{
  v10 = a6;
  v71 = byte_277C3F990[a6];
  v73 = byte_277C36D60[a6];
  if (a1[98780])
  {
    v15 = 7;
  }

  else
  {
    v15 = 1;
  }

  v75 = v15;
  if ((a8 & 1) != 0 && !a3[28])
  {
    sub_2779D4598(a1, a2, a3, a4, a5, a6, &v75, 1, a3 + 18, a3 + 19);
    a3[28] = 1;
  }

  v70 = a8;
  if ((a8 & 2) != 0)
  {
    v16 = 255;
    if (v10 > 8)
    {
      switch(v10)
      {
        case 9:
          v17 = 3u;
          break;
        case 12:
          v17 = 4u;
          break;
        case 15:
          v17 = 5u;
          break;
        default:
          goto LABEL_22;
      }
    }

    else if (v10)
    {
      if (v10 == 3)
      {
        v17 = 1u;
      }

      else
      {
        if (v10 != 6)
        {
          goto LABEL_22;
        }

        v17 = 2u;
      }
    }

    else
    {
      v17 = 0;
    }

    v16 = *(&unk_277C31428 + v17 + 18);
LABEL_22:
    for (i = 0; i != 4; ++i)
    {
      v19 = *&a3[2 * i + 2];
      if (!v19[28])
      {
        if (i)
        {
          v20 = v71 >> 1;
        }

        else
        {
          v20 = 0;
        }

        sub_2779D4598(a1, a2, v19, a4 + (((i >> 1) * v73) >> 1), v20 + a5, v16, &v75, 1, v19 + 18, v19 + 19);
        v19[28] = 1;
      }
    }
  }

  v21 = v10;
  v22 = a7;
  v23 = v70;
  if ((v70 & 4) != 0 && !a3[29])
  {
    v24 = 255;
    if (v10 > 8)
    {
      switch(v10)
      {
        case 9:
          v25 = 3u;
          break;
        case 12:
          v25 = 4u;
          break;
        case 15:
          v25 = 5u;
          break;
        default:
          goto LABEL_45;
      }
    }

    else if (v10)
    {
      if (v10 == 3)
      {
        v25 = 1u;
      }

      else
      {
        if (v10 != 6)
        {
          goto LABEL_45;
        }

        v25 = 2u;
      }
    }

    else
    {
      v25 = 0;
    }

    v24 = *(&unk_277C31428 + v25 + 6);
LABEL_45:
    sub_2779D4598(a1, a2, a3, a4, a5, v24, &v75, 0, a3 + 20, a3 + 21);
    sub_2779D4598(a1, a2, a3, a4 + (v73 >> 1), a5, v24, &v75, 0, a3 + 22, a3 + 23);
    v26 = 255;
    if (v10 > 8)
    {
      switch(v10)
      {
        case 9:
          v27 = 3u;
          goto LABEL_58;
        case 12:
          v27 = 4u;
          goto LABEL_58;
        case 15:
          v27 = 5u;
          goto LABEL_58;
      }
    }

    else
    {
      switch(v10)
      {
        case 0:
          v27 = 0;
          goto LABEL_58;
        case 3:
          v27 = 1u;
          goto LABEL_58;
        case 6:
          v27 = 2u;
LABEL_58:
          v26 = *(&unk_277C31428 + v27 + 12);
          break;
      }
    }

    sub_2779D4598(a1, a2, a3, a4, a5, v26, &v75, 0, a3 + 24, a3 + 25);
    sub_2779D4598(a1, a2, a3, a4, a5 + (v71 >> 1), v26, &v75, 0, a3 + 26, a3 + 27);
    a3[29] = 1;
  }

  if (!a7)
  {
    return result;
  }

  if (v70)
  {
    *a7 = log1pf(a3[18]);
    a7[1] = log1pf(a3[19]);
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v69 = (a1 + 67578);
  v29 = a1 + 61392;
  if ((v70 & 2) != 0)
  {
    v30 = 0;
    v31 = &a7[v28 + 1];
    v28 |= 8u;
    do
    {
      v32 = *&a3[2 * v30 + 2];
      *(v31 - 1) = log1pf(*(v32 + 72));
      *v31 = log1pf(*(v32 + 76));
      v31 += 2;
      ++v30;
    }

    while (v30 != 4);
    v21 = v10;
    v22 = a7;
    v23 = v70;
  }

  if ((v23 & 4) != 0)
  {
    v33 = 0;
    v34 = &v22[v28];
    v28 += 8;
    do
    {
      v34[v33] = log1pf(a3[v33 + 20]);
      ++v33;
    }

    while (v33 != 8);
    v21 = v10;
    v22 = a7;
  }

  if (*(*v69 + 77))
  {
    v35 = 1;
  }

  else
  {
    v35 = 3;
  }

  v36 = v29[157];
  v37 = a5 + v36 * a4;
  v38 = byte_277C3F990[*(v29 + 608)];
  v39 = a4 / v38;
  v40 = a5 / v38;
  *(*(v29 + 77) + 8 * v37) = *(v29 + 74) + 176 * (v40 + v29[151] * v39);
  *(a2 + 8280) = *(v29 + 77) + 8 * v37;
  *(a2 + 8328) = *(v29 + 79) + v37;
  *(a2 + 8336) = v36;
  *(a2 + 16760) = *v29 + 84 * (v40 + v29[3] * v39);
  sub_27798E348(a2 + 432, v21, *(v29 + 35) + 1248, a4, a5, 0, v35);
  v41 = *(v69 + 455);
  v42 = -8 - 4 * (v73 + a4);
  if (8 - (v41 + 4 * a4) > v42)
  {
    v42 = 8 - (v41 + 4 * a4);
  }

  v43 = v29[145];
  v44 = 4 * (v43 - a4) + 8;
  if ((v41 - 8 + 4 * (v43 - a4 - v73)) < v44)
  {
    v44 = v41 - 8 + 4 * (v43 - a4 - v73);
  }

  *(a2 + 128748) = v42;
  *(a2 + 128752) = v44;
  v45 = -8 - 4 * (v71 + a5);
  if (8 - (v41 + 4 * a5) > v45)
  {
    v45 = 8 - (v41 + 4 * a5);
  }

  v46 = v29[146];
  v47 = 4 * (v46 - a5) + 8;
  if ((v41 - 8 + 4 * (v46 - a5 - v71)) < v47)
  {
    v47 = v41 - 8 + 4 * (v46 - a5 - v71);
  }

  *(a2 + 128740) = v45;
  *(a2 + 128744) = v47;
  v48 = (a2 + 601);
  v49 = v35;
  do
  {
    v50 = ((4 * v71) >> *(v48 - 165));
    v51 = ((4 * v73) >> *(v48 - 161));
    if (v50 <= 4)
    {
      LOBYTE(v50) = 4;
    }

    *(v48 - 1) = v50;
    if (v51 <= 4)
    {
      v52 = 4;
    }

    else
    {
      v52 = v51;
    }

    *v48 = v52;
    v48 += 2608;
    --v49;
  }

  while (v49);
  *(a2 + 416) = a4;
  *(a2 + 420) = a5;
  *(a2 + 8348) = -32 * a4;
  *(a2 + 8352) = 32 * (v43 - (v73 + a4));
  *(a2 + 8340) = -32 * a5;
  *(a2 + 8344) = 32 * (v46 - (v71 + a5));
  sub_277A5D0C0(a2, v69[244], a4, a5, v35, v21);
  v53 = *(a2 + 16904);
  v54 = *(a2 + 11072);
  if (v53 >= 0xFF)
  {
    v55 = 255;
  }

  else
  {
    v55 = *(a2 + 16904);
  }

  if (v53 < 0)
  {
    v55 = 0;
  }

  v56 = v54 - 8;
  switch(v54)
  {
    case 8:
      v57 = word_277BFDBFA;
      break;
    case 12:
      v57 = &unk_277BFDFFA;
      break;
    case 10:
      v57 = &unk_277BFDDFA;
      break;
    default:
      v58 = -1;
      goto LABEL_103;
  }

  v58 = v57[v55];
LABEL_103:
  v59 = log1pf(vcvts_n_f32_u32((v58 >> v56) * (v58 >> v56), 8uLL));
  v60 = &v22[v28];
  *v60 = v59;
  v61 = *(a2 + 8304);
  v62 = *(a2 + 8296);
  if (v61)
  {
    v21 = *v61;
  }

  v63 = v10;
  if (v62)
  {
    v63 = *v62;
  }

  v64 = 0.0;
  if (v61)
  {
    v65 = 1.0;
  }

  else
  {
    v65 = 0.0;
  }

  v60[1] = v65;
  LOBYTE(v65) = byte_277C42228[v21];
  v66 = LODWORD(v65);
  v60[2] = v66;
  LOBYTE(v66) = byte_277C3CFCC[v21];
  v67 = LODWORD(v66);
  if (v62)
  {
    v64 = 1.0;
  }

  v60[3] = v67;
  v60[4] = v64;
  LOBYTE(v64) = byte_277C42228[v63];
  v68 = LODWORD(v64);
  v60[5] = v68;
  LOBYTE(v68) = byte_277C3CFCC[v63];
  result = LODWORD(v68);
  v60[6] = result;
  return result;
}

FILE *sub_2779D4488(FILE *result, int a2, uint64_t a3, int a4, int a5)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    snprintf(__str, 0x100uLL, "%s/%s", result, off_27A71C090[a5]);
    result = fopen(__str, "a");
    if (result)
    {
      v7 = result;
      v8 = 0;
      do
      {
        fprintf(v7, "%.6f", *(a3 + 4 * v8));
        if (v8 < (a4 - 1))
        {
          fputc(44, v7);
        }

        ++v8;
      }

      while (a4 != v8);
      fputc(10, v7);
      return fclose(v7);
    }
  }

  return result;
}

_DWORD *sub_2779D4598(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, int a8, _DWORD *a9, _DWORD *a10)
{
  if (result[61538] <= a5 || result[61537] <= a4)
  {
    *a10 = 0;
    *a9 = 0;
  }

  else
  {
    *a9 = 0x7FFFFFFF;
    v10 = *a7;
    if ((result[98846] & *(&unk_277C3F988 + v10)) != 0)
    {
      v14 = a3 + 4 * v10;
      v19 = 0;
      v16 = *(v14 + 40);
      v15 = (v14 + 40);
      result = sub_277A51BBC(result, a2, a4, a5, a6, v10, v16, 1, &v19 + 1, &v19);
      if (HIDWORD(v19) < *a9)
      {
        *a9 = HIDWORD(v19);
        *a10 = v19;
      }

      if (a8)
      {
        *v15 = (result + ((result >> 28) & 7)) >> 3;
        v15[1] = (((result >> 31) >> 13) + WORD1(result)) >> 3;
        if (a6 >= 3)
        {
          v17 = 0;
          v18 = *v15;
          do
          {
            *(*(a3 + 8 + v17) + 4 * v10 + 40) = v18;
            v17 += 8;
          }

          while (v17 != 32);
        }
      }
    }
  }

  return result;
}

BOOL sub_2779D46E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = v8 + 643072;
  if (!*(v8 + 644296))
  {
    return 0;
  }

  v13 = v11;
  v14 = v10;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  *&v24[96] = 0u;
  *&v24[80] = 0u;
  *&v24[64] = 0u;
  *&v24[48] = 0u;
  *&v24[32] = 0u;
  *&v24[16] = 0u;
  *v24 = 0u;
  v15 = *(v9 + 32);
  *&v24[56] = *(v9 + 48);
  v16 = *(v9 + 80);
  *&v24[72] = *(v9 + 64);
  *&v24[88] = v16;
  v17 = *(v9 + 16);
  *&v24[8] = *v9;
  *&v24[24] = v17;
  memset(v23, 0, sizeof(v23));
  LODWORD(v23[0]) = 1;
  *&v24[104] = *(v9 + 96);
  *&v24[40] = v15;
  (*(v8 + 644328))(*(v8 + 644312), v23);
  memset(v20, 0, 512);
  v18 = (*(v12 + 1264))(*(v12 + 1240), v20);
  result = v18 == 0;
  if (!v18)
  {
    *v14 = v21;
    *v13 = v22;
  }

  return result;
}

FILE *sub_2779D4894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v58 = *MEMORY[0x277D85DE8];
  v14 = *(v9 + 12);
  LODWORD(v9) = *(v9 + 16);
  v15 = *(v10 + 48);
  v16 = v8 + 161074;
  LODWORD(v57) = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  sub_2779D3D18(v8, v17, v18, v14, v9, v15, &v51, 7, 0.0);
  DWORD1(v57) = log1pf(*v12);
  DWORD2(v57) = log1pf(*(v12 + 8));
  HIDWORD(v57) = log1pf(*(v12 + 16));
  if (v15 > 11)
  {
    if (v15 != 15)
    {
      if (v15 == 12)
      {
        v19 = 0;
        v20 = &unk_277BCCC3C;
        v21 = &unk_277BCCBCC;
        v22 = &unk_277BCCB5C;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v19 = 0;
    v20 = &unk_277BCCAE8;
    v21 = &unk_277BCCA78;
    v22 = &unk_277BCCA08;
  }

  else
  {
    if (v15 != 6)
    {
      if (v15 == 9)
      {
        v19 = 0;
        v20 = &unk_277BCCD90;
        v21 = &unk_277BCCD20;
        v22 = &unk_277BCCCB0;
        goto LABEL_11;
      }

LABEL_8:
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v19 = 1;
      goto LABEL_11;
    }

    v19 = 0;
    v20 = &unk_277BCCEE4;
    v21 = &unk_277BCCE74;
    v22 = &unk_277BCCE04;
  }

LABEL_11:
  result = sub_2779D4488(v13[34027], v16[1] != 0, &v51, 28, 3);
  v24 = *v16;
  if (*v16)
  {
    if ((v13[30702] & 0xFD) != 0)
    {
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      *&v37[4] = 0u;
      v36 = v56;
      *v37 = v57;
      v34 = v54;
      v35 = v55;
      *v31 = 0u;
      *&v31[12] = v51;
      v32 = v52;
      memset(v30, 0, sizeof(v30));
      LODWORD(v30[0]) = 3;
      v33 = v53;
      (*(v16 + 4))(*(v16 + 2), v30);
      memset(v28, 0, 512);
      result = (*(v16 + 5))(*(v16 + 2), v28);
      v24 = result == 0;
      if (!result)
      {
        *(v10 + 280) = v29;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  if (((v19 | v24) & 1) == 0)
  {
    v25 = 0;
    v26 = 0.0;
    do
    {
      v27 = vdivq_f32(vmulq_f32(*&v20[v25], vsubq_f32(*(&v51 + v25 * 4), *&v22[v25 * 4])), *&v21[v25 * 4]);
      v26 = (((v26 + v27.f32[0]) + v27.f32[1]) + v27.f32[2]) + v27.f32[3];
      v25 += 4;
    }

    while (v25 != 28);
    if ((v26 + v20[28]) >= 0.0)
    {
      *(v10 + 280) = 1;
    }
  }

  return result;
}

float32x2_t sub_2779D4C48(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v62 = a3;
  v5 = *(*(a1 + 270312) + 28);
  v54 = *(a2 + 16904);
  v55 = *(a2 + 11072);
  v6 = byte_277C3CAE8[v5] >> 4;
  v56 = byte_277C3CAFE[v5] >> 4;
  v57 = v6;
  if ((0xA002FuLL >> v5))
  {
    v12 = vneg_f32(0x80000000800000);
    v13 = 0;
    v17 = 0.0;
    v15 = 3.4028e38;
    v16 = 0.0;
    v14 = 0.0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0x5001FuLL >> v5;
    if (byte_277C3CAFE[v5] >> 4 <= 1u)
    {
      v11 = 1;
    }

    else
    {
      v11 = byte_277C3CAFE[v5] >> 4;
    }

    v60 = v11;
    v12 = vneg_f32(0x80000000800000);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v13 = 0;
    v14 = 0.0;
    v15 = 3.4028e38;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0;
    v19 = 0;
    v61 = v10;
    v59 = v6;
    do
    {
      if ((v10 & 1) == 0)
      {
        v20 = a4;
        v21 = v60;
        v64 = v9;
        v22 = (v62 + 4 * v9);
        do
        {
          v66 = v17;
          v68[0] = 0;
          if (*(a1 + 395120))
          {
            v23 = 7;
          }

          else
          {
            v23 = 1;
          }

          v24 = v15;
          v25 = v13;
          v26 = v12;
          v27 = v19;
          v28 = v18;
          v29 = v16;
          v30 = v14;
          v31 = sub_277A51BBC(a1, a2, v22, v20, 6u, v23, 0, 0, v68, &v67);
          v32 = (((v31 + ((v31 >> 28) & 7)) << 16) >> 19);
          v65 = (((((v31 >> 31) >> 13) + HIWORD(v31)) << 16) >> 19);
          v33.f32[0] = log1pf(v68[0]);
          v34 = v30;
          v35 = v29;
          v36 = v28;
          v37 = v27;
          v38 = v26;
          v39 = v25;
          v15 = v24;
          v17 = v66;
          v40.f32[0] = fabsf(v32);
          v41 = fabsf(v65);
          v14 = v34 + (v32 * v32);
          v16 = v35 + v32;
          if (v41 < v15)
          {
            v15 = v41;
          }

          v40.i32[1] = v33.i32[0];
          if (v41 > v66)
          {
            v17 = v41;
          }

          v33.f32[1] = v65;
          v19 = vmla_f32(v37, v33, v33);
          v18 = vadd_f32(v36, v33);
          v12 = vbsl_s8(vcgt_f32(v38, v40), v40, v38);
          v13 = vbsl_s8(vcgt_f32(v40, v39), v40, v39);
          v20 = (v20 + 4);
          --v21;
        }

        while (v21);
        v9 = v64;
        LOBYTE(v10) = v61;
        v6 = v59;
      }

      ++v9;
    }

    while (v9 != v6);
  }

  if (v54 >= 0xFF)
  {
    v42 = 255;
  }

  else
  {
    v42 = v54;
  }

  if (v54 >= 0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (v55 == 8)
  {
    v45 = v14;
    v46 = word_277BFDBFA;
    v44 = v57;
  }

  else
  {
    v44 = v57;
    v45 = v14;
    if (v55 == 12)
    {
      v46 = &unk_277BFDFFA;
    }

    else
    {
      if (v55 != 10)
      {
        v47 = -1;
        goto LABEL_36;
      }

      v46 = &unk_277BFDDFA;
    }
  }

  v47 = v46[v43];
LABEL_36:
  v48 = log1pf(vcvts_n_f32_u32((v47 >> (v55 - 8)) * (v47 >> (v55 - 8)), 8uLL));
  *v49.i32 = (v56 * v44);
  v50 = (v45 / *v49.i32) - ((v16 / *v49.i32) * (v16 / *v49.i32));
  *(a5 + 8) = v16 / *v49.i32;
  *(a5 + 12) = v48;
  *(a5 + 16) = v17;
  *(a5 + 20) = v13;
  *(a5 + 28) = v15;
  v51 = vdup_lane_s32(v49, 0);
  v52 = vdiv_f32(v18, v51);
  *a5 = v52;
  result = vmls_f32(vdiv_f32(v19, v51), v52, v52);
  *(a5 + 32) = v12;
  *(a5 + 40) = result;
  *(a5 + 48) = v50;
  return result;
}

uint64_t sub_2779D4F90(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0uLL;
  sub_2779D28B0(a3, dword_27A71C558, &v18);
  v5 = *(a1 + 395553);
  if (v5 == 1)
  {
    LOBYTE(v6) = 0;
    v7 = v18.f32[0];
    for (i = 1; i != 4; ++i)
    {
      if (v18.f32[i] > v7)
      {
        v7 = v18.f32[i];
        LOBYTE(v6) = i;
      }
    }

    return (3 * v6 + 6);
  }

  v16 = 0;
  v17 = 0;
  sub_2779C9354(v18.f32, &v16, 4u);
  if (v5 != 3)
  {
    if (v5 == 2)
    {
      v9 = &v17 + 1;
      v6 = 4;
      while (1)
      {
        if (--v6 >= 3)
        {
          v10 = *v9;
        }

        else
        {
          v10 = v9[1] + *v9;
          *v9 = v10;
        }

        if (v10 > 0.2)
        {
          return (3 * v6 + 6);
        }

        --v9;
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_24:
    LOBYTE(v6) = 3;
    return (3 * v6 + 6);
  }

  v11 = sub_277A5D00C(*a1, a2 + 416, *(a2 + 48), *(a2 + 72), *(*(a1 + 270312) + 28), 0, (*(*(a2 + 8376) + 192) >> 3) & 1);
  if (v11 < 0x11)
  {
    goto LABEL_24;
  }

  v12 = dbl_277BB73A0[v11 < 0x80];
  v13 = &v17 + 1;
  v6 = 4;
  while (1)
  {
    if (--v6 >= 3)
    {
      v14 = *v13;
    }

    else
    {
      v14 = v13[1] + *v13;
      *v13 = v14;
    }

    if (v12 < v14)
    {
      break;
    }

    --v13;
    if (!v6)
    {
LABEL_23:
      LOBYTE(v6) = -1;
      return (3 * v6 + 6);
    }
  }

  return (3 * v6 + 6);
}

float32x4_t *sub_2779D516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v73 = *MEMORY[0x277D85DE8];
  if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0x8000000000000002)
  {
    return result;
  }

  v16 = v15;
  if (*(v15 + 280))
  {
    return result;
  }

  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  v22 = v9;
  v23 = result;
  v24 = *(v15 + 48);
  v25 = result[15354].i32[2];
  if (v25 >= result[15354].i32[3])
  {
    v25 = result[15354].i32[3];
  }

  if (*(v15 + 48) > 8u)
  {
    if (v24 == 9)
    {
      v53 = *(v15 + 12);
      v54 = result + 15351;
      v26 = flt_277BB6AF0[v25 > 479];
      v27 = &unk_27A71C728;
    }

    else
    {
      if (v24 != 12)
      {
        return result;
      }

      v53 = *(v15 + 12);
      v54 = result + 15351;
      v26 = -1.2;
      if (v25 > 479)
      {
        v26 = -2.0;
      }

      v27 = &unk_27A71C640;
    }
  }

  else if (v24 == 3)
  {
    v53 = *(v15 + 12);
    v54 = result + 15351;
    v26 = -1.4;
    if (v25 > 479)
    {
      v26 = -1.0;
    }

    v27 = &unk_27A71C8F8;
  }

  else
  {
    if (v24 != 6)
    {
      return result;
    }

    v53 = *(v15 + 12);
    v54 = result + 15351;
    v26 = -2.4;
    if (v25 > 479)
    {
      v26 = -2.0;
    }

    v27 = &unk_27A71C810;
  }

  v51 = v27;
  if (result[24721].i32[2] >= 2)
  {
    v28 = v26;
  }

  else
  {
    v28 = v26 + -0.3;
  }

  v29 = *(v9 + 16904);
  v30 = *(v9 + 11072);
  if (v29 >= 0xFF)
  {
    v31 = 255;
  }

  else
  {
    v31 = *(v9 + 16904);
  }

  if (v29 < 0)
  {
    v31 = 0;
  }

  v32 = v30 - 8;
  v52 = *(v15 + 16);
  switch(v30)
  {
    case 8:
      v33 = word_277BFDBFA;
      break;
    case 12:
      v33 = &unk_277BFDFFA;
      break;
    case 10:
      v33 = &unk_277BFDDFA;
      break;
    default:
      v34 = -1;
      goto LABEL_36;
  }

  v34 = v33[v31];
LABEL_36:
  memset(&v72[8], 0, 100);
  v35 = log1pf(vcvts_n_f32_s32(v34 >> v32, 2uLL));
  v71.f32[0] = v35;
  v36 = v20;
  LOBYTE(v35) = byte_277C3CAFE[v24];
  v71.i32[1] = log1pf(((v20 / LODWORD(v35)) / LODWORD(v35)) * 0.00097656);
  v37 = 1.0;
  v38 = 1.0;
  if (v19 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v38 = v19 / v36;
  }

  if (v19 - 1 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 1.0;
  }

  v71.i64[1] = __PAIR64__(LODWORD(v38), LODWORD(v39));
  if (v18 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v37 = v18 / v36;
  }

  if (v18 - 1 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 1.0;
  }

  *v72 = v40;
  *&v72[4] = v37;
  v41 = &v72[20];
  for (i = 8; i != 40; i += 8)
  {
    v44 = *v17++;
    v43 = v44;
    v45 = v44 - 1;
    v46 = 1.0;
    if (v44 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v46 = v43 / v36;
    }

    if (v45 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 1.0;
    }

    *(v41 - 3) = v47;
    *(v41 - 2) = v46;
    v55[0].i32[0] = 7;
    LODWORD(v57[0]) = 7;
    sub_2779D5784(*(v21 + i), v55, v57);
    v48 = v55[0].i32[0];
    v49 = SLODWORD(v57[0]);
    *(v41 - 1) = v55[0].i32[0];
    *v41 = v49;
    v41 += 4;
  }

  sub_2779D3D18(v23, v22, v21, v53, v52, v24, 0, 7, v48);
  *&v72[72] = log1pf(*(v21 + 76));
  *&v72[76] = log1pf(*(*(v21 + 8) + 76));
  *&v72[80] = log1pf(*(*(v21 + 16) + 76));
  *&v72[84] = log1pf(*(*(v21 + 24) + 76));
  *&v72[88] = log1pf(*(*(v21 + 32) + 76));
  *&v72[92] = log1pf(*(v21 + 84));
  *&v72[96] = log1pf(*(v21 + 92));
  *&v72[100] = log1pf(*(v21 + 100));
  *&v72[104] = log1pf(*(v21 + 108));
  sub_2779D4488(v23[17013].i64[1], v23[40268].i32[3] != 0, &v71, 31, 4);
  if ((v54->i8[0] & 0xFD) != 0 && v23[40268].i32[2] && (v70 = 0u, v69 = 0u, v68 = 0u, v67 = 0u, v66 = 0u, v65 = 0, *v58 = 0u, memset(v57, 0, sizeof(v57)), LODWORD(v57[0]) = 4, v62 = *&v72[48], v63 = *&v72[64], *v64 = *&v72[80], *&v64[12] = *&v72[92], *&v58[12] = v71, v59 = *v72, v60 = *&v72[16], v61 = *&v72[32], (v23[40270].i64[1])(v23[40269].i64[1], v57), memset(v55, 0, 512), result = (v23[40271].i64[0])(v23[40269].i64[1], v55), !result))
  {
    v50 = v56;
  }

  else
  {
    v55[0].i32[0] = 0;
    result = sub_2779D28B0(&v71, v51, v55);
    if (v55[0].f32[0] >= v28)
    {
      return result;
    }

    v50 = 1;
  }

  *(v16 + 280) = v50;
  return result;
}

unsigned __int8 *sub_2779D5784(unsigned __int8 *result, int *a2, int *a3)
{
  if (result)
  {
    v5 = *result;
    if (!*result)
    {
      v9 = 0;
      *a2 = 0;
LABEL_9:
      *a3 = v9;
      return result;
    }

    v6 = result[1];
    if (v6 == 255)
    {
      return result;
    }

    if (v6 == 3)
    {
      v7 = 0;
      v8 = result + 8;
      do
      {
        result = sub_2779D5784(*&v8[v7], a2, a3);
        v7 += 8;
      }

      while (v7 != 32);
      return result;
    }

    if ((v6 & 0xFC) == 4)
    {
      v6 = 3;
    }

    if (*result <= 8u)
    {
      if (v5 == 3)
      {
        v10 = 1;
      }

      else
      {
        if (v5 != 6)
        {
          return result;
        }

        v10 = 2;
      }
    }

    else
    {
      switch(v5)
      {
        case 9:
          v10 = 3;
          break;
        case 12:
          v10 = 4;
          break;
        case 15:
          v10 = 5;
          break;
        default:
          return result;
      }
    }

    v11 = *(&unk_277C31428 + 6 * v6 + v10);
    if (v11 != 255)
    {
      v12 = *a2;
      if (*a2 >= byte_277C42228[v11])
      {
        v12 = byte_277C42228[v11];
      }

      *a2 = v12;
      v9 = byte_277C3CFCC[v11];
      if (*a3 < v9)
      {
        v9 = *a3;
      }

      goto LABEL_9;
    }
  }

  return result;
}

void sub_2779D58C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v49 = *MEMORY[0x277D85DE8];
  if (v10 <= 999999999)
  {
    v14 = *(v13 + 48);
    if (v14 >= 3)
    {
      v15 = v12;
      v16 = v11;
      v17 = v9;
      v18 = v8;
      if (v10 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v10;
      }

      if (*(v13 + 48) <= 8u)
      {
        v21 = 0.01;
        if (v14 == 3)
        {
          v22 = &unk_27A71C9E0;
        }

        else
        {
          if (v14 != 6)
          {
            return;
          }

          v22 = &unk_27A71CAC8;
        }

        v34 = v22;
        v35 = v13;
      }

      else if (v14 == 9)
      {
        v34 = &unk_27A71CBB0;
        v35 = v13;
        v21 = 0.004;
      }

      else
      {
        if (v14 == 12)
        {
          v35 = v13;
          v20 = &unk_27A71CC98;
        }

        else
        {
          if (v14 != 15)
          {
            return;
          }

          v35 = v13;
          v20 = &unk_27A71CD80;
        }

        v34 = v20;
        v21 = 0.002;
      }

      memset_pattern16(&__b, &unk_277BB7C20, 0x14uLL);
      if (v16 - 1 < 0x3B9AC9FF)
      {
        __b.f32[0] = v16 / v19;
      }

      v23 = 0;
      do
      {
        v24 = *(v15 + 8 * v23++);
        if (v24 - 1 < 0x3B9AC9FF)
        {
          __b.f32[v23] = v24 / v19;
        }
      }

      while (v23 != 4);
      v25 = sub_277A5D00C(*v18, v17 + 416, *(v17 + 48), *(v17 + 72), v14, 0, (*(*(v17 + 8376) + 192) >> 3) & 1);
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      if (v14 <= 8)
      {
        if (v14 == 3)
        {
          v27 = 1u;
        }

        else
        {
          v27 = 2u;
        }
      }

      else if (v14 == 9)
      {
        v27 = 3u;
      }

      else if (v14 == 12)
      {
        v27 = 4u;
      }

      else
      {
        v27 = 5u;
      }

      v28 = *(&unk_277C31428 + v27 + 18);
      v29 = 0;
      v30 = *(v17 + 72);
      v31 = byte_277C3CAFE[v14];
      do
      {
        if (v29)
        {
          v32 = v31 >> 1;
        }

        else
        {
          v32 = 0;
        }

        v36.i32[v29] = sub_277A5D00C(*v18, v17 + 416, *(v17 + 48) + v32 + (v30 * (((v29 >> 1) * v31) >> 1)), v30, v28, 0, (*(*(v17 + 8376) + 192) >> 3) & 1);
        ++v29;
      }

      while (v29 != 4);
      *v33.i32 = v26;
      *&v38[4] = vdivq_f32(vcvtq_f32_s32(v36), vdupq_lane_s32(v33, 0));
      sub_2779D4488(*(v18 + 272216), *(v18 + 644300) != 0, &__b, 9, 5);
      if ((*(v18 + 245616) & 0xFD) != 0 && *(v18 + 644296) && (v48 = 0u, v47 = 0u, v46 = 0u, v42 = 0, memset(v41, 0, sizeof(v41)), LODWORD(v41[0]) = 5, v43 = __b, v44 = *v38, v45 = *&v38[16], (*(v18 + 644328))(*(v18 + 644312), v41), memset(&v39, 0, 512), !(*(v18 + 644336))(*(v18 + 644312), &v39)))
      {
        *(v35 + 304) = v40;
      }

      else
      {
        v39.i32[2] = 0;
        v39.i64[0] = 0;
        sub_2779D28B0(&__b, v34, &v39);
        DWORD2(v41[0]) = 0;
        *&v41[0] = 0;
        sub_2779C9354(v39.f32, v41, 3u);
        if (*(v41 + 1) <= v21)
        {
          *(v35 + 304) = 1;
        }

        if (*(v41 + 2) <= v21)
        {
          *(v35 + 308) = 1;
        }
      }
    }
  }
}