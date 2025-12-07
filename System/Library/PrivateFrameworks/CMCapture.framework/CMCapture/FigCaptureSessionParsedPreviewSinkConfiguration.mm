@interface FigCaptureSessionParsedPreviewSinkConfiguration
- (NSString)sinkID;
- (void)dealloc;
- (void)initWithParsedCameraSourceConfiguration:(int)configuration sourceDeviceType:;
@end

@implementation FigCaptureSessionParsedPreviewSinkConfiguration

- (NSString)sinkID
{
  v2 = 0;
  previewSmartStyleCoefficientsTimeMachineConnectionConfiguration = self->_previewSmartStyleCoefficientsTimeMachineConnectionConfiguration;
  depthDataConnectionConfiguration = self->_depthDataConnectionConfiguration;
  v9 = previewSmartStyleCoefficientsTimeMachineConnectionConfiguration;
  v7 = *&self->_videoPreviewSinkConnectionConfiguration;
  v4 = *&self->_sensitiveContentAnalyzerConnectionConfiguration;
  v10 = *&self->_previewTimeMachineConnectionConfiguration;
  v11 = v4;
  stillImageConnectionConfiguration = self->_stillImageConnectionConfiguration;
  do
  {
    result = [objc_msgSend(*(&v7 + v2) sinkConfiguration];
    if (result)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 >= 8;
    }

    ++v2;
  }

  while (!v6);
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedPreviewSinkConfiguration;
  [(FigCaptureSessionParsedPreviewSinkConfiguration *)&v3 dealloc];
}

- (void)initWithParsedCameraSourceConfiguration:(int)configuration sourceDeviceType:
{
  if (!self)
  {
    return 0;
  }

  v39.receiver = self;
  v39.super_class = FigCaptureSessionParsedPreviewSinkConfiguration;
  v5 = objc_msgSendSuper2(&v39, sel_init);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v5[22] = configuration;
  v7 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType([a2 metadataObjectConnectionConfigurations], configuration);
  v6[8] = v7;
  v36 = FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v7);
  v35 = FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v7);
  if ([objc_msgSend(a2 "stillImageConnectionConfiguration")] == configuration)
  {
    stillImageConnectionConfiguration = [a2 stillImageConnectionConfiguration];
  }

  else
  {
    stillImageConnectionConfiguration = 0;
  }

  v6[9] = stillImageConnectionConfiguration;
  v9 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType([a2 previewDerivedConnectionConfigurations], configuration);
  v10 = [objc_msgSend(v9 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_44)), "count"}];
  if (!v10)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v25, v26, v27, v29, v31, v33, v35);

    return 0;
  }

  v28 = v6;
  memset(v38, 0, sizeof(v38));
  v12 = OUTLINED_FUNCTION_1_0(v10, v11, v38, v37);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = v12;
  v32 = v6 + 6;
  v34 = v6 + 7;
  v30 = v6 + 5;
  v14 = v6 + 4;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      OUTLINED_FUNCTION_10_18();
      if (!v16)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(v38[0].super_class + i);
      v18 = [objc_msgSend(v17 "sinkConfiguration")];
      v20 = v28 + 1;
      switch(v18)
      {
        case 1:
LABEL_24:
          v18 = v17;
          *v20 = v18;
          continue;
        case 0xB:
          v20 = v28 + 3;
          if ((v36 & 1) == 0)
          {
            goto LABEL_24;
          }

          break;
        case 0xE:
          v18 = [objc_msgSend(v17 "sinkConfiguration")];
          v20 = v14;
          switch(v18)
          {
            case 0:
              goto LABEL_24;
            case 1:
              v20 = v30;
              if ((v35 & 1) == 0)
              {
                goto LABEL_24;
              }

              break;
            case 3:
              v20 = v32;
              goto LABEL_24;
            case 4:
              v20 = v34;
              goto LABEL_24;
            default:
              continue;
          }

          break;
        default:
          v20 = v28 + 2;
          if (v18 == 12)
          {
            goto LABEL_24;
          }

          break;
      }
    }

    v13 = OUTLINED_FUNCTION_1_0(v18, v19, v38, v37);
  }

  while (v13);
LABEL_27:
  cameraConfiguration = [a2 cameraConfiguration];
  v22 = v28;
  v28[10] = cameraConfiguration;
  return v22;
}

@end