void sub_1860C2964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

BOOL PSDWritePlugin::WriteProc(PSDWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "PSDWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1347634208);
  *&v11[0] = &unk_1EF4DD8B8;
  v7 = IIOWritePlugin::writeAll(v11) != 0;
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_1860C2A4C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860C2A34);
}

uint64_t _cg_RadReadRGBSize(FILE *a1, _DWORD *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a3 = 0;
  if (!a1)
  {
    return 4294967246;
  }

  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8 = 0;
  if (RGBE_ReadHeader(a1, &v8 + 4, &v8, v9))
  {
    return 4294967246;
  }

  v5 = v8;
  if ((HIDWORD(v8) - 1) >> 14 || (v8 - 1) >> 14 != 0)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = HIDWORD(v8);
  *a3 = v5;
  return result;
}

uint64_t ReadFloatPixels(FILE *__stream, uint64_t a2, int a3, int a4)
{
  result = 0xFFFFFFFFLL;
  if (__stream)
  {
    v6 = a2;
    if (a2)
    {
      v7 = a4;
      if (a4)
      {
        while (1)
        {
          v12 = 0;
          v11 = 0;
          if (a3)
          {
            break;
          }

          v10 = v6;
LABEL_10:
          result = 0;
          v6 = v10;
          if (!--v7)
          {
            return result;
          }
        }

        v9 = a3;
        while (fread(&v11, 0xCuLL, 1uLL, __stream))
        {
          *v6 = v11;
          v10 = v6 + 12;
          *(v6 + 8) = v12;
          v6 += 12;
          if (!--v9)
          {
            goto LABEL_10;
          }
        }

        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _cg_RadReadRGB_fp16(FILE *a1, void *a2, unsigned int a3)
{
  v3 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v4 = 4294967246;
  if (a1 && a2)
  {
    if (RGBE_ReadHeader(a1, &v18 + 4, &v18, v19))
    {
LABEL_4:
      v3 = 0;
      goto LABEL_5;
    }

    v3 = 0;
    if (HIDWORD(v18) <= 0x4000 && v18 <= 0x4000)
    {
      v3 = 0;
      if (HIDWORD(v18))
      {
        if (v18)
        {
          v9 = 6 * HIDWORD(v18) * v18;
          if (v9 > a3 || v9 < HIDWORD(v18) || v9 < v18)
          {
            goto LABEL_4;
          }

          v3 = malloc_type_malloc(4 * (4 * HIDWORD(v18) * v18), 0x100004052888210uLL);
          if (!v3)
          {
            goto LABEL_5;
          }

          if ((v19[0] & 8) != 0)
          {
            if (RGBE_ReadPixels_RLE(a1, v3, HIDWORD(v18), v18))
            {
              goto LABEL_5;
            }

LABEL_24:
            memset(&srcFormat.colorSpace, 0, 32);
            *&srcFormat.bitsPerComponent = 0x8000000020;
            srcFormat.bitmapInfo = 8453;
            memset(&destFormat.colorSpace, 0, 32);
            *&destFormat.bitsPerComponent = 0x4000000010;
            destFormat.bitmapInfo = 4357;
            error = 0;
            v12 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
            srcs.data = v3;
            srcs.height = v18;
            srcs.width = SHIDWORD(v18);
            srcs.rowBytes = 16 * SHIDWORD(v18);
            dests.data = a2;
            dests.height = v18;
            dests.width = SHIDWORD(v18);
            dests.rowBytes = 8 * SHIDWORD(v18);
            error = vImageConvert_AnyToAny(v12, &srcs, &dests, 0, 0x10u);
            vImageConverter_Release(v12);
            v4 = 0;
            goto LABEL_5;
          }

          if ((v19[0] & 0x10) != 0 && !ReadFloatPixels(a1, v3, SHIDWORD(v18), v18))
          {
            goto LABEL_24;
          }
        }
      }
    }
  }

LABEL_5:
  free(v3);
  return v4;
}

float *TIFFCIELab16ToXYZ(float *result, unsigned int a2, unsigned int a3, int a4, float *a5, float *a6, float *a7)
{
  v7 = (a2 * 100.0) / 65535.0;
  if (v7 >= 8.856)
  {
    v9 = (v7 + 16.0) / 116.0;
    *a6 = v9 * (v9 * (v9 * result[5]));
  }

  else
  {
    v8 = (v7 * result[5]) / 903.29;
    *a6 = v8;
    v9 = ((v8 / result[5]) * 7.787) + 0.13793;
  }

  v10 = (vcvts_n_f32_s32(a3, 8uLL) / 500.0) + v9;
  v11 = result[4];
  if (v10 >= 0.2069)
  {
    v12 = v10 * (v10 * (v10 * v11));
  }

  else
  {
    v12 = ((v10 + -0.13793) * v11) / 7.787;
  }

  *a5 = v12;
  v13 = v9 + ((a4 * -0.0039062) / 200.0);
  v14 = result[6];
  if (v13 >= 0.2069)
  {
    v15 = v13 * (v13 * (v13 * v14));
  }

  else
  {
    v15 = ((v13 + -0.13793) * v14) / 7.787;
  }

  *a7 = v15;
  return result;
}

float *TIFFXYZToRGB(float *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, float a5, float a6, float a7)
{
  v7 = ((result[8] * a6) + (result[7] * a5)) + (result[9] * a7);
  v8 = ((result[11] * a6) + (result[10] * a5)) + (result[12] * a7);
  v9 = ((result[14] * a6) + (result[13] * a5)) + (result[15] * a7);
  v10 = result[22];
  v11 = result[23];
  if (v7 <= v10)
  {
    v7 = result[22];
  }

  if (v8 <= v11)
  {
    v8 = result[23];
  }

  v12 = result[24];
  if (v9 <= v12)
  {
    v9 = result[24];
  }

  if (v7 >= result[16])
  {
    v7 = result[16];
  }

  if (v8 >= result[17])
  {
    v8 = result[17];
  }

  if (v9 >= result[18])
  {
    v9 = result[18];
  }

  v13 = result[2];
  v14 = ((v7 - v10) / result[1]);
  if (*result < v14)
  {
    v14 = *result;
  }

  v15 = result[v14 + 28];
  if (v15 <= 0.0)
  {
    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  *a2 = (v16 + v15);
  v17 = ((v8 - v11) / v13);
  if (*result < v17)
  {
    v17 = *result;
  }

  v18 = result[v17 + 1529];
  v19 = v18;
  if (v18 <= 0.0)
  {
    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  *a3 = (v20 + v19);
  v21 = ((v9 - v12) / result[3]);
  if (*result < v21)
  {
    v21 = *result;
  }

  v22 = result[v21 + 3030];
  v23 = v22;
  if (v22 <= 0.0)
  {
    v24 = -0.5;
  }

  else
  {
    v24 = 0.5;
  }

  *a4 = (v24 + v23);
  v25 = *a2;
  if (*a2 >= *(result + 19))
  {
    v25 = *(result + 19);
  }

  *a2 = v25;
  v26 = *a3;
  if (*a3 >= *(result + 20))
  {
    v26 = *(result + 20);
  }

  *a3 = v26;
  v27 = *a4;
  if (*a4 >= *(result + 21))
  {
    v27 = *(result + 21);
  }

  *a4 = v27;
  return result;
}

uint64_t TIFFCIELabToRGBInit(float *a1, const void *a2, int *a3)
{
  *a1 = 1500;
  _TIFFmemcpy(a1 + 7, a2, 0x54uLL);
  v5 = 0;
  v6 = 1.0 / a1[25];
  v7 = *a1;
  v8 = v7;
  a1[1] = (a1[16] - a1[22]) / v7;
  v9 = v7;
  v10 = *(a1 + 19);
  if ((v7 + 1) > 1)
  {
    v11 = v7 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v61 = vdupq_n_s64(v11 - 1);
  v58 = xmmword_186205EB0;
  v13 = xmmword_186205EC0;
  v52 = vdupq_n_s64(4uLL);
  v14 = a1 + 31;
  do
  {
    v55 = v13;
    v15 = vcgeq_u64(v61, v13);
    v16 = vmovn_s64(v15);
    v17 = COERCE_DOUBLE(vuzp1_s16(v16, *v15.i8));
    if (LOBYTE(v17))
    {
      v17 = pow(v5 / v9, v6);
      *&v17 = v17;
      *&v17 = *&v17 * v10;
      *(v14 - 3) = *&v17;
    }

    if (vuzp1_s16(v16, *&v17).i8[2])
    {
      v18 = pow((v5 + 1) / v9, v6);
      *(v14 - 2) = v18 * v10;
    }

    v19 = vcgeq_u64(v61, v58);
    v20 = vmovn_s64(v19);
    v21 = COERCE_DOUBLE(vuzp1_s16(*v19.i8, v20));
    if (BYTE4(v21))
    {
      v21 = pow((v5 + 2) / v9, v6);
      *&v21 = v21;
      *&v21 = *&v21 * v10;
      *(v14 - 1) = *&v21;
    }

    if (vuzp1_s16(*&v21, v20).i8[6])
    {
      v22 = pow((v5 + 3) / v9, v6);
      *v14 = v22 * v10;
    }

    v5 += 4;
    v58 = vaddq_s64(v58, v52);
    v13 = vaddq_s64(v55, v52);
    v14 += 4;
  }

  while (v12 != v5);
  v23 = 0;
  v24 = 1.0 / a1[26];
  a1[2] = (a1[16] - a1[22]) / v8;
  v25 = *(a1 + 20);
  v53 = vdupq_n_s64(4uLL);
  v26 = a1 + 1532;
  v59 = xmmword_186205EB0;
  v27 = xmmword_186205EC0;
  do
  {
    v56 = v27;
    v28 = vcgeq_u64(v61, v27);
    v29 = vmovn_s64(v28);
    v30 = COERCE_DOUBLE(vuzp1_s16(v29, *v28.i8));
    if (LOBYTE(v30))
    {
      v30 = pow(v23 / v9, v24);
      *&v30 = v30;
      *&v30 = *&v30 * v25;
      *(v26 - 3) = *&v30;
    }

    if (vuzp1_s16(v29, *&v30).i8[2])
    {
      v31 = pow((v23 + 1) / v9, v24);
      *(v26 - 2) = v31 * v25;
    }

    v32 = vcgeq_u64(v61, v59);
    v33 = vmovn_s64(v32);
    v34 = COERCE_DOUBLE(vuzp1_s16(*v32.i8, v33));
    if (BYTE4(v34))
    {
      v34 = pow((v23 + 2) / v9, v24);
      *&v34 = v34;
      *&v34 = *&v34 * v25;
      *(v26 - 1) = *&v34;
    }

    if (vuzp1_s16(*&v34, v33).i8[6])
    {
      v35 = pow((v23 + 3) / v9, v24);
      *v26 = v35 * v25;
    }

    v23 += 4;
    v59 = vaddq_s64(v59, v53);
    v27 = vaddq_s64(v56, v53);
    v26 += 4;
  }

  while (v12 != v23);
  v36 = 0;
  v37 = 1.0 / a1[27];
  v38 = *(a1 + 21);
  a1[3] = (a1[16] - a1[22]) / v8;
  v39 = v38;
  v40 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v60 = xmmword_186205EB0;
  v41 = a1 + 3033;
  v42 = xmmword_186205EC0;
  v54 = vdupq_n_s64(4uLL);
  do
  {
    v57 = v42;
    v43 = vcgeq_u64(v61, v42);
    v44 = vmovn_s64(v43);
    v45 = COERCE_DOUBLE(vuzp1_s16(v44, *v43.i8));
    if (LOBYTE(v45))
    {
      v45 = pow(v36 / v9, v37);
      *&v45 = v45;
      *&v45 = *&v45 * v39;
      *(v41 - 3) = *&v45;
    }

    if (vuzp1_s16(v44, *&v45).i8[2])
    {
      v46 = pow((v36 + 1) / v9, v37);
      *(v41 - 2) = v46 * v39;
    }

    v47 = vcgeq_u64(v61, v60);
    v48 = vmovn_s64(v47);
    v49 = COERCE_DOUBLE(vuzp1_s16(*v47.i8, v48));
    if (BYTE4(v49))
    {
      v49 = pow((v36 + 2) / v9, v37);
      *&v49 = v49;
      *&v49 = *&v49 * v39;
      *(v41 - 1) = *&v49;
    }

    if (vuzp1_s16(*&v49, v48).i8[6])
    {
      v50 = pow((v36 + 3) / v9, v37);
      *v41 = v50 * v39;
    }

    v36 += 4;
    v60 = vaddq_s64(v60, v54);
    v42 = vaddq_s64(v57, v54);
    v41 += 4;
  }

  while (v40 != v36);
  *(a1 + 4) = *a3;
  *(a1 + 5) = a3[1];
  *(a1 + 6) = a3[2];
  return 0;
}

void *TIFFYCbCrtoRGB(void *result, unsigned int a2, int a3, int a4, int *a5, int *a6, int *a7)
{
  if (a2 >= 0xFF)
  {
    v7 = 255;
  }

  else
  {
    v7 = a2;
  }

  if (a3 >= 255)
  {
    v8 = 255;
  }

  else
  {
    v8 = a3;
  }

  if (a4 >= 255)
  {
    v9 = 255;
  }

  else
  {
    v9 = a4;
  }

  v10 = v9 & ~(v9 >> 31);
  v11 = result[5];
  v12 = result[2];
  v13 = *(result[1] + 4 * v10) + *(v11 + 4 * v7);
  v14 = v8 & ~(v8 >> 31);
  if (v13 >= 255)
  {
    v13 = 255;
  }

  *a5 = v13 & ~(v13 >> 31);
  v15 = *(v11 + 4 * v7) + ((*(result[3] + 4 * v10) + *(result[4] + 4 * v14)) >> 16);
  if (v15 >= 255)
  {
    v15 = 255;
  }

  *a6 = v15 & ~(v15 >> 31);
  v16 = *(v12 + 4 * v14) + *(v11 + 4 * v7);
  if (v16 >= 255)
  {
    v17 = 255;
  }

  else
  {
    v17 = v16;
  }

  *a7 = v17 & ~(v17 >> 31);
  return result;
}

uint64_t TIFFYCbCrToRGBInit(int32x4_t *a1, float *a2, float *a3)
{
  v5 = a1;
  _TIFFmemset(&a1[3], 0, 0x100uLL);
  v6 = 0;
  v5->i64[0] = v5[19].i64;
  v7 = xmmword_1862086F0;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  do
  {
    v5[v6 + 19] = v7;
    ++v6;
    v7 = vaddq_s8(v7, v8);
  }

  while (v6 != 16);
  _TIFFmemset(&v5[35], 255, 0x200uLL);
  v5->i64[1] = v5[67].i64;
  v5[1].i64[0] = v5[131].i64;
  v5[1].i64[1] = v5[195].i64;
  v5[2].i64[0] = v5[259].i64;
  *v10.i32 = a3[1] - *a3;
  v11.i32[0] = 1.0;
  if (*v10.i32 == 0.0)
  {
    *v10.i32 = 1.0;
  }

  v12 = a3[2];
  v13 = v12 + -128.0;
  if (((a3[3] + -128.0) - (v12 + -128.0)) == 0.0)
  {
    *v9.i32 = 1.0;
  }

  else
  {
    *v9.i32 = (a3[3] + -128.0) - (v12 + -128.0);
  }

  v14 = v13;
  v15 = a3[4] + -128.0;
  if (((a3[5] + -128.0) - v15) != 0.0)
  {
    *v11.i32 = (a3[5] + -128.0) - v15;
  }

  v16 = v15;
  v18 = a2[1];
  v17 = a2[2];
  v19 = 2.0;
  v20 = (v17 * -2.0) + 2.0;
  v21 = *a2;
  v22 = (v17 * v20) / v18;
  if (v22 <= 2.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 2.0;
  }

  v24 = v23 * 65536.0;
  v25 = v22 < 0.0;
  v26 = 0.0;
  if (v25)
  {
    v24 = 0.0;
  }

  v27 = (v24 + 0.5);
  if (v20 <= 2.0)
  {
    v28 = v20;
  }

  else
  {
    v28 = 2.0;
  }

  v29 = v28 * 65536.0;
  if (v20 < 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = (v30 + 0.5);
  v32 = (v21 * -2.0) + 2.0;
  v33 = (v21 * v32) / v18;
  if (v33 <= 2.0)
  {
    v34 = (v21 * v32) / v18;
  }

  else
  {
    v34 = 2.0;
  }

  v35 = v34 * 65536.0;
  if (v33 < 0.0)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v35;
  }

  v37 = (v36 + 0.5);
  if (v32 <= 2.0)
  {
    v19 = (v21 * -2.0) + 2.0;
  }

  v38 = v19 * 65536.0;
  if (v32 >= 0.0)
  {
    v26 = v38;
  }

  v39 = v26 + 0.5;
  v40 = vdupq_n_s32(v16);
  v41 = v39;
  v42 = vdupq_lane_s32(v11, 0);
  v43 = vdupq_n_s32(v14);
  v44 = vdupq_lane_s32(v9, 0);
  v45 = vdupq_n_s32(v41);
  v46 = vdupq_n_s32(v31);
  v47 = vdupq_n_s32(v37);
  v48 = vdupq_n_s32(v27);
  v49 = vdupq_n_s32(*a3);
  v5[2].i64[1] = v5[323].i64;
  v50 = vdupq_lane_s32(v10, 0);
  v51 = xmmword_186227460;
  v52 = 256;
  v53.i64[0] = 0x8000000080;
  v53.i64[1] = 0x8000000080;
  v54.i64[0] = 0x400000004;
  v54.i64[1] = 0x400000004;
  do
  {
    v55 = vdupq_n_s32(0x42FE0000u);
    v56 = vdivq_f32(vmulq_f32(vcvtq_f32_s32(vsubq_s32(v51, v40)), v55), v42);
    v57 = vdupq_n_s32(0xC5800000);
    v58 = vdupq_n_s32(0x45800000u);
    v59 = vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v57, v56), v57, vbslq_s8(vcgtq_f32(v56, v58), v58, v56)));
    v60 = vdivq_f32(vmulq_f32(vcvtq_f32_s32(vsubq_s32(v51, v43)), v55), v44);
    v61 = vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v57, v60), v57, vbslq_s8(vcgtq_f32(v60, v58), v58, v60)));
    v62.i64[0] = 0x800000008000;
    v62.i64[1] = 0x800000008000;
    v5[67] = vshrq_n_s32(vmlaq_s32(v62, v45, v59), 0x10uLL);
    v62.i64[0] = 0x800000008000;
    v62.i64[1] = 0x800000008000;
    v5[131] = vshrq_n_s32(vmlaq_s32(v62, v46, v61), 0x10uLL);
    v5[195] = vnegq_s32(vmulq_s32(v47, v59));
    v59.i64[0] = 0x800000008000;
    v59.i64[1] = 0x800000008000;
    v5[259] = vmlsq_s32(v59, v48, v61);
    v63 = vdivq_f32(vmulq_f32(vcvtq_f32_s32(vaddq_s32(vsubq_s32(v51, v49), v53)), vdupq_n_s32(0x437F0000u)), v50);
    v5[323] = vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v57, v63), v57, vbslq_s8(vcgtq_f32(v63, v58), v58, v63)));
    v51 = vaddq_s32(v51, v54);
    ++v5;
    v52 -= 4;
  }

  while (v52);
  return 0;
}

const char *IIOCMErrorString(int a1)
{
  if (a1 > -15473)
  {
    if (a1 > -12849)
    {
      if (a1 > -6682)
      {
        if (a1 > -6663)
        {
          switch(a1)
          {
            case 1100:
              return "BOOTSTRAP_NOT_PRIVILEGED (media server is NOT running)";
            case -6661:
              return "kCVReturnInvalidArgument";
            case -6662:
              return "kCVReturnAllocationFailed";
          }
        }

        else
        {
          switch(a1)
          {
            case -6681:
              return "kCVReturnInvalidSize";
            case -6680:
              return "kCVReturnInvalidPixelFormat";
            case -6663:
              return "kCVReturnUnsupported";
          }
        }

        goto LABEL_105;
      }

      if (a1 <= -6685)
      {
        switch(a1)
        {
          case -12848:
            return "kFigFormatReaderError_ParsingFailure";
          case -12783:
            return "kCMBaseObjectError_ValueNotAvailable";
          case -12782:
            return "kCMBaseObjectError_UnsupportedOperation";
        }

        goto LABEL_105;
      }

      if (a1 == -6684)
      {
        return "kCVReturnPixelBufferNotMetalCompatible";
      }

      else if (a1 == -6683)
      {
        return "kCVReturnPixelBufferNotOpenGLCompatible";
      }

      else
      {
        return "kCVReturnInvalidPixelBufferAttributes";
      }
    }

    else if (a1 > -12910)
    {
      if (a1 > -12907)
      {
        switch(a1)
        {
          case -12906:
            return "kVTCouldNotFindVideoDecoderErr";
          case -12905:
            return "kVTPixelTransferNotSupportedErr";
          case -12902:
            return "kVTParameterErr";
        }

        goto LABEL_105;
      }

      if (a1 == -12909)
      {
        return "kVTVideoDecoderBadDataErr";
      }

      else if (a1 == -12908)
      {
        return "kVTCouldNotFindVideoEncoderErr";
      }

      else
      {
        return "kVTCouldNotCreateInstanceErr";
      }
    }

    else
    {
      if (a1 <= -12913)
      {
        switch(a1)
        {
          case -15472:
            return "kCMPhotoError_AsyncAuxiliaryEncodeFailed";
          case -15471:
            return "kCMPhotoError_PixelTransferNotAllowed";
          case -15470:
            return "kCMPhotoError_XPCError";
        }

        goto LABEL_105;
      }

      if (a1 == -12912)
      {
        return "kVTVideoEncoderMalfunctionErr";
      }

      else if (a1 == -12911)
      {
        return "kVTVideoDecoderMalfunctionErr";
      }

      else
      {
        return "kVTVideoDecoderUnsupportedDataFormatErr";
      }
    }
  }

  else if (a1 > -16999)
  {
    if (a1 > -16993)
    {
      if (a1 > -16358)
      {
        switch(a1)
        {
          case -16357:
            return "kMovieSampleDataWriterError_UnsupportedOperation";
          case -15474:
            return "kCMPhotoError_SubsamplingOrBitDepthNotSupported";
          case -15473:
            return "kCMPhotoError_SequenceFrameEncodeFailed";
        }
      }

      else
      {
        switch(a1)
        {
          case -16992:
            return "kCMPhotoError_InternalFailure";
          case -16991:
            return "kCMPhotoError_AllocationFailed";
          case -16990:
            return "kCMPhotoError_InvalidParameter";
        }
      }

      goto LABEL_105;
    }

    if (a1 > -16996)
    {
      if (a1 == -16995)
      {
        return "kCMPhotoError_UnsupportedPixelFormat";
      }

      else if (a1 == -16994)
      {
        return "kCMPhotoError_UnsupportedOperation";
      }

      else
      {
        return "kCMPhotoError_ValueNotAvailable";
      }
    }

    else if (a1 == -16998)
    {
      return "kCMPhotoError_UnsupportedCodec";
    }

    else if (a1 == -16997)
    {
      return "kCMPhotoError_UnsupportedSourceType";
    }

    else
    {
      return "kCMPhotoError_UnsupportedImageType";
    }
  }

  else if (a1 > -17105)
  {
    if (a1 > -17102)
    {
      switch(a1)
      {
        case -17101:
          return "kCMPhotoError_InvalidSession";
        case -17100:
          return "kCMPhotoError_UnsupportedQuality";
        case -16999:
          return "kCMPhotoError_UnsupportedTiling";
      }

      goto LABEL_105;
    }

    if (a1 == -17104)
    {
      return "kCMPhotoError_FrameDropped";
    }

    else if (a1 == -17103)
    {
      return "kCMPhotoError_InvalidCropRect";
    }

    else
    {
      return "kCMPhotoError_InvalidData";
    }
  }

  else
  {
    if (a1 <= -17108)
    {
      switch(a1)
      {
        case -19092:
          return "kVTParavirtualizationTimeoutErr";
        case -17109:
          return "kCMPhotoError_ThumbnailEncodeFailed";
        case -17108:
          return "kCMPhotoError_FileStructureLocked";
      }

LABEL_105:
      v2 = (a1 & 0x3FFF) - 736;
      if (v2 > 4)
      {
        return "unknown error";
      }

      else
      {
        return off_1E6F41C80[v2];
      }
    }

    if (a1 == -17107)
    {
      return "kCMPhotoError_TimeoutReached";
    }

    else if (a1 == -17106)
    {
      return "kCMPhotoError_DataTooLarge";
    }

    else
    {
      return "kCMPhotoError_RequestCanceled";
    }
  }
}

void HEIFExif::HEIFExif (HEIFExif *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD960;
  v8 = HEIFExif::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFItem::HEIFItem(HEIFItem *this, const __CFDictionary *a2)
{
  *this = &unk_1EF4DD980;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a2);
  if (IIODictionary::containsKeyGroup(v3, @"CoordinateSystemID", @"CameraExtrinsics"))
  {
    *(this + 2) = IIODictionary::getUint32ForKeyGroup(v17, @"CoordinateSystemID", @"CameraExtrinsics");
    *(this + 184) = 1;
  }

  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v17, @"Position", @"CameraExtrinsics");
  if (ObjectForKeyGroup)
  {
    *(this + 185) = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    IIOArray::IIOArray(&v14, ObjectForKeyGroup);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke;
    v13[3] = &__block_descriptor_tmp_59_1;
    v13[4] = this;
    IIOArray::enumerate(v5, v13);
    IIOArray::~IIOArray(&v14);
  }

  v6 = IIODictionary::getObjectForKeyGroup(v17, @"Rotation", @"CameraExtrinsics");
  if (v6)
  {
    *(this + 186) = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    IIOArray::IIOArray(&v14, v6);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_60_0;
    v12[4] = this;
    IIOArray::enumerate(v7, v12);
    IIOArray::~IIOArray(&v14);
  }

  v8 = IIODictionary::getObjectForKeyGroup(v17, @"Intrinsics", @"CameraModel");
  if (v8)
  {
    *(this + 187) = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    IIOArray::IIOArray(&v14, v8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_3;
    v11[3] = &__block_descriptor_tmp_61_1;
    v11[4] = this;
    IIOArray::enumerate(v9, v11);
    IIOArray::~IIOArray(&v14);
  }

  v10 = IIODictionary::getObjectForKeyGroup(v17, @"ModelType", @"CameraModel");
  if (v10)
  {
    *(this + 24) = CFStringCreateCopy(*MEMORY[0x1E695E480], v10);
  }

  IIODictionary::~IIODictionary(v17);
}

void sub_1860C4118(_Unwind_Exception *a1)
{
  IIOArray::~IIOArray((v1 - 80));
  IIODictionary::~IIODictionary((v1 - 56));
  _Unwind_Resume(a1);
}

void ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke(uint64_t a1, const __CFString *cf, uint64_t a3)
{
  if (cf && a3 <= 2)
  {
    v5 = *(a1 + 32);
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      IIONumber::IIONumber(v7, cf);
      *(v5 + 8 * a3 + 16) = IIONumber::doubleNum(v7);
      IIONumber::~IIONumber(v7);
    }
  }
}

void sub_1860C41E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_2(uint64_t a1, const __CFString *cf, uint64_t a3)
{
  if (cf && a3 <= 8)
  {
    v5 = *(a1 + 32);
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      IIONumber::IIONumber(v7, cf);
      *(v5 + 8 * a3 + 40) = IIONumber::doubleNum(v7);
      IIONumber::~IIONumber(v7);
    }
  }
}

void sub_1860C4274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_3(uint64_t a1, const __CFString *cf, uint64_t a3)
{
  if (cf && a3 <= 8)
  {
    v5 = *(a1 + 32);
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      IIONumber::IIONumber(v7, cf);
      *(v5 + 8 * a3 + 112) = IIONumber::doubleNum(v7);
      IIONumber::~IIONumber(v7);
    }
  }
}

void sub_1860C4308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFItem::HEIFItem(HEIFItem *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD980;
  v8 = HEIFItem::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFItem::~HEIFItem(HEIFItem *this)
{
  *this = &unk_1EF4DD980;
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
    *(this + 24) = 0;
  }
}

{
  HEIFItem::~HEIFItem(this);

  JUMPOUT(0x186602850);
}

void HEIFItem::updateProperties(HEIFItem *this, IIODictionary *a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  IIODictionary::IIODictionary(&v16);
  IIODictionary::setObjectForKey(a2, v17, @"{HEIF}");
  if ((*(this + 184) & 1) != 0 || (*(this + 185) & 1) != 0 || *(this + 186) == 1)
  {
    v13 = 0;
    value = 0;
    v15 = 0;
    IIODictionary::IIODictionary(&v13);
    IIODictionary::setObjectForKey(&v16, value, @"CameraExtrinsics");
    if (*(this + 184) == 1)
    {
      IIONumber::IIONumber(&v10, *(this + 2));
      IIODictionary::setObjectForKey(&v13, v12, @"CoordinateSystemID");
      IIONumber::~IIONumber(&v10);
    }

    if (*(this + 185) == 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      IIOArray::IIOArray(&v10);
      for (i = 0; i != 24; i += 8)
      {
        IIONumber::IIONumber(v8, *(this + i + 16));
        IIOArray::addObject(&v10, v8);
        IIONumber::~IIONumber(v8);
      }

      IIODictionary::setObjectForKey(&v13, v11, @"Position");
      IIOArray::~IIOArray(&v10);
    }

    if (*(this + 186) == 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      IIOArray::IIOArray(&v10);
      for (j = 40; j != 112; j += 8)
      {
        IIONumber::IIONumber(v8, *(this + j));
        IIOArray::addObject(&v10, v9);
        IIONumber::~IIONumber(v8);
      }

      IIODictionary::setObjectForKey(&v13, v11, @"Rotation");
      IIOArray::~IIOArray(&v10);
    }

    IIODictionary::~IIODictionary(&v13);
  }

  if ((*(this + 187) & 1) != 0 || *(this + 24))
  {
    v13 = 0;
    value = 0;
    v15 = 0;
    IIODictionary::IIODictionary(&v13);
    IIODictionary::setObjectForKey(&v16, value, @"CameraModel");
    if (*(this + 187) == 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      IIOArray::IIOArray(&v10);
      for (k = 0; k != 72; k += 8)
      {
        IIONumber::IIONumber(v8, *(this + k + 112));
        IIOArray::addObject(&v10, v9);
        IIONumber::~IIONumber(v8);
      }

      IIODictionary::setObjectForKey(&v13, v11, @"Intrinsics");
      IIOArray::~IIOArray(&v10);
    }

    v7 = *(this + 24);
    if (v7)
    {
      IIODictionary::setObjectForKey(&v13, v7, @"ModelType");
    }

    IIODictionary::~IIODictionary(&v13);
  }

  IIODictionary::~IIODictionary(&v16);
}

void sub_1860C46A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary((v7 - 56));
  _Unwind_Resume(a1);
}

uint64_t HEIFItem::writeToStream(HEIFItem *this, CFWriteStreamRef stream)
{
  *buffer = 1835365449;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 192);
  *v12 = 0;
  v4 = *(this + 24);
  if (!v4)
  {
    v10 = v12;
    v9 = stream;
    v8 = 4;
    goto LABEL_8;
  }

  *v12 = CFStringGetLength(v4);
  CStringPtr = CFStringGetCStringPtr(*(this + 24), 0x8000100u);
  if (CStringPtr)
  {
    v6 = *v12 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = CStringPtr;
    CFWriteStreamWrite(stream, v12, 4);
    v8 = *v12;
    v9 = stream;
    v10 = v7;
LABEL_8:
    CFWriteStreamWrite(v9, v10, v8);
  }

  return 0;
}

void HEIFXMP::HEIFXMP(HEIFXMP *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD9A0;
  v8 = HEIFXMP::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFXMP::~HEIFXMP(HEIFXMP *this)
{
  *this = &unk_1EF4DD9A0;
}

{
  *this = &unk_1EF4DD9A0;
  JUMPOUT(0x186602850);
}

void HEIFStereoAggressor::HEIFStereoAggressor(HEIFStereoAggressor *this, const __CFDictionary *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_1EF4DD9C0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  memset(v8, 0, sizeof(v8));
  IIODictionary::IIODictionary(v8, a2);
  if (IIODictionary::containsKey(v8, @"Type"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(v8, @"Type");
    *v3 = CFRetain(ObjectForKey);
  }

  if (IIODictionary::containsKey(v8, @"SubTypeURI"))
  {
    v5 = IIODictionary::getObjectForKey(v8, @"SubTypeURI");
    *(this + 2) = CFRetain(v5);
  }

  v6 = IIODictionary::containsKey(v8, @"Severity");
  FloatForKey = -1.0;
  if (v6)
  {
    FloatForKey = IIODictionary::getFloatForKey(v8, @"Severity");
  }

  *(this + 6) = FloatForKey;
  IIODictionary::~IIODictionary(v8);
}

void sub_1860C499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void HEIFStereoAggressor::HEIFStereoAggressor(HEIFStereoAggressor *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD9C0;
  v8 = HEIFStereoAggressor::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFStereoAggressor::~HEIFStereoAggressor(HEIFStereoAggressor *this)
{
  *this = &unk_1EF4DD9C0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  HEIFStereoAggressor::~HEIFStereoAggressor(this);

  JUMPOUT(0x186602850);
}

void HEIFGroupItem::HEIFGroupItem(HEIFGroupItem *this, const __CFDictionary *a2, const __CFDictionary *a3, int a4)
{
  *this = &unk_1EF4DD9E0;
  *(this + 2) = 0u;
  *(this + 1) = 0;
  v7 = (this + 8);
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a2);
  *(this + 3) = a4;
  *v7 = IIODictionary::getUint32ForKey(v8, *gIIO_kCMPhotoDecompressionContainerDescription_Group_Type);
  ObjectForKey = IIODictionary::getObjectForKey(v17, *gIIO_kCMPhotoDecompressionContainerDescription_Group_PictureIndexList);
  memset(v16, 0, sizeof(v16));
  IIOArray::IIOArray(v16, ObjectForKey);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN13HEIFGroupItemC2EPK14__CFDictionaryS2_j_block_invoke;
  v15[3] = &__block_descriptor_tmp_83;
  v15[4] = this;
  IIOArray::enumerate(v10, v15);
  if (a3)
  {
    memset(v14, 0, sizeof(v14));
    IIODictionary::IIODictionary(v14, a3);
    if (IIODictionary::containsKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment))
    {
      *(this + 20) = 1;
      *(this + 4) = IIODictionary::getUint32ForKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment);
    }

    v11 = IIODictionary::getObjectForKey(v17, @"StereoAggressors");
    memset(v13, 0, sizeof(v13));
    IIOArray::IIOArray(v13, v11);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZN13HEIFGroupItemC2EPK14__CFDictionaryS2_j_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_87_0;
    v12[4] = this;
    IIOArray::enumerate(v13, v12);
    if (IIODictionary::containsKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation))
    {
      *(this + 6) = IIODictionary::getUint32ForKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation);
    }

    IIOArray::~IIOArray(v13);
    IIODictionary::~IIODictionary(v14);
  }

  IIOArray::~IIOArray(v16);
  IIODictionary::~IIODictionary(v17);
}

void sub_1860C4D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIODictionary::~IIODictionary(va);
  IIOArray::~IIOArray((v18 - 112));
  IIODictionary::~IIODictionary((v18 - 88));
  v20 = v16[7];
  if (v20)
  {
    v16[8] = v20;
    operator delete(v20);
  }

  v21 = *v17;
  if (*v17)
  {
    v16[5] = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void ___ZN13HEIFGroupItemC2EPK14__CFDictionaryS2_j_block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = *(a1 + 32);
  IIONumber::IIONumber(v18, a2);
  v3 = IIONumber::uint32Num(v18);
  v5 = v2[5];
  v4 = v2[6];
  if (v5 >= v4)
  {
    v7 = v2[4];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>((v2 + 4), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = v3;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v2[4];
    v2[4] = v16;
    v2[5] = v6;
    v2[6] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  v2[5] = v6;
  IIONumber::~IIONumber(v18);
}

void sub_1860C4E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFGroupItem::HEIFGroupItem(HEIFGroupItem *this, __CFReadStream *a2)
{
  *this = &unk_1EF4DD9E0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v2 = HEIFGroupItem::readFromStream(this, a2);
  if (v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = v2;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void sub_1860C4FAC(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HEIFGroupItem::readFromStream(HEIFGroupItem *this, CFReadStreamRef stream)
{
  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) != 4)
  {
    return 4294967246;
  }

  if (*buffer == 542134855)
  {
    if (CFReadStreamRead(stream, this + 8, 20) == 20)
    {
      v4 = (this + 32);
      *(this + 5) = *(this + 4);
      *(this + 8) = *(this + 7);
      *v18 = 0;
      if (CFReadStreamRead(stream, v18, 4) == 4)
      {
        if (*v18)
        {
          v5 = 0;
          do
          {
            LODWORD(v17) = 0;
            if (CFReadStreamRead(stream, &v17, 4) != 4)
            {
              return 4294967246;
            }

            v7 = *(this + 5);
            v6 = *(this + 6);
            if (v7 >= v6)
            {
              v9 = *v4;
              v10 = v7 - *v4;
              v11 = v10 >> 2;
              v12 = (v10 >> 2) + 1;
              if (v12 >> 62)
              {
                std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
              }

              v13 = v6 - v9;
              if (v13 >> 1 > v12)
              {
                v12 = v13 >> 1;
              }

              if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v14 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v14 = v12;
              }

              if (v14)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(this + 32, v14);
              }

              *(4 * v11) = v17;
              v8 = 4 * v11 + 4;
              memcpy(0, v9, v10);
              v15 = *(this + 4);
              *(this + 4) = 0;
              *(this + 5) = v8;
              *(this + 6) = 0;
              if (v15)
              {
                operator delete(v15);
              }
            }

            else
            {
              *v7 = v17;
              v8 = (v7 + 4);
            }

            *(this + 5) = v8;
          }

          while (++v5 < *v18);
        }

        if (CFReadStreamRead(stream, v18, 4) == 4)
        {
          if (*v18)
          {
            operator new();
          }

          return 0;
        }
      }
    }

    return 4294967246;
  }

  return 0;
}

void HEIFGroupItem::~HEIFGroupItem(HEIFGroupItem *this)
{
  *this = &unk_1EF4DD9E0;
  *(this + 5) = *(this + 4);
  v4 = this + 56;
  v2 = *(this + 7);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v2[v5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v2 = *(this + 7);
        v3 = *(this + 8);
      }

      v5 = v6++;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  *(this + 8) = v2;
  if (v2)
  {
    operator delete(v2);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }
}

{
  HEIFGroupItem::~HEIFGroupItem(this);

  JUMPOUT(0x186602850);
}

__CFString *HEIFGroupItem::getMonoscopicImageLocationString(HEIFGroupItem *this)
{
  v1 = *(this + 6) - 1;
  if (v1 > 2)
  {
    v2 = kIIOMonoscopicImageLocation_Unspecified;
  }

  else
  {
    v2 = off_1E6F41CA8[v1];
  }

  return *v2;
}

uint64_t HEIFGroupItem::getGroupPictureIndexAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 32);
  if (a2 < ((*(this + 40) - v2) >> 2))
  {
    return *(v2 + 4 * a2);
  }

  __break(1u);
  return this;
}

uint64_t HEIFGroupItem::getStereoAggressorAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 56);
  if (a2 < ((*(this + 64) - v2) >> 3))
  {
    return *(v2 + 8 * a2);
  }

  __break(1u);
  return this;
}

CFIndex HEIFGroupItem::writeToStream(HEIFGroupItem *this, CFWriteStreamRef stream)
{
  *buffer = 542134855;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 20);
  *v9 = (*(this + 5) - *(this + 4)) >> 2;
  CFWriteStreamWrite(stream, v9, 4);
  CFWriteStreamWrite(stream, *(this + 4), 4 * *v9);
  *v9 = (*(this + 8) - *(this + 7)) >> 3;
  result = CFWriteStreamWrite(stream, v9, 4);
  if (!*v9)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(this + 7);
    if (v5 >= (*(this + 8) - v6) >> 3)
    {
      break;
    }

    v7 = *(v6 + 8 * v5);
    *v10 = 1195463763;
    CFWriteStreamWrite(stream, v10, 4);
    result = CFWriteStreamWrite(stream, (v7 + 8), 24);
    if (++v5 >= *v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void HEIFThumbnailImage::HEIFThumbnailImage(HEIFThumbnailImage *this, const __CFDictionary *a2)
{
  *this = &unk_1EF4DDA00;
  memset(v5, 0, sizeof(v5));
  IIODictionary::IIODictionary(v5, a2);
  *(this + 2) = IIODictionary::getUint32ForKeyGroup(v5, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
  *(this + 3) = IIODictionary::getUint32ForKeyGroup(v5, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
  *(this + 5) = IIODictionary::getUint32ForKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
  *(this + 6) = IIODictionary::getUint32ForKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
  *(this + 4) = 8;
  if (IIODictionary::containsKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth))
  {
    ObjectForKey = IIODictionary::getObjectForKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth);
    memset(v4, 0, sizeof(v4));
    IIOArray::IIOArray(v4, ObjectForKey);
    if (IIOArray::getCount(v4))
    {
      *(this + 4) = IIOArray::getUint32AtIndex(v4, 0);
    }

    IIOArray::~IIOArray(v4);
  }

  IIODictionary::~IIODictionary(v5);
}

void sub_1860C561C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void HEIFThumbnailImage::HEIFThumbnailImage(HEIFThumbnailImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DDA00;
  v8 = HEIFThumbnailImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFThumbnailImage::~HEIFThumbnailImage(HEIFThumbnailImage *this)
{
  *this = &unk_1EF4DDA00;
}

{
  *this = &unk_1EF4DDA00;
  JUMPOUT(0x186602850);
}

void HEIFAuxImage::HEIFAuxImage(HEIFAuxImage *this, const __CFDictionary *a2, const __CFDictionary *a3, int a4)
{
  *this = &unk_1EF4DDA20;
  memset(v21, 0, sizeof(v21));
  IIODictionary::IIODictionary(v21, a2);
  *(this + 8) = 0u;
  v7 = (this + 8);
  *(this + 7) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 8) = a4;
  if (!a3)
  {
    ObjectForKey = IIODictionary::getObjectForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN);
    *v7 = IIODictionary::getUint32ForKeyGroup(v21, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    *(this + 3) = IIODictionary::getUint32ForKeyGroup(v21, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    *(this + 4) = IIODictionary::getUint32ForKey(v21, @"Orientation");
    *(this + 11) = IIODictionary::getFloatForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromMakerNote);
    *(this + 12) = IIODictionary::getFloatForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromProperties);
    *(this + 10) = IIODictionary::getUint32ForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat);
    Uint32ForKey = IIODictionary::getUint32ForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryType);
    *(this + 7) = Uint32ForKey;
    if (Uint32ForKey == 3)
    {
      if (!ObjectForKey)
      {
        _cg_jpeg_mem_term("HEIFAuxImage", 1115, "*** ERROR: 'kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN' is NULL - for 'kCMPhotoAuxiliaryImageType_Alpha'\n");
        ObjectForKey = *gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha;
      }

      v15 = IIODictionary::getUint32ForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_AlphaPremultiplication);
      if (v15)
      {
        v16 = v15 == 1;
      }

      else
      {
        v16 = 3;
      }

      *(this + 9) = v16;
      IIO_AlphaInfoString(v16);
      _cg_jpeg_mem_term("HEIFAuxImage", 1125, "    HEIFAuxImage: alpha: %s\n");
    }

    if (!ObjectForKey)
    {
      ObjectForKey = IIODictionary::getObjectForKey(v21, @"URI");
      if (!ObjectForKey)
      {
        goto LABEL_27;
      }

      *(this + 7) = 99;
    }

    goto LABEL_25;
  }

  value = 0;
  CFDictionaryGetValueIfPresent(a3, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, &value);
  if (value)
  {
    if (CFArrayGetCount(value))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value, 0);
      theArray = 0;
      CFDictionaryGetValueIfPresent(ValueAtIndex, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages, &theArray);
      if (theArray)
      {
        if (CFArrayGetCount(theArray))
        {
          v9 = CFArrayGetValueAtIndex(theArray, 0);
          memset(v18, 0, sizeof(v18));
          IIODictionary::IIODictionary(v18, v9);
          ObjectForKey = IIODictionary::getObjectForKey(v18, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN);
          v11 = IIODictionary::getUint32ForKey(v18, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryType);
          *(this + 7) = v11;
          if (v11 == 3)
          {
            if (!ObjectForKey)
            {
              _cg_jpeg_mem_term("HEIFAuxImage", 1077, "*** ERROR: 'kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN' is NULL - for 'kCMPhotoAuxiliaryImageType_Alpha'\n");
              ObjectForKey = *gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha;
            }

            v12 = IIODictionary::getUint32ForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_AlphaPremultiplication);
            if (v12)
            {
              v13 = v12 == 1;
            }

            else
            {
              v13 = 3;
            }

            *(this + 9) = v13;
            IIO_AlphaInfoString(v13);
            _cg_jpeg_mem_term("HEIFAuxImage", 1087, "    HEIFAuxImage: alpha: %s\n");
          }

          *v7 = IIODictionary::getUint32ForKeyGroup(v18, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
          *(this + 3) = IIODictionary::getUint32ForKeyGroup(v18, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
          *(this + 4) = IIODictionary::getUint32ForKey(v18, @"Orientation");
          *(this + 10) = IIODictionary::getUint32ForKey(v18, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat);
          IIODictionary::~IIODictionary(v18);
          if (ObjectForKey)
          {
LABEL_25:
            v17 = CFGetTypeID(ObjectForKey);
            if (v17 == CFStringGetTypeID())
            {
              *(this + 7) = CFRetain(ObjectForKey);
            }
          }
        }
      }
    }
  }

LABEL_27:
  *(this + 5) = IIODictionary::getUint32ForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
  *(this + 6) = IIODictionary::getUint32ForKey(v21, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
  IIODictionary::~IIODictionary(v21);
}

void sub_1860C5B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void HEIFAuxImage::HEIFAuxImage(HEIFAuxImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DDA20;
  v8 = HEIFAuxImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFAuxImage::~HEIFAuxImage(HEIFAuxImage *this)
{
  *this = &unk_1EF4DDA20;
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
}

{
  HEIFAuxImage::~HEIFAuxImage(this);

  JUMPOUT(0x186602850);
}

uint64_t HEIFAuxImage::writeToStream(const UInt8 *this, CFWriteStreamRef stream)
{
  *buffer = 542659905;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 56);
  *v8 = 0;
  v4 = *(this + 7);
  if (v4)
  {
    memset(v7, 0, sizeof(v7));
    IIOString::IIOString(v7, v4);
    *v8 = IIOString::length(v7);
    v5 = IIOString::utf8String(v7);
    if (v5 && *v8)
    {
      CFWriteStreamWrite(stream, v8, 4);
      CFWriteStreamWrite(stream, v5, *v8);
    }

    IIOString::~IIOString(v7);
  }

  else
  {
    CFWriteStreamWrite(stream, v8, 4);
  }

  return 0;
}

void HEIFAlternateImage::HEIFAlternateImage(HEIFAlternateImage *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  *this = &unk_1EF4DDA40;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  memset(v28, 0, sizeof(v28));
  IIODictionary::IIODictionary(v28, a2);
  *v4 = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_CodecType);
  *(this + 11) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionOption_AlternateIndex);
  *(this + 12) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImageCount);
  Uint32ForKey = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_ItemType);
  *(this + 3) = Uint32ForKey;
  if (!Uint32ForKey)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_CodecType);
    *(this + 3) = Uint32ForKey;
  }

  if (Uint32ForKey == 1953325424)
  {
    if (gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat)
    {
      *(this + 4) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat);
    }

    if (gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension)
    {
      *(this + 5) = IIODictionary::getUint32ForKeyGroup(v28, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension);
      *(this + 6) = IIODictionary::getUint32ForKeyGroup(v28, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension);
    }

    if (gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation)
    {
      v6 = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation);
      *(this + 7) = v6;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    else if (*(this + 7))
    {
      goto LABEL_13;
    }

    *(this + 7) = IIODictionary::getUint32ForKey(v28, @"Orientation");
LABEL_13:
    ObjectForKey = IIODictionary::getObjectForKey(v28, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace);
    *(this + 16) = CGColorSpaceRetain(ObjectForKey);
    *(this + 9) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
    *(this + 10) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
    *(this + 13) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImageCount);
    if (IIODictionary::containsKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationDetails))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = IIODictionary::getObjectForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationDetails);
      IIODictionary::IIODictionary(&v25, v8);
      DoubleFromRationalForKey = IIODictionary::getDoubleFromRationalForKey(&v25, *gIIO_kCMPhotoMetadata_TonemapAlternateHDRHeadroom);
      *(this + 14) = exp2f(DoubleFromRationalForKey);
      v10 = IIODictionary::getDoubleFromRationalForKey(&v25, *gIIO_kCMPhotoMetadata_TonemapBaseHDRHeadroom);
      *(this + 15) = exp2f(v10);
      *(this + 64) = IIODictionary::getBoolForKey(&v25, *gIIO_kCMPhotoMetadata_TonemapBaseColorIsWorkingColor);
      v11 = IIODictionary::getObjectForKey(&v25, @"TonemapChannelMetadata");
      memset(v24, 0, sizeof(v24));
      IIOArray::IIOArray(v24, v11);
      Count = IIOArray::getCount(v24);
      v13 = 0;
      *(this + 65) = Count == 3;
      v14 = (this + 84);
      do
      {
        ObjectAtIndex = IIOArray::getObjectAtIndex(v24, v13);
        memset(v23, 0, sizeof(v23));
        IIODictionary::IIODictionary(v23, ObjectAtIndex);
        if (gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset)
        {
          v16 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset);
          *v14 = v16;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset)
        {
          v17 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset);
          *(v14 - 1) = v17;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin)
        {
          v18 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin);
          *(v14 - 4) = v18;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax)
        {
          v19 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax);
          *(v14 - 3) = v19;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_Gamma)
        {
          v20 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_Gamma);
          *(v14 - 2) = v20;
        }

        IIODictionary::~IIODictionary(v23);
        if (Count != 3)
        {
          break;
        }

        v14 += 5;
      }

      while (v13++ < 2);
      IIOArray::~IIOArray(v24);
      IIODictionary::~IIODictionary(&v25);
    }
  }

  *(this + 8) = 8;
  if (IIODictionary::containsKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth))
  {
    v22 = IIODictionary::getObjectForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    IIOArray::IIOArray(&v25, v22);
    if (IIOArray::getCount(&v25))
    {
      *(this + 8) = IIOArray::getUint32AtIndex(&v25, 0);
    }

    IIOArray::~IIOArray(&v25);
  }

  IIODictionary::~IIODictionary(v28);
}

void sub_1860C6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

void HEIFAlternateImage::HEIFAlternateImage(HEIFAlternateImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DDA40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  v8 = HEIFAlternateImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFAlternateImage::~HEIFAlternateImage(HEIFAlternateImage *this)
{
  *this = &unk_1EF4DDA40;
  v2 = *(this + 16);
  if (v2)
  {
    CGColorSpaceRelease(v2);
  }

  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
}

{
  HEIFAlternateImage::~HEIFAlternateImage(this);

  JUMPOUT(0x186602850);
}

uint64_t HEIFAlternateImage::writeToStream(HEIFAlternateImage *this, CFWriteStreamRef stream)
{
  *buffer = 1480936518;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 128);
  return IIO_ColorSpaceAddToStream(*(this + 16), stream);
}

void HEIFAlternateImage::addInfoToProperties(HEIFAlternateImage *this, IIODictionary *a2)
{
  IIONumber::IIONumber(&v14, *(this + 14));
  IIODictionary::setObjectForKey(a2, value, @"TonemapAlternateHDRHeadroom");
  IIONumber::~IIONumber(&v14);
  IIONumber::IIONumber(&v14, *(this + 15));
  IIODictionary::setObjectForKey(a2, value, @"TonemapBaseHDRHeadroom");
  IIONumber::~IIONumber(&v14);
  v4 = MEMORY[0x1E695E4D0];
  if (!*(this + 64))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(a2, *v4, @"TonemapBaseColorIsWorkingColor");
  v14 = 0;
  v15 = 0;
  value = 0;
  IIOArray::IIOArray(&v14);
  IIODictionary::setObjectForKey(a2, v15, @"TonemapChannelMetadata");
  v5 = 0;
  v6 = (this + 84);
  v7 = *(this + 65);
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    IIODictionary::IIODictionary(&v11);
    IIONumber::IIONumber(v9, *(v6 - 4));
    IIODictionary::setObjectForKey(&v11, v10, @"GainMapMin");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(v6 - 3));
    IIODictionary::setObjectForKey(&v11, v10, @"GainMapMax");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(v6 - 2));
    IIODictionary::setObjectForKey(&v11, v10, @"Gamma");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(v6 - 1));
    IIODictionary::setObjectForKey(&v11, v10, @"BaseOffset");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *v6);
    IIODictionary::setObjectForKey(&v11, v10, @"AlternateOffset");
    IIONumber::~IIONumber(v9);
    IIOArray::addObject(&v14, v12);
    IIODictionary::~IIODictionary(&v11);
    if (!v7)
    {
      break;
    }

    v6 += 5;
  }

  while (v5++ < 2);
  IIOArray::~IIOArray(&v14);
}

void sub_1860C66A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

void HEIFAlternateImage::addAsAuxImageToProperties(HEIFAlternateImage *this, IIODictionary *a2)
{
  IIODictionary::setObjectForKey(a2, @"kCGImageAuxiliaryDataTypeISOGainMap", @"AuxiliaryDataType");
  IIONumber::IIONumber(v4, 1953325424);
  IIODictionary::setObjectForKey(a2, value, @"PixelFormat");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 5));
  IIODictionary::setObjectForKey(a2, value, @"Width");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 6));
  IIODictionary::setObjectForKey(a2, value, @"Height");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 7));
  IIODictionary::setObjectForKey(a2, value, @"Orientation");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 4));
  IIODictionary::setObjectForKey(a2, value, @"PixelFormat");
  IIONumber::~IIONumber(v4);
}

void sub_1860C6840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFMainImage::HEIFMainImage(HEIFMainImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *(this + 8) = 0u;
  *this = &unk_1EF4DDA60;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  v8 = HEIFMainImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void sub_1860C6918(_Unwind_Exception *exception_object)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  v5 = v1[13];
  if (v5)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  v6 = v1[10];
  if (v6)
  {
    v1[11] = v6;
    operator delete(v6);
  }

  v7 = v1[7];
  if (v7)
  {
    v1[8] = v7;
    operator delete(v7);
  }

  v8 = v1[4];
  if (v8)
  {
    v1[5] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[2] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HEIFMainImage::getHEIFAuxImageAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (a2 >= ((*(this + 5) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::getHEIFAlternateImageAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 7);
  if (a2 >= ((*(this + 8) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::getHEIFThumbnailImageAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (a2 >= ((*(this + 2) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::writeToStream(HEIFMainImage *this, CFWriteStreamRef stream)
{
  v4 = 1297434708;
  *buffer = 1313423693;
  CFWriteStreamWrite(stream, buffer, 4);
  *buffer = 1297434708;
  CFWriteStreamWrite(stream, buffer, 4);
  *v27 = (*(this + 2) - *(this + 1)) >> 3;
  CFWriteStreamWrite(stream, v27, 8);
  if (*v27 >= 1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(this + 1);
      if (v5 >= (*(this + 2) - v7) >> 3)
      {
        goto LABEL_39;
      }

      v8 = *(v7 + 8 * v5);
      *v28 = 1297434708;
      CFWriteStreamWrite(stream, v28, 4);
      CFWriteStreamWrite(stream, (v8 + 8), 20);
      v5 = v6;
      v9 = *v27 <= v6++;
    }

    while (!v9);
  }

  *buffer = 1230525761;
  CFWriteStreamWrite(stream, buffer, 4);
  *v27 = (*(this + 5) - *(this + 4)) >> 3;
  CFWriteStreamWrite(stream, v27, 8);
  if (*v27 >= 1)
  {
    v10 = 0;
    v4 = 1;
    do
    {
      v11 = *(this + 4);
      if (v10 >= (*(this + 5) - v11) >> 3)
      {
        goto LABEL_39;
      }

      HEIFAuxImage::writeToStream(*(v11 + 8 * v10), stream);
      v10 = v4;
      v9 = *v27 <= v4;
      v4 = (v4 + 1);
    }

    while (!v9);
  }

  *buffer = 1230261313;
  CFWriteStreamWrite(stream, buffer, 4);
  *v27 = (*(this + 8) - *(this + 7)) >> 3;
  CFWriteStreamWrite(stream, v27, 8);
  if (*v27 >= 1)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = *(this + 7);
      if (v12 >= (*(this + 8) - v14) >> 3)
      {
        goto LABEL_39;
      }

      v15 = HEIFAlternateImage::writeToStream(*(v14 + 8 * v12), stream);
      v12 = v13;
      v9 = *v27 <= v13++;
      if (v9)
      {
        v4 = v15;
        goto LABEL_18;
      }
    }
  }

  v4 = 0;
LABEL_18:
  *buffer = 1179211845;
  CFWriteStreamWrite(stream, buffer, 4);
  *v27 = (*(this + 11) - *(this + 10)) >> 3;
  CFWriteStreamWrite(stream, v27, 8);
  if (*v27 >= 1)
  {
    v16 = 0;
    v4 = 1;
    while (1)
    {
      v17 = *(this + 10);
      if (v16 >= (*(this + 11) - v17) >> 3)
      {
        goto LABEL_39;
      }

      v18 = *(v17 + 8 * v16);
      *v28 = 1179211845;
      CFWriteStreamWrite(stream, v28, 4);
      CFWriteStreamWrite(stream, (v18 + 8), 16);
      v16 = v4;
      v9 = *v27 <= v4;
      v4 = (v4 + 1);
      if (v9)
      {
        v4 = 0;
        break;
      }
    }
  }

  *buffer = 1296389193;
  CFWriteStreamWrite(stream, buffer, 4);
  *v27 = (*(this + 17) - *(this + 16)) >> 3;
  CFWriteStreamWrite(stream, v27, 8);
  if (*v27 >= 1)
  {
    v19 = 0;
    v4 = 1;
    while (1)
    {
      v20 = *(this + 16);
      if (v19 >= (*(this + 17) - v20) >> 3)
      {
        goto LABEL_39;
      }

      HEIFItem::writeToStream(*(v20 + 8 * v19), stream);
      v19 = v4;
      v9 = *v27 <= v4;
      v4 = (v4 + 1);
      if (v9)
      {
        v4 = 0;
        break;
      }
    }
  }

  *buffer = 542133592;
  CFWriteStreamWrite(stream, buffer, 4);
  *v27 = (*(this + 14) - *(this + 13)) >> 3;
  CFWriteStreamWrite(stream, v27, 8);
  if (*v27 >= 1)
  {
    v21 = 0;
    v4 = 1;
    while (1)
    {
      v22 = *(this + 13);
      if (v21 >= (*(this + 14) - v22) >> 3)
      {
        break;
      }

      v23 = *(v22 + 8 * v21);
      *v28 = 542133592;
      CFWriteStreamWrite(stream, v28, 4);
      CFWriteStreamWrite(stream, (v23 + 8), 16);
      v21 = v4;
      v9 = *v27 <= v4;
      v4 = (v4 + 1);
      if (v9)
      {
        v4 = 0;
        goto LABEL_36;
      }
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_36:
  *buffer = 1096040772;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 160, 144);
  *buffer = 1313623875;
  CFWriteStreamWrite(stream, buffer, 4);
  IIO_ColorSpaceNameAddToStream(*(this + 36), stream);
  *buffer = 1397509955;
  CFWriteStreamWrite(stream, buffer, 4);
  IIO_ColorSpaceAddToStream(*(this + 37), stream);
  if (!*(this + 41))
  {
LABEL_40:
    v25 = 2427;
LABEL_42:
    _cg_jpeg_mem_term("writeToStream", v25, "*** ERROR: mainImage - bad dimension: %d x %d\n");
    return v4;
  }

  if (!*(this + 42))
  {
    v25 = 2428;
    goto LABEL_42;
  }

  return v4;
}

void GlobalHEIFInfo::GlobalHEIFInfo(GlobalHEIFInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *this = &unk_1EF4DDA80;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::vector<_APPx *>::resize(this + 1, 0);
  std::vector<_APPx *>::resize(this + 4, 0);
  *(this + 7) = 0;
  v6 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = v6;
  if (v6)
  {
    if (CFReadStreamOpen(v6))
    {
      if (GlobalHEIFInfo::readFromStream(this, v7))
      {
        *(this + 2) = *(this + 1);
        *(this + 5) = *(this + 4);
        *(this + 8) = 0;
        *(this + 18) = 0;
        v8 = *(this + 7);
        if (v8)
        {
          CFRelease(v8);
          *(this + 7) = 0;
        }
      }

      CFReadStreamClose(v7);
    }

    CFRelease(v7);
  }
}

void sub_1860C6FA4(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GlobalHEIFInfo::readFromStream(UInt8 *this, CFReadStreamRef stream)
{
  *v6 = 0;
  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) != 4)
  {
    return 4294967246;
  }

  if (*buffer != 1112493127)
  {
    return 0;
  }

  if (CFReadStreamRead(stream, v6, 8) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 1, *v6);
  if (*v6 >= 1)
  {
    operator new();
  }

  if (CFReadStreamRead(stream, v6, 8) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 4, *v6);
  if (*v6 >= 1)
  {
    operator new();
  }

  if (CFReadStreamRead(stream, this + 64, 12) != 12 || CFReadStreamRead(stream, v6, 8) != 8)
  {
    return 4294967246;
  }

  result = *v6;
  if (!*v6)
  {
    return result;
  }

  GlobalHEIFInfo::readFromStream(*v6, stream, v6, this);
  return 0;
}

uint64_t GlobalHEIFInfo::writeToStream(GlobalHEIFInfo *this, CFWriteStreamRef stream)
{
  *buffer = 1112493127;
  CFWriteStreamWrite(stream, buffer, 4);
  *v16 = (*(this + 2) - *(this + 1)) >> 3;
  result = CFWriteStreamWrite(stream, v16, 8);
  v5 = *v16;
  if (*v16 >= 1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(this + 1);
      if (v6 >= (*(this + 2) - v8) >> 3)
      {
        goto LABEL_20;
      }

      v9 = *(v8 + 8 * v6);
      if (v9)
      {
        result = HEIFMainImage::writeToStream(v9, stream);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = LogError("writeToStream", 2831, "*** ERROR: count=%d --> _mainImages[%d] is NULL?\n", v5, v7 - 1);
      }

      v6 = v7;
      v5 = *v16;
      v10 = *v16 <= v7++;
    }

    while (!v10);
  }

  *v16 = (*(this + 5) - *(this + 4)) >> 3;
  result = CFWriteStreamWrite(stream, v16, 8);
  v11 = *v16;
  if (*v16 >= 1)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = *(this + 4);
      if (v12 >= (*(this + 5) - v14) >> 3)
      {
        break;
      }

      v15 = *(v14 + 8 * v12);
      if (v15)
      {
        result = HEIFGroupItem::writeToStream(v15, stream);
      }

      else
      {
        result = LogError("writeToStream", 2848, "*** ERROR: count=%d --> _groupsList[%d] is NULL?\n", v11, v13 - 1);
      }

      v12 = v13;
      v11 = *v16;
      v10 = *v16 <= v13++;
      if (v10)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_18:
  GlobalHEIFInfo::writeToStream(this, stream, v16, &v18);
  return v18;
}

CFTypeRef GlobalHEIFInfo::createDataRepresentation(GlobalHEIFInfo *this)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    GlobalHEIFInfo::writeToStream(this, v3);
    v4 = CFWriteStreamCopyProperty(v3, *MEMORY[0x1E695E900]);
    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

CFIndex OUTLINED_FUNCTION_2_17(int a1, CFReadStreamRef stream, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int buffer)
{
  buffer = 0;

  return CFReadStreamRead(stream, &buffer, 4);
}

CFIndex OUTLINED_FUNCTION_4_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return CFReadStreamRead(v13, va, 8);
}

CFStringRef OUTLINED_FUNCTION_11_1(const __CFAllocator *a1, uint64_t a2, CFIndex a3)
{

  return CFStringCreateWithBytes(a1, v3, a3, 0x8000100u, 1u);
}

CFIndex OUTLINED_FUNCTION_13_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int buffer)
{
  buffer = 0;

  return CFReadStreamRead(v10, &buffer, 4);
}

double PSDReadPlugin::PSDReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4DDB40;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0;
  *(v5 + 485) = 1;
  return result;
}

void PSDReadPlugin::~PSDReadPlugin(PSDReadPlugin *this)
{
  *this = &unk_1EF4DDB40;
  v2 = *(this + 62);
  if (v2)
  {
    free(v2);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  PSDReadPlugin::~PSDReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t PSDReadPlugin::loadDataFromXPCObject(PSDReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_psd", &length);
    if (length == 40)
    {
      v6 = data[1];
      *(this + 29) = *data;
      *(this + 30) = v6;
      *(this + 62) = 0;
      if (*(this + 245))
      {
        size = 0;
        v7 = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_psd_layer", &size);
        if (size == 440 * *(this + 245))
        {
          v8 = malloc_type_malloc(size, 0x100004037BD86E4uLL);
          *(this + 62) = v8;
          memcpy(v8, v7, size);
        }

        else
        {
          *(this + 245) = 0;
        }
      }

      return 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t PSDReadPlugin::saveDataToXPCObject(void **this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_psd", this + 58, 0x28uLL);
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_psd_layer", this[62], 440 * *(this + 245));
  }

  return v4;
}

uint64_t PSDReadPlugin::readHeader(uint64_t a1, int *a2)
{
  if (IIOImageReadSession::getBytes(*(a1 + 24), a2, 26) != 26)
  {
    PSDReadPlugin::readHeader();
    return 4294967246;
  }

  v4 = *a2;
  *a2 = bswap32(*a2);
  v5 = *(a2 + 2);
  *(a2 + 2) = __rev16(v5);
  v6 = bswap32(*(a2 + 6));
  *(a2 + 6) = HIWORD(v6);
  v7 = *(a2 + 14);
  v8 = bswap32(v7);
  *(a2 + 14) = v8;
  v9 = *(a2 + 18);
  v10 = bswap32(v9);
  *(a2 + 18) = v10;
  v11 = *(a2 + 11);
  v12 = __rev16(v11);
  *(a2 + 11) = v12;
  v13 = bswap32(*(a2 + 12)) >> 16;
  *(a2 + 12) = v13;
  if (v4 != 1397768760)
  {
    PSDReadPlugin::readHeader();
    return 4294967246;
  }

  if (v5 == 256)
  {
    if (!v7 || v8 >= 0x7531)
    {
      v16 = "*** ERROR: unsupported height (%d)\n";
      v17 = 200;
      goto LABEL_28;
    }

    if (!v9 || v10 >= 0x7531)
    {
      v16 = "*** ERROR: unsupported width (%d)\n";
      v17 = 201;
      goto LABEL_28;
    }
  }

  else
  {
    if (v5 != 512)
    {
      v16 = "*** ERROR: bad header version\n";
      v17 = 196;
LABEL_28:
      _cg_jpeg_mem_term("readHeader", v17, v16);
      return 4294967246;
    }

    if (!v7 || v8 > 0x493E0)
    {
      v16 = "*** ERROR: unsupported height (%d)\n";
      v17 = 205;
      goto LABEL_28;
    }

    if (!v9 || v10 > 0x493E0)
    {
      v16 = "*** ERROR: unsupported width (%d)\n";
      v17 = 206;
      goto LABEL_28;
    }

    *(a1 + 487) = 1;
  }

  if (v13 > 9)
  {
LABEL_27:
    v16 = "*** ERROR: unsupported mode (%d)\n";
    v17 = 215;
    goto LABEL_28;
  }

  if (((1 << v13) & 0x31E) == 0)
  {
    if (!v13)
    {
      if (v11 == 256 && *(a2 + 6) == 1)
      {
        return 0;
      }

      PSDReadPlugin::readHeader();
      return 4294967246;
    }

    goto LABEL_27;
  }

  if (v12 > 0x20 || ((1 << v12) & 0x100010100) == 0)
  {
    v16 = "*** ERROR: unsupported bitsPerComp\n";
    v17 = 223;
    goto LABEL_28;
  }

  v14 = v6 >> 16;
  if (v14 <= 24 && modeChans[v13] <= v14)
  {
    return 0;
  }

  PSDReadPlugin::readHeader();
  return 4294967246;
}

char *PSDReadPlugin::parseLayers(PSDReadPlugin *this, IIOScanner *a2, __int16 *a3)
{
  v6 = *(a2 + 2);
  *a3 = 0;
  Val16 = IIOScanner::getVal16(a2);
  LOWORD(v8) = Val16;
  if (Val16 < 0)
  {
    *(this + 488) = 1;
    v8 = -Val16;
  }

  if (v8 >= 8000)
  {
    v54 = 387;
LABEL_70:
    _cg_jpeg_mem_term("parseLayers", v54, "*** ERROR: unexpected number of layers: %d\n");
    return 0;
  }

  if (*(this + 25) <= v8)
  {
    v54 = 388;
    goto LABEL_70;
  }

  v58 = a3;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    got %d layers\n", v8);
  }

  v9 = malloc_type_calloc(v8, 0x1B8uLL, 0x100004037BD86E4uLL);
  v10 = v9;
  if (!v9)
  {
    PSDReadPlugin::parseLayers();
    return v10;
  }

  v57 = v8;
  if (v8 < 1)
  {
LABEL_61:
    *v58 = v57;
    return v10;
  }

  v11 = 0;
  allocator = *MEMORY[0x1E695E480];
  v61 = v9 + 20;
  v62 = (v9 + 56);
  v59 = v9;
  v60 = v8;
  do
  {
    Val32 = IIOScanner::getVal32(a2);
    v13 = &v10[440 * v11];
    *v13 = Val32;
    v14 = IIOScanner::getVal32(a2);
    *(v13 + 1) = v14;
    v15 = IIOScanner::getVal32(a2);
    *(v13 + 2) = v15;
    v16 = IIOScanner::getVal32(a2);
    v17 = v16;
    *(v13 + 3) = v16;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    #%d:   {%d, %d, %d, %d}\n", v11, v14, Val32, v16, v15);
    }

    v18 = IIOScanner::getVal16(a2);
    v19 = v18;
    if (v18 >= 0x10)
    {
      v53 = 433;
LABEL_65:
      _cg_jpeg_mem_term("parseLayers", v53, "*** ERROR: unexpected number of channels: %d (max=%d)\n");
      return v59;
    }

    if (!v18)
    {
      v53 = 434;
      goto LABEL_65;
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("       : %d channels\n", v18);
    }

    *(v13 + 8) = v19;
    v13[18] = 1;
    if (Val32 >= v15 || v14 >= v17)
    {
      _cg_jpeg_mem_term("parseLayers", 444, "*** NOTE: skipping layer#%d {%d, %d, %d, %d}\n");
      v13[18] = 0;
    }

    if (v15 - Val32 > *(a2 + 2))
    {
      _cg_jpeg_mem_term("parseLayers", 449, "*** NOTE: skipping layer#%d {%d, %d, %d, %d}\n");
      v13[18] = 0;
    }

    v20 = v19;
    v21 = v61;
    v22 = v62;
    v10 = v59;
    do
    {
      *v21 = IIOScanner::getVal16(a2);
      if (*(this + 487) == 1)
      {
        Val64 = IIOScanner::getVal64(a2);
      }

      else
      {
        Val64 = IIOScanner::getVal32(a2);
      }

      *v22++ = Val64;
      ++v21;
      --v20;
    }

    while (v20);
    if (IIOScanner::getVal32(a2) != 943868237)
    {
      return v10;
    }

    if (!IIOScanner::getVal32(a2))
    {
      return v10;
    }

    IIOScanner::skip(a2, 4uLL);
    v24 = IIOScanner::getVal32(a2);
    if (!v24 || *(a2 + 2) - *(a2 + 3) <= v24)
    {
      return v10;
    }

    v25 = v24;
    if (v13[18])
    {
      v26 = malloc_type_calloc(v24, 1uLL, 0x8920C3FBuLL);
      if (!v26)
      {
        PSDReadPlugin::parseLayers();
        return v10;
      }

      v27 = v26;
      if (IIOScanner::getBytes(a2, v26, v25) != v25)
      {
        PSDReadPlugin::parseLayers();
        return v10;
      }

      v28 = memmem(v27, v25, "8BIMluni", 8uLL);
      if (v28)
      {
        v29 = v27 - v28 + v25;
        if (v29 >= 17)
        {
          v30 = 2 * bswap32(*(v28 + 3));
          v31 = v29 - 16;
          v32 = v29 - 16;
          if (v31 >= v30)
          {
            v32 = v30;
          }

          if (v32 >= 0x17)
          {
            *(v28 + 7) = -2;
            if (*(v28 + 16) || *(v28 + 17) != 60 || *(v28 + 18) || *(v28 + 19) != 47)
            {
              v33 = CFStringCreateWithBytes(0, v28 + 14, v32 + 2, 0x100u, 1u);
              ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(*(this + 7), @"LayerNames", @"{8BIM}");
              if (!ObjectForKeyGroup)
              {
                ObjectForKeyGroup = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                IIODictionary::setObjectForKeyGroup(*(this + 7), ObjectForKeyGroup, @"LayerNames", @"{8BIM}");
                CFRelease(ObjectForKeyGroup);
              }

              memset(__dst, 0, sizeof(__dst));
              IIOArray::IIOArray(__dst, ObjectForKeyGroup);
              IIOArray::addObject(v35, v33);
              CFRelease(v33);
              IIOArray::~IIOArray(__dst);
            }
          }
        }
      }

      free(v27);
    }

    else
    {
      IIOScanner::skip(a2, v24);
    }

    ++v11;
    v61 += 220;
    v62 += 55;
  }

  while (v11 != v60);
  v36 = 0;
  v37 = *(a2 + 3);
  v38 = (v59 + 184);
  do
  {
    v39 = *&v59[440 * v36 + 16];
    v40 = v38;
    if (*&v59[440 * v36 + 16])
    {
      do
      {
        *v40 = v37;
        v41 = *(v40 - 16);
        v42 = __CFADD__(v37, v41);
        v37 += v41;
        if (v42 || v37 >= v6)
        {
          _cg_jpeg_mem_term("parseLayers", 571, "*** ERROR: layer offset (%ld) > fileSize (%d)\n");
          exception = __cxa_allocate_exception(4uLL);
          *exception = -1;
          __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
        }

        ++v40;
        --v39;
      }

      while (v39);
    }

    ++v36;
    v38 += 55;
  }

  while (v36 != v60);
  v43 = 0;
  v44 = (v59 + 184);
  while (1)
  {
    v45 = &v59[440 * v43];
    if (*(v45 + 8))
    {
      break;
    }

LABEL_60:
    ++v43;
    v44 += 55;
    if (v43 == v60)
    {
      goto LABEL_61;
    }
  }

  v46 = 0;
  v47 = v44;
  v48 = v44;
  while (1)
  {
    v50 = *v48++;
    v49 = v50;
    LOWORD(__dst[0]) = 0;
    if (IIOScanner::getBytesAtOffset(a2, __dst, v50, 2uLL) != 2)
    {
      return v10;
    }

    v51 = bswap32(LOWORD(__dst[0])) >> 16;
    LOWORD(__dst[0]) = v51;
    v47[16] = v51;
    IIOScanner::seek(a2, *(v47 - 16) + v49);
    if (*(a2 + 16))
    {
      return v10;
    }

    ++v46;
    v47 = v48;
    if (v46 >= *(v45 + 8))
    {
      goto LABEL_60;
    }
  }
}

uint64_t PSDReadPlugin::initialize(PSDReadPlugin *this, IIODictionary *a2)
{
  *&v101[766] = *MEMORY[0x1E69E9840];
  v96 = 0;
  v97 = 0uLL;
  v98 = 0;
  bzero(colorTable, 0x300uLL);
  v95 = 0;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  IIOScanner::IIOScanner(v93, *(this + 3));
  IIOScanner::setEndianness(v93, 0);
  ObjectForKey = IIODictionary::getObjectForKey(*(this + 6), @"kCGImageSourceXMPSidecar");
  v92 = IIOSkipMetadata(*(this + 6));
  v3 = IIOSkipXMP_and_IPTC(*(this + 6));
  v5 = v3;
  if (!((*(this + 232) < 2u) | v92 & 1))
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(v3, v4))
    {
      ImageIOLog("••• Ⓜ️  skipping metadata for thumbnail creation\n");
    }

    v92 = 1;
  }

  if (IIODictionary::containsKey(*(this + 6), @"kCGImageSourceSubsampleFactor"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageSourceSubsampleFactor");
  }

  else
  {
    Uint32ForKey = 0;
  }

  if (PSDReadPlugin::readHeader(this, &v96))
  {
    v49 = 4294967246;
LABEL_237:
    kdebug_trace();
    goto LABEL_238;
  }

  *(this + 488) = 1;
  v6 = IIO_Reader::minimumFileSize(*(this + 3));
  IIOScanner::seek(v93, v6);
  __src = IIOScanner::getVal32(v93);
  if (v98 == 2 && !__src)
  {
    goto LABEL_267;
  }

  v90 = 0;
  if (HIWORD(v97) == 16 || HIWORD(v97) == 32)
  {
    goto LABEL_31;
  }

  v7 = __src == 768 && v98 == 2;
  v8 = v7;
  if (__src && v98 != 8 && !v8)
  {
    goto LABEL_267;
  }

  v90 = 0;
  if (!__src || v98 != 2)
  {
    goto LABEL_31;
  }

  if (SWORD2(v97) >= 3)
  {
    _cg_jpeg_mem_term("initialize", 706, "*** ERROR: too many channels (%d) for indexed color image\n");
    goto LABEL_267;
  }

  v9 = malloc_type_calloc(3uLL, 0x100uLL, 0x100004077774924uLL);
  v10 = v9;
  if (!v9)
  {
LABEL_267:
    v49 = 4294967246;
    goto LABEL_238;
  }

  if (IIOScanner::getBytes(v93, v9, 0x300uLL) == 768)
  {
    v11 = v101;
    for (i = 256; i != 512; ++i)
    {
      *(v11 - 2) = v10[i - 256];
      *(v11 - 1) = v10[i];
      *v11 = v10[i + 256];
      v11 += 3;
    }

    v90 = v10;
LABEL_31:
    IIOScanner::seek(v93, (__src + 30));
    Val32 = IIOScanner::getVal32(v93);
    if (*(this + 25) <= Val32)
    {
      v34 = 0;
      goto LABEL_265;
    }

    MetadataFromDatabuffer = 0;
    MetadataFromIPTCDatabuffer = 0;
    cf = 0;
    v89 = 0;
    while (1)
    {
      memset(__dst, 0, sizeof(__dst));
      if (IIOScanner::getVal32(v93) != 943868237)
      {
        if (ObjectForKey)
        {
          v28 = CGImageMetadataCreateFromXMPData(ObjectForKey);
        }

        else
        {
          v28 = 0;
        }

        CGImageMetadataMerge(*(this + 8), MetadataFromDatabuffer, *(this + 6));
        if ((v5 & 1) == 0)
        {
          CGImageMetadataMerge(*(this + 8), MetadataFromIPTCDatabuffer, *(this + 6));
          CGImageMetadataMerge(*(this + 8), cf, *(this + 6));
          CGImageMetadataMerge(*(this + 8), v28, *(this + 6));
        }

        if (MetadataFromDatabuffer)
        {
          goto LABEL_82;
        }

LABEL_83:
        if (MetadataFromIPTCDatabuffer)
        {
          CFRelease(MetadataFromIPTCDatabuffer);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v29 = __src + Val32 + 34;
        IIOScanner::seek(v93, v29, 0);
        if (*(this + 487) != 1)
        {
          v33 = IIOScanner::getVal32(v93);
          if (v33 >= 9)
          {
            v31 = 0;
            goto LABEL_97;
          }

          v32 = 0;
          v31 = 0;
          goto LABEL_114;
        }

        Val64 = IIOScanner::getVal64(v93);
        v31 = Val64;
        if (Val64 < 9)
        {
          v32 = 0;
          v33 = 0;
          goto LABEL_114;
        }

        v34 = 0;
        if (Val64 >= *(this + 25))
        {
          goto LABEL_265;
        }

        v33 = 0;
LABEL_97:
        if (*(this + 487) != 1)
        {
          v36 = IIOScanner::getVal32(v93);
          if (*(this + 25) > v36)
          {
            goto LABEL_102;
          }

          v82 = "*** ERROR: unexpected layerBlockSize=%d [0x%X]\n";
          v83 = 956;
          goto LABEL_264;
        }

        v35 = IIOScanner::getVal64(v93);
        if (v35 >= *(this + 25))
        {
          v34 = 0;
          _cg_jpeg_mem_term("initialize", 951, "*** ERROR: unexpected layerBlockSize=%lld [0x%X]\n");
        }

        else
        {
          v36 = 0;
          if (v35)
          {
LABEL_111:
            v39 = PSDReadPlugin::parseLayers(this, v93, &v95);
            goto LABEL_112;
          }

LABEL_102:
          if (v36)
          {
            goto LABEL_111;
          }

          v37 = IIOScanner::getVal32(v93);
          if (*(this + 25) > v37)
          {
            if (v37)
            {
              IIOScanner::seek(v93, v37, 1);
            }

            if (IIOScanner::getVal32(v93) != 943868237)
            {
              goto LABEL_113;
            }

            v38 = IIOScanner::getVal32(v93);
            if (v38 == 1282552626 || v38 == 1282552118)
            {
              IIOScanner::getVal32(v93);
              v39 = PSDReadPlugin::parseLayers(this, v93, &v95);
LABEL_112:
              v32 = v39;
            }

            else
            {
              if (v38 == 1179480939)
              {
                v32 = 0;
                *(this + 488) = 0;
                goto LABEL_114;
              }

LABEL_113:
              v32 = 0;
            }

LABEL_114:
            __srca = v32;
            if ((v92 & 1) == 0)
            {
              v40 = *(this + 7);
              if (*(this + 487))
              {
                v41 = 2;
              }

              else
              {
                v41 = 1;
              }

              IIONumber::IIONumber(__dst, v41);
              IIODictionary::setObjectForKeyGroup(v40, __dst, @"Version", @"{8BIM}");
              IIONumber::~IIONumber(__dst);
            }

            if (*(this + 487))
            {
              v42 = 8;
            }

            else
            {
              v42 = 4;
            }

            v43 = v33 + v29 + v31 + v42;
            IIOScanner::seek(v93, v43);
            Val16 = IIOScanner::getVal16(v93);
            *(this + 241) = Val16;
            if (v94)
            {
              v34 = -39;
              goto LABEL_258;
            }

            if (Val16 > 1)
            {
              v34 = -4;
              goto LABEL_128;
            }

            if (!Val16)
            {
              v45 = *(&v97 + 10);
              v46 = *(&v97 + 6);
              v47 = SWORD2(v97);
              v48 = SHIWORD(v97);
              if (IIOImageReadSession::getSize(*(this + 3)) < v46 * v45 * v47 * ((v48 + 7) >> 3))
              {
                IIOImageReadSession::getSize(*(this + 3));
                _cg_jpeg_mem_term("initialize", 1032, "*** ERROR: truncated file? %d x %d x %d  -  fileSize: %d\n");
                goto LABEL_127;
              }
            }

            v50 = 1196573017;
            v51 = v98;
            if (v98 <= 3u)
            {
              v52 = Uint32ForKey;
              if (v98 < 2u)
              {
                goto LABEL_140;
              }

              if (v98 != 2)
              {
                if (v98 == 3)
                {
                  v50 = 1380401696;
                  goto LABEL_140;
                }

                goto LABEL_141;
              }

              *(this + 85) = 1380401696;
              if (!v90)
              {
LABEL_190:
                v34 = 0;
                _cg_jpeg_mem_term("initialize", 1063, "*** ERROR: bad header data: modeIndexed, but no paletteData\n");
                v49 = 4294967246;
                v90 = 0;
                if (!v32)
                {
                  goto LABEL_234;
                }

                goto LABEL_233;
              }

LABEL_142:
              v53 = *(this + 20);
              if (!v53)
              {
                v53 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
              }

              if (CGColorSpaceGetModel(v53) == kCGColorSpaceModelRGB)
              {
                *(this + 20) = CGColorSpaceCreateIndexed(v53, 0xFFuLL, colorTable);
                CGColorSpaceRelease(v53);
                goto LABEL_147;
              }

              _cg_jpeg_mem_term("initialize", 1055, "*** ERROR: header says indexed color, but ICC profile is not RGB\n");
LABEL_127:
              v34 = 0;
LABEL_128:
              v49 = 4294967246;
              if (!v32)
              {
                goto LABEL_234;
              }

              goto LABEL_233;
            }

            v52 = Uint32ForKey;
            if (v98 == 4)
            {
              v50 = 1129142603;
            }

            else if (v98 != 8)
            {
              if (v98 != 9)
              {
                goto LABEL_141;
              }

              v50 = 1281450528;
            }

LABEL_140:
            *(this + 85) = v50;
LABEL_141:
            if (v90)
            {
              goto LABEL_142;
            }

            if (v51 == 2)
            {
              goto LABEL_190;
            }

LABEL_147:
            v54 = v95;
            v55 = v95;
            if ((*(this + 485) & 1) != 0 || v95 < 1)
            {
              *(this + 262) = 0;
              v58 = v98;
              if (modeChans[v98] >= SWORD2(v97))
              {
                if (v98 == 3)
                {
                  v56 = 0;
                  v57 = 5;
                  *(this + 262) = 5;
                  v58 = 3;
                }

                else
                {
                  v57 = 0;
                  v56 = 1;
                }
              }

              else
              {
                v57 = 3;
                *(this + 262) = 3;
                if ((v89 & 0x100000000) != 0)
                {
                  if ((v89 & (HIWORD(v97) == 8)) == 1)
                  {
                    v56 = 0;
                    if (*(this + 488) == 1)
                    {
                      v57 = 1;
                    }

                    else
                    {
                      v57 = 5;
                    }

                    *(this + 262) = v57;
                  }

                  else
                  {
                    v56 = 0;
                    v57 = 3;
                  }
                }

                else
                {
                  v56 = 0;
                }
              }
            }

            else
            {
              v56 = 0;
              v57 = 1;
              *(this + 262) = 1;
              v58 = v98;
            }

            *(this + 294) = v57;
            v59 = WORD2(v97);
            v60 = WORD2(v97);
            *(this + 116) = SWORD2(v97);
            *(this + 130) = v59;
            v61 = modeChans[v58];
            if (v60 - v61 < 2)
            {
              if (v60 - v61 == 1)
              {
                *(this + 489) = 1;
              }

              v62 = v60;
            }

            else
            {
              v62 = v61 + 1;
              *(this + 130) = v61 + 1;
              *(this + 489) = 1;
              v60 = (v61 + 1);
            }

            if (v61 == v60)
            {
              v63 = v56;
            }

            else
            {
              v63 = 1;
            }

            if ((v63 & 1) == 0)
            {
              *(this + 130) = ++v62;
            }

            v64 = *(&v97 + 10);
            v65 = *(&v97 + 6);
            *(this + 61) = *(&v97 + 10);
            *(this + 62) = v65;
            if (!v52)
            {
              v66 = *(this + 57);
              if (v66)
              {
                v67 = v64 / v66;
                if (v67 <= v65 / v66)
                {
                  v67 = v65 / v66;
                }

                v52 = v67;
              }

              else
              {
                v52 = 0;
              }
            }

            v68 = HIWORD(v97);
            if (v58 == 2 || HIWORD(v97) == 32)
            {
              v70 = 0;
            }

            else
            {
              v70 = v52;
            }

            if (v64 >= v65)
            {
              v71 = v65;
            }

            else
            {
              v71 = v64;
            }

            if (v70 - 1 >= v71)
            {
              v73 = 0;
              *(this + 166) = 0;
            }

            else
            {
              if (v70 > 0x7F)
              {
                v72 = 128;
                goto LABEL_209;
              }

              if (v70 > 0x3F)
              {
                v72 = 64;
                goto LABEL_209;
              }

              if (v70 > 0x1F)
              {
                v72 = 32;
                goto LABEL_209;
              }

              if (v70 > 0xF)
              {
                v72 = 16;
                goto LABEL_209;
              }

              if (v70 > 7)
              {
                v72 = 8;
                goto LABEL_209;
              }

              if (v70 >= 4)
              {
                v72 = 4;
LABEL_209:
                *(this + 166) = v72;
LABEL_210:
                *(this + 69) = v64 / v72;
                *(this + 70) = v65 / v72;
                v73 = ((v64 * v68 * v62 + 7) >> 3) / v72;
                *(this + 71) = v73;
                v74 = 316;
LABEL_211:
                *(this + v74) = v73;
                v75 = v62 * v68;
                *(this + 129) = v75;
                *(this + 128) = v68;
                *(this + 372) = 1;
                *(this + 374) = 0;
                if (v68 == 16)
                {
                  v76 = 263;
LABEL_215:
                  *(this + v76) = 1;
                }

                else if (v68 == 32)
                {
                  *(this + 265) = 1;
                  v76 = 373;
                  goto LABEL_215;
                }

                if ((v56 & 1) == 0)
                {
                  if (v75 == 32)
                  {
                    v77 = 0;
LABEL_221:
                    *(this + 263) = v77;
                  }

                  else if (v75 == 64)
                  {
                    v77 = 1;
                    goto LABEL_221;
                  }
                }

                if (v55 >= 1 && v32)
                {
                  *(this + 245) = v55;
                  v78 = 440 * v54;
                  v79 = malloc_type_calloc(v78, 1uLL, 0x100004037BD86E4uLL);
                  *(this + 62) = v79;
                  if (!v79)
                  {
                    v34 = 0;
                    _cg_jpeg_mem_term("initialize", 1202, "*** ERROR: failed to allocate '_psd._layerPtr'\n");
                    v49 = 4294967246;
                    goto LABEL_233;
                  }

                  memcpy(v79, v32, v78);
                }

                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  v80 = ImageIOLog("    PSD-layers\n");
                  PSDReadPlugin::dumpLayers(v80, *(this + 245), *(this + 62));
                }

                *(this + 63) = ((*(this + 129) + 7) >> 3) * *(this + 61);
                *(this + 59) = 0;
                *(this + 240) = v98;
                *(this + 26) = v43;
                *(this + 484) = 0;
                *(this + 49) = 1;
                if (*(this + 85) == 1281450528)
                {
                  *(this + 486) = 1;
                }

                if (*(this + 145) == 32)
                {
                  *(this + 378) = 1;
                }

                v49 = 0;
                v34 = 0;
                *(this + 204) = 1;
                if (!v32)
                {
                  goto LABEL_234;
                }

LABEL_233:
                free(v32);
                goto LABEL_234;
              }

              *(this + 166) = 2 * (v70 != 1);
              if (v70 != 1)
              {
                v72 = 2;
                goto LABEL_210;
              }

              v73 = 0;
            }

            v74 = 252;
            goto LABEL_211;
          }

          v82 = "*** ERROR: unexpected maskBlockSize=%d [0x%X]\n";
          v83 = 972;
LABEL_264:
          v34 = 0;
          _cg_jpeg_mem_term("initialize", v83, v82);
        }

LABEL_265:
        v49 = 4294967246;
        goto LABEL_234;
      }

      v15 = IIOScanner::getVal16(v93);
      Val8 = IIOScanner::getVal8(v93);
      if (IIOScanner::copyBytes(v93, __dst, Val8 | 1) != (Val8 | 1) || (*(__dst + Val8) = 0, v17 = IIOScanner::getVal32(v93), v18 = v17, (v17 & 0x80000000) != 0))
      {
        v28 = 0;
        if (!MetadataFromDatabuffer)
        {
          goto LABEL_83;
        }

LABEL_82:
        CFRelease(MetadataFromDatabuffer);
        goto LABEL_83;
      }

      v19 = (v17 + 1) & 0xFFFFFFFE;
      if (v15 == 1082)
      {
        break;
      }

      if (v15 == 1028)
      {
        BYTE4(v89) = 1;
      }

      if ((v15 != 1028) | (v92 | v5) & 1)
      {
        if ((v15 & 0xFFFE) == 0x422)
        {
          if (v19)
          {
            v20 = malloc_type_calloc((v17 + 1) & 0xFFFFFFFE, 1uLL, 0xCD348B33uLL);
            if (v20)
            {
              if (IIOScanner::getBytes(v93, v20, (v18 + 1) & 0xFFFFFFFE) != v19)
              {
                v22 = v20;
                _cg_jpeg_mem_term("initialize", 806, "*** ERROR: can't read kPhotoshopExif data\n");
                goto LABEL_251;
              }

              v21 = IIOMetadataFlagsFromImageSourceOptions(*(this + 6));
              if (MetadataFromDatabuffer)
              {
                CFRelease(MetadataFromDatabuffer);
              }

              v22 = v20;
              MetadataFromDatabuffer = CreateMetadataFromDatabuffer(v20, v18, v21);
              goto LABEL_75;
            }
          }
        }

        else if (v15 == 1039)
        {
          if (v19)
          {
            v24 = malloc_type_calloc((v17 + 1) & 0xFFFFFFFE, 1uLL, 0x30242734uLL);
            if (v24)
            {
              if (IIOScanner::getBytes(v93, v24, v19) != v19)
              {
                v22 = v24;
                _cg_jpeg_mem_term("initialize", 829, "*** ERROR: can't read kPhotoshopICC data\n");
                goto LABEL_251;
              }

              *(this + 20) = CGColorSpaceCreateWithCopyOfData(v24, v19);
              v22 = v24;
              goto LABEL_75;
            }
          }
        }

        else
        {
          v26 = v15 != 1060 || ObjectForKey != 0;
          if ((v26 | v92 | v5))
          {
            if (v15 == 1057)
            {
              IIOScanner::getVal32(v93);
              *(this + 485) = IIOScanner::getVal8(v93) != 0;
              IIOScanner::skip(v93, (v19 - 5));
            }

            else
            {
LABEL_48:
              IIOScanner::skip(v93, (v17 + 1) & 0xFFFFFFFE);
            }
          }

          else if (v19)
          {
            v27 = malloc_type_calloc((v17 + 1) & 0xFFFFFFFE, 1uLL, 0x457A56ABuLL);
            if (v27)
            {
              v22 = v27;
              if (IIOScanner::getBytes(v93, v27, (v18 + 1) & 0xFFFFFFFE) != v19)
              {
                _cg_jpeg_mem_term("initialize", 844, "*** ERROR: can't read kPhotoshopXMP data\n");
LABEL_251:
                __srca = 0;
                v34 = 0;
                if (MetadataFromDatabuffer)
                {
                  CFRelease(MetadataFromDatabuffer);
                }

                if (MetadataFromIPTCDatabuffer)
                {
                  CFRelease(MetadataFromIPTCDatabuffer);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                free(v22);
LABEL_258:
                v49 = 4294967246;
                v32 = __srca;
                if (!__srca)
                {
LABEL_234:
                  v10 = v90;
                  if (v90)
                  {
                    goto LABEL_235;
                  }

                  goto LABEL_236;
                }

                goto LABEL_233;
              }

              if (cf)
              {
                CFRelease(cf);
              }

              cf = CreateMetadataFromXMPBuffer(v22, v18);
LABEL_75:
              free(v22);
            }
          }
        }
      }

      else if (v19)
      {
        v23 = malloc_type_calloc((v17 + 1) & 0xFFFFFFFE, 1uLL, 0xBECB565FuLL);
        if (v23)
        {
          v22 = v23;
          if (IIOScanner::getBytes(v93, v23, (v18 + 1) & 0xFFFFFFFE) != v19)
          {
            _cg_jpeg_mem_term("initialize", 784, "*** ERROR: can't read kPhotoshopIPTC data\n");
            goto LABEL_251;
          }

          if (MetadataFromIPTCDatabuffer)
          {
            CFRelease(MetadataFromIPTCDatabuffer);
          }

          MetadataFromIPTCDatabuffer = CreateMetadataFromIPTCDatabuffer(v22, v18);
          goto LABEL_75;
        }
      }
    }

    LOBYTE(v89) = 1;
    goto LABEL_48;
  }

  v34 = 0;
  _cg_jpeg_mem_term("initialize", 713, "*** ERROR: can't read PSD color palette\n");
  v49 = 4294967246;
LABEL_235:
  free(v10);
LABEL_236:
  if (v34)
  {
    goto LABEL_237;
  }

LABEL_238:
  IIOScanner::~IIOScanner(v93);
  return v49;
}

void sub_1860C944C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1860C92C8);
  }

  _Unwind_Resume(exception_object);
}

const char *PSDReadPlugin::dumpLayers(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2;
    v6 = (a3 + 184);
    v7 = a3 + 20;
    do
    {
      v8 = a3 + 440 * v4;
      ImageIOLog("#%2d:  {%d, %d, %d, %d}   \n", v4, *(v8 + 4), *v8, *(v8 + 12), *(v8 + 8));
      result = ImageIOLog("       %d channels:\n", *(v8 + 16));
      if (*(v8 + 16))
      {
        v10 = 0;
        v11 = v6;
        do
        {
          result = ImageIOLog("          id: %2d    size: %8lld    offset: 0x%08X    compression: %d\n", *(v7 + 2 * v10++), *(v11 - 16), *v11, v11[16]);
          ++v11;
        }

        while (v10 < *(v8 + 16));
      }

      ++v4;
      v6 += 55;
      v7 += 440;
    }

    while (v4 != v5);
  }

  return result;
}

void PSDReadPlugin::convertPremulWhiteToBlack8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 24);
    v7 = v6;
    v9 = *(a2 + 40);
    v8 = *(a2 + 48);
    v10 = v9 + 1;
    do
    {
      if (a4 == 3)
      {
        if (v7)
        {
          v13 = v6;
          v14 = v10;
          do
          {
            v15 = ~v14[2];
            *(v14 - 1) += v14[2] + 1;
            *v14 -= v15;
            v14[1] -= v15;
            v14 += a3;
            --v13;
          }

          while (v13);
        }
      }

      else if (a4 == 1)
      {
        v11 = v6;
        v12 = v9;
        if (v7)
        {
          do
          {
            *v12 += v12[1] + 1;
            v12 += a3;
            --v11;
          }

          while (v11);
        }
      }

      v9 += v8;
      ++v5;
      v10 += v8;
    }

    while (v5 != v4);
  }
}

uint64_t PSDReadPlugin::decode_packbits(PSDReadPlugin *this, const unsigned __int8 *a2, unsigned __int8 *__dst, unsigned int a4, unsigned int a5, int a6, char a7, unsigned int a8, unsigned int a9)
{
  if (a5)
  {
    v10 = __dst;
    v36 = 0;
    v12 = a5;
    v13 = &__dst[a5];
    v14 = a4;
    v15 = *(this + 162);
LABEL_3:
    v16 = 0;
    v17 = 0;
    while (1)
    {
      if (v14 + v16 < 1)
      {
        return 0;
      }

      v18 = a2[v17];
      if ((v18 & 0x8000000000000000) == 0)
      {
        break;
      }

      ++v17;
      --v16;
      if (v18 != -128)
      {
        v19 = 1 - v18;
        if (v12 >= 1 - v18)
        {
          v20 = 1 - v18;
        }

        else
        {
          _cg_jpeg_mem_term("decode_packbits", 1496, "*** WARNING: channel[%d] row[%d] clamping repeat count from %lld to %lld to avoid buffer overrun\n");
          v20 = v12;
        }

        if (v14 == v17)
        {
          _cg_jpeg_mem_term("decode_packbits", 1503, "*** WARNING: channel[%d] row[%d] PackBits data truncated - missing repeat byte, preserving partial decode\n");
          return 0;
        }

        v28 = v12 - v20;
        v29 = &a2[v17];
        v31 = *v29;
        a2 = v29 + 1;
        v30 = v31;
        v14 += ~v17;
        if (a6 == 1)
        {
          if (v12 >= v19)
          {
            v32 = v19;
          }

          else
          {
            v32 = v12;
          }

          if (v32 >= 1)
          {
            v32 = 1;
          }

          v33 = v20 - v32 + 1;
          memset(v10, v30, v33);
          v10 += v33;
        }

        else if (v10 < v13)
        {
          do
          {
            *v10 = v30 ^ a7;
            v10 += v15;
            v34 = v20-- <= 1;
          }

          while (!v34 && v10 < v13);
        }

LABEL_37:
        v12 = v28;
        if (v28 >= 1)
        {
          goto LABEL_3;
        }

        return 0;
      }
    }

    if (v12 <= v18)
    {
      _cg_jpeg_mem_term("decode_packbits", 1528, "*** WARNING: channel[%d] row[%d] clamping literal count from %lld to %lld to avoid buffer overrun\n");
      v18 = v12 - 1;
    }

    v21 = v14 + v16;
    v22 = ~v17 + v14;
    if (v21 <= v18 + 1)
    {
      _cg_jpeg_mem_term("decode_packbits", 1535, "*** WARNING: channel[%d] row[%d] PackBits data truncated - expected %lld literal bytes, only %lld available, copying what we can\n");
      if (v14 - 1 == v17)
      {
        return 0;
      }

      v18 = v14 - v17 - 2;
      v36 = 1;
    }

    v23 = &a2[v17 + 1];
    if (a6 == 1)
    {
      memcpy(v10, v23, v18 + 1);
      v10 += v18 + 1;
      v12 -= v18 + 1;
      v23 = &a2[v18 + 2 + v17];
      v22 = v14 - v18 - v17 - 2;
    }

    else if ((v18 & 0x8000000000000000) == 0)
    {
      v24 = 1;
      while (v10 < v13)
      {
        v25 = v22 - 1;
        if (v22 < 1)
        {
          break;
        }

        *v10 = a2[v17 + v24] ^ a7;
        v10 += v15;
        --v12;
        v26 = v24 + 1;
        v27 = v24++ - 1;
        --v22;
        if (v18 <= v27)
        {
          v23 = &a2[v17 + v26];
          v22 = v25;
          goto LABEL_36;
        }
      }

      v23 = &a2[v17 + v24];
    }

LABEL_36:
    v14 = v22;
    a2 = v23;
    v28 = v12;
    if ((v36 & (v22 == 0)) != 0)
    {
      return 0;
    }

    goto LABEL_37;
  }

  return 0;
}

void PSDReadPlugin::decode_32_bit_predictor(PSDReadPlugin *this, unsigned __int8 *a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v5 = 4 * a5;
  if (a4)
  {
    v6 = 0;
    v7 = a2 + 1;
    do
    {
      v8 = a2[v6 * v5];
      v9 = (v5 - 1);
      v10 = v7;
      do
      {
        v8 += *v10;
        *v10++ = v8;
        --v9;
      }

      while (v9);
      ++v6;
      v7 += v5;
    }

    while (v6 != a4);
  }

  v11 = (v5 * a4);
  if (v11)
  {
    v12 = 0;
    for (i = 0; i < v11; i += v5)
    {
      if (a5)
      {
        v14 = i;
        do
        {
          if (v5)
          {
            v15 = v14;
            do
            {
              a3[v12++] = a2[v15];
              v15 += a5;
            }

            while (v15 < v14 + v5);
          }

          ++v14;
        }

        while (v14 < i + a5);
      }
    }
  }
}

void PSDReadPlugin::mergeLayers(PSDReadPlugin *this, IIODecodeFrameParams *a2)
{
  if (*(this + 62))
  {
    v3 = *(this + 245);
    if (*(this + 245))
    {
      v5 = 0;
      v6 = 0;
      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      v9 = *(a2 + 4);
      r1 = *(a2 + 3);
      do
      {
        memcpy(__dst, (*(this + 62) + v5), 0x1B8uLL);
        if ((__dst[4] & 0x10000) != 0)
        {
          v11 = __dst[2];
          v10 = __dst[3];
          v13 = __dst[0];
          v12 = __dst[1];
          v14 = __dst[3] - __dst[1];
          v15 = __dst[1];
          v34.origin.y = __dst[0];
          v34.size.width = (__dst[3] - __dst[1]);
          v34.size.height = (__dst[2] - __dst[0]);
          v32.origin.x = v7;
          v32.origin.y = v8;
          v32.size.width = r1;
          v32.size.height = v9;
          v34.origin.x = __dst[1];
          v33 = CGRectIntersection(v32, v34);
          v30 = v33;
          v16 = *(this + 160);
          if ((v16 & 7) != 0)
          {
            return;
          }

          x = v33.origin.x;
          if (*(a2 + 6) >= 4 * *(a2 + 3) && v11 > v13 && v10 > v12)
          {
            y = v33.origin.y;
            width = v33.size.width;
            height = v33.size.height;
            if (!CGRectIsEmpty(v33))
            {
              v23 = PSDReadPlugin::decodeLayer(this, __dst, &v30);
              if (v23)
              {
                v24 = v23;
                v25 = v16 >> 3;
                srcTop.data = v23 + (v16 >> 3) * ((v12 >> 31) & (4 * (x - v15)));
                srcTop.height = height;
                srcTop.width = width;
                srcTop.rowBytes = 4 * v14 * (v16 >> 3);
                v26 = *(a2 + 6);
                dest.data = (*(a2 + 5) + v26 * (y - v8) + 4 * (x - v7) * (v16 >> 3));
                dest.height = height;
                dest.width = width;
                dest.rowBytes = v26;
                if (v16 >> 3 == 4)
                {
                  AlphaBlend<unsigned int>(&srcTop, &dest, &dest);
                }

                else if (v25 == 2)
                {
                  AlphaBlend<unsigned short>(&srcTop, &dest, &dest);
                }

                else if (v25 == 1)
                {
                  vImageAlphaBlend_ARGB8888(&srcTop, &dest, &dest, 0x10u);
                }

                free(v24);
              }
            }
          }

          v3 = *(this + 245);
        }

        ++v6;
        v5 += 440;
      }

      while (v6 < v3);
    }
  }

  else
  {
    PSDReadPlugin::mergeLayers();
  }
}

uint64_t AlphaBlend<unsigned short>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[3];
  if (v3 < 8 * a2[2])
  {
    _cg_jpeg_mem_term("AlphaBlend", 59, "*** ERROR: invalid rowBytes[%d] < width[%d]*bpc[%d]*4\n");
    return -50;
  }

  else
  {
    v4 = a1[1];
    if (v4)
    {
      LODWORD(v5) = 0;
      v6 = *a1;
      v7 = *a2;
      v8 = *a3;
      v9 = a1[2];
      v10 = a1[3];
      v11 = a3[3];
      do
      {
        if (v9)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = (v8 + v12);
            v15 = *(v6 + v12);
            v16 = *(v6 + v12 + 4);
            v17 = *(v6 + v12 + 6);
            v18 = *(v7 + v12 + 2);
            v19 = *(v7 + v12 + 4);
            *v14 = *(v6 + v12 + 2) + *(v7 + v12) * ~v15;
            v14[1] = v16 + v18 * ~v15;
            v14[2] = v17 + v19 * ~v15;
            v14[3] = v15;
            v12 += 8;
          }

          while (v9 > v13++);
        }

        v6 += v10;
        v7 += v3;
        v8 += v11;
        v5 = (v5 + 1);
      }

      while (v4 > v5);
    }

    return 0;
  }
}

uint64_t AlphaBlend<unsigned int>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[3];
  if (v3 < 16 * a2[2])
  {
    _cg_jpeg_mem_term("AlphaBlend", 59, "*** ERROR: invalid rowBytes[%d] < width[%d]*bpc[%d]*4\n");
    return -50;
  }

  else
  {
    v4 = a1[1];
    if (v4)
    {
      LODWORD(v5) = 0;
      v6 = *a1;
      v7 = *a2;
      v8 = *a3;
      v9 = a1[2];
      v10 = a1[3];
      v11 = a3[3];
      do
      {
        if (v9)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = (v8 + v12);
            v15 = *(v6 + v12);
            v16 = *(v6 + v12 + 12);
            v17 = *(v7 + v12 + 8);
            *v14 = vmla_s32(*(v6 + v12 + 4), *(v7 + v12), vdup_n_s32(~v15));
            v14[1].i32[0] = v16 + v17 * ~v15;
            v14[1].i32[1] = v15;
            v12 += 16;
          }

          while (v9 > v13++);
        }

        v6 += v10;
        v7 += v3;
        v8 += v11;
        v5 = (v5 + 1);
      }

      while (v4 > v5);
    }

    return 0;
  }
}

void PSDReadPlugin::handlePremultiplication(PSDReadPlugin *this, IIODecodeFrameParams *a2, unsigned int a3)
{
  if (*(this + 484) == 1 && *(this + 294))
  {
    v5 = *(this + 240);
    if (v5 == 1)
    {
      if (*(this + 128) == 8)
      {

        PSDReadPlugin::convertPremulWhiteToBlack8(this, a2, a3, 1);
      }
    }

    else if (v5 == 3 && *(this + 128) == 8)
    {
      v9 = v3;
      v10 = v4;
      v6 = *(a2 + 6);
      v8.data = *(a2 + 5);
      v7 = vcvtq_u64_f64(*(a2 + 24));
      *&v8.height = vextq_s8(v7, v7, 8uLL);
      v8.rowBytes = v6;
      vImagePremultiplyData_RGBA8888(&v8, &v8, 0x10u);
    }
  }
}

uint64_t PSDReadPlugin::readDataSizeTable(PSDReadPlugin *this, unsigned int **a2, unsigned int **a3, unint64_t *a4)
{
  v7 = *(this + 62);
  if (!v7)
  {
    PSDReadPlugin::readDataSizeTable();
LABEL_31:
    v12 = 0;
    v19 = 0;
    v11 = 0;
    goto LABEL_35;
  }

  v9 = *(this + 116);
  if (!v9)
  {
    PSDReadPlugin::readDataSizeTable();
    goto LABEL_31;
  }

  v10 = v7 * v9;
  if ((v10 & 0xFFFFFFFF00000000) != 0)
  {
    v27 = "*** ERROR: bad numValues (%d x %d)\n";
    v28 = 2158;
LABEL_30:
    _cg_jpeg_mem_term("readDataSizeTable", v28, v27);
    goto LABEL_31;
  }

  if (v10 >> 30)
  {
    v27 = "*** ERROR: bad table size %d x %d\n";
    v28 = 2161;
    goto LABEL_30;
  }

  v11 = malloc_type_calloc((4 * v10), 1uLL, 0x100004052888210uLL);
  if (!v11)
  {
    PSDReadPlugin::readDataSizeTable();
    v12 = 0;
    goto LABEL_34;
  }

  v12 = malloc_type_calloc((4 * v10), 1uLL, 0x100004052888210uLL);
  if (!v12)
  {
    PSDReadPlugin::readDataSizeTable();
    goto LABEL_34;
  }

  if (*(this + 487) != 1)
  {
    v19 = malloc_type_calloc((2 * v10), 1uLL, 0x1000040BDFB0063uLL);
    if (v19)
    {
      if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v19, *(this + 26) + 2, (2 * v10)) == 2 * v10)
      {
        if (v10)
        {
          v20 = 0;
          v13 = 0;
          v21 = *(this + 26) + 2 * (*(this + 116) * *(this + 62)) + 2;
          do
          {
            v22 = bswap32(*&v19[2 * v20]);
            v23 = HIWORD(v22);
            v11[v20] = v23;
            if (v13 <= HIWORD(v22))
            {
              v13 = HIWORD(v22);
            }

            v12[v20] = v21;
            v21 += v23;
            ++v20;
          }

          while (v10 != v20);
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
      PSDReadPlugin::readDataSizeTable();
    }

LABEL_35:
    free(v19);
    free(v11);
    v25 = 0;
    v24 = 0;
    v11 = 0;
    v19 = v12;
    v12 = 0;
    goto LABEL_25;
  }

  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v11, *(this + 26) + 2, (4 * v10)) != 4 * v10)
  {
LABEL_34:
    v19 = 0;
    goto LABEL_35;
  }

  v13 = 0;
  if (v10)
  {
    v14 = *(this + 26) + 4 * (*(this + 116) * *(this + 62)) + 2;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    do
    {
      v18 = bswap32(*v16);
      if (v18 > v13)
      {
        v13 = v18;
      }

      *v16++ = v18;
      *v17++ = v14;
      v14 += v18;
      --v15;
    }

    while (v15);
  }

  v19 = 0;
LABEL_24:
  v24 = v13;
  v25 = 1;
LABEL_25:
  free(v19);
  *a2 = v11;
  *a3 = v12;
  *a4 = v24;
  return v25;
}

uint64_t PSDReadPlugin::decodeBlock(PSDReadPlugin *this, IIODecodeFrameParams *a2, unsigned int a3, unsigned int a4)
{
  v5 = a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  v8 = *(this + 61);
  v9 = *(this + 128);
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v92 = this;
  if (*(this + 485) != 1)
  {
    if (*(this + 262))
    {
      bzero(*(a2 + 5), *(a2 + 6) * v7);
      this = v92;
      v9 = *(v92 + 128);
    }

    if (v9 == 1)
    {
      goto LABEL_100;
    }

    PSDReadPlugin::mergeLayers(v92, v5);
    this = v92;
    v15 = *(v5 + 6);
    dest.data = *(v5 + 5);
    v16 = vcvtq_u64_f64(*(v5 + 24));
    *&dest.height = vextq_s8(v16, v16, 8uLL);
    dest.rowBytes = v15;
    if (*(v92 + 160) != 8)
    {
      goto LABEL_100;
    }

    if (*(v92 + 436) == 1)
    {
      v17 = 66051;
    }

    else
    {
      if (v15 < 4 * v16.i64[0])
      {
        _cg_jpeg_mem_term("decodeBlock", 2479, "*** ERROR: vImagePermuteChannels_ARGB8888 - width: %d  rowBytes: %d\n");
LABEL_99:
        this = v92;
LABEL_100:
        v23 = 0;
        v13 = 0;
        v70 = 0;
        goto LABEL_101;
      }

      v17 = 197121;
    }

    *permuteMap = v17;
    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    goto LABEL_99;
  }

  v11 = v8 * v9 + 7;
  v12 = v11 >> 3;
  if (*(this + 241) == 1)
  {
    v13 = 0;
    if (!PSDReadPlugin::readDataSizeTable(this, &v96, &v97, &v95))
    {
      goto LABEL_116;
    }

    v14 = v95;
    if (!v95)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v14 = v11 >> 3;
    if (v11 < 8)
    {
      v13 = 0;
      goto LABEL_116;
    }
  }

  v13 = malloc_type_calloc(v14, 1uLL, 0x100004077774924uLL);
  if (!v13)
  {
    PSDReadPlugin::decodeBlock();
    goto LABEL_116;
  }

  if (*(v92 + 128) == 1)
  {
    if (malloc_type_calloc(*(v5 + 6), 1uLL, 0x100004077774924uLL))
    {
      operator new();
    }

    PSDReadPlugin::decodeBlock();
LABEL_116:
    *(v5 + 8) = 0;
    v75 = 4294967246;
    if (v13)
    {
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  if (*(v92 + 294) - 5 <= 1)
  {
    if (*(v92 + 373) != 1)
    {
LABEL_22:
      memset(*(v5 + 5), 255, (*(v5 + 4) * *(v5 + 6)));
      goto LABEL_23;
    }

    v18 = *(v92 + 144);
    if (v18 != 32)
    {
      if (v18 == 16)
      {
        v20 = *(v5 + 3);
        v19 = *(v5 + 4);
        v21 = *(v5 + 6);
        dest.data = *(v5 + 5);
        dest.height = v19;
        dest.width = 4 * v20;
        dest.rowBytes = v21;
        vImageOverwriteChannelsWithScalar_Planar16U(0x3C00u, &dest, 0x10u);
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v77 = *(v5 + 3);
    v76 = *(v5 + 4);
    v78 = *(v5 + 6);
    dest.data = *(v5 + 5);
    dest.height = v76;
    dest.width = 4 * v77;
    dest.rowBytes = v78;
    vImageOverwriteChannelsWithScalar_PlanarF(1.0, &dest, 0x10u);
  }

LABEL_23:
  v88 = malloc_type_malloc(*(v5 + 12), 0x100004077774924uLL);
  v80 = a4;
  if (!a3)
  {
    v23 = 0;
    this = v92;
LABEL_85:
    if (*(this + 85) == 1380401696)
    {
      a4 = v80;
      v70 = v88;
      if (*(this + 116) == 4 && *(this + 294) == 5)
      {
        v71 = *(v5 + 6);
        dest.data = *(v5 + 5);
        v72 = vcvtq_u64_f64(*(v5 + 24));
        *&dest.height = vextq_s8(v72, v72, 8uLL);
        dest.rowBytes = v71;
        if (*(this + 160) == 8)
        {
          vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0x10u);
        }

        else
        {
          _cg_jpeg_mem_term("decodeBlock", 2449, "*** RGB-%d: check alpha-one?\n");
        }

        this = v92;
      }
    }

    else
    {
      a4 = v80;
      v70 = v88;
    }

LABEL_101:
    PSDReadPlugin::handlePremultiplication(this, v5, a4);
    v75 = 0;
    goto LABEL_102;
  }

  v86 = v12;
  v22 = 0;
  v23 = 0;
  v24 = v6;
  v25 = a4;
  v82 = (v7 + v24);
  v89 = v82 - v24;
  v81 = a3;
  v83 = 2 * a4;
  v84 = 4 * a4;
  v85 = -50;
  this = v92;
  while (1)
  {
    v26 = v22;
    if (v22 <= 3)
    {
      v26 = v22;
      if (*(this + 436) == 1)
      {
        v26 = *(&xmmword_186224A90 + v22);
      }
    }

    v27 = *(this + 240);
    v28 = v27 != 4 || v26 >= 4;
    v29 = !v28 || v27 == 0;
    v30 = v29;
    v31 = *(this + 241) == 1 ? (*(this + 62) * v22) : *(this + 26) + v86 * (*(this + 62) * v22) + 2;
    v90 = v31;
    v87 = v22;
    if (v24 < v82)
    {
      break;
    }

LABEL_82:
    v22 = v87 + 1;
    v24 = v6;
    if (v87 + 1 == v81)
    {
      goto LABEL_85;
    }
  }

  v32 = 0;
  v33 = v30 << 31 >> 31;
  v91 = v26;
  while (1)
  {
    if (*(this + 241) == 1)
    {
      v34 = v97[v90 + v24];
      v35 = v96[v90 + v24];
      if (!v96[v90 + v24])
      {
        goto LABEL_93;
      }
    }

    else
    {
      v35 = v86;
      v34 = v90 + v24 * v86;
      if (!v86)
      {
LABEL_93:
        v73 = "*** ERROR: corrupt PSD image: row[%d]: srcDataLen==0\n";
        v74 = 2347;
        goto LABEL_95;
      }
    }

    v36 = this;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v13, v34, v35) != v35)
    {
      break;
    }

    v37 = *(v5 + 6);
    v38 = v5;
    v39 = *(v5 + 5) + v37 * v32;
    if (*(v36 + 241) == 1)
    {
      PSDReadPlugin::decode_packbits(v92, v13, v88, v35, v37, 1, 0, v87, v24);
      v40 = *(v92 + 128);
      if (v40 == 32)
      {
        v60 = v38[3];
        if (v60 > 0.0)
        {
          v61 = (v39 + 4 * v91);
          v62 = 1;
          v63 = v88;
          do
          {
            v64 = *v63++;
            *v61 = bswap32(v64) ^ v33;
            v65 = v62++;
            v61 = (v61 + v84);
          }

          while (v60 > v65);
        }
      }

      else if (v40 == 16)
      {
        v50 = v38[3];
        if (v50 > 0.0)
        {
          v51 = (v39 + 2 * v91);
          v52 = 1;
          v53 = v88;
          do
          {
            v54 = *v53;
            v53 += 2;
            *v51 = v33 ^ (bswap32(v54) >> 16);
            v55 = v52++;
            v51 = (v51 + v83);
          }

          while (v50 > v55);
        }
      }

      else if (v40 == 8 && v38[3] > 0.0)
      {
        v41 = (v39 + v91);
        v42 = 1;
        v43 = v88;
        v5 = v38;
        do
        {
          v44 = *v43++;
          *v41 = v44 ^ v33;
          v41 += v25;
          v45 = v42++;
        }

        while (v38[3] > v45);
        v85 = 0;
        goto LABEL_74;
      }

      v85 = 0;
    }

    else
    {
      v46 = *(v36 + 128);
      switch(v46)
      {
        case 32:
          if (v35 >= 4)
          {
            v66 = v35 >> 2;
            v67 = v13;
            v68 = (v39 + 4 * v91);
            do
            {
              v69 = *v67++;
              *v68 = bswap32(v69) ^ v33;
              v68 = (v68 + v84);
              --v66;
            }

            while (v66);
          }

          break;
        case 16:
          if (v35 != 1)
          {
            v56 = v35 >> 1;
            v57 = v13;
            v58 = (v39 + 2 * v91);
            do
            {
              v59 = *v57;
              v57 += 2;
              *v58 = v33 ^ (bswap32(v59) >> 16);
              v58 = (v58 + v83);
              --v56;
            }

            while (v56);
          }

          break;
        case 8:
          v47 = (v39 + v91);
          v48 = v13;
          do
          {
            v49 = *v48++;
            *v47 = v49 ^ v33;
            v47 += v25;
            --v35;
          }

          while (v35);
          break;
      }
    }

    v5 = v38;
LABEL_74:
    if (v23 <= ++v24)
    {
      v23 = v24;
    }

    ++v32;
    this = v92;
    if (v89 == v32)
    {
      goto LABEL_82;
    }
  }

  v73 = "*** ERROR: failed to read scanline (expected: %d got: %d\n";
  v74 = 2350;
LABEL_95:
  _cg_jpeg_mem_term("decodeBlock", v74, v73);
  v70 = v88;
  v75 = v85;
LABEL_102:
  *(v5 + 8) = v23;
  if (v70)
  {
    free(v70);
  }

  if (v13)
  {
LABEL_105:
    free(v13);
  }

LABEL_106:
  if (v96)
  {
    free(v96);
  }

  if (v97)
  {
    free(v97);
  }

  return v75;
}

void sub_1860CAA78(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x186602850](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t PSDReadPlugin::decodeBlockSubsampled(PSDReadPlugin *this, IIODecodeFrameParams *a2, int a3, unsigned int a4)
{
  v4 = this;
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(this + 61);
  v10 = *(this + 128);
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v11 = *(this + 166);
  v12 = v11;
  v13 = v7 * v11;
  v14 = v8 * v11;
  v15 = *(a2 + 6);
  v16 = v15 * v11;
  if ((0x1000000 / (v15 * v11) + v11 - 1) / v11 * v11 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = (0x1000000 / (v15 * v11) + v11 - 1) / v11 * v11;
  }

  memset(v93, 0, 48);
  v75 = v13;
  IIOSubsampler::IIOSubsampler(v93, v13, v15 * v11, *(this + 326), *(this + 160), *(this + 162), v11, 0, v7, v15);
  count = v16;
  v18 = v17 * v16;
  if ((v18 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_100;
  }

  __b = malloc_type_calloc(v18, 1uLL, 0x100004077774924uLL);
  if (!__b)
  {
    _cg_jpeg_mem_term("decodeBlockSubsampled", 2570, "*** ERROR: failed to allocate 'bandBuffer'\n");
LABEL_100:
    v67 = 4294967246;
    goto LABEL_94;
  }

  v19 = v5 * v12;
  v20 = (v19 + v14);
  v21 = v17;
  if (*(v4 + 485) != 1)
  {
    if (*(v4 + 262))
    {
      bzero(*(a2 + 5), *(a2 + 6) * *(a2 + 4));
    }

    if (*(v4 + 128) != 1)
    {
      v26 = v20;
      if (v19 < v20)
      {
        v27 = v6 * v12;
        v28 = v13;
        v29 = v17;
        do
        {
          src = 0;
          v91 = 0u;
          src_8 = *&v27;
          src_16 = *&v19;
          src_24.f64[0] = v28;
          src_24.f64[1] = v29;
          v88 = __b;
          v89 = count;
          v90 = count * v29;
          DWORD2(v91) = 0;
          v92 = 0;
          PSDReadPlugin::mergeLayers(v4, &src);
          dest.data = v88;
          v30 = vcvtq_u64_f64(src_24);
          *&dest.height = vextq_s8(v30, v30, 8uLL);
          dest.rowBytes = v89;
          if (*(v4 + 436) == 1)
          {
            *permuteMap = 66051;
            vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
          }

          else if (v89 >= 4 * v30.i64[0])
          {
            *permuteMap = 197121;
            vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
          }

          else
          {
            _cg_jpeg_mem_term("decodeBlockSubsampled", 2752, "*** ERROR: vImagePermuteChannels_ARGB8888 - width: %d  rowBytes: %d\n");
          }

          LOWORD(v31) = *(v4 + 166);
          v32 = v31;
          v33 = (v19 / v32 - *(a2 + 2));
          *permuteMap = (v29 / v32);
          IIOSubsampler::subsample(v93, __b, v29, (*(a2 + 5) + *(a2 + 6) * v33), permuteMap);
          v19 = v19 + v21;
          if (v29 + v19 > v26)
          {
            v29 = v26 - v19;
          }

          IIODecodeFrameParams::~IIODecodeFrameParams(&src);
        }

        while (v19 < v26);
      }
    }

    v34 = 0;
LABEL_92:
    PSDReadPlugin::handlePremultiplication(v4, a2, a4);
    free(__b);
    v67 = 0;
    if (!v34)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v22 = v9 * v10 + 7;
  v23 = v22 >> 3;
  if (*(v4 + 241) == 1)
  {
    v24 = PSDReadPlugin::readDataSizeTable(v4, &v95, &v96, &v94);
    v25 = v94;
    if (!v94)
    {
      v24 = 0;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v25 = v22 >> 3;
    if (v22 < 8)
    {
LABEL_102:
      v34 = 0;
      goto LABEL_103;
    }
  }

  v34 = malloc_type_calloc(v25, 1uLL, 0x100004077774924uLL);
  if (!v34)
  {
    _cg_jpeg_mem_term("decodeBlockSubsampled", 2589, "*** ERROR: failed to allocate 'scanLineData'\n");
    goto LABEL_102;
  }

  if (*(v4 + 128) != 1)
  {
    v36 = v20;
    if (v19 < v20)
    {
      v74 = v23;
      v80 = v34;
      v81 = v4;
      v37 = v17;
      do
      {
        if (*(v4 + 294) - 5 <= 1)
        {
          memset(__b, 255, (v37 * count));
        }

        if (a3)
        {
          v38 = 0;
          v35 = v37 + v19;
          v71 = v35;
          v76 = v35 - v19;
          do
          {
            v39 = v38;
            if (v38 <= 3)
            {
              v39 = v38;
              if (*(v4 + 436) == 1)
              {
                v39 = *(&xmmword_186224A90 + v38);
              }
            }

            v40 = *(v4 + 240);
            v43 = v40 == 4 && v39 < 4 || v40 == 0;
            if (*(v4 + 241) == 1)
            {
              v44 = (*(v4 + 62) * v38);
            }

            else
            {
              v44 = *(v4 + 26) + v74 * (*(v4 + 62) * v38) + 2;
            }

            v79 = v44;
            if (v19 < v71)
            {
              v45 = 0;
              v46 = v43 << 31 >> 31;
              v73 = count - v39;
              v47 = v19;
              v48 = v39;
              do
              {
                if (*(v81 + 241) == 1)
                {
                  v49 = v96[v79 + v47];
                  v50 = v95[v79 + v47];
                }

                else
                {
                  v50 = v74;
                  v49 = v79 + v47 * v74;
                }

                if (IIOImageReadSession::getBytesAtOffset(*(v81 + 3), v80, v49, v50) != v50)
                {
                  break;
                }

                v51 = &__b[count * v45];
                if (*(v81 + 241) == 1)
                {
                  PSDReadPlugin::decode_packbits(v81, v80, &v51[v48], v50, v73, a4, v46, v38, v47);
                }

                else
                {
                  v52 = *(v81 + 128);
                  switch(v52)
                  {
                    case 32:
                      v61 = v50 >> 2;
                      if (v50 >> 2 >= v75)
                      {
                        v61 = v13;
                      }

                      if (v61)
                      {
                        v62 = &v51[4 * v48];
                        v63 = v80;
                        do
                        {
                          v64 = *v63++;
                          *v62 = bswap32(v64) ^ v46;
                          v62 += a4;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 16:
                      v57 = v50 >> 1;
                      if (v50 >> 1 >= v75)
                      {
                        v57 = v13;
                      }

                      if (v57)
                      {
                        v58 = &v51[2 * v48];
                        v59 = v80;
                        do
                        {
                          v60 = *v59;
                          v59 += 2;
                          *v58 = v46 ^ (bswap32(v60) >> 16);
                          v58 += 2 * a4;
                          --v57;
                        }

                        while (v57);
                      }

                      break;
                    case 8:
                      v53 = v13;
                      if (v50 < v75)
                      {
                        v53 = v50;
                      }

                      if (v53)
                      {
                        v54 = &v51[v48];
                        v55 = v80;
                        do
                        {
                          v56 = *v55++;
                          *v54 = v56 ^ v46;
                          v54 += a4;
                          --v53;
                        }

                        while (v53);
                      }

                      break;
                  }
                }

                ++v47;
                ++v45;
              }

              while (v76 != v45);
            }

            ++v38;
            v4 = v81;
          }

          while (v38 != a3);
        }

        if (*(v4 + 85) == 1380401696 && *(v4 + 116) == 4 && *(v4 + 294) == 5)
        {
          src = __b;
          src_8 = v37;
          src_16 = v13;
          *&src_24.f64[0] = count;
          if (*(v4 + 160) == 8)
          {
            vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &src, &src, 1u, 0x10u);
          }

          else
          {
            _cg_jpeg_mem_term("decodeBlockSubsampled", 2711, "*** RGB-%d: check alpha-one?\n");
          }
        }

        LOWORD(v35) = *(v4 + 166);
        v65 = *&v35;
        v66 = (v19 / v65 - *(a2 + 2));
        LODWORD(src) = (v37 / v65);
        IIOSubsampler::subsample(v93, __b, v37, (*(a2 + 5) + *(a2 + 6) * v66), &src);
        v19 = v19 + v21;
        v35 = v37 + v19;
        if (v37 + v19 > v36)
        {
          v37 = v36 - v19;
        }
      }

      while (v19 < v36);
      v34 = v80;
    }

    goto LABEL_92;
  }

  if (malloc_type_calloc(count, 1uLL, 0x100004077774924uLL))
  {
    operator new();
  }

  _cg_jpeg_mem_term("decodeBlockSubsampled", 2595, "*** ERROR: failed to allocate 'tempData'\n");
LABEL_103:
  free(__b);
  v67 = 4294967246;
  if (v34)
  {
LABEL_93:
    free(v34);
  }

LABEL_94:
  if (v95)
  {
    free(v95);
  }

  if (v96)
  {
    free(v96);
  }

  IIOSubsampler::~IIOSubsampler(v93);
  return v67;
}

void sub_1860CB354(_Unwind_Exception *a1)
{
  MEMORY[0x186602850](v1, 0x10F1C4050BC5624);
  IIOSubsampler::~IIOSubsampler((v2 - 224));
  _Unwind_Resume(a1);
}

uint64_t PSDReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3)
{
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v7 = *(this + 55);
    v8 = v7 >> 24;
    if ((v7 >> 24) <= 0x7F)
    {
      v9 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v9 = __maskrune(v8, 0x40000uLL);
      v7 = *(this + 55);
    }

    if (v9)
    {
      v10 = (v7 >> 24);
    }

    else
    {
      v10 = 46;
    }

    v11 = v7 << 8 >> 24;
    if (v11 <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v11, 0x40000uLL);
      v7 = *(this + 55);
    }

    if (v12)
    {
      v13 = (v7 << 8 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v7 >> 8;
    if (v14 <= 0x7F)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v7 = *(this + 55);
    }

    if (v15)
    {
      v16 = (v7 >> 8);
    }

    else
    {
      v16 = 46;
    }

    if (v7 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v7, 0x40000uLL))
    {
LABEL_22:
      v17 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v10, v13, v16, v17, iioTypeStr[a3], "virtual OSStatus PSDReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v17 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (*(this + 3))
  {
    v18 = *(this + 59);
    if (v18)
    {
      *(this + 79) = v18;
    }

    else
    {
      *(this + 59) = *(this + 79);
    }

    if (*(this + 438) || *(this + 436) == 1)
    {
      *(this + 484) = 1;
    }

    v19 = *(this + 28);
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    if (IIOReadPlugin::getCachedBlocks(this))
    {
      v22 = *(this + 3);
      if (v22)
      {
        v23 = IIOImageReadSession::mapData(v22);
      }

      else
      {
        v23 = 0;
      }

      if (*(this + 241) != 1 || (v24 = *(this + 128), v24 == 8) || v24 == 1)
      {
        v73 = v23;
        v25 = *(this + 28);
        if (v25 >= *(this + 29))
        {
LABEL_68:
          PSDReadPlugin::decodeBlocks(this, &v80);
          v23 = v73;
          v65 = v81;
          if (v80 != v81)
          {
            v66 = v80 + 40;
            while (1)
            {
              BlockArray = *(v66 + 8);
              if (BlockArray)
              {
                _cg_jpeg_mem_term("decodeImageImp", 2891, "*** ERROR: (err=%d) when decoding block with index: %d\n");
                if (!*(v66 + 3))
                {
                  break;
                }
              }

              *(*(this + 12) + 8 * (*(v66 - 5) - v19)) = IIOReadPlugin::createImageBlock(this, *v66, *(v66 + 2), *(v66 - 1), *(v66 + 1), (BlockArray == 0) & *(this + 371));
              *v66 = 0;
              v67 = v66 + 48;
              v66 += 88;
              if (v67 == v65)
              {
                goto LABEL_73;
              }
            }

            _cg_jpeg_mem_term("decodeImageImp", 2892, "*** ERROR: no valid rows\n");
          }
        }

        else
        {
          v26 = kImageMalloc_PSD_Data;
          v27 = MEMORY[0x1E695F050];
          while (1)
          {
            if (*(*(this + 12) + 8 * (v25 - v19)))
            {
              _cg_jpeg_mem_term("decodeImageImp", 2856, "*** _blockArray[%d] was cached - and already allocated\n");
            }

            v28 = *(this + 78);
            v29 = (v28 * v25);
            LODWORD(v3) = *(this + 77);
            LODWORD(v21) = *(this + 70);
            v30 = v21;
            v31 = v28 + v29 <= v30 ? v28 : v30 - (v28 * v25);
            v32 = _ImageIO_Malloc(*(this + 79) * v28, *(this + 52), &v83, *v26, 0, 0);
            if (!v32)
            {
              break;
            }

            v3 = *&v3;
            v33 = *(this + 79);
            v74 = v25;
            *&v75 = v29;
            *(&v75 + 1) = v3;
            *&v76 = v31;
            *(&v76 + 1) = v32;
            *&v77 = v33;
            *(&v77 + 1) = v83;
            *&v78 = 0;
            DWORD2(v78) = 0;
            v79 = 0;
            v34 = v81;
            if (v81 >= v82)
            {
              v40 = v26;
              v41 = v80;
              v42 = v81 - v80;
              v43 = 0x2E8BA2E8BA2E8BA3 * ((v81 - v80) >> 3);
              v44 = v43 + 1;
              if ((v43 + 1) > 0x2E8BA2E8BA2E8BALL)
              {
                std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
              }

              if (0x5D1745D1745D1746 * ((v82 - v80) >> 3) > v44)
              {
                v44 = 0x5D1745D1745D1746 * ((v82 - v80) >> 3);
              }

              if ((0x2E8BA2E8BA2E8BA3 * ((v82 - v80) >> 3)) >= 0x1745D1745D1745DLL)
              {
                v45 = 0x2E8BA2E8BA2E8BALL;
              }

              else
              {
                v45 = v44;
              }

              v88 = &v80;
              if (v45)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeFrameParams>>(&v80, v45);
              }

              v46 = 8 * ((v81 - v80) >> 3);
              v84 = 0;
              v85 = v46;
              v47 = 0;
              v87 = 0;
              v48 = v75;
              *v46 = v74;
              *(v46 + 16) = v48;
              v49 = v78;
              v50 = v77;
              v51 = v76;
              *(v46 + 80) = v79;
              *(v46 + 48) = v50;
              *(v46 + 64) = v49;
              *(v46 + 32) = v51;
              v39 = 88 * v43 + 88;
              v86 = v39;
              v52 = (88 * v43 - v42);
              if (v41 != v34)
              {
                v53 = v41;
                v54 = v46 - v42;
                do
                {
                  v55 = *(v53 + 1);
                  *v54 = *v53;
                  *(v54 + 16) = v55;
                  v56 = *(v53 + 2);
                  v57 = *(v53 + 3);
                  v58 = *(v53 + 4);
                  *(v54 + 80) = *(v53 + 10);
                  *(v54 + 48) = v57;
                  *(v54 + 64) = v58;
                  *(v54 + 32) = v56;
                  v53 = (v53 + 88);
                  v54 += 88;
                }

                while (v53 != v34);
                do
                {
                  IIODecodeFrameParams::~IIODecodeFrameParams(v41);
                  v41 = (v59 + 88);
                }

                while (v41 != v34);
                v41 = v80;
                v39 = v86;
                v47 = v87;
              }

              v80 = v52;
              v81 = v39;
              v60 = v82;
              v82 = v47;
              v86 = v41;
              v87 = v60;
              v84 = v41;
              v85 = v41;
              std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(&v84);
              v26 = v40;
            }

            else
            {
              v35 = v75;
              *v81 = v74;
              *(v34 + 1) = v35;
              v36 = v76;
              v37 = v77;
              v38 = v78;
              *(v34 + 10) = v79;
              *(v34 + 3) = v37;
              *(v34 + 4) = v38;
              *(v34 + 2) = v36;
              v39 = v34 + 88;
            }

            v81 = v39;
            IIODecodeFrameParams::~IIODecodeFrameParams(&v74);
            v61 = CGRectEqualToRect(*(this + 120), *v27);
            v62 = 0;
            if (!v61)
            {
              v89.origin.x = 0.0;
              v89.origin.y = v29;
              v89.size.width = v3;
              v89.size.height = v31;
              *(&v21 - 2) = CGRectUnion(*(this + 120), v89);
              v29 = v63;
              v3 = *&v21;
              v31 = v64;
            }

            *(this + 15) = v62;
            *(this + 16) = v29;
            *(this + 17) = v3;
            *(this + 18) = v31;
            if (++v25 >= *(this + 29))
            {
              goto LABEL_68;
            }
          }

          _cg_jpeg_mem_term("decodeImageImp", 2874, "*** ERROR: failed to allocate 'imageData'\n");
          v23 = v73;
        }
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    BlockArray = 0;
  }

LABEL_73:
  v68 = v80;
  v69 = v81;
  while (v68 != v69)
  {
    v70 = *(v68 + 5);
    if (v70)
    {
      _ImageIO_Free(v70, *(v68 + 7));
    }

    v68 = (v68 + 88);
  }

  if (v23)
  {
    v71 = *(this + 3);
    if (v71)
    {
      IIOImageReadSession::unmapData(v71);
    }
  }

  *&v74 = &v80;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&v74);
  return BlockArray;
}

void sub_1860CBA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  a16 = &a27;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a16);
  _Unwind_Resume(a1);
}

void PSDReadPlugin::decodeBlocks(uint64_t a1, void *a2)
{
  v4 = IIO_Reader::testHeaderSize(*(a1 + 24));
  v5 = (a2[1] - *a2) >> 3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN13PSDReadPlugin12decodeBlocksERNSt3__16vectorI20IIODecodeFrameParamsNS0_9allocatorIS2_EEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_56;
  block[4] = a1;
  block[5] = a2;
  block[6] = v4;
  dispatch_apply(0x2E8BA2E8BA2E8BA3 * v5, 0, block);
}

void ___ZN13PSDReadPlugin12decodeBlocksERNSt3__16vectorI20IIODecodeFrameParamsNS0_9allocatorIS2_EEEE_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = **(a1 + 40);
  if (0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 40) + 8) - v2) >> 3) <= a2 || ((v5 = *(a1 + 32), v6 = (v2 + 88 * a2), memset(v13, 0, sizeof(v13)), IIOImageReadSession::IIOImageReadSession(v13, *(a1 + 48)), v7 = *(v5 + 260), *(v5 + 464) >= v7) ? (v8 = *(v5 + 260)) : (v8 = *(v5 + 464)), *(v5 + 332) < 2u ? (v9 = PSDReadPlugin::decodeBlock(v5, v6, v8, v7)) : (v9 = PSDReadPlugin::decodeBlockSubsampled(v5, v6, v8, v7)), v10 = **(a1 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 40) + 8) - v10) >> 3) <= a2))
  {
    __break(1u);
  }

  else
  {
    v11 = v6[4];
    if (v9)
    {
      v11 = 0;
    }

    v12 = v10 + 88 * a2;
    *(v12 + 64) = v11;
    *(v12 + 72) = v9;
    IIOImageReadSession::~IIOImageReadSession(v13);
  }
}

unint64_t IIOHashForDataProvider(CGDataProvider *a1, unint64_t a2)
{
  SizeOfData = CGDataProviderGetSizeOfData();
  if (!CGAccessSessionCreate())
  {
    return 0;
  }

  if (SizeOfData == -1 || (BytePointer = CGAccessSessionGetBytePointer()) == 0 || (v5 = XXH64(BytePointer, SizeOfData, a2)) == 0)
  {
    CGAccessSessionRewind();
    v6 = malloc_type_malloc(0xF4240uLL, 0x746EAF04uLL);
    State = XXH64_createState();
    XXH64_reset(State, a2);
    Bytes = CGAccessSessionGetBytes();
    if (Bytes)
    {
      v9 = Bytes;
      do
      {
        XXH64_update(State, v6, v9);
        v9 = CGAccessSessionGetBytes();
      }

      while (v9);
    }

    v5 = XXH64_digest(State);
    XXH64_freeState(State);
    free(v6);
  }

  CGAccessSessionRelease();
  return v5;
}

uint64_t TIFFJPEGIsFullStripRequired(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x550uLL);
  v12 = a1;
  TIFFjpeg_create_decompress(v4);
  v5 = &v6;
  v7 = std_init_source;
  v8 = std_fill_input_buffer;
  v9 = std_skip_input_data;
  v10 = _cg_jpeg_resync_to_restart;
  v11 = std_term_source;
  v6 = 0u;
  if (TIFFjpeg_read_header(v4, 1) == 1)
  {
    has_multiple_scans = TIFFjpeg_has_multiple_scans(v4);
  }

  else
  {
    has_multiple_scans = 0;
  }

  TIFFjpeg_destroy(v4);
  return has_multiple_scans;
}

uint64_t TIFFjpeg_create_decompress(uint64_t a1)
{
  *a1 = _cg_jpeg_std_error(a1 + 672);
  *(a1 + 672) = TIFFjpeg_error_exit;
  *(a1 + 688) = TIFFjpeg_output_message;
  *(a1 + 24) = 0;
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_CreateDecompress(a1, 90, 664);
  return 1;
}

uint64_t TIFFjpeg_read_header(uint64_t a1, int a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_read_header(a1, a2);
  }
}

uint64_t TIFFjpeg_destroy(uint64_t a1)
{
  result = setjmp((a1 + 848));
  if (!result)
  {
    return _cg_jpeg_destroy(a1);
  }

  return result;
}

uint64_t TIFFjpeg_has_multiple_scans(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  else
  {
    return _cg_jpeg_has_multiple_scans(a1);
  }
}

uint64_t TIFFInitJPEG(uint64_t a1, int a2)
{
  if (a2 != 7)
  {
    TIFFInitJPEG_cold_1();
  }

  if (_TIFFMergeFields(a1, jpegFields, 4))
  {
    v3 = malloc_type_malloc(0x550uLL, 0x10F2040D7F6AB1BuLL);
    *(a1 + 1096) = v3;
    if (v3)
    {
      _TIFFmemset(v3, 0, 0x550uLL);
      v4 = *(a1 + 1096);
      *(v4 + 1280) = *(a1 + 1288);
      *(v4 + 1288) = *(a1 + 1280);
      *(v4 + 1296) = *(a1 + 1296);
      *(v4 + 1304) = *(a1 + 1080);
      *(v4 + 1168) = a1;
      *(v4 + 1320) = 0;
      *(v4 + 1328) = xmmword_186227550;
      *(v4 + 1344) = 0;
      *(a1 + 1288) = JPEGVGetField;
      *(a1 + 1280) = JPEGVSetField;
      *(a1 + 1296) = JPEGPrintDir;
      *(a1 + 952) = JPEGFixupTags;
      *(a1 + 960) = JPEGSetupDecode;
      *(a1 + 968) = JPEGPreDecode;
      *(a1 + 1008) = JPEGDecode;
      *(a1 + 1024) = JPEGDecode;
      *(a1 + 1040) = JPEGDecode;
      *(a1 + 976) = JPEGSetupEncode;
      *(a1 + 992) = JPEGPreEncode;
      *(a1 + 1000) = JPEGPostEncode;
      *(a1 + 1016) = JPEGEncode;
      *(a1 + 1032) = JPEGEncode;
      *(a1 + 1048) = JPEGEncode;
      *(a1 + 1072) = JPEGCleanup;
      *(a1 + 1080) = JPEGDefaultStripSize;
      *(a1 + 1088) = JPEGDefaultTileSize;
      *(a1 + 16) |= 0x100u;
      *(v4 + 664) = 0;
      if (*(a1 + 24))
      {
        return 1;
      }

      *(v4 + 1328) = 2000;
      v5 = malloc_type_malloc(0x7D0uLL, 0x53DE78A7uLL);
      *(v4 + 1320) = v5;
      if (v5)
      {
        _TIFFmemset(v5, 0, 0x7D0uLL);
        return 1;
      }

      TIFFErrorExtR(a1, "TIFFInitJPEG", "Failed to allocate memory for JPEG tables");
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFInitJPEG", "No space for JPEG state block");
    }
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFInitJPEG", "Merging JPEG codec-specific tags failed");
  }

  return 0;
}

void TIFFjpeg_error_exit(uint64_t a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  (*(*a1 + 24))(a1, v2);
  TIFFErrorExtR(*(a1 + 1168), "JPEGLib", "%s", v2);
  _cg_jpeg_abort(a1);
  longjmp((a1 + 848), 1);
}

uint64_t TIFFjpeg_output_message(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  (*(*a1 + 24))(a1, v3);
  return TIFFWarningExtR(a1[146], "JPEGLib", "%s", v3);
}

void *std_init_source(void *result)
{
  v1 = result[146];
  result[139] = *(v1 + 1120);
  result[140] = *(v1 + 1160);
  return result;
}

uint64_t std_fill_input_buffer(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 40) = 123;
  (*(v2 + 8))(a1, 0xFFFFFFFFLL);
  a1[139] = &std_fill_input_buffer_dummy_EOI;
  a1[140] = 2;
  return 1;
}

void *std_skip_input_data(void *result, unint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = result[140];
    v4 = v3 >= a2;
    v5 = v3 - a2;
    if (v4)
    {
      result[139] += a2;
    }

    else
    {
      v6 = *result;
      *(v6 + 40) = 123;
      result = (*(v6 + 8))(result, 0xFFFFFFFFLL);
      v2[139] = &std_fill_input_buffer_dummy_EOI;
      v5 = 2;
    }

    v2[140] = v5;
  }

  return result;
}

uint64_t JPEGVGetField(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    JPEGVGetField_cold_1();
  }

  if (a2 > 65537)
  {
    if (a2 == 65538)
    {
      v4 = *(v3 + 1336);
      goto LABEL_14;
    }

    if (a2 == 65539)
    {
      v4 = *(v3 + 1340);
      goto LABEL_14;
    }
  }

  else
  {
    if (a2 == 347)
    {
      **a3 = *(v3 + 1328);
      **(a3 + 8) = *(v3 + 1320);
      return 1;
    }

    if (a2 == 65537)
    {
      v4 = *(v3 + 1332);
LABEL_14:
      **a3 = v4;
      return 1;
    }
  }

  v5 = *(v3 + 1280);

  return v5();
}

uint64_t JPEGVSetField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    JPEGVSetField_cold_1();
  }

  if (a2 > 0x10000)
  {
    switch(a2)
    {
      case 0x10001:
        *(v8 + 1332) = *a3;
        break;
      case 0x10002:
        *(v8 + 1336) = *a3;
        JPEGResetUpsampled(a1, a2, a3, a4, a5, a6, a7, a8);
        break;
      case 0x10003:
        *(v8 + 1340) = *a3;
        break;
      default:
LABEL_11:
        v10 = *(v8 + 1288);

        return v10();
    }

    return 1;
  }

  if (a2 == 262)
  {
    v12 = (*(v8 + 1288))(a1);
    JPEGResetUpsampled(a1, v13, v14, v15, v16, v17, v18, v19);
    return v12;
  }

  if (a2 != 347)
  {
    if (a2 == 530)
    {
      *(v8 + 1344) = 1;
    }

    goto LABEL_11;
  }

  v20 = *a3;
  if (!*a3)
  {
    return 0;
  }

  _TIFFsetByteArrayExt(a1, (v8 + 1320), *(a3 + 8), v20);
  *(v8 + 1328) = v20;
  *(a1 + 80) |= 4u;
  result = TIFFFieldWithTag(a1, 347);
  if (result)
  {
    v21 = *(result + 24);
    result = 1;
    *(a1 + ((v21 >> 3) & 0x1FFC) + 72) |= 1 << v21;
    *(a1 + 16) |= 8u;
  }

  return result;
}

uint64_t JPEGPrintDir(uint64_t result, FILE *a2, uint64_t a3)
{
  v3 = *(result + 1096);
  if (!v3)
  {
    JPEGPrintDir_cold_1();
  }

  v6 = result;
  if ((*(result + 80) & 4) != 0)
  {
    result = fprintf(a2, "  JPEG Tables: (%u bytes)\n", *(v3 + 1328));
  }

  v7 = *(v3 + 1296);
  if (v7)
  {

    return v7(v6, a2, a3);
  }

  return result;
}

uint64_t JPEGFixupTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 122) == 6)
  {
    v39 = v7;
    v40 = v8;
    if (*(a1 + 170) == 1 && *(a1 + 130) == 3 && !*(*(a1 + 1096) + 1344))
    {
      v11 = TIFFGetStrileOffset(a1, 0, a3, a4, a5, a6, a7);
      if (v11)
      {
        v12 = v11;
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = a1;
        LODWORD(v33) = 2048;
        v32 = malloc_type_malloc(0x800uLL, 0xE9982FC2uLL);
        if (v32)
        {
          *(&v33 + 1) = 0;
          LODWORD(v34) = 0;
          *(&v34 + 1) = v12;
          BYTE8(v35) = 0;
          *&v35 = TIFFGetStrileByteCount(a1, 0, v13, v14, v15, v16, v17);
          v38 = 0;
LABEL_9:
          while (JPEGFixupTagsSubsamplingReadByte(&v31, &v38))
          {
            if (v38 == 255)
            {
              while (1)
              {
                if (!JPEGFixupTagsSubsamplingReadByte(&v31, &v38))
                {
                  goto LABEL_62;
                }

                if (v38 <= 0xD7u)
                {
                  break;
                }

                v18 = v38 - 216;
                if (v18 > 0x27)
                {
                  goto LABEL_62;
                }

                if (v18 != 39)
                {
                  if (((1 << (v38 + 40)) & 0x4000FFFF2CLL) == 0)
                  {
                    if (v38 == 216)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_62;
                  }

                  goto LABEL_16;
                }
              }

              if (v38 - 192 >= 3 && v38 - 201 >= 2)
              {
                if (v38 != 196)
                {
                  break;
                }

LABEL_16:
                v37 = 0;
                if (!JPEGFixupTagsSubsamplingReadWord(&v31, &v37))
                {
                  break;
                }

                v19 = v37 - 2;
                if (v37 < 2u)
                {
                  break;
                }

                if (v37 != 2)
                {
                  if (v34 >= v19)
                  {
                    *(&v33 + 1) += v19;
                    LODWORD(v34) = v34 - (v37 - 2);
                  }

                  else
                  {
                    v20 = v19 - v34;
                    LODWORD(v34) = 0;
                    if (v35 >= v20)
                    {
                      *(&v34 + 1) += v20;
                      *&v35 = v35 - v20;
                      BYTE8(v35) = 0;
                    }

                    else
                    {
                      *&v35 = 0;
                    }
                  }
                }

                continue;
              }

              v37 = 0;
              v36 = 0;
              if (!JPEGFixupTagsSubsamplingReadWord(&v31, &v37) || 3 * *(v31 + 130) + 8 != v37)
              {
                break;
              }

              if (v34 >= 7)
              {
                *(&v33 + 1) += 7;
                LODWORD(v34) = v34 - 7;
              }

              else
              {
                v21 = 7 - v34;
                LODWORD(v34) = 0;
                if (v35 >= v21)
                {
                  *(&v34 + 1) += v21;
                  *&v35 = v35 - v21;
                  BYTE8(v35) = 0;
                }

                else
                {
                  *&v35 = 0;
                }
              }

              if (!JPEGFixupTagsSubsamplingReadByte(&v31, &v36))
              {
                break;
              }

              if (v34)
              {
                ++*(&v33 + 1);
                v22 = v34 - 1;
              }

              else
              {
                v22 = 0;
                if (v35)
                {
                  ++*(&v34 + 1);
                  *&v35 = v35 - 1;
                  BYTE8(v35) = 0;
                }
              }

              v23 = v36;
              v24 = v31;
              if (*(v31 + 130) < 2u)
              {
LABEL_56:
                v26 = v23 >> 4;
                if (v23 >> 4 <= 4 && ((1 << v26) & 0x16) != 0 && (v27 = v23 & 0xF, v27 <= 4) && ((1 << v27) & 0x16) != 0)
                {
                  v28 = *(v24 + 336);
                  v29 = *(v24 + 338);
                  if (__PAIR64__(v29, v28) != __PAIR64__(v27, v26))
                  {
                    v30 = v24;
                    TIFFWarningExtR(v24, "JPEGFixupTagsSubsamplingSec", "Auto-corrected former TIFF subsampling values [%hu,%hu] to match subsampling values inside JPEG compressed data [%hhu,%hhu]", v28, v29, v26, v27);
                    *(v30 + 336) = v26;
                    *(v30 + 338) = v27;
                  }
                }

                else
                {
LABEL_65:
                  TIFFWarningExtR(v24, "JPEGFixupTagsSubsamplingSec", "Subsampling values inside JPEG compressed data have no TIFF equivalent, auto-correction of TIFF subsampling values failed");
                }

                goto LABEL_63;
              }

              v25 = 1;
              while (1)
              {
                if (v22)
                {
                  ++*(&v33 + 1);
                  LODWORD(v34) = v22 - 1;
                }

                else
                {
                  LODWORD(v34) = 0;
                  if (v35)
                  {
                    ++*(&v34 + 1);
                    *&v35 = v35 - 1;
                    BYTE8(v35) = 0;
                  }
                }

                if (!JPEGFixupTagsSubsamplingReadByte(&v31, &v36))
                {
                  goto LABEL_62;
                }

                if (v36 != 17)
                {
                  v24 = v31;
                  goto LABEL_65;
                }

                if (v34)
                {
                  ++*(&v33 + 1);
                  v22 = v34 - 1;
                  LODWORD(v34) = v34 - 1;
                }

                else
                {
                  v22 = 0;
                  if (v35)
                  {
                    ++*(&v34 + 1);
                    *&v35 = v35 - 1;
                    BYTE8(v35) = 0;
                  }
                }

                ++v25;
                v24 = v31;
                if (v25 >= *(v31 + 130))
                {
                  goto LABEL_56;
                }
              }
            }
          }

LABEL_62:
          TIFFWarningExtR(a1, "JPEGFixupTagsSubsampling", "Unable to auto-correct subsampling values, likely corrupt JPEG compressed data in first strip/tile; auto-correcting skipped");
LABEL_63:
          free(v32);
        }

        else
        {
          TIFFWarningExtR(a1, "JPEGFixupTagsSubsampling", "Unable to allocate memory for auto-correcting of subsampling values; auto-correcting skipped");
        }
      }
    }
  }

  return 1;
}

uint64_t JPEGSetupDecode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  JPEGInitializeLibJPEG(a1, 1);
  if (!v2)
  {
    JPEGSetupDecode_cold_2();
  }

  if (!*(v2 + 32))
  {
    JPEGSetupDecode_cold_1();
  }

  if ((*(a1 + 80) & 4) != 0 && (*(v2 + 40) = v2 + 1112, *(v2 + 1136) = std_fill_input_buffer, *(v2 + 1144) = std_skip_input_data, *(v2 + 1152) = _cg_jpeg_resync_to_restart, *(v2 + 1160) = std_term_source, *(v2 + 1112) = 0u, *(v2 + 1128) = tables_init_source, TIFFjpeg_read_header(v2, 0) != 2))
  {
    TIFFErrorExtR(a1, "JPEGSetupDecode", "Bogus JPEGTables field");
    return 0;
  }

  else
  {
    v3 = *(a1 + 122);
    *(v2 + 1176) = v3;
    if (v3 == 6)
    {
      *(v2 + 1178) = *(a1 + 336);
      v4 = *(a1 + 338);
    }

    else
    {
      v4 = 1;
      *(v2 + 1178) = 1;
    }

    *(v2 + 1180) = v4;
    *(v2 + 40) = v2 + 1112;
    *(v2 + 1128) = std_init_source;
    *(v2 + 1136) = std_fill_input_buffer;
    *(v2 + 1144) = std_skip_input_data;
    *(v2 + 1152) = _cg_jpeg_resync_to_restart;
    *(v2 + 1160) = std_term_source;
    *(v2 + 1112) = 0u;
    *(a1 + 1248) = _TIFFNoPostDecode;
    return 1;
  }
}

uint64_t JPEGPreDecode(uint64_t a1, int a2)
{
  v2 = *(a1 + 1096);
  if (!v2)
  {
    JPEGPreDecode_cold_2();
  }

  if (!*(v2 + 32))
  {
    (*(a1 + 960))(a1);
    if (!*(v2 + 32))
    {
      JPEGPreDecode_cold_1();
    }
  }

  result = TIFFjpeg_abort(v2);
  if (result)
  {
    if (TIFFjpeg_read_header(v2, 1) == 1)
    {
      *(a1 + 1152) = *(v2 + 1112);
      *(a1 + 1160) = *(v2 + 1120);
      if ((*(a1 + 17) & 4) != 0)
      {
        v13 = *(a1 + 100);
        v14 = *(a1 + 104);
        v15 = _cg_TIFFTileRowSize(a1);
      }

      else
      {
        v13 = *(a1 + 88);
        if ((*(a1 + 92) - *(a1 + 876)) >= *(a1 + 132))
        {
          v14 = *(a1 + 132);
        }

        else
        {
          v14 = *(a1 + 92) - *(a1 + 876);
        }

        v15 = _cg_TIFFScanlineSize(a1, v6, v7, v8, v9, v10, v11, v12);
      }

      *(v2 + 1184) = v15;
      if (a2 && *(a1 + 170) == 2)
      {
        v16 = *(v2 + 1178);
        if (!*(v2 + 1178) || (v17 = *(v2 + 1180), !*(v2 + 1180)))
        {
          TIFFErrorExtR(a1, "JPEGPreDecode", "JPEG horizontal or vertical sampling is zero");
          return 0;
        }

        v18 = 0;
        if (v13 < -v16)
        {
          v18 = (v13 + v16 - 1) / v16;
        }

        if (v14 >= -v17)
        {
          v14 = 0;
        }

        else
        {
          v14 = (v14 + v17 - 1) / v17;
        }
      }

      else
      {
        v18 = v13;
      }

      v19 = *(v2 + 48);
      v20 = *(v2 + 52);
      if (v19 < v18 || v20 < v14)
      {
        TIFFWarningExtR(a1, "JPEGPreDecode", "Improper JPEG strip/tile size, expected %ux%u, got %ux%u", v18, v14, *(v2 + 48), v20);
        v19 = *(v2 + 48);
      }

      if (v19 == v18 && (v21 = *(v2 + 52), v21 > v14) && *(a1 + 876) + v14 == *(a1 + 92) && (*(a1 + 17) & 4) == 0)
      {
        TIFFWarningExtR(a1, "JPEGPreDecode", "JPEG strip size exceeds expected dimensions, expected %ux%u, got %ux%u", v18, v14, v18, v21);
      }

      else if (v19 > v18 || *(v2 + 52) > v14)
      {
        TIFFErrorExtR(a1, "JPEGPreDecode", "JPEG strip/tile size exceeds expected dimensions, expected %ux%u, got %ux%u");
        return 0;
      }

      if (*(a1 + 170) == 1)
      {
        v22 = *(a1 + 130);
      }

      else
      {
        v22 = 1;
      }

      if (*(v2 + 56) == v22)
      {
        if (*(v2 + 296) == *(a1 + 116))
        {
          if (*(v2 + 316) && !*(v2 + 1352))
          {
            TIFFWarningExtR(a1, "JPEGPreDecode", "The JPEG strip/tile is encoded with progressive mode, which is normally not legal for JPEG-in-TIFF.\nlibtiff should be able to decode it, but it might cause compatibility issues with other readers");
            *(v2 + 1352) = 1;
          }

          if (TIFFjpeg_has_multiple_scans(v2))
          {
            v23 = *(v2 + 56);
            if (v23 < 1)
            {
              v25 = 0x100000;
            }

            else
            {
              v24 = (*(v2 + 304) + 32);
              v25 = 0x100000;
              do
              {
                v26 = *(v24 - 6);
                if (v26 >= 1)
                {
                  v27 = *(v24 - 5);
                  if (v27 >= 1)
                  {
                    v25 += ((v26 + *(v24 - 1) - 1) / v26 * ((v27 + *v24 - 1) / v27)) << 7;
                  }
                }

                v24 += 24;
                --v23;
              }

              while (v23);
            }

            v28 = *(*(v2 + 8) + 88);
            v29 = v28 >= 1 && v25 > v28;
            if (v29 && !getenv("LIBTIFF_ALLOW_LARGE_LIBJPEG_MEM_ALLOC"))
            {
              TIFFErrorExtR(a1, "JPEGPreDecode", "Reading this image would require libjpeg to allocate at least %llu bytes. This is disabled since above the %ld threshold. You may override this restriction by defining the LIBTIFF_ALLOW_LARGE_LIBJPEG_MEM_ALLOC environment variable, or setting the JPEGMEM environment variable to a value greater or equal to '%lluM'");
              return 0;
            }
          }

          v30 = *(v2 + 304);
          v31 = v30[2];
          if (*(a1 + 170) == 1)
          {
            if (v31 != *(v2 + 1178) || v30[3] != *(v2 + 1180))
            {
              TIFFErrorExtR(a1, "JPEGPreDecode", "Improper JPEG sampling factors %d,%d\nApparently should be %hu,%hu.");
              return 0;
            }

            v33 = *(v2 + 56);
            if (v33 >= 2)
            {
              v34 = v30 + 27;
              v35 = v33 - 1;
              while (*(v34 - 1) == 1 && *v34 == 1)
              {
                v34 += 24;
                if (!--v35)
                {
                  goto LABEL_73;
                }
              }

              goto LABEL_67;
            }

LABEL_73:
            if (*(v2 + 1176) == 6 && *(v2 + 1336) == 1)
            {
              *(v2 + 60) = 0x200000003;
              v36 = 1;
              v37 = JPEGDecode;
              goto LABEL_80;
            }
          }

          else if (v31 != 1 || v30[3] != 1)
          {
LABEL_67:
            TIFFErrorExtR(a1, "JPEGPreDecode", "Improper JPEG sampling factors");
            return 0;
          }

          *(v2 + 60) = 0;
          *(v2 + 64) = 0;
          v37 = JPEGDecode;
          if (*(a1 + 170) == 1)
          {
            if (*(v2 + 1178) != 1 || (v37 = JPEGDecode, *(v2 + 1180) != 1))
            {
              v36 = 0;
              *(v2 + 92) = 1;
              v39 = JPEGDecodeRaw;
              v37 = DecodeRowError;
              v38 = 100;
              goto LABEL_85;
            }
          }

          v36 = 1;
LABEL_80:
          v38 = 92;
          v39 = JPEGDecode;
LABEL_85:
          *(v2 + v38) = 0;
          *(a1 + 1008) = v37;
          *(a1 + 1024) = v39;
          *(a1 + 1040) = v39;
          started = TIFFjpeg_start_decompress(v2);
          result = started != 0;
          if ((v36 & 1) == 0 && started)
          {
            result = alloc_downsampled_buffers(a1, *(v2 + 304), *(v2 + 56));
            if (result)
            {
              *(v2 + 1272) = 8;
              return 1;
            }
          }

          return result;
        }

        TIFFErrorExtR(a1, "JPEGPreDecode", "Improper JPEG data precision", v41, v42, v43, v44);
      }

      else
      {
        TIFFErrorExtR(a1, "JPEGPreDecode", "Improper JPEG component count", v41, v42, v43, v44);
      }
    }

    return 0;
  }

  return result;
}

BOOL JPEGDecode(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 1096);
  *(v5 + 1112) = *(a1 + 1152);
  *(v5 + 1120) = *(a1 + 1160);
  v6 = *(v5 + 1184);
  if (!v6)
  {
LABEL_12:
    bzero(a2, v3);
    return 0;
  }

  v8 = a3 / v6;
  if (a3 % v6)
  {
    TIFFWarningExtR(a1, *a1, "fractional scanline not read");
  }

  v9 = *(v5 + 52);
  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = v9 + 1;
    do
    {
      v13 = a2;
      if (TIFFjpeg_read_scanlines(v5, &v13) != 1)
      {
        goto LABEL_12;
      }

      ++*(a1 + 876);
      v11 = *(v5 + 1184);
      a2 += v11;
      v3 -= v11;
    }

    while (--v10 > 1);
  }

  *(a1 + 1152) = *(v5 + 1112);
  *(a1 + 1160) = *(v5 + 1120);
  return *(v5 + 168) < *(v5 + 140) || TIFFjpeg_finish_decompress(v5) != 0;
}

uint64_t JPEGSetupEncode(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1096);
  JPEGInitializeLibJPEG(a1, 0);
  if (!v2)
  {
    JPEGSetupEncode_cold_2();
  }

  if (*(v2 + 32))
  {
    JPEGSetupEncode_cold_1();
  }

  v3 = *(a1 + 122);
  *(v2 + 1176) = v3;
  if (*(a1 + 170) != 1)
  {
    *(v2 + 56) = 1;
    goto LABEL_19;
  }

  *(v2 + 56) = *(a1 + 130);
  if (v3 == 6)
  {
    if (*(v2 + 1336) != 1)
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 122);
  if (v5 > 1)
  {
    if (v5 == 5)
    {
      v4 = *(a1 + 130);
      if (v4 == 4)
      {
        goto LABEL_12;
      }
    }

    else if (v5 == 2 && *(a1 + 130) == 3)
    {
LABEL_6:
      v4 = 2;
LABEL_12:
      *(v2 + 60) = v4;
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *(a1 + 130);
    if (v4 == 1)
    {
      goto LABEL_12;
    }
  }

  *(v2 + 60) = 0;
LABEL_19:
  result = TIFFjpeg_set_defaults(v2);
  if (!result)
  {
    return result;
  }

  if (*(v2 + 272) && (*(v2 + 1340) & 2) != 0)
  {
    TIFFWarningExtR(a1, "JPEGSetupEncode", "mozjpeg library likely detected. Disable emission of Huffman tables in JpegTables tag, and use optimize_coding to avoid potential issues");
    *(v2 + 1340) &= ~2u;
  }

  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  v13 = *(v2 + 1176);
  if ((v13 - 3) < 2)
  {
    TIFFErrorExtR(a1, "JPEGSetupEncode", "PhotometricInterpretation %hu not allowed for JPEG");
    return 0;
  }

  if (v13 == 6)
  {
    v14 = *(a1 + 336);
    *(v2 + 1178) = v14;
    v15 = *(a1 + 338);
    *(v2 + 1180) = v15;
    if (!v14 || !v15)
    {
      TIFFErrorExtR(a1, "JPEGSetupEncode", "Invalig horizontal/vertical sampling value");
      return 0;
    }

    if (*(a1 + 116) >= 0x11u)
    {
      goto LABEL_37;
    }

    v27 = 0;
    if (!_cg_TIFFGetField(a1, 532, v7, v8, v9, v10, v11, v12, &v27))
    {
      v22 = 1 << *(a1 + 116);
      v28 = 0;
      v29 = (v22 - 1);
      v30 = (v22 >> 1);
      v31 = v29;
      v32 = v30;
      v33 = v29;
      _cg_TIFFSetField(a1, 532, v16, v17, v18, v19, v20, v21, &v28);
    }
  }

  else
  {
    *(v2 + 1178) = 65537;
  }

  if (*(a1 + 116) != 8)
  {
LABEL_37:
    TIFFErrorExtR(a1, "JPEGSetupEncode", "BitsPerSample %hu not allowed for JPEG");
    return 0;
  }

  *(v2 + 88) = 8;
  if ((*(a1 + 17) & 4) != 0)
  {
    if (*(a1 + 104) % (8 * *(v2 + 1180)))
    {
      TIFFErrorExtR(a1, "JPEGSetupEncode", "JPEG tile height must be multiple of %u");
      return 0;
    }

    if (*(a1 + 100) % (8 * *(v2 + 1178)))
    {
      TIFFErrorExtR(a1, "JPEGSetupEncode", "JPEG tile width must be multiple of %u");
      return 0;
    }
  }

  else
  {
    v23 = *(a1 + 132);
    if (v23 < *(a1 + 92) && v23 % (8 * *(v2 + 1180)))
    {
      TIFFErrorExtR(a1, "JPEGSetupEncode", "RowsPerStrip must be multiple of %u for JPEG");
      return 0;
    }
  }

  v24 = *(v2 + 1340);
  if ((v24 & 3) == 0)
  {
    v26 = *(a1 + 80) & 0xFFFFFFFB;
    goto LABEL_57;
  }

  v25 = *(v2 + 1320);
  if (v25 && *v25)
  {
    goto LABEL_58;
  }

  if ((v24 & 2) != 0 && (!*(v2 + 160) || !*(v2 + 168) || !*(v2 + 192) || !*(v2 + 200)))
  {
    TIFF_std_huff_tables(v2);
  }

  result = prepare_JPEGTables(a1);
  if (result)
  {
    *(a1 + 16) |= 8u;
    v26 = *(a1 + 80) | 4;
LABEL_57:
    *(a1 + 80) = v26;
LABEL_58:
    *(v2 + 40) = v2 + 1072;
    *(v2 + 1088) = std_init_destination;
    *(v2 + 1096) = std_empty_output_buffer;
    *(v2 + 1104) = std_term_destination;
    return 1;
  }

  return result;
}

uint64_t JPEGPreEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    JPEGPreEncode_cold_2();
  }

  v9 = a2;
  v11 = *(v8 + 32);
  if (v11 == 1)
  {
    (*(a1 + 976))(a1);
    v11 = *(v8 + 32);
  }

  if (v11)
  {
    JPEGPreEncode_cold_1();
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    v12 = *(a1 + 100);
    v13 = *(a1 + 104);
    v14 = _cg_TIFFTileRowSize(a1);
  }

  else
  {
    v12 = *(a1 + 88);
    if ((*(a1 + 92) - *(a1 + 876)) >= *(a1 + 132))
    {
      v13 = *(a1 + 132);
    }

    else
    {
      v13 = *(a1 + 92) - *(a1 + 876);
    }

    v14 = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v8 + 1184) = v14;
  if (v9 && *(a1 + 170) == 2)
  {
    v15 = *(v8 + 1178);
    if (!*(v8 + 1178) || (v16 = *(v8 + 1180), !*(v8 + 1180)))
    {
      TIFFErrorExtR(a1, "JPEGPreEncode", "JPEG horizontal or vertical sampling is zero");
      return 0;
    }

    v17 = 0;
    if (v12 < -v15)
    {
      v17 = (v12 + v15 - 1) / v15;
    }

    if (v13 >= -v16)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v13 + v16 - 1) / v16;
    }
  }

  else
  {
    v17 = v12;
  }

  if (HIWORD(v17) || v13 >= 0x10000)
  {
    TIFFErrorExtR(a1, "JPEGPreEncode", "Strip/tile too large for JPEG");
    return 0;
  }

  *(v8 + 48) = v17;
  *(v8 + 52) = v13;
  if (*(a1 + 170) == 1)
  {
    *(v8 + 56) = *(a1 + 130);
    if (*(v8 + 1176) == 6)
    {
      v18 = *(v8 + 1336) == 1 || *(v8 + 1178) == 1 && *(v8 + 1180) == 1;
      result = TIFFjpeg_set_colorspace(v8, 3);
      if (!result)
      {
        return result;
      }

      *(*(v8 + 104) + 8) = *(v8 + 1178);
      *(*(v8 + 104) + 12) = *(v8 + 1180);
    }

    else
    {
      result = TIFFjpeg_set_colorspace(v8, *(v8 + 60));
      if (!result)
      {
        return result;
      }

      v18 = 1;
    }
  }

  else
  {
    result = TIFFjpeg_set_colorspace(v8, 0);
    if (!result)
    {
      return result;
    }

    **(v8 + 104) = v9;
    v18 = 1;
    if (v9 && *(v8 + 1176) == 6)
    {
      *(*(v8 + 104) + 16) = 1;
      *(*(v8 + 104) + 20) = 1;
      *(*(v8 + 104) + 24) = 1;
    }
  }

  *(v8 + 324) = 0;
  *(v8 + 336) = 0;
  result = TIFFjpeg_set_quality(v8, *(v8 + 1332));
  if (!result)
  {
    return result;
  }

  v20 = *(v8 + 1340);
  v21 = *(v8 + 112);
  if (v20)
  {
    if (v21)
    {
      *(v21 + 128) = 1;
    }

    v22 = *(v8 + 120);
    if (!v22)
    {
      goto LABEL_53;
    }

    v23 = 1;
  }

  else
  {
    if (v21)
    {
      *(v21 + 128) = 0;
    }

    v22 = *(v8 + 120);
    if (!v22)
    {
      goto LABEL_53;
    }

    v23 = 0;
  }

  *(v22 + 128) = v23;
LABEL_53:
  if ((v20 & 2) != 0)
  {
    v25 = *(v8 + 160);
    if (v25)
    {
      *(v25 + 276) = 1;
    }

    v26 = *(v8 + 192);
    if (v26)
    {
      *(v26 + 276) = 1;
    }

    v27 = *(v8 + 168);
    if (v27)
    {
      *(v27 + 276) = 1;
    }

    v28 = *(v8 + 200);
    v24 = 0;
    if (v28)
    {
      *(v28 + 276) = 1;
    }
  }

  else
  {
    v24 = 1;
  }

  *(v8 + 296) = v24;
  if (v18)
  {
    *(v8 + 288) = 0;
    *(a1 + 1016) = JPEGEncode;
    *(a1 + 1032) = JPEGEncode;
    *(a1 + 1048) = JPEGEncode;
    result = TIFFjpeg_start_compress(v8);
    if (!result)
    {
      return result;
    }

LABEL_68:
    *(v8 + 1272) = 0;
    return 1;
  }

  *(v8 + 288) = 1;
  *(a1 + 1016) = JPEGEncodeRaw;
  *(a1 + 1032) = JPEGEncodeRaw;
  *(a1 + 1048) = JPEGEncodeRaw;
  result = TIFFjpeg_start_compress(v8);
  if (result)
  {
    result = alloc_downsampled_buffers(a1, *(v8 + 104), *(v8 + 92));
    if (result)
    {
      goto LABEL_68;
    }
  }

  return result;
}

uint64_t JPEGPostEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (*(v1 + 1272) >= 1)
  {
    v3 = *(v1 + 92);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(v1 + 104);
      do
      {
        v6 = *(v5 + 12);
        v7 = *(v1 + 1272);
        if (v7 * v6 < 8 * v6)
        {
          v8 = (8 * *(v5 + 28));
          v9 = 8 * v7 * v6;
          v10 = v6 * (8 - v7);
          do
          {
            v11 = (*(v1 + 1192 + 8 * v4) + v9);
            _TIFFmemcpy(*v11, *(v11 - 1), v8);
            v9 += 8;
            --v10;
          }

          while (v10);
          v3 = *(v1 + 92);
        }

        ++v4;
        v5 += 96;
      }

      while (v4 < v3);
    }

    v12 = *(v1 + 356);
    if (TIFFjpeg_write_raw_data(v1, v1 + 1192, 8 * v12) != 8 * v12)
    {
      return 0;
    }

    v1 = *(a1 + 1096);
  }

  return TIFFjpeg_finish_compress(v1);
}

uint64_t JPEGEncode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1096);
  if (!v3)
  {
    JPEGEncode_cold_1();
  }

  v6 = *(v3 + 1184);
  v7 = a3 / v6;
  if (a3 % v6)
  {
    TIFFWarningExtR(a1, *a1, "fractional scanline discarded");
  }

  if ((*(a1 + 17) & 4) == 0)
  {
    v8 = *(a1 + 876);
    v9 = v7 + v8;
    v10 = *(a1 + 92);
    v11 = (v10 - v8);
    if (v9 > v10)
    {
      v7 = v11;
    }
  }

  if (*(v3 + 88) == 12)
  {
    v12 = 2 * *(v3 + 1184) / 3;
    v13 = malloc_type_malloc(2 * v12, 0x1000040BDFB0063uLL);
    if (!v13)
    {
      TIFFErrorExtR(a1, "JPEGEncode", "Failed to allocate memory");
      return 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
    LODWORD(v12) = 0;
  }

  if (v7 >= 1)
  {
    while (1)
    {
      if (*(v3 + 88) == 12)
      {
        v22[0] = v14;
        if (v12 >= 2)
        {
          v15 = (a2 + 2);
          v16 = (v12 / 2);
          v17 = v14 + 1;
          do
          {
            HIDWORD(v18) = *(v15 - 2);
            LODWORD(v18) = *(v15 - 1) << 24;
            *(v17 - 1) = v18 >> 28;
            v19 = *v15;
            v15 += 3;
            *v17 = v19;
            v17 += 4;
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        v22[0] = a2;
      }

      if (TIFFjpeg_write_scanlines(v3, v22) != 1)
      {
        return 0;
      }

      if (v7 != 1)
      {
        ++*(a1 + 876);
        a2 += *(v3 + 1184);
        if (v7-- > 1)
        {
          continue;
        }
      }

      break;
    }
  }

  if (*(v3 + 88) == 12)
  {
    free(v14);
  }

  return 1;
}

uint64_t JPEGCleanup(uint64_t *a1)
{
  v1 = a1[137];
  if (!v1)
  {
    JPEGCleanup_cold_1();
  }

  a1[161] = *(v1 + 1280);
  a1[160] = *(v1 + 1288);
  a1[162] = *(v1 + 1296);
  if (*(v1 + 664))
  {
    TIFFjpeg_destroy(v1);
  }

  v3 = *(v1 + 1320);
  if (v3)
  {
    free(v3);
  }

  free(a1[137]);
  a1[137] = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t JPEGDefaultStripSize(uint64_t a1)
{
  result = (*(*(a1 + 1096) + 1304))();
  if (result < *(a1 + 92))
  {
    v3 = 0;
    v4 = *(a1 + 338);
    v5 = 8 * v4;
    if (result < -8 * v4)
    {
      v3 = (result + v5 - 1) / v5;
    }

    return v3 * v5;
  }

  return result;
}

uint64_t JPEGDefaultTileSize(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = (*(*(a1 + 1096) + 1312))();
  v7 = 0;
  v8 = *(a1 + 336);
  v9 = 8 * v8;
  if (*a2 < (-8 * v8))
  {
    v7 = (*a2 + v9 - 1) / v9;
  }

  v10 = 0;
  *a2 = v7 * v9;
  v11 = *(a1 + 338);
  v12 = 8 * v11;
  if (*a3 < (-8 * v11))
  {
    v10 = (*a3 + v12 - 1) / v12;
  }

  *a3 = v10 * v12;
  return result;
}

uint64_t JPEGResetUpsampled(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 1096);
  v10 = *(result + 16);
  v11 = v10 & 0xBFFF;
  *(result + 16) = v10 & 0xFFFFBFFF;
  if (*(result + 170) == 1 && *(result + 122) == 6 && *(v9 + 1336) == 1)
  {
    v11 = v10 | 0x4000;
    *(result + 16) = v10 | 0x4000;
  }

  if (*(result + 936) >= 1)
  {
    if ((v11 & 0x400) != 0)
    {
      result = _cg_TIFFTileSize(result, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      result = -1;
    }

    *(v8 + 936) = result;
  }

  if (*(v8 + 1104) >= 1)
  {
    result = _cg_TIFFScanlineSize(v8, a2, a3, a4, a5, a6, a7, a8);
    *(v8 + 1104) = result;
  }

  return result;
}

uint64_t JPEGFixupTagsSubsamplingReadByte(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    v4 = *(a1 + 24);
LABEL_3:
    *a2 = *v4;
    ++*(a1 + 24);
    --*(a1 + 32);
    return 1;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    if (!*(a1 + 56))
    {
      if ((*(*a1 + 1224))(*(*a1 + 1200), *(a1 + 40), 0) == -1)
      {
        return 0;
      }

      *(a1 + 56) = 1;
      v6 = *(a1 + 48);
    }

    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if ((v8 & 0x80000000) != 0)
    {
      JPEGFixupTagsSubsamplingReadByte_cold_1();
    }

    if ((*(*a1 + 1208))(*(*a1 + 1200), *(a1 + 8), v8) == v8)
    {
      v4 = *(a1 + 8);
      *(a1 + 24) = v4;
      *(a1 + 32) = v8;
      v9 = *(a1 + 48) - v8;
      *(a1 + 40) += v8;
      *(a1 + 48) = v9;
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t JPEGFixupTagsSubsamplingReadWord(uint64_t a1, _WORD *a2)
{
  v6 = 0;
  result = JPEGFixupTagsSubsamplingReadByte(a1, &v6);
  if (result)
  {
    v5 = 0;
    result = JPEGFixupTagsSubsamplingReadByte(a1, &v5);
    if (result)
    {
      *a2 = v5 | (v6 << 8);
      return 1;
    }
  }

  return result;
}

uint64_t JPEGInitializeLibJPEG(uint64_t result, int a2)
{
  v3 = *(result + 1096);
  if (*(v3 + 664))
  {
    if ((a2 == 0) == (*(v3 + 32) == 0))
    {
      return result;
    }

    TIFFjpeg_destroy(*(result + 1096));
    *(v3 + 664) = 0;
  }

  if (a2)
  {
    result = TIFFjpeg_create_decompress(v3);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = TIFFjpeg_create_compress(v3);
  if (result)
  {
    v4 = *(v3 + 8);
    v5 = *(v4 + 88);
    if (v5 >= 1)
    {
      result = getenv("JPEGMEM");
      if (v5 >> 21 <= 4 && result == 0)
      {
        *(v4 + 88) = 10485760;
      }
    }

LABEL_6:
    *(v3 + 664) = 1;
  }

  return result;
}

uint64_t TIFFjpeg_create_compress(uint64_t a1)
{
  *a1 = _cg_jpeg_std_error(a1 + 672);
  *(a1 + 672) = TIFFjpeg_error_exit;
  *(a1 + 688) = TIFFjpeg_output_message;
  *(a1 + 24) = 0;
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_CreateCompress(a1, 90, 584);
  return 1;
}

uint64_t tables_init_source(uint64_t result)
{
  *(result + 1112) = *(result + 1320);
  *(result + 1120) = *(result + 1328);
  return result;
}

uint64_t TIFFjpeg_abort(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_abort(a1);
  return 1;
}

BOOL JPEGDecodeRaw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 1096);
  v7 = *(v6 + 52);
  v8 = *(a1 + 92) - *(a1 + 876);
  if (v7 <= v8)
  {
    v8 = *(v6 + 52);
  }

  else if ((*(a1 + 17) & 4) != 0)
  {
    goto LABEL_6;
  }

  v7 = v8;
  if (!v8)
  {
    return *(v6 + 168) < *(v6 + 140) || TIFFjpeg_finish_decompress(v6) != 0;
  }

LABEL_6:
  v9 = v7;
  v10 = *(*(v6 + 304) + 140);
  v11 = *(v6 + 1276);
  v12 = *(v6 + 1184);
  while (1)
  {
    if (a3 < v12)
    {
      TIFFErrorExtR(a1, "JPEGDecodeRaw", "application buffer not large enough for all data.");
      return 0;
    }

    v13 = *(v6 + 1272);
    if (v13 >= 8)
    {
      v14 = *(v6 + 420);
      if (TIFFjpeg_read_raw_data(v6, v6 + 1192, 8 * v14) != 8 * v14)
      {
        return 0;
      }

      v13 = 0;
      *(v6 + 1272) = 0;
    }

    v15 = *(v6 + 56);
    if (v15 >= 1)
    {
      break;
    }

LABEL_31:
    *(v6 + 1272) = v13 + 1;
    v31 = *(v6 + 1180);
    *(a1 + 876) += v31;
    v12 = *(v6 + 1184);
    a2 += v12;
    a3 -= v12;
    v32 = v9 <= v31;
    v9 -= v31;
    if (v32)
    {
      return *(v6 + 168) < *(v6 + 140) || TIFFjpeg_finish_decompress(v6) != 0;
    }
  }

  v16 = 0;
  LODWORD(v17) = 0;
  v18 = *(v6 + 304);
  while (1)
  {
    v19 = *(v18 + 12);
    if (v19 >= 1)
    {
      break;
    }

LABEL_29:
    ++v16;
    v18 += 96;
    if (v16 >= v15)
    {
      v13 = *(v6 + 1272);
      goto LABEL_31;
    }
  }

  v20 = 0;
  v21 = *(v18 + 8);
  v17 = v17;
  while (a3 >= v11 * (v10 - 1) + v21 + v17)
  {
    v22 = *(*(v6 + 1192 + 8 * v16) + 8 * (v20 + *(v6 + 1272) * v19));
    if (v21 == 1)
    {
      if (v10)
      {
        v23 = a2;
        v24 = v10;
        do
        {
          v25 = *v22++;
          *(v23 + v17) = v25;
          v23 += v11;
          --v24;
        }

        while (v24);
      }
    }

    else if (v10)
    {
      v26 = (a2 + v17);
      v27 = v10;
      do
      {
        if (v21 >= 1)
        {
          v28 = v21;
          v29 = v26;
          do
          {
            v30 = *v22++;
            *v29++ = v30;
            --v28;
          }

          while (v28);
        }

        v26 += v11;
        --v27;
      }

      while (v27);
    }

    v17 += v21;
    if (++v20 == v19)
    {
      v15 = *(v6 + 56);
      goto LABEL_29;
    }
  }

  TIFFErrorExtR(a1, "JPEGDecodeRaw", "application buffer not large enough for all data, possible subsampling issue");
  return 0;
}

uint64_t TIFFjpeg_start_decompress(uint64_t a1)
{
  *(a1 + 16) = a1 + 1040;
  *(a1 + 1040) = TIFFjpeg_progress_monitor;
  *(a1 + 1348) = 100;
  v2 = getenv("LIBTIFF_JPEG_MAX_ALLOWED_SCAN_NUMBER");
  if (v2)
  {
    *(a1 + 1348) = atoi(v2);
  }

  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_start_decompress(a1);
  return 1;
}

uint64_t alloc_downsampled_buffers(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 1096);
  if (a3 < 1)
  {
    v4 = 0;
LABEL_7:
    *(v3 + 1276) = v4;
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = (a2 + 28);
    v6 = 1192;
    v7 = a3;
    while (1)
    {
      v8 = *(v5 - 5);
      v9 = *(v5 - 4);
      result = TIFFjpeg_alloc_sarray(v3, (8 * *v5), (8 * v9));
      if (!result)
      {
        break;
      }

      v5 += 24;
      v4 += v9 * v8;
      *(v3 + v6) = result;
      v6 += 8;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t TIFFjpeg_read_raw_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_read_raw_data(a1, a2, a3);
  }
}

uint64_t TIFFjpeg_finish_decompress(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_finish_decompress(a1);
  }
}

uint64_t TIFFjpeg_progress_monitor(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = *(result + 172);
    v2 = *(result + 1348);
    if (v1 >= v2)
    {
      v3 = result;
      TIFFErrorExtR(*(result + 1168), "TIFFjpeg_progress_monitor", "Scan number %d exceeds maximum scans (%d). This limit can be raised through the LIBTIFF_JPEG_MAX_ALLOWED_SCAN_NUMBER environment variable.", v1, v2);
      _cg_jpeg_abort(v3);
      longjmp((v3 + 848), 1);
    }
  }

  return result;
}

uint64_t TIFFjpeg_alloc_sarray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 8) + 16))(a1, 1, a2, a3);
  }
}

uint64_t TIFFjpeg_read_scanlines(uint64_t a1, uint64_t a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_read_scanlines(a1, a2, 1);
  }
}

uint64_t TIFFjpeg_set_defaults(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_set_defaults(a1, v2, v3, v4);
  return 1;
}

void *TIFF_std_huff_tables(void *result)
{
  v1 = result;
  if (!result[20])
  {
    result = _cg_jpeg_std_huff_table(result, 1, 0);
  }

  if (!v1[24])
  {
    result = _cg_jpeg_std_huff_table(v1, 0, 0);
  }

  if (!v1[21])
  {
    result = _cg_jpeg_std_huff_table(v1, 1, 1u);
  }

  if (!v1[25])
  {

    return _cg_jpeg_std_huff_table(v1, 0, 1u);
  }

  return result;
}

uint64_t prepare_JPEGTables(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!TIFFjpeg_set_quality(v1, *(v1 + 1332)) || !TIFFjpeg_suppress_tables(v1))
  {
    return 0;
  }

  v2 = *(v1 + 1340);
  if (v2)
  {
    v3 = *(v1 + 112);
    if (v3)
    {
      *(v3 + 128) = 0;
    }

    if (*(v1 + 1176) == 6)
    {
      v4 = *(v1 + 120);
      if (v4)
      {
        *(v4 + 128) = 0;
      }
    }
  }

  if ((v2 & 2) != 0)
  {
    v5 = *(v1 + 160);
    if (v5)
    {
      *(v5 + 276) = 0;
    }

    v6 = *(v1 + 192);
    if (v6)
    {
      *(v6 + 276) = 0;
    }

    if (*(v1 + 1176) == 6)
    {
      v7 = *(v1 + 168);
      if (v7)
      {
        *(v7 + 276) = 0;
      }

      v8 = *(v1 + 200);
      if (v8)
      {
        *(v8 + 276) = 0;
      }
    }
  }

  v9 = *(v1 + 1320);
  if (v9)
  {
    free(v9);
  }

  *(v1 + 1328) = 1000;
  v10 = malloc_type_malloc(0x3E8uLL, 0x19D753AuLL);
  *(v1 + 1320) = v10;
  if (!v10)
  {
    *(v1 + 1328) = 0;
    TIFFErrorExtR(*(v1 + 1168), "TIFFjpeg_tables_dest", "No space for JPEGTables");
    return 0;
  }

  *(v1 + 40) = v1 + 1072;
  *(v1 + 1088) = tables_init_destination;
  *(v1 + 1096) = tables_empty_output_buffer;
  *(v1 + 1104) = tables_term_destination;

  return TIFFjpeg_write_tables(v1);
}

uint64_t TIFFjpeg_set_quality(uint64_t a1, int a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_set_quality(a1, a2, 0, v4, v5, v6);
  return 1;
}

uint64_t TIFFjpeg_suppress_tables(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_suppress_tables(a1, 1);
  return 1;
}

uint64_t TIFFjpeg_write_tables(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_write_tables(a1);
  return 1;
}

uint64_t tables_init_destination(uint64_t result)
{
  *(result + 1072) = *(result + 1320);
  *(result + 1080) = *(result + 1328);
  return result;
}

uint64_t tables_empty_output_buffer(uint64_t a1)
{
  v2 = malloc_type_realloc(*(a1 + 1320), (*(a1 + 1328) + 1000), 0x7B0B2AF5uLL);
  if (!v2)
  {
    v3 = *a1;
    *(v3 + 10) = 56;
    *(v3 + 12) = 100;
    (**a1)(a1);
  }

  v4 = *(a1 + 1328);
  *(a1 + 1072) = &v2[v4];
  *(a1 + 1080) = 1000;
  *(a1 + 1320) = v2;
  *(a1 + 1328) = v4 + 1000;
  return 1;
}

void *std_init_destination(void *result)
{
  v1 = result[146];
  result[134] = *(v1 + 1120);
  result[135] = *(v1 + 1128);
  return result;
}

uint64_t std_empty_output_buffer(void *a1)
{
  v2 = a1[146];
  v2[145] = v2[141];
  result = TIFFFlushData1(v2);
  if (result)
  {
    a1[134] = v2[140];
    a1[135] = v2[141];
    return 1;
  }

  return result;
}

void *std_term_destination(void *result)
{
  v1 = result[146];
  v1[144] = result[134];
  v1[145] = v1[141] - result[135];
  return result;
}

uint64_t TIFFjpeg_set_colorspace(uint64_t a1, int a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_set_colorspace(a1, a2);
  return 1;
}

uint64_t JPEGEncodeRaw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1096);
  v6 = *(v5 + 1276);
  v7 = (*(v5 + 48) + *(v5 + 1178) - 1) / *(v5 + 1178) * *(v5 + 88) * (*(v5 + 1180) * *(v5 + 1178) + 2);
  v9 = v7 + 7;
  v8 = v7 < -7;
  v10 = v7 + 14;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = v10 >> 3;
  v12 = a3 / (v10 >> 3);
  v13 = v12 * *(v5 + 1180);
  if (a3 != v12 * v11)
  {
    TIFFWarningExtR(a1, *a1, "fractional scanline discarded");
  }

  if (v13 < 1)
  {
    return 1;
  }

  v14 = *(*(v5 + 104) + 140);
  while (1)
  {
    v15 = *(v5 + 92);
    if (v15 >= 1)
    {
      v16 = 0;
      LODWORD(v17) = 0;
      v18 = *(v5 + 104);
      do
      {
        v19 = v18[3];
        if (v19 >= 1)
        {
          v20 = 0;
          v21 = v18[2];
          v22 = 8 * v18[7];
          v23 = v22 - v21 * v14;
          v17 = v17;
          v24 = v21 * v14 - v22;
          do
          {
            v25 = *(*(v5 + 1192 + 8 * v16) + 8 * (v20 + *(v5 + 1272) * v19));
            if (v21 == 1)
            {
              if (v14)
              {
                v26 = a2;
                v27 = v14;
                do
                {
                  *v25++ = *(v26 + v17);
                  v26 += v6;
                  --v27;
                }

                while (v27);
              }
            }

            else if (v14)
            {
              v28 = (a2 + v17);
              v29 = v14;
              do
              {
                if (v21 >= 1)
                {
                  v30 = v21;
                  v31 = v28;
                  do
                  {
                    v32 = *v31++;
                    *v25++ = v32;
                    --v30;
                  }

                  while (v30);
                }

                v28 += v6;
                --v29;
              }

              while (v29);
            }

            if (v23 >= 1)
            {
              v33 = *(v25 - 1);
              v34 = v24;
              do
              {
                *v25++ = v33;
              }

              while (!__CFADD__(v34++, 1));
            }

            v17 += v21;
            ++v20;
          }

          while (v20 != v19);
          v15 = *(v5 + 92);
        }

        ++v16;
        v18 += 24;
      }

      while (v16 < v15);
    }

    v36 = *(v5 + 1272);
    *(v5 + 1272) = v36 + 1;
    if (v36 < 7)
    {
      goto LABEL_32;
    }

    v37 = *(v5 + 356);
    if (TIFFjpeg_write_raw_data(v5, v5 + 1192, 8 * v37) != 8 * v37)
    {
      return 0;
    }

    *(v5 + 1272) = 0;
LABEL_32:
    v38 = *(v5 + 1180);
    *(a1 + 876) += v38;
    a2 += v11;
    v8 = v13 <= v38;
    v13 -= v38;
    if (v8)
    {
      return 1;
    }
  }
}

uint64_t TIFFjpeg_start_compress(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_start_compress(a1, 0);
  return 1;
}

uint64_t TIFFjpeg_write_raw_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_write_raw_data(a1, a2, a3);
  }
}

uint64_t TIFFjpeg_finish_compress(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_finish_compress(a1);
  return 1;
}

uint64_t TIFFjpeg_write_scanlines(uint64_t a1, uint64_t a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_write_scanlines(a1, a2, 1u);
  }
}

void Default_CTor(void)
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  WXMPFiles_CTor_1(v0);
}

void IIOMetadataUpdater::IIOMetadataUpdater(IIOMetadataUpdater *this, IIOImageSource *a2, IIOImageDestination *a3, IIODictionary *a4, char a5)
{
  *this = &unk_1EF4DDC88;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 32) = a5;
  *(this + 33) = IIODictionary::containsKey(a4, @"kCGImageDestinationMetadata");
  *(this + 34) = 0;
  if (IIODictionary::containsKey(*(this + 3), @"kCGImageDestinationMergeMetadata"))
  {
    BoolForKey = IIODictionary::getBoolForKey(*(this + 3), @"kCGImageDestinationMergeMetadata");
    *(this + 34) = BoolForKey;
  }

  else
  {
    BoolForKey = *(this + 34);
  }

  *(this + 35) = (BoolForKey & 1) == 0;
  *(this + 39) = IIODictionary::getUint32ForKey(*(this + 3), @"kCGImageDestinationOrientation") - 1 < 8;
  *(this + 38) = IIODictionary::containsKey(*(this + 3), @"kCGImageDestinationDateTime");
  *(this + 40) = IIODictionary::containsKey(*(this + 3), @"kCGImageDestinationICCProfile");
  *(this + 36) = IIODictionary::getBoolForKey(*(this + 3), @"kCGImageMetadataShouldExcludeXMP");
  *(this + 37) = IIODictionary::getBoolForKey(*(this + 3), @"kCGImageMetadataShouldExcludeGPS");
}

uint64_t IIOMetadataUpdater::copySourceToDestination(IIOImageSource **this)
{
  v2 = IIOImageSource::imageRead(this[1]);
  v3 = IIOImageRead::copyData(v2);
  if (v3)
  {
    v4 = v3;
    v5 = IIOImageSource::count(this[2]);
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    v8 = IIOImageWriteSession::putBytes(v5, BytePtr, Length);
    if (v8 == CFDataGetLength(v4))
    {
      Ref = IIOImageSource::imageReadRef(this[2]);
      v10 = CGImageWriteSessionFinalize(Ref, 0) == 0;
    }

    else
    {
      v10 = 1;
    }

    CFRelease(v4);
  }

  else
  {
    LogError("copySourceToDestination", 164, "*** ERROR: cannot get src data from CGImageSource\n");
    return 1;
  }

  return v10;
}

CGImageMetadata *IIOMetadataUpdater::createMetadataWithOrientation(IIOImageSource **this, int a2, __CFError **a3)
{
  memset(v11, 0, sizeof(v11));
  IIODictionary::IIODictionary(v11);
  v5 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v11);
  v6 = v5;
  if (v5 && (MutableCopy = CGImageMetadataCreateMutableCopy(v5)) != 0 || (MutableCopy = CGImageMetadataCreateMutable()) != 0)
  {
    IIONumber::IIONumber(v9, a2);
    CGImageMetadataSetValueMatchingImageProperty(MutableCopy, @"{TIFF}", @"Orientation", value);
    IIONumber::~IIONumber(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  IIODictionary::~IIODictionary(v11);
  return MutableCopy;
}

void sub_1860CF230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIONumber::~IIONumber(&a9);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageMetadata *IIOMetadataUpdater::createMetadataWithDateTime(IIOImageSource **this, const __CFString *a2, __CFError **a3)
{
  memset(v19, 0, sizeof(v19));
  IIODictionary::IIODictionary(v19);
  v6 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v19);
  v7 = v6;
  if (!v6 || (Mutable = CGImageMetadataCreateMutableCopy(v6)) == 0)
  {
    Mutable = CGImageMetadataCreateMutable();
    if (!Mutable)
    {
      goto LABEL_31;
    }
  }

  v9 = CFGetTypeID(a2);
  if (v9 == CFDateGetTypeID())
  {
    v10 = CFLocaleCopyCurrent();
    v11 = *MEMORY[0x1E695E480];
    v12 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v10, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v12, @"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZ");
    v13 = CFDateFormatterCreate(v11, v10, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v13, @"SSS");
    if (v13)
    {
      StringWithDate = CFDateFormatterCreateStringWithDate(v11, v13, a2);
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      StringWithDate = 0;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v17 = CFDateFormatterCreateStringWithDate(v11, v12, a2);
    if (v17)
    {
      MutableCopy = CFStringCreateMutableCopy(v11, 32, v17);
      if (MutableCopy)
      {
        v20.length = CFStringGetLength(v17);
        v20.location = 0;
        CFStringFindAndReplace(MutableCopy, @"GMT", &stru_1EF50EA10, v20, 0);
      }

      CFRelease(v17);
      if (!v10)
      {
LABEL_21:
        if (v12)
        {
          CFRelease(v12);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (MutableCopy)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

LABEL_20:
      CFRelease(v10);
      goto LABEL_21;
    }

LABEL_19:
    MutableCopy = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = CFGetTypeID(a2);
  if (v15 == CFStringGetTypeID())
  {
    StringWithDate = CreateSubsecTimeFromXMPDateTime(a2);
    if (StringWithDate)
    {
      MutableCopy = CreateXMPDateFromXMPDateTimeAndSubsecTime(a2, StringWithDate);
      if (!MutableCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      MutableCopy = CreateXMPDateTimeWithXMPOrExifDateTimeString(a2);
      StringWithDate = 0;
      if (!MutableCopy)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    CGImageMetadataSetValueWithPath(Mutable, 0, @"photoshop:DateCreated", MutableCopy);
    CGImageMetadataSetValueWithPath(Mutable, 0, @"xmp:CreateDate", MutableCopy);
    CGImageMetadataSetValueWithPath(Mutable, 0, @"xmp:ModifyDate", MutableCopy);
    CFRelease(MutableCopy);
    goto LABEL_29;
  }

  StringWithDate = 0;
LABEL_28:
  CGImageMetadataCreateAndLogUTF8Error("createMetadataWithDateTime", 278, 2, "Could not parse kCGImageDestinationDateTime string - must be a valid EXIF DateTime or ISO8601 string", a3);
LABEL_29:
  if (StringWithDate)
  {
    CFRelease(StringWithDate);
  }

LABEL_31:
  if (v7)
  {
    CFRelease(v7);
  }

  IIODictionary::~IIODictionary(v19);
  return Mutable;
}

void sub_1860CF514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGMutableImageMetadataRef IIOMetadataUpdater::createMetadataWithMetadata(IIOImageSource **this, const CGImageMetadata *cf, __CFError **a3)
{
  if (cf && (*(this + 34) & 1) != 0)
  {
    memset(v9, 0, sizeof(v9));
    IIODictionary::IIODictionary(v9);
    v5 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v9);
    MutableCopy = CGImageMetadataCreateMutableCopy(v5);
    if (MutableCopy)
    {
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      MutableCopy = CGImageMetadataCreateMutable();
      if (!v5)
      {
LABEL_12:
        if (MutableCopy)
        {
          memset(v8, 0, sizeof(v8));
          IIODictionary::IIODictionary(v8);
          IIODictionary::setObjectForKey(v8, *MEMORY[0x1E695E4D0], @"kCGImageMetadataMergeOverwrite");
          CGImageMetadataMerge(MutableCopy, cf, v8);
          if (*(this + 37) == 1)
          {
            CGImageMetadataRemoveGPS(MutableCopy);
          }

          IIODictionary::~IIODictionary(v8);
        }

        IIODictionary::~IIODictionary(v9);
        return MutableCopy;
      }
    }

    CFRelease(v5);
    goto LABEL_12;
  }

  if (!cf)
  {
    return 0;
  }

  if (*(this + 37) == 1)
  {
    MutableCopy = CGImageMetadataCreateMutableCopy(cf);
    CGImageMetadataRemoveGPS(MutableCopy);
    return MutableCopy;
  }

  return CFRetain(cf);
}

void sub_1860CF684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOMetadataUpdater::isValid(IIOMetadataUpdater *this, __CFError **a2)
{
  if (*(this + 32) != 1)
  {
    return 1;
  }

  Type = IIOImageSource::getType(*(this + 1));
  if (*(this + 33) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(*(this + 3), @"kCGImageDestinationMetadata");
  }

  else
  {
    ObjectForKey = 0;
  }

  v7 = *(this + 39) == 1 && IIODictionary::getUint32ForKey(*(this + 3), @"kCGImageDestinationOrientation") - 1 < 8;
  if (*(this + 38) == 1)
  {
    v8 = IIODictionary::getObjectForKey(*(this + 3), @"kCGImageDestinationDateTime");
  }

  else
  {
    v8 = 0;
  }

  if (*(this + 40) == 1)
  {
    v9 = IIODictionary::getObjectForKey(*(this + 3), @"kCGImageDestinationICCProfile");
  }

  else
  {
    v9 = 0;
  }

  if ((*(this + 33) & 1) == 0)
  {
    if ((*(this + 39) & 1) == 0 && (*(this + 38) & 1) == 0 && (*(this + 40) & 1) == 0 && (*(this + 37) & 1) == 0 && (*(this + 36) & 1) == 0)
    {
      v10 = "One of kCGImageDestinationMetadata, kCGImageDestinationOrientation, kCGImageDestinationDateTime, kCGImageMetadataShouldExcludeXMP, or kCGImageMetadataShouldExcludeGPS is required.";
      v11 = 359;
      goto LABEL_51;
    }

    if (*(this + 34) == 1 && (*(this + 38) & 1) == 0 && (*(this + 39) & 1) == 0)
    {
      v10 = "kCGImageDestinationMetadata is required if kCGImageDestinationMergeMetadata is true";
      v11 = 374;
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  if (!*(this + 39))
  {
    if (*(this + 38) == 1)
    {
      v10 = "kCGImageDestinationMetadata cannot be used with kCGImageDestinationDateTime";
      v11 = 369;
      goto LABEL_35;
    }

    if (ObjectForKey)
    {
      v12 = CFGetTypeID(ObjectForKey);
      if (v12 != CGImageMetadataGetTypeID())
      {
        v10 = "Invalid type - kCGImageDestinationMetadata value must be a CGImageMetadataRef";
        v11 = 379;
        goto LABEL_51;
      }
    }

LABEL_31:
    if (*(this + 37) == 1)
    {
      if ((*(this + 38) & 1) != 0 || *(this + 39) == 1)
      {
        v10 = "kCGImageDestinationExcludeGPS cannot be used with kCGImageDestinationDateTime or kCGImageDestinationOrientation";
        v11 = 384;
        goto LABEL_35;
      }
    }

    else if (*(this + 38))
    {
      if (v8)
      {
        v14 = CFGetTypeID(v8);
        if (v14 != CFStringGetTypeID())
        {
          v15 = CFGetTypeID(v8);
          if (v15 != CFDateGetTypeID())
          {
            v10 = "Invalid type - kCGImageDestinationDateTime value must be a CFStringRef or CFDateRef";
            v11 = 389;
            goto LABEL_51;
          }
        }
      }
    }

    if (v7 || (*(this + 39) & 1) == 0)
    {
      if (*(this + 40) != 1)
      {
        return 1;
      }

      v16 = CFGetTypeID(v9);
      if (v16 == CFDataGetTypeID())
      {
        if ((*(this + 40) & 1) != 0 && !CFEqual(Type, @"public.jpeg"))
        {
          v10 = "Setting ICC profile is only supported for JPEG.";
          v11 = 404;
          v13 = 1;
          goto LABEL_52;
        }

        return 1;
      }

      v10 = "Invalid value for kCGImageDestinationICCProfile, must be a CFData";
      v11 = 399;
    }

    else
    {
      v10 = "Invalid value for kCGImageDestinationOrientation, must be a CFNumber between 1 and 8 inclusive.";
      v11 = 394;
    }

LABEL_51:
    v13 = 2;
    goto LABEL_52;
  }

  v10 = "kCGImageDestinationMetadata cannot be used with kCGImageDestinationOrientation";
  v11 = 364;
LABEL_35:
  v13 = 3;
LABEL_52:
  CGImageMetadataCreateAndLogUTF8Error("CGImageDestinationCopyImageSource", v11, v13, v10, a2);
  return 0;
}

uint64_t IIOMetadataUpdater::updateDestination(IIOImageSource **this, __CFError **a2)
{
  if ((IIOMetadataUpdater::isValid(this, a2) & 1) == 0)
  {
    IIOMetadataUpdater::updateDestination();
    return 0;
  }

  if (this[4])
  {
    memset(v16, 0, sizeof(v16));
    IIODictionary::IIODictionary(v16);
    memset(v15, 0, sizeof(v15));
    IIODictionary::IIODictionary(v15, *(this[3] + 1), 1);
    ObjectForKey = IIODictionary::getObjectForKey(v15, @"kCGImageDestinationMetadata");
    if (ObjectForKey)
    {
      v5 = CFRetain(ObjectForKey);
    }

    else
    {
      v5 = 0;
    }

    IIODictionary::removeObjectForKey(v15, @"kCGImageDestinationMetadata");
    if (*(this + 34) == 1)
    {
      v7 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v16);
      v8 = IIOImageSource::copyPropertiesAtIndex(this[1], 0, v16);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    Mutable = CGImageMetadataCreateMutable();
    CGImageMetadataMerge(Mutable, v7, v16);
    IIODictionary::setObjectForKey(v16, *MEMORY[0x1E695E4D0], @"kCGImageMetadataMergeOverwrite");
    CGImageMetadataMerge(Mutable, v5, v16);
    if (*(this + 37) == 1)
    {
      CGImageMetadataRemoveGPS(Mutable);
    }

    Type = IIOImageSource::getType(this[1]);
    if (CFStringCompare(Type, @"public.jpeg", 0))
    {
      if (CFStringCompare(Type, @"public.heic", 0))
      {
        if (CFStringCompare(Type, @"public.png", 0))
        {
          if (CFStringCompare(Type, @"com.adobe.photoshop-image", 0))
          {
            if (CFStringCompare(Type, @"public.tiff", 0))
            {
              v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"image type '%@' is not supported for lossless metadata modification at this time.\n", Type);
              if (v11)
              {
                CGImageMetadataCreateAndLogError("updateDestination", 1, v11, a2);
                CFRelease(v11);
              }

              if ((gIIODebugFlags & 0x800000000000) != 0)
              {
                ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "updateDestination", 488, "*** ERROR: image type not supported\n");
              }

              goto LABEL_34;
            }

            v12 = IIOMetadataUpdater::modifyTIFF(this, Mutable, a2);
            if (!(((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1))
            {
              v13 = "*** ERROR: modifyTIFF failed\n";
              v14 = 477;
              goto LABEL_33;
            }

LABEL_35:
            IIODictionary::~IIODictionary(v15);
            IIODictionary::~IIODictionary(v16);
            if (v5)
            {
              CFRelease(v5);
            }

            if (v7)
            {
              CFRelease(v7);
            }

            if (v8)
            {
              CFRelease(v8);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            return v12;
          }

          v12 = IIOMetadataUpdater::modifyXMPOnlyFile(this, a2, Mutable, 1347634208);
          if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
          {
            goto LABEL_35;
          }

          v13 = "*** ERROR: modifyPSD failed\n";
          v14 = 471;
        }

        else
        {
          v12 = IIOMetadataUpdater::modifyXMPOnlyFile(this, a2, Mutable, 1347307296);
          if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
          {
            goto LABEL_35;
          }

          v13 = "*** ERROR: modifyPNG failed\n";
          v14 = 465;
        }
      }

      else
      {
        v12 = IIOMetadataUpdater::modifyHEIC(this, Mutable, a2);
        if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
        {
          goto LABEL_35;
        }

        v13 = "*** ERROR: modifyHEIC failed\n";
        v14 = 459;
      }
    }

    else
    {
      v12 = IIOMetadataUpdater::modifyJPEG(this, Mutable, a2);
      if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
      {
        goto LABEL_35;
      }

      v13 = "*** ERROR: modifyJPEG failed\n";
      v14 = 453;
    }

LABEL_33:
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "updateDestination", v14, v13);
LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  return IIOMetadataUpdater::copySourceToDestination(this);
}

void sub_1860CFE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOMetadataUpdater::modifyJPEG(IIOImageSource **this, CGImageMetadata *a2, __CFError **a3)
{
  v4 = IIOImageSource::imageRead(this[1]);
  v5 = IIOImageRead::copyData(v4);
  if (v5)
  {
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5);
    CFRelease(v5);
    if (MutableCopy)
    {
      if (IIODictionary::getCount(this[3]) != 1 || !IIODictionary::containsKey(this[3], @"kCGImageDestinationOrientation") || (Uint32ForKey = IIODictionary::getUint32ForKey(this[3], @"kCGImageDestinationOrientation"), !IIOMetadataUpdater::fastUpdateExifOrientationJPEG(Uint32ForKey, MutableCopy, Uint32ForKey)))
      {
LABEL_8:
        operator new();
      }

      v8 = IIOImageSource::count(this[2]);
      BytePtr = CFDataGetBytePtr(MutableCopy);
      Length = CFDataGetLength(MutableCopy);
      v11 = IIOImageWriteSession::putBytes(v8, BytePtr, Length);
      if (v11 == CFDataGetLength(MutableCopy))
      {
        v12 = IIOImageWriteSession::finalize(v8, 0);
        v5 = 1;
        if (v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v5 = 1;
      }

      CFRelease(MutableCopy);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}