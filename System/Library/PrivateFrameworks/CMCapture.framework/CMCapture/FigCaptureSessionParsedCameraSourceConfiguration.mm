@interface FigCaptureSessionParsedCameraSourceConfiguration
- (id)initWithConnectionConfigurations:(unsigned int)configurations clientSetsUserInitiatedCaptureRequestTime:(unsigned int)time smartStyleEnabled:(char *)enabled sceneClassifierConnectionConfigurationOut:;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedCameraSourceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedCameraSourceConfiguration;
  [(FigCaptureSessionParsedCameraSourceConfiguration *)&v3 dealloc];
}

- (id)initWithConnectionConfigurations:(unsigned int)configurations clientSetsUserInitiatedCaptureRequestTime:(unsigned int)time smartStyleEnabled:(char *)enabled sceneClassifierConnectionConfigurationOut:
{
  if (!self)
  {
    return 0;
  }

  v122.receiver = self;
  v122.super_class = FigCaptureSessionParsedCameraSourceConfiguration;
  v10 = objc_msgSendSuper2(&v122, sel_init);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  enabledCopy = enabled;
  v106 = v5;
  v107 = __PAIR64__(time, configurations);
  v121 = 0;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  array7 = [MEMORY[0x1E695DF70] array];
  array8 = [MEMORY[0x1E695DF70] array];
  *(v11 + 1) = [objc_msgSend(a2 "firstObject")];
  memset(v120, 0, sizeof(v120));
  obj = a2;
  v16 = [a2 countByEnumeratingWithState:v120 objects:v119 count:16];
  v110 = array8;
  if (v16)
  {
    v17 = v16;
LABEL_5:
    v18 = 0;
    while (2)
    {
      OUTLINED_FUNCTION_6_30();
      if (!v24)
      {
        objc_enumerationMutation(a2);
      }

      v19 = *(*(&v120[0] + 1) + 8 * v18);
      switch([objc_msgSend(v19 "sinkConfiguration")])
      {
        case 1u:
          underlyingDeviceType = [v19 underlyingDeviceType];
          if (underlyingDeviceType == [objc_msgSend(v19 "sourceConfiguration")])
          {
            if (*(v11 + 3))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v100, v101, v102, enabledCopy, v106, v107, array6, array4);
            }

            *(v11 + 3) = v19;
          }

          goto LABEL_49;
        case 3u:
          *(v11 + 7) = v19;
          goto LABEL_58;
        case 4u:
          [v19 mediaType];
          OUTLINED_FUNCTION_18_11();
          if (v24)
          {
            goto LABEL_56;
          }

          if ([v19 mediaType] != 1835365473 || !FigMetadataItemConnectionConfigurationRequiresObjectDetection(v19))
          {
            goto LABEL_58;
          }

          [array2 addObject:v19];
          v22 = array6;
          goto LABEL_57;
        case 6u:
          [array3 addObject:v19];
          v21 = [v19 videoStabilizationMethod] && objc_msgSend(v19, "videoStabilizationMethod") != 4 && objc_msgSend(v19, "videoStabilizationMethod") != 6;
          if ([objc_msgSend(v19 "videoDataSinkConfiguration")] && !v21)
          {
            goto LABEL_49;
          }

          goto LABEL_56;
        case 8u:
          v22 = array5;
          goto LABEL_57;
        case 0xAu:
          [v19 mediaType];
          OUTLINED_FUNCTION_18_11();
          if (v24)
          {
            *(v11 + 7) = v19;
            goto LABEL_54;
          }

          mediaType = [v19 mediaType];
          if (mediaType == 1835365473)
          {
            if (!FigMetadataItemConnectionConfigurationRequiresObjectDetection(v19))
            {
              goto LABEL_54;
            }

            v30 = array6;
          }

          else
          {
            [v19 mediaType];
            OUTLINED_FUNCTION_17_10();
            if (!v24)
            {
              goto LABEL_54;
            }

            v30 = array7;
          }

          [v30 addObject:v19];
LABEL_54:
          if ([objc_msgSend(v19 "irisSinkConfiguration")] && objc_msgSend(objc_msgSend(v19, "sourceConfiguration"), "sourceDeviceType") != 10)
          {
LABEL_56:
            v22 = array2;
LABEL_57:
            [v22 addObject:v19];
          }

LABEL_58:
          if (v17 != ++v18)
          {
            continue;
          }

          v17 = [a2 countByEnumeratingWithState:v120 objects:v119 count:16];
          if (!v17)
          {
            goto LABEL_60;
          }

          goto LABEL_5;
        case 0xBu:
          [v19 mediaType];
          OUTLINED_FUNCTION_17_10();
          if (v24)
          {
            goto LABEL_42;
          }

          *(v11 + 8) = v19;
          goto LABEL_58;
        case 0xCu:
LABEL_49:
          v22 = array;
          goto LABEL_57;
        case 0xDu:
          underlyingDeviceType2 = [v19 underlyingDeviceType];
          v24 = underlyingDeviceType2 > 9 || ((1 << underlyingDeviceType2) & 0x310) == 0;
          if (!v24)
          {
            goto LABEL_136;
          }

          v25 = underlyingDeviceType2;
          v26 = [objc_msgSend(v19 "sourceConfiguration")];
          v27 = v26 > 9 || ((1 << v26) & 0x310) == 0;
          if (!v27 && v25 != 2)
          {
            goto LABEL_136;
          }

          [array4 addObject:v19];
          [array2 addObject:v19];
          array8 = v110;
          goto LABEL_58;
        case 0xFu:
LABEL_42:
          v22 = array7;
          goto LABEL_57;
        case 0x10u:
          [array8 addObject:v19];
          goto LABEL_56;
        default:
          goto LABEL_58;
      }
    }
  }

LABEL_60:
  if ([*(v11 + 1) spatialOverCaptureEnabled] && !objc_msgSend(objc_msgSend(*(v11 + 3), "videoPreviewSinkConfiguration"), "primaryCaptureRectModificationEnabled"))
  {
LABEL_136:

    return 0;
  }

  v31 = *(v11 + 1);
  v123[0] = 0;
  IntAttribute = FigCaptureSourceGetIntAttribute([v31 source], @"DeviceType", v123);
  v33 = off_1E7989000;
  if ((IntAttribute > 0x14 || ((1 << IntAttribute) & 0x100420) == 0) && IntAttribute - 21 <= 0xFFFFFFFB && [v31 smartCameraEnabled])
  {
    v43 = objc_alloc_init(FigVideoCaptureConnectionConfiguration);
    [(FigCaptureConnectionConfiguration *)v43 setSourceConfiguration:v31];
    [v31 sourceDeviceType];
    [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
    v44 = [[FigCaptureInternalSinkConfiguration alloc] initWithSinkSubType:1];
    [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
    FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(v43);
    lensSmudgeDetectionEnabled = [v31 lensSmudgeDetectionEnabled];
    v46 = 0;
    v47 = 0;
    v48 = lensSmudgeDetectionEnabled ? 512 : 256;
    v49 = lensSmudgeDetectionEnabled ? 2 : 4;
    do
    {
      v50 = v47 < v48 || v46 < v48;
      if (!v50)
      {
        break;
      }

      v47 = ((2 * v49 * vcvtps_s32_f32([(FigVideoCaptureConnectionConfiguration *)v43 outputWidth]/ (2 * v49))) / v49);
      v46 = ((2 * v49 * vcvtps_s32_f32([(FigVideoCaptureConnectionConfiguration *)v43 outputHeight]/ (2 * v49))) / v49);
      v50 = v49 > 3;
      v49 = v49 >> 1;
    }

    while (v50);
    if (v47 < v48 || v46 < v48)
    {
      v123[0] = -12782;
    }

    else
    {
      [(FigVideoCaptureConnectionConfiguration *)v43 setOutputWidth:v47];
      [(FigVideoCaptureConnectionConfiguration *)v43 setOutputHeight:v46];
    }

    v33 = off_1E7989000;
    if (v43)
    {
      if (!v123[0])
      {
        *enabledCopy = v43;
        v52 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array5, [(FigCaptureConnectionConfiguration *)v43 underlyingDeviceType]);
        if ((FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v52) & 1) == 0)
        {
          OUTLINED_FUNCTION_37_6();
        }
      }
    }
  }

  v34 = *(v11 + 1);
  [*(v11 + 7) irisSinkConfiguration];
  stillImageSinkConfiguration = [*(v11 + 7) stillImageSinkConfiguration];
  v123[0] = 0;
  v36 = FigCaptureSourceGetIntAttribute([v34 source], 0x1F21A0530, v123);
  v37 = v123[0];
  if (v123[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
    LODWORD(v100) = v37;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v100, v101, v102, enabledCopy, v106, v107, array6, array4);
  }

  else
  {
    if (v36 > 2)
    {
      v121 = 0;
      v40 = off_1E7989000;
      goto LABEL_98;
    }

    if (([v34 smartCameraEnabled] & 1) != 0 || (v38 = OUTLINED_FUNCTION_9_19(), FigCaptureZeroShutterLagEnabled(v38, v39, stillImageSinkConfiguration, v107)))
    {
      v40 = off_1E7989000;
      v41 = objc_alloc_init(FigVideoCaptureConnectionConfiguration);
      [(FigCaptureConnectionConfiguration *)v41 setSourceConfiguration:v34];
      [v34 sourceDeviceType];
      [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
      v42 = [objc_alloc(v33[254]) initWithSinkSubType:0];
      [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
      FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(v41);
      goto LABEL_95;
    }
  }

  v41 = 0;
  v40 = off_1E7989000;
LABEL_95:
  v53 = v123[0];
  if (v123[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
    LODWORD(v100) = v53;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v98, "<<<< FigCaptureSessionParsedConfiguration >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureSessionParsedConfiguration.m", 234, v100);
    goto LABEL_136;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_37_6();
  }

LABEL_98:
  v54 = *(v11 + 1);
  irisSinkConfiguration = [*(v11 + 7) irisSinkConfiguration];
  stillImageSinkConfiguration2 = [*(v11 + 7) stillImageSinkConfiguration];
  if (([v54 cinematicFramingEnabled] & 1) == 0)
  {
    manualCinematicFramingEnabled = [v54 manualCinematicFramingEnabled];
    if (irisSinkConfiguration | stillImageSinkConfiguration2)
    {
      if (HIDWORD(v107))
      {
        if ((manualCinematicFramingEnabled & 1) == 0)
        {
          v58 = objc_alloc_init(v40[315]);
          [v58 setSourceConfiguration:v54];
          [v54 sourceDeviceType];
          [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
          v59 = [objc_alloc(v33[254]) initWithSinkSubType:3];
          [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
          FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(v58);
          if (v58)
          {
            OUTLINED_FUNCTION_37_6();
          }
        }
      }
    }
  }

  v60 = *(v11 + 1);
  v121 = 0;
  sensitiveContentAnalyzer = [v60 sensitiveContentAnalyzer];
  v103 = v11;
  if (!sensitiveContentAnalyzer)
  {
    v65 = v121;
    if (!v121)
    {
      goto LABEL_109;
    }

    goto LABEL_164;
  }

  v63 = objc_alloc_init(v40[315]);
  [v63 setSourceConfiguration:v60];
  [v60 sourceDeviceType];
  [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
  v64 = [objc_alloc(v33[254]) initWithSinkSubType:4];
  [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
  [objc_msgSend(v63 "sinkConfiguration")];
  [v60 sensitiveContentAnalyzerEnabled];
  sensitiveContentAnalyzer = [OUTLINED_FUNCTION_7() setEnabled:?];
  v65 = v121;
  if (v121)
  {
LABEL_164:
    emitter = fig_log_get_emitter();
    LODWORD(v100) = v65;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< FigCaptureSessionParsedConfiguration >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureSessionParsedConfiguration.m", 249, v100);
    goto LABEL_136;
  }

  if (v63)
  {
    sensitiveContentAnalyzer = OUTLINED_FUNCTION_37_6();
  }

LABEL_109:
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v66 = array5;
  v67 = OUTLINED_FUNCTION_1_0(sensitiveContentAnalyzer, v62, &v115, v114);
  if (v67)
  {
    v68 = v67;
    v69 = *v116;
    while (2)
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v116 != v69)
        {
          objc_enumerationMutation(array5);
        }

        v71 = *(*(&v115 + 1) + 8 * i);
        underlyingDeviceType3 = [v71 underlyingDeviceType];
        v73 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array, underlyingDeviceType3);
        if ((FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v71) & 1) != 0 || FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v71))
        {
          if (v73)
          {
            v74 = array;
          }

          else
          {
            v74 = array2;
          }

          [v74 addObject:v71];
        }

        v75 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array3, underlyingDeviceType3);
        if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v71))
        {
          BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v71 "sourceConfiguration")], 0x1F219FFF0, &v121);
        }

        else
        {
          BoolAttribute = 1;
        }

        v78 = v121;
        if (v121)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_5_36();
          LODWORD(v100) = v78;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v100, v101, v103, enabledCopy, v106, v107, array6, array4);
          v11 = v104;
          goto LABEL_136;
        }

        if (v75)
        {
          v79 = 1;
        }

        else
        {
          v79 = BoolAttribute;
        }

        if ((v79 & 1) == 0)
        {
          BoolAttribute = [array2 addObject:v71];
        }
      }

      v66 = array5;
      v68 = OUTLINED_FUNCTION_1_0(BoolAttribute, v76, &v115, v114);
      if (v68)
      {
        continue;
      }

      break;
    }
  }

  v80 = v103;
  v81 = *(v103 + 8);
  if (!v81)
  {
    goto LABEL_143;
  }

  underlyingDeviceType4 = [v81 underlyingDeviceType];
  v83 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(v66, underlyingDeviceType4);
  if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v83))
  {
    goto LABEL_143;
  }

  if ([objc_msgSend(*(v103 + 8) "sourceConfiguration")] == 13)
  {
    v84 = *(v103 + 8);
  }

  else
  {
    v85 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array, underlyingDeviceType4);
    v86 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array2, underlyingDeviceType4);
    v84 = *(v103 + 8);
    if (v85 || !v86)
    {
      v87 = array;
      goto LABEL_142;
    }
  }

  v87 = array2;
LABEL_142:
  [v87 addObject:v84];
LABEL_143:
  v88 = [obj count];
  if (v88)
  {
    v88 = [obj copy];
  }

  *(v103 + 2) = v88;
  v89 = [array count];
  if (v89)
  {
    v89 = [array copy];
  }

  *(v103 + 4) = v89;
  v90 = [array2 count];
  if (v90)
  {
    v90 = [array2 copy];
  }

  *(v103 + 5) = v90;
  v91 = [array3 count];
  if (v91)
  {
    v91 = [array3 copy];
  }

  *(v103 + 6) = v91;
  v92 = [array4 count];
  if (v92)
  {
    v92 = [array4 copy];
  }

  *(v103 + 9) = v92;
  v93 = [v66 count];
  if (v93)
  {
    v93 = [v66 copy];
  }

  *(v103 + 10) = v93;
  v94 = [array6 count];
  if (v94)
  {
    v94 = [array6 copy];
  }

  *(v103 + 11) = v94;
  v95 = [array7 count];
  if (v95)
  {
    v95 = [array7 copy];
  }

  *(v103 + 12) = v95;
  v96 = [v110 count];
  if (v96)
  {
    v96 = [v110 copy];
  }

  *(v103 + 13) = v96;
  return v80;
}

@end