@interface SubjectRelightingStage
+ (int)prewarmShaders:(id)shaders;
- (SubjectRelightingStage)initWithMetalContext:(id)context;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options label:(id)label;
- (int)runSRLForLivePhotosWithInputBuffer:(__CVBuffer *)buffer skinMask:(__CVBuffer *)mask personMask:(__CVBuffer *)personMask instanceMasks:(id)masks instanceMaskConfidences:(id)confidences skinToneClassification:(id)classification validROI:(CGRect)i expBias:(float)self0 faceExpRatio:(float)self1 exifOrientation:(int)self2 srlV2Plist:(id)self3;
- (int)runSubjectRelightingVersion:(id)version toneMap:(id)map luma:(id)luma chroma:(id)chroma ltmChroma:(id)ltmChroma skinMask:(id)mask personMask:(id)personMask glassesMask:(id)self0 instanceMask0:(id)self1 instanceMask1:(id)self2 instanceMask2:(id)self3 instanceMask3:(id)self4 gammaCurve:(id)self5 instanceMaskConfidences:(id)self6 skinToneClassification:(id)self7 validROI:(CGRect)self8 expBias:(float)self9 faceExpRatio:(float)ratio exifOrientation:(int)orientation numFacesISPDetected:(unint64_t)detected faceBoundingBoxesFromISP:(id)p[10] isChromaGainAdjusted:(BOOL)adjusted inputIsLinear:(BOOL)linear chromaBias:(float)chromaBias srlV2Plist:(id *)plist mstmParams:(id)params mstmSRLParams:(id)lParams blackPoint:(id)version0 playBackCurve:(id)version1 iptSkinMedian:(id)version2;
- (unsigned)getSRLStatus;
- (void)reset;
@end

@implementation SubjectRelightingStage

- (SubjectRelightingStage)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_295876644(self);
LABEL_15:
    v7 = 0;
    goto LABEL_8;
  }

  v28.receiver = self;
  v28.super_class = SubjectRelightingStage;
  v6 = [(SubjectRelightingStage *)&v28 init];
  v7 = v6;
  if (!v6)
  {
    sub_2958765E0();
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v9 = objc_msgSend_newBufferWithLength_options_label_(v7, v8, 8460, 0, @"srlV2_Global_Stats");
  srlV2GlobalStatsBuffer = v7->_srlV2GlobalStatsBuffer;
  v7->_srlV2GlobalStatsBuffer = v9;

  if (!v7->_srlV2GlobalStatsBuffer)
  {
    sub_295876544(v7);
    goto LABEL_15;
  }

  v12 = objc_msgSend_newBufferWithLength_options_label_(v7, v11, 271680, 0, @"srlV2_Face_Stats");
  srlV2FaceStatsBuffer = v7->_srlV2FaceStatsBuffer;
  v7->_srlV2FaceStatsBuffer = v12;

  if (!v7->_srlV2FaceStatsBuffer)
  {
    sub_2958764A8(v7);
    goto LABEL_15;
  }

  v15 = objc_msgSend_newBufferWithLength_options_label_(v7, v14, 84, 0, @"srlV2_Rendering_Params");
  srlV2CoeffsBuffer = v7->_srlV2CoeffsBuffer;
  v7->_srlV2CoeffsBuffer = v15;

  if (!v7->_srlV2CoeffsBuffer)
  {
    sub_29587640C(v7);
    goto LABEL_15;
  }

  v20 = objc_msgSend_sharedInstance(SubjectRelightingShared, v17, v18, v19);
  v23 = objc_msgSend_getShaders_(v20, v21, v7->_metalContext, v22);
  shaders = v7->_shaders;
  v7->_shaders = v23;

  if (!v7->_shaders)
  {
    sub_295876370(v7);
    goto LABEL_15;
  }

  v25 = objc_alloc_init(SRLv2Plist);
  srlV2Plist = v7->_srlV2Plist;
  v7->_srlV2Plist = v25;

  v7->_curveParameter = 0.5;
  v7->_mitigationNeeded = 0;
  *&v7->_srlInLivePhotos = 1;
LABEL_8:

  return v7;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  if (shadersCopy)
  {
    v4 = [SubjectRelightingShaders alloc];
    v7 = objc_msgSend_initWithMetalContext_(v4, v5, shadersCopy, v6);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      sub_2958766E8();
      v7 = 0;
      v8 = -12786;
    }
  }

  else
  {
    sub_29587674C(&v10);
    v7 = 0;
    v8 = v10;
  }

  return v8;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options label:(id)label
{
  v7 = objc_msgSend_device(self->_metalContext, a2, length, options, label);
  v9 = objc_msgSend_newBufferWithLength_options_(v7, v8, length, options);

  objc_msgSend_setLabel_(v9, v10, 0, v11);
  return v9;
}

- (void)reset
{
  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  self->_lastSRLCommandBuffer = 0;

  self->_curveParameter = 0.5;
  self->_mitigationNeeded = 0;
}

- (unsigned)getSRLStatus
{
  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  if (lastSRLCommandBuffer)
  {
    objc_msgSend_waitUntilCompleted(lastSRLCommandBuffer, a2, v2, v3);
    v9 = *(objc_msgSend_contents(self->_srlV2CoeffsBuffer, v6, v7, v8) + 80);
    self->_curveParameter = v9;
    v10 = vcvts_n_u32_f32(v9, 8uLL);
    if (v9 >= 0.5 || v9 <= 0.25)
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 | 0x80000000;
      self->_mitigationNeeded = 1;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  if (self->_srlInLivePhotos)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  v14 = self->_lastSRLCommandBuffer;
  self->_lastSRLCommandBuffer = 0;

  return v13;
}

- (int)runSRLForLivePhotosWithInputBuffer:(__CVBuffer *)buffer skinMask:(__CVBuffer *)mask personMask:(__CVBuffer *)personMask instanceMasks:(id)masks instanceMaskConfidences:(id)confidences skinToneClassification:(id)classification validROI:(CGRect)i expBias:(float)self0 faceExpRatio:(float)self1 exifOrientation:(int)self2 srlV2Plist:(id)self3
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  masksCopy = masks;
  confidencesCopy = confidences;
  classificationCopy = classification;
  ratioCopy = ratio;
  v271[0] = bias;
  plistCopy = plist;
  memset(v269, 0, sizeof(v269));
  v29 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v27, buffer, 10, 17, 0);
  if (!v29)
  {
    sub_295876C90();
LABEL_52:
    v242 = 0;
    v243 = 0;
    v244 = 0;
    goto LABEL_55;
  }

  v244 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v28, buffer, 30, 17, 1);
  if (!v244)
  {
    sub_295876C30();
    goto LABEL_52;
  }

  v243 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v30, mask, 10, 17, 0);
  if (v243)
  {
    v242 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v31, personMask, 25, 17, 0);
    if (v242)
    {
      v241 = v29;
      v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      v32 = masksCopy;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v265, v264, 16);
      if (v34)
      {
        v36 = v34;
        LODWORD(v37) = 0;
        v38 = *v266;
        while (2)
        {
          v39 = 0;
          v37 = v37;
          do
          {
            if (*v266 != v38)
            {
              objc_enumerationMutation(v32);
            }

            v40 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v35, *(*(&v265 + 1) + 8 * v39), 25, 17, 0);
            v41 = *(v269 + v37);
            *(v269 + v37) = v40;

            if (!v40)
            {
              sub_2958767E8(v32);
              v249 = 0;
              v168 = 0;
              v161 = 0;
              a_low = 0;
              goto LABEL_45;
            }

            ++v37;
            ++v39;
          }

          while (v36 != v39);
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v265, v264, 16);
          if (v36)
          {
            continue;
          }

          break;
        }
      }

      if (objc_msgSend_readPlist_(self->_srlV2Plist, v42, plistCopy, v43))
      {
        sub_295876858();
        v249 = 0;
        v168 = 0;
        v161 = 0;
        a_low = -12780;
      }

      else
      {
        memset(&v263, 0, sizeof(v263));
        v44 = sub_295816EA0(orientation, &v263);
        v48 = COERCE_DOUBLE(objc_msgSend_count(classificationCopy, v45, v46, v47, v44));
        v29 = v241;
        v247 = objc_msgSend_width(v241, v49, v50, v51);
        v55 = objc_msgSend_height(v241, v52, v53, v54);
        v56.f32[0] = v247;
        v56.f32[1] = v55;
        v248 = v56;
        v254 = 0u;
        v257 = 0u;
        v258 = 0u;
        v259 = 0u;
        v260 = 0u;
        v261 = 0u;
        memset(v262, 0, sizeof(v262));
        v253[0] = LODWORD(v48);
        v253[1] = 6;
        *(&v254 + 4) = 0x3F8000003F000000;
        v255 = vdiv_f32(COERCE_FLOAT32X2_T(sub_295862268(*&x, y)), v56);
        v57.f64[0] = width;
        v58 = 0;
        v256 = vdiv_f32(COERCE_FLOAT32X2_T(sub_295862268(v57, height)), v248);
        srlV2Plist = self->_srlV2Plist;
        *&v257 = srlV2Plist->maskThreshold;
        *(&v257 + 4) = *&srlV2Plist->targetMedian_I;
        HIDWORD(v257) = LODWORD(srlV2Plist->targetMedian_III);
        v258 = *&srlV2Plist->targetMedian_IV;
        v259 = *&srlV2Plist->maxBoost_II;
        *&v260 = srlV2Plist->maxBoost_VI;
        *(&v260 + 4) = *&srlV2Plist->minFaceSize;
        HIDWORD(v260) = LODWORD(srlV2Plist->minCurveBoost);
        v261 = *&srlV2Plist->maxTargetRatioDarkening;
        *v262 = srlV2Plist->faceExpDifThreshold;
        *(&v262[1] + 4) = 0;
        *(v262 + 4) = 0;
        BYTE4(v262[2]) = srlV2Plist->relightOnlyPersonMask;
        *(&v262[2] + 5) = 1;
        do
        {
          v62 = objc_msgSend_objectAtIndexedSubscript_(confidencesCopy, v59, v58, v60);
          objc_msgSend_floatValue(v62, v63, v64, v65);
          if (v66 <= 0.95)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = 1.0;
          }

          *(v262 + v58 + 1) = v67;

          ++v58;
        }

        while (v58 != 4);
        v249 = malloc_type_calloc(*&v48, 0x30uLL, 0x100004064842E6AuLL);
        if (!v249)
        {
          sub_295876B10();
          v168 = 0;
          v161 = 0;
          a_low = -12786;
          free(0);
          goto LABEL_47;
        }

        v236 = confidencesCopy;
        v238 = masksCopy;
        if (v48 != 0.0)
        {
          v71 = 0;
          v72 = v249 + 16;
          do
          {
            v73 = v48;
            v74 = objc_msgSend_objectAtIndexedSubscript_(classificationCopy, v68, v71, v70, v236, v238);
            v78 = objc_msgSend_faceAttributes(v74, v75, v76, v77);
            objc_msgSend_boundingBox(v74, v79, v80, v81);
            v83 = v82;
            v87 = objc_msgSend_facemaskCategory(v78, v84, v85, v86);
            v91 = objc_msgSend_label(v87, v88, v89, v90);
            v95 = objc_msgSend_identifier(v91, v92, v93, v94);
            isEqualToString = objc_msgSend_isEqualToString_(v95, v96, @"UNKNOWN_17_unknown0", v97);

            objc_msgSend_boundingBox(v74, v99, v100, v101);
            v106 = v105;
            if (isEqualToString)
            {
              objc_msgSend_boundingBox(v74, v102, v103, v104);
              v109 = v108;
              v107 = v106;
              v110 = (v109 / 2.5) + v107;
              v106 = 1.0;
              if (v110 < 1.0)
              {
                objc_msgSend_boundingBox(v74, v102, v103, v104);
                v112 = v111;
                objc_msgSend_boundingBox(v74, v113, v114, v115);
                v117 = v116;
                v106 = ((v117 / 2.5) + v112);
              }
            }

            objc_msgSend_boundingBox(v74, v102, v103, v104);
            v119 = v118;
            objc_msgSend_boundingBox(v74, v120, v121, v122);
            v252 = v263;
            v272.origin.x = v83;
            v272.origin.y = v106;
            v272.size.height = v119;
            v273 = CGRectApplyAffineTransform(v272, &v252);
            v123 = v273.size.width;
            v124 = v273.size.height;
            v125 = &v249[48 * v71];
            *v125 = sub_295862268(v273.origin, v273.origin.y);
            v126.f64[0] = v123;
            v125[1] = sub_295862268(v126, v124);
            v130 = objc_msgSend_yaw(v74, v127, v128, v129);
            objc_msgSend_floatValue(v130, v131, v132, v133);
            *(v125 + 10) = (v134 * 3.0) / 1.5708;

            v138 = objc_msgSend_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq(v78, v135, v136, v137);
            v142 = objc_msgSend_allLabelsWithConfidences(v138, v139, v140, v141);

            if (objc_msgSend_count(v142, v143, v144, v145))
            {
              v148 = 0;
              do
              {
                v149 = objc_msgSend_objectAtIndexedSubscript_(v142, v146, v148, v147);
                objc_msgSend_confidence(v149, v150, v151, v152);
                *&v72[4 * v148] = v153;

                ++v148;
              }

              while (v148 < objc_msgSend_count(v142, v154, v155, v156));
            }

            ++v71;
            v72 += 48;
            v48 = v73;
          }

          while (v71 != *&v73);
        }

        v157 = objc_msgSend_commandQueue(self->_metalContext, v68, v69, v70, v236, v238);
        v161 = objc_msgSend_commandBuffer(v157, v158, v159, v160);

        if (v161)
        {
          v168 = objc_msgSend_computeCommandEncoder(v161, v162, v163, v164);
          confidencesCopy = v237;
          masksCopy = v239;
          v29 = v241;
          if (!v168)
          {
            sub_2958769D8(&v252);
            a_low = LODWORD(v252.a);
            goto LABEL_46;
          }

          v169 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_shaders->_srlV2GlobalHistogramLivePhotos, v165, v166, v167);
          v173 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_shaders->_srlV2FaceHistogramLivePhotos, v170, v171, v172);
          v177 = 40;
          if (v169 < v173)
          {
            v177 = 32;
          }

          v178 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(&self->_shaders->super.isa + v177), v174, v175, v176);
          v179 = log2f((v178 >> 6));
          v180 = exp2f(floorf(v179));
          objc_msgSend_setTexture_atIndex_(v168, v181, v241, 1);
          objc_msgSend_setTexture_atIndex_(v168, v182, v244, 2);
          objc_msgSend_setTexture_atIndex_(v168, v183, v243, 5);
          objc_msgSend_setTexture_atIndex_(v168, v184, v242, 6);
          v186 = v269;
          for (i = 7; i != 11; ++i)
          {
            v188 = *v186++;
            objc_msgSend_setTexture_atIndex_(v168, v185, v188, i);
          }

          if (v180 >= 0x40)
          {
            v180 = 64;
          }

          objc_msgSend_setBytes_length_atIndex_(v168, v185, v253, 144, 0);
          objc_msgSend_setBytes_length_atIndex_(v168, v189, v249, 48 * *&v48, 1);
          objc_msgSend_setBytes_length_atIndex_(v168, v190, v271, 4, 7);
          objc_msgSend_setBytes_length_atIndex_(v168, v191, &ratioCopy, 4, 8);
          if (objc_msgSend_length(self->_srlV2GlobalStatsBuffer, v192, v193, v194) >> 2 <= 0x842)
          {
            sub_295876978();
          }

          else
          {
            objc_msgSend_setBuffer_offset_atIndex_(v168, v195, self->_srlV2GlobalStatsBuffer, 0, 2);
            if (objc_msgSend_length(self->_srlV2FaceStatsBuffer, v196, v197, v198) < (16980 * *&v48))
            {
              sub_295876918();
            }

            else
            {
              objc_msgSend_setBuffer_offset_atIndex_(v168, v199, self->_srlV2FaceStatsBuffer, 0, 3);
              if (objc_msgSend_length(self->_srlV2CoeffsBuffer, v200, v201, v202) > 0x53)
              {
                objc_msgSend_setBuffer_offset_atIndex_(v168, v203, self->_srlV2CoeffsBuffer, 0, 4);
                objc_msgSend_setComputePipelineState_(v168, v204, self->_shaders->_srlV2GlobalHistogramLivePhotos, v205);
                v240 = vdupq_n_s64(1uLL);
                *&v252.a = v240;
                *&v252.c = 1;
                v250.i64[0] = 64;
                v250.i64[1] = v180;
                v251 = 1;
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v168, v206, &v252, &v250);
                objc_msgSend_setComputePipelineState_(v168, v207, self->_shaders->_srlV2FaceHistogramLivePhotos, v208);
                v252.a = v48;
                *&v252.b = v240;
                v250.i64[0] = 64;
                v250.i64[1] = v180;
                v251 = 1;
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v168, v209, &v252, &v250);
                objc_msgSend_setComputePipelineState_(v168, v210, self->_shaders->_srlV2CalcCoefficientsLivePhotos, v211);
                *&v252.a = v240;
                *&v252.c = 1;
                v250 = v240;
                v251 = 1;
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v168, v212, &v252, &v250);
                objc_msgSend_endEncoding(v168, v213, v214, v215);
                if (*MEMORY[0x29EDB9270])
                {
                  v219 = objc_msgSend_commandQueue(v161, v216, v217, v218);
                  v223 = objc_msgSend_commandBuffer(v219, v220, v221, v222);

                  objc_msgSend_setLabel_(v223, v224, @"KTRACE_MTLCMDBUF", v225);
                  objc_msgSend_addCompletedHandler_(v223, v226, &unk_2A1CA9140, v227);
                  objc_msgSend_commit(v223, v228, v229, v230);
                  objc_msgSend_addCompletedHandler_(v161, v231, &unk_2A1CA9160, v232);
                }

                objc_msgSend_commit(v161, v216, v217, v218);
                objc_storeStrong(&self->_lastSRLCommandBuffer, v161);
                goto LABEL_43;
              }

              sub_2958768B8();
            }
          }

          a_low = -12780;
          goto LABEL_46;
        }

        sub_295876A74(&v252);
        v168 = 0;
        a_low = LODWORD(v252.a);
        confidencesCopy = v237;
        masksCopy = v239;
      }

LABEL_45:
      v29 = v241;
      goto LABEL_46;
    }

    sub_295876B70();
    v242 = 0;
  }

  else
  {
    sub_295876BD0();
    v242 = 0;
    v243 = 0;
  }

LABEL_55:
  v249 = 0;
  v168 = 0;
  v161 = 0;
LABEL_43:
  a_low = 0;
LABEL_46:
  free(v249);
LABEL_47:
  for (j = 24; j != -8; j -= 8)
  {
  }

  return a_low;
}

- (int)runSubjectRelightingVersion:(id)version toneMap:(id)map luma:(id)luma chroma:(id)chroma ltmChroma:(id)ltmChroma skinMask:(id)mask personMask:(id)personMask glassesMask:(id)self0 instanceMask0:(id)self1 instanceMask1:(id)self2 instanceMask2:(id)self3 instanceMask3:(id)self4 gammaCurve:(id)self5 instanceMaskConfidences:(id)self6 skinToneClassification:(id)self7 validROI:(CGRect)self8 expBias:(float)self9 faceExpRatio:(float)ratio exifOrientation:(int)orientation numFacesISPDetected:(unint64_t)detected faceBoundingBoxesFromISP:(id)p[10] isChromaGainAdjusted:(BOOL)adjusted inputIsLinear:(BOOL)linear chromaBias:(float)chromaBias srlV2Plist:(id *)plist mstmParams:(id)params mstmSRLParams:(id)lParams blackPoint:(id)version0 playBackCurve:(id)version1 iptSkinMedian:(id)version2
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  LODWORD(v312) = orientation;
  mapCopy = map;
  lumaCopy = luma;
  chromaCopy = chroma;
  ltmChromaCopy = ltmChroma;
  maskCopy = mask;
  personMaskCopy = personMask;
  mask0Copy = mask0;
  mask1Copy = mask1;
  mask2Copy = mask2;
  mask3Copy = mask3;
  confidencesCopy = confidences;
  classificationCopy = classification;
  ratioCopy = ratio;
  v334[0] = bias;
  paramsCopy = params;
  lParamsCopy = lParams;
  memset(&v332, 0, sizeof(v332));
  v55 = sub_295816EA0(orientation, &v332);
  v307 = chromaCopy;
  v304 = mask3Copy;
  v305 = mask2Copy;
  if (!mapCopy)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v290, v291, v292, v293, v294, self, v297, v299);
    sub_2957F889C();
    v99 = -12780;
    v56 = lumaCopy;
    goto LABEL_72;
  }

  v56 = lumaCopy;
  if (!lumaCopy)
  {
    goto LABEL_83;
  }

  if (!chromaCopy)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v290, v291, v292, v293, v294, self, v297, v299);
    v312 = 0;
LABEL_84:
    mask3Copy = 0;
    goto LABEL_85;
  }

  if (!maskCopy || !personMaskCopy || !mask0Copy || !mask1Copy || !mask2Copy)
  {
    goto LABEL_83;
  }

  if (!mask3Copy)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v290, v291, v292, v293, v294, self, v297, v299);
    v312 = 0;
    chromaCopy = 0;
LABEL_85:
    v99 = -12780;
    goto LABEL_72;
  }

  if (median)
  {
LABEL_83:
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v312 = 0;
    chromaCopy = 0;
    goto LABEL_84;
  }

  v301 = mask1Copy;
  v302 = mask0Copy;
  v303 = personMaskCopy;
  v300 = maskCopy;
  v57 = objc_msgSend_count(classificationCopy, v52, v53, v54, v55);
  detectedCopy = v57;
  if (detected)
  {
    v62 = v57 == 0;
  }

  else
  {
    v62 = 0;
  }

  chromaCopy = v62;
  if (v62)
  {
    detectedCopy = detected;
    if (!p)
    {
      sub_2957F8838();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v290, v291, v292, v293, v294, self, v297, v299);
      sub_2957F889C();
      v99 = -12780;
      goto LABEL_70;
    }
  }

  if (!(detectedCopy | detected) || (detected >= 0x11 ? (v63 = detectedCopy > 0x10) : (v63 = 0), v63))
  {
    sub_2957F889C();
  }

  else
  {
    LODWORD(v297) = adjusted;
    v313 = objc_msgSend_width(lumaCopy, v58, v59, v60);
    v67 = objc_msgSend_height(lumaCopy, v64, v65, v66);
    v68.f32[0] = v313;
    v68.f32[1] = v67;
    v314 = v68;
    bzero(v317, 0x88uLL);
    v316[0] = detectedCopy;
    v316[1] = 6;
    v317[0] = linear;
    chromaBiasCopy = chromaBias;
    v319 = 1065353216;
    v69.f64[0] = x;
    v320 = vdiv_f32(COERCE_FLOAT32X2_T(sub_295862268(v69, y)), v314);
    v70.f64[0] = width;
    *&v73 = sub_295862268(v70, height);
    v74 = 0;
    *&v75 = plist->var0;
    DWORD1(v75) = LODWORD(plist->var10);
    *&v76 = plist->var21;
    DWORD1(v76) = LODWORD(plist->var1);
    v321 = vdiv_f32(v73, v314);
    *(&v75 + 1) = *&plist->var11;
    v322 = v75;
    v323 = *&plist->var13;
    v324 = *&plist->var17;
    *(&v76 + 1) = *&plist->var2;
    v325 = v76;
    v326 = *&plist->var4;
    var8 = plist->var8;
    v328[1] = 0;
    v328[0] = 0;
    var9 = plist->var9;
    if (paramsCopy)
    {
      v77 = lParamsCopy == 0;
    }

    else
    {
      v77 = 1;
    }

    v78 = v77;
    v330 = v78;
    v331 = chromaCopy;
    do
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(confidencesCopy, v71, v74, v72);
      objc_msgSend_floatValue(v79, v80, v81, v82);
      if (v83 <= 0.95)
      {
        v84 = 0.0;
      }

      else
      {
        v84 = 1.0;
      }

      *(v328 + v74) = v84;

      ++v74;
    }

    while (v74 != 4);
    v312 = malloc_type_calloc(detectedCopy, 0x30uLL, 0x100004064842E6AuLL);
    if (!v312)
    {
      sub_2957F8838();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v290, v291, v292, v293, v294, self, v297, v299);
      sub_2957F889C();
      v99 = -12786;
LABEL_89:
      v56 = lumaCopy;
      goto LABEL_70;
    }

    v295 = mapCopy;
    if (chromaCopy)
    {
      if (detectedCopy)
      {
        p_size = &p->var0.size;
        v90 = 0.0;
        v91 = detectedCopy;
        v92 = v312;
        do
        {
          memset_pattern16(v92 + 2, &unk_2958D5980, 0x18uLL);
          v93.f64[0] = p_size[-1].width;
          v94 = p_size[-1].height;
          v95 = p_size->width;
          v96 = p_size->height;
          p_size = (p_size + 40);
          *v92 = sub_295862268(v93, v94);
          v97.f64[0] = v95;
          v98 = sub_295862268(v97, v96);
          v92[1] = v98;
          if (*&v98 <= *(&v98 + 1))
          {
            *&v98 = *(&v98 + 1);
          }

          if (v90 < *&v98)
          {
            v90 = *&v98;
          }

          *(v92 + 10) = 1077936128;
          v92 += 6;
          --v91;
        }

        while (v91);
        v88 = v90;
        if (v90 >= 0.35)
        {
          chromaCopy = 0;
          mask3Copy = 0;
          v99 = 0;
LABEL_88:
          mapCopy = v295;
          goto LABEL_89;
        }
      }
    }

    else if (detectedCopy)
    {
      v100 = 0;
      v101 = v312 + 16;
      do
      {
        v102 = objc_msgSend_objectAtIndexedSubscript_(classificationCopy, v85, v100, v87);
        v106 = objc_msgSend_faceAttributes(v102, v103, v104, v105);
        objc_msgSend_boundingBox(v102, v107, v108, v109);
        v111 = v110;
        v115 = objc_msgSend_facemaskCategory(v106, v112, v113, v114);
        v119 = objc_msgSend_label(v115, v116, v117, v118);
        v123 = objc_msgSend_identifier(v119, v120, v121, v122);
        isEqualToString = objc_msgSend_isEqualToString_(v123, v124, @"UNKNOWN_17_unknown0", v125);

        objc_msgSend_boundingBox(v102, v127, v128, v129);
        v134 = v133;
        if (isEqualToString)
        {
          objc_msgSend_boundingBox(v102, v130, v131, v132);
          v137 = v136;
          v135 = v134;
          v138 = (v137 / 2.5) + v135;
          v134 = 1.0;
          if (v138 < 1.0)
          {
            objc_msgSend_boundingBox(v102, v130, v131, v132);
            v140 = v139;
            objc_msgSend_boundingBox(v102, v141, v142, v143);
            v145 = v144;
            v134 = ((v145 / 2.5) + v140);
          }
        }

        objc_msgSend_boundingBox(v102, v130, v131, v132);
        v147 = v146;
        objc_msgSend_boundingBox(v102, v148, v149, v150);
        v315 = v332;
        v335.origin.x = v111;
        v335.origin.y = v134;
        v335.size.height = v147;
        v336 = CGRectApplyAffineTransform(v335, &v315);
        v151 = v336.size.width;
        v152 = v336.size.height;
        v153 = &v312[48 * v100];
        *v153 = sub_295862268(v336.origin, v336.origin.y);
        v154.f64[0] = v151;
        v153[1] = sub_295862268(v154, v152);
        v158 = objc_msgSend_yaw(v102, v155, v156, v157);
        objc_msgSend_floatValue(v158, v159, v160, v161);
        *(v153 + 10) = (v162 * 3.0) / 1.5708;

        v166 = objc_msgSend_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq(v106, v163, v164, v165);
        v170 = objc_msgSend_allLabelsWithConfidences(v166, v167, v168, v169);

        if (objc_msgSend_count(v170, v171, v172, v173))
        {
          v176 = 0;
          do
          {
            v177 = objc_msgSend_objectAtIndexedSubscript_(v170, v174, v176, v175);
            objc_msgSend_confidence(v177, v178, v179, v180);
            *&v101[4 * v176] = v181;

            ++v176;
          }

          while (v176 < objc_msgSend_count(v170, v182, v183, v184));
        }

        ++v100;
        v101 += 48;
      }

      while (v100 != detectedCopy);
    }

    v185 = objc_msgSend_commandQueue(self->_metalContext, v85, v86, v87, v88);
    mask3Copy = objc_msgSend_commandBuffer(v185, v186, v187, v188);

    if (!mask3Copy)
    {
      sub_2957F888C();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v290, v291, v292, v293, v295, self, v297, v299);
      sub_2957F8880();
      v99 = FigSignalErrorAtGM(v288);
      chromaCopy = 0;
      goto LABEL_88;
    }

    chromaCopy = objc_msgSend_computeCommandEncoder(mask3Copy, v189, v190, v191);
    mapCopy = v295;
    v56 = lumaCopy;
    maskCopy = v300;
    if (!chromaCopy)
    {
      sub_2957F888C();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v290, v291, v292, v293, v295, self, v297, v299);
      sub_2957F8880();
      v99 = FigSignalErrorAtGM(v289);
      goto LABEL_71;
    }

    v195 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_shaders->_srlV2GlobalHistogram, v192, v193, v194);
    v199 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_shaders->_srlV2FaceHistogram, v196, v197, v198);
    v203 = 16;
    if (v195 < v199)
    {
      v203 = 8;
    }

    v204 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(&self->_shaders->super.isa + v203), v200, v201, v202);
    v205 = log2f((v204 >> 6));
    exp2f(floorf(v205));
    objc_msgSend_setTexture_atIndex_(chromaCopy, v206, v295, 0);
    objc_msgSend_setTexture_atIndex_(chromaCopy, v207, lumaCopy, 1);
    objc_msgSend_setTexture_atIndex_(chromaCopy, v208, v307, 2);
    if (adjusted)
    {
      objc_msgSend_setTexture_atIndex_(chromaCopy, v209, ltmChromaCopy, 4);
    }

    else
    {
      objc_msgSend_setTexture_atIndex_(chromaCopy, v209, ltmChromaCopy, 3);
    }

    objc_msgSend_setTexture_atIndex_(chromaCopy, v210, v300, 5);
    objc_msgSend_setTexture_atIndex_(chromaCopy, v211, v303, 6);
    objc_msgSend_setTexture_atIndex_(chromaCopy, v212, v302, 7);
    objc_msgSend_setTexture_atIndex_(chromaCopy, v213, v301, 8);
    objc_msgSend_setTexture_atIndex_(chromaCopy, v214, v305, 9);
    objc_msgSend_setTexture_atIndex_(chromaCopy, v215, v304, 10);
    objc_msgSend_setBytes_length_atIndex_(chromaCopy, v216, v316, 144, 0);
    objc_msgSend_setBytes_length_atIndex_(chromaCopy, v217, v312, 48 * detectedCopy, 1);
    objc_msgSend_setBytes_length_atIndex_(chromaCopy, v218, v334, 4, 7);
    objc_msgSend_setBytes_length_atIndex_(chromaCopy, v219, &ratioCopy, 4, 8);
    if (objc_msgSend_length(self->_srlV2GlobalStatsBuffer, v220, v221, v222) >> 2 <= 0x842 || (objc_msgSend_setBuffer_offset_atIndex_(chromaCopy, v223, self->_srlV2GlobalStatsBuffer, 0, 2), objc_msgSend_length(self->_srlV2FaceStatsBuffer, v224, v225, v226) < 16980 * detectedCopy) || (objc_msgSend_setBuffer_offset_atIndex_(chromaCopy, v227, self->_srlV2FaceStatsBuffer, 0, 3), objc_msgSend_length(self->_srlV2CoeffsBuffer, v228, v229, v230) <= 0x53))
    {
      sub_2957F8838();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      v99 = -12780;
      goto LABEL_71;
    }

    objc_msgSend_setBuffer_offset_atIndex_(chromaCopy, v231, self->_srlV2CoeffsBuffer, 0, 4);
    objc_msgSend_setBuffer_offset_atIndex_(chromaCopy, v232, paramsCopy, 0, 5);
    objc_msgSend_setBuffer_offset_atIndex_(chromaCopy, v233, lParamsCopy, 0, 6);
    objc_msgSend_setComputePipelineState_(chromaCopy, v234, self->_shaders->_srlV2GlobalHistogram, v235);
    v298 = vdupq_n_s64(1uLL);
    *&v315.a = v298;
    *&v315.c = 1;
    v236 = sub_2957F886C();
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v236, v237, v238, v239);
    objc_msgSend_setComputePipelineState_(chromaCopy, v240, self->_shaders->_srlV2FaceHistogram, v241);
    *&v315.a = detectedCopy;
    *&v315.b = v298;
    v242 = sub_2957F886C();
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v242, v243, v244, v245);
    objc_msgSend_setComputePipelineState_(chromaCopy, v246, self->_shaders->_srlV2CalcCoefficients, v247);
    *&v315.a = v298;
    *&v315.c = 1;
    v248 = sub_2957F886C();
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v248, v249, v250, v251);
    objc_msgSend_setComputePipelineState_(chromaCopy, v252, self->_shaders->_srlV2Apply, v253);
    objc_msgSend_setImageblockWidth_height_(chromaCopy, v254, 32, 32);
    v258 = objc_msgSend_width(v295, v255, v256, v257) >> 1;
    v262 = objc_msgSend_height(v295, v259, v260, v261);
    *&v315.a = v258;
    *&v315.b = v262 >> 1;
    *&v315.c = 1;
    v263 = sub_2957F886C();
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v263, v264, v265, v266);
    objc_msgSend_endEncoding(chromaCopy, v267, v268, v269);
    if (*MEMORY[0x29EDB9270])
    {
      v273 = objc_msgSend_commandQueue(mask3Copy, v270, v271, v272);
      v277 = objc_msgSend_commandBuffer(v273, v274, v275, v276);

      objc_msgSend_setLabel_(v277, v278, @"KTRACE_MTLCMDBUF", v279);
      objc_msgSend_addCompletedHandler_(v277, v280, &unk_2A1CA9180, v281);
      objc_msgSend_commit(v277, v282, v283, v284);
      objc_msgSend_addCompletedHandler_(mask3Copy, v285, &unk_2A1CA91A0, v286);
    }

    objc_msgSend_commit(mask3Copy, v270, v271, v272);
    objc_storeStrong(&self->_lastSRLCommandBuffer, mask3Copy);
  }

  v99 = 0;
LABEL_70:
  maskCopy = v300;
LABEL_71:
  mask0Copy = v302;
  personMaskCopy = v303;
  mask1Copy = v301;
LABEL_72:
  free(v312);

  return v99;
}

@end