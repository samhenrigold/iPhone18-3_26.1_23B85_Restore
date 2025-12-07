@interface MPSImageSIFT
- (MPSImageSIFT)initWithDevice:(id)device descriptor:(id)descriptor;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationGaussianPyramid:(id)pyramid destinationDOGPyramid:(id)gPyramid keypointsBuffer:(id)keypointsBuffer keypointBufferOffset:(unint64_t)offset keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)self0;
@end

@implementation MPSImageSIFT

- (MPSImageSIFT)initWithDevice:(id)device descriptor:(id)descriptor
{
  v180.receiver = self;
  v180.super_class = MPSImageSIFT;
  v6 = [(MPSUnaryImageKernel *)&v180 initWithDevice:?];
  v7 = v6;
  if (v6)
  {
    v6->_sigma = *(descriptor + 2);
    v6->_layersPerOctave = *(descriptor + 2);
    v6->_octaves = *(descriptor + 3);
    v6->_upscale = *(descriptor + 32);
    v6->_contrastThreshold = *(descriptor + 9);
    v6->_edgeThreshold = *(descriptor + 5);
    v6->_initialSigma = *(descriptor + 12);
    v6->_imageBoundary = *(descriptor + 7);
    v6->_orientationRadius = *(descriptor + 16);
    v6->_orientationWeight = *(descriptor + 17);
    v6->_orientationBins = *(descriptor + 9);
    v6->_orientationThreshold = *(descriptor + 20);
    v6->_maximumKeyPoints = *(descriptor + 11);
    v6->_fusedKeypointOrientation = 0;
    v8 = *MEMORY[0x277CD7350];
    v6->_useCompressedTexture = ((*(&v6->super.super.super.isa + v8))[369] & 0x80000) != 0;
    if (v6->_upscale && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v156 = v8;
    if (v7->_sigma < v7->_initialSigma && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = malloc_type_malloc(4 * v7->_layersPerOctave + 12, 0x100004052888210uLL);
    v7->_sigmas = v9;
    sigma = v7->_sigma;
    layersPerOctave = v7->_layersPerOctave;
    *v9 = sigma;
    v12 = exp2(1.0 / layersPerOctave);
    v145 = v7;
    if (layersPerOctave + 3 < 2)
    {
LABEL_13:
      v27 = 4.0;
      if (!v7->_upscale)
      {
        v27 = 1.0;
      }

      v28 = -(((v7->_initialSigma * v7->_initialSigma) * v27) - (sigma * sigma));
      if (v28 < 0.01)
      {
        v28 = 0.01;
      }

      v29 = sqrtf(v28);
      v30 = vcvtas_u32_f32((v29 * 6.0) + 1.0);
      v31 = v30 | 1;
      if (layersPerOctave + 3 < 2)
      {
        v35 = ((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = v156;
        goto LABEL_26;
      }

      v32 = layersPerOctave + 2;
      v33 = v156;
      if (layersPerOctave + 2 >= 8)
      {
        v34 = v32 & 0xFFFFFFFFFFFFFFF8 | 1;
        v36 = 0uLL;
        v37.i64[1] = 0;
        v37.i64[0] = ((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        v38 = (v9 + 5);
        __asm
        {
          FMOV            V2.4S, #6.0
          FMOV            V3.4S, #1.0
        }

        v45 = vdupq_n_s64(1uLL);
        v46 = vdupq_n_s64(7uLL);
        v47 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
        v48 = v32 & 0xFFFFFFFFFFFFFFF8;
        v49 = 0uLL;
        v50 = 0uLL;
        do
        {
          v51 = vrndaq_f32(vmlaq_f32(_Q3, v38[-1], _Q2));
          v52 = vrndaq_f32(vmlaq_f32(_Q3, *v38, _Q2));
          v36 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvt_hight_f64_f32(v51)), v45), v46), v47), v36);
          v37 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v51.f32)), v45), v46), v47), v37);
          v50 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvt_hight_f64_f32(v52)), v45), v46), v47), v50);
          v49 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v52.f32)), v45), v46), v47), v49);
          v38 += 2;
          v48 -= 8;
        }

        while (v48);
        v35 = vaddvq_s64(vaddq_s64(vaddq_s64(v49, v37), vaddq_s64(v50, v36)));
        if (v32 == (v32 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_26:
          v56 = (*(**(&v7->super.super.super.isa + v33) + 24))(*(&v7->super.super.super.isa + v33));
          v57 = (*(**(&v7->super.super.super.isa + v33) + 40))(*(&v7->super.super.super.isa + v33));
          v59 = objc_msgSend_newBufferWithLength_options_(device, v58, 4 * v35, v57 | (16 * v56));
          v7->_weights = v59;
          v62 = objc_msgSend_contents(v59, v60, v61);
          v65 = v62;
          sigmas = v7->_sigmas;
          v66 = v7->_layersPerOctave;
          if ((v30 & 0x8000000000000000) == 0)
          {
            v67 = v30 >> 1;
            *&v64 = -0.5 / (v29 * v29);
            v173 = v64;
            if (v30 >= 4)
            {
              v152 = vdupq_n_s64(v67);
              v68 = v30 & 0x7FFFFFFFFFFFFFFCLL;
              v69 = xmmword_2399888A0;
              v70 = (v62 + 8);
              LODWORD(v63) = 0;
              v147 = vdupq_n_s64(4uLL);
              v149 = vdupq_n_s64(2uLL);
              v71 = v30 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v176 = *&v63;
                v164 = v69;
                v72 = vsubq_s64(v69, v152);
                v73 = vaddq_s64(v72, v149);
                *v72.i8 = vcvt_f32_f64(vcvtq_f64_s64(v72));
                *v73.i8 = vcvt_f32_f64(vcvtq_f64_s64(v73));
                v74 = vmul_f32(vmul_n_f32(*v72.i8, *&v64), *v72.i8);
                v160 = v74.f32[0];
                v167 = vmul_f32(vmul_n_f32(*v73.i8, *&v64), *v73.i8);
                v170 = expf(v74.f32[1]);
                v157 = expf(v160);
                *&v75 = expf(v167.f32[1]);
                v154 = v75;
                *&v76 = expf(v167.f32[0]);
                LODWORD(v64) = v173;
                v63 = v154;
                HIDWORD(v76) = v154;
                *(v70 - 1) = __PAIR64__(LODWORD(v170), LODWORD(v157));
                *v70 = v76;
                *&v63 = (((v176 + v157) + v170) + *&v76) + *&v154;
                v69 = vaddq_s64(v164, v147);
                v70 += 2;
                v71 -= 4;
              }

              while (v71);
            }

            else
            {
              v68 = 0;
              *&v63 = 0;
            }

            v77 = v31 - v68;
            v78 = &v65->f32[v68];
            v79 = v68 - v67;
            do
            {
              v177 = v63;
              v80 = expf((*&v64 * v79) * v79);
              v64 = v173;
              v63 = v177;
              *v78++ = v80;
              *&v63 = *&v177 + v80;
              ++v79;
              --v77;
            }

            while (v77);
            if (v30 >= 8)
            {
              v81 = v30 & 0x7FFFFFFFFFFFFFF8;
              v82 = vdupq_lane_s32(*&v63, 0);
              v83 = v65 + 1;
              v84 = v30 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v85 = vdivq_f32(*v83, v82);
                v83[-1] = vdivq_f32(v83[-1], v82);
                *v83 = v85;
                v83 += 2;
                v84 -= 8;
              }

              while (v84);
            }

            else
            {
              v81 = 0;
            }

            v86 = v31 - v81;
            v87 = &v65->f32[v81];
            do
            {
              *v87 = *v87 / *&v63;
              ++v87;
              --v86;
            }

            while (v86);
          }

          v88 = v66 + 3;
          if (v66 + 3 < 2)
          {
            v7 = v145;
          }

          else
          {
            v144 = v66;
            v89 = (v65 + 4 * (((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8));
            v90 = 1;
            v91 = vdupq_n_s64(2uLL);
            v148 = vdupq_n_s64(4uLL);
            v153 = v91;
            do
            {
              v92 = sigmas[v90];
              v93 = vcvtas_u32_f32((v92 * 6.0) + 1.0);
              v94 = v93 | 1;
              if ((v93 & 0x8000000000000000) == 0)
              {
                v95 = v93 >> 1;
                *&v64 = -0.5 / (v92 * v92);
                v174 = v64;
                if (v93 >= 4)
                {
                  v96 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                  v150 = vdupq_n_s64(v95);
                  v97 = &v89->i64[1];
                  LODWORD(v63) = 0;
                  v98 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                  v99 = xmmword_2399888A0;
                  do
                  {
                    v178 = *&v63;
                    v165 = v99;
                    v100 = vsubq_s64(v99, v150);
                    v101 = vaddq_s64(v100, v91);
                    *v100.i8 = vcvt_f32_f64(vcvtq_f64_s64(v100));
                    *v101.i8 = vcvt_f32_f64(vcvtq_f64_s64(v101));
                    v102 = vmul_f32(vmul_n_f32(*v100.i8, *&v64), *v100.i8);
                    v161 = v102.f32[0];
                    v168 = vmul_f32(vmul_n_f32(*v101.i8, *&v64), *v101.i8);
                    v171 = expf(v102.f32[1]);
                    *&v103 = expf(v161);
                    v158 = *&v103;
                    v104 = v103;
                    *(&v104 + 1) = v171;
                    v162 = v104;
                    v155 = expf(v168.f32[1]);
                    *&v105 = expf(v168.f32[0]);
                    LODWORD(v64) = v174;
                    v91 = v153;
                    *(&v105 + 1) = v155;
                    v63 = v162;
                    *(v97 - 1) = v162;
                    *v97 = v105;
                    *&v63 = (((v178 + v158) + v171) + *&v105) + v155;
                    v99 = vaddq_s64(v165, v148);
                    v97 += 2;
                    v98 -= 4;
                  }

                  while (v98);
                }

                else
                {
                  v96 = 0;
                  *&v63 = 0;
                }

                v106 = v94 - v96;
                v107 = &v89->f32[v96];
                v108 = v96 - v95;
                do
                {
                  v179 = v63;
                  v109 = expf((*&v64 * v108) * v108);
                  v64 = v174;
                  v63 = v179;
                  *v107++ = v109;
                  *&v63 = *&v179 + v109;
                  ++v108;
                  --v106;
                }

                while (v106);
                if (v93 >= 8)
                {
                  v110 = v93 & 0x7FFFFFFFFFFFFFF8;
                  v111 = vdupq_lane_s32(*&v63, 0);
                  v112 = v89 + 1;
                  v113 = v93 & 0x7FFFFFFFFFFFFFF8;
                  do
                  {
                    v114 = vdivq_f32(*v112, v111);
                    v112[-1] = vdivq_f32(v112[-1], v111);
                    *v112 = v114;
                    v112 += 2;
                    v113 -= 8;
                  }

                  while (v113);
                }

                else
                {
                  v110 = 0;
                }

                v115 = v94 - v110;
                v116 = &v89->f32[v110];
                v91 = v153;
                do
                {
                  *v116 = *v116 / *&v63;
                  ++v116;
                  --v115;
                }

                while (v115);
              }

              v89 = (v89 + 4 * ((v94 + 7) & 0x3FFFFFFFFFFFFFF8));
              ++v90;
            }

            while (v90 != v88);
            v117 = v144 + 2;
            if (v144 + 2 < 8)
            {
              v118 = 1;
              v7 = v145;
              goto LABEL_62;
            }

            v118 = v117 & 0xFFFFFFFFFFFFFFF8 | 1;
            v119 = vdupq_n_s64(v31);
            v120 = (sigmas + 5);
            __asm
            {
              FMOV            V1.4S, #6.0
              FMOV            V2.4S, #1.0
            }

            v123 = vdupq_n_s64(1uLL);
            v124 = v117 & 0xFFFFFFFFFFFFFFF8;
            v125 = v119;
            v126 = v119;
            v127 = v119;
            v7 = v145;
            do
            {
              v128 = vrndaq_f32(vmlaq_f32(_Q2, v120[-1], _Q1));
              v129 = vrndaq_f32(vmlaq_f32(_Q2, *v120, _Q1));
              v130 = vcvtq_u64_f64(vcvt_hight_f64_f32(v128));
              v131 = vcvtq_u64_f64(vcvt_hight_f64_f32(v129));
              v132 = vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v128.f32)), v123);
              v133 = vorrq_s8(v130, v123);
              v134 = vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v129.f32)), v123);
              v135 = vorrq_s8(v131, v123);
              v125 = vbslq_s8(vcgtq_u64(v125, v133), v125, v133);
              v119 = vbslq_s8(vcgtq_u64(v119, v132), v119, v132);
              v127 = vbslq_s8(vcgtq_u64(v127, v135), v127, v135);
              v126 = vbslq_s8(vcgtq_u64(v126, v134), v126, v134);
              v120 += 2;
              v124 -= 8;
            }

            while (v124);
            v136 = vbslq_s8(vcgtq_u64(v119, v126), v119, v126);
            v137 = vbslq_s8(vcgtq_u64(v125, v127), v125, v127);
            v138 = vbslq_s8(vcgtq_u64(v136, v137), v136, v137);
            v137.i64[0] = vextq_s8(v138, v138, 8uLL).u64[0];
            v31 = vbsl_s8(vcgtd_u64(v138.u64[0], v137.u64[0]), *v138.i8, *v137.i8);
            if (v117 != (v117 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_62:
              v139 = v144 - v118 + 3;
              v140 = &sigmas[v118];
              do
              {
                v141 = *v140++;
                v142 = vcvtas_u32_f32((v141 * 6.0) + 1.0) | 1;
                if (v31 <= v142)
                {
                  v31 = v142;
                }

                --v139;
              }

              while (v139);
            }
          }

          v7->_maxinumKernelWidth = v31;
          v7->super._checkFlags = 12;
          return v7;
        }
      }

      else
      {
        v34 = 1;
        v35 = ((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v53 = layersPerOctave - v34 + 3;
      v54 = &v9[v34];
      do
      {
        v55 = *v54++;
        v35 += ((vcvtas_u32_f32((v55 * 6.0) + 1.0) | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        --v53;
      }

      while (v53);
      goto LABEL_26;
    }

    v13 = v12;
    deviceCopy = device;
    v169 = sigma;
    v175 = v12;
    if (layersPerOctave <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = (layersPerOctave + 2) & 0xFFFFFFFFFFFFFFFELL;
      v14 = (layersPerOctave + 2) | 1;
      v16 = xmmword_2399888B0;
      v17 = (v9 + 1);
      v159 = vdupq_n_s64(2uLL);
      do
      {
        v172 = v16;
        v18.i64[0] = -1;
        v18.i64[1] = -1;
        v163 = vcvtq_f64_u64(vaddq_s64(v16, v18));
        v166 = pow(v13, v163.f64[0]);
        v19 = pow(v175, v163.f64[1]);
        v13 = v175;
        v20.f64[0] = v166;
        v20.f64[1] = v19;
        v21 = vmulq_n_f64(v20, v169);
        v22 = vmulq_n_f64(v21, v175);
        *v17++ = vcvt_f32_f64(vsqrtq_f64(vmlsq_f64(vmulq_f64(v22, v22), v21, v21)));
        v16 = vaddq_s64(v172, v159);
        v15 -= 2;
      }

      while (v15);
      v7 = v145;
      if (layersPerOctave + 2 == ((layersPerOctave + 2) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = 1;
    }

    v23 = layersPerOctave - v14 + 3;
    v24 = &v9[v14];
    v25 = v14 - 1;
    do
    {
      v26 = pow(v13, v25);
      v13 = v175;
      *&v26 = sqrt(-(v26 * v169 * (v26 * v169) - v175 * (v26 * v169) * (v175 * (v26 * v169))));
      *v24++ = *&v26;
      ++v25;
      --v23;
    }

    while (v23);
LABEL_12:
    sigma = v7->_sigma;
    device = deviceCopy;
    goto LABEL_13;
  }

  return v7;
}

- (void)dealloc
{
  free(self->_sigmas);

  v3.receiver = self;
  v3.super_class = MPSImageSIFT;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationGaussianPyramid:(id)pyramid destinationDOGPyramid:(id)gPyramid keypointsBuffer:(id)keypointsBuffer keypointBufferOffset:(unint64_t)offset keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)self0
{
  offsetCopy = offset;
  keypointsBufferCopy = keypointsBuffer;
  bufferCopy = buffer;
  v394 = *MEMORY[0x277D85DE8];
  *&v362 = *MEMORY[0x277CD7350];
  v14 = *(&self->super.super.super.isa + v362);
  v15 = objc_msgSend_pixelFormat(texture, a2, buffer);
  PixelInfo = MPSDevice::GetPixelInfo(v14, v15, MPSImageFeatureChannelFormatNone);
  v19 = objc_msgSend_width(texture, v17, v18);
  textureCopy = texture;
  v22 = objc_msgSend_height(texture, v20, v21);
  upscale = self->_upscale;
  v339 = v22;
  v340 = v19;
  v24 = v19 << upscale;
  gPyramidCopy = gPyramid;
  if (v24 >= v22 << upscale)
  {
    v24 = v22 << upscale;
  }

  v28 = vcvtas_u32_f32(log2f(v24) + -2.0);
  octaves = self->_octaves;
  if (octaves >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = self->_octaves;
  }

  v337 = 216;
  layersPerOctave = self->_layersPerOctave;
  if (octaves)
  {
    v28 = v30;
  }

  v354 = v28;
  v31 = *MEMORY[0x277CD7378];
  selfCopy = self;
  v363 = v31;
  if ((*(v31 + self) & 1) == 0)
  {
    if (upscale && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!bufferCopy && MTLReportFailureTypeEnabled())
    {
      v326 = objc_opt_class();
      NSStringFromClass(v326);
      MTLReportFailure();
    }

    if (!textureCopy && MTLReportFailureTypeEnabled())
    {
      v327 = objc_opt_class();
      NSStringFromClass(v327);
      MTLReportFailure();
    }

    objc_msgSend_textureType(textureCopy, v26, v27);
    if (objc_msgSend_textureType(textureCopy, v32, v33) != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((PixelInfo & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((selfCopy->super._checkFlags & 0x40) == 0 && (PixelInfo & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((selfCopy->super._checkFlags & 4) != 0 && (PixelInfo & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (keypointsBufferCopy)
    {
      objc_msgSend_length(keypointsBufferCopy, v26, v34);
      if (objc_msgSend_length(keypointsBufferCopy, v35, v36) < 36 * selfCopy->_maximumKeyPoints)
      {
        if (MTLReportFailureTypeEnabled())
        {
          objc_msgSend_length(keypointsBufferCopy, v26, v34);
          MTLReportFailure();
        }
      }
    }

    if (pyramid)
    {
      objc_msgSend_count(pyramid, v26, v34);
      if (objc_msgSend_count(pyramid, v37, v38) < v354)
      {
        if (MTLReportFailureTypeEnabled())
        {
          objc_msgSend_count(pyramid, v26, v34);
          MTLReportFailure();
        }
      }
    }

    if (gPyramid)
    {
      objc_msgSend_count(gPyramid, v26, v34);
      if (objc_msgSend_count(gPyramid, v39, v40) < v354)
      {
        if (MTLReportFailureTypeEnabled())
        {
          objc_msgSend_count(gPyramid, v26, v328);
          MTLReportFailure();
        }
      }
    }

    if (pyramid && v354)
    {
      v41 = 0;
      v43 = v339;
      v42 = v340;
      do
      {
        v44 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v26, v41);
        objc_msgSend_width(v44, v45, v46);
        v48 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v47, v41);
        if (objc_msgSend_width(v48, v49, v50) != v42 && MTLReportFailureTypeEnabled())
        {
          v67 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v51, v41);
          objc_msgSend_width(v67, v68, v69);
          MTLReportFailure();
        }

        v52 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v51, v41);
        objc_msgSend_height(v52, v53, v54);
        v56 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v55, v41);
        if (objc_msgSend_height(v56, v57, v58) != v43 && MTLReportFailureTypeEnabled())
        {
          v70 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v59, v41);
          objc_msgSend_height(v70, v71, v72);
          MTLReportFailure();
        }

        v60 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v59, v41);
        objc_msgSend_arrayLength(v60, v61, v62);
        v64 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v63, v41);
        if (objc_msgSend_arrayLength(v64, v65, v66) < *(&selfCopy->super.super.super.isa + v337) + 3 && MTLReportFailureTypeEnabled())
        {
          v73 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v26, v41);
          objc_msgSend_arrayLength(v73, v74, v75);
          MTLReportFailure();
        }

        v42 >>= 1;
        v43 >>= 1;
        ++v41;
      }

      while (v354 != v41);
    }

    if (gPyramidCopy && v354)
    {
      v76 = 0;
      v78 = v339;
      v77 = v340;
      do
      {
        v79 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v26, v76);
        objc_msgSend_width(v79, v80, v81);
        v83 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v82, v76);
        if (objc_msgSend_width(v83, v84, v85) != v77 && MTLReportFailureTypeEnabled())
        {
          v102 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v86, v76);
          objc_msgSend_width(v102, v103, v104);
          MTLReportFailure();
        }

        v87 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v86, v76);
        objc_msgSend_height(v87, v88, v89);
        v91 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v90, v76);
        if (objc_msgSend_height(v91, v92, v93) != v78 && MTLReportFailureTypeEnabled())
        {
          v105 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v94, v76);
          objc_msgSend_height(v105, v106, v107);
          MTLReportFailure();
        }

        v95 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v94, v76);
        objc_msgSend_arrayLength(v95, v96, v97);
        v99 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v98, v76);
        if (objc_msgSend_arrayLength(v99, v100, v101) < *(&selfCopy->super.super.super.isa + v337) + 2 && MTLReportFailureTypeEnabled())
        {
          v108 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v26, v76);
          objc_msgSend_arrayLength(v108, v109, v110);
          MTLReportFailure();
        }

        v77 >>= 1;
        v78 >>= 1;
        ++v76;
      }

      while (v354 != v76);
    }
  }

  v331 = 208;
  v111 = 4.0;
  if (!selfCopy->_upscale)
  {
    v111 = 1.0;
  }

  if (-(((selfCopy->_initialSigma * selfCopy->_initialSigma) * v111) - (selfCopy->_sigma * selfCopy->_sigma)) >= 0.01)
  {
    v112 = -(((selfCopy->_initialSigma * selfCopy->_initialSigma) * v111) - (selfCopy->_sigma * selfCopy->_sigma));
  }

  else
  {
    v112 = 0.01;
  }

  v113 = *(&selfCopy->super.super.super.isa + v362);
  if (pyramid)
  {
    v114 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v26, 0);
    v117 = objc_msgSend_pixelFormat(v114, v115, v116);
  }

  else
  {
    v117 = MTLPixelFormatR16Unorm;
  }

  v118 = v354;
  v382 = MPSDevice::GetPixelInfo(v113, v117, MPSImageFeatureChannelFormatNone);
  v120 = *(&selfCopy->super.super.super.isa + v362);
  bufferOffsetCopy = pyramid;
  if (gPyramidCopy)
  {
    v121 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v119, 0);
    v124 = objc_msgSend_pixelFormat(v121, v122, v123);
  }

  else
  {
    v124 = MTLPixelFormatR16Snorm;
  }

  v329[1] = v329;
  v381 = MPSDevice::GetPixelInfo(v120, v124, MPSImageFeatureChannelFormatNone);
  LODWORD(v359) = selfCopy->_useCompressedTexture & ((*(&selfCopy->super.super.super.isa + v362))[369] >> 19);
  v125 = MEMORY[0x28223BE20](v381);
  v127 = (v329 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0));
  v361 = v126;
  MEMORY[0x28223BE20](v125);
  v129 = (v329 - v128);
  v130 = gPyramidCopy;
  v360 = v127;
  v367 = v329 - v128;
  v131 = 0;
  if (v118)
  {
    TempBuffer = (layersPerOctave + 2);
    countBufferCopy = (layersPerOctave + 3);
    v132 = v118;
    v134 = v339;
    v133 = v340;
    v135 = v362;
    while (1)
    {
      if (bufferOffsetCopy)
      {
        *v127 = 0;
        if (!gPyramidCopy)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v136 = v135;
        v137 = selfCopy;
        v138 = *(&selfCopy->super.super.super.isa + v136);
        *&v369 = v133;
        *(&v369 + 1) = v134;
        *&v370 = countBufferCopy;
        *v127 = sub_2399696CC(v138, &v382, &v369, v359);
        v131 += (*(**(&v137->super.super.super.isa + v136) + 64))(*(&v137->super.super.super.isa + v136));
        v135 = v136;
        gPyramidCopy = v130;
        if (!v130)
        {
LABEL_71:
          v139 = v135;
          v140 = selfCopy;
          v141 = *(&selfCopy->super.super.super.isa + v139);
          *&v369 = v133;
          *(&v369 + 1) = v134;
          *&v370 = TempBuffer;
          *v129 = sub_2399696CC(v141, &v381, &v369, v359);
          v131 += (*(**(&v140->super.super.super.isa + v139) + 64))(*(&v140->super.super.super.isa + v139));
          v135 = v139;
          gPyramidCopy = v130;
          goto LABEL_66;
        }
      }

      *v129 = 0;
LABEL_66:
      v133 >>= 1;
      v134 >>= 1;
      ++v129;
      ++v127;
      if (!--v132)
      {
        goto LABEL_73;
      }
    }
  }

  v135 = v362;
LABEL_73:
  v142 = selfCopy;
  v380 = MPSDevice::GetPixelInfo(*(&selfCopy->super.super.super.isa + v135), MTLPixelFormatR16Unorm, MPSImageFeatureChannelFormatNone);
  v143 = *(&v142->super.super.super.isa + v135);
  *&v369 = v340;
  *(&v369 + 1) = v339;
  *&v370 = 1;
  v144 = sub_2399696CC(v143, &v380, &v369, v359);
  v336 = 320;
  v145 = *(&v142->super.super.super.isa + v135);
  if (v142->_maxinumKernelWidth > 0x1F || (v145[1477] & 8) == 0)
  {
    (*(*v145 + 64))(v145, v144);
  }

  v146 = bufferCopy;
  v147 = v354;
  v148 = v130;
  v149 = v363;

  v150 = objc_alloc(MEMORY[0x277CD7210]);
  v153 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v150, v151, v146, 0);
  v378 = v153;
  v379 = v142;
  v154 = v149[v142];
  v155 = bufferOffsetCopy;
  if ((v154 & 0x18) != 0)
  {
    v156 = *(&v142->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v156 || (v157 = objc_opt_class(), v158 = NSStringFromClass(v157), objc_msgSend_setLabel_(v142, v159, v158), (v156 = v158) != 0))
    {
      objc_msgSend_setLabel_(v153, v152, v156);
    }
  }

  MEMORY[0x23EE7BAC0](v377, bufferCopy, 0);
  v161 = v339;
  v160 = v340;
  v162 = MPSAutoCache::PrefetchHeapSize();
  v163 = MEMORY[0x28223BE20](v162);
  v348 = v329 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v163);
  v341 = v329 - v166;
  if (v147)
  {
    v167 = 0;
    v338 = layersPerOctave + 3;
    v168 = layersPerOctave + 2;
    v169 = sqrtf(v112);
    v170 = v360;
    do
    {
      *&v369 = v160;
      *(&v369 + 1) = v161;
      *&v370 = v338;
      if (v155)
      {
        CompressedTempTexture = objc_msgSend_objectAtIndexedSubscript_(v155, v165, v167);
      }

      else
      {
        CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
      }

      *&v348[8 * v167] = CompressedTempTexture;
      *&v370 = v168;
      if (v148)
      {
        v173 = objc_msgSend_objectAtIndexedSubscript_(v148, v172, v167);
      }

      else
      {
        v173 = MPSAutoCache::GetCompressedTempTexture();
      }

      *&v341[8 * v167] = v173;

      v160 >>= 1;
      v161 >>= 1;
      ++v167;
    }

    while (v354 != v167);
    v367 = 0;
    if (v359)
    {
      v176 = 0x1000000;
    }

    else
    {
      v176 = 0;
    }

    v357 = v176;
    if (v359)
    {
      v177 = 16;
    }

    else
    {
      v177 = 15;
    }

    v347 = v177 << 8;
    v178 = roundf((v169 * 6.0) + 1.0);
    v335 = v177;
    v334 = v177 - 1;
    v360 = (layersPerOctave + 3);
    v179 = textureCopy;
    v180 = selfCopy;
    v182 = v339;
    v181 = v340;
    while (1)
    {
      v374 = v181;
      v375 = v182;
      v376 = 1;
      if (*(&v180->super.super.super.isa + v336) > 0x1F || ((*(&v180->super.super.super.isa + v362))[1477] & 8) == 0)
      {
        v356 = MPSAutoCache::GetCompressedTempTexture();
        v339 = v182;
        v340 = v181;
        if (v338)
        {
          break;
        }

        goto LABEL_168;
      }

      v356 = 0;
      v339 = v182;
      v340 = v181;
      if (v338)
      {
        break;
      }

LABEL_168:
      MPSAutoCache::ReleaseTempResource();
      v181 = v340 >> 1;
      v182 = v339 >> 1;
      v179 = textureCopy;
      v147 = v354;
      if (++v367 == v354)
      {
        goto LABEL_171;
      }
    }

    v183 = 0;
    v184 = 0;
    v352 = &v348[8 * v367];
    countBufferCopy = *v352;
    if (v367)
    {
      v185 = 0;
    }

    else
    {
      v185 = v179;
    }

    v345 = *&v341[8 * v367];
    v346 = v185;
    v355 = v367 + 1;
    v186 = (v181 + 31) >> 5;
    if (v186 >= 2)
    {
      v186 = 2;
    }

    v342 = (v182 + 15) >> 4;
    v343 = 32 * v186;
    *&v175 = __PAIR64__(v182, v181);
    v358 = v175;
    v361 = v182 - 1;
    v349 = (v181 + 63) >> 6;
    v350 = (v334 + v181) / v335;
    v344 = (v181 + 32 * v186 - 1) / (32 * v186);
    while (1)
    {
      v187 = v178;
      if (v184 | v367)
      {
        v187 = roundf((v180->_sigmas[v184] * 6.0) + 1.0);
      }

      v188 = v187;
      v189 = v187 | 1;
      if (v367 && !v184)
      {
        goto LABEL_108;
      }

      if (objc_msgSend_textureType(countBufferCopy, v165, v174) != 3)
      {
        break;
      }

      v192 = objc_msgSend_pixelFormat(countBufferCopy, v190, v191);
      v363 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(countBufferCopy, v193, v192, 2, 0, 1, v184, 1);
      if (v184)
      {
        v194 = objc_msgSend_pixelFormat(countBufferCopy, v190, v191);
        TempBuffer = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(countBufferCopy, v195, v194, 2, 0, 1, v184 - 1, 1);
        v198 = objc_msgSend_pixelFormat(v345, v196, v197);
        bufferOffsetCopy = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v345, v199, v198, 2, 0, 1, v184 - 1, 1);
        goto LABEL_117;
      }

      bufferOffsetCopy = 0;
      TempBuffer = v346;
      v200 = 0;
      v201 = selfCopy;
      if (!layersPerOctave)
      {
LABEL_118:
        if (v355 != v354)
        {
          v200 = *&v348[8 * v355];
          if (objc_msgSend_textureType(v200, v190, v191) == 3)
          {
            v202 = objc_msgSend_pixelFormat(v200, v190, v191);
            v200 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v200, v203, v202, 2, 0, 1, 0, 1);
          }

          v201 = selfCopy;
        }
      }

LABEL_122:
      if (v188 <= 0x1F && ((*(&v201->super.super.super.isa + v362))[1477] & 8) != 0)
      {
        v233 = objc_msgSend_contents(v201->_weights, v190, v191);
        v234 = v362;
        memcpy(&v369, (v233 + 4 * v183), 4 * v189);
        Sampler = MPSDevice::GetSampler();
        v236 = (v344 + 40 * (*(&v201->super.super.super.isa + v234))[1480] - 1) / v344;
        if (v236 >= v342)
        {
          v236 = v342;
        }

        v237 = 16 * ((v361 + (16 * v236)) / (16 * v236));
        if (v237 >= 0x200)
        {
          v238 = 512;
        }

        else
        {
          v238 = v237;
        }

        *&v239 = -1;
        *(&v239 + 1) = -1;
        *&v387[48] = v239;
        *&v387[64] = v239;
        *&v387[24] = -1;
        *&v387[32] = v239;
        *v387 = v239;
        *&v387[16] = v238 | ((v200 != 0) << 20) | ((bufferOffsetCopy != 0) << 21) | v357 | (v189 << 25);
        ComputeState = MPSLibrary::GetComputeState();
        v388.i64[0] = 0;
        v388.i16[5] = WORD2(v358);
        v388.i16[4] = v358;
        v388.i32[3] = v189;
        v389 = __PAIR64__(v184, v367);
        v390 = 0u;
        v391 = 0u;
        v392 = 0u;
        v393 = 0;
        objc_msgSend_setComputePipelineState_(v153, v241, ComputeState);
        objc_msgSend_setTexture_atIndex_(v153, v242, TempBuffer, 0);
        objc_msgSend_setTexture_atIndex_(v153, v243, v363, 1);
        if (v200)
        {
          objc_msgSend_setTexture_atIndex_(v153, v244, v200, 2);
        }

        if (bufferOffsetCopy)
        {
          objc_msgSend_setTexture_atIndex_(v153, v244, bufferOffsetCopy, 3);
        }

        objc_msgSend_setBytes_length_atIndex_(v153, v244, &v388, 76, 0);
        objc_msgSend_setBytes_length_atIndex_(v153, v245, &v369, 128, 1);
        objc_msgSend_setSamplerState_atIndex_(v153, v246, Sampler, 0);
        if (v359)
        {
          objc_msgSend_setImageblockWidth_height_(v153, v247, v343, 16);
        }

        *&v385 = v344;
        *(&v385 + 1) = (v361 + v238) / v238;
        v386 = 1;
        v383 = v343;
        v384 = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v153, v247, &v385, &v383);
      }

      else
      {
        v204 = MPSDevice::GetSampler();
        *&v205 = -1;
        *(&v205 + 1) = -1;
        v372 = v205;
        v373 = v205;
        v370 = v205;
        v371 = v205;
        v369 = v205;
        if (v189 >= 8)
        {
          v206 = 8;
        }

        else
        {
          v206 = v189;
        }

        v207 = v189 % v206;
        if (v189 % v206 > 3)
        {
          v207 = v189 % v206 - 4;
        }

        if (v207 <= 1)
        {
          v208 = 4 * (v189 % v206 > 3);
        }

        else
        {
          v208 = (4 * (v189 % v206 > 3)) | 2;
        }

        if (v207 > 1)
        {
          v207 -= 2;
        }

        if (v207)
        {
          v209 = v208 + 1;
        }

        else
        {
          v209 = v208;
        }

        *&v370 = v347 | (v209 << 16) | v357 | v206 | 0x80000;
        v210 = MPSLibrary::GetComputeState();
        *v387 = 0;
        *&v387[10] = WORD2(v358);
        *&v387[8] = v358;
        *&v387[12] = v189;
        *&v387[16] = __PAIR64__(v184, v367);
        memset(&v387[24], 0, 52);
        objc_msgSend_setComputePipelineState_(v153, v211, v210);
        objc_msgSend_setTexture_atIndex_(v153, v212, TempBuffer, 0);
        objc_msgSend_setTexture_atIndex_(v153, v213, v356, 1);
        objc_msgSend_setBytes_length_atIndex_(v153, v214, v387, 76, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v153, v215, selfCopy->_weights, 4 * v183, 1);
        objc_msgSend_setSamplerState_atIndex_(v153, v216, v204, 0);
        if (v359)
        {
          objc_msgSend_setImageblockWidth_height_(v153, v217, 16, 64);
          v218 = 64;
          v219 = 6;
        }

        else
        {
          v218 = 128;
          v219 = 7;
        }

        v388.i64[0] = v350;
        v388.i64[1] = (v218 + v361) >> v219;
        v389 = 1;
        *&v385 = 1;
        *(&v385 + 1) = v218;
        v386 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v153, v217, &v388, &v385);
        v153 = v378;
        v220 = MPSDevice::GetSampler();
        *&v221 = -1;
        *(&v221 + 1) = -1;
        v372 = v221;
        v373 = v221;
        *(&v370 + 1) = -1;
        v371 = v221;
        v369 = v221;
        *&v370 = v357 | ((v209 | (16 * (v200 != 0)) | (32 * (bufferOffsetCopy != 0))) << 16) | v206 | 0x1000;
        v222 = MPSLibrary::GetComputeState();
        *v387 = 0;
        *&v387[10] = WORD2(v358);
        *&v387[8] = v358;
        *&v387[12] = v189;
        *&v387[16] = __PAIR64__(v184, v367);
        memset(&v387[24], 0, 52);
        objc_msgSend_setComputePipelineState_(v153, v223, v222);
        objc_msgSend_setTexture_atIndex_(v153, v224, v356, 0);
        objc_msgSend_setTexture_atIndex_(v153, v225, v363, 1);
        if (v200)
        {
          objc_msgSend_setTexture_atIndex_(v153, v226, v200, 2);
        }

        if (bufferOffsetCopy)
        {
          objc_msgSend_setTexture_atIndex_(v153, v226, TempBuffer, 3);
          objc_msgSend_setTexture_atIndex_(v153, v227, bufferOffsetCopy, 4);
        }

        objc_msgSend_setBytes_length_atIndex_(v153, v226, v387, 76, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v153, v228, selfCopy->_weights, 4 * v183, 1);
        objc_msgSend_setSamplerState_atIndex_(v153, v229, v220, 0);
        if (v359)
        {
          objc_msgSend_setImageblockWidth_height_(v153, v230, 64, 16);
          v231 = 0;
          v232 = 1;
        }

        else
        {
          v231 = 2;
          v232 = 4;
        }

        v388.i64[0] = v349;
        v388.i64[1] = (v361 + (16 << v231)) >> (v231 | 4u);
        v389 = 1;
        *&v385 = 64;
        *(&v385 + 1) = v232;
        v386 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v153, v230, &v388, &v385);
      }

      if (v363 != countBufferCopy)
      {
      }

      if (TempBuffer != textureCopy)
      {
      }

      if (v200 != v352[1])
      {
      }

LABEL_108:
      v183 += (v189 + 7) & 0xFFFFFFFFFFFFFFF8;
      ++v184;
      v180 = selfCopy;
      if (v360 == v184)
      {
        goto LABEL_168;
      }
    }

    bufferOffsetCopy = 0;
    v363 = countBufferCopy;
    TempBuffer = v346;
LABEL_117:
    v200 = 0;
    v201 = selfCopy;
    if (layersPerOctave == v184)
    {
      goto LABEL_118;
    }

    goto LABEL_122;
  }

  v180 = selfCopy;
LABEL_171:
  *&v248 = -1;
  *(&v248 + 1) = -1;
  v372 = v248;
  v373 = v248;
  v370 = v248;
  v371 = v248;
  v369 = v248;
  *&v370 = *(&v180->super.super.super.isa + v337);
  v359 = MPSLibrary::GetComputeState();
  v367 = 312;
  if (v180->_fusedKeypointOrientation)
  {
    v360 = MPSLibrary::GetComputeState();
    v361 = 0;
    *&v358 = 0;
  }

  else
  {
    v361 = MPSLibrary::GetComputeState();
    *&v358 = MPSLibrary::GetComputeState();
    v360 = 0;
  }

  v363 = MPSDevice::GetSampler();
  TempBuffer = MPSAutoCache::GetTempBuffer(v377, 16, 0);
  LODWORD(v383) = 0;
  objc_msgSend_setComputePipelineState_(v153, v249, v359);
  v250 = keypointsBufferCopy;
  v251 = v378;
  countBufferCopy = countBuffer;
  bufferOffsetCopy = bufferOffset;
  objc_msgSend_setBuffer_offset_atIndex_(v378, v252, countBuffer);
  objc_msgSend_setBuffer_offset_atIndex_(v251, v253, TempBuffer, 0, 1);
  LODWORD(v383) = 0;
  objc_msgSend_setBytes_length_atIndex_(v251, v254, &v383, 4, 2);
  *v387 = vdupq_n_s64(1uLL);
  *&v387[16] = 1;
  v388 = *v387;
  v389 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v251, v255, v387, &v388);
  if (v147)
  {
    v258 = 0;
    v362 = xmmword_239988E10;
    do
    {
      v259 = *&v348[8 * v258];
      v260 = *&v341[8 * v258];
      v261 = objc_msgSend_width(v260, v256, v257);
      if (v261 > 2 * selfCopy->_imageBoundary)
      {
        v262 = objc_msgSend_height(v260, v256, v257);
        if (v262 > 2 * selfCopy->_imageBoundary)
        {
          if ((*(&selfCopy->super.super.super.isa + v367) & 1) == 0)
          {
            objc_msgSend_setComputePipelineState_(v251, v256, v359);
            v251 = v378;
            objc_msgSend_setBuffer_offset_atIndex_(v378, v263, countBufferCopy, bufferOffsetCopy, 0);
            objc_msgSend_setBuffer_offset_atIndex_(v251, v264, TempBuffer, 0, 1);
            LODWORD(v383) = 1;
            objc_msgSend_setBytes_length_atIndex_(v251, v265, &v383, 4, 2);
            *v387 = vdupq_n_s64(1uLL);
            *&v387[16] = 1;
            v388 = *v387;
            v389 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v251, v266, v387, &v388);
          }

          contrastThreshold = selfCopy->_contrastThreshold;
          v268 = *(&selfCopy->super.super.super.isa + v337);
          memset(v387, 0, 76);
          v269 = objc_msgSend_width(v260, v256, v257);
          v272 = objc_msgSend_height(v260, v270, v271);
          *&v274 = contrastThreshold / v268 * 0.996108949;
          *&v387[10] = v272;
          *&v387[8] = v269;
          *&v387[16] = v258;
          *&v387[24] = selfCopy->_imageBoundary;
          v275 = *(&selfCopy->super.super.super.isa + v337);
          *&v387[26] = v275;
          *&v276 = selfCopy->_edgeThreshold;
          *&v387[28] = 1.0 / v275;
          *&v387[32] = __PAIR64__(v276, v274);
          *&v387[40] = *(&selfCopy->super.super.super.isa + v331);
          orientationRadius = selfCopy->_orientationRadius;
          orientationWeight = selfCopy->_orientationWeight;
          orientationBins = selfCopy->_orientationBins;
          *&v387[44] = orientationBins;
          *&v387[48] = __PAIR64__(LODWORD(orientationWeight), LODWORD(orientationRadius));
          *&v387[56] = selfCopy->_orientationThreshold;
          *&v387[60] = selfCopy->_maximumKeyPoints;
          *&v387[64] = orientationBins / 6.2832;
          *&v387[68] = 360.0 / orientationBins;
          *&v387[72] = (1 << (v258 + 1));
          if (*(&selfCopy->super.super.super.isa + v367))
          {
            objc_msgSend_setComputePipelineState_(v251, v273, v360);
          }

          else
          {
            objc_msgSend_setComputePipelineState_(v251, v273, v361);
          }

          v251 = v378;
          objc_msgSend_setTexture_atIndex_(v378, v280, v260, 0);
          objc_msgSend_setTexture_atIndex_(v251, v281, v259, 1);
          objc_msgSend_setBytes_length_atIndex_(v251, v282, v387, 76, 0);
          objc_msgSend_setBuffer_offset_atIndex_(v251, v283, v250, offsetCopy, 1);
          objc_msgSend_setBuffer_offset_atIndex_(v251, v284, countBufferCopy, bufferOffsetCopy, 2);
          if (*(&selfCopy->super.super.super.isa + v367) == 1)
          {
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v251, v285, 8 * selfCopy->_orientationBins, 0);
          }

          objc_msgSend_setSamplerState_atIndex_(v251, v285, v363, 0);
          v288 = objc_msgSend_width(v260, v286, v287);
          imageBoundary = selfCopy->_imageBoundary;
          v292 = objc_msgSend_height(v260, v290, v291);
          v293 = (v292 - 2 * selfCopy->_imageBoundary + 1) >> 1;
          v388.i64[0] = (v288 - 2 * imageBoundary + 61) / 0x3E;
          v388.i64[1] = v293;
          v389 = 1;
          v385 = v362;
          v386 = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v251, v294, &v388, &v385);
          if ((*(&selfCopy->super.super.super.isa + v367) & 1) == 0)
          {
            objc_msgSend_setComputePipelineState_(v251, v256, v359);
            objc_msgSend_setBuffer_offset_atIndex_(v251, v295, countBufferCopy, bufferOffsetCopy, 0);
            objc_msgSend_setBuffer_offset_atIndex_(v251, v296, TempBuffer, 0, 1);
            LODWORD(v383) = 2;
            objc_msgSend_setBytes_length_atIndex_(v251, v297, &v383, 4, 2);
            v388 = vdupq_n_s64(1uLL);
            v389 = 1;
            v385 = v388;
            v386 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v251, v298, &v388, &v385);
            objc_msgSend_setComputePipelineState_(v251, v299, v358);
            objc_msgSend_setTexture_atIndex_(v251, v300, v259, 0);
            objc_msgSend_setBytes_length_atIndex_(v251, v301, v387, 76, 0);
            objc_msgSend_setBuffer_offset_atIndex_(v251, v302, keypointsBufferCopy, offsetCopy, 1);
            objc_msgSend_setBuffer_offset_atIndex_(v251, v303, countBufferCopy, bufferOffsetCopy, 2);
            objc_msgSend_setBuffer_offset_atIndex_(v251, v304, TempBuffer, 0, 3);
            objc_msgSend_setSamplerState_atIndex_(v251, v305, v363, 0);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v251, v306, 8 * selfCopy->_orientationBins, 0);
            v388 = v362;
            v389 = 1;
            objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v251, v307, TempBuffer, 4, &v388);
          }

          v250 = keypointsBufferCopy;
        }
      }

      ++v258;
    }

    while (v354 != v258);
  }

  v308 = textureCopy;
  if (textureCopy)
  {
    v309 = objc_msgSend_userDictionary(bufferCopy, v256, v257);
    v311 = objc_msgSend_objectForKey_(v309, v310, @"_MPSCommandBufferRetainListKey");
    if (!v311)
    {
      v313 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v309, v314, v313, @"_MPSCommandBufferRetainListKey");

      *v387 = MEMORY[0x277D85DD0];
      *&v387[8] = 3221225472;
      *&v387[16] = sub_23993DA2C;
      *&v387[24] = &unk_278AC37A8;
      *&v387[32] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(bufferCopy, v315, v387);
      v311 = v313;
    }

    objc_msgSend_addObject_(v311, v312, v308);
  }

  if (v250)
  {
    v316 = bufferCopy;
    v317 = objc_msgSend_userDictionary(bufferCopy, v256, v257);
    v319 = objc_msgSend_objectForKey_(v317, v318, @"_MPSCommandBufferRetainListKey");
    if (!v319)
    {
      v321 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v317, v322, v321, @"_MPSCommandBufferRetainListKey");

      *v387 = MEMORY[0x277D85DD0];
      *&v387[8] = 3221225472;
      *&v387[16] = sub_23993DA2C;
      *&v387[24] = &unk_278AC37A8;
      *&v387[32] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v316, v323, v387);
      v319 = v321;
    }

    objc_msgSend_addObject_(v319, v320, v250);
  }

  MPSAutoCache::~MPSAutoCache(v377);
  objc_msgSend_endEncoding(v251, v324, v325);
}

@end