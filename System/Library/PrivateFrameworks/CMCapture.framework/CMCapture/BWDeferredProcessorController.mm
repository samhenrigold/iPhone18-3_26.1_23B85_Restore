@interface BWDeferredProcessorController
- (BWDeferredProcessorController)initWithConfiguration:(id)configuration;
- (id)_getOriginalCameraIntrinsicsForPortType:(id)result;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)process;
- (uint64_t)_sensorRawSampleBufferWithBuffer:(void *)buffer metadata:(const void *)metadata rawThumbnailsBuffer:(const void *)thumbnailsBuffer mainRawThumbnailBuffer:(const void *)thumbnailBuffer sifrRawThumbnailBuffer:(const void *)rawThumbnailBuffer dngDictionary:(uint64_t)dictionary captureFrameFlags:(void *)flags stillImageSettings:(void *)self0 sampleBufferOut:;
- (void)_handleDidDetermineReferenceFrameWithSortedIntermediates:(void *)result;
- (void)_sortedIntermediates;
- (void)dealloc;
@end

@implementation BWDeferredProcessorController

- (BWDeferredProcessorController)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = BWDeferredProcessorController;
  return [(BWStillImageProcessorController *)&v4 initWithName:@"DeferredProcessor" type:5 configuration:configuration];
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWDeferredProcessorController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWDeferredProcessorControllerRequest alloc] initWithInput:input delegate:delegate];
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
  v126[0] = 0;
  input = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  container = [(BWStillImageProcessorControllerInput *)input container];
  selfCopy = self;
  delegate = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate];
  if ([objc_msgSend(container "captureSettings")] != 12 && objc_msgSend(objc_msgSend(container, "captureSettings"), "captureType") != 13 && (objc_msgSend(objc_msgSend(container, "captureSettings"), "captureFlags") & 0x80) == 0)
  {
    v126[0] = -12780;
    goto LABEL_109;
  }

  context = objc_autoreleasePoolPush();
  _sortedIntermediates = [(BWDeferredProcessorController *)self _sortedIntermediates];
  v91 = input;
  v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"InferenceAttachedMediaMeta-%@", -[BWStillImageProcessorControllerInput portType](input, "portType")];
  [(BWDeferredProcessorController *)self _handleDidDetermineReferenceFrameWithSortedIntermediates:_sortedIntermediates];
  v6 = [MEMORY[0x1E695DFA8] set];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = _sortedIntermediates;
  v7 = [_sortedIntermediates countByEnumeratingWithState:&v122 objects:v121 count:16];
  if (!v7)
  {
    goto LABEL_108;
  }

  v8 = v7;
  p_inst_meths = &OBJC_PROTOCOL___FigCaptureDeferredProcessingJobDelegate.inst_meths;
  v10 = *v123;
  v88 = *off_1E798A788;
  v95 = *off_1E798A458;
  v94 = *off_1E798A3C0;
  v93 = *off_1E798A470;
  key = *off_1E798D2E8;
  v81 = *off_1E798B540;
  v82 = *off_1E798A4F8;
  v98 = *v123;
  v96 = container;
  do
  {
    v11 = 0;
    v97 = v8;
    do
    {
      if (*v123 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v122 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v120 = 0;
      v14 = [v12 tag];
      v15 = [v14 hasPrefix:p_inst_meths[22]];
      metadataTag = v14;
      if (v15)
      {
        goto LABEL_24;
      }

      v17 = [v14 hasPrefix:BWDeferredIntermediateTagSourceNodePixelBufferAttributes];
      metadataTag = v14;
      if (v17)
      {
        goto LABEL_24;
      }

      v18 = [v14 hasPrefix:BWDeferredIntermediateTagReferenceFrameMetadataByPortTypePrefix];
      metadataTag = v14;
      if (v18)
      {
        goto LABEL_24;
      }

      v19 = [v14 hasPrefix:BWDeferredIntermediateTagSyntheticReferenceFrameMetadataByPortTypePrefix];
      metadataTag = v14;
      if (v19)
      {
        goto LABEL_24;
      }

      v20 = [v14 hasPrefix:BWDeferredIntermediateTagWhiteBalanceMetadataByPortTypePrefix];
      metadataTag = v14;
      if (v20)
      {
        goto LABEL_24;
      }

      v21 = [v14 hasPrefix:BWDeferredIntermediateTagDNGDictionaryPrefix];
      metadataTag = v14;
      if (v21)
      {
        goto LABEL_24;
      }

      v22 = [v14 hasPrefix:BWDeferredIntermediateTagSampleBufferOriginalCameraIntrinsicsPrefix];
      metadataTag = v14;
      if (v22)
      {
        goto LABEL_24;
      }

      v23 = [v14 hasPrefix:BWDeferredIntermediateTagDepthMetadata];
      metadataTag = v14;
      if (v23)
      {
        goto LABEL_24;
      }

      v24 = [v14 hasPrefix:BWDeferredIntermediateTagStereoPhotoDepthMetadata];
      metadataTag = v14;
      if (v24)
      {
        goto LABEL_24;
      }

      v25 = [v14 hasPrefix:BWDeferredIntermediateTagDepthData];
      metadataTag = v14;
      if (v25)
      {
        goto LABEL_24;
      }

      if ([v12 isMemberOfClass:objc_opt_class()] && (objc_msgSend(v12, "bufferType") == 2001 || objc_msgSend(v12, "bufferType") == 19 || objc_msgSend(v12, "bufferType") == 37 || objc_msgSend(v12, "bufferType") == 8 && -[BWStillImageCaptureSettings captureType](-[BWStillImageProcessorControllerInput captureSettings](v91, "captureSettings"), "captureType") == 13))
      {
        [v6 addObject:v14];
        metadataTag = [v12 metadataTag];
LABEL_24:
        [v6 addObject:metadataTag];
      }

      if ([v6 containsObject:v14])
      {
        goto LABEL_53;
      }

      if ([v12 isMemberOfClass:objc_opt_class()])
      {
        v119 = 0;
        v118 = 0;
        bufferType = [v12 bufferType];
        captureFrameFlags = [v12 captureFrameFlags];
        texture = [container copyBufferForTag:v14 err:&v119];
        if ([v12 metadataTag])
        {
          v28 = [container copyMetadataForTag:objc_msgSend(v12 err:{"metadataTag"), &v118}];
          v100 = [v28 mutableCopy];

          [v6 addObject:{objc_msgSend(v12, "metadataTag")}];
        }

        else
        {
          v100 = 0;
        }

        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v114 = __40__BWDeferredProcessorController_process__block_invoke;
        v115 = &unk_1E799C9B8;
        v116 = container;
        v117 = v6;
        rawThumbnailsBufferTag = [v12 rawThumbnailsBufferTag];
        rawThumbnailsMetadataTag = [v12 rawThumbnailsMetadataTag];
        v39 = (v114)(v113, rawThumbnailsBufferTag, rawThumbnailsMetadataTag, v95);
        mainRawThumbnailBufferTag = [v12 mainRawThumbnailBufferTag];
        mainRawThumbnailMetadataTag = [v12 mainRawThumbnailMetadataTag];
        v42 = (v114)(v113, mainRawThumbnailBufferTag, mainRawThumbnailMetadataTag, v94);
        sifrRawThumbnailBufferTag = [v12 sifrRawThumbnailBufferTag];
        sifrRawThumbnailMetadataTag = [v12 sifrRawThumbnailMetadataTag];
        v45 = (v114)(v113, sifrRawThumbnailBufferTag, sifrRawThumbnailMetadataTag, v93);
        v46 = v119;
        if (v119 || (v46 = v118) != 0)
        {
          v126[0] = v46;
LABEL_43:
          CVPixelBufferRelease(texture);
          [v12 releaseBuffer];

          CVPixelBufferRelease(v39);
          CVPixelBufferRelease(v42);
          CVPixelBufferRelease(v45);
          if (v126[0])
          {
            objc_autoreleasePoolPop(v13);
            container = v96;
            goto LABEL_108;
          }

          [v6 addObject:{objc_msgSend(v12, "tag")}];
          container = v96;
          v8 = v97;
          p_inst_meths = (&OBJC_PROTOCOL___FigCaptureDeferredProcessingJobDelegate + 24);
          v10 = v98;
          goto LABEL_53;
        }

        if (v126[0])
        {
          goto LABEL_43;
        }

        if (([objc_msgSend(v96 "captureSettings")] & 4) == 0)
        {
          LODWORD(v78) = v126[0];
          [(BWStillImageProcessorControllerDelegate *)delegate processorController:selfCopy didFinishProcessingBuffer:texture metadata:v100 type:bufferType captureFrameFlags:captureFrameFlags processorInput:v91 err:v78];
          goto LABEL_43;
        }

        v54 = [objc_msgSend(v96 "captureSettings")];
        [v12 portType];
        isEqualToString = objc_msgSend_isEqualToString_(v54);
        v87 = 0;
        if (isEqualToString && (captureFrameFlags & 0x10) != 0)
        {
          v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDNGDictionaryPrefix, -[BWStillImageProcessorControllerInput portType](v91, "portType")];
          v87 = [v96 hasTag:?] ? objc_msgSend(v96, "copyDictionaryForTag:err:", v55, v126) : 0;
          v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagSyntheticReferenceFrameMetadataByPortTypePrefix, -[BWStillImageProcessorControllerInput portType](v91, "portType")];
          if ([v96 hasTag:v56])
          {
            v57 = [v96 copyDictionaryForTag:v56 err:v126];
            [v100 setObject:v57 forKeyedSubscript:@"SyntheticReference"];
          }
        }

        if (bufferType != 1)
        {
          LODWORD(v78) = v126[0];
          [(BWStillImageProcessorControllerDelegate *)delegate processorController:selfCopy didFinishProcessingBuffer:texture metadata:v100 type:bufferType captureFrameFlags:captureFrameFlags processorInput:v91 err:v78];
LABEL_71:

          goto LABEL_43;
        }

        v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagWhiteBalanceMetadataByPortTypePrefix, objc_msgSend(v12, "portType")];
        if ([v96 hasTag:v58])
        {
          v59 = [v96 copyDictionaryForTag:v58 err:v126];
          [v100 addEntriesFromDictionary:v59];
        }

        target = 0;
        v126[0] = [(BWDeferredProcessorController *)selfCopy _sensorRawSampleBufferWithBuffer:v100 metadata:v39 rawThumbnailsBuffer:v42 mainRawThumbnailBuffer:v45 sifrRawThumbnailBuffer:v87 dngDictionary:captureFrameFlags captureFrameFlags:[(BWStillImageProcessorControllerInput *)v91 stillImageSettings] stillImageSettings:&target sampleBufferOut:?];
        if (target)
        {
          v60 = isEqualToString;
        }

        else
        {
          v60 = 1;
        }

        if ((v60 & 1) == 0)
        {
          v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagStereoPhotoDepthMetadata, -[BWStillImageProcessorControllerInput portType](v91, "portType")];
          if ([v96 hasTag:v61])
          {
            v62 = [v96 copyDictionaryForTag:v61 err:v126];
            v63 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v62];
            CMSetAttachment(target, key, v63, 1u);
          }
        }

        if (-[BWStillImageCaptureSettings captureType](-[BWStillImageProcessorControllerInput captureSettings](v91, "captureSettings"), "captureType") == 13 && [v96 hasBufferForType:8 portType:{-[BWStillImageProcessorControllerInput portType](v91, "portType")}] && (captureFrameFlags & 0x10) != 0)
        {
          v111 = 0;
          v110 = 0;
          v64 = [v96 copyBufferForType:8 portType:-[BWStillImageProcessorControllerInput portType](v91 metadata:"portType") err:{&v110, &v111}];
          v65 = v64;
          if (v111)
          {
            v86 = v64;
            v109 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v67 = v109;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v68 = v67;
            }

            else
            {
              v68 = v67 & 0xFFFFFFFE;
            }

            if (v68)
            {
              v102 = 136315394;
              v103 = "[BWDeferredProcessorController process]";
              v104 = 1024;
              LODWORD(v105) = v111;
              LODWORD(v80) = 18;
              v79 = &v102;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_97;
          }

          CMSetAttachment(target, v82, v64, 1u);
          if (dword_1EB58E320)
          {
            v86 = v65;
            v109 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v70 = v109;
            v71 = os_log_type_enabled(v69, type);
            v72 = v70 & 0xFFFFFFFE;
            if (v71)
            {
              v72 = v70;
            }

            if (v72)
            {
              v73 = BWStringFromPixelBuffer();
              v74 = [objc_msgSend(v96 "captureSettings")];
              v102 = 136315651;
              v103 = "[BWDeferredProcessorController process]";
              v104 = 2113;
              v105 = v73;
              v106 = 2050;
              v107 = v74;
              LODWORD(v80) = 32;
              v79 = &v102;
              _os_log_send_and_compose_impl();
            }

LABEL_97:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v65 = v86;
          }

          if (v65)
          {
            CFRelease(v65);
          }
        }

        if ([objc_msgSend(v96 captureSettings])
        {
          if ((captureFrameFlags & 0x10) != 0)
          {
            v75 = -[BWDeferredProcessorController _getOriginalCameraIntrinsicsForPortType:](selfCopy, [v100 objectForKeyedSubscript:v81]);
            if ([(__CFDictionary *)v75 count])
            {
              CMSetAttachments(target, v75, 1u);
            }
          }
        }

        [(BWStillImageProcessorControllerDelegate *)delegate processorController:selfCopy didFinishProcessingSampleBuffer:target type:1 processorInput:v91 err:v126[0]];
        if (target)
        {
          CFRelease(target);
        }

        goto LABEL_71;
      }

      if ([v12 isMemberOfClass:objc_opt_class()])
      {
        inferenceAttachedMediaKey = [v12 inferenceAttachedMediaKey];
        v30 = [v12 fetchAndRetain:&v120];
        if ([v12 metadataTag])
        {
          v31 = [container copyMetadataForTag:objc_msgSend(v12 err:{"metadataTag"), &v120}];
          v32 = [v31 mutableCopy];

          v10 = v98;
          [v6 addObject:{objc_msgSend(v12, "metadataTag")}];
        }

        else
        {
          v32 = 0;
        }

        if ([objc_msgSend(container "settings")] && objc_msgSend(objc_msgSend(container, "settings"), "deferredPhotoProxyHeight"))
        {
          v48 = [objc_msgSend(container "settings")];
          v49 = v48 / [objc_msgSend(container "settings")];
          v50 = MEMORY[0x1E696AD98];
          [(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)selfCopy configuration] inferenceMainImageDownscalingFactor];
          *&v52 = v49 * v51;
          v53 = v50;
          v10 = v98;
          [v32 setObject:objc_msgSend(v53 forKeyedSubscript:{"numberWithFloat:", v52), v88}];
        }

        [(BWStillImageProcessorControllerDelegate *)delegate processorController:selfCopy didFinishProcessingInferenceBuffer:v30 metadata:v32 inferenceAttachedMediaKey:inferenceAttachedMediaKey processorInput:v91 err:v120];
        CVPixelBufferRelease(v30);

        [v12 releaseBuffer];
        [v6 addObject:{objc_msgSend(v12, "tag")}];
        p_inst_meths = (&OBJC_PROTOCOL___FigCaptureDeferredProcessingJobDelegate + 24);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          v33 = [v12 performSelector:sel_inferenceAttachmentKey];
          if (([v33 isEqual:0x1F219E9B0] & 1) != 0 || objc_msgSend(v33, "isEqual:", 0x1F219E990))
          {
            v34 = MEMORY[0x1E695DFD8];
            goto LABEL_37;
          }

          if (([v33 isEqual:0x1F219E6F0] & 1) != 0 || objc_msgSend(v33, "isEqual:", 0x1F219E5F0))
          {
            v34 = MEMORY[0x1E695DFD8];
            getVNFaceObservationClass();
LABEL_37:
            v35 = [v34 setWithObject:objc_opt_class()];
          }

          else
          {
            v35 = 0;
          }

          v36 = [v12 fetchWithCustomClassesAndRetain:v35 err:&v120];
          [(BWStillImageProcessorControllerDelegate *)delegate processorController:selfCopy didFinishProcessingInference:v36 inferenceAttachmentKey:v33 processorInput:v91 err:v120];

          [v6 addObject:{objc_msgSend(v12, "tag")}];
          goto LABEL_53;
        }

        if ([v12 isMemberOfClass:objc_opt_class()] && objc_msgSend_isEqualToString_(objc_msgSend(v12, "tag")))
        {
          v47 = [container copyDictionaryForTag:v89 err:v126];
          [(BWStillImageProcessorControllerDelegate *)delegate processorController:selfCopy didFinishProcessingInferenceAttachedMediaMetadata:v47 processorInput:v91];
        }
      }

LABEL_53:
      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v8 != v11);
    v76 = [obj countByEnumeratingWithState:&v122 objects:v121 count:16];
    v8 = v76;
  }

  while (v76);
LABEL_108:
  objc_autoreleasePoolPop(context);
  input = v91;
LABEL_109:
  [container releaseIntermediates];
  [(BWStillImageProcessorControllerInput *)input setProcessorController:0];
  return v126[0];
}

__CVBuffer *__40__BWDeferredProcessorController_process__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = [*(a1 + 32) copyBufferForTag:a2 err:&v12];
  [*(a1 + 40) addObject:a2];
  if (v12)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3 && v6)
  {
    v8 = [*(a1 + 32) copyMetadataForTag:a3 err:&v12];
    v9 = [v8 mutableCopy];
    [*(a1 + 40) addObject:a3];
    if (v9)
    {
      CVBufferSetAttachment(v6, *off_1E798A3C8, v9, kCVAttachmentMode_ShouldPropagate);
    }

    else
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v6;
}

uint64_t __53__BWDeferredProcessorController__sortedIntermediates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    return FigCapturePixelFormatIsVersatileRaw([a2 pixelFormat]);
  }

  if ([a3 isMemberOfClass:objc_opt_class()])
  {
    return FigCapturePixelFormatIsVersatileRaw([a3 pixelFormat]) << 63 >> 63;
  }

  return 0;
}

uint64_t __53__BWDeferredProcessorController__sortedIntermediates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (![a2 isMemberOfClass:objc_opt_class()] || !objc_msgSend(a3, "isMemberOfClass:", objc_opt_class()))
  {
    if (([a2 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      return ([a3 isMemberOfClass:objc_opt_class()] & 1) != 0;
    }

    return -1;
  }

  IsVersatileRaw = FigCapturePixelFormatIsVersatileRaw([a2 pixelFormat]);
  v7 = FigCapturePixelFormatIsVersatileRaw([a3 pixelFormat]);
  v8 = [a2 captureFrameFlags];
  v9 = [a3 captureFrameFlags];
  v10 = [a2 bufferType];
  v11 = [a3 bufferType];
  if (!IsVersatileRaw || !v7)
  {
    if (IsVersatileRaw)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    if (((IsVersatileRaw | v7) & 1) == 0)
    {
      return 0;
    }

    return v18;
  }

  v12 = v11;
  if (v10 != v11)
  {
    if (v10 == 1)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (([objc_msgSend(objc_msgSend(*(a1 + 32) "container")] & 0x200000000) == 0)
  {
    v13 = [objc_msgSend(objc_msgSend(*(a1 + 32) "container")];
    v42 = 0u;
    v43 = 0u;
    if (v13 == 13)
    {
      v14 = &unk_1F2249C30;
    }

    else
    {
      v14 = &unk_1F2249C48;
    }

    v44 = 0uLL;
    v45 = 0uLL;
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v18 = 1;
      v39 = v12;
LABEL_12:
      v19 = 0;
      while (1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = [*(*(&v42 + 1) + 8 * v19) unsignedLongValue];
        if ((v20 & v8) != 0)
        {
          return -1;
        }

        if ((v20 & v9) != 0)
        {
          return v18;
        }

        if (v16 == ++v19)
        {
          v16 = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
          v12 = v39;
          if (v16)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    if (v10 == 37)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    if (v10 != 37 && v12 != 37)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v23 = v57;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v56))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v46 = 136315650;
        v47 = "[BWDeferredProcessorController _sortedIntermediates]_block_invoke";
        v48 = 2112;
        v49 = a2;
        v50 = 2112;
        v51 = a3;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v52 = 138412546;
      v53 = a2;
      v54 = 2112;
      v55 = a3;
      v38 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v38, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDeferredProcessorController.m", 930, @"LastShownDate:BWDeferredProcessorController.m:930", @"LastShownBuild:BWDeferredProcessorController.m:930", 0);
      goto LABEL_65;
    }

    return v18;
  }

  v26 = [a2 attributes];
  v27 = *MEMORY[0x1E6966208];
  v40 = [objc_msgSend(v26 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
  v28 = [a2 attributes];
  v29 = *MEMORY[0x1E69660B8];
  v30 = [objc_msgSend(v28 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
  v31 = [objc_msgSend(objc_msgSend(a3 "attributes")];
  v32 = [objc_msgSend(objc_msgSend(a3 "attributes")];
  v33 = v40 | (v30 << 32);
  v34 = *(a1 + 40);
  if (v33 == v34)
  {
    v18 = -1;
  }

  else
  {
    v18 = 1;
  }

  if (v33 == v34 || (v31 | (v32 << 32)) == v34)
  {
    return v18;
  }

  if ((v8 & 4) != 0)
  {
    return -1;
  }

  if ((v9 & 4) != 0)
  {
    return 1;
  }

  if ((v8 & 8) != 0)
  {
    return -1;
  }

  if ((v9 & 8) != 0)
  {
    return 1;
  }

  if ((v8 & 0x10) != 0)
  {
    return -1;
  }

  if ((v9 & 0x10) != 0)
  {
    return 1;
  }

  v18 = -1;
  if ((v8 & 2) == 0)
  {
    v35 = v10 == 37 ? -1 : 1;
    v18 = (v9 & 2) != 0 ? 1 : v35;
    if ((v9 & 2) == 0 && v10 != 37 && v12 != 37)
    {
      v36 = FigCaptureGetFrameworkRadarComponent();
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v52 = 138412546;
      v53 = a2;
      v54 = 2112;
      v55 = a3;
      v38 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v36, v38, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDeferredProcessorController.m", 886, @"LastShownDate:BWDeferredProcessorController.m:886", @"LastShownBuild:BWDeferredProcessorController.m:886", 0);
LABEL_65:
      free(v38);
      return 0;
    }
  }

  return v18;
}

- (void)_sortedIntermediates
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [objc_msgSend(result "currentRequest")];
  if (([objc_msgSend(objc_msgSend(v2 "container")] & 4) == 0)
  {
    goto LABEL_3;
  }

  v4 = [objc_msgSend(objc_msgSend(v2 "container")];
  container = [v2 container];
  if ((v4 & 0x80) == 0)
  {
    if ([objc_msgSend(container "captureSettings")] == 12 || objc_msgSend(objc_msgSend(objc_msgSend(v2, "container"), "captureSettings"), "captureType") == 13)
    {
      v6 = [objc_msgSend(v1 "configuration")];
      return [objc_msgSend(objc_msgSend(v2 container];
    }

LABEL_3:
    container2 = [v2 container];

    return [container2 intermediates];
  }

  intermediates = [container intermediates];

  return [intermediates sortedArrayUsingComparator:&__block_literal_global_121];
}

- (void)_handleDidDetermineReferenceFrameWithSortedIntermediates:(void *)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v78[0] = 0;
  v77 = 0;
  v4 = [objc_msgSend(result "currentRequest")];
  container = [v4 container];
  v6 = 0x1E696A000uLL;
  if (([objc_msgSend(v4 "captureStreamSettings")] & 4) == 0)
  {
    v60 = v3;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagReferenceFrameMetadataByPortTypePrefix, objc_msgSend(v4, "portType")];
    v7 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:? err:?];
    captureFrameFlags = 0;
    if (v7)
    {
LABEL_4:
      v59 = v7;
      v9 = [v7 mutableCopy];
      v10 = [*(v6 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagWhiteBalanceMetadataByPortTypePrefix, objc_msgSend(objc_msgSend(v4, "captureSettings"), "masterPortType")];
      if ([container hasTag:v10])
      {
        v11 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v10 err:?];
        [v9 addEntriesFromDictionary:v11];
      }

      v12 = objc_alloc(MEMORY[0x1E695DF90]);
      v13 = *off_1E798A3C8;
      v71 = *off_1E798A3C8;
      v72[0] = v9;
      v14 = [v12 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v72, &v71, 1)}];
      [v14 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v4 forKeyedSubscript:{"stillImageSettings"), "processingSettings"), "photoManifest"), @"PhotoManifest"}];
      [v14 setObject:objc_msgSend(container forKeyedSubscript:{"captureSettings"), @"BWStillImageCaptureSettings"}];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(container, "captureSettings"), "captureType")), @"StillImageCaptureType"}];
      [v14 setObject:objc_msgSend(container forKeyedSubscript:{"settings"), @"StillImageSettings"}];
      [v14 setObject:objc_msgSend(v4 forKeyedSubscript:{"stillImageSettings"), @"StillSettings"}];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", captureFrameFlags), @"StillImageCaptureFrameFlags"}];
      [v14 setObject:objc_msgSend(objc_msgSend(objc_msgSend(container forKeyedSubscript:{"captureSettings"), "metadata"), "slaveLensFNumbers"), 0x1F21AA430}];
      [v14 setObject:objc_msgSend(objc_msgSend(objc_msgSend(container forKeyedSubscript:{"captureSettings"), "metadata"), "slaveFocalLengths"), 0x1F21AA410}];
      v15 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(container "captureSettings")];
      [v14 setObject:objc_msgSend(v15 forKeyedSubscript:{"numberWithFloat:"), 0x1F216AB90}];
      v16 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(container "captureSettings")];
      [v14 setObject:objc_msgSend(v16 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AA2B0}];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(objc_msgSend(container, "captureSettings"), "metadata"), "deviceType")), 0x1F21A9ED0}];
      v17 = [objc_msgSend(objc_msgSend(objc_msgSend(container "photoManifest")];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v17 & 0xFD5FFFFF), @"StillImageProcessingFlags"}];
      v18 = [*(v6 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDNGDictionaryPrefix, objc_msgSend(v4, "portType")];
      if ([container hasTag:v18])
      {
        v19 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v18 err:?];
        [v14 setObject:v19 forKeyedSubscript:0x1F21AA750];
      }

      v20 = -[BWDeferredProcessorController _getOriginalCameraIntrinsicsForPortType:](v60, [v4 portType]);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v68;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v68 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v14 setObject:objc_msgSend(v20 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v67 + 1) + 8 * i)), *(*(&v67 + 1) + 8 * i)}];
          }

          v22 = [v20 countByEnumeratingWithState:&v67 objects:v66 count:16];
        }

        while (v22);
      }

      memset(&v65, 0, sizeof(v65));
      CMTimeMakeFromDictionary(&v65, [objc_msgSend(v14 objectForKeyedSubscript:{v13), "objectForKeyedSubscript:", *off_1E798A420}]);
      memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      __dst.presentationTimeStamp = v65;
      v78[0] = OUTLINED_FUNCTION_7_17(*MEMORY[0x1E695E480], v25, v26, v27, v28, v29, v30, v31, &__dst, 0, 0, &v77);
      CMSetAttachments(v77, v14, 1u);
      v32 = &dword_1EB58E000;
      v33 = 0x1E696A000uLL;
      if (![container hasBufferForType:19 portType:{objc_msgSend(v4, "portType")}])
      {
LABEL_38:
        v41 = v60;
        if (![container hasBufferForType:2001 portType:{objc_msgSend(v4, "portType")}])
        {
LABEL_64:
          v56 = [objc_msgSend(v41 "currentRequest")];
          v57 = v77;
          v58 = [objc_msgSend(v41 "currentRequest")];
          [v56 processorController:v41 didDetermineReferenceFrame:v57 processorInput:v58 err:v78[0]];
          v7 = v59;
          goto LABEL_65;
        }

        v62 = 0;
        v42 = [container copyBufferForType:2001 portType:objc_msgSend(v4 metadata:"portType") err:{&v62, v78}];
        if (v78[0])
        {
          LODWORD(cf) = 0;
          v63[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v44 = cf;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v63[0]))
          {
            v45 = v44;
          }

          else
          {
            v45 = v44 & 0xFFFFFFFE;
          }

          if (v45)
          {
            OUTLINED_FUNCTION_77_0();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          cf = 0;
          BWSampleBufferSetAttachedMediaFromPixelBuffer(v77, @"Depth", v42, &cf, v62, 0, 0);
          AttachedMedia = BWSampleBufferGetAttachedMedia(v77, @"Depth");
          v47 = [*(v33 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDepthMetadata, objc_msgSend(v4, "portType")];
          if ([container hasTag:v47])
          {
            v48 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v47 err:?];
            v49 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v48];
            CMSetAttachment(v77, *off_1E798D2B8, v49, 1u);
          }

          v50 = [*(v33 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDepthData, objc_msgSend(v4, "portType")];
          if ([container hasTag:v50])
          {
            v51 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v50 err:?];
            v52 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v51];
            CMSetAttachment(AttachedMedia, @"DepthPixelBufferType", [v52 objectForKeyedSubscript:@"DepthPixelBufferType"], 1u);
            [v52 setObject:0 forKeyedSubscript:@"DepthPixelBufferType"];
            CMSetAttachment(AttachedMedia, *off_1E798A328, v52, 1u);
          }

          v41 = v60;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v32[200])
          {
            goto LABEL_61;
          }

          *v63 = 0;
          v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v54 = *v63;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v55 = v54;
          }

          else
          {
            v55 = v54 & 0xFFFFFFFE;
          }

          if (v55)
          {
            BWStringFromPixelBuffer();
            [objc_msgSend(container "captureSettings")];
            OUTLINED_FUNCTION_77_0();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }
        }

        OUTLINED_FUNCTION_2_116();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_61:
        if (v42)
        {
          CFRelease(v42);
        }

        goto LABEL_64;
      }

      *v63 = 0;
      v62 = 0;
      v34 = [container copyBufferForType:19 portType:objc_msgSend(v4 metadata:"portType") err:{&v62, v63}];
      if (*v63)
      {
        LODWORD(cf) = 0;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_116();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v32 = &dword_1EB58E000;
      }

      else
      {
        cf = 0;
        BWSampleBufferSetAttachedMediaFromPixelBuffer(v77, 0x1F217BF50, v34, &cf, v62, 0, 0);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (dword_1EB58E320)
        {
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_2_116();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v33 = 0x1E696A000;
          v32 = &dword_1EB58E000;
          if (!v34)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      if (!v34)
      {
LABEL_37:

        goto LABEL_38;
      }

LABEL_36:
      CFRelease(v34);
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v14 = OUTLINED_FUNCTION_7_74();
  if (v14)
  {
    v36 = *v74;
LABEL_20:
    v37 = 0;
    while (1)
    {
      if (*v74 != v36)
      {
        objc_enumerationMutation(a2);
      }

      v38 = *(*(&v73 + 1) + 8 * v37);
      if ([v38 isMemberOfClass:objc_opt_class()])
      {
        if (([v38 captureFrameFlags] & 0x10) != 0)
        {
          portType = [v38 portType];
          [objc_msgSend(v4 "captureSettings")];
          if (objc_msgSend_isEqualToString_(portType))
          {
            break;
          }
        }
      }

      if (v14 == ++v37)
      {
        v14 = OUTLINED_FUNCTION_7_74();
        if (v14)
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    v60 = v3;
    [v38 metadataTag];
    v7 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:? err:?];
    captureFrameFlags = [v38 captureFrameFlags];
    v6 = 0x1E696A000;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_65;
  }

LABEL_28:
  v7 = 0;
LABEL_65:
  if (v77)
  {
    CFRelease(v77);
  }

  return v78[0];
}

- (uint64_t)_sensorRawSampleBufferWithBuffer:(void *)buffer metadata:(const void *)metadata rawThumbnailsBuffer:(const void *)thumbnailsBuffer mainRawThumbnailBuffer:(const void *)thumbnailBuffer sifrRawThumbnailBuffer:(const void *)rawThumbnailBuffer dngDictionary:(uint64_t)dictionary captureFrameFlags:(void *)flags stillImageSettings:(void *)self0 sampleBufferOut:
{
  if (!self)
  {
    return 0;
  }

  v34[0] = 0;
  v11 = 4294954516;
  if (a2 && buffer && flags && settings)
  {
    memset(&v33, 0, sizeof(v33));
    CMTimeMakeFromDictionary(&v33, [buffer objectForKeyedSubscript:*off_1E798A420]);
    if ((dictionary & 0x4000000000000000) != 0)
    {
      v32.duration = v33;
      v11 = BWSampleBufferCreateFromPixelBuffer(a2, &v32, (self + 64), v34);
    }

    else
    {
      *&v32.duration.value = *MEMORY[0x1E6960C70];
      v32.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      v32.presentationTimeStamp = v33;
      v32.decodeTimeStamp = v32.duration;
      v11 = OUTLINED_FUNCTION_7_17(*MEMORY[0x1E695E480], v18, v19, v20, v21, v22, v23, v24, &v32, 0, 0, v34);
      v25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a2, *off_1E798A2D0, 0}];
      v26 = [objc_msgSend(buffer objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
      v27 = off_1E798A468;
      if (!v26)
      {
        v27 = off_1E798A448;
      }

      CMSetAttachment(v34[0], *v27, v25, 1u);
    }

    if (!v11)
    {
      CMSetAttachment(v34[0], *off_1E798A3C8, buffer, 1u);
      CMSetAttachment(v34[0], @"StillSettings", flags, 1u);
      OUTLINED_FUNCTION_59([flags requestedSettings]);
      OUTLINED_FUNCTION_59([flags captureSettings]);
      OUTLINED_FUNCTION_59([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(flags, "captureSettings"), "captureType")}]);
      OUTLINED_FUNCTION_59([objc_msgSend(flags "processingSettings")]);
      OUTLINED_FUNCTION_59([MEMORY[0x1E696AD98] numberWithUnsignedLongLong:dictionary]);
      OUTLINED_FUNCTION_0_114([objc_msgSend(objc_msgSend(flags "captureSettings")]);
      OUTLINED_FUNCTION_0_114([objc_msgSend(objc_msgSend(flags "captureSettings")]);
      v28 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(flags "captureSettings")];
      OUTLINED_FUNCTION_0_114([v28 numberWithFloat:?]);
      v29 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(flags "captureSettings")];
      OUTLINED_FUNCTION_0_114([v29 numberWithFloat:?]);
      OUTLINED_FUNCTION_0_114([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(objc_msgSend(flags, "captureSettings"), "metadata"), "deviceType")}]);
      if (metadata)
      {
        CMSetAttachment(v34[0], *off_1E798A458, metadata, 1u);
      }

      if (thumbnailsBuffer)
      {
        CMSetAttachment(v34[0], *off_1E798A3C0, thumbnailsBuffer, 1u);
      }

      if (thumbnailBuffer)
      {
        CMSetAttachment(v34[0], *off_1E798A470, thumbnailBuffer, 1u);
      }

      if (rawThumbnailBuffer)
      {
        CMSetAttachment(v34[0], @"RawDNGDictionary", rawThumbnailBuffer, 1u);
      }

      v11 = 0;
      *settings = v34[0];
    }
  }

  return v11;
}

- (id)_getOriginalCameraIntrinsicsForPortType:(id)result
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagSampleBufferOriginalCameraIntrinsicsPrefix, a2];
      v5 = [objc_msgSend(objc_msgSend(v3 "currentRequest")];
      if ([v5 hasTag:v4])
      {
        HIDWORD(v9) = 0;
        v6 = [v5 copyDictionaryForTag:v4 err:&v9 + 4];
        return v6;
      }
    }

    else
    {
      v7 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v2, v8, v9, v10, v11, vars0, vars8);
    }

    v6 = 0;
    return v6;
  }

  return result;
}

@end