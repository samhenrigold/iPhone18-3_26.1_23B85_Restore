@interface BWEspressoInferenceBoundingBoxPropagator
- (BWEspressoInferenceBoundingBoxPropagator)initWithBoxRequirement:(id)requirement scoreRequirement:(id)scoreRequirement angularOffsetRequirement:(id)offsetRequirement fontSizeRequirement:(id)sizeRequirement configuration:(id)configuration toInferenceResultKey:(id)key;
- (void)dealloc;
- (void)matchCurRegions:(uint64_t)regions curCount:;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
@end

@implementation BWEspressoInferenceBoundingBoxPropagator

- (BWEspressoInferenceBoundingBoxPropagator)initWithBoxRequirement:(id)requirement scoreRequirement:(id)scoreRequirement angularOffsetRequirement:(id)offsetRequirement fontSizeRequirement:(id)sizeRequirement configuration:(id)configuration toInferenceResultKey:(id)key
{
  v25.receiver = self;
  v25.super_class = BWEspressoInferenceBoundingBoxPropagator;
  v14 = [(BWEspressoInferenceBoundingBoxPropagator *)&v25 init];
  if (v14)
  {
    *(v14 + 1) = requirement;
    *(v14 + 2) = scoreRequirement;
    *(v14 + 3) = offsetRequirement;
    *(v14 + 4) = sizeRequirement;
    *(v14 + 5) = key;
    v14[48] = [configuration interiorSuppression];
    [configuration interiorSuppressionPadding];
    *(v14 + 13) = v15;
    [configuration maxMatchCost];
    *(v14 + 14) = v16;
    [configuration angularOffsetExponentialSmoothing];
    *(v14 + 15) = v17;
    if (*(v14 + 4))
    {
      [configuration fontSizeStartReportingThreshold];
      *(v14 + 16) = v18;
      [configuration fontSizeStopReportingThreshold];
      *(v14 + 17) = v19;
    }

    *(v14 + 10) = [objc_alloc(getFTBipartiteMatcherClass()) initWithInitialSize:10];
    v14[96] = [configuration inferenceInputUsesPortraitOrientation];
    [configuration trackingThreshold];
    *(v14 + 25) = v20;
    if (configuration)
    {
      objc_msgSend_confidenceFilterSettings(configuration);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    *(v14 + 104) = v22;
    *(v14 + 120) = v23;
    *(v14 + 17) = v24;
    *(v14 + 9) = [configuration logger];
  }

  return v14;
}

- (void)dealloc
{
  free(self->_lastRegions);
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceBoundingBoxPropagator;
  [(BWEspressoInferenceBoundingBoxPropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  sampleBufferCopy = sampleBuffer;
  bufferCopy = buffer;
  v11 = [storage tensorForRequirement:self->_boxRequirement];
  v14 = [storage tensorForRequirement:self->_scoreRequirement];
  if (self->_angularOffsetRequirement)
  {
    v15 = [storage tensorForRequirement:?];
  }

  else
  {
    v15 = 0;
  }

  fontSizeRequirement = self->_fontSizeRequirement;
  if (fontSizeRequirement)
  {
    v17 = [storage tensorForRequirement:?];
  }

  else
  {
    v17 = 0;
  }

  v145 = &v142;
  v18 = MEMORY[0x1EEE9AC00](v17, v12, fontSizeRequirement, v13);
  v21 = &v142 - v20;
  v22 = *v14;
  v23 = v14[17] * (v14[12] - 1);
  v159 = v15;
  if (v15)
  {
    v24 = *v15;
    v25 = v15[17];
    v26 = *v15 + 4 * v25;
    v154 = *v15 + 8 * v25;
    v155 = *&v26;
    v156 = v24;
    *&v153 = *&v24 + 12 * v25;
  }

  else
  {
    v153 = 0.0;
    *&v154 = 0.0;
    v155 = 0.0;
    v156 = 0.0;
  }

  v27 = v22 + 4 * v23;
  if (v18)
  {
    v28 = *v18;
  }

  else
  {
    v28 = 0;
  }

  dictionaryCopy = dictionary;
  v29 = 0;
  if (v19)
  {
    v30 = 0;
    trackingThreshold = self->_trackingThreshold;
    do
    {
      if (*(v27 + 4 * v30) > trackingThreshold)
      {
        *&v21[8 * v29++] = v30;
      }

      ++v30;
    }

    while (v19 != v30);
  }

  v32 = *v11;
  v149 = v11;
  v33 = v11[17];
  maxRegionID = self->_maxRegionID;
  v152 = [MEMORY[0x1E695DF70] arrayWithCapacity:v29];
  v34 = COERCE_DOUBLE(malloc_type_calloc(v29, 0x88uLL, 0x101004022C1039FuLL));
  v157 = v34;
  if (!v29)
  {
    [(BWEspressoInferenceBoundingBoxPropagator *)self matchCurRegions:0 curCount:?];
    goto LABEL_80;
  }

  selfCopy = self;
  v35 = 0;
  v36 = 0;
  *&v160 = v32 + 12 * v33;
  *&v161 = v32 + 4 * v33;
  v37 = v32;
  *&v158 = v32 + 8 * v33;
  do
  {
    v38 = *&v21[8 * v36];
    v39 = (*&v34 + v35);
    *(*&v34 + v35 + 44) = *(v27 + 4 * v38);
    if (v159)
    {
      v40 = atan2f(*(*&v153 + 4 * v38), *(v154 + 4 * v38)) * 0.25;
      v41 = *(*&v156 + 4 * v38);
      v42 = __sincosf_stret(v40 * -2.0);
      v43 = expf(((v41 * v42.__cosval) - (*(*&v155 + 4 * v38) * v42.__sinval)) * 0.5);
      v44 = (v40 * 180.0) / 3.14159265;
      *(v39 + 12) = v44;
      v45 = *(v158 + 4 * v38);
      v46 = *(v37 + 4 * v38);
      v47 = v45 + v46;
      v48 = *(v160 + 4 * v38);
      v49 = *(v161 + 4 * v38);
      v50 = (v45 + v46) * 0.5;
      v51 = v48 + v49;
      v52 = (v48 + v49) * 0.5;
      v53 = (v45 - v46) * v43;
      v54 = (v48 - v49) / v43;
      *(v39 + 7) = (v52 - (v54 * 0.5));
      *(v39 + 8) = (v50 - (v53 * 0.5));
      *(v39 + 9) = v54;
      *(v39 + 10) = v53;
      memset(&v167, 0, sizeof(v167));
      CGAffineTransformMakeTranslation(&v167, v52, v50);
      v55 = (*(v39 + 12) / -180.0) * 3.14159265;
      v165 = v167;
      CGAffineTransformRotate(&t2, &v165, v55);
      v167 = t2;
      v165 = t2;
      CGAffineTransformTranslate(&t2, &v165, -(v51 * 0.5), -(v47 * 0.5));
      v167 = t2;
      v168 = CGRectApplyAffineTransform(*(v39 + 56), &t2);
      v34 = v157;
      *(v39 + 8) = v168;
      if (!v28)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(*&v34 + v35 + 88) = *(v28 + 4 * v38);
      goto LABEL_25;
    }

    v56 = *(v161 + 4 * v38);
    v57 = v56;
    v58 = *(v37 + 4 * v38);
    v59 = v58;
    v60 = (*(v160 + 4 * v38) - v56);
    v61 = (*(v158 + 4 * v38) - v58);
    *(v39 + 1) = v57;
    *(v39 + 2) = v59;
    *(v39 + 3) = v60;
    *(v39 + 4) = v61;
    if (v28)
    {
      goto LABEL_24;
    }

LABEL_25:
    ++v36;
    v35 += 136;
  }

  while (v29 != v36);
  self = selfCopy;
  [(BWEspressoInferenceBoundingBoxPropagator *)selfCopy matchCurRegions:v29 curCount:?];
  v62 = v157;
  if (self->_suppressInterior)
  {
    v63 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
    v64 = v29 - 1;
    v65 = xmmword_1AD056910;
    v66 = xmmword_1AD056920;
    v67 = xmmword_1AD056930;
    v68 = xmmword_1AD056940;
    v69 = xmmword_1AD0564F0;
    v70 = xmmword_1AD056500;
    v71 = xmmword_1AD055320;
    v72 = xmmword_1AD046360;
    v73 = vdupq_n_s64(0x10uLL);
    v74 = v157;
    v75 = vdupq_n_s64(v29 - 1);
    do
    {
      v76 = vmovn_s64(vcgeq_u64(v75, v72));
      if (vuzp1_s8(vuzp1_s16(v76, *v65.i8), *v65.i8).u8[0])
      {
        *(*&v74 + 40) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v76, *&v65), *&v65).i8[1])
      {
        *(*&v74 + 176) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v75, *&v71))), *&v65).i8[2])
      {
        *(*&v74 + 312) = 0;
        *(*&v74 + 448) = 0;
      }

      v77 = vmovn_s64(vcgeq_u64(v75, v70));
      if (vuzp1_s8(*&v65, vuzp1_s16(v77, *&v65)).i32[1])
      {
        *(*&v74 + 584) = 0;
      }

      if (vuzp1_s8(*&v65, vuzp1_s16(v77, *&v65)).i8[5])
      {
        *(*&v74 + 720) = 0;
      }

      if (vuzp1_s8(*&v65, vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v75, *&v69)))).i8[6])
      {
        *(*&v74 + 856) = 0;
        *(*&v74 + 992) = 0;
      }

      v78 = vmovn_s64(vcgeq_u64(v75, v68));
      if (vuzp1_s8(vuzp1_s16(v78, *v65.i8), *v65.i8).u8[0])
      {
        *(*&v74 + 1128) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v78, *&v65), *&v65).i8[1])
      {
        *(*&v74 + 1264) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v75, *&v67))), *&v65).i8[2])
      {
        *(*&v74 + 1400) = 0;
        *(*&v74 + 1536) = 0;
      }

      v79 = vmovn_s64(vcgeq_u64(v75, v66));
      if (vuzp1_s8(*&v65, vuzp1_s16(v79, *&v65)).i32[1])
      {
        *(*&v74 + 1672) = 0;
      }

      if (vuzp1_s8(*&v65, vuzp1_s16(v79, *&v65)).i8[5])
      {
        *(*&v74 + 1808) = 0;
      }

      if (vuzp1_s8(*&v65, vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v75, *&v65)))).i8[6])
      {
        *(*&v74 + 1944) = 0;
        *(*&v74 + 2080) = 0;
      }

      v70 = vaddq_s64(v70, v73);
      v71 = vaddq_s64(v71, v73);
      v72 = vaddq_s64(v72, v73);
      v69 = vaddq_s64(v69, v73);
      v68 = vaddq_s64(v68, v73);
      v67 = vaddq_s64(v67, v73);
      v66 = vaddq_s64(v66, v73);
      *&v74 += 2176;
      v65 = vaddq_s64(v65, v73);
      v63 -= 16;
    }

    while (v63);
    v80 = (*&v62 + 176);
    v81 = v21 + 8;
    do
    {
      v82 = *&v62 + 136 * v63;
      if ((*(v82 + 40) & 1) == 0 && *(v82 + 97) == 1)
      {
        v83 = *&v21[8 * v63];
        v84 = *(v160 + 4 * v83);
        v85 = *(v161 + 4 * v83);
        v86 = *(v158 + 4 * v83);
        v87 = *(v37 + 4 * v83);
        v88 = vabds_f32(v86, v87);
        v89 = vabds_f32(v84, v85) * 0.1;
        interiorPadding = self->_interiorPadding;
        if (v89 < interiorPadding)
        {
          v89 = self->_interiorPadding;
        }

        v91 = v88 * 0.1;
        if (v91 < interiorPadding)
        {
          v91 = self->_interiorPadding;
        }

        if (v63 + 1 < v29)
        {
          v92 = v81;
          v93 = v80;
          for (i = v64; i; --i)
          {
            if ((*v93 & 1) == 0 && v93[57] == 1)
            {
              v95 = *v92;
              v96 = *(v161 + 4 * *v92);
              if (v96 <= (v85 + v89) && *(v37 + 4 * v95) <= (v87 + v91) && (v89 + *(v160 + 4 * v95)) >= v84 && (v91 + *(v158 + 4 * v95)) >= v86)
              {
                *(v82 + 40) = 1;
                break;
              }

              if ((v89 + v96) >= v85 && (v91 + *(v37 + 4 * v95)) >= v87 && *(v160 + 4 * v95) <= (v84 + v89) && *(v158 + 4 * v95) <= (v86 + v91))
              {
                *v93 = 1;
              }
            }

            v93 += 136;
            v92 += 8;
          }
        }
      }

      ++v63;
      --v64;
      v80 += 136;
      v81 += 8;
    }

    while (v63 != v29);
  }

LABEL_80:
  CMSampleBufferGetPresentationTimeStamp(&v167, sampleBufferCopy);
  v97 = CMTimeCopyAsDictionary(&v167, *MEMORY[0x1E695E480]);
  v98 = bufferCopy;
  ImageBuffer = CMSampleBufferGetImageBuffer(bufferCopy);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  v102 = CMGetAttachment(v98, *off_1E798A430, 0);
  if (v102)
  {
    memset(&v167, 0, 32);
    CGRectMakeWithDictionaryRepresentation(v102, &v167);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v167.a, v167.b, v167.c, v167.d, Width, Height);
    Width = vcvtad_u64_f64(v103);
    Height = vcvtad_u64_f64(v104);
  }

  v105 = *MEMORY[0x1E695EFD0];
  v106 = *(MEMORY[0x1E695EFD0] + 16);
  *&v167.a = *MEMORY[0x1E695EFD0];
  *&v167.c = v106;
  v107 = *(MEMORY[0x1E695EFD0] + 32);
  *&v167.tx = v107;
  if (self->_inferenceInputUsesPortraitOrientation)
  {
    v160 = v106;
    v161 = v105;
    v158 = v107;
    CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
    *&v165.a = v161;
    *&v165.c = v160;
    *&v165.tx = v158;
    CGAffineTransformConcat(&v167, &v165, &t2);
    CGAffineTransformMakeRotation(&v165, 1.57079633);
    v164 = v167;
    CGAffineTransformConcat(&t2, &v164, &v165);
    v167 = t2;
    CGAffineTransformMakeTranslation(&v165, 0.5, 0.5);
    v164 = v167;
    CGAffineTransformConcat(&t2, &v164, &v165);
    v167 = t2;
    v108 = Width;
  }

  else
  {
    v108 = Height;
    Height = Width;
  }

  if (v29)
  {
    v109 = (v149[10] / v149[11]) / (Height / v108);
    v146 = (1.0 / v109);
    v147 = v109;
    bufferCopy = *off_1E798CD40;
    sampleBufferCopy = *off_1E798CD28;
    v149 = *off_1E798CD30;
    selfCopy = *off_1E798CD38;
    v110 = *off_1E798CD18;
    v111 = *off_1E798CD20;
    v112 = *&v157 + 52;
    LODWORD(v158) = 1016003125;
    do
    {
      if (*(v112 + 45) == 1 && (*(v112 - 12) & 1) == 0)
      {
        x = *(v112 - 44);
        y = *(v112 - 36);
        v115 = *(v112 - 28);
        v116 = *(v112 - 20);
        if (v159)
        {
          *&v161 = *(v112 + 4);
          *&v160 = *(v112 + 12);
          v153 = *(v112 + 20);
          v117 = v153;
          v118 = *(v112 + 28);
          v157 = v116;
          v119 = *v112;
          memset(&t2, 0, sizeof(t2));
          CGAffineTransformMakeScale(&t2, 1.0, v147);
          v164 = t2;
          CGAffineTransformRotate(&v165, &v164, (v119 * *&v158));
          t2 = v165;
          v164 = v165;
          CGAffineTransformScale(&v165, &v164, 1.0, v146);
          t2 = v165;
          v120 = v165.tx + v165.c * 0.0 + v165.a * (v117 * 0.5);
          *&v154 = v115;
          v155 = x;
          v121 = v165.ty + v165.d * 0.0 + v165.b * (v117 * 0.5);
          v122 = v118;
          v156 = y;
          v123 = v165.tx + v118 * 0.5 * v165.c + v165.a * 0.0;
          v124 = v165.ty + v118 * 0.5 * v165.d + v165.b * 0.0;
          v125 = hypot(v120, v121);
          v126 = v125 + v125;
          v127 = hypot(v123, v124);
          v128 = v127 + v127;
          *&v161 = *&v161 - (v126 - v153) * 0.5;
          v129 = *&v160 - (v127 + v127 - v122) * 0.5;
          v130 = v121 / v120;
          v115 = *&v154;
          x = v155;
          v131 = atan(v130);
          v132 = -v123;
          y = v156;
          v133 = atan(v132 / v124) * (v128 * v128) + v131 * (v126 * v126);
          v116 = v157;
          *&v133 = v133 / (v126 * v126 + v128 * v128);
          *&v160 = *&v133 / *&v158;
        }

        else
        {
          LODWORD(v160) = *v112;
          *&v161 = x;
          v129 = y;
          v126 = v115;
          v128 = v116;
        }

        if (self->_inferenceInputUsesPortraitOrientation)
        {
          t2 = v167;
          v169.origin.x = x;
          v169.origin.y = y;
          v169.size.width = v115;
          v169.size.height = v116;
          v170 = CGRectApplyAffineTransform(v169, &t2);
          x = v170.origin.x;
          y = v170.origin.y;
          v115 = v170.size.width;
          v116 = v170.size.height;
          t2 = v167;
          *&v170.origin.x = v161;
          v170.origin.y = v129;
          v170.size.width = v126;
          v170.size.height = v128;
          v171 = CGRectApplyAffineTransform(v170, &t2);
          v134 = v171.origin.x;
          v129 = v171.origin.y;
          v126 = v171.size.width;
          v128 = v171.size.height;
        }

        else
        {
          v134 = *&v161;
        }

        v172.origin.x = x;
        v172.origin.y = y;
        v172.size.width = v115;
        v172.size.height = v116;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v172);
        v173.origin.x = v134;
        v173.origin.y = v129;
        v173.size.width = v126;
        v173.size.height = v128;
        v136 = CGRectCreateDictionaryRepresentation(v173);
        v162[0] = bufferCopy;
        v162[1] = sampleBufferCopy;
        v163[0] = v97;
        v163[1] = DictionaryRepresentation;
        v162[2] = v149;
        LODWORD(v137) = *(v112 + 52);
        v163[2] = [MEMORY[0x1E696AD98] numberWithFloat:v137];
        v162[3] = selfCopy;
        v163[3] = [MEMORY[0x1E696AD98] numberWithInteger:*(v112 - 52)];
        v162[4] = v110;
        LODWORD(v138) = v160;
        v139 = [MEMORY[0x1E696AD98] numberWithFloat:v138];
        v162[5] = v111;
        v163[4] = v139;
        v163[5] = v136;
        v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:v162 count:6];
        [v152 addObject:v140];
        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        if (v136)
        {
          CFRelease(v136);
        }
      }

      v112 += 136;
      --v29;
    }

    while (v29);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (self->_inferenceResultKey)
  {
    [dictionaryCopy setObject:v152 forKeyedSubscript:?];
  }

  v141 = self->_maxRegionID;
  if (v141 != maxRegionID)
  {
    [(FigCaptureLogSmartCameraGating *)self->_logger logTracksCreated:(v141 - maxRegionID)];
  }
}

- (void)matchCurRegions:(uint64_t)regions curCount:
{
  if (self)
  {
    v44[1] = v44;
    v6 = v44 - ((4 * *(self + 152) * regions + 19) & 0xFFFFFFFFFFFFFFF0);
    if (regions)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(self + 152);
      do
      {
        if (v9)
        {
          v10 = 0;
          v11 = a2 + 136 * v7;
          v12 = 32;
          do
          {
            v45.origin.x = OUTLINED_FUNCTION_0_110();
            v46 = CGRectIntersection(v45, *(v11 + 8));
            v47 = CGRectStandardize(v46);
            width = v47.size.width;
            height = v47.size.height;
            v48.origin.x = OUTLINED_FUNCTION_0_110();
            v49 = CGRectUnion(v48, *(v11 + 8));
            v50 = CGRectStandardize(v49);
            v15 = 1.0 - width * height / (v50.size.width * v50.size.height);
            MidX = CGRectGetMidX(*(v11 + 8));
            MidY = CGRectGetMidY(*(v11 + 8));
            v51.origin.x = OUTLINED_FUNCTION_0_110();
            v18 = CGRectGetMidX(v51);
            v52.origin.x = OUTLINED_FUNCTION_0_110();
            v19 = CGRectGetMidY(v52);
            v20 = v18 - MidX;
            v21 = v19 - MidY;
            *&v6[4 * v8++] = hypotf(v20, v21) + v15;
            ++v10;
            v9 = *(self + 152);
            v12 += 136;
          }

          while (v10 < v9);
        }

        ++v7;
      }

      while (v7 != regions);
      v22 = [*(self + 80) computeMatchingForCostMatrix:v6 withRowCount:regions columnCount:*(self + 152)];
      [v22 count];
      v23 = 0;
      v24 = a2 + 88;
      do
      {
        v25 = [objc_msgSend(v22 objectAtIndexedSubscript:{v23), "integerValue"}];
        if ((v25 & 0x8000000000000000) != 0 || (v26 = *(self + 152), v25 >= v26) || *&v6[4 * v26 * v23 + 4 * v25] > *(self + 56))
        {
          v27 = *(self + 88) + 1;
          *(self + 88) = v27;
          *(v24 - 88) = v27;
          v28 = *(self + 120);
          v29 = *(self + 136);
          *(v24 + 8) = *(self + 104);
          *(v24 + 40) = v29;
          *(v24 + 24) = v28;
          v30 = *(v24 - 40);
          *(v24 + 16) = *(v24 - 44);
        }

        else
        {
          v37 = *(self + 144) + 136 * v25;
          *(v24 - 88) = *v37;
          v38 = *(v37 + 96);
          v39 = *(v37 + 112);
          *(v24 + 40) = *(v37 + 128);
          *(v24 + 24) = v39;
          *(v24 + 8) = v38;
          v40 = *(v24 - 40);
          v41 = *(*(self + 144) + 136 * v25 + 52);
          v42 = v41 + 90.0;
          v43 = vabds_f32(v40, v41);
          if (vabds_f32(v40, v41 + 90.0) >= v43)
          {
            v42 = *(*(self + 144) + 136 * v25 + 52);
            if (vabds_f32(v40, v41 + -90.0) < v43)
            {
              v42 = v41 + -90.0;
            }
          }

          v30 = (v42 * (1.0 - *(self + 60))) + (v40 * *(self + 60));
        }

        v31 = *(v24 + 8);
        *(v24 - 36) = v30;
        v32 = *(v24 + 9);
        if (v31 == 1)
        {
          v33 = *v24;
          BWSmartCameraSceneUpdateWithConfidence(v24 + 8, *(v24 - 44));
          if (v33 < *(self + 64) && !v32 || v33 < *(self + 68) && v32)
          {
            *(v24 + 9) = 0;
            *(v24 + 32) = 0;
          }
        }

        else
        {
          v34 = *(v24 - 44);
          *(v24 + 16) = v34;
          if (v34 <= *(v24 + 20))
          {
            v36 = 0;
          }

          else
          {
            v35 = *(self + 64);
            v36 = *v24 >= v35;
            if (*v24 < v35 && v32)
            {
              v36 = *v24 >= *(self + 68);
            }
          }

          *(v24 + 9) = v36;
        }

        ++v23;
        v24 += 136;
      }

      while (regions != v23);
    }

    free(*(self + 144));
    *(self + 144) = a2;
    *(self + 152) = regions;
  }
}

@end