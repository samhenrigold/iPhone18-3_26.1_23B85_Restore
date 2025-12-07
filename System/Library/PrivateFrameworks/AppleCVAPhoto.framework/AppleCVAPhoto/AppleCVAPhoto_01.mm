void *sub_1DED5B9F4(uint64_t a1)
{
  v2 = sub_1DED5B36C();
  result = dlsym(v2, "PTDisparityInNormalizedRectFromPixelBuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ECDE15B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1DED5BA44(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v10 = off_1ECDE15B8;
  v22 = off_1ECDE15B8;
  if (!off_1ECDE15B8)
  {
    v11 = sub_1DED5B36C();
    v20[3] = dlsym(v11, "PTDisparityInNormalizedRectFromPixelBuffer");
    off_1ECDE15B8 = v20[3];
    v10 = v20[3];
  }

  v18 = v10;
  _Block_object_dispose(&v19, 8);
  if (v18)
  {
    v12.n128_f64[0] = a2;
    v13.n128_f64[0] = a3;
    v14.n128_f64[0] = a4;
    v15.n128_f64[0] = a5;

    v18(100, a1, v12, v13, v14, v15);
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"float soft_PTDisparityInNormalizedRectFromPixelBuffer(PTCinematographyDetectionType, CGRect, CVPixelBufferRef)"}];
    [v16 handleFailureInFunction:v17 file:@"PortraitSoftLinking.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1DED5BBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1DED5BBE8(uint64_t a1)
{
  v2 = sub_1DED5B36C();
  result = dlsym(v2, "PTDisparityInNormalizedRectFromPixelBufferWithPrior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ECDE0FB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1DED5BC38(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v12 = off_1ECDE0FB0;
  v24 = off_1ECDE0FB0;
  if (!off_1ECDE0FB0)
  {
    v13 = sub_1DED5B36C();
    v22[3] = dlsym(v13, "PTDisparityInNormalizedRectFromPixelBufferWithPrior");
    off_1ECDE0FB0 = v22[3];
    v12 = v22[3];
  }

  v20 = v12;
  _Block_object_dispose(&v21, 8);
  if (v20)
  {
    v14.n128_f64[0] = a3;
    v15.n128_f64[0] = a4;
    v16.n128_f64[0] = a5;
    v17.n128_f64[0] = a6;

    v20(100, a1, a2, v14, v15, v16, v17);
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"float soft_PTDisparityInNormalizedRectFromPixelBufferWithPrior(PTCinematographyDetectionType, CGRect, CVPixelBufferRef, const float *)"}];
    [v18 handleFailureInFunction:v19 file:@"PortraitSoftLinking.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1DED5BDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DED5BDEC(__CVBuffer **a1, CVPixelBufferRef pixelBuffer, int a3, __CVBuffer *a4, float a5, float a6)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  CVPixelBufferLockBaseAddress(*a1, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v15 = CVPixelBufferGetBaseAddress(a4);
  CVPixelBufferGetHeight(a4);
  CVPixelBufferGetWidth(a4);
  v16 = CVPixelBufferGetBytesPerRow(a4);
  v17 = CVPixelBufferGetBaseAddress(*a1);
  CVPixelBufferGetHeight(*a1);
  CVPixelBufferGetWidth(*a1);
  v18 = CVPixelBufferGetBytesPerRow(*a1);
  if (Height && Width)
  {
    v19 = 0;
    do
    {
      v20 = BaseAddress;
      v21 = v17;
      v22 = v15;
      v23 = Width;
      do
      {
        v25 = *v20++;
        v26 = v25;
        if (a3 <= v25)
        {
          *v21 = 2048.0;
          v24 = 2048.0;
        }

        else
        {
          v24 = (v26 / a5) + a6;
          *v21 = v24;
          if (v24 < 2048.0)
          {
            v24 = fmaxf(*(a1 + 12) + (v24 / (*(a1 + 11) * *(a1 + 10))), 0.0);
          }
        }

        *v22++ = v24;
        ++v21;
        --v23;
      }

      while (v23);
      ++v19;
      v15 = (v15 + v16);
      v17 = (v17 + v18);
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    while (v19 != Height);
  }

  CVPixelBufferUnlockBaseAddress(*a1, 0);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  result = sub_1DED5C3B4(*a1, a1[1], *(a1 + 13), *(a1 + 14), *(a1 + 15), *(a1 + 16));
  if (*(a1 + 13) > 0.0 || *(a1 + 14) > 0.0 || *(a1 + 15) > 0.0 || *(a1 + 16) > 0.0)
  {
    v28 = a1[1];
    CVPixelBufferLockBaseAddress(v28, 0);
    CVPixelBufferLockBaseAddress(a4, 0);
    v29 = CVPixelBufferGetBaseAddress(v28);
    v30 = CVPixelBufferGetHeight(v28);
    v31 = CVPixelBufferGetWidth(v28);
    v32 = CVPixelBufferGetBytesPerRow(v28);
    v33 = CVPixelBufferGetBaseAddress(a4);
    CVPixelBufferGetHeight(a4);
    CVPixelBufferGetWidth(a4);
    v34 = CVPixelBufferGetBytesPerRow(a4);
    if (!v30 || !v31)
    {
LABEL_82:
      CVPixelBufferUnlockBaseAddress(a4, 0);

      return CVPixelBufferUnlockBaseAddress(v28, 0);
    }

    if (v31 <= 3)
    {
      v35 = v33 + 8;
      v36 = v29 + 2;
      do
      {
        v37 = *(v36 - 2);
        if (v37 >= 100000.0)
        {
          v37 = 0.0;
        }

        *(v36 - 2) = v37;
        if (v37 > 0.0)
        {
          *(v35 - 2) = 1157627904;
        }

        if (v31 != 1)
        {
          v38 = *(v36 - 1);
          if (v38 >= 100000.0)
          {
            v38 = 0.0;
          }

          *(v36 - 1) = v38;
          if (v38 > 0.0)
          {
            *(v35 - 1) = 1157627904;
          }

          if (v31 != 2)
          {
            v39 = *v36;
            if (*v36 >= 100000.0)
            {
              v39 = 0.0;
            }

            *v36 = v39;
            if (v39 > 0.0)
            {
              *v35 = 1157627904;
            }
          }
        }

        v35 = (v35 + v34);
        v36 = (v36 + v32);
        --v30;
      }

      while (v30);
      goto LABEL_82;
    }

    v40 = v33 >= &v29[v31] + v32 * (v30 - 1) || v29 >= &v33[4 * v31 + v34 * (v30 - 1)];
    if (!v40 || ((v32 | v34) & 0x8000000000000000) != 0)
    {
      for (i = 0; i != v30; ++i)
      {
        v50 = v29;
        v51 = v31;
        v52 = v33;
        do
        {
          v53 = *v50;
          if (*v50 >= 100000.0)
          {
            v53 = 0.0;
          }

          *v50 = v53;
          if (v53 > 0.0)
          {
            *v52 = 1157627904;
          }

          v52 += 4;
          ++v50;
          --v51;
        }

        while (v51);
        v33 += v34;
        v29 = (v29 + v32);
      }

      goto LABEL_82;
    }

    if (v31 == (v31 & 0xFFFFFFFFFFFFFFFCLL))
    {
      v41 = 0;
      v42 = v33 + 8;
      v43 = vdupq_n_s32(0x47C35000u);
      while (1)
      {
        v44 = v42;
        v45 = v31;
        v46 = v29;
        do
        {
          v47 = vbicq_s8(*v46, vcgeq_f32(*v46, v43));
          *v46 = v47;
          v48 = vmovn_s32(vcgtzq_f32(v47));
          if (v48.i8[0])
          {
            *(v44 - 2) = 1157627904;
            if ((v48.i8[2] & 1) == 0)
            {
LABEL_47:
              if (v48.i8[4])
              {
                goto LABEL_52;
              }

              goto LABEL_48;
            }
          }

          else if ((v48.i8[2] & 1) == 0)
          {
            goto LABEL_47;
          }

          *(v44 - 1) = 1157627904;
          if (v48.i8[4])
          {
LABEL_52:
            *v44 = 1157627904;
            if ((v48.i8[6] & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_53;
          }

LABEL_48:
          if ((v48.i8[6] & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_53:
          v44[1] = 1157627904;
LABEL_44:
          ++v46;
          v44 += 4;
          v45 -= 4;
        }

        while (v45);
        ++v41;
        v29 = (v29 + v32);
        v42 = (v42 + v34);
        if (v41 == v30)
        {
          goto LABEL_82;
        }
      }
    }

    v54 = 0;
    v55 = v33 + 8;
    v56 = vdupq_n_s32(0x47C35000u);
LABEL_65:
    v57 = v55;
    v58 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v59 = v29;
    while (1)
    {
      v60 = vbicq_s8(*v59, vcgeq_f32(*v59, v56));
      *v59 = v60;
      v61 = vmovn_s32(vcgtzq_f32(v60));
      if (v61.i8[0])
      {
        *(v57 - 2) = 1157627904;
        if ((v61.i8[2] & 1) == 0)
        {
LABEL_69:
          if ((v61.i8[4] & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_74;
        }
      }

      else if ((v61.i8[2] & 1) == 0)
      {
        goto LABEL_69;
      }

      *(v57 - 1) = 1157627904;
      if ((v61.i8[4] & 1) == 0)
      {
LABEL_70:
        if (v61.i8[6])
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

LABEL_74:
      *v57 = 1157627904;
      if (v61.i8[6])
      {
LABEL_75:
        v57[1] = 1157627904;
      }

LABEL_66:
      ++v59;
      v57 += 4;
      v58 -= 4;
      if (!v58)
      {
        v62 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v63 = v29[v62];
          if (v63 >= 100000.0)
          {
            v63 = 0.0;
          }

          v29[v62] = v63;
          if (v63 > 0.0)
          {
            *&v33[4 * v62] = 1157627904;
          }

          ++v62;
        }

        while (v31 != v62);
        ++v54;
        v29 = (v29 + v32);
        v55 = (v55 + v34);
        v33 += v34;
        if (v54 == v30)
        {
          goto LABEL_82;
        }

        goto LABEL_65;
      }
    }
  }

  return result;
}

uint64_t sub_1DED5C3B4(__CVBuffer *a1, __CVBuffer *a2, float a3, float a4, float a5, float a6)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a2);
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a2);
  pixelBuffer = a2;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  v37 = CVPixelBufferGetBaseAddress(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v36 = a1;
  v15 = CVPixelBufferGetBytesPerRow(a1);
  if (Height)
  {
    v16 = 0;
    v18 = a4 <= 0.0 || Width == 0;
    v20 = a3 <= 0.0 || Width < 1;
    v21 = v37;
    v22 = BaseAddress;
    while (1)
    {
      if (!Width)
      {
        goto LABEL_15;
      }

      bzero(BaseAddress + BytesPerRow * v16, 4 * Width);
      if (!v18)
      {
        break;
      }

LABEL_18:
      if (!v20)
      {
        v23 = 100000.0;
        v24 = Width - 1;
        do
        {
          v23 = v23 + a3;
          v27 = v21[v24];
          if (v27 >= 2048.0)
          {
            v25 = 100000.0;
          }

          else
          {
            if (v23 >= v27)
            {
              v23 = v21[v24];
              goto LABEL_22;
            }

            v25 = v27 - v23;
          }

          v22[v24] = v25;
LABEL_22:
          v26 = v24-- + 1;
        }

        while (v26 > 1);
      }

LABEL_15:
      ++v16;
      v22 = (v22 + BytesPerRow);
      v21 = (v21 + v15);
      if (v16 == Height)
      {
        goto LABEL_35;
      }
    }

    v28 = 100000.0;
    v29 = v21;
    v30 = v22;
    v31 = Width;
    while (1)
    {
      v28 = v28 + a4;
      v33 = *v29;
      if (*v29 >= 2048.0)
      {
        v32 = 100000.0;
      }

      else
      {
        if (v28 >= v33)
        {
          v28 = *v29;
          goto LABEL_30;
        }

        v32 = v33 - v28;
      }

      *v30 = v32;
LABEL_30:
      ++v30;
      ++v29;
      if (!--v31)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_35:
  if (a5 > 0.0 && Width)
  {
    if (!(Width >> 62))
    {
      operator new();
    }

    goto LABEL_46;
  }

  if (a6 > 0.0 && Width)
  {
    if (!(Width >> 62))
    {
      operator new();
    }

LABEL_46:
    sub_1DED35334();
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

  return CVPixelBufferUnlockBaseAddress(v36, 1uLL);
}

uint64_t sub_1DED5C7CC(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3, __CVBuffer *a4, float a5, float a6)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  CVPixelBufferLockBaseAddress(*a1, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v15 = CVPixelBufferGetBaseAddress(a4);
  CVPixelBufferGetHeight(a4);
  CVPixelBufferGetWidth(a4);
  v16 = CVPixelBufferGetBytesPerRow(a4);
  v17 = CVPixelBufferGetBaseAddress(*a1);
  CVPixelBufferGetHeight(*a1);
  CVPixelBufferGetWidth(*a1);
  v18 = CVPixelBufferGetBytesPerRow(*a1);
  if (Height && Width)
  {
    v19 = 0;
    do
    {
      v20 = BaseAddress;
      v21 = v17;
      v22 = v15;
      v23 = Width;
      do
      {
        v29 = *v20++;
        v30 = v29;
        if (a3 <= v29)
        {
          *v21 = 2048.0;
          _S3 = 2048.0;
LABEL_7:
          __asm { FCVT            H3, S3 }

          goto LABEL_8;
        }

        _S3 = (v30 / a5) + a6;
        *v21 = _S3;
        if (_S3 >= 2048.0)
        {
          goto LABEL_7;
        }

        _S3 = *(a1 + 48) + (_S3 / (*(a1 + 44) * *(a1 + 40)));
        __asm { FCVT            H3, S3 }

        _H3 = fmaxl(*&_S3, COERCE_SHORT_FLOAT(0));
LABEL_8:
        *v22++ = _H3;
        ++v21;
        --v23;
      }

      while (v23);
      ++v19;
      v15 = (v15 + v16);
      v17 = (v17 + v18);
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    while (v19 != Height);
  }

  CVPixelBufferUnlockBaseAddress(*a1, 0);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  result = sub_1DED5C3B4(*a1, *(a1 + 8), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (*(a1 + 52) > 0.0 || *(a1 + 56) > 0.0 || *(a1 + 60) > 0.0 || *(a1 + 64) > 0.0)
  {
    v33 = *(a1 + 8);
    CVPixelBufferLockBaseAddress(v33, 0);
    CVPixelBufferLockBaseAddress(a4, 0);
    v34 = CVPixelBufferGetBaseAddress(v33);
    v35 = CVPixelBufferGetHeight(v33);
    v36 = CVPixelBufferGetWidth(v33);
    v37 = CVPixelBufferGetBytesPerRow(v33);
    v38 = CVPixelBufferGetBaseAddress(a4);
    CVPixelBufferGetHeight(a4);
    CVPixelBufferGetWidth(a4);
    v39 = CVPixelBufferGetBytesPerRow(a4);
    if (!v35 || !v36)
    {
LABEL_83:
      CVPixelBufferUnlockBaseAddress(a4, 0);

      return CVPixelBufferUnlockBaseAddress(v33, 0);
    }

    if (v36 <= 3)
    {
      v40 = v38 + 4;
      v41 = v34 + 2;
      do
      {
        v42 = *(v41 - 2);
        if (v42 >= 100000.0)
        {
          v42 = 0.0;
        }

        *(v41 - 2) = v42;
        if (v42 > 0.0)
        {
          *(v40 - 2) = 26624;
        }

        if (v36 != 1)
        {
          v43 = *(v41 - 1);
          if (v43 >= 100000.0)
          {
            v43 = 0.0;
          }

          *(v41 - 1) = v43;
          if (v43 > 0.0)
          {
            *(v40 - 1) = 26624;
          }

          if (v36 != 2)
          {
            v44 = *v41;
            if (*v41 >= 100000.0)
            {
              v44 = 0.0;
            }

            *v41 = v44;
            if (v44 > 0.0)
            {
              *v40 = 26624;
            }
          }
        }

        v40 = (v40 + v39);
        v41 = (v41 + v37);
        --v35;
      }

      while (v35);
      goto LABEL_83;
    }

    _CF = v38 >= &v34[v36] + v37 * (v35 - 1) || v34 >= &v38[2 * v36 + v39 * (v35 - 1)];
    if (!_CF || ((v37 | v39) & 0x8000000000000000) != 0)
    {
      for (i = 0; i != v35; ++i)
      {
        v55 = v34;
        v56 = v36;
        v57 = v38;
        do
        {
          v58 = *v55;
          if (*v55 >= 100000.0)
          {
            v58 = 0.0;
          }

          *v55 = v58;
          if (v58 > 0.0)
          {
            *v57 = 26624;
          }

          v57 += 2;
          ++v55;
          --v56;
        }

        while (v56);
        v38 += v39;
        v34 = (v34 + v37);
      }

      goto LABEL_83;
    }

    if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
    {
      v46 = 0;
      v47 = v38 + 4;
      v48 = vdupq_n_s32(0x47C35000u);
      while (1)
      {
        v49 = v47;
        v50 = v36;
        v51 = v34;
        do
        {
          v52 = vbicq_s8(*v51, vcgeq_f32(*v51, v48));
          *v51 = v52;
          v53 = vmovn_s32(vcgtzq_f32(v52));
          if (v53.i8[0])
          {
            *(v49 - 2) = 26624;
            if ((v53.i8[2] & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if ((v53.i8[2] & 1) == 0)
          {
LABEL_48:
            if ((v53.i8[4] & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_49;
          }

          *(v49 - 1) = 26624;
          if ((v53.i8[4] & 1) == 0)
          {
LABEL_53:
            if ((v53.i8[6] & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_54;
          }

LABEL_49:
          *v49 = 26624;
          if ((v53.i8[6] & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_54:
          v49[1] = 26624;
LABEL_45:
          ++v51;
          v49 += 4;
          v50 -= 4;
        }

        while (v50);
        ++v46;
        v34 = (v34 + v37);
        v47 = (v47 + v39);
        if (v46 == v35)
        {
          goto LABEL_83;
        }
      }
    }

    v59 = 0;
    v60 = v38 + 4;
    v61 = vdupq_n_s32(0x47C35000u);
LABEL_66:
    v62 = v60;
    v63 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = v34;
    while (1)
    {
      v65 = vbicq_s8(*v64, vcgeq_f32(*v64, v61));
      *v64 = v65;
      v66 = vmovn_s32(vcgtzq_f32(v65));
      if (v66.i8[0])
      {
        *(v62 - 2) = 26624;
        if ((v66.i8[2] & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else if ((v66.i8[2] & 1) == 0)
      {
LABEL_70:
        if (v66.i8[4])
        {
          goto LABEL_71;
        }

        goto LABEL_75;
      }

      *(v62 - 1) = 26624;
      if (v66.i8[4])
      {
LABEL_71:
        *v62 = 26624;
        if (v66.i8[6])
        {
          goto LABEL_76;
        }

        goto LABEL_67;
      }

LABEL_75:
      if (v66.i8[6])
      {
LABEL_76:
        v62[1] = 26624;
      }

LABEL_67:
      ++v64;
      v62 += 4;
      v63 -= 4;
      if (!v63)
      {
        v67 = v36 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v68 = v34[v67];
          if (v68 >= 100000.0)
          {
            v68 = 0.0;
          }

          v34[v67] = v68;
          if (v68 > 0.0)
          {
            *&v38[2 * v67] = 26624;
          }

          ++v67;
        }

        while (v36 != v67);
        ++v59;
        v34 = (v34 + v37);
        v60 = (v60 + v39);
        v38 += v39;
        if (v59 == v35)
        {
          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }
  }

  return result;
}

void sub_1DED5CDFC()
{
  v4[47] = *MEMORY[0x1E69E9840];
  v3[0] = @"colorWidth";
  v3[1] = @"colorHeight";
  v4[0] = &unk_1F5A09688;
  v4[1] = &unk_1F5A09688;
  v3[2] = @"shiftWidth";
  v3[3] = @"shiftHeight";
  v4[2] = &unk_1F5A09688;
  v4[3] = &unk_1F5A09688;
  v3[4] = @"alphaWidth";
  v3[5] = @"alphaHeight";
  v4[4] = &unk_1F5A09688;
  v4[5] = &unk_1F5A09688;
  v3[6] = @"kernelSize";
  v3[7] = @"guidedFilterUnconfidentWeight";
  v4[6] = &unk_1F5A096A0;
  v4[7] = &unk_1F5A09E40;
  v3[8] = @"guidedFilterMinDistToDeweight";
  v3[9] = @"referenceShift";
  v4[8] = &unk_1F5A096B8;
  v4[9] = &unk_1F5A096D0;
  v3[10] = @"alphaMaxLaplacian";
  v3[11] = @"alphaContrastExponent";
  v4[10] = &unk_1F5A09E50;
  v4[11] = &unk_1F5A096E8;
  v3[12] = @"shiftFilterColorStd";
  v3[13] = @"shiftFilterUpdateRate";
  v4[12] = &unk_1F5A09700;
  v4[13] = &unk_1F5A09E60;
  v3[14] = @"maxShiftFillingInconsistency";
  v3[15] = @"maxShiftFillingDistFromFg";
  v4[14] = &unk_1F5A09718;
  v4[15] = &unk_1F5A096B8;
  v3[16] = @"maxDistToPushShiftEdgesFwd";
  v3[17] = @"maxDistToPushShiftEdgesRev";
  v4[16] = &unk_1F5A09730;
  v4[17] = &unk_1F5A09730;
  v3[18] = @"shiftPushingBgToFgShiftDifference";
  v3[19] = @"kCVAVideoMattingProperty_focusMachineVariationThreshold";
  v4[18] = &unk_1F5A09748;
  v4[19] = &unk_1F5A09760;
  v3[20] = @"kCVAVideoMattingProperty_focusMachineMinFastFrames";
  v3[21] = @"kCVAVideoMattingDebug_focusMachineState";
  v4[20] = &unk_1F5A09760;
  v4[21] = MEMORY[0x1E695E118];
  v3[22] = @"kCVAVideoMattingProperty_focusThresholdHardness";
  v3[23] = @"width";
  v4[22] = &unk_1F5A09E70;
  v4[23] = &unk_1F5A09688;
  v3[24] = @"height";
  v3[25] = @"kCVAFusionProperty_outputRotation";
  v4[24] = &unk_1F5A09688;
  v4[25] = &unk_1F5A09730;
  v3[26] = @"bgShiftUpdateRate";
  v3[27] = @"kCVAFusionProperty_bgShiftStatsWindowSize";
  v4[26] = &unk_1F5A09E80;
  v4[27] = &unk_1F5A09760;
  v3[28] = @"kCVAFusionProperty_invalidShiftRatioStatsWindowSize";
  v3[29] = @"cntDeltaShift";
  v4[28] = &unk_1F5A09760;
  v4[29] = &unk_1F5A09778;
  v3[30] = @"minDeltaShift";
  v3[31] = @"maxDeltaShift";
  v4[30] = &unk_1F5A09700;
  v4[31] = &unk_1F5A09790;
  v3[32] = @"dsLowThld";
  v3[33] = @"dsLowScale";
  v4[32] = &unk_1F5A097A8;
  v4[33] = &unk_1F5A09E90;
  v3[34] = @"dsHighThld";
  v3[35] = @"dsHighScale";
  v4[34] = &unk_1F5A097C0;
  v4[35] = &unk_1F5A09EA0;
  v3[36] = @"kCVAFusionProperty_foregroundPercentile";
  v3[37] = @"kCVAFusionProperty_closeDisparityPercentile";
  v4[36] = &unk_1F5A09E60;
  v4[37] = &unk_1F5A09EB0;
  v3[38] = @"kCVAFusionProperty_deltaDepth";
  v3[39] = @"kCVAFusionProperty_backgroundSeparationLikelihoodTemporalUpdateRate";
  v4[38] = &unk_1F5A09E60;
  v4[39] = &unk_1F5A09E80;
  v3[40] = @"kCVAFusionProperty_backgroundSeparationLikelihoodUpdateRate";
  v3[41] = @"kCVAFusionProperty_backgroundSeparationLikelihoodUpdateThreshold";
  v4[40] = &unk_1F5A09EA0;
  v4[41] = &unk_1F5A09E80;
  v3[42] = @"kCVAFusionProperty_invalidShiftRatioUpdateRate";
  v3[43] = @"nearSubjectDisparityScalingFactor";
  v4[42] = &unk_1F5A09EC0;
  v4[43] = &unk_1F5A09E70;
  v3[44] = @"farSubjectDisparityScalingFactor";
  v3[45] = @"nearFocusDistanceRatioThreshold";
  v4[44] = &unk_1F5A09ED0;
  v4[45] = &unk_1F5A09EE0;
  v3[46] = @"farFocusDistanceRatioThreshold";
  v4[46] = &unk_1F5A09EF0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:47];
  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coremedia"];
  v2 = qword_1ECDE0FB8;
  qword_1ECDE0FB8 = v1;

  [qword_1ECDE0FB8 registerDefaults:v0];
}

uint64_t sub_1DED5D1F8(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
      if ([v7 compare:@"true" options:1] && objc_msgSend(v7, "compare:options:", @"yes", 1))
      {
        if ([v7 compare:@"false" options:1] && objc_msgSend(v7, "compare:options:", @"no", 1) && objc_msgSend(v7, "compare:options:", @"0", 1))
        {
          if ([v7 intValue])
          {
            a3 = [v7 intValue];
          }
        }

        else
        {
          a3 = 0;
        }
      }

      else
      {
        a3 = 1;
      }

      goto LABEL_18;
    }

    v8 = CFGetTypeID(v5);
    if (v8 == CFNumberGetTypeID())
    {
      v9 = [v5 intValue];
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 != CFBooleanGetTypeID())
      {
LABEL_18:
        CFRelease(v5);
        return a3;
      }

      v9 = [v5 BOOLValue];
    }

    a3 = v9;
    goto LABEL_18;
  }

  return a3;
}

CVPixelBufferRef *sub_1DED5D358(CVPixelBufferRef *a1)
{
  CVPixelBufferRelease(a1[17]);
  a1[17] = 0;
  CVPixelBufferRelease(a1[18]);
  a1[18] = 0;
  CVPixelBufferRelease(a1[19]);
  a1[19] = 0;
  CVPixelBufferRelease(a1[20]);
  a1[20] = 0;
  CVPixelBufferRelease(a1[21]);
  a1[21] = 0;
  CVPixelBufferRelease(a1[22]);
  a1[22] = 0;
  CVPixelBufferRelease(a1[23]);
  a1[23] = 0;
  CVPixelBufferRelease(a1[24]);
  a1[24] = 0;
  CVPixelBufferRelease(a1[25]);
  a1[25] = 0;
  CVPixelBufferRelease(a1[26]);
  a1[26] = 0;
  CVPixelBufferRelease(a1[27]);
  a1[27] = 0;
  CVPixelBufferRelease(a1[28]);
  a1[28] = 0;
  CVPixelBufferRelease(a1[29]);
  a1[29] = 0;
  return a1;
}

void sub_1DED5D418(float *a1, unsigned __int16 a2, unsigned __int16 a3, int a4, int a5, int a6, int a7, __int16 a8, float a9, float a10, __int16 a11, unsigned __int16 a12, unsigned __int16 a13, void *a14, __CVBuffer *a15, __CVBuffer *a16, _DWORD *a17)
{
  v696 = *MEMORY[0x1E69E9840];
  v591 = a14;
  *a1 = 1.7261e-31;
  *(a1 + 2) = a2;
  *(a1 + 3) = a3;
  *(a1 + 4) = a2 - a8;
  v26 = a1;
  *(a1 + 5) = a3 - a11;
  *(a1 + 6) = a4;
  *(a1 + 7) = a5;
  *(a1 + 8) = a6;
  *(a1 + 9) = a7;
  *(a1 + 10) = a12;
  *(a1 + 11) = a13;
  a1[10] = a9;
  v27 = ((a4 + a6 - 1) / a4);
  v28 = (a5 + a7 - 1) / a5;
  v677 = a1;
  if (__PAIR64__(*(a1 + 13), *(a1 + 12)) == __PAIR64__(v28, v27))
  {
    v29 = a15;
    v31 = *(a1 + 17);
    v30 = *(a1 + 18);
    v32 = *(a1 + 28);
    v33 = v591;
    CVPixelBufferLockBaseAddress(a15, 1uLL);
    CVPixelBufferLockBaseAddress(v31, 0);
    CVPixelBufferLockBaseAddress(v30, 0);
    CVPixelBufferLockBaseAddress(v32, 0);
    v619 = [v33 bytes];
    BaseAddress = CVPixelBufferGetBaseAddress(a15);
    Height = CVPixelBufferGetHeight(a15);
    Width = CVPixelBufferGetWidth(a15);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a15);
    v589 = Width;
    v34 = Height;
    v35 = CVPixelBufferGetBaseAddress(v31);
    v36 = CVPixelBufferGetHeight(v31);
    v596 = CVPixelBufferGetWidth(v31);
    v600 = CVPixelBufferGetBytesPerRow(v31);
    v37 = CVPixelBufferGetBaseAddress(v30);
    CVPixelBufferGetHeight(v30);
    CVPixelBufferGetWidth(v30);
    __dst = CVPixelBufferGetBytesPerRow(v30);
    v592 = CVPixelBufferGetBaseAddress(v32);
    CVPixelBufferGetHeight(v32);
    CVPixelBufferGetWidth(v32);
    v669 = CVPixelBufferGetBytesPerRow(v32);
    v587 = v32;
    *(v26 + 128) = 4286578687;
    *(v26 + 112) = xmmword_1DED740F0;
    v695 = 0;
    v693 = 0;
    v622 = (v26 + 44);
    v604 = (v26 + 124);
    if (CVPixelBufferGetPixelFormatType(a15) == 1278226488)
    {
      *buf = &unk_1F59F9DF0;
      *&buf[8] = &BaseAddress;
      *v685 = buf;
      sub_1DED609A4(buf, v694);
      if (*v685 == buf)
      {
        (*(**v685 + 32))(*v685);
      }

      else if (*v685)
      {
        (*(**v685 + 40))();
      }

      v44 = &unk_1F59F9E38;
    }

    else if (CVPixelBufferGetPixelFormatType(a15) == 1278226534)
    {
      *buf = &unk_1F59F9E80;
      *&buf[8] = &BaseAddress;
      *v685 = buf;
      sub_1DED609A4(buf, v694);
      if (*v685 == buf)
      {
        (*(**v685 + 32))(*v685);
      }

      else if (*v685)
      {
        (*(**v685 + 40))();
      }

      v44 = &unk_1F59F9EC8;
    }

    else
    {
      if (CVPixelBufferGetPixelFormatType(a15) != 1278226536)
      {
        v45 = 0;
        goto LABEL_206;
      }

      *buf = &unk_1F59F9F10;
      *&buf[8] = &BaseAddress;
      *v685 = buf;
      sub_1DED609A4(buf, v694);
      if (*v685 == buf)
      {
        (*(**v685 + 32))(*v685);
      }

      else if (*v685)
      {
        (*(**v685 + 40))();
      }

      v44 = &unk_1F59F9F58;
    }

    *buf = v44;
    *v685 = buf;
    sub_1DED60BE4(buf, v692);
    if (*v685 == buf)
    {
      (*(**v685 + 32))(*v685);
    }

    else if (*v685)
    {
      (*(**v685 + 40))();
    }

    v580 = v31;
    v583 = v30;
    v585 = v33;
    v48 = v34;
    v579 = v34;
    if (v36 < 1)
    {
      goto LABEL_204;
    }

    v49 = 0;
    v609 = 0uLL;
    v50 = 0;
    v605 = (v26 + 240);
    v51 = *(v26 + 10);
    v52 = v34 - 1;
    v33 = (v589 - 1);
    v614 = v35;
    v594 = v36 - 1;
    __src = (v36 & 0x7FFFFFFF);
    v612 = v37;
    do
    {
      if (v49 >= v594)
      {
        v53 = *(v26 + 18) + *(v26 + 10);
      }

      else
      {
        v53 = v51 + *(v26 + 14);
      }

      v54 = *(v26 + 48);
      *v46.i32 = v54;
      LOWORD(v47) = *(v26 + 22);
      v47 = LODWORD(v47);
      v55 = ((v53 + 0.5) * v54) / v47;
      if (v55 >= v54)
      {
        v56 = *(v26 + 48);
      }

      else
      {
        v56 = v55;
      }

      if (v596 >= 1)
      {
        v57 = 0;
        v55 = v51 + 0.5;
        *v46.i32 = (v55 * *v46.i32) / v47;
        v58 = *v46.i32 & ~(*v46.i32 >> 31);
        v640 = v58;
        __n = v35 + v600 * v49;
        v59 = &v37[__dst * v49];
        v60 = *(v26 + 8);
        v635 = v56 - v58;
        v61 = v50;
        v607 = &v592[v669 * v58];
        v624 = v59;
        v631 = v49;
        v627 = v53;
        v664 = v56;
        while (1)
        {
          v63 = v60;
          v64 = v619 + 8 * v61;
          v46.i16[0] = *v64;
          v46 = vmovl_s16(v46).u64[0];
          LOWORD(v47) = *v622;
          *(__n + 4 * v57) = v46.i32[0] / LODWORD(v47);
          v646 = v64[4];
          *(v59 + v57) = (v646 != 0) << 7;
          if (v57 >= v596 - 1)
          {
            v65 = *(v26 + 16) + *(v26 + 8);
          }

          else
          {
            v65 = v60 + *(v26 + 12);
          }

          v653 = v61;
          v657 = v57;
          v66 = v63 + 0.5;
          v67 = *(v26 + 46);
          v47 = v67;
          LOWORD(v55) = *(v26 + 20);
          v55 = LODWORD(v55);
          v68 = ((v66 * v67) / v55) & ~(((v66 * v67) / v55) >> 31);
          *v46.i32 = ((v65 + 0.5) * v67) / v55;
          if (*v46.i32 >= v67)
          {
            v69 = *(v26 + 46);
          }

          else
          {
            v69 = *v46.i32;
          }

          v649 = v65;
          v672 = v68;
          if (v56 <= v58)
          {
            goto LABEL_74;
          }

          v70 = v58;
          if (v69 <= v68)
          {
            break;
          }

          v71 = 0;
          v72 = 0;
          v73 = v640;
          v74 = &v607[v68];
          do
          {
            LOWORD(v47) = *(v26 + 48);
            v75 = ((v73 + 0.5) * v48) / LODWORD(v47);
            v76 = v75 & ~(v75 >> 31);
            if (v76 >= v52)
            {
              v76 = v52;
            }

            *buf = v76;
            if (!v695)
            {
              goto LABEL_485;
            }

            v26 = (*(*v695 + 48))(v695, buf);
            v77 = v74;
            v78 = v672;
            v79 = v677;
            do
            {
              LOWORD(v47) = *(v79 + 23);
              v80 = ((v78 + 0.5) * v589) / LODWORD(v47);
              v81 = v80 & ~(v80 >> 31);
              if (v81 >= v33)
              {
                v81 = v589 - 1;
              }

              *buf = v26;
              v682 = v81;
              if (!v693)
              {
                goto LABEL_485;
              }

              v82 = (*(*v693 + 48))(v693, buf, &v682);
              v79 = v677;
              if (v82 < *(v677 + 52))
              {
                ++v72;
              }

              v83 = (v82 >= *(v677 + 52)) & (v82 > *(v677 + 51));
              if (v82 >= *(v677 + 52) && v82 > *(v677 + 51))
              {
                v84 = 64;
              }

              else
              {
                v84 = 32;
              }

              *v77++ = v84;
              v71 += v83;
              ++v78;
            }

            while (v69 > v78);
            ++v73;
            LODWORD(v56) = v664;
            v74 += v669;
            v26 = v677;
            v52 = v34 - 1;
          }

          while (v73 != v664);
LABEL_75:
          v87 = ((v69 - v672) * v635);
          if (v71 == v87)
          {
            v62 = v653;
            v88 = v657;
            v59 = v624;
            *(v624 + v657) |= 0x40u;
            v37 = v612;
            v35 = v614;
            v49 = v631;
            v53 = v627;
            LODWORD(v58) = v640;
            if (v646)
            {
              v89 = *(__n + 4 * v657);
              v47 = *(v26 + 112);
              v55 = *(v26 + 116);
              if (v89 >= v47)
              {
                v89 = *(v26 + 112);
              }

              *(v26 + 112) = v89;
              v46.i32[0] = *(__n + 4 * v657);
              if (v55 >= *v46.i32)
              {
                *v46.i32 = v55;
              }

              *(v26 + 116) = v46.i32[0];
              ++*(&v609 + 1);
            }
          }

          else
          {
            v88 = v657;
            v59 = v624;
            v90 = *(v624 + v657);
            v37 = v612;
            v35 = v614;
            if (v72 == v87)
            {
              *(v624 + v657) = v90 | 0x20;
              v49 = v631;
              v53 = v627;
              LODWORD(v58) = v640;
              v62 = v653;
              v60 = v649;
              if (v646)
              {
                v91 = *(__n + 4 * v657);
                v47 = *(v26 + 124);
                v55 = *(v26 + 128);
                if (v91 >= v47)
                {
                  v91 = *(v26 + 124);
                }

                *(v26 + 124) = v91;
                v46.i32[0] = *(__n + 4 * v657);
                if (v55 >= *v46.i32)
                {
                  *v46.i32 = v55;
                }

                *(v26 + 128) = v46.i32[0];
                *&v609 = v609 + 1;
              }

              goto LABEL_45;
            }

            *(v624 + v657) = v90 | 0x10;
            v49 = v631;
            v53 = v627;
            LODWORD(v58) = v640;
            v62 = v653;
          }

          v60 = v649;
LABEL_45:
          v57 = (v88 + 1);
          v61 = v62 + 1;
          if (v57 == (v596 & 0x7FFFFFFF))
          {
            v50 = v61;
            goto LABEL_34;
          }
        }

        do
        {
          LOWORD(v47) = *(v26 + 48);
          v85 = ((v70 + 0.5) * v48) / LODWORD(v47);
          v86 = v85 & ~(v85 >> 31);
          if (v86 >= v52)
          {
            v86 = v52;
          }

          *buf = v86;
          if (!v695)
          {
            goto LABEL_485;
          }

          (*(*v695 + 48))(v695, buf);
          ++v70;
        }

        while (v56 != v70);
LABEL_74:
        v72 = 0;
        v71 = 0;
        goto LABEL_75;
      }

LABEL_34:
      ++v49;
      v51 = v53;
    }

    while (v49 != __src);
    if (*(&v609 + 1))
    {
      bzero(v605, 0x400uLL);
      v33 = v585;
      if (v596 >= 1)
      {
        v92 = 0;
        v93 = v37;
        v94 = v35;
        do
        {
          v95 = v93;
          v96 = v596 & 0x7FFFFFFF;
          v97 = v94;
          do
          {
            v98 = *v95++;
            if (v98 == 192)
            {
              v99 = *v97;
              v100 = *(v26 + 112);
              v55 = *(v26 + 116);
              if (*v97 >= v100 && v99 < v55)
              {
                *&v605[4 * (((v99 - v100) * 256.0) / (v55 - v100))] = *&v605[4 * (((v99 - v100) * 256.0) / (v55 - v100))] + 1.0;
              }
            }

            ++v97;
            --v96;
          }

          while (v96);
          ++v92;
          v94 = (v94 + v600);
          v93 += __dst;
        }

        while (v92 != __src);
      }

      *(v26 + 120) = 0;
      v46.i32[0] = *(v26 + 112);
      if (!v609)
      {
        *(v26 + 128) = v46.i32[0];
        *(v26 + 132) = v46.i32[0];
        *(v26 + 124) = v46.i32[0];
        goto LABEL_103;
      }

      if (*v46.i32 >= *(v26 + 128))
      {
        v155 = *(v26 + 128);
      }

      else
      {
        v155 = *(v26 + 112);
      }
    }

    else
    {
      v33 = v585;
      v156 = v609;
      if (!v609)
      {
        goto LABEL_486;
      }

      v155 = *(v26 + 128);
    }

    bzero(v605, 0x400uLL);
    if (v596 >= 1)
    {
      v157 = 0;
      do
      {
        v158 = v37;
        v159 = v596 & 0x7FFFFFFF;
        v160 = v35;
        do
        {
          v161 = *v158++;
          if (v161 == 160)
          {
            v162 = *v160;
            if (*v160 < v155 && v162 >= *v604)
            {
              v163 = (((v162 - *v604) * 256.0) / (v155 - *v604));
              *&v605[4 * v163] = *&v605[4 * v163] + 1.0;
            }
          }

          ++v160;
          --v159;
        }

        while (v159);
        ++v157;
        v35 = (v35 + v600);
        v37 += __dst;
      }

      while (v157 != __src);
    }

    v164 = 0;
    *(v26 + 1264) = 872415232;
    v165 = 0.00000011921;
    do
    {
      v165 = v165 + *&v605[v164];
      *(v26 + 1264) = v165;
      v164 += 4;
    }

    while (v164 != 1024);
    v166 = 0;
    v167 = *(v26 + 240) / v165;
    *(v26 + 240) = v167;
    v168 = v26 + 244;
    do
    {
      v167 = v167 + (*(v168 + v166) / *(v26 + 1264));
      *(v168 + v166) = v167;
      v166 += 4;
    }

    while (v166 != 1020);
    v169 = 0;
    v170 = *(v26 + 124);
    do
    {
      if (*&v605[4 * v169] > *(v26 + 56))
      {
        break;
      }

      ++v169;
    }

    while (v169 != 256);
    v55 = v155 - v170;
    *v46.i32 = v170 + (vcvts_n_f32_u64(v169, 8uLL) * (v155 - v170));
    *(v26 + 132) = v46.i32[0];
    if (!*(&v609 + 1))
    {
      *(v26 + 116) = v46.i32[0];
      *(v26 + 120) = v46.i32[0];
      *(v26 + 112) = v46.i32[0];
    }

    if (v609 != 0)
    {
      do
      {
LABEL_103:
        v102 = *(v26 + 46);
        v46.i16[0] = *(v26 + 20);
        v103 = *(v26 + 10);
        v104 = v46.u32[0];
        v105 = *(v26 + 48);
        v106 = v105;
        LOWORD(v55) = *(v26 + 22);
        v107 = LODWORD(v55);
        v108 = (((v103 + 0.5) * v105) / v107);
        v661 = *(v26 + 8);
        v109 = ((((*(v26 + 16) + v661) + 0.5) * v102) / v46.u32[0]);
        v110 = (((*(v26 + 18) + v103) + 0.5) * v105) / v107;
        LODWORD(v111) = v110;
        if (v109 >= v102)
        {
          v112 = *(v26 + 46);
        }

        else
        {
          v112 = v109;
        }

        v665 = v112;
        v654 = v110;
        v658 = *(v26 + 48);
        if (v111 >= v105)
        {
          v111 = *(v26 + 48);
        }

        else
        {
          v111 = v111;
        }

        v673 = v111;
        v113 = v589;
        if (v108 < 1)
        {
LABEL_126:
          v125 = v108 & ~(v108 >> 31);
          if (v125 >= v673)
          {
LABEL_156:
            v26 = v677;
            LODWORD(v142) = *(v677 + 24);
            if (v673 >= v142)
            {
LABEL_178:
              v45 = 1;
              v33 = v585;
              goto LABEL_205;
            }

            v33 = (v579 - 1);
            if (v654 >= v658)
            {
              v143 = v658;
            }

            else
            {
              v143 = v654;
            }

            v144 = &v592[v669 * v143];
            while (1)
            {
              v145 = (((v143 + 0.5) * v48) / v142);
              if (v33 < v145)
              {
                v145 = v579 - 1;
              }

              *buf = v145;
              if (!v695)
              {
                break;
              }

              v146 = (*(*v695 + 48))(v695, buf);
              LOWORD(v147) = *(v677 + 23);
              if (v147)
              {
                v148 = v146;
                v149 = 0;
                do
                {
                  v150 = ((v149 + 0.5) * v113) / v147;
                  v151 = v150 & ~(v150 >> 31);
                  if (v151 >= v589 - 1)
                  {
                    v151 = v589 - 1;
                  }

                  *buf = v148;
                  v682 = v151;
                  if (!v693)
                  {
                    goto LABEL_485;
                  }

                  v152 = (*(*v693 + 48))(v693, buf, &v682);
                  if (v152 > *(v677 + 51) && v152 >= *(v677 + 52))
                  {
                    v154 = 64;
                  }

                  else
                  {
                    v154 = 32;
                  }

                  v144[v149++] = v154;
                  v147 = *(v677 + 23);
                }

                while (v149 < v147);
              }

              ++v143;
              v142 = *(v677 + 24);
              v144 += v669;
              if (v143 >= v142)
              {
                goto LABEL_178;
              }
            }
          }

          else
          {
            v126 = (((v661 + 0.5) * v102) / v104);
            v26 = (v589 - 1);
            if (v109 < v102)
            {
              v102 = v109;
            }

            v33 = &v592[v669 * v125];
            while (1)
            {
              LOWORD(v106) = *(v677 + 24);
              v127 = ((v125 + 0.5) * v48) / LODWORD(v106);
              v128 = v127 & ~(v127 >> 31);
              if (v128 >= v579 - 1)
              {
                v128 = v579 - 1;
              }

              *buf = v128;
              if (!v695)
              {
                break;
              }

              v129 = (*(*v695 + 48))(v695, buf);
              v130 = v677;
              if (v126 >= 1)
              {
                for (i = 0; i != v126; *(v33 + i++) = v135)
                {
                  LOWORD(v106) = *(v130 + 23);
                  v132 = ((i + 0.5) * v113) / LODWORD(v106);
                  *buf = v129;
                  v682 = v132 & ~(v132 >> 31);
                  if (!v693)
                  {
                    goto LABEL_485;
                  }

                  v133 = (*(*v693 + 48))(v693, buf, &v682);
                  v130 = v677;
                  if (v133 > *(v677 + 51) && v133 >= *(v677 + 52))
                  {
                    v135 = 64;
                  }

                  else
                  {
                    v135 = 32;
                  }
                }
              }

              LODWORD(v136) = *(v130 + 23);
              v137 = v102;
              if (v665 < v136)
              {
                do
                {
                  v138 = (((v137 + 0.5) * v113) / v136);
                  if (v26 < v138)
                  {
                    v138 = v589 - 1;
                  }

                  *buf = v129;
                  v682 = v138;
                  if (!v693)
                  {
                    goto LABEL_485;
                  }

                  v139 = (*(*v693 + 48))(v693, buf, &v682);
                  if (v139 > *(v677 + 51) && v139 >= *(v677 + 52))
                  {
                    v141 = 64;
                  }

                  else
                  {
                    v141 = 32;
                  }

                  *(v33 + v137++) = v141;
                  v136 = *(v677 + 23);
                }

                while (v137 < v136);
              }

              ++v125;
              v33 += v669;
              if (v125 == v673)
              {
                goto LABEL_156;
              }
            }
          }
        }

        else
        {
          v114 = 0;
          v26 = 32;
          v33 = v592;
          while (1)
          {
            LOWORD(v106) = *(v677 + 24);
            v115 = ((v114 + 0.5) * v48) / LODWORD(v106);
            *buf = v115 & ~(v115 >> 31);
            if (!v695)
            {
              break;
            }

            v116 = (*(*v695 + 48))(v695, buf);
            LOWORD(v117) = *(v677 + 23);
            if (v117)
            {
              v118 = v116;
              v119 = 0;
              do
              {
                v120 = ((v119 + 0.5) * v113) / v117;
                v121 = v120 & ~(v120 >> 31);
                if (v121 >= v589 - 1)
                {
                  v121 = v589 - 1;
                }

                *buf = v118;
                v682 = v121;
                if (!v693)
                {
                  goto LABEL_485;
                }

                v122 = (*(*v693 + 48))(v693, buf, &v682);
                if (v122 > *(v677 + 51) && v122 >= *(v677 + 52))
                {
                  v124 = 64;
                }

                else
                {
                  v124 = 32;
                }

                *(v33 + v119++) = v124;
                v117 = *(v677 + 23);
              }

              while (v119 < v117);
            }

            ++v114;
            v33 += v669;
            if (v114 == v108)
            {
              goto LABEL_126;
            }
          }
        }

LABEL_485:
        sub_1DED25F90();
LABEL_486:
        ;
      }

      while (v156);
    }

LABEL_204:
    v45 = 0;
LABEL_205:
    v29 = a15;
    v30 = v583;
    v31 = v580;
LABEL_206:
    CVPixelBufferUnlockBaseAddress(v31, 0);
    CVPixelBufferUnlockBaseAddress(v29, 1uLL);
    CVPixelBufferUnlockBaseAddress(v30, 0);
    CVPixelBufferUnlockBaseAddress(v587, 0);
    if (v693 == v692)
    {
      (*(*v693 + 32))(v693);
    }

    else if (v693)
    {
      (*(*v693 + 40))();
    }

    if (v695 == v694)
    {
      (*(*v695 + 32))(v695);
    }

    else if (v695)
    {
      (*(*v695 + 40))();
    }

    if (v45)
    {
      v611 = *(v26 + 176);
      v613 = *(v26 + 168);
      v610 = *(v26 + 184);
      v172 = *(v26 + 200);
      v171 = *(v26 + 208);
      v173 = *(v26 + 216);
      v174 = *(v26 + 152);
      v615 = *(v26 + 160);
      v617 = *(v26 + 192);
      v175 = *(v26 + 136);
      v176 = *(v26 + 144);
      CVPixelBufferLockBaseAddress(v176, 0);
      CVPixelBufferLockBaseAddress(v615, 0);
      CVPixelBufferLockBaseAddress(v613, 0);
      CVPixelBufferLockBaseAddress(v611, 0);
      CVPixelBufferLockBaseAddress(v610, 0);
      CVPixelBufferLockBaseAddress(v617, 0);
      CVPixelBufferLockBaseAddress(v172, 0);
      CVPixelBufferLockBaseAddress(v171, 0);
      CVPixelBufferLockBaseAddress(v173, 0);
      CVPixelBufferLockBaseAddress(v174, 0);
      CVPixelBufferLockBaseAddress(v175, 0);
      v177 = CVPixelBufferGetBaseAddress(v175);
      v606 = CVPixelBufferGetHeight(v175);
      v178 = CVPixelBufferGetWidth(v175);
      v655 = CVPixelBufferGetBytesPerRow(v175);
      v608 = CVPixelBufferGetBaseAddress(v617);
      v586 = CVPixelBufferGetHeight(v617);
      CVPixelBufferGetWidth(v617);
      v674 = CVPixelBufferGetBytesPerRow(v617);
      v601 = CVPixelBufferGetBaseAddress(v172);
      CVPixelBufferGetHeight(v172);
      CVPixelBufferGetWidth(v172);
      v670 = CVPixelBufferGetBytesPerRow(v172);
      v628 = CVPixelBufferGetBaseAddress(v171);
      CVPixelBufferGetHeight(v171);
      CVPixelBufferGetWidth(v171);
      v662 = CVPixelBufferGetBytesPerRow(v171);
      v641 = CVPixelBufferGetBaseAddress(v173);
      CVPixelBufferGetHeight(v173);
      CVPixelBufferGetWidth(v173);
      v666 = CVPixelBufferGetBytesPerRow(v173);
      v179 = CVPixelBufferGetBaseAddress(v176);
      CVPixelBufferGetHeight(v176);
      CVPixelBufferGetWidth(v176);
      v650 = CVPixelBufferGetBytesPerRow(v176);
      __srca = CVPixelBufferGetBaseAddress(v615);
      __nb = CVPixelBufferGetHeight(v615);
      CVPixelBufferGetWidth(v615);
      v647 = CVPixelBufferGetBytesPerRow(v615);
      __dsta = CVPixelBufferGetBaseAddress(v613);
      CVPixelBufferGetHeight(v613);
      CVPixelBufferGetWidth(v613);
      v636 = CVPixelBufferGetBytesPerRow(v613);
      v625 = CVPixelBufferGetBaseAddress(v611);
      CVPixelBufferGetHeight(v611);
      CVPixelBufferGetWidth(v611);
      v620 = CVPixelBufferGetBytesPerRow(v611);
      v638 = CVPixelBufferGetBaseAddress(v610);
      CVPixelBufferGetHeight(v610);
      CVPixelBufferGetWidth(v610);
      v632 = CVPixelBufferGetBytesPerRow(v610);
      v659 = CVPixelBufferGetBaseAddress(v174);
      v180 = CVPixelBufferGetHeight(v174);
      CVPixelBufferGetWidth(v174);
      v582 = CVPixelBufferGetBytesPerRow(v174);
      v584 = v176;
      v588 = v172;
      v590 = v171;
      v593 = v173;
      v595 = v174;
      v597 = v175;
      bzero(v659, v582 * v180);
      v581 = v647 * __nb;
      bzero(__srca, v647 * __nb);
      if (v606)
      {
        v181 = v606;
        v182 = &v608[v674 + 4];
        v183 = &__srca[v647 + 1];
        v184 = v179;
        v185 = v177;
        do
        {
          memcpy(v183, v184, v178);
          memcpy(v182, v185, 4 * v178);
          v182 += v674;
          v183 += v647;
          v185 += v655;
          v184 += v650;
          --v181;
        }

        while (v181);
      }

      memcpy(__dsta, __srca, v581);
      memcpy(v625, __srca, v581);
      memcpy(v638, __srca, v581);
      memcpy(v601, v608, v674 * v586);
      memcpy(v628, v608, v674 * v586);
      memcpy(v641, v608, v674 * v586);
      v186 = v677;
      if (v606 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v178 + 1 >= 2)
        {
          v187 = 1;
          do
          {
            v188 = &__srca[v187 * v647];
            v189 = &v608[v187 * v674];
            v190 = &__srca[(v187 - 1) * v647];
            v191 = &v608[(v187 - 1) * v674];
            v192 = &__srca[(v187 + 1) * v647];
            v193 = 1;
            v194 = &v608[(v187 + 1) * v674];
            do
            {
              v196 = v188[v193];
              _ZF = v196 != 32 && (v196 & 0x10) == 0;
              if (_ZF)
              {
                v195 = v193 + 1;
              }

              else
              {
                v198 = v193 - 1;
                if (v190[v193 - 1] == 160)
                {
                  v199 = 1.0;
                }

                else
                {
                  v199 = 0.0;
                }

                if (v190[v193] == 160)
                {
                  v200 = 1.0;
                }

                else
                {
                  v200 = 0.0;
                }

                v201 = (*&v191[4 * v193] * v200) + (*&v191[4 * v193 - 4] * v199);
                v195 = v193 + 1;
                if (v190[v193 + 1] == 160)
                {
                  v202 = 1.0;
                }

                else
                {
                  v202 = 0.0;
                }

                v203 = v201 + (*&v191[4 * v193 + 4] * v202);
                if (v188[v198] == 160)
                {
                  v204 = 1.0;
                }

                else
                {
                  v204 = 0.0;
                }

                v205 = v203 + (*&v189[4 * v198] * v204);
                if (v188[v195] == 160)
                {
                  v206 = 1.0;
                }

                else
                {
                  v206 = 0.0;
                }

                v207 = v205 + (*&v189[4 * v195] * v206);
                if (v192[v198] == 160)
                {
                  v208 = 1.0;
                }

                else
                {
                  v208 = 0.0;
                }

                v209 = v207 + (*&v194[4 * v198] * v208);
                if (v192[v193] == 160)
                {
                  v210 = 1.0;
                }

                else
                {
                  v210 = 0.0;
                }

                v211 = v209 + (*&v194[4 * v193] * v210);
                if (v192[v195] == 160)
                {
                  v212 = 1.0;
                }

                else
                {
                  v212 = 0.0;
                }

                v213 = v211 + (*&v194[4 * v195] * v212);
                *&v189[4 * v193] = v213;
                v214 = v190[v198] == 160;
                if (v190[v193] == 160)
                {
                  ++v214;
                }

                if (v190[v195] == 160)
                {
                  ++v214;
                }

                if (v188[v198] == 160)
                {
                  ++v214;
                }

                if (v188[v195] == 160)
                {
                  ++v214;
                }

                if (v192[v198] == 160)
                {
                  v215 = v214 + 1;
                }

                else
                {
                  v215 = v214;
                }

                if (v192[v193] == 160)
                {
                  ++v215;
                }

                if (v192[v195] == 160)
                {
                  ++v215;
                }

                if (v215)
                {
                  *&v189[4 * v193] = v213 / v215;
                  v188[v193] = -96;
                  ++v659[v187 * v582 + v193];
                }
              }

              v193 = v195;
            }

            while (v195 != v178 + 1);
            _ZF = v187++ == v606;
          }

          while (!_ZF);
        }

        v220 = v595;
        v219 = v597;
        v221 = v173;
        v223 = v588;
        v222 = v590;
        if (v178)
        {
          v224 = &v659[v582];
          v225 = &v601[4 * v178];
          v226 = (v225 - 4);
          v227 = __dsta + 1;
          v228 = &__dsta[2 * v636 + 1];
          v229 = &__dsta[v636 + 1];
          v230 = &v225[v670];
          v231 = 1;
          v232 = &v225[2 * v670];
          do
          {
            v233 = 0;
            v234 = v231++;
            v235 = v230;
            v236 = v229;
            v237 = v232;
            v238 = v228;
            v239 = v227;
            v240 = v226;
            v241 = v224;
            do
            {
              v242 = &v236[v178];
              v243 = v236[v178 - 1];
              if (v243 == 32 || (v243 & 0x10) != 0)
              {
                v245 = &v239[v178];
                if (v239[v178 - 2] == 160)
                {
                  v246 = 1.0;
                }

                else
                {
                  v246 = 0.0;
                }

                if (*(v245 - 1) == 160)
                {
                  v247 = 1.0;
                }

                else
                {
                  v247 = 0.0;
                }

                v248 = (v240[1] * v247) + (*v240 * v246);
                if (*v245 == 160)
                {
                  v249 = 1.0;
                }

                else
                {
                  v249 = 0.0;
                }

                v250 = v248 + (v240[2] * v249);
                if (*(v242 - 2) == 160)
                {
                  v251 = 1.0;
                }

                else
                {
                  v251 = 0.0;
                }

                v252 = v250 + (*(v235 - 1) * v251);
                if (*v242 == 160)
                {
                  v253 = 1.0;
                }

                else
                {
                  v253 = 0.0;
                }

                v254 = v252 + (v235[1] * v253);
                v255 = (v238 + v178);
                if (*(v238 + v178 - 2) == 160)
                {
                  v256 = 1.0;
                }

                else
                {
                  v256 = 0.0;
                }

                v257 = v254 + (*(v237 - 1) * v256);
                if (*(v255 - 1) == 160)
                {
                  v258 = 1.0;
                }

                else
                {
                  v258 = 0.0;
                }

                v259 = v257 + (*v237 * v258);
                if (*v255 == 160)
                {
                  v260 = 1.0;
                }

                else
                {
                  v260 = 0.0;
                }

                v261 = v259 + (v237[1] * v260);
                *v235 = v261;
                v262 = *(v245 - 2) == 160;
                if (*(v245 - 1) == 160)
                {
                  ++v262;
                }

                if (*v245 == 160)
                {
                  v263 = v262 + 1;
                }

                else
                {
                  v263 = v262;
                }

                if (*(v242 - 2) == 160)
                {
                  ++v263;
                }

                if (*v242 == 160)
                {
                  ++v263;
                }

                if (*(v255 - 2) == 160)
                {
                  ++v263;
                }

                if (*(v255 - 1) == 160)
                {
                  ++v263;
                }

                if (*v255 == 160)
                {
                  ++v263;
                }

                if (v263)
                {
                  *v235 = v261 / v263;
                  *(v242 - 1) = -96;
                  ++v241[v178];
                }
              }

              --v241;
              ++v233;
              --v240;
              --v239;
              --v238;
              --v237;
              --v236;
              --v235;
            }

            while (v178 != v233);
            v224 += v582;
            v226 = (v226 + v670);
            v227 += v636;
            v228 += v636;
            v232 = (v232 + v670);
            v229 += v636;
            v230 = (v230 + v670);
          }

          while (v234 != v606);
          goto LABEL_325;
        }

LABEL_428:
        v326 = 0;
        v327 = &v608[v674 + 4];
        v328 = &v641[v666 + 4];
        v329 = &v628[v662 + 4];
        v330 = &v601[v670 + 4];
        v331 = &v659[v582 + 1];
        while (!v178)
        {
LABEL_429:
          ++v326;
          v177 += v655;
          v179 += v650;
          v327 += v674;
          v328 += v666;
          v329 += v662;
          v330 += v670;
          v331 += v582;
          if (v326 == v606)
          {
            goto LABEL_448;
          }
        }

        v332 = 0;
        while (2)
        {
          if (*(v331 + v332))
          {
            v333 = *(v330 + 4 * v332);
            v334 = *(v328 + 4 * v332);
            if (v334 >= *(v329 + 4 * v332))
            {
              v334 = *(v329 + 4 * v332);
            }

            if (v333 >= *(v327 + 4 * v332))
            {
              v333 = *(v327 + 4 * v332);
            }

            if (v334 < v333)
            {
              v333 = v334;
            }

LABEL_447:
            *&v177[4 * v332] = v333;
            v179[v332] = -96;
          }

          else
          {
            v335 = v179[v332];
            if (v335 == 32 || (v335 & 0x10) != 0)
            {
              v333 = v677[33];
              goto LABEL_447;
            }

            *&v177[4 * v332] = *(v327 + 4 * v332);
          }

          if (v178 == ++v332)
          {
            goto LABEL_429;
          }

          continue;
        }
      }

LABEL_325:
      v220 = v595;
      v219 = v597;
      v221 = v593;
      v223 = v588;
      v222 = v590;
      if (v606)
      {
        if (v178 + 1 >= 2)
        {
          v264 = v606;
          do
          {
            v265 = &v659[v264 * v582];
            v266 = v625 + v264 * v620;
            v267 = &v628[v264 * v662];
            v268 = v264-- + 1;
            v269 = v625 + v264 * v620;
            v270 = &v628[v264 * v662];
            v271 = v625 + v268 * v620;
            v272 = 1;
            v273 = &v628[v268 * v662];
            do
            {
              v275 = v266[v272];
              if (v275 != 32 && (v275 & 0x10) == 0)
              {
                v274 = v272 + 1;
              }

              else
              {
                v277 = v272 - 1;
                if (v269[v272 - 1] == 160)
                {
                  v278 = 1.0;
                }

                else
                {
                  v278 = 0.0;
                }

                if (v269[v272] == 160)
                {
                  v279 = 1.0;
                }

                else
                {
                  v279 = 0.0;
                }

                v280 = (*&v270[4 * v272] * v279) + (*&v270[4 * v272 - 4] * v278);
                v274 = v272 + 1;
                if (v269[v272 + 1] == 160)
                {
                  v281 = 1.0;
                }

                else
                {
                  v281 = 0.0;
                }

                v282 = v280 + (*&v270[4 * v272 + 4] * v281);
                if (v266[v277] == 160)
                {
                  v283 = 1.0;
                }

                else
                {
                  v283 = 0.0;
                }

                v284 = v282 + (*&v267[4 * v277] * v283);
                if (v266[v274] == 160)
                {
                  v285 = 1.0;
                }

                else
                {
                  v285 = 0.0;
                }

                v286 = v284 + (*&v267[4 * v274] * v285);
                if (v271[v277] == 160)
                {
                  v287 = 1.0;
                }

                else
                {
                  v287 = 0.0;
                }

                v288 = v286 + (*&v273[4 * v277] * v287);
                if (v271[v272] == 160)
                {
                  v289 = 1.0;
                }

                else
                {
                  v289 = 0.0;
                }

                v290 = v288 + (*&v273[4 * v272] * v289);
                if (v271[v274] == 160)
                {
                  v291 = 1.0;
                }

                else
                {
                  v291 = 0.0;
                }

                v292 = v290 + (*&v273[4 * v274] * v291);
                *&v267[4 * v272] = v292;
                v293 = v269[v277] == 160;
                if (v269[v272] == 160)
                {
                  ++v293;
                }

                if (v269[v274] == 160)
                {
                  ++v293;
                }

                if (v266[v277] == 160)
                {
                  ++v293;
                }

                if (v266[v274] == 160)
                {
                  ++v293;
                }

                if (v271[v277] == 160)
                {
                  v294 = v293 + 1;
                }

                else
                {
                  v294 = v293;
                }

                if (v271[v272] == 160)
                {
                  ++v294;
                }

                if (v271[v274] == 160)
                {
                  ++v294;
                }

                if (v294)
                {
                  *&v267[4 * v272] = v292 / v294;
                  v266[v272] = -96;
                  ++v265[v272];
                }
              }

              v272 = v274;
            }

            while (v274 != v178 + 1);
          }

          while (v264);
        }

        if (v178)
        {
          v295 = v606;
          do
          {
            v296 = &v659[v295 * v582];
            v297 = &v638[v295 * v632];
            v298 = &v641[v295 * v666];
            v299 = v295-- + 1;
            v300 = &v638[v295 * v632];
            v301 = &v641[v295 * v666];
            v302 = &v638[v299 * v632];
            v303 = v178;
            v304 = &v641[v299 * v666];
            do
            {
              v306 = v297[v303];
              if (v306 != 32 && (v306 & 0x10) == 0)
              {
                v305 = v303 - 1;
              }

              else
              {
                *&v298[4 * v303] = 0;
                v305 = v303 - 1;
                if (v300[v303 - 1] == 160)
                {
                  v308 = 1.0;
                }

                else
                {
                  v308 = 0.0;
                }

                if (v300[v303] == 160)
                {
                  v309 = 1.0;
                }

                else
                {
                  v309 = 0.0;
                }

                v310 = (*&v301[4 * v303] * v309) + (*&v301[4 * v303 - 4] * v308);
                v311 = v303 + 1;
                if (v300[v303 + 1] == 160)
                {
                  v312 = 1.0;
                }

                else
                {
                  v312 = 0.0;
                }

                v313 = v310 + (*&v301[4 * v303 + 4] * v312);
                if (v297[v305] == 160)
                {
                  v314 = 1.0;
                }

                else
                {
                  v314 = 0.0;
                }

                v315 = v313 + (*&v298[4 * v305] * v314);
                if (v297[v311] == 160)
                {
                  v316 = 1.0;
                }

                else
                {
                  v316 = 0.0;
                }

                v317 = v315 + (*&v298[4 * v311] * v316);
                if (v302[v305] == 160)
                {
                  v318 = 1.0;
                }

                else
                {
                  v318 = 0.0;
                }

                v319 = v317 + (*&v304[4 * v305] * v318);
                if (v302[v303] == 160)
                {
                  v320 = 1.0;
                }

                else
                {
                  v320 = 0.0;
                }

                v321 = v319 + (*&v304[4 * v303] * v320);
                if (v302[v311] == 160)
                {
                  v322 = 1.0;
                }

                else
                {
                  v322 = 0.0;
                }

                v323 = v321 + (*&v304[4 * v311] * v322);
                *&v298[4 * v303] = v323;
                v324 = v300[v305] == 160;
                if (v300[v303] == 160)
                {
                  ++v324;
                }

                if (v300[v311] == 160)
                {
                  ++v324;
                }

                if (v297[v305] == 160)
                {
                  ++v324;
                }

                if (v297[v311] == 160)
                {
                  ++v324;
                }

                if (v302[v305] == 160)
                {
                  ++v324;
                }

                if (v302[v303] == 160)
                {
                  ++v324;
                }

                if (v302[v311] == 160)
                {
                  v325 = v324 + 1;
                }

                else
                {
                  v325 = v324;
                }

                if (v325)
                {
                  *&v298[4 * v303] = v323 / v325;
                  v297[v303] = -96;
                  ++v296[v303];
                }
              }

              v303 = v305;
            }

            while (v305);
          }

          while (v295);
        }

        goto LABEL_428;
      }

LABEL_448:
      CVPixelBufferUnlockBaseAddress(v584, 0);
      CVPixelBufferUnlockBaseAddress(v615, 0);
      CVPixelBufferUnlockBaseAddress(v613, 0);
      CVPixelBufferUnlockBaseAddress(v611, 0);
      CVPixelBufferUnlockBaseAddress(v610, 0);
      CVPixelBufferUnlockBaseAddress(v617, 0);
      CVPixelBufferUnlockBaseAddress(v223, 0);
      CVPixelBufferUnlockBaseAddress(v222, 0);
      CVPixelBufferUnlockBaseAddress(v221, 0);
      CVPixelBufferUnlockBaseAddress(v220, 0);
      CVPixelBufferUnlockBaseAddress(v219, 0);
      v337 = *(v677 + 24);
      v338 = *(v677 + 17);
      CVPixelBufferLockBaseAddress(v337, 0);
      CVPixelBufferLockBaseAddress(v338, 0);
      v339 = CVPixelBufferGetBaseAddress(v338);
      v340 = CVPixelBufferGetHeight(v338);
      v341 = CVPixelBufferGetWidth(v338);
      v342 = CVPixelBufferGetBytesPerRow(v338);
      v343 = CVPixelBufferGetBaseAddress(v337);
      CVPixelBufferGetHeight(v337);
      CVPixelBufferGetWidth(v337);
      v344 = CVPixelBufferGetBytesPerRow(v337);
      if (v340 >= 1 && v341 >= 1)
      {
        v346 = 0;
        v347 = v677[27];
        v348 = v677[24] + ((v677[21] - v677[24]) * v347);
        v349 = v677[25] + ((v677[22] - v677[25]) * v347);
        v350 = v677[26] + ((v677[23] - v677[26]) * v347);
        v351 = vcvts_n_f32_s32(*v677 - 1, 1uLL);
        v352 = vcvts_n_f32_s32(*(v677 + 1) - 1, 1uLL);
        v353 = sqrtf((v352 * v352) + (v351 * v351));
        v354 = *(v677 + 3);
        v355 = -v352;
        v356 = *(v677 + 2);
        v357 = -v351;
        v358 = v340 & 0x7FFFFFFF;
        v359 = v341 & 0x7FFFFFFF;
        v345.i32[0] = 2139095039;
        v360 = v343;
        v361 = v354;
        do
        {
          v362 = 0;
          v363 = v361;
          v361 += *(v677 + 7);
          if (v346 >= v340 - 1)
          {
            v361 = *(v677 + 9) + v354;
          }

          v364 = v355 + ((v363 + v361 - 1) * 0.5);
          v365 = v364 * v364;
          v366 = v356;
          do
          {
            v367 = v366 + *(v677 + 6);
            if (v362 >= v341 - 1)
            {
              v367 = *(v677 + 8) + v356;
            }

            v368 = sqrtf(v365 + ((v357 + ((v366 + v367 - 1) * 0.5)) * (v357 + ((v366 + v367 - 1) * 0.5)))) / v353;
            v369 = (v348 + (v349 * v368)) + (v350 * (v368 * v368));
            if (v369 < *v345.i32)
            {
              *v345.i32 = v369;
            }

            v360[v362++] = v369;
            v366 = v367;
          }

          while (v359 != v362);
          ++v346;
          v360 = (v360 + v344);
        }

        while (v346 != v358);
        if (v359 > 7)
        {
          v375 = v343 >= (&v339[v359] + v342 * (v358 - 1)) || v339 >= (&v343[v359] + v344 * (v358 - 1));
          if (!v375 || ((v342 | v344) & 0x8000000000000000) != 0)
          {
            v393 = 0;
            do
            {
              v394 = v339;
              v395 = v343;
              v396 = v341 & 0x7FFFFFFF;
              do
              {
                v397 = *v395++;
                *v394 = (*v345.i32 + *v394) - v397;
                ++v394;
                --v396;
              }

              while (v396);
              ++v393;
              v343 = (v343 + v344);
              v339 = (v339 + v342);
            }

            while (v393 != v358);
          }

          else
          {
            v376 = vdupq_lane_s32(v345, 0);
            v377 = v359 - (v341 & 7);
            if ((v341 & 7) != 0)
            {
              v378 = 0;
              v379 = v377 + 1;
              v380 = v377 + 2;
              v381 = v377 + 3;
              v382 = v377 + 4;
              v383 = v377 + 5;
              v384 = v377 + 6;
              v385 = (v343 + 4);
              v386 = (v339 + 4);
              do
              {
                v387 = v343 + v344 * v378;
                v388 = v386;
                v389 = v385;
                v390 = v359 - (v341 & 7);
                v391 = v339 + v342 * v378;
                do
                {
                  v392 = vsubq_f32(vaddq_f32(v376, *v388), *v389);
                  v388[-1] = vsubq_f32(vaddq_f32(v376, v388[-1]), v389[-1]);
                  *v388 = v392;
                  v389 += 2;
                  v388 += 2;
                  v390 -= 8;
                }

                while (v390);
                *&v391[4 * v377] = (*v345.i32 + *&v391[4 * v377]) - *&v387[4 * v377];
                if (v379 != v359)
                {
                  *&v391[4 * v379] = (*v345.i32 + *&v391[4 * v379]) - *&v387[4 * v379];
                  if (v380 != v359)
                  {
                    *&v391[4 * v380] = (*v345.i32 + *&v391[4 * v380]) - *&v387[4 * v380];
                    if (v381 != v359)
                    {
                      *&v391[4 * v381] = (*v345.i32 + *&v391[4 * v381]) - *&v387[4 * v381];
                      if (v382 != v359)
                      {
                        *&v391[4 * v382] = (*v345.i32 + *&v391[4 * v382]) - *&v387[4 * v382];
                        if (v383 != v359)
                        {
                          *&v391[4 * v383] = (*v345.i32 + *&v391[4 * v383]) - *&v387[4 * v383];
                          if (v384 != v359)
                          {
                            *&v391[4 * v384] = (*v345.i32 + *&v391[4 * v384]) - *&v387[4 * v384];
                          }
                        }
                      }
                    }
                  }
                }

                ++v378;
                v385 = (v385 + v344);
                v386 = (v386 + v342);
              }

              while (v378 != v358);
            }

            else
            {
              v398 = 0;
              v399 = (v343 + 4);
              v400 = (v339 + 4);
              do
              {
                v401 = v400;
                v402 = v399;
                v403 = v377;
                do
                {
                  v404 = vsubq_f32(vaddq_f32(v376, *v401), *v402);
                  v401[-1] = vsubq_f32(vaddq_f32(v376, v401[-1]), v402[-1]);
                  *v401 = v404;
                  v402 += 2;
                  v401 += 2;
                  v403 -= 8;
                }

                while (v403);
                ++v398;
                v399 = (v399 + v344);
                v400 = (v400 + v342);
              }

              while (v398 != v358);
            }
          }
        }

        else
        {
          v370 = 0;
          do
          {
            v371 = v339;
            v372 = v343;
            v373 = v341 & 0x7FFFFFFF;
            do
            {
              v374 = *v372++;
              *v371 = (*v345.i32 + *v371) - v374;
              ++v371;
              --v373;
            }

            while (v373);
            ++v370;
            v343 = (v343 + v344);
            v339 = (v339 + v342);
          }

          while (v370 != v358);
        }
      }

      CVPixelBufferUnlockBaseAddress(v337, 0);
      CVPixelBufferUnlockBaseAddress(v338, 0);
      v405 = *(v677 + 17);
      CVPixelBufferLockBaseAddress(v405, 0);
      v406 = CVPixelBufferGetBaseAddress(v405);
      v407 = CVPixelBufferGetHeight(v405);
      v408 = CVPixelBufferGetWidth(v405);
      v409 = CVPixelBufferGetBytesPerRow(v405);
      v410 = v677[17];
      v411 = v677[18];
      v412 = v410 + ((v411 - v410) * ((a10 - v677[19]) / (v677[20] - v677[19])));
      if (v411 >= v410)
      {
        v413 = v677[17];
      }

      else
      {
        v413 = v677[18];
      }

      if (v410 < v411)
      {
        v410 = v677[18];
      }

      if (v412 < v410)
      {
        v410 = v412;
      }

      if (v412 < v413)
      {
        v410 = v413;
      }

      if (v407 && v408)
      {
        if (v408 > 3)
        {
          v415 = v406->u64 + 4 * v408 + v409 * (v407 - 1);
          v417 = v406 < v604 && (v677 + 30) < v415;
          v419 = v406 < v622 && (v677 + 7) < v415;
          v420 = (v677 + 15) >= v415 || v406 >= (v677 + 17);
          if (!v420 || v417 || v419 || (v409 & 0x8000000000000000) != 0)
          {
            for (j = 0; j != v407; ++j)
            {
              v431 = v406;
              v432 = v408;
              do
              {
                *v431 = fmaxf(v410 * (v677[16] + (((*v431 - v677[30]) * v677[8]) / ((v677[15] * ((v677[7] / v677[9]) * 0.5)) * (v677[7] * v677[10])))), 0.0);
                ++v431;
                --v432;
              }

              while (v432);
              v406 = (v406 + v409);
            }
          }

          else if (v408 == (v408 & 0xFFFFFFFFFFFFFFFCLL))
          {
            v421 = 0;
            v422 = vdupq_lane_s32(*(v677 + 30), 0);
            v423 = *(v677 + 7);
            v424.i64[0] = 0x3F0000003F000000;
            v424.i64[1] = 0x3F0000003F000000;
            LODWORD(v425) = vshrq_n_u64(v423, 0x20uLL).u32[0];
            v426 = vdupq_lane_s32(*&vmulq_f32(vmulq_f32(*(v677 + 15), vmulq_f32(vdivq_f32(v423, vdupq_laneq_s32(v423, 2)), v424)), vmulq_laneq_f32(v423, v423, 3)), 0);
            v427 = vdupq_lane_s32(*(v677 + 16), 0);
            do
            {
              v428 = v406;
              v429 = v408;
              do
              {
                *v428 = vmaxnmq_f32(vmulq_n_f32(vaddq_f32(v427, vdivq_f32(vmulq_n_f32(vsubq_f32(*v428, v422), v425), v426)), v410), 0);
                ++v428;
                v429 -= 4;
              }

              while (v429);
              ++v421;
              v406 = (v406 + v409);
            }

            while (v421 != v407);
          }

          else
          {
            v433 = 0;
            v434.i64[0] = 0x3F0000003F000000;
            v434.i64[1] = 0x3F0000003F000000;
            do
            {
              v435 = vdupq_lane_s32(*(v677 + 30), 0);
              v436 = *(v677 + 7);
              v437 = vdupq_lane_s32(*&vmulq_f32(vmulq_f32(*(v677 + 15), vmulq_f32(vdivq_f32(v436, vdupq_laneq_s32(v436, 2)), v434)), vmulq_laneq_f32(v436, v436, 3)), 0);
              LODWORD(v438) = vshrq_n_u64(v436, 0x20uLL).u32[0];
              v439 = vdupq_lane_s32(*(v677 + 16), 0);
              v440 = v406;
              v441 = v408 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                *v440 = vmaxnmq_f32(vmulq_n_f32(vaddq_f32(v439, vdivq_f32(vmulq_n_f32(vsubq_f32(*v440, v435), v438), v437)), v410), 0);
                ++v440;
                v441 -= 4;
              }

              while (v441);
              v442 = v408 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v406->f32[v442] = fmaxf(v410 * (v677[16] + (((v406->f32[v442] - v677[30]) * v677[8]) / ((v677[15] * ((v677[7] / v677[9]) * 0.5)) * (v677[7] * v677[10])))), 0.0);
                ++v442;
              }

              while (v408 != v442);
              ++v433;
              v406 = (v406 + v409);
            }

            while (v433 != v407);
          }
        }

        else
        {
          v414 = &v406->f32[2];
          do
          {
            *(v414 - 2) = fmaxf(v410 * (v677[16] + (((*(v414 - 2) - v677[30]) * v677[8]) / ((v677[15] * ((v677[7] / v677[9]) * 0.5)) * (v677[7] * v677[10])))), 0.0);
            if (v408 != 1)
            {
              *(v414 - 1) = fmaxf(v410 * (v677[16] + (((*(v414 - 1) - v677[30]) * v677[8]) / ((v677[15] * ((v677[7] / v677[9]) * 0.5)) * (v677[7] * v677[10])))), 0.0);
              if (v408 != 2)
              {
                *v414 = fmaxf(v410 * (v677[16] + (((*v414 - v677[30]) * v677[8]) / ((v677[15] * ((v677[7] / v677[9]) * 0.5)) * (v677[7] * v677[10])))), 0.0);
              }
            }

            v414 = (v414 + v409);
            --v407;
          }

          while (v407);
        }
      }

      CVPixelBufferUnlockBaseAddress(v405, 0);
      v623 = *(v677 + 29);
      v626 = *(v677 + 28);
      v621 = *(v677 + 17);
      CVPixelBufferLockBaseAddress(v621, 1uLL);
      CVPixelBufferLockBaseAddress(a16, 0);
      CVPixelBufferLockBaseAddress(v626, 0);
      CVPixelBufferLockBaseAddress(v623, 0);
      v443 = CVPixelBufferGetBaseAddress(v621);
      v629 = CVPixelBufferGetHeight(v621);
      v618 = CVPixelBufferGetWidth(v621);
      v444 = CVPixelBufferGetBytesPerRow(v621);
      v445 = CVPixelBufferGetBaseAddress(a16);
      v446 = CVPixelBufferGetHeight(a16);
      v447 = CVPixelBufferGetWidth(a16);
      v671 = CVPixelBufferGetBytesPerRow(a16);
      v675 = CVPixelBufferGetBaseAddress(v626);
      v448 = CVPixelBufferGetHeight(v626);
      v616 = CVPixelBufferGetWidth(v626);
      v449 = CVPixelBufferGetBytesPerRow(v626);
      v450 = CVPixelBufferGetBaseAddress(v623);
      CVPixelBufferGetHeight(v623);
      CVPixelBufferGetWidth(v623);
      v451 = CVPixelBufferGetBytesPerRow(v623);
      v651 = v446;
      v633 = v448;
      memcpy(v450, v675, v449 * v448);
      LODWORD(v459) = *(v677 + 24);
      v667 = v450;
      if (*(v677 + 24))
      {
        v460 = v450;
        v461 = 0;
        v462 = *(v677 + 23);
        do
        {
          if (v462 >= 2)
          {
            v463 = 0;
            do
            {
              if (v460[v463] != v460[v463 + 1])
              {
                v464 = *(v677 + 50);
                v465 = (v463 - v464 + 1) & ~((v463 - v464 + 1) >> 31);
                v466 = v463 + v464;
                v467 = v466 + 1 < v462 ? v466 + 1 : v462;
                if (v465 < v467)
                {
                  bzero(&v675[v449 * v461 + v465], v467 + ~v465 + 1);
                  v462 = *(v677 + 23);
                }
              }

              ++v463;
            }

            while (v463 < (v462 - 1));
            v186 = v677;
            LODWORD(v459) = *(v677 + 24);
          }

          ++v461;
          v460 += v451;
        }

        while (v461 < v459);
      }

      else
      {
        v462 = *(v677 + 23);
      }

      if (v462)
      {
        if (v449 == 1)
        {
          v468 = 0;
          v452 = 0uLL;
          v469 = v675;
          while (v459 < 2)
          {
LABEL_569:
            ++v468;
            ++v469;
            if (v468 >= v462)
            {
              goto LABEL_611;
            }
          }

          v470 = 0;
          v471 = 1;
          v472 = 1;
          while (2)
          {
            v473 = v451 * v470++;
            if (v667[v468 + v473] != v667[v468 + v451 * v470])
            {
              v474 = *(v186 + 50);
              LODWORD(v475) = v470 + v474;
              v475 = v470 + v474 >= v459 ? v459 : v475;
              if (((v470 - v474) & ~((v470 - v474) >> 31)) < v475)
              {
                v476 = (v472 - v474) & ~((v472 - v474) >> 31);
                v477 = v475 - v476;
                if (v475 - v476 <= 7)
                {
                  do
                  {
LABEL_595:
                    v469[v476++] = 0;
                  }

                  while (v476 < v475);
                }

                else
                {
                  if (v477 < 0x20)
                  {
                    v478 = 0;
                    goto LABEL_588;
                  }

                  v478 = v477 & 0xFFFFFFFFFFFFFFE0;
                  v479 = v471 + v474;
                  if (v471 + v474 >= v459)
                  {
                    v479 = v459;
                  }

                  v480 = (v479 - v476) & 0xFFFFFFFFFFFFFFE0;
                  v481 = &v469[v476];
                  do
                  {
                    *v481 = 0uLL;
                    *(v481 + 1) = 0uLL;
                    v481 += 32;
                    v480 -= 32;
                  }

                  while (v480);
                  if (v477 != v478)
                  {
                    if ((v477 & 0x18) == 0)
                    {
                      v476 += v478;
                      goto LABEL_595;
                    }

LABEL_588:
                    v482 = v477 & 0xFFFFFFFFFFFFFFF8;
                    v483 = v471 + v474;
                    v459 = v459;
                    if (v483 < v459)
                    {
                      v459 = v483;
                    }

                    v484 = v478 - ((v459 - v476) & 0xFFFFFFFFFFFFFFF8);
                    v485 = v478 + v476;
                    do
                    {
                      *&v469[v485] = 0;
                      v485 += 8;
                      v484 += 8;
                    }

                    while (v484);
                    if (v477 != v482)
                    {
                      v476 += v482;
                      goto LABEL_595;
                    }
                  }
                }

                LODWORD(v459) = *(v186 + 24);
              }
            }

            ++v472;
            ++v471;
            if (v470 >= v459 - 1)
            {
              v462 = *(v186 + 23);
              goto LABEL_569;
            }

            continue;
          }
        }

        v486 = 0;
        v487 = v675;
        do
        {
          if (v459 >= 2)
          {
            v488 = 0;
            v489 = 1;
            do
            {
              v490 = v451 * v488++;
              if (v667[v486 + v490] != v667[v486 + v451 * v488])
              {
                v491 = *(v186 + 50);
                LODWORD(v492) = v488 + v491;
                v492 = v488 + v491 >= v459 ? v459 : v492;
                if (((v488 - v491) & ~((v488 - v491) >> 31)) < v492)
                {
                  v493 = (v489 - v491) & ~((v489 - v491) >> 31);
                  v494 = &v487[v449 * v493];
                  do
                  {
                    *v494 = 0;
                    ++v493;
                    v494 += v449;
                  }

                  while (v493 < v492);
                  LODWORD(v459) = *(v186 + 24);
                }
              }

              ++v489;
            }

            while (v488 < v459 - 1);
            v462 = *(v186 + 23);
          }

          ++v486;
          ++v487;
        }

        while (v486 < v462);
      }

LABEL_611:
      if (v651 >= 1)
      {
        v495 = 0;
        v496 = *(v186 + 5);
        v497 = 0.5;
        v498 = v651;
        LOWORD(v453) = *(v186 + 11);
        v499 = v453;
        v500 = -0.5;
        v501 = (((v496 + 0.5) * v651) / v499) + -0.5;
        v668 = (((((*(v186 + 9) + v496) + 0.5) * v651) / v499) + -0.5) - v501;
        v502 = *(v186 + 4);
        LOWORD(v454) = *(v186 + 10);
        v503 = v454;
        *&v452 = ((((*(v186 + 8) + v502) + 0.5) * v447) / v503) + -0.5;
        v663 = v633;
        v504 = (((v502 + 0.5) * v447) / v503) + -0.5;
        v660 = v629;
        v656 = (v629 - 1);
        *v455.i32 = v616 / v447;
        *v456.i32 = *v455.i32 * 0.5;
        *v457.i32 = v618 / (*&v452 - v504);
        *v458.i32 = ((0.5 - v504) * *v457.i32) + -0.5;
        v505 = vdupq_lane_s32(v455, 0);
        v506 = vdupq_lane_s32(v456, 0);
        v507 = vdupq_n_s32((v616 + -1.0));
        v508 = vdupq_lane_s32(v457, 0);
        v509 = vdupq_lane_s32(v458, 0);
        v510 = v633 - 1;
        *&v452 = v618 + -1.0;
        v511 = vdupq_lane_s32(*&v452, 0);
        v634 = v447 / 4;
        v512 = v629 - 1;
        __asm { FMOV            V28.4S, #1.0 }

        v516 = vcvtq_u32_f32(_Q28);
        v517 = vcvtq_u32_f32(v511);
        v518 = v618 - 1;
        v519 = (v651 & 0x7FFFFFFF);
        v520 = v447;
        v521 = (v629 - 1);
        v522 = 0uLL;
        v523.i64[0] = 0x4000000040;
        v523.i64[1] = 0x4000000040;
        v524.i64[0] = 0x2000000020;
        v524.i64[1] = 0x2000000020;
        v525.i64[0] = 0x4500000045000000;
        v525.i64[1] = 0x4500000045000000;
        __na = v444;
        v648 = v443;
        v642 = v447;
        v639 = v651;
        v637 = v501;
        v630 = v519;
        do
        {
          v526 = (((v495 + v497) * v663) / v498) & ~((((v495 + v497) * v663) / v498) >> 31);
          if (v526 >= v510)
          {
            v526 = v510;
          }

          v527 = &v675[v449 * v526];
          v528 = fmaxf(((((v495 - v501) + v497) * v660) / v668) + v500, 0.0);
          if (v528 >= v656)
          {
            v529 = v656;
          }

          else
          {
            v529 = v528;
          }

          v530 = v529;
          v531 = &v443[v444 * v530];
          if ((v530 + 1) >= v521)
          {
            v532 = v521;
          }

          else
          {
            v532 = (v530 + 1);
          }

          if (v447 < 4)
          {
            v533 = 0;
            if (v447 > 0)
            {
              goto LABEL_628;
            }
          }

          else
          {
            LODWORD(v533) = 0;
            v534 = v186 + 16;
            v535 = vld1q_dup_f32(v534);
            v536 = &v443[v444 * v532];
            v537 = (v530 + 1.0) - v529;
            v652 = v529;
            v538 = v529 - v530;
            v539 = v634;
            v540 = v445;
            do
            {
              v541.f32[0] = v533;
              v541.f32[1] = (v533 + 1);
              *&v541.u32[2] = vcvt_f32_u32(vorr_s8(vdup_n_s32(v533), 0x300000002));
              v542 = vminq_f32(v511, vmaxq_f32(vmlaq_f32(v509, v508, v541), v522));
              v543 = vcvtq_u32_f32(v542);
              v544 = vminq_u32(v517, vaddq_s32(v516, v543));
              v545 = vcvtq_f32_u32(v543);
              v546 = v543.i32[0];
              v547 = v544.u32[3];
              v548 = v544.i32[0];
              v549 = 4 * v543.u32[1];
              v550 = 4 * v544.u32[1];
              v551 = 4 * v543.u32[2];
              v552 = 4 * v544.u32[2];
              v553 = 4 * v543.u32[3];
              v544.i32[0] = *&v531[4 * v543.u32[0]];
              v544.i32[1] = *&v531[v549];
              v544.i32[2] = *&v531[v551];
              v543.i32[0] = *&v531[4 * v548];
              v554.i32[0] = *&v536[4 * v546];
              v544.i32[3] = *&v531[v553];
              v555 = 4 * v547;
              v554.i32[1] = *&v536[v549];
              v554.i32[2] = *&v536[v551];
              v554.i32[3] = *&v536[v553];
              v543.i32[1] = *&v531[v550];
              v556.i32[0] = *&v536[4 * v548];
              v557 = vsubq_f32(v542, v545);
              v558 = vsubq_f32(_Q28, v557);
              v556.i32[1] = *&v536[v550];
              v543.i32[2] = *&v531[v552];
              v559 = vminq_u32(v507, vcvtq_u32_f32(vmlaq_f32(v506, v505, v541)));
              v556.i32[2] = *&v536[v552];
              v543.i32[3] = *&v531[v555];
              v556.i32[3] = *&v536[v555];
              v559.i32[0] = v527[v559.u32[0]];
              v559.i32[1] = v527[v559.u32[1]];
              v560 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_n_f32(v558, v537), v544), v543, vmulq_n_f32(v557, v537)), v554, vmulq_n_f32(v558, v538));
              v522 = 0uLL;
              v559.i32[2] = v527[v559.u32[2]];
              v559.i32[3] = v527[v559.u32[3]];
              *v540++ = vaddq_f32(vaddq_f32(vandq_s8(vmlaq_f32(v560, v556, vmulq_n_f32(v557, v538)), vceqq_s32(v559, v524)), vandq_s8(v535, vceqq_s32(v559, v523))), vandq_s8(vceqzq_s32(v559), v525));
              LODWORD(v533) = v533 + 4;
              --v539;
            }

            while (v539);
            v533 = v533;
            v186 = v677;
            v444 = __na;
            v443 = v648;
            v447 = v642;
            v497 = 0.5;
            v498 = v639;
            v500 = -0.5;
            v501 = v637;
            v519 = v630;
            v529 = v652;
            if (v533 < v642)
            {
LABEL_628:
              v561 = (v530 + 1);
              v562 = &v443[v444 * v561];
              v563 = v561 - v529;
              v564 = v529 - v530;
              do
              {
                if (((*v456.i32 + (v533 * *v455.i32)) & ~((*v456.i32 + (v533 * *v455.i32)) >> 31)) >= v616 - 1)
                {
                  v572 = v616 - 1;
                }

                else
                {
                  v572 = (*v456.i32 + (v533 * *v455.i32)) & ~((*v456.i32 + (v533 * *v455.i32)) >> 31);
                }

                v573 = fmaxf(*v458.i32 + (v533 * *v457.i32), 0.0);
                if (v573 >= (v618 - 1))
                {
                  v573 = (v618 - 1);
                }

                v574 = v573;
                if (v512 == v530)
                {
                  if (v518 == v574)
                  {
                    v566 = *&v531[4 * v574];
                  }

                  else
                  {
                    v566 = ((v573 - v574) * *&v531[4 * v574 + 4]) + (((v574 + 1) - v573) * *&v531[4 * v574]);
                  }
                }

                else if (v518 == v574)
                {
                  v566 = (v564 * *&v562[4 * v574]) + (v563 * *&v531[4 * v574]);
                }

                else
                {
                  v565 = v574 + 1;
                  v522 = 0uLL;
                  v566 = ((((v563 * (v573 - v574)) * *&v531[4 * v565]) + ((v563 * (v565 - v573)) * *&v531[4 * v574])) + ((v564 * (v565 - v573)) * *&v562[4 * v574])) + ((v564 * (v573 - v574)) * *&v562[4 * v565]);
                }

                v567 = v527[v572];
                if (v567 == 64)
                {
                  v568 = 1.0;
                }

                else
                {
                  v568 = 0.0;
                }

                if (v567 == 32)
                {
                  v569 = 1.0;
                }

                else
                {
                  v569 = 0.0;
                }

                v570 = (v566 * v569) + (v568 * v186[16]);
                if (v527[v572])
                {
                  v571 = 0.0;
                }

                else
                {
                  v571 = 1.0;
                }

                v445->f32[v533++] = v570 + (v571 * 2048.0);
              }

              while (v520 != v533);
            }
          }

          ++v495;
          v445 = (v445 + v671);
        }

        while (v495 != v519);
      }

      CVPixelBufferUnlockBaseAddress(v621, 1uLL);
      CVPixelBufferUnlockBaseAddress(a16, 0);
      CVPixelBufferUnlockBaseAddress(v626, 0);
      CVPixelBufferUnlockBaseAddress(v623, 0);
      v43 = *(v186 + 16);
    }

    else
    {
      if ((atomic_load_explicit(&qword_1ECDE15D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15D8))
      {
        v577 = +[CVAPreferenceManager defaults];
        v578 = [v577 BOOLForKey:@"singleCamSDoFPreviewLog"];

        byte_1ECDE15D0 = v578;
        __cxa_guard_release(&qword_1ECDE15D8);
      }

      if (byte_1ECDE15D0 == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/FocusStatsPostprocessing.mm";
        *&buf[12] = 2080;
        *&buf[14] = "process";
        v684 = 1024;
        *v685 = 345;
        _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SingleCamSDoFPreviewLog: %s::%s line %d: Neither foreground nor background detected. Set uniform disparity.\n", buf, 0x1Cu);
      }

      CVPixelBufferLockBaseAddress(a16, 0);
      v216 = CVPixelBufferGetBaseAddress(a16);
      v217 = CVPixelBufferGetHeight(a16);
      CVPixelBufferGetWidth(a16);
      v218 = CVPixelBufferGetBytesPerRow(a16);
      bzero(v216, v218 * v217);
      v43 = 0;
      CVPixelBufferUnlockBaseAddress(a16, 0);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ECDE15C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15C8))
    {
      v575 = +[CVAPreferenceManager defaults];
      v576 = [v575 BOOLForKey:@"singleCamSDoFPreviewLog"];

      byte_1ECDE15C0 = v576;
      __cxa_guard_release(&qword_1ECDE15C8);
      v26 = v677;
    }

    if (byte_1ECDE15C0 == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(v26 + 24);
      v39 = *(v26 + 26);
      *buf = 136316674;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/FocusStatsPostprocessing.mm";
      *&buf[12] = 2080;
      *&buf[14] = "process";
      v684 = 1024;
      *v685 = 206;
      *&v685[4] = 1024;
      *&v685[6] = v27;
      v686 = 1024;
      v687 = v28;
      v688 = 1024;
      v689 = v38;
      v690 = 1024;
      v691 = v39;
      _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SingleCamSDoFPreviewLog: %s::%s line %d: numTiles = %dx%d from per-frame parameters don't match per-device parameters %dx%d\n", buf, 0x34u);
    }

    CVPixelBufferLockBaseAddress(a16, 0);
    v40 = CVPixelBufferGetBaseAddress(a16);
    v41 = CVPixelBufferGetHeight(a16);
    CVPixelBufferGetWidth(a16);
    v42 = CVPixelBufferGetBytesPerRow(a16);
    bzero(v40, v42 * v41);
    v43 = 0;
    CVPixelBufferUnlockBaseAddress(a16, 0);
  }

  *a17 = v43;
}

void sub_1DED60818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_guard_abort(&qword_1ECDE15D8);

  _Unwind_Resume(a1);
}

uint64_t sub_1DED609A4(uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t sub_1DED60BE4(uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

unsigned int sub_1DED60E24(uint64_t a1, void *a2, int *a3)
{
  _H0 = *(*a2 + 2 * *a3);
  __asm { FCVT            S0, H0 }

  return llroundf(_S0 * 255.0);
}

uint64_t sub_1DED60EF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9F10;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DED6104C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9E80;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DED61198(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9DF0;
  a2[1] = v2;
  return result;
}

void sub_1DED62EC4(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 56));
  CVPixelBufferRelease(*(a1 + 64));
  CVPixelBufferRelease(*(a1 + 72));
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *(*(a1 + 40) + 1024);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DED62F8C;
  block[3] = &unk_1E869AFA8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v6 = v3;
  v7 = v4;
  block[4] = *(a1 + 40);
  dispatch_async(v2, block);
}

intptr_t sub_1DED62F8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1032);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED63CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  __cxa_guard_abort(&qword_1ECDE1640);

  _Unwind_Resume(a1);
}

void sub_1DED63F6C(uint64_t a1, void *a2)
{
  v3 = a2;
  CVPixelBufferRelease(*(a1 + 56));
  CVPixelBufferRelease(*(a1 + 64));
  CVPixelBufferRelease(*(a1 + 72));
  v4 = *(*(*(a1 + 32) + 40) + 48);
  [v3 GPUEndTime];
  v13 = 8;
  strcpy(__p, "SDoF GPU");
  sub_1DED4A57C(v4, __p, v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(*(a1 + 32) + 1024);
    goto LABEL_3;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DED640D4;
  v9[3] = &unk_1E869AFA8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v10 = v7;
  v11 = v8;
  v9[4] = *(a1 + 32);
  dispatch_async(v6, v9);
}

void sub_1DED640AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

intptr_t sub_1DED640D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1032);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED64130()
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  *cStr = 0u;
  v9 = 0u;
  v7 = 64;
  sysctlbyname("hw.model", cStr, &v7, 0, 0);
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v2 = Mutable;
    CFStringAppendCString(Mutable, cStr, 0);
    Length = CFStringGetLength(v2);
    if (CFStringHasSuffix(v2, @"AP"))
    {
      v4 = Length - 2;
    }

    else
    {
      v4 = 0;
    }

    if (CFStringHasSuffix(v2, @"DEV"))
    {
      v5.length = Length - 3;
    }

    else
    {
      v5.length = v4;
    }

    if (v5.length < 1)
    {
      v6 = CFRetain(v2);
    }

    else
    {
      v5.location = 0;
      v6 = CFStringCreateWithSubstring(v0, v2, v5);
    }

    qword_1ECDE10A8 = v6;
    CFRelease(v2);
  }

  if (!qword_1ECDE10A8)
  {
    qword_1ECDE10A8 = @"N51";
  }
}

void sub_1DED64710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1DED65004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DED66804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  __cxa_guard_abort(&qword_1ECDE15F8);

  _Unwind_Resume(a1);
}

void sub_1DED66914(uint64_t a1, void *a2)
{
  v3 = a2;
  CVPixelBufferRelease(*(a1 + 56));
  CVPixelBufferRelease(*(a1 + 64));
  v4 = *(*(*(a1 + 32) + 40) + 48);
  [v3 GPUEndTime];
  v13 = 14;
  strcpy(__p, "AlphaMatte GPU");
  sub_1DED4A57C(v4, __p, v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(*(a1 + 32) + 1040);
    goto LABEL_3;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DED66A78;
  v9[3] = &unk_1E869AFA8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v10 = v7;
  v11 = v8;
  v9[4] = *(a1 + 32);
  dispatch_async(v6, v9);
}

void sub_1DED66A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

intptr_t sub_1DED66A78(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1048);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED675B4(uint64_t a1, void *a2)
{
  v3 = a2;
  CVPixelBufferRelease(*(a1 + 56));
  v4 = *(*(*(a1 + 32) + 40) + 48);
  [v3 GPUEndTime];
  v13 = 15;
  strcpy(__p, "DisparityPP GPU");
  sub_1DED4A57C(v4, __p, v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(*(a1 + 32) + 1040);
    goto LABEL_3;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DED67710;
  v9[3] = &unk_1E869AFA8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v10 = v7;
  v11 = v8;
  v9[4] = *(a1 + 32);
  dispatch_async(v6, v9);
}

void sub_1DED676E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

intptr_t sub_1DED67710(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1048);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED67AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DED67AC0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(**(a1 + 40));
  }

  return result;
}

void sub_1DED6A06C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VideoMattingMetal;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1DED6BDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1DED6C3E8(&a27);

  _Unwind_Resume(a1);
}

id sub_1DED6C1F0(id **a1, void *a2, char a3)
{
  v5 = a2;
  v8 = a3;
  v6 = [**a1 copy];
  [v6 setConstantValue:&v8 type:53 withName:v5];

  return v6;
}

void *sub_1DED6C284(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1DED35334();
  }

  return a1;
}

void *sub_1DED6C348(void *a1, char *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_1DED35334();
  }

  return a1;
}

id **sub_1DED6C3E8(id **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {

        v3 -= 3;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1DED6D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

uint64_t sub_1DED6E170(uint64_t a1, CVPixelBufferRef pixelBuffer, CVPixelBufferRef a3, int a4, char a5, double a6, double a7, double a8, double a9)
{
  v16 = pixelBuffer;
  if (*(a1 + 28) > 0 || *(a1 + 32) >= 1)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferLockBaseAddress(*(a1 + 48), 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v16);
    CVPixelBufferGetHeight(v16);
    CVPixelBufferGetWidth(v16);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v16);
    v20 = CVPixelBufferGetBaseAddress(*(a1 + 48));
    Height = CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetWidth(*(a1 + 48));
    v22 = CVPixelBufferGetBytesPerRow(*(a1 + 48));
    if ((v22 * Height) >= 1)
    {
      memset_pattern16(v20, &unk_1DED74120, v22 * Height);
    }

    v23 = *(a1 + 32);
    v24 = *(a1 + 8);
    if (v23 < v24)
    {
      v25 = *(a1 + 28);
      v26 = *(a1 + 4);
      if (v25 < v26)
      {
        v27 = v26 - v25;
        if ((v26 - v25) > 7)
        {
          v33 = 4 * v26;
          v34 = BaseAddress >= &v20[v22 * (v24 - 1) + v33] || &v20[4 * v25 + v22 * v23] >= &BaseAddress[v33 + BytesPerRow * (~v23 + v24) - 4 * v25];
          if (!v34 || ((v22 | BytesPerRow) & 0x8000000000000000) != 0)
          {
            v49 = &v20[4 * v25 + v22 * v23];
            do
            {
              v50 = BaseAddress;
              v51 = v49;
              v52 = v27;
              do
              {
                v53 = *v50;
                v50 += 4;
                *v51 = v53;
                v51 += 4;
                --v52;
              }

              while (v52);
              ++v23;
              v49 += v22;
              BaseAddress += BytesPerRow;
            }

            while (v23 != v24);
          }

          else
          {
            v35 = (BaseAddress + 16);
            v36 = &v20[4 * v25 + v22 * v23];
            v37 = v36 + 16;
            v38 = (4 * v27) & 0xFFFFFFFFFFFFFFE0;
            v39 = &v36[v38];
            v40 = &BaseAddress[v38];
            do
            {
              v41 = v37;
              v42 = v35;
              v43 = v27 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v44 = *v42;
                *(v41 - 1) = *(v42 - 1);
                *v41 = v44;
                v42 += 2;
                v41 += 2;
                v43 -= 8;
              }

              while (v43);
              if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
              {
                v45 = v40;
                v46 = v39;
                v47 = v27 - (v27 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v48 = *v45;
                  v45 += 4;
                  *v46 = v48;
                  v46 += 4;
                  --v47;
                }

                while (v47);
              }

              ++v23;
              v35 = (v35 + BytesPerRow);
              v37 = (v37 + v22);
              v39 += v22;
              v40 += BytesPerRow;
            }

            while (v23 != v24);
          }
        }

        else
        {
          v28 = &v20[4 * v25 + v22 * v23];
          do
          {
            v29 = BaseAddress;
            v30 = v28;
            v31 = v27;
            do
            {
              v32 = *v29;
              v29 += 4;
              *v30 = v32;
              v30 += 4;
              --v31;
            }

            while (v31);
            ++v23;
            v28 += v22;
            BaseAddress += BytesPerRow;
          }

          while (v23 != v24);
        }
      }
    }

    CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);
    v16 = *(a1 + 48);
  }

  v54 = *(a1 + 12);
  v55 = *(a1 + 20);
  if (v54 == v55)
  {
    v56 = *(a1 + 16) != *(a1 + 24);
    v105 = a4;
    if ((a5 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_40:
    if (a4)
    {
      v60 = *(a1 + 24) * a8 != v55 * a9 || v56;
      if ((v60 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (!v56)
    {
LABEL_45:
      v61 = 0;
      v62 = a3;
      goto LABEL_48;
    }

    v62 = *(a1 + 56);
    v61 = 1;
LABEL_48:
    CVPixelBufferLockBaseAddress(v16, 1uLL);
    CVPixelBufferLockBaseAddress(v62, 0);
    src.data = CVPixelBufferGetBaseAddress(v16);
    src.height = CVPixelBufferGetHeight(v16);
    src.width = CVPixelBufferGetWidth(v16);
    src.rowBytes = CVPixelBufferGetBytesPerRow(v16);
    dest.data = CVPixelBufferGetBaseAddress(v62);
    dest.height = CVPixelBufferGetHeight(v62);
    dest.width = CVPixelBufferGetWidth(v62);
    dest.rowBytes = CVPixelBufferGetBytesPerRow(v62);
    vImageRotate90_PlanarF(&src, &dest, *(a1 + 44), 0.0, 0);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);
    CVPixelBufferUnlockBaseAddress(v62, 0);
    v16 = v62;
    if ((v61 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_49;
  }

  v56 = 1;
  v105 = a4;
  if (a5)
  {
    goto LABEL_40;
  }

LABEL_34:
  v57 = *(a1 + 4);
  if (v54 == v57)
  {
    v58 = *(a1 + 16);
    v59 = *(a1 + 8);
    if (a4)
    {
      if (v58 == v59 && v59 * a8 == v57 * a9)
      {
        goto LABEL_62;
      }
    }

    else if (v58 == v59)
    {
      goto LABEL_62;
    }
  }

LABEL_49:
  CVPixelBufferLockBaseAddress(v16, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  v63 = CVPixelBufferGetBaseAddress(v16);
  v64 = CVPixelBufferGetHeight(v16);
  Width = CVPixelBufferGetWidth(v16);
  v66 = CVPixelBufferGetBytesPerRow(v16);
  v67 = CVPixelBufferGetBaseAddress(a3);
  v68 = CVPixelBufferGetHeight(a3);
  v69 = CVPixelBufferGetWidth(a3);
  v70 = CVPixelBufferGetBytesPerRow(a3);
  v71 = a8;
  v72 = a9;
  if (v105)
  {
    v73 = a7;
  }

  else
  {
    v72 = v64;
    v71 = Width;
    v73 = 0.0;
  }

  if (v105)
  {
    v74 = a6;
  }

  else
  {
    v74 = 0.0;
  }

  if (v68 && v69)
  {
    v75 = 0;
    v76 = v71 / v69;
    v77 = v72 / v68;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        *&v67[4 * i] = *&v63[4 * (v74 + (i * v76)) + v66 * (v73 + (v75 * v77))];
      }

      ++v75;
      v67 += v70;
    }

    while (v75 != v68);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(v16, 1uLL);
LABEL_62:
  CVPixelBufferLockBaseAddress(a3, 0);
  v79 = CVPixelBufferGetBaseAddress(a3);
  CVPixelBufferGetHeight(a3);
  CVPixelBufferGetWidth(a3);
  v80 = CVPixelBufferGetBytesPerRow(a3);
  v81 = v80;
  v82 = *(a1 + 16);
  if (v82 >= 1)
  {
    v83 = *(a1 + 36);
    v84 = *(a1 + 12);
    v85 = v84 + ~v83;
    if (v83 < 1)
    {
      v95 = &v79[4 * v85];
      v96 = *(a1 + 16);
      do
      {
        *v95 = *(v95 - 1);
        v95 += v80;
        --v96;
      }

      while (v96);
    }

    else
    {
      v86 = 0;
      v87 = v84 - 1;
      v88 = v84 - 1 + ~v83;
      v89 = &v79[4 * v87];
      v90 = v79;
      do
      {
        v91 = &v79[v81 * v86];
        v92 = v90;
        v93 = v89;
        v94 = v83;
        do
        {
          *v92++ = *&v91[4 * v83];
          *v93 = *&v91[4 * v88];
          v93 -= 4;
          --v94;
        }

        while (v94);
        *&v91[4 * v85] = *&v91[4 * v85 - 4];
        ++v86;
        v89 += v81;
        v90 = (v90 + v81);
      }

      while (v86 != v82);
    }
  }

  LODWORD(v97) = *(a1 + 40);
  if (v97 >= 1)
  {
    v98 = 0;
    v99 = -1;
    v100 = v79;
    do
    {
      v101 = *(a1 + 16);
      v102 = &v79[v81 * (v99 + v101)];
      v103 = &v79[v81 * (v101 - v97 - 2)];
      memcpy(v100, &v79[v81 * v97], v81);
      memcpy(v102, v103, v81);
      ++v98;
      v97 = *(a1 + 40);
      --v99;
      v100 += v81;
    }

    while (v98 < v97);
    LODWORD(v82) = *(a1 + 16);
  }

  memcpy(&v79[v81 * (v82 + ~v97)], &v79[v81 * (v82 + ~v97 - 1)], v81);
  return CVPixelBufferUnlockBaseAddress(a3, 0);
}

uint64_t sub_1DED6E838(uint64_t a1, CVPixelBufferRef pixelBuffer, CVPixelBufferRef a3, int a4, char a5, double a6, double a7, double a8, double a9)
{
  v16 = pixelBuffer;
  if (*(a1 + 28) > 0 || *(a1 + 32) >= 1)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferLockBaseAddress(*(a1 + 48), 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v16);
    CVPixelBufferGetHeight(v16);
    CVPixelBufferGetWidth(v16);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v16);
    v20 = CVPixelBufferGetBaseAddress(*(a1 + 48));
    Height = CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetWidth(*(a1 + 48));
    v22 = CVPixelBufferGetBytesPerRow(*(a1 + 48));
    if ((v22 * Height) >= 1)
    {
      memset_pattern16(v20, &unk_1DED74130, v22 * Height);
    }

    v23 = *(a1 + 32);
    v24 = *(a1 + 8);
    if (v23 >= v24)
    {
      goto LABEL_36;
    }

    v25 = *(a1 + 28);
    v26 = *(a1 + 4);
    if (v25 >= v26)
    {
      goto LABEL_36;
    }

    v27 = v26 - v25;
    if ((v26 - v25) <= 3)
    {
      v28 = &v20[2 * v25 + v22 * v23];
      do
      {
        v29 = BaseAddress;
        v30 = v28;
        v31 = v27;
        do
        {
          v32 = *v29;
          v29 += 2;
          *v30 = v32;
          v30 += 2;
          --v31;
        }

        while (v31);
        ++v23;
        v28 += v22;
        BaseAddress += BytesPerRow;
      }

      while (v23 != v24);
LABEL_36:
      CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0);
      CVPixelBufferUnlockBaseAddress(v16, 1uLL);
      v16 = *(a1 + 48);
      goto LABEL_37;
    }

    v33 = 2 * v26;
    v34 = BaseAddress >= &v20[v22 * (v24 - 1) + v33] || &v20[2 * v25 + v22 * v23] >= &BaseAddress[v33 + BytesPerRow * (~v23 + v24) - 2 * v25];
    if (!v34 || ((v22 | BytesPerRow) & 0x8000000000000000) != 0)
    {
      v49 = &v20[2 * v25 + v22 * v23];
      do
      {
        v50 = BaseAddress;
        v51 = v49;
        v52 = v27;
        do
        {
          v53 = *v50;
          v50 += 2;
          *v51 = v53;
          v51 += 2;
          --v52;
        }

        while (v52);
        ++v23;
        v49 += v22;
        BaseAddress += BytesPerRow;
      }

      while (v23 != v24);
      goto LABEL_36;
    }

    v35 = (BaseAddress + 16);
    v36 = &v20[2 * v25 + v22 * v23];
    v37 = v36 + 16;
    while (v27 >= 0x10)
    {
      v39 = v37;
      v40 = v35;
      v41 = v27 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v42 = *v40;
        *(v39 - 1) = *(v40 - 1);
        *v39 = v42;
        v40 += 2;
        v39 += 2;
        v41 -= 16;
      }

      while (v41);
      if (v27 == (v27 & 0xFFFFFFFFFFFFFFF0))
      {
        goto LABEL_20;
      }

      v38 = v27 & 0xFFFFFFFFFFFFFFF0;
      v43 = v27 & 0xFFFFFFFFFFFFFFF0;
      if ((v27 & 0xC) != 0)
      {
        goto LABEL_27;
      }

      do
      {
LABEL_30:
        *&v36[2 * v43] = *&BaseAddress[2 * v43];
        ++v43;
      }

      while (v27 != v43);
LABEL_20:
      ++v23;
      v35 = (v35 + BytesPerRow);
      v37 = (v37 + v22);
      v36 += v22;
      BaseAddress += BytesPerRow;
      if (v23 == v24)
      {
        goto LABEL_36;
      }
    }

    v38 = 0;
LABEL_27:
    v44 = v38 - (v27 & 0xFFFFFFFFFFFFFFFCLL);
    v45 = 2 * v38;
    v46 = &v36[2 * v38];
    v47 = &BaseAddress[v45];
    do
    {
      v48 = *v47;
      v47 += 8;
      *v46 = v48;
      v46 += 8;
      v44 += 4;
    }

    while (v44);
    v43 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    if (v27 == (v27 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_37:
  v54 = *(a1 + 12);
  v55 = *(a1 + 20);
  if (v54 == v55)
  {
    v56 = *(a1 + 16) != *(a1 + 24);
    v105 = a4;
    if ((a5 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_45:
    if (a4)
    {
      v60 = *(a1 + 24) * a8 != v55 * a9 || v56;
      if ((v60 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (!v56)
    {
LABEL_50:
      v61 = 0;
      v62 = a3;
      goto LABEL_53;
    }

    v62 = *(a1 + 56);
    v61 = 1;
LABEL_53:
    CVPixelBufferLockBaseAddress(v16, 1uLL);
    CVPixelBufferLockBaseAddress(v62, 0);
    src.data = CVPixelBufferGetBaseAddress(v16);
    src.height = CVPixelBufferGetHeight(v16);
    src.width = CVPixelBufferGetWidth(v16);
    src.rowBytes = CVPixelBufferGetBytesPerRow(v16);
    dest.data = CVPixelBufferGetBaseAddress(v62);
    dest.height = CVPixelBufferGetHeight(v62);
    dest.width = CVPixelBufferGetWidth(v62);
    dest.rowBytes = CVPixelBufferGetBytesPerRow(v62);
    vImageRotate90_Planar16F(&src, &dest, *(a1 + 44), 0, 0);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);
    CVPixelBufferUnlockBaseAddress(v62, 0);
    v16 = v62;
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  v56 = 1;
  v105 = a4;
  if (a5)
  {
    goto LABEL_45;
  }

LABEL_39:
  v57 = *(a1 + 4);
  if (v54 == v57)
  {
    v58 = *(a1 + 16);
    v59 = *(a1 + 8);
    if (a4)
    {
      if (v58 == v59 && v59 * a8 == v57 * a9)
      {
        goto LABEL_67;
      }
    }

    else if (v58 == v59)
    {
      goto LABEL_67;
    }
  }

LABEL_54:
  CVPixelBufferLockBaseAddress(v16, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  v63 = CVPixelBufferGetBaseAddress(v16);
  v64 = CVPixelBufferGetHeight(v16);
  Width = CVPixelBufferGetWidth(v16);
  v66 = CVPixelBufferGetBytesPerRow(v16);
  v67 = CVPixelBufferGetBaseAddress(a3);
  v68 = CVPixelBufferGetHeight(a3);
  v69 = CVPixelBufferGetWidth(a3);
  v70 = CVPixelBufferGetBytesPerRow(a3);
  v71 = a8;
  v72 = a9;
  if (v105)
  {
    v73 = a7;
  }

  else
  {
    v72 = v64;
    v71 = Width;
    v73 = 0.0;
  }

  if (v105)
  {
    v74 = a6;
  }

  else
  {
    v74 = 0.0;
  }

  if (v68 && v69)
  {
    v75 = 0;
    v76 = v71 / v69;
    v77 = v72 / v68;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        *&v67[2 * i] = *&v63[2 * (v74 + (i * v76)) + v66 * (v73 + (v75 * v77))];
      }

      ++v75;
      v67 += v70;
    }

    while (v75 != v68);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(v16, 1uLL);
LABEL_67:
  CVPixelBufferLockBaseAddress(a3, 0);
  v79 = CVPixelBufferGetBaseAddress(a3);
  CVPixelBufferGetHeight(a3);
  CVPixelBufferGetWidth(a3);
  v80 = CVPixelBufferGetBytesPerRow(a3);
  v81 = v80;
  v82 = *(a1 + 16);
  if (v82 >= 1)
  {
    v83 = *(a1 + 36);
    v84 = *(a1 + 12);
    v85 = v84 + ~v83;
    if (v83 < 1)
    {
      v95 = &v79[2 * v85];
      v96 = *(a1 + 16);
      do
      {
        *v95 = *(v95 - 1);
        v95 += v80;
        --v96;
      }

      while (v96);
    }

    else
    {
      v86 = 0;
      v87 = v84 - 1;
      v88 = v84 - 1 + ~v83;
      v89 = &v79[2 * v87];
      v90 = v79;
      do
      {
        v91 = &v79[v81 * v86];
        v92 = v90;
        v93 = v89;
        v94 = v83;
        do
        {
          *v92++ = *&v91[2 * v83];
          *v93 = *&v91[2 * v88];
          v93 -= 2;
          --v94;
        }

        while (v94);
        *&v91[2 * v85] = *&v91[2 * v85 - 2];
        ++v86;
        v89 += v81;
        v90 = (v90 + v81);
      }

      while (v86 != v82);
    }
  }

  LODWORD(v97) = *(a1 + 40);
  if (v97 >= 1)
  {
    v98 = 0;
    v99 = -1;
    v100 = v79;
    do
    {
      v101 = *(a1 + 16);
      v102 = &v79[v81 * (v99 + v101)];
      v103 = &v79[v81 * (v101 - v97 - 2)];
      memcpy(v100, &v79[v81 * v97], v81);
      memcpy(v102, v103, v81);
      ++v98;
      v97 = *(a1 + 40);
      --v99;
      v100 += v81;
    }

    while (v98 < v97);
    LODWORD(v82) = *(a1 + 16);
  }

  memcpy(&v79[v81 * (v82 + ~v97)], &v79[v81 * (v82 + ~v97 - 1)], v81);
  return CVPixelBufferUnlockBaseAddress(a3, 0);
}

void sub_1DED6F850(uint64_t *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 threadExecutionWidth];
  v4 = [v6 maxTotalThreadsPerThreadgroup];
  v5 = [v6 threadExecutionWidth];
  *a1 = v3;
  a1[1] = v4 / v5;
  a1[2] = 1;
}

id sub_1DED6F8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a1 width:a2 height:a3 mipmapped:0];
  [v3 setUsage:3];
  [v3 setResourceOptions:0];

  return v3;
}

id sub_1DED6F954(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType == 1751411059 || PixelFormatType == 1278226536)
    {
      v3 = 25;
      goto LABEL_11;
    }
  }

  else
  {
    if (PixelFormatType == 1278226488)
    {
      v3 = 10;
      goto LABEL_11;
    }

    if (PixelFormatType == 1278226534)
    {
      v3 = 55;
LABEL_11:
      Width = CVPixelBufferGetWidth(a1);
      v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v3 width:Width height:CVPixelBufferGetHeight(a1) mipmapped:0];
      [v9 setUsage:3];
      [v9 setResourceOptions:0];
      goto LABEL_12;
    }
  }

  v4 = PixelFormatType;
  v5 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v3 = 500;
    goto LABEL_11;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format type: %i", CVPixelBufferGetPixelFormatType(a1)];
  v13 = [v11 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "MTLTextureDescriptor *getMTLTextureDescriptor(CVPixelBufferRef _Nonnull)", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/metal/MetalHelpers.mm", 107, v12];
  sub_1DED25D64(1, 0, 4294944390, v13);

  v9 = 0;
LABEL_12:

  return v9;
}

void sub_1DED6FB28(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_1DED6FB5C(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1DED6F954(a1);
  v5 = [v3 newTextureWithDescriptor:v4 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v5;
}

void sub_1DED6FBF4(uint64_t *a1, __CVBuffer *a2, __CVBuffer *a3, void *a4)
{
  v17 = a4;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v8 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v10 = [v8 containsObject:v9];
  v11 = MEMORY[0x1E696AEC0];
  v12 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v13 = [v11 stringWithFormat:@"Source format should be either of %@ but is %d", v12, PixelFormatType];
  v14 = [v11 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "std::pair<id<MTLTexture>, id<MTLTexture>> getMTLTextureColorAlpha(const CVPixelBufferRef _Nonnull, const CVPixelBufferRef _Nonnull, __strong id<MTLDevice> _Nonnull)", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/metal/MetalHelpers.mm", 134, v13];
  sub_1DED25D64(v10 ^ 1u, 0, 4294944390, v14);

  if (v10)
  {
    v15 = sub_1DED6FB5C(a2, v17);
    v16 = sub_1DED6FB5C(a3, v17);
    *a1 = v15;
    a1[1] = v16;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

id sub_1DED6FDC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a2 width:a3 height:a4 mipmapped:0];
  [v12 setUsage:3];
  [v12 setResourceOptions:a5];
  v13 = [v11 newTextureWithDescriptor:v12];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[_Nonnull id<MTLDeviceSPI newTextureWithDescriptor:textureDescriptor(%lu, %lu, %lu)] is nil", a2, a3, a4];
  v16 = [v14 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "id<MTLTexture> metalTexture(__strong id<MTLDevice> _Nonnull, MTLPixelFormat, NSUInteger, NSUInteger, MTLResourceOptions, NSError *__autoreleasing * _Nullable)", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/metal/MetalHelpers.mm", 166, v15];
  sub_1DED25D64(v13 == 0, a6, 4294944382, v16);

  return v13;
}

id sub_1DED6FF44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = sub_1DED6FDC8(a1, a2, a3, a4, 0, a5);

  return v5;
}

id sub_1DED6FF78(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (![v3 length])
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MTLTexture> lutTextureFromData(NSData *__strong _Nonnull, __strong id<MTLDeviceSPI> _Nonnull)"}];
      [v11 handleFailureInFunction:v12 file:@"MetalHelpers.mm" lineNumber:262 description:@"Cube data length must not be zero"];
    }

    if (([v3 length] & 3) != 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MTLTexture> lutTextureFromData(NSData *__strong _Nonnull, __strong id<MTLDeviceSPI> _Nonnull)"}];
      [v13 handleFailureInFunction:v14 file:@"MetalHelpers.mm" lineNumber:264 description:@"Cube data length must be a multiple of 4 bytes (rgba8)"];
    }

    v5 = [v3 length] >> 2;
    v6 = cbrt(v5);
    if (v6 * v6 * v6 != v5)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MTLTexture> lutTextureFromData(NSData *__strong _Nonnull, __strong id<MTLDeviceSPI> _Nonnull)"}];
      [v15 handleFailureInFunction:v16 file:@"MetalHelpers.mm" lineNumber:269 description:@"Cube data number of entries must be a perfect cube"];
    }

    v7 = objc_alloc_init(MEMORY[0x1E69741C0]);
    [v7 setTextureType:7];
    [v7 setHeight:v6];
    [v7 setWidth:v6];
    [v7 setDepth:v6];
    [v7 setPixelFormat:70];
    [v7 setArrayLength:1];
    [v7 setMipmapLevelCount:1];
    v8 = [v4 newTextureWithDescriptor:v7];
    memset(v17, 0, 24);
    v17[3] = v6;
    v17[4] = v6;
    v17[5] = v6;
    [v8 replaceRegion:v17 mipmapLevel:0 slice:0 withBytes:objc_msgSend(v3 bytesPerRow:"bytes" bytesPerImage:{0, 0, 0, v6, v6, v6), 4 * v6, 4 * v6 * v6}];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *sub_1DED70280(void *result, uint64_t a2, int a3)
{
  v3 = result;
  if (*(a2 + 56) == 1)
  {
    result[3] = result;
    *result = &unk_1F59F9FC0;
  }

  else
  {
    if (a3)
    {
      if (++dword_1ECDE1654 == a3)
      {
        v5 = objc_opt_new();
        [v5 setCaptureObject:*(a2 + 40)];
        v6 = [MEMORY[0x1E6974000] sharedCaptureManager];
        [v6 startCaptureWithDescriptor:v5 error:0];
      }
    }

    result = [*(a2 + 40) beginScope];
    *(a2 + 56) = 1;
    *v3 = &unk_1F59FA008;
    v3[1] = a2;
    v3[2] = &v7;
    v3[3] = v3;
  }

  return result;
}

void sub_1DED70390(uint64_t a1)
{
  v2 = *(a1 + 8);
  [*(v2 + 40) endScope];
  if (dword_1ECDE1654 == **(a1 + 16))
  {
    v3 = [MEMORY[0x1E6974000] sharedCaptureManager];
    [v3 stopCapture];
  }

  *(v2 + 56) = 0;
}

__n128 sub_1DED7040C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59FA008;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1DED70534(void *a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a1;
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:16 height:12 mipmapped:0];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:16 height:12 mipmapped:0];
  [v10 setUsage:3];
  v11 = [v7 newTextureWithDescriptor:v9];
  v12 = [v7 newTextureWithDescriptor:v10];
  [v13 encodeToCommandBuffer:v8 sourceTexture:v11 destinationTexture:v12];
}

void sub_1DED70638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

uint64_t sub_1DED7068C(uint64_t a1, float *a2, float a3)
{
  if (vabds_f32(*(a1 + 4), a3) >= *a2)
  {
    *a1 = 0;
    *(a1 + 4) = a3;
    return 1;
  }

  else if (a2[1] <= *a1)
  {
    *a1 = 0;
    return 0;
  }

  else
  {
    ++*a1;
    return 1;
  }
}

uint64_t sub_1DED706E0(uint64_t a1, float *a2, float a3)
{
  if (vabds_f32(*(a1 + 4), a3) >= *a2)
  {
    v4 = 0;
    *(a1 + 4) = a3;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *a1 + 1;
  }

  *a1 = v4;
  return v3;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}