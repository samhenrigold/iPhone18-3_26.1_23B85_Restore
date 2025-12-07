uint64_t FigCaptureCompressedPixelFormatForPixelFormat(uint64_t a1, int a2, unsigned int a3)
{
  v5 = a1;
  if (!FigCapturePixelFormatIsYCbCr(a1))
  {
    if (v5 <= 792872768)
    {
      if (v5 != 641877825)
      {
        v11 = 759318337;
LABEL_31:
        if (v5 != v11)
        {
          return v5;
        }
      }
    }

    else if (v5 != 792872769 && v5 != 2084718401)
    {
      v11 = 1111970369;
      goto LABEL_31;
    }

    if (a2 != 4 || a3 >= 4)
    {
      return v5;
    }

    v15 = "AGB&AGB-AGB/AGB|";
    return *&v15[4 * a3];
  }

  v6 = FigCapturePixelFormatIs422(v5);
  v7 = FigCapturePixelFormatIs444(v5);
  IsTenBit = FigCapturePixelFormatIsTenBit(v5);
  v9 = 1;
  if (v5 > 1751527983)
  {
    if (v5 == 1751527984)
    {
      goto LABEL_13;
    }

    v10 = 2087216688;
  }

  else
  {
    if (v5 == 761816624)
    {
      goto LABEL_13;
    }

    v10 = 795371056;
  }

  if (v5 != v10)
  {
    v9 = 0;
  }

LABEL_13:
  IsFullRange = FigCapturePixelFormatIsFullRange(v5);
  if ((v7 & IsTenBit) == 1)
  {
    if (a2 == 4 && !a3)
    {
      if (IsFullRange)
      {
        return 645424692;
      }

      else
      {
        return 645428788;
      }
    }

    return v5;
  }

  if ((v6 & IsTenBit) == 1)
  {
    v14 = a2 == 4 && a3 < 4;
    if (IsFullRange)
    {
      if (!v14)
      {
        return v5;
      }

      v15 = "2fx&2fx-2fx/2fx|2vx&2vx-2vx/2vx|0fx&0fx-0fx/0fx|0vx&0vx-0vx/0vx|02fh0fh-0fh/0fh|0f8&0f8-0f8/0f8|0v8&0v8-0v8/0v8|AGB&AGB-AGB/AGB|";
    }

    else
    {
      if (!v14)
      {
        return v5;
      }

      v15 = "2vx&2vx-2vx/2vx|0fx&0fx-0fx/0fx|0vx&0vx-0vx/0vx|02fh0fh-0fh/0fh|0f8&0f8-0f8/0f8|0v8&0v8-0v8/0v8|AGB&AGB-AGB/AGB|";
    }

    return *&v15[4 * a3];
  }

  if (IsTenBit)
  {
    if (IsFullRange)
    {
      switch(a2)
      {
        case 1:
          return 1534617136;
        case 4:
          if (a3 >= 4)
          {
            return v5;
          }

          v15 = "0fx&0fx-0fx/0fx|0vx&0vx-0vx/0vx|02fh0fh-0fh/0fh|0f8&0f8-0f8/0f8|0v8&0v8-0v8/0v8|AGB&AGB-AGB/AGB|";
          return *&v15[4 * a3];
        case 2:
          return 2105042480;
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          return 1534621232;
        case 4:
          if (a3 >= 4)
          {
            return v5;
          }

          v15 = "0vx&0vx-0vx/0vx|02fh0fh-0fh/0fh|0f8&0f8-0f8/0f8|0v8&0v8-0v8/0v8|AGB&AGB-AGB/AGB|";
          return *&v15[4 * a3];
        case 2:
          return 2105046576;
      }
    }

    return v5;
  }

  if (v9)
  {
    if (a2 != 4 || a3 >= 4)
    {
      return v5;
    }

    v15 = "02fh0fh-0fh/0fh|0f8&0f8-0f8/0f8|0v8&0v8-0v8/0v8|AGB&AGB-AGB/AGB|";
    return *&v15[4 * a3];
  }

  if (IsFullRange)
  {
    switch(a2)
    {
      case 1:
        return 1530422832;
      case 4:
        if (a3 >= 4)
        {
          return v5;
        }

        v15 = "0f8&0f8-0f8/0f8|0v8&0v8-0v8/0v8|AGB&AGB-AGB/AGB|";
        return *&v15[4 * a3];
      case 2:
        return 2100848176;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        return 1530426928;
      case 4:
        if (a3 >= 4)
        {
          return v5;
        }

        v15 = "0v8&0v8-0v8/0v8|AGB&AGB-AGB/AGB|";
        return *&v15[4 * a3];
      case 2:
        return 2100852272;
    }
  }

  return v5;
}

uint64_t FigCapturePixelFormatIs444(int a1)
{
  result = 1;
  if (a1 <= 1714630711)
  {
    if (a1 <= 645411895)
    {
      if (a1 > 645101103)
      {
        if (a1 <= 645162547)
        {
          if ((a1 - 645101104) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
          {
            return result;
          }

          v7 = 13427;
        }

        else
        {
          if (a1 > 645279799)
          {
            if (a1 == 645279800 || a1 == 645280312)
            {
              return result;
            }

            v3 = 645280824;
            goto LABEL_100;
          }

          if (a1 == 645162548)
          {
            return result;
          }

          v7 = 30260;
        }

        v3 = v7 | 0x26740000;
        goto LABEL_100;
      }

      if (a1 > 644232303)
      {
        if (a1 > 645084274)
        {
          if (a1 == 645084275)
          {
            return result;
          }

          v3 = 645097012;
        }

        else
        {
          if (a1 == 644232304)
          {
            return result;
          }

          v3 = 644376116;
        }

        goto LABEL_100;
      }

      if (a1 == 640955504 || a1 == 641230388)
      {
        return result;
      }

      v3 = 641234484;
    }

    else
    {
      if (a1 <= 1530426931)
      {
        if (a1 > 645429043)
        {
          if (a1 > 875836533)
          {
            if (a1 == 875836534)
            {
              return result;
            }

            v3 = 1530422836;
          }

          else
          {
            if (a1 == 645429044)
            {
              return result;
            }

            v3 = 875836518;
          }
        }

        else
        {
          if (a1 > 645424691)
          {
            if (a1 == 645424692)
            {
              return result;
            }

            v4 = 30260;
          }

          else
          {
            if (a1 == 645411896)
            {
              return result;
            }

            v4 = 13427;
          }

          v3 = v4 | 0x26780000;
        }

        goto LABEL_100;
      }

      if (a1 <= 1534621235)
      {
        if (a1 > 1534359091)
        {
          if (a1 == 1534359092)
          {
            return result;
          }

          v3 = 1534617140;
        }

        else
        {
          if (a1 == 1530426932)
          {
            return result;
          }

          v3 = 1534354996;
        }

        goto LABEL_100;
      }

      if (a1 <= 1563981363)
      {
        if (a1 == 1534621236)
        {
          return result;
        }

        v3 = 1563977268;
        goto LABEL_100;
      }

      if (a1 == 1563981364 || a1 == 1568171572)
      {
        return result;
      }

      v3 = 1568175668;
    }

LABEL_100:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 1983066167)
  {
    if (a1 <= 2019963955)
    {
      if (a1 > 2016687155)
      {
        if (a1 > 2016698679)
        {
          if (a1 == 2016698680)
          {
            return result;
          }

          v6 = 24947;
        }

        else
        {
          if (a1 == 2016687156)
          {
            return result;
          }

          v6 = 13424;
        }

        v3 = v6 | 0x78340000;
      }

      else
      {
        if (a1 > 1983131951)
        {
          if (a1 == 1983131952)
          {
            return result;
          }

          v5 = 24888;
        }

        else
        {
          if (a1 == 1983066168)
          {
            return result;
          }

          v5 = 12344;
        }

        v3 = v5 | 0x76340000;
      }

      goto LABEL_100;
    }

    if (a1 <= 2033463351)
    {
      if (a1 > 2021078067)
      {
        if (a1 == 2021078068)
        {
          return result;
        }

        v3 = 2021078128;
      }

      else
      {
        if (a1 == 2019963956)
        {
          return result;
        }

        v3 = 2019964016;
      }

      goto LABEL_100;
    }

    if (a1 <= 2105042483)
    {
      if (a1 == 2033463352)
      {
        return result;
      }

      v3 = 2033463606;
      goto LABEL_100;
    }

    if (a1 == 2105042484 || a1 == 2105046580)
    {
      return result;
    }

    v3 = 2105046836;
    goto LABEL_100;
  }

  if (a1 <= 1916022839)
  {
    if (a1 > 1886676531)
    {
      if (a1 > 1886680883)
      {
        if (a1 == 1886680884)
        {
          return result;
        }

        v3 = 1886860340;
      }

      else
      {
        if (a1 == 1886676532)
        {
          return result;
        }

        v3 = 1886680628;
      }
    }

    else if (a1 > 1882469427)
    {
      if (a1 == 1882469428)
      {
        return result;
      }

      v3 = 1885746228;
    }

    else
    {
      if (a1 == 1714630712)
      {
        return result;
      }

      v3 = 1751528500;
    }

    goto LABEL_100;
  }

  if (a1 <= 1937126451)
  {
    if (a1 > 1932812658)
    {
      if (a1 == 1932812659)
      {
        return result;
      }

      v3 = 1936077876;
    }

    else
    {
      if (a1 == 1916022840)
      {
        return result;
      }

      v3 = 1916036716;
    }

    goto LABEL_100;
  }

  if (a1 <= 1952855091)
  {
    if (a1 == 1937126452)
    {
      return result;
    }

    v3 = 1949589875;
    goto LABEL_100;
  }

  if (a1 != 1952855092 && a1 != 1953903668)
  {
    v3 = 1953969204;
    goto LABEL_100;
  }

  return result;
}

uint64_t FigCapturePixelFormatIs16Bit(int a1)
{
  result = 1;
  if (a1 > 1751527983)
  {
    if (a1 == 1751527984)
    {
      return result;
    }

    v3 = 2087216688;
  }

  else
  {
    if (a1 == 761816624)
    {
      return result;
    }

    v3 = 795371056;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

void *cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DF20];
    if (a2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
      if (a3)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInt:a3];
      }

      else
      {
        v7 = 0;
      }

      return [v5 dictionaryWithObjectsAndKeys:{v4, @"SectionID", v6, @"SettingsID", v7, @"ErrorStatus", 0}];
    }

    else
    {
      if (a3)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInt:a3];
      }

      else
      {
        v8 = 0;
      }

      return [v5 dictionaryWithObjectsAndKeys:{v4, @"SectionID", v8, @"ErrorStatus", 0, v9, v10}];
    }
  }

  return result;
}

FigCaptureMetadataSinkPipelineConfiguration *captureSession_createMetadataSinkPipelineConfiguration(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v31 = 0;
  v7 = [a2 metadataObjectConnectionConfiguration];
  v8 = [a2 sceneClassifierConnectionConfiguration];
  v9 = [v7 sourceConfiguration];
  v10 = [a2 videoDataConnectionConfiguration];
  v11 = [a2 movieFileVideoConnectionConfiguration];
  v12 = [a2 videoPreviewSinkConnectionConfiguration];
  v13 = [a2 movieFileDetectedObjectMetadataConnectionConfigurations];
  v14 = objc_alloc_init(FigCaptureMetadataSinkPipelineConfiguration);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setPrimaryCameraConfiguration:v7];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setPrimaryVideoConnectionConfiguration:v10];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setVideoConnectionConfigurations:v8];
  IsCameraOrDerivativeRunningInPhotoMode = captureSession_clientIsCameraOrDerivativeRunningInPhotoMode(a1);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setMrcLowPowerModeEnabled:?];
  shouldUseSceneClassifierToGateMetadataDetection = captureSession_shouldUseSceneClassifierToGateMetadataDetection(a1, v8, v7);
  v17 = [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setUseSceneClassifierToGateMetadataDetection:?];
  v19 = BWInferenceSmartCameraCurrentVersion(v17, v18);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setSmartCameraPipelineVersion:?];
  isIrisMovieVitalityScoringEnabled = cs_isIrisMovieVitalityScoringEnabled([v11 irisSinkConfiguration]);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setVitalityScoringEnabled:?];
  -[FigCapturePreviewSinkPipelineConfiguration setSourcePixelFormatIsFullRange:](v14, [objc_msgSend(v7 "sinkConfiguration")]);
  -[FigCaptureMetadataSinkPipelineConfiguration setPreviewEnabled:](v14, [v12 enabled]);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setMotionAttachmentsSource:v4];
  v21 = [v9 lensSmudgeDetectionEnabled];
  if (v9)
  {
    objc_msgSend_lensSmudgeDetectionInterval(v9);
  }

  else
  {
    memset(v29, 0, 24);
  }

  v22 = (*v29 << 24) | (v29[4] << 56);
  *v30 = *&v29[5];
  *&v30[15] = *&v29[20];
  v29[0] = v21;
  *&v29[1] = v22;
  *&v29[9] = *v30;
  *&v29[24] = *&v30[15];
  v23 = [v11 videoStabilizationType];
  v24 = [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v23];
  [(FigCaptureCameraSourcePipelineConfiguration *)v14 setStrictDepthModePreferred:?];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setDepthDataConnectionConfiguration:v13];
  if ([objc_msgSend(v7 "sourceConfiguration")] && (IntAttribute = FigCaptureSourceGetIntAttribute(objc_msgSend(objc_msgSend(v7, "sourceConfiguration"), "source"), @"PearlModuleType", &v31), -[FigCaptureCameraSourcePipelineConfiguration setRGBIRStereoFusionMinDepthThresholdMM:](v14, IntAttribute), v31))
  {
    captureSession_createMetadataSinkPipelineConfiguration_cold_1();
  }

  else
  {
    -[FigCaptureMetadataSinkPipelineConfiguration setInputRotationRelativeToSource:](v14, [v12 transform] >> 32);
    -[FigCaptureMetadataSinkPipelineConfiguration setCompressed8BitInputEnabled:](v14, [v10 videoStabilizationType] == 4);
  }

  v26 = v31;
  if (a4)
  {
    *a4 = v31;
  }

  if (v26)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t captureSession_clientIsCameraOrDerivativeRunningInPhotoMode(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v3 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_87_2() "requiredFormat")];
  v4 = *(v1 + 399);
  v5 = v4 | captureSession_clientIsCameraOrDerivative(a1);
  if (!v3)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

BOOL captureSession_shouldUseSceneClassifierToGateMetadataDetection(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    if ((captureSession_clientIsVisualIntelligenceCamera(a1) & 1) != 0 || ([a3 sourceConfiguration], captureSession_clientIsCameraOrDerivativeRunningInPhotoMode(a1)))
    {
      v6 = [a3 metadataIdentifiers];
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v7 = *off_1E798D0E8;
      v12[0] = *MEMORY[0x1E69629B8];
      v12[1] = v7;
      v12[2] = *off_1E798D120;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __captureSession_shouldUseSceneClassifierToGateMetadataDetection_block_invoke;
      v11[3] = &unk_1E7998D10;
      v11[4] = v8;
      v11[5] = &v13;
      v9 = [v6 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v11)}];
      v3 = *(v14 + 24) == 1 && [v9 count] == 0;
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t __captureSession_shouldUseSceneClassifierToGateMetadataDetection_block_invoke(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) containsObject:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return 0;
  }

  else
  {

    return [a2 hasPrefix:@"mdta/com.apple.quicktime.detected-machine-readable-code."];
  }
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresMRCNode(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 metadataIdentifiers];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_msgSend_isEqualToString_(v6) & 1) == 0 && ([v6 hasPrefix:@"mdta/com.apple.quicktime.detected-machine-readable-code."])
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresTextLocalization(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D120;

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMainScreenDimensions(int a1)
{
  v2 = MGGetSInt32Answer();
  v3 = MGGetSInt32Answer();
  v4 = v3 > v2;
  v5 = (a1 & v4) == 0;
  if ((a1 & v4) != 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (v5)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  return v7 | (v6 << 32);
}

uint64_t getFTBipartiteMatcherClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTBipartiteMatcherClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTBipartiteMatcherClass_softClass;
  if (!getFTBipartiteMatcherClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTBipartiteMatcherClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTBipartiteMatcherClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC96BF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FigCaptureBuildObjectDetectionPipeline(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BWFaceDetectionNode **a6, double a7, double a8, double a9, double a10)
{
  v20 = 0;
  v18 = [[BWFaceDetectionNode alloc] initWithObjectMetadataIdentifiers:a2 movieFileOutputMetadataIdentifierGroups:a3];
  [(BWNode *)v18 setName:@"Face Detection"];
  [(BWFaceDetectionNode *)v18 setRectOfInterest:a7, a8, a9, a10];
  [(BWFaceDetectionNode *)v18 setEmitsEmptyObjectDetectionMetadata:a4];
  if ([a1 addNode:v18 error:&v20])
  {
    if (([objc_msgSend(a1 "graph")] & 1) == 0)
    {
      FigCaptureBuildObjectDetectionPipeline_cold_2();
    }
  }

  else
  {
    FigCaptureBuildObjectDetectionPipeline_cold_1();
  }

  *a6 = v18;
  result = v20;
  if (v20)
  {
    return [v20 code];
  }

  return result;
}

uint64_t FigCaptureClientIsRunningInCameracaptured(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopySigningIdentifier(v3, 0);
  if (objc_msgSend_isEqualToString_(v5))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v5);
  }

  CFRelease(v4);
  return isEqualToString;
}

void OUTLINED_FUNCTION_189(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t a1), void *a14, uint64_t a15, void *a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, char a38, char a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{

  [(BWPhotonicEngineNode *)v53 _emitError:v55 stillImageSettings:v56 metadata:v54 description:a1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53];
}

FigCaptureMovieFileSinkPipelineConfiguration *captureSession_createMovieFileSinkPipelineConfigurationFromParsedConfiguration(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  v9 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = [a2 primaryVideoConnectionConfiguration];
  v109 = DerivedStorage;
  v114 = *(DerivedStorage + 784);
  v15 = [v114 cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v14, "sourceConfiguration"), "sourceID")}];
  v16 = objc_alloc_init(FigCaptureMovieFileSinkPipelineConfiguration);
  [v14 sourceConfiguration];
  v17 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v17 setPrimaryCameraConfiguration:v18];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setPrimaryVideoConnectionConfiguration:v14];
  [a2 videoConnectionConfigurations];
  v19 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v19 setVideoConnectionConfigurations:v20];
  [a2 audioConnectionConfiguration];
  v21 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v21 setAudioConnectionConfiguration:v22];
  [a2 depthDataConnectionConfiguration];
  v23 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v23 setDepthDataConnectionConfiguration:v24];
  [a2 detectedObjectMetadataConnectionConfigurations];
  v25 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v25 setDetectedObjectMetadataConnectionConfigurations:v26];
  [a2 cameraDebugInfoMetadataConnectionConfiguration];
  v27 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v27 setCameraDebugInfoMetadataConnectionConfiguration:v28];
  [a2 stillImageConnectionConfiguration];
  v29 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v29 setStillImageConnectionConfiguration:v30];
  v111 = a2;
  [a2 sceneClassifierConnectionConfiguration];
  v31 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v31 setSceneClassifierConnectionConfiguration:v32];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setVideoSourceCaptureTransform:a3, a4];
  v33 = [(FigCaptureCameraSourcePipeline *)v15 videoCaptureDimensionsWithoutOverscan];
  LOBYTE(a4) = [objc_msgSend(v14 "irisSinkConfiguration")];
  v34 = [-[FigCaptureMovieFileSinkPipelineConfiguration audioConnectionConfiguration](v16) audioCaptureMode] == 2;
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setCinematicAudioEnabled:?];
  v35 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")];
  v36 = HIDWORD(v35);
  v37 = v35 == 3840 && v36 == 2160 || v35 == 2160 && v36 == 3840;
  v39 = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) videoStabilizationStrength];
  if ([-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) cinematicFramingEnabled])
  {
    v40 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")];
    if (![objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")])
    {
      v42 = HIDWORD(v40);
      goto LABEL_23;
    }

    v41 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")];
    goto LABEL_21;
  }

  if ([v14 irisVISEnabled])
  {
    LODWORD(v40) = [v14 outputWidth];
    v42 = [v14 outputHeight];
    goto LABEL_23;
  }

  if (v39 > 2 && v37)
  {
    v41 = cs_actionCamera2p8kOutputDimensions(v39);
LABEL_21:
    v42 = HIDWORD(v41);
    LODWORD(v40) = v41;
    goto LABEL_23;
  }

  v42 = v33 >> 32;
  LODWORD(v40) = v33;
LABEL_23:
  v44 = [v14 videoStabilizationType];
  [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v44];
  v45 = OUTLINED_FUNCTION_26_13();
  v47 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v45 setBoxedMetadataPostVISEnabled:v46];
  v49 = BWInferenceSmartCameraCurrentVersion(v47, v48);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartCameraPipelineVersion:?];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setOfflineVISEnabled:?];
  cs_getPortTypesWithGDCInVIS(v15);
  v50 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v50 setPortTypesWithGeometricDistortionCorrectionInVISEnabled:v51];
  cs_isIrisMovieVitalityScoringEnabled([v14 irisSinkConfiguration]);
  v52 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v52 setVitalityScoringEnabled:v53];
  v54 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 primaryCameraConfiguration];
  cs_shouldEnableOverCapture(v54);
  v55 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v55 setCaptureDeviceHasOverCaptureEnabled:v56];
  if ([(FigCaptureMovieFileSinkPipelineConfiguration *)v16 captureDeviceHasOverCaptureEnabled])
  {
    v57 = [objc_msgSend(v14 "irisSinkConfiguration")];
  }

  else
  {
    v57 = 0;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setOverCaptureEnabled:v57];
  if ([objc_msgSend(v14 "sourceConfiguration")])
  {
    v58 = [(FigCaptureCameraSourcePipeline *)v15 depthType]!= 0;
  }

  else
  {
    v58 = 0;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setDepthDataDeliveryEnabled:v58];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setFrameReconstructionEnabled:?];
  [objc_msgSend(v14 "irisSinkConfiguration")];
  v59 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v59 setSemanticStyleRenderingEnabled:v60];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartStyleRenderingEnabled:v9];
  if ([(FigCaptureMovieFileSinkPipelineConfiguration *)v16 smartStyleRenderingEnabled])
  {
    v61 = [objc_msgSend(v14 "irisSinkConfiguration")];
  }

  else
  {
    v61 = 0;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartStyleReversibilityEnabled:v61];
  v62 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 primaryCameraConfiguration];
  if ([v62 cinematicFramingEnabled])
  {
    v63 = 2;
  }

  else if ([v62 manualCinematicFramingEnabled])
  {
    v63 = 2;
  }

  else
  {
    v63 = 1;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartStyleRenderingMethod:v63];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setIspFastSwitchEnabled:a8];
  [objc_msgSend(v14 "movieFileSinkConfiguration")];
  v64 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v64 setTrueVideoCaptureEnabled:v65];
  v107 = v15;
  v106 = v37;
  v70 = v14 && (v66 = [v14 sourceConfiguration], FigCapturePlatformIdentifier() >= 11) && (v67 = objc_msgSend(objc_msgSend(v66, "requiredFormat"), "dimensions"), (HIDWORD(v67) * v67) >= 0x7E9000) && (v68 = objc_msgSend(v66, "requiredMaxFrameRate"), FigCaptureFrameRateAsInt(v68, v69) >= 60) && objc_msgSend(v14, "videoStabilizationType") == 4;
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setLowResImageUsedByVideoEncoderEnabled:v70];
  v71 = [MEMORY[0x1E695DF90] dictionary];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v113 = v16;
  v72 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 videoConnectionConfigurations];
  v73 = [v72 countByEnumeratingWithState:&v118 objects:v117 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v119;
    v110 = v40 | (v42 << 32);
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v119 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v118 + 1) + 8 * i);
        v78 = [v77 connectionID];
        v79 = objc_alloc_init(FigCaptureMovieFileSinkPipelineVISConfiguration);
        v80 = [v114 cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v77, "sourceConfiguration"), "sourceID")}];
        [v77 videoStabilizationType];
        v81 = OUTLINED_FUNCTION_10_29();
        [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v81 setVideoStabilizationType:v82];
        [objc_msgSend(v77 "sourceConfiguration")];
        v83 = OUTLINED_FUNCTION_10_29();
        [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v83 setVideoStabilizationStrength:v84];
        [(FigCaptureCameraSourcePipeline *)v80 motionAttachmentsSource];
        v85 = OUTLINED_FUNCTION_10_29();
        [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v85 setMotionAttachmentsSource:v86];
        if (v77 == v14)
        {
          [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v79 setVisOutputDimensions:v110];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 primaryCameraConfiguration];
          if ([objc_msgSend(objc_msgSend(v111 "stillImageConnectionConfiguration")])
          {
            v89 = 0.1;
          }

          else
          {
            v89 = 0.0;
          }

          [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v79 setVideoStabilizationOverscanOverride:v89];
          if ([objc_msgSend(v14 "movieFileSinkConfiguration")])
          {
            os_unfair_lock_lock((v109 + 868));
            [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v79 setVisProcessingSemaphore:?];
            os_unfair_lock_unlock((v109 + 868));
          }
        }

        else
        {
          [(FigCaptureCameraSourcePipeline *)v80 videoCaptureDimensionsWithoutOverscan];
          v87 = OUTLINED_FUNCTION_10_29();
          [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v87 setVisOutputDimensions:v88];
        }

        -[FigCaptureMovieFileSinkPipelineVISConfiguration setVisGeneratedTransformsOutputDimensionsOverride:](v79, [objc_msgSend(objc_msgSend(v14 "sourceConfiguration")] | (objc_msgSend(objc_msgSend(objc_msgSend(v14, "sourceConfiguration"), "requiredFormat"), "videoStabilizationGeneratedTransformsOutputHeightOverride") << 32));
        [v71 setObject:v79 forKeyedSubscript:v78];
      }

      v74 = OUTLINED_FUNCTION_73_3(v90, v91, &v118, v117);
    }

    while (v74);
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 setVisConfigurationsByConnectionID:v71];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 setClientApplicationID:?];
  if (v14)
  {
    [objc_msgSend(objc_msgSend(v14 "sourceConfiguration")];
    v92 = [OUTLINED_FUNCTION_4() movieFileMaxLossyCompressionLevelForPixelFormat:?];
    [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 setMaxLossyCompressionLevel:v92];
  }

  if ([(FigCaptureMovieFileSinkPipelineConfiguration *)v113 primaryCameraConfiguration])
  {
    v93 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v113) "requiredFormat")];
    if ((v106 & FigCapturePixelFormatIsUsedForProRes(v93)) == 1)
    {
      v94 = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v113) requiredMaxFrameRate];
      if (FigCaptureFrameRateAsInt(v94, v95) <= 60)
      {
        v97 = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v113) requiredMaxFrameRate];
        if (FigCaptureFrameRateAsInt(v97, v98) <= 30)
        {
          v96 = 419430400;
        }

        else
        {
          v96 = 524288000;
        }
      }

      else
      {
        v96 = 629145600;
      }
    }

    else
    {
      v96 = 419430400;
    }

    [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 setMaximumAllowedInFlightCompressedBytes:v96];
  }

  [v107 sourceID];
  v99 = [OUTLINED_FUNCTION_4() cinematographyPipelineWithSourceID:?];
  if (v99)
  {
    [(FigCaptureCinematographyPipeline *)v99 depthOutputDimensions];
    v100 = OUTLINED_FUNCTION_44_11();
    [(FigCaptureMovieFileSinkPipelineConfiguration *)v100 setDepthOutputDimensions:v101];
  }

  v116[0] = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v113) lensSmudgeDetectionEnabled];
  v102 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 primaryCameraConfiguration];
  if (v102)
  {
    objc_msgSend_lensSmudgeDetectionInterval(v102);
  }

  else
  {
    memset(&v116[4], 0, 24);
  }

  v115[0] = *v116;
  *(v115 + 12) = *&v116[12];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 setLensSmudgeDetectionConfiguration:v115];
  if (a6)
  {
    v103 = 0;
  }

  else
  {
    v103 = cs_shouldEnableLowLatencyStabilization(v14);
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 setLowLatencyStabilizationEnabled:v103];
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw([objc_msgSend(objc_msgSend(v14 "sourceConfiguration")]);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v113 setProResRawCaptureEnabled:?];
  return v113;
}

uint64_t __captureSourceRemote_copyClock_block_invoke(uint64_t a1, int64_t a2, uint64_t a3, _DWORD *a4, int64_t *a5, int64_t *a6)
{
  xdict = 0;
  v11 = captureSourceRemote_createBasicMessage(*(a1 + 40), 1667460203, &xdict);
  if (v11)
  {
    v16 = v11;
    __captureSourceRemote_copyClock_block_invoke_cold_1();
  }

  else
  {
    xpc_dictionary_set_mach_send();
    xpc_dictionary_set_int64(xdict, kFigCaptureSourceRemoteCopyClockMessagePayload_ClientClockToken, a2);
    v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v12)
    {
      v16 = v12;
      __captureSourceRemote_copyClock_block_invoke_cold_2();
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, kFigCaptureSourceServerCopyClockMessagePayload_ClockObjectToken);
      v14 = xpc_dictionary_get_int64(0, kFigCaptureSourceServerCopyClockMessagePayload_ClockTimeoutToken);
      v15 = xpc_dictionary_copy_mach_send();
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_int64(0, kFigCaptureSourceServerCopyClockMessagePayload_ClockType);
      if (int64)
      {
        v16 = 0;
      }

      else
      {
        v16 = 1315914603;
      }

      *a4 = v15;
      *a5 = int64;
      *a6 = v14;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

void *cs_getPortTypesWithGDCInVIS(uint64_t a1)
{
  v2 = [(FigCaptureCameraSourcePipeline *)a1 portTypesWithGeometricDistortionCorrectionOnPreviewOutputsEnabled];
  v3 = [(FigCaptureCameraSourcePipeline *)a1 portTypesWithGeometricDistortionCorrectionOnVideoCaptureOutputsEnabled];
  v4 = [MEMORY[0x1E695DF70] array];
  if ([-[FigCaptureCameraSourcePipeline captureDevice](a1) stereoVideoCaptureEnabled])
  {
    [v4 addObjectsFromArray:{objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](a1), "activePortTypes")}];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (([v3 containsObject:v9] & 1) == 0)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

uint64_t captureSourceServer_handleCopyClockMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v26 = 0;
  v27 = 0;
  cf = 0;
  v6 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &v26);
  if (v6)
  {
    v17 = v6;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, 0, v24, cf, v26, v27);
    v7 = v26;
    goto LABEL_14;
  }

  v7 = v26;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v17 = 4294954514;
LABEL_12:
    OUTLINED_FUNCTION_2_118();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17);
    goto LABEL_14;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = v8(v7, 0x1F21A0A30, *MEMORY[0x1E695E480], &cf);
  if (v10)
  {
    v17 = v10;
    goto LABEL_12;
  }

  v11 = [cf intValue];
  v13 = v11;
  if (v11 != 2)
  {
LABEL_13:
    xpc_dictionary_set_int64(a3, kFigCaptureSourceServerCopyClockMessagePayload_ClockObjectToken, 0);
    v18 = kFigCaptureSourceServerCopyClockMessagePayload_ClockTimeoutToken;
    ServerTimeoutToken = FigRemote_GetServerTimeoutToken();
    xpc_dictionary_set_int64(a3, v18, ServerTimeoutToken);
    xpc_dictionary_set_mach_send();
    xpc_dictionary_set_int64(a3, kFigCaptureSourceServerCopyClockMessagePayload_ClockType, v13);
    v17 = 0;
    goto LABEL_14;
  }

  if (FigCaptureAudiomxdSupportEnabled(v11, v12))
  {
    v17 = 4294954509;
    goto LABEL_14;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v17 = 4294954514;
    goto LABEL_12;
  }

  v15 = v14(v7, @"Clock", v9, &v27);
  if (v15)
  {
    v17 = v15;
    goto LABEL_12;
  }

  if (!v27)
  {
    goto LABEL_13;
  }

  xpc_dictionary_copy_mach_send();
  xpc_dictionary_get_int64(a2, kFigCaptureSourceRemoteCopyClockMessagePayload_ClientClockToken);
  xpc_connection_get_pid(a1);
  WrapperForClockWithManualCommandPortSendRightInsertion = FigAudioDeviceClockServer_MakeWrapperForClockWithManualCommandPortSendRightInsertion();
  if (!WrapperForClockWithManualCommandPortSendRightInsertion)
  {
    goto LABEL_13;
  }

  v17 = WrapperForClockWithManualCommandPortSendRightInsertion;
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_14:
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v17;
}

uint64_t captureSession_buildGraphWithConfiguration_cold_22()
{
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v7, v8, v9, v10, v11, vars0, vars8);
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x3936, v0, v1, v2, v6);
  return OUTLINED_FUNCTION_28_11(v3);
}

id *cs_shouldConvertToBT2020(id *result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](result) format];
    result = FigCapturePixelFormatIsTenBit(v4);
    if (result)
    {
      v5 = [-[FigCaptureCameraSourcePipeline videoOutputColorInfo](v3) objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
      result = objc_msgSend_isEqualToString_(v5);
      if (result)
      {
        v6 = [-[FigCaptureCameraSourcePipeline videoOutputColorInfo](v3) objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
        LODWORD(result) = objc_msgSend_isEqualToString_(v6);
        if (a2 == 2)
        {
          return result;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *cs_shouldEnableVideoGreenGhostMitigation(void *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v5 = a1;
  [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  v3 = [OUTLINED_FUNCTION_4() videoStabilizationMethods:? includeIris:?];
  if ([v3 containsObject:&unk_1F2244D70])
  {
    return [a1 videoGreenGhostMitigationEnabled];
  }

  if ([v3 containsObject:&unk_1F2244D88])
  {
    return [a1 videoGreenGhostMitigationEnabled];
  }

  result = [v3 containsObject:&unk_1F2244DA0];
  if (result)
  {
    return [a1 videoGreenGhostMitigationEnabled];
  }

  return result;
}

id FigCaptureBuildSceneClassifierPipeline(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, BWSceneClassifierSinkNode **a12)
{
  HIDWORD(v64) = a6;
  v66 = a3;
  v67 = a5;
  v17 = 0;
  v71 = 0;
  v62 = a11;
  if (a11)
  {
    v17 = [MEMORY[0x1E695DF70] array];
  }

  if (a10)
  {
    v18 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v18 = 0;
  }

  v19 = FigCaptureCreateAndConfigureSmartCameraInferenceNode(a4, v66 & 0xFFFFFFFFFFFFLL, a8, a9, *a7);
  if (!v19)
  {
    goto LABEL_36;
  }

  v20 = v19;
  if (([OUTLINED_FUNCTION_3_91() addNode:v19 error:?] & 1) == 0)
  {
    goto LABEL_36;
  }

  v65 = a8;
  if (([objc_msgSend(a1 "graph")] & 1) == 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_4_82([a2 connection]);
  v21 = [(BWNode *)v20 output];
  if (*a7 != 1)
  {
    v22 = 0;
    v26 = a10;
    goto LABEL_17;
  }

  v22 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:a8 scheduler:a9 priority:a4];
  [(BWNode *)v22 setName:@"Lens Smudge Detection Inference Node"];
  v23 = [(BWInferenceConfiguration *)[BWLensSmudgeDetectionInferenceConfiguration alloc] initWithInferenceType:120];
  [(BWLensSmudgeDetectionInferenceConfiguration *)v23 setInferenceInputMediaKey:0x1F21AB210];
  [(BWInferenceConfiguration *)v23 setPriority:13];
  LODWORD(v24) = 5.0;
  [(BWInferenceConfiguration *)v23 setMaximumFramesPerSecond:v24];
  v25 = +[FigCaptureCameraParameters sharedInstance];
  if (![(FigCaptureCameraParameters *)v25 lensSmudgeDetectionVersion]|| (v26 = a10, [(BWInferenceNode *)v22 addInferenceOfType:120 version:BWInferenceVersionMakeMajor([(FigCaptureCameraParameters *)v25 lensSmudgeDetectionVersion]) & 0xFFFFFFFFFFFFLL configuration:v23]))
  {

    goto LABEL_36;
  }

  [(BWInferenceNode *)v22 setApplyRecommendedMasterPortType:1];
  if (!v22)
  {
LABEL_36:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v22 = 0;
    goto LABEL_29;
  }

  if (([OUTLINED_FUNCTION_3_91() addNode:v22 error:?] & 1) == 0)
  {
    goto LABEL_39;
  }

  [a1 graph];
  v27 = [(BWNode *)v22 input];
  if ((OUTLINED_FUNCTION_2_103(v27, v28, v29, v30, v31, v32, v33, v34, v59, v60, v61, a11, v64, v65, v66, v67) & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_4_82([(BWNodeOutput *)v21 connection]);
  v21 = [(BWNode *)v22 output];
LABEL_17:
  if (SHIDWORD(v64) >= 1)
  {
    v35 = (HIDWORD(v64) + 1);
    v36 = [[BWFanOutNode alloc] initWithFanOutCount:v35 mediaType:1986618469];
    [(BWNode *)v36 setName:@"Post Smart Camera Inferences Fan Out"];
    if ([OUTLINED_FUNCTION_3_91() addNode:v36 error:?])
    {
      [a1 graph];
      v37 = [(BWNode *)v36 input];
      if (OUTLINED_FUNCTION_2_103(v37, v38, v39, v40, v41, v42, v43, v44, v59, v60, v61, v62, v64, v65, v66, v67))
      {
        OUTLINED_FUNCTION_4_82([(BWNodeOutput *)v21 connection]);
        v21 = [(NSArray *)[(BWNode *)v36 outputs] objectAtIndexedSubscript:0];
        if (v17)
        {
          v45 = 1;
          do
          {
            [v17 addObject:{-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v36, "outputs"), "objectAtIndexedSubscript:", v45)}];
            [(BWFanOutNode *)v36 setDiscardsAttachedMedia:1 forOutputIndex:v45++];
          }

          while (v35 != v45);
        }

        goto LABEL_23;
      }
    }

LABEL_39:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_29;
  }

LABEL_23:
  v46 = [BWSceneClassifierSinkNode alloc];
  v47 = [a1 sinkID];
  v70[0] = *a7;
  *(v70 + 12) = *(a7 + 12);
  v48 = [(BWSceneClassifierSinkNode *)v46 initWithCaptureDevice:v65 version:v66 & 0xFFFFFFFFFFFFLL lensSmudgeDetectionConfiguration:v70 sinkID:v47];
  v49 = [FigWeakReference weakReferenceToObject:v22];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __FigCaptureBuildSceneClassifierPipeline_block_invoke;
  v69[3] = &unk_1E798F870;
  v69[4] = v49;
  [(BWSceneClassifierSinkNode *)v48 setInferenceEngineToTearDownBlock:v69];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __FigCaptureBuildSceneClassifierPipeline_block_invoke_2;
  v68[3] = &unk_1E799B9C8;
  v68[4] = v49;
  [(BWSceneClassifierSinkNode *)v48 setInferencesToSkipBlock:v68];
  if ([OUTLINED_FUNCTION_3_91() addNode:v48 error:?] & 1) != 0 && (objc_msgSend(a1, "graph"), v50 = -[BWNode input](v48, "input"), (OUTLINED_FUNCTION_2_103(v50, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, v64, v65, v66, v67)))
  {
    *a12 = v48;
    OUTLINED_FUNCTION_4_82([(BWNodeOutput *)v21 connection]);
    [objc_msgSend(a1 "graph")];
    if (v26)
    {
      *v26 = v18;
    }

    if (v63)
    {
      *v63 = v17;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

LABEL_29:

  result = v71;
  if (v71)
  {
    return [v71 code];
  }

  return result;
}

BWInferenceNode *FigCaptureCreateAndConfigureSmartCameraInferenceNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:a3 scheduler:a4 priority:a1];
  [(BWNode *)v7 setName:@"Smart Camera Inference Node"];
  v8 = [(BWInferenceConfiguration *)[BWSmartCameraInferenceConfiguration alloc] initWithInferenceType:101];
  LODWORD(v9) = 5.0;
  [(BWInferenceConfiguration *)v8 setMaximumFramesPerSecond:v9];
  if (a5)
  {
    [(BWSmartCameraInferenceConfiguration *)v8 setClonedIntermediateMediaKey:0x1F21AB210];
    [(BWSmartCameraInferenceConfiguration *)v8 setClonedIntermediateMediaVideoFormatRequirements:BWLensSmudgeDetectionInputVideoFormatRequirements(1)];
  }

  if ([(BWInferenceNode *)v7 addInferenceOfType:101 version:a2 & 0xFFFFFFFFFFFFLL configuration:v8])
  {
    return 0;
  }

  [(BWInferenceNode *)v7 setApplyRecommendedMasterPortType:1];
  return v7;
}

BWInferenceVideoFormatRequirements *BWLensSmudgeDetectionInputVideoFormatRequirements(uint64_t a1)
{
  v2 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v2 setWidth:512];
  [(BWVideoFormatRequirements *)v2 setHeight:512];
  [(BWVideoFormatRequirements *)v2 setSupportedPixelFormats:&unk_1F22498A0];
  [(BWInferenceVideoFormatRequirements *)v2 setDeviceOriented:a1];
  [(BWInferenceVideoFormatRequirements *)v2 setHistogramRequest:&__block_literal_global_111];
  return v2;
}

void *BWInferenceSmartCameraOutputs(unsigned __int16 a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  if (a1 >= 5uLL)
  {
    v3 = *off_1E798C320;
    v12[0] = *off_1E798C318;
    v12[1] = v3;
    v4 = *off_1E798C350;
    v12[2] = *off_1E798C338;
    v12[3] = v4;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v12, 4), @"semdev/probabilities"}];
    v11 = *off_1E798C358;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v11, 1), @"text/probabilities"}];
    v10 = *off_1E798C360;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v10, 1), @"water/probabilities"}];
    v5 = *off_1E798C308;
    v9[0] = *off_1E798C300;
    v9[1] = v5;
    v6 = *off_1E798C328;
    v9[2] = *off_1E798C310;
    v9[3] = v6;
    v7 = *off_1E798C340;
    v9[4] = *off_1E798C330;
    v9[5] = v7;
    v9[6] = *off_1E798C348;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v9, 7), @"leaf/probabilities"}];
  }

  return v2;
}

uint64_t BWAttachedMediaKeysAvailableOnSmartStyleLearnedFramesOnly()
{
  v1[0] = 0x1F21AAED0;
  v1[1] = 0x1F21AAEF0;
  v1[2] = 0x1F21AAF30;
  v1[3] = 0x1F21AB070;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:4];
}

__CFString *mfsp_avVideoCodec(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if ([(__CFString *)result outputFormat])
    {
      [(__CFString *)v1 outputFormat];

      return BWStringForOSType();
    }

    else if (FigCaptureSourceGetBoolAttribute([-[__CFString sourceConfiguration](v1 "sourceConfiguration")], @"HEVC", 0))
    {
      return @"hvc1";
    }

    else
    {
      return @"avc1";
    }
  }

  return result;
}

CMTimeValue FigCaptureFrameRateFromCMTime(CMTime *a1)
{
  flags = a1->flags;
  v2 = flags & 0x1D;
  if ((flags & 0x1D) <= 0x11)
  {
    value = 1;
    if (((1 << v2) & 0x30) != 0)
    {
      i = 0;
      goto LABEL_19;
    }

    if (((1 << v2) & 0x300) != 0)
    {
      i = 0;
      value = 0xFFFFFFFFLL;
      goto LABEL_19;
    }

    if (((1 << v2) & 0x30000) != 0)
    {
      i = 0;
LABEL_6:
      value = 0;
LABEL_19:
      v5 = value << 32;
      v2 = i;
LABEL_20:
      v6 = *MEMORY[0x1E695E480];
      v9 = *a1;
      v7 = CMTimeCopyDescription(v6, &v9);
      CFRelease(v7);
      return v5 | v2;
    }
  }

  if ((flags & 0x1D) == 0)
  {
    v5 = flags & 0x1D;
    return v5 | v2;
  }

  if (v2 != 1)
  {
    v2 = 0;
    v5 = 0;
    goto LABEL_20;
  }

  value = a1->value;
  for (i = a1->timescale; value != value; i = i >> 1)
  {
    value >>= 1;
  }

  if (!value)
  {
    goto LABEL_6;
  }

  if (!i || (i & 0x80000000) != 0 || (value & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v5 = value << 32;
  v2 = i;
  if ((i / value) != (a1->timescale / a1->value))
  {
    goto LABEL_20;
  }

  return v5 | v2;
}

double vp_irisVISCleanOutputRectForOutputDimensions(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = a1 / 1.1;
  v4 = FigCaptureRoundFloatToMultipleOf(4, v3);
  v5 = v2 / 1.1;
  FigCaptureRoundFloatToMultipleOf(4, v5);
  return ((v1 - v4) / 2);
}

uint64_t BWDeviceModelIsD23Proto1(uint64_t a1, uint64_t a2)
{
  if (BWDeviceModelIsD23Proto1_identifyBuildPhaseOnceToken != -1)
  {
    BWDeviceModelIsD23Proto1_cold_1();
  }

  return BWDeviceModelIsD23Proto1_isD23Proto1;
}

void *BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(int a1, int a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a1)
  {
    v8[0] = 0x1F21AB0D0;
    v8[1] = 0x1F21AB070;
    [v4 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)}];
    if (FigCapturePlatformIdentifier() <= 11)
    {
      if (FigCapturePlatformIdentifier() != 11)
      {
        goto LABEL_7;
      }

      v5 = BWAttachedMediaKey_PreLTMThumbnail;
    }

    else
    {
      v5 = BWAttachedMediaKey_LTMThumbnail;
    }

    [v4 addObject:*v5];
  }

LABEL_7:
  if (a2)
  {
    v7[0] = 0x1F21AAED0;
    v7[1] = 0x1F21AAEF0;
    v7[2] = 0x1F21AAF30;
    v7[3] = 0x1F21AB110;
    [v4 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 4)}];
  }

  return v4;
}

double FigCaptureGetDeviceToCameraTransform(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return *&_PromotedConst_51;
  }

  v2 = -FigCaptureFrontCameraRotationAngle(a1, a2) / 180.0 * 3.14159265;
  v3 = __sincosf_stret(v2 * 0.5);
  v4 = 0;
  _Q4 = vmulq_n_f32(xmmword_1ACF06340, v3.__sinval);
  _S5 = _Q4.i32[1];
  _S6 = _Q4.i32[2];
  __asm { FMLS            S0, S6, V4.S[2] }

  _Q0.f32[0] = _Q0.f32[0] + (v3.__cosval * v3.__cosval);
  v12 = vmuls_lane_f32(v3.__cosval, _Q4, 2);
  v13 = (v12 + (_Q4.f32[0] * _Q4.f32[1])) + (v12 + (_Q4.f32[0] * _Q4.f32[1]));
  v14 = vmuls_lane_f32(v3.__cosval, *_Q4.f32, 1);
  v15 = -(v14 - (_Q4.f32[0] * _Q4.f32[2])) - (v14 - (_Q4.f32[0] * _Q4.f32[2]));
  v21.f32[0] = -(v12 - (_Q4.f32[0] * _Q4.f32[1])) - (v12 - (_Q4.f32[0] * _Q4.f32[1]));
  __asm { FMLA            S3, S5, V4.S[1] }

  v16 = (_Q3.f32[0] + (v3.__cosval * v3.__cosval)) - (_Q4.f32[0] * _Q4.f32[0]);
  __asm { FMLA            S3, S6, V4.S[1] }

  *&v17 = _Q3.f32[0] + _Q3.f32[0];
  _Q3.f32[0] = (v14 + (_Q4.f32[2] * _Q4.f32[0])) + (v14 + (_Q4.f32[2] * _Q4.f32[0]));
  __asm
  {
    FMLA            S16, S6, V4.S[1]
    FMLA            S1, S6, V4.S[2]
  }

  _Q0.f32[1] = v13;
  _Q0.f32[2] = v15;
  v21.f32[1] = v16;
  v21.i64[1] = v17;
  _Q3.f32[1] = _S16 + _S16;
  __asm { FMLS            S1, S5, V4.S[1] }

  _Q3.i32[2] = _S1;
  v25[0] = xmmword_1AD055210;
  v25[1] = xmmword_1AD046FE0;
  v25[2] = xmmword_1ACF06340;
  memset(v26, 0, sizeof(v26));
  do
  {
    v26[v4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(_Q0, COERCE_FLOAT(v25[v4])), v21, *&v25[v4], 1), _Q3, v25[v4], 2);
    ++v4;
  }

  while (v4 != 3);
  return *v26;
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  LODWORD(STACK[0x230]) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_74_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{

  return [a48 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

uint64_t getVCPCaptureAnalysisSubjectMotionScoreKey()
{
  VCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc = getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc();
  if (!VCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc)
  {
    getVCPCaptureAnalysisSubjectMotionScoreKey_cold_1();
  }

  return *VCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc;
}

uint64_t getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr;
  v6 = getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr;
  if (!getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPCaptureAnalysisSubjectMotionScoreKey");
    getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC970458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getVCPCaptureAnalysisMotionDivScoreKey()
{
  VCPCaptureAnalysisMotionDivScoreKeySymbolLoc = getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc();
  if (!VCPCaptureAnalysisMotionDivScoreKeySymbolLoc)
  {
    getVCPCaptureAnalysisMotionDivScoreKey_cold_1();
  }

  return *VCPCaptureAnalysisMotionDivScoreKeySymbolLoc;
}

uint64_t getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr;
  v6 = getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr;
  if (!getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPCaptureAnalysisMotionDivScoreKey");
    getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC970568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_87_0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 132) = 1;
  a7 = 0;
  a8 = 0;

  return [a1 getBytes:&a7 length:16];
}

uint64_t OUTLINED_FUNCTION_87_1(__n128 a1, __n128 a2, __n128 a3)
{

  return FigCaptureMetadataUtilitiesCreateExifCompositeImageMetadata(v3, v5, v6, a1.n128_f32[0]);
}

BOOL OUTLINED_FUNCTION_87_4(NSObject *a1)
{
  v2 = STACK[0x35B];

  return os_log_type_enabled(a1, v2);
}

CFTypeRef OUTLINED_FUNCTION_239(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_47_6@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 objectAtIndexedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  return [v46 countByEnumeratingWithState:va objects:&a31 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_47_10()
{
  *(v0 - 92) = 0;
  *(v0 - 93) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_47_11(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *captureSession_purgeFileSinkCache(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [DerivedStorage[110] allKeys];
  result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [DerivedStorage[98] movieFileSinkPipelineWithSinkID:v7];
        if (!(v8 | [DerivedStorage[98] audioFileSinkPipelineWithSinkID:v7]))
        {
          [DerivedStorage[110] setObject:0 forKeyedSubscript:v7];
          [DerivedStorage[111] setObject:0 forKeyedSubscript:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void *captureSession_updateGraphConnectionEnabledState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 784);
  v105 = DerivedStorage;
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphConnectionEnabledState_cold_1();
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v106 = a2;
  v5 = [a2 parsedVideoDataSinkConfigurations];
  v6 = [v5 countByEnumeratingWithState:&v182 objects:v181 count:16];
  v112 = v4;
  if (v6)
  {
    v7 = v6;
    v8 = *v183;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v183 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v182 + 1) + 8 * i);
        v11 = [v4 videoDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(v10, "videoDataConnectionConfiguration", v99, v100), "sinkConfiguration"), "sinkID")}];
        [v11 setDiscardsSampleData:{objc_msgSend(objc_msgSend(v10, "videoDataConnectionConfiguration"), "enabled") ^ 1}];
        if (dword_1ED844050)
        {
          v180 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v180;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v15 = [v11 sinkID];
            v16 = [v11 discardsSampleData];
            v173 = 136315650;
            v17 = "No";
            if (v16)
            {
              v17 = "Yes";
            }

            v174 = "captureSession_updateGraphConnectionEnabledState";
            v175 = 2114;
            v176 = v15;
            v177 = 2082;
            v178 = v17;
            LODWORD(v100) = 32;
            v99 = &v173;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v4 = v112;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v182 objects:v181 count:16];
    }

    while (v7);
  }

  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v18 = [v106 parsedDepthDataSinkConfigurations];
  v19 = [v18 countByEnumeratingWithState:&v169 objects:v168 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v170;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v170 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [objc_msgSend(v4 depthDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v169 + 1) + 8 * j), "depthDataConnectionConfiguration"), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(objc_msgSend(*(*(&v169 + 1) + 8 * j), "depthDataConnectionConfiguration"), "enabled") ^ 1}];
      }

      v20 = [v18 countByEnumeratingWithState:&v169 objects:v168 count:16];
    }

    while (v20);
  }

  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v23 = [v106 audioDataSinkConnectionConfigurations];
  v24 = [v23 countByEnumeratingWithState:&v164 objects:v163 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v165;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v165 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [objc_msgSend(v4 audioDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v164 + 1) + 8 * k), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v164 + 1) + 8 * k), "enabled") ^ 1}];
      }

      v25 = [v23 countByEnumeratingWithState:&v164 objects:v163 count:16];
    }

    while (v25);
  }

  os_unfair_lock_lock((v105 + 224));
  v109 = *(v105 + 232);
  os_unfair_lock_unlock((v105 + 224));
  v162 = 0u;
  v161 = 0u;
  v160 = 0u;
  v159 = 0u;
  obj = [v106 parsedPreviewSinkConfigurations];
  v110 = [obj countByEnumeratingWithState:&v159 objects:v158 count:16];
  if (v110)
  {
    v107 = *v160;
    do
    {
      for (m = 0; m != v110; ++m)
      {
        if (*v160 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v159 + 1) + 8 * m);
        v30 = [v4 previewSinkPipelineWithSinkID:{objc_msgSend(v29, "sinkID")}];
        v31 = [MEMORY[0x1E695DF70] array];
        if ([v29 videoPreviewSinkConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "videoPreviewSinkConnectionConfiguration")}];
        }

        if ([v29 videoThumbnailConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "videoThumbnailConnectionConfiguration")}];
        }

        if ([v29 depthDataConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "depthDataConnectionConfiguration")}];
        }

        if ([v29 previewTimeMachineConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "previewTimeMachineConnectionConfiguration")}];
        }

        if ([v29 previewSmartStyleCoefficientsTimeMachineConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "previewSmartStyleCoefficientsTimeMachineConnectionConfiguration")}];
        }

        if ([v29 sceneClassifierConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "sceneClassifierConnectionConfiguration")}];
        }

        if ([v29 sensitiveContentAnalyzerConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "sensitiveContentAnalyzerConnectionConfiguration")}];
        }

        if ([v29 metadataObjectConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "metadataObjectConnectionConfiguration")}];
        }

        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        v154 = 0u;
        v32 = [v31 countByEnumeratingWithState:&v154 objects:v153 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v155;
          while (1)
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v155 != v35)
              {
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v154 + 1) + 8 * n);
              v38 = [v37 enabled];
              if ([objc_msgSend(v37 "sinkConfiguration")] == 14)
              {
                v39 = [objc_msgSend(v37 "sinkConfiguration")];
                if (v39 < 2)
                {
                  goto LABEL_63;
                }

                if (v39 != 4)
                {
                  if (v39 != 3)
                  {
                    goto LABEL_65;
                  }

LABEL_63:
                  [v37 enabled];
                  goto LABEL_65;
                }

                [objc_msgSend(v30 "sensitiveContentAnalyzerSinkOutput")];
              }

LABEL_65:
              v34 |= v38;
            }

            v33 = [v31 countByEnumeratingWithState:&v154 objects:v153 count:16];
            if (!v33)
            {
              v40 = v34 ^ 1;
              goto LABEL_69;
            }
          }
        }

        v40 = 1;
LABEL_69:
        [v30 setDiscardsSampleData:v40 & 1];
        v41 = [v29 videoPreviewSinkConnectionConfiguration];
        v4 = v112;
        if (v41)
        {
          v42 = v41;
          v43 = [v41 enabled];
          if (v109)
          {
            v44 = 1;
          }

          else
          {
            v44 = v43;
          }

          [v30 setDiscardsImageQueueSampleData:v44 ^ 1u];
          [v30 setPreviewSinkEnabled:{objc_msgSend(v42, "enabled")}];
          [v30 setPreviewTapRegistered:v109 != 0];
        }
      }

      v110 = [obj countByEnumeratingWithState:&v159 objects:v158 count:16];
    }

    while (v110);
  }

  v152 = 0u;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v45 = [v106 parsedMetadataSinkConfigurations];
  v46 = [v45 countByEnumeratingWithState:&v149 objects:v148 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v150;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v150 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v149 + 1) + 8 * ii) metadataObjectConnectionConfiguration];
        v51 = [v4 metadataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(v50, "sinkConfiguration"), "sinkID")}];
        if (FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v50))
        {
          -[FigCaptureMetadataSinkPipeline setDiscardsMRCSampleData:](v51, [v50 enabled] ^ 1);
        }

        if (FigCaptureMetadataObjectConfigurationRequiresFaceDetection(v50))
        {
          -[FigCaptureMetadataSinkPipeline setDiscardsFaceDetectionSampleData:](v51, [v50 enabled] ^ 1);
        }

        if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v50))
        {
          -[FigCaptureMetadataSinkPipeline setDiscardsFaceTrackingSampleData:](v51, [v50 enabled] ^ 1);
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v149 objects:v148 count:16];
    }

    while (v47);
  }

  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v52 = [v106 videoThumbnailSinkConfigurations];
  v53 = [v52 countByEnumeratingWithState:&v144 objects:v143 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v145;
    do
    {
      for (jj = 0; jj != v54; ++jj)
      {
        if (*v145 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [objc_msgSend(v4 videoThumbnailSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v144 + 1) + 8 * jj), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v144 + 1) + 8 * jj), "enabled") ^ 1}];
      }

      v54 = [v52 countByEnumeratingWithState:&v144 objects:v143 count:16];
    }

    while (v54);
  }

  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v57 = [v106 parsedVisionDataSinkConfigurations];
  v58 = [v57 countByEnumeratingWithState:&v139 objects:v138 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v140;
    do
    {
      for (kk = 0; kk != v59; ++kk)
      {
        if (*v140 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [objc_msgSend(v4 visionDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v139 + 1) + 8 * kk), "visionDataConnectionConfiguration"), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(objc_msgSend(*(*(&v139 + 1) + 8 * kk), "visionDataConnectionConfiguration"), "enabled") ^ 1}];
      }

      v59 = [v57 countByEnumeratingWithState:&v139 objects:v138 count:16];
    }

    while (v59);
  }

  v137 = 0u;
  v136 = 0u;
  v134 = 0u;
  v135 = 0u;
  v62 = [v106 pointCloudDataSinkConnectionConfigurations];
  v63 = [v62 countByEnumeratingWithState:&v134 objects:v133 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v135;
    do
    {
      for (mm = 0; mm != v64; ++mm)
      {
        if (*v135 != v65)
        {
          objc_enumerationMutation(v62);
        }

        [objc_msgSend(v4 pointCloudDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v134 + 1) + 8 * mm), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v134 + 1) + 8 * mm), "enabled") ^ 1}];
      }

      v64 = [v62 countByEnumeratingWithState:&v134 objects:v133 count:16];
    }

    while (v64);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v67 = [v106 cameraCalibrationDataSinkConnectionConfigurations];
  v68 = [v67 countByEnumeratingWithState:&v129 objects:v128 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v130;
    do
    {
      for (nn = 0; nn != v69; ++nn)
      {
        if (*v130 != v70)
        {
          objc_enumerationMutation(v67);
        }

        [objc_msgSend(v4 cameraCalibrationDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v129 + 1) + 8 * nn), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v129 + 1) + 8 * nn), "enabled") ^ 1}];
      }

      v69 = [v67 countByEnumeratingWithState:&v129 objects:v128 count:16];
    }

    while (v69);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v102 = [v106 parsedCameraSourceConfigurations];
  result = [v102 countByEnumeratingWithState:&v124 objects:v123 count:16];
  v108 = result;
  if (result)
  {
    v73 = *v125;
    v101 = *v125;
    do
    {
      v74 = 0;
      do
      {
        if (*v125 != v73)
        {
          objc_enumerationMutation(v102);
        }

        v111 = v74;
        v75 = *(*(&v124 + 1) + 8 * v74);
        v76 = [v4 cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v75, "cameraConfiguration"), "sourceID")}];
        if ([v106 isMultiCamSession])
        {
          v77 = [MEMORY[0x1E695DF70] array];
          if ([v75 videoPreviewSinkConnectionConfiguration])
          {
            [v77 addObject:{objc_msgSend(v75, "videoPreviewSinkConnectionConfiguration")}];
          }

          if ([v75 previewDerivedConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "previewDerivedConnectionConfigurations")}];
          }

          if ([v75 videoCaptureConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "videoCaptureConnectionConfigurations")}];
          }

          if ([v75 videoDataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "videoDataConnectionConfigurations")}];
          }

          if ([v75 stillImageConnectionConfiguration])
          {
            [v77 addObject:{objc_msgSend(v75, "stillImageConnectionConfiguration")}];
          }

          if ([v75 depthDataConnectionConfiguration])
          {
            [v77 addObject:{objc_msgSend(v75, "depthDataConnectionConfiguration")}];
          }

          if ([v75 visionDataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "visionDataConnectionConfigurations")}];
          }

          if ([v75 metadataObjectConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "metadataObjectConnectionConfigurations")}];
          }

          if ([v75 movieFileDetectedObjectMetadataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "movieFileDetectedObjectMetadataConnectionConfigurations")}];
          }

          obja = v76;
          if ([v75 cameraCalibrationDataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "cameraCalibrationDataConnectionConfigurations")}];
          }

          v78 = [MEMORY[0x1E695DF90] dictionary];
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v79 = [v77 countByEnumeratingWithState:&v119 objects:v118 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v120;
            do
            {
              for (i1 = 0; i1 != v80; ++i1)
              {
                if (*v120 != v81)
                {
                  objc_enumerationMutation(v77);
                }

                v83 = *(*(&v119 + 1) + 8 * i1);
                if ([objc_msgSend(v83 "sinkConfiguration")] != 14)
                {
                  v84 = [v83 underlyingDeviceType];
                  if ([v78 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v84)}])
                  {
                    v85 = [objc_msgSend(v78 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v84)), "BOOLValue"}];
                  }

                  else
                  {
                    v85 = 1;
                  }

                  v86 = [v83 enabled];
                  v87 = [MEMORY[0x1E696AD98] numberWithBool:(v86 ^ 1) & v85];
                  [v78 setObject:v87 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v84)}];
                }
              }

              v80 = [v77 countByEnumeratingWithState:&v119 objects:v118 count:16];
            }

            while (v80);
          }

          [FigCaptureCameraSourcePipeline setStreamsSuspendedBySourceDeviceType:?];
          v4 = v112;
          v73 = v101;
        }

        v88 = [*(v105 + 776) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v75, "cameraConfiguration"), "sourceID")}];
        if (v88)
        {
          v89 = *(v88 + 16);
        }

        else
        {
          v89 = 0;
        }

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v90 = [v75 visionDataConnectionConfigurations];
        v91 = [v90 countByEnumeratingWithState:&v114 objects:v113 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v115;
          do
          {
            for (i2 = 0; i2 != v92; ++i2)
            {
              if (*v115 != v93)
              {
                objc_enumerationMutation(v90);
              }

              v95 = *(*(&v114 + 1) + 8 * i2);
              v96 = [v89 captureStream];
              if ([v89 isBravoVariant])
              {
                v97 = [v95 underlyingDeviceType];
                if (v97 == 3)
                {
                  v98 = [v89 bravoTelephotoCaptureStream];
                }

                else
                {
                  if (v97 != 7)
                  {
                    goto LABEL_169;
                  }

                  v98 = [v89 bravoSuperWideCaptureStream];
                }

                v96 = v98;
              }

LABEL_169:
              [v96 setVisionDataSuspended:{objc_msgSend(v95, "enabled") ^ 1}];
            }

            v92 = [v90 countByEnumeratingWithState:&v114 objects:v113 count:16];
          }

          while (v92);
        }

        [v89 setZoomPIPSuspended:v109 != 0];
        v74 = v111 + 1;
      }

      while ((v111 + 1) != v108);
      result = [v102 countByEnumeratingWithState:&v124 objects:v123 count:16];
      v108 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresFaceDetection(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E6960388];

  return [v1 containsObject:v2];
}

void captureSession_buildGraphDidBecomeLiveObserver(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = [MEMORY[0x1E695DF70] array];
  v52 = DerivedStorage;
  v5 = *(DerivedStorage + 784);
  v51 = [v5 micSourcePipeline] && !objc_msgSend(objc_msgSend(v5, "cameraSourcePipelines"), "count") && objc_msgSend(objc_msgSend(v5, "metadataSourcePipelines"), "count") == 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v6 = v5;
  v7 = [v5 previewSinkPipelines];
  v8 = [v7 countByEnumeratingWithState:&v77 objects:v76 count:16];
  if (v8)
  {
    v9 = v8;
    v49 = 0;
    v10 = *v78;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        if ([v12 imageQueueSinkNode])
        {
          v13 = [v6 cameraSourcePipelineWithSourceID:{objc_msgSend(v12, "sourceID")}];
          v14 = [v12 depthFilterRenderingEnabled];
          if ([objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v13) "captureStreams")] > 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          a2 |= v15;
          if ((a2 & 1) != 0 && [v12 previewSinkEnabled] && (!objc_msgSend(*(v52 + 752), "deferredNodePrepareSupported") || objc_msgSend(objc_msgSend(*(v52 + 752), "deferredPreparePrioritySinks"), "containsObject:", objc_msgSend(v12, "imageQueueSinkNode"))))
          {
            v16 = v49;
            if (!v49)
            {
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v49 = v16;
            [v16 addObject:v12];
          }

          [v4 addObject:{objc_msgSend(v12, "imageQueueSinkNode")}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v77 objects:v76 count:16];
    }

    while (v9);
  }

  else
  {
    v49 = 0;
  }

  v17 = v49;
  if ([v49 count])
  {
    os_unfair_lock_lock((v52 + 384));
    *(v52 + 528) = v49;
    os_unfair_lock_unlock((v52 + 384));
    v18 = 0;
    goto LABEL_58;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v19 = [v48 previewSinkPipelines];
  v20 = [v19 countByEnumeratingWithState:&v72 objects:v71 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v73;
LABEL_30:
    v23 = 0;
    while (1)
    {
      if (*v73 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v72 + 1) + 8 * v23);
      if ([v24 imageQueueSinkNode])
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v72 objects:v71 count:16];
        if (v21)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }
    }

    v25 = [v24 imageQueueSinkNode];
    if (v25)
    {
      goto LABEL_57;
    }
  }

LABEL_38:
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v26 = v48;
  v27 = [v48 videoDataSinkPipelines];
  v28 = [v27 countByEnumeratingWithState:&v67 objects:v66 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v68;
    while (2)
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v68 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v67 + 1) + 8 * j);
        if ([v32 sinkNode])
        {
          v18 = [v32 sinkNode];
          goto LABEL_48;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_48:
    v26 = v48;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v33 = 1;
  }

  else
  {
    v33 = !v51;
  }

  if (!v33)
  {
    v18 = [objc_msgSend(objc_msgSend(v26 "audioDataSinkPipelines")];
  }

  v17 = v49;
  if (!v18)
  {
    v25 = [objc_msgSend(objc_msgSend(objc_msgSend(v48 "stillImageSinkPipelineSessionStorages")];
    if (v25)
    {
LABEL_57:
      v18 = v25;
      v17 = v49;
      goto LABEL_58;
    }

    v18 = [-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](objc_msgSend(objc_msgSend(v48 "movieFileSinkPipelines")];
    if (!v18 && v51)
    {
      v18 = -[FigCaptureAudioFileSinkPipeline audioFileSinkNode]([objc_msgSend(v48 "audioFileSinkPipelines")]);
    }

    v17 = v49;
    if (!v18)
    {
      v25 = [objc_msgSend(objc_msgSend(v48 "metadataSinkPipelines")];
      if (!v25)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v42 = [v48 depthDataSinkPipelines];
        v43 = [v42 countByEnumeratingWithState:&v62 objects:v61 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v63;
LABEL_88:
          v46 = 0;
          while (1)
          {
            if (*v63 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v62 + 1) + 8 * v46);
            if ([v47 sinkNode])
            {
              break;
            }

            if (v44 == ++v46)
            {
              v44 = [v42 countByEnumeratingWithState:&v62 objects:v61 count:16];
              if (v44)
              {
                goto LABEL_88;
              }

              goto LABEL_96;
            }
          }

          v25 = [v47 sinkNode];
          if (v25)
          {
            goto LABEL_57;
          }
        }

LABEL_96:
        v25 = [objc_msgSend(objc_msgSend(v48 "visionDataSinkPipelines")];
        if (!v25)
        {
          v25 = [objc_msgSend(objc_msgSend(v48 "pointCloudDataSinkPipelines")];
          if (!v25)
          {
            v25 = [objc_msgSend(objc_msgSend(v48 "cameraCalibrationDataSinkPipelines")];
          }
        }
      }

      goto LABEL_57;
    }
  }

LABEL_58:
  if ([v17 count] || v18)
  {
    if (v18 && ([v4 containsObject:v18] & 1) == 0)
    {
      [v4 addObject:v18];
    }

    *(v52 + 800) = 0;
    *(v52 + 792) = 0;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = [v4 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v58;
      do
      {
        v38 = v4;
        for (k = 0; k != v35; ++k)
        {
          if (*v58 != v37)
          {
            objc_enumerationMutation(v38);
          }

          v40 = *(*(&v57 + 1) + 8 * k);
          v41 = [[FigBWNodeRenderObserver alloc] initWithBWNode:v40];
          [(FigBWNodeRenderObserver *)v41 setWillRenderSampleBufferHandler:0];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __captureSession_buildGraphDidBecomeLiveObserver_block_invoke;
          v53[3] = &__block_descriptor_50_e37_v32__0__BWFormat_8__BWNodeInput_16q24l;
          v54 = v51;
          v53[4] = v52;
          v53[5] = a1;
          v55 = v40 == v18;
          [(FigBWNodeRenderObserver *)v41 setFormatDidBecomeLiveHandler:v53];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v36)
            {
              v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v36 addObject:v41];
          }

          if (v40 == v18)
          {
            *(v52 + 792) = v41;
          }

          else
          {
          }
        }

        v4 = v38;
        v35 = [v38 countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
    }

    *(v52 + 800) = v36;
  }
}

void captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_15;
  }

  v6 = DerivedStorage;
  if (*DerivedStorage)
  {
    goto LABEL_15;
  }

  if (!FigCaptureAudiomxdSupportEnabled(DerivedStorage, v5) || !cs_configurationUsesSourceType(a2, 2))
  {
    return;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v18);
  }

  if (*(v6 + 44) || *(v6 + 45) || (v7 = [*(v6 + 113) objectForKeyedSubscript:0x1F21702D0]) == 0)
  {
LABEL_15:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return;
  }

  if ([objc_msgSend(v7 "supportedProperties")])
  {
    v8 = [FigWeakReference weakReferenceToObject:a1];
    v9 = [MEMORY[0x1E69AED10] sharedInstance];
    v10 = MEMORY[0x1E69AECC8];
    v20 = *MEMORY[0x1E69AECC8];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v9 setAttribute:v11 forKey:*MEMORY[0x1E69AECD8] error:0];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *v10;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke;
    v19[3] = &unk_1E798FC90;
    v19[4] = v8;
    v14 = [v12 addObserverForName:v13 object:v9 queue:0 usingBlock:v19];
    if (v14 && (*(v6 + 44) = v14, v15 = [MEMORY[0x1E696AD88] defaultCenter], v16 = *MEMORY[0x1E698D6D0], objc_msgSend(MEMORY[0x1E698D710], "sharedInstance"), OUTLINED_FUNCTION_8_7(), (v17 = objc_msgSend(v15, "addObserverForName:object:queue:usingBlock:", v16)) != 0))
    {
      *(v6 + 45) = v17;
      captureSession_handlePlaybackOrRouteStateChange(a1);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }
}

void captureSession_handlePlaybackOrRouteStateChange(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v2 = DerivedStorage, *DerivedStorage))
  {
    captureSession_handlePlaybackOrRouteStateChange_cold_4();
  }

  else
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      captureSession_handlePlaybackOrRouteStateChange_cold_1();
    }

    v3 = [v2[113] objectForKeyedSubscript:0x1F21702D0];
    if (v3)
    {
      if ([v3 setProperty:*off_1E7989FB8 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", cs_audioIsPlayingToBuiltInSpeaker(objc_msgSend(MEMORY[0x1E698D710], "sharedInstance"), 0))}])
      {
        captureSession_handlePlaybackOrRouteStateChange_cold_2();
      }

      else if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      captureSession_handlePlaybackOrRouteStateChange_cold_3();
    }
  }
}

void *cs_audioIsPlayingToBuiltInSpeaker(void *a1, _DWORD *a2)
{
  result = [a1 isOtherAudioPlaying];
  if (result)
  {
    result = [a1 currentRoute];
    if (result)
    {
      v5 = [result outputs];
      memset(v13, 0, sizeof(v13));
      result = [v5 countByEnumeratingWithState:v13 objects:v12 count:16];
      if (result)
      {
        v6 = result;
        v7 = *MEMORY[0x1E698D680];
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            OUTLINED_FUNCTION_49_7();
            if (!v9)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v13[0] + 1) + 8 * i) portType];
            if (v10 == v7)
            {
              return cs_isOtherAppExcludingWhitelistedAppsPlayingAudio(a2);
            }
          }

          v6 = OUTLINED_FUNCTION_37(v10, v11, v13, v12);
          result = 0;
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

void *nc_addRequirementsForInputToMutableArray(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v12 = [objc_msgSend(a1 mediaConfigurationForAttachedMediaKey:{a2), "formatRequirements"}];
  v27 = a5;
  v28 = a6;
  nc_addFormatRequirementsFromInputWithAttachedMediaKey(a1, a2, a3, a4, a5, a6);
  v26 = a2;
  result = [a1 _passthroughModeForAttachedMediaKey:a2];
  v25 = result;
  if (result)
  {
    v14 = [a1 mediaType];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [objc_msgSend(a1 "node")];
    result = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (result)
    {
      v16 = result;
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v30 + 1) + 8 * v18);
          if ([v19 mediaType] == v14)
          {
            v20 = [v19 attachedMediaKeyDrivenByInputAttachedMediaKey:v26 inputIndex:{objc_msgSend(a1, "index")}];
            if (v20)
            {
              v21 = v20;
              v22 = [v19 _passthroughModeForAttachedMediaKey:v20];
              if (v22 != v25)
              {
                v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input %@[%@] and output %@[%@] passthrough modes don't match: %d vs. %d", a1, v26, v19, v21, v25, v22];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v24 userInfo:0]);
              }

              nc_addFormatRequirementsFromOutputWithAttachedMediaKey(v19, v21, a3, a4);
              nc_addRequirementsForInputsDrivingOutputToMutableArray(v19, v21, a3, a4, a1, v27, v28);
              v23 = [objc_msgSend(v19 "connection")];
              if (v23)
              {
                nc_addRequirementsForInputToMutableArray(v23, v21, a3, a4, v27, v28);
              }
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        result = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
        v16 = result;
      }

      while (result);
    }
  }

  else if (!v12)
  {

    return objc_msgSend_isEqualToString_(a2);
  }

  return result;
}

void *nc_addFormatRequirementsFromInputWithAttachedMediaKey(void *a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t *a6)
{
  v12 = [a1 mediaConfigurationForAttachedMediaKey:a2];
  result = [v12 formatRequirements];
  if (result)
  {
    v14 = result;
    result = [result isEmpty];
    if ((result & 1) == 0)
    {
      result = [a3 containsObject:v14];
      if ((result & 1) == 0)
      {
        if (a4)
        {
          [a3 addObject:a1];
        }

        result = [a3 addObject:v14];
      }

      if (a5)
      {
        if (!*a5)
        {
          result = [v12 conversionToPassthroughModeNeverAllowed];
          if (result)
          {
            result = [v12 passthroughMode];
            if (result)
            {
              *a5 = a1;
              *a6 = a2;
            }
          }
        }
      }
    }
  }

  return result;
}

void *nc_addFormatRequirementsFromOutputWithAttachedMediaKey(void *a1, uint64_t a2, void *a3, int a4)
{
  result = [objc_msgSend(a1 mediaConfigurationForAttachedMediaKey:{a2), "formatRequirements"}];
  if (result)
  {
    v8 = result;
    result = [result isEmpty];
    if ((result & 1) == 0)
    {
      result = [a3 containsObject:v8];
      if ((result & 1) == 0)
      {
        if (a4)
        {
          [a3 addObject:a1];
        }

        return [a3 addObject:v8];
      }
    }
  }

  return result;
}

void *nc_addRequirementsForInputsDrivingOutputToMutableArray(void *a1, void *a2, void *a3, int a4, void *a5, void *a6, uint64_t *a7)
{
  v11 = [a1 node];
  v27 = a3;
  v28 = a4;
  nc_addFormatRequirementsFromOutputWithAttachedMediaKey(a1, a2, a3, a4);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v11 inputs];
  result = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
  v25 = result;
  if (result)
  {
    v23 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v13;
        v14 = *(*(&v37 + 1) + 8 * v13);
        if (v14 != a5)
        {
          v15 = [MEMORY[0x1E695DF70] arrayWithObject:@"PrimaryFormat"];
          [v15 addObjectsFromArray:{objc_msgSend(v14, "specifiedAttachedMediaKeys")}];
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = v15;
          v17 = [v15 countByEnumeratingWithState:&v32 objects:v31 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v32 + 1) + 8 * i);
                if ([v14 _passthroughModeForAttachedMediaKey:v21])
                {
                  [a1 attachedMediaKeyDrivenByInputAttachedMediaKey:v21 inputIndex:{objc_msgSend(v14, "index")}];
                  if (objc_msgSend_isEqualToString_(a2))
                  {
                    nc_addFormatRequirementsFromInputWithAttachedMediaKey(v14, v21, v27, v28, a6, a7);
                    nc_addRequirementsForInputsDrivingOutputToMutableArray([objc_msgSend(v14 "connection")], a2, v27, v28, 0, a6, a7);
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v32 objects:v31 count:16];
            }

            while (v18);
          }
        }

        v13 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      result = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
      v25 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigCapturePixelFormatWithLeastAverageBandwidth(void *a1)
{
  v1 = [objc_msgSend(a1 sortedArrayUsingComparator:{&__block_literal_global_132), "firstObject"}];

  return [v1 unsignedIntValue];
}

uint64_t __FigCapturePixelFormatWithLeastAverageBandwidth_block_invoke(uint64_t a1, void *a2, void *a3)
{
  AverageBandwidthInBytesPerPixel = FigCapturePixelFormatGetAverageBandwidthInBytesPerPixel([a2 intValue]);
  v5 = FigCapturePixelFormatGetAverageBandwidthInBytesPerPixel([a3 intValue]);
  if (AverageBandwidthInBytesPerPixel < v5)
  {
    return -1;
  }

  else
  {
    return v5 < AverageBandwidthInBytesPerPixel;
  }
}

float FigCapturePixelFormatGetAverageBandwidthInBytesPerPixel(uint64_t a1)
{
  v2 = FigCapturePixelFormatBytesPerPixel(a1);
  CompressionType = FigCapturePixelFormatGetCompressionType(a1);
  if ((CompressionType - 1) < 3)
  {
    return v2 * 0.5;
  }

  if (CompressionType == 4)
  {
    LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(a1);
    if (LossyCompressionLevel)
    {
      v5 = LossyCompressionLevel;
      v6 = FigCapturePixelFormatLosslessCompressedFormatForLossyCompressedFormat(a1);
      v2 = FigCapturePixelFormatBytesPerPixel(v6);
      if (v5 == 1)
      {
        v7 = 2.1;
      }

      else if (v5 == 3)
      {
        v7 = 2.3;
      }

      else
      {
        v7 = 2.2;
      }
    }

    else
    {
      v7 = 2.0;
    }

    return v2 / v7;
  }

  return v2;
}

float FigCapturePixelFormatBytesPerPixel(uint64_t a1)
{
  v1 = a1;
  LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(a1);
  if (!LossyCompressionLevel)
  {
    v6 = 1.0;
    goto LABEL_12;
  }

  v4 = LossyCompressionLevel;
  if (v1 > 792872768)
  {
    if (v1 == 792872769 || v1 == 2084718401)
    {
      goto LABEL_10;
    }

    v5 = 1111970369;
LABEL_9:
    if (v1 == v5)
    {
      goto LABEL_10;
    }

    IsTenBit = FigCapturePixelFormatIsTenBit(v1);
    v12 = 0.625;
    if (v1 > 1751527983)
    {
      if (v1 != 1751527984)
      {
        v13 = 2087216688;
LABEL_93:
        if (v1 != v13)
        {
          v12 = 0.75;
        }
      }
    }

    else if (v1 != 761816624)
    {
      v13 = 795371056;
      goto LABEL_93;
    }

    v16 = FigCapturePixelFormatIs422(v1);
    v17 = 0.5;
    v18 = 1.0;
    if (!v16)
    {
      v18 = 0.5;
    }

    if (v4 == 3)
    {
      v19 = 0.6;
      if (!IsTenBit)
      {
        v19 = 0.5;
      }
    }

    else if (v4 == 2)
    {
      v19 = 0.6;
      v17 = 0.625;
      if (IsTenBit)
      {
        v17 = 0.6;
      }

      else
      {
        v19 = v12;
      }
    }

    else
    {
      v17 = 0.8;
      if (!IsTenBit)
      {
        v17 = 0.75;
      }

      v19 = v17;
    }

    v6 = (v17 + (v18 * v19)) / (v18 + 1.0);
    goto LABEL_11;
  }

  if (v1 != 641877825)
  {
    v5 = 759318337;
    goto LABEL_9;
  }

LABEL_10:
  v6 = flt_1AD056E28[LossyCompressionLevel - 1];
LABEL_11:
  LODWORD(v1) = FigCapturePixelFormatLosslessCompressedFormatForLossyCompressedFormat(v1);
LABEL_12:
  LODWORD(v3) = 4.0;
  if (v1 <= 1652056887)
  {
    if (v1 > 1278226735)
    {
      if (v1 > 1650946097)
      {
        if (v1 > 1651798065)
        {
          if (v1 <= 1651925815)
          {
            if (v1 == 1651798066)
            {
              goto LABEL_151;
            }

            v8 = 1651847472;
            goto LABEL_150;
          }

          if (v1 != 1651925816)
          {
            if (v1 == 1651926376)
            {
              goto LABEL_151;
            }

            v8 = 1651927153;
            goto LABEL_150;
          }

          goto LABEL_121;
        }

        if (v1 > 1651519797)
        {
          if (v1 != 1651519798)
          {
            if (v1 == 1651587122)
            {
              LODWORD(v3) = 1.25;
              return v6 * *&v3;
            }

            goto LABEL_164;
          }
        }

        else if (v1 != 1650946098)
        {
          if (v1 == 1651519537)
          {
            LODWORD(v3) = 0.5;
            return v6 * *&v3;
          }

          goto LABEL_164;
        }
      }

      else if (v1 <= 1534617135)
      {
        if (v1 > 1530422831)
        {
          if (v1 == 1530422832)
          {
            goto LABEL_147;
          }

          v14 = 1530426928;
          goto LABEL_146;
        }

        if (v1 != 1278226736)
        {
          v9 = 12598;
LABEL_70:
          v8 = v9 | 0x4C300000;
          goto LABEL_150;
        }
      }

      else
      {
        if (v1 <= 1647392368)
        {
          if (v1 == 1534617136)
          {
LABEL_159:
            LODWORD(v3) = 1.875;
            return v6 * *&v3;
          }

          v22 = 1534621232;
          goto LABEL_158;
        }

        if (v1 != 1647392369 && v1 != 1647719528)
        {
          v8 = 1650943796;
          goto LABEL_150;
        }
      }
    }

    else
    {
      if (v1 <= 825306676)
      {
        if (v1 > 645424689)
        {
          if (v1 > 645428785)
          {
            if (v1 != 645428786)
            {
              if (v1 == 759318337)
              {
                return v6 * *&v3;
              }

              v7 = 792872769;
              goto LABEL_154;
            }

LABEL_131:
            LODWORD(v3) = 2.5;
            return v6 * *&v3;
          }

          if (v1 == 645424690)
          {
            goto LABEL_131;
          }

          v20 = 30256;
          goto LABEL_157;
        }

        if (v1 > 641877824)
        {
          if (v1 == 641877825)
          {
            return v6 * *&v3;
          }

          v20 = 26160;
LABEL_157:
          v22 = v20 | 0x26780000;
LABEL_158:
          if (v1 == v22)
          {
            goto LABEL_159;
          }

LABEL_164:
          v24 = MEMORY[0x1E695DF30];
          v25 = *MEMORY[0x1E695D930];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown pixel format (%c%c%c%c)", v3, BYTE3(v1), BYTE2(v1), BYTE1(v1), v1];
LABEL_163:
          objc_exception_throw([v24 exceptionWithName:v25 reason:v26 userInfo:0]);
        }

        if (v1 == 641230384)
        {
LABEL_147:
          LODWORD(v3) = 1.5;
          return v6 * *&v3;
        }

        v14 = 641234480;
LABEL_146:
        if (v1 != v14)
        {
          goto LABEL_164;
        }

        goto LABEL_147;
      }

      if (v1 > 1111970368)
      {
        if (v1 <= 1278226487)
        {
          if (v1 == 1111970369)
          {
            return v6 * *&v3;
          }

          if (v1 == 1278226481)
          {
            LODWORD(v3) = 0.125;
            return v6 * *&v3;
          }

          goto LABEL_164;
        }

        if (v1 != 1278226488)
        {
          if (v1 == 1278226534)
          {
            return v6 * *&v3;
          }

          v9 = 12392;
          goto LABEL_70;
        }

        goto LABEL_121;
      }

      if (v1 > 875704421)
      {
        if (v1 == 875704422)
        {
          goto LABEL_147;
        }

        v14 = 875704438;
        goto LABEL_146;
      }

      if (v1 != 825306677)
      {
        v8 = 825437747;
        goto LABEL_150;
      }
    }

LABEL_151:
    LODWORD(v3) = 2.0;
    return v6 * *&v3;
  }

  if (v1 > 1882468911)
  {
    if (v1 <= 2019963441)
    {
      if (v1 <= 1919379251)
      {
        if (v1 > 1885745711)
        {
          if (v1 == 1885745712)
          {
            goto LABEL_151;
          }

          v15 = 1885745714;
        }

        else
        {
          if (v1 == 1882468912)
          {
            goto LABEL_151;
          }

          v15 = 1882468914;
        }

        if (v1 == v15)
        {
          LODWORD(v3) = 1076552008;
          return v6 * *&v3;
        }

        goto LABEL_164;
      }

      if (v1 <= 2016686639)
      {
        if (v1 == 1919379252)
        {
          goto LABEL_151;
        }

        v8 = 1932996149;
        goto LABEL_150;
      }

      if (v1 != 2016686640)
      {
        if (v1 == 2016686642)
        {
          return v6 * *&v3;
        }

        if (v1 != 2019963440)
        {
          goto LABEL_164;
        }
      }

LABEL_60:
      LODWORD(v3) = 3.0;
      return v6 * *&v3;
    }

    if (v1 > 2084718400)
    {
      if (v1 <= 2100852271)
      {
        if (v1 == 2084718401)
        {
          return v6 * *&v3;
        }

        v10 = 26160;
      }

      else
      {
        if (v1 == 2105046576 || v1 == 2105042480)
        {
          goto LABEL_159;
        }

        v10 = 30256;
      }

      v14 = v10 | 0x7D380000;
      goto LABEL_146;
    }

    if (v1 <= 2037741157)
    {
      if (v1 == 2019963442)
      {
        return v6 * *&v3;
      }

      v14 = 2033463856;
      goto LABEL_146;
    }

    if (v1 == 2037741158)
    {
      goto LABEL_151;
    }

    v8 = 2037741171;
    goto LABEL_150;
  }

  if (v1 > 1714696751)
  {
    if (v1 > 1735549491)
    {
      if (v1 <= 1751411058)
      {
        if (v1 == 1735549492)
        {
          goto LABEL_151;
        }

        v21 = 25968;
      }

      else
      {
        if (v1 > 1751527983)
        {
          if (v1 != 1751527984)
          {
            if (v1 == 1785950307 || v1 == 1785950320)
            {
              v24 = MEMORY[0x1E695DF30];
              v25 = *MEMORY[0x1E695D930];
              v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This function does not support point cloud formats (%c%c%c%c)", v3, BYTE3(v1), BYTE2(v1), BYTE1(v1), v1];
              goto LABEL_163;
            }

            goto LABEL_164;
          }

          goto LABEL_60;
        }

        v21 = 26995;
      }

      v8 = v21 | 0x68640000;
LABEL_150:
      if (v1 != v8)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    }

    if (v1 > 1717856626)
    {
      if (v1 == 1717856627)
      {
        return v6 * *&v3;
      }

      v8 = 1734505012;
      goto LABEL_150;
    }

    if (v1 == 1714696752)
    {
      goto LABEL_147;
    }

    v7 = 1717855600;
  }

  else
  {
    if (v1 > 1701734002)
    {
      if (v1 > 1701734514)
      {
        if (v1 != 1701734515)
        {
          if (v1 != 1701738598 && v1 != 1701738614)
          {
            goto LABEL_164;
          }

          LODWORD(v3) = 1067030938;
          return v6 * *&v3;
        }

        goto LABEL_151;
      }

      if (v1 == 1701734003)
      {
        return v6 * *&v3;
      }

      v8 = 1701734512;
      goto LABEL_150;
    }

    if (v1 <= 1701722229)
    {
      if (v1 != 1652056888 && v1 != 1701722214)
      {
        goto LABEL_164;
      }

      goto LABEL_121;
    }

    if (v1 == 1701722230)
    {
LABEL_121:
      LODWORD(v3) = 1.0;
      return v6 * *&v3;
    }

    v7 = 1701734000;
  }

LABEL_154:
  if (v1 != v7)
  {
    goto LABEL_164;
  }

  return v6 * *&v3;
}

uint64_t FigCapturePixelFormatLosslessCompressedFormatForLossyCompressedFormat(uint64_t a1)
{
  v1 = 641234480;
  if (a1 > 796419631)
  {
    if (a1 > 2084718400)
    {
      if (a1 > 2088265265)
      {
        if (a1 != 2088265266)
        {
          if (a1 == 2088269360)
          {
            return 645428784;
          }

          if (a1 == 2088269362)
          {
LABEL_39:
            v2 = 30258;
            return v2 | 0x26780000u;
          }

          return a1;
        }

        return 645424690;
      }

      if (a1 == 2084718401)
      {
        return 641877825;
      }

      if (a1 == 2087216688)
      {
        return 1751527984;
      }

      if (a1 != 2088265264)
      {
        return a1;
      }
    }

    else
    {
      if (a1 > 796423729)
      {
        if (a1 != 796423730)
        {
          if (a1 != 2084070960)
          {
            if (a1 != 2084075056)
            {
              return a1;
            }

            return v1;
          }

          return 641230384;
        }

        goto LABEL_39;
      }

      if (a1 != 796419632)
      {
        if (a1 != 796419634)
        {
          if (a1 != 796423728)
          {
            return a1;
          }

          return 645428784;
        }

        return 645424690;
      }
    }

LABEL_40:
    v2 = 26160;
    return v2 | 0x26780000u;
  }

  if (a1 > 762869295)
  {
    if (a1 <= 792229423)
    {
      if (a1 != 762869296)
      {
        if (a1 != 762869298)
        {
          if (a1 != 792225328)
          {
            return a1;
          }

          return 641230384;
        }

        goto LABEL_39;
      }

      return 645428784;
    }

    if (a1 == 792229424)
    {
      return v1;
    }

    if (a1 != 792872769)
    {
      if (a1 == 795371056)
      {
        return 1751527984;
      }

      return a1;
    }

    return 641877825;
  }

  if (a1 > 761816623)
  {
    if (a1 != 761816624)
    {
      if (a1 != 762865200)
      {
        if (a1 != 762865202)
        {
          return a1;
        }

        return 645424690;
      }

      goto LABEL_40;
    }

    return 1751527984;
  }

  if (a1 == 758670896)
  {
    return 641230384;
  }

  if (a1 != 758674992)
  {
    if (a1 != 759318337)
    {
      return a1;
    }

    return 641877825;
  }

  return v1;
}

uint64_t satisfiedVideoRequirementCheck(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isSatisfiedByRequirement:a2];
  }
}

uint64_t OUTLINED_FUNCTION_141_0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithInt:a2];
}

uint64_t OUTLINED_FUNCTION_141_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  return [v46 countByEnumeratingWithState:v47 - 208 objects:va count:{16, a6, a7, a8}];
}

uint64_t FigCaptureVideoRangePixelFormatForPixelFormat(uint64_t result)
{
  if (result <= 1701738597)
  {
    if (result > 792225327)
    {
      if (result <= 875704421)
      {
        switch(result)
        {
          case 0x2F386630:
            return 792229424;
          case 0x2F786630:
            v3 = 792229424;
            return v3 | 0x400000u;
          case 0x2F786632:
            return 796423730;
        }
      }

      else if (result > 1534617135)
      {
        if (result == 1534617136)
        {
          v3 = 1530426928;
          return v3 | 0x400000u;
        }

        if (result == 1701722214)
        {
          return 1701722230;
        }
      }

      else if (result == 875704422)
      {
        return 875704438;
      }

      else if (result == 1530422832)
      {
        return 1530426928;
      }
    }

    else
    {
      if (result > 645424691)
      {
        if (result <= 762865199)
        {
          if (result == 645424692)
          {
            return 645428788;
          }

          if (result == 758670896)
          {
            return 758674992;
          }

          return result;
        }

        if (result != 762865200)
        {
          if (result == 762865202)
          {
            return 762869298;
          }

          return result;
        }

        v3 = 758674992;
        return v3 | 0x400000u;
      }

      switch(result)
      {
        case 0x26386630:
          return 641234480;
        case 0x26786630:
          v3 = 641234480;
          return v3 | 0x400000u;
        case 0x26786632:
          return 645428786;
      }
    }

    return result;
  }

  if (result <= 2019963955)
  {
    if (result <= 1885745713)
    {
      switch(result)
      {
        case 0x656E7866:
          return 1701738614;
        case 0x66343230:
          return 2033463856;
        case 0x70663230:
          return 1882468912;
      }

      return result;
    }

    if (result > 2019963439)
    {
      if (result == 2019963440)
      {
        return 2016686640;
      }

      if (result != 2019963442)
      {
        return result;
      }

      v2 = 2016686640;
    }

    else
    {
      if (result != 1885745714)
      {
        if (result != 1885746228)
        {
          return result;
        }

        v1 = 1882468912;
        return (v1 + 516);
      }

      v2 = 1882468912;
    }

    return v2 | 2u;
  }

  if (result <= 2088265263)
  {
    if (result != 2019963956)
    {
      if (result == 2037741158)
      {
        return 2037741171;
      }

      if (result == 2084070960)
      {
        return 2084075056;
      }

      return result;
    }

    v1 = 2016686640;
    return (v1 + 516);
  }

  if (result > 2100848175)
  {
    if (result == 2100848176)
    {
      return 2100852272;
    }

    if (result != 2105042480)
    {
      return result;
    }

    v3 = 2100852272;
    return v3 | 0x400000u;
  }

  if (result == 2088265264)
  {
    v3 = 2084075056;
    return v3 | 0x400000u;
  }

  if (result == 2088265266)
  {
    return 2088269362;
  }

  return result;
}

uint64_t FigCaptureFullRangePixelFormatForPixelFormat(uint64_t result)
{
  if (result <= 1701738613)
  {
    if (result > 792229423)
    {
      if (result <= 875704437)
      {
        switch(result)
        {
          case 0x2F387630:
            return 792225328;
          case 0x2F787630:
            v3 = 792225328;
            return v3 | 0x400000u;
          case 0x2F787632:
            return 796419634;
        }
      }

      else if (result > 1534621231)
      {
        if (result == 1534621232)
        {
          v3 = 1530422832;
          return v3 | 0x400000u;
        }

        if (result == 1701722230)
        {
          return 1701722214;
        }
      }

      else if (result == 875704438)
      {
        return 875704422;
      }

      else if (result == 1530426928)
      {
        return 1530422832;
      }
    }

    else
    {
      if (result > 645428787)
      {
        if (result <= 762869295)
        {
          if (result == 758674992)
          {
            return 758670896;
          }

          return result;
        }

        if (result != 762869296)
        {
          if (result == 762869298)
          {
            return 762865202;
          }

          return result;
        }

        v3 = 758670896;
        return v3 | 0x400000u;
      }

      switch(result)
      {
        case 0x26387630:
          return 641230384;
        case 0x26787630:
          v3 = 641230384;
          return v3 | 0x400000u;
        case 0x26787632:
          return 645424690;
      }
    }

    return result;
  }

  if (result <= 2033463855)
  {
    if (result <= 1882469427)
    {
      if (result == 1701738614)
      {
        return 1701738598;
      }

      if (result == 1882468912)
      {
        return 1885745712;
      }

      if (result != 1882468914)
      {
        return result;
      }

      v1 = 1885745712;
    }

    else
    {
      if (result <= 2016686641)
      {
        if (result != 1882469428)
        {
          if (result == 2016686640)
          {
            return 2019963440;
          }

          return result;
        }

        v2 = 1885745712;
        return (v2 + 516);
      }

      if (result != 2016686642)
      {
        if (result != 2016687156)
        {
          return result;
        }

        v2 = 2019963440;
        return (v2 + 516);
      }

      v1 = 2019963440;
    }

    return v1 | 2u;
  }

  if (result <= 2088269359)
  {
    switch(result)
    {
      case 0x79343230:
        return 1714696752;
      case 0x79757673:
        return 2037741158;
      case 0x7C387630:
        return 2084070960;
    }
  }

  else if (result > 2100852271)
  {
    if (result == 2100852272)
    {
      return 2100848176;
    }

    if (result == 2105046576)
    {
      v3 = 2100848176;
      return v3 | 0x400000u;
    }
  }

  else
  {
    if (result == 2088269360)
    {
      v3 = 2084070960;
      return v3 | 0x400000u;
    }

    if (result == 2088269362)
    {
      return 2088265266;
    }
  }

  return result;
}

unint64_t FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(uint64_t a1, double a2)
{
  v3 = a1;
  v4 = a1 >> 32;
  v5.n128_f64[0] = FigCaptureUnityRect();
  v6.n128_f64[0] = a2;
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v3, v4, v5, v7, v8, v9, v6, v10);
  width = v14.size.width;
  height = v14.size.height;
  if (CGRectIsNull(v14))
  {
    FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions_cold_1();
  }

  return width | (height << 32);
}

uint64_t FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(unint64_t a1, unint64_t a2, __n128 a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v8 = a7.n128_f64[0];
  v9 = a6.n128_f64[0];
  v10 = a5.n128_f64[0];
  v12 = a3.n128_f64[0];
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  if (!a1)
  {
    return FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect_cold_4(a1);
  }

  if (!a2)
  {
    return FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect_cold_3(a1);
  }

  if (v8 >= 0.0 && v8 <= 0.0)
  {
    return FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect_cold_2();
  }

  result = FigCaptureMetadataUtilitiesDenormalizeCropRect(v12, a4, v10, v9, a1, a2);
  __asm { FMOV            V5.2D, #0.5 }

  return result;
}

id bwmia_mv2ipOutputMatteInferenceVideoFormat(void *a1, float a2, float a3)
{
  v5 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  v6 = [a1 width];
  v7 = [a1 height];
  LODWORD(a1) = v7;
  if (a3 != 0.0)
  {
    v9 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v6 | (v7 << 32), a3);
    v6 = v9;
    a1 = HIDWORD(v9);
  }

  [(BWVideoFormatRequirements *)v5 setWidth:(v6 / a2)];
  [(BWVideoFormatRequirements *)v5 setHeight:(a1 / a2)];
  [(BWVideoFormatRequirements *)v5 setSupportedPixelFormats:&unk_1F224A290];
  [(BWInferenceVideoFormatRequirements *)v5 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v5 setBytesPerRowAlignment:64];
  [(BWVideoFormatRequirements *)v5 setWidthAlignment:16];
  [(BWVideoFormatRequirements *)v5 setHeightAlignment:16];
  [(BWVideoFormatRequirements *)v5 setPlaneAlignment:64];
  [(BWVideoFormatRequirements *)v5 setMemoryPoolUseAllowed:0];
  v11 = v5;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
}

void *FigCaptureEncodedByteStreamFormatForPixelFormat(int a1)
{
  if (a1 > 1717855599)
  {
    if (a1 <= 1751410031)
    {
      if (a1 == 1717855600)
      {
        return &unk_1F2247338;
      }

      if (a1 == 1717856627)
      {
        return &unk_1F2247308;
      }
    }

    else
    {
      switch(a1)
      {
        case 1751410032:
          return &unk_1F2247320;
        case 1815491698:
          return &unk_1F2247368;
        case 1751411059:
          return &unk_1F22472F0;
      }
    }
  }

  else
  {
    result = 0;
    if (a1 <= 1701722229)
    {
      if (a1 == 1278226488)
      {
        return &unk_1F2247350;
      }

      v3 = 14438;
    }

    else
    {
      if (a1 == 1701722230 || a1 == 1701738598)
      {
        return result;
      }

      v3 = 30838;
    }

    if (a1 == (v3 | 0x656E0000))
    {
      return result;
    }
  }

  if (!FigCapturePixelFormatIsYCbCr(a1))
  {
    goto LABEL_29;
  }

  if (a1 <= 1751527983)
  {
    if (a1 != 761816624)
    {
      v4 = 795371056;
      goto LABEL_28;
    }

LABEL_29:
    if (a1 == 1651798066 || a1 == 1650946098)
    {
      return &unk_1F22473E0;
    }

    else
    {
      return 0;
    }
  }

  if (a1 == 1751527984)
  {
    goto LABEL_29;
  }

  v4 = 2087216688;
LABEL_28:
  if (a1 == v4)
  {
    goto LABEL_29;
  }

  IsTenBit = FigCapturePixelFormatIsTenBit(a1);
  IsFullRange = FigCapturePixelFormatIsFullRange(a1);
  if (IsTenBit)
  {
    v8 = &unk_1F2247398;
    v9 = &unk_1F2247380;
  }

  else
  {
    v8 = &unk_1F22473C8;
    v9 = &unk_1F22473B0;
  }

  if (IsFullRange)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

__CFData *FigLivePhotoMetadataCopySetupDataAddingDimensions(const __CFData *a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (a1)
  {
    Length = CFDataGetLength(a1);
    MutableCopy = CFDataCreateMutableCopy(v3, Length + 16, a1);
  }

  else
  {
    MutableCopy = CFDataCreateMutable(*MEMORY[0x1E695E480], 16);
  }

  v7 = MutableCopy;
  if (MutableCopy)
  {
    *bytes = 0x736D696410000000;
    v9[0] = bswap32(a2);
    v9[1] = bswap32(HIDWORD(a2));
    CFDataAppendBytes(MutableCopy, bytes, 8);
    CFDataAppendBytes(v7, v9, 8);
  }

  return v7;
}

uint64_t gr_countOfBuffersRetainedOutsideEmitCallbackOfOutputWithDelay(void *a1, uint64_t a2, unsigned int a3, int a4, int a5, unsigned int *a6)
{
  v12 = [a1 mediaType];
  v13 = [objc_msgSend(a1 "connection")];
  if (gr_outputAndInputShareAPipelineStage(a1, a2, v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = gr_outputOrInputIsStillImagePipelineStage(a1, a2, v13) ^ 1;
  }

  v15 = [v13 mediaConfigurationForAttachedMediaKey:a2];
  v47 = [v15 indefinitelyHeldBufferCount];
  v16 = a4 - 1;
  if (a4 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a4;
  }

  if (a5)
  {
    v16 = a5 - v17;
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v17 = (v17 - a5) & ~((v17 - a5) >> 31);
  }

  v19 = v16 & ~(v16 >> 31);
  v20 = v17 + a3;
  if (v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = a3;
  }

  if (v14)
  {
    a4 = v18;
    a5 = v19;
  }

  if (!v15)
  {
    v15 = [v13 unspecifiedAttachedMediaConfiguration];
    if ([v15 retainedBufferCount] <= 0)
    {
      v22 = [v15 delayedBufferCount];
      if (v15 && v22 >= 1)
      {
        goto LABEL_24;
      }
    }

    else if (v15)
    {
      goto LABEL_24;
    }

    v15 = [v13 mediaConfigurationForAttachedMediaKey:@"PrimaryFormat"];
  }

LABEL_24:
  v23 = [v15 retainedBufferCount];
  v24 = [v15 delayedBufferCount];
  if (a4 <= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = a4;
  }

  v26 = a4 - v24;
  if (a4 <= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = a4;
  }

  if (a5)
  {
    v26 = a5 - v27;
    v28 = a4;
  }

  else
  {
    v28 = 0;
  }

  if (a5)
  {
    v27 = (v27 - a5) & ~((v27 - a5) >> 31);
  }

  v29 = v26 & ~(v26 >> 31);
  v30 = v27 + v21;
  if (v24)
  {
    v25 = v28;
  }

  else
  {
    v29 = a5;
  }

  v44 = v25;
  v45 = v29;
  if (v24)
  {
    v31 = v30;
  }

  else
  {
    v31 = v21;
  }

  v46 = v31;
  if ([v13 _passthroughModeForAttachedMediaKey:a2] == 1)
  {
    v43 = a6;
    v53[0] = 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v32 = [objc_msgSend(v13 "node")];
    v33 = [v32 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v50;
      v36 = v46;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v49 + 1) + 8 * i);
          v39 = [v38 attachedMediaKeyDrivenByInputAttachedMediaKey:a2 inputIndex:{objc_msgSend(v13, "index")}];
          if (v39)
          {
            v40 = v39;
            if ([v38 mediaType] == v12 && objc_msgSend(v38, "_passthroughModeForAttachedMediaKey:", v40) == 1)
            {
              v41 = gr_countOfBuffersRetainedOutsideEmitCallbackOfOutputWithDelay(v38, v40, v46, v44, v45, v53);
              v47 += v53[0];
              if (v41 > v36)
              {
                v36 = v41;
              }
            }
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v34);
    }

    else
    {
      v36 = v46;
    }

    v46 = v36;
    a6 = v43;
  }

  else if ([v15 retainedBufferCount])
  {
    v46 += (v44 - v45) & ~((v44 - v45) >> 31);
  }

  if (a6)
  {
    *a6 = v47;
  }

  else
  {
    gr_countOfBuffersRetainedOutsideEmitCallbackOfOutputWithDelay_cold_1();
  }

  return v46;
}

uint64_t gr_pipelineStageForNodeOutput(void *a1, uint64_t a2)
{
  v3 = [objc_msgSend(a1 mediaConfigurationForAttachedMediaKey:{a2), "indexOfInputWhichDrivesThisOutput"}];
  v4 = [objc_msgSend(a1 "node")];
  if ([v4 count] <= v3)
  {
    return 0;
  }

  v5 = [objc_msgSend(v4 objectAtIndexedSubscript:{v3), "connection"}];

  return [v5 pipelineStage];
}

uint64_t gr_outputAndInputShareAPipelineStage(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 1;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = [objc_msgSend(a3 "connection")];
  v6 = gr_pipelineStageForNodeOutput(a1, a2);
  if (!(v6 | v5))
  {
    return 1;
  }

  return [v6 isEqual:v5];
}

uint64_t gr_outputOrInputIsStillImagePipelineStage(void *a1, uint64_t a2, void *a3)
{
  if ([objc_msgSend(objc_msgSend(a3 "connection")])
  {
    return 1;
  }

  v6 = gr_pipelineStageForNodeOutput(a1, a2);

  return [v6 stillImagePipelineStage];
}

void *gr_addRetainCountsOfOutputsWithSharedPoolsForAttachedMediaToParentNodeOutputs(void *a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v14 = 0;
        ParentOutputOfOutputWithSharedPool = gr_findParentOutputOfOutputWithSharedPool(v8, a2, &v14);
        if (!ParentOutputOfOutputWithSharedPool)
        {
          gr_addRetainCountsOfOutputsWithSharedPoolsForAttachedMediaToParentNodeOutputs_cold_1();
        }

        v10 = ParentOutputOfOutputWithSharedPool;
        v11 = [v8 mediaPropertiesForAttachedMediaKey:a2];
        v12 = [v10 mediaPropertiesForAttachedMediaKey:v14];
        if (v11)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          [v12 setResolvedRetainedBufferCount:{objc_msgSend(v11, "resolvedRetainedBufferCount") + objc_msgSend(v12, "resolvedRetainedBufferCount") + 1}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void *gr_findParentOutputOfOutputWithSharedPool(void *a1, void *a2, void *a3)
{
  v6 = a2;
  while ([a1 _passthroughModeForAttachedMediaKey:v6])
  {
    v7 = [a1 mediaConfigurationForAttachedMediaKey:a2];
    v8 = [objc_msgSend(objc_msgSend(a1 "node")];
    v6 = [v7 attachedMediaKeyOfInputWhichDrivesThisOutput];
    a1 = [objc_msgSend(v8 "connection")];
    if (!a1)
    {
      gr_findParentOutputOfOutputWithSharedPool_cold_1();
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

  return a1;
}

double OUTLINED_FUNCTION_72_0(double a1)
{
  *&STACK[0x350] = a1;
  result = *&STACK[0x2F8];
  STACK[0x348] = STACK[0x2F8];
  return result;
}

double OUTLINED_FUNCTION_72_3()
{
  result = 0.0;
  *(v0 - 64) = 0u;
  *(v0 - 48) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return [a1 arrayWithObjects:va count:3];
}

BOOL OUTLINED_FUNCTION_72_6(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t captureSession_commitInflightConfiguration(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_commitInflightConfiguration_cold_1();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  [*(DerivedStorage + 504) configurationID];
  v3 = captureSession_checkClientSessionIsAllowedToRun(a1, *(DerivedStorage + 504), 0, 0, 0);
  if (v3)
  {
    started = v3;
    os_unfair_lock_unlock((DerivedStorage + 384));
    v99 = 0;
    v98 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = 0;
    v10 = 0;
    goto LABEL_124;
  }

  v7 = *(DerivedStorage + 504);
  if (v7 == *(DerivedStorage + 512))
  {
    if (BWCaptureIsRunningInMacCatalystEnvironment(v3, v4) && !os_variant_is_darwinos())
    {
      v10 = 0;
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v9 = *(DerivedStorage + 504);
      v10 = 0;
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    v8 = *(DerivedStorage + 453);
    if ([*(DerivedStorage + 536) isEqual:*(DerivedStorage + 544)])
    {
      v10 = 0;
    }

    else
    {
      v10 = [*(DerivedStorage + 536) mutableCopy];
    }
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  if (*(DerivedStorage + 96))
  {
    v11 = [*(DerivedStorage + 120) mediaEnvironmentTCCIdentity];
    if (!v11)
    {
      captureSession_commitInflightConfiguration_cold_3(&block);
      goto LABEL_127;
    }

    v12 = *(DerivedStorage + 36);
    block = *(DerivedStorage + 20);
    v95 = v12;
    v13 = soft_PAAuthenticatedClientIdentity(&block, v11);
    if (!v13)
    {
      captureSession_commitInflightConfiguration_cold_2(&block);
LABEL_127:
      started = block;
      goto LABEL_124;
    }
  }

  else
  {
    if (![v9 tccIdentity])
    {
      goto LABEL_20;
    }

    v14 = [v9 tccIdentity];
    v15 = *(DerivedStorage + 36);
    block = *(DerivedStorage + 20);
    v95 = v15;
    v13 = soft_PAAuthenticatedClientIdentity(&block, v14);
    if (!v13)
    {
      captureSession_commitInflightConfiguration_cold_4(&block);
      goto LABEL_127;
    }
  }

  [v9 setTccIdentity:v13];
LABEL_20:
  v77 = v10;
  if (!v9)
  {
    v99 = 0;
    v98 = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v99;
    if (os_log_type_enabled(v20, v98))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = *(DerivedStorage + 104);
      valuePtr = 136315394;
      v89 = "captureSession_commitInflightConfiguration";
      v90 = 2114;
      v91 = v23;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = 0;
    started = 0;
    goto LABEL_124;
  }

  v78 = v9;
  if (dword_1ED844050)
  {
    v99 = 0;
    v98 = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v99;
    if (os_log_type_enabled(v16, v98))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = *(DerivedStorage + 104);
      valuePtr = 136315650;
      v89 = "captureSession_commitInflightConfiguration";
      v90 = 2114;
      v91 = v19;
      v10 = v77;
      v92 = 2112;
      *v93 = [v9 briefDescription];
      LODWORD(v76) = 32;
      p_valuePtr = &valuePtr;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v24 = v9;
  v25 = v10;
  os_unfair_lock_lock((DerivedStorage + 384));
  v26 = *(DerivedStorage + 512);
  *(DerivedStorage + 512) = v9;
  if (v8)
  {
    *(DerivedStorage + 454) = 1;
  }

  v27 = *(DerivedStorage + 544);
  if (v10)
  {
    goto LABEL_36;
  }

  if (!v27)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_36:
    *(DerivedStorage + 544) = v10;
    goto LABEL_39;
  }

  v27 = 0;
LABEL_39:
  os_unfair_lock_unlock((DerivedStorage + 384));
  v98 = OS_LOG_TYPE_DEFAULT;
  v87 = 0;
  if (*(DerivedStorage + 752))
  {
    updated = captureSession_updateGraphConfiguration(a1, v26, v9, &v98, &v87);
    if (updated)
    {
      started = updated;
      v99 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v99;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
LABEL_63:
        v41 = *(DerivedStorage + 104);
        valuePtr = 136315650;
        v89 = "captureSession_commitInflightConfiguration";
        v90 = 2114;
        v91 = v41;
        v92 = 1024;
        *v93 = started;
        LODWORD(v76) = 28;
        p_valuePtr = &valuePtr;
        _os_log_send_and_compose_impl();
      }

LABEL_64:
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      if (started == -12785 || started == -12681 || started == -12689)
      {
        v99 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v43 = v99;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          v45 = *(DerivedStorage + 104);
          valuePtr = 136315906;
          v89 = "captureSession_commitInflightConfiguration";
          v90 = 2114;
          v91 = v45;
          v92 = 1024;
          *v93 = started;
          *&v93[4] = 1024;
          *&v93[6] = -16407;
          LODWORD(v76) = 34;
          p_valuePtr = &valuePtr;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        started = 4294950889;
      }

      goto LABEL_77;
    }
  }

  else
  {
    if (![v9 eligibleToAttachToExistingCaptureSession])
    {
      goto LABEL_58;
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    v32 = *(DerivedStorage + 712);
    os_unfair_lock_unlock((DerivedStorage + 384));
    if (v32)
    {
      if (dword_1ED844050)
      {
        v99 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v34 = v99;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
        }

        else
        {
          v35 = v34 & 0xFFFFFFFE;
        }

        if (v35)
        {
          v36 = *(DerivedStorage + 8);
          valuePtr = 136315394;
          v89 = "captureSession_commitInflightConfiguration";
          v90 = 2112;
          v91 = v36;
          LODWORD(v76) = 22;
          p_valuePtr = &valuePtr;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __captureSession_commitInflightConfiguration_block_invoke;
      v85[3] = &unk_1E7991EF8;
      v85[4] = v9;
      v85[5] = v32;
      v85[6] = DerivedStorage;
      captureSession_performBlockOnWorkerQueue(v32, v85);
      captureSession_makeCommittedConfigurationLive(a1, [v9 configurationID], @"attach to existing session");
      goto LABEL_76;
    }

    if ([+[FigCaptureSessionObservatory sharedObservatory](FigCaptureSessionObservatory "sharedObservatory")])
    {
      v87 = 1;
    }

    else
    {
LABEL_58:
      v37 = captureSession_buildGraphWithConfiguration(a1, v9, 0, 0);
      if (v37)
      {
        started = v37;
        v99 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v39 = v99;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (v40)
        {
          goto LABEL_63;
        }

        goto LABEL_64;
      }
    }
  }

LABEL_76:

  started = 0;
LABEL_77:
  IsFatal = cs_errorIsFatal(started);
  v47 = IsFatal;
  if (IsFatal)
  {
    v48 = cs_notificationPayloadWithConfigurationIDAndErrorStatus([v9 configurationID], started);
    v99 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v50 = v99;
    if (os_log_type_enabled(v49, type))
    {
      v51 = v50;
    }

    else
    {
      v51 = v50 & 0xFFFFFFFE;
    }

    if (v51)
    {
      v52 = *(DerivedStorage + 104);
      valuePtr = 136315650;
      v89 = "captureSession_commitInflightConfiguration";
      v90 = 2114;
      v91 = v52;
      v92 = 1024;
      *v93 = started;
      LODWORD(v76) = 28;
      p_valuePtr = &valuePtr;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *&block = 0;
    valuePtr = 0;
    cs_getMasterClockAndType(*(DerivedStorage + 784), &block, &valuePtr);
    v53 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v54 = [v9 configurationID];
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v54), @"ConfigurationID", block, @"MasterClock", v53, @"MasterClockType", 0}];
    if (v53)
    {
      CFRelease(v53);
    }
  }

  captureSession_postNotificationWithPayload(a1, @"ConfigurationCommitted", v48);
  v55 = CMBaseObjectGetDerivedStorage();
  if (cs_configurationContainsVideoSource(v9))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v56 = *(v55 + 200);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    *&v95 = __captureSession_ensureAVAudioSessionForIsUsingCameraIfNecessary_block_invoke;
    *(&v95 + 1) = &__block_descriptor_48_e5_v8__0l;
    v96 = v55;
    v97 = a1;
    dispatch_async(v56, &block);
  }

  if ((v47 & 1) == 0)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v57 = [*(DerivedStorage + 784) previewSinkPipelines];
    v58 = [v57 countByEnumeratingWithState:&v81 objects:v80 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v82;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v82 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v81 + 1) + 8 * i);
          if ([v62 sinkID])
          {
            if (([v62 imageQueueUpdatedNotificationSent] & 1) == 0)
            {
              v63 = [v62 imageQueueUpdatedPayloadToBeSentAfterCommitConfiguration];
              if (v63)
              {
                v64 = v63;
                if (*(DerivedStorage + 452) != 1 || !*(DerivedStorage + 448))
                {
                  [v62 setImageQueueUpdatedNotificationSent:1];
                  captureSession_postNotificationWithPayload(a1, @"ImageQueueUpdated", v64);
                  captureSession_updateSavedPreviewImageQueueUpdatedNotificationSent(a1, v62);
                }
              }
            }
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v81 objects:v80 count:16];
      }

      while (v59);
    }
  }

  if (v98 == OS_LOG_TYPE_INFO)
  {
    started = captureSession_startGraph(a1);
    v10 = v77;
    if (started)
    {
      v99 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v66 = v99;
      if (os_log_type_enabled(v65, type))
      {
        v67 = v66;
      }

      else
      {
        v67 = v66 & 0xFFFFFFFE;
      }

      if (v67)
      {
        v68 = *(DerivedStorage + 104);
        valuePtr = 136315650;
        v89 = "captureSession_commitInflightConfiguration";
        v90 = 2114;
        v91 = v68;
        v92 = 1024;
        *v93 = started;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      captureSession_resetSessionRunningStateOnFatalError(a1, started);
      captureSession_transitionToSessionStatus(a1, 0, started);
    }

    goto LABEL_121;
  }

  v10 = v77;
  if (v87 != 1)
  {
LABEL_121:
    v9 = v78;
    goto LABEL_124;
  }

  v69 = *(DerivedStorage + 712);
  v9 = v78;
  if (v69)
  {
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __captureSession_commitInflightConfiguration_block_invoke_756;
    v79[3] = &__block_descriptor_40_e5_v8__0l;
    v79[4] = DerivedStorage;
    captureSession_performBlockOnWorkerQueueSynchronously(v69, v79);
  }

  if (dword_1ED844050)
  {
    v99 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v71 = v99;
    if (os_log_type_enabled(v70, type))
    {
      v72 = v71;
    }

    else
    {
      v72 = v71 & 0xFFFFFFFE;
    }

    if (v72)
    {
      v73 = *(DerivedStorage + 104);
      valuePtr = 136315394;
      v89 = "captureSession_commitInflightConfiguration";
      v90 = 2114;
      v91 = v73;
      LODWORD(v76) = 22;
      p_valuePtr = &valuePtr;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = v78;
  }

  captureSession_makeCommittedConfigurationLive(a1, [v9 configurationID], @"live immediately");
LABEL_124:

  return started;
}

uint64_t cs_errorIsFatal(int a1)
{
  result = 0;
  if (a1 <= -16409)
  {
    if (a1 != -73176 && a1 != -16952)
    {
      return 1;
    }
  }

  else if (((a1 + 16408) > 5 || ((1 << (a1 + 24)) & 0x33) == 0) && a1)
  {
    return 1;
  }

  return result;
}

void __captureSession_updateRunningCondition_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    __captureSession_updateRunningCondition_block_invoke_cold_1();
  }

  if (!*DerivedStorage)
  {
    os_unfair_lock_lock((DerivedStorage + 384));
    v4 = *(DerivedStorage + 456);
    if (*(DerivedStorage + 388) == 1 && (v4 != 3 ? (v5 = v4 == 0) : (v5 = 1), v5))
    {
      *(DerivedStorage + 480) = 0;
      *(DerivedStorage + 392) = 0;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(DerivedStorage + 392);
    v18 = *(DerivedStorage + 397);
    os_unfair_lock_unlock((DerivedStorage + 384));
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v6)
      {
LABEL_20:
        captureSession_transitionToSessionStatus(v1, 1u, 0);
        v11 = CMBaseObjectGetDerivedStorage();
        if (!_FigIsCurrentDispatchQueue())
        {
          __captureSession_updateRunningCondition_block_invoke_cold_2();
        }

        if (dword_1ED844050)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        os_unfair_lock_lock((v11 + 384));
        if (*(v11 + 464) == 0.0)
        {
          *(v11 + 464) = CFAbsoluteTimeGetCurrent();
        }

        os_unfair_lock_unlock((v11 + 384));
        if (!*(v11 + 912))
        {
          *(v11 + 912) = FigOSTransactionCreate();
        }

        captureSession_stopObservingInvalidAudioRecordingState(v1);
        started = captureSession_commitInflightConfiguration(v1);
        if (!started)
        {
          if (*(DerivedStorage + 712))
          {
            return;
          }

          started = captureSession_startGraph(v1);
          if (!started)
          {
            return;
          }
        }

        v15 = started;
        if (started == -12785 || started == -12681 || started == -12689)
        {
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          started = fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (v18)
          {
            v15 = -16407;
LABEL_39:
            v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            os_unfair_lock_lock((DerivedStorage + 384));
            *(DerivedStorage + 397) = 0;
            *(DerivedStorage + 616) = 0;
            captureSession_cancelPrewarmingTimeoutTimer(v1);
            *(DerivedStorage + 388) = 0;
            captureSession_updateRunningCondition(v1, 0, 0);
            os_unfair_lock_unlock((DerivedStorage + 384));
LABEL_44:
            captureSession_transitionToSessionStatus(v1, 0, v15);
            return;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_39;
          }

          if (started != -16407)
          {
            captureSession_resetSessionRunningStateOnFatalError(v1, started);
            if ((v15 & 0xFFFFFFFB) != 0xFFFFBFE9)
            {
              cs_detectSessionStartFailLoopTTR(v1, v15);
            }

            goto LABEL_44;
          }
        }

        FigCaptureSessionServerInvokeContinuityCameraMultitaskingDialogIfNeeded(started, v14);
        os_unfair_lock_lock((DerivedStorage + 384));
        if ((*(DerivedStorage + 405) & 1) == 0)
        {
          *(DerivedStorage + 388) = 0;
        }

        os_unfair_lock_unlock((DerivedStorage + 384));
        v15 = -16407;
        goto LABEL_44;
      }
    }

    else if (v6)
    {
      goto LABEL_20;
    }

    if (v2)
    {
      v9 = captureSession_notificationPayloadWithErrorStatus(v1, v7);
      captureSession_postNotificationWithPayload(v1, @"DidStopRunning", v9);
    }

    else
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t captureSession_startGraph(const void *a1)
{
  v82 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    LODWORD(v102) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  v5 = [*(DerivedStorage + 512) configurationID];
  v6 = captureSession_checkClientSessionIsAllowedToRun(a1, *(DerivedStorage + 512), 0, 0, 0);
  v7 = *(DerivedStorage + 512);
  block = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v8 = [v7 sinkConfigurations];
  v9 = [v8 countByEnumeratingWithState:&block objects:&v99 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v88;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v88 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&block + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v14 preparesCellularRadioForNetworkConnection])
        {
          v10 = 1;
          goto LABEL_17;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&block objects:&v99 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v10 = 0;
LABEL_17:
    v4 = MEMORY[0x1E695FF58];
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  if (v6)
  {
    captureSession_startGraph_cold_1(v6);
  }

  else if (*(DerivedStorage + 752))
  {
    cs_clearPocketDetectionNeeded(0, *(DerivedStorage + 88));
    if (*(DerivedStorage + 769) == 1)
    {
      *(DerivedStorage + 768) = 1;
      captureSession_makeCommittedConfigurationLive(a1, v5, @"start with empty graph");
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v15 = [*(DerivedStorage + 784) cameraSourcePipelines];
      v16 = [v15 countByEnumeratingWithState:&v78 objects:v77 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v79;
        while (2)
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v79 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v78 + 1) + 8 * j);
            [(FigCaptureCameraSourcePipeline *)v20 hackRetainedBufferCountsForDualStreamSources];
            v21 = [(FigCaptureCameraSourcePipeline *)v20 allocateSharedBufferPools];
            if (v21)
            {
              v6 = v21;
              captureSession_startGraph_cold_2(v21, v22);
              goto LABEL_94;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v78 objects:v77 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v76 = v10;
      v23 = CMBaseObjectGetDerivedStorage();
      v24 = *(v23 + 36);
      v99 = *(v23 + 20);
      v100 = v24;
      if (!FigCaptureClientIsContinuityCapture(&v99))
      {
        v26 = *(v23 + 512);
        if (v26)
        {
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v27 = [v26 sourceConfigurations];
          v28 = [v27 countByEnumeratingWithState:&v102 objects:&v99 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v103;
            while (2)
            {
              for (k = 0; k != v29; ++k)
              {
                if (*v103 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v102 + 1) + 8 * k);
                if ([v32 cinematicFramingEnabled])
                {
                  v33 = [v32 cinematicFramingControlMode];
                  v35 = *(v23 + 88);
                  if (v35)
                  {
                    v36 = v33;
                    if (BWDeviceIsiPad(v33, v34))
                    {
                      global_queue = dispatch_get_global_queue(-2, 0);
                      *type = MEMORY[0x1E69E9820];
                      v95 = 3221225472;
                      v96 = __captureSession_showCinematicFramingAlertIfApplicable_block_invoke;
                      v97 = &unk_1E798F870;
                      v98 = v35;
                      dispatch_async(global_queue, type);
                    }

                    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"cinematic_framing_onboarding_alert_shown", @"com.apple.cameracapture", 0);
                    v39 = AppBooleanValue != 0;
                    v40 = CFPreferencesCopyAppValue(@"cinematic_framing_clients", @"com.apple.cameracapture");
                    v41 = [objc_msgSend(objc_msgSend(v40 objectForKeyedSubscript:{v35), "objectForKeyedSubscript:", @"app_control_alert_shown", "BOOLValue"}];
                    if (!AppBooleanValue || (v41 & 1) == 0)
                    {
                      v42 = AppBooleanValue == 0;
                      if (!AppBooleanValue || ((v36 == 1) & ~v41) != 0)
                      {
                        if (v36 == 1)
                        {
                          LODWORD(v41) = 1;
                        }

                        v75 = v41;
                        v43 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.CMViewSrvc" viewControllerClassName:@"CinematicFramingRemoteAlertViewController"];
                        v44 = objc_alloc_init(MEMORY[0x1E69D4298]);
                        v74 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v43 configurationContext:v44];
                        v45 = objc_alloc_init(MEMORY[0x1E69D4288]);
                        if ((objc_msgSend_isEqualToString_(v35) & 1) == 0)
                        {
                          v46 = [MEMORY[0x1E698E740] processHandleForPID:*(v23 + 16) bundleID:v35];
                          [v45 setPresentationTarget:{objc_msgSend(objc_alloc(MEMORY[0x1E69D42C0]), "initWithTargetProcess:", v46)}];
                        }

                        v47 = MEMORY[0x1E695DF90];
                        v48 = [MEMORY[0x1E696AD98] numberWithInt:v36];
                        v49 = [v47 dictionaryWithObjectsAndKeys:{v35, @"bundleIdentifier", v48, @"controlMode", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v42), @"isFirstEverCinematicFramingAlert", 0}];
                        v93 = 0;
                        v50 = [objc_msgSend(MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v35 allowPlaceholder:0 error:{&v93), "localizedName"}];
                        if (v50)
                        {
                          [v49 setObject:v50 forKeyedSubscript:@"bundleDisplayName"];
                        }

                        v51 = [v45 setUserInfo:v49];
                        if (BWDeviceIsiPhone(v51, v52))
                        {
                          if (FigCaptureClientApplicationIDIsFaceTimeVariant(v35))
                          {
                            v53 = 3;
                          }

                          else
                          {
                            v53 = 1;
                          }

                          if (dword_1ED844050)
                          {
                            v92 = 0;
                            v91 = OS_LOG_TYPE_DEFAULT;
                            v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v55 = v92;
                            if (os_log_type_enabled(v54, v91))
                            {
                              v56 = v55;
                            }

                            else
                            {
                              v56 = v55 & 0xFFFFFFFE;
                            }

                            if (v56)
                            {
                              v83 = 136315394;
                              v84 = "captureSession_showCinematicFramingAlertIfApplicable";
                              v85 = 1024;
                              v86 = v53;
                              LODWORD(v73) = 18;
                              v72 = &v83;
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          v60 = dispatch_time(0, (1000000000 * v53));
                          v61 = dispatch_get_global_queue(2, 0);
                          *&block = MEMORY[0x1E69E9820];
                          *(&block + 1) = 3221225472;
                          *&v88 = __captureSession_showCinematicFramingAlertIfApplicable_block_invoke_1254;
                          *(&v88 + 1) = &unk_1E798F898;
                          *&v89 = v74;
                          *(&v89 + 1) = v45;
                          dispatch_after(v60, v61, &block);
                        }

                        else
                        {
                          if (dword_1ED844050)
                          {
                            v92 = 0;
                            v91 = OS_LOG_TYPE_DEFAULT;
                            v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v58 = v92;
                            if (os_log_type_enabled(v57, v91))
                            {
                              v59 = v58;
                            }

                            else
                            {
                              v59 = v58 & 0xFFFFFFFE;
                            }

                            if (v59)
                            {
                              v83 = 136315138;
                              v84 = "captureSession_showCinematicFramingAlertIfApplicable";
                              LODWORD(v73) = 12;
                              v72 = &v83;
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          [v74 activateWithContext:{v45, v72, v73}];
                        }

                        v39 = 1;
                        v41 = v75;
                      }

                      v62 = v41;
                      v63 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{v40, v72, v73}];
                      v64 = [MEMORY[0x1E695DF90] dictionary];
                      [v63 setObject:v64 forKeyedSubscript:v35];
                      [v64 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v62), @"app_control_alert_shown"}];
                      v65 = MEMORY[0x1E695E4D0];
                      if (!v39)
                      {
                        v65 = MEMORY[0x1E695E4C0];
                      }

                      CFPreferencesSetAppValue(@"cinematic_framing_onboarding_alert_shown", *v65, @"com.apple.cameracapture");
                      CFPreferencesSetAppValue(@"cinematic_framing_clients", v63, @"com.apple.cameracapture");
                      CFPreferencesAppSynchronize(@"com.apple.cameracapture");
                    }
                  }

                  else
                  {
                    captureSession_startGraph_cold_3(v33);
                  }

                  goto LABEL_79;
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v102 objects:&v99 count:16];
              if (v29)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          captureSession_startGraph_cold_4(0, v25);
        }
      }

LABEL_79:
      v66 = [*(DerivedStorage + 752) deferredNodePrepareEnabled];
      v4 = MEMORY[0x1E695FF58];
      if (v66)
      {
        os_unfair_lock_lock((DerivedStorage + 384));

        v67 = CMBaseObjectGetDerivedStorage();
        v68 = [*(v67 + 752) deferredPreparePrioritySinks];
        *&v99 = MEMORY[0x1E69E9820];
        *(&v99 + 1) = 3221225472;
        *&v100 = __captureSession_sinkNodesToWaitForBeforeStartingDeferredPrepare_block_invoke;
        *(&v100 + 1) = &__block_descriptor_40_e37_B24__0__BWSinkNode_8__NSDictionary_16l;
        v101 = v67;
        v69 = [v68 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v99)}];
        if ([v69 count])
        {
          *(DerivedStorage + 608) = [v69 mutableCopy];
        }

        os_unfair_lock_unlock((DerivedStorage + 384));
      }

      if (![*(DerivedStorage + 752) start:&v82])
      {
        if (v82)
        {
          v6 = [v82 code];
        }

        else
        {
          v6 = 0xFFFFFFFFLL;
        }

        goto LABEL_94;
      }

      *(DerivedStorage + 768) = 1;
      if (v76)
      {
        dispatch_async(*(DerivedStorage + 152), &__block_literal_global_1270);
      }

      if ((objc_msgSend_isEqualToString_(*(DerivedStorage + 88)) & 1) != 0 || objc_msgSend_isEqualToString_(*(DerivedStorage + 88)))
      {
        os_unfair_lock_lock(&sLockScreenCameraLaunchTelemetry);
        if (byte_1EB58EC04 == 1)
        {
          HIBYTE(word_1EB58EC10) = 1;
        }

        os_unfair_lock_unlock(&sLockScreenCameraLaunchTelemetry);
        os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
        if (dword_1ED84495C)
        {
          ++dword_1ED8449A8;
        }

        os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
      }
    }

    v6 = 0;
  }

  else
  {
    captureSession_startGraph_cold_5(&v99);
    v6 = v99;
  }

LABEL_94:
  if (*(DerivedStorage + 768) == 1)
  {
    v70 = mach_absolute_time();
  }

  else
  {
    v70 = 0;
  }

  *(DerivedStorage + 824) = v70;
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

void cs_clearPocketDetectionNeeded(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    if (cs_bundleIdentifierIsSecureCaptureExtension(a2))
    {
      v2 = cs_containingBundleIdentifierForSecureCaptureExtensionBundleIdentifier(v2);
      if (!v2)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v14, v15, v16, v17, v18, v19, v20);
        return;
      }
    }

    os_unfair_lock_lock(&sPocketDetectionState);
    if (!qword_1EB58E920 || !CFEqual(v2, qword_1EB58E920))
    {
      goto LABEL_16;
    }

    if (!a1 || qword_1EB58E938 == a1)
    {
      qword_1EB58E928 = 0;
      if (qword_1EB58E920)
      {
        CFRelease(qword_1EB58E920);
        qword_1EB58E920 = 0;
      }

      cs_cancelPocketDetectionTimeoutTimer();
      if (!dword_1ED844050)
      {
        goto LABEL_16;
      }

      v6 = OUTLINED_FUNCTION_54_7();
      v7 = OUTLINED_FUNCTION_110_3(v6);
      if (!OUTLINED_FUNCTION_5_2(v7))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!dword_1ED844050)
      {
LABEL_16:
        os_unfair_lock_unlock(&sPocketDetectionState);
        return;
      }

      v4 = OUTLINED_FUNCTION_54_7();
      v5 = OUTLINED_FUNCTION_110_3(v4);
      if (!OUTLINED_FUNCTION_5_2(v5))
      {
LABEL_15:
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_16_1(v8, v9, v10, v11, v12);
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    goto LABEL_15;
  }
}

void sub_1AC97AAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t FigCapturePixelFormatIs420(int a1)
{
  result = 1;
  if (a1 > 1534617135)
  {
    if (a1 > 2084070959)
    {
      if (a1 <= 2088269359)
      {
        if (a1 > 2087216687)
        {
          if (a1 == 2087216688)
          {
            return result;
          }

          v3 = 2088265264;
        }

        else
        {
          if (a1 == 2084070960)
          {
            return result;
          }

          v3 = 2084075056;
        }

        goto LABEL_52;
      }

      if (a1 <= 2100852271)
      {
        if (a1 == 2088269360)
        {
          return result;
        }

        v3 = 2100848176;
        goto LABEL_52;
      }

      if (a1 == 2100852272 || a1 == 2105042480)
      {
        return result;
      }

      v3 = 2105046576;
    }

    else
    {
      if (a1 <= 1882468911)
      {
        if (a1 > 1714696751)
        {
          if (a1 == 1714696752)
          {
            return result;
          }

          v3 = 1751527984;
        }

        else
        {
          if (a1 == 1534617136)
          {
            return result;
          }

          v3 = 1534621232;
        }

        goto LABEL_52;
      }

      if (a1 <= 2016686639)
      {
        if (a1 == 1882468912)
        {
          return result;
        }

        v3 = 1885745712;
        goto LABEL_52;
      }

      if (a1 == 2016686640 || a1 == 2019963440)
      {
        return result;
      }

      v3 = 2033463856;
    }

LABEL_52:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 792225327)
  {
    if (a1 <= 796423727)
    {
      if (a1 > 795371055)
      {
        if (a1 == 795371056)
        {
          return result;
        }

        v3 = 796419632;
      }

      else
      {
        if (a1 == 792225328)
        {
          return result;
        }

        v3 = 792229424;
      }

      goto LABEL_52;
    }

    if (a1 <= 875704437)
    {
      if (a1 == 796423728)
      {
        return result;
      }

      v3 = 875704422;
      goto LABEL_52;
    }

    if (a1 == 875704438 || a1 == 1530422832)
    {
      return result;
    }

    v3 = 1530426928;
    goto LABEL_52;
  }

  if (a1 <= 758670895)
  {
    if (a1 > 645424687)
    {
      if (a1 == 645424688)
      {
        return result;
      }

      v3 = 645428784;
    }

    else
    {
      if (a1 == 641230384)
      {
        return result;
      }

      v3 = 641234480;
    }

    goto LABEL_52;
  }

  if (a1 <= 761816623)
  {
    if (a1 == 758670896)
    {
      return result;
    }

    v3 = 758674992;
    goto LABEL_52;
  }

  if (a1 != 761816624 && a1 != 762865200)
  {
    v3 = 762869296;
    goto LABEL_52;
  }

  return result;
}

uint64_t mscsn_metadataOutputKeyForOutputIndex(int a1)
{
  result = 0;
  if (a1 <= 12)
  {
    switch(a1)
    {
      case 9:
        v3 = off_1E798AFF0;
        break;
      case 10:
        v3 = off_1E798AFE0;
        break;
      case 12:
        v3 = off_1E798B008;
        break;
      default:
        return result;
    }
  }

  else if (a1 > 14)
  {
    if (a1 == 15)
    {
      v3 = off_1E798B018;
    }

    else
    {
      if (a1 != 16)
      {
        return result;
      }

      v3 = off_1E798B028;
    }
  }

  else if (a1 == 13)
  {
    v3 = off_1E798B010;
  }

  else
  {
    v3 = off_1E798B030;
  }

  return *v3;
}

uint64_t FigCaptureClientIsContinuityCapture(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopySigningIdentifier(v3, 0);
  if (objc_msgSend_isEqualToString_(v5))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v5);
  }

  CFRelease(v4);
  return isEqualToString;
}

void *__captureSession_sinkNodesToWaitForBeforeStartingDeferredPrepare_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 nodeType] != @"Sink")
  {
    return 0;
  }

  if ([a2 nodeSubType] != 0x1F21A7070)
  {
    if ([a2 nodeSubType] == @"ImageQueue")
    {
      result = [*(*(a1 + 32) + 784) previewSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}];
      if (result)
      {
        v5 = [result discardsImageQueueSampleData];
        return (v5 ^ 1u);
      }

      return result;
    }

    return 0;
  }

  if ([*(*(a1 + 32) + 784) metadataSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}])
  {
    return 0;
  }

  result = [*(*(a1 + 32) + 784) videoDataSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}];
  if (result || (result = [*(*(a1 + 32) + 784) depthDataSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}]) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "visionDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "audioDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "pointCloudDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "cameraCalibrationDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0)
  {
    v5 = [result discardsSampleData];
    return (v5 ^ 1u);
  }

  return result;
}

int32x2_t FigCaptureSwapVideoDimensionsFor90Or270Rotation(int32x2_t *a1, int a2)
{
  if (a2 == 270 || a2 == 90)
  {
    result = vrev64_s32(*a1);
    *a1 = result;
  }

  return result;
}

uint64_t FigCaptureVTRotationFromDegrees(int a1)
{
  result = 0;
  if (a1 > 179)
  {
    if (a1 == 180)
    {
      v3 = MEMORY[0x1E6983FF0];
    }

    else
    {
      if (a1 != 270)
      {
        return result;
      }

      v3 = MEMORY[0x1E6983FF8];
    }
  }

  else if (a1)
  {
    if (a1 != 90)
    {
      return result;
    }

    v3 = MEMORY[0x1E6984000];
  }

  else
  {
    v3 = MEMORY[0x1E6983FE8];
  }

  return *v3;
}

double FigCaptureMakeMirrorAndRotateVideoTransform@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1E695EFD0];
  v10 = *MEMORY[0x1E695EFD0];
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *a5 = *MEMORY[0x1E695EFD0];
  *(a5 + 16) = v11;
  v12 = *(v9 + 32);
  *(a5 + 32) = v12;
  if (a3)
  {
    t2.a = -1.0;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.d = 1.0;
    t2.tx = a1;
    t2.ty = 0.0;
    *&t1.a = v10;
    *&t1.c = v11;
    *&t1.tx = v12;
    CGAffineTransformConcat(a5, &t1, &t2);
  }

  switch(a4)
  {
    case 270:
      *&t1.a = xmmword_1AD046850;
      t1.d = 0.0;
      t1.tx = 0.0;
      t1.c = 1.0;
      t1.ty = a1;
      goto LABEL_9;
    case 180:
      t1.a = -1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = -1.0;
      t1.tx = a1;
      t1.ty = a2;
      goto LABEL_9;
    case 90:
      *&t1.a = xmmword_1AD046820;
      *&t1.c = xmmword_1AD046840;
      t1.tx = a2;
      t1.ty = 0.0;
LABEL_9:
      v13 = *(a5 + 16);
      *&v16.a = *a5;
      *&v16.c = v13;
      *&v16.tx = *(a5 + 32);
      CGAffineTransformConcat(&t2, &v16, &t1);
      v14 = *&t2.c;
      *a5 = *&t2.a;
      *(a5 + 16) = v14;
      *&v10 = t2.tx;
      *(a5 + 32) = *&t2.tx;
      break;
  }

  return *&v10;
}

uint64_t ptn_rotationDegreesAndMirroringFromLiveConfiguration(uint64_t result, int a2, int a3, char *a4)
{
  if (a2 & a3)
  {
LABEL_2:
    v5 = a2 & a3 ^ 1;
    result = FigCaptureNormalizeAngle(result + 180);
    if (!a4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if ((a2 & 1) == 0 && !a3)
  {
    v5 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (result == 270 || result == 90)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (a3)
  {
    goto LABEL_2;
  }

  v5 = 1;
  if (!a4)
  {
    return result;
  }

LABEL_7:
  *a4 = v5;
  return result;
}

void sub_1AC97E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia(void *a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v14 = 0;
        ParentOutputOfOutputWithSharedPool = gr_findParentOutputOfOutputWithSharedPool(v8, a2, &v14);
        if (!ParentOutputOfOutputWithSharedPool)
        {
          gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia_cold_3();
        }

        v10 = [ParentOutputOfOutputWithSharedPool mediaPropertiesForAttachedMediaKey:v14];
        if (!v10)
        {
          gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia_cold_2();
        }

        v11 = [v10 preparedOrLivePixelBufferPool];
        if (!v11)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Parent of shared pool output should have a prepared pool" userInfo:0]);
        }

        v12 = v11;
        v13 = [v8 mediaPropertiesForAttachedMediaKey:v14];
        if (!v13)
        {
          gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia_cold_1();
        }

        [v13 setPreparedSharedPixelBufferPool:v12];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void *gr_propagatePreparedPoolsToSharedPoolOutputs(void *a1, void *a2)
{
  gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia(a1, @"PrimaryFormat");
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a2);
        }

        gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia([a2 objectForKeyedSubscript:*(*(&v8 + 1) + 8 * v6)], *(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [a2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigSampleBufferProcessorCreateForAutofocus(id *a1, void *a2, void *a3, void *a4, void *a5, const __CFDictionary *a6, const void *a7, CFTypeRef *a8, id *a9)
{
  if (a8)
  {
    if (a2)
    {
      v12 = a7;
      FigImageControl_Sharpness_ConfigureLogging();
      FigImageControl_Sharpness_ConfigureLogging();
      FigImageControl_Sharpness_ConfigureLogging();
      FigImageControl_Sharpness_ConfigureLogging();
      v17 = *MEMORY[0x1E695E480];
      FigSampleBufferProcessorGetClassID();
      v18 = CMDerivedObjectCreate();
      if (v18)
      {
        v43 = v18;
        FigSampleBufferProcessorCreateForAutofocus_cold_1();
        return v43;
      }

      v49 = a6;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      bzero(DerivedStorage, 0x4720uLL);
      *(DerivedStorage + 7576) = 0;
      *(DerivedStorage + 7428) = 1;
      *(DerivedStorage + 7616) = FigGetCFPreferenceNumberWithDefault();
      *(DerivedStorage + 7656) = FigGetCFPreferenceNumberWithDefault();
      *(DerivedStorage + 7596) = FigGetCFPreferenceNumberWithDefault();
      *(DerivedStorage + 7600) = FigGetCFPreferenceNumberWithDefault();
      *(DerivedStorage + 9088) = FigGetCFPreferenceNumberWithDefault();
      *(DerivedStorage + 7468) = FigGetCFPreferenceNumberWithDefault();
      *(DerivedStorage + 7537) = FigGetCFPreferenceNumberWithDefault() != 0;
      *(DerivedStorage + 7536) = FigGetCFPreferenceNumberWithDefault() != 0;
      v20 = 0;
      *(DerivedStorage + 7538) = FigGetCFPreferenceNumberWithDefault() != 0;
      do
      {
        v21 = vcvts_n_f32_u32(v20, 8uLL);
        if (v21 >= 0.018)
        {
          v22 = powf(v21, 0.45) * 1.099 + -0.0989999995;
        }

        else
        {
          v22 = v21 * 4.5;
        }

        *(DerivedStorage + 9184 + 4 * v20++) = v22;
      }

      while (v20 != 257);
      *(DerivedStorage + 10212) = 0;
      if (!*(DerivedStorage + 17368))
      {
        v23 = FigSimpleMutexCreate();
        *(DerivedStorage + 17368) = v23;
        if (!v23)
        {
          emitter = fig_log_get_emitter();
          v43 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0ELL, "|___ fsbp_Autofocus ___|", 0xDBA, v9, v45, v46, a1);
          goto LABEL_40;
        }
      }

      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 16) = a3;
      *(DerivedStorage + 24) = a4;
      *(DerivedStorage + 32) = a5;
      v24 = CMBaseObjectGetDerivedStorage();
      v25 = [*(v24 + 8) supportedProperties];
      if (v25)
      {
        v26 = v25;
        *(v24 + 44) = CFDictionaryContainsKey(v25, *off_1E798BCB0) != 0;
        *(v24 + 45) = CFDictionaryContainsKey(v26, *off_1E798BC88) != 0;
        *(v24 + 510) = CFDictionaryContainsKey(v26, *off_1E798C0E0) != 0;
        *(v24 + 509) = CFDictionaryContainsKey(v26, *off_1E798C078) != 0;
        *(v24 + 508) = CFDictionaryContainsKey(v26, *off_1E798BE08) != 0;
        *(v24 + 511) = CFDictionaryContainsKey(v26, *off_1E798BBD8) != 0;
        *(v24 + 512) = CFDictionaryContainsKey(v26, *off_1E798BC08) != 0;
        *(v24 + 514) = CFDictionaryContainsKey(v26, *off_1E798BCA8) != 0;
        *(v24 + 518) = CFDictionaryContainsKey(v26, *off_1E798BE00) != 0;
        *(v24 + 519) = CFDictionaryContainsKey(v26, *off_1E798BBE0) != 0;
        *(v24 + 515) = CFDictionaryContainsKey(v26, *off_1E798BF98) != 0;
        *(v24 + 520) = CFDictionaryContainsKey(v26, *off_1E798BFB8) != 0;
        *(v24 + 521) = CFDictionaryContainsKey(v26, *off_1E798BE78) != 0;
        *(v24 + 522) = CFDictionaryContainsKey(v26, *off_1E798BD60) != 0;
        Value = CFDictionaryGetValue(v26, *off_1E798BFF0);
        if (Value)
        {
          CFDictionaryGetValue(Value, *off_1E798A160);
          *(v24 + 516) = FigCFEqual() != 0;
        }

        v28 = CFDictionaryGetValue(v26, *off_1E798BE20);
        if (v28)
        {
          CFDictionaryGetValue(v28, *off_1E798A160);
          *(v24 + 513) = FigCFEqual() != 0;
        }

        *(v24 + 517) = CFDictionaryContainsKey(v26, *off_1E798BFF8) != 0;
      }

      *(DerivedStorage + 5656) = -1;
      *(DerivedStorage + 5648) = -1;
      *(DerivedStorage + 5664) = -1;
      *(DerivedStorage + 6304) = 0;
      v29 = FigCoreMotionAlloc(1, 0, 0, 0.033333, 0.0);
      *(DerivedStorage + 48) = v29;
      if (!v29)
      {
        FigSampleBufferProcessorCreateForAutofocus_cold_6();
        v43 = 0;
        goto LABEL_40;
      }

      v30 = CMSimpleQueueCreate(v17, 100, (DerivedStorage + 72));
      if (v30)
      {
        v43 = v30;
        FigSampleBufferProcessorCreateForAutofocus_cold_2();
        goto LABEL_40;
      }

      if (v12)
      {
        CFRetain(v12);
      }

      else
      {
        v37 = FigActivitySchedulerCreateForNewThread();
        if (v37)
        {
          v43 = v37;
          FigSampleBufferProcessorCreateForAutofocus_cold_3();
          goto LABEL_40;
        }

        v12 = a7;
      }

      *(DerivedStorage + 64) = v12;
      v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v38)
      {
        v39 = v38(v12, setPropertiesOnStream, 0);
        if (!v39)
        {
          *(DerivedStorage + 532) = 0x3F0000003F000000;
          *(DerivedStorage + 7552) = 1;
          *(DerivedStorage + 9048) = 1;
          *(DerivedStorage + 40) = -1;
          *(DerivedStorage + 18200) = 0;
          *(DerivedStorage + 17736) = 0;
          configureDevice(0, v49);
          if (*(DerivedStorage + 652) || (v40 = [*(DerivedStorage + 8) registerForNotification:*off_1E798B870 listener:0 callback:captureStreamListener], !v40))
          {
            v41 = *(DerivedStorage + 1804);
            if (v41 >= 1)
            {
              v42 = (DerivedStorage + 16616);
              do
              {
                *(v42 - 30) = 0x7FEFFFFFFFFFFFFFLL;
                *v42++ = 0x7FEFFFFFFFFFFFFFLL;
                --v41;
              }

              while (v41);
            }

            v43 = 0;
            *a8 = 0;
            return v43;
          }

          v43 = v40;
          FigSampleBufferProcessorCreateForAutofocus_cold_4();
LABEL_40:
          v47 = *(DerivedStorage + 48);
          if (v47)
          {
            FigCoreMotionRelease(v47);
          }

          return v43;
        }

        v43 = v39;
      }

      else
      {
        v43 = 4294954514;
      }

      FigSampleBufferProcessorCreateForAutofocus_cold_5(v43);
      goto LABEL_40;
    }

    v31 = fig_log_get_emitter();
    v34 = v9;
    v35 = 3480;
  }

  else
  {
    v31 = fig_log_get_emitter();
    v34 = v9;
    v35 = 3477;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFCE14, "|___ fsbp_Autofocus ___|", v35, v34, v32, v33, a9);
}

FigCoreMotionDelegate *FigCoreMotionAlloc(int a1, int a2, int a3, float a4, float a5)
{
  v10 = [FigCoreMotionDelegate alloc];
  *&v11 = a4;
  *&v12 = a5;

  return [(FigCoreMotionDelegate *)v10 initWithAccelerometer:a1 != 0 gravityZ:a2 != 0 fusedMotion:a3 != 0 accelUpdateInterval:0 fusedMotionUpdateInterval:v11 motionCallbackThreadPriority:v12];
}

uint64_t configureDevice(uint64_t a1, const __CFDictionary *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = result;
    Value = CFDictionaryGetValue(a2, *off_1E798A9B8);
    v7 = CFDictionaryGetValue(a2, *off_1E798A968);
    v158 = CFDictionaryGetValue(a2, *off_1E798A9E0);
    theDict = CFDictionaryGetValue(a2, *off_1E798A978);
    v155 = CFDictionaryGetValue(a2, *off_1E798A970);
    BOOLean = CFDictionaryGetValue(a2, *off_1E798A988);
    v8 = CFDictionaryGetValue(a2, *off_1E798A9C8);
    *(v5 + 18144) = 0;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    *(v5 + 18152) = 0x100000001;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    if (v8)
    {
      v9 = CFBooleanGetValue(v8) != 0;
    }

    else
    {
      v9 = 0;
    }

    *(v5 + 18200) = v9;
    v10 = CFDictionaryGetValue(a2, *off_1E798A980);
    result = objc_msgSend_isEqualToString_(v10);
    if ((result & 1) != 0 || (result = objc_msgSend_isEqualToString_(v10), result))
    {
      *(v5 + 7473) = 1;
    }

    if (v7)
    {
      result = CFArrayGetCount(v7);
      if (result >= 1)
      {
        v11 = result;
        v12 = 0;
        v13 = *off_1E798A0E8;
        v14 = *off_1E798A0C8;
        v152 = *off_1E798A0E8;
        cf2 = *off_1E798A0E0;
        v143 = *off_1E798A0F8;
        v144 = v7;
        v150 = *off_1E7989E50;
        v151 = *off_1E7989F18;
        v148 = *off_1E798A0C8;
        v149 = result;
        v145 = Value;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
          result = CFEqual(ValueAtIndex, v13);
          if (result)
          {
            goto LABEL_246;
          }

          result = CFEqual(ValueAtIndex, v14);
          if (result)
          {
            goto LABEL_246;
          }

          CameraParametersForPortType = af_sbp_getCameraParametersForPortType(a1, ValueAtIndex);
          v17 = Value ? CFDictionaryGetValue(Value, ValueAtIndex) : 0;
          v18 = theDict ? CFDictionaryGetValue(theDict, ValueAtIndex) : 0;
          v19 = v155 ? CFDictionaryGetValue(v155, ValueAtIndex) : 0;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (!CameraParametersForPortType)
          {
            break;
          }

          v147 = DerivedStorage;
          v157 = v18;
          v21 = *(CameraParametersForPortType + 4);
          bzero(CameraParametersForPortType, 0x4E8uLL);
          *(CameraParametersForPortType + 4) = v21;
          if (ValueAtIndex)
          {
            if (CFEqual(ValueAtIndex, cf2))
            {
              v22 = 1;
            }

            else
            {
              v22 = CFEqual(ValueAtIndex, v143) != 0;
            }

            *(CameraParametersForPortType + 5) = v22;
          }

          if (v17)
          {
            v23 = CFDictionaryGetValue(v17, @"ToneCurvesBlack");
            if (v23)
            {
              CFNumberGetValue(v23, kCFNumberFloatType, (CameraParametersForPortType + 12));
            }

            v24 = CFDictionaryGetValue(v17, @"ToneCurvesS0");
            if (v24)
            {
              CFNumberGetValue(v24, kCFNumberFloatType, (CameraParametersForPortType + 16));
            }

            v25 = CFDictionaryGetValue(v17, @"ToneCurvesS1");
            if (v25)
            {
              CFNumberGetValue(v25, kCFNumberFloatType, (CameraParametersForPortType + 20));
            }

            v26 = CFDictionaryGetValue(v17, @"ToneCurvesWhite");
            if (v26)
            {
              CFNumberGetValue(v26, kCFNumberFloatType, (CameraParametersForPortType + 24));
            }

            v27 = CFDictionaryGetValue(v17, @"ToneCurvesLinearity");
            if (v27)
            {
              CFNumberGetValue(v27, kCFNumberFloatType, (CameraParametersForPortType + 28));
            }

            v28 = CFDictionaryGetValue(v17, @"SaturationMin");
            if (v28)
            {
              CFNumberGetValue(v28, kCFNumberFloatType, (CameraParametersForPortType + 32));
            }

            v29 = CFDictionaryGetValue(v17, @"SaturationMax");
            if (v29)
            {
              CFNumberGetValue(v29, kCFNumberFloatType, (CameraParametersForPortType + 36));
            }

            v30 = CFDictionaryGetValue(v17, @"AEConvergenceVideo");
            if (v30)
            {
              CFNumberGetValue(v30, kCFNumberSInt32Type, (CameraParametersForPortType + 44));
            }

            v31 = CFDictionaryGetValue(v17, @"AEConvergenceStill");
            if (v31)
            {
              CFNumberGetValue(v31, kCFNumberSInt32Type, (CameraParametersForPortType + 48));
            }

            v32 = CFDictionaryGetValue(v17, @"AELockDoNotLockLTM");
            if (v32)
            {
              CFNumberGetValue(v32, kCFNumberCharType, (CameraParametersForPortType + 52));
            }

            else
            {
              *(CameraParametersForPortType + 52) = 0;
            }

            v35 = CFDictionaryGetValue(v17, @"FocusScanPositions");
            if (v35)
            {
              CFNumberGetValue(v35, kCFNumberIntType, (CameraParametersForPortType + 68));
            }

            v36 = CFDictionaryGetValue(v17, @"ContinuousAutofocusVideo");
            if (v36)
            {
              CFNumberGetValue(v36, kCFNumberCharType, (CameraParametersForPortType + 53));
            }

            v37 = CFDictionaryGetValue(v17, @"PeakTrackingVideoFocusSpeed");
            if (v37)
            {
              CFNumberGetValue(v37, kCFNumberIntType, (CameraParametersForPortType + 92));
            }

            v38 = CFDictionaryGetValue(v17, @"MatrixFocus");
            if (v38)
            {
              CFNumberGetValue(v38, kCFNumberIntType, (CameraParametersForPortType + 84));
            }

            v39 = CFDictionaryGetValue(v17, @"FocusScanPeakPrediction");
            if (v39)
            {
              CFNumberGetValue(v39, kCFNumberIntType, (CameraParametersForPortType + 72));
            }

            v40 = CFDictionaryGetValue(v17, @"PreFlashFocusThreshold");
            if (v40)
            {
              CFNumberGetValue(v40, kCFNumberIntType, (CameraParametersForPortType + 76));
            }

            v41 = CFDictionaryGetValue(v17, @"FocusScanDuringPreFlash");
            if (v41)
            {
              CFNumberGetValue(v41, kCFNumberIntType, (CameraParametersForPortType + 80));
            }

            v42 = CFDictionaryGetValue(v17, @"UseTapToFocusPixels");
            if (v42)
            {
              CFNumberGetValue(v42, kCFNumberCharType, (CameraParametersForPortType + 55));
            }

            v43 = CFDictionaryGetValue(v17, @"UseFocusNow");
            if (v43)
            {
              CFNumberGetValue(v43, kCFNumberCharType, (CameraParametersForPortType + 56));
            }

            v44 = CFDictionaryGetValue(v17, @"FirmwareControlledAutoFocus");
            if (v44)
            {
              CFNumberGetValue(v44, kCFNumberCharType, (CameraParametersForPortType + 58));
            }

            v45 = CFDictionaryGetValue(v17, @"FocusMappingKnee");
            if (v45)
            {
              CFNumberGetValue(v45, kCFNumberFloatType, (CameraParametersForPortType + 96));
            }

            v46 = CFDictionaryGetValue(v17, @"FocusMappingSlope0");
            if (v46)
            {
              CFNumberGetValue(v46, kCFNumberFloatType, (CameraParametersForPortType + 100));
            }

            v47 = CFDictionaryGetValue(v17, @"FocusMappingSlope1");
            if (v47)
            {
              CFNumberGetValue(v47, kCFNumberFloatType, (CameraParametersForPortType + 104));
            }

            v48 = CFDictionaryGetValue(v17, @"HorizontalScanStartPosition");
            if (v48)
            {
              CFNumberGetValue(v48, kCFNumberIntType, (CameraParametersForPortType + 64));
            }

            else
            {
              *(CameraParametersForPortType + 64) = 31;
            }

            v49 = CFDictionaryGetValue(v17, @"StillInfinityPosition");
            if (v49)
            {
              CFNumberGetValue(v49, kCFNumberSInt32Type, (CameraParametersForPortType + 120));
            }

            v50 = CFDictionaryGetValue(v17, @"VideoInfinityPosition");
            if (v50)
            {
              CFNumberGetValue(v50, kCFNumberSInt32Type, (CameraParametersForPortType + 124));
            }

            v51 = CFDictionaryGetValue(v17, @"ExposureWindowSize");
            if (v51)
            {
              CFNumberGetValue(v51, kCFNumberFloatType, (CameraParametersForPortType + 40));
            }

            *(CameraParametersForPortType + 912) = 1046562734;
            v52 = CFDictionaryGetValue(v17, @"FaceAEMaxFaceWeight");
            if (v52)
            {
              CFNumberGetValue(v52, kCFNumberFloatType, (CameraParametersForPortType + 916));
            }

            v53 = CFDictionaryGetValue(v17, @"FaceAELowKeyCorrection");
            if (v53)
            {
              CFNumberGetValue(v53, kCFNumberFloatType, (CameraParametersForPortType + 928));
            }

            *(CameraParametersForPortType + 920) = *(CameraParametersForPortType + 928);
            v54 = CFDictionaryGetValue(v17, @"PanoramaFaceAELowKeyCorrection");
            if (v54)
            {
              CFNumberGetValue(v54, kCFNumberFloatType, (CameraParametersForPortType + 920));
            }

            v55 = CFDictionaryGetValue(v17, @"FaceAEHighKeyCorrection");
            if (v55)
            {
              CFNumberGetValue(v55, kCFNumberFloatType, (CameraParametersForPortType + 932));
            }

            *(CameraParametersForPortType + 924) = *(CameraParametersForPortType + 932);
            v56 = CFDictionaryGetValue(v17, @"PanoramaFaceAEHighKeyCorrection");
            if (v56)
            {
              CFNumberGetValue(v56, kCFNumberFloatType, (CameraParametersForPortType + 924));
            }

            v57 = CFDictionaryGetValue(v17, @"FaceAEDarkOutlier");
            if (v57)
            {
              CFNumberGetValue(v57, kCFNumberFloatType, (CameraParametersForPortType + 948));
            }

            v58 = CFDictionaryGetValue(v17, @"FaceAEBrightOutlier");
            if (v58)
            {
              CFNumberGetValue(v58, kCFNumberFloatType, (CameraParametersForPortType + 952));
            }

            v59 = CFDictionaryGetValue(v17, @"FaceAEVariance");
            if (v59)
            {
              CFNumberGetValue(v59, kCFNumberFloatType, (CameraParametersForPortType + 956));
            }

            v60 = CFDictionaryGetValue(v17, @"FaceAELowQuantile");
            if (v60)
            {
              CFNumberGetValue(v60, kCFNumberFloatType, (CameraParametersForPortType + 936));
            }

            v61 = CFDictionaryGetValue(v17, @"FaceAECenterQuantile");
            if (v61)
            {
              CFNumberGetValue(v61, kCFNumberFloatType, (CameraParametersForPortType + 940));
            }

            v62 = CFDictionaryGetValue(v17, @"FaceAEHighQuantile");
            if (v62)
            {
              CFNumberGetValue(v62, kCFNumberFloatType, (CameraParametersForPortType + 944));
            }

            v63 = CFDictionaryGetValue(v17, @"panoramaMaxIntegrationTime");
            if (v63)
            {
              CFNumberGetValue(v63, kCFNumberSInt32Type, (CameraParametersForPortType + 960));
            }

            v64 = CFDictionaryGetValue(v17, @"panoramaAEMaxGain");
            if (v64)
            {
              CFNumberGetValue(v64, kCFNumberSInt32Type, (CameraParametersForPortType + 964));
            }

            v65 = CFDictionaryGetValue(v17, @"panoramaAEMinGain");
            if (v65)
            {
              CFNumberGetValue(v65, kCFNumberSInt32Type, (CameraParametersForPortType + 968));
            }

            v66 = CFDictionaryGetValue(v17, @"panoramaAEGainThresholdForFlickerZoneIntegrationTimeTransition");
            if (v66)
            {
              CFNumberGetValue(v66, kCFNumberSInt32Type, (CameraParametersForPortType + 972));
            }

            v67 = CFDictionaryGetValue(v17, @"panoramaAEIntegrationTimeForUnityGainToMinGainTransition");
            if (v67)
            {
              CFNumberGetValue(v67, kCFNumberSInt32Type, (CameraParametersForPortType + 976));
            }

            v68 = CFDictionaryGetValue(v17, @"panoramaAEMode");
            if (v68)
            {
              CFNumberGetValue(v68, kCFNumberSInt32Type, (CameraParametersForPortType + 980));
            }

            v69 = CFDictionaryGetValue(v17, @"panoramaAEUpperExposureDelta");
            if (v69)
            {
              CFNumberGetValue(v69, kCFNumberSInt32Type, (CameraParametersForPortType + 984));
            }

            v70 = CFDictionaryGetValue(v17, @"panoramaAELowerExposureDelta");
            if (v70)
            {
              CFNumberGetValue(v70, kCFNumberSInt32Type, (CameraParametersForPortType + 988));
            }

            v71 = CFDictionaryGetValue(v17, @"panoramaAEMaxPerFrameExposureDelta");
            if (v71)
            {
              CFNumberGetValue(v71, kCFNumberSInt32Type, (CameraParametersForPortType + 992));
            }

            v72 = CFDictionaryGetValue(v17, @"panoramaDoNotLockBLC");
            if (v72)
            {
              CFNumberGetValue(v72, kCFNumberCharType, (CameraParametersForPortType + 996));
            }

            else
            {
              *(CameraParametersForPortType + 996) = 0;
            }

            v73 = CFDictionaryGetValue(v17, @"panoramaDoNotLockLTM");
            if (v73)
            {
              CFNumberGetValue(v73, kCFNumberCharType, (CameraParametersForPortType + 997));
            }

            else
            {
              *(CameraParametersForPortType + 997) = 0;
            }

            v74 = CFDictionaryGetValue(v17, @"panoramaUsePreviewAEConvergenceForRecording");
            if (v74)
            {
              CFNumberGetValue(v74, kCFNumberCharType, (CameraParametersForPortType + 998));
            }

            else
            {
              *(CameraParametersForPortType + 998) = 0;
            }

            v75 = CFDictionaryGetValue(v17, @"SharpnessLightLevel");
            if (v75)
            {
              unpackIntArray(v75, (CameraParametersForPortType + 128), 0xAu);
            }

            v76 = CFDictionaryGetValue(v17, @"SharpnessValue");
            if (v76)
            {
              unpackIntArray(v76, (CameraParametersForPortType + 168), 0xAu);
            }

            v77 = CFDictionaryGetValue(v17, @"SaturationLightLevel");
            if (v77)
            {
              unpackIntArray(v77, (CameraParametersForPortType + 208), 0xAu);
            }

            v78 = CFDictionaryGetValue(v17, @"SaturationValue");
            if (v78)
            {
              unpackIntArray(v78, (CameraParametersForPortType + 248), 0xAu);
            }

            v79 = CFDictionaryGetValue(v17, @"NoiseReductionLightLevel");
            if (v79)
            {
              unpackIntArray(v79, (CameraParametersForPortType + 288), 0xAu);
            }

            v80 = CFDictionaryGetValue(v17, @"NoiseReductionValue");
            if (v80)
            {
              unpackIntArray(v80, (CameraParametersForPortType + 328), 0xAu);
            }

            v81 = CFDictionaryGetValue(v17, @"ColorSuppressionLightLevel");
            if (v81)
            {
              unpackIntArray(v81, (CameraParametersForPortType + 368), 0xAu);
            }

            v82 = CFDictionaryGetValue(v17, @"ColorSuppressionValue");
            if (v82)
            {
              unpackIntArray(v82, (CameraParametersForPortType + 408), 0xAu);
            }

            v83 = CFDictionaryGetValue(v17, @"DynamicRangeCompressionLightLevel");
            if (v83)
            {
              unpackIntArray(v83, (CameraParametersForPortType + 448), 0xAu);
            }

            v84 = CFDictionaryGetValue(v17, @"DynamicRangeCompressionValue");
            if (v84)
            {
              unpackIntArray(v84, (CameraParametersForPortType + 488), 0xAu);
            }

            v85 = CFDictionaryGetValue(v17, @"ToneCurveBlackLightLevel");
            if (v85)
            {
              unpackIntArray(v85, (CameraParametersForPortType + 528), 0xAu);
            }

            v86 = CFDictionaryGetValue(v17, @"ToneCurveBlackValue");
            if (v86)
            {
              unpackIntArray(v86, (CameraParametersForPortType + 568), 0xAu);
            }

            v87 = CFDictionaryGetValue(v17, @"ToneCurveWhiteWeightLightLevel");
            if (v87)
            {
              unpackIntArray(v87, (CameraParametersForPortType + 608), 0xAu);
            }

            v88 = CFDictionaryGetValue(v17, @"ToneCurveWhiteWeightValue");
            if (v88)
            {
              unpackIntArray(v88, (CameraParametersForPortType + 648), 0xAu);
            }

            v89 = CFDictionaryGetValue(v17, @"ToneCurveLinearityLightLevel");
            if (v89)
            {
              unpackIntArray(v89, (CameraParametersForPortType + 688), 0xAu);
            }

            v90 = CFDictionaryGetValue(v17, @"ToneCurveLinearityValue");
            if (v90)
            {
              unpackIntArray(v90, (CameraParametersForPortType + 728), 0xAu);
            }

            v91 = CFDictionaryGetValue(v17, @"ToneCurveStabilityLightLevel");
            if (v91)
            {
              unpackIntArray(v91, (CameraParametersForPortType + 768), 0xAu);
            }

            v92 = CFDictionaryGetValue(v17, @"ToneCurveStabilityValue");
            if (v92)
            {
              unpackIntArray(v92, (CameraParametersForPortType + 808), 0xAu);
            }

            v93 = CFDictionaryGetValue(v17, @"SpatialNoiseFilteringGainLevel");
            if (v93)
            {
              unpackIntArray(v93, (CameraParametersForPortType + 848), 8u);
            }

            v94 = CFDictionaryGetValue(v17, @"SpatialNoiseFilteringValue");
            if (v94)
            {
              unpackIntArray(v94, (CameraParametersForPortType + 880), 8u);
            }

            v95 = v19;
            v96 = CFDictionaryGetValue(v17, @"HDRscene_hist_exp");
            if (v96)
            {
              CFNumberGetValue(v96, kCFNumberFloatType, (CameraParametersForPortType + 1004));
            }

            v97 = a1;
            v98 = CFDictionaryGetValue(v17, @"HDRscene_histIndices");
            if (v98)
            {
              v99 = v98;
              unpackIntArray(v98, (CameraParametersForPortType + 1008), 0x10u);
              *(CameraParametersForPortType + 1000) = CFArrayGetCount(v99);
            }

            v100 = CFDictionaryGetValue(v17, @"HDRscene_histTypes");
            if (v100)
            {
              unpackIntArray(v100, (CameraParametersForPortType + 1072), 0x10u);
            }

            v101 = CFDictionaryGetValue(v17, @"HDRscene_histWeights");
            if (v101)
            {
              v102 = v101;
              Count = CFArrayGetCount(v101);
              v104 = Count >= 0x10 ? 16 : Count;
              if (Count)
              {
                v105 = 0;
                v106 = (CameraParametersForPortType + 1136);
                do
                {
                  v107 = CFArrayGetValueAtIndex(v102, v105);
                  CFNumberGetValue(v107, kCFNumberFloatType, v106);
                  ++v105;
                  v106 += 4;
                }

                while (v104 != v105);
              }
            }

            v108 = CFDictionaryGetValue(v17, @"HDRscene_histOffset");
            if (v108)
            {
              CFNumberGetValue(v108, kCFNumberFloatType, (CameraParametersForPortType + 1200));
            }

            v109 = CFDictionaryGetValue(v17, @"HDRscene_thresh");
            a1 = v97;
            v19 = v95;
            v34 = v157;
            if (v109)
            {
              CFNumberGetValue(v109, kCFNumberFloatType, (CameraParametersForPortType + 1204));
            }

            v110 = CFDictionaryGetValue(v17, @"HDRscene_shadow_thresh");
            v111 = (CameraParametersForPortType + 1208);
            Value = v145;
            if (v110)
            {
              CFNumberGetValue(v110, kCFNumberFloatType, v111);
            }

            else
            {
              *v111 = 2143289344;
            }

            v7 = v144;
            v112 = CFDictionaryGetValue(v17, @"HDRscene_normalizedSNR_thresh");
            if (v112)
            {
              CFNumberGetValue(v112, kCFNumberFloatType, (CameraParametersForPortType + 1212));
            }

            v113 = CFDictionaryGetValue(v17, @"HDRscene_dampingThresh0");
            if (v113)
            {
              CFNumberGetValue(v113, kCFNumberFloatType, (CameraParametersForPortType + 1220));
            }

            v114 = CFDictionaryGetValue(v17, @"HDRscene_dampingThresh1");
            if (v114)
            {
              CFNumberGetValue(v114, kCFNumberFloatType, (CameraParametersForPortType + 1224));
            }

            v115 = CFDictionaryGetValue(v17, @"HDRscene_ScoreVariationThresh");
            if (v115)
            {
              CFNumberGetValue(v115, kCFNumberFloatType, (CameraParametersForPortType + 1228));
            }

            v116 = CFDictionaryGetValue(v17, @"HDRscene_toneLast");
            if (v116)
            {
              CFNumberGetValue(v116, kCFNumberIntType, (CameraParametersForPortType + 1216));
            }

            v117 = CFDictionaryGetValue(v17, @"HDRscene_temporal_buffer_size");
            if (v117)
            {
              CFNumberGetValue(v117, kCFNumberIntType, (CameraParametersForPortType + 1236));
              v118 = *(CameraParametersForPortType + 1236);
              if (v118 >= 30)
              {
                v118 = 30;
              }

              *(CameraParametersForPortType + 1236) = v118;
            }

            v119 = CFDictionaryGetValue(v17, @"HDRscene_temporal_buffer_size_lowlight");
            if (v119)
            {
              CFNumberGetValue(v119, kCFNumberIntType, (CameraParametersForPortType + 1232));
              v120 = *(CameraParametersForPortType + 1232);
              if (v120 >= 30)
              {
                v120 = 30;
              }

              *(CameraParametersForPortType + 1232) = v120;
            }

            v121 = CFDictionaryGetValue(v17, @"HDRscene_temporal_buffer_size_min");
            if (v121)
            {
              CFNumberGetValue(v121, kCFNumberIntType, (CameraParametersForPortType + 1240));
              v122 = *(CameraParametersForPortType + 1240);
              if (v122 >= *(CameraParametersForPortType + 1236))
              {
                v122 = *(CameraParametersForPortType + 1236);
              }

              *(CameraParametersForPortType + 1240) = v122;
            }

            v123 = CFDictionaryGetValue(v17, @"HDRscene_exptimeThresh");
            if (v123)
            {
              CFNumberGetValue(v123, kCFNumberFloatType, (CameraParametersForPortType + 1244));
            }

            v124 = CFDictionaryGetValue(v17, @"ExposureStabilityCount");
            if (v124)
            {
              CFNumberGetValue(v124, kCFNumberIntType, (CameraParametersForPortType + 60));
            }

            v33 = 0;
          }

          else
          {
            v33 = -12780;
            v34 = v157;
          }

          if (v158)
          {
            valuePtr[0] = 0;
            CFNumberGetValue(v158, kCFNumberSInt32Type, valuePtr);
            v125 = valuePtr[0];
            *(CameraParametersForPortType + 88) = valuePtr[0];
            if (v125 >= 120)
            {
              *(CameraParametersForPortType + 44) = FigGetCFPreferenceNumberWithDefault();
            }
          }

          if (BOOLean)
          {
            v126 = CFBooleanGetValue(BOOLean) != 0;
          }

          else
          {
            v126 = 0;
          }

          *(CameraParametersForPortType + 54) = v126;
          if (!v19)
          {
            FloatIfPresent = configureDevice_cold_4();
            return configureDevice_cold_5(FloatIfPresent);
          }

          [objc_msgSend(v19 objectForKeyedSubscript:{v150), "floatValue"}];
          *CameraParametersForPortType = v127;
          FloatIfPresent = [objc_msgSend(v19 objectForKeyedSubscript:{v151), "floatValue"}];
          if (!v34)
          {
            goto LABEL_241;
          }

          v130 = v129;
          FloatIfPresent = CFEqual(ValueAtIndex, cf2);
          v13 = v152;
          if (!FloatIfPresent)
          {
            FloatIfPresent = CFEqual(ValueAtIndex, v152);
            if (!FloatIfPresent)
            {
              FloatIfPresent = CFEqual(ValueAtIndex, v143);
              if (!FloatIfPresent)
              {
                valuePtr[0] = 0;
                v137 = portIndexFromPortType(ValueAtIndex, valuePtr, v131, v132, v133, v134, v135, v136, v142);
                if (v137)
                {
                  v33 = v137;
                  FloatIfPresent = configureDevice_cold_1();
                }

                else
                {
                  v138 = &v147[56 * valuePtr[0] + 17744];
                  CameraCharacterizationData = FigMotionGetCameraCharacterizationData(v34, v17, ValueAtIndex, v138, v130);
                  if (CameraCharacterizationData)
                  {
                    v33 = CameraCharacterizationData;
                    FloatIfPresent = configureDevice_cold_2();
                  }

                  else
                  {
                    FigCFDictionaryGetBooleanIfPresent();
                    *(v138 + 44) = 1065353216;
                    FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
                    if (FloatIfPresent && 1.0 > 0.0)
                    {
                      v33 = 0;
                      *(v138 + 44) = 1.0 / 1.0;
                    }

                    else
                    {
                      fig_log_get_emitter();
                      v33 = -12783;
                      LODWORD(v142) = -12783;
                      FloatIfPresent = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v142, v146, v143, v144, v145, v146, v147, v148);
                    }
                  }
                }

                v13 = v152;
                Value = v145;
              }
            }
          }

LABEL_242:
          if (v33)
          {
            return configureDevice_cold_5(FloatIfPresent);
          }

          CaptureStreamForPortType = af_sbp_getCaptureStreamForPortType(a1, ValueAtIndex);
          if (!CaptureStreamForPortType)
          {
            return configureDevice_cold_8();
          }

          v141 = CaptureStreamForPortType;
          if (FigImageControl_ToneMapping_ConfigureDevice(a1, CaptureStreamForPortType))
          {
            return configureDevice_cold_6();
          }

          result = FigImageControl_Exposure_ConfigureDevice(a1, v141);
          v14 = v148;
          v11 = v149;
          if (result)
          {
            return configureDevice_cold_7();
          }

LABEL_246:
          if (++v12 == v11)
          {
            return result;
          }
        }

        FloatIfPresent = configureDevice_cold_3(valuePtr);
        v33 = valuePtr[0];
LABEL_241:
        v13 = v152;
        goto LABEL_242;
      }
    }
  }

  return result;
}

uint64_t af_sbp_getCameraParametersForPortType(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [*(DerivedStorage + 8) portType];
  if (FigCFEqual())
  {
    return DerivedStorage + 568;
  }

  if (FigCFEqual())
  {
    return DerivedStorage + 1824;
  }

  if (FigCFEqual())
  {
    return DerivedStorage + 3080;
  }

  return 0;
}

unint64_t unpackIntArray(const __CFArray *a1, char *a2, unsigned int a3)
{
  result = CFArrayGetCount(a1);
  if (result >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = result;
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      result = CFNumberGetValue(ValueAtIndex, kCFNumberIntType, a2);
      a2 += 4;
    }
  }

  return result;
}

uint64_t portIndexFromPortType(const void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (!a1)
  {
    portIndexFromPortType_cold_2(&v18);
    return v18;
  }

  if (!a2)
  {
    portIndexFromPortType_cold_1(&v17);
    return v17;
  }

  if (CFEqual(a1, *off_1E798A0C0))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D8))
  {
    result = 0;
    v13 = 1;
LABEL_17:
    *a2 = v13;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D0))
  {
    result = 0;
    v13 = 2;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0E0))
  {
    result = 0;
    v13 = 3;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0F8))
  {
    result = 0;
    v13 = 4;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0E8))
  {
    result = 0;
    v13 = 5;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0C8))
  {
    result = 0;
    v13 = 6;
    goto LABEL_17;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE11, "(Fig)", 0x5D, v9, v15, v16, a9);
}

uint64_t af_sbp_getCaptureStreamForPortType(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage + 8;
  [*(DerivedStorage + 8) portType];
  if (FigCFEqual())
  {
    return *v3;
  }

  if (FigCFEqual())
  {
    v3 = DerivedStorage + 16;
    return *v3;
  }

  if (FigCFEqual())
  {
    v3 = DerivedStorage + 24;
    return *v3;
  }

  return 0;
}

uint64_t FigImageControl_ToneMapping_ConfigureDevice(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CameraParametersForCaptureStream = af_sbp_getCameraParametersForCaptureStream(a1, a2);
  v6 = CameraParametersForCaptureStream;
  v7 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  *values = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = CameraParametersForCaptureStream + 248;
  *keys = 0u;
  v51 = 0u;
  while (*&v8[4 * v7])
  {
    if (++v7 == 10)
    {
      goto LABEL_6;
    }
  }

  if (v7)
  {
LABEL_6:
    keys[0] = *off_1E798BA38;
    v9 = v7;
    values[0] = createCFArrayFromIntArray(CameraParametersForCaptureStream + 208, v7);
    keys[1] = *off_1E798BA30;
    values[1] = createCFArrayFromIntArray(v8, v9);
    LODWORD(v9) = 2;
    goto LABEL_7;
  }

  LODWORD(v9) = 0;
LABEL_7:
  v10 = 0;
  v11 = v6 + 448;
  while (*&v11[4 * v10])
  {
    if (++v10 == 10)
    {
      goto LABEL_12;
    }
  }

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((*(DerivedStorage + 9086) & 1) == 0)
  {
    keys[v9] = *off_1E798BA70;
    v12 = v10;
    values[v9] = createCFArrayFromIntArray(v11, v10);
    v13 = v9 | 1;
    keys[v9 | 1] = *off_1E798BA68;
    LODWORD(v9) = v9 + 2;
    values[v13] = createCFArrayFromIntArray(v6 + 488, v12);
  }

LABEL_14:
  v14 = 0;
  v15 = v6 + 528;
  while (*&v15[4 * v14])
  {
    if (++v14 == 10)
    {
      goto LABEL_19;
    }
  }

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_19:
  keys[v9] = *off_1E798BB70;
  v16 = v14;
  values[v9] = createCFArrayFromIntArray(v15, v14);
  v17 = v9 + 1;
  keys[(v9 + 1)] = *off_1E798BB68;
  LODWORD(v9) = v9 + 2;
  values[v17] = createCFArrayFromIntArray(v6 + 568, v16);
  LODWORD(v14) = 1;
LABEL_20:
  v18 = 0;
  v19 = v6 + 608;
  while (*&v19[4 * v18])
  {
    if (++v18 == 10)
    {
      goto LABEL_25;
    }
  }

  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_25:
  keys[v9] = *off_1E798BBB0;
  v20 = v18;
  values[v9] = createCFArrayFromIntArray(v19, v18);
  v21 = v9 + 1;
  keys[(v9 + 1)] = *off_1E798BBA8;
  LODWORD(v9) = v9 + 2;
  values[v21] = createCFArrayFromIntArray(v6 + 648, v20);
  LODWORD(v14) = 1;
LABEL_26:
  v22 = 0;
  v23 = v6 + 688;
  while (*&v23[4 * v22])
  {
    if (++v22 == 10)
    {
      goto LABEL_31;
    }
  }

  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_31:
  keys[v9] = *off_1E798BB80;
  v24 = v22;
  values[v9] = createCFArrayFromIntArray(v23, v22);
  v25 = v9 + 1;
  keys[(v9 + 1)] = *off_1E798BB78;
  LODWORD(v9) = v9 + 2;
  values[v25] = createCFArrayFromIntArray(v6 + 728, v24);
  LODWORD(v14) = 1;
LABEL_32:
  v26 = 0;
  v27 = v6 + 768;
  while (*&v27[4 * v26])
  {
    if (++v26 == 10)
    {
      goto LABEL_37;
    }
  }

  if (v26)
  {
LABEL_37:
    keys[v9] = *off_1E798BBA0;
    v28 = v26;
    values[v9] = createCFArrayFromIntArray(v27, v26);
    v29 = v9 + 1;
    keys[(v9 + 1)] = *off_1E798BB98;
    LODWORD(v9) = v9 + 2;
    values[v29] = createCFArrayFromIntArray(v6 + 808, v28);
LABEL_38:
    LODWORD(v49[0]) = 1;
    LODWORD(v48[0]) = 260;
    keys[v9] = *off_1E798BB90;
    values[v9] = createCFArrayFromIntArray(v49, 1uLL);
    v30 = v9 + 1;
    keys[(v9 + 1)] = *off_1E798BB88;
    v31 = 0;
    LODWORD(v9) = v9 + 2;
    values[v30] = createCFArrayFromIntArray(v48, 1uLL);
    goto LABEL_39;
  }

  if (v14)
  {
    goto LABEL_38;
  }

  v31 = 1;
LABEL_39:
  v32 = MEMORY[0x1E695E480];
  if (v9 < 1)
  {
    v35 = 0;
  }

  else
  {
    v9 = v9;
    v33 = values;
    v34 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v35 = [a2 setProperty:*off_1E798BFD0 value:v34];
    do
    {
      v36 = *v33++;
      CFRelease(v36);
      --v9;
    }

    while (v9);
    CFRelease(v34);
  }

  if ((v31 & *(DerivedStorage + 508)) == 1)
  {
    v37 = ((*(v6 + 3) * 256.0) + 0.5);
    v38 = *(v6 + 7);
    v46 = ((*(v6 + 6) * 256.0) + 0.5);
    valuePtr = v37;
    HIDWORD(v45) = ((v38 * 256.0) + 0.5);
    LODWORD(v45) = 260;
    v39 = *off_1E798BA78;
    v48[0] = *MEMORY[0x1E695E4D0];
    v40 = *off_1E798B9F0;
    v49[0] = v39;
    v49[1] = v40;
    v41 = *v32;
    v48[1] = CFNumberCreate(*v32, kCFNumberIntType, &valuePtr);
    v49[2] = *off_1E798BBC8;
    v48[2] = CFNumberCreate(v41, kCFNumberIntType, &v46);
    v49[3] = *off_1E798BAB0;
    v48[3] = CFNumberCreate(v41, kCFNumberIntType, &v45 + 4);
    v49[4] = *off_1E798BAE0;
    v48[4] = CFNumberCreate(v41, kCFNumberIntType, &v45);
    v42 = CFDictionaryCreate(v41, v49, v48, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v35 = [a2 setProperty:*off_1E798BE08 value:{v42, v45}];
    for (i = 1; i != 5; ++i)
    {
      CFRelease(v48[i]);
    }

    CFRelease(v42);
  }

  return v35;
}

void *af_sbp_getCameraParametersForCaptureStream(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[1] == a2)
  {
    return DerivedStorage + 71;
  }

  if (DerivedStorage[2] == a2)
  {
    return DerivedStorage + 228;
  }

  if (DerivedStorage[3] == a2)
  {
    return DerivedStorage + 385;
  }

  return 0;
}

CFArrayRef createCFArrayFromIntArray(char *valuePtr, unint64_t numValues)
{
  v2 = numValues;
  memset(v12, 0, sizeof(v12));
  v3 = 10;
  if (numValues < 0xA)
  {
    v3 = numValues;
  }

  v4 = *MEMORY[0x1E695E480];
  if (!numValues)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], v12, 0, MEMORY[0x1E695E9C0]);
  }

  v6 = 0;
  v7 = 8 * v3;
  do
  {
    *(v12 + v6) = CFNumberCreate(v4, kCFNumberIntType, valuePtr);
    v6 += 8;
    valuePtr += 4;
  }

  while (v7 != v6);
  v8 = CFArrayCreate(v4, v12, v2, MEMORY[0x1E695E9C0]);
  if (v2)
  {
    v9 = v12;
    do
    {
      v10 = *v9++;
      CFRelease(v10);
      --v2;
    }

    while (v2);
  }

  return v8;
}

uint64_t FigImageControl_Exposure_ConfigureDevice(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CameraParametersForCaptureStream = af_sbp_getCameraParametersForCaptureStream(a1, a2);
  v6 = *(DerivedStorage + 7468);
  if (!v6)
  {
    v6 = *(DerivedStorage + 7464);
  }

  if (CameraParametersForCaptureStream[235] <= 0.0 || v6 > 1)
  {
    return 0;
  }

  result = setupMeteringFaceDetection(a1, a2, 0);
  if (!result)
  {
    *(DerivedStorage + 7456) = 1;
  }

  return result;
}

uint64_t setupMeteringFaceDetection(uint64_t a1, void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CameraParametersForCaptureStream = af_sbp_getCameraParametersForCaptureStream(a1, a2);
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  *keys = 0u;
  v69 = 0u;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *values = 0u;
  v62 = 0u;
  v59 = 512;
  valuePtr = 184;
  v11 = *(CameraParametersForCaptureStream + 228);
  v57 = vcvts_n_s32_f32(*v11.i32, 0xAuLL);
  v58 = 2048;
  v8 = vcvts_n_s32_f32(CameraParametersForCaptureStream[229], 0xAuLL);
  v55 = vcvts_n_s32_f32(CameraParametersForCaptureStream[232], 0xAuLL);
  v56 = v8;
  v9 = vcvts_n_s32_f32(CameraParametersForCaptureStream[233], 0xAuLL);
  v53 = vcvts_n_s32_f32(CameraParametersForCaptureStream[234], 0xAuLL);
  v54 = v9;
  v10 = vcvts_n_s32_f32(CameraParametersForCaptureStream[235], 0xAuLL);
  v11.i32[0] = CameraParametersForCaptureStream[239];
  v51 = vcvts_n_s32_f32(CameraParametersForCaptureStream[236], 0xAuLL);
  v52 = v10;
  v12 = vcvts_n_s32_f32(CameraParametersForCaptureStream[237], 0xAuLL);
  v49 = vcvts_n_s32_f32(CameraParametersForCaptureStream[238], 0xAuLL);
  v50 = v12;
  if (*(DerivedStorage + 40) == 4)
  {
    v13 = vcvts_n_s32_f32(CameraParametersForCaptureStream[230], 0xAuLL);
    v54 = vcvts_n_s32_f32(CameraParametersForCaptureStream[231], 0xAuLL);
    v55 = v13;
  }

  if ((*(DerivedStorage + 7473) & 1) == 0)
  {
    v56 = 0;
  }

  if (*v11.i32 <= 0.0)
  {
    *v11.i32 = 40.0;
  }

  v47 = v11;
  keys[0] = *off_1E798BA60;
  v14 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  keys[1] = *off_1E798BAB8;
  values[1] = CFNumberCreate(v14, kCFNumberIntType, &v55);
  *&v69 = *off_1E798BA98;
  *&v62 = CFNumberCreate(v14, kCFNumberIntType, &v54);
  *(&v69 + 1) = *off_1E798BB18;
  *(&v62 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v59);
  *&v70 = *off_1E798BAF8;
  *&v63 = CFNumberCreate(v14, kCFNumberIntType, &v58);
  *(&v70 + 1) = *off_1E798BA50;
  *(&v63 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v50);
  *&v71 = *off_1E798BA20;
  *&v64 = CFNumberCreate(v14, kCFNumberIntType, &v49);
  *(&v71 + 1) = *off_1E798BA58;
  *(&v64 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v57);
  *&v72 = *off_1E798BAE8;
  *&v65 = CFNumberCreate(v14, kCFNumberIntType, &v56);
  *(&v72 + 1) = *off_1E798BAC0;
  *(&v65 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v53);
  *&v73 = *off_1E798BA28;
  *&v66 = CFNumberCreate(v14, kCFNumberIntType, &v52);
  *(&v73 + 1) = *off_1E798BAA0;
  v15 = 0;
  *(&v66 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v51);
  v74 = *off_1E798BBC0;
  v16 = vdupq_lane_s32(v47, 0);
  v17 = 0.0;
  v18.i32[1] = 1;
  v39 = v16;
  v19 = v75;
  v20.i64[0] = 0x3F0000003F000000;
  v20.i64[1] = 0x3F0000003F000000;
  v21.i64[0] = 0xC1000000C1000000;
  v21.i64[1] = 0xC1000000C1000000;
  v22.i64[0] = 0xBF000000BF000000;
  v22.i64[1] = 0xBF000000BF000000;
  do
  {
    v23 = 0;
    *v18.i32 = ((v15 + 0.5) + -8.0) * ((v15 + 0.5) + -8.0);
    v40 = vdupq_lane_s32(*v18.i8, 0);
    v18 = xmmword_1ACF06180;
    do
    {
      v44 = v18;
      v24 = vaddq_f32(vaddq_f32(vcvtq_f32_u32(v18), v20), v21);
      v48 = vdivq_f32(vmulq_f32(vmlaq_f32(v40, v24, v24), v22), v16);
      v43 = expf(v48.f32[1]);
      v25.f32[0] = expf(v48.f32[0]);
      v42 = v25.f32[0];
      v26 = v25;
      v26.f32[1] = v43;
      v45 = v26;
      v41 = expf(v48.f32[2]);
      v27 = v45;
      v27.f32[2] = v41;
      v46 = v27;
      v28 = expf(v48.f32[3]);
      v29.i64[0] = 0x400000004;
      v29.i64[1] = 0x400000004;
      v22.i64[0] = 0xBF000000BF000000;
      v22.i64[1] = 0xBF000000BF000000;
      v21.i64[0] = 0xC1000000C1000000;
      v21.i64[1] = 0xC1000000C1000000;
      v16 = v39;
      v30 = v46;
      v30.f32[3] = v28;
      v19[v23] = v30;
      v17 = (((v17 + v42) + v43) + v41) + v28;
      v20.i64[0] = 0x3F0000003F000000;
      v20.i64[1] = 0x3F0000003F000000;
      v18 = vaddq_s32(v44, v29);
      ++v23;
    }

    while (v23 != 4);
    ++v15;
    v19 += 4;
  }

  while (v15 != 16);
  v31 = 0;
  v32 = 16384.0 / v17;
  if (roundf((16384.0 / v17) * v76) > 255.0)
  {
    v32 = 255.0 / v76;
  }

  do
  {
    bytes[v31] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v75[4 * v31], v32))), vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v75[4 * v31 + 1], v32)))), vuzp1q_s16(vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v75[4 * v31 + 2], v32))), vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v75[4 * v31 + 3], v32)))));
    ++v31;
  }

  while (v31 != 16);
  v67 = CFDataCreate(v14, bytes, 256);
  v33 = CFDictionaryCreate(v14, keys, values, 13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a3)
  {
    if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD8, v33))
    {
      setupMeteringFaceDetection_cold_3();
    }

    v34 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC08, *off_1E798BB00);
    v35 = v34;
    if (v34)
    {
      setupMeteringFaceDetection_cold_4(v34);
    }
  }

  else
  {
    if ([a2 setProperty:*off_1E798BBD8 value:v33])
    {
      setupMeteringFaceDetection_cold_1();
    }

    v36 = [a2 setProperty:*off_1E798BC08 value:{*off_1E798BB00, 0x100000000, 0x300000002}];
    v35 = v36;
    if (v36)
    {
      setupMeteringFaceDetection_cold_2(v36);
    }
  }

  for (i = 0; i != 13; ++i)
  {
    CFRelease(values[i]);
  }

  CFRelease(v33);
  return v35;
}

double *accelerometerDataCallback(double *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = [a2 managingGravity];
    v5 = v3[2];
    LODWORD(v6) = *v3;
    LODWORD(v7) = *(v3 + 1);
    LODWORD(v8) = *(v3 + 2);
    if (v4)
    {

      return [a2 didUpdateGravity:v6 time:{v7, v8, v5}];
    }

    else
    {

      return [a2 didUpdateAcceleration:v6 time:{v7, v8, v5}];
    }
  }

  return result;
}

uint64_t setProperty(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v156 = 0.0;
  v155 = 0.0;
  valuePtr = 0;
  if (*(DerivedStorage + 88))
  {
    return 4294954511;
  }

  v14 = DerivedStorage;
  if (CFEqual(a2, @"AutoExposure"))
  {
    v15 = *(v14 + 608);
    if (v15 <= 0.0)
    {
      v15 = 0.5;
    }

    *&valuePtr = v15;
    *(&valuePtr + 1) = v15;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"w");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr + 4);
      }

      v17 = CFDictionaryGetValue(a3, @"h");
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberFloatType, &valuePtr);
      }

      v156 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v155 = (1.0 - *&valuePtr) * 0.5;
      v18 = CFDictionaryGetValue(a3, @"x");
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberFloatType, &v156);
      }

      v19 = CFDictionaryGetValue(a3, @"y");
      if (v19)
      {
        CFNumberGetValue(v19, kCFNumberFloatType, &v155);
      }
    }

    else
    {
      v156 = (1.0 - v15) * 0.5;
      v155 = v156;
    }

    FigImageControl_AutoExposure(a1, ((v156 * 1000.0) + 0.5), ((v155 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
    return 0;
  }

  if (CFEqual(a2, @"FlashExposure"))
  {
    valuePtr = 0x3F0000003F000000;
    if (a3)
    {
      v20 = CFDictionaryGetValue(a3, @"w");
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr + 4);
      }

      v21 = CFDictionaryGetValue(a3, @"h");
      if (v21)
      {
        CFNumberGetValue(v21, kCFNumberFloatType, &valuePtr);
      }

      v156 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v155 = (1.0 - *&valuePtr) * 0.5;
      v22 = CFDictionaryGetValue(a3, @"x");
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberFloatType, &v156);
      }

      v23 = CFDictionaryGetValue(a3, @"y");
      if (v23)
      {
        CFNumberGetValue(v23, kCFNumberFloatType, &v155);
      }
    }

    else
    {
      v156 = 0.25;
      v155 = 0.25;
    }

    FigImageControl_FlashMetering(a1, ((v156 * 1000.0) + 0.5), ((v155 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
    return 0;
  }

  if (CFEqual(a2, @"ContinuousAutoFocus"))
  {
    LOBYTE(v149) = *(v14 + 40) == 0;
    LOBYTE(v148) = 0;
    v24 = *(MEMORY[0x1E695F050] + 16);
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v24;
    v150 = 0;
    v152 = 1.0;
    v153 = 0.0;
    valuePtr = 0x3F0000003F000000;
    v156 = 0.25;
    v155 = 0.25;
    af_sbp_getFocusParametersFromDictionary(a3, &v153, &v152, &v148, &v149, &rect, &v150);
    if (CGRectIsNull(rect))
    {
      x = v156;
      width = *(&valuePtr + 1);
      y = v155;
      LODWORD(height) = valuePtr;
    }

    else
    {
      x = rect.origin.x;
      v156 = x;
      y = rect.origin.y;
      width = rect.size.width;
      v155 = y;
      height = rect.size.height;
      valuePtr = __PAIR64__(LODWORD(width), LODWORD(height));
    }

    LOBYTE(v145) = LOBYTE(v149);
    return FigImageControl_ContinuousAutoFocus(a1, ((x * 1000.0) + 0.5), ((y * 1000.0) + 0.5), ((width * 1000.0) + 0.5), ((height * 1000.0) + 0.5), llroundf(v153 * 255.0), llroundf(v152 * 255.0), v148, v145, v150);
  }

  if (!CFEqual(a2, @"ContinuousAutoFocusWithSmoothFocus"))
  {
    if (CFEqual(a2, @"FocusPreset"))
    {
      if (CFEqual(a3, @"Still"))
      {
        v33 = *(v14 + 680);
        v34 = off_1E798AD98;
      }

      else if (CFEqual(a3, @"Video"))
      {
        v33 = *(v14 + 680);
        v34 = off_1E798ADB0;
      }

      else if (CFEqual(a3, @"CinematicVideo"))
      {
        *(v14 + 625) = 0;
        v33 = *(v14 + 680);
        v34 = off_1E798ADB8;
      }

      else
      {
        v48 = CFEqual(a3, @"TimeLapse");
        v33 = *(v14 + 680);
        if (!v48)
        {
          if (v33)
          {
            CFRelease(*(v14 + 680));
            a3 = 0;
            *(v14 + 680) = 0;
            return a3;
          }

          return 0;
        }

        v34 = off_1E798ADA8;
      }

      v49 = *v34;
      *(v14 + 680) = *v34;
      if (v49)
      {
        CFRetain(v49);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      return 0;
    }

    if (!a3)
    {
      return 4294954516;
    }

    if (CFEqual(a2, @"SpotMeteredExposure"))
    {
      valuePtr = 0x3F0000003F000000;
      v35 = CFDictionaryGetValue(a3, @"w");
      if (v35)
      {
        CFNumberGetValue(v35, kCFNumberFloatType, &valuePtr + 4);
      }

      v36 = CFDictionaryGetValue(a3, @"h");
      if (v36)
      {
        CFNumberGetValue(v36, kCFNumberFloatType, &valuePtr);
      }

      v156 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v155 = (1.0 - *&valuePtr) * 0.5;
      v37 = CFDictionaryGetValue(a3, @"x");
      if (v37)
      {
        CFNumberGetValue(v37, kCFNumberFloatType, &v156);
      }

      v38 = CFDictionaryGetValue(a3, @"y");
      if (v38)
      {
        CFNumberGetValue(v38, kCFNumberFloatType, &v155);
      }

      *(v14 + 5496) = 0;
      FigImageControl_SpotMetering(a1, ((v156 * 1000.0) + 0.5), ((v155 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
      return 0;
    }

    if (CFEqual(a2, @"SpotMeteredExposureAreaOfInterest"))
    {
      memset(&rect, 0, sizeof(rect));
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v40 = (CGRectGetMinX(rect) * 1000.0 + 0.5);
        v41 = (CGRectGetMinY(rect) * 1000.0 + 0.5);
        v42 = (CGRectGetWidth(rect) * 1000.0 + 0.5);
        v43 = CGRectGetHeight(rect);
        FigImageControl_SetSpotMeteringAreaOfInterest(a1, v40, v41, v42, (v43 * 1000.0 + 0.5));
        return 0;
      }

      return 4294954516;
    }

    if (CFEqual(a2, @"FusionFaceDetectionExposure"))
    {
      valuePtr = 0x3F0000003F000000;
      v44 = CFDictionaryGetValue(a3, @"w");
      if (v44)
      {
        CFNumberGetValue(v44, kCFNumberFloatType, &valuePtr + 4);
      }

      v45 = CFDictionaryGetValue(a3, @"h");
      if (v45)
      {
        CFNumberGetValue(v45, kCFNumberFloatType, &valuePtr);
      }

      v156 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v155 = (1.0 - *&valuePtr) * 0.5;
      v46 = CFDictionaryGetValue(a3, @"x");
      if (v46)
      {
        CFNumberGetValue(v46, kCFNumberFloatType, &v156);
      }

      v47 = CFDictionaryGetValue(a3, @"y");
      if (v47)
      {
        CFNumberGetValue(v47, kCFNumberFloatType, &v155);
      }

      *(v14 + 5496) = 0;
      FigImageControl_FusionFaceDetectionMetering(a1, ((v156 * 1000.0) + 0.5), ((v155 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
      return 0;
    }

    if (CFEqual(a2, @"FusionFaceDetectionExposureAreaOfInterest"))
    {
      valuePtr = 0x3F0000003F000000;
      v50 = CFDictionaryGetValue(a3, @"w");
      if (v50)
      {
        CFNumberGetValue(v50, kCFNumberFloatType, &valuePtr + 4);
      }

      v51 = CFDictionaryGetValue(a3, @"h");
      if (v51)
      {
        CFNumberGetValue(v51, kCFNumberFloatType, &valuePtr);
      }

      v156 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v155 = (1.0 - *&valuePtr) * 0.5;
      v52 = CFDictionaryGetValue(a3, @"x");
      if (v52)
      {
        CFNumberGetValue(v52, kCFNumberFloatType, &v156);
      }

      v53 = CFDictionaryGetValue(a3, @"y");
      if (v53)
      {
        CFNumberGetValue(v53, kCFNumberFloatType, &v155);
      }

      *(v14 + 5496) = 0;
      FigImageControl_SetFusionFaceDetectionMeteringAreaOfInterest(a1, ((v156 * 1000.0) + 0.5), ((v155 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
      return 0;
    }

    if (CFEqual(a2, @"AutoExposureAreaOfInterest"))
    {
      memset(&rect, 0, sizeof(rect));
      v54 = CFDictionaryGetTypeID();
      if (v54 == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v55 = (CGRectGetMinX(rect) * 1000.0 + 0.5);
        v56 = (CGRectGetMinY(rect) * 1000.0 + 0.5);
        v57 = (CGRectGetWidth(rect) * 1000.0 + 0.5);
        v58 = CGRectGetHeight(rect);
        FigImageControl_SetAutoExposureAreaOfInterest(a1, v55, v56, v57, (v58 * 1000.0 + 0.5));
        return 0;
      }

      return 4294954516;
    }

    if (CFEqual(a2, @"ManualExposure"))
    {
      v152 = 1.0;
      v153 = 0.0;
      v148 = 0;
      v149 = 0.033333;
      v150 = 0;
      rect.origin.x = 0.0;
      v59 = CFDictionaryGetValue(a3, @"IntegrationTime");
      if (v59)
      {
        CFNumberGetValue(v59, kCFNumberFloatType, &v149);
      }

      v60 = CFDictionaryGetValue(a3, @"Gain");
      if (v60)
      {
        CFNumberGetValue(v60, kCFNumberFloatType, &v152);
      }

      v61 = CFDictionaryGetValue(a3, *off_1E798A1C8);
      if (v61)
      {
        CFNumberGetValue(v61, kCFNumberSInt32Type, &v148);
      }

      v62 = CFDictionaryGetValue(a3, @"ManualExposureMinFrameRate");
      if (v62)
      {
        CFNumberGetValue(v62, kCFNumberDoubleType, &rect);
      }

      v63 = CFDictionaryGetValue(a3, @"ManualExposureMaxFrameRate");
      if (v63)
      {
        CFNumberGetValue(v63, kCFNumberDoubleType, &v150);
      }

      v64 = CFDictionaryGetValue(a3, @"ISO");
      if (v64)
      {
        CFNumberGetValue(v64, kCFNumberFloatType, &v153);
        FigImageControl_ManualExposureWithISO(a1, v148, v149, rect.origin.x, *&v150, v153);
      }

      else
      {
        FigImageControl_ManualExposure(a1, v149, v152);
      }

      return 0;
    }

    if (CFEqual(a2, @"ExposureBias"))
    {
      LODWORD(rect.origin.x) = 0;
      LODWORD(v150) = 0;
      v65 = CFDictionaryGetTypeID();
      if (v65 == CFGetTypeID(a3))
      {
        v66 = CFDictionaryGetValue(a3, *off_1E798BE20);
        if (v66)
        {
          v67 = v66;
          v68 = CFGetTypeID(v66);
          if (v68 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v67, kCFNumberFloatType, &rect);
          }
        }

        v69 = CFDictionaryGetValue(a3, *off_1E798A1C8);
        if (v69)
        {
          v70 = v69;
          v71 = CFGetTypeID(v69);
          if (v71 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v70, kCFNumberSInt32Type, &v150);
            v72 = v150;
LABEL_127:
            FigImageControl_SetExposureBias(a1, v72, *&rect.origin.x);
            return 0;
          }
        }
      }

      else
      {
        v74 = CFNumberGetTypeID();
        if (v74 == CFGetTypeID(a3))
        {
          CFNumberGetValue(a3, kCFNumberFloatType, &rect);
        }

        else
        {
          emitter = fig_log_get_emitter();
          a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "|___ fsbp_Autofocus ___|", 0x817, v9, v76, v77, v145);
          if (a3)
          {
            return a3;
          }
        }
      }

      v72 = 0;
      goto LABEL_127;
    }

    if (CFEqual(a2, @"ExposureConvergenceSpeed"))
    {
      LODWORD(rect.origin.x) = 1048576000;
      v73 = CFNumberGetTypeID();
      if (v73 == CFGetTypeID(a3))
      {
        CFNumberGetValue(a3, kCFNumberFloatType, &rect);
      }

      return FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
    }

    if (CFEqual(a2, @"ExposureStabilityZone"))
    {
      LODWORD(rect.origin.x) = 1028443341;
      v78 = CFNumberGetTypeID();
      if (v78 == CFGetTypeID(a3))
      {
        CFNumberGetValue(a3, kCFNumberFloatType, &rect);
        v79 = *&rect.origin.x;
      }

      else
      {
        v79 = 0.05;
      }

      return FigImageControl_SetExposureStabilityZone(a1, 0, v79);
    }

    if (CFEqual(a2, @"ExposureLock"))
    {
      FigImageControl_LockExposure(a1);
      return 0;
    }

    if (CFEqual(a2, @"ContinuousAutoFocusAreaOfInterest"))
    {
      memset(&rect, 0, sizeof(rect));
      v80 = CFDictionaryGetTypeID();
      if (v80 == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v81 = (CGRectGetMinX(rect) * 1000.0 + 0.5);
        v82 = (CGRectGetMinY(rect) * 1000.0 + 0.5);
        v83 = (CGRectGetWidth(rect) * 1000.0 + 0.5);
        v84 = CGRectGetHeight(rect);
        return FigImageControl_SetContinuousAutoFocusAreaOfInterest(a1, v81, v82, v83, (v84 * 1000.0 + 0.5));
      }

      return 4294954516;
    }

    if (CFEqual(a2, @"ContinuousAutoFocusAreaOfInterestByPortType"))
    {

      return FigImageControl_SetContinuousAutoFocusAreaOfInterestByPortType(a1, a3);
    }

    if (CFEqual(a2, @"ContinuousAutoFocusUseStrictAreaOfInterest"))
    {
      v85 = CFGetTypeID(a3);
      if (v85 == CFBooleanGetTypeID())
      {
        v86 = CFBooleanGetValue(a3);
        a3 = 0;
        *(v14 + 561) = v86 != 0;
        return a3;
      }

      v92 = fig_log_get_emitter();
      v95 = v9;
      v96 = 2136;
      goto LABEL_150;
    }

    if (CFEqual(a2, @"FocusScan"))
    {
      LOBYTE(v149) = *(v14 + 40) == 0;
      LOBYTE(v148) = 0;
      v87 = *(MEMORY[0x1E695F050] + 16);
      rect.origin = *MEMORY[0x1E695F050];
      rect.size = v87;
      v150 = 0;
      v152 = 1.0;
      v153 = 0.0;
      valuePtr = 0x3F0000003F000000;
      v156 = 0.25;
      v155 = 0.25;
      af_sbp_getFocusParametersFromDictionary(a3, &v153, &v152, &v148, &v149, &rect, &v150);
      if (CGRectIsNull(rect))
      {
        v88 = v156;
        v90 = *(&valuePtr + 1);
        v89 = v155;
        LODWORD(v91) = valuePtr;
      }

      else
      {
        v88 = rect.origin.x;
        v156 = v88;
        v89 = rect.origin.y;
        v90 = rect.size.width;
        v155 = v89;
        v91 = rect.size.height;
        valuePtr = __PAIR64__(LODWORD(v90), LODWORD(v91));
      }

      *(v14 + 5496) = 0;
      LOBYTE(v145) = LOBYTE(v149);
      FigImageControl_FocusScan(a1, (v88 * 1000.0), (v89 * 1000.0), (v90 * 1000.0), (v91 * 1000.0), llroundf(v153 * 255.0), llroundf(v152 * 255.0), v148, v145, v150);
      return 0;
    }

    if (CFEqual(a2, @"FocusLock"))
    {
      FigImageControl_LockFocus(a1);
      return 0;
    }

    if (CFEqual(a2, @"ManualFocus"))
    {
      LODWORD(rect.origin.x) = 0;
      LODWORD(v150) = 0;
      v97 = CFDictionaryGetTypeID();
      if (v97 == CFGetTypeID(a3))
      {
        v98 = CFDictionaryGetValue(a3, *off_1E798AEB8);
        if (v98)
        {
          v99 = v98;
          v100 = CFGetTypeID(v98);
          if (v100 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v99, kCFNumberSInt32Type, &rect);
          }
        }

        v101 = CFDictionaryGetValue(a3, *off_1E798A1C8);
        if (v101)
        {
          v102 = v101;
          v103 = CFGetTypeID(v101);
          if (v103 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v102, kCFNumberSInt32Type, &v150);
            v104 = v150;
LABEL_171:
            FigImageControl_ManualFocus(a1, SLODWORD(rect.origin.x), v104);
            return 0;
          }
        }
      }

      else
      {
        v106 = CFNumberGetTypeID();
        if (v106 == CFGetTypeID(a3))
        {
          v153 = 0.0;
          CFNumberGetValue(a3, kCFNumberFloatType, &v153);
          v104 = 0;
          LODWORD(rect.origin.x) = (v153 * 255.0);
          goto LABEL_171;
        }
      }

      v104 = 0;
      goto LABEL_171;
    }

    if (CFEqual(a2, @"AutofocusProcessor_VideoMode"))
    {
      if (CFEqual(a3, @"Mode_StillPreview"))
      {
        v105 = 0;
      }

      else if (CFEqual(a3, @"Mode_VideoPreview"))
      {
        v105 = 1;
      }

      else
      {
        if (CFEqual(a3, @"Mode_VideoRecording"))
        {
          v113 = *(v14 + 40);
          v109 = (v14 + 40);
          if (v113 == 2)
          {
            a3 = 0;
            v105 = 2;
            goto LABEL_182;
          }

          v105 = 2;
          FigImageControl_VideoModeChange(a1, 2u);
          v111 = MEMORY[0x1E695E4D0];
          goto LABEL_180;
        }

        if (CFEqual(a3, @"Mode_Conference"))
        {
          v105 = 3;
        }

        else if (CFEqual(a3, @"Mode_Panorama"))
        {
          v105 = 4;
        }

        else if (CFEqual(a3, @"Mode_TimeLapsePreview"))
        {
          v105 = 5;
        }

        else if (CFEqual(a3, @"Mode_TimeLapseCapture"))
        {
          v105 = 6;
        }

        else
        {
          v105 = 0;
        }
      }

      v110 = *(v14 + 40);
      v109 = (v14 + 40);
      if (v105 == v110 || (FigImageControl_VideoModeChange(a1, v105), *v109 != 2))
      {
        a3 = 0;
        goto LABEL_182;
      }

      v111 = MEMORY[0x1E695E4C0];
LABEL_180:
      a3 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C2A8, *v111);
LABEL_182:
      *v109 = v105;
      return a3;
    }

    v107 = (v14 + 4336);
    if (CFEqual(a2, @"MonitorSubjectArea"))
    {
      v108 = CFEqual(a3, *MEMORY[0x1E695E4D0]) != 0;
      if (*v107 != v108)
      {
        a3 = 0;
        *(v14 + 5496) = 0;
        *v107 = v108;
        return a3;
      }

      return 0;
    }

    if (CFEqual(a2, @"ProvidesStortorgetMetadata"))
    {
      v112 = CFEqual(a3, *MEMORY[0x1E695E4D0]) != 0;
      if (*(v14 + 18160) != v112)
      {
        a3 = 0;
        *(v14 + 18160) = v112;
        return a3;
      }

      return 0;
    }

    if (CFEqual(a2, @"FaceDetectionMode"))
    {
      *(v14 + 7580) = 0;
      if (CFEqual(a3, @"Disable"))
      {
        *(v14 + 560) = 0;
LABEL_192:
        v114 = a1;
        v115 = 0;
LABEL_209:
        FigImageControl_SetUseFaceLocationForMetering(v114, v115);
        return 0;
      }

      if (CFEqual(a3, @"AEOnly"))
      {
        *(v14 + 560) = 0;
      }

      else
      {
        if (CFEqual(a3, @"AFOnly"))
        {
          *(v14 + 560) = 1;
          goto LABEL_192;
        }

        if (!CFEqual(a3, @"AEAndAF"))
        {
          return 4294954516;
        }

        *(v14 + 560) = 1;
      }

      v114 = a1;
      v115 = 1;
      goto LABEL_209;
    }

    if (CFEqual(a2, @"WhiteBalanceGains"))
    {
      v116 = CFGetTypeID(a3);
      if (v116 == CFDictionaryGetTypeID())
      {
        LOWORD(v150) = 0;
        LOWORD(v153) = 0;
        LOWORD(v152) = 0;
        LODWORD(rect.origin.x) = 0;
        v117 = CFDictionaryGetValue(a3, *off_1E798AED0);
        if (v117)
        {
          CFNumberGetValue(v117, kCFNumberSInt16Type, &v150);
        }

        v118 = CFDictionaryGetValue(a3, *off_1E798AEC8);
        if (v118)
        {
          CFNumberGetValue(v118, kCFNumberSInt16Type, &v153);
        }

        v119 = CFDictionaryGetValue(a3, *off_1E798AEC0);
        if (v119)
        {
          CFNumberGetValue(v119, kCFNumberSInt16Type, &v152);
        }

        v120 = CFDictionaryGetValue(a3, *off_1E798A1C8);
        if (v120)
        {
          CFNumberGetValue(v120, kCFNumberSInt32Type, &rect);
          x_low = LODWORD(rect.origin.x);
        }

        else
        {
          x_low = 0;
        }

        return FigImageControl_ManualWhiteBalanceGains(a1, v150, SLOWORD(v153), SLOWORD(v152), x_low);
      }

      v92 = fig_log_get_emitter();
      v95 = v9;
      v96 = 2320;
      goto LABEL_150;
    }

    if (CFEqual(a2, @"AutoWhiteBalanceLock"))
    {
      v122 = CFGetTypeID(a3);
      if (v122 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(a3))
        {

          return FigImageControl_LockWhiteBalance(a1);
        }

        else
        {

          return FigImageControl_UnlockWhiteBalance(a1);
        }
      }

      v92 = fig_log_get_emitter();
      v95 = v9;
      v96 = 2335;
LABEL_150:

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, 0xFFFFCE14, "|___ fsbp_Autofocus ___|", v96, v95, v93, v94, a9);
    }

    if (CFEqual(a2, @"HDRSceneDetectionEnabled"))
    {
      v123 = CFBooleanGetValue(a3) != 0;

      return FigImageControl_ConfigureHDRSceneDetection(a1, v123);
    }

    if (CFEqual(a2, @"HDRLowLightDetectionDisabled"))
    {
      v124 = CFGetTypeID(a3);
      if (v124 == CFBooleanGetTypeID())
      {
        v125 = CFBooleanGetValue(a3);
        a3 = 0;
        *(v14 + 17354) = v125 != 0;
        return a3;
      }

      v92 = fig_log_get_emitter();
      v95 = v9;
      v96 = 2348;
      goto LABEL_150;
    }

    if (!CFEqual(a2, @"HDRLowLightGainThresholdsByPortType"))
    {
      return 4294954512;
    }

    v126 = CFGetTypeID(a3);
    if (v126 != CFDictionaryGetTypeID())
    {
      v92 = fig_log_get_emitter();
      v95 = v9;
      v96 = 2413;
      goto LABEL_150;
    }

    Count = CFDictionaryGetCount(a3);
    v128 = 1;
    if (*(v14 + 16))
    {
      v128 = 2;
    }

    if (*(v14 + 24))
    {
      ++v128;
    }

    if (Count != v128)
    {
      v92 = fig_log_get_emitter();
      v95 = v9;
      v96 = 2408;
      goto LABEL_150;
    }

    v129 = Count;
    v146 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v147 = malloc_type_calloc(v129, 8uLL, 0x6004044C4A2DFuLL);
    if (v146 && v147)
    {
      v131 = v146;
      v130 = v147;
      CFDictionaryGetKeysAndValues(a3, v146, v147);
      v132 = 2373;
      while (1)
      {
        v133 = *v131;
        v134 = *v130;
        v135 = CFGetTypeID(*v131);
        if (v135 != CFStringGetTypeID())
        {
          break;
        }

        v136 = CFGetTypeID(v134);
        if (v136 != CFNumberGetTypeID())
        {
          v132 = 2378;
          break;
        }

        CameraParametersForPortType = af_sbp_getCameraParametersForPortType(a1, v133);
        if (!CameraParametersForPortType)
        {
          v132 = 2384;
          break;
        }

        v138 = CameraParametersForPortType;
        CFNumberGetValue(v134, kCFNumberFloatType, (CameraParametersForPortType + 1248));
        *(v138 + 1244) = 1007299575;
        ++v130;
        ++v131;
        if (!--v129)
        {
          a3 = 0;
          goto LABEL_266;
        }
      }

      v142 = fig_log_get_emitter();
      a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v142, 0xFFFFCE14, "|___ fsbp_Autofocus ___|", v132, v9, v143, v144, v145);
    }

    else
    {
      v139 = fig_log_get_emitter();
      a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v139, 0xFFFFCE0ELL, "|___ fsbp_Autofocus ___|", 0x95C, v9, v140, v141, v145);
      if (!v146)
      {
LABEL_267:
        if (v147)
        {
          free(v147);
        }

        return a3;
      }
    }

LABEL_266:
    free(v146);
    goto LABEL_267;
  }

  if (!a3)
  {
    return a3;
  }

  v30 = CFDictionaryGetValue(a3, @"smooth");
  if (!v30)
  {
    return 0;
  }

  v31 = CFBooleanGetValue(v30) != 0;

  return FigImageControl_ContinuousAutoFocusWithSmoothFocus(a1, v31);
}