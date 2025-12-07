@interface BWCaptureDeferredPhotoProcessor
- (BWCaptureDeferredPhotoProcessor)initWithFigCaptureDeferredPhotoProcessor:(OpaqueFigCaptureDeferredPhotoProcessor *)processor;
- (uint64_t)_runImageCorruptionDetectionForJob:(__IOSurface *)job onEncodedSurface:(uint64_t)surface surfaceSize:;
- (void)_prepareToTerminateImmediatelyDueToError:(int)error;
- (void)dealloc;
- (void)job:(id)job completedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)job:(id)job failedWithError:(int)error;
- (void)request:(id)request failedWithError:(int)error;
@end

@implementation BWCaptureDeferredPhotoProcessor

- (BWCaptureDeferredPhotoProcessor)initWithFigCaptureDeferredPhotoProcessor:(OpaqueFigCaptureDeferredPhotoProcessor *)processor
{
  v6.receiver = self;
  v6.super_class = BWCaptureDeferredPhotoProcessor;
  v4 = [(BWCaptureDeferredPhotoProcessor *)&v6 init];
  if (v4)
  {
    v4->_weakDeferredPhotoProcessorReference = [FigWeakReference weakReferenceToObject:processor];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCaptureDeferredPhotoProcessor;
  [(BWCaptureDeferredPhotoProcessor *)&v3 dealloc];
}

void __59__BWCaptureDeferredPhotoProcessor_request_failedWithError___block_invoke(void *result)
{
  if (result[4] == *(result[5] + 48))
  {
    captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest(result[6]);
  }
}

- (void)job:(id)job failedWithError:(int)error
{
  v4 = *&error;
  processorRequest = [job processorRequest];

  [(BWCaptureDeferredPhotoProcessor *)self request:processorRequest failedWithError:v4];
}

- (void)request:(id)request failedWithError:(int)error
{
  v4 = *&error;
  referencedObject = [(FigWeakReference *)self->_weakDeferredPhotoProcessorReference referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    if (*DerivedStorage)
    {
      if (dword_1ED843F90)
      {
        v19[0] = 0;
        v18 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [objc_msgSend(request container];
      v10 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_10();
        kdebug_trace();
      }

      v11 = objc_autoreleasePoolPush();
      if (![request parent])
      {
        v16[0] = @"CaptureRequestIdentifier";
        v17[0] = [request captureRequestIdentifier];
        v16[1] = @"PhotoIdentifiers";
        photoIdentifier = [request photoIdentifier];
        v17[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&photoIdentifier count:1];
        v16[2] = @"ErrorStatus";
        v17[2] = [MEMORY[0x1E696AD98] numberWithInt:v4];
        captureDeferredPhotoProcessor_sendXPCNotificationWithPayload(referencedObject, @"DidFinishProcessingPhotoProxy", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3]);
      }

      if ((v8[57] & 1) == 0)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __59__BWCaptureDeferredPhotoProcessor_request_failedWithError___block_invoke;
        v14[3] = &unk_1E7991EF8;
        v14[4] = request;
        v14[5] = v8;
        v14[6] = referencedObject;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(referencedObject, v14);
      }

      objc_autoreleasePoolPop(v11);
      if (*v10 == 1)
      {
        kdebug_trace();
      }
    }
  }
}

- (void)job:(id)job completedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (dword_1ED843F90)
  {
    v217[0] = 0;
    v216 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    outputMirroring = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = [(FigWeakReference *)self->_weakDeferredPhotoProcessorReference referencedObject:*v192];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && *DerivedStorage)
  {
    v10 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_10();
      kdebug_trace();
    }

    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([objc_msgSend(job "processorRequest")])
    {

      goto LABEL_48;
    }

    memset(&v213, 0, sizeof(v213));
    CMSampleBufferGetPresentationTimeStamp(&v213, buffer);
    v13 = *MEMORY[0x1E695E480];
    v215[0] = v213;
    v14 = CMTimeCopyAsDictionary(v215, v13);
    if (v14)
    {
      v204 = v8;
      selfCopy = self;
      v209 = v11;
      v208 = v14;
      v203 = OUTLINED_FUNCTION_19_32(v14, @"PhotoManifest");
      v15 = [v203 descriptorForSampleBuffer:buffer];
      ShouldIncludeDiagnosticMetadata = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
      v206 = ShouldIncludeDiagnosticMetadata != 0;
      self = OUTLINED_FUNCTION_19_32(ShouldIncludeDiagnosticMetadata, @"StillImageSettings");
      outputFileType = [(BWCaptureDeferredPhotoProcessor *)self outputFileType];
      outputRotationDegrees = [(BWCaptureDeferredPhotoProcessor *)self outputRotationDegrees];
      outputMirroring = [(BWCaptureDeferredPhotoProcessor *)self outputMirroring];
      v210 = v12;
      flashMode = [(BWCaptureDeferredPhotoProcessor *)self flashMode];
      StillImageMetadataInSettingsForSampleBuffer = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(self, buffer);
      IrisAssetIdentifierForSettingsAndSampleBuffer = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(self, buffer);
      imageGroupIdentifier = [(BWCaptureDeferredPhotoProcessor *)self imageGroupIdentifier];
      v23 = objc_msgSend_time(v15);
      v24 = flashMode;
      v12 = v210;
      v25 = FigCaptureMetadataUtilitiesCreateMetadataAttachments(buffer, outputFileType, outputRotationDegrees, outputMirroring, 1, 1, v24, v206, 1, 0, 1, 0, 0, 0, 0, StillImageMetadataInSettingsForSampleBuffer, IrisAssetIdentifierForSettingsAndSampleBuffer, imageGroupIdentifier, 0, v23, 0);
      [v210 setObject:v208 forKeyedSubscript:@"PresentationTimestamp"];
      [v210 setObject:objc_msgSend(objc_msgSend(job forKeyedSubscript:{"processorRequest"), "captureRequestIdentifier"), @"CaptureRequestIdentifier"}];
      [v210 setObject:objc_msgSend(v15 forKeyedSubscript:{"photoIdentifier"), @"PhotoIdentifier"}];
      processingFlags = [v15 processingFlags];
      if ((processingFlags & 0x10000) == 0)
      {
        outputMirroring = OUTLINED_FUNCTION_19_32(processingFlags, @"EncodedImageSurface");
        v11 = [OUTLINED_FUNCTION_19_32(outputMirroring @"EncodedImageSurfaceSize")];
        rawOutputFormat = [OUTLINED_FUNCTION_19_32(v11 @"EncodedImageCodecType")];
        v28 = [OUTLINED_FUNCTION_19_32(rawOutputFormat @"EncodedImageFileType")];
LABEL_13:
        if (outputMirroring)
        {
          if (v11)
          {
            if (rawOutputFormat)
            {
              if (v28)
              {
                if (v25)
                {
                  [v12 setObject:outputMirroring forKeyedSubscript:@"Surface"];
                  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v11), @"SurfaceSize"}];
                  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", rawOutputFormat), @"PhotoCodec"}];
                  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v28), @"PhotoFileType"}];
                  [v12 setObject:v25 forKeyedSubscript:@"Metadata"];
                  if ([(BWCaptureDeferredPhotoProcessor *)self depthDataDeliveryEnabled]&& ([(BWCaptureDeferredPhotoProcessor *)self embedsDepthDataInImage]& 1) == 0)
                  {
                    fcdpp_copyAttachedMediaSurfaceDataFromSampleBufferIntoNotificationPayload(buffer, @"Depth", *off_1E798D2B8, 0, v12, @"DepthDataSurface", @"DepthMetadata");
                  }

                  if ([(BWCaptureDeferredPhotoProcessor *)self portraitEffectsMatteDeliveryEnabled])
                  {
                    embedsPortraitEffectsMatteInImage = [(BWCaptureDeferredPhotoProcessor *)self embedsPortraitEffectsMatteInImage];
                    if ((embedsPortraitEffectsMatteInImage & 1) == 0)
                    {
                      OUTLINED_FUNCTION_18_31(embedsPortraitEffectsMatteInImage, 0x1F21AABB0, *off_1E798D2D8, v38, v39, @"PortraitEffectsMatteSurface", @"PortraitEffectsMatteMetadata");
                    }
                  }

                  if (([(BWCaptureDeferredPhotoProcessor *)self embedsSemanticSegmentationMattesInImage]& 1) == 0)
                  {
                    enabledSemanticSegmentationMatteURNs = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v41 = [enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917E0]];
                    if (v41)
                    {
                      OUTLINED_FUNCTION_18_31(v41, @"PersonSemanticsHair", *off_1E798D2E0, v42, v43, @"HairSegmentationMatteSurface", @"HairSegmentationMatteMetadata");
                    }

                    enabledSemanticSegmentationMatteURNs2 = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v45 = [enabledSemanticSegmentationMatteURNs2 containsObject:*MEMORY[0x1E69917E8]];
                    if (v45)
                    {
                      OUTLINED_FUNCTION_18_31(v45, @"PersonSemanticsSkin", *off_1E798D2E0, v46, v47, @"SkinSegmentationMatteSurface", @"SkinSegmentationMatteMetadata");
                    }

                    enabledSemanticSegmentationMatteURNs3 = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v49 = [enabledSemanticSegmentationMatteURNs3 containsObject:*MEMORY[0x1E69917F8]];
                    if (v49)
                    {
                      OUTLINED_FUNCTION_18_31(v49, @"PersonSemanticsTeeth", *off_1E798D2E0, v50, v51, @"TeethSegmentationMatteSurface", @"TeethSegmentationMatteMetadata");
                    }

                    enabledSemanticSegmentationMatteURNs4 = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v53 = [enabledSemanticSegmentationMatteURNs4 containsObject:*MEMORY[0x1E69917D8]];
                    if (v53)
                    {
                      OUTLINED_FUNCTION_18_31(v53, @"PersonSemanticsGlasses", *off_1E798D2E0, v54, v55, @"GlassesSegmentationMatteSurface", @"GlassesSegmentationMatteMetadata");
                    }
                  }

                  previewEnabled = [(BWCaptureDeferredPhotoProcessor *)self previewEnabled];
                  if (previewEnabled)
                  {
                    v57 = OUTLINED_FUNCTION_19_32(previewEnabled, @"PreviewSurface");
                    if (!v57)
                    {
                      OUTLINED_FUNCTION_0();
                      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v193, v196, v197, v198, v199, v200, v201, v202);
                      FigCaptureGetFrameworkRadarComponent();
                      OUTLINED_FUNCTION_9_57();
                      v103 = OUTLINED_FUNCTION_103(qword_1ED843F88);
                      v104 = OUTLINED_FUNCTION_133_0(v103);
                      if (OUTLINED_FUNCTION_5_24(v104))
                      {
                        v214 = 136315138;
                        OUTLINED_FUNCTION_0_107();
                        OUTLINED_FUNCTION_5_77(v107, v108, v109, v110, &dword_1AC90E000);
                        OUTLINED_FUNCTION_17_32();
                      }

                      else
                      {
                        v111 = 0;
                      }

                      v10 = MEMORY[0x1E695FF58];
                      v11 = v209;
                      OUTLINED_FUNCTION_1_117(qword_1ED843F88, v105, v106, v111);
                      OUTLINED_FUNCTION_2_107();
                      OUTLINED_FUNCTION_6_0(v174, v175, v176, v177, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
                      OUTLINED_FUNCTION_13_18();
                      v178 = OUTLINED_FUNCTION_6_1();
                      FigCapturePleaseFileRadar(v178, v179, v180, v181, v182, 1510, v183, v184, v194);
                      free(&kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque);
                      v61 = v203;
LABEL_45:

                      if (v61)
                      {
                        numberOfPhotosDelivered = [job numberOfPhotosDelivered];
                        if ([objc_msgSend(v61 "photoDescriptors")] == numberOfPhotosDelivered)
                        {
                          v212[0] = MEMORY[0x1E69E9820];
                          v212[1] = 3221225472;
                          v212[2] = __65__BWCaptureDeferredPhotoProcessor_job_completedWithSampleBuffer___block_invoke_2;
                          v212[3] = &__block_descriptor_40_e5_v8__0l;
                          v212[4] = v204;
                          captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(v204, v212);
                        }
                      }

                      goto LABEL_48;
                    }

                    v58 = v57;
                    [v12 setObject:v57 forKeyedSubscript:@"PreviewSurface"];
                    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetAllocSize(v58)), @"PreviewSurfaceSize"}];
                  }

                  if ([(BWCaptureDeferredPhotoProcessor *)self cameraCalibrationDataDeliveryEnabled])
                  {
                    if (![v12 objectForKeyedSubscript:@"DepthMetadata"])
                    {
                      v59 = OUTLINED_FUNCTION_19_32(0, @"CameraCalibrationDataMetadata");
                      if (v59)
                      {
                        [v12 setObject:v59 forKeyedSubscript:@"DepthMetadata"];
                      }
                    }
                  }

                  [v12 setObject:OUTLINED_FUNCTION_19_32(objc_msgSend(v12 forKeyedSubscript:{"setObject:forKeyedSubscript:", 0, @"ThumbnailSurface", @"PhotoLibraryThumbnails", @"PhotoLibraryThumbnails"}];
                  v60 = [(BWCaptureDeferredPhotoProcessor *)selfCopy _runImageCorruptionDetectionForJob:job onEncodedSurface:outputMirroring surfaceSize:v11];
                  v10 = MEMORY[0x1E695FF58];
                  v11 = v209;
                  if (v60)
                  {
                    [v12 setObject:&unk_1F22464F8 forKeyedSubscript:@"ErrorStatus"];
                  }

                  v61 = v203;
                  if (qword_1ED8451A0 != -1)
                  {
                    dispatch_once(&qword_1ED8451A0, &__block_literal_global_74);
                  }

                  v62 = [v12 copy];
                  captureDeferredPhotoProcessor_sendXPCNotificationWithPayload(v204, @"DidFinishProcessingPhotoProxy", v62);

                  goto LABEL_45;
                }

                FigCaptureGetFrameworkRadarComponent();
                OUTLINED_FUNCTION_9_57();
                v97 = OUTLINED_FUNCTION_103(qword_1ED843F88);
                v98 = OUTLINED_FUNCTION_133_0(v97);
                if (OUTLINED_FUNCTION_5_24(v98))
                {
                  v214 = 136315138;
                  OUTLINED_FUNCTION_0_107();
                  OUTLINED_FUNCTION_5_77(v99, v100, v101, v102, &dword_1AC90E000);
                  OUTLINED_FUNCTION_17_32();
                }

                v10 = MEMORY[0x1E695FF58];
                OUTLINED_FUNCTION_20_26();
                OUTLINED_FUNCTION_1_117(qword_1ED843F88, v166, v167, v168);
                OUTLINED_FUNCTION_2_107();
                OUTLINED_FUNCTION_6_0(v169, v170, v171, v172, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
                OUTLINED_FUNCTION_13_18();
                v137 = OUTLINED_FUNCTION_6_1();
                v144 = 1442;
              }

              else
              {
                FigCaptureGetFrameworkRadarComponent();
                OUTLINED_FUNCTION_9_57();
                v91 = OUTLINED_FUNCTION_103(qword_1ED843F88);
                v92 = OUTLINED_FUNCTION_133_0(v91);
                if (OUTLINED_FUNCTION_5_24(v92))
                {
                  v214 = 136315138;
                  OUTLINED_FUNCTION_0_107();
                  OUTLINED_FUNCTION_5_77(v93, v94, v95, v96, &dword_1AC90E000);
                  OUTLINED_FUNCTION_17_32();
                }

                v10 = MEMORY[0x1E695FF58];
                OUTLINED_FUNCTION_20_26();
                OUTLINED_FUNCTION_1_117(qword_1ED843F88, v159, v160, v161);
                OUTLINED_FUNCTION_2_107();
                OUTLINED_FUNCTION_6_0(v162, v163, v164, v165, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
                OUTLINED_FUNCTION_13_18();
                v137 = OUTLINED_FUNCTION_6_1();
                v144 = 1441;
              }
            }

            else
            {
              FigCaptureGetFrameworkRadarComponent();
              OUTLINED_FUNCTION_9_57();
              v85 = OUTLINED_FUNCTION_103(qword_1ED843F88);
              v86 = OUTLINED_FUNCTION_133_0(v85);
              if (OUTLINED_FUNCTION_5_24(v86))
              {
                v214 = 136315138;
                OUTLINED_FUNCTION_0_107();
                OUTLINED_FUNCTION_5_77(v87, v88, v89, v90, &dword_1AC90E000);
                OUTLINED_FUNCTION_17_32();
              }

              v10 = MEMORY[0x1E695FF58];
              OUTLINED_FUNCTION_20_26();
              OUTLINED_FUNCTION_1_117(qword_1ED843F88, v152, v153, v154);
              OUTLINED_FUNCTION_2_107();
              OUTLINED_FUNCTION_6_0(v155, v156, v157, v158, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
              OUTLINED_FUNCTION_13_18();
              v137 = OUTLINED_FUNCTION_6_1();
              v144 = 1440;
            }
          }

          else
          {
            FigCaptureGetFrameworkRadarComponent();
            OUTLINED_FUNCTION_9_57();
            v79 = OUTLINED_FUNCTION_103(qword_1ED843F88);
            v80 = OUTLINED_FUNCTION_133_0(v79);
            if (OUTLINED_FUNCTION_5_24(v80))
            {
              v214 = 136315138;
              OUTLINED_FUNCTION_0_107();
              OUTLINED_FUNCTION_5_77(v81, v82, v83, v84, &dword_1AC90E000);
              OUTLINED_FUNCTION_17_32();
            }

            v10 = MEMORY[0x1E695FF58];
            OUTLINED_FUNCTION_20_26();
            OUTLINED_FUNCTION_1_117(qword_1ED843F88, v145, v146, v147);
            OUTLINED_FUNCTION_2_107();
            OUTLINED_FUNCTION_6_0(v148, v149, v150, v151, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
            OUTLINED_FUNCTION_13_18();
            v137 = OUTLINED_FUNCTION_6_1();
            v144 = 1439;
          }
        }

        else
        {
          FigCaptureGetFrameworkRadarComponent();
          OUTLINED_FUNCTION_9_57();
          v73 = OUTLINED_FUNCTION_103(qword_1ED843F88);
          v74 = OUTLINED_FUNCTION_133_0(v73);
          if (OUTLINED_FUNCTION_5_24(v74))
          {
            v214 = 136315138;
            OUTLINED_FUNCTION_0_107();
            OUTLINED_FUNCTION_5_77(v75, v76, v77, v78, &dword_1AC90E000);
            OUTLINED_FUNCTION_17_32();
          }

          v10 = MEMORY[0x1E695FF58];
          OUTLINED_FUNCTION_20_26();
          OUTLINED_FUNCTION_1_117(qword_1ED843F88, v130, v131, v132);
          OUTLINED_FUNCTION_2_107();
          OUTLINED_FUNCTION_6_0(v133, v134, v135, v136, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
          OUTLINED_FUNCTION_13_18();
          v137 = OUTLINED_FUNCTION_6_1();
          v144 = 1438;
        }

        FigCapturePleaseFileRadar(v137, v138, v139, v140, v141, v144, v142, v143, v193);
        v173 = 4294950471;
        goto LABEL_80;
      }

      v29 = OUTLINED_FUNCTION_19_32(processingFlags, @"RawImageSurface");
      v11 = [objc_msgSend(OUTLINED_FUNCTION_19_32(v29 @"RawImageAssetSizes")];
      rawOutputFormat = [(BWCaptureDeferredPhotoProcessor *)self rawOutputFormat];
      v30 = [OUTLINED_FUNCTION_19_32(rawOutputFormat @"RawImageFileType")];
      v31 = v30;
      v32 = OUTLINED_FUNCTION_19_32(v30, @"RawDNGDictionary");
      if (v32)
      {
        v33 = v32;
        v207 = OUTLINED_FUNCTION_19_32(v32, *off_1E798A3C8);
        v34 = [OUTLINED_FUNCTION_19_32(v207 @"RawImageContainsDepthData")];
        [OUTLINED_FUNCTION_19_32(v34 @"RawImageContainsSemanticSegmentationMattes")];
        [(BWCaptureDeferredPhotoProcessor *)self rawOutputFileCodec];
        v35 = [v207 objectForKeyedSubscript:*off_1E798B1E0];
        v36 = v33;
        outputMirroring = v29;
        v28 = v31;
        v12 = v210;
        v25 = BWCreateRawMetadataFromMetadata(v25, v36, 0x10000u, v35);
        goto LABEL_13;
      }

      FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_9_57();
      v112 = OUTLINED_FUNCTION_103(qword_1ED843F88);
      v113 = OUTLINED_FUNCTION_133_0(v112);
      if (OUTLINED_FUNCTION_5_24(v113))
      {
        v214 = 136315138;
        OUTLINED_FUNCTION_0_107();
        OUTLINED_FUNCTION_5_77(v114, v115, v116, v117, &dword_1AC90E000);
        OUTLINED_FUNCTION_17_32();
      }

      v10 = MEMORY[0x1E695FF58];
      OUTLINED_FUNCTION_20_26();
      OUTLINED_FUNCTION_1_117(qword_1ED843F88, v185, v186, v187);
      OUTLINED_FUNCTION_2_107();
      OUTLINED_FUNCTION_6_0(v188, v189, v190, v191, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_13_18();
      v122 = OUTLINED_FUNCTION_6_1();
      v129 = 1419;
    }

    else
    {
      FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_9_57();
      v64 = OUTLINED_FUNCTION_103(qword_1ED843F88);
      v65 = OUTLINED_FUNCTION_133_0(v64);
      if (OUTLINED_FUNCTION_5_24(v65))
      {
        v214 = 136315138;
        OUTLINED_FUNCTION_0_107();
        OUTLINED_FUNCTION_5_77(v68, v69, v70, v71, &dword_1AC90E000);
        OUTLINED_FUNCTION_17_32();
      }

      else
      {
        v72 = 0;
      }

      OUTLINED_FUNCTION_1_117(qword_1ED843F88, v66, v67, v72);
      OUTLINED_FUNCTION_2_107();
      OUTLINED_FUNCTION_6_0(v118, v119, v120, v121, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_13_18();
      v122 = OUTLINED_FUNCTION_6_1();
      v129 = 1362;
    }

    FigCapturePleaseFileRadar(v122, v123, v124, v125, v126, v129, v127, v128, v193);
    v173 = 4294954516;
LABEL_80:
    free(outputMirroring);

    [(BWCaptureDeferredPhotoProcessor *)self job:job failedWithError:v173];
LABEL_48:
    objc_autoreleasePoolPop(v11);
    if (*v10 == 1)
    {
      OUTLINED_FUNCTION_10();
      kdebug_trace();
    }
  }
}

- (uint64_t)_runImageCorruptionDetectionForJob:(__IOSurface *)job onEncodedSurface:(uint64_t)surface surfaceSize:
{
  if (result)
  {
    [*(result + 8) referencedObject];
    result = CMBaseObjectGetDerivedStorage();
    if (result)
    {
      v8 = result;
      result = 0;
      if (job)
      {
        if (*v8)
        {
          v9 = FigCaptureIsCarryDevice(0, v7) && [objc_msgSend(a2 "processorRequest")] > 0x18;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          v12 = FigCaptureClientApplicationIDIsXCTest(*(v8 + 24), v11);
          result = 0;
          if (has_internal_diagnostics)
          {
            if ((v12 & 1) == 0 && !v9)
            {
              mach_absolute_time();
              IOSurfaceLock(job, 1u, 0);
              [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:IOSurfaceGetBaseAddress(job) length:surface freeWhenDone:0];
              IOSurfaceUnlock(job, 1u, 0);
              CMPhotoDetectCorruptionForSource();
              if (dword_1ED843F90)
              {
                OUTLINED_FUNCTION_22_25();
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v15))
                {
                  v14 = v16;
                }

                else
                {
                  v14 = v16 & 0xFFFFFFFE;
                }

                if (v14)
                {
                  mach_absolute_time();
                  FigHostTimeToNanoseconds();
                  OUTLINED_FUNCTION_5();
                  OUTLINED_FUNCTION_13();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_2_4();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

- (void)_prepareToTerminateImmediatelyDueToError:(int)error
{
  v3 = *&error;
  [(FigWeakReference *)self->_weakDeferredPhotoProcessorReference referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    if (*DerivedStorage)
    {
      IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
      if (!IsCurrentDispatchQueue)
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        IsCurrentDispatchQueue = FigDebugAssert3(v20);
      }

      v10 = *(v6 + 6);
      if (v10)
      {
        IsCurrentDispatchQueue = [(BWCaptureDeferredPhotoProcessor *)self request:v10 failedWithError:v3];
        *(v6 + 6) = 0;
      }

      v11 = *(v6 + 5);
      v12 = OUTLINED_FUNCTION_23_24(IsCurrentDispatchQueue, v8, v10, v9);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (MEMORY[0] != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(BWCaptureDeferredPhotoProcessor *)self request:*(8 * i) failedWithError:v3];
          }

          v13 = OUTLINED_FUNCTION_23_24(v16, v17, v18, v19);
        }

        while (v13);
      }

      [*(v6 + 5) removeAllObjects];
    }
  }
}

@end