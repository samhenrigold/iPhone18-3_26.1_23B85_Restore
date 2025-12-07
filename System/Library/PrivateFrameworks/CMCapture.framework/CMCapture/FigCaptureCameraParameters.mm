@interface FigCaptureCameraParameters
+ (id)cinematicFramingVirtualCameraConfigurationForPortType:(id)type sensorIDString:(id)string;
+ (id)sdofTuningParametersForSensorIDDictionary:(id)dictionary zoomFactor:(float)factor;
+ (id)sensorIDStringFromMetadata:(id)metadata;
+ (id)sensorIDStringFromModuleInfo:(id)info;
+ (id)sharedInstance;
+ (id)temporalFilterSessionConfigurationForPortType:(id)type sensorIDString:(id)string;
+ (int)movieFileMaxLossyCompressionLevelForPixelFormat:(unsigned int)format;
+ (int)previewMaxLossyCompressionLevel;
+ (unsigned)sensorIDFromSensorIDString:(id)string;
+ (void)initialize;
- ($2825F4736939C4A6D3AD43837233062D)maxFocusPixelHorizontalPixelBufferDimensions;
- ($2ACC23B9A21F50F5CC728381CA870116)landmarksVersionForInferenceType:(int)type;
- (BOOL)chromaticDefringingEnabledForSlomoForPortType:(id)type sensorIDString:(id)string;
- (BOOL)chromaticDefringingEnabledForVideoForPortType:(id)type sensorIDString:(id)string;
- (BOOL)complementMatteSuppressionDecisionWithISPDetectedFaces;
- (BOOL)deepZoomTransferWithZoomedImageEnabledForPortType:(id)type sensorIDString:(id)string;
- (BOOL)panoramaRequiresLTMLockingForPortType:(id)type sensorIDString:(id)string;
- (BOOL)portraitPreviewForegroundBlurEnabledForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor;
- (BOOL)portraitTapToRefocusPrevented;
- (FigCaptureCameraParameters)init;
- (FigCaptureCameraParameters)initWithContentsOfFile:(id)file;
- (NSDictionary)stereoDisparityParameters;
- (id)_initWithModelSpecificName:(void *)name fromFile:;
- (id)actionCameraSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string;
- (id)chromaticDefringingParametersForPortType:(id)type sensorIDString:(id)string;
- (id)depthScalingTuneParametersForPortType:(id)type sensorIDString:(id)string;
- (id)focalLengthCharacterizationForStream:(id)stream;
- (id)focusPixelDisparityTuningParametersForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor;
- (id)focusPixelsPatternsForPortType:(id)type sensorIDString:(id)string;
- (id)lensSmudgeDetectionParametersForPortType:(id)type sensorIDString:(id)string;
- (id)portraitSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string zoomFactorRelativeToWidePortType:(float)portType;
- (id)quadraSubPixelSwitchingParametersForPortType:(id)type sensorIDString:(id)string;
- (id)sensorIDDictionaryForPortType:(id)type sensorIDString:(id)string;
- (id)sensorIDDictionaryForStream:(id)stream;
- (id)stereoPhotoCaptureSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string;
- (id)stereoVideoCaptureSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string;
- (int)coreImagePortraitFilterVersion;
- (int)deepZoomVersion;
- (int)depthProcessorVersion;
- (int)deviceGeneration;
- (int)disparityRefinementTypeForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor;
- (int)disparityVersion;
- (int)disparityVersionForPortType:(id)type sensorIDString:(id)string;
- (int)distortionCorrectionVersion;
- (int)focusPixelDisparityVersionForPortType:(id)type sensorIDString:(id)string;
- (int)fsdNetStereoImagesAlignmentForPortType:(id)type sensorIDString:(id)string;
- (int)gainMapVersion;
- (int)landmarksConstellationPointCountForInferenceType:(int)type;
- (int)learnedMattingVersion;
- (int)lensSmudgeDetectionVersion;
- (int)mattingVersion;
- (int)mattingVersionForPortType:(id)type sensorIDString:(id)string;
- (int)meteorHeadroomProcessingType;
- (int)monocularStreamingDepthType;
- (int)nrfVersion;
- (int)personSemanticsVersion;
- (int)portraitSceneMonitorVersionForPortType:(id)type sensorIDString:(id)string;
- (int)sdofRenderingVersionForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor;
- (int)videoGreenGhostBrightLightMitigationVersion;
- (int)videoGreenGhostLowLightMitigationVersion;
- (int)videoStabilizationProcessorVersion;
- (uint64_t)_readAndPreprocessCameraParametersForModelSpecificName:(void *)name fromFile:;
- (void)dealloc;
@end

@implementation FigCaptureCameraParameters

+ (id)sharedInstance
{
  FigSimpleMutexLock();
  v2 = gCaptureCameraParameters;
  if (!gCaptureCameraParameters)
  {
    v2 = objc_alloc_init(FigCaptureCameraParameters);
    gCaptureCameraParameters = v2;
  }

  v3 = v2;
  FigSimpleMutexUnlock();
  return v3;
}

+ (int)previewMaxLossyCompressionLevel
{
  if (BWDeviceIsiPhone(self, a2))
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (FigCapturePlatformSupportsUniversalLossyCompression())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (int)deepZoomVersion
{
  v2 = [(NSDictionary *)self->_commonDeepZoomParameters objectForKeyedSubscript:@"Version"];
  if (v2)
  {

    LODWORD(v2) = [v2 intValue];
  }

  return v2;
}

- (int)distortionCorrectionVersion
{
  v2 = [(NSDictionary *)self->_commonDistortionCorrectionParameters objectForKeyedSubscript:@"Version"];
  if (v2)
  {

    LODWORD(v2) = [v2 intValue];
  }

  return v2;
}

- (int)disparityVersion
{
  stereoDisparityParameters = self->_stereoDisparityParameters;
  if (stereoDisparityParameters)
  {
    v3 = [(NSDictionary *)stereoDisparityParameters objectForKeyedSubscript:@"Version"];

    LODWORD(stereoDisparityParameters) = [v3 intValue];
  }

  return stereoDisparityParameters;
}

- (int)personSemanticsVersion
{
  personSemanticsParameters = self->_personSemanticsParameters;
  if (personSemanticsParameters)
  {
    v3 = [(NSDictionary *)personSemanticsParameters objectForKeyedSubscript:@"Version"];

    LODWORD(personSemanticsParameters) = [v3 intValue];
  }

  return personSemanticsParameters;
}

- (int)mattingVersion
{
  commonMattingParameters = self->_commonMattingParameters;
  if (commonMattingParameters)
  {
    v3 = [(NSDictionary *)commonMattingParameters objectForKeyedSubscript:@"Version"];

    LODWORD(commonMattingParameters) = [v3 intValue];
  }

  return commonMattingParameters;
}

- (int)learnedMattingVersion
{
  learnedMattingParameters = self->_learnedMattingParameters;
  if (learnedMattingParameters)
  {
    v3 = [(NSDictionary *)learnedMattingParameters objectForKeyedSubscript:@"Version"];

    LODWORD(learnedMattingParameters) = [v3 intValue];
  }

  return learnedMattingParameters;
}

- (int)nrfVersion
{
  v2 = [(NSDictionary *)self->_commonNRFParameters objectForKeyedSubscript:@"Version"];
  if (v2)
  {

    LODWORD(v2) = [v2 intValue];
  }

  return v2;
}

- (int)deviceGeneration
{
  v2 = [(NSDictionary *)self->_commonNRFParameters objectForKeyedSubscript:@"DeviceGeneration"];
  if (v2)
  {

    LODWORD(v2) = [v2 intValue];
  }

  return v2;
}

- (BOOL)complementMatteSuppressionDecisionWithISPDetectedFaces
{
  cameraTuningParameters = [(FigCaptureCameraParameters *)self cameraTuningParameters];
  if (!cameraTuningParameters)
  {
    return 0;
  }

  v3 = [(NSDictionary *)cameraTuningParameters objectForKeyedSubscript:@"Common"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v3 objectForKeyedSubscript:@"ComplementMatteSuppressionDecisionWithISPDetectedFaces"];

  return [v4 BOOLValue];
}

- (int)gainMapVersion
{
  if ([(FigCaptureCameraParameters *)self nrfVersion]== 4)
  {
    return 0x20000;
  }

  else
  {
    return 0x10000;
  }
}

- (int)lensSmudgeDetectionVersion
{
  v2 = [(NSDictionary *)self->_commonLensSmudgeDetectionParameters objectForKeyedSubscript:@"Version"];
  if (v2)
  {

    LODWORD(v2) = [v2 intValue];
  }

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    gCaptureCameraParametersLock = FigSimpleMutexCreate();
  }
}

- (FigCaptureCameraParameters)init
{
  ModelSpecificName = FigCaptureGetModelSpecificName(self, a2);

  return [(FigCaptureCameraParameters *)self _initWithModelSpecificName:0 fromFile:?];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureCameraParameters;
  [(FigCaptureCameraParameters *)&v3 dealloc];
}

- (NSDictionary)stereoDisparityParameters
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"V%d", -[FigCaptureCameraParameters disparityVersion](self, "disparityVersion")];
  stereoDisparityParameters = self->_stereoDisparityParameters;

  return [(NSDictionary *)stereoDisparityParameters objectForKeyedSubscript:v3];
}

- (id)sensorIDDictionaryForStream:(id)stream
{
  if (!stream)
  {
    [(FigCaptureCameraParameters *)self sensorIDDictionaryForStream:a2];
    return 0;
  }

  portType = [stream portType];
  v6 = [objc_opt_class() sensorIDStringFromModuleInfo:{objc_msgSend(stream, "getProperty:error:", *off_1E798C078, 0)}];
  if (!portType || !v6)
  {
    [FigCaptureCameraParameters sensorIDDictionaryForStream:v6];
    return 0;
  }

  return [(FigCaptureCameraParameters *)self sensorIDDictionaryForPortType:portType sensorIDString:v6];
}

- (id)sensorIDDictionaryForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self sensorIDDictionaryForPortType:a2 sensorIDString:0, string];
    stringCopy = 0;
    goto LABEL_18;
  }

  stringCopy = string;
  if (!string)
  {
    [FigCaptureCameraParameters sensorIDDictionaryForPortType:a2 sensorIDString:?];
    goto LABEL_18;
  }

  v7 = objc_autoreleasePoolPush();
  cameraTuningParameters = [(FigCaptureCameraParameters *)self cameraTuningParameters];
  if (!cameraTuningParameters)
  {
    goto LABEL_16;
  }

  v9 = cameraTuningParameters;
  v10 = [(NSDictionary *)cameraTuningParameters objectForKeyedSubscript:type];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (![v10 count])
  {
    [FigCaptureCameraParameters sensorIDDictionaryForPortType:sensorIDString:];
LABEL_16:
    stringCopy = 0;
    goto LABEL_17;
  }

  v11 = [v10 objectForKey:stringCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringCopy = v11;
    if (stringCopy)
    {
      goto LABEL_17;
    }
  }

  v12 = [(NSDictionary *)v9 objectForKeyedSubscript:@"DefaultSensorIDs"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = [v12 objectForKeyedSubscript:type];
  if (([objc_msgSend(v10 "allKeys")] & 1) == 0)
  {
    v13 = [objc_msgSend(v10 "allKeys")];
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  stringCopy = [v10 objectForKeyedSubscript:v13];
LABEL_17:
  objc_autoreleasePoolPop(v7);
LABEL_18:

  return stringCopy;
}

- (id)focalLengthCharacterizationForStream:(id)stream
{
  if (!stream)
  {
    [(FigCaptureCameraParameters *)self focalLengthCharacterizationForStream:a2];
    return 0;
  }

  v3 = [(FigCaptureCameraParameters *)self sensorIDDictionaryForStream:?];
  if (!v3)
  {
    return 0;
  }

  return [v3 objectForKeyedSubscript:@"FocalLengthCharacterization"];
}

- (int)disparityVersionForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self disparityVersionForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters disparityVersionForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters disparityVersionForPortType:sensorIDString:];
    return 0;
  }

  v5 = [objc_msgSend(v4 objectForKeyedSubscript:{@"DisparityParameters", "objectForKeyedSubscript:", @"Version"}];

  return [v5 intValue];
}

- (int)focusPixelDisparityVersionForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self focusPixelDisparityVersionForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters focusPixelDisparityVersionForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters focusPixelDisparityVersionForPortType:sensorIDString:];
    return 0;
  }

  v5 = [objc_msgSend(v4 objectForKeyedSubscript:{@"FocusPixelDisparityParameters", "objectForKeyedSubscript:", @"Version"}];

  return [v5 intValue];
}

uint64_t __103__FigCaptureCameraParameters_focusPixelDisparityTuningParametersForPortType_sensorIDString_zoomFactor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 floatValue];
  v5 = v4;
  [a3 floatValue];
  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- ($2825F4736939C4A6D3AD43837233062D)maxFocusPixelHorizontalPixelBufferDimensions
{
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(FigCaptureCameraParameters *)self cameraTuningParameters];
  v2 = [(NSDictionary *)obj countByEnumeratingWithState:&v38 objects:v37 count:16];
  v19 = v2;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v18 = *v39;
    do
    {
      v5 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * v5);
        v20 = v5;
        if ([v6 hasPrefix:@"PortType"])
        {
          v7 = [(NSDictionary *)[(FigCaptureCameraParameters *)self cameraTuningParameters] objectForKeyedSubscript:v6];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v21 = v7;
          v25 = [v7 countByEnumeratingWithState:&v33 objects:v32 count:16];
          if (v25)
          {
            v22 = *v34;
            v23 = v6;
            do
            {
              v8 = 0;
              do
              {
                if (*v34 != v22)
                {
                  objc_enumerationMutation(v21);
                }

                v9 = [(FigCaptureCameraParameters *)self focusPixelsPatternsForPortType:v6 sensorIDString:*(*(&v33 + 1) + 8 * v8)];
                v26 = v8;
                if ([v9 count] <= 0xF)
                {
                  v30 = 0u;
                  v31 = 0u;
                  v28 = 0u;
                  v29 = 0u;
                  v10 = [v9 countByEnumeratingWithState:&v28 objects:v27 count:16];
                  if (v10)
                  {
                    v11 = v10;
                    v12 = *v29;
                    do
                    {
                      for (i = 0; i != v11; ++i)
                      {
                        if (*v29 != v12)
                        {
                          objc_enumerationMutation(v9);
                        }

                        v14 = *(*(&v28 + 1) + 8 * i);
                        v15 = [objc_msgSend(objc_msgSend(v14 objectForKeyedSubscript:{@"X", "objectForKeyedSubscript:", @"Count", "unsignedIntValue"}];
                        v16 = [objc_msgSend(objc_msgSend(v14 objectForKeyedSubscript:{@"Y", "objectForKeyedSubscript:", @"Count", "unsignedIntValue"}];
                        if (v4 <= v15)
                        {
                          v4 = v15;
                        }

                        if (v3 <= v16)
                        {
                          v3 = v16;
                        }

                        else
                        {
                          v3 = v3;
                        }
                      }

                      v11 = [v9 countByEnumeratingWithState:&v28 objects:v27 count:16];
                    }

                    while (v11);
                  }
                }

                v8 = v26 + 1;
                v6 = v23;
              }

              while (v26 + 1 != v25);
              v25 = [v21 countByEnumeratingWithState:&v33 objects:v32 count:16];
            }

            while (v25);
          }
        }

        v5 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [(NSDictionary *)obj countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v19);
    return (v4 | (v3 << 32));
  }

  return v2;
}

- (int)mattingVersionForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self mattingVersionForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters mattingVersionForPortType:a2 sensorIDString:?];
    return 0;
  }

  v5 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v5)
  {
    [FigCaptureCameraParameters mattingVersionForPortType:sensorIDString:];
    return 0;
  }

  v6 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MattingParameters", "objectForKeyedSubscript:", @"Version"}];
  if (!v6)
  {
    v6 = [(NSDictionary *)self->_commonMattingParameters objectForKeyedSubscript:@"Version"];
  }

  return [v6 intValue];
}

uint64_t __123__FigCaptureCameraParameters_portraitSceneMonitoringParametersForPortType_sensorIDString_zoomFactorRelativeToWidePortType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 floatValue];
  v5 = v4;
  [a3 floatValue];
  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)depthScalingTuneParametersForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self depthScalingTuneParametersForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters depthScalingTuneParametersForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters depthScalingTuneParametersForPortType:sensorIDString:];
    return 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"DepthProcessingParameters"];

  return [v5 objectForKeyedSubscript:@"DepthScalingParameters"];
}

- (BOOL)portraitPreviewForegroundBlurEnabledForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self portraitPreviewForegroundBlurEnabledForPortType:a2 sensorIDString:0 zoomFactor:string, factor];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters portraitPreviewForegroundBlurEnabledForPortType:a2 sensorIDString:factor zoomFactor:?];
    return 0;
  }

  v9 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v9)
  {
    [FigCaptureCameraParameters portraitPreviewForegroundBlurEnabledForPortType:sensorIDString:zoomFactor:];
    return 0;
  }

  v11 = v9;
  *&v10 = factor;
  v12 = [(FigCaptureCameraParameters *)self sdofRenderingVersionForPortType:type sensorIDString:string zoomFactor:v10];
  if (!v12)
  {
    [FigCaptureCameraParameters portraitPreviewForegroundBlurEnabledForPortType:sensorIDString:zoomFactor:];
    return 0;
  }

  v14 = v12;
  *&v13 = factor;
  v15 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v11 zoomFactor:v13];
  if (!v15)
  {
    [FigCaptureCameraParameters portraitPreviewForegroundBlurEnabledForPortType:sensorIDString:zoomFactor:];
    return 0;
  }

  v16 = v15;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%d"];
  if (!v17)
  {
    [(FigCaptureCameraParameters *)0 portraitPreviewForegroundBlurEnabledForPortType:v18 sensorIDString:v19 zoomFactor:v20, v21, v22, v23, v24, v14];
    return 0;
  }

  v25 = v17;
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%d_NMP"];
  if (!v26)
  {
    [(FigCaptureCameraParameters *)0 portraitPreviewForegroundBlurEnabledForPortType:v27 sensorIDString:v28 zoomFactor:v29, v30, v31, v32, v33, v14];
    return 0;
  }

  v34 = v26;
  v35 = [objc_msgSend(v16 objectForKeyedSubscript:{v25), "objectForKeyedSubscript:", @"fgNRings"}];
  v36 = [objc_msgSend(v16 objectForKeyedSubscript:{v34), "objectForKeyedSubscript:", @"fgNRings"}];
  if (v35 && [v35 unsignedIntValue])
  {
    LOBYTE(v36) = 1;
  }

  else if (v36)
  {
    LOBYTE(v36) = [v36 unsignedIntValue] != 0;
  }

  return v36 & ([objc_msgSend(objc_msgSend(v16 objectForKeyedSubscript:{v25), "objectForKeyedSubscript:", @"disablePortraitPreviewForegroundBlur", "BOOLValue"}] ^ 1);
}

- (int)disparityRefinementTypeForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self disparityRefinementTypeForPortType:a2 sensorIDString:0 zoomFactor:string, factor];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters disparityRefinementTypeForPortType:a2 sensorIDString:factor zoomFactor:?];
    return 0;
  }

  v9 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v9)
  {
    [FigCaptureCameraParameters disparityRefinementTypeForPortType:sensorIDString:zoomFactor:];
    return 0;
  }

  v11 = v9;
  *&v10 = factor;
  if (![(FigCaptureCameraParameters *)self sdofRenderingVersionForPortType:type sensorIDString:string zoomFactor:v10])
  {
    [FigCaptureCameraParameters disparityRefinementTypeForPortType:sensorIDString:zoomFactor:];
    return 0;
  }

  *&v12 = factor;
  v13 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v11 zoomFactor:v12];
  result = [objc_msgSend(objc_msgSend(v13 objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"version", "intValue"}];
  if (result)
  {
    if ([objc_msgSend(v13 objectForKeyedSubscript:{@"Version", "intValue"}] < 5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (id)actionCameraSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self actionCameraSceneMonitoringParametersForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters actionCameraSceneMonitoringParametersForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters actionCameraSceneMonitoringParametersForPortType:sensorIDString:];
    return 0;
  }

  return [v4 objectForKeyedSubscript:@"ActionCameraSceneMonitoringParameters"];
}

- (id)stereoVideoCaptureSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self stereoVideoCaptureSceneMonitoringParametersForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters stereoVideoCaptureSceneMonitoringParametersForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters stereoVideoCaptureSceneMonitoringParametersForPortType:sensorIDString:];
    return 0;
  }

  return [v4 objectForKeyedSubscript:@"StereoVideoCaptureSceneMonitoringParameters"];
}

- (id)stereoPhotoCaptureSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self stereoPhotoCaptureSceneMonitoringParametersForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters stereoPhotoCaptureSceneMonitoringParametersForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters stereoPhotoCaptureSceneMonitoringParametersForPortType:sensorIDString:];
    return 0;
  }

  return [v4 objectForKeyedSubscript:@"StereoPhotoCaptureSceneMonitoringParameters"];
}

- (id)lensSmudgeDetectionParametersForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self lensSmudgeDetectionParametersForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters lensSmudgeDetectionParametersForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters lensSmudgeDetectionParametersForPortType:sensorIDString:];
    return 0;
  }

  result = [v4 objectForKeyedSubscript:@"CameraDetectionParameters"];
  if (!result)
  {
    [FigCaptureCameraParameters lensSmudgeDetectionParametersForPortType:sensorIDString:];
    return 0;
  }

  return result;
}

- (BOOL)panoramaRequiresLTMLockingForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self panoramaRequiresLTMLockingForPortType:a2 sensorIDString:0, string];
    return 1;
  }

  if (!string)
  {
    [FigCaptureCameraParameters panoramaRequiresLTMLockingForPortType:a2 sensorIDString:?];
    return 1;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters panoramaRequiresLTMLockingForPortType:sensorIDString:];
    return 1;
  }

  return [objc_msgSend(v4 objectForKeyedSubscript:{@"panoramaDoNotLockLTM", "BOOLValue"}] ^ 1;
}

+ (unsigned)sensorIDFromSensorIDString:(id)string
{
  v4 = 0;
  [objc_msgSend(MEMORY[0x1E696AE88] scannerWithString:{string), "scanHexInt:", &v4}];
  return v4;
}

- (BOOL)chromaticDefringingEnabledForVideoForPortType:(id)type sensorIDString:(id)string
{
  v4 = [objc_msgSend(objc_msgSend(-[FigCaptureCameraParameters sensorIDDictionaryForPortType:sensorIDString:](self sensorIDDictionaryForPortType:type sensorIDString:{string), "objectForKeyedSubscript:", @"ChromaticDefringing", "objectForKeyedSubscript:", @"Video", "objectForKeyedSubscript:", @"CorrectionEnabled"}];

  return [v4 BOOLValue];
}

- (BOOL)chromaticDefringingEnabledForSlomoForPortType:(id)type sensorIDString:(id)string
{
  v4 = [objc_msgSend(objc_msgSend(-[FigCaptureCameraParameters sensorIDDictionaryForPortType:sensorIDString:](self sensorIDDictionaryForPortType:type sensorIDString:{string), "objectForKeyedSubscript:", @"ChromaticDefringing", "objectForKeyedSubscript:", @"Slomo", "objectForKeyedSubscript:", @"CorrectionEnabled"}];

  return [v4 BOOLValue];
}

- (id)chromaticDefringingParametersForPortType:(id)type sensorIDString:(id)string
{
  v4 = [(FigCaptureCameraParameters *)self sensorIDDictionaryForPortType:type sensorIDString:string];
  if (!v4)
  {
    [FigCaptureCameraParameters chromaticDefringingParametersForPortType:sensorIDString:];
    return 0;
  }

  result = [v4 objectForKeyedSubscript:@"ChromaticDefringing"];
  if (!result)
  {
    [FigCaptureCameraParameters chromaticDefringingParametersForPortType:sensorIDString:];
    return 0;
  }

  return result;
}

+ (int)movieFileMaxLossyCompressionLevelForPixelFormat:(unsigned int)format
{
  if (FigCapturePixelFormatIsTenBit(format))
  {
    if (FigCapturePixelFormatIs422(format))
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 1;
  }

  if (FigCapturePlatformSupportsUniversalLossyCompression())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t __83__FigCaptureCameraParameters_sdofTuningParametersForSensorIDDictionary_zoomFactor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 floatValue];
  v5 = v4;
  [a3 floatValue];
  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)quadraSubPixelSwitchingParametersForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self quadraSubPixelSwitchingParametersForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters quadraSubPixelSwitchingParametersForPortType:a2 sensorIDString:?];
    return 0;
  }

  v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v4)
  {
    [FigCaptureCameraParameters quadraSubPixelSwitchingParametersForPortType:sensorIDString:];
    return 0;
  }

  return [v4 objectForKeyedSubscript:@"QuadraSubPixelSwitchingParameters"];
}

+ (id)cinematicFramingVirtualCameraConfigurationForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self cinematicFramingVirtualCameraConfigurationForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters cinematicFramingVirtualCameraConfigurationForPortType:self sensorIDString:a2];
    return 0;
  }

  v4 = [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters cameraTuningParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
  if (!v4)
  {
    +[FigCaptureCameraParameters cinematicFramingVirtualCameraConfigurationForPortType:sensorIDString:];
    return 0;
  }

  return [v4 objectForKeyedSubscript:@"CinematicFramingVirtualCameraConfiguration"];
}

+ (id)temporalFilterSessionConfigurationForPortType:(id)type sensorIDString:(id)string
{
  if (!type)
  {
    [(FigCaptureCameraParameters *)self temporalFilterSessionConfigurationForPortType:a2 sensorIDString:0, string];
    return 0;
  }

  if (!string)
  {
    [FigCaptureCameraParameters temporalFilterSessionConfigurationForPortType:self sensorIDString:a2];
    return 0;
  }

  v4 = [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters cameraTuningParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
  if (!v4)
  {
    +[FigCaptureCameraParameters temporalFilterSessionConfigurationForPortType:sensorIDString:];
    return 0;
  }

  return [v4 objectForKeyedSubscript:@"MotionCompensatedTemporalFilterNoiseReductionConfiguration"];
}

- (id)_initWithModelSpecificName:(void *)name fromFile:
{
  if (!self)
  {
    return 0;
  }

  v69.receiver = self;
  v69.super_class = FigCaptureCameraParameters;
  v5 = objc_msgSendSuper2(&v69, sel_init);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  if ((-[FigCaptureCameraParameters _readAndPreprocessCameraParametersForModelSpecificName:fromFile:](v5, a2, name) & 1) == 0 || (v8 = [v6[1] objectForKeyedSubscript:@"TuningParameters"], v9 = objc_opt_class(), (OUTLINED_FUNCTION_19(v9) & 1) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");

    return 0;
  }

  v10 = [v8 objectForKeyedSubscript:@"Common"];
  objc_opt_class();
  OUTLINED_FUNCTION_10_29();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 objectForKeyedSubscript:@"NRFParameters"];
    v13 = OUTLINED_FUNCTION_4_93(v11, v12);
    if (OUTLINED_FUNCTION_19(v13))
    {
      v6[2] = v8;
    }

    v14 = [v10 objectForKeyedSubscript:@"DistortionCorrectionParameters"];
    v16 = OUTLINED_FUNCTION_4_93(v14, v15);
    if (OUTLINED_FUNCTION_19(v16))
    {
      v6[3] = v8;
    }

    v17 = [v10 objectForKeyedSubscript:@"Meteor"];
    v19 = OUTLINED_FUNCTION_4_93(v17, v18);
    if (OUTLINED_FUNCTION_19(v19))
    {
      v6[4] = v8;
    }

    v20 = [v10 objectForKeyedSubscript:@"MotionAttachments"];
    v22 = OUTLINED_FUNCTION_4_93(v20, v21);
    if (OUTLINED_FUNCTION_19(v22))
    {
      v6[5] = v8;
    }

    v23 = [v10 objectForKeyedSubscript:@"VideoStabilization"];
    v25 = OUTLINED_FUNCTION_4_93(v23, v24);
    if (OUTLINED_FUNCTION_19(v25))
    {
      v6[6] = v8;
    }

    v26 = [v10 objectForKeyedSubscript:@"PreviewStabilization"];
    v28 = OUTLINED_FUNCTION_4_93(v26, v27);
    if (OUTLINED_FUNCTION_19(v28))
    {
      v6[7] = v8;
    }

    v29 = [v10 objectForKeyedSubscript:@"StereoDisparity"];
    v31 = OUTLINED_FUNCTION_4_93(v29, v30);
    if (OUTLINED_FUNCTION_19(v31))
    {
      v6[8] = v8;
    }

    v32 = [v10 objectForKeyedSubscript:@"MonocularStreamingDepth"];
    v34 = OUTLINED_FUNCTION_4_93(v32, v33);
    if (OUTLINED_FUNCTION_19(v34))
    {
      v6[9] = v8;
    }

    v35 = [v10 objectForKeyedSubscript:@"DepthProcessingParameters"];
    v37 = OUTLINED_FUNCTION_4_93(v35, v36);
    if (OUTLINED_FUNCTION_19(v37))
    {
      v6[10] = v8;
    }

    v38 = [v10 objectForKeyedSubscript:@"VideoGreenGhostMitigationParameters"];
    v40 = OUTLINED_FUNCTION_4_93(v38, v39);
    if (OUTLINED_FUNCTION_19(v40))
    {
      v6[16] = v8;
    }

    v41 = [v10 objectForKeyedSubscript:@"Landmarks"];
    v43 = OUTLINED_FUNCTION_4_93(v41, v42);
    if (OUTLINED_FUNCTION_19(v43))
    {
      v6[11] = v8;
    }

    v44 = [v10 objectForKeyedSubscript:@"MattingParameters"];
    v46 = OUTLINED_FUNCTION_4_93(v44, v45);
    if (OUTLINED_FUNCTION_19(v46))
    {
      v6[12] = v8;
    }

    v47 = [v10 objectForKeyedSubscript:@"LearnedMattingParameters"];
    v49 = OUTLINED_FUNCTION_4_93(v47, v48);
    if (OUTLINED_FUNCTION_19(v49))
    {
      v6[13] = v8;
    }

    v50 = [v10 objectForKeyedSubscript:@"PersonSemantics"];
    v52 = OUTLINED_FUNCTION_4_93(v50, v51);
    if (OUTLINED_FUNCTION_19(v52))
    {
      v6[14] = v8;
    }

    v53 = [v10 objectForKeyedSubscript:@"CoreImagePortraitFilter"];
    v55 = OUTLINED_FUNCTION_4_93(v53, v54);
    if (OUTLINED_FUNCTION_19(v55))
    {
      v6[15] = v8;
    }

    v56 = [v10 objectForKeyedSubscript:@"DeepZoomParameters"];
    v58 = OUTLINED_FUNCTION_4_93(v56, v57);
    if (OUTLINED_FUNCTION_19(v58))
    {
      v6[17] = v8;
    }

    v59 = [v10 objectForKeyedSubscript:@"PhotoEncoderParameters"];
    v61 = OUTLINED_FUNCTION_4_93(v59, v60);
    if (OUTLINED_FUNCTION_19(v61))
    {
      v6[18] = v8;
    }

    v62 = [v10 objectForKeyedSubscript:@"PortraitSceneMonitoringParametersByZoomFactor"];
    v64 = OUTLINED_FUNCTION_4_93(v62, v63);
    if (OUTLINED_FUNCTION_19(v64))
    {
      v6[19] = v8;
    }

    v65 = [v10 objectForKeyedSubscript:@"CameraDetectionParameters"];
    v67 = OUTLINED_FUNCTION_4_93(v65, v66);
    if (OUTLINED_FUNCTION_19(v67))
    {
      v6[20] = v8;
    }

    v68 = [v10 objectForKeyedSubscript:@"TemporalNoiseReductionParameters"];
    objc_opt_class();
    OUTLINED_FUNCTION_10_29();
    if (objc_opt_isKindOfClass())
    {
      v6[21] = v68;
    }
  }

  if (!v6[5])
  {
    v6[5] = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  if (!v6[6])
  {
    v6[6] = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  if (!v6[7])
  {
    v6[7] = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  return v6;
}

- (FigCaptureCameraParameters)initWithContentsOfFile:(id)file
{
  FigCaptureGetModelSpecificName(self, a2);
  v4 = OUTLINED_FUNCTION_10_29();

  return [(FigCaptureCameraParameters *)v4 _initWithModelSpecificName:v5 fromFile:file];
}

- (uint64_t)_readAndPreprocessCameraParametersForModelSpecificName:(void *)name fromFile:
{
  v81 = a2;
  if (!self)
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  if (name)
  {
    v6 = [FigCaptureFlatPlist flatPlistWithContentsOfFile:name];
    if (v6)
    {
      v7 = v6;
      if ([name hasSuffix:@"CameraSetup.plist"])
      {
        v8 = [name substringWithRange:{0, objc_msgSend(name, "length") - objc_msgSend(@"CameraSetup.plist", "length")}];
      }

      else
      {
        v8 = [objc_msgSend(name "stringByDeletingLastPathComponent")];
      }

      v10 = v8;
      goto LABEL_10;
    }

LABEL_65:
    v56 = 0;
    goto LABEL_62;
  }

  v9 = FigCaptureCFCreatePropertyListForModel(@"CameraSetup.plist", v81, 1);
  if (!v9)
  {
    goto LABEL_65;
  }

  v7 = v9;
  v10 = 0;
LABEL_10:
  v71 = [(FigCaptureFlatPlist *)v7 objectForKeyedSubscript:@"TuningParameters"];
  v11 = *off_1E798A0C0;
  v108[0] = *off_1E798A0D0;
  v108[1] = v11;
  v12 = *off_1E798A0F8;
  v108[2] = *off_1E798A0D8;
  v108[3] = v12;
  v13 = *off_1E798A0E8;
  v108[4] = *off_1E798A0E0;
  v108[5] = v13;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:6];
  v69 = [obj countByEnumeratingWithState:&v104 objects:v103 count:16];
  if (!v69)
  {
    v57 = *(self + 8);
    v54 = (self + 8);

    goto LABEL_60;
  }

  selfCopy = self;
  v63 = v7;
  v65 = 0;
  context = v5;
  v64 = 0;
  v70 = *v105;
  do
  {
    v14 = 0;
    do
    {
      if (*v105 != v70)
      {
        v15 = v14;
        objc_enumerationMutation(obj);
        v14 = v15;
      }

      v75 = v14;
      v67 = *(*(&v104 + 1) + 8 * v14);
      v16 = [v71 objectForKeyedSubscript:?];
      v17 = objc_opt_class();
      if (OUTLINED_FUNCTION_19(v17))
      {
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        allKeys = [v16 allKeys];
        v19 = [allKeys countByEnumeratingWithState:&v99 objects:v98 count:16];
        if (v19)
        {
          v20 = v19;
          v76 = 0;
          v21 = *v100;
          v73 = allKeys;
          v74 = v16;
          v72 = *v100;
          while (1)
          {
            v22 = 0;
            v77 = v20;
            do
            {
              if (*v100 != v21)
              {
                objc_enumerationMutation(allKeys);
              }

              v78 = *(*(&v99 + 1) + 8 * v22);
              v80 = v22;
              v23 = [v16 objectForKeyedSubscript:?];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_45;
              }

              v32 = OUTLINED_FUNCTION_9_62(isKindOfClass, v25, v26, v27, v28, v29, v30, v31, v59, v60, v61, selfCopy, v63, v64, v65, context, v67, obj, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
              if (!v32)
              {
                v20 = v77;
LABEL_45:
                v49 = v80;
                goto LABEL_46;
              }

              v33 = v32;
              v34 = 0;
              v35 = MEMORY[0];
              while (2)
              {
                for (i = 0; i != v33; ++i)
                {
                  if (MEMORY[0] != v35)
                  {
                    objc_enumerationMutation(&unk_1F2249C60);
                  }

                  v37 = *(8 * i);
                  v38 = [v23 objectForKeyedSubscript:v37];
                  objc_opt_class();
                  OUTLINED_FUNCTION_10_29();
                  v39 = objc_opt_isKindOfClass();
                  if (v39)
                  {
                    if (v10)
                    {
                      v59 = v10;
                      v60 = v38;
                      v47 = +[FigCaptureFlatPlist flatPlistWithContentsOfFile:](FigCaptureFlatPlist, "flatPlistWithContentsOfFile:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@"]);
                    }

                    else
                    {
                      v47 = FigCaptureCFCreatePropertyListForModel(v38, v81, 1);
                    }

                    v48 = v47;
                    if (!v47)
                    {
                      goto LABEL_58;
                    }

                    if (!v34)
                    {
                      v34 = [v23 mutableCopy];
                    }

                    [v34 setObject:0 forKeyedSubscript:v37];
                    v39 = [v34 addEntriesFromDictionary:v48];
                  }
                }

                v33 = OUTLINED_FUNCTION_9_62(v39, v40, v41, v42, v43, v44, v45, v46, v59, v60, v61, selfCopy, v63, v64, v65, context, v67, obj, v69, v70, v71, v72, v73, v74, v75, v76, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
                if (v33)
                {
                  continue;
                }

                break;
              }

              v20 = v77;
              v49 = v80;
              if (!v34)
              {
                allKeys = v73;
                v16 = v74;
                v21 = v72;
                goto LABEL_46;
              }

              allKeys = v73;
              v16 = v74;
              v50 = v76;
              v21 = v72;
              if (!v76)
              {
                v50 = [v74 mutableCopy];
              }

              v76 = v50;
              [v50 setObject:v34 forKeyedSubscript:v79];
              if (objc_msgSend_isEqualToString_(v79))
              {
                if (([objc_msgSend(v74 "allKeys")] & 1) == 0)
                {
                  [v76 setObject:v34 forKeyedSubscript:@"0x0853"];
                  goto LABEL_46;
                }

LABEL_58:
                v56 = 0;
                v5 = context;
                goto LABEL_62;
              }

LABEL_46:
              v22 = v49 + 1;
            }

            while (v22 != v20);
            v51 = [allKeys countByEnumeratingWithState:&v99 objects:v98 count:16];
            v20 = v51;
            if (!v51)
            {
              if (v76)
              {
                v52 = v65;
                if (!v65)
                {
                  v53 = [v71 mutableCopy];
                  v64 = [(FigCaptureFlatPlist *)v63 mutableCopy];
                  [v64 setObject:v53 forKeyedSubscript:@"TuningParameters"];
                  v52 = v53;
                }

                v65 = v52;
                [v52 setObject:? forKeyedSubscript:?];
              }

              break;
            }
          }
        }
      }

      v14 = v75 + 1;
    }

    while (v75 + 1 != v69);
    v69 = [obj countByEnumeratingWithState:&v104 objects:v103 count:16];
  }

  while (v69);
  v54 = (selfCopy + 8);

  if (v64)
  {
    v55 = [v64 copy];
    v5 = context;
    goto LABEL_61;
  }

  v5 = context;
  v7 = v63;
LABEL_60:
  v55 = v7;
LABEL_61:
  *v54 = v55;
  v56 = 1;
LABEL_62:
  objc_autoreleasePoolPop(v5);
  return v56;
}

- (int)videoGreenGhostBrightLightMitigationVersion
{
  v2 = [-[NSDictionary objectForKeyedSubscript:](self->_commonVideoGreenGhostMitigationParameters objectForKeyedSubscript:{@"BrightLightMitigationParameters", "objectForKeyedSubscript:", @"Version"}];
  if (v2)
  {

    LODWORD(v2) = [v2 intValue];
  }

  return v2;
}

- (int)videoGreenGhostLowLightMitigationVersion
{
  v2 = [-[NSDictionary objectForKeyedSubscript:](self->_commonVideoGreenGhostMitigationParameters objectForKeyedSubscript:{@"LowLightMitigationParameters", "objectForKeyedSubscript:", @"Version"}];
  if (v2)
  {

    LODWORD(v2) = [v2 intValue];
  }

  return v2;
}

- (int)meteorHeadroomProcessingType
{
  meteorParameters = self->_meteorParameters;
  if (meteorParameters)
  {
    v3 = [(NSDictionary *)meteorParameters objectForKeyedSubscript:@"HeadroomProcessingType"];

    LODWORD(meteorParameters) = [v3 intValue];
  }

  return meteorParameters;
}

- (int)monocularStreamingDepthType
{
  monocularStreamingDepthParameters = self->_monocularStreamingDepthParameters;
  if (monocularStreamingDepthParameters)
  {
    v3 = [(NSDictionary *)monocularStreamingDepthParameters objectForKeyedSubscript:@"Type"];

    LODWORD(monocularStreamingDepthParameters) = [v3 intValue];
  }

  return monocularStreamingDepthParameters;
}

- (int)fsdNetStereoImagesAlignmentForPortType:(id)type sensorIDString:(id)string
{
  if (!type || !string || (v4 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return -1;
  }

  v5 = [v4 objectForKeyedSubscript:@"FSDNetStereoImagesAlignment"];
  if (!v5)
  {
    return -1;
  }

  return [v5 intValue];
}

- (id)focusPixelDisparityTuningParametersForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor
{
  if (!type)
  {
    goto LABEL_25;
  }

  stringCopy = string;
  if (!string)
  {
    goto LABEL_24;
  }

  v9 = [FigCaptureCameraParameters focusPixelDisparityVersionForPortType:"focusPixelDisparityVersionForPortType:sensorIDString:" sensorIDString:?];
  if (!v9 || (v10 = v9, (v11 = [(FigCaptureCameraParameters *)self sensorIDDictionaryForPortType:type sensorIDString:stringCopy]) == 0))
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  stringCopy = [v11 objectForKeyedSubscript:@"FocusPixelDisparityParameters"];
  if (!stringCopy)
  {
LABEL_24:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return stringCopy;
  }

  if (v10 >= 2)
  {
    stringCopy = [stringCopy objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"FPDisparityV%d", v10)}];
  }

  v12 = [stringCopy objectForKeyedSubscript:@"ZoomSpecificParameters"];
  if (!v12)
  {
    return stringCopy;
  }

  if (factor == 0.0)
  {
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [objc_msgSend(v12 "allKeys")];
  [objc_msgSend(v14 "firstObject")];
  if (v15 != 1.0)
  {
    return 0;
  }

  [v14 firstObject];
  stringCopy = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  v23 = OUTLINED_FUNCTION_17_0(stringCopy, v16, v17, v18, v19, v20, v21, v22, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73);
  if (v23)
  {
    v24 = v23;
    v25 = fmaxf(factor, 1.0);
    v26 = MEMORY[0];
LABEL_13:
    v27 = 0;
    while (1)
    {
      if (MEMORY[0] != v26)
      {
        objc_enumerationMutation(v14);
      }

      v28 = *(8 * v27);
      [v28 floatValue];
      if (v29 > v25)
      {
        break;
      }

      v30 = [v13 objectForKeyedSubscript:v28];
      stringCopy = v30;
      if (v24 == ++v27)
      {
        v24 = OUTLINED_FUNCTION_17_0(v30, v31, v32, v33, v34, v35, v36, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
        if (v24)
        {
          goto LABEL_13;
        }

        return stringCopy;
      }
    }
  }

  return stringCopy;
}

- (BOOL)portraitTapToRefocusPrevented
{
  depthProcessingParameters = self->_depthProcessingParameters;
  if (!depthProcessingParameters)
  {
    return 0;
  }

  v3 = [(NSDictionary *)depthProcessingParameters objectForKeyedSubscript:@"PortraitTapToRefocusPrevented"];
  if (!v3)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (id)focusPixelsPatternsForPortType:(id)type sensorIDString:(id)string
{
  if (!type || !string)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  cameraTuningParameters = [(FigCaptureCameraParameters *)self cameraTuningParameters];
  if (!cameraTuningParameters)
  {
    return 0;
  }

  v7 = [objc_msgSend(objc_msgSend(objc_msgSend(-[NSDictionary objectForKeyedSubscript:](cameraTuningParameters objectForKeyedSubscript:{type), "objectForKeyedSubscript:", string), "objectForKeyedSubscript:", @"ModuleConfig", "objectForKeyedSubscript:", @"FocusPixels", "objectForKeyedSubscript:", @"Layout"}];

  return [v7 objectForKeyedSubscript:@"Patterns"];
}

- (int)depthProcessorVersion
{
  depthProcessingParameters = self->_depthProcessingParameters;
  if (depthProcessingParameters)
  {
    v3 = [(NSDictionary *)depthProcessingParameters objectForKeyedSubscript:@"Version"];

    LODWORD(depthProcessingParameters) = [v3 intValue];
  }

  return depthProcessingParameters;
}

- (BOOL)deepZoomTransferWithZoomedImageEnabledForPortType:(id)type sensorIDString:(id)string
{
  v4 = [(FigCaptureCameraParameters *)self sensorIDDictionaryForPortType:type sensorIDString:string];
  if (!v4 || (v5 = [v4 objectForKeyedSubscript:@"DeepZoomParameters"]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  v6 = [objc_msgSend(v5 objectForKeyedSubscript:{@"Transfer", "objectForKeyedSubscript:", @"ProWithZoomedImageEnabled"}];
  if (!v6)
  {
    return 0;
  }

  return [v6 BOOLValue];
}

- (id)portraitSceneMonitoringParametersForPortType:(id)type sensorIDString:(id)string zoomFactorRelativeToWidePortType:(float)portType
{
  if (!type)
  {
    goto LABEL_25;
  }

  if (!string)
  {
    goto LABEL_25;
  }

  v7 = [FigCaptureCameraParameters sensorIDDictionaryForPortType:"sensorIDDictionaryForPortType:sensorIDString:" sensorIDString:?];
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = [v7 objectForKeyedSubscript:@"PortraitSceneMonitoringParameters"];
  if (v8)
  {
    return v8;
  }

  portraitSceneMonitoringParametersByZoomFactor = self->_portraitSceneMonitoringParametersByZoomFactor;
  if (!portraitSceneMonitoringParametersByZoomFactor)
  {
    return 0;
  }

  if (portType == 0.0)
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  v10 = [(NSDictionary *)portraitSceneMonitoringParametersByZoomFactor objectForKeyedSubscript:@"ZoomSpecificParameters"];
  v11 = [objc_msgSend(v10 "allKeys")];
  [objc_msgSend(v11 "firstObject")];
  if (v12 != 1.0)
  {
    return 0;
  }

  v13 = fmaxf(portType, 1.0);
  [(NSDictionary *)self->_portraitSceneMonitoringParametersByZoomFactor objectForKeyedSubscript:@"Common"];
  v14 = [OUTLINED_FUNCTION_4() dictionaryWithDictionary:?];
  v15 = [v11 count];
  v17 = v15 - 1;
  while (1)
  {
    v18 = __OFSUB__(v15--, 1);
    if (v15 < 0 != v18)
    {
      break;
    }

    [objc_msgSend(v11 objectAtIndexedSubscript:{v17), "floatValue"}];
    v19 = v13 - *&v16;
    if ((v13 - *&v16) < 0.0)
    {
      v19 = -(v13 - *&v16);
    }

    if (v13 <= *&v16)
    {
      v16 = v19;
      --v17;
      if (v19 >= 0.001)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  v15 = -1;
LABEL_16:
  if (v15 == -1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  [v10 objectForKeyedSubscript:{objc_msgSend(v11, "objectAtIndexedSubscript:", v20, v16)}];
  [OUTLINED_FUNCTION_4() addEntriesFromDictionary:?];
  return v14;
}

- (int)portraitSceneMonitorVersionForPortType:(id)type sensorIDString:(id)string
{
  LODWORD(v4) = 1.0;
  v5 = [(FigCaptureCameraParameters *)self portraitSceneMonitoringParametersForPortType:type sensorIDString:string zoomFactorRelativeToWidePortType:v4];
  if (!v5)
  {
    return 0;
  }

  v6 = [v5 objectForKeyedSubscript:@"Version"];
  if (!v6)
  {
    return 0;
  }

  return [v6 intValue];
}

- (int)sdofRenderingVersionForPortType:(id)type sensorIDString:(id)string zoomFactor:(float)factor
{
  if (!type || (objc_msgSend_isEqualToString_(type, a2, *off_1E798A0C8) & 1) != 0)
  {
    return 0;
  }

  if (!string || (v9 = [(FigCaptureCameraParameters *)self sensorIDDictionaryForPortType:type sensorIDString:string]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  *&v10 = factor;
  v11 = [+[FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:zoomFactor:](FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v9 zoomFactor:{v10), "objectForKeyedSubscript:", @"Version"}];

  return [v11 intValue];
}

- ($2ACC23B9A21F50F5CC728381CA870116)landmarksVersionForInferenceType:(int)type
{
  if (type == 802)
  {
    landmarksParameters = self->_landmarksParameters;
    if (!landmarksParameters)
    {
      intValue = 1;
      goto LABEL_15;
    }

    v4 = @"InferenceTypeFaceSegmentsWithLandmarks";
  }

  else
  {
    if (type != 801)
    {
      intValue = 0;
      goto LABEL_15;
    }

    landmarksParameters = self->_landmarksParameters;
    if (!landmarksParameters)
    {
      if (+[BWInferenceEngine isNeuralEngineSupported])
      {
        intValue = 2;
      }

      else
      {
        intValue = 1;
      }

      goto LABEL_15;
    }

    v4 = @"InferenceTypeLandmarks";
  }

  intValue = [(NSDictionary *)landmarksParameters objectForKeyedSubscript:v4];
  if (intValue)
  {
    intValue = [intValue objectForKeyedSubscript:@"InferenceVersion"];
    if (intValue)
    {
      intValue = [intValue intValue];
    }
  }

LABEL_15:

  return BWInferenceVersionMakeMajor(intValue);
}

- (int)landmarksConstellationPointCountForInferenceType:(int)type
{
  if (type == 802)
  {
    landmarksParameters = self->_landmarksParameters;
    if (!landmarksParameters)
    {
      LODWORD(v5) = 76;
      return v5;
    }

    v4 = @"InferenceTypeFaceSegmentsWithLandmarks";
  }

  else
  {
    if (type != 801)
    {
      LODWORD(v5) = 0;
      return v5;
    }

    landmarksParameters = self->_landmarksParameters;
    if (!landmarksParameters)
    {
      LODWORD(v5) = 65;
      return v5;
    }

    v4 = @"InferenceTypeLandmarks";
  }

  v5 = [(NSDictionary *)landmarksParameters objectForKeyedSubscript:v4];
  if (v5)
  {
    v5 = [v5 objectForKeyedSubscript:@"ConstellationPointCount"];
    if (v5)
    {
      intValue = [v5 intValue];
      if (intValue == 65)
      {
        v7 = 65;
      }

      else
      {
        v7 = 0;
      }

      if (intValue == 76)
      {
        LODWORD(v5) = 76;
      }

      else
      {
        LODWORD(v5) = v7;
      }
    }
  }

  return v5;
}

- (int)coreImagePortraitFilterVersion
{
  coreImagePortraitFilterParameters = self->_coreImagePortraitFilterParameters;
  if (!coreImagePortraitFilterParameters)
  {
    return 1;
  }

  v3 = [(NSDictionary *)coreImagePortraitFilterParameters objectForKeyedSubscript:@"Version"];
  if (!v3)
  {
    return 1;
  }

  return [v3 intValue];
}

+ (id)sensorIDStringFromModuleInfo:(id)info
{
  result = [info objectForKeyedSubscript:*off_1E798A270];
  if (result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%04x", objc_msgSend(result, "intValue")];
  }

  return result;
}

+ (id)sensorIDStringFromMetadata:(id)metadata
{
  result = [metadata objectForKeyedSubscript:*off_1E798B660];
  if (result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%04x", objc_msgSend(result, "intValue")];
  }

  return result;
}

- (int)videoStabilizationProcessorVersion
{
  videoStabilizationParameters = self->_videoStabilizationParameters;
  if (videoStabilizationParameters)
  {
    v3 = [(NSDictionary *)videoStabilizationParameters objectForKeyedSubscript:@"Version"];

    LODWORD(videoStabilizationParameters) = [v3 intValue];
  }

  return videoStabilizationParameters;
}

+ (id)sdofTuningParametersForSensorIDDictionary:(id)dictionary zoomFactor:(float)factor
{
  if (!dictionary)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, v48, v50, v52, v54, v56, v58, v60);
    v12 = 0;
    v7 = 1.0;
    goto LABEL_14;
  }

  v6 = [dictionary objectForKeyedSubscript:@"SDOFRenderingParameters"];
  v7 = 1.0;
  if (v6)
  {
    v12 = v6;
    goto LABEL_14;
  }

  v8 = [dictionary objectForKeyedSubscript:@"SDOFRenderingParametersByZoomFactor"];
  if (!v8)
  {
    goto LABEL_28;
  }

  if (factor == 0.0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, v48, v50, v52, v54, v56, v58, v60);
    goto LABEL_28;
  }

  v9 = v8;
  v10 = [objc_msgSend(v8 "allKeys")];
  [objc_msgSend(v10 "firstObject")];
  if (v11 != 1.0)
  {
LABEL_28:
    v12 = 0;
    goto LABEL_14;
  }

  factor = fmaxf(factor, 1.0);
  [v10 firstObject];
  v12 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  v13 = [objc_msgSend(v10 "firstObject")];
  v7 = v14;
  v22 = OUTLINED_FUNCTION_17_0(v13, v15, v16, v17, v18, v19, v20, v21, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80);
  if (v22)
  {
    v23 = v22;
    v24 = MEMORY[0];
LABEL_8:
    v25 = 0;
    while (1)
    {
      if (MEMORY[0] != v24)
      {
        objc_enumerationMutation(v10);
      }

      v26 = *(8 * v25);
      [v26 floatValue];
      if (v27 > factor)
      {
        break;
      }

      v12 = [v9 objectForKeyedSubscript:v26];
      floatValue = [v26 floatValue];
      v7 = v36;
      if (v23 == ++v25)
      {
        v23 = OUTLINED_FUNCTION_17_0(floatValue, v29, v30, v31, v32, v33, v34, v35, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
        if (v23)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

LABEL_14:
  if (factor != v7)
  {
    v37 = [v12 objectForKeyedSubscript:@"InterpolableParameters"];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 objectForKeyedSubscript:@"TargetValues"];
      if (v39)
      {
        v40 = v39;
        [objc_msgSend(v38 objectForKeyedSubscript:{@"ZoomFactorForTargetValues", "floatValue"}];
        if (v41 != 0.0)
        {
          v42 = (v41 - factor) / (v41 - v7);
          if (v42 > 1.0)
          {
            v42 = 1.0;
          }

          if (v42 >= 0.0)
          {
            v43 = v42;
          }

          else
          {
            v43 = 0.0;
          }

          v44 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __fccp_fineTuneSDOFTuningParametersForContinuousZoom_block_invoke;
          v82[3] = &unk_1E799CB00;
          v82[4] = v12;
          v82[5] = 0;
          v83 = v43;
          v82[6] = v44;
          [v40 enumerateKeysAndObjectsUsingBlock:v82];
          return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v44];
        }
      }
    }
  }

  return v12;
}

- (uint64_t)portraitPreviewForegroundBlurEnabledForPortType:(uint64_t)a3 sensorIDString:(uint64_t)a4 zoomFactor:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, vars0, vars8);
  v10 = OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE14, "<<<< FigCaptureCameraParameters >>>>", 0x530, v9, v11, v12, a9);
}

- (uint64_t)portraitPreviewForegroundBlurEnabledForPortType:(uint64_t)a3 sensorIDString:(uint64_t)a4 zoomFactor:(uint64_t)a5 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, vars0, vars8);
  v10 = OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE14, "<<<< FigCaptureCameraParameters >>>>", 0x52E, v9, v11, v12, a9);
}

@end