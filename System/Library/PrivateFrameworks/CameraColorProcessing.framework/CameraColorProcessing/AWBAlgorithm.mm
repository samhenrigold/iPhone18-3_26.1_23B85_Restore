@interface AWBAlgorithm
+ (int)awbSensorCalibrationsLoad:(id)load idealColorCalibrations:(id)calibrations to:(id)to;
+ (int)calculateSTRBKeyFromWideCamera:(id *)camera moduleConfig:(id)config secondaryModuleConfig:(id)moduleConfig;
+ (int)calculateSTRBKeyFromWideCameraLatticeModel:(id *)model moduleConfig:(id)config absoluteColorCalibrations:(id)calibrations secondaryModuleConfig:(id)moduleConfig secondaryAbsoluteColorCalibrations:(id)colorCalibrations;
+ (int)doAWBConfigLoad:(id)load to:(id)to;
+ (int)encodeSetFileIDForModuleConfig:(id)config setFileID:(unsigned int *)d;
+ (int)getColorCalibrationsUsingIdealColorCalbrations:(id)calbrations absoluteColorCalibrations:(id)calibrations colorCalibrationsOut:(id *)out awbConfig:(id)config;
+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo;
+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo platformID:(int)d;
+ (int)populateSlaveConfigWithModuleConfigIfColorMatchingModelExistsInPrimaryAWBConfig:(id)config secondaryAWBConfig:(id)bConfig secondaryIdealColorCals:(id)cals secondaryAbsoluteColorCals:(id)colorCals secondarySetFileID:(unsigned int)d secondarySensorConfig:(SensorConfigAWBParams *)sensorConfig;
+ (int)translateAWBGainsToSecondaryPortType:(id)type cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo primaryRGain:(float)gain primaryBGain:(float)self0 secondaryChannelID:(unsigned int)self1 secondaryRGain:(float *)self2 secondaryBGain:(float *)self3;
+ (void)calculateNonComboGainsFromComboGains:(unsigned int)gains[3] awbAlgorithm:(CAWBAFEH14 *)algorithm gains:(unsigned int)a5[3];
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGains;
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGainsNormalized;
- ($938B03310D06493B2963E5A84CB75A7E)awbGains;
- (AWBAlgorithm)initWithAWBObject:(id)object;
- (AWBAlgorithm)initWithMetalContext:(id)context platformID:(int)d;
- (CGRect)tileStatsROIRect;
- (id).cxx_construct;
- (int)_calculateComboGainsAndNormalizedGainsFromAWBGains:(id)gains awbComboGains:(id)comboGains colorCalGains:(id)calGains;
- (int)_processSkyMask:(void *)mask skyMaskWidth:(int)width skyMaskHeight:(int)height cropRectFromSourceDict:(id)dict;
- (int)_updateHRGainDownRatioMetadata;
- (int)awbConfigLoad:(id)load to:(CAWBAFE *)to;
- (int)calculateEIT:(id)t result:(unint64_t *)result;
- (int)calculateInternalAWBMetadataForMIWB:(float)b bGain:(float)gain rSkinGain:(float)skinGain bSkinGain:(float)bSkinGain cct:(float)cct internalMetadata:(id)metadata;
- (int)configFaceMetadata:(id)metadata awbParams:(id)params;
- (int)configFallbackMetadata:(id)metadata;
- (int)configFlashRFCMetadata:(id)metadata cameraInfo:(id)info moduleConfig:(id)config;
- (int)configFlickerDetectionMetadata:(id)metadata moduleConfig:(id)config;
- (int)configPortTypeMetadata:(id)metadata;
- (int)configWithModuleConfig:(id)config metadata:(id)metadata cameraInfo:(id)info awbParams:(id)params;
- (int)initTuningParameters:(id)parameters;
- (int)process;
- (int)translateAWBGainsToSecondaryChannelID:(unsigned int)d[3] secondaryChannelID:(unsigned int)iD secondaryConfig:(SensorConfigAWBParams *)config secondaryAWBParams:(sSlaveCameraAWBParam *)params;
- (uint64_t)_updateHRGainDownRatioMetadata;
- (void)dealloc;
@end

@implementation AWBAlgorithm

- (AWBAlgorithm)initWithMetalContext:(id)context platformID:(int)d
{
  contextCopy = context;
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v27.receiver = self;
  v27.super_class = AWBAlgorithm;
  v9 = [(AWBAlgorithm *)&v27 init];
  v10 = v9;
  if (!v9)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v19, v20, v21, v22, v23, v24);
    goto LABEL_13;
  }

  if (contextCopy)
  {
    objc_storeStrong(&v9->_metalContext, context);
    _createShaders = [(AWBAlgorithm *)v10 _createShaders];
    v12 = _createShaders;
    if (!_createShaders)
    {
      operator new();
    }

    v14 = v4;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", _createShaders, v4, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v14 = v4;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v19, v20, v21, v22, v23, v24);
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v18, v19);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  LODWORD(v17) = v12;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v14, v19, v20, v21, v22, v23, v24);
  if (dword_1EDD78228)
  {
    v26 = 0;
    v25 = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  if (*v8 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (AWBAlgorithm)initWithAWBObject:(id)object
{
  objectCopy = object;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11.receiver = self;
  v11.super_class = AWBAlgorithm;
  v7 = [(AWBAlgorithm *)&v11 init];
  if (v7 && (v8 = [objectCopy pointerValue], (v7->_AWBAlgorithmObj = v8) != 0))
  {
    v9 = v7;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v11.receiver, v11.super_class, v12, v13, v14, v15);
    if (*v6 == 1)
    {
      kdebug_trace();
    }

    v9 = 0;
  }

  return v9;
}

- (int)configWithModuleConfig:(id)config metadata:(id)metadata cameraInfo:(id)info awbParams:(id)params
{
  configCopy = config;
  metadataCopy = metadata;
  infoCopy = info;
  paramsCopy = params;
  v129 = configCopy;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (![metadataCopy count])
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
LABEL_43:
    v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, v96, v104);
    goto LABEL_30;
  }

  bzero(&self->_sMetaData, 0x1310uLL);
  self->_awbGains.bGain = 0;
  *&self->_awbComboGains.rGain = 0u;
  *&self->_awbComboGainsNormalized.gGain = 0u;
  digitalFlash = [paramsCopy digitalFlash];
  digitalFlash = self->_digitalFlash;
  self->_digitalFlash = digitalFlash;

  *&self->_numTilesX = 0x2000000020;
  v180[0] = 0;
  [metadataCopy cmi_floatValueForKey:*MEMORY[0x1E6991090] defaultValue:v180 found:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0) | 0x2000000000)];
  self->_sMetaData.ae.luxLevel = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v13 doubleValue];
  *&v14 = v14;
  self->_sMetaData.ae.luxLevel = *&v14;

  if ((v180[0] & 1) == 0 || (self->_sMetaData.ae.gainDigi.v16 = [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990CD8] defaultValue:1 found:v180], (v180[0] & 1) == 0) || (self->_sMetaData.ae.gainAnal.v16 = objc_msgSend(metadataCopy, "cmi_intValueForKey:defaultValue:found:", *MEMORY[0x1E6990CC8], 1, v180), (v180[0] & 1) == 0) || (LODWORD(v15) = 1.0, objc_msgSend(metadataCopy, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6990CD0], v180, v15), (v180[0] & 1) == 0) || (self->_sMetaData.ae.exposureTime = (v16 * 1000000.0), self->_sMetaData.ae.gainDigiSensor.v16 = objc_msgSend(metadataCopy, "cmi_intValueForKey:defaultValue:found:", *MEMORY[0x1E6990CE0], 1, v180), (v180[0] & 1) == 0) || (LODWORD(v17) = 1.0, objc_msgSend(metadataCopy, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6990FB0], v180, v17), (v180[0] & 1) == 0) || (self->_sMetaData.frameRate = vcvts_n_u32_f32(v18, 8uLL), self->_sMetaData.flash.flashCaptureCount = objc_msgSend(metadataCopy, "cmi_BOOLValueForKey:defaultValue:found:", *MEMORY[0x1E6991028], 0, v180), (v180[0] & 1) == 0) || (LODWORD(v19) = 1.0, objc_msgSend(metadataCopy, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E69910B8], 0, v19), self->_sMetaData.ae.inverseBinningGainFactor = vcvts_n_s32_f32(v20, 8uLL), objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", @"LuxModel"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectForKeyedSubscript:", @"Scale"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v21, !v23) || (objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKeyedSubscript:", @"LuxModel"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", @"Scale"), v26 = objc_claimAutoreleasedReturnValue(), self->_sMetaData.ae.luxCalcParams.scale = objc_msgSend(v26, "intValue"), v26, v25, v24, objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "objectForKeyedSubscript:", @"LuxModel"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKeyedSubscript:", @"ScaleShift"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v27, !v29))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
    goto LABEL_43;
  }

  v30 = [configCopy objectForKeyedSubscript:@"Exposure"];
  v31 = [v30 objectForKeyedSubscript:@"LuxModel"];
  v32 = [v31 objectForKeyedSubscript:@"ScaleShift"];
  self->_sMetaData.ae.luxCalcParams.scaleShift = [v32 intValue];

  [(AWBAlgorithm *)self calculateEIT:metadataCopy result:&self->_sMetaData.ae.currentEIT];
  *&self->_sMetaData.flash.flashStatusAE = 0x100000001;
  self->_sMetaData.flash.strobeStatus = 1;
  self->_sMetaData.flash.flashCaptureSequence = 0;
  *&self->_sMetaData.ae.aeAverage = 0;
  *&self->_sMetaData.masterCam = 257;
  self->_sMetaData.awb.isDefaultSetting = 1;
  self->_sMetaData.maxLSgainUnadjusted = 0x2000;
  self->_sMetaData.isReplay = 1;
  [(AWBAlgorithm *)self configPortTypeMetadata:metadataCopy];
  self->_sMetaData.ae.UBMisc.awbReflow.bGenerateReflowAWB = [(NSNumber *)self->_digitalFlash intValue]!= 0;
  if (((*(self->_AWBAlgorithmObj->var0 + 2))(self->_AWBAlgorithmObj, 1) & 1) == 0)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
    v34 = -1;
    goto LABEL_30;
  }

  v144 = [configCopy objectForKeyedSubscript:@"AutoWhiteBalance"];
  if (!v144)
  {
    goto LABEL_47;
  }

  v33 = [AWBAlgorithm awbConfigLoad:"awbConfigLoad:to:" to:?];
  v34 = v33;
  if (v33)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33, v127, v102, v111, v113, v115, v118, v120);
    v66 = 0;
    v51 = 0;
    v134 = 0;
    v136 = 0;
    v139 = 0;
    v67 = 0;
    v65 = 6;
    goto LABEL_23;
  }

  v35 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6990C50]];
  v141 = v35;
  if (!v35)
  {
LABEL_47:
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
    v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, v97, v105);
    v65 = 6;
    v66 = 0;
    v51 = 0;
    v134 = 0;
    v136 = 0;
    v139 = 0;
    v67 = 0;
    goto LABEL_23;
  }

  v36 = *MEMORY[0x1E6990E48];
  v139 = [v35 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];
  if (v139)
  {
    v37 = *MEMORY[0x1E6990E50];
    v136 = [v141 objectForKeyedSubscript:*MEMORY[0x1E6990E50]];
    if (v136)
    {
      v131 = *MEMORY[0x1E6990E40];
      v38 = [v139 objectForKeyedSubscript:?];
      [v38 floatValue];
      v40 = v39;

      v41 = *MEMORY[0x1E6990E38];
      v42 = [v139 objectForKeyedSubscript:*MEMORY[0x1E6990E38]];
      [v42 floatValue];
      v44 = v43;

      v45 = [v136 objectForKeyedSubscript:v131];
      [v45 floatValue];
      v47 = v46;

      v48 = [v136 objectForKeyedSubscript:v41];
      [v48 floatValue];
      v50 = v49;

      v134 = [v144 objectForKeyedSubscript:@"IdealColorCalibrations"];
      v51 = [v134 objectForKeyedSubscript:v36];
      if (v51)
      {
        v52 = [v134 objectForKeyedSubscript:v37];
        if (!v52)
        {
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
          v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v101, v109);
          v65 = 6;
          configCopy = v129;
          v67 = v141;
          v66 = 0;
          goto LABEL_23;
        }

        v53 = [v51 objectForKeyedSubscript:v131];
        [v53 floatValue];
        v55 = v54;

        v56 = [v51 objectForKeyedSubscript:v41];
        [v56 floatValue];
        v58 = v57;

        v59 = [v52 objectForKeyedSubscript:v131];
        [v59 floatValue];
        v61 = v60;

        v62 = [v52 objectForKeyedSubscript:v41];
        [v62 floatValue];
        v64 = v63;

        CAWBAFE::SensorCalSet(self->_AWBAlgorithmObj, v40 * 16384.0, v44 * 16384.0, v47 * 16384.0, v50 * 16384.0, v55, v58, v61, v64);
        v65 = 0;
        v34 = 0;
        v66 = v52;
      }

      else
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
        v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, v100, v108);
        v65 = 6;
        v66 = 0;
        v51 = 0;
      }
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
      v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v99, v107);
      v65 = 6;
      v66 = 0;
      v51 = 0;
      v134 = 0;
      v136 = 0;
    }
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v127, v102, v111, v113, v115, v118, v120);
    v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, v98, v106);
    v65 = 6;
    v66 = 0;
    v51 = 0;
    v134 = 0;
    v136 = 0;
    v139 = 0;
  }

  configCopy = v129;
  v67 = v141;
LABEL_23:

  if (v65 != 6)
  {
    CAWBAFE::SetDigitalFlashBehaviorMode(self->_AWBAlgorithmObj, [(NSNumber *)self->_digitalFlash intValue]);
    v68 = [(AWBAlgorithm *)self initTuningParameters:metadataCopy];
    v34 = v68;
    if (v68 || (v68 = [(AWBAlgorithm *)self configFallbackMetadata:metadataCopy], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFaceMetadata:metadataCopy awbParams:paramsCopy], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFlickerDetectionMetadata:metadataCopy moduleConfig:configCopy], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFlashRFCMetadata:metadataCopy cameraInfo:infoCopy moduleConfig:configCopy], (v34 = v68) != 0))
    {
      LODWORD(v88) = v68;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v88, v127, v102, v111, v113, v115, v118, v120);
    }
  }

LABEL_30:
  if (dword_1EDD78228)
  {
    v182[0] = 0;
    v181 = OS_LOG_TYPE_DEFAULT;
    v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v70 = v182[0];
    v71 = v69;
    v72 = v181;
    v147 = v71;
    if (os_log_type_enabled(v71, v181))
    {
      v73 = v70;
    }

    else
    {
      v73 = v70 & 0xFFFFFFFE;
    }

    if (v73)
    {
      imageTex = [paramsCopy imageTex];
      clippedTex = [paramsCopy clippedTex];
      v125 = v72;
      v124 = clippedTex != 0;
      v143 = clippedTex;
      lscGainsTex = [paramsCopy lscGainsTex];
      v122 = lscGainsTex != 0;
      v142 = lscGainsTex;
      skinMask = [paramsCopy skinMask];
      v121 = skinMask != 0;
      v140 = skinMask;
      skyMask = [paramsCopy skyMask];
      firstPixel = [paramsCopy firstPixel];
      v117 = [firstPixel intValue] > 0;
      cfaLayout = [paramsCopy cfaLayout];
      v116 = [cfaLayout intValue] > 0;
      downsizeFactor = [paramsCopy downsizeFactor];
      v114 = [downsizeFactor intValue] > 0;
      digitalFlash2 = [paramsCopy digitalFlash];
      intValue = [digitalFlash2 intValue];
      skipDemosaic = [paramsCopy skipDemosaic];
      intValue2 = [skipDemosaic intValue];
      lscMaxGain = [paramsCopy lscMaxGain];
      [lscMaxGain floatValue];
      v78 = v77 > 0.0;
      faceAssistedBehaviorMode = [paramsCopy faceAssistedBehaviorMode];
      intValue3 = [faceAssistedBehaviorMode intValue];
      validRectInSensorReadoutCoords = [paramsCopy validRectInSensorReadoutCoords];
      v81 = stringFromCGRectDictionaryRepresentation(validRectInSensorReadoutCoords);
      validRectInBufferCoords = [paramsCopy validRectInBufferCoords];
      v83 = stringFromCGRectDictionaryRepresentation(validRectInBufferCoords);
      regionOfInterestRectInBufferCoords = [paramsCopy regionOfInterestRectInBufferCoords];
      v85 = stringFromCGRectDictionaryRepresentation(regionOfInterestRectInBufferCoords);
      v148 = 136318978;
      v149 = "[AWBAlgorithm configWithModuleConfig:metadata:cameraInfo:awbParams:]";
      v150 = 1024;
      v151 = imageTex != 0;
      v152 = 1024;
      v153 = v124;
      v154 = 1024;
      v155 = v122;
      v156 = 1024;
      v157 = v121;
      v158 = 1024;
      v159 = skyMask != 0;
      v160 = 1024;
      v161 = v117;
      v162 = 1024;
      v163 = v116;
      v164 = 1024;
      v165 = v114;
      v166 = 1024;
      v167 = intValue;
      v168 = 1024;
      v169 = intValue2;
      v170 = 1024;
      v171 = v78;
      v172 = 1024;
      v173 = intValue3;
      v174 = 2112;
      v175 = v81;
      v176 = 2112;
      v177 = v83;
      v178 = 2112;
      v179 = v85;
      LODWORD(v95) = 114;
      v86 = v147;
      _os_log_send_and_compose_impl(v73, 0, v180, 128, &dword_1C92CA000, v147, v125, "<<<< AWBAlgorithm >>>> %s: it:%d ct:%d lgt:%d sim:%d sym:%d fp:%d cl:%d dfa:%d dfl:%d sd:%d lmg:%d fabm:%d vrs:%@ vr:%@ roi:%@", &v148, v95);

      configCopy = v129;
    }

    else
    {
      v86 = v147;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v34;
}

- (int)calculateEIT:(id)t result:(unint64_t *)result
{
  tCopy = t;
  v7 = tCopy;
  HIBYTE(v23) = 0;
  if (tCopy && result)
  {
    v8 = [tCopy cmi_intValueForKey:*MEMORY[0x1E6991158] defaultValue:0 found:&v23 + 7];
    if (HIBYTE(v23) & 1) != 0 && (v9 = v8, v10 = [v7 cmi_intValueForKey:*MEMORY[0x1E6990ED8] defaultValue:0 found:&v23 + 7], (HIBYTE(v23)) && (v11 = v10, objc_msgSend(v7, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6991170], &v23 + 7, 0.0), (HIBYTE(v23)) && (v13 = v12, objc_msgSend(v7, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6991160], &v23 + 7, 0.0), (HIBYTE(v23)) && (v15 = v14, objc_msgSend(v7, "cmi_doubleValueForKey:defaultValue:found:", *MEMORY[0x1E6990FC8], &v23 + 7, 0.0), (HIBYTE(v23)))
    {
      v17 = 0;
      *result = (v16 * 1000000.0 * (((vcvts_n_f32_s32(v9, 8uLL) * vcvts_n_f32_s32(v11, 8uLL)) * v13) * v15));
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v21, v23, v24, v25, v26, v27);
      v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v22);
    }
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v21, v23, v24, v25, v26, v27);
    v17 = 0;
  }

  return v17;
}

- (int)calculateInternalAWBMetadataForMIWB:(float)b bGain:(float)gain rSkinGain:(float)skinGain bSkinGain:(float)bSkinGain cct:(float)cct internalMetadata:(id)metadata
{
  metadataCopy = metadata;
  v43 = 0;
  v44 = 0;
  v42 = 0.0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  HIDWORD(v38) = 268439552;
  CAWBAFE::GetSensorCalGain(self->_AWBAlgorithmObj, &v39);
  CAWBAFE::GetNewCSensorCalGains(self->_AWBAlgorithmObj, &v38 + 3, &v38 + 2, cct, &v39);
  LOWORD(v10) = HIWORD(v38);
  LOWORD(v9) = WORD2(v38);
  CAWBAFE::ComputeHistWPFromChannelGains(self->_AWBAlgorithmObj, b, gain, &v44, &v44 + 1, v18, v19);
  LODWORD(v20) = 4.0;
  *&v21 = v10;
  v22 = ((skinGain * 4096.0) * 4.0) / v10;
  v23 = ((bSkinGain * 4096.0) * 4.0) / v9;
  CAWBAFE::ComputeHistWPFromChannelGains(self->_AWBAlgorithmObj, v22, v23, &v43, &v43 + 1, v20, v21);
  CAWBAFE::GetDaylightScore(self->_AWBAlgorithmObj, &v40);
  CAWBAFE::CalculateSkyWhitePoint(self->_AWBAlgorithmObj, cct, &v44, &v41);
  CAWBAFE::CalculateSkinWeightForSTF(self->_AWBAlgorithmObj, 0, &v44, &v43, &v40 + 1);
  if (metadataCopy)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:((v22 * 4096.0) + 0.5)];
    [metadataCopy setObject:v24 forKeyedSubscript:@"MIWBSkinNonComboRGain"];

    v25 = [MEMORY[0x1E696AD98] numberWithInt:((v23 * 4096.0) + 0.5)];
    [metadataCopy setObject:v25 forKeyedSubscript:@"MIWBSkinNonComboBGain"];

    v26 = [MEMORY[0x1E696AD98] numberWithInt:((*&v41 * 4096.0) + 0.5)];
    [metadataCopy setObject:v26 forKeyedSubscript:@"MIWBSkyRGain"];

    v27 = [MEMORY[0x1E696AD98] numberWithInt:((v42 * 4096.0) + 0.5)];
    [metadataCopy setObject:v27 forKeyedSubscript:@"MIWBSkyBGain"];

    LODWORD(v28) = HIDWORD(v40);
    v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
    [metadataCopy setObject:v29 forKeyedSubscript:@"MIWBSkinWeight"];

    LODWORD(v30) = v40;
    v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
    [metadataCopy setObject:v31 forKeyedSubscript:@"DaylightScore"];

    v32 = 0;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v36, v38, *&v39.var0, v40, v41, LODWORD(v42));
    v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v37);
  }

  return v32;
}

- (int)translateAWBGainsToSecondaryChannelID:(unsigned int)d[3] secondaryChannelID:(unsigned int)iD secondaryConfig:(SensorConfigAWBParams *)config secondaryAWBParams:(sSlaveCameraAWBParam *)params
{
  AWBAlgorithmObj = self->_AWBAlgorithmObj;
  if (AWBAlgorithmObj)
  {
    iDCopy = iD;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v11 = getFigCapturePlatformIdentifierSymbolLoc(void)::ptr;
    v20 = getFigCapturePlatformIdentifierSymbolLoc(void)::ptr;
    if (!getFigCapturePlatformIdentifierSymbolLoc(void)::ptr)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___ZL40getFigCapturePlatformIdentifierSymbolLocv_block_invoke;
      v16[3] = &unk_1E833AC48;
      v16[4] = &v17;
      ___ZL40getFigCapturePlatformIdentifierSymbolLocv_block_invoke(v16);
      v11 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (v11)
    {
      v12 = v11() > 11;
      (*(AWBAlgorithmObj->var0 + 5))(AWBAlgorithmObj, d, iDCopy, config, params, 0, v12);
      return 0;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"FigCapturePlatformID soft_FigCapturePlatformIdentifier()"];
      [currentHandler handleFailureInFunction:v15 file:@"AWBAlgorithm.mm" lineNumber:52 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }

  else
  {
    [AWBAlgorithm translateAWBGainsToSecondaryChannelID:v16 secondaryChannelID:? secondaryConfig:? secondaryAWBParams:?];
    return v16[0];
  }

  return result;
}

- (int)initTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ([parametersCopy count])
  {
    v7 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
    if ([v7 isEqual:*MEMORY[0x1E6990C80]] & 1) != 0 || (objc_msgSend(v7, "isEqual:", *MEMORY[0x1E6990C90]) & 1) != 0 || (objc_msgSend(v7, "isEqual:", *MEMORY[0x1E6990C98]))
    {
      v8 = 0;
      v9 = &lowLightWPBlendingTuningTable_RFCDefault;
      v10 = 1;
      v11 = &ccmStrengthTuningTable_RFCDefault;
      v12 = 16;
      v13 = &wpStableZoneControlTable_RFCDefault;
LABEL_8:
      CAWBAFE::SetFDAWBEnable(self->_AWBAlgorithmObj, 1);
      CAWBAFE::SetSpatialCCMEnable(self->_AWBAlgorithmObj, v8);
      CAWBAFE::SetFlickerAWBEnable(self->_AWBAlgorithmObj, v10);
      CAWBAFE::SetUnlockWPEnable(self->_AWBAlgorithmObj, 1);
      CAWBAFE::SetLowLightWPBlending(self->_AWBAlgorithmObj, *v9, v9 + 1, v9 + 9);
      CAWBAFE::SetCCMStrengthTuningTable(self->_AWBAlgorithmObj, *v11, v11 + 1, v11 + 9);
      CAWBAFE::SetCCMDesatForSkinEnable(self->_AWBAlgorithmObj, v10, v12);
      CAWBAFE::SetFaceMaskDetectionEnable(self->_AWBAlgorithmObj, 1);
      CAWBAFE::SetWPStableZoneControl(self->_AWBAlgorithmObj, v8, v13);
      CAWBAFE::SetFDAWBVersion(self->_AWBAlgorithmObj, 1u);
      v14 = 0;
      goto LABEL_9;
    }

    if ([v7 isEqual:*MEMORY[0x1E6990CA0]] & 1) != 0 || (objc_msgSend(v7, "isEqual:", *MEMORY[0x1E6990CA8]))
    {
      v12 = 0;
      v10 = 0;
      v8 = 1;
      v9 = &lowLightWPBlendingTuningTable_FFCDefault;
      v11 = &ccmStrengthTuningTable_FFCDefault;
      v13 = &wpStableZoneControlTable_FFCDefault;
      goto LABEL_8;
    }

    v17 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v3, v23, v26, v27, v28, v29, v30);
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v21, v24);
  }

  else
  {
    v19 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v3, v23, v26, v27, v28, v29, v30);
    v7 = 0;
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v22, v25);
  }

  v14 = v16;
LABEL_9:
  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return v14;
}

- (int)configFaceMetadata:(id)metadata awbParams:(id)params
{
  metadataCopy = metadata;
  paramsCopy = params;
  memset(v165, 0, 44);
  bzero(__src, 0x5F0uLL);
  v143 = metadataCopy;
  dict = [paramsCopy validRectInBufferCoords];
  regionOfInterestRectInBufferCoords = [paramsCopy regionOfInterestRectInBufferCoords];
  faceAssistedBehaviorMode = [paramsCopy faceAssistedBehaviorMode];
  v7 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v7;
  v161.origin = rect.origin;
  v161.size = v7;
  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v160.a = *MEMORY[0x1E695EFD0];
  *&v160.c = v9;
  *&v160.tx = *(MEMORY[0x1E695EFD0] + 32);
  v10 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991108]];
  intValue = [v10 intValue];

  v12 = faceAssistedBehaviorMode;
  if (!faceAssistedBehaviorMode)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v139, v119, v134, v135, v136, v137, v138);
    v12 = [MEMORY[0x1E696AD98] numberWithInt:0];
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, v106, v121);
  }

  v148 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue")}];

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (![metadataCopy count])
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
LABEL_91:
    v150 = 0;
    v86 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v107, v122);
    v149 = 0;
    goto LABEL_75;
  }

  if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    goto LABEL_91;
  }

  if (!regionOfInterestRectInBufferCoords)
  {
    goto LABEL_11;
  }

  if (!CGRectMakeWithDictionaryRepresentation(regionOfInterestRectInBufferCoords, &v161))
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    goto LABEL_91;
  }

  if (CGRectContainsRect(rect, v161))
  {
    rect = v161;
  }

  else
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, v108, v123);
  }

LABEL_11:
  [(GeometryUtilities *)metadataCopy getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:rect.origin.x validBufferRect:rect.origin.y, rect.size.width, rect.size.height];
  v160 = v155;
  v13 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  v149 = v13;
  if (v13 && ([v13 objectForKeyedSubscript:*MEMORY[0x1E6990E98]], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v142 = paramsCopy;
    v150 = v14;
    faceAssistedSkinGainsToMatch = [v14 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
    if ([faceAssistedSkinGainsToMatch count])
    {
      v16 = [faceAssistedSkinGainsToMatch sortedArrayUsingComparator:&__block_literal_global_0];
      v17 = v16;
      if (v16 && [v16 count])
      {
        v18 = 0;
        v141 = *MEMORY[0x1E69910D8];
        if (intValue == 2324)
        {
          v19 = v8;
        }

        else
        {
          v19 = &v160;
        }

        v140 = *MEMORY[0x1E6990F58];
        v20 = *MEMORY[0x1E6990FF8];
        v21 = *MEMORY[0x1E6990FD8];
        v22 = &v164;
        while (1)
        {
          v23 = [v17 count];
          v24 = 10;
          if (v23 < 0xA)
          {
            v24 = v23;
          }

          if (v24 <= v18)
          {
            goto LABEL_36;
          }

          LOBYTE(v151) = 0;
          v25 = [v17 objectAtIndexedSubscript:v18];
          v26 = v25;
          if (!v25)
          {
            goto LABEL_84;
          }

          [v25 cmi_cgRectForKey:v141 defaultValue:&v151 found:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
          if ((v151 & 1) == 0)
          {
            v86 = 0;
LABEL_85:

            goto LABEL_87;
          }

          v31 = *&v19->c;
          *&v155.a = *&v19->a;
          *&v155.c = v31;
          *&v155.tx = *&v19->tx;
          v166 = CGRectApplyAffineTransform(*&v27, &v155);
          x = v166.origin.x;
          y = v166.origin.y;
          width = v166.size.width;
          height = v166.size.height;
          v36 = rect.size.width;
          v37 = rect.size.height;
          if ([(NSNumber *)self->_digitalFlash intValue])
          {
            v40 = 5000;
          }

          else
          {
            v40 = 50000;
          }

          v38 = width * v36;
          v39 = height * v37;
          if (v40 >= (v38 * v39))
          {

LABEL_36:
            DWORD2(v165[1]) = v18;
            goto LABEL_37;
          }

          v41 = [v26 objectForKeyedSubscript:v140];
          v42 = v41;
          if (!v41)
          {
LABEL_84:
            LODWORD(v89) = 0;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
            v86 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, v105, v120);
            goto LABEL_85;
          }

          *(v22 - 29) = (x * v36);
          *(v22 - 28) = (y * v37);
          *(v22 - 27) = (width * v36);
          *(v22 - 26) = (height * v37);
          [v41 floatValue];
          *(v22 - 7) = v43;

          v44 = [v26 objectForKeyedSubscript:v20];
          v45 = [v26 objectForKeyedSubscript:v21];
          if (!v44)
          {
            break;
          }

          unsignedIntValue = [v44 unsignedIntValue];
          *v22 = *v22 & 0xFFFFFC00 | unsignedIntValue & 0x3FF;
          DWORD1(v165[2]) = DWORD1(v165[2]) & 0xFFFFE007 | (8 * (unsignedIntValue & 0x3FF));
          if (!v45)
          {
            break;
          }

          unsignedIntValue2 = [v45 unsignedIntValue];
          *v22 = *v22 & 0xFFF003FF | ((unsignedIntValue2 & 0x3FF) << 10);
          v22 += 38;
          LODWORD(v165[2]) = 0;
          DWORD1(v165[2]) = DWORD1(v165[2]) & 0xFF801FFF | ((unsignedIntValue2 & 0x3FF) << 13);

          ++v18;
          metadataCopy = v143;
        }

        LODWORD(v89) = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);

        v86 = 0;
        metadataCopy = v143;
LABEL_87:

        goto LABEL_78;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_37:

    paramsCopy = v142;
  }

  else
  {
    v150 = 0;
  }

  *&v165[1] = vmovn_s64(vcvtq_u64_f64(rect.size));
  LODWORD(v165[0]) = 0;
  if (CAWBAFE::GetFDAWBEnable(self->_AWBAlgorithmObj))
  {
    if (DWORD2(v165[1]))
    {
      CAWBAFE::SetFaceData(self->_AWBAlgorithmObj, v165, __src);
    }

    AWBAlgorithmObj = self->_AWBAlgorithmObj;
    v49 = [(NSNumber *)self->_digitalFlash intValue]!= 1 && CAWBAFE::GetFDAWBVersion(self->_AWBAlgorithmObj) == 1;
    CAWBAFE::SetSemanticAWBEnable(AWBAlgorithmObj, v49);
    if (!DWORD2(v165[1]) && CAWBAFE::GetFDAWBVersion(self->_AWBAlgorithmObj) != 1)
    {
      CAWBAFE::SetFDAWBEnable(self->_AWBAlgorithmObj, 0);
    }
  }

  if ([v148 intValue] != 3)
  {
    v86 = 0;
LABEL_75:
    v87 = MEMORY[0x1E695FF58];
    goto LABEL_79;
  }

  v142 = paramsCopy;
  faceAssistedSkinGainsToMatch = [paramsCopy faceAssistedSkinGainsToMatch];
  if (!faceAssistedSkinGainsToMatch)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v109, v124);
  }

  if (![faceAssistedSkinGainsToMatch count])
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v95, v110, v125);
  }

  v158 = 0;
  v159 = 0;
  v50 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpRgLogRatio"];

  if (!v50)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v111, v126);
  }

  v51 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpRgLogRatio"];
  [v51 floatValue];
  v53 = v52;
  *&v159 = v52;

  v54 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpBgLogRatio"];

  if (!v54)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v112, v127);
  }

  v55 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpBgLogRatio"];
  [v55 floatValue];
  v57 = v56;
  *(&v159 + 1) = v56;

  v58 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpSkinRgLogRatio"];

  if (!v58)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v98, v113, v128);
  }

  v59 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpSkinRgLogRatio"];
  [v59 floatValue];
  v61 = v60;
  *&v158 = v60;

  v62 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpSkinBgLogRatio"];

  if (!v62)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v99, v114, v129);
  }

  v63 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpSkinBgLogRatio"];
  [v63 floatValue];
  v65 = v64;
  *(&v158 + 1) = v64;

  v66 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"continuousFDTimes"];

  if (!v66)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v100, v115, v130);
  }

  v67 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"continuousFDTimes"];
  intValue2 = [v67 intValue];

  v69 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"skinColorSampleNum"];

  if (!v69)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v101, v116, v131);
  }

  v70 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"skinColorSampleNum"];
  intValue3 = [v70 intValue];

  v72 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"skinColorSampleVariance"];

  if (!v72)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, v117, v132);
  }

  v73 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"skinColorSampleVariance"];
  [v73 floatValue];
  v75 = v74;

  v76 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"minDistSkinToWhiteMapping"];

  if (!v76)
  {
    LODWORD(v89) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v139, v119, v134, v135, v136, v137, v138);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v103, v118, v133);
  }

  v77 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"minDistSkinToWhiteMapping"];
  [v77 floatValue];
  v79 = v78;

  v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wbLogRatios=[%.3f, %.3f], wbSkinLogRatios=[%.3f, %.3f], continuousFDTimes=%d, skinColorSampleNum=%d, skinColorSampleVariance=%.3f, minDistSkinToWhiteMapping=%.3f", v53, v57, v61, v65, intValue2, intValue3, v75, v79];
  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wblr=[%d, %d], wbslr=[%d, %d], cfdt=%d, scsn=%d, scsv=%d, mdstwm=%d", v53 != 0.0, v57 != 0.0, v61 != 0.0, v65 != 0.0, intValue2 != 0, intValue3 != 0, v75 != 0.0, v79 != 0.0];

  if (dword_1EDD78228)
  {
    v157 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v83 = v157;
    v84 = type;
    if (os_log_type_enabled(v82, type))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 0xFFFFFFFE;
    }

    if (v85)
    {
      v151 = 136315394;
      v152 = "[AWBAlgorithm configFaceMetadata:awbParams:]";
      v153 = 2112;
      v154 = v81;
      LODWORD(v104) = 22;
      _os_log_send_and_compose_impl(v85, 0, &v155, 128, &dword_1C92CA000, v82, v84, "<<<< AWBAlgorithm >>>> %s: fabm:{%@}", &v151, v104);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CAWBAFE::SetFaceAssistedAWBResultsForMatchProvidedSkinGains(self->_AWBAlgorithmObj, &v159, &v158, intValue3, intValue2, v75, v79);

  v86 = 0;
LABEL_78:
  v87 = MEMORY[0x1E695FF58];

  paramsCopy = v142;
LABEL_79:
  if (*v87 == 1)
  {
    kdebug_trace();
  }

  return v86;
}

uint64_t __45__AWBAlgorithm_configFaceMetadata_awbParams___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (int)configFlickerDetectionMetadata:(id)metadata moduleConfig:(id)config
{
  metadataCopy = metadata;
  configCopy = config;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v50 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E69910A0]];
  v7 = [v50 objectForKeyedSubscript:*MEMORY[0x1E6991198]];
  v8 = v7;
  if (v7)
  {
    self->_flickerDetectionStatus = [v7 intValue];
  }

  if (configCopy)
  {
    v9 = [configCopy objectForKeyedSubscript:@"AutoWhiteBalance"];
    if (!v9)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v43, metadataCopy, configCopy, v50, v51, v52);
      v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v41, v45);
      goto LABEL_29;
    }

    v44 = v9;
    v10 = [v9 objectForKeyedSubscript:@"DaylightProjectionPoint"];
    v11 = malloc_type_malloc(4 * [v10 count], 0x100004052888210uLL);
    if (!v11)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v44, metadataCopy, configCopy, v50, v51, v52);
      v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v42, v46);

      goto LABEL_29;
    }

    for (i = 0; [v10 count] > i; ++i)
    {
      v13 = [v10 objectAtIndexedSubscript:i];
      v14 = [v13 objectForKeyedSubscript:@"X"];
      v15 = &v11[4 * i];
      *v15 = [v14 intValue];

      v16 = [v10 objectAtIndexedSubscript:i];
      v17 = [v16 objectForKeyedSubscript:@"Y"];
      *(v15 + 1) = [v17 intValue];
    }

    CAWBAFE::SetDaylightProjectionPoint(self->_AWBAlgorithmObj, [v10 count], v11);
    free(v11);
  }

  v18 = [v50 objectForKeyedSubscript:*MEMORY[0x1E6991190]];

  if (v18)
  {
    v19 = MEMORY[0x1E696AD98];
    [v18 doubleValue];
    v20 = [v19 numberWithDouble:?];

    [v20 doubleValue];
    self->_flickerDetectionIRRatio = vcvtd_n_s64_f64(v21, 0x10uLL);
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E6991180];
  v24 = [v50 objectForKeyedSubscript:*MEMORY[0x1E6991180]];
  v25 = [v24 objectAtIndex:0];
  v26 = *MEMORY[0x1E6991178];
  v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E6991178]];

  if (v27)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v27, "intValue")}];
    self->_flickerConfidence[0] = [v28 intValue];
  }

  v29 = [v50 objectForKeyedSubscript:v23];
  v30 = [v29 objectAtIndex:1];
  v31 = [v30 objectForKeyedSubscript:v26];

  if (v31)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v31, "intValue")}];
    self->_flickerConfidence[1] = [v32 intValue];
  }

  v33 = [v50 objectForKeyedSubscript:*MEMORY[0x1E6991188]];

  if (v33)
  {
    v34 = MEMORY[0x1E696AD98];
    [v33 doubleValue];
    v35 = [v34 numberWithDouble:?];
    [v35 doubleValue];
    *&v36 = v36;
    self->_photometerAWBDebug_externalLux = *&v36;
  }

  if (CAWBAFE::GetFlickerAWBEnable(self->_AWBAlgorithmObj))
  {
    v37 = 3;
    do
    {
      if (v37 != 3)
      {
        CAWBAFE::updatePhotometerDetectionOutput(self->_AWBAlgorithmObj, &self->_sMetaData.ae);
      }

      CAWBAFE::SetFlickerDetectionResult(self->_AWBAlgorithmObj, self->_flickerDetectionStatus, 0.0, 0.0, self->_photometerAWBDebug_externalLux, 0, self->_flickerDetectionIRRatio, self->_flickerConfidence[0], 0, self->_flickerConfidence[1], 1);
      --v37;
    }

    while (v37);
  }

  else
  {
    v37 = 0;
  }

  v8 = v33;
LABEL_29:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v37;
}

- (int)configFlashRFCMetadata:(id)metadata cameraInfo:(id)info moduleConfig:(id)config
{
  metadataCopy = metadata;
  infoCopy = info;
  configCopy = config;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v7 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991028]];
  bOOLValue = [v7 BOOLValue];

  if (!bOOLValue)
  {
    v118 = 0;
    v114 = 0;
    v115 = 0;
    goto LABEL_49;
  }

  self->_isNominalStrobe = 1;
  v114 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991120]];
  v9 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991128]];
  v115 = v9;
  if (v114)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [v114 floatValue];
    v12 = v11;
    [v115 floatValue];
    self->_flashRatio = 1.0 - (v12 / v13);
  }

  if (infoCopy)
  {
    v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69911A0]];
    v15 = v14;
    if (v14)
    {
      bytes = [v14 bytes];
      self->_pmLEDCalibData.isvalid = 1;
      self->_ledType = 10;
      v17 = *bytes;
      if (*bytes)
      {
        if (v17 == 1)
        {
          self->_pmLEDCalibData.programID = 0;
          self->_pmLEDCalibData.version = 3;
          self->_pmLEDCalibData.ledWidePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledWidePtrn_bg = *(bytes + 8);
        }

        else
        {
          if (v17 != 2)
          {
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v112, infoCopy, v114, v115);
            v88 = 0;
            v67 = 0;
            v69 = 0;
            v87 = -1;
            v118 = v15;
            goto LABEL_67;
          }

          self->_pmLEDCalibData.programID = 1;
          self->_pmLEDCalibData.version = 3;
          self->_pmLEDCalibData.ledWidePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledWidePtrn_bg = *(bytes + 8);
          self->_pmLEDCalibData.ledTelePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledTelePtrn_bg = *(bytes + 8);
          self->_pmLEDCalibData.ledSWidePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledSWidePtrn_bg = *(bytes + 8);
        }
      }

      else
      {
        self->_pmLEDCalibData.version = 2;
        self->_pmLEDCalibData.cw_rg = *(bytes + 4);
        self->_pmLEDCalibData.cw_bg = *(bytes + 8);
        self->_pmLEDCalibData.ww_rg = *(bytes + 12);
        self->_pmLEDCalibData.ww_bg = *(bytes + 16);
      }

      v118 = v15;
    }

    else
    {
      v118 = 0;
      self->_pmLEDCalibData.isvalid = 0;
    }
  }

  else
  {
    v118 = 0;
  }

  if (!configCopy)
  {
LABEL_49:
    v66 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991158]];
    v67 = v66;
    if (!v66)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v112, infoCopy, v114, v115);
      v88 = 0;
      v87 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v100, v108);
      v67 = 0;
      v69 = 0;
      goto LABEL_67;
    }

    self->_sMetaData.ae.gainDigiAE = vcvtms_s32_f32([v66 intValue] / 1.0159);
    v68 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];
    v69 = v68;
    if (v68)
    {
      [v68 floatValue];
      v71 = vcvts_n_s32_f32(v70, 8uLL);
    }

    else
    {
      v71 = 1;
    }

    selfCopy2 = self;
    self->_sMetaData.ae.ev0Ratio = v71;
    if (configCopy)
    {
      v73 = [configCopy objectForKeyedSubscript:@"Exposure"];
      v74 = [v73 objectForKeyedSubscript:@"LuxModel"];
      v75 = [v74 objectForKeyedSubscript:@"Scale"];

      if (!v75 || ([configCopy objectForKeyedSubscript:@"Exposure"], v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "objectForKeyedSubscript:", @"LuxModel"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "objectForKeyedSubscript:", @"Scale"), v78 = objc_claimAutoreleasedReturnValue(), self->_sMetaData.ae.luxCalcParams.scale = objc_msgSend(v78, "intValue"), v78, v77, v76, objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "objectForKeyedSubscript:", @"LuxModel"), v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v80, "objectForKeyedSubscript:", @"ScaleShift"), v81 = objc_claimAutoreleasedReturnValue(), v81, v80, v79, !v81))
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v112, infoCopy, v114, v115);
        v88 = 0;
        v87 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v95, v101, v109);
        goto LABEL_67;
      }

      v82 = [configCopy objectForKeyedSubscript:@"Exposure"];
      v83 = [v82 objectForKeyedSubscript:@"LuxModel"];
      v84 = [v83 objectForKeyedSubscript:@"ScaleShift"];
      selfCopy2 = self;
      self->_sMetaData.ae.luxCalcParams.scaleShift = [v84 intValue];
    }

    selfCopy2->_sMetaData.ae.overflowDGain = 256;
    if (infoCopy && ([infoCopy objectForKeyedSubscript:*MEMORY[0x1E69911A8]], v85 = objc_claimAutoreleasedReturnValue(), (v86 = v85) != 0))
    {
      v87 = 0;
      self->_sensorClockFreqHz = [v85 unsignedIntValue];
      v88 = v86;
    }

    else
    {
      v88 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v112, infoCopy, v114, v115);
      v87 = 0;
    }

    goto LABEL_67;
  }

  v18 = [configCopy objectForKeyedSubscript:@"AutoWhiteBalance"];
  v103 = v18;
  if (v18)
  {
    v19 = [v18 objectForKeyedSubscript:@"Flash"];
    v20 = [v19 objectForKeyedSubscript:@"Projection"];

    for (i = 0; i != 9; ++i)
    {
      v22 = [v20 objectForKeyedSubscript:@"MatrixRGBToXYZ"];
      v23 = [v22 objectAtIndexedSubscript:i];

      if (!v23 || ([v20 objectForKeyedSubscript:@"MatrixRGBToXYZ"], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectAtIndexedSubscript:", i), v25 = objc_claimAutoreleasedReturnValue(), v121[i] = objc_msgSend(v25, "intValue"), v25, v24, objc_msgSend(v20, "objectForKeyedSubscript:", @"MatrixXYZToRGB"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "objectAtIndexedSubscript:", i), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, !v27))
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v112, infoCopy, v114, v115);
LABEL_71:
        v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, v99, v107);
        goto LABEL_62;
      }

      v28 = [v20 objectForKeyedSubscript:@"MatrixXYZToRGB"];
      v29 = [v28 objectAtIndexedSubscript:i];
      v121[i + 9] = [v29 intValue];
    }

    v30 = 0;
    v31 = &v122;
LABEL_28:
    v32 = 0;
    while (1)
    {
      v33 = [v20 objectForKeyedSubscript:@"MatrixRGBToXYZ"];
      v34 = [v33 objectAtIndexedSubscript:v30];

      if (!v34)
      {
        break;
      }

      v35 = [v20 objectForKeyedSubscript:@"CCMModel"];
      v36 = [v35 objectAtIndexedSubscript:v30];
      v37 = [v36 objectAtIndexedSubscript:v32];
      v31[v32] = [v37 intValue];

      if (++v32 == 5)
      {
        ++v30;
        v31 += 5;
        if (v30 != 6)
        {
          goto LABEL_28;
        }

        v38 = 0;
        v39 = &v123;
LABEL_33:
        v40 = [v20 objectForKeyedSubscript:@"BoundingEllipsesModel"];
        v41 = [v40 objectAtIndexedSubscript:v38];

        if (v41)
        {
          v42 = 0;
          while (1)
          {
            v43 = [v20 objectForKeyedSubscript:@"BoundingEllipsesModel"];
            v44 = [v43 objectAtIndexedSubscript:v38];
            v45 = [v44 objectAtIndexedSubscript:v42];

            if (!v45)
            {
              break;
            }

            v46 = [v20 objectForKeyedSubscript:@"BoundingEllipsesModel"];
            v47 = [v46 objectAtIndexedSubscript:v38];
            v48 = [v47 objectAtIndexedSubscript:v42];
            v39[v42] = [v48 intValue];

            if (++v42 == 6)
            {
              ++v38;
              v39 += 6;
              if (v38 != 6)
              {
                goto LABEL_33;
              }

              v49 = 0;
              v112 = v124;
              v120 = v125;
              do
              {
                v50 = [&unk_1F48E6168 objectAtIndexedSubscript:v49];
                v51 = [v20 objectForKeyedSubscript:v50];

                if (!v51)
                {
LABEL_64:
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v124, infoCopy, v114, v115);
                  v87 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v98, v106);

                  goto LABEL_65;
                }

                *&v124[26 * v49] = [v51 count];
                v52 = v120;
                for (j = 175; [v51 count] > (j - 175); ++j)
                {
                  v54 = [v51 objectAtIndexedSubscript:j - 175];
                  v55 = [v54 objectForKeyedSubscript:@"Index"];

                  if (!v55)
                  {
                    goto LABEL_64;
                  }

                  v56 = [v51 objectAtIndexedSubscript:j - 175];
                  v57 = [v56 objectForKeyedSubscript:@"Index"];
                  *v52 = [v57 intValue];

                  v58 = [v51 objectAtIndexedSubscript:j - 175];
                  v59 = [v58 objectForKeyedSubscript:@"Weight"];

                  if (!v59)
                  {
                    goto LABEL_64;
                  }

                  v60 = [v51 objectAtIndexedSubscript:j - 175];
                  v61 = [v60 objectForKeyedSubscript:@"Weight"];
                  v52[6] = [v61 intValue];

                  ++v52;
                }

                ++v49;
                v120 += 26;
              }

              while (v49 != 4);
              v62 = [v20 objectForKeyedSubscript:@"UseQuantileLuxLevels"];

              if (v62)
              {
                v63 = [v20 objectForKeyedSubscript:@"UseQuantileLuxLevels"];
                v125[102] = [v63 intValue];

                v64 = [v20 objectForKeyedSubscript:@"UseFlashCCMMixing"];

                if (v64)
                {
                  v65 = [v20 objectForKeyedSubscript:@"UseFlashCCMMixing"];
                  v125[103] = [v65 intValue];

                  CAWBAFE::SetFlashProjectionConfig(self->_AWBAlgorithmObj, v121);
                  goto LABEL_49;
                }
              }

              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v124, infoCopy, v114, v115);
              goto LABEL_71;
            }
          }
        }

        break;
      }
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, v103, v111, v112, infoCopy, v114, v115);
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, v97, v104);
LABEL_62:
    v87 = v89;
LABEL_65:
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v111, 0, v111, v112, infoCopy, v114, v115);
    v87 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v102, v110);
  }

  v88 = 0;
  v67 = 0;
  v69 = 0;
LABEL_67:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v87;
}

- (int)configFallbackMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  self->_fallbackGains.validAWBData = 1;
  v7 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F20]];
  awbRGain = self->_fallbackGains.awbRGain;
  self->_fallbackGains.awbRGain = v7;

  if (!self->_fallbackGains.awbRGain)
  {
    v21 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v3, v22, v23, v24, v25, v26, v27);
    self->_fallbackGains.validAWBData = 0;
  }

  v9 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F18]];
  awbGGain = self->_fallbackGains.awbGGain;
  self->_fallbackGains.awbGGain = v9;

  if (!self->_fallbackGains.awbGGain)
  {
    LODWORD(v20) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v3, v22, v23, v24, v25, v26, v27);
    self->_fallbackGains.validAWBData = 0;
  }

  v11 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EE0]];
  awbBGain = self->_fallbackGains.awbBGain;
  self->_fallbackGains.awbBGain = v11;

  if (!self->_fallbackGains.awbBGain)
  {
    LODWORD(v20) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v3, v22, v23, v24, v25, v26, v27);
    self->_fallbackGains.validAWBData = 0;
  }

  v13 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];
  awbComboRGain = self->_fallbackGains.awbComboRGain;
  self->_fallbackGains.awbComboRGain = v13;

  if (!self->_fallbackGains.awbComboRGain)
  {
    LODWORD(v20) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v3, v22, v23, v24, v25, v26, v27);
    self->_fallbackGains.validAWBData = 0;
  }

  v15 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EF0]];
  awbComboGGain = self->_fallbackGains.awbComboGGain;
  self->_fallbackGains.awbComboGGain = v15;

  if (!self->_fallbackGains.awbComboGGain)
  {
    LODWORD(v20) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v3, v22, v23, v24, v25, v26, v27);
    self->_fallbackGains.validAWBData = 0;
  }

  v17 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];
  awbComboBGain = self->_fallbackGains.awbComboBGain;
  self->_fallbackGains.awbComboBGain = v17;

  if (!self->_fallbackGains.awbComboBGain)
  {
    LODWORD(v20) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v3, v22, v23, v24, v25, v26, v27);
    self->_fallbackGains.validAWBData = 0;
  }

  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (int)configPortTypeMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
  if (([v5 isEqual:*MEMORY[0x1E6990CA0]] & 1) != 0 || objc_msgSend(v5, "isEqual:", *MEMORY[0x1E6990CA8]))
  {
    v6 = 2;
  }

  else if ([v5 isEqual:*MEMORY[0x1E6990C90]])
  {
    v6 = 4;
  }

  else
  {
    if (![v5 isEqual:*MEMORY[0x1E6990C98]])
    {
      self->_sMetaData.channel = 0;
      goto LABEL_5;
    }

    v6 = 1;
  }

  self->_sMetaData.channel = v6;
LABEL_5:

  return 0;
}

+ (int)doAWBConfigLoad:(id)load to:(id)to
{
  loadCopy = load;
  toCopy = to;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pointerValue = [toCopy pointerValue];
  if (!loadCopy || !pointerValue)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
    v219 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v232 = 0;
    v233 = 0;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v234 = 0;
LABEL_84:
    v170 = 0;
    goto LABEL_85;
  }

  v5 = [loadCopy objectForKeyedSubscript:@"Histogram"];
  v6 = [v5 objectForKeyedSubscript:@"WeightMasks"];

  v239 = v6;
  v7 = malloc_type_malloc(1026 * [v6 count], 0x100004040BEE09CuLL);
  for (i = 0; ; i = v9 + 1)
  {
    v9 = i;
    if ([v6 count] <= i)
    {
      break;
    }

    v10 = [v6 objectAtIndexedSubscript:i];
    v11 = [v10 objectForKeyedSubscript:@"Lux"];
    v12 = &v7[513 * i + 1];
    v7[513 * v9] = [v11 intValue];

    for (j = 0; j != 1024; ++j)
    {
      v14 = [v6 objectAtIndexedSubscript:v9];
      v15 = [v14 objectForKeyedSubscript:@"WeightMask"];
      v16 = [v15 objectAtIndexedSubscript:j];
      *(v12 + j) = [v16 intValue];
    }
  }

  CAWBAFE::SetHistogramWeight(pointerValue, [v6 count], v7);
  free(v7);
  v237 = [loadCopy objectForKeyedSubscript:@"CSC"];
  if (!v237)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
    v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, v188, v204);
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v232 = 0;
    v233 = 0;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v234 = 0;
    v219 = 0;
    goto LABEL_85;
  }

  v17 = 0;
  v18 = &v257;
  do
  {
    v19 = [v237 objectForKeyedSubscript:@"CCMCoef"];
    v20 = [v19 objectAtIndexedSubscript:v17];
    v18->var0[0] = [v20 intValue];

    v21 = [v237 objectForKeyedSubscript:@"CSCCoef"];
    v22 = [v21 objectAtIndexedSubscript:v17];
    v18->var1[0] = [v22 intValue];

    ++v17;
    v18 = (v18 + 2);
  }

  while (v17 != 9);
  v23 = 0;
  var4 = v257.var4;
  do
  {
    v25 = [v237 objectForKeyedSubscript:@"CSCMax"];
    v26 = [v25 objectAtIndexedSubscript:v23];
    *var4 = [v26 intValue];

    v27 = [v237 objectForKeyedSubscript:@"CSCMin"];
    v28 = [v27 objectAtIndexedSubscript:v23];
    *(var4 - 3) = [v28 intValue];

    v29 = [v237 objectForKeyedSubscript:@"CSCOffset"];
    v30 = [v29 objectAtIndexedSubscript:v23];
    *(var4 - 6) = [v30 intValue];

    ++v23;
    ++var4;
  }

  while (v23 != 3);
  v257.var6 = 1;
  v31 = [v237 objectForKeyedSubscript:@"CSCChromaScale0"];
  v257.var5[0] = [v31 intValue];

  v32 = [v237 objectForKeyedSubscript:@"CSCChromaScale1"];
  v257.var5[1] = [v32 intValue];

  v33 = [loadCopy objectForKeyedSubscript:{@"Histogram", CAWBAFE::UpdateCSCConfig(pointerValue, &v257).n128_f64[0]}];
  v34 = [v33 objectForKeyedSubscript:@"Config"];

  v232 = v34;
  if (!v34)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
    v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v174, v189, v205);
    v219 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v232 = 0;
LABEL_93:
    v227 = 0;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v236 = 0;
    v238 = 0;
    v233 = 0;
    v234 = 0;
    v231 = 0;
    goto LABEL_85;
  }

  for (k = 0; k != 15; ++k)
  {
    v36 = [v34 objectForKeyedSubscript:@"YThd"];
    v37 = [v36 objectAtIndexedSubscript:k];
    v256.var0[k] = [v37 intValue];
  }

  for (m = 0; m != 16; ++m)
  {
    v39 = [v34 objectForKeyedSubscript:@"Count"];
    v40 = [v39 objectAtIndexedSubscript:m];
    v256.var1[m] = [v40 intValue];
  }

  v41 = [v34 objectForKeyedSubscript:@"C1Offset"];
  v256.var2 = [v41 intValue];

  v42 = [v34 objectForKeyedSubscript:@"C1Scale"];
  v256.var3 = [v42 intValue];

  v43 = [v34 objectForKeyedSubscript:@"C2Offset"];
  v256.var4 = [v43 intValue];

  v44 = [v34 objectForKeyedSubscript:@"C2Scale"];
  v256.var5 = [v44 intValue];

  v45 = [loadCopy objectForKeyedSubscript:{@"ProjectionPoint", CAWBAFE::UpdateColorHistConfig(pointerValue, &v256).n128_f64[0]}];
  if (!v45)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
    v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v175, v190, v206);
    v219 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    goto LABEL_93;
  }

  v233 = v45;
  v46 = malloc_type_malloc(4 * [v45 count], 0x100004052888210uLL);
  for (n = 0; ; n = v48 + 1)
  {
    v48 = n;
    if ([v233 count] <= n)
    {
      break;
    }

    v49 = [v233 objectAtIndexedSubscript:n];
    v50 = [v49 objectForKeyedSubscript:@"X"];
    v51 = &v46[4 * n];
    *v51 = [v50 intValue];

    v52 = [v233 objectAtIndexedSubscript:v48];
    v53 = [v52 objectForKeyedSubscript:@"Y"];
    *(v51 + 1) = [v53 intValue];
  }

  CAWBAFE::SetProjectionPoint(pointerValue, [v233 count], v46);
  free(v46);
  v54 = [loadCopy objectForKeyedSubscript:@"Histogram"];
  v55 = [v54 objectForKeyedSubscript:@"XToCCT"];

  if (!v55)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
    v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v176, v191, v207);
    v219 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v236 = 0;
    v238 = 0;
    v234 = 0;
    goto LABEL_85;
  }

  v234 = v55;
  v56 = malloc_type_malloc(6 * [v55 count], 0x1000040274DC3F3uLL);
  for (ii = 0; [v55 count] > ii; ++ii)
  {
    v58 = [v55 objectAtIndexedSubscript:ii];
    v59 = [v58 objectForKeyedSubscript:@"X"];
    v60 = &v56[6 * ii];
    *v60 = [v59 intValue];

    v61 = [v55 objectAtIndexedSubscript:ii];
    v62 = [v61 objectForKeyedSubscript:@"Y"];
    *(v60 + 1) = [v62 intValue];

    v63 = [v55 objectAtIndexedSubscript:ii];
    v64 = [v63 objectForKeyedSubscript:@"CCT"];
    *(v60 + 2) = [v64 intValue];
  }

  CAWBAFE::SetHistogramXToCCTLut(pointerValue, [v55 count], v56);
  free(v56);
  v231 = [loadCopy objectForKeyedSubscript:@"AWBSkinToWhiteLut"];
  if (v231 && [v231 count] <= 0x96)
  {
    v65 = malloc_type_malloc(8 * [v231 count], 0x100004000313F17uLL);
    if (!v65)
    {
LABEL_105:
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
      v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v186, v201, v217);
      v219 = 0;
      v224 = 0;
      v225 = 0;
      v226 = 0;
      v227 = 0;
      v228 = 0;
      v229 = 0;
      v230 = 0;
      v236 = 0;
      v238 = 0;
      goto LABEL_85;
    }

    for (jj = 0; [v231 count] > jj; ++jj)
    {
      v67 = [v231 objectAtIndexedSubscript:jj];
      v68 = [v67 objectForKeyedSubscript:@"Xs"];
      v69 = &v65[8 * jj];
      *(v69 + 2) = [v68 unsignedIntValue];

      v70 = [v231 objectAtIndexedSubscript:jj];
      v71 = [v70 objectForKeyedSubscript:@"Xw"];
      *v69 = [v71 unsignedIntValue];

      v72 = [v231 objectAtIndexedSubscript:jj];
      v73 = [v72 objectForKeyedSubscript:@"Ys"];
      *(v69 + 3) = [v73 unsignedIntValue];

      v74 = [v231 objectAtIndexedSubscript:jj];
      v75 = [v74 objectForKeyedSubscript:@"Yw"];
      *(v69 + 1) = [v75 unsignedIntValue];
    }

    CAWBAFE::SetSkinToWhiteLut(pointerValue, [v231 count], v65);
    free(v65);
  }

  v238 = [loadCopy objectForKeyedSubscript:@"CCM"];
  if (!v238)
  {
    goto LABEL_105;
  }

  v76 = 0;
  v77 = v253;
  do
  {
    v78 = [v238 objectForKeyedSubscript:@"Offset"];
    v79 = [v78 objectAtIndexedSubscript:v76];
    *(v77 - 27) = [v79 intValue];

    v80 = [v238 objectForKeyedSubscript:@"X1stOrder"];
    v81 = [v80 objectAtIndexedSubscript:v76];
    *(v77 - 18) = [v81 intValue];

    v82 = [v238 objectForKeyedSubscript:@"Y1stOrder"];
    v83 = [v82 objectAtIndexedSubscript:v76];
    *(v77 - 9) = [v83 intValue];

    v84 = [v238 objectForKeyedSubscript:@"X2ndOrder"];
    v85 = [v84 objectAtIndexedSubscript:v76];
    *v77 = [v85 intValue];

    v86 = [v238 objectForKeyedSubscript:@"Y2ndOrder"];
    v87 = [v86 objectAtIndexedSubscript:v76];
    v77[9] = [v87 intValue];

    v88 = [v238 objectForKeyedSubscript:@"LuxFactor"];
    v89 = [v88 objectAtIndexedSubscript:v76];
    v77[18] = [v89 intValue];

    ++v76;
    ++v77;
  }

  while (v76 != 9);
  v90 = [v238 objectForKeyedSubscript:{@"CCMLuxClipLevel", CAWBAFE::SetCCM2DCoefficient(pointerValue, v250, v251, v252, v253, v254, &v255).n128_f64[0]}];
  CAWBAFE::SetCCMLuxClip(pointerValue, [v90 intValue]);

  v91 = [loadCopy objectForKeyedSubscript:@"PostTint"];
  if (v91)
  {
    v236 = v91;
    v92 = malloc_type_malloc(8 * [v91 count], 0x100004000313F17uLL);
    for (kk = 0; ; kk = v94 + 1)
    {
      v94 = kk;
      if ([v236 count] <= kk)
      {
        break;
      }

      v95 = [v236 objectAtIndexedSubscript:kk];
      v96 = [v95 objectForKeyedSubscript:@"Offset"];
      v97 = &v92[8 * kk];
      *v97 = [v96 intValue];

      v98 = [v236 objectAtIndexedSubscript:v94];
      v99 = [v98 objectForKeyedSubscript:@"KEst"];
      *(v97 + 1) = [v99 intValue];

      v100 = [v236 objectAtIndexedSubscript:v94];
      v101 = [v100 objectForKeyedSubscript:@"KHist"];
      *(v97 + 2) = [v101 intValue];

      v102 = [v236 objectAtIndexedSubscript:v94];
      v103 = [v102 objectForKeyedSubscript:@"HClip"];
      *(v97 + 3) = [v103 intValue];
    }

    CAWBAFE::SetPostTintParam(pointerValue, [v236 count], v92);
    free(v92);
    v104 = [loadCopy objectForKeyedSubscript:@"MixLighting"];
    v105 = [v104 objectForKeyedSubscript:@"XCoordinate"];

    v230 = v105;
    if (v105)
    {
      for (mm = 0; mm != 3; ++mm)
      {
        v107 = [v230 objectAtIndexedSubscript:mm];
        v249[mm] = [v107 intValue];
      }

      CAWBAFE::SetMixLightingXLoc(pointerValue, v249);
      v108 = [loadCopy objectForKeyedSubscript:@"MixLighting"];
      v109 = [v108 objectForKeyedSubscript:@"CCM"];

      v229 = v109;
      if (v109)
      {
        for (nn = 0; nn != 9; ++nn)
        {
          v111 = [v229 objectAtIndexedSubscript:nn];
          v248.n128_u16[nn] = [v111 intValue];
        }

        v228 = [loadCopy objectForKeyedSubscript:{@"YThreshold", CAWBAFE::SetMixLightingCCM(pointerValue, &v248).n128_f64[0]}];
        if (v228)
        {
          v112 = 0;
          v113 = 1;
          do
          {
            v114 = v113;
            v115 = [v228 objectAtIndexedSubscript:v112];
            v247[v112] = [v115 intValue];

            v113 = 0;
            v112 = 1;
          }

          while ((v114 & 1) != 0);
          CAWBAFE::SetTileStatsYThreshold(pointerValue, v247);
          v227 = [loadCopy objectForKeyedSubscript:@"RatioSpace2ndGainThreshold"];
          if (v227)
          {
            v116 = 0;
            v117 = 1;
            do
            {
              v118 = v117;
              v119 = [v227 objectAtIndexedSubscript:v116];
              v246[v116] = [v119 intValue];

              v117 = 0;
              v116 = 1;
            }

            while ((v118 & 1) != 0);
            CAWBAFE::SetRatioSpace2ndGainThreshold(pointerValue, v246);
            v120 = [loadCopy objectForKeyedSubscript:@"Histogram"];
            v121 = [v120 objectForKeyedSubscript:@"TrimFilterV"];

            v226 = v121;
            if (v121)
            {
              for (i1 = 0; i1 != 13; ++i1)
              {
                v123 = [v226 objectAtIndexedSubscript:i1];
                v245[i1] = [v123 intValue];
              }

              v124 = [loadCopy objectForKeyedSubscript:{@"Histogram", CAWBAFE::SetHistogramTrimFilterV(pointerValue, v245).n128_f64[0]}];
              v125 = [v124 objectForKeyedSubscript:@"TrimFilterH"];

              v225 = v125;
              if (v125)
              {
                for (i2 = 0; i2 != 3; ++i2)
                {
                  v127 = [v225 objectAtIndexedSubscript:i2];
                  v244[i2] = [v127 intValue];
                }

                CAWBAFE::SetHistogramTrimFilterH(pointerValue, v244);
                v128 = [loadCopy objectForKeyedSubscript:@"Histogram"];
                v129 = [v128 objectForKeyedSubscript:@"TrimScaleProfile"];

                v224 = v129;
                if (v129)
                {
                  for (i3 = 0; i3 != 32; ++i3)
                  {
                    v131 = [v224 objectAtIndexedSubscript:i3];
                    v243[i3] = [v131 intValue];
                  }

                  v132 = [loadCopy objectForKeyedSubscript:{@"Scheme", CAWBAFE::SetHistogramTrimScaleProfile(pointerValue, v243).n128_f64[0]}];
                  v133 = v132;
                  if (v132)
                  {
                    CAWBAFE::SetScheme(pointerValue, [v132 isEqualToString:@"2DHistogram"]);
                    v219 = v133;
                    memset(v242, 0, sizeof(v242));
                    v241 = 0u;
                    v134 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                    [v134 count];

                    for (i4 = 0; ; i4 = v138 + 1)
                    {
                      v136 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                      v137 = [v136 count];
                      v138 = i4;

                      if (v137 <= i4)
                      {
                        break;
                      }

                      v139 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                      v140 = [v139 objectAtIndexedSubscript:i4];

                      if (!v140)
                      {
                        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v219, toCopy, pointerValue, &v241 + 4, v242);
                        v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v172, v187, v203);
                        goto LABEL_85;
                      }

                      v141 = 0;
                      v142 = 28 * i4;
                      v143 = &v241 + v142 + 4;
                      v144 = v242 + v142;
                      do
                      {
                        v145 = [v140 objectForKeyedSubscript:@"BGGainMatchingModel"];
                        v146 = [v145 objectAtIndexedSubscript:v141];
                        *&v144[4 * v141] = [v146 intValue];

                        ++v141;
                      }

                      while (v141 != 3);
                      for (i5 = 0; i5 != 3; ++i5)
                      {
                        v148 = [v140 objectForKeyedSubscript:@"RGGainMatchingModel"];
                        v149 = [v148 objectAtIndexedSubscript:i5];
                        *&v143[4 * i5] = [v149 intValue];
                      }

                      v150 = [v140 objectForKeyedSubscript:@"SlaveCameraID"];
                      *(&v242[-1] + 7 * v138) = [v150 intValue];
                    }

                    v151 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                    (*(pointerValue->var0 + 18))(pointerValue, [v151 count], &v241);

                    bzero(v240, 0xA40uLL);
                    v152 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                    [v152 count];

                    for (i6 = 0; ; i6 = v156 + 1)
                    {
                      v154 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                      v155 = [v154 count];
                      v156 = i6;

                      if (v155 <= i6)
                      {
                        break;
                      }

                      v157 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                      v158 = [v157 objectAtIndexedSubscript:i6];

                      if (v158)
                      {
                        v159 = [v158 objectForKeyedSubscript:@"latticeModelLUTGridSize"];
                        intValue = [v159 intValue];

                        if (intValue == 9)
                        {
                          v161 = [v158 objectForKeyedSubscript:@"wbGainMatchingModel"];
                          v162 = v161;
                          if (v161 && [v161 count] == 162)
                          {
                            v163 = [v158 objectForKeyedSubscript:@"latticeModelLUTGridSize"];
                            v164 = &v240[82 * i6 + 1];
                            v165 = &v240[82 * i6];
                            v165[1] = [v163 intValue];

                            for (i7 = 0; i7 != 162; ++i7)
                            {
                              v167 = [v162 objectAtIndex:i7];
                              *(v164 + i7) = [v167 intValue];
                            }

                            v168 = [v158 objectForKeyedSubscript:@"SlaveCameraID"];
                            *v165 = [v168 intValue];
                          }
                        }
                      }
                    }

                    v169 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                    (*(pointerValue->var0 + 19))(pointerValue, [v169 count], v240);

                    goto LABEL_84;
                  }

                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
                  v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v185, v200, v216);
                  v219 = 0;
                }

                else
                {
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
                  v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v184, v199, v215);
                  v219 = 0;
                  v224 = 0;
                }
              }

              else
              {
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
                v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v183, v198, v214);
                v219 = 0;
                v224 = 0;
                v225 = 0;
              }
            }

            else
            {
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
              v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v182, v197, v213);
              v219 = 0;
              v224 = 0;
              v225 = 0;
              v226 = 0;
            }
          }

          else
          {
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
            v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v181, v196, v212);
            v219 = 0;
            v224 = 0;
            v225 = 0;
            v226 = 0;
            v227 = 0;
          }
        }

        else
        {
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
          v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v180, v195, v211);
          v219 = 0;
          v224 = 0;
          v225 = 0;
          v226 = 0;
          v227 = 0;
          v228 = 0;
        }
      }

      else
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
        v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v179, v194, v210);
        v219 = 0;
        v224 = 0;
        v225 = 0;
        v226 = 0;
        v227 = 0;
        v228 = 0;
        v229 = 0;
      }
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
      v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v178, v193, v209);
      v219 = 0;
      v224 = 0;
      v225 = 0;
      v226 = 0;
      v227 = 0;
      v228 = 0;
      v229 = 0;
      v230 = 0;
    }
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v202, v202, v218, toCopy, pointerValue, v222, v223);
    v170 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v177, v192, v208);
    v219 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v236 = 0;
  }

LABEL_85:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v170;
}

- (int)awbConfigLoad:(id)load to:(CAWBAFE *)to
{
  loadCopy = load;
  if (loadCopy && to)
  {
    v7 = [MEMORY[0x1E696B098] valueWithPointer:to];
    v8 = [AWBAlgorithm doAWBConfigLoad:loadCopy to:v7];
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v12, v14, v15, v16, vars0, vars8);
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v13);
  }

  return v8;
}

+ (int)awbSensorCalibrationsLoad:(id)load idealColorCalibrations:(id)calibrations to:(id)to
{
  loadCopy = load;
  calibrationsCopy = calibrations;
  toCopy = to;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  HIBYTE(v62) = 0;
  pointerValue = [toCopy pointerValue];
  if (pointerValue)
  {
    HIBYTE(v62) = 0;
    v12 = MEMORY[0x1E6990E48];
    v13 = MEMORY[0x1E6990E40];
    v14 = MEMORY[0x1E6990E38];
    v15 = MEMORY[0x1E6990E50];
    if (loadCopy)
    {
      v16 = *MEMORY[0x1E6990E48];
      v17 = [loadCopy objectForKeyedSubscript:*MEMORY[0x1E6990E48]];

      if (v17)
      {
        v18 = [loadCopy objectForKeyedSubscript:v16];
        LODWORD(v19) = 1.0;
        [v18 cmi_floatValueForKey:*v13 defaultValue:&v62 + 7 found:v19];
        v21 = ((v20 * 16384.0) + 0.5);
      }

      else
      {
        v21 = 16384.0;
      }

      HIBYTE(v62) = 0;
      v25 = [loadCopy objectForKeyedSubscript:v16];

      if (v25)
      {
        v26 = [loadCopy objectForKeyedSubscript:v16];
        LODWORD(v27) = 1.0;
        [v26 cmi_floatValueForKey:*v14 defaultValue:&v62 + 7 found:v27];
        v23 = ((v28 * 16384.0) + 0.5);
      }

      else
      {
        v23 = 16384.0;
      }

      HIBYTE(v62) = 0;
      v29 = *v15;
      v30 = [loadCopy objectForKeyedSubscript:*v15];

      if (v30)
      {
        v31 = [loadCopy objectForKeyedSubscript:v29];
        LODWORD(v32) = 1.0;
        [v31 cmi_floatValueForKey:*v13 defaultValue:&v62 + 7 found:v32];
        v22 = ((v33 * 16384.0) + 0.5);
      }

      else
      {
        v22 = 16384.0;
      }

      HIBYTE(v62) = 0;
      v34 = [loadCopy objectForKeyedSubscript:v29];

      if (v34)
      {
        v35 = [loadCopy objectForKeyedSubscript:v29];
        LODWORD(v36) = 1.0;
        [v35 cmi_floatValueForKey:*v14 defaultValue:&v62 + 7 found:v36];
        v24 = ((v37 * 16384.0) + 0.5);
      }

      else
      {
        v24 = 16384.0;
      }
    }

    else
    {
      v22 = 16384.0;
      v21 = 16384.0;
      v23 = 16384.0;
      v24 = 16384.0;
    }

    HIBYTE(v62) = 0;
    if (calibrationsCopy)
    {
      v38 = *v12;
      v39 = [calibrationsCopy objectForKeyedSubscript:*v12];

      if (v39)
      {
        v40 = [calibrationsCopy objectForKeyedSubscript:v38];
        LODWORD(v41) = 1182793728;
        [v40 cmi_floatValueForKey:*v13 defaultValue:&v62 + 7 found:v41];
        v43 = v42;
      }

      else
      {
        v43 = 16384.0;
      }

      HIBYTE(v62) = 0;
      v47 = [calibrationsCopy objectForKeyedSubscript:v38];

      if (v47)
      {
        v48 = [calibrationsCopy objectForKeyedSubscript:v38];
        LODWORD(v49) = 1182793728;
        [v48 cmi_floatValueForKey:*v14 defaultValue:&v62 + 7 found:v49];
        v45 = v50;
      }

      else
      {
        v45 = 16384.0;
      }

      HIBYTE(v62) = 0;
      v51 = *v15;
      v52 = [calibrationsCopy objectForKeyedSubscript:*v15];

      if (v52)
      {
        v53 = [calibrationsCopy objectForKeyedSubscript:v51];
        LODWORD(v54) = 1182793728;
        [v53 cmi_floatValueForKey:*v13 defaultValue:&v62 + 7 found:v54];
        v44 = v55;
      }

      else
      {
        v44 = 16384.0;
      }

      HIBYTE(v62) = 0;
      v56 = [calibrationsCopy objectForKeyedSubscript:v51];

      if (v56)
      {
        v57 = [calibrationsCopy objectForKeyedSubscript:v51];
        LODWORD(v58) = 1182793728;
        [v57 cmi_floatValueForKey:*v14 defaultValue:&v62 + 7 found:v58];
        v46 = v59;
      }

      else
      {
        v46 = 16384.0;
      }
    }

    else
    {
      v44 = 16384.0;
      v43 = 16384.0;
      v45 = 16384.0;
      v46 = 16384.0;
    }

    CAWBAFE::SensorCalSet(pointerValue, v21, v23, v22, v24, v43, v45, v44, v46);
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v61, v62, v63, v64, v65, v66);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return 0;
}

+ (int)populateSlaveConfigWithModuleConfigIfColorMatchingModelExistsInPrimaryAWBConfig:(id)config secondaryAWBConfig:(id)bConfig secondaryIdealColorCals:(id)cals secondaryAbsoluteColorCals:(id)colorCals secondarySetFileID:(unsigned int)d secondarySensorConfig:(SensorConfigAWBParams *)sensorConfig
{
  configCopy = config;
  bConfigCopy = bConfig;
  calsCopy = cals;
  colorCalsCopy = colorCals;
  v152 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v14 = 0;
  do
  {
    v15 = [configCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
    v16 = [v15 count];

    if (v16 <= v14)
    {
      v31 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v139, v144, calsCopy, colorCalsCopy, bConfigCopy, v149);
      v32 = 0;
LABEL_11:
      v33 = 0;
      v34 = 0;
      v35 = 0;
      goto LABEL_86;
    }

    v17 = [configCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
    v18 = [v17 objectAtIndexedSubscript:v14];

    v19 = [v18 objectForKeyedSubscript:@"SlaveCameraID"];
    intValue = [v19 intValue];

    ++v14;
  }

  while (((intValue ^ d) & 0xFFFFFF) != 0 || !intValue);
  sensorConfig->var4 = intValue;
  v152 = 0;
  v21 = MEMORY[0x1E6990E48];
  v22 = MEMORY[0x1E6990E40];
  v23 = MEMORY[0x1E6990E38];
  v24 = MEMORY[0x1E6990E50];
  sensorConfigCopy = sensorConfig;
  if (colorCalsCopy)
  {
    v25 = *MEMORY[0x1E6990E48];
    v26 = [colorCalsCopy objectForKeyedSubscript:*MEMORY[0x1E6990E48]];

    if (v26)
    {
      v27 = [colorCalsCopy objectForKeyedSubscript:v25];
      LODWORD(v28) = 1.0;
      [v27 cmi_floatValueForKey:*v22 defaultValue:&v152 found:v28];
      v30 = ((v29 * 16384.0) + 0.5);
    }

    else
    {
      v30 = 16384.0;
    }

    v152 = 0;
    v39 = [colorCalsCopy objectForKeyedSubscript:v25];

    if (v39)
    {
      v40 = [colorCalsCopy objectForKeyedSubscript:v25];
      LODWORD(v41) = 1.0;
      [v40 cmi_floatValueForKey:*v23 defaultValue:&v152 found:v41];
      v37 = ((v42 * 16384.0) + 0.5);
    }

    else
    {
      v37 = 16384.0;
    }

    v152 = 0;
    v43 = *v24;
    v44 = [colorCalsCopy objectForKeyedSubscript:*v24];

    if (v44)
    {
      v45 = [colorCalsCopy objectForKeyedSubscript:v43];
      LODWORD(v46) = 1.0;
      [v45 cmi_floatValueForKey:*v22 defaultValue:&v152 found:v46];
      v36 = ((v47 * 16384.0) + 0.5);
    }

    else
    {
      v36 = 16384.0;
    }

    v152 = 0;
    v48 = [colorCalsCopy objectForKeyedSubscript:v43];

    if (v48)
    {
      v49 = [colorCalsCopy objectForKeyedSubscript:v43];
      LODWORD(v50) = 1.0;
      [v49 cmi_floatValueForKey:*v23 defaultValue:&v152 found:v50];
      v38 = ((v51 * 16384.0) + 0.5);
    }

    else
    {
      v38 = 16384.0;
    }
  }

  else
  {
    v36 = 16384.0;
    v30 = 16384.0;
    v37 = 16384.0;
    v38 = 16384.0;
  }

  v152 = 0;
  if (calsCopy)
  {
    v52 = *v21;
    v53 = [calsCopy objectForKeyedSubscript:*v21];

    if (v53)
    {
      v54 = [calsCopy objectForKeyedSubscript:v52];
      LODWORD(v55) = 1182793728;
      [v54 cmi_floatValueForKey:*v22 defaultValue:&v152 found:v55];
      v57 = v56;
    }

    else
    {
      v57 = 16384.0;
    }

    v152 = 0;
    v61 = [calsCopy objectForKeyedSubscript:v52];

    if (v61)
    {
      v62 = [calsCopy objectForKeyedSubscript:v52];
      LODWORD(v63) = 1182793728;
      [v62 cmi_floatValueForKey:*v23 defaultValue:&v152 found:v63];
      v59 = v64;
    }

    else
    {
      v59 = 16384.0;
    }

    v152 = 0;
    v65 = *v24;
    v66 = [calsCopy objectForKeyedSubscript:*v24];

    if (v66)
    {
      v67 = [calsCopy objectForKeyedSubscript:v65];
      LODWORD(v68) = 1182793728;
      [v67 cmi_floatValueForKey:*v22 defaultValue:&v152 found:v68];
      v58 = v69;
    }

    else
    {
      v58 = 16384.0;
    }

    v152 = 0;
    v70 = [calsCopy objectForKeyedSubscript:v65];

    if (v70)
    {
      v71 = [calsCopy objectForKeyedSubscript:v65];
      LODWORD(v72) = 1182793728;
      [v71 cmi_floatValueForKey:*v23 defaultValue:&v152 found:v72];
      v60 = v73;
    }

    else
    {
      v60 = 16384.0;
    }
  }

  else
  {
    v58 = 16384.0;
    v57 = 16384.0;
    v59 = 16384.0;
    v60 = 16384.0;
  }

  sensorConfig->var0.var0 = v58;
  sensorConfig->var0.var1 = v60;
  sensorConfig->var0.var2 = v57;
  sensorConfig->var0.var3 = v59;
  sensorConfig->var1.var0 = v36;
  sensorConfig->var1.var1 = v38;
  sensorConfig->var1.var2 = v30;
  sensorConfig->var1.var3 = v37;
  v74 = v58 > 0.0;
  if (v36 <= 0.0)
  {
    v74 = 0;
  }

  if (v74)
  {
    v75 = ((v58 * 16384.0) / v36);
  }

  else
  {
    LOWORD(v75) = 0x4000;
  }

  sensorConfig->var3.var0 = v75;
  v76 = v60 > 0.0;
  if (v38 <= 0.0)
  {
    v76 = 0;
  }

  if (v76)
  {
    v77 = ((v60 * 16384.0) / v38);
  }

  else
  {
    LOWORD(v77) = 0x4000;
  }

  sensorConfig->var3.var1 = v77;
  v78 = v57 > 0.0;
  if (v30 <= 0.0)
  {
    v78 = 0;
  }

  if (v78)
  {
    v79 = ((v57 * 16384.0) / v30);
  }

  else
  {
    LOWORD(v79) = 0x4000;
  }

  sensorConfig->var3.var2 = v79;
  v80 = v59 > 0.0;
  if (v37 <= 0.0)
  {
    v80 = 0;
  }

  if (v80)
  {
    v81 = ((v59 * 16384.0) / v37);
  }

  else
  {
    LOWORD(v81) = 0x4000;
  }

  sensorConfig->var3.var3 = v81;
  if (v74)
  {
    v82 = ((v36 * 16384.0) / v58);
  }

  else
  {
    LOWORD(v82) = 0x4000;
  }

  sensorConfig->var2.var0 = v82;
  if (v76)
  {
    v83 = ((v38 * 16384.0) / v60);
  }

  else
  {
    LOWORD(v83) = 0x4000;
  }

  sensorConfig->var2.var1 = v83;
  if (v78)
  {
    v84 = ((v30 * 16384.0) / v57);
  }

  else
  {
    LOWORD(v84) = 0x4000;
  }

  sensorConfig->var2.var2 = v84;
  if (v80)
  {
    v85 = ((v37 * 16384.0) / v59);
  }

  else
  {
    LOWORD(v85) = 0x4000;
  }

  sensorConfig->var2.var3 = v85;
  v145 = [bConfigCopy objectForKeyedSubscript:@"CSC"];
  if (!v145)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, 0, calsCopy, colorCalsCopy, bConfigCopy, sensorConfig);
    v31 = 0;
    v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v131, v135, v140);
    goto LABEL_11;
  }

  p_var6 = &sensorConfig->var6;
  v87 = -9;
  do
  {
    v88 = [v145 objectForKeyedSubscript:@"CCMCoef"];
    v89 = [v88 objectAtIndexedSubscript:v87 + 9];
    p_var6->var0[0] = [v89 intValue];

    v90 = [v145 objectForKeyedSubscript:@"CSCCoef"];
    v91 = [v90 objectAtIndexedSubscript:v87 + 9];
    p_var6->var1[0] = [v91 intValue];

    p_var6 = (p_var6 + 2);
  }

  while (!__CFADD__(v87++, 1));
  *sensorConfig->var6.var2 = 0;
  v93 = [v145 objectForKeyedSubscript:@"CSCChromaScale0"];
  sensorConfig->var6.var3[0] = [v93 intValue];

  v94 = [v145 objectForKeyedSubscript:@"CSCChromaScale1"];
  sensorConfig->var6.var3[1] = [v94 intValue];

  v95 = [bConfigCopy objectForKeyedSubscript:@"CCM"];
  v96 = [v95 objectForKeyedSubscript:@"CCMLuxClipLevel"];
  sensorConfig->var6.var4 = [v96 intValue];

  v97 = [bConfigCopy objectForKeyedSubscript:@"CCM"];
  if (v97)
  {
    v98 = 0;
    v99 = sensorConfigCopy->var6.var5[5];
    do
    {
      v100 = [v97 objectForKeyedSubscript:@"Offset"];
      v101 = [v100 objectAtIndexedSubscript:v98];
      *(v99 - 45) = [v101 intValue];

      v102 = [v97 objectForKeyedSubscript:@"X1stOrder"];
      v103 = [v102 objectAtIndexedSubscript:v98];
      *(v99 - 36) = [v103 intValue];

      v104 = [v97 objectForKeyedSubscript:@"Y1stOrder"];
      v105 = [v104 objectAtIndexedSubscript:v98];
      *(v99 - 27) = [v105 intValue];

      v106 = [v97 objectForKeyedSubscript:@"X2ndOrder"];
      v107 = [v106 objectAtIndexedSubscript:v98];
      *(v99 - 18) = [v107 intValue];

      v108 = [v97 objectForKeyedSubscript:@"Y2ndOrder"];
      v109 = [v108 objectAtIndexedSubscript:v98];
      *(v99 - 9) = [v109 intValue];

      v110 = [v97 objectForKeyedSubscript:@"LuxFactor"];
      v111 = [v110 objectAtIndexedSubscript:v98];
      *v99++ = [v111 intValue];

      ++v98;
    }

    while (v98 != 9);
    v112 = [bConfigCopy objectForKeyedSubscript:@"Histogram"];
    v33 = [v112 objectForKeyedSubscript:@"XToCCT"];

    if (v33)
    {
      for (i = 0; ; i = v114 + 1)
      {
        v114 = i;
        if ([v33 count] <= i)
        {
          break;
        }

        v115 = [v33 objectAtIndexedSubscript:i];
        v116 = [v115 objectForKeyedSubscript:@"X"];
        v117 = sensorConfigCopy->var6.var6[v114];
        *v117 = [v116 intValue];

        v118 = [v33 objectAtIndexedSubscript:v114];
        v119 = [v118 objectForKeyedSubscript:@"Y"];
        v117[1] = [v119 intValue];

        v120 = [v33 objectAtIndexedSubscript:v114];
        v121 = [v120 objectForKeyedSubscript:@"CCT"];
        v117[2] = [v121 intValue];
      }

      v122 = [bConfigCopy objectForKeyedSubscript:@"ProjectionPoint"];
      if (v122)
      {
        for (j = 0; ; j = v124 + 1)
        {
          v124 = j;
          if ([v122 count] <= j)
          {
            break;
          }

          v125 = [v122 objectAtIndexedSubscript:j];
          v126 = [v125 objectForKeyedSubscript:@"X"];
          v127 = sensorConfigCopy->var6.var7[v124];
          *v127 = [v126 intValue];

          v128 = [v122 objectAtIndexedSubscript:v124];
          v129 = [v128 objectForKeyedSubscript:@"Y"];
          v127[1] = [v129 intValue];
        }

        v32 = 0;
        v31 = v97;
        v34 = v122;
      }

      else
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v145, calsCopy, colorCalsCopy, bConfigCopy, sensorConfigCopy);
        v34 = 0;
        v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v134, v138, v143);
        v31 = v97;
      }
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v145, calsCopy, colorCalsCopy, bConfigCopy, sensorConfigCopy);
      v33 = 0;
      v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v133, v137, v142);
      v31 = v97;
      v34 = 0;
    }
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v145, calsCopy, colorCalsCopy, bConfigCopy, sensorConfig);
    v31 = 0;
    v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, v136, v141);
    v33 = 0;
    v34 = 0;
  }

  v35 = v145;
LABEL_86:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v32;
}

+ (void)calculateNonComboGainsFromComboGains:(unsigned int)gains[3] awbAlgorithm:(CAWBAFEH14 *)algorithm gains:(unsigned int)a5[3]
{
  v12 = COERCE_DOUBLE(vcvt_f32_u32(*gains));
  v24 = v12;
  *&v12 = gains[2];
  v25 = *&v12;
  v23 = 0;
  *v22 = 0;
  CAWBAFE::GetBinIndices(algorithm, &v23 + 1, &v23, &v24, 0, v12, v5, v6, v7, v8);
  CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(algorithm, *(&v23 + 1), v13, v14, v15, v16);
  CAWBAFE::GetInterpolatedCSensorCalGains(algorithm, &v22[1], v22, CCTFromColorRatio);
  LOWORD(v18) = v22[1];
  v19 = (*gains * 4.0) / v18;
  *&v20 = gains[2];
  v21 = *&v20 * 4.0;
  LOWORD(v20) = v22[0];
  *a5 = ((v19 * 4096.0) + 0.5);
  a5[1] = 4096;
  a5[2] = (((v21 / v20) * 4096.0) + 0.5);
}

- (int)process
{
  v3 = (MEMORY[0x1EEE9AC00])(self, a2);
  v303[2] = 0;
  *v303 = 0;
  *(v3 + 5096) = 0;
  *(v3 + 5112) = 0;
  *(v3 + 5104) = 0;
  *&v302.x = 0;
  *&v302.width = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  bzero(v286, 0x4D10uLL);
  v295 = *(v3 + 5056);
  v296 = *(v3 + 5060);
  v292 = 1;
  v4 = *(v3 + 5064);
  v299 = v4;
  v5 = *(v3 + 5068);
  v300 = v5;
  v287 = v5 + (v4 << 16);
  v290 = 1;
  if (CAWBAFE::GetLargestFaceRect(*(v3 + 16), &v302))
  {
    v6 = (v302.width * 0.4) / 2;
    v8 = v6 + 3;
    v7 = v6 < -3;
    v9 = v6 + 6;
    if (!v7)
    {
      v9 = v8;
    }

    v10 = v9 >> 2;
    v11 = (v302.height * 0.4) / 2;
    v12 = v11 + 3;
    v7 = v11 < -3;
    v13 = v11 + 6;
    if (!v7)
    {
      v13 = v12;
    }

    v14 = v13 & 0xFFFFFFFC;
    v15 = (v302.width * 0.6) / 2;
    v16 = v15 + 3;
    v7 = v15 < -3;
    v17 = v15 + 6;
    if (!v7)
    {
      v17 = v16;
    }

    v18 = v17 >> 2;
    v19 = (v302.height * 0.6) / 2;
    v20 = v19 + 3;
    v7 = v19 < -3;
    v21 = v19 + 6;
    if (!v7)
    {
      v21 = v20;
    }

    v291 = 257;
    v288 = v14 + (v10 << 18);
    v289 = (v21 & 0xFFFFFFFC) + (v18 << 18);
  }

  v301 = 0x800000008000;
  __asm { FMOV            V2.2D, #0.5 }

  v27 = vcvtq_s64_f64(vmulq_f64(*(v3 + 5152), _Q2));
  v28 = vcvtq_s64_f64(vmulq_f64(*(v3 + 5136), _Q2));
  *&_Q2.f64[0] = vmovn_s64(v27);
  v29 = vmovn_s64(v28);
  v297 = v29.i16[0];
  v298 = v29.i16[2];
  v293 = LOWORD(_Q2.f64[0]);
  v294 = WORD2(_Q2.f64[0]);
  *(v3 + 3876) = vuzp1q_s32(v28, v27);
  v283 = 0;
  v284 = 0;
  bytes3 = 0;
  v30 = [*(v3 + 5072) objectForKey:@"tileStats"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_33;
  }

  v31 = [*(v3 + 5072) objectForKeyedSubscript:@"tileStats"];
  v32 = [v31 length];

  if (v32 != 0x10000)
  {
LABEL_33:
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1EDD78220, "<<<< AWBAlgorithm >>>> Fig", "( [[_stats objectForKey:@tileStats] isKindOfClass:NSData.class]) &&([_stats[@tileStats] length] ==(sizeof( AWBStatsTiles)))", "bail", 0, "AWBAlgorithm.mm", 1936, 0);
LABEL_38:
    v56 = 0;
    goto LABEL_39;
  }

  v33 = [*(v3 + 5072) objectForKey:@"windowStats"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_35;
  }

  v34 = [*(v3 + 5072) objectForKeyedSubscript:@"windowStats"];
  v35 = [v34 length];

  if (v35 != 768)
  {
LABEL_35:
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1EDD78220, "<<<< AWBAlgorithm >>>> Fig", "( [[_stats objectForKey:@windowStats] isKindOfClass:NSData.class]) &&([_stats[@windowStats] length] ==(( sizeof( t_AEAWB_Stat_Elem_copy)) * (8)))", "bail", 0, "AWBAlgorithm.mm", 1937, 0);
    goto LABEL_38;
  }

  v36 = [*(v3 + 5072) objectForKey:@"histStats"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_37;
  }

  v37 = [*(v3 + 5072) objectForKeyedSubscript:@"histStats"];
  v38 = [v37 length];

  if (v38 != 0x4000)
  {
LABEL_37:
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1EDD78220, "<<<< AWBAlgorithm >>>> Fig", "( [[_stats objectForKey:@histStats] isKindOfClass:NSData.class]) &&([_stats[@histStats] length] ==(sizeof( AWBStatsColorHist)))", "bail", 0, "AWBAlgorithm.mm", 1938, 0);
    goto LABEL_38;
  }

  CAWBAFE::SetScheme(*(v3 + 16), 1);
  v39 = *(v3 + 16);
  v40 = [*(v3 + 5072) objectForKeyedSubscript:@"tileStats"];
  bytes = [v40 bytes];
  v42 = [*(v3 + 5072) objectForKeyedSubscript:@"windowStats"];
  bytes2 = [v42 bytes];
  v44 = [*(v3 + 5072) objectForKeyedSubscript:@"histStats"];
  CAWBAFE::SetStats(v39, v286, bytes, bytes2, [v44 bytes], 0);

  CAWBAFE::SetFrameRateForHistAWB(*(v3 + 16), *(v3 + 88));
  CAWBAFE::SetSensorClockFreq(*(v3 + 16), *(v3 + 4988));
  CAWBAFE::EstimateCurrentSceneLuxLevels(*(v3 + 16), v3 + 24, v45, v46);
  CAWBAFE::GetCurrentSceneLuxLevels(*(v3 + 16), v303);
  *(v3 + 320) = *&v303[1];
  *(v3 + 312) = CAWBAFE::GetSceneBrightnessForLux(*(v3 + 16));
  CAWBAFE::SetRgbColorspace(*(v3 + 16), 1);
  v47 = v303[0];
  if (!*(v3 + 4924))
  {
    *(v3 + 4992) = v303[0];
    *(v3 + 4994) = *&v303[1];
  }

  *(v3 + 4998) = v47;
  if (CAWBAFE::GetFDAWBEnable(*(v3 + 16)) && CAWBAFE::GetFDAWBVersion(*(v3 + 16)) == 1)
  {
    v48 = [*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"];

    if (v48 && (([*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "length"), v49, v50 == 49152) || (-[AWBAlgorithm process].cold.1() & 1) != 0))
    {
      v51 = [*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"];
      bytes3 = [v51 bytes];

      CAWBAFE::SetSemanticConfidenceMap(*(v3 + 16), &v283);
      *(v3 + 4868) = 0u;
      *(v3 + 4884) = 0u;
      v52 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
      if ([v52 pointerValue])
      {
        v53 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
        *(v3 + 4860) = *([v53 pointerValue] + 16);
      }

      else
      {
        *(v3 + 4860) = 0;
      }

      v54 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
      if ([v54 pointerValue])
      {
        v55 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
        *(v3 + 4864) = *([v55 pointerValue] + 24);
      }

      else
      {
        *(v3 + 4864) = 0;
      }
    }

    else
    {
      CAWBAFE::SetSemanticAWBEnable(*(v3 + 16), 0);
    }
  }

  v78 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];

  if (v78)
  {
    v79 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];
    bytes4 = [v79 bytes];

    v81 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
    if ([v81 pointerValue])
    {
      v82 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
      v83 = *([v82 pointerValue] + 16);
    }

    else
    {
      v83 = 0;
    }

    v84 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
    if ([v84 pointerValue])
    {
      v85 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
      v86 = *([v85 pointerValue] + 24);
    }

    else
    {
      v86 = 0;
    }

    v87 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];
    v88 = [v87 length];

    if (v88 == v86 * v83 || ([AWBAlgorithm process]& 1) != 0)
    {
      v89 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990DA0]];
      [v3 _processSkyMask:bytes4 skyMaskWidth:v83 skyMaskHeight:v86 cropRectFromSourceDict:v89];
    }
  }

  v90 = 1;
  do
  {
    v91 = v90;
    if (*(v3 + 4924) >= 1)
    {
      CAWBAFE::SetSensorClockFreq(*(v3 + 16), *(v3 + 4988));
      CAWBAFE::SetFlashStateForHistAWB(*(v3 + 16), 0, 0, 0, 0);
      CAWBAFE::SetFlashStateForHistAWB(*(v3 + 16), 1, *(v3 + 4992), *(v3 + 4994), *(v3 + 4996));
    }

    (*(**(v3 + 16) + 32))(*(v3 + 16), v3 + 24);
    v92 = *(v3 + 4924);
    if (v92 >= 1 && *(v3 + 4937))
    {
      v93 = *(v3 + 16);
      v94 = *(v3 + 4928);
      v95 = *(v3 + 4932);
      v96 = *(v3 + 4952);
      v275[0] = *(v3 + 4936);
      v275[1] = v96;
      v275[2] = *(v3 + 4968);
      v276 = *(v3 + 4984);
      (*(*v93 + 128))(v93, v95, v275, v92, v94);
    }

    (*(**(v3 + 16) + 64))(*(v3 + 16), &[AWBAlgorithm process]::pstAWBMetaData, 0);
    v90 = 0;
  }

  while ((v91 & 1) != 0);
  if ((byte_1EDD77BC4 & 1) != 0 && *(v3 + 5000) == 1)
  {
    *(v3 + 5120) = [*(v3 + 5008) unsignedIntValue];
    *(v3 + 5124) = [*(v3 + 5016) unsignedIntValue];
    *(v3 + 5128) = [*(v3 + 5024) unsignedIntValue];
    unsignedIntValue = [*(v3 + 5032) unsignedIntValue];
    unsignedIntValue2 = [*(v3 + 5040) unsignedIntValue];
    unsignedIntValue3 = [*(v3 + 5048) unsignedIntValue];
    v100 = word_1EDD77BC0;
    v101 = *(v3 + 5120);
    v102 = *(v3 + 5128);
    v103 = unsignedIntValue | (unsignedIntValue2 << 32);
    v104 = unsignedIntValue3;
    v105 = word_1EDD77BBE | 0x400000000000;
    v106 = v3;
  }

  else
  {
    if ([*(v3 + 5080) BOOLValue])
    {
      *(v3 + 5120) = word_1EDD77C50;
      *(v3 + 5124) = word_1EDD77C52;
      v102 = word_1EDD77C56;
      *(v3 + 5128) = word_1EDD77C56;
      v107 = word_1EDD77C70;
      v100 = word_1EDD77C72;
    }

    else
    {
      *(v3 + 5120) = word_1EDD7789E;
      *(v3 + 5124) = word_1EDD778A0;
      v102 = word_1EDD778A4;
      *(v3 + 5128) = word_1EDD778A4;
      v107 = word_1EDD77BBE;
      v100 = word_1EDD77BC0;
    }

    v101 = *(v3 + 5120);
    v105 = v107 | 0x400000000000;
    v106 = v3;
    v103 = 0;
    v104 = 0;
  }

  [v106 _calculateComboGainsAndNormalizedGainsFromAWBGains:v101 awbComboGains:v102 colorCalGains:{v103, v104, v105, v100}];
  if (!*(v3 + 5088))
  {
    goto LABEL_38;
  }

  if ((byte_1EDD77BC4 & 1) == 0)
  {
    v129 = 0;
    v130 = &unk_1EDD77C74;
    do
    {
      bOOLValue = [*(v3 + 5080) BOOLValue];
      v132 = v130 - 227;
      if (bOOLValue)
      {
        v132 = v130;
      }

      *(v275 + v129) = vcvts_n_f32_s32(*v132, 0xCuLL);
      *(&v255 + v129) = vcvts_n_f32_s32(*(v130 - 209), 0xCuLL);
      v130 += 2;
      v129 += 4;
    }

    while (v129 != 36);
    v248 = [MEMORY[0x1E695DEF0] dataWithBytes:v275 length:36];
    v251 = [MEMORY[0x1E695DEF0] dataWithBytes:&v255 length:36];
    [*(v3 + 5088) setObject:v248 forKeyedSubscript:*MEMORY[0x1E6990F98]];
    v133 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77BC2];
    [*(v3 + 5088) setObject:v133 forKeyedSubscript:*MEMORY[0x1E6990F48]];

    v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77BB8];
    [*(v3 + 5088) setObject:v134 forKeyedSubscript:*MEMORY[0x1E6990F90]];

    v135 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5120)];
    [*(v3 + 5088) setObject:v135 forKeyedSubscript:*MEMORY[0x1E6990F10]];

    v136 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5124)];
    [*(v3 + 5088) setObject:v136 forKeyedSubscript:*MEMORY[0x1E6990F08]];

    v137 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5128)];
    [*(v3 + 5088) setObject:v137 forKeyedSubscript:*MEMORY[0x1E6990F00]];

    v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5120)];
    [*(v3 + 5088) setObject:v138 forKeyedSubscript:*MEMORY[0x1E6990F20]];

    v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5124)];
    [*(v3 + 5088) setObject:v139 forKeyedSubscript:*MEMORY[0x1E6990F18]];

    v140 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5128)];
    [*(v3 + 5088) setObject:v140 forKeyedSubscript:*MEMORY[0x1E6990EE0]];

    v141 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5096)];
    [*(v3 + 5088) setObject:v141 forKeyedSubscript:*MEMORY[0x1E6990EF8]];

    v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5100)];
    [*(v3 + 5088) setObject:v142 forKeyedSubscript:*MEMORY[0x1E6990EF0]];

    v143 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5104)];
    [*(v3 + 5088) setObject:v143 forKeyedSubscript:*MEMORY[0x1E6990EE8]];

    v144 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6991038]];
    bOOLValue2 = [v144 BOOLValue];

    if (bOOLValue2)
    {
      _updateHRGainDownRatioMetadata = [v3 _updateHRGainDownRatioMetadata];
      if (_updateHRGainDownRatioMetadata)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", _updateHRGainDownRatioMetadata, v2, v224, v233, v234, v235, v236, v237);
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v215, v223, v232);
      }
    }

    v147 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B79];
    [*(v3 + 5088) setObject:v147 forKeyedSubscript:*MEMORY[0x1E6990F38]];

    v148 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(word_1EDD77B7D + word_1EDD77B7B) >> 1];
    [*(v3 + 5088) setObject:v148 forKeyedSubscript:*MEMORY[0x1E6990F30]];

    v149 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7F];
    [*(v3 + 5088) setObject:v149 forKeyedSubscript:*MEMORY[0x1E6990F28]];

    v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C00];
    [*(v3 + 5088) setObject:v150 forKeyedSubscript:*MEMORY[0x1E6990F40]];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (dictionary)
    {
      LODWORD(v151) = dword_1EDD77B84;
      v152 = [MEMORY[0x1E696AD98] numberWithFloat:v151];
      [dictionary setObject:v152 forKeyedSubscript:@"FlashProjMixWeighting"];

      v153 = MEMORY[0x1E695DEC8];
      v154 = [MEMORY[0x1E696AD98] numberWithInt:dword_1EDD77C94];
      v155 = [MEMORY[0x1E696AD98] numberWithInt:dword_1EDD77C98];
      v156 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C9C];
      v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77CA0];
      v158 = [v153 arrayWithObjects:{v154, v155, v156, v157, 0}];
      [dictionary setObject:v158 forKeyedSubscript:@"TileStatsRegionInRaw"];

      v159 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C00];
      [dictionary setObject:v159 forKeyedSubscript:@"FdAWBChistMixFactor"];

      v160 = MEMORY[0x1E695DEC8];
      v161 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B79];
      v162 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7B];
      v163 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7D];
      v164 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7F];
      v165 = [v160 arrayWithObjects:{v161, v162, v163, v164, 0}];
      [dictionary setObject:v165 forKeyedSubscript:@"AwbGainsSkinOnly"];

      v166 = MEMORY[0x1E695DEC8];
      v167 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B88];
      v168 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8A];
      v169 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8C];
      v170 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8E];
      v171 = [v166 arrayWithObjects:{v167, v168, v169, v170, 0}];
      [dictionary setObject:v171 forKeyedSubscript:@"AwbGainsFlashProj"];

      v172 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77B74];
      [dictionary setObject:v172 forKeyedSubscript:@"AwbColorspace"];

      v173 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77B82];
      v174 = dictionary;
      [dictionary setObject:v173 forKeyedSubscript:@"IsLEDMainFlashforAWB"];

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      if (dictionary2)
      {
        v282 = 0.0;
        *&v176 = CAWBAFE::GetMixedLightingScore(*(v3 + 16), &v282);
        v281 = 0;
        CAWBAFE::GetSkyCCT(*(v3 + 16), &v281, v176, v177, v178, v179, v180);
        v181 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77BC4];
        [dictionary2 setObject:v181 forKeyedSubscript:@"UsePrevFrameWP"];

        *&v182 = v282;
        v183 = [MEMORY[0x1E696AD98] numberWithFloat:v182];
        [dictionary2 setObject:v183 forKeyedSubscript:@"MixedLightingScore"];

        v184 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v281];
        [dictionary2 setObject:v184 forKeyedSubscript:@"SkyCCT"];

        [dictionary2 setObject:v251 forKeyedSubscript:@"StrobeWhitePointCCM"];
        *type = 0;
        v280 = 0;
        v277 = 0;
        *v278 = 0;
        CAWBAFE::GetFaceAssistedAWBResultsForMatchProvidedSkinGains(*(v3 + 16), &v280, type, v278, &v278[1], &v277 + 1, &v277);
        LODWORD(v185) = v280;
        v186 = [MEMORY[0x1E696AD98] numberWithFloat:v185];
        [dictionary2 setObject:v186 forKeyedSubscript:@"wpRgLogRatio"];

        LODWORD(v187) = HIDWORD(v280);
        v188 = [MEMORY[0x1E696AD98] numberWithFloat:v187];
        [dictionary2 setObject:v188 forKeyedSubscript:@"wpBgLogRatio"];

        LODWORD(v189) = *type;
        v190 = [MEMORY[0x1E696AD98] numberWithFloat:v189];
        [dictionary2 setObject:v190 forKeyedSubscript:@"wpSkinRgLogRatio"];

        LODWORD(v191) = *&type[4];
        v192 = [MEMORY[0x1E696AD98] numberWithFloat:v191];
        [dictionary2 setObject:v192 forKeyedSubscript:@"wpSkinBgLogRatio"];

        v193 = [MEMORY[0x1E696AD98] numberWithInt:v278[1]];
        [dictionary2 setObject:v193 forKeyedSubscript:@"continuousFDTimes"];

        v194 = [MEMORY[0x1E696AD98] numberWithInt:v278[0]];
        [dictionary2 setObject:v194 forKeyedSubscript:@"skinColorSampleNum"];

        LODWORD(v195) = HIDWORD(v277);
        v196 = [MEMORY[0x1E696AD98] numberWithFloat:v195];
        [dictionary2 setObject:v196 forKeyedSubscript:@"skinColorSampleVariance"];

        LODWORD(v197) = v277;
        v198 = [MEMORY[0x1E696AD98] numberWithFloat:v197];
        [dictionary2 setObject:v198 forKeyedSubscript:@"minDistSkinToWhiteMapping"];

        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        v205 = v248;
        if (dictionary3)
        {
          *&v200 = *(v3 + 5120) * 0.00024414;
          *&v202 = vcvts_n_f32_u32(word_1EDD77B79, 0xCuLL);
          *&v201 = *(v3 + 5128) * 0.00024414;
          *&v203 = vcvts_n_f32_u32(word_1EDD77B7F, 0xCuLL);
          *&v204 = dword_1EDD77BB8;
          v206 = [v3 calculateInternalAWBMetadataForMIWB:dictionary3 bGain:v200 rSkinGain:v201 bSkinGain:v202 cct:v203 internalMetadata:v204];
          if (v206)
          {
            LODWORD(v207) = v206;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v207, v2, v224, v233, v234, v235, v236, v237);
            v205 = v248;
            v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v214, v222, v231);
            v174 = dictionary;
          }

          else
          {
            v56 = 0;
          }

          [*(v3 + 5088) setObject:v174 forKeyedSubscript:@"SpatialCCMOutputMetadata"];
          [*(v3 + 5088) setObject:dictionary2 forKeyedSubscript:@"AwbOutputMetadata"];
          [*(v3 + 5088) setObject:dictionary3 forKeyedSubscript:@"MIWBOutputMetadata"];
        }

        else
        {
          LODWORD(v207) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v207, v2, v224, v233, v234, v235, v236, v237);
          v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v213, v221, v230);
        }

        goto LABEL_39;
      }

      LODWORD(v207) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v207, v2, v224, v233, v234, v235, v236, v237);
      v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v211, v219, v228);
    }

    else
    {
      LODWORD(v207) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v207, v2, v224, v233, v234, v235, v236, v237);
      v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v209, v217, v226);
    }

    v128 = v248;
LABEL_108:

    goto LABEL_39;
  }

  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v250 = dictionary4;
  if (dictionary4)
  {
    v109 = dictionary4;
    v110 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77BC4];
    [v109 setObject:v110 forKeyedSubscript:@"UsePrevFrameWP"];

    v111 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F98]];
    [v109 setObject:v111 forKeyedSubscript:@"StrobeWhitePointCCM"];

    v112 = [*(v3 + 5088) objectForKeyedSubscript:@"AwbOutputMetadata"];

    if (!v112)
    {
      [*(v3 + 5088) setObject:v109 forKeyedSubscript:@"AwbOutputMetadata"];
    }

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    if (dictionary5)
    {
      v113 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F20]];
      intValue = [v113 intValue];
      v115 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990EE0]];
      intValue2 = [v115 intValue];
      v117 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F38]];
      intValue3 = [v117 intValue];
      v119 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F28]];
      intValue4 = [v119 intValue];
      v121 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F90]];
      intValue5 = [v121 intValue];
      *&v123 = vcvts_n_f32_s32(intValue, 0xCuLL);
      *&v124 = vcvts_n_f32_s32(intValue2, 0xCuLL);
      *&v125 = vcvts_n_f32_s32(intValue3, 0xCuLL);
      *&v126 = vcvts_n_f32_s32(intValue4, 0xCuLL);
      *&v127 = intValue5;
      v56 = [v3 calculateInternalAWBMetadataForMIWB:dictionary5 bGain:v123 rSkinGain:v124 bSkinGain:v125 cct:v126 internalMetadata:v127];

      if (v56)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v2, v224, v233, v234, v235, v236, v237);
        v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v212, v220, v229);
      }

      [*(v3 + 5088) setObject:dictionary5 forKeyedSubscript:@"MIWBOutputMetadata"];
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v224, v233, v234, v235, v236, v237);
      v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v210, v218, v227);
    }

    v128 = v250;
    goto LABEL_108;
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v224, v233, v234, v235, v236, v237);
  v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v208, v216, v225);
LABEL_39:
  if (dword_1EDD78228)
  {
    LODWORD(v280) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v58 = v280;
    v59 = v57;
    v60 = type[0];
    if (os_log_type_enabled(v59, type[0]))
    {
      v61 = v58;
    }

    else
    {
      v61 = v58 & 0xFFFFFFFE;
    }

    if (v61)
    {
      v249 = v59;
      v247 = [*(v3 + 5072) objectForKey:@"tileStats"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v237 = [*(v3 + 5072) objectForKeyedSubscript:@"tileStats"];
        v63 = [v237 length] == 0x10000;
      }

      else
      {
        v63 = 0;
      }

      v246 = [*(v3 + 5072) objectForKey:@"windowStats"];
      objc_opt_class();
      v64 = objc_opt_isKindOfClass();
      v243 = v63;
      if (v64)
      {
        v236 = [*(v3 + 5072) objectForKeyedSubscript:@"windowStats"];
        v241 = [v236 length] == 768;
      }

      else
      {
        v241 = 0;
      }

      [*(v3 + 5072) objectForKey:@"histStats"];
      v244 = v245 = v64;
      objc_opt_class();
      v252 = objc_opt_isKindOfClass();
      if (v252)
      {
        v235 = [*(v3 + 5072) objectForKeyedSubscript:@"histStats"];
        v65 = [v235 length] == 0x4000;
      }

      else
      {
        v65 = 0;
      }

      [*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"];
      v242 = v240 = v60;
      v66 = [v242 length] != 0;
      v67 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];
      v68 = [v67 length] != 0;
      v69 = byte_1EDD77BC4;
      v70 = [*(v3 + 5088) objectForKeyedSubscript:@"SpatialCCMOutputMetadata"];
      v71 = [*(v3 + 5088) objectForKeyedSubscript:@"AwbOutputMetadata"];
      v72 = [*(v3 + 5088) objectForKeyedSubscript:@"MIWBOutputMetadata"];
      v255 = 136317442;
      v256 = "[AWBAlgorithm process]";
      v257 = 1024;
      v258 = v243;
      v259 = 1024;
      v260 = v241;
      v261 = 1024;
      v262 = v65;
      v263 = 1024;
      v264 = v66;
      v265 = 1024;
      v266 = v68;
      v267 = 1024;
      v268 = v69;
      v269 = 1024;
      v270 = v70 != 0;
      v271 = 1024;
      v272 = v71 != 0;
      v273 = 1024;
      v274 = v72 != 0;
      v59 = v249;
      _os_log_send_and_compose_impl(v61, 0, v275, 128, &dword_1C92CA000, v249, v240, "<<<< AWBAlgorithm >>>> %s: ts=%d ws=%d hs=%d asm=%d sm=%d upfwp:%d scom:%d aom:%d mom:%d ", &v255, 66, v224, v233, v234, v235, v236, v237, v238, v240);

      if (v252)
      {
      }

      v56 = v239;
      if (v245)
      {
      }

      if (isKindOfClass)
      {
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v56)
  {
    LODWORD(v207) = v56;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v207, v2, v224, v233, v234, v235, v236, v237);
    if (dword_1EDD78228)
    {
      LODWORD(v280) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v75 = v280;
      v76 = type[0];
      if (os_log_type_enabled(v74, type[0]))
      {
        v77 = v75;
      }

      else
      {
        v77 = v75 & 0xFFFFFFFE;
      }

      if (v77)
      {
        v255 = 136315394;
        v256 = "[AWBAlgorithm process]";
        v257 = 1024;
        v258 = v56;
        _os_log_send_and_compose_impl(v77, 0, v275, 128, &dword_1C92CA000, v74, v76, "<<<< AWBAlgorithm >>>> %s: err=%d", &v255, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v56;
}

- (int)_processSkyMask:(void *)mask skyMaskWidth:(int)width skyMaskHeight:(int)height cropRectFromSourceDict:(id)dict
{
  dictCopy = dict;
  v11 = dictCopy;
  if (mask)
  {
    if (dictCopy && CGRectMakeWithDictionaryRepresentation(dictCopy, &rect))
    {
      v12 = (rect.size.width * width);
      v13 = (rect.size.height * height);
      v14 = (rect.origin.y * height);
      v15 = v13 * v12;
      if (v14 < v13)
      {
        v16 = 0;
        v17 = (rect.origin.x * width);
        v18 = v14;
        v19 = mask + v17 + v14 * width;
        do
        {
          v20 = v12 - v17;
          v21 = v19;
          if (v17 < v12)
          {
            do
            {
              v22 = *v21++;
              if (v22 > 0x32)
              {
                ++v16;
              }

              --v20;
            }

            while (v20);
          }

          ++v18;
          v19 += width;
        }

        while (v18 != v13);
        goto LABEL_20;
      }
    }

    else
    {
      v15 = height * width;
      if (height * width >= 1)
      {
        v16 = 0;
        v23 = (height * width);
        do
        {
          v24 = *mask;
          mask = mask + 1;
          if (v24 > 0x32)
          {
            ++v16;
          }

          --v23;
        }

        while (v23);
        goto LABEL_20;
      }
    }

    v16 = 0;
LABEL_20:
    v25 = (v16 / v15) >= 0.005;
    goto LABEL_21;
  }

  v25 = 2;
LABEL_21:
  v28 = v25;
  CAWBAFE::setUnagiSkyDetected(self->_AWBAlgorithmObj, &v28);

  return 0;
}

- (int)_calculateComboGainsAndNormalizedGainsFromAWBGains:(id)gains awbComboGains:(id)comboGains colorCalGains:(id)calGains
{
  var1 = comboGains.var1;
  self->_awbGains = gains;
  v5.i64[0] = *&comboGains.var0;
  v5.i32[2] = comboGains.var2;
  v7 = vtstq_s32(v5, v5);
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0)
  {
    if ((calGains.var0 * gains.var0) >> 14 >= 0xFFFF)
    {
      comboGains.var0 = 0xFFFF;
    }

    else
    {
      comboGains.var0 = (calGains.var0 * gains.var0) >> 14;
    }

    if ((calGains.var2 * gains.var2) >> 14 >= 0xFFFF)
    {
      comboGains.var2 = 0xFFFF;
    }

    else
    {
      comboGains.var2 = (calGains.var2 * gains.var2) >> 14;
    }

    var1 = gains.var1;
  }

  self->_awbComboGains.rGain = comboGains.var0;
  self->_awbComboGains.gGain = var1;
  self->_awbComboGains.bGain = comboGains.var2;
  if (var1 <= comboGains.var2)
  {
    var2 = comboGains.var2;
  }

  else
  {
    var2 = var1;
  }

  if (var1 >= comboGains.var2)
  {
    v9 = comboGains.var2;
  }

  else
  {
    v9 = var1;
  }

  if (comboGains.var0 > var2)
  {
    LOWORD(var2) = comboGains.var0;
  }

  if (comboGains.var0 < v9)
  {
    LOWORD(v9) = comboGains.var0;
  }

  v10 = ((var2 << 12) / v9);
  self->_awbComboGainsNormalized.rGain = ((comboGains.var0 << 12) / v10);
  self->_awbComboGainsNormalized.gGain = ((var1 << 12) / v10);
  self->_awbComboGainsNormalized.bGain = ((comboGains.var2 << 12) / v10);
  return 0;
}

- (int)_updateHRGainDownRatioMetadata
{
  v3 = *MEMORY[0x1E6990EF8];
  v4 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];

  if (!v4)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v5 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v3];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = *MEMORY[0x1E6990EF0];
  v8 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EF0]];

  if (!v8)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v9 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v7];
  unsignedIntValue2 = [v9 unsignedIntValue];

  v11 = *MEMORY[0x1E6990EE8];
  v12 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];

  if (!v12)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v13 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v11];
  unsignedIntValue3 = [v13 unsignedIntValue];

  if (unsignedIntValue3 <= unsignedIntValue)
  {
    v17 = unsignedIntValue;
  }

  else
  {
    v17 = unsignedIntValue3;
  }

  if (unsignedIntValue2 > v17)
  {
    v17 = unsignedIntValue2;
  }

  if (v17 <= 0xFFF)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v16.i64[0] = __PAIR64__(unsignedIntValue2, unsignedIntValue);
  v16.i32[2] = unsignedIntValue3;
  v18 = vaddq_s32(vdupq_n_s32(v17 >> 1), vshlq_n_s32(v16, 0xCuLL));
  v18.i32[0] /= v17;
  v18.i32[1] /= v17;
  v18.i32[2] /= v17;
  v19 = vcvtq_f32_u32(v18);
  v20 = fmaxf(fmaxf(v19.f32[0], v19.f32[2]), v19.f32[1]) / fminf(fminf(v19.f32[0], v19.f32[2]), v19.f32[1]);
  if (v20 < 1.0)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  LODWORD(v15) = llroundf(v20 * 4096.0);
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v15];
  v22 = *MEMORY[0x1E6991040];
  [(NSMutableDictionary *)self->_outputMetadata setObject:v21 forKeyedSubscript:*MEMORY[0x1E6991040]];

  v23 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v22];

  if (!v23)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  return 0;
}

+ (int)getColorCalibrationsUsingIdealColorCalbrations:(id)calbrations absoluteColorCalibrations:(id)calibrations colorCalibrationsOut:(id *)out awbConfig:(id)config
{
  calbrations;
  calibrations;
  configCopy = config;
  operator new();
}

+ (int)calculateSTRBKeyFromWideCamera:(id *)camera moduleConfig:(id)config secondaryModuleConfig:(id)moduleConfig
{
  config;
  moduleConfig;
  operator new();
}

+ (int)calculateSTRBKeyFromWideCameraLatticeModel:(id *)model moduleConfig:(id)config absoluteColorCalibrations:(id)calibrations secondaryModuleConfig:(id)moduleConfig secondaryAbsoluteColorCalibrations:(id)colorCalibrations
{
  configCopy = config;
  calibrations;
  moduleConfigCopy = moduleConfig;
  colorCalibrations;
  operator new();
}

+ (int)translateAWBGainsToSecondaryPortType:(id)type cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo primaryRGain:(float)gain primaryBGain:(float)self0 secondaryChannelID:(unsigned int)self1 secondaryRGain:(float *)self2 secondaryBGain:(float *)self3
{
  type;
  info;
  metadata;
  rect;
  config;
  cameraInfo;
  operator new();
}

+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo
{
  bCopy = b;
  infoCopy = info;
  metadataCopy = metadata;
  rectCopy = rect;
  configCopy = config;
  cameraInfoCopy = cameraInfo;
  LODWORD(v21) = +[FWPlatformIDUtilities getFWPlatformID];
  v19 = [AWBAlgorithm getInternalAWBMetadataForMIWB:bCopy cameraInfo:infoCopy metadata:metadataCopy validRect:rectCopy secondaryModuleConfig:configCopy secondaryCameraInfo:cameraInfoCopy platformID:v21];

  return v19;
}

+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo platformID:(int)d
{
  bCopy = b;
  infoCopy = info;
  metadataCopy = metadata;
  rectCopy = rect;
  configCopy = config;
  cameraInfoCopy = cameraInfo;
  v43 = 0;
  v42 = 0;
  [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F20] defaultValue:4096 found:&v42];
  if (v42)
  {
    LODWORD(v36) = [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990EE0] defaultValue:4096 found:&v42];
    if (v42 == 1)
    {
      v35 = *MEMORY[0x1E6990E20];
      v18 = [metadataCopy objectForKeyedSubscript:?];

      if (v18)
      {
        v20 = [metadataCopy objectForKeyedSubscript:v35];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E6990E30]];
          v23 = v22;
          if (v22)
          {
            v41 = 0;
            v24 = [v22 cmi_intValueForKey:*MEMORY[0x1E6990F38] defaultValue:4096 found:&v41];
            v40 = 0;
            v25 = [v23 cmi_intValueForKey:*MEMORY[0x1E6990F28] defaultValue:4096 found:&v40];
            if (v41)
            {
              if (cameraInfoCopy)
              {
                if (configCopy)
                {
                  if (v40)
                  {
                    *&v26 = v24;
                    *&v27 = v25;
                    LODWORD(v30) = 4;
                    v28 = [AWBAlgorithm translateAWBGainsToSecondaryPortType:configCopy cameraInfo:cameraInfoCopy metadata:metadataCopy validRect:rectCopy secondaryModuleConfig:bCopy secondaryCameraInfo:infoCopy primaryRGain:v26 primaryBGain:v27 secondaryChannelID:v30 secondaryRGain:&v43 + 4 secondaryBGain:&v43];
                    if (v28)
                    {
                      LODWORD(v31) = v28;
                      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v31, v9, v32, v33, v34, v35, v36, configCopy);
                    }
                  }
                }
              }
            }
          }
        }
      }

      LODWORD(v19) = HIDWORD(v43);
      if (*(&v43 + 1) != 0.0 || (*(&v43 + 1) = [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F38] defaultValue:4096 found:{&v42, v19}], v42 == 1))
      {
        LODWORD(v19) = v43;
        if (*&v43 != 0.0 || (*&v19 = [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F28] defaultValue:4096 found:{&v42, v19}], *&v43 = *&v19, v42 == 1))
        {
          [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F90] defaultValue:6500 found:{&v42, v19}];
          if (v42 == 1)
          {
            *&v43 = *&v43 * 0.00024414;
            *(&v43 + 1) = *(&v43 + 1) * 0.00024414;
            operator new();
          }
        }
      }
    }
  }

  return 0;
}

+ (int)encodeSetFileIDForModuleConfig:(id)config setFileID:(unsigned int *)d
{
  configCopy = config;
  v25 = 0;
  v7 = [configCopy objectForKeyedSubscript:@"SetFile"];
  v8 = [v7 objectForKeyedSubscript:@"Origin"];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v8];
    v10 = v9;
    if (v9)
    {
      [v9 setScanLocation:0];
      [v10 scanHexInt:&v25 + 4];
      [v10 setScanLocation:{objc_msgSend(v8, "rangeOfString:", @"_"}];
      [v10 scanHexInt:&v25];
      v11 = BYTE1(v25) << 8;
      LODWORD(v25) = v11;
      if (d)
      {
        v12 = 0;
        *d = (HIDWORD(v25) >> 8) | (v11 << 8) | (BYTE4(v25) << 8);
      }

      else
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v21, v25, v26, v27, v28, v29);
        v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v20, v24);
      }

      v13 = v10;
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v21, v25, v26, v27, v28, v29);
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v19, v23);
      v13 = 0;
    }
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v21, v25, v26, v27, v28, v29);
    v13 = 0;
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v18, v22);
  }

  return v12;
}

- (void)dealloc
{
  AWBAlgorithmObj = self->_AWBAlgorithmObj;
  if (AWBAlgorithmObj)
  {
    (*(AWBAlgorithmObj->var0 + 1))(AWBAlgorithmObj, a2);
  }

  self->_AWBAlgorithmObj = 0;
  v4.receiver = self;
  v4.super_class = AWBAlgorithm;
  [(AWBAlgorithm *)&v4 dealloc];
}

- (CGRect)tileStatsROIRect
{
  x = self->_tileStatsROIRect.origin.x;
  y = self->_tileStatsROIRect.origin.y;
  width = self->_tileStatsROIRect.size.width;
  height = self->_tileStatsROIRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbComboGains
{
  bGain = self->_awbComboGains.bGain;
  v3 = *&self->_awbComboGains.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbComboGainsNormalized
{
  bGain = self->_awbComboGainsNormalized.bGain;
  v3 = *&self->_awbComboGainsNormalized.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbGains
{
  bGain = self->_awbGains.bGain;
  v3 = *&self->_awbGains.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- (id).cxx_construct
{
  *(self + 315) = 0u;
  *(self + 314) = 0u;
  *(self + 313) = 0u;
  return self;
}

- (uint64_t)translateAWBGainsToSecondaryChannelID:(_DWORD *)a1 secondaryChannelID:secondaryConfig:secondaryAWBParams:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)_updateHRGainDownRatioMetadata
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *self = result;
  return result;
}

@end