uint64_t AVCaptureIsRunningInMacCatalystEnvironment()
{
  if (AVCaptureIsRunningInMacCatalystEnvironment_once != -1)
  {
    AVCaptureIsRunningInMacCatalystEnvironment_cold_1();
  }

  return AVCaptureIsRunningInMacCatalystEnvironment_isCatalystApp;
}

void *__AVCaptureIsRunningInMacCatalystEnvironment_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  AVCaptureIsRunningInMacCatalystEnvironment_isCatalystApp = result;
  return result;
}

uint64_t __avgestalt_buildDataBase_block_invoke()
{
  sAVGestaltBoolDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sAVGestaltIntegerDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sAVGestaltFloatDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sAVGestaltStringDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  ModelSpecificName = FigCaptureGetModelSpecificName();
  AVGestaltGetDeviceFeatures(ModelSpecificName, sAVGestaltBoolDataBase, sAVGestaltIntegerDataBase, sAVGestaltFloatDataBase, sAVGestaltStringDataBase);
  [sAVGestaltBoolDataBase setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", FigCapturePlatformSupportsExclaves() != 0), @"AVGQCaptureAttentionDetectionSupported"}];
  [sAVGestaltBoolDataBase setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"AVGQCaptureDefaultDevicePrefersUnsuspendedAndAllowsAnyPosition"];
  v1 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 3)
  {
    v2 = 1;
  }

  else if (dyld_get_active_platform() == 1 || dyld_get_active_platform() == 6)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [objc_msgSend(v3 objectForInfoDictionaryKey:{AVCaptureBundleUseContinuityCameraDeviceTypeKey), "BOOLValue"}];
  }

  else
  {
    v2 = 0;
  }

  v4 = [v1 numberWithInt:v2];
  [sAVGestaltBoolDataBase setObject:v4 forKeyedSubscript:@"AVGQCaptureUseContinuityCameraDeviceType"];
  v5 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 2 || dyld_get_active_platform() == 11 || dyld_get_active_platform() == 1)
  {
    v6 = 1;
  }

  else if (dyld_get_active_platform() == 6)
  {
    v100 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [objc_msgSend(v100 objectForInfoDictionaryKey:{AVCaptureBundleUseExternalDeviceTypeKey), "BOOLValue"}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 numberWithInt:v6];
  [sAVGestaltBoolDataBase setObject:v7 forKeyedSubscript:@"AVGQCaptureUseExternalDeviceType"];
  v8 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 2)
  {
    v9 = dyld_program_sdk_at_least() ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 numberWithInt:v9];
  [sAVGestaltBoolDataBase setObject:v10 forKeyedSubscript:@"AVGQCaptureProResRawVDORotationAndMirroringSupported"];
  v11 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = dyld_program_sdk_at_least();
  }

  v13 = [v11 numberWithInt:v12];
  [sAVGestaltBoolDataBase setObject:v13 forKeyedSubscript:@"AVGQCaptureDICOMSupported"];
  v14 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = dyld_program_sdk_at_least();
  }

  v16 = [v14 numberWithInt:v15];
  [sAVGestaltBoolDataBase setObject:v16 forKeyedSubscript:@"AVGQCaptureMultipleAudioDataOutputsSupported"];
  v17 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = dyld_program_sdk_at_least();
  }

  v19 = [v17 numberWithInt:v18];
  [sAVGestaltBoolDataBase setObject:v19 forKeyedSubscript:@"AVGQCaptureDeferredStartSupported"];
  v20 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = dyld_program_sdk_at_least() ^ 1;
  }

  v22 = [v20 numberWithInt:v21];
  [sAVGestaltBoolDataBase setObject:v22 forKeyedSubscript:@"AVGQCaptureSessionMultiCamCaptureAlwaysRequiresSupportedFormats"];
  v23 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = dyld_program_sdk_at_least();
  }

  v25 = [v23 numberWithInt:v24];
  [sAVGestaltBoolDataBase setObject:v25 forKeyedSubscript:@"AVGQCaptureMultitaskingCameraAccessVoipAppsSupported"];
  v26 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = dyld_program_sdk_at_least();
  }

  v28 = [v26 numberWithInt:v27];
  [sAVGestaltBoolDataBase setObject:v28 forKeyedSubscript:@"AVGQCaptureDepthWithDeepFusionSupported"];
  v29 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = dyld_program_sdk_at_least();
  }

  v31 = [v29 numberWithInt:v30];
  [sAVGestaltBoolDataBase setObject:v31 forKeyedSubscript:@"AVGQCaptureZeroShutterLagAutomaticallyEnabled"];
  v32 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = dyld_program_sdk_at_least();
  }

  v34 = [v32 numberWithInt:v33];
  [sAVGestaltBoolDataBase setObject:v34 forKeyedSubscript:@"AVGQCaptureCheckIfFileAlreadyExistForMFO"];
  v35 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = dyld_program_sdk_at_least();
  }

  v37 = [v35 numberWithInt:v36];
  [sAVGestaltBoolDataBase setObject:v37 forKeyedSubscript:@"AVGQCaptureSimultaneousADOMFOVDOOutputsSupported"];
  v38 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = dyld_program_sdk_at_least();
  }

  v40 = [v38 numberWithInt:v39];
  [sAVGestaltBoolDataBase setObject:v40 forKeyedSubscript:@"AVGQCaptureMultipleVideoDataOutputsSupported"];
  v41 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = dyld_program_sdk_at_least();
  }

  v43 = [v41 numberWithInt:v42];
  [sAVGestaltBoolDataBase setObject:v43 forKeyedSubscript:@"AVGQCaptureFaceDrivenAEAFOnByDefault"];
  v44 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = dyld_program_sdk_at_least();
  }

  v46 = [v44 numberWithInt:v45];
  [sAVGestaltBoolDataBase setObject:v46 forKeyedSubscript:@"AVGQCaptureHighPhotoQualityFrameDropAllowed"];
  v47 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v48 = 0;
  }

  else
  {
    v48 = dyld_program_sdk_at_least();
  }

  v49 = [v47 numberWithInt:v48];
  [sAVGestaltBoolDataBase setObject:v49 forKeyedSubscript:@"AVGQCaptureDeviceSupportsCinematicVideoFocusAtPoint"];
  v50 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = dyld_program_sdk_at_least();
  }

  v52 = [v50 numberWithInt:v51];
  [sAVGestaltBoolDataBase setObject:v52 forKeyedSubscript:@"AVGQCaptureExtendedCinematicVISSupported"];
  v53 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = dyld_program_sdk_at_least();
  }

  v55 = [v53 numberWithInt:v54];
  [sAVGestaltBoolDataBase setObject:v55 forKeyedSubscript:@"AVGQCaptureMFOSupportsPhotoFormats"];
  v56 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = dyld_program_sdk_at_least();
  }

  v58 = [v56 numberWithInt:v57];
  [sAVGestaltBoolDataBase setObject:v58 forKeyedSubscript:@"AVGQCaptureMFOVideoSettingsSupportCompressionProperties"];
  v59 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v60 = 0;
  }

  else
  {
    v60 = dyld_program_sdk_at_least();
  }

  v61 = [v59 numberWithInt:v60];
  [sAVGestaltBoolDataBase setObject:v61 forKeyedSubscript:@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat"];
  v62 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v63 = 0;
  }

  else
  {
    v63 = dyld_program_sdk_at_least();
  }

  v64 = [v62 numberWithInt:v63];
  [sAVGestaltBoolDataBase setObject:v64 forKeyedSubscript:@"AVGQCaptureDevicesShouldBeSortedByDeviceType"];
  v65 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = dyld_program_sdk_at_least();
  }

  v67 = [v65 numberWithInt:v66];
  [sAVGestaltBoolDataBase setObject:v67 forKeyedSubscript:@"AVGQCaptureAppsMayUseHEVC"];
  v68 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = dyld_program_sdk_at_least();
  }

  v70 = [v68 numberWithInt:v69];
  [sAVGestaltBoolDataBase setObject:v70 forKeyedSubscript:@"AVGQCaptureADOSupportsAudioCaptureWithPhotoFormats"];
  v71 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v72 = 0;
  }

  else
  {
    v72 = dyld_program_sdk_at_least();
  }

  v73 = [v71 numberWithInt:v72];
  [sAVGestaltBoolDataBase setObject:v73 forKeyedSubscript:@"AVGQCaptureMicrophoneUsesDecoupledIO"];
  v74 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v75 = 0;
  }

  else
  {
    v75 = dyld_program_sdk_at_least() ^ 1;
  }

  v76 = [v74 numberWithInt:v75];
  [sAVGestaltBoolDataBase setObject:v76 forKeyedSubscript:@"AVGQCaptureConnectionAlwaysSelectsStandardVISFor720p30"];
  v77 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v78 = 0;
  }

  else
  {
    v78 = dyld_program_sdk_at_least();
  }

  v79 = [v77 numberWithInt:v78];
  [sAVGestaltBoolDataBase setObject:v79 forKeyedSubscript:@"AVGQCaptureConnectionCinematicVISAwareAPIsAreAvailable"];
  v80 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = dyld_program_sdk_at_least();
  }

  v82 = [v80 numberWithInt:v81];
  [sAVGestaltBoolDataBase setObject:v82 forKeyedSubscript:@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated"];
  v83 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v84 = 0;
  }

  else
  {
    v84 = dyld_program_sdk_at_least();
  }

  v85 = [v83 numberWithInt:v84];
  [sAVGestaltBoolDataBase setObject:v85 forKeyedSubscript:@"AVGQCaptureSessionUsesAppAudioSessionByDefault"];
  v86 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v87 = 0;
  }

  else
  {
    v87 = dyld_program_sdk_at_least() ^ 1;
  }

  v88 = [v86 numberWithInt:v87];
  [sAVGestaltBoolDataBase setObject:v88 forKeyedSubscript:@"AVGQCaptureMetadataOutputCapturesFacesByDefault"];
  v89 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v90 = 0;
  }

  else
  {
    v90 = dyld_program_sdk_at_least();
  }

  v91 = [v89 numberWithInt:v90];
  [sAVGestaltBoolDataBase setObject:v91 forKeyedSubscript:@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"];
  v92 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v93 = 0;
  }

  else
  {
    v93 = dyld_program_sdk_at_least() ^ 1;
  }

  v94 = [v92 numberWithInt:v93];
  [sAVGestaltBoolDataBase setObject:v94 forKeyedSubscript:@"AVGQCaptureMFOStabilizationIsAlwaysOn"];
  v95 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v96 = 0;
  }

  else
  {
    v96 = dyld_program_sdk_at_least();
  }

  v97 = [v95 numberWithInt:v96];
  v98 = sAVGestaltBoolDataBase;

  return [v98 setObject:v97 forKeyedSubscript:@"AVGQCaptureVDOFrameRatePropertiesAreDeprecated"];
}

void *AVGestaltGetDeviceFeatures(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = 40;
  for (i = &off_1E7871090; ; i += 2)
  {
    result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{*(i - 1)), "componentsSeparatedByString:", @"-", "containsObject:", a1}];
    if (result)
    {
      break;
    }

    if (!--v10)
    {
      return result;
    }
  }

  v13 = *i;
  if (*i)
  {
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", *v13), @"AVGQCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[1]), @"AVGQCameraFlashCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[2]), @"AVGQCameraFrontFlashCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[3]), @"AVGQCameraHDR2Capability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[4]), @"AVGQCameraLiveEffectsCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[5]), @"AVGQCaptureSessionSupportsMultiCamCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[6]), @"AVGQDeviceHasAggregateCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[7]), @"AVGQB7LQTMQIRMWVL3QHSIGQY3YFAA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[8]), @"AVGQDeviceSupportsAutoLowLightVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[9]), @"AVGQDeviceSupportsBravoCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[10]), @"AVGQDeviceSupportsBravoPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[11]), @"AVGQDeviceSupportsCameraCaptureOnTouchDown"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[12]), @"AVGQDeviceSupportsCameraDeferredProcessing"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[13]), @"AVGQDeviceSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[14]), @"AVGQ3FYMJTRW4LUXTNAFCC6XVFTDHA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[15]), @"AVGQDeviceSupportsContentAwareDistortionCorrection"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[16]), @"AVGQ3J3FEVOOCNOKKTK3XQPUQ47DYY"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[17]), @"AVGQBPMGIAYPLJA32XFRAAWDO5G4G4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[18]), @"AVGQDeviceSupportsDeferredPortraitRendering"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[19]), @"AVGQDeviceSupportsDepthWithDeepFusion"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[20]), @"AVGQDeviceSupportsExposureBiasWithoutExposureLock"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[21]), @"AVGQDeviceSupportsExtendedEnhancedCinematicVideoStabilization"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[22]), @"AVGQODGWLXGASKA4RNU2OP6Z44TGZ4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[23]), @"AVGQN46I2BPHSDKPVN3YSGNPHPTAPE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[24]), @"AVGQVYXTSFZ3R7TURIB5WPPITDPJLY"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[25]), @"AVGQDeviceSupportsFrontFacingCameraMirroredVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[26]), @"AVGQDeviceSupportsFrontFacingCameraNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[27]), @"AVGQDeviceSupportsFrontFacingCameraSmartHDR"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[28]), @"AVGQDeviceSupportsFrontFacingCameraSuperWide"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[29]), @"AVGQDeviceSupportsFrontFacingCameraZoomToggle"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[30]), @"AVGQDeviceSupportsFrontPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[31]), @"AVGQ6HD7ZNZD33DG7SG4DOHIPW4SUQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[32]), @"AVGQDeviceSupportsHDREV0Capture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[33]), @"AVGQLBZEVZETJU77LU4MEZH4LWJ54M"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[34]), @"AVGQCACKZRYIKJ5BE2QI3FAY65ZYJA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[35]), @"AVGQDeviceSupportsLinearDNG"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[36]), @"AVGQDeviceSupportsLivePhotoAuto"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[37]), @"AVGQDeviceSupportsMomentCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[38]), @"AVGQDeviceSupportsP3ColorspaceVideoRecording"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[39]), @"AVGQDeviceSupportsPortraitIntensityAdjustments"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[40]), @"AVGQDeviceSupportsPortraitLightEffectFilters"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[41]), @"AVGQL72SILMBLRSKPL2V4VLPUD2TDU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[42]), @"AVGQDeviceSupportsProResVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[43]), @"AVGQDeviceSupportsResponsiveShutter"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[44]), @"AVGQKYDMKTE2UUKHJCGGZGQNYH5GDE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[45]), @"AVGQIIPQVVOWR6BFMGVVBAM7ZDTIW4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[46]), @"AVGQIDWZFGNLZOQVZINTCD5JZM57DE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[47]), @"AVGQDeviceSupportsSemanticDevelopment"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[48]), @"AVGQDeviceSupportsSemanticStyles"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[49]), @"AVGQDeviceSupportsSingleCameraPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[50]), @"AVGQJQYPVTLPCNY4PHM26XACLZH4PU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[51]), @"AVGQX3DWIDHL6QYY3OCER3G5UEM2QU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[52]), @"AVGQDeviceSupportsSpatialOverCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[53]), @"AVGQDeviceSupportsStageLightPortraitPreview"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[54]), @"AVGQDeviceSupportsStereoAudioRecording"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[55]), @"AVGQMZMLNHBX4MFF5QD4PJWZFEVCEI"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[56]), @"AVGQBWQSOG5QWWG276TG2HH4RGJZDA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[57]), @"AVGQDeviceSupportsStudioLightPortraitPreview"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[58]), @"AVGQDeviceSupportsSuperWideAutoMacro"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[59]), @"AVGQDeviceSupportsTimelapseNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[60]), @"AVGQDJVGPJA65CJA2ZPQZL4GRPYDYA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[61]), @"AVGQDeviceSupportsTrueVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[62]), @"AVGQDeviceSupportsVariableFrameRateVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[63]), @"AVGQDeviceSupportsWideBravoCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[64]), @"AVGQDeviceSupportsWideBravoPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[65]), @"AVGQDeviceSupportsWideBravoPortraitNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[66]), @"AVGQVNFDPYA37ZIZPRZOSYS4KMQIJ4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[67]), @"AVGQDeviceSupportsZoomPictureInPicture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[68]), @"AVGQFrontFacingCameraAutoHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[69]), @"AVGQFrontFacingCameraBurstCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[70]), @"AVGQFrontFacingCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[71]), @"AVGQFrontFacingCameraDeferredPrewarmingDisabled"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[72]), @"AVGQFrontFacingCameraHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[73]), @"AVGQFrontFacingCameraHDROnCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[74]), @"AVGQFrontFacingCameraHFRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[75]), @"AVGQFrontFacingCameraPortraitModeCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[76]), @"AVGQFrontFacingCameraSingleCameraPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[77]), @"AVGQFrontFacingCameraStageLightPortraitCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[78]), @"AVGQFrontFacingCameraSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[79]), @"AVGQFrontFacingCameraSupportsCinematicVideo4K"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[80]), @"AVGQCB54MH3XAXNGTVD2SAMOV5WWOQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[81]), @"AVGQ4UHSO4KRGIJFZHZ3EAGDMAK6CA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[82]), @"AVGQOKRXQZPHFZ4X2XCPOHTANZXNGM"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[83]), @"AVGQBGWR3YSZWCQ7BKUUAOT5CCLHHE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[84]), @"AVGQT42HZJM7T4BHFEGWILGWIJSNEQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[85]), @"AVGQFrontFacingCameraSupportsPortraitAutoSuggest"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[86]), @"AVGQYPHR3FTUAZCCTEYFPSINLTE7DI"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[87]), @"AVGQHEVCEncodingCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[88]), @"AVGQHasAppleNeuralEngine"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[89]), @"AVGQMedusaOverlayAppCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[90]), @"AVGQPanoramaCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[91]), @"AVGQPearlCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[92]), @"AVGQPhotosPostEffectsCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[93]), @"AVGQPipelinedStillImageProcessingCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[94]), @"AVGQDINRSVRALL7UYNXKHVSIWKZLRA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[95]), @"AVGQRearFacingCamera60fpsVideoCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[96]), @"AVGQRearFacingCameraAutoHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[97]), @"AVGQRearFacingCameraBurstCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[98]), @"AVGQRearFacingCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[99]), @"AVGQRearFacingCameraFocusPixelCalibrationCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[100]), @"AVGQRearFacingCameraHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[101]), @"AVGQRearFacingCameraHDROnCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[102]), @"AVGQRearFacingCameraHFRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[103]), @"AVGQRearFacingCameraPortraitModeCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[104]), @"AVGQRearFacingCameraStageLightPortraitCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[105]), @"AVGQRearFacingCameraSuperWideCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[106]), @"AVGQPEABAPB242SGF4J5L26EX5YTKA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[107]), @"AVGQRearFacingCameraSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[108]), @"AVGQRearFacingCameraSupportsCinematicVideo4K"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[109]), @"AVGQRearFacingCameraSupportsPortraitAutoSuggest"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[110]), @"AVGQHSSMVIQNR3MAPIGELAQM7DWP4U"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[111]), @"AVGQRearFacingCameraTimeOfFlightCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[112]), @"AVGQQ4PFVIJ6WPTAHHYTAR5J5O7YNA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[113]), @"AVGQRearFacingLowLightCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[114]), @"AVGQRearFacingTelephotoCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[115]), @"AVGQRearWideCameraDisplayCustomZoomStops"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[116]), @"AVGQSphereCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[117]), @"AVGQSupportsIrisCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[118]), @"AVGQVideoCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[119]), @"AVGQVideoStillsCapability"}];
    LODWORD(v14) = *(v13 + 30);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), @"AVGQFrontFacingCameraMaxPhotoZoomFactor"}];
    LODWORD(v15) = *(v13 + 31);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v15), @"AVGQRearFacingAggregateDeviceMaxCinematicZoomFactor"}];
    LODWORD(v16) = *(v13 + 32);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v16), @"AVGQRearFacingAggregateDeviceMaxPortraitZoomFactor"}];
    LODWORD(v17) = *(v13 + 33);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v17), @"AVGQRearFacingCameraMaxPhotoZoomFactor"}];
    LODWORD(v18) = *(v13 + 34);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v18), @"AVGQSN3QUOWTBFYIVAQOVNQEVK6G4M"}];
    LODWORD(v19) = *(v13 + 35);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v19), @"AVGQAJT7KNQJHRRDW5Q5QTGETOLK2E"}];
    LODWORD(v20) = *(v13 + 36);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v20), @"AVGQHDDMQ6RTH76PQ2HVCQ4MSWG63Q"}];
    LODWORD(v21) = *(v13 + 37);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v21), @"AVGQ5RTE3RTRZZFRGK7IDFEQC7NFBE"}];
    LODWORD(v22) = *(v13 + 38);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v22), @"AVGQQIBUFDUYMZTKVBF36FTLQON3DY"}];
    LODWORD(v23) = *(v13 + 39);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"AVGQSuperWideCameraToWideCameraRelativeZoomFactor"}];
    LODWORD(v24) = *(v13 + 40);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v24), @"AVGQTorchMaxBeamWidth"}];
    LODWORD(v25) = *(v13 + 41);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v25), @"AVGQTorchMinBeamWidth"}];
    LODWORD(v26) = *(v13 + 42);
    result = [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v26), @"AVGQWideCameraToTelephotoCameraRelativeZoomFactor"}];
    if (*(v13 + 22) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQAggregateDevicePhotoZoomFactor"}];
    }

    if (*(v13 + 23) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQAggregateDeviceVideoZoomFactor"}];
    }

    if (*(v13 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 25) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraAppUIVersion"}];
    }

    if (*(v13 + 26) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraHDR10BitVideoCaptureMaxFPS"}];
    }

    if (*(v13 + 27) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraHDRVersion"}];
    }

    if (*(v13 + 28) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraMaxBurstLength"}];
    }

    if (*(v13 + 29) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCaptureSessionMaxMultiCamRGBStreamsSupported"}];
    }

    if (*(v13 + 30) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQDefaultVariableFrameRateVideoMaxFPS"}];
    }

    if (*(v13 + 31) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 32) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 33) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 34) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraMaxVideoZoomFactor"}];
    }

    if (*(v13 + 35) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraStillDurationForBurst"}];
    }

    if (*(v13 + 36) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 37) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 38) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 39) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQMinimumDiskSpaceReserved"}];
    }

    if (*(v13 + 40) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 41) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraHFRVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 42) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 43) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraMaxVideoZoomFactor"}];
    }

    if (*(v13 + 44) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraStillDurationForBurst"}];
    }

    if (*(v13 + 45) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 46) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 47) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 48) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingSuperWideCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 49) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingTeleCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 50) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingWideCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 51) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQGYSWMQKMTMQOUYQ2AKUCKEN6AA"}];
    }

    if (*(v13 + 52) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQSuperBravoCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 53) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQSuperBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 54) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQWideBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 55))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];

      return [a5 setObject:v27 forKeyedSubscript:@"AVGQFirstSupportedReleaseVersion"];
    }
  }

  return result;
}

uint64_t AVGestaltGetBoolAnswer(uint64_t a1)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v1 = objc_msgSend_objectForKeyedSubscript_(sAVGestaltBoolDataBase);

  return [v1 BOOLValue];
}

void *AVGestaltGetStringAnswerWithDefault(uint64_t a1, uint64_t a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  result = objc_msgSend_objectForKeyedSubscript_(sAVGestaltStringDataBase);
  if (!result)
  {
    return a2;
  }

  return result;
}

uint64_t AVCaptureClientHasEntitlement(void *a1)
{
  if ([a1 isEqualToString:AVCaptureEntitlementShutterSoundManipulation])
  {
    v2 = &AVCaptureClientHasEntitlement_shutterManipulationAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkShutterManipulationOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementOfflineVideoStabilizer])
  {
    v2 = &AVCaptureClientHasEntitlement_offlineVideoStabilizerAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkOfflineVideoStabilizerOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementFilterRendering])
  {
    v2 = &AVCaptureClientHasEntitlement_filterRenderingAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkFilterRenderingOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementDeferredPhotoProcessor])
  {
    v2 = &AVCaptureClientHasEntitlement_deferredPhotoProcessingAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkDeferredPhotoProcessingOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementDeskViewCamera])
  {
    v2 = &AVCaptureClientHasEntitlement_overheadCameraAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkOverheadCameraOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementMultitaskingCameraAccess])
  {
    v2 = &AVCaptureClientHasEntitlement_multitaskingCameraAccessAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkMultitaskingCameraAccessOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementSetAnyUserPreferredCamera])
  {
    v2 = &AVCaptureClientHasEntitlement_setAnyUserPreferredCameraAllowed;
    v3 = &AVCaptureClientHasEntitlement_setAnyUserPreferredCameraOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementMetadataCameras])
  {
    v2 = &AVCaptureClientHasEntitlement_metadataCamerasAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkMetadataCamerasOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementWebBrowserEngineRendering])
  {
    v2 = &AVCaptureClientHasEntitlement_isWebBrowserEngineGPUProcess;
    v3 = &AVCaptureClientHasEntitlement_checkWebBrowserEngineRenderingOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementProxyDevices])
  {
    v2 = &AVCaptureClientHasEntitlement_proxyDevicesAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkProxyDevicesOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementCameraStolenInterruptor])
  {
    v2 = &AVCaptureClientHasEntitlement_cameraStolenInterruptorAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkCameraStolenInterruptorOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementVDOPreparesCellularRadioForMRC])
  {
    v2 = &AVCaptureClientHasEntitlement_vdoPreparesCellularRadioForMRC;
    v3 = &AVCaptureClientHasEntitlement_checkVDOPreparesCellularRadioForMRCOnceToken;
  }

  else
  {
    if (![a1 isEqualToString:AVCaptureEntitlementAudioFormatOverride])
    {
      v4 = 0;
      return v4 & 1;
    }

    v2 = &AVCaptureClientHasEntitlement_audioFormatOverride;
    v3 = &AVCaptureClientHasEntitlement_checkAudioFormatOverrideOnceToken;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __AVCaptureClientHasEntitlement_block_invoke;
  v6[3] = &unk_1E786ECD0;
  v6[4] = a1;
  v6[5] = v2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = *v2;
  return v4 & 1;
}

__CFString *AVCaptureClientPreferencesDomain()
{
  v0 = sClientPreferencesDomain;
  if (sClientPreferencesDomain)
  {
    return v0;
  }

  if (AVCaptureCurrentClientIsFaceTimeVariant_sOnceToken != -1)
  {
    AVCaptureCurrentClientIsFaceTimeVariant_cold_1();
  }

  if (AVCaptureCurrentClientIsFaceTimeVariant_sAnswer == 1)
  {
    v0 = @"com.apple.facetime";
    v1 = 1;
  }

  else
  {
    v0 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsDomainForClient];
    v1 = v0 != 0;
    if (!v0)
    {
      v0 = @"unknown";
      if (!v1)
      {
        return v0;
      }

      goto LABEL_12;
    }
  }

  if ([(__CFString *)v0 hasPrefix:@"com.apple.WebKit"])
  {
    v0 = @"com.apple.mobilesafari";
  }

  if (v1)
  {
LABEL_12:
    os_unfair_lock_lock(&sClientPreferencesDomainLock);
    if (!sClientPreferencesDomain)
    {
      sClientPreferencesDomain = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v0];
    }

    os_unfair_lock_unlock(&sClientPreferencesDomainLock);
  }

  return v0;
}

void __AVCaptureCurrentClientIsFaceTimeVariant_block_invoke(uint64_t a1)
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  AVCaptureCurrentClientIsFaceTimeVariant_sAnswer = AVCaptureClientIsFaceTimeVariant(v1);
}

uint64_t AVCaptureClientIsFaceTimeVariant(void *a1)
{
  if ([a1 isEqualToString:@"com.apple.mediaserverd"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", 0x1F1CBF6C8) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", 0x1F1CBF688) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.avconferenced") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.TelephonyUtilities") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.FaceTime.FaceTimeNotificationCenterService") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.VideoConference.AVConferenceTestRunneriOS") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.AVConferenceTestRunnertvOS") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.facetime.legacy"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"com.apple.facetime.debug"];
}

void __AVCaptureClientHasEntitlement_block_invoke(uint64_t a1)
{
  v2 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, *(a1 + 32), 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFBooleanGetTypeID())
      {
        **(a1 + 40) = CFBooleanGetValue(v5) != 0;
      }

      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

CFStringRef AVCaptureCopyClientCodeSigningIdentifier(uint64_t a1)
{
  if (AVCaptureCopyClientCodeSigningIdentifier_sOnceToken != -1)
  {
    AVCaptureCopyClientCodeSigningIdentifier_cold_1();
  }

  v2 = AVCaptureCopyClientCodeSigningIdentifier_sClientCodeSigningIdentifier;
  if (!AVCaptureCopyClientCodeSigningIdentifier_sClientCodeSigningIdentifier)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v3, v2);
}

void __AVCaptureCopyClientCodeSigningIdentifier_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    AVCaptureCopyClientCodeSigningIdentifier_sClientCodeSigningIdentifier = SecTaskCopySigningIdentifier(v0, 0);

    CFRelease(v1);
  }
}

uint64_t AVCaptureIsRunningInMediaserverd(uint64_t a1, uint64_t a2)
{
  if (AVCaptureIsRunningInMediaserverd_sOnceToken != -1)
  {
    AVCaptureIsRunningInMediaserverd_cold_1();
  }

  return AVCaptureIsRunningInMediaserverd_sAnswer;
}

void __AVCaptureIsRunningInMediaserverd_block_invoke(uint64_t a1)
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  if (v1)
  {
    v2 = v1;
    if (CFStringGetLength(v1) == 22)
    {
      v3 = CFStringFind(v2, @"com.apple.mediaserverd", 0);
      if (v3.location)
      {
        v4 = 0;
      }

      else
      {
        v4 = v3.length == 22;
      }

      v5 = v4;
      AVCaptureIsRunningInMediaserverd_sAnswer = v5;
    }

    CFRelease(v2);
  }
}

void _registerServerConnectionDiedNotification()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 addObserverForName:*MEMORY[0x1E69904D0] object:0 queue:0 usingBlock:&__block_literal_global_1508];

  JUMPOUT(0x1AC582C50);
}

void avcdpp_dispatchNotification(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __avcdpp_dispatchNotification_block_invoke;
  block[3] = &unk_1E786ECA8;
  block[4] = a1;
  block[5] = cf;
  block[6] = a3;
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
  v5 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v5);
}

void __avcdpp_dispatchNotification_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handleNotification:*(a1 + 40) payload:*(a1 + 48)];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t AVGestaltGetIntegerAnswerWithDefault(uint64_t a1, uint64_t a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(sAVGestaltIntegerDataBase);
  if (!v3)
  {
    return a2;
  }

  return [v3 integerValue];
}

void avflashlightNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, const void *a5)
{
  if ([a3 isEqualToString:{*MEMORY[0x1E69909F0], a4}])
  {

    [a2 _reconnectToServer];
  }

  else
  {
    if (a3)
    {
      CFRetain(a3);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __avflashlightNotification_block_invoke;
    block[3] = &unk_1E786ECA8;
    block[4] = a2;
    block[5] = a3;
    block[6] = a5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void fvd_figCaptureSourceNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fvd_figCaptureSourceNotificationHandler_block_invoke;
  block[3] = &unk_1E786EFD0;
  block[4] = a2;
  block[5] = a3;
  block[6] = a5;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
  v10 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v10);
  objc_autoreleasePoolPop(v8);
}

void sub_1A9181AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9181C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float AVGestaltGetFloatAnswerWithDefault(uint64_t a1, float a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(sAVGestaltFloatDataBase);
  if (!v3)
  {
    return a2;
  }

  [v3 floatValue];
  return result;
}

void __avflashlightNotification_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handleNotification:*(a1 + 40) payload:*(a1 + 48)];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t AVGestaltGetIntegerAnswer(uint64_t a1)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v1 = objc_msgSend_objectForKeyedSubscript_(sAVGestaltIntegerDataBase);
  if (!v1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v1 integerValue];
}

uint64_t AVCaptureClientIsCameraOrDerivative()
{
  if (AVCaptureClientIsCameraOrDerivative_sOnceToken != -1)
  {
    AVCaptureClientIsCameraOrDerivative_cold_1();
  }

  return AVCaptureClientIsCameraOrDerivative_sAnswer;
}

void __AVCaptureClientIsCameraOrDerivative_block_invoke(uint64_t a1)
{
  v2 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  if (([(__CFString *)v2 isEqualToString:0x1F1CBF648]& 1) != 0 || ([(__CFString *)v2 isEqualToString:0x1F1CBF668]& 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = [(__CFString *)v2 isEqualToString:0x1F1CC2068];
  }

  AVCaptureClientIsCameraOrDerivative_sAnswer = v1;
}

void *__AVCaptureSessionIsDeferredStartSupported_block_invoke()
{
  result = AVGestaltGetBoolAnswer(@"AVGQCaptureDeferredStartSupported");
  AVCaptureSessionIsDeferredStartSupported_deferredStartSupported = result;
  return result;
}

void sub_1A9182EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _registerVideoDevicesOnce()
{
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  if (sRegisteredVideoDevices)
  {

    os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  }

  else
  {
    sSourceInfoArrayChangedNotificationQueue = dispatch_queue_create("com.apple.avfoundation.capturedevice.source_info_array_changed_queue", 0);
    CStringPtr = CFStringGetCStringPtr(*MEMORY[0x1E6990560], 0x8000100u);
    notify_register_dispatch(CStringPtr, &sSourceInfoArrayChangedNotificationToken, sSourceInfoArrayChangedNotificationQueue, &__block_literal_global_1515);
    v1 = [NSClassFromString(&cfstr_Avcapturefigvi.isa) _devices];
    sRegisteredVideoDevices = v1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v12;
LABEL_7:
      v5 = 0;
      while (1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        if ([v6 deviceType] == @"AVCaptureDeviceTypeBuiltInWideAngleCamera" && objc_msgSend(v6, "position") == 2)
        {
          break;
        }

        if (v3 == ++v5)
        {
          v3 = [v1 countByEnumeratingWithState:&v11 objects:v10 count:16];
          if (v3)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v9 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
    FigCameraUsageRegisterChangeHandler();
  }
}

void *AVControlCenterPreferencesDomainForPreferencesDomain(void *a1)
{
  if ([a1 isEqualToString:@"global"])
  {
    return a1;
  }

  v2 = 0x1F1CBF688;
  if (([a1 isEqualToString:0x1F1CBF688] & 1) == 0)
  {
    if (AVCaptureCurrentClientIsFaceTimeVariant_sOnceToken != -1)
    {
      AVCaptureCurrentClientIsFaceTimeVariant_cold_1();
    }

    if ((AVCaptureCurrentClientIsFaceTimeVariant_sAnswer & 1) == 0)
    {
      if ([a1 hasPrefix:@"com.apple.WebKit"])
      {
        return @"com.apple.mobilesafari";
      }

      else
      {
        return a1;
      }
    }
  }

  return v2;
}

uint64_t AVControlCenterVideoEffectsCenterStageControlModePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-controlmode", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsCenterStageEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsCenterStageUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsCenterStageMigrationCompletePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-migration-complete", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

void *AVControlCenterMigrateDefaultsForKeys(void *a1, void *a2, uint64_t a3)
{
  result = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton "objectForKey:"BOOLValue"")];
  if (result)
  {
    return result;
  }

  v7 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  v8 = [v7 isEqualToString:0x1F1CBF688];
  if (v7 && (v9 = v8, ![v7 isEqualToString:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")}]))
  {
    if (!v9)
    {
      v20 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
      v21 = [v20 dataContainerURL];
      v11 = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:v7 container:v21];

      goto LABEL_6;
    }

    v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  v11 = v10;
LABEL_6:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [a2 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(a2);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        v17 = objc_msgSend_objectForKeyedSubscript_(a2);
        v18 = [v11 objectForKey:v16];
        if (v18)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          [AVCaptureProprietaryDefaultsSingleton setObject:v18 forKey:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [a2 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v13);
  }

  return [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E118] forKey:a3];
}

uint64_t AVCaptureCurrentClientIsFaceTimeVariant()
{
  if (AVCaptureCurrentClientIsFaceTimeVariant_sOnceToken != -1)
  {
    AVCaptureCurrentClientIsFaceTimeVariant_cold_1();
  }

  return AVCaptureCurrentClientIsFaceTimeVariant_sAnswer;
}

uint64_t AVControlCenterVideoEffectsReactionsEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@reactions-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsGesturesEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@gestures-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254()
{
  if (AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_sOnceToken != -1)
  {
    AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_cold_1();
  }

  return AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_sAnswer;
}

void __AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_block_invoke(uint64_t a1)
{
  v2 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  if (([(__CFString *)v2 isEqualToString:@"com.apple.camera"]& 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = [(__CFString *)v2 isEqualToString:@"com.apple.VisionKit.KeyboardCamera"];
  }

  AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_sAnswer = v1;
}

uint64_t AVControlCenterVideoEffectsPortraitEffectEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectAperturePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-aperture", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsReactionsUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@reactions-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectControlModePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-controlmode", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectMigrationCompletePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-migration-complete", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingControlModePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-controlmode", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingIntensityPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-intensity", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVCaptureIsRunningInXCTest()
{
  if (AVCaptureIsRunningInXCTest_sOnceToken != -1)
  {
    AVCaptureIsRunningInXCTest_cold_1();
  }

  return AVCaptureIsRunningInXCTest_sAnswer;
}

void __AVCaptureIsRunningInXCTest_block_invoke(uint64_t a1)
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  Length = CFStringGetLength(v1);
  v4 = Length;
  if (Length <= 63)
  {
    if (Length == 16)
    {
      v5 = @"com.apple.xctest";
      goto LABEL_14;
    }

    if (Length == 24)
    {
      v5 = @"com.apple.dt.xctest.tool";
      goto LABEL_14;
    }
  }

  else
  {
    switch(Length)
    {
      case '@':
        v5 = @"com.apple.avfoundation.AVFCaptureTests-Embedded-Runner.xctrunner";
        goto LABEL_14;
      case 'D':
        v5 = @"com.apple.avfoundation.AVFoundation-OSX-Capture-Unit-Tests.xctrunner";
        goto LABEL_14;
      case 'L':
        v5 = @"com.apple.avfoundation.AVFoundation-macCatalyst-Capture-Unit-Tests.xctrunner";
LABEL_14:
        v6 = CFStringFind(v2, v5, 0);
        if (v6.location)
        {
          v7 = 0;
        }

        else
        {
          v7 = v6.length == v4;
        }

        v8 = v7;
        AVCaptureIsRunningInXCTest_sAnswer = v8;
        break;
    }
  }

  CFRelease(v2);
}

void __AVCaptureClientIsInternalTestTool_block_invoke(uint64_t a1)
{
  v2 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  if (([(__CFString *)v2 isEqualToString:@"com.apple.avfoundation.figcam"]& 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = [(__CFString *)v2 isEqualToString:@"com.apple.avcapture"];
  }

  AVCaptureClientIsInternalTestTool_sAnswer = v1;
}

uint64_t AVCaptureClientIsInternalTestTool()
{
  if (AVCaptureClientIsInternalTestTool_sOnceToken != -1)
  {
    AVCaptureClientIsInternalTestTool_cold_1();
  }

  return AVCaptureClientIsInternalTestTool_sAnswer;
}

uint64_t AVControlCenterVideoEffectsReactionsTriggeredPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  if (a1)
  {
    v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
    if (!v2)
    {
      v2 = @"unknown";
    }

    v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signal/%@/", v3];
  }

  else
  {
    v4 = @"signal/";
  }

  return [v1 stringWithFormat:@"%@reaction-trigger", v4];
}

uint64_t AVControlCenterVideoEffectsReactionsInProgressPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  if (a1)
  {
    v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
    if (!v2)
    {
      v2 = @"unknown";
    }

    v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signal/%@/", v3];
  }

  else
  {
    v4 = @"signal/";
  }

  return [v1 stringWithFormat:@"%@reactions-active", v4];
}

uint64_t AVControlCenterVideoEffectsHaveShownGesturesDefaultDisabledNotificationPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@did-show-gestures-default-disabled-notification", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsEligibleEffectListPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@eligible-effects-list", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

void __AVCaptureClientIsContinuityCapture_block_invoke(uint64_t a1)
{
  v2 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  if (([(__CFString *)v2 isEqualToString:0x1F1CBF768]& 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = [(__CFString *)v2 isEqualToString:0x1F1CBF788];
  }

  AVCaptureClientIsContinuityCapture_sAnswer = v1;
}

uint64_t AVCaptureClientIsContinuityCapture(uint64_t a1, uint64_t a2)
{
  if (AVCaptureClientIsContinuityCapture_sOnceToken != -1)
  {
    AVCaptureClientIsContinuityCapture_cold_1();
  }

  return AVCaptureClientIsContinuityCapture_sAnswer;
}

uint64_t AVControlCenterVideoEffectsGesturesEnabledDefaultPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@gestures-enabled-default", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsBackgroundReplacementEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@background-replacement-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsBackgroundReplacementUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@background-replacement-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsBackgroundReplacementURLBookmarkPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@background-replacement-url-bookmark", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

BOOL AVCaptureIsSensorMountedInPortraitOrientation(float a1)
{
  HIDWORD(v1) = -1527099483 * a1 + 47721856;
  LODWORD(v1) = HIDWORD(v1);
  return (v1 >> 2) < 0x16C16C1;
}

uint64_t AVControlCenterVideoEffectsModuleShouldBeShownForBundleID(void *a1)
{
  if (dword_1ED8068A0)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  if (AVCaptureClientIsFaceTimeVariant(a1))
  {
    a1 = @"com.apple.facetime";
  }

  else if ([a1 hasPrefix:@"com.apple.WebKit"])
  {
    a1 = @"com.apple.mobilesafari";
  }

  v3 = avccm_commonDisallowListForVideoEffectsAndMicModes();
  v23[0] = 0x1F1CBF648;
  v23[1] = 0x1F1CC2068;
  v23[2] = 0x1F1CBF668;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  if (([v3 containsObject:a1] & 1) != 0 || objc_msgSend(v4, "containsObject:", a1))
  {
    if (dword_1ED8068A0)
    {
      v26 = 0;
      v25 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v26;
      v15 = v25;
      if (os_log_type_enabled(v13, v25))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = 136315394;
        v18 = "AVControlCenterVideoEffectsModuleShouldBeShownForBundleID";
        v19 = 2114;
        v20 = a1;
        _os_log_send_and_compose_impl(v16, 0, v24, 128, &dword_1A917C000, v13, v15, "<<<< AVControlCenterModules >>>> %s: %{public}@ active:0 It's in the disallow list", &v17, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  else
  {
    v6 = _AVControlCenterModuleStateForBundleID(a1, v5);
    if (dword_1ED8068A0)
    {
      v26 = 0;
      v25 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v26;
      v9 = v25;
      if (os_log_type_enabled(v7, v25))
      {
        v10 = v8;
      }

      else
      {
        v10 = v8 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = [v6 isActive];
        v17 = 136315650;
        v18 = "AVControlCenterVideoEffectsModuleShouldBeShownForBundleID";
        v19 = 2114;
        v20 = a1;
        v21 = 1024;
        v22 = v11;
        _os_log_send_and_compose_impl(v10, 0, v24, 128, &dword_1A917C000, v7, v9, "<<<< AVControlCenterModules >>>> %s: %{public}@ active:%d", &v17, 28);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [v6 isActive];
  }
}

uint64_t avccm_commonDisallowListForVideoEffectsAndMicModes()
{
  v1[0] = 0x1F1CBF6A8;
  v1[1] = 0x1F1CC20A8;
  v1[2] = @"com.apple.ShazamKit";
  v1[3] = @"com.apple.VisionKit.KeyboardCamera";
  v1[4] = 0x1F1CBF768;
  v1[5] = 0x1F1CBF788;
  v1[6] = @"com.apple.livetranscriptionui";
  v1[7] = @"com.apple.BarcodeScanner";
  v1[8] = @"com.apple.measure";
  v1[9] = @"com.apple.SpeechRecognitionCore.speechrecognitiond";
  v1[10] = @"com.apple.Magnifier";
  v1[11] = @"com.apple.replayd";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:12];
}

uint64_t AVCaptureClientAllowsDeskViewCamera()
{
  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    return 1;
  }

  v1 = AVCaptureEntitlementDeskViewCamera;

  return AVCaptureClientHasEntitlement(v1);
}

uint64_t AVCaptureClientIsInternalCommandLineTool(uint64_t a1, uint64_t a2)
{
  if (AVCaptureClientIsInternalCommandLineTool_sOnceToken != -1)
  {
    AVCaptureClientIsInternalCommandLineTool_cold_1();
  }

  return AVCaptureClientIsInternalCommandLineTool_sAnswer;
}

void __AVCaptureClientIsInternalCommandLineTool_block_invoke(uint64_t a1)
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  AVCaptureClientIsInternalCommandLineTool_sAnswer = [(__CFString *)v1 isEqualToString:@"com.apple.avcapture"];
}

uint64_t AVCaptureClientExpectsCameraMountedInLandscapeOrientation(uint64_t a1, uint64_t a2)
{
  if (AVCaptureClientExpectsCameraMountedInLandscapeOrientation_sOnceToken != -1)
  {
    AVCaptureClientExpectsCameraMountedInLandscapeOrientation_cold_1();
  }

  return AVCaptureClientExpectsCameraMountedInLandscapeOrientation_sAnswer;
}

uint64_t AVCaptureSessionIsLaunchPrewarmingEnabled(uint64_t a1, uint64_t a2)
{
  if (AVCaptureSessionIsLaunchPrewarmingEnabled_onceToken != -1)
  {
    AVCaptureSessionIsLaunchPrewarmingEnabled_cold_1();
  }

  return AVCaptureSessionIsLaunchPrewarmingEnabled_launchPrewarmingEnabled;
}

uint64_t __AVCaptureSessionIsLaunchPrewarmingEnabled_block_invoke()
{
  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    result = 1;
  }

  else
  {
    result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  }

  AVCaptureSessionIsLaunchPrewarmingEnabled_launchPrewarmingEnabled = result;
  return result;
}

BOOL AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined(uint64_t a1, uint64_t a2)
{
  if (AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadataOnce != -1)
  {
    AVMediaTypeForMetadataObjects_cold_1();
  }

  return AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadata == *MEMORY[0x1E69875D8];
}

BOOL AVCapturePlatformMountsCamerasInLandscapeOrientation(uint64_t a1, uint64_t a2)
{
  if (AVCaptureClientExpectsCameraMountedInLandscapeOrientation_sOnceToken != -1)
  {
    AVCaptureClientExpectsCameraMountedInLandscapeOrientation_cold_1();
  }

  return FigCapturePlatformMountsCamerasInLandscapeOrientation() != 0;
}

uint64_t AVCaptureOutputConnectionFailureReasonString(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = objc_opt_class();
        v23 = a3;
        v24 = NSStringFromClass(v15);
        v22 = v14;
        v8 = @"<%@: %p> cannot be added because %@ only accepts metadata connections originating from the same AVCaptureInput";
        break;
      case 4:
        v9 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = objc_opt_class();
        v23 = a3;
        v24 = NSStringFromClass(v18);
        v22 = v17;
        v8 = @"<%@: %p> cannot be added because %@ only accepts AVCaptureDeviceInput metadata connections originating from the same AVCaptureDeviceInput";
        break;
      case 5:
        v4 = MEMORY[0x1E696AEC0];
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        [objc_msgSend(a3 "sourceDevice")];
        v7 = objc_opt_class();
        v23 = a3;
        v24 = NSStringFromClass(v7);
        v22 = v6;
        v8 = @"<%@: %p> cannot be added because streaming depth is not supported for the source AVCaptureDevice's activeFormat: %@";
LABEL_13:
        v19 = v4;
        return [v19 stringWithFormat:v8, v22, v23, v24];
      default:
        return 0;
    }

LABEL_11:
    v19 = v9;
    return [v19 stringWithFormat:v8, v22, v23, v24];
  }

  if (a1 == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v22 = NSStringFromClass(v20);
    v23 = a3;
    v8 = @"<%@: %p> cannot be added because the source and destination media types are incompatible";
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v23 = a3;
    v24 = NSStringFromClass(v12);
    v22 = v11;
    v8 = @"<%@: %p> cannot be added because %@ only accepts one connection of this media type at a time, and it is already connected";
    goto LABEL_11;
  }

  return 0;
}

void AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce(uint64_t result, uint64_t a2)
{
  if (_MergedGlobals != -1)
  {
    AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce_cold_1();
  }
}

uint64_t AVMediaTypeForMetadataObjects()
{
  if (AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadataOnce != -1)
  {
    AVMediaTypeForMetadataObjects_cold_1();
  }

  return AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadata;
}

void __AVMediaTypeForMetadataObjects_block_invoke(uint64_t a1)
{
  if (dyld_get_active_platform() == 1)
  {
    v1 = MEMORY[0x1E69875D0];
  }

  else
  {
    v2 = dyld_program_sdk_at_least();
    v1 = MEMORY[0x1E69875D0];
    if (v2)
    {
      if (AVCaptureMetadataObjectsOnly_onceToken != -1)
      {
        AVCaptureMetadataObjectsOnly_cold_1();
        v1 = MEMORY[0x1E69875D0];
      }

      if (!AVCaptureMetadataObjectsOnly_answer)
      {
        v1 = MEMORY[0x1E69875D8];
      }
    }
  }

  AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadata = *v1;
}

uint64_t __AVCaptureMetadataObjectsOnly_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
    AVCaptureMetadataObjectsOnly_answer = 1;
  }

  return result;
}

double AVCaptureMainScreenPixelSize()
{
  if (AVCaptureMainScreenPixelSize_onceToken != -1)
  {
    AVCaptureMainScreenPixelSize_cold_1();
  }

  return *&AVCaptureMainScreenPixelSize_width;
}

void __AVCaptureMainScreenPixelSize_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();

    CFRelease(v1);
  }
}

void _registerAudioDevicesOnce()
{
  os_unfair_lock_lock(&sRegisterAudioDevicesLock);
  if (!sRegisteredAudioDevices)
  {
    if (AVCaptureIsRunningInMediaserverd(v0, v1))
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    else
    {
      v2 = [NSClassFromString(&cfstr_Avcapturefigau.isa) _devices];
    }

    sRegisteredAudioDevices = v2;
  }

  os_unfair_lock_unlock(&sRegisterAudioDevicesLock);
}

CGAffineTransform *AVCaptureVideoTransformForCaptureDevice@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, double *a6@<X5>, char a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, CGFloat a10@<D0>, CGFloat a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>, double a14@<D4>, double a15@<D5>, CGFloat a16@<D6>, CGFloat a17@<D7>, char a18, char a19)
{
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  CGAffineTransformMakeScale(a9, a10, a11);
  if (a10 != a12 || a11 != a13)
  {
    if ([a1 isEqualToString:*MEMORY[0x1E69840F8]])
    {
      v37 = fmax(a12 / a10, a13 / a11);
      v38 = v37;
    }

    else
    {
      v39 = [a1 isEqualToString:*MEMORY[0x1E69840E8]];
      v38 = a12 / a10;
      v37 = a13 / a11;
      v40 = fmin(a12 / a10, a13 / a11);
      if (v39)
      {
        v37 = v40;
        v38 = v40;
      }
    }

    memset(&v89, 0, sizeof(v89));
    CGAffineTransformMakeScale(&v89, v38, v37);
    v41 = *(a9 + 16);
    *&t1.a = *a9;
    *&t1.c = v41;
    *&t1.tx = *(a9 + 32);
    v86 = v89;
    CGAffineTransformConcat(&t2, &t1, &v86);
    v42 = *&t2.c;
    *a9 = *&t2.a;
    *(a9 + 16) = v42;
    v43 = *&v89.a;
    *(a9 + 32) = *&t2.tx;
    *&t2.a = v43;
    *&t2.c = *&v89.c;
    *&t2.tx = *&v89.tx;
    *&v43 = 0;
    *&v42 = 0;
    v44 = a10;
    v45 = a11;
    v90 = CGRectApplyAffineTransform(*(&v42 - 8), &t2);
    CGAffineTransformMakeTranslation(&t1, (a12 - v90.size.width) * 0.5, (a13 - v90.size.height) * 0.5);
    v46 = *(a9 + 16);
    *&v86.a = *a9;
    *&v86.c = v46;
    *&v86.tx = *(a9 + 32);
    CGAffineTransformConcat(&t2, &v86, &t1);
    v47 = *&t2.c;
    *a9 = *&t2.a;
    *(a9 + 16) = v47;
    *(a9 + 32) = *&t2.tx;
  }

  v48 = a5;
  if (!a4)
  {
    if (a5 == 90 || a5 == 270)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  AVCapturePlatformMountsCamerasInLandscapeOrientation(a2, a3);
  if (a5 == 270)
  {
    CGAffineTransformMakeRotation(&t2, v48 * 3.14159265 / 180.0);
    v58 = *(a9 + 16);
    *&t1.a = *a9;
    *&t1.c = v58;
    *&t1.tx = *(a9 + 32);
    CGAffineTransformConcat(&v89, &t1, &t2);
    v59 = *&v89.c;
    *a9 = *&v89.a;
    *(a9 + 16) = v59;
    *(a9 + 32) = *&v89.tx;
    v52 = 0.0;
    v51 = a12;
    goto LABEL_21;
  }

  if (a5 == 180)
  {
    CGAffineTransformMakeRotation(&t2, v48 * 3.14159265 / 180.0);
    v53 = *(a9 + 16);
    *&t1.a = *a9;
    *&t1.c = v53;
    *&t1.tx = *(a9 + 32);
    CGAffineTransformConcat(&v89, &t1, &t2);
    v54 = *&v89.c;
    *a9 = *&v89.a;
    *(a9 + 16) = v54;
    *(a9 + 32) = *&v89.tx;
    CGAffineTransformMakeTranslation(&t2, a12, a13);
    v55 = *(a9 + 16);
    *&t1.a = *a9;
    *&t1.c = v55;
    *&t1.tx = *(a9 + 32);
    CGAffineTransformConcat(&v89, &t1, &t2);
    v56 = *&v89.c;
    *a9 = *&v89.a;
    *(a9 + 16) = v56;
    *(a9 + 32) = *&v89.tx;
    goto LABEL_19;
  }

  if (a5 != 90)
  {
LABEL_19:
    v57 = a12;
    goto LABEL_23;
  }

  CGAffineTransformMakeRotation(&t2, v48 * 3.14159265 / 180.0);
  v49 = *(a9 + 16);
  *&t1.a = *a9;
  *&t1.c = v49;
  *&t1.tx = *(a9 + 32);
  CGAffineTransformConcat(&v89, &t1, &t2);
  v50 = *&v89.c;
  *a9 = *&v89.a;
  *(a9 + 16) = v50;
  *(a9 + 32) = *&v89.tx;
  v51 = 0.0;
  v52 = a13;
LABEL_21:
  CGAffineTransformMakeTranslation(&t2, v52, v51);
  v60 = *(a9 + 16);
  *&t1.a = *a9;
  *&t1.c = v60;
  *&t1.tx = *(a9 + 32);
  CGAffineTransformConcat(&v89, &t1, &t2);
  v61 = *&v89.c;
  *a9 = *&v89.a;
  *(a9 + 16) = v61;
  *(a9 + 32) = *&v89.tx;
LABEL_22:
  v57 = a13;
  a13 = a12;
LABEL_23:
  v62 = 0;
  if (a7)
  {
    v63 = a14;
  }

  else
  {
    v63 = 0.0;
  }

  if (a7)
  {
    v64 = a15;
  }

  else
  {
    v64 = 0.0;
  }

  if ((a7 & 1) == 0)
  {
    a16 = v57;
    a17 = a13;
  }

  v65 = 0;
  v66 = v57;
  v67 = a13;
  v68 = a16;
  v69 = a17;
  result = CGRectEqualToRect(*&v62, *&v63);
  if ((result & 1) == 0)
  {
    if ([a8 isEqualToString:*MEMORY[0x1E69874E0]])
    {
      v71 = a16 / v57;
      v72 = a17 / a13;
    }

    else
    {
      v73 = [a8 isEqualToString:*MEMORY[0x1E69874F0]];
      v74 = fmin(a16 / v57, a17 / a13);
      v72 = fmax(a16 / v57, a17 / a13);
      if (v73)
      {
        v71 = v72;
      }

      else
      {
        v71 = v74;
      }

      if (!v73)
      {
        v72 = v74;
      }
    }

    memset(&v89, 0, sizeof(v89));
    CGAffineTransformMakeScale(&v89, v71, v72);
    v75 = *(a9 + 16);
    *&t1.a = *a9;
    *&t1.c = v75;
    *&t1.tx = *(a9 + 32);
    v86 = v89;
    CGAffineTransformConcat(&t2, &t1, &v86);
    v76 = *&t2.c;
    *a9 = *&t2.a;
    *(a9 + 16) = v76;
    v77 = *&v89.a;
    *(a9 + 32) = *&t2.tx;
    *&t2.a = v77;
    *&t2.c = *&v89.c;
    *&t2.tx = *&v89.tx;
    *&v77 = 0;
    *&v76 = 0;
    v78 = v57;
    v79 = a13;
    v91 = CGRectApplyAffineTransform(*(&v76 - 8), &t2);
    CGAffineTransformMakeTranslation(&t1, (a16 - v91.size.width) * 0.5, (a17 - v91.size.height) * 0.5);
    v80 = *(a9 + 16);
    *&v86.a = *a9;
    *&v86.c = v80;
    *&v86.tx = *(a9 + 32);
    result = CGAffineTransformConcat(&t2, &v86, &t1);
    v81 = *&t2.c;
    *a9 = *&t2.a;
    *(a9 + 16) = v81;
    *(a9 + 32) = *&t2.tx;
  }

  if (a18 && a19)
  {
    CGAffineTransformMakeScale(&t2, -1.0, 1.0);
    v82 = *(a9 + 16);
    *&t1.a = *a9;
    *&t1.c = v82;
    *&t1.tx = *(a9 + 32);
    CGAffineTransformConcat(&v89, &t1, &t2);
    v83 = *&v89.c;
    *a9 = *&v89.a;
    *(a9 + 16) = v83;
    *(a9 + 32) = *&v89.tx;
    CGAffineTransformMakeTranslation(&t2, a16, 0.0);
    v84 = *(a9 + 16);
    *&t1.a = *a9;
    *&t1.c = v84;
    *&t1.tx = *(a9 + 32);
    result = CGAffineTransformConcat(&v89, &t1, &t2);
    v85 = *&v89.c;
    *a9 = *&v89.a;
    *(a9 + 16) = v85;
    *(a9 + 32) = *&v89.tx;
  }

  if (a6)
  {
    *a6 = v48;
  }

  return result;
}

uint64_t __AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce_block_invoke()
{
  sShutterSoundSuppressedByAirpodStemClick = 0;
  result = FigDispatchQueueCreateWithPriority();
  qword_1EB3851B8 = result;
  return result;
}

unint64_t AVCaptureConvertDimensionsForAspectRatio(unint64_t a1, void *a2, float a3)
{
  v4 = HIDWORD(a1);
  if (!a2)
  {
    goto LABEL_15;
  }

  if (a1 <= SHIDWORD(a1))
  {
    v6 = HIDWORD(a1);
  }

  else
  {
    v6 = a1;
  }

  if ([a2 isEqualToString:@"AVCaptureAspectRatio4x3"])
  {
    v7 = 0.75;
  }

  else
  {
    if ([a2 isEqualToString:@"AVCaptureAspectRatio3x4"])
    {
      v7 = 1.0;
      v8 = 0.75;
      goto LABEL_14;
    }

    if (([a2 isEqualToString:@"AVCaptureAspectRatio16x9"] & 1) == 0)
    {
      v9 = [a2 isEqualToString:@"AVCaptureAspectRatio9x16"];
      v7 = 1.0;
      v8 = 0.5625;
      if (!v9)
      {
        v8 = 1.0;
      }

      goto LABEL_14;
    }

    v7 = 0.5625;
  }

  v8 = 1.0;
LABEL_14:
  v10 = round(v8 * v6 * 0.5);
  LODWORD(a1) = (v10 + v10);
  v11 = round(v7 * v6 * 0.5);
  LODWORD(v4) = (v11 + v11);
LABEL_15:
  v12 = a3 % 180;
  v13 = v12 == 0;
  if (v12)
  {
    v14 = v4;
  }

  else
  {
    v14 = a1;
  }

  if (v13)
  {
    LODWORD(a1) = v4;
  }

  return a1 | (v14 << 32);
}

uint64_t AVCaptureAudiomxdSupportEnabled()
{
  if (AVCaptureAudiomxdSupportEnabled_sOnceToken != -1)
  {
    AVCaptureAudiomxdSupportEnabled_cold_1();
  }

  return AVCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled;
}

uint64_t __AVCaptureAudiomxdSupportEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  AVCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled = result;
  return result;
}

uint64_t AVCaptureSessionIsDeferredStartSupported()
{
  if (AVCaptureSessionIsDeferredStartSupported_onceToken != -1)
  {
    AVCaptureSessionIsDeferredStartSupported_cold_1();
  }

  return AVCaptureSessionIsDeferredStartSupported_deferredStartSupported;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return [v26 countByEnumeratingWithState:va objects:&a11 count:{16, a6, a7, a8}];
}

__n128 OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, uint64_t a15)
{
  result = a14;
  *(v15 - 48) = a14;
  *(v15 - 32) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return [v40 countByEnumeratingWithState:a3 objects:va count:{16, a6, a7, a8}];
}

void *ps_formatFourCCForSettingsDictionary(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = [objc_msgSend_objectForKeyedSubscript_(result a2];
    if (!result)
    {
      objc_msgSend_objectForKeyedSubscript_(v2);

      return AVOSTypeForString();
    }
  }

  return result;
}

void sub_1A9193EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *avcfvd_deviceTypesFromAVCaptureDevices(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(*(&v9 + 1) + 8 * v6++), "figCaptureSourceDeviceType"))}];
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t vpl_rectToValue(double a1, double a2, double a3, double a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return [MEMORY[0x1E696B098] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

BOOL po_photoSettingsAreValid(void *a1, uint64_t a2, void *a3, void *a4, __CFString **a5)
{
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  if (!a3)
  {
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_277:
    v21 = @"Nil settings";
    goto LABEL_274;
  }

  if (!a1)
  {
    goto LABEL_277;
  }

  if (a3[2])
  {
    v82 = a3[2];
    if ([a1 uniqueID] <= *(v82 + 16))
    {
      v21 = @"Settings may not be re-used";
      goto LABEL_274;
    }

    v7 = *(v82 + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __po_photoSettingsAreValid_block_invoke;
    block[3] = &unk_1E78760D8;
    block[4] = v82;
    block[5] = a1;
    block[6] = &v106;
    block[7] = &v102;
    block[8] = &v98;
    block[9] = &v94;
    dispatch_sync(v7, block);
    v8 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
  v82 = 0;
LABEL_8:
  v9 = [a1 processedFileType];
  v10 = v8 ^ 1;
  if (!v9)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0 && ![*(v82 + 48) containsObject:{objc_msgSend(a1, "processedFileType")}])
  {
    v21 = @"settings.processedFileType must be present in self.availablePhotoFileTypes";
    goto LABEL_274;
  }

  v11 = [a1 rawFileType];
  v12 = v8 ^ 1;
  if (!v11)
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0 && ![*(v82 + 56) containsObject:{objc_msgSend(a1, "rawFileType")}])
  {
    v21 = @"settings.rawFileType must be present in self.availableRawPhotoFileTypes";
    goto LABEL_274;
  }

  if ([a1 rawPhotoPixelFormatType])
  {
    if (v8)
    {
      v13 = *(v82 + 40);
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a1, "rawPhotoPixelFormatType")}];
      if (!objc_msgSend_objectForKeyedSubscript_(v13))
      {
        v21 = @"settings.rawPhotoPixelFormatType must be present in self.availableRawPhotoPixelFormatTypes";
        goto LABEL_274;
      }

      if ([a1 rawFileType])
      {
        v14 = [a3 supportedRawPhotoPixelFormatTypesForFileType:{objc_msgSend(a1, "rawFileType")}];
        if (![v14 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a1, "rawPhotoPixelFormatType"))}])
        {
          v21 = @"settings.rawPhotoPixelFormatType must be present in [self supportedRawPhotoPixelFormatTypesForFileType:settings.rawFileType]";
          goto LABEL_274;
        }
      }

      if ([a1 isConstantColorEnabled])
      {
        v21 = @"When capturing a raw photo, settings.constantColorEnabled must be set to NO";
        goto LABEL_274;
      }
    }

    if (+[AVCapturePhotoOutput isBayerRAWPixelFormat:](AVCapturePhotoOutput, "isBayerRAWPixelFormat:", [a1 rawPhotoPixelFormatType]))
    {
      if ([a1 HDRMode])
      {
        v21 = @"When specifying Bayer raw capture, settings.HDRMode must be set to AVCaptureHDRModeOff";
        goto LABEL_274;
      }

      if ([a1 photoQualityPrioritization] != 1)
      {
        v21 = @"When specifying Bayer raw capture, settings.photoQualityPrioritization must be set to AVCapturePhotoQualityPrioritizationSpeed";
        goto LABEL_274;
      }

      if ([a1 digitalFlashMode])
      {
        v21 = @"When specifying Bayer raw capture, settings.digitalFlashMode must be set to AVCaptureDigitalFlashModeOff";
        goto LABEL_274;
      }

      if (a4)
      {
        [objc_msgSend(a4 "sourceDevice")];
        if (v15 != 1.0)
        {
          v21 = @"When specifying Bayer raw capture, the videoZoomFactor of the video device must be set to 1.0";
          goto LABEL_274;
        }

        [a4 videoScaleAndCropFactor];
        if (v16 != 1.0)
        {
          v21 = @"When specifying Bayer raw capture, the videoScaleAndCropFactor of the photo output's video connection must be set to 1.0";
          goto LABEL_274;
        }
      }

      if ([a1 isAutoVirtualDeviceFusionEnabled])
      {
        v21 = @"When specifying Bayer raw capture, settings.autoVirtualDeviceFusionEnabled must be set to NO";
        goto LABEL_274;
      }
    }

    if (a2 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = @"If you specify a non-nil raw pixel format type in your settings, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: or the deprecated captureOutput:didFinishProcessingRawPhotoSampleBuffer:previewPhotoSampleBuffer:resolvedSettings:bracketSettings:error:";
      goto LABEL_274;
    }
  }

  if ([a1 format])
  {
    v17 = objc_msgSend_objectForKeyedSubscript_([a1 format]);
    v18 = objc_msgSend_objectForKeyedSubscript_([a1 format]);
    v19 = v8 ^ 1;
    if (v17)
    {
      v20 = v8 ^ 1;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v22 = v18;
      if (!v18)
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        if (![*(v82 + 32) containsObject:v18])
        {
          v21 = @"The AVVideoCodecKey format must be present in self.availablePhotoCodecTypes";
          goto LABEL_274;
        }

        if ([a1 processedFileType] && !objc_msgSend(objc_msgSend(a3, "supportedPhotoCodecTypesForFileType:", objc_msgSend(a1, "processedFileType")), "containsObject:", v22))
        {
          v21 = @"The AVVideoCodecKey format must be present in [self supportedPhotoCodecTypesForFileType:settings.processedFileType]";
          goto LABEL_274;
        }
      }
    }

    else
    {
      if (([*(v82 + 24) containsObject:v17] & 1) == 0)
      {
        v21 = @"The CVPixelBufferPixelFormatTypeKey format must be present in self.availablePhotoPixelFormatTypes";
        goto LABEL_274;
      }

      if ([a1 processedFileType] && (objc_msgSend(objc_msgSend(a3, "supportedPhotoPixelFormatTypesForFileType:", objc_msgSend(a1, "processedFileType")), "containsObject:", v17) & 1) == 0)
      {
        v21 = @"The CVPixelBufferFormatTypeKey format must be present in [self supportedPhotoPixelFormatTypesForFileType:settings.processedFileType]";
        goto LABEL_274;
      }
    }

    if (a2)
    {
      v23 = [a1 processedFileType];
      if ([v23 isEqual:*MEMORY[0x1E69874A0]] & 1) != 0 || (v24 = objc_msgSend(a1, "processedFileType"), (objc_msgSend(v24, "isEqual:", *MEMORY[0x1E69874A8])) || (v25 = objc_msgSend(a1, "processedFileType"), (objc_msgSend(v25, "isEqual:", *MEMORY[0x1E6987490])))
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v21 = @"In order to capture HEIF/DICOM containerized photos, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error:";
          goto LABEL_274;
        }
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v21 = @"If you specify a non-nil format dictionary in your settings, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error:, or the deprecated captureOutput:didFinishProcessingPhotoSampleBuffer:previewPhotoSampleBuffer:resolvedSettings:bracketSettings:error:";
        goto LABEL_274;
      }
    }
  }

  if (v8 && *(v103 + 24) != 1)
  {
    v21 = @"HDRMode must be set to a value present in the supportedHDRModes array";
    goto LABEL_274;
  }

  if ((v8 & [a1 photoQualityPrioritizationIsSetByClient]) == 1)
  {
    v26 = *(v82 + 80);
    if (v26 < [a1 photoQualityPrioritization])
    {
      v21 = @"settings.photoQualityPrioritization must not be higher than self.maxPhotoQualityPrioritization";
      goto LABEL_274;
    }
  }

  if ([a1 isEV0PhotoDeliveryEnabled])
  {
    if (v8 && *(v99 + 24) != 1)
    {
      v21 = @"EV0PhotoDeliveryEnabled must not be set to YES when EV0PhotoDeliverySupported is NO";
      goto LABEL_274;
    }

    if (![a1 HDRMode])
    {
      v21 = @"EV0PhotoDeliveryEnabled must be set to NO if HDRMode is AVCaptureHDRModeOff";
      goto LABEL_274;
    }

    if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = @"If you specify EV0PhotoDeliveryEnabled=YES in your settings, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error:";
      goto LABEL_274;
    }
  }

  if (v8 && *(v107 + 24) != 1)
  {
    v21 = @"flashMode must be set to a value present in the supportedFlashModes array";
    goto LABEL_274;
  }

  if ([a1 digitalFlashMode])
  {
    if (v8)
    {
      if (*(v82 + 128) != 1)
      {
        v21 = @"digitalFlashMode must be AVCaptureDigitalFlashModeOff if self.digitalFlashCaptureEnabled is NO";
        goto LABEL_274;
      }

      if (*(v95 + 24) != 1)
      {
        v21 = @"digitalFlashMode must be set to a value present in the supportedDigitalFlashModes array";
        goto LABEL_274;
      }
    }

    if ([a1 digitalFlashMode])
    {
      if ([a1 flashMode] == 1)
      {
        v21 = @"Flash mode must not be on when Digital Flash mode is min or max";
        goto LABEL_274;
      }

      if ([a1 HDRMode] == 1)
      {
        v21 = @"HDR mode must not be on when Digital Flash mode is min or max";
        goto LABEL_274;
      }
    }

    if ([a1 livePhotoMovieFileURL])
    {
      v21 = @"digitalFlashMode must be AVCaptureDigitalFlashModeOff when livePhotoMovieFileURL is non-nil";
      goto LABEL_274;
    }
  }

  if ([a1 livePhotoMovieFileURL])
  {
    if (v8 && *(v82 + 146) != 1)
    {
      v21 = @"livePhotoMovieFileURL must be nil if self.livePhotoCaptureEnabled is NO";
      goto LABEL_274;
    }

    if (![objc_msgSend(a1 "livePhotoMovieFileURL")])
    {
      v21 = @"livePhotoMovieFileURL must be a file url";
      goto LABEL_274;
    }

    if (a2 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = @"If you specify a non-nil livePhotoMovieFileURL, your delegate must respond to the selector captureOutput:didFinishProcessingLivePhotoToMovieFileAtURL:duration:photoDisplayTime:resolvedSettings:error:";
      goto LABEL_274;
    }

    if ([a1 livePhotoMovieFileURLForOriginalPhoto])
    {
      if ([objc_msgSend(a1 "livePhotoMovieFileURL")])
      {
        v21 = @"livePhotoMovieFileURLForOriginalPhoto may not be the same as livePhotoMovieFileURL";
        goto LABEL_274;
      }

      if (![objc_msgSend(a1 "livePhotoMovieFileURLForOriginalPhoto")])
      {
        v21 = @"livePhotoMovieFileURLForOriginalPhoto must be a file url";
        goto LABEL_274;
      }
    }

    if (v8)
    {
      if (*(v82 + 216))
      {
        v21 = @"Live Photos may not be captured while livePhotoCaptureSuspended is YES";
        goto LABEL_274;
      }

      if (([*(v82 + 152) containsObject:{objc_msgSend(a1, "livePhotoVideoCodecType")}] & 1) == 0)
      {
        v21 = @"livePhotoVideoCodecType must be present in self.availableLivePhotoVideoCodecTypes";
        goto LABEL_274;
      }
    }
  }

  if ([a1 livePhotoMovieFileURLForOriginalPhoto] && !objc_msgSend(a1, "livePhotoMovieFileURL"))
  {
    v21 = @"If you specify a non-nil livePhotoMovieFileURLForOriginalPhoto, you must also provide a non-nil livePhotoMovieFileURL";
    goto LABEL_274;
  }

  if ([a1 isAutoSpatialOverCaptureEnabled])
  {
    if (a4 && ![objc_msgSend(a4 "sourceDevice")])
    {
      v21 = @"If you set autoSpatialOverCaptureEnabled to YES, the source device's spatialOverCaptureEnabled property must also be set to YES";
      goto LABEL_274;
    }

    v27 = [a1 livePhotoMovieFileURL];
    if ((v27 != 0) != ([a1 spatialOverCaptureLivePhotoMovieFileURL] != 0))
    {
      v21 = @"If you set autoSpatialOverCaptureEnabled to YES and specify a non-nil livePhotoMovieFileURL, you must also specify a non-nil spatialOverCaptureLivePhotoMovieFileURL";
      goto LABEL_274;
    }

    v28 = [a1 livePhotoMovieFileURLForOriginalPhoto];
    if ((v28 != 0) != ([a1 spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto] != 0))
    {
      v21 = @"If you set autoSpatialOverCaptureEnabled to YES and specify a non-nil livePhotoMovieFileURLForOriginalPhoto, you must also specify a non-nil spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto";
      goto LABEL_274;
    }
  }

  v29 = [a1 HEICSFileURL];
  if (a2 && v29 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v21 = @"If you specify a non-nil HEICSFileURL, your delegate must respond to the selector captureOutput:didFinishProcessingPhotoFileAtURL:resolvedSettings:error:";
    goto LABEL_274;
  }

  v30 = [a1 videoFileURL];
  if (a2 && v30 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v21 = @"If you specify a non-nil videoFileURL, your delegate must respond to the selector captureOutput:didFinishProcessingVideoFileAtURL:resolvedSettings:previewPixelBuffer:recordedDuration:error:";
    goto LABEL_274;
  }

  if (v8)
  {
    if ([a1 isHighResolutionPhotoEnabled] && *(v82 + 130) != 1)
    {
      v21 = @"settings.highResolutionPhotoEnabled may not be YES unless self.highResolutionCaptureEnabled is YES";
      goto LABEL_274;
    }

    if ([a1 maxPhotoDimensions] || objc_msgSend(a1, "maxPhotoDimensions") >> 32)
    {
      if (([objc_msgSend(objc_msgSend(objc_msgSend(a3 connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"), "validateMaxPhotoDimensions:privateDimensionsEnabled:", objc_msgSend(a1, "maxPhotoDimensions"), objc_msgSend(a3, "arePrivatePhotoDimensionsEnabled")}] & 1) == 0)
      {
        v21 = @"If you specify a maxPhotoDimensions, it must match one of the supportedMaxPhotoDimensions of the video devices's active format";
        goto LABEL_274;
      }

      if (*(v82 + 512) < [a1 maxPhotoDimensions] || *(v82 + 516) < (objc_msgSend(a1, "maxPhotoDimensions") >> 32))
      {
        v21 = @"If you specify a non-nil maxPhotoDimensions, it must not be larger than the maxPhotoDimensions set on the AVCapturePhotoOutput";
        goto LABEL_274;
      }
    }
  }

  if ([a1 livePhotoMovieFileURL] && (objc_msgSend(a1, "isSquareCropEnabled") & 1) != 0)
  {
    v21 = @"Square crop must be NO when livePhotoMovieFileURL is non-nil";
    goto LABEL_274;
  }

  if ([a1 isSquareCropEnabled] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a3, "connectionWithMediaType:", *MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"), "supportedDynamicAspectRatios"), "count"))
  {
    v21 = @"Square crop must be NO when the active format supports dynamic aspect ratios";
    goto LABEL_274;
  }

  if ([a1 flashMode] == 1 && objc_msgSend(a1, "HDRMode") == 1)
  {
    v21 = @"HDR mode must not be on when flash mode is on";
    goto LABEL_274;
  }

  if ([a1 shutterSound] != 1108 && (AVCaptureClientHasEntitlement(AVCaptureEntitlementShutterSoundManipulation) & 1) == 0)
  {
    v31 = [objc_msgSend(a3 "session")];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v32 = [v31 countByEnumeratingWithState:&v89 objects:v88 count:16];
    if (!v32)
    {
LABEL_128:
      v21 = @"You are not authorized to use custom shutter sounds";
      goto LABEL_274;
    }

    v33 = *v90;
LABEL_120:
    v34 = 0;
    while (1)
    {
      if (*v90 != v33)
      {
        objc_enumerationMutation(v31);
      }

      v35 = *(*(&v89 + 1) + 8 * v34);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_msgSend(v35 "device")] && objc_msgSend(objc_msgSend(v35, "device"), "timeOfFlightProjectorMode") == 6)
      {
        break;
      }

      if (v32 == ++v34)
      {
        v32 = [v31 countByEnumeratingWithState:&v89 objects:v88 count:16];
        if (!v32)
        {
          goto LABEL_128;
        }

        goto LABEL_120;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  if ([a1 isShutterSoundSuppressionEnabled] && (sIsForcedShutterSoundRegion & 1) != 0)
  {
    v21 = @"settings.shutterSoundSuppressionEnabled may not be set to YES unless self.shutterSoundSuppressionSupported is YES";
    goto LABEL_274;
  }

  if ((v8 & [a1 isProcessedPhotoZoomWithoutUpscalingEnabled]) == 1 && *(v82 + 434) != 1)
  {
    v21 = @"settings.processedPhotoZoomWithoutUpscalingEnabled may not be set to YES unless self.processedPhotoZoomWithoutUpscalingSupported is YES";
    goto LABEL_274;
  }

  if ((v8 & [a1 isAutoContentAwareDistortionCorrectionEnabled]) == 1 && *(v82 + 438) != 1)
  {
    v21 = @"settings.autoContentAwareDistortionCorrectionEnabled may not be set to YES unless self.contentAwareDistortionCorrectionEnabled is YES";
    goto LABEL_274;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_182;
  }

  if (v82)
  {
    if ([objc_msgSend(a1 "bracketedSettings")] > *(v82 + 136))
    {
      v21 = @"bracketedSettings array exceeds -maxBracketedCapturePhotoCount";
      goto LABEL_274;
    }

    if ([a1 isLensStabilizationEnabled] && *(v82 + 144) != 1)
    {
      v21 = @"settings.lensStabilizationEnabled may only be set to YES if self.lensStabilizationDuringBracketedCaptureSupported is YES";
      goto LABEL_274;
    }
  }

  if (!a4)
  {
    goto LABEL_182;
  }

  v36 = [a4 sourceDevice];
  v37 = [v36 activeFormat];
  v38 = [a1 bracketedSettings];
  [v38 objectAtIndexedSubscript:0];
  v39 = objc_opt_class();
  if (v39 != objc_opt_class())
  {
    if (v39 == objc_opt_class())
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v40 = [v38 countByEnumeratingWithState:&v111 objects:v110 count:16];
      if (v40)
      {
        v41 = *v112;
        while (2)
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v112 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v111 + 1) + 8 * i);
            [v43 exposureTargetBias];
            if (v44 != 3.4028e38)
            {
              [v43 exposureTargetBias];
              v46 = v45;
              [v36 minExposureTargetBias];
              if (v46 < v47)
              {
                v78 = @"%@ contains an out of range exposure target bias. Use AVCaptureDevice -minExposureTargetBias";
                goto LABEL_273;
              }

              [v43 exposureTargetBias];
              v49 = v48;
              [v36 maxExposureTargetBias];
              if (v49 > v50)
              {
                v78 = @"%@ contains an out of range exposure target bias. Use AVCaptureDevice -maxExposureTargetBias";
                goto LABEL_273;
              }
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v111 objects:v110 count:16];
          if (v40)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_182;
  }

  if (![v36 isExposureModeSupported:3])
  {
    v21 = @"Source device does not support manual exposure bracketed capture. Use AVCaptureDevice -isExposureModeSupported: with AVCaptureExposureModeCustom";
    goto LABEL_274;
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v51 = [v38 countByEnumeratingWithState:&v118 objects:v117 count:16];
  if (!v51)
  {
    goto LABEL_182;
  }

  v52 = *v119;
  while (2)
  {
    for (j = 0; j != v51; ++j)
    {
      if (*v119 != v52)
      {
        objc_enumerationMutation(v38);
      }

      v43 = *(*(&v118 + 1) + 8 * j);
      [v43 ISO];
      if (v54 != 3.4028e38)
      {
        [v43 ISO];
        v56 = v55;
        [v37 minISO];
        if (v56 < v57)
        {
          v78 = @"%@ contains an out of range ISO value. Use AVCaptureDeviceFormat -minISO";
          goto LABEL_273;
        }

        [v43 ISO];
        v59 = v58;
        [v37 maxISO];
        if (v59 > v60)
        {
          v78 = @"%@ contains an out of range ISO value. Use AVCaptureDeviceFormat -maxISO";
          goto LABEL_273;
        }
      }

      if (v43)
      {
        objc_msgSend_exposureDuration(v43);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      memset(&time2, 0, sizeof(time2));
      if (CMTimeCompare(&time1, &time2))
      {
        if (v43)
        {
          objc_msgSend_exposureDuration(v43);
          if (v37)
          {
            goto LABEL_170;
          }

LABEL_172:
          memset(&time2, 0, sizeof(time2));
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
          if (!v37)
          {
            goto LABEL_172;
          }

LABEL_170:
          objc_msgSend_minExposureDuration(v37);
        }

        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v78 = @"%@ contains an out of range exposure duration. Use AVCaptureDeviceFormat -minExposureDuration";
        }

        else
        {
          if (v43)
          {
            objc_msgSend_exposureDuration(v43);
            if (v37)
            {
              goto LABEL_176;
            }

LABEL_178:
            memset(&time2, 0, sizeof(time2));
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
            if (!v37)
            {
              goto LABEL_178;
            }

LABEL_176:
            objc_msgSend_maxExposureDuration(v37);
          }

          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            continue;
          }

          v78 = @"%@ contains an out of range exposure duration. Use AVCaptureDeviceFormat -maxExposureDuration";
        }

LABEL_273:
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:v78, v43];
        goto LABEL_274;
      }
    }

    v51 = [v38 countByEnumeratingWithState:&v118 objects:v117 count:16];
    if (v51)
    {
      continue;
    }

    break;
  }

LABEL_182:
  if ([a1 isDepthDataDeliveryEnabled])
  {
    if (v8 && *(v82 + 219) != 1)
    {
      v21 = @"settings.depthDataDeliveryEnabled must be NO if self.isDepthDataDeliveryEnabled is NO";
    }

    else
    {
      if (!a2 || (objc_opt_respondsToSelector() & 1) != 0)
      {
        goto LABEL_187;
      }

      v21 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set depthDataDeliveryEnabled to YES";
    }

LABEL_274:
    if (a5 && v21)
    {
      *a5 = v21;
    }
  }

  else
  {
LABEL_187:
    if ([a1 isPortraitEffectsMatteDeliveryEnabled])
    {
      if (v8)
      {
        if (*(v82 + 221) != 1)
        {
          v21 = @"settings.portraitEffectsMatteDeliveryEnabled must be NO if self.isPortraitEffectsMatteDeliveryEnabled is NO";
          goto LABEL_274;
        }

        if (*(v82 + 219) != 1)
        {
          v21 = @"settings.depthDataDeliveryEnabled must be YES if settings.portraitEffectsMatteDeliveryEnabled is YES";
          goto LABEL_274;
        }
      }

      if ([a1 embedsPortraitEffectsMatteInPhoto] && !objc_msgSend(a1, "embedsDepthDataInPhoto"))
      {
        v21 = @"If settings.embedsPortraitEffectsMatteInPhoto is set to YES, settings.embedsDepthDataInPhoto must also be set to YES.";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v21 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set portraitEffectsMatteDeliveryEnabled to YES";
        goto LABEL_274;
      }
    }

    if ([objc_msgSend(a1 "enabledSemanticSegmentationMatteTypes")])
    {
      if (v8)
      {
        v61 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a1, "enabledSemanticSegmentationMatteTypes")}];
        [v61 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(v82 + 232))}];
        if ([v61 count])
        {
          v21 = @"You may not set enabledSemanticSegmentationMatteTypes in your AVCapturePhotoSettings that are not present in your AVCapturePhotoOutput.enabledSemanticSegmentationMatteTypes";
          goto LABEL_274;
        }
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v21 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set enabledSemanticSegmentationMatteTypes";
        goto LABEL_274;
      }
    }

    v62 = [objc_msgSend(a1 "photoFilters")];
    v63 = v8 ^ 1;
    if (!v62)
    {
      v63 = 1;
    }

    if ((v63 & 1) == 0 && *(v82 + 240) != 1)
    {
      v21 = @"settings.photoFilters must be empty if self.isFilterRenderingEnabled is NO";
      goto LABEL_274;
    }

    v64 = [objc_msgSend(a1 "adjustedPhotoFilters")];
    v65 = v8 ^ 1;
    if (!v64)
    {
      v65 = 1;
    }

    if ((v65 & 1) == 0 && *(v82 + 240) != 1)
    {
      v21 = @"settings.adjustedPhotoFilters must be empty if self.isFilterRenderingEnabled is NO";
      goto LABEL_274;
    }

    if ([objc_msgSend(a1 "virtualDeviceConstituentPhotoDeliveryEnabledDevices")])
    {
      if ([objc_msgSend(a1 "virtualDeviceConstituentPhotoDeliveryEnabledDevices")] < 2)
      {
        v21 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices must have 2 or more AVCaptureDevices";
        goto LABEL_274;
      }

      if (v8 && *(v82 + 92) != 1)
      {
        v21 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices may not be set to a non-empty array unless self.virtualDeviceConstituentPhotoDeliveryEnabled is YES";
        goto LABEL_274;
      }

      if (a4)
      {
        if (![objc_msgSend(a4 "sourceDevice")])
        {
          v21 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices may not be set to a non-empty array unless your photo output is not connected to a virtual device";
          goto LABEL_274;
        }

        v66 = [objc_msgSend(a4 "sourceDevice")];
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v67 = [a1 virtualDeviceConstituentPhotoDeliveryEnabledDevices];
        v68 = [v67 countByEnumeratingWithState:&v84 objects:v83 count:16];
        if (v68)
        {
          v69 = *v85;
          v21 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices may only include devices present in the source virtual device's constituentDevices array";
LABEL_216:
          v70 = 0;
          while (1)
          {
            if (*v85 != v69)
            {
              objc_enumerationMutation(v67);
            }

            if (([v66 containsObject:*(*(&v84 + 1) + 8 * v70)] & 1) == 0)
            {
              goto LABEL_274;
            }

            if (v68 == ++v70)
            {
              v68 = [v67 countByEnumeratingWithState:&v84 objects:v83 count:16];
              if (v68)
              {
                goto LABEL_216;
              }

              break;
            }
          }
        }
      }

      if (AVCIFilterArrayContainsPortraitFilters([a1 adjustedPhotoFilters]))
      {
        v21 = @"settings.adjustedPhotoFilters must not contain any portrait filters if settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices is a non-empty array";
        goto LABEL_274;
      }

      if ([a1 isConstantColorEnabled])
      {
        v21 = @"settings.constantColorEnabled must be NO if settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices is a non-empty array";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v21 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices to a non-empty array";
        goto LABEL_274;
      }
    }

    if ([a1 isDualCameraDualPhotoDeliveryEnabled])
    {
      if (v8 && (*(v82 + 94) & 1) == 0 && *(v82 + 92) != 1)
      {
        v21 = @"settings.dualCameraDualPhotoDeliveryEnabled may not be set to YES unless self.dualCameraDualPhotoDeliveryEnabled is YES";
        goto LABEL_274;
      }

      if (AVCIFilterArrayContainsPortraitFilters([a1 adjustedPhotoFilters]))
      {
        v21 = @"settings.adjustedPhotoFilters must not contain any portrait filters if settings.dualCameraDualPhotoDeliveryEnabled is YES";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v21 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set dualCameraDualPhotoDeliveryEnabled to YES";
        goto LABEL_274;
      }
    }

    if ([a1 isCameraCalibrationDataDeliveryEnabled])
    {
      if (v8 && ![a3 isCameraCalibrationDataDeliverySupported])
      {
        v21 = @"settings.cameraCalibrationDataDeliveryEnabled may not be set to YES unless self.cameraCalibrationDataDeliverySupported is YES";
        goto LABEL_274;
      }

      if ([objc_msgSend(a1 "virtualDeviceConstituentPhotoDeliveryEnabledDevices")] < 2)
      {
        v21 = @"settings.cameraCalibrationDataDeliveryEnabled may not be set to YES unless 2 or more AVCaptureDevices are added to settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v21 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set cameraCalibrationDataDeliveryEnabled to YES";
        goto LABEL_274;
      }
    }

    v71 = [a3 isAutoDeferredPhotoDeliveryEnabled] ^ 1;
    if (!a2)
    {
      LOBYTE(v71) = 1;
    }

    if ((v71 & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = @"Your delegate must respond to the selector captureOutput:didFinishCapturingDeferredPhotoProxy:error: if you set AVCapturePhotoOutput.autoDeferredPhotoDeliveryEnabled to YES";
      goto LABEL_274;
    }

    if ([a1 isConstantColorEnabled])
    {
      if (v8 && *(v82 + 537) != 1)
      {
        v21 = @"settings.isConstantColorEnabled must be NO if self.isConstantColorEnabled is NO";
        goto LABEL_274;
      }

      if ([a1 flashMode] != 1 && objc_msgSend(a1, "flashMode") != 2)
      {
        v21 = @"settings.flashMode must be AVCaptureFlashModeOn or AVCaptureFlashModeAuto if settings.isConstantColorEnabled is YES";
        goto LABEL_274;
      }
    }

    if ([a1 isConstantColorFallbackPhotoDeliveryEnabled] && !objc_msgSend(a1, "isConstantColorEnabled"))
    {
      v21 = @"settings.isConstantColorEnabled must be YES if settings.isConstantColorFallbackPhotoDeliveryEnabled is YES";
      goto LABEL_274;
    }

    if ([a1 isAutoSpatialPhotoCaptureEnabled])
    {
      if (v8)
      {
        if (*(v82 + 541) != 1)
        {
          v21 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when self.spatialPhotoCaptureEnabled is NO";
          goto LABEL_274;
        }

        if (*(v82 + 433) != 1)
        {
          v21 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when self.autoDeferredPhotoDeliveryEnabled is NO";
          goto LABEL_274;
        }
      }

      if ([a1 photoQualityPrioritization] != 3)
      {
        v21 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when settings.photoQualityPrioritization is not set to AVCapturePhotoQualityPrioritizationQuality";
        goto LABEL_274;
      }

      if (a4)
      {
        v72 = [a4 sourceDevice];
        if ([objc_msgSend(v72 "constituentDevices")] < 2)
        {
          v21 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when AVCaptureDevice.constituentDevices.count is less than 2";
          goto LABEL_274;
        }

        if ([objc_msgSend(objc_msgSend(v72 "constituentDevices")] != @"AVCaptureDeviceTypeBuiltInWideAngleCamera")
        {
          v21 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when AVCaptureDeviceTypeBuiltInWideAngleCamera is not second constituentDevice";
          goto LABEL_274;
        }

        [objc_msgSend(objc_msgSend(objc_msgSend(a4 "sourceDevice")];
        v74 = v73;
        [v72 videoZoomFactor];
        if (v75 != v74)
        {
          v21 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when videoZoomFactor is not equal to Ultra Wide camera to Wide Angle camera switch over zoom factor : videoConnection.sourceDevice.virtualDeviceSwitchOverVideoZoomFactors.firstObject";
          goto LABEL_274;
        }
      }
    }

    if ([a1 metadata])
    {
      v76 = objc_msgSend_objectForKeyedSubscript_([a1 metadata]);
      if (v76)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = @"kCGImagePropertyOrientation specified in settings.metadata must be a number";
          goto LABEL_274;
        }

        if (![v76 intValue] || objc_msgSend(v76, "intValue") >= 9)
        {
          v21 = @"kCGImagePropertyOrientation specified in settings.metadata must be in the valid range of CGImagePropertyOrientation enum";
          goto LABEL_274;
        }
      }
    }

    v21 = 0;
  }

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);
  return v21 == 0;
}

void sub_1A91972EC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

uint64_t po_requestingDefaultHighResStillForAVCapturePhotoSettings(void *a1, void *a2, unsigned int *a3)
{
  if (![a1 maxPhotoDimensions] && !(objc_msgSend(a1, "maxPhotoDimensions") >> 32))
  {
    v6 = [a2 defaultPhotoDimensionsWithHighResolutionCaptureEnabled:{objc_msgSend(a1, "isHighResolutionPhotoEnabled")}];
    v7 = HIDWORD(v6);
    v8 = v6;
    if (![a1 isHighResolutionPhotoEnabled])
    {
      v9 = 0;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = [a1 maxPhotoDimensions];
  v8 = v10;
  v7 = HIDWORD(v10);
  v11 = [a2 defaultPhotoDimensionsWithHighResolutionCaptureEnabled:1];
  v9 = 0;
  if (v8 == v11 && v7 == HIDWORD(v11))
  {
LABEL_7:
    v9 = [a2 supportsHighResolutionStillImageOutput];
  }

LABEL_8:
  [objc_msgSend(a2 "figCaptureSourceVideoFormat")];
  if (AVCaptureIsSensorMountedInPortraitOrientation(v12))
  {
    v13 = AVCaptureFlippedDimensions(v8 | (v7 << 32));
    v7 = HIDWORD(v13);
    v8 = v13;
  }

  *a3 = v8;
  a3[1] = v7;
  return v9;
}

void sub_1A9198350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91986A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

void OUTLINED_FUNCTION_4_1(const void *a1)
{

  _Block_object_dispose(a1, 8);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return [v32 countByEnumeratingWithState:va objects:&a17 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 countByEnumeratingWithState:v13 - 160 objects:va count:{16, a6}];
}

uint64_t OUTLINED_FUNCTION_3(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 countByEnumeratingWithState:a3 objects:&a9 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

void OUTLINED_FUNCTION_3_6(char a1@<W0>, NSObject *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, char a10, char a11, char a12)
{
  a8 = v13;
  a7 = v12;
  a9 = v14;
  a10 = v15;
  a11 = v16;
  a12 = a1;

  dispatch_async(a2, &a3);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return [v2 handleDidStopRecordingNotificationForWrapper:v1 withPayload:a1 demoof:0 addMetadata:0];
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return [v24 countByEnumeratingWithState:va objects:&a9 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t avcaptureVideoStabilizationModeToFigCaptureVideoStabilizationMethod(uint64_t a1, void *a2)
{
  v3 = [a2 cinematicFramingEnabled];
  if ((a1 - 1) <= 5)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *AVSemanticSegmentationCMPhotoURNsForMatteTypes(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v16 = *MEMORY[0x1E69917D8];
    v17 = *MEMORY[0x1E69917F8];
    v6 = *MEMORY[0x1E69917E8];
    v7 = *MEMORY[0x1E69917E0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 isEqual:{@"AVSemanticSegmentationMatteTypeHair", v16}];
        v11 = v7;
        if ((v10 & 1) == 0)
        {
          v12 = [v9 isEqual:@"AVSemanticSegmentationMatteTypeSkin"];
          v11 = v6;
          if ((v12 & 1) == 0)
          {
            v13 = [v9 isEqual:@"AVSemanticSegmentationMatteTypeTeeth"];
            v11 = v17;
            if ((v13 & 1) == 0)
            {
              v14 = [v9 isEqual:@"AVSemanticSegmentationMatteTypeGlasses"];
              v11 = v16;
              if (!v14)
              {
                continue;
              }
            }
          }
        }

        [v2 addObject:v11];
      }

      v4 = [a1 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v4);
  }

  return v2;
}

void *__avcc_frontCameraPhysicalMirroringFollowsCameraAppPreference_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  result = [v0 isEqualToString:0x1F1CBF648];
  if ((result & 1) == 0)
  {
    result = [v0 isEqualToString:0x1F1CC2068];
    if ((result & 1) == 0)
    {

      return [v0 isEqualToString:0x1F1CBF668];
    }
  }

  return result;
}

void sub_1A919B00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919B644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919B8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919BF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A919C134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __avcs_platformSupportsDeferredProcessing_block_invoke()
{
  result = MGGetBoolAnswer();
  avcs_platformSupportsDeferredProcessing_answer = result;
  return result;
}

void avcaptureFigCaptureSessionNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v13 = __avcaptureFigCaptureSessionNotification_block_invoke;
  v14 = &unk_1E786EFD0;
  v15 = a2;
  v16 = a3;
  v17 = a5;
  v6 = [a2 notifiesOnMainThread];
  if ([a3 isEqualToString:*MEMORY[0x1E698FD20]])
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    v13(block);
  }

  else
  {
    Main = CFRunLoopGetMain();
    v9 = *MEMORY[0x1E695E8D0];
    v11[0] = *MEMORY[0x1E6961580];
    v11[1] = v9;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2], block);
    v10 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v10);
  }
}

void vpl_figCaptureSessionNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v12 = __vpl_figCaptureSessionNotification_block_invoke;
  v13 = &unk_1E786EFD0;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v5 = [a2 session];
  if (v5 && ![v5 notifiesOnMainThread])
  {
    v12(block);
  }

  else
  {
    Main = CFRunLoopGetMain();
    FigRunLoopMode = AVCaptureGetFigRunLoopMode();
    v8 = *MEMORY[0x1E695E8D0];
    v10[0] = FigRunLoopMode;
    v10[1] = v8;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2], block);
    v9 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v9);
  }
}

void sub_1A919CFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void di_notificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v8 = __di_notificationHandler_block_invoke;
  v9 = &unk_1E786EFD0;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if ([objc_msgSend(a2 session])
  {
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
    v6 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v6);
  }

  else
  {
    v8(block);
  }
}

void socvpl_figCaptureSessionNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = __socvpl_figCaptureSessionNotification_block_invoke;
  v12 = &unk_1E786EFD0;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  if ([objc_msgSend(a2 session])
  {
    Main = CFRunLoopGetMain();
    FigRunLoopMode = AVCaptureGetFigRunLoopMode();
    v7 = *MEMORY[0x1E695E8D0];
    v9[0] = FigRunLoopMode;
    v9[1] = v7;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2], block);
    v8 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v8);
  }

  else
  {
    v11(block);
  }
}

uint64_t po_figCaptureStillImageSettingsFileTypeForAVFileType(void *a1)
{
  if ([a1 isEqual:*MEMORY[0x1E69874B0]])
  {
    return 1785096550;
  }

  v2 = 1751476579;
  if (([a1 isEqual:*MEMORY[0x1E69874A0]] & 1) == 0)
  {
    if ([a1 isEqual:*MEMORY[0x1E69874A8]])
    {
      return 1751476582;
    }

    else if ([a1 isEqual:*MEMORY[0x1E69874C8]])
    {
      return 1953064550;
    }

    else if ([a1 isEqual:*MEMORY[0x1E6987498]])
    {
      return 1684956519;
    }

    else if ([a1 isEqual:*MEMORY[0x1E6987490]])
    {
      return 1684628333;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t AVCIFilterArrayContainsPortraitFilters(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        NSClassFromString(&cfstr_Cideptheffect.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciportraiteffe_12.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        return 1;
      }

      v3 = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      result = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *getFirstAvailableDeviceFromHistory(void *a1, void *a2, char a3, char a4)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  result = [a1 countByEnumeratingWithState:&v27 objects:v26 count:16];
  v18 = result;
  if (result)
  {
    v8 = *v28;
    v17 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v20 = v9;
        v10 = *(*(&v27 + 1) + 8 * v9);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [a2 countByEnumeratingWithState:&v22 objects:v21 count:{16, v17}];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(a2);
              }

              v15 = *(*(&v22 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ((a3 & 1) != 0 || ([v15 isSuspended] & 1) == 0) && ((a4 & 1) != 0 || objc_msgSend(v15, "specialDeviceType") != 1) && (objc_msgSend(objc_msgSend_objectForKeyedSubscript_(v10), "isEqualToString:", v15[9]))
              {
                return v15;
              }
            }

            v12 = [a2 countByEnumeratingWithState:&v22 objects:v21 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v9 = v20 + 1;
        v8 = v17;
      }

      while ((v20 + 1) != v18);
      v16 = [a1 countByEnumeratingWithState:&v27 objects:v26 count:16];
      result = 0;
      v18 = v16;
    }

    while (v16);
  }

  return result;
}

void *getFirstAvailableDeviceFromHistoryWhereWombatsMustBeMagic(void *a1, void *a2, char a3, char a4, void *a5)
{
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  result = [a1 countByEnumeratingWithState:&v29 objects:v28 count:16];
  v19 = result;
  if (result)
  {
    v9 = *v30;
    v18 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v21 = v10;
        v11 = *(*(&v29 + 1) + 8 * v10);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [a2 countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(a2);
              }

              v16 = *(*(&v24 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ((a3 & 1) != 0 || ([v16 isSuspended] & 1) == 0) && ((a4 & 1) != 0 || objc_msgSend(v16, "specialDeviceType") != 1) && objc_msgSend(objc_msgSend_objectForKeyedSubscript_(v11), "isEqualToString:", v16[9]) && (objc_msgSend(v16, "specialDeviceType") != 2 && objc_msgSend(v16, "specialDeviceType") != 3 || (fvd_deviceIsPresentInCameraList(v16, a5)))
              {
                return v16;
              }
            }

            v13 = [a2 countByEnumeratingWithState:&v24 objects:v23 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v10 = v21 + 1;
        v9 = v18;
      }

      while ((v21 + 1) != v19);
      v17 = [a1 countByEnumeratingWithState:&v29 objects:v28 count:16];
      result = 0;
      v19 = v17;
    }

    while (v17);
  }

  return result;
}

double vpl_valueToRect(void *a1)
{
  v1 = *(MEMORY[0x1E695F058] + 16);
  v3[0] = *MEMORY[0x1E695F058];
  v3[1] = v1;
  [a1 getValue:v3];
  return *v3;
}

CFDictionaryRef fvd_cgRectDictionaryForRectOfInterest(double a1, CGFloat y, CGFloat width, CGFloat height)
{
  x = a1;
  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  v19.origin.x = *MEMORY[0x1E695F050];
  v19.origin.y = v9;
  v19.size.width = v10;
  v19.size.height = v11;
  if (!CGRectEqualToRect(*&a1, v19))
  {
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = 1.0;
    v20.size.height = 1.0;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v16 = CGRectIntersection(v15, v20);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    if (CGRectIsEmpty(v16))
    {
      height = v11;
      width = v10;
      y = v9;
      x = v8;
    }
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  if (CGRectEqualToRect(v17, v21))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v18);
  }

  return DictionaryRepresentation;
}

uint64_t sub_1A919EA9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A919F1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919F37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVSmartStyleSettingsGetSystemStyle(uint64_t a1)
{
  v1 = _AVSmartStyleSettingsStateForBundleID(a1);

  return [v1 systemStyle];
}

id _AVSmartStyleSettingsStateForBundleID(uint64_t a1)
{
  if (AVSmartStyleSettingsPrewarm_onceToken != -1)
  {
    _AVSmartStyleSettingsStateForBundleID_cold_1();
  }

  os_unfair_lock_lock(&sSystemStyleSettingsLock);
  v2 = objc_msgSend_objectForKeyedSubscript_(sSmartStyleSettingsStatesByBundleID);
  if (v2)
  {
    v3 = v2;
    os_unfair_lock_unlock(&sSystemStyleSettingsLock);
  }

  else
  {
    v3 = [AVSmartStyleSettingsState smartStyleSettingsStateForBundleID:a1];
    [sSmartStyleSettingsStatesByBundleID setObject:v3 forKeyedSubscript:a1];
    os_unfair_lock_unlock(&sSystemStyleSettingsLock);
    if (v3)
    {
      [v3 installProprietaryDefaultListeners];
    }
  }

  return v3;
}

uint64_t AVSmartStyleSettingsSetSystemStyle(uint64_t a1, uint64_t a2)
{
  v3 = _AVSmartStyleSettingsStateForBundleID(a2);

  return [v3 setSystemStyle:a1];
}

AVCaptureSmartStyle *AVSmartStyleSettingsGetSystemStyleFast(void *a1)
{
  v1 = AVSmartStyleSettingsSystemStylePreferenceKey(a1);
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  v4 = CFPreferencesCopyValue(v1, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = AVSmartStyleSettingsSystemStylePreferenceKey(AVSmartStyleSettingsSystemStyle);
    v5 = CFPreferencesCopyValue(v6, @"com.apple.cameracapture", v2, v3);
    if (!v5)
    {
LABEL_6:
      v16 = 0;
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(v5);
  [objc_msgSend_objectForKeyedSubscript_(v5) floatValue];
  v9 = v8;
  [objc_msgSend_objectForKeyedSubscript_(v5) floatValue];
  v11 = v10;
  [objc_msgSend_objectForKeyedSubscript_(v5) floatValue];
  LODWORD(v13) = v12;
  LODWORD(v14) = v9;
  LODWORD(v15) = v11;
  v16 = [AVCaptureSmartStyle styleWithCast:v7 intensity:v14 toneBias:v15 colorBias:v13];
LABEL_7:

  return v16;
}

uint64_t AVSmartStyleSettingsGetSystemStyleEnabledForBundleID(uint64_t a1)
{
  v1 = _AVSmartStyleSettingsStateForBundleID(a1);

  return [v1 systemStyleEnabled];
}

uint64_t AVSmartStyleSettingsSetSystemStyleEnabledForBundleID(uint64_t a1, uint64_t a2)
{
  v3 = _AVSmartStyleSettingsStateForBundleID(a2);

  return [v3 setSystemStyleEnabled:a1];
}

id AVSmartStyleSettingsGetSystemStyleEnabledStateForCameraApps()
{
  if (AVSmartStyleSettingsPrewarm_onceToken != -1)
  {
    _AVSmartStyleSettingsStateForBundleID_cold_1();
  }

  v0 = AVSmartStyleSettingsSystemStyleEnabledPreferenceKey();

  return [AVCaptureProprietaryDefaultsSingleton objectForKey:v0];
}

uint64_t __AVSmartStyleSettingsPrewarm_block_invoke()
{
  os_unfair_lock_lock(&sSystemStyleSettingsLock);
  sSmartStyleSettingsStatesByBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5[0] = 0x1F1CBF688;
  v5[1] = 0x1F1CC2048;
  sAllowedFirstPartyAppsInSystemStyleEnabledList = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 2)}];
  v1 = objc_alloc(MEMORY[0x1E695DEC8]);
  v4 = 0x1F1CBF788;
  sDisallowedFirstPartyAppsInSystemStyleEnabledList = [v1 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v4, 1)}];
  [AVCaptureProprietaryDefaultsSingleton objectForKey:@"warmup"];
  v2 = [AVSmartStyleSettingsState smartStyleSettingsStateForBundleID:AVSmartStyleSettingsSystemStyle];
  [sSmartStyleSettingsStatesByBundleID setObject:v2 forKeyedSubscript:AVSmartStyleSettingsSystemStyle];
  os_unfair_lock_unlock(&sSystemStyleSettingsLock);
  return [v2 installProprietaryDefaultListeners];
}

uint64_t avcp_copyDNGFileDataRepresentationForSushiRawBuffer(__CVBuffer *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v19 = 0;
  if (a1)
  {
    v8 = 0;
    if (a2 && a5)
    {
      v9 = HIDWORD(a6);
      if (a6 > SHIDWORD(a6))
      {
        LODWORD(v9) = a6;
      }

      v20 = 0;
      if (v9)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
      }

      else
      {
        v10 = 0;
      }

      [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{&unk_1F1CE99C8, *MEMORY[0x1E69918D0], v10, *MEMORY[0x1E6991940], 0}];
      CMPhotoCompressionCreateDataContainerFromImage();
      v8 = v20;
    }

    if (a4)
    {
      [a4 depthDataMap];
      v11 = [a4 copyAuxiliaryMetadata];
      [a4 auxiliaryImageType];
    }

    else
    {
      v11 = 0;
    }

    IOSurface = CVPixelBufferGetIOSurface(a1);
    v13 = IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E696D128]);
    attachmentMode = kCVAttachmentMode_ShouldPropagate;
    v14 = *MEMORY[0x1E69661F8];
    v15 = CVBufferCopyAttachment(a1, *MEMORY[0x1E69661F8], &attachmentMode);
    if (v13)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      CVBufferSetAttachment(a1, v14, v13, kCVAttachmentMode_ShouldNotPropagate);
    }

    CMPhotoDNGCreateDNGFromRAWPixelBufferAndAuxiliaryImage();

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return v19;
}

uint64_t _addAuxiliaryImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 != 0) != (a2 == 0))
  {
    return _addAuxiliaryImage_cold_4();
  }

  if (a1)
  {
    v10 = a4;
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = v11;
    if (a7)
    {
      [v11 setObject:a7 forKeyedSubscript:*MEMORY[0x1E69918B8]];
    }

    if (v10 == 4)
    {
      [v12 setObject:a5 forKeyedSubscript:*MEMORY[0x1E69918B0]];
    }

    result = CMPhotoCompressionSessionAddAuxiliaryImage();
    if (result)
    {
      return _addAuxiliaryImage_cold_3();
    }
  }

  else if (a7)
  {
    return _addAuxiliaryImage_cold_1();
  }

  else
  {
    result = CMPhotoDNGCompressorAddAuxiliaryImage();
    if (result)
    {
      return _addAuxiliaryImage_cold_2();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return [a1 dictionaryWithObjects:va forKeys:&a9 count:{1, a6, a7, a8}];
}

uint64_t esdds_handleStorageDeviceManagerCallback(void *a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (dword_1EB385998)
  {
    v85 = 0;
    v84 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![*(a3 + 40) count])
  {
    if ([*(a3 + 32) count])
    {
      v28 = [*(a3 + 32) copy];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v41 = v28;
      v43 = [v28 countByEnumeratingWithState:&v69 objects:v68 count:16];
      if (v43)
      {
        v42 = *v70;
        v46 = *MEMORY[0x1E6990990];
        v29 = *MEMORY[0x1E695E480];
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v70 != v42)
            {
              objc_enumerationMutation(v41);
            }

            v31 = *(*(&v69 + 1) + 8 * i);
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v32 = [a1 countByEnumeratingWithState:&v64 objects:v63 count:16];
            if (!v32)
            {
              goto LABEL_59;
            }

            v33 = v32;
            v34 = 0;
            v35 = *v65;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v65 != v35)
                {
                  objc_enumerationMutation(a1);
                }

                v37 = *(*(&v64 + 1) + 8 * j);
                [v31 baseURL];
                v83[0] = 0;
                v38 = *(a3 + 24);
                v39 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v39)
                {
                  v39(v38, v37, v46, v29, v83);
                }

                if (FigCFEqual())
                {
                  [v31 updateExternalStorageDeviceManager:*(a3 + 24) andFigExternalStorageDeviceUUID:v37];
                  [*(a3 + 40) addObject:v37];
                  v34 = 1;
                }
              }

              v33 = [a1 countByEnumeratingWithState:&v64 objects:v63 count:16];
            }

            while (v33);
            if ((v34 & 1) == 0)
            {
LABEL_59:
              [a3 willChangeValueForKey:@"externalStorageDevices"];
              [*(a3 + 32) removeObject:v31];
              [a3 didChangeValueForKey:@"externalStorageDevices"];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v69 objects:v68 count:16];
        }

        while (v43);
      }
    }
  }

  if ([a1 count] || objc_msgSend(*(a3 + 40), "count"))
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v5 = [a1 countByEnumeratingWithState:&v59 objects:v58 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v60;
      do
      {
        for (k = 0; k != v6; ++k)
        {
          if (*v60 != v7)
          {
            objc_enumerationMutation(a1);
          }

          v9 = *(*(&v59 + 1) + 8 * k);
          if (([*(a3 + 40) containsObject:v9] & 1) == 0)
          {
            v10 = [[AVExternalStorageDevice alloc] initWithExternalStorageDeviceManager:*(a3 + 24) figExternalStorageDeviceUUID:v9];
            [(AVExternalStorageDevice *)v10 baseURL];
            [a3 willChangeValueForKey:@"externalStorageDevices"];
            [*(a3 + 32) addObject:v10];
            [a3 didChangeValueForKey:@"externalStorageDevices"];
            [*(a3 + 40) addObject:v9];
          }
        }

        v6 = [a1 countByEnumeratingWithState:&v59 objects:v58 count:16];
      }

      while (v6);
    }

    v11 = [*(a3 + 40) copy];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v44 = v11;
    v12 = [v11 countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v45 = *v55;
      do
      {
        for (m = 0; m != v13; ++m)
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(v44);
          }

          v15 = *(*(&v54 + 1) + 8 * m);
          if (([a1 containsObject:v15] & 1) == 0)
          {
            if ([*(a3 + 40) containsObject:v15])
            {
              [*(a3 + 40) removeObject:v15];
            }

            v16 = [*(a3 + 32) copy];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v49 objects:v48 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v50;
              do
              {
                for (n = 0; n != v18; ++n)
                {
                  if (*v50 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v49 + 1) + 8 * n);
                  if ([objc_msgSend(v21 "figExternalStorageDeviceUUID")] && objc_msgSend(*(a3 + 32), "containsObject:", v21))
                  {
                    [a3 willChangeValueForKey:@"externalStorageDevices"];
                    [*(a3 + 32) removeObject:v21];
                    [a3 didChangeValueForKey:@"externalStorageDevices"];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v49 objects:v48 count:16];
              }

              while (v18);
            }
          }
        }

        v13 = [v44 countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v13);
    }
  }

  if (dword_1EB385998)
  {
    v85 = 0;
    v84 = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v85;
    v24 = v84;
    if (os_log_type_enabled(v22, v84))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = *(a3 + 32);
      v27 = *(a3 + 40);
      v73 = 136316162;
      v74 = "esdds_handleStorageDeviceManagerCallback";
      v75 = 2112;
      v76 = a3;
      v77 = 2112;
      v78 = v26;
      v79 = 2112;
      v80 = v27;
      v81 = 2112;
      v82 = a1;
      _os_log_send_and_compose_impl(v25, 0, v83, 128, &dword_1A917C000, v22, v24, "<<<< AVExternalStorageDevice >>>> %s: [%@] SSD callback - After: AVExternalStorageDevices %@\nUUID %@ \ncallbackUUID %@", &v73, 52);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

void *avExternalStorageDeviceNotification(uint64_t a1, void *a2, void *a3)
{
  result = [a3 isEqualToString:*MEMORY[0x1E6990988]];
  if (result)
  {

    return [a2 _reconnectToServer];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{
  *(v0 - 68) = 0;
  *(v0 - 69) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{
  v3 = *(v1 - 69);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_7()
{
  *(v0 - 76) = 0;
  *(v0 - 77) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_12(NSObject *a1)
{
  v3 = *(v1 - 77);

  return os_log_type_enabled(a1, v3);
}

uint64_t getUISSystemReferenceAngleChangedNotification()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr;
  v6 = getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr;
  if (!getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr)
  {
    v1 = UIKitServicesLibrary();
    v4[3] = dlsym(v1, "UISSystemReferenceAngleChangedNotification");
    getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getUISSystemReferenceAngleChangedNotification_cold_1();
  }

  return *v0;
}

void sub_1A91A6E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getFBSOrientationObserverClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getFBSOrientationObserverClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getFBSOrientationObserverClass_softClass;
  if (!getFBSOrientationObserverClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFBSOrientationObserverClass_block_invoke;
    v2[3] = &unk_1E786EC30;
    v2[4] = &v3;
    __getFBSOrientationObserverClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A91A7004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91A75FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91A7A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUISSystemReferenceAngleChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitServicesLibrary()
{
  v2[0] = 0;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __UIKitServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E786EC50;
    v4 = 0;
    UIKitServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitServicesLibraryCore_frameworkLibrary;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    UIKitServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __UIKitServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFBSOrientationObserverClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E786EC88;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    __getFBSOrientationObserverClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FBSOrientationObserver");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFBSOrientationObserverClass_block_invoke_cold_1();
  }

  getFBSOrientationObserverClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getUISSystemReferenceAngleModeForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleModeForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleModeForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUISSystemReferenceAngleForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleAffectedContextIDsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

os_log_t __getCameraCaptureLegacyLog_block_invoke()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog = result;
  return result;
}

void AVAUVoiceIOInitializeListenersForBundleID(void *a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  context = objc_autoreleasePoolPush();
  v9 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v12[0] = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sKeysBeingObservedLock);
  v3 = AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v9);
  IsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID = AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID(v9);
  v5 = 1;
  do
  {
    v6 = v5;
    if (([sKeysBeingObserved containsObject:v3] & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAUVoiceIOChatFlavorObservingKey-%@", v3];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __AVAUVoiceIOInitializeListenersForBundleID_block_invoke;
      v10[3] = &unk_1E786EAF0;
      v10[4] = v9;
      [AVCaptureProprietaryDefaultsSingleton addObserver:v7 forKey:v3 callHandlerForInitialValue:1 defaultChangedHandler:v10];
      [sKeysBeingObserved addObject:v3];
    }

    v5 = 0;
    v3 = IsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID;
  }

  while ((v6 & 1) != 0);
  os_unfair_lock_unlock(&sKeysBeingObservedLock);
  objc_autoreleasePoolPop(context);
}

uint64_t vpio_translatedBundleIDForBundleID(void *a1)
{
  os_unfair_lock_lock(&sBundleIDTranslationMapLock);
  v2 = sBundleIDTranslationMap;
  if (!sBundleIDTranslationMap)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sBundleIDTranslationMap = v2;
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(v2);
  if (!v3)
  {
    [sBundleIDTranslationMap setObject:a1 forKeyedSubscript:a1];
    v3 = a1;
  }

  os_unfair_lock_unlock(&sBundleIDTranslationMapLock);
  return v3;
}

void *__AVAUVoiceIOInitializeListenersForBundleID_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  os_unfair_lock_lock(&sBundleIDTranslationMapLock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __vpio_bundleIDsForTranslatedBundleID_block_invoke;
  v23[3] = &unk_1E786EDA0;
  v23[4] = v4;
  v5 = [sBundleIDTranslationMap keysOfEntriesPassingTest:v23];
  os_unfair_lock_unlock(&sBundleIDTranslationMapLock);
  if (dword_1EB385978)
  {
    LODWORD(v18) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a2 isEqualToString:AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v4)])
  {
    v7 = 0;
    v8 = @"AVAUVoiceIOPreferredChatFlavorDidChangeNotification";
  }

  else
  {
    v9 = [a2 isEqualToString:AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID(v4)];
    v7 = v9 ^ 1;
    if (v9)
    {
      v8 = @"AVAUVoiceIOAutoChatFlavorEnabledDidChangeNotification";
    }

    else
    {
      v8 = 0;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v5 allObjects];
  result = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ((v7 & 1) == 0)
        {
          v15 = *(*(&v19 + 1) + 8 * v14);
          *type = @"AVAUVoiceIONotificationBundleIdentifierKey";
          v18 = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:type count:1];
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      result = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v12 = result;
    }

    while (result);
  }

  return result;
}

id AVAUVoiceIOGetSupportedChatFlavorsForBundleID(void *a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{AVControlCenterAudioSupportedMicrophoneModesPreferenceKeyForTranslatedBundleID(v3)), "copy"}];
  if (!v5)
  {
    v5 = [AVControlCenterAudioDefaultSupportedMicrophoneModesForBundleID(v3 v4)];
    if (!dword_1EB385978)
    {
      goto LABEL_13;
    }

    v22 = 0;
    v21 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB385978)
  {
    v22 = 0;
    v21 = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v22;
    v9 = v21;
    if (os_log_type_enabled(v7, v21))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v12 = 136315907;
      v13 = "AVAUVoiceIOGetSupportedChatFlavorsForBundleID";
      v14 = 2113;
      v15 = a1;
      v16 = 2113;
      v17 = v3;
      v18 = 2113;
      v19 = v5;
      _os_log_send_and_compose_impl(v10, 0, v20, 128, &dword_1A917C000, v7, v9, "<<<< AVAUVoiceIOChatFlavor >>>> %s: %{private}@->%{private}@ get supported chat flavors: %{private}@", &v12, 42);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v5;
}

void AVAUVoiceIOSetSupportedChatFlavorsForBundleID(void *a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:a2 forKey:AVControlCenterAudioSupportedMicrophoneModesPreferenceKeyForTranslatedBundleID(v5)];
  objc_autoreleasePoolPop(v4);
}

uint64_t AVAUVoiceIOGetPreferredChatFlavorForBundleID(void *a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  v4 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v3)), "intValue"}];
  if (dword_1EB385978)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

void AVAUVoiceIOSetActiveChatFlavorForBundleID(void *a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2], AVControlCenterAudioActiveMicrophoneModePreferenceKeyForTranslatedBundleID(v5));
  objc_autoreleasePoolPop(v4);
}

void AVAUVoiceIORemoveActiveChatFlavorForBundleID(void *a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v6 = 0;
    v5 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:0 forKey:AVControlCenterAudioActiveMicrophoneModePreferenceKeyForTranslatedBundleID(v3)];
  objc_autoreleasePoolPop(v2);
}

void AVAUVoiceIOSetHiddenChatFlavorsForBundleID(void *a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:a2 forKey:AVControlCenterAudioHiddenMicrophoneModesPreferenceKeyForTranslatedBundleID(v5)];
  objc_autoreleasePoolPop(v4);
}

void AVAUVoiceIOSetVoiceProcessingBypassedForBundleID(void *a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:a2], AVControlCenterAudioVoiceProcessingBypassedPreferenceKeyForTranslatedBundleID(v5));
  objc_autoreleasePoolPop(v4);
}

uint64_t AVAUVoiceIOIsAutoChatFlavorEnabledForBundleID(void *a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  v4 = [AVCaptureProprietaryDefaultsSingleton objectForKey:AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID(v3)];
  if (v4)
  {
    IsAutoMicrophoneEnabledForBundleIDAndMicMode = [v4 BOOLValue];
  }

  else
  {
    v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v3)];
    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 0;
    }

    IsAutoMicrophoneEnabledForBundleIDAndMicMode = AVControlCenterAudioDefaultIsAutoMicrophoneEnabledForBundleIDAndMicMode(v3, v7);
    if (!dword_1EB385978)
    {
      goto LABEL_17;
    }

    v24 = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB385978)
  {
    v24 = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v24;
    v11 = v23;
    if (os_log_type_enabled(v9, v23))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v14 = 136315907;
      v15 = "AVAUVoiceIOIsAutoChatFlavorEnabledForBundleID";
      v16 = 2113;
      v17 = a1;
      v18 = 2113;
      v19 = v3;
      v20 = 1024;
      v21 = IsAutoMicrophoneEnabledForBundleIDAndMicMode;
      _os_log_send_and_compose_impl(v12, 0, v22, 128, &dword_1A917C000, v9, v11, "<<<< AVAUVoiceIOChatFlavor >>>> %s: %{private}@->%{private}@ get value: %d", &v14, 38);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_17:
  objc_autoreleasePoolPop(v2);
  return IsAutoMicrophoneEnabledForBundleIDAndMicMode;
}

void __vpio_initializeDefaultsOnce_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  sKeysBeingObserved = objc_alloc_init(MEMORY[0x1E695DF70]);

  objc_autoreleasePoolPop(v0);
}

uint64_t getUISDisplayConfigurationChangedNotification()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr;
  v6 = getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr;
  if (!getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr)
  {
    v1 = UIKitServicesLibrary_0();
    v4[3] = dlsym(v1, "UISDisplayConfigurationChangedNotification");
    getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getUISDisplayConfigurationChangedNotification_cold_1();
  }

  return *v0;
}

void sub_1A91AE6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91B04B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91B0DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91B0F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUISDisplayConfigurationChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISDisplayConfigurationChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitServicesLibrary_0()
{
  v2[0] = 0;
  if (!UIKitServicesLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __UIKitServicesLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E786EE60;
    v4 = 0;
    UIKitServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = UIKitServicesLibraryCore_frameworkLibrary_0;
  if (!UIKitServicesLibraryCore_frameworkLibrary_0)
  {
    UIKitServicesLibrary_cold_1_0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __UIKitServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISSDisplayConfigurationAffectedContextIDsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUISDisplayConfigurationForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISDisplayConfigurationForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISDisplayConfigurationForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFBSMutableDisplayConfigurationRequestClass_block_invoke(uint64_t a1)
{
  UIKitServicesLibrary_0();
  result = objc_getClass("FBSMutableDisplayConfigurationRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFBSMutableDisplayConfigurationRequestClass_block_invoke_cold_1();
  }

  getFBSMutableDisplayConfigurationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getUISRequestDisplayConfigurationForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISRequestDisplayConfigurationForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISRequestDisplayConfigurationForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A91B3E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A91B4070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGImageMetadataTag *AVAuxiliaryMetadataArrayTagWithPrefixedKey(const CGImageMetadata *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", a2, a3];
  v5 = CGImageMetadataCopyTagWithPath(a1, 0, v4);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_21;
  }

  if (CGImageMetadataTagGetType(v5) != kCGImageMetadataTypeArrayOrdered)
  {
    CFRelease(v6);
    goto LABEL_20;
  }

  v7 = CGImageMetadataTagCopyValue(v6);
  CFRelease(v6);
  if (!v7)
  {
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (v12)
        {
          v13 = CFGetTypeID(*(*(&v17 + 1) + 8 * v11));
          if (v13 == CGImageMetadataTagGetTypeID() && CGImageMetadataTagGetType(v12) == kCGImageMetadataTypeString)
          {
            v14 = CGImageMetadataTagCopyValue(v12);
            [(CGImageMetadataTag *)v6 addObject:v14];
          }

          else if (v13 == CFNumberGetTypeID() || v13 == CFBooleanGetTypeID())
          {
            [(CGImageMetadataTag *)v6 addObject:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v9);
  }

  CFRelease(v7);
LABEL_21:

  return v6;
}

id AVAuxiliaryMetadataStringTagWithPrefixedKey(const CGImageMetadata *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", a2, a3];
  v5 = CGImageMetadataCopyTagWithPath(a1, 0, v4);
  if (v5)
  {
    v6 = v5;
    if (CGImageMetadataTagGetType(v5) == kCGImageMetadataTypeString)
    {
      v7 = CGImageMetadataTagCopyValue(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL AVAuxiliaryMetadataAddValue(CGImageMetadata *a1, CFStringRef xmlns, CFStringRef prefix, CFStringRef name, const void *a5)
{
  v8 = CGImageMetadataTagCreate(xmlns, prefix, name, kCGImageMetadataTypeDefault, a5);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", prefix, name];
    v11 = CGImageMetadataSetTagWithPath(a1, 0, v10, v9);
    if (!v11)
    {
      AVAuxiliaryMetadataAddValue_cold_1();
    }

    CFRelease(v9);
  }

  else
  {
    AVAuxiliaryMetadataAddValue_cold_2();
    v10 = 0;
    v11 = 0;
  }

  return v11;
}

void avcdds_addValidMultiCamCombinations(void *a1, uint64_t a2, char *a3, void *a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    for (i = a3; i <= [a1 count] - a2; avcdds_addValidMultiCamCombinations(a1, a2 - 1, i, a4, a5, a6))
    {
      [a4 setObject:objc_msgSend(a1 atIndexedSubscript:{"objectAtIndexedSubscript:", i++), objc_msgSend(a4, "count") - a2}];
    }
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __avcdds_addValidMultiCamCombinations_block_invoke;
    v12[3] = &unk_1E786EEF0;
    v12[4] = a4;
    v12[5] = &v13;
    if (![objc_msgSend(a4 indexesOfObjectsPassingTest:{v12), "count"}] && v14[3] <= a6)
    {
      [a5 addObject:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a4)}];
    }

    _Block_object_dispose(&v13, 8);
  }
}

void sub_1A91B5008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_0()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0 = result;
  return result;
}

BOOL __avcdds_addValidMultiCamCombinations_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a3 + 1;
  while (1)
  {
    v8 = v7;
    v9 = [*(a1 + 32) count];
    if (v8 >= v9)
    {
      break;
    }

    v10 = [objc_msgSend(*(a1 + 32) objectAtIndexedSubscript:{v8), "supportsMultiCamCaptureWithDevice:", a2}];
    v7 = v8 + 1;
    if ((v10 & 1) == 0)
    {
      *a4 = 1;
      return v8 < v9;
    }
  }

  if ([a2 hasMediaType:*MEMORY[0x1E6987608]])
  {
    v11 = [objc_msgSend(a2 "constituentDevices")];
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    *(*(*(a1 + 40) + 8) + 24) += v12;
  }

  return v8 < v9;
}

void sub_1A91B55C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADJasperPointCloudClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!AppleDepthLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppleDepthLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E786EF10;
    v5 = 0;
    AppleDepthLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleDepthLibraryCore_frameworkLibrary)
  {
    __getADJasperPointCloudClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ADJasperPointCloud");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADJasperPointCloudClass_block_invoke_cold_1();
  }

  getADJasperPointCloudClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __AppleDepthLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleDepthLibraryCore_frameworkLibrary = result;
  return result;
}

double AVCaptureOutputFitAspectInsideDimensions(double a1, double a2, double a3, double a4, double a5)
{
  v7 = a1;
  v8 = a2;
  v9 = (v7 / v8);
  if (a3 == 0.0)
  {
    a3 = v9;
  }

  if (a3 <= v9)
  {
    v14 = a5 * (a2 / a5) * a3 / a4;
    result = a4 * llroundf(v14);
    if (result > a1)
    {
      return result - a4;
    }
  }

  else
  {
    result = a4 * (a1 / a4);
    v11 = result / a3 / a5;
    v12 = a5 * llroundf(v11);
    if (v12 > a2)
    {
      v13 = a3 * (v12 - a5) / a4;
      return a4 * llroundf(v13);
    }
  }

  return result;
}

double AVCaptureAspectRatioForDimensions(unint64_t a1)
{
  result = 0.0;
  if (HIDWORD(a1))
  {
    return a1 / SHIDWORD(a1);
  }

  return result;
}

uint64_t xy_to_XYZ(uint64_t a1, double a2, double a3)
{
  if (a3 < 1.0e-20)
  {
    return 0;
  }

  *a1 = a2 / a3;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = (1.0 - a2) / a3 + -1.0;
  return 1;
}

uint64_t XYZ_to_xy(double *a1, double *a2, double *a3)
{
  v3 = a1[1];
  if (*a1 >= 1.0e-20 || v3 >= 1.0e-20 || a1[2] >= 1.0e-20)
  {
    *a2 = *a1 / (*a1 + v3 + a1[2]);
    *a3 = a1[1] / (a1[1] + *a1 + a1[2]);
    return 1;
  }

  else
  {
    result = 0;
    *a3 = NAN;
    *a2 = NAN;
  }

  return result;
}

double VectorMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *a3 = v4 * a2[1] + *a1 * *a2 + v5 * a2[2];
  a3[1] = v4 * a2[4] + v3 * a2[3] + v5 * a2[5];
  result = v4 * a2[7] + v3 * a2[6] + v5 * a2[8];
  a3[2] = result;
  return result;
}

double InvertMatrix(double *a1, double *a2)
{
  result = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = -(*a1 * v7);
  v12 = v5 * -(v8 * v6) + *a1 * v6 * v10 + v5 * v4 * v9 + -(v4 * v3) * v10 + v3 * v7 * v8 + v11 * v9;
  if (v12 != 0.0)
  {
    *a2 = (v6 * v10 - v9 * v7) / v12;
    a2[1] = (v9 * v5 - v3 * v10) / v12;
    a2[2] = (v3 * v7 - v6 * v5) / v12;
    a2[3] = (v10 * -v4 + v8 * v7) / v12;
    a2[4] = (v5 * -v8 + result * v10) / v12;
    a2[5] = (v11 + v4 * v5) / v12;
    a2[6] = (v4 * v9 - v8 * v6) / v12;
    a2[7] = (v9 * -result + v8 * v3) / v12;
    result = (result * v6 - v4 * v3) / v12;
    a2[8] = result;
  }

  return result;
}

double xy_to_tempTint(double *a1, double *a2, double a3, double a4)
{
  v4 = 1.5 - a3 + a4 * 6.0;
  v5 = (a3 + a3) / v4;
  v6 = a4 * 3.0 / v4;
  v7 = 0.0;
  v8 = &kTempTable;
  v9 = 29;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = v11;
    v13 = v10;
    v14 = v7;
    v15 = v8[7];
    v16 = sqrt(v15 * v15 + 1.0);
    v7 = 1.0 / v16;
    v10 = v15 / v16;
    v18 = v8[5];
    v17 = v8[6];
    v19 = (v6 - v17) * v7;
    v11 = v19 - (v5 - v18) * v10;
    v20 = v9 - 1;
    v8 += 4;
    if (!v9)
    {
      break;
    }

    --v9;
  }

  while (v11 > 0.0);
  v21 = 0.0;
  if (v20 != 28)
  {
    if (v11 <= 0.0)
    {
      v21 = v19 - (v5 - v18) * v10;
    }

    v21 = -v21 / (v12 - v21);
  }

  *a1 = 1000000.0 / ((1.0 - v21) * *v8 + *(v8 - 4) * v21);
  v22 = v14 * v21 + v7 * (1.0 - v21);
  v23 = v13 * v21 + v10 * (1.0 - v21);
  v24 = sqrt(v23 * v23 + v22 * v22);
  result = (v23 / v24 * (v6 - (v17 * (1.0 - v21) + *(v8 - 2) * v21)) + (v5 - (v18 * (1.0 - v21) + *(v8 - 3) * v21)) * (v22 / v24)) * -3000.0;
  *a2 = result;
  return result;
}

double tempTint_to_xy(double *a1, double *a2, double a3, double a4)
{
  v4 = &qword_1A92AB208;
  v5 = 29;
  v6 = 1000000.0 / a3;
  do
  {
    v7 = *v4;
    v4 += 4;
    v8 = v7;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v6 >= v8);
  v9 = a4 * -0.000333333333;
  v10 = (v8 - v6) / (v8 - *(v4 - 8));
  v11 = *(v4 - 3) * (1.0 - v10) + *(v4 - 7) * v10;
  v12 = *(v4 - 5);
  v13 = (1.0 - v10) * *(v4 - 2) + *(v4 - 6) * v10;
  v14 = *(v4 - 1);
  v15 = sqrt(v12 * v12 + 1.0);
  v16 = sqrt(v14 * v14 + 1.0);
  v17 = (1.0 - v10) * (1.0 / v16) + 1.0 / v15 * v10;
  v18 = (1.0 - v10) * (v14 / v16) + v12 / v15 * v10;
  v19 = sqrt(v18 * v18 + v17 * v17);
  v20 = v11 + v17 / v19 * v9;
  v21 = v13 + v18 / v19 * v9;
  v22 = v20 * 1.5;
  v23 = v20 + v21 * -4.0 + 2.0;
  *a1 = v22 / v23;
  result = v21 / v23;
  *a2 = result;
  return result;
}

void __AVCaptureTemporarilySuppressShutterSoundForAirpodStemClick_block_invoke()
{
  avco_cancelShutterSoundSuppressionTimer();
  sShutterSoundSuppressedByAirpodStemClick = 1;
  v0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1EB3851B8);
  sShutterSoundSuppressedByAirPodStemClickTimer = v0;
  v1 = dispatch_time(0, 500000000);
  dispatch_source_set_timer(v0, v1, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(sShutterSoundSuppressedByAirPodStemClickTimer, &__block_literal_global_226);
  v2 = sShutterSoundSuppressedByAirPodStemClickTimer;

  dispatch_activate(v2);
}

void avco_cancelShutterSoundSuppressionTimer()
{
  if (sShutterSoundSuppressedByAirPodStemClickTimer)
  {
    dispatch_source_cancel(sShutterSoundSuppressedByAirPodStemClickTimer);

    sShutterSoundSuppressedByAirPodStemClickTimer = 0;
  }
}

void __AVCaptureTemporarilySuppressShutterSoundForAirpodStemClick_block_invoke_2()
{
  if (dword_1ED806980)
  {
    v2 = 0;
    v1 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  avco_cancelShutterSoundSuppressionTimer();
  sShutterSoundSuppressedByAirpodStemClick = 0;
}

void AVCaptureStillImageOutputPlayShutterSound(void *a1, uint64_t a2, int a3)
{
  if (!qword_1EB3851B8)
  {
    AVCaptureStillImageOutputPlayShutterSound_cold_1();
  }

  v5 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AVCaptureStillImageOutputPlayShutterSound_block_invoke;
  block[3] = &unk_1E786EC30;
  block[4] = &v29;
  dispatch_sync(qword_1EB3851B8, block);
  if (*(v30 + 24) == 1)
  {
    if (dword_1ED806980)
    {
LABEL_4:
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (a3)
    {
      if (!dword_1ED806980)
      {
        goto LABEL_28;
      }

      goto LABEL_4;
    }

    v7 = [objc_msgSend(a1 "session")];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isRecording] && (objc_msgSend(v11, "isRecordingPaused") & 1) == 0)
          {
            if (dword_1ED806980)
            {
              v27 = 0;
              v26 = OS_LOG_TYPE_DEFAULT;
              v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v13 = v27;
              v14 = v26;
              if (os_log_type_enabled(v12, v26))
              {
                v15 = v13;
              }

              else
              {
                v15 = v13 & 0xFFFFFFFE;
              }

              if (v15)
              {
                v23 = 136315138;
                v24 = "AVCaptureStillImageOutputPlayShutterSound";
                _os_log_send_and_compose_impl(v15, 0, v25, 128, &dword_1A917C000, v12, v14, "<<<< AVCaptureOutput >>>> %s: Shutter sound suppressed due to active movie recording", &v23);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_28;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (v5 > 0x1000)
    {
      v16 = *MEMORY[0x1E695A8B0];
      v17 = &unk_1F1CE9B00;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    AudioServicesPlaySystemSoundWithOptions();
  }

LABEL_28:
  _Block_object_dispose(&v29, 8);
}

void __AVCaptureStillImageOutputPlayShutterSound_block_invoke(uint64_t a1)
{
  avco_cancelShutterSoundSuppressionTimer();
  *(*(*(a1 + 32) + 8) + 24) = sShutterSoundSuppressedByAirpodStemClick;
  sShutterSoundSuppressedByAirpodStemClick = 0;
}

__CFString *ps_shortStringForFileType(void *a1)
{
  if ([a1 isEqual:*MEMORY[0x1E69874B0]])
  {
    return @"JFIF";
  }

  if ([a1 isEqual:*MEMORY[0x1E6987498]])
  {
    return @"DNG";
  }

  if ([a1 isEqual:*MEMORY[0x1E69874C8]])
  {
    return @"TIFF";
  }

  if ([a1 isEqual:*MEMORY[0x1E69874A8]])
  {
    return @"HEIF";
  }

  if ([a1 isEqual:*MEMORY[0x1E69874A0]])
  {
    return @"HEIC";
  }

  if ([a1 isEqual:*MEMORY[0x1E6987490]])
  {
    return @"DICM";
  }

  return @"Unknown";
}

double ps_CGSizeForSettingsDictionary(void *a1, const char *a2)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F060];
  }

  if (objc_msgSend_objectForKeyedSubscript_(a1, a2, *MEMORY[0x1E6966130]) || objc_msgSend_objectForKeyedSubscript_(a1))
  {
    v4 = [objc_msgSend_objectForKeyedSubscript_(a1) intValue];
    v5 = [objc_msgSend_objectForKeyedSubscript_(a1) intValue];
    if (v4 >= 1 && v5 >= 1)
    {
      return v4;
    }
  }

  return *MEMORY[0x1E695F060];
}

double AVCaptureGetCurrentProcessAuditToken@<D0>(_OWORD *a1@<X8>)
{
  if (AVCaptureGetCurrentProcessAuditToken_sOnceToken != -1)
  {
    AVCaptureGetCurrentProcessAuditToken_cold_1();
  }

  result = *&AVCaptureGetCurrentProcessAuditToken_currentProcessAuditToken;
  v3 = unk_1EB385418;
  *a1 = AVCaptureGetCurrentProcessAuditToken_currentProcessAuditToken;
  a1[1] = v3;
  return result;
}

uint64_t AVCaptureClientIsFigCam(uint64_t a1, uint64_t a2)
{
  if (AVCaptureClientIsFigCam_sOnceToken != -1)
  {
    AVCaptureClientIsFigCam_cold_1();
  }

  return AVCaptureClientIsFigCam_sAnswer;
}

void __AVCaptureClientIsFigCam_block_invoke(uint64_t a1)
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  AVCaptureClientIsFigCam_sAnswer = [(__CFString *)v1 isEqualToString:0x1F1CC0FC8];
}

uint64_t AVCaptureClientIsRapport(uint64_t a1, uint64_t a2)
{
  if (AVCaptureClientIsRapport_sOnceToken != -1)
  {
    AVCaptureClientIsRapport_cold_1();
  }

  return AVCaptureClientIsRapport_sAnswer;
}

void __AVCaptureClientIsRapport_block_invoke(uint64_t a1)
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier(a1);
  AVCaptureClientIsRapport_sAnswer = [(__CFString *)v1 isEqualToString:0x1F1CC1988];
}

uint64_t AVControlCenterAudioAreMicrophoneModesSupported(uint64_t a1, uint64_t a2)
{
  if (AVControlCenterAudioAreMicrophoneModesSupported_onceToken != -1)
  {
    AVControlCenterAudioAreMicrophoneModesSupported_cold_1();
  }

  return AVControlCenterAudioAreMicrophoneModesSupported_sMicModesSupported;
}

uint64_t __AVControlCenterAudioAreMicrophoneModesSupported_block_invoke()
{
  result = MGGetBoolAnswer();
  AVControlCenterAudioAreMicrophoneModesSupported_sMicModesSupported = result;
  return result;
}

void *AVControlCenterAudioDefaultSupportedMicrophoneModesForBundleID(void *a1, uint64_t a2)
{
  if (AVControlCenterAudioAreMicrophoneModesSupported_onceToken != -1)
  {
    AVControlCenterAudioAreMicrophoneModesSupported_cold_1();
  }

  if (AVControlCenterAudioAreMicrophoneModesSupported_sMicModesSupported == 1)
  {
    if ([a1 isEqual:0x1F1CBF688])
    {
      return &unk_1F1CEA3C8;
    }

    v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
    v4 = [objc_msgSend(v3 "infoDictionary")];
    v5 = [objc_msgSend(v3 "infoDictionary")];
    if (v4 | v5)
    {
      v6 = v5;
      if ([v4 BOOLValue])
      {

        return &unk_1F1CEA3C8;
      }

      v9 = [v6 BOOLValue];

      if (v9)
      {
        return &unk_1F1CEA3C8;
      }
    }

    else
    {
      v7 = [objc_msgSend(v3 "infoDictionary")];

      if (v7)
      {
        return &unk_1F1CEA3C8;
      }
    }
  }

  return MEMORY[0x1E695E0F0];
}

uint64_t AVControlCenterAudioMicrophoneMGAutoMode(uint64_t a1, uint64_t a2)
{
  if (AVControlCenterAudioMicrophoneMGAutoMode_onceToken != -1)
  {
    AVControlCenterAudioMicrophoneMGAutoMode_cold_1();
  }

  return AVControlCenterAudioMicrophoneMGAutoMode_sMicMGAutoMode;
}

uint64_t __AVControlCenterAudioMicrophoneMGAutoMode_block_invoke()
{
  result = MGGetSInt32Answer();
  AVControlCenterAudioMicrophoneMGAutoMode_sMicMGAutoMode = result;
  return result;
}

BOOL AVControlCenterAudioDefaultIsAutoMicrophoneEnabledForBundleIDAndMicMode(uint64_t a1, uint64_t a2)
{
  if (AVControlCenterAudioMicrophoneMGAutoMode_onceToken != -1)
  {
    AVControlCenterAudioMicrophoneMGAutoMode_cold_1();
  }

  return (a2 - 3) < 0xFFFFFFFFFFFFFFFELL && AVControlCenterAudioMicrophoneMGAutoMode_sMicMGAutoMode == 1;
}

uint64_t AVControlCenterBlackenFramesPreferenceKey(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v4)
  {
    v4 = @"unknown";
  }

  v5 = [(__CFString *)v4 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v3 stringWithFormat:@"%@blacken-frames-from-deviceid-%@", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@/", @"nonpersisting-global/", v5), a2];
}

uint64_t avsss_prefixedSystemStylePreferenceKeyForBundleID(void *a1)
{
  v2 = AVSmartStyleSettingsSystemStyle;
  if (([a1 isEqualToString:AVSmartStyleSettingsSystemStyle] & 1) == 0)
  {
    v3 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
    if (!v3)
    {
      v3 = @"unknown";
    }

    v2 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"smartStyle/%@/", v2];
}

void *__AVCaptureIsRunningInIOSAppOnMacEnvironment_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  AVCaptureIsRunningInIOSAppOnMacEnvironment_isIOSAppOnMac = result;
  return result;
}

void *AVCIFilterArrayDescription(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:&stru_1F1CBCFE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = "";
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 appendFormat:@"%s%@", v6, objc_msgSend(*(*(&v10 + 1) + 8 * v7++), "name")];
        v6 = ", ";
      }

      while (v4 != v7);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v6 = ", ";
    }

    while (v4);
  }

  return v2;
}

BOOL validRectInUnitRectCoordinateSpace(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  if (CGRectEqualToRect(v18, *MEMORY[0x1E695F058]))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1.0;
  v12 = 1.0;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;

  return CGRectContainsRect(*&v9, *&v13);
}

BOOL AVCaptureShouldThrowForAPIViolations(uint64_t a1, uint64_t a2)
{
  if (AVCaptureShouldThrowForAPIViolations_onceToken != -1)
  {
    AVCaptureShouldThrowForAPIViolations_cold_1();
  }

  return (AVCaptureShouldThrowForAPIViolations_pardonAPIViolations & 1) == 0;
}

uint64_t __AVCaptureShouldThrowForAPIViolations_block_invoke()
{
  if (AVCaptureIsRunningInIOSAppOnMacEnvironment_onceToken != -1)
  {
    __AVCaptureShouldThrowForAPIViolations_block_invoke_cold_1();
  }

  result = FigGetCFPreferenceNumberWithDefault();
  AVCaptureShouldThrowForAPIViolations_pardonAPIViolations = result != 0;
  return result;
}

uint64_t AVCaptureGetDiskCapacityInGB(uint64_t a1, uint64_t a2)
{
  if (AVCaptureGetDiskCapacityInGB_onceToken != -1)
  {
    AVCaptureGetDiskCapacityInGB_cold_1();
  }

  return AVCaptureGetDiskCapacityInGB_sDiskCapacityInGB;
}

void __AVCaptureGetDiskCapacityInGB_block_invoke()
{
  v0 = MGCopyAnswer();
  AVCaptureGetDiskCapacityInGB_sDiskCapacityInGB = ([objc_msgSend_objectForKeyedSubscript_(v0) longLongValue] / 1000000000.0);
}

uint64_t AVCaptureMovieFileURLIsValidForConnection(void *a1, uint64_t a2, __CFString **a3, double a4, double a5)
{
  IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
  if (!a1)
  {
    return 1;
  }

  v10 = IsFileOnExternalStorageDevice;
  v11 = [a1 sourceDevice];
  v12 = [v11 activeFormat];
  [objc_msgSend(v12 "figCaptureSourceVideoFormat")];
  v13 = FigCapturePixelFormatIs422();
  [objc_msgSend(v12 "figCaptureSourceVideoFormat")];
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
  v15 = IsPackedBayerRaw;
  if (AVCaptureMovieFileURLIsValidForConnection_onceToken == -1)
  {
    if (IsPackedBayerRaw)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v13)
    {
      if (v11)
      {
        objc_msgSend_activeVideoMaxFrameDuration(v11);
        objc_msgSend_activeVideoMaxFrameDuration(v11);
        v17 = v36 / v35;
        objc_msgSend_activeVideoMinFrameDuration(v11);
        objc_msgSend_activeVideoMinFrameDuration(v11);
        v18 = v34 / v33;
      }

      else
      {
        v17 = NAN;
        v18 = NAN;
      }

      if (a4 == 3840.0 && a5 == 2160.0)
      {
        v19 = 1;
      }

      else
      {
        v19 = a4 == 2160.0;
        if (a5 != 3840.0)
        {
          v19 = 0;
        }
      }

      v20 = v17 == v18;
      v21 = v17 == v18 && v19;
      v22 = v17 == 60.0 && v21;
      v23 = v17 == 30.0 && v21;
      if (a4 != 1920.0 || a5 != 1080.0)
      {
        v24 = a4 == 1080.0;
        if (a5 != 1920.0)
        {
          v24 = 0;
        }

        v20 = v17 == v18 && v24;
      }

      v25 = v17 == 60.0 && v20;
      if (v17 != 120.0)
      {
        LOBYTE(v20) = 0;
      }

      if (AVCaptureGetDiskCapacityInGB_onceToken == -1)
      {
        if (v10)
        {
          return 1;
        }
      }

      else
      {
        v31 = v20;
        v32 = v25;
        AVCaptureMovieFileURLIsValidForConnection_cold_2();
        LOBYTE(v20) = v31;
        v25 = v32;
        if (v10)
        {
          return 1;
        }
      }

      v26 = v17 == 60.0;
      if (v17 == 120.0)
      {
        v26 = 1;
      }

      v27 = v21 && v26;
      v16 = @"Capturing 4k120 with ProRes codec on this device is supported only on external storage device.";
      if (v22)
      {
        v16 = @"Capturing 4k60 with ProRes codec on this device is supported only on external storage device.";
      }

      if (v27)
      {
        goto LABEL_53;
      }

      if (AVCaptureGetDiskCapacityInGB_sDiskCapacityInGB <= 0xFF)
      {
        v28 = v23 || v25 || v20;
        v29 = v25 ? @"Capturing HD60 with ProRes codec on this device is supported only on external storage device." : @"Capturing HD120 with ProRes codec on this device is supported only on external storage device.";
        v16 = @"Capturing 4k30 with ProRes codec on this device is supported only on external storage device.";
        if (!v23)
        {
          v16 = v29;
        }

        if (v28)
        {
          goto LABEL_53;
        }
      }
    }

    return 1;
  }

  AVCaptureMovieFileURLIsValidForConnection_cold_1();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v10)
  {
    return 1;
  }

  v16 = @"Capturing ProRes Raw codec is supported only on external storage device.";
LABEL_53:
  result = 0;
  if (a3)
  {
    *a3 = v16;
  }

  return result;
}

id AVCaptureCreateAVAssetWriterCompatibleMovieMetadata(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E6971ED8];
  while (([objc_msgSend_objectForKeyedSubscript_(objc_msgSend(a1 objectAtIndexedSubscript:{v2)), "isEqual:", v3}] & 1) == 0)
  {
    if (++v2 >= [a1 count])
    {
      return 0;
    }
  }

  v4 = [a1 objectAtIndexedSubscript:v2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = objc_msgSend_objectForKeyedSubscript_(v5);
  v7 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x1E6988050]);
        [v12 setKeySpace:objc_msgSend_objectForKeyedSubscript_(v11)];
        [v12 setKey:objc_msgSend_objectForKeyedSubscript_(v11)];
        [v12 setDataType:objc_msgSend_objectForKeyedSubscript_(v11)];
        [v12 setValue:objc_msgSend_objectForKeyedSubscript_(v11)];
        [v6 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v8);
  }

  return v6;
}

uint64_t AVCaptureVideoCodecTypeIsProResRaw(void *a1)
{
  if ([a1 isEqualToString:*MEMORY[0x1E6987CE0]])
  {
    return 1;
  }

  result = [a1 isEqualToString:*MEMORY[0x1E6987CD8]];
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AVCaptureVTRotationFromDegrees(int a1)
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

id AVCaptureGetTransformedDetectedObjectsInfo(const void *a1, uint64_t a2, void *a3)
{
  v6 = CMGetAttachment(a1, *MEMORY[0x1E6990D40], 0);
  v7 = *MEMORY[0x1E6990FB8];
  result = objc_msgSend_objectForKeyedSubscript_(v6);
  if (result || (result = CMGetAttachment(a1, v7, 0)) != 0)
  {
    v9 = result;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *v46 = *MEMORY[0x1E695EFD0];
    *&v46[16] = v10;
    *&v46[32] = *(MEMORY[0x1E695EFD0] + 32);
    v45 = 0;
    v44 = 0;
    [a3 getTransform:v46 mirroredOut:&v45 rollAdjustmentOut:&v44 forConnection:a2];
    v11.f64[0] = *&v46[24];
    v11.f64[1] = *v46;
    v12 = vabsq_f64(vbslq_s8(vceqzq_f64(v11), *&v46[8], v11));
    *&v46[8] = vdivq_f64(*&v46[8], v12);
    *&v46[24] = vdivq_f64(*&v46[24], v12);
    *v46 = *v46 / v12.f64[1];
    *&v46[40] = *&v46[40] / v12.f64[0];
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v9, 1uLL);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = DeepCopy;
    obj = [DeepCopy allValues];
    v26 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v26)
    {
      v25 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = v14;
          v15 = objc_msgSend_objectForKeyedSubscript_(*(*(&v40 + 1) + 8 * v14));
          if (v15)
          {
            v16 = v15;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v17 = [v15 countByEnumeratingWithState:&v35 objects:v34 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v36;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v36 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v35 + 1) + 8 * i);
                  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v28[0] = MEMORY[0x1E69E9820];
                  v28[1] = 3221225472;
                  v29 = *v46;
                  v28[2] = __AVCaptureGetTransformedDetectedObjectsInfo_block_invoke;
                  v28[3] = &unk_1E786F150;
                  v30 = *&v46[16];
                  v31 = *&v46[32];
                  v28[4] = v22;
                  v32 = v44;
                  v33 = v45;
                  [v21 enumerateKeysAndObjectsUsingBlock:v28];
                  [v21 addEntriesFromDictionary:v22];
                }

                v18 = [v16 countByEnumeratingWithState:&v35 objects:v34 count:16];
              }

              while (v18);
            }
          }

          v14 = v27 + 1;
        }

        while (v27 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v26);
    }

    return v23;
  }

  return result;
}

uint64_t __AVCaptureGetTransformedDetectedObjectsInfo_block_invoke(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  if ([a2 hasSuffix:@"Rect"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(MEMORY[0x1E695F050] + 16);
      rect.origin = *MEMORY[0x1E695F050];
      rect.size = v6;
      if (CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v7 = *(a1 + 56);
        *&v14.a = *(a1 + 40);
        *&v14.c = v7;
        *&v14.tx = *(a1 + 72);
        rect = CGRectApplyAffineTransform(rect, &v14);
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(rect);
        [*(a1 + 32) setObject:DictionaryRepresentation forKeyedSubscript:a2];
      }
    }
  }

  if ([a2 hasSuffix:@"Roll"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(__CFDictionary *)a3 doubleValue];
      v10 = v9 + *(a1 + 88);
      if (*(a1 + 96))
      {
        v10 = -v10;
      }

      v11 = 360.0;
      if (v10 >= 360.0)
      {
        v11 = -360.0;
      }

      else if (v10 >= 0.0)
      {
        goto LABEL_14;
      }

      v10 = v10 + v11;
LABEL_14:
      [*(a1 + 32) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v10), a2}];
    }
  }

  result = [a2 hasSuffix:@"Yaw"];
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      [(__CFDictionary *)a3 doubleValue];
      if (*(a1 + 96) == 1)
      {
        if (v13 <= 0.0)
        {
          v13 = -v13;
        }

        else
        {
          v13 = 360.0 - v13;
        }
      }

      return [*(a1 + 32) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v13), a2}];
    }
  }

  return result;
}

__CFString *AVCaptureQOSClassToString(uint64_t a1)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return @"QOS_CLASS_DEFAULT";
    }

    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return @"QOS_CLASS_USER_INITIATED";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QoS class %d", a1];
    }

    return @"QOS_CLASS_USER_INTERACTIVE";
  }

  else
  {
    if (!a1)
    {
      return @"QOS_CLASS_UNSPECIFIED";
    }

    if (a1 != 9)
    {
      if (a1 == 17)
      {
        return @"QOS_CLASS_UTILITY";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QoS class %d", a1];
    }

    return @"QOS_CLASS_BACKGROUND";
  }
}

NSString *__cdecl AVCaptureReactionSystemImageNameForType(AVCaptureReactionType reactionType)
{
  if (AVCaptureReactionSystemImageNameForType_onceToken != -1)
  {
    AVCaptureReactionSystemImageNameForType_cold_1();
  }

  v1 = AVCaptureReactionSystemImageNameForType_nameForType;

  return objc_msgSend_objectForKeyedSubscript_(v1);
}

id __AVCaptureReactionSystemImageNameForType_block_invoke()
{
  v1[0] = AVCaptureReactionTypeThumbsUp;
  v1[1] = AVCaptureReactionTypeThumbsDown;
  v2[0] = @"hand.thumbsup.fill";
  v2[1] = @"hand.thumbsdown.fill";
  v1[2] = AVCaptureReactionTypeBalloons;
  v1[3] = AVCaptureReactionTypeHeart;
  v2[2] = @"balloon.2.fill";
  v2[3] = @"heart.fill";
  v1[4] = AVCaptureReactionTypeFireworks;
  v1[5] = AVCaptureReactionTypeRain;
  v2[4] = @"fireworks";
  v2[5] = @"cloud.rain.fill";
  v1[6] = AVCaptureReactionTypeConfetti;
  v1[7] = AVCaptureReactionTypeLasers;
  v2[6] = @"party.popper.fill";
  v2[7] = @"laser.burst";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:8];
  AVCaptureReactionSystemImageNameForType_nameForType = result;
  return result;
}

void sub_1A91CDCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_1()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_1 = result;
  return result;
}

void sub_1A91D081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t avcc_defaultVideoRetainedBufferCount(void *a1, int a2)
{
  Dimensions = CMVideoFormatDescriptionGetDimensions([a1 formatDescription]);
  CMFormatDescriptionGetMediaSubType([a1 formatDescription]);
  if (FigCapturePixelFormatIsPackedBayerRaw() && a2)
  {
    [objc_msgSend(objc_msgSend(a1 "videoSupportedFrameRateRanges")];
    v6 = v5 <= 60.0;
    v7 = 20;
  }

  else
  {
    v6 = Dimensions.height <= 3023 || Dimensions.width <= 4031;
    v7 = 5;
  }

  if (v6)
  {
    return 12;
  }

  else
  {
    return v7;
  }
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_2()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_2 = result;
  return result;
}

void sub_1A91E8804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *AVCaptureDeviceTypeToString(void *a1)
{
  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleCamera"])
  {
    return @"Wide";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTelephotoCamera"])
  {
    return @"Tele";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualCamera"])
  {
    return @"Dual";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideCamera"])
  {
    return @"UltraWide";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualWideCamera"])
  {
    return @"DualWide";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTripleCamera"])
  {
    return @"Triple";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera"])
  {
    return @"TimeOfFlight";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInLiDARDepthCamera"])
  {
    return @"LiDARDepth";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeDeskViewCamera"])
  {
    return @"Overhead";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTrueDepthCamera"])
  {
    return @"TrueDepth";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera"])
  {
    return @"WideMetadata";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera"])
  {
    return @"UltraWideMetadata";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera"])
  {
    return @"InfraredMetadata";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeMicrophone"])
  {
    return @"Microphone";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeExternal"])
  {
    return @"External";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeContinuityCamera"])
  {
    return @"ContinuityCamera";
  }

  return 0;
}

__CFString *AVCaptureDeviceTypeToShortString(void *a1)
{
  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleCamera"])
  {
    return @"W";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTelephotoCamera"])
  {
    return @"T";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualCamera"])
  {
    return @"D";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideCamera"])
  {
    return @"UW";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualWideCamera"])
  {
    return @"DW";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTripleCamera"])
  {
    return @"3";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera"])
  {
    return @"TOF";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInLiDARDepthCamera"])
  {
    return @"LD";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeDeskViewCamera"])
  {
    return @"OH";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTrueDepthCamera"])
  {
    return @"TD";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera"])
  {
    return @"WM";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera"])
  {
    return @"UWM";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera"])
  {
    return @"IRM";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeMicrophone"])
  {
    return @"MIC";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeExternal"])
  {
    return @"EXT";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeContinuityCamera"])
  {
    return @"CC";
  }

  return 0;
}

__CFString *AVCaptureDevicePositionToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_1E786F6F8[a1];
  }
}

__CFString *AVCaptureVideoStabilizationModeToString(uint64_t a1)
{
  if ((a1 + 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_1E786F710[a1 + 1];
  }
}

uint64_t ___registerServerConnectionDiedNotification_block_invoke()
{
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  v0 = [sRegisteredVideoDevices copy];
  os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  os_unfair_lock_lock(&sRegisterAudioDevicesLock);
  v1 = [sRegisteredAudioDevices copy];
  os_unfair_lock_unlock(&sRegisterAudioDevicesLock);
  if ([v0 count])
  {
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _reconnectDevices:v0];
  }

  if ([v1 count])
  {
    [NSClassFromString(&cfstr_Avcapturefigau.isa) _reconnectDevices:v1];
  }

  +[AVCaptureProprietaryDefaultsSingleton updateProprietaryDefaultsSource];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v2 postNotificationName:@"AVCaptureDeviceServerConnectionDiedNotification" object:0];
}

void ___registerVideoDevicesOnce_block_invoke()
{
  if (dword_1ED806A00)
  {
    v57 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  context = objc_autoreleasePoolPush();
  v67 = 0;
  v68 = 0;
  _refreshRegisteredDevices(@"AVCaptureFigVideoDevice", &v68, &v67);
  if ([v68 count] || objc_msgSend(v67, "count"))
  {
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _setUpCameraHistoryOnce];
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _initiateRefreshPreferredCameraProperties:1];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v1 = v68;
  v2 = [v68 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v64;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v64 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v63 + 1) + 8 * i);
        [v6 _setConnected:1];
        if (dword_1ED806A00)
        {
          *type = 0;
          v40[0] = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      v3 = [v1 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v3);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = v67;
  v9 = [v67 countByEnumeratingWithState:&v58 objects:&v62 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v58 + 1) + 8 * j);
        [v13 _setConnected:0];
        if (dword_1ED806A00)
        {
          *v40 = 0;
          v51[0] = OS_LOG_TYPE_DEFAULT;
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, v51[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      v10 = [v8 countByEnumeratingWithState:&v58 objects:&v62 count:16];
    }

    while (v10);
  }

  v55 = 0;
  v56 = 0;
  _refreshRegisteredDevices(@"AVCaptureFigAudioDevice", &v56, &v55);
  v53 = 0u;
  v54 = 0u;
  *v51 = 0u;
  v52 = 0u;
  v15 = v56;
  v16 = [v56 countByEnumeratingWithState:v51 objects:&v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v52;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*&v51[8] + 8 * k);
        if (dword_1ED806A00)
        {
          LODWORD(v46) = 0;
          v36[0] = OS_LOG_TYPE_DEFAULT;
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v22 = v46;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
          }

          else
          {
            v23 = v22 & 0xFFFFFFFE;
          }

          if (v23)
          {
            *v40 = 136315394;
            v41 = "_updateSourceInfoArray";
            v42 = 2112;
            v43 = v20;
            LODWORD(v34) = 22;
            _os_log_send_and_compose_impl(v23, 0, type, 128, &dword_1A917C000, v21, 0, "<<<< AVCaptureDevice >>>> %s: Posting AVCaptureDeviceWasConnectedNotification for audio device %@", v40, v34);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      v17 = [v15 countByEnumeratingWithState:v51 objects:&v57 count:16];
    }

    while (v17);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v24 = v55;
  v25 = [v55 countByEnumeratingWithState:&v46 objects:type count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v47;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v47 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v46 + 1) + 8 * m);
        if (dword_1ED806A00)
        {
          v45 = 0;
          v44 = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v45;
          v32 = v44;
          if (os_log_type_enabled(v30, v44))
          {
            v33 = v31;
          }

          else
          {
            v33 = v31 & 0xFFFFFFFE;
          }

          if (v33)
          {
            *v36 = 136315394;
            v37 = "_updateSourceInfoArray";
            v38 = 2112;
            v39 = v29;
            LODWORD(v34) = 22;
            _os_log_send_and_compose_impl(v33, 0, v40, 128, &dword_1A917C000, v30, v32, "<<<< AVCaptureDevice >>>> %s: Posting AVCaptureDeviceWasDisconnectedNotification for audio device %@", v36, v34);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      v26 = [v24 countByEnumeratingWithState:&v46 objects:type count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(context);
}

void ___registerVideoDevicesOnce_block_invoke_1516()
{
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  v0 = [sRegisteredVideoDevices copy];
  os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v5 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v6 + 1) + 8 * v4++) _cameraUsageRestrictionsChanged];
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v6 objects:v5 count:16];
    }

    while (v2);
  }
}

void _refreshRegisteredDevices(void *a1, void *a2, void *a3)
{
  if ([a1 isEqualToString:@"AVCaptureFigAudioDevice"])
  {
    v31 = a2;
    v32 = a3;
    v6 = &sRegisterAudioDevicesLock;
  }

  else
  {
    if (![a1 isEqualToString:@"AVCaptureFigVideoDevice"])
    {
      return;
    }

    v31 = a2;
    v32 = a3;
    v6 = &sRegisterVideoDevicesLock;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  lock = v6;
  os_unfair_lock_lock(v6);
  v9 = [a1 isEqualToString:@"AVCaptureFigAudioDevice"];
  v10 = &sRegisteredAudioDevices;
  if (!v9)
  {
    v10 = &sRegisteredVideoDevices;
  }

  v11 = *v10;
  v28 = a1;
  v12 = [NSClassFromString(a1) _devicesWithPriorRegisteredDevices:*v10];
  UniqueIDsForDevices = _getUniqueIDsForDevices(v11);
  v14 = _getUniqueIDsForDevices(v12);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [v12 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        if (([UniqueIDsForDevices containsObject:{objc_msgSend(v19, "uniqueID", v28, lock)}] & 1) == 0 && objc_msgSend(v19, "isConnected"))
        {
          [v7 addObject:v19];
        }
      }

      v16 = [v12 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v16);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = [v11 countByEnumeratingWithState:&v34 objects:v33 count:{16, v28}];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        if (([v14 containsObject:{objc_msgSend(v24, "uniqueID")}] & 1) == 0)
        {
          [v8 addObject:v24];
        }
      }

      v21 = [v11 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v21);
  }

  v25 = [v29 isEqualToString:@"AVCaptureFigAudioDevice"];
  v26 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v12];
  v27 = &sRegisteredAudioDevices;
  if (!v25)
  {
    v27 = &sRegisteredVideoDevices;
  }

  *v27 = v26;

  os_unfair_lock_unlock(lock);
  if (v31)
  {
    *v31 = v7;
  }

  if (v32)
  {
    *v32 = v8;
  }
}

void *_getUniqueIDsForDevices(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) uniqueID];
        if (v7)
        {
          [v2 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  return v2;
}

Class __getCMContinuityCaptureCapabilitiesClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!CMContinuityCaptureCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CMContinuityCaptureCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E786F6E0;
    v5 = 0;
    CMContinuityCaptureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CMContinuityCaptureCoreLibraryCore_frameworkLibrary)
  {
    __getCMContinuityCaptureCapabilitiesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CMContinuityCaptureCapabilities");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCMContinuityCaptureCapabilitiesClass_block_invoke_cold_1();
  }

  getCMContinuityCaptureCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CMContinuityCaptureCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CMContinuityCaptureCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A91EE9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91EEDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91EF3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91EF8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sioNotificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __sioNotificationHandler_block_invoke;
  v6[3] = &unk_1E786EFD0;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a5;
  return [a2 performBlockOnSessionNotifyingThread:{v6, a4}];
}

uint64_t AVCaptureMetadataObjectsOnly()
{
  if (AVCaptureMetadataObjectsOnly_onceToken != -1)
  {
    AVCaptureMetadataObjectsOnly_cold_1();
  }

  return AVCaptureMetadataObjectsOnly_answer;
}

id AVIdentifierForObject(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithFormat:@"<%@: %p %lld>", v4, a1, mach_absolute_time()];

  return v5;
}

CFTypeRef AVMetadataObjectCreateBoxedMetadataFromObjectAndFormatDescription(void *a1, uint64_t a2, uint64_t *a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  v6 = AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription(a1, a2, &v9);
  v7 = v6;
  if (a3 && !v6)
  {
    [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    *a3 = AVErrorForClientProgrammingError();
  }

  return v7;
}

CFTypeRef AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription(void *a1, uint64_t a2, uint64_t *a3)
{
  cf = 0;
  if (!a2)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v8 = [v13 stringWithFormat:@"Metadata value is an instance of %@, but there is no format description", NSStringFromClass(v14)];
    goto LABEL_27;
  }

  if (FigBoxedMetadataCreateForConstruction())
  {
    AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_1();
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = [v6 stringWithFormat:@"Metadata value is an instance of %@, but format description does not properly describe face data", NSStringFromClass(v7)];
    [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:*MEMORY[0x1E6962938]];
    LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
    if (!LocalIDForMetadataIdentifyingFactors)
    {
      AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_10();
      goto LABEL_27;
    }

    if (MEMORY[0x1AC5828D0](cf, LocalIDForMetadataIdentifyingFactors, [a1 faceID]))
    {
      AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_2();
    }

    else
    {
      [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:*MEMORY[0x1E6962930]];
      if (!FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
      {
        AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_9();
        goto LABEL_27;
      }

      [a1 bounds];
      v23 = CGRectStandardize(v22);
      x = v23.origin.x;
      v16 = x;
      v11 = v23.origin.x + v23.size.width;
      v17 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v23.origin.y), *&v23.origin.y);
      *&v23.origin.x = v23.origin.y + v23.size.height;
      x_low = LODWORD(v23.origin.x);
      v19 = x;
      v20 = LODWORD(v23.origin.x);
      appended = FigBoxedMetadataAppendValue();
      if (appended)
      {
        AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_3(appended, &v16);
      }

      else
      {
        if (![a1 hasRollAngle])
        {
          goto LABEL_34;
        }

        [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:*MEMORY[0x1E6962940]];
        if (!FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
        {
          AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_8();
          goto LABEL_27;
        }

        [a1 rollAngle];
        if (FigBoxedMetadataAppendFloat32())
        {
          AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_4();
        }

        else
        {
          if (![a1 hasYawAngle])
          {
            goto LABEL_35;
          }

LABEL_34:
          if (!AVMetadataItemGetLocalIDForIdentifierInFormatDescription(a2, *MEMORY[0x1E6962948]))
          {
            AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_7();
            goto LABEL_27;
          }

          [a1 yawAngle];
          if (FigBoxedMetadataAppendFloat32())
          {
            AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_5();
          }

          else
          {
LABEL_35:
            if (FigBoxedMetadataEndConstruction())
            {
              AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_6();
            }
          }
        }
      }
    }
  }

  v8 = 0;
LABEL_27:
  if (a3)
  {
    *a3 = v8;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t AVMetadataItemGetLocalIDForIdentifierInFormatDescription(uint64_t a1, uint64_t a2)
{
  [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:a2];

  return FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
}

AVMetadataCatHeadObject *AVMetadataMakeMetadataObjectFromBoxedMetadata(uint64_t a1, void *a2, CGPoint *a3, CGPoint *a4)
{
  if ([a2 isEqualToString:*MEMORY[0x1E69602D0]])
  {
    v47 = *a3;
    x = a3[1].x;
    v41 = *a4;
    v44 = a4[1].x;
    v8 = *(MEMORY[0x1E695F050] + 16);
    v57 = *MEMORY[0x1E695F050];
    v58 = v8;
    FormatDescription = FigBoxedMetadataGetFormatDescription();
    if (FigBoxedMetadataGetNumberOfItems() < 1)
    {
LABEL_16:
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_9();
    }

    else
    {
      v10 = 0;
      v40 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
      do
      {
        AVMetadataItemIdentifierForItemIndex(v10, a1, FormatDescription);
        if (FigCFEqual())
        {
          while (1)
          {
            LODWORD(v13) = FigBoxedMetadataGetValueOfItemAtIndexAsSInt32();
            if (++v10 >= FigBoxedMetadataGetNumberOfItems())
            {
              break;
            }

            AVMetadataItemIdentifierForItemIndex(v10, a1, FormatDescription);
            if (!FigCFEqual())
            {
              v13 = v13;
              v14 = 1;
              goto LABEL_8;
            }
          }

          v13 = v13;
          goto LABEL_22;
        }

LABEL_8:
        if (FigCFEqual())
        {
          AVMetadataItemBoundsFromBoxedMetadataForItemIndex(a1, v10, &v57);
          v12 = v17;
        }

        else if (FigCFEqual())
        {
          FigBoxedMetadataGetValueOfItemAtIndexAsFloat32();
          v16 = v18;
          v11 = 1;
        }

        else if (FigCFEqual())
        {
          FigBoxedMetadataGetValueOfItemAtIndexAsFloat32();
          v15 = v19;
          v40 = 1;
        }

        ++v10;
      }

      while (v10 < FigBoxedMetadataGetNumberOfItems());
      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_22:
      if (v12)
      {
        v28 = [AVMetadataFaceObject alloc];
        v55 = v47;
        v56 = x;
        v53 = v41;
        v54 = v44;
        v29 = [(AVMetadataFaceObject *)v28 initWithFaceID:v13 hasRollAngle:v11 & 1 rollAngle:v40 & 1 hasYawAngle:0 yawAngle:&v55 hasPitchAngle:&v53 pitchAngle:v16 time:v15 duration:0.0 bounds:v57, v58];
        return v29;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_10();
    }

    return 0;
  }

  if ([a2 isEqualToString:*MEMORY[0x1E69602D8]])
  {
    v48 = *a3;
    v51 = a3[1].x;
    v42 = *a4;
    v45 = a4[1].x;
    v59[0] = -1;
    v20 = *(MEMORY[0x1E695F050] + 16);
    v57 = *MEMORY[0x1E695F050];
    v58 = v20;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E6962950], *MEMORY[0x1E6962958], v59, &v57);
    v21 = v59[0];
    y = v57.y;
    v22 = v57.x;
    height = v58.height;
    width = v58.width;
    v60.origin = v57;
    v60.size = v58;
    IsNull = CGRectIsNull(v60);
    if (v21 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_8(IsNull);
    }

    else
    {
      if (!IsNull)
      {
        v27 = AVMetadataHumanBodyObject;
LABEL_32:
        v55 = v48;
        v56 = v51;
        v53 = v42;
        v54 = v45;
        v29 = [[v27 alloc] initWithBodyID:v21 time:&v55 duration:&v53 bounds:{v22, y, width, height}];
        return v29;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_7();
    }
  }

  else if ([a2 isEqualToString:*MEMORY[0x1E69602C0]])
  {
    v48 = *a3;
    v51 = a3[1].x;
    v42 = *a4;
    v45 = a4[1].x;
    v59[0] = -1;
    v30 = *(MEMORY[0x1E695F050] + 16);
    v57 = *MEMORY[0x1E695F050];
    v58 = v30;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E6962910], *MEMORY[0x1E6962918], v59, &v57);
    v21 = v59[0];
    y = v57.y;
    v22 = v57.x;
    height = v58.height;
    width = v58.width;
    v61.origin = v57;
    v61.size = v58;
    v31 = CGRectIsNull(v61);
    if (v21 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_6(v31);
    }

    else
    {
      if (!v31)
      {
        v27 = AVMetadataCatBodyObject;
        goto LABEL_32;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_5();
    }
  }

  else if ([a2 isEqualToString:*MEMORY[0x1E69602C8]])
  {
    v48 = *a3;
    v51 = a3[1].x;
    v42 = *a4;
    v45 = a4[1].x;
    v59[0] = -1;
    v32 = *(MEMORY[0x1E695F050] + 16);
    v57 = *MEMORY[0x1E695F050];
    v58 = v32;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E6962920], *MEMORY[0x1E6962928], v59, &v57);
    v21 = v59[0];
    y = v57.y;
    v22 = v57.x;
    height = v58.height;
    width = v58.width;
    v62.origin = v57;
    v62.size = v58;
    v33 = CGRectIsNull(v62);
    if (v21 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_4(v33);
    }

    else
    {
      if (!v33)
      {
        v27 = AVMetadataDogBodyObject;
        goto LABEL_32;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_3();
    }
  }

  else if ([a2 isEqualToString:*MEMORY[0x1E69602E0]])
  {
    v49 = *a3;
    v52 = a3[1].x;
    v43 = *a4;
    v46 = a4[1].x;
    v59[0] = 0;
    v35 = *(MEMORY[0x1E695F050] + 16);
    v57 = *MEMORY[0x1E695F050];
    v58 = v35;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E69629D0], *MEMORY[0x1E69629C8], v59, &v57);
    v36 = v59[0];
    v37 = v57;
    v38 = v58;
    v63.origin = v57;
    v63.size = v58;
    v39 = CGRectIsNull(v63);
    if (v36 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_2(v39);
    }

    else
    {
      if (!v39)
      {
        v55 = v49;
        v56 = v52;
        v53 = v43;
        v54 = v46;
        v29 = [[AVMetadataSalientObject alloc] initWithObjectID:v36 time:&v55 duration:&v53 bounds:v37, v38];
        return v29;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_1();
    }
  }

  else
  {
    if ([a2 isEqualToString:@"mdta/com.apple.quicktime.detected-cat-head"])
    {
      v57 = *a3;
      v58.width = a3[1].x;
      v55 = *a4;
      v56 = a4[1].x;
      return AVMetadataItemMakeCatHeadObjectFromBoxedMetadata(a1, &v57, &v55);
    }

    if ([a2 isEqualToString:@"mdta/com.apple.quicktime.detected-dog-head"])
    {
      v57 = *a3;
      v58.width = a3[1].x;
      v55 = *a4;
      v56 = a4[1].x;
      return AVMetadataItemMakeDogHeadObjectFromBoxedMetadata(a1, &v57, &v55);
    }
  }

  return 0;
}

AVMetadataCatHeadObject *AVMetadataItemMakeCatHeadObjectFromBoxedMetadata(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v18 = -1;
  v5 = *(MEMORY[0x1E695F050] + 16);
  v16 = *MEMORY[0x1E695F050];
  v17 = v5;
  AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, @"fiel/com.apple.quicktime.detected-cat-head.object-id", @"fiel/com.apple.quicktime.detected-cat-head.bounds", &v18, &v16);
  v6 = v18;
  v7 = v16;
  v8 = v17;
  v19.origin = v16;
  v19.size = v17;
  IsNull = CGRectIsNull(v19);
  if (v6 < 0)
  {
    AVMetadataItemMakeCatHeadObjectFromBoxedMetadata_cold_2(IsNull);
  }

  else
  {
    if (!IsNull)
    {
      v10 = [AVMetadataCatHeadObject alloc];
      v14 = *a2;
      v15 = *(a2 + 2);
      v12 = *a3;
      v13 = *(a3 + 2);
      return [(AVMetadataCatHeadObject *)v10 initWithObjectID:v6 time:&v14 duration:&v12 bounds:v7, v8];
    }

    AVMetadataItemMakeCatHeadObjectFromBoxedMetadata_cold_1();
  }

  return 0;
}

AVMetadataDogHeadObject *AVMetadataItemMakeDogHeadObjectFromBoxedMetadata(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v18 = -1;
  v5 = *(MEMORY[0x1E695F050] + 16);
  v16 = *MEMORY[0x1E695F050];
  v17 = v5;
  AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, @"fiel/com.apple.quicktime.detected-dog-head.object-id", @"fiel/com.apple.quicktime.detected-dog-head.bounds", &v18, &v16);
  v6 = v18;
  v7 = v16;
  v8 = v17;
  v19.origin = v16;
  v19.size = v17;
  IsNull = CGRectIsNull(v19);
  if (v6 < 0)
  {
    AVMetadataItemMakeDogHeadObjectFromBoxedMetadata_cold_2(IsNull);
  }

  else
  {
    if (!IsNull)
    {
      v10 = [AVMetadataDogHeadObject alloc];
      v14 = *a2;
      v15 = *(a2 + 2);
      v12 = *a3;
      v13 = *(a3 + 2);
      return [(AVMetadataDogHeadObject *)v10 initWithObjectID:v6 time:&v14 duration:&v12 bounds:v7, v8];
    }

    AVMetadataItemMakeDogHeadObjectFromBoxedMetadata_cold_1();
  }

  return 0;
}

uint64_t AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces()
{
  v0 = *MEMORY[0x1E6960298];
  v1 = *MEMORY[0x1E6962930];
  v6[0] = *MEMORY[0x1E6962938];
  v6[1] = v1;
  v2 = *MEMORY[0x1E6960248];
  v7[0] = v0;
  v7[1] = v2;
  v3 = *MEMORY[0x1E6960208];
  v4 = *MEMORY[0x1E6962948];
  v6[2] = *MEMORY[0x1E6962940];
  v6[3] = v4;
  v7[2] = v3;
  v7[3] = v3;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

uint64_t AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDogBodyObject()
{
  v0 = *MEMORY[0x1E6960298];
  v1 = *MEMORY[0x1E6962928];
  v4[0] = *MEMORY[0x1E6962920];
  v4[1] = v1;
  v2 = *MEMORY[0x1E6960248];
  v5[0] = v0;
  v5[1] = v2;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
}

uint64_t AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfSalientObject()
{
  v0 = *MEMORY[0x1E6960298];
  v1 = *MEMORY[0x1E69629C8];
  v4[0] = *MEMORY[0x1E69629D0];
  v4[1] = v1;
  v2 = *MEMORY[0x1E6960248];
  v5[0] = v0;
  v5[1] = v2;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
}

uint64_t AVMetadataItemIdentifierForItemIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigBoxedMetadataGetLocalIDOfItemAtIndex())
  {
    AVMetadataItemIdentifierForItemIndex_cold_2();
    return 0;
  }

  result = FigMetadataFormatDescriptionGetIdentifierForLocalID();
  if (!result)
  {
    AVMetadataItemIdentifierForItemIndex_cold_1();
    return 0;
  }

  return result;
}

float64x2_t AVMetadataItemBoundsFromBoxedMetadataForItemIndex(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  FigBoxedMetadataGetValueOfItemAtIndex();
  result = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 16);
  *a3 = *MEMORY[0x1E695F050];
  a3[1] = v5;
  return result;
}

uint64_t AVMetadataItemIDAndBoundsFromBoxedMetadata(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float64x2_t *a5)
{
  FormatDescription = FigBoxedMetadataGetFormatDescription();
  result = FigBoxedMetadataGetNumberOfItems();
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      AVMetadataItemIdentifierForItemIndex(i, a1, FormatDescription);
      if (FigCFEqual())
      {
        *a4 = FigBoxedMetadataGetValueOfItemAtIndexAsSInt32();
      }

      else if (FigCFEqual())
      {
        AVMetadataItemBoundsFromBoxedMetadataForItemIndex(a1, i, a5);
      }

      result = FigBoxedMetadataGetNumberOfItems();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_3()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_3 = result;
  return result;
}

uint64_t AVMetadataObjectAdjustBaseClassProperties(uint64_t a1, CGRect *a2, double a3, double a4, double a5, double a6)
{
  v6 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a1), vceqq_f64(*(a1 + 16), *(a1 + 16)))));
  v6.i16[0] = vmaxv_u16(v6);
  v7 = (v6.i32[0] ^ 1) & 1;
  if (v7 == 1)
  {
    v9 = *(a1 + 16);
    *&v11.a = *a1;
    *&v11.c = v9;
    *&v11.tx = *(a1 + 32);
    v12 = CGRectApplyAffineTransform(*&a3, &v11);
    if (a2)
    {
      *a2 = v12;
    }
  }

  return v7;
}

void *__figBarcodeTypeToAVFMachineReadableCodeType_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{@"org.gs1.UPC-E", *MEMORY[0x1E69C6940], @"org.iso.Code39", *MEMORY[0x1E69C6880], @"org.iso.Code39Mod43", *MEMORY[0x1E69C6888], @"org.gs1.EAN-13", *MEMORY[0x1E69C68B8], @"org.gs1.EAN-8", *MEMORY[0x1E69C68C0], @"com.intermec.Code93", *MEMORY[0x1E69C68A0], @"org.iso.Code128", *MEMORY[0x1E69C6878], @"org.iso.QRCode", *MEMORY[0x1E69C6938], @"org.iso.Aztec", *MEMORY[0x1E69C6868], @"org.iso.PDF417", *MEMORY[0x1E69C6910], @"org.ansi.Interleaved2of5", *MEMORY[0x1E69C68E0], @"org.gs1.ITF14", *MEMORY[0x1E69C68F0], @"org.iso.DataMatrix", *MEMORY[0x1E69C68B0], @"Codabar", *MEMORY[0x1E69C6870], @"org.gs1.GS1DataBar", *MEMORY[0x1E69C68C8], @"org.gs1.GS1DataBarExpanded", *MEMORY[0x1E69C68D0], @"org.gs1.GS1DataBarLimited", *MEMORY[0x1E69C68D8], @"org.iso.MicroQR", *MEMORY[0x1E69C6908], @"org.iso.MicroPDF417", *MEMORY[0x1E69C6900], 0}];
  figBarcodeTypeToAVFMachineReadableCodeType_sFigBarcodeToAVFMRCTypes = result;
  return result;
}

void sub_1A92050E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92052FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92054EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9205E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A9206500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A92068F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void avpds_proprietaryDefaultsSourceNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __avpds_proprietaryDefaultsSourceNotificationHandler_block_invoke;
  v7[3] = &unk_1E786EAA8;
  v7[4] = a3;
  v7[5] = a5;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], v7);
  v6 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v6);
}

uint64_t __avpds_proprietaryDefaultsSourceNotificationHandler_block_invoke(uint64_t a1)
{
  v2 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 _handleNotification:v3 payload:v4];
}

void *avcmcs_constituentDeviceFormatFromVirtualDeviceFormat(void *a1, void *a2)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 formats];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return a1;
  }

  v5 = v4;
  v6 = *v13;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v13 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v12 + 1) + 8 * v7);
    v9 = [v8 isVideoBinned];
    if (v9 == [a1 isVideoBinned])
    {
      if (CFEqual([v8 formatDescription], objc_msgSend(a1, "formatDescription")))
      {
        return v8;
      }
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return a1;
    }
  }
}

__n128 __avcmcs_computeSystemPressureCost_block_invoke()
{
  qword_1EB3851E8 = &unk_1F1CEA4B8;
  qword_1EB3851F0 = 0x457A000000000000;
  qword_1EB3851F8 = 0;
  unk_1EB385200 = 0;
  qword_1EB385208 = &unk_1F1CEA4D0;
  qword_1EB385210 = 0x459C400000000000;
  qword_1EB385218 = 0;
  unk_1EB385220 = 0;
  qword_1EB385228 = &unk_1F1CEA4E8;
  *algn_1EB385230 = xmmword_1A92AB860;
  qword_1EB385240 = 0x45825000BFB9999ALL;
  qword_1EB385248 = &unk_1F1CEA500;
  *algn_1EB385250 = xmmword_1A92AB870;
  qword_1EB385260 = 0x45223666BF67F62BLL;
  qword_1EB385268 = &unk_1F1CEA518;
  *algn_1EB385270 = xmmword_1A92AB880;
  qword_1EB385280 = 0x4569D000BF88F5C3;
  qword_1EB385288 = &unk_1F1CEA530;
  qword_1EB385290 = 0x453B800000000000;
  qword_1EB385298 = 0;
  unk_1EB3852A0 = 0;
  qword_1EB3852A8 = &unk_1F1CEA548;
  result = xmmword_1A92AB880;
  *algn_1EB3852B0 = xmmword_1A92AB880;
  qword_1EB3852C0 = 0x4569D000BF88F5C3;
  return result;
}

void OUTLINED_FUNCTION_6_0()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
}

void *fvd_prioritizeUsingCameraHistory(void *a1, void *a2, void *a3, char a4, char a5, int a6, void *a7)
{
  result = [a1 count];
  if (result)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    result = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
    v20 = result;
    if (result)
    {
      v19 = *v24;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        if ([a1 count])
        {
          for (i = 0; i < [a1 count]; ++i)
          {
            v15 = [a1 objectAtIndexedSubscript:i];
            v16 = v15;
            if (((a4 & 1) != 0 || ([v15 isSuspended] & 1) == 0) && ((a5 & 1) != 0 || objc_msgSend(v16, "specialDeviceType") != 1) && objc_msgSend(objc_msgSend_objectForKeyedSubscript_(v13), "isEqualToString:", v16[9]))
            {
              if ([v16 specialDeviceType] == 2)
              {
                if (!a6)
                {
                  goto LABEL_22;
                }
              }

              else if ([v16 specialDeviceType] != 3 || (a6 & 1) == 0)
              {
LABEL_22:
                [a2 addObject:v16];
                [a1 removeObjectAtIndex:i];
                break;
              }

              if (fvd_deviceIsPresentInCameraList(v16, a7))
              {
                goto LABEL_22;
              }
            }
          }
        }

        result = [a1 count];
        if (!result)
        {
          break;
        }

        if (++v12 == v20)
        {
          result = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
          v20 = result;
          if (result)
          {
            goto LABEL_4;
          }

          return result;
        }
      }
    }
  }

  return result;
}

double fvd_validatedRectOfInterestForMinRectOfInterestSize(_BYTE *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *a1 = 0;
  v9 = (a2 - a6) * 0.5;
  if (a2 <= a6)
  {
    v9 = 0.0;
  }

  v10 = (a3 - a7) * 0.5;
  if (a3 <= a7)
  {
    v10 = 0.0;
  }

  if (v9 != 0.0 || v10 != 0.0)
  {
    a4 = a4 - v9;
    v11 = a5 - v10;
    if (a4 >= 0.0)
    {
      v12 = 0.0;
      if (a2 + a4 > 1.0)
      {
        v12 = 1.0 - (a2 + a4);
      }
    }

    else
    {
      v12 = -a4;
    }

    if (v11 >= 0.0)
    {
      v13 = 0.0;
      if (a3 + v11 > 1.0)
      {
        v13 = 1.0 - (a3 + v11);
      }
    }

    else
    {
      v13 = -v11;
    }

    if (v12 != 0.0 || v13 != 0.0)
    {
      a4 = a4 + v12;
      *a1 = 1;
    }
  }

  return a4;
}

void sub_1A9216360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A92164D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A9216CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Block_object_dispose((v31 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A9217268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9217B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9218424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v63 - 240), 8);
  _Block_object_dispose((v63 - 208), 8);
  _Block_object_dispose((v63 - 176), 8);
  _Block_object_dispose((v63 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A9219950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 184), 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1A921A704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 240), 8);
  _Block_object_dispose((v65 - 208), 8);
  _Block_object_dispose((v65 - 176), 8);
  _Block_object_dispose((v65 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A921B680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1A921C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A921D45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A921D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A921E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 240), 8);
  _Block_object_dispose((v42 - 176), 8);
  _Block_object_dispose((v42 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A921E900(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A921FD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92202C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A922065C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9220A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9220D3C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A9221550(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A922231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922287C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9222A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9222C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92233E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A9224638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A9225948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A922688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Block_object_dispose((v24 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A92273A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 256), 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A9227664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9228288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9228798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose((v30 - 112), 8);
  _Block_object_dispose((v30 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9229860(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A9229CCC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A922A0A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A922A6D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A922ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922BF14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A922C200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A922CB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A922CCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922CE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922DE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922E24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922F808(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A92347D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A923644C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9236B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A9236FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A9237624(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t fvd_deviceIsPresentInCameraList(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if ([objc_msgSend_objectForKeyedSubscript_(*(*(&v9 + 1) + 8 * v7)) isEqualToString:*(a1 + 72)])
        {
          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_4()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_4 = result;
  return result;
}

float AVGestaltGetFloatAnswer(uint64_t a1, const char *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v2 = objc_msgSend_objectForKeyedSubscript_(sAVGestaltFloatDataBase);
  if (!v2)
  {
    return NAN;
  }

  [v2 floatValue];
  return result;
}

uint64_t AVGestaltGetStringAnswer(uint64_t a1, const char *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v2 = sAVGestaltStringDataBase;

  return objc_msgSend_objectForKeyedSubscript_(v2);
}

uint64_t AVGestaltGetBoolAnswerWithError(uint64_t a1, char *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(sAVGestaltBoolDataBase);
  v4 = v3;
  if (a2)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }

    *a2 = v5;
  }

  return [v4 BOOLValue];
}

uint64_t AVGestaltGetIntegerAnswerWithError(uint64_t a1, char *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(sAVGestaltIntegerDataBase);
  v4 = v3;
  if (a2)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }

    *a2 = v5;
  }

  return [v4 integerValue];
}