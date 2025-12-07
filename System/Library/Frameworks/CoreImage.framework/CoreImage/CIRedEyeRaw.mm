@interface CIRedEyeRaw
- (id)irisProtectionMaskWithThresholdIris:(float)iris thresholdSclera:(float)sclera thresholdSkin:(float)skin;
- (id)outputImage;
- (id)skinProtectionMaskWithThreshold:(float)threshold;
- (void)outputImage;
@end

@implementation CIRedEyeRaw

- (id)irisProtectionMaskWithThresholdIris:(float)iris thresholdSclera:(float)sclera thresholdSkin:(float)skin
{
  v22[6] = *MEMORY[0x1E69E9840];
  v9 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_extract_iris];
  [(CIImage *)[(CIRedEyeRaw *)self inputIrisMask] extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22[0] = [(CIRedEyeRaw *)self inputIrisMask];
  v22[1] = [(CIRedEyeRaw *)self inputScleraMask];
  v22[2] = [(CIRedEyeRaw *)self inputSkinMask];
  *&v18 = iris;
  v22[3] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  *&v19 = sclera;
  v22[4] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  *&v20 = skin;
  v22[5] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  return -[CIColorKernel applyWithExtent:arguments:](v9, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:6], v11, v13, v15, v17);
}

- (id)skinProtectionMaskWithThreshold:(float)threshold
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_extract_skin];
  [(CIImage *)[(CIRedEyeRaw *)self inputSkinMask] extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16[0] = [(CIRedEyeRaw *)self inputSkinMask];
  *&v14 = threshold;
  v16[1] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  return -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2], v7, v9, v11, v13);
}

- (id)outputImage
{
  v664[2] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputOriginLeft X];
  v586.origin.x = v3;
  [(CIVector *)self->inputOriginLeft Y];
  v583 = v4;
  [(CIVector *)self->inputSize X];
  v584 = v5;
  [(CIVector *)self->inputSize Y];
  v585 = v6;
  [(CIVector *)self->inputOriginRight X];
  v580 = v7;
  [(CIVector *)self->inputOriginRight Y];
  v9 = v8;
  [(CIVector *)self->inputSize X];
  v581 = v10;
  [(CIVector *)self->inputSize Y];
  v12 = v11;
  p_inputAxisLongLeft = &self->inputAxisLongLeft;
  [(CIVector *)self->inputAxisLongLeft _norm];
  v14 = v13;
  [(CIVector *)self->inputAxisLongRight _norm];
  v16 = v15;
  [(CIVector *)self->inputAxisShortLeft _norm];
  v546 = v17;
  p_inputAxisShortRight = &self->inputAxisShortRight;
  [(CIVector *)self->inputAxisShortRight _norm];
  LODWORD(v586.origin.y) = v18;
  if (v14 > v16)
  {
    v16 = v14;
  }

  [(NSNumber *)self->inputScale floatValue];
  v20 = CIRedEyeUtilsSizeFromScale(v16 * v19);
  v21 = tagForEye(v20);
  v22 = CI_LOG_DUALRED();
  if (v22)
  {
    v24 = ci_logger_api(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CIRedEyeRaw *)v21 outputImage];
    }
  }

  [(NSNumber *)self->inputAbortDensityDiff floatValue];
  v526 = v25;
  [(NSNumber *)self->inputAbortDensityLo floatValue];
  v544 = v26;
  [(NSNumber *)self->inputSpecMax floatValue];
  v515 = v27;
  [(NSNumber *)self->inputSpecular floatValue];
  v549 = v28;
  [(NSNumber *)self->inputSpecMin floatValue];
  v30 = v29;
  [(NSNumber *)self->inputClosingErosion floatValue];
  v521 = v31;
  [(NSNumber *)self->inputClosingDilation floatValue];
  v570 = v32;
  [(NSNumber *)self->inputSplat floatValue];
  v540 = v33;
  [(CIVector *)self->inputSize X];
  v542 = v34;
  [(CIVector *)self->inputSize Y];
  v539 = v35;
  [(NSNumber *)self->inputRepairDarken floatValue];
  v37 = v36;
  [(NSNumber *)self->inputRepairDither floatValue];
  v39 = v38;
  [(NSNumber *)self->inputRepairChroma floatValue];
  v550 = v40;
  [(NSNumber *)self->inputRadiusRepair floatValue];
  v560 = v41;
  [(NSNumber *)self->inputRepairPercentile floatValue];
  v553 = v42;
  [(NSNumber *)self->inputRepairPercent floatValue];
  v44 = v43;
  [(NSNumber *)self->inputClipMin floatValue];
  v552 = v45;
  [(NSNumber *)self->inputCircularity floatValue];
  v551 = v46;
  [(NSNumber *)self->inputFalloffRepair floatValue];
  v558 = v47;
  [(NSNumber *)self->inputWhiteCutoff floatValue];
  v49 = v48;
  [(NSNumber *)self->inputSpecArea floatValue];
  v536 = v50;
  [(NSNumber *)self->inputSpecularCutoff floatValue];
  v563 = v51;
  [(NSNumber *)self->inputCentroidGamma floatValue];
  v555 = v52;
  [(NSNumber *)self->inputCentroidRadius floatValue];
  v554 = v53;
  [(NSNumber *)self->inputSpecIntensity floatValue];
  v548 = v54;
  [(NSNumber *)self->inputScleraThreshold floatValue];
  v517 = v55;
  [(NSNumber *)self->inputMinInterDispersion floatValue];
  v523 = v56;
  [(NSNumber *)self->inputMaxInterDispersion floatValue];
  v524 = v57;
  [(NSNumber *)self->inputMinMaskDiff floatValue];
  v525 = v58;
  [(NSNumber *)self->inputGlintThreshold floatValue];
  v514 = v59;
  v513 = v59;
  if (v59 > 0.00001)
  {
    v49 = 4.0;
  }

  [(NSNumber *)self->inputTargetClosing floatValue];
  v518 = v60;
  if (v20 == 90)
  {
    v519 = v39 * 0.5;
    v534 = v44 + -0.02;
    v570 = v570 * 10.0;
    v49 = v49 * 0.5;
    v67 = v30;
    v516 = 0.0;
    v527 = 0.0;
    v529 = 1.0;
    v531 = 1.0;
    v68 = 1028443341;
    v563 = 0.0;
  }

  else if (v20 == 35)
  {
    v61 = v39 * 0.3;
    v519 = v61;
    v62 = v551 * 0.4;
    v531 = (v16 + -35.0) / 55.0;
    v551 = interpolate(v62, v551 * 0.75, v531);
    v63 = v552 * 0.55;
    v552 = v63;
    v555 = v555 * 0.75;
    v534 = v44 * 0.95;
    v64 = v553 * 0.9;
    v553 = v64;
    v65 = v560 * 0.9;
    v560 = v65;
    v550 = v550 * 0.75;
    if ((v37 + v37) <= 1.0)
    {
      v37 = v37 + v37;
    }

    else
    {
      v37 = 1.0;
    }

    v66 = v558 + 0.3;
    v558 = v66;
    v67 = 0.0;
    v529 = 2.0;
    v68 = 1036831949;
    v527 = 0.8;
    v516 = 0.0;
  }

  else
  {
    v531 = v16 / 35.0;
    [(NSNumber *)self->inputCentroidRadiusSmall floatValue];
    v554 = v69;
    v70 = v39 * 0.3;
    v519 = v70;
    v551 = v551 * 0.25;
    v534 = v44 * 0.2;
    v71 = v553 * 0.9;
    v553 = v71;
    v72 = v549 * 0.2;
    v560 = v560 * 0.75;
    v552 = v552 * 0.75;
    v37 = v37 * 0.75;
    v548 = v548 * 0.75;
    v73 = v558 + 0.2;
    v558 = v73;
    v516 = v72;
    v67 = 0.0;
    v550 = 0.0;
    v529 = 2.0;
    v68 = 1036831949;
    v527 = 0.8;
    v549 = 0.0;
  }

  v566 = 1.0;
  if (v49 <= 1.0)
  {
    v74 = v49;
  }

  else
  {
    v74 = 1.0;
  }

  v557 = v12;
  v582 = v9;
  p_inputAxisShortLeft = &self->inputAxisShortLeft;
  p_inputAxisLongRight = &self->inputAxisLongRight;
  v520 = v37;
  v547 = v16;
  v522 = v67;
  v533 = v68;
  if ([(NSNumber *)self->inputUseFaceSegmentationMask BOOLValue])
  {
    if (v20 == 90)
    {
      v75 = &OBJC_IVAR___CIRedEyeRaw_inputSkinProtectionThresholdLarge;
      v76 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdSkinLarge;
      v77 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdScleraLarge;
      v78 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdIrisLarge;
      v79 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdSkinLarge;
      v80 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdScleraLarge;
      v81 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdIrisLarge;
    }

    else if (v20 == 35)
    {
      v75 = &OBJC_IVAR___CIRedEyeRaw_inputSkinProtectionThresholdMedium;
      v76 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdSkinMedium;
      v77 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdScleraMedium;
      v78 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdIrisMedium;
      v79 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdSkinMedium;
      v80 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdScleraMedium;
      v81 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdIrisMedium;
    }

    else
    {
      v75 = &OBJC_IVAR___CIRedEyeRaw_inputSkinProtectionThresholdSmall;
      v76 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdSkinSmall;
      v77 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdScleraSmall;
      v78 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdIrisSmall;
      v79 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdSkinSmall;
      v80 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdScleraSmall;
      v81 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdIrisSmall;
    }

    [*(&self->super.super.isa + *v81) floatValue];
    v181 = v180;
    [*(&self->super.super.isa + *v80) floatValue];
    v183 = v182;
    [*(&self->super.super.isa + *v79) floatValue];
    v185 = v184;
    [*(&self->super.super.isa + *v78) floatValue];
    v187 = v186;
    [*(&self->super.super.isa + *v77) floatValue];
    v189 = v188;
    [*(&self->super.super.isa + *v76) floatValue];
    v191 = v190;
    [*(&self->super.super.isa + *v75) floatValue];
    v193 = v192;
    LODWORD(v194) = v181;
    LODWORD(v195) = v183;
    LODWORD(v196) = v185;
    v83 = [(CIRedEyeRaw *)self irisProtectionMaskWithThresholdIris:v194 thresholdSclera:v195 thresholdSkin:v196];
    LODWORD(v197) = v187;
    LODWORD(v198) = v189;
    LODWORD(v199) = v191;
    v200 = [(CIRedEyeRaw *)self irisProtectionMaskWithThresholdIris:v197 thresholdSclera:v198 thresholdSkin:v199];
    LODWORD(v201) = v193;
    v82 = [(CIRedEyeRaw *)self skinProtectionMaskWithThreshold:v201];
    if ([(NSNumber *)self->inputShowMask intValue]== 14)
    {
      v585 = [(CIImage *)v83 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
      v143 = v83;
      v176 = v580;
LABEL_108:
      v178 = v581;
      v177 = v582;
      v179 = v557;
      goto LABEL_148;
    }

    if ([(NSNumber *)self->inputShowMask intValue]== 15)
    {
      v585 = [(CIImage *)v200 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
      v143 = v200;
LABEL_111:
      v176 = v580;
      v178 = v581;
      v177 = v582;
      v179 = v557;
      goto LABEL_148;
    }

    if ([(NSNumber *)self->inputShowMask intValue]== 16)
    {
      v585 = [(CIImage *)v82 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
      v143 = v82;
      goto LABEL_111;
    }

    v510 = v200;
  }

  else
  {
    v82 = 0;
    v510 = 0;
    v83 = 0;
  }

  v84 = *&v542;
  v543 = v82;
  v85 = dbl_19CF260B0[v20 == 35] * v544;
  v86 = v540 * 0.015 * v84 * v539;
  v87 = v536 * 0.1;
  integerValue = [(NSNumber *)self->inputRepairSource integerValue];
  v89 = &OBJC_IVAR___CIRedEyeRaw_inputSecondary;
  if (!integerValue)
  {
    v89 = &OBJC_IVAR___CIRedEyeRaw_inputPrimary;
  }

  v90 = *(&self->super.super.isa + *v89);
  v91 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_boost];
  [v90 extent];
  v664[0] = v90;
  v664[1] = &unk_1F1085368;
  inputPrimary = -[CIColorKernel applyWithExtent:arguments:](v91, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v664 count:2], v92, v93, v94, v95);
  [(NSNumber *)self->inputMidSpectrumWhiteOffsetsX floatValue];
  v98 = v97;
  [(NSNumber *)self->inputMidSpectrumWhiteOffsetsY floatValue];
  v541 = v20;
  v508 = v74;
  v512 = inputPrimary;
  v537 = v83;
  if (v20 == 90)
  {
    inputPrimary = self->inputPrimary;
    [(NSNumber *)self->inputDetectWhite floatValue];
    v102 = v103;
    selfCopy2 = self;
    [(NSNumber *)self->inputDetectRed floatValue];
    v566 = v104;
  }

  else
  {
    selfCopy2 = self;
    if (v20 == 35)
    {
      v101 = v98 + 0.3;
      v566 = interpolate(v101, v99 + 0.0, v531);
      v102 = interpolate(0.3, 0.7, v531);
    }

    else
    {
      v102 = 0.6272;
    }
  }

  v105 = v534;
  v106 = v85;
  v535 = v106;
  v107 = v86;
  v509 = v107;
  v108 = v87;
  v511 = v108;
  v109 = v105;
  v532 = v109;
  v110 = &v604;
  v111 = 1;
  do
  {
    v112 = v111;
    if (v111)
    {
      v113 = v546;
    }

    else
    {
      v113 = *&v586.origin.y;
    }

    v114 = v113 * 0.0;
    [(NSNumber *)selfCopy2->inputFlooding floatValue];
    v116 = (v115 + v115) * 0.5 * v113;
    v117 = v114 * 3.14159265 * v114;
    v118 = llroundf(v117);
    v119 = v116 * 3.14159265 * v116;
    v120 = llroundf(v119);
    *v110 = [CIVector vectorWithX:v118 Y:v120];
    v121 = CI_LOG_DUALRED();
    if (v121)
    {
      v123 = ci_logger_api(v121, v122);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[CIRedEyeRaw outputImage]";
        *&buf[12] = 1024;
        *&buf[14] = v116;
        *&buf[18] = 1024;
        *&buf[20] = v118;
        *&buf[24] = 1024;
        *&buf[26] = v120;
        _os_log_error_impl(&dword_19CC36000, v123, OS_LOG_TYPE_ERROR, "%{public}s Convex area threshold range for radius %d = [%d, %d]", buf, 0x1Eu);
      }
    }

    v111 = 0;
    v110 = &v603;
  }

  while ((v112 & 1) != 0);
  v124 = v604;
  v125 = v603;
  v126 = v547 * 0.1;
  if (v541 == 90)
  {
    v127 = RRrawRedWhiteResponseLarge(inputPrimary, v102, v566);
  }

  else
  {
    v127 = RRrawRedWhiteResponseSmallMedium(inputPrimary, v102, v566);
  }

  v129 = v127;
  v130 = v580;
  *&v128 = v570;
  if (v570 > 0.0)
  {
    v131 = v126;
    v129 = RRcloseByDilation(v127, roundf(v570 * v131));
  }

  if (v82)
  {
    v132 = CI_LOG_DUALRED();
    if (v132)
    {
      v134 = ci_logger_api(v132, v133);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        [(CIRedEyeRaw *)v134 outputImage:v135];
      }
    }

    v129 = RRmultiplyRh(v129, v537);
  }

  if ([(NSNumber *)selfCopy2->inputShowMask intValue]== 1)
  {
    v585 = [(CIImage *)v129 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
    v143 = v129;
LABEL_77:
    v176 = v130;
    v178 = v581;
    v177 = v582;
    v179 = v557;
LABEL_148:
    v557 = [v143 imageByCroppingToRect:{v176, v177, v178, v179}];
    v308 = v585;
    return [v308 imageByCompositingOverImage:v557];
  }

  [(NSNumber *)selfCopy2->inputCentroidIterations floatValue];
  v144 = (*&v145 * 5.0);
  *&v145 = v563;
  v146 = v129;
  if (v563 > 0.0)
  {
    v147 = RRspecularMask(selfCopy2->inputPrimary, selfCopy2->inputSecondary, v563, v527);
    v148 = v147;
    if (fabs(v529 + -1.0) > 0.01)
    {
      v148 = [(CIImage *)v147 _imageByApplyingGamma:?];
    }

    v146 = RRmultiplyRh(v129, v148);
  }

  v528 = v126;
  v530 = v125;
  v507 = v124;
  v545 = v129;
  [(NSNumber *)selfCopy2->inputSearchLong floatValue];
  v567 = v149;
  [(NSNumber *)selfCopy2->inputSearchShort floatValue];
  v564 = v150;
  v151 = &v602;
  v152 = 1;
  v153 = selfCopy2;
  v154 = v144;
  do
  {
    v155 = v152 & 1;
    if (v152)
    {
      x = v586.origin.x;
    }

    else
    {
      x = v130;
    }

    if (v152)
    {
      v157 = v583;
    }

    else
    {
      v157 = v582;
    }

    if (v152)
    {
      v158 = v584;
    }

    else
    {
      v158 = v581;
    }

    if (v152)
    {
      v159 = v585;
    }

    else
    {
      v159 = v557;
    }

    v160 = &OBJC_IVAR___CIRedEyeRaw_inputPupilCenterRight;
    if (v155)
    {
      v160 = &OBJC_IVAR___CIRedEyeRaw_inputPupilCenterLeft;
    }

    v161 = *(&v153->super.super.isa + *v160);
    v162 = p_inputAxisLongLeft;
    if (!v155)
    {
      v162 = p_inputAxisLongRight;
    }

    v163 = *v162;
    v164 = p_inputAxisShortLeft;
    if (!v155)
    {
      v164 = p_inputAxisShortRight;
    }

    v165 = v146;
    v166 = *v164;
    v662[0] = @"inputIterations";
    v663[0] = [MEMORY[0x1E696AD98] numberWithInt:v154];
    v663[1] = &unk_1F1085378;
    v662[1] = @"inputScale";
    v662[2] = @"inputDecay";
    v663[2] = &unk_1F1085388;
    v662[3] = @"inputGamma";
    *&v167 = v555;
    v663[3] = [MEMORY[0x1E696AD98] numberWithFloat:v167];
    v662[4] = @"inputClip";
    LODWORD(v168) = v533;
    v663[4] = [MEMORY[0x1E696AD98] numberWithFloat:v168];
    v662[5] = @"inputLocalizationRadius";
    LODWORD(v169) = v554;
    v663[5] = [MEMORY[0x1E696AD98] numberWithFloat:v169];
    v662[6] = @"inputExtent";
    v170 = v157;
    v130 = v580;
    v663[6] = [CIVector vectorWithCGRect:x, v170, v158, v159];
    v662[7] = @"inputDebug";
    v663[7] = [MEMORY[0x1E696AD98] numberWithBool:{-[NSNumber intValue](v153->inputShowMask, "intValue") == 2}];
    v663[8] = v163;
    v662[8] = @"inputAxisLong";
    v662[9] = @"inputAxisShort";
    v663[9] = v166;
    v146 = v165;
    v663[10] = v161;
    v662[10] = @"inputPupilCenter";
    v662[11] = @"inputSearchAxisLong";
    LODWORD(v171) = v567;
    v663[11] = [MEMORY[0x1E696AD98] numberWithFloat:v171];
    v662[12] = @"inputSearchAxisShort";
    LODWORD(v172) = v564;
    v663[12] = [MEMORY[0x1E696AD98] numberWithFloat:v172];
    v173 = -[CIImage imageByApplyingFilter:withInputParameters:](v165, "imageByApplyingFilter:withInputParameters:", @"RedPupilLocalizer", [MEMORY[0x1E695DF20] dictionaryWithObjects:v663 forKeys:v662 count:13]);
    v152 = 0;
    *v151 = v173;
    v151 = &v601;
  }

  while (v155);
  v174 = v602;
  v175 = v601;
  if ([(NSNumber *)v153->inputShowMask intValue]== 2)
  {
    v585 = [(CIImage *)v174 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
    v143 = v175;
    goto LABEL_77;
  }

  v538 = v153;
  v202 = &v600;
  v203 = 1;
  v205 = v583;
  v204 = v584;
  v206 = p_inputAxisShortRight;
  v565 = v175;
  v568 = v174;
  do
  {
    v207 = v203;
    v208 = (v203 & 1) == 0;
    if (v203)
    {
      v175 = v174;
      v209 = v586.origin.x;
    }

    else
    {
      v209 = v130;
    }

    if (v203)
    {
      v210 = v205;
    }

    else
    {
      v210 = v582;
    }

    if (v203)
    {
      v211 = v204;
    }

    else
    {
      v211 = v581;
    }

    if (v203)
    {
      v212 = v585;
    }

    else
    {
      v212 = v557;
    }

    v213 = p_inputAxisLongRight;
    if (!v208)
    {
      v213 = p_inputAxisLongLeft;
    }

    v214 = *v213;
    v215 = p_inputAxisShortLeft;
    if (v208)
    {
      v215 = v206;
    }

    v216 = *v215;
    [(CIVector *)v214 _norm];
    v218 = v217;
    [v216 _norm];
    v220 = v219;
    v221 = v219 / v218;
    v222 = stretch(v219 / v218, 0.0, 0.4, 0.25, 0.8);
    v223 = CI_LOG_DUALRED();
    if (v223)
    {
      v225 = ci_logger_api(v223, v224);
      if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        *&buf[4] = "[CIRedEyeRaw outputImage]";
        *&buf[12] = 2048;
        *&buf[14] = v218;
        *&buf[22] = 2048;
        *&buf[24] = v220;
        *v661 = 2048;
        *&v661[2] = (v221 * 100.0);
        *&v661[10] = 2048;
        *&v661[12] = v222;
        _os_log_error_impl(&dword_19CC36000, v225, OS_LOG_TYPE_ERROR, "%{public}s Long %.2f | Short %.2f | Ratio %.0f | Conf %.2f", buf, 0x34u);
      }
    }

    v665.origin.x = v209;
    v665.origin.y = v210;
    v665.size.width = v211;
    v665.size.height = v212;
    v226 = RRradialEllipticalMask(v665, v214, v175, v560, v560 * v222, v558, 1.0);
    v227 = RRmultiplyRh(v545, v226);
    v203 = 0;
    *v202 = v227;
    v202 = &v599;
    v130 = v580;
    v205 = v583;
    v204 = v584;
    v175 = v565;
    v174 = v568;
    v206 = p_inputAxisShortRight;
  }

  while ((v207 & 1) != 0);
  v228 = v600;
  v229 = v599;
  if ([(NSNumber *)v153->inputShowMask intValue]== 3)
  {
    v585 = [(CIImage *)v228 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
    v143 = v229;
    v176 = v580;
    goto LABEL_108;
  }

  v573 = v228;
  [(NSNumber *)v153->inputRadiusSpecular floatValue];
  v231 = v230;
  integerValue2 = [(NSNumber *)v153->inputRepairSource integerValue];
  v233 = v512;
  if (!integerValue2)
  {
    v233 = v153->inputPrimary;
  }

  v577 = RRspecularResponse(v233);
  v234 = &v598;
  v235 = 1;
  do
  {
    v236 = v235 & 1;
    if (v235)
    {
      v237 = v568;
    }

    else
    {
      v237 = v565;
    }

    v238 = v586.origin.x;
    if (v236)
    {
      v239 = v583;
    }

    else
    {
      v238 = v580;
      v239 = v582;
    }

    if (v236)
    {
      v240 = v584;
    }

    else
    {
      v240 = v581;
    }

    if (v236)
    {
      v241 = v585;
    }

    else
    {
      v241 = v557;
    }

    v659[0] = v237;
    v658[0] = @"inputCenter";
    v658[1] = @"inputExtent";
    v241 = [CIVector vectorWithCGRect:v238, v239, v240, v241];
    inputFalloffSpecular = v153->inputFalloffSpecular;
    v659[1] = v241;
    v659[2] = inputFalloffSpecular;
    v658[2] = @"inputFalloff";
    v658[3] = @"inputRadius";
    LODWORD(v244) = v231;
    v245 = [MEMORY[0x1E696AD98] numberWithFloat:v244];
    v658[4] = @"inputAnisotropic";
    v659[3] = v245;
    v659[4] = MEMORY[0x1E695E110];
    v246 = -[CIFilter outputImage](+[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"RadialFalloffFilter", [MEMORY[0x1E695DF20] dictionaryWithObjects:v659 forKeys:v658 count:5]), "outputImage");
    v235 = 0;
    *v234 = v246;
    v234 = &v597;
  }

  while (v236);
  v247 = v597;
  v248 = RRmultiplyRh(v577, v598);
  v249 = RRmultiplyRh(v577, v247);
  v250 = RRmaxRhScalar(v248, 0.001);
  v251 = RRmaxRhScalar(v249, 0.001);
  [(NSNumber *)v153->inputCenterSpecRad floatValue];
  if (v252 <= 0.0)
  {
    v259 = 0x1E75C0000uLL;
    v260 = 0x1E695D000uLL;
    v255 = v581;
    v256 = v582;
    v257 = v557;
  }

  else
  {
    v253 = v252;
    v666.size.height = v585;
    v666.origin.x = v586.origin.x;
    v666.origin.y = v583;
    v666.size.width = v584;
    v254 = RRradialMask(v153->inputPupilCenterLeft, v666, v253, -0.8, 1);
    v250 = RRmultiplyRh(v250, v254);
    v667.origin.x = v580;
    v255 = v581;
    v256 = v582;
    v667.origin.y = v582;
    v667.size.width = v581;
    v257 = v557;
    v667.size.height = v557;
    v258 = RRradialMask(v153->inputPupilCenterRight, v667, v253, -0.8, 1);
    v251 = RRmultiplyRh(v251, v258);
    v259 = 0x1E75C0000;
    v260 = 0x1E695D000;
  }

  if ([(NSNumber *)v153->inputShowMask intValue]== 6)
  {
    v585 = [(CIImage *)v250 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
    v143 = v251;
    v176 = v580;
    v177 = v256;
    v178 = v255;
LABEL_147:
    v179 = v257;
    goto LABEL_148;
  }

  v578 = [*(v259 + 2960) vectorWithX:v552 Y:v522 Z:v552 W:v522];
  [(CIVector *)v153->inputSize X];
  v262 = v261;
  [(CIVector *)v153->inputSize Y];
  *&v263 = v262 * v263;
  v561 = [*(v259 + 2960) vectorWithX:0.0 Y:(v511 * *&v263) Z:0.0 W:(v511 * *&v263)];
  *v661 = 0u;
  memset(buf, 0, sizeof(buf));
  CGAffineTransformMakeTranslation(buf, -(v580 - v586.origin.x), -(v256 - v583));
  *&v595.a = *buf;
  *&v595.c = *&buf[16];
  *&v595.tx = *v661;
  memset(&v596, 0, sizeof(v596));
  CGAffineTransformInvert(&v596, &v595);
  *&v595.a = *buf;
  *&v595.c = *&buf[16];
  *&v595.tx = *v661;
  v264 = [v229 imageByApplyingTransform:&v595];
  *&v595.a = *buf;
  *&v595.c = *&buf[16];
  *&v595.tx = *v661;
  v265 = [(CIImage *)v251 imageByApplyingTransform:&v595];
  *&v595.a = *buf;
  *&v595.c = *&buf[16];
  *&v595.tx = *v661;
  v266 = [(CIImage *)v545 imageByApplyingTransform:&v595];
  v267 = v584;
  v5852 = [(CIImage *)RRcombineRGBA(v573 imageByCroppingToRect:v250, v264, v265), "imageByCroppingToRect:", v586.origin.x, v583, v584, v585];
  v656[0] = @"inputPercentileRepair";
  *&v269 = v553;
  v657[0] = [MEMORY[0x1E696AD98] numberWithFloat:v269];
  v656[1] = @"inputPercentileSpecular";
  *&v270 = v549;
  v657[1] = [MEMORY[0x1E696AD98] numberWithFloat:v270];
  v656[2] = @"inputPercentRepair";
  *&v271 = v532;
  v657[2] = [MEMORY[0x1E696AD98] numberWithFloat:v271];
  v657[3] = &unk_1F1081B78;
  inputInterPeakMin = v153->inputInterPeakMin;
  v656[3] = @"inputPercentSpecular";
  v656[4] = @"inputInterPeakMinRepair";
  v657[4] = inputInterPeakMin;
  v657[5] = v578;
  v656[5] = @"inputMinimum";
  v656[6] = @"inputMaxArea";
  inputSpecAreaScale = v153->inputSpecAreaScale;
  v274 = v565;
  v657[6] = v561;
  v657[7] = inputSpecAreaScale;
  v656[7] = @"inputMaxAreaRatio";
  v656[8] = @"inputCenterLeft";
  v657[8] = v568;
  v657[9] = v565;
  v656[9] = @"inputCenterRight";
  v656[10] = @"inputCenterExtentLeft";
  v275 = v581;
  v257 = v557;
  v657[10] = [*(v259 + 2960) vectorWithCGRect:{v586.origin.x, v583, v584, v585}];
  v656[11] = @"inputCenterExtentRight";
  v657[11] = [*(v259 + 2960) vectorWithCGRect:{v580, v256, v581, v557}];
  v656[12] = @"inputCenterOffsetLeft";
  v657[12] = [*(v259 + 2960) vectorWithCGPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v656[13] = @"inputCenterOffsetRight";
  v657[13] = [*(v259 + 2960) vectorWithCGPoint:{v580 - v586.origin.x, v256 - v583}];
  v657[14] = &unk_1F1085398;
  v656[14] = @"inputAbortMaxCenterDist";
  v656[15] = @"inputMinDensity";
  *&v276 = v535;
  v657[15] = [MEMORY[0x1E696AD98] numberWithFloat:v276];
  v656[16] = @"inputMaxRelDensity";
  LODWORD(v277) = v526;
  v278 = [MEMORY[0x1E696AD98] numberWithFloat:v277];
  inputFalloffDensity = v153->inputFalloffDensity;
  v657[16] = v278;
  v657[17] = inputFalloffDensity;
  v656[17] = @"inputDensityRadius";
  v656[18] = @"inputDetectionLeft";
  v657[18] = v545;
  v657[19] = v266;
  v656[19] = @"inputDetectionRight";
  v656[20] = @"inputMinInterDispersion";
  LODWORD(v280) = v523;
  v657[20] = [MEMORY[0x1E696AD98] numberWithFloat:v280];
  v656[21] = @"inputMaxInterDispersion";
  LODWORD(v281) = v524;
  v657[21] = [MEMORY[0x1E696AD98] numberWithFloat:v281];
  v656[22] = @"inputMinGobalLocalMeanDiff";
  LODWORD(v282) = v525;
  v283 = [MEMORY[0x1E696AD98] numberWithFloat:v282];
  v656[23] = @"inputTuning";
  inputParam2 = v153->inputParam2;
  v657[22] = v283;
  v657[23] = inputParam2;
  v285 = -[CIImage imageByApplyingFilter:withInputParameters:](v5852, "imageByApplyingFilter:withInputParameters:", @"HistoClip_RGBA8_CPU", [*(v260 + 3872) dictionaryWithObjects:v657 forKeys:v656 count:24]);
  v286 = RRextractR8(v285);
  v287 = RRextractG8(v285);
  v288 = RRextractB8(v285);
  v595 = v596;
  v289 = [(CIImage *)v288 imageByApplyingTransform:&v595];
  v290 = RRextractA8(v285);
  v595 = v596;
  v291 = [(CIImage *)v290 imageByApplyingTransform:&v595];
  if (v543)
  {
    v292 = CI_LOG_DUALRED();
    if (v292)
    {
      v294 = ci_logger_api(v292, v293);
      if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
      {
        [(CIRedEyeRaw *)v294 outputImage:v295];
      }
    }

    v286 = RRminimumRh(v286, v510);
    v289 = RRminimumRh(v289, v510);
  }

  if ([v538[15]._priv intValue] == 7)
  {
    v585 = [(CIImage *)v287 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
    v143 = v291;
LABEL_146:
    v176 = v580;
    v177 = v256;
    v178 = v581;
    goto LABEL_147;
  }

  if (v521 <= 0.0)
  {
    v579 = v289;
  }

  else
  {
    v302 = roundf(v521 * v528);
    v303 = RRcloseByErosion(v286, v302);
    v304 = v302;
    v267 = v584;
    v305 = RRcloseByErosion(v289, v304);
    v286 = RRmaxIfGreaterThanZeroRh(v303, v286);
    v306 = v305;
    v274 = v565;
    v579 = RRmaxIfGreaterThanZeroRh(v306, v289);
  }

  if ([v538[15]._priv intValue] == 4)
  {
    v585 = [(CIImage *)v286 imageByCroppingToRect:v586.origin.x, v583, v267, v585];
    v143 = v579;
    goto LABEL_146;
  }

  if ([v538[15]._priv intValue] == 10)
  {
    v310 = v585;
    v311 = v267;
    v312 = RRbinarizeAlphaInverse(v538[5].super.isa, [(CIImage *)v286 imageByClampingToExtent], 0.2);
    v313 = RRbinarizeAlphaInverse(v538[5].super.isa, [(CIImage *)v579 imageByClampingToExtent], 0.2);
    v654 = @"inputExtent";
    v314 = v586.origin.x;
    v655 = [*(v259 + 2960) vectorWithCGRect:{v586.origin.x, v583, v311, v585}];
    v315 = -[CIImage imageByApplyingFilter:withInputParameters:](v312, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [*(v260 + 3872) dictionaryWithObjects:&v655 forKeys:&v654 count:1]);
    v652 = @"inputExtent";
    v653 = [*(v259 + 2960) vectorWithCGRect:{v580, v256, v581, v557}];
    v316 = *(v260 + 3872);
    v317 = &v653;
    v318 = &v652;
LABEL_154:
    v320 = -[CIImage imageByApplyingFilter:withInputParameters:](v313, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [v316 dictionaryWithObjects:v317 forKeys:v318 count:1]);
    imageByUnpremultiplyingAlpha = [(CIImage *)v315 imageByUnpremultiplyingAlpha];
    imageByUnpremultiplyingAlpha2 = [(CIImage *)v320 imageByUnpremultiplyingAlpha];
    [(CIImage *)imageByUnpremultiplyingAlpha extent];
    v323 = [(CIImage *)imageByUnpremultiplyingAlpha imageBySettingAlphaOneInExtent:?];
    [(CIImage *)imageByUnpremultiplyingAlpha2 extent];
    v324 = [(CIImage *)imageByUnpremultiplyingAlpha2 imageBySettingAlphaOneInExtent:?];
    imageByClampingToExtent = [(CIImage *)v323 imageByClampingToExtent];
    imageByClampingToExtent2 = [(CIImage *)v324 imageByClampingToExtent];
    v327 = imageByClampingToExtent;
    v328 = v314;
    v329 = v583;
    v330 = v311;
    v331 = v310;
LABEL_155:
    v332 = [v327 imageByCroppingToRect:{v328, v329, v330, v331}];
    v557 = [(CIImage *)imageByClampingToExtent2 imageByCroppingToRect:v580, v256, v581, v557];
    v308 = v332;
    return [v308 imageByCompositingOverImage:v557];
  }

  if ([v538[15]._priv intValue] == 11)
  {
    v310 = v585;
    v311 = v267;
    v319 = RRbinarizeAlpha(v538[5].super.isa, [(CIImage *)v286 imageByClampingToExtent], 0.2);
    v313 = RRbinarizeAlpha(v538[5].super.isa, [(CIImage *)v579 imageByClampingToExtent], 0.2);
    v650 = @"inputExtent";
    v314 = v586.origin.x;
    v651 = [*(v259 + 2960) vectorWithCGRect:{v586.origin.x, v583, v311, v585}];
    v315 = -[CIImage imageByApplyingFilter:withInputParameters:](v319, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [*(v260 + 3872) dictionaryWithObjects:&v651 forKeys:&v650 count:1]);
    v648 = @"inputExtent";
    v649 = [*(v259 + 2960) vectorWithCGRect:{v580, v256, v581, v557}];
    v316 = *(v260 + 3872);
    v317 = &v649;
    v318 = &v648;
    goto LABEL_154;
  }

  if ([v538[15]._priv intValue] == 12)
  {
    v333 = RRbinarize(v286);
    v334 = RRbinarize(v579);
    v335 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor blackColor]);
    isa = v538[5].super.isa;
    v646[0] = @"inputBackgroundImage";
    v646[1] = @"inputMaskImage";
    v647[0] = v335;
    v647[1] = v333;
    v337 = -[objc_class imageByApplyingFilter:withInputParameters:](isa, "imageByApplyingFilter:withInputParameters:", @"CIBlendWithRedMask", [*(v260 + 3872) dictionaryWithObjects:v647 forKeys:v646 count:2]);
    v338 = v538[5].super.isa;
    v644[0] = @"inputBackgroundImage";
    v644[1] = @"inputMaskImage";
    v645[0] = v335;
    v645[1] = v334;
    v339 = *(v260 + 3872);
    v340 = v645;
    v341 = v644;
LABEL_160:
    imageByClampingToExtent2 = -[objc_class imageByApplyingFilter:withInputParameters:](v338, "imageByApplyingFilter:withInputParameters:", @"CIBlendWithRedMask", [v339 dictionaryWithObjects:v340 forKeys:v341 count:2]);
    v327 = v337;
    v328 = v586.origin.x;
    v329 = v583;
    v330 = v267;
    v331 = v585;
    goto LABEL_155;
  }

  if ([v538[15]._priv intValue] == 13)
  {
    v343 = RRbinarizeInverse(v286);
    v344 = RRbinarizeInverse(v579);
    v345 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor blackColor]);
    v346 = v538[5].super.isa;
    v642[0] = @"inputBackgroundImage";
    v642[1] = @"inputMaskImage";
    v643[0] = v345;
    v643[1] = v343;
    v337 = -[objc_class imageByApplyingFilter:withInputParameters:](v346, "imageByApplyingFilter:withInputParameters:", @"CIBlendWithRedMask", [*(v260 + 3872) dictionaryWithObjects:v643 forKeys:v642 count:2]);
    v338 = v538[5].super.isa;
    v640[0] = @"inputBackgroundImage";
    v640[1] = @"inputMaskImage";
    v641[0] = v345;
    v641[1] = v344;
    v339 = *(v260 + 3872);
    v340 = v641;
    v341 = v640;
    goto LABEL_160;
  }

  v559 = v291;
  v562 = v287;
  if (v541 == 35)
  {
    v348 = &OBJC_IVAR___CIRedEyeRaw_inputSkinThresholdMed;
    v347 = v507;
    goto LABEL_165;
  }

  LODWORD(v342) = 1.0;
  v347 = v507;
  if (v541 == 90)
  {
    v348 = &OBJC_IVAR___CIRedEyeRaw_inputSkinThreshold;
LABEL_165:
    [*(&v538->super.isa + *v348) floatValue];
  }

  v574 = *&v342;
  v349 = &v594;
  v350 = 1;
  do
  {
    v351 = v350;
    if (v350)
    {
      v352 = v586.origin.x;
    }

    else
    {
      v352 = v580;
    }

    if (v350)
    {
      v353 = v583;
    }

    else
    {
      v353 = v256;
    }

    if (v350)
    {
      v354 = v584;
    }

    else
    {
      v354 = v275;
    }

    if (v350)
    {
      v355 = v585;
    }

    else
    {
      v355 = v557;
    }

    if (v350)
    {
      v356 = v347;
    }

    else
    {
      v356 = v530;
    }

    if (v350)
    {
      v357 = v286;
    }

    else
    {
      v357 = v579;
    }

    if (v350)
    {
      v358 = v568;
    }

    else
    {
      v358 = v274;
    }

    v638[0] = @"inputExtent";
    v359 = *(v259 + 2960);
    [(CIImage *)v357 extent];
    v360 = [v359 vectorWithCGRect:?];
    v638[1] = @"inputCentroid";
    v639[0] = v360;
    v639[1] = v358;
    v361 = RRconditionalZero(v357, -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v357, "imageByApplyingFilter:withInputParameters:", @"CICircularityDescriptor", [MEMORY[0x1E695DF20] dictionaryWithObjects:v639 forKeys:v638 count:2]), "imageByClampingToExtent"), v551);
    v636[0] = @"inputCenter";
    v636[1] = @"inputThreshold";
    v637[0] = v358;
    v637[1] = &unk_1F1081B90;
    v637[2] = v356;
    v636[2] = @"inputAreaThresholdLoHi";
    v636[3] = @"inputSplat";
    *&v362 = v509;
    v637[3] = [MEMORY[0x1E696AD98] numberWithFloat:v362];
    v363 = -[CIImage imageByApplyingFilter:withInputParameters:](v361, "imageByApplyingFilter:withInputParameters:", @"CIConvexFill", [MEMORY[0x1E695DF20] dictionaryWithObjects:v637 forKeys:v636 count:4]);
    [(objc_class *)v538[21].super.isa floatValue];
    if (v364 > 0.0 && fabs(v364 + -1.0) > 0.001)
    {
      v365 = [(CIImage *)v363 _imageByApplyingGamma:?];
      [(objc_class *)v538[13].super.isa floatValue];
      v363 = RRsmoothstep(v365, v366);
    }

    v274 = v565;
    v355 = [(CIImage *)v363 imageByCroppingToRect:v352, v353, v354, v355];
    v350 = 0;
    *v349 = v355;
    v349 = &v593;
    v275 = v581;
    v256 = v582;
  }

  while ((v351 & 1) != 0);
  v368 = v594;
  v369 = v593;
  if (v543)
  {
    v370 = CI_LOG_DUALRED();
    v372 = v557;
    v373 = v584;
    v374 = 0x1E695D000;
    v375 = v541;
    v376 = v545;
    if (v370)
    {
      v377 = ci_logger_api(v370, v371);
      if (os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
      {
        [(CIRedEyeRaw *)v377 outputImage:v378];
      }
    }

    v368 = RRminimumRh(v368, v543);
    v369 = RRminimumRh(v369, v543);
  }

  else
  {
    v372 = v557;
    v373 = v584;
    v374 = 0x1E695D000uLL;
    v375 = v541;
    v376 = v545;
  }

  if (v373 >= v585)
  {
    v385 = v585;
  }

  else
  {
    v385 = v373;
  }

  v386 = v385;
  if (v581 >= v372)
  {
    v387 = v372;
  }

  else
  {
    v387 = v581;
  }

  v388 = v387;
  [v538[21]._priv floatValue];
  v668.size.width = v373;
  v390 = v389;
  v668.origin.x = v586.origin.x;
  v668.origin.y = v583;
  v668.size.height = v585;
  v391 = feather(v368, v668, v386, v390, 0.5);
  v669.origin.x = v580;
  v669.origin.y = v582;
  v669.size.width = v581;
  v669.size.height = v372;
  v392 = feather(v369, v669, v388, v390, 0.5);
  [(objc_class *)v538[38].super.isa floatValue];
  v394 = 50.0;
  if ((v547 * v393) <= 50.0)
  {
    [(objc_class *)v538[38].super.isa floatValue];
    v394 = v547 * v395;
  }

  [v538[38]._priv floatValue];
  v397 = v396 * 0.1;
  if (v375 == 90)
  {
    v397 = v397 * 1.5;
    v398 = 2.5;
    v399 = v580;
  }

  else
  {
    v398 = 1.0;
    v399 = v580;
    if (v375 == 35)
    {
      v376 = refilterChannel(v538[5].super.isa);
      v397 = v397 * 5.0;
      v394 = v394 * 1.5;
      v398 = 0.400000006;
    }
  }

  v400 = [(CIImage *)v376 _imageByApplyingGamma:v398];
  v401 = refilter(v391, v400, v394, v397);
  v402 = refilter(v392, v400, v394, v397);
  [(objc_class *)v538[22].super.isa floatValue];
  v404 = v403;
  v670.origin.x = v586.origin.x;
  v670.origin.y = v583;
  v670.size.width = v584;
  v670.size.height = v585;
  v405 = feather(v401, v670, v386, 0.0, v404);
  v671.origin.x = v399;
  v671.origin.y = v582;
  v671.size.width = v581;
  v671.size.height = v557;
  v406 = feather(v402, v671, v388, 0.0, v404);
  if (v574 < 1.0)
  {
    v672.origin.x = v586.origin.x;
    v672.origin.y = v583;
    v672.size.width = v584;
    v672.size.height = v585;
    v407 = chromaExclusion(v538[5].super.isa, v286, v672, v574, 0.2, v517, 0.35);
    v673.origin.x = v580;
    v673.origin.y = v582;
    v673.size.width = v581;
    v673.size.height = v557;
    v408 = chromaExclusion(v538[5].super.isa, v579, v673, v574, 0.2, v517, 0.35);
    v405 = RRmultiplyRh(v405, v407);
    v406 = RRmultiplyRh(v406, v408);
  }

  v409 = v582;
  if ([v538[15]._priv intValue] == 5)
  {
    v585 = [(CIImage *)v405 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
    v143 = v406;
LABEL_226:
    v176 = v580;
LABEL_227:
    v177 = v409;
    v178 = v581;
    v179 = v557;
    goto LABEL_148;
  }

  v410 = v583;
  v411 = v586.origin.x;
  if (v516 <= 0.0)
  {
    *&v411 = v515;
    if (v515 > 0.0)
    {
      v420 = v547 * 0.5 * v515;
      v421 = v420;
      v634 = @"inputRadius";
      *&v420 = v421;
      v635 = [MEMORY[0x1E696AD98] numberWithFloat:v420];
      v422 = -[CIImage imageByApplyingFilter:withInputParameters:](v562, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMaximum", [*(v374 + 3872) dictionaryWithObjects:&v635 forKeys:&v634 count:1]);
      v632 = @"inputRadius";
      *&v423 = v421;
      v633 = [MEMORY[0x1E696AD98] numberWithFloat:v423];
      v562 = -[CIImage imageByCroppingToRect:](-[CIImage imageByApplyingFilter:withInputParameters:](v422, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMinimum", [*(v374 + 3872) dictionaryWithObjects:&v633 forKeys:&v632 count:1]), "imageByCroppingToRect:", v586.origin.x, v583, v584, v585);
      v630 = @"inputRadius";
      *&v424 = v421;
      v631 = [MEMORY[0x1E696AD98] numberWithFloat:v424];
      v425 = [v559 imageByApplyingFilter:@"CIMorphologyMaximum" withInputParameters:{objc_msgSend(*(v374 + 3872), "dictionaryWithObjects:forKeys:count:", &v631, &v630, 1)}];
      v628 = @"inputRadius";
      *&v426 = v421;
      v629 = [MEMORY[0x1E696AD98] numberWithFloat:v426];
      v559 = [objc_msgSend(v425 imageByApplyingFilter:@"CIMorphologyMinimum" withInputParameters:{objc_msgSend(*(v374 + 3872), "dictionaryWithObjects:forKeys:count:", &v629, &v628, 1)), "imageByCroppingToRect:", v580, v582, v581, v557}];
    }

    v626 = @"inputRadius";
    v627 = &unk_1F1085368;
    v418 = -[CIImage imageByApplyingFilter:withInputParameters:](v562, "imageByApplyingFilter:withInputParameters:", @"CIBoxBlur", [*(v374 + 3872) dictionaryWithObjects:&v627 forKeys:&v626 count:{1, v411}]);
    v624 = @"inputRadius";
    v625 = &unk_1F1085368;
    v419 = [v559 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(*(v374 + 3872), "dictionaryWithObjects:forKeys:count:", &v625, &v624, 1)}];
  }

  else
  {
    if (v546 <= *&v586.origin.y)
    {
      v412 = *&v586.origin.y;
    }

    else
    {
      v412 = v546;
    }

    v413 = 2.0 / v412;
    if (v516 > v413)
    {
      v413 = v516;
    }

    v414 = v413;
    v415 = v583;
    v416 = v584;
    v417 = v585;
    v418 = RRradialCenterMask(v568, *&v411, v412, v414, -0.5);
    v674.origin.x = v580;
    v674.origin.y = v582;
    v674.size.width = v581;
    v674.size.height = v557;
    v419 = RRradialCenterMask(v565, v674, v412, v414, -0.5);
  }

  v427 = v419;
  v428 = RRmultiplyRh(v418, v405);
  v429 = RRmultiplyRh(v427, v406);
  if ([v538[15]._priv intValue] == 8)
  {
    v585 = [(CIImage *)v428 imageByCroppingToRect:v586.origin.x, v583, v584, v585];
    v143 = v429;
    goto LABEL_226;
  }

  v569 = v428;
  v575 = v405;
  v430 = &v592;
  v431 = 1;
  v432 = v580;
  v433 = v538;
  do
  {
    v434 = v431;
    if (v431)
    {
      v435 = v405;
    }

    else
    {
      v435 = v406;
    }

    if (v431)
    {
      v432 = v586.origin.x;
    }

    v436 = v409;
    if (v431)
    {
      v437 = v410;
    }

    else
    {
      v437 = v409;
    }

    if (v431)
    {
      v438 = v584;
    }

    else
    {
      v438 = v581;
    }

    if (v431)
    {
      v439 = v585;
    }

    else
    {
      v439 = v557;
    }

    v440 = v433[5].super.isa;
    if (v518 > 0.0)
    {
      v622 = @"inputRadius";
      v623 = &unk_1F1085368;
      v441 = -[objc_class imageByApplyingFilter:withInputParameters:](v440, "imageByApplyingFilter:withInputParameters:", @"CIBoxBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:{1, v585}]);
      v620 = @"inputRadius";
      v621 = &unk_1F1085368;
      v442 = [v441 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v621, &v620, 1)}];
      v618 = @"inputRadius";
      *&v443 = v518;
      v619 = [MEMORY[0x1E696AD98] numberWithFloat:v443];
      v440 = [v442 imageByApplyingFilter:@"CIMorphologyMinimum" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v619, &v618, 1)}];
    }

    v616 = @"inputRadius";
    v617 = &unk_1F1085368;
    v444 = -[objc_class imageByApplyingFilter:withInputParameters:](v440, "imageByApplyingFilter:withInputParameters:", @"CIBoxBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v617 forKeys:&v616 count:1]);
    v614 = @"inputRadius";
    v615 = &unk_1F1085368;
    v445 = [v444 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v615, &v614, 1)}];
    v433 = v538;
    v446 = v538[5].super.isa;
    v612[0] = @"inputSource";
    v612[1] = @"inputMask";
    v613[0] = v446;
    v613[1] = v435;
    v612[2] = @"inputNoiseAmount";
    *&v447 = v519;
    v613[2] = [MEMORY[0x1E696AD98] numberWithFloat:v447];
    v612[3] = @"inputBrightness";
    *&v448 = v520;
    v449 = [MEMORY[0x1E696AD98] numberWithFloat:v448];
    v450 = v538[23].super.isa;
    v613[3] = v449;
    v613[4] = v450;
    v612[4] = @"inputRecovery";
    v612[5] = @"inputExtent";
    v613[5] = [CIVector vectorWithCGRect:v432, v437, v438, v439];
    v612[6] = @"inputWhiteCutoff";
    *&v451 = v508;
    v613[6] = [MEMORY[0x1E696AD98] numberWithFloat:v451];
    v612[7] = @"inputChroma";
    *&v452 = v550;
    v613[7] = [MEMORY[0x1E696AD98] numberWithFloat:v452];
    v453 = [v445 imageByApplyingFilter:@"RedEyeRecolor" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v613, v612, 8)}];
    v431 = 0;
    *v430 = v453;
    v430 = &v591;
    v432 = v580;
    v410 = v583;
    v405 = v575;
    v409 = v436;
  }

  while ((v434 & 1) != 0);
  v454 = v592;
  v455 = v591;
  if ([v538[15]._priv intValue] == 9)
  {
    v585 = [v454 imageByCroppingToRect:{v586.origin.x, v583, v584, v585}];
    v143 = v455;
    v176 = v580;
    goto LABEL_227;
  }

  v457 = &v590;
  v458 = 1;
  do
  {
    v459 = v458;
    if (v458)
    {
      v460 = v454;
    }

    else
    {
      v460 = v455;
    }

    if (v513 <= 0.00001)
    {
      v479 = v429;
      if (v459)
      {
        v479 = v569;
      }

      priv = v538[5]._priv;
      v609[0] = @"inputSource";
      v609[1] = @"inputSpecularMask";
      v610[0] = priv;
      v610[1] = v479;
      v610[2] = &unk_1F10853A8;
      v609[2] = @"inputSpecularThreshold";
      v609[3] = @"inputSpecIntensity";
      *&v456 = v548;
      v481 = [MEMORY[0x1E696AD98] numberWithFloat:v456];
      v609[4] = @"inputDebugFlag";
      v610[3] = v481;
      v610[4] = &unk_1F1081BA8;
      v478 = [v460 imageByApplyingFilter:@"RedEyeSpecular" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v610, v609, 5)}];
    }

    else
    {
      v461 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_rer_glint];
      [(objc_class *)v538[5].super.isa extent];
      v463 = v462;
      v465 = v464;
      v467 = v466;
      v469 = v468;
      [v460 extent];
      v677.origin.x = v470;
      v677.origin.y = v471;
      v677.size.width = v472;
      v677.size.height = v473;
      v675.origin.x = v463;
      v675.origin.y = v465;
      v675.size.width = v467;
      v675.size.height = v469;
      v676 = CGRectUnion(v675, v677);
      v474 = v676.origin.x;
      y = v676.origin.y;
      width = v676.size.width;
      height = v676.size.height;
      v611[0] = v538[5].super.isa;
      v611[1] = v460;
      *&v676.origin.x = v514;
      v611[2] = [MEMORY[0x1E696AD98] numberWithFloat:v676.origin.x];
      v478 = -[CIColorKernel applyWithExtent:arguments:](v461, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v611 count:3], v474, y, width, height);
    }

    v458 = 0;
    *v457 = v478;
    v457 = &v589;
  }

  while ((v459 & 1) != 0);
  v482 = v589;
  v483 = v590;
  [(objc_class *)v538[27].super.isa floatValue];
  if (v484 > 0.0)
  {
    [(objc_class *)v538[27].super.isa floatValue];
    v486 = v485;
    memset(&v595, 0, sizeof(v595));
    CGAffineTransformMakeTranslation(&v595, v586.origin.x - v580, v583 - v582);
    v586.size = *&v595.a;
    v587 = *&v595.c;
    v588 = *&v595.tx;
    v487 = RRmultiplyRh(v575, [(CIImage *)v406 imageByApplyingTransform:&v586.size]);
    v607 = @"inputExtent";
    v5853 = [CIVector vectorWithCGRect:v586.origin.x, v583, v584, v585];
    v488 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v487, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5853 forKeys:&v607 count:1]), "imageByClampingToExtent");
    v489 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_threshold];
    [(CIImage *)v483 extent];
    v491 = v490;
    v493 = v492;
    v495 = v494;
    v497 = v496;
    v606[0] = v483;
    v606[1] = v488;
    LODWORD(v490) = v486;
    v606[2] = [MEMORY[0x1E696AD98] numberWithFloat:v490];
    v483 = -[CIColorKernel applyWithExtent:arguments:](v489, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v606 count:3], v491, v493, v495, v497);
    [(CIImage *)v482 extent];
    v499 = v498;
    v501 = v500;
    v503 = v502;
    v505 = v504;
    v605[0] = v482;
    v605[1] = v488;
    LODWORD(v498) = v486;
    v605[2] = [MEMORY[0x1E696AD98] numberWithFloat:v498];
    v482 = -[CIColorKernel applyWithExtent:arguments:](v489, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v605 count:3], v499, v501, v503, v505);
  }

  v506 = [objc_msgSend(-[CIImage _imageByRenderingToIntermediate](v483 "_imageByRenderingToIntermediate")];
  [(objc_class *)v538[5].super.isa extent];
  return [v506 imageByCroppingToRect:?];
}

- (void)outputImage
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRedEyeRaw outputImage]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s Masking repair mask with face segmentation", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end