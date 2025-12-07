uint64_t sub_100226AE4(float a1, float a2, double a3, double a4, double a5, __n128 a6, uint64_t a7, float64x2_t *a8, uint64_t a9, int a10)
{
  v10 = a10 - 8;
  if (a10 >= 8)
  {
    result = 0;
    v12 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    a6.n128_f64[0] = a1;
    v13 = a8 + 2;
    v14 = &off_1004B0000;
    v15 = &off_1004B0000;
    while (1)
    {
      v16 = v13[-2];
      v17 = v13[-1];
      v18 = *v13;
      v19 = v13[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v64 = result;
        v52 = v13;
        v56 = a9;
        v60 = v10;
        v44 = a6;
        v48 = v12;
        v36 = v17;
        v40 = v16;
        v28 = v19;
        v32 = v18;
        sub_1003C83B4();
        v19 = v28;
        v18 = v32;
        v17 = v36;
        v16 = v40;
        a6 = v44;
        v12 = v48;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v52;
        a9 = v56;
        v10 = v60;
        result = v64;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v20 = v14[3];
          v21 = v15[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v65 = result;
      v53 = v13;
      v57 = a9;
      v61 = v10;
      v45 = a6;
      v49 = v12;
      v37 = v17;
      v41 = v16;
      v29 = v19;
      v33 = v18;
      sub_1003C83FC();
      v19 = v29;
      v18 = v33;
      v17 = v37;
      v16 = v41;
      a6 = v45;
      v12 = v49;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v53;
      a9 = v57;
      v10 = v61;
      result = v65;
      v20 = xmmword_1004B0030;
      v21 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v66 = result;
      v54 = v13;
      v58 = a9;
      v62 = v10;
      v46 = a6;
      v50 = v12;
      v38 = v17;
      v42 = v16;
      v30 = v19;
      v34 = v18;
      v24 = v21;
      v26 = v20;
      sub_1003C83B4();
      v21 = v24;
      v20 = v26;
      v19 = v30;
      v18 = v34;
      v17 = v38;
      v16 = v42;
      a6 = v46;
      v12 = v50;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v54;
      a9 = v58;
      v10 = v62;
      result = v66;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v67 = result;
        v55 = v13;
        v59 = a9;
        v63 = v10;
        v47 = a6;
        v51 = v12;
        v39 = v17;
        v43 = v16;
        v31 = v19;
        v35 = v18;
        v25 = v21;
        v27 = v20;
        sub_1003C83FC();
        v21 = v25;
        v20 = v27;
        v19 = v31;
        v18 = v35;
        v17 = v39;
        v16 = v43;
        a6 = v47;
        v12 = v51;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v55;
        a9 = v59;
        v10 = v63;
        result = v67;
      }

LABEL_8:
      v22 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v16, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v17, a6.n128_f64[0])));
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v18, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v19, a6.n128_f64[0])));
      *(a9 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v22, vorrq_s8(vandq_s8(v21, v22), v20)))), vcvtq_s32_f32(vaddq_f32(v23, vorrq_s8(vandq_s8(v15[1], v23), v14[3])))));
      result += 8;
      v13 += 4;
      if (v10 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100226D50(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_u8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), a1.n128_f32[0]));
      *(a5 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3])))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100226F7C(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_s8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v14)), a1.n128_f32[0]));
      *(a5 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3])))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002271A8(__n128 a1, int32x2_t a2, uint64_t a3, uint16x8_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v40 = a4;
        v44 = result;
        v36 = a5;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a5 = v36;
        a4 = v40;
        result = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v41 = a4;
      v45 = result;
      v37 = a5;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      a5 = v37;
      a4 = v41;
      result = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v42 = a4;
      v46 = result;
      v38 = a5;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      a5 = v38;
      a4 = v42;
      result = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v43 = a4;
        v47 = result;
        v39 = a5;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        a5 = v39;
        a4 = v43;
        result = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v11)), a1.n128_f32[0]));
      *(a5 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3])))));
      result += 8;
      ++a4;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002273D4(__n128 a1, int32x2_t a2, uint64_t a3, int16x8_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v40 = a4;
        v44 = result;
        v36 = a5;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a5 = v36;
        a4 = v40;
        result = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v41 = a4;
      v45 = result;
      v37 = a5;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      a5 = v37;
      a4 = v41;
      result = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v42 = a4;
      v46 = result;
      v38 = a5;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      a5 = v38;
      a4 = v42;
      result = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v43 = a4;
        v47 = result;
        v39 = a5;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        a5 = v39;
        a4 = v43;
        result = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v11)), a1.n128_f32[0]));
      *(a5 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3])))));
      result += 8;
      ++a4;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100227600(__n128 a1, int32x2_t a2, uint64_t a3, int32x4_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
    v10 = &off_1004B0000;
    v11 = &off_1004B0000;
    while (1)
    {
      v12 = v9[-1];
      v13 = *v9;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v50 = result;
        v38 = v9;
        v42 = a5;
        v46 = v6;
        v34 = a1;
        v26 = v13;
        v30 = v8;
        v22 = v12;
        sub_1003C83B4();
        v12 = v22;
        v13 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        a5 = v42;
        v6 = v46;
        result = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = result;
      v39 = v9;
      v43 = a5;
      v47 = v6;
      v35 = a1;
      v27 = v13;
      v31 = v8;
      v23 = v12;
      sub_1003C83FC();
      v12 = v23;
      v13 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      a5 = v43;
      v6 = v47;
      result = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v52 = result;
      v40 = v9;
      v44 = a5;
      v48 = v6;
      v36 = a1;
      v28 = v13;
      v32 = v8;
      v20 = v14;
      v24 = v12;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v12 = v24;
      v13 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      a5 = v44;
      v6 = v48;
      result = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = result;
        v41 = v9;
        v45 = a5;
        v49 = v6;
        v37 = a1;
        v29 = v13;
        v33 = v8;
        v21 = v14;
        v25 = v12;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v12 = v25;
        v13 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        a5 = v45;
        v6 = v49;
        result = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v12), a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v13), a1.n128_f32[0]));
      *(a5 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3])))));
      result += 8;
      v9 += 2;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100227848(__n128 a1, int32x2_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
    v10 = &off_1004B0000;
    v11 = &off_1004B0000;
    while (1)
    {
      v12 = v9[-1];
      v13 = *v9;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v50 = result;
        v38 = v9;
        v42 = a5;
        v46 = v6;
        v34 = a1;
        v26 = v12;
        v30 = v8;
        v22 = v13;
        sub_1003C83B4();
        v13 = v22;
        v12 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        a5 = v42;
        v6 = v46;
        result = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = result;
      v39 = v9;
      v43 = a5;
      v47 = v6;
      v35 = a1;
      v27 = v12;
      v31 = v8;
      v23 = v13;
      sub_1003C83FC();
      v13 = v23;
      v12 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      a5 = v43;
      v6 = v47;
      result = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v52 = result;
      v40 = v9;
      v44 = a5;
      v48 = v6;
      v36 = a1;
      v28 = v12;
      v32 = v8;
      v20 = v14;
      v24 = v13;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v13 = v24;
      v12 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      a5 = v44;
      v6 = v48;
      result = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = result;
        v41 = v9;
        v45 = a5;
        v49 = v6;
        v37 = a1;
        v29 = v12;
        v33 = v8;
        v21 = v14;
        v25 = v13;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v13 = v25;
        v12 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        a5 = v45;
        v6 = v49;
        result = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(v12, a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(v13, a1.n128_f32[0]));
      *(a5 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3])))));
      result += 8;
      v9 += 2;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100227A88(float a1, float a2, double a3, double a4, double a5, __n128 a6, uint64_t a7, float64x2_t *a8, uint64_t a9, int a10)
{
  v10 = a10 - 8;
  if (a10 >= 8)
  {
    result = 0;
    v12 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    a6.n128_f64[0] = a1;
    v13 = a8 + 2;
    v14 = &off_1004B0000;
    v15 = &off_1004B0000;
    while (1)
    {
      v16 = v13[-2];
      v17 = v13[-1];
      v18 = *v13;
      v19 = v13[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v64 = result;
        v52 = v13;
        v56 = a9;
        v60 = v10;
        v44 = a6;
        v48 = v12;
        v36 = v17;
        v40 = v16;
        v28 = v19;
        v32 = v18;
        sub_1003C83B4();
        v19 = v28;
        v18 = v32;
        v17 = v36;
        v16 = v40;
        a6 = v44;
        v12 = v48;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v52;
        a9 = v56;
        v10 = v60;
        result = v64;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v20 = v14[3];
          v21 = v15[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v65 = result;
      v53 = v13;
      v57 = a9;
      v61 = v10;
      v45 = a6;
      v49 = v12;
      v37 = v17;
      v41 = v16;
      v29 = v19;
      v33 = v18;
      sub_1003C83FC();
      v19 = v29;
      v18 = v33;
      v17 = v37;
      v16 = v41;
      a6 = v45;
      v12 = v49;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v53;
      a9 = v57;
      v10 = v61;
      result = v65;
      v20 = xmmword_1004B0030;
      v21 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v66 = result;
      v54 = v13;
      v58 = a9;
      v62 = v10;
      v46 = a6;
      v50 = v12;
      v38 = v17;
      v42 = v16;
      v30 = v19;
      v34 = v18;
      v24 = v21;
      v26 = v20;
      sub_1003C83B4();
      v21 = v24;
      v20 = v26;
      v19 = v30;
      v18 = v34;
      v17 = v38;
      v16 = v42;
      a6 = v46;
      v12 = v50;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v54;
      a9 = v58;
      v10 = v62;
      result = v66;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v67 = result;
        v55 = v13;
        v59 = a9;
        v63 = v10;
        v47 = a6;
        v51 = v12;
        v39 = v17;
        v43 = v16;
        v31 = v19;
        v35 = v18;
        v25 = v21;
        v27 = v20;
        sub_1003C83FC();
        v21 = v25;
        v20 = v27;
        v19 = v31;
        v18 = v35;
        v17 = v39;
        v16 = v43;
        a6 = v47;
        v12 = v51;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v55;
        a9 = v59;
        v10 = v63;
        result = v67;
      }

LABEL_8:
      v22 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v16, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v17, a6.n128_f64[0])));
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v18, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v19, a6.n128_f64[0])));
      *(a9 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v22, vorrq_s8(vandq_s8(v21, v22), v20)))), vcvtq_s32_f32(vaddq_f32(v23, vorrq_s8(vandq_s8(v15[1], v23), v14[3])))));
      result += 8;
      v13 += 4;
      if (v10 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100227CF4(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_u8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), a1.n128_f32[0]));
      *a5++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3]))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100227F1C(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_s8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v14)), a1.n128_f32[0]));
      *a5++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3]))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100228144(__n128 a1, int32x2_t a2, uint64_t a3, uint16x8_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v44 = a5;
        v36 = a4;
        v40 = result;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        LODWORD(result) = v40;
        a4 = v36;
        a5 = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v45 = a5;
      v37 = a4;
      v41 = result;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      LODWORD(result) = v41;
      a4 = v37;
      a5 = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v46 = a5;
      v38 = a4;
      v42 = result;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      LODWORD(result) = v42;
      a4 = v38;
      a5 = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v47 = a5;
        v39 = a4;
        v43 = result;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        LODWORD(result) = v43;
        a4 = v39;
        a5 = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v11)), a1.n128_f32[0]));
      *a5++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3]))));
      ++a4;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_10022838C(__n128 a1, int32x2_t a2, uint64_t a3, int16x8_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v44 = a5;
        v36 = a4;
        v40 = result;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        LODWORD(result) = v40;
        a4 = v36;
        a5 = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v45 = a5;
      v37 = a4;
      v41 = result;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      LODWORD(result) = v41;
      a4 = v37;
      a5 = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v46 = a5;
      v38 = a4;
      v42 = result;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      LODWORD(result) = v42;
      a4 = v38;
      a5 = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v47 = a5;
        v39 = a4;
        v43 = result;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        LODWORD(result) = v43;
        a4 = v39;
        a5 = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v11)), a1.n128_f32[0]));
      *a5++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3]))));
      ++a4;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002285D4(__n128 a1, int32x2_t a2, uint64_t a3, int32x4_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
    v10 = &off_1004B0000;
    v11 = &off_1004B0000;
    while (1)
    {
      v12 = v9[-1];
      v13 = *v9;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v50 = a5;
        v42 = result;
        v46 = v6;
        v38 = v9;
        v34 = a1;
        v26 = v13;
        v30 = v8;
        v22 = v12;
        sub_1003C83B4();
        v12 = v22;
        v13 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        LODWORD(result) = v42;
        v6 = v46;
        a5 = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = a5;
      v43 = result;
      v47 = v6;
      v39 = v9;
      v35 = a1;
      v27 = v13;
      v31 = v8;
      v23 = v12;
      sub_1003C83FC();
      v12 = v23;
      v13 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      LODWORD(result) = v43;
      v6 = v47;
      a5 = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v52 = a5;
      v44 = result;
      v48 = v6;
      v40 = v9;
      v36 = a1;
      v28 = v13;
      v32 = v8;
      v20 = v14;
      v24 = v12;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v12 = v24;
      v13 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      LODWORD(result) = v44;
      v6 = v48;
      a5 = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = a5;
        v45 = result;
        v49 = v6;
        v41 = v9;
        v37 = a1;
        v29 = v13;
        v33 = v8;
        v21 = v14;
        v25 = v12;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v12 = v25;
        v13 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        LODWORD(result) = v45;
        v6 = v49;
        a5 = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v12), a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v13), a1.n128_f32[0]));
      *a5++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3]))));
      v9 += 2;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100228818(__n128 a1, int32x2_t a2, uint64_t a3, float32x4_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
    v10 = &off_1004B0000;
    v11 = &off_1004B0000;
    while (1)
    {
      v12 = v9[-1];
      v13 = *v9;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v50 = a5;
        v42 = result;
        v46 = v6;
        v38 = v9;
        v34 = a1;
        v26 = v12;
        v30 = v8;
        v22 = v13;
        sub_1003C83B4();
        v13 = v22;
        v12 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        LODWORD(result) = v42;
        v6 = v46;
        a5 = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = a5;
      v43 = result;
      v47 = v6;
      v39 = v9;
      v35 = a1;
      v27 = v12;
      v31 = v8;
      v23 = v13;
      sub_1003C83FC();
      v13 = v23;
      v12 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      LODWORD(result) = v43;
      v6 = v47;
      a5 = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v52 = a5;
      v44 = result;
      v48 = v6;
      v40 = v9;
      v36 = a1;
      v28 = v12;
      v32 = v8;
      v20 = v14;
      v24 = v13;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v13 = v24;
      v12 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      LODWORD(result) = v44;
      v6 = v48;
      a5 = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = a5;
        v45 = result;
        v49 = v6;
        v41 = v9;
        v37 = a1;
        v29 = v12;
        v33 = v8;
        v21 = v14;
        v25 = v13;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v13 = v25;
        v12 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        LODWORD(result) = v45;
        v6 = v49;
        a5 = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(v12, a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(v13, a1.n128_f32[0]));
      *a5++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3]))));
      v9 += 2;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100228A54(float a1, float a2, double a3, double a4, double a5, __n128 a6, uint64_t a7, float64x2_t *a8, int16x8_t *a9, int a10)
{
  v10 = a10 - 8;
  if (a10 >= 8)
  {
    LODWORD(result) = 0;
    v12 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    a6.n128_f64[0] = a1;
    v13 = a8 + 2;
    v14 = &off_1004B0000;
    v15 = &off_1004B0000;
    while (1)
    {
      v16 = v13[-2];
      v17 = v13[-1];
      v18 = *v13;
      v19 = v13[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v64 = a9;
        v56 = result;
        v60 = v10;
        v52 = v13;
        v44 = a6;
        v48 = v12;
        v36 = v17;
        v40 = v16;
        v28 = v19;
        v32 = v18;
        sub_1003C83B4();
        v19 = v28;
        v18 = v32;
        v17 = v36;
        v16 = v40;
        a6 = v44;
        v12 = v48;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v52;
        LODWORD(result) = v56;
        v10 = v60;
        a9 = v64;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v20 = v14[3];
          v21 = v15[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v65 = a9;
      v57 = result;
      v61 = v10;
      v53 = v13;
      v45 = a6;
      v49 = v12;
      v37 = v17;
      v41 = v16;
      v29 = v19;
      v33 = v18;
      sub_1003C83FC();
      v19 = v29;
      v18 = v33;
      v17 = v37;
      v16 = v41;
      a6 = v45;
      v12 = v49;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v53;
      LODWORD(result) = v57;
      v10 = v61;
      a9 = v65;
      v20 = xmmword_1004B0030;
      v21 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v66 = a9;
      v58 = result;
      v62 = v10;
      v54 = v13;
      v46 = a6;
      v50 = v12;
      v38 = v17;
      v42 = v16;
      v30 = v19;
      v34 = v18;
      v24 = v21;
      v26 = v20;
      sub_1003C83B4();
      v21 = v24;
      v20 = v26;
      v19 = v30;
      v18 = v34;
      v17 = v38;
      v16 = v42;
      a6 = v46;
      v12 = v50;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v54;
      LODWORD(result) = v58;
      v10 = v62;
      a9 = v66;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v67 = a9;
        v59 = result;
        v63 = v10;
        v55 = v13;
        v47 = a6;
        v51 = v12;
        v39 = v17;
        v43 = v16;
        v31 = v19;
        v35 = v18;
        v25 = v21;
        v27 = v20;
        sub_1003C83FC();
        v21 = v25;
        v20 = v27;
        v19 = v31;
        v18 = v35;
        v17 = v39;
        v16 = v43;
        a6 = v47;
        v12 = v51;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v55;
        LODWORD(result) = v59;
        v10 = v63;
        a9 = v67;
      }

LABEL_8:
      v22 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v16, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v17, a6.n128_f64[0])));
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v18, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v19, a6.n128_f64[0])));
      *a9++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v22, vorrq_s8(vandq_s8(v21, v22), v20)))), vcvtq_s32_f32(vaddq_f32(v23, vorrq_s8(vandq_s8(v15[1], v23), v14[3]))));
      v13 += 4;
      result = (result + 8);
      if (v10 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100228CBC(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_u8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), a1.n128_f32[0]));
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3]))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100228EE4(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_s8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v14)), a1.n128_f32[0]));
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3]))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_10022910C(__n128 a1, int32x2_t a2, uint64_t a3, uint16x8_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v44 = a5;
        v36 = a4;
        v40 = result;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        LODWORD(result) = v40;
        a4 = v36;
        a5 = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v45 = a5;
      v37 = a4;
      v41 = result;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      LODWORD(result) = v41;
      a4 = v37;
      a5 = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v46 = a5;
      v38 = a4;
      v42 = result;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      LODWORD(result) = v42;
      a4 = v38;
      a5 = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v47 = a5;
        v39 = a4;
        v43 = result;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        LODWORD(result) = v43;
        a4 = v39;
        a5 = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v11)), a1.n128_f32[0]));
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3]))));
      ++a4;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100229354(__n128 a1, int32x2_t a2, uint64_t a3, int16x8_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v44 = a5;
        v36 = a4;
        v40 = result;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        LODWORD(result) = v40;
        a4 = v36;
        a5 = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v45 = a5;
      v37 = a4;
      v41 = result;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      LODWORD(result) = v41;
      a4 = v37;
      a5 = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v46 = a5;
      v38 = a4;
      v42 = result;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      LODWORD(result) = v42;
      a4 = v38;
      a5 = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v47 = a5;
        v39 = a4;
        v43 = result;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        LODWORD(result) = v43;
        a4 = v39;
        a5 = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v11)), a1.n128_f32[0]));
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3]))));
      ++a4;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_10022959C(__n128 a1, int32x2_t a2, uint64_t a3, int32x4_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
    v10 = &off_1004B0000;
    v11 = &off_1004B0000;
    while (1)
    {
      v12 = v9[-1];
      v13 = *v9;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v50 = a5;
        v42 = result;
        v46 = v6;
        v38 = v9;
        v34 = a1;
        v26 = v13;
        v30 = v8;
        v22 = v12;
        sub_1003C83B4();
        v12 = v22;
        v13 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        LODWORD(result) = v42;
        v6 = v46;
        a5 = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = a5;
      v43 = result;
      v47 = v6;
      v39 = v9;
      v35 = a1;
      v27 = v13;
      v31 = v8;
      v23 = v12;
      sub_1003C83FC();
      v12 = v23;
      v13 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      LODWORD(result) = v43;
      v6 = v47;
      a5 = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v52 = a5;
      v44 = result;
      v48 = v6;
      v40 = v9;
      v36 = a1;
      v28 = v13;
      v32 = v8;
      v20 = v14;
      v24 = v12;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v12 = v24;
      v13 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      LODWORD(result) = v44;
      v6 = v48;
      a5 = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = a5;
        v45 = result;
        v49 = v6;
        v41 = v9;
        v37 = a1;
        v29 = v13;
        v33 = v8;
        v21 = v14;
        v25 = v12;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v12 = v25;
        v13 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        LODWORD(result) = v45;
        v6 = v49;
        a5 = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v12), a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v13), a1.n128_f32[0]));
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3]))));
      v9 += 2;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002297E0(__n128 a1, int32x2_t a2, uint64_t a3, float32x4_t *a4, int16x8_t *a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    LODWORD(result) = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
    v10 = &off_1004B0000;
    v11 = &off_1004B0000;
    while (1)
    {
      v12 = v9[-1];
      v13 = *v9;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v50 = a5;
        v42 = result;
        v46 = v6;
        v38 = v9;
        v34 = a1;
        v26 = v12;
        v30 = v8;
        v22 = v13;
        sub_1003C83B4();
        v13 = v22;
        v12 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        LODWORD(result) = v42;
        v6 = v46;
        a5 = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = a5;
      v43 = result;
      v47 = v6;
      v39 = v9;
      v35 = a1;
      v27 = v12;
      v31 = v8;
      v23 = v13;
      sub_1003C83FC();
      v13 = v23;
      v12 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      LODWORD(result) = v43;
      v6 = v47;
      a5 = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v52 = a5;
      v44 = result;
      v48 = v6;
      v40 = v9;
      v36 = a1;
      v28 = v12;
      v32 = v8;
      v20 = v14;
      v24 = v13;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v13 = v24;
      v12 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      LODWORD(result) = v44;
      v6 = v48;
      a5 = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = a5;
        v45 = result;
        v49 = v6;
        v41 = v9;
        v37 = a1;
        v29 = v12;
        v33 = v8;
        v21 = v14;
        v25 = v13;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v13 = v25;
        v12 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        LODWORD(result) = v45;
        v6 = v49;
        a5 = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(v12, a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(v13, a1.n128_f32[0]));
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3]))));
      v9 += 2;
      result = (result + 8);
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100229A1C(float a1, float a2, double a3, double a4, double a5, __n128 a6, uint64_t a7, float64x2_t *a8, int16x8_t *a9, int a10)
{
  v10 = a10 - 8;
  if (a10 >= 8)
  {
    LODWORD(result) = 0;
    v12 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    a6.n128_f64[0] = a1;
    v13 = a8 + 2;
    v14 = &off_1004B0000;
    v15 = &off_1004B0000;
    while (1)
    {
      v16 = v13[-2];
      v17 = v13[-1];
      v18 = *v13;
      v19 = v13[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v64 = a9;
        v56 = result;
        v60 = v10;
        v52 = v13;
        v44 = a6;
        v48 = v12;
        v36 = v17;
        v40 = v16;
        v28 = v19;
        v32 = v18;
        sub_1003C83B4();
        v19 = v28;
        v18 = v32;
        v17 = v36;
        v16 = v40;
        a6 = v44;
        v12 = v48;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v52;
        LODWORD(result) = v56;
        v10 = v60;
        a9 = v64;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v20 = v14[3];
          v21 = v15[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v65 = a9;
      v57 = result;
      v61 = v10;
      v53 = v13;
      v45 = a6;
      v49 = v12;
      v37 = v17;
      v41 = v16;
      v29 = v19;
      v33 = v18;
      sub_1003C83FC();
      v19 = v29;
      v18 = v33;
      v17 = v37;
      v16 = v41;
      a6 = v45;
      v12 = v49;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v53;
      LODWORD(result) = v57;
      v10 = v61;
      a9 = v65;
      v20 = xmmword_1004B0030;
      v21 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v66 = a9;
      v58 = result;
      v62 = v10;
      v54 = v13;
      v46 = a6;
      v50 = v12;
      v38 = v17;
      v42 = v16;
      v30 = v19;
      v34 = v18;
      v24 = v21;
      v26 = v20;
      sub_1003C83B4();
      v21 = v24;
      v20 = v26;
      v19 = v30;
      v18 = v34;
      v17 = v38;
      v16 = v42;
      a6 = v46;
      v12 = v50;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v13 = v54;
      LODWORD(result) = v58;
      v10 = v62;
      a9 = v66;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v67 = a9;
        v59 = result;
        v63 = v10;
        v55 = v13;
        v47 = a6;
        v51 = v12;
        v39 = v17;
        v43 = v16;
        v31 = v19;
        v35 = v18;
        v25 = v21;
        v27 = v20;
        sub_1003C83FC();
        v21 = v25;
        v20 = v27;
        v19 = v31;
        v18 = v35;
        v17 = v39;
        v16 = v43;
        a6 = v47;
        v12 = v51;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v13 = v55;
        LODWORD(result) = v59;
        v10 = v63;
        a9 = v67;
      }

LABEL_8:
      v22 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v16, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v17, a6.n128_f64[0])));
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v12, vmulq_n_f64(v18, a6.n128_f64[0]))), vaddq_f64(v12, vmulq_n_f64(v19, a6.n128_f64[0])));
      *a9++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v22, vorrq_s8(vandq_s8(v21, v22), v20)))), vcvtq_s32_f32(vaddq_f32(v23, vorrq_s8(vandq_s8(v15[1], v23), v14[3]))));
      v13 += 4;
      result = (result + 8);
      if (v10 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100229C84(float a1, int32x2_t a2, double a3, __n128 a4, uint64_t a5, uint64_t a6, int32x4_t *a7, int a8)
{
  v8 = a8 - 8;
  if (a8 >= 8)
  {
    a4.n128_f32[0] = a1;
    result = 0;
    v10 = vdupq_lane_s32(a2, 0);
    v11 = a7 + 1;
    v12 = &off_1004B0000;
    v13 = &off_1004B0000;
    while (1)
    {
      v14 = *(a6 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v42 = result;
        v30 = v11;
        v34 = a6;
        v38 = v8;
        v18 = v14;
        v22 = v10;
        v26 = a4;
        sub_1003C83B4();
        v10 = v22;
        a4 = v26;
        v14 = v18;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v30;
        a6 = v34;
        v8 = v38;
        result = v42;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      v43 = result;
      v31 = v11;
      v35 = a6;
      v39 = v8;
      v19 = v14;
      v23 = v10;
      v27 = a4;
      sub_1003C83FC();
      v10 = v23;
      a4 = v27;
      v14 = v19;
      v13 = &off_1004B0000;
      v12 = &off_1004B0000;
      v11 = v31;
      a6 = v35;
      v8 = v39;
      result = v43;
LABEL_6:
      v15 = vmovl_u8(v14);
      v16 = vaddq_f32(v10, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v15.i8)), a4.n128_f32[0]));
      v11[-1] = vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v13[1], v16), v12[3])));
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v44 = result;
        v32 = v11;
        v36 = a6;
        v40 = v8;
        v24 = v10;
        v28 = a4;
        v20 = v15;
        sub_1003C83B4();
        v15 = v20;
        v10 = v24;
        a4 = v28;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v32;
        a6 = v36;
        v8 = v40;
        result = v44;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_13:
          v45 = result;
          v33 = v11;
          v37 = a6;
          v41 = v8;
          v25 = v10;
          v29 = a4;
          v21 = v15;
          sub_1003C83FC();
          v15 = v21;
          v10 = v25;
          a4 = v29;
          v13 = &off_1004B0000;
          v12 = &off_1004B0000;
          v11 = v33;
          a6 = v37;
          v8 = v41;
          result = v45;
        }
      }

      v17 = vaddq_f32(v10, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v15)), a4.n128_f32[0]));
      *v11 = vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v13[1], v17), v12[3])));
      v11 += 2;
      result += 8;
      if (v8 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100229E94(float a1, int32x2_t a2, double a3, __n128 a4, uint64_t a5, uint64_t a6, int32x4_t *a7, int a8)
{
  v8 = a8 - 8;
  if (a8 >= 8)
  {
    a4.n128_f32[0] = a1;
    result = 0;
    v10 = vdupq_lane_s32(a2, 0);
    v11 = a7 + 1;
    v12 = &off_1004B0000;
    v13 = &off_1004B0000;
    while (1)
    {
      v14 = *(a6 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v42 = result;
        v30 = v11;
        v34 = a6;
        v38 = v8;
        v18 = v14;
        v22 = v10;
        v26 = a4;
        sub_1003C83B4();
        v10 = v22;
        a4 = v26;
        v14 = v18;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v30;
        a6 = v34;
        v8 = v38;
        result = v42;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      v43 = result;
      v31 = v11;
      v35 = a6;
      v39 = v8;
      v19 = v14;
      v23 = v10;
      v27 = a4;
      sub_1003C83FC();
      v10 = v23;
      a4 = v27;
      v14 = v19;
      v13 = &off_1004B0000;
      v12 = &off_1004B0000;
      v11 = v31;
      a6 = v35;
      v8 = v39;
      result = v43;
LABEL_6:
      v15 = vmovl_s8(v14);
      v16 = vaddq_f32(v10, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v15.i8)), a4.n128_f32[0]));
      v11[-1] = vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v13[1], v16), v12[3])));
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v44 = result;
        v32 = v11;
        v36 = a6;
        v40 = v8;
        v24 = v10;
        v28 = a4;
        v20 = v15;
        sub_1003C83B4();
        v15 = v20;
        v10 = v24;
        a4 = v28;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v32;
        a6 = v36;
        v8 = v40;
        result = v44;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_13:
          v45 = result;
          v33 = v11;
          v37 = a6;
          v41 = v8;
          v25 = v10;
          v29 = a4;
          v21 = v15;
          sub_1003C83FC();
          v15 = v21;
          v10 = v25;
          a4 = v29;
          v13 = &off_1004B0000;
          v12 = &off_1004B0000;
          v11 = v33;
          a6 = v37;
          v8 = v41;
          result = v45;
        }
      }

      v17 = vaddq_f32(v10, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v15)), a4.n128_f32[0]));
      *v11 = vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v13[1], v17), v12[3])));
      v11 += 2;
      result += 8;
      if (v8 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_10022A0A4(float a1, int32x2_t a2, double a3, __n128 a4, uint64_t a5, uint16x8_t *a6, int32x4_t *a7, int a8)
{
  v8 = a8 - 8;
  if (a8 >= 8)
  {
    a4.n128_f32[0] = a1;
    LODWORD(result) = 0;
    v10 = vdupq_lane_s32(a2, 0);
    v11 = a7 + 1;
    v12 = &off_1004B0000;
    v13 = &off_1004B0000;
    while (1)
    {
      v14 = *a6;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a6;
        v33 = result;
        v37 = v8;
        v29 = v11;
        v21 = v10;
        v25 = a4;
        v17 = v14;
        sub_1003C83B4();
        v14 = v17;
        v10 = v21;
        a4 = v25;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v29;
        LODWORD(result) = v33;
        v8 = v37;
        a6 = v41;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      v42 = a6;
      v34 = result;
      v38 = v8;
      v30 = v11;
      v22 = v10;
      v26 = a4;
      v18 = v14;
      sub_1003C83FC();
      v14 = v18;
      v10 = v22;
      a4 = v26;
      v13 = &off_1004B0000;
      v12 = &off_1004B0000;
      v11 = v30;
      LODWORD(result) = v34;
      v8 = v38;
      a6 = v42;
LABEL_6:
      v15 = vaddq_f32(v10, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), a4.n128_f32[0]));
      v11[-1] = vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13[1], v15), v12[3])));
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v43 = a6;
        v35 = result;
        v39 = v8;
        v31 = v11;
        v23 = v10;
        v27 = a4;
        v19 = v14;
        sub_1003C83B4();
        v14 = v19;
        v10 = v23;
        a4 = v27;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v31;
        LODWORD(result) = v35;
        v8 = v39;
        a6 = v43;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_13:
          v44 = a6;
          v36 = result;
          v40 = v8;
          v32 = v11;
          v24 = v10;
          v28 = a4;
          v20 = v14;
          sub_1003C83FC();
          v14 = v20;
          v10 = v24;
          a4 = v28;
          v13 = &off_1004B0000;
          v12 = &off_1004B0000;
          v11 = v32;
          LODWORD(result) = v36;
          v8 = v40;
          a6 = v44;
        }
      }

      v16 = vaddq_f32(v10, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), a4.n128_f32[0]));
      *v11 = vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v13[1], v16), v12[3])));
      v11 += 2;
      ++a6;
      result = (result + 8);
      if (v8 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_10022A2B4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        v7 = *(v4 - 5);
        if (v7 && atomic_fetch_add((v7 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8((v4 - 24));
        }

        *(v4 - 5) = 0;
        *(v4 - 5) = 0u;
        *(v4 - 4) = 0u;
        if (*(v4 - 23) >= 1)
        {
          v8 = 0;
          v9 = *(v4 - 4);
          do
          {
            *(v9 + 4 * v8++) = 0;
          }

          while (v8 < *(v4 - 23));
        }

        v10 = *(v4 - 3);
        if (v10 != v4 - 4)
        {
          j__free(v10);
        }

        v4 -= 24;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10022A3B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 16)
    {
      v10 = (a5 + 16);
      v11 = (result + 16);
      v12 = (a3 + 16);
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = v10;
        do
        {
          v17 = v16;
          v18 = v15;
          *(a5 + v13) = vbslq_s8(vceqzq_s8(*(a3 + v13)), *(a5 + v13), *(result + v13));
          v19 = v14;
          v13 += 16;
          v16 += 16;
          v15 += 16;
          v14 += 16;
        }

        while (v13 <= v8 - 16);
        if (v8 > v13)
        {
          do
          {
            if (*v19++)
            {
              *v17 = *v18;
            }

            ++v13;
            ++v17;
            ++v18;
          }

          while (v13 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v10 += a6;
        v11 += a2;
        v12 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*(a3 + i))
          {
            *(a5 + i) = *(result + i);
          }
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022A4D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, int8x16_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    if (v9 >= 8)
    {
      v13 = v8 - 1;
      do
      {
        v14 = 0;
        v15 = 0;
        v16 = v13;
        do
        {
          *a8.i8 = vtst_s8(*(a3 + v15), *(a3 + v15));
          a8 = vbslq_s8(vzip1q_s8(a8, a8), *(result + v14), *(a5 + v14));
          *(a5 + v14) = a8;
          v15 += 8;
          v14 += 16;
        }

        while (v15 <= (v9 - 8));
        if (v9 > v15)
        {
          v17 = v15 & 0xFFFFFFF8;
          do
          {
            if (*(a3 + v17))
            {
              *(a5 + 2 * v17) = *(result + 2 * v17);
            }

            ++v17;
          }

          while (v17 != v9);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        --v13;
      }

      while (v16);
    }

    else if (v9 >= 1)
    {
      v10 = (a5 + 6);
      v11 = (a3 + 3);
      v12 = (result + 6);
      do
      {
        if (*(v11 - 3))
        {
          *(v10 - 3) = *(v12 - 3);
        }

        if (v9 != 1)
        {
          if (*(v11 - 2))
          {
            *(v10 - 2) = *(v12 - 2);
          }

          if (v9 != 2)
          {
            if (*(v11 - 1))
            {
              *(v10 - 1) = *(v12 - 1);
            }

            if (v9 != 3)
            {
              if (*v11)
              {
                *v10 = *v12;
              }

              if (v9 != 4)
              {
                if (v11[1])
                {
                  v10[1] = v12[1];
                }

                if (v9 != 5)
                {
                  if (v11[2])
                  {
                    v10[2] = v12[2];
                  }

                  if (v9 != 6)
                  {
                    if (v11[3])
                    {
                      v10[3] = v12[3];
                    }
                  }
                }
              }
            }
          }
        }

        v10 = (v10 + a6);
        v11 += a4;
        v12 = (v12 + a2);
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_10022A640(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v16 = a5 + 12;
      v17 = (result + 12);
      v18 = (a3 + 4);
      do
      {
        v19 = 0;
        v20 = v18;
        v21 = v17;
        v22 = v16;
        v23 = 6;
        do
        {
          v24 = v22;
          v25 = v21;
          v26 = v20;
          if (*(a3 + v19))
          {
            v27 = a5 + v23;
            v28 = *(result + v23 - 6);
            *(v27 - 4) = *(result + v23 - 4);
            *(v27 - 6) = v28;
          }

          if (*(a3 + v19 + 1))
          {
            v29 = a5 + v23;
            v30 = *(result + v23 - 3);
            *(v29 - 1) = *(result + v23 - 1);
            *(v29 - 3) = v30;
          }

          if (*(a3 + v19 + 2))
          {
            v31 = a5 + v23;
            v32 = *(result + v23);
            *(v31 + 2) = *(result + v23 + 2);
            *v31 = v32;
          }

          if (*(a3 + v19 + 3))
          {
            v33 = a5 + v23;
            v34 = *(result + v23 + 3);
            *(v33 + 5) = *(result + v23 + 5);
            *(v33 + 3) = v34;
          }

          v19 += 4;
          v23 += 12;
          v22 = v24 + 12;
          v21 = v25 + 6;
          v20 += 4;
        }

        while (v19 <= v8 - 4);
        if (v8 > v19)
        {
          do
          {
            if (*v26++)
            {
              v36 = *v25;
              *(v24 + 2) = *(v25 + 2);
              *v24 = v36;
            }

            ++v19;
            v24 += 3;
            v25 = (v25 + 3);
          }

          while (v19 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v16 += a6;
        v17 = (v17 + a2);
        v18 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = a5 + 3;
      v10 = (a3 + 2);
      v11 = (result + 3);
      do
      {
        if (*(v10 - 2))
        {
          v12 = v9 - 3;
          v13 = *(v11 - 3);
          *(v12 + 2) = *(v11 - 1);
          *v12 = v13;
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            v14 = *v11;
            *(v9 + 2) = *(v11 + 2);
            *v9 = v14;
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              v15 = *(v11 + 3);
              *(v9 + 5) = *(v11 + 5);
              *(v9 + 3) = v15;
            }
          }
        }

        v9 += a6;
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022A834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v12 = (a5 + 16);
      v13 = (result + 16);
      v14 = (a3 + 4);
      do
      {
        v15 = 0;
        v16 = v14;
        v17 = v13;
        v18 = v12;
        v19 = 8;
        do
        {
          v20 = v18;
          v21 = v17;
          v22 = v16;
          if (*(a3 + v15))
          {
            *(a5 + v19 - 8) = *(result + v19 - 8);
          }

          if (*(a3 + v15 + 1))
          {
            *(a5 + v19 - 4) = *(result + v19 - 4);
          }

          if (*(a3 + v15 + 2))
          {
            *(a5 + v19) = *(result + v19);
          }

          if (*(a3 + v15 + 3))
          {
            *(a5 + v19 + 4) = *(result + v19 + 4);
          }

          v15 += 4;
          v19 += 16;
          v18 += 4;
          v17 += 4;
          v16 += 4;
        }

        while (v15 <= v8 - 4);
        if (v8 > v15)
        {
          do
          {
            if (*v22++)
            {
              *v20 = *v21;
            }

            ++v15;
            ++v20;
            ++v21;
          }

          while (v15 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v12 = (v12 + a6);
        v13 = (v13 + a2);
        v14 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = (a5 + 8);
      v10 = (a3 + 2);
      v11 = (result + 8);
      do
      {
        if (*(v10 - 2))
        {
          *(v9 - 2) = *(v11 - 2);
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            *(v9 - 1) = *(v11 - 1);
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              *v9 = *v11;
            }
          }
        }

        v9 = (v9 + a6);
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022A9D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v16 = a5 + 24;
      v17 = (result + 24);
      v18 = (a3 + 4);
      do
      {
        v19 = 0;
        v20 = v18;
        v21 = v17;
        v22 = v16;
        v23 = 12;
        do
        {
          v24 = v22;
          v25 = v21;
          v26 = v20;
          if (*(a3 + v19))
          {
            v27 = a5 + v23;
            v28 = *(result + v23 - 12);
            *(v27 - 8) = *(result + v23 - 8);
            *(v27 - 12) = v28;
          }

          if (*(a3 + v19 + 1))
          {
            v29 = a5 + v23;
            v30 = *(result + v23 - 6);
            *(v29 - 2) = *(result + v23 - 2);
            *(v29 - 6) = v30;
          }

          if (*(a3 + v19 + 2))
          {
            v31 = a5 + v23;
            v32 = *(result + v23);
            *(v31 + 4) = *(result + v23 + 4);
            *v31 = v32;
          }

          if (*(a3 + v19 + 3))
          {
            v33 = a5 + v23;
            v34 = *(result + v23 + 6);
            *(v33 + 10) = *(result + v23 + 10);
            *(v33 + 6) = v34;
          }

          v19 += 4;
          v23 += 24;
          v22 = v24 + 24;
          v21 = v25 + 6;
          v20 += 4;
        }

        while (v19 <= v8 - 4);
        if (v8 > v19)
        {
          do
          {
            if (*v26++)
            {
              v36 = *v25;
              *(v24 + 4) = *(v25 + 2);
              *v24 = v36;
            }

            ++v19;
            v24 += 6;
            v25 = (v25 + 6);
          }

          while (v19 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v16 += a6;
        v17 = (v17 + a2);
        v18 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = a5 + 6;
      v10 = (a3 + 2);
      v11 = (result + 6);
      do
      {
        if (*(v10 - 2))
        {
          v12 = v9 - 6;
          v13 = *(v11 - 6);
          *(v12 + 4) = *(v11 - 1);
          *v12 = v13;
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            v14 = *v11;
            *(v9 + 4) = *(v11 + 2);
            *v9 = v14;
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              v15 = *(v11 + 6);
              *(v9 + 10) = *(v11 + 5);
              *(v9 + 6) = v15;
            }
          }
        }

        v9 += a6;
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022ABC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v12 = (a5 + 32);
      v13 = (result + 32);
      v14 = (a3 + 4);
      do
      {
        v15 = 0;
        v16 = v14;
        v17 = v13;
        v18 = v12;
        v19 = 16;
        do
        {
          v20 = v18;
          v21 = v17;
          v22 = v16;
          if (*(a3 + v15))
          {
            *(a5 + v19 - 16) = *(result + v19 - 16);
          }

          if (*(a3 + v15 + 1))
          {
            *(a5 + v19 - 8) = *(result + v19 - 8);
          }

          if (*(a3 + v15 + 2))
          {
            *(a5 + v19) = *(result + v19);
          }

          if (*(a3 + v15 + 3))
          {
            *(a5 + v19 + 8) = *(result + v19 + 8);
          }

          v15 += 4;
          v19 += 32;
          v18 += 4;
          v17 += 4;
          v16 += 4;
        }

        while (v15 <= v8 - 4);
        if (v8 > v15)
        {
          do
          {
            if (*v22++)
            {
              *v20 = *v21;
            }

            ++v15;
            ++v20;
            ++v21;
          }

          while (v15 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v12 = (v12 + a6);
        v13 = (v13 + a2);
        v14 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = (a5 + 16);
      v10 = (a3 + 2);
      v11 = (result + 16);
      do
      {
        if (*(v10 - 2))
        {
          *(v9 - 2) = *(v11 - 2);
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            *(v9 - 1) = *(v11 - 1);
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              *v9 = *v11;
            }
          }
        }

        v9 = (v9 + a6);
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022AD60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v16 = a5 + 48;
      v17 = (result + 48);
      v18 = (a3 + 4);
      do
      {
        v19 = 0;
        v20 = v18;
        v21 = v17;
        v22 = v16;
        v23 = 24;
        do
        {
          v24 = v22;
          v25 = v21;
          v26 = v20;
          if (*(a3 + v19))
          {
            v27 = a5 + v23;
            v28 = *(result + v23 - 24);
            *(v27 - 16) = *(result + v23 - 16);
            *(v27 - 24) = v28;
          }

          if (*(a3 + v19 + 1))
          {
            v29 = a5 + v23;
            v30 = *(result + v23 - 12);
            *(v29 - 4) = *(result + v23 - 4);
            *(v29 - 12) = v30;
          }

          if (*(a3 + v19 + 2))
          {
            v31 = a5 + v23;
            v32 = *(result + v23);
            *(v31 + 8) = *(result + v23 + 8);
            *v31 = v32;
          }

          if (*(a3 + v19 + 3))
          {
            v33 = a5 + v23;
            v34 = *(result + v23 + 12);
            *(v33 + 20) = *(result + v23 + 20);
            *(v33 + 12) = v34;
          }

          v19 += 4;
          v23 += 48;
          v22 = v24 + 48;
          v21 = v25 + 6;
          v20 += 4;
        }

        while (v19 <= v8 - 4);
        if (v8 > v19)
        {
          do
          {
            if (*v26++)
            {
              v36 = *v25;
              *(v24 + 8) = *(v25 + 2);
              *v24 = v36;
            }

            ++v19;
            v24 += 12;
            v25 = (v25 + 12);
          }

          while (v19 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v16 += a6;
        v17 = (v17 + a2);
        v18 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = a5 + 12;
      v10 = (a3 + 2);
      v11 = (result + 12);
      do
      {
        if (*(v10 - 2))
        {
          v12 = v9 - 12;
          v13 = *(v11 - 12);
          *(v12 + 8) = *(v11 - 1);
          *v12 = v13;
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            v14 = *v11;
            *(v9 + 8) = *(v11 + 2);
            *v9 = v14;
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              v15 = *(v11 + 12);
              *(v9 + 20) = *(v11 + 5);
              *(v9 + 12) = v15;
            }
          }
        }

        v9 += a6;
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022AF54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v12 = (a5 + 64);
      v13 = (result + 64);
      v14 = (a3 + 4);
      do
      {
        v15 = 0;
        v16 = v14;
        v17 = v13;
        v18 = v12;
        v19 = 32;
        do
        {
          v20 = v18;
          v21 = v17;
          v22 = v16;
          if (*(a3 + v15))
          {
            *(a5 + v19 - 32) = *(result + v19 - 32);
          }

          if (*(a3 + v15 + 1))
          {
            *(a5 + v19 - 16) = *(result + v19 - 16);
          }

          if (*(a3 + v15 + 2))
          {
            *(a5 + v19) = *(result + v19);
          }

          if (*(a3 + v15 + 3))
          {
            *(a5 + v19 + 16) = *(result + v19 + 16);
          }

          v15 += 4;
          v19 += 64;
          v18 += 4;
          v17 += 4;
          v16 += 4;
        }

        while (v15 <= v8 - 4);
        if (v8 > v15)
        {
          do
          {
            if (*v22++)
            {
              *v20 = *v21;
            }

            ++v15;
            ++v20;
            ++v21;
          }

          while (v15 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v12 = (v12 + a6);
        v13 = (v13 + a2);
        v14 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = (a5 + 32);
      v10 = (a3 + 2);
      v11 = (result + 32);
      do
      {
        if (*(v10 - 2))
        {
          *(v9 - 2) = *(v11 - 2);
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            *(v9 - 1) = *(v11 - 1);
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              *v9 = *v11;
            }
          }
        }

        v9 = (v9 + a6);
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022B0F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v16 = a5 + 96;
      v17 = (result + 96);
      v18 = (a3 + 4);
      do
      {
        v19 = 0;
        v20 = v18;
        v21 = v17;
        v22 = v16;
        v23 = 48;
        do
        {
          v24 = v22;
          v25 = v21;
          v26 = v20;
          if (*(a3 + v19))
          {
            v27 = a5 + v23;
            v28 = *(result + v23 - 48);
            *(v27 - 32) = *(result + v23 - 32);
            *(v27 - 48) = v28;
          }

          if (*(a3 + v19 + 1))
          {
            v29 = a5 + v23;
            v30 = *(result + v23 - 24);
            *(v29 - 8) = *(result + v23 - 8);
            *(v29 - 24) = v30;
          }

          if (*(a3 + v19 + 2))
          {
            v31 = a5 + v23;
            v32 = *(result + v23);
            *(v31 + 16) = *(result + v23 + 16);
            *v31 = v32;
          }

          if (*(a3 + v19 + 3))
          {
            v33 = a5 + v23;
            v34 = *(result + v23 + 24);
            *(v33 + 40) = *(result + v23 + 40);
            *(v33 + 24) = v34;
          }

          v19 += 4;
          v23 += 96;
          v22 = v24 + 96;
          v21 = v25 + 6;
          v20 += 4;
        }

        while (v19 <= v8 - 4);
        if (v8 > v19)
        {
          do
          {
            if (*v26++)
            {
              v36 = *v25;
              *(v24 + 16) = *(v25 + 2);
              *v24 = v36;
            }

            ++v19;
            v24 += 24;
            v25 = (v25 + 24);
          }

          while (v19 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v16 += a6;
        v17 = (v17 + a2);
        v18 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = a5 + 24;
      v10 = (a3 + 2);
      v11 = (result + 24);
      do
      {
        if (*(v10 - 2))
        {
          v12 = v9 - 24;
          v13 = *(v11 - 24);
          *(v12 + 16) = *(v11 - 1);
          *v12 = v13;
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            v14 = *v11;
            *(v9 + 16) = *(v11 + 2);
            *v9 = v14;
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              v15 = *(v11 + 24);
              *(v9 + 40) = *(v11 + 5);
              *(v9 + 24) = v15;
            }
          }
        }

        v9 += a6;
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_10022B2E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    if (v8 >= 4)
    {
      v16 = (a5 + 128);
      v17 = (result + 128);
      v18 = (a3 + 4);
      do
      {
        v19 = 0;
        v20 = v18;
        v21 = v17;
        v22 = v16;
        v23 = 64;
        do
        {
          v24 = v22;
          v25 = v21;
          v26 = v20;
          if (*(a3 + v19))
          {
            v27 = a5 + v23;
            v28 = *(result + v23 - 48);
            *(v27 - 64) = *(result + v23 - 64);
            *(v27 - 48) = v28;
          }

          if (*(a3 + v19 + 1))
          {
            v29 = a5 + v23;
            v30 = *(result + v23 - 16);
            *(v29 - 32) = *(result + v23 - 32);
            *(v29 - 16) = v30;
          }

          if (*(a3 + v19 + 2))
          {
            v31 = (a5 + v23);
            v32 = *(result + v23 + 16);
            *v31 = *(result + v23);
            v31[1] = v32;
          }

          if (*(a3 + v19 + 3))
          {
            v33 = a5 + v23;
            v34 = *(result + v23 + 48);
            *(v33 + 32) = *(result + v23 + 32);
            *(v33 + 48) = v34;
          }

          v19 += 4;
          v23 += 128;
          v22 = v24 + 8;
          v21 = v25 + 8;
          v20 += 4;
        }

        while (v19 <= v8 - 4);
        if (v8 > v19)
        {
          do
          {
            if (*v26++)
            {
              v36 = v25[1];
              *v24 = *v25;
              v24[1] = v36;
            }

            ++v19;
            v24 += 2;
            v25 += 2;
          }

          while (v19 < v8);
        }

        a3 += a4;
        result += a2;
        a5 += a6;
        v16 = (v16 + a6);
        v17 = (v17 + a2);
        v18 += a4;
        --v7;
      }

      while (v7);
    }

    else if (v8 >= 1)
    {
      v9 = (a5 + 64);
      v10 = (a3 + 2);
      v11 = (result + 64);
      do
      {
        if (*(v10 - 2))
        {
          v12 = v9 - 4;
          v13 = *(v11 - 3);
          *v12 = *(v11 - 4);
          v12[1] = v13;
        }

        if (v8 != 1)
        {
          if (*(v10 - 1))
          {
            v14 = *(v11 - 1);
            *(v9 - 2) = *(v11 - 2);
            *(v9 - 1) = v14;
          }

          if (v8 != 2)
          {
            if (*v10)
            {
              v15 = v11[1];
              *v9 = *v11;
              v9[1] = v15;
            }
          }
        }

        v9 = (v9 + a6);
        v10 += a4;
        v11 = (v11 + a2);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t (*sub_10022B490(unint64_t a1))(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8)
{
  if (a1 > 0x20)
  {
    return sub_10022B4D4;
  }

  if (qword_1004B0138[a1])
  {
    return qword_1004B0138[a1];
  }

  return sub_10022B4D4;
}

uint64_t sub_10022B4D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8)
{
  v8 = *a8;
  v9 = a7[1];
  v10 = v9 - 1;
  a7[1] = v9 - 1;
  if (!v9)
  {
    return result;
  }

  v11 = *a7;
  if (*a7 < 1)
  {
LABEL_48:
    a7[1] = -1;
    return result;
  }

  if (!v8)
  {
    v32 = 1 - v9;
    do
    {
      ++v32;
    }

    while (v32 != 1);
    goto LABEL_48;
  }

  if (v8 >= 8)
  {
    v12 = 0;
    v13 = a5 - result;
    v14 = v8 & 0xFFFFFFFFFFFFFFE0;
    v15 = v8 & 0xFFFFFFFFFFFFFFF8;
    while (v11 < 1)
    {
LABEL_21:
      v19 = v10;
      a3 += a4;
      result += a2;
      a5 += a6;
      a7[1] = --v10;
      ++v12;
      if (!v19)
      {
        return result;
      }
    }

    if ((v13 + (a6 - a2) * v12) < 0x20)
    {
      v20 = 0;
      v21 = a5;
      v22 = result;
      do
      {
        if (*(a3 + v20))
        {
          for (i = 0; i != v8; ++i)
          {
            *(v21 + i) = *(v22 + i);
          }

          v11 = *a7;
        }

        ++v20;
        v22 += v8;
        v21 += v8;
      }

      while (v20 < v11);
LABEL_20:
      v10 = a7[1];
      goto LABEL_21;
    }

    v24 = 0;
    v25 = a5;
    v26 = result;
    while (1)
    {
      if (!*(a3 + v24))
      {
        goto LABEL_32;
      }

      if (v8 < 0x20)
      {
        break;
      }

      v28 = 0;
      do
      {
        v29 = *(v26 + v28 + 16);
        v30 = (v25 + v28);
        *v30 = *(v26 + v28);
        v30[1] = v29;
        v28 += 32;
      }

      while (v14 != v28);
      if (v8 == v14)
      {
        goto LABEL_31;
      }

      v27 = v8 & 0xFFFFFFFFFFFFFFE0;
      v31 = v8 & 0xFFFFFFFFFFFFFFE0;
      if ((v8 & 0x18) != 0)
      {
        goto LABEL_40;
      }

      do
      {
LABEL_42:
        *(v25 + v31) = *(v26 + v31);
        ++v31;
      }

      while (v8 != v31);
LABEL_31:
      v11 = *a7;
LABEL_32:
      ++v24;
      v26 += v8;
      v25 += v8;
      if (v24 >= v11)
      {
        goto LABEL_20;
      }
    }

    v27 = 0;
    do
    {
LABEL_40:
      *(v25 + v27) = *(v26 + v27);
      v27 += 8;
    }

    while (v15 != v27);
    v31 = v8 & 0xFFFFFFFFFFFFFFF8;
    if (v8 == v15)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  do
  {
    if (v11 >= 1)
    {
      v17 = 0;
      for (j = 0; j < v11; ++j)
      {
        if (*(a3 + j))
        {
          *(a5 + v17) = *(result + v17);
          if (v8 != 1)
          {
            *(a5 + v17 + 1) = *(result + v17 + 1);
            if (v8 != 2)
            {
              *(a5 + v17 + 2) = *(result + v17 + 2);
              if (v8 != 3)
              {
                *(a5 + v17 + 3) = *(result + v17 + 3);
                if (v8 != 4)
                {
                  *(a5 + v17 + 4) = *(result + v17 + 4);
                  if (v8 != 5)
                  {
                    *(a5 + v17 + 5) = *(result + v17 + 5);
                    if (v8 != 6)
                    {
                      *(a5 + v17 + 6) = *(result + v17 + 6);
                    }
                  }
                }
              }
            }
          }

          v11 = *a7;
        }

        v17 += v8;
      }

      v10 = a7[1];
    }

    v16 = v10;
    a3 += a4;
    result += a2;
    a5 += a6;
    a7[1] = --v10;
  }

  while (v16);
  return result;
}

void sub_10022B754(uint64_t a1, uint64_t a2)
{
  sub_1002ACE7C(v85, &off_100473DF8);
  v4 = sub_100271A88(a2, -1);
  if (sub_100275364(a2) && v4 != (*a1 & 0xFFF))
  {
    if (((*a1 ^ v4) & 0xFF8) != 0)
    {
      v92 = 0uLL;
      qmemcpy(sub_1002A80E0(&v92, 55), "channels() == ((((dtype) & ((512 - 1) << 3)) >> 3) + 1)", 55);
      sub_1002A8980(-215, &v92, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 260);
    }

    sub_10020EF14(a1, a2, v4, 1.0, 0.0);
    goto LABEL_117;
  }

  if (sub_100271148(a2) == 655360)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }

    v5 = *(a1 + 4);
    if (v5 >= 3)
    {
      v20 = *(a1 + 64);
      v21 = (v20 + 4);
      v22 = 1;
      v23 = v5 & 0x7FFFFFFE;
      v24 = 1;
      do
      {
        v22 *= *(v21 - 1);
        v24 *= *v21;
        v21 += 2;
        v23 -= 2;
      }

      while (v23);
      v6 = v24 * v22;
      v25 = v5 - (v5 & 0x7FFFFFFE);
      if (v25)
      {
        v26 = (v20 + 8 * ((v5 >> 1) & 0x3FFFFFFF));
        do
        {
          v27 = *v26++;
          v6 *= v27;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      v6 = *(a1 + 12) * *(a1 + 8);
    }

    if (!v5 || !v6)
    {
LABEL_31:
      sub_100274CEC(a2);
      goto LABEL_117;
    }

    sub_10026BEEC(a2, v5, *(a1 + 64), *a1 & 0xFFF, -1, 0, 0);
    sub_100271FE8(a2, 0xFFFFFFFFLL, v98);
    if (!v99)
    {
      v92 = 0uLL;
      qmemcpy(sub_1002A80E0(&v92, 15), "dst.u != __null", 15);
      sub_1002A8980(-215, &v92, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 274);
    }

    *v96 = 0u;
    memset(v97, 0, sizeof(v97));
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    *__dst = 0u;
    v28 = *(a1 + 4);
    if (v28 < 1)
    {
      v29 = 0;
      if (v28 < 0x20)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v29 = *(*(a1 + 72) + 8 * v28 - 8);
      if (v28 < 0x20)
      {
LABEL_36:
        v30 = v28;
        if (v28)
        {
          v31 = *(a1 + 64);
          if (v30 >= 8)
          {
            v32 = v30 & 0x18;
            v33 = v31 + 16;
            v34 = &v94;
            v35 = v30 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v36 = *(v33 - 16);
              *&v37 = v36;
              *(&v37 + 1) = SDWORD1(v36);
              v38 = v37;
              *&v37 = SDWORD2(v36);
              *(&v37 + 1) = SHIDWORD(v36);
              v39 = v37;
              *&v37 = *v33;
              *(&v37 + 1) = HIDWORD(*v33);
              v40 = v37;
              *&v37 = *(v33 + 8);
              *(&v37 + 1) = HIDWORD(*v33);
              *(v34 - 2) = v38;
              *(v34 - 1) = v39;
              *v34 = v40;
              v34[1] = v37;
              v34 += 4;
              v33 += 32;
              v35 -= 8;
            }

            while (v35);
            if (v32 == v30)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v32 = 0;
          }

          v41 = v30 - v32;
          v42 = &__dst[v32 - 2];
          v43 = (v31 + 4 * v32);
          do
          {
            v44 = *v43++;
            *v42++ = v44;
            --v41;
          }

          while (v41);
        }

LABEL_44:
        __dst[v30 - 3] = (__dst[v30 - 3] * v29);
        sub_1002B2134(v98, v88);
        *(v88 + *(a1 + 4) - 1) *= v29;
        (*(**(v99 + 8) + 64))(*(v99 + 8), v99, *(a1 + 16));
        sub_1002B00D8(v98);
        goto LABEL_117;
      }
    }

    v86 = 0;
    v87 = 0;
    qmemcpy(sub_1002A80E0(&v86, 22), "dims >= 0 && dims < 32", 22);
    sub_1002A8980(-215, &v86, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 276);
  }

  v7 = *(a1 + 4);
  if (v7 > 2)
  {
    sub_10026BEEC(a2, v7, *(a1 + 64), *a1 & 0xFFF, -1, 0, 0);
    if (sub_100271148(a2) == 0x10000)
    {
      v14 = *(a2 + 8);
      v15 = *v14;
      v16 = *(v14 + 16);
      v92 = *v14;
      *__dst = v16;
      v94 = *(v14 + 32);
      v17 = *(v14 + 56);
      *&v95 = *(v14 + 48);
      *(&v95 + 1) = v17;
      v96[0] = &v92 + 8;
      v96[1] = v97;
      v97[0] = 0uLL;
      if (v17)
      {
        atomic_fetch_add((v17 + 20), 1u);
        if (*(v14 + 4) <= 2)
        {
LABEL_18:
          v18 = *(v14 + 72);
          v19 = v96[1];
          *v96[1] = *v18;
          v19[1] = v18[1];
          goto LABEL_57;
        }
      }

      else if (SDWORD1(v15) <= 2)
      {
        goto LABEL_18;
      }

      DWORD1(v92) = 0;
      sub_100269B58(&v92, v14);
    }

    else
    {
      sub_1002703C0(a2, 0xFFFFFFFFLL, &v92);
    }

LABEL_57:
    if (*(a1 + 16) != __dst[0])
    {
      v46 = *(a1 + 4);
      if (v46 >= 3)
      {
        v48 = *(a1 + 64);
        v49 = (v48 + 4);
        v50 = 1;
        v51 = v46 & 0x7FFFFFFE;
        v52 = 1;
        do
        {
          v50 *= *(v49 - 1);
          v52 *= *v49;
          v49 += 2;
          v51 -= 2;
        }

        while (v51);
        v47 = v52 * v50;
        v53 = v46 - (v46 & 0x7FFFFFFE);
        if (v53)
        {
          v54 = (v48 + 8 * ((v46 >> 1) & 0x3FFFFFFF));
          do
          {
            v55 = *v54++;
            v47 *= v55;
            --v53;
          }

          while (v53);
        }
      }

      else
      {
        v47 = *(a1 + 12) * *(a1 + 8);
      }

      if (v47)
      {
        v98[0] = a1;
        v98[1] = &v92;
        v86 = 0;
        v87 = 0;
        sub_100267CC8(v88, v98, &v86, 2);
        v56 = *(a1 + 4);
        if (v56 < 1)
        {
          v57 = 0;
        }

        else
        {
          v57 = *(*(a1 + 72) + 8 * v56 - 8);
        }

        v58 = v57 * *(&v88[2] + 1);
        v59 = -1;
        while (++v59 < *&v88[2])
        {
          memcpy(v87, v86, v58);
          sub_100267D14(v88);
        }
      }
    }

    if (*(&v95 + 1) && atomic_fetch_add((*(&v95 + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v92);
    }

    *(&v95 + 1) = 0;
    *__dst = 0u;
    v94 = 0u;
    if (SDWORD1(v92) >= 1)
    {
      v60 = 0;
      v61 = v96[0];
      do
      {
        v61[v60++] = 0;
      }

      while (v60 < SDWORD1(v92));
    }

    v62 = v96[1];
    if (v96[1] != v97)
    {
      goto LABEL_116;
    }

    goto LABEL_117;
  }

  sub_100275A84(a2, *(a1 + 8), *(a1 + 12), *a1 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v92);
    goto LABEL_47;
  }

  v8 = *(a2 + 8);
  v9 = *v8;
  v10 = *(v8 + 16);
  v92 = *v8;
  *__dst = v10;
  v94 = *(v8 + 32);
  v11 = *(v8 + 56);
  *&v95 = *(v8 + 48);
  *(&v95 + 1) = v11;
  v96[0] = &v92 + 8;
  v96[1] = v97;
  v97[0] = 0uLL;
  if (!v11)
  {
    if (SDWORD1(v9) <= 2)
    {
      goto LABEL_11;
    }

LABEL_46:
    DWORD1(v92) = 0;
    sub_100269B58(&v92, v8);
    goto LABEL_47;
  }

  atomic_fetch_add((v11 + 20), 1u);
  if (*(v8 + 4) > 2)
  {
    goto LABEL_46;
  }

LABEL_11:
  v12 = *(v8 + 72);
  v13 = v96[1];
  *v96[1] = *v12;
  v13[1] = v12[1];
LABEL_47:
  if (*(a1 + 16) == __dst[0] || *(a1 + 8) < 1 || *(a1 + 12) < 1)
  {
    goto LABEL_109;
  }

  if (sub_100271148(a2) == 196608 || sub_100271148(a2) == 786432 || sub_100271148(a2) == 917504)
  {
    if (SDWORD1(v92) < 3)
    {
      v45 = HIDWORD(v92) * DWORD2(v92);
      goto LABEL_87;
    }

    if (DWORD1(v92) > 7)
    {
      v63 = DWORD1(v92) & 0x7FFFFFF8;
      v64 = (v96[0] + 16);
      v65.i64[0] = 0x100000001;
      v65.i64[1] = 0x100000001;
      v66 = v63;
      v67.i64[0] = 0x100000001;
      v67.i64[1] = 0x100000001;
      do
      {
        v65 = vmulq_s32(v64[-1], v65);
        v67 = vmulq_s32(*v64, v67);
        v64 += 2;
        v66 -= 8;
      }

      while (v66);
      v68 = vmulq_s32(v67, v65);
      *v68.i8 = vmul_s32(*v68.i8, *&vextq_s8(v68, v68, 8uLL));
      v45 = v68.i32[0] * v68.i32[1];
      if (v63 == DWORD1(v92))
      {
LABEL_87:
        sub_10026E1E0(&v92, 0, v45, v88);
        if (*(&v95 + 1) && atomic_fetch_add((*(&v95 + 1) + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v92);
        }

        if (SDWORD1(v92) >= 1)
        {
          v72 = 0;
          v73 = v96[0];
          do
          {
            v73[v72++] = 0;
          }

          while (v72 < SDWORD1(v92));
        }

        v92 = v88[0];
        *__dst = v88[1];
        v94 = v88[2];
        v95 = v88[3];
        v74 = v96[1];
        if (v96[1] == v97)
        {
          v75 = v90;
          if (SDWORD1(v88[0]) <= 2)
          {
            goto LABEL_95;
          }
        }

        else
        {
          j__free(v96[1]);
          v96[0] = &v92 + 8;
          v96[1] = v97;
          v74 = v97;
          v75 = v90;
          if (SDWORD1(v88[0]) <= 2)
          {
LABEL_95:
            *v74 = *v75;
            v74[1] = v75[1];
            goto LABEL_98;
          }
        }

        v96[0] = v89;
        v96[1] = v75;
        v89 = v88 + 8;
        v90 = v91;
LABEL_98:
        LODWORD(v88[0]) = 1124007936;
        memset(v88 + 4, 0, 60);
        if (v90 != v91)
        {
          j__free(v90);
        }

        goto LABEL_100;
      }
    }

    else
    {
      v63 = 0;
      v45 = 1;
    }

    v69 = DWORD1(v92) - v63;
    v70 = (v96[0] + 4 * v63);
    do
    {
      v71 = *v70++;
      v45 *= v71;
      --v69;
    }

    while (v69);
    goto LABEL_87;
  }

LABEL_100:
  v77 = *(a1 + 8);
  v76 = *(a1 + 12);
  if ((*a1 & v92 & 0x4000) != 0 && v77 * v76 == v77 * v76)
  {
    v76 *= v77;
    v77 = 1;
  }

  v78 = *(a1 + 4);
  if (v78 < 1)
  {
    v79 = 0;
  }

  else
  {
    v79 = *(*(a1 + 72) + 8 * v78 - 8);
  }

  if (v77)
  {
    v80 = *(a1 + 16);
    v81 = __dst[0];
    v82 = v79 * v76;
    do
    {
      --v77;
      memcpy(v81, v80, v82);
      v80 += *(a1 + 80);
      v81 += *&v97[0];
    }

    while (v77);
  }

LABEL_109:
  if (*(&v95 + 1) && atomic_fetch_add((*(&v95 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v92);
  }

  *(&v95 + 1) = 0;
  *__dst = 0u;
  v94 = 0u;
  if (SDWORD1(v92) >= 1)
  {
    v83 = 0;
    v84 = v96[0];
    do
    {
      v84[v83++] = 0;
    }

    while (v83 < SDWORD1(v92));
  }

  v62 = v96[1];
  if (v96[1] != v97)
  {
LABEL_116:
    j__free(v62);
  }

LABEL_117:
  if (v85[2])
  {
    sub_1002ACC1C(v85);
  }
}

void sub_10022C158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v70, &off_100473E18);
  if (sub_100271148(a3) == 0x10000)
  {
    v6 = *(a3 + 8);
    v7 = *v6;
    v8 = *(v6 + 16);
    v62 = *v6;
    v63 = v8;
    v64 = *(v6 + 32);
    v9 = *(v6 + 56);
    v65 = *(v6 + 48);
    v66 = v9;
    v67 = &v62 + 2;
    v68 = v69;
    v69[0] = 0;
    v69[1] = 0;
    if (v9)
    {
      atomic_fetch_add((v9 + 20), 1u);
      if (*(v6 + 4) <= 2)
      {
LABEL_4:
        v10 = *(v6 + 72);
        v11 = v68;
        *v68 = *v10;
        v11[1] = v10[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v7) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v62) = 0;
    sub_100269B58(&v62, v6);
  }

  else
  {
    sub_1002703C0(a3, 0xFFFFFFFFLL, &v62);
  }

LABEL_8:
  if (!v63)
  {
    sub_10022B754(a1, a2);
    goto LABEL_81;
  }

  v12 = (v62 >> 3) & 0x1FF;
  if ((v62 & 7) != 0 || v12 && v12 != ((*a1 >> 3) & 0x1FF))
  {
    *v58 = 0uLL;
    qmemcpy(sub_1002A80E0(v58, 44), "mask.depth() == 0 && (mcn == 1 || mcn == cn)", 44);
    sub_1002A8980(-215, v58, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 381);
  }

  if (*(a1 + 4) <= 2)
  {
    v13 = *(a1 + 64);
    if (v13[1] != v67[1] || *v13 != *v67)
    {
      *v58 = 0uLL;
      qmemcpy(sub_1002A80E0(v58, 21), "size() == mask.size()", 21);
      sub_1002A8980(-215, v58, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 385);
    }
  }

  *v58 = 1124007936;
  memset(&v58[4], 0, 60);
  v59 = &v58[8];
  v60 = v61;
  v61[0] = 0;
  v61[1] = 0;
  if (sub_100271148(a2) == 0x10000)
  {
    v14 = *(a2 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v50 = *v14;
    v51 = v16;
    v52 = *(v14 + 32);
    v17 = *(v14 + 56);
    v53 = *(v14 + 48);
    v54 = v17;
    v55 = &v50 + 8;
    v56 = v57;
    v57[0] = 0;
    v57[1] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_20:
        v18 = *(v14 + 72);
        v19 = v56;
        *v56 = *v18;
        v19[1] = v18[1];
        goto LABEL_25;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_20;
    }

    DWORD1(v50) = 0;
    sub_100269B58(&v50, v14);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v50);
  }

LABEL_25:
  sub_10026BEEC(a2, *(a1 + 4), *(a1 + 64), *a1 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, v74);
    goto LABEL_32;
  }

  v20 = *(a2 + 8);
  v21 = *v20;
  v22 = *(v20 + 16);
  *v74 = *v20;
  *&v74[16] = v22;
  *&v74[32] = *(v20 + 32);
  v23 = *(v20 + 56);
  *&v74[48] = *(v20 + 48);
  *&v74[56] = v23;
  v75 = &v74[8];
  v76 = v77;
  v77[0] = 0;
  v77[1] = 0;
  if (!v23)
  {
    if (SDWORD1(v21) <= 2)
    {
      goto LABEL_28;
    }

LABEL_31:
    *&v74[4] = 0;
    sub_100269B58(v74, v20);
    goto LABEL_32;
  }

  atomic_fetch_add((v23 + 20), 1u);
  if (*(v20 + 4) > 2)
  {
    goto LABEL_31;
  }

LABEL_28:
  v24 = *(v20 + 72);
  v25 = v76;
  *v76 = *v24;
  v25[1] = v24[1];
LABEL_32:
  if (*&v58[56] && atomic_fetch_add((*&v58[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v58);
  }

  if (*&v58[4] >= 1)
  {
    v26 = 0;
    v27 = v59;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < *&v58[4]);
  }

  *v58 = *v74;
  *&v58[16] = *&v74[16];
  *&v58[32] = *&v74[32];
  *&v58[48] = *&v74[48];
  v28 = v60;
  if (v60 == v61)
  {
    v29 = v76;
    if (*&v74[4] <= 2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    j__free(v60);
    v59 = &v58[8];
    v60 = v61;
    v28 = v61;
    v29 = v76;
    if (*&v74[4] <= 2)
    {
LABEL_40:
      *v28 = *v29;
      v28[1] = v29[1];
      goto LABEL_43;
    }
  }

  v59 = v75;
  v60 = v29;
  v75 = &v74[8];
  v76 = v77;
LABEL_43:
  *v74 = 1124007936;
  memset(&v74[4], 0, 60);
  if (v76 != v77)
  {
    j__free(v76);
  }

  if (*&v58[16] != v51)
  {
    memset(v74, 0, 32);
    sub_10022CAFC(v58, v74);
  }

  if (v54 && atomic_fetch_add((v54 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v50);
  }

  v54 = 0;
  v51 = 0u;
  v52 = 0u;
  if (SDWORD1(v50) >= 1)
  {
    v30 = 0;
    v31 = v55;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < SDWORD1(v50));
  }

  if (v56 != v57)
  {
    j__free(v56);
  }

  v32 = v12 + 1;
  if (v12)
  {
    LODWORD(v33) = *(a1 + 4);
    v34 = (0x88442211uLL >> (4 * (*a1 & 7u))) & 0xF;
LABEL_57:
    v49 = v34;
    goto LABEL_58;
  }

  v33 = *(a1 + 4);
  if (v33 <= 0)
  {
    v34 = 0;
    goto LABEL_57;
  }

  v34 = *(*(a1 + 72) + 8 * v33 - 8);
  v49 = v34;
  if (v34 > 0x20)
  {
    v36 = sub_10022B4D4;
    if (v33 <= 2)
    {
      goto LABEL_62;
    }

    goto LABEL_68;
  }

LABEL_58:
  v35 = qword_1004B0138[v34];
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = sub_10022B4D4;
  }

  if (v33 <= 2)
  {
LABEL_62:
    v37 = *(a1 + 8);
    v38 = *(a1 + 12);
    if ((*a1 & *v58 & v62 & 0x4000) != 0 && (v39 = v38 * v32 * v37, v39 == v39))
    {
      v37 = 1;
    }

    else
    {
      LODWORD(v39) = v38 * v32;
    }

    v42 = *(a1 + 16);
    v43 = *(a1 + 80);
    *&v50 = __PAIR64__(v37, v39);
    v36(v42, v43, v63, v69[0], *&v58[16], v61[0], &v50, &v49);
    goto LABEL_73;
  }

LABEL_68:
  *v74 = a1;
  *&v74[8] = v58;
  *&v74[16] = &v62;
  *&v74[24] = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  sub_100267CC8(&v50, v74, &v71, 0xFFFFFFFFLL);
  v40 = v32 * DWORD2(v52);
  v41 = -1;
  while (++v41 < v52)
  {
    v48[0] = v40;
    v48[1] = 1;
    v36(v71, 0, v73, 0, v72, 0, v48, &v49);
    sub_100267D14(&v50);
  }

LABEL_73:
  if (*&v58[56] && atomic_fetch_add((*&v58[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v58);
  }

  *&v58[56] = 0;
  memset(&v58[16], 0, 32);
  if (*&v58[4] >= 1)
  {
    v44 = 0;
    v45 = v59;
    do
    {
      *&v45[4 * v44++] = 0;
    }

    while (v44 < *&v58[4]);
  }

  if (v60 != v61)
  {
    j__free(v60);
  }

LABEL_81:
  if (v66 && atomic_fetch_add((v66 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v62);
  }

  v66 = 0;
  v63 = 0u;
  v64 = 0u;
  if (SDWORD1(v62) >= 1)
  {
    v46 = 0;
    v47 = v67;
    do
    {
      v47[v46++] = 0;
    }

    while (v46 < SDWORD1(v62));
  }

  if (v68 != v69)
  {
    j__free(v68);
  }

  if (v70[2])
  {
    sub_1002ACC1C(v70);
  }
}

void sub_10022CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022CAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_100006D14(&a23);
  sub_100006D14(va);
  sub_1001D8BF4(v34 - 200);
  _Unwind_Resume(a1);
}

uint64_t sub_10022CAFC(uint64_t a1, int64x2_t *a2)
{
  sub_1002ACE7C(v20, &off_100473E38);
  v22 = a1;
  __dst = 0;
  sub_100267CC8(v16, &v22, &__dst, 1);
  v4 = *(a1 + 4);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 72) + 8 * v4 - 8);
  }

  v6 = v5 * v18;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*a2), vceqzq_s64(a2[1]))))))
  {
    if (v17)
    {
      sub_10026F720(a2, __src, *a1 & 0xFFF, 12);
      if (v6)
      {
        v7 = 0;
        v8 = 12 * ((0x88442211uLL >> (4 * (*a1 & 7u))) & 0xF);
        v9 = v6;
        do
        {
          if (v8 >= v9)
          {
            v10 = v9;
          }

          else
          {
            v10 = v8;
          }

          if (v10 >= 0x61)
          {
            v15[0] = 0;
            v15[1] = 0;
            v11 = sub_1002A80E0(v15, 20);
            *(v11 + 16) = 695361900;
            *v11 = *"sz <= sizeof(scalar)";
            sub_1002A8980(-215, v15, "operator=", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 451);
          }

          memcpy(__dst + v7, __src, v10);
          v7 += v8;
          v9 -= v8;
        }

        while (v7 < v6);
      }

      if (v17 >= 2)
      {
        for (i = 1; i < v17; ++i)
        {
          sub_100267D14(v16);
          memcpy(__dst, *(a1 + 16), v6);
        }
      }
    }
  }

  else
  {
    v14 = -1;
    while (++v14 < v17)
    {
      bzero(__dst, v6);
      sub_100267D14(v16);
    }
  }

  if (v20[2])
  {
    sub_1002ACC1C(v20);
  }

  return a1;
}

void sub_10022CD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

int *sub_10022CDA0(int *a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v101, &off_100473E58);
  if (!*(a1 + 2))
  {
    goto LABEL_111;
  }

  v6 = a1[1];
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = (v8 + 4);
    v10 = 1;
    v11 = v6 & 0x7FFFFFFE;
    v12 = 1;
    do
    {
      v10 *= *(v9 - 1);
      v12 *= *v9;
      v9 += 2;
      v11 -= 2;
    }

    while (v11);
    v7 = v12 * v10;
    v13 = v6 - (v6 & 0x7FFFFFFE);
    if (v13)
    {
      v14 = (v8 + 8 * ((v6 >> 1) & 0x3FFFFFFF));
      do
      {
        v15 = *v14++;
        v7 *= v15;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v7 = a1[3] * a1[2];
  }

  if (!v6 || !v7)
  {
    goto LABEL_111;
  }

  if (sub_100271148(a2) == 0x10000)
  {
    v16 = *(a2 + 8);
    v17 = *v16;
    v18 = *(v16 + 16);
    v93 = *v16;
    v94 = v18;
    v95 = *(v16 + 32);
    v19 = *(v16 + 56);
    v96 = *(v16 + 48);
    v97 = v19;
    v98 = &v93 + 2;
    v99 = v100;
    v100[0] = 0;
    v100[1] = 0;
    if (v19)
    {
      atomic_fetch_add((v19 + 20), 1u);
      if (*(v16 + 4) <= 2)
      {
LABEL_14:
        v20 = *(v16 + 72);
        v21 = v99;
        *v99 = *v20;
        v21[1] = v20[1];
        goto LABEL_18;
      }
    }

    else if (SDWORD1(v17) <= 2)
    {
      goto LABEL_14;
    }

    DWORD1(v93) = 0;
    sub_100269B58(&v93, v16);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v93);
  }

LABEL_18:
  if (sub_100271148(a3) == 0x10000)
  {
    v22 = *(a3 + 8);
    v23 = *v22;
    v24 = *(v22 + 16);
    v85 = *v22;
    v86 = v24;
    v87 = *(v22 + 32);
    v25 = *(v22 + 56);
    v88 = *(v22 + 48);
    v89 = v25;
    v90 = &v85 + 2;
    v91 = v92;
    v92[0] = 0;
    v92[1] = 0;
    if (v25)
    {
      atomic_fetch_add((v25 + 20), 1u);
      if (*(v22 + 4) <= 2)
      {
LABEL_21:
        v26 = *(v22 + 72);
        v27 = v91;
        *v91 = *v26;
        v27[1] = v26[1];
        goto LABEL_25;
      }
    }

    else if (SDWORD1(v23) <= 2)
    {
      goto LABEL_21;
    }

    DWORD1(v85) = 0;
    sub_100269B58(&v85, v22);
  }

  else
  {
    sub_1002703C0(a3, 0xFFFFFFFFLL, &v85);
  }

LABEL_25:
  v28 = *a1;
  sub_100271148(a2);
  if (SDWORD1(v93) > 2)
  {
    goto LABEL_29;
  }

  if ((v93 & 0x4000) == 0)
  {
    goto LABEL_29;
  }

  v29 = *v98;
  v30 = v98[1];
  if (v30 != 1 && v29 != 1)
  {
    goto LABEL_29;
  }

  v73 = (v28 >> 3) & 0x1FF;
  v74 = v30 == v73 + 1;
  if (v29 != 1)
  {
    v74 = 0;
  }

  v75 = v29 == v73 + 1 || v29 == 1;
  if (v30 != 1)
  {
    v75 = 0;
  }

  if (!v75 && !v74 && (v30 != 1 || v29 != 4 || v73 > 3 || (v93 & 0xFFF) != 6))
  {
LABEL_29:
    v103 = 0;
    v104 = 0;
    qmemcpy(sub_1002A80E0(&v103, 60), "checkScalar(value, type(), _value.kind(), _InputArray::MAT)", 60);
    sub_1002A8980(-215, &v103, "setTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 523);
  }

  v31 = (v85 >> 3) & 0x1FF;
  if (!v86)
  {
    goto LABEL_48;
  }

  if (SDWORD1(v85) >= 3)
  {
    v33 = v90 + 1;
    v34 = 1;
    v35 = DWORD1(v85) & 0x7FFFFFFE;
    v36 = 1;
    do
    {
      v34 *= *(v33 - 1);
      v36 *= *v33;
      v33 += 2;
      v35 -= 2;
    }

    while (v35);
    v32 = v36 * v34;
    v37 = DWORD1(v85) - (DWORD1(v85) & 0x7FFFFFFE);
    if (v37)
    {
      v38 = &v90[2 * ((DWORD1(v85) >> 1) & 0x3FFFFFFF)];
      do
      {
        v39 = *v38++;
        v32 *= v39;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v32 = SHIDWORD(v85) * SDWORD2(v85);
  }

  if (!DWORD1(v85) || !v32)
  {
    goto LABEL_48;
  }

  if ((v85 & 7) != 0 || v31 && v31 != ((*a1 >> 3) & 0x1FF) || (v40 = *(a1 + 8), v41 = *(v40 - 1), v42 = v90, v41 != *(v90 - 1)))
  {
LABEL_47:
    v103 = 0;
    v104 = 0;
    qmemcpy(sub_1002A80E0(&v103, 83), "mask.empty() || (mask.depth() == 0 && (mcn == 1 || mcn == cn) && size == mask.size)", 83);
    sub_1002A8980(-215, &v103, "setTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 525);
  }

  if (v41 != 2)
  {
    if (v41 < 1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v77 = *v40++;
      v76 = v77;
      v78 = *v42++;
      if (v76 != v78)
      {
        goto LABEL_47;
      }

      if (!--v41)
      {
        goto LABEL_48;
      }
    }
  }

  if (*v40 != *v90 || v40[1] != v90[1])
  {
    goto LABEL_47;
  }

LABEL_48:
  if (v31)
  {
    v43 = (0x88442211uLL >> (4 * (*a1 & 7u))) & 0xF;
LABEL_50:
    v84 = v43;
    goto LABEL_51;
  }

  v47 = a1[1];
  if (v47 <= 0)
  {
    v43 = 0;
    goto LABEL_50;
  }

  v43 = *(*(a1 + 9) + 8 * v47 - 8);
  v84 = v43;
  if (v43 > 0x20)
  {
    v45 = sub_10022B4D4;
    v109 = 0;
    v110 = 0;
    v108 = a1;
    if (v86)
    {
      goto LABEL_55;
    }

LABEL_71:
    v56 = 0;
    goto LABEL_72;
  }

LABEL_51:
  v44 = qword_1004B0138[v43];
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = sub_10022B4D4;
  }

  v109 = 0;
  v110 = 0;
  v108 = a1;
  if (!v86)
  {
    goto LABEL_71;
  }

LABEL_55:
  if (SDWORD1(v85) >= 3)
  {
    v48 = v90 + 1;
    v49 = 1;
    v50 = DWORD1(v85) & 0x7FFFFFFE;
    v51 = 1;
    do
    {
      v49 *= *(v48 - 1);
      v51 *= *v48;
      v48 += 2;
      v50 -= 2;
    }

    while (v50);
    v46 = v51 * v49;
    v52 = DWORD1(v85) - (DWORD1(v85) & 0x7FFFFFFE);
    if (v52)
    {
      v53 = &v90[2 * ((DWORD1(v85) >> 1) & 0x3FFFFFFF)];
      do
      {
        v54 = *v53++;
        v46 *= v54;
        --v52;
      }

      while (v52);
    }
  }

  else
  {
    v46 = SHIDWORD(v85) * SDWORD2(v85);
  }

  if (v46)
  {
    v55 = DWORD1(v85) == 0;
  }

  else
  {
    v55 = 1;
  }

  if (v55)
  {
    goto LABEL_71;
  }

  v56 = &v85;
LABEL_72:
  v109 = v56;
  v110 = 0;
  v106 = 0;
  v107 = 0;
  sub_100267CC8(v81, &v108, &v106, 0xFFFFFFFFLL);
  v57 = v31 + 1;
  v58 = (v31 + 1) * v83;
  v59 = (v84 + 1023) / v84;
  if (v58 < v59)
  {
    LODWORD(v59) = (v31 + 1) * v83;
  }

  v60 = v59 / v57 * v57;
  v103 = v105;
  v104 = v84 * v60 + 32;
  if (v104 >= 0x409)
  {
    operator new[]();
  }

  sub_1001D90B0(&v93, *a1 & 0xFFF, v105, v59 / v57);
  v79 = a1;
  if (v58 <= 0)
  {
    v66 = -1;
    while (++v66 < v82)
    {
      sub_100267D14(v81);
    }
  }

  else
  {
    for (i = 0; i < v82; ++i)
    {
      for (j = 0; j < v58; j += v60)
      {
        while (1)
        {
          v63 = v58 - j;
          if (v58 - j >= v60)
          {
            v63 = v60;
          }

          v64 = v63;
          v65 = v84 * v63;
          if (v107)
          {
            break;
          }

          memcpy(v106, v105, v84 * v63);
          v106 += v65;
          j += v60;
          if (j >= v58)
          {
            goto LABEL_78;
          }
        }

        v80[0] = v63;
        v80[1] = 1;
        v45(v105, 0, v107, 0, v106, 0, v80, &v84);
        v107 += v64;
        v106 += v65;
      }

LABEL_78:
      sub_100267D14(v81);
    }
  }

  if (v103 != v105 && v103 != 0)
  {
    operator delete[]();
  }

  a1 = v79;
  if (v89 && atomic_fetch_add((v89 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v85);
  }

  v89 = 0;
  v86 = 0u;
  v87 = 0u;
  if (SDWORD1(v85) >= 1)
  {
    v68 = 0;
    v69 = v90;
    do
    {
      v69[v68++] = 0;
    }

    while (v68 < SDWORD1(v85));
  }

  if (v91 != v92)
  {
    j__free(v91);
  }

  if (v97 && atomic_fetch_add((v97 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v93);
  }

  v97 = 0;
  v94 = 0u;
  v95 = 0u;
  if (SDWORD1(v93) >= 1)
  {
    v70 = 0;
    v71 = v98;
    do
    {
      v71[v70++] = 0;
    }

    while (v70 < SDWORD1(v93));
  }

  if (v99 != v100)
  {
    j__free(v99);
  }

LABEL_111:
  if (v102)
  {
    sub_1002ACC1C(v101);
  }

  return a1;
}

void sub_10022D618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022D6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a47 != v47 && a47 != 0)
  {
    operator delete[]();
  }

  sub_100006D14(&a21);
  sub_100006D14(&a33);
  sub_1001D8BF4(&a45);
  _Unwind_Resume(a1);
}

void sub_10022D718(uint64_t a1, uint64_t a2, int a3)
{
  sub_1002ACE7C(v544, &off_100473E78);
  if (sub_10027377C(a1, -1) >= 3)
  {
    v535 = 0uLL;
    *sub_1002A80E0(&v535, 16) = *"_src.dims() <= 2";
    sub_1002A8980(-215, &v535, "flip", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 742);
  }

  sub_100271154(a1, -1, &v543);
  if (a3 < 0)
  {
    if (v543 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = a3;
    }

    if (HIDWORD(v543) == 1)
    {
      a3 = 1;
    }

    else
    {
      a3 = v6;
    }

    if (a3 < 1)
    {
      goto LABEL_14;
    }
  }

  else if (a3 < 1)
  {
    goto LABEL_14;
  }

  if (v543 == 1)
  {
LABEL_18:
    sub_100274944(a1, a2);
    goto LABEL_19;
  }

LABEL_14:
  if (!a3 && HIDWORD(v543) == 1 || a3 < 0 && v543 == 0x100000001)
  {
    goto LABEL_18;
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v7 = *(a1 + 8);
    v8 = *v7;
    v9 = *(v7 + 16);
    v535 = *v7;
    v536 = v9;
    v537 = *(v7 + 32);
    v10 = *(v7 + 56);
    v538 = *(v7 + 48);
    v539 = v10;
    v540 = &v535 + 1;
    v541 = v542;
    v542[0] = 0;
    v542[1] = 0;
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      if (*(v7 + 4) <= 2)
      {
LABEL_25:
        v11 = *(v7 + 72);
        v12 = v541;
        *v541 = *v11;
        v12[1] = v11[1];
        goto LABEL_29;
      }
    }

    else if (SDWORD1(v8) <= 2)
    {
      goto LABEL_25;
    }

    DWORD1(v535) = 0;
    sub_100269B58(&v535, v7);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v535);
  }

LABEL_29:
  v13 = v535 & 0xFFF;
  *&v527 = v543;
  sub_100275370(a2, &v527, v535 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) == 0x10000)
  {
    v14 = *(a2 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v527 = *v14;
    v528 = v16;
    v529 = *(v14 + 32);
    v17 = *(v14 + 56);
    v530 = *(v14 + 48);
    v531 = v17;
    v532 = &v527 + 1;
    v533 = v534;
    v534[1] = 0;
    v534[0] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_32:
        v18 = *(v14 + 72);
        v19 = v533;
        *v533 = *v18;
        v19[1] = v18[1];
        goto LABEL_36;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_32;
    }

    DWORD1(v527) = 0;
    sub_100269B58(&v527, v14);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v527);
  }

LABEL_36:
  if (a3 <= 0)
  {
    v500 = ((v13 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    v20 = (v540->i32[0] - 1);
    if (v540->i32[0] < 1)
    {
LABEL_676:
      if (a3 < 0)
      {
        v526 = vrev64_s32(*v532);
        sub_10022F0B4(v528, v534[0], v528, v534[0], &v526, v500);
      }

      goto LABEL_678;
    }

    v21 = v540->i32[1] * v500;
    v22 = v534[0];
    v23 = v528;
    v24 = v542[0];
    v25 = v536;
    v26 = v528 + v534[0] * v20;
    v27 = v542[0] * v20;
    v28 = (v536 + v542[0] * v20);
    v29 = -v542[0];
    v30 = -v534[0];
    v31 = (v540->i32[0] + 1) >> 1;
    v32 = v21 - 4;
    v33 = v21;
    v34 = v21 - 16;
    v521 = v21;
    v525 = v542[0];
    v522 = -v542[0];
    v524 = -v534[0];
    v523 = v534[0] * v20;
    if (v21 < 16)
    {
      if (v21 < 4)
      {
        if (v21 >= 1)
        {
          v35 = (v523 + v528 + 2);
          v36 = (v536 + 1);
          v37 = (v27 + v536 + 2);
          v38 = (v528 + 1);
          do
          {
            v39 = *(v36 - 1);
            *(v38 - 1) = *(v37 - 2);
            *(v35 - 2) = v39;
            if (v21 != 1)
            {
              v40 = *v36;
              *v38 = *(v37 - 1);
              *(v35 - 1) = v40;
              if (v21 != 2)
              {
                v41 = v36[1];
                v38[1] = *v37;
                *v35 = v41;
              }
            }

            v35 += v30;
            v36 += v24;
            v37 -= v24;
            v38 += v22;
            --v31;
          }

          while (v31);
        }

        goto LABEL_676;
      }

      v314 = 0;
      v315 = v534[0] * v20 + v528;
      v316 = v27 + v536;
      v317 = v315 - (v27 + v536);
      v318 = v542[0] - v534[0];
      v319 = v315 - v536;
      v320 = v29 - v534[0];
      v321 = v528 - v316;
      v520 = v528 - v536;
      v517 = v534[0] - v542[0];
      v322 = v31 - 1;
      v323 = 3;
      if (v32 > 3)
      {
        v323 = v21 - 4;
      }

      v324 = v528 + v534[0] * v322 + (v323 & 0x7FFFFFFC) + 4;
      v325 = v20 - v322;
      v326 = v528 + v534[0] * (v20 - v322) + (v323 & 0x7FFFFFFC) + 4;
      v327 = v536 + v542[0] * v322 + (v323 & 0x7FFFFFFC) + 4;
      v328 = v536 + v542[0] * v325 + (v323 & 0x7FFFFFFC);
      v331 = v528 < v326 && v26 < v324 || (v534[0] | v30) < 0;
      v333 = v528 < v327 && v536 < v324 || (v534[0] | v542[0]) < 0;
      v334 = v534[0] + v542[0];
      v513 = -2 * v534[0];
      v335 = v328 + 4;
      v336 = (v323 >> 2) + 1;
      v337 = v333 || v331;
      if (v528 < v335 && v28 < v324 || (v534[0] | v29) < 0)
      {
        v337 = 1;
      }

      if (v26 < v327 && v536 < v326 || (v542[0] | v30) < 0)
      {
        v342 = 1;
      }

      else
      {
        v342 = v337;
      }

      if (v26 < v335 && v28 < v326 || (v30 | v29) < 0)
      {
        v342 = 1;
      }

      v345 = v336 & 0x3FFFFFF8;
      v346 = (v32 < 76) | v342;
      v347 = v321;
      v348 = v542[0];
      while (1)
      {
        if ((((v23 | v25) | (v28 | v26)) & 3) != 0)
        {
          v349 = 0;
          if (v521 > 0)
          {
            goto LABEL_647;
          }

          goto LABEL_636;
        }

        if (v346)
        {
          break;
        }

        v350 = *v25;
        v351 = v25[1];
        v352 = v28[1];
        *v23 = *v28;
        v23[1] = v352;
        *v26 = v350;
        *(v26 + 16) = v351;
        if (v345 != 8)
        {
          v353 = v25[2];
          v354 = v25[3];
          v355 = v28[3];
          v23[2] = v28[2];
          v23[3] = v355;
          *(v26 + 32) = v353;
          *(v26 + 48) = v354;
        }

        v349 = 4 * (v336 & 0x3FFFFFF8);
        if (v336 != v345)
        {
          goto LABEL_645;
        }

LABEL_646:
        v349 = v349;
        if (v349 < v521)
        {
LABEL_647:
          if (v349 + 1 > v33)
          {
            v357 = v349 + 1;
          }

          else
          {
            v357 = v33;
          }

          v358 = v357 - v349;
          if ((v357 - v349) < 8)
          {
            v359 = v349;
            goto LABEL_652;
          }

          if ((v317 + v318 * v314) < 0x20)
          {
            v359 = v349;
          }

          else if ((v319 + v320 * v314) < 0x20)
          {
            v359 = v349;
          }

          else if ((v347 + v334 * v314) < 0x20)
          {
            v359 = v349;
          }

          else if ((v520 + v517 * v314) < 0x20)
          {
            v359 = v349;
          }

          else if ((v523 + v513 * v314) < 0x20)
          {
            v359 = v349;
          }

          else
          {
            if (v358 < 0x20)
            {
              v361 = 0;
              goto LABEL_666;
            }

            v361 = v358 & 0xFFFFFFFFFFFFFFE0;
            v362 = v349;
            v363 = v358 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v364 = *(v25 + v362);
              v365 = *(v25 + v362 + 16);
              v366 = *(v28 + v362 + 16);
              v367 = (v23 + v362);
              *v367 = *(v28 + v362);
              v367[1] = v366;
              v368 = (v26 + v362);
              *v368 = v364;
              v368[1] = v365;
              v362 += 32;
              v363 -= 32;
            }

            while (v363);
            v30 = v524;
            if (v358 == v361)
            {
              goto LABEL_636;
            }

            if ((v358 & 0x18) != 0)
            {
LABEL_666:
              v369 = v334;
              v370 = v347;
              v371 = v358 & 0xFFFFFFFFFFFFFFF8;
              v359 = (v358 & 0xFFFFFFFFFFFFFFF8) + v349;
              v372 = v25 + v349;
              v373 = v28 + v349;
              v374 = v23 + v349;
              v375 = v26 + v349;
              do
              {
                v376 = *&v372[v361];
                *&v374[v361] = *&v373[v361];
                *(v375 + v361) = v376;
                v361 += 8;
              }

              while (v371 != v361);
              v313 = v358 == v371;
              v348 = v525;
              v30 = v524;
              v347 = v370;
              v334 = v369;
              if (v313)
              {
                goto LABEL_636;
              }

              goto LABEL_652;
            }

            v359 = v361 + v349;
            v30 = v524;
          }

          do
          {
LABEL_652:
            v360 = *(v25 + v359);
            *(v23 + v359) = *(v28 + v359);
            *(v26 + v359++) = v360;
          }

          while (v359 < v33);
        }

LABEL_636:
        ++v314;
        v25 = (v25 + v348);
        v28 = (v28 + v522);
        v23 = (v23 + v22);
        v26 += v30;
        if (v314 == v31)
        {
          goto LABEL_676;
        }
      }

      v349 = 0;
      do
      {
LABEL_645:
        v356 = *(v25 + v349);
        *(v23 + v349) = *(v28 + v349);
        *(v26 + v349) = v356;
        v349 += 4;
      }

      while (v349 <= v32);
      goto LABEL_646;
    }

    v42 = 0;
    v476 = v542[0] * v20;
    v43 = v34;
    if (v34 <= 15)
    {
      v44 = 15;
    }

    else
    {
      v44 = v34;
    }

    v477 = v44;
    v511 = v44 & 0x7FFFFFF0;
    v509 = v31 - 1;
    v45 = v528 + v534[0] * v509 + v511;
    v514 = v20 - v509;
    v46 = v528 + v534[0] * (v20 - v509) + v511;
    v47 = v528 + 4;
    v48 = v45 + 8;
    v49 = v26 + 4;
    v50 = v528 + 8;
    v51 = v45 + 12;
    v52 = v26 + 8;
    v53 = v46 + 12;
    v486 = v45 + 12;
    v489 = v528 + 12;
    v54 = v45 + 16;
    v518 = v26 + 12;
    v55 = v534[0] | v524;
    v56 = v46 + 8;
    v501 = v46 + 8;
    v436 = v26 + 4;
    v57 = v528 + 4 >= v46 + 8 || v49 >= v48;
    v58 = !v57;
    v59 = v49 < v51;
    v61 = v50 < v53 && v52 < v51;
    v62 = v52 < v54;
    v63 = v46 + 16;
    v65 = v528 + 12 < v46 + 16 && v26 + 12 < v54;
    if (v55 < 0)
    {
      v58 = 1;
    }

    v470 = v58;
    if (v55 < 0)
    {
      v61 = 1;
    }

    v473 = v61;
    v66 = v55 < 0 || v65;
    v475 = v66;
    v67 = v528 >= v46;
    v68 = v46;
    v421 = v46;
    v69 = v26 < v45 + 8;
    if (v528 < v46)
    {
      v70 = v59;
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    if (v67)
    {
      v62 = 0;
    }

    if (v55 < 0)
    {
      v69 = 1;
    }

    v469 = v69;
    if (v55 < 0)
    {
      v71 = 1;
    }

    else
    {
      v71 = v70;
    }

    v471 = v71;
    v72 = v55 < 0 || v62;
    v474 = v72;
    v73 = v528 < v56;
    if (v26 >= v45)
    {
      v73 = 0;
    }

    v74 = v55 < 0 || v73;
    v75 = v528 + 8;
    v76 = v50 < v63;
    if (v26 >= v45)
    {
      v76 = 0;
    }

    v472 = v76;
    v446 = v528 + 4;
    v478 = v53;
    v77 = v47 < v53;
    if (v26 >= v45)
    {
      v77 = 0;
    }

    v468 = v77;
    v484 = v45 + 16;
    v78 = v528 < v45 && v50 < v54;
    v79 = v47 < v486;
    if (v528 >= v45)
    {
      v79 = 0;
    }

    v438 = v79;
    v440 = v78;
    v80 = v528 < v48;
    if (v528 >= v45)
    {
      v80 = 0;
    }

    v81 = v511 + 20;
    if (v511 + 20 <= v32 + 1)
    {
      v81 = v32 + 1;
    }

    v467 = v81;
    v82 = v68 + 4;
    v83 = v45 + 4;
    if (v528 < v68 + 4 && v26 < v83)
    {
      v80 = 1;
    }

    v85 = v80 | v74;
    v86 = v536 + v542[0] * v509 + v511;
    v87 = v536 + v542[0] * v514 + v511;
    if (v528 < v486 && v75 < v83)
    {
      v85 = 1;
    }

    v89 = v528 >= v53 || v52 >= v83;
    v401 = v26 + 8;
    if (!v89)
    {
      v85 = 1;
    }

    if (v528 < v54 && v489 < v83)
    {
      v85 = 1;
    }

    v466 = v85;
    v91 = v63;
    v93 = v528 < v63 && v518 < v83;
    v465 = v93;
    v94 = v528 >= v86 + 4 || v536 >= v83;
    v480 = v87 + 4;
    v482 = v86 + 4;
    v95 = !v94;
    v96 = v528 >= v87 + 4 || v28 >= v83;
    v492 = v86 + 8;
    v97 = !v96;
    v415 = v97;
    v417 = v95;
    v494 = v534[0];
    v495 = v87 + 8;
    v515 = v86 + 12;
    v98 = v536 + 8;
    v99 = v528 >= v86 + 12 || v98 >= v83;
    v396 = v87 + 12;
    v100 = !v99;
    v464 = v100;
    v101 = v28 + 8;
    v102 = v528 >= v87 + 12 || v101 >= v83;
    v384 = v28 + 8;
    v385 = v536 + 8;
    v103 = !v102;
    v463 = v103;
    v104 = v86 + 16;
    v105 = v536 + 12;
    v106 = v528 >= v86 + 16 || v105 >= v83;
    v498 = v536 + 12;
    v107 = v87 + 16;
    v108 = !v106;
    v462 = v108;
    v109 = v28 + 12;
    v111 = v528 < v107 && v109 < v83;
    v461 = v111;
    v429 = v26 < v501;
    v113 = v26 < v486 && v75 < v82;
    v460 = v113;
    v115 = v26 < v478 && v26 + 8 < v82;
    v459 = v115;
    v117 = v26 < v484 && v489 < v82;
    v458 = v117;
    v383 = v91;
    v119 = v26 < v91 && v518 < v82;
    v457 = v119;
    v121 = v26 < v482 && v536 < v82;
    v413 = v121;
    v123 = v26 < v480 && v28 < v82;
    v419 = v123;
    v125 = v26 < v515 && v98 < v82;
    v456 = v125;
    v127 = v26 < v396 && v101 < v82;
    v455 = v127;
    v128 = v86 + 16;
    v130 = v26 < v104 && v105 < v82;
    v454 = v130;
    v131 = v87 + 16;
    v132 = v26 >= v107 || v109 >= v82;
    v133 = v28 + 12;
    v134 = !v132;
    v452 = v134;
    v136 = v446 < v484 && v489 < v48;
    v453 = v136;
    v138 = v446 < v91 && v518 < v48;
    v451 = v138;
    v139 = v528 < v86;
    if (v536 >= v48)
    {
      v139 = 0;
    }

    v406 = v139;
    v140 = v528 < v87;
    v503 = v528 < v87;
    if (v28 >= v48)
    {
      v140 = 0;
    }

    v403 = v140;
    v382 = v536 + 4;
    v142 = v446 < v492 && v536 + 4 < v48;
    v450 = v142;
    v381 = v28 + 4;
    v144 = v446 < v495 && v28 + 4 < v48;
    v449 = v144;
    v426 = v446 < v515;
    v423 = v446 < v396;
    v146 = v446 < v104 && v498 < v48;
    v448 = v146;
    v506 = v28 + 12;
    v148 = v446 < v131 && v133 < v48;
    v447 = v148;
    v149 = v436 < v478;
    v151 = v436 < v484 && v489 < v501;
    v445 = v151;
    v153 = v436 < v91 && v518 < v501;
    v154 = v26 < v86;
    if (v536 >= v501)
    {
      v154 = 0;
    }

    v389 = v154;
    v155 = v26 < v87;
    v156 = v28 < v501 && v26 < v87;
    v398 = v156;
    v158 = v436 < v492 && v382 < v501;
    v443 = v158;
    v444 = v153;
    v160 = v436 < v495 && v381 < v501;
    v411 = v436 < v515;
    v393 = v436 < v396;
    v162 = v436 < v104 && v498 < v501;
    v442 = v162;
    v163 = v87 + 16;
    v165 = v436 < v131 && v133 < v501;
    v502 = v165;
    v166 = v438;
    if (v534[0] < 0)
    {
      v166 = 1;
    }

    v432 = v166;
    v167 = v440;
    if (v534[0] < 0)
    {
      v167 = 1;
    }

    v441 = v167;
    v169 = v75 < v482 && v536 < v486;
    v391 = v169;
    v171 = v75 < v480 && v28 < v486;
    v399 = v171;
    v172 = v528 < v86;
    if (v382 >= v486)
    {
      v172 = 0;
    }

    v439 = v172;
    v173 = v528 < v87;
    if (v381 >= v486)
    {
      v173 = 0;
    }

    v437 = v173;
    v175 = v75 < v515 && v385 < v486;
    v435 = v175;
    v177 = v75 < v396 && v384 < v486;
    v487 = v177;
    v178 = v75 < v104;
    v179 = v528 < v86 + 8;
    if (v536 >= v45)
    {
      v179 = 0;
    }

    v410 = v179;
    v180 = v426;
    if (v536 >= v45)
    {
      v180 = 0;
    }

    v427 = v180;
    v181 = -v542[0];
    if (v536 >= v45)
    {
      v178 = 0;
    }

    v434 = v178;
    v182 = v75 < v163;
    v183 = v528 < v87 + 8;
    if (v28 >= v45)
    {
      v183 = 0;
    }

    v408 = v183;
    v184 = v423;
    if (v28 >= v45)
    {
      v184 = 0;
    }

    v424 = v184;
    if (v28 >= v45)
    {
      v182 = 0;
    }

    v433 = v182;
    v185 = v401 < v383;
    v186 = v26 < v421 && v429;
    if (v26 >= v421)
    {
      v149 = 0;
      v185 = 0;
    }

    if (v534[0] > 0)
    {
      v187 = 1;
    }

    else
    {
      v187 = v186;
    }

    v405 = v187;
    v188 = v534[0] > 0 || v149;
    if (v534[0] > 0)
    {
      v185 = 1;
    }

    v431 = v185;
    v190 = v401 < v482 && v536 < v478;
    v192 = v401 < v480 && v28 < v478;
    v386 = v192;
    v193 = v382 < v478 && v26 < v86;
    v430 = v193;
    v194 = v381 < v478 && v155;
    v428 = v194;
    v196 = v401 < v515 && v385 < v478;
    v198 = v401 < v396 && v384 < v478;
    v479 = v198;
    v199 = v401 < v104;
    v200 = v26 < v492;
    if (v536 >= v421)
    {
      v200 = 0;
    }

    v397 = v200;
    v201 = v411;
    if (v536 >= v421)
    {
      v201 = 0;
    }

    v412 = v201;
    if (v536 >= v421)
    {
      v199 = 0;
    }

    v425 = v199;
    v202 = v163;
    v203 = v401 < v163;
    v204 = v26 < v495;
    if (v28 >= v421)
    {
      v204 = 0;
    }

    v395 = v204;
    v205 = v393;
    if (v28 >= v421)
    {
      v205 = 0;
    }

    v409 = v205;
    if (v28 >= v421)
    {
      v203 = 0;
    }

    v422 = v203;
    v206 = v489 >= v482 || v536 >= v484;
    v207 = v534[0] | v542[0];
    v208 = !v206;
    v209 = v207 < 0;
    if (v207 < 0)
    {
      v210 = 1;
    }

    else
    {
      v210 = v417;
    }

    v211 = v406;
    if (v209)
    {
      v211 = 1;
    }

    v394 = v211;
    v212 = v391;
    if (v209)
    {
      v212 = 1;
    }

    v407 = v212;
    if (v209)
    {
      v213 = 1;
    }

    else
    {
      v213 = v208;
    }

    v418 = v213;
    v215 = v489 < v480 && v28 < v484;
    v216 = v415;
    if ((v534[0] | v522) < 0)
    {
      v216 = 1;
    }

    v387 = v216;
    v388 = v210;
    v217 = v403;
    if ((v534[0] | v522) < 0)
    {
      v217 = 1;
    }

    v390 = v217;
    v218 = v399;
    if ((v534[0] | v522) < 0)
    {
      v218 = 1;
    }

    v392 = v218;
    v219 = (v534[0] | v522) < 0 || v215;
    v416 = v219;
    v221 = v489 < v492 && v382 < v484;
    v404 = v221;
    v223 = v489 < v495 && v381 < v484;
    v224 = v528 < v86;
    if (v385 >= v484)
    {
      v224 = 0;
    }

    v400 = v224;
    v402 = v223;
    v225 = v503;
    if (v384 >= v484)
    {
      v225 = 0;
    }

    v507 = v225;
    v227 = v489 < v128 && v498 < v484;
    v504 = v227;
    v229 = v489 < v163 && v506 < v484;
    v490 = v229;
    v231 = v518 < v482 && v536 < v383;
    v232 = v413;
    if ((v542[0] | v524) < 0)
    {
      v232 = 1;
    }

    v414 = v232;
    v233 = v389;
    if ((v542[0] | v524) < 0)
    {
      v233 = 1;
    }

    v483 = v233;
    v234 = (v542[0] | v524) < 0 || v190;
    v485 = v234;
    v235 = (v542[0] | v524) < 0 || v231;
    v236 = v518 >= v480 || v28 >= v383;
    v237 = v524 | v522;
    v238 = !v236;
    if (v237 < 0)
    {
      v239 = 1;
    }

    else
    {
      v239 = v419;
    }

    if (v237 < 0)
    {
      v240 = 1;
    }

    else
    {
      v240 = v398;
    }

    if (v237 < 0)
    {
      v241 = 1;
    }

    else
    {
      v241 = v386;
    }

    if (v237 < 0)
    {
      v242 = 1;
    }

    else
    {
      v242 = v238;
    }

    v481 = v242;
    v244 = v518 < v492 && v382 < v383;
    v246 = v518 < v495 && v381 < v383;
    v247 = v385 < v383 && v26 < v86;
    v248 = v155;
    if (v384 >= v383)
    {
      v248 = 0;
    }

    v420 = v248;
    v250 = v518 < v128 && v498 < v383;
    v496 = v250;
    v57 = v518 >= v202;
    v251 = v467 - v511;
    v252 = v404 | v422 | v425 | v479 | v196 | v428 | v430 | v485 | v241 | v475 | v418 | v416 | v433 | v434 | v487 | v435 | v437 | v439 | v472 | v407 | v392 | v474 | v431 | v502 | v442 | v409 | v412 | v160 | v443 | v444 | v483 | v240 | v473 | v441 | v445 | v447 | v448 | v424 | v427 | v449 | v450 | v390 | v471 | v188 | v451 | v453 | v468 | v452 | (v454 || v455) | v470 | v432 | v394 | v456 | v395 | v397 | (v457 || v458 || v459) | v414 | v239 | v460 | v461 | v462 | v463 | v464 | v469 | v405 | v408 | v410 | v465 | v388 | v387 | v466;
    v512 = v523 + v528 - (v476 + v536);
    v253 = v542[0] - v534[0];
    v516 = v523 + v528 - v536;
    v510 = v522 - v534[0];
    v254 = v528 - (v476 + v536);
    v255 = v534[0] + v542[0];
    v256 = (v490 || v504 || v507 || v400 || v402) | v235 | v481;
    v257 = v528 - v536;
    v258 = v534[0] - v542[0];
    v499 = v528 + (v534[0] - v542[0]) * (v540->i32[0] - 1) - v536;
    v259 = v540->i32[1] * v500;
    v493 = v524 - v542[0];
    v508 = v251 - 17;
    v260 = ((v251 - 17) >> 2) + 1;
    v261 = (v477 >> 4) + 1;
    v262 = v496 | v420 | v247 | v246 | v244 | v256;
    v264 = !v57 && v506 < v383;
    v505 = v261 & 0xFFFFFFC;
    v497 = v260 & 0x7FFFFFFFFFFFFFF8;
    v488 = 4 * (v260 & 0x7FFFFFFFFFFFFFF8);
    v491 = v260;
    v519 = (v43 < 1712) | v264 | v262 | v252;
    v265 = (16 * v261) & 0xFFFFFFC0;
    while (1)
    {
      v266 = v253 * v42;
      v267 = v254 + v255 * v42;
      v268 = v257 + v258 * v42;
      v269 = v523 + -2 * v494 * v42;
      if ((((v23 | v25) | (v28 | v26)) & 3) != 0)
      {
        v270 = 0;
        if (v259 > 0)
        {
          goto LABEL_550;
        }

        goto LABEL_533;
      }

      if (v519)
      {
        break;
      }

      v271 = 0;
      do
      {
        v273 = v25[v271 / 0x10];
        v272 = v25[v271 / 0x10 + 1];
        v275 = v25[v271 / 0x10 + 2];
        v274 = v25[v271 / 0x10 + 3];
        v276 = v28[v271 / 0x10 + 1];
        v277 = v28[v271 / 0x10 + 2];
        v278 = v28[v271 / 0x10 + 3];
        v279 = &v23[v271 / 0x10];
        v280 = (v26 + v271);
        *v279 = v28[v271 / 0x10];
        v279[1] = v276;
        v279[2] = v277;
        v279[3] = v278;
        v280[2] = v275;
        v280[3] = v274;
        v271 += 64;
        *v280 = v273;
        v280[1] = v272;
      }

      while (v265 != v271);
      v270 = 16 * v505;
      if ((v477 >> 4) + 1 != v505)
      {
        goto LABEL_542;
      }

LABEL_543:
      if (v32 < v270)
      {
        v270 = v270;
        v259 = v521;
        v181 = v522;
        if (v270 < v521)
        {
          goto LABEL_550;
        }

        goto LABEL_533;
      }

      v287 = v270 & 0xFFFFFFF0;
      v259 = v521;
      v181 = v522;
      if (v508 <= 0x1B || (v499 + v266) < 0x20 || (v516 + v493 * v42) < 0x20 || v267 < 0x20 || v268 < 0x20 || v269 < 0x20)
      {
        v270 = v270 & 0xFFFFFFF0;
        do
        {
LABEL_548:
          v288 = *(v25 + v270);
          *(v23 + v270) = *(v28 + v270);
          *(v26 + v270) = v288;
          v270 += 4;
        }

        while (v270 <= v32);
        goto LABEL_549;
      }

      v270 = v287 + v488;
      v294 = v497;
      do
      {
        v295 = *(v25 + v287);
        v296 = *(v25 + v287 + 16);
        v297 = *(v28 + v287 + 16);
        v298 = (v23 + v287);
        *v298 = *(v28 + v287);
        v298[1] = v297;
        v299 = (v26 + v287);
        *v299 = v295;
        v299[1] = v296;
        v287 += 32;
        v294 -= 8;
      }

      while (v294);
      v181 = v522;
      if (v491 != v497)
      {
        goto LABEL_548;
      }

LABEL_549:
      v270 = v270;
      if (v270 < v521)
      {
LABEL_550:
        if (v270 + 1 > v33)
        {
          v289 = v270 + 1;
        }

        else
        {
          v289 = v33;
        }

        v290 = v289 - v270;
        if ((v289 - v270) < 8)
        {
          v291 = v270;
          goto LABEL_555;
        }

        if ((v512 + v266) < 0x20)
        {
          v291 = v270;
        }

        else if ((v516 + v510 * v42) < 0x20)
        {
          v291 = v270;
        }

        else if (v267 < 0x20)
        {
          v291 = v270;
        }

        else if (v268 < 0x20)
        {
          v291 = v270;
        }

        else if (v269 < 0x20)
        {
          v291 = v270;
        }

        else
        {
          if (v290 < 0x20)
          {
            v293 = 0;
            goto LABEL_578;
          }

          v293 = v290 & 0xFFFFFFFFFFFFFFE0;
          v300 = v270;
          v301 = v290 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v302 = *(v25 + v300);
            v303 = *(v25 + v300 + 16);
            v304 = *(v28 + v300 + 16);
            v305 = (v23 + v300);
            *v305 = *(v28 + v300);
            v305[1] = v304;
            v306 = (v26 + v300);
            *v306 = v302;
            v306[1] = v303;
            v300 += 32;
            v301 -= 32;
          }

          while (v301);
          v181 = v522;
          if (v290 == v293)
          {
            goto LABEL_533;
          }

          if ((v290 & 0x18) != 0)
          {
LABEL_578:
            v307 = v290 & 0xFFFFFFFFFFFFFFF8;
            v291 = (v290 & 0xFFFFFFFFFFFFFFF8) + v270;
            v308 = v25 + v270;
            v309 = v28 + v270;
            v310 = v23 + v270;
            v311 = v26 + v270;
            do
            {
              v312 = *&v308[v293];
              *&v310[v293] = *&v309[v293];
              *(v311 + v293) = v312;
              v293 += 8;
            }

            while (v307 != v293);
            v313 = v290 == v307;
            v181 = v522;
            if (v313)
            {
              goto LABEL_533;
            }

            goto LABEL_555;
          }

          v291 = v293 + v270;
          v181 = v522;
        }

        do
        {
LABEL_555:
          v292 = *(v25 + v291);
          *(v23 + v291) = *(v28 + v291);
          *(v26 + v291++) = v292;
        }

        while (v291 < v33);
      }

LABEL_533:
      ++v42;
      v25 = (v25 + v525);
      v28 = (v28 + v181);
      v23 = (v23 + v494);
      v26 += v524;
      if (v42 == v31)
      {
        goto LABEL_676;
      }
    }

    v270 = 0;
    do
    {
LABEL_542:
      v281 = *(v25 + v270);
      v282 = (v23 + v270);
      *v282 = *(v28 + v270);
      v283 = (v26 + v270);
      *v283 = v281;
      v284 = *(v25 + v270 + 4);
      v282[1] = *(v28 + v270 + 4);
      v283[1] = v284;
      v285 = *(v25 + v270 + 8);
      v282[2] = *(v28 + v270 + 8);
      v283[2] = v285;
      v286 = *(v25 + v270 + 12);
      v282[3] = *(v28 + v270 + 12);
      v283[3] = v286;
      v270 += 16;
    }

    while (v270 <= v43);
    goto LABEL_543;
  }

  v526 = vrev64_s32(*v540);
  sub_10022F0B4(v536, v542[0], v528, v534[0], &v526, ((v13 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3));
LABEL_678:
  if (v531 && atomic_fetch_add((v531 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v527);
  }

  v531 = 0;
  v528 = 0u;
  v529 = 0u;
  if (SDWORD1(v527) >= 1)
  {
    v377 = 0;
    v378 = v532;
    do
    {
      v378->i32[v377++] = 0;
    }

    while (v377 < SDWORD1(v527));
  }

  if (v533 != v534)
  {
    j__free(v533);
  }

  if (v539 && atomic_fetch_add((v539 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v535);
  }

  v539 = 0;
  v536 = 0u;
  v537 = 0u;
  if (SDWORD1(v535) >= 1)
  {
    v379 = 0;
    v380 = v540;
    do
    {
      v380->i32[v379++] = 0;
    }

    while (v379 < SDWORD1(v535));
  }

  if (v541 != v542)
  {
    j__free(v541);
  }

LABEL_19:
  if (v545)
  {
    sub_1002ACC1C(v544);
  }
}

void sub_10022F010(_Unwind_Exception *a1)
{
  sub_100006D14(&STACK[0x270]);
  sub_100006D14(v1 - 224);
  sub_1001D8BF4(v1 - 112);
  _Unwind_Resume(a1);
}

void sub_10022F060(_Unwind_Exception *a1)
{
  sub_1002A8124((v1 - 224));
  sub_1001D8BF4(v1 - 112);
  _Unwind_Resume(a1);
}

int32x4_t *sub_10022F0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unint64_t a6)
{
  v9 = *a5;
  v10 = *a5;
  result = v50;
  if (v9 * a6 >= 0x109)
  {
    operator new[]();
  }

  v12 = v10 - 1;
  if (v10 >= 1 && a6 != 0)
  {
    if (a6 > 7)
    {
      v24 = a6 - (a6 & 0xFFFFFFFFFFFFFFF8);
      if (a6 == (a6 & 0xFFFFFFFFFFFFFFF8))
      {
        v25 = v52;
        v26.i64[0] = 0x400000004;
        v26.i64[1] = 0x400000004;
        v27 = vdupq_n_s64(8uLL);
        do
        {
          v28 = vdupq_n_s64((v10 + ~v24) * a6);
          v29 = v25;
          v30 = a6 & 0xFFFFFFFFFFFFFFF8;
          v31 = xmmword_1003E0C50;
          v32 = xmmword_1003E3940;
          do
          {
            v33 = vuzp1q_s32(vaddq_s64(v28, v31), vaddq_s64(v28, v32));
            v29[-1] = v33;
            *v29 = vaddq_s32(v33, v26);
            v32 = vaddq_s64(v32, v27);
            v31 = vaddq_s64(v31, v27);
            v29 += 2;
            v30 -= 8;
          }

          while (v30);
          ++v24;
          v25 = (v25 + 4 * a6);
        }

        while (v24 != v10);
      }

      else
      {
        v34 = 0;
        v35 = v52;
        v36 = 4 * a6;
        v37 = &v50[8 * (a6 >> 3)];
        v38 = v12 * a6 + 8 * (a6 >> 3);
        v39.i64[0] = 0x400000004;
        v39.i64[1] = 0x400000004;
        v40 = vdupq_n_s64(8uLL);
        do
        {
          v41 = vdupq_n_s64((v10 + ~v34) * a6);
          v42 = a6 & 0xFFFFFFFFFFFFFFF8;
          v43 = v35;
          v44 = xmmword_1003E0C50;
          v45 = xmmword_1003E3940;
          do
          {
            v46 = vuzp1q_s32(vaddq_s64(v41, v44), vaddq_s64(v41, v45));
            v43[-1] = v46;
            *v43 = vaddq_s32(v46, v39);
            v45 = vaddq_s64(v45, v40);
            v44 = vaddq_s64(v44, v40);
            v43 += 2;
            v42 -= 8;
          }

          while (v42);
          v47 = v38;
          v48 = v37;
          v49 = a6 - (a6 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            *v48++ = v47++;
            --v49;
          }

          while (v49);
          ++v34;
          v35 = (v35 + v36);
          v37 = (v37 + v36);
          v38 -= a6;
        }

        while (v34 != v10);
      }
    }

    else
    {
      v20 = -v10;
      v21 = &v51;
      do
      {
        v23 = v12 * a6;
        *(v21 - 3) = v12 * a6;
        if (a6 != 1)
        {
          *(v21 - 2) = v23 + 1;
          if (a6 != 2)
          {
            *(v21 - 1) = v23 + 2;
            if (a6 != 3)
            {
              *v21 = v23 + 3;
              if (a6 != 4)
              {
                v21[1] = v23 + 4;
                if (a6 != 5)
                {
                  v21[2] = v23 + 5;
                  if (a6 != 6)
                  {
                    v21[3] = v23 + 6;
                  }
                }
              }
            }
          }
        }

        --v12;
        v21 += a6;
      }

      while (!__CFADD__(v20++, 1));
    }
  }

  v14 = a5[1];
  a5[1] = v14 - 1;
  if (v14)
  {
    v15 = ((v9 + 1) / 2 * a6);
    if (v15 < 1)
    {
      a5[1] = -1;
    }

    else
    {
      do
      {
        for (i = 0; i != v15; ++i)
        {
          v17 = v50[i];
          v18 = *(a1 + i);
          *(a3 + i) = *(a1 + v17);
          *(a3 + v17) = v18;
        }

        a1 += a2;
        a3 += a4;
        v19 = a5[1];
        a5[1] = v19 - 1;
      }

      while (v19);
    }
  }

  return result;
}

void sub_10022F3D8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1002ACE7C(v52, &off_100473E98);
  if (*(a1 + 8) == *(a4 + 8))
  {
    v42 = 0uLL;
    qmemcpy(sub_1002A80E0(&v42, 30), "_src.getObj() != _dst.getObj()", 30);
    sub_1002A8980(-215, &v42, "repeat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 862);
  }

  if (sub_10027377C(a1, -1) >= 3)
  {
    v42 = 0uLL;
    *sub_1002A80E0(&v42, 16) = *"_src.dims() <= 2";
    sub_1002A8980(-215, &v42, "repeat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 863);
  }

  if (a2 < 1 || a3 <= 0)
  {
    v42 = 0uLL;
    *sub_1002A80E0(&v42, 16) = *"ny > 0 && nx > 0";
    sub_1002A8980(-215, &v42, "repeat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 864);
  }

  sub_100271154(a1, -1, &v50);
  v9 = v50;
  v8 = v51;
  v10 = sub_100271A88(a1, -1);
  sub_100275A84(a4, (v8 * a2), (v9 * a3), v10, -1, 0, 0);
  if (sub_100271148(a1) == 0x10000)
  {
    v11 = *(a1 + 8);
    v12 = *v11;
    v13 = *(v11 + 16);
    v42 = *v11;
    v43 = v13;
    v44 = *(v11 + 32);
    v14 = *(v11 + 56);
    v45 = *(v11 + 48);
    v46 = v14;
    v47 = &v42 + 8;
    v48 = v49;
    v49[0] = 0;
    v49[1] = 0;
    if (v14)
    {
      atomic_fetch_add((v14 + 20), 1u);
      if (*(v11 + 4) <= 2)
      {
LABEL_11:
        v15 = *(v11 + 72);
        v16 = v48;
        *v48 = *v15;
        v16[1] = v15[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v12) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v42) = 0;
    sub_100269B58(&v42, v11);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v42);
  }

LABEL_15:
  if (sub_100271148(a4) == 0x10000)
  {
    v17 = *(a4 + 8);
    v18 = *v17;
    v19 = *(v17 + 16);
    v34 = *v17;
    v35 = v19;
    v36 = *(v17 + 32);
    v20 = *(v17 + 56);
    v37 = *(v17 + 48);
    v38 = v20;
    v39 = &v34 + 2;
    v40 = v41;
    v41[0] = 0;
    v41[1] = 0;
    if (v20)
    {
      atomic_fetch_add((v20 + 20), 1u);
      if (*(v17 + 4) <= 2)
      {
LABEL_18:
        v21 = *(v17 + 72);
        v22 = v40;
        *v40 = *v21;
        v22[1] = v21[1];
        goto LABEL_22;
      }
    }

    else if (SDWORD1(v18) <= 2)
    {
      goto LABEL_18;
    }

    DWORD1(v34) = 0;
    sub_100269B58(&v34, v17);
  }

  else
  {
    sub_1002703C0(a4, 0xFFFFFFFFLL, &v34);
  }

LABEL_22:
  v23 = *v39;
  v24 = v39[1];
  if (SDWORD1(v42) >= 1)
  {
    v25 = *(v48 + 2 * DWORD1(v42) - 2);
    LODWORD(i) = v51;
    v27 = v50 * v25;
    v50 *= v25;
    v28 = v24 * v25;
    if (v51 >= 1)
    {
      goto LABEL_24;
    }

LABEL_32:
    LODWORD(i) = 0;
    if (v23 <= 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  LODWORD(i) = v51;
  v27 = 0;
  v50 = 0;
  v28 = 0;
  if (v51 < 1)
  {
    goto LABEL_32;
  }

LABEL_24:
  if (v28 >= 1)
  {
    for (i = 0; i < v51; ++i)
    {
      v29 = 0;
      do
      {
        memcpy((v35 + *v40 * i + v29), (v43 + *v48 * i), v27);
        v27 = v50;
        v29 += v50;
      }

      while (v29 < v28);
    }
  }

  if (i < v23)
  {
LABEL_33:
    i = i;
    do
    {
      memcpy((v35 + *v40 * i), (v35 + *v40 * (i - v51)), v28);
      ++i;
    }

    while (v23 != i);
  }

LABEL_35:
  if (v38 && atomic_fetch_add((v38 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v34);
  }

  v38 = 0;
  v35 = 0u;
  v36 = 0u;
  if (SDWORD1(v34) >= 1)
  {
    v30 = 0;
    v31 = v39;
    do
    {
      v31[v30++] = 0;
    }

    while (v30 < SDWORD1(v34));
  }

  if (v40 != v41)
  {
    j__free(v40);
  }

  if (v46 && atomic_fetch_add((v46 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v42);
  }

  v46 = 0;
  v43 = 0u;
  v44 = 0u;
  if (SDWORD1(v42) >= 1)
  {
    v32 = 0;
    v33 = v47;
    do
    {
      *&v33[4 * v32++] = 0;
    }

    while (v32 < SDWORD1(v42));
  }

  if (v48 != v49)
  {
    j__free(v48);
  }

  if (v52[2])
  {
    sub_1002ACC1C(v52);
  }
}

void sub_10022F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002A8124(va);
  sub_1001D8BF4(v20 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_10022F95C(uint64_t a1, int a2, int a3)
{
  v3 = a1;
  if (a1 < a2)
  {
    return v3;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (a3 == 1)
    {
      if (a1 >= 0)
      {
        return (a2 - 1);
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_27;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (a2 <= 0)
      {
        sub_1001FA81C(v7, "len > 0");
        sub_1002A8980(-215, v7, "borderInterpolate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 936);
      }

      if ((a1 & 0x80000000) != 0)
      {
        v3 = (~(a1 - a2) + a1 + (a1 - a2 + 1) % a2);
      }

      if (v3 < a2)
      {
        return v3;
      }

      return (v3 % a2);
    }

    if (a3 != 4)
    {
LABEL_27:
      v7[0] = 0;
      v7[1] = 0;
      qmemcpy(sub_1002A80E0(v7, 31), "Unknown/unsupported border type", 31);
      sub_1002A8980(-5, v7, "borderInterpolate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 945);
    }
  }

  v5 = a3 == 4;
  if (a2 != 1)
  {
    do
    {
      if (v3 < 0)
      {
        v3 = (~v3 + v5);
      }

      else
      {
        v3 = (2 * a2 + ~(v3 + v5));
      }
    }

    while (v3 >= a2);
    return v3;
  }

  return 0;
}

void sub_10022FB6C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, double *a8)
{
  sub_1002ACE7C(v201, &off_100473EB8);
  if ((a4 | a3 | a5 | a6) < 0)
  {
    v181 = 0;
    v182 = 0;
    qmemcpy(sub_1002A80E0(&v181, 50), "top >= 0 && bottom >= 0 && left >= 0 && right >= 0", 50);
    sub_1002A8980(-215, &v181, "copyMakeBorder", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 1181);
  }

  if (sub_100271148(a1) != 0x10000)
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v193);
    goto LABEL_10;
  }

  v16 = *(a1 + 8);
  v17 = *v16;
  v18 = *(v16 + 16);
  v193 = *v16;
  *__src = v18;
  v195 = *(v16 + 32);
  v19 = *(v16 + 56);
  v196 = *(v16 + 48);
  v197 = v19;
  v198 = &v193 + 2;
  v199 = v200;
  v200[1] = 0;
  v200[0] = 0;
  if (!v19)
  {
    if (SDWORD1(v17) <= 2)
    {
      goto LABEL_6;
    }

LABEL_9:
    DWORD1(v193) = 0;
    sub_100269B58(&v193, v16);
    goto LABEL_10;
  }

  atomic_fetch_add((v19 + 20), 1u);
  if (*(v16 + 4) > 2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v20 = *(v16 + 72);
  v21 = v199;
  *v199 = *v20;
  v21[1] = v20[1];
LABEL_10:
  v22 = v193;
  if ((a7 & 0x10) == 0 && (v193 & 0x8000) != 0)
  {
    v176 = a7;
    v179 = a8;
    v23 = a5;
    v181 = 0;
    v203 = 0;
    sub_10026BBAC(&v193, &v181, &v203);
    if (SHIDWORD(v203) >= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = HIDWORD(v203);
    }

    if (HIDWORD(v181) - (HIDWORD(v203) + DWORD2(v193)) >= a4)
    {
      v25 = a4;
    }

    else
    {
      v25 = HIDWORD(v181) - (HIDWORD(v203) + DWORD2(v193));
    }

    if (v203 >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v203;
    }

    if (v181 - (v203 + HIDWORD(v193)) >= a6)
    {
      v27 = a6;
    }

    else
    {
      v27 = v181 - (v203 + HIDWORD(v193));
    }

    sub_10026BD20(&v193, v24, v25, v26, v27);
    a3 -= v24;
    a4 -= v25;
    a6 -= v27;
    a5 = v23 - v26;
    a8 = v179;
    a7 = v176;
  }

  sub_100275A84(a2, (a3 + a4 + DWORD2(v193)), (a5 + a6 + HIDWORD(v193)), v22 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) == 0x10000)
  {
    v28 = *(a2 + 8);
    v29 = *v28;
    v30 = *(v28 + 16);
    v185 = *v28;
    v186 = v30;
    v187 = *(v28 + 32);
    v31 = *(v28 + 56);
    v188 = *(v28 + 48);
    v189 = v31;
    v190 = &v185 + 2;
    v191 = v192;
    v192[1] = 0;
    v192[0] = 0;
    if (v31)
    {
      atomic_fetch_add((v31 + 20), 1u);
      if (*(v28 + 4) <= 2)
      {
LABEL_28:
        v32 = *(v28 + 72);
        v33 = v191;
        *v191 = *v32;
        v33[1] = v32[1];
        goto LABEL_32;
      }
    }

    else if (SDWORD1(v29) <= 2)
    {
      goto LABEL_28;
    }

    DWORD1(v185) = 0;
    sub_100269B58(&v185, v28);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v185);
  }

LABEL_32:
  if (!(a5 | a6 | a4 | a3))
  {
    if (__src[0] != v186 || v200[0] != v192[0])
    {
      LODWORD(v181) = 33619968;
      v182 = &v185;
      v183[0] = 0;
      sub_10022B754(&v193, &v181);
    }

    goto LABEL_156;
  }

  v34 = a7 & 0xFFFFFFEF;
  v167 = a3;
  if (!v34)
  {
    v39 = (v193 >> 3) & 0x1FF;
    v181 = v183;
    v182 = v39 + 1;
    if (v39 >= 0x88)
    {
      operator new[]();
    }

    v57 = v39 + 1;
    if (v39 >= 4)
    {
      v58 = *a8;
      if (*a8 != a8[1] || v58 != a8[2] || v58 != a8[3])
      {
        v204 = 0;
        v203 = 0;
        qmemcpy(sub_1002A80E0(&v203, 68), "value[0] == value[1] && value[0] == value[2] && value[0] == value[3]", 68);
        sub_1002A8980(-215, &v203, "copyMakeBorder", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 1229);
      }

      v57 = 1;
    }

    sub_10026F720(a8, v183, (v193 & 7 | (8 * v57)) - 8, v39 + 1);
    v121 = v190[1];
    if (SDWORD1(v193) < 1)
    {
      v122 = 0;
    }

    else
    {
      v122 = *(v199 + 2 * DWORD1(v193) - 2);
    }

    v123 = __src[0];
    v178 = *v198;
    v180 = v200[0];
    v162 = v198[1];
    __dsta = v186;
    v124 = v192[0];
    v169 = *v190;
    v125 = v181;
    v126 = (v122 * v121);
    v203 = v205;
    v204 = v126;
    if (v122 * v121 >= 0x409)
    {
      operator new[]();
    }

    if (v121 < 1 || v122 < 1)
    {
LABEL_135:
      v165 = v178 + a3;
      v173 = a3;
      if (v178 >= 1)
      {
        v141 = v121 - (v162 + a5);
        v142 = &__dsta[v124 * a3];
        v143 = (v122 * a5);
        v144 = v122 * v162;
        v145 = (v122 * v141);
        v146 = v144;
        v147 = v143 + v144;
        v148 = v178;
        do
        {
          if (v123 != &v142[v143])
          {
            memcpy(&v142[v143], v123, v146);
          }

          memcpy(v142, v205, v143);
          memcpy(&v142[v147], v205, v145);
          v123 += v180;
          v142 += v124;
          --v148;
        }

        while (v148);
      }

      v149 = (v169 - v165);
      if (v167 >= 1)
      {
        v150 = v167;
        v151 = __dsta;
        do
        {
          memcpy(v151, v205, v126);
          v151 += v124;
          --v150;
        }

        while (v150);
      }

      if (v149 >= 1)
      {
        v152 = &__dsta[v124 * (v173 + v178)];
        do
        {
          memcpy(v152, v205, v126);
          v152 += v124;
          --v149;
        }

        while (v149);
      }

      if (v203 != v205 && v203 != 0)
      {
        operator delete[]();
      }

      if (v181 != v183 && v181 != 0)
      {
        goto LABEL_155;
      }

      goto LABEL_156;
    }

    v127 = 0;
    v128 = v122 & 0x7FFFFFF8;
    v129 = &v206;
    v130 = v205;
    while (1)
    {
      v131 = 0;
      if (v122 >= 8 && &v205[v127 * v122 - v125] >= 0x20)
      {
        if (v122 < 0x20)
        {
          v132 = 0;
LABEL_130:
          v137 = (v125 + v132);
          v138 = &v130[v132];
          v139 = v132 - v128;
          do
          {
            v140 = *v137++;
            *v138++ = v140;
            v139 += 8;
          }

          while (v139);
          v131 = v122 & 0x7FFFFFF8;
          if (v128 == v122)
          {
            goto LABEL_121;
          }

          goto LABEL_133;
        }

        v133 = v122 & 0x7FFFFFE0;
        v134 = v129;
        v135 = (v125 + 16);
        do
        {
          v136 = *v135;
          *(v134 - 1) = *(v135 - 1);
          *v134 = v136;
          v135 += 2;
          v134 += 4;
          v133 -= 32;
        }

        while (v133);
        if ((v122 & 0x7FFFFFE0) == v122)
        {
          goto LABEL_121;
        }

        v132 = v122 & 0x7FFFFFE0;
        v131 = v132;
        if ((v122 & 0x18) != 0)
        {
          goto LABEL_130;
        }
      }

      do
      {
LABEL_133:
        v130[v131] = *(v125 + v131);
        ++v131;
      }

      while (v122 != v131);
LABEL_121:
      ++v127;
      v129 = (v129 + v122);
      v130 += v122;
      if (v127 == v121)
      {
        goto LABEL_135;
      }
    }
  }

  v172 = a5;
  __dst = v200[0];
  v35 = __src[0];
  v36 = v198[1];
  v37 = v192[0];
  v166 = v186;
  v163 = v190[1];
  if (SDWORD1(v193) < 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v199 + 2 * DWORD1(v193) - 2);
  }

  v177 = *v198;
  v160 = *v190;
  if ((((LOBYTE(__src[0]) | v186 | v38 | LOBYTE(v200[0])) | LOBYTE(v192[0])) & 3) != 0)
  {
    v40 = v38;
  }

  else
  {
    v40 = (v38 / 4);
  }

  v41 = v40 * (v163 - v36);
  v181 = v183;
  v182 = v41;
  v161 = ((LOBYTE(__src[0]) | v186 | v38 | LOBYTE(v200[0])) | LOBYTE(v192[0])) & 3;
  if (v41 >= 0x109)
  {
    operator new[]();
  }

  if (v172 >= 1)
  {
    if (v40 > 0)
    {
      v42 = 0;
      v43 = 0;
      v44 = &v184;
      while (1)
      {
        v45 = sub_10022F95C((v43 - v172), v36, v34) * v40;
        if (v40 >= 8)
        {
          v47 = vdupq_n_s32(v45);
          v48 = v40 & 0x7FFFFFF8;
          v49 = v44;
          v50 = xmmword_1003E3950;
          v51.i64[0] = 0x400000004;
          v51.i64[1] = 0x400000004;
          v52.i64[0] = 0x800000008;
          v52.i64[1] = 0x800000008;
          do
          {
            v53 = vaddq_s32(v47, v50);
            v49[-1] = v53;
            *v49 = vaddq_s32(v53, v51);
            v50 = vaddq_s32(v50, v52);
            v49 += 2;
            v48 -= 8;
          }

          while (v48);
          v46 = v40 & 0x7FFFFFF8;
          if (v46 == v40)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v46 = 0;
        }

        v54 = v40 - v46;
        v55 = v45 + v46;
        v56 = v183 + v46 + v42;
        do
        {
          *v56++ = v55++;
          --v54;
        }

        while (v54);
LABEL_50:
        ++v43;
        v44 = (v44 + 4 * v40);
        v42 += v40;
        if (v43 == v172)
        {
          goto LABEL_67;
        }
      }
    }

    v59 = -v172;
    do
    {
      sub_10022F95C(v59, v36, v34);
      v60 = __CFADD__(v59, 1);
      v59 = (v59 + 1);
    }

    while (!v60);
  }

LABEL_67:
  __n = (v163 - (v36 + v172));
  if (__n >= 1)
  {
    if (v40 > 0)
    {
      v61 = 0;
      v62 = v172 * v40;
      v63 = (&v183[2] + 4 * v62);
      while (1)
      {
        v64 = sub_10022F95C((v36 + v61), v36, v34) * v40;
        if (v40 >= 8)
        {
          v66 = vdupq_n_s32(v64);
          v67 = v40 & 0x7FFFFFF8;
          v68 = v63;
          v69 = xmmword_1003E3950;
          v70.i64[0] = 0x400000004;
          v70.i64[1] = 0x400000004;
          v71.i64[0] = 0x800000008;
          v71.i64[1] = 0x800000008;
          do
          {
            v72 = vaddq_s32(v66, v69);
            v68[-1] = v72;
            *v68 = vaddq_s32(v72, v70);
            v69 = vaddq_s32(v69, v71);
            v68 += 2;
            v67 -= 8;
          }

          while (v67);
          v65 = v40 & 0x7FFFFFF8;
          if (v65 == v40)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v65 = 0;
        }

        v73 = v40 - v65;
        v74 = v64 + v65;
        v75 = v183 + v65 + v62;
        do
        {
          *v75++ = v74++;
          --v73;
        }

        while (v73);
LABEL_70:
        ++v61;
        v63 = (v63 + 4 * v40);
        v62 += v40;
        if (v61 == __n)
        {
          goto LABEL_81;
        }
      }
    }

    v76 = v36;
    do
    {
      sub_10022F95C(v76, v36, v34);
      v76 = (v76 + 1);
    }

    while (v163 - v172 != v76);
  }

LABEL_81:
  v159 = v40 * v163;
  v77 = v37 * v167;
  v164 = &v166[v77];
  v168 = 2 * (v161 == 0);
  if (v177 >= 1)
  {
    v78 = v40 * v36;
    v79 = (v40 * v172);
    v80 = (v79 << v168);
    v81 = (v40 * __n);
    v82 = &v164[v80];
    v83 = v79;
    v84 = v78;
    if (v161)
    {
      v85 = 0;
      v86 = v77 + v80;
      v87 = &v166[v86 - v79];
      v88 = &v166[v78 + v86];
      do
      {
        if (v82 != v35)
        {
          memcpy(v82, v35, v84);
        }

        v89 = v183;
        v90 = v87;
        v91 = v79;
        if (v79 >= 1)
        {
          do
          {
            v92 = *v89++;
            *v90++ = v35[v92];
            --v91;
          }

          while (v91);
        }

        v93 = v183 + v79;
        v94 = v88;
        v95 = v81;
        if (v81 >= 1)
        {
          do
          {
            v96 = *v93++;
            *v94++ = v35[v96];
            --v95;
          }

          while (v95);
        }

        ++v85;
        v82 += v37;
        v35 = &__dst[v35];
        v87 += v37;
        v88 += v37;
      }

      while (v85 != v177);
    }

    else
    {
      v97 = 0;
      __na = 4 * v78;
      v98 = v77 + v80;
      v99 = &v166[v98 - 4 * v79];
      v100 = &v166[4 * v78 + v98];
      do
      {
        v101 = v34;
        if (v82 != v35)
        {
          v102 = v83;
          memcpy(v82, v35, __na);
          v83 = v102;
        }

        v103 = v183;
        v104 = v99;
        v105 = v79;
        if (v83 >= 1)
        {
          do
          {
            v106 = *v103++;
            *v104 = *&v35[4 * v106];
            v104 += 4;
            --v105;
          }

          while (v105);
        }

        v107 = v183 + v79;
        v108 = v100;
        v109 = v81;
        v34 = v101;
        if (v81 >= 1)
        {
          do
          {
            v110 = *v107++;
            *v108 = *&v35[4 * v110];
            v108 += 4;
            --v109;
          }

          while (v109);
        }

        ++v97;
        v82 += v37;
        v35 = &__dst[v35];
        v99 += v37;
        v100 += v37;
      }

      while (v97 != v177);
    }
  }

  v111 = v159 << v168;
  if (v167 >= 1)
  {
    v112 = v166;
    v113 = -v167;
    v114 = v167;
    do
    {
      v115 = sub_10022F95C(v113, v177, v34);
      memcpy(v112, &v164[v37 * v115], v111);
      v112 += v37;
      v113 = (v113 + 1);
      --v114;
    }

    while (v114);
  }

  v116 = (v160 - (v177 + v167));
  if (v116 >= 1)
  {
    v117 = &v166[v37 * (v167 + v177)];
    v118 = v177;
    do
    {
      v119 = sub_10022F95C(v118, v177, v34);
      memcpy(v117, &v164[v37 * v119], v111);
      v117 += v37;
      v118 = (v118 + 1);
      --v116;
    }

    while (v116);
  }

  if (v181 != v183 && v181 != 0)
  {
LABEL_155:
    operator delete[]();
  }

LABEL_156:
  if (v189 && atomic_fetch_add((v189 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v185);
  }

  v189 = 0;
  v186 = 0u;
  v187 = 0u;
  if (SDWORD1(v185) >= 1)
  {
    v155 = 0;
    v156 = v190;
    do
    {
      v156[v155++] = 0;
    }

    while (v155 < SDWORD1(v185));
  }

  if (v191 != v192)
  {
    j__free(v191);
  }

  if (v197 && atomic_fetch_add((v197 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v193);
  }

  v197 = 0;
  *__src = 0u;
  v195 = 0u;
  if (SDWORD1(v193) >= 1)
  {
    v157 = 0;
    v158 = v198;
    do
    {
      v158[v157++] = 0;
    }

    while (v157 < SDWORD1(v193));
  }

  if (v199 != v200)
  {
    j__free(v199);
  }

  if (v202)
  {
    sub_1002ACC1C(v201);
  }
}

void sub_100230A14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100230AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a25 != a13 && a25 != 0)
  {
    JUMPOUT(0x100230B1CLL);
  }

  JUMPOUT(0x100230B28);
}

void sub_100230B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1 || !a2 || *(a1 + 2) << 16 != 1111752704 || *(a2 + 2) != 16964)
  {
    sub_10026AD20(a1, 0, 1, 0, &v42);
    sub_10026AD20(v4, 0, 1, 0, v37);
    if (((LOBYTE(v37[0]) ^ v42) & 7) == 0)
    {
      v12 = v46;
      v13 = *(v46 - 1);
      v14 = v39;
      if (v13 == *(v39 - 1))
      {
        if (v13 == 2)
        {
          if (*v46 != *v39 || v46[1] != v39[1])
          {
            goto LABEL_16;
          }

LABEL_17:
          if (v5)
          {
            if (*v5 == 144)
            {
              if (*(v5 + 88))
              {
                LODWORD(v5) = sub_1001FF438(v5);
                if (!v4)
                {
                  goto LABEL_21;
                }

LABEL_28:
                if (*v4 == 144 && *(v4 + 88))
                {
                  LODWORD(v4) = sub_1001FF438(v4);
                  if (v5 | v4)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  LODWORD(v4) = 0;
                  if (v5)
                  {
                    goto LABEL_22;
                  }
                }

                goto LABEL_33;
              }

              LODWORD(v5) = 0;
              if (v4)
              {
                goto LABEL_28;
              }

LABEL_21:
              if (v5 | v4)
              {
LABEL_22:
                if (!v5 && (v42 & 0xFF8) != 0 || !v4 && (v37[0] & 0xFF8) != 0)
                {
                  v49 = 0uLL;
                  qmemcpy(sub_1002A80E0(&v49, 72), "(coi1 != 0 || src.channels() == 1) && (coi2 != 0 || dst.channels() == 1)", 72);
                  sub_1002A8980(-215, &v49, "cvCopy", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 1290);
                }

                *&v49 = vadd_s32(vmax_s32(__PAIR64__(v4, v5), 0x100000001), -1);
                sub_1002001E0(&v42, 1uLL, v37, 1uLL, &v49, 1uLL);
LABEL_48:
                if (v38 && atomic_fetch_add((v38 + 20), 0xFFFFFFFF) == 1)
                {
                  sub_100269BC8(v37);
                }

                v38 = 0;
                memset(&v37[1], 0, 32);
                if (SDWORD1(v37[0]) >= 1)
                {
                  v17 = 0;
                  v18 = v39;
                  do
                  {
                    v18[v17++] = 0;
                  }

                  while (v17 < SDWORD1(v37[0]));
                }

                if (v40 != &v41)
                {
                  j__free(v40);
                }

                if (v45 && atomic_fetch_add((v45 + 20), 0xFFFFFFFF) == 1)
                {
                  sub_100269BC8(&v42);
                }

                v45 = 0;
                v43 = 0u;
                v44 = 0u;
                if (SDWORD1(v42) >= 1)
                {
                  v19 = 0;
                  v20 = v46;
                  do
                  {
                    v20[v19++] = 0;
                  }

                  while (v19 < SDWORD1(v42));
                }

                if (v47 != &v48)
                {
                  j__free(v47);
                }

                return;
              }

LABEL_33:
              if (((LOWORD(v37[0]) ^ v42) & 0xFF8) != 0)
              {
                v49 = 0uLL;
                qmemcpy(sub_1002A80E0(&v49, 32), "src.channels() == dst.channels()", 32);
                sub_1002A8980(-215, &v49, "cvCopy", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 1297);
              }

              if (a3)
              {
                v34 = 33619968;
                v35 = v37;
                v36 = 0;
                sub_10026AD20(a3, 0, 0, 0, &v49);
                v32 = &v49;
                v33 = 0;
                v31 = 16842752;
                sub_10022C248(&v42, &v34, &v31);
                if (v52 && atomic_fetch_add((v52 + 20), 0xFFFFFFFF) == 1)
                {
                  sub_100269BC8(&v49);
                }

                v52 = 0;
                v50 = 0u;
                v51 = 0u;
                if (SDWORD1(v49) >= 1)
                {
                  v15 = 0;
                  v16 = v53;
                  do
                  {
                    *(v16 + 4 * v15++) = 0;
                  }

                  while (v15 < SDWORD1(v49));
                }

                if (v54 != &v55)
                {
                  j__free(v54);
                }
              }

              else
              {
                LODWORD(v49) = 33619968;
                *(&v49 + 1) = v37;
                *&v50 = 0;
                sub_10022B754(&v42, &v49);
              }

              goto LABEL_48;
            }

            LODWORD(v5) = 0;
          }

          if (v4)
          {
            goto LABEL_28;
          }

          goto LABEL_21;
        }

        if (v13 < 1)
        {
          goto LABEL_17;
        }

        while (1)
        {
          v29 = *v12++;
          v28 = v29;
          v30 = *v14++;
          if (v28 != v30)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_17;
          }
        }
      }
    }

LABEL_16:
    v49 = 0uLL;
    qmemcpy(sub_1002A80E0(&v49, 50), "src.depth() == dst.depth() && src.size == dst.size", 50);
    sub_1002A8980(-215, &v49, "cvCopy", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 1279);
  }

  if (a3)
  {
    v42 = 0uLL;
    v6 = sub_1002A80E0(&v42, 12);
    *(v6 + 8) = 807419197;
    *v6 = *"maskarr == 0";
    sub_1002A8980(-215, &v42, "cvCopy", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/copy.cpp", 1245);
  }

  v7 = *(a1 + 4);
  *(a2 + 4) = v7;
  memcpy((a2 + 52), (a1 + 52), 4 * v7);
  *(v4 + 44) = *(v5 + 44);
  sub_1002365BC(*(v4 + 24));
  v8 = *(v4 + 40);
  v9 = *(v4 + 32);
  if (*(*(v5 + 24) + 104) >= 3 * v8)
  {
    j__free(v9);
    v10 = *(v5 + 40);
    *(v4 + 40) = v10;
    *(v4 + 32) = 0;
    v9 = sub_1001D90AC(8 * v10);
    *(v4 + 32) = v9;
    v8 = *(v4 + 40);
  }

  bzero(v9, 8 * v8);
  v11 = sub_1001FCD40(v5, &v42);
  if (v11)
  {
    while (1)
    {
      v21 = *(v4 + 24);
      v22 = *(v21 + 96);
      *&v37[0] = v22;
      if (v22)
      {
        *(v21 + 96) = v22[1];
        *v22 &= 0x3FFFFFFu;
        ++*(v21 + 104);
      }

      else
      {
        sub_100236464(v21, 0, v37);
        v22 = *&v37[0];
        v21 = *(v4 + 24);
      }

      v23 = (*(v4 + 40) - 1) & *v11;
      memcpy(v22, v11, *(v21 + 44));
      v24 = *(v4 + 32);
      v22[1] = *(v24 + 8 * v23);
      *(v24 + 8 * v23) = v22;
      v11 = *(*(&v42 + 1) + 8);
      if (!v11)
      {
        v25 = *(v42 + 40);
        if (v43 + 1 >= v25)
        {
          return;
        }

        v26 = v43 + 1;
        v27 = ~v43 + v25;
        while (1)
        {
          v11 = *(*(v42 + 32) + 8 * v26);
          if (v11)
          {
            break;
          }

          ++v26;
          if (!--v27)
          {
            return;
          }
        }

        LODWORD(v43) = v26;
      }

      *(&v42 + 1) = v11;
    }
  }
}