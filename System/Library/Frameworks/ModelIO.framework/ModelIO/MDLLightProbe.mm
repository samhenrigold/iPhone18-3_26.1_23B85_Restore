@interface MDLLightProbe
+ (CGColor)sampleSHAt:(id)at usingCoefficients:(unint64_t)coefficients withLevel:;
+ (MDLLightProbe)lightProbeWithTextureSize:(NSInteger)textureSize forLocation:(MDLTransform *)transform lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider reflectiveCubemap:(MDLTexture *)reflectiveCubemap irradianceCubemap:(MDLTexture *)irradianceCubemap;
+ (__n128)calculateIrradianceGradientUsingSamples:(__n128 *)samples ofSize:(uint64_t)size fromSH:(void *)h withLevel:(uint64_t)level;
- (MDLLightProbe)initWithReflectiveTexture:(MDLTexture *)reflectiveTexture irradianceTexture:(MDLTexture *)irradianceTexture;
- (void)generateSphericalHarmonicsFromIrradiance:(NSUInteger)sphericalHarmonicsLevel;
- (void)setSphericalHarmonicsCoefficients:(id)coefficients;
@end

@implementation MDLLightProbe

- (void)setSphericalHarmonicsCoefficients:(id)coefficients
{
  coefficientsCopy = coefficients;
  v14 = objc_msgSend_dataWithData_(MEMORY[0x277CBEB28], v4, coefficientsCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  sphericalHarmonicsCoefficients = self->_sphericalHarmonicsCoefficients;
  self->_sphericalHarmonicsCoefficients = v14;
}

- (MDLLightProbe)initWithReflectiveTexture:(MDLTexture *)reflectiveTexture irradianceTexture:(MDLTexture *)irradianceTexture
{
  v7 = reflectiveTexture;
  v8 = irradianceTexture;
  v14.receiver = self;
  v14.super_class = MDLLightProbe;
  v9 = [(MDLLight *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reflectiveTexture, reflectiveTexture);
    objc_storeStrong(&v10->_irradianceTexture, irradianceTexture);
    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    sphericalHarmonicsCoefficients = v10->_sphericalHarmonicsCoefficients;
    v10->_sphericalHarmonicsCoefficients = v11;
  }

  return v10;
}

- (void)generateSphericalHarmonicsFromIrradiance:(NSUInteger)sphericalHarmonicsLevel
{
  if (sphericalHarmonicsLevel >= 4)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v112 = NSStringFromClass(v16);
    v17 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v15, v18, @"ModelIOException", @"[%@ %@]: Spherical harmonics levels beyond 3 are not supported", v23, v24, v25, v26, v19, v20, v21, v22, v112, v17);
  }

  objc_msgSend_dimensions(self->_irradianceTexture, a2, sphericalHarmonicsLevel, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v114 = v27;
  v113 = objc_msgSend_texelDataWithBottomLeftOrigin(self->_irradianceTexture, v28, v29, v30, v27, v35, v36, v37, v31, v32, v33, v34);
  v38 = (sphericalHarmonicsLevel + 1) * (sphericalHarmonicsLevel + 1);
  objc_msgSend_setLength_(self->_sphericalHarmonicsCoefficients, v39, 12 * v38, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  v60 = objc_msgSend_mutableBytes(self->_sphericalHarmonicsCoefficients, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  v72 = objc_msgSend_length(self->_sphericalHarmonicsCoefficients, v61, v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);
  v111 = v60;
  bzero(v60, v72);
  self->_sphericalHarmonicsLevel = sphericalHarmonicsLevel;
  v73 = malloc_type_calloc(v38, 4uLL, 0x100004052888210uLL);
  v74 = 0;
  v76.i64[1] = v114.n128_i64[1];
  v75 = v114.n128_u32[0];
  *v76.i64 = 1.0 / v114.n128_i32[0];
  v77 = *v76.i64;
  v78 = 2 * v38;
  v79 = 0.0;
  do
  {
    if (v75 >= 1)
    {
      for (i = 0; i != v75; ++i)
      {
        for (j = 0; j != v75; ++j)
        {
          v76.f32[0] = v77;
          v82.n128_f64[0] = sub_239EE9354(i, j, v74, v76);
          v115 = v82;
          v83 = sub_239EE9458(i, j, v75);
          v84 = v113;
          v96 = objc_msgSend_bytes(v84, v85, v86, v87, v92, v93, v94, v95, v88, v89, v90, v91);
          if (sphericalHarmonicsLevel > 1)
          {
            if (sphericalHarmonicsLevel == 2)
            {
              *v76.f32 = sub_239EE90DC(v73, v115);
            }

            else if (sphericalHarmonicsLevel == 3)
            {
              *v76.f32 = sub_239EE91A4(v73, v115);
            }
          }

          else if (sphericalHarmonicsLevel)
          {
            if (sphericalHarmonicsLevel == 1)
            {
              sub_239EE9094(v73, v115);
            }
          }

          else
          {
            sub_239EE9084(v73);
          }

          if (v38 >= 1)
          {
            v98 = v111;
            v99 = (v96 + 4 * v75 * v75 * (5 - v74) + (4 * (i + j * v75)));
            *v76.i64 = v83 * 0.00392156863;
            v100 = v38 & 0x7FFFFFFD;
            v101 = v73;
            do
            {
              LOBYTE(v97) = *v99;
              *&v102 = *&v97;
              v103 = *v98 + *v76.i64 * *v101 * *&v102;
              *v98 = v103;
              LOBYTE(v102) = v99[1];
              *&v104 = v102;
              v105 = v98[v38] + *v76.i64 * *v101 * *&v104;
              v98[v38] = v105;
              v106 = *v101++;
              LOBYTE(v104) = v99[2];
              v97 = v104;
              v107 = v98[v78] + *v76.i64 * v106 * v97;
              v98[v78] = v107;
              ++v98;
              --v100;
            }

            while (v100);
          }

          v79 = v83 + v79;
        }
      }
    }

    ++v74;
  }

  while (v74 != 6);
  v108 = v111;
  if (v38 >= 1)
  {
    LODWORD(v110) = 3 * v38;
    if (3 * v38 <= 1)
    {
      v110 = 1;
    }

    else
    {
      v110 = v110;
    }

    do
    {
      v109 = 12.5663706 / v79;
      *v108 = *v108 * v109;
      ++v108;
      --v110;
    }

    while (v110);
  }

  free(v73);
}

+ (__n128)calculateIrradianceGradientUsingSamples:(__n128 *)samples ofSize:(uint64_t)size fromSH:(void *)h withLevel:(uint64_t)level
{
  hCopy = h;
  v16 = 0uLL;
  if (hCopy && size)
  {
    v17 = xmmword_239F9C590;
    v25 = xmmword_239F9C590;
    do
    {
      v26 = v16;
      v18 = objc_msgSend_sampleSHAt_usingCoefficients_withLevel_(MDLLightProbe, v9, hCopy, level, *samples, v17, v16, v15, v10, v11, v12, v13, *&v25);
      Components = CGColorGetComponents(v18);
      v20 = *Components;
      v15 = v25;
      v21 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(*(Components + 1))), v25);
      v22 = v21.f64[0] + v20 * 0.2126 + v21.f64[1];
      v23 = *samples++;
      v17 = v23;
      v16 = vmlaq_n_f32(v26, v23, v22);
      --size;
    }

    while (size);
  }

  v27 = v16;

  return v27;
}

+ (CGColor)sampleSHAt:(id)at usingCoefficients:(unint64_t)coefficients withLevel:
{
  v71 = v4;
  v76 = *MEMORY[0x277D85DE8];
  atCopy = at;
  if (coefficients >= 4)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v19, v23, @"ModelIOException", @"[%@ %@]: Spherical harmonics levels beyond 3 are not supported", v28, v29, v30, v31, v24, v25, v26, v27, v21, v22, *&v71);
  }

  v32 = coefficients + 1;
  v33 = (v32 * v32);
  if (objc_msgSend_length(atCopy, v7, v8, v9, v15, v16, v17, v18, v10, v11, v12, v13) != 12 * v33)
  {
    v34 = MEMORY[0x277CBEAD8];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v34, v38, @"ModelIOException", @"[%@ %@]: Number of spherical harmonics coefficients inconsistent with spherical harmonics level", v43, v44, v45, v46, v39, v40, v41, v42, v36, v37);
  }

  v47 = malloc_type_calloc((v32 * v32), 4uLL, 0x100004052888210uLL);
  v48 = atCopy;
  v60 = objc_msgSend_bytes(v48, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  v61 = vmulq_f32(v71, v71);
  *&v62 = vaddv_f32(*v61.f32) + v61.f32[2];
  *v61.f32 = vrsqrte_f32(v62);
  *v61.f32 = vmul_f32(vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)), *v61.f32);
  v63 = vmulq_n_f32(v71, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
  if (coefficients > 1)
  {
    if (coefficients == 2)
    {
      sub_239EE90DC(v47, v63);
    }

    else if (coefficients == 3)
    {
      sub_239EE91A4(v47, v63);
    }
  }

  else if (coefficients)
  {
    if (coefficients == 1)
    {
      sub_239EE9094(v47, v63);
    }
  }

  else
  {
    sub_239EE9084(v47);
  }

  if (coefficients == -1)
  {
    v65 = 0uLL;
  }

  else
  {
    if (v33 <= 1)
    {
      v64 = 1;
    }

    else
    {
      v64 = v33;
    }

    v65 = 0uLL;
    v66 = v47;
    do
    {
      v63.n128_u32[0] = *v60;
      v67 = *v66++;
      v63.n128_u32[1] = v60[v33];
      v63.n128_u64[0] = vmul_n_f32(v63.n128_u64[0], v67);
      v63.n128_f32[2] = *&v60[(2 * v33)] * v67;
      v65 = vaddq_f32(v63, v65);
      ++v60;
      --v64;
    }

    while (v64);
  }

  v72 = v65;
  free(v47);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = vcvtq_f64_f32(*v72.f32);
  v74 = v72.f32[2];
  v75 = 0x3FF0000000000000;
  v69 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);

  return v69;
}

+ (MDLLightProbe)lightProbeWithTextureSize:(NSInteger)textureSize forLocation:(MDLTransform *)transform lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider reflectiveCubemap:(MDLTexture *)reflectiveCubemap irradianceCubemap:(MDLTexture *)irradianceCubemap
{
  v12 = textureSize;
  v82 = *MEMORY[0x277D85DE8];
  transform;
  v13 = lightsToConsider;
  v71 = objectsToConsider;
  reflectiveCubemap;
  irradianceCubemap;
  v14 = objc_alloc_init(MDLScene);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v15 = v13;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v76, v81, v20, v21, v22, v23, 16, v17, v18, v19);
  if (v30)
  {
    v35 = *v77;
    do
    {
      v36 = 0;
      do
      {
        if (*v77 != v35)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addObject_(v14, v24, *(*(&v76 + 1) + 8 * v36++), v25, v31, v32, v33, v34, v26, v27, v28, v29);
      }

      while (v30 != v36);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v24, &v76, v81, v31, v32, v33, v34, 16, v27, v28, v29);
    }

    while (v30);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v37 = v71;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v72, v80, v42, v43, v44, v45, 16, v39, v40, v41);
  if (v52)
  {
    v57 = *v73;
    do
    {
      v58 = 0;
      do
      {
        if (*v73 != v57)
        {
          objc_enumerationMutation(v37);
        }

        objc_msgSend_addObject_(v14, v46, *(*(&v72 + 1) + 8 * v58++), v47, v53, v54, v55, v56, v48, v49, v50, v51);
      }

      while (v52 != v58);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v46, &v72, v80, v53, v54, v55, v56, 16, v49, v50, v51);
    }

    while (v52);
  }

  v59 = objc_alloc(MEMORY[0x277CBEB28]);
  objc_msgSend_initWithLength_(v59, v60, 4 * v12 * 6 * v12, v61, v66, v67, v68, v69, v62, v63, v64, v65);
  objc_alloc_init(MDLTransform);
  operator new();
}

@end