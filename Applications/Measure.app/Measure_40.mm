uint64_t sub_1002A73CC(const __int16 *a1, uint64_t a2, double *a3, int a4, int a5, double a6, double a7, double a8, double a9, float64x2_t a10, float64x2_t a11)
{
  v11 = *a3;
  if (!a2)
  {
    v14 = a5 * a4;
    v15 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v16 = 0;
      v17 = 0.0;
      if (v14 <= 0)
      {
        goto LABEL_29;
      }

LABEL_21:
      v47 = v16;
      v48 = (v14 + ~v16);
      if (v48)
      {
        v49 = v48 + 1;
        v50 = (v48 + 1) & 0x1FFFFFFFELL;
        v51 = v50 + v47;
        v52 = &a1[v47 + 1];
        v53 = v50;
        do
        {
          LOWORD(a8) = *(v52 - 1);
          LOWORD(a9) = *v52;
          a8 = *&a8 * *&a8;
          a9 = *&a9 * *&a9;
          v17 = v17 + a8 + a9;
          v52 += 2;
          v53 -= 2;
        }

        while (v53);
        if (v49 == v50)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v51 = v47;
      }

      v54 = &a1[v51];
      do
      {
        v55 = *v54++;
        v17 = v17 + v55 * v55;
        LODWORD(v51) = v51 + 1;
      }

      while (v14 > v51);
LABEL_29:
      v11 = v11 + v17;
      goto LABEL_30;
    }

    if (v15 > 0x1B)
    {
      v19 = (v15 >> 2) + 1;
      v18 = 4 * (v19 & 0x3FFFFFF8);
      v17 = 0.0;
      v20 = v19 & 0x3FFFFFF8;
      v21 = a1;
      do
      {
        v57 = vld4q_s16(v21);
        v21 += 32;
        v22 = vmovl_u16(*v57.val[0].i8);
        v23.i64[0] = v22.u32[0];
        v23.i64[1] = v22.u32[1];
        v24 = vcvtq_f64_u64(v23);
        v23.i64[0] = v22.u32[2];
        v23.i64[1] = v22.u32[3];
        v25 = vcvtq_f64_u64(v23);
        v26 = vmovl_high_u16(v57.val[0]);
        v23.i64[0] = v26.u32[0];
        v23.i64[1] = v26.u32[1];
        v27 = vcvtq_f64_u64(v23);
        v23.i64[0] = v26.u32[2];
        v23.i64[1] = v26.u32[3];
        v28 = vcvtq_f64_u64(v23);
        v29 = vmovl_high_u16(v57.val[1]);
        v23.i64[0] = v29.u32[2];
        v23.i64[1] = v29.u32[3];
        v30 = vcvtq_f64_u64(v23);
        v23.i64[0] = v29.u32[0];
        v23.i64[1] = v29.u32[1];
        v31 = vcvtq_f64_u64(v23);
        v32 = vmovl_u16(*v57.val[1].i8);
        v23.i64[0] = v32.u32[2];
        v23.i64[1] = v32.u32[3];
        v33 = vcvtq_f64_u64(v23);
        v23.i64[0] = v32.u32[0];
        v23.i64[1] = v32.u32[1];
        v34 = vcvtq_f64_u64(v23);
        v35 = vmovl_high_u16(v57.val[2]);
        v23.i64[0] = v35.u32[2];
        v23.i64[1] = v35.u32[3];
        v36 = vcvtq_f64_u64(v23);
        v23.i64[0] = v35.u32[0];
        v23.i64[1] = v35.u32[1];
        v37 = vcvtq_f64_u64(v23);
        v38 = vmovl_u16(*v57.val[2].i8);
        v23.i64[0] = v38.u32[2];
        v23.i64[1] = v38.u32[3];
        v39 = vcvtq_f64_u64(v23);
        v23.i64[0] = v38.u32[0];
        v23.i64[1] = v38.u32[1];
        v40 = vcvtq_f64_u64(v23);
        v41 = vmovl_u16(*v57.val[3].i8);
        v23.i64[0] = v41.u32[0];
        v23.i64[1] = v41.u32[1];
        v42 = vcvtq_f64_u64(v23);
        v23.i64[0] = v41.u32[2];
        v23.i64[1] = v41.u32[3];
        v43 = vcvtq_f64_u64(v23);
        v57.val[0] = vmovl_high_u16(v57.val[3]);
        v23.i64[0] = v57.val[0].u32[0];
        v23.i64[1] = v57.val[0].u32[1];
        v57.val[1] = vcvtq_f64_u64(v23);
        v23.i64[0] = v57.val[0].u32[2];
        v23.i64[1] = v57.val[0].u32[3];
        v57.val[0] = vcvtq_f64_u64(v23);
        v44 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v30, v30), v28, v28), v36, v36), v57.val[0], v57.val[0]);
        a8 = v44.f64[1];
        v45 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v31, v31), v27, v27), v37, v37), v57.val[1], v57.val[1]);
        a9 = v45.f64[1];
        a11 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v33, v33), v25, v25), v39, v39), v43, v43);
        a10 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34, v34), v24, v24), v40, v40), v42, v42);
        v17 = v17 + a10.f64[0] + a10.f64[1] + a11.f64[0] + a11.f64[1] + v45.f64[0] + v45.f64[1] + v44.f64[0] + v44.f64[1];
        v20 -= 8;
      }

      while (v20);
      if (v19 == (v19 & 0x3FFFFFF8))
      {
LABEL_20:
        v16 = (v15 & 0xFFFFFFFC) + 4;
        if (v16 >= v14)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0.0;
    }

    v46 = &a1[v18 + 2];
    do
    {
      LOWORD(a8) = *(v46 - 2);
      LOWORD(a9) = *(v46 - 1);
      LOWORD(a10.f64[0]) = *v46;
      a10.f64[0] = *&a10.f64[0];
      LOWORD(a11.f64[0]) = v46[1];
      a11.f64[0] = *&a11.f64[0];
      a9 = *&a9 * *&a9;
      a8 = a9 + *&a8 * *&a8 + a10.f64[0] * a10.f64[0] + a11.f64[0] * a11.f64[0];
      v17 = v17 + a8;
      v18 += 4;
      v46 += 4;
    }

    while (v18 <= v15);
    goto LABEL_20;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a2 + i))
      {
        for (j = 0; j != a5; ++j)
        {
          LOWORD(a7) = a1[j];
          a7 = *&a7;
          v11 = v11 + a7 * a7;
        }
      }

      a1 += a5;
    }
  }

LABEL_30:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A7694(const __int16 *a1, uint64_t a2, double *a3, int a4, int a5, double a6, double a7, double a8, double a9, float64x2_t a10, float64x2_t a11)
{
  v11 = *a3;
  if (!a2)
  {
    v14 = a5 * a4;
    v15 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v16 = 0;
      v17 = 0.0;
      if (v14 <= 0)
      {
        goto LABEL_29;
      }

LABEL_21:
      v50 = v16;
      v51 = (v14 + ~v16);
      if (v51)
      {
        v52 = v51 + 1;
        v53 = (v51 + 1) & 0x1FFFFFFFELL;
        v54 = v53 + v50;
        v55 = &a1[v50 + 1];
        v56 = v53;
        do
        {
          LOWORD(a8) = *(v55 - 1);
          v57 = vmovl_s16(*&a8).u32[0];
          LOWORD(a9) = *v55;
          v58 = vmovl_s16(*&a9).u32[0];
          a8 = v57 * v57;
          a9 = v58 * v58;
          v17 = v17 + a8 + a9;
          v55 += 2;
          v56 -= 2;
        }

        while (v56);
        if (v52 == v53)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v54 = v50;
      }

      v59 = &a1[v54];
      do
      {
        v60 = *v59++;
        v17 = v17 + v60 * v60;
        LODWORD(v54) = v54 + 1;
      }

      while (v14 > v54);
LABEL_29:
      v11 = v11 + v17;
      goto LABEL_30;
    }

    if (v15 > 0x1B)
    {
      v19 = (v15 >> 2) + 1;
      v18 = 4 * (v19 & 0x3FFFFFF8);
      v17 = 0.0;
      v20 = v19 & 0x3FFFFFF8;
      v21 = a1;
      do
      {
        v62 = vld4q_s16(v21);
        v21 += 32;
        v22 = vmovl_s16(*v62.val[0].i8);
        v23.i64[0] = v22.i32[0];
        v23.i64[1] = v22.i32[1];
        v24 = vcvtq_f64_s64(v23);
        v23.i64[0] = v22.i32[2];
        v23.i64[1] = v22.i32[3];
        v25 = vcvtq_f64_s64(v23);
        v26 = vmovl_high_s16(v62.val[0]);
        v23.i64[0] = v26.i32[0];
        v23.i64[1] = v26.i32[1];
        v27 = vcvtq_f64_s64(v23);
        v23.i64[0] = v26.i32[2];
        v23.i64[1] = v26.i32[3];
        v28 = vcvtq_f64_s64(v23);
        v29 = vmovl_high_s16(v62.val[1]);
        v23.i64[0] = v29.i32[2];
        v23.i64[1] = v29.i32[3];
        v30 = vcvtq_f64_s64(v23);
        v23.i64[0] = v29.i32[0];
        v23.i64[1] = v29.i32[1];
        v31 = vcvtq_f64_s64(v23);
        v32 = vmovl_s16(*v62.val[1].i8);
        v23.i64[0] = v32.i32[2];
        v23.i64[1] = v32.i32[3];
        v33 = vcvtq_f64_s64(v23);
        v23.i64[0] = v32.i32[0];
        v23.i64[1] = v32.i32[1];
        v34 = vcvtq_f64_s64(v23);
        v35 = vmovl_high_s16(v62.val[2]);
        v23.i64[0] = v35.i32[2];
        v23.i64[1] = v35.i32[3];
        v36 = vcvtq_f64_s64(v23);
        v23.i64[0] = v35.i32[0];
        v23.i64[1] = v35.i32[1];
        v37 = vcvtq_f64_s64(v23);
        v38 = vmovl_s16(*v62.val[2].i8);
        v23.i64[0] = v38.i32[2];
        v23.i64[1] = v38.i32[3];
        v39 = vcvtq_f64_s64(v23);
        v23.i64[0] = v38.i32[0];
        v23.i64[1] = v38.i32[1];
        v40 = vcvtq_f64_s64(v23);
        v41 = vmovl_s16(*v62.val[3].i8);
        v23.i64[0] = v41.i32[0];
        v23.i64[1] = v41.i32[1];
        v42 = vcvtq_f64_s64(v23);
        v23.i64[0] = v41.i32[2];
        v23.i64[1] = v41.i32[3];
        v43 = vcvtq_f64_s64(v23);
        v62.val[0] = vmovl_high_s16(v62.val[3]);
        v23.i64[0] = v62.val[0].i32[0];
        v23.i64[1] = v62.val[0].i32[1];
        v62.val[1] = vcvtq_f64_s64(v23);
        v23.i64[0] = v62.val[0].i32[2];
        v23.i64[1] = v62.val[0].i32[3];
        v62.val[0] = vcvtq_f64_s64(v23);
        v44 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v30, v30), v28, v28), v36, v36), v62.val[0], v62.val[0]);
        a8 = v44.f64[1];
        v45 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v31, v31), v27, v27), v37, v37), v62.val[1], v62.val[1]);
        a9 = v45.f64[1];
        a11 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v33, v33), v25, v25), v39, v39), v43, v43);
        a10 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34, v34), v24, v24), v40, v40), v42, v42);
        v17 = v17 + a10.f64[0] + a10.f64[1] + a11.f64[0] + a11.f64[1] + v45.f64[0] + v45.f64[1] + v44.f64[0] + v44.f64[1];
        v20 -= 8;
      }

      while (v20);
      if (v19 == (v19 & 0x3FFFFFF8))
      {
LABEL_20:
        v16 = (v15 & 0xFFFFFFFC) + 4;
        if (v16 >= v14)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0.0;
    }

    v46 = &a1[v18 + 2];
    do
    {
      LOWORD(a8) = *(v46 - 2);
      v47 = vmovl_s16(*&a8).u32[0];
      LOWORD(a9) = *(v46 - 1);
      v48 = vmovl_s16(*&a9).u32[0];
      LOWORD(a10.f64[0]) = *v46;
      a10.f64[0] = vmovl_s16(*&a10.f64[0]).i32[0];
      LOWORD(a11.f64[0]) = v46[1];
      *&a11.f64[0] = vmovl_s16(*&a11.f64[0]).i32[0];
      v49 = v48 * v48 + v47 * v47;
      a9 = *&a11.f64[0];
      a8 = v49 + a10.f64[0] * a10.f64[0] + a9 * a9;
      v17 = v17 + a8;
      v18 += 4;
      v46 += 4;
    }

    while (v18 <= v15);
    goto LABEL_20;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a2 + i))
      {
        for (j = 0; j != a5; ++j)
        {
          LOWORD(a7) = a1[j];
          a7 = vmovl_s16(*&a7).i32[0];
          v11 = v11 + a7 * a7;
        }
      }

      a1 += a5;
    }
  }

LABEL_30:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A7994(uint64_t a1, unsigned __int8 *a2, double *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_42;
      }

LABEL_35:
      v49 = v11;
      v50 = (v9 + ~v11);
      if (v50 > 6)
      {
        v52 = v50 + 1;
        v53 = (v50 + 1) & 0x1FFFFFFF8;
        v51 = v53 + v49;
        v54 = a1 + 4 * v49 + 16;
        v55 = v53;
        do
        {
          v56 = *(v54 - 16);
          v57.i64[0] = v56;
          v57.i64[1] = SDWORD1(v56);
          v58 = vcvtq_f64_s64(v57);
          v57.i64[0] = SDWORD2(v56);
          v57.i64[1] = SHIDWORD(v56);
          v59 = vcvtq_f64_s64(v57);
          v57.i64[0] = *v54;
          v57.i64[1] = HIDWORD(*v54);
          v60 = vcvtq_f64_s64(v57);
          v57.i64[0] = *(v54 + 8);
          v57.i64[1] = HIDWORD(*v54);
          v61 = vcvtq_f64_s64(v57);
          v62 = vmulq_f64(v59, v59);
          v63 = vmulq_f64(v58, v58);
          v64 = vmulq_f64(v61, v61);
          v65 = vmulq_f64(v60, v60);
          v12 = v12 + v63.f64[0] + v63.f64[1] + v62.f64[0] + v62.f64[1] + v65.f64[0] + v65.f64[1] + v64.f64[0] + v64.f64[1];
          v54 += 32;
          v55 -= 8;
        }

        while (v55);
        if (v52 == v53)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v51 = v49;
      }

      v66 = (a1 + 4 * v51);
      do
      {
        v67 = *v66++;
        v12 = v12 + v67 * v67;
        LODWORD(v51) = v51 + 1;
      }

      while (v9 > v51);
LABEL_42:
      v5 = v5 + v12;
      goto LABEL_43;
    }

    if (v10 > 0xB)
    {
      v31 = (v10 >> 2) + 1;
      v13 = 4 * (v31 & 0x3FFFFFFC);
      v32 = (a1 + 32);
      v12 = 0.0;
      v33 = v31 & 0x3FFFFFFC;
      do
      {
        v34 = v32 - 8;
        v69 = vld4_f32(v34);
        v70 = vld4_f32(v32);
        v35.i64[0] = v69.val[0].i32[0];
        v35.i64[1] = v69.val[0].i32[1];
        v36 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[0].i32[0];
        v35.i64[1] = v70.val[0].i32[1];
        v37 = vcvtq_f64_s64(v35);
        v35.i64[0] = v69.val[1].i32[0];
        v35.i64[1] = v69.val[1].i32[1];
        v38 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[1].i32[0];
        v35.i64[1] = v70.val[1].i32[1];
        v39 = vcvtq_f64_s64(v35);
        v35.i64[0] = v69.val[2].i32[0];
        v35.i64[1] = v69.val[2].i32[1];
        v40 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[2].i32[0];
        v35.i64[1] = v70.val[2].i32[1];
        v41 = vcvtq_f64_s64(v35);
        v35.i64[0] = v69.val[3].i32[0];
        v35.i64[1] = v69.val[3].i32[1];
        *v69.val[0].f32 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[3].i32[0];
        v35.i64[1] = v70.val[3].i32[1];
        *v69.val[1].f32 = vcvtq_f64_s64(v35);
        *v69.val[2].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v38, v38), v36, v36), v40, v40), *v69.val[0].f32, *v69.val[0].f32);
        *v69.val[3].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v39, v39), v37, v37), v41, v41), *v69.val[1].f32, *v69.val[1].f32);
        v12 = v12 + *&v69.val[2] + v42 + *&v69.val[3] + v43;
        v32 += 16;
        v33 -= 4;
      }

      while (v33);
      if (v31 == (v31 & 0x3FFFFFFC))
      {
LABEL_34:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v44 = (a1 + 4 * v13 + 8);
    do
    {
      v45 = *(v44 - 2);
      v46 = *(v44 - 1);
      v47 = *v44;
      v48 = v44[1];
      v44 += 4;
      v12 = v12 + v46 * v46 + v45 * v45 + v47 * v47 + v48 * v48;
      v13 += 4;
    }

    while (v13 <= v10);
    goto LABEL_34;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v14 = 0;
      v15 = a1 + 16;
      v16 = 4 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFF8;
          v18 = v15;
          do
          {
            v19 = *(v18 - 16);
            v20.i64[0] = v19;
            v20.i64[1] = SDWORD1(v19);
            v21 = vcvtq_f64_s64(v20);
            v20.i64[0] = SDWORD2(v19);
            v20.i64[1] = SHIDWORD(v19);
            v22 = vcvtq_f64_s64(v20);
            v20.i64[0] = *v18;
            v20.i64[1] = HIDWORD(*v18);
            v23 = vcvtq_f64_s64(v20);
            v20.i64[0] = *(v18 + 8);
            v20.i64[1] = HIDWORD(*v18);
            v24 = vcvtq_f64_s64(v20);
            v25 = vmulq_f64(v22, v22);
            v26 = vmulq_f64(v21, v21);
            v27 = vmulq_f64(v24, v24);
            v28 = vmulq_f64(v23, v23);
            v5 = v5 + v26.f64[0] + v26.f64[1] + v25.f64[0] + v25.f64[1] + v28.f64[0] + v28.f64[1] + v27.f64[0] + v27.f64[1];
            v18 += 32;
            v17 -= 8;
          }

          while (v17);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v29 = a5 & 0x7FFFFFF8;
            do
            {
              v30 = *(a1 + 4 * v29);
              v5 = v5 + v30 * v30;
              ++v29;
            }

            while (a5 != v29);
          }
        }

        ++v14;
        v15 += v16;
        a1 += v16;
      }

      while (v14 != a4);
    }

    else
    {
      v7 = (a1 + 12);
      do
      {
        if (*a2++)
        {
          v5 = v5 + *(v7 - 3) * *(v7 - 3);
          if (a5 != 1)
          {
            v5 = v5 + *(v7 - 2) * *(v7 - 2);
            if (a5 != 2)
            {
              v5 = v5 + *(v7 - 1) * *(v7 - 1);
              if (a5 != 3)
              {
                v5 = v5 + *v7 * *v7;
                if (a5 != 4)
                {
                  v5 = v5 + v7[1] * v7[1];
                  if (a5 != 5)
                  {
                    v5 = v5 + v7[2] * v7[2];
                    if (a5 != 6)
                    {
                      v5 = v5 + v7[3] * v7[3];
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_43:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A7D78(uint64_t a1, uint64_t a2, double *a3, int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v8 = a5 * a4;
    v9 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v10 = 0;
      v11 = 0.0;
      if (v8 <= 0)
      {
        goto LABEL_29;
      }

LABEL_21:
      v24 = v10;
      v25 = (v8 + ~v10);
      if (v25)
      {
        v26 = v25 + 1;
        v27 = (v25 + 1) & 0x1FFFFFFFELL;
        v28 = v27 + v24;
        v29 = (a1 + 8 * v24 + 8);
        v30 = v27;
        do
        {
          v11 = v11 + *(v29 - 1) * *(v29 - 1) + *v29 * *v29;
          v29 += 2;
          v30 -= 2;
        }

        while (v30);
        if (v26 == v27)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v28 = v24;
      }

      v31 = (a1 + 8 * v28);
      do
      {
        v32 = *v31++;
        v11 = v11 + v32 * v32;
        LODWORD(v28) = v28 + 1;
      }

      while (v8 > v28);
LABEL_29:
      v5 = v5 + v11;
      goto LABEL_30;
    }

    if (v9 > 0xB)
    {
      v13 = (v9 >> 2) + 1;
      v12 = 4 * (v13 & 0x3FFFFFFC);
      v14 = (a1 + 64);
      v11 = 0.0;
      v15 = v13 & 0x3FFFFFFC;
      do
      {
        v16 = v14 - 8;
        v34 = vld4q_f64(v16);
        v35 = vld4q_f64(v14);
        v17 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34.val[1], v34.val[1]), v34.val[0], v34.val[0]), v34.val[2], v34.val[2]), v34.val[3], v34.val[3]);
        v18 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v35.val[1], v35.val[1]), v35.val[0], v35.val[0]), v35.val[2], v35.val[2]), v35.val[3], v35.val[3]);
        v11 = v11 + v17.f64[0] + v17.f64[1] + v18.f64[0] + v18.f64[1];
        v14 += 16;
        v15 -= 4;
      }

      while (v15);
      if (v13 == (v13 & 0x3FFFFFFC))
      {
LABEL_20:
        v10 = (v9 & 0xFFFFFFFC) + 4;
        if (v10 >= v8)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0.0;
    }

    v19 = (a1 + 8 * v12 + 16);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v23 = v19[1];
      v19 += 4;
      v11 = v11 + v21 * v21 + v20 * v20 + v22 * v22 + v23 * v23;
      v12 += 4;
    }

    while (v12 <= v9);
    goto LABEL_20;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a2 + i))
      {
        v7 = 0;
        do
        {
          v5 = v5 + *(a1 + v7) * *(a1 + v7);
          v7 += 8;
        }

        while (8 * a5 != v7);
      }

      a1 += 8 * a5;
    }
  }

LABEL_30:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A7F44(uint64_t a1, int a2)
{
  sub_1002ACE7C(v23, &off_100475538);
  v4 = (a2 - 16);
  if (a2 >= 16)
  {
    v7 = 0;
    v6 = 0uLL;
    do
    {
      v6 = vpadalq_u16(v6, vpaddlq_u8(vcntq_s8(*(a1 + v7))));
      v7 += 16;
    }

    while (v7 <= v4);
    v5 = (v4 & 0xFFFFFFF0) + 16;
  }

  else
  {
    v5 = 0;
    v6 = 0uLL;
  }

  v8 = vpadd_s32(*&vpaddq_s32(v6, v6), *&vextq_s8(v6, v6, 8uLL)).u32[0];
  if (v5 <= a2 - 4)
  {
    v9 = (a1 + v5 + 1);
    do
    {
      v8 = v8 + byte_1003E5068[*(v9 - 1)] + byte_1003E5068[*v9] + byte_1003E5068[v9[1]] + byte_1003E5068[v9[2]];
      v5 += 4;
      v9 += 4;
    }

    while (a2 - 4 >= v5);
  }

  if (v5 < a2)
  {
    v10 = v5;
    v11 = (~v5 + a2);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 1;
      v14 = (v11 + 1) & 0x1FFFFFFFELL;
      v15 = v14 + v10;
      v16 = (v10 + a1 + 1);
      v17 = v14;
      do
      {
        v18 = *(v16 - 1);
        v19 = *v16;
        v16 += 2;
        LODWORD(v8) = v8 + byte_1003E5068[v18];
        v12 += byte_1003E5068[v19];
        v17 -= 2;
      }

      while (v17);
      v8 = (v12 + v8);
      if (v13 == v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = v10;
    }

    v20 = (a1 + v15);
    do
    {
      v21 = *v20++;
      v8 = v8 + byte_1003E5068[v21];
      LODWORD(v15) = v15 + 1;
    }

    while (v15 < a2);
  }

LABEL_18:
  if (v23[2])
  {
    sub_1002ACC1C(v23);
  }

  return v8;
}

uint64_t sub_1002A80E0(void *a1, uint64_t a2)
{
  v4 = sub_1001D8FE8((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  *v4++ = 1;
  *a1 = v4;
  a1[1] = a2;
  *(v4 + a2) = 0;
  return *a1;
}

void sub_1002A8124(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  a1[1] = 0;
  if (v1)
  {
    if (atomic_fetch_add((v1 - 4), 0xFFFFFFFF) == 1)
    {
      j__free((v1 - 4));
    }
  }
}

uint64_t *sub_1002A814C()
{
  if (!qword_1004BD7F8)
  {
    operator new();
  }

  return qword_1004BD7F8;
}

uint64_t sub_1002A833C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int a6)
{
  *a1 = off_100475568;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v7 = *a3;
  v8 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v8;
  if (v7)
  {
    atomic_fetch_add((v7 - 4), 1u);
  }

  v9 = *a4;
  v10 = a4[1];
  *(a1 + 48) = *a4;
  *(a1 + 56) = v10;
  if (v9)
  {
    atomic_fetch_add((v9 - 4), 1u);
  }

  v11 = *a5;
  v12 = a5[1];
  *(a1 + 64) = *a5;
  *(a1 + 72) = v12;
  if (v11)
  {
    atomic_fetch_add((v11 - 4), 1u);
  }

  *(a1 + 80) = a6;
  sub_1002A8448(a1);
  return a1;
}

void sub_1002A8400(_Unwind_Exception *a1)
{
  v6 = v5;
  sub_1002A8124(v6);
  sub_1002A8124(v4);
  sub_1002A8124(v3);
  sub_1002A8124(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_1002A8448(uint64_t *a1)
{
  if (a1[7])
  {
    v2 = a1[8];
    if (!v2)
    {
      v2 = "";
    }

    v3 = a1[4];
    if (!v3)
    {
      v3 = "";
    }

    sub_1002A8688(&v9, "%s:%d: error: (%d) %s in function %s\n", v2, *(a1 + 20), 0, *(a1 + 6), v3);
    if (&v9 != a1 + 1)
    {
      sub_1002A8124(a1 + 1);
      v4 = v9;
      if (v9)
      {
        atomic_fetch_add((v9 - 4), 1u);
        v4 = v9;
      }

      v5 = v10;
      a1[1] = v4;
      a1[2] = v5;
    }
  }

  else
  {
    v6 = a1[8];
    if (!v6)
    {
      v6 = "";
    }

    sub_1002A8688(&v9, "%s:%d: error: (%d) %s\n", v6, *(a1 + 20), 0, *(a1 + 6));
    if (&v9 != a1 + 1)
    {
      sub_1002A8124(a1 + 1);
      v7 = v9;
      if (v9)
      {
        atomic_fetch_add((v9 - 4), 1u);
        v7 = v9;
      }

      v8 = v10;
      a1[1] = v7;
      a1[2] = v8;
    }
  }

  sub_1002A8124(&v9);
}

void sub_1002A85B8(uint64_t a1)
{
  *a1 = off_100475568;
  sub_1002A8124((a1 + 64));
  sub_1002A8124((a1 + 48));
  sub_1002A8124((a1 + 32));
  sub_1002A8124((a1 + 8));

  std::exception::~exception(a1);
}

void sub_1002A8638(uint64_t a1)
{
  sub_1002A85B8(a1);

  operator delete();
}

const char *sub_1002A8670(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return "";
  }
}

uint64_t sub_1002A8688@<X0>(uint64_t *__return_ptr a1@<X8>, char *__format@<X0>, ...)
{
  va_start(va, __format);
  v4 = 1024;
  v17 = v19;
  v18 = 1024;
  va_copy(v16, va);
  result = vsnprintf(v19, 0x400uLL, __format, va);
  if ((result & 0x80000000) != 0)
  {
LABEL_26:
    v15[0] = 0;
    v15[1] = 0;
    qmemcpy(sub_1002A80E0(v15, 44), "len >= 0 && Check format string for errors", 44);
    sub_1002A8980(-215, v15, "format", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 809);
  }

  v6 = 0x40000000000;
  while (result >= v4)
  {
    v7 = (result + 1);
    v8 = v18;
    if (v18 >= v7)
    {
      v18 = (result + 1);
    }

    else
    {
      v9 = v17;
      if (result >= 0x400)
      {
        operator new[]();
      }

      v17 = v19;
      v18 = (result + 1);
      if (v8 && v19 != v9)
      {
        for (i = 0; i != v8; ++i)
        {
          v17[i] = v9[i];
        }
      }

      do
      {
        v17[v8++] = 0;
      }

      while (v7 != v8);
      if (v9 != v19)
      {
        if (v9)
        {
          operator delete[]();
        }
      }
    }

    va_copy(v16, va);
    v4 = v18;
    v6 = v18 << 32;
    result = vsnprintf(v17, v18, __format, va);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_26;
    }
  }

  v17[(v6 - 0x100000000) >> 32] = 0;
  v11 = v17;
  *a1 = 0;
  a1[1] = 0;
  if (result && v11)
  {
    v12 = result;
    v13 = sub_1002A80E0(a1, result);
    result = memcpy(v13, v11, v12);
    v11 = v17;
  }

  if (v11 != v19 && v11 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_1002A88B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1002A8918()
{
  result = *&qword_1004BD800;
  if (*&qword_1004BD800 == 0.0)
  {
    mach_timebase_info(&info);
    LODWORD(v2) = info.numer;
    LODWORD(v1) = info.denom;
    result = v1 * 1000000000.0 / v2;
    qword_1004BD800 = *&result;
  }

  return result;
}

void sub_1002A8980(int a1, uint64_t *a2, char *__s, char *a4, int a5)
{
  v17[0] = 0;
  v17[1] = 0;
  if (__s)
  {
    v10 = strlen(__s);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1002A80E0(v17, v10);
      memcpy(v12, __s, v11);
    }
  }

  v16[0] = 0;
  v16[1] = 0;
  if (a4)
  {
    v13 = strlen(a4);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1002A80E0(v16, v13);
      memcpy(v15, a4, v14);
    }
  }

  sub_1002A833C(v18, a1, a2, v17, v16, a5);
  sub_1002A8AA4(v18);
}

void sub_1002A8A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002A8AA4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = *(v2 + 24);
  if (off_1004BD938)
  {
    if (*(v3 + 48))
    {
      v15 = *(v3 + 48);
    }

    else
    {
      v15 = "";
    }

    if (*(v3 + 32))
    {
      v16 = *(v3 + 32);
    }

    else
    {
      v16 = "";
    }

    if (*(v3 + 64))
    {
      v17 = *(v3 + 64);
    }

    else
    {
      v17 = "";
    }

    off_1004BD938(v4, v15, v16, v17, *(v3 + 80), qword_1004BD940, v1);
    if (byte_1004BD928[0] != 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = sub_1002A8C3C(v4);
    v11 = *(v3 + 32);
    v12 = "";
    if (!v11)
    {
      v11 = "";
    }

    v13 = *(v3 + 48);
    if (!v13)
    {
      v13 = "";
    }

    if (*(v3 + 56))
    {
      v14 = v13;
    }

    else
    {
      v14 = "unknown function";
    }

    if (*(v3 + 64))
    {
      v12 = *(v3 + 64);
    }

    sub_1002A8A74(v19, 4096, "OpenCV Error: %s (%s) in %s, file %s, line %d", v6, v7, v8, v9, v10, v5, v11, v14, v12, *(v3 + 80));
    fprintf(__stderrp, "%s\n", v19);
    fflush(__stderrp);
    if (byte_1004BD928[0] != 1)
    {
LABEL_24:
      exception = __cxa_allocate_exception(0x58uLL);
      sub_1002A91B8(exception, v3);
    }
  }

  MEMORY[0] = 0;
  goto LABEL_24;
}

const char *sub_1002A8C3C(int a1)
{
  v2 = a1 + 219;
  result = "No Error";
  switch(v2)
  {
    case 0:
      result = "OpenGL API call";
      break;
    case 1:
      result = "No OpenGL support";
      break;
    case 2:
      result = "Gpu API call";
      break;
    case 3:
      result = "No CUDA support";
      break;
    case 4:
      result = "Assertion failed";
      break;
    case 5:
      result = "Memory block has been corrupted";
      break;
    case 6:
      result = "The function/feature is not implemented";
      break;
    case 7:
      result = "Parsing error";
      break;
    case 8:
      result = "One of arguments' values is out of range";
      break;
    case 9:
      result = "Unsupported format or combination of formats";
      break;
    case 10:
      result = "Sizes of input arguments do not match";
      break;
    case 11:
      result = "Bad type of mask argument";
      break;
    case 12:
      result = "Bad parameter of type CvPoint";
      break;
    case 13:
      result = "Bad flag (parameter or structure field)";
      break;
    case 14:
      result = "Formats of input arguments do not match";
      break;
    case 15:
      result = "Requested object was not found";
      break;
    case 16:
      result = "Inplace operation is not supported";
      break;
    case 17:
      result = "Division by zero occurred";
      break;
    case 18:
      result = "Incorrect size of input array";
      break;
    case 192:
      result = "Null pointer";
      break;
    case 195:
      result = "Input COI is not supported";
      break;
    case 202:
      result = "Input image depth is not supported by function";
      break;
    case 204:
      result = "Bad number of channels";
      break;
    case 206:
      result = "Image step is wrong";
      break;
    case 211:
      result = "Autotrace call";
      break;
    case 212:
      result = "Iterations do not converge";
      break;
    case 214:
      result = "Bad argument";
      break;
    case 215:
      result = "Insufficient memory";
      break;
    case 216:
      result = "Internal error";
      break;
    case 217:
      result = "Unspecified error";
      break;
    case 218:
      result = "Backtrace";
      break;
    case 219:
      return result;
    default:
      v4 = "error";
      if (a1 >= 0)
      {
        v4 = "status";
      }

      sprintf(byte_1004BD808, "Unknown %s code %d", v4, a1);
      result = byte_1004BD808;
      break;
  }

  return result;
}

uint64_t sub_1002A91B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *result = off_100475568;
  *(result + 8) = v2;
  *(result + 16) = v3;
  if (v2)
  {
    atomic_fetch_add((v2 - 4), 1u);
  }

  *(result + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(result + 32) = v4;
  *(result + 40) = v5;
  if (v4)
  {
    atomic_fetch_add((v4 - 4), 1u);
  }

  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  *(result + 48) = v6;
  *(result + 56) = v7;
  if (v6)
  {
    atomic_fetch_add((v6 - 4), 1u);
  }

  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  *(result + 64) = v8;
  *(result + 72) = v9;
  if (v8)
  {
    atomic_fetch_add((v8 - 4), 1u);
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_1002A9248(int a1, char *__s, char *a3, char *a4, int a5)
{
  v21[0] = 0;
  v21[1] = 0;
  if (a3)
  {
    v10 = strlen(a3);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1002A80E0(v21, v10);
      memcpy(v12, a3, v11);
    }
  }

  v20[0] = 0;
  v20[1] = 0;
  if (__s)
  {
    v13 = strlen(__s);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1002A80E0(v20, v13);
      memcpy(v15, __s, v14);
    }
  }

  v19[0] = 0;
  v19[1] = 0;
  if (a4)
  {
    v16 = strlen(a4);
    if (v16)
    {
      v17 = v16;
      v18 = sub_1002A80E0(v19, v16);
      memcpy(v18, a4, v17);
    }
  }

  sub_1002A833C(v22, a1, v21, v20, v19, a5);
  sub_1002A8AA4(v22);
}

void sub_1002A9330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  _Unwind_Resume(a1);
}

pthread_mutex_t **sub_1002A9380(pthread_mutex_t **a1)
{
  if (atomic_fetch_add(&(*a1)[1], 0xFFFFFFFF) == 1 && *a1)
  {
    pthread_mutex_destroy(*a1);
    operator delete();
  }

  *a1 = 0;
  return a1;
}

pthread_key_t *sub_1002A93FC(pthread_key_t *a1)
{
  if (pthread_key_delete(*a1))
  {
    v3[0] = 0;
    v3[1] = 0;
    qmemcpy(sub_1002A80E0(v3, 31), "pthread_key_delete(tlsKey) == 0", 31);
    sub_1002A8980(-215, v3, "~TlsAbstraction", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1305);
  }

  return a1;
}

uint64_t sub_1002A9484(uint64_t a1)
{
  *a1 = off_1004755A8;
  v2 = sub_1002A94D0();
  *(a1 + 8) = sub_1002A9598(v2);
  return a1;
}

uint64_t sub_1002A94D0()
{
  if (!qword_1004BD910)
  {
    v0 = sub_1002A814C();
    pthread_mutex_lock(*v0);
    if (!qword_1004BD910)
    {
      operator new();
    }

    pthread_mutex_unlock(*v0);
  }

  return qword_1004BD910;
}

void sub_1002A9580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A9598(void *a1)
{
  v3 = (a1 + 1);
  v2 = a1[1];
  v8[2] = v3;
  pthread_mutex_lock(v2);
  v4 = a1[3];
  v5 = a1[2];
  if (v5 != (a1[4] - v4) >> 2)
  {
    v8[0] = 0;
    v8[1] = 0;
    qmemcpy(sub_1002A80E0(v8, 31), "tlsSlotsSize == tlsSlots.size()", 31);
    sub_1002A8980(-215, v8, "reserveSlot", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1380);
  }

  if (v5)
  {
    v6 = 0;
    while (*(v4 + 4 * v6))
    {
      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }

    *(v4 + 4 * v6) = 1;
  }

  else
  {
LABEL_6:
    LODWORD(v8[0]) = 1;
    sub_100282308((a1 + 3), v8);
    v6 = a1[2];
    a1[2] = v6 + 1;
  }

  pthread_mutex_unlock(*v3);
  return v6;
}

void sub_1002A9690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002AA158(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A96C0(uint64_t result)
{
  *result = off_1004755A8;
  if (*(result + 8) != -1)
  {
    v2[0] = 0;
    v2[1] = 0;
    v1 = sub_1002A80E0(v2, 10);
    *(v1 + 8) = 12589;
    *v1 = *"key_ == -1";
    sub_1002A8980(-215, v2, "~TLSDataContainer", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1503);
  }

  return result;
}

uint64_t sub_1002A975C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002A94D0();
  v5 = *(a1 + 8);

  return sub_1002A979C(v4, v5, a2);
}

uint64_t sub_1002A979C(void *a1, unint64_t a2, uint64_t a3)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  v18 = v7;
  pthread_mutex_lock(v6);
  v8 = v7[1];
  if (v8 != (v7[3] - v7[2]) >> 2)
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 31), "tlsSlotsSize == tlsSlots.size()", 31);
    sub_1002A8980(-215, &v16, "gather", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1439);
  }

  if (v8 <= a2)
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, &v16, "gather", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1440);
  }

  v10 = a1[6];
  v9 = a1[7];
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 8 * v11);
      if (v12)
      {
        v13 = *v12;
        if (a2 < (*(*(v10 + 8 * v11) + 8) - v13) >> 3)
        {
          v14 = (v13 + 8 * a2);
          if (*v14)
          {
            sub_1002AB17C(a3, v14);
            v10 = a1[6];
            v9 = a1[7];
          }
        }
      }

      ++v11;
    }

    while (v11 < (v9 - v10) >> 3);
  }

  return pthread_mutex_unlock(*v7);
}

void sub_1002A9900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002AA158(va1);
  _Unwind_Resume(a1);
}

void sub_1002A9948(int *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_1002A9A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A9A34(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  v9 = (a1 + 1);
  v8 = a1[1];
  v19 = v9;
  pthread_mutex_lock(v8);
  v10 = v9[1];
  if (v10 != (v9[3] - v9[2]) >> 2)
  {
    v17 = 0;
    v18 = 0;
    qmemcpy(sub_1002A80E0(&v17, 31), "tlsSlotsSize == tlsSlots.size()", 31);
    sub_1002A8980(-215, &v17, "releaseSlot", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1401);
  }

  if (v10 <= a2)
  {
    v17 = 0;
    v18 = 0;
    qmemcpy(sub_1002A80E0(&v17, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, &v17, "releaseSlot", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1402);
  }

  v12 = a1[6];
  v11 = a1[7];
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      v14 = *(v12 + 8 * v13);
      if (v14)
      {
        if (a2 < (v14[1] - *v14) >> 3)
        {
          v15 = (*v14 + 8 * a2);
          if (*v15)
          {
            sub_1002AB17C(a3, v15);
            *(*v14 + 8 * a2) = 0;
            v12 = a1[6];
            v11 = a1[7];
          }
        }
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if ((a4 & 1) == 0)
  {
    *(a1[3] + 4 * a2) = 0;
  }

  return pthread_mutex_unlock(*v9);
}

void sub_1002A9BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002AA158(va1);
  _Unwind_Resume(a1);
}

void *sub_1002A9C00(_DWORD *a1)
{
  if (a1[2] == -1)
  {
    v6[0] = 0;
    v6[1] = 0;
    qmemcpy(sub_1002A80E0(v6, 63), "key_ != -1 && Can't fetch data from terminated TLS container.", 63);
    sub_1002A8980(-215, v6, "getData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1532);
  }

  v2 = sub_1002A94D0();
  result = sub_1002A9D00(v2, a1[2]);
  if (!result)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = sub_1002A94D0();
    sub_1002A9DCC(v5, a1[2], v4);
    return v4;
  }

  return result;
}

void *sub_1002A9D00(pthread_key_t *a1, unint64_t a2)
{
  if (a1[2] <= a2)
  {
    v4[0] = 0;
    v4[1] = 0;
    qmemcpy(sub_1002A80E0(v4, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, v4, "getData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1425);
  }

  result = pthread_getspecific(*a1);
  if (result)
  {
    if (a2 >= (result[1] - *result) >> 3)
    {
      return 0;
    }

    else
    {
      return *(*result + 8 * a2);
    }
  }

  return result;
}

uint64_t *sub_1002A9DCC(pthread_key_t *a1, unint64_t a2, uint64_t a3)
{
  if (a1[2] <= a2)
  {
    v14[0] = 0;
    v14[1] = 0;
    qmemcpy(sub_1002A80E0(v14, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, v14, "setData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1457);
  }

  result = pthread_getspecific(*a1);
  v13 = result;
  if (!result)
  {
    operator new();
  }

  v7 = *result;
  if (a2 >= (result[1] - *result) >> 3)
  {
    v9 = a1[1];
    v8 = (a1 + 1);
    v14[0] = v8;
    pthread_mutex_lock(v9);
    v10 = a2 + 1;
    v12 = 0;
    v11 = (v13[1] - *v13) >> 3;
    if (v11 <= a2)
    {
      sub_1002AB3AC(v13, v10 - v11, &v12);
    }

    else if (v10 < v11)
    {
      v13[1] = *v13 + 8 * v10;
    }

    result = pthread_mutex_unlock(*v8);
    v7 = *v13;
  }

  *(v7 + 8 * a2) = a3;
  return result;
}

void sub_1002A9FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

void sub_1002A9FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

void sub_1002AA008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA050()
{
  if (!qword_1004BD908)
  {
    v0 = sub_1002A814C();
    pthread_mutex_lock(*v0);
    if (!qword_1004BD908)
    {
      operator new();
    }

    pthread_mutex_unlock(*v0);
  }

  return qword_1004BD908;
}

void sub_1002AA114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA18C()
{
  if (!qword_1004BD918)
  {
    v0 = sub_1002A814C();
    pthread_mutex_lock(*v0);
    if (!qword_1004BD918)
    {
      operator new();
    }

    pthread_mutex_unlock(*v0);
  }

  return *sub_1002A9C00(qword_1004BD918);
}

void sub_1002AA258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA29C(const char *a1, uint64_t a2)
{
  v4 = getenv(a1);
  if (v4)
  {
    v5 = v4;
    v20[0] = 0;
    v20[1] = 0;
    v6 = strlen(v4);
    if (v6)
    {
      v7 = v6;
      v8 = sub_1002A80E0(v20, v6);
      memcpy(v8, v5, v7);
      v9 = v20[0];
      if (v20[0] == "1")
      {
        a2 = 1;
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    v11 = *v10;
    if (v11 == 49)
    {
      v12 = v10[1] == 0;
      a2 = 1;
      if (v9 == "True")
      {
        goto LABEL_31;
      }
    }

    else
    {
      v12 = 0;
      a2 = 1;
      if (v9 == "True")
      {
        goto LABEL_31;
      }
    }

    if (!v12)
    {
      v13 = strcmp(v10, "True");
      if (v9 != "true")
      {
        if (v13)
        {
          v14 = strcmp(v10, "true");
          if (v9 != "TRUE" && v14 && strcmp(v10, "TRUE"))
          {
            if (v9 != "0")
            {
              v15 = v11 == 48 && v10[1] == 0;
              a2 = 0;
              if (v9 == "False")
              {
                goto LABEL_31;
              }

              if (v15)
              {
                goto LABEL_31;
              }

              v16 = strcmp(v10, "False");
              a2 = 0;
              if (v9 == "false")
              {
                goto LABEL_31;
              }

              if (!v16)
              {
                goto LABEL_31;
              }

              v17 = strcmp(v10, "false");
              a2 = 0;
              if (v9 == "FALSE" || !v17)
              {
                goto LABEL_31;
              }

              if (strcmp(v10, "FALSE"))
              {
                sub_1002A8688(v19, "Invalid value for %s parameter: %s", a1, v10);
                sub_1002AA4FC(-5, v19, "getConfigurationParameterBool", 1619);
              }
            }

            a2 = 0;
          }
        }
      }
    }

LABEL_31:
    sub_1002A8124(v20);
  }

  return a2;
}

void sub_1002AA4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA518(const char *a1, uint64_t a2)
{
  v4 = getenv(a1);
  if (v4)
  {
    v5 = v4;
    v32 = 0;
    v33 = 0;
    v6 = strlen(v4);
    if (v6)
    {
      v7 = sub_1002A80E0(&v32, v6);
      memcpy(v7, v5, v6);
      v8 = v33;
      if (v33)
      {
        v6 = 0;
        while (1)
        {
          v9 = v32[v6];
          if (v9 < 0 || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
          {
            break;
          }

          if (v33 == ++v6)
          {
            v6 = v33;
            break;
          }
        }

        v30 = 0;
        v31 = 0;
        if (v33 >= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v33;
        }

        if (v10)
        {
          if (v33 > v6)
          {
            v11 = sub_1002A80E0(&v30, v10);
            memcpy(v11, v32, v10);
            v8 = v33;
          }

          else
          {
            atomic_fetch_add(v32 - 1, 1u);
            v8 = v33;
            v30 = v32;
            v31 = v33;
          }
        }
      }

      else
      {
        v6 = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v8 = 0;
      v30 = 0;
      v31 = 0;
    }

    v12 = v8 - v6;
    v28 = 0;
    v29 = 0;
    if (v8 < v6)
    {
      v6 = v8;
    }

    if (v8 - v6 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8 - v6;
    }

    if (v13)
    {
      if (v13 == v8)
      {
        atomic_fetch_add(v32 - 1, 1u);
        v14 = v33;
        v28 = v32;
        v29 = v33;
      }

      else
      {
        v15 = sub_1002A80E0(&v28, v13);
        memcpy(v15, &v32[v6], v13);
        v14 = v29;
      }
    }

    else
    {
      v14 = 0;
    }

    if (v30)
    {
      v16 = v30;
    }

    else
    {
      v16 = "";
    }

    v17 = atoi(v16);
    v18 = v17;
    if (!v14)
    {
      goto LABEL_56;
    }

    if (v28 == "MB")
    {
      goto LABEL_55;
    }

    if (v28)
    {
      v19 = v28;
    }

    else
    {
      v19 = "";
    }

    v20 = *v19;
    if (v20 != 77)
    {
      if (v28 == "Mb")
      {
        goto LABEL_55;
      }

      goto LABEL_47;
    }

    if (v19[1] == 66)
    {
      v21 = v19[2] == 0;
      if (v28 == "Mb")
      {
        goto LABEL_55;
      }
    }

    else
    {
      v21 = 0;
      if (v28 == "Mb")
      {
        goto LABEL_55;
      }
    }

    if (!v21)
    {
      if (v19[1] == 98)
      {
        v22 = v19[2] == 0;
LABEL_48:
        if (v28 == "mb" || v22)
        {
          goto LABEL_55;
        }

        if (v20 == 109)
        {
          if (v19[1] == 98 && !v19[2])
          {
            goto LABEL_55;
          }

          if (v28 == "KB")
          {
LABEL_76:
            v18 = v17 << 10;
            goto LABEL_56;
          }
        }

        else
        {
          if (v28 == "KB")
          {
            goto LABEL_76;
          }

          if (v20 == 75)
          {
            v24 = v19[1] == 66 && v19[2] == 0;
            v25 = 1;
            if (v28 == "Kb")
            {
              goto LABEL_76;
            }

            goto LABEL_66;
          }
        }

        v25 = 0;
        v24 = 0;
        if (v28 == "Kb")
        {
          goto LABEL_76;
        }

LABEL_66:
        if (!v24)
        {
          if (v25)
          {
            LOBYTE(v25) = v19[1] == 98 && v19[2] == 0;
          }

          if (v28 != "kb" && (v25 & 1) == 0 && (v20 != 107 || v19[1] != 98 || v19[2]))
          {
            v26 = v32;
            if (!v32)
            {
              v26 = "";
            }

            sub_1002A8688(v27, "Invalid value for %s parameter: %s", a1, v26);
            sub_1002AA4FC(-5, v27, "getConfigurationParameterSizeT", 1650);
          }
        }

        goto LABEL_76;
      }

LABEL_47:
      v22 = 0;
      goto LABEL_48;
    }

LABEL_55:
    v18 = v17 << 20;
LABEL_56:
    sub_1002A8124(&v28);
    sub_1002A8124(&v30);
    sub_1002A8124(&v32);
    return v18;
  }

  return a2;
}

void sub_1002AA8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  sub_1002A8124(va2);
  sub_1002A8124((v5 - 48));
  _Unwind_Resume(a1);
}

const char *sub_1002AA910@<X0>(const char *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  result = getenv(a1);
  if (result)
  {
    v6 = result;
    *a3 = 0;
    a3[1] = 0;
    result = strlen(result);
    if (!result)
    {
      return result;
    }

    v7 = result;
    v8 = sub_1002A80E0(a3, result);
    v9 = v6;
    v10 = v7;

    return memcpy(v8, v9, v10);
  }

  *a3 = 0;
  a3[1] = 0;
  if (a2)
  {
    result = strlen(a2);
    if (result)
    {
      v11 = result;
      v8 = sub_1002A80E0(a3, result);
      v9 = a2;
      v10 = v11;

      return memcpy(v8, v9, v10);
    }
  }

  return result;
}

void sub_1002AA9D8(_BYTE *a1)
{
  if (getenv("OPENCV_DUMP_CONFIG"))
  {
    v2 = __stderrp;
    if ((atomic_load_explicit(&qword_1004BD930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BD930))
    {
      sub_1001FA81C(&qword_1004BD948, aGeneralConfigu);
      __cxa_atexit(sub_1002422D0, &qword_1004BD948, &_mh_execute_header);
      __cxa_guard_release(&qword_1004BD930);
    }

    v3 = qword_1004BD948;
    if (!qword_1004BD948)
    {
      v3 = "";
    }

    fprintf(v2, "\nOpenCV build configuration is:\n%s\n", v3);
  }

  bzero(&unk_1004BDB58, 0x7F8uLL);
  qword_1004BDB60 = "MMX";
  unk_1004BDB68 = "SSE";
  qword_1004BDB70 = "SSE2";
  unk_1004BDB78 = "SSE3";
  qword_1004BDB80 = "SSSE3";
  unk_1004BDB88 = "SSE4.1";
  qword_1004BDB90 = "SSE4.2";
  unk_1004BDB98 = "POPCNT";
  qword_1004BDBA0 = "FP16";
  unk_1004BDBA8 = "AVX";
  qword_1004BDBB0 = "AVX2";
  unk_1004BDBB8 = "FMA3";
  qword_1004BDBC0 = "AVX512F";
  unk_1004BDBC8 = "AVX512BW";
  qword_1004BDBD0 = "AVX512CD";
  unk_1004BDBD8 = "AVX512DQ";
  qword_1004BDBE0 = "AVX512ER";
  unk_1004BDBE8 = "AVX512IFMA";
  qword_1004BDBF0 = "AVX512PF";
  unk_1004BDBF8 = "AVX512VBMI";
  qword_1004BDC00 = "AVX512VL";
  qword_1004BDE78 = "NEON";
  qword_1004BE198 = "VSX";
  a1[100] = 1;
  a1[9] = 1;
  a1[200] = 0;
  v5 = 100;
  v4 = 0x6400000000;
  sub_1002AAC2C(a1, &v4, 3);
}

void sub_1002AAC2C(uint64_t a1, _DWORD *a2, int a3)
{
  v6 = getenv("OPENCV_CPU_DISABLE");
  if (v6)
  {
    v7 = v6;
    if (*v6)
    {
      v24 = a3;
      while (1)
      {
        v8 = *v7;
        while (2)
        {
          if ((v8 - 44) < 2)
          {
            goto LABEL_4;
          }

          if (!*v7)
          {
            return;
          }

          if (v8 == 59)
          {
LABEL_4:
            ++v7;
          }

          else
          {
            v9 = 0;
              ;
            }

            if (!v9)
            {
              continue;
            }

            v25 = a1;
            v26 = a2;
            v27 = a3;
            v29 = 0;
            v30 = 0;
            v11 = sub_1002A80E0(&v29, v9);
            memcpy(v11, v7, v9);
            v12 = v30;
            if (!v30)
            {
              v28[0] = 0;
              v28[1] = 0;
              v23 = sub_1002A80E0(v28, 18);
              *(v23 + 16) = 12320;
              *v23 = *"feature.size() > 0";
              sub_1002A8980(-215, v28, "readSettings", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 606);
            }

            v13 = 0;
            v7 += v9;
            v14 = v29;
            if (v29)
            {
              v15 = v29;
            }

            else
            {
              v15 = "";
            }

            while (2)
            {
              v16 = &byte_1004BD928[8 * v13];
              v17 = *(v16 + 70);
              if (v17 && strlen(*(v16 + 70)) == v12 && (v14 == v17 || !strcmp(v15, v17)))
              {
                v18 = v24;
                a1 = v25;
                a2 = v26;
                v19 = v26;
                a3 = v27;
                if (v27 < 1)
                {
LABEL_26:
                  if ((*(v25 + v13) & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  while (1)
                  {
                    v20 = *v19++;
                    if (v20 == v13)
                    {
                      break;
                    }

                    if (!--v18)
                    {
                      goto LABEL_26;
                    }
                  }

                  v22 = *(v16 + 70);
                  if (!v22)
                  {
                    v22 = "Unknown feature";
                  }

                  fprintf(__stderrp, "OPENCV: Trying to disable baseline CPU feature: '%s'. This has very limited effect, because code optimizations for this feature are executed unconditionally in the most cases.\n", v22);
                  if (*(v25 + v13))
                  {
                    goto LABEL_30;
                  }

LABEL_27:
                  v21 = *(v16 + 70);
                  if (!v21)
                  {
                    v21 = "Unknown feature";
                  }

                  fprintf(__stderrp, "OPENCV: Trying to disable unavailable CPU feature on the current platform: '%s'.\n", v21);
                }

LABEL_30:
                *(v25 + v13) = 0;
                goto LABEL_32;
              }

              if (++v13 != 255)
              {
                continue;
              }

              break;
            }

            fprintf(__stderrp, "OPENCV: Trying to disable unknown CPU feature: '%s'.\n", v15);
            a3 = v27;
            a1 = v25;
            a2 = v26;
LABEL_32:
            sub_1002A8124(&v29);
          }

          break;
        }
      }
    }
  }
}

void sub_1002AAECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  _Unwind_Resume(a1);
}

void sub_1002AAEFC(pthread_key_t *a1)
{
  if (!pthread_key_create(a1, 0))
  {
    operator new();
  }

  v1.__sig = 0;
  *v1.__opaque = 0;
  qmemcpy(sub_1002A80E0(&v1, 40), "pthread_key_create(&tlsKey, __null) == 0", 40);
  sub_1002A8980(-215, &v1.__sig, "TlsAbstraction", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1301);
}

void sub_1002AB0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002AB110(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1002A9380((v1 + 8));
  sub_1002A93FC(v1);
  _Unwind_Resume(a1);
}

void sub_1002AB17C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000918C();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1002AB294(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000918C();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1002AB3AC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_n_s64(v11);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      sub_10000918C();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_n_s64(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void sub_1002AB76C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_1002AB9C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100282298((a2 + 16));

    operator delete();
  }
}

double sub_1002ABA14()
{
  qword_1004D54B0 = sub_1002A814C();
  xmmword_1004BD958 = 0u;
  unk_1004BD968 = 0u;
  xmmword_1004BD978 = 0u;
  unk_1004BD988 = 0u;
  xmmword_1004BD998 = 0u;
  unk_1004BD9A8 = 0u;
  xmmword_1004BD9B8 = 0u;
  unk_1004BD9C8 = 0u;
  xmmword_1004BD9D8 = 0u;
  unk_1004BD9E8 = 0u;
  xmmword_1004BD9F8 = 0u;
  unk_1004BDA08 = 0u;
  xmmword_1004BDA18 = 0u;
  unk_1004BDA28 = 0u;
  xmmword_1004BDA38 = 0u;
  *(&xmmword_1004BDA38 + 15) = 0u;
  sub_1002AA9D8(&xmmword_1004BD958);
  result = 0.0;
  unk_1004BDB47 = 0u;
  xmmword_1004BDB28 = 0u;
  unk_1004BDB38 = 0u;
  xmmword_1004BDB08 = 0u;
  unk_1004BDB18 = 0u;
  xmmword_1004BDAE8 = 0u;
  unk_1004BDAF8 = 0u;
  xmmword_1004BDAC8 = 0u;
  unk_1004BDAD8 = 0u;
  xmmword_1004BDAA8 = 0u;
  unk_1004BDAB8 = 0u;
  xmmword_1004BDA88 = 0u;
  unk_1004BDA98 = 0u;
  xmmword_1004BDA68 = 0u;
  unk_1004BDA78 = 0u;
  xmmword_1004BDA58 = 0u;
  return result;
}

int *sub_1002ABAA0(int ***a1)
{
  v1 = *a1;
  result = **a1;
  if (!result)
  {
    v3 = sub_1002A814C();
    sub_1002A93EC(v3);
    if (!*v1)
    {
      operator new();
    }

    sub_1002A93F4(v3);
    return *v1;
  }

  return result;
}

uint64_t sub_1002ABC0C()
{
  if (!qword_1004BE370)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BE370)
    {
      if ((atomic_load_explicit(&qword_1004BE388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BE388))
      {
        sub_1002ACF7C(qword_1004BE3A0);
      }

      qword_1004BE370 = qword_1004BE3A0;
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BE370;
}

void sub_1002ABCC8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1004BE388);
  sub_1002A93F4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ABCF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = a1[1];
  v4 = *(v3 + 28);
  if (v4)
  {
    if ((v4 & 2) == 0)
    {
      ++*(a2 + 76);
    }

    ++*(a2 + 72);
  }

  result = sub_1002ABE44(a2);
  if (result)
  {
    v6 = result;
    v11 = 0;
    v12 = 0;
    v7 = a1[1];
    sub_1002ACEF0(v10, "b,%d,%lld,%lld,%lld", *(*v7 + 6), (*v7)[4], *****v7, *(*v7 + 7));
    v8 = (*v7)[2];
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        if (*(v9 + 6) != *(*v7 + 6))
        {
          sub_1002ACEF0(v10, ",parentThread=%d,parent=%lld", *(v9 + 6), *(v9 + 7));
        }
      }
    }

    sub_1002ACEF0(v10, "\n");
    return (*(*v6 + 16))(v6, v10);
  }

  return result;
}

uint64_t sub_1002ABE44(uint64_t a1)
{
  if (!*(a1 + 168))
  {
    v3 = *(sub_1002ABC0C() + 40);
    if (v3)
    {
      v4 = qword_1004BE390;
      if (!qword_1004BE390)
      {
        v4 = "";
      }

      sub_1002A8688(v13, "%s-%03d.txt", v4, *a1);
      if (v13[0])
      {
        v5 = v13[0];
      }

      else
      {
        v5 = "";
      }

      v6 = strlen(v5);
      if (v6 < 0x7FFFFFFFFFFFFFF8)
      {
        v7 = v6;
        if (v6 < 0x17)
        {
          v12 = v6;
          if (v6)
          {
            memmove(&__dst, v5, v6);
          }

          *(&__dst + v7) = 0;
          sub_1002A8124(v13);
          v13[128] = 0;
          v14 = 0;
          if (v12 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v9 = strrchr(p_dst, 47);
          if (v9)
          {
            v10 = v9;
          }

          else
          {
            v10 = p_dst;
          }

          sub_1002ACEF0(v13, "#thread file: %s\n", v10);
          (*(*v3 + 16))(v3, v13);
          operator new();
        }

        operator new();
      }

      sub_100241528();
    }
  }

  return *(a1 + 168);
}

void sub_1002AC0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002AC128(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 8) += v4;
  result = sub_1002ABE44(a2);
  if (result)
  {
    v7 = result;
    v10 = 0;
    v11 = 0;
    sub_1002ACEF0(v9, "e,%d,%lld,%lld,%lld,%lld", *(**(a1 + 8) + 24), *(**(a1 + 8) + 40), ******(a1 + 8), *(**(a1 + 8) + 28), v5);
    if (v4)
    {
      sub_1002ACEF0(v9, ",skip=%d", v4);
    }

    sub_1002ACEF0(v9, "\n");
    result = (*(*v7 + 16))(v7, v9);
  }

  v8 = *(*a1 + 28);
  if (v8)
  {
    if ((v8 & 2) == 0)
    {
      --*(a2 + 76);
    }

    --*(a2 + 72);
  }

  *(a2 + 16) = *(a1 + 16);
  return result;
}

_DWORD *sub_1002AC288(_DWORD *result, uint64_t a2)
{
  *result = 0;
  result[2] = 0;
  if (byte_1004D54B8 == 1)
  {
    byte_1004BE35A = 0;
    return result;
  }

  v3 = result;
  if ((byte_1004BE359 & 1) == 0)
  {
    sub_1002ABC0C();
    result = v3;
  }

  if (byte_1004BE35A == 1)
  {
    v4 = sub_1002ABC0C();
    v5 = sub_1002A9C00((v4 + 16));
    v6 = v5;
    if (!v5)
    {
      v39[0] = 0;
      v39[1] = 0;
      v7 = sub_1002A80E0(v39, 3);
      *v7 = 29808;
      *(v7 + 2) = 114;
      sub_1002A8980(-215, v39, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
    }

    v8 = v5[8];
    if (v8)
    {
      v9 = (*(v5[4] + 8 * ((v8 + v5[7] - 1) / 0xAAuLL)) + 24 * ((v8 + v5[7] - 1) % 0xAAuLL));
      v10 = *v9;
      v11 = v9[1];
      if ((*(a2 + 28) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = v5[13];
      v11 = v5[14];
      if ((*(a2 + 28) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10)
    {
      if (!*v10)
      {
        goto LABEL_23;
      }

      sub_1002ACC1C(v10);
      *(v10 + 2) = 0;
      v12 = v6[8];
      if (v12)
      {
        v13 = (*(v6[4] + 8 * ((v12 + v6[7] - 1) / 0xAAuLL)) + 24 * ((v12 + v6[7] - 1) % 0xAAuLL));
        v14 = v13 + 1;
      }

      else
      {
        v13 = v6 + 13;
        v14 = v6 + 14;
      }

      v10 = *v13;
      v11 = *v14;
    }

LABEL_18:
    if (!v10)
    {
      v16 = 0;
      v17 = j__mach_absolute_time();
      if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
      {
        goto LABEL_28;
      }

      goto LABEL_81;
    }

    v15 = *v10;
    if (*v10)
    {
      if (v11)
      {
        v16 = *(v15 + 48) + 1;
        *(v15 + 48) = v16;
        v17 = j__mach_absolute_time();
        if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = atomic_fetch_add((v15 + 48), 1u) + 1;
        v17 = j__mach_absolute_time();
        if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
        {
          goto LABEL_28;
        }
      }

LABEL_81:
      if (__cxa_guard_acquire(&qword_1004BE380))
      {
        *&qword_1004BE378 = 1000000000.0 / sub_1002A8918();
        __cxa_guard_release(&qword_1004BE380);
      }

LABEL_28:
      v18 = v6[5];
      v19 = v6[4];
      if (v18 == v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 170 * ((v18 - v19) >> 3) - 1;
      }

      v21 = (*&qword_1004BE378 * (v17 - qword_1004BE368));
      v22 = v6[8];
      v23 = v6[7] + v22;
      if (v20 == v23)
      {
        sub_1002ADE1C(v6 + 3);
        v19 = v6[4];
        v24 = v6[8];
        v23 = v24 + v6[7];
      }

      else
      {
        v24 = v6[8];
      }

      result = v3;
      v25 = (*(v19 + 8 * (v23 / 0xAA)) + 24 * (v23 % 0xAA));
      *v25 = v3;
      v25[1] = a2;
      v25[2] = v21;
      v6[8] = v24 + 1;
      v3[2] |= 1u;
      v26 = *(a2 + 28);
      if ((v26 & 0x40000000) == 0)
      {
        v27 = *(v6 + 24);
        if ((v27 & 0x80000000) == 0 && v27 <= v22)
        {
          ++*(v6 + 20);
          return result;
        }

        if (dword_1004BE360 >= 1 && (v26 & 2) == 0 && v11 && (*(v11 + 28) & 2) == 0 && v16 >= dword_1004BE360)
        {
          if (sub_100241540() >= 4)
          {
            sub_100241960(v39);
            v28 = sub_100241184(&v40, &asc_1003E5CDF[(4 * (v6[8] & 0xFLL)) ^ 0x3F], 4 * (v6[8] & 0xFLL));
            sub_100241184(v28, "OpenCV parent region exceeds children count. Bailout", 52);
            std::stringbuf::str();
            if (v38 >= 0)
            {
              v29 = __p;
            }

            else
            {
              v29 = __p[0];
            }

            sub_1002415C8(4, v29);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            sub_100241CC8(v39);
          }

LABEL_61:
          *(v6 + 24) = v22;
LABEL_79:
          ++*(v6 + 20);
          return v3;
        }

        if (dword_1004BE364 >= 1 && v16 >= dword_1004BE364)
        {
          if (sub_100241540() >= 4)
          {
            sub_100241960(v39);
            v30 = sub_100241184(&v40, &asc_1003E5CDF[(4 * (v6[8] & 0xFLL)) ^ 0x3F], 4 * (v6[8] & 0xFLL));
            sub_100241184(v30, "Parent region exceeds children count. Bailout", 45);
            std::stringbuf::str();
            if (v38 >= 0)
            {
              v31 = __p;
            }

            else
            {
              v31 = __p[0];
            }

            sub_1002415C8(4, v31);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            v40 = v32;
            if (v44 < 0)
            {
              operator delete(v43);
            }

            std::locale::~locale(v42);
            std::iostream::~basic_iostream();
            std::ios::~ios();
          }

          goto LABEL_61;
        }
      }

      v33 = v22 + 1;
      sub_1002ABAA0(a2);
      if (***a2)
      {
        if ((!v11 || (*(v11 + 28) & 4) == 0) && (!dword_1004BE35C || (*(a2 + 28) & 2) != 0 || *(v6 + 19) < dword_1004BE35C))
        {
          operator new();
        }
      }

      else if (sub_100241540() >= 4)
      {
        sub_100241960(v39);
        v34 = sub_100241184(&v40, &asc_1003E5CDF[(4 * (v6[8] & 0xFLL)) ^ 0x3F], 4 * (v6[8] & 0xFLL));
        sub_100241184(v34, "Region location is disabled. Bailout", 36);
        std::stringbuf::str();
        if (v38 >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        sub_1002415C8(4, v35);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        v40 = v36;
        if (v44 < 0)
        {
          operator delete(v43);
        }

        std::locale::~locale(v42);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      *(v6 + 24) = v33;
      goto LABEL_79;
    }

LABEL_23:
    v16 = 0;
    v17 = j__mach_absolute_time();
    if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
    {
      goto LABEL_28;
    }

    goto LABEL_81;
  }

  return result;
}

void sub_1002ACB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_100241CC8(&a16);
    _Unwind_Resume(a1);
  }

  sub_100241CC8(&a16);
  _Unwind_Resume(a1);
}

void sub_1002ACC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002ACC1C(_BYTE *a1)
{
  v2 = sub_1002ABC0C();
  v3 = sub_1002A9C00((v2 + 16));
  v4 = v3;
  if (!v3)
  {
    v18[0] = 0;
    v18[1] = 0;
    v5 = sub_1002A80E0(v18, 3);
    *v5 = 29808;
    *(v5 + 2) = 114;
    sub_1002A8980(-215, v18, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  v6 = *(v3 + 16);
  v7 = j__mach_absolute_time();
  if ((atomic_load_explicit(&qword_1004BE380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BE380))
  {
    *&qword_1004BE378 = 1000000000.0 / sub_1002A8918();
    __cxa_guard_release(&qword_1004BE380);
  }

  v8 = (*&qword_1004BE378 * (v7 - qword_1004BE368));
  v9 = *(v4 + 64);
  if (v9)
  {
    v10 = v8 - *(*(*(v4 + 32) + 8 * ((v9 + *(v4 + 56) - 1) / 0xAAuLL)) + 24 * ((v9 + *(v4 + 56) - 1) % 0xAAuLL) + 16);
    v11 = *a1;
    if (*a1)
    {
LABEL_6:
      *(v4 + 88) = v10;
      *(v11 + 40) = v8;
      sub_1002AC128(v11, v4);
      if (*a1)
      {
        **(*a1 + 8) = 0;
        operator delete();
      }

      *a1 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = v8 - *(v4 + 120);
    v11 = *a1;
    if (*a1)
    {
      goto LABEL_6;
    }
  }

  if (v9 == *(v4 + 152) + 1)
  {
    *(v4 + 88) += v10;
  }

LABEL_12:
  if (a1[8])
  {
    v13 = *(v4 + 32);
    v12 = *(v4 + 40);
    v14 = 170 * ((v12 - v13) >> 3) - 1;
    v15 = v12 == v13;
    v17 = *(v4 + 56);
    v16 = *(v4 + 64);
    if (v15)
    {
      v14 = 0;
    }

    *(v4 + 64) = v16 - 1;
    if ((v14 - (v16 + v17) + 1) >= 0x154)
    {
      operator delete(*(v12 - 8));
      *(v4 + 40) -= 8;
    }

    if (*(v4 + 96) >= v6)
    {
      *(v4 + 96) = -1;
    }
  }
}

uint64_t sub_1002ACE80(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002ACEF0(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = *(a1 + 1024);
  v4 = 1024 - v3;
  v5 = sub_1002A8978((a1 + v3), 1024 - v3, a2, va);
  if ((v5 & 0x80000000) != 0 || v4 < v5)
  {
    result = 0;
    *(a1 + 1032) = 1;
  }

  else
  {
    *(a1 + 1024) += v5;
    return 1;
  }

  return result;
}

void sub_1002AD1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1002AD2E0(uint64_t a1)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v2 = (a1 + 16);
  sub_1002A975C(a1 + 16, &v21);
  v3 = v21;
  if (v22 == v21)
  {
    v5 = 0;
    if (byte_1004BE35A != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = v22 - v21;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v7 = *v3;
      if (*v3)
      {
        v4 += *(v7 + 4);
        v5 += *(v7 + 8);
      }

      ++v3;
      --v6;
    }

    while (v6);
    if (!v4 && byte_1004BE35A != 1)
    {
LABEL_21:
      if (v5 && sub_100241540() >= 3)
      {
        sub_100241960(v15);
        sub_100241184(&v16, "Trace: Total skipped events: ", 29);
        std::ostream::operator<<();
        std::stringbuf::str();
        if (v14 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        sub_1002415C8(3, v10);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        v16 = v11;
        if (v20 < 0)
        {
          operator delete(v19);
        }

        std::locale::~locale(v18);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      byte_1004D54B8 = 1;
      byte_1004BE35A = 0;
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v12 + 16))(v12);
        }
      }

      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *v2 = off_100475768;
      sub_1002A9948(v2);
    }
  }

  if (sub_100241540() >= 4)
  {
    sub_100241960(v15);
    sub_100241184(&v16, "Trace: Total events: ", 21);
    std::ostream::operator<<();
    std::stringbuf::str();
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1002415C8(4, v8);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = v9;
    if (v20 < 0)
    {
      operator delete(v19);
    }

    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  goto LABEL_21;
}

void *sub_1002AD7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002ABC0C();
  result = sub_1002A9C00((v4 + 16));
  if (!result)
  {
    v9 = 0;
    v10 = 0;
    v6 = sub_1002A80E0(&v9, 3);
    *v6 = 29808;
    *(v6 + 2) = 114;
    sub_1002A8980(-215, &v9, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  v7 = result[13];
  if (v7 != a1)
  {
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      qmemcpy(sub_1002A80E0(&v9, 36), "ctx.dummy_stack_top.region == __null", 36);
      sub_1002A8980(-215, &v9, "parallelForSetRootRegion", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/trace.cpp", 917);
    }

    result[13] = a1;
    result[14] = 0;
    result[15] = -1;
    if (result == a2)
    {
      *(result + 32) = *(result + 20);
      *(result + 20) = 0;
      result[17] = result[11];
      result[11] = 0;
      *(result + 36) = *(result + 24);
      result[19] = result[8];
    }

    else
    {
      if (result[8])
      {
        v9 = 0;
        v10 = 0;
        v8 = sub_1002A80E0(&v9, 17);
        *(v8 + 16) = 41;
        *v8 = *"ctx.stack.empty()";
        sub_1002A8980(-215, &v9, "parallelForSetRootRegion", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/trace.cpp", 928);
      }

      result[2] = a1;
      result[9] = *(a2 + 72);
      result[19] = 0;
      *(result + 24) = -1;
      *(result + 24) = *(a2 + 96) >> 31;
    }
  }

  return result;
}

void *sub_1002AD9B8()
{
  v0 = sub_1002ABC0C();
  result = sub_1002A9C00((v0 + 16));
  if (!result)
  {
    v3[0] = 0;
    v3[1] = 0;
    v2 = sub_1002A80E0(v3, 3);
    *v2 = 29808;
    *(v2 + 2) = 114;
    sub_1002A8980(-215, v3, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  return result;
}

void sub_1002ADA50(uint64_t a1)
{
  v2 = sub_1002ABC0C();
  v3 = sub_1002A9C00((v2 + 16));
  if (!v3)
  {
    v13 = 0;
    v14 = 0;
    v4 = sub_1002A80E0(&v13, 3);
    *v4 = 29808;
    *(v4 + 2) = 114;
    sub_1002A8980(-215, &v13, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  j__mach_absolute_time();
  if ((atomic_load_explicit(&qword_1004BE380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BE380))
  {
    *&qword_1004BE378 = 1000000000.0 / sub_1002A8918();
    __cxa_guard_release(&qword_1004BE380);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = sub_1002ABC0C();
  sub_1002A975C(v5 + 16, &v13);
  v6 = v13;
  if (v14 != v13)
  {
    v7 = 0;
    v8 = (v14 - v13) >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = v13;
    while (1)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v10 + 64);
        if (v11)
        {
          if (*(*(*(v10 + 32) + 8 * ((v11 + *(v10 + 56) - 1) / 0xAAuLL)) + 24 * ((v11 + *(v10 + 56) - 1) % 0xAAuLL)) == a1)
          {
            goto LABEL_15;
          }
        }

        else if (*(v10 + 104) == a1)
        {
LABEL_15:
          v12 = *(v10 + 80);
          *(v10 + 80) = 0;
          *(v10 + 88) = 0;
          if (v10 == v3)
          {
            *(v3 + 20) = *(v3 + 32);
            *(v3 + 32) = 0;
            v3[11] = v3[17];
            v3[17] = 0;
            *(v3 + 24) = *(v3 + 36);
          }

          v7 += v12;
          *(v10 + 104) = 0;
          *(v10 + 112) = 0;
          *(v10 + 120) = -1;
        }
      }

      ++v9;
      if (!--v8)
      {
        *(v3 + 20) += v7;
        goto LABEL_19;
      }
    }
  }

  if (v13)
  {
LABEL_19:
    v14 = v6;
    operator delete(v6);
  }
}

void *sub_1002ADC84(void *result)
{
  if (!*result)
  {
    v1 = result;
    v2 = sub_1002A814C();
    sub_1002A93EC(v2);
    if (!*v1)
    {
      operator new();
    }

    return sub_1002A93F4(v2);
  }

  return result;
}

void *sub_1002ADCFC(void **a1)
{
  v2 = sub_1002ABC0C();
  result = sub_1002A9C00((v2 + 16));
  if (!result)
  {
    v6 = 0;
    v7 = 0;
    v4 = sub_1002A80E0(&v6, 3);
    *v4 = 29808;
    *(v4 + 2) = 114;
    sub_1002A8980(-215, &v6, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  v5 = result[2];
  if (v5)
  {
    if (!*v5)
    {
      v6 = 0;
      v7 = 0;
      qmemcpy(sub_1002A80E0(&v6, 13), "region->pImpl", 13);
      sub_1002A8980(-215, &v6, "traceArg", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/trace.cpp", 1090);
    }

    return sub_1002ADC84(*a1);
  }

  return result;
}

void sub_1002ADE1C(void **a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  sub_1002AE1E4(a1, &v10);
}

void sub_1002AE18C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1002AE1E4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_1002AE370(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

uint64_t sub_1002AE508(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  *a1 = off_100475698;
  v4 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  sub_1002AE71C((a1 + 8), a2, 32);
  if (*(v2 + 23) < 0)
  {
    sub_1002824C8((a1 + 576), *v2, *(v2 + 1));
  }

  else
  {
    v5 = *v2;
    *(a1 + 592) = *(v2 + 2);
    *(a1 + 576) = v5;
  }

  v6 = sub_100241184(v4, "#description: OpenCV trace file", 31);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v11, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v11);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_100241184(v4, "#version: 1.0", 13);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v11, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v11);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_1002AE6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  if (*(v11 + 599) < 0)
  {
    operator delete(*v12);
  }

  sub_1002AE8E8(v10);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1002AE71C(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t a2, int a3))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1002AE8A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_1002AE8E8(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1002AE9B8(uint64_t a1)
{
  sub_1002AEA40(a1);

  operator delete();
}

uint64_t sub_1002AE9F0(uint64_t a1, char *__s)
{
  v2 = __s[1032];
  if ((v2 & 1) == 0)
  {
    v5 = strlen(__s);
    sub_100241184((a1 + 8), __s, v5);
  }

  return v2 ^ 1u;
}

uint64_t sub_1002AEA40(uint64_t a1)
{
  *a1 = off_100475698;
  v2 = (a1 + 8);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  if (*(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1002AEB7C(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004756E8;
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  sub_1002AE71C((a1 + 8), a2, 32);
  sub_1002A8270((a1 + 576));
}

void sub_1002AED4C(_Unwind_Exception *a1)
{
  sub_1002A9380((v2 + 576));
  sub_1002AE8E8(v1);
  _Unwind_Resume(a1);
}

void sub_1002AED7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  if (*(v11 + 607) < 0)
  {
    operator delete(*v12);
  }

  sub_1002A9380((v11 + 576));
  sub_1002AE8E8(v10);
  _Unwind_Resume(a1);
}

void sub_1002AEDC0(uint64_t a1)
{
  sub_1002AEE7C(a1);

  operator delete();
}

uint64_t sub_1002AEDF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1032);
  if ((v2 & 1) == 0)
  {
    sub_1002A93EC((a1 + 576));
    v5 = strlen(a2);
    sub_100241184((a1 + 8), a2, v5);
    std::ostream::flush();
    sub_1002A93F4((a1 + 576));
  }

  return v2 ^ 1u;
}

uint64_t sub_1002AEE7C(uint64_t a1)
{
  *a1 = off_1004756E8;
  sub_1002A93EC((a1 + 576));
  v2 = (a1 + 8);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  sub_1002A93F4((a1 + 576));
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  sub_1002A9380((a1 + 576));
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1002AEFD0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 170;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002AF0B4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1002AF250(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 160);
    v3 = *(a2 + 160);
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    *v4 = 0;
    v4[1] = 0;
    sub_1002AEFD0(a2 + 24);

    operator delete();
  }
}

uint64_t sub_1002AF310(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002AF394()
{
  byte_1004BE358 = sub_1002AA29C("OPENCV_TRACE", 0);
  dword_1004BE35C = sub_1002AA518("OPENCV_TRACE_DEPTH_OPENCV", 1);
  dword_1004BE360 = sub_1002AA518("OPENCV_TRACE_MAX_CHILDREN_OPENCV", 1000);
  dword_1004BE364 = sub_1002AA518("OPENCV_TRACE_MAX_CHILDREN", 10000);
  sub_1002AA910("OPENCV_TRACE_LOCATION", "OpenCVTrace", &qword_1004BE390);

  return __cxa_atexit(sub_1002422D0, &qword_1004BE390, &_mh_execute_header);
}

double sub_1002AF44C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

uint64_t sub_1002AF468(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a1 + 76))
  {
    v5[0] = 0;
    v5[1] = 0;
    qmemcpy(sub_1002A80E0(v5, 13), "mapcount == 0", 13);
    sub_1002A8980(-215, v5, "~UMatData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 77);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = *(a1 + 80);
  if (v2)
  {
    atomic_fetch_add((v2 + 16), 0xFFFFFFFF);
    atomic_fetch_add((v2 + 20), 0xFFFFFFFF);
    if (!*(v2 + 20))
    {
      if (!*(v2 + 76))
      {
        goto LABEL_15;
      }

      v4 = *(v2 + 8);
      if (!v4)
      {
        v4 = sub_100268CC8();
      }

      (*(*v4 + 48))(v4, v2);
      if (!*(v2 + 20))
      {
LABEL_15:
        if (!*(v2 + 16))
        {
          (*(**(v2 + 8) + 32))(*(v2 + 8), v2);
        }
      }
    }

    *(a1 + 80) = 0;
  }

  return a1;
}

void sub_1002AF5B8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 >= 0x21)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 25), "0 <= _dims && _dims <= 32", 25);
    sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 182);
  }

  if (*(a1 + 4) != a2)
  {
    v10 = *(a1 + 56);
    if (v10 != (a1 + 64))
    {
      j__free(v10);
      *(a1 + 48) = a1 + 8;
      *(a1 + 56) = a1 + 64;
    }

    if (a2 >= 3)
    {
      v11 = 8 * a2;
      v12 = sub_1001D8FE8(v11 + 4 * (a2 + 1));
      *(a1 + 56) = v12;
      *&v12[v11] = a2;
      *(a1 + 48) = &v12[v11 + 4];
      *(a1 + 8) = -1;
    }
  }

  *(a1 + 4) = a2;
  if (a3)
  {
    v13 = a2 - 1;
    if (a2 >= 1)
    {
      v14 = ((*a1 >> 3) & 0x1FF) + 1;
      v15 = (v14 << ((0xFA50u >> (2 * (*a1 & 7))) & 3));
      if (a4)
      {
        v16 = *(a3 + 4 * v13);
        if (v16 < 0)
        {
          v29 = 0;
          v30 = 0;
          v17 = sub_1002A80E0(&v29, 6);
          *v17 = 1027481715;
          *(v17 + 4) = 12320;
          sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
        }

        *(*(a1 + 48) + 4 * v13) = v16;
        *(*(a1 + 56) + 8 * v13) = v15;
        if (a2 != 1)
        {
          v18 = a2 - 1;
          do
          {
            v20 = *(a3 - 4 + 4 * v18);
            if (v20 < 0)
            {
              v29 = 0;
              v30 = 0;
              v21 = sub_1002A80E0(&v29, 6);
              *v21 = 1027481715;
              *(v21 + 4) = 12320;
              sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
            }

            *(*(a1 + 48) + 4 * v18 - 4) = v20;
            v22 = v15;
            if (v18 <= v13)
            {
              v22 = *(a4 - 8 + 8 * v18);
            }

            v19 = *(a1 + 56) + 8 * v18--;
            *(v19 - 8) = v22;
          }

          while (v18 + 1 > 1);
        }
      }

      else if (a5)
      {
        v23 = (v14 << ((0xFA50u >> (2 * (*a1 & 7))) & 3));
        do
        {
          v25 = *(a3 + 4 * v13);
          if (v25 < 0)
          {
            v29 = 0;
            v30 = 0;
            v26 = sub_1002A80E0(&v29, 6);
            *v26 = 1027481715;
            *(v26 + 4) = 12320;
            sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
          }

          *(*(a1 + 48) + 4 * v13) = v25;
          *(*(a1 + 56) + 8 * v13) = v23;
          v23 *= v25;
          v24 = v13-- <= 0;
        }

        while (!v24);
      }

      else
      {
        do
        {
          v27 = *(a3 + 4 * v13);
          if (v27 < 0)
          {
            v29 = 0;
            v30 = 0;
            v28 = sub_1002A80E0(&v29, 6);
            *v28 = 1027481715;
            *(v28 + 4) = 12320;
            sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
          }

          *(*(a1 + 48) + 4 * v13) = v27;
          v24 = v13-- <= 0;
        }

        while (!v24);
      }

      if (a2 == 1)
      {
        *(a1 + 4) = 2;
        *(a1 + 12) = 1;
        *(*(a1 + 56) + 8) = v15;
      }
    }
  }
}

void sub_1002AF980(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = 1124007936;
  v66 = 0;
  v67 = 0;
  memset(v65, 0, 24);
  v68 = &v65[1];
  v69 = v70;
  v70[0] = 0;
  v70[1] = 0;
  v5 = a1[2];
  if (!v5)
  {
    *a4 = 1124007936;
    *(a4 + 4) = 0;
    *(a4 + 20) = 0;
    *(a4 + 12) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 64) = 0;
    *(a4 + 48) = a4 + 8;
    *(a4 + 56) = a4 + 64;
    *(a4 + 72) = 0;
LABEL_38:
    memset(v65, 0, 20);
    v67 = 0;
    goto LABEL_39;
  }

  if (v5 == a1[3])
  {
LABEL_6:
    v10 = a1[6];
    v11 = sub_100268CC8();
    if (v10)
    {
      v11 = v10;
    }

    v12 = (*(*v11 + 16))(v11, *(a1 + 1), a1[8], *a1 & 0xFFF, a1[2], a1[9], a2 | 0x3000000, a3);
    v13 = sub_100268CC8();
    if (((*(*v13 + 24))(v13, v12, a2 | 0x3000000, a3) & 1) == 0)
    {
      v14 = sub_100268CC8();
      if (((*(*v14 + 24))(v14, v12, a2 | 0x3000000, a3) & 1) == 0)
      {
        v54 = 0uLL;
        v15 = sub_1002A80E0(&v54, 9);
        *(v15 + 8) = 100;
        *v15 = *"allocated";
        sub_1002A8980(-215, &v54, "getUMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 309);
      }
    }

    v16 = a1[7];
    if (v16)
    {
      *(v12 + 80) = v16;
      atomic_fetch_add((v16 + 20), 1u);
      atomic_fetch_add((a1[7] + 16), 1u);
    }

    v17 = *(a1 + 1);
    v64 = *a1;
    sub_1002AF5B8(&v64, v17, a1[8], a1[9], 0);
    v18 = v65[0];
    v19 = v65[0];
    if (v65[0] < 1)
    {
      v28 = 0;
    }

    else
    {
      v20 = 0;
      while (v68[v20] <= 1)
      {
        if (v65[0] == ++v20)
        {
          LODWORD(v20) = v65[0];
          break;
        }
      }

      v28 = v20;
    }

    v29 = v69;
    while (1)
    {
      v30 = v19 - 1;
      if (v19 - 1 <= v28)
      {
        break;
      }

      v31 = v68[v19 - 1];
      v32 = &v69[8 * v19];
      v33 = *(v32 - 2);
      v34 = *(v32 - 1) * v31;
      v19 = v30;
      if (v34 < v33)
      {
        v35 = v64 & 0xFFFFBFFF;
        v64 &= ~0x4000u;
        if (v65[0] < 3)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    v35 = v64 & 0xFFFFBFFF | 0x4000;
    v64 = v35;
    if (v65[0] < 3)
    {
      goto LABEL_31;
    }

LABEL_30:
    *&v65[1] = -1;
LABEL_31:
    v66 = v12;
    v67 = 0;
    if (v12)
    {
      atomic_fetch_add((v12 + 16), 1u);
      v35 = v64;
      v18 = v65[0];
      v37 = v66;
      v36 = v67;
      v29 = v69;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    *a4 = v35;
    *(a4 + 4) = v18;
    *(a4 + 8) = *&v65[1];
    *(a4 + 16) = *&v65[3];
    *(a4 + 24) = v65[5];
    *(a4 + 32) = v37;
    *(a4 + 40) = v36;
    *(a4 + 64) = 0;
    *(a4 + 48) = a4 + 8;
    *(a4 + 56) = a4 + 64;
    *(a4 + 72) = 0;
    if (v18 > 2)
    {
      *(a4 + 48) = v68;
      *(a4 + 56) = v29;
      v68 = &v65[1];
      v69 = v70;
    }

    else
    {
      *(a4 + 64) = *v29;
      *(a4 + 72) = v29[1];
    }

    v64 = 1124007936;
    goto LABEL_38;
  }

  v62 = 0;
  v63 = 0;
  sub_10026BBAC(a1, &v63, &v62);
  if (!*&v62)
  {
    if (a1[2] != a1[3])
    {
      v54 = 0uLL;
      v9 = sub_1002A80E0(&v54, 17);
      *(v9 + 16) = 116;
      *v9 = *"data == datastart";
      sub_1002A8980(-215, &v54, "getUMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 287);
    }

    goto LABEL_6;
  }

  v21 = *a1;
  *&v22 = *a1;
  v46 = a1[1];
  *(&v22 + 1) = v46;
  v23 = *(a1 + 1);
  v24 = *(a1 + 2);
  v54 = v22;
  v55 = v23;
  v56 = v24;
  v25 = a1[7];
  v57 = a1[6];
  v58 = v25;
  v59 = &v54 + 8;
  v60 = v61;
  v61[0] = 0;
  v61[1] = 0;
  if (v25)
  {
    atomic_fetch_add((v25 + 20), 1u);
    if (*(a1 + 1) <= 2)
    {
LABEL_21:
      v26 = a1[9];
      v27 = v60;
      *v60 = *v26;
      v27[1] = v26[1];
      goto LABEL_44;
    }
  }

  else if (SHIDWORD(v21) <= 2)
  {
    goto LABEL_21;
  }

  DWORD1(v54) = 0;
  sub_100269B58(&v54, a1);
LABEL_44:
  sub_10026BD20(&v54, v62.u32[1], HIDWORD(v63) - (v62.i32[1] + DWORD2(v54)), v62.u32[0], v63 - (v62.i32[0] + HIDWORD(v54)));
  sub_1002AF980(&v54, a2, a3, v48);
  v47[0] = v62;
  v47[1] = vrev64_s32(v46);
  sub_1002B10EC(a4, v48, v47);
  if (v50 && atomic_fetch_add((v50 + 16), 0xFFFFFFFF) == 1)
  {
    v38 = v50;
    v50 = 0;
    (*(**(v38 + 8) + 32))(*(v38 + 8));
  }

  if (v49 >= 1)
  {
    v39 = 0;
    v40 = v51;
    do
    {
      *(v40 + 4 * v39++) = 0;
    }

    while (v39 < v49);
  }

  v50 = 0;
  if (v52 != &v53)
  {
    j__free(v52);
  }

  if (v58 && atomic_fetch_add((v58 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v54);
  }

  v58 = 0;
  v55 = 0u;
  v56 = 0u;
  if (SDWORD1(v54) >= 1)
  {
    v41 = 0;
    v42 = v59;
    do
    {
      *&v42[4 * v41++] = 0;
    }

    while (v41 < SDWORD1(v54));
  }

  if (v60 != v61)
  {
    j__free(v60);
  }

  if (v66 && atomic_fetch_add((v66 + 16), 0xFFFFFFFF) == 1)
  {
    v43 = v66;
    v66 = 0;
    (*(**(v43 + 8) + 32))(*(v43 + 8));
  }

  if (v65[0] >= 1)
  {
    v44 = 0;
    v45 = v68;
    do
    {
      v45[v44++] = 0;
    }

    while (v44 < v65[0]);
  }

LABEL_39:
  v66 = 0;
  if (v69 != v70)
  {
    j__free(v69);
  }
}

uint64_t sub_1002B00D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && atomic_fetch_add((v2 + 16), 0xFFFFFFFF) == 1)
  {
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(**(v3 + 8) + 32))(*(v3 + 8));
  }

  if (*(a1 + 4) >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 48);
    do
    {
      *(v5 + 4 * v4++) = 0;
    }

    while (v4 < *(a1 + 4));
  }

  *(a1 + 32) = 0;
  v6 = *(a1 + 56);
  if (v6 != (a1 + 64))
  {
    j__free(v6);
  }

  return a1;
}

void sub_1002B018C(uint64_t a1, unsigned int a2, uint64_t *__src, __int16 a4, int a5)
{
  v5 = __src;
  *(a1 + 24) = a5;
  if (a2 > 0x20 || !__src)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    qmemcpy(sub_1002A80E0(__dst, 27), "0 <= d && d <= 32 && _sizes", 27);
    sub_1002A8980(-215, __dst, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 337);
  }

  v8 = a4 & 0xFFF;
  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = *(a1 + 4);
  if (v10 == a2)
  {
    if (v8 != (*a1 & 0xFFF))
    {
      goto LABEL_25;
    }

    if (a2 == 2)
    {
      if (*(a1 + 8) == *__src && *(a1 + 12) == *(__src + 1))
      {
        return;
      }
    }

    else if (a2 < 1)
    {
      LODWORD(v12) = 0;
      goto LABEL_22;
    }

LABEL_17:
    v12 = 0;
    while (*(*(a1 + 48) + 4 * v12) == *(__src + v12))
    {
      if (a2 == ++v12)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    if (v12 == a2)
    {
LABEL_23:
      if (a2 > 1 || *(*(a1 + 48) + 4) == 1)
      {
        return;
      }
    }

LABEL_25:
    v11 = (a1 + 48);
    if (*(a1 + 48) != __src)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (a2 != 1 || v10 >= 3)
  {
    goto LABEL_25;
  }

  if (v8 == (*a1 & 0xFFF))
  {
    goto LABEL_17;
  }

  v11 = (a1 + 48);
  if (*(a1 + 48) == __src)
  {
LABEL_29:
    memcpy(__dst, __src, 4 * a2);
LABEL_30:
    v5 = __dst;
    if (!v9)
    {
      goto LABEL_33;
    }
  }

LABEL_31:
  if (atomic_fetch_add((v9 + 16), 0xFFFFFFFF) == 1)
  {
    v13 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(**(v13 + 8) + 32))(*(v13 + 8));
  }

LABEL_33:
  if (*(a1 + 4) >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      *(v15 + 4 * v14++) = 0;
    }

    while (v14 < *(a1 + 4));
  }

  *(a1 + 32) = 0;
  if (!a2)
  {
    return;
  }

  *a1 = v8 | 0x42FF0000;
  sub_1002AF5B8(a1, a2, v5, 0, 1);
  *(a1 + 40) = 0;
  v16 = *(a1 + 4);
  if (v16 >= 3)
  {
    v18 = (*v11 + 4);
    v19 = 1;
    v20 = v16 & 0x7FFFFFFE;
    v21 = 1;
    do
    {
      v19 *= *(v18 - 1);
      v21 *= *v18;
      v18 += 2;
      v20 -= 2;
    }

    while (v20);
    v17 = v21 * v19;
    v22 = v16 - (v16 & 0x7FFFFFFE);
    if (v22)
    {
      v23 = (*v11 + 8 * ((v16 >> 1) & 0x3FFFFFFF));
      do
      {
        v24 = *v23++;
        v17 *= v24;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v17 = *(a1 + 12) * *(a1 + 8);
  }

  if (v17)
  {
    v25 = *(a1 + 16);
    v26 = sub_100268CC8();
    if (!v25)
    {
      sub_100268CC8();
      v25 = v26;
    }

    v27 = (*(*v25 + 16))(v25, *(a1 + 4), *(a1 + 48), v8, 0, *(a1 + 56), 0, *(a1 + 24));
    *(a1 + 32) = v27;
    if (!v27)
    {
      v37 = 0;
      v38 = 0;
      v28 = sub_1002A80E0(&v37, 6);
      *(v28 + 4) = 12320;
      *v28 = 1025581173;
      sub_1002A8980(-215, &v37, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 377);
    }

    v29 = *(a1 + 4);
    if (*(*(a1 + 56) + 8 * v29 - 8) != (((*a1 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*a1 & 7))) & 3))
    {
      v37 = 0;
      v38 = 0;
      qmemcpy(sub_1002A80E0(&v37, 146), "step[dims-1] == (size_t)(((((flags) & ((512 - 1) << 3)) >> 3) + 1) << ((((sizeof(size_t)/4+1)*16384|0x3a50) >> ((flags) & ((1 << 3) - 1))*2) & 3))", 146);
      sub_1002A8980(-215, &v37, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 385);
    }

    v16 = v29;
    v30 = *v11;
    if (v29 >= 1)
    {
LABEL_52:
      v31 = 0;
      while (*(v30 + 4 * v31) <= 1)
      {
        if (v16 == ++v31)
        {
          LODWORD(v31) = v16;
          break;
        }
      }

      v31 = v31;
      goto LABEL_59;
    }
  }

  else
  {
    v16 = v16;
    v30 = *v11;
    if (*(a1 + 4) >= 1)
    {
      goto LABEL_52;
    }
  }

  v31 = 0;
LABEL_59:
  v32 = (*(a1 + 56) + 8 * v16 - 8);
  v33 = v16 - 1;
  while (v33 > v31)
  {
    v34 = *v32 * *(v30 + 4 * v33);
    v35 = *--v32;
    --v33;
    if (v34 < v35)
    {
      *a1 &= ~0x4000u;
      if (v16 < 3)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }
  }

  *a1 = *a1 & 0xFFFFBFFF | 0x4000;
  if (v16 < 3)
  {
    goto LABEL_66;
  }

LABEL_65:
  *(a1 + 8) = -1;
LABEL_66:
  v36 = *(a1 + 32);
  if (v36)
  {
    atomic_fetch_add((v36 + 16), 1u);
  }
}

void sub_1002B06C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B07FC(uint64_t a1, uint64_t a2)
{
  sub_1002AF5B8(a1, *(a2 + 4), 0, 0, 0);
  if (*(a1 + 4) >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 48);
    v6 = *(a2 + 56);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    do
    {
      *(v7 + 4 * v4) = *(v5 + 4 * v4);
      *(v8 + 8 * v4) = *(v6 + 8 * v4);
      ++v4;
    }

    while (v4 < *(a1 + 4));
  }
}

uint64_t sub_1002B086C(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  return (*(**(v1 + 8) + 32))();
}

uint64_t sub_1002B089C(uint64_t a1, _DWORD *a2, int *a3, uint64_t *a4)
{
  *a1 = 1124007936;
  *(a1 + 4) = 0;
  v8 = (a1 + 4);
  *(a1 + 32) = 0;
  v9 = (a1 + 32);
  v10 = (a1 + 8);
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 8;
  *(a1 + 64) = 0;
  v11 = (a1 + 64);
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  v12 = a2[1];
  if (v12 < 2)
  {
    v48 = 0;
    v49 = 0;
    v13 = sub_1002A80E0(&v48, 11);
    *(v13 + 7) = 840973630;
    *v13 = *"m.dims >= 2";
    sub_1002A8980(-215, &v48, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 426);
  }

  if (v12 > 2)
  {
    v40 = a1 + 8;
    bzero(v50, 0x440uLL);
    v48 = v50;
    v49 = v12;
    if (v12 > 0x88)
    {
      operator new[]();
    }

    v19 = *a4;
    v50[0] = *a3;
    v50[1] = v19;
    v20 = 2;
    do
    {
      v48[v20++] = 0x7FFFFFFF80000000;
    }

    while (v20 < a2[1]);
    sub_1002B13FC(v41, a2, v48);
    if (v41 == a1)
    {
      if (v43 && atomic_fetch_add((v43 + 16), 0xFFFFFFFF) == 1)
      {
        v28 = v43;
        v43 = 0;
        (*(**(v28 + 8) + 32))(*(v28 + 8));
      }

      goto LABEL_44;
    }

    if (*v9 && atomic_fetch_add((*v9 + 16), 0xFFFFFFFF) == 1)
    {
      v21 = *v9;
      *v9 = 0;
      (*(**(v21 + 8) + 32))(*(v21 + 8));
    }

    if (*v8 >= 1)
    {
      v22 = 0;
      v23 = *(a1 + 48);
      do
      {
        *(v23 + 4 * v22++) = 0;
      }

      while (v22 < *v8);
    }

    v24 = *&v41[4];
    *a1 = *v41;
    *(a1 + 16) = *&v41[16];
    *(a1 + 24) = v42;
    v25 = v44;
    *(a1 + 32) = v43;
    *(a1 + 40) = v25;
    v26 = *(a1 + 56);
    if (v26 == v11)
    {
      v27 = v46;
      if (v24 <= 2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      j__free(v26);
      *(a1 + 48) = v40;
      *(a1 + 56) = v11;
      v26 = v11;
      v27 = v46;
      if (*&v41[4] <= 2)
      {
LABEL_31:
        *v26 = *v27;
        v26[1] = v27[1];
LABEL_43:
        *v41 = 1124007936;
        memset(&v41[4], 0, 20);
        v43 = 0;
        v44 = 0;
LABEL_44:
        if (*&v41[4] >= 1)
        {
          v32 = 0;
          v33 = v45;
          do
          {
            *&v33[4 * v32++] = 0;
          }

          while (v32 < *&v41[4]);
        }

        v43 = 0;
        if (v46 != v47)
        {
          j__free(v46);
        }

        if (v48 != v50 && v48 != 0)
        {
          operator delete[]();
        }

        return a1;
      }
    }

    *(a1 + 48) = v45;
    *(a1 + 56) = v27;
    v45 = &v41[8];
    v46 = v47;
    goto LABEL_43;
  }

  sub_1002B0F5C(a1, a2);
  v14 = *a3;
  v15 = a3[1];
  if (*a3 != 0x7FFFFFFF80000000 && (v14 || v15 != *v10))
  {
    if (v14 < 0 || v14 > v15 || v15 > a2[2])
    {
      v48 = 0;
      v49 = 0;
      qmemcpy(sub_1002A80E0(&v48, 83), "0 <= _rowRange.start && _rowRange.start <= _rowRange.end && _rowRange.end <= m.rows", 83);
      sub_1002A8980(-215, &v48, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 441);
    }

    *(a1 + 8) = v15 - v14;
    *(a1 + 40) += *(a1 + 64) * v14;
    *a1 |= 0x8000u;
  }

  v16 = *a4;
  v17 = *(a4 + 1);
  if (*a4 == 0x80000000 && v17 == 0x7FFFFFFF || !v16 && v17 == *(a1 + 12))
  {
    v18 = *v10 < 1;
    if (*v10 == 1)
    {
LABEL_19:
      *a1 |= 0x4000u;
      goto LABEL_60;
    }
  }

  else
  {
    if (v16 < 0 || v16 > v17 || v17 > a2[3])
    {
      v48 = 0;
      v49 = 0;
      qmemcpy(sub_1002A80E0(&v48, 83), "0 <= _colRange.start && _colRange.start <= _colRange.end && _colRange.end <= m.cols", 83);
      sub_1002A8980(-215, &v48, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 449);
    }

    v29 = v17 - v16;
    *(a1 + 12) = v29;
    v30 = *(a1 + 4);
    if (v30 < 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(*(a1 + 56) + 8 * v30 - 8);
    }

    *(a1 + 40) += v31 * v16;
    if (v29 >= a2[3])
    {
      v35 = -32769;
    }

    else
    {
      v35 = -49153;
    }

    *a1 = v35 & *a1 | 0x8000;
    v18 = *v10 < 1;
    if (*v10 == 1)
    {
      goto LABEL_19;
    }
  }

  if (!v18)
  {
LABEL_60:
    if (*(a1 + 12) > 0)
    {
      return a1;
    }
  }

  if (*v9 && atomic_fetch_add((*v9 + 16), 0xFFFFFFFF) == 1)
  {
    v36 = *v9;
    *v9 = 0;
    (*(**(v36 + 8) + 32))(*(v36 + 8));
  }

  if (*v8 >= 1)
  {
    v37 = 0;
    v38 = *(a1 + 48);
    do
    {
      *(v38 + 4 * v37++) = 0;
    }

    while (v37 < *v8);
  }

  *v9 = 0;
  *v10 = 0;
  return a1;
}

void sub_1002B0ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B0F5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add((v3 + 16), 1u);
  }

  v4 = *(result + 32);
  if (v4 && atomic_fetch_add((v4 + 16), 0xFFFFFFFF) == 1)
  {
    v5 = *(result + 32);
    *(result + 32) = 0;
    v6 = result;
    (*(**(v5 + 8) + 32))(*(v5 + 8));
    result = v6;
  }

  if (*(result + 4) <= 0)
  {
    *(result + 32) = 0;
    *result = *a2;
  }

  else
  {
    v7 = 0;
    v8 = *(result + 48);
    do
    {
      *(v8 + 4 * v7++) = 0;
      v9 = *(result + 4);
    }

    while (v7 < v9);
    *(result + 32) = 0;
    *result = *a2;
    if (v9 >= 3)
    {
      v10 = *(a2 + 4);
      goto LABEL_15;
    }
  }

  v10 = *(a2 + 4);
  if (v10 > 2)
  {
LABEL_15:
    v13 = result;
    sub_1002AF5B8(result, v10, 0, 0, 0);
    result = v13;
    if (*(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      do
      {
        *(v17 + 4 * v14) = *(v15 + 4 * v14);
        *(v18 + 8 * v14) = *(v16 + 8 * v14);
        ++v14;
      }

      while (v14 < *(v13 + 4));
    }

    goto LABEL_18;
  }

  *(result + 4) = v10;
  *(result + 8) = *(a2 + 8);
  v11 = *(a2 + 56);
  v12 = *(result + 56);
  *v12 = *v11;
  v12[1] = v11[1];
LABEL_18:
  *(result + 16) = *(a2 + 16);
  if (!*(result + 24))
  {
    *(result + 24) = *(a2 + 24);
  }

  v19 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v19;
  return result;
}

int32x2_t *sub_1002B10EC(int32x2_t *result, uint64_t a2, int32x2_t *a3)
{
  v3 = result;
  v4 = *a2;
  result->i32[0] = *a2;
  result->i32[1] = 2;
  result[1] = vrev64_s32(a3[1]);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = a3->i32[1];
  v10 = **(a2 + 56);
  result[8] = 0;
  result[2] = v5;
  result[3].i32[0] = v6;
  v11 = (v8 + v10 * v9);
  result[4] = v7;
  result[5] = v11;
  result[6] = &result[1];
  result[7] = &result[8];
  result[9] = 0;
  if (*(a2 + 4) >= 3)
  {
    v26 = 0;
    v27 = 0;
    v12 = sub_1002A80E0(&v26, 11);
    *(v12 + 7) = 840973628;
    *v12 = *"m.dims <= 2";
    sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 471);
  }

  v13 = *(a2 + 12);
  v15 = a3[1].i32[0];
  v14 = a3[1].i32[1];
  if (v15 >= v13)
  {
    v16 = -1;
  }

  else
  {
    v16 = -16385;
  }

  result->i32[0] = v16 & v4 | ((v14 == 1) << 14);
  v17 = (((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3);
  v18 = a3->i32[0];
  result[5] = (*&v11 + v17 * a3->i32[0]);
  if (v18 < 0 || v15 < 0 || v18 + v15 > v13 || (v19 = a3->i32[1], v19 < 0) || v14 < 0 || v19 + v14 > *(a2 + 8))
  {
    v26 = 0;
    v27 = 0;
    qmemcpy(sub_1002A80E0(&v26, 124), "0 <= roi.x && 0 <= roi.width && roi.x + roi.width <= m.cols && 0 <= roi.y && 0 <= roi.height && roi.y + roi.height <= m.rows", 124);
    sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 478);
  }

  v20 = result[4];
  if (v20)
  {
    atomic_fetch_add((*&v20 + 16), 1u);
  }

  if (a3[1].i32[0] < *(a2 + 12) || a3[1].i32[1] < *(a2 + 8))
  {
    result->i32[0] |= 0x8000u;
  }

  v21 = result[7];
  *v21 = **(a2 + 56);
  v21[1] = v17;
  if (result[1].i32[0] < 1 || result[1].i32[1] <= 0)
  {
    v22 = result[4];
    if (*&v22 && atomic_fetch_add((*&v22 + 16), 0xFFFFFFFF) == 1)
    {
      v23 = result[4];
      result[4] = 0;
      (*(**(*&v23 + 8) + 32))(*(*&v23 + 8));
    }

    if (v3->i32[1] >= 1)
    {
      v24 = 0;
      v25 = v3[6];
      do
      {
        *(*&v25 + 4 * v24++) = 0;
      }

      while (v24 < v3->i32[1]);
    }

    v3[4] = 0;
    v3[1] = 0;
    return v3;
  }

  return result;
}

uint64_t sub_1002B13FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1124007936;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a1 + 8;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  v5 = *(a2 + 4);
  if (!a3)
  {
    v26 = 0;
    v27 = 0;
    v6 = sub_1002A80E0(&v26, 6);
    *v6 = 1735287154;
    *(v6 + 4) = 29541;
    sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 499);
  }

  if (v5 <= 0)
  {
    sub_1002B0F5C(a1, a2);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = *(a3 + 8 * i);
      v9 = v8 == 0x80000000 && HIDWORD(v8) == 0x7FFFFFFF;
      if (!v9 && ((v8 & 0x80000000) != 0 || v8 >= SHIDWORD(v8) || *(*(a2 + 48) + 4 * i) < SHIDWORD(v8)))
      {
        v26 = 0;
        v27 = 0;
        qmemcpy(sub_1002A80E0(&v26, 76), "r == Range::all() || (0 <= r.start && r.start < r.end && r.end <= m.size[i])", 76);
        sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 503);
      }
    }

    sub_1002B0F5C(a1, a2);
    for (j = 0; j != v5; ++j)
    {
      v11 = *(a3 + 8 * j);
      if (v11 != 0x80000000 || HIDWORD(v11) != 0x7FFFFFFF)
      {
        v13 = *(a1 + 48);
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v13 + 4 * j) == HIDWORD(v11);
        }

        if (!v14)
        {
          *(v13 + 4 * j) = HIDWORD(v11) - v11;
          *(a1 + 40) += *(*(a1 + 56) + 8 * j) * v11;
          *a1 |= 0x8000u;
        }
      }
    }
  }

  v15 = *(a1 + 4);
  v16 = v15;
  v17 = *(a1 + 48);
  if (v15 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    while (*(v17 + 4 * v18) <= 1)
    {
      if (v15 == ++v18)
      {
        LODWORD(v18) = *(a1 + 4);
        break;
      }
    }

    v19 = v18;
  }

  v20 = (*(a1 + 56) + 8 * v16 - 8);
  v21 = v16 - 1;
  while (v21 > v19)
  {
    v22 = *v20 * *(v17 + 4 * v21);
    v23 = *--v20;
    --v21;
    if (v22 < v23)
    {
      v24 = 0;
      goto LABEL_38;
    }
  }

  v24 = 0x4000;
LABEL_38:
  *a1 = *a1 & 0xFFFFBFFF | v24;
  return a1;
}

void sub_1002B16DC(uint64_t a1, uint64_t a2)
{
  sub_1002ACE7C(v67, &off_1004757F0);
  v4 = sub_100271A88(a2, -1);
  if (sub_100275364(a2) && v4 != (*a1 & 0xFFF))
  {
    if (((*a1 ^ v4) & 0xFF8) != 0)
    {
      v69[0] = 0uLL;
      qmemcpy(sub_1002A80E0(v69, 55), "channels() == ((((dtype) & ((512 - 1) << 3)) >> 3) + 1)", 55);
      sub_1002A8980(-215, v69, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 820);
    }

    sub_1002B2164(a1, a2, v4, 1.0, 0.0);
    goto LABEL_20;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 4);
  if (v5 >= 3)
  {
    v7 = *(a1 + 48);
    v8 = (v7 + 4);
    v9 = 1;
    v10 = v5 & 0x7FFFFFFE;
    v11 = 1;
    do
    {
      v9 *= *(v8 - 1);
      v11 *= *v8;
      v8 += 2;
      v10 -= 2;
    }

    while (v10);
    v6 = v11 * v9;
    v12 = v5 - (v5 & 0x7FFFFFFE);
    if (v12)
    {
      v13 = (v7 + 8 * ((v5 >> 1) & 0x3FFFFFFF));
      do
      {
        v14 = *v13++;
        v6 *= v14;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v6 = *(a1 + 12) * *(a1 + 8);
  }

  if (!v5 || !v6)
  {
LABEL_19:
    sub_100274CEC(a2);
    goto LABEL_20;
  }

  memset(v70, 0, sizeof(v70));
  memset(v69, 0, sizeof(v69));
  if (v5 < 1)
  {
    v15 = 0;
    v16 = *(a1 + 48);
  }

  else
  {
    v15 = *(*(a1 + 56) + 8 * v5 - 8);
    v16 = *(a1 + 48);
    if (v5 < 8)
    {
      v17 = 0;
LABEL_27:
      v26 = v5 - v17;
      v27 = v69 + v17;
      v28 = (v16 + 4 * v17);
      do
      {
        v29 = *v28++;
        *v27++ = v29;
        --v26;
      }

      while (v26);
      goto LABEL_29;
    }
  }

  v17 = v5 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 16;
  v19 = v70;
  v20 = v5 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v21 = *(v18 - 16);
    *&v22 = v21;
    *(&v22 + 1) = SDWORD1(v21);
    v23 = v22;
    *&v22 = SDWORD2(v21);
    *(&v22 + 1) = SHIDWORD(v21);
    v24 = v22;
    *&v22 = *v18;
    *(&v22 + 1) = HIDWORD(*v18);
    v25 = v22;
    *&v22 = *(v18 + 8);
    *(&v22 + 1) = HIDWORD(*v18);
    *(v19 - 2) = v23;
    *(v19 - 1) = v24;
    *v19 = v25;
    v19[1] = v22;
    v19 += 4;
    v18 += 32;
    v20 -= 8;
  }

  while (v20);
  if (v17 != v5)
  {
    goto LABEL_27;
  }

LABEL_29:
  *(v69 + v5 - 1) *= v15;
  if (v5 >= 1)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 56);
    v32 = v68;
    v33 = v5;
    do
    {
      v34 = *v31++;
      *v32++ = v30 / v34;
      v30 %= v34;
      --v33;
    }

    while (v33);
  }

  v68[v5 - 1] *= v15;
  sub_10026BEEC(a2, v5, *(a1 + 48), *a1 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) == 655360)
  {
    sub_100271FE8(a2, 0xFFFFFFFFLL, &v58);
    v35 = v60;
    if (!v60)
    {
      v66[0] = 0;
      v66[1] = 0;
      v36 = sub_1002A80E0(v66, 5);
      *(v36 + 4) = 117;
      *v36 = 779383652;
      sub_1002A8980(-215, v66, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 842);
    }

    if (v60 != *(a1 + 32))
    {
      v37 = *(*(a1 + 32) + 8);
      if (v37 != *(v60 + 8))
      {
        if (atomic_fetch_add((v60 + 16), 0xFFFFFFFF) == 1)
        {
          v38 = v60;
          *&v60 = 0;
          (*(**(v38 + 8) + 32))(*(v38 + 8));
        }

        if (SDWORD1(v58) >= 1)
        {
          v39 = 0;
          v40 = v61;
          do
          {
            *(v40 + 4 * v39++) = 0;
          }

          while (v39 < SDWORD1(v58));
        }

        *&v60 = 0;
        if (v62 != &v63)
        {
          j__free(v62);
        }

        goto LABEL_44;
      }

      if (v58 > 0)
      {
        v47 = 0;
        v48 = *(&v60 + 1);
        v49 = v62;
        v50 = 8 * DWORD1(v58);
        do
        {
          v51 = *&v49[v47];
          *&v67[v47 / 4 + 4] = v48 / v51;
          v48 %= v51;
          v47 += 8;
        }

        while (v50 != v47);
      }

      *&v67[2 * *(a1 + 4) + 2] *= v15;
      (*(*v37 + 72))(v37);
      v35 = v60;
    }

    if (v35 && atomic_fetch_add((v35 + 16), 0xFFFFFFFF) == 1)
    {
      v55 = v60;
      *&v60 = 0;
      (*(**(v55 + 8) + 32))(*(v55 + 8));
    }

    if (SDWORD1(v58) >= 1)
    {
      v56 = 0;
      v57 = v61;
      do
      {
        *(v57 + 4 * v56++) = 0;
      }

      while (v56 < SDWORD1(v58));
    }

    *&v60 = 0;
    v54 = v62;
    if (v62 != &v63)
    {
      goto LABEL_62;
    }

    goto LABEL_20;
  }

LABEL_44:
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v58);
    goto LABEL_55;
  }

  v41 = *(a2 + 8);
  v42 = *v41;
  v43 = *(v41 + 16);
  v58 = *v41;
  v59 = v43;
  v60 = *(v41 + 32);
  v44 = *(v41 + 56);
  v61 = *(v41 + 48);
  v62 = v44;
  v63 = &v58 + 8;
  v64 = v65;
  v65[0] = 0;
  v65[1] = 0;
  if (!v44)
  {
    if (SDWORD1(v42) <= 2)
    {
      goto LABEL_47;
    }

LABEL_54:
    DWORD1(v58) = 0;
    sub_100269B58(&v58, v41);
    goto LABEL_55;
  }

  atomic_fetch_add(v44 + 5, 1u);
  if (*(v41 + 4) > 2)
  {
    goto LABEL_54;
  }

LABEL_47:
  v45 = *(v41 + 72);
  v46 = v64;
  *v64 = *v45;
  v46[1] = v45[1];
LABEL_55:
  (*(**(*(a1 + 32) + 8) + 56))(*(*(a1 + 32) + 8), *(a1 + 32), v59, *(a1 + 4), v69, v68, *(a1 + 56), v64);
  if (v62 && atomic_fetch_add(v62 + 5, 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v58);
  }

  v62 = 0;
  v59 = 0u;
  v60 = 0u;
  if (SDWORD1(v58) >= 1)
  {
    v52 = 0;
    v53 = v63;
    do
    {
      *&v53[4 * v52++] = 0;
    }

    while (v52 < SDWORD1(v58));
  }

  v54 = v64;
  if (v64 != v65)
  {
LABEL_62:
    j__free(v54);
  }

LABEL_20:
  if (v67[2])
  {
    sub_1002ACC1C(v67);
  }
}

void sub_1002B1D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_1002B00D8(va);
  sub_1001D8BF4(va1);
  _Unwind_Resume(a1);
}

void sub_1002B1DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1002A8124(&STACK[0x290]);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_100006D14(va);
  sub_1001D8BF4(va1);
  _Unwind_Resume(a1);
}

void sub_1002B1E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1E44(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B1E74@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(result + 32);
  if (v4)
  {
    v6 = result;
    v14 = *(result + 32);
    sub_1002A93EC(&qword_1004BE3D0 + v4 % 0x1F);
    if (!atomic_fetch_add((*(v6 + 32) + 20), 1u))
    {
      (*(**(*(v6 + 32) + 8) + 40))(*(*(v6 + 32) + 8), *(v6 + 32), a2 | 0x3000000u);
    }

    v7 = *(v6 + 32);
    v8 = *(v7 + 24);
    if (v8)
    {
      sub_100267C58(a3, *(v6 + 4), *(v6 + 48), *v6 & 0xFFF, v8 + *(v6 + 40), *(v6 + 56));
      *a3 = *v6;
      v9 = *(v6 + 32);
      v10 = *(v6 + 40);
      *(a3 + 56) = v9;
      v11 = *(v9 + 24);
      *(a3 + 16) = v11 + v10;
      *(a3 + 24) = v11;
      v12 = v11 + *(v9 + 40);
      *(a3 + 32) = v12;
      *(a3 + 40) = v12;
    }

    else
    {
      atomic_fetch_add((v7 + 20), 0xFFFFFFFF);
      if (!*(*(v6 + 32) + 24))
      {
        v13[0] = 0;
        v13[1] = 0;
        qmemcpy(sub_1002A80E0(v13, 55), "u->data != 0 && Error mapping of UMat to host memory.", 55);
        sub_1002A8980(-215, v13, "getMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 778);
      }

      *a3 = 1124007936;
      *(a3 + 4) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 80) = 0;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
    }

    return sub_1002A93F4(&qword_1004BE3D0 + v14 % 0x1F);
  }

  else
  {
    *a3 = 1124007936;
    *(a3 + 4) = 0u;
    *(a3 + 20) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 64) = a3 + 8;
    *(a3 + 72) = a3 + 80;
    *(a3 + 88) = 0;
  }

  return result;
}

void sub_1002B20A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002B20D0(va1);
  _Unwind_Resume(a1);
}

void *sub_1002B20D0(void *a1)
{
  v2 = (*a1 * 0x842108421084211uLL) >> 64;
  sub_1002A93F4(&qword_1004BE3D0 + *a1 - 31 * ((v2 + ((*a1 - v2) >> 1)) >> 4));
  return a1;
}

uint64_t sub_1002B2134(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 4);
  if (v2 >= 1)
  {
    v3 = *(result + 40);
    v4 = *(result + 56);
    do
    {
      v5 = *v4++;
      *a2++ = v3 / v5;
      v3 %= v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1002B2164(int *a1, int *a2, int a3, double a4, double a5)
{
  sub_1002ACE7C(v48, &off_100475810);
  v10 = fabs(a4 + -1.0) >= 2.22044605e-16;
  v11 = fabs(a5) >= 2.22044605e-16 || v10;
  v12 = *a1;
  if ((a3 & 0x80000000) == 0)
  {
    v13 = *a1 & 0xFF8 | a3 & 7;
    if (((v13 ^ v12) & 7) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_1002B16DC(a1, a2);
    goto LABEL_40;
  }

  if (!sub_100275364(a2))
  {
    v13 = v12 & 0xFFF;
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v13 = sub_100271A88(a2, -1);
  if (((v13 ^ v12) & 7) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v16 = *a1;
  v40 = *a1;
  v41 = *(a1 + 2);
  v42 = a1[6];
  v17 = *(a1 + 4);
  v18 = *(a1 + 5);
  v43 = v17;
  v44 = v18;
  v45 = &v40 + 8;
  v46 = v47;
  v47[0] = 0;
  v47[1] = 0;
  if (!v17)
  {
    v19 = DWORD1(v16);
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_19;
    }

LABEL_21:
    DWORD1(v40) = 0;
    sub_1002AF5B8(&v40, v19, 0, 0, 0);
    if (SDWORD1(v40) >= 1)
    {
      v22 = 0;
      v23 = *(a1 + 6);
      v24 = *(a1 + 7);
      v25 = v45;
      v26 = v46;
      do
      {
        *&v25[4 * v22] = *(v23 + 4 * v22);
        v26[v22] = *(v24 + 8 * v22);
        ++v22;
      }

      while (v22 < SDWORD1(v40));
    }

    goto LABEL_24;
  }

  atomic_fetch_add((v17 + 16), 1u);
  v19 = a1[1];
  if (v19 > 2)
  {
    goto LABEL_21;
  }

LABEL_19:
  v20 = *(a1 + 7);
  v21 = v46;
  *v46 = *v20;
  v21[1] = v20[1];
LABEL_24:
  sub_1002B1E74(a1, 0x1000000, &v32);
  sub_10020EF14(&v32, a2, v13, a4, a5);
  if (v36 && atomic_fetch_add((v36 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v32);
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  if (v33 >= 1)
  {
    v27 = 0;
    v28 = v37;
    do
    {
      *(v28 + 4 * v27++) = 0;
    }

    while (v27 < v33);
  }

  if (v38 != &v39)
  {
    j__free(v38);
  }

  if (v43 && atomic_fetch_add((v43 + 16), 0xFFFFFFFF) == 1)
  {
    v29 = v43;
    v43 = 0;
    (*(**(v29 + 8) + 32))(*(v29 + 8));
  }

  if (SDWORD1(v40) >= 1)
  {
    v30 = 0;
    v31 = v45;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < SDWORD1(v40));
  }

  v43 = 0;
  if (v46 != v47)
  {
    j__free(v46);
  }

LABEL_40:
  if (v48[2])
  {
    sub_1002ACC1C(v48);
  }
}

void sub_1002B247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_1002B00D8(va);
  sub_1001D8BF4(v20 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B24D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v18, &off_100475830);
  if (sub_1002743D4(a3))
  {
    v6 = 0x2000000;
  }

  else
  {
    v6 = 50331648;
  }

  sub_1002B1E74(a1, v6, &v10);
  sub_10022CDA0(&v10, a2, a3);
  if (v14 && atomic_fetch_add((v14 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v10);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  if (v11 >= 1)
  {
    v7 = 0;
    v8 = v15;
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < v11);
  }

  if (v16 != &v17)
  {
    j__free(v16);
  }

  if (v18[2])
  {
    sub_1002ACC1C(v18);
  }

  return a1;
}

void sub_1002B25DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

pthread_mutex_t **sub_1002B2620()
{
  sub_1002A9380(&qword_1004BE4C0);
  sub_1002A9380(&qword_1004BE4B8);
  sub_1002A9380(&qword_1004BE4B0);
  sub_1002A9380(&qword_1004BE4A8);
  sub_1002A9380(&qword_1004BE4A0);
  sub_1002A9380(&qword_1004BE498);
  sub_1002A9380(&qword_1004BE490);
  sub_1002A9380(&qword_1004BE488);
  sub_1002A9380(&qword_1004BE480);
  sub_1002A9380(&qword_1004BE478);
  sub_1002A9380(&qword_1004BE470);
  sub_1002A9380(&qword_1004BE468);
  sub_1002A9380(&qword_1004BE460);
  sub_1002A9380(&qword_1004BE458);
  sub_1002A9380(&qword_1004BE450);
  sub_1002A9380(&qword_1004BE448);
  sub_1002A9380(&qword_1004BE440);
  sub_1002A9380(&qword_1004BE438);
  sub_1002A9380(&qword_1004BE430);
  sub_1002A9380(&qword_1004BE428);
  sub_1002A9380(&qword_1004BE420);
  sub_1002A9380(&qword_1004BE418);
  sub_1002A9380(&qword_1004BE410);
  sub_1002A9380(&qword_1004BE408);
  sub_1002A9380(&qword_1004BE400);
  sub_1002A9380(&qword_1004BE3F8);
  sub_1002A9380(&qword_1004BE3F0);
  sub_1002A9380(&qword_1004BE3E8);
  sub_1002A9380(&qword_1004BE3E0);
  sub_1002A9380(&qword_1004BE3D8);

  return sub_1002A9380(&qword_1004BE3D0);
}

void sub_1002B2984(_Unwind_Exception *a1)
{
  do
  {
    sub_1002A9380(--v2);
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B29AC(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    operator new[]();
  }

  return result;
}

double sub_1002B2A0C(uint64_t a1)
{
  *a1 = off_100475860;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *&result = 0x8000;
  *(a1 + 48) = 0x8000;
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1002B2A48(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B2AD8(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);

  operator delete();
}

int64_t sub_1002B2B88(int64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 52) + (*(result + 32) - v1);
  v3 = *(result + 40);
  if (v3)
  {
    v4 = v2 / *(result + 48) * *(result + 48);
    *(result + 32) = v1 + v2 % *(result + 48);
    *(result + 52) = v4;
    v5 = result;
    fseek(v3, v4, 0);
    result = fread(*(v5 + 16), 1uLL, *(v5 + 48), *(v5 + 40));
    v6 = *(v5 + 16);
    *(v5 + 24) = v6 + result;
    *(v5 + 32) = v6;
    if (result <= 0)
    {
      exception = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(v11, "Unexpected end of input stream");
      sub_1001FA81C(v10, "readBlock");
      sub_1001FA81C(v9, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp");
      sub_1002A833C(exception, -2, v11, v10, v9, 110);
      *exception = &off_100475AD8;
    }
  }

  else
  {
    *(result + 32) = v1 + v2;
    *(result + 52) = 0;
    if ((v1 + v2) >= *(result + 24))
    {
      v8 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(v11, "Unexpected end of input stream");
      sub_1001FA81C(v10, "readBlock");
      sub_1001FA81C(v9, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp");
      sub_1002A833C(v8, -2, v11, v10, v9, 101);
      *v8 = &off_100475AD8;
    }
  }

  return result;
}

void sub_1002B2D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1002A8124(&a9);
  sub_1002A8124(&a11);
  sub_1002A8124(&a13);
  if (v14)
  {
    __cxa_free_exception(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002B2E24(uint64_t result, int a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    LODWORD(v2) = a2 / *(result + 48) * *(result + 48);
    a2 %= *(result + 48);
  }

  *(result + 32) = *(result + 16) + a2;
  *(result + 52) = v2;
  return result;
}

FILE *sub_1002B2E6C(uint64_t a1, const char **a2)
{
  (*(*a1 + 32))(a1);
  (*(*a1 + 56))(a1);
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  result = fopen(v4, "rb");
  *(a1 + 40) = result;
  if (result)
  {
    *(a1 + 56) = 1;
    *(a1 + 32) = *(a1 + 16);
    *(a1 + 52) = 0;
    (*(*a1 + 40))(a1);
    return (*(a1 + 40) != 0);
  }

  return result;
}

uint64_t sub_1002B2F4C(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 32))(a1);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 4);
  if (v5 >= 3)
  {
    v8 = *(a2 + 64);
    v9 = (v8 + 4);
    v10 = 1;
    v11 = v5 & 0x7FFFFFFE;
    v12 = 1;
    do
    {
      v10 *= *(v9 - 1);
      v12 *= *v9;
      v9 += 2;
      v11 -= 2;
    }

    while (v11);
    v6 = v12 * v10;
    v13 = v5 - (v5 & 0x7FFFFFFE);
    if (v13)
    {
      v14 = (v8 + 8 * ((v5 >> 1) & 0x3FFFFFFF));
      do
      {
        v15 = *v14++;
        v6 *= v15;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v6 = *(a2 + 12) * *(a2 + 8);
  }

  result = 0;
  if (v5 && v6)
  {
    if ((*(a2 + 1) & 0x40) == 0)
    {
      v19[0] = 0;
      v19[1] = 0;
      v16 = sub_1002A80E0(v19, 18);
      *(v16 + 16) = 10536;
      *v16 = *"buf.isContinuous()";
      sub_1002A8980(-215, v19, "open", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp", 134);
    }

    *(a1 + 16) = v4;
    v17 = *(a2 + 8) * *(a2 + 12);
    if (v5 < 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(*(a2 + 72) + 8 * v5 - 8);
    }

    *(a1 + 8) = 0;
    result = 1;
    *(a1 + 56) = 1;
    *(a1 + 24) = v4 + v18 * v17;
    *(a1 + 32) = v4;
    *(a1 + 52) = 0;
  }

  return result;
}

FILE *sub_1002B30EC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = fclose(result);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_1002B3130(uint64_t result)
{
  if (*(result + 8) == 1 && *(result + 16))
  {
    operator delete[]();
  }

  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1002B31A0(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B3230(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);

  operator delete();
}

uint64_t sub_1002B32E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  if (v3 >= v2)
  {
    (*(*a1 + 40))(a1);
    v2 = a1[3];
    v3 = a1[4];
  }

  if (v3 >= v2)
  {
    v5[0] = 0;
    v5[1] = 0;
    qmemcpy(sub_1002A80E0(v5, 15), "current < m_end", 15);
    sub_1002A8980(-215, v5, "getByte", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp", 212);
  }

  result = *v3;
  a1[4] = v3 + 1;
  return result;
}

uint64_t sub_1002B33BC(uint64_t a1, char *__dst, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  LODWORD(v6) = 0;
  v7 = *(a1 + 32);
  do
  {
    v10 = *(a1 + 24) - v7;
    if (v10 <= 0)
    {
      do
      {
        (*(*a1 + 40))(a1);
        v7 = *(a1 + 32);
        v10 = *(a1 + 24) - v7;
      }

      while (v10 < 1);
    }

    if (v3 >= v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = v3;
    }

    memcpy(__dst, v7, v8);
    v7 = (*(a1 + 32) + v8);
    *(a1 + 32) = v7;
    __dst += v8;
    v6 = (v8 + v6);
    v9 = __OFSUB__(v3, v8);
    v3 -= v8;
  }

  while (!((v3 < 0) ^ v9 | (v3 == 0)));
  return v6;
}

uint64_t sub_1002B3490(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B3520(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);

  operator delete();
}

uint64_t sub_1002B35D0(void *a1)
{
  v1 = a1[4];
  if (v1 + 1 >= a1[3])
  {
    v5 = sub_1002B32E0(a1);
    return v5 | (sub_1002B32E0(a1) << 8);
  }

  else
  {
    v2 = *v1;
    a1[4] = v1 + 1;
    return v2;
  }
}

uint64_t sub_1002B3628(void *a1)
{
  v1 = a1[4];
  if (v1 + 3 >= a1[3])
  {
    v5 = sub_1002B32E0(a1);
    v6 = v5 | (sub_1002B32E0(a1) << 8);
    v7 = v6 | (sub_1002B32E0(a1) << 16);
    return v7 | (sub_1002B32E0(a1) << 24);
  }

  else
  {
    v2 = *v1;
    a1[4] = v1 + 1;
    return v2;
  }
}

uint64_t sub_1002B3698(void *a1)
{
  v1 = a1[4];
  if (v1 + 3 >= a1[3])
  {
    v5 = sub_1002B32E0(a1);
    v6 = (sub_1002B32E0(a1) << 16) | (v5 << 24);
    v7 = v6 | (sub_1002B32E0(a1) << 8);
    return v7 | sub_1002B32E0(a1);
  }

  else
  {
    v2 = *v1;
    a1[4] = v1 + 1;
    return bswap32(v2);
  }
}

double sub_1002B3710(uint64_t a1)
{
  *(a1 + 40) = 0;
  *a1 = off_1004758C8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *&result = 0x8000;
  *(a1 + 32) = 0x8000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1002B3754(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B37EC(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);

  operator delete();
}

uint64_t sub_1002B38A4(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    operator new[]();
  }

  *(a1 + 16) = result + *(a1 + 32);
  *(a1 + 24) = result;
  return result;
}

const void *sub_1002B390C(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = *(a1 + 8);
  v4 = v2 - result;
  if (v2 != result)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = v5[1];
      v7 = &v6[-*v5];
      v8 = &v7[v4];
      if (v7 >= v8)
      {
        if (v7 > v8)
        {
          v5[1] = *v5 + v8;
        }
      }

      else
      {
        v9 = v5[2];
        if (v9 - v6 < v4)
        {
          if ((v8 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_10000918C();
        }

        v10 = &v6[v4];
        bzero(v6, v4);
        v5[1] = v10;
      }

      result = memcpy(&v7[**(a1 + 56)], *(a1 + 8), v4);
    }

    else
    {
      result = fwrite(result, 1uLL, v4, *(a1 + 40));
    }

    *(a1 + 24) = *(a1 + 8);
    *(a1 + 36) += v4;
  }

  return result;
}

BOOL sub_1002B3A90(uint64_t a1, const char **a2)
{
  (*(*a1 + 32))(a1);
  (*(*a1 + 56))(a1);
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  v5 = fopen(v4, "wb");
  *(a1 + 40) = v5;
  if (v5)
  {
    *(a1 + 48) = 1;
    *(a1 + 36) = 0;
    *(a1 + 24) = *(a1 + 8);
  }

  return v5 != 0;
}

uint64_t sub_1002B3B44(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 32))(a1);
  (*(*a1 + 56))(a1);
  *(a1 + 56) = a2;
  *(a1 + 48) = 1;
  *(a1 + 36) = 0;
  *(a1 + 24) = *(a1 + 8);
  return 1;
}

FILE *sub_1002B3BD0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 40))(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = fclose(result);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1002B3C3C(uint64_t a1)
{
  v2 = (a1 + 8);
  result = *(a1 + 8);
  if (result)
  {
    operator delete[]();
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t sub_1002B3C80(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B3D18(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);

  operator delete();
}

void *sub_1002B3DD0(void *result, char *__src, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = v5[2];
      result = v5[3];
      if (v3 >= v6 - result)
      {
        v7 = (v6 - result);
      }

      else
      {
        v7 = v3;
      }

      if (v7 >= 1)
      {
        memcpy(result, __src, v7);
        v6 = v5[2];
        result = (v5[3] + v7);
        v5[3] = result;
        __src += v7;
        v3 -= v7;
      }

      if (result == v6)
      {
        result = (*(*v5 + 40))(v5);
      }
    }

    while (v3);
  }

  return result;
}

void *sub_1002B3E7C(void *result, __int16 a2)
{
  v2 = result[3];
  if (v2 + 1 < result[2])
  {
    *v2 = a2;
    v3 = v2 + 1;
    result[3] = v3;
    if (v3 != result[2])
    {
      return result;
    }

    goto LABEL_7;
  }

  result[3] = v2 + 1;
  *v2 = a2;
  v4 = result[3];
  if (v4 >= result[2])
  {
    v5 = result;
    v6 = HIBYTE(a2);
    (*(*result + 40))();
    HIBYTE(a2) = v6;
    result = v5;
    v4 = v5[3];
  }

  result[3] = v4 + 1;
  *v4 = HIBYTE(a2);
  if (result[3] >= result[2])
  {
LABEL_7:
    v7 = *(*result + 40);

    return v7();
  }

  return result;
}

void *sub_1002B3F60(void *result, int a2)
{
  v3 = result;
  v4 = result[3];
  if (v4 + 3 < result[2])
  {
    *v4 = a2;
    v5 = v4 + 1;
    result[3] = v5;
    if (v5 != result[2])
    {
      return result;
    }

    goto LABEL_11;
  }

  result[3] = v4 + 1;
  *v4 = a2;
  v6 = result[3];
  if (v6 >= result[2])
  {
    result = (*(*result + 40))(result);
    v6 = v3[3];
  }

  v3[3] = v6 + 1;
  *v6 = BYTE1(a2);
  v7 = v3[3];
  if (v7 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v7 = v3[3];
  }

  v3[3] = v7 + 1;
  *v7 = BYTE2(a2);
  v8 = v3[3];
  if (v8 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v8 = v3[3];
  }

  v3[3] = v8 + 1;
  *v8 = HIBYTE(a2);
  if (v3[3] >= v3[2])
  {
LABEL_11:
    v9 = *(*v3 + 40);

    return v9(v3);
  }

  return result;
}

uint64_t sub_1002B40D8(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B4170(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);

  operator delete();
}

void *sub_1002B4228(void *result, unsigned int a2)
{
  v3 = result;
  v4 = result[3];
  if (v4 + 3 < result[2])
  {
    *v4 = bswap32(a2);
    v5 = v4 + 1;
    result[3] = v5;
    if (v5 != result[2])
    {
      return result;
    }

    goto LABEL_11;
  }

  result[3] = v4 + 1;
  *v4 = HIBYTE(a2);
  v6 = result[3];
  if (v6 >= result[2])
  {
    result = (*(*result + 40))(result);
    v6 = v3[3];
  }

  v3[3] = v6 + 1;
  *v6 = BYTE2(a2);
  v7 = v3[3];
  if (v7 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v7 = v3[3];
  }

  v3[3] = v7 + 1;
  *v7 = BYTE1(a2);
  v8 = v3[3];
  if (v8 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v8 = v3[3];
  }

  v3[3] = v8 + 1;
  *v8 = a2;
  if (v3[3] >= v3[2])
  {
LABEL_11:
    v9 = *(*v3 + 40);

    return v9(v3);
  }

  return result;
}

void sub_1002B43A4(uint64_t a1)
{
  sub_1002A85B8(a1);

  operator delete();
}

double sub_1002B43DC(uint64_t a1)
{
  *a1 = off_100475B00;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1124007936;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 120) = a1 + 64;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 16) = 0x1FFFFFFFFLL;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_1002B4440(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 24);
  if (v3 != a2)
  {
    sub_1002A8124(v3);
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add((v5 - 4), 1u);
      v5 = *a2;
    }

    v6 = a2[1];
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  v7 = *(a1 + 112);
  if (v7 && atomic_fetch_add((v7 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 56);
  }

  *(a1 + 112) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (*(a1 + 60) >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 120);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(a1 + 60));
  }

  return 1;
}

uint64_t sub_1002B44F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  if (v2 == 1)
  {
    v18 = 0;
    v19 = 0;
    v5 = (a1 + 24);
    if (&v18 != v5)
    {
      sub_1002A8124(v5);
      v6 = v18;
      if (v18)
      {
        atomic_fetch_add((v18 - 4), 1u);
        v6 = v18;
      }

      v7 = v19;
      *(a1 + 24) = v6;
      *(a1 + 32) = v7;
    }

    sub_1002A8124(&v18);
    v8 = (a1 + 56);
    if (a1 + 56 != a2)
    {
      v9 = *(a2 + 56);
      if (v9)
      {
        atomic_fetch_add((v9 + 20), 1u);
      }

      v10 = *(a1 + 112);
      if (v10 && atomic_fetch_add((v10 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a1 + 56);
      }

      *(a1 + 112) = 0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      if (*(a1 + 60) <= 0)
      {
        *v8 = *a2;
        v14 = *(a2 + 4);
        if (v14 <= 2)
        {
LABEL_17:
          *(a1 + 60) = v14;
          *(a1 + 64) = *(a2 + 8);
          v15 = *(a2 + 72);
          v16 = *(a1 + 128);
          *v16 = *v15;
          v16[1] = v15[1];
LABEL_20:
          *(a1 + 72) = *(a2 + 16);
          *(a1 + 88) = *(a2 + 32);
          *(a1 + 104) = *(a2 + 48);
          return v2;
        }
      }

      else
      {
        v11 = 0;
        v12 = *(a1 + 120);
        do
        {
          *(v12 + 4 * v11++) = 0;
          v13 = *(a1 + 60);
        }

        while (v11 < v13);
        *v8 = *a2;
        if (v13 <= 2)
        {
          v14 = *(a2 + 4);
          if (v14 <= 2)
          {
            goto LABEL_17;
          }
        }
      }

      sub_100269B58(a1 + 56, a2);
      goto LABEL_20;
    }
  }

  return v2;
}

BOOL sub_1002B4694(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  if (*(a2 + 8) < v4)
  {
    return 0;
  }

  v6 = v4;
  if (*a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = "";
  }

  if (a1[5])
  {
    v8 = a1[5];
  }

  else
  {
    v8 = "";
  }

  return memcmp(v7, v8, v6) == 0;
}

uint64_t sub_1002B4728(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 20);
  *(a1 + 20) = *a2;
  return v2;
}

double sub_1002B4744(uint64_t a1)
{
  *a1 = off_100475B70;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

uint64_t sub_1002B4784@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = v2;
  a2[1] = v3;
  if (v2)
  {
    atomic_fetch_add((v2 - 4), 1u);
  }

  return result;
}

uint64_t sub_1002B47A0(void *a1, uint64_t *a2)
{
  v3 = a1 + 3;
  if (v3 != a2)
  {
    sub_1002A8124(v3);
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add((v5 - 4), 1u);
      v5 = *a2;
    }

    v6 = a2[1];
    a1[3] = v5;
    a1[4] = v6;
  }

  a1[5] = 0;
  return 1;
}

uint64_t sub_1002B47FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    *(a1 + 40) = a2;
    a2[1] = *a2;
    v8 = 0;
    v9 = 0;
    v4 = (a1 + 24);
    if (&v8 != v4)
    {
      sub_1002A8124(v4);
      v5 = v8;
      if (v8)
      {
        atomic_fetch_add((v8 - 4), 1u);
        v5 = v8;
      }

      v6 = v9;
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
    }

    sub_1002A8124(&v8);
  }

  return v2;
}

uint64_t sub_1002B48A4(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    v2 = result;
    __s[0] = 0;
    __s[1] = 0;
    sub_1002A80E0(__s, v1 + 25);
    v3 = __s[0];
    *__s[0] = *"Raw image encoder error: ";
    *(v3 + 9) = *" encoder error: ";
    v4 = *(v2 + 64);
    if (v4)
    {
      memcpy(v3 + 25, *(v2 + 56), v4);
    }

    v8[0] = 0;
    v8[1] = 0;
    v5 = strlen(v3);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1002A80E0(v8, v5);
      memcpy(v7, v3, v6);
    }

    sub_1002A8980(-10, v8, "throwOnEror", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_base.cpp", 140);
  }

  return result;
}

void sub_1002B4970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B49C8(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100475BE8;
  sub_1002B2A0C((v2 + 20));
  *(a1 + 160) = off_100475928;
  sub_1002A8124((a1 + 40));
  *sub_1002A80E0((a1 + 40), 2) = 19778;
  *(a1 + 1256) = 0xFFFFFFFFLL;
  *(a1 + 152) = 1;
  *(a1 + 1248) = 0;
  return a1;
}

void sub_1002B4A84(_Unwind_Exception *a1)
{
  sub_1002B31A0(v2);
  sub_1002B4AA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B4AA0(uint64_t a1)
{
  *a1 = off_100475B00;
  v2 = *(a1 + 112);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 56);
  }

  *(a1 + 112) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (*(a1 + 60) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 120);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 60));
  }

  v5 = *(a1 + 128);
  if (v5 != (a1 + 136))
  {
    j__free(v5);
  }

  sub_1002A8124((a1 + 40));
  sub_1002A8124((a1 + 24));
  return a1;
}

uint64_t sub_1002B4B70(void *a1)
{
  *a1 = off_100475BE8;
  sub_1002B31A0((a1 + 20));

  return sub_1002B4AA0(a1);
}

void sub_1002B4BC4(void *a1)
{
  *a1 = off_100475BE8;
  sub_1002B31A0((a1 + 20));
  sub_1002B4AA0(a1);

  operator delete();
}

uint64_t sub_1002B4D14(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 60);
  if (v2 >= 3)
  {
    v4 = *(a1 + 120);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 68) * *(a1 + 64);
  }

  if (v2 && v3)
  {
    if ((sub_1002B2F4C(a1 + 160, a1 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    result = sub_1002B2E6C(a1 + 160, (a1 + 24));
    if (!result)
    {
      return result;
    }
  }

  sub_1002B3190(a1 + 160, 10);
  *(a1 + 1256) = sub_1002B3628((a1 + 160));
  v13 = sub_1002B3628((a1 + 160));
  v14 = v13 - 36;
  if (v13 < 36)
  {
    if (v13 == 12)
    {
      *(a1 + 8) = sub_1002B35D0((a1 + 160));
      *(a1 + 12) = sub_1002B35D0((a1 + 160));
      v20 = sub_1002B3628((a1 + 160)) >> 16;
      *(a1 + 1252) = v20;
      *(a1 + 1260) = 0;
      if (*(a1 + 8) >= 1 && *(a1 + 12) && v20 <= 0x20 && ((1 << v20) & 0x101000112) != 0)
      {
        if (v20 <= 8)
        {
          sub_1002B33BC(a1 + 160, __dst, 3 << v20);
          v21 = (__dst + 1);
          v22 = a1 + 226;
          v23 = 1;
          do
          {
            *(v22 - 2) = *(v21 - 1);
            v24 = *v21;
            v21 = (v21 + 3);
            *(v22 - 1) = v24;
            v25 = v23++ >> v20;
            v22 += 4;
          }

          while (!v25);
        }

        goto LABEL_71;
      }
    }

    goto LABEL_55;
  }

  *(a1 + 8) = sub_1002B3628((a1 + 160));
  *(a1 + 12) = sub_1002B3628((a1 + 160));
  *(a1 + 1252) = sub_1002B3628((a1 + 160)) >> 16;
  *(a1 + 1260) = sub_1002B3628((a1 + 160));
  sub_1002B3190(a1 + 160, 12);
  v15 = sub_1002B3628((a1 + 160));
  sub_1002B3190(a1 + 160, v14);
  if (*(a1 + 8) < 1)
  {
    goto LABEL_55;
  }

  if (!*(a1 + 12))
  {
    goto LABEL_55;
  }

  v16 = *(a1 + 1252);
  if (v16 > 0x20)
  {
    goto LABEL_55;
  }

  if (((1 << v16) & 0x101000112) != 0)
  {
    v17 = *(a1 + 1260);
    if (!v17)
    {
      if (v16 <= 8)
      {
        goto LABEL_51;
      }

      if (v16 == 16)
      {
        goto LABEL_49;
      }

LABEL_63:
      v30 = 1;
      goto LABEL_64;
    }

    HIDWORD(v19) = v16 - 4;
    LODWORD(v19) = v16 - 4;
    v18 = v19 >> 2;
    if (v18 <= 2)
    {
      if (v18)
      {
        if (v18 == 1 && v17 == 1)
        {
LABEL_51:
          if (v15 >= 0x101)
          {
            sub_1001FA81C(__dst, "clrused >= 0 && clrused <= 256");
            sub_1002A8980(-215, __dst, "readHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_bmp.cpp", 121);
          }

          bzero((a1 + 224), 0x400uLL);
          if (!v15)
          {
            v15 = 1 << v16;
          }

          sub_1002B33BC(a1 + 160, (a1 + 224), 4 * v15);
          if (sub_1002C79E4((a1 + 224), *(a1 + 1252)))
          {
            goto LABEL_63;
          }

LABEL_71:
          v33 = *(a1 + 12);
          *(a1 + 1248) = v33 > 0;
          if (v33 < 0)
          {
            v33 = -v33;
          }

          *(a1 + 12) = v33;
          *(a1 + 16) = 0;
          return 1;
        }
      }

      else if (v17 == 2)
      {
        goto LABEL_51;
      }

LABEL_55:
      v29 = *(a1 + 12);
      *(a1 + 1248) = v29 > 0;
      if (v29 < 0)
      {
        v29 = -v29;
      }

      *(a1 + 12) = v29;
      *(a1 + 16) = 0;
      goto LABEL_58;
    }

    if (v18 != 7 && v18 != 3)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v16 != 16)
    {
      goto LABEL_55;
    }

    v17 = *(a1 + 1260);
  }

  if (v17 && v17 != 3)
  {
    goto LABEL_55;
  }

  if (v16 != 16)
  {
    goto LABEL_63;
  }

  if (!v17 || (v26 = sub_1002B3628((a1 + 160)), v27 = sub_1002B3628((a1 + 160)), v28 = sub_1002B3628((a1 + 160)), v28 == 31) && v27 == 992 && v26 == 31744)
  {
LABEL_49:
    *(a1 + 1252) = 15;
    goto LABEL_63;
  }

  v30 = v28 == 31 && v27 == 2016 && v26 == 63488;
LABEL_64:
  if (*(a1 + 1252) == 32)
  {
    v31 = 24;
  }

  else
  {
    v31 = 16;
  }

  v32 = *(a1 + 12);
  *(a1 + 1248) = v32 > 0;
  if (v32 < 0)
  {
    v32 = -v32;
  }

  *(a1 + 12) = v32;
  *(a1 + 16) = v31;
  if (v30)
  {
    return 1;
  }

LABEL_58:
  *(a1 + 1256) = -1;
  *(a1 + 8) = -1;
  sub_1002B30EC(a1 + 160);
  return 0;
}

void sub_1002B51B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002B522C(uint64_t a1, int *a2)
{
  v4 = *(a2 + 2);
  v67 = sub_1002C5884(*(a2 + 10));
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 1252);
  if (v7 == 15)
  {
    v7 = 16;
  }

  v8 = v7 * v6;
  v10 = v8 + 7;
  v9 = v8 < -7;
  v11 = v8 + 14;
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v92 = 0u;
  v93 = 0u;
  v13 = v5 & 0xFF8;
  v90 = 0u;
  v91 = 0u;
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
  *__c = 0u;
  v79 = 0u;
  if ((v5 & 0xFF8) != 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  if ((*(a1 + 1256) & 0x80000000) != 0 || !sub_1002B29A4(a1 + 160))
  {
    return 0;
  }

  v15 = ((v12 >> 3) + 3) & 0xFFFFFFFC;
  if (*(a1 + 1248) == 1)
  {
    v4 += (*(a1 + 12) - 1) * v67;
    v67 = -v67;
  }

  v70 = 0;
  v72 = v74;
  v73 = 1032;
  v75 = v77;
  v76 = (v15 + 32);
  if (v15 + 32 >= 0x409)
  {
    operator new[]();
  }

  if (!v13)
  {
    v16 = *(a1 + 1252);
    if (v16 <= 8)
    {
      sub_1002C7778((a1 + 224), __c, 1 << v16);
    }

    v17 = 3 * *(a1 + 8) + 32;
    if (v73 >= v17)
    {
      v73 = 3 * *(a1 + 8) + 32;
    }

    else
    {
      if (v72 != v74)
      {
        if (v72)
        {
          operator delete[]();
        }

        v72 = v74;
      }

      v73 = v17;
      if (v17 >= 0x409)
      {
        operator new[]();
      }
    }
  }

  v20 = v75;
  sub_1002B2E24(a1 + 160, *(a1 + 1256));
  v21 = *(a1 + 1252);
  if (v21 > 14)
  {
    if (v21 <= 23)
    {
      if (v21 == 15)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20->i8, v15);
            v31 = *(a1 + 8);
            if (v13)
            {
              sub_1002C6D7C(v20, 0, v4, 0, v31 | &_mh_execute_header);
            }

            else
            {
              sub_1002C648C(v20, 0, v4, 0, v31 | &_mh_execute_header);
            }

            ++v70;
            v4 += v67;
          }

          while (v70 < *(a1 + 12));
        }

        goto LABEL_91;
      }

      if (v21 == 16)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20->i8, v15);
            v22 = *(a1 + 8);
            if (v13)
            {
              sub_1002C6F64(v20, 0, v4, 0, v22 | &_mh_execute_header);
            }

            else
            {
              sub_1002C6900(v20, 0, v4, 0, v22 | &_mh_execute_header);
            }

            ++v70;
            v4 += v67;
          }

          while (v70 < *(a1 + 12));
          goto LABEL_91;
        }

        goto LABEL_76;
      }

LABEL_156:
      sub_1001FA81C(v71, "Invalid/unsupported mode");
      sub_1002B5F3C(v71);
    }

    if (v21 == 24)
    {
      v70 = 0;
      if (*(a1 + 12) >= 1)
      {
        do
        {
          sub_1002B33BC(a1 + 160, v20->i8, v15);
          v32 = *(a1 + 8);
          if (v13)
          {
            memcpy(v4, v20, 3 * v32);
          }

          else
          {
            sub_1002C5924(v20, 0, v4, 0, v32 | &_mh_execute_header, 0);
          }

          ++v70;
          v4 += v67;
        }

        while (v70 < *(a1 + 12));
      }

      goto LABEL_91;
    }

    if (v21 != 32)
    {
      goto LABEL_156;
    }

    v70 = 0;
    if (*(a1 + 12) >= 1)
    {
      if (v13)
      {
        do
        {
          sub_1002B33BC(a1 + 160, v20->i8, v15);
          v26 = (*a2 >> 3) & 0x1FF;
          if (v26 == 3)
          {
            memcpy(v4, v20, 4 * *(a1 + 8));
          }

          else if (v26 == 2)
          {
            sub_1002C5F3C(v20, 0, v4, 0, *(a1 + 8) | &_mh_execute_header, 0);
          }

          ++v70;
          v4 += v67;
        }

        while (v70 < *(a1 + 12));
      }

      else
      {
        do
        {
          sub_1002B33BC(a1 + 160, v20->i8, v15);
          sub_1002C5C78(v20, 0, v4, 0, *(a1 + 8) | &_mh_execute_header, 0);
          ++v70;
          v4 += v67;
        }

        while (v70 < *(a1 + 12));
      }

      goto LABEL_91;
    }

LABEL_76:
    v18 = 1;
    goto LABEL_77;
  }

  if (v21 == 1)
  {
    v70 = 0;
    if (*(a1 + 12) >= 1)
    {
      do
      {
        sub_1002B33BC(a1 + 160, v20->i8, v15);
        if (v13)
        {
          v29 = v4;
        }

        else
        {
          v29 = v72;
        }

        sub_1002C815C(v29, v20->i8, *(a1 + 8), a1 + 224);
        if (!v13)
        {
          sub_1002C5924(v72, 0, v4, 0, *(a1 + 8) | &_mh_execute_header, 0);
        }

        ++v70;
        v4 += v67;
      }

      while (v70 < *(a1 + 12));
      goto LABEL_91;
    }

    goto LABEL_76;
  }

  v23 = v6 * v14;
  if (v21 == 4)
  {
    v27 = *(a1 + 1260);
    if (v27 != 2)
    {
      if (!v27)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20->i8, v15);
            v28 = *(a1 + 8);
            if (v13)
            {
              sub_1002C8060(v4, v20, v28, a1 + 224);
            }

            else
            {
              sub_1002C80F0(v4, v20, v28, __c);
            }

            ++v70;
            v4 += v67;
            v18 = 1;
          }

          while (v70 < *(a1 + 12));
LABEL_92:
          v30 = v72;
          if (v72 != v74)
          {
            goto LABEL_93;
          }

          goto LABEL_96;
        }

LABEL_91:
        v18 = 1;
        goto LABEL_92;
      }

LABEL_99:
      v18 = 0;
      v30 = v72;
      if (v72 != v74)
      {
        goto LABEL_93;
      }

      goto LABEL_96;
    }

    v65 = v6 * v14;
    v33 = (a1 + 224);
    v69 = &v4[v23];
    v70 = 0;
    while (1)
    {
      while (1)
      {
        v34 = sub_1002B35D0((a1 + 160));
        if (v34)
        {
          break;
        }

        v39 = v34 >> 8;
        v18 = v34 >> 8 < 3;
        if (v34 >> 8 < 3)
        {
          if (v39 == 2)
          {
            v40 = sub_1002B32E0((a1 + 160));
            sub_1002B32E0((a1 + 160));
            v41 = v40 * v14;
          }

          else
          {
            v41 = v69 - v4;
          }

          v42 = *(a1 + 12);
          if (v13)
          {
            v64 = v64 & 0xFFFFFFFF00000000 | *v33;
            v43 = sub_1002C7A50(v4, &v69, v67, v65, &v70, v42, v41, v64);
          }

          else
          {
            v43 = sub_1002C7F14(v4, &v69, v67, v65, &v70, v42, v41, __c[0]);
          }

          v4 = v43;
          if (v70 >= *(a1 + 12))
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (&v4[(v39 * v14)] > v69)
          {
            goto LABEL_77;
          }

          if (v76 <= ((((v39 + 1) >> 1) + 1) & 0x7FFFFFFE))
          {
            sub_1001FA81C(v71, "(size_t)sz < _src.size()");
            sub_1002A8980(-215, v71, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_bmp.cpp", 296);
          }

          sub_1002B33BC(a1 + 160, v20->i8, (((v39 + 1) >> 1) + 1) & 0x7FFFFFFE);
          if (v13)
          {
            v4 = sub_1002C8060(v4, v20, v39, a1 + 224);
          }

          else
          {
            v4 = sub_1002C80F0(v4, v20, v39, __c);
          }
        }
      }

      v35 = v33[(v34 >> 8) & 0xF];
      LODWORD(v71[0]) = v33[v34 >> 12];
      HIDWORD(v71[0]) = v35;
      v68[0] = __c[v34 >> 12];
      v68[1] = *(__c | (v34 >> 8) & 0xF);
      v36 = &v4[v34 * v14];
      if (v36 > v69)
      {
        break;
      }

      v37 = 0;
      if (v13)
      {
        do
        {
          v38 = v71 + 4 * v37;
          *v4 = *v38;
          v4[1] = v38[1];
          v4[2] = v38[2];
          v37 ^= 1uLL;
          v4 += v14;
        }

        while (v4 < v36);
      }

      else
      {
        do
        {
          *v4 = v68[v37];
          v37 ^= 1uLL;
          v4 += v14;
        }

        while (v4 < v36);
      }
    }

    v18 = 0;
  }

  else
  {
    if (v21 != 8)
    {
      goto LABEL_156;
    }

    v24 = *(a1 + 1260);
    if (v24 != 1)
    {
      if (!v24)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20->i8, v15);
            v25 = *(a1 + 8);
            if (v13)
            {
              sub_1002C7FE4(v4, v20, v25, a1 + 224);
            }

            else
            {
              sub_1002C8034(v4, v20, v25, __c);
            }

            ++v70;
            v4 += v67;
            v18 = 1;
          }

          while (v70 < *(a1 + 12));
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      goto LABEL_99;
    }

    v44 = 0;
    v66 = v23;
    v69 = &v4[v23];
    v70 = 0;
    v45 = (a1 + 224);
    do
    {
      while (1)
      {
        while (1)
        {
          v47 = sub_1002B35D0((a1 + 160));
          v48 = v47;
          v49 = v47 >> 8;
          if (!v47)
          {
            break;
          }

          v51 = v47 * v14;
          v18 = &v4[v51] <= v69;
          if (&v4[v51] <= v69)
          {
            v52 = v70;
            v53 = *(a1 + 12);
            if (v13)
            {
              v54 = v64 & 0xFFFFFFFF00000000 | v45[v49];
              v4 = sub_1002C7A50(v4, &v69, v67, v66, &v70, v53, v51, v54);
              v64 = v54;
            }

            else
            {
              v4 = sub_1002C7F14(v4, &v69, v67, v66, &v70, v53, v51, __c[v49]);
            }

            v44 = v70 - v52;
            if (v70 < *(a1 + 12))
            {
              continue;
            }
          }

          goto LABEL_77;
        }

        v18 = v49 < 3;
        if (v49 < 3)
        {
          break;
        }

        if (&v4[(v49 * v14)] > v69)
        {
          goto LABEL_77;
        }

        v50 = v70;
        if (v76 <= ((v49 + 1) & 0x7FFFFFFEu))
        {
          sub_1001FA81C(v71, "(size_t)sz < _src.size()");
          sub_1002A8980(-215, v71, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_bmp.cpp", 390);
        }

        sub_1002B33BC(a1 + 160, v20->i8, (v49 + 1) & 0x7FFFFFFE);
        if (v13)
        {
          v46 = sub_1002C7FE4(v4, v20, v49, a1 + 224);
        }

        else
        {
          v46 = sub_1002C8034(v4, v20, v49, __c);
        }

        v4 = v46;
        v44 = v70 - v50;
      }

      v55 = v69 - v4;
      v56 = v70;
      v57 = *(a1 + 12);
      if (v47 > 0xFF || !v44 || v66 > v55)
      {
        if (v49 == 2)
        {
          v58 = v66;
          v59 = sub_1002B32E0((a1 + 160));
          v60 = sub_1002B32E0((a1 + 160));
          v55 = v59 * v14;
          v56 = v70;
          v57 = *(a1 + 12);
        }

        else
        {
          v60 = v57 - v70;
          v58 = v66;
        }

        v61 = v60 * v58;
        if (v48 <= 0xFF)
        {
          v61 = 0;
        }

        if (v56 >= v57)
        {
          break;
        }

        if (v13)
        {
          v63 = v63 & 0xFFFFFFFF00000000 | *v45;
          v62 = sub_1002C7A50(v4, &v69, v67, v58, &v70, v57, v61 + v55, v63);
        }

        else
        {
          v62 = sub_1002C7F14(v4, &v69, v67, v58, &v70, v57, v61 + v55, __c[0]);
        }

        v4 = v62;
        v56 = v70;
        v57 = *(a1 + 12);
        if (v70 >= v57)
        {
          break;
        }
      }

      v44 = 0;
    }

    while (v56 < v57);
  }

LABEL_77:
  v30 = v72;
  if (v72 != v74)
  {
LABEL_93:
    if (v30)
    {
      operator delete[]();
    }

    v72 = v74;
  }

LABEL_96:
  if (v75 != v77 && v75)
  {
    operator delete[]();
  }

  return v18;
}

uint64_t *sub_1002B5F6C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

uint64_t sub_1002B5FCC(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100475C58;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 28), "Windows bitmap (*.bmp;*.dib)", 28);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002B605C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002B60BC(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

uint64_t sub_1002B62E0(uint64_t a1, unsigned int *a2)
{
  v4 = a2[3];
  v5 = a2[2];
  v6 = *a2;
  v23 = 0;
  v22 = 0;
  sub_1002B3710(v21);
  v21[0] = off_100475A08;
  v7 = *(a1 + 40);
  if (!v7)
  {
    if (sub_1002B3A90(v21, (a1 + 24)))
    {
      goto LABEL_3;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  if ((sub_1002B3B44(v21, v7) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v8 = (v6 >> 3) & 0x1FF;
  v19 = v8;
  v20 = v8 + 1;
  v9 = (v8 + 1) * v4;
  if (v8)
  {
    v10 = 54;
  }

  else
  {
    v10 = 1078;
  }

  v18 = (v9 + 3) & 0xFFFFFFFC;
  v11 = v10 + v5 * v18;
  v12 = *(a1 + 40);
  if (v12 && v12[2] - *v12 < ((v11 + 271) & 0xFFFFFFFFFFFFFF00))
  {
    if (v11 > -272)
    {
      operator new();
    }

    sub_10000918C();
  }

  sub_1002B3DD0(v21, "BM", 2);
  v13 = sub_1002C5884(v11);
  sub_1002B3F60(v21, v13);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, v10);
  sub_1002B3F60(v21, 40);
  sub_1002B3F60(v21, v4);
  sub_1002B3F60(v21, v5);
  sub_1002B3E7C(v21, 1);
  sub_1002B3E7C(v21, 8 * v20);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  if (!v19)
  {
    sub_1002C7958(__src, 8, 0);
    sub_1002B3DD0(v21, __src, 1024);
  }

  if (v5 >= 1)
  {
    v14 = (v5 - 1);
    if (v18 <= v9)
    {
      do
      {
        sub_1002B3DD0(v21, (*(a2 + 2) + **(a2 + 9) * v14), v9);
        v15 = v14-- <= 0;
      }

      while (!v15);
    }

    else
    {
      do
      {
        sub_1002B3DD0(v21, (*(a2 + 2) + **(a2 + 9) * v14), v9);
        sub_1002B3DD0(v21, &v22, v18 - v9);
        v15 = v14-- <= 0;
      }

      while (!v15);
    }
  }

  sub_1002B3BD0(v21);
  v16 = 1;
LABEL_22:
  sub_1002B3C80(v21);
  return v16;
}

void sub_1002B6610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002B6628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002B663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002B6650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B667C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B6718(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B679C(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100475D60;
  v2[20] = 0;
  v3 = v2 + 20;
  v2[21] = 0;
  sub_1002A8124(v2 + 5);
  v4 = sub_1002A80E0((a1 + 40), 6);
  *(v4 + 4) = 17730;
  *v4 = 1196572451;
  sub_1002A8124(v3);
  v5 = sub_1002A80E0(v3, 10);
  *(v5 + 8) = 17731;
  *v5 = *"#?RADIANCE";
  *(a1 + 176) = 0;
  *(a1 + 16) = 21;
  return a1;
}

void sub_1002B6854(_Unwind_Exception *a1)
{
  sub_1002A8124(v2);
  sub_1002B4AA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B6878(void *a1)
{
  *a1 = off_100475D60;
  sub_1002A8124(a1 + 20);

  return sub_1002B4AA0(a1);
}

void sub_1002B68D0(void *a1)
{
  *a1 = off_100475D60;
  sub_1002A8124(a1 + 20);
  sub_1002B4AA0(a1);

  operator delete();
}

uint64_t sub_1002B693C(uint64_t a1)
{
  if (*(a1 + 48) <= *(a1 + 168))
  {
    return *(a1 + 168);
  }

  else
  {
    return *(a1 + 48);
  }
}

FILE *sub_1002B6950(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = "";
  }

  result = fopen(v2, "rb");
  *(a1 + 176) = result;
  if (result)
  {
    sub_1002C4530(result, a1 + 8, a1 + 12, 0);
    if (*(a1 + 8) < 1 || *(a1 + 12) <= 0)
    {
      fclose(*(a1 + 176));
      result = 0;
      *(a1 + 176) = 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002B69E0(uint64_t a1, _DWORD *a2)
{
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  __src = vrev64_s32(*(a1 + 8));
  sub_100268ED0(v11, 2, &__src, 21);
  v4 = *(a1 + 176);
  if (v4)
  {
    goto LABEL_4;
  }

  if ((*(*a1 + 48))(a1))
  {
    v4 = *(a1 + 176);
LABEL_4:
    sub_1002C50EC(v4, *&v11[1], HIDWORD(v11[0]), SDWORD2(v11[0]));
    fclose(*(a1 + 176));
    *(a1 + 176) = 0;
    v5 = *a2;
    if (((LOBYTE(v11[0]) ^ *a2) & 7) != 0)
    {
      __src.i32[0] = 33619968;
      v16 = a2;
      v17 = 0;
      sub_10020EF14(v11, &__src, v5 & 0xFFF, 255.0, 0.0);
    }

    else
    {
      __src.i32[0] = 33619968;
      v16 = a2;
      v17 = 0;
      sub_10020EF14(v11, &__src, v5 & 0xFFF, 1.0, 0.0);
    }

    v6 = 1;
    v7 = *(&v11[3] + 1);
    if (!*(&v11[3] + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v7 = *(&v11[3] + 1);
  if (!*(&v11[3] + 1))
  {
    goto LABEL_10;
  }

LABEL_8:
  if (atomic_fetch_add((v7 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

LABEL_10:
  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v8 = 0;
    v9 = v12;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  return v6;
}

void sub_1002B6BF0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002B6C20(void *a1, void *a2)
{
  v2 = a1[6];
  result = 0;
  if (a2[1] >= v2)
  {
    v4 = *a2 ? *a2 : "";
    v5 = a1[5] ? a1[5] : "";
    if (!memcmp(v4, v5, v2))
    {
      return 1;
    }

    v6 = a1[20] ? a1[20] : "";
    if (!memcmp(v4, v6, a1[21]))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002B6D9C(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100475DD0;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 26), "Radiance HDR (*.hdr;*.pic)", 26);
  return a1;
}

uint64_t *sub_1002B6E24(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002B6E84(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

BOOL sub_1002B6F04(uint64_t a1, _DWORD *a2, void *a3)
{
  LODWORD(v18[0]) = 1124007936;
  memset(v18 + 4, 0, 48);
  v18[3] = 0u;
  v19 = v18 + 8;
  v20 = v21;
  v21[0] = 0;
  v21[1] = 0;
  if (((*a2 >> 3) & 0x1FD | 2) != 2)
  {
    v15 = 0;
    v16 = 0;
    qmemcpy(sub_1002A80E0(&v15, 54), "input_img.channels() == 3 || input_img.channels() == 1", 54);
    sub_1002A8980(-215, &v15, "write", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_hdr.cpp", 128);
  }

  if ((*a2 & 0xFF8) != 0)
  {
    LODWORD(v15) = 33619968;
    v16 = v18;
    v17 = 0;
    sub_10022B754(a2, &v15);
    if ((v18[0] & 7) == 5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1002B74D8(&v15, 3uLL, a2);
  v14[1] = &v15;
  v14[2] = 0;
  LODWORD(v14[0]) = 17104896;
  v11 = 33619968;
  v12 = v18;
  v13 = 0;
  sub_100200B5C(v14, &v11);
  v14[0] = &v15;
  sub_10022A2B4(v14);
  if ((v18[0] & 7) != 5)
  {
LABEL_7:
    LODWORD(v15) = 33619968;
    v16 = v18;
    v17 = 0;
    sub_10020EF14(v18, &v15, 21, 0.00392156886, 0.0);
  }

LABEL_8:
  if (*a3 != a3[1] && **a3 >= 2u)
  {
    v15 = 0;
    v16 = 0;
    qmemcpy(sub_1002A80E0(&v15, 63), "params.empty() || params[0] == HDR_NONE || params[0] == HDR_RLE", 63);
    sub_1002A8980(-215, &v15, "write", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_hdr.cpp", 138);
  }

  if (*(a1 + 24))
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v5 = "";
  }

  v6 = fopen(v5, "wb");
  v7 = v6;
  if (v6)
  {
    sub_1002C4084(v6, SHIDWORD(v18[0]), SDWORD2(v18[0]), 0);
    if (*a3 == a3[1] || **a3 == 1)
    {
      sub_1002C4D10(v7, *&v18[1], SHIDWORD(v18[0]), SDWORD2(v18[0]));
    }

    else
    {
      sub_1002C4BEC(v7, *&v18[1], DWORD2(v18[0]) * HIDWORD(v18[0]));
    }

    fclose(v7);
  }

  if (*(&v18[3] + 1) && atomic_fetch_add((*(&v18[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v18);
  }

  *(&v18[3] + 1) = 0;
  memset(&v18[1], 0, 32);
  if (SDWORD1(v18[0]) >= 1)
  {
    v8 = 0;
    v9 = v19;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v18[0]));
  }

  if (v20 != v21)
  {
    j__free(v20);
  }

  return v7 != 0;
}

void sub_1002B7214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B7454(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t *sub_1002B74D8(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000918C();
  }

  return a1;
}

uint64_t sub_1002B7660(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B76E4(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100475ED8;
  v3 = v2 + 5;
  sub_1002A8124(v2 + 5);
  v4 = sub_1002A80E0(v3, 3);
  *v4 = -9985;
  *(v4 + 2) = asc_100417FAC[2];
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 1;
  return a1;
}

uint64_t sub_1002B7774(uint64_t a1)
{
  *a1 = off_100475ED8;
  if (*(a1 + 168))
  {
    sub_100390114(*(a1 + 168));
    operator delete();
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    fclose(v2);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;

  return sub_1002B4AA0(a1);
}

void sub_1002B7810(uint64_t a1)
{
  *a1 = off_100475ED8;
  if (*(a1 + 168))
  {
    sub_100390114(*(a1 + 168));
    operator delete();
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    fclose(v2);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  sub_1002B4AA0(a1);

  operator delete();
}

void sub_1002B7A64(uint64_t a1)
{
  if (*(a1 + 168))
  {
    sub_100390114(*(a1 + 168));
    operator delete();
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    fclose(v2);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  operator new();
}

uint64_t sub_1002B7D54(uint64_t a1, int *a2)
{
  v27 = 0;
  v3 = *(a1 + 168);
  if (v3)
  {
    if (*(a1 + 8))
    {
      if (*(a1 + 12))
      {
        v4 = *(a2 + 10);
        v5 = *a2;
        if (!setjmp((v3 + 800)))
        {
          if (!*(v3 + 248) && !*(v3 + 256) && !*(v3 + 216) && !*(v3 + 224))
          {
            sub_1002B7FB4(v3, v3 + 248, v3 + 216);
          }

          v7 = *(v3 + 56);
          if (v7 == 4)
          {
            v8 = 4;
          }

          else
          {
            v8 = 2;
          }

          if (v7 == 4)
          {
            v9 = 4;
          }

          else
          {
            v9 = 3;
          }

          if (v7 == 4)
          {
            v10 = 4;
          }

          else
          {
            v10 = 1;
          }

          if ((v5 & 0xFF8) != 0)
          {
            v10 = v9;
          }

          else
          {
            v8 = v10;
          }

          *(v3 + 64) = v8;
          *(v3 + 124) = v10;
          sub_1003A5794(v3);
          v11 = (*(*(v3 + 8) + 16))(v3, 1, (4 * *(a1 + 8)), 1);
          v12 = *(a2 + 2);
          v13 = *(a1 + 12);
          *(a1 + 12) = v13 - 1;
          if (v13)
          {
            v14 = v11;
            if ((v5 & 0xFF8) != 0)
            {
              do
              {
                while (1)
                {
                  sub_1003A59A8(v3, v14, 1);
                  v16 = *v14;
                  v17 = *(a1 + 8);
                  if (*(v3 + 124) == 3)
                  {
                    break;
                  }

                  sub_1002C7148(v16, 0, v12, 0, v17 | &_mh_execute_header);
                  v12 += v4;
                  v15 = *(a1 + 12);
                  *(a1 + 12) = v15 - 1;
                  if (!v15)
                  {
                    goto LABEL_32;
                  }
                }

                sub_1002C6134(v16, 0, v12, 0, v17 | &_mh_execute_header);
                v12 += v4;
                v18 = *(a1 + 12);
                *(a1 + 12) = v18 - 1;
              }

              while (v18);
            }

            else
            {
              do
              {
                while (1)
                {
                  sub_1003A59A8(v3, v14, 1);
                  v23 = *(a1 + 8);
                  if (*(v3 + 124) != 1)
                  {
                    break;
                  }

                  memcpy(v12, *v14, v23);
                  v12 += v4;
                  v19 = *(a1 + 12);
                  *(a1 + 12) = v19 - 1;
                  if (!v19)
                  {
                    goto LABEL_32;
                  }
                }

                sub_1002C73B8(*v14, 0, v12, 0, v23 | &_mh_execute_header, v20, v21, v22);
                v12 += v4;
                v24 = *(a1 + 12);
                *(a1 + 12) = v24 - 1;
              }

              while (v24);
            }
          }

LABEL_32:
          v27 = 1;
          sub_1003A56A8(v3);
        }
      }
    }

    if (*(a1 + 168))
    {
      sub_100390114(*(a1 + 168));
      operator delete();
    }
  }

  v25 = *(a1 + 160);
  if (v25)
  {
    fclose(v25);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  return v27;
}