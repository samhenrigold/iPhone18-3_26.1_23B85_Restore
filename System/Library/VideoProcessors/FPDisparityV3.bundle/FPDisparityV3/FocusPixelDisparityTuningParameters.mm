@interface FocusPixelDisparityTuningParameters
- (FocusPixelDisparityTuningParameters)init;
- (FocusPixelDisparityTuningParameters)initWithTuningDictionary:(id)dictionary cameraInfoByPortType:(id)type;
- (int)readFPDisparity_v3_Config:(id)config;
- (int)setDefaultFPDisparity_v3_Parameters;
@end

@implementation FocusPixelDisparityTuningParameters

- (int)setDefaultFPDisparity_v3_Parameters
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v11 = v9;
  if (!v3)
  {
    sub_29579C208(&v150);
LABEL_26:
    v147 = v150;
    goto LABEL_15;
  }

  if (!v5)
  {
    sub_29579C15C(&v150);
    goto LABEL_26;
  }

  if (!v6)
  {
    sub_29579C0B0(&v150);
    goto LABEL_26;
  }

  if (!v4)
  {
    sub_29579C004(&v150);
    goto LABEL_26;
  }

  if (!v7)
  {
    sub_29579BF58(&v150);
    goto LABEL_26;
  }

  if (!v8)
  {
    sub_29579BEAC(&v150);
    goto LABEL_26;
  }

  if (!v9)
  {
    sub_29579BE00(&v150);
    goto LABEL_26;
  }

  objc_msgSend_setNView_(v4, v10, 4);
  objc_msgSend_setMicrolensSpatialOffset_(v4, v12, v13, 0.0);
  objc_msgSend_setForegroundPush_(v4, v14, v15, 0.0);
  objc_msgSend_setBackgroundPush_(v4, v16, v17, 0.0);
  objc_msgSend_setRigidWindowSupport_(v4, v18, 3);
  LODWORD(v19) = 0.5;
  objc_msgSend_setCostMapAntialiasingStrength_(v4, v20, v21, v19);
  LODWORD(v22) = 953267991;
  objc_msgSend_setCostEpsilon_(v4, v23, v24, v22);
  LODWORD(v25) = 1061673905;
  objc_msgSend_setLensFieldCurvatureA0_(v4, v26, v27, v25);
  LODWORD(v28) = 1054277133;
  objc_msgSend_setLensFieldCurvatureA1_(v4, v29, v30, v28);
  LODWORD(v31) = -1069655439;
  objc_msgSend_setLensFieldCurvatureA2_(v4, v32, v33, v31);
  LODWORD(v34) = 1089940729;
  objc_msgSend_setLensFieldCurvatureA3_(v4, v35, v36, v34);
  LODWORD(v37) = -1066686669;
  objc_msgSend_setLensFieldCurvatureA4_(v4, v38, v39, v37);
  LODWORD(v40) = 1034147594;
  objc_msgSend_setCircleOfConfusionGain_(v4, v41, v42, v40);
  LODWORD(v43) = -1085809743;
  objc_msgSend_setCircleOfConfusionOffset_(v4, v44, v45, v43);
  LODWORD(v46) = 1008981770;
  objc_msgSend_setRadialMin_(v4, v47, v48, v46);
  LODWORD(v49) = 1.0;
  objc_msgSend_setRadialGain_(v4, v50, v51, v49);
  LODWORD(v52) = 1.0;
  objc_msgSend_setRadialExponent_(v4, v53, v54, v52);
  objc_msgSend_setFPcostParameters_(self->_FPDisparityEstimator_Config, v55, v4);
  LODWORD(v56) = 3.0;
  objc_msgSend_setLambda_(v7, v57, v58, v56);
  LODWORD(v59) = 3.0;
  objc_msgSend_setLambda_foreground_(v7, v60, v61, v59);
  LODWORD(v62) = 3.0;
  objc_msgSend_setLambda_background_(v7, v63, v64, v62);
  LODWORD(v65) = 1.0;
  objc_msgSend_setStep_(v7, v66, v67, v65);
  LODWORD(v68) = 16.0;
  objc_msgSend_setAlpha_(v3, v69, v70, v68);
  LODWORD(v71) = 1.0;
  objc_msgSend_setBeta_(v3, v72, v73, v71);
  LODWORD(v74) = 1.0;
  objc_msgSend_setGain_(v3, v75, v76, v74);
  LODWORD(v77) = 981668463;
  objc_msgSend_setOffset_(v3, v78, v79, v77);
  LODWORD(v80) = 1061997773;
  objc_msgSend_setSegmentation_bias_foreground_(v3, v81, v82, v80);
  LODWORD(v83) = 1051931443;
  objc_msgSend_setSegmentation_bias_background_(v3, v84, v85, v83);
  objc_msgSend_setA_checkerboard_(v5, v86, v87, 0.0);
  LODWORD(v88) = 1.0;
  objc_msgSend_setB_checkerboard_(v5, v89, v90, v88);
  LODWORD(v91) = 0.25;
  objc_msgSend_setTau_(v5, v92, v93, v91);
  LODWORD(v94) = 0.5;
  objc_msgSend_setSigma_(v5, v95, v96, v94);
  LODWORD(v97) = 1.0;
  objc_msgSend_setTheta_(v5, v98, v99, v97);
  LODWORD(v100) = 1008981770;
  objc_msgSend_setHuber_eps_(v5, v101, v102, v100);
  objc_msgSend_setWarpings_(v5, v103, 1);
  objc_msgSend_setIterations_(v5, v104, 200);
  LODWORD(v105) = 1015021696;
  objc_msgSend_setBlackLevelOffset_(v8, v106, v107, v105);
  LODWORD(v108) = 1063387136;
  objc_msgSend_setBlackLevelScaling_(v8, v109, v110, v108);
  LODWORD(v111) = -1076007822;
  objc_msgSend_setShiftToDisparityRatio_(v11, v112, v113, v111);
  LODWORD(v114) = 1006834287;
  objc_msgSend_setCalibrationMaxResidual1_(v11, v115, v116, v114);
  LODWORD(v117) = 1018444120;
  objc_msgSend_setCalibrationMaxResidual2_(v11, v118, v119, v117);
  objc_msgSend_setScales_(v6, v120, 1);
  objc_msgSend_setRadius_(v6, v121, 6);
  objc_msgSend_setPadding_(v6, v122, 2);
  LODWORD(v123) = 6.0;
  objc_msgSend_setSigma_0_(v6, v124, v125, v123);
  LODWORD(v126) = 3.0;
  objc_msgSend_setSigma_1_(v6, v127, v128, v126);
  LODWORD(v129) = 3.0;
  objc_msgSend_setSigma_2_(v6, v130, v131, v129);
  v132 = objc_opt_new();
  FPDisparityEstimator_Config = self->_FPDisparityEstimator_Config;
  self->_FPDisparityEstimator_Config = v132;

  v135 = self->_FPDisparityEstimator_Config;
  if (!v135)
  {
    sub_29579BD54(&v150);
    goto LABEL_26;
  }

  objc_msgSend_setFPpreprocessingParameters_(v135, v134, v8);
  v136 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (!v136)
  {
    sub_29579BCA8(&v150);
    goto LABEL_26;
  }

  v137 = v136;
  v149 = v8;
  v138 = 0;
  while (1)
  {
    v139 = objc_opt_new();
    if (!v139)
    {
      break;
    }

    v141 = v139;
    objc_msgSend_setSolverParameters_(v139, v140, v5);
    objc_msgSend_setRegularizationParameters_(v141, v142, v3);
    objc_msgSend_setHbfParameters_(v141, v143, v6);
    objc_msgSend_setCostParameters_(v141, v144, v7);
    objc_msgSend_setObject_atIndexedSubscript_(v137, v145, v141, v138);

    if (++v138 == 8)
    {
      objc_msgSend_setLevelsParameters_(self->_FPDisparityEstimator_Config, v146, v137);

      v147 = 0;
      goto LABEL_14;
    }
  }

  sub_29579BBE4(v137, &v150);
  v147 = v150;
LABEL_14:
  v8 = v149;
LABEL_15:

  return v147;
}

- (FocusPixelDisparityTuningParameters)init
{
  v8.receiver = self;
  v8.super_class = FocusPixelDisparityTuningParameters;
  v2 = [(FocusPixelDisparityTuningParameters *)&v8 init];
  v5 = v2;
  if (v2 && objc_msgSend_setDefaultFPDisparity_v3_Parameters(v2, v3, v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (int)readFPDisparity_v3_Config:(id)config
{
  configCopy = config;
  v7 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (!v7)
  {
    sub_29579C9A0(&v216);
LABEL_35:
    v184 = v216;
    goto LABEL_32;
  }

  if (!configCopy)
  {
    sub_29579C8F4(&v216);
    goto LABEL_35;
  }

  v215 = objc_msgSend_objectForKeyedSubscript_(configCopy, v6, @"reg");
  if (!v215)
  {
    sub_29579C880();
LABEL_42:
    v184 = -12780;
    goto LABEL_32;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(configCopy, v8, @"cost");
  if (!v9)
  {
    sub_29579C7F4(v215);
    goto LABEL_42;
  }

  v11 = v9;
  v12 = objc_msgSend_objectForKeyedSubscript_(configCopy, v10, @"solver");
  if (!v12)
  {
    sub_29579C760(v11, v215);
    goto LABEL_42;
  }

  v14 = v12;
  v214 = objc_msgSend_objectForKeyedSubscript_(configCopy, v13, @"hbf");
  if (!v214)
  {
    sub_29579C6BC(v14, v11, v215);
    goto LABEL_42;
  }

  v212 = objc_msgSend_objectForKeyedSubscript_(configCopy, v15, @"preprocessing");
  if (!v212)
  {
    sub_29579C610(v214, v14, v11, v215);
    goto LABEL_42;
  }

  v211 = objc_msgSend_objectForKeyedSubscript_(configCopy, v16, @"postprocessing");
  if (!v211)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v198, v201, v203, v205, v207, v209);

    goto LABEL_42;
  }

  v17 = objc_opt_new();
  FPDisparityEstimator_Config = self->_FPDisparityEstimator_Config;
  self->_FPDisparityEstimator_Config = v17;

  if (!self->_FPDisparityEstimator_Config)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v198, v201, v203, v205, v207, v209);
    emitter = fig_log_get_emitter();
    v192 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<<<< FocusPixelDisparity Tuning >>>>", 202);
LABEL_45:
    v184 = v192;
LABEL_49:

    goto LABEL_32;
  }

  v19 = objc_opt_new();
  if (!v19)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v198, v201, v203, v205, v207, v209);
    v193 = fig_log_get_emitter();
    v192 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v193, 4294954510, "<<<< FocusPixelDisparity Tuning >>>>", 207);
    goto LABEL_45;
  }

  v20 = v19;
  selfCopy = self;
  v216 = 0;
  sub_29578DE10(v11, @"nview", &v216);
  objc_msgSend_setNView_(v20, v21, v216);
  v216 = 0;
  sub_29578DE70(v11, @"microlens_spatial_offset", 0, &v216);
  LODWORD(v22) = v216;
  objc_msgSend_setMicrolensSpatialOffset_(v20, v23, v24, v22);
  v216 = 0;
  sub_29578DE70(v11, @"foreground_push", 0, &v216);
  LODWORD(v25) = v216;
  objc_msgSend_setForegroundPush_(v20, v26, v27, v25);
  v216 = 0;
  sub_29578DE70(v11, @"background_push", 0, &v216);
  LODWORD(v28) = v216;
  objc_msgSend_setBackgroundPush_(v20, v29, v30, v28);
  v216 = 0;
  sub_29578DE10(v11, @"rigid_window_support", &v216);
  objc_msgSend_setRigidWindowSupport_(v20, v31, v216);
  v216 = 0;
  sub_29578DE70(v11, @"cost_map_antialiasing_strength", 0, &v216);
  LODWORD(v32) = v216;
  objc_msgSend_setCostMapAntialiasingStrength_(v20, v33, v34, v32);
  v216 = 0;
  sub_29578DE70(v11, @"cost_epsilon", 0, &v216);
  LODWORD(v35) = v216;
  objc_msgSend_setCostEpsilon_(v20, v36, v37, v35);
  v216 = 0;
  sub_29578DE70(v11, @"lens_field_curvature_a0", 0, &v216);
  LODWORD(v38) = v216;
  objc_msgSend_setLensFieldCurvatureA0_(v20, v39, v40, v38);
  v216 = 0;
  sub_29578DE70(v11, @"lens_field_curvature_a1", 0, &v216);
  LODWORD(v41) = v216;
  objc_msgSend_setLensFieldCurvatureA1_(v20, v42, v43, v41);
  v216 = 0;
  sub_29578DE70(v11, @"lens_field_curvature_a2", 0, &v216);
  LODWORD(v44) = v216;
  objc_msgSend_setLensFieldCurvatureA2_(v20, v45, v46, v44);
  v216 = 0;
  sub_29578DE70(v11, @"lens_field_curvature_a3", 0, &v216);
  LODWORD(v47) = v216;
  objc_msgSend_setLensFieldCurvatureA3_(v20, v48, v49, v47);
  v216 = 0;
  sub_29578DE70(v11, @"lens_field_curvature_a4", 0, &v216);
  LODWORD(v50) = v216;
  objc_msgSend_setLensFieldCurvatureA4_(v20, v51, v52, v50);
  v216 = 0;
  sub_29578DE70(v11, @"circle_of_confusion_gain", 0, &v216);
  LODWORD(v53) = v216;
  objc_msgSend_setCircleOfConfusionGain_(v20, v54, v55, v53);
  v216 = 0;
  sub_29578DE70(v11, @"circle_of_confusion_offset", 0, &v216);
  LODWORD(v56) = v216;
  objc_msgSend_setCircleOfConfusionOffset_(v20, v57, v58, v56);
  v216 = 0;
  sub_29578DE70(v11, @"radial_exponent", 0, &v216);
  LODWORD(v59) = v216;
  objc_msgSend_setRadialExponent_(v20, v60, v61, v59);
  v216 = 0;
  sub_29578DE70(v11, @"radial_gain", 0, &v216);
  LODWORD(v62) = v216;
  objc_msgSend_setRadialGain_(v20, v63, v64, v62);
  v216 = 0;
  sub_29578DE70(v11, @"radial_min", 0, &v216);
  LODWORD(v65) = v216;
  objc_msgSend_setRadialMin_(v20, v66, v67, v65);
  v216 = 0;
  sub_29578DE70(v11, @"AGC_low", 0, &v216);
  LODWORD(v68) = v216;
  objc_msgSend_setAGCLow_(v20, v69, v70, v68);
  v216 = 0;
  sub_29578DE70(v11, @"AGC_high", 0, &v216);
  LODWORD(v71) = v216;
  v210 = v20;
  objc_msgSend_setAGCHigh_(v20, v72, v73, v71);
  v74 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v76 = objc_msgSend_initWithCapacity_(v74, v75, 20);
  for (i = 0; i != 20; ++i)
  {
    v216 = 0;
    sub_29578DE70(v11, @"correction_coefficients_weights", i, &v216);
    LODWORD(v78) = v216;
    v81 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v79, v80, v78);
    objc_msgSend_setObject_atIndexedSubscript_(v76, v82, v81, i);
  }

  v84 = v210;
  objc_msgSend_setCorrectionCoefficientsWeights_(v210, v83, v76);

  objc_msgSend_setFPcostParameters_(self->_FPDisparityEstimator_Config, v85, v210);
  v86 = objc_opt_new();
  if (!v86)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v198, v201, v203, v205, self, v210);
    fig_log_get_emitter();
    v184 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v194, v196, v199);
LABEL_48:

    goto LABEL_49;
  }

  v87 = v86;
  v216 = 0;
  sub_29578DE70(v212, @"black_level_offset", 0, &v216);
  LODWORD(v88) = v216;
  objc_msgSend_setBlackLevelOffset_(v87, v89, v90, v88);
  v216 = 0;
  sub_29578DE70(v212, @"black_level_scaling", 0, &v216);
  LODWORD(v91) = v216;
  objc_msgSend_setBlackLevelScaling_(v87, v92, v93, v91);
  objc_msgSend_setFPpreprocessingParameters_(self->_FPDisparityEstimator_Config, v94, v87);
  v95 = objc_opt_new();
  if (!v95)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v198, v201, v203, v205, self, v210);
    fig_log_get_emitter();
    v184 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v195, v197, v200);

    goto LABEL_48;
  }

  v204 = v87;
  v206 = configCopy;
  v213 = v7;
  v216 = 0;
  v96 = v95;
  sub_29578DE70(v211, @"shift_to_disparity_ratio", 0, &v216);
  LODWORD(v97) = v216;
  objc_msgSend_setShiftToDisparityRatio_(v96, v98, v99, v97);
  v216 = 0;
  sub_29578DE70(v211, @"max_residual1", 0, &v216);
  LODWORD(v100) = v216;
  objc_msgSend_setCalibrationMaxResidual1_(v96, v101, v102, v100);
  v216 = 0;
  sub_29578DE70(v211, @"max_residual2", 0, &v216);
  LODWORD(v103) = v216;
  objc_msgSend_setCalibrationMaxResidual2_(v96, v104, v105, v103);
  v202 = v96;
  objc_msgSend_setFPpostprocessingParameters_(selfCopy->_FPDisparityEstimator_Config, v106, v96);
  v107 = 0;
  while (1)
  {
    v108 = objc_opt_new();
    v109 = objc_opt_new();
    v110 = objc_opt_new();
    v111 = objc_opt_new();
    v112 = objc_opt_new();
    v113 = v112;
    if (v108)
    {
      if (v109)
      {
        if (v110)
        {
          if (v111)
          {
            if (v112)
            {
              v216 = 0;
              sub_29578DE70(v215, @"alpha", v107, &v216);
              LODWORD(v114) = v216;
              objc_msgSend_setAlpha_(v109, v115, v116, v114);
              v216 = 0;
              sub_29578DE70(v215, @"beta", v107, &v216);
              LODWORD(v117) = v216;
              objc_msgSend_setBeta_(v109, v118, v119, v117);
              v216 = 0;
              sub_29578DE70(v215, @"gain", v107, &v216);
              LODWORD(v120) = v216;
              objc_msgSend_setGain_(v109, v121, v122, v120);
              v216 = 0;
              sub_29578DE70(v215, @"offset", v107, &v216);
              LODWORD(v123) = v216;
              objc_msgSend_setOffset_(v109, v124, v125, v123);
              v216 = 0;
              sub_29578DE70(v215, @"segmentation_bias_background", v107, &v216);
              LODWORD(v126) = v216;
              objc_msgSend_setSegmentation_bias_background_(v109, v127, v128, v126);
              v216 = 0;
              sub_29578DE70(v215, @"segmentation_bias_foreground", v107, &v216);
              LODWORD(v129) = v216;
              objc_msgSend_setSegmentation_bias_foreground_(v109, v130, v131, v129);
              v216 = 0;
              sub_29578DE70(v14, @"a_checkerboard", v107, &v216);
              LODWORD(v132) = v216;
              objc_msgSend_setA_checkerboard_(v110, v133, v134, v132);
              v216 = 0;
              sub_29578DE70(v14, @"b_checkerboard", v107, &v216);
              LODWORD(v135) = v216;
              objc_msgSend_setB_checkerboard_(v110, v136, v137, v135);
              v216 = 0;
              sub_29578DE70(v14, @"tau", v107, &v216);
              LODWORD(v138) = v216;
              objc_msgSend_setTau_(v110, v139, v140, v138);
              v216 = 0;
              sub_29578DE70(v14, @"sigma", v107, &v216);
              LODWORD(v141) = v216;
              objc_msgSend_setSigma_(v110, v142, v143, v141);
              v216 = 0;
              sub_29578DE70(v14, @"theta", v107, &v216);
              LODWORD(v144) = v216;
              objc_msgSend_setTheta_(v110, v145, v146, v144);
              v216 = 0;
              sub_29578DE70(v14, @"huber_eps", v107, &v216);
              LODWORD(v147) = v216;
              objc_msgSend_setHuber_eps_(v110, v148, v149, v147);
              v216 = 0;
              sub_29578DECC(v14, @"warpings", v107, &v216);
              objc_msgSend_setWarpings_(v110, v150, v216);
              v216 = 0;
              sub_29578DECC(v14, @"iterations", v107, &v216);
              objc_msgSend_setIterations_(v110, v151, v216);
              v216 = 0;
              sub_29578DECC(v214, @"scales", v107, &v216);
              objc_msgSend_setScales_(v111, v152, v216);
              v216 = 0;
              sub_29578DECC(v214, @"radius", v107, &v216);
              objc_msgSend_setRadius_(v111, v153, v216);
              v216 = 0;
              sub_29578DECC(v214, @"padding", v107, &v216);
              objc_msgSend_setPadding_(v111, v154, v216);
              v216 = 0;
              sub_29578DE70(v214, @"sigma_0", v107, &v216);
              LODWORD(v155) = v216;
              objc_msgSend_setSigma_0_(v111, v156, v157, v155);
              v216 = 0;
              sub_29578DE70(v214, @"sigma_1", v107, &v216);
              LODWORD(v158) = v216;
              objc_msgSend_setSigma_1_(v111, v159, v160, v158);
              v216 = 0;
              sub_29578DE70(v214, @"sigma_2", v107, &v216);
              LODWORD(v161) = v216;
              objc_msgSend_setSigma_2_(v111, v162, v163, v161);
              v216 = 0;
              sub_29578DE70(v11, @"lambda", v107, &v216);
              LODWORD(v164) = v216;
              objc_msgSend_setLambda_(v113, v165, v166, v164);
              v216 = 0;
              sub_29578DE70(v11, @"step", v107, &v216);
              LODWORD(v167) = v216;
              objc_msgSend_setStep_(v113, v168, v169, v167);
              v216 = 0;
              sub_29578DE70(v11, @"step_lowlight", v107, &v216);
              LODWORD(v170) = v216;
              objc_msgSend_setStepLowlight_(v113, v171, v172, v170);
              v216 = 0;
              sub_29578DE70(v11, @"lambda_background", v107, &v216);
              LODWORD(v173) = v216;
              objc_msgSend_setLambda_background_(v113, v174, v175, v173);
              v216 = 0;
              sub_29578DE70(v11, @"lambda_foreground", v107, &v216);
              LODWORD(v176) = v216;
              objc_msgSend_setLambda_foreground_(v113, v177, v178, v176);
              objc_msgSend_setSolverParameters_(v108, v179, v110);
              objc_msgSend_setRegularizationParameters_(v108, v180, v109);
              objc_msgSend_setHbfParameters_(v108, v181, v111);
              objc_msgSend_setCostParameters_(v108, v182, v113);
              objc_msgSend_setObject_atIndexedSubscript_(v213, v183, v108, v107);
              v184 = 0;
              v185 = 1;
              goto LABEL_22;
            }

            sub_29579C2B4(&v216);
          }

          else
          {
            sub_29579C360(&v216);
          }
        }

        else
        {
          sub_29579C40C(&v216);
        }
      }

      else
      {
        sub_29579C4B8(&v216);
      }
    }

    else
    {
      sub_29579C564(&v216);
    }

    v185 = 0;
    v184 = v216;
LABEL_22:

    if ((v185 & 1) == 0)
    {
      break;
    }

    if (++v107 == 8)
    {
      v7 = v213;
      v188 = objc_msgSend_copy(v213, v186, v187);
      objc_msgSend_setLevelsParameters_(selfCopy->_FPDisparityEstimator_Config, v189, v188);

      v184 = 0;
      configCopy = v206;
      goto LABEL_32;
    }
  }

  configCopy = v206;
  v7 = v213;
LABEL_32:

  return v184;
}

- (FocusPixelDisparityTuningParameters)initWithTuningDictionary:(id)dictionary cameraInfoByPortType:(id)type
{
  dictionaryCopy = dictionary;
  v9 = objc_msgSend_init(self, v7, v8);
  v11 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  FPDisparity_v3_Config = objc_msgSend_readFPDisparity_v3_Config_(v9, v10, dictionaryCopy);
  if (FPDisparity_v3_Config)
  {
    v15 = FPDisparity_v3_Config;
    fig_log_get_emitter();
    v16 = v15;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v4, v17, v18, v19, v20, vars0, vars8);
LABEL_6:
    v13 = 0;
    goto LABEL_4;
  }

  v13 = v11;
LABEL_4:

  return v13;
}

@end