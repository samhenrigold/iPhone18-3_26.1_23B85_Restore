@interface BWScalerProcessorController
- (BWScalerProcessorController)initWithConfiguration:(id)configuration;
- (VTPixelTransferSessionRef)_ensurePixelTransferSessionForMediaKey:(uint64_t)key;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)process;
- (uint64_t)_zoomSampleBuffer:(void *)buffer settings:(unsigned int)settings processingMode:(void *)mode mediaKey:(uint64_t)key bufferType:(void *)type request:(void *)request newZoomedSampleBufferOut:;
- (void)dealloc;
- (void)reset;
@end

@implementation BWScalerProcessorController

- (BWScalerProcessorController)initWithConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = BWScalerProcessorController;
  v3 = [(BWStillImageProcessorController *)&v5 initWithName:@"ScalerPC" type:18 configuration:configuration];
  if (v3)
  {
    v3->_pixelTransferSessionByMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_formatDescriptionByMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)dealloc
{
  [(BWScalerProcessorController *)self reset];

  v3.receiver = self;
  v3.super_class = BWScalerProcessorController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)reset
{
  if (![(BWStillImageProcessorController *)self hasPendingRequests])
  {
    [(NSMutableDictionary *)self->_pixelTransferSessionByMediaKey removeAllObjects];
    formatDescriptionByMediaKey = self->_formatDescriptionByMediaKey;

    [(NSMutableDictionary *)formatDescriptionByMediaKey removeAllObjects];
  }
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWScalerProcessorControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

- (int)process
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_5_14(822149677);
  }

  configuration = [(BWStillImageProcessorController *)self configuration];
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  v9 = currentRequest;
  if (!currentRequest)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v93, v96, v99, v102, v107, v110, v112, v117);
    goto LABEL_72;
  }

  input = [(BWStillImageProcessorControllerRequest *)currentRequest input];
  if (!input)
  {
LABEL_72:
    OUTLINED_FUNCTION_2_95();
    v91 = 4294954516;
    goto LABEL_69;
  }

  v11 = input;
  if ([(BWStillImageProcessorControllerInput *)input frame])
  {
    if ([(BWStillImageProcessorControllerInput *)v11 bufferType])
    {
      bufferType = [(BWStillImageProcessorControllerInput *)v11 bufferType];
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{-[BWStillImageProcessorControllerInput frame](v11, "frame")}];
      v113 = objc_alloc_init(MEMORY[0x1E695DF90]);
      selfCopy = self;
      v129 = 0;
      v118 = v12;
      v120 = v9;
      if ([objc_msgSend(v9 "input")] - 3 <= 3)
      {
        v129 = [objc_msgSend(v9 "delegate")];
        v13 = [MEMORY[0x1E695DFA8] set];
        v14 = [-[BWStillImageProcessorControllerConfiguration providedInferenceAttachedMediaByMode](configuration "providedInferenceAttachedMediaByMode")];
        if (v14)
        {
          [v13 addObjectsFromArray:v14];
        }

        v15 = [-[BWStillImageProcessorControllerConfiguration providedInferenceAttachedMediaByMode](configuration "providedInferenceAttachedMediaByMode")];
        if (v15)
        {
          [v13 addObjectsFromArray:v15];
        }

        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v16 = [v13 countByEnumeratingWithState:&v224 objects:v223 count:16];
        if (v16)
        {
          v17 = v16;
          v133 = *v225;
          v130 = *off_1E798A788;
          obj = v13;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v225 != v133)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v224 + 1) + 8 * i);
              AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)v11 frame], v19);
              if (AttachedMedia)
              {
                goto LABEL_28;
              }

              v21 = [v129 inferenceBufferForAttachedMediaKey:v19];
              if (v21)
              {
                v22 = v21;
                v23 = [v129 metadataForAttachedMediaKey:v19];
                v24 = [(NSMutableDictionary *)self->_formatDescriptionByMediaKey objectForKeyedSubscript:v19];
                if (v24)
                {
                  v24 = CFRetain(v24);
                }

                cf = v24;
                v26 = BWMetadataAttachmentKeyForAttachedMediaKey(v19, v25);
                v27 = [objc_msgSend(v129 "inferenceAttachedMediaMetadata")];
                v28 = 0;
                if (v26 && v27)
                {
                  v221 = v26;
                  v222 = v27;
                  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
                }

                BWSampleBufferSetAttachedMediaFromPixelBuffer([(BWStillImageProcessorControllerInput *)v11 frame], v19, v22, &cf, v23, v28, 1);
                self = selfCopy;
                [(NSMutableDictionary *)selfCopy->_formatDescriptionByMediaKey setObject:cf forKeyedSubscript:v19];
                if (cf)
                {
                  CFRelease(cf);
                }

                v9 = v120;
              }

              AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)v11 frame], v19);
              if (AttachedMedia)
              {
LABEL_28:
                v29 = AttachedMedia;
                delegate = [v9 delegate];
                input2 = [v9 input];
                ImageBuffer = CMSampleBufferGetImageBuffer([(BWStillImageProcessorControllerInput *)v11 frame]);
                LODWORD(delegate) = [delegate processorController:self outputPixelBufferDimensionsForProcessorInput:input2 type:1 attachedMediaKey:@"PrimaryFormat" pixelFormat:CVPixelBufferGetPixelFormatType(ImageBuffer) dimensions:0];
                v33 = CMSampleBufferGetImageBuffer(v29);
                Width = CVPixelBufferGetWidth(v33);
                CVPixelBufferGetHeight(v33);
                v35 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v29);
                *&v36 = delegate / Width;
                [v35 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v36), v130}];
              }
            }

            v17 = [obj countByEnumeratingWithState:&v224 objects:v223 count:16];
          }

          while (v17);
          v12 = v118;
        }
      }

      v37 = BWSampleBufferCopyDictionaryOfAttachedMedia([(BWStillImageProcessorControllerInput *)v11 frame]);
      [v12 addEntriesFromDictionary:v37];

      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v46 = &dword_1EB58E000;
      v134 = OUTLINED_FUNCTION_7_59(v38, v39, v40, v41, v42, v43, v44, v45, @"PrimaryFormat", 0, v5, bufferType, v107, v110, v113, v118, v120, obj, selfCopy, v129, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v186, v188, v190, v192, v194, v196, v198, *v200, *&v200[8], *&v200[16], v201, *(&v201 + 1), v202, cf, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
      if (v134)
      {
        obja = *v218;
        *&v47 = 136315907;
        v108 = v47;
        while (2)
        {
          for (j = 0; j != v134; ++j)
          {
            if (*v218 != obja)
            {
              objc_enumerationMutation(v12);
            }

            v49 = *(*(&v217 + 1) + 8 * j);
            isEqualToString = objc_msgSend_isEqualToString_(v49, v94, v97);
            if (isEqualToString)
            {
              v52 = 1;
            }

            else
            {
              v52 = BWStillImageBufferTypeForAttachedMediaKey(v49, v50);
            }

            v53 = [v12 objectForKeyedSubscript:v49];
            v216[0] = 0;
            v54 = [(BWScalerProcessorController *)&v126->super.super.isa _zoomSampleBuffer:v53 settings:[(BWStillImageProcessorControllerInput *)v11 stillImageSettings] processingMode:[(BWStillImageProcessorControllerInput *)v11 processingMode] mediaKey:v49 bufferType:v52 request:v121 newZoomedSampleBufferOut:v216];
            if (v54)
            {
              LODWORD(v131) = v54;
              v215 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v55 = v46;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v57 = v215;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v58 = v57;
              }

              else
              {
                v58 = v57 & 0xFFFFFFFE;
              }

              if (v58)
              {
                settingsID = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)v11 settings] settingsID];
                *v200 = v108;
                *&v200[4] = "[BWScalerProcessorController process]";
                *&v200[12] = 2113;
                *&v200[14] = v49;
                *&v200[22] = 1026;
                LODWORD(v201) = v131;
                WORD2(v201) = 2050;
                *(&v201 + 6) = settingsID;
                LODWORD(v97) = 38;
                v94 = v200;
                _os_log_send_and_compose_impl();
              }

              v46 = v55;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v12 = v119;
              if (isEqualToString)
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v94, v97, v100, v104, v108, *(&v108 + 1), v114, v119);
                v4 = 0;
                self = v126;
                v9 = v121;
                v2 = v106;
                v3 = v116;
                v91 = v131;
                goto LABEL_69;
              }
            }

            else
            {
              if (v216[0])
              {
                v60 = v216[0];
              }

              else
              {
                v60 = v53;
              }

              [v114 setObject:v60 forKeyedSubscript:v49];
            }

            v68 = v216[0];
            if (v216[0])
            {
              CFRelease(v216[0]);
            }

            self = v126;
          }

          v134 = OUTLINED_FUNCTION_7_59(v68, v61, v62, v63, v64, v65, v66, v67, v94, v97, v100, v104, v108, *(&v108 + 1), v114, v119, v121, obja, v126, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v187, v189, v191, v193, v195, v197, v199, *v200, *&v200[8], *&v200[16], v201, *(&v201 + 1), v202, cf, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
          if (v134)
          {
            continue;
          }

          break;
        }
      }

      v3 = v114;
      v69 = [v114 objectForKeyedSubscript:@"PrimaryFormat"];
      v4 = v69;
      if (v69)
      {
        BWSampleBufferRemoveAllAttachedMedia(v69);
        v78 = OUTLINED_FUNCTION_9_52(v70, v71, v72, v73, v74, v75, v76, v77, v94, v97, v100, v104, v108, *(&v108 + 1), v114, v119, v121, obja, v126, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182);
        if (v78)
        {
          v79 = v78;
          v80 = MEMORY[0];
          do
          {
            for (k = 0; k != v79; ++k)
            {
              if (MEMORY[0] != v80)
              {
                objc_enumerationMutation(v3);
              }

              v82 = *(8 * k);
              v83 = objc_msgSend_isEqualToString_(v82);
              if ((v83 & 1) == 0)
              {
                BWSampleBufferSetAttachedMedia(v4, v82, [v3 objectForKeyedSubscript:v82]);
              }
            }

            v79 = OUTLINED_FUNCTION_9_52(v83, v84, v85, v86, v87, v88, v89, v90, v95, v98, v101, v105, v109, v111, v115, v117, v121, objb, v127, v128, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183);
          }

          while (v79);
        }

        if (*MEMORY[0x1E695FF58] == 1)
        {
          OUTLINED_FUNCTION_5_14(822149678);
        }

        v91 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v94, v97, v100, v104, v108, *(&v108 + 1), v114, v119);
        v91 = 4294954516;
      }

      v9 = v121;
      v2 = v105;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v93, v96, v99, v102, v107, v110, v112, v117);
      OUTLINED_FUNCTION_2_95();
      v91 = 4294894083;
    }
  }

  else
  {
    v91 = 4294894082;
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v93, v96, v99, v102, v107, v110, v112, v117);
    OUTLINED_FUNCTION_2_95();
  }

LABEL_69:
  [objc_msgSend(v9 "delegate")];

  [(BWScalerProcessorController *)self reset];
  return v91;
}

- (uint64_t)_zoomSampleBuffer:(void *)buffer settings:(unsigned int)settings processingMode:(void *)mode mediaKey:(uint64_t)key bufferType:(void *)type request:(void *)request newZoomedSampleBufferOut:
{
  requestCopy = request;
  if (!self)
  {
    return 0;
  }

  v163 = 0;
  v164 = 0;
  isEqualToString = objc_msgSend_isEqualToString_(mode, a2, @"PrimaryFormat");
  v18 = [objc_msgSend(objc_msgSend(self "configuration")];
  v19 = v18;
  modeCopy = mode;
  if ((isEqualToString & 1) != 0 || v18)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    if (!ImageBuffer)
    {
      v138 = 4294894082;
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v142, v143, v144, requestCopy, v147, v149, v151);
      v103 = 0;
      goto LABEL_101;
    }

    v21 = ImageBuffer;
    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(v21);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v21);
    v24 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    if (!v24)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v142, v143, v144, requestCopy, v147, v149, v151);
      v103 = 0;
      v138 = 4294894083;
      goto LABEL_101;
    }

    v25 = v24;
    v157 = a2;
    requestedSettings = [buffer requestedSettings];
    LODWORD(v9) = 1.0;
    if ((isEqualToString & 1) == 0)
    {
      [v19 floatValue];
      LODWORD(v9) = v27;
    }

    v156 = Width | (Height << 32);
    v155 = ([requestedSettings outputWidth] / *&v9);
    v154 = ([requestedSettings outputHeight] / *&v9);
    delegate = [type delegate];
    input = [type input];
    keyCopy = key;
    if ((isEqualToString & 1) == 0)
    {
      keyCopy = BWStillImageBufferTypeForAttachedMediaKey(mode, v29);
    }

    v32 = [delegate processorController:self outputPixelBufferDimensionsForProcessorInput:input type:keyCopy attachedMediaKey:mode pixelFormat:PixelFormatType dimensions:0];
    FigCaptureMetadataUtilitiesGetFinalCropRect(v25);
    OUTLINED_FUNCTION_2_3();
    v153 = v155 | (v154 << 32);
    v33 = FigCaptureAspectRatioForDimensions(v153);
    if (settings == 2)
    {
      v37 = OUTLINED_FUNCTION_3();
      v41 = FigCaptureRectMidPoint(v37, v38, v39, v40);
      v43 = FigCaptureMetadataUtilitiesDenormalizePoint(v41, v42, Width);
      if (Width >= v32)
      {
        v45 = v32;
      }

      else
      {
        v45 = Width;
      }

      v46 = v45;
      v47 = vcvtd_n_f64_s32(v45, 1uLL);
      if (Height >= SHIDWORD(v32))
      {
        v48 = HIDWORD(v32);
      }

      else
      {
        v48 = Height;
      }

      v49 = v43 - v47;
      v50 = v48;
      v51 = v44 - vcvtd_n_f64_s32(v48, 1uLL);
      if (v49 >= 0.0)
      {
        v52 = v49;
      }

      else
      {
        v52 = 0.0;
      }

      if (v51 >= 0.0)
      {
        v53 = v51;
      }

      else
      {
        v53 = 0.0;
      }

      v171.origin.x = FigCaptureRectFromDimensions();
      v171.origin.y = v54;
      v171.size.width = v55;
      v171.size.height = v56;
      v166.origin.x = v52;
      v166.origin.y = v53;
      v166.size.width = v46;
      v166.size.height = v50;
      v167 = CGRectIntersection(v166, v171);
      v11 = v167.size.width;
      v12 = v167.size.height;
      FigCaptureMetadataUtilitiesNormalizeCropRect(v167.origin.x, v167.origin.y, v167.size.width, v167.size.height, Width, Height);
      v9 = v57;
      v10 = v58;
      v36 = v59;
      v35 = v60;
      v34 = v11 / v12;
    }

    else
    {
      v34 = v33;
      if (settings == 1)
      {
        v35 = 1.0;
      }

      else
      {
        v35 = v12;
      }

      if (settings == 1)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = v11;
      }

      if (settings == 1)
      {
        v10 = 0.0;
        v9 = 0.0;
      }
    }

    v168.origin.x = OUTLINED_FUNCTION_3_83();
    if (CGRectIsNull(v168))
    {
      goto LABEL_114;
    }

    v61 = Width;
    if (isEqualToString)
    {
      v62.n128_f64[0] = OUTLINED_FUNCTION_3_83();
      v63.n128_f64[0] = v34;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v64, v65, v62, v66, v67, v68, v63, v69);
    }

    else
    {
      [v19 intValue];
      v70.n128_f64[0] = OUTLINED_FUNCTION_3_83();
      v71.n128_f64[0] = v34;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v72, v73, v70, v74, v75, v76, v71, v77);
    }

    OUTLINED_FUNCTION_2_3();
    settingsCopy = settings;
    if (CGRectIsNull(v169))
    {
LABEL_114:
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      v103 = 0;
      goto LABEL_115;
    }

    *&v145 = v34;
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v9, v10, v36, v35, Width, Height);
    if (settings || ((v82 = vabdd_f64(v80, v12), vabdd_f64(v79, v11) <= 2.0) ? (v83 = v82 <= 2.0) : (v83 = 0), v83))
    {
      v81 = 0;
    }

    else
    {
      v84 = OUTLINED_FUNCTION_3();
      FigCaptureMetadataUtilitiesNormalizeCropRect(v84, v85, v86, v87, Width, Height);
      v36 = v88;
      v35 = v89;
      v81 = 1;
    }

    LODWORD(settingsCopy) = llround(v11);
    LODWORD(v61) = llround(v12);
    v152 = v81;
    v90 = (llround(v9) & 1) == 0 && ((llround(v10) | settingsCopy) & 1) == 0 && (v61 & 1) == 0;
    v91 = [requestedSettings outputFormat] == 1785750887 || objc_msgSend(requestedSettings, "outputFormat") == 1752589105;
    v92 = FigCapturePixelFormatIsDemosaicedRaw([requestedSettings rawOutputFormat]) && objc_msgSend(requestedSettings, "outputFormat") == 0;
    v93 = settingsCopy | (v61 << 32);
    if (v91)
    {
      settingsCopy3 = settings;
      if (settings)
      {
LABEL_56:
        v95 = 1;
        goto LABEL_63;
      }
    }

    else
    {
      settingsCopy3 = settings;
      if (settings)
      {
        v92 = 0;
      }

      if (!v92)
      {
        goto LABEL_56;
      }
    }

    v96 = v93 == v153 && v90;
    if (v156 == v93)
    {
      v96 = v156 == v153;
    }

    v95 = !v96;
LABEL_63:
    if (((settingsCopy3 == 0) & v95) != 0 || (Width <= v32 ? (v97 = Height <= SHIDWORD(v32)) : (v97 = 0), !v97))
    {
      v98 = [(BWScalerProcessorController *)self _ensurePixelTransferSessionForMediaKey:modeCopy];
      if (v98)
      {
        v99 = v98;
        delegate2 = [type delegate];
        input2 = [type input];
        if ((isEqualToString & 1) == 0)
        {
          key = BWStillImageBufferTypeForAttachedMediaKey(modeCopy, v101);
        }

        v103 = [delegate2 processorController:self newOutputPixelBufferForProcessorInput:input2 type:key attachedMediaKey:modeCopy pixelFormat:PixelFormatType dimensions:0];
        if (!v103)
        {
          v138 = 4294954510;
          goto LABEL_101;
        }

        settingsCopy5 = settings;
        v105 = v155 | (v154 << 32);
        if (settings == 2)
        {
          v105 = v93;
        }

        v106 = v32;
        v107 = SHIDWORD(v32);
        v108 = 0.0;
        v148 = *&v36;
        v150 = *&v35;
        if (v32 == v105)
        {
          v109 = 0.0;
          goto LABEL_82;
        }

        if (v32 >= v155 && SHIDWORD(v32) >= v154)
        {
          if (settings - 1 >= 2)
          {
            v109 = 0.0;
            if (settings)
            {
              v113 = v32;
            }

            else
            {
              v113 = v155;
            }

            if (settings)
            {
              v114 = SHIDWORD(v32);
            }

            else
            {
              v114 = v154;
            }

            goto LABEL_89;
          }

          v111 = *&v145;
          v109 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(0.0, 0.0, v106, v107, v111);
          v108 = v112;
LABEL_82:
          v113 = v106;
          v114 = v107;
LABEL_89:
          if (dword_1EB58E320)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_4_73();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            settingsCopy5 = settings;
          }

          v116 = OUTLINED_FUNCTION_3();
          v121 = BWScalePixelBuffer(v117, v103, v99, v116, v118, v119, v120, v109, v108, v113, v114);
          if (v121)
          {
            v138 = v121;
            goto LABEL_101;
          }

          v163 = [self[9] objectForKeyedSubscript:modeCopy];
          v122 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v157, v103, &v163, &v164);
          if (v122)
          {
            v138 = v122;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v122, v8, v8, v145, requestCopy, v148, v150, v151);
            goto LABEL_101;
          }

          [self[9] setObject:v163 forKeyedSubscript:modeCopy];
          v123 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v164);
          CVBufferRemoveAttachment(v103, *MEMORY[0x1E6965D70]);
          if (v152)
          {
            FigCFDictionarySetCGRect();
          }

          v124.n128_f64[0] = OUTLINED_FUNCTION_3();
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v125, v126, v32, v124, v127, v128, v129, v109, v108, v113, v114);
          FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v123, v156, v32);
          if (!settingsCopy5)
          {
            v170.origin.x = OUTLINED_FUNCTION_6_66();
            if (CGRectEqualToRect(v170, v172))
            {
              FigCaptureMetadataUtilitiesPreventFurtherCropping(v123, v130);
            }
          }

          [objc_msgSend(objc_msgSend(self configuration];
          if (CMGetAttachment(v164, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0))
          {
            v165.width = v32;
            v165.height = SHIDWORD(v32);
            v131 = CGSizeCreateDictionaryRepresentation(v165);
            CMSetAttachment(v164, @"OriginalCameraIntrinsicMatrixReferenceDimensions", v131, 1u);
            v132 = OUTLINED_FUNCTION_3();
            BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(v133, v134, 0, 0, v132, v135, v136, v137, v109, v108, v113, v114);
          }

          goto LABEL_100;
        }

LABEL_115:
        v138 = 4294954516;
        goto LABEL_101;
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v142, v8, *&v34, requestCopy, v147, v149, v151);
    }

    v103 = 0;
    v138 = 0;
    goto LABEL_101;
  }

  v103 = 0;
LABEL_100:
  v138 = 0;
LABEL_101:
  if (dword_1EB58E320)
  {
    v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_73();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v138)
  {
    if (v164)
    {
      CFRelease(v164);
    }
  }

  else if (requestCopy)
  {
    *requestCopy = v164;
  }

  CVPixelBufferRelease(v103);
  if (v163)
  {
    CFRelease(v163);
  }

  return v138;
}

- (VTPixelTransferSessionRef)_ensurePixelTransferSessionForMediaKey:(uint64_t)key
{
  if (!key)
  {
    return 0;
  }

  v4 = [*(key + 64) objectForKeyedSubscript:a2];
  pixelTransferSessionOut = v4;
  if (!v4)
  {
    v5 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
    v4 = pixelTransferSessionOut;
    if (!v5)
    {
      [*(key + 64) setObject:pixelTransferSessionOut forKeyedSubscript:a2];
      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
        return pixelTransferSessionOut;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

@end