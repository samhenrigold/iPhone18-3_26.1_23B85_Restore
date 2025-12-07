@interface LTMExtractMetadataV1
+ (BOOL)extractCCMFromMetadata:(id)metadata toDriverInput:(sRefDriverInputs_SOFTISP *)input;
+ (BOOL)getTileStatsRegion:(id)region validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input;
+ (int)extractAWBMetadataFromMetadata:(id)metadata validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input;
+ (void)extractRectanglesFrom:(id)from inputBufferRect:(id)rect validBufferRect:(id)bufferRect ltmGeometry:(id)geometry;
- (BOOL)extractFrom:(id)from toDriverInput:(sRefDriverInputs_SOFTISP *)input ltmGeometry:(id)geometry;
- (LTMExtractMetadataV1)init;
- (float)extractHRGainDownRatioFrom:(id)from;
@end

@implementation LTMExtractMetadataV1

- (LTMExtractMetadataV1)init
{
  if ([LTMExtractMetadataV1 init]::onceToken != -1)
  {
    [LTMExtractMetadataV1 init];
  }

  v16.receiver = self;
  v16.super_class = LTMExtractMetadataV1;
  v4 = [(LTMExtractMetadataV1 *)&v16 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_forceDisableLTMHazeCorrection = 0;
    *&v4->_forceDisableLTMFaceBoost = 0;
    *&v4->_faceBiasScaler = xmmword_1C9335BC0;
    v6 = v4;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v9[0], v9[1], v10, v11, v12, v13);
    v15 = 0;
    v14 = 0;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5;
}

- (BOOL)extractFrom:(id)from toDriverInput:(sRefDriverInputs_SOFTISP *)input ltmGeometry:(id)geometry
{
  fromCopy = from;
  geometryCopy = geometry;
  v155 = fromCopy;
  inMetaData = [fromCopy inMetaData];
  validBufferRect = [fromCopy validBufferRect];
  inputBufferRect = [fromCopy inputBufferRect];
  v8 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910C8]];
  v142 = v8;
  v9 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910C0]];
  v149 = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v141, v140, v141, v8, inputBufferRect, v9, geometryCopy);
    v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT);
    goto LABEL_132;
  }

  unsignedIntValue = [v8 unsignedIntValue];
  unsignedIntValue2 = [v149 unsignedIntValue];
  if (!validBufferRect)
  {
    goto LABEL_10;
  }

  v13 = [validBufferRect objectForKeyedSubscript:@"Width"];
  if (![v13 intValue])
  {

LABEL_10:
    v161[0] = @"X";
    v161[1] = @"Y";
    v162[0] = &unk_1F48E6600;
    v162[1] = &unk_1F48E6600;
    v161[2] = @"Width";
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue];
    v162[2] = v16;
    v161[3] = @"Height";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue2];
    v162[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v162 forKeys:v161 count:4];

    validBufferRect = v18;
    goto LABEL_11;
  }

  v14 = [validBufferRect objectForKeyedSubscript:@"Height"];
  intValue = [v14 intValue];

  if (!intValue)
  {
    goto LABEL_10;
  }

LABEL_11:
  [geometryCopy inputTextureSize];
  if (v19 == 0.0 || ([geometryCopy inputTextureSize], v20 == 0.0))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
    v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT);
LABEL_132:
    v126 = v155;
    v128 = v143;
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_134;
  }

  v21 = [validBufferRect objectForKeyedSubscript:@"Width"];
  [v21 floatValue];
  v23 = v22;
  v24 = [validBufferRect objectForKeyedSubscript:@"X"];
  [v24 floatValue];
  v26 = v25;
  [geometryCopy inputTextureSize];
  v28 = (v23 + (v26 * 2.0)) / v27;
  *&v28 = v28;
  [geometryCopy setInputTextureDownsampleRatio:v28];

  [LTMExtractMetadataV1 extractRectanglesFrom:inMetaData inputBufferRect:inputBufferRect validBufferRect:validBufferRect ltmGeometry:geometryCopy];
  *&input->faceInfo.primaryFaceIndex = 0;
  input->faceInfo.rectArray[8] = 0u;
  input->faceInfo.rectArray[9] = 0u;
  input->faceInfo.rectArray[6] = 0u;
  input->faceInfo.rectArray[7] = 0u;
  input->faceInfo.rectArray[4] = 0u;
  input->faceInfo.rectArray[5] = 0u;
  input->faceInfo.rectArray[2] = 0u;
  input->faceInfo.rectArray[3] = 0u;
  input->faceInfo.rectArray[0] = 0u;
  input->faceInfo.rectArray[1] = 0u;
  v29 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  v156 = v29;
  if (!v29 || ([v29 objectForKeyedSubscript:*MEMORY[0x1E6990E98]], (v30 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v157 = 0;
    goto LABEL_34;
  }

  v157 = v30;
  v31 = [v30 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
  v32 = v31;
  if (!v31 || ![v31 count] || ((v33 = objc_msgSend(v32, "count"), v33 >= 0xA) ? (v34 = 10) : (v34 = v33), input->faceInfo.numFaces = v34, !v33))
  {
LABEL_29:
    v49 = [v32 sortedArrayUsingComparator:&__block_literal_global_29];
    v50 = v49;
    if (v49 && [v49 count])
    {
      v51 = [v50 objectAtIndexedSubscript:0];
      v52 = [v51 objectForKeyedSubscript:@"Index"];
      input->faceInfo.primaryFaceIndex = [v52 intValue];
    }

LABEL_34:
    input->forceDisableFaceBoost = self->_forceDisableLTMFaceBoost;
    v53 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991158]];
    v54 = v53;
    if (!v53)
    {
      goto LABEL_133;
    }

    input->gainDigi = [v53 intValue];
    v55 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991090]];

    if (!v55)
    {
      goto LABEL_133;
    }

    input->luxLevel = [v55 intValue];
    v56 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990ED8]];

    if (!v56)
    {
      goto LABEL_133;
    }

    input->gainAnal.v16 = [v56 unsignedShortValue];
    v57 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FC8]];

    if (!v57)
    {
      goto LABEL_133;
    }

    [v57 doubleValue];
    input->exposureTime = (v58 * 1000000.0);
    v59 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991170]];

    if (!v59)
    {
      goto LABEL_133;
    }

    input->gainDigiSensor.v16 = [v59 unsignedShortValue];
    v60 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910F0]];
    bOOLValue = [v60 BOOLValue];
    v62 = MEMORY[0x1E6990F88];
    v63 = MEMORY[0x1E69910E8];
    if (bOOLValue)
    {
    }

    else
    {
      isSIFR = [v155 isSIFR];

      if ((isSIFR & 1) == 0)
      {
        input->bracketingMode = 15;
        v65 = [inMetaData objectForKeyedSubscript:*v62];

        if (v65)
        {
          [v65 floatValue];
          v73 = exp2f(-v72);
          v68 = 0;
          v69 = 0;
          v67 = vcvts_n_u32_f32(v73, 8uLL);
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v67 = 256;
        }

        goto LABEL_48;
      }
    }

    input->bracketingMode = 15;
    v65 = [inMetaData objectForKeyedSubscript:*v63];

    if (!v65)
    {
      v70 = 0;
      v68 = 1;
      v69 = 1;
      v71 = 1;
LABEL_49:
      input->isSIFRFrame = v68;
      v74 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991038]];
      input->HROn = [v74 BOOLValue];

      if (input->HROn && !self->_forceDisableHR)
      {
        v76 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991040]];

        if (!v76)
        {
          goto LABEL_133;
        }

        unsignedShortValue = [v76 unsignedShortValue];
        v70 = v76;
      }

      else
      {
        unsignedShortValue = 4096;
      }

      input->hrGainDownRatio = unsignedShortValue;
      v77 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FC0]];

      if (v77)
      {
        [v77 floatValue];
        v79 = v78;
        if (v69)
        {
          v80 = [inMetaData objectForKeyedSubscript:*v63];
          [v80 floatValue];
          v79 = v79 - v81;
        }

        v82 = [inMetaData objectForKeyedSubscript:*v62];

        if (v82)
        {
          [v82 floatValue];
          v79 = v79 - v83;
        }

        input->expBias = vcvts_n_s32_f32(exp2f(v79), 8uLL);
        v84 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910D0]];

        if (v84)
        {
          [v84 floatValue];
          input->realizedExpBias = vcvts_n_s32_f32(v85, 8uLL);
        }

        else
        {
          v71 = 1;
        }

        v86 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];

        if (v86)
        {
          [v86 floatValue];
          input->ev0Ratio = vcvts_n_s32_f32(v87, 8uLL);
        }

        else
        {
          v71 = 1;
        }

        v88 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
        if ([v88 isEqual:*MEMORY[0x1E6990CA0]])
        {
          v89 = 2;
        }

        else if ([v88 isEqual:*MEMORY[0x1E6990CA8]])
        {
          v89 = 2;
        }

        else
        {
          v89 = 0;
        }

        input->channel = v89;
        v90 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991028]];
        input->flashStatus = [v90 BOOLValue];

        input->ltmProcMode = [v155 digitalFlash];
        v91 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FE0]];

        if (v91)
        {
          [v91 floatValue];
          input->faceExpRatioFiltered = v92;
        }

        else
        {
          v71 = 1;
        }

        if (self->_forceDisableLTMFaceExposureRatio)
        {
          input->faceExpRatioFiltered = 1.0;
        }

        if (!v71 || [LTMExtractMetadataV1 extractFromRawMetadata:inMetaData toDriverInput:input])
        {
          if (![LTMExtractMetadataV1 extractCCMFromMetadata:inMetaData toDriverInput:input])
          {
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
          }

          v93 = [LTMExtractMetadataV1 isLocalCCMEnabled:input];
          input->useSpatialCCM = v93;
          if (v93)
          {
            v94 = [LTMExtractMetadataV1 extractAWBMetadataFromMetadata:inMetaData validBufferRect:validBufferRect toDriverInput:input];
            if (v94)
            {
              input->useSpatialCCM = 0;
              LODWORD(v139) = v94;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v139, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
            }
          }

          input->overflowDGain = 256;
          input->hdrRatio = 256;
          input->panoExpRatio = 0;
          v95 = 1;
          input->bLTMSingleFrameMode = 1;
          input->isHLGMode = 0;
          input->gammaCurve = 0;
          input->useHighlightCompression = 0;
          input->highlightCompressionGain = 1.0;
          if ((v69 & 1) == 0)
          {
            v96 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990E18]];
            [v96 floatValue];
            v95 = v97 < -1.0;
          }

          if ([v155 isAdaptiveHighlightCompressionEnabled])
          {
            if (input->HROn)
            {
              LOBYTE(forceDisableHR) = self->_forceDisableHR;
              input->softIspDGain = input->gainDigi * 0.0039062;
              p_softIspDGain = &input->softIspDGain;
              input->useAdaptiveHighlightCompression = 1;
              goto LABEL_87;
            }

            input->softIspDGain = input->gainDigi * 0.0039062;
            p_softIspDGain = &input->softIspDGain;
            input->useAdaptiveHighlightCompression = 1;
          }

          else
          {
            if ([v155 isHighlightCompressionEnabled] && input->HROn)
            {
              forceDisableHR = self->_forceDisableHR;
              if (!forceDisableHR && !v95)
              {
                forceHighlightCompressionForEveryFrame = self->_forceHighlightCompressionForEveryFrame;
                input->softIspDGain = input->gainDigi * 0.0039062;
                p_softIspDGain = &input->softIspDGain;
                input->hardIspDGain = 1.0;
                p_hardIspDGain = &input->hardIspDGain;
                if (!forceHighlightCompressionForEveryFrame)
                {
                  goto LABEL_100;
                }

                goto LABEL_88;
              }

              input->softIspDGain = input->gainDigi * 0.0039062;
              p_softIspDGain = &input->softIspDGain;
LABEL_87:
              *(p_softIspDGain - 1) = 1.0;
              p_hardIspDGain = p_softIspDGain - 1;
              if (forceDisableHR)
              {
                goto LABEL_100;
              }

LABEL_88:
              AuxCompute_CalcExposureRatio(input, v98);
              if (input->useAdaptiveHighlightCompression)
              {
                v103 = v102;
                hardIspDGain = input->hardIspDGain;
                v105 = 1.0;
                if (v95)
                {
                  [v155 minimumAdaptiveHC_SIFR];
                  v105 = v106;
                }

                [v155 adaptiveHCSlope];
                v108 = fmaxf(v105, fminf((v103 / hardIspDGain) / v107, 4.0));
                if (v108 > 1.0)
                {
                  input->useHighlightCompression = 1;
                  input->highlightCompressionGain = v108;
                }
              }

              else
              {
                input->useHighlightCompression = 1;
                input->highlightCompressionGain = 2.0;
              }

LABEL_100:
              v109 = *p_softIspDGain;
              [v155 ispDGainThreshold];
              if (v109 > v111)
              {
                [v155 ispDGainThreshold];
                input->hardIspDGain = (input->gainDigi * 0.0039062) / v112;
                input->softIspDGain = v112;
              }

              AuxCompute_CalcExposureRatio(input, v110);
              v115 = v114 / *p_hardIspDGain;
              if (v115 > 80.0)
              {
                v116 = *p_hardIspDGain * (v115 / 80.0);
                v117 = (input->gainDigi * 0.0039062) / v116;
                input->hardIspDGain = v116;
                input->softIspDGain = v117;
              }

              AuxCompute_CalcExposureRatio(input, v113);
              input->LTMHazeCorrectionOff = self->_forceDisableLTMHazeCorrection;
              input->useBt709 = self->_forceUseBt709;
              if ([v155 doAdaptiveFaceBiasScaler])
              {
                v118 = input->gainAnal.v16;
                v119 = input->gainDigiSensor.v16;
                gainDigi = input->gainDigi;
                faceBiasThreshold = self->_faceBiasThreshold;
                faceBiasThresholdMin = self->_faceBiasThresholdMin;
                faceBiasScaler = self->_faceBiasScaler;
                faceBiasScalerMin = self->_faceBiasScalerMin;
                if (faceBiasThreshold <= faceBiasThresholdMin)
                {
                  LODWORD(v139) = 0;
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v139, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
                }

                if (faceBiasScaler <= faceBiasScalerMin)
                {
                  LODWORD(v139) = 0;
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v139, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
                }

                v125 = (vcvts_n_f32_u32(v118, 8uLL) * vcvts_n_f32_u32(v119, 8uLL)) * (gainDigi * 0.0039062);
                v126 = v155;
                if (v125 < faceBiasThreshold)
                {
                  v127 = geometryCopy;
                  v128 = v142;
                  v130 = v156;
                  v129 = v157;
                  if (v125 <= faceBiasThresholdMin)
                  {
                    faceBiasScaler = faceBiasScalerMin;
                  }

                  else
                  {
                    faceBiasScaler = faceBiasScalerMin + (((faceBiasScaler - faceBiasScalerMin) / (faceBiasThreshold - faceBiasThresholdMin)) * (v125 - faceBiasThresholdMin));
                  }

                  goto LABEL_114;
                }
              }

              else
              {
                faceBiasScaler = 0.08;
                v126 = v155;
              }

              v127 = geometryCopy;
              v128 = v142;
              v130 = v156;
              v129 = v157;
LABEL_114:
              *&input[1].flashMixPercentage[400] = faceBiasScaler;
              input->useHazeCorrection = 0;
              input[1].flashMixPercentage[402] = 0;

              v131 = 1;
              goto LABEL_115;
            }

            input->softIspDGain = input->gainDigi * 0.0039062;
            p_softIspDGain = &input->softIspDGain;
          }

          *(p_softIspDGain - 1) = 1.0;
          p_hardIspDGain = p_softIspDGain - 1;
          goto LABEL_100;
        }

        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
        v137 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT);
        v126 = v155;
        v128 = v146;
        fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_134:
        v131 = 0;
        v127 = v151;
        goto LABEL_115;
      }

LABEL_133:
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
      v138 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT);
      v126 = v155;
      v128 = v147;
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      goto LABEL_134;
    }

    [v65 floatValue];
    v67 = vcvts_n_u32_f32(exp2f(-v66), 8uLL);
    v68 = 1;
    v69 = 1;
LABEL_48:
    v71 = 0;
    input->bracketingExpRatio = v67;
    v70 = v65;
    goto LABEL_49;
  }

  v35 = 0;
  v36 = *MEMORY[0x1E69910D8];
  v37 = unsignedIntValue;
  v38 = unsignedIntValue2;
  if (v34 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v34;
  }

  p_height = &input->faceInfo.rectArray[0].height;
  while (1)
  {
    v41 = [v32 objectAtIndexedSubscript:v35];
    v42 = [v41 mutableCopy];

    if (!v42)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
      v134 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT);
      v126 = v155;
      v128 = v144;
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v127 = v152;
      goto LABEL_123;
    }

    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v35];
    [v42 setObject:v43 forKeyedSubscript:@"Index"];

    v44 = [v42 objectForKeyedSubscript:v36];
    v45 = v44;
    if (!v44 || !CGRectMakeWithDictionaryRepresentation(v44, &rect))
    {
      break;
    }

    v46 = (rect.origin.y * v38);
    height = rect.size.height;
    v48 = (rect.size.width * v37);
    *(p_height - 3) = (rect.origin.x * v37);
    *(p_height - 2) = v46;
    *(p_height - 1) = v48;
    *p_height = (height * v38);

    ++v35;
    p_height += 4;
    if (v39 == v35)
    {
      goto LABEL_29;
    }
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v141, v140, v141, v142, inputBufferRect, v149, geometryCopy);
  v135 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
  v126 = v155;
  fig_log_call_emit_and_clean_up_after_send_and_compose();

  v127 = v153;
  v128 = v145;
LABEL_123:

  v131 = 0;
LABEL_115:

  return v131;
}

uint64_t __62__LTMExtractMetadataV1_extractFrom_toDriverInput_ltmGeometry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 valueForKey:@"Rect"];
  if (!v7 || ([v6 valueForKey:@"Rect"], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, *&v13.origin.x, *&v13.origin.y, LODWORD(v13.size.width), *&v13.size.height, *&rect.origin.x, LODWORD(rect.origin.y));
    v8 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_8;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v7, &rect) || !CGRectMakeWithDictionaryRepresentation(v8, &v13))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, *&v13.origin.x, *&v13.origin.y, LODWORD(v13.size.width), *&v13.size.height, *&rect.origin.x, LODWORD(rect.origin.y));
    goto LABEL_11;
  }

  v9 = rect.size.width * rect.size.height;
  v10 = v13.size.width * v13.size.height;
  if (v9 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

LABEL_8:

  return v11;
}

+ (void)extractRectanglesFrom:(id)from inputBufferRect:(id)rect validBufferRect:(id)bufferRect ltmGeometry:(id)geometry
{
  fromCopy = from;
  rectCopy = rect;
  bufferRectCopy = bufferRect;
  geometryCopy = geometry;
  if (+[LTMExtractMetadataV1 extractRectanglesFrom:inputBufferRect:validBufferRect:ltmGeometry:]::onceToken != -1)
  {
    +[LTMExtractMetadataV1 extractRectanglesFrom:inputBufferRect:validBufferRect:ltmGeometry:];
  }

  v11 = [bufferRectCopy objectForKeyedSubscript:@"X"];
  unsignedIntValue = [v11 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v14 = v13;
  v15 = [bufferRectCopy objectForKeyedSubscript:@"Y"];
  unsignedIntValue2 = [v15 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v18 = v17;
  v19 = [bufferRectCopy objectForKeyedSubscript:@"Width"];
  unsignedIntValue3 = [v19 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v22 = v21;
  v23 = [bufferRectCopy objectForKeyedSubscript:@"Height"];
  unsignedIntValue4 = [v23 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v26 = v25;

  if (rectCopy || (v78 = *MEMORY[0x1E695F050], v79 = *(MEMORY[0x1E695F050] + 16), CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent(), (CGRectIfPresent & FigCFDictionaryGetCGRectIfPresent() & 1) == 0))
  {
    [geometryCopy setDeepZoomOrigin:{0.0, 0.0}];
  }

  else
  {
    [geometryCopy setDeepZoomOrigin:v78];
    [geometryCopy inputTextureDownsampleRatio];
    v28 = *(&v79 + 1);
    v29 = v28 / *(&v79 + 1);
    *&v31 = v30 / v29;
    [geometryCopy setInputTextureDownsampleRatio:v31];
  }

  v32 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E6990DA0]];
  v33 = v32;
  v34 = (unsignedIntValue / v14);
  v35 = (unsignedIntValue2 / v18);
  v36 = (unsignedIntValue3 / v22);
  v37 = (unsignedIntValue4 / v26);
  v75 = v34;
  v38 = v35;
  v39 = v36;
  v40 = v37;
  if (v32)
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
    if (CGRectMakeWithDictionaryRepresentation(v32, &rect))
    {
      v41 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E69910C8]];
      unsignedIntValue5 = [v41 unsignedIntValue];

      v43 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E69910C0]];
      unsignedIntValue6 = [v43 unsignedIntValue];

      x = rect.origin.x;
      [geometryCopy deepZoomOrigin];
      v73 = v45;
      [geometryCopy inputTextureDownsampleRatio];
      v47 = v46;
      y = rect.origin.y;
      [geometryCopy deepZoomOrigin];
      v49 = v48;
      [geometryCopy inputTextureDownsampleRatio];
      v51 = v50;
      width = rect.size.width;
      [geometryCopy inputTextureDownsampleRatio];
      v53 = v52;
      height = rect.size.height;
      [geometryCopy inputTextureDownsampleRatio];
      v34 = round(-(v73 - x * unsignedIntValue5) / v47);
      v38 = round(-(v49 - y * unsignedIntValue6) / v51);
      v39 = round(width * unsignedIntValue5 / v53);
      v40 = round(height * unsignedIntValue6 / v55);
    }
  }

  [geometryCopy inputTextureSize];
  v57 = v56;
  [geometryCopy inputTextureSize];
  v59 = v57 / v58;
  *&v58 = v39 / v40;
  if (v59 <= *&v58)
  {
    v60 = v40 * v59;
    v61 = v40;
  }

  else
  {
    v60 = v39;
    v61 = v39 / v59;
  }

  if (v60 >= 16.0)
  {
    v62 = v60;
  }

  else
  {
    v62 = 16.0;
  }

  v63 = 8.0;
  if (v61 >= 16.0)
  {
    v64 = v60 < 16.0;
    if (fmax(v40 - v61, v39 - v62) > 2.0)
    {
      v64 = 1;
    }

    if (!v64)
    {
      v62 = v39;
      v61 = v40;
    }

    v63 = v61 * 0.5;
  }

  v65 = round(v62 * 0.5);
  v66 = round(v63);
  v67 = v65 + v65;
  v68 = v66 + v66;
  v69 = round((v34 + (v39 - (v65 + v65)) * 0.5) * 0.5);
  v70 = round((v38 + (v40 - v68) * 0.5) * 0.5);
  [geometryCopy setCropRect:v69 + v69 sourceRect:{v70 + v70, v67, v68, v75, v35, v36, v37}];
}

+ (int)extractAWBMetadataFromMetadata:(id)metadata validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input
{
  metadataCopy = metadata;
  rectCopy = rect;
  v9 = [metadataCopy objectForKeyedSubscript:@"SpatialCCMOutputMetadata"];
  if (![LTMExtractMetadataV1 getTileStatsRegion:metadataCopy validBufferRect:rectCopy toDriverInput:input])
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v43, rectCopy, v48, v49, v50, v51);
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v38 = -1;
    goto LABEL_27;
  }

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"FdAWBChistMixFactor"];
    v11 = v10;
    if (v10 && (input->fdAWBChistMixFactor = [v10 intValue], objc_msgSend(v9, "objectForKeyedSubscript:", @"AwbColorspace"), v12 = objc_claimAutoreleasedReturnValue(), v11, v12) && (input->awbColorspace = objc_msgSend(v12, "unsignedCharValue"), objc_msgSend(v9, "objectForKeyedSubscript:", @"IsLEDMainFlashforAWB"), v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
    {
      input->isLEDMainFlashforAWB = [v13 BOOLValue];
      v14 = [v9 objectForKeyedSubscript:@"AwbGainsSkinOnly"];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 objectAtIndexedSubscript:0];
        *(&input->awbGains.b.v16 + 1) = [v16 intValue];

        v17 = [v15 objectAtIndexedSubscript:3];
        *(&input->awbGainsSkinOnly.gb.v16 + 1) = [v17 intValue];

        v18 = [v9 objectForKeyedSubscript:@"AwbGainsFlashProj"];

        if (v18)
        {
          v19 = [v18 objectAtIndexedSubscript:0];
          *(&input->awbGainsSkinOnly.b.v16 + 1) = [v19 intValue];

          v20 = [v18 objectAtIndexedSubscript:3];
          *(&input->awbGainsFlashProj.gb.v16 + 1) = [v20 intValue];

          v21 = [v9 objectForKeyedSubscript:@"FlashProjMixWeighting"];

          if (v21)
          {
            [v21 floatValue];
            input->flashProjMixWeighting = v22;
            goto LABEL_20;
          }

          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v43, rectCopy, v48, v49, v50, v51);
          v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          v36 = v47;
          fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_35:
          v38 = -1;
          goto LABEL_28;
        }
      }

      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v43, rectCopy, v48, v49, v50, v51);
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      v36 = v46;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v43, rectCopy, v48, v49, v50, v51);
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v36 = v45;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_35;
  }

  v18 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F40]];
  v21 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F38]];
  v23 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F28]];
  v24 = v23;
  if (v18)
  {
    v25 = v21 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (v25 || v23 == 0)
  {
    input->fdAWBChistMixFactor = 0;
    v27 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];
    *(&input->awbGains.b.v16 + 1) = [v27 unsignedShortValue];

    v28 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];
    *(&input->awbGainsSkinOnly.gb.v16 + 1) = [v28 unsignedShortValue];
  }

  else
  {
    input->fdAWBChistMixFactor = [v18 unsignedIntValue];
    *(&input->awbGains.b.v16 + 1) = [v21 unsignedShortValue];
    *(&input->awbGainsSkinOnly.gb.v16 + 1) = [v24 unsignedShortValue];
  }

LABEL_20:
  v29 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];
  *(&input->isLEDMainFlashforAWB + 1) = [v29 unsignedShortValue];

  v30 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];
  *(&input->awbGains.gb.v16 + 1) = [v30 unsignedShortValue];

  flashMixPercentage = input->flashMixPercentage;
  bzero(flashMixPercentage, 0x400uLL);
  v32 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991010]];
  v33 = v32;
  if (!v32)
  {
    v38 = 0;
LABEL_27:
    v36 = rectCopy;
    goto LABEL_28;
  }

  bytes = [v32 bytes];
  v35 = 0;
  v36 = rectCopy;
  do
  {
    for (i = 0; i != 16; ++i)
    {
      flashMixPercentage[i] = *(bytes + i * 2);
    }

    ++v35;
    bytes += 64;
    flashMixPercentage += 16;
  }

  while (v35 != 16);

  v38 = 0;
LABEL_28:

  return v38;
}

+ (BOOL)getTileStatsRegion:(id)region validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input
{
  regionCopy = region;
  rectCopy = rect;
  if (+[LTMExtractMetadataV1 getTileStatsRegion:validBufferRect:toDriverInput:]::onceToken != -1)
  {
    +[LTMExtractMetadataV1 getTileStatsRegion:validBufferRect:toDriverInput:];
  }

  v52 = rectCopy;
  if (regionCopy)
  {
    v10 = [regionCopy objectForKeyedSubscript:@"SpatialCCMOutputMetadata"];
    v11 = [rectCopy objectForKeyedSubscript:@"Width"];
    intValue = [v11 intValue];

    v12 = [rectCopy objectForKeyedSubscript:@"Height"];
    intValue2 = [v12 intValue];

    v13 = [rectCopy objectForKeyedSubscript:@"X"];
    intValue3 = [v13 intValue];

    v15 = [rectCopy objectForKeyedSubscript:@"Y"];
    v51 = v10;
    intValue4 = [v15 intValue];

    v17 = *MEMORY[0x1E69910C8];
    v18 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E69910C8]];
    width = [v18 unsignedIntValue];

    v20 = *MEMORY[0x1E69910C0];
    v21 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E69910C0]];
    height = [v21 unsignedIntValue];

    v23 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E6991148]];
    v24 = v23;
    if (v23 && CGRectMakeWithDictionaryRepresentation(v23, &rect))
    {
      width = rect.size.width;
      height = rect.size.height;
    }

    v25 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E6990DA0]];
    v26 = v25;
    if (v25 && CGRectMakeWithDictionaryRepresentation(v25, &v56))
    {
      v27 = [regionCopy objectForKeyedSubscript:v17];
      unsignedIntValue = [v27 unsignedIntValue];

      v29 = [regionCopy objectForKeyedSubscript:v20];
      unsignedIntValue2 = [v29 unsignedIntValue];

      intValue2 = (v56.size.height * unsignedIntValue2);
      intValue = (v56.size.width * unsignedIntValue);
      intValue3 = (v56.origin.x * unsignedIntValue);
      intValue4 = (v56.origin.y * unsignedIntValue2);
    }

    v31 = sqrtf((height * width) / 199580.0);
    if (v31 <= 8.0 || v31 > 12.0)
    {
      if (v31 <= 12.0)
      {
        v33 = 8;
      }

      else
      {
        v33 = 16;
      }
    }

    else
    {
      v33 = 12;
    }

    v34 = (intValue3 / v33);
    v35 = (intValue4 / v33);
    v36 = (intValue / v33);
    v37 = (intValue2 / v33);
    v38 = v36 * 0.975 * 0.03125;
    if (v38 < 2.0)
    {
      v38 = 2.0;
    }

    v39 = v37 * 0.975 * 0.03125;
    if (v39 < 2.0)
    {
      v39 = 2.0;
    }

    v40 = v39;
    v41 = (32 * v38 + 32) & 0x1FFFC0;
    v42 = v34 + floor((v36 - v41) * 0.25) * 2.0;
    if (v42 < 0.0)
    {
      v42 = 0.0;
    }

    v43 = v33;
    input->tileStatsRegion.x = (v42 * v33);
    v44 = ((32 * v40 + 32) & 0x1FFFC0);
    v45 = v35 + floor((v37 - v44) * 0.25) * 2.0;
    if (v45 < 0.0)
    {
      v45 = 0.0;
    }

    input->tileStatsRegion.y = (v45 * v43);
    v46 = v34 + v36;
    if (v46 > v41)
    {
      v46 = v41;
    }

    input->tileStatsRegion.width = (v46 * v43);
    v47 = v35 + v37;
    if (v35 + v37 > v44)
    {
      v47 = ((32 * v40 + 32) & 0x1FFFC0);
    }

    input->tileStatsRegion.height = (v47 * v43);

    rectCopy = v52;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v49, v50, rectCopy, v53, *&v56.origin.x, LODWORD(v56.origin.y));
  }

  return regionCopy != 0;
}

- (float)extractHRGainDownRatioFrom:(id)from
{
  fromCopy = from;
  v5 = 1.0;
  if ([fromCopy cmi_BOOLValueForKey:*MEMORY[0x1E6991038] defaultValue:0 found:0])
  {
    v6 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E6991040]];
    v7 = v6;
    if (v6)
    {
      v5 = vcvts_n_f32_u32([v6 unsignedShortValue], 0xCuLL);
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v10[0], v10[1], v11, v12, v13, v14);
      v16 = 0;
      v15 = 0;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v5;
}

+ (BOOL)extractCCMFromMetadata:(id)metadata toDriverInput:(sRefDriverInputs_SOFTISP *)input
{
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F98]];
  v8 = v7;
  if (v7 && (v9 = [v7 bytes], v10 = objc_msgSend(v8, "length"), v9) && v10 == 36)
  {
    for (i = 0; i != 9; ++i)
    {
      input->ccm.coeff[i].v16 = vcvts_n_s32_f32(*(v9 + 4 * i), 0xCuLL);
    }

    v12 = 1;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v19, v20, v21, v22, v23, v24);
    v13 = 0;
    v14 = xmmword_1C932FAF0;
    v15 = &input->ccm.coeff[1];
    v16 = vdupq_n_s64(9uLL);
    v17 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v16, v14)).u8[0])
      {
        v15[-1].v16 = (v13 / 3u == v13 % 3u) << 12;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v14)).i32[1])
      {
        v15->v16 = ((v13 | 1u) / 3 == (v13 | 1u) % 3) << 12;
      }

      v13 += 2;
      v14 = vaddq_s64(v14, v17);
      v15 += 2;
    }

    while (v13 != 10);
    v12 = 0;
  }

  return v12;
}

@end