uint64_t sub_277986A18(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 32);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 32);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277986AC4(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 64);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 64);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277986B70(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 128);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 128);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277986C1C(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 128);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 128);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277986CE0(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 256);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 256);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277986DA4(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 512);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 512);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277986E68(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 512);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 512);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_277986F88(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 1024);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 1024);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_2779870A8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 2048);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 2048);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_2779871C8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 2048);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 2048);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

uint64_t sub_2779873C8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 4096);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 4096);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

uint64_t sub_2779875C8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 0x2000);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 0x2000);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

uint64_t sub_2779877C8(uint8x16_t *a1, int a2, uint64_t a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  v11 = a1 + 4;
  v12 = 0uLL;
  v13 = a6 + 4;
  v14 = a3 + 64;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  if (a8)
  {
    do
    {
      v21 = v13[-4];
      v22 = v13[-3];
      v23 = vsubq_s8(v10, v21);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v23.i8, *(v14 - 64)), *v21.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v23, *(v14 - 64)), v21, *(a5 + v8)), 6uLL), v11[-4]));
      v24 = vsubq_s8(v10, v22);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *(v14 - 48)), *v22.i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v24, *(v14 - 48)), v22, *(a5 + v8 + 16)), 6uLL), v11[-3]));
      v25 = v13[-2];
      v26 = v13[-1];
      v27 = vsubq_s8(v10, v25);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *(v14 - 32)), *v25.i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *(v14 - 32)), v25, *(a5 + v8 + 32)), 6uLL), v11[-2]));
      v28 = vsubq_s8(v10, v26);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, *(v14 - 16)), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *(v14 - 16)), v26, *(a5 + v8 + 48)), 6uLL), v11[-1]));
      v29 = v13[1];
      v30 = vsubq_s8(v10, *v13);
      v31 = *(v14 + 16);
      v32 = *(a5 + v8 + 80);
      v33 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v14), *v13->i8, *(a5 + v8 + 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v30, *v14), *v13, *(a5 + v8 + 64)), 6uLL);
      v34 = vsubq_s8(v10, v29);
      v35 = vmlal_u8(vmull_u8(*v34.i8, *v31.i8), *v29.i8, *v32.i8);
      v36 = vmlal_high_u8(vmull_high_u8(v34, v31), v29, v32);
      v37 = v13[2];
      v38 = v13[3];
      v39 = vsubq_s8(v10, v37);
      v16 = vpadalq_u8(v16, vabdq_u8(v33, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v35, 6uLL), v36, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, *(v14 + 32)), *v37.i8, *(a5 + v8 + 96)), 6uLL), vmlal_high_u8(vmull_high_u8(v39, *(v14 + 32)), v37, *(a5 + v8 + 96)), 6uLL), v11[2]));
      v40 = vsubq_s8(v10, v38);
      v41 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(v14 + 48)), *v38.i8, *(a5 + v8 + 112)), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(v14 + 48)), v38, *(a5 + v8 + 112)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v41);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x2000);
  }

  else
  {
    do
    {
      v42 = v13[-4];
      v43 = v13[-3];
      v44 = vsubq_s8(v10, v42);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v44.i8, *(a5 + v8)), *v42.i8, *(v14 - 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v44, *(a5 + v8)), v42, *(v14 - 64)), 6uLL), v11[-4]));
      v45 = vsubq_s8(v10, v43);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, *(a5 + v8 + 16)), *v43.i8, *(v14 - 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v45, *(a5 + v8 + 16)), v43, *(v14 - 48)), 6uLL), v11[-3]));
      v46 = v13[-2];
      v47 = v13[-1];
      v48 = vsubq_s8(v10, v46);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v48.i8, *(a5 + v8 + 32)), *v46.i8, *(v14 - 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v48, *(a5 + v8 + 32)), v46, *(v14 - 32)), 6uLL), v11[-2]));
      v49 = vsubq_s8(v10, v47);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v49.i8, *(a5 + v8 + 48)), *v47.i8, *(v14 - 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v49, *(a5 + v8 + 48)), v47, *(v14 - 16)), 6uLL), v11[-1]));
      v50 = v13[1];
      v51 = vsubq_s8(v10, *v13);
      v52 = *(a5 + v8 + 80);
      v53 = *(v14 + 16);
      v54 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v51.i8, *(a5 + v8 + 64)), *v13->i8, *v14), 6uLL), vmlal_high_u8(vmull_high_u8(v51, *(a5 + v8 + 64)), *v13, *v14), 6uLL);
      v55 = vsubq_s8(v10, v50);
      v56 = vmlal_u8(vmull_u8(*v55.i8, *v52.i8), *v50.i8, *v53.i8);
      v57 = vmlal_high_u8(vmull_high_u8(v55, v52), v50, v53);
      v58 = v13[2];
      v59 = v13[3];
      v60 = vsubq_s8(v10, v58);
      v16 = vpadalq_u8(v16, vabdq_u8(v54, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v56, 6uLL), v57, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v60.i8, *(a5 + v8 + 96)), *v58.i8, *(v14 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v60, *(a5 + v8 + 96)), v58, *(v14 + 32)), 6uLL), v11[2]));
      v61 = vsubq_s8(v10, v59);
      v62 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v61.i8, *(a5 + v8 + 112)), *v59.i8, *(v14 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v61, *(a5 + v8 + 112)), v59, *(v14 + 48)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v62);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x2000);
  }

  return vaddlvq_u16(v19) + vaddlvq_u16(v20) + vaddlvq_u16(v18) + vaddlvq_u16(v17) + vaddlvq_u16(v16) + vaddlvq_u16(v15) + vaddlvq_u16(v12) + vaddlvq_u16(v9);
}

uint64_t sub_277987B68(uint8x16_t *a1, int a2, uint64_t a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  v11 = a1 + 4;
  v12 = 0uLL;
  v13 = a6 + 4;
  v14 = a3 + 64;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  if (a8)
  {
    do
    {
      v21 = v13[-4];
      v22 = v13[-3];
      v23 = vsubq_s8(v10, v21);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v23.i8, *(v14 - 64)), *v21.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v23, *(v14 - 64)), v21, *(a5 + v8)), 6uLL), v11[-4]));
      v24 = vsubq_s8(v10, v22);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *(v14 - 48)), *v22.i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v24, *(v14 - 48)), v22, *(a5 + v8 + 16)), 6uLL), v11[-3]));
      v25 = v13[-2];
      v26 = v13[-1];
      v27 = vsubq_s8(v10, v25);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *(v14 - 32)), *v25.i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *(v14 - 32)), v25, *(a5 + v8 + 32)), 6uLL), v11[-2]));
      v28 = vsubq_s8(v10, v26);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, *(v14 - 16)), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *(v14 - 16)), v26, *(a5 + v8 + 48)), 6uLL), v11[-1]));
      v29 = v13[1];
      v30 = vsubq_s8(v10, *v13);
      v31 = *(v14 + 16);
      v32 = *(a5 + v8 + 80);
      v33 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v14), *v13->i8, *(a5 + v8 + 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v30, *v14), *v13, *(a5 + v8 + 64)), 6uLL);
      v34 = vsubq_s8(v10, v29);
      v35 = vmlal_u8(vmull_u8(*v34.i8, *v31.i8), *v29.i8, *v32.i8);
      v36 = vmlal_high_u8(vmull_high_u8(v34, v31), v29, v32);
      v37 = v13[2];
      v38 = v13[3];
      v39 = vsubq_s8(v10, v37);
      v16 = vpadalq_u8(v16, vabdq_u8(v33, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v35, 6uLL), v36, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, *(v14 + 32)), *v37.i8, *(a5 + v8 + 96)), 6uLL), vmlal_high_u8(vmull_high_u8(v39, *(v14 + 32)), v37, *(a5 + v8 + 96)), 6uLL), v11[2]));
      v40 = vsubq_s8(v10, v38);
      v41 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(v14 + 48)), *v38.i8, *(a5 + v8 + 112)), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(v14 + 48)), v38, *(a5 + v8 + 112)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v41);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x4000);
  }

  else
  {
    do
    {
      v42 = v13[-4];
      v43 = v13[-3];
      v44 = vsubq_s8(v10, v42);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v44.i8, *(a5 + v8)), *v42.i8, *(v14 - 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v44, *(a5 + v8)), v42, *(v14 - 64)), 6uLL), v11[-4]));
      v45 = vsubq_s8(v10, v43);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, *(a5 + v8 + 16)), *v43.i8, *(v14 - 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v45, *(a5 + v8 + 16)), v43, *(v14 - 48)), 6uLL), v11[-3]));
      v46 = v13[-2];
      v47 = v13[-1];
      v48 = vsubq_s8(v10, v46);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v48.i8, *(a5 + v8 + 32)), *v46.i8, *(v14 - 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v48, *(a5 + v8 + 32)), v46, *(v14 - 32)), 6uLL), v11[-2]));
      v49 = vsubq_s8(v10, v47);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v49.i8, *(a5 + v8 + 48)), *v47.i8, *(v14 - 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v49, *(a5 + v8 + 48)), v47, *(v14 - 16)), 6uLL), v11[-1]));
      v50 = v13[1];
      v51 = vsubq_s8(v10, *v13);
      v52 = *(a5 + v8 + 80);
      v53 = *(v14 + 16);
      v54 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v51.i8, *(a5 + v8 + 64)), *v13->i8, *v14), 6uLL), vmlal_high_u8(vmull_high_u8(v51, *(a5 + v8 + 64)), *v13, *v14), 6uLL);
      v55 = vsubq_s8(v10, v50);
      v56 = vmlal_u8(vmull_u8(*v55.i8, *v52.i8), *v50.i8, *v53.i8);
      v57 = vmlal_high_u8(vmull_high_u8(v55, v52), v50, v53);
      v58 = v13[2];
      v59 = v13[3];
      v60 = vsubq_s8(v10, v58);
      v16 = vpadalq_u8(v16, vabdq_u8(v54, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v56, 6uLL), v57, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v60.i8, *(a5 + v8 + 96)), *v58.i8, *(v14 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v60, *(a5 + v8 + 96)), v58, *(v14 + 32)), 6uLL), v11[2]));
      v61 = vsubq_s8(v10, v59);
      v62 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v61.i8, *(a5 + v8 + 112)), *v59.i8, *(v14 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v61, *(a5 + v8 + 112)), v59, *(v14 + 48)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v62);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x4000);
  }

  return vaddlvq_u16(v19) + vaddlvq_u16(v20) + vaddlvq_u16(v18) + vaddlvq_u16(v17) + vaddlvq_u16(v16) + vaddlvq_u16(v15) + vaddlvq_u16(v12) + vaddlvq_u16(v9);
}

uint64_t sub_277987F08(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5, __int32 *a6, int a7, int a8)
{
  v8 = 2 * a2;
  v9 = 2 * a4;
  v10 = 2 * a7;
  v11 = 0;
  v12 = 0;
  if (a8)
  {
    do
    {
      v13.i32[0] = *a6;
      v13.i32[1] = *(a6 + a7);
      v14.i32[0] = *a3;
      v14.i32[1] = *(a3 + a4);
      v15.i32[0] = *a1;
      v15.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v13), v14), v13, *(a5 + v11)), 6uLL), v15));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 64);
  }

  else
  {
    do
    {
      v16.i32[0] = *a6;
      v16.i32[1] = *(a6 + a7);
      v17.i32[0] = *a3;
      v17.i32[1] = *(a3 + a4);
      v18.i32[0] = *a1;
      v18.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v16), *(a5 + v11)), v16, v17), 6uLL), v18));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 64);
  }

  return vaddlv_u16(v12);
}

uint64_t sub_277987FF0(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 64);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 64);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_2779880B4(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 256);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 256);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277988160(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 256);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 256);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_277988280(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 1024);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 1024);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277988344(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 1024);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 1024);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

int8x16_t *sub_277988544(int8x16_t *result, int a2, uint16x4_t *a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, char a9)
{
  v9 = vdup_n_s16(~(-1 << a9));
  v10 = &result[-1].i8[10];
  if (a5 >= 5)
  {
    v66 = a2;
    v67 = vmulq_s32(vdupq_n_s32(a8), xmmword_277BB7060);
    v68.i64[0] = 0x7E0000007ELL;
    v68.i64[1] = 0x7E0000007ELL;
    v69.i64[0] = 0x800000008;
    v69.i64[1] = 0x800000008;
    v70 = vdupq_n_s64(word_277BEBCC0);
    v71.i64[0] = 0x600000006;
    v71.i64[1] = 0x600000006;
    do
    {
      v72 = vdupq_n_s64(v10);
      v73 = a5 + 4;
      v74 = a3;
      v75 = a7;
      do
      {
        v76 = vaddq_s32(vdupq_n_s32(v75), v67);
        v77 = *&vshrq_n_s32(v76, 0xDuLL) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL);
        v78 = vandq_s8(vshrq_n_u32(v76, 7uLL), v68);
        v79 = vaddw_s32(v72, *&v77);
        v80 = vaddw_high_s32(v72, v77);
        v81 = vmlal_s32(v70, *v78.i8, 0x800000008);
        v82 = vmlal_high_s32(v70, v78, v69);
        result = v80.i64[0];
        v83 = v81.i64[1];
        v84 = *v81.i64[0];
        v85 = v82.i64[1];
        v86 = *v82.i64[0];
        v87 = vextq_s8(v84, v84, 8uLL).u64[0];
        v88 = vextq_s8(*v83, *v83, 8uLL).u64[0];
        v89 = vextq_s8(v86, v86, 8uLL).u64[0];
        v90 = vextq_s8(*v85, *v85, 8uLL).u64[0];
        v91 = vtrn1_s16(*v84.i8, *v83->i8);
        *v84.i8 = vtrn2_s16(*v84.i8, *v83->i8);
        v92 = vtrn1_s16(*v86.i8, *v85->i8);
        *v86.i8 = vtrn2_s16(*v86.i8, *v85->i8);
        v93 = vzip1_s32(v91, v92);
        v94 = vtrn1_s16(*v79.i64[0], *v79.i64[1]);
        v95 = vtrn2_s16(*v79.i64[0], *v79.i64[1]);
        v96 = vtrn1_s16(*v80.i64[0], *v80.i64[1]);
        v97 = vtrn2_s16(*v80.i64[0], *v80.i64[1]);
        v98 = vzip2_s32(v91, v92);
        v99 = vzip1_s32(v94, v96);
        v100 = vzip2_s32(v94, v96);
        v101 = vzip1_s32(v95, v97);
        v102 = vzip2_s32(v95, v97);
        v103 = vzip1_s32(*v84.i8, *v86.i8);
        *v84.i8 = vzip2_s32(*v84.i8, *v86.i8);
        *v86.i8 = vtrn1_s16(v87, v88);
        v78.i64[0] = vextq_s8(*v79.i64[0], *v79.i64[0], 8uLL).u64[0];
        v80.i64[0] = vextq_s8(*v79.i64[1], *v79.i64[1], 8uLL).u64[0];
        v79.i64[0] = vextq_s8(*result, *result, 8uLL).u64[0];
        v104 = vextq_s8(*v80.i64[1], *v80.i64[1], 8uLL).u64[0];
        v105 = vtrn2_s16(v87, v88);
        v106 = vtrn1_s16(*v78.i8, *v80.i8);
        *v78.i8 = vtrn2_s16(*v78.i8, *v80.i8);
        *v80.i8 = vtrn1_s16(*v79.i8, v104);
        *v79.i8 = vtrn2_s16(*v79.i8, v104);
        v107 = vtrn1_s16(v89, v90);
        v108 = vtrn2_s16(v89, v90);
        *v74++ = vmin_u16(vqmovun_s32(vqrshlq_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v101, v103), v99, v93), v100, v98), v102, *v84.i8), vzip1_s32(v106, *v80.i8), vzip1_s32(*v86.i8, v107)), vzip1_s32(*v78.i8, *v79.i8), vzip1_s32(v105, v108)), vzip2_s32(v106, *v80.i8), vzip2_s32(*v86.i8, v107)), vzip2_s32(*v78.i8, *v79.i8), vzip2_s32(v105, v108)), v71)), v9);
        v75 += 4 * a8;
        v73 -= 4;
      }

      while (v73 > 4);
      v10 += 2 * v66;
      a3 = (a3 + 2 * a4);
      v109 = __OFSUB__(a6--, 1);
    }

    while (!((a6 < 0) ^ v109 | (a6 == 0)));
  }

  else
  {
    v11 = vmlaq_s32(vdupq_n_s32(a7), vdupq_n_s32(a8), xmmword_277BB7060);
    v12 = vshrq_n_s32(v11, 0xDuLL);
    v13.i64[0] = 0x7E0000007ELL;
    v13.i64[1] = 0x7E0000007ELL;
    v14 = vandq_s8(vshrq_n_u32(v11, 7uLL), v13);
    v15.i64[0] = (v12.i32[0] & 0xFFFFFFFE);
    v15.i64[1] = (v12.i32[1] & 0xFFFFFFFE);
    v16 = v15;
    v15.i64[0] = (v12.i32[2] & 0xFFFFFFFE);
    v15.i64[1] = (v12.i32[3] & 0xFFFFFFFE);
    v17 = v15;
    v18.i64[0] = 0x800000008;
    v18.i64[1] = 0x800000008;
    v19 = vdupq_n_s64(word_277BEBCC0);
    v20 = vmlal_s32(v19, *v14.i8, 0x800000008);
    v21 = vmlal_high_s32(v19, v14, v18);
    v22 = v20.i64[0];
    v23 = v21.i64[0];
    v24 = a6 + 1;
    v25.i64[0] = 0x600000006;
    v25.i64[1] = 0x600000006;
    do
    {
      v26 = vdupq_n_s64(v10);
      v27 = vaddq_s64(v26, v16);
      v28 = vaddq_s64(v26, v17);
      v29 = v27.i64[1];
      v30 = *v27.i64[0];
      v31 = v28.i64[1];
      v32 = *v28.i64[0];
      v33 = vextq_s8(*v22, *v22, 8uLL).u64[0];
      v34 = vextq_s8(*v20.i64[1], *v20.i64[1], 8uLL).u64[0];
      v35 = vextq_s8(*v23, *v23, 8uLL).u64[0];
      v36 = vextq_s8(*v21.i64[1], *v21.i64[1], 8uLL).u64[0];
      v37 = vtrn1_s16(*v22->i8, *v20.i64[1]);
      v38 = vtrn2_s16(*v22->i8, *v20.i64[1]);
      v39 = vtrn1_s16(*v23->i8, *v21.i64[1]);
      v40 = vtrn2_s16(*v23->i8, *v21.i64[1]);
      v41 = vzip1_s32(v37, v39);
      v42 = vzip2_s32(v37, v39);
      v43 = vzip1_s32(v38, v40);
      v44 = vzip2_s32(v38, v40);
      v45 = vtrn1_s16(v33, v34);
      v46 = vtrn2_s16(v33, v34);
      v47 = vtrn1_s16(v35, v36);
      v48 = vtrn2_s16(v35, v36);
      v49 = vzip1_s32(v45, v47);
      v50 = vzip2_s32(v45, v47);
      v51 = vzip1_s32(v46, v48);
      v52 = vzip2_s32(v46, v48);
      v53 = vextq_s8(v30, v30, 8uLL).u64[0];
      v54 = vextq_s8(*v29, *v29, 8uLL).u64[0];
      v55 = vextq_s8(v32, v32, 8uLL).u64[0];
      v56 = vextq_s8(*v31, *v31, 8uLL).u64[0];
      v57 = vtrn1_s16(*v30.i8, *v29->i8);
      *v30.i8 = vtrn2_s16(*v30.i8, *v29->i8);
      v58 = vtrn1_s16(*v32.i8, *v31->i8);
      *v32.i8 = vtrn2_s16(*v32.i8, *v31->i8);
      v59 = vzip1_s32(v57, v58);
      v60 = vzip2_s32(v57, v58);
      v61 = vzip1_s32(*v30.i8, *v32.i8);
      *v32.i8 = vzip2_s32(*v30.i8, *v32.i8);
      *v30.i8 = vtrn1_s16(v53, v54);
      v62 = vtrn2_s16(v53, v54);
      v63 = vtrn1_s16(v55, v56);
      v64 = vtrn2_s16(v55, v56);
      v65 = vmin_u16(vqmovun_s32(vqrshlq_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v61, v43), v59, v41), v60, v42), *v32.i8, v44), vzip1_s32(*v30.i8, v63), v49), vzip1_s32(v62, v64), v51), vzip2_s32(*v30.i8, v63), v50), vzip2_s32(v62, v64), v52), v25)), v9);
      if (a5 == 2)
      {
        a3->i32[0] = v65.i32[0];
      }

      else
      {
        *a3 = v65;
      }

      a3 = (a3 + 2 * a4);
      --v24;
      v10 += 2 * a2;
    }

    while (v24 > 1);
  }

  return result;
}

uint64_t sub_2779888C0(uint64_t a1, int a2, int a3, int a4)
{
  if (a4 < 1)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    for (i = 0; i != a4; ++i)
    {
      if (a3 >= 1)
      {
        for (j = 0; j != a3; ++j)
        {
          v8 = *(a1 + j);
          v5 += (v8 * v8);
          v4 += v8;
        }
      }

      a1 += a2;
    }
  }

  return v5 - v4 * v4 / (a4 * a3);
}

uint64_t sub_277988938(_DWORD *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint8x16_t a6, uint8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v602 = *MEMORY[0x277D85DE8];
  v13 = a1 + 4;
  v12 = a1[4];
  v15 = a1 + 6;
  v14 = a1[6];
  v17 = a2 + 4;
  v16 = a2[4];
  v19 = a2 + 6;
  v18 = a2[6];
  v20 = v12 == 2 * v16 && 2 * v18 == v14;
  if (v20 || ((v21 = 4 * v16, v22 = 4 * v18, v21 == v12) ? (v23 = v22 == v14) : (v23 = 0), v23))
  {
    v24 = 1;
  }

  else
  {
    if (v21 != 3 * v12)
    {
      goto LABEL_101;
    }

    v24 = v22 == 3 * v14;
  }

  if (a5 < 2)
  {
    if (v24)
    {
LABEL_20:
      v31 = 0;
      v540 = a5;
      if (a5 >= 3)
      {
        v32 = 3;
      }

      else
      {
        v32 = a5;
      }

      v546 = &off_27A7196D8 + 2 * a3;
      v538 = a1;
      v539 = a2;
      v562 = a1 + 8;
      v563 = a1 + 10;
      v560 = a2 + 8;
      v561 = a2 + 10;
      v545 = a4 & 0xF;
      v33 = (a4 + 21) >> 4;
      v34 = &v597[8 * v33];
      v35 = (a4 + 42) >> 4;
      v36 = &v597[8 * v35];
      v37 = &v597[8 * v33 + 32];
      v547 = &unk_277BB8200 + 16 * a4;
      v548 = v32;
      v38 = &v597[8 * v35 + 32];
      v543 = (a4 + 42) & 0xF;
      v544 = (a4 + 21) & 0xF;
      v541 = &unk_277BB8200 + 16 * v543;
      v542 = &unk_277BB8200 + 16 * v544;
      v554 = a4;
      v553 = a3;
      v551 = a1 + 6;
      v552 = a1 + 4;
      v549 = a2 + 6;
      v550 = a2 + 4;
      while (1)
      {
        v39 = v31 != 0;
        v40 = v13[v31 != 0];
        v41 = v15[v31 != 0];
        v42 = v17[v31 != 0];
        v43 = v19[v31 != 0];
        v44 = (*v17 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v45 = *v19 + 1;
        v46 = v45 & 0xFFFFFFFFFFFFFFFELL;
        if (v40 == 2 * v42 && 2 * v43 == v41)
        {
          if (!a4)
          {
            v179 = *&v563[2 * v31];
            v180 = *&v561[2 * v31];
            v181 = v42 + 15;
            v182 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
            v183 = 2 * (v562[v31 != 0] - v182);
            v184 = v560[v31 != 0] - v182;
            v185 = -(v181 & 0xFFFFFFF0);
            do
            {
              v186 = v185;
              do
              {
                *a6.i8 = vld2q_s8(v179);
                v179 += 32;
                *v180++ = a6;
                v186 += 16;
              }

              while (v186);
              v179 += v183;
              v180 = (v180 + v184);
              --v43;
            }

            while (v43);
            goto LABEL_96;
          }

          if (a3 == 3)
          {
            v159 = *&v563[2 * v31];
            v160 = v562[v31 != 0];
            v161 = *&v561[2 * v31];
            v162 = v42 + 15;
            v163 = v162 & 0xFFFFFFFFFFFFFFF0;
            v164 = &v159[v160];
            a6.i8[0] = v547[6];
            a7.i8[0] = v547[8];
            v165 = 2 * (v160 - v163);
            v166 = v560[v31 != 0] - v163;
            v167 = -(v162 & 0xFFFFFFF0);
            a6 = vdupq_lane_s8(*a6.i8, 0);
            a7 = vdupq_lane_s8(*a7.i8, 0);
            do
            {
              v168 = v167;
              do
              {
                v605 = vld2q_s8(v159);
                v159 += 32;
                v606 = vld2q_s8(v164);
                v164 += 32;
                *v161++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v606.val[1].i8, *a7.i8), *v606.val[0].i8, *a6.i8), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v605.val[1].i8, *a7.i8), *v605.val[0].i8, *a6.i8), 7uLL), *a6.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v606.val[1], a7), v606.val[0], a6), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v605.val[1], a7), v605.val[0], a6), 7uLL), *a6.i8), 7uLL);
                v168 += 16;
              }

              while (v168);
              v159 += v165;
              v164 += v165;
              v161 = (v161 + v166);
              --v43;
            }

            while (v43);
            goto LABEL_96;
          }

          v566 = v17[v31 != 0];
          v558 = v19[v31 != 0];
          v564 = v31;
          v187 = malloc_type_malloc(((2 * v46 + 13) & 0x3FFFFFFFFFFFFFF8) * ((v44 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0x100004077774924uLL);
          if (!v187)
          {
            goto LABEL_104;
          }

          v188 = v562[v39];
          v189 = *&v561[2 * v564];
          v190 = v560[v39];
          v191 = (v566 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v192 = *(*v546 + 16 * a4);
          v193 = (v41 + 13) & 0xFFFFFFF8;
          v593 = 2 * v191;
          v194 = vdupq_lane_s16(*v192.i8, 0);
          v195 = vdupq_lane_s16(*v192.i8, 1);
          v196 = vdupq_lane_s16(*v192.i8, 2);
          v197 = vdupq_laneq_s16(v192, 5);
          v198 = vdupq_laneq_s16(v192, 6);
          v199 = vdupq_laneq_s16(v192, 7);
          v200 = vdupq_lane_s16(*v192.i8, 3);
          v201 = vdupq_laneq_s16(v192, 4);
          v202 = 6 * v191;
          v203 = 4 * v188 + 8;
          v204 = *&v563[2 * v564] + -3 * v188 - 5;
          v205 = 2 * v188 + 8;
          v555 = v187;
          v206 = v187;
          v207 = 7 * v191;
          do
          {
            v595 = v193;
            v208 = 0;
            v209.i64[0] = *(v204 + 2);
            v210 = (v204 + 2 + v188);
            v211.i64[0] = *v210;
            v212 = (v210 + v188);
            v213.i64[0] = *v212;
            v214 = (v212 + v188);
            v215.i64[0] = *v214;
            v216 = (v214 + v188);
            v217 = *v216;
            v218 = (v216 + v188);
            v219 = *v218;
            v220 = (v218 + v188);
            v209.i64[1] = v217;
            v211.i64[1] = v219;
            v221 = vtrn1q_s8(v209, v211);
            v222 = vtrn2q_s8(v209, v211);
            v213.i64[1] = *v220;
            v215.i64[1] = *(v220 + v188);
            v223 = vtrn1q_s8(v213, v215);
            v224 = vtrn2q_s8(v213, v215);
            v225 = vtrn1q_s16(v221, v223);
            v226 = vtrn2q_s16(v221, v223);
            v227 = vtrn1q_s16(v222, v224);
            v228 = vuzp1q_s32(v225, v227);
            v229 = vuzp2q_s32(v225, v227);
            v230 = vuzp1q_s32(v226, vtrn2q_s16(v222, v224));
            v231 = vextq_s8(v228, v228, 8uLL).u64[0];
            v232 = vextq_s8(v230, v230, 8uLL).u64[0];
            v233 = v207;
            v234 = v206 + v207;
            v235 = v206 + v202;
            v236 = vextq_s8(v229, v229, 8uLL).u64[0];
            v237 = v204;
            do
            {
              v238 = *(v237 + 8);
              v237 += 8;
              v239.i64[0] = v238;
              v240.i64[0] = *(v204 + v188 + 8);
              v241.i64[0] = *(v204 + v205);
              v242.i64[0] = *(v204 + v205 + v188);
              v239.i64[1] = *(v204 + v203);
              v240.i64[1] = *(v204 + v203 + v188);
              v243 = vtrn1q_s8(v239, v240);
              v241.i64[1] = *(v204 + 6 * v188 + 8);
              v242.i64[1] = *(v204 + 7 * v188 + 8);
              v244 = vtrn2q_s8(v239, v240);
              v245 = vtrn1q_s8(v241, v242);
              v246 = vtrn2q_s8(v241, v242);
              v247 = vtrn1q_s16(v243, v245);
              v248 = vtrn2q_s16(v243, v245);
              v249 = vtrn1q_s16(v244, v246);
              v250 = vtrn2q_s16(v244, v246);
              v251 = vuzp1q_s32(v247, v249);
              v252 = vmovl_u8(*v230.i8);
              v230 = vuzp2q_s32(v247, v249);
              v253 = vmovl_u8(*v228.i8);
              v254 = vmovl_u8(*v229.i8);
              v228 = vuzp1q_s32(v248, v250);
              v229 = vuzp2q_s32(v248, v250);
              v255 = vmovl_u8(v231);
              v231 = vextq_s8(v228, v228, 8uLL).u64[0];
              v256 = vmovl_u8(v232);
              v257 = vmovl_u8(v236);
              v258 = vmovl_u8(*v251.i8);
              v259 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v197, v257), v196, v252), v195, v255), v194, v253);
              v260 = vmovl_high_u8(v251);
              v261 = vmovl_u8(*v228.i8);
              v262 = vqaddq_s16(vmlaq_s16(vmlaq_s16(v259, v198, v258), v199, v260), vmulq_s16(v200, v256));
              v263 = vmovl_high_u8(v228);
              v264 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v196, v254), v195, v256), v194, v252), v197, v260);
              v265 = vqaddq_s16(v262, vmulq_s16(v201, v254));
              v266 = vqaddq_s16(vmlaq_s16(vmlaq_s16(v264, v198, v261), v199, v263), vmulq_s16(v200, v257));
              *v265.i8 = vqrshrun_n_s16(v265, 7uLL);
              v267 = vmovl_u8(*v230.i8);
              v268 = vmovl_high_u8(v230);
              *v266.i8 = vqrshrun_n_s16(vqaddq_s16(v266, vmulq_s16(v201, v258)), 7uLL);
              *v257.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v195, v257), v194, v254), v196, v258), v197, v263), v198, v267), v199, v268), vmulq_s16(v200, v260)), vmulq_s16(v201, v261)), 7uLL);
              *v260.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v194, v258), v195, v260), v196, v261), v197, v268), v198, vmovl_u8(*v229.i8)), v199, vmovl_high_u8(v229)), vmulq_s16(v200, v263)), vmulq_s16(v201, v267)), 7uLL);
              *v253.i8 = vtrn1_s8(*v265.i8, *v266.i8);
              *v265.i8 = vtrn2_s8(*v265.i8, *v266.i8);
              *v266.i8 = vtrn1_s8(*v257.i8, *v260.i8);
              *v257.i8 = vtrn2_s8(*v257.i8, *v260.i8);
              *v260.i8 = vtrn1_s16(*v253.i8, *v266.i8);
              *v266.i8 = vtrn2_s16(*v253.i8, *v266.i8);
              *v253.i8 = vtrn1_s16(*v265.i8, *v257.i8);
              *v265.i8 = vtrn2_s16(*v265.i8, *v257.i8);
              v206->i32[v208 / 4] = v260.i32[0];
              *(v206->i32 + v191 + v208) = v253.i32[0];
              *(v206->i32 + v593 + v208) = v266.i32[0];
              *(v206->i32 + 3 * v191 + v208) = v265.i32[0];
              v206->i32[v191 + v208 / 4] = v260.i32[1];
              *(v206->i32 + 5 * v191 + v208) = v253.i32[1];
              v269 = &v234[v208];
              *&v235[v208] = v266.i32[1];
              v236 = vextq_s8(v229, v229, 8uLL).u64[0];
              v232 = vextq_s8(v230, v230, 8uLL).u64[0];
              v208 += 4;
              *v269 = v265.i32[1];
              v204 = v237;
            }

            while (((v566 + 3) & 0xFFFFFFFC) != v208);
            v204 = v237 + 8 * v188 - v593;
            v207 = v233;
            v206 = (v206 + v208 + v233);
            v193 = v595 - 8;
            v202 = 6 * v191;
          }

          while (v595 != 8);
          v270 = (v566 + 7) & 0xFFFFFFF8;
          v271 = (v558 + 3) & 0xFFFFFFFC;
          v272 = -(v190 * v271);
          v273 = -v271;
          a4 = v554;
          v50 = v555;
          v274 = v555;
          a3 = v553;
          v13 = v552;
          do
          {
            v275 = *v274;
            v276 = *(v274 + v191);
            v277 = (v274 + v191 + v191);
            v278 = *v277;
            v279 = (v277 + v191);
            v280 = *v279;
            v281 = (v279 + v191);
            v282 = *v281;
            v283 = *(v281 + v191);
            v284 = (v274 + 6 * v191);
            v285 = v273;
            do
            {
              v286 = *(v284 + v191);
              v287 = vmovl_u8(v275);
              v275 = *(v284 + 2 * v191);
              v288 = vmovl_u8(v276);
              v276 = *(v284 + 3 * v191);
              v289 = vmovl_u8(v278);
              v278 = *(v284 + 4 * v191);
              v290 = vmovl_u8(v280);
              v280 = *(v284 + 5 * v191);
              v291 = vmovl_u8(v282);
              v282 = *(v284 + 6 * v191);
              v292 = vmovl_u8(v283);
              v283 = *(v284 + 7 * v191);
              v293 = vmovl_u8(*v284);
              v284 += v191;
              v294 = vmovl_u8(v286);
              v295 = vmovl_u8(v275);
              v296 = vmovl_u8(v276);
              v297 = vmovl_u8(v278);
              v298 = vmovl_u8(v280);
              *v189 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v197, v292), v196, v289), v195, v288), v194, v287), v198, v293), v199, v294), vmulq_s16(v200, v290)), vmulq_s16(v201, v291)), 7uLL);
              *(v189 + v190) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v196, v291), v195, v290), v194, v289), v197, v294), v198, v295), v199, v296), vmulq_s16(v200, v292)), vmulq_s16(v201, v293)), 7uLL);
              *(v189 + 2 * v190) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v195, v292), v194, v291), v196, v293), v197, v296), v198, v297), v199, v298), vmulq_s16(v200, v294)), vmulq_s16(v201, v295)), 7uLL);
              *(v189 + 3 * v190) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v194, v293), v195, v294), v196, v295), v197, v298), v198, vmovl_u8(v282)), v199, vmovl_u8(v283)), vmulq_s16(v200, v296)), vmulq_s16(v201, v297)), 7uLL);
              v189 = (v189 + 4 * v190);
              v285 += 4;
            }

            while (v285);
            v274 = (v284 - ((2 * (v558 + 3)) | 6) * v191 + 8);
            v189 = (v189 + v272 + 8);
            v270 -= 8;
          }

          while (v270);
        }

        else
        {
          v48 = 4 * v43;
          if (v40 == 4 * v42 && v48 == v41)
          {
            if (!a4)
            {
              v434 = *&v563[2 * v31];
              v435 = *&v561[2 * v31];
              v436 = v42 + 15;
              v437 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
              v438 = 4 * (v562[v31 != 0] - v437);
              v439 = v560[v31 != 0] - v437;
              v440 = -(v436 & 0xFFFFFFF0);
              do
              {
                v441 = v440;
                do
                {
                  *a6.i8 = vld4q_s8(v434);
                  v434 += 64;
                  *v435++ = a6;
                  v441 += 16;
                }

                while (v441);
                v434 += v438;
                v435 = (v435 + v439);
                --v43;
              }

              while (v43);
              goto LABEL_96;
            }

            if (a3 == 3)
            {
              v169 = *&v563[2 * v31];
              v170 = v562[v31 != 0];
              v171 = *&v561[2 * v31];
              v172 = v42 + 15;
              v173 = v172 & 0xFFFFFFFFFFFFFFF0;
              v174 = &v169[v170];
              a6.i8[0] = v547[6];
              a7.i8[0] = v547[8];
              v175 = 4 * (v170 - v173);
              v176 = v560[v31 != 0] - v173;
              v177 = -(v172 & 0xFFFFFFF0);
              a6 = vdupq_lane_s8(*a6.i8, 0);
              a7 = vdupq_lane_s8(*a7.i8, 0);
              do
              {
                v178 = v177;
                do
                {
                  v607 = vld4q_s8(v169);
                  v169 += 64;
                  v608 = vld4q_s8(v174);
                  v174 += 64;
                  *v171++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v608.val[1].i8, *a7.i8), *v608.val[0].i8, *a6.i8), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v607.val[1].i8, *a7.i8), *v607.val[0].i8, *a6.i8), 7uLL), *a6.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v608.val[1], a7), v608.val[0], a6), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v607.val[1], a7), v607.val[0], a6), 7uLL), *a6.i8), 7uLL);
                  v178 += 16;
                }

                while (v178);
                v169 += v175;
                v174 += v175;
                v171 = (v171 + v176);
                --v43;
              }

              while (v43);
              goto LABEL_96;
            }

            v567 = v17[v31 != 0];
            v559 = v19[v31 != 0];
            v564 = v31;
            v50 = malloc_type_malloc((((((4 * v45) | 6) + 7) & 0xFFFFFFF8) * v44), 0x100004077774924uLL);
            if (!v50)
            {
LABEL_104:
              a5 = v540;
              a1 = v538;
              a2 = v539;
              break;
            }

            v442 = v562[v39];
            v443 = *&v561[2 * v564];
            v444 = v560[v39];
            v445 = (v567 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v446 = *(*v546 + 16 * a4);
            v447 = (v41 + 13) & 0xFFFFFFF8;
            v448 = 4 * v445;
            v449 = vdupq_lane_s16(*v446.i8, 0);
            v450 = vdupq_lane_s16(*v446.i8, 1);
            v451 = vdupq_lane_s16(*v446.i8, 2);
            v452 = vdupq_laneq_s16(v446, 5);
            v453 = vdupq_laneq_s16(v446, 6);
            v454 = vdupq_laneq_s16(v446, 7);
            v455 = vdupq_lane_s16(*v446.i8, 3);
            v456 = vdupq_laneq_s16(v446, 4);
            v457 = 4 * v442 + 8;
            v458 = *&v563[2 * v564] + -3 * v442 - 7;
            v459 = 2 * v442 + 8;
            v589 = 8 * v442 - v448;
            v460 = v50;
            v461 = 7 * v445;
            do
            {
              v462 = 0;
              v463 = (v458 + 4 + v442);
              v464 = *v463;
              v465 = (v463 + v442);
              v466 = *v465;
              v467 = (v465 + v442);
              v468 = *v467;
              v469 = (v467 + v442);
              v470 = *v469;
              v471 = (v469 + v442);
              v472 = *v471;
              v473 = (v471 + v442);
              v474 = vzip1_s32(*(v458 + 4), v470);
              v475 = vzip1_s32(v464, v472);
              v476 = vzip1_s32(v466, *v473);
              v477 = vzip1_s32(v468, *(v473 + v442));
              v478 = vtrn1_s16(v474, v476);
              v479 = vtrn2_s16(v474, v476);
              v480 = vtrn1_s16(v475, v477);
              v481 = vtrn2_s16(v475, v477);
              *v482.i8 = vtrn1_s8(v478, v480);
              v483 = vtrn2_s8(v478, v480);
              *v484.i8 = vtrn1_s8(v479, v481);
              v485 = v460 + v448;
              v486 = vtrn2_s8(v479, v481);
              v487 = v458;
              do
              {
                v488 = *(v487 + 8);
                v487 += 8;
                v489.i64[0] = v488;
                v490.i64[0] = *(v458 + v442 + 8);
                v491.i64[0] = *(v458 + v459);
                v492.i64[0] = *(v458 + v459 + v442);
                v489.i64[1] = *(v458 + v457);
                v490.i64[1] = *(v458 + v457 + v442);
                v491.i64[1] = *(v458 + 6 * v442 + 8);
                v492.i64[1] = *(v458 + 7 * v442 + 8);
                v493 = vtrn1q_s8(v489, v490);
                v494 = vtrn2q_s8(v489, v490);
                v495 = vtrn1q_s8(v491, v492);
                v496 = vtrn2q_s8(v491, v492);
                v497 = vtrn1q_s16(v493, v495);
                v498 = vtrn1q_s16(v494, v496);
                v499 = vtrn2q_s16(v493, v495);
                v500 = vtrn2q_s16(v494, v496);
                v501 = vuzp1q_s32(v497, v498);
                v502 = vmovl_u8(*v482.i8);
                v482 = vuzp2q_s32(v497, v498);
                v503 = vmovl_u8(*v484.i8);
                v504 = vuzp1q_s32(v499, v500);
                v484 = vuzp2q_s32(v499, v500);
                v505 = vmovl_u8(v483);
                v483 = vextq_s8(v482, v482, 8uLL).u64[0];
                v506 = vmovl_u8(v486);
                v507 = vmovl_u8(*v501.i8);
                v486 = vextq_s8(v484, v484, 8uLL).u64[0];
                v508 = vmovl_high_u8(v501);
                v509 = vmovl_u8(*v504.i8);
                v510 = vmlaq_s16(vmlaq_s16(vmulq_s16(v451, v503), v450, v505), v449, v502);
                v511 = vmovl_high_u8(v504);
                *v506.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v510, v452, v508), v453, v509), v454, v511), vmulq_s16(v455, v506)), vmulq_s16(v456, v507)), 7uLL);
                *v511.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v449, v507), v450, v508), v451, v509), v452, vmovl_high_u8(v482)), v453, vmovl_u8(*v484.i8)), v454, vmovl_high_u8(v484)), vmulq_s16(v455, v511)), vmulq_s16(v456, vmovl_u8(*v482.i8))), 7uLL);
                *v508.i8 = vtrn1_s8(*v506.i8, *v511.i8);
                *v511.i8 = vtrn2_s8(*v506.i8, *v511.i8);
                v460->i16[v462 / 2] = v508.i16[0];
                *(v460->i16 + v445 + v462) = v511.i16[0];
                v460->i16[v445 + v462 / 2] = v508.i16[1];
                *(v460->i16 + 3 * v445 + v462) = v511.i16[1];
                *&v485[v462] = v508.i16[2];
                *(v460->i16 + 5 * v445 + v462) = v511.i16[2];
                v460->i16[3 * v445 + v462 / 2] = v508.i16[3];
                v512 = v460 + v461 + v462;
                v462 += 2;
                *v512 = v511.i16[3];
                v458 = v487;
              }

              while (((v567 + 1) & 0xFFFFFFFE) != v462);
              v458 = v487 + v589;
              v461 = 7 * v445;
              v460 = (v460 + v462 + v461);
              v447 -= 8;
              v448 = 4 * v445;
            }

            while (v447);
            v513 = (v559 + 1) & 0xFFFFFFFE;
            v514 = -(v444 * v513);
            v515 = (v567 + 7) & 0xFFFFFFF8;
            v516 = -v513;
            a4 = v554;
            v517 = v50;
            a3 = v553;
            v13 = v552;
            do
            {
              v518 = *v517;
              v519 = *(v517 + v445);
              v520 = (v517 + v445 + v445);
              v521 = *v520;
              v522 = *(v520 + v445);
              v523 = (v517 + 4 * v445);
              v524 = v516;
              do
              {
                v525 = *v523;
                v526 = *(v523 + v445);
                v527 = *(v523 + 2 * v445);
                v528 = *(v523 + 3 * v445);
                v529 = *(v523 + 4 * v445);
                v530 = *(v523 + 5 * v445);
                v531 = *(v523 + 6 * v445);
                v532 = *(v523 + 7 * v445);
                v523 += v445;
                v533 = vmovl_u8(v525);
                v534 = vmovl_u8(v526);
                v535 = vmovl_u8(v527);
                v536 = vmovl_u8(v528);
                *v443 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v451, vmovl_u8(v521)), v450, vmovl_u8(v519)), v449, vmovl_u8(v518)), v452, v534), v453, v535), v454, v536), vmulq_s16(v455, vmovl_u8(v522))), vmulq_s16(v456, v533)), 7uLL);
                *(v443 + v444) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v449, v533), v450, v534), v451, v535), v452, vmovl_u8(v530)), v453, vmovl_u8(v531)), v454, vmovl_u8(v532)), vmulq_s16(v455, v536)), vmulq_s16(v456, vmovl_u8(v529))), 7uLL);
                v443 = (v443 + 2 * v444);
                v522 = v532;
                v521 = v531;
                v519 = v530;
                v518 = v529;
                v524 += 2;
              }

              while (v524);
              v517 = (v523 - ((4 * (v559 + 1)) | 4) * v445 + 8);
              v443 = (v443 + v514 + 8);
              v515 -= 8;
            }

            while (v515);
          }

          else
          {
            v565 = v17[v31 != 0];
            v557 = v19[v31 != 0];
            v564 = v31;
            v50 = malloc_type_malloc(((4 * v46 / 3 + 14) & 0x7FFFFFF8) * (6 * ((v44 + 5) / 6) + 2), 0x100004077774924uLL);
            if (!v50)
            {
              goto LABEL_104;
            }

            if (a3 == 3)
            {
              v57 = *&v563[2 * v564];
              v58 = v562[v39];
              v59 = *&v561[2 * v564];
              v60 = v560[v39];
              v61 = 6 * ((v565 + 5) / 6);
              v62 = ((v48 / 3) & 0xFFFFFFF8) + 8;
              v53.i8[0] = v547[6];
              v54.i8[0] = v547[8];
              v55.i8[0] = v542[6];
              v56.i8[0] = v542[8];
              v51.i8[0] = v541[6];
              v52.i8[0] = v541[8];
              v63 = ((34359738360 * ((v565 + 5) / 6)) >> 32) - 24 * ((v565 + 5) / 6);
              v64 = ((v63 >> 1) + (v63 >> 31) + 8 * v58);
              v65 = v61 + 2;
              v66 = 7 * (v61 + 2);
              v67.i64[0] = 0;
              v68 = vdup_lane_s8(v53, 0);
              v69 = vdup_lane_s8(v54, 0);
              v70 = vdup_lane_s8(v55, 0);
              v71 = vdup_lane_s8(v56, 0);
              v72 = vdup_lane_s8(v51, 0);
              v73 = vdup_lane_s8(v52, 0);
              v74 = 0;
              v75 = v50;
              do
              {
                v76 = 0;
                *v597 = *v57;
                v77.i64[0] = *v597;
                *&v597[8] = *(v57 + v58);
                v78.i64[0] = *&v597[8];
                v79 = (v57 + v58 + v58);
                *&v597[16] = *v79;
                v80.i64[0] = *&v597[16];
                v81 = (v79 + v58);
                *&v597[24] = *v81;
                v82.i64[0] = *&v597[24];
                v83 = (v81 + v58);
                *&v597[32] = *v83;
                v84 = (v83 + v58);
                *&v597[40] = *v84;
                v85 = (v84 + v58);
                *&v597[48] = *v85;
                v77.i64[1] = *&v597[32];
                v86 = (v57 + 1);
                v78.i64[1] = *&v597[40];
                v87 = vtrn1q_s8(v77, v78);
                v80.i64[1] = *&v597[48];
                v88 = vtrn2q_s8(v77, v78);
                v82.i64[1] = *(v85 + v58);
                v89 = vtrn1q_s8(v80, v82);
                v90 = vtrn2q_s8(v80, v82);
                v91 = vtrn1q_s16(v87, v89);
                v92 = vtrn2q_s16(v87, v89);
                v93 = vtrn1q_s16(v88, v90);
                v94 = vtrn2q_s16(v88, v90);
                v95 = vuzp1q_s32(v91, v93);
                *v597 = v95;
                *&v597[16] = vuzp1q_s32(v92, v94);
                *&v597[32] = vuzp2q_s32(v91, v93);
                *&v597[48] = vuzp2q_s32(v92, v94);
                do
                {
                  *&v597[8] = *v86;
                  v96.i64[0] = *&v597[8];
                  *&v597[16] = *(v86 + v58);
                  v97.i64[0] = *&v597[16];
                  v98 = (v86 + v58 + v58);
                  *&v597[24] = *v98;
                  v99.i64[0] = *&v597[24];
                  v100 = (v98 + v58);
                  *&v597[32] = *v100;
                  v101.i64[0] = *&v597[32];
                  v102 = (v100 + v58);
                  *&v597[40] = *v102;
                  v103 = (v102 + v58);
                  *&v597[48] = *v103;
                  v104 = (v103 + v58);
                  *&v597[56] = *v104;
                  v96.i64[1] = *&v597[40];
                  v97.i64[1] = *&v597[48];
                  v105 = vtrn1q_s8(v96, v97);
                  v99.i64[1] = *&v597[56];
                  v101.i64[1] = *(v104 + v58);
                  v106 = vtrn2q_s8(v96, v97);
                  v107 = vtrn1q_s8(v99, v101);
                  v108 = vtrn2q_s8(v99, v101);
                  v109 = vtrn1q_s16(v105, v107);
                  v110 = vtrn2q_s16(v105, v107);
                  v111 = vtrn1q_s16(v106, v108);
                  v112 = vtrn2q_s16(v106, v108);
                  v603 = v59;
                  *&v597[8] = vuzp1q_s32(v109, v111);
                  *&v597[24] = vuzp1q_s32(v110, v112);
                  *&v597[40] = vuzp2q_s32(v109, v111);
                  *&v597[56] = vuzp2q_s32(v110, v112);
                  *v108.i8 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v597[40], v69), *&v597[32], v68), 7uLL);
                  *v112.i8 = vrshrn_n_s16(vmlal_u8(vmull_u8(v36[1], v73), *v36, v72), 7uLL);
                  v113 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v597[8], v69), *v95.i8, v68), 7uLL), vmlal_u8(vmull_u8(v37[1], v71), *v37, v70), 7uLL);
                  v114 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v34[1], v71), *v34, v70), 7uLL), vmlal_u8(vmull_u8(v38[1], v73), *v38, v72), 7uLL);
                  v112.i64[1] = v67.i64[0];
                  v108.i64[1] = v74;
                  v115 = vtrn1q_s8(v113, v114);
                  v116 = vtrn2q_s8(v113, v114);
                  v117 = vtrn1q_s8(v112, v108);
                  v118 = vtrn2q_s8(v112, v108);
                  v119 = vtrn1q_s16(v115, v117);
                  v120 = vtrn2q_s16(v115, v117);
                  v121 = vtrn1q_s16(v116, v118);
                  v122 = vtrn2q_s16(v116, v118);
                  v123 = vuzp1q_s32(v119, v121);
                  v95 = vuzp2q_s32(v119, v121);
                  v124 = vuzp1q_s32(v120, v122);
                  v67 = vuzp2q_s32(v120, v122);
                  ++v86;
                  v74 = vextq_s8(v67, v67, 8uLL).u64[0];
                  *(v75 + v76) = *v123.i8;
                  *(v75 + v65 + v76) = vextq_s8(v123, v123, 8uLL).u64[0];
                  *(v75 + 2 * v61 + v76 + 4) = *v124.i8;
                  *(v75 + 3 * v61 + v76 + 6) = vextq_s8(v124, v124, 8uLL).u64[0];
                  *(&v75[v61 / 2u + 1] + v76) = *v95.i8;
                  *(&v75[1] + 2 * (5 * v61 / 2u) + v76 + 2) = vextq_s8(v95, v95, 8uLL).u64[0];
                  *(&v75[1] + 6 * v61 + v76 + 4) = *v67.i8;
                  *(v75 + v66 + v76) = v74;
                  v95.i64[0] = *&v597[64];
                  *v597 = *&v597[64];
                  v76 += 6;
                }

                while (v61 != v76);
                v57 = (v86 + v64 - 1);
                v75 = (v75 + v76 + v66 + 2);
                v62 -= 8;
              }

              while (v62);
              v125 = (v565 + 7) & 0xFFFFFFF8;
              v126 = 34359738384 * ((v557 + 5) / 6);
              v127 = -(v65 + v65 * (HIDWORD(v126) + (v126 >> 63)));
              v128 = vdup_lane_s8(v53, 0);
              v129 = vdup_lane_s8(v54, 0);
              v130 = vdup_lane_s8(v55, 0);
              v131 = vdup_lane_s8(v56, 0);
              v132 = vdup_lane_s8(v51, 0);
              v133 = vdup_lane_s8(v52, 0);
              v134 = v50;
              a4 = v554;
              v13 = v552;
              do
              {
                v135 = *v134;
                *v597 = *v134;
                v136 = (v134 + v65);
                *&v597[8] = *(v134 + v65);
                v137 = (v134 + v65 + v65);
                *&v597[16] = *v137;
                v138 = (v137 + v65);
                *&v597[24] = *v138;
                v139 = (v138 + v65);
                *&v597[32] = *v139;
                v140 = (v139 + v65);
                *&v597[40] = *v140;
                v141 = (v140 + v65);
                *&v597[48] = *v141;
                *&v597[56] = *(v141 + v65);
                v142 = (v557 + 5) % 6 - v557 - 5;
                do
                {
                  v143 = v136;
                  *&v597[8] = *v136;
                  v144 = (v136 + v65);
                  v145 = *v144;
                  v146 = (v144 + v65);
                  *&v597[16] = v145;
                  *&v597[24] = *v146;
                  v147 = (v146 + v65);
                  v148 = *v147;
                  v149 = (v147 + v65);
                  *&v597[32] = v148;
                  *&v597[40] = *v149;
                  v150 = (v149 + v65);
                  v151 = *v150;
                  v152 = (v150 + v65);
                  *&v597[48] = v151;
                  *&v597[56] = *v152;
                  v153 = (v152 + v65);
                  *&v597[64] = *v153;
                  v154 = vrshrn_n_s16(vmlal_u8(vmull_u8(v34[1], v131), *v34, v130), 7uLL);
                  v155 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v597[40], v129), v148, v128), 7uLL);
                  v156 = vrshrn_n_s16(vmlal_u8(vmull_u8(v36[1], v133), *v36, v132), 7uLL);
                  v157 = vrshrn_n_s16(vmlal_u8(vmull_u8(v37[1], v131), *v37, v130), 7uLL);
                  v158 = vrshrn_n_s16(vmlal_u8(vmull_u8(v38[1], v133), *v38, v132), 7uLL);
                  *v59 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v597[8], v129), v135, v128), 7uLL);
                  *(v59 + v60) = v154;
                  *(v59 + 2 * v60) = v156;
                  *(v59 + 3 * v60) = v155;
                  *(v59 + 4 * v60) = v157;
                  *(v59 + 5 * v60) = v158;
                  v135 = *&v597[64];
                  *v597 = *&v597[64];
                  v59 = (v59 + 6 * v60);
                  v136 = (&v153[v65] - 7 * v65);
                  v142 += 6;
                }

                while (v142);
                v134 = (&v143[v65 + 1] + v127);
                v59 = (v59 - v60 * 6 * ((v557 + 5) / 6) + 8);
                v125 -= 8;
              }

              while (v125);
            }

            else
            {
              v299 = v562[v39];
              v300 = *&v561[2 * v564];
              v301 = v560[v39];
              v302 = 6 * ((v565 + 5) / 6);
              v303 = *(*v546 + 16 * v545);
              v304 = *(*v546 + 16 * v544);
              v305 = *(*v546 + 16 * v543);
              v306 = *&v563[2 * v564] + -3 * v299 - 4;
              v307 = ((34359738360 * ((v565 + 5) / 6)) >> 32) - 24 * ((v565 + 5) / 6);
              v570 = ((v307 >> 1) + (v307 >> 31) + 8 * v299);
              v594 = vdupq_lane_s16(*v303.i8, 1);
              v596 = vdupq_lane_s16(*v303.i8, 0);
              v591 = vdupq_laneq_s16(v303, 5);
              v592 = vdupq_lane_s16(*v303.i8, 2);
              v588 = vdupq_laneq_s16(v303, 7);
              v590 = vdupq_laneq_s16(v303, 6);
              v586 = vdupq_laneq_s16(v303, 4);
              v587 = vdupq_lane_s16(*v303.i8, 3);
              v584 = vdupq_lane_s16(*v304.i8, 1);
              v585 = vdupq_lane_s16(*v304.i8, 0);
              v582 = vdupq_laneq_s16(v304, 5);
              v583 = vdupq_lane_s16(*v304.i8, 2);
              v580 = vdupq_laneq_s16(v304, 7);
              v581 = vdupq_laneq_s16(v304, 6);
              v578 = vdupq_laneq_s16(v304, 4);
              v579 = vdupq_lane_s16(*v304.i8, 3);
              v576 = vdupq_lane_s16(*v305.i8, 1);
              v577 = vdupq_lane_s16(*v305.i8, 0);
              v574 = vdupq_laneq_s16(v305, 5);
              v575 = vdupq_lane_s16(*v305.i8, 2);
              v308 = v302 + 2;
              v572 = vdupq_laneq_s16(v305, 7);
              v573 = vdupq_laneq_s16(v305, 6);
              v309 = (v48 / 3 + 14) & 0xFFFFFFF8;
              v568 = vdupq_laneq_s16(v305, 4);
              v569 = vdupq_lane_s16(*v305.i8, 3);
              v310 = 7 * (v302 + 2);
              v311 = 4 * v299 + 8;
              v312 = 2 * v299 + 8;
              v313 = 0;
              v314.i64[0] = 0;
              v556 = v50;
              do
              {
                v315 = 0;
                *v597 = *(v306 + 1);
                v316.i64[0] = *v597;
                v317 = (v306 + 1 + v299);
                *&v597[8] = *v317;
                v318.i64[0] = *&v597[8];
                v319 = (v317 + v299);
                *&v597[16] = *v319;
                v320.i64[0] = *&v597[16];
                v321 = (v319 + v299);
                *&v597[24] = *v321;
                v322.i64[0] = *&v597[24];
                v323 = (v321 + v299);
                *&v597[32] = *v323;
                v324 = (v323 + v299);
                *&v597[40] = *v324;
                v325 = (v324 + v299);
                *&v597[48] = *v325;
                v316.i64[1] = *&v597[32];
                v318.i64[1] = *&v597[40];
                v326 = vtrn1q_s8(v316, v318);
                v327 = vtrn2q_s8(v316, v318);
                v320.i64[1] = *&v597[48];
                v322.i64[1] = *(v325 + v299);
                v328 = vtrn1q_s8(v320, v322);
                v329 = vtrn2q_s8(v320, v322);
                v330 = vtrn1q_s16(v326, v328);
                v331 = vtrn2q_s16(v326, v328);
                v332 = vtrn1q_s16(v327, v329);
                v333 = vtrn2q_s16(v327, v329);
                v334 = vuzp1q_s32(v330, v332);
                v335 = vuzp2q_s32(v330, v332);
                v336 = vuzp1q_s32(v331, v333);
                v337 = vuzp2q_s32(v331, v333);
                v338 = v334.u64[1];
                v339 = v336.u64[1];
                v340 = v335.u64[1];
                *v597 = v334;
                *&v597[16] = v336;
                v341 = v310;
                v342 = v50 + v310;
                *&v597[32] = v335;
                *&v597[48] = v337;
                v343 = v306;
                do
                {
                  v344 = *(v343 + 8);
                  v343 += 8;
                  v345.i64[0] = v344;
                  *&v597[56] = v344;
                  *&v597[64] = *(v306 + v299 + 8);
                  v346.i64[0] = *&v597[64];
                  v598 = *(v306 + v312);
                  *v347.i8 = v598;
                  v599.i64[0] = *(v306 + v312 + v299);
                  v348.i64[0] = v599.i64[0];
                  v599.i64[1] = *(v306 + v311);
                  v345.i64[1] = v599.i64[1];
                  v600.i64[0] = *(v306 + v311 + v299);
                  v346.i64[1] = v600.i64[0];
                  v349 = vtrn1q_s8(v345, v346);
                  v350 = vtrn2q_s8(v345, v346);
                  v600.i64[1] = *(v306 + 6 * v299 + 8);
                  v347.i64[1] = v600.i64[1];
                  v348.i64[1] = *(v306 + 7 * v299 + 8);
                  v351 = vtrn1q_s8(v347, v348);
                  v352 = vtrn2q_s8(v347, v348);
                  v353 = vtrn1q_s16(v349, v351);
                  v354 = vtrn2q_s16(v349, v351);
                  v355 = vtrn1q_s16(v350, v352);
                  v356 = vtrn2q_s16(v350, v352);
                  v357 = vuzp1q_s32(v354, v356);
                  v358 = vuzp2q_s32(v354, v356);
                  v359 = vuzp2q_s32(v353, v355);
                  *&v597[56] = vuzp1q_s32(v353, v355);
                  v598 = *v357.i8;
                  v599 = vextq_s8(v357, v359, 8uLL);
                  v600 = vextq_s8(v359, v358, 8uLL);
                  v601 = vextq_s8(v358, v358, 8uLL).u64[0];
                  v360 = vmovl_u8(v339);
                  v361 = vmovl_u8(*v335.i8);
                  v362 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v590, vmovl_u8(*v337.i8)), v591, vmovl_u8(v340)), v592, vmovl_u8(*v336.i8)), v594, vmovl_u8(v338)), v596, vmovl_u8(*v334.i8)), v588, vmovl_u8(*&v597[56])), vmulq_s16(v587, v360));
                  v336 = vmovl_u8(v34[4]);
                  v363 = vmovl_u8(v34[5]);
                  v364 = vmovl_u8(v34[6]);
                  v335 = vmovl_u8(v34[7]);
                  v334 = vqaddq_s16(v362, vmulq_s16(v586, v361));
                  v365 = vmovl_u8(v36[5]);
                  v366 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v596, v361), v594, vmovl_u8(*&v597[40])), v592, vmovl_u8(*&v597[48])), v591, vmovl_u8(*v357.i8)), v590, vmovl_u8(*v599.i8)), v588, vmovl_u8(v599.u64[1])), vmulq_s16(v587, vmovl_u8(*&v597[56]))), vmulq_s16(v586, vmovl_u8(*&v597[64])));
                  v367 = vmlaq_s16(vmulq_s16(v585, v336), v584, v363);
                  v368 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v585, vmovl_u8(*v34)), v584, vmovl_u8(v34[1])), v583, vmovl_u8(v34[2])), v582, v363), v581, v364), v580, v335), vmulq_s16(v579, vmovl_u8(v34[3])));
                  v369 = vmovl_u8(v36[6]);
                  v337 = vmovl_u8(v36[7]);
                  v370 = vmlaq_s16(vmlaq_s16(v367, v583, v364), v582, vmovl_u8(v37[5]));
                  v371 = vmovl_u8(v36[4]);
                  v372 = vmlaq_s16(vmulq_s16(v577, v371), v576, v365);
                  v373 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v577, vmovl_u8(*v36)), v576, vmovl_u8(v36[1])), v575, vmovl_u8(v36[2])), v574, v365), v573, v369), v572, v337), vmulq_s16(v569, vmovl_u8(v36[3]))), vmulq_s16(v568, v371));
                  v374 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(v370, v581, vmovl_u8(v37[6])), v580, vmovl_u8(v37[7])), vmulq_s16(v579, v335)), vmulq_s16(v578, vmovl_u8(v37[4])));
                  v375 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v372, v575, v369), v574, vmovl_u8(v38[5])), v573, vmovl_u8(v38[6])), v572, vmovl_u8(v38[7])), vmulq_s16(v569, v337));
                  *v373.i8 = vqrshrun_n_s16(v373, 7uLL);
                  *v366.i8 = vqrshrun_n_s16(v366, 7uLL);
                  v376 = vqrshrun_high_n_s16(vqrshrun_n_s16(v334, 7uLL), v374, 7uLL);
                  v377 = vqrshrun_high_n_s16(vqrshrun_n_s16(vqaddq_s16(v368, vmulq_s16(v578, v336)), 7uLL), vqaddq_s16(v375, vmulq_s16(v568, vmovl_u8(v38[4]))), 7uLL);
                  v378 = vtrn1q_s8(v376, v377);
                  v373.i64[1] = v314.i64[0];
                  v366.i64[1] = v313;
                  v379 = vtrn2q_s8(v376, v377);
                  v380 = vtrn1q_s8(v373, v366);
                  v381 = vtrn2q_s8(v373, v366);
                  v382 = vtrn1q_s16(v378, v380);
                  v383 = vtrn2q_s16(v378, v380);
                  v384 = vtrn1q_s16(v379, v381);
                  v385 = vuzp1q_s32(v382, v384);
                  *(v50 + v315) = *v385.i8;
                  v386 = vtrn2q_s16(v379, v381);
                  *(v50 + v308 + v315) = vextq_s8(v385, v385, 8uLL).u64[0];
                  v387 = vuzp2q_s32(v382, v384);
                  v388 = vuzp1q_s32(v383, v386);
                  *(v50 + 2 * v302 + v315 + 4) = *v388.i8;
                  *(v50 + 3 * v302 + v315 + 6) = vextq_s8(v388, v388, 8uLL).u64[0];
                  *(&v50[v302 / 2u + 1] + v315) = *v387.i8;
                  *(&v50[1] + 2 * (5 * v302 / 2u) + v315 + 2) = vextq_s8(v387, v387, 8uLL).u64[0];
                  v314 = vuzp2q_s32(v383, v386);
                  *(&v50[1] + 6 * v302 + v315 + 4) = *v314.i8;
                  v313 = vextq_s8(v314, v314, 8uLL).u64[0];
                  *&v342[v315] = v313;
                  v334.i64[0] = *&v597[64];
                  v338 = v598;
                  v336.i64[0] = v599.i64[0];
                  *v597 = *&v597[64];
                  *&v597[8] = v598;
                  v339 = v599.u64[1];
                  *&v597[16] = v599;
                  v340 = v600.u64[1];
                  v335.i64[0] = v600.i64[0];
                  *&v597[32] = v600;
                  v337.i64[0] = v601;
                  *&v597[48] = v601;
                  v315 += 6;
                  v306 = v343;
                }

                while (v302 != v315);
                v306 = v343 + v570;
                v310 = v341;
                v50 = (v50 + v315 + v341 + 2);
                v309 -= 8;
              }

              while (v309);
              v389 = (v565 + 7) & 0xFFFFFFF8;
              v390 = 34359738384 * ((v557 + 5) / 6);
              v391 = -((HIDWORD(v390) + (v390 >> 63) + 7) * v308);
              a4 = v554;
              v50 = v556;
              v392 = v556;
              v13 = v552;
              do
              {
                v393 = *v392;
                *v597 = *v392;
                v394 = *(v392 + v308);
                *&v597[8] = v394;
                v395 = (v392 + v308 + v308);
                v396 = *v395;
                *&v597[16] = *v395;
                v397 = (v395 + v308);
                v398 = *v397;
                *&v597[24] = *v397;
                v399 = (v397 + v308);
                v400 = *v399;
                *&v597[32] = *v399;
                v401 = (v399 + v308);
                v402 = *v401;
                *&v597[40] = *v401;
                v403 = (v401 + v308);
                v404 = *v403;
                *&v597[48] = *v403;
                *&v597[56] = *(v403 + v308);
                v405 = (v392 + v310);
                v406 = (v557 + 5) % 6 - v557 - 5;
                do
                {
                  v407 = v405;
                  *&v597[56] = *v405;
                  v408 = (v405 + v308);
                  *&v597[64] = *v408;
                  v409 = (v408 + v308);
                  v598 = *v409;
                  v410 = (v409 + v308);
                  v599.i64[0] = *v410;
                  v411 = (v410 + v308);
                  v599.i64[1] = *v411;
                  v412 = (v411 + v308);
                  v600.i64[0] = *v412;
                  v413 = (v412 + v308);
                  v600.i64[1] = *v413;
                  v414 = (v413 + v308);
                  v601 = *v414;
                  v415 = vmovl_u8(v394);
                  v416 = vmovl_u8(v398);
                  v417 = vmovl_u8(v400);
                  v418 = vmovl_u8(*&v597[56]);
                  v571 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v590, vmovl_u8(v404)), v591, vmovl_u8(v402)), v592, vmovl_u8(v396)), v594, v415), v596, vmovl_u8(v393)), v588, v418), vmulq_s16(v587, v416)), vmulq_s16(v586, v417));
                  v419 = vmovl_u8(v34[5]);
                  v420 = vmovl_u8(v34[6]);
                  v421 = vmovl_u8(v34[7]);
                  v422 = vmovl_u8(v36[5]);
                  v423 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v596, v417), v591, vmovl_u8(v598)), v590, vmovl_u8(*v599.i8)), v588, vmovl_u8(v599.u64[1])), v594, vmovl_u8(*&v597[40])), v592, vmovl_u8(*&v597[48]));
                  v424 = vmovl_u8(v36[6]);
                  v425 = vmovl_u8(v36[7]);
                  v426 = vmovl_u8(v34[4]);
                  v427 = vqaddq_s16(vqaddq_s16(v423, vmulq_s16(v587, v418)), vmulq_s16(v586, vmovl_u8(*&v597[64])));
                  v428 = vmovl_u8(v36[4]);
                  v429 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v577, vmovl_u8(*v36)), v576, vmovl_u8(v36[1])), v575, vmovl_u8(v36[2])), v574, v422), v573, v424), v572, v425), vmulq_s16(v569, vmovl_u8(v36[3]))), vmulq_s16(v568, v428));
                  v430 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v585, v426), v584, v419), v583, v420), v582, vmovl_u8(v37[5])), v581, vmovl_u8(v37[6])), v580, vmovl_u8(v37[7])), vmulq_s16(v579, v421)), vmulq_s16(v578, vmovl_u8(v37[4])));
                  v431 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v577, v428), v576, v422), v575, v424), v574, vmovl_u8(v38[5])), v573, vmovl_u8(v38[6])), v572, vmovl_u8(v38[7])), vmulq_s16(v569, v425));
                  v432 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v585, vmovl_u8(*v34)), v584, vmovl_u8(v34[1])), v583, vmovl_u8(v34[2])), v582, v419), v581, v420), v580, v421), vmulq_s16(v579, vmovl_u8(v34[3]))), vmulq_s16(v578, v426)), 7uLL);
                  v433 = vmulq_s16(v568, vmovl_u8(v38[4]));
                  *v300 = vqrshrun_n_s16(v571, 7uLL);
                  *(v300 + v301) = v432;
                  *(v300 + 2 * v301) = vqrshrun_n_s16(v429, 7uLL);
                  *(v300 + 3 * v301) = vqrshrun_n_s16(v427, 7uLL);
                  *(v300 + 4 * v301) = vqrshrun_n_s16(v430, 7uLL);
                  *(v300 + 5 * v301) = vqrshrun_n_s16(vqaddq_s16(v431, v433), 7uLL);
                  v393 = *&v597[64];
                  v394 = v598;
                  v396 = *v599.i8;
                  *v597 = *&v597[64];
                  *&v597[8] = v598;
                  v398 = v599.u64[1];
                  *&v597[16] = v599;
                  v402 = v600.u64[1];
                  v400 = *v600.i8;
                  *&v597[32] = v600;
                  v404 = v601;
                  *&v597[48] = v601;
                  v300 = (v300 + 6 * v301);
                  v405 = (&v414[v308] - 7 * v308);
                  v406 += 6;
                }

                while (v406);
                v392 = (&v407[v308 + 1] + v391);
                v300 = (v300 - v301 * 6 * ((v557 + 5) / 6) + 8);
                v389 -= 8;
              }

              while (v389);
            }

            a3 = v553;
          }
        }

        free(v50);
        v17 = v550;
        v15 = v551;
        v32 = v548;
        v19 = v549;
        v31 = v564;
LABEL_96:
        if (++v31 == v32)
        {

          return sub_277A48A28(v539, v540);
        }
      }
    }
  }

  else if (v24)
  {
    v25 = a1[5];
    v26 = a1[7];
    v27 = a2[5];
    v28 = a2[7];
    if (v25 == 2 * v27 && 2 * v28 == v26)
    {
      goto LABEL_20;
    }

    v29 = 4 * v27;
    v30 = 4 * v28;
    if (v29 == v25 && v30 == v26)
    {
      goto LABEL_20;
    }

    if (v29 == 3 * v25 && v30 == 3 * v26)
    {
      goto LABEL_20;
    }
  }

LABEL_101:

  return sub_2779F3C40(a1, a2, a3, a4, a5, a8, a9, a10);
}

uint64_t sub_27798AA18(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = 8 * v1 * v1;
  if (v2 <= 0x1FFFFFFE9 && (v4 = *(a1 + 52), v5 = *a1, (v6 = malloc_type_malloc(v2 + 23, 0x5F484EBFuLL)) != 0) && (v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0, *(v7 - 8) = v6, v7))
  {
    memcpy(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), v5, 8 * v1 * v1);
    if (v1 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = (v4 + v4) / v1;
      v11 = 1;
      v12 = v7;
      do
      {
        if (v11 >= v1 - 1)
        {
          v13 = v1 - 1;
        }

        else
        {
          v13 = v11;
        }

        v14 = v13 + v8;
        if (v9 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v9;
        }

        ++v9;
        *(v7 + 8 * (v15 + v8 - 1)) = *(v7 + 8 * (v15 + v8 - 1)) - v10;
        *(v12 + 8 * v8) = *(v12 + 8 * v8) + v10 * 2.0;
        *(v7 + 8 * v14) = *(v7 + 8 * v14) - v10;
        v12 += 8;
        v8 += v1;
        ++v11;
      }

      while (v1 != v9);
      v16 = 0;
      v17 = v1 + 1;
      v18 = *(a1 + 56) / *(a1 + 52) * 0.000122070312;
      v19 = *(a1 + 8);
      do
      {
        *(v7 + 8 * v16) = *(v7 + 8 * v16) + 0.000122070312;
        *v19 = v18 + *v19;
        ++v19;
        v16 += v17;
        --v1;
      }

      while (v1);
    }

    *a1 = v7;
    v20 = sub_27798ABBC(a1);
    *a1 = v5;
    free(*(v7 - 8));
    return v20;
  }

  else
  {
    fwrite("Unable to allocate copy of A\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

uint64_t sub_27798ABBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = 8 * v2;
  if ((8 * v2) <= 0x1FFFFFFE9 && (v4 = malloc_type_malloc(v3 + 23, 0x5F484EBFuLL)) != 0)
  {
    v5 = ((v4 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v5 - 1) = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 * v2) > 0x1FFFFFFE9 || (v6 = malloc_type_malloc(v3 * v2 + 23, 0x5F484EBFuLL)) == 0)
  {
    v7 = 0;
LABEL_35:
    fprintf(*MEMORY[0x277D85DF8], "Unable to allocate temp values of size %dx%d\n", v2, v2);
    goto LABEL_36;
  }

  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v7 - 8) = v6;
  if (v7)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_35;
  }

  memcpy(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), *a1, v3 * v2);
  memcpy(v5, *(a1 + 8), 8 * v2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 16);
  v11 = (v2 - 1);
  if (v2 > 1)
  {
    v12 = 0;
    v13 = 8 * v9;
    v14 = v7 + 8 * v9;
    v15 = v7;
LABEL_13:
    v16 = (v7 + 8 * (v2 - 1) * v9);
    v17 = (v7 + 8 * (v2 - 2) * v9);
    v18 = v2 - 1;
    v19 = v7 + 8 * v12;
    do
    {
      v20 = v18 - 1;
      if (fabs(*(v19 + 8 * (v18 - 1) * v9)) < fabs(*(v19 + 8 * v18 * v9)))
      {
        v21 = v16;
        v22 = v17;
        v23 = v2;
        do
        {
          v24 = *v21;
          *v21++ = *v22;
          *v22++ = v24;
          --v23;
        }

        while (v23);
        *&v5[v20] = vextq_s8(*&v5[v20], *&v5[v20], 8uLL);
      }

      v17 -= v9;
      v16 -= v9;
      v18 = v20;
    }

    while (v20 > v12);
    v25 = v14;
    v26 = v12;
    while (1)
    {
      v27 = *(v19 + 8 * v9 * v12);
      if (fabs(v27) < 1.0e-16)
      {
        break;
      }

      v28 = -*(v19 + 8 * ++v26 * v9) / v27;
      v29 = v15;
      v30 = v25;
      v31 = v2;
      do
      {
        v32 = *v29++;
        *v30 = *v30 + v28 * v32;
        ++v30;
        --v31;
      }

      while (v31);
      *&v5[v26] = *&v5[v26] + v28 * *&v5[v12];
      v25 = (v25 + v13);
      if (v26 == v11)
      {
        ++v12;
        v14 += v13;
        v15 = (v15 + v13);
        if (v12 != v11)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }
    }

LABEL_36:
    v45 = 0;
    if (!v5)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_25:
  if (v2 < 1)
  {
LABEL_33:
    v45 = 1;
  }

  else
  {
    v33 = v11 - v2 + 1;
    v34 = (v10 + 8 * v2);
    v35 = (v7 + 8 * (v2 - 1) * v9 + 8 * v2);
    while (1)
    {
      v36 = *(v7 + 8 * (v2 - 1) + 8 * v9 * (v2 - 1));
      if (fabs(v36) < 1.0e-16)
      {
        break;
      }

      v37 = 0.0;
      if (v2 <= v11)
      {
        v38 = v35;
        v39 = v34;
        v40 = v33;
        do
        {
          v41 = *v38++;
          v42 = v41;
          v43 = *v39++;
          v37 = v37 + v42 * v43;
          --v40;
        }

        while (v40);
      }

      *(v10 + 8 * (v2 - 1)) = (*&v5[v2 - 1] - v37) / v36;
      ++v33;
      --v34;
      v35 += ~v9;
      if (v2-- <= 1)
      {
        goto LABEL_33;
      }
    }

    v45 = 0;
  }

LABEL_37:
  free(*(v5 - 1));
LABEL_38:
  if (v7)
  {
    free(*(v7 - 8));
  }

  return v45;
}

double sub_27798AECC(uint64_t a1, int a2)
{
  v4 = 8 * a2;
  v5 = v4 * a2;
  if (v5 <= 0x1FFFFFFE9)
  {
    v6 = malloc_type_malloc(v5 + 23, 0x5F484EBFuLL);
    if (v6)
    {
      v7 = v6;
      v6 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v6 - 1) = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  if (v4 <= 0x1FFFFFFE9)
  {
    v10 = malloc_type_malloc(v4 + 23, 0x5F484EBFuLL);
    if (v10)
    {
      v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v11 - 8) = v10;
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 8) = v11;
    v9 = (a1 + 8);
    v12 = malloc_type_malloc(v4 + 23, 0x5F484EBFuLL);
    if (v12)
    {
      v8 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v8 - 8) = v12;
    }

    else
    {
      v8 = 0;
    }

    v6 = *a1;
  }

  else
  {
    v8 = 0;
    *(a1 + 8) = 0;
    v9 = (a1 + 8);
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = a2;
  if (v6 && *v9 && v8)
  {
    bzero(v6, v5);
    bzero(*(a1 + 16), v4);
    bzero(*(a1 + 8), v4);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed to allocate system of equations of size %d\n", a2);
    if (*a1)
    {
      free(*(*a1 - 8));
    }

    if (*v9)
    {
      free(*(*v9 - 8));
    }

    v14 = *(a1 + 16);
    if (v14)
    {
      free(*(v14 - 8));
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_27798B064(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      free(*(*a1 - 8));
    }

    v2 = a1[1];
    if (v2)
    {
      free(*(v2 - 8));
    }

    v3 = a1[2];
    if (v3)
    {
      free(*(v3 - 8));
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t sub_27798B0C4(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a3)
  {
    goto LABEL_23;
  }

  v4 = *(a1 + 48);
  if (v4 < 1)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 40);
  *(a3 + 2) = 0;
  if (v4 > 0x1FFFFFFE || (v8 = malloc_type_malloc(16 * v4 + 23, 0x5F484EBFuLL)) == 0)
  {
    *a3 = 0;
    goto LABEL_23;
  }

  v9 = v8;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v10 - 1) = v9;
  *a3 = v10;
  if (!v10)
  {
LABEL_23:
    fwrite("Failed to init lut\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  *(a3 + 2) = v4;
  bzero(v10, 16 * v4);
  v11 = *(a1 + 48);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 16);
    v14 = (*a3 + 8);
    do
    {
      *(v14 - 1) = *(a1 + 32) + v12 / (v11 - 1) * (*(a1 + 40) - *(a1 + 32));
      *v14 = *(v13 + 8 * v12);
      v14 += 2;
      ++v12;
    }

    while (v11 != v12);
  }

  v15 = 8 * v11;
  if (v15 <= 0x1FFFFFFE9 && (v16 = malloc_type_malloc(v15 + 23, 0x5F484EBFuLL)) != 0 && (v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0, *(v17 - 8) = v16, v17))
  {
    bzero(((v16 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * *(a1 + 48));
    sub_27798B33C(a1, a3, v17, 0, *(a1 + 48));
    v18 = *(a3 + 2);
    if (v18 >= 3)
    {
      v19 = v6 * 0.00625 / 255.0;
      do
      {
        v20 = 1;
        v21 = 1;
        do
        {
          if (*(v17 + 8 * v20) < *(v17 + 8 * v21))
          {
            v21 = v20;
          }

          ++v20;
        }

        while (v18 - 1 != v20);
        v22 = v21 + 1;
        v23 = v21 - 1;
        v24 = *a3;
        if (v18 <= a2 && *(v17 + 8 * v21) / (*(v24 + 16 * v22) - *(v24 + 16 * v23)) > v19)
        {
          break;
        }

        memmove((v24 + 16 * v21), (v24 + 16 * v21 + 16), 16 * (v18 + ~v21));
        --*(a3 + 2);
        sub_27798B33C(a1, a3, v17, v23, v22);
        v18 = *(a3 + 2);
      }

      while (v18 > 2);
    }

    free(*(v17 - 8));
    return 1;
  }

  else
  {
    if (*a3)
    {
      free(*(*a3 - 8));
    }

    result = 0;
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_27798B33C(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a4;
  }

  LODWORD(v6) = *(a2 + 2) - 1;
  if (v6 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = v6;
  }

  if (v5 < v6)
  {
    v7 = *(result + 48);
    v8 = *a2;
    v9 = (v7 - 1);
    do
    {
      v10 = v8 + 16 * v5;
      v11 = *(v10 - 16);
      v12 = *(result + 32);
      v13 = *(result + 40);
      if (v13 >= v11)
      {
        v14 = *(v10 - 16);
      }

      else
      {
        v14 = *(result + 40);
      }

      if (v12 <= v11)
      {
        v15 = v14;
      }

      else
      {
        v15 = *(result + 32);
      }

      v16 = v13 - v12;
      v17 = vcvtmd_s64_f64((v15 - v12) * v9 / (v13 - v12));
      v18 = v17 & ~(v17 >> 31);
      v19 = v5 + 1;
      v20 = (v8 + 16 * (v5 + 1));
      v21 = *v20;
      if (v13 >= *v20)
      {
        v13 = *v20;
      }

      if (v12 > v21)
      {
        v13 = *(result + 32);
      }

      v22 = vcvtpd_s64_f64((v13 - v12) * v9 / v16);
      if (v7 <= v22)
      {
        v22 = v7 - 1;
      }

      v23 = 0.0;
      if (v18 <= v22)
      {
        v24 = (v22 + 1);
        do
        {
          v25 = v12 + v18 / v9 * v16;
          if (v25 >= v11 && v25 < v21)
          {
            v23 = v23 + vabdd_f64(*(*(result + 16) + 8 * v18), (v25 - v11) / (v21 - v11) * v20[1] + *(v10 - 8) * (1.0 - (v25 - v11) / (v21 - v11)));
          }

          ++v18;
        }

        while (v24 != v18);
      }

      *(a3 + 8 * v5++) = 255.0 / v7 * v23;
    }

    while (v19 != v6);
  }

  return result;
}

uint64_t sub_27798B464(uint64_t a1, unsigned int a2, char a3, int a4)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_27798AECC(&v27, 3);
  if (!v8)
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed to init equation system for block_size=%d\n", a2);
    return 0;
  }

  v9 = malloc_type_malloc(0x5FuLL, 0x5F484EBFuLL);
  if (v9)
  {
    v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v10 - 8) = v9;
  }

  else
  {
    v10 = 0;
  }

  if (3 * a2 * a2 > 0x3FFFFFFD || (v11 = malloc_type_malloc(24 * a2 * a2 + 23, 0x5F484EBFuLL)) == 0)
  {
    v12 = 0;
LABEL_23:
    fprintf(*MEMORY[0x277D85DF8], "Failed to alloc A or AtA_inv for block_size=%d\n", a2);
    if (v10)
    {
      free(*(v10 - 8));
    }

    if (v12)
    {
      free(*(v12 - 8));
    }

    sub_27798B064(&v27);
    return 0;
  }

  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 - 8) = v11;
  if (!v10 || !v12)
  {
    goto LABEL_23;
  }

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 20) = a2;
  *(a1 + 24) = ~(-1 << a3);
  *(a1 + 32) = a4;
  if (a2 >= 1)
  {
    v13 = 0;
    v14 = vcvtd_n_f64_u32(a2, 1uLL);
    v15 = v27;
    do
    {
      v16 = 0;
      do
      {
        v17 = 0;
        v29[0] = (v13 - v14) / v14;
        v29[1] = (v16 - v14) / v14;
        v29[2] = 1.0;
        v18 = v12 + 24 * (v16 + v13 * a2);
        *v18 = v29[0];
        *(v18 + 8) = (v16 - v14) / v14;
        *(v18 + 16) = 0x3FF0000000000000;
        v19 = v15;
        do
        {
          v20 = 0;
          v21 = v29[v17];
          do
          {
            *(v19 + v20 * 8) = *(v19 + v20 * 8) + v21 * v29[v20];
            ++v20;
          }

          while (v20 != 3);
          ++v17;
          v19 += 24;
        }

        while (v17 != 3);
        ++v16;
      }

      while (v16 != a2);
      ++v13;
    }

    while (v13 != a2);
  }

  for (i = 0; i != 24; i += 8)
  {
    v23 = *(&v27 + 1);
    **(&v27 + 1) = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + i) = 0x3FF0000000000000;
    sub_27798ABBC(&v27);
    v24 = (v10 + i);
    v25 = v28;
    *v24 = *v28;
    v24[3] = *(v25 + 8);
    v24[6] = *(v25 + 16);
  }

  sub_27798B064(&v27);
  return 1;
}

double sub_27798B6EC(double *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, double *a8, double a9, double *a10)
{
  v10 = a10;
  v61 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 5);
  v12 = (v11 * v11);
  v14 = *a1;
  v13 = *(a1 + 1);
  if (*(a1 + 8))
  {
    if (v11 >= 1)
    {
      v15 = 0;
      v16 = a6;
      v17 = a4 - 1;
      v18 = a7;
      v19 = a10;
      do
      {
        if (v15 + v18 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v15 + v18;
        }

        if (v15 + v18 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 * a5;
        v23 = v16;
        v24 = v19;
        v25 = v11;
        do
        {
          if (v23 >= a3 - 1)
          {
            v26 = a3 - 1;
          }

          else
          {
            v26 = v23;
          }

          if (v23 < 0)
          {
            v26 = 0;
          }

          LOWORD(a9) = *(a2 + 2 * (v26 + v22));
          a9 = *&a9 / a1[3];
          *v24++ = a9;
          ++v23;
          --v25;
        }

        while (v25);
        ++v15;
        v19 += v11;
      }

      while (v15 != v11);
    }
  }

  else if (v11 >= 1)
  {
    v27 = 0;
    v28 = a4 - 1;
    v29 = a6;
    v30 = a7;
    v31 = a10;
    do
    {
      if (v27 + v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v27 + v30;
      }

      if (v27 + v30 >= 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33 * a5;
      v35 = v29;
      v36 = v31;
      v37 = v11;
      do
      {
        if (v35 >= a3 - 1)
        {
          v38 = a3 - 1;
        }

        else
        {
          v38 = v35;
        }

        if (v35 < 0)
        {
          v38 = 0;
        }

        LOBYTE(a9) = *(a2 + v38 + v34);
        a9 = *&a9 / a1[3];
        *v36++ = a9;
        ++v35;
        --v37;
      }

      while (v37);
      ++v27;
      v31 += v11;
    }

    while (v27 != v11);
  }

  v39 = 0;
  v40 = v59;
  v41 = v13;
  do
  {
    v42 = 0.0;
    if (v11)
    {
      v43 = a10;
      v44 = v41;
      v45 = (v11 * v11);
      do
      {
        v46 = *v43++;
        v47 = v46;
        v48 = *v44;
        v44 += 3;
        v42 = v42 + v47 * v48;
        --v45;
      }

      while (v45);
    }

    *v40++ = v42;
    ++v39;
    ++v41;
  }

  while (v39 != 3);
  v49 = 0;
  v50 = v60;
  do
  {
    v51 = 0;
    result = 0.0;
    do
    {
      result = result + *(v14 + v51) * *&v59[v51];
      v51 += 8;
    }

    while (v51 != 24);
    *v50++ = result;
    ++v49;
    v14 += 24;
  }

  while (v49 != 3);
  if (v11)
  {
    v53 = 0;
    v54 = 0;
    v55 = a8;
    do
    {
      v56 = 0;
      v57 = 0.0;
      do
      {
        v57 = v57 + v13[v53 + v56] * *&v60[v56 * 8];
        ++v56;
      }

      while (v56 != 3);
      *v55++ = v57;
      ++v54;
      v53 += 3;
    }

    while (v54 != v12);
    do
    {
      v58 = *a8++;
      result = *v10 - v58;
      *v10++ = result;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_27798B964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 > 0.0;
  }
}

void sub_27798B980(uint64_t a1, int a2, char a3)
{
  sub_27798AECC(a1, a2);
  if (v6)
  {
    *(a1 + 32) = 0u;
    v7 = a1 + 32;
    *(v7 + 72) = 0x3FF0000000000000;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 64) = 0;
    *(v7 + 40) = ~(-1 << a3);
    *(v7 + 48) = 20;

    sub_27798AECC(v7, 20);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed initialization noise state with size %d\n", a2);
  }
}

void sub_27798BA44(void *a1)
{
  if (a1)
  {
    v2 = a1[86];
    if (v2)
    {
      free(*(v2 - 8));
    }

    for (i = 6; i != 48; i += 14)
    {
      sub_27798B064(&a1[i + 38]);
      sub_27798B064(&a1[i - 4]);
      sub_27798B064(&a1[i + 42]);
      sub_27798B064(&a1[i]);
    }

    bzero(a1, 0x2C0uLL);
  }
}

uint64_t sub_27798BAD0(int *a1, int a2)
{
  result = sub_27798ABBC(a1);
  *(a1 + 13) = 0x3FF0000000000000;
  if (result)
  {
    v5 = a1[6];
    v6 = (v5 - a2);
    if (v5 <= a2)
    {
      v17 = 0.0;
      v21 = 0.0 / v6;
    }

    else
    {
      v7 = 0;
      v8 = *a1;
      v9 = a1[24];
      v10 = 0.0;
      v11 = (v5 - a2);
      do
      {
        v10 = v10 + *(v8 + 8 * v7) / v9;
        v7 += v5 + 1;
        --v11;
      }

      while (v11);
      v12 = v6;
      v13 = v5 - 1;
      v14 = *(a1 + 1);
      v15 = (v8 + 8 * (v5 - 1));
      v16 = 8 * v5;
      v17 = 0.0;
      v18 = *(a1 + 2);
      do
      {
        v19 = *v14;
        if (a2)
        {
          v19 = v19 - *v15 * *(*(a1 + 2) + 8 * v13);
        }

        v20 = *v18++;
        v17 = v17 + v19 * v20 / v9;
        v15 = (v15 + v16);
        ++v14;
        --v6;
      }

      while (v6);
      v21 = v10 / v12;
    }

    v22 = sqrt(fmax(v21 / fmax(v21 - v17, 0.000001), 0.000001));
    if (v22 < 1.0)
    {
      v22 = 1.0;
    }

    *(a1 + 13) = v22;
  }

  return result;
}

double sub_27798BBD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = v2 - 1;
  bzero(*(a1 + 16), 8 * v2);
  result = *(*a1 + 8 * (v3 + v3 * *(a1 + 24)));
  if (fabs(result) > 0.000001)
  {
    result = *(*(a1 + 8) + 8 * v3) / result;
    *(*(a1 + 16) + 8 * v3) = result;
  }

  return result;
}

double sub_27798BC3C(uint64_t a1, double **a2)
{
  v2 = *(a1 + 24);
  if (v2 >= 1)
  {
    v3 = 0;
    v5 = *a2;
    v4 = a2[1];
    v6 = 8 * v2;
    v8 = *a1;
    v7 = *(a1 + 8);
    do
    {
      v9 = v5;
      v10 = v8;
      v11 = v2;
      do
      {
        v12 = *v9++;
        *v10 = v12 + *v10;
        ++v10;
        --v11;
      }

      while (v11);
      result = v4[v3] + *(v7 + 8 * v3);
      *(v7 + 8 * v3++) = result;
      v8 = (v8 + v6);
      v5 = (v5 + v6);
    }

    while (v3 != v2);
  }

  return result;
}

unint64_t sub_27798BCA4(int a1)
{
  if ((a1 * a1) > 0x7FFFFFFA)
  {
    return 0;
  }

  v2 = malloc_type_malloc(4 * (a1 * a1) + 23, 0x5F484EBFuLL);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v3 - 8) = v2;
  if (v3)
  {
    v4 = a1 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = 0;
    v6 = a1;
    v45 = vdupq_n_s64(a1 - 1);
    v32 = a1;
    v37 = vdupq_lane_s64(COERCE__INT64(a1), 0);
    v7 = (a1 + 3) & 0xFFFFFFFC;
    v35 = vdupq_n_s64(0xBFF921FB54442D18);
    v36 = vdupq_n_s64(0x400921FB54442D18uLL);
    v8 = (v3 + 8);
    v9 = 4 * a1;
    __asm { FMOV            V0.2D, #0.5 }

    v33 = _Q0;
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v15 = cos((v5 + 0.5) * 3.14159265 / v32 + -1.57079633);
      v16 = 0;
      v17 = v8;
      v18 = xmmword_277BB70A0;
      v19 = xmmword_277BB7090;
      do
      {
        v43 = v19;
        v20 = vorr_s8(vdup_n_s32(v16), 0x300000002);
        v44 = v18;
        v21 = vmovn_s64(vcgeq_u64(v45, v18));
        v40 = vuzp1_s16(v21, v20).u8[0];
        v22.i64[0] = v16;
        v22.i64[1] = (v16 + 1);
        v23 = vcvtq_f64_u64(v22);
        v22.i64[0] = v20.u32[0];
        v22.i64[1] = v20.u32[1];
        v46 = vaddq_f64(vdivq_f64(vmulq_f64(vaddq_f64(v23, v33), v36), v37), v35);
        __xa = vaddq_f64(vdivq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_u64(v22), v33), v36), v37), v35);
        v39 = cos(__xa.f64[1]);
        __x = cos(__xa.f64[0]);
        v38 = cos(v46.f64[1]);
        v24.f64[0] = cos(v46.f64[0]);
        v24.f64[1] = v38;
        if (v40)
        {
          v25 = v15 * v24.f64[0];
          *(v17 - 2) = v25;
        }

        if (vuzp1_s16(v21, *&v24).i8[2])
        {
          v26 = vmuld_lane_f64(v15, v24, 1);
          *(v17 - 1) = v26;
        }

        v27.f64[0] = __x;
        v27.f64[1] = v39;
        v28 = vmovn_s64(vcgeq_u64(v45, v43));
        if (vuzp1_s16(v28, v28).i32[1])
        {
          v29 = v15 * __x;
          *v17 = v29;
          v30 = vmuld_lane_f64(v15, v27, 1);
          v17[1] = v30;
        }

        v16 += 4;
        v19 = vaddq_s64(v43, v34);
        v18 = vaddq_s64(v44, v34);
        v17 += 4;
      }

      while (v7 != v16);
      ++v5;
      v8 = (v8 + v9);
    }

    while (v5 != v6);
  }

  return v3;
}

void sub_27798BF78(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(*(v2 - 8));
  }

  v3 = (a1 + 40);
  v4 = 3;
  do
  {
    v5 = v3[3];
    if (v5)
    {
      free(*(v5 - 8));
    }

    if (*v3)
    {
      free(*(*v3 - 8));
    }

    ++v3;
    --v4;
  }

  while (v4);
  sub_27798BA44((a1 + 136));
  v6 = *(a1 + 104);
  if (v6)
  {
    free(*(v6 - 8));
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    free(*(v7 - 8));
  }

  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  v8 = *(a1 - 8);

  free(v8);
}

int16x4_t sub_27798C02C(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - 8);
  v7 = *(a1 - 8);
  v8 = (a1 - 8 + a2);
  v9 = (v8 + a2);
  v10 = *&v9->i8[a2];
  v11 = vtrn1_s8(*v7.i8, *v8);
  v12 = vtrn2_s8(*v7.i8, *v8);
  v13 = vtrn1_s8(*v9, *v10.i8);
  v14 = vtrn2_s8(*v9, *v10.i8);
  v15 = vtrn1_s16(v11, v13);
  v16 = vtrn2_s16(v11, v13);
  v17 = vtrn1_s16(v12, v14);
  v18 = vtrn2_s16(v12, v14);
  v7.i64[0] = vextq_s8(v7, v7, 8uLL).u64[0];
  v19 = vextq_s8(*v8->i8, *v8->i8, 8uLL).u64[0];
  v20 = vextq_s8(*v9->i8, *v9->i8, 8uLL).u64[0];
  v10.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
  v21 = vtrn1_s8(*v7.i8, v19);
  *v7.i8 = vtrn2_s8(*v7.i8, v19);
  v22 = vtrn1_s8(v20, *v10.i8);
  v23 = vtrn2_s8(v20, *v10.i8);
  *v10.i8 = vtrn1_s16(v21, v22);
  v24 = vtrn2_s16(v21, v22);
  v25 = vtrn1_s16(*v7.i8, v23);
  v56 = v15;
  v57 = vtrn2_s16(*v7.i8, v23);
  *v7.i8 = vdup_lane_s32(v57, 0);
  v7.i32[0] = v15.i32[1];
  v26 = vrev64_s32(v25);
  v27 = __PAIR64__(v26.u32[0], v16.u32[0]);
  v26.i32[0] = v16.i32[1];
  *v10.i8 = vrev64_s32(*v10.i8);
  v28 = __PAIR64__(v10.u32[0], v18.u32[0]);
  v10.i32[0] = v18.i32[1];
  v29 = vrev64_s32(v24);
  v54 = __PAIR64__(v29.u32[0], v17.u32[0]);
  v55 = v17;
  v29.i32[0] = v17.i32[1];
  v62 = v26;
  v63 = *v10.i8;
  v60 = *v7.i8;
  v61 = v29;
  v59 = v28;
  v58 = v27;
  sub_27798C1E8(&v58, &v59, &v60, &v61, &v62, &v63, a3, a4, v54, a5);
  v30 = vzip1_s32(v56, v60);
  v31 = vzip1_s32(v58, v62);
  v32 = vzip1_s32(v59, v63);
  v33 = vzip1_s32(v55, v61);
  v34 = vzip2_s32(v60, v57);
  v35 = vzip2_s32(v62, v58);
  v36 = vzip2_s32(v63, v59);
  v37 = vzip2_s32(v61, v54);
  v38 = vtrn1_s8(v36, v35);
  v39 = vtrn2_s8(v36, v35);
  v40 = vtrn1_s8(v37, v34);
  v41 = vtrn2_s8(v37, v34);
  v42 = vtrn1_s16(v38, v40);
  v43 = vtrn2_s16(v38, v40);
  v44 = vtrn1_s16(v39, v41);
  result = vtrn2_s16(v39, v41);
  v46 = vtrn1_s8(v30, v33);
  v47 = vtrn2_s8(v30, v33);
  v48 = vtrn1_s8(v31, v32);
  v49 = vtrn2_s8(v31, v32);
  *&v50 = vtrn1_s16(v46, v48);
  *&v51 = vtrn2_s16(v46, v48);
  *&v52 = vtrn1_s16(v47, v49);
  *&v53 = vtrn2_s16(v47, v49);
  *(&v50 + 1) = v42;
  *(&v52 + 1) = v44;
  *(&v51 + 1) = v43;
  *(&v53 + 1) = result;
  *v6 = v50;
  *v8->i8 = v52;
  *v9->i8 = v51;
  *&v9->i8[a2] = v53;
  return result;
}

uint8x8_t sub_27798C1E8(uint8x8_t *a1, uint8x8_t *a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, uint8x8_t *a6, unsigned int a7, unsigned int a8, uint8x8_t a9, unsigned __int8 a10)
{
  v10 = vabd_u8(*a6, *a5);
  v11 = vcge_u8(vdup_n_s8(a8), vmax_u8(vmax_u8(vabd_u8(*a3, *a4), vabd_u8(*a4, *a5)), v10));
  v12 = vabdl_u8(vzip1_s32(*a6, *a5), vzip2_s32(*a6, *a5));
  v13 = vcge_u16(vdup_n_s16(a7), vsra_n_u16(vadd_s16(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL), 1uLL));
  v14 = vand_s8(vuzp1_s8(v13, v13), vand_s8(vrev64_s32(v11), v11));
  v15 = vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(v10, vabd_u8(*a4, *a6)), vabd_u8(*a3, *a6)));
  v16 = vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(vabd_u8(*a2, *a6), vabd_u8(*a1, *a6)), vabd_u8(a9, *a6)));
  v17 = veor_s8(*a6, 0x8080808080808080);
  v18 = vdup_lane_s32(v17, 0);
  v19 = vdup_lane_s32(v17, 1);
  v20 = veor_s8(*a5, 0x8080808080808080);
  v21 = vdup_lane_s32(v20, 0);
  v22 = vdup_lane_s32(v20, 1);
  v23 = vcgt_u8(v10, vdup_n_s8(a10));
  v24 = vorr_s8(vrev64_s32(v23), v23);
  v25 = vand_s8(vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(v19, v18), 0x303030303030303), vand_s8(v24, vqsub_s8(v21, v22)))), v14);
  v26 = vshr_n_s8(vqadd_s8(v25, 0x404040404040404), 3uLL);
  v27 = vbic_s8(vrshr_n_s8(v26, 1uLL), v24);
  v28 = vext_s8(veor_s8(vqadd_s8(v18, vshr_n_s8(vqadd_s8(v25, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(v19, v26), 0x8080808080808080), 4uLL);
  v29 = vext_s8(veor_s8(vqadd_s8(v21, v27), 0x8080808080808080), veor_s8(vqsub_s8(v22, v27), 0x8080808080808080), 4uLL);
  v30 = vrev64_s32(*a6);
  v31 = vrev64_s32(*a5);
  v32 = vaddl_u8(*a4, *a3);
  v33 = vaddw_u8(vaddw_u8(vaddw_u8(v32, *a5), *a6), v30);
  v34 = vaddw_u8(v33, *a3);
  v35 = vaddq_s16(v32, v34);
  v36 = vaddl_u8(v31, vrev64_s32(*a4));
  v37 = vrshrn_n_s16(vaddq_s16(vaddw_u8(v36, *a6), v33), 3uLL);
  *v34.i8 = vrshrn_n_s16(vaddq_s16(vaddl_u8(v31, *a5), v34), 3uLL);
  v38 = vaddw_u8(vaddw_u8(vaddw_u8(v33, a9), *a1), *a2);
  v39 = vaddw_u8(v38, *a2);
  v40 = vaddw_u8(v39, *a3);
  v41 = vaddw_u8(v38, *a5);
  v42 = vaddw_u8(v41, *a4);
  v43 = vaddw_u8(vmull_u8(a9, 0x606060606060606), *a1);
  v44 = vaddq_s16(vaddq_s16(vaddl_u8(*a1, v31), vshll_n_u8(a9, 2uLL)), v40);
  v45 = vaddq_s16(vmlal_u8(vaddw_u8(v36, *a4), a9, 0x303030303030303), v40);
  v46 = vaddw_u8(v36, vrev64_s32(*a3));
  v47 = vaddq_s16(vaddq_s16(vaddw_u8(v46, *a3), vshll_n_u8(a9, 1uLL)), v42);
  v48 = vaddw_u8(v46, vrev64_s32(*a2));
  *v41.i8 = vrshrn_n_s16(vaddq_s16(vaddq_s16(vaddw_u8(vaddl_u8(v30, *a6), vrev64_s32(*a1)), v48), v41), 4uLL);
  v49 = vrshrn_n_s16(vaddq_s16(vaddw_u8(vaddw_u8(v48, *a6), a9), v42), 4uLL);
  v50 = vand_s8(vand_s8(vrev64_s32(v15), v15), v14);
  v51 = vand_s8(vand_s8(vrev64_s32(v16), v16), v50);
  *a6 = vbsl_s8(v50, *a6, v28);
  *a5 = vbsl_s8(v50, *a5, v29);
  *a6 = vbsl_s8(v50, v37, *a6);
  *a5 = vbsl_s8(v50, *v34.i8, *a5);
  *a4 = vbsl_s8(v50, vrshrn_n_s16(v35, 3uLL), *a4);
  *a6 = vbsl_s8(v51, *v41.i8, *a6);
  *a5 = vbsl_s8(v51, v49, *a5);
  *a4 = vbsl_s8(v51, vrshrn_n_s16(v47, 4uLL), *a4);
  *a3 = vbsl_s8(v51, vrshrn_n_s16(v45, 4uLL), *a3);
  *a2 = vbsl_s8(v51, vrshrn_n_s16(v44, 4uLL), *a2);
  result = vbsl_s8(v51, vrshrn_n_s16(vaddq_s16(v43, v39), 4uLL), *a1);
  *a1 = result;
  return result;
}

int16x4_t sub_27798C498(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, double a6, double a7, double a8, double a9, double a10, __n128 a11)
{
  v12 = (a1 - 4);
  v13 = *(a1 - 4);
  v14 = (a1 - 4 + a2);
  v15 = (v14 + a2);
  v16 = *(v15 + a2);
  v17 = vtrn1_s8(v13, *v14);
  v18 = vtrn2_s8(v13, *v14);
  v19 = vtrn1_s8(*v15, v16);
  v20 = vtrn2_s8(*v15, v16);
  v21 = vtrn1_s16(v17, v19);
  v22 = vtrn2_s16(v17, v19);
  v23 = vtrn1_s16(v18, v20);
  v24 = vrev64_s32(vtrn2_s16(v18, v20));
  v38 = __PAIR64__(v24.u32[0], v21.u32[0]);
  v39 = v21.i32[0];
  v25 = vrev64_s32(v22);
  v26 = vzip2_s32(v25, v23);
  v23.i32[1] = v25.i32[0];
  v42 = vzip2_s32(v24, v21);
  v40 = v23;
  v41 = v26;
  sub_27798C5B0(&v40, &v41, &v42, a3, a4, a5, __PAIR64__(v24.u32[0], v21.u32[0]));
  v27 = vrev64_s32(v42);
  v28 = __PAIR64__(v27.u32[0], v39);
  v29.i32[0] = v40.i32[0];
  v30 = vrev64_s32(v41);
  v31 = vzip2_s32(v30, v40);
  v29.i32[1] = v30.i32[0];
  v32 = vzip2_s32(v27, v38);
  v33 = vtrn1_s8(v28, v29);
  v34 = vtrn2_s8(v28, v29);
  v35 = vtrn1_s8(v31, v32);
  v36 = vtrn2_s8(v31, v32);
  *v12 = vtrn1_s16(v33, v35);
  *v14 = vtrn1_s16(v34, v36);
  result = vtrn2_s16(v34, v36);
  *v15 = vtrn2_s16(v33, v35);
  *(v15 + a2) = result;
  return result;
}

uint8x8_t sub_27798C5B0(uint8x8_t *a1, uint8x8_t *a2, uint8x8_t *a3, unsigned int a4, unsigned int a5, unsigned int a6, uint8x8_t a7)
{
  v7 = vabd_u8(*a3, *a2);
  v8 = vcge_u8(vdup_n_s8(a5), vmax_u8(vmax_u8(vabd_u8(a7, *a1), vabd_u8(*a1, *a2)), v7));
  v9 = vabdl_u8(vzip1_s32(*a3, *a2), vzip2_s32(*a3, *a2));
  v10 = vcge_u16(vdup_n_s16(a4), vsra_n_u16(vadd_s16(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL), 1uLL));
  v11 = vand_s8(vuzp1_s8(v10, v10), vand_s8(vrev64_s32(v8), v8));
  v12 = vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(v7, vabd_u8(*a1, *a3)), vabd_u8(a7, *a3)));
  v13 = veor_s8(*a3, 0x8080808080808080);
  v14 = vdup_lane_s32(v13, 0);
  v15 = vdup_lane_s32(v13, 1);
  *v9.i8 = veor_s8(*a2, 0x8080808080808080);
  v16 = vdup_lane_s32(*v9.i8, 0);
  *v9.i8 = vdup_lane_s32(*v9.i8, 1);
  v17 = vcgt_u8(v7, vdup_n_s8(a6));
  v18 = vorr_s8(vrev64_s32(v17), v17);
  v19 = vand_s8(vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(v15, v14), 0x303030303030303), vand_s8(v18, vqsub_s8(v16, *v9.i8)))), v11);
  v20 = vshr_n_s8(vqadd_s8(v19, 0x404040404040404), 3uLL);
  v21 = vbic_s8(vrshr_n_s8(v20, 1uLL), v18);
  v22 = vext_s8(veor_s8(vqadd_s8(v14, vshr_n_s8(vqadd_s8(v19, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(v15, v20), 0x8080808080808080), 4uLL);
  *v9.i8 = vext_s8(veor_s8(vqadd_s8(v16, v21), 0x8080808080808080), veor_s8(vqsub_s8(*v9.i8, v21), 0x8080808080808080), 4uLL);
  v23 = vaddl_u8(*a1, a7);
  v24 = vrev64_s32(*a2);
  v25 = vaddw_u8(vaddw_u8(vaddw_u8(v23, *a2), *a3), vrev64_s32(*a3));
  v26 = vaddw_u8(v25, a7);
  v27 = vaddq_s16(v23, v26);
  v28 = vrshrn_n_s16(vaddq_s16(vaddw_u8(vaddl_u8(vrev64_s32(*a1), *a3), v24), v25), 3uLL);
  *v26.i8 = vrshrn_n_s16(vaddq_s16(vaddl_u8(v24, *a2), v26), 3uLL);
  v29 = vand_s8(vand_s8(vrev64_s32(v12), v12), v11);
  *a3 = vbsl_s8(v29, *a3, v22);
  *a2 = vbsl_s8(v29, *a2, *v9.i8);
  *a3 = vbsl_s8(v29, v28, *a3);
  *a2 = vbsl_s8(v29, *v26.i8, *a2);
  result = vbsl_s8(v29, vrshrn_n_s16(v27, 3uLL), *a1);
  *a1 = result;
  return result;
}

int16x4_t sub_27798C73C(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - 4);
  v7 = *(a1 - 4);
  v8 = (a1 - 4 + a2);
  v9 = (v8 + a2);
  v10 = *(v9 + a2);
  v11 = vtrn1_s8(v7, *v8);
  v12 = vtrn2_s8(v7, *v8);
  v13 = vtrn1_s8(*v9, v10);
  v14 = vtrn2_s8(*v9, v10);
  v15 = vtrn1_s16(v11, v13);
  v16 = vtrn1_s16(v12, v14);
  v33 = vtrn2_s16(v12, v14);
  v17 = vrev64_s32(vtrn2_s16(v11, v13));
  v18 = v16;
  v31 = v15.i32[0];
  v32 = v16.i32[0];
  v16.i32[1] = v17.i32[0];
  v30 = v16;
  v34 = vzip2_s32(v17, v18);
  v35 = vzip2_s32(vdup_lane_s32(v33, 0), v15);
  sub_27798C844(&v34, &v35, a3, a4, a5, v16);
  v19 = vrev64_s32(v35);
  v20 = __PAIR64__(v19.u32[0], v31);
  v21.i32[0] = v32;
  v22 = vrev64_s32(v34);
  v21.i32[1] = v22.i32[0];
  v23 = vzip2_s32(v19, v33);
  v24 = vzip2_s32(v22, v30);
  v25 = vtrn1_s8(v20, v21);
  v26 = vtrn2_s8(v20, v21);
  v27 = vtrn1_s8(v24, v23);
  v28 = vtrn2_s8(v24, v23);
  *v6 = vtrn1_s16(v25, v27);
  *v8 = vtrn1_s16(v26, v28);
  result = vtrn2_s16(v26, v28);
  *v9 = vtrn2_s16(v25, v27);
  *(v9 + a2) = result;
  return result;
}

uint8x8_t sub_27798C844(uint8x8_t *a1, uint8x8_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint8x8_t a6)
{
  v6 = vabd_u8(*a2, *a1);
  v7 = vcge_u8(vdup_n_s8(a4), vmax_u8(vabd_u8(a6, *a1), v6));
  v8 = vabdl_u8(vzip1_s32(*a2, *a1), vzip2_s32(*a2, *a1));
  v9 = vcge_u16(vdup_n_s16(a3), vsra_n_u16(vadd_s16(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL), 1uLL));
  v10 = vand_s8(vuzp1_s8(v9, v9), vand_s8(vrev64_s32(v7), v7));
  v11 = vcgt_u8(0x202020202020202, vmax_u8(v6, vabd_u8(a6, *a2)));
  v12 = veor_s8(*a2, 0x8080808080808080);
  v13 = vdup_lane_s32(v12, 0);
  *v8.i8 = vdup_lane_s32(v12, 1);
  v14 = veor_s8(*a1, 0x8080808080808080);
  v15 = vdup_lane_s32(v14, 0);
  v16 = vdup_lane_s32(v14, 1);
  v17 = vcgt_u8(v6, vdup_n_s8(a5));
  v18 = vorr_s8(vrev64_s32(v17), v17);
  v19 = vand_s8(v10, vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(*v8.i8, v13), 0x303030303030303), vand_s8(v18, vqsub_s8(v15, v16)))));
  v20 = vshr_n_s8(vqadd_s8(v19, 0x404040404040404), 3uLL);
  v21 = vbic_s8(vrshr_n_s8(v20, 1uLL), v18);
  *v8.i8 = vext_s8(veor_s8(vqadd_s8(v13, vshr_n_s8(vqadd_s8(v19, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(*v8.i8, v20), 0x8080808080808080), 4uLL);
  v22 = vaddl_u8(*a2, *a1);
  v23 = vrev64_s32(*a2);
  v24 = vaddw_u8(vaddw_u8(vaddq_s16(v22, v22), a6), v23);
  v25 = vrshrn_n_s16(vaddq_s16(vaddl_u8(v23, vrev64_s32(*a1)), v24), 3uLL);
  v26 = vand_s8(vand_s8(vrev64_s32(v11), v11), v10);
  *a2 = vbsl_s8(v26, *a2, *v8.i8);
  *a1 = vbsl_s8(v26, *a1, vext_s8(veor_s8(vqadd_s8(v15, v21), 0x8080808080808080), veor_s8(vqsub_s8(v16, v21), 0x8080808080808080), 4uLL));
  *a2 = vbsl_s8(v26, v25, *a2);
  result = vbsl_s8(v26, vrshrn_n_s16(vaddq_s16(v24, vshll_n_u8(a6, 1uLL)), 3uLL), *a1);
  *a1 = result;
  return result;
}

int16x4_t sub_27798C99C(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798C73C(a1, a2, *a3, *a4, *a5);
  sub_27798C73C(a1 + 4 * a2, a2, *a3, *a4, *a5);
  v10 = a1 + 8 * a2;
  sub_27798C73C(v10, a2, *a3, *a4, *a5);
  v11 = *a5;
  v12 = *a4;
  v13 = *a3;

  return sub_27798C73C(v10 + 4 * a2, a2, v13, v12, v11);
}

int8x8_t sub_27798CA44(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v7 = (a1 - 2);
  v8.i32[0] = *(a1 - 2);
  v8.i32[1] = *(a1 - 2 + a2);
  v9 = (a1 - 2 + 2 * a2);
  v10.i32[0] = *v9;
  v10.i32[1] = *(v9 + a2);
  v11 = vtrn1_s16(v8, v10);
  v12 = vtrn2_s16(v8, v10);
  v13 = vzip1_s32(v11, v12);
  v14 = vzip2_s32(v11, v12);
  v15 = vtrn1_s8(v13, v14);
  v16 = vtrn2_s8(v13, v14);
  v17 = vzip1_s32(v15, v16);
  v18 = vzip2_s32(v16, v15);
  v19 = __PAIR64__(v18.u32[0], v17.u32[0]);
  v18.i32[0] = v17.i32[1];
  v28 = v19;
  v29 = v18;
  sub_27798CB24(&v28, &v29, a3, a4, a5);
  v20 = vzip1_s32(v28, v29);
  v21 = vtrn1_s16(v20, __PAIR64__(v28.u32[1], v29.u32[1]));
  v22 = vtrn2_s16(v20, __PAIR64__(v28.u32[1], v29.u32[1]));
  v23 = vzip1_s32(v21, v22);
  v24 = vzip2_s32(v21, v22);
  v25 = vtrn1_s8(v23, v24);
  result = vtrn2_s8(v23, v24);
  *v7 = v25.i32[0];
  *v9 = v25.i32[1];
  v27 = a1 + a2;
  *(v27 - 2) = result.i32[0];
  *(v27 - 2 + 2 * a2) = result.i32[1];
  return result;
}

uint8x8_t sub_27798CB24(uint8x8_t *a1, uint8x8_t *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = vabd_u8(*a2, *a1);
  v6 = vcge_u8(vdup_n_s8(a4), v5);
  v7 = vabdl_u8(vzip1_s32(*a2, *a1), vzip2_s32(*a2, *a1));
  v8 = vcge_u16(vdup_n_s16(a3), vsra_n_u16(vadd_s16(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL), 1uLL));
  v9 = veor_s8(*a2, 0x8080808080808080);
  v10 = vdup_lane_s32(v9, 0);
  v11 = vdup_lane_s32(v9, 1);
  v12 = veor_s8(*a1, 0x8080808080808080);
  v13 = vdup_lane_s32(v12, 0);
  v14 = vdup_lane_s32(v12, 1);
  v15 = vcgt_u8(v5, vdup_n_s8(a5));
  v16 = vorr_s8(vrev64_s32(v15), v15);
  v17 = vand_s8(vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(v11, v10), 0x303030303030303), vand_s8(v16, vqsub_s8(v13, v14)))), vand_s8(vand_s8(vrev64_s32(v6), v6), vuzp1_s8(v8, v8)));
  v18 = vshr_n_s8(vqadd_s8(v17, 0x404040404040404), 3uLL);
  v19 = vbic_s8(vrshr_n_s8(v18, 1uLL), v16);
  *a2 = vext_s8(veor_s8(vqadd_s8(v10, vshr_n_s8(vqadd_s8(v17, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(v11, v18), 0x8080808080808080), 4uLL);
  result = vext_s8(veor_s8(vqadd_s8(v13, v19), 0x8080808080808080), veor_s8(vqsub_s8(v14, v19), 0x8080808080808080), 4uLL);
  *a1 = result;
  return result;
}

int8x8_t sub_27798CC04(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798CA44(a1, a2, *a3, *a4, *a5);
  sub_27798CA44(a1 + 4 * a2, a2, *a3, *a4, *a5);
  v10 = a1 + 8 * a2;
  sub_27798CA44(v10, a2, *a3, *a4, *a5);
  v11 = *a5;
  v12 = *a4;
  v13 = *a3;

  return sub_27798CA44(v10 + 4 * a2, a2, v13, v12, v11);
}

double sub_27798CCAC(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = 7 * a2;
  v7.i32[0] = *(a1 - v6);
  v7.i32[1] = *(a1 + 13 * a2 - v6);
  v8 = (a1 - 6 * a2);
  v27 = (v8 + 11 * a2);
  v9.i32[0] = *v8;
  v9.i32[1] = *v27;
  v33 = *&v9;
  v10 = 5 * a2;
  v11 = (a1 - v10);
  v26 = (a1 + 9 * a2 - v10);
  v9.i32[0] = *(a1 - v10);
  v9.i32[1] = *v26;
  v32 = v9;
  v12 = &a1[-a2];
  v13 = (v12 + v6);
  v9.i32[0] = *v12;
  v9.i32[1] = *(v12 + v6);
  v31 = v9;
  v14 = 3 * a2;
  v15 = (a1 - v14);
  v16 = (a1 + v10 - v14);
  v9.i32[0] = *(a1 - v14);
  v9.i32[1] = *v16;
  v30 = v9;
  v17 = (a1 - 2 * a2);
  v18 = (v17 + v14);
  v9.i32[0] = *v17;
  v9.i32[1] = *(v17 + v14);
  v29 = v9;
  v19 = (a1 - a2);
  v9.i32[0] = *v19;
  v9.i32[1] = *a1;
  v28 = v9;
  sub_27798C1E8(&v33, &v32, &v31, &v30, &v29, &v28, a3, a4, v7, a5);
  v20 = v28.i32[1];
  *v19 = v28.i32[0];
  *a1 = v20;
  v21 = v29.i32[1];
  *v17 = v29.i32[0];
  *v18 = v21;
  v22 = v30.i32[1];
  *v15 = v30.i32[0];
  *v16 = v22;
  v23 = v31.i32[1];
  *v12 = v31.i32[0];
  *v13 = v23;
  v24 = v32.i32[1];
  *v11 = v32.i32[0];
  *v26 = v24;
  result = v33;
  *v8 = LODWORD(v33);
  *v27 = HIDWORD(result);
  return result;
}

double sub_27798CE30(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = 3 * a2;
  v7 = (a1 - a2);
  v8.i32[0] = *v7;
  v8.i32[1] = *a1;
  v9 = (a1 + v6);
  v10 = (a1 - 2 * a2);
  v20 = v8;
  v11 = (a1 + a2);
  v8.i32[0] = *v10;
  v8.i32[1] = *v11;
  v12 = (a1 - v6);
  v19 = v8;
  v13 = (a1 + 2 * a2);
  v8.i32[0] = *(a1 - v6);
  v8.i32[1] = *v13;
  v18 = *&v8;
  v14 = *(a1 + v6);
  v8.i32[0] = a1[-a2];
  v8.i32[1] = v14;
  sub_27798C5B0(&v18, &v19, &v20, a3, a4, a5, v8);
  result = v18;
  v16 = v19;
  *v12 = LODWORD(v18);
  *v10 = v16.i32[0];
  v17 = v20.i32[1];
  *v7 = v20.i32[0];
  *a1 = v17;
  *v11 = v16.i32[1];
  *v13 = HIDWORD(result);
  *v9 = v14;
  return result;
}

double sub_27798CF14(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - a2);
  v7.i32[0] = *v6;
  v7.i32[1] = *a1;
  v8 = (a1 + 2 * a2);
  v9 = (a1 - 2 * a2);
  v15 = v7;
  v10 = (a1 + a2);
  v7.i32[0] = *v9;
  v7.i32[1] = *v10;
  v14 = *&v7;
  v11 = *v8;
  v7.i32[0] = *(a1 - 3 * a2);
  v7.i32[1] = *v8;
  sub_27798C844(&v14, &v15, a3, a4, a5, v7);
  result = v14;
  v13 = v15;
  *v9 = LODWORD(v14);
  *v6 = v13.i32[0];
  *a1 = v13.i32[1];
  *v10 = HIDWORD(result);
  *v8 = v11;
  return result;
}

double sub_27798CFBC(__int32 *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798CF14(a1, a2, *a3, *a4, *a5);
  sub_27798CF14(a1 + 1, a2, *a3, *a4, *a5);
  sub_27798CF14(a1 + 2, a2, *a3, *a4, *a5);
  v10 = *a5;
  v11 = *a4;
  v12 = *a3;

  return sub_27798CF14(a1 + 3, a2, v12, v11, v10);
}

double sub_27798D060(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - 2 * a2);
  v7 = (v6 + 3 * a2);
  LODWORD(v8) = *v6;
  HIDWORD(v8) = *v7;
  v13 = v8;
  v9 = (a1 - a2);
  LODWORD(v8) = *v9;
  HIDWORD(v8) = *a1;
  v12 = v8;
  sub_27798CB24(&v13, &v12, a3, a4, a5);
  v10 = HIDWORD(v12);
  *v9 = LODWORD(v12);
  *a1 = v10;
  result = v13;
  *v6 = LODWORD(v13);
  *v7 = HIDWORD(result);
  return result;
}

double sub_27798D0F0(__int32 *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798D060(a1, a2, *a3, *a4, *a5);
  sub_27798D060(a1 + 1, a2, *a3, *a4, *a5);
  sub_27798D060(a1 + 2, a2, *a3, *a4, *a5);
  v10 = *a5;
  v11 = *a4;
  v12 = *a3;

  return sub_27798D060(a1 + 3, a2, v12, v11, v10);
}

void sub_27798D194(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, __int16 *a10, _WORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v48 = a2;
  v53 = *MEMORY[0x277D85DE8];
  v17 = 1 << a15 >> 1;
  v51 = (v17 + a3) >> a15;
  v52 = (v17 + a4) >> a15;
  v50[0] = -v51;
  v50[1] = -v52;
  v18 = 4 * a2;
  bzero(a8, 4 * a2);
  bzero(a9, v18);
  v19.i32[0] = *a10;
  v19.i32[1] = a10[1];
  v20 = v48;
  v49 = vshr_n_s32(vmla_s32(0x4000000040, v19, vdup_n_s32(0x145u)), 7uLL);
  do
  {
    if (v20 < 1)
    {
      goto LABEL_41;
    }

    v21 = v20;
    v22 = *(a12 - 2 + 2 * v20);
    if (a13)
    {
      v23 = *(a13 + v22);
    }

    else
    {
      v23 = 32;
    }

    v24 = *(a1 + 4 * v22) * v23;
    v25 = v22 != 0;
    v26 = *(&v49 | (4 * v25));
    if (v24 >= v26 + 32 * *(&v51 + v25))
    {
      break;
    }

    --v20;
  }

  while (v24 > 32 * v50[v25] - v26);
  v27 = 0;
  v28 = v21 & 0x7FFFFFFF;
  v29 = -1;
  v30 = -1;
  do
  {
    v31 = *(a12 + 2 * v27);
    v32 = *(a1 + 4 * v31);
    if (v32 >= 0)
    {
      v33 = *(a1 + 4 * v31);
    }

    else
    {
      v33 = -v32;
    }

    if (a13)
    {
      v34 = *(a13 + v31);
    }

    else
    {
      v34 = 32;
    }

    if (v33 * v34 >= 32 * *(&v51 + (v31 != 0)))
    {
      v35 = v32 >> 31;
      v36 = ((v17 + *(a5 + 2 * (v31 != 0))) >> a15) + v33;
      if (v36 >= 0x7FFF)
      {
        v36 = 0x7FFF;
      }

      if (v36 <= -32768)
      {
        v36 = -32768;
      }

      v37 = ((((v34 * v36 * *(a6 + 2 * (v31 != 0))) >> 16) + v34 * v36) * *(a7 + 2 * (v31 != 0))) >> (21 - a15);
      *(a8 + v31) = (v35 ^ v37) - v35;
      if (a14)
      {
        v38 = *(a14 + v31);
      }

      else
      {
        v38 = 32;
      }

      *(a9 + v31) = (((((v38 * a10[v31 != 0] + 16) >> 5) * v37) >> a15) ^ v35) - v35;
      if (v37)
      {
        if (v30 == -1)
        {
          v30 = v27;
        }

        v29 = v27;
      }
    }

    ++v27;
  }

  while (v28 != v27);
  if ((v29 & 0x80000000) == 0 && v30 == v29)
  {
    v39 = *(a12 + 2 * v30);
    v40 = *(a8 + v39);
    if (v40 == 1 || v40 == -1)
    {
      v42 = a13 ? *(a13 + v39) : 32;
      v43 = *(a1 + 4 * v39) * v42;
      v44 = (525 * a10[v39 != 0] + 64) >> 7;
      if (v43 < v44 + 32 * *(&v51 + (v39 != 0)))
      {
        LOWORD(v29) = v30;
        if (v43 <= 32 * v50[v39 != 0] - v44)
        {
          goto LABEL_43;
        }

        *(a8 + v39) = 0;
        *(a9 + v39) = 0;
LABEL_41:
        LOWORD(v29) = -1;
        goto LABEL_43;
      }
    }

    LOWORD(v29) = v30;
  }

LABEL_43:
  *a11 = v29 + 1;
}

uint64_t sub_27798D4C4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, double *a8, double *a9)
{
  v9 = 0;
  v88 = *MEMORY[0x277D85DE8];
  v10 = a7;
  v11 = (~a7 + a1 + a3 + a7 * a4);
  v12 = v11;
  do
  {
    *(&v84 + v9) = vsubl_u8(*v12, *&vextq_s8(*v12->i8, *v12->i8, 2uLL));
    v9 += 16;
    v12 = (v12 + a7);
  }

  while (v9 != 160);
  v13 = 0;
  v14 = v85;
  v15 = vaddq_s16(v85, v84);
  do
  {
    v16 = v87[v13 - 1];
    v17 = vaddq_s16(v16, v14);
    *&v82[v13 * 16 + 128] = vaddq_s16(v17, v15);
    ++v13;
    v14 = v16;
    v15 = v17;
  }

  while (v13 != 8);
  for (i = 0; i != 160; i += 16)
  {
    *(&v84 + i) = vaddq_s16(vaddl_u8(*&vextq_s8(*v11, *v11, 2uLL), *v11->i8), vshll_n_u8(*&vextq_s8(*v11, *v11, 1uLL), 1uLL));
    v11 = (v11 + a7);
  }

  v19 = 0;
  v83[0] = v84;
  v83[1] = v85;
  v83[2] = v86;
  v83[3] = v87[0];
  v83[4] = v87[1];
  v83[5] = v87[2];
  v83[6] = v87[3];
  v83[7] = v87[4];
  v83[8] = v87[5];
  v83[9] = v87[6];
  do
  {
    *&v82[v19 * 16] = vsubq_s16(v83[v19], v83[v19 + 2]);
    ++v19;
  }

  while (v19 != 8);
  v20 = 0;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  do
  {
    v24 = *&v82[v20 + 128];
    v25 = *&v82[v20];
    v21 = vmlal_high_s16(vmlal_s16(v21, *v24.i8, *v24.i8), v24, v24);
    v22 = vmlal_high_s16(vmlal_s16(v22, *v24.i8, *v25.i8), v24, v25);
    v23 = vmlal_high_s16(vmlal_s16(v23, *v25.i8, *v25.i8), v25, v25);
    v20 += 16;
  }

  while (v20 != 128);
  v26 = 0;
  v27 = vpaddq_s32(vpaddq_s32(v21, v22), vpaddq_s32(v22, v23));
  v28 = v27.i32[0] + 1.0;
  v29 = v27.i32[3] + 1.0;
  v30 = 1.0 / (v28 * v29 - v27.i32[1] * v27.i32[2]);
  v31 = v29 * v30;
  v32 = -(v27.i32[1] * v30);
  v33 = v28 * v30;
  v34 = *a9;
  v35 = (a1 + a3 + a7 * a4);
  v36 = vdupq_n_s64(0x40D0000000000000uLL);
  do
  {
    v37 = 0;
    v38 = *a8;
    v39 = vcvtmd_s64_f64(v34);
    v40 = vcvtmd_s64_f64(*a8) + a3;
    if (v40 >= a5)
    {
      v41 = a5;
    }

    else
    {
      v41 = v40;
    }

    if (v40 >= -9)
    {
      v42 = v41;
    }

    else
    {
      v42 = -9;
    }

    v43 = v39 + a4;
    if (v43 >= a6)
    {
      v44 = a6;
    }

    else
    {
      v44 = v43;
    }

    v45 = v43 <= -10;
    v46 = v38 - floor(v38);
    v47 = v34 - floor(v34);
    v48 = v46 * v46;
    v49.f64[0] = v46 * (v46 * v46);
    v50.f64[0] = v46 * v46 + v46 * -0.5;
    v51 = v46 * v46 * -2.5 + 1.0;
    v52.f64[0] = v48 + v48 + v46 * 0.5;
    v50.f64[1] = v51;
    v49.f64[1] = v48;
    v52.f64[1] = v49.f64[0] * 0.5;
    v53 = vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmlaq_n_f64(v50, xmmword_277BB70C0, v49.f64[0]), v36)));
    v54 = vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmlaq_f64(v52, xmmword_277BB70B0, v49), v36)));
    v50.f64[0] = v47 * (v47 * v47);
    v55.f64[0] = v47 * v47 + v47 * -0.5;
    v56.f64[0] = v47 * v47 + v47 * v47 + v47 * 0.5;
    v55.f64[1] = v47 * v47 * -2.5 + 1.0;
    v50.f64[1] = v47 * v47;
    v56.f64[1] = v50.f64[0] * 0.5;
    v57 = vmulq_f64(vmlaq_n_f64(v55, xmmword_277BB70C0, v50.f64[0]), v36);
    v58 = vmulq_f64(vmlaq_f64(v56, xmmword_277BB70B0, v50), v36);
    v59 = v44 - 1;
    if (v45)
    {
      v59 = -10;
    }

    v60 = (a2 + v10 * v59 + v42 - 1);
    v61 = vmovn_s32(vuzp1q_s32(v53, v54));
    do
    {
      v62 = vmovl_u8(*v60);
      v63 = vmovl_high_u8(*v60->i8);
      v64 = vextq_s8(v62, v63, 2uLL);
      v65 = vextq_s8(v62, v63, 4uLL);
      v66 = vextq_s8(v62, v63, 6uLL);
      *(&v84 + v37) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v64.i8, v61, 1), *v62.i8, v61, 0), *v65.i8, v61, 2), *v66.i8, v61, 3), 8uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v64, v61, 1), v62, v61, 0), v65, v61, 2), v66, v61, 3), 8uLL);
      v37 += 16;
      v60 = (v60 + v10);
    }

    while (v37 != 176);
    v67 = 0;
    v68 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v57)), vcvtq_s64_f64(vrndxq_f64(v58))));
    v69 = v35;
    do
    {
      v83[v67] = vsubq_s16(vuzp1q_s16(vrshrq_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(&v84 + v67 * 16 + 16), v68, 1), *&v84.i8[v67 * 16], v68, 0), *&v87[v67 - 1], v68, 2), *&v87[v67], v68, 3), 0x11uLL), vrshrq_n_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(&v84 + v67 * 16 + 16), v68, 1), *(&v84 + v67 * 16), v68, 0), v87[v67 - 1], v68, 2), v87[v67], v68, 3), 0x11uLL)), vshll_n_u8(*v69, 3uLL));
      v69 = (v69 + v10);
      ++v67;
    }

    while (v67 != 8);
    v70 = 0;
    v71 = 0uLL;
    v72 = 0uLL;
    do
    {
      v73 = v83[v70 / 0x10];
      v72 = vmlal_high_s16(vmlal_s16(v72, *&v82[v70 + 128], *v73.i8), *&v82[v70 + 128], v73);
      v71 = vmlal_high_s16(vmlal_s16(v71, *&v82[v70], *v73.i8), *&v82[v70], v73);
      v70 += 16;
    }

    while (v70 != 128);
    v74 = vpaddq_s32(v72, v71);
    v74.i64[0] = vpaddq_s32(v74, v74).u64[0];
    result = v74.u32[1];
    v76 = v74.i32[0];
    v77 = v32 * result + v31 * v76;
    v78 = v33 * result + -(v27.i32[2] * v30) * v76;
    if (v77 <= 2.0)
    {
      v79 = v32 * result + v31 * v76;
    }

    else
    {
      v79 = 2.0;
    }

    if (v77 < -2.0)
    {
      v79 = -2.0;
    }

    *a8 = v38 + v79;
    if (v78 <= 2.0)
    {
      v80 = v78;
    }

    else
    {
      v80 = 2.0;
    }

    if (v78 < -2.0)
    {
      v80 = -2.0;
    }

    v34 = *a9 + v80;
    *a9 = v34;
    ++v26;
  }

  while (fabs(v77) + fabs(v78) >= 0.125 && v26 != 4);
  return result;
}

__n128 sub_27798D978(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 116) >= 8 && *(a1 + 112) >= 8 && !*(a4 + 10728))
  {
    v5 = *(a4 + 10744);
    v6 = *(a5 + a3 + 16);
    v7 = *(a1 + 168);
    v8 = *v7;
    if (*v7 == -1 || (v9 = v7[1], v9 == -1) || v8 == 0x4000 && v9 == 0x4000)
    {
      *(a1 + 40) = 0;
      result.n128_u64[0] = 0;
      *(a1 + 8) = xmmword_277C3A208;
      *(a1 + 24) = unk_277C3A218;
      if (a2[1] && !*(a5 + 61))
      {
        v11 = a5 + 28;
LABEL_15:
        result = *v11;
        v12 = *(v11 + 16);
        *(a1 + 40) = *(v11 + 32);
        *(a1 + 24) = v12;
        *(a1 + 8) = result;
        *a1 = 1;
        return result;
      }

      if (*a2)
      {
        v11 = v5 + 36 * v6;
        if (!*(v11 + 33))
        {
          goto LABEL_15;
        }
      }
    }
  }

  return result;
}

void sub_27798DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  if (*a5 == 1)
  {
    v15 = *(a5 + 136);
    v16 = *(a5 + 144);
    v17 = *(a5 + 148);
    v18 = *(a5 + 152);
    v20 = *(a5 + 120);
    v19 = *(a5 + 124);
    v21 = *(a5 + 112);
    v22 = *(a5 + 116);
    v23 = *(a5 + 160);
    v24 = *(a5 + 164);
    if (*(a5 + 180))
    {
      sub_27797B398((a5 + 8), 2 * v15, v16, v17, v18, (2 * a3), v19, v20, v21, v22, a4, v23, SHIWORD(v23), v24, *(a5 + 176), (a5 + 48), *(a5 + 32), WORD1(*(a5 + 32)), WORD2(*(a5 + 32)), HIWORD(*(a5 + 32)));
    }

    else
    {
      off_280ABC820(a5 + 8, v15, v16, v17, v18, a3, v19, v20, __PAIR64__(v22, v21), __PAIR64__(v23, a4), v24, a5 + 48, *(a5 + 32));
    }
  }

  else if (!*a5)
  {
    v9 = *(a5 + 112);
    v8 = *(a5 + 116);
    if (*(a5 + 180))
    {
      v10 = *(a5 + 176);
      v11 = *a6;
      v12 = a6[1];
      v14 = a6[2];
      v13 = a6[3];
      if (__PAIR64__(v12, v11) == 0x40000000400)
      {
        sub_27797E014(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v14 >> 6, 0x10u, v13 >> 6, 16, 0, a5 + 48, v10);
      }

      else
      {
        sub_27797E014(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v14, v11, v13, v12, 1, a5 + 48, v10);
      }
    }

    else
    {
      v25 = *a6;
      v26 = a6[1];
      v28 = a6[2];
      v27 = a6[3];
      if (v25 == 1024 && v26 == 1024)
      {
        sub_27797D7D4(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v28 >> 6, 16, v27 >> 6, 16, 0, a5 + 48);
      }

      else
      {
        sub_27797D7D4(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v28, v25, v27, v26, 1, a5 + 48);
      }
    }
  }
}

void sub_27798DBDC()
{
  v0 = 0;
  v1 = &unk_280A76FB0;
  v2 = -2;
  v3 = 16;
  v64[33] = unk_277BB8B11;
  *&v64[34] = unk_277BB8B12;
  *&v64[36] = unk_277BB8B14;
  *&v64[40] = unk_277BB8B18;
  v65 = xmmword_277BB8B00;
  strcpy(v64, "@@@@@@@@@@@@@@@@+9>@@@@@@@@@@@@@");
  v4 = 0x40u;
  do
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      memcpy(v1, &a20591468023457[-v3 + 126], v3 + 64);
      memset(&v1[v3 + 64], 64, -v3);
      v5 = v3 - 1;
      v6 = (v0 << 6) | 0x40;
      v7 = &unk_280A73FB0 + v6 + 12288;
LABEL_4:
      v8 = 1 - v3;
      v9 = v3 + 63;
      memcpy(v7, &unk_277BB8AC0 + v8, v9);
      memset(&v7[v9], 64, v8);
      goto LABEL_7;
    }

    memcpy(&v1[v3], "", 64 - v3);
    bzero(v1, v3);
    v7 = v1 + 64;
    if (!v3)
    {
      v5 = -1;
      v6 = v4;
      goto LABEL_4;
    }

    v5 = v3 - 1;
    memcpy(&v1[v3 + 63], &unk_277BB8AC0, 65 - v3);
    bzero(v1 + 64, v3 - 1);
    v6 = v4;
LABEL_7:
    v3 = v5;
    v10 = (v1 - 0x2000);
    *v10 = v65;
    v10[1] = *&v64[32];
    v10[2] = *&v64[16];
    v10[3] = *v64;
    v11 = (&unk_280A73FB0 + v6);
    v11[256] = v65;
    v11[257] = *&v64[32];
    v0 += 2;
    v2 += 2;
    v11[258] = *&v64[16];
    v1 += 128;
    v4 += 128;
    v11[259] = *v64;
  }

  while (v2 < 0x3E);
  v12 = 0;
  v13 = 0;
  v14 = 0xA03Fu;
  v15 = 0x403Fu;
  v16 = 0xBFC0u;
  v17 = 0x5FC0u;
  do
  {
    v18 = v12;
    v19 = v13;
    v20 = v17;
    v21 = v16;
    v22 = v15;
    v23 = v14;
    v24 = 64;
    do
    {
      v25 = &unk_280A73FB0 + v18;
      v26 = *(&unk_280A73FB0 + v18 + 12288);
      v27 = &unk_280A73FB0 + v19;
      v27[0x2000] = v26;
      *(&unk_280A73FB0 + v20) = 64 - v26;
      *(&unk_280A73FB0 + v22) = 64 - v26;
      v27[0x8000] = 64 - v26;
      v25[36864] = 64 - v26;
      *(&unk_280A73FB0 + v21) = v26;
      *(&unk_280A73FB0 + v23) = v26;
      v28 = *(&unk_280A73FB0 + v18 + 4096);
      v27[24576] = 64 - v28;
      *v27 = v28;
      v25[28672] = 64 - v28;
      --v23;
      --v22;
      v21 -= 64;
      v20 -= 64;
      v19 += 64;
      ++v18;
      --v24;
    }

    while (v24);
    ++v13;
    v14 += 64;
    v15 += 64;
    ++v16;
    ++v17;
    v12 += 64;
  }

  while (v13 != 64);
  bzero(&unk_280A729A8, 0x1600uLL);
  v29 = 0;
  v30 = &unk_280A7FFB0;
  do
  {
    v31 = &dword_27A722360[8 * v29];
    v32 = *v31;
    v63 = v29;
    if (v32 > 0)
    {
      v33 = byte_277C3CAFE[v29];
      v34 = byte_277C3CAE8[v29];
      v35 = *(v31 + 2);
      *&v64[32] = 8 * v34;
      LODWORD(v65) = v34;
      *&v64[16] = (v34 * v33);
      v36 = (*(v31 + 1) + 8);
      v37 = 128;
      *v64 = v31;
      do
      {
        v38 = *&v64[32];
        v39 = v65;
        sub_277BB3A8C(&unk_280A73FB0 + 24576 * *v35 + 4096 * *(v36 - 8) + (2048 - ((*v36 * *&v64[32]) & 0xFFFFFFC0)) - ((*(v36 - 1) * v33) >> 3) + 32, 64, v30, v33, v33, v65);
        v40 = (*(v31 + 3) + v37);
        *(v40 - 16) = v30;
        v41 = *&v64[16];
        v42 = (v30 + *&v64[16]);
        v43 = *v35++;
        sub_277BB3A8C(&unk_280A73FB0 + 24576 * (v43 ^ 1u) + 4096 * *(v36 - 8) + (2048 - ((*v36 * v38) & 0xFFFFFFC0)) - ((*(v36 - 1) * v33) >> 3) + 32, 64, v42, v33, v33, v39);
        *v40 = v42;
        v31 = *v64;
        v30 = (v42 + v41);
        v37 += 8;
        v36 += 3;
        --v32;
      }

      while (v32);
    }

    v29 = v63 + 1;
  }

  while (v63 != 21);
  v44 = 0;
  do
  {
    v45 = 0;
    v46 = &unk_280A9FFB0 + 22528 * v44;
    *&v65 = v44;
    v47 = v44;
    do
    {
      if ((((0x20F800uLL >> v45) | (0x10F400uLL >> v45)) & 1) == 0)
      {
        v48 = byte_277C3CAFE[v45];
        v49 = byte_277C3CAE8[v45];
        v50 = byte_277BB8B40[v45];
        v51 = &v46[1024 * v45];
        switch(v47)
        {
          case 1:
            if (v49 <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = byte_277C3CAE8[v45];
            }

            v61 = byte_277BB8B56;
            do
            {
              memset(v51, *v61, v48);
              v51 += v48;
              v61 += v50;
              --v60;
            }

            while (v60);
            break;
          case 2:
            v56 = 0;
            if (v48 <= 1)
            {
              v57 = 1;
            }

            else
            {
              v57 = byte_277C3CAFE[v45];
            }

            if (v49 <= 1)
            {
              v49 = 1;
            }

            do
            {
              v58 = 0;
              v59 = byte_277BB8B56;
              do
              {
                v51[v58++] = *v59;
                v59 += v50;
              }

              while (v57 != v58);
              v51 += v48;
              ++v56;
            }

            while (v56 != v49);
            break;
          case 3:
            v52 = 0;
            if (v48 <= 1)
            {
              v53 = 1;
            }

            else
            {
              v53 = byte_277C3CAFE[v45];
            }

            if (v49 <= 1)
            {
              v49 = 1;
            }

            do
            {
              v54 = 0;
              do
              {
                if (v52 >= v54)
                {
                  v55 = v54;
                }

                else
                {
                  v55 = v52;
                }

                v51[v54++] = byte_277BB8B56[v50 * v55];
              }

              while (v53 != v54);
              v51 += v48;
              ++v52;
            }

            while (v52 != v49);
            break;
          default:
            if (v49 <= 1)
            {
              v62 = 1;
            }

            else
            {
              v62 = byte_277C3CAE8[v45];
            }

            do
            {
              memset(v51, 32, v48);
              v51 += v48;
              --v62;
            }

            while (v62);
            break;
        }
      }

      ++v45;
    }

    while (v45 != 22);
    v44 = v65 + 1;
  }

  while (v65 != 3);
}

uint64_t sub_27798E17C(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, int a6)
{
  if (!a6 || (*(a2 + 167) & 0x200) != 0)
  {
    *a3 = 8;
    *a4 = 8;
    *a5 = 0;
    return result;
  }

  *a5 = 1;
  v6 = *(a2 + 16);
  if ((v6 - 1) > 7 || (v7 = *(result + 4 * (v6 - 1) + 240), v7 == -1))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(result + 8 * v7 + 416);
  }

  v9 = *(a2 + 17);
  if ((v9 - 1) <= 7)
  {
    v10 = *(result + 4 * (v9 - 1) + 240);
    if (v10 != -1)
    {
      v11 = *(result + 8 * v10 + 416);
      if (!v8)
      {
        goto LABEL_11;
      }

LABEL_14:
      v12 = *(v8 + 4);
      if (!v11)
      {
        goto LABEL_12;
      }

LABEL_15:
      v13 = *(v11 + 4);
      goto LABEL_16;
    }
  }

  v11 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 0;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_12:
  v13 = 0;
LABEL_16:
  v14 = *(result + 24696);
  if (*(v14 + 40))
  {
    v15 = *(*(result + 232) + 4);
    v16 = 1 << *(v14 + 44);
    v17 = ((v16 - 1) & (v13 - v15)) - (v16 & (v13 - v15));
    if ((v17 & 0x80000000) != 0)
    {
      v17 = -v17;
    }

    if (v17 >= 0x1F)
    {
      v17 = 31;
    }

    v18 = ((v16 - 1) & (v15 - v12)) - (v16 & (v15 - v12));
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = -v18;
  }

  if (v19 >= 0x1F)
  {
    v20 = 31;
  }

  else
  {
    v20 = v19;
  }

  v21 = v19 >= v17;
  if (v17 && v18)
  {
    v22 = 0;
    v23 = v19 < v17;
    v24 = (&unk_277BB89E0 + 4 * v23);
    v25 = (&unk_277BB89E0 + 4 * v21);
    do
    {
      v27 = *v25;
      v25 += 2;
      v26 = v27;
      v28 = *v24;
      v24 += 2;
      result = v19 >= v17;
      v29 = v26 * v17;
      v30 = v29 < v28 * v20;
      v31 = v29 > v28 * v20 && v19 >= v17;
      if (v30 && v19 < v17)
      {
        break;
      }

      if (v31)
      {
        break;
      }

      ++v22;
    }

    while (v22 != 3);
    v33 = &unk_277BB89C0 + 8 * v22;
    *a3 = *&v33[4 * v21];
    v34 = &v33[4 * v23];
  }

  else
  {
    *a3 = dword_277BB89D8[v21];
    v34 = &dword_277BB89D8[v19 < v17];
  }

  *a4 = *v34;
  return result;
}

uint64_t sub_27798E348(uint64_t result, char a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a7 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a7;
  }

  if (v7 > a6)
  {
    v8 = a3 + 40;
    v9 = a3 + 16;
    v10 = a3 + 24;
    v11 = a3 + 32;
    v12 = (0x20005uLL >> a2) & 1;
    v13 = (0x10003uLL >> a2) & 1;
    v14 = a6;
    v15 = (result + 2608 * a6 + 40);
    do
    {
      v16 = *(v15 - 8);
      if (v16)
      {
        v17 = (a4 & 1) == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12;
      }

      v19 = a4 - v18;
      if (*(v15 - 9))
      {
        v20 = (a5 & 1) == 0;
      }

      else
      {
        v20 = 1;
      }

      v21 = *(v8 + 8 * v14);
      v22 = *(v9 + 4 * (v14 > 0));
      v23 = *(v10 + 4 * (v14 > 0));
      v24 = *(v11 + 4 * (v14 > 0));
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v13;
      }

      result = v21 + v24 * ((4 * v19) >> v16) + ((4 * (a5 - v25)) >> *(v15 - 9));
      *(v15 - 3) = result;
      *(v15 - 2) = v21;
      *(v15 - 2) = v22;
      *(v15 - 1) = v23;
      *v15 = v24;
      ++v14;
      v15 += 652;
    }

    while (v7 != v14);
  }

  return result;
}

uint64_t sub_27798E424(uint64_t result, unsigned int a2, uint64_t a3, int a4, int a5, int *a6, unsigned int a7)
{
  if (a3)
  {
    v7 = 0;
    if (a7 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = a7;
    }

    v9 = *(result + 7864);
    v10 = (a3 + 40);
    v11 = result + 32 * a2;
    do
    {
      _X20 = result + 7844 + v7;
      __asm { PRFM            #0, [X20] }

      v17 = *(result + v7 + 24);
      if (v17)
      {
        _ZF = (a4 & 1) == 0;
      }

      else
      {
        _ZF = 1;
      }

      v19 = **v9;
      v20 = (0x20005uLL >> v19) & 1;
      if (_ZF)
      {
        LODWORD(v20) = 0;
      }

      v21 = a4 - v20;
      if (*(result + v7 + 20))
      {
        v22 = (a5 & 1) == 0;
      }

      else
      {
        v22 = 1;
      }

      v23 = (0x10003uLL >> v19) & 1;
      if (v22)
      {
        LODWORD(v23) = 0;
      }

      v24 = (4 * (a5 - v23)) >> *(result + v7 + 20);
      v25 = (4 * v21) >> v17;
      if (a6)
      {
        v26 = *a6;
        if (*a6 != -1)
        {
          v27 = a6[1];
          if (v27 != -1 && (v26 != 0x4000 || v27 != 0x4000))
          {
            v28 = 8 * v26 - 0x20000 + v26 * v24;
            if (v28 < 0)
            {
              v29 = -((128 - v28) >> 8);
            }

            else
            {
              v29 = (v28 + 128) >> 8;
            }

            v24 = v29 >> 6;
            v30 = 8 * v27 - 0x20000 + v27 * v25;
            if (v30 < 0)
            {
              v31 = -((128 - v30) >> 8);
            }

            else
            {
              v31 = (v30 + 128) >> 8;
            }

            v25 = v31 >> 6;
          }
        }
      }

      v32 = v11 + v7;
      v33 = *v10++;
      v34 = *(a3 + 16 + 4 * (v7 != 0));
      v35 = *(a3 + 24 + 4 * (v7 != 0));
      v36 = *(a3 + 32 + 4 * (v7 != 0));
      *(v32 + 64) = v33 + v36 * v25 + v24;
      *(v32 + 72) = v33;
      *(v32 + 80) = v34;
      *(v32 + 84) = v35;
      *(v32 + 88) = v36;
      v7 += 2608;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *sub_27798E5AC(int a1)
{
  if (a1 <= 7)
  {
    if (a1 == 1)
    {
      return &unk_277BB8A00;
    }

    if (a1 != 2)
    {
      if (a1 == 4)
      {
        return "'2;@$*059=@@%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
      }

      return 0;
    }

    return "-@'2;@$*059=@@%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
  }

  else if (a1 > 31)
  {
    if (a1 != 32)
    {
      if (a1 == 64)
      {
        return "!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
      }

      return 0;
    }

    return "!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
  }

  else
  {
    if (a1 != 8)
    {
      if (a1 == 16)
      {
        return "%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
      }

      return 0;
    }

    return "$*059=@@%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
  }
}

uint64_t sub_27798E650(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 7864);
  v3 = *v2;
  v3[26] = 0;
  v4 = *v3;
  v5 = byte_277C3CAFE[v4];
  v6 = byte_277C3CAE8[v4];
  if (v5 < v6)
  {
    v6 = v5;
  }

  if (v6 >= 8)
  {
    if (*(a2 + 7872) != 1)
    {
      goto LABEL_26;
    }

    v7 = *(a2 + 4);
    v8 = v7 + *(a2 + 8308);
    if (v8 >= *(result + 536))
    {
      v8 = *(result + 536);
    }

    if (v7 >= v8)
    {
      goto LABEL_26;
    }

    v9 = 0;
    v10 = 0;
    v11 = &(&v2[-v7])[-*(a2 + 8)];
    do
    {
      v12 = (v11 + 8 * v7);
      v13 = **v12;
      if ((0x1F07FFuLL >> v13))
      {
        v14 = byte_277C3F990[v13];
      }

      else
      {
        v14 = 16;
      }

      v15 = v7;
      v16 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v17 = v14 == 1;
      if (v14 == 1)
      {
        v18 = 2;
      }

      else
      {
        v18 = v14;
      }

      if (v14 == 1)
      {
        v19 = v16;
      }

      else
      {
        v19 = v15;
      }

      if (v17)
      {
        v12 = (v11 + 8 + 8 * v16);
      }

      v20 = *v12;
      if ((*(v20 + 167) & 0x80) != 0 || *(v20 + 16) >= 1)
      {
        ++v10;
        v3[26] = ++v9;
      }

      LODWORD(v7) = v19 + v18;
    }

    while (v7 < v8 && v10 != 0x7FFFFFFF);
    if (!v9)
    {
LABEL_26:
      if (*(a2 + 7873) == 1)
      {
        v21 = *a2;
        v22 = *a2 + *(a2 + 8309);
        if (v22 >= *(result + 532))
        {
          v22 = *(result + 532);
        }

        if (v21 < v22)
        {
          v23 = 0;
          v24 = 0;
          v25 = *(a2 + 7864) - 8 * *(a2 + 8) * v21 - 8;
          do
          {
            v26 = *(a2 + 8);
            v27 = *(v25 + 8 * v26 * v21);
            v28 = *v27;
            if ((0x2F0BFFuLL >> v28))
            {
              if ((0x20005uLL >> v28))
              {
                v29 = v21 | 1;
                v21 &= ~1u;
                v27 = *(v25 + 8 * v26 * v29);
                result = 2;
              }

              else
              {
                result = byte_277C36D60[v28];
              }
            }

            else
            {
              result = 16;
            }

            if ((*(v27 + 167) & 0x80) != 0 || v27[16] >= 1)
            {
              ++v24;
              v3[26] = ++v23;
            }

            v21 += result;
          }

          while (v21 < v22 && v24 != 0x7FFFFFFF);
        }
      }
    }
  }

  return result;
}

int8x8_t *sub_27798E850(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v170 = result;
  v6 = *(a2 + 7864);
  v169 = **v6;
  v183 = (a2 + 7872);
  if (*(a2 + 7872) == 1)
  {
    v171 = *(a2 + 4);
    v7 = v171 + *(a2 + 8308);
    if (v7 >= result[67].i32[0])
    {
      v7 = result[67].i32[0];
    }

    v175 = v7;
    if (((0x3EFFFCuLL >> v169) & 1) != 0 && v171 < v7)
    {
      v8 = 0;
      v172 = dword_277C31E5C[byte_277C42228[v169]];
      v173 = &(&v6[-v171])[-*(a2 + 8)];
      v9 = a2 + 16;
      if (*(*&result[3087] + 77))
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      v11 = *(a2 + 4);
      v184 = v10;
      do
      {
        v12 = **(v173 + 8 * v11);
        if ((0x1F07FFuLL >> v12))
        {
          v13 = byte_277C3F990[v12];
        }

        else
        {
          v13 = 16;
        }

        v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
        v15 = v173 + 8 + 8 * v14;
        v16 = v13 == 1;
        if (v13 == 1)
        {
          v13 = 2;
        }

        else
        {
          LODWORD(v14) = v11;
        }

        if (v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = (v173 + 8 * v11);
        }

        v18 = *v17;
        if ((*(v18 + 167) & 0x80) != 0 || *(v18 + 16) >= 1)
        {
          v179 = v13;
          if (v183[436] >= v13)
          {
            v19 = v13;
          }

          else
          {
            v19 = v183[436];
          }

          v20 = ***(a2 + 7864);
          if ((0x2F0BFFuLL >> v20))
          {
            v21 = byte_277C3CAE8[v20] >> 1;
          }

          else
          {
            v21 = 32;
          }

          v197 = v21;
          v22 = 0;
          v181 = v8 + 1;
          v177 = v14;
          v193 = 4 * (v14 - v171);
          v195 = 4 * v19;
          v23 = &byte_277C3BCDE[4 * v20];
          v190 = v23;
          do
          {
            v24 = v9 + 2608 * v22;
            v25 = *(v24 + 4);
            v26 = *(v24 + 8);
            if (v23[2 * v25 + v26] >= 3u)
            {
              v27 = v195 >> v25;
              v28 = v197 >> v26;
              v29 = v193 >> v25;
              v30 = *(v24 + 40);
              v31 = *(v24 + 40);
              v32 = (*(v24 + 16) + v29);
              v33 = *(a4 + 4 * v22);
              v34 = *(a4 + 4 * v22);
              v35 = (*(a3 + 8 * v22) + v29);
              result = sub_27798E5AC(v28);
              if ((*(*(a2 + 7960) + 192) & 8) != 0)
              {
                v42 = (2 * v32);
                v43 = (2 * v35);
                if (v27 < 8)
                {
                  v10 = v184;
                  v56.i64[0] = 0x40004000400040;
                  v56.i64[1] = 0x40004000400040;
                  v37.i64[0] = 0x40004000400040;
                  v23 = v190;
                  if (v27 == 4)
                  {
                    do
                    {
                      v57 = vdup_n_s16(result->u8[0]);
                      v58 = vdup_n_s16(result->u8[1]);
                      *v59.i8 = v57;
                      v59.u64[1] = v58;
                      v60 = vsubq_s16(v56, v59);
                      v61 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v43, *v60.i8), *v42, v57), 6uLL), vmlal_u16(vmull_u16(*(v43 + 2 * v33), *&vextq_s8(v60, v60, 8uLL)), *(v42 + 2 * v30), v58), 6uLL);
                      *v42 = *v61.i8;
                      *(v42 + 2 * v30) = v61.u64[1];
                      v42 = (v42 + 2 * (2 * v30));
                      v43 = (v43 + 2 * (2 * v33));
                      result = (result + 2);
                      LODWORD(v28) = v28 - 2;
                    }

                    while (v28);
                  }

                  else if (v27 == 2 && v28 >= 8)
                  {
                    do
                    {
                      v78 = result->u16[0];
                      result = (result + 2);
                      v36.i32[0] = v78;
                      v79 = vzip1_s8(*v36.i8, *v36.i8);
                      v80.i32[0] = v42->i32[0];
                      v80.i32[1] = *(v42->i32 + 2 * v30);
                      v81.i32[0] = v43->i32[0];
                      v81.i32[1] = *(v43->i32 + 2 * v33);
                      *v36.i8 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(v37, v79), v81), *&vmovl_u8(v79), v80), 6uLL);
                      v42->i32[0] = v36.i32[0];
                      *(v42->i32 + 2 * v30) = v36.i32[1];
                      v42 = (v42 + 2 * (2 * v30));
                      v43 = (v43 + 2 * (2 * v33));
                      LODWORD(v28) = v28 - 2;
                    }

                    while (v28);
                  }

                  else if (v28)
                  {
                    v63 = 0;
                    v64 = 0;
                    for (i = 0; i != v28; ++i)
                    {
                      if (v27)
                      {
                        v66 = result->u8[i];
                        v67 = v63;
                        v68 = v64;
                        v69 = v27;
                        do
                        {
                          v42->i16[v67] = ((64 - v66) * v43->u16[v68++] + v42->u16[v67] * v66 + 32) >> 6;
                          ++v67;
                          --v69;
                        }

                        while (v69);
                      }

                      v64 += v34;
                      v63 += v31;
                    }
                  }
                }

                else
                {
                  v10 = v184;
                  v44.i64[0] = 0x40004000400040;
                  v44.i64[1] = 0x40004000400040;
                  v23 = v190;
                  do
                  {
                    v45 = 0;
                    v46 = 0;
                    v47 = vld1_dup_s8(result);
                    v48 = vmovl_u8(v47);
                    v49 = vsubw_u8(v44, v47);
                    do
                    {
                      *v42[v45].i8 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v43[v45], *v49.i8), v42[v45], *v48.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v43[v45].i8, v49), *v42[v45].i8, v48), 6uLL);
                      v46 += 8;
                      v45 += 2;
                    }

                    while (v46 < v27);
                    result = (result + 1);
                    v43 = (v43 + 2 * v33);
                    v42 = (v42 + 2 * v30);
                    LODWORD(v28) = v28 - 1;
                  }

                  while (v28);
                }
              }

              else if (v27 < 9)
              {
                v10 = v184;
                v23 = v190;
                if (v27 == 8)
                {
                  do
                  {
                    v55 = vld1_dup_s8(result);
                    result = (result + 1);
                    *v32 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v55), *v35), v55, *v32), 6uLL);
                    v32 = (v32 + v30);
                    v35 = (v35 + v33);
                    LODWORD(v28) = v28 - 1;
                  }

                  while (v28);
                }

                else if (v27 == 4)
                {
                  do
                  {
                    v50 = result;
                    v51.i32[0] = vld1_dup_s8(v50).u32[0];
                    v50 = (v50 + 1);
                    v52 = vld1_dup_s8(v50);
                    v51.i32[1] = v52.i32[1];
                    v52.i32[0] = v32->i32[0];
                    v52.i32[1] = *(v32->i32 + v30);
                    v53.i32[0] = v35->i32[0];
                    v53.i32[1] = *(v35->i32 + v33);
                    v54 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v51), v53), v51, v52), 6uLL);
                    v32->i32[0] = v54.i32[0];
                    *(v32->i32 + v30) = v54.i32[1];
                    result = (result + 2);
                    v32 = (v32 + (2 * v31));
                    v35 = (v35 + (2 * v34));
                    LODWORD(v28) = v28 - 2;
                  }

                  while (v28);
                }

                else if (v27 == 2 && v28 >= 0x10)
                {
                  v83 = v32;
                  do
                  {
                    v85 = result->u16[0];
                    result = (result + 2);
                    v86 = vzip1_s8(v85, v85);
                    v87 = vld1_dup_s16(v83);
                    v82 = (2 * v31);
                    v83 = (v83 + v82);
                    v87.i16[1] = *(v32->i16 + v31);
                    v88 = (v35 + v34);
                    v89 = vld1_dup_s16(v35);
                    v84 = (2 * v33);
                    v35 = (v35 + v84);
                    v89.i16[1] = *v88;
                    v86.i32[0] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v86), v89), v86, v87), 6uLL).u32[0];
                    v32->i16[0] = v86.i16[0];
                    *(v32->i16 + v30) = v86.i16[1];
                    v32 = v83;
                    LODWORD(v28) = v28 - 2;
                  }

                  while (v28);
                }

                else if (v28)
                {
                  v71 = 0;
                  v72 = 0;
                  for (j = 0; j != v28; ++j)
                  {
                    if (v27)
                    {
                      v74 = result->u8[j];
                      v75 = v71;
                      v76 = v72;
                      v77 = v27;
                      do
                      {
                        v32->i8[v75] = ((64 - v74) * v35->u8[v76++] + v32->u8[v75] * v74 + 32) >> 6;
                        ++v75;
                        --v77;
                      }

                      while (v77);
                    }

                    v72 += v34;
                    v71 += v31;
                  }
                }
              }

              else
              {
                v10 = v184;
                v38.i64[0] = 0x4040404040404040;
                v38.i64[1] = 0x4040404040404040;
                v23 = v190;
                do
                {
                  v39 = 0;
                  v36.i8[0] = result->i8[0];
                  v40 = vsubq_s8(v38, v36).u64[0];
                  v36 = vdupq_lane_s8(*v36.i8, 0);
                  v41 = vdupq_lane_s8(v40, 0);
                  do
                  {
                    *v32[v39 / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, v35[v39 / 8]), *v36.i8, v32[v39 / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *v35[v39 / 8].i8), v36, *v32[v39 / 8].i8), 6uLL);
                    v39 += 16;
                  }

                  while (v39 < v27);
                  result = (result + 1);
                  v32 = (v32 + v30);
                  v35 = (v35 + v33);
                  LODWORD(v28) = v28 - 1;
                }

                while (v28);
              }
            }

            ++v22;
          }

          while (v22 != v10);
          v8 = v181;
          LODWORD(v14) = v177;
          v13 = v179;
        }

        v11 = v14 + v13;
      }

      while ((v14 + v13) < v175 && v8 < v172);
    }
  }

  if (v183[1] == 1)
  {
    v174 = *a2;
    v90 = *a2 + v183[437];
    if (v90 >= v170[66].i32[1])
    {
      v90 = v170[66].i32[1];
    }

    v178 = v90;
    if (((0x3DFFFAuLL >> v169) & 1) != 0 && v174 < v90)
    {
      v91 = 0;
      v176 = dword_277C31E5C[byte_277C3CFCC[v169]];
      v180 = *(a2 + 7864) - 8 * *(a2 + 8) * v174 - 8;
      v92 = 3;
      if (*(*&v170[3087] + 77))
      {
        v92 = 1;
      }

      v189 = v92;
      v93 = *a2;
      do
      {
        v94 = *(a2 + 8);
        v95 = *(v180 + 8 * v94 * v93);
        v96 = *v95;
        if ((0x2F0BFFuLL >> v96))
        {
          if ((0x20005uLL >> v96))
          {
            v98 = v93 | 1;
            v93 &= ~1u;
            v95 = *(v180 + 8 * v94 * v98);
            v97 = 2;
          }

          else
          {
            v97 = byte_277C36D60[v96];
          }
        }

        else
        {
          v97 = 16;
        }

        if ((*(v95 + 167) & 0x80) != 0 || v95[16] >= 1)
        {
          v99 = v183[437];
          if (v99 >= v97)
          {
            v99 = v97;
          }

          v100 = ***(a2 + 7864);
          v182 = v97;
          if ((0x1F07FFuLL >> v100))
          {
            v101 = byte_277C3CAFE[v100] >> 1;
          }

          else
          {
            v101 = 32;
          }

          v198 = v101;
          v102 = 0;
          v187 = v91 + 1;
          v185 = v93;
          v194 = 4 * (v93 - v174);
          v196 = 4 * v99;
          do
          {
            v103 = a2 + 16 + 2608 * v102;
            v104 = *(v103 + 8);
            v105 = v198 >> *(v103 + 4);
            v106 = v196 >> v104;
            v107 = *(v103 + 40);
            v108 = (*(v103 + 16) + v107 * (v194 >> v104));
            v109 = *(a6 + 4 * v102);
            v110 = (*(a5 + 8 * v102) + v109 * (v194 >> v104));
            result = sub_27798E5AC(v198 >> *(v103 + 4));
            if ((*(*(a2 + 7960) + 192) & 8) != 0)
            {
              v116 = (2 * v108);
              v117 = (2 * v110);
              v118.i64[0] = 0x40004000400040;
              v118.i64[1] = 0x40004000400040;
              if (v105 < 8)
              {
                if (v105 == 4)
                {
                  v126 = vld1_dup_f32(result);
                  v127 = vmovl_u8(v126);
                  v128 = vsubw_u8(v118, v126);
                  v129 = vextq_s8(v127, v127, 8uLL).u64[0];
                  v130 = vextq_s8(v128, v128, 8uLL).u64[0];
                  do
                  {
                    v131 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v117, *v128.i8), *v116, *v127.i8), 6uLL), vmlal_u16(vmull_u16(*(v117 + 2 * v109), v130), *(v116 + 2 * v107), v129), 6uLL);
                    *v116 = *v131.i8;
                    *(v116 + 2 * v107) = v131.u64[1];
                    v116 = (v116 + 2 * (2 * v107));
                    v117 = (v117 + 2 * (2 * v109));
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v105 == 2 && v106 >= 8)
                {
                  v155 = vld1_dup_s16(result);
                  v156 = vmovl_u8(v155).u64[0];
                  v111.i64[0] = 0x40004000400040;
                  v157 = vsubw_u8(v111, v155).u64[0];
                  do
                  {
                    v158.i32[0] = v116->i32[0];
                    v158.i32[1] = *(v116->i32 + 2 * v107);
                    v159.i32[0] = v117->i32[0];
                    v159.i32[1] = *(v117->i32 + 2 * v109);
                    v160 = vrshrn_n_s32(vmlal_u16(vmull_u16(v157, v159), v156, v158), 6uLL);
                    v116->i32[0] = v160.i32[0];
                    *(v116->i32 + 2 * v107) = v160.i32[1];
                    v116 = (v116 + 2 * (2 * v107));
                    v117 = (v117 + 2 * (2 * v109));
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v106)
                {
                  v133 = 0;
                  v134 = 0;
                  for (k = 0; k != v106; ++k)
                  {
                    if (v105)
                    {
                      v136 = result;
                      v137 = v133;
                      v138 = v134;
                      v139 = v105;
                      do
                      {
                        v140 = v136->u8[0];
                        v136 = (v136 + 1);
                        v116->i16[v137] = ((64 - v140) * v117->u16[v138++] + v116->u16[v137] * v140 + 32) >> 6;
                        ++v137;
                        --v139;
                      }

                      while (v139);
                    }

                    v134 += v109;
                    v133 += v107;
                  }
                }
              }

              else
              {
                do
                {
                  v119 = 0;
                  for (m = 0; m < v105; m += 8)
                  {
                    v121 = result[m / 8];
                    v122 = vmovl_u8(v121);
                    v123 = vsubw_u8(v118, v121);
                    *v116[v119].i8 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v117[v119], *v123.i8), v116[v119], *v122.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v117[v119].i8, v123), *v116[v119].i8, v122), 6uLL);
                    v119 += 2;
                  }

                  v117 = (v117 + 2 * v109);
                  v116 = (v116 + 2 * v107);
                  --v106;
                }

                while (v106);
              }
            }

            else
            {
              v112.i64[0] = 0x4040404040404040;
              v112.i64[1] = 0x4040404040404040;
              if (v105 < 9)
              {
                if (v105 == 4)
                {
                  v141 = vld1_dup_f32(result);
                  v142 = vsub_s8(0x4040404040404040, v141);
                  do
                  {
                    v143.i32[0] = v108->i32[0];
                    v143.i32[1] = *(v108->i32 + v107);
                    v144.i32[0] = v110->i32[0];
                    v144.i32[1] = *(v110->i32 + v109);
                    v145 = vrshrn_n_s16(vmlal_u8(vmull_u8(v142, v144), v141, v143), 6uLL);
                    v108->i32[0] = v145.i32[0];
                    *(v108->i32 + v107) = v145.i32[1];
                    v108 = (v108 + (2 * v107));
                    v110 = (v110 + (2 * v109));
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v105 == 8)
                {
                  v124 = *result;
                  v125 = vsub_s8(0x4040404040404040, *result);
                  do
                  {
                    *v108 = vrshrn_n_s16(vmlal_u8(vmull_u8(v125, *v110), v124, *v108), 6uLL);
                    v108 = (v108 + v107);
                    v110 = (v110 + v109);
                    --v106;
                  }

                  while (v106);
                }

                else if (v105 == 2 && v106 >= 0x10)
                {
                  v161 = vld1_dup_s16(result);
                  v162 = vsub_s8(0x4040404040404040, v161);
                  v165 = v108;
                  do
                  {
                    v166 = vld1_dup_s16(v165);
                    v163 = (2 * v107);
                    v165 = (v165 + v163);
                    v166.i16[1] = *(v108->i16 + v107);
                    v167 = (v110 + v109);
                    v168 = vld1_dup_s16(v110);
                    v164 = (2 * v109);
                    v110 = (v110 + v164);
                    v168.i16[1] = *v167;
                    v166.i32[0] = vrshrn_n_s16(vmlal_u8(vmull_u8(v162, v168), v161, v166), 6uLL).u32[0];
                    v108->i16[0] = v166.i16[0];
                    *(v108->i16 + v107) = v166.i16[1];
                    v108 = v165;
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v106)
                {
                  v147 = 0;
                  v148 = 0;
                  for (n = 0; n != v106; ++n)
                  {
                    if (v105)
                    {
                      v150 = result;
                      v151 = v147;
                      v152 = v148;
                      v153 = v105;
                      do
                      {
                        v154 = v150->u8[0];
                        v150 = (v150 + 1);
                        v108->i8[v151] = ((64 - v154) * v110->u8[v152++] + v108->u8[v151] * v154 + 32) >> 6;
                        ++v151;
                        --v153;
                      }

                      while (v153);
                    }

                    v148 += v109;
                    v147 += v107;
                  }
                }
              }

              else
              {
                do
                {
                  for (ii = 0; ii < v105; ii += 16)
                  {
                    v114 = *result[ii / 8].i8;
                    v115 = vsubq_s8(v112, v114);
                    *v108[ii / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v115.i8, v110[ii / 8]), *v114.i8, v108[ii / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v115, *v110[ii / 8].i8), v114, *v108[ii / 8].i8), 6uLL);
                  }

                  v108 = (v108 + v107);
                  v110 = (v110 + v109);
                  --v106;
                }

                while (v106);
              }
            }

            ++v102;
          }

          while (v102 != v189);
          v91 = v187;
          v93 = v185;
          v97 = v182;
        }

        v93 += v97;
      }

      while (v93 < v178 && v91 < v176);
    }
  }

  return result;
}

int8x8_t *sub_27798F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v14 = v13;
  v15 = v12;
  __b[2048] = *MEMORY[0x277D85DE8];
  v17 = &result[326 * v16];
  v18 = byte_277C3BCDE[4 * v9 + 2 * v17[2].i32[1] + v17[3].i32[0]];
  v19 = **&result[983];
  v20 = *(v19 + 65);
  v21 = v17[4];
  v22 = byte_277C3CAFE[v18];
  v23 = v17[7].u32[0];
  v24 = byte_277C3CAE8[v18];
  if ((*(*&result[995] + 192) & 8) != 0)
  {
    if ((*(v19 + 167) & 0x400) != 0)
    {
      if (dword_27A722360[8 * v9] >= 1)
      {
        LODWORD(v45) = v22 == 2 * byte_277C3F990[v9];
        HIDWORD(v45) = v24 == 2 * byte_277C36D60[v9];
        return sub_277A7D91C(v21, v23, v12, v13, v10, v11, *(*&dword_27A722360[8 * v9 + 6] + 8 * v20), byte_277C3CAFE[v9], v22, v24, v45);
      }
    }

    else
    {
      v46 = v10;
      v47 = v11;
      v25 = *(v19 + 64);
      v26 = byte_277BB8B40[v18];
      switch(v25)
      {
        case 1:
          if (v24 <= 1)
          {
            v39 = 1;
          }

          else
          {
            v39 = byte_277C3CAE8[v18];
          }

          v40 = __b;
          v41 = byte_277BB8B56;
          do
          {
            memset(v40, *v41, v22);
            v40 = (v40 + v22);
            v41 += v26;
            --v39;
          }

          while (v39);
          break;
        case 2:
          v33 = 0;
          if (v22 <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = byte_277C3CAFE[v18];
          }

          if (v24 <= 1)
          {
            v35 = 1;
          }

          else
          {
            v35 = byte_277C3CAE8[v18];
          }

          v36 = __b;
          do
          {
            v37 = 0;
            v38 = byte_277BB8B56;
            do
            {
              v36->i8[v37++] = *v38;
              v38 += v26;
            }

            while (v34 != v37);
            v36 = (v36 + v22);
            ++v33;
          }

          while (v33 != v35);
          break;
        case 3:
          v27 = 0;
          if (v22 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = byte_277C3CAFE[v18];
          }

          if (v24 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = byte_277C3CAE8[v18];
          }

          v30 = __b;
          do
          {
            v31 = 0;
            do
            {
              if (v27 >= v31)
              {
                v32 = v31;
              }

              else
              {
                v32 = v27;
              }

              v30->i8[v31++] = byte_277BB8B56[v26 * v32];
            }

            while (v28 != v31);
            v30 = (v30 + v22);
            ++v27;
          }

          while (v27 != v29);
          break;
        default:
          if (v24 <= 1)
          {
            v42 = 1;
          }

          else
          {
            v42 = byte_277C3CAE8[v18];
          }

          v43 = __b;
          do
          {
            memset(v43, 32, v22);
            v43 = (v43 + v22);
            --v42;
          }

          while (v42);
          break;
      }

      return sub_277A7D91C(v21, v23, v15, v14, v46, v47, __b, v22, v22, v24, 0);
    }
  }

  else if ((*(v19 + 167) & 0x400) != 0)
  {
    if (dword_27A722360[8 * v9] >= 1)
    {
      LODWORD(v44) = v22 == 2 * byte_277C3F990[v9];
      HIDWORD(v44) = v24 == 2 * byte_277C36D60[v9];
      return sub_277A862F8(v21, v23, v12, v13, v10, v11, *(*&dword_27A722360[8 * v9 + 6] + 8 * v20), byte_277C3CAFE[v9], v22, v24, v44);
    }
  }

  else
  {
    return sub_277A862F8(v21, v23, v12, v13, v10, v11, &qword_280A9FFB0[2816 * *(v19 + 64) + 128 * v18], v22, v22, v24, 0);
  }

  return result;
}

__n128 sub_27798F98C(uint64_t a1)
{
  v2 = *(a1 + 616);
  if (v2 >= 21)
  {
    if (v2 >= 0x3D)
    {
      if (v2 < 0x79)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  memcpy(*(a1 + 24704), &unk_277BB8BD6 + 390 * v3, 0x186uLL);
  memcpy((*(a1 + 24704) + 390), &unk_277BB91EE + 540 * v3, 0x21CuLL);
  v4 = *(a1 + 24704) + 930;
  v5 = &unk_277BB9A5E + 36 * v3;
  *(v4 + 32) = *(v5 + 8);
  *(v4 + 16) = *(v5 + 1);
  *v4 = *v5;
  memcpy((*(a1 + 24704) + 5990), &unk_277BB9AEE + 2100 * v3, 0x834uLL);
  memcpy((*(a1 + 24704) + 1790), &unk_277BBBBBE + 4200 * v3, 0x1068uLL);
  memcpy((*(a1 + 24704) + 1470), &unk_277BBFD5E + 320 * v3, 0x140uLL);
  v6 = (*(a1 + 24704) + 966);
  v7 = (&unk_277BC025E + 48 * v3);
  v6[2] = v7[2];
  v6[1] = v7[1];
  *v6 = *v7;
  v8 = *(a1 + 24704) + 1014;
  v9 = &unk_277BC031E + 56 * v3;
  *(v8 + 48) = *(v9 + 6);
  *(v8 + 32) = *(v9 + 2);
  *(v8 + 16) = *(v9 + 1);
  *v8 = *v9;
  v10 = (*(a1 + 24704) + 1070);
  v11 = &xmmword_277BC03FE[4 * v3];
  *v10 = *v11;
  v10[1] = v11[1];
  v10[2] = v11[2];
  v10[3] = v11[3];
  v12 = *(a1 + 24704) + 1134;
  v13 = &unk_277BC04FE + 72 * v3;
  *(v12 + 16) = *(v13 + 1);
  *(v12 + 32) = *(v13 + 2);
  *(v12 + 48) = *(v13 + 3);
  *(v12 + 64) = *(v13 + 8);
  *v12 = *v13;
  v14 = (*(a1 + 24704) + 1206);
  v15 = (&unk_277BC061E + 80 * v3);
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = *(a1 + 24704) + 1286;
  v17 = &unk_277BC075E + 88 * v3;
  *(v16 + 32) = *(v17 + 2);
  *(v16 + 48) = *(v17 + 3);
  *(v16 + 64) = *(v17 + 4);
  *(v16 + 80) = *(v17 + 10);
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 1);
  v18 = *(a1 + 24704) + 1374;
  v19 = &unk_277BC08BE + 96 * v3;
  *(v18 + 32) = *(v19 + 2);
  *(v18 + 48) = *(v19 + 3);
  *(v18 + 64) = *(v19 + 4);
  *(v18 + 80) = *(v19 + 5);
  *v18 = *v19;
  result = *(v19 + 1);
  *(v18 + 16) = result;
  return result;
}

int64x2_t sub_27798FC58(_WORD *a1)
{
  v1 = xmmword_277BB7090;
  v2 = vdupq_n_s64(0x41uLL);
  v3 = xmmword_277BB70A0;
  v4 = a1 + 8;
  v5 = vdupq_n_s64(4uLL);
  v6 = 68;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v2, v3)), *v1.i8).u8[0])
    {
      *(v4 - 6) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v3)), *&v1).i8[2])
    {
      *(v4 - 3) = 0;
    }

    if (vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v1))).i32[1])
    {
      *v4 = 0;
      v4[3] = 0;
    }

    v1 = vaddq_s64(v1, v5);
    v3 = vaddq_s64(v3, v5);
    v4 += 12;
    v6 -= 4;
  }

  while (v6);
  v7 = xmmword_277BB7070;
  v8 = xmmword_277BB7080;
  v9 = xmmword_277BB7090;
  v10 = xmmword_277BB70A0;
  v11 = a1 + 197;
  v12 = 96;
  v13 = vdupq_n_s64(0x5AuLL);
  v14 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v10)), *v7.i8), *v7.i8).u8[0])
    {
      *v11 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v10)), *&v7), *&v7).i8[1])
    {
      v11[3] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v9))), *&v7).i8[2])
    {
      v11[6] = 0;
      v11[9] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v8)), *&v7)).i32[1])
    {
      v11[12] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v8)), *&v7)).i8[5])
    {
      v11[15] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v7)))).i8[6])
    {
      v11[18] = 0;
      v11[21] = 0;
    }

    v8 = vaddq_s64(v8, v14);
    v9 = vaddq_s64(v9, v14);
    v10 = vaddq_s64(v10, v14);
    v11 += 24;
    v7 = vaddq_s64(v7, v14);
    v12 -= 8;
  }

  while (v12);
  v15 = xmmword_277BB70A0;
  v16 = a1 + 470;
  v17 = vdupq_n_s64(2uLL);
  v18 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v15)).u8[0])
    {
      *(v16 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v15)).i32[1])
    {
      *v16 = 0;
    }

    v15 = vaddq_s64(v15, v17);
    v16 += 6;
    v18 -= 2;
  }

  while (v18);
  v19 = 0;
  a1[488] = 0;
  a1[494] = 0;
  a1[500] = 0;
  a1[506] = 0;
  a1[513] = 0;
  a1[520] = 0;
  a1[527] = 0;
  a1[534] = 0;
  a1[542] = 0;
  a1[550] = 0;
  a1[558] = 0;
  a1[566] = 0;
  a1[575] = 0;
  a1[584] = 0;
  a1[593] = 0;
  a1[602] = 0;
  a1[612] = 0;
  a1[622] = 0;
  a1[632] = 0;
  a1[642] = 0;
  a1[653] = 0;
  a1[664] = 0;
  a1[675] = 0;
  a1[686] = 0;
  a1[698] = 0;
  a1[710] = 0;
  a1[722] = 0;
  a1[734] = 0;
  do
  {
    a1[v19 + 738] = 0;
    v19 += 4;
  }

  while (v19 != 160);
  v20 = xmmword_277BB7070;
  v21 = xmmword_277BB7080;
  v22 = xmmword_277BB7090;
  v23 = xmmword_277BB70A0;
  v24 = a1 + 899;
  v25 = 424;
  v26 = vdupq_n_s64(0x1A4uLL);
  v27 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v26, v23)), *v20.i8), *v20.i8).u8[0])
    {
      *v24 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v23)), *&v20), *&v20).i8[1])
    {
      v24[5] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v22))), *&v20).i8[2])
    {
      v24[10] = 0;
      v24[15] = 0;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v21)), *&v20)).i32[1])
    {
      v24[20] = 0;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v21)), *&v20)).i8[5])
    {
      v24[25] = 0;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v20)))).i8[6])
    {
      v24[30] = 0;
      v24[35] = 0;
    }

    v21 = vaddq_s64(v21, v27);
    v22 = vaddq_s64(v22, v27);
    v23 = vaddq_s64(v23, v27);
    v24 += 40;
    v20 = vaddq_s64(v20, v27);
    v25 -= 8;
  }

  while (v25);
  v28 = a1 + 2999;
  v29 = xmmword_277BB7070;
  v30 = xmmword_277BB7080;
  v31 = xmmword_277BB7090;
  v32 = xmmword_277BB70A0;
  v33 = 216;
  v34 = vdupq_n_s64(0xD2uLL);
  v35 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v34, v32)), *v29.i8), *v29.i8).u8[0])
    {
      *v28 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v32)), *&v29), *&v29).i8[1])
    {
      v28[5] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v31))), *&v29).i8[2])
    {
      v28[10] = 0;
      v28[15] = 0;
    }

    if (vuzp1_s8(*&v29, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v30)), *&v29)).i32[1])
    {
      v28[20] = 0;
    }

    if (vuzp1_s8(*&v29, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v30)), *&v29)).i8[5])
    {
      v28[25] = 0;
    }

    if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v29)))).i8[6])
    {
      v28[30] = 0;
      v28[35] = 0;
    }

    v30 = vaddq_s64(v30, v35);
    v31 = vaddq_s64(v31, v35);
    v32 = vaddq_s64(v32, v35);
    v28 += 40;
    v29 = vaddq_s64(v29, v35);
    v33 -= 8;
  }

  while (v33);
  v36 = a1 + 4050;
  v37 = xmmword_277BB70A0;
  v38 = vdupq_n_s64(2uLL);
  v39 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v37)).u8[0])
    {
      *(v36 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v37)).i32[1])
    {
      *v36 = 0;
    }

    v37 = vaddq_s64(v37, v38);
    v36 += 6;
    v39 -= 2;
  }

  while (v39);
  a1[4065] = 0;
  a1[4068] = 0;
  v40 = a1 + 4074;
  v41 = xmmword_277BB70A0;
  v42 = vdupq_n_s64(2uLL);
  v43 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v41)).u8[0])
    {
      *(v40 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v41)).i32[1])
    {
      *v40 = 0;
    }

    v41 = vaddq_s64(v41, v42);
    v40 += 6;
    v43 -= 2;
  }

  while (v43);
  v44 = 0;
  a1[4089] = 0;
  a1[4092] = 0;
  a1[4095] = 0;
  do
  {
    a1[v44 + 4104] = 0;
    v44 += 9;
  }

  while (v44 != 72);
  v45 = xmmword_277BB7070;
  v46 = xmmword_277BB7080;
  v47 = xmmword_277BB7090;
  v48 = xmmword_277BB70A0;
  v49 = 24;
  v50 = vdupq_n_s64(0x16uLL);
  v51 = a1 + 4182;
  v52 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v50, v48)), *v45.i8), *v45.i8).u8[0])
    {
      *(v51 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v48)), *&v45), *&v45).i8[1])
    {
      *(v51 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v47))), *&v45).i8[2])
    {
      *(v51 - 6) = 0;
      *(v51 - 3) = 0;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v46)), *&v45)).i32[1])
    {
      *v51 = 0;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v46)), *&v45)).i8[5])
    {
      v51[3] = 0;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v45)))).i8[6])
    {
      v51[6] = 0;
      v51[9] = 0;
    }

    v46 = vaddq_s64(v46, v52);
    v47 = vaddq_s64(v47, v52);
    v48 = vaddq_s64(v48, v52);
    v51 += 24;
    v45 = vaddq_s64(v45, v52);
    v49 -= 8;
  }

  while (v49);
  v53 = xmmword_277BB7070;
  v54 = xmmword_277BB7080;
  v55 = xmmword_277BB7090;
  v56 = xmmword_277BB70A0;
  v57 = a1 + 4318;
  v58 = 24;
  v59 = vdupq_n_s64(0x16uLL);
  v60 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v59, v56)), *v53.i8), *v53.i8).u8[0])
    {
      *(v57 - 68) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v56)), *&v53), *&v53).i8[1])
    {
      *(v57 - 51) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v55))), *&v53).i8[2])
    {
      *(v57 - 34) = 0;
      *(v57 - 17) = 0;
    }

    if (vuzp1_s8(*&v53, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v54)), *&v53)).i32[1])
    {
      *v57 = 0;
    }

    if (vuzp1_s8(*&v53, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v54)), *&v53)).i8[5])
    {
      v57[17] = 0;
    }

    if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v53)))).i8[6])
    {
      v57[34] = 0;
      v57[51] = 0;
    }

    v54 = vaddq_s64(v54, v60);
    v55 = vaddq_s64(v55, v60);
    v56 = vaddq_s64(v56, v60);
    v57 += 136;
    v53 = vaddq_s64(v53, v60);
    v58 -= 8;
  }

  while (v58);
  a1[4610] = 0;
  a1[4613] = 0;
  a1[4616] = 0;
  a1[4619] = 0;
  v61 = xmmword_277BB7070;
  v62 = xmmword_277BB7080;
  v63 = xmmword_277BB7090;
  v64 = xmmword_277BB70A0;
  v65 = a1 + 4634;
  v66 = 24;
  v67 = vdupq_n_s64(0x16uLL);
  v68 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v67, v64)), *v61.i8), *v61.i8).u8[0])
    {
      *(v65 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v64)), *&v61), *&v61).i8[1])
    {
      *(v65 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v61, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v63))), *&v61).i8[2])
    {
      *(v65 - 6) = 0;
      *(v65 - 3) = 0;
    }

    if (vuzp1_s8(*&v61, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v62)), *&v61)).i32[1])
    {
      *v65 = 0;
    }

    if (vuzp1_s8(*&v61, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v62)), *&v61)).i8[5])
    {
      v65[3] = 0;
    }

    if (vuzp1_s8(*&v61, vuzp1_s16(*&v61, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v61)))).i8[6])
    {
      v65[6] = 0;
      v65[9] = 0;
    }

    v62 = vaddq_s64(v62, v68);
    v63 = vaddq_s64(v63, v68);
    v64 = vaddq_s64(v64, v68);
    v65 += 24;
    v61 = vaddq_s64(v61, v68);
    v66 -= 8;
  }

  while (v66);
  a1[4690] = 0;
  a1[4695] = 0;
  a1[4700] = 0;
  a1[4705] = 0;
  v69 = xmmword_277BB7070;
  v70 = xmmword_277BB7080;
  v71 = xmmword_277BB7090;
  v72 = xmmword_277BB70A0;
  v73 = a1 + 4725;
  v74 = 24;
  v75 = vdupq_n_s64(0x16uLL);
  v76 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v75, v72)), *v69.i8), *v69.i8).u8[0])
    {
      *(v73 - 16) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v72)), *&v69), *&v69).i8[1])
    {
      *(v73 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v69, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v71))), *&v69).i8[2])
    {
      *(v73 - 8) = 0;
      *(v73 - 4) = 0;
    }

    if (vuzp1_s8(*&v69, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v70)), *&v69)).i32[1])
    {
      *v73 = 0;
    }

    if (vuzp1_s8(*&v69, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v70)), *&v69)).i8[5])
    {
      v73[4] = 0;
    }

    if (vuzp1_s8(*&v69, vuzp1_s16(*&v69, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v69)))).i8[6])
    {
      v73[8] = 0;
      v73[12] = 0;
    }

    v70 = vaddq_s64(v70, v76);
    v71 = vaddq_s64(v71, v76);
    v72 = vaddq_s64(v72, v76);
    v73 += 32;
    v69 = vaddq_s64(v69, v76);
    v74 -= 8;
  }

  while (v74);
  v77 = xmmword_277BB7070;
  v78 = xmmword_277BB7080;
  v79 = xmmword_277BB7090;
  v80 = xmmword_277BB70A0;
  v81 = a1 + 4808;
  v82 = 24;
  v83 = vdupq_n_s64(0x16uLL);
  v84 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v83, v80)), *v77.i8), *v77.i8).u8[0])
    {
      *(v81 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v80)), *&v77), *&v77).i8[1])
    {
      *(v81 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v77, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v79))), *&v77).i8[2])
    {
      *(v81 - 6) = 0;
      *(v81 - 3) = 0;
    }

    if (vuzp1_s8(*&v77, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v78)), *&v77)).i32[1])
    {
      *v81 = 0;
    }

    if (vuzp1_s8(*&v77, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v78)), *&v77)).i8[5])
    {
      v81[3] = 0;
    }

    if (vuzp1_s8(*&v77, vuzp1_s16(*&v77, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v77)))).i8[6])
    {
      v81[6] = 0;
      v81[9] = 0;
    }

    v78 = vaddq_s64(v78, v84);
    v79 = vaddq_s64(v79, v84);
    v80 = vaddq_s64(v80, v84);
    v81 += 24;
    v77 = vaddq_s64(v77, v84);
    v82 -= 8;
  }

  while (v82);
  a1[4867] = 0;
  a1[4875] = 0;
  a1[4883] = 0;
  a1[4891] = 0;
  a1[4899] = 0;
  a1[4907] = 0;
  a1[4915] = 0;
  a1[4923] = 0;
  a1[4931] = 0;
  a1[4939] = 0;
  a1[4947] = 0;
  a1[4955] = 0;
  a1[4963] = 0;
  v85 = a1 + 4974;
  v86 = 2;
  a1[4971] = 0;
  do
  {
    *v85 = 0;
    v85[9] = 0;
    v85[18] = 0;
    v85[27] = 0;
    v85[36] = 0;
    v85[315] = 0;
    v85[324] = 0;
    v85[333] = 0;
    ++v86;
    v85[342] = 0;
    v85[351] = 0;
    v85 += 46;
  }

  while (v86 != 9);
  v87 = xmmword_277BB7070;
  v88 = xmmword_277BB7080;
  v89 = xmmword_277BB7090;
  v90 = xmmword_277BB70A0;
  v91 = a1 + 5616;
  v92 = 24;
  v93 = vdupq_n_s64(0x15uLL);
  v94 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v93, v90)), *v87.i8), *v87.i8).u8[0])
    {
      *(v91 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v90)), *&v87), *&v87).i8[1])
    {
      *(v91 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v87, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v89))), *&v87).i8[2])
    {
      *(v91 - 6) = 0;
      *(v91 - 3) = 0;
    }

    if (vuzp1_s8(*&v87, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v88)), *&v87)).i32[1])
    {
      *v91 = 0;
    }

    if (vuzp1_s8(*&v87, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v88)), *&v87)).i8[5])
    {
      v91[3] = 0;
    }

    if (vuzp1_s8(*&v87, vuzp1_s16(*&v87, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v87)))).i8[6])
    {
      v91[6] = 0;
      v91[9] = 0;
    }

    v88 = vaddq_s64(v88, v94);
    v89 = vaddq_s64(v89, v94);
    v90 = vaddq_s64(v90, v94);
    v91 += 24;
    v87 = vaddq_s64(v87, v94);
    v92 -= 8;
  }

  while (v92);
  a1[5667] = 0;
  a1[5670] = 0;
  a1[5673] = 0;
  a1[5676] = 0;
  a1[5679] = 0;
  a1[5682] = 0;
  a1[5685] = 0;
  v95 = a1 + 5691;
  v96 = xmmword_277BB70A0;
  v97 = 18;
  v98 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), v96)).u8[0])
    {
      *(v95 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v96)).i32[1])
    {
      *v95 = 0;
    }

    v96 = vaddq_s64(v96, v98);
    v95 += 6;
    v97 -= 2;
  }

  while (v97);
  a1[5742] = 0;
  a1[5745] = 0;
  a1[5748] = 0;
  a1[5751] = 0;
  a1[5754] = 0;
  v99 = xmmword_277BB70A0;
  v100 = a1 + 5760;
  v101 = 10;
  v102 = vdupq_n_s64(9uLL);
  v103 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v102, v99)).u8[0])
    {
      *(v100 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v99)).i32[1])
    {
      *v100 = 0;
    }

    v99 = vaddq_s64(v99, v103);
    v100 += 6;
    v101 -= 2;
  }

  while (v101);
  v104 = xmmword_277BB70A0;
  v105 = a1 + 5787;
  v106 = 10;
  v107 = vdupq_n_s64(9uLL);
  v108 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v107, v104)).u8[0])
    {
      *(v105 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v104)).i32[1])
    {
      *v105 = 0;
    }

    v104 = vaddq_s64(v104, v108);
    v105 += 6;
    v106 -= 2;
  }

  while (v106);
  v109 = xmmword_277BB70A0;
  v110 = a1 + 5814;
  v111 = vdupq_n_s64(2uLL);
  v112 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v109)).u8[0])
    {
      *(v110 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v109)).i32[1])
    {
      *v110 = 0;
    }

    v109 = vaddq_s64(v109, v111);
    v110 += 6;
    v112 -= 2;
  }

  while (v112);
  v113 = xmmword_277BB7070;
  v114 = xmmword_277BB7080;
  v115 = xmmword_277BB7090;
  v116 = xmmword_277BB70A0;
  v117 = a1 + 5841;
  v118 = 24;
  v119 = vdupq_n_s64(0x15uLL);
  v120 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v119, v116)), *v113.i8), *v113.i8).u8[0])
    {
      *(v117 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v116)), *&v113), *&v113).i8[1])
    {
      *(v117 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v113, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v115))), *&v113).i8[2])
    {
      *(v117 - 6) = 0;
      *(v117 - 3) = 0;
    }

    if (vuzp1_s8(*&v113, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v114)), *&v113)).i32[1])
    {
      *v117 = 0;
    }

    if (vuzp1_s8(*&v113, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v114)), *&v113)).i8[5])
    {
      v117[3] = 0;
    }

    if (vuzp1_s8(*&v113, vuzp1_s16(*&v113, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v113)))).i8[6])
    {
      v117[6] = 0;
      v117[9] = 0;
    }

    v114 = vaddq_s64(v114, v120);
    v115 = vaddq_s64(v115, v120);
    v116 = vaddq_s64(v116, v120);
    v117 += 24;
    v113 = vaddq_s64(v113, v120);
    v118 -= 8;
  }

  while (v118);
  v121 = xmmword_277BB70A0;
  v122 = a1 + 5895;
  v123 = vdupq_n_s64(2uLL);
  v124 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v121)).u8[0])
    {
      *(v122 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v121)).i32[1])
    {
      *v122 = 0;
    }

    v121 = vaddq_s64(v121, v123);
    v122 += 6;
    v124 -= 2;
  }

  while (v124);
  v125 = xmmword_277BB70A0;
  v126 = a1 + 5913;
  v127 = vdupq_n_s64(2uLL);
  v128 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v125)).u8[0])
    {
      *(v126 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v125)).i32[1])
    {
      *v126 = 0;
    }

    v125 = vaddq_s64(v125, v127);
    v126 += 6;
    v128 -= 2;
  }

  while (v128);
  v129 = 0;
  a1[5928] = 0;
  a1[5931] = 0;
  a1[5934] = 0;
  a1[5937] = 0;
  a1[5940] = 0;
  a1[5943] = 0;
  a1[5946] = 0;
  a1[5949] = 0;
  a1[5952] = 0;
  a1[5955] = 0;
  a1[5960] = 0;
  LOBYTE(v130) = 1;
  v131 = vdupq_n_s64(2uLL);
  do
  {
    v132 = &a1[69 * v129 + 5961];
    v132[11] = 0;
    v132[16] = 0;
    v133 = v130;
    v132[21] = 0;
    v132[26] = 0;
    v132[29] = 0;
    v132[32] = 0;
    v132[35] = 0;
    v132[38] = 0;
    v134 = v132 + 44;
    v130 = 10;
    v135 = xmmword_277BB70A0;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v135)).u8[0])
      {
        *(v134 - 3) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v135)).i32[1])
      {
        *v134 = 0;
      }

      v135 = vaddq_s64(v135, v131);
      v134 += 6;
      v130 -= 2;
    }

    while (v130);
    v129 = 1;
  }

  while ((v133 & 1) != 0);
  v136 = 0;
  a1[6103] = 0;
  LOBYTE(v137) = 1;
  v138 = vdupq_n_s64(2uLL);
  do
  {
    v139 = &a1[69 * v136 + 6104];
    v139[11] = 0;
    v139[16] = 0;
    v140 = v137;
    v139[21] = 0;
    v139[26] = 0;
    v139[29] = 0;
    v139[32] = 0;
    v139[35] = 0;
    v139[38] = 0;
    v141 = v139 + 44;
    v137 = 10;
    v142 = xmmword_277BB70A0;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v142)).u8[0])
      {
        *(v141 - 3) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v142)).i32[1])
      {
        *v141 = 0;
      }

      v142 = vaddq_s64(v142, v138);
      v141 += 6;
      v137 -= 2;
    }

    while (v137);
    v136 = 1;
  }

  while ((v140 & 1) != 0);
  a1[6244] = 0;
  a1[6247] = 0;
  a1[6250] = 0;
  a1[6253] = 0;
  a1[6262] = 0;
  a1[6271] = 0;
  a1[6280] = 0;
  v143 = xmmword_277BB7070;
  v144 = xmmword_277BB7080;
  v145 = xmmword_277BB7090;
  v146 = xmmword_277BB70A0;
  v147 = a1 + 6295;
  v148 = 24;
  v149 = vdupq_n_s64(0x16uLL);
  v150 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v149, v146)), *v143.i8), *v143.i8).u8[0])
    {
      *(v147 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v146)), *&v143), *&v143).i8[1])
    {
      *(v147 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v143, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v145))), *&v143).i8[2])
    {
      *(v147 - 6) = 0;
      *(v147 - 3) = 0;
    }

    if (vuzp1_s8(*&v143, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v144)), *&v143)).i32[1])
    {
      *v147 = 0;
    }

    if (vuzp1_s8(*&v143, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v144)), *&v143)).i8[5])
    {
      v147[3] = 0;
    }

    if (vuzp1_s8(*&v143, vuzp1_s16(*&v143, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v143)))).i8[6])
    {
      v147[6] = 0;
      v147[9] = 0;
    }

    v144 = vaddq_s64(v144, v150);
    v145 = vaddq_s64(v145, v150);
    v146 = vaddq_s64(v146, v150);
    v147 += 24;
    v143 = vaddq_s64(v143, v150);
    v148 -= 8;
  }

  while (v148);
  a1[6352] = 0;
  a1[6356] = 0;
  a1[6359] = 0;
  a1[6362] = 0;
  a1[6376] = 0;
  a1[6390] = 0;
  a1[6404] = 0;
  a1[6418] = 0;
  v151 = xmmword_277BB70A0;
  v152 = a1 + 6447;
  v153 = 14;
  v154 = vdupq_n_s64(0xDuLL);
  v155 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v154, v151)).u8[0])
    {
      *(v152 - 15) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xDuLL), *&v151)).i32[1])
    {
      *v152 = 0;
    }

    v151 = vaddq_s64(v151, v155);
    v152 += 30;
    v153 -= 2;
  }

  while (v153);
  v156 = xmmword_277BB70A0;
  v157 = a1 + 6643;
  v158 = 14;
  v159 = vdupq_n_s64(0xDuLL);
  v160 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v159, v156)).u8[0])
    {
      *(v157 - 15) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xDuLL), *&v156)).i32[1])
    {
      *v157 = 0;
    }

    v156 = vaddq_s64(v156, v160);
    v157 += 30;
    v158 -= 2;
  }

  while (v158);
  v161 = 0;
  v162 = xmmword_277BB7090;
  v163 = xmmword_277BB70A0;
  v164 = vdupq_n_s64(0x14uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v164, v163)), *v162.i8).u8[0])
    {
      if (v158 >= 0x10)
      {
        v165 = 8;
      }

      else
      {
        v165 = 10;
      }

      if (!(v161 * 2))
      {
        v165 = 4;
      }

      a1[v165 + 6809 + v161] = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x14uLL), *&v163)), *&v162).i8[2])
    {
      if (v158 >= 0x10)
      {
        v166 = 8;
      }

      else
      {
        v166 = 10;
      }

      if (!(v161 * 2))
      {
        v166 = 4;
      }

      a1[v166 + 6820 + v161] = 0;
    }

    if (vuzp1_s16(*&v162, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x14uLL), *&v162))).i32[1])
    {
      if (v158 >= 0x10)
      {
        v167 = 8;
      }

      else
      {
        v167 = 10;
      }

      if (!(v161 * 2))
      {
        v167 = 4;
      }

      a1[v167 + 6831 + v161] = 0;
    }

    if (vuzp1_s16(*&v162, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x14uLL), *&v162))).i8[6])
    {
      if (v158 >= 0x10)
      {
        v168 = 8;
      }

      else
      {
        v168 = 10;
      }

      if (!(v161 * 2))
      {
        v168 = 4;
      }

      a1[v168 + 6842 + v161] = 0;
    }

    v158 += 4;
    v169 = vdupq_n_s64(4uLL);
    v162 = vaddq_s64(v162, v169);
    v163 = vaddq_s64(v163, v169);
    v161 += 44;
  }

  while (v161 != 220);
  for (i = 0; i != 64; i += 4)
  {
    a1[i + 7032] = 0;
  }

  v171 = xmmword_277BB7090;
  v172 = xmmword_277BB70A0;
  v173 = a1 + 7148;
  v174 = 28;
  v175 = vdupq_n_s64(0x19uLL);
  v176 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v175, v172)), *v171.i8).u8[0])
    {
      *(v173 - 42) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v172)), *&v171).i8[2])
    {
      *(v173 - 28) = 0;
    }

    if (vuzp1_s16(*&v171, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v171))).i32[1])
    {
      *(v173 - 14) = 0;
      *v173 = 0;
    }

    v171 = vaddq_s64(v171, v176);
    v172 = vaddq_s64(v172, v176);
    v173 += 56;
    v174 -= 4;
  }

  while (v174);
  for (j = 0; j != 64; j += 8)
  {
    a1[j + 7450] = 0;
  }

  a1[7509] = 0;
  a1[7513] = 0;
  a1[7517] = 0;
  a1[7522] = 0;
  a1[7526] = 0;
  a1[7530] = 0;
  a1[7534] = 0;
  a1[7538] = 0;
  a1[7542] = 0;
  a1[7546] = 0;
  a1[7550] = 0;
  a1[7554] = 0;
  a1[7559] = 0;
  a1[7584] = 0;
  a1[7564] = 0;
  a1[7569] = 0;
  a1[7574] = 0;
  a1[7579] = 0;
  v178 = xmmword_277BB7090;
  v179 = vdupq_n_s64(4uLL);
  v180 = a1 + 8527;
  v181 = 52;
  v182 = xmmword_277BB70A0;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), v182)), *v178.i8).u8[0])
    {
      *(v180 - 51) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v182)), *&v178).i8[2])
    {
      *(v180 - 34) = 0;
    }

    if (vuzp1_s16(*&v178, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v178))).i32[1])
    {
      *(v180 - 17) = 0;
      *v180 = 0;
    }

    v178 = vaddq_s64(v178, v179);
    v182 = vaddq_s64(v182, v179);
    v180 += 68;
    v181 -= 4;
  }

  while (v181);
  v183 = xmmword_277BB7090;
  v184 = xmmword_277BB70A0;
  v185 = a1 + 9409;
  v186 = vdupq_n_s64(4uLL);
  v187 = 52;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), v184)), *v183.i8).u8[0])
    {
      *(v185 - 51) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v184)), *&v183).i8[2])
    {
      *(v185 - 34) = 0;
    }

    if (vuzp1_s16(*&v183, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v183))).i32[1])
    {
      *(v185 - 17) = 0;
      *v185 = 0;
    }

    v183 = vaddq_s64(v183, v186);
    v184 = vaddq_s64(v184, v186);
    v185 += 68;
    v187 -= 4;
  }

  while (v187);
  a1[10321] = 0;
  a1[10338] = 0;
  a1[10355] = 0;
  a1[10372] = 0;
  a1[10385] = 0;
  a1[10402] = 0;
  a1[10419] = 0;
  a1[10436] = 0;
  a1[10443] = 0;
  a1[10460] = 0;
  a1[10477] = 0;
  a1[10494] = 0;
  a1[10517] = 0;
  v188 = a1 + 10551;
  result = xmmword_277BB70A0;
  v190 = vdupq_n_s64(2uLL);
  v191 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), result)).u8[0])
    {
      *(v188 - 17) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&result)).i32[1])
    {
      *v188 = 0;
    }

    result = vaddq_s64(result, v190);
    v188 += 34;
    v191 -= 2;
  }

  while (v191);
  return result;
}

_DWORD *sub_2779915E8(_DWORD *result, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v6 = result;
  v7 = 2 * a4;
  v8 = a2 - 1 - a4;
  v9 = a2 - 1 - a5;
  v10 = 2 * (v8 - v9) - 1;
  if (v9 >= v8)
  {
    v10 = 2 * (v9 - v8);
  }

  if (v9 <= 2 * v8)
  {
    v9 = v10;
  }

  v11 = 2 * (a4 - a5) - 1;
  if (a5 >= a4)
  {
    v11 = 2 * (a5 - a4);
  }

  if (v7 < a5)
  {
    v11 = a5;
  }

  if (v7 > a2)
  {
    v11 = v9;
  }

  if (3 << a3 >= a2)
  {
    LOWORD(v18) = 0;
LABEL_23:
    v25 = (a2 - v18);
    if (v25 >= 2)
    {
      v26 = __clz(v25) ^ 0x1F;
      v27 = (2 << v26) - (a2 - v18);
      v28 = (v11 - v18);
      v29 = v28 - v27;
      if (v28 >= v27)
      {
        v47 = v27 + (v29 >> 1);
        v48 = v26 + 1;
        do
        {
          v49 = *(v6 + 40);
          v50 = (v49 >> 1) & 0x7F80 | 4;
          v51 = 1 << (v48 - 2);
          v52 = v49 - v50;
          v53 = (v47 & v51) == 0;
          if ((v47 & v51) != 0)
          {
            v54 = v52;
          }

          else
          {
            v54 = 0;
          }

          if (v53)
          {
            v55 = v52;
          }

          else
          {
            v55 = v50;
          }

          sub_277A64F90((v6 + 16), *(v6 + 32) + v54, v55);
          --v48;
        }

        while (v48 > 1);
        v56 = *(v6 + 40);
        v57 = (v56 >> 1) & 0x7F80 | 4;
        v58 = v56 - v57;
        if (v29)
        {
          v59 = v57;
        }

        else
        {
          v59 = v58;
        }

        v60 = *(v6 + 32) + ((v29 << 31 >> 31) & v58);

        return sub_277A64F90((v6 + 16), v60, v59);
      }

      else
      {
        v30 = v26 + 1;
        do
        {
          v31 = *(v6 + 40);
          v32 = (v31 >> 1) & 0x7F80 | 4;
          v33 = 1 << (v30 - 2);
          v34 = v31 - v32;
          v35 = (v33 & v28) == 0;
          if ((v33 & v28) != 0)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0;
          }

          if (v35)
          {
            v37 = v34;
          }

          else
          {
            v37 = v32;
          }

          result = sub_277A64F90((v6 + 16), *(v6 + 32) + v36, v37);
          --v30;
        }

        while (v30 > 1);
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v61 = v11;
    v15 = v11;
    v16 = a3;
    v17 = a3;
    while (1)
    {
      v18 = (1 << v17) + v14;
      v19 = *(v6 + 40);
      v20 = (v19 >> 1) & 0x7F80 | 4;
      v21 = v19 - v20;
      v22 = v18 <= v15 ? v21 : 0;
      v23 = v18 <= v15 ? v20 : v21;
      result = sub_277A64F90((v6 + 16), *(v6 + 32) + v22, v23);
      if (v18 > v15)
      {
        break;
      }

      v17 = v13 + a3;
      ++v13;
      v24 = (3 << v16++) + v18;
      v14 = v18;
      if (v24 >= a2)
      {
        v11 = v61;
        goto LABEL_23;
      }
    }

    if (v17 >= 1)
    {
      v38 = v15 - v14;
      v39 = v17 + 1;
      do
      {
        v40 = *(v6 + 40);
        v41 = (v40 >> 1) & 0x7F80 | 4;
        v42 = 1 << (v39 - 2);
        v43 = v40 - v41;
        v44 = (v38 & v42) == 0;
        if ((v38 & v42) != 0)
        {
          v45 = v43;
        }

        else
        {
          v45 = 0;
        }

        if (v44)
        {
          v46 = v43;
        }

        else
        {
          v46 = v41;
        }

        result = sub_277A64F90((v6 + 16), *(v6 + 32) + v45, v46);
        --v39;
      }

      while (v39 > 1);
    }
  }

  return result;
}

uint64_t sub_2779918C0(int a1, int a2, unsigned int a3, unsigned int a4)
{
  v4 = 2 * a3;
  v5 = a1 - 1 - a3;
  v6 = a1 - 1 - a4;
  v7 = 2 * (v5 - v6) - 1;
  if (v6 >= v5)
  {
    v7 = 2 * (v6 - v5);
  }

  if (v6 <= 2 * v5)
  {
    v6 = v7;
  }

  v8 = 2 * (a3 - a4) - 1;
  if (a4 >= a3)
  {
    v8 = 2 * (a4 - a3);
  }

  if (v4 < a4)
  {
    v8 = a4;
  }

  if (v4 <= a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (3 << a2 >= a1)
  {
    LOWORD(v11) = 0;
    v13 = 0;
LABEL_18:
    v15 = a1 - v11;
    v16 = (a1 - v11);
    if (v16 >= 2)
    {
      v18 = v9 - v11;
      v19 = __clz(v16) ^ 0x1F;
      if ((2 << v19) - v15 > v18)
      {
        v17 = v19;
      }

      else
      {
        v17 = v19 + 1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v17 + v13;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = a2;
    while (1)
    {
      v11 += 1 << v12;
      v13 = v10 + 1;
      if (v11 > v9)
      {
        return (v13 + v12);
      }

      v12 = v10 + a2;
      v14 = (3 << (v10++ + a2)) + v11;
      if (v14 >= a1)
      {
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_2779919C4(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 a3, int a4)
{
  v4 = 0;
  if (a4 <= 8)
  {
    if ((a4 - 6) < 3)
    {
      a1 += *(&dword_277BC0C7C[4 * ((a2 & 0xF) >> 2)] + (a3 & 0xC));
      return *a1;
    }
  }

  else if (a4 > 10)
  {
    if (a4 == 12)
    {
      return *a1;
    }

    if (a4 == 11)
    {
      if (((a3 | a2) & 0xF) == 0)
      {
        return *++a1;
      }

      v4 = 0;
      if ((a2 & 0xF) != 0 && (a3 & 0xF) == 0)
      {
        a1 += 2;
        return *a1;
      }
    }
  }

  else if (a4 == 9)
  {
    if (((a3 | a2) & 0xF) == 0)
    {
      a1 += 5;
      return *a1;
    }

    if ((a2 & 0xF) == 0 && (a3 & 0xF) != 0)
    {
      a1 += 6;
      return *a1;
    }

    if ((a2 & 0xF) != 0 && (a3 & 0xF) == 0)
    {
      a1 += 7;
      return *a1;
    }

    v4 = 0;
    if ((a2 & 0xF) != 0 && (a3 & 0xF) != 0)
    {
      a1 += 8;
      return *a1;
    }
  }

  else
  {
    if (((a3 | a2) & 0xF) == 0)
    {
      a1 += 3;
      return *a1;
    }

    v4 = 0;
    if ((a2 & 0xF) == 0 && (a3 & 0xF) != 0)
    {
      a1 += 4;
      return *a1;
    }
  }

  return v4;
}

uint64_t sub_277991ACC(unsigned __int8 *a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = 0;
  v5 = a3 & 0x1F;
  v6 = (a2 >> 3) & 2 | (a3 >> 4) & 1;
  if (a4 <= 10)
  {
    v7 = (a2 >> 2) & 2 | (a3 >> 3) & 1;
    if ((a4 - 6) < 3)
    {
      v8 = ((a2 >> 1) & 2 | (a3 >> 2) & 1 | (16 * v6) | (4 * v7)) + 41;
LABEL_20:
      a1 += v8;
      return *a1;
    }

    if (a4 == 9)
    {
      v8 = (v7 | (4 * v6)) + 25;
      goto LABEL_20;
    }

    if (a4 == 10)
    {
      a1 += ((a2 >> 2) & 4 | (v5 >> 3)) + 17;
      return *a1;
    }

    return v4;
  }

  if (a4 <= 12)
  {
    if (a4 == 11)
    {
      a1 += ((a2 >> 3) & 1 | (2 * ((a3 >> 4) & 1)) | (a2 >> 2) & 4) + 9;
    }

    else
    {
      a1 += v6 + 5;
    }

    return *a1;
  }

  switch(a4)
  {
    case 13:
      v9 = v5 == 0;
      v8 = 3;
LABEL_16:
      if (!v9)
      {
        ++v8;
      }

      goto LABEL_20;
    case 15:
      return *a1;
    case 14:
      v9 = (a2 & 0x1F) == 0;
      v8 = 1;
      goto LABEL_16;
  }

  return v4;
}

uint64_t sub_277991BD0(uint64_t result, int a2)
{
  if (*(result + 395528) == 2)
  {
    v3 = result;
    result = sub_277991C5C(result, result + 529112, 0, a2, 0, 0, 0, 0, 0);
    *(v3 + 529152) = (a2 >> 3) + 15;
  }

  return result;
}

uint64_t sub_277991C5C(uint64_t result, uint64_t a2, unint64_t a3, unsigned int a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = result + 395132;
  v10 = (result + 270312);
  v11 = result + 245616;
  v12 = 120;
  if ((*(result + 245616) & 0xFD) != 0)
  {
    v12 = 1;
  }

  v13 = *(*v10 + 72);
  if (a4 >= 0xFF)
  {
    v14 = 255;
  }

  else
  {
    v14 = a4;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v14 = 0;
  }

  switch(v13)
  {
    case 8:
      v15 = word_277BFE1FA;
      goto LABEL_14;
    case 12:
      v15 = &unk_277BFE5FA;
      goto LABEL_14;
    case 10:
      v15 = &unk_277BFE3FA;
LABEL_14:
      v16 = v15[v14];
      goto LABEL_16;
  }

  v16 = -1;
LABEL_16:
  v17 = v12 * v16;
  v18 = *(result + 396600);
  v19 = *(result + 245676) * *(result + 245672);
  if ((*(result + 245616) & 0xFD) != 0)
  {
    v20 = (result + 643796);
    v22 = v19 <= 307200 || a5 == 0 || *(result + 644224) == 0;
    if (!v22 && *(result + 245632) >= 0x3Du)
    {
      v23 = *(result + 644232);
      v24 = *(result + 644236);
      if (v23 <= 2 * v24)
      {
        if (v23 > v24 && !*(result + 396456))
        {
          v17 += v17 >> 2;
        }
      }

      else
      {
        v17 = (5 * v17) >> 1;
      }
    }

    v29 = *(result + 272140);
    v30 = *(*result + 85780);
    result = v17 >> 1;
    if (v30)
    {
      v31 = v17 >> 1;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 + v17;
    v33 = v32 >> 2;
    if (v29 <= 7)
    {
      v33 = 0;
    }

    v34 = v33 + v32;
    if (a6 >= 3 && v29 >= 11)
    {
      result = 32 * v34;
      if (*v9)
      {
        v34 *= 32;
      }
    }

    v35 = *(v11 + 616);
    v36 = v34 >> 1;
    *a2 = v34 >> 1;
    *(a2 + 8) = v34;
    v37 = v34 << v18;
    *(a2 + 24) = v37;
    if (v19 <= 921599)
    {
      if (v19 < 101377)
      {
        v38 = *(v9 + 1472);
        v39 = v38 & ~(v38 >> 31);
        if (a7 >= 3)
        {
          v39 = 0;
        }

        if (v38 <= 2)
        {
          v38 = v39;
        }

        v40 = (&unk_277BC0CBC + 8 * v38);
        v41 = v40[1];
        v42 = v41 - v35;
        if (v41 <= v35)
        {
          v46 = 5 * v34;
          v47 = v46 >> 1;
          v34 = v46 >> 4;
          v36 = 4 * v47;
          *(a2 + 8) = v34;
          *(a2 + 16) = 4 * v47;
          v37 = 32 * v47;
        }

        else
        {
          v43 = *v40;
          v44 = v35 - *v40;
          if (v35 >= v43)
          {
            result = v42;
            LODWORD(v48) = v41 - v43;
            if (v48 <= 1)
            {
              v48 = 1;
            }

            else
            {
              v48 = v48;
            }

            v49 = (((5 * v34) >> 1) * v44 + v34 * v42) / v48;
            v34 = v49 >> 3;
            v36 = (v49 * v44 + (v49 >> 1) * v42) / v48;
            *(a2 + 8) = v49 >> 3;
            *(a2 + 16) = v36;
            v37 = v49 * (32 * v44 + 8 * v42) / v48;
          }

          else
          {
            v37 = 8 * v34;
            v34 >>= 3;
            *(a2 + 8) = v34;
            *(a2 + 16) = v36;
          }
        }

        *(a2 + 24) = v37;
LABEL_76:
        v50 = *(v9 + 1324);
        if (v50 < 3)
        {
          if (v50 == 2)
          {
            v60 = 3 * v36;
            if (a6 >= 3)
            {
              v60 = v36;
            }

            *(a2 + 8) = v34 << (2 * (a6 < 3));
            *(a2 + 16) = v60;
            goto LABEL_119;
          }

          if (v50 < 1)
          {
            goto LABEL_119;
          }

          v65 = 1;
          if (a6 <= 2)
          {
            v65 = 2;
          }

          v66 = 0.0;
          if ((v35 - 145) >= 0xFFFFFFA6)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = 1.0;
          }

          v68 = 1.0 - v67;
          if (v35 <= 0x91)
          {
            v66 = v68;
          }

          if (v35 < 55)
          {
            v66 = 1.0;
          }

          *(a2 + 8) = (v66 * v34 + (1.0 - v66) * (2 * v34));
          *(a2 + 16) = (v66 * v36 + (1.0 - v66) * (2 * v36));
          v69 = (v66 * v37 + (1.0 - v66) * (v37 << v65));
        }

        else
        {
          v51 = 1.0;
          if (v35 >= 80)
          {
            v51 = 0.0;
            if (v35 <= 0x78)
            {
              v52 = 0.0;
              if ((v35 - 120) < 0xFFFFFFD8)
              {
                v52 = 1.0;
              }

              v51 = 1.0 - v52;
            }
          }

          if (v19 >= 307201)
          {
            v61 = vaddq_s64(*a2, *a2);
            v62 = vaddq_s64(*(a2 + 16), *(a2 + 16));
            *a2 = v61;
            *(a2 + 16) = v62;
            if ((a8 & 1) == 0 && (a6 != 4 || *(v9 + 4) >= 0xC351uLL))
            {
              *a2 = v61.i64[0] + (v61.i64[0] >> 1);
              *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
              if (v35 >= 101)
              {
                v63 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_s64(*(a2 + 8)), v51), vcvtq_f64_s64(vaddq_s64(*(a2 + 8), *(a2 + 8))), 1.0 - v51)));
                *&v64 = v63.i32[0];
                *(&v64 + 1) = v63.i32[1];
                *(a2 + 8) = v64;
              }
            }

            goto LABEL_119;
          }

          if (v19 < 101377)
          {
            *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
            v53 = 4;
            if (a6 < 3)
            {
              v53 = 5;
            }

            v54 = 1;
            if (!a8)
            {
              v54 = 2;
            }

            v55 = *(a2 + 8) << v54;
            v56 = 3;
            if (!a8)
            {
              v56 = v53;
            }

            v57 = v36 << v56;
            *(a2 + 8) = v55;
            *(a2 + 16) = v57;
            if (!*v20)
            {
              v72 = v20[2] <= 1;
              v59 = 40000;
              if (v20[2] <= 1)
              {
                v59 = 25000;
              }

              v58 = 50000;
              if (!v72)
              {
                v58 = 70000;
              }

              if (a8)
              {
                goto LABEL_119;
              }

              goto LABEL_128;
            }

            v58 = 50000;
            v59 = 25000;
            if ((a8 & 1) == 0)
            {
LABEL_128:
              if (a3 >= 0x61A9 && *(v9 + 4) < v59 && !a9 && v58 > a3)
              {
                v73 = (3 * v57) >> 2;
                *(a2 + 16) = v73;
                *(a2 + 24) = 8 * v73;
              }
            }

LABEL_119:
            if (v35 <= 127)
            {
              if (*(v9 + 544))
              {
                *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            return result;
          }

          if (v35 < 101 || (a8 & 1) != 0 || a6 == 4 && *(v9 + 4) < 0xC351uLL)
          {
            goto LABEL_119;
          }

          v70 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_s64(*(a2 + 8)), v51), vcvtq_f64_s64(vshlq_u64(*(a2 + 8), xmmword_277BB70D0)), 1.0 - v51)));
          *&v71 = v70.i32[0];
          *(&v71 + 1) = v70.i32[1];
          *(a2 + 8) = v71;
          v69 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *(a2 + 24) = v69;
        goto LABEL_119;
      }

      v36 = v34 + (v34 >> 2);
    }

    else
    {
      v37 *= 2;
      *(a2 + 24) = v37;
      if (v19 >> 10 > 0x7E8)
      {
        if (v10[421] == 1)
        {
          if (v19 >> 14 > 0xE0)
          {
            v45 = 7 * v34;
          }

          else
          {
            v45 = 5 * v34;
          }

          v36 = v45 >> 1;
        }

        else
        {
          v36 = 3 * v34;
          if (v29 >= 8)
          {
            v36 = 6 * v34;
          }
        }
      }

      else
      {
        v36 = 2 * v34;
      }
    }

    *(a2 + 16) = v36;
    goto LABEL_76;
  }

  v25 = *(result + 396552);
  if (v25)
  {
    if (*(result + 272208) == 2)
    {
      v26 = -7;
    }

    else
    {
      v26 = -8;
    }

    v17 <<= v26 + v18;
  }

  *a2 = v17;
  *(a2 + 8) = v17;
  v27 = v17 >> (2 * (v25 == 0));
  if (v19 < 921600)
  {
    v28 = v17 / 3;
  }

  else
  {
    v28 = v27;
  }

  if (v19 < 921600)
  {
    v27 = v17 >> 1;
  }

  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
  *(a2 + 32) = 4 * v17;
  return result;
}

void sub_277992240(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v650 = *MEMORY[0x277D85DE8];
  v537 = (a4 + 86592);
  v8 = a1 + 160948;
  v560 = a1 + 98778;
  v9 = a1 + 67578;
  v10 = a1 + 61404;
  v638[0] = 0;
  v638[1] = 0;
  sub_277AF62F8(v638, a1[61418], a1[61419], a1[61418], a1[61419]);
  if ((*v10 & 0xFD) != 0)
  {
    v11 = a1;
    if (*(*a1 + 51016))
    {
      v12 = *(*(v8 + 43) + 13176 * v8[1] + 13168) != 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = a4;
  }

  else
  {
    v12 = 1;
    v13 = a4;
    v11 = a1;
  }

  v14 = *v9;
  v541 = *(*v9 + 28);
  if (v541 == 12)
  {
    v15 = 12;
  }

  else
  {
    v15 = 15;
  }

  if (v560[395] && v560[4] && *(*v11 + 85780))
  {
    sub_277A536A0(v11, *(a2 + 4), *(a2 + 12), *(v10 + 71) + 8 * (a6 + v10[145] * a5), a5, a6, v15);
    *v537 = 1;
    return;
  }

  v16 = *(v11 + 132282);
  v639 = *(v11 + 132278);
  v640 = v16;
  v641 = *(v11 + 66143);
  v17 = *(**(v13 + 8280) + 167) & 7;
  v18 = *(v8 + 100);
  v558 = v11;
  if (v18 && *v8 == v8[2] - 1)
  {
    v19 = *(v18 + 8 * (a6 / (*(v14 + 32) >> (v541 == 15)) + a5 / (*(v14 + 32) >> (v541 == 15)) * (((*(v14 + 32) >> (v541 == 15)) + v10[134] - 1) / (*(v14 + 32) >> (v541 == 15)))));
  }

  else
  {
    v19 = 0;
  }

  v20 = (v13 + 153152);
  v535 = (v13 + 101280);
  v555 = v15;
  v561 = a3;
  v552 = *(**(v13 + 8280) + 167) & 7;
  if (*(v9 + 1016) == 3 && *(v11 + 264608) && (v17 - 1) <= 1)
  {
    v21 = v10[154];
    if (v11[v17 + 66185])
    {
      v22 = v12;
      v24 = v21 + SLOWORD(v11[4 * v17 + 66153]);
      if (v24 >= 0xFF)
      {
        v25 = 255;
      }

      else
      {
        v25 = v21 + SLOWORD(v11[4 * v17 + 66153]);
      }

      if (v24 >= 0)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v22 = v12;
    }

    v23 = 1;
  }

  else
  {
    v22 = v12;
    v23 = 0;
    v21 = v10[154];
  }

  v26 = v10;
  v27 = v537[712];
  sub_277991C5C(v11, &v639, v19, v21, v537[715], v27, v537[713], v23, v537[714]);
  v28 = a4;
  v29 = *(a4 + 48);
  v30 = *(a4 + 72);
  v645[0] = 0;
  *v535 = 0u;
  v535[1] = 0u;
  v535[2] = 0u;
  v535[3] = 0u;
  v535[4] = 0u;
  v535[5] = 0u;
  *(v535 + 89) = 0u;
  v31 = v26;
  if ((*v26 & 0xFD) != 0)
  {
    v32 = v26[60];
    v33 = v560;
    if (v32 == -1 || (v34 = v558[v32 + 30754]) == 0)
    {
      LODWORD(v35) = 0;
      v22 = 1;
    }

    else if (*(v34 + 1272) == v26[15] && *(v34 + 1264) == v26[14])
    {
      LODWORD(v35) = 0;
    }

    else
    {
      v36 = *(v9 + 422);
      if (v36)
      {
        v37 = v36 == v34;
      }

      else
      {
        v37 = 1;
      }

      v38 = v37;
      v22 |= v38;
      LODWORD(v35) = 1;
    }
  }

  else
  {
    LODWORD(v35) = 0;
    v33 = v560;
  }

  *v20 = -1;
  v559 = v31;
  v621 = v22;
  if (v33[318] && v27 >= 3)
  {
    v39 = sub_277A5D00C(*v558, a4 + 416, v29, v30, *(*v9 + 28), 0, (*(*(a4 + 8376) + 192) >> 3) & 1);
    v31 = v559;
    v33 = v560;
    v28 = a4;
    *v20 = v39;
  }

  v542 = v8;
  if ((v22 & 1) == 0)
  {
    if (*(*v9 + 77))
    {
      v41 = 1;
    }

    else
    {
      v41 = 3;
    }

    v42 = **(v28 + 8280);
    v553 = v9;
    if (v35)
    {
      v43 = *(v9 + 422);
      v44 = v31[60];
      if (v44 == -1)
      {
        v45 = 0;
      }

      else
      {
        v45 = v558[v44 + 30754];
      }

      v48 = v43 == v45 || v43 == 0;
      v49 = v43 + 1248;
      if (v48)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }
    }

    else
    {
      v46 = v31[60];
      if (v46 == -1)
      {
        v47 = 0;
      }

      else
      {
        v47 = v558[v46 + 30754];
      }

      if (v47)
      {
        v50 = v47 + 1248;
      }

      else
      {
        v50 = 0;
      }
    }

    v51 = v33[68];
    v52 = (v51 & 1) != 0 || v8[2] > 1;
    if (*(*v558 + 85776) || v33[319])
    {
      v53 = 1;
    }

    else if (v33[320])
    {
      v53 = v33[323] == 1;
    }

    else
    {
      v53 = 0;
    }

    v54 = 0;
    v55 = v8[2];
    v635 = -1;
    if ((v51 & 8) != 0 && v55 == 1)
    {
      if (v537[712] == 0 && v52 || (v56 = v31[63], v56 == -1) || (v57 = v558[v56 + 30754]) == 0)
      {
        v54 = 0;
LABEL_86:
        v635 = -1;
        v55 = 1;
        goto LABEL_87;
      }

      if (*(v57 + 1272) == v31[15] && *(v57 + 1264) == v31[14])
      {
        v54 = v57 + 1248;
        v33 = v560;
        if (v57 + 1248 != v50)
        {
          v58 = &v558[2 * v56 + 30738];
LABEL_129:
          v616 = v54;
          sub_27798E424(v28 + 416, 0, v54, a5, a6, v58, v41);
          v77 = (*(*v558 + (v555 << 7) + 51440))(*(a4 + 48), *(a4 + 72), *(a4 + 480), *(a4 + 504));
          v54 = v616;
          v28 = a4;
          v635 = v77;
          v55 = v8[2];
          v31 = v559;
          v33 = v560;
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      v54 = 0;
      v76 = *(v553 + 425);
      v635 = -1;
      v55 = 1;
      v33 = v560;
      if (v76 && v76 != v558[v56 + 30754])
      {
        v54 = v76 + 1248;
        if (v76 + 1248 != v50)
        {
          v58 = 0;
          goto LABEL_129;
        }

        goto LABEL_86;
      }
    }

LABEL_87:
    if (v55 == 1 && v53 && (v33[68] & 0x40) != 0 && (v537[712] != 0 || !v52) && (v59 = v31[66], v59 != -1) && (v60 = v558[v59 + 30754]) != 0)
    {
      if (*(v60 + 1272) != v31[15] || *(v60 + 1264) != v31[14])
      {
        v61 = 0;
        v78 = *(v553 + 428);
        v64 = -1;
        v33 = v560;
        if (!v78)
        {
          goto LABEL_98;
        }

        if (v78 == v558[v59 + 30754])
        {
          goto LABEL_98;
        }

        v61 = v78 + 1248;
        if (v78 + 1248 == v50)
        {
          goto LABEL_98;
        }

        v631 = v35;
        v615 = v54;
        v63 = 0;
        v62 = v558;
        goto LABEL_135;
      }

      v61 = v60 + 1248;
      v33 = v560;
      if (v60 + 1248 != v50)
      {
        v631 = v35;
        v615 = v54;
        v62 = v558;
        v63 = &v558[2 * v59 + 30738];
LABEL_135:
        v35 = v61;
        sub_27798E424(v28 + 416, 0, v61, a5, a6, v63, v41);
        v64 = (*(*v62 + (v555 << 7) + 51440))(*(a4 + 48), *(a4 + 72), *(a4 + 480), *(a4 + 504));
        v61 = v35;
        v28 = a4;
        v31 = v559;
        v33 = v560;
        v54 = v615;
        LOBYTE(v35) = v631;
        goto LABEL_98;
      }
    }

    else
    {
      v61 = 0;
    }

    v64 = -1;
LABEL_98:
    v623 = v64;
    if (!v52)
    {
      v69 = -1;
      v9 = v553;
      goto LABEL_147;
    }

    v65 = v537[712];
    v632 = v35;
    if (v35)
    {
      v66 = v61;
      v67 = v54;
      v68 = 0;
    }

    else
    {
      v66 = v61;
      v67 = v54;
      v70 = v31[60];
      if (v70 == -1)
      {
        v68 = 0;
      }

      else
      {
        v68 = &v558[2 * v70 + 30738];
      }
    }

    v627 = v41;
    sub_27798E424(v28 + 416, 0, v50, a5, a6, v68, v41);
    v28 = a4;
    *(v42 + 16) = -255;
    v9 = v553;
    *v42 = *(*v553 + 28);
    *(v42 + 8) = 0;
    *(v42 + 20) = 196611;
    if (v65 <= 3 || v560[313] <= 2)
    {
      v72 = v560[313];
    }

    else
    {
      v72 = 2;
    }

    if ((v72 - 1) > 1 || (*(a4 + 8344) & 0x80000000) != 0 || (*(a4 + 8352) & 0x80000000) != 0 || *v20 < 0x65u || v65 < 3)
    {
      goto LABEL_139;
    }

    v73 = *(*v553 + 28);
    if (v553[421] == 1)
    {
      LODWORD(v644[0]) = 0;
      v74 = sub_277B9F090(v558, a4, v73, a5, a6, word_277BC0CE4, v644, 0x60u, 0xC0u);
      v69 = v644[0];
      if (v74 < LODWORD(v644[0]) >> 1)
      {
        v75 = *(*v553 + 28) == 15 ? 50000 : 20000;
        if (v74 < v75)
        {
          v20[2] = 1;
          v20[4] = *(v42 + 8);
          v69 = v74;
          v28 = a4;
          v33 = v560;
          goto LABEL_140;
        }
      }

      v20[2] = 0;
      *(v42 + 8) = 0;
    }

    else
    {
      v69 = sub_277B9F090(v558, a4, v73, a5, a6, word_277BC0CE4, v644, byte_277C3CAFE[v73] >> 1, byte_277C3CAE8[v73] >> 1);
    }

    v33 = v560;
    v28 = a4;
    if (v69 == -1)
    {
LABEL_139:
      v79 = (*(*v558 + (v555 << 7) + 51440))(*(v28 + 48), *(v28 + 72), *(v28 + 480), *(v28 + 504));
      v33 = v560;
      v28 = a4;
      v69 = v79;
    }

LABEL_140:
    v31 = v559;
    v61 = v66;
    if (v72 < 2)
    {
      v41 = v627;
      v54 = v67;
      LOBYTE(v35) = v632;
      goto LABEL_147;
    }

    v80 = v28 + 8288;
    v54 = v67;
    LOBYTE(v35) = v632;
    if ((*(v28 + 8288) & 1) == 0 && *(v28 + 8289) != 1 || (v81 = v537[712], v72 != 2) && v81 > 3)
    {
      v8 = v542;
      v41 = v627;
      goto LABEL_147;
    }

    v487 = v69;
    v488 = **(v28 + 8280);
    v490 = v81 <= 2 || v72 == 2;
    v489.i32[1] = *(v28 + 128740);
    v489.i32[0] = *(v28 + 128748);
    v491 = vmax_s32(vshl_n_s32(v489, 3uLL), vdup_n_s32(0xFFFFE008));
    v489.i32[0] = *(v28 + 128752);
    v489.i32[1] = *(v28 + 128744);
    v492 = vmin_s32(vmax_s32(v491, vmin_s32(vshl_n_s32(v489, 3uLL), vdup_n_s32(0x1FF8u))), 0x3F0000003FLL);
    v489.i32[0] = *(v488 + 8);
    v489.i32[1] = *(v488 + 10);
    v493 = vshr_n_u32(vadd_s32(vsub_s32(v489, vcgez_s32(v489)), 0x300000003), 3uLL);
    if (v490)
    {
      v494 = 8;
    }

    else
    {
      v494 = 7;
    }

    if (*(v28 + 8288))
    {
      v495 = *(v28 + 8304);
      if (*(v495 + 2) >= 0xDu && *(v495 + 16) == 1)
      {
        v496 = *(v495 + 8);
        v497.i32[0] = v496 << 16;
        v497.i32[1] = v496;
        v498 = vshr_n_s32(v497, 0x10uLL);
        v499 = vbsl_s8(vcgt_s32(v491, v498), v491, vmin_s32(v498, v492));
        v500 = vshr_n_u32(vadd_s32(vsra_n_s32(vbic_s8(0x100000001, vshr_n_u32(v499, 0xFuLL)), vshl_n_s32(v499, 0x10uLL), 0x10uLL), 0x300000003), 3uLL);
        v501 = vshr_n_s32(vshl_n_s32(v500, 0x10uLL), 0x10uLL);
        v502 = vabd_s32(vshr_n_s32(vshl_n_s32(v493, 0x10uLL), 0x10uLL), v501);
        if (vorr_s8(v502, vdup_lane_s32(v502, 1)).u32[0])
        {
          v503 = v54;
          v35 = v61;
          v607 = v492;
          v613 = v491;
          v601 = v500;
          v504 = (*(*v558 + (v555 << 7) + 51440))(*(v28 + 48), *(v28 + 72), *(v28 + 480) + v501.i32[1] + *(v28 + 504) * v501.i32[0]);
          v500 = v601;
          v492 = v607;
          v491 = v613;
          v69 = v487;
          v61 = v35;
          LOBYTE(v35) = v632;
          v54 = v503;
          v31 = v559;
          v33 = v560;
          v28 = a4;
          v505 = v504;
          goto LABEL_600;
        }
      }

      else
      {
        v500 = 0;
      }

      v505 = -1;
    }

    else
    {
      v500 = 0;
      v505 = -1;
    }

LABEL_600:
    if (*(v80 + 1) == 1)
    {
      v506 = *(v28 + 8296);
      v8 = v542;
      if (*(v506 + 2) >= 0xDu && *(v506 + 16) == 1)
      {
        v507 = *(v506 + 8);
        v508.i32[0] = v507 << 16;
        v508.i32[1] = v507;
        v509 = vshr_n_s32(v508, 0x10uLL);
        v510 = vbsl_s8(vcgt_s32(v491, v509), v491, vmin_s32(v509, v492));
        v511 = vshr_n_u32(vadd_s32(vsra_n_s32(vbic_s8(0x100000001, vshr_n_u32(v510, 0xFuLL)), vshl_n_s32(v510, 0x10uLL), 0x10uLL), 0x300000003), 3uLL);
        v512 = vshr_n_s32(vshl_n_s32(v511, 0x10uLL), 0x10uLL);
        v513 = vabd_s32(vshr_n_s32(vshl_n_s32(v493, 0x10uLL), 0x10uLL), v512);
        if (vorr_s8(v513, vdup_lane_s32(v513, 1)).u32[0])
        {
          v514 = vabd_s32(vshr_n_s32(vshl_n_s32(v500, 0x10uLL), 0x10uLL), v512);
          if (vorr_s8(v514, vdup_lane_s32(v514, 1)).u32[0])
          {
            v620 = v54;
            v35 = v61;
            v608 = v492;
            v614 = v491;
            v597 = v511;
            v602 = v500;
            v515 = (*(*v558 + (v555 << 7) + 51440))(*(v28 + 48), *(v28 + 72), *(v28 + 480) + v512.i32[1] + *(v28 + 504) * v512.i32[0]);
            v511 = v597;
            v500 = v602;
            v492 = v608;
            v491 = v614;
            v69 = v487;
            v61 = v35;
            LOBYTE(v35) = v632;
            v54 = v620;
            v31 = v559;
            v33 = v560;
            v28 = a4;
            goto LABEL_609;
          }
        }
      }

      else
      {
        v511 = 0;
      }

      v515 = -1;
    }

    else
    {
      v511 = 0;
      v515 = -1;
      v8 = v542;
    }

LABEL_609:
    v516 = (v494 * v69) >> 3;
    if (v505 < v516 && v505 < v515)
    {
      v517 = vshl_n_s32(v500, 3uLL);
      v518 = v492.i16[2];
      if (v517.i16[2] < v492.i32[1])
      {
        v518 = v517.i16[2];
      }

      v519 = vcgt_s32(v491, vshr_n_s32(vshl_n_s32(v517, 0x10uLL), 0x10uLL));
      if (v519.i8[4])
      {
        v518 = v491.i16[2];
      }

      *(v488 + 10) = v518;
      v520 = v492.i16[0];
      if (v517.i16[0] < v492.i32[0])
      {
        v520 = v517.i16[0];
      }

      if (v519.i8[0])
      {
        v520 = v491.i16[0];
      }

      *(v488 + 8) = v520;
      v516 = (v505 * v494) >> 3;
      v69 = v505;
    }

    if (v515 >= v516)
    {
      v9 = v553;
      v41 = v627;
    }

    else
    {
      v521 = v515 >= v505;
      v9 = v553;
      v41 = v627;
      if (!v521)
      {
        v522 = vshr_n_s32(vshl_n_s32(v511, 0x13uLL), 0x10uLL);
        v523 = v522.i16[2];
        if (v522.i32[1] >= v492.i32[1])
        {
          v523 = v492.i16[2];
        }

        v524 = vcgt_s32(v491, v522);
        if (v524.i8[4])
        {
          v523 = v491.i16[2];
        }

        *(v488 + 10) = v523;
        v525 = v522.i16[0];
        if (v522.i32[0] >= v492.i32[0])
        {
          v525 = v492.i16[0];
        }

        if (v524.i8[0])
        {
          v525 = v491.i16[0];
        }

        *(v488 + 8) = v525;
        v69 = v515;
      }
    }

LABEL_147:
    v82 = v69 * 0.9;
    if (v82 > v635)
    {
      v83 = v623;
      if (v82 <= v623)
      {
        if (v635 >= v623)
        {
LABEL_163:
          *(v28 + 94720) = v33[317];
          v533 = 1;
          v84 = v69;
          v549 = v69;
          goto LABEL_164;
        }
      }

      else if (v635 >= v623)
      {
        if (v623 >= v635)
        {
          goto LABEL_163;
        }

        goto LABEL_154;
      }

      v84 = v69;
      v87 = v31[63];
      if (v87 == -1)
      {
        v88 = 0;
      }

      else
      {
        v88 = &v558[2 * v87 + 30738];
      }

      sub_27798E424(v28 + 416, 0, v54, a5, a6, v88, v41);
      v83 = v623;
      v28 = a4;
      v533 = 4;
      *(v42 + 16) = 4;
      *(v42 + 8) = 0;
      *(a4 + 94720) = 0;
      v20[2] = 0;
      v549 = v635;
LABEL_164:
      if (*(v42 + 8))
      {
        if (v35)
        {
          v89 = v638;
          *(v28 + 8360) = v638;
          v90 = v559;
        }

        else
        {
          v91 = *(v42 + 16);
          v92 = *(v42 + 17);
          v90 = v559;
          if (v91 > 8)
          {
            goto LABEL_172;
          }

          if (v91 <= 1)
          {
            v91 = 1;
          }

          v93 = *(v558 + (v91 - 1) + 61464);
          if (v93 == -1)
          {
LABEL_172:
            v94 = 0;
          }

          else
          {
            v94 = &v558[2 * v93 + 30738];
          }

          *(v28 + 8360) = v94;
          if (v92 > 8)
          {
            goto LABEL_178;
          }

          if (v92 <= 1)
          {
            v92 = 1;
          }

          v95 = *(v558 + (v92 - 1) + 61464);
          if (v95 == -1)
          {
LABEL_178:
            v89 = 0;
          }

          else
          {
            v89 = &v558[2 * v95 + 30738];
          }
        }

        *(v28 + 8368) = v89;
        sub_2779CCAB4(v90, v28 + 416, a5, a6, 0, *(*v9 + 28), 0, v41 - 1);
        v28 = a4;
        v83 = v623;
      }

      v563 = **(v28 + 8280);
      v584 = *(v563 + 8);
      v96 = 472;
      if (!v584)
      {
        v96 = 504;
      }

      v97 = 448;
      if (!v584)
      {
        v97 = 480;
      }

      v626 = *(v28 + v96);
      v630 = *(v28 + v97);
      v643[0] = 0;
      if (v9[271])
      {
LABEL_309:
        v40 = v549;
        goto LABEL_310;
      }

      v98 = v537[712];
      if (v9[421] == 1)
      {
        v617 = 6;
        v99 = v558;
        if (v560[4])
        {
          v100 = 1;
          v101 = 7;
LABEL_200:
          v103 = v559[60];
          if (v103 == -1)
          {
            v104 = 0;
          }

          else
          {
            v104 = v99[v103 + 30754];
          }

          if (v104)
          {
            v105 = v104 + 1248;
          }

          else
          {
            v105 = 0;
          }

          v551 = v105;
          v106 = v559[63];
          if (v106 == -1)
          {
            v107 = 0;
          }

          else
          {
            v107 = v99[v106 + 30754];
          }

          if (v107)
          {
            v108 = v107 + 1248;
          }

          else
          {
            v108 = 0;
          }

          v573 = v108;
          v109 = v559[66];
          if (v109 == -1)
          {
            v110 = 0;
          }

          else
          {
            v110 = v99[v109 + 30754];
          }

          v111 = 0;
          v112 = 0;
          v113 = 0;
          if (v110)
          {
            v114 = v110 + 1248;
          }

          else
          {
            v114 = 0;
          }

          v570 = v114;
          v115 = &v99[2 * v103 + 30738];
          v587 = v559[60];
          v579 = v115;
          if (v103 == -1)
          {
            v115 = 0;
          }

          v567 = v115;
          v609 = v28 + 432;
          v603 = v84 >> v100;
          v576 = v84 >> v101;
          v598 = v28 + 153120;
          v591 = v28 + 153124;
          v594 = v28 + 153122;
          v116 = 48;
          v117 = 1;
          while (1)
          {
            v118 = v111;
            v119 = v609 + 2608 * v117;
            v120 = *(v119 + 4);
            v121 = *(v119 + 8);
            v122 = byte_277C3BCDE[4 * v555 + 2 * v120 + v121];
            if (v122 != 255)
            {
              v123 = v28 + 136 * v117;
              if (v584)
              {
                v124 = (*(*v99 + (v122 << 7) + 51440))(*(v123 + 48), *(v123 + 72), *(v119 + 16), *(v119 + 40));
              }

              else if (*(v563 + 16) == 1)
              {
                v124 = (*(*v99 + (v122 << 7) + 51440))(*(v123 + 48), *(v123 + 72), *(v119 + 48), *(v119 + 72));
              }

              else
              {
                v125 = ***(v28 + 8280);
                v126 = *(v28 + 416);
                v127 = *(v28 + 420);
                v128 = (v126 & 1) == 0 || v121 == 0;
                v129 = (0x20005uLL >> v125) & 1;
                if (v128)
                {
                  LODWORD(v129) = 0;
                }

                v130 = v126 - v129;
                v131 = (v127 & 1) == 0 || v120 == 0;
                v132 = (0x10003uLL >> v125) & 1;
                if (v131)
                {
                  LODWORD(v132) = 0;
                }

                v133 = (4 * (v127 - v132)) >> v120;
                v134 = (4 * v130) >> v121;
                if (v587 == -1 || (v135 = *v579, *v579 == -1))
                {
                  v137 = v558;
                }

                else
                {
                  v136 = *(v567 + 4);
                  v137 = v558;
                  if (v136 != -1 && (v135 != 0x4000 || v136 != 0x4000))
                  {
                    v138 = 8 * v135 - 0x20000 + v135 * v133;
                    if (v138 < 0)
                    {
                      v139 = -((128 - v138) >> 8);
                    }

                    else
                    {
                      v139 = (v138 + 128) >> 8;
                    }

                    v133 = v139 >> 6;
                    v140 = 8 * v136 - 0x20000 + v136 * v134;
                    if (v140 < 0)
                    {
                      v141 = -((128 - v140) >> 8);
                    }

                    else
                    {
                      v141 = (v140 + 128) >> 8;
                    }

                    v134 = v141 >> 6;
                  }
                }

                v124 = (*(*v137 + (v122 << 7) + 51440))(*(v123 + 48), *(v123 + 72), *(v551 + v116) + *(v551 + 36) * v134 + v133, *(v551 + 36));
              }

              *&v642[4 * v117] = v124;
              v28 = a4;
              if (v635 != -1)
              {
                v142 = ***(a4 + 8280);
                v143 = *(v119 + 8);
                if (v143)
                {
                  v144 = (*(a4 + 416) & 1) == 0;
                }

                else
                {
                  v144 = 1;
                }

                v145 = (0x20005uLL >> v142) & 1;
                if (v144)
                {
                  LODWORD(v145) = 0;
                }

                if (*(v119 + 4))
                {
                  v146 = (*(a4 + 420) & 1) == 0;
                }

                else
                {
                  v146 = 1;
                }

                v147 = (0x10003uLL >> v142) & 1;
                if (v146)
                {
                  LODWORD(v147) = 0;
                }

                v148 = (4 * (*(a4 + 420) - v147)) >> *(v119 + 4);
                v149 = (4 * (*(a4 + 416) - v145)) >> v143;
                if (v587 == -1)
                {
                  v151 = v558;
                }

                else
                {
                  v150 = *v579;
                  v151 = v558;
                  if (*v579 != -1)
                  {
                    v152 = *(v567 + 4);
                    if (v152 != -1 && (v150 != 0x4000 || v152 != 0x4000))
                    {
                      v153 = 8 * v150 - 0x20000 + v150 * v148;
                      if (v153 < 0)
                      {
                        v154 = -((128 - v153) >> 8);
                      }

                      else
                      {
                        v154 = (v153 + 128) >> 8;
                      }

                      v148 = v154 >> 6;
                      v155 = 8 * v152 - 0x20000 + v152 * v149;
                      if (v155 < 0)
                      {
                        v156 = -((128 - v155) >> 8);
                      }

                      else
                      {
                        v156 = (v155 + 128) >> 8;
                      }

                      v149 = v156 >> 6;
                    }
                  }
                }

                v112 = (*(*v151 + (v122 << 7) + 51440))(*(v123 + 48), *(v123 + 72), *(v573 + v116) + *(v573 + 36) * v149 + v148);
                v28 = a4;
              }

              v83 = v623;
              if (v623 == -1)
              {
                v99 = v558;
              }

              else
              {
                v157 = ***(v28 + 8280);
                v158 = *(v119 + 8);
                if (v158)
                {
                  v159 = (*(v28 + 416) & 1) == 0;
                }

                else
                {
                  v159 = 1;
                }

                v160 = (0x20005uLL >> v157) & 1;
                if (v159)
                {
                  LODWORD(v160) = 0;
                }

                if (*(v119 + 4))
                {
                  v161 = (*(v28 + 420) & 1) == 0;
                }

                else
                {
                  v161 = 1;
                }

                v162 = (0x10003uLL >> v157) & 1;
                if (v161)
                {
                  LODWORD(v162) = 0;
                }

                v163 = (4 * (*(v28 + 420) - v162)) >> *(v119 + 4);
                v164 = (4 * (*(v28 + 416) - v160)) >> v158;
                if (v587 == -1)
                {
                  v166 = v558;
                }

                else
                {
                  v165 = *v579;
                  v166 = v558;
                  if (*v579 != -1)
                  {
                    v167 = *(v567 + 4);
                    if (v167 != -1 && (v165 != 0x4000 || v167 != 0x4000))
                    {
                      v168 = 8 * v165 - 0x20000 + v165 * v163;
                      if (v168 < 0)
                      {
                        v169 = -((128 - v168) >> 8);
                      }

                      else
                      {
                        v169 = (v168 + 128) >> 8;
                      }

                      v163 = v169 >> 6;
                      v170 = 8 * v167 - 0x20000 + v167 * v164;
                      if (v170 < 0)
                      {
                        v171 = -((128 - v170) >> 8);
                      }

                      else
                      {
                        v171 = (v170 + 128) >> 8;
                      }

                      v164 = v171 >> 6;
                    }
                  }
                }

                v172 = (*(*v166 + (v122 << 7) + 51440))(*(v123 + 48), *(v123 + 72), *(v570 + v116) + *(v570 + 36) * v164 + v163);
                v99 = v558;
                v113 = v172;
                v28 = a4;
                v83 = v623;
              }
            }

            v173 = v117 - 1;
            v174 = *(v643 + v117 - 1);
            if (v174 > v603)
            {
              break;
            }

            if (v174 >= v576)
            {
              v175 = v598;
              v176 = 2;
              goto LABEL_306;
            }

            *(v598 + v173) = 0;
LABEL_307:
            *(v594 + v173) = v112 > v635 / v617;
            *(v591 + v173) = v113 > v83 / v617;
            v111 = 1;
            v116 = 56;
            v117 = 2;
            if (v118)
            {
              v8 = v542;
              v9 = v553;
              goto LABEL_309;
            }
          }

          v175 = v598;
          v176 = 1;
LABEL_306:
          *(v175 + v173) = v176;
          goto LABEL_307;
        }
      }

      else
      {
        if ((v559[15] * v559[14]) <= 2073599)
        {
          v102 = 5;
        }

        else
        {
          v102 = 3;
        }

        v617 = v102;
        v99 = v558;
      }

      if (v98 < 3 || *v20 < 0x1F5u || (v559[15] * v559[14]) <= 230399)
      {
        v100 = 1;
        v101 = 3;
      }

      else
      {
        if (v98 == 3)
        {
          v101 = 4;
        }

        else
        {
          v101 = 5;
        }

        v100 = 2;
      }

      goto LABEL_200;
    }

    v83 = v623;
    if (v623 >= v635 || v82 <= v623)
    {
      goto LABEL_163;
    }

LABEL_154:
    v84 = v69;
    v85 = v31[66];
    if (v85 == -1)
    {
      v86 = 0;
    }

    else
    {
      v86 = &v558[2 * v85 + 30738];
    }

    sub_27798E424(v28 + 416, 0, v61, a5, a6, v86, v41);
    v83 = v623;
    v28 = a4;
    v533 = 7;
    *(v42 + 16) = 7;
    *(v42 + 8) = 0;
    *(a4 + 94720) = 0;
    v20[2] = 0;
    v549 = v623;
    goto LABEL_164;
  }

  v626 = 0;
  v630 = 0;
  v643[0] = 0;
  v40 = -1;
  v533 = 1;
LABEL_310:
  *v537 = 0;
  v177 = malloc_type_malloc(0x6FuLL, 0x5F484EBFuLL);
  if (!v177 || (v178 = (v177 + 23) & 0xFFFFFFFFFFFFFFF0, *(v178 - 8) = v177, !v178))
  {
    sub_2779F5C10(*(a4 + 11152), 2, "Failed to allocate vt");
    v178 = 0;
  }

  v179 = v560;
  v590 = v178;
  v595 = *(v561 + 154984);
  *(v178 + 80) = v595;
  v180 = a4;
  v181 = v621;
  if (v621)
  {
    goto LABEL_319;
  }

  v182 = v560[381];
  if (!v182)
  {
    goto LABEL_319;
  }

  if (v533 != 1)
  {
    goto LABEL_319;
  }

  if (*v560 < 31)
  {
    goto LABEL_319;
  }

  if (v552)
  {
    goto LABEL_319;
  }

  if (*(**(a4 + 8280) + 8))
  {
    goto LABEL_319;
  }

  v485 = v560[391];
  if (!v485)
  {
    goto LABEL_319;
  }

  v486 = v537[712];
  if (v485 < 3)
  {
    if (v485 == 2)
    {
      if (v486 >= 2)
      {
        goto LABEL_319;
      }
    }

    else if (v485 < 1 || v486)
    {
      goto LABEL_319;
    }

LABEL_634:
    v526 = *(*v9 + 28);
    if (byte_277C3F990[v526] + a6 <= *(a2 + 12))
    {
      v527 = v560[362] != 0;
      v528 = *(v558 + v555 + 161173) << v527;
      v529 = (3 * v528) >> 2 << v527;
      v530 = v529 >> 3;
      if (v182 != 1)
      {
        v530 = v529;
      }

      if (v486)
      {
        v529 = v530;
      }

      if (byte_277C36D60[v526] + a5 <= *(a2 + 4) && v528 > v40 && LODWORD(v643[0]) < v529 && HIDWORD(v643[0]) < v529)
      {
        if (v559[134] > a6 && v559[133] > a5)
        {
          v531 = byte_277C3F990[*(v559 + 560)];
          v532 = (*(v559 + 68) + 176 * (a6 / v531 + v559[139] * (a5 / v531)));
          *(*(v559 + 71) + 8 * (a6 + v559[145] * a5)) = v532;
          *v532 = v555;
        }

        *v537 = 1;
        v375 = v590;
        goto LABEL_577;
      }
    }

    v179 = v560;
    if (v182 >= 2 && !v486)
    {
      *v537 = 2;
    }

    goto LABEL_319;
  }

  if (v486 < 3)
  {
    goto LABEL_634;
  }

LABEL_319:
  if (v8[108])
  {
    v183 = v8[110];
    v184 = v8[111];
    v186 = v183 > 2 * v184 || v183 > v184;
    v536 = v186;
  }

  else
  {
    v536 = 0;
  }

  v562 = 0;
  if (v541 == 12)
  {
    v187 = 64;
  }

  else
  {
    v187 = 128;
  }

  v188 = ((*(a4 + 8344) >> 31) & (*(a4 + 8344) >> 3)) + v187;
  v189 = ((*(a4 + 8352) >> 31) & (*(a4 + 8352) >> 3)) + v187;
  v190 = 0;
  if (v621 & 1 | (v179[375] == 0))
  {
    v191 = 0;
  }

  else
  {
    v191 = 4;
  }

  v192 = v188 - v191;
  v193 = v189 - v191;
  v568 = *(&v640 + 1);
  v194 = 248;
  v195 = 320;
  v196 = v595;
  v571 = v189;
  do
  {
    v197 = 0;
    v198 = v562;
    v546 = (v562 & 1) << 6;
    v199 = 32 * v562;
    v545 = 4 * v562++;
    v645[v562] = 0;
    v200 = 0;
    v540 = v190;
    v564 = &v645[4 * v198 + 5];
    v543 = v199 & 0x7FFFFFC0;
    v544 = v190 & 0xFFFFFFC0;
    v585 = &v643[2 * v198 + 9];
    v588 = &v644[v198];
    v201 = v195;
    v202 = v194;
    v580 = v198;
    v582 = &v643[2 * v198 + 1];
    v574 = v195;
    v577 = v194;
    do
    {
      v203 = 0;
      v204 = 0;
      v550 = v200;
      v564[v197] = 0;
      *(v588 + v197) = 0;
      v618 = (32 * (v197 & 1)) | v546;
      v610 = (16 * v197) & 0x20 | v543;
      *(v585 + v197) = 0;
      *(v582 + v197) = 0x7FFFFFFF;
      v592 = v197;
      v556 = v544 + (v200 & 0xFFFFFFE0);
      v547 = v202;
      v548 = v201;
      v205 = v201;
      v206 = v202;
      v624 = &v645[4 * v197 + 21 + 4 * v545];
      v554 = v546 + 32 * (v197 & 1);
      do
      {
        v207 = v618 | (16 * (v204 & 1));
        v208 = v610 | (8 * v204) & 0x10;
        v624[v204] = 0;
        v636 = v206;
        if (v181)
        {
          v209 = v204;
          v210 = 0;
          v211 = *(*(v180 + 8376) + 192);
          v212 = v205;
          do
          {
            v213 = 0;
            v214 = 0;
            v215 = v205;
            do
            {
              v216 = (8 * (v210 & 1)) | v207 | v213 & 4;
              v217 = (4 * v210) & 8 | v214 & 4 | v208;
              if (v216 < v192 && v217 < v193)
              {
                v221 = (v29 + v217 * v30 + v216);
                if ((v211 & 8) != 0)
                {
                  v225 = vaddlv_u16(vadd_s16(vadd_s16(vadd_s16(*(2 * v221 + 2 * v30), *(2 * v221)), *(2 * v221 + 2 * v30 + 2 * v30)), *(2 * v221 + 2 * v30 + 2 * v30 + 2 * v30)));
                }

                else
                {
                  v222.i32[0] = *v221;
                  v222.i32[1] = *(v221 + v30);
                  v223 = (v221 + 2 * v30);
                  v224.i32[0] = *v223;
                  v224.i32[1] = *(v223 + v30);
                  v225 = vaddlvq_u16(vaddl_u8(v224, v222));
                }

                v220 = ((v225 + 8) >> 4) - 128;
                v219 = v220 * v220;
              }

              else
              {
                v219 = 0;
                v220 = 0;
              }

              v226 = (v196 + v215);
              *v226 = v219;
              v226[1] = v220;
              v226[2] = 0;
              v214 += 2;
              v213 += 4;
              v215 += 144;
            }

            while (v214 != 8);
            ++v210;
            v205 += 656;
          }

          while (v210 != 4);
          v204 = v209;
          v227 = v212;
        }

        else
        {
          v599 = v205;
          v604 = v203;
          if ((*(*(v180 + 8376) + 192) & 8) != 0)
          {
            v233 = 0;
            v234 = 0;
            v235 = (v196 + v206);
            do
            {
              v236 = v233 & 8 | v207;
              v237 = v234 & 8 | v208;
              if (v236 < v188 && v237 < v189)
              {
                v241 = (2 * (v29 + v237 * v30 + v236));
                v242 = *v241;
                v243 = (v241 + 2 * v30);
                v244 = *v243;
                v245 = (v243 + 2 * v30);
                v246 = *v245;
                v247 = (v245 + 2 * v30);
                LODWORD(v247) = (vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v244, v242), v246), *v247), *(v247 + 2 * v30)), *(v247 + 2 * v30 + 2 * v30)), *(v247 + 2 * v30 + 2 * v30 + 2 * v30)), *(v247 + 2 * v30 + 2 * v30 + 2 * v30 + 2 * v30))) + 32) >> 6;
                v248 = (2 * (v630 + v237 * v626 + v236));
                v249 = *v248;
                v250 = (v248 + 2 * v626);
                v251 = *v250;
                v252 = (v250 + 2 * v626);
                v253 = *v252;
                v254 = (v252 + 2 * v626);
                v255 = *v254;
                v256 = (v254 + 2 * v626);
                v239 = v247 - ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v251, v249), v253), v255), *v256), *(v256 + 2 * v626)), *(v256 + 2 * v626 + 2 * v626)), *(v256 + 2 * v626 + 2 * v626 + 2 * v626))) + 32) >> 6);
                v240 = v239 * v239;
              }

              else
              {
                v239 = 0;
                v240 = 0;
              }

              *(v235 - 2) = v240;
              *(v235 - 1) = v239;
              *v235 = 0;
              v234 += 4;
              v233 += 8;
              v235 += 164;
            }

            while (v234 != 16);
            v257 = v180;
            v258 = v595;
          }

          else
          {
            v228 = 0;
            v229 = 0;
            v649 = 0uLL;
            v648 = 0uLL;
            v230 = 1;
            do
            {
              if ((v229 & 8 | v207) >= v188 || (v228 & 8 | v208) >= v189)
              {
                v230 = 0;
              }

              v229 += 8;
              v228 += 4;
            }

            while (v229 != 32);
            v596 = v204;
            v232 = v590;
            if (v230)
            {
              sub_277B31FC8(v29, v30, v207, v208, &v647);
              sub_277B31FC8(v630, v626, v207, v208, &v646);
              v232 = v590;
              v648 = vsubq_s32(v647, v646);
              v649 = vmulq_s32(v648, v648);
            }

            else
            {
              v259 = 0;
              for (i = 0; i != 4; ++i)
              {
                v261 = (8 * (i & 1)) | v207;
                if (v261 < v188)
                {
                  v262 = (4 * i) & 8 | v208;
                  if (v262 < v189)
                  {
                    v263 = v556 + (v203 & 0xFFFFFFF0) + (v259 & 0xFFFFFFF8);
                    v264 = v554 + 16 * (v204 & 1) + 8 * (i & 1);
                    v265 = (v630 + 2 * v626 + v264 + (v626 * v263));
                    v266 = (v29 + 2 * v30 + v264 + (v30 * v263));
                    v267 = (v29 + v262 * v30 + v261);
                    v268 = vaddl_u8(*(v267 + v30), *v267);
                    v269 = 6;
                    do
                    {
                      v268 = vaddw_u8(v268, *v266);
                      v266 = (v266 + v30);
                      --v269;
                    }

                    while (v269);
                    v270 = vaddlvq_u16(v268) + 32;
                    v271 = (v630 + v262 * v626 + v261);
                    v272 = vaddl_u8(*(v271 + v626), *v271);
                    v273 = 6;
                    do
                    {
                      v272 = vaddw_u8(v272, *v265);
                      v265 = (v265 + v626);
                      --v273;
                    }

                    while (v273);
                    v274 = (v270 >> 6) - ((vaddlvq_u16(v272) + 32) >> 6);
                    v648.i32[i] = v274;
                    v649.i32[i] = v274 * v274;
                  }
                }

                v259 += 4;
              }
            }

            v275 = 0;
            v276 = v196 + v206;
            do
            {
              v277 = v648.u32[v275];
              *(v276 - 8) = v649.i32[v275];
              *(v276 - 4) = v277;
              ++v275;
              v276 += 656;
            }

            while (v275 != 4);
            v258 = v232[10];
            v257 = a4;
            v204 = v596;
          }

          v278 = (v196 + 43664 * v580 + 10896 * v592 + 2704 * v204);
          v279 = v278[224];
          v280 = v278[60];
          v281 = v278[61];
          v282 = v278[225];
          v283 = v278[62];
          v278[44] = v279 + v280;
          v278[45] = v282 + v281;
          v278[46] = v283 + 1;
          v284 = v278[388];
          v285 = v278[552];
          v286 = v278[389];
          v287 = v278[553];
          v288 = v278[390] + 1;
          v278[48] = v285 + v284;
          v278[49] = v287 + v286;
          v278[50] = v288;
          v289 = v284 + v280;
          v290 = v286 + v281;
          v278[52] = v289;
          v278[53] = v290;
          v278[54] = v283 + 1;
          v291 = v285 + v279;
          v292 = v287 + v282;
          v293 = v278[226] + 1;
          v278[56] = v291;
          v278[57] = v292;
          v278[58] = v293;
          v278[40] = v291 + v289;
          v278[41] = v292 + v290;
          v278[42] = v283 + 2;
          v294 = (v258 + 43664 * v580 + 10896 * v592 + 2704 * v204);
          v295 = (v294[40] - ((v294[41] * v294[41]) >> v294[42])) << 8 >> v294[42];
          v294[43] = v295;
          *(v588 + v592) += v295;
          v296 = *(v582 + v592);
          if (v296 >= v295)
          {
            v296 = v295;
          }

          *(v582 + v592) = v296;
          v297 = *(v585 + v592);
          if (v297 <= v295)
          {
            v297 = v295;
          }

          *(v585 + v592) = v297;
          v595 = v258;
          if (v568 >= v295)
          {
            v196 = v258;
          }

          else
          {
            v624[v204] = 1;
            v564[v592] = 1;
            v196 = v258;
            v645[v562] = 1;
            v645[0] = 1;
          }

          v189 = v571;
          v195 = v574;
          v194 = v577;
          v180 = v257;
          v181 = v621;
          v203 = v604;
          v227 = v599;
        }

        ++v204;
        v206 = v636 + 2704;
        v203 += 8;
        v205 = v227 + 2704;
      }

      while (v204 != 4);
      v197 = v592 + 1;
      v202 = v547 + 10896;
      v200 = v550 + 16;
      v201 = v548 + 10896;
    }

    while (v592 != 3);
    if (v541 == 12)
    {
      break;
    }

    v194 += 43664;
    v190 = v540 + 32;
    v195 += 43664;
  }

  while (v580 < 3);
  v298 = 0;
  v569 = 0;
  v572 = 0;
  v299 = 4;
  if (v541 == 12)
  {
    v299 = 1;
  }

  v575 = v299;
  v637 = *(&v640 + 1);
  v633 = 4 * *(&v640 + 1);
  v300 = v645[0];
  v301 = v595 + 464;
  v302 = v595 + 252;
  v565 = 0x7FFFFFFF;
  do
  {
    v600 = 0;
    v303 = 0;
    v304 = v298;
    v619 = 4 * v298;
    v611 = 4 * v298++ + 5;
    v593 = 0x7FFFFFFF;
    v589 = &v643[2 * v304 + 9];
    v305 = v595;
    v605 = v595 + 43664 * v304;
    v578 = v302;
    v581 = v301;
    v306 = v302;
    v625 = v304;
    v583 = &v644[v304];
    v586 = &v643[2 * v304 + 1];
    do
    {
      v595 = v305;
      v307 = 0;
      v308 = v611 + v303;
      v628 = v306;
      v309 = v306;
      v310 = v301;
      do
      {
        if (v181)
        {
          v311 = (v605 + 10896 * v303 + 2704 * v307);
          v312 = v310;
          v313 = 4;
          do
          {
            v314 = *v312;
            v315 = *(v312 - 36);
            v316 = *(v312 - 35);
            v317 = *v312 + v315;
            v318 = *(v312 - 34);
            *(v312 - 50) = v318 + 1;
            v319 = v312[72];
            v320 = v312[36];
            v321 = v312[37];
            v322 = v312[73];
            v323 = v312[38] + 1;
            *(v312 - 48) = v319 + v320;
            *(v312 - 47) = v322 + v321;
            *(v312 - 46) = v323;
            *(v312 - 44) = v320 + v315;
            *(v312 - 43) = v321 + v316;
            *(v312 - 42) = v318 + 1;
            v324 = v319 + v314;
            *(v312 - 40) = v324;
            v325 = vadd_s32(*(v312 + 1), (v322 | 0x100000000));
            v326 = *(v312 + 1) + v316;
            *(v312 - 52) = v317;
            *(v312 - 51) = v326;
            *(v312 - 39) = v325;
            *(v312 - 56) = v324 + v320 + v315;
            *(v312 - 55) = v325.i32[0] + v321 + v316;
            *(v312 - 54) = v318 + 2;
            v312 += 164;
            --v313;
          }

          while (v313);
          v327 = v311[224];
          v328 = v311[60];
          v329 = v311[61];
          v330 = v311[225];
          v331 = v311[62];
          v311[44] = v327 + v328;
          v311[45] = v330 + v329;
          v311[46] = v331 + 1;
          v332 = v311[388];
          v333 = v311[552];
          v334 = v311[389];
          v335 = v311[553];
          v336 = v311[390] + 1;
          v311[48] = v333 + v332;
          v311[49] = v335 + v334;
          v311[50] = v336;
          v337 = v334 + v329;
          v311[52] = v332 + v328;
          v311[53] = v334 + v329;
          v311[54] = v331 + 1;
          v338 = v333 + v327;
          v339 = v311[226] + 1;
          v311[56] = v338;
          v311[57] = v335 + v330;
          v311[58] = v339;
          v340 = v338 + v332 + v328;
          v311[40] = v340;
          v311[41] = v335 + v330 + v337;
          v341 = (v340 - (((v335 + v330 + v337) * (v335 + v330 + v337)) >> (v331 + 2))) << 8 >> (v331 + 2);
          v311[42] = v331 + 2;
          v311[43] = v341;
          v181 = v621;
          if (v637 < v341)
          {
            v300 = 1;
            v342 = 1;
            if (*(v560 + 1544) == 1)
            {
              v343 = 0;
              v344 = 0x7FFFFFFF;
              v345 = v309;
              v346 = 4;
              do
              {
                v347 = (*(v345 - 3) - ((*(v345 - 2) * *(v345 - 2)) >> *(v345 - 1))) << 8 >> *(v345 - 1);
                *v345 = v347;
                if (v347 > v343)
                {
                  v343 = v347;
                }

                if (v347 < v344)
                {
                  v344 = v347;
                }

                v345 += 164;
                --v346;
              }

              while (v346);
              if (v633 < v343 - v344)
              {
                v342 = 1;
              }

              else
              {
                v342 = 2;
              }
            }

            v645[4 * v303 + 21 + 4 * v619 + v307] = v342;
            v645[v308] = 1;
            v645[v298] = 1;
          }
        }

        ++v307;
        v310 += 676;
        v309 += 676;
      }

      while (v307 != 4);
      v348 = (v305 + 43664 * v625 + 10896 * v303);
      v349 = v348[716];
      v350 = v348[40];
      v351 = v348[41];
      v352 = v348[717];
      v353 = v348[42];
      v348[24] = v349 + v350;
      v348[25] = v352 + v351;
      v348[26] = v353 + 1;
      v354 = v348[1392];
      v355 = v348[2068];
      v356 = v348[1393];
      v357 = v348[2069];
      v358 = v348[1394] + 1;
      v348[28] = v355 + v354;
      v348[29] = v357 + v356;
      v348[30] = v358;
      v359 = v354 + v350;
      v360 = v356 + v351;
      v348[32] = v359;
      v348[33] = v360;
      v348[34] = v353 + 1;
      v361 = v355 + v349;
      v362 = v361 + v359;
      v348[20] = v361 + v359;
      v363 = v348 + 20;
      v364 = v363[698] + 1;
      v363[16] = v361;
      v363[17] = v357 + v352;
      v363[18] = v364;
      v365 = v357 + v352 + v360;
      v363[1] = v365;
      v363[2] = v353 + 2;
      v366 = v559[14];
      v367 = v559[15];
      if (v542[3] <= 2)
      {
        v368 = 20000;
      }

      else
      {
        v368 = 20000;
        if (!v542[1])
        {
          v368 = 40000;
        }
      }

      v181 = v621;
      if (!v645[v308])
      {
        v369 = (v362 - ((v365 * v365) >> (v353 + 2))) << 8 >> (v353 + 2);
        v363[3] = v369;
        v370 = v600;
        if (v369 > v600)
        {
          v370 = (v362 - ((v365 * v365) >> (v353 + 2))) << 8 >> (v353 + 2);
        }

        v600 = v370;
        v371 = v593;
        if (v369 < v593)
        {
          v371 = (v362 - ((v365 * v365) >> (v353 + 2))) << 8 >> (v353 + 2);
        }

        v593 = v371;
        if (v640 < v369 || (v621 & 1) == 0 && ((v372 = *(v589 + v303), v373 = *(v586 + v303), v640 >> 1 < v369) && v369 > v583[v303] >> 1 || (v367 * v366) <= 230400 && (v640 >> 1 < v372 - v373 && v640 < v372 || v560[336] && v537[712] >= 3u && *(v560 + 5) < v368 && v640 >> 4 < v372 && v372 > 4 * v373)))
        {
          v300 = 1;
          v645[v308] = 1;
          v645[v298] = 1;
        }
      }

      ++v303;
      v301 += 10896;
      v306 = v628 + 2724;
    }

    while (v303 != 4);
    if (v645[v298])
    {
      v374 = a4;
      v375 = v590;
      v376 = v581;
      goto LABEL_462;
    }

    v377 = (v305 + 43664 * v625);
    v378 = v377[11].i32[0];
    v377[3].i32[0] = v378 + 1;
    v379 = v377[2735].i32[0] + 1;
    v380 = v377[2734];
    v381 = v377[4096];
    v377[4] = vadd_s32(v381, v380);
    v377[5].i32[0] = v379;
    v382 = v377[10];
    v383 = vadd_s32(v380, v382);
    v377[6] = v383;
    v377[7].i32[0] = v378 + 1;
    v384 = v377[1373].i32[0] + 1;
    v385 = v377[1372];
    v377[2] = vadd_s32(v385, v382);
    v386 = vadd_s32(v381, v385);
    v377[8] = v386;
    v377[9].i32[0] = v384;
    v387 = vadd_s32(v386, v383);
    v388 = v378 + 2;
    *v377 = v387;
    v389 = (v387.i32[0] - ((v387.i32[1] * v387.i32[1]) >> (v378 + 2))) << 8 >> (v378 + 2);
    v377[1].i32[0] = v388;
    v377[1].i32[1] = v389;
    v390 = v572;
    if (v389 > v572)
    {
      v390 = v389;
    }

    v572 = v390;
    v391 = v565;
    if (v389 < v565)
    {
      v391 = v389;
    }

    v565 = v391;
    v374 = a4;
    v375 = v590;
    v376 = v581;
    if (v536 || *(*v558 + 51016))
    {
      v392 = 0;
      if ((v621 & 1) == 0)
      {
        goto LABEL_453;
      }
    }

    else
    {
      v392 = v560[336] == 0;
      if ((v621 & 1) == 0)
      {
LABEL_453:
        v394 = 3 * (*(&v639 + 1) >> 3) >= v600 - v593 || *(&v639 + 1) >> 1 >= v600;
        if (!v394 && !v392)
        {
          v300 = 1;
          v645[v298] = 1;
        }
      }
    }

    v569 += v389;
LABEL_462:
    if (v541 == 12)
    {
      v300 = 1;
    }

    v301 = v376 + 43664;
    v302 = v578 + 43664;
  }

  while (v298 != v575);
  v645[0] = v300;
  if (!v300)
  {
    v395 = vdupq_n_s64(v305);
    v396 = vaddq_s64(v395, xmmword_277BB70E0);
    v397 = vaddq_s64(v395, xmmword_277BB70F0);
    v398 = *(v396.i64[0] + 8) + 1;
    v375[2] = vadd_s32(*v396.i64[1], *v396.i64[0]);
    v375[3].i32[0] = v398;
    v399 = *(v397.i64[0] + 8) + 1;
    v375[4] = vadd_s32(*v397.i64[1], *v397.i64[0]);
    v375[5].i32[0] = v399;
    v400 = *(v396.i64[0] + 8);
    v375[7].i32[0] = v400 + 1;
    v375[9].i32[0] = *(v396.i64[1] + 8) + 1;
    v400 += 2;
    *v396.i8 = vadd_s32(*v397.i64[0], *v396.i64[0]);
    v375[6] = *v396.i8;
    *v397.i8 = vadd_s32(*v397.i64[1], *v396.i64[1]);
    v375[8] = *v397.i8;
    *v396.i8 = vadd_s32(*v397.i8, *v396.i8);
    *v375 = *v396.i8;
    v401 = (v396.i32[0] - ((v396.i32[1] * v396.i32[1]) >> v400)) << 8 >> v400;
    v375[1].i32[0] = v400;
    v375[1].i32[1] = v401;
    v300 = (v621 & 1) == 0 && (3 * (v639 >> 3) < v572 - v565 && v639 >> 1 < v572 || v401 > (9 * v569) >> 5);
  }

  v404 = v558;
  if (a6 + 32 > *(a2 + 12) || a5 + 32 > *(a2 + 4) || (v405 = sub_2779953CC(v558, v374 + 416, a2, v375, 15, a5, a6, v639, 6u, v300), v375 = v590, v404 = v558, v374 = a4, !v405))
  {
    v406 = 0;
    v606 = *(&v639 + 1);
    v622 = v640;
    do
    {
      v612 = v406 + 1;
      v634 = a5 + 16 * (v406 >> 1);
      v629 = 16 * (v406 & 1) + a6;
      v407 = sub_2779953CC(v404, v374 + 416, a2, (*&v375[10] + 43664 * v406), 12, v634, v629, v606, 6u, v645[v406 + 1]);
      v375 = v590;
      v404 = v558;
      v374 = a4;
      if (!v407)
      {
        for (j = 0; j != 4; ++j)
        {
          v409 = ((4 * j) & 8) + v634;
          v410 = 8 * (j & 1) + v629;
          v411 = sub_2779953CC(v404, v374 + 416, a2, (*&v375[10] + 43664 * v406 + 10896 * j + 80), 9, v409, v410, v622, 6u, v645[4 * v406 + 5 + j]);
          v375 = v590;
          v404 = v558;
          v374 = a4;
          if (!v411)
          {
            v412 = 0;
            do
            {
              if (!sub_2779953CC(v404, v374 + 416, a2, (*&v375[10] + 43664 * v406 + 10896 * j + 2704 * v412 + 160), 6, ((2 * v412) & 4) + v409, 4 * (v412 & 1) + v410, v637, 3u, v645[16 * v406 + 21 + 4 * j + v412]))
              {
                v413 = 0;
                v414 = 0;
                v415 = v559[134];
                do
                {
                  v416 = (v413 & 2) + 4 * (v412 & 1) + v410;
                  if (v415 > v416)
                  {
                    v417 = (v414 & 2) + ((2 * v412) & 4) + v409;
                    if (v559[133] > v417)
                    {
                      v418 = v416 + v559[145] * v417;
                      v419 = byte_277C3F990[*(v559 + 560)];
                      v420 = (*(v559 + 68) + 176 * (v416 / v419 + v559[139] * (v417 / v419)));
                      *(*(v559 + 71) + 8 * v418) = v420;
                      *v420 = 3;
                    }
                  }

                  ++v414;
                  v413 += 2;
                }

                while (v414 != 4);
              }

              ++v412;
              v374 = a4;
              v404 = v558;
              v375 = v590;
            }

            while (v412 != 4);
          }
        }
      }

      ++v406;
    }

    while (v612 != v575);
  }

  if (v534 != 1 || !v560[325])
  {
LABEL_576:
    if (v375)
    {
      goto LABEL_577;
    }

    return;
  }

  if (v541 != 12)
  {
    v428 = ***(v374 + 8280);
    switch(v428)
    {
      case 15:
        v433 = v375[1].i32[1];
        goto LABEL_535;
      case 14:
        v452 = 0;
        v453 = v639 >> 2;
        v454 = 1;
        do
        {
          v455 = v454;
          if (v453 > v375[2 * v452 + 3].i32[1])
          {
            *(v535 + v452 + 1) = 1;
          }

          v454 = 0;
          v452 = 1;
        }

        while ((v455 & 1) != 0);
        goto LABEL_577;
      case 13:
        v429 = 0;
        v430 = v639 >> 2;
        v431 = 1;
        do
        {
          v432 = v431;
          if (v430 > v375[2 * v429 + 7].i32[1])
          {
            *(v535 + v429 + 3) = 1;
          }

          v431 = 0;
          v429 = 1;
        }

        while ((v432 & 1) != 0);
        goto LABEL_577;
    }

    v456 = 0;
    v457 = (5 * *(&v639 + 1)) >> 4;
    v458 = (5 * *(&v639 + 1)) >> 3;
    v459 = (5 * v640) >> 3;
    v460 = v374 + 101321;
    v461 = 172;
    do
    {
      v462 = (&unk_277BC0CE8 + 8 * v456);
      v463 = v462[1];
      v464 = *v462 + a5;
      v465 = v463 + a6;
      v466 = v463 + a6 + v464 * v559[145];
      v467 = *(*(v559 + 71) + 8 * v466);
      if (v467 && v559[134] > v465 && v559[133] > v464)
      {
        v468 = *v467;
        switch(v468)
        {
          case 12:
            if (v458 > *(*&v590[10] + 43664 * v456 + 12))
            {
              *(v535 + v456 + 5) = 1;
            }

            break;
          case 11:
            v472 = 0;
            v473 = 1;
            do
            {
              v474 = v473;
              if (v457 > *(*&v590[10] + 43664 * v456 + 16 * v472 + 28))
              {
                *(v535 + 2 * v456 + v472 + 9) = 1;
              }

              v473 = 0;
              v472 = 1;
            }

            while ((v474 & 1) != 0);
            break;
          case 10:
            v469 = 0;
            v470 = 1;
            do
            {
              v471 = v470;
              if (v457 > *(*&v590[10] + 43664 * v456 + 16 * v469 + 60))
              {
                *(v535 + 2 * v456 + v469 + 17) = 1;
              }

              v470 = 0;
              v469 = 1;
            }

            while ((v471 & 1) != 0);
            break;
          default:
            v475 = 0;
            v476 = v461;
            v477 = v460;
            do
            {
              v478 = (&unk_277BC0D08 + 8 * v475);
              v479 = *v478;
              v480 = v478[1];
              v481 = *(*(v559 + 71) + 8 * v466 + 8 * (v480 + v479 * v559[145]));
              if (v481 && v559[134] > v480 + v465 && v559[133] > v479 + v464)
              {
                v482 = *v481;
                if ((v482 - 6) >= 3)
                {
                  if (v482 == 9 && v459 > *(*&v590[10] + 43664 * v456 + 10896 * v475 + 92))
                  {
                    *(v535 + 4 * v456 + v475 + 25) = 1;
                  }
                }

                else
                {
                  v483 = 0;
                  v484 = v476;
                  do
                  {
                    if (v637 >> 8 > *(*&v590[10] + v484))
                    {
                      *(v477 + v483) = 1;
                    }

                    ++v483;
                    v484 += 2704;
                  }

                  while (v483 != 4);
                }
              }

              ++v475;
              v477 += 4;
              v476 += 10896;
            }

            while (v475 != 4);
            break;
        }
      }

      ++v456;
      v460 += 16;
      v461 += 43664;
      v375 = v590;
    }

    while (v456 != 4);
    goto LABEL_576;
  }

  v421 = v375[10];
  v422 = ***(v374 + 8280);
  if (v422 != 12)
  {
    if (v422 == 11)
    {
      v434 = 0;
      v435 = *&v421 + 16;
      v436 = v639 >> 2;
      v437 = 1;
      do
      {
        v438 = v437;
        if (v436 > *(v435 + 16 * v434 + 12))
        {
          *(v535 + v434 + 1) = 1;
        }

        v437 = 0;
        v434 = 1;
      }

      while ((v438 & 1) != 0);
    }

    else if (v422 == 10)
    {
      v423 = 0;
      v424 = *&v421 + 48;
      v425 = v639 >> 2;
      v426 = 1;
      do
      {
        v427 = v426;
        if (v425 > *(v424 + 16 * v423 + 12))
        {
          *(v535 + v423 + 3) = 1;
        }

        v426 = 0;
        v423 = 1;
      }

      while ((v427 & 1) != 0);
    }

    else
    {
      v439 = 0;
      v440 = *&v421 + 80;
      v441 = v640 >> 8;
      v442 = (5 * *(&v639 + 1)) >> 3;
      v443 = v374 + 101289;
      v444 = (*&v421 + 172);
      do
      {
        v445 = (&unk_277BC0D08 + 8 * v439);
        v446 = v445[1] + a6;
        if (v559[134] > v446)
        {
          v447 = *v445 + a5;
          if (v559[133] > v447)
          {
            v448 = *(*(v559 + 71) + 8 * (v446 + v447 * v559[145]));
            if (v448)
            {
              v449 = *v448;
              if ((v449 - 6) >= 3)
              {
                if (v449 == 9 && v442 > *(v440 + 10896 * v439 + 12))
                {
                  *(v535 + v439 + 5) = 1;
                }
              }

              else
              {
                v450 = 0;
                v451 = v444;
                do
                {
                  if (v441 > *v451)
                  {
                    *(v443 + v450) = 1;
                  }

                  v451 += 676;
                  ++v450;
                }

                while (v450 != 4);
              }
            }
          }
        }

        ++v439;
        v443 += 4;
        v444 += 2724;
      }

      while (v439 != 4);
    }

    goto LABEL_576;
  }

  v433 = *(*&v421 + 12);
LABEL_535:
  if (v433 < v639 >> 1)
  {
    *v535 = 1;
  }

LABEL_577:
  free(*&v375[-1]);
}