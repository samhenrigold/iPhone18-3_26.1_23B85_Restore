void sub_1AF126A00(uint64_t a1, uint64_t a2)
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  sub_1AF27F634(*(a1 + 14688), a2, &v37);
  v3 = 0uLL;
  if (*(a1 + 14592))
  {
    v4 = 0;
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
    do
    {
      v9 = 0;
      v10 = (a1 + 9216 + (v4 << 6));
      v35 = v10[1];
      v36 = *v10;
      v33 = v10[3];
      v34 = v10[2];
      v11 = a1 + 7168 + (v4 << 6);
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      v14 = *(v11 + 48);
      v41.columns[0] = *v11;
      v41.columns[1] = v12;
      v41.columns[2] = v13;
      v41.columns[3] = v14;
      v42.columns[0] = v3;
      v42.columns[1] = v3;
      v42.columns[2] = v3;
      v42.columns[3] = v3;
      do
      {
        v42.columns[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*&v41.columns[v9])), v6, *v41.columns[v9].f32, 1), v7, v41.columns[v9], 2), v8, v41.columns[v9], 3);
        ++v9;
      }

      while (v9 != 4);
      v31 = v42.columns[1];
      v32 = v42.columns[0];
      v29 = v42.columns[3];
      v30 = v42.columns[2];
      v43 = __invert_f4(v42);
      v15 = 0;
      v41 = v43;
      v3 = 0uLL;
      memset(&v42, 0, sizeof(v42));
      do
      {
        v42.columns[v15] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*&v41.columns[v15])), v35, *v41.columns[v15].f32, 1), v34, v41.columns[v15], 2), v33, v41.columns[v15], 3);
        ++v15;
      }

      while (v15 != 4);
      v16 = 0;
      v17 = v42.columns[0];
      v18 = v42.columns[1];
      v19 = v42.columns[2];
      v20 = v42.columns[3];
      *v11 = v32;
      *(v11 + 16) = v31;
      *(v11 + 32) = v30;
      *(v11 + 48) = v29;
      *(a1 + 0x2000 + (v4 << 6)) = v43;
      v21 = (a1 + 10240 + (v4 << 6));
      *v21 = v17;
      v21[1] = v18;
      v21[2] = v19;
      v21[3] = v20;
      v22 = a1 + 3072 + (v4 << 6);
      v5 = v37;
      v6 = v38;
      v7 = v39;
      v8 = v40;
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      v25 = *(v22 + 48);
      v41.columns[0] = *v22;
      v41.columns[1] = v23;
      v41.columns[2] = v24;
      v41.columns[3] = v25;
      memset(&v42, 0, sizeof(v42));
      do
      {
        v42.columns[v16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*&v41.columns[v16])), v6, *v41.columns[v16].f32, 1), v7, v41.columns[v16], 2), v8, v41.columns[v16], 3);
        ++v16;
      }

      while (v16 != 4);
      v26 = v42.columns[1];
      v27 = v42.columns[2];
      v28 = v42.columns[3];
      *v22 = v42.columns[0];
      *(v22 + 16) = v26;
      *(v22 + 32) = v27;
      *(v22 + 48) = v28;
      ++v4;
    }

    while (v4 < *(a1 + 14592));
  }
}

void sub_1AF126BF4(__n128 *a1, uint64_t a2)
{
  v8 = sub_1AF1CFC48(a1[918].n128_u64[0], a2);
  v7 = 0uLL;
  sub_1AF27F590(a2, &v8, &v7);
  v4 = a1[912].n128_u8[0];
  if (a1[912].n128_u8[0])
  {
    v5 = v7;
    v6 = a1 + 5;
    do
    {
      *v6 = v5;
      v6 += 6;
      --v4;
    }

    while (v4);
  }
}

void sub_1AF126C60(uint64_t a1)
{
  v2 = sub_1AF12DE5C(*(a1 + 14696));
  v4 = sub_1AF0D5194(v2, v3);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v4;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Culling", &unk_1AFF70A1D, buf, 2u);
    }
  }

  v7 = sub_1AF12DE14(*(a1 + 14696), v5);
  v8 = CACurrentMediaTime();
  prof_beginFlame("Culling", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/AppleEngine/CFXCullingContext.c", 759);
  v9 = *(a1 + 14616);
  v11 = sub_1AF1CF7E8(*(a1 + 14688), v10);
  if (sub_1AF12464C(a1, v12))
  {
    v14 = 0;
    while (1)
    {
      if (*(a1 + 14652) == 1)
      {
        if (v9 == v11)
        {
          v15 = 0;
          do
          {
            if ((*(a1 + 14594) >> v15))
            {
              v16 = sub_1AF1D1198(*(a1 + 14688), v15);
              if (v16)
              {
                sub_1AF124BBC(a1, v14, v16);
              }
            }

            v15 = (v15 + 1);
          }

          while (v15 != 4);
        }

        else
        {
          sub_1AF124BBC(a1, 0, *(a1 + 14616));
        }

        goto LABEL_27;
      }

      if (v9 == v11)
      {
        break;
      }

      sub_1AF124C60(a1, 0, *(a1 + 14616));
LABEL_27:
      if (++v14 >= sub_1AF12464C(a1, v13))
      {
        goto LABEL_28;
      }
    }

    v17 = sub_1AF1D01D0(*(a1 + 14688), v13);
    v28 = 0;
    *buf = 0u;
    v27 = 0u;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = sub_1AF126F3C;
    v25[3] = &unk_1E7A79B20;
    v25[4] = a1;
    v25[5] = v14;
    sub_1AF1271CC(v25, buf);
    *buf = *(a1 + 14664);
    if (*(a1 + 14653))
    {
      v18 = 34;
    }

    else
    {
      v18 = 2;
    }

    DWORD1(v27) = v18;
    v19 = *(a1 + 14651);
    if (*(a1 + 14650))
    {
      LODWORD(v27) = 4;
      if (v19)
      {
        v20 = 36;
LABEL_25:
        LODWORD(v27) = v20;
      }
    }

    else if (*(a1 + 14651))
    {
      v20 = 32;
      goto LABEL_25;
    }

    DWORD2(v27) = *(a1 + 14594);
    sub_1AF127B58(v17);
    goto LABEL_27;
  }

LABEL_28:
  *(v7 + 104) = *(v7 + 104) + CACurrentMediaTime() - v8;
  prof_endFlame();
  v23 = sub_1AF0D5194(v21, v22);
  if ((v2 - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v24 = v23;
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v24, OS_SIGNPOST_INTERVAL_END, v2, "Culling", &unk_1AFF70A1D, buf, 2u);
    }
  }
}

void sub_1AF126F3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if ((*(*(a1 + 32) + 15128))())
      {
        sub_1AF1246F4(*(a1 + 32), *(a1 + 40), *a2);
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

void sub_1AF126FA4(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD25F4(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(v2 + 14696))
  {
    v10 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD266C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (*(v2 + 14592))
  {
    v18 = 0;
    do
    {
      v19 = (v2 + 11264 + (v18 << 6));
      v20 = (v2 + 10240 + (v18 << 6));
      v21 = v20[1];
      *v19 = *v20;
      v19[1] = v21;
      v22 = v20[3];
      v19[2] = v20[2];
      v19[3] = v22;
      v23 = (v2 + 12288 + (v18 << 6));
      v24 = (v2 + 0x2000 + (v18 << 6));
      v25 = v24[1];
      *v23 = *v24;
      v23[1] = v25;
      v26 = v24[3];
      v23[2] = v24[2];
      v23[3] = v26;
      v27 = (v2 + 13312 + (v18 << 6));
      v28 = (v2 + 9216 + (v18 << 6));
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[3];
      v27[2] = v28[2];
      v27[3] = v31;
      *v27 = v29;
      v27[1] = v30;
      ++v18;
      v32 = *(v2 + 14592);
      if (v32 >= 0x10)
      {
        v32 = 16;
      }
    }

    while (v32 > v18);
  }

  if (sub_1AF130BF0(*(v2 + 14696)) && *(v2 + 14592))
  {
    v33 = 0;
    do
    {
      v34 = sub_1AF130C00(*(v2 + 14696), 0);
      v35 = sub_1AF130C00(*(v2 + 14696), 1);
      v36 = 0;
      v37 = vsub_f32(v35, v34);
      v38 = (v2 + 13312 + (v33 << 6));
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      *v41.f32 = vadd_f32(v37, *v40.i8);
      v41.i64[1] = vextq_s8(v40, v40, 8uLL).u64[0];
      v38[2] = v41;
      v42 = *v38;
      v43 = *(v38 + 1);
      v44 = (v2 + 12288 + (v33 << 6));
      v45 = v44[1];
      v46 = v44[2];
      v47 = v44[3];
      v53[0] = *v44;
      v53[1] = v45;
      v53[2] = v46;
      v53[3] = v47;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      do
      {
        *(&v54 + v36 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(v53[v36])), v43, *&v53[v36], 1), v41, v53[v36], 2), v39, v53[v36], 3);
        ++v36;
      }

      while (v36 != 4);
      v48 = (v2 + 11264 + (v33 << 6));
      v49 = v55;
      v50 = v56;
      v51 = v57;
      *v48 = v54;
      v48[1] = v49;
      v48[2] = v50;
      v48[3] = v51;
      ++v33;
      v52 = *(v2 + 14592);
      if (v52 >= 0x10)
      {
        v52 = 16;
      }
    }

    while (v52 > v33);
  }
}

double sub_1AF1271CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = a1;
  *a2 = xmmword_1AFE20C30;
  *&result = 255;
  *(a2 + 16) = 255;
  *(a2 + 24) = 255;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_1AF127204()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734668 = result;
  return result;
}

uint64_t sub_1AF12722C(const void *a1)
{
  if (qword_1ED734660 != -1)
  {
    sub_1AFDD26E4();
  }

  v2 = sub_1AF0D160C(qword_1ED734668, 0xB8uLL);

  return sub_1AF12A138(v2, a1);
}

uint64_t sub_1AF127288(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD26F8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF1272E4(a1, a2);
}

uint64_t sub_1AF1272E4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (v5 >= v4)
  {
    sub_1AF12A43C(a1, 2 * v4);
    v5 = *(a1 + 16);
  }

  *(a1 + 16) = v5 + 1;
  v6 = sub_1AF12A8EC(a1, v5);
  sub_1AF1B7A3C(a2, v10);
  v7 = v10[1];
  v8 = (*(a1 + 64) + 32 * v5);
  *v8 = v10[0];
  v8[1] = v7;
  *(*(a1 + 104) + 8 * v5) = a2;
  sub_1AF127838(a1, v5);
  sub_1AF12A9FC(a1, v5);
  return v6;
}

void sub_1AF127390(_BOOL8 a1, uint64_t a2, float32x4_t *a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD26F8(v6, a2, v7, v8, v9, v10, v11, v12);
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v13 = v5[4];
  if (v4 < ((v5[5] - v13) >> 2))
  {
    v14 = *(v13 + 4 * v4);
    v15 = a3[1];
    v16 = v5[8] + 32 * v14;
    *v16 = *a3;
    *(v16 + 16) = v15;
    if ((*(v5[11] + 2 * v14) & 8) != 0)
    {
      v22 = xmmword_1AFE20C40;
      v20 = xmmword_1AFE201A0;
    }

    else
    {
      v17 = sub_1AF1B9B04(*(v5[13] + 8 * v14), a2);
      v18 = *(v17 + 16);
      v19 = *(v17 + 32);
      v20 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v17 + 48), v19, *a3, 2), v18, *a3->f32, 1), *v17, COERCE_FLOAT(*a3));
      v20.n128_u32[3] = HIDWORD(*a3);
      v21 = a3[1];
      v21.i32[1] = v21.i32[0];
      v21.i32[2] = a3[1];
      v22 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*a3[1].f32, 1), a3[1]), vabsq_f32(v18)), vabsq_f32(*v17), v21), vabsq_f32(v19), vzip2q_s32(vtrn1q_s32(a3[1], a3[1]), a3[1]));
    }

    sub_1AF1274C0(v5, v14, v20, v22);
    return;
  }

LABEL_10:
  v23 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD2770(v4, v23);
  }
}

uint64_t sub_1AF1274C0(uint64_t result, unsigned int a2, __n128 a3, float32x4_t a4)
{
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v5 = vbslq_s8(vceqq_f32(vabsq_f32(a4), vnegq_f32(v4)), xmmword_1AFE20C40, a4);
  v6 = *(result + 24);
  v7 = *(result + 96);
  if (v6 == 4)
  {
    v8 = v7 + 96 * (a2 >> 2);
    *(v8 + 4 * (a2 & 3)) = a3.n128_u32[0];
    *(v8 + 4 * (a2 & 3 | 4)) = a3.n128_u32[1];
    *(v8 + 4 * (a2 & 3 | 8)) = a3.n128_u32[2];
    *(v8 + 4 * (a2 & 3 | 0xC)) = v5.i32[0];
    *(v8 + 4 * (a2 & 3 | 0x10)) = v5.i32[1];
    v9 = a2 & 3 | 0x14;
    goto LABEL_5;
  }

  if (v6 == 8)
  {
    v8 = v7 + 192 * (a2 >> 3);
    *(v8 + 4 * (a2 & 7)) = a3.n128_u32[0];
    *(v8 + 4 * (a2 & 7 | 8)) = a3.n128_u32[1];
    *(v8 + 4 * (a2 & 7 | 0x10)) = a3.n128_u32[2];
    *(v8 + 4 * (a2 & 7 | 0x18)) = v5.i32[0];
    *(v8 + 4 * (a2 & 7 | 0x20)) = v5.i32[1];
    v9 = a2 & 7 | 0x28;
LABEL_5:
    *(v8 + 4 * v9) = v5.i32[2];
    return result;
  }

  v10 = v7 + 32 * a2;
  *v10 = a3;
  *(v10 + 16) = v5;
  return result;
}

uint64_t sub_1AF1275C4(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD26F8(v6, a2, v7, v8, v9, v10, v11, v12);
    if ((v4 & 0x80000000) == 0)
    {
LABEL_4:
      if (v4 < ((*(v5 + 40) - *(v5 + 32)) >> 2))
      {
        return sub_1AF1274C0(v5, *(*(v5 + 32) + 4 * v4), *a3, *(a3 + 16));
      }
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v13 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD27E8();
  }

  return sub_1AF1274C0(v5, *(*(v5 + 32) + 4 * v4), *a3, *(a3 + 16));
}

void sub_1AF12766C(uint64_t result, int *a2, float32x4_t *a3, int a4)
{
  LODWORD(v4) = a4;
  v6 = a2;
  if (!result && (v8 = sub_1AF0D5194(0, a2), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD26F8(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v4 = v4;
  v16 = a3 + 2;
  do
  {
    v18 = *v6++;
    v17 = v18;
    if (v18 != -1)
    {
      v19 = *(*(result + 32) + 4 * v17);
      if (v19 < *(result + 16))
      {
        v20 = xmmword_1AFE201A0;
        v21 = xmmword_1AFE20C40;
        if ((*(*(result + 88) + 2 * v19) & 8) == 0)
        {
          v22 = v16[-2];
          v23 = v16[-1];
          v24 = (*(result + 64) + 32 * v19);
          v20 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v16[1], *v16, *v24, 2), v23, *v24->f32, 1), v22, COERCE_FLOAT(*v24));
          v20.n128_u32[3] = HIDWORD(*v24);
          v25 = v24[1];
          v25.i32[1] = v25.i32[0];
          v25.i32[2] = v24[1];
          v21 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v24[1].f32, 1), v24[1]), vabsq_f32(v23)), vabsq_f32(v22), v25), vabsq_f32(*v16), vzip2q_s32(vtrn1q_s32(v24[1], v24[1]), v24[1]));
        }

        sub_1AF1274C0(result, v19, v20, v21);
      }
    }

    v16 += 4;
    --v4;
  }

  while (v4);
}

uint64_t sub_1AF127798(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD26F8(v4, a2, v5, v6, v7, v8, v9, v10);
    if ((v2 & 0x80000000) == 0)
    {
LABEL_4:
      if (v2 < ((*(v3 + 40) - *(v3 + 32)) >> 2))
      {
        return sub_1AF127838(v3, *(*(v3 + 32) + 4 * v2));
      }
    }
  }

  else if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD27E8();
  }

  return sub_1AF127838(v3, *(*(v3 + 32) + 4 * v2));
}

uint64_t sub_1AF127838(uint64_t result, uint64_t a2)
{
  if (*(result + 16) > a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 104);
    v5 = *(v4 + 8 * a2);
    if (v5)
    {
      v6 = sub_1AF1BAF14(*(v4 + 8 * a2), a2);
      v7 = v3[10];
      *(v3[9] + 4 * v2) = v6;
      *(v7 + 4 * v2) = HIDWORD(v6);
      sub_1AF1BA950(v5, v8);
      if (v10)
      {
        v11 = 3;
      }

      else
      {
        v11 = 1;
      }

      if (sub_1AF1BAD78(v5, v9))
      {
        v11 |= 4u;
      }

      if (sub_1AF1B7AF0(v5))
      {
        v11 |= 0x10u;
      }

      if (sub_1AF1B7B34(v5, v12))
      {
        v11 |= 8u;
      }

      if (sub_1AF1B83E8(v5, v13))
      {
        v11 |= 0x20u;
      }

      result = sub_1AF1BC2B8(v5);
      *(v3[11] + 2 * v2) = (256 << result) & 0xFF00 | v11;
    }
  }

  return result;
}

double sub_1AF127918(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD26F8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF127974(a1, a2);
}

double sub_1AF127974(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if ((a2 & 0x80000000) != 0 || a2 >= ((*(a1 + 40) - *(a1 + 32)) >> 2))
  {
    v4 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD285C();
    }
  }

  v5 = *(*(v3 + 32) + 4 * v2);
  if (v5 >= *(v3 + 16))
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD28D0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(v3 + 16);
  v15 = (v14 - 1);
  *(v3 + 16) = v15;
  if (v5 == v15)
  {
    v16 = 1 << ((v14 - 1) & 7);
    v17 = v15 >> 3;
  }

  else
  {
    v18 = sub_1AF1284F0(v3, v14 - 1);
    sub_1AF1274C0(v3, v5, v18, v19);
    v20 = *(v3 + 64);
    v21 = (v20 + 32 * v15);
    v22 = v21[1];
    v23 = (v20 + 32 * v5);
    *v23 = *v21;
    v23[1] = v22;
    *(*(v3 + 104) + 8 * v5) = *(*(v3 + 104) + 8 * v15);
    v24 = *(v3 + 80);
    *(*(v3 + 72) + 4 * v5) = *(*(v3 + 72) + 4 * v15);
    *(v24 + 4 * v5) = *(v24 + 4 * v15);
    *(*(v3 + 88) + 2 * v5) = *(*(v3 + 88) + 2 * v15);
    v16 = 1 << (v15 & 7);
    v25 = *(v3 + 112);
    v17 = v15 >> 3;
    LODWORD(v24) = 1 << (v5 & 7);
    v26 = *(v25 + (v5 >> 3));
    v27 = v26 & ~v24;
    v28 = v26 | v24;
    if ((v16 & *(v25 + (v15 >> 3))) == 0)
    {
      v28 = v27;
    }

    *(v25 + (v5 >> 3)) = v28;
    *(*(v3 + 32) + 4 * *(*(*(v3 + 104) + 8 * v15) + 216)) = v5;
  }

  sub_1AF1274C0(v3, v15, xmmword_1AFE20FC0, unk_1AFE20FD0);
  v29 = (*(v3 + 64) + 32 * v15);
  result = 0.0;
  *v29 = xmmword_1AFE201A0;
  v29[1] = xmmword_1AFE20B70;
  *(*(v3 + 104) + 8 * v15) = 0;
  v31 = *(v3 + 80);
  *(*(v3 + 72) + 4 * v15) = 0;
  *(v31 + 4 * v15) = 0;
  *(*(v3 + 88) + 2 * v15) = 0;
  *(*(v3 + 112) + v17) &= ~v16;
  *(*(v3 + 32) + 4 * v2) = *(v3 + 56);
  *(v3 + 56) = v2;
  return result;
}

void sub_1AF127B58(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v43 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    v7 = sub_1AF0D5194(0, v1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD26F8(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(v6 + 88);
  v29 = *(v6 + 96);
  v30 = v15;
  v31 = *(v6 + 72);
  v32 = *(v6 + 64);
  v33 = *(v6 + 104);
  if (v3)
  {
    v16 = *v3;
    v17 = *(v3 + 16);
    v18 = *(v3 + 24);
    v19 = *(v3 + 28);
    LOWORD(v27[0]) = *(v3 + 29);
    BYTE2(v27[0]) = *(v3 + 31);
    v20 = *(v3 + 32);
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v16 = xmmword_1AFE20C30;
    v17 = 255;
    v18 = 255;
  }

  v21 = 0;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v27[0];
  v39 = BYTE2(v27[0]);
  v40 = v20;
  v42 = 1;
  do
  {
    *&v28[v21] = vnegq_f32(*(v4 + v21));
    v21 += 16;
  }

  while (v21 != 96);
  v22 = *(v6 + 16) + 2047;
  memset(v27, 0, 512);
  v41 = v27;
  if (v22 >= 0x800)
  {
    v23 = 0;
    v24 = v22 >> 11;
    do
    {
      v25 = v23 + 2048;
      v26 = (*(v6 + 176))(v28);
      if (v26)
      {
        (*(v40 + 16))(v40, v41, v26);
      }

      v23 = v25;
      --v24;
    }

    while (v24);
  }
}

void sub_1AF127D6C(uint64_t a1)
{
  *&v2 = MEMORY[0x1EEE9AC00](a1);
  v5 = v1;
  v7 = v6;
  v51 = *MEMORY[0x1E69E9840];
  if (!v6)
  {
    v30 = v3;
    v31 = v4;
    v29 = v2;
    v8 = sub_1AF0D5194(0, v1);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    v2 = v29;
    v3 = v30;
    v4 = v31;
    if (v9)
    {
      sub_1AFDD26F8(v8, v10, v11, v12, v13, v14, v15, v16);
      v2 = v29;
      v3 = v30;
      v4 = v31;
    }
  }

  v17 = *(v7 + 88);
  v33 = *(v7 + 96);
  v18 = *(v7 + 16) + 2047;
  memset(v50, 0, 512);
  v34 = v17;
  v35 = *(v7 + 72);
  v36 = *(v7 + 64);
  v37 = *(v7 + 104);
  if (v5)
  {
    v19 = *v5;
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    v22 = *(v5 + 28);
    v48 = *(v5 + 29);
    v49 = *(v5 + 31);
    v23 = *(v5 + 32);
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v19 = xmmword_1AFE20C30;
    v20 = 255;
    v21 = 255;
  }

  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v48;
  v43 = v49;
  v44 = v23;
  v47 = 1;
  v45 = v50;
  v46 = &v48;
  v32[0] = v2;
  v32[1] = v3;
  v38 = v19;
  v32[2] = v4;
  if (v18 >= 0x800)
  {
    v24 = 0;
    v25 = v18 >> 11;
    do
    {
      v26 = (v24 + 2048);
      v27 = *(v7 + 16);
      if (v26 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      sub_1AF127FA0(v7, v32, v24, v28);
      v24 = v26;
      --v25;
    }

    while (v25);
  }
}

uint64_t sub_1AF127FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v6 = 160;
  if (*(a2 + 844))
  {
    v6 = 168;
  }

  result = (*(a1 + v6))(a2, a3, a4);
  if (result)
  {
    v9 = result;
    if (*(a2 + 844) == 1)
    {
      MEMORY[0x1EEE9AC00](result);
      v11 = (&v56 - v9);
      v12 = 0;
      v13 = &v11->n128_u32[2];
      __asm { FMOV            V0.4S, #1.0 }

      v56 = _Q0;
      do
      {
        v18 = *(*(a2 + 864) + 4 * v12);
        v19 = *(*(a1 + 104) + 8 * v18);
        v20 = *(a1 + 64) + 32 * v18;
        v21 = *(v20 + 16);
        v57 = *v20;
        v58 = v21;
        v22 = sub_1AF1B9B04(v19, v10);
        v23 = *v22;
        v24 = *(v22 + 16);
        v25 = *(v22 + 32);
        v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(*(v22 + 48), *v22, v57.f32[0]), v24, *v57.f32, 1), v25, v57, 2);
        v27 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v24)), vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v25);
        v28 = vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), *v22);
        if ((vaddv_f32(*v28.f32) + v28.f32[2]) >= 0.0)
        {
          v29 = 1.0;
        }

        else
        {
          v29 = -1.0;
        }

        v30 = vmulq_f32(v23, v23);
        v31 = vmulq_f32(v24, v24);
        v32 = vadd_f32(vzip1_s32(*v30.i8, *v31.i8), vzip2_s32(*v30.i8, *v31.i8));
        v33 = vextq_s8(v30, v30, 8uLL);
        *v33.f32 = vsqrt_f32(vadd_f32(v32, vzip1_s32(*v33.f32, *&vextq_s8(v31, v31, 8uLL))));
        v34 = vmulq_f32(v25, v25);
        v33.i32[2] = sqrtf(vaddv_f32(*v34.f32) + v34.f32[2]);
        v35 = vmulq_n_f32(v33, v29);
        v36 = vmulq_f32(v23, vdivq_f32(v56, vdupq_lane_s32(*v35.f32, 0)));
        v37 = vmulq_f32(v24, vdivq_f32(v56, vdupq_lane_s32(*v35.f32, 1)));
        v38 = vmulq_f32(v25, vdivq_f32(v56, vdupq_laneq_s32(v35, 2)));
        v39 = vmulq_f32(v35, v58);
        v40 = vsubq_f32(v26, *a2);
        v41 = vzip2q_s32(v36, v38);
        v42 = vzip1q_s32(vzip1q_s32(v36, v38), v37);
        v43 = vtrn2q_s32(v36, v37);
        v43.i32[2] = v38.i32[1];
        v44 = vzip1q_s32(v41, vdupq_laneq_s32(v37, 2));
        v45 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v43, *v40.f32, 1), v42, v40.f32[0]), v44, v40, 2);
        v46 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v43, *(a2 + 16), 1), v42, COERCE_FLOAT(*(a2 + 16))), v44, *(a2 + 16), 2);
        v47 = vdivq_f32(vaddq_f32(v45, v39), v46);
        v48 = vdivq_f32(vsubq_f32(v45, v39), v46);
        v47.i32[3] = 0;
        v48.i32[3] = 0;
        v49 = vminnmq_f32(v47, v48);
        v52 = vmaxnmq_f32(v47, v48);
        v50 = fmaxf(fmaxf(v49.f32[0], v49.f32[2]), v49.f32[1]);
        v51 = fminf(fminf(v52.n128_f32[0], v52.n128_f32[2]), v52.n128_f32[1]);
        v52.n128_u64[0] = 0;
        if (v51 >= v50 && v51 >= 0.0 && v50 < *(a2 + 44))
        {
          if (v50 >= 0.0)
          {
            v52.n128_f32[0] = v50;
          }

          else
          {
            v52.n128_f32[0] = v51;
          }
        }

        *(v13 - 1) = v19;
        *v13 = v52.n128_u32[0];
        v13 += 4;
        ++v12;
      }

      while (v9 != v12);
      v59[0] = sub_1AF12AAC8;
      v8 = sub_1AF12AADC(&v56 - v9, &v56, v59, 126 - 2 * __clz(v9), 1, v52);
      v54 = 0;
      do
      {
        v55 = v11->n128_u64[0];
        ++v11;
        *(*(a2 + 856) + v54) = v55;
        v54 += 8;
      }

      while (8 * v9 != v54);
    }

    return (*(*(a2 + 848) + 16))(v8);
  }

  return result;
}

void sub_1AF12829C(uint64_t a1)
{
  *&v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v1;
  v6 = v5;
  v47 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    v27 = v2;
    v28 = v3;
    v7 = sub_1AF0D5194(0, v1);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    v2 = v27;
    v3 = v28;
    if (v8)
    {
      sub_1AFDD26F8(v7, v9, v10, v11, v12, v13, v14, v15);
      v2 = v27;
      v3 = v28;
    }
  }

  v16 = *(v6 + 88);
  v32 = *(v6 + 96);
  v17 = *(v6 + 16) + 2047;
  memset(v46, 0, 512);
  v33 = v16;
  v34 = *(v6 + 72);
  v35 = *(v6 + 64);
  v36 = *(v6 + 104);
  if (v4)
  {
    v18 = *v4;
    v19 = *(v4 + 16);
    v20 = *(v4 + 24);
    v21 = *(v4 + 28);
    v29 = *(v4 + 29);
    v30 = *(v4 + 31);
    v22 = *(v4 + 32);
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v18 = xmmword_1AFE20C30;
    v19 = 255;
    v20 = 255;
  }

  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v29;
  v42 = v30;
  v43 = v22;
  v45 = 1;
  v31[0] = v2;
  v31[1] = v3;
  v44 = v46;
  if (v17 >= 0x800)
  {
    v23 = 0;
    v24 = v17 >> 11;
    do
    {
      v25 = v23 + 2048;
      v26 = (*(v6 + 152))(v31);
      if (v26)
      {
        (*(v43 + 16))(v43, v44, v26);
      }

      v23 = v25;
      --v24;
    }

    while (v24);
  }
}

double sub_1AF1284D0(uint64_t a1, int a2, int a3)
{
  v3 = *(*(a1 + 32) + 4 * a2);
  if (a3)
  {
    v4 = *(*(a1 + 64) + 32 * v3);
  }

  else
  {
    *&v4 = sub_1AF1284F0(a1, v3).n128_u64[0];
  }

  return *&v4;
}

__n128 sub_1AF1284F0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 96);
  if (v2 == 4)
  {
    v10 = (v3 + 96 * (a2 >> 2) + 4 * (a2 & 3));
    __asm { FMOV            V0.4S, #1.0 }

    result.n128_u32[0] = *v10;
    result.n128_u32[1] = v10[4];
  }

  else if (v2 == 8)
  {
    v4 = (v3 + 192 * (a2 >> 3) + 4 * (a2 & 7));
    __asm { FMOV            V0.4S, #1.0 }

    result.n128_u32[0] = *v4;
    result.n128_u32[1] = v4[8];
  }

  else
  {
    return *(v3 + 32 * a2);
  }

  return result;
}

__n128 sub_1AF128598(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x5002000000;
  v22 = sub_1AF128758;
  v23 = nullsub_49;
  v24 = xmmword_1AFE201A0;
  v25 = xmmword_1AFE20B70;
  if (a3)
  {
    v27 = *sub_1AF1B9B04(a2, a2);
    v28 = __invert_f4(v27);
    v5 = *(a2 + 216);
    if (v5 != -1)
    {
      v6 = (*(a1 + 64) + 32 * *(*(a1 + 32) + 4 * v5));
      v7 = *v6;
      v8 = v6[1];
      v9 = v20;
      *(v20 + 3) = v7;
      *(v9 + 4) = v8;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = sub_1AF128768;
    v14[3] = &unk_1E7A79B68;
    v17 = a2;
    v18 = a1;
    v15 = v28;
    v16 = &v19;
    v10 = v14;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = sub_1AF128840;
    v13[3] = &unk_1E7A79B90;
    v13[4] = &v19;
    v13[5] = a1;
    v10 = v13;
  }

  sub_1AF1B94AC(a2, v10);
  v12 = *(v20 + 3);
  _Block_object_dispose(&v19, 8);
  return v12;
}

__n128 sub_1AF128758(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_1AF128768(float32x4_t *a1, uint64_t a2)
{
  if (a1[6].i64[1] != a2)
  {
    v2 = *(a2 + 216);
    if (v2 != -1)
    {
      v4 = sub_1AF1284F0(a1[7].i64[0], *(*(a1[7].i64[0] + 32) + 4 * v2));
      v5 = a1[2];
      v6 = a1[3];
      v7 = a1[4];
      v8 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(a1[5], v5, v4.n128_f32[0]), v6, v4.n128_u64[0], 1), v7, v4, 2);
      v8.i32[3] = v4.n128_i32[3];
      v10 = v9;
      v10.i32[1] = v9.i32[0];
      v10.i32[2] = v9.i32[0];
      v11 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v5), v10), vuzp2q_s32(vdupq_lane_s32(*v9.i8, 1), v9), vabsq_f32(v6)), vzip2q_s32(vtrn1q_s32(v9, v9), v9), vabsq_f32(v7));
      v12 = *(a1[6].i64[0] + 8);
      v13 = v12[3];
      v14 = v12[4];
      v15 = vminnmq_f32(vsubq_f32(v8, v11), vsubq_f32(v13, v14));
      v16 = vmaxnmq_f32(vaddq_f32(v8, v11), vaddq_f32(v14, v13));
      v14.i64[0] = 0x3F0000003F000000;
      v14.i64[1] = 0x3F0000003F000000;
      v12[3] = vmulq_f32(vaddq_f32(v16, v15), v14);
      v12[4] = vmulq_f32(vsubq_f32(v16, v15), v14);
    }
  }

  return 0;
}

uint64_t sub_1AF128840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 216);
  if (v2 != -1)
  {
    v4 = sub_1AF1284F0(*(a1 + 40), *(*(*(a1 + 40) + 32) + 4 * v2));
    v5 = *(*(a1 + 32) + 8);
    v6 = v5[3];
    v7 = v5[4];
    v9 = vminnmq_f32(vsubq_f32(v4, v8), vsubq_f32(v6, v7));
    v10 = vmaxnmq_f32(vaddq_f32(v4, v8), vaddq_f32(v7, v6));
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    v5[3] = vmulq_f32(vaddq_f32(v10, v9), v6);
    v5[4] = vmulq_f32(vsubq_f32(v10, v9), v6);
  }

  return 0;
}

uint64_t sub_1AF1288C0(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = v2;
  v14 = *(a1 + 72);
  v15 = *(a1 + 64);
  v16 = *(a1 + 104);
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    v9 = *(a2 + 29);
    v10 = *(a2 + 31);
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v3 = xmmword_1AFE20C30;
    v4 = 255;
    v5 = 255;
  }

  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v9;
  v22 = v10;
  v23 = v7;
  v24 = 1;
  return (*(a1 + 144))(v11, 0, *(a1 + 16));
}

uint64_t sub_1AF1289C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if ((a2 & 7) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 3;
  if (v14 >= (a3 + 7) >> 3)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v18 = (a1 + 816);
  v19 = *(a1 + 784);
  v20 = (a1 + 820);
  v21 = vld1q_dup_f32(v18);
  v22 = *(a1 + 792);
  v23 = vld1q_dup_f32(v20);
  v24 = *(a1 + 16);
  v25 = vdupq_lane_s32(*a1, 0);
  v26 = vdupq_lane_s32(*a1, 1);
  v27 = vdupq_laneq_s32(*a1, 2);
  v28 = vdupq_lane_s32(*v24.i8, 0);
  v29 = vdupq_lane_s32(*v24.i8, 1);
  v30 = vdupq_laneq_s32(v24, 2);
  v31 = v4 & 0xFFFFFFF8;
  v32 = *(a1 + 768);
  do
  {
    v33 = (v32 + 192 * v14);
    v34 = vmovn_s16(vandq_s8(vandq_s8(vbicq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v17, vmovl_u16(*(v16 + 16 * v14)))), vceqzq_s32(vandq_s8(v17, vmovl_high_u16(*(v16 + 16 * v14))))), vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v22 + 32 * v14), v23), vandq_s8(*(v19 + 32 * v14), v21))), vceqzq_s32(vorrq_s8(vandq_s8(*(v22 + 32 * v14 + 16), v23), vandq_s8(*(v19 + 32 * v14 + 16), v21))))), vuzp1q_s16(vcgeq_f32(vaddq_f32(v33[6], v28), vabdq_f32(v25, *v33)), vcgeq_f32(vaddq_f32(v33[7], v28), vabdq_f32(v25, v33[1])))), vandq_s8(vuzp1q_s16(vcgeq_f32(vaddq_f32(v33[8], v29), vabdq_f32(v26, v33[2])), vcgeq_f32(vaddq_f32(v33[9], v29), vabdq_f32(v26, v33[3]))), vuzp1q_s16(vcgeq_f32(vaddq_f32(v33[10], v30), vabdq_f32(v27, v33[4])), vcgeq_f32(vaddq_f32(v33[11], v30), vabdq_f32(v27, v33[5]))))));
    v35 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v34, *v17.i8)), 0x1FuLL)), xmmword_1AFE20C60), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v34, *v17.i8)), 0x1FuLL)), xmmword_1AFE20C50)));
    if (v35)
    {
      v36 = 8 * v14 >= a3;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = v31;
      do
      {
        if (v35)
        {
          *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v37);
          result = (result + 1);
        }

        if (v35 < 2)
        {
          break;
        }

        ++v37;
        v35 >>= 1;
      }

      while (v37 < a3);
    }

    ++v14;
    v31 += 8;
  }

  while (v14 != (a3 + 7) >> 3);
  return result;
}

uint64_t sub_1AF128C04(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if ((a2 & 3) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 2;
  if (v14 >= (a3 + 3) >> 2)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = (a1 + 816);
  v18 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v19 = *(a1 + 784);
  v20 = vld1q_dup_f32(v17);
  v21 = (a1 + 820);
  v22 = *(a1 + 792);
  v23 = vld1q_dup_f32(v21);
  v24 = *(a1 + 16);
  v25 = vdupq_lane_s32(*a1, 0);
  v26 = vdupq_lane_s32(*a1, 1);
  v27 = vdupq_laneq_s32(*a1, 2);
  v28 = vdupq_lane_s32(*v24.i8, 0);
  v29 = vdupq_lane_s32(*v24.i8, 1);
  v30 = vdupq_laneq_s32(v24, 2);
  v31 = v4 & 0xFFFFFFFC;
  v32 = *(a1 + 768);
  do
  {
    v33 = (v32 + 96 * v14);
    v34 = vaddvq_s32(vandq_s8(vandq_s8(vandq_s8(vbicq_s8(vceqzq_s32(vandq_s8(v18, vmovl_u16(*(v16 + 8 * v14)))), vceqzq_s32(vorrq_s8(vandq_s8(*(v22 + 16 * v14), v23), vandq_s8(*(v19 + 16 * v14), v20)))), vcgeq_f32(vaddq_f32(v33[3], v28), vabdq_f32(v25, *v33))), vandq_s8(vcgeq_f32(vaddq_f32(v33[4], v29), vabdq_f32(v26, v33[1])), vcgeq_f32(vaddq_f32(v33[5], v30), vabdq_f32(v27, v33[2])))), xmmword_1AFE20C60));
    if (v34)
    {
      v35 = 4 * v14 >= a3;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      v36 = v31;
      do
      {
        if (v34)
        {
          *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v36);
          result = (result + 1);
        }

        if (v34 < 2)
        {
          break;
        }

        ++v36;
        v34 >>= 1;
      }

      while (v36 < a3);
    }

    ++v14;
    v31 += 4;
  }

  while (v14 != (a3 + 3) >> 2);
  return result;
}

uint64_t sub_1AF128DAC(float32x4_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[48].i64[1];
  v5 = a1[52].i32[1] | (~a1[52].i32[2] << 8);
  v6 = a1[49].i64[0];
  v7 = a1[51].i32[0];
  v8 = a1[51].i32[1];
  v9 = a1[49].i64[1];
  v10 = a2;
  v11 = (32 * a2) | 0x10;
  do
  {
    if (*(v9 + 4 * v10) & v8 | *(v6 + 4 * v10) & v7)
    {
      v12 = (v5 & *(v4 + 2 * v10)) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = vcgeq_f32(vaddq_f32(*(a1[48].i64[0] + v11), a1[1]), vabdq_f32(*a1, *(a1[48].i64[0] + v11 - 16)));
      v13.i32[3] = v13.i32[2];
      if ((vminvq_u32(v13) & 0x80000000) != 0)
      {
        *(a1[53].i64[1] + 8 * v3) = *(a1[50].i64[1] + 8 * v10);
        v3 = (v3 + 1);
      }
    }

    ++v10;
    v11 += 32;
  }

  while (a3 != v10);
  return v3;
}

double sub_1AF128E74(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v78 = *MEMORY[0x1E69E9840];
  if ((a2 & 7) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 776);
  v15 = v4 >> 3;
  v16 = (a1 + 816);
  v17 = *(a1 + 836);
  v18 = *(a1 + 840);
  v19 = *(a1 + 832);
  v20 = *(a1 + 784);
  v21 = (a1 + 820);
  v22 = vld1q_dup_f32(v16);
  v23 = vld1q_dup_f32(v21);
  v24 = *(a1 + 792);
  v74 = xmmword_1AFE20EC0;
  v75 = unk_1AFE20ED0;
  v76 = xmmword_1AFE20EE0;
  v77 = unk_1AFE20EF0;
  v72 = xmmword_1AFE20EA0;
  v73 = unk_1AFE20EB0;
  v68 = xmmword_1AFE20F20;
  v69 = unk_1AFE20F30;
  v70 = xmmword_1AFE20F40;
  v71 = unk_1AFE20F50;
  v66 = xmmword_1AFE20F00;
  v67 = unk_1AFE20F10;
  if (v15 >= (a3 + 7) >> 3)
  {
    v54.i64[0] = 0x80000000800000;
    v54.i64[1] = 0x80000000800000;
    v48 = vnegq_f32(v54);
    v55.i64[0] = 0x80000000800000;
    v55.i64[1] = 0x80000000800000;
    v52.i64[0] = 0x80000000800000;
    v52.i64[1] = 0x80000000800000;
    v53.i64[0] = 0x80000000800000;
    v53.i64[1] = 0x80000000800000;
    v50.i64[0] = 0x80000000800000;
    v50.i64[1] = 0x80000000800000;
    v49 = v48;
    v51.i64[0] = 0x80000000800000;
    v51.i64[1] = 0x80000000800000;
    v46 = v48;
    v47 = v48;
    v44 = v48;
    v45 = v48;
  }

  else
  {
    v25 = vdupq_n_s32(v17 | (~v18 << 8));
    v26 = vdupq_lane_s32(v19, 0);
    v27 = *(a1 + 768) + 192 * v15;
    do
    {
      v28 = 0;
      v29 = *(v14 + 16 * v15);
      v30 = vmovl_high_u16(v29);
      v31 = vmovl_u16(*v29.i8);
      *v31.i8 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v24 + 32 * v15), v23), vandq_s8(*(v20 + 32 * v15), v22))), vceqzq_s32(vorrq_s8(vandq_s8(*(v24 + 32 * v15 + 16), v23), vandq_s8(*(v20 + 32 * v15 + 16), v22))))), vuzp1q_s16(vceqzq_s32(vandq_s8(v26, v31)), vceqzq_s32(vandq_s8(v26, v30)))), vuzp1q_s16(vceqzq_s32(vandq_s8(v25, v31)), vceqzq_s32(vandq_s8(v25, v30)))));
      v32 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v31.i8, *v22.i8)), 0x1FuLL));
      v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v31.i8, *v22.i8)), 0x1FuLL));
      v34 = v27;
      do
      {
        v35 = (&v72 + 2 * v28);
        v36 = v35[1];
        v37 = v34[1];
        v39 = v34[6];
        v38 = v34[7];
        v40 = (&v66 + 2 * v28);
        v41 = *v40;
        v42 = v40[1];
        v43 = vbslq_s8(v33, vaddq_f32(v39, *v34), *v40);
        *v35 = vminnmq_f32(*v35, vbslq_s8(v33, vsubq_f32(*v34, v39), *v35));
        v35[1] = vminnmq_f32(v36, vbslq_s8(v32, vsubq_f32(v37, v38), v36));
        *v40 = vmaxnmq_f32(v41, v43);
        v40[1] = vmaxnmq_f32(v42, vbslq_s8(v32, vaddq_f32(v38, v37), v42));
        ++v28;
        v34 += 2;
      }

      while (v28 != 3);
      ++v15;
      v27 += 192;
    }

    while (v15 != (a3 + 7) >> 3);
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v47 = v75;
    v48 = v76;
    v49 = v77;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v54 = v70;
    v55 = v71;
  }

  *&v56 = vmaxvq_f32(vmaxnmq_f32(v52, v53));
  v57 = vmaxnmq_f32(v54, v55);
  __asm { FMOV            V2.4S, #1.0 }

  v63.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vminvq_f32(vminnmq_f32(v46, v47))), COERCE_UNSIGNED_INT(vminvq_f32(vminnmq_f32(v44, v45))));
  v63.i64[1] = __PAIR64__(_Q2.u32[3], COERCE_UNSIGNED_INT(vminvq_f32(vminnmq_f32(v48, v49))));
  _Q2.i64[0] = __PAIR64__(v56, COERCE_UNSIGNED_INT(vmaxvq_f32(vmaxnmq_f32(v50, v51))));
  _Q2.i32[2] = vmaxvq_f32(v57);
  v64.i64[0] = 0x3F0000003F000000;
  v64.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vaddq_f32(_Q2, v63), v64).u64[0];
  return result;
}

double sub_1AF129168(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if ((a2 & 3) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 776);
  v15 = v4 >> 2;
  v16 = (a1 + 816);
  v17 = *(a1 + 836);
  v18 = *(a1 + 840);
  v19 = (a1 + 832);
  v20 = vld1q_dup_f32(v19);
  v21 = *(a1 + 784);
  v22 = (a1 + 820);
  v23 = vld1q_dup_f32(v16);
  v24 = vld1q_dup_f32(v22);
  v25 = *(a1 + 792);
  v52 = xmmword_1AFE20F60;
  v53 = unk_1AFE20F70;
  v54 = xmmword_1AFE20F80;
  v49 = xmmword_1AFE20F90;
  v50 = unk_1AFE20FA0;
  v51 = xmmword_1AFE20FB0;
  if (v15 >= (a3 + 3) >> 2)
  {
    v40.i64[0] = 0x80000000800000;
    v40.i64[1] = 0x80000000800000;
    v37 = vnegq_f32(v40);
    v38.i64[0] = 0x80000000800000;
    v38.i64[1] = 0x80000000800000;
    v39.i64[0] = 0x80000000800000;
    v39.i64[1] = 0x80000000800000;
    v35 = v37;
    v36 = v37;
  }

  else
  {
    v26 = vdupq_n_s32(v17 | (~v18 << 8));
    v27 = *(a1 + 768) + 96 * v15;
    do
    {
      v28 = 0;
      v29 = vmovl_u16(*(v14 + 8 * v15));
      v30 = vmovl_s16(vmovn_s32(vandq_s8(vbicq_s8(vtstq_s32(v20, v29), vceqzq_s32(vorrq_s8(vandq_s8(*(v25 + 16 * v15), v24), vandq_s8(*(v21 + 16 * v15), v23)))), vceqzq_s32(vandq_s8(v26, v29)))));
      v31 = v27;
      do
      {
        v32 = v31[3];
        v33 = *(&v49 + v28);
        v34 = vbslq_s8(v30, vaddq_f32(v32, *v31), v33);
        *(&v52 + v28) = vminnmq_f32(*(&v52 + v28), vbslq_s8(v30, vsubq_f32(*v31, v32), *(&v52 + v28)));
        *(&v49 + v28++) = vmaxnmq_f32(v33, v34);
        ++v31;
      }

      while (v28 != 3);
      ++v15;
      v27 += 96;
    }

    while (v15 != (a3 + 3) >> 2);
    v36 = v52;
    v35 = v53;
    v37 = v54;
    v39 = v49;
    v38 = v50;
    v40 = v51;
  }

  __asm { FMOV            V6.4S, #1.0 }

  v46.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vminvq_f32(v35)), COERCE_UNSIGNED_INT(vminvq_f32(v36)));
  v46.i64[1] = __PAIR64__(_Q6.u32[3], COERCE_UNSIGNED_INT(vminvq_f32(v37)));
  _Q6.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vmaxvq_f32(v38)), COERCE_UNSIGNED_INT(vmaxvq_f32(v39)));
  _Q6.i32[2] = vmaxvq_f32(v40);
  v47.i64[0] = 0x3F0000003F000000;
  v47.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vaddq_f32(_Q6, v46), v47).u64[0];
  return result;
}

double sub_1AF129390(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    v11.i64[0] = 0;
  }

  else
  {
    v3 = *(a1 + 836) | (~*(a1 + 840) << 8);
    v4 = *(a1 + 832);
    v5 = *(a1 + 816);
    v6 = *(a1 + 820);
    v7 = (*(a1 + 784) + 4 * a2);
    v8 = (*(a1 + 792) + 4 * a2);
    v9 = (*(a1 + 776) + 2 * a2);
    v10 = (*(a1 + 768) + 32 * a2 + 16);
    v11 = xmmword_1AFE201A0;
    v12 = xmmword_1AFE20B70;
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = a3 - a2;
    do
    {
      v15 = *v7++;
      v16 = v15 & v5;
      v17 = *v8++;
      v18 = v17 & v6;
      v19 = *v9++;
      v20 = v18 | v16;
      v21 = v4 & v19;
      if ((v3 & v19) == 0 && v20 != 0 && v21 != 0)
      {
        v24 = v10[-1];
        v25 = vminnmq_f32(vsubq_f32(v11, v12), vsubq_f32(v24, *v10));
        v26 = vmaxnmq_f32(vaddq_f32(v12, v11), vaddq_f32(*v10, v24));
        v11 = vmulq_f32(vaddq_f32(v26, v25), v13);
        v12 = vmulq_f32(vsubq_f32(v26, v25), v13);
      }

      v10 += 2;
      --v14;
    }

    while (v14);
  }

  return *v11.i64;
}

uint64_t sub_1AF129470(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if ((a2 & 7) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 3;
  if (v14 >= (a3 + 7) >> 3)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = (a1 + 816);
  v18 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v19 = *(a1 + 784);
  v20 = (a1 + 820);
  v21 = vld1q_dup_f32(v17);
  v22 = vld1q_dup_f32(v20);
  v23 = *(a1 + 792);
  v24 = vdupq_lane_s32(*a1, 0);
  v25 = vdupq_lane_s32(*a1, 1);
  v26 = vdupq_laneq_s32(*a1, 2);
  v27 = *(a1 + 32);
  v28 = vdupq_laneq_s32(v27, 3);
  v29 = *(a1 + 768);
  do
  {
    v30 = vmovn_s16(vbicq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v18, vmovl_u16(*(v16 + 16 * v14)))), vceqzq_s32(vandq_s8(v18, vmovl_high_u16(*(v16 + 16 * v14))))), vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v23 + 32 * v14), v22), vandq_s8(*(v19 + 32 * v14), v21))), vceqzq_s32(vorrq_s8(vandq_s8(*(v23 + 32 * v14 + 16), v22), vandq_s8(*(v19 + 32 * v14 + 16), v21))))));
    if ((vmaxvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(v30, *v18.i8), vzip2_s8(v30, *v18.i8))), 0x1FuLL))) & 0x80000000) != 0)
    {
      v31 = (v29 + 192 * v14);
      v32 = v31[1];
      v33 = v31[6];
      v34 = v31[7];
      v35 = vmulq_n_f32(vsubq_f32(v32, vaddq_f32(v24, v34)), v27.f32[0]);
      v36 = vmulq_n_f32(vsubq_f32(*v31, vaddq_f32(v24, v33)), v27.f32[0]);
      v38 = v31[2];
      v37 = v31[3];
      v39 = v31[8];
      v40 = v31[9];
      v41 = vmulq_lane_f32(vsubq_f32(v37, vaddq_f32(v25, v40)), *v27.f32, 1);
      v42 = vmulq_lane_f32(vsubq_f32(v38, vaddq_f32(v25, v39)), *v27.f32, 1);
      v43 = v31[4];
      v44 = v31[5];
      v45 = v31[10];
      v46 = v31[11];
      v47 = vmulq_laneq_f32(vsubq_f32(v44, vaddq_f32(v26, v46)), v27, 2);
      v48 = vmulq_laneq_f32(vsubq_f32(v43, vaddq_f32(v26, v45)), v27, 2);
      v49 = vmulq_n_f32(vaddq_f32(vsubq_f32(v32, v24), v34), v27.f32[0]);
      v50 = vmulq_n_f32(vaddq_f32(vsubq_f32(*v31, v24), v33), v27.f32[0]);
      v51 = vmulq_lane_f32(vaddq_f32(vsubq_f32(v37, v25), v40), *v27.f32, 1);
      v52 = vmulq_lane_f32(vaddq_f32(vsubq_f32(v38, v25), v39), *v27.f32, 1);
      v53 = vmulq_laneq_f32(vaddq_f32(vsubq_f32(v44, v26), v46), v27, 2);
      v54 = vmulq_laneq_f32(vaddq_f32(vsubq_f32(v43, v26), v45), v27, 2);
      v55 = vminnmq_f32(v36, v50);
      v56 = vminnmq_f32(v35, v49);
      v57 = vminnmq_f32(v47, v53);
      v58 = vmaxnmq_f32(v36, v50);
      v59 = vmaxnmq_f32(v35, v49);
      v60 = vmaxnmq_f32(v48, v54);
      v61 = vmaxnmq_f32(v47, v53);
      v62 = vmaxnmq_f32(v55, vmaxnmq_f32(vminnmq_f32(v42, v52), vminnmq_f32(v48, v54)));
      v63 = vmaxnmq_f32(v56, vmaxnmq_f32(vminnmq_f32(v41, v51), v57));
      v64 = vand_s8(vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v28, v62), vcgtq_f32(v28, v63)), vuzp1q_s16(vcgeq_f32(vminnmq_f32(v58, vminnmq_f32(vmaxnmq_f32(v42, v52), v60)), v62), vcgeq_f32(vminnmq_f32(v59, vminnmq_f32(vmaxnmq_f32(v41, v51), v61)), v63)))), v30);
      v65 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v64, *v18.i8)), 0x1FuLL)), xmmword_1AFE20C60), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v64, *v18.i8)), 0x1FuLL)), xmmword_1AFE20C50)));
      v66 = 8 * v14;
      if (v65 && v66 < a3)
      {
        v68 = *(a1 + 864);
        do
        {
          if (v65)
          {
            *(v68 + 4 * result) = v66;
            result = (result + 1);
          }

          if (v65 < 2)
          {
            break;
          }

          LODWORD(v66) = v66 + 1;
          v65 >>= 1;
        }

        while (v66 < a3);
      }
    }

    ++v14;
  }

  while (v14 != (a3 + 7) >> 3);
  return result;
}

uint64_t sub_1AF12977C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if ((a2 & 7) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 3;
  if (v14 >= (a3 + 7) >> 3)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = (a1 + 816);
  v18 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v19 = *(a1 + 784);
  v20 = (a1 + 820);
  v21 = vld1q_dup_f32(v17);
  v22 = vld1q_dup_f32(v20);
  v23 = vdupq_lane_s32(*a1, 0);
  v24 = vdupq_lane_s32(*a1, 1);
  v25 = vdupq_laneq_s32(*a1, 2);
  v26 = *(a1 + 792);
  v27 = *(a1 + 32);
  v28 = vdupq_laneq_s32(v27, 3);
  v29 = v4 & 0xFFFFFFF8;
  v30 = *(a1 + 768);
  do
  {
    v31 = vmovn_s16(vbicq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v18, vmovl_u16(*(v16 + 16 * v14)))), vceqzq_s32(vandq_s8(v18, vmovl_high_u16(*(v16 + 16 * v14))))), vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v26 + 32 * v14), v22), vandq_s8(*(v19 + 32 * v14), v21))), vceqzq_s32(vorrq_s8(vandq_s8(*(v26 + 32 * v14 + 16), v22), vandq_s8(*(v19 + 32 * v14 + 16), v21))))));
    if ((vmaxvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(v31, *v18.i8), vzip2_s8(v31, *v18.i8))), 0x1FuLL))) & 0x80000000) != 0)
    {
      v32 = (v30 + 192 * v14);
      v33 = v32[1];
      v34 = v32[6];
      v35 = v32[7];
      v36 = vmulq_n_f32(vsubq_f32(v33, vaddq_f32(v23, v35)), v27.f32[0]);
      v37 = vmulq_n_f32(vsubq_f32(*v32, vaddq_f32(v23, v34)), v27.f32[0]);
      v39 = v32[2];
      v38 = v32[3];
      v40 = v32[8];
      v41 = v32[9];
      v42 = vmulq_lane_f32(vsubq_f32(v38, vaddq_f32(v24, v41)), *v27.f32, 1);
      v43 = vmulq_lane_f32(vsubq_f32(v39, vaddq_f32(v24, v40)), *v27.f32, 1);
      v44 = v32[4];
      v45 = v32[5];
      v46 = v32[10];
      v47 = v32[11];
      v48 = vmulq_laneq_f32(vsubq_f32(v45, vaddq_f32(v25, v47)), v27, 2);
      v49 = vmulq_laneq_f32(vsubq_f32(v44, vaddq_f32(v25, v46)), v27, 2);
      v50 = vmulq_n_f32(vaddq_f32(vsubq_f32(v33, v23), v35), v27.f32[0]);
      v51 = vmulq_n_f32(vaddq_f32(vsubq_f32(*v32, v23), v34), v27.f32[0]);
      v52 = vmulq_lane_f32(vaddq_f32(vsubq_f32(v38, v24), v41), *v27.f32, 1);
      v53 = vmulq_lane_f32(vaddq_f32(vsubq_f32(v39, v24), v40), *v27.f32, 1);
      v54 = vmulq_laneq_f32(vaddq_f32(vsubq_f32(v45, v25), v47), v27, 2);
      v55 = vmulq_laneq_f32(vaddq_f32(vsubq_f32(v44, v25), v46), v27, 2);
      v56 = vminnmq_f32(v37, v51);
      v57 = vminnmq_f32(v36, v50);
      v58 = vminnmq_f32(v48, v54);
      v59 = vmaxnmq_f32(v37, v51);
      v60 = vmaxnmq_f32(v36, v50);
      v61 = vmaxnmq_f32(v49, v55);
      v62 = vmaxnmq_f32(v48, v54);
      v63 = vmaxnmq_f32(v56, vmaxnmq_f32(vminnmq_f32(v43, v53), vminnmq_f32(v49, v55)));
      v64 = vmaxnmq_f32(v57, vmaxnmq_f32(vminnmq_f32(v42, v52), v58));
      v65 = vand_s8(vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v28, v63), vcgtq_f32(v28, v64)), vuzp1q_s16(vcgeq_f32(vminnmq_f32(v59, vminnmq_f32(vmaxnmq_f32(v43, v53), v61)), v63), vcgeq_f32(vminnmq_f32(v60, vminnmq_f32(vmaxnmq_f32(v42, v52), v62)), v64)))), v31);
      v66 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v65, *v18.i8)), 0x1FuLL)), xmmword_1AFE20C60), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v65, *v18.i8)), 0x1FuLL)), xmmword_1AFE20C50)));
      if (v66 && 8 * v14 < a3)
      {
        v68 = v29;
        do
        {
          if (v66)
          {
            *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v68);
            result = (result + 1);
          }

          if (v66 < 2)
          {
            break;
          }

          ++v68;
          v66 >>= 1;
        }

        while (v68 < a3);
      }
    }

    ++v14;
    v29 += 8;
  }

  while (v14 != (a3 + 7) >> 3);
  return result;
}

uint64_t sub_1AF129A9C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if ((a2 & 3) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 2;
  if (v14 >= (a3 + 3) >> 2)
  {
    return 0;
  }

  result = 0;
  v16 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v17 = (a1 + 816);
  v18 = (a1 + 820);
  v19 = vld1q_dup_f32(v17);
  v20 = vld1q_dup_f32(v18);
  v21 = *(a1 + 776);
  v22 = vdupq_lane_s32(*a1, 0);
  v23 = vdupq_lane_s32(*a1, 1);
  v24 = *(a1 + 784);
  v25 = vdupq_laneq_s32(*a1, 2);
  v26 = *(a1 + 32);
  v27 = vdupq_laneq_s32(v26, 3);
  v28 = *(a1 + 792);
  v29 = *(a1 + 768);
  do
  {
    v30 = vbicq_s8(vceqzq_s32(vandq_s8(v16, vmovl_u16(*(v21 + 8 * v14)))), vceqzq_s32(vorrq_s8(vandq_s8(*(v28 + 16 * v14), v20), vandq_s8(*(v24 + 16 * v14), v19))));
    if ((vmaxvq_u32(v30) & 0x80000000) != 0)
    {
      v31 = (v29 + 96 * v14);
      v33 = v31[2];
      v32 = v31[3];
      v34 = v31[1];
      v35 = vmulq_n_f32(vsubq_f32(*v31, vaddq_f32(v22, v32)), v26.f32[0]);
      v36 = v31[4];
      v37 = v31[5];
      v38 = vmulq_lane_f32(vsubq_f32(v34, vaddq_f32(v23, v36)), *v26.f32, 1);
      v39 = vmulq_laneq_f32(vsubq_f32(v33, vaddq_f32(v25, v37)), v26, 2);
      v40 = vmulq_n_f32(vaddq_f32(vsubq_f32(*v31, v22), v32), v26.f32[0]);
      v41 = vmulq_lane_f32(vaddq_f32(vsubq_f32(v34, v23), v36), *v26.f32, 1);
      v42 = vmulq_laneq_f32(vaddq_f32(vsubq_f32(v33, v25), v37), v26, 2);
      v43 = vminnmq_f32(v35, v40);
      v44 = vmaxnmq_f32(v35, v40);
      v45 = vmaxnmq_f32(v38, v41);
      v46 = vmaxnmq_f32(v43, vmaxnmq_f32(vminnmq_f32(v38, v41), vminnmq_f32(v39, v42)));
      v47 = vaddvq_s32(vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgtq_f32(v27, v46), vcgeq_f32(vminnmq_f32(v44, vminnmq_f32(v45, vmaxnmq_f32(v39, v42))), v46))), vmovn_s32(v30))), xmmword_1AFE20C60));
      v48 = 4 * v14;
      if (v47 && v48 < a3)
      {
        v50 = *(a1 + 864);
        do
        {
          if (v47)
          {
            *(v50 + 4 * result) = v48;
            result = (result + 1);
          }

          if (v47 < 2)
          {
            break;
          }

          LODWORD(v48) = v48 + 1;
          v47 >>= 1;
        }

        while (v48 < a3);
      }
    }

    ++v14;
  }

  while (v14 != (a3 + 3) >> 2);
  return result;
}

uint64_t sub_1AF129C94(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if ((a2 & 3) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 2;
  if (v14 >= (a3 + 3) >> 2)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v18 = (a1 + 816);
  v19 = (a1 + 820);
  v20 = vld1q_dup_f32(v18);
  v21 = vld1q_dup_f32(v19);
  v22 = *(a1 + 784);
  v23 = vdupq_lane_s32(*a1, 0);
  v24 = vdupq_lane_s32(*a1, 1);
  v25 = *(a1 + 792);
  v26 = vdupq_laneq_s32(*a1, 2);
  v27 = *(a1 + 32);
  v28 = vdupq_laneq_s32(v27, 3);
  v29 = *(a1 + 768);
  v30 = v4 & 0xFFFFFFFC;
  do
  {
    v31 = vbicq_s8(vceqzq_s32(vandq_s8(v17, vmovl_u16(*(v16 + 8 * v14)))), vceqzq_s32(vorrq_s8(vandq_s8(*(v25 + 16 * v14), v21), vandq_s8(*(v22 + 16 * v14), v20))));
    if ((vmaxvq_u32(v31) & 0x80000000) != 0)
    {
      v32 = (v29 + 96 * v14);
      v34 = v32[2];
      v33 = v32[3];
      v35 = v32[1];
      v36 = vmulq_n_f32(vsubq_f32(*v32, vaddq_f32(v23, v33)), v27.f32[0]);
      v37 = v32[4];
      v38 = v32[5];
      v39 = vmulq_lane_f32(vsubq_f32(v35, vaddq_f32(v24, v37)), *v27.f32, 1);
      v40 = vmulq_laneq_f32(vsubq_f32(v34, vaddq_f32(v26, v38)), v27, 2);
      v41 = vmulq_n_f32(vaddq_f32(vsubq_f32(*v32, v23), v33), v27.f32[0]);
      v42 = vmulq_lane_f32(vaddq_f32(vsubq_f32(v35, v24), v37), *v27.f32, 1);
      v43 = vmulq_laneq_f32(vaddq_f32(vsubq_f32(v34, v26), v38), v27, 2);
      v44 = vminnmq_f32(v36, v41);
      v45 = vmaxnmq_f32(v36, v41);
      v46 = vmaxnmq_f32(v39, v42);
      v47 = vmaxnmq_f32(v44, vmaxnmq_f32(vminnmq_f32(v39, v42), vminnmq_f32(v40, v43)));
      v48 = vaddvq_s32(vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgtq_f32(v28, v47), vcgeq_f32(vminnmq_f32(v45, vminnmq_f32(v46, vmaxnmq_f32(v40, v43))), v47))), vmovn_s32(v31))), xmmword_1AFE20C60));
      if (v48 && 4 * v14 < a3)
      {
        v50 = v30;
        do
        {
          if (v48)
          {
            *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v50);
            result = (result + 1);
          }

          if (v48 < 2)
          {
            break;
          }

          ++v50;
          v48 >>= 1;
        }

        while (v50 < a3);
      }
    }

    ++v14;
    v30 += 4;
  }

  while (v14 != (a3 + 3) >> 2);
  return result;
}

uint64_t sub_1AF129EA0(float32x4_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[48].i64[1];
  v5 = a1[52].i32[1] | (~a1[52].i32[2] << 8);
  v6 = a1[49].i64[0];
  v7 = a1[51].i32[0];
  v8 = a1[51].i32[1];
  v9 = a1[49].i64[1];
  v10 = a1[54].i64[0];
  v11 = a2;
  v12 = a3;
  v13 = (32 * a2) | 0x10;
  do
  {
    if (*(v9 + 4 * v11) & v8 | *(v6 + 4 * v11) & v7)
    {
      v14 = (v5 & *(v4 + 2 * v11)) == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = (a1[48].i64[0] + v13);
      v16 = v15[-1];
      v17 = a1[2];
      v18 = vaddq_f32(*v15, v16);
      v19 = vmulq_f32(vsubq_f32(v16, vaddq_f32(*v15, *a1)), v17);
      v20 = vmulq_f32(vsubq_f32(v18, *a1), v17);
      v19.i32[3] = 0;
      v20.i32[3] = 0;
      v21 = vminnmq_f32(v19, v20);
      v22 = vmaxnmq_f32(v19, v20);
      v23 = fmaxf(fmaxf(v21.f32[0], v21.f32[2]), v21.f32[1]);
      if (fminf(fminf(v22.f32[0], v22.f32[2]), v22.f32[1]) >= v23 && v23 < COERCE_FLOAT(HIDWORD(*&a1[2])))
      {
        *(v10 + 4 * v3) = v11;
        v3 = (v3 + 1);
      }
    }

    ++v11;
    v13 += 32;
  }

  while (v12 != v11);
  return v3;
}

uint64_t sub_1AF129FA0(float32x4_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[48].i64[1];
  v5 = a1[52].i32[1] | (~a1[52].i32[2] << 8);
  v6 = a1[49].i64[0];
  v7 = a1[51].i32[0];
  v8 = a1[51].i32[1];
  v9 = a1[49].i64[1];
  v10 = a2;
  v11 = (32 * a2) | 0x10;
  do
  {
    if (*(v9 + 4 * v10) & v8 | *(v6 + 4 * v10) & v7)
    {
      v12 = (v5 & *(v4 + 2 * v10)) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = (a1[48].i64[0] + v11);
      v14 = v13[-1];
      v15 = a1[2];
      v16 = vaddq_f32(*v13, v14);
      v17 = vmulq_f32(vsubq_f32(v14, vaddq_f32(*v13, *a1)), v15);
      v18 = vmulq_f32(vsubq_f32(v16, *a1), v15);
      v17.i32[3] = 0;
      v18.i32[3] = 0;
      v19 = vminnmq_f32(v17, v18);
      v20 = vmaxnmq_f32(v17, v18);
      v21 = fmaxf(fmaxf(v19.f32[0], v19.f32[2]), v19.f32[1]);
      if (fminf(fminf(v20.f32[0], v20.f32[2]), v20.f32[1]) >= v21 && v21 < COERCE_FLOAT(HIDWORD(*&a1[2])))
      {
        *(a1[53].i64[1] + 8 * v3) = *(a1[50].i64[1] + 8 * v10);
        v3 = (v3 + 1);
      }
    }

    ++v10;
    v11 += 32;
  }

  while (a3 != v10);
  return v3;
}

uint64_t sub_1AF12A0A8(uint64_t a1)
{
  free(*(a1 + 112));
  free(*(a1 + 96));
  free(*(a1 + 64));
  free(*(a1 + 104));
  free(*(a1 + 72));
  free(*(a1 + 80));
  free(*(a1 + 88));
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    dispatch_release(v3);
    dispatch_release(*(a1 + 128));
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AF12A138(uint64_t a1, const void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = -1;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  v4 = sub_1AF289744();
  if ((v4 & 0x20) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = 4;
  }

  *(a1 + 24) = v5;
  *(a1 + 28) = v4;
  sub_1AF12A43C(a1, 0x80u);
  v6 = *(a1 + 136);
  if (v6 != a2)
  {
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 136) = 0;
    }

    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 136) = v7;
  }

  if ((*(a1 + 28) & 0x20) != 0)
  {
    *(a1 + 152) = +[VFXRenderer allocatedTextureCount]_0();
    *(a1 + 144) = +[VFXRenderer allocatedTextureCount]_0();
    *(a1 + 176) = +[VFXRenderer allocatedTextureCount]_0();
    *(a1 + 184) = +[VFXRenderer allocatedTextureCount]_0();
    *(a1 + 192) = +[VFXRenderer allocatedTextureCount]_0();
    *(a1 + 160) = +[VFXRenderer allocatedTextureCount]_0();
    *(a1 + 168) = +[VFXRenderer allocatedTextureCount]_0();
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8 == 4)
    {
      v9 = sub_1AF128C04;
    }

    else
    {
      v9 = sub_1AF128DAC;
    }

    v10 = sub_1AF1289C0;
    if (v8 == 4)
    {
      v11 = sub_1AF129168;
    }

    else
    {
      v11 = sub_1AF129390;
    }

    if (v8 == 4)
    {
      v12 = sub_1AF12D5C4;
    }

    else
    {
      v12 = sub_1AF12D8C0;
    }

    if (v8 == 4)
    {
      v13 = sub_1AF12C508;
    }

    else
    {
      v13 = sub_1AF12C85C;
    }

    v14 = sub_1AF12D098;
    if (v8 == 4)
    {
      v14 = sub_1AF12CDB4;
    }

    if (v8 != 8)
    {
      v10 = v9;
    }

    *(a1 + 152) = v10;
    if (v8 == 8)
    {
      v15 = sub_1AF128E74;
    }

    else
    {
      v15 = v11;
    }

    *(a1 + 144) = v15;
    if (v8 == 8)
    {
      v16 = sub_1AF12D1AC;
    }

    else
    {
      v16 = v12;
    }

    if (v8 == 8)
    {
      v17 = sub_1AF12C074;
    }

    else
    {
      v17 = v13;
    }

    *(a1 + 176) = v16;
    *(a1 + 184) = v17;
    if (v8 == 8)
    {
      v18 = sub_1AF12C9B4;
    }

    else
    {
      v18 = v14;
    }

    *(a1 + 192) = v18;
    v19 = sub_1AF129470;
    v20 = sub_1AF12977C;
    if (v8 != 8)
    {
      if (v8 == 4)
      {
        v19 = sub_1AF129A9C;
        v20 = sub_1AF129C94;
      }

      else
      {
        v19 = sub_1AF129EA0;
        v20 = sub_1AF129FA0;
      }
    }

    *(a1 + 160) = v20;
    *(a1 + 168) = v19;
  }

  return a1;
}

void sub_1AF12A43C(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  if (v5 == 8)
  {
    v6 = -32;
  }

  else
  {
    v6 = -16;
  }

  if (v5 == 8)
  {
    v7 = 32;
  }

  else
  {
    v7 = 16;
  }

  if (v5 == 8)
  {
    v8 = 192;
  }

  else
  {
    v8 = 0;
  }

  if (v5 == 4)
  {
    v8 = 96;
  }

  v9 = v5 - 1;
  if (v5 == 1)
  {
    v10 = 32;
  }

  else
  {
    v10 = v8;
  }

  v11 = dword_1AFE20CA0[(125613361 * v5) >> 27];
  v12 = v7 - 1;
  v13 = v7 - 1 + ((v10 * (v9 + a2)) >> v11);
  v14 = (v4 + 7) >> 3;
  v15 = (a2 + 7) >> 3;
  if (*(a1 + 64))
  {
    v49 = (v4 + 7) >> 3;
    v16 = (v12 + (((v4 + v9) * v10) >> v11)) & v6;
    v48 = (a2 + 7) >> 3;
    *(a1 + 112) = malloc_type_realloc(*(a1 + 112), v48, 0x100004077774924uLL);
    v17 = *(a1 + 96);
    v18 = malloc_type_aligned_alloc(v7, v13 & v6, 0x872A5027uLL);
    v19 = v18;
    if (v16)
    {
      memcpy(v18, v17, v16);
    }

    free(v17);
    *(a1 + 96) = v19;
    v20 = *(a1 + 64);
    v21 = (v12 + 32 * *(a1 + 20)) & v6;
    v22 = malloc_type_aligned_alloc(v7, (v7 + 32 * a2 - 1) & v6, 0x872A5027uLL);
    v23 = v22;
    if (v21)
    {
      memcpy(v22, v20, v21);
    }

    free(v20);
    *(a1 + 64) = v23;
    v24 = *(a1 + 104);
    v25 = (v12 + 8 * *(a1 + 20)) & v6;
    v26 = malloc_type_aligned_alloc(v7, (v7 + 8 * a2 - 1) & v6, 0x872A5027uLL);
    v27 = v26;
    if (v25)
    {
      memcpy(v26, v24, v25);
    }

    free(v24);
    *(a1 + 104) = v27;
    v28 = *(a1 + 72);
    v29 = (v12 + 4 * *(a1 + 20)) & v6;
    v30 = v7 + 4 * a2 - 1;
    v31 = malloc_type_aligned_alloc(v7, v30 & v6, 0x872A5027uLL);
    v32 = v31;
    if (v29)
    {
      memcpy(v31, v28, v29);
    }

    free(v28);
    *(a1 + 72) = v32;
    v33 = *(a1 + 80);
    v34 = (v12 + 4 * *(a1 + 20)) & v6;
    v35 = malloc_type_aligned_alloc(v7, v30 & v6, 0x872A5027uLL);
    v36 = v35;
    if (v34)
    {
      memcpy(v35, v33, v34);
    }

    free(v33);
    *(a1 + 80) = v36;
    v37 = *(a1 + 88);
    v38 = (v12 + 2 * *(a1 + 20)) & v6;
    v39 = malloc_type_aligned_alloc(v7, (v7 + 2 * a2 - 1) & v6, 0x872A5027uLL);
    v40 = v39;
    if (v38)
    {
      memcpy(v39, v37, v38);
    }

    free(v37);
    *(a1 + 88) = v40;
    v14 = v49;
    v15 = v48;
  }

  else
  {
    *(a1 + 112) = malloc_type_malloc((a2 + 7) >> 3, 0x100004077774924uLL);
    *(a1 + 96) = malloc_type_aligned_alloc(v7, v13 & v6, 0xA7499707uLL);
    *(a1 + 64) = malloc_type_aligned_alloc(v7, (v7 + 32 * a2 - 1) & v6, 0x1000040E0EAB150uLL);
    *(a1 + 104) = malloc_type_aligned_alloc(v7, (v7 + 8 * a2 - 1) & v6, 0x2004093837F09uLL);
    v41 = v7 + 4 * a2 - 1;
    *(a1 + 72) = malloc_type_aligned_alloc(v7, v41 & v6, 0x100004052888210uLL);
    *(a1 + 80) = malloc_type_aligned_alloc(v7, v41 & v6, 0x100004052888210uLL);
    *(a1 + 88) = malloc_type_aligned_alloc(v7, (v7 + 2 * a2 - 1) & v6, 0x1000040BDFB0063uLL);
  }

  v42 = v15 - v14;
  if (v42 >= 1)
  {
    bzero((*(a1 + 112) + v14), v42);
  }

  v43 = *(a1 + 20);
  v44 = a2 - v43;
  if ((a2 - v43) >= 1)
  {
    bzero((*(a1 + 104) + 8 * v43), 8 * (a2 - v43));
    bzero((*(a1 + 72) + 4 * *(a1 + 20)), 4 * v44);
    bzero((*(a1 + 80) + 4 * *(a1 + 20)), 4 * v44);
    bzero((*(a1 + 88) + 2 * *(a1 + 20)), 2 * v44);
    v45 = *(a1 + 20);
    if (v45 < a2)
    {
      v46 = 32 * v45;
      do
      {
        v47 = (*(a1 + 64) + v46);
        *v47 = xmmword_1AFE201A0;
        v47[1] = xmmword_1AFE20B70;
        sub_1AF1274C0(a1, v45, xmmword_1AFE20FC0, unk_1AFE20FD0);
        LODWORD(v45) = v45 + 1;
        v46 += 32;
      }

      while (a2 != v45);
    }
  }

  *(a1 + 20) = a2;
}

uint64_t sub_1AF12A8EC(uint64_t a1, int a2)
{
  result = *(a1 + 56);
  if (result == -1)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    if (v7 >= v6)
    {
      v9 = *(a1 + 32);
      v10 = v7 - v9;
      v11 = (v7 - v9) >> 2;
      v12 = v11 + 1;
      if ((v11 + 1) >> 62)
      {
        sub_1AF10A1D0();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
      v15 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        sub_1AF123244(a1 + 32, v15);
      }

      v16 = (v7 - v9) >> 2;
      v17 = (4 * v11);
      v18 = (4 * v11 - 4 * v16);
      *v17 = a2;
      v8 = v17 + 1;
      memcpy(v18, v9, v10);
      v19 = *(a1 + 32);
      *(a1 + 32) = v18;
      *(a1 + 40) = v8;
      *(a1 + 48) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v7 = a2;
      v8 = v7 + 4;
    }

    *(a1 + 40) = v8;
    return ((v8 - *(a1 + 32)) >> 2) - 1;
  }

  else
  {
    v5 = *(a1 + 32);
    *(a1 + 56) = *(v5 + 4 * result);
    *(v5 + 4 * result) = a2;
  }

  return result;
}

uint64_t sub_1AF12A9FC(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((*(a1[11] + 2 * a2) & 8) != 0)
  {
    v10 = xmmword_1AFE20C40;
    v8 = xmmword_1AFE201A0;
  }

  else
  {
    v4 = sub_1AF1B9B04(*(a1[13] + 8 * a2), a2);
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);
    v7 = (a1[8] + 32 * v2);
    v8 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v4 + 48), v6, *v7, 2), v5, *v7->f32, 1), *v4, COERCE_FLOAT(*v7));
    v8.n128_u32[3] = HIDWORD(*v7);
    v9 = v7[1];
    v9.i32[1] = v9.i32[0];
    v9.i32[2] = v7[1];
    v10 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v7[1].f32, 1), v7[1]), vabsq_f32(v5)), vabsq_f32(*v4), v9), vabsq_f32(v6), vzip2q_s32(vtrn1q_s32(v7[1], v7[1]), v7[1]));
  }

  return sub_1AF1274C0(a1, v2, v8, v10);
}

__n128 sub_1AF12AADC(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v34 = (*a3)(v12 + 1, v12, result);
        v35 = (*a3)(v9, v12 + 1);
        if (v34)
        {
          if (v35)
          {
            goto LABEL_77;
          }

          v66 = *v12;
          *v12 = v12[1];
          v12[1] = v66;
          if (!(*a3)(v9, v12 + 1))
          {
            return result;
          }

          result = v12[1];
          v12[1] = *v9;
LABEL_78:
          *v9 = result;
          return result;
        }

        if (!v35)
        {
          return result;
        }

        v40 = v12[1];
        v12[1] = *v9;
        *v9 = v40;
        goto LABEL_104;
      case 4uLL:
        v37 = (*a3)(v12 + 1, v12, result);
        v38 = (*a3)(v12 + 2, v12 + 1);
        if (v37)
        {
          if (v38)
          {
            v68 = *v12;
            *v12 = v12[2];
            v39 = v68;
            goto LABEL_100;
          }

          v70 = *v12;
          *v12 = v12[1];
          v12[1] = v70;
          if ((*a3)(v12 + 2, v12 + 1))
          {
            v39 = v12[1];
            v12[1] = v12[2];
LABEL_100:
            v12[2] = v39;
          }
        }

        else if (v38)
        {
          v41 = v12[1];
          v12[1] = v12[2];
          v12[2] = v41;
          if ((*a3)(v12 + 1, v12))
          {
            v69 = *v12;
            *v12 = v12[1];
            v12[1] = v69;
          }
        }

        if (!(*a3)(v9, v12 + 2))
        {
          return result;
        }

        v42 = v12[2];
        v12[2] = *v9;
        *v9 = v42;
        if (!(*a3)(v12 + 2, v12 + 1))
        {
          return result;
        }

        v43 = v12[1];
        v12[1] = v12[2];
        v12[2] = v43;
LABEL_104:
        if ((*a3)(v12 + 1, v12))
        {
          v71 = *v12;
          *v12 = v12[1];
          result = v71;
          v12[1] = v71;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = sub_1AF12B34C(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1AF12B548(v12, a2, a3);
      }

      else
      {

        sub_1AF12B61C(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_1AF12BCCC(v12, a2, a2, a3, result);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = *a3;
    if (v15 >= 0x81)
    {
      v18 = (v17)(&v12[v15 >> 1], v12, result);
      v19 = (*a3)(a2 - 1, v16);
      if (v18)
      {
        if (v19)
        {
          v45 = *a1;
          *a1 = *v9;
          goto LABEL_27;
        }

        v51 = *a1;
        *a1 = *v16;
        *v16 = v51;
        if ((*a3)(a2 - 1, v16))
        {
          v45 = *v16;
          *v16 = *v9;
LABEL_27:
          *v9 = v45;
        }
      }

      else if (v19)
      {
        v47 = *v16;
        *v16 = *v9;
        *v9 = v47;
        if ((*a3)(v16, a1))
        {
          v48 = *a1;
          *a1 = *v16;
          *v16 = v48;
        }
      }

      v22 = v16 - 1;
      v23 = (*a3)(v16 - 1, a1 + 1);
      v24 = (*a3)(a2 - 2, v16 - 1);
      if (v23)
      {
        if (v24)
        {
          v25 = a1[1];
          a1[1] = *v10;
          goto LABEL_39;
        }

        v55 = a1[1];
        a1[1] = *v22;
        *v22 = v55;
        if ((*a3)(a2 - 2, v16 - 1))
        {
          v56 = *v22;
          *v22 = *v10;
          v25 = v56;
LABEL_39:
          *v10 = v25;
        }
      }

      else if (v24)
      {
        v52 = *v22;
        *v22 = *v10;
        *v10 = v52;
        if ((*a3)(v16 - 1, a1 + 1))
        {
          v53 = a1[1];
          a1[1] = *v22;
          *v22 = v53;
        }
      }

      v26 = (*a3)(v16 + 1, a1 + 2);
      v27 = (*a3)(a2 - 3, v16 + 1);
      if (v26)
      {
        if (v27)
        {
          v28 = a1[2];
          a1[2] = *v11;
          goto LABEL_48;
        }

        v59 = a1[2];
        a1[2] = v16[1];
        v16[1] = v59;
        if ((*a3)(a2 - 3, v16 + 1))
        {
          v60 = v16[1];
          v16[1] = *v11;
          v28 = v60;
LABEL_48:
          *v11 = v28;
        }
      }

      else if (v27)
      {
        v57 = v16[1];
        v16[1] = *v11;
        *v11 = v57;
        if ((*a3)(v16 + 1, a1 + 2))
        {
          v58 = a1[2];
          a1[2] = v16[1];
          v16[1] = v58;
        }
      }

      v29 = (*a3)(v16, v16 - 1);
      v30 = (*a3)(v16 + 1, v16);
      if (v29)
      {
        if (v30)
        {
          v61 = *v22;
          *v22 = v16[1];
          goto LABEL_57;
        }

        v64 = *v22;
        *v22 = *v16;
        *v16 = v64;
        if ((*a3)(v16 + 1, v16))
        {
          v61 = *v16;
          *v16 = v16[1];
LABEL_57:
          v16[1] = v61;
        }
      }

      else if (v30)
      {
        v62 = *v16;
        *v16 = v16[1];
        v16[1] = v62;
        if ((*a3)(v16, v16 - 1))
        {
          v63 = *v22;
          *v22 = *v16;
          *v16 = v63;
        }
      }

      v65 = *a1;
      *a1 = *v16;
      *v16 = v65;
      goto LABEL_59;
    }

    v20 = (v17)(v12, &v12[v15 >> 1], result);
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      if (v21)
      {
        v46 = *v16;
        *v16 = *v9;
LABEL_36:
        *v9 = v46;
        goto LABEL_59;
      }

      v54 = *v16;
      *v16 = *a1;
      *a1 = v54;
      if ((*a3)(a2 - 1, a1))
      {
        v46 = *a1;
        *a1 = *v9;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v49 = *a1;
      *a1 = *v9;
      *v9 = v49;
      if ((*a3)(a1, v16))
      {
        v50 = *v16;
        *v16 = *a1;
        *a1 = v50;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 1, a1) & 1) == 0)
    {
      v12 = sub_1AF12B6D4(a1, a2, a3);
      goto LABEL_66;
    }

    v31 = sub_1AF12B804(a1, a2, a3);
    if ((v32 & 1) == 0)
    {
      goto LABEL_64;
    }

    v33 = sub_1AF12B938(a1, v31, a3);
    v12 = &v31[1];
    if (sub_1AF12B938(v31 + 1, a2, a3))
    {
      a4 = -v14;
      a2 = v31;
      if (v33)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v33)
    {
LABEL_64:
      result = sub_1AF12AADC(a1, v31, a3, -v14, a5 & 1, result);
      v12 = &v31[1];
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(&a2[-1], v12, result))
  {
LABEL_77:
    v67 = *v12;
    *v12 = *v9;
    result = v67;
    goto LABEL_78;
  }

  return result;
}

__n128 sub_1AF12B34C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    v17 = *a1;
    *a1 = *a2;
    *a2 = v17;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    if ((*a6)(a3, a2))
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      if ((*a6)(a2, a1))
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v22 = *a4;
    *a4 = *a5;
    *a5 = v22;
    if ((*a6)(a4, a3))
    {
      v23 = *a3;
      *a3 = *a4;
      *a4 = v23;
      if ((*a6)(a3, a2))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        if ((*a6)(a2, a1))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF12B548(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v14 = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 16) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v14, v12 + v6);
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14;
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_1AF12B61C(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (result != a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = (result - 16);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v11 = v9;
          do
          {
            v11[2] = v11[1];
            result = (*a3)(&v12, v11--);
          }

          while ((result & 1) != 0);
          v11[2] = v12;
        }

        v7 = v6 + 1;
        ++v9;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

__int128 *sub_1AF12B6D4(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v11 = *a1;
  if ((*a3)(&v11, a2 - 1))
  {
    v6 = a1;
    do
    {
      ++v6;
    }

    while (((*a3)(&v11, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v11, v7);
      v7 = v6 + 1;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v12 = *v6;
    *v6 = *v4;
    *v4 = v12;
    do
    {
      ++v6;
    }

    while (!(*a3)(&v11, v6));
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  v9 = v6 - 1;
  if (v6 - 1 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v11;
  return v6;
}

__int128 *sub_1AF12B804(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    ++v6;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  v8 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v13));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v14 = *v9;
      v11 = v14;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v13) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v13));
    }

    while (v9 < v10);
    v8 = v9 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v13;
  return v8;
}

BOOL sub_1AF12B938(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v9 = a2 - 1;
      v10 = (*a3)(a1 + 1, a1);
      v11 = (*a3)(v9, a1 + 1);
      if (v10)
      {
        if (v11)
        {
          v12 = *a1;
          *a1 = *v9;
        }

        else
        {
          v26 = *a1;
          *a1 = a1[1];
          a1[1] = v26;
          if (!(*a3)(v9, a1 + 1))
          {
            return 1;
          }

          v12 = a1[1];
          a1[1] = *v9;
        }

        *v9 = v12;
        return 1;
      }

      if (!v11)
      {
        return 1;
      }

      v21 = a1[1];
      a1[1] = *v9;
      *v9 = v21;
LABEL_50:
      if ((*a3)(a1 + 1, a1))
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_1AF12B34C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v17 = a2 - 1;
    v18 = (*a3)(a1 + 1, a1);
    v19 = (*a3)(a1 + 2, a1 + 1);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v24 = a1[1];
        a1[1] = a1[2];
        a1[2] = v24;
        if ((*a3)(a1 + 1, a1))
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
        }
      }

      goto LABEL_47;
    }

    if (v19)
    {
      v20 = *a1;
      *a1 = a1[2];
    }

    else
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_47;
      }

      v20 = a1[1];
      a1[1] = a1[2];
    }

    a1[2] = v20;
LABEL_47:
    if (!(*a3)(v17, a1 + 2))
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = *v17;
    *v17 = v35;
    if (!(*a3)(a1 + 2, a1 + 1))
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    if (v15)
    {
      v16 = *a1;
      *a1 = *v13;
    }

    else
    {
      v27 = *a1;
      *a1 = a1[1];
      a1[1] = v27;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_33;
      }

      v16 = a1[1];
      a1[1] = *v13;
    }

    *v13 = v16;
  }

  else if (v15)
  {
    v22 = a1[1];
    a1[1] = *v13;
    *v13 = v22;
    if ((*a3)(a1 + 1, a1))
    {
      v23 = *a1;
      *a1 = a1[1];
      a1[1] = v23;
    }
  }

LABEL_33:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    if ((*a3)(v28, v13))
    {
      v39[0] = *v28;
      v31 = v29;
      while (1)
      {
        v32 = (a1 + v31);
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v31 -= 16;
        if (((*a3)(v39, v32 + 1) & 1) == 0)
        {
          v33 = (a1 + v31 + 48);
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v39[0];
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v13 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_1AF12BCCC(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t (**a4)(__int128 *, __int128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[v10];
      do
      {
        a5.n128_f64[0] = sub_1AF12BE90(a1, a4, v9, v12--);
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          a5.n128_f64[0] = sub_1AF12BE90(a1, a4, v9, a1);
        }

        ++v13;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v24 = v7;
        v15 = 0;
        v25 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v15];
          v18 = v17 + 1;
          v19 = (2 * v15) | 1;
          v20 = 2 * v15 + 2;
          if (v20 < v9)
          {
            v21 = v17 + 2;
            if ((*a4)(v17 + 1, v17 + 2))
            {
              v18 = v21;
              v19 = v20;
            }
          }

          *v16 = *v18;
          v16 = v18;
          v15 = v19;
        }

        while (v19 <= ((v9 - 2) >> 1));
        v7 = v24 - 1;
        if (v18 == v24 - 1)
        {
          *v18 = v25;
        }

        else
        {
          *v18 = *v7;
          *v7 = v25;
          sub_1AF12BFC8(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

double sub_1AF12BE90(uint64_t a1, uint64_t (**a2)(__int128 *, __int128 *), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 4)
    {
      v12 = (a4 - a1) >> 3;
      v13 = v12 + 1;
      v14 = (a1 + 16 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v20 = *v7;
        do
        {
          v17 = v14;
          *v7 = *v14;
          if (v9 < v13)
          {
            break;
          }

          v18 = (2 * v13) | 1;
          v14 = (a1 + 16 * v18);
          v19 = 2 * v13 + 2;
          if (v19 < a3)
          {
            if ((*a2)((a1 + 16 * v18), v14 + 1))
            {
              ++v14;
              v18 = v19;
            }
          }

          v7 = v17;
          v13 = v18;
        }

        while (!(*a2)(v14, &v20));
        result = *&v20;
        *v17 = v20;
      }
    }
  }

  return result;
}

double sub_1AF12BFC8(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 16 * (v6 >> 1));
    v11 = (a2 - 16);
    if ((*a3)(v10, (a2 - 16)))
    {
      v14 = *v11;
      do
      {
        v13 = v10;
        *v11 = *v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 16 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v14) & 1) != 0);
      result = *&v14;
      *v13 = v14;
    }
  }

  return result;
}

uint64_t sub_1AF12C074(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v96 = *MEMORY[0x1E69E9840];
  if ((v2 & 7) != 0)
  {
    v7 = sub_1AF0D5194(v1, v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = v5 >> 3;
  v16 = (v4 + 7) >> 3;
  v17 = v6[110].u32[0];
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v22 = v6;
    do
    {
      for (i = 0; i != 12; i += 2)
      {
        v24 = *v22[i].i8;
        v25 = vdupq_lane_s32(*v24.i8, 0);
        v26 = &v95[2 * v19 + 290];
        *v26 = v25;
        v26[1] = v25;
        v27 = vdupq_lane_s32(*v24.i8, 1);
        v26[2] = v27;
        v26[3] = v27;
        v28 = vdupq_laneq_s32(v24, 2);
        v29 = vdupq_laneq_s32(v24, 3);
        v26[4] = v28;
        v26[5] = v28;
        v26[6] = v29;
        v26[7] = v29;
        v30 = &v95[2 * v20 + 2];
        v31 = vandq_s8(v25, v21);
        *v30 = v31;
        v30[1] = v31;
        v32 = vandq_s8(v27, v21);
        v30[2] = v32;
        v30[3] = v32;
        v33 = vandq_s8(v28, v21);
        v30[4] = v33;
        v30[5] = v33;
        v19 += 4;
        v20 += 3;
      }

      ++v18;
      v22 += 12;
    }

    while (v18 != v17);
  }

  if (v15 >= v16)
  {
    return 0;
  }

  result = 0;
  v35 = v6[97];
  v36 = &v6[102];
  v37 = vdupq_n_s32(v6[104].i32[1] | (~v6[105].i32[0] << 8));
  v38 = vdupq_lane_s32(v6[104], 0);
  v39 = v6[98];
  v40 = &v6[102] + 1;
  v41 = vld1q_dup_f32(v36);
  v42 = &v6[103];
  v43 = &v6[103] + 1;
  v44 = vld1q_dup_f32(v42);
  v45 = vld1q_dup_f32(v40);
  v46 = v6[99];
  v47 = vld1q_dup_f32(v43);
  v48 = v5 & 0xFFFFFFF8;
  v49 = v6[96];
  v50 = v4;
  v93 = v38;
  v94 = v37;
  do
  {
    v51 = (*&v39 + 32 * v15);
    v52 = *v51;
    v53 = v51[1];
    v54 = vandq_s8(*v51, v41);
    v55 = (*&v46 + 32 * v15);
    v56 = v55[1];
    v57 = vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*v55, v45), v54)), vceqzq_s32(vorrq_s8(vandq_s8(v56, v45), vandq_s8(v53, v41))));
    v58 = *(*&v35 + 16 * v15);
    v59 = vmovl_u16(*v58.i8);
    v60 = vmovl_high_u16(v58);
    v61 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v38, v59)), vceqzq_s32(vandq_s8(v38, v60)))), v57), vuzp1q_s16(vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(*v55, v47), vandq_s8(v52, v44)), vandq_s8(v37, v59))), vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(v56, v47), vandq_s8(v53, v44)), vandq_s8(v37, v60))))));
    if ((vmaxvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(v61, *v37.i8), vzip2_s8(v61, *v37.i8))), 0x1FuLL))) & 0x80000000) != 0)
    {
      if (v17)
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = (*&v49 + 192 * v15);
        v67 = *(v65 + 6);
        v66 = *(v65 + 7);
        v69 = *(v65 + 8);
        v68 = *(v65 + 9);
        v71 = *(v65 + 10);
        v70 = *(v65 + 11);
        v73 = *v65;
        v72 = *(v65 + 1);
        v75 = *(v65 + 2);
        v74 = *(v65 + 3);
        v77 = *(v65 + 4);
        v76 = *(v65 + 5);
        v78 = 0uLL;
        v79 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v61, *v37.i8)), 0x1FuLL));
        v80 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v61, *v37.i8)), 0x1FuLL));
        v81 = 0uLL;
        do
        {
          v82 = 0;
          v83 = v64 + 24;
          v84.i64[0] = -1;
          v84.i64[1] = -1;
          v85.i64[0] = -1;
          v85.i64[1] = -1;
          v86 = v63;
          do
          {
            v87 = &v95[2 * v86 + 2];
            v88 = &v95[2 * (v64 + v82) + 290];
            v85 = vandq_s8(v85, vmlaq_f32(vmlaq_f32(vmlaq_f32(v88[7], vsubq_f32(v72, veorq_s8(v87[1], v66)), v88[1]), vsubq_f32(v74, veorq_s8(v87[3], v68)), v88[3]), vsubq_f32(v76, veorq_s8(v87[5], v70)), v88[5]));
            v84 = vandq_s8(v84, vmlaq_f32(vmlaq_f32(vmlaq_f32(v88[6], vsubq_f32(v73, veorq_s8(*v87, v67)), *v88), vsubq_f32(v75, veorq_s8(v87[2], v69)), v88[2]), vsubq_f32(v77, veorq_s8(v87[4], v71)), v88[4]));
            v86 += 3;
            v82 += 4;
          }

          while (v82 != 24);
          v63 += 18;
          v89 = (&unk_1AFE20D20 + 32 * v62);
          v81 = vorrq_s8(vandq_s8(vandq_s8(v89[1], v79), vcltzq_s32(v85)), v81);
          v78 = vorrq_s8(vandq_s8(vandq_s8(*v89, v80), vcltzq_s32(v84)), v78);
          ++v62;
          v64 = v83;
        }

        while (v62 != v17);
      }

      else
      {
        v78 = 0uLL;
        v81 = 0uLL;
      }

      if ((vminvq_u32(vceqzq_s32(vorrq_s8(v78, v81))) & 0x80000000) != 0)
      {
        v38 = v93;
        v37 = v94;
      }

      else
      {
        v38 = v93;
        v37 = v94;
        if (8 * v15 < v50)
        {
          v90 = 0;
          v91 = v48;
          do
          {
            v95[0] = v78;
            v95[1] = v81;
            v92 = *(v95 + (v90 & 7));
            if (v92)
            {
              *(*&v6[109] + result) = v92;
              *(*&v6[107] + 8 * result) = *(*&v6[101] + 8 * v91);
              result = (result + 1);
            }

            if (v90 > 6)
            {
              break;
            }

            ++v90;
            ++v91;
          }

          while (v91 < v50);
        }
      }
    }

    ++v15;
    v48 += 8;
  }

  while (v15 != v16);
  return result;
}

uint64_t sub_1AF12C508(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v69 = *MEMORY[0x1E69E9840];
  if ((v2 & 3) != 0)
  {
    v7 = sub_1AF0D5194(v1, v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = v5 >> 2;
  v16 = (v4 + 3) >> 2;
  v17 = *(v6 + 880);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v22 = v6;
    do
    {
      for (i = 0; i != 96; i += 16)
      {
        v24 = *(v22 + i);
        v25 = &v68[v19 + 145];
        v26 = vdupq_lane_s32(*v24.i8, 0);
        v27 = vdupq_lane_s32(*v24.i8, 1);
        *v25 = v26;
        v25[1] = v27;
        v28 = vdupq_laneq_s32(v24, 2);
        v25[2] = v28;
        v25[3] = vdupq_laneq_s32(v24, 3);
        v29 = &v68[v20 + 1];
        *v29 = vandq_s8(v26, v21);
        v29[1] = vandq_s8(v27, v21);
        v29[2] = vandq_s8(v28, v21);
        v19 += 4;
        v20 += 3;
      }

      ++v18;
      v22 += 96;
    }

    while (v18 != v17);
  }

  if (v15 >= v16)
  {
    return 0;
  }

  result = 0;
  v31 = *(v6 + 768);
  v32 = *(v6 + 776);
  v33 = vdupq_n_s32(*(v6 + 836) | (~*(v6 + 840) << 8));
  v34 = (v6 + 816);
  v35 = (v6 + 832);
  v36 = vld1q_dup_f32(v35);
  v37 = *(v6 + 784);
  v38 = (v6 + 820);
  v39 = vld1q_dup_f32(v34);
  v40 = (v6 + 824);
  v41 = (v6 + 828);
  v42 = vld1q_dup_f32(v40);
  v43 = *(v6 + 792);
  v44 = vld1q_dup_f32(v38);
  v45 = vld1q_dup_f32(v41);
  v46 = v5 & 0xFFFFFFFC;
  v47 = v4;
  do
  {
    v48 = *(v37 + 16 * v15);
    v49 = *(v43 + 16 * v15);
    v50 = vceqzq_s32(vorrq_s8(vandq_s8(v49, v44), vandq_s8(v48, v39)));
    v51 = vorrq_s8(vandq_s8(v49, v45), vandq_s8(v48, v42));
    v52 = vmovl_u16(*(v32 + 8 * v15));
    v53 = vandq_s8(vbicq_s8(vtstq_s32(v36, v52), v50), vceqzq_s32(vorrq_s8(v51, vandq_s8(v33, v52))));
    if ((vmaxvq_u32(v53) & 0x80000000) != 0)
    {
      if (v17)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = vmovn_s32(v53);
        v59 = 0uLL;
        v60 = vmovl_s16(v57);
        do
        {
          v61 = 0;
          v62.i64[0] = -1;
          v62.i64[1] = -1;
          v63 = v55;
          do
          {
            v64 = &v68[(v56 + v61) + 145];
            v58 = v31 + 96 * v15;
            v62 = vandq_s8(v62, vmlaq_f32(vmlaq_f32(vmlaq_f32(v64[3], vsubq_f32(*v58, veorq_s8(v68[v63 + 1], *(v58 + 48))), *v64), vsubq_f32(*(v58 + 16), veorq_s8(v68[v63 + 2], *(v58 + 64))), v64[1]), vsubq_f32(*(v58 + 32), veorq_s8(v68[v63 + 3], *(v58 + 80))), v64[2]));
            v63 += 3;
            v61 += 4;
          }

          while (v61 != 24);
          v55 += 18;
          v59 = vorrq_s8(vandq_s8(vandq_s8(xmmword_1AFE20E20[v54++], v60), vcltzq_s32(v62)), v59);
          v56 += 24;
        }

        while (v54 != v17);
      }

      else
      {
        v59 = 0uLL;
      }

      if ((vminvq_u32(vceqzq_s32(v59)) & 0x80000000) == 0 && 4 * v15 < v47)
      {
        v65 = 0;
        v66 = v46;
        do
        {
          v68[0] = v59;
          v67 = *(v68 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3)));
          if (v67)
          {
            *(*(v6 + 872) + result) = v67;
            *(*(v6 + 856) + 8 * result) = *(*(v6 + 808) + 8 * v66);
            result = (result + 1);
          }

          if (v65 > 2)
          {
            break;
          }

          ++v65;
          ++v66;
        }

        while (v66 < v47);
      }
    }

    ++v15;
    v46 += 4;
  }

  while (v15 != v16);
  return result;
}

uint64_t sub_1AF12C85C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 836) | (~*(a1 + 840) << 8);
  v5 = *(a1 + 832);
  v6 = a2;
  do
  {
    v7 = *(*(a1 + 776) + 2 * v6);
    v8 = v5 & v7;
    v9 = v4 & v7;
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = *(*(a1 + 784) + 4 * v6) | (*(*(a1 + 792) + 4 * v6) << 32);
      if ((v11 & *(a1 + 816)) != 0 && (*(a1 + 824) & v11) == 0)
      {
        v12 = 0;
        v13 = 0;
        v14 = (*(a1 + 768) + 32 * v6);
        v15 = *v14;
        v16 = v14[1];
        do
        {
          v17 = 0;
          v18 = 0;
          v19 = *(a1 + 48);
          v26[2] = *(a1 + 32);
          v26[3] = v19;
          v20 = *(a1 + 80);
          v26[4] = *(a1 + 64);
          v26[5] = v20;
          v21 = *(a1 + 16);
          v26[0] = *a1;
          v26[1] = v21;
          do
          {
            v22 = v26[v17];
            v23 = vmulq_f32(v22, v15);
            *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
            v24 = vmulq_f32(vabsq_f32(v22), v16);
            *v23.i8 = vadd_f32(vzip1_s32(*v23.i8, *v24.f32), vzip2_s32(*v23.i8, *v24.f32));
            if (*v23.i32 > (*&v23.i32[1] + v24.f32[2]))
            {
              break;
            }

            v18 = v17++ > 4;
          }

          while (v17 != 6);
          v13 |= (v18 << v12++);
        }

        while (v12 != 6);
        if (v13)
        {
          *(*(a1 + 872) + v3) = v13;
          *(*(a1 + 856) + 8 * v3) = *(*(a1 + 808) + 8 * v6);
          v3 = (v3 + 1);
        }
      }
    }

    ++v6;
  }

  while (v6 != a3);
  return v3;
}

uint64_t sub_1AF12C9B4(int32x2_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v74 = *MEMORY[0x1E69E9840];
  if ((a2 & 7) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 3;
  v15 = (a3 + 7) >> 3;
  v16 = a1[110].u32[0];
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 12; i += 2)
      {
        v23 = *v21[i].i8;
        v24 = vdupq_lane_s32(*v23.i8, 0);
        v25 = &v73[2 * v18 + 36];
        *v25 = v24;
        v25[1] = v24;
        v26 = vdupq_lane_s32(*v23.i8, 1);
        v25[2] = v26;
        v25[3] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v28 = vdupq_laneq_s32(v23, 3);
        v25[4] = v27;
        v25[5] = v27;
        v25[6] = v28;
        v25[7] = v28;
        v29 = &v73[2 * v19];
        v30 = vandq_s8(v24, v20);
        *v29 = v30;
        v29[1] = v30;
        v31 = vandq_s8(v26, v20);
        v29[2] = v31;
        v29[3] = v31;
        v32 = vandq_s8(v27, v20);
        v29[4] = v32;
        v29[5] = v32;
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 12;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v34 = a1[97];
  v35 = &a1[102];
  v36 = vdupq_n_s32(a1[104].i32[1] | (~a1[105].i32[0] << 8));
  v37 = vdupq_lane_s32(a1[104], 0);
  v38 = a1[98];
  v39 = &a1[102] + 1;
  v40 = vld1q_dup_f32(v35);
  v41 = &a1[103];
  v42 = &a1[103] + 1;
  v43 = vld1q_dup_f32(v41);
  v44 = vld1q_dup_f32(v39);
  v45 = a1[99];
  v46 = vld1q_dup_f32(v42);
  v47 = a1[96];
  do
  {
    v48 = (*&v38 + 32 * v14);
    v49 = *v48;
    v50 = v48[1];
    v51 = vandq_s8(*v48, v40);
    v52 = (*&v45 + 32 * v14);
    v53 = v52[1];
    v54 = vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*v52, v44), v51)), vceqzq_s32(vorrq_s8(vandq_s8(v53, v44), vandq_s8(v50, v40))));
    v55 = *(*&v34 + 16 * v14);
    v56 = vmovl_u16(*v55.i8);
    v57 = vmovl_high_u16(v55);
    v58 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v37, v56)), vceqzq_s32(vandq_s8(v37, v57)))), v54), vuzp1q_s16(vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(*v52, v46), vandq_s8(v49, v43)), vandq_s8(v36, v56))), vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(v53, v46), vandq_s8(v50, v43)), vandq_s8(v36, v57))))));
    v59 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v58, *v36.i8)), 0x1FuLL));
    v60 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v58, *v36.i8)), 0x1FuLL));
    if ((vmaxvq_u32(vorrq_s8(v60, v59)) & 0x80000000) != 0)
    {
      if (v16)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = *&v47 + 192 * v14;
        do
        {
          v65 = 0;
          v66 = v61;
          do
          {
            v67 = &v73[2 * v66];
            v68 = &v73[2 * (v62 + v65) + 36];
            v59 = vandq_s8(v59, vmlaq_f32(vmlaq_f32(vmlaq_f32(v68[7], vsubq_f32(*(v64 + 16), veorq_s8(v67[1], *(v64 + 112))), v68[1]), vsubq_f32(*(v64 + 48), veorq_s8(v67[3], *(v64 + 144))), v68[3]), vsubq_f32(*(v64 + 80), veorq_s8(v67[5], *(v64 + 176))), v68[5]));
            v60 = vandq_s8(v60, vmlaq_f32(vmlaq_f32(vmlaq_f32(v68[6], vsubq_f32(*v64, veorq_s8(*v67, *(v64 + 96))), *v68), vsubq_f32(*(v64 + 32), veorq_s8(v67[2], *(v64 + 128))), v68[2]), vsubq_f32(*(v64 + 64), veorq_s8(v67[4], *(v64 + 160))), v68[4]));
            v66 += 3;
            v65 += 4;
          }

          while (v65 != 24);
          v61 += 18;
          ++v63;
          v62 += 24;
        }

        while (v63 != v16);
        v58 = vmovn_s16(vuzp1q_s16(vcltzq_s32(v60), vcltzq_s32(v59)));
      }

      v69 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v58, *v36.i8)), 0x1FuLL)), xmmword_1AFE20C60), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v58, *v36.i8)), 0x1FuLL)), xmmword_1AFE20C50)));
      v70 = 8 * v14;
      if (v69)
      {
        v71 = v70 >= a3;
      }

      else
      {
        v71 = 1;
      }

      if (!v71)
      {
        v72 = a1[108];
        do
        {
          if (v69)
          {
            *(*&v72 + 4 * result) = v70;
            result = (result + 1);
          }

          if (v69 < 2)
          {
            break;
          }

          LODWORD(v70) = v70 + 1;
          v69 >>= 1;
        }

        while (v70 < a3);
      }
    }

    ++v14;
  }

  while (v14 != v15);
  return result;
}

uint64_t sub_1AF12CDB4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v63 = *MEMORY[0x1E69E9840];
  if ((a2 & 3) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 2;
  v15 = (a3 + 3) >> 2;
  v16 = *(a1 + 880);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 96; i += 16)
      {
        v23 = *(v21 + i);
        v24 = &v62[v18 + 18];
        v25 = vdupq_lane_s32(*v23.i8, 0);
        v26 = vdupq_lane_s32(*v23.i8, 1);
        *v24 = v25;
        v24[1] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v24[2] = v27;
        v24[3] = vdupq_laneq_s32(v23, 3);
        v28 = &v62[v19];
        *v28 = vandq_s8(v25, v20);
        v28[1] = vandq_s8(v26, v20);
        v28[2] = vandq_s8(v27, v20);
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 96;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v30 = *(a1 + 768);
  v31 = *(a1 + 776);
  v32 = (a1 + 816);
  v33 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v34 = (a1 + 832);
  v35 = vld1q_dup_f32(v34);
  v36 = *(a1 + 784);
  v37 = (a1 + 820);
  v38 = vld1q_dup_f32(v32);
  v39 = (a1 + 824);
  v40 = vld1q_dup_f32(v39);
  v41 = (a1 + 828);
  v42 = *(a1 + 792);
  v43 = vld1q_dup_f32(v37);
  v44 = vld1q_dup_f32(v41);
  do
  {
    v45 = *(v36 + 16 * v14);
    v46 = *(v42 + 16 * v14);
    v47 = vceqzq_s32(vorrq_s8(vandq_s8(v46, v43), vandq_s8(v45, v38)));
    v48 = vorrq_s8(vandq_s8(v46, v44), vandq_s8(v45, v40));
    v49 = vmovl_u16(*(v31 + 8 * v14));
    v50 = vandq_s8(vbicq_s8(vtstq_s32(v35, v49), v47), vceqzq_s32(vorrq_s8(v48, vandq_s8(v33, v49))));
    if ((vmaxvq_u32(v50) & 0x80000000) != 0)
    {
      if (v16)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        do
        {
          v55 = 0;
          v56 = v51;
          do
          {
            v57 = &v62[(v52 + v55) + 18];
            v54 = v30 + 96 * v14;
            v50 = vandq_s8(v50, vmlaq_f32(vmlaq_f32(vmlaq_f32(v57[3], vsubq_f32(*v54, veorq_s8(v62[v56], *(v54 + 48))), *v57), vsubq_f32(*(v54 + 16), veorq_s8(v62[v56 + 1], *(v54 + 64))), v57[1]), vsubq_f32(*(v54 + 32), veorq_s8(v62[v56 + 2], *(v54 + 80))), v57[2]));
            v56 += 3;
            v55 += 4;
          }

          while (v55 != 24);
          v51 += 18;
          ++v53;
          v52 += 24;
        }

        while (v53 != v16);
        v50 = vcltzq_s32(v50);
      }

      v58 = vaddvq_s32(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vmovn_s32(v50)), 0x1FuLL)), xmmword_1AFE20C60));
      v59 = 4 * v14;
      if (v58)
      {
        v60 = v59 >= a3;
      }

      else
      {
        v60 = 1;
      }

      if (!v60)
      {
        v61 = *(a1 + 864);
        do
        {
          if (v58)
          {
            *(v61 + 4 * result) = v59;
            result = (result + 1);
          }

          if (v58 < 2)
          {
            break;
          }

          LODWORD(v59) = v59 + 1;
          v58 >>= 1;
        }

        while (v59 < a3);
      }
    }

    ++v14;
  }

  while (v14 != v15);
  return result;
}

uint64_t sub_1AF12D098(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 836) | (~*(a1 + 840) << 8);
  v5 = *(a1 + 832);
  v6 = *(a1 + 816);
  v7 = *(a1 + 824);
  v8 = *(a1 + 864);
  v9 = a2;
  do
  {
    v10 = *(*(a1 + 776) + 2 * v9);
    v11 = v5 & v10;
    v12 = v4 & v10;
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = *(*(a1 + 784) + 4 * v9) | (*(*(a1 + 792) + 4 * v9) << 32);
      v15 = v14 & v6;
      v16 = v7 & v14;
      if (v15 && v16 == 0)
      {
        v18 = 0;
        v19 = *(a1 + 48);
        v27[2] = *(a1 + 32);
        v27[3] = v19;
        v20 = *(a1 + 80);
        v27[4] = *(a1 + 64);
        v27[5] = v20;
        v21 = *(a1 + 16);
        v27[0] = *a1;
        v27[1] = v21;
        v22 = (*(a1 + 768) + 32 * v9);
        while (1)
        {
          v23 = v27[v18];
          v24 = vmulq_f32(v23, *v22);
          *v24.i8 = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
          v25 = vmulq_f32(vabsq_f32(v23), v22[1]);
          *v24.i8 = vadd_f32(vzip1_s32(*v24.i8, *v25.f32), vzip2_s32(*v24.i8, *v25.f32));
          if (*v24.i32 > (*&v24.i32[1] + v25.f32[2]))
          {
            break;
          }

          if (++v18 == 6)
          {
            *(v8 + 4 * v3) = v9;
            v3 = (v3 + 1);
            break;
          }
        }
      }
    }

    ++v9;
  }

  while (v9 != a3);
  return v3;
}

uint64_t sub_1AF12D1AC(int32x2_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v75 = *MEMORY[0x1E69E9840];
  if ((a2 & 7) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 3;
  v15 = (a3 + 7) >> 3;
  v16 = a1[110].u32[0];
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 12; i += 2)
      {
        v23 = *v21[i].i8;
        v24 = vdupq_lane_s32(*v23.i8, 0);
        v25 = &v74[2 * v18 + 36];
        *v25 = v24;
        v25[1] = v24;
        v26 = vdupq_lane_s32(*v23.i8, 1);
        v25[2] = v26;
        v25[3] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v28 = vdupq_laneq_s32(v23, 3);
        v25[4] = v27;
        v25[5] = v27;
        v25[6] = v28;
        v25[7] = v28;
        v29 = &v74[2 * v19];
        v30 = vandq_s8(v24, v20);
        *v29 = v30;
        v29[1] = v30;
        v31 = vandq_s8(v26, v20);
        v29[2] = v31;
        v29[3] = v31;
        v32 = vandq_s8(v27, v20);
        v29[4] = v32;
        v29[5] = v32;
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 12;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v34 = a1[97];
  v35 = vdupq_n_s32(a1[104].i32[1] | (~a1[105].i32[0] << 8));
  v36 = vdupq_lane_s32(a1[104], 0);
  v37 = &a1[102];
  v38 = a1[98];
  v39 = &a1[102] + 1;
  v40 = vld1q_dup_f32(v37);
  v41 = &a1[103];
  v42 = &a1[103] + 1;
  v43 = vld1q_dup_f32(v41);
  v44 = a1[99];
  v45 = vld1q_dup_f32(v39);
  v46 = vld1q_dup_f32(v42);
  v47 = a1[96];
  v48 = v4 & 0xFFFFFFF8;
  v49 = a3;
  do
  {
    v50 = (*&v38 + 32 * v14);
    v51 = *v50;
    v52 = v50[1];
    v53 = vandq_s8(*v50, v40);
    v54 = (*&v44 + 32 * v14);
    v55 = v54[1];
    v56 = vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*v54, v45), v53)), vceqzq_s32(vorrq_s8(vandq_s8(v55, v45), vandq_s8(v52, v40))));
    v57 = *(*&v34 + 16 * v14);
    v58 = vmovl_u16(*v57.i8);
    v59 = vmovl_high_u16(v57);
    v60 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v36, v58)), vceqzq_s32(vandq_s8(v36, v59)))), v56), vuzp1q_s16(vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(*v54, v46), vandq_s8(v51, v43)), vandq_s8(v35, v58))), vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(v55, v46), vandq_s8(v52, v43)), vandq_s8(v35, v59))))));
    v61 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v60, *v35.i8)), 0x1FuLL));
    v62 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v60, *v35.i8)), 0x1FuLL));
    if ((vmaxvq_u32(vorrq_s8(v62, v61)) & 0x80000000) != 0)
    {
      if (v16)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = *&v47 + 192 * v14;
        do
        {
          v67 = 0;
          v68 = v63;
          do
          {
            v69 = &v74[2 * v68];
            v70 = &v74[2 * (v64 + v67) + 36];
            v61 = vandq_s8(v61, vmlaq_f32(vmlaq_f32(vmlaq_f32(v70[7], vsubq_f32(*(v66 + 16), veorq_s8(v69[1], *(v66 + 112))), v70[1]), vsubq_f32(*(v66 + 48), veorq_s8(v69[3], *(v66 + 144))), v70[3]), vsubq_f32(*(v66 + 80), veorq_s8(v69[5], *(v66 + 176))), v70[5]));
            v62 = vandq_s8(v62, vmlaq_f32(vmlaq_f32(vmlaq_f32(v70[6], vsubq_f32(*v66, veorq_s8(*v69, *(v66 + 96))), *v70), vsubq_f32(*(v66 + 32), veorq_s8(v69[2], *(v66 + 128))), v70[2]), vsubq_f32(*(v66 + 64), veorq_s8(v69[4], *(v66 + 160))), v70[4]));
            v68 += 3;
            v67 += 4;
          }

          while (v67 != 24);
          v63 += 18;
          ++v65;
          v64 += 24;
        }

        while (v65 != v16);
        v60 = vmovn_s16(vuzp1q_s16(vcltzq_s32(v62), vcltzq_s32(v61)));
      }

      v71 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v60, *v35.i8)), 0x1FuLL)), xmmword_1AFE20C60), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v60, *v35.i8)), 0x1FuLL)), xmmword_1AFE20C50)));
      if (v71)
      {
        v72 = 8 * v14 >= v49;
      }

      else
      {
        v72 = 1;
      }

      v73 = v48;
      if (!v72)
      {
        do
        {
          if (v71)
          {
            *(*&a1[107] + 8 * result) = *(*&a1[101] + 8 * v73);
            result = (result + 1);
          }

          if (v71 < 2)
          {
            break;
          }

          ++v73;
          v71 >>= 1;
        }

        while (v73 < v49);
      }
    }

    ++v14;
    v48 += 8;
  }

  while (v14 != v15);
  return result;
}

uint64_t sub_1AF12D5C4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v64 = *MEMORY[0x1E69E9840];
  if ((a2 & 3) != 0)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2948(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = v4 >> 2;
  v15 = (a3 + 3) >> 2;
  v16 = *(a1 + 880);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 96; i += 16)
      {
        v23 = *(v21 + i);
        v24 = &v63[v18 + 18];
        v25 = vdupq_lane_s32(*v23.i8, 0);
        v26 = vdupq_lane_s32(*v23.i8, 1);
        *v24 = v25;
        v24[1] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v24[2] = v27;
        v24[3] = vdupq_laneq_s32(v23, 3);
        v28 = &v63[v19];
        *v28 = vandq_s8(v25, v20);
        v28[1] = vandq_s8(v26, v20);
        v28[2] = vandq_s8(v27, v20);
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 96;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v30 = *(a1 + 768);
  v31 = *(a1 + 776);
  v32 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v33 = (a1 + 816);
  v34 = (a1 + 832);
  v35 = vld1q_dup_f32(v34);
  v36 = *(a1 + 784);
  v37 = (a1 + 820);
  v38 = vld1q_dup_f32(v33);
  v39 = (a1 + 824);
  v40 = (a1 + 828);
  v41 = vld1q_dup_f32(v39);
  v42 = *(a1 + 792);
  v43 = vld1q_dup_f32(v37);
  v44 = vld1q_dup_f32(v40);
  v45 = v4 & 0xFFFFFFFC;
  v46 = a3;
  do
  {
    v47 = *(v36 + 16 * v14);
    v48 = *(v42 + 16 * v14);
    v49 = vceqzq_s32(vorrq_s8(vandq_s8(v48, v43), vandq_s8(v47, v38)));
    v50 = vorrq_s8(vandq_s8(v48, v44), vandq_s8(v47, v41));
    v51 = vmovl_u16(*(v31 + 8 * v14));
    v52 = vandq_s8(vbicq_s8(vtstq_s32(v35, v51), v49), vceqzq_s32(vorrq_s8(v50, vandq_s8(v32, v51))));
    if ((vmaxvq_u32(v52) & 0x80000000) != 0)
    {
      if (v16)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        do
        {
          v57 = 0;
          v58 = v53;
          do
          {
            v59 = &v63[(v54 + v57) + 18];
            v56 = v30 + 96 * v14;
            v52 = vandq_s8(v52, vmlaq_f32(vmlaq_f32(vmlaq_f32(v59[3], vsubq_f32(*v56, veorq_s8(v63[v58], *(v56 + 48))), *v59), vsubq_f32(*(v56 + 16), veorq_s8(v63[v58 + 1], *(v56 + 64))), v59[1]), vsubq_f32(*(v56 + 32), veorq_s8(v63[v58 + 2], *(v56 + 80))), v59[2]));
            v58 += 3;
            v57 += 4;
          }

          while (v57 != 24);
          v53 += 18;
          ++v55;
          v54 += 24;
        }

        while (v55 != v16);
        v52 = vcltzq_s32(v52);
      }

      v60 = vaddvq_s32(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vmovn_s32(v52)), 0x1FuLL)), xmmword_1AFE20C60));
      if (v60)
      {
        v61 = 4 * v14 >= v46;
      }

      else
      {
        v61 = 1;
      }

      v62 = v45;
      if (!v61)
      {
        do
        {
          if (v60)
          {
            *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v62);
            result = (result + 1);
          }

          if (v60 < 2)
          {
            break;
          }

          ++v62;
          v60 >>= 1;
        }

        while (v62 < v46);
      }
    }

    ++v14;
    v45 += 4;
  }

  while (v14 != v15);
  return result;
}

uint64_t sub_1AF12D8C0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 836) | (~*(a1 + 840) << 8);
  v5 = *(a1 + 832);
  v6 = *(a1 + 816);
  v7 = *(a1 + 824);
  v8 = a2;
  do
  {
    v9 = *(*(a1 + 776) + 2 * v8);
    v10 = v5 & v9;
    v11 = v4 & v9;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = *(*(a1 + 784) + 4 * v8) | (*(*(a1 + 792) + 4 * v8) << 32);
      v14 = v13 & v6;
      v15 = v7 & v13;
      if (v14 && v15 == 0)
      {
        v17 = 0;
        v18 = *(a1 + 48);
        v26[2] = *(a1 + 32);
        v26[3] = v18;
        v19 = *(a1 + 80);
        v26[4] = *(a1 + 64);
        v26[5] = v19;
        v20 = *(a1 + 16);
        v26[0] = *a1;
        v26[1] = v20;
        v21 = (*(a1 + 768) + 32 * v8);
        while (1)
        {
          v22 = v26[v17];
          v23 = vmulq_f32(v22, *v21);
          *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
          v24 = vmulq_f32(vabsq_f32(v22), v21[1]);
          *v23.i8 = vadd_f32(vzip1_s32(*v23.i8, *v24.f32), vzip2_s32(*v23.i8, *v24.f32));
          if (*v23.i32 > (*&v23.i32[1] + v24.f32[2]))
          {
            break;
          }

          if (++v17 == 6)
          {
            *(*(a1 + 856) + 8 * v3) = *(*(a1 + 808) + 8 * v8);
            v3 = (v3 + 1);
            break;
          }
        }
      }
    }

    ++v8;
  }

  while (v8 != a3);
  return v3;
}

void sub_1AF12D9F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void sub_1AF12DA18(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  free(v2);
}

uint64_t sub_1AF12DA5C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734710 = result;
  return result;
}

uint64_t sub_1AF12DA84()
{
  if (qword_1ED734718 != -1)
  {
    sub_1AFDD29C0();
  }

  v0 = sub_1AF0D160C(qword_1ED734710, 0x20uLL);
  *(v0 + 16) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v1 = sub_1AF287870(2);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1000;
  }

  sub_1AF12DB10(v0, v2);
  return v0;
}

void *sub_1AF12DB10(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 32))
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD29D4(v4);
    }
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  free(*(a1 + 24));
  result = malloc_type_malloc(8 * v2, 0x2004093837F09uLL);
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 24) = result;
  return result;
}

BOOL sub_1AF12DBA4(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v2 >= v3)
  {
    v6 = sub_1AF0D5194(a1, a2);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_1AF0CE000, v6, OS_LOG_TYPE_DEFAULT, "Warning: overflow the max batch size boundary", v8, 2u);
      return 0;
    }
  }

  else
  {
    v4 = a1[3];
    a1[4] = v2 + 1;
    *(v4 + 8 * v2) = a2;
    return v2 + 1 < v3;
  }

  return result;
}

uint64_t sub_1AF12DC38(uint64_t a1, void *a2)
{
  v3 = a1 + 24;
  result = *(a1 + 24);
  *a2 = *(v3 + 8);
  return result;
}

void sub_1AF12DC44(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12DDCC(a1, a2);
  if (v3)
  {
    v6 = sub_1AF1D00B0(v3, v4);
    if (!v6)
    {
      v7 = sub_1AF0D5194(0, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD2A58(v7, v5, v8, v9, v10, v11, v12, v13);
      }
    }

    v14 = sub_1AF12DE14(a1, v5);
    v15 = *(a1 + 4296);
    v16 = sub_1AF133A5C(v6, @"kDeformerStackKey", 0);
    if (v16)
    {
      v18 = v16;
      v19 = sub_1AF0D5194(v16, v17);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = v19;
        if (os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Deformers", &unk_1AFF70A1D, buf, 2u);
        }
      }

      v21 = CACurrentMediaTime();
      prof_beginFlame("Skinning", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/AppleEngine/CFXEngineContext.m", 203);
      sub_1AF28A5A0(v18, &unk_1F24E6D78);
      *(v14 + 136) = *(v14 + 136) + CACurrentMediaTime() - v21;
      prof_endFlame();
      v24 = sub_1AF0D5194(v22, v23);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v25 = v24;
        if (os_signpost_enabled(v24))
        {
          *v26 = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v25, OS_SIGNPOST_INTERVAL_END, v15, "Deformers", &unk_1AFF70A1D, v26, 2u);
        }
      }
    }
  }
}

uint64_t sub_1AF12DDCC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF12DE14(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 4152);
}

void sub_1AF12DE64(uint64_t a1, float32x4_t *a2)
{
  v3 = sub_1AF1B92C8(a2, a2);
  if (v3)
  {

    sub_1AF1C9CD8(v3, a2);
  }
}

void sub_1AF12DEB0(uint64_t result, uint64_t a2)
{
  if (*(result + 212) == 1)
  {
    v18 = v2;
    v19 = v3;
    v5 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1AF0CE000, v5, OS_LOG_TYPE_INFO, "Info: Reload Shaders", v17, 2u);
    }

    v7 = sub_1AF12DDCC(result, v6);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v7, 0, 1u);
    objc_msgSend_emptyShaderCache(*(result + 232), v8, v9);
    v12 = objc_msgSend_resourceManager(*(result + 4160), v10, v11);
    sub_1AFDE7C04(v12, v13, v14);
    v16 = *(result + 176);
    if (v16)
    {
      sub_1AF70BE24(v16, v15);
    }

    *(result + 212) = 0;
  }
}

void sub_1AF12DF78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = sub_1AF1B9B04(a2, a2);
      v15 = *(v3 + 16);
      v16 = *(v3 + 48);
      v17 = *(v3 + 32);
      v18[0] = *v3;
      v18[1] = v15;
      v18[2] = v17;
      v18[3] = v16;
      *v11.i64 = sub_1AF1B7F84(v2, v4);
      if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v18[0], v11), vceqq_f32(v15, v12)), vandq_s8(vceqq_f32(v17, v13), vceqq_f32(v16, v14)))) & 0x80000000) == 0)
      {
        sub_1AF1BA204(v2, v18, v5, v6, v7, v8, v9, v10);
      }
    }
  }
}

uint64_t sub_1AF12E014(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  result = *(a1 + 872);
  if (!result)
  {
    v19 = xmmword_1AFE21020;
    v20 = unk_1AFE21030;
    v21 = xmmword_1AFE21040;
    v22 = unk_1AFE21050;
    *bytes = xmmword_1AFE21000;
    v18 = unk_1AFE21010;
    *v14 = xmmword_1AFE21060;
    v15 = unk_1AFE21070;
    v16 = 132612;
    v3 = *MEMORY[0x1E695E480];
    v4 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 96);
    values = sub_1AF1ADBE4(v4, 0, 8, 3, 1);
    CFRelease(v4);
    v5 = CFDataCreate(v3, v14, 36);
    cf = sub_1AF1A6834(v5, v6);
    sub_1AF1A6A70(cf, 0, 12, v5, 1);
    CFRelease(v5);
    v11 = 0;
    v7 = MEMORY[0x1E695E9C0];
    v8 = CFArrayCreate(v3, &values, 1, MEMORY[0x1E695E9C0]);
    v9 = CFArrayCreate(v3, &cf, 1, v7);
    v10 = sub_1AF27B22C(v8, v9, &v11);
    *(a1 + 872) = v10;
    sub_1AF16CC34(v10, @"Environment cube");
    if (values)
    {
      CFRelease(values);
      values = 0;
    }

    CFRelease(v9);
    CFRelease(v8);
    CFRelease(cf);
    return *(a1 + 872);
  }

  return result;
}

uint64_t sub_1AF12E1B8(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1660D8(a2, a2);
  if (!result && (*(a1 + 4306) & 1) == 0)
  {
    result = sub_1AF12E2AC(a1, v5);
    if (result)
    {
      v7 = result;
      v8 = sub_1AF167578(a2, v6);
      if (v8 && (v10 = v8, sub_1AF276754(v8, v9) - 4 >= 0xFFFFFFFD))
      {

        return MEMORY[0x1EEE66B58](v7, sel_renderVideoBackground_engineContext_materialProperty_, v10);
      }

      else
      {

        return MEMORY[0x1EEE66B58](v7, sel_renderBackground_engineContext_passInstance_, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1AF12E2AC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 4160);
}

uint64_t sub_1AF12E2F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1AF270434(*(result + 4200));
    sub_1AF15AE14(v1);
    sub_1AF1BE2E4(v1, @"kCFXNotificationEngineContextInvalidatePasses", 0);
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_1AF1CEAE8(v2, v1);
    }

    v3 = *(v1 + 136);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 136) = 0;
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 16) = 0;
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 24) = 0;
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 32) = 0;
    }

    v7 = *(v1 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(v1 + 40) = 0;
    }

    v8 = *(v1 + 848);
    if (v8)
    {
      CFRelease(v8);
      *(v1 + 848) = 0;
    }

    v9 = *(v1 + 48);
    if (v9)
    {
      CFRelease(v9);
      *(v1 + 48) = 0;
    }

    v10 = *(v1 + 864);
    if (v10)
    {
      CFRelease(v10);
      *(v1 + 864) = 0;
    }

    v11 = *(v1 + 4160);
    if (v11)
    {
      CFRelease(v11);
      *(v1 + 4160) = 0;
    }

    v12 = *(v1 + 168);
    if (v12)
    {
      CFRelease(v12);
      *(v1 + 168) = 0;
    }

    v13 = *(v1 + 152);
    if (v13)
    {
      CFRelease(v13);
      *(v1 + 152) = 0;
    }

    v14 = *(v1 + 160);
    if (v14)
    {
      CFRelease(v14);
      *(v1 + 160) = 0;
    }

    v15 = *(v1 + 176);
    if (v15)
    {
      CFRelease(v15);
      *(v1 + 176) = 0;
    }

    v16 = *(v1 + 872);
    if (v16)
    {
      CFRelease(v16);
      *(v1 + 872) = 0;
    }

    v17 = *(v1 + 880);
    if (v17)
    {
      CFRelease(v17);
      *(v1 + 880) = 0;
    }

    v18 = *(v1 + 888);
    if (v18)
    {
      CFRelease(v18);
      *(v1 + 888) = 0;
    }

    CStackAllocatorDestroy(*(v1 + 144));
    v19 = 0;
    v20 = v1 + 4024;
    do
    {
      v21 = *(v20 + v19);
      if (v21)
      {
        CFRelease(v21);
        *(v20 + v19) = 0;
      }

      v19 += 8;
    }

    while (v19 != 128);
    CFRelease(*(v1 + 4192));
    v22 = *(v1 + 4208);
    if (v22)
    {
      CFRelease(v22);
      *(v1 + 4208) = 0;
    }

    v23 = *(v1 + 4216);
    if (v23)
    {
      CFRelease(v23);
      *(v1 + 4216) = 0;
    }

    v24 = *(v1 + 568);
    if (v24)
    {
      CFRelease(v24);
      *(v1 + 568) = 0;
    }

    result = sub_1AF20A9F8(*(v1 + 4168));
    *(v1 + 4152) = 0;
  }

  return result;
}

uint64_t sub_1AF12E4D8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739948 = result;
  return result;
}

uint64_t sub_1AF12E500(const void *a1, void *a2)
{
  if (qword_1ED739950 != -1)
  {
    sub_1AFDD2BC0();
  }

  v4 = sub_1AF0D160C(qword_1ED739948, 0x10D0uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = 0;
    *(v4 + 896) = 0x7FF0000000000000;
    *(v4 + 218) = 1;
    __asm { FMOV            V0.2S, #1.0 }

    *(v4 + 204) = _D0;
    *(v4 + 4192) = a1;
    CFRetain(a1);
    v12 = objc_msgSend_valueForKey_(a2, v11, @"VFXRendererInitForRemoteEncoding");
    isEqual = objc_msgSend_isEqual_(v12, v13, &unk_1F25D4138);
    v16 = objc_msgSend_valueForKey_(a2, v15, @"VFXRendererInitForRemoteDecoding");
    v18 = objc_msgSend_isEqual_(v16, v17, &unk_1F25D4138);
    if (isEqual)
    {
      *(v5 + 4306) = 1;
    }

    if (v18)
    {
      *(v5 + 4307) = 1;
    }

    sub_1AF2703C0(v5, a2);
  }

  return 0;
}

const __CFDictionary *sub_1AF12E754(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 848);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void sub_1AF12E7B4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 860) != v2)
  {
    *(result + 860) = v2;
    *(result + 212) = 1;
    sub_1AF2709C8(*(result + 4200));
  }
}

void sub_1AF12E824(uint64_t a1, const void *a2, void *a3)
{
  prof_beginFlame("CFXEngineContextLoadCustomRenderGraph", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/AppleEngine/CFXEngineContext.m", 516);
  sub_1AF270BD4(*(a1 + 4200), a2, a3);

  prof_endFlame();
}

void *sub_1AF12E8BC(uint64_t a1, void *cf, uint64_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v5, cf, a3, v6, v7, v8, v9, v10);
      if (cf)
      {
        goto LABEL_4;
      }

LABEL_6:
      v11 = 0;
      goto LABEL_7;
    }
  }

  if (!cf)
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = CFRetain(cf);
LABEL_7:
  *(a1 + 4160) = v11;
  *(a1 + 4176) = objc_msgSend_features(cf, cf, a3);
  result = objc_msgSend_stats(cf, v12, v13);
  *(a1 + 4152) = result;
  return result;
}

void sub_1AF12E93C(uint64_t *result, const void *a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = result[2];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF12EA28(result, 0);
      sub_1AF15AE14(result);
      sub_1AF1CEAE8(result[2], result);
    }

    sub_1AF1400B8(result[19]);
    sub_1AF14AD64(result[20]);
    v13 = result[2];
    if (v13 != a2)
    {
      if (v13)
      {
        CFRelease(v13);
        result[2] = 0;
      }

      if (a2)
      {
        v14 = CFRetain(a2);
      }

      else
      {
        v14 = 0;
      }

      result[2] = v14;
    }

    if (a2)
    {
      sub_1AF1CE94C(a2, result);
      sub_1AF15AE14(result);
    }

    sub_1AF12EB90(result, 0);
    sub_1AF15ADC0(result);
  }
}

uint64_t sub_1AF12EA28(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF12EB90(a1, 0);
  if (a2)
  {
    v13 = sub_1AF1BB260(a2, v12);
    if (v13)
    {
      *(v13 + 360) &= ~1u;
    }
  }

  v14 = *(a1 + 24);
  if (v14 != a2)
  {
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      v15 = CFRetain(a2);
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 24) = v15;
  }

  if (a2)
  {
    v16 = sub_1AF1B9B04(a2, v12);
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v17)), v18, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
    v20 = vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), *v16);
    v21 = -1.0;
    if ((v20.f32[2] + vaddv_f32(*v20.f32)) >= 0.0)
    {
      v21 = 1.0;
    }

    v22 = vmulq_f32(*v16, *v16);
    v23 = vmulq_f32(v17, v17);
    v24 = vadd_f32(vzip1_s32(*v22.i8, *v23.i8), vzip2_s32(*v22.i8, *v23.i8));
    v25 = vextq_s8(v22, v22, 8uLL);
    *v25.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v25.f32, *&vextq_s8(v23, v23, 8uLL)), v24));
    v26 = vmulq_f32(v18, v18);
    v25.i32[2] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
    v27 = vabsq_f32(vmulq_n_f32(v25, v21));
    *(a1 + 200) = 1.0 / fmaxf(fmaxf(v27.f32[0], v27.f32[2]), v27.f32[1]);
  }

  return sub_1AF2709C8(*(a1 + 4200));
}

CFTypeRef sub_1AF12EB90(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 40) = 0;
    }

    if (cf)
    {
      *(a1 + 40) = CFRetain(cf);
      v14 = sub_1AF1B9B04(cf, v13);
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), vnegq_f32(v15)), v16, vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL));
      v18 = vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), *v14);
      v19 = -1.0;
      if ((v18.f32[2] + vaddv_f32(*v18.f32)) >= 0.0)
      {
        v19 = 1.0;
      }

      v20 = vmulq_f32(*v14, *v14);
      v21 = vmulq_f32(v15, v15);
      v22 = vadd_f32(vzip1_s32(*v20.i8, *v21.i8), vzip2_s32(*v20.i8, *v21.i8));
      v23 = vextq_s8(v20, v20, 8uLL);
      *v23.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v23.f32, *&vextq_s8(v21, v21, 8uLL)), v22));
      v24 = vmulq_f32(v16, v16);
      v23.i32[2] = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
      v25 = vabsq_f32(vmulq_n_f32(v23, v19));
      *(a1 + 200) = 1.0 / fmaxf(fmaxf(v25.f32[0], v25.f32[2]), v25.f32[1]);
    }

    else
    {
      *(a1 + 40) = 0;
    }

    return sub_1AF2709C8(*(a1 + 4200));
  }

  return result;
}

void sub_1AF12ECD8(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(result + 896);
  if (v13 > a3)
  {
    v13 = a3;
  }

  *(result + 896) = v13;
}

void sub_1AF12ED38(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(result + 912);
  if (v11 >= *(result + 896))
  {
    v11 = *(result + 896);
  }

  *(result + 896) = v11;
}

double sub_1AF12ED90(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 896);
}

uint64_t sub_1AF12EDD8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 152);
}

uint64_t sub_1AF12EE20(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 160);
}

uint64_t sub_1AF12EE80(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  *(result + 192) = a2;
  if (((v2 ^ a2) & 0x100) != 0)
  {
    return sub_1AF2709C8(*(result + 4200));
  }

  return result;
}

uint64_t sub_1AF12EE9C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 136);
  if (result)
  {
    v13 = 1;
  }

  else
  {
    v13 = v2 == 0;
  }

  if (!v13)
  {
    result = sub_1AF0FC1EC(a1);
    *(a1 + 136) = result;
  }

  return result;
}

float sub_1AF12EF08(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 200);
}

uint64_t sub_1AF12EF50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

float32x4_t *sub_1AF12EF98(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD2B48(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(v2 + 48);
  if (!v10)
  {
    v10 = sub_1AF1B8588(a1, a2);
    v12 = sub_1AF19B168(v10, v11);
    sub_1AF19B268(v12, 2);
    sub_1AF19C404(v12, 0xDEFA017DEFA017);
    sub_1AF1BB108(v10, v12);
    CFRelease(v12);
    *(v2 + 48) = v10;
  }

  return v10;
}

BOOL sub_1AF12F038(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF12DDCC(a1, a2);
  result = 1;
  if ((sub_1AF1D131C(v10, v11) & 1) == 0)
  {
    v12 = sub_1AF12E754(a1, @"defaultLight");
    if (!v12 || !CFEqual(v12, *MEMORY[0x1E695E4D0]))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF12F0C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

const void *sub_1AF12F10C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  ValueAtIndex = *(a1 + 24);
  if (!ValueAtIndex)
  {
    ValueAtIndex = sub_1AF12EF50(a1, a2);
    if (!ValueAtIndex)
    {
      v12 = sub_1AF12DDCC(a1, v11);
      if (v12 && (v14 = v12, (v15 = sub_1AF1CF7E8(v12, v13)) != 0))
      {
        v16 = sub_1AF1BA4E4(v15, @"kCameraKey", 1);
        v17 = v16;
        if (v16 && CFArrayGetCount(v16) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
          v18 = sub_1AF12EA28(a1, ValueAtIndex);
          if (!*(a1 + 24))
          {
            v20 = sub_1AF0D5194(v18, v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDD2BD4(v20, v21, v22, v23, v24, v25, v26, v27);
            }
          }

LABEL_21:
          CFRelease(v17);
          return ValueAtIndex;
        }

        v28 = sub_1AF12E754(a1, @"defaultCamera");
        if (v28 && !CFEqual(v28, *MEMORY[0x1E695E4D0]))
        {
          ValueAtIndex = 0;
        }

        else
        {
          ValueAtIndex = sub_1AF12EF50(a1, v29);
          if (!ValueAtIndex)
          {
            ValueAtIndex = sub_1AF27E5F0(v14, 0);
            if (ValueAtIndex)
            {
              sub_1AF12EB90(a1, ValueAtIndex);
              CFRelease(ValueAtIndex);
            }
          }
        }

        if (v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return ValueAtIndex;
}

CFTypeRef sub_1AF12F27C(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t sub_1AF12F2FC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

const void *sub_1AF12F344(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 32);
  if (!result)
  {
    return sub_1AF12F10C(a1, a2);
  }

  return result;
}

uint64_t sub_1AF12F398(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 56;
}

void sub_1AF12F3E0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 120) = a2;
}

uint64_t sub_1AF12F434(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 120);
}

void sub_1AF12F47C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 128) = a2;
}

uint64_t sub_1AF12F4D0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

uint64_t sub_1AF12F518(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 144);
}

uint64_t sub_1AF12F560(uint64_t a1, void *key, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 848);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }
  }

  return a3;
}

uint64_t sub_1AF12F5E8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 856);
}

void sub_1AF12F630(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 856) != v2)
  {
    *(result + 856) = v2;
    *(result + 212) = 1;
    sub_1AF2709C8(*(result + 4200));
  }
}

uint64_t sub_1AF12F6A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 860);
}

BOOL sub_1AF12F6E8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 860) == 1;
}

uint64_t sub_1AF12F738(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 552);
}

uint64_t sub_1AF12F780(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 552) = v2;
  return sub_1AF2709C8(*(a1 + 4200));
}

uint64_t sub_1AF12F7DC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 550);
}

void sub_1AF12F824(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 550) = v2;
}

void sub_1AF12F878(uint64_t a1, CFTypeRef cf)
{
  if (a1 || (v4 = sub_1AF0D5194(0, cf), !os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    if (!cf)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
  if (cf)
  {
LABEL_4:
    CFRetain(cf);
  }

LABEL_5:
  v12 = *(a1 + 568);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 568) = cf;
  *(a1 + 554) = 1;
}

void sub_1AF12F8F0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, a2, a3, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 554) == 1)
  {
    v10 = *(a1 + 568);
    v11 = objc_msgSend_graph(v10, a2, a3);
    v14 = objc_msgSend_diagnostics(v10, v12, v13);
    sub_1AF12E824(a1, v11, v14);
    v15 = *(a1 + 568);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 568) = 0;
    }

    *(a1 + 554) = 0;
  }
}

void sub_1AF12F984(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 551) != v2)
  {
    *(result + 551) = v2;
    if (v2)
    {
      *(result + 576) = *(result + 860);
      *(result + 580) = *(result + 219);
      *(result + 581) = *(result + 548);
      *(result + 582) = *(result + 218);
      v12 = *(result + 1984);
      *(result + 592) = *(result + 1968);
      *(result + 608) = v12;
      v13 = *(result + 2016);
      *(result + 624) = *(result + 2000);
      *(result + 640) = v13;
      v14 = *(result + 944);
      v15 = *(result + 960);
      v16 = *(result + 992);
      *(result + 752) = *(result + 976);
      *(result + 768) = v16;
      *(result + 720) = v14;
      *(result + 736) = v15;
      v17 = *(result + 2048);
      *(result + 656) = *(result + 2032);
      *(result + 672) = v17;
      v18 = *(result + 2080);
      *(result + 688) = *(result + 2064);
      *(result + 704) = v18;
      v19 = *(result + 1056);
      *(result + 816) = *(result + 1040);
      *(result + 832) = v19;
      v20 = *(result + 1024);
      *(result + 784) = *(result + 1008);
      *(result + 800) = v20;
      *(result + 860) = 1;
      *(result + 550) = 1;
    }

    else
    {
      *(result + 860) = *(result + 576);
      v21 = *(result + 608);
      *(result + 1968) = *(result + 592);
      *(result + 1984) = v21;
      v22 = *(result + 640);
      *(result + 2000) = *(result + 624);
      *(result + 2016) = v22;
      v23 = *(result + 736);
      *(result + 944) = *(result + 720);
      *(result + 960) = v23;
      v24 = *(result + 768);
      *(result + 976) = *(result + 752);
      *(result + 992) = v24;
      v25 = *(result + 688);
      *(result + 2080) = *(result + 704);
      *(result + 2064) = v25;
      v26 = *(result + 656);
      *(result + 2048) = *(result + 672);
      *(result + 2032) = v26;
      v27 = *(result + 816);
      *(result + 1056) = *(result + 832);
      *(result + 1040) = v27;
      v28 = *(result + 800);
      *(result + 1008) = *(result + 784);
      *(result + 1024) = v28;
    }

    sub_1AF2709C8(*(result + 4200));
  }
}

unint64_t sub_1AF12FAE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if (a3 >= 0x10)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2C4C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return a1 + (v4 << 10) + (a3 << 6) + 944;
}

__n128 sub_1AF12FB54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a2;
  if (a4 >= 0x10)
  {
    v8 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2C4C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  result = *a3;
  v17 = *(a3 + 16);
  v18 = *(a3 + 48);
  v19 = a1 + (v6 << 10) + (a4 << 6);
  *(v19 + 976) = *(a3 + 32);
  *(v19 + 992) = v18;
  *(v19 + 944) = result;
  *(v19 + 960) = v17;
  return result;
}

__n128 sub_1AF12FBD8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 551) == 1)
  {
    v11[0] = *(a1 + 256);
    v3 = sub_1AF12F10C(a1, a2);
    v13 = *sub_1AF1B9B04(v3, v4);
    v14 = __invert_f4(v13);
    *(a1 + 1968) = v14.columns[0];
    *(a1 + 1984) = v14.columns[1];
    *(a1 + 2000) = v14.columns[2];
    *(a1 + 2016) = vaddq_f32(v14.columns[3], xmmword_1AFE20FE0);
    *(a1 + 2032) = v14.columns[0];
    *(a1 + 2048) = v14.columns[1];
    *(a1 + 2064) = v14.columns[2];
    *(a1 + 2080) = vaddq_f32(v14.columns[3], xmmword_1AFE20FF0);
    memset(v10, 0, sizeof(v10));
    sub_1AF27F12C(v3, v10);
    v5 = sub_1AF15E62C(v10, v11);
    result = *v5;
    v7 = *(v5 + 1);
    v8 = *(v5 + 2);
    v9 = *(v5 + 3);
    *(a1 + 976) = v8;
    *(a1 + 992) = v9;
    *(a1 + 944) = result;
    *(a1 + 960) = v7;
    *(a1 + 1008) = result;
    *(a1 + 1024) = v7;
    *(a1 + 1056) = v9;
    *(a1 + 1040) = v8;
  }

  return result;
}

__n128 sub_1AF12FCE8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x10)
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2CC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 16 * v2 + 256);
}

void sub_1AF12FD44(uint64_t a1, void *key, void *value)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Mutable = *(a1 + 848);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 848) = Mutable;
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, key, value);
  }

  else
  {
    CFDictionaryRemoveValue(Mutable, key);
  }
}

void sub_1AF12FDD4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 214) = v2;
}

void sub_1AF12FE28(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 213) = v2 != 0;
}

uint64_t sub_1AF12FE84(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 213);
}

void sub_1AF12FECC(uint64_t *a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF12E93C(a1, a2);
  if (a2)
  {
    if (!sub_1AF1CF7E8(a2, v12))
    {
      v14 = sub_1AF0D5194(0, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD128C(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    sub_1AF2709C8(a1[525]);
    sub_1AF1BE27C(a1, sub_1AF12FFA8, @"kCFXNotificationEngineContextInvalidatePasses", a2, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    sub_1AF1BE2E4(a1, @"kCFXNotificationEngineContextInvalidatePasses", 0);
  }
}

void *sub_1AF12FFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = sub_1AF12DDCC(a2, a2);
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"kCameraKey");
    if (Value)
    {
      v10 = Value;
      v11 = CFDictionaryGetValue(a5, @"kCameraEffectKey");
      v13 = sub_1AF12F10C(a2, v12);
      if (!v13 || (v13 = sub_1AF1BB260(v13, v14), v10 != v13))
      {
        if (!v11 || !sub_1AF15D334(v13, v11))
        {
          v17 = sub_1AF2709E0(*(a2 + 4200));
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          result = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v26, v30, 16);
          if (!result)
          {
            return result;
          }

          v20 = result;
          v21 = *v27;
LABEL_13:
          v22 = 0;
          while (1)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v26 + 1) + 8 * v22);
            if (v23)
            {
              v24 = objc_msgSend_nodeRef(v23, v7, v19);
              v23 = sub_1AF1BB260(v24, v25);
            }

            if (v10 == v23 || v11 && sub_1AF15D334(v23, v11))
            {
              break;
            }

            if (v20 == ++v22)
            {
              result = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v7, &v26, v30, 16);
              v20 = result;
              if (result)
              {
                goto LABEL_13;
              }

              return result;
            }
          }
        }
      }
    }
  }

  if (!v8)
  {
    return sub_1AF2709C8(*(a2 + 4200));
  }

  sub_1AF1CEA20(v8, v7);
  sub_1AF2709C8(*(a2 + 4200));
  return sub_1AF1CEA9C(v8, v15);
}

uint64_t sub_1AF130160(uint64_t a1, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 232);
  if (!v4)
  {
    v4 = objc_msgSend_commonProfileGeneratorAllowingHotReload_(VFXCommonProfileProgramGenerator, a2, 0);
    *(a1 + 232) = v4;
  }

  return MEMORY[0x1EEE66B58](v4, sel_programWithHashCode_engineContext_trackedResource_introspectionDataPtr_, a2);
}

uint64_t sub_1AF1301DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 232);
  if (!v4)
  {
    v4 = objc_msgSend_commonProfileGeneratorAllowingHotReload_(VFXCommonProfileProgramGenerator, a2, 0);
    *(a1 + 232) = v4;
  }

  objc_msgSend_emptyShaderCache(v4, a2, a3);
  v7 = objc_msgSend_resourceManager(*(a1 + 4160), v5, v6);
  sub_1AFDE7C04(v7, v8, v9);
  result = sub_1AF12DDCC(a1, v10);
  if (result)
  {
    v13 = sub_1AF1D00B0(result, v12);

    return sub_1AF132484(v13);
  }

  return result;
}

uint64_t sub_1AF130254(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  a1[29] = 0;
  a1[15] = 0;
  a1[16] = 0;
  return sub_1AF12EA28(a1, 0);
}

CFTypeRef sub_1AF1302E4(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 168);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 168) = result;
  }

  return result;
}

uint64_t sub_1AF130340(uint64_t a1, double a2, double a3, double a4, double a5, __n128 a6)
{
  if (!*(a1 + 864))
  {
    v7 = sub_1AF22917C(0, 1, 1, 0, 2.0, -2.0, 0.0, a5, a6);
    v8 = sub_1AF27E144(v7);
    *(a1 + 864) = v8;
    sub_1AF16CC34(v8, @"Quad");
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return *(a1 + 864);
}

uint64_t sub_1AF1303B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 240) = a2;
  *(result + 248) = a3;
  return result;
}

float32x4_t sub_1AF1303B8(float32x4_t *a1, uint64_t a2)
{
  v12 = a1[15];
  v2 = sub_1AF12DDCC(a1, a2);
  if (v2 && (v3 = sub_1AF1D0008(v2, 0)) != 0 && (v5 = v3, (v6 = sub_1AF1660D8(v3, v4)) != 0))
  {
    v11 = *v6;
    v8.f32[0] = sub_1AF166598(v5, v7);
    v9.i32[0] = 1.0;
    result = vmulq_laneq_f32(vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v8, v9)), 0), vmulq_n_f32(v11, v8.f32[0]), v11), v11, 3);
    result.i32[3] = v11.i32[3];
    result.i64[0] = vaddq_f32(vmulq_n_f32(v12, 1.0 - v11.f32[3]), result).u64[0];
  }

  else
  {
    return v12;
  }

  return result;
}

void sub_1AF130454(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 933) = 1;
  *(result + 936) = a2;
}

void sub_1AF1304B0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(result + 933) = 0;
  *(result + 936) = 0;
}

__n128 sub_1AF13051C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + (a2 << 10);
  result = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 48);
  *(v3 + 976) = *(a3 + 32);
  *(v3 + 992) = v6;
  *(v3 + 944) = result;
  *(v3 + 960) = v5;
  return result;
}

void sub_1AF130558(uint64_t result, uint64_t a2, __n128 a3)
{
  v3 = a2;
  if (a2 >= 0x10)
  {
    v14 = a3;
    v5 = sub_1AF0D5194(result, a2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    a3 = v14;
    if (v6)
    {
      sub_1AFDD2CC4(v5, v7, v8, v9, v10, v11, v12, v13);
      a3 = v14;
    }
  }

  *(result + 16 * v3 + 256) = a3;
}

id sub_1AF130608(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4160))
  {
    v3 = *(a1 + 4200);

    return sub_1AF2709F8(v3, a2);
  }

  else
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD2D3C();
    }

    return 0;
  }
}

void *sub_1AF130664(uint64_t a1, CFX::RG::Resource *a2)
{
  if (*(a1 + 4160))
  {
    v3 = *(a1 + 4200);

    return sub_1AF270B44(v3, a2);
  }

  else
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD2D70();
    }

    return 0;
  }
}

uint64_t sub_1AF1306C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = sub_1AF16679C(a2, a2);
  v6 = *(a1 + 4160);
  if (v6)
  {

    return objc_msgSend_textureForMaterialProperty_(v6, v5, a2);
  }

  else
  {
    v8 = sub_1AF0D5194(0, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD2DA4();
    }

    return 0;
  }
}

unint64_t sub_1AF13074C(unsigned int a1)
{
  v1 = 0x404040404030201uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

void *sub_1AF130770(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(a1 + 4160);
  if (result)
  {
    return objc_msgSend_currentFrameIndex(result, a2, a3);
  }

  return result;
}

uint64_t sub_1AF130794(uint64_t a1)
{
  if (*(a1 + 215))
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1307B0(uint64_t result, char a2)
{
  if ((*(result + 4177) & 0x20) != 0)
  {
    *(result + 548) = a2;
  }

  return result;
}

uint64_t sub_1AF1307C4(uint64_t a1)
{
  if (*(a1 + 548))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

CFTypeRef sub_1AF1307E0(uint64_t a1, CFTypeRef cf, unsigned int a3)
{
  v3 = a1 + 4024;
  result = *(a1 + 4024 + 8 * a3);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(v3 + 8 * a3) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(v3 + 8 * a3) = result;
  }

  return result;
}

uint64_t sub_1AF130850(uint64_t result, float a2)
{
  if (a2 != 0.0)
  {
    *(result + 204) = a2;
  }

  return result;
}

uint64_t sub_1AF13086C(uint64_t result, float a2)
{
  if (*(result + 208) != a2)
  {
    *(result + 208) = a2;
    return sub_1AF2709C8(*(result + 4200));
  }

  return result;
}

uint64_t sub_1AF130890(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12DDCC(a1, a2);
  if (result)
  {
    v5 = sub_1AF1D00B0(result, v4);
    v7 = sub_1AF13341C(v5, v6);
    v9 = sub_1AF14748C(v7, v8);
    v11 = sub_1AF12EDD8(a1, v10);
    sub_1AF140010(v11, v9);
    v13 = sub_1AF12EE20(a1, v12);
    sub_1AF14ACBC(v13, v9);

    return sub_1AF14ADFC(v13, v5);
  }

  return result;
}

uint64_t sub_1AF130920(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12DDCC(a1, a2);
  if (result)
  {
    v6 = sub_1AF1D00B0(result, v4);
    if (!v6)
    {
      v7 = sub_1AF0D5194(0, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD2A58(v7, v5, v8, v9, v10, v11, v12, v13);
      }
    }

    v15 = 0u;
    v16 = 0u;
    v14[0] = v6;
    v14[1] = a1;
    v14[2] = 0;
    return sub_1AF1330D0(v14, v5);
  }

  return result;
}

double sub_1AF1309F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 264) <= 0.0 || *(a1 + 268) <= 0.0)
  {
    v2 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2DD8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *&result = 1065353216;
  return result;
}

float32x2_t sub_1AF130C00(float32x2_t *a1, uint64_t a2)
{
  result = 0;
  if ((a1[536].i8[0] & 1) != 0 && a1[33].f32[0] != 0.0 && a1[33].f32[1] != 0.0)
  {
    v4 = a2;
    v5 = sub_1AF12E2AC(a1, a2);
    v8 = objc_msgSend_currentFrameIndex(v5, v6, v7) + v4;
    v9 = v8 & 7;
    v11 = -v8;
    v10 = v11 < 0;
    v12 = v11 & 7;
    if (v10)
    {
      v13 = v9;
    }

    else
    {
      v13 = -v12;
    }

    return vdiv_f32(a1[v13 + 528], a1[33]);
  }

  return result;
}

uint64_t *sub_1AF130C80(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(a1 + 176);
  if (!result)
  {
    result = *(a1 + 4160);
    if (result)
    {
      v5 = objc_msgSend_commandQueue(result, a2, a3);
      v6 = sub_1AF70B99C(a1, v5, *(a1 + 184));
      result = *(a1 + 176);
      if (result != v6)
      {
        if (result)
        {
          CFRelease(result);
          *(a1 + 176) = 0;
        }

        if (v6)
        {
          result = CFRetain(v6);
        }

        else
        {
          result = 0;
        }

        *(a1 + 176) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1AF130D04(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2AD0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return CFXGPUDeviceGetCounterStorage(*(a1 + 4192));
}

id sub_1AF130D68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF12E2AC(a1, a2);
  objc_msgSend_isolateResourceManager(v2, v3, v4);
  v7 = objc_msgSend_resourceManager(v2, v5, v6);

  return sub_1AFDE7A00(v7);
}

BOOL sub_1AF130DB0(_BOOL8 result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = objc_msgSend_resourceManager(*(result + 4160), a2, a3);

    return sub_1AFDE7A50(v3);
  }

  return result;
}

id *sub_1AF130DE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF12E2AC(a1, a2);
  v5 = objc_msgSend_resourceManager(v2, v3, v4);

  return sub_1AFDE7A7C(v5);
}

uint64_t sub_1AF130E10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 218) > 1u)
  {
    return 0;
  }

  v4 = sub_1AF12F398(a1, a2);
  v5 = *(v4 + 32);
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  if (!v5(a1))
  {
    return 0;
  }

  v7 = *(v6 + 40);

  return v7(a1, a2);
}

uint64_t sub_1AF130EA4(uint64_t a1)
{
  v2 = sub_1AF1D005C(*(a1 + 16), 0);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  if (!sub_1AF166220(v2, v3) && !sub_1AF1676A0(v4, v5))
  {
    return 0;
  }

  v6 = *(a1 + 4160);

  return objc_msgSend_irradianceTextureForMaterialProperty_(v6, v5, v4);
}

uint64_t sub_1AF130F14(uint64_t a1)
{
  v2 = sub_1AF1D005C(*(a1 + 16), 0);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  if (!sub_1AF166220(v2, v3) && !sub_1AF1676A0(v4, v5))
  {
    return 0;
  }

  v6 = *(a1 + 4160);

  return objc_msgSend_radianceTextureForMaterialProperty_(v6, v5, v4);
}

unint64_t sub_1AF130F84(uint64_t a1)
{
  if (byte_1EB654CF0)
  {
    v1 = 0xD0F847B2398DF241;
  }

  else
  {
    v1 = 0;
  }

  if ((byte_1EB654CF0 & 1) == 0)
  {
    byte_1EB654CF0 = 1;
    v1 = 0xD0F847B2398DF241;
  }

  return (a1 + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
}

void *sub_1AF130FD8(void *result)
{
  if (result)
  {
    v1 = result[28];
    if (byte_1EB654CF0)
    {
      v2 = 0xD0F847B2398DF241;
    }

    else
    {
      v2 = 0;
    }

    if ((byte_1EB654CF0 & 1) == 0)
    {
      byte_1EB654CF0 = 1;
      v2 = 0xD0F847B2398DF241;
    }

    return sub_1AF130608(result, (v1 + (v2 << 6) + (v2 >> 2) + 2135587861) ^ v2);
  }

  return result;
}

uint64_t sub_1AF131048(uint64_t a1)
{
  v1 = sub_1AF12F560(a1, @"maxInFlightFrameCount", 3);
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AF1310A0(uint64_t a1)
{
  result = *(a1 + 4208);
  if (!result)
  {
    *(a1 + 4208) = sub_1AF22D4F8();
    v4 = sub_1AF12E2AC(a1, v3);
    v7 = objc_msgSend_resourceManager(v4, v5, v6);
    sub_1AF22D578(*(a1 + 4208), v7);
    v10 = objc_msgSend_resourceManager(v4, v8, v9);
    objc_msgSend_setRemoteResourceProvider_(v10, v11, v7);
    return *(a1 + 4208);
  }

  return result;
}

CFTypeRef sub_1AF131114(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 4216);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 4216) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 4216) = result;
  }

  return result;
}

uint64_t sub_1AF131180(uint64_t a1)
{
  result = *(a1 + 4168);
  if (!result)
  {
    result = sub_1AF20A940();
    *(a1 + 4168) = result;
  }

  return result;
}

void *sub_1AF1311C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 4160);
  v4 = objc_msgSend_reContext(v3, a2, a3);
  objc_msgSend_frameConstantBufferPool(v3, v5, v6);

  return sub_1AFDEB2FC(v4);
}

void *sub_1AF131210(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 4160);
  v4 = objc_msgSend_reContext(v3, a2, a3);
  objc_msgSend_frameConstantBufferPool(v3, v5, v6);

  return sub_1AFDEB410(v4);
}

void *sub_1AF13125C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 4160);
  v4 = objc_msgSend_reContext(v3, a2, a3);
  objc_msgSend_frameConstantBufferPool(v3, v5, v6);

  return sub_1AFDEB530(v4);
}

void *sub_1AF1312A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 4160);
  v4 = objc_msgSend_reContext(v3, a2, a3);
  objc_msgSend_frameConstantBufferPool(v3, v5, v6);

  return sub_1AFDEB644(v4);
}

void *sub_1AF1312F4(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 4160);
  v5 = objc_msgSend_reContext(v4, a2, a3);
  v8 = objc_msgSend_frameConstantBufferPool(v4, v6, v7);

  return sub_1AFDEB738(v5, v8, a2);
}

double sub_1AF131350(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 4160);
  v5 = objc_msgSend_reContext(v4, a2, a3);
  v6 = sub_1AFDEB248(v5);
  v9 = (v6 - 1);
  if (v9 >= 8)
  {
    v10 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2E50(v10, v7, v8, v11, v12, v13, v14, v15);
    }
  }

  v16 = objc_msgSend_reContext(v4, v7, v8);
  v19 = objc_msgSend_frameConstantBufferPool(v4, v17, v18);
  return sub_1AFDEB928(v16, v19, a2, v9);
}

void sub_1AF1313E4(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  os_unfair_lock_unlock((a1 + 32));
}

uint64_t sub_1AF131448()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734700 = result;
  return result;
}

uint64_t sub_1AF131470(uint64_t a1)
{
  if (qword_1ED734708 != -1)
  {
    sub_1AFDD2EC8();
  }

  v2 = sub_1AF0D160C(qword_1ED734700, 0x30uLL);
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9E8];
  *(v2 + 16) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  *(v2 + 24) = CFDictionaryCreateMutable(v3, 0, 0, v4);
  *(v2 + 56) = a1;
  *(v2 + 32) = 0;
  return v2;
}

void sub_1AF131578(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 32));
  if (!a3 && (v10 = sub_1AF0D5194(v8, v9), v8 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2EDC(v10, v9, v11, v12, v13, v14, v15, v16);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194(v8, v9);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD2F54(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  v25 = CFGetTypeID(a3);
  v27 = sub_1AF1B3A08(v25, v26);
  if (v27)
  {
    v25 = sub_1AF1B2A04(v27, v28);
  }

  Value = CFDictionaryGetValue(*(a1 + 16), v25);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    CFDictionarySetValue(*(a1 + 16), v25, Value);
    CFRelease(Value);
  }

  v30 = CFDictionaryGetValue(Value, a3);
  v32 = v30;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v33 = v30 & 0xFFFFFF00;
        v34 = 2049;
      }

      else
      {
        v33 = v30 & 0xFFFFFB00;
        v34 = 1027;
      }
    }

    else
    {
      switch(a2)
      {
        case 7:
          v33 = v30 & 0xFFFFFF00;
          v34 = 2051;
          break;
        case 8:
          v37 = ((v30 & 0xFFFBFF00) + 262145);
          goto LABEL_34;
        case 9:
          v33 = v30 & 0xFFFFFD00;
          v34 = 516;
          break;
        default:
          goto LABEL_35;
      }
    }

LABEL_33:
    v37 = (v33 | v34);
LABEL_34:
    CFDictionarySetValue(Value, a3, v37);
    goto LABEL_35;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v33 = v30 & 0xFFFFFD00;
      v34 = 514;
    }

    else
    {
      v33 = v30 & 0xFFFFFB00;
      v34 = 1025;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    v35 = v30 & 0xFFF7FF00;
    if ((v30 & 0x200) != 0)
    {
      v36 = sub_1AF0D5194(v30, v31);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 134217984;
        v47 = a3;
        _os_log_impl(&dword_1AF0CE000, v36, OS_LOG_TYPE_DEFAULT, "Warning: adding a node that was just removed %p", &v46, 0xCu);
      }
    }

    v37 = (v35 + 524289);
    goto LABEL_34;
  }

  if (a2 != 2)
  {
    goto LABEL_35;
  }

  if (a4)
  {
    if (CFEqual(a4, @"model"))
    {
      v33 = v32 & 0xFFFFEF00;
      v34 = 4097;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kCameraKey"))
    {
      v33 = v32 & 0xFFFFDF00;
      v34 = 8193;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kLightKey"))
    {
      v33 = v32 & 0xFFFFBF00;
      v34 = 16385;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kDeformerStackKey"))
    {
      v33 = v32 & 0xFFFEFF00;
      v34 = 65537;
      goto LABEL_33;
    }
  }

  else
  {
    v38 = sub_1AF0D5194(v30, v31);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2FCC(v38, v39, v40, v41, v42, v43, v44, v45);
    }
  }

LABEL_35:
  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 48) = 1;
    sub_1AF131910(a1);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void sub_1AF131910(uint64_t a1)
{
  if (CFDictionaryGetCount(*(a1 + 16)))
  {
    v2 = objc_alloc_init(CFXEngineNotificationQueueTransientWrapper);
    objc_msgSend_setEngineNotificationQueue_(v2, v3, a1);
    v4 = dispatch_time(0, 1000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF131C28;
    v5[3] = &unk_1E7A79BF8;
    v5[4] = v2;
    v5[5] = a1;
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
  }
}

void sub_1AF1319C8(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  sub_1AF1BE27C(a1, sub_1AF131A40, @"kCFXNotificationEntityAttributeDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  a1[49] = 1;
}

void sub_1AF131A40(int a1, uint64_t a2, CFTypeRef cf1, void *a4, const void *a5)
{
  v8 = CFEqual(cf1, @"kCFXNotificationEntityAttributeDidChange");
  if (v8)
  {
    v10 = sub_1AF1C3FAC(a4, v9);
    v11 = *(a2 + 56);
    if (v10 == v11 && v11 != 0)
    {

      sub_1AF131578(a2, 2, a4, a5);
    }
  }

  else
  {
    v13 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD30BC(v13);
    }
  }
}

void sub_1AF131AF0(_BYTE *result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (result[49] == 1)
  {
    sub_1AF1BE2E4(result, @"kCFXNotificationEntityAttributeDidChange", 0);
  }
}

void sub_1AF131B60(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2F54(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  os_unfair_lock_lock((a1 + 32));
  *(a1 + 16) = vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL);
  os_unfair_lock_unlock((a1 + 32));
  *(a1 + 50) = 0;
  *(a1 + 40) = CACurrentMediaTime();
}

void sub_1AF131BCC(uint64_t a1, const void *a2, void (__cdecl *a3)(const void *, const void *, void *), void *a4)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {

    CFDictionaryApplyFunction(Value, a3, a4);
  }
}

void sub_1AF131C28(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_engineNotificationQueue(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = CACurrentMediaTime() - *(v4 + 40);
    os_unfair_lock_lock((*(a1 + 40) + 32));
    if (v6 >= 1.0)
    {
      *(v5 + 48) = 0;
      v8 = *(v5 + 16);
      *(v5 + 16) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      if (CFDictionaryGetCount(v8) >= 1)
      {
        *(v5 + 50) = 1;
      }

      os_unfair_lock_unlock((*(a1 + 40) + 32));

      CFRelease(v8);
    }

    else
    {
      sub_1AF131910(v5);
      v7 = (*(a1 + 40) + 32);

      os_unfair_lock_unlock(v7);
    }
  }
}

uint64_t sub_1AF131D3C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2A58(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  sub_1AF1BE2E4(a1, @"kCFXNotificationNodeWillDie", 0);
  v12 = *(a1 + 96);
  if (v12)
  {
    sub_1AF131AF0(v12, v11);
    v13 = *(a1 + 96);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 96) = 0;
    }
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 88) = 0;
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 104) = 0;
  }

  v16 = *(a1 + 160);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 160) = 0;
  }

  v17 = *(a1 + 120);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 120) = 0;
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 136) = 0;
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 128) = 0;
  }

  v20 = *(a1 + 144);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 144) = 0;
  }

  v21 = *(a1 + 112);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 112) = 0;
  }

  return pthread_mutex_destroy((a1 + 24));
}

uint64_t sub_1AF131E44()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7346F0 = result;
  return result;
}

uint64_t sub_1AF131E6C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED7346F8 != -1)
  {
    sub_1AFDD3100();
  }

  v2 = sub_1AF0D160C(qword_1ED7346F0, 0xC0uLL);
  v10.__sig = 0;
  *v10.__opaque = 0;
  pthread_mutexattr_init(&v10);
  pthread_mutexattr_settype(&v10, 2);
  pthread_mutex_init((v2 + 24), &v10);
  pthread_mutexattr_destroy(&v10);
  *(v2 + 104) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v3 = sub_1AF146388();
  *(v2 + 160) = v3;
  *(v2 + 16) = a1;
  if (*(v2 + 88))
  {
    v5 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10.__sig) = 0;
      _os_log_impl(&dword_1AF0CE000, v5, OS_LOG_TYPE_DEFAULT, "Warning: Warning _lightNodes not NULL in CFXEnginePipelineSetup", &v10, 2u);
    }

    v6 = *(v2 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(v2 + 88) = 0;
    }
  }

  sub_1AF1BE27C(v2, sub_1AF133354, @"kCFXNotificationNodeWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (!*(v2 + 96))
  {
    v7 = sub_1AF131470(*(v2 + 16));
    *(v2 + 96) = v7;
    sub_1AF1319C8(v7, v8);
  }

  return v2;
}

void sub_1AF131FE4(uint64_t a1, void *a2, void *cf1, uint64_t a4)
{
  if (!cf1)
  {
    v8 = sub_1AF0D5194(a1, a2);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (v9)
    {
      sub_1AFDD3114(v8, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = sub_1AF0D5194(v9, v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3114(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  if (CFEqual(cf1, @"model") || CFEqual(cf1, @"kCameraKey") || CFEqual(cf1, @"kLightKey") || CFEqual(cf1, @"kDeformerStackKey"))
  {
    CFRetain(a2);
    if (CFEqual(cf1, @"model"))
    {
      goto LABEL_22;
    }

    if (sub_1AF16CEA0(a2, cf1))
    {
      if (sub_1AF1B7348(a2, v25))
      {
LABEL_13:
        sub_1AF1337DC(a1, a2, cf1);
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (CFEqual(cf1, @"kDeformerStackKey"))
    {
      v27 = sub_1AF1B7558(a2, v26);
      if ((sub_1AF1B7348(a2, v28) & 1) == 0)
      {
        if (!v27)
        {
          goto LABEL_13;
        }

LABEL_21:
        sub_1AF1335DC(a1, a2, cf1);
        goto LABEL_22;
      }

      if (v27)
      {
        goto LABEL_13;
      }
    }

    else if ((sub_1AF1B7348(a2, v26) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (CFEqual(cf1, @"model") || CFEqual(cf1, @"kLightKey"))
    {
      if (CFEqual(cf1, @"model"))
      {
        v30 = 0;
      }

      else
      {
        v31 = CFEqual(cf1, @"kLightKey");
        if (v31)
        {
          v30 = 2;
        }

        else
        {
          v32 = sub_1AF0D5194(v31, v29);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDD318C();
          }

          v30 = -1;
        }
      }

      v33 = sub_1AF1B8374(a2, v29);
      if (!v33 || ((v33 >> v30) & 1) != 0)
      {
        v35 = *(a4 + 8);
        v36 = sub_1AF1C3FAC(a2, v34);
        if (v36 == sub_1AF12DDCC(v35, v37) && !sub_1AF1BA900(a2, v38))
        {
          sub_1AF13224C(a1, v35, a2);
        }
      }
    }

    CFRelease(a2);
  }
}

void sub_1AF13224C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 228);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = sub_1AF147538(*(a1 + 160), *(a3 + 224), i);
      sub_1AF1336B8(a1, v8);
    }
  }

  v9 = *(a3 + 232);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = 0;
      do
      {
        v12 = *(a3 + 232) + 12 * v11;
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = 0;
          v15 = *(v12 + 12) | (v13 << 32);
          do
          {
            v16 = sub_1AF147538(*(a1 + 160), v15, v14);
            if (v16)
            {
              sub_1AF1336B8(a1, v16);
            }

            ++v14;
          }

          while (v13 != v14);
        }

        ++v11;
      }

      while (v11 != v10);
    }
  }

  sub_1AF147298(a1, a3);
  if ((sub_1AF1B7348(a3, v17) & 1) == 0)
  {
    v19 = sub_1AF1B8374(a3, v18);
    if (v19)
    {

      sub_1AF1338CC(a1, a2, a3, v19);
    }
  }
}

uint64_t sub_1AF132394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1AF146410(*(a1 + 160), a2, a3);
  result = *(a1 + 16);
  if (result)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF132430;
    v7[3] = &unk_1E7A79C18;
    v7[4] = a2;
    v8 = v3;
    return sub_1AF1CEBC8(result, v7);
  }

  return result;
}

void *sub_1AF132430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12EDD8(a2, a2);
  sub_1AF14041C(v4, *(a1 + 32));
  v6 = sub_1AF12EE20(a2, v5);
  v7 = *(a1 + 32);

  return sub_1AF14B424(v6, v7);
}

uint64_t sub_1AF132484(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return sub_1AF1CEBC8(result, &unk_1F24E6DF8);
  }

  return result;
}

uint64_t sub_1AF13249C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12EDD8(a2, a2);
  sub_1AF1400B8(v3);
  v5 = sub_1AF12EE20(a2, v4);

  return sub_1AF14AD64(v5);
}

double sub_1AF1324E0(void *a1, uint64_t a2)
{
  v3 = sub_1AF167054(a2, a2);
  if (v3)
  {
    v7 = objc_msgSend_entityTag(v3, v4, v5);
    v9 = objc_msgSend_entityWithTag_(a1, v8, v7);
    v12 = objc_msgSend_opaqueEntityManager(a1, v10, v11);

    return sub_1AFB24B80(v12, v9);
  }

  return result;
}

void sub_1AF132548(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1CF8AC(a1, a2);
  if (v3)
  {
    v4 = sub_1AF0FB884(v3);
    v6 = sub_1AF1B75A0(a2, v5);
    if (v6)
    {
      v8 = v6;
      v9 = sub_1AF1B1FE0(v6, v7);
      v10 = v9;
      if (v9)
      {
        v11 = 0;
        do
        {
          v12 = sub_1AF1B2030(v8, v11);
          v14 = sub_1AF1A1270(v12, v13);
          if (v14)
          {
            v15 = v14;
            v16 = 0;
            do
            {
              v17 = sub_1AF1656E4(v15, v16, 0);
              if (v17)
              {
                sub_1AF1324E0(v4, v17);
              }

              v18 = v16++;
            }

            while (v18 < 0x11);
          }

          ++v11;
        }

        while (v11 != v10);
      }
    }
  }
}

uint64_t sub_1AF132600(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  result = sub_1AF12DDCC(v2, a2);
  if (result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = sub_1AF1D1198(v5, v6);
      if (result)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = sub_1AF1326C8;
        v7[3] = &unk_1E7A79C58;
        v7[4] = v3;
        v7[5] = v2;
        result = sub_1AF1B94AC(result, v7);
      }

      v6 = (v6 + 1);
    }

    while (v6 != 4);
  }

  return result;
}

uint64_t sub_1AF1326C8(uint64_t a1, _DWORD *a2)
{
  sub_1AF132704(*(a1 + 32), a2);
  sub_1AF132804(*(a1 + 32), *(a1 + 40), a2);
  return 0;
}

void sub_1AF132704(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 228);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = sub_1AF147538(*(a1 + 160), *(a2 + 224), i);
      sub_1AF1336B8(a1, v6);
    }
  }

  v7 = *(a2 + 232);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      v9 = 0;
      do
      {
        v10 = *(a2 + 232) + 12 * v9;
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = 0;
          v13 = *(v10 + 12) | (v11 << 32);
          do
          {
            v14 = sub_1AF147538(*(a1 + 160), v13, v12);
            if (v14)
            {
              sub_1AF1336B8(a1, v14);
            }

            ++v12;
          }

          while (v11 != v12);
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  sub_1AF13375C(a1, a2);

  sub_1AF147298(a1, a2);
}

void sub_1AF132804(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!sub_1AF1BA900(a3, a2))
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      sub_1AF132548(v7, a3);
    }

    if (!a3[57])
    {
      v8 = sub_1AF1B8374(a3, v6);
      if (v8)
      {
        sub_1AF1338CC(a1, a2, a3, v8);

        sub_1AF133520(a1, a3);
      }
    }
  }
}

void sub_1AF1328A0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1AF12DDCC(a1[1], a2);
  if (v3)
  {
    v5 = sub_1AF1CEDE4(v3, v4);
    if (v5)
    {

      CFDictionaryApplyFunction(v5, sub_1AF132904, a1);
    }
  }
}

void sub_1AF132904(_DWORD *result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v5 = sub_1AF1B83E8(result, a2);
    if (v5)
    {
      v7 = v5;
      v10 = a3;
      v9 = *a3;
      v8 = v10[1];
      v11 = sub_1AF12DDCC(v8, v6);
      v13 = sub_1AF1CF8AC(v11, v12);
      v15 = result[57];
      if (v15 && v15 == sub_1AF14EC54(v7, v13, v14))
      {
        v17 = sub_1AF13341C(v9, v16);

        sub_1AF14652C(v17, v8, result, 32);
      }

      else
      {
        sub_1AF132704(v9, result);

        sub_1AF132804(v9, v8, result);
      }
    }
  }
}

void sub_1AF1329E8(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a3;
  v7 = a3[1];
  if (a2 != 1)
  {
    v8 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3200(v8, a2, v9, v10, v11, v12, v13, v14);
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if ((v4 & 0x40000) != 0)
  {
LABEL_4:
    sub_1AF132704(v6, a1);
    sub_1AF132804(v6, v7, a1);
  }

LABEL_5:
  if ((v4 & 0x80000) != 0)
  {
    v15 = sub_1AF1C3FAC(a1, a2);
    if (sub_1AF1BB2C8(a1))
    {
      sub_1AF12EB90(a3[1], 0);
    }

    if (v15 == sub_1AF12DDCC(a3[1], v16))
    {
      sub_1AF132804(v6, v7, a1);
      return;
    }
  }

  if ((v4 & 0x1F000) == 0)
  {
    goto LABEL_15;
  }

  if ((v4 & 0x1000) == 0)
  {
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    sub_1AF131FE4(v6, a1, @"kCameraKey", a3);
    sub_1AF12EB90(a3[1], 0);
    if ((v4 & 0x4000) == 0)
    {
LABEL_13:
      if ((v4 & 0x10000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  sub_1AF131FE4(v6, a1, @"model", a3);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v4 & 0x4000) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  sub_1AF131FE4(v6, a1, @"kLightKey", a3);
  if ((v4 & 0x10000) != 0)
  {
LABEL_14:
    sub_1AF131FE4(v6, a1, @"kDeformerStackKey", a3);
  }

LABEL_15:
  v17 = (v4 >> 7) & 8 | (v4 >> 9) & 4;
  if (v17)
  {
    sub_1AF132B88(v6, a1, v17);
  }
}

uint64_t sub_1AF132B88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 228);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = *(result + 160);
    v8 = *(a2 + 224) | (v3 << 32);
    do
    {
      v9 = sub_1AF147538(v7, v8, v6);
      result = sub_1AF132394(v5, v9, a3);
      ++v6;
    }

    while (v3 != v6);
  }

  return result;
}

void sub_1AF132C00(void *key, uint64_t a2, uint64_t a3)
{
  context[2] = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if ((a2 & 0x200) != 0)
    {
      Value = CFDictionaryGetValue(*(*a3 + 104), key);
      if (Value)
      {
        Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], Value);
        context[0] = a3;
        context[1] = key;
        CFSetApplyFunction(Copy, sub_1AF132CE4, context);
        CFRelease(Copy);
      }
    }
  }

  else
  {
    v7 = sub_1AF0D5194(key, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3278(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

uint64_t sub_1AF132CE4(_BOOL8 a1, uint64_t **a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD32F0(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *a2;
  if (!*a2)
  {
    v12 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3368(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = sub_1AF146110(v3);
  if (v20)
  {
    v22 = v20;
    sub_1AF1B78DC(v20, v21);
    v24 = sub_1AF12DDCC(v11[1], v23);
    if (v24)
    {
      v26 = v24;
      v27 = sub_1AF1D0140(v24, v25);
      sub_1AF144070(v27, v22);
      sub_1AF132548(v26, v22);
    }
  }

  return sub_1AF132394(*v11, v3, 27);
}

void sub_1AF132DA8(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v14 = *a3;
  if (a2 == 3 || (v5 = sub_1AF0D5194(result, a2), !os_log_type_enabled(v5, OS_LOG_TYPE_FAULT)))
  {
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  sub_1AFDD33E0(v5, a2, v6, v7, v8, v9, v10, v11);
  if ((v3 & 0x400) != 0)
  {
LABEL_4:
    v15 = xmmword_1F24E6E18;
    v16 = qword_1F24E6E28;
    *&v17 = v14;
    *(&v17 + 1) = result;
    v12 = sub_1AF1CF7E8(*(v14 + 16), a2);
    sub_1AF1BE1D8(v12, &v15, 0, &v17);
  }

LABEL_5:
  if ((v3 & 0x800) != 0)
  {
    v15 = xmmword_1F24E6E30;
    v16 = qword_1F24E6E40;
    v17 = v14;
    v18 = result;
    v13 = sub_1AF1CF7E8(*(v14 + 16), a2);
    sub_1AF1BE1D8(v13, &v15, 0, &v17);
  }
}

uint64_t sub_1AF132EC8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (sub_1AF1B75A0(a1, a2) == v4)
  {
    sub_1AF132B88(v3, a1, 3);
  }

  return 0;
}

uint64_t sub_1AF132F14(_DWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1AF1B75A0(a1, a2) == v5)
  {
    sub_1AF132704(v3, a1);
    sub_1AF132804(v3, v4, a1);
  }

  return 0;
}

void sub_1AF132F70(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (a2 != 4 && (v15 = *a3, v6 = sub_1AF0D5194(result, a2), v7 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT), v5 = v15, v7))
  {
    sub_1AFDD3458(v6, a2, v8, v9, v10, v11, v12, v13);
    v5 = v15;
    if ((v3 & 0x200) == 0)
    {
      return;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    return;
  }

  v16 = xmmword_1F24E6E48;
  v17 = qword_1F24E6E58;
  v18 = v5;
  v19 = result;
  v14 = sub_1AF1CF7E8(*(v5 + 16), a2);
  sub_1AF1BE1D8(v14, &v16, 0, &v18);
}

uint64_t sub_1AF133050(float32x4_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1AF1B75E8(a1, a2) == v5)
  {
    if (sub_1AF19CBB4(v5, v6) == 5 && sub_1AF19D3B0(v5, v7))
    {
      sub_1AF1B78DC(a1, v8);
    }

    sub_1AF132704(v3, a1);
    sub_1AF132804(v3, v4, a1);
  }

  return 0;
}

uint64_t sub_1AF1330D0(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3368(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *a1;
  v11 = sub_1AF1332F8(*a1, a2);
  sub_1AF131B58(v11);
  pthread_mutex_lock((v10 + 24));
  if (v11)
  {
    v13 = sub_1AF131C20(v11);
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_1AF1D02FC(*(v10 + 16), v12) > 0.0;
  v16 = *(v10 + 168);
  if (v16 != v15)
  {
    *(v10 + 168) = v15;
  }

  v17 = sub_1AF1D12B4(*(v10 + 16), v14);
  if (*(v10 + 169) != v17)
  {
    *(v10 + 169) = v17;
    v22 = sub_1AF1D00F8(*(v10 + 16), v18);
    if (v22)
    {
      sub_1AF1364C4(v22, a1[1], v10 + 172);
    }

    goto LABEL_17;
  }

  v19 = sub_1AF1D00F8(*(v10 + 16), v18);
  if (!v19)
  {
    if (v16 == v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v21 = sub_1AF1364C4(v19, a1[1], v10 + 172);
  if (v16 != v15 || (v21 & 1) != 0)
  {
LABEL_17:
    sub_1AF1475D0(*(v10 + 160), sub_1AF133340, v10);
  }

LABEL_18:
  if (v11)
  {
    sub_1AF131B60(v11, v20);
    if (v13)
    {
      sub_1AF132600(a1, v24);
    }

    else
    {
      v26 = sub_1AF1B846C(v23, v24);
      sub_1AF131BCC(v11, v26, sub_1AF1329E8, a1);
      v29 = sub_1AF1B2A04(v27, v28);
      sub_1AF131BCC(v11, v29, sub_1AF132DA8, a1);
      v32 = sub_1AF1A0AD8(v30, v31);
      sub_1AF131BCC(v11, v32, sub_1AF132C00, a1);
      v35 = sub_1AF19AF4C(v33, v34);
      sub_1AF131BCC(v11, v35, sub_1AF132F70, a1);
      sub_1AF1328A0(a1, v36);
    }

    v37 = sub_1AF1CF878(*(v10 + 16), v25);
    v38 = sub_1AF1D0008(*(v10 + 16), 0);
    if (v38)
    {
      sub_1AF1324E0(v37, v38);
    }

    v39 = sub_1AF1D005C(*(v10 + 16), 0);
    if (v39)
    {
      sub_1AF1324E0(v37, v39);
    }
  }

  return pthread_mutex_unlock((v10 + 24));
}

uint64_t sub_1AF1332F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2A58(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t sub_1AF133354(uint64_t a1, uint64_t a2, __CFString *a3, uint64_t a4)
{
  context[2] = *MEMORY[0x1E69E9840];
  if (@"kCFXNotificationNodeWillDie" != a3)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD34D0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  pthread_mutex_lock((a2 + 24));
  context[0] = a2;
  context[1] = a4;
  v14 = *(a2 + 88);
  if (v14)
  {
    CFDictionaryApplyFunction(v14, sub_1AF133C40, context);
  }

  return pthread_mutex_unlock((a2 + 24));
}

uint64_t sub_1AF13341C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2A58(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 160);
}

void sub_1AF133464(uint64_t a1, _WORD *a2)
{
  if ((a2[40] & 7) != 3)
  {
    v4 = sub_1AF146138(a2);
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(*(a1 + 104), v4);
      if (!Value)
      {
        Value = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        CFDictionarySetValue(*(a1 + 104), v5, Value);
        CFRelease(Value);
      }

      CFSetAddValue(Value, a2);
    }
  }
}

uint64_t sub_1AF133520(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (sub_1AF1B75E8(a2, a2))
  {
    sub_1AF1335DC(a1, a2, @"kLightKey");
  }

  if (sub_1AF1BB260(a2, v11))
  {
    sub_1AF1335DC(a1, a2, @"kCameraKey");
  }

  result = sub_1AF1B7558(a2, v12);
  if (result)
  {
    return sub_1AF1335DC(a1, a2, @"kDeformerStackKey");
  }

  return result;
}

BOOL sub_1AF1335DC(_BOOL8 a1, const void *a2, void *key)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2A58(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDD137C(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!key)
  {
    v20 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  v28 = sub_1AF133AB8(v5, key, 1, 0);
  v29 = CFSetContainsValue(v28, a2);
  if (!v29)
  {
    CFSetAddValue(v28, a2);
  }

  return v29 == 0;
}

void sub_1AF1336B8(uint64_t a1, _WORD *a2)
{
  if (!a2)
  {
    v4 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3548(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((a2[40] & 7) != 3)
  {
    v12 = sub_1AF146138(a2);
    if (v12)
    {
      v13 = v12;
      Value = CFDictionaryGetValue(*(a1 + 104), v12);
      if (Value)
      {
        v15 = Value;
        CFSetRemoveValue(Value, a2);
        if (!CFSetGetCount(v15))
        {
          CFDictionaryRemoveValue(*(a1 + 104), v13);
        }
      }
    }
  }
}

uint64_t sub_1AF13375C(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF1337DC(a1, a2, @"kCameraKey");
  return sub_1AF1337DC(a1, a2, @"kDeformerStackKey");
}

uint64_t sub_1AF1337DC(_BOOL8 a1, const void *a2, void *key)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2A58(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDD137C(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!key)
  {
    v20 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  result = sub_1AF133AB8(v5, key, 0, 0);
  if (result)
  {
    v29 = result;
    if (CFSetGetCount(result) < 1)
    {
      return 0;
    }

    else
    {
      result = CFSetContainsValue(v29, a2);
      if (result)
      {
        CFSetRemoveValue(v29, a2);
        return 1;
      }
    }
  }

  return result;
}

void sub_1AF1338CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_1AF146764(a1, a2, a3, a4);
  if (v6 != 0xFFFFFFFF)
  {
    v8 = v6;
    v9 = HIDWORD(v6);
    if (HIDWORD(v6))
    {
      v18 = 0;
      *(a3 + 224) = v6;
      do
      {
        v19 = sub_1AF147538(*(a1 + 160), *(a3 + 224), v18);
        sub_1AF133464(a1, v19);
        ++v18;
      }

      while (v9 != v18);
    }

    else
    {
      v10 = sub_1AF0D5194(v6, v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD35C0(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      *(a3 + 224) = v8;
    }

    if (sub_1AF1B7A5C(a3))
    {
      v21 = sub_1AF1B75A0(a3, v20);
      if (v21)
      {
        v23 = sub_1AF1B31B0(v21, v22);
        Count = CFArrayGetCount(v23);
        if (Count >= 1)
        {
          v25 = Count;
          for (i = 0; i != v25; ++i)
          {
            v27 = *(a3 + 232) + 12 * i;
            v28 = *(v27 + 16);
            if (v28)
            {
              v29 = 0;
              v30 = *(v27 + 12) | (v28 << 32);
              do
              {
                v31 = sub_1AF147538(*(a1 + 160), v30, v29);
                if (v31)
                {
                  sub_1AF133464(a1, v31);
                }

                ++v29;
              }

              while (v28 != v29);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AF133A10(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  sub_1AF132704(a1, a2);

  return pthread_mutex_unlock((a1 + 24));
}

const void *sub_1AF133A5C(uint64_t a1, void *a2, int a3)
{
  pthread_mutex_lock((a1 + 24));
  v6 = sub_1AF133AB8(a1, a2, a3, 1);
  pthread_mutex_unlock((a1 + 24));
  return v6;
}

const void *sub_1AF133AB8(uint64_t a1, void *key, int a3, int a4)
{
  Mutable = *(a1 + 88);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 88) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (Value)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3 == 0;
  }

  if (!v10)
  {
    Value = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    CFDictionarySetValue(*(a1 + 88), key, Value);
    CFRelease(Value);
  }

  if (Value)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && CFEqual(key, @"kDeformerStackKey"))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF134650;
    v13[3] = &unk_1E7A79CA8;
    v13[4] = &v14;
    v13[5] = Value;
    sub_1AF28A5A0(Value, v13);
    if (v15[3])
    {
      Value = v15[3];
    }

    _Block_object_dispose(&v14, 8);
  }

  return Value;
}

void sub_1AF133C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF133C50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2A58(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  pthread_mutex_lock((a1 + 24));
  v12 = *(a1 + 104);
  if (v12)
  {
    CFDictionaryRemoveAllValues(v12);
  }

  sub_1AF1473DC(*(a1 + 160), v11);
  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 88) = 0;
  }

  return pthread_mutex_unlock((a1 + 24));
}

void sub_1AF133CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const char **a5, uint64_t *a6)
{
  v12 = sub_1AF12E2AC(a3, a2);
  if (v12)
  {
    v14 = v12;
    v17 = sub_1AF12EDD8(a3, v13);
    if (a2)
    {
      CurrentPassMaterial = sub_1AF146138(a1);
    }

    else
    {
      if ((*(a1 + 80) & 0x400) != 0 || !objc_msgSend_getCurrentPassMaterial(v14, v15, v16))
      {
        v19 = *(a1 + 32);
        goto LABEL_14;
      }

      CurrentPassMaterial = objc_msgSend_getCurrentPassMaterial(v14, v15, v16);
    }

    v19 = CurrentPassMaterial;
LABEL_14:
    CurrentPassHash = objc_msgSend_getCurrentPassHash(v14, v15, v16);
    v25 = sub_1AF1402E0(v17, a1, a2, CurrentPassHash);
    if (v19)
    {
      v27 = v25;
      if (sub_1AF1A1828(v19, v26))
      {
        v23 = *(a1 + 40);
        if (!v23)
        {
          v23 = sub_1AF1A1828(v19, v28);
          if (!v23)
          {
            return;
          }
        }

LABEL_26:
        v27 = 0;
        if (!a4)
        {
LABEL_28:
          if (a6)
          {
            *a6 = v23;
          }

          if (a5)
          {
            *a5 = v27;
          }

          return;
        }

LABEL_27:
        *a4 = v19;
        goto LABEL_28;
      }

      if (!sub_1AF1A1270(v19, v28))
      {
        v30 = sub_1AF0D5194(0, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_35;
        }
      }

      goto LABEL_36;
    }

    v23 = *(a1 + 40);
    if (!v23)
    {
      return;
    }

LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  v20 = sub_1AF146138(a1);
  if (v20)
  {
    v19 = v20;
    if (!sub_1AF1A1828(v20, v21))
    {
      v38 = sub_1AF12EDD8(a3, v22);
      v39 = sub_1AF12FAD0(a3);
      v27 = sub_1AF1402E0(v38, a1, a2, v39);
      if (!sub_1AF1A1270(v19, v40))
      {
        v30 = sub_1AF0D5194(0, v41);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
LABEL_35:
          sub_1AFDD3638(v30, v31, v32, v33, v34, v35, v36, v37);
        }
      }

LABEL_36:
      v23 = sub_1AF130160(a3, v27);
      if (!a4)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      goto LABEL_26;
    }

    v23 = sub_1AF1A1828(v19, v22);
    if (v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v23 = *(a1 + 40);
    if (v23)
    {
      goto LABEL_25;
    }
  }

  v42 = sub_1AF0D5194(v23, v21);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD36B0();
  }
}