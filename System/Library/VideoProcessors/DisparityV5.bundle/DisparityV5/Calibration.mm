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
  v9 = *&points;
  objc_msgSend_releaseResources(self, a2, *&points, v3, v4, v5, v6, v7, v8);
  if (self->_distortionCorrectionEnabled)
  {
    v18 = sub_29575F754(v9, &self->_adc);
    v19 = v18;
    if (v18)
    {
      sub_2957684A8(v18);
    }
  }

  else
  {
    ResourcesForMaxNumOfTransposedPoints = objc_msgSend__allocateResourcesForMaxNumOfTransposedPoints_(self, v11, v9, v12, v13, v14, v15, v16, v17);
    v19 = ResourcesForMaxNumOfTransposedPoints;
    if (ResourcesForMaxNumOfTransposedPoints)
    {
      sub_29576842C(ResourcesForMaxNumOfTransposedPoints);
    }
  }

  return v19;
}

- (void)releaseResources
{
  if (self->_distortionCorrectionEnabled)
  {
    sub_29575F968(self->_adc);
    self->_adc = 0;
  }

  else
  {

    (MEMORY[0x2A1C70FE8])(self, sel__releaseResourcesForTransformedPoints);
  }
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5, v6, v7, v8);
  v10.receiver = self;
  v10.super_class = Calibration;
  [(Calibration *)&v10 dealloc];
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
    sub_295768D34(__dst);
LABEL_76:
    v395 = __dst[0];
    goto LABEL_71;
  }

  if (!auxiliaryMetadataCopy)
  {
    sub_295768C88(__dst);
    goto LABEL_76;
  }

  configCopy = config;
  v23 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v15, @"PortType", v16, v17, v18, v19, v20, v22);
  v24 = self->_portTypeName[0];
  self->_portTypeName[0] = v23;

  v32 = objc_msgSend_objectForKeyedSubscript_(auxiliaryMetadataCopy, v25, @"PortType", v26, v27, v28, v29, v30, v31);
  v33 = self->_portTypeName[1];
  self->_portTypeName[1] = v32;

  metadata = self->_metadata;
  objc_storeStrong(self->_metadata, metadata);
  objc_storeStrong(&self->_metadata[1], auxiliaryMetadata);
  if (frameCopy)
  {
    v42 = 0;
    v43 = 1;
    do
    {
      v44 = v43;
      v45 = objc_msgSend_objectForKeyedSubscript_(metadata[v42], v35, @"ReferenceFrameMetadata", v36, v37, v38, v39, v40, v41);

      if (v45)
      {
        v46 = objc_msgSend_objectForKeyedSubscript_(metadata[v42], v35, @"ReferenceFrameMetadata", v36, v37, v38, v39, v40, v41);
        v47 = metadata[v42];
        metadata[v42] = v46;
      }

      v43 = 0;
      v42 = 1;
    }

    while ((v44 & 1) != 0);
  }

  if (!optionsCopy)
  {
    sub_295768BDC(__dst);
    goto LABEL_76;
  }

  v422 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v35, *MEMORY[0x29EDC0288], v36, v37, v38, v39, v40, v41);
  if (!v422)
  {
    sub_295768B30(__dst);
    goto LABEL_76;
  }

  v399 = optionsCopy;
  v400 = auxiliaryMetadataCopy;
  v401 = metadataCopy;
  p_adaptiveCorrectionConfig = &self->_adaptiveCorrectionConfig;
  portTypeName = self->_portTypeName;
  v421 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v48, v49, v50, v51, v52, v53, v54, v55);
  v56 = 0;
  v57 = 0;
  v402 = 0;
  v418 = *MEMORY[0x29EDC0658];
  v417 = *MEMORY[0x29EDBFF38];
  v428 = *MEMORY[0x29EDBFEF8];
  v416 = *MEMORY[0x29EDBFEC8];
  v432 = *MEMORY[0x29EDBFEC0];
  v426 = *MEMORY[0x29EDC04C0];
  v427 = *MEMORY[0x29EDC0628];
  v424 = *MEMORY[0x29EDC04B0];
  v425 = *MEMORY[0x29EDC0620];
  pixelBufferDimensions = self->_pixelBufferDimensions;
  v415 = *MEMORY[0x29EDBFED8];
  v413 = *MEMORY[0x29EDC05D0];
  opticalCenter = self->_opticalCenter;
  focalLength = self->_focalLength;
  rawSensorSize = self->_rawSensorSize;
  v405 = *MEMORY[0x29EDC06F0];
  pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
  v404 = *MEMORY[0x29EDBFED0];
  distortionOpticalCenter = self->_distortionOpticalCenter;
  ddf = self->_ddf;
  v58 = 1;
  v403 = *MEMORY[0x29EDC05C8];
  v409 = *MEMORY[0x29EDC0670];
  v408 = *MEMORY[0x29EDC0668];
  do
  {
    v434 = v58;
    v59 = portTypeName[v57];
    v433 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v60, v61, v62, v63, v64, v65, v66, v67);
    v75 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v68, v418, v69, v70, v71, v72, v73, v74);
    v84 = objc_msgSend_intValue(v75, v76, v77, v78, v79, v80, v81, v82, v83);
    if (v84 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84;
    }

    v86 = MEMORY[0x29EDBA070];
    v94 = objc_msgSend_objectForKeyedSubscript_(v422, v87, v59, v88, v89, v90, v91, v92, v93);
    v102 = objc_msgSend_objectForKeyedSubscript_(v94, v95, v417, v96, v97, v98, v99, v100, v101);
    objc_msgSend_floatValue(v102, v103, v104, v105, v106, v107, v108, v109, v110);
    v111 = v85;
    v443 = objc_msgSend_numberWithFloat_(v86, v113, v114, v115, v116, v117, v118, v119, v112 * v85);

    v120 = v59;
    v128 = objc_msgSend_objectForKeyedSubscript_(v422, v121, v59, v122, v123, v124, v125, v126, v127);
    v438 = objc_msgSend_objectForKeyedSubscript_(v128, v129, v428, v130, v131, v132, v133, v134, v135);

    v143 = objc_msgSend_objectForKeyedSubscript_(v422, v136, v59, v137, v138, v139, v140, v141, v142);
    v151 = objc_msgSend_objectForKeyedSubscript_(v143, v144, v416, v145, v146, v147, v148, v149, v150);

    v159 = objc_msgSend_objectForKeyedSubscript_(v422, v152, v120, v153, v154, v155, v156, v157, v158);
    v445 = objc_msgSend_objectForKeyedSubscript_(v159, v160, v432, v161, v162, v163, v164, v165, v166);

    v436 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v167, v427, v168, v169, v170, v171, v172, v173);
    v181 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v174, v426, v175, v176, v177, v178, v179, v180);
    v189 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v182, v425, v183, v184, v185, v186, v187, v188);
    dict = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v190, v424, v191, v192, v193, v194, v195, v196);
    v204 = objc_msgSend_objectForKeyedSubscript_(v422, v197, v120, v198, v199, v200, v201, v202, v203);
    v212 = objc_msgSend_objectForKeyedSubscript_(v204, v205, v415, v206, v207, v208, v209, v210, v211);

    v437 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v213, v413, v214, v215, v216, v217, v218, v219);
    v228 = &pixelBufferDimensions[v57];
    v441 = v181;
    v430 = v228;
    if (selfCopy->_pixelBufferScalingEnabled)
    {
      v229 = v212;
      v230 = v151;
      v231 = *(MEMORY[0x29EDB90D8] + 16);
      rect.origin = *MEMORY[0x29EDB90D8];
      rect.size = v231;
      v232 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v220, v405, v222, v223, v224, v225, v226, *&rect.origin.x);
      CGRectMakeWithDictionaryRepresentation(v232, &rect);

      width = rect.size.width;
      if (rect.size.width <= 0.0 || (height = rect.size.height, rect.size.height <= 0.0))
      {
        sub_295768524(&rect, __dst);
        v386 = 0;
        v402 = __dst[0];
        v235 = v433;
        v151 = v230;
        v385 = dict;
        v236 = v436;
        goto LABEL_49;
      }

      v235 = v433;
      v151 = v230;
      v212 = v229;
    }

    else
    {
      width = *v228;
      height = v228[1];
      v235 = v433;
    }

    v236 = v436;
    v431 = v151;
    if (!v212)
    {
      v270 = objc_msgSend_objectForKeyedSubscript_(v422, v220, v120, v222, v223, v224, v225, v226, v227);
      v268 = objc_msgSend_objectForKeyedSubscript_(v270, v271, v404, v272, v273, v274, v275, v276, v277);

      v285 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v278, v403, v279, v280, v281, v282, v283, v284);

      if (v268)
      {
        v267 = v438;
        if (!v285)
        {
          v229 = v268;
          sub_2957687D4(__dst);
          v386 = 0;
          v437 = 0;
          goto LABEL_64;
        }

        v437 = v285;
LABEL_28:
        v439 = objc_msgSend_objectForKeyedSubscript_(v268, v259, v428, v260, v261, v262, v263, v264, v265);

        v420 = objc_msgSend_objectForKeyedSubscript_(v268, v286, v432, v287, v288, v289, v290, v291, v292);

        objc_msgSend_objectForKeyedSubscript_(v437, v293, v427, v294, v295, v296, v297, v298, v299);
        v301 = v300 = v189;

        objc_msgSend_objectForKeyedSubscript_(v437, v302, v426, v303, v304, v305, v306, v307, v308);
        metadataCopy2 = metadata;
        v311 = v310 = v120;

        v319 = objc_msgSend_objectForKeyedSubscript_(v437, v312, v425, v313, v314, v315, v316, v317, v318);

        v327 = objc_msgSend_objectForKeyedSubscript_(v437, v320, v424, v321, v322, v323, v324, v325, v326);

        v445 = v420;
        dict = v327;
        v436 = v301;
        v441 = v311;
        v120 = v310;
        metadata = metadataCopy2;
        v189 = v319;
        v235 = v433;
        v267 = v439;
      }

      else
      {
        v437 = v285;
        v267 = v438;
      }

      v151 = v431;
      v269 = v445;
      if (!v443)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (!v443)
    {
      v229 = v212;
      sub_295768728(__dst);
      goto LABEL_57;
    }

    if (!v437)
    {
      v229 = v212;
      sub_29576867C(__dst);
      v386 = 0;
      v437 = 0;
      goto LABEL_58;
    }

    objc_msgSend_floatValue(v443, v220, v221, v222, v223, v224, v225, v226, v227);
    v238 = v237;
    v229 = v212;
    v245 = objc_msgSend_objectForKeyedSubscript_(v212, v239, v432, v240, v241, v242, v243, v244, v237);
    if (!v245)
    {
      sub_2957685D0(__dst);
      v386 = 0;
LABEL_64:
      v402 = __dst[0];
      v151 = v431;
      goto LABEL_59;
    }

    v253 = v245;
    v254.f32[0] = width * 0.5;
    v255 = height * 0.5;
    v254.f32[1] = v255;
    v254.f32[0] = sqrtf(vaddv_f32(vmul_f32(v254, v254))) * v238;
    v256 = v254.f32[0] / 1000.0;
    objc_msgSend_floatValue(v245, v246, v247, v248, v249, v250, v251, v252, v254.f32[0]);
    v258 = v256 > v257;

    v266 = v258 & ~v56;
    v267 = v438;
    v268 = v229;
    if ((v266 & 1) == 0)
    {
      goto LABEL_28;
    }

    v151 = v431;
    v269 = v445;
LABEL_31:
    objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v443, @"pixelSizeMicrometers", v261, v262, v263, v264, v265);
LABEL_32:
    if (v267)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v267, @"gdcCoefficients", v261, v262, v263, v264, v265);
    }

    if (v151)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v151, @"CameraViewMatrix", v261, v262, v263, v264, v265);
    }

    if (v269)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v269, @"CalibrationValidRadius", v261, v262, v263, v264, v265);
    }

    v445 = v269;
    objc_msgSend_setObject_forKeyedSubscript_(v421, v259, v235, v120, v261, v262, v263, v264, v265);
    v236 = v436;
    v438 = v267;
    if (!v436)
    {
      v229 = v268;
      sub_295768A84(__dst);
LABEL_57:
      v386 = 0;
LABEL_58:
      v402 = __dst[0];
LABEL_59:
      v385 = dict;
      goto LABEL_49;
    }

    v229 = v268;
    objc_msgSend_floatValue(v436, v328, v329, v330, v331, v332, v333, v334, v335);
    focalLength[v57] = v336;
    if (!CGPointMakeWithDictionaryRepresentation(v189, &opticalCenter[v57]))
    {
      sub_295768880(__dst);
      goto LABEL_57;
    }

    v344 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v337, v409, v338, v339, v340, v341, v342, v343);
    objc_msgSend_floatValue(v344, v345, v346, v347, v348, v349, v350, v351, v352);
    p_width = &rawSensorSize[v57].width;
    *p_width = v353;

    v362 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v355, v408, v356, v357, v358, v359, v360, v361);
    objc_msgSend_floatValue(v362, v363, v364, v365, v366, v367, v368, v369, v370);
    p_width[1] = v371;

    v379 = width;
    v380 = *v430 / v379;
    v381 = height;
    v382 = v430[1] / v381;
    v383 = __PAIR64__(LODWORD(v382), LODWORD(v380));
    *&pixelBufferScalingFactor[8 * v57] = __PAIR64__(LODWORD(v382), LODWORD(v380));
    if (v434)
    {
      selfCopy->_referenceCalibrationScalingFactor = (((v380 + v382) * 0.5) + ((v380 + v382) * 0.5)) / v111;
      v383 = *&pixelBufferScalingFactor[8 * v57];
    }

    if (*&v383 > 10.0 || *&v383 <= 0.1)
    {
      sub_2957689D8(__dst);
      goto LABEL_57;
    }

    if (v441)
    {
      objc_msgSend_floatValue(v441, v372, v373, v374, v375, v376, v377, v378, *&v383);
    }

    else
    {
      v384 = 0.0;
    }

    ddf[v57] = v384;
    v385 = dict;
    if (CGPointMakeWithDictionaryRepresentation(dict, &distortionOpticalCenter[v57]))
    {
      v386 = 1;
    }

    else
    {
      sub_29576892C(__dst);
      v386 = 0;
      v402 = __dst[0];
    }

LABEL_49:

    if ((v386 & 1) == 0)
    {

      auxiliaryMetadataCopy = v400;
      metadataCopy = v401;
      optionsCopy = v399;
      goto LABEL_70;
    }

    v58 = 0;
    v56 = 1;
    v57 = 1;
  }

  while ((v434 & 1) != 0);
  staticParametersByPortType = selfCopy->_staticParametersByPortType;
  selfCopy->_staticParametersByPortType = v421;
  v388 = v421;

  scaleTuningWithDigitalZoomByFactor = configCopy->scaleTuningWithDigitalZoomByFactor;
  if (scaleTuningWithDigitalZoomByFactor <= 0.0)
  {
    auxiliaryMetadataCopy = v400;
    metadataCopy = v401;
    optionsCopy = v399;
    v440 = *&configCopy->epErrorLimitWidePix_FirstPass;
    v442 = *&configCopy->rangePFL_T;
    v444 = *&configCopy->rangeOCxT;
    v446 = *&configCopy->rangeOCyT;
  }

  else
  {
    v390 = ((scaleTuningWithDigitalZoomByFactor * (selfCopy->_referenceCalibrationScalingFactor + -1.0)) + 1.0);
    v442 = vmulq_n_f64(*&configCopy->rangePFL_T, v390);
    v444 = vmulq_n_f64(*&configCopy->rangeOCxT, v390);
    v446 = vmulq_n_f64(*&configCopy->rangeOCyT, v390);
    v440 = vmulq_n_f64(*&configCopy->epErrorLimitWidePix_FirstPass, v390);
    auxiliaryMetadataCopy = v400;
    metadataCopy = v401;
    optionsCopy = v399;
  }

  v391 = *&configCopy->runAnalyticalPreconditioning;
  v450 = *&configCopy->errorVal_LessThanExtremeMacro;
  v451 = v391;
  v452 = *&configCopy->keypointOutliersPercentile;
  temporalInitializationFactor = configCopy->temporalInitializationFactor;
  v392 = *&configCopy->minPointsForAdjustment;
  v448 = *&configCopy->intermediateMacroDistMM;
  v449 = v392;
  memcpy(__dst, &configCopy->overrideConfigPass1, sizeof(__dst));
  *&p_adaptiveCorrectionConfig->epErrorLimitWidePix_FirstPass = v440;
  *&p_adaptiveCorrectionConfig->rangePFL_T = v442;
  *&p_adaptiveCorrectionConfig->rangeOCxT = v444;
  *&p_adaptiveCorrectionConfig->rangeOCyT = v446;
  v393 = v451;
  *&selfCopy->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro = v450;
  *&selfCopy->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = v393;
  *&selfCopy->_adaptiveCorrectionConfig.keypointOutliersPercentile = v452;
  selfCopy->_adaptiveCorrectionConfig.temporalInitializationFactor = temporalInitializationFactor;
  v394 = v449;
  *&selfCopy->_adaptiveCorrectionConfig.intermediateMacroDistMM = v448;
  *&selfCopy->_adaptiveCorrectionConfig.minPointsForAdjustment = v394;
  selfCopy->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = scaleTuningWithDigitalZoomByFactor;
  memcpy(&selfCopy->_adaptiveCorrectionConfig.overrideConfigPass1, __dst, 0x168uLL);

LABEL_70:
  v395 = v402;
LABEL_71:

  return v395;
}

- (int)computeInitialCalibration
{
  v10 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, self->_portTypeName[1], v2, v3, v4, v5, v6, v8);
  v18 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"CameraViewMatrix", v12, v13, v14, v15, v16, v17);
  v19 = v18;
  v28 = objc_msgSend_bytes(v19, v20, v21, v22, v23, v24, v25, v26, v27);

  selfCopy = self;
  v36 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v29, self->_portTypeName[0], v30, v31, v32, v33, v34, v35);
  v44 = objc_msgSend_objectForKeyedSubscript_(v36, v37, @"CameraViewMatrix", v38, v39, v40, v41, v42, v43);
  v45 = v44;
  v54 = objc_msgSend_bytes(v45, v46, v47, v48, v49, v50, v51, v52, v53);

  if (v28)
  {
    if (v54)
    {
      portTypeName = self->_portTypeName;
      *v60.i64 = sub_295750D8C(v28, v55, v56, v57, v58, v59);
      v172 = v60;
      v174 = v61;
      v170 = v62;
      v176 = v63;
      *v71.i64 = sub_295750D8C(v54, *v60.i64, *v61.i64, *v62.i64, *v63.i64, v64);
      v73 = 0;
      v181 = 0u;
      v182 = 0u;
      v75 = vzip1q_s32(v71, v74);
      v183 = 0u;
      v184 = 0u;
      v185[0] = vzip1q_s32(v75, v76);
      v185[1] = vzip2q_s32(v75, vdupq_lane_s32(*v76.i8, 1));
      v185[2] = vzip1q_s32(vzip2q_s32(v71, v74), vdupq_laneq_s32(v76, 2));
      time = 0u;
      time_16 = 0u;
      v188 = 0u;
      do
      {
        *(&time + v73 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, COERCE_FLOAT(v185[v73])), v174, *&v185[v73], 1), v170, v185[v73], 2);
        ++v73;
      }

      while (v73 != 3);
      v77 = 0;
      DWORD2(v181) = time.i32[2];
      DWORD2(v182) = time_16.i32[2];
      v78 = vsubq_f32(v176, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(time, v72.f32[0]), time_16, *v72.f32, 1), v188, v72, 2));
      *&v181 = time.i64[0];
      *&v182 = time_16.i64[0];
      DWORD2(v183) = v188.i32[2];
      DWORD2(v184) = v78.i32[2];
      *&v183 = v188.i64[0];
      *&v184 = v78.i64[0];
      v79 = self->_pixelBufferDimensions[0];
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
      v81.i64[0] = v79.width;
      v81.i64[1] = v79.height;
      pixelBufferDimensions = self->_pixelBufferDimensions;
      *self->_initialCalibration.calibrationDimensions = vcvtq_f64_s64(v81);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          extrinRotRefefenceToAuxiliary[i] = *((&v181 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v77 & 3)));
        }

        ++v77;
        extrinRotRefefenceToAuxiliary += 4;
      }

      while (v77 != 3);
      v83 = 0;
      rawSensorSize = self->_rawSensorSize;
      pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
      opticalCenter = self->_opticalCenter;
      opticalCenterX = self->_initialCalibration.opticalCenterX;
      opticalCenterY = self->_initialCalibration.opticalCenterY;
      pixelSize_um = self->_initialCalibration.pixelSize_um;
      focalLength = self->_focalLength;
      metadata = self->_metadata;
      v167 = *MEMORY[0x29EDC0560];
      v166 = *MEMORY[0x29EDBFFA0];
      v165 = *(MEMORY[0x29EDB9398] + 12);
      v163 = *(MEMORY[0x29EDB9398] + 16);
      v161 = self->_initialCalibration.opticalCenterY;
      v162 = *MEMORY[0x29EDC04A8];
      for (j = 1; ; j = 0)
      {
        v89 = j;
        p_width = &rawSensorSize[v83].width;
        v91 = (*p_width + -1.0) * 0.5;
        v92 = (p_width[1] + -1.0) * 0.5;
        v93 = &pixelBufferDimensions[v83];
        p_x = &opticalCenter[v83].x;
        v95 = *&pixelBufferScalingFactor[8 * v83];
        v96 = p_x[1];
        v97 = (v93[1] + -1.0) * 0.5;
        opticalCenterX[v83] = (*v93 + -1.0) * 0.5 + (*p_x - v91) * *&v95;
        v98 = v97 + (v96 - v92) * *(&v95 + 1);
        opticalCenterY[v83] = v98;
        v99 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_staticParametersByPortType, v65, portTypeName[v83], v66, v67, v68, v69, v70, *&v98);
        v107 = objc_msgSend_objectForKeyedSubscript_(v99, v100, @"pixelSizeMicrometers", v101, v102, v103, v104, v105, v106);
        objc_msgSend_floatValue(v107, v108, v109, v110, v111, v112, v113, v114, v115);
        v117 = v116;

        v118 = (v117 / (vaddv_f32(*&pixelBufferScalingFactor[8 * v83]) * 0.5));
        pixelSize_um[v83] = v118;
        v119 = focalLength[v83] / v118;
        p_initialCalibration->focalLengthPix[v83] = v119;
        v126 = objc_msgSend_objectForKeyedSubscript_(metadata[v83], v120, v167, v121, v122, v123, v124, v125, *&v119);

        if (v126)
        {
          v128 = opticalCenterX;
          v129 = objc_msgSend_objectForKeyedSubscript_(metadata[v83], v65, v166, v66, v67, v68, v69, v70, v127);
          v137 = v129;
          v180 = 0;
          *&v185[0] = *MEMORY[0x29EDB9398];
          DWORD2(v185[0]) = *(MEMORY[0x29EDB9398] + 8);
          v138 = v165;
          v139 = v163;
          if (v129)
          {
            CMTimeMakeFromDictionary(&time, v129);
            *&v185[0] = time.i64[0];
            v138 = time.i32[3];
            DWORD2(v185[0]) = time.i32[2];
            v139 = time_16.i64[0];
          }

          if ((v138 & 1) == 0)
          {
            sub_295768DE0(v185, &v180, v137, &time);
            return time.i32[0];
          }

          v140 = objc_msgSend_objectForKeyedSubscript_(metadata[v83], v130, v162, v131, v132, v133, v134, v135, v136);
          v149 = v140;
          if (v140)
          {
            objc_msgSend_floatValue(v140, v141, v142, v143, v144, v145, v146, v147, v148);
            v151 = v150;
          }

          else
          {
            v151 = 1.0;
          }

          v152 = pixelSize_um[v83];
          time.i64[0] = *&v185[0];
          time.i64[1] = __PAIR64__(v138, DWORD2(v185[0]));
          time_16.i64[0] = v139;
          CMTimeGetSeconds(&time);
          v153 = FigMotionComputeAverageSpherePosition();
          if (v153)
          {
            v158 = v153;
            fig_log_get_emitter();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v158, v7, v160, v7, v161, v162, v163, v164);

            return v158;
          }

          v154 = v152;
          v155 = v151 / v154;
          v156 = *(&v180 + 1);
          opticalCenterX = v128;
          v128[v83] = v128[v83] + (v155 * *&v180);
          opticalCenterY = v161;
          v161[v83] = v161[v83] + (v155 * v156);
          v157 = metadata[v83];
          metadata[v83] = 0;
        }

        v83 = 1;
        if ((v89 & 1) == 0)
        {
          return 0;
        }
      }
    }

    sub_295768EB8(&time);
  }

  else
  {
    sub_295768F64(&time);
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
  if ((objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5, v6, v7, 0.0) & 1) == 0)
  {
    sub_295769010();
    return 0;
  }

  v9 = *&self->_initialCalibration.canonicalDisparityScale;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
  *&self->_correctedCalibration.canonicalDisparityScale = v9;
  *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
  self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
  v10 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v10;
  v11 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v11;
  v12 = *self->_initialCalibration.opticalCenterX;
  *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
  *self->_correctedCalibration.opticalCenterX = v12;
  v13 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
  *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v13;
  if (sub_29575F9DC(self->_adc, &self->_adaptiveCorrectionConfig))
  {
    sub_295769084();
    return 0;
  }

  if (sub_29576096C(self->_adc, self->_undistModels, &self->_undistModels[1], self->_correctedCalibration.focalLengthPix, 1.0))
  {
    sub_2957690FC();
    return 3;
  }

  else
  {
    sub_29575FA1C(self->_adc, &v47);
    v15 = *&self->_distModels[0].polyDynamic[2];
    v53 = *self->_distModels[0].polyDynamic;
    v14 = v53;
    v54 = v15;
    v16 = *&self->_distModels[0].polyDynamic[6];
    v55 = *&self->_distModels[0].polyDynamic[4];
    v56 = v16;
    v18 = *&self->_distModels[0].polyBase[2];
    v49 = *self->_distModels[0].polyBase;
    v17 = v49;
    v50 = v18;
    v19 = *&self->_distModels[0].polyBase[6];
    v51 = *&self->_distModels[0].polyBase[4];
    v52 = v19;
    v20 = *&self->_distModels[0].opticalCenterX;
    v47 = *&self->_distModels[0].pixelSizeMM;
    v48 = v20;
    v21 = *&self->_undistModels[0].opticalCenterX;
    *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
    *&self->_distModels[0].opticalCenterX = v21;
    v22 = v50;
    v23 = v52;
    v24 = v54;
    *&self->_distModels[0].polyBase[4] = v51;
    *&self->_distModels[0].polyBase[6] = v23;
    *self->_distModels[0].polyBase = v17;
    *&self->_distModels[0].polyBase[2] = v22;
    *self->_distModels[0].polyDynamic = v14;
    *&self->_distModels[0].polyDynamic[2] = v24;
    v25 = v56;
    *&self->_distModels[0].polyDynamic[4] = v55;
    *&self->_distModels[0].polyDynamic[6] = v25;
    v27 = *&self->_distModels[1].polyDynamic[2];
    v53 = *self->_distModels[1].polyDynamic;
    v26 = v53;
    v54 = v27;
    v28 = *&self->_distModels[1].polyDynamic[6];
    v55 = *&self->_distModels[1].polyDynamic[4];
    v56 = v28;
    v30 = *&self->_distModels[1].polyBase[2];
    v49 = *self->_distModels[1].polyBase;
    v29 = v49;
    v50 = v30;
    v31 = *&self->_distModels[1].polyBase[6];
    v51 = *&self->_distModels[1].polyBase[4];
    v52 = v31;
    v32 = *&self->_distModels[1].opticalCenterX;
    v47 = *&self->_distModels[1].pixelSizeMM;
    v48 = v32;
    v33 = *&self->_undistModels[1].opticalCenterX;
    *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
    *&self->_distModels[1].opticalCenterX = v33;
    v34 = v50;
    v35 = v52;
    v36 = v54;
    *&self->_distModels[1].polyBase[4] = v51;
    *&self->_distModels[1].polyBase[6] = v35;
    *self->_distModels[1].polyBase = v29;
    *&self->_distModels[1].polyBase[2] = v34;
    *self->_distModels[1].polyDynamic = v26;
    *&self->_distModels[1].polyDynamic[2] = v36;
    v37 = v56;
    *&self->_distModels[1].polyDynamic[4] = v55;
    *&self->_distModels[1].polyDynamic[6] = v37;
    objc_msgSend__computeCanonicalDisparityScaleFactor(self, v38, v39, v40, v41, v42, v43, v44, *&v37, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    result = 0;
    self->_correctedCalibration.canonicalDisparityScale = v46;
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
    if (objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5, v6, v7, 0.0))
    {
      v9 = *&self->_initialCalibration.canonicalDisparityScale;
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
      *&self->_correctedCalibration.canonicalDisparityScale = v9;
      *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
      self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
      v10 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v10;
      v11 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v11;
      v12 = *self->_initialCalibration.opticalCenterX;
      *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
      *self->_correctedCalibration.opticalCenterX = v12;
      v13 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
      *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
      *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v13;
      if (!sub_29575F9DC(self->_adc, &self->_adaptiveCorrectionConfig))
      {
        keypointsCount = self->_keypointsCount;
        if (!keypointsCount)
        {
          bzero(__dst, 0x743uLL);
          v29 = 0;
          v30 = 0;
          goto LABEL_14;
        }

        adc = self->_adc;
        v16 = self->_adaptiveCorrectionKeypointsDistorted[0];
        v17 = self->_adaptiveCorrectionKeypointsDistorted[1];
        undistModels = self->_undistModels;
        v19 = &self->_undistModels[1];
        p_correctedCalibration = &self->_correctedCalibration;
        if (self->_temporalCorrectionEnabled)
        {
          v21 = sub_29575FA78(adc, v16, v17, keypointsCount, undistModels, v19, p_correctedCalibration->focalLengthPix);
        }

        else
        {
          v21 = sub_295760D0C(adc, v16, v17, keypointsCount, undistModels, &v19->pixelSizeMM, p_correctedCalibration);
        }

        if (!v21)
        {
          sub_29575FA1C(self->_adc, v65);
          v29 = *v65;
          v30 = v65[4];
          memcpy(__dst, &v65[5], sizeof(__dst));
LABEL_14:
          v32 = *&self->_distModels[0].polyDynamic[2];
          *&v65[96] = *self->_distModels[0].polyDynamic;
          v31 = *&v65[96];
          *&v65[112] = v32;
          v33 = *&self->_distModels[0].polyDynamic[6];
          *&v65[128] = *&self->_distModels[0].polyDynamic[4];
          *&v65[144] = v33;
          v35 = *&self->_distModels[0].polyBase[2];
          *&v65[32] = *self->_distModels[0].polyBase;
          v34 = *&v65[32];
          *&v65[48] = v35;
          v36 = *&self->_distModels[0].polyBase[6];
          *&v65[64] = *&self->_distModels[0].polyBase[4];
          *&v65[80] = v36;
          v37 = *&self->_distModels[0].opticalCenterX;
          *v65 = *&self->_distModels[0].pixelSizeMM;
          *&v65[16] = v37;
          v38 = *&self->_undistModels[0].opticalCenterX;
          *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
          *&self->_distModels[0].opticalCenterX = v38;
          v39 = *&v65[48];
          v40 = *&v65[80];
          v41 = *&v65[112];
          *&self->_distModels[0].polyBase[4] = *&v65[64];
          *&self->_distModels[0].polyBase[6] = v40;
          *self->_distModels[0].polyBase = v34;
          *&self->_distModels[0].polyBase[2] = v39;
          *self->_distModels[0].polyDynamic = v31;
          *&self->_distModels[0].polyDynamic[2] = v41;
          v42 = *&v65[144];
          *&self->_distModels[0].polyDynamic[4] = *&v65[128];
          *&self->_distModels[0].polyDynamic[6] = v42;
          v44 = *&self->_distModels[1].polyDynamic[2];
          *&v65[96] = *self->_distModels[1].polyDynamic;
          v43 = *&v65[96];
          *&v65[112] = v44;
          v45 = *&self->_distModels[1].polyDynamic[6];
          *&v65[128] = *&self->_distModels[1].polyDynamic[4];
          *&v65[144] = v45;
          v47 = *&self->_distModels[1].polyBase[2];
          *&v65[32] = *self->_distModels[1].polyBase;
          v46 = *&v65[32];
          *&v65[48] = v47;
          v48 = *&self->_distModels[1].polyBase[6];
          *&v65[64] = *&self->_distModels[1].polyBase[4];
          *&v65[80] = v48;
          v49 = *&self->_distModels[1].opticalCenterX;
          *v65 = *&self->_distModels[1].pixelSizeMM;
          *&v65[16] = v49;
          v50 = *&self->_undistModels[1].opticalCenterX;
          *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
          *&self->_distModels[1].opticalCenterX = v50;
          v51 = *&v65[48];
          v52 = *&v65[80];
          v53 = *&v65[112];
          *&self->_distModels[1].polyBase[4] = *&v65[64];
          *&self->_distModels[1].polyBase[6] = v52;
          *self->_distModels[1].polyBase = v46;
          *&self->_distModels[1].polyBase[2] = v51;
          *self->_distModels[1].polyDynamic = v43;
          *&self->_distModels[1].polyDynamic[2] = v53;
          v54 = *&v65[144];
          *&self->_distModels[1].polyDynamic[4] = *&v65[128];
          *&self->_distModels[1].polyDynamic[6] = v54;
          objc_msgSend__computeCanonicalDisparityScaleFactor(self, v22, v23, v24, v25, v26, v27, v28, *&v54, *v65, *&v65[16], *&v65[32], *&v65[48], *&v65[64], *&v65[80], *&v65[96], *&v65[112], *&v65[128], *&v65[144]);
          self->_correctedCalibration.canonicalDisparityScale = v55;
          *v65 = v29;
          v65[4] = v30;
          memcpy(&v65[5], __dst, 0x743uLL);
          v63 = objc_msgSend__checkADCStatus_(self, v56, v65, v57, v58, v59, v60, v61, v62);
          if (v63)
          {
            sub_2957692E0();
          }

          return v63;
        }

        sub_295769264();
        return 3;
      }

      sub_2957691EC();
    }

    else
    {
      sub_295769178();
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
  v7 = 0;
  v8 = 0;
  v9 = 0;
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
  v117 = *MEMORY[0x29EDC0328];
  v116 = *MEMORY[0x29EDC0330];
  v11 = 1;
  __asm
  {
    FMOV            V1.2D, #-1.0
    FMOV            V0.2D, #0.5
  }

  v109 = _Q0;
  v110 = _Q1;
  while (1)
  {
    v18 = v11;
    v19 = &distortionOpticalCenter[v7];
    v20.f64[0] = v19->x;
    if (v19->x == 0.0 || (y = v19->y, y == 0.0) || (v22 = &rawSensorSize[v7], v22->f64[0] <= 0.0) || v22->f64[1] <= 0.0)
    {
      v25 = opticalCenterY[v7];
      v26 = &distModels[v7];
      v26->opticalCenterX = opticalCenterX[v7];
      v26->opticalCenterY = v25;
    }

    else
    {
      v23 = pixelBufferDimensions[v7];
      v24.i64[0] = v23.width;
      v24.i64[1] = v23.height;
      v20.f64[1] = y;
      *&distModels[v7].opticalCenterX = vmlaq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v24), v110), v109), vcvtq_f64_f32(*&pixelBufferScalingFactor[8 * v7]), vsubq_f64(v20, vmulq_f64(vaddq_f64(*v22, v110), v109)));
    }

    v27 = pixelSize_um[v7] / 1000.0;
    v28 = &distModels[v7];
    v29 = ddf[v7] / v27;
    v28->pixelSizeMM = v27;
    v28->focalLengthPix = v29;
    v30 = *&v28->polyDynamic[2];
    p_pixelSizeMM = &undistModels[v7].pixelSizeMM;
    p_pixelSizeMM[6] = *v28->polyDynamic;
    p_pixelSizeMM[7] = v30;
    v32 = *&v28->polyDynamic[6];
    p_pixelSizeMM[8] = *&v28->polyDynamic[4];
    p_pixelSizeMM[9] = v32;
    v33 = *&v28->polyBase[2];
    p_pixelSizeMM[2] = *v28->polyBase;
    p_pixelSizeMM[3] = v33;
    v34 = *&v28->polyBase[6];
    p_pixelSizeMM[4] = *&v28->polyBase[4];
    p_pixelSizeMM[5] = v34;
    v35 = *&v28->opticalCenterX;
    *p_pixelSizeMM = *&v28->pixelSizeMM;
    p_pixelSizeMM[1] = v35;
    v36 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, portTypeName[v7], v2, v3, v4, v5, v6, *&v35, *&v109, *&v110, pixelBufferScalingFactor, pixelBufferDimensions);
    v44 = objc_msgSend_objectForKeyedSubscript_(v36, v37, @"gdcCoefficients", v38, v39, v40, v41, v42, v43);
    v52 = objc_msgSend_objectForKeyedSubscript_(v44, v45, v117, v46, v47, v48, v49, v50, v51);

    if (!v52)
    {
      sub_29576957C(v9);
      goto LABEL_24;
    }

    v53 = v52;
    v62 = objc_msgSend_bytes(v53, v54, v55, v56, v57, v58, v59, v60, v61);
    if (!v62)
    {
      sub_2957694EC(v9);
      goto LABEL_24;
    }

    v70 = v62;
    v71 = distModels;
    v72 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v63, portTypeName[v7], v64, v65, v66, v67, v68, v69);
    v80 = objc_msgSend_objectForKeyedSubscript_(v72, v73, @"gdcCoefficients", v74, v75, v76, v77, v78, v79);
    v88 = objc_msgSend_objectForKeyedSubscript_(v80, v81, v116, v82, v83, v84, v85, v86, v87);

    if (!v88)
    {
      sub_295769474();
      goto LABEL_24;
    }

    v89 = v88;
    v9 = v88;
    v98 = objc_msgSend_bytes(v89, v90, v91, v92, v93, v94, v95, v96, v97);
    if (!v98)
    {
      sub_2957693E4(v88);
      goto LABEL_24;
    }

    v8 = v52;
    v99 = (v70 + 32);
    v100 = (v98 + 32);
    polyDynamic = v28->polyDynamic;
    v102 = 1;
    v103 = 8;
    do
    {
      polyDynamic[32] = *(v99 - 8);
      v104 = *(v100 - 8);
      polyDynamic[40] = v104;
      v102 &= v104 == 0.0;
      v105 = *v99++;
      *(polyDynamic - 8) = v105;
      v106 = *v100++;
      *polyDynamic++ = v106;
      --v103;
    }

    while (v103);
    distModels = v71;
    if ((v102 & 1) == 0 && ddf[v7] <= 0.0)
    {
      break;
    }

    v11 = 0;
    v7 = 1;
    if ((v18 & 1) == 0)
    {

      v107 = 1;
      goto LABEL_18;
    }
  }

  sub_295769354(v88);
LABEL_24:
  v107 = 0;
LABEL_18:

  return v107;
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
    sub_29576960C(self, a2);
    return 1;
  }

  if (!status->var4)
  {
    sub_295769684(self, a2);
    return 1;
  }

  if (!status->var9)
  {
    sub_2957696FC(self, a2);
    return 2;
  }

  if (!status->var13)
  {
    sub_295769774(self, a2);
    return 1;
  }

  if (!status->var19)
  {
    sub_2957697EC(self, a2);
    return 2;
  }

  if (!status->var25)
  {
    sub_295769864(self, a2);
    return 1;
  }

  if (!status->var28)
  {
    sub_2957698DC(self, a2);
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

    sub_295769954();
  }

  else
  {
    sub_2957699C8();
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
  memset(v54, 0, 512);
  v53 = 0;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
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
    v56.columns[0] = vzip1q_s32(v13, v10);
    v56.columns[2] = vzip1q_s32(v14, v15);
    v56.columns[1] = vzip2q_s32(v13, vdupq_lane_s32(*&v10.f64[0], 1));
    v40 = v56.columns[0];
    v41 = v56.columns[2];
    v38 = v56.columns[1];
    v39 = vzip2q_s32(v14, v15);
    v16 = AdaptiveCorrection_computeVerticalBaselineTransform(&v48, &v46, &v44, v56, v39);
    if (v16)
    {
      sub_295769A3C(v16, v17);
      return 3;
    }

    v18 = AdaptiveCorrection_rotateCalModel(&self->_correctedCalibration, v52, v48, v49, v50, v51, v46, v47, v44, v45);
    if (v18)
    {
      sub_295769AB8(v18, v19);
      return 3;
    }

    v20 = AdaptiveCorrection_transformPointsWithMatrix(self->_adaptiveCorrectionKeypointsDistorted[0], self->_keypointsCount, self->_transposedKeypoints.xyPointsTeleTransposed, v46, v47);
    if (v20)
    {
      sub_295769B34(v20, v21);
      return 3;
    }

    v22 = AdaptiveCorrection_transformPointsWithMatrix(self->_adaptiveCorrectionKeypointsDistorted[1], self->_keypointsCount, self->_transposedKeypoints.xyPointsWideTransposed, v44, v45);
    if (v22)
    {
      sub_295769BB0(v22, v23);
      return 3;
    }

    v43 = 0;
    memset(v42, 0, sizeof(v42));
    AdaptiveCorrection_fullCorrection(v42, self->_transposedKeypoints.xyPointsTeleTransposed, self->_transposedKeypoints.xyPointsWideTransposed, self->_keypointsCount, v52, &self->_adaptiveCorrectionConfig, v54);
    v57.columns[0] = v46;
    v57.columns[1] = v47;
    v24 = __invert_f2(v57);
    v58.columns[0] = v44;
    v58.columns[1] = v45;
    v25 = __invert_f2(v58);
    v26 = AdaptiveCorrection_rotateCalModel(v42, &self->_correctedCalibration, v40, v38, v41, v39, v24.columns[0], v24.columns[1], v25.columns[0], v25.columns[1]);
    if (v26)
    {
      sub_295769C2C(v26, v42);
      return 3;
    }
  }

  else
  {
    bzero(v54, 0x748uLL);
  }

  v35 = objc_msgSend__computeCanonicalDisparityScaleFactor(self, v27, v28, v29, v30, v31, v32, v33, v34, *&v38, *&v39, *&v40, *&v41);
  self->_correctedCalibration.canonicalDisparityScale = v36;
  if (BYTE4(v54[0]))
  {
    if (v55)
    {
      return 0;
    }

    else
    {
      sub_295769D20(v35);
      return 2;
    }
  }

  else
  {
    sub_295769CA8(v35);
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
  v6 = sub_295761954(&self->_correctedCalibration, self->_anon_6b0, self->_anon_6e0, self->_anon_710, 0, 0);
  if (v6)
  {
    v62 = v6;
    sub_295769D98();
    return v62;
  }

  v15 = objc_msgSend__computeCenteredRectificationHomographies(self, v7, v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    v62 = v15;
    sub_295769E10();
    return v62;
  }

  v26 = *self->_orientationVector;
  if (sqrtf(vaddv_f32(vmul_f32(v26, v26))) <= 0.0)
  {
    sub_295769F78();
    return -12780;
  }

  v23.i64[0] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[3];
  *v23.i32 = *v23.i64;
  *v23.i32 = -*v23.i32;
  v27 = self->_initialCalibration.extrinRotRefefenceToAuxiliary[7];
  *v24.i32 = -v27;
  if (sqrtf(vaddv_f32(vmul_f32(__PAIR64__(v24.u32[0], v23.u32[0]), __PAIR64__(v24.u32[0], v23.u32[0])))) <= 0.0)
  {
    sub_295769F00();
    return -12780;
  }

  v25.i32[0] = 1.0;
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v29 = *vbslq_s8(v28, v25, v23).i32;
  LODWORD(v30) = vbslq_s8(v28, v25, v24).u32[0];
  v25.i64[0] = 0;
  v31 = 0;
  if (v29 <= 0.0)
  {
    *v31.i32 = self->_pixelBufferDimensions[0].width + -1.0;
  }

  if (v30 <= 0.0)
  {
    *v25.i32 = self->_pixelBufferDimensions[0].height + -1.0;
  }

  v32 = 0;
  __asm { FMOV            V3.4S, #1.0 }

  v37 = vzip2q_s32(vdupq_lane_s32(v31, 0), _Q3);
  v38 = LODWORD(v29);
  v39.i32[0] = 0;
  v39.i64[1] = 0;
  v39.f32[1] = v30;
  _Q3.i64[0] = __PAIR64__(v25.u32[0], v31.u32[0]);
  *self->_orientationVector = vbsl_s8(vcltz_f32(v26), vneg_f32(v26), v26);
  v41 = *&self->_anon_710[16];
  v42 = *&self->_anon_710[32];
  v43 = vzip1q_s32(v37, v25);
  v64 = *self->_anon_710;
  v65 = v41;
  v66 = v42;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  do
  {
    *(&v67 + v32 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*(&v64 + v32 * 4))), v39, *&v64.f32[v32], 1), _Q3, *(&v64 + v32 * 4), 2);
    v32 += 4;
  }

  while (v32 != 12);
  v44 = 0;
  v38.i32[3] = 0;
  v39.i32[3] = 0;
  v43.i32[3] = 0;
  v45 = v67;
  v46 = v68;
  v47 = v69;
  *(anon_6b0 + 26) = DWORD2(v67);
  *(anon_6b0 + 30) = DWORD2(v46);
  *(anon_6b0 + 12) = v45;
  *(anon_6b0 + 14) = v46;
  *(anon_6b0 + 34) = DWORD2(v47);
  *(anon_6b0 + 16) = v47;
  v48 = *self->_anon_6b0;
  v49 = *&self->_anon_6b0[16];
  v50 = *&self->_anon_6b0[32];
  v64 = v38;
  v65 = v39;
  v66 = v43;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  do
  {
    *(&v67 + v44 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*(&v64 + v44 * 4))), v49, *&v64.f32[v44], 1), v50, *(&v64 + v44 * 4), 2);
    v44 += 4;
  }

  while (v44 != 12);
  v51 = 0;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  *(anon_6b0 + 2) = DWORD2(v67);
  *(anon_6b0 + 6) = DWORD2(v53);
  *anon_6b0 = v52;
  *(anon_6b0 + 2) = v53;
  *(anon_6b0 + 10) = DWORD2(v54);
  *(anon_6b0 + 4) = v54;
  v55 = *self->_anon_6e0;
  v56 = *&self->_anon_6e0[16];
  v57 = *&self->_anon_6e0[32];
  v64 = v38;
  v65 = v39;
  v66 = v43;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  do
  {
    *(&v67 + v51 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(*(&v64 + v51 * 4))), v56, *&v64.f32[v51], 1), v57, *(&v64 + v51 * 4), 2);
    v51 += 4;
  }

  while (v51 != 12);
  v58 = v67;
  v59 = v68;
  v60 = v69;
  *(anon_6b0 + 14) = DWORD2(v67);
  *(anon_6b0 + 18) = DWORD2(v59);
  *(anon_6b0 + 6) = v58;
  *(anon_6b0 + 8) = v59;
  *(anon_6b0 + 22) = DWORD2(v60);
  *(anon_6b0 + 10) = v60;
  v61 = objc_msgSend__computePaddedAuxiliaryRectificationHomography(self, v16, v17, v18, v19, v20, v21, v22, *&v58, *&v64, *&v65, *&v66);
  v62 = v61;
  if (v61)
  {
    sub_295769E88(v61);
  }

  return v62;
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
  v22[2] = xmmword_29577A870;
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
  v161 = *self->_undistModels[0].polyDynamic;
  v162 = v4;
  v5 = *&self->_undistModels[0].polyDynamic[6];
  v163 = *&self->_undistModels[0].polyDynamic[4];
  v164 = v5;
  v6 = *&self->_undistModels[0].polyBase[2];
  v157 = *self->_undistModels[0].polyBase;
  v158 = v6;
  v7 = *&self->_undistModels[0].polyBase[6];
  v159 = *&self->_undistModels[0].polyBase[4];
  v160 = v7;
  v8 = *&self->_undistModels[0].opticalCenterX;
  v155 = *&self->_undistModels[0].pixelSizeMM;
  v156 = v8;
  x = self->_referenceFinalCropRect.origin.x;
  *&v8 = self->_referenceFinalCropRect.origin.y;
  v10 = x + self->_referenceFinalCropRect.size.width;
  v11 = *&v8 + self->_referenceFinalCropRect.size.height;
  v140.f64[0] = x;
  *&v140.f64[1] = v8;
  v141 = v10;
  v142 = v8;
  v143 = x;
  v144 = v11;
  v145 = v10;
  v146 = v11;
  v147 = v156;
  v148 = v8;
  v149 = v156;
  v150 = v11;
  v151 = x;
  v152 = *(&v156 + 1);
  v153 = v10;
  v154 = *(&v156 + 1);
  memset(v139, 0, sizeof(v139));
  v12 = sub_295761800(&v140, 8, &v155, v139);
  v20 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  memset(v138, 0, sizeof(v138));
  do
  {
    *&v26 = vcvt_f32_f64(v139[v20]);
    *(&v26 + 1) = _D0;
    v138[v20++] = v26;
  }

  while (v20 != 8);
  v27 = 0;
  v136 = 0u;
  v137 = 0u;
  v28 = *anon_6b0;
  v29 = *(anon_6b0 + 1);
  v30 = *(anon_6b0 + 2);
  v31.i64[0] = 0x3F0000003F000000;
  v31.i64[1] = 0x3F0000003F000000;
  do
  {
    v32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(v138[v27])), v29, *&v138[v27], 1), v30, v138[v27], 2);
    if (v32.f32[2] <= 0.0)
    {
      sub_295769FF0(v12);
      return -12780;
    }

    *(&v136 + (v27 & 1)) = vmlaq_f32(*(&v136 + (v27 & 1)), v31, vdivq_f32(v32, vdupq_laneq_s32(v32, 2)));
    ++v27;
  }

  while (v27 != 4);
  v131 = v30;
  v132 = v29;
  v133 = v28;
  v36 = vsubq_f32(v137, v136);
  v33 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v36, v36)));
  v34 = vrsqrte_f32(v33);
  v35 = vmul_f32(v34, vrsqrts_f32(v33.u32[0], vmul_f32(v34, v34)));
  *v36.f32 = vmul_n_f32(*v36.f32, vmul_f32(v35, vrsqrts_f32(v33.u32[0], vmul_f32(v35, v35))).f32[0]);
  __asm { FMOV            V2.2S, #-1.0 }

  *v28.f32 = vminnm_f32(vmaxnm_f32(*v36.f32, _D2), _D0);
  *self->_orientationVector = v28.i64[0];
  rectificationAngleStep = self->_rectificationAngleStep;
  if (rectificationAngleStep != 0.0)
  {
    v134 = v28;
    *v39.i32 = rectificationAngleStep * roundf(acosf(v28.f32[0]) / rectificationAngleStep);
    v40 = v134;
    v40.i32[0] = v134.i32[1];
    v41.i64[0] = 0x8000000080000000;
    v41.i64[1] = 0x8000000080000000;
    LODWORD(v130) = vbslq_s8(v41, v39, v40).u32[0];
    v42.f32[0] = cosf(*v39.i32);
    v135 = v42;
    v43 = sinf(v130);
    v28 = v135;
    v28.f32[1] = v43;
    *self->_orientationVector = v28.i64[0];
  }

  v44 = 0;
  *v36.f32 = vrev64_s32(*v28.f32);
  v50.i64[0] = 0;
  v50.i32[3] = 0;
  *&v50.i32[2] = -v28.f32[1];
  v45 = vdupq_lane_s32(*v36.f32, 1);
  v46 = v28;
  v46.i32[1] = 0;
  v47 = vzip1q_s32(v46, v36);
  v36.i64[0] = v28.i64[0];
  v48 = vzip2q_s32(v50, v45);
  v30.f32[0] = self->_correctedCalibration.focalLengthPix[0];
  v45.f64[0] = self->_correctedCalibration.opticalCenterX[0];
  v45.f64[1] = self->_correctedCalibration.opticalCenterY[0];
  v49 = vcvt_f32_f64(v45);
  v50.i64[1] = 0;
  *v50.i32 = 1.0 / v30.f32[0];
  v51.i32[0] = 0;
  v51.i64[1] = 0;
  v51.f32[1] = 1.0 / v30.f32[0];
  *v52.f32 = vdiv_f32(vneg_f32(v49), vdup_lane_s32(*v30.f32, 0));
  v52.i64[1] = COERCE_UNSIGNED_INT(1.0);
  v53 = v30.u32[0];
  v165 = COERCE_UNSIGNED_INT(1.0 / v30.f32[0]);
  v166 = v51.u64[0];
  v167 = v52;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v44) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v165 + v44))), v48, *&v165.i8[v44], 1), xmmword_29577A870, *(&v165 + v44), 2);
    v44 += 16;
  }

  while (v44 != 48);
  v54 = 0;
  __asm { FMOV            V6.4S, #1.0 }

  v56.i64[1] = _Q6.i64[1];
  *v56.f32 = v49;
  v57.i32[0] = 0;
  v57.i64[1] = 0;
  v57.i32[1] = v30.i32[0];
  v165 = v168;
  v166 = v169;
  v167 = v170;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v54) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.u32[0], COERCE_FLOAT(*(&v165 + v54))), v57, *&v165.i8[v54], 1), v56, *(&v165 + v54), 2);
    v54 += 16;
  }

  while (v54 != 48);
  v58 = 0;
  v59 = v168;
  v60 = v169;
  v61 = v170;
  v62 = vdupq_lane_s32(*v48.f32, 1);
  v63 = vzip1q_s32(v47, v48);
  v63.i32[2] = 0;
  v64 = vzip2q_s32(vzip1q_s32(v47, 0), v62);
  v65 = vdupq_laneq_s32(v47, 2);
  v65.i32[1] = 0;
  v65.i32[2] = 1.0;
  v165 = v50;
  v166 = v51;
  v167 = v52;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v58) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v165 + v58))), v64, *&v165.i8[v58], 1), v65, *(&v165 + v58), 2);
    v58 += 16;
  }

  while (v58 != 48);
  v66 = 0;
  v165 = v168;
  v166 = v169;
  v167 = v170;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v66) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.u32[0], COERCE_FLOAT(*(&v165 + v66))), v57, *&v165.i8[v66], 1), v56, *(&v165 + v66), 2);
    v66 += 16;
  }

  while (v66 != 48);
  v67 = 0;
  v68 = v168;
  v69 = v169;
  v70 = v170;
  v71 = *(anon_6b0 + 7);
  v72 = *(anon_6b0 + 8);
  v165 = *(anon_6b0 + 6);
  v166 = v71;
  v167 = v72;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v67) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v165 + v67))), v60, *&v165.i8[v67], 1), v61, *(&v165 + v67), 2);
    v67 += 16;
  }

  while (v67 != 48);
  v73 = 0;
  v68.i32[3] = 0;
  v69.i32[3] = 0;
  v70.i32[3] = 0;
  v74 = v168.i64[0];
  v75 = v169;
  v76 = v170;
  *(anon_6b0 + 26) = v168.i32[2];
  *(anon_6b0 + 12) = v74;
  *(anon_6b0 + 30) = v75.i32[2];
  *(anon_6b0 + 14) = v75.i64[0];
  *(anon_6b0 + 34) = v76.i32[2];
  *(anon_6b0 + 16) = v76.i64[0];
  v165 = v68;
  v166 = v69;
  v167 = v70;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v77.i32[1] = v131.i32[1];
  do
  {
    *(&v168 + v73) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*(&v165 + v73))), v132, *&v165.i8[v73], 1), v131, *(&v165 + v73), 2);
    v73 += 16;
  }

  while (v73 != 48);
  v78 = 0;
  v79 = v168.i64[0];
  v80 = v169;
  v81 = v170;
  *(anon_6b0 + 2) = v168.i32[2];
  *(anon_6b0 + 6) = v80.i32[2];
  *anon_6b0 = v79;
  *(anon_6b0 + 2) = v80.i64[0];
  *(anon_6b0 + 10) = v81.i32[2];
  *(anon_6b0 + 4) = v81.i64[0];
  v82 = *(anon_6b0 + 3);
  v83 = *(anon_6b0 + 4);
  v84 = *(anon_6b0 + 5);
  v165 = v68;
  v166 = v69;
  v167 = v70;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v78) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(*(&v165 + v78))), v83, *&v165.i8[v78], 1), v84, *(&v165 + v78), 2);
    v78 += 16;
  }

  while (v78 != 48);
  v85 = 0;
  v86 = v168.i64[0];
  v87 = v169;
  v88 = v170;
  *(anon_6b0 + 14) = v168.i32[2];
  *(anon_6b0 + 18) = v87.i32[2];
  *(anon_6b0 + 6) = v86;
  *(anon_6b0 + 8) = v87.i64[0];
  *(anon_6b0 + 22) = v88.i32[2];
  *(anon_6b0 + 10) = v88.i64[0];
  v89 = *(anon_6b0 + 6);
  v90 = *(anon_6b0 + 7);
  v91 = 0x80000000800000;
  v92 = vneg_f32(0x80000000800000);
  v93 = *(anon_6b0 + 8);
  do
  {
    v94 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(v138[v85])), v90, *&v138[v85], 1), v93, v138[v85], 2);
    if (*&v94.i32[2] <= 0.0)
    {
      sub_29576A064();
      return -12780;
    }

    v95 = vdiv_f32(*v94.i8, *&vdupq_laneq_s32(v94, 2));
    v92 = vminnm_f32(v92, v95);
    v91 = vmaxnm_f32(v91, v95);
    ++v85;
  }

  while (v85 != 8);
  v96 = 0;
  v97 = vcvt_f32_s32(self->_pixelBufferDimensions[0]);
  v98 = vdiv_f32(v97, vsub_f32(v91, v92));
  if (v98.f32[0] >= v98.f32[1])
  {
    v98.f32[0] = v98.f32[1];
  }

  *v77.i32 = v98.f32[0] * v30.f32[0];
  v99.i64[1] = _Q6.i64[1];
  *v99.f32 = vmla_n_f32(vmul_f32(v97, 0x3F0000003F000000), vsub_f32(v49, vmul_f32(vadd_f32(v92, v91), 0x3F0000003F000000)), v98.f32[0]);
  v100.i32[0] = 0;
  v100.i64[1] = 0;
  v100.i32[1] = v77.i32[0];
  v101.i64[1] = 0;
  *_Q6.f32 = vdiv_f32(vneg_f32(*v99.f32), vdup_lane_s32(v77, 0));
  LODWORD(self->_rectificationFocalLengthFactor) = v98.i32[0];
  v165 = v50;
  v166 = v51;
  v167 = v52;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v96) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77.u32[0], COERCE_FLOAT(*(&v165 + v96))), v100, *&v165.i8[v96], 1), v99, *(&v165 + v96), 2);
    v96 += 16;
  }

  while (v96 != 48);
  v102 = 0;
  LODWORD(v103) = 0;
  *(&v103 + 1) = 1.0 / *v77.i32;
  _Q6.i32[3] = 0;
  v104 = v168;
  v105 = v169;
  v106 = v170;
  v101.i64[0] = COERCE_UNSIGNED_INT(1.0 / *v77.i32);
  v165 = v101;
  v166 = v103;
  v167 = _Q6;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v102) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v165 + v102))), v57, *&v165.i8[v102], 1), v56, *(&v165 + v102), 2);
    v102 += 16;
  }

  while (v102 != 48);
  v107 = 0;
  v108 = v168;
  v109 = v169;
  v110 = v170;
  v165 = v89;
  v166 = v90;
  v167 = v93;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v107) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*(&v165 + v107))), v105, *&v165.i8[v107], 1), v106, *(&v165 + v107), 2);
    v107 += 16;
  }

  while (v107 != 48);
  v111 = 0;
  v108.i32[3] = 0;
  v109.i32[3] = 0;
  v110.i32[3] = 0;
  v112 = v168.i64[0];
  v113 = v169;
  v114 = v170;
  *(anon_6b0 + 26) = v168.i32[2];
  *(anon_6b0 + 30) = v113.i32[2];
  *(anon_6b0 + 12) = v112;
  *(anon_6b0 + 14) = v113.i64[0];
  *(anon_6b0 + 34) = v114.i32[2];
  *(anon_6b0 + 16) = v114.i64[0];
  v115 = *anon_6b0;
  v116 = *(anon_6b0 + 1);
  v117 = *(anon_6b0 + 2);
  v165 = v108;
  v166 = v109;
  v167 = v110;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v111) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v115, COERCE_FLOAT(*(&v165 + v111))), v116, *&v165.i8[v111], 1), v117, *(&v165 + v111), 2);
    v111 += 16;
  }

  while (v111 != 48);
  v118 = 0;
  v119 = v168.i64[0];
  v120 = v169;
  v121 = v170;
  *(anon_6b0 + 2) = v168.i32[2];
  *(anon_6b0 + 6) = v120.i32[2];
  *anon_6b0 = v119;
  *(anon_6b0 + 2) = v120.i64[0];
  *(anon_6b0 + 10) = v121.i32[2];
  *(anon_6b0 + 4) = v121.i64[0];
  v122 = *(anon_6b0 + 3);
  v123 = *(anon_6b0 + 4);
  v124 = *(anon_6b0 + 5);
  v165 = v108;
  v166 = v109;
  v167 = v110;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  do
  {
    *(&v168 + v118) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*(&v165 + v118))), v123, *&v165.i8[v118], 1), v124, *(&v165 + v118), 2);
    v118 += 16;
  }

  while (v118 != 48);
  v125 = v168.i64[0];
  v126 = v169;
  v127 = v170;
  *(anon_6b0 + 14) = v168.i32[2];
  *(anon_6b0 + 18) = v126.i32[2];
  *(anon_6b0 + 6) = v125;
  *(anon_6b0 + 8) = v126.i64[0];
  *(anon_6b0 + 22) = v127.i32[2];
  *(anon_6b0 + 10) = v127.i64[0];
  objc_msgSend__computeCanonicalDisparityScaleFactor(self, v13, v14, v15, v16, v17, v18, v19, *&v125);
  result = 0;
  self->_correctedCalibration.canonicalDisparityScale = v129;
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
  v5 = sub_2957620D0(&self->_initialCalibration, 0, &v22, &v19, 0, &v16, 0);
  if (v5)
  {
    v8 = v5;
    sub_29576A0D8();
  }

  else
  {
    v6 = vaddq_f32(v18, vmlaq_n_f32(vmulq_n_f32(v16, (self->_pixelBufferDimensions[0].width + -1.0) * 0.5), v17, (self->_pixelBufferDimensions[0].height + -1.0) * 0.5));
    v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v6.f32[0]), v20, *v6.f32, 1), v21, v6, 2);
    if (v7.n128_f32[2] <= 0.1)
    {
      sub_29576A150(v7, v7.n128_f32[2]);
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