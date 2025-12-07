@interface BWMovieLevelMetadataForProResRaw
- (BWMovieLevelMetadataForProResRaw)init;
- (id)description;
- (id)proResRawAugmentedMovieLevelMetadataWithMovieLevelMetadata:(id)metadata;
- (void)dealloc;
- (void)releaseRetainedProperties;
- (void)reset;
- (void)updateMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)buffer withCameraInfo:(id)info;
@end

@implementation BWMovieLevelMetadataForProResRaw

- (BWMovieLevelMetadataForProResRaw)init
{
  v5.receiver = self;
  v5.super_class = BWMovieLevelMetadataForProResRaw;
  v2 = [(BWMovieLevelMetadataForProResRaw *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWMovieLevelMetadataForProResRaw *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  self->_isMetadataValid = 0;
  [(BWMovieLevelMetadataForProResRaw *)&self->super.isa releaseRetainedProperties];
  self->_isoSpeedRating = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_shutterSpeedAngle = _Q0;
  self->_whiteBalanceCCT = -1;
  self->_currentFrameRate = -1.0;
}

- (void)releaseRetainedProperties
{
  if (self)
  {

    self[2] = 0;
    self[3] = 0;

    self[4] = 0;
    self[5] = 0;

    self[7] = 0;
    self[6] = 0;

    self[12] = 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@: [%p] \nisoSpeedRating: %d \ncameraManufacturer: %@ \ncameraModelName: %@ \ncolorTranslationMatrices: %@ \nwhiteBalanceFactors: %@ \nshutterSpeedAngle: %f \nexposureTime: %f \nwhiteBalanceCCT: %d\n lscGains %@\n cctAndTintColorMatrices: %@\n", NSStringFromClass(v4), self, self->_isoSpeedRating, self->_cameraManufacturer, self->_cameraModelName, self->_colorTranslationMatrices, self->_whiteBalanceFactors, *&self->_shutterSpeedAngle, *&self->_exposureTime, self->_whiteBalanceCCT, self->_lscGains, self->_cctAndTintColorMatrices];
}

- (id)proResRawAugmentedMovieLevelMetadataWithMovieLevelMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_isMetadataValid)
  {
    v5 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithISOSpeedRating(metadata, self->_isoSpeedRating);
    v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithCameraManufacturer(v5, self->_cameraManufacturer, self->_cameraModelName);
    colorTranslationMatrices = self->_colorTranslationMatrices;
    if (colorTranslationMatrices)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithColorTranslationMatrices(v6, colorTranslationMatrices);
    }

    whiteBalanceFactors = self->_whiteBalanceFactors;
    if (whiteBalanceFactors)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithWhiteBalanceFactors(v6, whiteBalanceFactors);
    }

    lscGains = self->_lscGains;
    if (lscGains)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithLSCGains(v6, lscGains);
    }

    shutterSpeedAngle = self->_shutterSpeedAngle;
    if (shutterSpeedAngle != -1.0)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithShutterSpeedAngle(v6, shutterSpeedAngle);
    }

    v11 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithExposureTime(v6, self->_exposureTime);
    v12 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithWhiteBalanceCCT(v11, self->_whiteBalanceCCT);
    metadataCopy = v12;
    cctAndTintColorMatrices = self->_cctAndTintColorMatrices;
    if (cctAndTintColorMatrices)
    {
      metadataCopy = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithColorCorrectionTemperatureAndTintColorCorrectionMatrices(v12, cctAndTintColorMatrices);
    }

    if (self->_currentFrameRate > 60.0)
    {
      if (![metadataCopy count])
      {
        goto LABEL_27;
      }

      v14 = 0;
      v15 = *MEMORY[0x1E6971F88];
      v16 = *MEMORY[0x1E6971ED8];
      while (([objc_msgSend(objc_msgSend(metadataCopy objectAtIndexedSubscript:{v14), "objectForKeyedSubscript:", v15), "isEqual:", v16}] & 1) == 0)
      {
        if (++v14 >= [metadataCopy count])
        {
          goto LABEL_27;
        }
      }

      v17 = [metadataCopy objectAtIndexedSubscript:v14];
      if (v17 && (v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E6971F90]], v27 = 0u, v28 = 0u, v29 = 0u, v30 = 0u, (v19 = objc_msgSend(v18, "countByEnumeratingWithState:objects:count:", &v27, v26, 16)) != 0))
      {
        v20 = v19;
        v21 = *v28;
        v22 = *MEMORY[0x1E6971F40];
LABEL_21:
        v23 = 0;
        while (1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v27 + 1) + 8 * v23) objectForKeyedSubscript:v22];
          if (objc_msgSend_isEqualToString_(@"com.apple.quicktime.full-frame-rate-playback-intent"))
          {
            break;
          }

          if (v20 == ++v23)
          {
            v20 = [v18 countByEnumeratingWithState:&v27 objects:v26 count:16];
            if (v20)
            {
              goto LABEL_21;
            }

            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        metadataCopy = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithFullFrameRatePlaybackIntent(metadataCopy, 1);
      }
    }

    stabilizationInfo = self->_stabilizationInfo;
    if (stabilizationInfo)
    {
      return FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithStabilizationInfo(metadataCopy, stabilizationInfo);
    }
  }

  return metadataCopy;
}

- (void)updateMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)buffer withCameraInfo:(id)info
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v7 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v169 = 0;
  v170 = 0;
  FigCaptureMetadataGetManufacturerAndMarketingName(buffer, 0, &v170, &v169);
  self->_cameraManufacturer = v170;
  self->_cameraModelName = v169;
  self->_isoSpeedRating = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B3B0), "intValue"}];
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    v10 = ImageBuffer;
    v11 = CVBufferCopyAttachment(ImageBuffer, *MEMORY[0x1E69661D8], 0);
    if (v11)
    {
      v11 = CFAutorelease(v11);
    }

    [v11 floatValue];
    v13 = v12;
    v14 = CVBufferCopyAttachment(v10, *MEMORY[0x1E69661C8], 0);
    if (v14)
    {
      v14 = CFAutorelease(v14);
    }
  }

  else
  {
    [objc_msgSend(v8 objectForKeyedSubscript:{@"ProResRawWhiteBalanceRedFactor", "floatValue"}];
    v13 = v15;
    v14 = [v8 objectForKeyedSubscript:@"ProResRawWhiteBalanceBlueFactor"];
  }

  [v14 floatValue];
  v17 = v16;
  v18 = [info objectForKeyedSubscript:*off_1E7989E48];
  v156 = *off_1E7989F30;
  v19 = [info objectForKeyedSubscript:?];
  v20 = [v19 count];
  v21 = 0;
  selfCopy = self;
  if (v17 > 0.0 && v13 > 0.0 && v20 == 2)
  {
    v23 = [v18 objectForKeyedSubscript:*off_1E798AA60];
    v24 = *off_1E798AA50;
    [objc_msgSend(v23 objectForKeyedSubscript:{*off_1E798AA50), "doubleValue"}];
    v26 = v25;
    v27 = *off_1E798AA48;
    [objc_msgSend(v23 objectForKeyedSubscript:{*off_1E798AA48), "doubleValue"}];
    v29 = v28;
    v30 = [v18 objectForKeyedSubscript:*off_1E798AA58];
    [objc_msgSend(v30 objectForKeyedSubscript:{v24), "doubleValue"}];
    v32 = v31;
    v33 = [objc_msgSend(v30 objectForKeyedSubscript:{v27), "doubleValue"}];
    if (v26 <= 0.0 || v29 <= 0.0 || v32 <= 0.0 || (v35 = v34, v34 <= 0.0))
    {
      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:v33 withCameraInfo:?];
    }

    else
    {
      v36 = BWDNGColorCalibrations(v19, 1);
      if (v36)
      {
        v37 = v36;
        if ([v36 count] == 2)
        {
          v38 = [v37 objectAtIndexedSubscript:0];
          if ([v38 count] == 2)
          {
            v39 = [v37 objectAtIndexedSubscript:1];
            if ([v39 count] == 2)
            {
              v40 = [v39 objectAtIndexedSubscript:0];
              if ([v40 count] == 9)
              {
                v155 = v8;
                v41 = [v39 objectAtIndexedSubscript:1];
                if ([v41 count] == 9)
                {
                  v42 = [objc_msgSend(v38 objectAtIndexedSubscript:{0), "integerValue"}];
                  v43 = [objc_msgSend(v38 objectAtIndexedSubscript:{1), "integerValue"}];
                  if (v42 < v43)
                  {
                    infoCopy = info;
                    bufferCopy = buffer;
                    v44 = v13;
                    v45 = 1.0 / v26 / v13;
                    v46 = v17;
                    v47 = 1.0 / v29 / v17;
                    v161 = v46;
                    v162 = v44;
                    v48 = 1.0 / v32 / v44;
                    v49 = 1.0 / v35 / v46;
                    v50 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:24];
                    *&v176 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
                    *(&v176 + 1) = [MEMORY[0x1E696AD98] numberWithDouble:v47];
                    [v50 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v176, 2), &unk_1F2243EA0}];
                    *&size.width = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                    *&size.height = [MEMORY[0x1E696AD98] numberWithDouble:v49];
                    v164 = v50;
                    [v50 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &size, 2), &unk_1F2243EB8}];
                    v51 = 0;
                    v163 = v43;
                    v158 = 1.0 / v42 - 1.0 / v43;
                    v159 = 1.0 / v42;
                    v160 = v42;
                    do
                    {
                      v52 = prrmu_createWhiteBalanceFactorsFromCalibrations_wbFactorCCTs[v51];
                      if (v51 < 4 || v51 - 13 <= 8)
                      {
                        v53 = 0;
                        if (1000000.0 / v52 <= 600.0)
                        {
                          v54 = 1000000.0 / v52;
                        }

                        else
                        {
                          v54 = 600.0;
                        }

                        v55 = 30;
                        do
                        {
                          if (v54 >= kBWProResRawPlanckianLocus[6 * ((v55 + v53) >> 1)])
                          {
                            v53 = (v55 + v53) >> 1;
                          }

                          else
                          {
                            v55 = (v55 + v53) >> 1;
                          }
                        }

                        while (v55 - v53 > 1);
                        v56 = &kBWProResRawPlanckianLocus[6 * v53];
                        v58 = *v56;
                        v57 = v56[1];
                        v59 = &kBWProResRawPlanckianLocus[6 * v55];
                        v60 = v59[1];
                        v61 = v56[2];
                        v167 = *v59;
                        v168 = v59[2];
                        v62 = v56[4];
                        v63 = v56[5];
                        v165 = v59[4];
                        v166 = v59[5];
                        array = [MEMORY[0x1E695DF70] array];
                        v65 = v40;
                        if (v52 > v42)
                        {
                          v65 = v41;
                          if (v52 < v163)
                          {
                            v66 = array;
                            for (i = 0; i != 9; ++i)
                            {
                              v68 = MEMORY[0x1E696AD98];
                              [objc_msgSend(v40 objectAtIndexedSubscript:{i), "doubleValue"}];
                              v70 = v69;
                              [objc_msgSend(v41 objectAtIndexedSubscript:{i), "doubleValue"}];
                              [v66 setObject:objc_msgSend(v68 atIndexedSubscript:{"numberWithDouble:", v70 + (v159 + -1.0 / v52) / v158 * (v71 - v70)), i}];
                            }

                            v65 = v66;
                            v42 = v160;
                          }
                        }

                        v72 = (v54 - v58) / (v167 - v58);
                        v73 = v57 + v72 * (v60 - v57);
                        v74 = v61 + v72 * (v168 - v61);
                        v75 = v62 + v72 * (v165 - v62);
                        v76 = v63 + v72 * (v166 - v63);
                        v77 = sqrt(v76 * v76 + v75 * v75);
                        v78 = v73 + v75 / v77 * 0.0;
                        v79 = v74 + v76 / v77 * 0.0;
                        v80 = v78 + v79 * -4.0 + 2.0;
                        v81 = v78 * 1.5 / v80;
                        v82 = v79 / v80;
                        v83 = v81 / v82;
                        v84 = (1.0 - (v81 + v82)) / v82;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{0), "doubleValue"}];
                        v86 = v85;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{1), "doubleValue"}];
                        v88 = v87 + v86 * v83;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{2), "doubleValue"}];
                        v90 = v88 + v89 * v84;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{3), "doubleValue"}];
                        v92 = v91;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{4), "doubleValue"}];
                        v94 = v93;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{5), "doubleValue"}];
                        v96 = v95;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{6), "doubleValue"}];
                        v98 = v97;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{7), "doubleValue"}];
                        v100 = v99;
                        [objc_msgSend(v65 objectAtIndexedSubscript:{8), "doubleValue"}];
                        if (v90 > 0.0)
                        {
                          v102 = v94 + v92 * v83 + v96 * v84;
                          if (v102 > 0.0)
                          {
                            v103 = v100 + v98 * v83 + v101 * v84;
                            if (v103 > 0.0)
                            {
                              v104 = v102 / v103 / v161;
                              v175[0] = [MEMORY[0x1E696AD98] numberWithDouble:v102 / v90 / v162];
                              v175[1] = [MEMORY[0x1E696AD98] numberWithDouble:v104];
                              v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:2];
                              [v164 setObject:v105 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v52)}];
                            }
                          }
                        }
                      }

                      ++v51;
                    }

                    while (v51 != 22);
                    v106 = [objc_msgSend(v164 "allKeys")];
                    v107 = [v106 count];
                    v108 = v107;
                    if (v107 < 3uLL)
                    {
                      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
                      v21 = 0;
                      buffer = bufferCopy;
                      v8 = v155;
                    }

                    else
                    {
                      v109 = v107;
                      v21 = objc_alloc_init(MEMORY[0x1E695DF88]);
                      v174 = bswap32(v109) >> 16;
                      [(NSData *)v21 appendBytes:&v174 length:2];
                      v173 = 256;
                      [(NSData *)v21 appendBytes:&v173 length:2];
                      v110 = 0;
                      buffer = bufferCopy;
                      v8 = v155;
                      do
                      {
                        v111 = [v106 objectAtIndexedSubscript:v110];
                        unsignedIntValue = [v111 unsignedIntValue];
                        v113 = [v164 objectForKeyedSubscript:v111];
                        [objc_msgSend(v113 objectAtIndexedSubscript:{0), "floatValue"}];
                        v115 = v114;
                        [objc_msgSend(v113 objectAtIndexedSubscript:{1), "floatValue"}];
                        v117 = v116;
                        v179[0] = bswap32(unsignedIntValue);
                        [(NSData *)v21 appendBytes:v179 length:4];
                        v172 = bswap32(v115);
                        [(NSData *)v21 appendBytes:&v172 length:4];
                        v171 = bswap32(v117);
                        [(NSData *)v21 appendBytes:&v171 length:4];
                        ++v110;
                      }

                      while (v108 != v110);
                    }

                    info = infoCopy;
                    goto LABEL_50;
                  }
                }

                else
                {
                  [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
                }

                v21 = 0;
                v8 = v155;
                goto LABEL_50;
              }

              [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
            }

            else
            {
              [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
            }
          }

          else
          {
            [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
          }
        }

        else
        {
          [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
        }
      }

      else
      {
        [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
      }
    }

    v21 = 0;
  }

LABEL_50:
  self->_whiteBalanceFactors = v21;
  v118 = v156;
  v119 = [info objectForKeyedSubscript:v156];
  if ([v119 count] == 2 && (v120 = getColorTranslationMatrixFromCalibration(v119, 0, 2800)) != 0)
  {
    v150 = v120;
    ColorTranslationMatrixFromCalibration = getColorTranslationMatrixFromCalibration(v119, 1u, 6500);
    if (ColorTranslationMatrixFromCalibration)
    {
      v152 = ColorTranslationMatrixFromCalibration;
      v121 = objc_alloc_init(MEMORY[0x1E695DF88]);
      LOWORD(v176) = 1024;
      [(NSData *)v121 appendBytes:&v176 length:2];
      LOWORD(size.width) = 256;
      [(NSData *)v121 appendBytes:&size length:2];
      writeMatrixArrayRefDataEntry(0x7D0u, v150, v121);
      writeMatrixArrayRefDataEntry(0xAF0u, v150, v121);
      writeMatrixArrayRefDataEntry(0x1964u, v152, v121);
      writeMatrixArrayRefDataEntry(0x3A98u, v152, v121);
    }

    else
    {
      v121 = 0;
    }

    v118 = v156;
  }

  else
  {
    v121 = 0;
  }

  self->_colorTranslationMatrices = v121;
  v122 = [info objectForKeyedSubscript:v118];
  if ([v122 count] == 2)
  {
    v123 = BWDNGColorCalibrations(v122, 1);
    if (v123)
    {
      v124 = v123;
      if ([v123 count] == 2)
      {
        v125 = [v124 objectAtIndexedSubscript:0];
        if ([v125 count] == 2)
        {
          v126 = [v124 objectAtIndexedSubscript:1];
          if ([v126 count] == 2)
          {
            v127 = [v126 objectAtIndexedSubscript:0];
            if ([v127 count] == 9)
            {
              v128 = [v126 objectAtIndexedSubscript:1];
              if ([v128 count] == 9)
              {
                v129 = [objc_msgSend(v125 objectAtIndexedSubscript:{0), "integerValue"}];
                v130 = [objc_msgSend(v125 objectAtIndexedSubscript:{1), "integerValue"}];
                v131 = v130;
                if (v129 < v130)
                {
                  v132 = v8;
                  bufferCopy2 = buffer;
                  infoCopy2 = info;
                  if (v129 <= 0x7D0)
                  {
                    v135 = 2;
                  }

                  else
                  {
                    v135 = 3;
                  }

                  v136 = v130 >> 3;
                  if (v130 >> 3 >= 0x753)
                  {
                    v137 = v135;
                  }

                  else
                  {
                    v137 = v135 + 1;
                  }

                  v138 = objc_alloc_init(MEMORY[0x1E695DF88]);
                  LOWORD(v176) = v137 << 8;
                  [(NSData *)v138 appendBytes:&v176 length:2];
                  LOWORD(size.width) = 256;
                  [(NSData *)v138 appendBytes:&size length:2];
                  if (v129 >= 0x7D1)
                  {
                    writeMatrixArrayRefDataEntry(0x7D0u, v127, v138);
                  }

                  writeMatrixArrayRefDataEntry(v129, v127, v138);
                  writeMatrixArrayRefDataEntry(v131, v128, v138);
                  if (v136 <= 0x752)
                  {
                    writeMatrixArrayRefDataEntry(0x3A98u, v128, v138);
                  }

                  info = infoCopy2;
                  buffer = bufferCopy2;
                  v8 = v132;
                  self = selfCopy;
                  goto LABEL_72;
                }
              }

              else
              {
                [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
              }
            }

            else
            {
              [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
            }
          }

          else
          {
            [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
          }
        }

        else
        {
          [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
        }
      }

      else
      {
        [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
      }
    }

    else
    {
      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
    }
  }

  v138 = 0;
LABEL_72:
  self->_cctAndTintColorMatrices = v138;
  v175[0] = 0;
  isEqualToString = objc_msgSend_isEqualToString_([v8 objectForKeyedSubscript:*off_1E798B540]);
  v140 = [info objectForKeyedSubscript:*off_1E7989EE0];
  if (isEqualToString)
  {
    CMILSCOISAdaptation_extrapolateV2LSCTable();
    v140 = v175[0];
  }

  else
  {
    v175[0] = v140;
  }

  self->_lscGains = [v140 copy];
  [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v142 = v141;
  [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B210), "doubleValue"}];
  self->_currentFrameRate = v143;
  if (v143 > 0.0)
  {
    self->_shutterSpeedAngle = v142 / (1.0 / v143) * 360.0;
  }

  self->_exposureTime = v142;
  self->_whiteBalanceCCT = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B1D0), "intValue"}];
  v144 = [CMGetAttachment(buffer @"VideoStabilizationMethod"];
  if (v144)
  {
    v145 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v146 = v145;
    if (v145)
    {
      LOBYTE(v172) = 1;
      [(NSData *)v145 appendBytes:&v172 length:1];
      v179[0] = bswap32(v144);
      [(NSData *)v146 appendBytes:v179 length:4];
      v147 = CMGetAttachment(buffer, @"VideoStabilizationGeneratedTransformsOutputDimensionsOverride", 0);
      size = *MEMORY[0x1E695F060];
      CGSizeMakeWithDictionaryRepresentation(v147, &size);
      v148 = *(MEMORY[0x1E695F058] + 16);
      v176 = *MEMORY[0x1E695F058];
      v177 = v148;
      FigCFDictionaryGetCGRectIfPresent();
      v149 = ((*(&v177 + 1) - size.height) * 0.5);
      v179[0] = bswap32(((*&v177 - size.width) * 0.5));
      [(NSData *)v146 appendBytes:v179 length:4];
      v179[0] = bswap32(v149);
      [(NSData *)v146 appendBytes:v179 length:4];
      v179[0] = bswap32(size.width);
      [(NSData *)v146 appendBytes:v179 length:4];
      v179[0] = bswap32(size.height);
      [(NSData *)v146 appendBytes:v179 length:4];
    }

    else
    {
      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
    }
  }

  else
  {
    v146 = 0;
  }

  self->_stabilizationInfo = v146;
  self->_isMetadataValid = 1;
}

- (void)dealloc
{
  [(BWMovieLevelMetadataForProResRaw *)&self->super.isa releaseRetainedProperties];
  v3.receiver = self;
  v3.super_class = BWMovieLevelMetadataForProResRaw;
  [(BWMovieLevelMetadataForProResRaw *)&v3 dealloc];
}

@end