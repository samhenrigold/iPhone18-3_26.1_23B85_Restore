@interface Calibration
- (BOOL)_computeAdcDistortionModels;
- (CGRect)referenceFinalCropRect;
- (CalModel)correctedCalibration;
- (CalModel)initialCalibration;
- (Calibration)init;
- (DistortionModel)distModelFor:(SEL)for;
- (DistortionModel)undistModelFor:(SEL)for;
- (float)_computeCanonicalDisparityScaleFactor;
- (float)referenceMagnification;
- (int)_allocateResourcesForMaxNumOfTransposedPoints:(unsigned int)points;
- (int)_checkADCStatus:(AdaptiveCorrectionStatus *)status;
- (int)_computeCalibrationWithoutDistortion;
- (int)_computeCenteredRectificationHomographies;
- (int)_computePaddedAuxiliaryRectificationHomography;
- (int)allocateResourcesForMaxNumPoints:(unsigned int)points;
- (int)applyCurrentTemporalState;
- (int)computeAuxiliaryImageShiftForKeypoints:(Calibration *)self;
- (int)computeCalibration;
- (int)computeInitialCalibration;
- (int)computeStereoRectificationHomographies:(float)homographies alignedToAngle:;
- (int)extractParametersFromReferenceMetadata:(id)metadata auxiliaryMetadata:(id)auxiliaryMetadata options:(id)options adaptiveCorrectionConfig:(AdaptiveCorrectionConfig *)config useReferenceFrame:(BOOL)frame;
- (void)_releaseResourcesForTransformedPoints;
- (void)dealloc;
- (void)releaseResources;
- (void)setKeypointsForReference:(double *)reference auxiliary:(double *)auxiliary keypointCount:(unsigned int)count;
- (void)setReferenceBufferDimensions:(id)dimensions auxillaryBufferDimensions:(id)bufferDimensions normalizedReferenceFinalCropRect:(CGRect)rect;
@end

@implementation Calibration

- (Calibration)init
{
  v3.receiver = self;
  v3.super_class = Calibration;
  result = [(Calibration *)&v3 init];
  if (result)
  {
    result->_distortionCorrectionEnabled = 1;
    result->_rectificationFocalLengthFactor = 1.0;
    result->_referenceCalibrationScalingFactor = 1.0;
    result->_aspectRatioErrorHardThreshold = 0.0045;
  }

  return result;
}

- (int)allocateResourcesForMaxNumPoints:(unsigned int)points
{
  v6 = *&points;
  objc_msgSend_releaseResources(self, a2, *&points, v3, v4, v5);
  if (self->_distortionCorrectionEnabled)
  {
    v12 = sub_2956FA80C(v6, &self->_adc);
    v13 = v12;
    if (v12)
    {
      sub_295704128(v12);
    }
  }

  else
  {
    ResourcesForMaxNumOfTransposedPoints = objc_msgSend__allocateResourcesForMaxNumOfTransposedPoints_(self, v8, v6, v9, v10, v11);
    v13 = ResourcesForMaxNumOfTransposedPoints;
    if (ResourcesForMaxNumOfTransposedPoints)
    {
      sub_2957040AC(ResourcesForMaxNumOfTransposedPoints);
    }
  }

  return v13;
}

- (void)releaseResources
{
  if (self->_distortionCorrectionEnabled)
  {
    sub_2956FAA20(self->_adc);
    self->_adc = 0;
  }

  else
  {

    (MEMORY[0x2A1C70FE8])(self, sel__releaseResourcesForTransformedPoints);
  }
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = Calibration;
  [(Calibration *)&v7 dealloc];
}

- (int)extractParametersFromReferenceMetadata:(id)metadata auxiliaryMetadata:(id)auxiliaryMetadata options:(id)options adaptiveCorrectionConfig:(AdaptiveCorrectionConfig *)config useReferenceFrame:(BOOL)frame
{
  frameCopy = frame;
  metadataCopy = metadata;
  auxiliaryMetadataCopy = auxiliaryMetadata;
  optionsCopy = options;
  selfCopy = self;
  self->_rectificationFocalLengthFactor = 1.0;
  if (!metadataCopy)
  {
    sub_2957049B4(__dst);
LABEL_76:
    v277 = __dst[0];
    goto LABEL_71;
  }

  if (!auxiliaryMetadataCopy)
  {
    sub_295704908(__dst);
    goto LABEL_76;
  }

  configCopy = config;
  v20 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v15, @"PortType", v16, v17, v18);
  v21 = self->_portTypeName[0];
  self->_portTypeName[0] = v20;

  v26 = objc_msgSend_objectForKeyedSubscript_(auxiliaryMetadataCopy, v22, @"PortType", v23, v24, v25);
  v27 = self->_portTypeName[1];
  self->_portTypeName[1] = v26;

  metadata = self->_metadata;
  objc_storeStrong(self->_metadata, metadata);
  objc_storeStrong(&self->_metadata[1], auxiliaryMetadata);
  if (frameCopy)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      v35 = v34;
      v36 = objc_msgSend_objectForKeyedSubscript_(metadata[v33], v29, @"ReferenceFrameMetadata", v30, v31, v32);

      if (v36)
      {
        v37 = objc_msgSend_objectForKeyedSubscript_(metadata[v33], v29, @"ReferenceFrameMetadata", v30, v31, v32);
        v38 = metadata[v33];
        metadata[v33] = v37;
      }

      v34 = 0;
      v33 = 1;
    }

    while ((v35 & 1) != 0);
  }

  if (!optionsCopy)
  {
    sub_29570485C(__dst);
    goto LABEL_76;
  }

  v304 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v29, *MEMORY[0x29EDC0288], v30, v31, v32);
  if (!v304)
  {
    sub_2957047B0(__dst);
    goto LABEL_76;
  }

  v281 = optionsCopy;
  v282 = auxiliaryMetadataCopy;
  v283 = metadataCopy;
  p_adaptiveCorrectionConfig = &self->_adaptiveCorrectionConfig;
  portTypeName = self->_portTypeName;
  v303 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v39, v40, v41, v42, v43);
  v44 = 0;
  v45 = 0;
  v284 = 0;
  v300 = *MEMORY[0x29EDC0658];
  v299 = *MEMORY[0x29EDBFF38];
  v310 = *MEMORY[0x29EDBFEF8];
  v298 = *MEMORY[0x29EDBFEC8];
  v314 = *MEMORY[0x29EDBFEC0];
  v308 = *MEMORY[0x29EDC04C0];
  v309 = *MEMORY[0x29EDC0628];
  v306 = *MEMORY[0x29EDC04B0];
  v307 = *MEMORY[0x29EDC0620];
  pixelBufferDimensions = self->_pixelBufferDimensions;
  v297 = *MEMORY[0x29EDBFED8];
  v295 = *MEMORY[0x29EDC05D0];
  opticalCenter = self->_opticalCenter;
  focalLength = self->_focalLength;
  rawSensorSize = self->_rawSensorSize;
  v287 = *MEMORY[0x29EDC06F0];
  pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
  v286 = *MEMORY[0x29EDBFED0];
  distortionOpticalCenter = self->_distortionOpticalCenter;
  ddf = self->_ddf;
  v46 = 1;
  v285 = *MEMORY[0x29EDC05C8];
  v291 = *MEMORY[0x29EDC0670];
  v290 = *MEMORY[0x29EDC0668];
  do
  {
    v316 = v46;
    v47 = portTypeName[v45];
    v315 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v48, v49, v50, v51, v52);
    v57 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v53, v300, v54, v55, v56);
    v63 = objc_msgSend_intValue(v57, v58, v59, v60, v61, v62);
    if (v63 <= 1)
    {
      v64 = 1;
    }

    else
    {
      v64 = v63;
    }

    v65 = MEMORY[0x29EDBA070];
    v70 = objc_msgSend_objectForKeyedSubscript_(v304, v66, v47, v67, v68, v69);
    v75 = objc_msgSend_objectForKeyedSubscript_(v70, v71, v299, v72, v73, v74);
    objc_msgSend_floatValue(v75, v76, v77, v78, v79, v80);
    v81 = v64;
    *&v83 = v82 * v64;
    v325 = objc_msgSend_numberWithFloat_(v65, v84, v85, v86, v87, v88, v83);

    v89 = v47;
    v94 = objc_msgSend_objectForKeyedSubscript_(v304, v90, v47, v91, v92, v93);
    v320 = objc_msgSend_objectForKeyedSubscript_(v94, v95, v310, v96, v97, v98);

    v103 = objc_msgSend_objectForKeyedSubscript_(v304, v99, v47, v100, v101, v102);
    v108 = objc_msgSend_objectForKeyedSubscript_(v103, v104, v298, v105, v106, v107);

    v113 = objc_msgSend_objectForKeyedSubscript_(v304, v109, v89, v110, v111, v112);
    v327 = objc_msgSend_objectForKeyedSubscript_(v113, v114, v314, v115, v116, v117);

    v318 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v118, v309, v119, v120, v121);
    v126 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v122, v308, v123, v124, v125);
    v131 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v127, v307, v128, v129, v130);
    dict = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v132, v306, v133, v134, v135);
    v140 = objc_msgSend_objectForKeyedSubscript_(v304, v136, v89, v137, v138, v139);
    v145 = objc_msgSend_objectForKeyedSubscript_(v140, v141, v297, v142, v143, v144);

    v319 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v146, v295, v147, v148, v149);
    v155 = &pixelBufferDimensions[v45];
    v323 = v126;
    v312 = v155;
    if (selfCopy->_pixelBufferScalingEnabled)
    {
      v156 = v145;
      v157 = v108;
      v158 = *(MEMORY[0x29EDB90D8] + 16);
      rect.origin = *MEMORY[0x29EDB90D8];
      rect.size = v158;
      v159 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v150, v287, v152, v153, v154);
      CGRectMakeWithDictionaryRepresentation(v159, &rect);

      width = rect.size.width;
      if (rect.size.width <= 0.0 || (height = rect.size.height, rect.size.height <= 0.0))
      {
        sub_2957041A4(&rect, __dst);
        v268 = 0;
        v284 = __dst[0];
        v162 = v315;
        v108 = v157;
        v267 = dict;
        v163 = v318;
        goto LABEL_49;
      }

      v162 = v315;
      v108 = v157;
      v145 = v156;
    }

    else
    {
      width = *v155;
      height = v155[1];
      v162 = v315;
    }

    v163 = v318;
    v313 = v108;
    if (!v145)
    {
      v190 = objc_msgSend_objectForKeyedSubscript_(v304, v150, v89, v152, v153, v154);
      v188 = objc_msgSend_objectForKeyedSubscript_(v190, v191, v286, v192, v193, v194);

      v199 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v195, v285, v196, v197, v198);

      if (v188)
      {
        v187 = v320;
        if (!v199)
        {
          v156 = v188;
          sub_295704454(__dst);
          v268 = 0;
          v319 = 0;
          goto LABEL_64;
        }

        v319 = v199;
LABEL_28:
        v321 = objc_msgSend_objectForKeyedSubscript_(v188, v182, v310, v183, v184, v185);

        v302 = objc_msgSend_objectForKeyedSubscript_(v188, v200, v314, v201, v202, v203);

        objc_msgSend_objectForKeyedSubscript_(v319, v204, v309, v205, v206, v207);
        v209 = v208 = v131;

        objc_msgSend_objectForKeyedSubscript_(v319, v210, v308, v211, v212, v213);
        metadataCopy2 = metadata;
        v216 = v215 = v89;

        v221 = objc_msgSend_objectForKeyedSubscript_(v319, v217, v307, v218, v219, v220);

        v226 = objc_msgSend_objectForKeyedSubscript_(v319, v222, v306, v223, v224, v225);

        v327 = v302;
        dict = v226;
        v318 = v209;
        v323 = v216;
        v89 = v215;
        metadata = metadataCopy2;
        v131 = v221;
        v162 = v315;
        v187 = v321;
      }

      else
      {
        v319 = v199;
        v187 = v320;
      }

      v108 = v313;
      v189 = v327;
      if (!v325)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (!v325)
    {
      v156 = v145;
      sub_2957043A8(__dst);
      goto LABEL_57;
    }

    if (!v319)
    {
      v156 = v145;
      sub_2957042FC(__dst);
      v268 = 0;
      v319 = 0;
      goto LABEL_58;
    }

    objc_msgSend_floatValue(v325, v150, v151, v152, v153, v154);
    v165 = v164;
    v156 = v145;
    v170 = objc_msgSend_objectForKeyedSubscript_(v145, v166, v314, v167, v168, v169);
    if (!v170)
    {
      sub_295704250(__dst);
      v268 = 0;
LABEL_64:
      v284 = __dst[0];
      v108 = v313;
      goto LABEL_59;
    }

    v176 = v170;
    v177.f32[0] = width * 0.5;
    v178 = height * 0.5;
    v177.f32[1] = v178;
    v179 = (sqrtf(vaddv_f32(vmul_f32(v177, v177))) * v165) / 1000.0;
    objc_msgSend_floatValue(v170, v171, v172, v173, v174, v175);
    v181 = v179 > v180;

    v186 = v181 & ~v44;
    v187 = v320;
    v188 = v156;
    if ((v186 & 1) == 0)
    {
      goto LABEL_28;
    }

    v108 = v313;
    v189 = v327;
LABEL_31:
    objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v325, @"pixelSizeMicrometers", v184, v185);
LABEL_32:
    if (v187)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v187, @"gdcCoefficients", v184, v185);
    }

    if (v108)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v108, @"CameraViewMatrix", v184, v185);
    }

    if (v189)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v189, @"CalibrationValidRadius", v184, v185);
    }

    v327 = v189;
    objc_msgSend_setObject_forKeyedSubscript_(v303, v182, v162, v89, v184, v185);
    v163 = v318;
    v320 = v187;
    if (!v318)
    {
      v156 = v188;
      sub_295704704(__dst);
LABEL_57:
      v268 = 0;
LABEL_58:
      v284 = __dst[0];
LABEL_59:
      v267 = dict;
      goto LABEL_49;
    }

    v156 = v188;
    objc_msgSend_floatValue(v318, v227, v228, v229, v230, v231);
    focalLength[v45] = v232;
    if (!CGPointMakeWithDictionaryRepresentation(v131, &opticalCenter[v45]))
    {
      sub_295704500(__dst);
      goto LABEL_57;
    }

    v237 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v233, v291, v234, v235, v236);
    objc_msgSend_floatValue(v237, v238, v239, v240, v241, v242);
    p_width = &rawSensorSize[v45].width;
    *p_width = v243;

    v249 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v245, v290, v246, v247, v248);
    objc_msgSend_floatValue(v249, v250, v251, v252, v253, v254);
    p_width[1] = v255;

    v261 = width;
    v262 = *v312 / v261;
    v263 = height;
    v264 = v312[1] / v263;
    v265 = __PAIR64__(LODWORD(v264), LODWORD(v262));
    *&pixelBufferScalingFactor[8 * v45] = __PAIR64__(LODWORD(v264), LODWORD(v262));
    if (v316)
    {
      selfCopy->_referenceCalibrationScalingFactor = (((v262 + v264) * 0.5) + ((v262 + v264) * 0.5)) / v81;
      v265 = *&pixelBufferScalingFactor[8 * v45];
    }

    if (*&v265 > 10.0 || *&v265 <= 0.1)
    {
      sub_295704658(__dst);
      goto LABEL_57;
    }

    if (v323)
    {
      objc_msgSend_floatValue(v323, v256, v257, v258, v259, v260);
    }

    else
    {
      v266 = 0.0;
    }

    ddf[v45] = v266;
    v267 = dict;
    if (CGPointMakeWithDictionaryRepresentation(dict, &distortionOpticalCenter[v45]))
    {
      v268 = 1;
    }

    else
    {
      sub_2957045AC(__dst);
      v268 = 0;
      v284 = __dst[0];
    }

LABEL_49:

    if ((v268 & 1) == 0)
    {

      auxiliaryMetadataCopy = v282;
      metadataCopy = v283;
      optionsCopy = v281;
      goto LABEL_70;
    }

    v46 = 0;
    v44 = 1;
    v45 = 1;
  }

  while ((v316 & 1) != 0);
  staticParametersByPortType = selfCopy->_staticParametersByPortType;
  selfCopy->_staticParametersByPortType = v303;
  v270 = v303;

  scaleTuningWithDigitalZoomByFactor = configCopy->scaleTuningWithDigitalZoomByFactor;
  if (scaleTuningWithDigitalZoomByFactor <= 0.0)
  {
    auxiliaryMetadataCopy = v282;
    metadataCopy = v283;
    optionsCopy = v281;
    v322 = *&configCopy->epErrorLimitWidePix_FirstPass;
    v324 = *&configCopy->rangePFL_T;
    v326 = *&configCopy->rangeOCxT;
    v328 = *&configCopy->rangeOCyT;
  }

  else
  {
    v272 = ((scaleTuningWithDigitalZoomByFactor * (selfCopy->_referenceCalibrationScalingFactor + -1.0)) + 1.0);
    v324 = vmulq_n_f64(*&configCopy->rangePFL_T, v272);
    v326 = vmulq_n_f64(*&configCopy->rangeOCxT, v272);
    v328 = vmulq_n_f64(*&configCopy->rangeOCyT, v272);
    v322 = vmulq_n_f64(*&configCopy->epErrorLimitWidePix_FirstPass, v272);
    auxiliaryMetadataCopy = v282;
    metadataCopy = v283;
    optionsCopy = v281;
  }

  v273 = *&configCopy->runAnalyticalPreconditioning;
  v332 = *&configCopy->errorVal_LessThanExtremeMacro;
  v333 = v273;
  v334 = *&configCopy->keypointOutliersPercentile;
  temporalInitializationFactor = configCopy->temporalInitializationFactor;
  v274 = *&configCopy->minPointsForAdjustment;
  v330 = *&configCopy->intermediateMacroDistMM;
  v331 = v274;
  memcpy(__dst, &configCopy->overrideConfigPass1, sizeof(__dst));
  *&p_adaptiveCorrectionConfig->epErrorLimitWidePix_FirstPass = v322;
  *&p_adaptiveCorrectionConfig->rangePFL_T = v324;
  *&p_adaptiveCorrectionConfig->rangeOCxT = v326;
  *&p_adaptiveCorrectionConfig->rangeOCyT = v328;
  v275 = v333;
  *&selfCopy->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro = v332;
  *&selfCopy->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = v275;
  *&selfCopy->_adaptiveCorrectionConfig.keypointOutliersPercentile = v334;
  selfCopy->_adaptiveCorrectionConfig.temporalInitializationFactor = temporalInitializationFactor;
  v276 = v331;
  *&selfCopy->_adaptiveCorrectionConfig.intermediateMacroDistMM = v330;
  *&selfCopy->_adaptiveCorrectionConfig.minPointsForAdjustment = v276;
  selfCopy->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = scaleTuningWithDigitalZoomByFactor;
  memcpy(&selfCopy->_adaptiveCorrectionConfig.overrideConfigPass1, __dst, 0x168uLL);

LABEL_70:
  v277 = v284;
LABEL_71:

  return v277;
}

- (int)computeInitialCalibration
{
  v7 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, self->_portTypeName[1], v2, v3, v4);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"CameraViewMatrix", v9, v10, v11);
  v13 = v12;
  v19 = objc_msgSend_bytes(v13, v14, v15, v16, v17, v18);

  selfCopy = self;
  v24 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v20, self->_portTypeName[0], v21, v22, v23);
  v29 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"CameraViewMatrix", v26, v27, v28);
  v30 = v29;
  v36 = objc_msgSend_bytes(v30, v31, v32, v33, v34, v35);

  if (v19)
  {
    if (v36)
    {
      portTypeName = self->_portTypeName;
      *v42.i64 = sub_2956F833C(v19, v37, v38, v39, v40, v41);
      v135 = v42;
      v137 = v43;
      v133 = v44;
      v139 = v45;
      *v51.i64 = sub_2956F833C(v36, *v42.i64, *v43.i64, *v44.i64, *v45.i64, v46);
      v53 = 0;
      v144 = 0u;
      v145 = 0u;
      v55 = vzip1q_s32(v51, v54);
      v146 = 0u;
      v147 = 0u;
      v148[0] = vzip1q_s32(v55, v56);
      v148[1] = vzip2q_s32(v55, vdupq_lane_s32(*v56.i8, 1));
      v148[2] = vzip1q_s32(vzip2q_s32(v51, v54), vdupq_laneq_s32(v56, 2));
      time = 0u;
      time_16 = 0u;
      v151 = 0u;
      do
      {
        *(&time + v53 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v135, COERCE_FLOAT(v148[v53])), v137, *&v148[v53], 1), v133, v148[v53], 2);
        ++v53;
      }

      while (v53 != 3);
      v57 = 0;
      DWORD2(v144) = time.i32[2];
      DWORD2(v145) = time_16.i32[2];
      v58 = vsubq_f32(v139, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(time, v52.f32[0]), time_16, *v52.f32, 1), v151, v52, 2));
      *&v144 = time.i64[0];
      *&v145 = time_16.i64[0];
      DWORD2(v146) = v151.i32[2];
      DWORD2(v147) = v58.i32[2];
      *&v146 = v151.i64[0];
      *&v147 = v58.i64[0];
      v59 = self->_pixelBufferDimensions[0];
      *self->_initialCalibration.focalLengthPix = 0u;
      p_initialCalibration = &self->_initialCalibration;
      *&self->_initialCalibration.canonicalDisparityScale = 0u;
      *&self->_initialCalibration.calibrationDimensions[1] = 0u;
      *self->_initialCalibration.opticalCenterX = 0u;
      *self->_initialCalibration.opticalCenterY = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10] = 0u;
      self->_initialCalibration.pixelSize_um[1] = 0.0;
      *self->_initialCalibration.extrinRotRefefenceToAuxiliary = 0u;
      extrinRotRefefenceToAuxiliary = self->_initialCalibration.extrinRotRefefenceToAuxiliary;
      v61.i64[0] = v59.width;
      v61.i64[1] = v59.height;
      pixelBufferDimensions = self->_pixelBufferDimensions;
      *self->_initialCalibration.calibrationDimensions = vcvtq_f64_s64(v61);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          extrinRotRefefenceToAuxiliary[i] = *((&v144 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3)));
        }

        ++v57;
        extrinRotRefefenceToAuxiliary += 4;
      }

      while (v57 != 3);
      v63 = 0;
      rawSensorSize = self->_rawSensorSize;
      pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
      opticalCenter = self->_opticalCenter;
      opticalCenterX = self->_initialCalibration.opticalCenterX;
      opticalCenterY = self->_initialCalibration.opticalCenterY;
      pixelSize_um = self->_initialCalibration.pixelSize_um;
      focalLength = self->_focalLength;
      metadata = self->_metadata;
      v130 = *MEMORY[0x29EDC0560];
      v129 = *MEMORY[0x29EDBFFA0];
      v128 = *(MEMORY[0x29EDB9398] + 12);
      v126 = *(MEMORY[0x29EDB9398] + 16);
      v124 = self->_initialCalibration.opticalCenterY;
      v125 = *MEMORY[0x29EDC04A8];
      for (j = 1; ; j = 0)
      {
        v69 = j;
        p_width = &rawSensorSize[v63].width;
        v71 = (*p_width + -1.0) * 0.5;
        v72 = (p_width[1] + -1.0) * 0.5;
        v73 = &pixelBufferDimensions[v63];
        p_x = &opticalCenter[v63].x;
        v75 = *&pixelBufferScalingFactor[8 * v63];
        v76 = p_x[1];
        v77 = (v73[1] + -1.0) * 0.5;
        opticalCenterX[v63] = (*v73 + -1.0) * 0.5 + (*p_x - v71) * *&v75;
        opticalCenterY[v63] = v77 + (v76 - v72) * *(&v75 + 1);
        v78 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_staticParametersByPortType, v47, portTypeName[v63], v48, v49, v50);
        v83 = objc_msgSend_objectForKeyedSubscript_(v78, v79, @"pixelSizeMicrometers", v80, v81, v82);
        objc_msgSend_floatValue(v83, v84, v85, v86, v87, v88);
        v90 = v89;

        v91 = (v90 / (vaddv_f32(*&pixelBufferScalingFactor[8 * v63]) * 0.5));
        pixelSize_um[v63] = v91;
        p_initialCalibration->focalLengthPix[v63] = focalLength[v63] / v91;
        v96 = objc_msgSend_objectForKeyedSubscript_(metadata[v63], v92, v130, v93, v94, v95);

        if (v96)
        {
          v97 = opticalCenterX;
          v98 = objc_msgSend_objectForKeyedSubscript_(metadata[v63], v47, v129, v48, v49, v50);
          v103 = v98;
          v143 = 0;
          *&v148[0] = *MEMORY[0x29EDB9398];
          DWORD2(v148[0]) = *(MEMORY[0x29EDB9398] + 8);
          v104 = v128;
          v105 = v126;
          if (v98)
          {
            CMTimeMakeFromDictionary(&time, v98);
            *&v148[0] = time.i64[0];
            v104 = time.i32[3];
            DWORD2(v148[0]) = time.i32[2];
            v105 = time_16.i64[0];
          }

          if ((v104 & 1) == 0)
          {
            sub_295704A60(v148, &v143, v103, &time);
            return time.i32[0];
          }

          v106 = objc_msgSend_objectForKeyedSubscript_(metadata[v63], v99, v125, v100, v101, v102);
          v112 = v106;
          if (v106)
          {
            objc_msgSend_floatValue(v106, v107, v108, v109, v110, v111);
            v114 = v113;
          }

          else
          {
            v114 = 1.0;
          }

          v115 = pixelSize_um[v63];
          time.i64[0] = *&v148[0];
          time.i64[1] = __PAIR64__(v104, DWORD2(v148[0]));
          time_16.i64[0] = v105;
          CMTimeGetSeconds(&time);
          v116 = FigMotionComputeAverageSpherePosition();
          if (v116)
          {
            v121 = v116;
            fig_log_get_emitter();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v121, v5, v123, v5, v124, v125, v126, v127);

            return v121;
          }

          v117 = v115;
          v118 = v114 / v117;
          v119 = *(&v143 + 1);
          opticalCenterX = v97;
          v97[v63] = v97[v63] + (v118 * *&v143);
          opticalCenterY = v124;
          v124[v63] = v124[v63] + (v118 * v119);
          v120 = metadata[v63];
          metadata[v63] = 0;
        }

        v63 = 1;
        if ((v69 & 1) == 0)
        {
          return 0;
        }
      }
    }

    sub_295704B38(&time);
  }

  else
  {
    sub_295704BE4(&time);
  }

  return time.i32[0];
}

- (int)applyCurrentTemporalState
{
  self->_correctedCalibration.pixelSize_um[1] = 0.0;
  *&self->_correctedCalibration.calibrationDimensions[1] = 0u;
  *&self->_correctedCalibration.canonicalDisparityScale = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = 0u;
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = 0u;
  *self->_correctedCalibration.opticalCenterY = 0u;
  *self->_correctedCalibration.opticalCenterX = 0u;
  *self->_correctedCalibration.focalLengthPix = 0u;
  *&self->_distModels[0].pixelSizeMM = 0u;
  *&self->_distModels[0].opticalCenterX = 0u;
  *self->_distModels[0].polyBase = 0u;
  *&self->_distModels[0].polyBase[2] = 0u;
  *&self->_distModels[0].polyBase[4] = 0u;
  *&self->_distModels[0].polyBase[6] = 0u;
  *self->_distModels[0].polyDynamic = 0u;
  *&self->_distModels[0].polyDynamic[2] = 0u;
  *&self->_distModels[0].polyDynamic[4] = 0u;
  *&self->_distModels[0].polyDynamic[6] = 0u;
  *&self->_distModels[1].polyDynamic[4] = 0u;
  *&self->_distModels[1].polyDynamic[6] = 0u;
  *self->_distModels[1].polyDynamic = 0u;
  *&self->_distModels[1].polyDynamic[2] = 0u;
  *&self->_distModels[1].polyBase[4] = 0u;
  *&self->_distModels[1].polyBase[6] = 0u;
  *self->_distModels[1].polyBase = 0u;
  *&self->_distModels[1].polyBase[2] = 0u;
  *&self->_distModels[1].pixelSizeMM = 0u;
  *&self->_distModels[1].opticalCenterX = 0u;
  *&self->_undistModels[0].pixelSizeMM = 0u;
  *&self->_undistModels[0].opticalCenterX = 0u;
  *self->_undistModels[0].polyBase = 0u;
  *&self->_undistModels[0].polyBase[2] = 0u;
  *&self->_undistModels[0].polyBase[4] = 0u;
  *&self->_undistModels[0].polyBase[6] = 0u;
  *self->_undistModels[0].polyDynamic = 0u;
  *&self->_undistModels[0].polyDynamic[2] = 0u;
  *&self->_undistModels[0].polyDynamic[4] = 0u;
  *&self->_undistModels[0].polyDynamic[6] = 0u;
  *&self->_undistModels[1].polyDynamic[4] = 0u;
  *&self->_undistModels[1].polyDynamic[6] = 0u;
  *self->_undistModels[1].polyDynamic = 0u;
  *&self->_undistModels[1].polyDynamic[2] = 0u;
  *&self->_undistModels[1].polyBase[4] = 0u;
  *&self->_undistModels[1].polyBase[6] = 0u;
  *self->_undistModels[1].polyBase = 0u;
  *&self->_undistModels[1].polyBase[2] = 0u;
  *&self->_undistModels[1].pixelSizeMM = 0u;
  *&self->_undistModels[1].opticalCenterX = 0u;
  if ((objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5) & 1) == 0)
  {
    sub_295704C90();
    return 0;
  }

  v7 = *&self->_initialCalibration.canonicalDisparityScale;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
  *&self->_correctedCalibration.canonicalDisparityScale = v7;
  *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
  self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
  v8 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v8;
  v9 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v9;
  v10 = *self->_initialCalibration.opticalCenterX;
  *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
  *self->_correctedCalibration.opticalCenterX = v10;
  v11 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
  *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v11;
  if (sub_2956FAA94(self->_adc, &self->_adaptiveCorrectionConfig))
  {
    sub_295704D04();
    return 0;
  }

  if (sub_2956FBA24(self->_adc, self->_undistModels, &self->_undistModels[1], self->_correctedCalibration.focalLengthPix, 1.0))
  {
    sub_295704D7C();
    return 3;
  }

  else
  {
    sub_2956FAAD4(self->_adc, &v43);
    v13 = *&self->_distModels[0].polyDynamic[2];
    v49 = *self->_distModels[0].polyDynamic;
    v12 = v49;
    v50 = v13;
    v14 = *&self->_distModels[0].polyDynamic[6];
    v51 = *&self->_distModels[0].polyDynamic[4];
    v52 = v14;
    v16 = *&self->_distModels[0].polyBase[2];
    v45 = *self->_distModels[0].polyBase;
    v15 = v45;
    v46 = v16;
    v17 = *&self->_distModels[0].polyBase[6];
    v47 = *&self->_distModels[0].polyBase[4];
    v48 = v17;
    v18 = *&self->_distModels[0].opticalCenterX;
    v43 = *&self->_distModels[0].pixelSizeMM;
    v44 = v18;
    v19 = *&self->_undistModels[0].opticalCenterX;
    *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
    *&self->_distModels[0].opticalCenterX = v19;
    v20 = v46;
    v21 = v48;
    v22 = v50;
    *&self->_distModels[0].polyBase[4] = v47;
    *&self->_distModels[0].polyBase[6] = v21;
    *self->_distModels[0].polyBase = v15;
    *&self->_distModels[0].polyBase[2] = v20;
    *self->_distModels[0].polyDynamic = v12;
    *&self->_distModels[0].polyDynamic[2] = v22;
    v23 = v52;
    *&self->_distModels[0].polyDynamic[4] = v51;
    *&self->_distModels[0].polyDynamic[6] = v23;
    v25 = *&self->_distModels[1].polyDynamic[2];
    v49 = *self->_distModels[1].polyDynamic;
    v24 = v49;
    v50 = v25;
    v26 = *&self->_distModels[1].polyDynamic[6];
    v51 = *&self->_distModels[1].polyDynamic[4];
    v52 = v26;
    v28 = *&self->_distModels[1].polyBase[2];
    v45 = *self->_distModels[1].polyBase;
    v27 = v45;
    v46 = v28;
    v29 = *&self->_distModels[1].polyBase[6];
    v47 = *&self->_distModels[1].polyBase[4];
    v48 = v29;
    v30 = *&self->_distModels[1].opticalCenterX;
    v43 = *&self->_distModels[1].pixelSizeMM;
    v44 = v30;
    v31 = *&self->_undistModels[1].opticalCenterX;
    *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
    *&self->_distModels[1].opticalCenterX = v31;
    v32 = v46;
    v33 = v48;
    v34 = v50;
    *&self->_distModels[1].polyBase[4] = v47;
    *&self->_distModels[1].polyBase[6] = v33;
    *self->_distModels[1].polyBase = v27;
    *&self->_distModels[1].polyBase[2] = v32;
    *self->_distModels[1].polyDynamic = v24;
    *&self->_distModels[1].polyDynamic[2] = v34;
    v35 = v52;
    *&self->_distModels[1].polyDynamic[4] = v51;
    *&self->_distModels[1].polyDynamic[6] = v35;
    objc_msgSend__computeCanonicalDisparityScaleFactor(self, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    result = 0;
    self->_correctedCalibration.canonicalDisparityScale = v42;
  }

  return result;
}

- (int)computeCalibration
{
  if (self->_distortionCorrectionEnabled)
  {
    self->_correctedCalibration.pixelSize_um[1] = 0.0;
    *&self->_correctedCalibration.calibrationDimensions[1] = 0u;
    *&self->_correctedCalibration.canonicalDisparityScale = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = 0u;
    *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = 0u;
    *self->_correctedCalibration.opticalCenterY = 0u;
    *self->_correctedCalibration.opticalCenterX = 0u;
    *self->_correctedCalibration.focalLengthPix = 0u;
    *&self->_distModels[0].pixelSizeMM = 0u;
    *&self->_distModels[0].opticalCenterX = 0u;
    *self->_distModels[0].polyBase = 0u;
    *&self->_distModels[0].polyBase[2] = 0u;
    *&self->_distModels[0].polyBase[4] = 0u;
    *&self->_distModels[0].polyBase[6] = 0u;
    *self->_distModels[0].polyDynamic = 0u;
    *&self->_distModels[0].polyDynamic[2] = 0u;
    *&self->_distModels[0].polyDynamic[4] = 0u;
    *&self->_distModels[0].polyDynamic[6] = 0u;
    *&self->_distModels[1].polyDynamic[4] = 0u;
    *&self->_distModels[1].polyDynamic[6] = 0u;
    *self->_distModels[1].polyDynamic = 0u;
    *&self->_distModels[1].polyDynamic[2] = 0u;
    *&self->_distModels[1].polyBase[4] = 0u;
    *&self->_distModels[1].polyBase[6] = 0u;
    *self->_distModels[1].polyBase = 0u;
    *&self->_distModels[1].polyBase[2] = 0u;
    *&self->_distModels[1].pixelSizeMM = 0u;
    *&self->_distModels[1].opticalCenterX = 0u;
    *&self->_undistModels[0].pixelSizeMM = 0u;
    *&self->_undistModels[0].opticalCenterX = 0u;
    *self->_undistModels[0].polyBase = 0u;
    *&self->_undistModels[0].polyBase[2] = 0u;
    *&self->_undistModels[0].polyBase[4] = 0u;
    *&self->_undistModels[0].polyBase[6] = 0u;
    *self->_undistModels[0].polyDynamic = 0u;
    *&self->_undistModels[0].polyDynamic[2] = 0u;
    *&self->_undistModels[0].polyDynamic[4] = 0u;
    *&self->_undistModels[0].polyDynamic[6] = 0u;
    *&self->_undistModels[1].polyDynamic[4] = 0u;
    *&self->_undistModels[1].polyDynamic[6] = 0u;
    *self->_undistModels[1].polyDynamic = 0u;
    *&self->_undistModels[1].polyDynamic[2] = 0u;
    *&self->_undistModels[1].polyBase[4] = 0u;
    *&self->_undistModels[1].polyBase[6] = 0u;
    *self->_undistModels[1].polyBase = 0u;
    *&self->_undistModels[1].polyBase[2] = 0u;
    *&self->_undistModels[1].pixelSizeMM = 0u;
    *&self->_undistModels[1].opticalCenterX = 0u;
    if (objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5))
    {
      v7 = *&self->_initialCalibration.canonicalDisparityScale;
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
      *&self->_correctedCalibration.canonicalDisparityScale = v7;
      *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
      self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
      v8 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v8;
      v9 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v9;
      v10 = *self->_initialCalibration.opticalCenterX;
      *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
      *self->_correctedCalibration.opticalCenterX = v10;
      v11 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
      *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
      *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v11;
      if (!sub_2956FAA94(self->_adc, &self->_adaptiveCorrectionConfig))
      {
        keypointsCount = self->_keypointsCount;
        if (!keypointsCount)
        {
          bzero(__dst, 0x743uLL);
          v25 = 0;
          v26 = 0;
          goto LABEL_14;
        }

        adc = self->_adc;
        v14 = self->_adaptiveCorrectionKeypointsDistorted[0];
        v15 = self->_adaptiveCorrectionKeypointsDistorted[1];
        undistModels = self->_undistModels;
        v17 = &self->_undistModels[1];
        p_correctedCalibration = &self->_correctedCalibration;
        if (self->_temporalCorrectionEnabled)
        {
          v19 = sub_2956FAB30(adc, v14, v15, keypointsCount, undistModels, v17, p_correctedCalibration->focalLengthPix);
        }

        else
        {
          v19 = sub_2956FBDC4(adc, v14, v15, keypointsCount, undistModels, &v17->pixelSizeMM, p_correctedCalibration);
        }

        if (!v19)
        {
          sub_2956FAAD4(self->_adc, v58);
          v25 = *v58;
          v26 = v58[4];
          memcpy(__dst, &v58[5], sizeof(__dst));
LABEL_14:
          v28 = *&self->_distModels[0].polyDynamic[2];
          *&v58[96] = *self->_distModels[0].polyDynamic;
          v27 = *&v58[96];
          *&v58[112] = v28;
          v29 = *&self->_distModels[0].polyDynamic[6];
          *&v58[128] = *&self->_distModels[0].polyDynamic[4];
          *&v58[144] = v29;
          v31 = *&self->_distModels[0].polyBase[2];
          *&v58[32] = *self->_distModels[0].polyBase;
          v30 = *&v58[32];
          *&v58[48] = v31;
          v32 = *&self->_distModels[0].polyBase[6];
          *&v58[64] = *&self->_distModels[0].polyBase[4];
          *&v58[80] = v32;
          v33 = *&self->_distModels[0].opticalCenterX;
          *v58 = *&self->_distModels[0].pixelSizeMM;
          *&v58[16] = v33;
          v34 = *&self->_undistModels[0].opticalCenterX;
          *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
          *&self->_distModels[0].opticalCenterX = v34;
          v35 = *&v58[48];
          v36 = *&v58[80];
          v37 = *&v58[112];
          *&self->_distModels[0].polyBase[4] = *&v58[64];
          *&self->_distModels[0].polyBase[6] = v36;
          *self->_distModels[0].polyBase = v30;
          *&self->_distModels[0].polyBase[2] = v35;
          *self->_distModels[0].polyDynamic = v27;
          *&self->_distModels[0].polyDynamic[2] = v37;
          v38 = *&v58[144];
          *&self->_distModels[0].polyDynamic[4] = *&v58[128];
          *&self->_distModels[0].polyDynamic[6] = v38;
          v40 = *&self->_distModels[1].polyDynamic[2];
          *&v58[96] = *self->_distModels[1].polyDynamic;
          v39 = *&v58[96];
          *&v58[112] = v40;
          v41 = *&self->_distModels[1].polyDynamic[6];
          *&v58[128] = *&self->_distModels[1].polyDynamic[4];
          *&v58[144] = v41;
          v43 = *&self->_distModels[1].polyBase[2];
          *&v58[32] = *self->_distModels[1].polyBase;
          v42 = *&v58[32];
          *&v58[48] = v43;
          v44 = *&self->_distModels[1].polyBase[6];
          *&v58[64] = *&self->_distModels[1].polyBase[4];
          *&v58[80] = v44;
          v45 = *&self->_distModels[1].opticalCenterX;
          *v58 = *&self->_distModels[1].pixelSizeMM;
          *&v58[16] = v45;
          v46 = *&self->_undistModels[1].opticalCenterX;
          *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
          *&self->_distModels[1].opticalCenterX = v46;
          v47 = *&v58[48];
          v48 = *&v58[80];
          v49 = *&v58[112];
          *&self->_distModels[1].polyBase[4] = *&v58[64];
          *&self->_distModels[1].polyBase[6] = v48;
          *self->_distModels[1].polyBase = v42;
          *&self->_distModels[1].polyBase[2] = v47;
          *self->_distModels[1].polyDynamic = v39;
          *&self->_distModels[1].polyDynamic[2] = v49;
          v50 = *&v58[144];
          *&self->_distModels[1].polyDynamic[4] = *&v58[128];
          *&self->_distModels[1].polyDynamic[6] = v50;
          objc_msgSend__computeCanonicalDisparityScaleFactor(self, v20, v21, v22, v23, v24, *v58, *&v58[16], *&v58[32], *&v58[48], *&v58[64], *&v58[80], *&v58[96], *&v58[112], *&v58[128], *&v58[144]);
          self->_correctedCalibration.canonicalDisparityScale = v51;
          *v58 = v25;
          v58[4] = v26;
          memcpy(&v58[5], __dst, 0x743uLL);
          v56 = objc_msgSend__checkADCStatus_(self, v52, v58, v53, v54, v55);
          if (v56)
          {
            sub_295704F60();
          }

          return v56;
        }

        sub_295704EE4();
        return 3;
      }

      sub_295704E6C();
    }

    else
    {
      sub_295704DF8();
    }

    return 0;
  }

  return (MEMORY[0x2A1C70FE8])(self, sel__computeCalibrationWithoutDistortion);
}

- (float)referenceMagnification
{
  v2 = self->_initialCalibration.focalLengthPix[1];
  result = 0.0;
  if (v2 != 0.0)
  {
    return self->_initialCalibration.focalLengthPix[0] / v2;
  }

  return result;
}

- (void)setKeypointsForReference:(double *)reference auxiliary:(double *)auxiliary keypointCount:(unsigned int)count
{
  self->_adaptiveCorrectionKeypointsDistorted[0] = reference;
  self->_adaptiveCorrectionKeypointsDistorted[1] = auxiliary;
  self->_keypointsCount = count;
}

- (DistortionModel)distModelFor:(SEL)for
{
  v4 = &self[a4];
  v5 = *&v4[2].polyBase[6];
  *retstr->polyDynamic = *&v4[2].polyBase[4];
  *&retstr->polyDynamic[2] = v5;
  v6 = *&v4[2].polyDynamic[2];
  *&retstr->polyDynamic[4] = *v4[2].polyDynamic;
  *&retstr->polyDynamic[6] = v6;
  v7 = *&v4[2].opticalCenterX;
  *retstr->polyBase = *&v4[2].pixelSizeMM;
  *&retstr->polyBase[2] = v7;
  v8 = *&v4[2].polyBase[2];
  *&retstr->polyBase[4] = *v4[2].polyBase;
  *&retstr->polyBase[6] = v8;
  v9 = *&v4[1].polyDynamic[6];
  *&retstr->pixelSizeMM = *&v4[1].polyDynamic[4];
  *&retstr->opticalCenterX = v9;
  return self;
}

- (DistortionModel)undistModelFor:(SEL)for
{
  v4 = &self[a4];
  v5 = *&v4[4].polyBase[6];
  *retstr->polyDynamic = *&v4[4].polyBase[4];
  *&retstr->polyDynamic[2] = v5;
  v6 = *&v4[4].polyDynamic[2];
  *&retstr->polyDynamic[4] = *v4[4].polyDynamic;
  *&retstr->polyDynamic[6] = v6;
  v7 = *&v4[4].opticalCenterX;
  *retstr->polyBase = *&v4[4].pixelSizeMM;
  *&retstr->polyBase[2] = v7;
  v8 = *&v4[4].polyBase[2];
  *&retstr->polyBase[4] = *v4[4].polyBase;
  *&retstr->polyBase[6] = v8;
  v9 = *&v4[3].polyDynamic[6];
  *&retstr->pixelSizeMM = *&v4[3].polyDynamic[4];
  *&retstr->opticalCenterX = v9;
  return self;
}

- (BOOL)_computeAdcDistortionModels
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  pixelSize_um = self->_initialCalibration.pixelSize_um;
  distortionOpticalCenter = self->_distortionOpticalCenter;
  distModels = self->_distModels;
  ddf = self->_ddf;
  undistModels = self->_undistModels;
  portTypeName = self->_portTypeName;
  opticalCenterX = self->_initialCalibration.opticalCenterX;
  rawSensorSize = self->_rawSensorSize;
  opticalCenterY = self->_initialCalibration.opticalCenterY;
  pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
  pixelBufferDimensions = self->_pixelBufferDimensions;
  v94 = *MEMORY[0x29EDC0328];
  v93 = *MEMORY[0x29EDC0330];
  v9 = 1;
  __asm
  {
    FMOV            V1.2D, #-1.0
    FMOV            V0.2D, #0.5
  }

  v86 = _Q0;
  v87 = _Q1;
  while (1)
  {
    v16 = v9;
    v17 = &distortionOpticalCenter[v5];
    v18.f64[0] = v17->x;
    if (v17->x == 0.0 || (y = v17->y, y == 0.0) || (v20 = &rawSensorSize[v5], v20->f64[0] <= 0.0) || v20->f64[1] <= 0.0)
    {
      v23 = opticalCenterY[v5];
      v24 = &distModels[v5];
      v24->opticalCenterX = opticalCenterX[v5];
      v24->opticalCenterY = v23;
    }

    else
    {
      v21 = pixelBufferDimensions[v5];
      v22.i64[0] = v21.width;
      v22.i64[1] = v21.height;
      v18.f64[1] = y;
      *&distModels[v5].opticalCenterX = vmlaq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v22), v87), v86), vcvtq_f64_f32(*&pixelBufferScalingFactor[8 * v5]), vsubq_f64(v18, vmulq_f64(vaddq_f64(*v20, v87), v86)));
    }

    v25 = pixelSize_um[v5] / 1000.0;
    v26 = &distModels[v5];
    v27 = ddf[v5] / v25;
    v26->pixelSizeMM = v25;
    v26->focalLengthPix = v27;
    v28 = *&v26->polyDynamic[2];
    p_pixelSizeMM = &undistModels[v5].pixelSizeMM;
    p_pixelSizeMM[6] = *v26->polyDynamic;
    p_pixelSizeMM[7] = v28;
    v30 = *&v26->polyDynamic[6];
    p_pixelSizeMM[8] = *&v26->polyDynamic[4];
    p_pixelSizeMM[9] = v30;
    v31 = *&v26->polyBase[2];
    p_pixelSizeMM[2] = *v26->polyBase;
    p_pixelSizeMM[3] = v31;
    v32 = *&v26->polyBase[6];
    p_pixelSizeMM[4] = *&v26->polyBase[4];
    p_pixelSizeMM[5] = v32;
    v33 = *&v26->opticalCenterX;
    *p_pixelSizeMM = *&v26->pixelSizeMM;
    p_pixelSizeMM[1] = v33;
    v34 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, portTypeName[v5], v2, v3, v4, *&v86, *&v87, pixelBufferScalingFactor, pixelBufferDimensions);
    v39 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"gdcCoefficients", v36, v37, v38);
    v44 = objc_msgSend_objectForKeyedSubscript_(v39, v40, v94, v41, v42, v43);

    if (!v44)
    {
      sub_2957051FC(v7);
      goto LABEL_24;
    }

    v45 = v44;
    v51 = objc_msgSend_bytes(v45, v46, v47, v48, v49, v50);
    if (!v51)
    {
      sub_29570516C(v7);
      goto LABEL_24;
    }

    v56 = v51;
    v57 = distModels;
    v58 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v52, portTypeName[v5], v53, v54, v55);
    v63 = objc_msgSend_objectForKeyedSubscript_(v58, v59, @"gdcCoefficients", v60, v61, v62);
    v68 = objc_msgSend_objectForKeyedSubscript_(v63, v64, v93, v65, v66, v67);

    if (!v68)
    {
      sub_2957050F4();
      goto LABEL_24;
    }

    v69 = v68;
    v7 = v68;
    v75 = objc_msgSend_bytes(v69, v70, v71, v72, v73, v74);
    if (!v75)
    {
      sub_295705064(v68);
      goto LABEL_24;
    }

    v6 = v44;
    v76 = (v56 + 32);
    v77 = (v75 + 32);
    polyDynamic = v26->polyDynamic;
    v79 = 1;
    v80 = 8;
    do
    {
      polyDynamic[32] = *(v76 - 8);
      v81 = *(v77 - 8);
      polyDynamic[40] = v81;
      v79 &= v81 == 0.0;
      v82 = *v76++;
      *(polyDynamic - 8) = v82;
      v83 = *v77++;
      *polyDynamic++ = v83;
      --v80;
    }

    while (v80);
    distModels = v57;
    if ((v79 & 1) == 0 && ddf[v5] <= 0.0)
    {
      break;
    }

    v9 = 0;
    v5 = 1;
    if ((v16 & 1) == 0)
    {

      v84 = 1;
      goto LABEL_18;
    }
  }

  sub_295704FD4(v68);
LABEL_24:
  v84 = 0;
LABEL_18:

  return v84;
}

- (void)setReferenceBufferDimensions:(id)dimensions auxillaryBufferDimensions:(id)bufferDimensions normalizedReferenceFinalCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  var0 = dimensions.var0;
  var1 = dimensions.var1;
  self->_pixelBufferDimensions[0] = dimensions;
  self->_pixelBufferDimensions[1] = bufferDimensions;
  IsNull = CGRectIsNull(rect);
  v13 = 1.0;
  v14 = 0.0;
  if (IsNull)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = x;
  }

  if (IsNull)
  {
    v16 = 1.0;
  }

  else
  {
    v14 = y;
    v16 = width;
  }

  if (!IsNull)
  {
    v13 = height;
  }

  self->_referenceFinalCropRect.origin.x = v15 * var0;
  self->_referenceFinalCropRect.origin.y = v14 * var1;
  self->_referenceFinalCropRect.size.width = v16 * var0;
  self->_referenceFinalCropRect.size.height = v13 * var1;
}

- (int)_checkADCStatus:(AdaptiveCorrectionStatus *)status
{
  if (!status->var1)
  {
    sub_29570528C(self, a2);
    return 1;
  }

  if (!status->var4)
  {
    sub_295705304(self, a2);
    return 1;
  }

  if (!status->var9)
  {
    sub_29570537C(self, a2);
    return 2;
  }

  if (!status->var13)
  {
    sub_2957053F4(self, a2);
    return 1;
  }

  if (!status->var19)
  {
    sub_29570546C(self, a2);
    return 2;
  }

  if (!status->var25)
  {
    sub_2957054E4(self, a2);
    return 1;
  }

  if (!status->var28)
  {
    sub_29570555C(self, a2);
    return 2;
  }

  return 0;
}

- (int)_allocateResourcesForMaxNumOfTransposedPoints:(unsigned int)points
{
  v4 = 16 * points;
  v5 = malloc_type_malloc(v4, 0x100004000313F17uLL);
  self->_transposedKeypoints.xyPointsTeleTransposed = v5;
  if (v5)
  {
    v6 = malloc_type_malloc(v4, 0x100004000313F17uLL);
    self->_transposedKeypoints.xyPointsWideTransposed = v6;
    if (v6)
    {
      return 0;
    }

    sub_2957055D4();
  }

  else
  {
    sub_295705648();
  }

  return -12786;
}

- (void)_releaseResourcesForTransformedPoints
{
  xyPointsTeleTransposed = self->_transposedKeypoints.xyPointsTeleTransposed;
  if (xyPointsTeleTransposed)
  {
    self->_transposedKeypoints.xyPointsTeleTransposed = 0;
    free(xyPointsTeleTransposed);
  }

  xyPointsWideTransposed = self->_transposedKeypoints.xyPointsWideTransposed;
  if (xyPointsWideTransposed)
  {
    self->_transposedKeypoints.xyPointsWideTransposed = 0;

    free(xyPointsWideTransposed);
  }
}

- (int)_computeCalibrationWithoutDistortion
{
  v3 = *&self->_initialCalibration.canonicalDisparityScale;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
  *&self->_correctedCalibration.canonicalDisparityScale = v3;
  *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
  v4 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v4;
  v5 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v5;
  v6 = *self->_initialCalibration.opticalCenterX;
  *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
  *self->_correctedCalibration.opticalCenterX = v6;
  v7 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
  *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
  memset(v51, 0, 512);
  v50 = 0;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v7;
  if (self->_keypointsCount)
  {
    v8 = *self->_correctedCalibration.extrinRotRefefenceToAuxiliary;
    *&v8.f64[0] = vcvt_f32_f64(v8);
    v9 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2];
    *&v9.f64[0] = vcvt_f32_f64(v9);
    v10 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4];
    *&v10.f64[0] = vcvt_f32_f64(v10);
    v11 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8];
    *&v11.f64[0] = vcvt_f32_f64(v11);
    v12 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10];
    *&v12.f64[0] = vcvt_f32_f64(v12);
    v13 = vzip1q_s32(v8, v11);
    v14 = vzip1q_s32(v9, v12);
    v15 = vzip2q_s32(vcvt_hight_f32_f64(*&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6], *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6]), 0);
    v53.columns[0] = vzip1q_s32(v13, v10);
    v53.columns[2] = vzip1q_s32(v14, v15);
    v53.columns[1] = vzip2q_s32(v13, vdupq_lane_s32(*&v10.f64[0], 1));
    v37 = v53.columns[0];
    v38 = v53.columns[2];
    v35 = v53.columns[1];
    v36 = vzip2q_s32(v14, v15);
    v16 = sub_2956FC2A8(&v45, &v43, &v41, v53, v36);
    if (v16)
    {
      sub_2957056BC(v16, v17);
      return 3;
    }

    v18 = sub_2956FC5C0(&self->_correctedCalibration, v49, v45, v46, v47, v48, v43, v44, v41, v42);
    if (v18)
    {
      sub_295705738(v18, v19);
      return 3;
    }

    v20 = sub_2956FC6B8(self->_adaptiveCorrectionKeypointsDistorted[0], self->_keypointsCount, self->_transposedKeypoints.xyPointsTeleTransposed, v43, v44);
    if (v20)
    {
      sub_2957057B4(v20, v21);
      return 3;
    }

    v22 = sub_2956FC6B8(self->_adaptiveCorrectionKeypointsDistorted[1], self->_keypointsCount, self->_transposedKeypoints.xyPointsWideTransposed, v41, v42);
    if (v22)
    {
      sub_295705830(v22, v23);
      return 3;
    }

    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_2957063F0(v39, self->_transposedKeypoints.xyPointsTeleTransposed, self->_transposedKeypoints.xyPointsWideTransposed, self->_keypointsCount, v49, &self->_adaptiveCorrectionConfig, v51);
    v54.columns[0] = v43;
    v54.columns[1] = v44;
    v24 = __invert_f2(v54);
    v55.columns[0] = v41;
    v55.columns[1] = v42;
    v25 = __invert_f2(v55);
    v26 = sub_2956FC5C0(v39, &self->_correctedCalibration, v37, v35, v38, v36, v24.columns[0], v24.columns[1], v25.columns[0], v25.columns[1]);
    if (v26)
    {
      sub_2957058AC(v26, v39);
      return 3;
    }
  }

  else
  {
    bzero(v51, 0x748uLL);
  }

  v32 = objc_msgSend__computeCanonicalDisparityScaleFactor(self, v27, v28, v29, v30, v31, *&v35, *&v36, *&v37, *&v38);
  self->_correctedCalibration.canonicalDisparityScale = v33;
  if (BYTE4(v51[0]))
  {
    if (v52)
    {
      return 0;
    }

    else
    {
      sub_2957059A0(v32);
      return 2;
    }
  }

  else
  {
    sub_295705928(v32);
    return 1;
  }
}

- (int)computeStereoRectificationHomographies:(float)homographies alignedToAngle:
{
  *self->_limitDistances_mm = *&homographies;
  self->_rectificationAngleStep = (v3 / 180.0) * 3.1416;
  *self->_anon_6b0 = 0u;
  *&self->_anon_6b0[16] = 0u;
  *&self->_anon_6b0[32] = 0u;
  *self->_anon_6e0 = 0u;
  *&self->_anon_6e0[16] = 0u;
  *&self->_anon_6e0[32] = 0u;
  *self->_anon_710 = 0u;
  anon_6b0 = self->_anon_6b0;
  *&self->_anon_710[16] = 0u;
  *&self->_anon_710[32] = 0u;
  v6 = sub_2956FC99C(&self->_correctedCalibration, self->_anon_6b0, self->_anon_6e0, self->_anon_710, 0, 0);
  if (v6)
  {
    v57 = v6;
    sub_295705A18();
    return v57;
  }

  v12 = objc_msgSend__computeCenteredRectificationHomographies(self, v7, v8, v9, v10, v11);
  if (v12)
  {
    v57 = v12;
    sub_295705A90();
    return v57;
  }

  v21 = *self->_orientationVector;
  if (sqrtf(vaddv_f32(vmul_f32(v21, v21))) <= 0.0)
  {
    sub_295705BF8();
    return -12780;
  }

  v18.i64[0] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[3];
  *v18.i32 = *v18.i64;
  *v18.i32 = -*v18.i32;
  v22 = self->_initialCalibration.extrinRotRefefenceToAuxiliary[7];
  *v19.i32 = -v22;
  if (sqrtf(vaddv_f32(vmul_f32(__PAIR64__(v19.u32[0], v18.u32[0]), __PAIR64__(v19.u32[0], v18.u32[0])))) <= 0.0)
  {
    sub_295705B80();
    return -12780;
  }

  v20.i32[0] = 1.0;
  v23.i64[0] = 0x8000000080000000;
  v23.i64[1] = 0x8000000080000000;
  v24 = *vbslq_s8(v23, v20, v18).i32;
  LODWORD(v25) = vbslq_s8(v23, v20, v19).u32[0];
  v20.i64[0] = 0;
  v26 = 0;
  if (v24 <= 0.0)
  {
    *v26.i32 = self->_pixelBufferDimensions[0].width + -1.0;
  }

  if (v25 <= 0.0)
  {
    *v20.i32 = self->_pixelBufferDimensions[0].height + -1.0;
  }

  v27 = 0;
  __asm { FMOV            V3.4S, #1.0 }

  v32 = vzip2q_s32(vdupq_lane_s32(v26, 0), _Q3);
  v33 = LODWORD(v24);
  v34.i32[0] = 0;
  v34.i64[1] = 0;
  v34.f32[1] = v25;
  _Q3.i64[0] = __PAIR64__(v20.u32[0], v26.u32[0]);
  *self->_orientationVector = vbsl_s8(vcltz_f32(v21), vneg_f32(v21), v21);
  v36 = *&self->_anon_710[16];
  v37 = *&self->_anon_710[32];
  v38 = vzip1q_s32(v32, v20);
  v59 = *self->_anon_710;
  v60 = v36;
  v61 = v37;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  do
  {
    *(&v62 + v27 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v59 + v27 * 4))), v34, *&v59.f32[v27], 1), _Q3, *(&v59 + v27 * 4), 2);
    v27 += 4;
  }

  while (v27 != 12);
  v39 = 0;
  v33.i32[3] = 0;
  v34.i32[3] = 0;
  v38.i32[3] = 0;
  v40 = v62;
  v41 = v63;
  v42 = v64;
  *(anon_6b0 + 26) = DWORD2(v62);
  *(anon_6b0 + 30) = DWORD2(v41);
  *(anon_6b0 + 12) = v40;
  *(anon_6b0 + 14) = v41;
  *(anon_6b0 + 34) = DWORD2(v42);
  *(anon_6b0 + 16) = v42;
  v43 = *self->_anon_6b0;
  v44 = *&self->_anon_6b0[16];
  v45 = *&self->_anon_6b0[32];
  v59 = v33;
  v60 = v34;
  v61 = v38;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  do
  {
    *(&v62 + v39 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v59 + v39 * 4))), v44, *&v59.f32[v39], 1), v45, *(&v59 + v39 * 4), 2);
    v39 += 4;
  }

  while (v39 != 12);
  v46 = 0;
  v47 = v62;
  v48 = v63;
  v49 = v64;
  *(anon_6b0 + 2) = DWORD2(v62);
  *(anon_6b0 + 6) = DWORD2(v48);
  *anon_6b0 = v47;
  *(anon_6b0 + 2) = v48;
  *(anon_6b0 + 10) = DWORD2(v49);
  *(anon_6b0 + 4) = v49;
  v50 = *self->_anon_6e0;
  v51 = *&self->_anon_6e0[16];
  v52 = *&self->_anon_6e0[32];
  v59 = v33;
  v60 = v34;
  v61 = v38;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  do
  {
    *(&v62 + v46 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v59 + v46 * 4))), v51, *&v59.f32[v46], 1), v52, *(&v59 + v46 * 4), 2);
    v46 += 4;
  }

  while (v46 != 12);
  v53 = v62;
  v54 = v63;
  v55 = v64;
  *(anon_6b0 + 14) = DWORD2(v62);
  *(anon_6b0 + 18) = DWORD2(v54);
  *(anon_6b0 + 6) = v53;
  *(anon_6b0 + 8) = v54;
  *(anon_6b0 + 22) = DWORD2(v55);
  *(anon_6b0 + 10) = v55;
  v56 = objc_msgSend__computePaddedAuxiliaryRectificationHomography(self, v13, v14, v15, v16, v17, *&v59, *&v60, *&v61);
  v57 = v56;
  if (v56)
  {
    sub_295705B08(v56);
  }

  return v57;
}

- (int)_computePaddedAuxiliaryRectificationHomography
{
  v2 = 0;
  v3 = self->_correctedCalibration.focalLengthPix[0];
  v4.f64[0] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[3];
  v4.f64[1] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[7];
  *&v4.f64[0] = vcvt_f32_f64(v4);
  v5 = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[11];
  *&v4.f64[1] = v5;
  v6 = vmulq_f32(v4, v4);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32)) * v3;
  v8 = *self->_limitDistances_mm;
  v9 = v7 / *&v8;
  v10 = *self->_orientationVector;
  v11 = -*&v10;
  if (*&v10 >= 0.0)
  {
    LODWORD(v11) = *self->_orientationVector;
  }

  v12 = (self->_pixelBufferDimensions[0].width + (v11 * v9)) / self->_pixelBufferDimensions[0].width;
  LODWORD(v10) = HIDWORD(*self->_orientationVector);
  if (*(&v10 + 1) < 0.0)
  {
    *&v10 = -*(&v10 + 1);
  }

  *&v13 = 1.0 / v12;
  LODWORD(v14) = 0;
  *(&v14 + 1) = 1.0 / ((self->_pixelBufferDimensions[0].height + (*&v10 * v9)) / self->_pixelBufferDimensions[0].height);
  *&self->_anon_680[8] = 0;
  *self->_anon_680 = v13;
  *&self->_anon_680[24] = 0;
  *&self->_anon_680[16] = v14;
  *&self->_anon_680[40] = 1065353216;
  *&self->_anon_680[32] = 0;
  v15 = *self->_anon_6e0;
  v16 = *&self->_anon_6e0[16];
  v17 = *&self->_anon_6e0[32];
  v22[2] = xmmword_29570C8F0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  do
  {
    *(&v23 + v2 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(v22[v2])), v16, *&v22[v2], 1), v17, v22[v2], 2);
    ++v2;
  }

  while (v2 != 3);
  v18 = v23;
  v19 = v24;
  *&self->_anon_6e0[8] = DWORD2(v23);
  *self->_anon_6e0 = v18;
  v20 = v25;
  *&self->_anon_6e0[24] = DWORD2(v19);
  *&self->_anon_6e0[40] = DWORD2(v20);
  *&self->_anon_6e0[16] = v19;
  *&self->_anon_6e0[32] = v20;
  self->_nearLimitDisparity = v9;
  self->_midLimitDisparity = v7 / *(&v8 + 1);
  return 0;
}

- (int)_computeCenteredRectificationHomographies
{
  anon_6b0 = self->_anon_6b0;
  v4 = *&self->_undistModels[0].polyDynamic[2];
  v159 = *self->_undistModels[0].polyDynamic;
  v160 = v4;
  v5 = *&self->_undistModels[0].polyDynamic[6];
  v161 = *&self->_undistModels[0].polyDynamic[4];
  v162 = v5;
  v6 = *&self->_undistModels[0].polyBase[2];
  v155 = *self->_undistModels[0].polyBase;
  v156 = v6;
  v7 = *&self->_undistModels[0].polyBase[6];
  v157 = *&self->_undistModels[0].polyBase[4];
  v158 = v7;
  v8 = *&self->_undistModels[0].opticalCenterX;
  v153 = *&self->_undistModels[0].pixelSizeMM;
  v154 = v8;
  x = self->_referenceFinalCropRect.origin.x;
  *&v8 = self->_referenceFinalCropRect.origin.y;
  v10 = x + self->_referenceFinalCropRect.size.width;
  v11 = *&v8 + self->_referenceFinalCropRect.size.height;
  v138.f64[0] = x;
  *&v138.f64[1] = v8;
  v139 = v10;
  v140 = v8;
  v141 = x;
  v142 = v11;
  v143 = v10;
  v144 = v11;
  v145 = v154;
  v146 = v8;
  v147 = v154;
  v148 = v11;
  v149 = x;
  v150 = *(&v154 + 1);
  v151 = v10;
  v152 = *(&v154 + 1);
  memset(v137, 0, sizeof(v137));
  v12 = sub_2956FC848(&v138, 8, &v153, v137);
  v18 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  memset(v136, 0, sizeof(v136));
  do
  {
    *&v24 = vcvt_f32_f64(v137[v18]);
    *(&v24 + 1) = _D0;
    v136[v18++] = v24;
  }

  while (v18 != 8);
  v25 = 0;
  v134 = 0u;
  v135 = 0u;
  v26 = *anon_6b0;
  v27 = *(anon_6b0 + 1);
  v28 = *(anon_6b0 + 2);
  v29.i64[0] = 0x3F0000003F000000;
  v29.i64[1] = 0x3F0000003F000000;
  do
  {
    v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(v136[v25])), v27, *&v136[v25], 1), v28, v136[v25], 2);
    if (v30.f32[2] <= 0.0)
    {
      sub_295705C70(v12);
      return -12780;
    }

    *(&v134 + (v25 & 1)) = vmlaq_f32(*(&v134 + (v25 & 1)), v29, vdivq_f32(v30, vdupq_laneq_s32(v30, 2)));
    ++v25;
  }

  while (v25 != 4);
  v129 = v28;
  v130 = v27;
  v131 = v26;
  v34 = vsubq_f32(v135, v134);
  v31 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v34, v34)));
  v32 = vrsqrte_f32(v31);
  v33 = vmul_f32(v32, vrsqrts_f32(v31.u32[0], vmul_f32(v32, v32)));
  *v34.f32 = vmul_n_f32(*v34.f32, vmul_f32(v33, vrsqrts_f32(v31.u32[0], vmul_f32(v33, v33))).f32[0]);
  __asm { FMOV            V2.2S, #-1.0 }

  *v26.f32 = vminnm_f32(vmaxnm_f32(*v34.f32, _D2), _D0);
  *self->_orientationVector = v26.i64[0];
  rectificationAngleStep = self->_rectificationAngleStep;
  if (rectificationAngleStep != 0.0)
  {
    v132 = v26;
    *v37.i32 = rectificationAngleStep * roundf(acosf(v26.f32[0]) / rectificationAngleStep);
    v38 = v132;
    v38.i32[0] = v132.i32[1];
    v39.i64[0] = 0x8000000080000000;
    v39.i64[1] = 0x8000000080000000;
    LODWORD(v128) = vbslq_s8(v39, v37, v38).u32[0];
    v40.f32[0] = cosf(*v37.i32);
    v133 = v40;
    v41 = sinf(v128);
    v26 = v133;
    v26.f32[1] = v41;
    *self->_orientationVector = v26.i64[0];
  }

  v42 = 0;
  *v34.f32 = vrev64_s32(*v26.f32);
  v48.i64[0] = 0;
  v48.i32[3] = 0;
  *&v48.i32[2] = -v26.f32[1];
  v43 = vdupq_lane_s32(*v34.f32, 1);
  v44 = v26;
  v44.i32[1] = 0;
  v45 = vzip1q_s32(v44, v34);
  v34.i64[0] = v26.i64[0];
  v46 = vzip2q_s32(v48, v43);
  v28.f32[0] = self->_correctedCalibration.focalLengthPix[0];
  v43.f64[0] = self->_correctedCalibration.opticalCenterX[0];
  v43.f64[1] = self->_correctedCalibration.opticalCenterY[0];
  v47 = vcvt_f32_f64(v43);
  v48.i64[1] = 0;
  *v48.i32 = 1.0 / v28.f32[0];
  v49.i32[0] = 0;
  v49.i64[1] = 0;
  v49.f32[1] = 1.0 / v28.f32[0];
  *v50.f32 = vdiv_f32(vneg_f32(v47), vdup_lane_s32(*v28.f32, 0));
  v50.i64[1] = COERCE_UNSIGNED_INT(1.0);
  v51 = v28.u32[0];
  v163 = COERCE_UNSIGNED_INT(1.0 / v28.f32[0]);
  v164 = v49.u64[0];
  v165 = v50;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v42) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v163 + v42))), v46, *&v163.i8[v42], 1), xmmword_29570C8F0, *(&v163 + v42), 2);
    v42 += 16;
  }

  while (v42 != 48);
  v52 = 0;
  __asm { FMOV            V6.4S, #1.0 }

  v54.i64[1] = _Q6.i64[1];
  *v54.f32 = v47;
  v55.i32[0] = 0;
  v55.i64[1] = 0;
  v55.i32[1] = v28.i32[0];
  v163 = v166;
  v164 = v167;
  v165 = v168;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v52) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28.u32[0], COERCE_FLOAT(*(&v163 + v52))), v55, *&v163.i8[v52], 1), v54, *(&v163 + v52), 2);
    v52 += 16;
  }

  while (v52 != 48);
  v56 = 0;
  v57 = v166;
  v58 = v167;
  v59 = v168;
  v60 = vdupq_lane_s32(*v46.f32, 1);
  v61 = vzip1q_s32(v45, v46);
  v61.i32[2] = 0;
  v62 = vzip2q_s32(vzip1q_s32(v45, 0), v60);
  v63 = vdupq_laneq_s32(v45, 2);
  v63.i32[1] = 0;
  v63.i32[2] = 1.0;
  v163 = v48;
  v164 = v49;
  v165 = v50;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v56) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(*(&v163 + v56))), v62, *&v163.i8[v56], 1), v63, *(&v163 + v56), 2);
    v56 += 16;
  }

  while (v56 != 48);
  v64 = 0;
  v163 = v166;
  v164 = v167;
  v165 = v168;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v64) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28.u32[0], COERCE_FLOAT(*(&v163 + v64))), v55, *&v163.i8[v64], 1), v54, *(&v163 + v64), 2);
    v64 += 16;
  }

  while (v64 != 48);
  v65 = 0;
  v66 = v166;
  v67 = v167;
  v68 = v168;
  v69 = *(anon_6b0 + 7);
  v70 = *(anon_6b0 + 8);
  v163 = *(anon_6b0 + 6);
  v164 = v69;
  v165 = v70;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v65) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v163 + v65))), v58, *&v163.i8[v65], 1), v59, *(&v163 + v65), 2);
    v65 += 16;
  }

  while (v65 != 48);
  v71 = 0;
  v66.i32[3] = 0;
  v67.i32[3] = 0;
  v68.i32[3] = 0;
  v72 = v166.i64[0];
  v73 = v167;
  v74 = v168;
  *(anon_6b0 + 26) = v166.i32[2];
  *(anon_6b0 + 12) = v72;
  *(anon_6b0 + 30) = v73.i32[2];
  *(anon_6b0 + 14) = v73.i64[0];
  *(anon_6b0 + 34) = v74.i32[2];
  *(anon_6b0 + 16) = v74.i64[0];
  v163 = v66;
  v164 = v67;
  v165 = v68;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v75.i32[1] = v129.i32[1];
  do
  {
    *(&v166 + v71) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, COERCE_FLOAT(*(&v163 + v71))), v130, *&v163.i8[v71], 1), v129, *(&v163 + v71), 2);
    v71 += 16;
  }

  while (v71 != 48);
  v76 = 0;
  v77 = v166.i64[0];
  v78 = v167;
  v79 = v168;
  *(anon_6b0 + 2) = v166.i32[2];
  *(anon_6b0 + 6) = v78.i32[2];
  *anon_6b0 = v77;
  *(anon_6b0 + 2) = v78.i64[0];
  *(anon_6b0 + 10) = v79.i32[2];
  *(anon_6b0 + 4) = v79.i64[0];
  v80 = *(anon_6b0 + 3);
  v81 = *(anon_6b0 + 4);
  v82 = *(anon_6b0 + 5);
  v163 = v66;
  v164 = v67;
  v165 = v68;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v76) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, COERCE_FLOAT(*(&v163 + v76))), v81, *&v163.i8[v76], 1), v82, *(&v163 + v76), 2);
    v76 += 16;
  }

  while (v76 != 48);
  v83 = 0;
  v84 = v166.i64[0];
  v85 = v167;
  v86 = v168;
  *(anon_6b0 + 14) = v166.i32[2];
  *(anon_6b0 + 18) = v85.i32[2];
  *(anon_6b0 + 6) = v84;
  *(anon_6b0 + 8) = v85.i64[0];
  *(anon_6b0 + 22) = v86.i32[2];
  *(anon_6b0 + 10) = v86.i64[0];
  v87 = *(anon_6b0 + 6);
  v88 = *(anon_6b0 + 7);
  v89 = 0x80000000800000;
  v90 = vneg_f32(0x80000000800000);
  v91 = *(anon_6b0 + 8);
  do
  {
    v92 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(v136[v83])), v88, *&v136[v83], 1), v91, v136[v83], 2);
    if (*&v92.i32[2] <= 0.0)
    {
      sub_295705CE4();
      return -12780;
    }

    v93 = vdiv_f32(*v92.i8, *&vdupq_laneq_s32(v92, 2));
    v90 = vminnm_f32(v90, v93);
    v89 = vmaxnm_f32(v89, v93);
    ++v83;
  }

  while (v83 != 8);
  v94 = 0;
  v95 = vcvt_f32_s32(self->_pixelBufferDimensions[0]);
  v96 = vdiv_f32(v95, vsub_f32(v89, v90));
  if (v96.f32[0] >= v96.f32[1])
  {
    v96.f32[0] = v96.f32[1];
  }

  *v75.i32 = v96.f32[0] * v28.f32[0];
  v97.i64[1] = _Q6.i64[1];
  *v97.f32 = vmla_n_f32(vmul_f32(v95, 0x3F0000003F000000), vsub_f32(v47, vmul_f32(vadd_f32(v90, v89), 0x3F0000003F000000)), v96.f32[0]);
  v98.i32[0] = 0;
  v98.i64[1] = 0;
  v98.i32[1] = v75.i32[0];
  v99.i64[1] = 0;
  *_Q6.f32 = vdiv_f32(vneg_f32(*v97.f32), vdup_lane_s32(v75, 0));
  LODWORD(self->_rectificationFocalLengthFactor) = v96.i32[0];
  v163 = v48;
  v164 = v49;
  v165 = v50;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v94) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75.u32[0], COERCE_FLOAT(*(&v163 + v94))), v98, *&v163.i8[v94], 1), v97, *(&v163 + v94), 2);
    v94 += 16;
  }

  while (v94 != 48);
  v100 = 0;
  LODWORD(v101) = 0;
  *(&v101 + 1) = 1.0 / *v75.i32;
  _Q6.i32[3] = 0;
  v102 = v166;
  v103 = v167;
  v104 = v168;
  v99.i64[0] = COERCE_UNSIGNED_INT(1.0 / *v75.i32);
  v163 = v99;
  v164 = v101;
  v165 = _Q6;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v100) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v163 + v100))), v55, *&v163.i8[v100], 1), v54, *(&v163 + v100), 2);
    v100 += 16;
  }

  while (v100 != 48);
  v105 = 0;
  v106 = v166;
  v107 = v167;
  v108 = v168;
  v163 = v87;
  v164 = v88;
  v165 = v91;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v105) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v163 + v105))), v103, *&v163.i8[v105], 1), v104, *(&v163 + v105), 2);
    v105 += 16;
  }

  while (v105 != 48);
  v109 = 0;
  v106.i32[3] = 0;
  v107.i32[3] = 0;
  v108.i32[3] = 0;
  v110 = v166.i64[0];
  v111 = v167;
  v112 = v168;
  *(anon_6b0 + 26) = v166.i32[2];
  *(anon_6b0 + 30) = v111.i32[2];
  *(anon_6b0 + 12) = v110;
  *(anon_6b0 + 14) = v111.i64[0];
  *(anon_6b0 + 34) = v112.i32[2];
  *(anon_6b0 + 16) = v112.i64[0];
  v113 = *anon_6b0;
  v114 = *(anon_6b0 + 1);
  v115 = *(anon_6b0 + 2);
  v163 = v106;
  v164 = v107;
  v165 = v108;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v109) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v163 + v109))), v114, *&v163.i8[v109], 1), v115, *(&v163 + v109), 2);
    v109 += 16;
  }

  while (v109 != 48);
  v116 = 0;
  v117 = v166.i64[0];
  v118 = v167;
  v119 = v168;
  *(anon_6b0 + 2) = v166.i32[2];
  *(anon_6b0 + 6) = v118.i32[2];
  *anon_6b0 = v117;
  *(anon_6b0 + 2) = v118.i64[0];
  *(anon_6b0 + 10) = v119.i32[2];
  *(anon_6b0 + 4) = v119.i64[0];
  v120 = *(anon_6b0 + 3);
  v121 = *(anon_6b0 + 4);
  v122 = *(anon_6b0 + 5);
  v163 = v106;
  v164 = v107;
  v165 = v108;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  do
  {
    *(&v166 + v116) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, COERCE_FLOAT(*(&v163 + v116))), v121, *&v163.i8[v116], 1), v122, *(&v163 + v116), 2);
    v116 += 16;
  }

  while (v116 != 48);
  v123 = v166.i64[0];
  v124 = v167;
  v125 = v168;
  *(anon_6b0 + 14) = v166.i32[2];
  *(anon_6b0 + 18) = v124.i32[2];
  *(anon_6b0 + 6) = v123;
  *(anon_6b0 + 8) = v124.i64[0];
  *(anon_6b0 + 22) = v125.i32[2];
  *(anon_6b0 + 10) = v125.i64[0];
  objc_msgSend__computeCanonicalDisparityScaleFactor(self, v13, v14, v15, v16, v17);
  result = 0;
  self->_correctedCalibration.canonicalDisparityScale = v127;
  return result;
}

- (float)_computeCanonicalDisparityScaleFactor
{
  v2.f32[0] = self->_correctedCalibration.focalLengthPix[0];
  v3.f64[0] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[3];
  v3.f64[1] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[7];
  v4 = self->_rectificationFocalLengthFactor * v2.f32[0];
  *v2.f32 = vcvt_f32_f64(v3);
  *v3.f64 = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[11];
  v2.i32[2] = LODWORD(v3.f64[0]);
  v5 = vmulq_f32(v2, v2);
  return 1.0 / (v4 * (sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) / 1000.0));
}

- (int)computeAuxiliaryImageShiftForKeypoints:(Calibration *)self
{
  v3 = v2;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = sub_2956FD118(&self->_initialCalibration, 0, &v22, &v19, 0, &v16, 0);
  if (v5)
  {
    v8 = v5;
    sub_295705D58();
  }

  else
  {
    v6 = vaddq_f32(v18, vmlaq_n_f32(vmulq_n_f32(v16, (self->_pixelBufferDimensions[0].width + -1.0) * 0.5), v17, (self->_pixelBufferDimensions[0].height + -1.0) * 0.5));
    v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v6.f32[0]), v20, *v6.f32, 1), v21, v6, 2);
    if (v7.n128_f32[2] <= 0.1)
    {
      sub_295705DD0(v7, v7.n128_f32[2]);
      return -12780;
    }

    else
    {
      v8 = 0;
      v9 = vdivq_f32(v7, vdupq_laneq_s32(v7, 2));
      __asm { FMOV            V1.2S, #-1.0 }

      *v3 = vadd_f32(*&vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v9.f32[0]), v23, *v9.f32, 1), v24, v9, 2), vmul_f32(vadd_f32(vcvt_f32_s32(self->_pixelBufferDimensions[1]), _D1), 0xBF000000BF000000));
    }
  }

  return v8;
}

- (CGRect)referenceFinalCropRect
{
  x = self->_referenceFinalCropRect.origin.x;
  y = self->_referenceFinalCropRect.origin.y;
  width = self->_referenceFinalCropRect.size.width;
  height = self->_referenceFinalCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CalModel)initialCalibration
{
  v3 = *&self->calibrationDimensions[1];
  *&retstr->extrinRotRefefenceToAuxiliary[10] = *&self->canonicalDisparityScale;
  *&retstr->canonicalDisparityScale = v3;
  *&retstr->calibrationDimensions[1] = *&self->pixelSize_um[1];
  retstr->pixelSize_um[1] = self[1].focalLengthPix[1];
  v4 = *&self->extrinRotRefefenceToAuxiliary[6];
  *&retstr->extrinRotRefefenceToAuxiliary[2] = *&self->extrinRotRefefenceToAuxiliary[4];
  *&retstr->extrinRotRefefenceToAuxiliary[4] = v4;
  v5 = *&self->extrinRotRefefenceToAuxiliary[10];
  *&retstr->extrinRotRefefenceToAuxiliary[6] = *&self->extrinRotRefefenceToAuxiliary[8];
  *&retstr->extrinRotRefefenceToAuxiliary[8] = v5;
  v6 = *self->opticalCenterY;
  *retstr->focalLengthPix = *self->opticalCenterX;
  *retstr->opticalCenterX = v6;
  v7 = *&self->extrinRotRefefenceToAuxiliary[2];
  *retstr->opticalCenterY = *self->extrinRotRefefenceToAuxiliary;
  *retstr->extrinRotRefefenceToAuxiliary = v7;
  return self;
}

- (CalModel)correctedCalibration
{
  v3 = *&self[10].calibrationDimensions[1];
  *&retstr->extrinRotRefefenceToAuxiliary[10] = *&self[10].canonicalDisparityScale;
  *&retstr->canonicalDisparityScale = v3;
  *&retstr->calibrationDimensions[1] = *&self[10].pixelSize_um[1];
  retstr->pixelSize_um[1] = self[11].focalLengthPix[1];
  v4 = *&self[10].extrinRotRefefenceToAuxiliary[6];
  *&retstr->extrinRotRefefenceToAuxiliary[2] = *&self[10].extrinRotRefefenceToAuxiliary[4];
  *&retstr->extrinRotRefefenceToAuxiliary[4] = v4;
  v5 = *&self[10].extrinRotRefefenceToAuxiliary[10];
  *&retstr->extrinRotRefefenceToAuxiliary[6] = *&self[10].extrinRotRefefenceToAuxiliary[8];
  *&retstr->extrinRotRefefenceToAuxiliary[8] = v5;
  v6 = *self[10].opticalCenterY;
  *retstr->focalLengthPix = *self[10].opticalCenterX;
  *retstr->opticalCenterX = v6;
  v7 = *&self[10].extrinRotRefefenceToAuxiliary[2];
  *retstr->opticalCenterY = *self[10].extrinRotRefefenceToAuxiliary;
  *retstr->extrinRotRefefenceToAuxiliary = v7;
  return self;
}

@end