@interface FigCaptureSessionParsedConfiguration
- (FigCaptureSessionParsedConfiguration)initWithSessionConfiguration:(id)configuration clientSetsUserInitiatedCaptureRequestTime:(BOOL)time restrictions:(id)restrictions;
- (uint64_t)_parseConfiguration:(uint64_t)configuration clientSetsUserInitiatedCaptureRequestTime:(uint64_t)time restrictions:;
- (unsigned)_computeVideoStabilizationTypes;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedConfiguration;
  [(FigCaptureSessionParsedConfiguration *)&v3 dealloc];
}

- (unsigned)_computeVideoStabilizationTypes
{
  v58 = result;
  if (result)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    OUTLINED_FUNCTION_29_2();
    obj = v1;
    result = [v1 countByEnumeratingWithState:? objects:? count:?];
    v54 = result;
    if (result)
    {
      v53 = *v70;
      do
      {
        v2 = 0;
        do
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v3 = *(*(&v69 + 1) + 8 * v2);
          if ([objc_msgSend(v3 "stillImageConnectionConfiguration")])
          {
            [objc_msgSend(v3 "stillImageConnectionConfiguration")];
          }

          v55 = v2;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v4 = *(v58 + 17);
          OUTLINED_FUNCTION_28_4();
          v9 = OUTLINED_FUNCTION_1_0(v5, v6, v7, v8);
          if (v9)
          {
            v10 = v9;
            v11 = *v66;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v66 != v11)
                {
                  objc_enumerationMutation(v4);
                }

                if ([objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v65 + 1) + 8 * i) "videoConnectionConfigurations")])
                {
                  v17 = 1;
                  goto LABEL_19;
                }
              }

              OUTLINED_FUNCTION_28_4();
              v10 = OUTLINED_FUNCTION_1_0(v13, v14, v15, v16);
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v17 = 0;
LABEL_19:
          if ([objc_msgSend(v3 "cameraConfiguration")] == 2)
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v57 = v18;
          if ([*(v58 + 7) count] > 1 || objc_msgSend(objc_msgSend(v3, "cameraConfiguration"), "videoStabilizationStrength") > 2)
          {
            goto LABEL_28;
          }

          v19 = [objc_msgSend(v3 "cameraConfiguration")];
          if (v19 <= 9 && ((1 << v19) & 0x310) != 0)
          {
            if ([objc_msgSend(v3 "cameraConfiguration")] & 1) != 0 || (objc_msgSend(objc_msgSend(v3, "cameraConfiguration"), "depthDataDeliveryEnabled"))
            {
              goto LABEL_28;
            }

            v46 = [MEMORY[0x1E695DFA8] set];
            v47 = [objc_msgSend(v3 "previewDerivedConnectionConfigurations")];
            [v3 videoCaptureConnectionConfigurations];
            [OUTLINED_FUNCTION_36() addObjectsFromArray:?];
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v48 = OUTLINED_FUNCTION_33_8();
            if (v48)
            {
              v49 = v48;
              v50 = *v74;
LABEL_79:
              v51 = 0;
              while (1)
              {
                if (*v74 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                [v46 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(*(&v73 + 1) + 8 * v51), "underlyingDeviceType"))}];
                if ([v46 count] > 1)
                {
                  break;
                }

                if (v49 == ++v51)
                {
                  v49 = OUTLINED_FUNCTION_33_8();
                  if (v49)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_29;
                }
              }

LABEL_28:
              v57 = 1;
            }
          }

LABEL_29:
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          videoCaptureConnectionConfigurations = [v3 videoCaptureConnectionConfigurations];
          OUTLINED_FUNCTION_25_6();
          v22 = [v21 countByEnumeratingWithState:? objects:? count:?];
          if (!v22)
          {
            v40 = 0;
            v39 = 0;
LABEL_61:
            if (!v40)
            {
              goto LABEL_75;
            }

            goto LABEL_62;
          }

          v23 = v22;
          v56 = v3;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = *v62;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v62 != v27)
              {
                objc_enumerationMutation(videoCaptureConnectionConfigurations);
              }

              v29 = *(*(&v61 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = [objc_msgSend(v29 "sinkConfiguration")];
                if ((v30 | 2) == 6)
                {
                  v31 = v30;
                  if ([v29 videoStabilizationMethod])
                  {
                    v32 = v31 != 4 || v29 == 0;
                    if (v32 || ![objc_msgSend(v56 "videoPreviewSinkConnectionConfiguration")])
                    {
                      v33 = 0;
                    }

                    else
                    {
                      v33 = [objc_msgSend(v56 "videoPreviewSinkConnectionConfiguration")];
                    }

                    [v29 setVideoStabilizationType:{cspc_getVideoStabilizationType(v29, v58[18], v57, v33)}];
                  }

                  if ([v29 videoStabilizationType] == 1)
                  {
                    ++v26;
                  }

                  else
                  {
                    if ([v29 videoStabilizationType] - 3 < 2)
                    {
                      ++v25;
                    }

                    ++v24;
                  }
                }
              }
            }

            OUTLINED_FUNCTION_25_6();
            v23 = OUTLINED_FUNCTION_21_10(v34, v35, v36, v37);
          }

          while (v23);
          if (v26)
          {
            v38 = v24 == 0;
          }

          else
          {
            v38 = 1;
          }

          v39 = !v38;
          v40 = v25 > 1;
          v3 = v56;
          if ((v39 & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_62:
          memset(v60, 0, 64);
          videoCaptureConnectionConfigurations2 = [v3 videoCaptureConnectionConfigurations];
          v42 = [videoCaptureConnectionConfigurations2 countByEnumeratingWithState:v60 objects:v59 count:16];
          if (v42)
          {
            v43 = v42;
            do
            {
              for (k = 0; k != v43; ++k)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v32)
                {
                  objc_enumerationMutation(videoCaptureConnectionConfigurations2);
                }

                v45 = *(*(&v60[0] + 1) + 8 * k);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && (v39 && [v45 videoStabilizationType] == 1 || v40 && objc_msgSend(v45, "videoStabilizationType") - 3 <= 1))
                {
                  [v45 setVideoStabilizationType:2];
                }
              }

              v43 = [videoCaptureConnectionConfigurations2 countByEnumeratingWithState:v60 objects:v59 count:16];
            }

            while (v43);
          }

LABEL_75:
          v2 = v55 + 1;
        }

        while ((v55 + 1) != v54);
        OUTLINED_FUNCTION_29_2();
        result = [obj countByEnumeratingWithState:? objects:? count:?];
        v54 = result;
      }

      while (result);
    }
  }

  return result;
}

- (FigCaptureSessionParsedConfiguration)initWithSessionConfiguration:(id)configuration clientSetsUserInitiatedCaptureRequestTime:(BOOL)time restrictions:(id)restrictions
{
  timeCopy = time;
  v12.receiver = self;
  v12.super_class = FigCaptureSessionParsedConfiguration;
  v8 = [(FigCaptureSessionParsedConfiguration *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_useOfflineVISPipeline = 0;
    v11 = [(FigCaptureSessionParsedConfiguration *)v8 _parseConfiguration:configuration clientSetsUserInitiatedCaptureRequestTime:timeCopy restrictions:restrictions];
    v9->_isMultiCamSession = [configuration isMultiCamSession];
    v9->_continuityCameraIsWired = [configuration continuityCameraIsWired];
    v9->_continuityCameraClientDeviceClass = [configuration continuityCameraClientDeviceClass];
    v9->_clientIsVOIP = [configuration clientIsVOIP];
    v9->_suppressVideoEffects = [configuration suppressVideoEffects];
    v9->_smartStyleRenderingEnabled = [configuration smartStyleRenderingEnabled];
    v9->_smartStyleControlMode = [configuration smartStyleControlMode];
    v9->_smartStyle = [configuration smartStyle];
    if (v11)
    {
      [FigCaptureSessionParsedConfiguration initWithSessionConfiguration:v11 clientSetsUserInitiatedCaptureRequestTime:v9 restrictions:?];
      return 0;
    }
  }

  return v9;
}

- (uint64_t)_parseConfiguration:(uint64_t)configuration clientSetsUserInitiatedCaptureRequestTime:(uint64_t)time restrictions:
{
  result = MEMORY[0x1EEE9AC00](self, a2, configuration, time);
  v371 = v4;
  LODWORD(v368) = v7;
  v418 = v8;
  v351 = result;
  if (!result)
  {
    return result;
  }

  v9 = v6;
  v498 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  if (([v9 allowAllConfigurations] & 1) == 0)
  {
    v497 = 0u;
    v496 = 0u;
    v495 = 0u;
    v494 = 0u;
    connectionConfigurations = [v418 connectionConfigurations];
    OUTLINED_FUNCTION_27_4();
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = *v495;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v495 != v14)
          {
            objc_enumerationMutation(connectionConfigurations);
          }

          v16 = *(*(&v494 + 1) + 8 * i);
          mediaType = [v16 mediaType];
          [v9 allowedConnectionMediaTypes];
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:mediaType];
          if (([OUTLINED_FUNCTION_36() containsObject:?] & 1) == 0)
          {
            return -12780;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v493 = 0u;
            v492 = 0u;
            v491 = 0u;
            v490 = 0u;
            metadataIdentifiers = [v16 metadataIdentifiers];
            OUTLINED_FUNCTION_26_5();
            v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
            if (v20)
            {
              v21 = v20;
              v22 = *v491;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v491 != v22)
                  {
                    objc_enumerationMutation(metadataIdentifiers);
                  }

                  if (![objc_msgSend(v9 "allowedConnectionMetadataIdentifiers")])
                  {
                    return -12780;
                  }
                }

                OUTLINED_FUNCTION_26_5();
                v21 = OUTLINED_FUNCTION_1_0(v24, v25, v26, v27);
              }

              while (v21);
            }
          }
        }

        OUTLINED_FUNCTION_27_4();
        v13 = [connectionConfigurations countByEnumeratingWithState:? objects:? count:?];
      }

      while (v13);
    }
  }

  connectionConfigurations2 = [v418 connectionConfigurations];
  v29 = [connectionConfigurations2 indexesOfObjectsPassingTest:&__block_literal_global_586];
  if ([v29 count])
  {
    v30 = [connectionConfigurations2 objectsAtIndexes:v29];
  }

  else
  {
    v30 = 0;
  }

  obj = v30;
  if (![v30 count])
  {
    array11 = 0;
    array10 = 0;
    v388 = 0;
    v391 = 0;
    v375 = 0;
    v379 = 0;
    v397 = 0;
    v366 = 0;
    v369 = 0;
    v87 = 0;
    v88 = 0;
    array3 = 0;
    v90 = 0;
    v91 = 0;
    v423 = 0;
    v345 = 0;
    v417 = 0;
    v92 = 8;
LABEL_490:
    *(v351 + v92) = 1;
    goto LABEL_480;
  }

  v31 = [MEMORY[0x1E695DF70] arrayWithArray:v30];
  v486 = 0u;
  v487 = 0u;
  v488 = 0u;
  v489 = 0u;
  v33 = OUTLINED_FUNCTION_13_15(v31, v32, &v486, v485);
  v34 = MEMORY[0x1E695E480];
  if (v33)
  {
    v35 = v33;
    v36 = *v487;
LABEL_27:
    v37 = 0;
    while (1)
    {
      if (*v487 != v36)
      {
        objc_enumerationMutation(v30);
      }

      v38 = *(*(&v486 + 1) + 8 * v37);
      v39 = [objc_msgSend(v38 "sourceConfiguration")];
      if (v39 == 13)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = OUTLINED_FUNCTION_13_15(v39, v40, &v486, v485);
        if (v35)
        {
          goto LABEL_27;
        }

        goto LABEL_81;
      }
    }

    sourceConfiguration = [v38 sourceConfiguration];
    v504[0] = 0;
    if ([sourceConfiguration sourceDeviceType] != 13)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_35();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v341, v344, v348, v351, v353, v356, v359);
      goto LABEL_81;
    }

    v42 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType([sourceConfiguration source], *off_1E798A0C8, v504);
    v43 = v504[0];
    if (!v504[0])
    {
      v499[0].receiver = 0;
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v44)
      {
        v45 = *v34;
        v46 = v44(v42, @"Formats", *v34, v499);
        v504[0] = v46;
        if (!v46)
        {
          v47 = cspc_timeOfFlightFormatWithMaximumPoints(v499[0].receiver);
          v48 = [[FigCaptureSourceConfiguration alloc] initWithSource:v42];
          v49 = MEMORY[0x1E696AEC0];
          v50 = objc_opt_class();
          v339 = NSStringFromClass(v50);
          v341 = v48;
          [v49 stringWithFormat:@"<%@: %p>"];
          [OUTLINED_FUNCTION_4() setSourceID:?];
          [(FigCaptureSourceConfiguration *)v48 setRequiredFormat:v47];

          *&v500 = 0;
          v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v51)
          {
            v52 = v51(v42, @"AttributesDictionary", v45, &v500);
            v504[0] = v52;
            if (!v52)
            {
              [objc_msgSend(v500 objectForKeyedSubscript:{@"TimeOfFlightCameraType", "intValue"}];
              FigCaptureFrameRateFromFloat();
              OUTLINED_FUNCTION_24_6();
              [(FigCaptureSourceConfiguration *)v48 setRequiredMinFrameRate:?];
              FigCaptureFrameRateFromFloat();
              OUTLINED_FUNCTION_24_6();
              [(FigCaptureSourceConfiguration *)v48 setRequiredMaxFrameRate:?];
              [v47 maxSupportedFrameRate];
              [(FigCaptureSourceConfiguration *)v48 setMaxFrameRateClientOverride:?];

              if (!v42)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }

            v84 = v52;
          }

          else
          {
            v84 = -12782;
            v504[0] = -12782;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_35();
          LODWORD(v339) = v84;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v48, v344, v348, v351, v353, v356, v359);
          if (!v42)
          {
LABEL_45:
            if (!v48)
            {
              goto LABEL_81;
            }

            v500 = 0u;
            v501 = 0u;
            v502 = 0u;
            v503 = 0u;
            OUTLINED_FUNCTION_7_25();
            v57 = OUTLINED_FUNCTION_13_15(v53, v54, v55, v56);
            if (v57)
            {
              v58 = v57;
              v59 = *v501;
              while (2)
              {
                for (k = 0; k != v58; ++k)
                {
                  if (*v501 != v59)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v61 = *(*(&v500 + 1) + 8 * k);
                  if ([objc_msgSend(v61 "sourceConfiguration")] == 13 && objc_msgSend(objc_msgSend(v61, "sinkConfiguration"), "sinkType") == 11)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      PointCloudConnectionConfigurationForLiDARDepth = cspc_getPointCloudConnectionConfigurationForLiDARDepth(v61, v48);
                    }

                    else
                    {
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_3_35();
                      LODWORD(v339) = 0;
                      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
                      PointCloudConnectionConfigurationForLiDARDepth = 0;
                    }

                    goto LABEL_58;
                  }
                }

                OUTLINED_FUNCTION_7_25();
                v58 = OUTLINED_FUNCTION_13_15(v62, v63, v64, v65);
                if (v58)
                {
                  continue;
                }

                break;
              }
            }

            PointCloudConnectionConfigurationForLiDARDepth = 0;
LABEL_58:
            v500 = 0u;
            v501 = 0u;
            v502 = 0u;
            v503 = 0u;
            OUTLINED_FUNCTION_7_25();
            v71 = OUTLINED_FUNCTION_13_15(v67, v68, v69, v70);
            if (v71)
            {
              v72 = v71;
LABEL_60:
              v73 = 0;
              while (1)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v133)
                {
                  objc_enumerationMutation(obj);
                }

                v74 = *(*(&v500 + 1) + 8 * v73);
                if ([objc_msgSend(v74 "sourceConfiguration")] == 13 && objc_msgSend(objc_msgSend(v74, "sinkConfiguration"), "sinkType") == 10 && objc_msgSend(objc_msgSend(v74, "sinkConfiguration"), "depthDataDeliveryEnabled"))
                {
                  break;
                }

                if (v72 == ++v73)
                {
                  OUTLINED_FUNCTION_7_25();
                  v72 = OUTLINED_FUNCTION_22_7(v75, v76, v77, v78, v79, v80, v81, v82, v339, v341, v344, v348, v351, v353, v356, v359, v362, v365, v368, v371, v374, v378, dictionary3, v384, v387, v390, v393, metadataObjectConnectionConfigurations, v399, v402, dictionary, dictionary2, obj);
                  if (v72)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_68;
                }
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_35();
                LODWORD(v339) = 0;
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
                goto LABEL_68;
              }

              v83 = cspc_getPointCloudConnectionConfigurationForLiDARDepth(v74, v48);
              if (!PointCloudConnectionConfigurationForLiDARDepth)
              {
                goto LABEL_73;
              }
            }

            else
            {
LABEL_68:
              v83 = 0;
              if (!PointCloudConnectionConfigurationForLiDARDepth)
              {
LABEL_73:
                if (v83)
                {
                  v422 = v83;
                  [v31 addObject:v83];
                }

                else
                {
                  v422 = 0;
                }

                goto LABEL_82;
              }
            }

            [v31 addObject:PointCloudConnectionConfigurationForLiDARDepth];
            goto LABEL_73;
          }

LABEL_44:
          CFRelease(v42);
          goto LABEL_45;
        }

        v43 = v46;
      }

      else
      {
        v43 = -12782;
        v504[0] = -12782;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_35();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v43);
    v48 = 0;
    if (!v42)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_81:
  v422 = 0;
  PointCloudConnectionConfigurationForLiDARDepth = 0;
LABEL_82:
  v93 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v504[0] = 0;
  v94 = FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v93, 1, 1986618469);
  v95 = FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v93, 10, 1986618469);
  sourceConfiguration2 = [v95 sourceConfiguration];
  sinkConfiguration = [v95 sinkConfiguration];
  v98 = 0;
  if (([sinkConfiguration digitalFlashCaptureEnabled] & 1) == 0)
  {
    v98 = [objc_msgSend(sourceConfiguration2 "requiredFormat")] ^ 1;
  }

  v421 = PointCloudConnectionConfigurationForLiDARDepth;
  if ([sinkConfiguration depthDataDeliveryEnabled])
  {
    v99 = 0;
  }

  else
  {
    v99 = [objc_msgSend(sourceConfiguration2 "requiredFormat")] ^ 1;
  }

  v100 = v93;
  if ([objc_msgSend(sourceConfiguration2 "requiredFormat")])
  {
    v101 = 0;
  }

  else
  {
    v101 = [objc_msgSend(sourceConfiguration2 "requiredFormat")] ^ 1;
  }

  portraitAutoSuggestEnabled = [v94 portraitAutoSuggestEnabled];
  if (portraitAutoSuggestEnabled)
  {
    videoPreviewSinkConnectionConfiguration = 1;
  }

  else
  {
    portraitAutoSuggestEnabled = [objc_msgSend(sourceConfiguration2 "requiredFormat")];
    videoPreviewSinkConnectionConfiguration = portraitAutoSuggestEnabled;
  }

  if ((v98 | v99 | v101))
  {
    goto LABEL_118;
  }

  portraitAutoSuggestEnabled = [sinkConfiguration irisMovieCaptureEnabled];
  if (!(videoPreviewSinkConnectionConfiguration & 1 | ((portraitAutoSuggestEnabled & 1) == 0)))
  {
    goto LABEL_118;
  }

  portraitAutoSuggestEnabled = FigVideoCaptureSourceCopySupplementalTimeOfFlightCaptureSource([sourceConfiguration2 source], v504);
  videoPreviewSinkConnectionConfiguration = v504[0];
  if (v504[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_35();
    LODWORD(v339) = videoPreviewSinkConnectionConfiguration;
    portraitAutoSuggestEnabled = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
LABEL_118:
    v120 = 0;
LABEL_119:
    v111 = v100;
    v123 = v504[0];
    v498 = v504[0];
    v112 = 0x1E695D000uLL;
    if (!v504[0])
    {
      if (v120)
      {
        v111 = [MEMORY[0x1E695DF70] arrayWithArray:v111];
        portraitAutoSuggestEnabled = [v111 addObject:v120];
      }

      goto LABEL_122;
    }

LABEL_115:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_35();
    LODWORD(v339) = v123;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339);
    return v498;
  }

  v105 = portraitAutoSuggestEnabled;
  if (portraitAutoSuggestEnabled)
  {
    *&v500 = 0;
    v106 = *v34;
    v107 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v107)
    {
      v107(v105, @"AttributesDictionary", v106, &v500);
      v108 = v500;
    }

    else
    {
      v108 = 0;
    }

    v109 = [v108 objectForKeyedSubscript:@"SupportedTimeOfFlightProjectorModes"];
    if ([v109 containsObject:&unk_1F2243798])
    {
      v110 = 3;
    }

    else if ([v109 containsObject:&unk_1F22437B0])
    {
      v110 = 5;
    }

    else
    {
      if (![v109 containsObject:&unk_1F2243780])
      {
        goto LABEL_114;
      }

      v110 = 1;
    }

    v499[0].receiver = 0;
    v113 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v113)
    {
      v114 = v113(v105, @"Formats", v106, v499);
      if (!v114)
      {
        v115 = cspc_timeOfFlightFormatWithMaximumPoints(v499[0].receiver);
        [v115 minSupportedFrameRate];
        if (v116 > 0.0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_35();
          LODWORD(v339) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339);
        }

        else
        {
          v117 = [[FigCaptureSourceConfiguration alloc] initWithSource:v105];
          v118 = MEMORY[0x1E696AEC0];
          v119 = objc_opt_class();
          -[FigCaptureSourceConfiguration setSourceID:](v117, "setSourceID:", [v118 stringWithFormat:@"<%@: %p>", NSStringFromClass(v119), v105]);
          [(FigCaptureSourceConfiguration *)v117 setRequiredFormat:v115];
          FigCaptureFrameRateFromInt(0);
          OUTLINED_FUNCTION_24_6();
          [(FigCaptureSourceConfiguration *)v117 setRequiredMinFrameRate:?];
          [v115 maxSupportedFrameRate];
          FigCaptureFrameRateFromFloat();
          OUTLINED_FUNCTION_24_6();
          [(FigCaptureSourceConfiguration *)v117 setRequiredMaxFrameRate:?];
          [v115 maxSupportedFrameRate];
          [(FigCaptureSourceConfiguration *)v117 setMaxFrameRateClientOverride:?];

          v120 = objc_alloc_init(FigPointCloudDataCaptureConnectionConfiguration);
          [(FigCaptureConnectionConfiguration *)v120 setMediaType:1885564004];
          [(FigPointCloudDataCaptureConnectionConfiguration *)v120 setProjectorMode:v110];
          videoPreviewSinkConnectionConfiguration = MEMORY[0x1E696AEC0];
          v121 = objc_opt_class();
          v339 = NSStringFromClass(v121);
          v341 = v120;
          -[FigCaptureConnectionConfiguration setConnectionID:](v120, "setConnectionID:", [videoPreviewSinkConnectionConfiguration stringWithFormat:@"<%@: %p>"]);
          [(FigCaptureConnectionConfiguration *)v120 setSourceConfiguration:v117];
          [(FigCaptureConnectionConfiguration *)v120 setUnderlyingDeviceType:10];
          if (v120)
          {
            [(FigPointCloudDataCaptureConnectionConfiguration *)v120 setSupplementalPointCloudData:1];
            [(FigCaptureConnectionConfiguration *)v120 setSinkConfiguration:sinkConfiguration];
            [objc_msgSend(sourceConfiguration2 "requiredFormat")];
            [(FigPointCloudDataCaptureConnectionConfiguration *)v120 setPointCloudOutputDisabled:0];
            CFRelease(v105);
            goto LABEL_119;
          }
        }

LABEL_114:
        v123 = -12780;
        v498 = -12780;
        goto LABEL_115;
      }

      v122 = v114;
    }

    else
    {
      v122 = -12782;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_35();
    LODWORD(v339) = v122;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339);
    goto LABEL_114;
  }

  v498 = 0;
  v111 = v100;
  v112 = 0x1E695D000;
LABEL_122:
  v484 = 0u;
  v483 = 0u;
  v482 = 0u;
  v481 = 0u;
  v124 = OUTLINED_FUNCTION_13_15(portraitAutoSuggestEnabled, v103, &v481, v480);
  v126 = dictionary2;
  if (!v124)
  {
    goto LABEL_154;
  }

  v127 = v124;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  sinkConfiguration = 0;
  videoPreviewSinkConnectionConfiguration = *v482;
  do
  {
    v131 = 0;
    do
    {
      OUTLINED_FUNCTION_6_30();
      if (!v133)
      {
        objc_enumerationMutation(v111);
      }

      v132 = *(*(&v481 + 1) + 8 * v131);
      if ([objc_msgSend(v132 "sourceConfiguration")] == 7 || objc_msgSend(objc_msgSend(v132, "sourceConfiguration"), "sourceDeviceType") == 8)
      {
        v133 = [objc_msgSend(v132 "sourceConfiguration")] == 1 && sinkConfiguration == 0;
        if (v133)
        {
          v134 = [objc_msgSend(v132 "sourceConfiguration")];
          sinkConfiguration = v134;
          v130 = 1;
LABEL_138:
          if ((v129 & 1) == 0)
          {
            goto LABEL_139;
          }

          v479 = 0u;
          v478 = 0u;
          v477 = 0u;
          v476 = 0u;
          v124 = OUTLINED_FUNCTION_13_15(v134, v135, &v476, v475);
          v126 = dictionary2;
          if (!v124)
          {
            goto LABEL_154;
          }

          v136 = v124;
          videoPreviewSinkConnectionConfiguration = *v477;
          while (2)
          {
            v137 = 0;
LABEL_145:
            OUTLINED_FUNCTION_6_30();
            if (!v133)
            {
              objc_enumerationMutation(v111);
            }

            v138 = *(*(&v476 + 1) + 8 * v137);
            if ([objc_msgSend(v138 "sourceConfiguration")] == 14)
            {
              [v138 setSourceConfiguration:sinkConfiguration];
              goto LABEL_151;
            }

            if ([objc_msgSend(v138 "sourceConfiguration")] == 7 || (v139 = objc_msgSend(objc_msgSend(v138, "sourceConfiguration"), "sourceDeviceType"), v139 == 8))
            {
LABEL_151:
              [objc_msgSend(v138 "sourceConfiguration")];
              v139 = [objc_msgSend(v138 "sourceConfiguration")];
            }

            if (v136 == ++v137)
            {
              v124 = OUTLINED_FUNCTION_13_15(v139, v140, &v476, v475);
              v136 = v124;
              if (!v124)
              {
                goto LABEL_154;
              }

              continue;
            }

            goto LABEL_145;
          }
        }
      }

      v134 = [objc_msgSend(v132 "sourceConfiguration")];
      if (v134 == 14)
      {
        v128 = [objc_msgSend(objc_msgSend(v132 "sourceConfiguration")];
        v134 = [objc_msgSend(v132 "sourceConfiguration")];
        v129 = 1;
      }

      if (v130)
      {
        goto LABEL_138;
      }

LABEL_139:
      ++v131;
    }

    while (v127 != v131);
    v124 = OUTLINED_FUNCTION_13_15(v134, v135, &v481, v480);
    v127 = v124;
    v126 = dictionary2;
  }

  while (v124);
LABEL_154:
  v474 = 0u;
  v473 = 0u;
  v472 = 0u;
  v471 = 0u;
  v141 = OUTLINED_FUNCTION_13_15(v124, v125, &v471, v470);
  if (v141)
  {
    v142 = v141;
    sourceConfiguration4 = 0;
    v143 = *v472;
    v144 = dictionary;
    do
    {
      for (m = 0; m != v142; ++m)
      {
        if (*v472 != v143)
        {
          objc_enumerationMutation(v111);
        }

        sinkConfiguration = *(*(&v471 + 1) + 8 * m);
        if (![sinkConfiguration connectionID])
        {
          OUTLINED_FUNCTION_7_5();
          OUTLINED_FUNCTION_0_38();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
          v273 = OUTLINED_FUNCTION_7_5();
          v276 = 1649;
          goto LABEL_472;
        }

        sourceConfiguration3 = [sinkConfiguration sourceConfiguration];
        sourceID = [sourceConfiguration3 sourceID];
        if (!sourceID)
        {
          OUTLINED_FUNCTION_7_5();
          OUTLINED_FUNCTION_0_38();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
          v273 = OUTLINED_FUNCTION_7_5();
          v276 = 1654;
          goto LABEL_472;
        }

        videoPreviewSinkConnectionConfiguration = sourceID;
        if (![dictionary objectForKeyedSubscript:sourceID])
        {
          [*(v112 + 3952) array];
          [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
        }

        sourceType = [objc_msgSend(dictionary objectForKeyedSubscript:{videoPreviewSinkConnectionConfiguration), "addObject:", sinkConfiguration}];
        if (sinkConfiguration != v421 && sinkConfiguration != v422)
        {
          if ([sinkConfiguration smartCameraRequired])
          {
            [objc_msgSend(sinkConfiguration "sourceConfiguration")];
          }

          if ([v418 smartStyleRenderingEnabled] && (objc_msgSend(sinkConfiguration, "videoPreviewSinkConfiguration") || objc_msgSend(sinkConfiguration, "videoDataSinkConfiguration") || objc_msgSend(sinkConfiguration, "movieFileSinkConfiguration") || objc_msgSend(sinkConfiguration, "stillImageSinkConfiguration")))
          {
            [objc_msgSend(sinkConfiguration "sourceConfiguration")];
          }

          v151 = [objc_msgSend(sinkConfiguration "sinkConfiguration")];
          if (!v151)
          {
            OUTLINED_FUNCTION_7_5();
            OUTLINED_FUNCTION_0_38();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
            v273 = OUTLINED_FUNCTION_7_5();
            v276 = 1679;
            goto LABEL_472;
          }

          videoPreviewSinkConnectionConfiguration = v151;
          if (![v126 objectForKeyedSubscript:v151])
          {
            [v126 setObject:objc_msgSend(*(v112 + 3952) forKeyedSubscript:{"array"), videoPreviewSinkConnectionConfiguration}];
          }

          sourceType = [objc_msgSend(v126 objectForKeyedSubscript:{videoPreviewSinkConnectionConfiguration), "addObject:", sinkConfiguration}];
          if (!sourceConfiguration4)
          {
            sourceType = [sourceConfiguration3 sourceType];
            if (sourceType == 1)
            {
              v152 = sourceConfiguration3;
            }

            else
            {
              v152 = 0;
            }

            sourceConfiguration4 = v152;
          }
        }
      }

      v142 = OUTLINED_FUNCTION_13_15(sourceType, v149, &v471, v470);
    }

    while (v142);
  }

  else
  {
    sourceConfiguration4 = 0;
    v144 = dictionary;
  }

  obja = v111;
  v469 = 0u;
  v468 = 0u;
  v467 = 0u;
  v466 = 0u;
  v376 = OUTLINED_FUNCTION_32_5();
  array3 = 0;
  if (!v376)
  {
    OUTLINED_FUNCTION_23_5();
    goto LABEL_293;
  }

  OUTLINED_FUNCTION_23_5();
  v378 = *v467;
  v390 = 0x1F219FFF0;
  v153 = sourceConfiguration4;
  while (2)
  {
    v154 = 0;
    while (2)
    {
      if (*v467 != v378)
      {
        objc_enumerationMutation(v144);
      }

      v387 = v154;
      v155 = [v144 objectForKeyedSubscript:*(*(&v466 + 1) + 8 * v154)];
      v156 = [objc_msgSend(v155 "firstObject")];
      sourceType2 = [v156 sourceType];
      if (sourceType2 == 2)
      {
        if (sinkConfiguration)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_47();
          v276 = 1783;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
        }

        if (v153 && (v191 = [dictionary objectForKeyedSubscript:{objc_msgSend(v153, "sourceID")}], memset(v451, 0, sizeof(v451)), (v192 = objc_msgSend(v191, "countByEnumeratingWithState:objects:count:", v451, v450, 16)) != 0))
        {
          v198 = v192;
LABEL_280:
          v199 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_10_18();
            if (!v133)
            {
              objc_enumerationMutation(v191);
            }

            videoPreviewSinkConnectionConfiguration = *(*(&v451[0] + 1) + 8 * v199);
            if ([objc_msgSend(videoPreviewSinkConnectionConfiguration "sinkConfiguration")] == 4)
            {
              [videoPreviewSinkConnectionConfiguration mediaType];
              OUTLINED_FUNCTION_18_11();
              if (v133)
              {
                break;
              }
            }

            if (v198 == ++v199)
            {
              v198 = [v191 countByEnumeratingWithState:v451 objects:v450 count:16];
              if (v198)
              {
                goto LABEL_280;
              }

              goto LABEL_262;
            }
          }
        }

        else
        {
LABEL_262:
          videoPreviewSinkConnectionConfiguration = 0;
        }

        v153 = sourceConfiguration4;
        sinkConfiguration = -[FigCaptureSessionParsedMicSourceConfiguration initWithMicConnectionConfigurations:cameraConfigurationForStereoAudioCapture:movieFileVideoConnectionConfigurationForStereoAudioCapture:clientSDKVersionToken:remoteIOOutputFormat:]([FigCaptureSessionParsedMicSourceConfiguration alloc], v155, sourceConfiguration4, videoPreviewSinkConnectionConfiguration, [v418 clientSDKVersionToken], objc_msgSend(v156, "remoteIOOutputFormat"));
        goto LABEL_264;
      }

      if (sourceType2 != 4)
      {
        if (sourceType2 == 1)
        {
          if (!array)
          {
            array = [*(v112 + 3952) array];
          }

          *&v500 = 0;
          v159 = -[FigCaptureSessionParsedCameraSourceConfiguration initWithConnectionConfigurations:clientSetsUserInitiatedCaptureRequestTime:smartStyleEnabled:sceneClassifierConnectionConfigurationOut:]([FigCaptureSessionParsedCameraSourceConfiguration alloc], v155, v368, [v418 smartStyleRenderingEnabled], &v500);
          if (!v159)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_47();
            v276 = 1709;
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
          }

          v160 = v159;
          [array addObject:v159];
          videoPreviewSinkConnectionConfiguration = v500;
          if (v500)
          {
            [dictionary3 setObject:v500 forKeyedSubscript:{objc_msgSend(v156, "sourceID")}];
          }

          v344 = sinkConfiguration;
          v161 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations([v160 previewDerivedConnectionConfigurations]);
          memset(v465, 0, 64);
          v162 = [v161 countByEnumeratingWithState:v465 objects:v464 count:16];
          if (v162)
          {
            v163 = v162;
            do
            {
              for (n = 0; n != v163; ++n)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v133)
                {
                  objc_enumerationMutation(v161);
                }

                videoPreviewSinkConnectionConfiguration = *(*(&v465[0] + 1) + 8 * n);
                v165 = -[FigCaptureSessionParsedPreviewSinkConfiguration initWithParsedCameraSourceConfiguration:sourceDeviceType:]([FigCaptureSessionParsedPreviewSinkConfiguration alloc], v160, [videoPreviewSinkConnectionConfiguration intValue]);
                if (v165)
                {
                  videoPreviewSinkConnectionConfiguration = v165;
                  array2 = v384;
                  if (!v384)
                  {
                    array2 = [*(v112 + 3952) array];
                  }

                  v384 = array2;
                  v165 = [array2 addObject:videoPreviewSinkConnectionConfiguration];
                }

                v126 = dictionary2;
              }

              v163 = OUTLINED_FUNCTION_1_0(v165, v166, v465, v464);
            }

            while (v163);
          }

          memset(v463, 0, sizeof(v463));
          videoDataConnectionConfigurations = [v160 videoDataConnectionConfigurations];
          v169 = [videoDataConnectionConfigurations countByEnumeratingWithState:v463 objects:v462 count:16];
          if (v169)
          {
            v170 = v169;
LABEL_213:
            v171 = 0;
            while (1)
            {
              OUTLINED_FUNCTION_10_18();
              if (!v133)
              {
                objc_enumerationMutation(videoDataConnectionConfigurations);
              }

              v172 = *(*(&v463[0] + 1) + 8 * v171);
              if ([v172 outputWidth] < 1 || objc_msgSend(v172, "outputHeight") < 1)
              {
                return v498;
              }

              videoPreviewSinkConnectionConfiguration = [[FigCaptureSessionParsedVideoDataSinkConfiguration alloc] initWithVideoDataConnectionConfiguration:v172];
              if (!array3)
              {
                array3 = [*(v112 + 3952) array];
              }

              v173 = [array3 addObject:videoPreviewSinkConnectionConfiguration];
              if (v170 == ++v171)
              {
                v170 = OUTLINED_FUNCTION_1_0(v173, v174, v463, v462);
                if (v170)
                {
                  goto LABEL_213;
                }

                break;
              }
            }
          }

          v461 = 0u;
          v460 = 0u;
          v459 = 0u;
          v458 = 0u;
          metadataObjectConnectionConfigurations = [v160 metadataObjectConnectionConfigurations];
          v402 = [metadataObjectConnectionConfigurations countByEnumeratingWithState:&v458 objects:v457 count:16];
          if (v402)
          {
            v399 = *v459;
            while (2)
            {
              v175 = 0;
              v393 = sel_init;
              do
              {
                if (*v459 != v399)
                {
                  objc_enumerationMutation(metadataObjectConnectionConfigurations);
                }

                v414 = *(*(&v458 + 1) + 8 * v175);
                underlyingDeviceType = [v414 underlyingDeviceType];
                v177 = underlyingDeviceType;
                v453 = 0u;
                v454 = 0u;
                v455 = 0u;
                v456 = 0u;
                v179 = OUTLINED_FUNCTION_13_15(underlyingDeviceType, v178, &v453, v452);
                if (v179)
                {
                  v180 = v179;
                  videoPreviewSinkConnectionConfiguration = 0;
                  v181 = *v454;
                  do
                  {
                    for (ii = 0; ii != v180; ++ii)
                    {
                      if (*v454 != v181)
                      {
                        objc_enumerationMutation(array3);
                      }

                      v183 = *(*(&v453 + 1) + 8 * ii);
                      isEqualToString = objc_msgSend_isEqualToString_([objc_msgSend(v183 "cameraConfiguration")]);
                      if (isEqualToString)
                      {
                        isEqualToString = [v183 sourceDeviceType];
                        if (isEqualToString == v177)
                        {
                          if (videoPreviewSinkConnectionConfiguration)
                          {
                            v186 = [objc_msgSend(v183 "videoDataConnectionConfiguration")];
                            isEqualToString = [objc_msgSend(videoPreviewSinkConnectionConfiguration "videoDataConnectionConfiguration")];
                            if (v186 < isEqualToString)
                            {
                              videoPreviewSinkConnectionConfiguration = v183;
                            }
                          }

                          else
                          {
                            videoPreviewSinkConnectionConfiguration = v183;
                          }
                        }
                      }
                    }

                    v180 = OUTLINED_FUNCTION_13_15(isEqualToString, v185, &v453, v452);
                  }

                  while (v180);
                }

                else
                {
                  videoPreviewSinkConnectionConfiguration = 0;
                }

                if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v414))
                {
                  BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v414 "sourceConfiguration")], 0x1F219FFF0, &v498);
                }

                else
                {
                  BoolAttribute = 1;
                }

                v112 = 0x1E695D000uLL;
                v144 = dictionary;
                v126 = dictionary2;
                v188 = v498;
                if (v498)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_35();
                  LODWORD(v339) = v188;
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339);
                  return v498;
                }

                if (videoPreviewSinkConnectionConfiguration)
                {
                  v189 = 1;
                }

                else
                {
                  v189 = BoolAttribute;
                }

                if ((v189 & 1) == 0)
                {
                  v190 = [FigCaptureSessionParsedVideoDataSinkConfiguration alloc];
                  if (v190)
                  {
                    v499[0].receiver = v190;
                    v499[0].super_class = FigCaptureSessionParsedVideoDataSinkConfiguration;
                    v190 = [(objc_super *)v499 init];
                  }

                  videoPreviewSinkConnectionConfiguration = v190;
                  if (!array3)
                  {
                    array3 = [MEMORY[0x1E695DF70] array];
                  }

                  [array3 addObject:videoPreviewSinkConnectionConfiguration];
                }

                [(FigCaptureSessionParsedVideoDataSinkConfiguration *)videoPreviewSinkConnectionConfiguration _setMetadataObjectConnectionConfiguration:v414];
                ++v175;
              }

              while (v175 != v402);
              v402 = [metadataObjectConnectionConfigurations countByEnumeratingWithState:&v458 objects:v457 count:16];
              if (v402)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v144 = dictionary;
          }

          sinkConfiguration = v344;
LABEL_278:
          v153 = sourceConfiguration4;
          goto LABEL_265;
        }

LABEL_264:
        v144 = dictionary;
        goto LABEL_265;
      }

      if (!v423)
      {
        sourceType2 = [*(v112 + 3952) array];
        v423 = sourceType2;
      }

      memset(v449, 0, sizeof(v449));
      v193 = OUTLINED_FUNCTION_21_10(sourceType2, v158, v449, v448);
      v144 = dictionary;
      if (v193)
      {
        v194 = v193;
        do
        {
          for (jj = 0; jj != v194; ++jj)
          {
            OUTLINED_FUNCTION_10_18();
            if (!v133)
            {
              objc_enumerationMutation(v155);
            }

            videoPreviewSinkConnectionConfiguration = *(*(&v449[0] + 1) + 8 * jj);
            if (![videoPreviewSinkConnectionConfiguration formatDescription])
            {
              OUTLINED_FUNCTION_7_5();
              OUTLINED_FUNCTION_0_38();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
              v273 = OUTLINED_FUNCTION_7_5();
              v276 = 1807;
              goto LABEL_472;
            }

            if (!-[__CFArray count](CMMetadataFormatDescriptionGetIdentifiers([videoPreviewSinkConnectionConfiguration formatDescription]), "count"))
            {
              OUTLINED_FUNCTION_7_5();
              OUTLINED_FUNCTION_0_38();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v344, v348, v351, v353, v356, v359);
              v273 = OUTLINED_FUNCTION_7_5();
              v276 = 1808;
              goto LABEL_472;
            }

            v196 = [v423 addObject:videoPreviewSinkConnectionConfiguration];
          }

          v194 = OUTLINED_FUNCTION_21_10(v196, v197, v449, v448);
        }

        while (v194);
        goto LABEL_278;
      }

LABEL_265:
      v154 = v387 + 1;
      if (v387 + 1 != v376)
      {
        continue;
      }

      break;
    }

    v200 = OUTLINED_FUNCTION_32_5();
    v376 = v200;
    if (v200)
    {
      continue;
    }

    break;
  }

LABEL_293:
  v346 = sinkConfiguration;
  v447 = 0u;
  v446 = 0u;
  v445 = 0u;
  v444 = 0u;
  v201 = OUTLINED_FUNCTION_31_7();
  if (v201)
  {
    v202 = v201;
    OUTLINED_FUNCTION_12_20();
    v414 = *v445;
    do
    {
      v203 = 0;
      v399 = v202;
      do
      {
        if (*v445 != v414)
        {
          objc_enumerationMutation(v126);
        }

        v419 = v203;
        v204 = [v126 objectForKeyedSubscript:*(*(&v444 + 1) + 8 * v203)];
        firstObject = [v204 firstObject];
        [objc_msgSend(firstObject "sourceConfiguration")];
        v206 = [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
        v207 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v206, [firstObject underlyingDeviceType]);
        switch([objc_msgSend(firstObject "sinkConfiguration")])
        {
          case 3u:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 1979;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            v208 = FigCaptureConnectionConfigurationWithSinkType(v207, 4);
            v209 = [FigCaptureSessionParsedStillImageSinkConfiguration alloc];
            v434 = firstObject;
            v210 = -[FigCaptureSessionParsedStillImageSinkConfiguration initWithStillImageConnectionConfigurations:movieFileVideoConnectionConfiguration:pointCloudDataConnectionConfiguration:](v209, [MEMORY[0x1E695DEC8] arrayWithObjects:&v434 count:1], v208, 0);
            array4 = v402;
            if (!v402)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v402 = array4;
            goto LABEL_392;
          case 4u:
            v226 = FigCaptureConnectionConfigurationsFilterWithBlock(v204, &__block_literal_global_298);
            LOBYTE(v499[0].receiver) = 0;
            cspc_getMultiCamClientCompositingEnabledStates(v226, v499, 0);
            if (LOBYTE(v499[0].receiver) == 1)
            {
              if ([v226 count] != 2)
              {
                OUTLINED_FUNCTION_7_5();
                OUTLINED_FUNCTION_0_38();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v346, v348, v351, v353, v356, v359);
                v273 = OUTLINED_FUNCTION_7_5();
                v276 = 1934;
LABEL_472:
                v315 = videoPreviewSinkConnectionConfiguration;
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
              }

              v439 = 0u;
              v438 = 0u;
              v437 = 0u;
              v436 = 0u;
              v228 = OUTLINED_FUNCTION_21_10(2, v227, &v436, v435);
              v229 = 0x1E695D000uLL;
              if (!v228)
              {
                goto LABEL_448;
              }

              v230 = v228;
              videoPreviewSinkConnectionConfiguration = *v437;
LABEL_352:
              v231 = 0;
              while (1)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v133)
                {
                  objc_enumerationMutation(v226);
                }

                v232 = *(*(&v436 + 1) + 8 * v231);
                [objc_msgSend(v232 "movieFileSinkConfiguration")];
                [v232 connectionID];
                v233 = OUTLINED_FUNCTION_4();
                v234 = objc_msgSend_isEqualToString_(v233);
                if (v234)
                {
                  break;
                }

                if (v230 == ++v231)
                {
                  v230 = OUTLINED_FUNCTION_21_10(v234, v235, &v436, v435);
                  if (!v230)
                  {
LABEL_448:
                    OUTLINED_FUNCTION_7_5();
                    OUTLINED_FUNCTION_0_38();
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v346, v348, v351, v353, v356, v359);
                    v273 = OUTLINED_FUNCTION_7_5();
                    v276 = 1945;
                    goto LABEL_472;
                  }

                  goto LABEL_352;
                }
              }

              if (!v232)
              {
                goto LABEL_448;
              }

              if (!sourceConfiguration4)
              {
                sourceConfiguration4 = [v232 sourceConfiguration];
              }

              v243 = [MEMORY[0x1E695DF70] arrayWithArray:v226];
              [v243 removeObject:v232];
              [v243 insertObject:v232 atIndex:0];
              v226 = [MEMORY[0x1E695DEC8] arrayWithArray:v243];
              v126 = dictionary2;
            }

            else
            {
              v229 = 0x1E695D000;
            }

            v244 = FigCaptureConnectionConfigurationWithSourceType(v204, 1);
            [objc_msgSend(v244 "sourceConfiguration")];
            v245 = [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
            v246 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v245, [v244 underlyingDeviceType]);
            videoPreviewSinkConnectionConfiguration = FigCaptureConnectionConfigurationWithSinkType(v246, 3);
            if (!videoPreviewSinkConnectionConfiguration)
            {
              videoPreviewSinkConnectionConfiguration = FigCaptureConnectionConfigurationWithSinkType(v246, 10);
            }

            v247 = [[FigCaptureSessionParsedMovieFileSinkConfiguration alloc] initWithCaptureConnectionConfigurations:v204 videoConnectionConfigurations:v226 stillImageConnectionConfiguration:videoPreviewSinkConnectionConfiguration sceneClassifierConnectionConfigurationsBySourceID:dictionary3];
            v202 = v399;
            if (!v247)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 1970;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            v210 = v247;
            array4 = metadataObjectConnectionConfigurations;
            if (!metadataObjectConnectionConfigurations)
            {
              array4 = [*(v229 + 3952) array];
            }

            metadataObjectConnectionConfigurations = array4;
LABEL_392:
            v219 = v210;
LABEL_393:
            [array4 addObject:v219];
            break;
          case 5u:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 1843;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            array4 = v376;
            if (!v376)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v376 = array4;
            goto LABEL_371;
          case 7u:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 1854;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            array4 = v378;
            if (!v378)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v378 = array4;
            goto LABEL_371;
          case 8u:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 1865;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            v359 = FigCaptureConnectionConfigurationWithSinkType(v207, 6);
            v356 = FigCaptureConnectionConfigurationWithSinkType(v207, 1);
            v348 = FigCaptureConnectionConfigurationWithSinkType(v207, 11);
            v353 = FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v207, 4, 1986618469);
            [objc_msgSend(dictionary3 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(firstObject, "sourceConfiguration"), "sourceID")), "underlyingDeviceType"}];
            [firstObject underlyingDeviceType];
            array5 = [MEMORY[0x1E695DF70] array];
            v440 = 0u;
            v441 = 0u;
            v442 = 0u;
            v443 = 0u;
            v213 = OUTLINED_FUNCTION_36_7();
            if (v213)
            {
              v214 = v213;
              do
              {
                for (kk = 0; kk != v214; ++kk)
                {
                  OUTLINED_FUNCTION_10_18();
                  if (!v133)
                  {
                    objc_enumerationMutation(v207);
                  }

                  videoPreviewSinkConnectionConfiguration = *(*(&v440 + 1) + 8 * kk);
                  if (([objc_msgSend(videoPreviewSinkConnectionConfiguration "sinkConfiguration")] == 4 || objc_msgSend(objc_msgSend(videoPreviewSinkConnectionConfiguration, "sinkConfiguration"), "sinkType") == 10) && objc_msgSend(videoPreviewSinkConnectionConfiguration, "mediaType") == 1835365473 && FigMetadataItemConnectionConfigurationRequiresObjectDetection(videoPreviewSinkConnectionConfiguration))
                  {
                    [array5 addObject:videoPreviewSinkConnectionConfiguration];
                  }
                }

                v214 = OUTLINED_FUNCTION_36_7();
              }

              while (v214);
            }

            v216 = [FigCaptureSessionParsedMetadataSinkConfiguration initWithMetadataObjectConnectionConfiguration:? sceneClassifierConnectionConfiguration:? videoDataConnectionConfiguration:? videoPreviewSinkConnectionConfiguration:? movieFileVideoConnectionConfiguration:? movieFileDetectedObjectMetadataConnectionConfigurations:?];
            array6 = v368;
            if (!v368)
            {
              array6 = [MEMORY[0x1E695DF70] array];
            }

            v368 = array6;
            [array6 addObject:v216];
            v126 = dictionary2;
            v202 = v399;
            if (!FigCaptureMetadataObjectConfigurationRequiresFaceTracking(firstObject) || ![objc_msgSend(firstObject "sourceConfiguration")] || v348)
            {
              break;
            }

            array7 = v393;
            if (!v393)
            {
              array7 = [MEMORY[0x1E695DF70] array];
            }

            v219 = [[FigCaptureSessionParsedDepthDataSinkConfiguration alloc] initWithDepthDataConnectionConfiguration:v359 videoDataConnectionConfiguration:firstObject metadataObjectConnectionConfiguration:?];
            v393 = array7;
            array4 = array7;
            goto LABEL_393;
          case 0xAu:
            array8 = [MEMORY[0x1E695DF70] array];
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v221 = OUTLINED_FUNCTION_34_6();
            if (v221)
            {
              v222 = v221;
              v223 = 0;
              v224 = *v431;
              do
              {
                for (mm = 0; mm != v222; ++mm)
                {
                  if (*v431 != v224)
                  {
                    objc_enumerationMutation(v204);
                  }

                  videoPreviewSinkConnectionConfiguration = *(*(&v430 + 1) + 8 * mm);
                  if ([videoPreviewSinkConnectionConfiguration mediaType] == 1986618469)
                  {
                    [array8 addObject:videoPreviewSinkConnectionConfiguration];
                  }

                  else
                  {
                    [videoPreviewSinkConnectionConfiguration mediaType];
                    OUTLINED_FUNCTION_17_10();
                    if (v133)
                    {
                      v223 = videoPreviewSinkConnectionConfiguration;
                    }
                  }
                }

                v222 = OUTLINED_FUNCTION_34_6();
              }

              while (v222);
            }

            else
            {
              v223 = 0;
            }

            if (v422)
            {
              v248 = v422;
            }

            else
            {
              v248 = v223;
            }

            if (![array8 count])
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 2013;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            LOBYTE(v499[0].receiver) = 0;
            cspc_getMultiCamClientCompositingEnabledStates(v204, 0, v499);
            if (LOBYTE(v499[0].receiver) == 1)
            {
              if ([array8 count] != 2)
              {
                OUTLINED_FUNCTION_7_5();
                OUTLINED_FUNCTION_0_38();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v346, v348, v351, v353, v356, v359);
                v273 = OUTLINED_FUNCTION_7_5();
                v276 = 2022;
                goto LABEL_472;
              }

              v429 = 0u;
              v428 = 0u;
              v427 = 0u;
              v426 = 0u;
              v250 = OUTLINED_FUNCTION_21_10(2, v249, &v426, v425);
              if (!v250)
              {
                goto LABEL_449;
              }

              v251 = v250;
              videoPreviewSinkConnectionConfiguration = *v427;
LABEL_405:
              v252 = 0;
              while (1)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v133)
                {
                  objc_enumerationMutation(array8);
                }

                firstObject2 = *(*(&v426 + 1) + 8 * v252);
                [objc_msgSend(firstObject2 "irisSinkConfiguration")];
                [firstObject2 connectionID];
                v254 = OUTLINED_FUNCTION_4();
                v255 = objc_msgSend_isEqualToString_(v254);
                if (v255)
                {
                  break;
                }

                if (v251 == ++v252)
                {
                  v251 = OUTLINED_FUNCTION_21_10(v255, v256, &v426, v425);
                  if (!v251)
                  {
LABEL_449:
                    OUTLINED_FUNCTION_7_5();
                    OUTLINED_FUNCTION_0_38();
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v346, v348, v351, v353, v356, v359);
                    v273 = OUTLINED_FUNCTION_7_5();
                    v276 = 2031;
                    goto LABEL_472;
                  }

                  goto LABEL_405;
                }
              }

              if (!firstObject2)
              {
                goto LABEL_449;
              }

              [array8 removeObject:firstObject2];
              [array8 insertObject:firstObject2 atIndex:0];
            }

            else
            {
              firstObject2 = [array8 firstObject];
            }

            v257 = [objc_msgSend(firstObject2 "irisSinkConfiguration")];
            v258 = firstObject2;
            if ((v257 & 1) == 0)
            {
              v259 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType([dictionary objectForKeyedSubscript:{objc_msgSend(objc_msgSend(firstObject2, "sourceConfiguration"), "sourceID")}], objc_msgSend(firstObject2, "underlyingDeviceType"));
              v258 = FigCaptureConnectionConfigurationWithSinkType(v259, 4);
            }

            videoPreviewSinkConnectionConfiguration = [[FigCaptureSessionParsedStillImageSinkConfiguration alloc] initWithStillImageConnectionConfigurations:array8 movieFileVideoConnectionConfiguration:v258 pointCloudDataConnectionConfiguration:v248];
            array9 = v402;
            if (!v402)
            {
              array9 = [MEMORY[0x1E695DF70] array];
            }

            [array9 addObject:videoPreviewSinkConnectionConfiguration];
            v402 = array9;
            if (v257)
            {
              if (metadataObjectConnectionConfigurations)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_1_47();
                v276 = 2066;
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
              }

              v261 = [FigCaptureSessionParsedMovieFileSinkConfiguration alloc];
              v424 = v258;
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v424 count:1];
              v262 = OUTLINED_FUNCTION_4();
              v264 = [(FigCaptureSessionParsedMovieFileSinkConfiguration *)v262 initWithCaptureConnectionConfigurations:v204 videoConnectionConfigurations:v263 stillImageConnectionConfiguration:firstObject2 sceneClassifierConnectionConfigurationsBySourceID:dictionary3];
              metadataObjectConnectionConfigurations = [MEMORY[0x1E695DF70] array];
              [metadataObjectConnectionConfigurations addObject:v264];
            }

            v126 = dictionary2;
            v202 = v399;
            break;
          case 0xBu:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 2081;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            v236 = FigCaptureConnectionConfigurationWithSinkType(v207, 6);
            v237 = FigCaptureConnectionConfigurationWithSinkType(v207, 8);
            v210 = [[FigCaptureSessionParsedDepthDataSinkConfiguration alloc] initWithDepthDataConnectionConfiguration:firstObject videoDataConnectionConfiguration:v236 metadataObjectConnectionConfiguration:v237];
            array4 = v393;
            if (!v393)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v393 = array4;
            goto LABEL_392;
          case 0xCu:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 2097;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            array4 = v365;
            if (!v365)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v365 = array4;
            goto LABEL_371;
          case 0xDu:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 2108;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            v238 = [objc_msgSend(firstObject "sourceConfiguration")];
            v239 = FigCaptureConnectionConfigurationWithSinkType(v207, 6);
            if (v238 <= 9 && ((1 << v238) & 0x310) != 0)
            {
              [objc_msgSend(firstObject "sourceConfiguration")];
              v241 = [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
              v242 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v241, v238);
              v239 = FigCaptureConnectionConfigurationWithSinkType(v242, 6);
            }

            videoPreviewSinkConnectionConfiguration = v239;
            if (!v239)
            {
              OUTLINED_FUNCTION_7_5();
              OUTLINED_FUNCTION_0_38();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v341, v346, v348, v351, v353, v356, v359);
              v273 = OUTLINED_FUNCTION_7_5();
              v276 = 2118;
              goto LABEL_472;
            }

            v210 = [[FigCaptureSessionParsedVisionDataSinkConfiguration alloc] initWithVisionDataConnectionConfiguration:firstObject videoDataConnectionConfiguration:v239];
            array4 = v362;
            if (!v362)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v362 = array4;
            goto LABEL_392;
          case 0xFu:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 2130;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            array4 = v387;
            if (!v387)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v387 = array4;
LABEL_371:
            v219 = firstObject;
            goto LABEL_393;
          case 0x10u:
            if ([v204 count] != 1)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_47();
              v276 = 2141;
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
            }

            array4 = v390;
            if (!v390)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v390 = array4;
            goto LABEL_371;
          default:
            break;
        }

        v203 = v419 + 1;
      }

      while (v419 + 1 != v202);
      v265 = OUTLINED_FUNCTION_31_7();
      v202 = v265;
    }

    while (v265);
  }

  else
  {
    OUTLINED_FUNCTION_12_20();
  }

  v277 = OUTLINED_FUNCTION_30_3(v265, v266, v267, v268, v269, v270, v271, v272, v339, v341, v346, v348, v351, v353, v356, v359, v362, v365, v368, v371, v376, v378, dictionary3, v384, v387, v390, v393, metadataObjectConnectionConfigurations, v399, v402, dictionary, dictionary2, obja, v414, array);
  if (v277)
  {
    v278 = v277;
    array10 = 0;
    v279 = MEMORY[0];
    while (2)
    {
      for (nn = 0; nn != v278; ++nn)
      {
        if (MEMORY[0] != v279)
        {
          objc_enumerationMutation(v417);
        }

        v281 = *(8 * nn);
        if (([objc_msgSend(v281 "cameraConfiguration")] & 1) == 0)
        {
          videoPreviewSinkConnectionConfiguration = [v281 videoPreviewSinkConnectionConfiguration];
          previewDepthDataDeliveryEnabled = [videoPreviewSinkConnectionConfiguration previewDepthDataDeliveryEnabled];
          if (!previewDepthDataDeliveryEnabled)
          {
            continue;
          }

          previewDepthDataDeliveryEnabled = [videoPreviewSinkConnectionConfiguration previewFilterRenderingEnabled];
          if (!previewDepthDataDeliveryEnabled)
          {
            continue;
          }

          previewDepthDataDeliveryEnabled = FigCaptureConnectionConfigurationWithSinkType([v281 videoCaptureConnectionConfigurations], 4);
          if (!previewDepthDataDeliveryEnabled)
          {
            continue;
          }
        }

        if (!array10)
        {
          array10 = [MEMORY[0x1E695DF70] array];
        }

        v282 = [FigCaptureSessionParsedCinematographyConfiguration alloc];
        videoPreviewSinkConnectionConfiguration = [v281 videoPreviewSinkConnectionConfiguration];
        if (!-[FigCaptureSessionParsedCinematographyConfiguration initWithVideoPreviewSinkConnectionConfiguration:videoCaptureConnectionConfigurations:previewConnectionConfigurations:sourceConfiguration:](v282, "initWithVideoPreviewSinkConnectionConfiguration:videoCaptureConnectionConfigurations:previewConnectionConfigurations:sourceConfiguration:", videoPreviewSinkConnectionConfiguration, [v281 videoCaptureConnectionConfigurations], objc_msgSend(v281, "previewDerivedConnectionConfigurations"), v281))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_47();
          v276 = 2205;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v276, v315, v274, v275, v339);
        }

        previewDepthDataDeliveryEnabled = [OUTLINED_FUNCTION_7() addObject:?];
      }

      v278 = OUTLINED_FUNCTION_30_3(previewDepthDataDeliveryEnabled, v284, v285, v286, v287, v288, v289, v290, v339, v342, v347, v349, v352, v354, v357, v360, v363, v367, v370, v372, v377, v380, v382, v385, v389, v392, v394, v398, v400, v403, v406, v409, objb, v415, v417);
      if (v278)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    array10 = 0;
  }

  v87 = v394;
  if (sourceConfiguration4)
  {
    OUTLINED_FUNCTION_29_2();
    v291 = [v417 countByEnumeratingWithState:? objects:? count:?];
    if (v291)
    {
      v292 = v291;
      v293 = MEMORY[0];
      do
      {
        for (i1 = 0; i1 != v292; ++i1)
        {
          if (MEMORY[0] != v293)
          {
            objc_enumerationMutation(v417);
          }

          videoPreviewSinkConnectionConfiguration = *(8 * i1);
          [objc_msgSend(videoPreviewSinkConnectionConfiguration "cameraConfiguration")];
          [sourceConfiguration4 sourceID];
          v295 = OUTLINED_FUNCTION_4();
          if ((objc_msgSend_isEqualToString_(v295) & 1) == 0)
          {
            [videoPreviewSinkConnectionConfiguration setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:{objc_msgSend(sourceConfiguration4, "videoStabilizationStrength")}];
          }
        }

        OUTLINED_FUNCTION_29_2();
        v292 = [v417 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v292);
    }
  }

  if (v421)
  {
    array11 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_28_4();
    v304 = OUTLINED_FUNCTION_22_7(v296, v297, v298, v299, v300, v301, v302, v303, v339, v342, v347, v349, v352, v354, v357, v360, v363, v367, v370, v372, v377, v380, v382, v385, v389, v392, v394, v398, v400, v403, v406, v409, objb);
    if (!v304)
    {
LABEL_471:
      OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_0_38();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v339, v342, v347, v349, v352, v354, v357, v360);
      v273 = OUTLINED_FUNCTION_7_5();
      v276 = 2236;
      goto LABEL_472;
    }

    v305 = v304;
LABEL_464:
    v306 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_10_18();
      if (!v133)
      {
        objc_enumerationMutation(objb);
      }

      videoPreviewSinkConnectionConfiguration = *(8 * v306);
      if ([objc_msgSend(videoPreviewSinkConnectionConfiguration "sourceConfiguration")] == 13 && objc_msgSend(objc_msgSend(videoPreviewSinkConnectionConfiguration, "sinkConfiguration"), "sinkType") == 11)
      {
        break;
      }

      if (v305 == ++v306)
      {
        OUTLINED_FUNCTION_28_4();
        v305 = OUTLINED_FUNCTION_22_7(v307, v308, v309, v310, v311, v312, v313, v314, v339, v342, v347, v349, v352, v354, v357, v360, v363, v367, v370, v372, v377, v380, v382, v385, v389, v392, v394, v398, v400, v403, v406, v409, objb);
        if (v305)
        {
          goto LABEL_464;
        }

        goto LABEL_471;
      }
    }

    if (!videoPreviewSinkConnectionConfiguration)
    {
      goto LABEL_471;
    }

    v316 = [FigCaptureSessionParsedLiDARDepthPipelineConfiguration alloc];
    [(FigCaptureConnectionConfiguration *)v421 sourceConfiguration];
    [array11 addObject:{objc_msgSend(OUTLINED_FUNCTION_4(), "initWithTimeOfFlightCameraConfiguration:depthDataConnectionConfiguration:")}];
  }

  else
  {
    array11 = 0;
  }

  OUTLINED_FUNCTION_25_6();
  v325 = OUTLINED_FUNCTION_22_7(v317, v318, v319, v320, v321, v322, v323, v324, v339, v342, v347, v349, v352, v354, v357, v360, v363, v367, v370, v372, v377, v380, v382, v385, v389, v392, v394, v398, v400, v403, v406, v409, objb);
  v91 = v386;
  if (v325)
  {
    v326 = v325;
    v327 = 0;
    v328 = MEMORY[0];
LABEL_482:
    v329 = 0;
    while (1)
    {
      if (MEMORY[0] != v328)
      {
        objc_enumerationMutation(obj);
      }

      v330 = *(8 * v329);
      if ([objc_msgSend(v330 "sourceConfiguration")] != 1)
      {
        break;
      }

      v327 |= [objc_msgSend(v330 "sinkConfiguration")] == 4;
      if (v326 == ++v329)
      {
        OUTLINED_FUNCTION_25_6();
        v326 = OUTLINED_FUNCTION_22_7(v331, v332, v333, v334, v335, v336, v337, v338, v340, v343, v345, v350, v351, v355, v358, v361, v364, v366, v369, v373, v375, v379, v383, v386, v388, v391, v395, v397, v401, v404, v407, v410, obj);
        if (v326)
        {
          goto LABEL_482;
        }

        v88 = v364;
        v90 = v404;
        if (v327)
        {
          v92 = 40;
          goto LABEL_490;
        }

        goto LABEL_480;
      }
    }
  }

  v88 = v364;
  v90 = v404;
LABEL_480:
  *(v351 + 48) = [obj copy];
  *(v351 + 56) = [v417 copy];
  *(v351 + 64) = v345;
  *(v351 + 72) = [v423 copy];
  *(v351 + 80) = [v91 copy];
  *(v351 + 88) = [v366 copy];
  *(v351 + 96) = [v90 copy];
  *(v351 + 104) = [array3 copy];
  *(v351 + 112) = [v88 copy];
  *(v351 + 120) = [v87 copy];
  *(v351 + 128) = [v369 copy];
  *(v351 + 136) = [v397 copy];
  *(v351 + 144) = [v375 copy];
  *(v351 + 152) = [v379 copy];
  *(v351 + 160) = [v388 copy];
  *(v351 + 168) = [v391 copy];
  *(v351 + 184) = [array10 copy];
  *(v351 + 176) = [array11 copy];
  [(FigCaptureSessionParsedConfiguration *)v351 _computeVideoStabilizationTypes];
  return v498;
}

- (void)initWithSessionConfiguration:(int)a1 clientSetsUserInitiatedCaptureRequestTime:(void *)a2 restrictions:.cold.1(int a1, void *a2)
{
  fig_log_get_emitter();
  v5 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v2, v6, v7, v8, v9, vars0, vars8);
}

@end