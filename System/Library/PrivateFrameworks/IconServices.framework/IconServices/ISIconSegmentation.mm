@interface ISIconSegmentation
- (BOOL)_computeImageWithCGImage:(CGImage *)image ucharTintable:(char *)tintable ucharTintableOpacity:(char *)opacity ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:;
- (BOOL)_computeImageWithWidth:(int)width height:(int)height colorSpace:(CGColorSpace *)space samples:(id)samples foregroundMask:(id *)mask ucharTintable:(char *)tintable ucharTintableOpacity:(char *)opacity ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:;
- (BOOL)_computeImageWithWidth:(int)width height:(int)height strict:(BOOL)strict colorSpace:(CGColorSpace *)space samples:(id)samples foregroundMask:(id *)mask ucharTintable:(char *)tintable ucharTintableOpacity:(char *)self0 ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:;
- (CGImage)createDarkImageWithCGImage:(CGImage *)image feedback:(id *)feedback;
- (CGImage)createForegroundImageWithCGImage:(CGImage *)image feedback:(id *)feedback;
- (CGImage)createSolariumTintableImageWithCGImage:(CGImage *)image feedback:(id *)feedback;
- (CGImage)createTintableImageMaskWithCGImage:(CGImage *)image tintableOpacityImageMask:(CGImage *)mask;
- (ISIconSegmentation)initWithIdiom:(unint64_t)idiom;
@end

@implementation ISIconSegmentation

- (ISIconSegmentation)initWithIdiom:(unint64_t)idiom
{
  v12.receiver = self;
  v12.super_class = ISIconSegmentation;
  v4 = [(ISIconSegmentation *)&v12 init];
  if (v4)
  {
    v5 = [[ISForegroundSegmentation alloc] initWithStrict:1];
    strictForegroundSegmentation = v4->_strictForegroundSegmentation;
    v4->_strictForegroundSegmentation = v5;

    v7 = [[ISForegroundSegmentation alloc] initWithStrict:0];
    looseForegroundSegmentation = v4->_looseForegroundSegmentation;
    v4->_looseForegroundSegmentation = v7;

    v9 = objc_opt_new();
    grayscaleConversion = v4->_grayscaleConversion;
    v4->_grayscaleConversion = v9;

    v4->_idiom = idiom;
    v4->_maxNumberOfClusteringSamples = 8000;
    *&v4->_enableColorEnhancementInDarkImage = 0;
  }

  return v4;
}

- (BOOL)_computeImageWithWidth:(int)width height:(int)height strict:(BOOL)strict colorSpace:(CGColorSpace *)space samples:(id)samples foregroundMask:(id *)mask ucharTintable:(char *)tintable ucharTintableOpacity:(char *)self0 ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:
{
  v10 = *&samples.var2;
  v11 = *&samples.var0;
  spaceCopy = space;
  v12 = *&height;
  v13 = *&width;
  v505 = *MEMORY[0x1E69E9840];
  if (width >= height)
  {
    widthCopy = height;
  }

  else
  {
    widthCopy = width;
  }

  v466.i32[0] = strict;
  v15 = 16;
  if (strict)
  {
    v15 = 8;
  }

  selfCopy = self;
  v16 = *(&self->super.isa + v15);
  v495 = *v11;
  v496.i64[0] = v11[1].n128_i64[0];
  *components = *v10;
  v503 = *(v10 + 16);
  if (![v16 computeMaskWithWidth:v13 height:v12 samples:&v495 foregroundMask:components])
  {
    goto LABEL_199;
  }

  v465 = v16;
  v454 = v509;
  v457 = v508;
  v472 = v12;
  v469 = v13;
  v17 = 274877907 * v12 * v13;
  v463.i64[0] = v17 >> 38;
  v461 = v17 >> 39;
  v462.i64[0] = v17 >> 63;
  v18 = 1717986919 * widthCopy;
  v460 = (v18 >> 63);
  tintableCopy = tintable;
  maskCopy = mask;
  v458 = (v12 * v13);
  v459 = v18 >> 34;
  v453 = v12 * v13;
  v19 = malloc_type_malloc(v453, 0x100004077774924uLL);
  *components = *v11;
  v467 = v11;
  v503 = v11[1].n128_f64[0];
  *v499 = *v10;
  v500 = *(v10 + 16);
  v477 = v19;
  if (!LODWORD(v499[1]) && (BYTE4(v499[1]) & 1) == 0 && *&components[1] == 0x500000000)
  {
    v20 = v472;
    ISAccelerateIconComputeIconSegmentationFlag(v469, v472, v466.u32[0], components, v499, v19);
    goto LABEL_119;
  }

  v471.i32[0] = v469 - 1;
  v20 = v472;
  if (v469 < 1)
  {
    goto LABEL_119;
  }

  v21 = 0;
  v22 = v472 - 1;
  v23 = v469;
  v24 = v472;
  LODWORD(v476) = v472 - 1;
  v475.n128_u64[0] = v472;
  do
  {
    if (v20 <= 0)
    {
      v44 = v21 + 1;
    }

    else
    {
      v25 = 0;
      if (v21 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v21;
      }

      v27 = v26 - 1;
      v470.i64[0] = v21 + 1;
      if (v21 + 1 >= v471.i32[0])
      {
        v28 = v471.u32[0];
      }

      else
      {
        v28 = (v21 + 1);
      }

      v474 = v21;
      v473.i32[0] = v26 - 1;
      do
      {
        v29 = (v21 + v25 * v23);
        v495 = *v499;
        *v496.i64 = v500;
        if (ISSegmentationMask_readMaskValue_i(&v495, v21 + v25 * v23))
        {
          ++v25;
          v30 = 1;
        }

        else
        {
          opacityCopy = (v21 + v25 * v23);
          if (v25 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v25;
          }

          ++v25;
          if (v27 <= v28)
          {
            v34 = 0;
            v32 = 0;
            v35 = (v31 - 1);
            v478 = v25;
            if (v25 >= v22)
            {
              v36 = v22;
            }

            else
            {
              v36 = v25;
            }

            v37 = v27;
            v38 = (v36 - v31 + 2);
            v480.i32[0] = v36;
            do
            {
              if (v35 <= v36)
              {
                v39 = v34;
                v40 = v28;
                v41 = v38;
                v42 = v35;
                v43 = v35;
                do
                {
                  v495 = *v499;
                  *v496.i64 = v500;
                  if (ISSegmentationMask_readMaskValue_xy(&v495, v37, v43))
                  {
                    ++v32;
                  }

                  ++v43;
                  LODWORD(v38) = v38 - 1;
                }

                while (v38);
                v38 = v41;
                v34 = v41 + v39;
                v28 = v40;
                v36 = v480.i32[0];
                v35 = v42;
              }

              _ZF = v37++ == v28;
            }

            while (!_ZF);
            v33 = v34 - 1;
            v19 = v477;
            v25 = v478;
            v22 = v476;
            v21 = v474;
            v24 = v475.n128_u64[0];
            v27 = v473.i32[0];
          }

          else
          {
            v32 = 0;
            v33 = -1;
          }

          v30 = v32 >= v33;
          v29 = opacityCopy;
        }

        v29[v19] = v30;
      }

      while (v25 != v24);
      v20 = v472;
      v44 = v470.i64[0];
    }

    v21 = v44;
  }

  while (v44 != v23);
  v45 = 0;
  do
  {
    if (v45 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    if (v472 > 0)
    {
      v47 = 0;
      v48 = v46 - 1;
      v49 = v46 - 1;
      v50 = v45 + 1;
      v51 = v471.i32[0];
      if (v45 + 1 < v471.i32[0])
      {
        v51 = v45 + 1;
      }

      v52 = (v19 + v45);
      while (1)
      {
        if (v47 <= 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = v47;
        }

        v54 = v53 - 2;
        v55 = (v19 + v23 * (v53 - 1));
        v56 = v47 * v23;
        v57 = v52[v47 * v23];
        ++v47;
        if (v57)
        {
          if (v49 <= v51)
          {
            v65 = 0;
            v66 = 0;
            v67 = v47 >= v22 ? v22 : v47;
            v68 = v53 - 1;
            v69 = v48;
            do
            {
              v70 = v55;
              v71 = v54;
              if (v68 <= v67)
              {
                do
                {
                  ++v65;
                  v66 += v70[v69] & 1;
                  ++v71;
                  v70 += v23;
                }

                while (v71 < v67);
              }

              v205 = v69++ < v51;
            }

            while (v205);
            if (v66 != v65)
            {
              goto LABEL_75;
            }
          }
        }

        else if (v49 <= v51)
        {
          v58 = 0;
          v59 = 0;
          v60 = v47 >= v22 ? v22 : v47;
          v61 = v53 - 1;
          v62 = v48;
          do
          {
            v63 = v55;
            v64 = v54;
            if (v61 <= v60)
            {
              do
              {
                ++v59;
                v58 += (v63[v62] & 1) == 0;
                ++v64;
                v63 += v23;
              }

              while (v64 < v60);
            }

            v205 = v62++ < v51;
          }

          while (v205);
          if (v58 != v59)
          {
            goto LABEL_75;
          }
        }

        v52[v56] = v57 | 2;
LABEL_75:
        if (v47 == v24)
        {
          goto LABEL_78;
        }
      }
    }

    v50 = v45 + 1;
LABEL_78:
    v45 = v50;
  }

  while (v50 != v23);
  v72 = 0;
  v20 = v472;
  do
  {
    if (v20 <= 0)
    {
      v87 = v72 + 1;
    }

    else
    {
      v73 = 0;
      if (v72 <= 1)
      {
        v74 = 1;
      }

      else
      {
        v74 = v72;
      }

      LODWORD(opacityCopy) = v74 - 1;
      v474 = v72 + 1;
      if (v72 + 1 >= v471.i32[0])
      {
        v75 = v471.i32[0];
      }

      else
      {
        v75 = v72 + 1;
      }

      v478 = v72;
      do
      {
        if (v73 <= 1)
        {
          v76 = 1;
        }

        else
        {
          v76 = v73;
        }

        v77 = v72 + v73 * v23;
        if (*(v19 + v77))
        {
          v492.i32[2] = 0;
          v492.i64[0] = 0;
          v495 = *components;
          *v496.i64 = v503;
          v480.i64[0] = v72 + v73 * v23;
          if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v77, &v492, 0, *&components[0]))
          {
            v78 = v73 <= 1 ? 1 : v73;
            v79 = v73 + 1 < v22 ? v73 + 1 : v22;
            if (opacityCopy <= v75)
            {
              v80 = 0;
              v81 = v76 - 2;
              v82 = v78 - 1;
              v83 = opacityCopy;
              do
              {
                v84 = v81;
                if (v82 <= v79)
                {
                  do
                  {
                    ++v84;
                    v489.i32[2] = 0;
                    v489.i64[0] = 0;
                    v495 = *components;
                    *v496.i64 = v503;
                    if (ISSegmentationSamples_readAlmostOpaqueSample_xy(&v495, v83, v84, &v489, 0))
                    {
                      v85 = vsubq_f32(v492, v489);
                      v86 = vmulq_f32(v85, v85);
                      if (sqrtf(v86.f32[2] + vaddv_f32(*v86.f32)) <= 0.0392156863)
                      {
                        ++v80;
                      }
                    }
                  }

                  while (v84 < v79);
                }

                _ZF = v83++ == v75;
              }

              while (!_ZF);
              v205 = v80 <= 5;
              v19 = v477;
              v72 = v478;
              v22 = v476;
              v24 = v475.n128_u64[0];
              if (!v205)
              {
                v477[v480.i64[0]] |= 0x10u;
              }
            }
          }
        }

        else
        {
          *(v19 + v77) |= 0x10u;
        }

        ++v73;
      }

      while (v73 != v24);
      v20 = v472;
      v87 = v474;
    }

    v72 = v87;
  }

  while (v87 != v23);
LABEL_119:
  v88 = 11;
  v89 = v469;
  v90 = v20;
  v91 = v469;
  v16 = v465;
  while (2)
  {
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = v88;
    v97 = -v88;
    do
    {
      v98 = 0;
      v99 = 0;
      if (v95)
      {
        v100 = 1;
      }

      else
      {
        v100 = -1;
      }

      do
      {
        if (*(v19 + ((v95 + 0.5) * v90 / v96) * v469 + ((v99 + 0.5) * v89 / v96)))
        {
          v101 = v100;
        }

        else
        {
          v101 = -v100;
        }

        v98 += v101;
        ++v99;
      }

      while (v88 != v99);
      v92 += v98;
      if (v98 == v88)
      {
        ++v93;
      }

      v102 = v98 == v97 && v98 != v88;
      v94 += v102;
      ++v95;
    }

    while (v95 != v88);
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    do
    {
      v107 = 0;
      v108 = 0;
      if (v106)
      {
        v109 = 1;
      }

      else
      {
        v109 = -1;
      }

      do
      {
        if (*(v19 + ((v106 + 0.5) * v89 / v96) + ((v108 + 0.5) * v90 / v96) * v469))
        {
          v110 = v109;
        }

        else
        {
          v110 = -v109;
        }

        v107 += v110;
        ++v108;
      }

      while (v88 != v108);
      v103 += v107;
      if (v107 == v88)
      {
        ++v104;
      }

      v111 = v107 == v97 && v107 != v88;
      v105 += v111;
      ++v106;
    }

    while (v106 != v88);
    if (v92 >= ((v88 * v88) >> 1) && v93 >= v88 >> 1 && !v94 || (v112 = (v88 * v88) >> 1, (v92 + v112 < 0) ^ __OFADD__(v92, v112) | (v92 + v112 == 0)) && v94 >= v88 >> 1 && !v93 || v103 >= v112 && (v104 >= v88 >> 1 ? (_ZF = v105 == 0) : (_ZF = 0), _ZF) || v103 <= -v112 && v94 >= v88 >> 1 && !v104)
    {
      v126 = v19;
LABEL_198:
      free(v126);
LABEL_199:
      v163 = 0;
      goto LABEL_200;
    }

    if (++v88 != 18)
    {
      continue;
    }

    break;
  }

  v475.n128_u32[0] = v463.i32[0] + v462.i32[0];
  v473.i64[0] = (v459 + v460);
  v478 = v506;
  opacityCopy = opacity;
  LODWORD(v474) = v461 + v462.i32[0];
  v476 = v507;
  v114 = malloc_type_malloc(16 * selfCopy->_maxNumberOfClusteringSamples, 0x1000040451B5BE8uLL);
  v482 = 10;
  if (v467->n128_u64[1] != 0x500000000)
  {
    if (selfCopy->_maxNumberOfClusteringSamples >= 1)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      do
      {
        v118 = v117;
        v119 = v91;
        v120 = ISSegmentationMathUtils_rand_open(&v482, 0, v91);
        v121 = v120 + ISSegmentationMathUtils_rand_open(&v482, 0, v472) * v119;
        *(components + 4) = 0.0;
        LODWORD(components[0]) = 0;
        v495 = *v467;
        v496.i64[0] = v467[1].n128_i64[0];
        if (!ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v121, components, 0, v495.n128_u64[0]) || (v124 = *(v19 + v121), (~v124 & 0x12) != 0))
        {
          v91 = v469;
          v117 = v118;
        }

        else
        {
          v91 = v469;
          v117 = v118;
          if (v124)
          {
            *v122.i64 = components[0];
            v114[v118] = *components;
            v117 = (v118 + 1);
          }

          else
          {
            ++v116;
            *v122.i64 = components[0];
            v114[selfCopy->_maxNumberOfClusteringSamples - v116] = *components;
          }
        }

        ++v115;
        maxNumberOfClusteringSamples = selfCopy->_maxNumberOfClusteringSamples;
      }

      while (v115 < maxNumberOfClusteringSamples && (v117 < 1100 || v116 <= 1099));
      goto LABEL_187;
    }

    goto LABEL_197;
  }

  if (selfCopy->_maxNumberOfClusteringSamples < 1)
  {
    goto LABEL_197;
  }

  v127 = 0;
  v116 = 0;
  v117 = 0;
  v480 = vdupq_n_s32(0x437F0000u);
  do
  {
    v128 = ISSegmentationMathUtils_rand_open(&v482, 0, v91);
    v129 = v128 + ISSegmentationMathUtils_rand_open(&v482, 0, v472) * v469;
    v91 = v469;
    v130 = *(v19 + v129);
    if ((~v130 & 0x12) == 0)
    {
      v122.i32[0] = *(v467[1].n128_u64[0] + 4 * v129);
      v131 = vmovl_u8(*v122.f32);
      v132 = v131.u16[2];
      *v131.f32 = vcvt_f32_u32(vand_s8(*&vmovl_u16(*v131.f32), 0xFF000000FFLL));
      v131.f32[2] = v132;
      v123 = *v480.i64;
      v122 = vdivq_f32(v131, v480);
      if (v130)
      {
        v114[v117] = v122;
        v117 = (v117 + 1);
      }

      else
      {
        ++v116;
        v114[selfCopy->_maxNumberOfClusteringSamples - v116] = v122;
      }
    }

    ++v127;
    maxNumberOfClusteringSamples = selfCopy->_maxNumberOfClusteringSamples;
  }

  while (v127 < maxNumberOfClusteringSamples && (v117 < 1100 || v116 <= 1099));
LABEL_187:
  if (v117 < 10 || v116 <= 9)
  {
LABEL_197:
    free(v19);
    v126 = v114;
    goto LABEL_198;
  }

  v133 = &v114[maxNumberOfClusteringSamples - v116];
  *v134.i64 = ISSegmentationMathUtils_mean(v117, v114, *v122.i64, v123);
  v481 = v134;
  v462 = v134;
  *v141.i64 = ISSegmentationMathUtils_covariance(v117, v114, v134, v135, v136, v137, v138, v139, v140);
  v470 = v142;
  v471 = v141;
  v463 = v143;
  *v144.i64 = ISSegmentationMathUtils_mean(v116, v133, *v141.i64, *v143.i64);
  v480 = v144;
  v151 = ISSegmentationMathUtils_covariance(v116, v133, v144, v145, v146, v147, v148, v149, v150);
  v152.n128_u64[1] = v463.u64[1];
  *&v151 = v154 + (*&v151 + v153);
  v155 = (v470.f32[2] + (v471.f32[0] + v463.f32[1]));
  v156 = *&v151;
  if (v155 > 0.0004 || v156 > 0.0004)
  {
    if (v155 > 0.0004 && v156 <= 0.0004)
    {
      if (!v466.i32[0])
      {
        goto LABEL_450;
      }

      v165 = *v467;
      *components = *v467;
      v503 = v467[1].n128_f64[0];
      v461 = v114;
      if (*&components[1] == 0x500000000)
      {
        ISAccelerateIconComputeIconSegmentationFlagForShadows(v469, v472, components, v19, v480);
      }

      else
      {
        if (v469 <= 0)
        {
          v203 = 0;
          v198 = 0;
          v165.i64[0] = 0;
          goto LABEL_276;
        }

        v470.i64[0] = v117;
        v181 = 0;
        v165 = vmulq_f32(v480, v480);
        v182 = v165.f32[2] + vaddv_f32(*v165.f32);
        v183 = v469;
        v184 = v472;
        do
        {
          v185 = v181;
          v186 = v184;
          v187 = v472 - 1;
          if (v472 >= 1)
          {
            do
            {
              if (*(v19 + v185))
              {
                *(v499 + 4) = 0.0;
                LODWORD(v499[0]) = 0;
                v495 = *components;
                *v496.i64 = v503;
                if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v185, v499, 0, *&components[0]))
                {
                  v165 = *v499;
                  v152.n128_u64[1] = v480.u64[1];
                  v188 = vmulq_f32(v480, *v499);
                  v189 = fminf(fmaxf((v188.f32[2] + vaddv_f32(*v188.f32)) / v182, 0.0), 1.0);
                  if (v189 >= 0.77)
                  {
                    v190 = vsubq_f32(*v499, vmlaq_n_f32(0, v480, v189));
                    v165 = vmulq_f32(v190, v190);
                    *v165.i64 = sqrtf(v165.f32[2] + vaddv_f32(*v165.f32));
                    if (*v165.i64 < 0.0117647059)
                    {
                      *(v19 + v185) |= 0x20u;
                    }
                  }
                }
              }

              v185 += v183;
              --v186;
            }

            while (v186);
          }

          ++v181;
        }

        while (v181 != v183);
        v191 = 0;
        v117 = v470.i64[0];
        v192 = (v469 - 1);
        v471.i64[0] = v19 + v183;
        v466.i64[0] = -v469;
        v473.i64[0] = v19 - v183;
        do
        {
          if (v472 >= 1)
          {
            v193 = 0;
            v194 = v191;
            do
            {
              if (v191)
              {
                if (v191 < v192)
                {
                  if (v193)
                  {
                    if (v193 < v187 && (*(v19 + v194) & 0x20) != 0)
                    {
                      *(v499 + 4) = 0.0;
                      LODWORD(v499[0]) = 0;
                      v495 = *components;
                      *v496.i64 = v503;
                      if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v194, v499, 0, *&components[0]))
                      {
                        if ((*(v19 + v194 - 1) & 0x21) != 1 && (*(v19 + v194 + 1) & 0x21) != 1 && (*(v473.i64[0] + v194) & 0x21) != 1 && (*(v471.i64[0] + v194) & 0x21) != 1)
                        {
                          v492.i32[2] = 0;
                          v492.i64[0] = 0;
                          v489.i32[2] = 0;
                          v489.i64[0] = 0;
                          v486.i32[2] = 0;
                          v486.i64[0] = 0;
                          v483.i32[2] = 0;
                          v483.i64[0] = 0;
                          v495 = *components;
                          *v496.i64 = v503;
                          if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v194 - 1, &v492, 0, *&components[0]))
                          {
                            v495 = *components;
                            *v496.i64 = v503;
                            if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v194 + 1, &v489, 0, *&components[0]))
                            {
                              v495 = *components;
                              *v496.i64 = v503;
                              if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v466.i32[0] + v194, &v486, 0, *&components[0]))
                              {
                                v495 = *components;
                                *v496.i64 = v503;
                                if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v183 + v194, &v483, 0, *&components[0]))
                                {
                                  v165 = vmulq_f32(vsubq_f32(v489, *v499), vsubq_f32(*v499, v492));
                                  v152.n128_u64[1] = v486.u64[1];
                                  v195 = vmulq_f32(vsubq_f32(v483, *v499), vsubq_f32(*v499, v486));
                                  if (fmaxf(fminf(fminf(v165.f32[0], v165.f32[2]), v165.f32[1]), fminf(fminf(v195.f32[0], v195.f32[2]), v195.f32[1])) > 0.0)
                                  {
                                    *(v19 + v194) |= 0x40u;
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

              ++v193;
              v194 += v183;
            }

            while (v184 != v193);
          }

          ++v191;
        }

        while (v191 != v183);
      }

      if (v469 < 1)
      {
        v203 = 0;
        v198 = 0;
        v165.i64[0] = 0;
        v16 = v465;
        v114 = v461;
      }

      else
      {
        v196 = 0;
        v197 = 0;
        v198 = 0;
        v199 = v19;
        v16 = v465;
        v114 = v461;
        do
        {
          v200 = v472;
          v201 = v199;
          if (v472 >= 1)
          {
            do
            {
              v202 = *v201;
              v197 += (v202 >> 5) & 1;
              v198 += (v202 >> 6) & 1;
              v201 += v469;
              --v200;
            }

            while (v200);
          }

          ++v196;
          ++v199;
        }

        while (v196 != v469);
        v165.f32[0] = v197;
        v203 = 1;
      }

LABEL_276:
      if ((v198 / v458) <= 0.14)
      {
        if (v198 > v475.n128_i32[0])
        {
          v204 = (v198 / v165.f32[0]);
          v152.n128_u32[1] = 1071697100;
          if (v204 <= 0.525)
          {
            v152.n128_u32[0] = 1.0;
            v475 = v152;
            if (v204 <= 0.32)
            {
              goto LABEL_295;
            }

            v205 = (v165.f32[0] / v458) >= 0.038 || v458 <= 0;
            if (v205)
            {
              goto LABEL_295;
            }
          }

          else
          {
            v165.i32[0] = 1.0;
            v475 = v165;
            if (v458 < 1)
            {
              goto LABEL_295;
            }
          }

          v206 = 0;
          v207 = vmulq_f32(v480, v480);
          v208 = v207.f32[2] + vaddv_f32(*v207.f32);
          v207.i32[0] = 1.0;
          v475 = v207;
          do
          {
            if ((*(v19 + v206) & 0x20) != 0)
            {
              *(components + 4) = 0.0;
              LODWORD(components[0]) = 0;
              v495 = *v467;
              v496.i64[0] = v467[1].n128_i64[0];
              if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v206, components, 0, v495.n128_u64[0]))
              {
                v209 = vmulq_f32(v480, *components);
                v210 = v475;
                v210.n128_f32[0] = fminf(v475.n128_f32[0], fminf(fmaxf((v209.f32[2] + vaddv_f32(*v209.f32)) / v208, 0.0), 1.0));
                v475 = v210;
              }
            }

            ++v206;
          }

          while (v458 != v206);
          goto LABEL_295;
        }

        v165.i32[0] = 1.0;
        v475 = v165;
LABEL_295:
        v211 = v475.n128_f32[0];
        v212 = v475.n128_f32[0];
        v213 = &qword_1A7825000;
        if (v475.n128_f32[0] >= 0.92)
        {
          v214 = malloc_type_malloc(4 * v117, 0x100004052888210uLL);
          v215 = ISSegmentationMathUtils_dbscan(v117, 10, v114, v214, 0.043137);
          if (v215 < 1)
          {
            free(v214);
          }

          else
          {
            LODWORD(v459) = v203;
            v216 = v117;
            v217 = v114;
            v460 = &v450;
            v470.i64[0] = v216;
            v218 = v216;
            v219 = v215;
            v220 = MEMORY[0x1EEE9AC00](v215);
            v222 = (&v450 - v221);
            v452 = v220;
            v223 = 16 * v220;
            MEMORY[0x1EEE9AC00](v220);
            v224 = (&v450 - 2 * v219);
            bzero(v222, v225);
            bzero(v224, v223);
            v227 = 0;
            v228 = 0;
            v229 = ISSegmentationMathUtils_dbscan_noiseClusterIndex;
            v230 = v214;
            do
            {
              v231 = v214[v227];
              if (v231 == v229)
              {
                ++v228;
              }

              else
              {
                v226 = vaddq_f32(v217[v227], *v224[2 * v231].f32);
                *v224[2 * v231].f32 = v226;
                ++v222[v231];
              }

              ++v227;
            }

            while (v218 != v227);
            for (i = 0; i != v219; ++i)
            {
              v226.f32[0] = v222[i];
              v226 = vdivq_f32(*v224[2 * i].f32, vdupq_lane_s32(*v226.f32, 0));
              *v224[2 * i].f32 = v226;
            }

            if (v228 < (v470.i32[0] / 0xAu))
            {
              v463.i64[0] = v214;
              v233.n64_u64[0] = ISSegmentationMathUtils_rgb2hsv(v480).n64_u64[0];
              v235 = 0;
              v236 = 3.4028e38;
              do
              {
                v237 = vsubq_f32(*v224[v235].f32, v480);
                v238 = vmulq_f32(v237, v237);
                v239 = sqrtf(v238.f32[2] + vaddv_f32(*v238.f32));
                if (v239 < v236)
                {
                  v236 = v239;
                }

                v235 += 2;
              }

              while (2 * v219 != v235);
              v240 = *&dword_1A7824B98[v233.n64_f32[1] < 0.5];
              if (v234 < 0.5)
              {
                v240 = 0.10588;
              }

              v230 = v463.i64[0];
              if (v236 >= v240)
              {
                v230 = MEMORY[0x1EEE9AC00](v463.i64[0]);
                v242 = (&v450 - 2 * v241);
                v243 = v242 + 2;
                v244 = v219;
                do
                {
                  v243[-2].i32[2] = 0;
                  v243[-2].i64[0] = 0;
                  v243[-1].i32[2] = 0;
                  v243[-1].i64[0] = 0;
                  v243->i32[2] = 0;
                  v243->i64[0] = 0;
                  v243 += 3;
                  --v244;
                }

                while (v244);
                v245 = 0;
                v246 = ISSegmentationMathUtils_dbscan_noiseClusterIndex;
                do
                {
                  v247 = v230[v245];
                  if (v247 != v246)
                  {
                    v248 = vsubq_f32(v217[v245], *v224[2 * v247].f32);
                    v249 = &v242[3 * v247];
                    *v250.i64 = ISSegmentationMathUtils_outer(v248, v248.f32[0]);
                    v230 = v463.i64[0];
                    v251 = vaddq_f32(*v249, v250);
                    v250.i32[3] = v466.i32[3];
                    v253 = vaddq_f32(v249[1], v252);
                    v252.i32[3] = v471.i32[3];
                    v255 = vaddq_f32(v249[2], v254);
                    v254.i32[3] = v473.i32[3];
                    v249->i32[2] = v251.i32[2];
                    v249->i64[0] = v251.i64[0];
                    v249[1].i32[2] = v253.i32[2];
                    v249[2].i32[2] = v255.i32[2];
                    v249[1].i64[0] = v253.i64[0];
                    v249[2].i64[0] = v255.i64[0];
                    v19 = v477;
                    v246 = ISSegmentationMathUtils_dbscan_noiseClusterIndex;
                    v466 = v250;
                    v471 = v252;
                    v473 = v254;
                  }

                  ++v245;
                }

                while (v218 != v245);
                v256 = v242 + 2;
                v257 = v219;
                do
                {
                  v258 = *v222++;
                  v259 = *v256;
                  v260 = 1.0 / v258;
                  v261 = vmulq_n_f32(v256[-2], v260);
                  v262 = vmulq_n_f32(v256[-1], v260);
                  v256[-2].i32[2] = v261.i32[2];
                  v256[-2].i64[0] = v261.i64[0];
                  v263 = vmulq_n_f32(v259, v260);
                  v256[-1].i32[2] = v262.i32[2];
                  v256[-1].i64[0] = v262.i64[0];
                  v256->i32[2] = v263.i32[2];
                  v256->i64[0] = v263.i64[0];
                  v256 += 3;
                  --v257;
                }

                while (v257);
                v264 = &v242[1].f32[1];
                v265 = 1;
                v16 = v465;
                do
                {
                  v266 = ((*(v264 - 5) + *v264) + v264[5]);
                  v264 += 12;
                }

                while (v266 <= 0.0004 && v265++ < v219);
                if (v266 <= 0.0004)
                {
                  *v499 = v462;
                  if (v457)
                  {
                    if (v452 != 1)
                    {
                      v431 = vmulq_f32(v480, v480);
                      if (sqrtf(v431.f32[2] + vaddv_f32(*v431.f32)) <= 0.235294118)
                      {
                        v435 = (&v450 - 2 * v219);
                        v16 = v465;
                        v19 = v477;
LABEL_545:
                        while (ISSegmentationMathUtils_contrastRatio(*v435, vdupq_n_s32(0x3DA0902Eu)) >= 3.0)
                        {
                          ++v435;
                          if (!--v219)
                          {
                            goto LABEL_547;
                          }
                        }
                      }

                      else
                      {
                        __asm { FMOV            V1.4S, #-1.0 }

                        v433 = vaddq_f32(v480, _Q1);
                        v434 = vmulq_f32(v433, v433);
                        v435 = (&v450 - 2 * v219);
                        v16 = v465;
                        v19 = v477;
                        if (sqrtf(v434.f32[2] + vaddv_f32(*v434.f32)) <= 0.235294118)
                        {
                          goto LABEL_545;
                        }
                      }

                      v163 = 0;
                      goto LABEL_565;
                    }

                    v268 = v499;
                    if (!shouldGenerateDark_singleForegroundColor_singleBackgroundColor(selfCopy->_enableColorEnhancementInDarkImage, v499, v462, v480))
                    {
                      goto LABEL_555;
                    }
                  }

                  else
                  {
LABEL_547:
                    if (v452 != 1)
                    {
                      ISAccelerateIconSegmentationComputeFlagForExtraConfidence(v469, v472, v477);
                      v438 = 0;
                      v268 = 0;
LABEL_551:
                      [(ISBiasedGrayscaleConversion *)selfCopy->_grayscaleConversion computeGrayscaleConversionColorWithNumberOfRepresentativeSamples:v470.i64[0] representativeSamples:v217];
                      v495 = *v467;
                      v496.i64[0] = v467[1].n128_i64[0];
                      if (computeMask_foregroundMultipleColors_backgroundSingleColor(v469, v472, v452, v224, &v495, v477, maskCopy, tintableCopy, v439, opacityCopy, v478, v476, v268, v457))
                      {
                        if (v454)
                        {
                          if (v438)
                          {
                            v440 = *v224->f32;
                            v495 = vcvtq_f64_f32(*v224);
                            *v496.i64 = *(&v440 + 2);
                            v496.i64[1] = 0x3FF0000000000000;
                            v441 = CGColorCreate(spaceCopy, v495.n128_f64);
                            v442 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v441];
                            CGColorRelease(v441);
                          }

                          else
                          {
                            v443 = [ISIconSegmentationFeedbackMultipleColors alloc];
                            v442 = [(ISIconSegmentationFeedbackMultipleColors *)v443 initWithNumberOfColors:v452];
                          }

                          v495 = vcvtq_f64_f32(*v480.i8);
                          *v496.i64 = *&v480.i32[2];
                          v496.i64[1] = 0x3FF0000000000000;
                          v444 = CGColorCreate(spaceCopy, v495.n128_f64);
                          v445 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v444];
                          CGColorRelease(v444);
                          v446 = v438 ^ 1;
                          if (!v457)
                          {
                            v446 = 1;
                          }

                          if (v446)
                          {
                            v448 = 0;
                          }

                          else
                          {
                            *components = vcvtq_f64_f32(*&v499[0]);
                            v503 = *&v499[1];
                            v504 = 0x3FF0000000000000;
                            v447 = CGColorCreate(spaceCopy, components);
                            v448 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v447];
                            CGColorRelease(v447);
                          }

                          v449 = [[ISIconSegmentationFeedback alloc] initWithForeground:v442 background:v445 recolorForeground:v448];
                          *v454 = v449;
                        }

                        v163 = 1;
                        goto LABEL_564;
                      }

LABEL_555:
                      v163 = 0;
LABEL_564:
                      v16 = v465;
                      v19 = v477;
LABEL_565:
                      v114 = v217;
                      free(v463.i64[0]);
                      goto LABEL_451;
                    }

                    v268 = v499;
                  }

                  v438 = 1;
                  goto LABEL_551;
                }
              }
            }

            free(v230);
            v114 = v217;
            v117 = v470.i64[0];
            v203 = v459;
          }

          v269 = v469;
          v270 = v472;
          ISAccelerateIconSegmentationComputeFlagForMoreConfidence(v469, v472, v19);
          ISAccelerateIconSegmentationComputeFlagForExtraConfidence(v269, v270, v19);
          v213 = &qword_1A7825000;
          v211 = v475.n128_f32[0];
        }

        v473 = vmulq_n_f32(v480, v211);
        v271 = malloc_type_malloc(v453, 0x100004077774924uLL);
        v495 = *v467;
        v496.i64[0] = v467[1].n128_i64[0];
        v272 = v271;
        computeIconSegmentationAdditionalGradientFlag(v469, v472, v212 < 0.92, &v495, v19, v271, v495.n128_f64[0], v273, v274, v275, v276, v277, v278, v279);
        *v280.f32 = ISSegmentationMathUtils_rgb2hsv(v480);
        v471 = v280;
        if (v458 < 1)
        {
          v282 = 3.4028e38;
          v283 = v272;
        }

        else
        {
          v281 = 0;
          v282 = 3.4028e38;
          v283 = v272;
          do
          {
            if (v212 >= 0.92)
            {
              v284 = *(v19 + v281) & 4;
            }

            else
            {
              v284 = v283[v281] & 4;
            }

            if ((*(v19 + v281) & 1) != 0 && v284)
            {
              *(components + 4) = 0.0;
              LODWORD(components[0]) = 0;
              v495 = *v467;
              v496.i64[0] = v467[1].n128_i64[0];
              if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v281, components, 0, v495.n128_u64[0]))
              {
                if (v212 >= 0.92)
                {
                  v286 = vsubq_f32(*components, v480);
                }

                else
                {
                  v475 = *components;
                  *v285.i64 = ISSegmentationMathUtils_clampedProject(*components, v480, v473);
                  v286 = vsubq_f32(v475, v285);
                }

                v280 = vmulq_f32(v286, v286);
                v283 = v272;
                v280.f32[0] = sqrtf(v280.f32[2] + vaddv_f32(*v280.f32));
                if (v280.f32[0] < v282)
                {
                  v282 = v280.f32[0];
                }
              }

              else
              {
                v283 = v272;
              }
            }

            ++v281;
          }

          while (v458 != v281);
        }

        v280.i32[0] = *(v213 + 156);
        if (v471.f32[2] >= 0.5)
        {
          v280.i32[0] = dword_1A7824B98[v471.f32[1] < 0.5];
        }

        if (v282 < v280.f32[0])
        {
          goto LABEL_354;
        }

        v470.i64[0] = v117;
        if (v203)
        {
          v288 = 0;
          v289 = 0;
          v290 = v469;
          v291 = v472 - 1;
          v292 = v469 - 1;
          v293 = v472;
          v294 = v19 - v469;
          v295 = &v283[-v469];
          v296 = -v469;
          v297 = &v283[v469];
          v280.i64[0] = 0;
          v298 = v472;
          v299 = (v19 + v469);
          do
          {
            if (v298 >= 1)
            {
              v300 = 0;
              v301 = v288;
              do
              {
                if (v288 && v288 < v292 && v300 && v300 < v291)
                {
                  if (~*(v19 + v301) & 3) != 0 || (v283[v301] & 1) != 0 || (~*(v19 + v301 - 1) & 3) != 0 || (v283[v301 - 1] & 1) != 0 || (~*(v19 + v301 + 1) & 3) != 0 || (v283[v301 + 1] & 1) != 0 || (~*(v294 + v301) & 3) != 0 || (*(v295 + v301) & 1) != 0 || (~v299[v301] & 3) != 0 || (*(v297 + v301))
                  {
                    v298 = v472;
                  }

                  else
                  {
                    v459 = v299;
                    v460 = v297;
                    v475.n128_u64[0] = v296;
                    v463.i64[0] = v295;
                    v466.i64[0] = v294;
                    v471.i64[0] = v291;
                    LODWORD(components[1]) = 0;
                    components[0] = 0.0;
                    LODWORD(v499[1]) = 0;
                    v499[0] = 0.0;
                    v492.i32[2] = 0;
                    v492.i64[0] = 0;
                    v489.i32[2] = 0;
                    v489.i64[0] = 0;
                    v486.i32[2] = 0;
                    v486.i64[0] = 0;
                    v495 = *v467;
                    v496.i64[0] = v467[1].n128_i64[0];
                    if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v301, components, 0, v495.n128_u64[0]))
                    {
                      v495 = *v467;
                      v496.i64[0] = v467[1].n128_i64[0];
                      if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v301 - 1, v499, 0, v495.n128_u64[0]))
                      {
                        v495 = *v467;
                        v496.i64[0] = v467[1].n128_i64[0];
                        if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v301 + 1, &v492, 0, v495.n128_u64[0]))
                        {
                          v495 = *v467;
                          v496.i64[0] = v467[1].n128_i64[0];
                          if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v475.n128_u32[0] + v301, &v489, 0, v495.n128_u64[0]))
                          {
                            v495 = *v467;
                            v496.i64[0] = v467[1].n128_i64[0];
                            if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v290 + v301, &v486, 0, v495.n128_u64[0]))
                            {
                              v302.i64[0] = 0xC0000000C0000000;
                              v302.i64[1] = 0xC0000000C0000000;
                              v303 = vmlaq_f32(vaddq_f32(*v499, v492), v302, *components);
                              v304 = vmulq_f32(v303, v303);
                              v305 = vmlaq_f32(vaddq_f32(v489, v486), v302, *components);
                              v306 = vmulq_f32(v305, v305);
                              if ((((v304.f32[2] + vaddv_f32(*v304.f32)) + (v306.f32[2] + vaddv_f32(*v306.f32))) * 0.25) > 0.0027451)
                              {
                                ++v289;
                              }
                            }
                          }
                        }
                      }

                      v19 = v477;
                    }

                    v298 = v472;
                    v283 = v272;
                    v291 = v471.i64[0];
                    v294 = v466.i64[0];
                    v295 = v463.i64[0];
                    v296 = v475.n128_u64[0];
                    v299 = v459;
                    v297 = v460;
                    v280.i64[0] = 0;
                  }
                }

                ++v300;
                v301 += v290;
              }

              while (v293 != v300);
            }

            ++v288;
          }

          while (v288 != v290);
        }

        else
        {
          v289 = 0;
        }

        if (v289 <= v474)
        {
          v16 = v465;
          v307 = v457;
          v114 = v461;
          v308 = opacityCopy;
          if (!v457)
          {
            goto LABEL_422;
          }

          v309 = vmulq_f32(v480, v480);
          if (sqrtf(v309.f32[2] + vaddv_f32(*v309.f32)) <= 0.235294118)
          {
            goto LABEL_568;
          }

          __asm { FMOV            V1.4S, #-1.0 }

          v313 = vaddq_f32(v480, _Q1);
          v314 = vmulq_f32(v313, v313);
          if (sqrtf(v314.f32[2] + vaddv_f32(*v314.f32)) <= 0.235294118)
          {
LABEL_568:
            if (v458 < 1)
            {
              v327 = 0.0;
              v326 = 0.0;
              v328 = 0.0;
              v329 = 0.0;
            }

            else
            {
              v315 = 0;
              v316 = 0;
              v317 = 0;
              v318 = 0;
              v319 = 0;
              v475 = vdupq_n_s32(0x3DA0902Eu);
              v320 = v19;
              v321 = v283;
              do
              {
                if (v212 >= 0.92)
                {
                  v322 = *v320 & 4;
                }

                else
                {
                  v322 = *v321 & 4;
                }

                if ((*v320 & 1) != 0 && v322)
                {
                  v323 = v212 >= 0.92 ? v320 : v321;
                  if ((*v323 & 8) == 0)
                  {
                    *(components + 4) = 0.0;
                    LODWORD(components[0]) = 0;
                    v495 = *v467;
                    v496.i64[0] = v467[1].n128_i64[0];
                    if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v495, v315, components, 0, v495.n128_u64[0]))
                    {
                      ++v319;
                      v324 = ISSegmentationMathUtils_contrastRatio(*components, v475);
                      if (v324 >= 3.0)
                      {
                        ++v318;
                      }

                      v325 = v324;
                      if (v325 < 1.8)
                      {
                        ++v317;
                      }

                      if (v325 < 1.2)
                      {
                        ++v316;
                      }
                    }

                    v283 = v272;
                  }
                }

                ++v315;
                ++v321;
                ++v320;
                --v458;
              }

              while (v458);
              v326 = v318;
              v327 = v319;
              v328 = v317;
              v329 = v316;
              v16 = v465;
              v307 = v457;
              v114 = v461;
              v308 = opacityCopy;
            }

            if ((v326 / v327) >= 0.4 && (v328 / v327) <= 0.08)
            {
              *v280.i64 = (v329 / v327);
              if (*v280.i64 <= 0.02)
              {
LABEL_422:
                v330 = v307;
                v331 = v283;
                [(ISBiasedGrayscaleConversion *)selfCopy->_grayscaleConversion computeGrayscaleConversionColorWithNumberOfRepresentativeSamples:v470.i64[0] representativeSamples:v114, *v280.i64];
                v495 = *v467;
                v496.i64[0] = v467[1].n128_i64[0];
                if (computeMask_foregroundContinuousGradient_backgroundSingleColor(v469, v472, v212 < 0.92, &v495, v19, v331, maskCopy, tintableCopy, v332, v480, v473, v308, v478, v476, v330))
                {
                  v333 = v454;
                  if (v454)
                  {
                    v495 = vcvtq_f64_f32(*v462.i8);
                    *v496.i64 = *&v462.i32[2];
                    v496.i64[1] = 0x3FF0000000000000;
                    v334 = spaceCopy;
                    v335 = CGColorCreate(spaceCopy, v495.n128_f64);
                    v336 = [[ISIconSegmentationFeedbackComplex alloc] initWithMeanColor:v335];
                    CGColorRelease(v335);
                    *components = vcvtq_f64_f32(*v480.i8);
                    v503 = *&v480.i32[2];
                    v504 = 0x3FF0000000000000;
                    v19 = v477;
                    v337 = CGColorCreate(v334, components);
                    v338 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v337];
                    CGColorRelease(v337);
                    *v333 = [[ISIconSegmentationFeedback alloc] initWithForeground:v336 background:v338 recolorForeground:0];
                  }

                  free(v272);
                  goto LABEL_426;
                }

                v287 = v331;
                goto LABEL_355;
              }
            }
          }

LABEL_354:
          v287 = v283;
LABEL_355:
          free(v287);
          goto LABEL_450;
        }

        free(v283);
        v163 = 0;
LABEL_390:
        v16 = v465;
        v114 = v461;
        goto LABEL_451;
      }

LABEL_450:
      v163 = 0;
      goto LABEL_451;
    }

    v163 = 0;
    if (v155 > 0.0004 || v156 <= 0.0004)
    {
      goto LABEL_451;
    }

    ISAccelerateIconSegmentationComputeFlagForExtraConfidence(v469, v472, v19);
    v497 = 0u;
    v498 = 0u;
    v495 = 0u;
    v496 = 0u;
    *components = *v467;
    v503 = v467[1].n128_f64[0];
    v461 = v114;
    if (ISSegmentationSamples_readAlmostOpaqueSample_xy(components, 0, 0, &v495, 0))
    {
      v166 = *v19;
    }

    else
    {
      if (selfCopy->_idiom == 1)
      {
        goto LABEL_433;
      }

      *components = *v467;
      v503 = v467[1].n128_f64[0];
      if (!ISSegmentationSamples_readAlmostOpaqueSample_xy(components, v469 / 2, 0, &v495, 0))
      {
        goto LABEL_433;
      }

      v166 = *(v19 + v469 / 2);
    }

    if ((v166 & 3) == 2)
    {
      v167 = v469 - 1;
      *components = *v467;
      v503 = v467[1].n128_f64[0];
      if (ISSegmentationSamples_readAlmostOpaqueSample_xy(components, v469 - 1, 0, &v496, 0))
      {
        v19 = v477;
        v168 = v477[v167];
      }

      else
      {
        if (selfCopy->_idiom == 1)
        {
          goto LABEL_429;
        }

        *components = *v467;
        v503 = v467[1].n128_f64[0];
        if (!ISSegmentationSamples_readAlmostOpaqueSample_xy(components, v469 / 2, 0, &v496, 0))
        {
          goto LABEL_429;
        }

        v19 = v477;
        v168 = v477[v469 / 2];
      }

      if ((v168 & 3) != 2)
      {
        goto LABEL_433;
      }

      v169 = v472 - 1;
      *components = *v467;
      v503 = v467[1].n128_f64[0];
      if (ISSegmentationSamples_readAlmostOpaqueSample_xy(components, 0, v472 - 1, &v497, 0))
      {
        v19 = v477;
        v170 = v477[v169 * v469];
      }

      else
      {
        if (selfCopy->_idiom == 1)
        {
          goto LABEL_429;
        }

        *components = *v467;
        v503 = v467[1].n128_f64[0];
        if (!ISSegmentationSamples_readAlmostOpaqueSample_xy(components, v469 / 2, v169, &v497, 0))
        {
          goto LABEL_429;
        }

        v19 = v477;
        v170 = v477[v469 / 2 + v169 * v469];
      }

      if ((v170 & 3) != 2)
      {
        goto LABEL_433;
      }

      *components = *v467;
      v503 = v467[1].n128_f64[0];
      if (ISSegmentationSamples_readAlmostOpaqueSample_xy(components, v167, v169, &v498, 0))
      {
        v19 = v477;
        if ((v477[v453 - 1] & 3) == 2)
        {
          goto LABEL_219;
        }

        goto LABEL_433;
      }

      if (selfCopy->_idiom == 1)
      {
LABEL_429:
        v180 = 0;
LABEL_430:
        v19 = v477;
        goto LABEL_434;
      }

      *components = *v467;
      v503 = v467[1].n128_f64[0];
      if (!ISSegmentationSamples_readAlmostOpaqueSample_xy(components, v469 / 2, v169, &v498, 0))
      {
        v180 = 0;
LABEL_543:
        v16 = v465;
        goto LABEL_430;
      }

      v19 = v477;
      v16 = v465;
      if ((v477[v469 / 2 + v169 * v469] & 3) == 2)
      {
LABEL_219:
        if (v472 >= 1)
        {
          v460 = 0;
          v172 = 0;
          v173 = 0;
          v174 = v167;
          v459 = v472;
          v19 = v477;
          do
          {
            if (v469 >= 1)
            {
              v175 = 0;
              v171.f32[0] = v172 / v169;
              v171 = vdupq_lane_s32(*v171.f32, 0);
              v463 = v171;
              v176 = v460;
              do
              {
                if ((*(v176 + v477) & 9) == 8)
                {
                  v475 = v495;
                  v466 = v496;
                  v470 = v498;
                  v471 = v497;
                  *(v499 + 4) = 0.0;
                  LODWORD(v499[0]) = 0;
                  *components = *v467;
                  v503 = v467[1].n128_f64[0];
                  if (ISSegmentationSamples_readAlmostOpaqueSample_i(components, v176, v499, 0, *&components[0]))
                  {
                    v177 = v175 / v174;
                    v178 = vmlaq_n_f32(v475, vsubq_f32(v466, v475), v177);
                    v179 = vsubq_f32(*v499, vmlaq_f32(v178, vsubq_f32(vmlaq_n_f32(v471, vsubq_f32(v470, v471), v177), v178), v463));
                    v171 = vmulq_f32(v179, v179);
                    if (sqrtf(v171.f32[2] + vaddv_f32(*v171.f32)) > 0.20392)
                    {
                      ++v173;
                    }
                  }
                }

                ++v175;
                v176 = (v176 + 1);
              }

              while (v469 != v175);
            }

            v180 = v173 < 61;
            v16 = v465;
            if (v173 > 60)
            {
              break;
            }

            v460 = (v460 + v469);
            ++v172;
          }

          while (v172 < v459);
LABEL_434:
          v114 = v461;
          if (v457)
          {
            if (!v180 || !selfCopy->_enableRecoloringSingleForegroundColorWithGradientBackgroundInDarkImage)
            {
              goto LABEL_450;
            }

            v475 = vdupq_n_s32(0x3DA0902Eu);
            if (ISSegmentationMathUtils_contrastRatio(v495, v475) < 3.0)
            {
              goto LABEL_450;
            }

            if (ISSegmentationMathUtils_contrastRatio(v496, v475) < 3.0)
            {
              goto LABEL_450;
            }

            v475 = vdupq_n_s32(0x3DA0902Eu);
            if (ISSegmentationMathUtils_contrastRatio(v497, v475) < 3.0 || ISSegmentationMathUtils_contrastRatio(v498, v475) < 3.0)
            {
              goto LABEL_450;
            }
          }

          if (COERCE_FLOAT(ISSegmentationMathUtils_rgb2hsv(v462).n64_u32[1]) >= 0.5 && v339 >= 0.5)
          {
            goto LABEL_450;
          }

          v344 = v116;
          v345 = 3.4028e38;
          do
          {
            v346 = *v133++;
            v347 = vsubq_f32(v462, v346);
            v348 = vmulq_f32(v347, v347);
            v349 = sqrtf(v348.f32[2] + vaddv_f32(*v348.f32));
            if (v349 < v345)
            {
              v345 = v349;
            }

            --v344;
          }

          while (v344);
          if (v345 < 0.1451)
          {
            goto LABEL_450;
          }

          if (!v180)
          {
            v380 = v180;
            v381 = 1717986919 * v469;
            v382 = v381 >> 63;
            v383 = v19;
            v384 = v381 >> 34;
            *components = *v467;
            v503 = v467[1].n128_f64[0];
            if (!backgroundIsContinuousGradientVertically(components, v383, 2, v469 / 10))
            {
              v163 = 0;
              v19 = v383;
              goto LABEL_451;
            }

            *components = *v467;
            v503 = v467[1].n128_f64[0];
            IsContinuousGradientVertically = backgroundIsContinuousGradientVertically(components, v383, v469 - 3, v384 + v382);
            v19 = v383;
            v180 = v380;
            if (!IsContinuousGradientVertically)
            {
              goto LABEL_450;
            }
          }

          v350 = v467->n128_u32[3];
          LODWORD(v453) = v180;
          if (v350 != 5 || v467->n128_u32[2])
          {
            if (v469 >= 5)
            {
              v351 = 0;
              LODWORD(v459) = 0;
              LODWORD(v460) = 0;
              v352 = (v469 - 2);
              v451 = v472 - v473.i32[0];
              v471.i64[0] = v473.i32[0];
              selfCopy = (v469 - v473.i32[0]);
              v353 = 2 * v469;
              v354 = (v19 + 2 * v469);
              v355 = v354 + 3;
              v356 = v469 + 2;
              v357 = v19 + v356;
              v458 = v356;
              v358 = &v354[v356];
              v452 = (3 * v469 + 2);
              v359 = 2;
              v470.i64[0] = v352;
              v473.i64[0] = (2 * v469);
              v466.i64[0] = v19 + v356;
              v463.i64[0] = &v354[v356];
              do
              {
                if (v472 >= 5)
                {
                  v361 = v359 >= v471.i64[0] && v359 < selfCopy;
                  v462.i32[0] = !v361;
                  v362 = v351;
                  v363 = 2;
                  do
                  {
                    if ((v355[v362 - 1] & 9) == 8 && (v355[v362 - 2] & 9) == 8 && (v355[v362] & 9) == 8 && (*(v357 + v362) & 9) == 8 && (*(v358 + v362) & 9) == 8)
                    {
                      v475.n128_u64[0] = v351;
                      LODWORD(v499[1]) = 0;
                      v499[0] = 0.0;
                      v492.i32[2] = 0;
                      v492.i64[0] = 0;
                      v489.i32[2] = 0;
                      v489.i64[0] = 0;
                      v486.i32[2] = 0;
                      v486.i64[0] = 0;
                      v483.i32[2] = 0;
                      v483.i64[0] = 0;
                      v364 = *v467;
                      v503 = v467[1].n128_f64[0];
                      *components = v364;
                      if (ISSegmentationSamples_readAlmostOpaqueSample_i(components, v353 + v362 + 2, v499, 0, v364.n128_u64[0]))
                      {
                        *components = *v467;
                        v503 = v467[1].n128_f64[0];
                        if (ISSegmentationSamples_readAlmostOpaqueSample_i(components, v473.i32[0] + v362 + 1, &v492, 0, *&components[0]))
                        {
                          *components = *v467;
                          v503 = v467[1].n128_f64[0];
                          if (ISSegmentationSamples_readAlmostOpaqueSample_i(components, v473.i32[0] + v362 + 3, &v489, 0, *&components[0]))
                          {
                            *components = *v467;
                            v503 = v467[1].n128_f64[0];
                            if (ISSegmentationSamples_readAlmostOpaqueSample_i(components, v458 + v362, &v486, 0, *&components[0]))
                            {
                              *components = *v467;
                              v503 = v467[1].n128_f64[0];
                              if (ISSegmentationSamples_readAlmostOpaqueSample_i(components, v452 + v362, &v483, 0, *&components[0]))
                              {
                                v365.i64[0] = 0xC0000000C0000000;
                                v365.i64[1] = 0xC0000000C0000000;
                                v366 = vmlaq_f32(vaddq_f32(v492, v489), v365, *v499);
                                v367 = vmulq_f32(v366, v366);
                                v368 = vmlaq_f32(vaddq_f32(v486, v483), v365, *v499);
                                v369 = vmulq_f32(v368, v368);
                                v370 = v460;
                                if ((((v367.f32[2] + vaddv_f32(*v367.f32)) + (v369.f32[2] + vaddv_f32(*v369.f32))) * 0.25) > 0.0027451)
                                {
                                  v370 = v460 + 1;
                                }

                                LODWORD(v460) = v370;
                                v371 = v462.i8[0];
                                if (v363 < v471.i64[0])
                                {
                                  v371 = 1;
                                }

                                if ((v371 & 1) == 0 && v363 < v451)
                                {
                                  v372 = vsubq_f32(*v499, v492);
                                  v373 = vmulq_f32(v372, v372);
                                  if ((v373.f32[2] + vaddv_f32(*v373.f32)) > 0.2025 || (v374 = vsubq_f32(*v499, v489), v375 = vmulq_f32(v374, v374), (v375.f32[2] + vaddv_f32(*v375.f32)) > 0.2025) || (v376 = vsubq_f32(*v499, v486), v377 = vmulq_f32(v376, v376), (v377.f32[2] + vaddv_f32(*v377.f32)) > 0.2025) || (v378 = vsubq_f32(*v499, v483), v379 = vmulq_f32(v378, v378), (v379.f32[2] + vaddv_f32(*v379.f32)) > 0.2025))
                                  {
                                    LODWORD(v459) = v459 + 1;
                                  }
                                }

                                v19 = v477;
                              }
                            }
                          }
                        }
                      }

                      v351 = v475.n128_u64[0];
                      v352 = v470.i64[0];
                      v353 = v473.i32[0];
                      v357 = v466.i64[0];
                      v358 = v463.i64[0];
                    }

                    ++v363;
                    v362 += v469;
                  }

                  while (v472 - 2 != v363);
                }

                ++v359;
                ++v351;
              }

              while (v359 != v352);
              goto LABEL_527;
            }

LABEL_526:
            LODWORD(v460) = 0;
            LODWORD(v459) = 0;
LABEL_527:
            v163 = 0;
            if (v460 > v474)
            {
              goto LABEL_390;
            }

            v16 = v465;
            v114 = v461;
            if (v459 > 0)
            {
              goto LABEL_451;
            }

            *components = *v467;
            v503 = v467[1].n128_f64[0];
            v475 = v481;
            if (ISAccelerateIconComputeMask_foregroundSingleColor_backgroundContinuousGradient(v469, v472, components, maskCopy, tintableCopy, opacityCopy, v478, v476, &v495, v457))
            {
              if (!v454)
              {
                goto LABEL_426;
              }

              *components = vcvtq_f64_f32(v475.n128_u64[0]);
              v503 = v475.n128_f32[2];
              v504 = 0x3FF0000000000000;
              v421 = CGColorCreate(spaceCopy, components);
              v422 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v421];
              CGColorRelease(v421);
              if (v453)
              {
                *v499 = vcvtq_f64_f32(v495.n128_u64[0]);
                v500 = v495.n128_f32[2];
                v501 = 0x3FF0000000000000;
                v492 = vcvtq_f64_f32(*v496.f32);
                v493 = v496.f32[2];
                v494 = 0x3FF0000000000000;
                v489 = vcvtq_f64_f32(v498.n128_u64[0]);
                v490 = v498.n128_f32[2];
                v491 = 0x3FF0000000000000;
                v486 = vcvtq_f64_f32(v497.n128_u64[0]);
                v487 = v497.n128_f32[2];
                v488 = 0x3FF0000000000000;
                __asm { FMOV            V1.2D, #0.25 }

                v483 = vmulq_f64(vcvtq_f64_f32(vadd_f32(vadd_f32(vadd_f32(v495.n128_u64[0], *v496.f32), v498.n128_u64[0]), v497.n128_u64[0])), _Q1);
                v484 = (((v495.n128_f32[2] + v496.f32[2]) + v498.n128_f32[2]) + v497.n128_f32[2]) * 0.25;
                v485 = 0x3FF0000000000000;
                v424 = CGColorCreate(spaceCopy, v499);
                v425 = CGColorCreate(spaceCopy, v492.i64);
                v426 = CGColorCreate(spaceCopy, v489.i64);
                v427 = CGColorCreate(spaceCopy, v486.i64);
                v428 = CGColorCreate(spaceCopy, v483.i64);
                v429 = [[ISIconSegmentationFeedbackBilinearGradient alloc] initWithTopLeftColor:v424 topRightColor:v425 bottomRightColor:v426 bottomLeftColor:v427 meanColor:v428];
                CGColorRelease(v424);
                CGColorRelease(v425);
                CGColorRelease(v426);
                CGColorRelease(v427);
                v430 = v428;
              }

              else
              {
                *v499 = vcvtq_f64_f32(*v480.i8);
                v500 = *&v480.i32[2];
                v501 = 0x3FF0000000000000;
                v436 = CGColorCreate(spaceCopy, v499);
                v429 = [[ISIconSegmentationFeedbackComplex alloc] initWithMeanColor:v436];
                v430 = v436;
              }

              CGColorRelease(v430);
              if (v457)
              {
                v437 = v429;
              }

              else
              {
                v437 = 0;
              }

              *v454 = [[ISIconSegmentationFeedback alloc] initWithForeground:v422 background:v429 recolorForeground:v437];

              v163 = 1;
              v16 = v465;
LABEL_273:
              v19 = v477;
              goto LABEL_451;
            }

            goto LABEL_450;
          }

          if (v469 < 5)
          {
            goto LABEL_526;
          }

          v386 = 0;
          LODWORD(v459) = 0;
          LODWORD(v460) = 0;
          v387 = (v19 + 2 * v469);
          v388 = v387 + 3;
          v389 = v19 + v469 + 2;
          v390 = vdupq_n_s32(0x437F0000u);
          v391.i64[0] = 0xC0000000C0000000;
          v391.i64[1] = 0xC0000000C0000000;
          v392 = &v387[v469 + 2];
          v393 = 2;
          while (v472 < 5)
          {
LABEL_524:
            ++v393;
            ++v386;
            if (v393 == v469 - 2)
            {
              goto LABEL_527;
            }
          }

          v395 = v393 >= v473.i32[0] && v393 < v469 - v473.i32[0];
          v396 = !v395;
          v397 = v386;
          v398 = 2;
          while (1)
          {
            if ((v388[v397 - 1] & 9) == 8)
            {
              v19 = v477;
              if ((v388[v397 - 2] & 9) != 8 || (v388[v397] & 9) != 8 || (*(v389 + v397) & 9) != 8 || (*(v392 + v397) & 9) != 8)
              {
                goto LABEL_523;
              }

              v399 = v467[1].n128_u64[0];
              v400 = (v399 + 8 * v469 + 4 * v397);
              v341.i32[0] = v400[1];
              v340.i32[0] = v400[2];
              v401 = vmovl_u8(*v340.f32).u64[0];
              v402 = vmovl_u16(v401);
              *v402.f32 = vcvt_f32_u32(vand_s8(*v402.f32, 0xFF000000FFLL));
              v402.f32[2] = v401.u16[2];
              v403 = vmovl_u8(*v341.f32).u64[0];
              v404 = vmovl_u16(v403);
              *v404.f32 = vcvt_f32_u32(vand_s8(*v404.f32, 0xFF000000FFLL));
              v404.f32[2] = v403.u16[2];
              v340 = vdivq_f32(v402, v390);
              v402.i32[0] = v400[3];
              v402.i64[0] = vmovl_u8(*v402.f32).u64[0];
              v405 = vmovl_u16(*v402.f32);
              *v405.f32 = vcvt_f32_u32(vand_s8(*v405.f32, 0xFF000000FFLL));
              v405.f32[2] = v402.u16[2];
              v406 = vdivq_f32(v404, v390);
              v341 = vdivq_f32(v405, v390);
              v405.i32[0] = *(v399 + 4 * v469 + 8 + 4 * v397);
              v405.i64[0] = vmovl_u8(*v405.f32).u64[0];
              v407 = vmovl_u16(*v405.f32);
              *v407.f32 = vcvt_f32_u32(vand_s8(*v407.f32, 0xFF000000FFLL));
              v407.f32[2] = v405.u16[2];
              v342.i32[0] = *(v399 + 12 * v469 + 8 + 4 * v397);
              v408 = vdivq_f32(v407, v390);
              v409 = vmovl_u8(*v342.f32);
              LODWORD(v399) = v409.u16[2];
              *v409.f32 = vcvt_f32_u32(vand_s8(*&vmovl_u16(*v409.f32), 0xFF000000FFLL));
              v409.f32[2] = v399;
              v410 = vdivq_f32(v409, v390);
              v411 = vmlaq_f32(vaddq_f32(v406, v341), v391, v340);
              v342 = vmulq_f32(v411, v411);
              v412 = vmlaq_f32(vaddq_f32(v408, v410), v391, v340);
              v413 = vmulq_f32(v412, v412);
              v414 = v460;
              if ((((v342.f32[2] + vaddv_f32(*v342.f32)) + (v413.f32[2] + vaddv_f32(*v413.f32))) * 0.25) > 0.0027451)
              {
                v414 = v460 + 1;
              }

              LODWORD(v460) = v414;
              if (v398 < v473.i32[0])
              {
                v415 = 1;
              }

              else
              {
                v415 = v396;
              }

              if ((v415 & 1) == 0)
              {
                v19 = v477;
                if (v398 < v472 - v473.i32[0])
                {
                  v416 = vsubq_f32(v340, v406);
                  v417 = vmulq_f32(v416, v416);
                  if ((v417.f32[2] + vaddv_f32(*v417.f32)) > 0.2025 || (v418 = vsubq_f32(v340, v341), v341 = vmulq_f32(v418, v418), (v341.f32[2] + vaddv_f32(*v341.f32)) > 0.2025) || (v419 = vsubq_f32(v340, v408), v341 = vmulq_f32(v419, v419), (v341.f32[2] + vaddv_f32(*v341.f32)) > 0.2025) || (v420 = vsubq_f32(v340, v410), v340 = vmulq_f32(v420, v420), (v340.f32[2] + vaddv_f32(*v340.f32)) > 0.2025))
                  {
                    LODWORD(v459) = v459 + 1;
                  }
                }

                goto LABEL_523;
              }
            }

            v19 = v477;
LABEL_523:
            ++v398;
            v397 += v469;
            if (v472 - 2 == v398)
            {
              goto LABEL_524;
            }
          }
        }

        v180 = 1;
        goto LABEL_543;
      }
    }

LABEL_433:
    v180 = 0;
    goto LABEL_434;
  }

  v492 = v462;
  if (v457 && !shouldGenerateDark_singleForegroundColor_singleBackgroundColor(selfCopy->_enableColorEnhancementInDarkImage, &v492, v462, v480))
  {
    goto LABEL_450;
  }

  v495 = *v467;
  v496.i64[0] = v467[1].n128_i64[0];
  if (!computeMask_foregroundMultipleColors_backgroundSingleColor(v469, v472, 1, &v481, &v495, v19, maskCopy, tintableCopy, 0, opacityCopy, v478, v476, &v492, v457))
  {
    goto LABEL_450;
  }

  if (v454)
  {
    v495 = vcvtq_f64_f32(*v462.i8);
    *v496.i64 = *&v462.i32[2];
    v496.i64[1] = 0x3FF0000000000000;
    v157 = CGColorCreate(spaceCopy, v495.n128_f64);
    v158 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v157];
    CGColorRelease(v157);
    *components = vcvtq_f64_f32(*v480.i8);
    v503 = *&v480.i32[2];
    v504 = 0x3FF0000000000000;
    v159 = CGColorCreate(spaceCopy, components);
    v160 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v159];
    CGColorRelease(v159);
    if (v457)
    {
      *v499 = vcvtq_f64_f32(*v492.f32);
      v500 = v492.f32[2];
      v501 = 0x3FF0000000000000;
      v161 = CGColorCreate(spaceCopy, v499);
      v162 = [[ISIconSegmentationFeedbackSingleColor alloc] initWithColor:v161];
      CGColorRelease(v161);
    }

    else
    {
      v162 = 0;
    }

    *v454 = [[ISIconSegmentationFeedback alloc] initWithForeground:v158 background:v160 recolorForeground:v162];

    v163 = 1;
    goto LABEL_273;
  }

LABEL_426:
  v163 = 1;
LABEL_451:
  free(v19);
  free(v114);
LABEL_200:

  return v163;
}

- (BOOL)_computeImageWithWidth:(int)width height:(int)height colorSpace:(CGColorSpace *)space samples:(id)samples foregroundMask:(id *)mask ucharTintable:(char *)tintable ucharTintableOpacity:(char *)opacity ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:
{
  v9 = *&samples.var2;
  v10 = *&samples.var0;
  v20 = **&samples.var0;
  v21 = *(*&samples.var0 + 16);
  v18 = **&samples.var2;
  v19 = *(*&samples.var2 + 16);
  v12 = 1;
  if (![ISIconSegmentation _computeImageWithWidth:"_computeImageWithWidth:height:strict:colorSpace:samples:foregroundMask:ucharTintable:ucharTintableOpacity:ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:" height:*&width strict:*&height colorSpace:1 samples:mask foregroundMask:tintable ucharTintable:opacity ucharTintableOpacity:v22 ucharSolariumTintable:v23 ucharForeground:v24 ucharForegroundOpacity:v25 ucharDark:? feedback:?])
  {
    v20 = *v10;
    v21 = *(v10 + 2);
    v18 = *v9;
    v19 = *(v9 + 2);
    return [(ISIconSegmentation *)self _computeImageWithWidth:width height:height strict:0 colorSpace:space samples:&v20 foregroundMask:&v18 ucharTintable:mask ucharTintableOpacity:tintable ucharSolariumTintable:opacity ucharForeground:v22 ucharForegroundOpacity:v23 ucharDark:v24 feedback:v25];
  }

  return v12;
}

- (BOOL)_computeImageWithCGImage:(CGImage *)image ucharTintable:(char *)tintable ucharTintableOpacity:(char *)opacity ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  ColorSpace = CGImageGetColorSpace(image);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
LABEL_35:
      LOBYTE(v9) = 0;
      return v9;
    }

    v56 = v9;
    v58 = v10;
    BitsPerPixel = CGImageGetBitsPerPixel(image);
    LOBYTE(v9) = 0;
    if (CGImageGetBitsPerComponent(image) == 8)
    {
      opacityCopy = opacity;
      if (BitsPerPixel == 32)
      {
        Width = CGImageGetWidth(image);
        Height = CGImageGetHeight(image);
        BytesPerRow = CGImageGetBytesPerRow(image);
        v19 = BytesPerRow >= 0 ? BytesPerRow : BytesPerRow + 3;
        AlphaInfo = CGImageGetAlphaInfo(image);
        LOBYTE(v9) = 0;
        if (AlphaInfo <= kCGImageAlphaNoneSkipLast)
        {
          v21 = AlphaInfo;
          if (((1 << AlphaInfo) & 0x2A) != 0)
          {
            idiom = self->_idiom;
            if (idiom == 4 || idiom == 1)
            {
              v21 = 5;
            }

            DataProvider = CGImageGetDataProvider(image);
            if (!DataProvider)
            {
              goto LABEL_35;
            }

            v24 = CGDataProviderCopyData(DataProvider);
            if (!v24)
            {
              goto LABEL_35;
            }

            v25 = v24;
            BytePtr = CFDataGetBytePtr(v24);
            if (BytePtr)
            {
              v65 = 0;
              v64 = 0;
              v67 = Width;
              LODWORD(v68) = Height;
              HIDWORD(v68) = (v19 >> 2) - Width;
              v69 = v21;
              v70 = BytePtr;
              v60 = Width;
              v61 = Height;
              v62 = 0;
              v63 = 0;
              v66 = malloc_type_malloc(Width * Height, 0x100004077774924uLL);
              v27 = v66;
              LOBYTE(v9) = [(ISIconSegmentation *)self _computeImageWithWidth:Width height:Height colorSpace:ColorSpace samples:&v67 foregroundMask:&v60 ucharTintable:tintable ucharTintableOpacity:opacityCopy ucharSolariumTintable:v58 ucharForeground:v56 ucharForegroundOpacity:v8 ucharDark:v71 feedback:v72];
              CFRelease(v25);
              v28 = v27;
LABEL_31:
              free(v28);
              return v9;
            }

            v48 = v25;
            goto LABEL_34;
          }
        }
      }
    }
  }

  else
  {
    v57 = v9;
    v59 = v10;
    v29 = CGImageGetBitsPerPixel(image);
    LOBYTE(v9) = 0;
    if (CGImageGetBitsPerComponent(image) == 8)
    {
      opacityCopy2 = opacity;
      if (v29 == 16)
      {
        v30 = CGImageGetWidth(image);
        v31 = CGImageGetHeight(image);
        v53 = CGImageGetBytesPerRow(image);
        v32 = CGImageGetAlphaInfo(image);
        LOBYTE(v9) = 0;
        if (v32 <= kCGImageAlphaNoneSkipLast)
        {
          v33 = v32;
          if (((1 << v32) & 0x2A) != 0)
          {
            v34 = self->_idiom;
            if (v34 == 4 || v34 == 1)
            {
              v33 = 5;
            }

            v35 = CGImageGetDataProvider(image);
            if (!v35)
            {
              goto LABEL_35;
            }

            v36 = CGDataProviderCopyData(v35);
            v9 = v36;
            if (v36)
            {
              v51 = v31;
              v37 = CFDataGetBytePtr(v36);
              if (v37)
              {
                v38 = v37;
                v39 = v51 * v30;
                v40 = malloc_type_malloc(4 * v39, 0x100004052888210uLL);
                v42 = v40;
                if (v39 >= 1)
                {
                  for (i = 0; i != v39; ++i)
                  {
                    v41.i16[0] = *&v38[2 * i + 2 * i / v30 * (v53 / 2 - v30)];
                    v44 = vzip1_s8(v41, v41);
                    v45 = vzip1_s16(v44, v44);
                    v45.i16[2] = v44.i16[0];
                    v41 = vuzp1_s8(v45, v44);
                    *&v40[4 * i] = v41.i32[0];
                  }
                }

                CFRelease(v9);
                v46 = malloc_type_malloc(v39, 0x100004077774924uLL);
                v65 = 0;
                v64 = 0;
                v47 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                v67 = v30;
                v68 = v51;
                v69 = v33;
                v70 = v42;
                v60 = v30;
                v61 = v51;
                v62 = 0;
                v63 = 0;
                v66 = v46;
                LOBYTE(v9) = [ISIconSegmentation _computeImageWithWidth:"_computeImageWithWidth:height:colorSpace:samples:foregroundMask:ucharTintable:ucharTintableOpacity:ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:" height:v30 colorSpace:opacityCopy2 samples:v59 foregroundMask:v57 ucharTintable:v8 ucharTintableOpacity:v71 ucharSolariumTintable:v72 ucharForeground:? ucharForegroundOpacity:? ucharDark:? feedback:?];
                CGColorSpaceRelease(v47);
                free(v42);
                v28 = v46;
                goto LABEL_31;
              }

              v48 = v9;
LABEL_34:
              CFRelease(v48);
              goto LABEL_35;
            }
          }
        }
      }
    }
  }

  return v9;
}

- (CGImage)createTintableImageMaskWithCGImage:(CGImage *)image tintableOpacityImageMask:(CGImage *)mask
{
  imageCopy = image;
  if (!image)
  {
    return imageCopy;
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(imageCopy);
  v9 = malloc_type_malloc((Width * Height), 0x100004077774924uLL);
  if (mask)
  {
    v10 = malloc_type_malloc((Width * Height), 0x100004077774924uLL);
  }

  else
  {
    v10 = 0;
  }

  if (![(ISIconSegmentation *)self _computeImageWithCGImage:imageCopy ucharTintable:v9 ucharTintableOpacity:v10 ucharSolariumTintable:0 ucharForeground:0 ucharForegroundOpacity:0 ucharDark:0 feedback:0])
  {
    free(v9);
    imageCopy = 0;
    if (!v10)
    {
      return imageCopy;
    }

LABEL_11:
    free(v10);
    return imageCopy;
  }

  imageCopy = ISCreateCGImageMaskUchar(Width, Height, v9);
  if (mask)
  {
    *mask = ISCreateCGImageMaskUchar(Width, Height, v10);
  }

  free(v9);
  if (v10)
  {
    goto LABEL_11;
  }

  return imageCopy;
}

- (CGImage)createSolariumTintableImageWithCGImage:(CGImage *)image feedback:(id *)feedback
{
  imageCopy = image;
  if (image)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(imageCopy);
    v9 = malloc_type_malloc(4 * (Width * Height), 0x100004052888210uLL);
    v10 = [(ISIconSegmentation *)self _computeImageWithCGImage:imageCopy ucharTintable:0 ucharTintableOpacity:0 ucharSolariumTintable:v9 ucharForeground:0 ucharForegroundOpacity:0 ucharDark:0 feedback:feedback];
    imageCopy = 0;
    if (v10)
    {
      imageCopy = ISCreateCGImageUchar4AlphaPremultiplied(Width, Height, v9);
    }

    free(v9);
  }

  return imageCopy;
}

- (CGImage)createForegroundImageWithCGImage:(CGImage *)image feedback:(id *)feedback
{
  imageCopy = image;
  if (image)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(imageCopy);
    v9 = malloc_type_malloc(4 * (Width * Height), 0x100004052888210uLL);
    v10 = [(ISIconSegmentation *)self _computeImageWithCGImage:imageCopy ucharTintable:0 ucharTintableOpacity:0 ucharSolariumTintable:0 ucharForeground:v9 ucharForegroundOpacity:0 ucharDark:0 feedback:feedback];
    imageCopy = 0;
    if (v10)
    {
      imageCopy = ISCreateCGImageUchar4AlphaPremultiplied(Width, Height, v9);
    }

    free(v9);
  }

  return imageCopy;
}

- (CGImage)createDarkImageWithCGImage:(CGImage *)image feedback:(id *)feedback
{
  imageCopy = image;
  if (image)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(imageCopy);
    v9 = malloc_type_malloc(4 * (Width * Height), 0x100004052888210uLL);
    v10 = [(ISIconSegmentation *)self _computeImageWithCGImage:imageCopy ucharTintable:0 ucharTintableOpacity:0 ucharSolariumTintable:0 ucharForeground:0 ucharForegroundOpacity:0 ucharDark:v9 feedback:feedback];
    imageCopy = 0;
    if (v10)
    {
      imageCopy = ISCreateCGImageUchar4AlphaPremultiplied(Width, Height, v9);
    }

    free(v9);
  }

  return imageCopy;
}

@end