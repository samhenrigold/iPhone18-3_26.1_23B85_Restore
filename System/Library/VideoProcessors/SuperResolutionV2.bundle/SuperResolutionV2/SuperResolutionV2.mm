id sub_1EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_arg(va1, void);
  v19 = v13;

  return [v12 dispatchThreads:va1 threadsPerThreadgroup:{va, a5, a6}];
}

float sub_1ED8@<S0>(unsigned int a1@<W8>, float result@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>)
{
  v6 = fminf(fmaxf((a1 + result) / a3, a4), result);
  _S6 = (v6 * v6) * (a5 + (v6 * a6));
  __asm { FCVT            H6, S6 }

  return result;
}

uint64_t sub_1F20()
{

  return fig_log_get_emitter();
}

uint64_t sub_1FB4()
{

  return fig_log_get_emitter();
}

void sub_1FD8()
{
  v2 = v0[1] >> 1;
  *(v1 - 120) = *v0 >> 1;
  *(v1 - 112) = v2;
}

id sub_1FF0(void *a1, const char *a2)
{

  return [a1 setBytes:v2 length:24 atIndex:0];
}

id sub_200C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 setTexture:a3 atIndex:1];
}

id sub_2080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_arg(va1, void);
  v11 = v5;

  return [v4 dispatchThreads:va1 threadsPerThreadgroup:va];
}

id sub_20A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 setTexture:a3 atIndex:0];
}

uint64_t sub_20B8()
{

  return fig_log_get_emitter();
}

void *sub_20D0(size_t a1)
{

  return malloc_type_calloc(a1, 2uLL, v1);
}

id sub_2948(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v12 = va_arg(va1, void);
  v9 = a1;
  v11 = v6;

  return [v5 dispatchThreads:va1 threadsPerThreadgroup:va];
}

id sub_29D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return [v4 dispatchThreads:va1 threadsPerThreadgroup:va];
}

id sub_2A78()
{

  return [v0 setComputePipelineState:v1];
}

id sub_2A90(void *a1, const char *a2)
{

  return [a1 newTextureWithDescriptor:v2];
}

id sub_2AA8(void *a1, const char *a2)
{

  return [a1 newTextureWithDescriptor:v2];
}

id sub_2AE0()
{

  return [v0 setBytes:v1 + 288 length:16 atIndex:0];
}

id sub_2B00(void *a1, const char *a2)
{

  return [a1 setImageblockWidth:32 height:32];
}

id sub_354C()
{

  return [v0 setBytes:v1 - 160 length:32 atIndex:0];
}

id sub_356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  return [v42 setBytes:va length:48 atIndex:{1, a6, a7, a8}];
}

uint64_t sub_358C()
{

  return fig_log_get_emitter();
}

uint64_t sub_36A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CVPixelBufferRef *a6)
{

  return CVPixelBufferCreate(v7, 0x400uLL, v9, v8, v6, a6);
}

id sub_3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return [v22 setBytes:va length:80 atIndex:{0, a6, a7, a8}];
}

uint64_t sub_3748()
{

  return fig_log_get_emitter();
}

id sub_3950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return [v4 dispatchThreads:va1 threadsPerThreadgroup:va];
}

id sub_3980()
{

  return [v1 setTexture:v0 atIndex:0];
}

id sub_39A8()
{

  return [v0 setBytes:v1 + 288 length:32 atIndex:0];
}

uint64_t sub_39C8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_12664(v7, a2, a3, 5uLL, a5, a6, 1, v6);
}

uint64_t sub_39E8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_12664(v7, a2, a3, 3uLL, a5, a6, 1, v6);
}

id sub_3A08(void *a1, const char *a2)
{

  return [a1 newTextureWithDescriptor:v2];
}

id sub_3A20()
{

  return [v0 setComputePipelineState:v1];
}

id sub_3A38()
{

  return [v0 maxTotalThreadsPerThreadgroup];
}

uint64_t sub_4114(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteClearOutputTexture" constants:0];
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  if (*(a1 + 32))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteTileCutKernel" constants:0];
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;

    if (*(a1 + 40))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteTileMergeKernel" constants:0];
      v7 = *(a1 + 48);
      *(a1 + 48) = v6;

      if (*(a1 + 48))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteTilePasteKernel" constants:0];
        v9 = *(a1 + 56);
        *(a1 + 56) = v8;

        if (*(a1 + 56))
        {
          v10 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLitePaste2xFullChromaKernel" constants:0];
          v11 = *(a1 + 96);
          *(a1 + 96) = v10;

          if (*(a1 + 96))
          {
            v12 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteEnhanceTile" constants:0];
            v13 = *(a1 + 64);
            *(a1 + 64) = v12;

            if (*(a1 + 64))
            {
              v14 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteComputeBlendingMask" constants:0];
              v15 = *(a1 + 80);
              *(a1 + 80) = v14;

              if (*(a1 + 80))
              {
                v16 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteGaussian5RowGather" constants:0];
                v17 = *(a1 + 72);
                *(a1 + 72) = v16;

                if (*(a1 + 72))
                {
                  v18 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteBlendEnhanced" constants:0];
                  v19 = *(a1 + 88);
                  *(a1 + 88) = v18;

                  if (*(a1 + 88))
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22, v23, v24, v25, v26, v27, vars0, vars8);
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM(v21);
}

id sub_46F0(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  if (a1)
  {
    image = 0;
    if (a2)
    {
      v4 = a1;
      v5 = [[NSMutableArray alloc] initWithCapacity:2];
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v21 = kCVMetalTextureUsage;
        v8 = 1;
        while (1)
        {
          v9 = sub_61D0(v4, PixelFormatType, v6);
          if (!v9)
          {
            break;
          }

          v10 = v9;
          v24 = v8;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v6);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v6);
          v25 = v21;
          [NSNumber numberWithUnsignedInteger:a3];
          v14 = v13 = v4;
          v26 = v14;
          v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

          v4 = v13;
          v16 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(v13 + 24), a2, v15, v10, WidthOfPlane, HeightOfPlane, v6, &image);
          v17 = image;
          if (v16 || (CVMetalTextureGetTexture(image), objc_claimAutoreleasedReturnValue(), [sub_1FA4() setObject:? atIndexedSubscript:?], HeightOfPlane, objc_msgSend(v5, "objectAtIndexedSubscript:", v6), v18 = objc_claimAutoreleasedReturnValue(), v18, v17 = image, !v18))
          {
            v7 = v15;
            goto LABEL_18;
          }

          if (image)
          {
            CFRelease(image);
          }

          v6 = 1;
          v7 = v15;
          v8 = 0;
          if (((((PixelFormatType - 1278226534) & 0xFFFFFFFD) != 0) & v24) == 0)
          {
            v19 = v5;
            v5 = v19;
            goto LABEL_12;
          }
        }

        v17 = image;
LABEL_18:
        if (v17)
        {
          CFRelease(v17);
        }

        v19 = 0;
        v15 = v7;
        goto LABEL_12;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v5 = 0;
    }

    v15 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v19 = 0;
LABEL_13:

  return v19;
}

uint64_t sub_4940(uint64_t a1, __CVBuffer *a2, _WORD *a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    LOWORD(a4) = *a3;
    WORD2(a4) = a3[1];
    v97 = a4;
    v99 = a3[3];
    v5 = a3[2];
    v6 = sub_20D0(v5);
    if (v6)
    {
      v7 = v99;
      v8 = sub_20D0(v99);
      if (v8)
      {
        v9 = sub_20D0(v5 * v99);
        if (v9)
        {
          v10 = sub_20D0(v5 * v99);
          if (v10)
          {
            if (v5 >= 2)
            {
              sub_204C();
              do
              {
                v12 = sub_1ED8(v11, v12, v13, v14, v15, v16);
                *&v6[v17] = v18;
                *&v6[v20] = v19 - v18;
                v11 = v17 + 1;
              }

              while (v21 != v11);
            }

            if (v99 >= 2u)
            {
              sub_204C();
              do
              {
                v23 = sub_1ED8(v22, v23, v24, v25, v26, v27);
                v8[v28] = v29;
                v8[v31] = v30 - v29;
                v22 = v28 + 1;
              }

              while (v32 != v22);
            }

            v33 = 2 * v5;
            v98 = v8;
            if (v7)
            {
              v34 = 0;
              if (v5 >= v7)
              {
                v35 = v7;
              }

              else
              {
                v35 = v5;
              }

              v36 = (v35 + 1);
              v37 = v9;
              do
              {
                if (v5)
                {
                  v38 = v5;
                  v39 = v37;
                  do
                  {
                    _D6 = sqrt(((v7 - v34) * (v7 - v34) + v38 * v38));
                    __asm
                    {
                      FCVT            H6, D6
                      FCVT            S6, H6
                    }

                    *&_D6 = fminf(fmaxf(*&_D6 / v36, 0.0), 1.0);
                    _D6 = 1.0 - ((*&_D6 * *&_D6) * ((*&_D6 * -2.0) + 3.0));
                    __asm { FCVT            H6, D6 }

                    *v39 = *&_D6;
                    __asm { FCMP            H6, #0 }

                    if (_ZF)
                    {
                      _H6 = *v6;
                    }

                    *v39++ = _H6;
                    --v38;
                  }

                  while (v38);
                }

                ++v34;
                v37 = (v37 + v33);
              }

              while (v34 != v7);
              v46 = 0;
              v47 = (v7 - 1) * v5;
              v48 = v5 - 1;
              v49 = v5 * v7 - 1;
              v50 = v10;
              v51 = v9;
              do
              {
                if (v5)
                {
                  v52 = 0;
                  v53 = v49;
                  v54 = v48;
                  do
                  {
                    v55 = v51[v52];
                    v50[v52] = v55;
                    v56 = v55 + v9[v54];
                    v50[v52] = v56;
                    v57 = v56 + v9[(v47 + v52)];
                    v50[v52] = v57;
                    v50[v52++] = v57 + v9[v53];
                    --v54;
                    --v53;
                  }

                  while (v5 != v52);
                }

                ++v46;
                v51 = (v51 + v33);
                v50 = (v50 + v33);
                v47 -= v5;
                v48 += v5;
                v49 -= v5;
              }

              while (v46 != v7);
              v58 = v7;
            }

            else
            {
              v58 = 0;
            }

            CVPixelBufferLockBaseAddress(a2, 0);
            BaseAddress = CVPixelBufferGetBaseAddress(a2);
            pixelBuffer = a2;
            BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
            v61 = 0;
            v62 = BytesPerRow >> 1;
            v63 = WORD2(v97) - v7;
            v64 = LOWORD(v97) - v5;
            v93 = 2 * WORD2(v97) * v62;
            v65 = 2 * v62;
            v95 = LOWORD(v97) - 1;
            do
            {
              v66 = 0;
              v94 = BaseAddress;
              v96 = BaseAddress;
              do
              {
                if (WORD2(v97))
                {
                  v67 = 0;
                  v68 = v95;
                  v69 = (WORD2(v97) - 1) * v5;
                  v70 = v10;
                  v71 = v9;
                  v72 = v96;
                  do
                  {
                    LOWORD(v73) = COERCE_UNSIGNED_INT(1.0);
                    if (v61 && v67 < v58)
                    {
                      v73 = v98[v67];
                    }

                    if (v61 != 2 && v67 >= v63)
                    {
                      v73 = v98[~v67 + WORD2(v97)];
                    }

                    if (LOWORD(v97))
                    {
                      v75 = 0;
                      v76 = v67 < v58 && v66 != 0;
                      v77 = v67 >= v58 || v66 == 2;
                      v78 = v67 >= v63 && v66 != 0;
                      v79 = v67 < v63 || v66 == 2;
                      v80 = !v76;
                      v81 = !v78;
                      v82 = v95;
                      v83 = v68;
                      do
                      {
                        if (v73 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                        {
                          LOWORD(v84) = COERCE_UNSIGNED_INT(1.0);
                          if (v66 && v75 < v5)
                          {
                            v84 = *&v6[v75];
                          }

                          if (v66 != 2 && v75 >= v64)
                          {
                            v84 = *&v6[v82];
                          }
                        }

                        else
                        {
                          if (v75 >= v5)
                          {
                            v86 = 1;
                          }

                          else
                          {
                            v86 = v80;
                          }

                          v84 = v73;
                          if ((v86 & 1) == 0)
                          {
                            v84 = v71[v75] / v70[v75];
                          }

                          v87 = v75 < v64 || v77;
                          if ((v87 & 1) == 0)
                          {
                            v84 = v9[v83] / v10[v83];
                          }

                          if (v75 >= v5)
                          {
                            v88 = 1;
                          }

                          else
                          {
                            v88 = v81;
                          }

                          if ((v88 & 1) == 0)
                          {
                            v84 = v9[(v69 + v75)] / v10[(v69 + v75)];
                          }

                          v89 = v75 < v64 || v79;
                          if ((v89 & 1) == 0)
                          {
                            v84 = v9[v69 + v82] / v10[v69 + v82];
                          }
                        }

                        *&v72[2 * v75++] = v84;
                        --v83;
                        --v82;
                      }

                      while (LOWORD(v97) != v75);
                    }

                    ++v67;
                    v72 += v65;
                    v71 = (v71 + v33);
                    v70 = (v70 + v33);
                    v69 -= v5;
                    v68 += v5;
                  }

                  while (v67 != WORD2(v97));
                }

                ++v66;
                v96 += 2 * LOWORD(v97);
              }

              while (v66 != 3);
              ++v61;
              BaseAddress = &v94[v93];
            }

            while (v61 != 3);
            CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
            v90 = 0;
            v8 = v98;
            goto LABEL_94;
          }

          goto LABEL_100;
        }

LABEL_99:
        v10 = 0;
LABEL_100:
        v90 = 4294954510;
        goto LABEL_94;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    goto LABEL_99;
  }

  v6 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v90 = 4294954516;
LABEL_94:
  free(v6);
  free(v8);
  free(v9);
  free(v10);
  return v90;
}

void sub_4E9C(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = a1[13];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[21];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[17];
    a1[17] = 0;

    v7 = a1[18];
    a1[18] = 0;

    v8 = a1[16];
    a1[16] = 0;

    v9 = a1[15];
    a1[15] = 0;

    v10 = a1[19];
    a1[19] = 0;
  }
}

uint64_t sub_5E78(uint64_t a1, void *a2, void *a3, int a4, int a5, id *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = v12;
  if (!a1)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = 4294954516;
  if (v11 && v12)
  {
    v15 = [*a6 computeCommandEncoder];
    if (!v15)
    {
      sub_20B8();
      sub_1F84();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v77, v81, v85, v89, v93, v95, v97, v98);
      sub_20B8();
      sub_1EAC();
      v14 = FigSignalErrorAtGM(v76);
      goto LABEL_7;
    }

    v16 = v15;
    v17 = *(a1 + 64);
    [v16 setComputePipelineState:v17];
    [v16 setTexture:v11 atIndex:0];
    [v16 setTexture:v13 atIndex:1];
    [v16 setTexture:*(a1 + 144) atIndex:2];
    v96 = v11;
    v97 = [v17 threadExecutionWidth];
    v18 = a4;
    v19 = a5;
    v100 = a4;
    v101 = a5;
    v102 = 1;
    v98 = [v17 maxTotalThreadsPerThreadgroup] / v97;
    v99 = 1;
    [v16 dispatchThreads:&v100 threadsPerThreadgroup:&v97];
    v20 = *(a1 + 80);

    v21 = [v16 setComputePipelineState:v20];
    v23 = sub_20A0(v21, v22, *(a1 + 144));
    sub_200C(v23, v24, *(a1 + 120));
    v25 = [v20 threadExecutionWidth];
    v26 = [v20 maxTotalThreadsPerThreadgroup];
    v94 = v13;
    v27 = 2 * a5;
    v100 = 2 * a4;
    v101 = v27;
    v102 = 1;
    v97 = v25;
    v98 = v26 / v25;
    sub_1EB8(v26, v28, v29, v30, v31, v32, v33, v34, v77, v81, v85, v100);
    v35 = *(a1 + 72);

    v36 = [v16 setComputePipelineState:v35];
    v38 = sub_20A0(v36, v37, *(a1 + 120));
    sub_200C(v38, v39, *(a1 + 128));
    v40 = [v35 threadExecutionWidth];
    v41 = [v35 maxTotalThreadsPerThreadgroup];
    v100 = v18;
    v101 = v19;
    v102 = 1;
    v97 = v40;
    v98 = v41 / v40;
    sub_1EB8(v41, v42, v43, v44, v45, v46, v47, v48, v78, v82, v86, v90);
    v49 = *(a1 + 72);

    v50 = [v16 setComputePipelineState:v49];
    v52 = sub_20A0(v50, v51, *(a1 + 128));
    sub_200C(v52, v53, *(a1 + 120));
    v54 = [v49 threadExecutionWidth];
    v55 = [v49 maxTotalThreadsPerThreadgroup];
    v100 = v19;
    v101 = v18;
    v11 = v96;
    v102 = 1;
    v97 = v54;
    v98 = v55 / v54;
    sub_1EB8(v55, v56, v57, v58, v59, v60, v61, v62, v79, v83, v87, v91);
    v63 = *(a1 + 88);

    [v16 setComputePipelineState:v63];
    v64 = [v16 setTexture:v96 atIndex:0];
    sub_200C(v64, v65, *(a1 + 144));
    [v16 setTexture:*(a1 + 120) atIndex:2];
    [v16 setTexture:*(a1 + 136) atIndex:3];
    v66 = [v63 threadExecutionWidth];
    v67 = [v63 maxTotalThreadsPerThreadgroup];
    v100 = v92;
    v101 = v27;
    v13 = v94;
    v102 = 1;
    v97 = v66;
    v98 = v67 / v66;
    sub_1EB8(v67, v68, v69, v70, v71, v72, v73, v74, v80, v84, v88, v92);
    [v16 endEncoding];

    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

uint64_t sub_61D0(uint64_t result, int a2, int a3)
{
  if (result)
  {
    if (a2 != 641230384)
    {
      if (a2 == 645424688)
      {
        goto LABEL_20;
      }

      if (a2 != 758670896)
      {
        if (a2 == 762865200)
        {
          goto LABEL_20;
        }

        if (a2 != 792225328)
        {
          if (a2 == 796419632)
          {
            goto LABEL_20;
          }

          if (a2 != 875704422)
          {
            switch(a2)
            {
              case 1278226534:
                return 55;
              case 1278226536:
                return 25;
              case 1751527984:
                v3 = a3 == 0;
                v4 = 65;
                v5 = 25;
                goto LABEL_17;
            }

            if (a2 != 1885745712)
            {
              if (a2 != 2019963440)
              {
                if (a2 != 2088265264)
                {
                  if (a2 != 2084070960)
                  {
                    return 0;
                  }

                  goto LABEL_16;
                }

                goto LABEL_20;
              }

              v3 = a3 == 0;
              v4 = 60;
              v5 = 20;
LABEL_17:
              if (v3)
              {
                return v5;
              }

              else
              {
                return v4;
              }
            }

LABEL_20:
            if (a3)
            {
              return 589;
            }

            else
            {
              return 588;
            }
          }
        }
      }
    }

LABEL_16:
    v3 = a3 == 0;
    v4 = 30;
    v5 = 10;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_6310()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM(v0);
}

uint64_t sub_63B4()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM(v0);
}

uint64_t sub_6458()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM(v0);
}

uint64_t sub_64FC()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM(v0);
}

uint64_t sub_65A0()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM(v0);
}

uint64_t sub_6644(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardClearOutputTexture" constants:0];
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  if (*(a1 + 32))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardTileCutKernel" constants:0];
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;

    if (*(a1 + 40))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardTileMergeKernel" constants:0];
      v7 = *(a1 + 56);
      *(a1 + 56) = v6;

      if (*(a1 + 56))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardTilePasteKernel" constants:0];
        v9 = *(a1 + 48);
        *(a1 + 48) = v8;

        if (*(a1 + 48))
        {
          return 0;
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v12, v13, v14, v15, v16, v17, vars0, vars8);
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM(v11);
}

id sub_6914(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  if (a1)
  {
    image = 0;
    if (a2)
    {
      v4 = a1;
      v5 = [[NSMutableArray alloc] initWithCapacity:2];
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v21 = kCVMetalTextureUsage;
        v8 = 1;
        while (1)
        {
          v9 = sub_61D0(v4, PixelFormatType, v6);
          if (!v9)
          {
            break;
          }

          v10 = v9;
          v24 = v8;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v6);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v6);
          v25 = v21;
          [NSNumber numberWithUnsignedInteger:a3];
          v14 = v13 = v4;
          v26 = v14;
          v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

          v4 = v13;
          v16 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(v13 + 24), a2, v15, v10, WidthOfPlane, HeightOfPlane, v6, &image);
          v17 = image;
          if (v16 || (CVMetalTextureGetTexture(image), objc_claimAutoreleasedReturnValue(), [sub_27AC() setObject:HeightOfPlane atIndexedSubscript:v6], HeightOfPlane, objc_msgSend(v5, "objectAtIndexedSubscript:", v6), v18 = objc_claimAutoreleasedReturnValue(), v18, v17 = image, !v18))
          {
            v7 = v15;
            goto LABEL_18;
          }

          if (image)
          {
            CFRelease(image);
          }

          v6 = 1;
          v7 = v15;
          v8 = 0;
          if (((((PixelFormatType - 1278226534) & 0xFFFFFFFD) != 0) & v24) == 0)
          {
            v19 = v5;
            v5 = v19;
            goto LABEL_12;
          }
        }

        v17 = image;
LABEL_18:
        if (v17)
        {
          CFRelease(v17);
        }

        v19 = 0;
        v15 = v7;
        goto LABEL_12;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v5 = 0;
    }

    v15 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v19 = 0;
LABEL_13:

  return v19;
}

void sub_6B68(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = a1[8];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[10];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[11];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[13];
    a1[13] = 0;
  }
}

uint64_t sub_7B9C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardAssembleResidual" constants:0];
  v3 = *(a1 + 72);
  *(a1 + 72) = v2;

  if (*(a1 + 72))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardReduceLowFreqDiffYUV" constants:0];
    v5 = *(a1 + 80);
    *(a1 + 80) = v4;

    if (*(a1 + 80))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian3RowGatherXY" constants:0];
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      if (*(a1 + 24))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian5RowGather" constants:0];
        v9 = *(a1 + 48);
        *(a1 + 48) = v8;

        if (*(a1 + 48))
        {
          v10 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian9RowGatherXY" constants:0];
          v11 = *(a1 + 32);
          *(a1 + 32) = v10;

          if (*(a1 + 32))
          {
            v12 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian11RowGatherXY" constants:0];
            v13 = *(a1 + 40);
            *(a1 + 40) = v12;

            if (*(a1 + 40))
            {
              v14 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian17RowGather" constants:0];
              v15 = *(a1 + 56);
              *(a1 + 56) = v14;

              if (*(a1 + 56))
              {
                v16 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian21RowGather" constants:0];
                v17 = *(a1 + 64);
                *(a1 + 64) = v16;

                if (*(a1 + 64))
                {
                  v18 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardYuv444To420" constants:0];
                  v19 = *(a1 + 16);
                  *(a1 + 16) = v18;

                  if (*(a1 + 16))
                  {
                    v20 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardComputeDetail" constants:0];
                    v21 = *(a1 + 88);
                    *(a1 + 88) = v20;

                    if (*(a1 + 88))
                    {
                      v22 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardMaxFilterH" constants:0];
                      v23 = *(a1 + 96);
                      *(a1 + 96) = v22;

                      if (*(a1 + 96))
                      {
                        v24 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardMaxFilterHxy" constants:0];
                        v25 = *(a1 + 104);
                        *(a1 + 104) = v24;

                        if (*(a1 + 104))
                        {
                          v26 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardComputeDetailGainMap" constants:0];
                          v27 = *(a1 + 112);
                          *(a1 + 112) = v26;

                          if (*(a1 + 112))
                          {
                            v28 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardDownsample2xLumaLUT" constants:0];
                            v29 = *(a1 + 120);
                            *(a1 + 120) = v28;

                            if (*(a1 + 120))
                            {
                              v30 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardUpsample2xAdjLumaGain" constants:0];
                              v31 = *(a1 + 128);
                              *(a1 + 128) = v30;

                              if (*(a1 + 128))
                              {
                                v32 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardModulateStrength" constants:0];
                                v33 = *(a1 + 136);
                                *(a1 + 136) = v32;

                                if (*(a1 + 136))
                                {
                                  v34 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardComputeLumaBlendingMask" constants:0];
                                  v35 = *(a1 + 144);
                                  *(a1 + 144) = v34;

                                  if (*(a1 + 144))
                                  {
                                    v36 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardBlendEnhanced" constants:0];
                                    v37 = *(a1 + 152);
                                    *(a1 + 152) = v36;

                                    if (*(a1 + 152))
                                    {
                                      return 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, v41, v42, v43, v44, v45, vars0, vars8);
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM(v39);
}

uint64_t sub_86F4(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 4294954516;
  if (a2 && a3)
  {
    *(a1 + 288) = a2;
    *(a1 + 292) = a3;
    v8 = objc_alloc_init(MTLTextureDescriptor);
    if (v8)
    {
      v5 = v8;
      [v8 setWidth:a2];
      [sub_29C0() setHeight:?];
      [v5 setPixelFormat:25];
      [v5 setUsage:3];
      v9 = [*(a1 + 8) device];
      v11 = sub_2AA8(v9, v10);
      v12 = *(a1 + 176);
      *(a1 + 176) = v11;

      if (*(a1 + 176) && ([*(a1 + 8) device], v13 = objc_claimAutoreleasedReturnValue(), v15 = sub_2AA8(v13, v14), v16 = *(a1 + 160), *(a1 + 160) = v15, v16, v3, *(a1 + 160)) && (objc_msgSend(*(a1 + 8), "device"), v17 = objc_claimAutoreleasedReturnValue(), v19 = sub_2AA8(v17, v18), v20 = *(a1 + 208), *(a1 + 208) = v19, v20, v3, *(a1 + 208)) && (objc_msgSend(*(a1 + 8), "device"), v21 = objc_claimAutoreleasedReturnValue(), v23 = sub_2AA8(v21, v22), v24 = *(a1 + 192), *(a1 + 192) = v23, v24, v3, *(a1 + 192)) && (objc_msgSend(*(a1 + 8), "device"), v25 = objc_claimAutoreleasedReturnValue(), v27 = sub_2AA8(v25, v26), v28 = *(a1 + 240), *(a1 + 240) = v27, v28, v3, *(a1 + 240)) && (objc_msgSend(sub_29C0(), "setWidth:"), objc_msgSend(sub_29F4(), "setHeight:"), objc_msgSend(*(a1 + 8), "device"), v29 = objc_claimAutoreleasedReturnValue(), v31 = sub_2A90(v29, v30), v32 = *(a1 + 224), *(a1 + 224) = v31, v32, a2, *(a1 + 224)) && (objc_msgSend(sub_29A8(), "setWidth:"), objc_msgSend(sub_29CC(), "setHeight:"), objc_msgSend(v5, "setPixelFormat:", 65), objc_msgSend(*(a1 + 8), "device"), v33 = objc_claimAutoreleasedReturnValue(), v35 = sub_2A90(v33, v34), v36 = *(a1 + 184), *(a1 + 184) = v35, v36, a2, *(a1 + 184)) && (objc_msgSend(*(a1 + 8), "device"), v37 = objc_claimAutoreleasedReturnValue(), v39 = sub_2A90(v37, v38), v40 = *(a1 + 168), *(a1 + 168) = v39, v40, a2, *(a1 + 168)) && (objc_msgSend(*(a1 + 8), "device"), v41 = objc_claimAutoreleasedReturnValue(), v43 = sub_2A90(v41, v42), v44 = *(a1 + 216), *(a1 + 216) = v43, v44, a2, *(a1 + 216)) && (objc_msgSend(*(a1 + 8), "device"), v45 = objc_claimAutoreleasedReturnValue(), v47 = sub_2A90(v45, v46), v48 = *(a1 + 200), *(a1 + 200) = v47, v48, a2, *(a1 + 200)) && (objc_msgSend(*(a1 + 8), "device"), v49 = objc_claimAutoreleasedReturnValue(), v51 = sub_2A90(v49, v50), v52 = *(a1 + 248), *(a1 + 248) = v51, v52, a2, *(a1 + 248)) && (objc_msgSend(sub_29CC(), "setWidth:"), objc_msgSend(sub_29A8(), "setHeight:"), objc_msgSend(*(a1 + 8), "device"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "newTextureWithDescriptor:", v5), v55 = *(a1 + 232), *(a1 + 232) = v54, v55, v53, *(a1 + 232)) && (objc_msgSend(*(a1 + 8), "device"), v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "newBufferWithLength:options:", 1024, 0), v58 = *(a1 + 256), *(a1 + 256) = v57, v58, v56, *(a1 + 256)))
      {
        v6 = 0;
      }

      else
      {
        sub_20B8();
        sub_28D8();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v62, v63, v64, v65, v66, v67, v68, v69);
        sub_20B8();
        sub_1EAC();
        v6 = FigSignalErrorAtGM(v61);
      }
    }

    else
    {
      fig_log_get_emitter();
      sub_28D8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v62, v63, v64, v65, v66, v67, v68, v69);
      fig_log_get_emitter();
      sub_1EAC();
      v6 = FigSignalErrorAtGM(v60);
      v5 = 0;
    }
  }

  return v6;
}

uint64_t sub_9398(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = *&a1[2];
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    sub_2A78();
    [sub_29CC() setTexture:? atIndex:?];

    [sub_29A8() setTexture:? atIndex:?];
    [sub_29F4() setTexture:? atIndex:?];

    [v10 threadExecutionWidth];
    v15 = [sub_2AD4() maxTotalThreadsPerThreadgroup];
    v16 = a1[36];
    v17 = v15 / v14;

    v18 = vshr_n_u32(v16, 1uLL);
    *&v19 = v18.u32[0];
    *(&v19 + 1) = v18.u32[1];
    v22 = v19;
    v23 = 1;
    v21[0] = v14;
    v21[1] = v17;
    v21[2] = 1;
    [v11 dispatchThreads:&v22 threadsPerThreadgroup:v21];
  }

  return 0;
}

uint64_t sub_96C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    v14 = sub_296C();
    v19 = sub_9A8C(v14, a2, a3, v15, v16, 17, v17, v18, v57);
    if (v19 || (v20 = sub_2994(), v19 = sub_9A8C(v20, v21, v22, v23, v24, 17, v25, v26, v58), v19) || (v27 = sub_296C(), v19 = sub_9A8C(v27, v11, v12, v28, v29, 5, v30, v31, v59), v19) || (v32 = sub_2994(), v19 = sub_9A8C(v32, v33, v34, v35, v36, 5, v37, v38, v60), v19) || (v39 = sub_296C(), v19 = sub_9A8C(v39, v40, v41, v42, v43, 17, v44, v45, v61), v19) || (v46 = sub_2994(), v19 = sub_9A8C(v46, v47, v48, v49, v50, 17, v51, v52, v62), v19))
    {
      v55 = v19;
      fig_log_get_emitter();
      sub_28EC();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      goto LABEL_10;
    }

    v53 = *(a1 + 80);
    [sub_2AD4() setComputePipelineState:a3];
    sub_2B00(v13, v54);
    [v13 setTexture:*(a1 + 240) atIndex:0];
    [v13 setTexture:*(a1 + 208) atIndex:1];
    [v13 setTexture:v11 atIndex:2];
    [v13 setTexture:v11 atIndex:3];
    [v13 setTexture:*(a1 + 248) atIndex:4];
    [v13 setTexture:*(a1 + 216) atIndex:5];
    [v13 setTexture:v12 atIndex:6];
    [v13 setTexture:v12 atIndex:7];
    sub_29B4();
    v66 = 1;
    v63 = vdupq_n_s64(0x10uLL);
    v64 = 1;
    [v13 dispatchThreads:v65 threadsPerThreadgroup:&v63];
  }

  v55 = 0;
LABEL_10:

  return v55;
}

uint64_t sub_9A8C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  if (a1)
  {
    v21 = sub_AA64(a1, v16, v18, v11, v10, v9, 1, v20);
    if (!v21)
    {
      v21 = sub_AA64(a1, v17, v19, (v11 >> 1) + 1, v10 >> 1, v9 >> 1, 0, v20);
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t sub_9CE8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    v12 = *(a1 + 96);
    v13 = a6;
    v37 = a5;
    v14 = a4;
    v36 = a3;
    v15 = a2;
    [sub_29F4() setComputePipelineState:?];
    [sub_29C0() setTexture:? atIndex:?];

    [v13 setTexture:*(a1 + 224) atIndex:1];
    [v12 threadExecutionWidth];
    v16 = [v12 maxTotalThreadsPerThreadgroup];
    sub_29D8(v16, v17, v18, v19);
    v20 = *(a1 + 96);

    [sub_29C0() setComputePipelineState:?];
    [v13 setTexture:*(a1 + 224) atIndex:0];
    [sub_29A8() setTexture:? atIndex:?];

    [v20 threadExecutionWidth];
    v21 = [v20 maxTotalThreadsPerThreadgroup];
    sub_29D8(v21, v22, v23, v24);
    v25 = *(a1 + 104);

    [sub_29A8() setComputePipelineState:?];
    [v13 setTexture:v36 atIndex:0];

    [v13 setTexture:*(a1 + 232) atIndex:1];
    [v25 threadExecutionWidth];
    v26 = [v25 maxTotalThreadsPerThreadgroup];
    sub_29D8(v26, v27, v28, v29);
    v30 = *(a1 + 104);

    [sub_29CC() setComputePipelineState:?];
    [v13 setTexture:*(a1 + 232) atIndex:0];
    [v13 setTexture:v37 atIndex:1];

    [v30 threadExecutionWidth];
    [v30 maxTotalThreadsPerThreadgroup];

    sub_29D8(v31, v32, v33, v34);
  }

  return 0;
}

uint64_t sub_A0B0(uint32x2_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a1[36];
    v25 = vshr_n_u32(v9, 1uLL);
    a1[37] = v25;
    v10 = *&a1[15];
    v11 = a2;
    [v8 setComputePipelineState:v10];
    [v8 setTexture:v11 atIndex:0];

    [v8 setTexture:*&a1[30] atIndex:1];
    [v8 setBytes:&a1[36] length:16 atIndex:0];
    [v8 setBuffer:*&a1[32] offset:0 atIndex:1];
    v12 = [v10 threadExecutionWidth];
    v13 = [v10 maxTotalThreadsPerThreadgroup];
    v14 = vsra_n_u32(0x200000002, v9, 1uLL);
    *&v15 = v14.u32[0];
    *(&v15 + 1) = v14.u32[1];
    v29 = v15;
    v30 = 1;
    v26 = v12;
    v27 = v13 / v12;
    v28 = 1;
    [v8 dispatchThreads:&v29 threadsPerThreadgroup:&v26];
    v16 = sub_AA64(a1, *&a1[30], *&a1[28], 5, v25.u32[0], v25.u32[1], 1, v8);
    if (v16)
    {
      v23 = v16;
      fig_log_get_emitter();
      sub_2A48();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      v17 = sub_AA64(a1, *&a1[28], *&a1[30], 5, v25.u32[1], v25.u32[0], 1, v8);
      if (v17)
      {
        v23 = v17;
        fig_log_get_emitter();
        sub_2A48();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      else
      {
        v18 = *&a1[16];

        [v8 setComputePipelineState:v18];
        [v8 setTexture:*&a1[30] atIndex:0];
        [v8 setTexture:v7 atIndex:1];
        v19 = [v18 threadExecutionWidth];
        v20 = [v18 maxTotalThreadsPerThreadgroup];
        v21 = a1[36];
        *&v22 = v21.u32[0];
        *(&v22 + 1) = v21.u32[1];
        v29 = v22;
        v30 = 1;
        v26 = v19;
        v27 = v20 / v19;
        v28 = 1;
        [v8 dispatchThreads:&v29 threadsPerThreadgroup:&v26];
        v23 = 0;
        v10 = v18;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t sub_A37C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  if (a1)
  {
    v17 = *(a1 + 136);
    v18 = a10;
    v27 = a9;
    v19 = a8;
    v20 = a7;
    v21 = a6;
    v22 = a5;
    v23 = a4;
    v24 = a3;
    v25 = a2;
    sub_2A78();
    [v18 setTexture:v25 atIndex:0];

    [sub_29CC() setTexture:? atIndex:?];
    [v18 setTexture:v21 atIndex:2];

    [v18 setTexture:v19 atIndex:3];
    [v17 threadExecutionWidth];
    [sub_2AD4() maxTotalThreadsPerThreadgroup];
    sub_2984();
    sub_2A00();
    [v18 dispatchThreads:? threadsPerThreadgroup:?];
    sub_2A78();
    [sub_29C0() setTexture:? atIndex:?];

    [sub_29F4() setTexture:? atIndex:?];
    [sub_29A8() setTexture:? atIndex:?];

    [v18 setTexture:v27 atIndex:3];
    [v17 threadExecutionWidth];
    [sub_2AD4() maxTotalThreadsPerThreadgroup];

    sub_2984();
    sub_2A00();
    [v18 dispatchThreads:? threadsPerThreadgroup:?];
  }

  return 0;
}

void sub_A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int64x2_t a11, uint64_t a9, uint64_t a10, int64x2_t a12, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t argA0, uint64_t a30)
{
  sub_2A2C();
  argA0 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v39;
  v45 = v37;
  v46 = v35;
  v47 = v33;
  if (v41)
  {
    v48 = *(v41 + 144);
    [v47 setComputePipelineState:v48];
    [v47 setTexture:v43 atIndex:0];
    [v47 setTexture:v45 atIndex:1];
    v49 = [v48 threadExecutionWidth];
    [v48 maxTotalThreadsPerThreadgroup];
    sub_2984();
    a12.i64[0] = v49;
    a12.i64[1] = v50 / v49;
    a14 = 1;
    [v47 dispatchThreads:&a16 threadsPerThreadgroup:&a12];
    if (sub_AA64(v41, v45, *(v41 + 224), 5, *(v41 + 288), *(v41 + 292), 1, v47) || sub_AA64(v41, *(v41 + 224), v45, 5, *(v41 + 292), *(v41 + 288), 1, v47))
    {
      fig_log_get_emitter();
      sub_291C();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      v51 = *(v41 + 152);

      [v47 setComputePipelineState:v51];
      sub_2B00(v47, v52);
      [v47 setTexture:v44 atIndex:0];
      [v47 setTexture:v43 atIndex:1];
      [v47 setTexture:v45 atIndex:2];
      [v47 setTexture:v46 atIndex:3];
      sub_29B4();
      a18 = 1;
      a12 = vdupq_n_s64(0x20uLL);
      a14 = 1;
      [v47 dispatchThreads:&a16 threadsPerThreadgroup:&a12];
      v48 = v51;
    }
  }

  sub_2A10();
}

void sub_A94C(void *a1)
{
  if (a1)
  {
    v2 = a1[20];
    a1[20] = 0;

    v3 = a1[21];
    a1[21] = 0;

    v4 = a1[22];
    a1[22] = 0;

    v5 = a1[23];
    a1[23] = 0;

    v6 = a1[28];
    a1[28] = 0;

    v7 = a1[29];
    a1[29] = 0;

    v8 = a1[30];
    a1[30] = 0;

    v9 = a1[31];
    a1[31] = 0;

    v10 = a1[26];
    a1[26] = 0;

    v11 = a1[27];
    a1[27] = 0;

    v12 = a1[24];
    a1[24] = 0;

    v13 = a1[25];
    a1[25] = 0;

    v14 = a1[32];
    a1[32] = 0;
  }
}

uint64_t sub_AA64(uint64_t a1, void *a2, void *a3, int a4, unsigned int a5, unsigned int a6, int a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a8;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (a7)
  {
    switch(a4)
    {
      case 5:
        v18 = 48;
        goto LABEL_16;
      case 21:
        v18 = 64;
        goto LABEL_16;
      case 17:
        v18 = 56;
LABEL_16:
        v20 = *(a1 + v18);
        [v17 setComputePipelineState:v20];
        [v17 setTexture:v15 atIndex:0];
        [v17 setTexture:v16 atIndex:1];
        v23[0] = a5 >> 1;
        v23[1] = a6 >> 1;
        v23[2] = 1;
        v22[0] = [v20 threadExecutionWidth];
        v22[1] = [v20 maxTotalThreadsPerThreadgroup] / v22[0];
        v22[2] = 1;
        [v17 dispatchThreads:v23 threadsPerThreadgroup:v22];

LABEL_17:
        v19 = 0;
        goto LABEL_18;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        v18 = 24;
        goto LABEL_16;
      case 11:
        v18 = 40;
        goto LABEL_16;
      case 9:
        v18 = 32;
        goto LABEL_16;
    }
  }

  v19 = 4294954516;
LABEL_18:

  return v19;
}

uint64_t sub_ABD4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferClearOutputTexture" constants:0];
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  if (*(a1 + 32) && ([*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferTileCutKernel" constants:0], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 40), *(a1 + 40) = v4, v5, *(a1 + 40)) && (objc_msgSend(*(a1 + 8), "computePipelineStateFor:constants:", @"DeepZoomTransferTileCutInSlicesKernel", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = *(a1 + 48), *(a1 + 48) = v6, v7, *(a1 + 48)) && (objc_msgSend(*(a1 + 8), "computePipelineStateFor:constants:", @"DeepZoomTransferTileMergeKernel", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = *(a1 + 64), *(a1 + 64) = v8, v9, *(a1 + 64)) && (objc_msgSend(*(a1 + 8), "computePipelineStateFor:constants:", @"DeepZoomTransferTilePasteKernel", 0), v10 = objc_claimAutoreleasedReturnValue(), v11 = *(a1 + 56), *(a1 + 56) = v10, v11, *(a1 + 56)) && (v12 = objc_opt_new()) != 0)
  {
    v13 = v12;
    [v12 setNormalizedCoordinates:1];
    [sub_3520() setMinFilter:?];
    [sub_3520() setMagFilter:?];
    [sub_352C() setSAddressMode:?];
    [sub_352C() setTAddressMode:?];
    v14 = [*(a1 + 8) device];
    v15 = [v14 newSamplerStateWithDescriptor:v13];
    v16 = *(a1 + 72);
    *(a1 + 72) = v15;

    if (*(a1 + 72) && ([v13 setNormalizedCoordinates:1], objc_msgSend(v13, "setMinFilter:", 2), objc_msgSend(v13, "setMagFilter:", 2), objc_msgSend(sub_352C(), "setSAddressMode:"), objc_msgSend(sub_352C(), "setTAddressMode:"), objc_msgSend(*(a1 + 8), "device"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "newSamplerStateWithDescriptor:", v13), v19 = *(a1 + 80), *(a1 + 80) = v18, v19, v17, *(a1 + 80)))
    {
      v20 = 0;
    }

    else
    {
      sub_20B8();
      sub_1E7C();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v25, v26, v27, v28, v29, vars0, vars8);
      sub_20B8();
      sub_1EAC();
      v20 = FigSignalErrorAtGM(v23);
    }
  }

  else
  {
    sub_1F20();
    sub_1E7C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v25, v26, v27, v28, v29, vars0, vars8);
    sub_1F20();
    sub_1EAC();
    v20 = FigSignalErrorAtGM(v22);
    v13 = 0;
  }

  return v20;
}

id sub_B168(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  if (a1)
  {
    v3 = pixelBuffer;
    textureOut = 0;
    if (pixelBuffer)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v6 = PixelFormatType;
      v7 = PixelFormatType - 1278226534;
      v9 = PixelFormatType == 706956392 || PixelFormatType == 707153000;
      v10 = [NSMutableArray alloc];
      if ((v7 & 0xFFFFFFFD) == 0 || v6 == 642527336)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v41 = v9;
      v37 = v12;
      if (v9)
      {
        v13 = 3;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v10 initWithCapacity:v13];
      if (v14)
      {
        v15 = 0;
        textureAttributes = 0;
        v16 = 0;
        v38 = kCVMetalTextureUsage;
        v36 = a3;
        v39 = v6;
        while (1)
        {
          v17 = textureAttributes;
          v18 = sub_CC78(a1, v6, v15);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v40 = v16;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v3, v15);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v3, v15);
          v44 = v38;
          v22 = [NSNumber numberWithUnsignedInteger:a3];
          v45 = v22;
          textureAttributes = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];

          v6 = v39;
          if (v39 == 707153000 || v39 == 706956392)
          {
            v24 = 0;
            while (!CVMetalTextureCacheCreateTextureFromSliceOfImage())
            {
              v25 = v3;
              v26 = CVMetalTextureGetTexture(textureOut);
              [v14 setObject:v26 atIndexedSubscript:{v40 + v24, v24, &textureOut}];

              v27 = [v14 objectAtIndexedSubscript:v40 + v24];

              if (!v27)
              {
                break;
              }

              if (textureOut)
              {
                CFRelease(textureOut);
              }

              v28 = v24 + 1;
              v29 = v41;
              if (v24 >= 2)
              {
                v29 = 0;
              }

              ++v24;
              v3 = v25;
              if (!v29)
              {
                v6 = v39;
                v16 = v40 + v28;
                a3 = v36;
                goto LABEL_39;
              }
            }

            break;
          }

          if (CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(a1 + 24), v3, textureAttributes, v19, WidthOfPlane, HeightOfPlane, v15, &textureOut))
          {
            break;
          }

          v30 = CVMetalTextureGetTexture(textureOut);
          [v14 setObject:v30 atIndexedSubscript:v40];

          v31 = [v14 objectAtIndexedSubscript:v40];

          if (!v31)
          {
            break;
          }

          v16 = v40 + 1;
          if (textureOut)
          {
            CFRelease(textureOut);
          }

LABEL_39:
          if (v37 <= ++v15 || v6 == 707153000 || v6 == 706956392)
          {
            v34 = v14;
            v14 = v34;
            goto LABEL_48;
          }
        }
      }

      else
      {
        textureAttributes = 0;
      }

      if (textureOut)
      {
        CFRelease(textureOut);
      }

      v34 = 0;
LABEL_48:
    }

    else
    {
      v34 = 0;
      v14 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

void sub_B4F8(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = a1[12];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[14];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[15];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[20];
    a1[20] = 0;
  }
}

uint64_t sub_C2B8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_6;
  }

  memset(v43, 0, 32);
  memset(v42, 0, sizeof(v42));
  if ([v5 count] != &dword_0 + 2 || (v7.i16[0] = *(a3 + 28), v7.i16[2] = *(a3 + 30), v40 = v7, v7.i16[0] = *a3, v7.i16[2] = *(a3 + 2), v38 = v7, v7.i16[0] = *(a3 + 4), v7.i16[2] = *(a3 + 6), v36 = v7, v8 = *(a3 + 8), v9 = objc_alloc_init(NSMutableArray), v10 = a1[17], a1[17] = v9, v10, !a1[17]))
  {
LABEL_8:
    v30 = 4294954516;
    goto LABEL_7;
  }

  v11 = vand_s8(vadd_s32(vadd_s32(v38, v40), vmvn_s8(v36)), 0xFFFF0000FFFFLL);
  v12 = vand_s8(vsub_s32(v38, v36), 0xFFFF0000FFFFLL);
  v39 = v11.i32[0] / v12.i32[0];
  v41 = v8;
  v13 = a1[16];
  v37 = v11.i32[1] / v12.i32[1];
  v14 = [sub_34DC() objectAtIndexedSubscript:?];
  v15 = [NSNumber numberWithLong:v14];
  v16 = [v13 objectForKeyedSubscript:v15];
  FigCFDictionaryGetCGRectIfPresent();

  v17 = a1[16];
  v18 = [sub_3514() objectAtIndexedSubscript:?];
  v19 = [NSNumber numberWithLong:v18];
  v20 = [v17 objectForKeyedSubscript:v19];
  FigCFDictionaryGetCGRectIfPresent();

  v21 = a1[18];
  v34 = a1[17];
  v33 = [sub_34DC() objectAtIndexedSubscript:?];
  v22 = a1[16];
  v35 = [sub_34DC() objectAtIndexedSubscript:?];
  v23 = [NSNumber numberWithLong:v35];
  v24 = [v22 objectForKeyedSubscript:v23];
  v25 = [sub_3514() objectAtIndexedSubscript:?];
  v26 = a1[16];
  v27 = [sub_3514() objectAtIndexedSubscript:?];
  v28 = [NSNumber numberWithLong:v27];
  v29 = [v26 objectForKeyedSubscript:v28];
  WORD1(v32) = v37;
  LOWORD(v32) = v39;
  HIDWORD(v32) = v41;
  v30 = [v21 computeLocalHomographies:v34 referencePixelBuffer:v33 referenceMetadata:v24 nonReferencePixelBuffer:v25 nonReferenceMetadata:v29 referenceNormalizedCropRectangle:v43 nonReferenceNormalizedCropRectangle:v42 computeLocalHomographiesConfig:a1[11] tileCount:v32 tileIndex:?];

  if (!v30)
  {
    if ([a1[17] count] == &dword_0 + 1)
    {
LABEL_6:
      v30 = 0;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_7:

  return v30;
}

uint64_t sub_CC78(uint64_t result, int a2, int a3)
{
  if (result)
  {
    if (a2 == 641230384)
    {
      goto LABEL_22;
    }

    result = 25;
    switch(a2)
    {
      case 642527336:
        return result;
      case 644376112:
        goto LABEL_26;
      case 645424688:
        goto LABEL_23;
    }

    if (a2 != 706956392 && a2 != 707153000)
    {
      if (a2 != 758670896)
      {
        if (a2 == 762865200)
        {
          goto LABEL_23;
        }

        if (a2 != 792225328)
        {
          if (a2 == 796419632)
          {
            goto LABEL_23;
          }

          if (a2 != 875704422)
          {
            if (a2 == 1278226534)
            {
              return 55;
            }

            if (a2 == 1278226536)
            {
              return result;
            }

            if (a2 != 1751527984)
            {
              if (a2 != 1885745712)
              {
                if (a2 != 2019963440)
                {
                  if (a2 != 2088265264)
                  {
                    if (a2 != 2084070960)
                    {
                      return 0;
                    }

                    goto LABEL_22;
                  }

                  goto LABEL_23;
                }

                v4 = a3 == 0;
                v5 = 60;
                v6 = 20;
LABEL_28:
                if (v4)
                {
                  return v6;
                }

                else
                {
                  return v5;
                }
              }

LABEL_23:
              if (a3)
              {
                return 589;
              }

              else
              {
                return 588;
              }
            }

LABEL_26:
            v4 = a3 == 0;
            v5 = 65;
            v6 = 25;
            goto LABEL_28;
          }
        }
      }

LABEL_22:
      v4 = a3 == 0;
      v5 = 30;
      v6 = 10;
      goto LABEL_28;
    }
  }

  return result;
}

void sub_CDF0(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  if (!v6)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v17 = v6;
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    *(a3 + 8) = 0;
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v7 = [v17 objectForKeyedSubscript:@"UseFlowWeightedAverage"];
  *(a3 + 8) = [v7 BOOLValue];

  if ((*(a3 + 8) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v17 objectForKeyedSubscript:@"FlowWeightCurveDx"];
  v9 = [v8 copy];
  v10 = *(a3 + 16);
  *(a3 + 16) = v9;

  v11 = [v17 objectForKeyedSubscript:@"FlowWeightCurveDy"];
  v12 = [v11 copy];
  v13 = *(a3 + 24);
  *(a3 + 24) = v12;

  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = [v14 count];
    if (v15 == [*(a3 + 24) count])
    {
      goto LABEL_9;
    }
  }

  v16 = -12780;
LABEL_10:
  v6 = v17;
LABEL_11:
  *a4 = v16;
}

uint64_t sub_D184(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 8) computePipelineStateFor:@"DeepZoomTransferCopyOpticalFlowInputRGBFloat16" constants:0];
    v3 = *(v1 + 16);
    *(v1 + 16) = v2;

    if (*(v1 + 16) && ([*(v1 + 8) computePipelineStateFor:@"DeepZoomTransferCopyOpticalFlowInputRGBUint8" constants:0], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(v1 + 24), *(v1 + 24) = v4, v5, *(v1 + 24)))
    {
      v6 = [*(v1 + 8) computePipelineStateFor:@"DeepZoomTransferCopyOpticalFlowOutput" constants:0];
      v7 = *(v1 + 32);
      *(v1 + 32) = v6;

      if (*(v1 + 32))
      {
        return 0;
      }

      else
      {
        return 4294954510;
      }
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

uint64_t sub_D240(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v22 = 0;
  v21[3] = 0;
  v20[0] = kCVPixelBufferMetalCompatibilityKey;
  v20[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v21[0] = &__kCFBooleanTrue;
  v21[1] = &__kCFBooleanTrue;
  v20[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v21[2] = &__NSDictionary0__struct;
  v2 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  context = espresso_create_context();
  *(a1 + 56) = context;
  if (context && (plan = espresso_create_plan(), (*(a1 + 64) = plan) != 0))
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (v5)
    {
      v6 = +[CMInferenceUtils sharedInstance];
      v7 = [v6 getNetworkPath:@"mrflownet-v2" isE5:0];

      if (v7)
      {
        [v7 UTF8String];
        if (espresso_plan_add_network() || espresso_network_query_quantization_info() || (*(a1 + 88) = 0x30000000400, *(a1 + 128) = 4, v8 = espresso_plan_build(), v8))
        {
          v18 = 4294954514;
        }

        else
        {
          v13 = sub_36A4(v8, v9, v10, v11, v12, (a1 + 96));
          if (!v13)
          {
            v13 = sub_36A4(v13, v14, v15, v16, v17, (a1 + 104));
            if (!v13)
            {
              v13 = CVPixelBufferCreate(kCFAllocatorDefault, 0x100uLL, 0x180uLL, 0x4C303068u, v2, (a1 + 112));
            }
          }

          v18 = v13;
        }
      }

      else
      {
        v18 = 4294954516;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
  v18 = 4294954510;
LABEL_13:

  return v18;
}

uint64_t sub_E1EC(uint64_t a1, __CVBuffer *a2, uint64_t a3, __CVBuffer *a4, void *a5, float64x2_t *a6, float64x2_t *a7, unsigned __int16 a8)
{
  v14 = a5;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v81[0] = kCVPixelBufferMetalCompatibilityKey;
  v81[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v82[0] = &__kCFBooleanTrue;
  v82[1] = &__kCFBooleanTrue;
  v81[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v82[2] = &__NSDictionary0__struct;
  pixelBufferAttributes = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
  v15 = 0;
  v16 = 4294954516;
  if (!a2 || !a3 || !a4 || !v14 || !a6 || !a7)
  {
    goto LABEL_24;
  }

  v73 = matrix_identity_float3x3.columns[1];
  v74 = matrix_identity_float3x3.columns[0];
  v72 = matrix_identity_float3x3.columns[2];
  v17 = [v14 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_StillImageProcessingMetadata];
  v15 = [v17 objectForKeyedSubscript:kFigCaptureStillImageProcessingMetadataKey_RegistrationHomography];

  v79 = v74;
  v77 = v73;
  v75 = v72;
  if (v15)
  {
    v65 = [v15 objectAtIndexedSubscript:0];
    [v65 floatValue];
    v80 = v18;
    v64 = [v15 objectAtIndexedSubscript:3];
    [v64 floatValue];
    v78 = v19;
    v63 = [v15 objectAtIndexedSubscript:6];
    [v63 floatValue];
    v76 = v20;
    v62 = [v15 objectAtIndexedSubscript:1];
    [v62 floatValue];
    v60 = v21;
    [v15 objectAtIndexedSubscript:4];
    v22 = v66 = a2;
    [v22 floatValue];
    v61 = v23;
    [v15 objectAtIndexedSubscript:7];
    v24 = v68 = a7;
    [v24 floatValue];
    v59 = v25;
    [v15 objectAtIndexedSubscript:2];
    v26 = v67 = a6;
    [v26 floatValue];
    v57 = v27;
    v28 = [v15 objectAtIndexedSubscript:5];
    [v28 floatValue];
    v58 = v29;
    [v15 objectAtIndexedSubscript:8];
    v31 = v30 = v14;
    [v31 floatValue];
    v32 = v80;
    v32.n128_u32[1] = v60;
    v32.n128_u32[2] = v57;
    v79 = v32;
    v33 = v76;
    v33.n128_u32[1] = v59;
    v33.n128_u32[2] = v34;
    v75 = v33;
    v35 = v78;
    v35.n128_u32[1] = v61;
    v35.n128_u32[2] = v58;
    v77 = v35;

    v14 = v30;
    a6 = v67;

    a7 = v68;
    a2 = v66;
  }

  Width = CVPixelBufferGetWidth(a4);
  v69 = a7[1].f64[0];
  Height = CVPixelBufferGetHeight(a4);
  v38.i64[0] = Width;
  v38.i64[1] = Height;
  v39.f64[0] = v69;
  v39.f64[1] = a7[1].f64[1];
  v40 = vmulq_f64(v39, vcvtq_f64_f32(vcvt_f32_f64(vcvtq_f64_u64(v38))));
  __asm { FMOV            V1.2D, #0.5 }

  v46 = vcvt_n_u32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v40, _Q1))), 1uLL);
  if (v46.i32[0] < v46.i32[1])
  {
    v16 = 4294954516;
LABEL_24:
    v55 = *(a1 + 120);
    if (v55)
    {
      CFRelease(v55);
      *(a1 + 120) = 0;
    }

    goto LABEL_26;
  }

  v47 = v46.u32[1] / v46.u32[0];
  v48 = CVPixelBufferGetWidth(*(a1 + 96));
  v50 = (a1 + 120);
  v49 = *(a1 + 120);
  v51 = ((v48 / *(a1 + 128) / a8) & 0xFFFFFFFE) * a8;
  v52 = roundf((v47 * v51) * 0.5);
  v53 = (v52 + v52);
  if (v49)
  {
    if (CVPixelBufferGetWidth(v49) == v51 && CVPixelBufferGetHeight(*v50) == v53)
    {
      goto LABEL_17;
    }

    if (*v50)
    {
      CFRelease(*v50);
      *v50 = 0;
    }
  }

  v54 = CVPixelBufferCreate(kCFAllocatorDefault, v51, v53, 0x32433068u, pixelBufferAttributes, (a1 + 120));
  if (v54)
  {
LABEL_29:
    v16 = v54;
    goto LABEL_24;
  }

LABEL_17:
  v54 = sub_F6FC(a1, a2, *(a1 + 96), a6, v74, v73, v72);
  if (v54)
  {
    goto LABEL_29;
  }

  v54 = sub_F6FC(a1, a4, *(a1 + 104), a7, v79, v77, v75);
  if (v54)
  {
    goto LABEL_29;
  }

  if (espresso_network_bind_direct_cvpixelbuffer() || espresso_network_bind_direct_cvpixelbuffer() || espresso_network_bind_direct_cvpixelbuffer() || espresso_plan_execute_sync())
  {
    v16 = 4294954514;
    goto LABEL_24;
  }

  v16 = sub_FAC4(a1);
  if (v16)
  {
    goto LABEL_24;
  }

LABEL_26:

LABEL_27:
  return v16;
}

uint64_t sub_E6E0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 a4, unsigned int a5, uint64_t a6, unsigned int a7, void *a8)
{
  v15 = a8;
  v70 = v15;
  if (a1)
  {
    v16 = v15;
    v17 = a5;
    v18 = HIWORD(a5);
    v19 = 0.0;
    if (a5 >= 0x10000)
    {
      v20 = 0;
      v21 = a6;
      do
      {
        if (a5)
        {
          v22 = 0;
          do
          {
            _H0 = fabsl(*(v21 + v22));
            __asm { FCVT            S0, H0 }

            if (v19 < _S0)
            {
              v19 = _S0;
            }

            v22 += 4;
          }

          while (4 * a5 != v22);
        }

        ++v20;
        v21 += a7 & 0xFFFFFFFE;
      }

      while (v20 != v18);
    }

    v29 = [v15 dxPoints];
    v30 = [v16 dyPoints];
    v32 = v30;
    v33 = 4294954516;
    if (v29 && v30)
    {
      v34.f32[0] = a3;
      v34.f32[1] = HIWORD(a3);
      __asm { FMOV            V1.2S, #1.0 }

      v36 = vdiv_f32(_D1, v34);
      v71 = v36;
      if (a5 >= 0x10000)
      {
        v38 = 0;
        v39 = a4;
        v40 = ceilf((v19 * *v36.i32) * v39);
        v41 = a7 >> 1;
        v37 = 0;
        *&v31 = 0;
        do
        {
          if (v17)
          {
            for (i = 0; i != v17; ++i)
            {
              v36.i32[0] = *(a6 + 4 * i);
              v72 = v31;
              v73 = vcvtq_f32_f16(v36).u64[0];
              v43 = [v29 count];
              v44 = 1.0;
              if (v43 < 2)
              {
                v31 = v72;
                v60 = v73;
              }

              else
              {
                v45 = fabsf(v39 * vmul_f32(v71, v73).f32[0]) / v40;
                v46 = (v43 - 2);
                while (1)
                {
                  v47 = [v29 objectAtIndexedSubscript:v46];
                  [v47 floatValue];
                  v49 = v48;

                  v50 = [v29 objectAtIndexedSubscript:v46 + 1];
                  [v50 floatValue];
                  v52 = v51;

                  v53 = [v32 objectAtIndexedSubscript:v46];
                  [v53 floatValue];
                  v55 = v54;

                  v56 = [v32 objectAtIndexedSubscript:v46 + 1];
                  [v56 floatValue];
                  v58 = v57;

                  if (v45 > v49)
                  {
                    break;
                  }

                  if (v46-- < 1)
                  {
                    v31 = v72;
                    v60 = v73;
                    v44 = 1.0;
                    goto LABEL_28;
                  }
                }

                v61 = v45 - v49;
                v62 = v52 - v49;
                v31 = v72;
                if (v55 >= v58)
                {
                  v44 = v55;
                  v60 = v73;
                  if (v55 > v58)
                  {
                    v64 = fminf(fmaxf(v61 / v62, 0.0), 1.0);
                    v44 = v58 + ((v55 - v58) * (1.0 - ((v64 * v64) * ((v64 * -2.0) + 3.0))));
                  }
                }

                else
                {
                  v63 = fminf(fmaxf(v61 / v62, 0.0), 1.0);
                  v44 = v55 + ((v58 - v55) * ((v63 * v63) * ((v63 * -2.0) + 3.0)));
                  v60 = v73;
                }
              }

LABEL_28:
              v37 = vmla_n_f32(v37, v60, v44);
              *&v31 = *&v31 + v44;
            }
          }

          a6 += 2 * v41;
          ++v38;
        }

        while (v38 != v18);
      }

      else
      {
        *&v31 = 0;
        v37 = 0;
      }

      v66 = matrix_identity_float3x3.columns[0];
      v65 = matrix_identity_float3x3.columns[1];
      v67 = matrix_identity_float3x3.columns[0].i32[3];
      if (fabsf(*&v31) > 1.0e-10)
      {
        *&v66.u32[2] = vmul_f32(v71, vdiv_f32(v37, vdup_lane_s32(*&v31, 0)));
        v65.i32[2] = v66.i32[3];
      }

      v33 = 0;
      *(v69 + 8) = v66.i32[2];
      *v69 = v66.i64[0];
      *(v69 + 24) = v65.i32[2];
      *(v69 + 12) = v67;
      *(v69 + 16) = v65.i64[0];
      *(v69 + 28) = *(&matrix_identity_float3x3.columns[1] + 12);
      *(v69 + 44) = matrix_identity_float3x3.columns[2].i32[3];
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t sub_EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 4294954516;
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_53;
  }

  sub_3670();
  v105 = v14;
  if (!v14)
  {
    goto LABEL_50;
  }

  v15 = v12;
  v7 = 0;
  if (!v12 || (v16 = v11, v11 < 0x10000))
  {
LABEL_53:
    sub_3670();
    goto LABEL_50;
  }

  sub_3670();
  v19 = v16;
  if (!v16)
  {
    goto LABEL_50;
  }

  v20 = v18;
  v99 = v17;
  v6 = v105;
  v7 = (16 * v105);
  v4 = malloc_type_malloc(v7, 0x1000040451B5BE8uLL);
  if (v4)
  {
    v5 = malloc_type_malloc(v7, 0x1000040451B5BE8uLL);
    if (v5)
    {
      v23 = 0;
      v24 = 0;
      v25 = HIWORD(v16);
      v26 = a1;
      do
      {
        v27 = v24 * v15;
        v28 = v19;
        do
        {
          v29 = v27;
          v30 = (a3 + 16 * v27);
          v31 = *v30;
          if (COERCE_FLOAT(*(v30 + 1)) >= v20)
          {
            v32 = (a4 + 16 * v27);
            if (*(v32 + 2) >= v20)
            {
              v33 = &v4[16 * v23];
              LODWORD(v34) = *v30;
              HIDWORD(v34) = HIDWORD(*v33);
              *(v33 + 2) = *(v33 + 1);
              *v33 = v34;
              DWORD1(v31) = *(v30 + 1);
              *(v33 + 2) = 1065353216;
              *v33 = v31;
              v35 = *v32;
              v36 = &v5[16 * v23];
              v37 = *v32;
              DWORD1(v37) = HIDWORD(*v36);
              *(v36 + 2) = *(v36 + 1);
              *v36 = v37;
              DWORD1(v35) = *(v32 + 1);
              *(v36 + 2) = 1065353216;
              *v36 = v35;
              ++v23;
            }
          }

          v27 = v29 + 1;
          --v28;
        }

        while (v28);
        ++v24;
      }

      while (v24 != v25);
      if (v23 == v105)
      {
        v38 = 0;
        v39 = 16 * v105;
        v40 = 0;
        v41 = 0;
        do
        {
          v40 = vadd_f32(v40, *&v4[v38]);
          v41 = vadd_f32(v41, *&v5[v38]);
          v38 += 16;
        }

        while (v39 != v38);
        v42 = 0;
        v43 = xmmword_178B0;
        *v21.i32 = v105;
        v44 = vdup_lane_s32(v21, 0);
        v45 = vdiv_f32(v40, v44);
        v46 = vdiv_f32(v41, v44);
        *&v47 = -v45.f32[0];
        *&v48 = -v45.f32[1];
        v49 = xmmword_178B0;
        DWORD2(v49) = v47;
        v96 = v49;
        v22.i32[0] = 0;
        v22.i32[1] = 1.0;
        __asm { FMOV            V0.4S, #1.0 }

        v55.i64[1] = _Q0.i64[1];
        v55.i64[0] = __PAIR64__(v48, v47);
        v56 = v22;
        v56.i32[2] = v48;
        v95 = v56;
        *(&v43 + 2) = -v46.f32[0];
        v22.i64[1] = COERCE_UNSIGNED_INT(-v46.f32[1]);
        v97 = v22;
        v98 = v43;
        do
        {
          *&v4[v42] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_178B0, COERCE_FLOAT(*&v4[v42])), xmmword_178C0, *&v4[v42], 1), v55, *&v4[v42], 2);
          _Q0.f32[1] = -v46.f32[1];
          _Q0.f32[0] = -v46.f32[0];
          *&v5[v42] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_178B0, COERCE_FLOAT(*&v5[v42])), xmmword_178C0, *&v5[v42], 1), _Q0, *&v5[v42], 2);
          v42 += 16;
        }

        while (v39 != v42);
        v110 = 0;
        v107 = 0;
        v57 = 0;
        v108 = 0;
        *(a1 + 152) = 1;
        v102 = matrix_identity_float3x3.columns[1];
        v103 = matrix_identity_float3x3.columns[0];
        v101 = matrix_identity_float3x3.columns[2];
        memset(v111, 0, sizeof(v111));
        while (1)
        {
          v114 = 0u;
          v115 = 0u;
          v113 = 0u;
          sub_FD24(v26);
          if (*(v26 + 144))
          {
            v6 = malloc_type_malloc(0x48uLL, 0x10000403E1C8BA9uLL);
            if (!v6 || (v58 = malloc_type_malloc(0x48uLL, 0x10000403E1C8BA9uLL)) == 0)
            {
              v8 = 4294954510;
              v7 = v107;
LABEL_49:
              v13 = v110;
              goto LABEL_50;
            }

            v59 = v58;
            v60 = 0;
            v61 = v111;
            do
            {
              v62 = *v61++;
              v63 = &v4[16 * v62];
              v64 = &v6[v60];
              *v64 = *v63;
              *(v64 + 1) = *(v63 + 1);
              *(v64 + 2) = 1065353216;
              v65 = &v5[16 * v62];
              v66 = &v58[v60];
              *v66 = *v65;
              *(v66 + 1) = *(v65 + 1);
              *(v66 + 2) = 1065353216;
              v60 += 12;
            }

            while (v60 != 72);
            v8 = [*(v26 + 144) computeHomography:&v113 referenceKeypoints:v6 nonReferenceKeypoints:v58 keypointsCount:6];
            free(v6);
            free(v59);
            v13 = v110;
            if (v8)
            {
              goto LABEL_54;
            }
          }

          else
          {
            [*(v26 + 8) device];
            v68 = v67 = v26;
            v69 = [v68 newBufferWithLength:96 options:0];

            if (!v69)
            {
              v13 = 0;
              v6 = 0;
              v8 = 4294954510;
              goto LABEL_56;
            }

            v70 = [*(v67 + 8) device];
            v71 = [v70 newBufferWithLength:96 options:0];

            if (!v71)
            {
              v7 = 0;
              v6 = 0;
              v8 = 4294954510;
              v13 = v69;
              goto LABEL_50;
            }

            v72 = [v69 contents];
            v107 = v71;
            v73 = [v71 contents];
            for (i = 0; i != 24; i += 4)
            {
              v75 = *(v111 + i);
              v76 = &v4[16 * v75];
              LODWORD(v77) = *v76;
              *v72 = v77;
              HIDWORD(v77) = *(v76 + 1);
              *v72 = v77;
              v72[2] = 1065353216;
              v78 = &v5[16 * v75];
              v79 = *v78;
              *v73 = *v78;
              DWORD1(v79) = *(v78 + 1);
              *v73 = v79;
              v73[2] = 1065353216;
              v73 += 4;
              v72 += 4;
            }

            v26 = a1;
            v8 = [*(a1 + 136) computeHomography:&v113 referenceKeypoints:v69 nonReferenceKeypoints:v71 keypointsCount:6];
            v13 = v69;
            if (v8)
            {
LABEL_54:
              v6 = 0;
LABEL_56:
              v7 = v107;
              goto LABEL_50;
            }
          }

          v80 = 0;
          v81 = 0;
          v82 = vzip1q_s32(v113, v114);
          v83 = vzip2q_s32(vzip1q_s32(v113, v115), vdupq_lane_s32(*v114.i8, 1));
          v84 = vzip2q_s32(v113, v114);
          v84.i32[2] = v115.i32[2];
          do
          {
            v82.i32[2] = v115.i32[0];
            v85 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(*&v4[v80])), v83, *&v4[v80], 1), v84, *&v4[v80], 2);
            v86 = vsubq_f32(vdivq_f32(v85, vdupq_laneq_s32(v85, 2)), *&v5[v80]);
            v87 = vmulq_f32(v86, v86);
            if (sqrtf(v87.f32[2] + vaddv_f32(*v87.f32)) < 0.0067964)
            {
              ++v81;
            }

            v80 += 16;
          }

          while (v39 != v80);
          v110 = v13;
          if (v81 > v108)
          {
            v102 = v114;
            v103 = v113;
            v101 = v115;
            if ((v81 / v105) > 0.95)
            {
              goto LABEL_44;
            }

            v108 = v81;
          }

          if (++v57 == 50)
          {
LABEL_44:
            v88 = 0;
            v112.columns[0] = v103;
            v112.columns[1] = v102;
            v112.columns[2] = v101;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            do
            {
              *(&v113 + v88 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v96, COERCE_FLOAT(*&v112.columns[v88])), v95, *v112.columns[v88].f32, 1), xmmword_178D0, v112.columns[v88], 2);
              ++v88;
            }

            while (v88 != 3);
            v109 = v113;
            v104 = v115;
            v106 = v114;
            v116.columns[2] = xmmword_178D0;
            v116.columns[1] = v97;
            v116.columns[0] = v98;
            v117 = __invert_f3(v116);
            v89 = 0;
            v112 = v117;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v7 = v107;
            do
            {
              *(&v113 + v89 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*&v112.columns[v89])), v106, *v112.columns[v89].f32, 1), v104, v112.columns[v89], 2);
              ++v89;
            }

            while (v89 != 3);
            v6 = 0;
            v8 = 0;
            v90 = vmulq_n_f32(v114, 1.0 / v115.f32[2]);
            v91 = vmulq_n_f32(v115, 1.0 / v115.f32[2]);
            *v99 = vmulq_n_f32(v113, 1.0 / v115.f32[2]);
            v99[1] = v90;
            v99[2] = v91;
            goto LABEL_49;
          }
        }
      }

      sub_3684();
      v8 = 4294954514;
      goto LABEL_50;
    }

    sub_3684();
  }

  else
  {
    sub_3684();
    v5 = 0;
  }

  v8 = 4294954510;
LABEL_50:
  v92 = v4;
  v93 = v13;
  free(v92);
  free(v5);
  free(v6);

  return v8;
}

uint64_t sub_F1A8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = *(v1 + 40);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 40) = 0;
      }
    }

    return sub_F204(v1);
  }

  return result;
}

uint64_t sub_F204(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  [*(result + 8) waitForIdle];
  if (v1[8])
  {
    if (espresso_plan_destroy())
    {
      return 4294954514;
    }

    v1[8] = 0;
  }

  if (v1[7])
  {
    if (!espresso_context_destroy())
    {
      v1[7] = 0;
      goto LABEL_8;
    }

    return 4294954514;
  }

LABEL_8:
  v2 = v1[12];
  if (v2)
  {
    CFRelease(v2);
    v1[12] = 0;
  }

  v3 = v1[13];
  if (v3)
  {
    CFRelease(v3);
    v1[13] = 0;
  }

  v4 = v1[14];
  if (v4)
  {
    CFRelease(v4);
    v1[14] = 0;
  }

  result = v1[15];
  if (result)
  {
    CFRelease(result);
    result = 0;
    v1[15] = 0;
  }

  return result;
}

id sub_F2A8(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  if (a1)
  {
    image = 0;
    if (a2)
    {
      v4 = a1;
      v5 = [[NSMutableArray alloc] initWithCapacity:2];
      if (v5)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v8 = PixelFormatType == 843264104 || PixelFormatType == 1111970369 || PixelFormatType == 1278226536;
        v31 = PixelFormatType;
        if (v8 || PixelFormatType == 1278226534)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        v30 = v27;
        if (PixelFormatType == 640823400 || PixelFormatType == 642527336 || PixelFormatType == 641877825)
        {
          v30 = 1;
        }

        v12 = 0;
        v13 = 0;
        v28 = kCVMetalTextureUsage;
        while (1)
        {
          v14 = sub_F550(v4, v31, v12);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v12);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v12);
          v32 = v28;
          [NSNumber numberWithUnsignedInteger:a3];
          v19 = v18 = v4;
          v33 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

          v4 = v18;
          v21 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(v18 + 40), a2, v20, v15, WidthOfPlane, HeightOfPlane, v12, &image);
          v22 = image;
          if (v21 || (CVMetalTextureGetTexture(image), v23 = objc_claimAutoreleasedReturnValue(), [v5 setObject:v23 atIndexedSubscript:v12], v23, objc_msgSend(v5, "objectAtIndexedSubscript:", v12), v24 = objc_claimAutoreleasedReturnValue(), v24, v22 = image, !v24))
          {
            v13 = v20;
            goto LABEL_39;
          }

          if (image)
          {
            CFRelease(image);
          }

          ++v12;
          v13 = v20;
          if (v30 == v12)
          {
            v25 = v5;
            v5 = v25;
            goto LABEL_33;
          }
        }

        v22 = image;
LABEL_39:
        if (v22)
        {
          CFRelease(v22);
        }

        v25 = 0;
        v20 = v13;
        goto LABEL_33;
      }

      v25 = 0;
    }

    else
    {
      v25 = 0;
      v5 = 0;
    }

    v20 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v25 = 0;
LABEL_34:

  return v25;
}

uint64_t sub_F550(uint64_t result, int a2, int a3)
{
  if (result)
  {
    if (a2 != 640823400)
    {
      if (a2 == 641230384)
      {
        goto LABEL_22;
      }

      result = 80;
      switch(a2)
      {
        case 641877825:
          return result;
        case 642527336:
          return 25;
        case 644376112:
          goto LABEL_26;
        case 645424688:
          goto LABEL_23;
        case 758670896:
          goto LABEL_22;
        case 762865200:
          goto LABEL_23;
        case 792225328:
LABEL_22:
          v3 = a3 == 0;
          v4 = 30;
          v5 = 10;
          goto LABEL_30;
        case 796419632:
          goto LABEL_23;
      }

      if (a2 != 843264104)
      {
        if (a2 != 875704422)
        {
          if (a2 == 1111970369)
          {
            return result;
          }

          if (a2 == 1278226534)
          {
            return 55;
          }

          if (a2 != 1278226536)
          {
            if (a2 != 1751527984)
            {
              if (a2 != 1885745712)
              {
                if (a2 != 2019963440)
                {
                  if (a2 != 2088265264)
                  {
                    if (a2 != 2084070960)
                    {
                      return 0;
                    }

                    goto LABEL_22;
                  }

                  goto LABEL_23;
                }

                v3 = a3 == 0;
                v4 = 60;
                v5 = 20;
LABEL_30:
                if (v3)
                {
                  return v5;
                }

                else
                {
                  return v4;
                }
              }

LABEL_23:
              if (a3)
              {
                return 589;
              }

              else
              {
                return 588;
              }
            }

LABEL_26:
            v3 = a3 == 0;
            v4 = 65;
            v5 = 25;
            goto LABEL_30;
          }

          return 25;
        }

        goto LABEL_22;
      }
    }

    return 65;
  }

  return result;
}

uint64_t sub_F6FC(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, float64x2_t *a4, __n128 a5, __n128 a6, __n128 a7)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v8 = 4294954516;
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    if (a3)
    {
      v7 = sub_F2A8(a1, a2, 1);
      if ([v7 count] == &dword_0 + 2)
      {
        v10 = sub_F2A8(a1, a3, 2);
        if ([v10 count] == &dword_0 + 1)
        {
          v14 = [*(a1 + 8) commandQueue];
          v11 = [v14 commandBuffer];

          if (!v11)
          {
            sub_3748();
            sub_3714();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v42, v44, a5.n128_u64[0], a5.n128_u64[1], a6.n128_u32[0], a6.n128_u64[1], a7.n128_u64[0], a7.n128_u32[2]);
            sub_3748();
            v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, v45, v47);
            v11 = 0;
            goto LABEL_15;
          }

          v15 = [v11 computeCommandEncoder];
          if (v15)
          {
            v16 = v15;
            LOWORD(v56) = CVPixelBufferGetWidth(*(a1 + 120)) * *(a1 + 128);
            WORD1(v56) = CVPixelBufferGetHeight(*(a1 + 120)) * *(a1 + 128);
            v17 = vcvt_f32_f64(a4[1]);
            *&v55 = vcvt_f32_f64(*a4);
            *(&v55 + 1) = v17;
            v57 = a5;
            v58 = a6;
            v59 = a7;
            PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
            v19 = CVPixelBufferGetPixelFormatType(a3);
            if (PixelFormatType == 1111970369 || v19 == 641877825)
            {
              [v16 setComputePipelineState:*(a1 + 24)];
              [v7 objectAtIndexedSubscript:0];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [v7 objectAtIndexedSubscript:1];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [sub_352C() objectAtIndexedSubscript:?];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              sub_3728(v21, v22, v23, v24, v25, v26, v27, v28, v42, v44, a5.n128_i64[0], a5.n128_i64[1], a6.n128_i64[0], a6.n128_i64[1], a7.n128_i64[0], a7.n128_i64[1], v50.i64[0], v50.i64[1], v51, v52, v53, v54);
              v38 = [sub_352C() objectAtIndexedSubscript:?];
              v29 = [v38 width];
              v40 = [sub_352C() objectAtIndexedSubscript:?];
              v52 = v29;
              v53 = [v40 height];
            }

            else
            {
              [v16 setComputePipelineState:*(a1 + 16)];
              [v7 objectAtIndexedSubscript:0];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [v7 objectAtIndexedSubscript:1];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [sub_352C() objectAtIndexedSubscript:?];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              sub_3728(v30, v31, v32, v33, v34, v35, v36, v37, v42, v44, a5.n128_i64[0], a5.n128_i64[1], a6.n128_i64[0], a6.n128_i64[1], a7.n128_i64[0], a7.n128_i64[1], v50.i64[0], v50.i64[1], v51, v52, v53, v54);
              v38 = [sub_352C() objectAtIndexedSubscript:?];
              v39 = [v38 width];
              v40 = [sub_352C() objectAtIndexedSubscript:?];
              v52 = v39;
              v53 = [v40 height] / 3;
            }

            v54 = 1;
            v50 = vdupq_n_s64(0x20uLL);
            v51 = 1;
            [v16 dispatchThreads:&v52 threadsPerThreadgroup:&v50];

            [v16 endEncoding];
            [v11 commit];
            [v11 waitUntilScheduled];

            v8 = 0;
            goto LABEL_15;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = 0;
LABEL_20:
      v8 = 4294954514;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

LABEL_15:

  return v8;
}

uint64_t sub_FAC4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 112);
  if (!v2 || !*(a1 + 120))
  {
    v3 = 0;
    v4 = 0;
    v6 = 0;
    v13 = 4294954516;
    goto LABEL_9;
  }

  v3 = sub_F2A8(a1, v2, 1);
  if ([v3 count] != &dword_0 + 1)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v4 = sub_F2A8(a1, *(a1 + 120), 2);
  if ([v4 count] != &dword_0 + 1)
  {
LABEL_13:
    v6 = 0;
LABEL_14:
    v13 = 4294954514;
    goto LABEL_9;
  }

  v5 = [*(a1 + 8) commandQueue];
  v6 = [v5 commandBuffer];

  if (!v6)
  {
    sub_3748();
    sub_3714();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v17, v19.i64[0], v19.i64[1], v20, v21, v22, v23);
    sub_3748();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v18, v19.i32[0]);
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [v6 computeCommandEncoder];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  [v7 setComputePipelineState:*(a1 + 32)];
  [v3 objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();
  [sub_274C() setTexture:? atIndex:?];

  v9 = [sub_352C() objectAtIndexedSubscript:?];
  [v8 setTexture:v9 atIndex:1];

  v10 = [sub_352C() objectAtIndexedSubscript:?];
  v11 = [v10 width];
  v12 = [sub_352C() objectAtIndexedSubscript:?];
  v21 = v11;
  v22 = [v12 height];
  v23 = 1;
  v19 = vdupq_n_s64(0x20uLL);
  v20 = 1;
  [v8 dispatchThreads:&v21 threadsPerThreadgroup:&v19];

  [v8 endEncoding];
  [v6 commit];
  [v6 waitUntilScheduled];

  v13 = 0;
LABEL_9:

  return v13;
}

uint64_t sub_FD24(uint64_t a1)
{
  if (a1)
  {
    do
    {
      a1 = sub_36C8(a1);
      if (v2)
      {
        while (1)
        {
          v4 = 0;
          while (*(v1 + 4 * v4) != v3)
          {
            if (v2 == ++v4)
            {
              goto LABEL_8;
            }
          }

          a1 = sub_36C8(a1);
        }
      }

LABEL_8:
      *(v1 + 4 * v2) = v3;
    }

    while (v2 != 5);
  }

  return 0;
}

uint64_t sub_FEDC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferAssembleResidual" constants:0];
  v3 = *(a1 + 72);
  *(a1 + 72) = v2;

  if (*(a1 + 72))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferAssembleSlicesResidual" constants:0];
    v5 = *(a1 + 80);
    *(a1 + 80) = v4;

    if (*(a1 + 80))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferReduceLowFreqDiffYUV" constants:0];
      v7 = *(a1 + 88);
      *(a1 + 88) = v6;

      if (*(a1 + 88))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian3RowGatherXY" constants:0];
        v9 = *(a1 + 32);
        *(a1 + 32) = v8;

        if (*(a1 + 32))
        {
          v10 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian3RowGather" constants:0];
          v11 = *(a1 + 48);
          *(a1 + 48) = v10;

          if (*(a1 + 48))
          {
            v12 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian3RowGather" constants:0];
            v13 = *(a1 + 48);
            *(a1 + 48) = v12;

            if (*(a1 + 48))
            {
              v14 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian5RowGather" constants:0];
              v15 = *(a1 + 56);
              *(a1 + 56) = v14;

              if (*(a1 + 56))
              {
                v16 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian15RowGatherXY" constants:0];
                v17 = *(a1 + 40);
                *(a1 + 40) = v16;

                if (*(a1 + 40))
                {
                  v18 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian29RowGather" constants:0];
                  v19 = *(a1 + 64);
                  *(a1 + 64) = v18;

                  if (*(a1 + 64))
                  {
                    v20 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferYuv444To420" constants:0];
                    v21 = *(a1 + 16);
                    *(a1 + 16) = v20;

                    if (*(a1 + 16))
                    {
                      v22 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferYuv444SlicesTo420" constants:0];
                      v23 = *(a1 + 24);
                      *(a1 + 24) = v22;

                      if (*(a1 + 24))
                      {
                        v24 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferDownsample" constants:0];
                        v25 = *(a1 + 96);
                        *(a1 + 96) = v24;

                        if (*(a1 + 96))
                        {
                          v26 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferUpsample" constants:0];
                          v27 = *(a1 + 104);
                          *(a1 + 104) = v26;

                          if (*(a1 + 104))
                          {
                            v28 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferComputeLumaBlendingMask" constants:0];
                            v29 = *(a1 + 112);
                            *(a1 + 112) = v28;

                            if (*(a1 + 112))
                            {
                              v30 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferModulateMasks" constants:0];
                              v31 = *(a1 + 120);
                              *(a1 + 120) = v30;

                              if (*(a1 + 120))
                              {
                                v32 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferBlendEnhanced" constants:0];
                                v33 = *(a1 + 128);
                                *(a1 + 128) = v32;

                                if (*(a1 + 128))
                                {
                                  return 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v36, v37, v38, v39, v40, v41, vars0, vars8);
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM(v35);
}

uint64_t sub_108FC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 4294954516;
  if (a2 && a3)
  {
    if (((a3 | a2) & 0xF) == 0)
    {
      *(a1 + 288) = a2;
      *(a1 + 292) = a3;
      *(a1 + 312) = a2 >> 2;
      *(a1 + 316) = a3 >> 2;
      v9 = objc_alloc_init(MTLTextureDescriptor);
      if (v9)
      {
        v5 = v9;
        [v9 setWidth:a2];
        [sub_29C0() setHeight:?];
        [v5 setPixelFormat:25];
        [v5 setUsage:3];
        v10 = [*(a1 + 8) device];
        v12 = sub_2AA8(v10, v11);
        v13 = *(a1 + 152);
        *(a1 + 152) = v12;

        if (*(a1 + 152)
          && ([*(a1 + 8) device], v14 = objc_claimAutoreleasedReturnValue(), v16 = sub_2AA8(v14, v15), v17 = *(a1 + 136), *(a1 + 136) = v16, v17, v3, *(a1 + 136))
          && ([*(a1 + 8) device], v18 = objc_claimAutoreleasedReturnValue(), v20 = sub_2AA8(v18, v19), v21 = *(a1 + 184), *(a1 + 184) = v20, v21, v3, *(a1 + 184))
          && ([*(a1 + 8) device], v22 = objc_claimAutoreleasedReturnValue(), v24 = sub_2AA8(v22, v23), v25 = *(a1 + 168), *(a1 + 168) = v24, v25, v3, *(a1 + 168))
          && ([*(a1 + 8) device], v26 = objc_claimAutoreleasedReturnValue(), v28 = sub_2AA8(v26, v27), v29 = *(a1 + 216), *(a1 + 216) = v28, v29, v3, *(a1 + 216))
          && ([*(a1 + 8) device], v30 = objc_claimAutoreleasedReturnValue(), v32 = sub_2AA8(v30, v31), v33 = *(a1 + 224), *(a1 + 224) = v32, v33, v3, *(a1 + 224))
          && ([sub_29C0() setWidth:?], objc_msgSend(v5, "setHeight:", a2), objc_msgSend(*(a1 + 8), "device"), v34 = objc_claimAutoreleasedReturnValue(), v36 = sub_2A90(v34, v35), v37 = *(a1 + 200), *(a1 + 200) = v36, v37, a2, *(a1 + 200))
          && ([sub_29A8() setWidth:?], v38 = (a3 >> 1), objc_msgSend(sub_29CC(), "setHeight:"), objc_msgSend(v5, "setPixelFormat:", 65), objc_msgSend(*(a1 + 8), "device"), v39 = objc_claimAutoreleasedReturnValue(), v41 = sub_2A90(v39, v40), v42 = *(a1 + 160), *(a1 + 160) = v41, v42, a2, *(a1 + 160))
          && ([*(a1 + 8) device], v43 = objc_claimAutoreleasedReturnValue(), v45 = sub_2A90(v43, v44), v46 = *(a1 + 144), *(a1 + 144) = v45, v46, a2, *(a1 + 144))
          && ([*(a1 + 8) device], v47 = objc_claimAutoreleasedReturnValue(), v49 = sub_2A90(v47, v48), v50 = *(a1 + 192), *(a1 + 192) = v49, v50, a2, *(a1 + 192))
          && ([*(a1 + 8) device], v51 = objc_claimAutoreleasedReturnValue(), v53 = sub_2A90(v51, v52), v54 = *(a1 + 176), *(a1 + 176) = v53, v54, a2, *(a1 + 176))
          && ([*(a1 + 8) device], v55 = objc_claimAutoreleasedReturnValue(), v57 = sub_2A90(v55, v56), v58 = *(a1 + 232), *(a1 + 232) = v57, v58, a2, *(a1 + 232))
          && ([sub_29CC() setWidth:?], objc_msgSend(sub_29A8(), "setHeight:"), objc_msgSend(*(a1 + 8), "device"), v59 = objc_claimAutoreleasedReturnValue(), v61 = sub_3A08(v59, v60), v62 = *(a1 + 208), *(a1 + 208) = v61, v62, v38, *(a1 + 208))
          && ([v5 setWidth:*(a1 + 312)], objc_msgSend(v5, "setHeight:", *(a1 + 316)), objc_msgSend(v5, "setPixelFormat:", 25), objc_msgSend(*(a1 + 8), "device"), v63 = objc_claimAutoreleasedReturnValue(), v65 = sub_3A08(v63, v64), v66 = *(a1 + 240), *(a1 + 240) = v65, v66, v38, *(a1 + 240))
          && ([*(a1 + 8) device], v67 = objc_claimAutoreleasedReturnValue(), v69 = sub_3A08(v67, v68), v70 = *(a1 + 248), *(a1 + 248) = v69, v70, v38, *(a1 + 248))
          && ([*(a1 + 8) device], v71 = objc_claimAutoreleasedReturnValue(), v73 = sub_3A08(v71, v72), v74 = *(a1 + 256), *(a1 + 256) = v73, v74, v38, *(a1 + 256)))
        {
          v6 = 0;
        }

        else
        {
          sub_20B8();
          sub_28D8();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v79, v80, v81, v82, v83, v84, v85);
          sub_20B8();
          sub_1EAC();
          v6 = FigSignalErrorAtGM(v77);
        }

        goto LABEL_23;
      }

      fig_log_get_emitter();
      sub_28D8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v79, v80, v81, v82, v83, v84, v85);
      fig_log_get_emitter();
      sub_1EAC();
      v6 = FigSignalErrorAtGM(v76);
    }

    v5 = 0;
  }

LABEL_23:

  return v6;
}

uint64_t sub_1165C(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = *&a1[2];
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    [v11 setComputePipelineState:v10];
    [sub_29CC() setTexture:? atIndex:?];

    [sub_29A8() setTexture:? atIndex:?];
    [v11 setTexture:v12 atIndex:2];

    v15 = [v10 threadExecutionWidth];
    v16 = [v10 maxTotalThreadsPerThreadgroup];
    v17 = a1[36];
    v18 = v16 / v15;

    v19 = vshr_n_u32(v17, 1uLL);
    *&v20 = v19.u32[0];
    *(&v20 + 1) = v19.u32[1];
    v23 = v20;
    v24 = 1;
    v22[0] = v15;
    v22[1] = v18;
    v22[2] = 1;
    [v11 dispatchThreads:&v23 threadsPerThreadgroup:v22];
  }

  return 0;
}

uint64_t sub_1177C(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = *&a1[3];
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    [v11 setComputePipelineState:v10];
    v15 = [v14 objectAtIndexedSubscript:0];
    [sub_29C0() setTexture:? atIndex:?];

    v16 = [v14 objectAtIndexedSubscript:1];
    [sub_29C0() setTexture:? atIndex:?];

    v17 = [v14 objectAtIndexedSubscript:2];

    [sub_29C0() setTexture:? atIndex:?];
    [sub_29A8() setTexture:? atIndex:?];

    [sub_29CC() setTexture:? atIndex:?];
    v18 = [v10 threadExecutionWidth];
    v19 = [v10 maxTotalThreadsPerThreadgroup];
    v20 = a1[36];
    v21 = v19 / v18;

    v22 = vshr_n_u32(v20, 1uLL);
    *&v23 = v22.u32[0];
    *(&v23 + 1) = v22.u32[1];
    v26 = v23;
    v27 = 1;
    v25[0] = v18;
    v25[1] = v21;
    v25[2] = 1;
    [v11 dispatchThreads:&v26 threadsPerThreadgroup:v25];
  }

  return 0;
}

uint64_t sub_118F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a4;
  v17 = a5;
  v44 = a6;
  v18 = a7;
  v43 = a8;
  v19 = a9;
  v20 = v19;
  if (a1)
  {
    v48 = 1065353216;
    v21 = sub_127A4(a1, a2, a3, *(a1 + 200), *(a1 + 208), 5uLL, *(a1 + 288), *(a1 + 292), v19);
    if (v21)
    {
      v39 = v21;
      fig_log_get_emitter();
      sub_3904();
      LODWORD(v41) = v39;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41);
    }

    else
    {
      v22 = sub_127A4(a1, *(a1 + 200), *(a1 + 208), v16, v17, 5uLL, *(a1 + 292), *(a1 + 288), v20);
      if (v22)
      {
        v39 = v22;
        fig_log_get_emitter();
        sub_3904();
        LODWORD(v42) = v39;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v42);
      }

      else
      {
        v23 = v17;
        v24 = v16;
        v25 = v18;
        if ([v44 count] == &dword_0 + 3)
        {
          v26 = *(a1 + 80);
          [v20 setComputePipelineState:v26];
          [v20 setTexture:v24 atIndex:0];
          [v20 setTexture:v23 atIndex:1];
          v27 = [v44 objectAtIndexedSubscript:0];
          v28 = 2;
          [v20 setTexture:v27 atIndex:2];

          v29 = [v44 objectAtIndexedSubscript:1];
          [v20 setTexture:v29 atIndex:3];

          v30 = 6;
          v31 = 5;
          v32 = v44;
          v33 = 4;
        }

        else
        {
          v26 = *(a1 + 72);
          [v20 setComputePipelineState:v26];
          [v20 setTexture:v24 atIndex:0];
          [v20 setTexture:v23 atIndex:1];
          v28 = 0;
          v30 = 4;
          v31 = 3;
          v32 = v44;
          v33 = 2;
        }

        v34 = [v32 objectAtIndexedSubscript:v28];
        [v20 setTexture:v34 atIndex:v33];

        v18 = v25;
        [v20 setTexture:v25 atIndex:v31];
        [v20 setTexture:v43 atIndex:v30];
        [v20 setBytes:&v48 length:4 atIndex:0];
        v35 = [v26 threadExecutionWidth];
        v36 = [v26 maxTotalThreadsPerThreadgroup];
        v37 = *(a1 + 288);
        *&v38 = v37;
        *(&v38 + 1) = HIDWORD(v37);
        v46 = v38;
        v47 = 1;
        v45[0] = v35;
        v45[1] = v36 / v35;
        v45[2] = 1;
        [v20 dispatchThreads:&v46 threadsPerThreadgroup:v45];

        v39 = 0;
        v16 = v24;
        v17 = v23;
      }
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

uint64_t sub_11C80(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (a1)
  {
    v20 = sub_3928();
    v25 = sub_127A4(v20, a2, a3, v21, v22, 0x1DuLL, v23, v24, v66);
    if (v25 || (v26 = sub_396C(), v25 = sub_127A4(v26, v27, v28, v29, v30, 0x1DuLL, v31, v32, v67), v25) || (v33 = sub_3928(), v25 = sub_127A4(v33, v15, v16, v34, v35, 5uLL, v36, v37, v68), v25) || (v38 = sub_396C(), v25 = sub_127A4(v38, v39, v40, v41, v42, 5uLL, v43, v44, v69), v25) || (v45 = sub_3928(), v25 = sub_127A4(v45, v46, v47, v48, v49, 0x1DuLL, v50, v51, v70), v25) || (v52 = sub_396C(), v25 = sub_127A4(v52, v53, v54, v55, v56, 0x1DuLL, v57, v58, v71), v25))
    {
      v64 = v25;
      fig_log_get_emitter();
      sub_38EC();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      goto LABEL_10;
    }

    v59 = *&a1[11];
    [v19 setComputePipelineState:v59];
    [v19 setTexture:*&a1[27] atIndex:0];
    [v19 setTexture:*&a1[23] atIndex:1];
    [v19 setTexture:v15 atIndex:2];
    [v19 setTexture:v17 atIndex:3];
    [v19 setTexture:*&a1[29] atIndex:4];
    [v19 setTexture:*&a1[24] atIndex:5];
    [v19 setTexture:v16 atIndex:6];
    [v19 setTexture:v18 atIndex:7];
    v60 = [v59 threadExecutionWidth];
    v61 = [v59 maxTotalThreadsPerThreadgroup];
    v62 = vshr_n_u32(a1[36], 1uLL);
    *&v63 = v62.u32[0];
    *(&v63 + 1) = v62.u32[1];
    v73 = v63;
    v74 = 1;
    v72[0] = v60;
    v72[1] = v61 / v60;
    v72[2] = 1;
    [v19 dispatchThreads:&v73 threadsPerThreadgroup:v72];
  }

  v64 = 0;
LABEL_10:

  return v64;
}

uint64_t sub_12084(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    *(a1 + 296) = *(a1 + 312);
    v10 = *(a1 + 96);
    sub_3A20();
    v11 = sub_3980();
    sub_200C(v11, v12, *(a1 + 216));
    sub_39A8();
    [v10 threadExecutionWidth];
    sub_3A38();
    *&v13 = sub_3940();
    sub_3950(v14, v15, v16, v17, v13);
    v18 = *(a1 + 96);

    [v9 setComputePipelineState:v18];
    v19 = [sub_399C() setTexture:? atIndex:?];
    sub_200C(v19, v20, *(a1 + 224));
    sub_39A8();
    [v18 threadExecutionWidth];
    [v18 maxTotalThreadsPerThreadgroup];
    *&v21 = sub_3940();
    sub_3950(v22, v23, v24, v25, v21);
    v26 = *(a1 + 112);

    v27 = sub_3A20();
    v29 = sub_20A0(v27, v28, *(a1 + 216));
    sub_200C(v29, v30, *(a1 + 240));
    [v26 threadExecutionWidth];
    sub_3A38();
    *&v31 = sub_3940();
    v36 = sub_3950(v32, v33, v34, v35, v31);
    v38 = sub_39C8(v36, *(a1 + 240), *(a1 + 200), v37, *(a1 + 312), *(a1 + 316));
    if (v38 || (v38 = sub_39C8(v38, *(a1 + 200), *(a1 + 240), v39, *(a1 + 316), *(a1 + 312)), v38) || (v40 = *(a1 + 112), v26, v41 = [v9 setComputePipelineState:v40], v43 = sub_20A0(v41, v42, *(a1 + 224)), sub_200C(v43, v44, *(a1 + 248)), objc_msgSend(v40, "threadExecutionWidth"), objc_msgSend(v40, "maxTotalThreadsPerThreadgroup"), *&v45 = sub_3940(), sub_3950(v46, v47, v48, v49, v45), v50 = *(a1 + 120), v40, v51 = objc_msgSend(v9, "setComputePipelineState:", v50), v53 = sub_20A0(v51, v52, *(a1 + 240)), sub_200C(v53, v54, *(a1 + 248)), objc_msgSend(v9, "setTexture:atIndex:", *(a1 + 256), 2), objc_msgSend(v50, "threadExecutionWidth"), objc_msgSend(v50, "maxTotalThreadsPerThreadgroup"), *&v55 = sub_3940(), sub_3950(v56, v57, v58, v59, v55), *(a1 + 304) = *(a1 + 288), v26 = *(a1 + 104), v50, v60 = sub_3A20(), v62 = sub_20A0(v60, v61, *(a1 + 256)), sub_200C(v62, v63, *(a1 + 216)), objc_msgSend(v26, "threadExecutionWidth"), v64 = sub_3A38(), v68 = sub_3950(v64, v65, v66, v67), v38 = sub_39E8(v68, *(a1 + 216), *(a1 + 200), v69, *(a1 + 288), *(a1 + 292)), v38) || (v38 = sub_39E8(v38, *(a1 + 200), *(a1 + 216), v70, *(a1 + 292), *(a1 + 288)), v38))
    {
      v76 = v38;
      fig_log_get_emitter();
      sub_3918();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      v71 = *(a1 + 128);

      [v9 setComputePipelineState:v71];
      [v9 setImageblockWidth:32 height:32];
      sub_3980();
      [sub_399C() setTexture:? atIndex:?];
      [v9 setTexture:*(a1 + 216) atIndex:2];
      v72 = [sub_399C() setTexture:? atIndex:?];
      sub_3950(v72, v73, v74, v75);
      v76 = 0;
      v26 = v71;
    }
  }

  else
  {
    v76 = 0;
  }

  return v76;
}

void sub_12570(void *a1)
{
  if (a1)
  {
    v2 = a1[17];
    a1[17] = 0;

    v3 = a1[18];
    a1[18] = 0;

    v4 = a1[19];
    a1[19] = 0;

    v5 = a1[20];
    a1[20] = 0;

    v6 = a1[25];
    a1[25] = 0;

    v7 = a1[26];
    a1[26] = 0;

    v8 = a1[27];
    a1[27] = 0;

    v9 = a1[28];
    a1[28] = 0;

    v10 = a1[29];
    a1[29] = 0;

    v11 = a1[23];
    a1[23] = 0;

    v12 = a1[24];
    a1[24] = 0;

    v13 = a1[21];
    a1[21] = 0;

    v14 = a1[22];
    a1[22] = 0;

    v15 = a1[30];
    a1[30] = 0;

    v16 = a1[31];
    a1[31] = 0;

    v17 = a1[32];
    a1[32] = 0;
  }
}

uint64_t sub_12664(uint64_t a1, void *a2, void *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a8;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (a7)
  {
    switch(a4)
    {
      case 3:
        v18 = 48;
        goto LABEL_14;
      case 0x1D:
        v18 = 64;
        goto LABEL_14;
      case 5:
        v18 = 56;
LABEL_14:
        v20 = *(a1 + v18);
        sub_3A20();
        sub_3980();
        [sub_399C() setTexture:? atIndex:?];
        [v20 threadExecutionWidth];
        v23[0] = a5 >> 1;
        v23[1] = a6 >> 1;
        v23[2] = 1;
        v22[0] = a4;
        v22[1] = sub_3A38() / a4;
        v22[2] = 1;
        [v17 dispatchThreads:v23 threadsPerThreadgroup:v22];

LABEL_15:
        v19 = 0;
        goto LABEL_16;
    }
  }

  else
  {
    if (a4 == 15)
    {
      v18 = 40;
      goto LABEL_14;
    }

    if (a4 == 3)
    {
      v18 = 32;
      goto LABEL_14;
    }
  }

  v19 = 4294954516;
LABEL_16:

  return v19;
}

uint64_t sub_127A4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unint64_t a6, unsigned int a7, unsigned int a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  if (a1)
  {
    v21 = sub_12664(a1, v16, v18, a6, a7, a8, 1, v20);
    if (!v21)
    {
      v21 = sub_12664(a1, v17, v19, (a6 >> 1) + 1, a7 >> 1, a8 >> 1, 0, v20);
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}