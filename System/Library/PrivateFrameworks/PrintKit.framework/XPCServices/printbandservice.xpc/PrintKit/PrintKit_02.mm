uint64_t Madusa::SubBytePixelDirectionAndOffset::Reset(uint64_t result, int a2, int a3, unsigned int a4)
{
  *result = a3;
  *(result + 4) = 1;
  *(result + 8) = a4;
  *(result + 12) = 1;
  if ((a2 - 1) <= 6)
  {
    if (a4 <= 7 && !(a4 % a2))
    {
      return result;
    }

LABEL_7:
    *(result + 12) = 0;
    *(result + 4) = 0;
    return result;
  }

  if (a2 == -1 || a4)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t Madusa::SubBytePixelDirectionAndOffset::SubBytePixelDirectionAndOffset(uint64_t this)
{
  *this = 1;
  *(this + 4) = 1;
  *(this + 8) = 0;
  *(this + 12) = 1;
  return this;
}

uint64_t Madusa::SubBytePixelDirectionAndOffset::IsValid(Madusa::SubBytePixelDirectionAndOffset *this)
{
  if (*(this + 12) == 1)
  {
    return *(this + 4) & 1;
  }

  else
  {
    return 0;
  }
}

void *Madusa::FilterFMag::FilterFMag(void *a1, uint64_t a2)
{
  *a1 = a2;
  bzero(a1 + 1, 0x220uLL);
  return a1;
}

float32_t Madusa::FilterFMag::GetOverlapRowMinMax(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 + (a3 << 9);
  v4 = (v3 + 66584);
  v5 = *(a1 + 528);
  v6 = *(a1 + 544);
  v7 = v5 + 128;
  v8 = v6 + 128;
  v9 = v3 + 68632;
  v11 = v5 < v3 + 68632 && v7 > v4;
  v13 = v6 < v9 && v8 > v4;
  v14 = v6 >= v7 || v5 >= v8;
  if (!v14 || v11 || v13)
  {
    for (i = 0; i != 128; i += 4)
    {
      v22 = v4[1];
      v23 = v4[2];
      v24 = v4[3];
      v25 = v4[128];
      v26 = v4[129];
      v27 = v4[130];
      v28 = v4[131];
      v29 = v4[256];
      v30 = v4[257];
      v31 = v4[258];
      v32 = v4[259];
      v33 = fmaxf(fmaxf(fmaxf(*v4, fmaxf(v22, fmaxf(v23, v24))), fmaxf(v25, fmaxf(v26, fmaxf(v27, v28)))), fmaxf(v29, fmaxf(v30, fmaxf(v31, v32))));
      v34 = v4[384];
      v35 = v4[385];
      v36 = v4[386];
      v37 = v4[387];
      *(v5 + i) = fminf(fminf(fminf(fminf(*v4, fminf(v22, fminf(v23, v24))), fminf(v25, fminf(v26, fminf(v27, v28)))), fminf(v29, fminf(v30, fminf(v31, v32)))), fminf(v34, fminf(v35, fminf(v36, v37))));
      v20.f32[0] = fmaxf(v33, fmaxf(v34, fmaxf(v35, fmaxf(v36, v37))));
      *(v6 + i) = v20.i32[0];
      v4 += 4;
    }
  }

  else
  {
    v15 = 0;
    v16 = v4;
    do
    {
      v39 = vld4q_f32(v16);
      v16 += 16;
      v17 = v4 + 128;
      v40 = vld4q_f32(v17);
      v18 = v4 + 256;
      v41 = vld4q_f32(v18);
      v19 = v4 + 384;
      v42 = vld4q_f32(v19);
      *(v5 + v15) = vminnmq_f32(vminnmq_f32(vminnmq_f32(vminnmq_f32(v39.val[0], vminnmq_f32(v39.val[1], vminnmq_f32(v39.val[2], v39.val[3]))), vminnmq_f32(v40.val[0], vminnmq_f32(v40.val[1], vminnmq_f32(v40.val[2], v40.val[3])))), vminnmq_f32(v41.val[0], vminnmq_f32(v41.val[1], vminnmq_f32(v41.val[2], v41.val[3])))), vminnmq_f32(v42.val[0], vminnmq_f32(v42.val[1], vminnmq_f32(v42.val[2], v42.val[3]))));
      v20 = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v39.val[0], vmaxnmq_f32(v39.val[1], vmaxnmq_f32(v39.val[2], v39.val[3]))), vmaxnmq_f32(v40.val[0], vmaxnmq_f32(v40.val[1], vmaxnmq_f32(v40.val[2], v40.val[3])))), vmaxnmq_f32(v41.val[0], vmaxnmq_f32(v41.val[1], vmaxnmq_f32(v41.val[2], v41.val[3])))), vmaxnmq_f32(v42.val[0], vmaxnmq_f32(v42.val[1], vmaxnmq_f32(v42.val[2], v42.val[3]))));
      *(v6 + v15) = v20;
      v15 += 16;
      v4 = v16;
    }

    while (v15 != 128);
  }

  return v20.f32[0];
}

void Madusa::FilterFMag::Execute(float *a1, uint64_t a2)
{
  v4 = (a1 + 98);
  bzero((**a1 + 8), 0x8200uLL);
  *(a1 + 65) = a1 + 2;
  *(a1 + 66) = a1 + 34;
  *(a1 + 67) = a1 + 66;
  *(a1 + 68) = v4;
  v5 = a2 + 66584;
  v6 = (a2 + 66584);
  if ((a1 + 34) >= a2 + 68632 || v5 >= (a1 + 130))
  {
    v25 = 32;
    v26 = v4;
    v27 = (a2 + 66584);
    do
    {
      v57 = vld4q_f32(v27);
      v27 += 16;
      v28 = v6 + 128;
      v58 = vld4q_f32(v28);
      v29 = v6 + 256;
      v59 = vld4q_f32(v29);
      v30 = v6 + 384;
      v60 = vld4q_f32(v30);
      v26[-16] = vminnmq_f32(vminnmq_f32(vminnmq_f32(vminnmq_f32(v57.val[0], vminnmq_f32(v57.val[1], vminnmq_f32(v57.val[2], v57.val[3]))), vminnmq_f32(v58.val[0], vminnmq_f32(v58.val[1], vminnmq_f32(v58.val[2], v58.val[3])))), vminnmq_f32(v59.val[0], vminnmq_f32(v59.val[1], vminnmq_f32(v59.val[2], v59.val[3])))), vminnmq_f32(v60.val[0], vminnmq_f32(v60.val[1], vminnmq_f32(v60.val[2], v60.val[3]))));
      *v26++ = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v57.val[0], vmaxnmq_f32(v57.val[1], vmaxnmq_f32(v57.val[2], v57.val[3]))), vmaxnmq_f32(v58.val[0], vmaxnmq_f32(v58.val[1], vmaxnmq_f32(v58.val[2], v58.val[3])))), vmaxnmq_f32(v59.val[0], vmaxnmq_f32(v59.val[1], vmaxnmq_f32(v59.val[2], v59.val[3])))), vmaxnmq_f32(v60.val[0], vmaxnmq_f32(v60.val[1], vmaxnmq_f32(v60.val[2], v60.val[3]))));
      v6 = v27;
      v25 -= 4;
    }

    while (v25);
  }

  else
  {
    v7 = 32;
    v8 = v4;
    do
    {
      v9 = v6[1];
      v10 = v6[2];
      v11 = v6[3];
      v12 = v6[128];
      v13 = v6[129];
      v14 = v6[130];
      v15 = v6[131];
      v16 = v6[256];
      v17 = v6[257];
      v18 = v6[258];
      v19 = v6[259];
      v20 = v6[384];
      v21 = v6[385];
      v22 = v6[386];
      v23 = v6[387];
      v24 = fmaxf(fmaxf(fmaxf(fmaxf(*v6, fmaxf(v9, fmaxf(v10, v11))), fmaxf(v12, fmaxf(v13, fmaxf(v14, v15)))), fmaxf(v16, fmaxf(v17, fmaxf(v18, v19)))), fmaxf(v20, fmaxf(v21, fmaxf(v22, v23))));
      *(v8 - 64) = fminf(fminf(fminf(fminf(*v6, fminf(v9, fminf(v10, v11))), fminf(v12, fminf(v13, fminf(v14, v15)))), fminf(v16, fminf(v17, fminf(v18, v19)))), fminf(v20, fminf(v21, fminf(v22, v23))));
      *v8++ = v24;
      v6 += 4;
      --v7;
    }

    while (v7);
  }

  v31 = 0;
  do
  {
    v32 = v31;
    v33 = vextq_s8(v4[9], v4[9], 8uLL);
    v4[8] = vextq_s8(v4[8], v4[8], 8uLL);
    v4[9] = v33;
    v31 += 4;
    Madusa::FilterFMag::GetOverlapRowMinMax(a1, a2, v31);
    v34 = fminf(a1[2], a1[34]);
    v35 = fmaxf(a1[66], a1[98]);
    v36 = **a1;
    v37 = v36 + (v32 << 9) + 24;
    v38 = (v32 << 9) + v5 + 16;
    for (i = 1; i != 32; ++i)
    {
      v40 = v35;
      v41 = v34;
      v34 = fminf(a1[i + 2], a1[i + 34]);
      v35 = fmaxf(a1[i + 66], *&v4->i32[i]);
      v42 = fminf(v41, v34);
      v43 = fmaxf(v40, v35);
      v44 = 0.0;
      if (v43 > v42)
      {
        v44 = 1.0 / (v43 - v42);
      }

      v45 = 8;
      v46 = v38;
      v47 = v37;
      do
      {
        v48 = *(v47 - 3);
        *(v47 - 4) = *(v47 - 4) + ((*(v46 - 4) - v42) * v44);
        *(v47 - 3) = v48 + ((*(v46 - 3) - v42) * v44);
        v49 = *(v47 - 1);
        *(v47 - 2) = *(v47 - 2) + ((*(v46 - 2) - v42) * v44);
        *(v47 - 1) = v49 + ((*(v46 - 1) - v42) * v44);
        v50 = v47[1];
        *v47 = *v47 + ((*v46 - v42) * v44);
        v47[1] = v50 + ((v46[1] - v42) * v44);
        v51 = v47[3];
        v47[2] = v47[2] + ((v46[2] - v42) * v44);
        v47[3] = v51 + ((v46[3] - v42) * v44);
        v47 += 128;
        v46 += 128;
        --v45;
      }

      while (v45);
      v37 += 16;
      v38 += 16;
    }
  }

  while (v32 < 0x36);
  v52 = (v36 + 504);
  v53 = 65;
  do
  {
    *(v52 - 124) = *(v52 - 124) * 1.4142;
    v52[3] = v52[3] * 1.4142;
    *(v52 - 123) = *(v52 - 123) * 1.4142;
    v52[2] = v52[2] * 1.4142;
    *(v52 - 122) = *(v52 - 122) * 1.4142;
    v52[1] = v52[1] * 1.4142;
    *(v52 - 121) = *(v52 - 121) * 1.4142;
    *v52 = *v52 * 1.4142;
    v52 += 128;
    --v53;
  }

  while (v53);
  v54 = 0;
  v55 = v36 + 31752;
  do
  {
    v56 = (v36 + v54);
    v56[2] = *(v36 + v54 + 8) * 1.4142;
    *(v55 + v54 + 512) = *(v55 + v54 + 512) * 1.4142;
    v56[130] = *(v36 + v54 + 520) * 1.4142;
    *(v55 + v54) = *(v55 + v54) * 1.4142;
    v56[258] = *(v36 + v54 + 1032) * 1.4142;
    *(v55 + v54 - 512) = *(v55 + v54 - 512) * 1.4142;
    v56[386] = *(v36 + v54 + 1544) * 1.4142;
    *(v55 + v54 - 1024) = *(v55 + v54 - 1024) * 1.4142;
    v54 += 4;
  }

  while (v54 != 512);
}

void Madusa::FilterFMag::_Execute(float *a1, uint64_t a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006A400));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A410, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006A410)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::FilterFMag::Execute(a1, a2);
}

void Madusa::FilterFMag::_Execute_Alt(uint64_t a1)
{
  v2.i16[3] = v1[3];
  v2.i16[2] = *v1 | 0xFFE0;
  v2.i16[1] = v2.u8[6];
  v2.i16[0] = v2.i16[2];
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v4 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v2), v3), xmmword_10006A420));
  v5.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A430, v4)).u32[0];
  v5.i32[1] = vmovn_s32(vcgtq_f32(v4, xmmword_10006A430)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v5, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::FilterFMag::Execute_Alt(a1);
}

float Madusa::RefineCandidates::TransformSinglePoint(float *a1, uint64_t a2, float a3, float a4)
{
  v4 = (*a1 * a3) + (a1[1] * a4);
  v5 = (a1[2] * a3) + (a1[3] * a4);
  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  if (v4 < 0.0)
  {
    v5 = -v5;
  }

  v6 = fabsf(v4);
  *(a2 + 24) = v4 < 0.0;
  v7 = fminf(fmaxf(v5, -999.0), 999.0);
  v8 = (v7 + 1000.0) - 1000;
  *a2 = v8;
  *(a2 + 4) = v6;
  result = v7 - v8;
  *(a2 + 8) = result;
  *(a2 + 12) = v6 - truncf(v6);
  return result;
}

void Madusa::RefineCandidates::Execute(uint64_t a1, __int128 *a2, void *a3, __int128 *a4, int *a5)
{
  *a5 = 0;
  v15 = *a2;
  sub_10001CBEC(a1, &v15, a3, a4, a5);
  if (&v15 != a4)
  {
    v15 = *a4;
  }

  sub_10001CFFC(a1, &v15, a3, a4, a5);
  if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5[3] == 212 || QuickCodec::mask != -70947757)
  {
LABEL_12:
    v11 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v12 = &unk_10003FCF4;
    v13 = -2;
    v14 = -1;
    do
    {
      qword_100074968[v14 + 1 + ((*(v12 - 1) ^ v11) / 0x9D28AF)] = qword_100074968[v14 + ((*v12 ^ v11) / 0x9D28AF)];
      v12 += 2;
      v13 += 2;
      v14 -= 2;
    }

    while (v13 < 0x20);
  }
}

float sub_10001CBEC(uint64_t a1, __int128 *a2, void *a3, __int128 *a4, int *a5)
{
  v9 = 5 * *a5;
  if (a4 != a2)
  {
    *a4 = *a2;
  }

  v10 = 2 * v9;
  v11 = sub_10001D85C(a1, a3, a4);
  v32 = *a4;
  v12 = sub_10001D9B8(a1, a3, &v32);
  if (&v32 != a4)
  {
    if (v12 <= v11)
    {
      v13 = sub_10001D9B8(a1, a3, &v32);
      if (v13 <= v11)
      {
LABEL_6:
        v14 = sub_10001D9B8(a1, a3, &v32);
        if (v14 <= v11)
        {
          return v11;
        }

LABEL_10:
        v15 = v14;
        *a4 = v32;
        *a5 = v10 + 3;
        v16 = sub_10001D9B8(a1, a3, &v32);
        if (v16 <= v15)
        {
          return v15;
        }

        v11 = v16;
        *a4 = v32;
        *a5 = v10 + 4;
        v17 = sub_10001D9B8(a1, a3, &v32);
        if (v17 > v11)
        {
          v15 = v17;
          *a4 = v32;
          *a5 = v10 + 5;
          v18 = sub_10001D9B8(a1, a3, &v32);
          if (v18 <= v15)
          {
            return v15;
          }

          v11 = v18;
          *a4 = v32;
          *a5 = v10 + 6;
          v19 = sub_10001D9B8(a1, a3, &v32);
          if (v19 > v11)
          {
            v15 = v19;
            *a4 = v32;
            *a5 = v10 + 7;
            v20 = sub_10001D9B8(a1, a3, &v32);
            if (v20 <= v15)
            {
              return v15;
            }

            v11 = v20;
            *a4 = v32;
            *a5 = v10 + 8;
            v21 = sub_10001D9B8(a1, a3, &v32);
            if (v21 > v11)
            {
              v15 = v21;
              *a4 = v32;
              *a5 = v10 + 9;
              v22 = sub_10001D9B8(a1, a3, &v32);
              if (v22 > v15)
              {
                v11 = v22;
                *a4 = v32;
LABEL_31:
                *a5 = v10 + 10;
                return v11;
              }

              return v15;
            }
          }
        }

        return v11;
      }
    }

    else
    {
      *a4 = v32;
      *a5 = v10 | 1;
      v11 = v12;
      v13 = sub_10001D9B8(a1, a3, &v32);
      if (v13 <= v11)
      {
        goto LABEL_6;
      }
    }

    *a4 = v32;
    *a5 = v10 + 2;
    v11 = v13;
    v14 = sub_10001D9B8(a1, a3, &v32);
    if (v14 <= v11)
    {
      return v11;
    }

    goto LABEL_10;
  }

  if (v12 > v11)
  {
    *a5 = v10 | 1;
    v11 = v12;
    v23 = sub_10001D9B8(a1, a3, &v32);
    if (v23 <= v11)
    {
      goto LABEL_20;
    }

LABEL_23:
    *a5 = v10 + 2;
    v11 = v23;
    v24 = sub_10001D9B8(a1, a3, &v32);
    if (v24 <= v11)
    {
      return v11;
    }

    goto LABEL_24;
  }

  v23 = sub_10001D9B8(a1, a3, &v32);
  if (v23 > v11)
  {
    goto LABEL_23;
  }

LABEL_20:
  v24 = sub_10001D9B8(a1, a3, &v32);
  if (v24 <= v11)
  {
    return v11;
  }

LABEL_24:
  v15 = v24;
  *a5 = v10 + 3;
  v25 = sub_10001D9B8(a1, a3, &v32);
  if (v25 <= v15)
  {
    return v15;
  }

  v11 = v25;
  *a5 = v10 + 4;
  v26 = sub_10001D9B8(a1, a3, &v32);
  if (v26 > v11)
  {
    v15 = v26;
    *a5 = v10 + 5;
    v27 = sub_10001D9B8(a1, a3, &v32);
    if (v27 <= v15)
    {
      return v15;
    }

    v11 = v27;
    *a5 = v10 + 6;
    v28 = sub_10001D9B8(a1, a3, &v32);
    if (v28 > v11)
    {
      v15 = v28;
      *a5 = v10 + 7;
      v29 = sub_10001D9B8(a1, a3, &v32);
      if (v29 <= v15)
      {
        return v15;
      }

      v11 = v29;
      *a5 = v10 + 8;
      v30 = sub_10001D9B8(a1, a3, &v32);
      if (v30 > v11)
      {
        v15 = v30;
        *a5 = v10 + 9;
        v11 = sub_10001D9B8(a1, a3, &v32);
        if (v11 > v15)
        {
          goto LABEL_31;
        }

        return v15;
      }
    }
  }

  return v11;
}

float sub_10001CFFC(uint64_t a1, __int128 *a2, void *a3, __int128 *a4, int *a5)
{
  v9 = 5 * *a5;
  if (a4 != a2)
  {
    *a4 = *a2;
  }

  v10 = 2 * v9;
  v11 = sub_10001DAD0(a1, a3, a4);
  v32 = *a4;
  v12 = sub_10001DC2C(a1, a3, &v32);
  if (&v32 != a4)
  {
    if (v12 <= v11)
    {
      v13 = sub_10001DC2C(a1, a3, &v32);
      if (v13 <= v11)
      {
LABEL_6:
        v14 = sub_10001DC2C(a1, a3, &v32);
        if (v14 <= v11)
        {
          return v11;
        }

LABEL_10:
        v15 = v14;
        *a4 = v32;
        *a5 = v10 + 3;
        v16 = sub_10001DC2C(a1, a3, &v32);
        if (v16 <= v15)
        {
          return v15;
        }

        v11 = v16;
        *a4 = v32;
        *a5 = v10 + 4;
        v17 = sub_10001DC2C(a1, a3, &v32);
        if (v17 > v11)
        {
          v15 = v17;
          *a4 = v32;
          *a5 = v10 + 5;
          v18 = sub_10001DC2C(a1, a3, &v32);
          if (v18 <= v15)
          {
            return v15;
          }

          v11 = v18;
          *a4 = v32;
          *a5 = v10 + 6;
          v19 = sub_10001DC2C(a1, a3, &v32);
          if (v19 > v11)
          {
            v15 = v19;
            *a4 = v32;
            *a5 = v10 + 7;
            v20 = sub_10001DC2C(a1, a3, &v32);
            if (v20 <= v15)
            {
              return v15;
            }

            v11 = v20;
            *a4 = v32;
            *a5 = v10 + 8;
            v21 = sub_10001DC2C(a1, a3, &v32);
            if (v21 > v11)
            {
              v15 = v21;
              *a4 = v32;
              *a5 = v10 + 9;
              v22 = sub_10001DC2C(a1, a3, &v32);
              if (v22 > v15)
              {
                v11 = v22;
                *a4 = v32;
LABEL_31:
                *a5 = v10 + 10;
                return v11;
              }

              return v15;
            }
          }
        }

        return v11;
      }
    }

    else
    {
      *a4 = v32;
      *a5 = v10 | 1;
      v11 = v12;
      v13 = sub_10001DC2C(a1, a3, &v32);
      if (v13 <= v11)
      {
        goto LABEL_6;
      }
    }

    *a4 = v32;
    *a5 = v10 + 2;
    v11 = v13;
    v14 = sub_10001DC2C(a1, a3, &v32);
    if (v14 <= v11)
    {
      return v11;
    }

    goto LABEL_10;
  }

  if (v12 > v11)
  {
    *a5 = v10 | 1;
    v11 = v12;
    v23 = sub_10001DC2C(a1, a3, &v32);
    if (v23 <= v11)
    {
      goto LABEL_20;
    }

LABEL_23:
    *a5 = v10 + 2;
    v11 = v23;
    v24 = sub_10001DC2C(a1, a3, &v32);
    if (v24 <= v11)
    {
      return v11;
    }

    goto LABEL_24;
  }

  v23 = sub_10001DC2C(a1, a3, &v32);
  if (v23 > v11)
  {
    goto LABEL_23;
  }

LABEL_20:
  v24 = sub_10001DC2C(a1, a3, &v32);
  if (v24 <= v11)
  {
    return v11;
  }

LABEL_24:
  v15 = v24;
  *a5 = v10 + 3;
  v25 = sub_10001DC2C(a1, a3, &v32);
  if (v25 <= v15)
  {
    return v15;
  }

  v11 = v25;
  *a5 = v10 + 4;
  v26 = sub_10001DC2C(a1, a3, &v32);
  if (v26 > v11)
  {
    v15 = v26;
    *a5 = v10 + 5;
    v27 = sub_10001DC2C(a1, a3, &v32);
    if (v27 <= v15)
    {
      return v15;
    }

    v11 = v27;
    *a5 = v10 + 6;
    v28 = sub_10001DC2C(a1, a3, &v32);
    if (v28 > v11)
    {
      v15 = v28;
      *a5 = v10 + 7;
      v29 = sub_10001DC2C(a1, a3, &v32);
      if (v29 <= v15)
      {
        return v15;
      }

      v11 = v29;
      *a5 = v10 + 8;
      v30 = sub_10001DC2C(a1, a3, &v32);
      if (v30 > v11)
      {
        v15 = v30;
        *a5 = v10 + 9;
        v11 = sub_10001DC2C(a1, a3, &v32);
        if (v11 > v15)
        {
          goto LABEL_31;
        }

        return v15;
      }
    }
  }

  return v11;
}

void Madusa::RefineCandidates::_Execute(uint64_t a1, __int128 *a2, void *a3, __int128 *a4, int *a5)
{
  v6 = 0;
  v7 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v8 = 8968641;
  }

  else
  {
    v8 = 167620;
  }

  v9 = 1;
  v10 = 1235656;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v13 = v9;
        if (v10 <= 1235726)
        {
          break;
        }

        if (v10 == 1235727)
        {
          if ((*v6 & 0x1F) != 0 || v6[2] > 0x3Fu || (v9 = 1, v10 = 167620, v6[3] != ((QuickCodec::mask ^ v7) / 0x27228F)))
          {
            v10 = 167674;
            v9 = v13;
          }
        }

        else if (v10 == 1403259)
        {
          v6 = v5;
          v10 = 1235673;
        }

        else
        {
          v14 = v10 == 8968641;
          v10 = 1235727;
          if (v14)
          {
            v7 = -609357249;
          }
        }
      }

      if (v10 <= 1235655)
      {
        break;
      }

      v11 = (QuickCodec::mask != -70947757) | v9;
      if (v10 == 1235673)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      if (v10 == 1235673)
      {
        LODWORD(v13) = v11;
      }

      v14 = v10 == 1235656;
      if (v10 == 1235656)
      {
        v10 = 167620;
      }

      else
      {
        v10 = v12;
      }

      if (v14)
      {
        v9 = 0;
      }

      else
      {
        v9 = v13;
      }
    }

    if (v10 != 167620)
    {
      break;
    }

    v10 = 167674;
    if ((v9 & 1) == 0)
    {
      v10 = 1403259;
    }
  }

  if (v9)
  {
    ++QuickCodec::mask;
  }

  Madusa::RefineCandidates::Execute(a1, a2, a3, a4, a5);
}

float Madusa::RefineCandidates::_Execute_Alt(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 8588659;
  }

  else
  {
    v7 = 7301804;
  }

  v8 = 1;
  v9 = 1015293;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 7301803)
        {
          break;
        }

        if (v9 == 1015293)
        {
          v8 = 0;
          v9 = 7301804;
        }

        else if (v9 == 1015310)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 7301804, v5[3] != ((QuickCodec::mask ^ v6) / 0x9CFF3F)))
        {
          v9 = 7301858;
          v8 = v10;
        }
      }

      if (v9 <= 8317079)
      {
        break;
      }

      if (v9 == 8317080)
      {
        v5 = v4;
        v9 = 1015310;
      }

      else
      {
        v11 = v9 == 8588659;
        v9 = 1015364;
        if (v11)
        {
          v6 = 2043022463;
        }
      }
    }

    if (v9 != 7301804)
    {
      break;
    }

    v9 = 7301858;
    if ((v8 & 1) == 0)
    {
      v9 = 8317080;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  Madusa::RefineCandidates::Execute_Alt(1015310, a2, 1015364, a4);
  return 6.2832;
}

float *Madusa::RefineCandidates::TransformRefSignalCoords(float *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = 56;
  v7 = Madusa::AffineTransform::mGridPointU;
  v8 = Madusa::AffineTransform::mGridPointV;
  do
  {
    v9 = *v8++;
    v10 = v9;
    v11 = *v7++;
    v12 = (v2 * v10) + (v3 * v11);
    v13 = (v4 * v10) + (v5 * v11);
    *(a2 + 16) = v13;
    *(a2 + 20) = v12;
    if (v12 < 0.0)
    {
      v13 = -v13;
    }

    v14 = fabsf(v12);
    v15 = fminf(fmaxf(v13, -999.0), 999.0);
    *(a2 + 24) = v12 < 0.0;
    v16 = (v15 + 1000.0) - 1000;
    *a2 = v16;
    *(a2 + 4) = v14;
    *(a2 + 8) = v15 - v16;
    *(a2 + 12) = v14 - truncf(v14);
    a2 += 28;
    --v6;
  }

  while (v6);
  return result;
}

float sub_10001D85C(uint64_t a1, void *a2, float *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2 + 8;
  v8 = 28;
  result = 0.0;
  v10 = Madusa::AffineTransform::mGridPointV;
  v11 = Madusa::AffineTransform::mGridPointU;
  v12 = 28;
  do
  {
    while (1)
    {
      v13 = *v11;
      v14 = *v10;
      v15 = (v3 * v14) + (v4 * v13);
      v16 = (v5 * v14) + (v6 * v13);
      *(a1 + 16) = v16;
      *(a1 + 20) = v15;
      v17 = v15 < 0.0;
      if (v15 < 0.0)
      {
        v16 = -v16;
      }

      v18 = fabsf(v15);
      v19 = fminf(fmaxf(v16, -999.0), 999.0);
      v20 = v18;
      v21 = (v19 + 1000.0);
      *(a1 + 24) = v17;
      *a1 = v21 - 1000;
      *(a1 + 4) = v18;
      v22 = v18 - truncf(v18);
      v23 = v19 - (v21 - 1000);
      *(a1 + 8) = v23;
      *(a1 + 12) = v22;
      if (v20 <= 0x3F)
      {
        v24 = v21 - 936;
        if ((v21 - 936) <= 0x7E)
        {
          break;
        }
      }

      --v12;
      a1 += 28;
      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    v25 = v21 - 935;
    v26 = v20 << 9;
    v27 = *(v7 + v26 + 4 * v24);
    v28 = *(v7 + v26 + 4 * v25);
    result = ((v27 + ((v28 - v27) * v23)) + result) + (((*(v7 + (v26 + 512) + 4 * v24) - (v27 + ((v28 - v27) * v23))) + ((*(v7 + (v26 + 512) + 4 * v25) - *(v7 + (v26 + 512) + 4 * v24)) * v23)) * v22);
    a1 += 28;
    ++v10;
    ++v11;
    --v8;
  }

  while (v8);
LABEL_8:
  if ((v12 - 1) < 0x37)
  {
    return Madusa::RefineCandidates::mCorrScale[v12] * result;
  }

  return result;
}

float sub_10001D9B8(uint64_t a1, void *a2, float *a3)
{
  v3 = *a2 + 8;
  v4 = 0.0;
  v5 = Madusa::AffineTransform::mGridPointV;
  v6 = Madusa::AffineTransform::mGridPointU;
  v7 = 28;
  v8 = a1;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v17 = *(v8 + 4);
    if (v17 > 0x3F || (v18 = *v8, (*v8 - 63) <= 0xFFFFFF80))
    {
      v13 = *(v8 + 16);
      v12 = *(v8 + 20);
    }

    else
    {
      v19 = v18 + 64;
      v20 = v3 + (v17 << 9);
      v21 = *(v20 + 4 * (v18 + 64));
      v22 = v18 + 65;
      v23 = *(v20 + 4 * v22);
      v24 = fmaxf(v23, v21);
      if (v23 <= v21)
      {
        v25 = v19;
      }

      else
      {
        v25 = v22;
      }

      v26 = v3 + ((v17 + 1) << 9);
      v27 = *(v26 + 4 * v19);
      if (v27 <= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = *(v26 + 4 * v19);
      }

      if (v27 <= v24)
      {
        v19 = v25;
      }

      if (*(v26 + 4 * v22) > v28)
      {
        v29 = 0;
      }

      else
      {
        v22 = v19;
        v29 = v27 <= v24;
      }

      if (!v29)
      {
        LODWORD(v17) = v17 + 1;
      }

      v30 = v22 - 64;
      v31 = 64 - v22;
      if (*(v8 + 24))
      {
        LODWORD(v17) = -v17;
      }

      else
      {
        v31 = v30;
      }

      v12 = v17;
      v13 = v31;
    }

    v14 = *v6++;
    v15 = v14;
    v16 = *v5++;
    v4 = v4 + (v13 * v15);
    v9 = v9 + (v12 * v16);
    v10 = v10 + (v12 * v15);
    v11 = v11 + (v13 * v16);
    v8 += 28;
    --v7;
  }

  while (v7);
  *a3 = v9 * 0.000079177;
  a3[1] = v10 * 0.000079177;
  a3[2] = v11 * 0.000079177;
  a3[3] = v4 * 0.000079177;
  return sub_10001D85C(a1, a2, a3);
}

float sub_10001DAD0(uint64_t a1, void *a2, float *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2 + 8;
  v8 = 56;
  result = 0.0;
  v10 = Madusa::AffineTransform::mGridPointV;
  v11 = Madusa::AffineTransform::mGridPointU;
  v12 = 56;
  do
  {
    while (1)
    {
      v13 = *v11;
      v14 = *v10;
      v15 = (v3 * v14) + (v4 * v13);
      v16 = (v5 * v14) + (v6 * v13);
      *(a1 + 16) = v16;
      *(a1 + 20) = v15;
      v17 = v15 < 0.0;
      if (v15 < 0.0)
      {
        v16 = -v16;
      }

      v18 = fabsf(v15);
      v19 = fminf(fmaxf(v16, -999.0), 999.0);
      v20 = v18;
      v21 = (v19 + 1000.0);
      *(a1 + 24) = v17;
      *a1 = v21 - 1000;
      *(a1 + 4) = v18;
      v22 = v18 - truncf(v18);
      v23 = v19 - (v21 - 1000);
      *(a1 + 8) = v23;
      *(a1 + 12) = v22;
      if (v20 <= 0x3F)
      {
        v24 = v21 - 936;
        if ((v21 - 936) <= 0x7E)
        {
          break;
        }
      }

      --v12;
      a1 += 28;
      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    v25 = v21 - 935;
    v26 = v20 << 9;
    v27 = *(v7 + v26 + 4 * v24);
    v28 = *(v7 + v26 + 4 * v25);
    result = ((v27 + ((v28 - v27) * v23)) + result) + (((*(v7 + (v26 + 512) + 4 * v24) - (v27 + ((v28 - v27) * v23))) + ((*(v7 + (v26 + 512) + 4 * v25) - *(v7 + (v26 + 512) + 4 * v24)) * v23)) * v22);
    a1 += 28;
    ++v10;
    ++v11;
    --v8;
  }

  while (v8);
LABEL_8:
  if ((v12 - 1) < 0x37)
  {
    return Madusa::RefineCandidates::mCorrScale[v12] * result;
  }

  return result;
}

float sub_10001DC2C(uint64_t a1, void *a2, float *a3)
{
  v3 = *a2 + 8;
  v4 = 0.0;
  v5 = Madusa::AffineTransform::mGridPointV;
  v6 = Madusa::AffineTransform::mGridPointU;
  v7 = 56;
  v8 = a1;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v17 = *(v8 + 4);
    if (v17 > 0x3F || (v18 = *v8, (*v8 - 63) <= 0xFFFFFF80))
    {
      v13 = *(v8 + 16);
      v12 = *(v8 + 20);
    }

    else
    {
      v19 = v18 + 64;
      v20 = v3 + (v17 << 9);
      v21 = *(v20 + 4 * (v18 + 64));
      v22 = v18 + 65;
      v23 = *(v20 + 4 * v22);
      v24 = fmaxf(v23, v21);
      if (v23 <= v21)
      {
        v25 = v19;
      }

      else
      {
        v25 = v22;
      }

      v26 = v3 + ((v17 + 1) << 9);
      v27 = *(v26 + 4 * v19);
      if (v27 <= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = *(v26 + 4 * v19);
      }

      if (v27 <= v24)
      {
        v19 = v25;
      }

      if (*(v26 + 4 * v22) > v28)
      {
        v29 = 0;
      }

      else
      {
        v22 = v19;
        v29 = v27 <= v24;
      }

      if (!v29)
      {
        LODWORD(v17) = v17 + 1;
      }

      v30 = v22 - 64;
      v31 = 64 - v22;
      if (*(v8 + 24))
      {
        LODWORD(v17) = -v17;
      }

      else
      {
        v31 = v30;
      }

      v12 = v17;
      v13 = v31;
    }

    v14 = *v6++;
    v15 = v14;
    v16 = *v5++;
    v4 = v4 + (v13 * v15);
    v9 = v9 + (v12 * v16);
    v10 = v10 + (v12 * v15);
    v11 = v11 + (v13 * v16);
    v8 += 28;
    --v7;
  }

  while (v7);
  *a3 = v9 * 0.00002307;
  a3[1] = v10 * 0.00002307;
  a3[2] = v11 * 0.00002307;
  a3[3] = v4 * 0.00002307;
  return sub_10001DAD0(a1, a2, a3);
}

uint64_t Madusa::DetectorBase::DetectorBase(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000708E8;
  Madusa::BlockPicker::BlockPicker((a1 + 8));
  *(a1 + 40) = 0;
  Madusa::ImageProperties::ImageProperties((a1 + 48));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = Madusa::SigComboBoost::SigComboBoost((a1 + 304));
  *(a1 + 42984) = a2;
  (*(*(a1 + 304) + 16))();
  return a1;
}

void Madusa::DetectorBase::_Initialize(Madusa::DetectorBase *this, Madusa::DetectorBase *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006A610));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A620, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006A620)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::DetectorBase::Initialize(this);
}

uint64_t Madusa::DetectorBase::ProcessBlock(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = (*(*a1 + 56))(a1, a3);
  v28 = (*(*a4 + 32))(a4);
  v8 = (*(*a4 + 24))(a4);
  Madusa::ProfileTimer::ProfileTimer(v25, &unk_10006BCBB, v8);
  v9 = (*(*a1 + 32))(a1, &v29, &v28, a2);
  Madusa::ProfileTimer::~ProfileTimer(v25);
  if (v9)
  {
    if (v9 == 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = (*(*a1 + 40))(a1, a3, &v28);
    if (v10)
    {
      v12 = (*(*a4 + 24))(a4);
      (*(*v12 + 40))(v12, v28 + 8, v29, HIDWORD(v29), 130, 130, 130);
      v10 = (*(*a4 + 16))(v25, a4, &v28, &v29);
      v13 = v27;
      if (v27 >= 1)
      {
        if (v26[1])
        {
          goto LABEL_12;
        }

        v14 = &v27;
        v15 = 1;
        do
        {
          v16 = v15;
          if (v27 == v15)
          {
            break;
          }

          v17 = *(v14 + 1);
          ++v15;
          v14 += 8;
        }

        while (v17 != 1);
        if (v16 < v27)
        {
LABEL_12:
          atomic_store(1u, a1 + 281);
        }

        if (*v25 > 20.3)
        {
          goto LABEL_18;
        }

        v18 = v26;
        v19 = 1;
        do
        {
          v20 = v19;
          if (v13 == v19)
          {
            break;
          }

          v21 = *v18;
          v18 += 18;
          ++v19;
        }

        while (v21 <= 20.3);
        if (v20 < v13)
        {
LABEL_18:
          atomic_store(1u, a1 + 280);
        }
      }
    }

    v11 = 0;
  }

  ReadstatsHandle = Madusa::System::GetReadstatsHandle(v10);
  v23 = (*(*a4 + 24))(a4);
  ((*ReadstatsHandle)[8])(ReadstatsHandle, v23);
  return v11;
}

uint64_t Madusa::DetectorBase::_ProcessBlock(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 2212752;
  }

  else
  {
    v7 = 1970885;
  }

  v8 = 1;
  v9 = 18986;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 1970884)
        {
          break;
        }

        if (v9 == 18986)
        {
          v8 = 0;
          v9 = 1970885;
        }

        else if (v9 == 19003)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 1970885, v5[3] != ((QuickCodec::mask ^ v6) / 0x1EEB94)))
        {
          v9 = 1970939;
          v8 = v10;
        }
      }

      if (v9 <= 1989853)
      {
        break;
      }

      if (v9 == 1989854)
      {
        v5 = v4;
        v9 = 19003;
      }

      else
      {
        v11 = v9 == 2212752;
        v9 = 19057;
        if (v11)
        {
          v6 = -497124669;
        }
      }
    }

    if (v9 != 1970885)
    {
      break;
    }

    v9 = 1970939;
    if ((v8 & 1) == 0)
    {
      v9 = 1989854;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::DetectorBase::ProcessBlock(a1, a2, a3, a4);
}

uint64_t Madusa::DetectorBase::WriteReadstats(Madusa::DetectorBase *this)
{
  ReadstatsHandle = Madusa::System::GetReadstatsHandle(this);
  v2 = ((*ReadstatsHandle)[9])(ReadstatsHandle);
  v3 = (*Madusa::System::GetReadstatsHandle(v2))[11];

  return v3();
}

uint64_t Madusa::DetectorBase::ShouldDoSecondPass(Madusa::DetectorBase *this)
{
  ReadstatsHandle = Madusa::System::GetReadstatsHandle(this);
  v4 = ((*ReadstatsHandle)[12])(ReadstatsHandle);
  v5 = *v1;
  if (v4)
  {
    if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
    {
      if (QuickCodec::mask == -70947757)
      {
        return 1;
      }
    }

    else if (v1[3] != 212 && QuickCodec::mask == -70947757)
    {
      return 1;
    }

    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v18);
    v18.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v18);
    return 1;
  }

  v7.i16[0] = *&v5 | 0xFFE0;
  v7.i16[1] = v1[3];
  v7.i16[2] = *&v5 | 0xFFE0;
  v7.i16[3] = v7.u8[2];
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v7), v8), xmmword_10006A630));
  v10.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A640, v9)).u32[0];
  v10.i32[1] = vmovn_s32(vcgtq_f32(v9, xmmword_10006A640)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    v11 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v12 = &unk_10003FCF4;
    v13 = -2;
    v14 = -1;
    do
    {
      qword_100074968[v14 + 1 + ((*(v12 - 1) ^ v11) / 0x9D28AF)] = qword_100074968[v14 + ((*v12 ^ v11) / 0x9D28AF)];
      v12 += 2;
      v13 += 2;
      v14 -= 2;
    }

    while (v13 < 0x20);
  }

  v15 = atomic_load(this + 281);
  if (v15)
  {
    return 0;
  }

  v17 = atomic_load(this + 280);
  return v17 & 1;
}

uint64_t Madusa::DetectorBase::_ShouldDoSecondPass(Madusa::DetectorBase *this, Madusa::DetectorBase *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::DetectorBase::ShouldDoSecondPass(this);
}

uint64_t Madusa::DetectorBase::SetImageProperties(Madusa::DetectorBase *this, const Madusa::ImageProperties *a2, Madusa::MemoryMaster *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  *(this + 5) = *(a2 + 2);
  *(this + 6) = v8;
  *(this + 3) = v6;
  *(this + 4) = v7;
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = *(a2 + 7);
  *(this + 9) = *(a2 + 6);
  *(this + 10) = v11;
  *(this + 7) = v9;
  *(this + 8) = v10;
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  *(this + 28) = *(a2 + 22);
  *(this + 12) = v13;
  *(this + 13) = v14;
  *(this + 11) = v12;
  *(this + 58) = *(a2 + 46);
  *(this + 59) = *(a2 + 47);
  *(this + 60) = *(a2 + 48);
  *(this + 61) = *(a2 + 49);
  v15 = *(a2 + 200);
  *(this + 260) = *(a2 + 212);
  *(this + 248) = v15;
  sub_10001F264((this + 48), &v23);
  if (BYTE4(v23) == 1 && v24 == 1 && v26 == 1)
  {
    v16 = v28;
  }

  else
  {
    v16 = 0;
  }

  v17 = v25;
  v18 = v27;
  func = __find_func(0x9FFFBF5F00A080F0, 1900298378);
  v20 = func(this + 8, v17, v18);
  Madusa::ImageProperties::RecordImageDetails(a2, v17, v18);
  v21 = (*(*this + 24))(this, a3);
  (*(**(this + 37) + 16))(*(this + 37));
  return v16 & v20 & v21 & 1;
}

uint64_t Madusa::DetectorBase::_SetImageProperties(Madusa::DetectorBase *this, Madusa::DetectorBase *a2, const Madusa::ImageProperties *a3, Madusa::MemoryMaster *a4)
{
  v5.i16[3] = v4[3];
  v5.i16[2] = *v4 | 0xFFE0;
  v5.i16[1] = v5.u8[6];
  v5.i16[0] = v5.i16[2];
  v6.i64[0] = 0xFF000000FFLL;
  v6.i64[1] = 0xFF000000FFLL;
  v7 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v5), v6), xmmword_10006A650));
  v8.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A660, v7)).u32[0];
  v8.i32[1] = vmovn_s32(vcgtq_f32(v7, xmmword_10006A660)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v8, 0xFuLL))) & ((v4[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::DetectorBase::SetImageProperties(this, a2, a3);
}

Madusa::System *Madusa::DetectorBase::ProcessBlocksLoop(Madusa::System *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < a3)
  {
    v9 = a2;
    v10 = result;
    do
    {
      ReadstatsHandle = Madusa::System::GetReadstatsHandle(result);
      if ((((*ReadstatsHandle)[12])(ReadstatsHandle) & 1) == 0)
      {
        func = __find_func(0xBF1F5F3F0040A060, 1369743594);
        if (func(v10))
        {
          break;
        }
      }

      result = Madusa::DetectorBase::ProcessBlock(v10, a4, v9, a5);
      if (result)
      {
        goto LABEL_8;
      }

      v9 = (v9 + 1);
    }

    while (a3 != v9);
  }

  result = 0;
LABEL_8:
  if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      return result;
    }
  }

  else if (v5[3] != 212 && QuickCodec::mask == -70947757)
  {
    return result;
  }

  v14 = result;
  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  v15 = __find_func(0xDF9FDF1FC0E04070, 824451274);
  v16 = 600;
  while (*v15 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v15[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v15[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v15[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
  {
    v15 += 4;
    if (!--v16)
    {
      goto LABEL_24;
    }
  }

  vars0 = v15;
  vars8 = 0u;
LABEL_24:
  QuickCodec::mask += 16;
  return v14;
}

Madusa::System *Madusa::DetectorBase::_ProcessBlocksLoop(Madusa::System *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu)
  {
    v6 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v6 + 1;
    }
  }

  else
  {
    v6 = QuickCodec::mask;
    if (v5[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::DetectorBase::ProcessBlocksLoop(result, a2, a3, a4, a5);
}

uint64_t Madusa::DetectorBase::ProcessBlocks(Madusa::DetectorBase *this, uint64_t a2, uint64_t a3, void *a4, Madusa::SessionCallbacks *a5)
{
  atomic_fetch_add(this + 10744, (a2 + a3 - 1) * (a3 - a2) / 2);
  Madusa::MemoryMaster::MemoryMaster(v29, *(this + 36), a4);
  if (Madusa::MemoryMaster::Valid(v29) && (DetectorPipe = Madusa::System::CreateDetectorPipe(v29, this + 296)) != 0 && (v11 = DetectorPipe, Madusa::MemoryMaster::Valid(v29)))
  {
    v12 = (*(*this + 48))(this, v29, a5);
    if (v12)
    {
      v13 = v12;
      func = __find_func(0xBFDF7F9FC020C090, 1365540938);
      v15 = func(this, a2, a3, v13, v11);
      (**v13)(v13);
      Madusa::MemoryMaster::DeAllocateBuffer(v13, v16);
    }

    else
    {
      v15 = 1;
    }

    (**v11)(v11);
    Madusa::MemoryMaster::DeAllocateBuffer(v11, v28);
  }

  else
  {
    v15 = 1;
  }

  v17 = 0;
  v18 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v19 = 6629195;
  }

  else
  {
    v19 = 923358;
  }

  v20 = 1;
  v21 = 1661126;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v24 = v20;
        if (v21 <= 1661196)
        {
          break;
        }

        if (v21 == 1661197)
        {
          if ((*v17 & 0x1F) != 0 || v17[2] > 0x3Fu || (v20 = 1, v21 = 923358, v17[3] != ((QuickCodec::mask ^ v18) / 0x60B4C8)))
          {
            v21 = 923412;
            v20 = v24;
          }
        }

        else if (v21 == 2584467)
        {
          v17 = v5;
          v21 = 1661143;
        }

        else
        {
          v25 = v21 == 6629195;
          v21 = 1661197;
          if (v25)
          {
            v18 = -1412376077;
          }
        }
      }

      if (v21 <= 1661125)
      {
        break;
      }

      v22 = (QuickCodec::mask != -70947757) | v20;
      if (v21 == 1661143)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      if (v21 == 1661143)
      {
        LODWORD(v24) = v22;
      }

      v25 = v21 == 1661126;
      if (v21 == 1661126)
      {
        v21 = 923358;
      }

      else
      {
        v21 = v23;
      }

      if (v25)
      {
        v20 = 0;
      }

      else
      {
        v20 = v24;
      }
    }

    if (v21 != 923358)
    {
      break;
    }

    v21 = 923412;
    if ((v20 & 1) == 0)
    {
      v21 = 2584467;
    }
  }

  if (v20)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v26 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    v26(0, 104);
  }

  Madusa::MemoryMaster::~MemoryMaster(v29);
  return v15;
}

uint64_t Madusa::DetectorBase::_ProcessBlocks(Madusa::DetectorBase *this, uint64_t a2, uint64_t a3, void *a4, Madusa::SessionCallbacks *a5, Madusa::SessionCallbacks *a6)
{
  v7.i16[3] = v6[3];
  v7.i16[2] = *v6 | 0xFFE0;
  v7.i16[1] = v7.u8[6];
  v7.i16[0] = v7.i16[2];
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v7), v8), xmmword_10006A670));
  v10.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A680, v9)).u32[0];
  v10.i32[1] = vmovn_s32(vcgtq_f32(v9, xmmword_10006A680)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL))) & ((v6[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::DetectorBase::ProcessBlocks(this, a2, a3, a4, a5);
}

uint64_t Madusa::DetectorBase::ProcessTwoPasses(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v7 = a1 + 40960;
  *(a1 + 288) = a2;
  *(a1 + 40) = 0;
  atomic_store(0, (a1 + 42976));
  v8 = a4 - 1;
  if (a4 < 1)
  {
    v16 = 0;
  }

  else
  {
    v9 = a4;
    v10 = (*(**(a1 + 42984) + 16))(*(a1 + 42984), 0, a4, a2, a1);
    if (!v10)
    {
      v11 = atomic_load((a1 + 281));
      if ((v11 & 1) == 0)
      {
        v12 = v10;
        v13 = (*(**(a1 + 296) + 32))(v28, *(a1 + 296));
        ReadstatsHandle = Madusa::System::GetReadstatsHandle(v13);
        ((*ReadstatsHandle)[5])(ReadstatsHandle, v28);
        v10 = v12;
        atomic_store(BYTE1(v28[0]), (a1 + 281));
      }
    }

    v15 = atomic_load((v7 + 2016));
    if (v15 == (v8 * v9) >> 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = 3;
    }
  }

  func = __find_func(0xBF1F5F5F008040F0, 1369743498);
  v18 = func(a1);
  if (!v16 && v18)
  {
    *(a1 + 40) = 1;
    atomic_store(0, (v7 + 2016));
    if (a5 < 1)
    {
      return 0;
    }

    else
    {
      v19 = (*(**(v7 + 2024) + 16))(*(v7 + 2024), 0, a5, *(a1 + 288), a1);
      if (!v19)
      {
        v20 = (a1 + 281);
        v21 = atomic_load((a1 + 281));
        if ((v21 & 1) == 0)
        {
          v22 = *(a1 + 296);
          v23 = v19;
          v24 = (*(*v22 + 32))(v28, v22);
          v25 = Madusa::System::GetReadstatsHandle(v24);
          ((*v25)[5])(v25, v28);
          v19 = v23;
          atomic_store(BYTE1(v28[0]), v20);
        }
      }

      v26 = atomic_load((v7 + 2016));
      if (v26 == ((a5 - 1) * a5) >> 1)
      {
        return v19;
      }

      else
      {
        return 3;
      }
    }
  }

  return v16;
}

void *sub_10001F264@<X0>(Madusa::ImageProperties *a1@<X0>, unint64_t *a2@<X8>)
{
  v14 = 0x100000001;
  v15 = 0x100000001;
  Madusa::ImageProperties::GetDownsampleRatios(a1, &v15, &v14);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(a1);
  v13[0] = &_mh_execute_header & 0xFFFFFFFF00000000 | IntegerOffsetBounds;
  v13[1] = &_mh_execute_header & 0xFFFFFFFF00000000 | HIDWORD(IntegerOffsetBounds);
  v13[2] = &_mh_execute_header & 0xFFFFFFFF00000000 | v5;
  v13[3] = &_mh_execute_header & 0xFFFFFFFF00000000 | v6;
  sub_10001F8DC(v13, &v15, &v14, v12);
  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  if (ResolutionBucket <= 350)
  {
    v8 = ResolutionBucket;
  }

  else
  {
    v8 = 300;
  }

  v9 = 0x100000001;
  if (v8 <= 199)
  {
    switch(v8)
    {
      case 100:
        v10 = &unk_10006A690;
        goto LABEL_20;
      case 125:
        v10 = &unk_10006A6A0;
        goto LABEL_20;
      case 150:
        v10 = &unk_10006A6B0;
        goto LABEL_20;
    }
  }

  else if (v8 > 299)
  {
    if (v8 == 300)
    {
      v10 = &unk_10006A6E0;
      goto LABEL_20;
    }

    if (v8 == 350)
    {
      v10 = &unk_10006A6F0;
      goto LABEL_20;
    }
  }

  else
  {
    if (v8 == 200)
    {
      v10 = &unk_10006A6C0;
      goto LABEL_20;
    }

    if (v8 == 250)
    {
      v10 = &unk_10006A6D0;
LABEL_20:
      v9 = *(v10 + 4);
    }
  }

  v13[0] = v9;
  return sub_10001F8DC(v12, v13, v13, a2);
}

BOOL Madusa::DetectorBase::_Is100DPI(Madusa::DetectorBase *this, Madusa::DetectorBase *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::DetectorBase::Is100DPI(this);
}

uint64_t Madusa::DetectorBase::IsWatermarkFound(Madusa::DetectorBase *this)
{
  v2 = 0;
  v3 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v4 = 7729295;
  }

  else
  {
    v4 = 7094750;
  }

  v5 = 1;
  v6 = 5873;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        if (v6 > 7094749)
        {
          break;
        }

        if (v6 == 5873)
        {
          v5 = 0;
          v6 = 7094750;
        }

        else if (v6 == 5890)
        {
          v5 = (QuickCodec::mask != -70947757) | v5;
          v6 = v4;
        }

        else if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu || (v5 = 1, v6 = 7094750, v2[3] != ((QuickCodec::mask ^ v3) / 0x994241)))
        {
          v6 = 7094804;
          v5 = v7;
        }
      }

      if (v6 <= 7100605)
      {
        break;
      }

      if (v6 == 7100606)
      {
        v2 = v1;
        v6 = 5890;
      }

      else
      {
        v8 = v6 == 7729295;
        v6 = 5944;
        if (v8)
        {
          v3 = -2060471929;
        }
      }
    }

    if (v6 != 7094750)
    {
      break;
    }

    v6 = 7094804;
    if ((v5 & 1) == 0)
    {
      v6 = 7100606;
    }
  }

  if (v5)
  {
    v9 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v10 = &unk_10003FCF4;
    v11 = -2;
    v12 = -1;
    do
    {
      qword_100074968[v12 + 1 + ((*(v10 - 1) ^ v9) / 0x9D28AF)] = qword_100074968[v12 + ((*v10 ^ v9) / 0x9D28AF)];
      v10 += 2;
      v11 += 2;
      v12 -= 2;
    }

    while (v11 < 0x20);
  }

  v13 = atomic_load(this + 281);
  return v13 & 1;
}

uint64_t Madusa::DetectorBase::_IsWatermarkFound(Madusa::DetectorBase *this, const Madusa::DetectorBase *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::DetectorBase::IsWatermarkFound(this);
    }

LABEL_7:
    QuickCodec::mask = v3 + 1;
    return Madusa::DetectorBase::IsWatermarkFound(this);
  }

  v5 = 90122 * v2[3];
  v3 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x1238848 | v5 & 0x1238848) + (v5 ^ 0x1238848 | ~(v5 | 0x1238848)) + 19105864 == (~(~(~(v5 | 0x1218000) | v5 & 0x1218000) | 0x20848) | ~(~(v5 | 0x1218000) | v5 & 0x1218000) & 0x20848) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::DetectorBase::IsWatermarkFound(this);
}

unint64_t sub_10001F8DC@<X0>(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = a3[1] * *a1;
  if (v8 == v8)
  {
    v10 = *a3;
    v11 = 2 * v8 == 2 * v8 && (v10 - 2147483649) >= 0xFFFFFFFF00000000;
    if (v11 && (v12 = 2 * v8 + (v10 - 1), v12 == v12))
    {
      v9 = &_mh_execute_header & 0xFFFFFFFF00000000 | (2 * v8 + v10 - 1);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = *a3;
  }

  v46 = v9;
  v47 = BYTE4(v9);
  if (2 * v10 == 2 * v10)
  {
    v13 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v10 & 0x7FFFFFFF));
  }

  else
  {
    v13 = 0;
  }

  v44 = v13;
  v45 = BYTE4(v13);
  v14 = sub_10001FCB8(&v46, &v44);
  v15 = a2[1] * a1[2];
  if (v15 == v15)
  {
    v17 = *a2;
    v18 = 2 * v15 == 2 * v15 && (v17 - 2147483649) >= 0xFFFFFFFF00000000;
    if (v18 && (v19 = 2 * v15 + (v17 - 1), v19 == v19))
    {
      v16 = &_mh_execute_header & 0xFFFFFFFF00000000 | (2 * v15 + v17 - 1);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = *a2;
  }

  v46 = v16;
  v47 = BYTE4(v16);
  if (2 * v17 == 2 * v17)
  {
    v20 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v17 & 0x7FFFFFFF));
  }

  else
  {
    v20 = 0;
  }

  v44 = v20;
  v45 = BYTE4(v20);
  v21 = sub_10001FCB8(&v46, &v44);
  v22 = a3[1] * (a1[4] + *a1);
  if (v22 == v22)
  {
    v23 = v22 | &_mh_execute_header;
  }

  else
  {
    v23 = 0;
  }

  if ((v23 & 0x100000000) != 0 && 2 * v23 == 2 * v23)
  {
    v39 = v23 << 33;
    v40 = 2 * v23 - 2147483649;
    v25 = *a3;
    if (v40 >= 0xFFFFFFFF00000000 && ((v39 - 0x100000000) >> 32) - v25 == (((v39 - 0x100000000) >> 32) - v25))
    {
      v24 = &_mh_execute_header & 0xFFFFFFFF00000000 | (((v39 - 0x100000000) >> 32) - v25);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v25 = *a3;
  }

  v46 = v24;
  v47 = BYTE4(v24);
  if (2 * v25 == 2 * v25)
  {
    v26 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v25 & 0x7FFFFFFF));
  }

  else
  {
    v26 = 0;
  }

  v44 = v26;
  v45 = BYTE4(v26);
  v27 = sub_10001FCB8(&v46, &v44);
  v28 = a2[1] * (a1[6] + a1[2]);
  if (v28 == v28)
  {
    v29 = v28 | &_mh_execute_header;
  }

  else
  {
    v29 = 0;
  }

  if ((v29 & 0x100000000) != 0 && 2 * v29 == 2 * v29)
  {
    v41 = v29 << 33;
    v42 = 2 * v29 - 2147483649;
    v31 = *a2;
    if (v42 >= 0xFFFFFFFF00000000 && ((v41 - 0x100000000) >> 32) - v31 == (((v41 - 0x100000000) >> 32) - v31))
    {
      v30 = &_mh_execute_header & 0xFFFFFFFF00000000 | (((v41 - 0x100000000) >> 32) - v31);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = *a2;
  }

  v46 = v30;
  v47 = BYTE4(v30);
  if (2 * v31 == 2 * v31)
  {
    v32 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v31 & 0x7FFFFFFF));
  }

  else
  {
    v32 = 0;
  }

  v44 = v32;
  v45 = BYTE4(v32);
  result = sub_10001FCB8(&v46, &v44);
  if (*(a1 + 12) != 1 || *(a1 + 4) != 1 || *(a1 + 28) != 1 || *(a1 + 20) != 1)
  {
    LOBYTE(v35) = 0;
    LOBYTE(v34) = 0;
    v37 = 0;
    goto LABEL_55;
  }

  v34 = HIDWORD(v14);
  v35 = HIDWORD(v21);
  if ((v27 & 0x100000000) != 0 && (v14 & 0x100000000) != 0 && (v36 = v27 - v14, v36 == v36))
  {
    if ((v36 + 2147483649) >> 32)
    {
      v37 = 0;
    }

    else
    {
      v37 = (v36 + 1) | &_mh_execute_header;
    }

    if ((result & 0x100000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v37 = 0;
    if ((result & 0x100000000) == 0)
    {
      v38 = 0;
      goto LABEL_56;
    }
  }

  if ((v21 & 0x100000000) == 0 || (v43 = result - v21, v43 != v43))
  {
LABEL_55:
    v38 = 0;
    goto LABEL_56;
  }

  if ((v43 + 2147483649) >> 32)
  {
    v38 = 0;
  }

  else
  {
    v38 = (v43 + 1) | &_mh_execute_header;
  }

LABEL_56:
  *a4 = v14 | (v34 << 32);
  a4[1] = v21 | (v35 << 32);
  a4[2] = v37;
  a4[3] = v38;
  return result;
}

unint64_t sub_10001FCB8(int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2;
  if ((v2 & 0x80000000) != 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      if (*(a1 + 4))
      {
        v8 = -v2;
      }

      else
      {
        v8 = *a1;
      }

      if (v2 == 0x80000000 || *(a1 + 4) == 0)
      {
        return 0;
      }

      if (*(a2 + 4) != 1)
      {
        return 0;
      }

      v10 = v3 + v8;
      if (v10 != v10)
      {
        return 0;
      }

      if ((v10 - 2147483649) < 0xFFFFFFFF00000000 || v3 == 0)
      {
        return 0;
      }

      v16 = v10 - 1;
      if (v16)
      {
        v17 = v16 / v3;
      }

      else
      {
        v17 = 0;
      }

      return ((v17 != 0x80000000) << 32) | -v17;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    if (*(a1 + 4) == 1)
    {
      v5 = v2 - v3;
      if ((v5 + 0x7FFFFFFFLL) >> 32)
      {
        v6 = 0;
      }

      else
      {
        v6 = (v5 - 1) | &_mh_execute_header;
      }

      if (v5 == v5)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (*(a2 + 4) != 1)
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(a2 + 4))
    {
      LODWORD(v3) = -v4;
    }

    if (v4 != 0x80000000 && (v7 & &_mh_execute_header) != 0 && *(a2 + 4) != 0)
    {
      if (!v7)
      {
        return ((v7 != 0x80000000) << 32) | -v7;
      }

      if (v7 != 0x80000000 || v3 != -1)
      {
        LODWORD(v7) = v7 / v3;
        return ((v7 != 0x80000000) << 32) | -v7;
      }
    }

    return 0;
  }

  if ((a1[1] & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + 4) != 1 || v3 == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 != 0x80000000 || v4 != -1)
    {
      return &_mh_execute_header | (v2 / v4);
    }

    return 0;
  }

  return &_mh_execute_header | v2;
}

uint64_t Madusa::AffineTransform::AffineTransform(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 133016;
  v4 = (a1 + 98784);
  v5 = (a1 + 64552);
  *a1 = off_100070938;
  *(a1 + 8) = a2;
  sub_100007CC4((a1 + 16));
  sub_100007CC4((a1 + 944));
  sub_100007CC4((a1 + 1872));
  sub_100007CC4((a1 + 2800));
  sub_100007CC4((a1 + 3728));
  sub_100007CC4((a1 + 4656));
  sub_100007CC4((a1 + 5584));
  sub_100007CC4((a1 + 6512));
  sub_100007CC4((a1 + 7440));
  sub_100007CC4((a1 + 8368));
  sub_100007CC4((a1 + 9296));
  sub_100007CC4((a1 + 10224));
  sub_100007CC4((a1 + 11152));
  sub_100007CC4((a1 + 12080));
  sub_100007CC4((a1 + 13008));
  sub_100007CC4((a1 + 13936));
  *(a1 + 14864) = off_100070958;
  bzero((a1 + 14872), 0x4000uLL);
  *(a1 + 31256) = a1 + 14864;
  *(a1 + 31264) = off_100070660;
  bzero((a1 + 31272), 0x8200uLL);
  *v5 = a1 + 31264;
  v5[1] = off_100070978;
  bzero((a1 + 64568), 0x85A8uLL);
  *v4 = v5 + 1;
  v4[1] = off_100070978;
  bzero((a1 + 98800), 0x85A8uLL);
  *v3 = v4 + 1;
  *(a1 + 133032) = 0;
  *(a1 + 133040) = 0;
  *(a1 + 133024) = 0;
  *(v3 + 32) = 1;
  *(v3 + 36) = 0;
  *(a1 + 133056) = 0u;
  *(a1 + 133072) = 0u;
  *(a1 + 133085) = 0;
  Madusa::FilterFMag::FilterFMag((a1 + 133096), v5);
  Madusa::ImpulseMatchedFilter::ImpulseMatchedFilter((a1 + 133656), v4, v3);
  Madusa::FindPeaks::FindPeaks((a1 + 133672), v3);
  bzero((a1 + 133688), 0xC40uLL);
  Madusa::PhaseDeviation::PhaseDeviation((a1 + 136824));
  v6 = 141608;
  bzero((a1 + 141608), 0x2260uLL);
  v7 = 5600;
  do
  {
    v8 = a1 + v6;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 24) = 0;
    *(v8 + 16) = 0;
    v6 += 28;
    v7 -= 28;
  }

  while (v7);
  do
  {
    v9 = (a1 + 147208 + v7);
    *(v9 + 5) = 0;
    *v9 = 0;
    v7 += 16;
  }

  while (v7 != 3200);
  return a1;
}

uint64_t Madusa::AffineTransform::Execute(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = a1 + 0x20000;
  Madusa::ProfileTimer::ProfileTimer(v37, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0xCF5F3F5F00A06060, 568639626);
  v9 = func(a1, a2);
  v10 = __find_func(0x1F3FBF7F00802010, -242990934);
  v11 = v10(a1, v9);
  v36 = 0.0;
  v12 = __find_func(0xFF7FFF1FA0002020, 298057930);
  v13 = v12(a1, v11, &v36);
  v14 = __find_func(0x9FFFDF1FC06000D0, 1900290250);
  v14(a1, v13, v36);
  v35[0] = xmmword_10006A700;
  v35[1] = xmmword_10006A710;
  v35[2] = xmmword_10006A720;
  v35[3] = xmmword_10006A700;
  v35[4] = xmmword_10006A710;
  v35[5] = xmmword_10006A720;
  v15 = __find_func(0xDF3F7F5F602080F0, 830767242);
  v16 = v15(a1, v35);
  v17 = __find_func(0x3F3F1FFFE0A04060, -779821014);
  v17(v35, v16, a1 + 16);
  v18 = __find_func(0xFF5F5FFFA0A02050, 300195882);
  v18(a1, a1 + 16, v9, v16);
  if (v16 >= 2)
  {
    v19 = 0;
    v20 = (a1 + 7440);
    v21 = *(a1 + 7460);
    v22 = a1 + 8368;
    v23 = 1;
    do
    {
      v24 = *(v22 + 20);
      if (v24 > v21)
      {
        v19 = v23;
      }

      v21 = fmaxf(v24, v21);
      ++v23;
      v22 += 928;
    }

    while (v16 != v23);
    if (v19 > 0)
    {
      v34 = *(a1 + 7440);
      memcpy(__dst, (a1 + 7456), sizeof(__dst));
      v25 = 58 * v19;
      v26 = &v20[v25];
      if (v25 * 16)
      {
        *v20 = *v26;
      }

      memcpy((a1 + 7456), v26 + 1, 0x390uLL);
      *v26 = v34;
      memcpy(v26 + 1, __dst, 0x390uLL);
    }
  }

  v27 = __find_func(0x9F7F9F5FA040C070, 1908695178);
  v27(a1, a2, a1 + 7440);
  v28 = __find_func(0xBFDF1FDF40C040F0, 1365565450);
  v28(a1, a1 + 7440, a1 + 133024);
  v29 = 0.0;
  if (*(v7 + 2020) == 1)
  {
    v30 = __find_func(0x9F7F5F5F80C0E0F0, 1908711562);
    v29 = v30(a1, a2, a1 + 7440, a1 + 133024);
  }

  *(v7 + 1956) = v29;
  *a3 = 1;
  if ((*v3 & 0x1F) == 0 && v3[2] <= 0x3Fu && v3[3] == 212 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v31 = __find_func(0xDF9FDF1FC0E04070, 824451274);
    v32 = 600;
    while (*v31 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v31[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v31[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v31[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
    {
      v31 += 4;
      if (!--v32)
      {
        goto LABEL_23;
      }
    }

    vars0 = v31;
    vars8 = 0u;
LABEL_23:
    QuickCodec::mask += 16;
  }

  Madusa::ProfileTimer::~ProfileTimer(v37);
  return a1 + 133024;
}

uint64_t Madusa::AffineTransform::_Execute(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::AffineTransform::Execute(a1, a2, a3);
    }

LABEL_7:
    QuickCodec::mask = v4 + 1;
    return Madusa::AffineTransform::Execute(a1, a2, a3);
  }

  v6 = 3146524 * v3[3];
  v4 = QuickCodec::mask;
  if (v6 - (v6 ^ 0x27C29330 | v6 & 0x27C29330) + (v6 ^ 0x27C29330 | ~(v6 | 0x27C29330)) + 667063088 == (~(~(~(v6 | 0x27C08120) | v6 & 0x27C08120) | 0x21210) | ~(~(v6 | 0x27C08120) | v6 & 0x27C08120) & 0x21210) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::AffineTransform::Execute(a1, a2, a3);
}

uint64_t Madusa::AffineTransform::_Execute_Alt(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 3297410;
  }

  else
  {
    v6 = 3198538;
  }

  v7 = 1;
  v8 = 3486;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v7;
          if (v8 > 3198537)
          {
            break;
          }

          switch(v8)
          {
            case 3486:
              v7 = 0;
              v8 = 3198538;
              break;
            case 3503:
              v7 = (QuickCodec::mask != -70947757) | v7;
              v8 = v6;
              break;
            case 3557:
              if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 3198538, v4[3] != ((QuickCodec::mask ^ v5) / 0x3B851F)))
              {
                v8 = 3198592;
                v7 = v9;
              }

              break;
          }
        }

        if (v8 <= 3202006)
        {
          break;
        }

        if (v8 == 3202007)
        {
          v4 = v3;
          v8 = 3503;
        }

        else if (v8 == 3297410)
        {
          v8 = 3557;
          v5 = -896577025;
        }
      }

      if (v8 != 3198538)
      {
        break;
      }

      if (v7)
      {
        v10 = 54;
      }

      else
      {
        v10 = 3469;
      }

      v8 = v10 + 3198538;
    }
  }

  while (v8 != 3198592);
  if (v7)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::Execute_Alt(a1, 3202006, a3);
}

float Madusa::AffineTransform::ERSExecute(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  Madusa::ProfileTimer::ProfileTimer(v16, &unk_10006BCBB, *(a1 + 8));
  v9 = a4[1];
  v14[1] = *a4;
  v15 = v9;
  v14[0] = *a3;
  if ((*v4 & 0x1F) == 0 && v4[2] <= 0x3Fu && v4[3] == 212 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    func(0, 104);
  }

  v11 = __find_func(0xAFBF9FFF80C00020, 1090805802);
  v12 = v11(a1 + 141608, a2, v14, &v15, &v15 + 8);
  Madusa::ProfileTimer::~ProfileTimer(v16);
  return v12;
}

float Madusa::AffineTransform::_ERSExecute(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 7197505;
  }

  else
  {
    v7 = 2709429;
  }

  v8 = 1;
  v9 = 2466348;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 2709428)
        {
          break;
        }

        if (v9 == 2466348)
        {
          v8 = 0;
          v9 = 2709429;
        }

        else if (v9 == 2466365)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 2709429, v5[3] != ((QuickCodec::mask ^ v6) / 0x409C40)))
        {
          v9 = 2709483;
          v8 = v10;
        }
      }

      if (v9 <= 5175759)
      {
        break;
      }

      if (v9 == 5175760)
      {
        v5 = v4;
        v9 = 2466365;
      }

      else
      {
        v11 = v9 == 7197505;
        v9 = 2466419;
        if (v11)
        {
          v6 = -834401965;
        }
      }
    }

    if (v9 != 2709429)
    {
      break;
    }

    v9 = 2709483;
    if ((v8 & 1) == 0)
    {
      v9 = 5175760;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::ERSExecute(a1, a2, a3, a4);
}

uint64_t Madusa::AffineTransform::GetUnrefinedLinearTransform(Madusa::AffineTransform *this)
{
  v2 = 0;
  v3 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v4 = 17880902;
  }

  else
  {
    v4 = 7872420;
  }

  v5 = 1;
  v6 = 8937272;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = v5;
        if (v6 <= 8937342)
        {
          break;
        }

        if (v6 == 8937343)
        {
          if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu || (v5 = 1, v6 = 7872420, v2[3] != ((QuickCodec::mask ^ v3) / 0x969885)))
          {
            v6 = 7872474;
            v5 = v9;
          }
        }

        else if (v6 == 16809675)
        {
          v2 = v1;
          v6 = 8937289;
        }

        else
        {
          v10 = v6 == 17880902;
          v6 = 8937343;
          if (v10)
          {
            v3 = -2022497673;
          }
        }
      }

      if (v6 <= 8937271)
      {
        break;
      }

      v7 = (QuickCodec::mask != -70947757) | v5;
      if (v6 == 8937289)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      if (v6 == 8937289)
      {
        LODWORD(v9) = v7;
      }

      v10 = v6 == 8937272;
      if (v6 == 8937272)
      {
        v6 = 7872420;
      }

      else
      {
        v6 = v8;
      }

      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = v9;
      }
    }

    if (v6 != 7872420)
    {
      break;
    }

    v6 = 7872474;
    if ((v5 & 1) == 0)
    {
      v6 = 16809675;
    }
  }

  if (v5)
  {
    v11 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v12 = &unk_10003FCF4;
    v13 = -2;
    v14 = -1;
    do
    {
      qword_100074968[v14 + 1 + ((*(v12 - 1) ^ v11) / 0x9D28AF)] = qword_100074968[v14 + ((*v12 ^ v11) / 0x9D28AF)];
      v12 += 2;
      v13 += 2;
      v14 -= 2;
    }

    while (v13 < 0x20);
  }

  return this + 16;
}

uint64_t Madusa::AffineTransform::_GetUnrefinedLinearTransform(Madusa::AffineTransform *this, const Madusa::AffineTransform *a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 12631176;
  }

  else
  {
    v5 = 3118957;
  }

  v6 = 1;
  v7 = 97198;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        if (v7 > 3118956)
        {
          break;
        }

        if (v7 == 97198)
        {
          v6 = 0;
          v7 = 3118957;
        }

        else if (v7 == 97215)
        {
          v6 = (QuickCodec::mask != -70947757) | v6;
          v7 = v5;
        }

        else if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 3118957, v3[3] != ((QuickCodec::mask ^ v4) / 0x605DC0)))
        {
          v7 = 3119011;
          v6 = v8;
        }
      }

      if (v7 <= 3216137)
      {
        break;
      }

      if (v7 == 3216138)
      {
        v3 = v2;
        v7 = 97215;
      }

      else
      {
        v9 = v7 == 12631176;
        v7 = 97269;
        if (v9)
        {
          v4 = -1274491053;
        }
      }
    }

    if (v7 != 3118957)
    {
      break;
    }

    v7 = 3119011;
    if ((v6 & 1) == 0)
    {
      v7 = 3216138;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::GetUnrefinedLinearTransform(this);
}

uint64_t Madusa::AffineTransform::FilterFMagExecute(uint64_t a1, uint64_t a2)
{
  Madusa::ProfileTimer::ProfileTimer(v8, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0xFF3F9F3F40C0A080, 293888234);
  func(a1 + 133096, a2);
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      fegetenv(&v9);
      v9.__fpcr &= QuickCodec::mask + 70947740;
      fesetenv(&v9);
    }
  }

  else if (v2[3] == 212 || QuickCodec::mask != -70947757)
  {
    goto LABEL_10;
  }

  Madusa::ProfileTimer::~ProfileTimer(v8);
  return a1 + 64552;
}

uint64_t Madusa::AffineTransform::_FilterFMagExecute(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 841040;
  }

  else
  {
    v5 = 8230;
  }

  v6 = 1;
  v7 = 273774;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v6;
        if (v7 <= 273844)
        {
          break;
        }

        if (v7 == 273845)
        {
          if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 8230, v3[3] != ((QuickCodec::mask ^ v4) / 0x42FE)))
          {
            v7 = 8284;
            v6 = v10;
          }
        }

        else if (v7 == 281987)
        {
          v3 = v2;
          v7 = 273791;
        }

        else
        {
          v11 = v7 == 841040;
          v7 = 273845;
          if (v11)
          {
            v4 = -68020725;
          }
        }
      }

      if (v7 <= 273773)
      {
        break;
      }

      v8 = (QuickCodec::mask != -70947757) | v6;
      if (v7 == 273791)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      if (v7 == 273791)
      {
        LODWORD(v10) = v8;
      }

      v11 = v7 == 273774;
      if (v7 == 273774)
      {
        v7 = 8230;
      }

      else
      {
        v7 = v9;
      }

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    if (v7 != 8230)
    {
      break;
    }

    if (v6)
    {
      v7 = 8284;
    }

    else
    {
      v7 = 281987;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::FilterFMagExecute(a1, a2);
}

uint64_t Madusa::AffineTransform::_FilterFMagExecute_Alt(uint64_t a1)
{
  if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
  {
    v2 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v2 + 1;
    }
  }

  else
  {
    v2 = QuickCodec::mask;
    if (v1[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::FilterFMagExecute_Alt(a1);
}

uint64_t Madusa::AffineTransform::PadAndFoldExecute(uint64_t a1, uint64_t a2)
{
  Madusa::ProfileTimer::ProfileTimer(var58, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0xFFFFBFFF6060C0E0, 289685546);
  func(a1, a2, a1 + 31256);
  v6 = 0;
  v7 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v8 = 7540977;
  }

  else
  {
    v8 = 5340247;
  }

  v9 = 1;
  v10 = 357018;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        if (v10 > 5340246)
        {
          break;
        }

        if (v10 == 357018)
        {
          v9 = 0;
          v10 = 5340247;
        }

        else if (v10 == 357035)
        {
          v9 = (QuickCodec::mask != -70947757) | v9;
          v10 = v8;
        }

        else if ((*v6 & 0x1F) != 0 || v6[2] > 0x3Fu || (v9 = 1, v10 = 5340247, v6[3] != ((QuickCodec::mask ^ v7) / 0x998B6B)))
        {
          v10 = 5340301;
          v9 = v11;
        }
      }

      if (v10 <= 5697247)
      {
        break;
      }

      if (v10 == 5697248)
      {
        v6 = v2;
        v10 = 357035;
      }

      else
      {
        v12 = v10 == 7540977;
        v10 = 357089;
        if (v12)
        {
          v7 = -2065557297;
        }
      }
    }

    if (v10 != 5340247)
    {
      break;
    }

    v10 = 5340301;
    if ((v9 & 1) == 0)
    {
      v10 = 5697248;
    }
  }

  if (v9)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v13 = __find_func(0xDF9FDF1FC0E04070, 824451274);
    v14 = 600;
    while (*v13 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v13[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v13[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v13[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
    {
      v13 += 4;
      if (!--v14)
      {
        goto LABEL_32;
      }
    }

    var58[11] = v13;
    vars8 = 0u;
LABEL_32:
    QuickCodec::mask += 16;
  }

  Madusa::ProfileTimer::~ProfileTimer(var58);
  return a1 + 31256;
}

uint64_t Madusa::AffineTransform::_PadAndFoldExecute(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 2662966;
  }

  else
  {
    v5 = 73826;
  }

  v6 = 1;
  v7 = 2238422;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v6;
        if (v7 <= 2238492)
        {
          break;
        }

        if (v7 == 2238493)
        {
          if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 73826, v3[3] != ((QuickCodec::mask ^ v4) / 0x81596)))
          {
            v7 = 73880;
            v6 = v10;
          }
        }

        else if (v7 == 2312231)
        {
          v3 = v2;
          v7 = 2238439;
        }

        else
        {
          v11 = v7 == 2662966;
          v7 = 2238493;
          if (v11)
          {
            v4 = -42693525;
          }
        }
      }

      if (v7 <= 2238421)
      {
        break;
      }

      v8 = (QuickCodec::mask != -70947757) | v6;
      if (v7 == 2238439)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      if (v7 == 2238439)
      {
        LODWORD(v10) = v8;
      }

      v11 = v7 == 2238422;
      if (v7 == 2238422)
      {
        v7 = 73826;
      }

      else
      {
        v7 = v9;
      }

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    if (v7 != 73826)
    {
      break;
    }

    v7 = 73880;
    if ((v6 & 1) == 0)
    {
      v7 = 2312231;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::PadAndFoldExecute(a1, a2);
}

uint64_t Madusa::AffineTransform::LogPolarRemapExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Madusa::ProfileTimer::ProfileTimer(v11, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0x9F1FDF7F20E080F0, 1906581674);
  func(a1 + 133648, a2, a1 + 98784, a3);
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      v9 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
      v9(0, 104);
    }
  }

  else if (v3[3] == 212 || QuickCodec::mask != -70947757)
  {
    goto LABEL_10;
  }

  Madusa::ProfileTimer::~ProfileTimer(v11);
  return a1 + 98784;
}

uint64_t Madusa::AffineTransform::_LogPolarRemapExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v4 + 1;
    }
  }

  else
  {
    v4 = QuickCodec::mask;
    if (v3[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::LogPolarRemapExecute(a1, a2, a3);
}

uint64_t Madusa::AffineTransform::_LogPolarRemapExecute_Alt(uint64_t a1)
{
  if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
  {
    v2 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v2 + 1;
    }
  }

  else
  {
    v2 = QuickCodec::mask;
    if (v1[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::LogPolarRemapExecute_Alt(a1);
}

uint64_t Madusa::AffineTransform::ImpulseMatchedFilterExecute(uint64_t a1, float a2)
{
  Madusa::ProfileTimer::ProfileTimer(v20, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0x5F7FDFDF8000C0C0, -1312546806);
  func(a1 + 133656, a2);
  v6 = 0;
  v7 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v8 = 9343236;
  }

  else
  {
    v8 = 3592819;
  }

  v9 = 1;
  v10 = 4038623;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v13 = v9;
        if (v10 <= 4038693)
        {
          break;
        }

        if (v10 == 4038694)
        {
          if ((*v6 & 0x1F) != 0 || v6[2] > 0x3Fu || (v9 = 1, v10 = 3592819, v6[3] != ((QuickCodec::mask ^ v7) / 0x3E244C)))
          {
            v10 = 3592873;
            v9 = v13;
          }
        }

        else if (v10 == 7631425)
        {
          v6 = v2;
          v10 = 4038640;
        }

        else
        {
          v14 = v10 == 9343236;
          v10 = 4038694;
          if (v14)
          {
            v7 = -927767901;
          }
        }
      }

      if (v10 <= 4038622)
      {
        break;
      }

      v11 = (QuickCodec::mask != -70947757) | v9;
      if (v10 == 4038640)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      if (v10 == 4038640)
      {
        LODWORD(v13) = v11;
      }

      v14 = v10 == 4038623;
      if (v10 == 4038623)
      {
        v10 = 3592819;
      }

      else
      {
        v10 = v12;
      }

      if (v14)
      {
        v9 = 0;
      }

      else
      {
        v9 = v13;
      }
    }

    if (v10 != 3592819)
    {
      break;
    }

    v10 = 3592873;
    if ((v9 & 1) == 0)
    {
      v10 = 7631425;
    }
  }

  if (v9)
  {
    v15 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v16 = &unk_10003FCF4;
    v17 = -2;
    v18 = -1;
    do
    {
      qword_100074968[v18 + 1 + ((*(v16 - 1) ^ v15) / 0x9D28AF)] = qword_100074968[v18 + ((*v16 ^ v15) / 0x9D28AF)];
      v16 += 2;
      v17 += 2;
      v18 -= 2;
    }

    while (v17 < 0x20);
  }

  Madusa::ProfileTimer::~ProfileTimer(v20);
  return a1 + 133016;
}

uint64_t Madusa::AffineTransform::_ImpulseMatchedFilterExecute(uint64_t a1, float a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::ImpulseMatchedFilterExecute(a1, a2);
}

uint64_t Madusa::AffineTransform::_ImpulseMatchedFilterExecute_Alt(uint64_t a1)
{
  v2.i16[3] = v1[3];
  v2.i16[2] = *v1 | 0xFFE0;
  v2.i16[1] = v2.u8[6];
  v2.i16[0] = v2.i16[2];
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v4 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v2), v3), xmmword_10006A730));
  v5.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A740, v4)).u32[0];
  v5.i32[1] = vmovn_s32(vcgtq_f32(v4, xmmword_10006A740)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v5, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::ImpulseMatchedFilterExecute_Alt(a1);
}

uint64_t Madusa::AffineTransform::FindPeaksExecute(uint64_t a1, uint64_t a2)
{
  Madusa::ProfileTimer::ProfileTimer(v15, &unk_10006BCBB, *(a1 + 8));
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 8651612;
  }

  else
  {
    v7 = 1388973;
  }

  v8 = 1;
  v9 = 553583;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 1388972)
        {
          break;
        }

        if (v9 == 553583)
        {
          v8 = 0;
          v9 = 1388973;
        }

        else if (v9 == 553600)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 1388973, v5[3] != ((QuickCodec::mask ^ v6) / 0x16D66C)))
        {
          v9 = 1389027;
          v8 = v10;
        }
      }

      if (v9 <= 1942538)
      {
        break;
      }

      if (v9 == 1942539)
      {
        v5 = v2;
        v9 = 553600;
      }

      else
      {
        v11 = v9 == 8651612;
        v9 = 553654;
        if (v11)
        {
          v6 = -382927581;
        }
      }
    }

    if (v9 != 1388973)
    {
      break;
    }

    v9 = 1389027;
    if ((v8 & 1) == 0)
    {
      v9 = 1942539;
    }
  }

  if (v8)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v16);
    v16.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v16);
  }

  func = __find_func(0xFF9F5F1F2020A0E0, 287613130);
  v13 = func(a1 + 133672, a2);
  Madusa::ProfileTimer::~ProfileTimer(v15);
  return v13;
}

uint64_t Madusa::AffineTransform::_FindPeaksExecute(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::FindPeaksExecute(a1, a2);
}

uint64_t Madusa::AffineTransform::RefineCandidateList(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  Madusa::ProfileTimer::ProfileTimer(var68, &unk_10006BCBB, *(a1 + 8));
  v24 = 0uLL;
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = a1 + 7440;
    do
    {
      v23 = 0;
      func = __find_func(0x2FDF5F3F2000A000, -1050369814);
      func(a1 + 133688, a2, a3, &v24, &v23);
      if (&v24 != v10)
      {
        *v10 = v24;
      }

      *(v10 + 24) = v23;
      *(v10 + 28) = v9;
      *(v10 + 16) = *(a2 + 16);
      *(v10 + 20) = v12;
      ++v9;
      v10 += 928;
      a2 += 928;
    }

    while (a4 != v9);
  }

  v13 = 0;
  v14 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v15 = 5602011;
  }

  else
  {
    v15 = 4770158;
  }

  v16 = 1;
  v17 = 619522;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v18 = v16;
        if (v17 > 4770157)
        {
          break;
        }

        if (v17 == 619522)
        {
          v16 = 0;
          v17 = 4770158;
        }

        else if (v17 == 619539)
        {
          v16 = (QuickCodec::mask != -70947757) | v16;
          v17 = v15;
        }

        else if ((*v13 & 0x1F) != 0 || v13[2] > 0x3Fu || (v16 = 1, v17 = 4770158, v13[3] != ((QuickCodec::mask ^ v14) / 0x7611E8)))
        {
          v17 = 4770212;
          v16 = v18;
        }
      }

      if (v17 <= 5389662)
      {
        break;
      }

      if (v17 == 5389663)
      {
        v13 = v4;
        v17 = 619539;
      }

      else
      {
        v19 = v17 == 5602011;
        v17 = 619593;
        if (v19)
        {
          v14 = -1711032205;
        }
      }
    }

    if (v17 != 4770158)
    {
      break;
    }

    v17 = 4770212;
    if ((v16 & 1) == 0)
    {
      v17 = 5389663;
    }
  }

  if (v16)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v20 = __find_func(0xDF9FDF1FC0E04070, 824451274);
    v21 = 600;
    while (*v20 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v20[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v20[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v20[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
    {
      v20 += 4;
      if (!--v21)
      {
        goto LABEL_37;
      }
    }

    var68[13] = v20;
    vars8 = 0u;
LABEL_37:
    QuickCodec::mask += 16;
  }

  Madusa::ProfileTimer::~ProfileTimer(var68);
  return a1 + 7440;
}

uint64_t Madusa::AffineTransform::_RefineCandidateList(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 4617796;
  }

  else
  {
    v7 = 3586358;
  }

  v8 = 1;
  v9 = 216246;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 3586357)
        {
          break;
        }

        if (v9 == 216246)
        {
          v8 = 0;
          v9 = 3586358;
        }

        else if (v9 == 216263)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 3586358, v5[3] != ((QuickCodec::mask ^ v6) / 0x3F52FB)))
        {
          v9 = 3586412;
          v8 = v10;
        }
      }

      if (v9 <= 3802586)
      {
        break;
      }

      if (v9 == 3802587)
      {
        v5 = v4;
        v9 = 216263;
      }

      else
      {
        v11 = v9 == 4617796;
        v9 = 216317;
        if (v11)
        {
          v6 = -810165361;
        }
      }
    }

    if (v9 != 3586358)
    {
      break;
    }

    v9 = 3586412;
    if ((v8 & 1) == 0)
    {
      v9 = 3802587;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::RefineCandidateList(a1, a2, a3, a4);
}

void Madusa::AffineTransform::PhaseEstimateExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Madusa::ProfileTimer::ProfileTimer(v7, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0x1F5F5F5F0000C040, -236674934);
  func(a1 + 135256, a2, a3);
  Madusa::ProfileTimer::~ProfileTimer(v7);
}

void Madusa::AffineTransform::_PhaseEstimateExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.i16[3] = v3[3];
  v4.i16[2] = *v3 | 0xFFE0;
  v4.i16[1] = v4.u8[6];
  v4.i16[0] = v4.i16[2];
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v4), v5), xmmword_10006A750));
  v7.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A760, v6)).u32[0];
  v7.i32[1] = vmovn_s32(vcgtq_f32(v6, xmmword_10006A760)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v7, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::AffineTransform::PhaseEstimateExecute(a1, a2, a3);
}

void Madusa::AffineTransform::PhaseDeviationExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Madusa::ProfileTimer::ProfileTimer(v8, &unk_10006BCBB, *(a1 + 8));
  v6 = *Madusa::System::mpSystem == 2;
  func = __find_func(0x4F1FFF1F00E06060, -1583087414);
  func(a1 + 136824, a2, v6, v6, a3);
  Madusa::ProfileTimer::~ProfileTimer(v8);
}

void Madusa::AffineTransform::_PhaseDeviationExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      goto LABEL_5;
    }

LABEL_7:
    QuickCodec::mask = v4 + 1;
    goto LABEL_5;
  }

  v5 = 3503919 * v3[3];
  v4 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x2C46B2EC | v5 & 0x2C46B2EC) + (v5 ^ 0x2C46B2EC | ~(v5 | 0x2C46B2EC)) + 742830828 == (~(~(~(v5 | 0x2C0682E4) | v5 & 0x2C0682E4) | 0x403008) | ~(~(v5 | 0x2C0682E4) | v5 & 0x2C0682E4) & 0x403008) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

LABEL_5:
  Madusa::AffineTransform::PhaseDeviationExecute(a1, a2, a3);
}

int *Madusa::AffineTransform::GetScaleRangeLimits(int *this, int *a2, int *a3)
{
  if (*Madusa::System::mpSystem == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 20;
  }

  if (*Madusa::System::mpSystem == 2)
  {
    v4 = 90;
  }

  else
  {
    v4 = 64;
  }

  *this = v3;
  *a2 = v4;
  return this;
}

uint64_t Madusa::SafeSubBytePixelIndexer::SafeSubBytePixelIndexer(uint64_t result, int a2, int a3, int a4)
{
  *result = a2;
  *(result + 4) = 1;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = a4;
  *(result + 44) = 1;
  *(result + 52) = 1;
  *(result + 48) = a3;
  if ((a2 + 1) <= 0x21 && ((1 << (a2 + 1)) & 0x200020001) != 0)
  {
    a2 = 8;
    *result = 8;
    *(result + 4) = 0;
  }

  if (a3)
  {
    if (a4 > 7)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (!(a4 % a2))
    {
      return result;
    }

    goto LABEL_9;
  }

  *(result + 52) = 0;
  if (a4 <= 7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(result + 44) = 0;
  return result;
}

uint64_t Madusa::SafeSubBytePixelIndexer::SafeSubBytePixelIndexer(uint64_t result, int a2, int a3)
{
  *result = a2;
  *(result + 4) = 1;
  *(result + 8) = 0;
  v3 = 8 - a2;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = 8 - a2;
  *(result + 44) = 1;
  *(result + 52) = 1;
  *(result + 48) = a3;
  if ((a2 + 1) <= 0x21 && ((1 << (a2 + 1)) & 0x200020001) != 0)
  {
    a2 = 8;
    *result = 8;
    *(result + 4) = 0;
  }

  if (a3)
  {
    if (v3 > 7)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (!(v3 % a2))
    {
      return result;
    }

    goto LABEL_9;
  }

  *(result + 52) = 0;
  if (v3 <= 7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(result + 44) = 0;
  return result;
}

int *Madusa::SafeSubBytePixelIndexer::operator+=(int *result, uint64_t a2)
{
  if (*(a2 + 8) != 1)
  {
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 44) = 0;
    return result;
  }

  v2 = *a2;
  if (!*a2)
  {
    return result;
  }

  if (*(result + 16) != 1)
  {
    v5 = result[12];
    v6 = *result;
    v7 = v6 * v5;
    if (v7 < 0)
    {
      v7 = -v7;
    }

    goto LABEL_20;
  }

  v3 = *(result + 1);
  v4 = v3 + v2;
  if (v3 < 0)
  {
    if ((v2 & 0x8000000000000000) == 0 || v4 <= v3)
    {
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) == 0 && v4 < v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  *(result + 1) = v4;
  v2 = *a2;
  v8 = 1;
LABEL_17:
  *(result + 16) = v8;
  v5 = result[12];
  v6 = *result;
  v7 = v6 * v5;
  if (v7 < 0)
  {
    v7 = -v7;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (v2 >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = -v2;
  }

  v10 = HIDWORD(v9);
  v11 = HIDWORD(v7);
  if (!HIDWORD(v9))
  {
    if (v11)
    {
      v12 = v11 * v9;
      if (v12)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    v15 = v7 * v9;
    goto LABEL_33;
  }

  if (v11)
  {
    goto LABEL_42;
  }

  v12 = v10 * v7;
  if (!(v10 * v7))
  {
    goto LABEL_32;
  }

LABEL_26:
  if (HIDWORD(v12))
  {
    goto LABEL_42;
  }

  v13 = v7 * v9;
  v14 = __CFADD__(v13, v12 << 32);
  v15 = v13 + (v12 << 32);
  if (v14)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (((-v7 & ((v6 ^ v5) >> 63) ^ v2) & 0x8000000000000000) == 0)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

LABEL_42:
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v20 = *(result + 32);
    if (v20 != 1)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  if (v15 > 0x8000000000000000)
  {
    goto LABEL_42;
  }

  v15 = -v15;
  if (v15)
  {
LABEL_36:
    v16 = v15 / 8;
    v17 = v15 % 8;
    v18 = 1;
    v19 = 1;
    v20 = *(result + 32);
    if (v20 != 1)
    {
      goto LABEL_53;
    }

LABEL_43:
    *(result + 32) = v18;
    v20 = v18;
    if (!v18)
    {
      goto LABEL_53;
    }

    v21 = *(result + 3);
    v22 = v21 + v16;
    if (v21 < 0)
    {
      if ((v16 & 0x8000000000000000) == 0 || v22 <= v21)
      {
        goto LABEL_51;
      }
    }

    else if (v16 < 0 || v22 >= v21)
    {
LABEL_51:
      *(result + 3) = v22;
      v20 = 1;
      goto LABEL_52;
    }

    v20 = 0;
LABEL_52:
    *(result + 32) = v20;
    goto LABEL_53;
  }

LABEL_40:
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = 1;
  v20 = *(result + 32);
  if (v20 == 1)
  {
    goto LABEL_43;
  }

LABEL_53:
  if ((v17 & 0x80000000) == 0)
  {
    if (result[11])
    {
      goto LABEL_55;
    }

LABEL_72:
    v25 = 0;
    v23 = result[10];
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_59;
  }

  if (v20)
  {
    v27 = *(result + 3);
    v20 = v27 != 0x8000000000000000;
    if (v27 != 0x8000000000000000)
    {
      *(result + 3) = v27 - 1;
    }

    *(result + 32) = v27 != 0x8000000000000000;
  }

  if (v19)
  {
    v17 += 8;
  }

  if ((result[11] & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_55:
  *(result + 44) = v19;
  v23 = result[10];
  if (!v19)
  {
    v25 = 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_59:
    if (v20)
    {
      v26 = *(result + 3);
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(result + 3) = v26 + 1;
      }

      *(result + 32) = v26 != 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      result[10] = v23 + 8;
      *(result + 44) = 1;
    }

    return result;
  }

  v24 = v23 - v17;
  v25 = v24 == v24;
  if (v24 == v24)
  {
    result[10] = v24;
    v23 = v24;
  }

  *(result + 44) = (v24 + 0x80000000) >> 32 == 0;
  if (v23 < 0)
  {
    goto LABEL_59;
  }

LABEL_73:
  if (v23 >= 8)
  {
    if (v20)
    {
      v28 = *(result + 3);
      if (v28 != 0x8000000000000000)
      {
        *(result + 3) = v28 - 1;
      }

      *(result + 32) = v28 != 0x8000000000000000;
    }

    if (v25)
    {
      result[10] = v23 - 8;
      *(result + 44) = 1;
    }
  }

  return result;
}

uint64_t Madusa::SafeSubBytePixelIndexer::IsValid(Madusa::SafeSubBytePixelIndexer *this)
{
  if (*(this + 4) == 1 && *(this + 16) == 1 && *(this + 32) == 1 && *(this + 44) == 1)
  {
    return *(this + 52) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Madusa::EnhancedReferenceSignal::Execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10.i32[0] = *a3;
  v11 = *(a3 + 4);
  v12 = *(a3 + 12);
  v13 = *a5;
  if (*a5 != 4)
  {
    if (v13 == 3)
    {
      v23 = -v10.f32[0];
      v10 = vneg_f32(v11);
      v24 = v10;
      v12 = -v12;
      v25 = v12;
      if (*(a5 + 4) != 1)
      {
        goto LABEL_10;
      }
    }

    else if (v13 == 2)
    {
      v23 = -v11.f32[0];
      LODWORD(v24) = v10.i32[0];
      v14 = -v12;
      v12 = v11.f32[1];
      *(&v24 + 1) = v14;
      v25 = v11.f32[1];
      if (*(a5 + 4) != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = *a3;
      v24 = v11;
      v10.i32[0] = v11.i32[0];
      v25 = v12;
      if (*(a5 + 4) != 1)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v10.f32[0] = -v10.f32[0];
  LODWORD(v23) = *(a3 + 4);
  v24 = __PAIR64__(LODWORD(v12), v10.u32[0]);
  v12 = -v11.f32[1];
  v25 = -v11.f32[1];
  if (*(a5 + 4) == 1)
  {
LABEL_9:
    *&v24 = -v10.f32[0];
    v25 = -v12;
  }

LABEL_10:
  func = __find_func(0xBF5FBFBFA0E0C080, 1373913194);
  func(a1, a2, &v23);
  v16 = __find_func(0x2FBFDF9F40C000A0, -1056694198);
  result = v16(a1, a4, a5);
  v18.i16[0] = *v5 | 0xFFE0;
  v18.i16[1] = v5[3];
  v18.i32[1] = v18.i32[0];
  v19.i64[0] = 0xFF000000FFLL;
  v19.i64[1] = 0xFF000000FFLL;
  v20 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v18), v19), xmmword_10006AA10));
  v21.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA20, v20)).u32[0];
  v21.i32[1] = vmovn_s32(vcgtq_f32(v20, xmmword_10006AA20)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v21, 0xFuLL))) & ((v5[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v22 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    return v22(0, 104);
  }

  return result;
}

uint64_t Madusa::EnhancedReferenceSignal::_Execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6.i16[3] = v5[3];
  v6.i16[2] = *v5 | 0xFFE0;
  v6.i16[1] = v6.u8[6];
  v6.i16[0] = v6.i16[2];
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v6), v7), xmmword_10006AA30));
  v9.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA40, v8)).u32[0];
  v9.i32[1] = vmovn_s32(vcgtq_f32(v8, xmmword_10006AA40)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v9, 0xFuLL))) & ((v5[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::EnhancedReferenceSignal::Execute(a1, a2, a3, a4, a5);
}

float Madusa::EnhancedReferenceSignal::_Execute_Alt()
{
  if ((*v0 & 0x1F) != 0 || v0[2] > 0x3Fu)
  {
    v1 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return 50.0;
    }
  }

  else
  {
    v3 = 204589 * v0[3];
    v1 = QuickCodec::mask;
    if (v3 - (v3 ^ 0x295D144 | v3 & 0x295D144) + (v3 ^ 0x295D144 | ~(v3 | 0x295D144)) + 43372868 != (~(~(~(v3 | 0x2814140) | v3 & 0x2814140) | 0x149004) | ~(~(v3 | 0x2814140) | v3 & 0x2814140) & 0x149004) && QuickCodec::mask == -70947757)
    {
      return 50.0;
    }
  }

  QuickCodec::mask = v1 + 1;
  return 50.0;
}

void Madusa::EnhancedReferenceSignal::PhaseEstimationExecute(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = a1;
  v6 = Madusa::EnhancedReferenceSignal::kGridPointU;
  v7 = 200;
  v8 = a1;
  v9 = Madusa::EnhancedReferenceSignal::kGridPointV;
  do
  {
    v10 = *v9++;
    v11 = v10;
    v12 = *v6++;
    Madusa::RefineCandidates::TransformSinglePoint(a3, v8, v11, v12);
    v8 += 28;
    --v7;
  }

  while (v7);
  v13 = v5 + 5600;
  v14 = 200;
  do
  {
    Madusa::PhaseEstimation::EstimatePhaseAtPoint(a2, v5, v13);
    v5 += 28;
    v13 += 16;
    --v14;
  }

  while (v14);
}

void Madusa::EnhancedReferenceSignal::_PhaseEstimationExecute(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 13627805;
  }

  else
  {
    v6 = 5750966;
  }

  v7 = 1;
  v8 = 2545615;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        if (v8 > 5750965)
        {
          break;
        }

        if (v8 == 2545615)
        {
          v7 = 0;
          v8 = 5750966;
        }

        else if (v8 == 2545632)
        {
          v7 = (QuickCodec::mask != -70947757) | v7;
          v8 = v6;
        }

        else if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 5750966, v4[3] != ((QuickCodec::mask ^ v5) / 0x65570F)))
        {
          v8 = 5751020;
          v7 = v9;
        }
      }

      if (v8 <= 8296563)
      {
        break;
      }

      if (v8 == 8296564)
      {
        v4 = v3;
        v8 = 2545632;
      }

      else
      {
        v10 = v8 == 13627805;
        v8 = 2545686;
        if (v10)
        {
          v5 = -1473678273;
        }
      }
    }

    if (v8 != 5750966)
    {
      break;
    }

    v8 = 5751020;
    if ((v7 & 1) == 0)
    {
      v8 = 8296564;
    }
  }

  if (v7)
  {
    ++QuickCodec::mask;
  }

  Madusa::EnhancedReferenceSignal::PhaseEstimationExecute(a1, a2, a3);
}

float Madusa::EnhancedReferenceSignal::PhaseDeviationExecute(uint64_t a1, float *a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a1 + 9600);
  v6 = a1 + 5600;
  v7 = a1 + 10400;
  v8 = (a1 + 11200);
  v9 = a1 + 8800;
  do
  {
    while (1)
    {
      v5[v4] = ((*&Madusa::EnhancedReferenceSignal::kGridPointPhaseInRadians[v4] * 10430.0) + 0.5);
      if (*(v6 + 12) == 1)
      {
        break;
      }

      *(v7 + v4 * 4) = 0;
      v8[v4] = 0;
      *(v9 + v4 * 4) = v5[v4] + 0x4000;
      v6 += 16;
      if (++v4 == 200)
      {
        goto LABEL_5;
      }
    }

    *(v7 + v4 * 4) = Madusa::EnhancedReferenceSignal::kGridPointV[v4] << 9;
    v8[v4] = Madusa::EnhancedReferenceSignal::kGridPointU[v4] << 9;
    *(v9 + v4 * 4) = vcvts_n_s32_f32(*(v6 + 8), 0x10uLL);
    v6 += 16;
    ++v4;
  }

  while (v4 != 200);
LABEL_5:
  v10 = 200;
  do
  {
    v11 = v5 - 200;
    v12 = *(v5 - 200);
    v13 = *v5++;
    *v11 = (v12 - v13);
    --v10;
  }

  while (v10);
  v14 = vcvts_n_s32_f32(a2[1], 4uLL);
  v15 = vcvts_n_s32_f32(*a2, 4uLL);
  v16 = 6553600;
  v17 = 200;
  do
  {
    v18 = *(v8 - 600);
    v19 = *(v8 - 200);
    v20 = *v8++;
    v16 = ((v18 + (v19 * v15 + v20 * v14) / 16) >> 15) + v16 - ((v18 + (v19 * v15 + v20 * v14) / 16) ^ ((v18 + (v19 * v15 + v20 * v14) / 16) >> 15));
    --v17;
  }

  while (v17);
  v21 = *(a3 + 5);
  v22.i16[0] = *v3 | 0xFFE0;
  v22.i16[1] = v3[3];
  v22.i32[1] = v22.i32[0];
  v23.i64[0] = 0xFF000000FFLL;
  v23.i64[1] = 0xFF000000FFLL;
  v24 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v22), v23), xmmword_10006AA50));
  v25.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA60, v24)).u32[0];
  v25.i32[1] = vmovn_s32(vcgtq_f32(v24, xmmword_10006AA60)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v25, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    v26 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v27 = &unk_10003FCF4;
    v28 = -2;
    v29 = -1;
    do
    {
      qword_100074968[v29 + 1 + ((*(v27 - 1) ^ v26) / 0x9D28AF)] = qword_100074968[v29 + ((*v27 ^ v26) / 0x9D28AF)];
      v27 += 2;
      v28 += 2;
      v29 -= 2;
    }

    while (v28 < 0x20);
  }

  v30 = 6553600 - v16;
  if (6553600 - v16 <= v16)
  {
    v30 = v16;
  }

  if (v21)
  {
    v16 = v30;
  }

  return vcvts_n_f32_s32(v16, 0x10uLL);
}

float Madusa::EnhancedReferenceSignal::_PhaseDeviationExecute(uint64_t a1, float *a2, uint64_t a3)
{
  v4.i16[3] = v3[3];
  v4.i16[2] = *v3 | 0xFFE0;
  v4.i16[1] = v4.u8[6];
  v4.i16[0] = v4.i16[2];
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v4), v5), xmmword_10006AA70));
  v7.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA80, v6)).u32[0];
  v7.i32[1] = vmovn_s32(vcgtq_f32(v6, xmmword_10006AA80)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v7, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::EnhancedReferenceSignal::PhaseDeviationExecute(a1, a2, a3);
}

Madusa::SequenceManager *Madusa::SequenceManager::SequenceManager(Madusa::SequenceManager *this)
{
  *this = 0;
  *(this + 4) = 1;
  bzero(this + 8, 0x7ACuLL);
  *(this + 252) = 0xCD87C0F5E59B85ALL;
  *(this + 23) = -1282469977;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 132) = 0xB38F0FA7B6B35D69;
  *(this + 172) = xmmword_10006B400;
  *(this + 188) = 0;
  *(this + 196) = 0u;
  *(this + 212) = xmmword_10006B410;
  *(this + 228) = 0;
  *(this + 236) = 0u;
  *(this + 33) = 0;
  *(this + 17) = 0u;
  *(this + 65) = 1582938202;
  *(this + 292) = xmmword_10006B420;
  *(this + 308) = 0u;
  *(this + 332) = xmmword_10006B430;
  *(this + 348) = 0u;
  *(this + 372) = 0xCD87C0F8D7BB55ALL;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 412) = 0x5E59B85A4B4B5274;
  *(this + 420) = 0u;
  *(this + 436) = 0u;
  v2 = *(this + 108);
  *(this + 452) = *(this + 92);
  v3 = *(this + 92);
  *(this + 468) = v2;
  v4 = *(this + 148);
  *(this + 492) = *(this + 132);
  *(this + 508) = v4;
  v5 = *(this + 188);
  *(this + 532) = *(this + 172);
  *(this + 548) = v5;
  v6 = *(this + 228);
  *(this + 572) = *(this + 212);
  *(this + 588) = v6;
  v7 = *(this + 388);
  *(this + 612) = *(this + 372);
  *(this + 628) = v7;
  v8 = *(this + 268);
  v9 = *(this + 252);
  *(this + 652) = v9;
  *(this + 668) = v8;
  v10 = *(this + 428);
  v11 = *(this + 412);
  *(this + 692) = v11;
  *(this + 708) = v10;
  v12 = *(this + 308);
  *(this + 732) = *(this + 292);
  *(this + 748) = v12;
  v13 = *(this + 348);
  *(this + 772) = *(this + 332);
  *(this + 788) = v13;
  v14 = *(this + 68);
  *(this + 812) = *(this + 52);
  *(this + 828) = v14;
  *(this + 852) = xmmword_10006B440;
  *(this + 217) = 1263227508;
  *(this + 872) = 0u;
  *(this + 892) = xmmword_10006B450;
  *(this + 227) = 1263227508;
  *(this + 57) = 0u;
  v15 = *(this + 108);
  *(this + 932) = *(this + 92);
  *(this + 948) = v15;
  v16 = *(this + 148);
  *(this + 972) = *(this + 132);
  *(this + 988) = v16;
  v17 = *(this + 868);
  *(this + 1012) = *(this + 852);
  *(this + 1028) = v17;
  v18 = *(this + 388);
  *(this + 1052) = *(this + 372);
  *(this + 1068) = v18;
  v19 = *(this + 268);
  *(this + 1092) = v9;
  *(this + 1108) = v19;
  v20 = *(this + 428);
  *(this + 1132) = *(this + 412);
  *(this + 1148) = v20;
  v21 = *(this + 908);
  *(this + 1172) = *(this + 892);
  *(this + 1188) = v21;
  v22 = *(this + 52);
  v23 = *(this + 68);
  *(this + 1212) = v22;
  *(this + 1228) = v23;
  *(this + 1252) = v22;
  *(this + 1268) = v23;
  *(this + 1292) = *(this + 52);
  *(this + 1308) = *(this + 68);
  *(this + 1336) = xmmword_10006B4E0;
  *(this + 1352) = unk_10006B4F0;
  *(this + 1372) = xmmword_10006B460;
  *(this + 1412) = xmmword_10006B470;
  *(this + 1452) = xmmword_10006B480;
  *(this + 1492) = xmmword_10006B490;
  *(this + 32) = 0;
  *(this + 72) = 0;
  *(this + 324) = 0;
  *(this + 364) = 0;
  *(this + 484) = *(this + 124);
  *(this + 524) = *(this + 164);
  *(this + 564) = *(this + 204);
  *(this + 604) = *(this + 244);
  *(this + 644) = *(this + 404);
  *(this + 684) = *(this + 284);
  *(this + 724) = *(this + 444);
  *(this + 764) = *(this + 324);
  *(this + 804) = *(this + 364);
  *(this + 844) = *(this + 84);
  *(this + 222) = 0;
  *(this + 232) = 0;
  *(this + 964) = *(this + 124);
  *(this + 1004) = *(this + 164);
  *(this + 1044) = *(this + 884);
  *(this + 1084) = *(this + 404);
  *(this + 1124) = *(this + 284);
  *(this + 1164) = *(this + 444);
  *(this + 1204) = *(this + 924);
  v24 = *(this + 84);
  *(this + 1244) = v24;
  *(this + 1284) = v24;
  *(this + 1324) = *(this + 84);
  *(this + 333) = -695048647;
  *(this + 342) = 0;
  *(this + 1388) = 0u;
  *(this + 1404) = 0;
  *(this + 1444) = 0;
  *(this + 1428) = 0u;
  *(this + 1468) = 0u;
  *(this + 1484) = 0;
  *(this + 377) = 1582938202;
  *(this + 1512) = 0u;
  *(this + 191) = 0x8EE86CB400000000;
  *(this + 1540) = 0u;
  *(this + 1556) = 0u;
  *(this + 384) = -962818267;
  v25 = *(this + 108);
  *(this + 1572) = v3;
  *(this + 1588) = v25;
  *(this + 1604) = *(this + 124);
  v26 = *(this + 132);
  v27 = *(this + 148);
  *(this + 1644) = *(this + 164);
  *(this + 1628) = v27;
  *(this + 1612) = v26;
  *(this + 1684) = *(this + 1364);
  v28 = *(this + 1348);
  *(this + 1652) = *(this + 1332);
  *(this + 1668) = v28;
  *(this + 1692) = *(this + 1372);
  *(this + 1708) = *(this + 1388);
  *(this + 1724) = *(this + 1404);
  v29 = *(this + 372);
  v30 = *(this + 388);
  *(this + 1764) = *(this + 404);
  *(this + 1732) = v29;
  *(this + 1748) = v30;
  *(this + 1772) = *(this + 1412);
  *(this + 1804) = *(this + 1444);
  *(this + 1788) = *(this + 1428);
  v31 = *(this + 428);
  *(this + 1812) = v11;
  *(this + 1828) = v31;
  *(this + 1844) = *(this + 444);
  v32 = *(this + 1452);
  v33 = *(this + 1468);
  *(this + 1884) = *(this + 1484);
  *(this + 1868) = v33;
  *(this + 1852) = v32;
  v34 = *(this + 1532);
  *(this + 1924) = *(this + 1564);
  v35 = *(this + 1548);
  *(this + 1892) = v34;
  *(this + 1908) = v35;
  *(this + 1932) = *(this + 1492);
  *(this + 1948) = *(this + 1508);
  *(this + 1964) = *(this + 1524);
  v36 = *(Madusa::System::mpSystem + 32);
  if (v36 <= 1)
  {
    if (v36)
    {
      if (v36 == 1)
      {
        *(this + 1) = this + 452;
        return this;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v36 != 2)
  {
    if (v36 != 3)
    {
LABEL_8:
      atomic_store(0, this + 4);
      return this;
    }

LABEL_7:
    *(this + 1) = this + 932;
    return this;
  }

  *(this + 1) = this + 1572;
  return this;
}

uint64_t Madusa::SequenceManager::ValidateSequence(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 8))
  {
    v7 = 0;
    atomic_store(0, (a1 + 4));
LABEL_24:
    v6 = 4294967292;
    goto LABEL_25;
  }

  v3 = atomic_load((a1 + 4));
  if ((v3 & 1) == 0 || (v4 = atomic_load(a1), v17 = v4, v5 = *(a1 + 8), v14 = *v5, v15 = v5[1], v16 = *(v5 + 4), *v5 != a2) && (v14 = *(v5 + 40), v15 = *(v5 + 56), v16 = *(v5 + 9), v14 != a2) && (v14 = v5[5], v15 = v5[6], v16 = *(v5 + 14), v14 != a2) && (v14 = *(v5 + 120), v15 = *(v5 + 136), v16 = *(v5 + 19), v14 != a2) && (v14 = v5[10], v15 = v5[11], v16 = *(v5 + 24), v14 != a2) && (v14 = *(v5 + 200), v15 = *(v5 + 216), v16 = *(v5 + 29), v14 != a2) && (v14 = v5[15], v15 = v5[16], v16 = *(v5 + 34), v14 != a2) && (v14 = *(v5 + 280), v15 = *(v5 + 296), v16 = *(v5 + 39), v14 != a2) && (v14 = v5[20], v15 = v5[21], v16 = *(v5 + 44), v14 != a2) && (v14 = *(v5 + 360), v15 = *(v5 + 376), v16 = *(v5 + 49), v14 != a2))
  {
    v7 = 0;
    goto LABEL_24;
  }

  if (v17 == DWORD1(v14) || v17 == DWORD2(v14) || v17 == HIDWORD(v14) || v17 == v15 || v17 == DWORD1(v15) || v17 == DWORD2(v15) || v17 == HIDWORD(v15) || v17 == v16)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v7 = v17 == HIDWORD(v16);
    if (v17 == HIDWORD(v16))
    {
      v6 = 0;
    }

    else
    {
      v6 = 4294967292;
    }
  }

LABEL_25:
  atomic_store(a2, a1);
  atomic_store(v7, (a1 + 4));
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      return v6;
    }

    goto LABEL_34;
  }

  if (v2[3] == 212 || QuickCodec::mask != -70947757)
  {
LABEL_34:
    v9 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v10 = &unk_10003FCF4;
    v11 = -2;
    v12 = -1;
    do
    {
      qword_100074968[v12 + 1 + ((*(v10 - 1) ^ v9) / 0x9D28AF)] = qword_100074968[v12 + ((*v10 ^ v9) / 0x9D28AF)];
      v10 += 2;
      v11 += 2;
      v12 -= 2;
    }

    while (v11 < 0x20);
  }

  return v6;
}

uint64_t Madusa::SequenceManager::_ValidateSequence(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 11712086;
  }

  else
  {
    v5 = 1964791;
  }

  v6 = 1;
  v7 = 2233123;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v6;
        if (v7 <= 2233193)
        {
          break;
        }

        if (v7 == 2233194)
        {
          if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 1964791, v3[3] != ((QuickCodec::mask ^ v4) / 0x1E0C62)))
          {
            v7 = 1964845;
            v6 = v10;
          }
        }

        else if (v7 == 4197897)
        {
          v3 = v2;
          v7 = 2233140;
        }

        else
        {
          v11 = v7 == 11712086;
          v7 = 2233194;
          if (v11)
          {
            v4 = -483971717;
          }
        }
      }

      if (v7 <= 2233122)
      {
        break;
      }

      v8 = (QuickCodec::mask != -70947757) | v6;
      if (v7 == 2233140)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      if (v7 == 2233140)
      {
        LODWORD(v10) = v8;
      }

      v11 = v7 == 2233123;
      if (v7 == 2233123)
      {
        v7 = 1964791;
      }

      else
      {
        v7 = v9;
      }

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    if (v7 != 1964791)
    {
      break;
    }

    v7 = 1964845;
    if ((v6 & 1) == 0)
    {
      v7 = 4197897;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::SequenceManager::ValidateSequence(a1, a2);
}

uint64_t Madusa::SequenceManager::ValidateAcknowledge(unsigned int *a1, unsigned int *a2)
{
  *a2 = 0;
  v5 = atomic_load(a1);
  switch(v5)
  {
    case 0xC69C8F25:
      v6 = -1897370444;
      goto LABEL_7;
    case 0x5E59B85Au:
      v6 = 1263227508;
      goto LABEL_7;
    case 0xCD87C0Fu:
      v6 = -1921272486;
LABEL_7:
      *a2 = v6;
      break;
  }

  v7.i16[0] = *v2 | 0xFFE0;
  v7.i16[1] = v2[3];
  v7.i32[1] = v7.i32[0];
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v7), v8), xmmword_10006B4A0));
  v10.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B4B0, v9)).u32[0];
  v10.i32[1] = vmovn_s32(vcgtq_f32(v9, xmmword_10006B4B0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v13);
    v13.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v13);
  }

  func = __find_func(0xFF3F5F5F00C0A050, 293904522);
  return func(a1, *a2);
}

uint64_t Madusa::SequenceManager::_ValidateAcknowledge(unsigned int *a1, unsigned int *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006B4C0));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B4D0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006B4D0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::SequenceManager::ValidateAcknowledge(a1, a2);
}

uint64_t SDKStartup(uint64_t a1)
{
  CConfigFPU::CConfigFPU(&v26);
  Madusa::RandomNumGenerator::RandomNumGenerator(v25);
  Madusa::Session::gSessionOffset = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey0 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey1 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey2 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey3 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  *&off_1000748E8 = 0u;
  *&off_1000748F8 = 0u;
  *&qword_100074908 = 0u;
  dword_1000748E0 = -1;
  if (!a1)
  {
    v10 = 4294967194;
    goto LABEL_45;
  }

  v3 = *(a1 + 16);
  if (v3 != 512)
  {
    if (v3 == 256)
    {
      if (*a1 != 56)
      {
        goto LABEL_34;
      }

      off_100074918 = *(a1 + 24);
      off_100074920 = *(a1 + 40);
      Madusa::MemoryMaster::SetMemoryAllocatorAndDeallocator(sub_100026308, *(a1 + 32), sub_100026324, *(a1 + 48), v2);
    }

    else
    {
      if (v3 != 157 || *a1 != 32)
      {
        goto LABEL_34;
      }

      v4 = *(a1 + 24);
      if (v4 != 51348)
      {
        v5 = (*(v4 - 51340) - 2096209194);
        off_1000748E8 = (*(v4 - 51348) - 1506747311);
        off_1000748F0 = v5;
        v6 = (*(v4 - 51324) - 1950008364);
        off_1000748F8 = (*(v4 - 51332) - 1621769547);
        off_100074900 = v6;
        v7 = (*(v4 - 51308) - 1563763406);
        qword_100074908 = *(v4 - 51316) - 1697636733;
        off_100074910 = v7;
        dword_1000748E0 = *(v4 - 51300);
        v8 = 1;
        v9 = *(a1 + 8);
        if (!v9)
        {
          goto LABEL_36;
        }

        goto LABEL_13;
      }
    }
  }

  v8 = 0;
  v9 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_36;
  }

LABEL_13:
  v11 = *(v9 + 16);
  if (v11 != 157)
  {
    if (v11 != 512)
    {
      if (v11 != 256 || *v9 != 56)
      {
        goto LABEL_34;
      }

      off_100074918 = *(v9 + 24);
      off_100074920 = *(v9 + 40);
      Madusa::MemoryMaster::SetMemoryAllocatorAndDeallocator(sub_100026308, *(v9 + 32), sub_100026324, *(v9 + 48), v2);
      v12 = *(v9 + 8);
      if (!v12)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

LABEL_24:
    v12 = *(v9 + 8);
    if (!v12)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if (*v9 != 32)
  {
    goto LABEL_34;
  }

  if (v8)
  {
LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

  v13 = *(v9 + 24);
  if (v13 != 51348)
  {
    v14 = (*(v13 - 51340) - 2096209194);
    off_1000748E8 = (*(v13 - 51348) - 1506747311);
    off_1000748F0 = v14;
    v15 = (*(v13 - 51324) - 1950008364);
    off_1000748F8 = (*(v13 - 51332) - 1621769547);
    off_100074900 = v15;
    v16 = (*(v13 - 51308) - 1563763406);
    qword_100074908 = *(v13 - 51316) - 1697636733;
    off_100074910 = v16;
    dword_1000748E0 = *(v13 - 51300);
    goto LABEL_23;
  }

  v8 = 0;
  v12 = *(v9 + 8);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_25:
  v17 = *(v12 + 16);
  if (v17 == 157)
  {
    if (*v12 == 32)
    {
      if ((v8 & 1) == 0)
      {
        v18 = *(v12 + 24);
        if (v18 != 51348)
        {
          v19 = (*(v18 - 51340) - 2096209194);
          off_1000748E8 = (*(v18 - 51348) - 1506747311);
          off_1000748F0 = v19;
          v20 = (*(v18 - 51324) - 1950008364);
          off_1000748F8 = (*(v18 - 51332) - 1621769547);
          off_100074900 = v20;
          v21 = (*(v18 - 51308) - 1563763406);
          qword_100074908 = *(v18 - 51316) - 1697636733;
          off_100074910 = v21;
          dword_1000748E0 = *(v18 - 51300);
        }
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v17 != 512)
  {
    if (v17 == 256 && *v12 == 56)
    {
      off_100074918 = *(v12 + 24);
      off_100074920 = *(v12 + 40);
      Madusa::MemoryMaster::SetMemoryAllocatorAndDeallocator(sub_100026308, *(v12 + 32), sub_100026324, *(v12 + 48), v2);
      goto LABEL_36;
    }

LABEL_34:
    v10 = 4294967293;
    goto LABEL_45;
  }

LABEL_36:
  if (off_100074900)
  {
    v22 = off_1000748F8 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22 || off_1000748F0 == 0)
  {
    v10 = 4294967194;
  }

  else
  {
    v10 = 0;
  }

LABEL_45:
  CConfigFPU::~CConfigFPU(&v26);
  return v10;
}

uint64_t SDKAcknowledge(int a1, void *a2, Madusa::Session *this)
{
  v5 = Madusa::Session::UnscrambleSessionPointer(this, a2);
  if (!v5)
  {
    return 4294967293;
  }

  v6 = qword_100074908;

  return Madusa::Session::Acknowledge(v5, a1, v6, a2);
}

uint64_t SDKInitialize(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (!a4)
  {
    return 4294967293;
  }

  CConfigFPU::CConfigFPU(&v18);
  v7 = Madusa::MemoryMaster::Create(0x13B8);
  if (*Madusa::System::mpSystem == 3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (v7 && (v9 = v7, (v10 = (*(*v7 + 16))(v7, 5048)) != 0))
  {
    v11 = v10;
    v12 = Madusa::Session::Session(v10, v9, v8);
    *a4 = Madusa::Session::ScrambleSessionPointer(v12);
    Madusa::Session::SetParallelFor(v11, sub_100024F00, 0);
    Madusa::Session::SetProcessParams(v11, a1);
    Madusa::Session::SetStorageRequirements(v11, dword_1000748E0);
    if (off_1000748E8)
    {
      if (a1)
      {
        a1 = *(a1 + 8);
      }

      CConfigFPU::ConfigForUserCode(&v18);
      v13 = off_1000748E8;
      func = __find_func(0xDFBF3F7FE0406020, 822395050);
      v15 = func(v11 + 136, 3012497319);
      v13(v15, a1);
      CConfigFPU::ConfigForSDKCode(&v18);
    }

    v16 = Madusa::Session::ValidateSequence(v11, 3012497319);
  }

  else
  {
    v16 = 4294967294;
  }

  CConfigFPU::~CConfigFPU(&v18);
  return v16;
}

uint64_t sub_100024F00(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = a3;
  Madusa::MemoryMaster::MemoryMaster(v17, a3);
  if (Madusa::MemoryMaster::Valid(v17))
  {
    Buffer = Madusa::MemoryMaster::AllocateBuffer(v17, v7);
    if (Buffer)
    {
      v10 = Buffer;
      CConfigFPU::CConfigFPU(&v18);
      v12 = Madusa::Session::UnscrambleSessionPointer(a4, v11);
      v13 = 4294967293;
      if (a1 <= a2)
      {
        v14 = v12;
        if (v12)
        {
          v15 = Madusa::Session::ValidateSequence(v12, 1582938202);
          if (v15 || (v15 = Madusa::Session::ProcessRange(v14, a1, a2, v10, &v18), v15))
          {
            v13 = v15;
          }

          else if (*(v14 + 128))
          {
            v13 = 0;
          }

          else
          {
            v13 = 4294967195;
          }
        }
      }

      CConfigFPU::~CConfigFPU(&v18);
      Buffer = v10;
    }

    else
    {
      v13 = 4294967294;
    }

    Madusa::MemoryMaster::DeAllocateBuffer(Buffer, v9);
  }

  else
  {
    v13 = 4294967294;
  }

  Madusa::MemoryMaster::Deallocate(v17);
  Madusa::MemoryMaster::~MemoryMaster(v17);
  return v13;
}

uint64_t SDKProcessImageData(uint64_t a1, _DWORD *a2)
{
  v3 = Madusa::Session::UnscrambleSessionPointer(a1, a2);
  result = 4294967293;
  if (a2)
  {
    if (v3)
    {
      result = Madusa::Session::ValidateSequence(v3, 215514127);
      if (!result)
      {
        *(a2 + 1) = 0u;
        *(a2 + 5) = 0u;
        *(a2 + 9) = -1;
        *(a2 + 11) = -1;
        a2[13] = -1;
        *(a2 + 14) = 0u;
        *(a2 + 18) = 0u;
        *(a2 + 22) = 0u;
        *(a2 + 26) = 0u;
        *(a2 + 29) = 0u;
        *(a2 + 34) = 0u;
        *(a2 + 38) = 0u;
        *(a2 + 42) = 0u;
        *a2 = 184;
        CConfigFPU::CConfigFPU(&v32);
        CConfigFPU::ConfigForUserCode(v5);
        v6 = off_1000748F0;
        if (!off_1000748F0)
        {
          DetectorAndDetect = 4294967194;
LABEL_43:
          CConfigFPU::~CConfigFPU(&v32);
          return DetectorAndDetect;
        }

        func = __find_func(0xDFDF7F5FA0000060, 828670090);
        v8 = func(v3 + 136, 3857773005);
        (v6)(v8, a2, a2 + 46);
        CConfigFPU::ConfigForSDKCode(&v32);
        if (*a2 == 184)
        {
          Madusa::Session::ValidateSecureParams(v3, a2);
          if (*(Madusa::System::mpSystem + 32) != 1)
          {
            v9 = a2[3];
            v10 = a2[4];
            goto LABEL_14;
          }

          v9 = *(v3 + 1163);
          if (v9 != a2[3])
          {
            goto LABEL_42;
          }

          v10 = *(v3 + 1164);
          if (v10 != a2[4])
          {
            goto LABEL_42;
          }

          if (*(v3 + 1160) <= 1u)
          {
            if (*(v3 + 1162) != a2[1])
            {
              goto LABEL_42;
            }

LABEL_14:
            if (v9 <= v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = v9;
            }

            if (v9 >= v10)
            {
              v9 = v10;
            }

            if (v9 >= 1 && (v12 / v9) <= 1.03)
            {
              a2[3] = v12;
              a2[4] = v12;
            }

            Madusa::ImageParamsAdjuster::ImageParamsAdjuster(v30, a2);
            Madusa::ImageParamsAdjuster::Adjust(v30);
            if (*(Madusa::System::mpSystem + 32) == 1)
            {
              Madusa::BandModeImageParamsValidator::BandModeImageParamsValidator(v31, a2, v3);
              v13 = Madusa::ImageParamsValidator::Validate(v31);
              if (v13 == -4)
              {
                CConfigFPU::ConfigForUserCode(&v32);
                v26 = off_1000748F8;
                if (off_1000748F8 && *(Madusa::System::mpSystem + 32) != 2)
                {
                  v27 = __find_func(0xBFFFDFFF0000E0F0, 1363419178);
                  v28 = v27(v3 + 136, 3445273946);
                  NotificationParam = Madusa::Session::GetNotificationParam(v3);
                  v26(v28, NotificationParam);
                }

                CConfigFPU::ConfigForSDKCode(&v32);
                Madusa::Session::UnlockSecureParams(v3);
                DetectorAndDetect = 0;
              }

              else
              {
                DetectorAndDetect = v13;
                if (!v13)
                {
                  ConvertImageParams(a2, v31);
                  ProcessImageProperties = CreateProcessImageProperties(a2, v30);
                  DetectorAndDetect = Madusa::Session::CreateDetectorAndDetect(v3, v31, ProcessImageProperties, v30, &v32);
                  if (!DetectorAndDetect)
                  {
                    v15 = __find_func(0xFF1F1FDF00202070, 296017930);
                    v16 = v15(v3);
                    if (v16 && off_100074900)
                    {
                      CConfigFPU::ConfigForUserCode(&v32);
                      v17 = off_100074900;
                      v18 = __find_func(0x1F3FBF5F60A0C040, -242990966);
                      v19 = v18(v3 + 136, 2621311653);
                      v20 = Madusa::Session::GetNotificationParam(v3);
                      v17(v19, v20);
                      CConfigFPU::ConfigForSDKCode(&v32);
                    }

                    if (off_1000748F8)
                    {
                      v21 = v16;
                    }

                    else
                    {
                      v21 = 1;
                    }

                    if ((v21 & 1) == 0 && *(Madusa::System::mpSystem + 32) != 2)
                    {
                      CConfigFPU::ConfigForUserCode(&v32);
                      v22 = off_1000748F8;
                      v23 = __find_func(0x8F5F1FDFC020E0C0, 1642389514);
                      v24 = v23(v3 + 136, 3445273946);
                      v25 = Madusa::Session::GetNotificationParam(v3);
                      v22(v24, v25);
                      CConfigFPU::ConfigForSDKCode(&v32);
                    }
                  }

                  Madusa::Session::UnlockSecureParams(v3);
                }
              }
            }

            else
            {
              DetectorAndDetect = 0xFFFFFFFFLL;
            }

            goto LABEL_43;
          }

          if (*(v3 + 1161) == a2[2])
          {
            goto LABEL_14;
          }
        }

LABEL_42:
        DetectorAndDetect = 4294967293;
        goto LABEL_43;
      }
    }
  }

  return result;
}

uint64_t SDKInitializeBanding(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v13);
  if (*(Madusa::System::mpSystem + 32) == 1)
  {
    v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
    v6 = 4294967293;
    if (a2)
    {
      if (v5)
      {
        if (*a2 == 24 && (vmaxv_u16(vmovn_s32(vclezq_s32(*(a2 + 4)))) & 1) == 0 && *(a2 + 20) <= 3u)
        {
          v7 = v5;
          v6 = Madusa::Session::ValidateSequence(v5, 2042132827);
          if (!v6)
          {
            v11 = 0uLL;
            v12 = 0;
            ConvertPageParams(a2, &v11);
            v9 = v11;
            v10 = v12;
            Madusa::ZnTimer::Reset(v7 + 4672);
            *(v7 + 4640) = v9;
            *(v7 + 4656) = v10;
            Madusa::Session::DestroyDetector(v7);
            *(v7 + 5040) = 0;
            if (*(v7 + 128))
            {
              v6 = 0;
            }

            else
            {
              v6 = 4294967195;
            }

            Madusa::Session::IncrementLevel(v7);
          }
        }
      }
    }
  }

  else
  {
    v6 = 4294967292;
  }

  CConfigFPU::~CConfigFPU(&v13);
  return v6;
}

uint64_t SDKTerminate(uint64_t a1)
{
  CConfigFPU::CConfigFPU(&v15);
  v3 = Madusa::Session::UnscrambleSessionPointer(a1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = Madusa::Session::ValidateSequence(v3, 4116428122);
    if (!v5)
    {
      if (off_100074910)
      {
        CConfigFPU::ConfigForUserCode(&v15);
        v6 = off_100074910;
        func = __find_func(0x1F1FBF9FE0A0A020, -240893878);
        v8 = func(v4 + 136, 4116428122);
        StatusParam = Madusa::Session::GetStatusParam(v4);
        v6(v8, StatusParam);
        CConfigFPU::ConfigForSDKCode(&v15);
      }

      v10 = v4[128];
      SessionMemory = Madusa::Session::GetSessionMemory(v4);
      (**v4)(v4);
      Madusa::MemoryMaster::DeAllocateBuffer(v4, v12);
      Madusa::MemoryMaster::Deallocate(SessionMemory);
      Madusa::MemoryMaster::Destroy(SessionMemory, v13);
      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = 4294967195;
      }
    }
  }

  else
  {
    v5 = 4294967293;
  }

  CConfigFPU::~CConfigFPU(&v15);
  return v5;
}

uint64_t SDKTerminateBanding(uint64_t a1)
{
  CConfigFPU::CConfigFPU(&v7);
  if (*(Madusa::System::mpSystem + 32) == 1)
  {
    v3 = Madusa::Session::UnscrambleSessionPointer(a1, v2);
    if (v3)
    {
      v4 = v3;
      v5 = Madusa::Session::ValidateSequence(v3, 3915733459);
      if (!v5)
      {
        if (*(v4 + 128))
        {
          v5 = 0;
        }

        else
        {
          v5 = 4294967195;
        }

        Madusa::Session::DecrementLevel(v4);
        Madusa::Session::UnlockSecureParams(v4);
        Madusa::Session::FinishPage(v4);
      }
    }

    else
    {
      v5 = 4294967293;
    }
  }

  else
  {
    v5 = 4294967292;
  }

  CConfigFPU::~CConfigFPU(&v7);
  return v5;
}

uint64_t SDKInitializeParallel(uint64_t a1, int (*a2)(int, int, unsigned int, void *, void *), void *a3)
{
  CConfigFPU::CConfigFPU(&v11);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  v8 = 4294967293;
  if (a2)
  {
    v9 = v7;
    if (v7)
    {
      if (Madusa::Session::ValidateSequence(v7, 3065208169))
      {
        v8 = 4294967292;
      }

      else
      {
        Madusa::Session::SetParallelFor(v9, a2, a3);
        if (*(v9 + 128))
        {
          v8 = 0;
        }

        else
        {
          v8 = 4294967195;
        }
      }
    }
  }

  CConfigFPU::~CConfigFPU(&v11);
  return v8;
}

uint64_t SDKProcessRange(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  CConfigFPU::CConfigFPU(&v14);
  v9 = Madusa::Session::UnscrambleSessionPointer(a4, v8);
  v10 = 4294967293;
  if (a1 <= a2)
  {
    v11 = v9;
    if (v9)
    {
      v12 = Madusa::Session::ValidateSequence(v9, 1582938202);
      if (v12 || (v12 = Madusa::Session::ProcessRange(v11, a1, a2, a3, &v14), v12))
      {
        v10 = v12;
      }

      else if (*(v11 + 128))
      {
        v10 = 0;
      }

      else
      {
        v10 = 4294967195;
      }
    }
  }

  CConfigFPU::~CConfigFPU(&v14);
  return v10;
}

uint64_t SDKStoreWidth(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreWidth(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreHeight(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreHeight(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreXDotsPerInch(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreXDotsPerInch(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreYDotsPerInch(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreYDotsPerInch(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreColorModel(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreColorModel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreAlphaChannel(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreAlphaChannel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreBitsPerPixelPerColor(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreBitsPerPixelPerColor(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreDataType(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreDataType(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStorePaletteColorModel(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StorePaletteColorModel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStorePaletteBitsPerPixelPerColor(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StorePaletteBitsPerPixelPerColor(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreInverted(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreInverted(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreDataAccessFormat(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreDataAccessFormat(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreXStride(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreXStride(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreYStride(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreYStride(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

void SDKAssignWidth(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignWidth(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignHeight(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignHeight(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignXDotsPerInch(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignXDotsPerInch(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignYDotsPerInch(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignYDotsPerInch(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignColorModel(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignColorModel(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignAlphaChannel(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignAlphaChannel(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignBitsPerPixelPerColor(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignBitsPerPixelPerColor(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignDataType(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignDataType(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignPaletteColorModel(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignPaletteColorModel(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignPaletteBitsPerPixelPerColor(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignPaletteBitsPerPixelPerColor(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignInverted(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignInverted(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignDataAccessFormat(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignDataAccessFormat(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignXStride(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignXStride(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignYStride(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignYStride(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

uint64_t sub_100026308(unint64_t a1)
{
  if (HIDWORD(a1))
  {
    return 0;
  }

  else
  {
    return off_100074918();
  }
}

uint64_t Madusa::BandModeDetector::BandModeDetector(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 40960;
  v4 = Madusa::DetectorBase::DetectorBase(a1, a2);
  *v4 = off_100070998;
  v5 = v4 + 8;
  *(v3 + 2032) = 0;
  *(v3 + 2040) = 1;
  *(v3 + 2044) = 0;
  *(v3 + 2048) = 1;
  *(v3 + 2052) = 0;
  *(v3 + 2056) = 1;
  *(v3 + 2060) = 0;
  *(v3 + 2064) = 1;
  *(v3 + 2068) = 0;
  *(v3 + 2072) = 1;
  *(v3 + 2076) = 0;
  *(v3 + 2080) = 1;
  *(v3 + 2084) = 0;
  *(v3 + 2088) = 1;
  *(v3 + 2092) = 0;
  *(v3 + 2096) = 1;
  *(v3 + 2100) = 1;
  *(v3 + 2104) = 0u;
  *(v3 + 2104) = Madusa::System::CreateBandModeUtil(v4);
  Madusa::BlockPicker::SetBandRowOfBlocksAdvance(v5, 64);
  return a1;
}

void Madusa::BandModeDetector::~BandModeDetector(Madusa::BandModeDetector *this)
{
  v2 = this + 40960;
  *this = off_100070998;
  v3 = *(this + 5384);
  if (v3)
  {
    v4 = (*(*v3 + 48))(v3);
    if (v4)
    {
      v5 = v4;
      (**v4)();
      Madusa::MemoryMaster::DeAllocateBuffer(v5, v6);
    }

    v7 = *(v2 + 264);
    if (v7)
    {
      (**v7)(v7);
      Madusa::MemoryMaster::DeAllocateBuffer(*(v2 + 264), v8);
      *(v2 + 264) = 0;
    }
  }

  Madusa::System::DisposeBandModeUtil();

  Madusa::DetectorBase::~DetectorBase(this);
}

{
  Madusa::BandModeDetector::~BandModeDetector(this);

  operator delete();
}

unint64_t Madusa::BandModeDetector::GetExtraWorkingMemorySize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v2;
  v14 = *(a1 + 224);
  v3 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v3;
  v4 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v4;
  v5 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v5;
  v6 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v8;
  Madusa::BandModeDetector::AdjustImageDataForBandOrder(a2, v13, a1);
  Madusa::MemoryMaster::MemoryMaster(v15, 0);
  v9 = sub_100029CD0(v13);
  Madusa::MemoryMaster::~MemoryMaster(v15);
  v10 = sub_100029B3C(v13);
  if ((v11 & 1) == 0 || v10 > 0xFFFFFFFFFFFFFF77)
  {
    return 0;
  }

  if (v9 + v10 + 136 < v9)
  {
    return 0;
  }

  return v9 + v10 + 136;
}

uint64_t Madusa::BandModeDetector::AdjustImageDataForBandOrder(int a1, Madusa::ImageProperties *a2, Madusa::ImageProperties *a3)
{
  Madusa::VirtualRotator::VirtualRotator(v12);
  result = 1;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      if ((*Madusa::ImageProperties::GetYStride(a2) & 0x80000000) != 0)
      {
        return 1;
      }
    }

    else if ((*Madusa::ImageProperties::GetYStride(a2) & 0x80000000) == 0)
    {
      return 1;
    }

    Bounds = Madusa::ImageProperties::GetBounds(a3);
    v11 = v8;
    return Madusa::VirtualRotator::Rotate180(v12, &Bounds, a2);
  }

  if (a1 == 2)
  {
    Bounds = Madusa::ImageProperties::GetBounds(a3);
    v11 = v9;
    return Madusa::VirtualRotator::Rotate90CW(v12, &Bounds, a2);
  }

  else if (a1 == 3)
  {
    Bounds = Madusa::ImageProperties::GetBounds(a3);
    v11 = v7;
    return Madusa::VirtualRotator::Rotate90CCW(v12, &Bounds, a2);
  }

  return result;
}

uint64_t Madusa::BandModeDetector::SetExtraWorkingMemory(Madusa::BandModeDetector *this, Madusa::MemoryMaster *a2)
{
  v5 = this + 40960;
  ImageParams = Madusa::DetectorBase::GetImageParams(this);
  v8 = *(ImageParams + 16);
  v7 = *(ImageParams + 32);
  v31[0] = *ImageParams;
  v31[1] = v8;
  v31[2] = v7;
  v9 = *(ImageParams + 96);
  v11 = *(ImageParams + 48);
  v10 = *(ImageParams + 64);
  v31[5] = *(ImageParams + 80);
  v31[6] = v9;
  v31[3] = v11;
  v31[4] = v10;
  v12 = *(ImageParams + 160);
  v14 = *(ImageParams + 112);
  v13 = *(ImageParams + 128);
  v31[9] = *(ImageParams + 144);
  v31[10] = v12;
  v31[7] = v14;
  v31[8] = v13;
  v16 = *(ImageParams + 192);
  v15 = *(ImageParams + 208);
  v17 = *(ImageParams + 176);
  v32 = *(ImageParams + 224);
  v31[12] = v16;
  v31[13] = v15;
  v31[11] = v17;
  sub_100026AE0(v31, a2);
  *(v5 + 264) = v18;
  if (v18)
  {
    (*(*v18 + 16))(v18, v31);
    Madusa::ImageProperties::GetSafeBounds(&v26, v31);
    if (v5 + 2068 != &v26)
    {
      *(v5 + 517) = v26.i32[0];
      v5[2072] = v26.i8[4];
      *(v5 + 519) = v26.i32[2];
      v5[2080] = v26.i8[12];
      *(v5 + 521) = v27;
      v5[2088] = v28;
      *(v5 + 523) = v29;
      v5[2096] = v30;
    }

    if (Madusa::ImageProperties::ShouldDownsample(v31))
    {
      v24 = 0x100000001;
      v25 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(v31, &v25, &v24);
      sub_10001F8DC(v5 + 517, &v25, &v24, &v26);
      if (v5 + 2068 != &v26)
      {
        *(v5 + 517) = v26.i32[0];
        v5[2072] = v26.i8[4];
        *(v5 + 519) = v26.i32[2];
        v5[2080] = v26.i8[12];
        *(v5 + 521) = v27;
        v5[2088] = v28;
        *(v5 + 523) = v29;
        v5[2096] = v30;
      }
    }

    if (v5[2072] == 1 && v5[2080] == 1 && v5[2088] == 1)
    {
      v19 = v5[2096];
    }

    else
    {
      v19 = 0;
    }

    func = __find_func(0x3F9F5F5F80A080B0, -786128758);
    func(this);
  }

  else
  {
    v19 = 0;
  }

  if ((*v2 & 0x1F) == 0 && v2[2] <= 0x3Fu && v2[3] == 212 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v21 = __find_func(0xDF9FDF1FC0E04070, 824451274);
    v22 = 600;
    while (*v21 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v21[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v21[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v21[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
    {
      v21 += 4;
      if (!--v22)
      {
        goto LABEL_25;
      }
    }

    vars0 = v21;
    vars8 = 0u;
LABEL_25:
    QuickCodec::mask += 16;
  }

  return v19 & 1;
}

void sub_100026AE0(Madusa::ImageProperties *a1, uint64_t a2)
{
  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  v5 = (*(*a2 + 16))(a2, 136);
  if (v5)
  {
    v6 = v5;
    *(v5 + 24) = 0;
    *(v5 + 32) = 1;
    *(v5 + 120) = a2;
    *(v5 + 128) = ResolutionBucket;
    *(v5 + 40) = 0;
    *(v5 + 48) = 1;
    *(v5 + 56) = 0;
    *(v5 + 60) = 1;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = 1;
    *v5 = off_1000709E8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
    *(v5 + 88) = 0;
    *(v5 + 96) = 1;
    *(v5 + 104) = 0;
    *(v5 + 112) = 1;
    v7 = sub_100029B3C(a1);
    v9 = v8;
    Madusa::ImageProperties::GetSafeBounds(&v15, a1);
    if (Madusa::ImageProperties::ShouldDownsample(a1))
    {
      v21 = 0x100000001;
      v22 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(a1, &v22, &v21);
      sub_10001F8DC(v15.i32, &v22, &v21, v18);
      v10 = v19;
      v11 = v20;
      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v11 = v17;
      v10 = v16;
      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    if (v11)
    {
      if (v10 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = -v10;
      }

      (*(*v6 + 16))(v6, &v15, &v15, v7, v12);
      sub_10002A564(a1, a2, v6);
      if (!v13)
      {
        (**v6)(v6);
        Madusa::MemoryMaster::DeAllocateBuffer(v6, v14);
      }
    }
  }
}

uint64_t Madusa::BandModeDetector::_SetBandOrder(uint64_t result, int a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006B510));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B520, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006B520)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::BandModeDetector::SetBandOrder(result, a2);
}

uint64_t Madusa::BandModeDetector::SetImageParams(Madusa::BandModeDetector *this, const Madusa::ImageProperties *a2, Madusa::MemoryMaster *a3)
{
  v5 = *(a2 + 13);
  v14[12] = *(a2 + 12);
  v14[13] = v5;
  v15 = *(a2 + 28);
  v6 = *(a2 + 9);
  v14[8] = *(a2 + 8);
  v14[9] = v6;
  v7 = *(a2 + 11);
  v14[10] = *(a2 + 10);
  v14[11] = v7;
  v8 = *(a2 + 5);
  v14[4] = *(a2 + 4);
  v14[5] = v8;
  v9 = *(a2 + 7);
  v14[6] = *(a2 + 6);
  v14[7] = v9;
  v10 = *(a2 + 1);
  v14[0] = *a2;
  v14[1] = v10;
  v11 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v11;
  v12 = Madusa::BandModeDetector::AdjustImageDataForBandOrder(*(this + 10748), v14, a2);
  return Madusa::DetectorBase::SetImageProperties(this, v14, a3) & v12;
}

uint64_t Madusa::BandModeDetector::ProcessBand(Madusa::BandModeDetector *this, Madusa::ImageProperties *a2)
{
  v3 = this + 40960;
  if (!*(this + 5384))
  {
    if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
    {
      if (QuickCodec::mask == -70947757)
      {
        return 2;
      }
    }

    else
    {
      v24 = v2[3] != 212 && QuickCodec::mask == -70947757;
      if (v24)
      {
        return 2;
      }
    }

    v35 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v36 = &unk_10003FCF4;
    v37 = -2;
    v38 = -1;
    do
    {
      qword_100074968[v38 + 1 + ((*(v36 - 1) ^ v35) / 0x9D28AF)] = qword_100074968[v38 + ((*v36 ^ v35) / 0x9D28AF)];
      v36 += 2;
      v37 += 2;
      v38 -= 2;
    }

    while (v37 < 0x20);
    return 2;
  }

  ImageParams = Madusa::DetectorBase::GetImageParams(this);
  Madusa::ImageProperties::GetBounds(ImageParams);
  v8 = v7;
  Madusa::ImageProperties::CanonicalizeColorComponents(a2);
  if ((Madusa::ImageProperties::HasValidColorComponents(a2) & 1) == 0)
  {
    v25 = 0;
    v26 = 0;
    if (QuickCodec::mask == -70947757)
    {
      v27 = 9006445;
    }

    else
    {
      v27 = 1043884;
    }

    v28 = 1;
    v29 = 1811173;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v32 = v28;
          if (v29 <= 1811243)
          {
            break;
          }

          if (v29 == 1811244)
          {
            if ((*v25 & 0x1F) != 0 || v25[2] > 0x3Fu || (v28 = 1, v29 = 1043884, v25[3] != ((QuickCodec::mask ^ v26) / 0x10EB02)))
            {
              v29 = 1043938;
              v28 = v32;
            }
          }

          else if (v29 == 2855040)
          {
            v25 = v2;
            v29 = 1811190;
          }

          else
          {
            v24 = v29 == 9006445;
            v29 = 1811244;
            if (v24)
            {
              v26 = -171445765;
            }
          }
        }

        if (v29 <= 1811172)
        {
          break;
        }

        v30 = (QuickCodec::mask != -70947757) | v28;
        if (v29 == 1811190)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        if (v29 == 1811190)
        {
          LODWORD(v32) = v30;
        }

        v33 = v29 == 1811173;
        if (v29 == 1811173)
        {
          v29 = 1043884;
        }

        else
        {
          v29 = v31;
        }

        if (v33)
        {
          v28 = 0;
        }

        else
        {
          v28 = v32;
        }
      }

      if (v29 != 1043884)
      {
        break;
      }

      v29 = 1043938;
      if ((v28 & 1) == 0)
      {
        v29 = 2855040;
      }
    }

    if (v28)
    {
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      fegetenv(&v137);
      v34 = QuickCodec::mask;
LABEL_56:
      v137.__fpcr &= v34 + 70947740;
      fesetenv(&v137);
    }

    return 2;
  }

  v9 = *(v3 + 508);
  v10 = Madusa::DetectorBase::GetImageParams(this);
  if ((Madusa::BandModeDetector::AdjustImageDataForBandOrder(v9, a2, v10) & 1) == 0)
  {
    v39 = 0;
    v40 = 0;
    if (QuickCodec::mask == -70947757)
    {
      v41 = 10737763;
    }

    else
    {
      v41 = 516474;
    }

    v42 = 1;
    v43 = 402585;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v44 = v42;
          if (v43 > 516473)
          {
            break;
          }

          if (v43 == 402585)
          {
            v42 = 0;
            v43 = 516474;
          }

          else if (v43 == 402602)
          {
            v42 = (QuickCodec::mask != -70947757) | v42;
            v43 = v41;
          }

          else if ((*v39 & 0x1F) != 0 || v39[2] > 0x3Fu || (v42 = 1, v43 = 516474, v39[3] != ((QuickCodec::mask ^ v40) / 0x29000D)))
          {
            v43 = 516528;
            v42 = v44;
          }
        }

        if (v43 <= 919041)
        {
          break;
        }

        if (v43 == 919042)
        {
          v39 = v2;
          v43 = 402602;
        }

        else
        {
          v24 = v43 == 10737763;
          v43 = 402656;
          if (v24)
          {
            v40 = -634296681;
          }
        }
      }

      if (v43 != 516474)
      {
        break;
      }

      v43 = 516528;
      if ((v42 & 1) == 0)
      {
        v43 = 919042;
      }
    }

    if ((v42 & 1) == 0)
    {
      return 2;
    }

    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    func = __find_func(0xDF9FDF1FC0E04070, 824451274);
    v46 = 600;
    while (*func != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || func[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || func[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || func[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
    {
      func += 4;
      if (!--v46)
      {
        goto LABEL_92;
      }
    }

    vars0 = func;
    vars8 = 0u;
LABEL_92:
    QuickCodec::mask += 16;
    return 2;
  }

  if (Madusa::IteratorBoundsComputer::ValidateForImageProperties(a2, v11))
  {
    IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(a2);
    v14 = IntegerOffsetBounds;
    v15 = v13 + IntegerOffsetBounds;
    if (((v15 + 0x80000000) | IntegerOffsetBounds) >> 32 || HIDWORD(v13) != HIDWORD(v8) || *(v3 + 509) > IntegerOffsetBounds || v13 < 1 || v15 > v8)
    {
      v16.i16[0] = *v2 | 0xFFE0;
      v16.i16[1] = v2[3];
      v16.i32[1] = v16.i32[0];
      v17.i64[0] = 0xFF000000FFLL;
      v17.i64[1] = 0xFF000000FFLL;
      v18 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v16), v17), xmmword_10006B530));
      v19.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B540, v18)).u32[0];
      v19.i32[1] = vmovn_s32(vcgtq_f32(v18, xmmword_10006B540)).i32[1];
      if ((vminv_u16(vcltz_s16(vshl_n_s16(v19, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
      {
        v20 = FunctionTable::ft[0] ^ 0x157E9386;
        QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
        v21 = &unk_10003FCF4;
        v22 = -2;
        v23 = -1;
        do
        {
          qword_100074968[v23 + 1 + ((*(v21 - 1) ^ v20) / 0x9D28AF)] = qword_100074968[v23 + ((*v21 ^ v20) / 0x9D28AF)];
          v21 += 2;
          v22 += 2;
          v23 -= 2;
        }

        while (v22 < 0x20);
      }

      return 2;
    }

    v49 = v13;
    v50 = &_mh_execute_header & 0xFFFFFFFF00000000 | HIDWORD(v13);
    v118 = v50;
    v114 = v13;
    if (!Madusa::ImageProperties::ShouldDownsample(a2))
    {
      fpcr_low = 0;
      v122 = 1;
      fpsr = v14;
      v53 = &_mh_execute_header;
      v52 = 1;
      v54 = v49;
      v116 = v50;
      goto LABEL_105;
    }

    sub_1000285A4(a2, &v137.__fpsr);
    v49 = v138;
    if (v138 >= 1)
    {
      fpsr = v137.__fpsr;
      v122 = BYTE4(v137.__fpsr);
      fpcr_low = LODWORD(v137.__fpcr);
      v52 = BYTE4(v138);
      v116 = v139 | (BYTE4(v139) << 32);
      v53 = BYTE4(v137.__fpcr) << 32;
      v54 = v114;
LABEL_105:
      v124 = (v3 + 2052);
      v125 = (v3 + 2060);
      v115 = v53 | fpcr_low;
      v120 = 1;
      v121 = 1;
      v117 = v14;
      v119 = v54;
      while (1)
      {
        v56 = *v124;
        if (fpsr <= v56)
        {
          goto LABEL_129;
        }

        if ((v122 & 1) != 0 && v3[2056] == 1)
        {
          v57 = fpsr - v56;
          v58 = v57;
          v24 = v57 == v57;
          v59 = v24 << 32;
          if (!v24)
          {
            v58 = 0;
          }
        }

        else
        {
          v58 = 0;
          v59 = 0;
        }

        v60 = *v125;
        v137.__fpsr = v59 | v58;
        v133 = v60;
        if (v58 <= v60)
        {
          v61 = &v137;
          if ((v60 & 0x100000000) == 0)
          {
LABEL_120:
            BYTE4(v61->__fpsr) = 0;
          }
        }

        else
        {
          v61 = &v133;
          if (!v59)
          {
            goto LABEL_120;
          }
        }

        v62 = v61->__fpsr;
        v63 = *(v3 + 2076);
        v64 = *(v3 + 2092);
        v137.__fpsr = *v124;
        v137.__fpcr = v63;
        v138 = v62 & 0xFFFFFFFFFFLL;
        v139 = v64;
        (*(**(v3 + 264) + 32))(*(v3 + 264), &v137);
        if (v3[2056] == 1)
        {
          v65 = *v124 + v62;
          if (v65 == v65)
          {
            *v124 = v65;
          }

          v3[2056] = (v65 + 0x80000000) >> 32 == 0;
        }

        if (v3[2064] == 1)
        {
          v66 = *v125 - v62;
          if (v66 == v66)
          {
            *v125 = v66;
          }

          v3[2064] = (v66 + 0x80000000) >> 32 == 0;
        }

LABEL_129:
        v67 = *v125;
        LODWORD(v137.__fpsr) = v49;
        BYTE4(v137.__fpsr) = v52;
        v133 = v67;
        if (v49 <= v67)
        {
          v68 = &v137;
          v69 = v118;
          if ((v67 & 0x100000000) != 0)
          {
            goto LABEL_134;
          }

LABEL_133:
          BYTE4(v68->__fpsr) = 0;
          goto LABEL_134;
        }

        v68 = &v133;
        v69 = v118;
        if ((v52 & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_134:
        v70 = v68->__fpsr;
        if ((v68->__fpsr & 0x100000000) == 0)
        {
          if ((*v2 & 0x1F) == 0 && v2[2] <= 0x3Fu && v2[3] == 212 || QuickCodec::mask != -70947757)
          {
            QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
            fegetenv(&v137);
            v34 = QuickCodec::mask;
            goto LABEL_56;
          }

          return 2;
        }

        if (v70 < 1)
        {
          v75 = HIDWORD(v67) & 1;
          goto LABEL_200;
        }

        LODWORD(v137.__fpsr) = fpsr;
        BYTE4(v137.__fpsr) = v122;
        v137.__fpcr = v115;
        v138 = v70 & 0xFF7FFFFFFFLL;
        v139 = v116;
        v133 = v117 | (v120 << 32);
        v134 = &_mh_execute_header;
        v135 = v119 | (v121 << 32);
        v136 = v69;
        if (v49 != v70)
        {
          if (!v121 || ((v71 = (v70 & 0x7FFFFFFF) * v119, v71 != v71) ? (v72 = 0) : (v72 = v71 | &_mh_execute_header), (v72 & 0x100000000) == 0 || (v52 & 1) == 0))
          {
            if ((*v2 & 0x1F) == 0 && v2[2] <= 0x3Fu && v2[3] == 212 || QuickCodec::mask != -70947757)
            {
              QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
              v102 = __find_func(0xDF9FDF1FC0E04070, 824451274);
              v103 = 600;
              while (*v102 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v102[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v102[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v102[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
              {
                v102 += 4;
                if (!--v103)
                {
                  goto LABEL_285;
                }
              }

              vars0 = v102;
              vars8 = 0u;
LABEL_285:
              QuickCodec::mask += 16;
            }

            return 2;
          }

          if (v72)
          {
            LODWORD(v72) = v72 / v49;
          }

          LODWORD(v135) = v72;
          BYTE4(v135) = 1;
        }

        sub_10002862C(&v137, this + 10757, &v126);
        LODWORD(v137.__fpsr) = v126;
        BYTE4(v137.__fpsr) = BYTE4(v126);
        LODWORD(v137.__fpcr) = v127;
        BYTE4(v137.__fpcr) = v128;
        LODWORD(v138) = v129;
        BYTE4(v138) = v130;
        LODWORD(v139) = v131;
        BYTE4(v139) = v132;
        if (BYTE4(v126) != 1 || !v128 || !v130 || !v132 || BYTE4(v133) != 1 || BYTE4(v134) != 1 || BYTE4(v135) != 1)
        {
          v73 = 0;
          v74 = 1;
LABEL_160:
          LODWORD(v75) = v3[2064];
          if (v75 != 1)
          {
            goto LABEL_161;
          }

          goto LABEL_178;
        }

        v73 = 0;
        v74 = 1;
        if (BYTE4(v136) != 1 || v129 < 1 || v131 < 1)
        {
          goto LABEL_160;
        }

        (*(**(v3 + 264) + 24))(*(v3 + 264), a2, &v133, &v137);
        v74 = BYTE4(v135);
        if (BYTE4(v135) == 1)
        {
          v73 = v135;
          LODWORD(v75) = v3[2064];
          if (v75 != 1)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v73 = 0;
          LODWORD(v75) = v3[2064];
          if (v75 != 1)
          {
LABEL_161:
            if (v3[2056] != 1)
            {
              goto LABEL_162;
            }

            goto LABEL_181;
          }
        }

LABEL_178:
        v79 = *v125 - (v70 & 0x7FFFFFFF);
        LODWORD(v75) = v79 == v79;
        if (v79 == v79)
        {
          *v125 = v79;
        }

        v3[2064] = (v79 + 0x80000000) >> 32 == 0;
        if (v3[2056] != 1)
        {
LABEL_162:
          if (v122)
          {
            goto LABEL_184;
          }

          goto LABEL_163;
        }

LABEL_181:
        v80 = (v70 & 0x7FFFFFFF) + *v124;
        if (v80 == v80)
        {
          *v124 = v80;
        }

        v3[2056] = (v80 + 0x80000000) >> 32 == 0;
        if (v122)
        {
LABEL_184:
          v122 = (v70 & 0x7FFFFFFF) + fpsr == (v70 & 0x7FFFFFFF) + fpsr;
          if ((v70 & 0x7FFFFFFF) + fpsr == (v70 & 0x7FFFFFFF) + fpsr)
          {
            v81 = (v70 & 0x7FFFFFFF) + fpsr;
          }

          else
          {
            v81 = fpsr;
          }

          fpsr = v81;
          if (v52)
          {
            v76 = v70;
          }

          else
          {
            v76 = 0;
          }

          if (v52)
          {
            v52 = 1;
          }

          if (!v120)
          {
            goto LABEL_169;
          }

          goto LABEL_193;
        }

LABEL_163:
        if (v52)
        {
          v76 = v70;
        }

        else
        {
          v76 = 0;
        }

        if (v52)
        {
          v52 = 1;
        }

        if (!v120)
        {
LABEL_169:
          if (v121)
          {
            goto LABEL_170;
          }

          goto LABEL_199;
        }

LABEL_193:
        if (v74)
        {
          v82 = v117;
          v120 = v73 + v117 == v73 + v117;
          if (v73 + v117 == v73 + v117)
          {
            v82 = v73 + v117;
          }

          v117 = v82;
          if (!v121)
          {
            goto LABEL_199;
          }

LABEL_170:
          if (v74)
          {
            v77 = v119 - v73;
            v121 = v77 == v77;
            if (v77 == v77)
            {
              v78 = v77;
            }

            else
            {
              v78 = v119;
            }

            v119 = v78;
          }

          else
          {
            v121 = 0;
          }

          goto LABEL_199;
        }

        v120 = 0;
        if (v121)
        {
          goto LABEL_170;
        }

LABEL_199:
        v49 -= v76;
        LODWORD(v67) = *v125;
LABEL_200:
        if ((v67 & 0x80000000) != 0)
        {
          v96 = 0;
          v97 = 0;
          if (QuickCodec::mask == -70947757)
          {
            v98 = 5821782;
          }

          else
          {
            v98 = 4583242;
          }

          v99 = 1;
          v100 = 145381;
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v101 = v99;
                if (v100 > 4583241)
                {
                  break;
                }

                if (v100 == 145381)
                {
                  v99 = 0;
                  v100 = 4583242;
                }

                else if (v100 == 145398)
                {
                  v99 = (QuickCodec::mask != -70947757) | v99;
                  v100 = v98;
                }

                else if ((*v96 & 0x1F) != 0 || v96[2] > 0x3Fu || (v99 = 1, v100 = 4583242, v96[3] != ((QuickCodec::mask ^ v97) / 0x6A92BD)))
                {
                  v100 = 4583296;
                  v99 = v101;
                }
              }

              if (v100 <= 4728605)
              {
                break;
              }

              if (v100 == 4728606)
              {
                v96 = v2;
                v100 = 145398;
              }

              else
              {
                v24 = v100 == 5821782;
                v100 = 145452;
                if (v24)
                {
                  v97 = -1551570729;
                }
              }
            }

            if (v100 != 4583242)
            {
              break;
            }

            if (v99)
            {
              v100 = 4583296;
            }

            else
            {
              v100 = 4728606;
            }
          }

          if (v99)
          {
            QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
            goto LABEL_98;
          }

          return 2;
        }

        if (v67)
        {
          v83 = 0;
        }

        else
        {
          v83 = v75;
        }

        if (v83 == 1)
        {
          v84 = __find_func(0x1F1F3FBFA0C02090, -240861078);
          v85 = v84(this);
          (*(**(v3 + 264) + 56))(*(v3 + 264));
          if (v85)
          {
            result = v85;
            v104 = 0;
            v105 = 0;
            if (QuickCodec::mask == -70947757)
            {
              v106 = 5668669;
            }

            else
            {
              v106 = 1641169;
            }

            v107 = 1;
            v108 = 744085;
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  v109 = v107;
                  if (v108 > 1641168)
                  {
                    break;
                  }

                  if (v108 == 744085)
                  {
                    v107 = 0;
                    v108 = 1641169;
                  }

                  else if (v108 == 744102)
                  {
                    v107 = (QuickCodec::mask != -70947757) | v107;
                    v108 = v106;
                  }

                  else if ((*v104 & 0x1F) != 0 || v104[2] > 0x3Fu || (v107 = 1, v108 = 1641169, v104[3] != ((QuickCodec::mask ^ v105) / 0x2BE8D3)))
                  {
                    v108 = 1641223;
                    v107 = v109;
                  }
                }

                if (v108 <= 2385236)
                {
                  break;
                }

                if (v108 == 2385237)
                {
                  v104 = v2;
                  v108 = 744102;
                }

                else
                {
                  v24 = v108 == 5668669;
                  v108 = 744156;
                  if (v24)
                  {
                    v105 = -543579409;
                  }
                }
              }

              if (v108 != 1641169)
              {
                break;
              }

              if (v107)
              {
                v108 = 1641223;
              }

              else
              {
                v108 = 2385237;
              }
            }

            if (v107)
            {
              v110 = FunctionTable::ft[0] ^ 0x157E9386;
              QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
              v111 = &unk_10003FCF4;
              v112 = -2;
              v113 = -1;
              do
              {
                qword_100074968[v113 + 1 + ((*(v111 - 1) ^ v110) / 0x9D28AF)] = qword_100074968[v113 + ((*v111 ^ v110) / 0x9D28AF)];
                v111 += 2;
                v112 += 2;
                v113 -= 2;
              }

              while (v112 < 0x20);
            }

            return result;
          }

          if (v3[2048] != 1 || (v86 = *(v3 + 511), v86 == 0x7FFFFFFF))
          {
            v3[2048] = 0;
          }

          else
          {
            *(v3 + 511) = v86 + 1;
          }

          v55 = __find_func(0xEF7FDF1F60208080, 29630666);
          v55(this);
        }

        if (v49 <= 0)
        {
          goto LABEL_215;
        }
      }
    }

    LOBYTE(v83) = 0;
LABEL_215:
    *(v3 + 509) = v14 + v114;
    v3[2040] = 1;
    if (v14 + v114 < v8 || (v83 & 1) != 0 || (v87 = __find_func(0x3FDF7F1F20804050, -781942582), result = v87(this), !result))
    {
      v89 = 0;
      v90 = 0;
      if (QuickCodec::mask == -70947757)
      {
        v91 = 5700082;
      }

      else
      {
        v91 = 4326472;
      }

      v92 = 1;
      v93 = 597004;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v94 = v92;
            if (v93 > 4326471)
            {
              break;
            }

            if (v93 == 597004)
            {
              v92 = 0;
              v93 = 4326472;
            }

            else if (v93 == 597021)
            {
              v92 = (QuickCodec::mask != -70947757) | v92;
              v93 = v91;
            }

            else if ((*v89 & 0x1F) != 0 || v89[2] > 0x3Fu || (v92 = 1, v93 = 4326472, v89[3] != ((QuickCodec::mask ^ v90) / 0x8010B0)))
            {
              v93 = 4326526;
              v92 = v94;
            }
          }

          if (v93 <= 4923458)
          {
            break;
          }

          if (v93 == 4923459)
          {
            v89 = v2;
            v93 = 597021;
          }

          else
          {
            v24 = v93 == 5700082;
            v93 = 597075;
            if (v24)
            {
              v90 = -1849115245;
            }
          }
        }

        if (v93 != 4326472)
        {
          break;
        }

        if (v92)
        {
          v93 = 4326526;
        }

        else
        {
          v93 = 4923459;
        }
      }

      if (v92)
      {
        QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
        v95 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
        v95(0, 104);
      }

      return 0;
    }

    else if ((*v2 & 0x1F) == 0 && v2[2] <= 0x3Fu && v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      v88 = result;
      fegetenv(&v137);
      v137.__fpcr &= QuickCodec::mask + 70947740;
      fesetenv(&v137);
      return v88;
    }
  }

  else
  {
    if ((*v2 & 0x1F) == 0 && v2[2] <= 0x3Fu && v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
LABEL_98:
      v47 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
      v47(0, 104);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1000285A4@<X0>(Madusa::ImageProperties *a1@<X0>, unint64_t *a2@<X8>)
{
  v10 = 0x100000001;
  v9 = 0x100000001;
  Madusa::ImageProperties::GetDownsampleRatios(a1, &v10, &v9);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(a1);
  v8[0] = &_mh_execute_header & 0xFFFFFFFF00000000 | IntegerOffsetBounds;
  v8[1] = &_mh_execute_header & 0xFFFFFFFF00000000 | HIDWORD(IntegerOffsetBounds);
  v8[2] = &_mh_execute_header & 0xFFFFFFFF00000000 | v5;
  v8[3] = &_mh_execute_header & 0xFFFFFFFF00000000 | v6;
  return sub_10001F8DC(v8, &v10, &v9, a2);
}

int *sub_10002862C@<X0>(int *result@<X0>, int *a2@<X1>, unint64_t *a3@<X8>)
{
  if (*(result + 4) == 1 && *(result + 20) == 1 && (v3 = result[4] + *result, v3 == v3))
  {
    if ((v3 + 0x7FFFFFFFLL) >> 32)
    {
      v4 = 0;
    }

    else
    {
      v4 = (v3 - 1) | &_mh_execute_header;
    }

    if (*(result + 12) != 1)
    {
LABEL_16:
      v6 = 0;
      if (*(a2 + 4) != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v4 = 0;
    if (*(result + 12) != 1)
    {
      goto LABEL_16;
    }
  }

  if (*(result + 28) != 1)
  {
    goto LABEL_16;
  }

  v5 = result[6] + result[2];
  if (v5 != v5)
  {
    goto LABEL_16;
  }

  if ((v5 + 0x7FFFFFFFLL) >> 32)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v5 - 1) | &_mh_execute_header;
  }

  if (*(a2 + 4) != 1)
  {
LABEL_19:
    v8 = 0;
    if (*(a2 + 12) != 1)
    {
      goto LABEL_60;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*(a2 + 20) != 1)
  {
    goto LABEL_19;
  }

  v7 = a2[4] + *a2;
  if (v7 != v7)
  {
    goto LABEL_19;
  }

  v8 = (v7 - 1) | &_mh_execute_header;
  if ((v7 + 0x7FFFFFFFLL) >> 32)
  {
    v8 = 0;
  }

  if (*(a2 + 12) != 1)
  {
LABEL_60:
    v10 = 0;
    v11 = *result;
    v12 = *a2;
    v28 = v12;
    v29 = v11;
    if (v11 >= v12)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_20:
  if (*(a2 + 28) != 1)
  {
    goto LABEL_60;
  }

  v9 = a2[6] + a2[2];
  if (v9 != v9)
  {
    goto LABEL_60;
  }

  if ((v9 + 0x7FFFFFFFLL) >> 32)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 - 1) | &_mh_execute_header;
  }

  v11 = *result;
  v12 = *a2;
  v28 = v12;
  v29 = v11;
  if (v11 >= v12)
  {
LABEL_26:
    v13 = &v29;
    if ((v12 & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_61:
  v13 = &v28;
  if ((v11 & 0x100000000) == 0)
  {
LABEL_27:
    *(v13 + 4) = 0;
  }

LABEL_28:
  v14 = *v13;
  v15 = *(result + 1);
  v16 = *(a2 + 1);
  v28 = v16;
  v29 = v15;
  if (v15 >= v16)
  {
    v17 = &v29;
    if ((v16 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v17 = &v28;
  if ((v15 & 0x100000000) == 0)
  {
LABEL_32:
    *(v17 + 4) = 0;
  }

LABEL_33:
  v18 = *v17;
  v28 = v8;
  v29 = v4;
  if (v4 <= v8)
  {
    v19 = &v29;
    if ((v8 & 0x100000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v19 = &v28;
  if ((v4 & 0x100000000) == 0)
  {
LABEL_37:
    *(v19 + 4) = 0;
  }

LABEL_38:
  v20 = *v19;
  v28 = v10;
  v29 = v6;
  if (v6 > v10)
  {
    v21 = &v28;
    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v21 = &v29;
  if ((v10 & 0x100000000) == 0)
  {
LABEL_42:
    *(v21 + 4) = 0;
  }

LABEL_43:
  v22 = 0;
  v23 = *v21;
  if ((v20 & 0x100000000) != 0 && (v14 & 0x100000000) != 0)
  {
    v24 = v20 - v14;
    v25 = (v24 + 1) | &_mh_execute_header;
    if ((v24 + 2147483649) >> 32)
    {
      v25 = 0;
    }

    if (v24 == v24)
    {
      v22 = v25;
    }

    else
    {
      v22 = 0;
    }
  }

  v26 = 0;
  if ((v23 & 0x100000000) != 0 && (v18 & 0x100000000) != 0)
  {
    v27 = v23 - v18;
    v26 = (v27 + 1) | &_mh_execute_header;
    if ((v27 + 2147483649) >> 32)
    {
      v26 = 0;
    }

    if (v27 != v27)
    {
      v26 = 0;
    }
  }

  *a3 = v14 & 0xFFFFFFFFFFLL;
  a3[1] = v18 & 0xFFFFFFFFFFLL;
  a3[2] = v22;
  a3[3] = v26;
  return result;
}

uint64_t Madusa::BandModeDetector::_ProcessBand(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2, Madusa::ImageProperties *a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v4 + 1;
    }
  }

  else
  {
    v4 = QuickCodec::mask;
    if (v3[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::BandModeDetector::ProcessBand(this, a2);
}

uint64_t Madusa::BandModeDetector::_ProcessBand_Alt(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2, Madusa::ImageProperties *a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 8784594;
  }

  else
  {
    v6 = 754238;
  }

  v7 = 1;
  v8 = 2299796;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = v7;
        if (v8 <= 2299866)
        {
          break;
        }

        if (v8 == 2299867)
        {
          if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 754238, v4[3] != ((QuickCodec::mask ^ v5) / 0x2DB7B6)))
          {
            v8 = 754292;
            v7 = v11;
          }
        }

        else if (v8 == 3054017)
        {
          v4 = v3;
          v8 = 2299813;
        }

        else
        {
          v12 = v8 == 8784594;
          v8 = 2299867;
          if (v12)
          {
            v5 = -568766741;
          }
        }
      }

      if (v8 <= 2299795)
      {
        break;
      }

      v9 = (QuickCodec::mask != -70947757) | v7;
      if (v8 == 2299813)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      if (v8 == 2299813)
      {
        LODWORD(v11) = v9;
      }

      v12 = v8 == 2299796;
      if (v8 == 2299796)
      {
        v8 = 754238;
      }

      else
      {
        v8 = v10;
      }

      if (v12)
      {
        v7 = 0;
      }

      else
      {
        v7 = v11;
      }
    }

    if (v8 != 754238)
    {
      break;
    }

    v8 = 754292;
    if ((v7 & 1) == 0)
    {
      v8 = 3054017;
    }
  }

  if (v7)
  {
    ++QuickCodec::mask;
  }

  return Madusa::BandModeDetector::ProcessBand_Alt(this, a2);
}

uint64_t Madusa::BandModeDetector::ProcessBand_Alt(Madusa::BandModeDetector *this, Madusa::ImageProperties *a2)
{
  v4 = this + 40960;
  ImageParams = Madusa::DetectorBase::GetImageParams(this);
  Madusa::ImageProperties::GetBounds(ImageParams);
  v7 = v6;
  Madusa::ImageProperties::CanonicalizeColorComponents(a2);
  HasValidColorComponents = Madusa::ImageProperties::HasValidColorComponents(a2);
  v9 = *(v4 + 508);
  v10 = Madusa::DetectorBase::GetImageParams(this);
  v11 = Madusa::BandModeDetector::AdjustImageDataForBandOrder(v9, a2, v10);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(a2);
  v14 = IntegerOffsetBounds;
  v15 = v13 + IntegerOffsetBounds;
  if (((v15 + 0x80000000) | IntegerOffsetBounds) >> 32)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v13 ^ v7) >> 32 == 0;
  }

  if (!v16)
  {
    return 2;
  }

  result = 2;
  if (*(v4 + 509) <= v14 && v13 >= 1 && v15 <= v7)
  {
    if (v11 & HasValidColorComponents)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t Madusa::BandModeDetector::GetBlockPosition(Madusa::BandModeDetector *this, uint64_t a2)
{
  if (*(this + 43008) == 1)
  {
    v4 = *(this + 10751);
  }

  else
  {
    v4 = 0;
  }

  func = __find_func(0x2F7F1F1FA0C02020, -1044062006);

  return func(this + 8, v4, a2);
}

uint64_t Madusa::BandModeDetector::GetBlock(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4)
{
  *&v5.f64[0] = 0x8000000080000000;
  *&v5.f64[1] = 0x8000000080000000;
  v6.i64[0] = 0xFFFFFFFF00000000;
  v6.i64[1] = 0xFFFFFFFF00000000;
  *&v5.f64[0] = vmovn_s64(vcgtq_u64(v6, vaddw_s32(vnegq_f64(v5), *a2)));
  if (((LODWORD(v5.f64[0]) | HIDWORD(v5.f64[0])) & 1) != 0 || (var28[0] = vadd_s32(*a2, -1), !a4))
  {
    v7 = 1;
  }

  else
  {
    (*(*a4 + 40))(a4, a3, var28);
    v7 = 0;
  }

  v8.i16[0] = *v4 | 0xFFE0;
  v8.i16[1] = v4[3];
  v8.i32[1] = v8.i32[0];
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v8), v9), xmmword_10006B550));
  v11.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B560, v10)).u32[0];
  v11.i32[1] = vmovn_s32(vcgtq_f32(v10, xmmword_10006B560)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v11, 0xFuLL))) & ((v4[2] & 0xE0) == 32)) == 0 && QuickCodec::mask == -70947757)
  {
    return v7;
  }

  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  func = __find_func(0xDF9FDF1FC0E04070, 824451274);
  v14 = 600;
  while (*func != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || func[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || func[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || func[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
  {
    func += 4;
    if (!--v14)
    {
      goto LABEL_15;
    }
  }

  var28[5] = func;
  vars8 = 0u;
LABEL_15:
  QuickCodec::mask += 16;
  return v7;
}

uint64_t Madusa::BandModeDetector::Detect(Madusa::BandModeDetector *this)
{
  v3 = this + 40960;
  ImageParams = Madusa::DetectorBase::GetImageParams(this);
  v5 = sub_1000290D8(ImageParams);
  v7 = v6;
  DetectorPipeWorkingMemorySize = Madusa::System::GetDetectorPipeWorkingMemorySize(v5);
  v10 = v5 + DetectorPipeWorkingMemorySize;
  v11 = (v5 + DetectorPipeWorkingMemorySize) >= v5;
  if ((v5 + DetectorPipeWorkingMemorySize) < v5)
  {
    v10 = 0;
  }

  if ((v9 & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = (v7 & 1) == 0;
  if (v7)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v12 && v11;
  if (v3[2048] == 1)
  {
    NumberOfBlocksOnRow = Madusa::BlockPicker::GetNumberOfBlocksOnRow((this + 8), *(v3 + 511));
  }

  else
  {
    NumberOfBlocksOnRow = 0;
  }

  result = Madusa::DetectorBase::ProcessTwoPasses(this, v13, v14, NumberOfBlocksOnRow, 0);
  v17.i16[0] = *v1 | 0xFFE0;
  v17.i16[1] = v1[3];
  v17.i32[1] = v17.i32[0];
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v17), v18), xmmword_10006B570));
  v20.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B580, v19)).u32[0];
  v20.i32[1] = vmovn_s32(vcgtq_f32(v19, xmmword_10006B580)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v20, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v21 = result;
    func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    func(0, 104);
    return v21;
  }

  return result;
}

unint64_t sub_1000290D8(Madusa::ImageProperties *a1)
{
  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  if (ResolutionBucket <= 350)
  {
    v3 = ResolutionBucket;
  }

  else
  {
    v3 = 300;
  }

  v4 = 394;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v4 = 132;
        break;
      case 125:
        v4 = 166;
        break;
      case 150:
        v4 = 200;
        break;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v4 = 394;
    }

    else if (v3 == 350)
    {
      v4 = 462;
    }
  }

  else if (v3 == 200)
  {
    v4 = 264;
  }

  else if (v3 == 250)
  {
    v4 = 330;
  }

  src.data = 0;
  src.height = v4;
  src.width = v4;
  src.rowBytes = v4;
  dest.data = 0;
  *&dest.height = vdupq_n_s64(0x82uLL);
  dest.rowBytes = 130;
  v5 = vImageScale_Planar8(&src, &dest, 0, 0x80u);
  v6 = v5 & ~(v5 >> 63);
  Madusa::MemoryMaster::MemoryMaster(&src, 0);
  v7 = sub_100029CD0(a1);
  Madusa::MemoryMaster::~MemoryMaster(&src.data);
  if (v7 + v6 < v7)
  {
    return 0;
  }

  else
  {
    return v7 + v6;
  }
}

uint64_t Madusa::BandModeDetector::_Detect(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::BandModeDetector::Detect(this);
    }

LABEL_7:
    QuickCodec::mask = v3 + 1;
    return Madusa::BandModeDetector::Detect(this);
  }

  v5 = 767526 * v2[3];
  v3 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x9B2D778 | v5 & 0x9B2D778) + (v5 ^ 0x9B2D778 | ~(v5 | 0x9B2D778)) + 162715512 == (~(~(~(v5 | 0x9824178) | v5 & 0x9824178) | 0x309600) | ~(~(v5 | 0x9824178) | v5 & 0x9824178) & 0x309600) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::BandModeDetector::Detect(this);
}

uint64_t Madusa::BandModeDetector::GetRowOfBlocks(Madusa::BandModeDetector *this)
{
  result = Madusa::DetectorBase::GetResolutionBucket(this);
  if (result <= 350)
  {
    v3 = result;
  }

  else
  {
    v3 = 300;
  }

  v4 = 0x100000001;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v5 = &unk_10006B590;
        break;
      case 125:
        v5 = &unk_10006B5A0;
        break;
      case 150:
        v5 = &unk_10006B5B0;
        break;
      default:
        goto LABEL_21;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v5 = &unk_10006B5E0;
    }

    else
    {
      if (v3 != 350)
      {
        goto LABEL_21;
      }

      v5 = &unk_10006B5F0;
    }
  }

  else if (v3 == 200)
  {
    v5 = &unk_10006B5C0;
  }

  else
  {
    if (v3 != 250)
    {
      goto LABEL_21;
    }

    v5 = &unk_10006B5D0;
  }

  v4 = *(v5 + 4);
LABEL_21:
  v6 = v4 << 32;
  v7 = (v4 << 7) - 0x80000000;
  v8 = v4 >> 31;
  v9 = (v4 >> 31) & 0xFFFFFFFELL;
  if (v9)
  {
    v10 = v7 >= 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 && (v8 - 0x80000000) >= 0xFFFFFFFF00000000;
  if (v11 && (v12 = v6 >> 25, v12))
  {
    v13 = v12 / v9;
    *(this + 10755) = v13;
    *(this + 43024) = 1;
    if (*(this + 43060) != 1)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    *(this + 10755) = 0;
    *(this + 43024) = 1;
    if (*(this + 43060) != 1)
    {
      return result;
    }
  }

  v14 = 0x100000001;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v14 = 0x100000001;
        break;
      case 125:
        v14 = 0x400000005;
        break;
      case 150:
        v14 = 0x200000003;
        break;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v14 = 0x100000003;
    }

    else if (v3 == 350)
    {
      v14 = 0x200000007;
    }
  }

  else if (v3 == 200)
  {
    v14 = 0x100000002;
  }

  else if (v3 == 250)
  {
    v14 = 0x200000005;
  }

  v15 = llroundf(v14 / SHIDWORD(v14)) + v13;
  if (v15 == v15)
  {
    *(this + 10755) = v15;
  }

  *(this + 43024) = (v15 + 0x80000000) >> 32 == 0;
  *(this + 43060) = 0;
  return result;
}

uint64_t Madusa::BandModeDetector::_GetRowOfBlocks(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::BandModeDetector::GetRowOfBlocks(this);
    }

LABEL_7:
    QuickCodec::mask = v3 + 1;
    return Madusa::BandModeDetector::GetRowOfBlocks(this);
  }

  v5 = 594942 * v2[3];
  v3 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x7848E58 | v5 & 0x7848E58) + (v5 ^ 0x7848E58 | ~(v5 | 0x7848E58)) + 126127704 == (~(~(~(v5 | 0x7800A18) | v5 & 0x7800A18) | 0x48440) | ~(~(v5 | 0x7800A18) | v5 & 0x7800A18) & 0x48440) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::BandModeDetector::GetRowOfBlocks(this);
}

BOOL Madusa::BandModeDetector::ShouldRunDetectionOnBlock(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40960;
  result = 0;
  if (*(a1 + 43008) == 1)
  {
    func = __find_func(0xCF1F3F9F406060C0, 564445258);
    if (func(a1 + 8, *(v2 + 2044), a2))
    {
      return 1;
    }
  }

  return result;
}

void Madusa::BandModeDetector::CreateImagePipe(Madusa::BandModeDetector *this, Madusa::MemoryMaster *a2, Madusa::SessionCallbacks *a3)
{
  v4 = *(this + 5384);
  if (v4)
  {
    v6 = (*(*v4 + 48))(v4, a2, a3);
    if (v6)
    {
      v7 = v6;
      ImageParams = Madusa::DetectorBase::GetImageParams(this);
      sub_10002A564(ImageParams, a2, v7);
      if (v9)
      {
        v10 = v9;
        v11 = Madusa::DetectorBase::GetImageParams(this);
        (*(*v10 + 16))(v10, v11);
      }
    }
  }
}

unint64_t sub_100029B3C(Madusa::ImageProperties *a1)
{
  Madusa::ImageProperties::GetSafeBounds(&v13, a1);
  if (!Madusa::ImageProperties::ShouldDownsample(a1))
  {
    if (v15)
    {
      v2 = v14;
      goto LABEL_6;
    }

    return 0;
  }

  v11 = 0x100000001;
  v12 = 0x100000001;
  Madusa::ImageProperties::GetDownsampleRatios(a1, &v12, &v11);
  sub_10001F8DC(v13.i32, &v12, &v11, v8);
  if (v10 != 1)
  {
    return 0;
  }

  v2 = v9;
LABEL_6:
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  if (ResolutionBucket <= 350)
  {
    v5 = ResolutionBucket;
  }

  else
  {
    v5 = 300;
  }

  v6 = 394;
  if (v5 <= 199)
  {
    switch(v5)
    {
      case 100:
        v6 = 132;
        break;
      case 125:
        v6 = 166;
        break;
      case 150:
        v6 = 200;
        break;
    }
  }

  else if (v5 > 299)
  {
    if (v5 == 300)
    {
      v6 = 394;
    }

    else if (v5 == 350)
    {
      v6 = 462;
    }
  }

  else if (v5 == 200)
  {
    v6 = 264;
  }

  else if (v5 == 250)
  {
    v6 = 330;
  }

  return v6 * v3;
}

uint64_t sub_100029CD0(Madusa::ImageProperties *a1)
{
  v2 = *Madusa::ImageProperties::GetColorModel(a1);
  DataType = Madusa::ImageProperties::GetDataType(a1);
  if (v2 <= 4)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        if (*DataType != 1 && *DataType != 2)
        {
          v6 = 0x100000001;
          v7 = 0x100000001;
          Madusa::ImageProperties::GetDownsampleRatios(a1, &v7, &v6);
          v4 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
          goto LABEL_15;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 16 && *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 32)
        {
          return 16;
        }
      }

      else
      {
        if (v2 != 4)
        {
          return 16;
        }

        if (Madusa::ImageProperties::IsInverted(a1))
        {
          goto LABEL_14;
        }

        if ((Madusa::ImageProperties::IsInverted(a1) & 1) != 0 || *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 8)
        {
          return 16;
        }
      }

      return 184;
    }
  }

  else if ((v2 - 5) >= 3)
  {
    if (v2 != 9 || (Madusa::ImageProperties::IsInverted(a1) & 1) != 0)
    {
      return 16;
    }

    goto LABEL_14;
  }

  Madusa::ImageProperties::IsInverted(a1);
LABEL_14:
  v4 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
LABEL_15:
  if (v4 == 8 || *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
  {
    return 184;
  }

  return 16;
}

unint64_t sub_100029E48(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) != 1 || *(a2 + 8) != 1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  v4 = HIDWORD(*a1);
  v5 = HIDWORD(*a2);
  if (!v4)
  {
    if (v5)
    {
      result = v5 * v2;
      if (v5 * v2)
      {
        goto LABEL_6;
      }
    }

    return v3 * v2;
  }

  if (v5)
  {
    return 0;
  }

  result = v4 * v3;
  if (!(v4 * v3))
  {
    return v3 * v2;
  }

LABEL_6:
  if (!HIDWORD(result))
  {
    return (result << 32) + v3 * v2;
  }

  return result;
}

uint64_t sub_100029ECC(uint64_t result, void *a2)
{
  *(result + 40) = 0;
  *(result + 48) = 1;
  *(result + 56) = 0;
  *(result + 60) = 1;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  *result = off_1000709E8;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 88) = 0;
  *(result + 96) = 1;
  *(result + 104) = 0;
  *(result + 112) = 1;
  if (*(result + 24))
  {
    v2 = result;
    Madusa::MemoryMaster::DeAllocateBuffer(*(result + 24), a2);
    result = v2;
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
  }

  return result;
}

void sub_100029F58(uint64_t a1, void *a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *a1 = off_1000709E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  if (*(a1 + 24))
  {
    Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 24), a2);
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
  }

  operator delete();
}

unint64_t sub_10002A004(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  result = *(a1 + 24);
  if (result)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 56) = 0;
    *(a1 + 60) = 1;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 88) = 0;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0;
    *(a1 + 112) = 1;
    result = Madusa::MemoryMaster::DeAllocateBuffer(result, a2);
    *(a1 + 24) = 0;
    v7 = (a1 + 32);
LABEL_12:
    *v7 = 1;
    return result;
  }

  if (a5 < 0)
  {
    *(a1 + 40) = 0;
LABEL_11:
    *(a1 + 48) = 1;
    *(a1 + 56) = 0;
    *(a1 + 60) = 1;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 88) = 0;
    *(a1 + 96) = 1;
    v7 = (a1 + 112);
    *(a1 + 104) = 0;
    goto LABEL_12;
  }

  result = (*(**(a1 + 120) + 16))(*(a1 + 120), a4, a3);
  *(a1 + 32) = 1;
  v7 = (a1 + 32);
  *(a1 + 24) = result;
  if (!result)
  {
    *(a1 + 40) = 0;
    goto LABEL_11;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  *(a1 + 56) = a5;
  *(a1 + 60) = 1;
  *(a1 + 72) = a4;
  *(a1 + 80) = 1;
  *(a1 + 88) = result;
  *(a1 + 96) = 1;
  v11 = result + a4;
  if (result + a4 < result)
  {
    v11 = 0;
  }

  *(a1 + 8) = v11;
  *(a1 + 16) = result + a4 >= result;
  if (result + a4 < result)
  {
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 1;
    result = Madusa::MemoryMaster::DeAllocateBuffer(result, v10);
    *(a1 + 24) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10002A180(uint64_t result)
{
  if ((*(result + 64) & 1) == 0)
  {
    *(result + 64) = 1;
    *(result + 104) = *(result + 88);
    LOBYTE(v4) = *(result + 96);
    v5 = 112;
LABEL_11:
    *(result + v5) = v4;
    return result;
  }

  if (*(result + 128) <= 350)
  {
    v1 = *(result + 128);
  }

  else
  {
    v1 = 300;
  }

  v2 = 0x100000001;
  if (v1 <= 199)
  {
    switch(v1)
    {
      case 100:
        v3 = &unk_10006B590;
        break;
      case 125:
        v3 = &unk_10006B5A0;
        break;
      case 150:
        v3 = &unk_10006B5B0;
        break;
      default:
        goto LABEL_24;
    }
  }

  else if (v1 > 299)
  {
    if (v1 == 300)
    {
      v3 = &unk_10006B5E0;
    }

    else
    {
      if (v1 != 350)
      {
        goto LABEL_24;
      }

      v3 = &unk_10006B5F0;
    }
  }

  else if (v1 == 200)
  {
    v3 = &unk_10006B5C0;
  }

  else
  {
    if (v1 != 250)
    {
      goto LABEL_24;
    }

    v3 = &unk_10006B5D0;
  }

  v2 = *(v3 + 4);
LABEL_24:
  v6 = v2 << 32;
  v7 = 2 * v2 - 0x80000000;
  v8 = HIDWORD(v2);
  if (v8)
  {
    v9 = v7 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    LODWORD(v10) = 0;
    v11 = *(result + 56);
    if (v11 >= 0)
    {
      LODWORD(v12) = *(result + 56);
    }

    else
    {
      LODWORD(v12) = -v11;
    }

    goto LABEL_31;
  }

  v19 = llroundf((v6 >> 31) / v8);
  v10 = v19;
  v20 = *(result + 56);
  if (v20 >= 0)
  {
    v12 = v20;
  }

  else
  {
    v12 = -v20;
  }

  if ((v19 & 0x80000000) == 0 || !v20)
  {
LABEL_31:
    v13 = v10 * v12;
    v14 = 1;
    v15 = *(result + 112);
    if (*(result + 96))
    {
      goto LABEL_32;
    }

LABEL_46:
    if ((v15 & 1) == 0)
    {
      return result;
    }

    v18 = 0;
    v4 = 0;
    if (!v14)
    {
      return result;
    }

    goto LABEL_51;
  }

  v14 = v12 < 2;
  if (v12 >= 2)
  {
    v10 = 0xFFFFFFFFLL;
  }

  v13 = v10 * v12;
  v15 = *(result + 112);
  if ((*(result + 96) & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_32:
  if ((v15 & 1) == 0)
  {
    return result;
  }

  v16 = *(result + 104);
  v17 = *(result + 88);
  if (v17 >= v16)
  {
    v18 = v17 - v16;
  }

  else
  {
    v18 = 0;
  }

  if (v16 > v17)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if (!v14)
  {
    v4 = 0;
LABEL_50:
    if (!v14)
    {
      return result;
    }

    goto LABEL_51;
  }

  v4 = v18 + v13 >= v18;
  if (v18 + v13 > v18)
  {
    v18 += v13;
  }

LABEL_51:
  v21 = *(result + 104);
  if (v21 >= v13)
  {
    v22 = (v21 - v13);
  }

  else
  {
    v22 = 0;
  }

  if (v13 <= v21 && (*(result + 32) & 1) != 0)
  {
    v23 = &v22[v18] >= v22 ? v4 : 0;
    v24 = &v22[v18] > *(result + 8) ? v23 : 0;
    if (v23 == 1 && (*(result + 16) & 1) != 0 && *(result + 24) <= v22 && (v24 & 1) == 0)
    {
      v25 = result;
      memmove(*(result + 24), v22, v18);
      result = v25;
      if ((*(v25 + 32) & v4) == 1)
      {
        v26 = *(v25 + 24);
        v27 = v18 + v26;
        v28 = v18 + v26 >= v26;
        if (!v28)
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v25 + 104) = v27;
      *(v25 + 112) = v28;
      *(v25 + 88) = v27;
      *(v25 + 96) = v28;
      v5 = 80;
      *(v25 + 72) = v18;
      goto LABEL_11;
    }
  }

  return result;
}