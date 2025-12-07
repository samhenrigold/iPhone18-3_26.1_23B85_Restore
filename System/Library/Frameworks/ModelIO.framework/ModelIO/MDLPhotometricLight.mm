@interface MDLPhotometricLight
- (CGColor)evaluatedColorFromSHVector:(MDLPhotometricLight *)self;
- (MDLPhotometricLight)initWithIESProfile:(NSURL *)URL;
- (MDLTexture)generateTexture:(NSUInteger)textureSize;
- (float)computeInnerAngle;
- (void)computeLumens;
- (void)generateCubemapFromLight:(NSUInteger)textureSize;
- (void)generateSphericalHarmonicsFromLight:(NSUInteger)sphericalHarmonicsLevel;
- (void)setSphericalHarmonicsCoefficients:(id)coefficients;
@end

@implementation MDLPhotometricLight

- (void)setSphericalHarmonicsCoefficients:(id)coefficients
{
  coefficientsCopy = coefficients;
  v14 = objc_msgSend_dataWithData_(MEMORY[0x277CBEB28], v4, coefficientsCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  sphericalHarmonicsCoefficients = self->_sphericalHarmonicsCoefficients;
  self->_sphericalHarmonicsCoefficients = v14;
}

- (MDLPhotometricLight)initWithIESProfile:(NSURL *)URL
{
  v4 = URL;
  v66.receiver = self;
  v66.super_class = MDLPhotometricLight;
  v5 = [(MDLPhysicallyPlausibleLight *)&v66 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    sphericalHarmonicsCoefficients = v5->_sphericalHarmonicsCoefficients;
    v5->_sphericalHarmonicsCoefficients = v6;

    objc_msgSend_setLightType_(v5, v8, 9, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    v28 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x277CBEA90], v18, v4, v19, v24, v25, v26, v27, v20, v21, v22, v23);
    v29 = v28;
    if (v28)
    {
      v30 = v28;
      v42 = objc_msgSend_bytes(v30, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
      v54 = objc_msgSend_length(v29, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
      v55 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      *v60 = 0u;
      memset(__dst, 0, sizeof(__dst));
      if (v54 != -1)
      {
        sub_239E7967C(__dst, v54 + 1);
        v55 = __dst[0];
      }

      memcpy(v55, v42, v54);
      *(__dst[0] + v54) = 0;
      sub_239EBB5EC(__dst[0], __dst[0] + v54, v60);
      light = v5->super.super._light;
      if (light)
      {
        (*(light->var0 + 1))(light);
      }

      operator new();
    }

    NSLog(&cfstr_UrlProvidedFor.isa);
    v57 = v5;
  }

  return v5;
}

- (void)generateCubemapFromLight:(NSUInteger)textureSize
{
  v5 = 6 * textureSize;
  v6 = objc_alloc(MEMORY[0x277CBEB28]);
  v65 = v5;
  v66 = objc_msgSend_initWithLength_(v6, v7, (4 * textureSize * v5), v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v28 = objc_msgSend_bytes(v66, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  if (self->_iesLight)
  {
    v30 = 5;
    v67 = vdupq_n_s32(0x437F0000u);
    v31 = xmmword_239F9C280;
    do
    {
      v32 = v30;
      if (textureSize >= 1)
      {
        v33 = 0;
        do
        {
          v34 = 0;
          v35 = v28;
          do
          {
            v29 = 1.0 / textureSize;
            v31.f32[0] = v29;
            *v36.i64 = sub_239EE9354(v34, v33, v32, v31);
            v68 = v36;
            iesLight = self->_iesLight;
            v38 = iesLight[2];
            objc_msgSend_translation(v38, v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
            v51 = (*(*iesLight + 2))(iesLight, vaddq_f32(v50, v68));

            Components = CGColorGetComponents(v51);
            v53 = *Components;
            *v53.f32 = vcvt_f32_f64(*Components);
            v54 = Components[1].f64[0];
            v53.f32[2] = v54;
            v55 = vmulq_f32(v53, v67);
            v55.i32[3] = 0;
            v56 = vmaxnmq_f32(v55, 0);
            v56.i32[3] = 0;
            v31 = vminnmq_f32(v56, xmmword_239F9C280);
            *v35 = v31.f32[0];
            v35[1] = v31.f32[1];
            v35[2] = v31.f32[2];
            v28 = (v35 + 4);
            v35[3] = -1;
            ++v34;
            v35 += 4;
          }

          while (textureSize != v34);
          ++v33;
        }

        while (v33 != textureSize);
      }

      v30 = v32 - 1;
    }

    while (v32);
  }

  v57 = [MDLTexture alloc];
  v58.n128_u64[0] = __PAIR64__(v65, textureSize);
  isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v57, v59, v66, 0, v58, v60, v61, v62, 0, 4 * textureSize, 4, 1, 1);
  lightCubeMap = self->_lightCubeMap;
  self->_lightCubeMap = isCube;
}

- (void)computeLumens
{
  if (self->_iesLight)
  {
    v13 = 5;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        for (i = 0; i != 128; ++i)
        {
          v8.n128_u64[0] = 0x3C0000003C000000;
          v19.n128_f64[0] = sub_239EE9354(i, v16, v17, v8);
          v44 = v19;
          iesLight = self->_iesLight;
          v21 = iesLight[2];
          objc_msgSend_translation(v21, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
          v43 = *(self->_iesLight + 34) * sub_239EEA45C(iesLight, vaddq_f32(v33, v44), v34, v35, v36, v37, v38, v39, v40, v44, v41, v42);

          v8.n128_f32[0] = sub_239EE9458(i, v16, 128);
          v14 = v14 + (v43 * v8.n128_f32[0]);
          v15 = v8.n128_f32[0] + v15;
        }

        ++v16;
      }

      while (v16 != 128);
      v13 = v17 - 1;
    }

    while (v17);
    v10.n128_u64[0] = 0x402921FB54442D18;
    v9.n128_f64[0] = v14 * 12.5663706;
    v8.n128_f64[0] = v9.n128_f64[0] / v15;
    v8.n128_f32[0] = v8.n128_f64[0];
  }

  else
  {
    v8.n128_u32[0] = 2143289344;
  }

  objc_msgSend_setLumens_(self, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
}

- (float)computeInnerAngle
{
  iesLight = self->_iesLight;
  v4 = *(iesLight + 11);
  v3 = *(iesLight + 12);
  v5 = v3 - v4;
  if (v3 == v4)
  {
    return -1.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = v5 >> 2;
  v10 = *(iesLight + 8);
  v9 = *(iesLight + 9);
  v11 = (v9 - v10) >> 2;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  result = -1.0;
  do
  {
    if (v9 != v10)
    {
      v13 = (*(iesLight + 14) + v6);
      v14 = v11;
      v15 = *(iesLight + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        v18 = *v13++;
        v19 = iesLight[35] * v18;
        if (result < v17 && v19 > 0.0)
        {
          result = v17;
        }

        --v14;
      }

      while (v14);
    }

    ++v7;
    v6 += v9 - v10;
  }

  while (v7 != v8);
  return result;
}

- (MDLTexture)generateTexture:(NSUInteger)textureSize
{
  objc_msgSend_innerConeAngle(self, a2, textureSize, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  iesLight = self->_iesLight;
  if (iesLight)
  {
    v16 = v14;
    v17 = iesLight[2];
    objc_msgSend_translation(v17, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v211 = v29;
    v29.n128_u64[0] = 0;
    objc_msgSend_rotationMatrixAtTime_(v17, v30, v31, v32, v29, v37, v38, v39, v33, v34, v35, v36);
    v201 = v40;
    v203 = v41;
    v205 = v42;
    v208 = v43;
    v40.n128_u64[0] = 0;
    objc_msgSend_rotationMatrixAtTime_(v17, v44, v45, v46, v40, v41, v42, v43, v47, v48, v49, v50);
    v212 = v60;
    v60.n128_u32[0] = 1127481344;
    if (*(self->_iesLight + 12) - *(self->_iesLight + 11) == 4 && v16 < 180.0)
    {
      v198 = v58;
      v199 = v59;
      v200 = v57;
      v142 = objc_alloc(MEMORY[0x277CBEB28]);
      v73 = objc_msgSend_initWithLength_(v142, v143, textureSize, v144, v149, v150, v151, v152, v145, v146, v147, v148);
      v153 = v73;
      v165 = objc_msgSend_bytes(v153, v154, v155, v156, v161, v162, v163, v164, v157, v158, v159, v160);
      if (textureSize >= 1)
      {
        v166 = v165;
        v167 = 0;
        __asm { FMOV            V1.4S, #-1.0 }

        v210 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v201, 0), 0, v203), _Q1, v205), 0, v208);
        v172 = vmulq_f32(v210, v210);
        *&v173 = vaddv_f32(*v172.f32) + v172.f32[2];
        *v172.f32 = vrsqrte_f32(v173);
        *v172.f32 = vmul_f32(vrsqrts_f32(v173, vmul_f32(*v172.f32, *v172.f32)), *v172.f32);
        v202 = vdupq_n_s32(0x437F0000u);
        v214 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v212, 0, v200), 0, v198), 0, v199);
        v174 = vmulq_f32(v214, v214);
        *&v175 = vaddv_f32(*v174.f32) + v174.f32[2];
        *v174.f32 = vmul_f32(*v172.f32, vrsqrts_f32(v173, vmul_f32(*v172.f32, *v172.f32)));
        v207 = v174;
        *v174.f32 = vrsqrte_f32(v175);
        *v174.f32 = vmul_f32(vrsqrts_f32(v175, vmul_f32(*v174.f32, *v174.f32)), *v174.f32);
        *v174.f32 = vmul_f32(*v174.f32, vrsqrts_f32(v175, vmul_f32(*v174.f32, *v174.f32)));
        v204 = v174;
        v176 = v16 * 0.017453;
        do
        {
          v177 = self->_iesLight;
          v180 = __sincosf_stret((v176 * v167) * (1.0 / (textureSize - 1)));
          v179.f32[0] = v180.__cosval;
          v178.f32[0] = v180.__sinval;
          v181 = vmlaq_n_f32(vmulq_n_f32(v214, vmulq_f32(v178, v204).f32[0]), v210, vmulq_f32(v179, v207).f32[0]);
          v182 = vmulq_f32(v181, v181);
          v179.f32[0] = vaddv_f32(*v182.f32) + v182.f32[2];
          *v182.f32 = vrsqrte_f32(v179.u32[0]);
          *v182.f32 = vmul_f32(vrsqrts_f32(v179.u32[0], vmul_f32(*v182.f32, *v182.f32)), *v182.f32);
          v183 = (*(*v177 + 16))(v177, vmlaq_n_f32(v211, v181, vmul_f32(*v182.f32, vrsqrts_f32(v179.u32[0], vmul_f32(*v182.f32, *v182.f32))).f32[0]));
          Components = CGColorGetComponents(v183);
          v185 = *Components;
          *v185.f32 = vcvt_f32_f64(*Components);
          v186 = Components[1].f64[0];
          v185.f32[2] = v186;
          v187 = vmulq_f32(v185, v202);
          v187.i32[3] = 0;
          v188 = vmaxnmq_f32(v187, 0);
          v188.i32[3] = 0;
          *(v166 + v167++) = vminnmq_f32(v188, xmmword_239F9C280).f32[0];
        }

        while (textureSize != v167);
      }

      v189 = [MDLTexture alloc];
      v190.n128_u64[0] = textureSize | 0x100000000;
      isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v189, v191, v73, 0, v190, v192, v193, v194, 0, textureSize, 1, 1, 0);
      goto LABEL_26;
    }

    v57.n128_u32[0] = 1118961664;
    if (v16 < 89.0)
    {
      v62 = objc_alloc(MEMORY[0x277CBEB28]);
      v73 = objc_msgSend_initWithLength_(v62, v63, textureSize * textureSize, v64, v69, v70, v71, v72, v65, v66, v67, v68);
      v74 = v73;
      v86 = objc_msgSend_bytes(v74, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
      if (textureSize >= 1)
      {
        v89 = v86;
        v90 = 0;
        v206 = vdupq_n_s32(0x437F0000u);
        v209 = v16 * 0.017453;
        v91 = 1.0 / textureSize;
        do
        {
          v92 = 0;
          v93 = (2 * v90) * v91 + -1.0;
          v94 = v93 * v93;
          v95 = v93;
          v96 = textureSize;
          do
          {
            *v87.i64 = v92 * v91 + -1.0;
            *v87.i32 = *v87.i64;
            v213 = v87;
            v97 = sqrtf(v94 + (*v87.i32 * *v87.i32));
            *v87.i64 = v97;
            if (v97 < 0.01)
            {
              *v87.i64 = 0.01;
            }

            *v87.i64 = v95 / *v87.i64;
            *v87.i32 = *v87.i64;
            v98 = fabsf(*v87.i32);
            v88.i32[0] = 1.0;
            v99.i64[0] = 0x8000000080000000;
            v99.i64[1] = 0x8000000080000000;
            LODWORD(v100) = vbslq_s8(v99, v88, v87).u32[0];
            if (*v87.i32 == 0.0)
            {
              v100 = 0.0;
            }

            if (v98 > 1.0)
            {
              *v87.i32 = v100;
            }

            v101 = v209 * v97;
            v102 = acosf(*v87.i32);
            v103.i64[0] = 0x8000000080000000;
            v103.i64[1] = 0x8000000080000000;
            v104.i32[0] = 1.0;
            LODWORD(v105) = vbslq_s8(v103, v104, v213).u32[0];
            if (*v213.i32 == 0.0)
            {
              v105 = 0.0;
            }

            v106 = v102 * v105;
            v107 = __sincosf_stret(v101);
            v108 = __sincosf_stret(v106);
            v109.f32[0] = v108.__sinval * v107.__sinval;
            v109.f32[1] = v108.__cosval * v107.__sinval;
            v109.f32[2] = -v107.__cosval;
            v110 = vmulq_f32(v109, v109);
            *&v111 = vaddv_f32(*v110.f32) + v110.f32[2];
            *v110.f32 = vrsqrte_f32(v111);
            *v110.f32 = vmul_f32(vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32)), *v110.f32);
            v112 = (*(*self->_iesLight + 16))(self->_iesLight, vmlaq_n_f32(v211, v109, vmul_f32(*v110.f32, vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32))).f32[0]));
            v113 = CGColorGetComponents(v112);
            v114 = *v113;
            *v114.f32 = vcvt_f32_f64(*v113);
            v115 = v113[1].f64[0];
            v114.f32[2] = v115;
            v116 = vmulq_f32(v114, v206);
            v116.i32[3] = 0;
            v117 = vmaxnmq_f32(v116, 0);
            v117.i32[3] = 0;
            v87 = vminnmq_f32(v117, xmmword_239F9C280);
            *v89++ = *v87.i32;
            v92 += 2;
            --v96;
          }

          while (v96);
          ++v90;
        }

        while (v90 != textureSize);
      }

      v118 = [MDLTexture alloc];
      v119.n128_u64[0] = vdup_n_s32(textureSize);
      isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v118, v120, v73, 0, v119, v121, v122, v123, 0, textureSize, 1, 1, 0);
LABEL_26:
      v195 = isCube;

      goto LABEL_31;
    }

    lightCubeMap = self->_lightCubeMap;
    if (!lightCubeMap)
    {
      objc_msgSend_generateCubemapFromLight_(self, v51, textureSize, v52, v57, v60, v58, v59, v53, v54, v55, v56);
      lightCubeMap = self->_lightCubeMap;
    }

    v141 = lightCubeMap;
  }

  else
  {
    NSLog(&cfstr_IeslightNotPro.isa);
    v215 = 0;
    v125 = [MDLTexture alloc];
    v126 = objc_alloc(MEMORY[0x277CBEA90]);
    v17 = objc_msgSend_initWithBytes_length_(v126, v127, &v215, 1, v132, v133, v134, v135, v128, v129, v130, v131);
    v136.n128_u64[0] = 0x100000001;
    v141 = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v125, v137, v17, 0, v136, v138, v139, v140, 0, 1, 1, 1, 0);
  }

  v195 = v141;
LABEL_31:

  return v195;
}

- (void)generateSphericalHarmonicsFromLight:(NSUInteger)sphericalHarmonicsLevel
{
  if (sphericalHarmonicsLevel >= 4)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v113 = NSStringFromClass(v16);
    v17 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v15, v18, @"ModelIOException", @"[%@ %@]: Spherical harmonics levels beyond 3 are not supported", v23, v24, v25, v26, v19, v20, v21, v22, v113, v17);
  }

  objc_msgSend_dimensions(self->_lightCubeMap, a2, sphericalHarmonicsLevel, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v115 = v27;
  v38 = objc_msgSend_texelDataWithBottomLeftOrigin(self->_lightCubeMap, v28, v29, v30, v27, v35, v36, v37, v31, v32, v33, v34);
  if (!self->_iesLight)
  {
    v114 = v38;
    v49 = (sphericalHarmonicsLevel + 1) * (sphericalHarmonicsLevel + 1);
    objc_msgSend_setLength_(self->_sphericalHarmonicsCoefficients, v39, 12 * v49, v40, v45, v46, v47, v48, v41, v42, v43, v44);
    v61 = objc_msgSend_mutableBytes(self->_sphericalHarmonicsCoefficients, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
    v73 = objc_msgSend_length(self->_sphericalHarmonicsCoefficients, v62, v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
    v112 = v61;
    bzero(v61, v73);
    self->_sphericalHarmonicsLevel = sphericalHarmonicsLevel;
    v74 = malloc_type_calloc(v49, 4uLL, 0x100004052888210uLL);
    v75 = 0;
    v77.i64[1] = v115.n128_i64[1];
    v76 = v115.n128_u32[0];
    *v77.i64 = 1.0 / v115.n128_i32[0];
    v78 = *v77.i64;
    v79 = 2 * v49;
    v80 = 0.0;
    do
    {
      if (v76 >= 1)
      {
        for (i = 0; i != v76; ++i)
        {
          for (j = 0; j != v76; ++j)
          {
            v77.f32[0] = v78;
            v83.n128_f64[0] = sub_239EE9354(i, j, v75, v77);
            v116 = v83;
            v84 = sub_239EE9458(i, j, v76);
            v85 = v114;
            v97 = objc_msgSend_bytes(v85, v86, v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
            if (sphericalHarmonicsLevel > 1)
            {
              if (sphericalHarmonicsLevel == 2)
              {
                *v77.f32 = sub_239EE90DC(v74, v116);
              }

              else if (sphericalHarmonicsLevel == 3)
              {
                *v77.f32 = sub_239EE91A4(v74, v116);
              }
            }

            else if (sphericalHarmonicsLevel)
            {
              if (sphericalHarmonicsLevel == 1)
              {
                sub_239EE9094(v74, v116);
              }
            }

            else
            {
              sub_239EE9084(v74);
            }

            if (v49 >= 1)
            {
              v99 = v112;
              v100 = (v97 + 4 * v76 * v76 * (5 - v75) + (4 * (i + j * v76)));
              *v77.i64 = v84 * 0.00392156863;
              v101 = v49 & 0x7FFFFFFD;
              v102 = v74;
              do
              {
                LOBYTE(v98) = *v100;
                *&v103 = *&v98;
                v104 = *v99 + *v77.i64 * *v102 * *&v103;
                *v99 = v104;
                LOBYTE(v103) = v100[1];
                *&v105 = v103;
                v106 = v99[v49] + *v77.i64 * *v102 * *&v105;
                v99[v49] = v106;
                v107 = *v102++;
                LOBYTE(v105) = v100[2];
                v98 = v105;
                v108 = v99[v79] + *v77.i64 * v107 * v98;
                v99[v79] = v108;
                ++v99;
                --v101;
              }

              while (v101);
            }

            v80 = v84 + v80;
          }
        }
      }

      ++v75;
    }

    while (v75 != 6);
    v109 = v112;
    if (v49 >= 1)
    {
      LODWORD(v111) = 3 * v49;
      if (3 * v49 <= 1)
      {
        v111 = 1;
      }

      else
      {
        v111 = v111;
      }

      do
      {
        v110 = 12.5663706 / v80;
        *v109 = *v109 * v110;
        ++v109;
        --v111;
      }

      while (v111);
    }

    free(v74);
    v38 = v114;
  }
}

- (CGColor)evaluatedColorFromSHVector:(MDLPhotometricLight *)self
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = vmulq_f32(v2, v2);
  *&v5 = vaddv_f32(*v4.f32) + v4.f32[2];
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)), *v4.f32);
  v30 = vmulq_n_f32(v2, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v6 = LODWORD(self->_sphericalHarmonicsLevel) + 1;
  v7 = (v6 * v6);
  v8 = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
  v20 = objc_msgSend_mutableBytes(self->_sphericalHarmonicsCoefficients, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  sphericalHarmonicsLevel = self->_sphericalHarmonicsLevel;
  if (sphericalHarmonicsLevel > 1)
  {
    if (sphericalHarmonicsLevel != 2)
    {
      if (sphericalHarmonicsLevel == 3)
      {
        sub_239EE91A4(v8, v30);
        if (!v6)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

LABEL_10:
      NSLog(&cfstr_ComputationOfS.isa, self->_sphericalHarmonicsLevel);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    sub_239EE90DC(v8, v30);
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_20:
    v24 = 0uLL;
    goto LABEL_21;
  }

  if (!sphericalHarmonicsLevel)
  {
    sub_239EE9084(v8);
    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (sphericalHarmonicsLevel != 1)
  {
    goto LABEL_10;
  }

  sub_239EE9094(v8, v30);
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (v7 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v7;
  }

  v24 = 0uLL;
  v25 = v8;
  do
  {
    v22.i32[0] = *v20;
    v26 = *v25++;
    v22.i32[1] = v20[v7];
    *v22.f32 = vmul_n_f32(*v22.f32, v26);
    v22.f32[2] = *&v20[(2 * v7)] * v26;
    v24 = vaddq_f32(v22, v24);
    ++v20;
    --v23;
  }

  while (v23);
LABEL_21:
  v31 = v24;
  free(v8);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = vcvtq_f64_f32(*v31.f32);
  v33 = v31.f32[2];
  v34 = 0x3FF0000000000000;
  v28 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  return v28;
}

@end