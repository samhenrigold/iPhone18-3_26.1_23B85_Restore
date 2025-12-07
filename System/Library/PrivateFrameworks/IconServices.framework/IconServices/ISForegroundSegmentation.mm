@interface ISForegroundSegmentation
- (BOOL)computeMaskWithWidth:(int)width height:(int)height samples:(id)samples foregroundMask:(id *)mask;
- (ISForegroundSegmentation)initWithStrict:(BOOL)strict;
@end

@implementation ISForegroundSegmentation

- (ISForegroundSegmentation)initWithStrict:(BOOL)strict
{
  strictCopy = strict;
  v7.receiver = self;
  v7.super_class = ISForegroundSegmentation;
  result = [(ISForegroundSegmentation *)&v7 init];
  if (result)
  {
    result->_strict = strictCopy;
    *&result->_numberOfClusters = xmmword_1A78250D0;
    result->_clusterGroupingDistanceThreshold = 1.0;
    v5 = 0.17647;
    if (strictCopy)
    {
      v5 = 0.015686;
      v6 = 2;
    }

    else
    {
      v6 = 140;
    }

    result->_borderNoiseScale = v5;
    result->_BOOLeanThreshold = v6;
  }

  return result;
}

- (BOOL)computeMaskWithWidth:(int)width height:(int)height samples:(id)samples foregroundMask:(id *)mask
{
  result = 0;
  v359[12] = *MEMORY[0x1E69E9840];
  if (width < 8 || height < 8)
  {
    return result;
  }

  v9 = *&samples.var2;
  v10 = *&samples.var0;
  selfCopy = self;
  v314 = &v311;
  LODWORD(v6) = width / 3u;
  LODWORD(v11) = width / 3u;
  HIDWORD(v11) = 1;
  LODWORD(v12) = width >> 1;
  LODWORD(v13) = width >> 1;
  HIDWORD(v13) = 1;
  v359[0] = v11;
  v359[1] = v13;
  LODWORD(v11) = 4 * width / 6u;
  v14 = height / 3u;
  LODWORD(v15) = 1;
  LODWORD(v16) = 1;
  HIDWORD(v16) = height / 3u;
  v359[2] = v11 | 0x100000000;
  v359[3] = v16;
  widthCopy = width;
  heightCopy = height;
  LODWORD(v13) = width - 2;
  LODWORD(v16) = 1;
  HIDWORD(v16) = height >> 1;
  HIDWORD(v15) = 4 * height / 6u;
  v359[4] = v16;
  v359[5] = v15;
  LODWORD(v15) = width - 2;
  HIDWORD(v15) = height / 3u;
  LODWORD(v16) = width - 2;
  HIDWORD(v16) = height >> 1;
  v359[6] = v15;
  v359[7] = v16;
  HIDWORD(v13) = 4 * height / 6u;
  *v328 = v6;
  LODWORD(v15) = width / 3u;
  HIDWORD(v15) = height - 2;
  v359[8] = v13;
  v359[9] = v15;
  HIDWORD(v12) = height - 2;
  HIDWORD(v11) = height - 2;
  v359[10] = v12;
  v359[11] = v11;
  MEMORY[0x1EEE9AC00](0);
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = HIDWORD(v359[v17]);
    v20 = v359[v17];
    v338.i32[2] = 0;
    v338.i64[0] = 0;
    v340 = *v10;
    v341 = v10[1].i64[0];
    v21 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v20, v19, &v338, 0);
    if (v21)
    {
      *&v310[16 * v18++ + 320] = v338;
    }

    ++v17;
  }

  while (v17 != 12);
  v22 = heightCopy;
  LODWORD(v23) = v328[0];
  LODWORD(v24) = v328[0];
  HIDWORD(v24) = heightCopy / 0xC;
  LODWORD(v25) = (1431655766 * (2 * widthCopy)) >> 32;
  LODWORD(v26) = v25;
  HIDWORD(v26) = heightCopy / 0xC;
  v340.i64[0] = v24;
  v340.i64[1] = v26;
  LODWORD(v24) = v25;
  HIDWORD(v24) = heightCopy / 0xA;
  LODWORD(v26) = v328[0];
  HIDWORD(v26) = heightCopy / 0xA;
  v27 = widthCopy / 0xC;
  LODWORD(v28) = widthCopy / 0xC;
  LODWORD(v29) = widthCopy / 0xC;
  HIDWORD(v29) = v14;
  HIDWORD(v28) = (1431655766 * (2 * heightCopy)) >> 32;
  v341 = v24;
  v342 = v26;
  v343 = v29;
  v344 = v28;
  LODWORD(v24) = widthCopy / 0xA;
  LODWORD(v26) = widthCopy / 0xA;
  HIDWORD(v26) = v14;
  HIDWORD(v24) = HIDWORD(v28);
  LODWORD(v28) = widthCopy - 1 - widthCopy / 0xC;
  v345 = v26;
  v346 = v24;
  v347 = __PAIR64__(v14, v28);
  v348 = v28;
  LODWORD(v24) = widthCopy - 1 - widthCopy / 0xA;
  HIDWORD(v24) = HIDWORD(v28);
  v349 = __PAIR64__(v14, v24);
  v350 = v24;
  LODWORD(v24) = v328[0];
  HIDWORD(v24) = v22 - 1 - v22 / 0xC;
  HIDWORD(v23) = v22 - 1 - v22 / 0xA;
  v351 = v24;
  v352 = __PAIR64__(HIDWORD(v24), v25);
  HIDWORD(v25) = HIDWORD(v23);
  v30 = widthCopy / 8.5;
  v31 = heightCopy / 8.5;
  v325.i32[0] = widthCopy - 1;
  LODWORD(v28) = v30;
  v32 = ((widthCopy - 1) - v30);
  LODWORD(v30) = v30;
  HIDWORD(v30) = v31;
  v353 = v23;
  v354 = v25;
  LODWORD(v25) = v32;
  LODWORD(v29) = v32;
  HIDWORD(v29) = v31;
  v355 = v30;
  v356 = v29;
  LODWORD(v316) = heightCopy - 1;
  HIDWORD(v28) = ((heightCopy - 1) - v31);
  HIDWORD(v25) = HIDWORD(v28);
  v357 = v28;
  v358 = v25;
  MEMORY[0x1EEE9AC00](v21);
  v33 = 0;
  v34 = 0;
  do
  {
    v35 = HIDWORD(v340.i64[v33]);
    v36 = v340.i64[v33];
    v335.i32[2] = 0;
    v335.i64[0] = 0;
    v338 = *v10;
    v339 = v10[1].i64[0];
    if (ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v36, v35, &v335, 0))
    {
      *&v310[16 * v34++] = v335;
    }

    ++v33;
  }

  while (v33 != 20);
  v326.i32[0] = 0;
  v324 = 2;
  if (v18 == 12)
  {
    _ZF = v34 == 20;
    v38 = selfCopy;
    v40 = widthCopy;
    v39 = heightCopy;
    if (_ZF)
    {
      v41 = 0;
      v42 = 0uLL;
      do
      {
        v42 = vaddq_f32(v42, *&v310[v41 + 320]);
        v41 += 16;
      }

      while (v41 != 192);
      v43 = 0;
      __asm { FMOV            V1.4S, #12.0 }

      v48 = vdivq_f32(v42, _Q1);
      v49 = 0.0;
      do
      {
        v50 = vsubq_f32(*&v310[v43 + 320], v48);
        v51 = vmulq_f32(v50, v50);
        v51.f32[0] = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
        v49 = v49 + (v51.f32[0] * v51.f32[0]);
        v43 += 16;
      }

      while (v43 != 192);
      v52 = 0;
      v53 = 0uLL;
      do
      {
        v53 = vaddq_f32(v53, *&v310[v52]);
        v52 += 16;
      }

      while (v52 != 320);
      v54 = 0;
      __asm { FMOV            V3.4S, #20.0 }

      v56 = vdivq_f32(v53, _Q3);
      v57 = 0.0;
      do
      {
        v58 = vsubq_f32(*&v310[v54], v56);
        v59 = vmulq_f32(v58, v58);
        v59.f32[0] = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
        v57 = v57 + (v59.f32[0] * v59.f32[0]);
        v54 += 16;
      }

      while (v54 != 320);
      v326.i32[0] = 0;
      v60 = vsubq_f32(v48, v56);
      v61 = vmulq_f32(v60, v60);
      v324 = 2;
      if (sqrtf(v61.f32[2] + vaddv_f32(*v61.f32)) > 0.196078431 && (v49 / 12.0) <= 0.00392156863)
      {
        if ((v57 / 20.0) <= 0.00392156863)
        {
          v324 = v27;
          v326.i32[0] = v27;
        }

        else
        {
          v326.i32[0] = 0;
          v324 = 2;
        }
      }
    }
  }

  else
  {
    v38 = selfCopy;
    v40 = widthCopy;
    v39 = heightCopy;
  }

  v313 = v39 * v40;
  borderSamplingWidth = v38->_borderSamplingWidth;
  v335 = *v10;
  v336 = v10[1].i64[0];
  v333 = 0;
  v334.i8[2] = 0;
  v334.i16[0] = 0;
  v338 = *v10;
  v339 = v10[1].i64[0];
  v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v338, v324, v324, &v334, *v338.f32);
  if (v64)
  {
    v65 = v325.i32[0] - v326.i32[0];
    if (v325.i32[0] - v326.i32[0] <= v326.i32[0])
    {
LABEL_37:
      v71 = v65;
      if (borderSamplingWidth < 1)
      {
LABEL_45:
        if (v71 <= v326.i32[0])
        {
LABEL_53:
          if (borderSamplingWidth < 1)
          {
LABEL_61:
            v63.i32[0] = v334.i32[0];
            v92 = vmovl_u8(v63).u64[0];
            v94 = vmovl_u16(v92);
            *v94.f32 = vcvt_f32_u32(vand_s8(*v94.f32, 0xFF000000FFLL));
            v94.f32[2] = v92.u16[2];
            *v328 = v94;
            v93 = vdivq_f32(v94, vdupq_n_s32(0x437F0000u));
            v93.f32[0] = (v93.f32[2] + vaddv_f32(*v93.f32)) / 3.0;
            v94.f32[0] = (v93.f32[0] * -1.1) + 7.41;
            v95 = (v93.f32[0] * -37.0) + 139.52;
            if (selfCopy->_strict)
            {
              v96 = v94.f32[0];
            }

            else
            {
              v96 = v95;
            }

            if (v10->i32[3] != 5 || v10->i32[2] || v9->i32[2] || (v9->i8[12] & 1) != 0)
            {
              v97 = v313;
              if (v313 >= 1)
              {
                v98 = 0;
                v327 = vdupq_n_s32(0x437F0000u);
                do
                {
                  v335.i32[2] = 0;
                  v335.i64[0] = 0;
                  v334.i32[0] = 0;
                  v338 = *v10;
                  v339 = v10[1].i64[0];
                  ISSegmentationSamples_readSample_i(&v338, v98, &v335, &v334, *v338.f32);
                  v99 = 0;
                  if (v334.f32[0] > 0.0)
                  {
                    v100 = vsubq_f32(vmulq_f32(v335, v327), *v328);
                    v101 = vmulq_f32(v100, v100);
                    if ((v334.f32[0] * sqrtf(v101.f32[2] + vaddv_f32(*v101.f32))) <= v96)
                    {
                      v99 = 0;
                    }

                    else
                    {
                      v99 = -1;
                    }
                  }

                  v338 = *v9;
                  v339 = v9[1].i64[0];
                  ISSegmentationMask_writeMaskValue_i(&v338, v98++, v99);
                  result = 1;
                }

                while (v97 != v98);
                return result;
              }
            }

            else
            {
              v304 = v313;
              if (v313 >= 1)
              {
                v305 = 0;
                result = 1;
                do
                {
                  v94.i32[0] = *(v10[1].i64[0] + 4 * v305);
                  v306 = vmovl_u8(*v94.f32).u64[0];
                  v307 = vmovl_u16(v306);
                  *v307.f32 = vcvt_f32_u32(vand_s8(*v307.f32, 0xFF000000FFLL));
                  v307.f32[2] = v306.u16[2];
                  v308 = vsubq_f32(v307, *v328);
                  v94 = vmulq_f32(v308, v308);
                  if (sqrtf(v94.f32[2] + vaddv_f32(*v94.f32)) <= v96)
                  {
                    v309 = 0;
                  }

                  else
                  {
                    v309 = -1;
                  }

                  *(v9[1].i64[0] + v305++) = v309;
                }

                while (v304 != v305);
                return result;
              }
            }

            return 1;
          }

          v84 = v324;
          v85 = borderSamplingWidth + v324;
          v86 = ~v326.i32[0] + heightCopy;
          v87 = ~(2 * v326.i32[0]) + heightCopy;
          while (v86 <= v326.i32[0])
          {
LABEL_60:
            if (++v84 >= v85)
            {
              goto LABEL_61;
            }
          }

          v88 = v87;
          v89 = v326.i32[0];
          while (1)
          {
            v329 = 0;
            BYTE2(v337) = 0;
            LOWORD(v337) = 0;
            v338 = v335;
            v339 = v336;
            v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v338, v84, v89, &v337, *v335.f32);
            if (v91)
            {
              v63.i32[0] = v337;
              v90.i32[0] = v334.i32[0];
              v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v90));
              v63.i8[1] = v63.i8[2];
              v63.i8[2] = v63.i8[4];
              v63.i8[3] = v63.i8[4];
              v63.i16[2] = v63.i16[0];
              v63.i8[6] = v63.i8[3];
              v63.i8[7] = v63.i8[3];
              if ((vminv_u8(v63) & 0x80) == 0)
              {
                break;
              }
            }

            ++v89;
            if (!--v88)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          v79 = ~v324 + heightCopy;
          v80 = v326.i32[0];
          while (borderSamplingWidth < 1)
          {
LABEL_52:
            if (++v80 == v71)
            {
              goto LABEL_53;
            }
          }

          v81 = v79 - borderSamplingWidth;
          while (1)
          {
            v330 = 0;
            BYTE2(v337) = 0;
            LOWORD(v337) = 0;
            v338 = v335;
            v339 = v336;
            v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v338, v80, v81, &v337, *v335.f32);
            if (v83)
            {
              v63.i32[0] = v337;
              v82.i32[0] = v334.i32[0];
              v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v82));
              v63.i8[1] = v63.i8[2];
              v63.i8[2] = v63.i8[4];
              v63.i8[3] = v63.i8[4];
              v63.i16[2] = v63.i16[0];
              v63.i8[6] = v63.i8[3];
              v63.i8[7] = v63.i8[3];
              if ((vminv_u8(v63) & 0x80) == 0)
              {
                break;
              }
            }

            if (++v81 >= v79)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        v72 = v325.i32[0] - v324;
        v73 = v325.i32[0] - v324 - borderSamplingWidth;
        v74 = ~v326.i32[0] + heightCopy;
        LODWORD(v328[0]) = ~(2 * v326.i32[0]) + heightCopy;
        while (v74 <= v326.i32[0])
        {
LABEL_44:
          if (++v73 >= v72)
          {
            goto LABEL_45;
          }
        }

        v75 = v328[0];
        v76 = v326.i32[0];
        while (1)
        {
          v331 = 0;
          BYTE2(v337) = 0;
          LOWORD(v337) = 0;
          v338 = v335;
          v339 = v336;
          v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v338, v73, v76, &v337, *v335.f32);
          if (v78)
          {
            v63.i32[0] = v337;
            v77.i32[0] = v334.i32[0];
            v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v77));
            v63.i8[1] = v63.i8[2];
            v63.i8[2] = v63.i8[4];
            v63.i8[3] = v63.i8[4];
            v63.i16[2] = v63.i16[0];
            v63.i8[6] = v63.i8[3];
            v63.i8[7] = v63.i8[3];
            if ((vminv_u8(v63) & 0x80) == 0)
            {
              break;
            }
          }

          ++v76;
          if (!--v75)
          {
            goto LABEL_44;
          }
        }
      }

      v38 = selfCopy;
      v40 = widthCopy;
    }

    else
    {
      v66 = borderSamplingWidth + v324;
      v67 = v326.i32[0];
      while (borderSamplingWidth < 1)
      {
LABEL_36:
        if (++v67 == v65)
        {
          goto LABEL_37;
        }
      }

      v68 = v324;
      while (1)
      {
        v332 = 0;
        BYTE2(v337) = 0;
        LOWORD(v337) = 0;
        v338 = v335;
        v339 = v336;
        v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v338, v67, v68, &v337, *v335.f32);
        if (v70)
        {
          v63.i32[0] = v337;
          v69.i32[0] = v334.i32[0];
          v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v69));
          v63.i8[1] = v63.i8[2];
          v63.i8[2] = v63.i8[4];
          v63.i8[3] = v63.i8[4];
          v63.i16[2] = v63.i16[0];
          v63.i8[6] = v63.i8[3];
          v63.i8[7] = v63.i8[3];
          if ((vminv_u8(v63) & 0x80) == 0)
          {
            break;
          }
        }

        if (++v68 >= v66)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v102 = malloc_type_malloc(16 * v38->_maxNumberOfClusteringSamples, 0x1000040451B5BE8uLL);
  v315 = v102;
  v337 = 10;
  v103 = v326.i32[0];
  if (v38->_maxNumberOfClusteringSamples < 4)
  {
    LODWORD(v320) = 0;
  }

  else
  {
    v104 = 0;
    LODWORD(v320) = 0;
    v105 = v40 - v326.i32[0];
    LODWORD(v322) = v40 - v326.i32[0];
    do
    {
      v106 = ISSegmentationMathUtils_rand_open(&v337, v103, v105);
      v107 = ISSegmentationMathUtils_rand_open(&v337, v324, v38->_borderSamplingWidth + v324);
      v335.i32[2] = 0;
      v335.i64[0] = 0;
      v338 = *v10;
      v339 = v10[1].i64[0];
      v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v106, v107, &v335, 0);
      if (v102)
      {
        v108 = ISSegmentationMathUtils_luma(v335);
        v102 = rand_r(&v337);
        if (vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v108 * -0.47619) + 1.0))
        {
          if (v106 <= 1)
          {
            v110 = 1;
          }

          else
          {
            v110 = v106;
          }

          v111 = v110 - 1;
          if (v106 + 1 < v325.i32[0])
          {
            v112 = v106 + 1;
          }

          else
          {
            v112 = v325.i32[0];
          }

          LODWORD(v328[0]) = v112;
          if (v111 <= v112)
          {
            v327.i32[0] = v104;
            v113 = 0;
            if (v107 <= 1)
            {
              v114 = 1;
            }

            else
            {
              v114 = v107;
            }

            v115 = v114 - 1;
            if (v107 + 1 < v316)
            {
              v116 = v107 + 1;
            }

            else
            {
              v116 = v316;
            }

            v117 = v116 - v114 + 2;
            do
            {
              v118 = v117;
              v119 = v115;
              if (v115 <= v116)
              {
                do
                {
                  v334.i32[2] = 0;
                  v334.i64[0] = 0;
                  v338 = *v10;
                  v339 = v10[1].i64[0];
                  v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v111, v119, &v334, 0);
                  if (v102)
                  {
                    v120 = vsubq_f32(v335, v334);
                    v109 = vmulq_f32(v120, v120);
                    *v109.i64 = sqrtf(v109.f32[2] + vaddv_f32(*v109.f32));
                    if (*v109.i64 <= 0.0431372549)
                    {
                      ++v113;
                    }
                  }

                  ++v119;
                  --v118;
                }

                while (v118);
              }

              _ZF = v111++ == LODWORD(v328[0]);
            }

            while (!_ZF);
            v40 = widthCopy;
            v103 = v326.i32[0];
            v104 = v327.i32[0];
            v38 = selfCopy;
            if (v113 >= 6)
            {
              v109.i32[0] = LODWORD(selfCopy->_borderNoiseScale);
              *v328 = v109;
              v121.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
              v323 = v121;
              *&v122 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
              v317 = v122;
              v123 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
              v124 = v323;
              v124.i32[1] = v317;
              v124.f32[2] = v123;
              v125 = v320;
              v315[v320] = vaddq_f32(v335, vmulq_n_f32(v124, *v328));
              LODWORD(v320) = v125 + 1;
            }
          }

          v105 = v322;
        }
      }

      ++v104;
      maxNumberOfClusteringSamples = v38->_maxNumberOfClusteringSamples;
    }

    while (v104 < maxNumberOfClusteringSamples / 4);
    if (maxNumberOfClusteringSamples >= 4)
    {
      v127 = 0;
      v323.i32[0] = v40 - v324;
      v128 = heightCopy - v103;
      LODWORD(v317) = heightCopy - v103;
      do
      {
        v327.i32[0] = v127;
        v129 = ISSegmentationMathUtils_rand_open(&v337, v323.i32[0] - v38->_borderSamplingWidth, v323.i32[0]);
        v130 = ISSegmentationMathUtils_rand_open(&v337, v103, v128);
        v335.i32[2] = 0;
        v335.i64[0] = 0;
        v338 = *v10;
        v339 = v10[1].i64[0];
        v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v129, v130, &v335, 0);
        if (v102 && (v131 = ISSegmentationMathUtils_luma(v335), v102 = rand_r(&v337), vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v131 * -0.47619) + 1.0)))
        {
          if (v129 <= 1)
          {
            v134 = 1;
          }

          else
          {
            v134 = v129;
          }

          v135 = v134 - 1;
          if (v129 + 1 < v325.i32[0])
          {
            v136 = v129 + 1;
          }

          else
          {
            v136 = v325.i32[0];
          }

          LODWORD(v328[0]) = v136;
          if (v135 <= v136)
          {
            v137 = 0;
            if (v130 <= 1)
            {
              v138 = 1;
            }

            else
            {
              v138 = v130;
            }

            v139 = v138 - 1;
            if (v130 + 1 < v316)
            {
              v140 = v130 + 1;
            }

            else
            {
              v140 = v316;
            }

            v141 = v140 - v138 + 2;
            do
            {
              v142 = v141;
              v143 = v139;
              if (v139 <= v140)
              {
                do
                {
                  v334.i32[2] = 0;
                  v334.i64[0] = 0;
                  v338 = *v10;
                  v339 = v10[1].i64[0];
                  v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v135, v143, &v334, 0);
                  if (v102)
                  {
                    v144 = vsubq_f32(v335, v334);
                    v132 = vmulq_f32(v144, v144);
                    *v132.i64 = sqrtf(v132.f32[2] + vaddv_f32(*v132.f32));
                    if (*v132.i64 <= 0.0431372549)
                    {
                      ++v137;
                    }
                  }

                  ++v143;
                  --v142;
                }

                while (v142);
              }

              _ZF = v135++ == LODWORD(v328[0]);
            }

            while (!_ZF);
            v230 = v137 < 6;
            v133 = heightCopy;
            v103 = v326.i32[0];
            v105 = v322;
            v38 = selfCopy;
            if (!v230)
            {
              v132.i32[0] = LODWORD(selfCopy->_borderNoiseScale);
              *v328 = v132;
              v145.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
              v312 = v145;
              *&v146 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
              v311 = v146;
              v147 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
              v148 = v312;
              v148.i32[1] = v311;
              v148.f32[2] = v147;
              v149 = v320;
              v315[v320] = vaddq_f32(v335, vmulq_n_f32(v148, *v328));
              LODWORD(v320) = v149 + 1;
            }
          }

          else
          {
            v38 = selfCopy;
            v133 = heightCopy;
          }

          v128 = v317;
        }

        else
        {
          v38 = selfCopy;
          v133 = heightCopy;
        }

        v127 = v327.i32[0] + 1;
        v150 = v38->_maxNumberOfClusteringSamples;
      }

      while (v327.i32[0] + 1 < v150 / 4);
      if (v150 >= 4)
      {
        v327.i32[0] = v133 - v324;
        v151 = 0;
        do
        {
          v152 = ISSegmentationMathUtils_rand_open(&v337, v103, v105);
          v153 = ISSegmentationMathUtils_rand_open(&v337, v327.i32[0] - v38->_borderSamplingWidth, v327.i32[0]);
          v335.i32[2] = 0;
          v335.i64[0] = 0;
          v338 = *v10;
          v339 = v10[1].i64[0];
          v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v152, v153, &v335, 0);
          if (v102 && (v154 = ISSegmentationMathUtils_luma(v335), v102 = rand_r(&v337), vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v154 * -0.47619) + 1.0)))
          {
            if (v152 <= 1)
            {
              v157 = 1;
            }

            else
            {
              v157 = v152;
            }

            v158 = v157 - 1;
            if (v152 + 1 < v325.i32[0])
            {
              v159 = v152 + 1;
            }

            else
            {
              v159 = v325.i32[0];
            }

            LODWORD(v328[0]) = v159;
            if (v158 <= v159)
            {
              v323.i32[0] = v151;
              v160 = 0;
              if (v153 <= 1)
              {
                v161 = 1;
              }

              else
              {
                v161 = v153;
              }

              v162 = v161 - 1;
              if (v153 + 1 < v316)
              {
                v163 = v153 + 1;
              }

              else
              {
                v163 = v316;
              }

              v164 = v163 - v161 + 2;
              do
              {
                v165 = v164;
                v166 = v162;
                if (v162 <= v163)
                {
                  do
                  {
                    v334.i32[2] = 0;
                    v334.i64[0] = 0;
                    v338 = *v10;
                    v339 = v10[1].i64[0];
                    v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v158, v166, &v334, 0);
                    if (v102)
                    {
                      v167 = vsubq_f32(v335, v334);
                      v155 = vmulq_f32(v167, v167);
                      *v155.i64 = sqrtf(v155.f32[2] + vaddv_f32(*v155.f32));
                      if (*v155.i64 <= 0.0431372549)
                      {
                        ++v160;
                      }
                    }

                    ++v166;
                    --v165;
                  }

                  while (v165);
                }

                _ZF = v158++ == LODWORD(v328[0]);
              }

              while (!_ZF);
              v103 = v326.i32[0];
              v105 = v322;
              v128 = v317;
              v38 = selfCopy;
              if (v160 >= 6)
              {
                v155.i32[0] = LODWORD(selfCopy->_borderNoiseScale);
                *v328 = v155;
                v168.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
                v312 = v168;
                *&v169 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
                v311 = v169;
                v170 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
                v171 = v312;
                v171.i32[1] = v311;
                v171.f32[2] = v170;
                v172 = v320;
                v315[v320] = vaddq_f32(v335, vmulq_n_f32(v171, *v328));
                LODWORD(v320) = v172 + 1;
              }

              v151 = v323.i32[0];
            }

            else
            {
              v38 = selfCopy;
              v128 = v317;
            }
          }

          else
          {
            v38 = selfCopy;
          }

          ++v151;
          v156 = v38->_maxNumberOfClusteringSamples;
        }

        while (v151 < v156 / 4);
        if (v156 >= 4)
        {
          v283 = 0;
          do
          {
            v284 = ISSegmentationMathUtils_rand_open(&v337, v324, v38->_borderSamplingWidth + v324);
            v285 = ISSegmentationMathUtils_rand_open(&v337, v103, v128);
            v335.i32[2] = 0;
            v335.i64[0] = 0;
            v338 = *v10;
            v339 = v10[1].i64[0];
            v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v284, v285, &v335, 0);
            if (v102 && (v286 = ISSegmentationMathUtils_luma(v335), v102 = rand_r(&v337), vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v286 * -0.47619) + 1.0)) && (v284 <= 1 ? (v288 = 1) : (v288 = v284), (v289 = v288 - 1, v284 + 1 < v325.i32[0]) ? (v290 = v284 + 1) : (v290 = v325.i32[0]), LODWORD(v328[0]) = v290, v289 <= v290))
            {
              v327.i32[0] = v283;
              v291 = 0;
              if (v285 <= 1)
              {
                v292 = 1;
              }

              else
              {
                v292 = v285;
              }

              v293 = v292 - 1;
              if (v285 + 1 < v316)
              {
                v294 = v285 + 1;
              }

              else
              {
                v294 = v316;
              }

              v295 = v294 - v292 + 2;
              do
              {
                v296 = v295;
                v297 = v293;
                if (v293 <= v294)
                {
                  do
                  {
                    v334.i32[2] = 0;
                    v334.i64[0] = 0;
                    v338 = *v10;
                    v339 = v10[1].i64[0];
                    v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v338, v289, v297, &v334, 0);
                    if (v102)
                    {
                      v298 = vsubq_f32(v335, v334);
                      v287 = vmulq_f32(v298, v298);
                      *v287.i64 = sqrtf(v287.f32[2] + vaddv_f32(*v287.f32));
                      if (*v287.i64 <= 0.0431372549)
                      {
                        ++v291;
                      }
                    }

                    ++v297;
                    --v296;
                  }

                  while (v296);
                }

                _ZF = v289++ == LODWORD(v328[0]);
              }

              while (!_ZF);
              v103 = v326.i32[0];
              v128 = v317;
              v38 = selfCopy;
              if (v291 >= 6)
              {
                v287.i32[0] = LODWORD(selfCopy->_borderNoiseScale);
                *v328 = v287;
                v299.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
                v323 = v299;
                *&v300 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
                v322 = v300;
                v301 = ISSegmentationMathUtils_sampleNormalDistribution(&v337);
                v302 = v323;
                v302.i32[1] = v322;
                v302.f32[2] = v301;
                v303 = v320;
                v315[v320] = vaddq_f32(v335, vmulq_n_f32(v302, *v328));
                LODWORD(v320) = v303 + 1;
              }

              v283 = v327.i32[0];
            }

            else
            {
              v128 = v317;
            }

            ++v283;
          }

          while (v283 < v38->_maxNumberOfClusteringSamples / 4);
        }
      }
    }
  }

  v173 = MEMORY[0x1EEE9AC00](v102);
  v175 = &v310[-16 * v174];
  v176 = MEMORY[0x1EEE9AC00](v173);
  v178 = &v310[-16 * v177];
  v179 = MEMORY[0x1EEE9AC00](v176);
  v181 = &v310[-16 * v180];
  MEMORY[0x1EEE9AC00](v179);
  v183 = &v310[-((v182 + 15) & 0x7FFFFFFF0)];
  v184 = v320;
  v186 = malloc_type_malloc(4 * v185 * v320, 0x100004052888210uLL);
  numberOfClusters = v38->_numberOfClusters;
  numberOfClusteringSteps = v38->_numberOfClusteringSteps;
  v189 = v184;
  v190 = v315;
  v323.i64[0] = v178;
  *&v317 = v181;
  ISSegmentationMathUtils_gmm(v189, numberOfClusters, numberOfClusteringSteps, v315, v175, v178, v181, v183, v186);
  free(v190);
  free(v186);
  v192 = v38->_numberOfClusters;
  if (v192 <= 1)
  {
    *&v311 = 0;
  }

  else
  {
    v193 = 0;
    v194 = *v183;
    for (i = 1; i != v192; ++i)
    {
      if (v183[i] > v194)
      {
        v194 = v183[i];
        v193 = i;
      }
    }

    *&v311 = v193;
  }

  v196 = MEMORY[0x1EEE9AC00](v191);
  v320 = &v310[-v197];
  v198 = MEMORY[0x1EEE9AC00](v196);
  *&v322 = v199;
  v312.i64[0] = &v310[-((v199 + 15) & 0x7FFFFFFF0)];
  v200 = MEMORY[0x1EEE9AC00](v198);
  v316 = &v310[-16 * v192];
  MEMORY[0x1EEE9AC00](v200);
  v315 = &v310[-16 * v201];
  clusterGroupingDistanceThreshold = v38->_clusterGroupingDistanceThreshold;
  if (v192 >= 1)
  {
    v203 = 0;
    v204 = v323.i64[0] + 32;
    v205 = v320;
    do
    {
      v206 = 0;
      v207 = v323.i64[0] + 48 * v203;
      v208 = *(v207 + 32);
      v327 = *(v207 + 16);
      *v328 = v208;
      v209 = *v207;
      v325 = v175[v203];
      v326 = v209;
      v210 = v175;
      v211 = v204;
      do
      {
        *&v205[4 * v206] = ISSegmentationMathUtils_bhattacharyyaDistance(v325, v326, v327, *v328, v210[v206], v211[-2], v211[-1], *v211);
        ++v206;
        v211 += 3;
      }

      while (v192 != v206);
      ++v203;
      v205 += v322;
      v175 = v210;
    }

    while (v203 != v192);
  }

  v325.i64[0] = objc_opt_new();
  v212 = objc_opt_new();
  v213 = objc_opt_new();
  if (v192 >= 1)
  {
    v214 = 0;
    v215 = v175[v311];
    __asm { FMOV            V0.4S, #-1.0 }

    v217 = vaddq_f32(v215, _Q0);
    v218 = vmulq_f32(v217, v217);
    v219 = sqrtf(v218.f32[2] + vaddv_f32(*v218.f32)) * 0.19;
    *v328 = v215;
    v220 = vmulq_f32(v215, v215);
    v221 = sqrtf(v220.f32[2] + vaddv_f32(*v220.f32)) * 0.19;
    __asm { FMOV            V0.4S, #1.0 }

    v323 = _Q0;
    do
    {
      v327 = v175[v214];
      *v223.i64 = ISSegmentationMathUtils_clampedProject(v327, *v328, v323);
      v326 = v223;
      *v224.i64 = ISSegmentationMathUtils_clampedProject(v327, *v328, 0);
      v225 = vsubq_f32(v327, v326);
      v226 = vmulq_f32(v225, v225);
      _NF = sqrtf(v226.f32[2] + vaddv_f32(*v226.f32)) < 0.0196078431;
      v227 = vsubq_f32(*v328, v326);
      v228 = vmulq_f32(v227, v227);
      v229 = sqrtf(v228.f32[2] + vaddv_f32(*v228.f32));
      v230 = !_NF || v219 <= v229;
      if (!v230 || ((v231 = vsubq_f32(v327, v224), v232 = vmulq_f32(v231, v231), v233 = vsubq_f32(*v328, v224), v224 = vmulq_f32(v233, v233), *v224.i64 = sqrtf(v224.f32[2] + vaddv_f32(*v224.f32)), sqrtf(v232.f32[2] + vaddv_f32(*v232.f32)) < 0.0196078431) ? (v234 = v221 <= *v224.i64) : (v234 = 1), !v234))
      {
        v235 = [MEMORY[0x1E696AD98] numberWithInt:{v214, *v224.i64}];
        [v212 addObject:v235];

        v236 = [MEMORY[0x1E696AD98] numberWithInt:v214];
        [v213 addObject:v236];
      }

      ++v214;
    }

    while (v192 != v214);
  }

  v327.i64[0] = v175;
  v237 = [v213 count];
  v328[0] = v213;
  if (v237)
  {
    do
    {
      lastObject = [v213 lastObject];
      intValue = [lastObject intValue];

      [v213 removeLastObject];
      v240 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
      [v325.i64[0] addObject:v240];

      if (v192 >= 1)
      {
        v241 = 0;
        v242 = &v320[4 * intValue * v192];
        do
        {
          v243 = [MEMORY[0x1E696AD98] numberWithInt:v241];
          v244 = [v212 containsObject:v243];

          if ((v244 & 1) == 0 && *&v242[4 * v241] <= clusterGroupingDistanceThreshold)
          {
            v245 = [MEMORY[0x1E696AD98] numberWithInt:v241];
            [v212 addObject:v245];

            v246 = [MEMORY[0x1E696AD98] numberWithInt:v241];
            [v328[0] addObject:v246];
          }

          ++v241;
        }

        while (v192 != v241);
      }

      v213 = v328[0];
    }

    while ([v328[0] count]);
  }

  v247 = v325.i64[0];
  v248 = [v325.i64[0] count];
  v249 = v312.i64[0];
  if (v248)
  {
    v250 = 0;
    do
    {
      v251 = [v247 objectAtIndexedSubscript:v250];
      v249[v250] = [v251 intValue];

      ++v250;
    }

    while ([v247 count] > v250);
  }

  v252 = [v247 count];

  v253 = heightCopy;
  v254 = v324;
  v255 = v327.i64[0];
  v256 = v316;
  v257 = v317;
  v258 = v315;
  if (v252 >= 1)
  {
    v259 = v252 & 0x7FFFFFFF;
    v260 = v316;
    v261 = v315;
    do
    {
      v262 = *v249++;
      *v260++ = *(v255 + 16 * v262);
      v263 = (v257 + 48 * v262);
      v264 = v263[1];
      *v261 = *v263;
      v261[1] = v264;
      v261[2] = v263[2];
      v261 += 3;
      --v259;
    }

    while (v259);
  }

  v265 = selfCopy;
  BOOLeanThreshold_low = LOBYTE(selfCopy->_BOOLeanThreshold);
  v338 = *v10;
  v339 = v10[1].i64[0];
  v335 = *v9;
  v336 = v9[1].i64[0];
  ISAccelerateIconSegmentationComputeMask(v313, v252, v256, v258, BOOLeanThreshold_low, &v338, &v335);
  v267 = 0;
  v268 = 0;
  v269 = 0;
  v270 = v265->_borderSamplingWidth;
  v271 = widthCopy;
  do
  {
    v272 = v254;
    if (v270 >= 1)
    {
      do
      {
        v338 = *v9;
        v339 = v9[1].i64[0];
        if (v265->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v338, v267, v272))
        {
          ++v268;
        }

        else
        {
          ++v269;
        }

        ++v272;
        v270 = v265->_borderSamplingWidth;
      }

      while (v272 < v270 + v254);
    }

    ++v267;
  }

  while (v267 != v271);
  if (v270 >= 1)
  {
    v273 = v271 - v254;
    v274 = v273 - v270;
    do
    {
      v275 = 0;
      do
      {
        v338 = *v9;
        v339 = v9[1].i64[0];
        if (v265->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v338, v274, v275))
        {
          ++v268;
        }

        else
        {
          ++v269;
        }

        ++v275;
      }

      while (v253 != v275);
      ++v274;
    }

    while (v274 < v273);
  }

  v276 = 0;
  v277 = v253 - v324;
  do
  {
    v278 = v265->_borderSamplingWidth;
    if (v278 >= 1)
    {
      v279 = v277 - v278;
      do
      {
        v338 = *v9;
        v339 = v9[1].i64[0];
        if (v265->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v338, v276, v279))
        {
          ++v268;
        }

        else
        {
          ++v269;
        }

        ++v279;
      }

      while (v279 < v277);
    }

    ++v276;
  }

  while (v276 != v271);
  if (v265->_borderSamplingWidth >= 1)
  {
    v280 = v324;
    v281 = v324;
    do
    {
      v282 = 0;
      do
      {
        v338 = *v9;
        v339 = v9[1].i64[0];
        if (v265->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v338, v281, v282))
        {
          ++v268;
        }

        else
        {
          ++v269;
        }

        ++v282;
      }

      while (v253 != v282);
      ++v281;
    }

    while (v281 < v265->_borderSamplingWidth + v280);
  }

  return v269 <= v268;
}

@end