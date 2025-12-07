void cpls_logCameraStreamingPowerEvents(void *a1)
{
  dispatch_assert_queue_V2(sCameraPowerLogEventQueue);
  v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a1, @"Events", 0}];
  PLLogRegisteredEvent();
  if (dword_1ED844470)
  {
    v21 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a1 count])
  {
    v3 = 0;
    do
    {
      v4 = [a1 objectAtIndexedSubscript:v3];
      if (dword_1ED844470)
      {
        v5 = v4;
        v21 = 0;
        v20 = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v7 = v21;
        if (os_log_type_enabled(v6, v20))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v14 = 136315650;
          v15 = "cpls_logCameraStreamingPowerEvents";
          v16 = 1024;
          v17 = v3 + 1;
          v18 = 2114;
          v19 = v5;
          LODWORD(v12) = 28;
          v10 = &v14;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v3;
    }

    while ([a1 count] > v3);
  }
}

void *cpls_portTypesReportedStreamingForCameraApp()
{
  dispatch_assert_queue_V2(sCameraPowerLogEventQueue);
  v8 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v0 = qword_1ED844E98;
  v1 = [qword_1ED844E98 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = [qword_1ED844E98 objectForKeyedSubscript:v5];
        if ((objc_msgSend_isEqualToString_([v6 objectForKeyedSubscript:@"ApplicationID"]) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(v6, "objectForKeyedSubscript:", @"ApplicationID")))
        {
          if ([objc_msgSend(v6 objectForKeyedSubscript:{@"Streaming", "BOOLValue"}])
          {
            [v8 addObject:v5];
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v2);
  }

  return v8;
}

void multiStreamCameraSourceNode_sendBufferToBufferServicingThread(_DWORD *a1, int a2, void *a3, CMTime *a4)
{
  memset(&v15, 0, sizeof(v15));
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  CMTimeMake(&v15, UpTimeNanoseconds, 1000000000);
  v9 = CFGetTypeID(a3);
  TypeID = CVPixelBufferGetTypeID();
  v11 = *MEMORY[0x1E695FF58];
  if (v9 == TypeID)
  {
    if (v11 != 1)
    {
      goto LABEL_7;
    }

    time = *a4;
    CMTimeGetSeconds(&time);
    time = v15;
    CMTimeGetSeconds(&time);
    IOSurface = CVPixelBufferGetIOSurface(a3);
    IOSurfaceGetID(IOSurface);
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_7;
    }

    time = *a4;
    CMTimeGetSeconds(&time);
    time = v15;
    CMTimeGetSeconds(&time);
  }

  kdebug_trace();
LABEL_7:
  if (a3)
  {
    v13 = CFDataCreate(*MEMORY[0x1E695E480], a4, 24);
    if (v9 == CFDictionaryGetTypeID())
    {
      CFDictionarySetValue(a3, @"BWPTS", v13);
    }

    else
    {
      CVBufferSetAttachment(a3, @"BWPTS", v13, kCVAttachmentMode_ShouldNotPropagate);
    }

    CFRelease(v13);
    CFRetain(a3);
    v14 = &a1[128 * a2 + 108];
    if (CMSimpleQueueEnqueue(*(v14 + 3), a3))
    {
      CFRelease(a3);
    }

    else
    {
      dispatch_async_f(*(v14 + 4), a1, *(v14 + 5));
    }
  }
}

void multiStreamCameraSourceNode_serviceQueue(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  target = 0;
  v5 = a2;
  v6 = a1 + 432 + (a2 << 9);
  v7 = CMSimpleQueueDequeue(*(v6 + 24));
  buffer = **&MEMORY[0x1E6960C70];
  if (!v7)
  {
    goto LABEL_96;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(v8, @"BWPTS");
    if (Value)
    {
      v11 = CFRetain(Value);
    }

    else
    {
      v11 = 0;
    }

    CFDictionaryRemoveValue(v8, @"BWPTS");
    v12 = CFDictionaryGetValue(v8, @"BWCorrespondingMetadataIdentifiers");
    if (v12)
    {
      cf = CFRetain(v12);
    }

    else
    {
      cf = 0;
    }

    CFDictionaryRemoveValue(v8, @"BWCorrespondingMetadataIdentifiers");
    v13 = CFDictionaryGetValue(v8, @"BWFrameMetadata");
    if (v13)
    {
      theDict = CFRetain(v13);
    }

    else
    {
      theDict = 0;
    }

    CFDictionaryRemoveValue(v8, @"BWFrameMetadata");
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = CVBufferCopyAttachment(v8, @"BWPTS", 0);
    CVBufferRemoveAttachment(v8, @"BWPTS");
    cf = 0;
    theDict = CVBufferCopyAttachment(v8, *off_1E798A3C8, 0);
    if (v11)
    {
LABEL_15:
      v78.location = 0;
      v78.length = 24;
      CFDataGetBytes(v11, v78, &buffer);
    }
  }

  if (v9 != CVPixelBufferGetTypeID())
  {
    TypeID = CVDataBufferGetTypeID();
    if (a2 == 7 && v9 == TypeID)
    {
      v41 = [objc_msgSend(*(v6 + 16) "formatRequirements")];
      v76 = buffer;
      if (BWSampleBufferCreateFromDataBufferWithNumberOfPoints(v8, &v76, 1885564004, (v6 + 48), &target, v41))
      {
        multiStreamCameraSourceNode_serviceQueue_cold_8();
        goto LABEL_88;
      }

      v36 = target;
LABEL_48:
      v70 = v11;
      v42 = v4;
      v43 = (a1 + 432 + (a2 << 9));
      v44 = *(a1 + 172);
      v45 = *(a1 + 144);
      v71 = a2;
      if ([*(a1 + 360) previewOutputEnabled])
      {
        v57 = [BWMultiStreamCameraSourceNode _shouldEnableStreamCaptureOutputForNodeOutput:a1];
        v46 = *v43;
        if (v57)
        {
          a2 = a2;
          if (v46 == 1)
          {
            v69 = v45;
            v47 = *(a1 + 176);
LABEL_52:
            v48 = *(a1 + 11768);
            ImageBuffer = CMSampleBufferGetImageBuffer(v36);
            if (v44)
            {
              if (v47)
              {
                [v47 addMetadataAttachmentToSampleBuffer:v36 withDutyCycleMetadataCache:v48];
                v4 = v42;
                v5 = a2;
                v11 = v70;
                a2 = v71;
                goto LABEL_88;
              }

              v4 = v42;
              v45 = v69;
LABEL_79:
              v58 = [v45 addAttachmentsToSampleBuffer:v36 options:0];
              v5 = a2;
              v11 = v70;
              if (v58 || !v48)
              {
                a2 = v71;
                if ((v58 == -12680 || v58 == -12785) && target)
                {
                  CFRelease(target);
                  target = 0;
                }
              }

              else
              {
                FigCaptureMetadataUtilitiesAddMissingDutyCycleMetadata(v36, v48);
                a2 = v71;
              }

              goto LABEL_88;
            }

            goto LABEL_82;
          }

LABEL_77:
          ImageBuffer = CMSampleBufferGetImageBuffer(v36);
          if (v44)
          {
            v48 = 0;
            v4 = v42;
            goto LABEL_79;
          }

LABEL_82:
          v59 = ImageBuffer;
          v60 = *off_1E798A3C8;
          v61 = CMGetAttachment(ImageBuffer, *off_1E798A3C8, 0);
          v4 = v42;
          if (v61)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v61);
            CMSetAttachment(v36, v60, MutableCopy, 1u);
            CMSetAttachment(v59, v60, MutableCopy, 1u);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }
          }

          v63 = *off_1E798A328;
          v64 = CMGetAttachment(v59, *off_1E798A328, 0);
          v5 = a2;
          v11 = v70;
          a2 = v71;
          if (!v64)
          {
            goto LABEL_88;
          }

          v39 = v64;
          v37 = v36;
          v38 = v63;
          goto LABEL_87;
        }
      }

      else
      {
        v46 = *v43;
      }

      a2 = a2;
      if (v46 == 1)
      {
        v69 = v45;
        v47 = 0;
        goto LABEL_52;
      }

      goto LABEL_77;
    }

    v50 = CVDataBufferGetTypeID();
    if (a2 == 10 && v9 == v50)
    {
      v76 = buffer;
      if (BWSampleBufferCreateFromDataBuffer(v8, &v76.value, 1885564004, (v6 + 48), &target))
      {
        multiStreamCameraSourceNode_serviceQueue_cold_7();
        goto LABEL_88;
      }
    }

    else
    {
      v51 = CFDictionaryGetTypeID();
      if (a2 != 11 || v9 != v51)
      {
        v55 = CFDictionaryGetTypeID();
        if (a2 == 12 && v9 == v55)
        {
          v76 = buffer;
          if (BWCreateSampleBufferWithDetectedObjectsInfo(v8, &v76, theDict, &target))
          {
            multiStreamCameraSourceNode_serviceQueue_cold_5();
            goto LABEL_88;
          }
        }

        else
        {
          v56 = CFDictionaryGetTypeID();
          if (a2 == 13 && v9 == v56)
          {
            v76 = buffer;
            if (BWCreateSampleBufferWithEyeReliefResultDictionary(v8, &v76, theDict, &target))
            {
              multiStreamCameraSourceNode_serviceQueue_cold_4();
              goto LABEL_88;
            }
          }

          else
          {
            v66 = CFDictionaryGetTypeID();
            if (a2 == 14 && v9 == v66)
            {
              v76 = buffer;
              if (BWCreateSampleBufferWithTrackedFacesDictionary(v8, &v76, theDict, &target))
              {
                multiStreamCameraSourceNode_serviceQueue_cold_3();
                goto LABEL_88;
              }
            }

            else
            {
              v67 = CFDictionaryGetTypeID();
              if (a2 == 15 && v9 == v67)
              {
                v76 = buffer;
                if (BWCreateSampleBufferWithFaceIDReadinessDictionary(v8, &v76, theDict, &target))
                {
                  multiStreamCameraSourceNode_serviceQueue_cold_2();
                  goto LABEL_88;
                }
              }

              else
              {
                v68 = CFDictionaryGetTypeID();
                if (a2 != 16 || v9 != v68)
                {
                  goto LABEL_88;
                }

                v76 = buffer;
                if (BWCreateSampleBufferWithMotionToWakeDictionary(v8, &v76, theDict, &target))
                {
                  multiStreamCameraSourceNode_serviceQueue_cold_1();
                  goto LABEL_88;
                }
              }
            }
          }
        }

        goto LABEL_42;
      }

      v52 = [a1 portType];
      v76 = buffer;
      if (BWCreateSampleBufferFromSemanticMasksDictionary(v8, &v76.value, v52, &target))
      {
        multiStreamCameraSourceNode_serviceQueue_cold_6();
        goto LABEL_88;
      }
    }

LABEL_62:
    if (theDict)
    {
      v53 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
      v54 = *off_1E798A3C8;
      CMSetAttachment(target, *off_1E798A3C8, v53, 1u);
      CMSetAttachment(v8, v54, v53, 1u);
      if (v53)
      {
        CFRelease(v53);
      }
    }

    goto LABEL_88;
  }

  v76 = buffer;
  v77 = 0;
  if (BWSampleBufferCreateFromPixelBuffer(v8, &v76, (v6 + 48), &v77))
  {
    multiStreamCameraSourceNode_serviceQueue_cold_9();
  }

  else
  {
    v14 = *off_1E798A448;
    v15 = CMGetAttachment(v8, *off_1E798A448, 0);
    if (v15)
    {
      CMSetAttachment(v77, v14, v15, 1u);
    }

    v16 = *off_1E798A468;
    v17 = CMGetAttachment(v8, *off_1E798A468, 0);
    if (v17)
    {
      CMSetAttachment(v77, v16, v17, 1u);
    }

    v18 = *off_1E798A458;
    v19 = CMGetAttachment(v8, *off_1E798A458, 0);
    if (v19)
    {
      CMSetAttachment(v77, v18, v19, 1u);
      CMRemoveAttachment(v8, v18);
    }

    v20 = *off_1E798A3C0;
    v21 = CMGetAttachment(v8, *off_1E798A3C0, 0);
    if (v21)
    {
      CMSetAttachment(v77, v20, v21, 1u);
      CMRemoveAttachment(v8, v20);
    }

    v22 = *off_1E798A470;
    v23 = CMGetAttachment(v8, *off_1E798A470, 0);
    if (v23)
    {
      CMSetAttachment(v77, v22, v23, 1u);
      CMRemoveAttachment(v8, v22);
    }

    v24 = *off_1E798A4F0;
    v25 = CMGetAttachment(v8, *off_1E798A4F0, 0);
    if (v25)
    {
      CMSetAttachment(v77, v24, v25, 1u);
      CMRemoveAttachment(v8, v24);
    }

    v26 = *off_1E798A478;
    v27 = CMGetAttachment(v8, *off_1E798A478, 0);
    if (v27)
    {
      CMSetAttachment(v77, v26, v27, 1u);
      CMRemoveAttachment(v8, v26);
    }

    v28 = *off_1E798A388;
    v29 = CMGetAttachment(v8, *off_1E798A388, 0);
    if (v29)
    {
      CMSetAttachment(v77, v28, v29, 1u);
      CMRemoveAttachment(v8, v28);
    }

    v30 = *off_1E798A320;
    v31 = CMGetAttachment(v8, *off_1E798A320, 0);
    if (v31)
    {
      CMSetAttachment(v77, v30, v31, 1u);
      CMRemoveAttachment(v8, v30);
    }

    v32 = *off_1E798A510;
    v33 = CMGetAttachment(v8, *off_1E798A510, 0);
    if (v33)
    {
      CMSetAttachment(v77, v32, v33, 1u);
      CMRemoveAttachment(v8, v32);
    }

    v34 = *off_1E798A4C8;
    v35 = CMGetAttachment(v8, *off_1E798A4C8, 0);
    if (v35)
    {
      CMSetAttachment(v77, v34, v35, 1u);
      CMRemoveAttachment(v8, v34);
    }
  }

  v36 = v77;
  target = v77;
  if ((a2 - 9) <= 2)
  {
    goto LABEL_62;
  }

  if ((a2 - 12) > 4)
  {
    goto LABEL_48;
  }

LABEL_42:
  if (cf)
  {
    v37 = target;
    v38 = *off_1E798A0A8;
    v39 = cf;
LABEL_87:
    CMSetAttachment(v37, v38, v39, 1u);
  }

LABEL_88:
  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v8);
  v65 = target;
  if (target)
  {
    if (*(a1 + 432 + (v5 << 9) + 9) == 1)
    {
      multiStreamCameraSourceNode_outputSampleBuffer(a1, a2, target);
    }

    CFRelease(v65);
  }

LABEL_96:
  objc_autoreleasePoolPop(v4);
}

uint64_t BWSampleBufferCreateFromPixelBuffer(__CVBuffer *a1, uint64_t a2, CMVideoFormatDescriptionRef *a3, CMSampleBufferRef *a4)
{
  v6 = *MEMORY[0x1E6960C70];
  *v7 = *(MEMORY[0x1E6960C70] + 16);
  *&v7[8] = *a2;
  *&v7[24] = *(a2 + 16);
  v8 = v6;
  v9 = *v7;
  *&v5.presentationTimeStamp.timescale = *&v7[16];
  *&v5.decodeTimeStamp.value = v6;
  v5.decodeTimeStamp.epoch = *v7;
  *&v5.duration.value = v6;
  *&v5.duration.epoch = *v7;
  return BWSampleBufferCreateFromPixelBufferWithTimingInfo(a1, &v5, a3, a4);
}

uint64_t BWSampleBufferCreateFromPixelBufferWithTimingInfo(CVImageBufferRef imageBuffer, CMSampleTimingInfo *sampleTiming, CMVideoFormatDescriptionRef *a3, CMSampleBufferRef *a4)
{
  formatDescription = 0;
  sampleBufferOut = 0;
  if (imageBuffer)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = *a3;
        v9 = *MEMORY[0x1E695E480];
        v10 = 1;
        v11 = *a3;
        while (1)
        {
          v12 = v11;
          if (!v11)
          {
            v13 = CMVideoFormatDescriptionCreateForImageBuffer(v9, imageBuffer, &formatDescription);
            if (v13)
            {
              v18 = v13;
              BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_1();
              goto LABEL_21;
            }

            v12 = formatDescription;
          }

          v14 = CMSampleBufferCreateForImageBuffer(v9, imageBuffer, 1u, 0, 0, v12, sampleTiming, &sampleBufferOut);
          v16 = v14 == -12743 && formatDescription == 0;
          if (v14 && !v16)
          {
            v18 = v14;
            BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_2();
            goto LABEL_21;
          }

          if (v16)
          {
            v11 = 0;
          }

          if (!sampleBufferOut)
          {
            v17 = (v8 != 0) & v10;
            v10 = 0;
            if (v17)
            {
              continue;
            }
          }

          v18 = 0;
          *a4 = sampleBufferOut;
          goto LABEL_21;
        }
      }

      BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_3();
    }

    else
    {
      BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_4();
    }
  }

  else
  {
    BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_5(0, sampleTiming);
  }

  v18 = 4294954516;
LABEL_21:
  v19 = formatDescription;
  if (formatDescription)
  {
    if (*a3)
    {
      CFRelease(*a3);
      v19 = formatDescription;
    }

    *a3 = v19;
  }

  return v18;
}

void multiStreamCameraSourceNode_outputSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  *(&v309 + 1) = a2;
  v4 = a1;
  v312 = a2;
  v5 = a1 + 432 + (a2 << 9);
  v300 = *(a1 + 216);
  v6 = *(v5 + 16);
  v7 = *v5;
  LODWORD(v303) = *(v5 + 4);
  v8 = *v5 == 2;
  if (v6 == *(a1 + 232) && ([*(a1 + 360) detectedFacesOnPreviewOutputEnabled] & 1) != 0)
  {
    v304 = 0;
  }

  else
  {
    if (v6 == *(v4 + 240))
    {
      v9 = [*(v4 + 360) detectedFacesOnVideoCaptureOutputEnabled] ^ 1;
    }

    else
    {
      v9 = 1;
    }

    v304 = v9;
  }

  *&buffer = CMSampleBufferGetImageBuffer(a3);
  v310 = v4;
  sbuf = a3;
  v308 = v5;
  if (v7 == 2)
  {
    if (dword_1ED8445B0)
    {
      LODWORD(time2.x) = 0;
      LOBYTE(v347) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([*(v4 + 136) sourceNodeShouldDiscardStillImageSampleBuffer:a3 sensorRawOutput:v6 == *(v4 + 256)])
    {
      LODWORD(time2.x) = 0;
      LOBYTE(v347) = 0;
      v278 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      x_low = LODWORD(time2.x);
      if (os_log_type_enabled(v278, v347))
      {
        v281 = x_low;
      }

      else
      {
        v281 = x_low & 0xFFFFFFFE;
      }

      if (v281)
      {
        v282 = BWPortTypeToDisplayString(v300, v280);
        v283 = [v6 name];
        v284 = BWStillImageSampleBufferToShortDisplayString(a3);
        LODWORD(time1.value) = 136315906;
        *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v282;
        HIWORD(time1.epoch) = 2114;
        v330 = v283;
        v331 = 2114;
        v332 = v284;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_464;
    }
  }

  [(BWMultiStreamCameraSourceNode *)v4 _addCaptureStreamAttachmentsToSampleBuffer:a3];
  v11 = *off_1E798A3C8;
  v307 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (v7 == 1)
  {
    if (*(v5 + 4))
    {
      LOBYTE(time.duration.value) = 0;
      v8 = BWIsStillImageSampleBuffer(a3, &time);
      if (v8)
      {
        v12 = v4;
        value_low = LOBYTE(time.duration.value);
        v14 = *(v12 + 432 + (v312 << 9) + 4);
        v15 = [*(v12 + 136) providesPreBracketedEV0];
        if (v14 & 1) == 0 || (value_low & (v15 ^ 1))
        {
          if ((v303 & 2) != 0)
          {
            [BWMultiStreamCameraSourceNode _preserveMotionDataForSoonToBeDroppedSampleBuffer:v310];
          }

          return;
        }

        v4 = v310;
        a3 = sbuf;
        v6 = *(v310 + 248);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  HIDWORD(v303) = DWORD2(v309) - 9;
  v16 = DWORD2(v309) == 6 || v8;
  v17 = v16 ^ 1;
  if ((DWORD2(v309) - 17) >= 0xFFFFFFF8)
  {
    v17 = 0;
  }

  if (DWORD2(v309) == 7)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if ((v16 & 1) == 0 && HIDWORD(v303) >= 8 && DWORD2(v309) != 7)
  {
    if ([*(v4 + 360) discardsUnstableSphereVideoFrames])
    {
      v36 = CMGetAttachment(a3, v11, 0);
      if (mscsn_sphereIsUnstableOrInActiveModeBasedOnMetadata(v36))
      {
        if ((v303 & 2) != 0)
        {
          multiStreamCameraSourceNode_outputSampleBuffer_cold_1();
        }

        return;
      }
    }
  }

  LODWORD(cf) = v18;
  *(&cf + 1) = __PAIR64__(v7, v16);
  DWORD1(v309) = v8;
  v313 = v6;
  if (v7 == 1 && (*(v308 + 8) & 1) == 0 && (*(v310 + 12144) & 1) == 0)
  {
    *(v308 + 8) = 1;
    [(BWMultiStreamCameraSourceNode *)v310 _createAndStartFrameCounterForOutputIndexIfNecessary:?];
    v343 = 0u;
    v344 = 0u;
    v341 = 0u;
    v342 = 0u;
    v180 = [(BWMultiStreamCameraSourceNode *)v310 _nodeOutputsMadeLiveByStreamOutputIndex:?];
    v181 = [v180 countByEnumeratingWithState:&v341 objects:v340 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v342;
      do
      {
        for (i = 0; i != v182; ++i)
        {
          if (*v342 != v183)
          {
            objc_enumerationMutation(v180);
          }

          v185 = *(*(&v341 + 1) + 8 * i);
          if (v185 == v6)
          {
            goto LABEL_267;
          }

          v186 = (v310 + 448);
          v187 = 22;
          while (*(v186 - 7) != 1 || *v186 != v185)
          {
            v186 += 64;
            if (!--v187)
            {
              goto LABEL_267;
            }
          }

          v188 = v186[2];
          if (!v188)
          {
LABEL_267:
            if (![*(*(&v341 + 1) + 8 * i) liveFormat])
            {
              [v185 makeConfiguredFormatLive];
            }
          }

          else
          {
            v339[0] = MEMORY[0x1E69E9820];
            v339[1] = 3221225472;
            v339[2] = __multiStreamCameraSourceNode_outputSampleBuffer_block_invoke;
            v339[3] = &unk_1E798F870;
            v339[4] = v185;
            dispatch_async(v188, v339);
          }
        }

        v182 = [v180 countByEnumeratingWithState:&v341 objects:v340 count:16];
      }

      while (v182);
    }
  }

  v19 = v310;
  v20 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  *(&buffer + 1) = v11;
  if ([objc_msgSend(v310 configuration])
  {
    v21 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    os_unfair_lock_lock((v310 + 12224));
    if (*(v310 + 12228) != 1)
    {
      if (*(v310 + 12230))
      {
LABEL_90:
        os_unfair_lock_unlock((v19 + v21[670]));
        goto LABEL_91;
      }

      v35 = *(v310 + 128);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      [v35 liveReconfigureForOutputAspectRatioFirstBufferReceived:&time forConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(v310, "requestedConfigurationID"))}];
LABEL_89:
      *(v19 + 12230) = 1;
      goto LABEL_90;
    }

    v22 = *(v310 + 12232);
    LODWORD(FrameworkRadarComponent) = v22;
    if (![*(v310 + 360) adaptiveSensorCropForDynamicAspectRatioEnabled])
    {
      goto LABEL_44;
    }

    BWPixelBufferDimensionsFromSampleBuffer(sbuf);
    FigCaptureMetadataUtilitiesGetValidBufferRect(v307);
    v24 = v23;
    v26 = v25;
    AspectRatioFractionalDimensionsForAspectRatio = FigCaptureGetAspectRatioFractionalDimensionsForAspectRatio(v22);
    v28 = __ROR8__(AspectRatioFractionalDimensionsForAspectRatio, 32);
    v29 = HIDWORD(AspectRatioFractionalDimensionsForAspectRatio);
    if (AspectRatioFractionalDimensionsForAspectRatio < SHIDWORD(AspectRatioFractionalDimensionsForAspectRatio))
    {
      LODWORD(v29) = HIDWORD(v28);
    }

    v30 = v24;
    if (AspectRatioFractionalDimensionsForAspectRatio < SHIDWORD(AspectRatioFractionalDimensionsForAspectRatio))
    {
      LODWORD(AspectRatioFractionalDimensionsForAspectRatio) = v28;
    }

    v31 = v26;
    v32 = __ROR8__(v30 | (v31 << 32), 32);
    if (v30 >= v31)
    {
      v33 = v24;
    }

    else
    {
      LODWORD(v31) = HIDWORD(v32);
      v33 = v32;
    }

    if (!FigCaptureVideoAspectRatiosAreEqual(AspectRatioFractionalDimensionsForAspectRatio | (v29 << 32), v33 | (v31 << 32), 0.2))
    {
      v34 = 0;
      goto LABEL_55;
    }

    if (*(v310 + 12229))
    {
LABEL_44:
      v34 = 1;
LABEL_55:
      if (dword_1ED8445B0)
      {
        LODWORD(time2.x) = 0;
        LOBYTE(v347) = 0;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v38 = LODWORD(time2.x);
        if (os_log_type_enabled(v37, v347))
        {
          v40 = v38;
        }

        else
        {
          v40 = v38 & 0xFFFFFFFE;
        }

        if (v40)
        {
          *(&v298 + 1) = BWPortTypeToDisplayString(v300, v39);
          v41 = [v313 name];
          v42 = BWAspectRatioToShortString(FrameworkRadarComponent);
          if (v34)
          {
            *&v43 = COERCE_DOUBLE(@"DONE");
          }

          else
          {
            *&v43 = COERCE_DOUBLE(@"PENDING");
          }

          if (*(v310 + 12229))
          {
            v44 = @"READY";
          }

          else
          {
            v44 = @"NOT READY";
          }

          CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
          Seconds = CMTimeGetSeconds(&time.duration);
          LODWORD(time1.value) = 136316674;
          *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
          LOWORD(time1.flags) = 2114;
          *(&time1.flags + 2) = *(&v298 + 1);
          HIWORD(time1.epoch) = 2114;
          v330 = v41;
          v11 = *(&buffer + 1);
          v331 = 2114;
          v332 = v42;
          v20 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          v333 = 2114;
          v334 = *&v43;
          v19 = v310;
          v335 = 2114;
          v336 = v44;
          v21 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          v337 = 2048;
          v338 = Seconds;
          LODWORD(target) = 72;
          p_time1 = &time1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v34 || *(v19 + 12229) != 1)
      {
        goto LABEL_90;
      }

      [*(v19 + v20[620]) setAspectRatio:FrameworkRadarComponent];
      [*(v19 + 360) setVisOverscan:{*(v19 + 12240), *(v19 + 12248)}];
      v46 = *(v19 + v20[620]);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      [v46 liveReconfigureForOutputAspectRatioFirstBufferReceived:&time forConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(v19, "requestedConfigurationID"))}];
      v47 = 0x1E695D000uLL;
      v48 = [MEMORY[0x1E695DFA8] set];
      v49 = 0;
      v50 = v313;
      do
      {
        v51 = v310 + 432 + (v49 << 9);
        if (*(v51 + 9) == 1 && *(v51 + 8) == 1)
        {
          v52 = [*(v47 + 4008) setWithArray:{-[BWMultiStreamCameraSourceNode _nodeOutputsMadeLiveByStreamOutputIndex:](v310, v49)}];
          [v52 minusSet:v48];
          FrameworkRadarComponent = v48;
          [v48 unionSet:v52];
          v327 = 0u;
          v328 = 0u;
          v325 = 0u;
          v326 = 0u;
          v53 = [v52 countByEnumeratingWithState:&v325 objects:&v319 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v326;
            do
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v326 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = *(*(&v325 + 1) + 8 * j);
                if (v57 == v50)
                {
                  if ([*(*(&v325 + 1) + 8 * j) liveFormat])
                  {
                    v59 = MEMORY[0x1E696AD98];
                    v60 = [v57 liveConfigurationID];
                    v61 = v59;
                    v50 = v313;
                    [v57 markEndOfLiveOutputForConfigurationID:{objc_msgSend(v61, "numberWithLongLong:", v60)}];
                  }

                  [v57 makeConfiguredFormatLive];
                }

                else
                {
                  v58 = *(v51 + 32);
                  block = MEMORY[0x1E69E9820];
                  v315 = 3221225472;
                  v316 = __multiStreamCameraSourceNode_outputSampleBuffer_block_invoke_1515;
                  v317 = &unk_1E798F870;
                  v318 = v57;
                  dispatch_async(v58, &block);
                }
              }

              v54 = [v52 countByEnumeratingWithState:&v325 objects:&v319 count:16];
            }

            while (v54);
          }

          v21 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          v47 = 0x1E695D000;
          v48 = FrameworkRadarComponent;
          if ([*(v310 + 360) adaptiveSensorCropForDynamicAspectRatioEnabled])
          {
            multiStreamCameraSourceNode_outputSampleBuffer_cold_2();
          }
        }

        ++v49;
      }

      while (v49 != 22);
      v19 = v310;
      *(v310 + 12228) = 0;
      *(v310 + 12229) = 0;
      v11 = *(&buffer + 1);
      goto LABEL_89;
    }

    os_unfair_lock_unlock((v310 + 12224));
    LODWORD(time2.x) = 0;
    LOBYTE(v347) = 0;
    v285 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v286 = LODWORD(time2.x);
    if (os_log_type_enabled(v285, v347))
    {
      v288 = v286;
    }

    else
    {
      v288 = v286 & 0xFFFFFFFE;
    }

    if (v288)
    {
      v289 = BWPortTypeToDisplayString(v300, v287);
      v290 = [v313 name];
      v291 = BWAspectRatioToShortString(v22);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      v292 = CMTimeGetSeconds(&time.duration);
      LODWORD(time1.value) = 136316162;
      *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
      LOWORD(time1.flags) = 2114;
      *(&time1.flags + 2) = v289;
      HIWORD(time1.epoch) = 2114;
      v330 = v290;
      v331 = 2114;
      v332 = v291;
      v333 = 2048;
      v334 = v292;
      _os_log_send_and_compose_impl();
    }

LABEL_464:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

LABEL_91:
  v62 = MEMORY[0x1E695F058];
  v63 = CMGetAttachment(sbuf, v11, 0);
  v64 = v63;
  if (SDWORD2(v309) <= 4)
  {
    if (DWORD2(v309) == 1)
    {
      v65 = off_1E798B580;
      v74 = [v63 objectForKeyedSubscript:*off_1E798B630];
      v67 = *off_1E798B7A0;
      [v64 setObject:v74 forKeyedSubscript:*off_1E798B7A0];
      v71 = *off_1E798B620;
      goto LABEL_104;
    }

    if (DWORD2(v309) == 2)
    {
      v65 = off_1E798B580;
      v70 = [v63 objectForKeyedSubscript:*off_1E798B420];
      v67 = *off_1E798B7A0;
      [v64 setObject:v70 forKeyedSubscript:*off_1E798B7A0];
      v71 = *off_1E798B410;
LABEL_104:
      v68 = [v64 objectForKeyedSubscript:{v71, p_time1}];
      goto LABEL_105;
    }
  }

  else
  {
    switch(DWORD2(v309))
    {
      case 5:
        v65 = off_1E798B580;
        v72 = [v63 objectForKeyedSubscript:*off_1E798B6D8];
        v67 = *off_1E798B7A0;
        [v64 setObject:v72 forKeyedSubscript:*off_1E798B7A0];
        v69 = off_1E798B670;
LABEL_101:
        v71 = *v69;
        goto LABEL_104;
      case 6:
        v65 = off_1E798B580;
        v67 = *off_1E798B7A0;
        v68 = 0;
        v73 = *off_1E798B7A0;
LABEL_106:
        [v63 setObject:v68 forKeyedSubscript:{v73, p_time1}];
        goto LABEL_107;
      case 0x11:
        v65 = off_1E798B580;
        v66 = [v63 objectForKeyedSubscript:*off_1E798B580];
        v67 = *off_1E798B7A0;
        [v64 setObject:v66 forKeyedSubscript:*off_1E798B7A0];
        v68 = [v64 objectForKeyedSubscript:*off_1E798B570];
        if (v68)
        {
LABEL_105:
          v73 = *off_1E798B668;
          v63 = v64;
          goto LABEL_106;
        }

        v69 = off_1E798B578;
        goto LABEL_101;
    }
  }

  v65 = off_1E798B580;
  v67 = *off_1E798B7A0;
LABEL_107:
  [v64 setObject:0 forKeyedSubscript:{*off_1E798B630, p_time1}];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B420];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B620];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B410];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B6D8];
  [v64 setObject:0 forKeyedSubscript:*v65];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B570];
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v76 = v62[1];
  time2 = *v62;
  time2_16 = v76;
  v78 = v313;
  v79 = v308;
  v80 = DWORD1(v309);
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(ImageBuffer);
    v83 = time2;
    v84 = Width - time2.x;
    y = time2_16.y;
    x = time2_16.x;
    if (Width - time2.x >= time2_16.x)
    {
      v84 = time2_16.x;
    }

    if (v84 >= 0.0)
    {
      v87 = v84;
    }

    else
    {
      v87 = 0.0;
    }

    v88 = Height - time2.y;
    if (Height - time2.y >= time2_16.y)
    {
      v88 = time2_16.y;
    }

    if (v88 >= 0.0)
    {
      v89 = v88;
    }

    else
    {
      v89 = 0.0;
    }

    v91 = time2.y;
    v90 = time2.x;
    v353.origin = time2;
    v353.size.width = v87;
    v353.size.height = v89;
    if (!CGRectEqualToRect(*(&x - 2), v353))
    {
      if (FigCapturePlatformIdentifier() >= 10)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        v347 = 0;
        v346 = OS_LOG_TYPE_DEFAULT;
        v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v93 = v347;
        if (os_log_type_enabled(v92, v346))
        {
          v94 = v93;
        }

        else
        {
          v94 = v93 & 0xFFFFFFFE;
        }

        v95 = *off_1E798B540;
        if (v94)
        {
          v96 = [v64 objectForKeyedSubscript:*off_1E798B540];
          *(&v298 + 1) = BWPortTypeToDisplayString(v96, v97);
          v98 = DWORD2(v309);
          *&v298 = mscsn_streamOutputIDForOutputIndex(SDWORD2(v309));
          v99 = BWStringFromCGRect(time2.x, time2.y, time2_16.x, time2_16.y);
          v100 = v95;
          *&v101 = COERCE_DOUBLE(BWStringFromCGPoint(Width, Height));
          v102 = BWStringFromCGRect(v83.x, v83.y, v87, v89);
          LODWORD(time1.value) = 136316418;
          *(&time1.value + 4) = "mscsn_updateValidBufferRect";
          LOWORD(time1.flags) = 2112;
          *(&time1.flags + 2) = *(&v298 + 1);
          HIWORD(time1.epoch) = 2112;
          v330 = v298;
          v331 = 2112;
          v332 = v99;
          v333 = 2112;
          v334 = *&v101;
          v95 = v100;
          v335 = 2112;
          v336 = v102;
          _os_log_send_and_compose_impl();
        }

        else
        {
          v98 = DWORD2(v309);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v103 = [v64 objectForKeyedSubscript:v95];
        v105 = BWPortTypeToDisplayString(v103, v104);
        v106 = mscsn_streamOutputIDForOutputIndex(v98);
        v107 = BWStringFromCGRect(time2.x, time2.y, time2_16.x, time2_16.y);
        v108 = BWStringFromCGPoint(Width, Height);
        v109 = BWStringFromCGRect(v83.x, v83.y, v87, v89);
        LODWORD(time.duration.value) = 138413314;
        *(&time.duration.value + 4) = v105;
        LOWORD(time.duration.flags) = 2112;
        *(&time.duration.flags + 2) = v106;
        HIWORD(time.duration.epoch) = 2112;
        time.presentationTimeStamp.value = v107;
        LOWORD(time.presentationTimeStamp.timescale) = 2112;
        *(&time.presentationTimeStamp.timescale + 2) = v108;
        WORD1(time.presentationTimeStamp.epoch) = 2112;
        *(&time.presentationTimeStamp.epoch + 4) = v109;
        v110 = _os_log_send_and_compose_impl();
        target = 0;
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v110, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWMultiStreamCameraSourceNode.m", 12576, @"LastShownDate:BWMultiStreamCameraSourceNode.m:12576", @"LastShownBuild:BWMultiStreamCameraSourceNode.m:12576", 0);
        free(v110);
        v19 = v310;
        v78 = v313;
        v79 = v308;
        v80 = DWORD1(v309);
      }

      time2 = v83;
      time2_16.x = v87;
      time2_16.y = v89;
      v351.origin = v83;
      v351.size.width = v87;
      v351.size.height = v89;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v351);
      [v64 setObject:DictionaryRepresentation forKeyedSubscript:v67];
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }

    v77 = time2_16.x;
    if (time2_16.x == Width)
    {
      v77 = time2_16.y;
      if (time2_16.y == Height)
      {
        [v64 setObject:0 forKeyedSubscript:{v67, time2_16.y}];
      }
    }
  }

  if (DWORD2(v309) == 6 || v80 | cf)
  {
    v117 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (v80)
    {
      [*(v19 + 136) activeStillImageScaleFactor];
      [*(v19 + 136) deliverSushiRaw];
    }

    v116 = sbuf;
    [BWMultiStreamCameraSourceNode _updateZoomForOutputIndex:sampleBuffer:additionalScaleFactor:deliverSushiRaw:];
    v112 = v77;
    v113 = v174;
    v114 = v175;
    v115 = v176;
  }

  else
  {
    v112 = v62->x;
    v113 = v62->y;
    v114 = v62[1].x;
    v115 = v62[1].y;
    v116 = sbuf;
    v117 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  }

  [objc_msgSend(*(v19 + v118[620]) zoomCommandHandler];
  v120 = v119;
  [*(v19 + v117[673]) uiBaseZoomFactor];
  *&v122 = v120 * v121;
  CMSetAttachment(v116, @"UIZoomFactor", [MEMORY[0x1E696AD98] numberWithFloat:v122], 1u);
  if ((v303 & 2) != 0)
  {
    [*(v19 + 11992) addFacesFromSampleBuffer:v116];
    [*(v19 + 12000) addObjectsFromSampleBuffer:v116];
    BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(v116);
    BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(v116);
    if (([*(v19 + v118[620]) smartFramingEnabled] & 1) != 0 || objc_msgSend(*(v19 + v118[620]), "cinematicFramingEnabled") && objc_msgSend(*(v19 + v118[620]), "smartCropSupported"))
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], [(CMTime *)v307 objectForKeyedSubscript:*off_1E798B220], 0);
      CMSetAttachment(v116, *off_1E798A5A8, DeepCopy, 1u);
    }

    v124 = [(CMTime *)v307 objectForKeyedSubscript:*off_1E798B710];
    v125 = [v124 BOOLValue];
    if (!v124 || v125)
    {
      [*(v19 + 12008) filterDetectedFacesInSampleBuffer:v116];
    }

    if ([*(v19 + v117[673]) detectedObjectsOutputEnabled] && objc_msgSend(objc_msgSend(*(v19 + v117[673]), "enabledDetectedObjectTypes"), "count") && v78 != *(v19 + 312))
    {
      *&cf = BWDetectedObjectsCreateFilteredDetectedObjectsOnlySampleBufferFromSampleBufferUsingSet(v116, [*(v19 + v117[673]) enabledDetectedObjectTypes], v112, v113, v114, v115);
      [(BWMultiStreamCameraSourceNode *)v19 _addCaptureStreamAttachmentsToSampleBuffer:?];
      goto LABEL_154;
    }
  }

  else
  {
    if (v304)
    {
      BWDetectedFacesRemoveFacesFromSampleBuffer(v116);
    }

    else if (HIDWORD(cf) == 1)
    {
      BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(v116);
      BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(v116);
    }

    v304 = 0;
  }

  *&cf = 0;
LABEL_154:
  if (v80)
  {
    [*(v19 + 11992) transferFacesToSampleBuffer:v116 transformToBufferSpace:1 sourceCropRect:{*(v79 + 136), *(v79 + 144), *(v79 + 152), *(v79 + 160)}];
    [*(v19 + 12000) transferObjectsToSampleBuffer:v116 transformToBufferSpace:1 sourceCropRect:{*(v79 + 136), *(v79 + 144), *(v79 + 152), *(v79 + 160)}];
    [*(v19 + 12008) filterDetectedFacesInSampleBuffer:v116];
    v304 = 0;
    v126 = HIDWORD(v303) < 8;
    goto LABEL_168;
  }

  if (HIDWORD(v303) < 8)
  {
    v126 = 1;
    goto LABEL_168;
  }

  if ((v304 & 1) == 0 && ![(CMTime *)v307 objectForKeyedSubscript:*off_1E798B218])
  {
    v127 = *MEMORY[0x1E695F050];
    v128 = *(MEMORY[0x1E695F050] + 8);
    v129 = *(MEMORY[0x1E695F050] + 16);
    v130 = *(MEMORY[0x1E695F050] + 24);
    [*(v19 + 11992) transferFacesToSampleBuffer:v116 transformToBufferSpace:0 sourceCropRect:{*MEMORY[0x1E695F050], v128, v129, v130}];
    if ([(CMTime *)v307 objectForKeyedSubscript:*off_1E798B220])
    {
      goto LABEL_166;
    }

    goto LABEL_162;
  }

  if (![(CMTime *)v307 objectForKeyedSubscript:*off_1E798B220])
  {
    v127 = *MEMORY[0x1E695F050];
    v128 = *(MEMORY[0x1E695F050] + 8);
    v129 = *(MEMORY[0x1E695F050] + 16);
    v130 = *(MEMORY[0x1E695F050] + 24);
LABEL_162:
    [*(v19 + 12000) transferObjectsToSampleBuffer:v116 transformToBufferSpace:0 sourceCropRect:{v127, v128, v129, v130}];
LABEL_166:
    [*(v19 + 12008) filterDetectedFacesInSampleBuffer:v116];
  }

  BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(v116);
  BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(v116);
  v126 = 0;
LABEL_168:
  if ([*(v19 + v117[673]) cameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled] && v78 == *(v19 + 240) || objc_msgSend(*(v19 + v117[673]), "cameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled") && v78 == *(v19 + 232))
  {
    [(BWMultiStreamCameraSourceNode *)v19 _attachCameraIntrinsicMatrixToSampleBuffer:v116 scaledToVideoBuffer:1uLL addToMetadataDictInTotalSensorCoords:v131, v132, v133, v134, v295, target, v298, FrameworkRadarComponent, v300, SHIDWORD(v300), buffer, cf, v303, v304, v306, v307, v308, v309, v310, sbuf, v313, block, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324];
  }

  if (v78 == *(v19 + 256))
  {
    v135 = [*(v19 + v117[673]) originalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled];
  }

  else
  {
    v135 = 0;
  }

  if ((v78 != *(v19 + 232) || ([*(v19 + v117[673]) originalCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled] & 1) == 0) && (v78 != *(v19 + 240) || (objc_msgSend(*(v19 + v117[673]), "originalCameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled") & 1) == 0) && (v78 != *(v19 + 248) || (objc_msgSend(*(v19 + v117[673]), "originalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled") & 1) == 0) && (v78 != *(v19 + 256) || (objc_msgSend(*(v19 + v117[673]), "originalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled") & 1) == 0))
  {
    if (v78 == *(v19 + 264))
    {
      if ((([*(v19 + v117[673]) originalCameraIntrinsicMatrixDeliveryOnDepthOutputEnabled] | v135) & 1) == 0)
      {
        goto LABEL_185;
      }
    }

    else if (!v135)
    {
      goto LABEL_185;
    }
  }

  *&v350 = 0;
  *(&v350 + 1) = v135;
  [(BWMultiStreamCameraSourceNode *)v19 _attachCameraIntrinsicMatrixToSampleBuffer:v116 scaledToVideoBuffer:v350 addToMetadataDictInTotalSensorCoords:v131, v132, v133, v134, v295, target, v298, FrameworkRadarComponent, v300, SHIDWORD(v300), buffer, cf, v303, v304, v306, v307, v308, v309, v310, sbuf, v313, block, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324];
LABEL_185:
  if ((BYTE8(cf) & 1) == 0 && HIDWORD(v303) >= 8 && DWORD2(v309) != 7)
  {
    v142 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F30], 0);
    v143 = v142 ? CFAutorelease(v142) : 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((objc_msgSend_isEqualToString_(v143) & 1) != 0 || objc_msgSend_isEqualToString_(v143)))
    {
      v177 = [(CMTime *)v307 objectForKeyedSubscript:*off_1E798B708];
      if (v177)
      {
        v178 = [v177 intValue];
        if (v178 != *(v79 + 504) + 1)
        {
          *(v79 + 500) = -1;
        }

        *(v79 + 504) = v178;
      }

      v179 = FigCaptureSceneIlluminationValueFromLuxLevel([(CMTime *)v307 objectForKeyedSubscript:*off_1E798B4B8], *(v79 + 500));
      v116 = sbuf;
      if (v179 != -1)
      {
        *(v79 + 500) = v179;
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F18], [MEMORY[0x1E696AD98] numberWithUnsignedInt:v179], kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  if (v80)
  {
    if (v78 != *(v19 + 248) && v78 != *(v19 + 256))
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_3();
    }

    v136 = [*(v19 + 136) activeStillImageCaptureType];
    v116 = sbuf;
    if ([*(v19 + 136) sourceNodeWillEmitStillImageSampleBuffer:sbuf])
    {
      goto LABEL_463;
    }

    goto LABEL_202;
  }

  if (DWORD2(v309) == 6)
  {
    v137 = [*(v19 + 136) sourceNodeWillEmitDepthSampleBuffer:v116];
    goto LABEL_201;
  }

  if (DWORD2(v309) == 7)
  {
    v137 = [*(v19 + 136) sourceNodeWillEmitPointCloudSampleBuffer:v116];
  }

  else
  {
    if (v126)
    {
      [*(v19 + 136) sourceNodeWillEmitDetectedFacesSampleBuffer:v116];
LABEL_241:
      v136 = 0;
      goto LABEL_202;
    }

    if (HIDWORD(cf) != 1)
    {
      goto LABEL_241;
    }

    v137 = [*(v19 + 136) sourceNodeWillEmitVideoSampleBuffer:v116 drivesCameraControls:(v303 >> 1) & 1 deliversStills:*(v79 + 4) & 1];
  }

LABEL_201:
  v136 = 0;
  if (v137)
  {
LABEL_463:
    multiStreamCameraSourceNode_outputSampleBuffer_cold_4();
    goto LABEL_203;
  }

LABEL_202:
  if (CMGetAttachment(v116, @"BWBurnAfterReading", 0) || (*(v19 + 12144) & 1) != 0)
  {
LABEL_203:
    v138 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_447;
  }

  v139 = sbuf;
  if (v304)
  {
    BWDetectedFacesRemoveFacesFromSampleBuffer(sbuf);
  }

  v140 = DWORD1(v309);
  if (([*(v19 + v117[673]) geometricDistortionCorrectionOnVideoCaptureOutputEnabled] & 1) != 0 || (objc_msgSend(*(v19 + v117[673]), "geometricDistortionCorrectionOnPreviewOutputEnabled") & 1) != 0 || objc_msgSend(*(v19 + v117[673]), "geometricDistortionCorrectionOnStillImageOutputEnabled"))
  {
    [(CMTime *)v307 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A690];
    if (DWORD1(v309))
    {
      v141 = BWStillImageCaptureFrameFlagsForSampleBuffer(sbuf);
      if ([*(v19 + v117[673]) geometricDistortionCorrectionOnStillImageOutputEnabled] && (v141 & 0x4000000000000000) == 0 && (v141 & 0x9000000000000000) != 0x8000000000000000)
      {
LABEL_215:
        [(CMTime *)v307 setObject:&unk_1F2245F58 forKeyedSubscript:*off_1E798A698];
      }
    }

    else if (HIDWORD(cf) == 1)
    {
      if (v78 == *(v19 + 240) && ([*(v19 + v117[673]) geometricDistortionCorrectionOnVideoCaptureOutputEnabled] & 1) != 0 || v78 == *(v19 + 232) && objc_msgSend(*(v19 + v117[673]), "geometricDistortionCorrectionOnPreviewOutputEnabled"))
      {
        goto LABEL_215;
      }
    }

    else
    {
      ++multiStreamCameraSourceNode_outputSampleBuffer_errorLogCounter;
    }

    if ((DWORD2(v309) - 3) <= 2)
    {
      if (*(v19 + 12170) == 1)
      {
        BWPixelBufferDimensionsFromSampleBuffer(sbuf);
        [objc_msgSend(*(v19 + 128) "cameraInfoByPortType")];
        BWAddMinimumValidBufferRectForGDCIfNeededToSampleBuffer();
        v144 = *(MEMORY[0x1E695F050] + 16);
        time2 = *MEMORY[0x1E695F050];
        time2_16 = v144;
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v307);
          v147 = v146;
          v149 = v148;
          v151 = v150;
          v152 = psn_pixelBufferDimensions(buffer);
          if (dword_1ED8445B0)
          {
            v153 = v152;
            v347 = 0;
            v346 = OS_LOG_TYPE_DEFAULT;
            v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v155 = v347;
            if (os_log_type_enabled(v154, v346))
            {
              v156 = v155;
            }

            else
            {
              v156 = v155 & 0xFFFFFFFE;
            }

            if (v156)
            {
              v305 = BWStringFromCGRect(time2.x, time2.y, time2_16.x, time2_16.y);
              v157 = BWStringFromCGRect(FinalCropRect, v147, v149, v151);
              v19 = v310;
              FigCaptureMetadataUtilitiesDenormalizeCropRect(FinalCropRect, v147, v149, v151, v153, SHIDWORD(v153));
              v162 = BWStringFromCGRect(v158, v159, v160, v161);
              LODWORD(time1.value) = 136315906;
              *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
              LOWORD(time1.flags) = 2114;
              *(&time1.flags + 2) = v305;
              HIWORD(time1.epoch) = 2114;
              v330 = v157;
              v331 = 2114;
              v332 = v162;
              LODWORD(target) = 42;
              v295 = &time1;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v140 = DWORD1(v309);
          }
        }

        v78 = v313;
      }

      else
      {
        psn_pixelBufferDimensions(buffer);
        ValidBufferRect = FigCaptureMetadataUtilitiesGetValidBufferRect(v307);
        v165 = v164;
        v167 = v166;
        v169 = v168;
        if (dword_1ED8445B0)
        {
          LODWORD(time2.x) = 0;
          LOBYTE(v347) = 0;
          v170 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v171 = LODWORD(time2.x);
          if (os_log_type_enabled(v170, v347))
          {
            v172 = v171;
          }

          else
          {
            v172 = v171 & 0xFFFFFFFE;
          }

          if (v172)
          {
            v173 = BWStringFromCGRect(ValidBufferRect, v165, v167, v169);
            LODWORD(time1.value) = 136315394;
            *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
            LOWORD(time1.flags) = 2114;
            *(&time1.flags + 2) = v173;
            LODWORD(target) = 22;
            v295 = &time1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v19 = v310;
          v78 = v313;
          v140 = DWORD1(v309);
        }

        v352.origin.x = ValidBufferRect;
        v352.origin.y = v165;
        v352.size.width = v167;
        v352.size.height = v169;
        [(CMTime *)v307 setObject:CGRectCreateDictionaryRepresentation(v352) forKeyedSubscript:*off_1E798A7A0];
      }

      v139 = sbuf;
    }
  }

  if ((v140 & [*(v19 + v117[673]) reflectsStillsOnStreamingOutputs]) == 1 && HIDWORD(cf) != 1)
  {
    v189 = [*(v19 + 136) synchronizedStreamsEnabled];
    v190 = [*(v19 + v117[673]) discardsUnstableSphereVideoFrames];
    v191 = CMGetAttachment(v139, *(&buffer + 1), 0);
    if (v191)
    {
      if (v136 > 0xD)
      {
        goto LABEL_293;
      }

      if (((1 << v136) & 0x3C7C) != 0)
      {
        v192 = v191;
        if ((!v190 || (mscsn_sphereIsUnstableOrInActiveModeBasedOnMetadata(v191) & 1) == 0) && (!v189 || [objc_msgSend(v192 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}]))
        {
          v193 = CMSampleBufferGetImageBuffer(v139);
          PixelFormatType = CVPixelBufferGetPixelFormatType(v193);
          if ((FigCapturePixelFormatIsVersatileRaw(PixelFormatType) & 1) == 0 && ![objc_msgSend(v192 objectForKeyedSubscript:{*off_1E798B788), "intValue"}])
          {
            if (((1 << v136) & 0x3C48) != 0)
            {
              v195 = [objc_msgSend(v192 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
              goto LABEL_290;
            }

            if ((v136 & 0xFFFFFFFE) == 4)
            {
              if ([objc_msgSend(v192 objectForKeyedSubscript:{*off_1E798A5B8), "intValue"}] != 1)
              {
                v277 = [objc_msgSend(v192 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
                v195 = [objc_msgSend(v192 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
                if (v277)
                {
                  goto LABEL_291;
                }

LABEL_290:
                if (v195)
                {
LABEL_291:
                  [BWMultiStreamCameraSourceNode _prependPreservedMotionDataToSampleBuffer:v19];
                  [(BWMultiStreamCameraSourceNode *)v19 _reflectStillSampleBufferOnStreamingOutputs:v139 captureType:v136];
                  goto LABEL_309;
                }
              }
            }

            else if (v136 != 2 || ([objc_msgSend(v192 objectForKeyedSubscript:{*off_1E798B5C8), "BOOLValue"}] & 1) == 0)
            {
              goto LABEL_291;
            }
          }
        }

LABEL_293:
        memset(&time, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&time.duration, v139);
        v196 = 0;
        v197 = (v19 + 436);
        while (v197[5] != 1 || (*v197 & 2) == 0)
        {
          ++v196;
          v197 += 512;
          if (v196 == 22)
          {
            LODWORD(v196) = 0;
            break;
          }
        }

        v198 = v19 + 432 + (v196 << 9);
        v199 = *(v198 + 68);
        if ((v199 & 0x1D) == 1)
        {
          v200 = *(v198 + 72);
          time1 = time.duration;
          time2.x = *(v198 + 56);
          LODWORD(time2.y) = *(v198 + 64);
          HIDWORD(time2.y) = v199;
          time2_16.x = v200;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            [BWMultiStreamCameraSourceNode _preserveMotionDataForSoonToBeDroppedSampleBuffer:v19];
          }
        }

        goto LABEL_301;
      }
    }

    if (v136 == 1)
    {
      goto LABEL_309;
    }

    goto LABEL_293;
  }

LABEL_301:
  v201 = HIDWORD(cf) != 1 || v126;
  if ((v201 & 1) == 0)
  {
    v202 = [-[CMTime objectForKeyedSubscript:](v307 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
    v203 = [-[CMTime objectForKeyedSubscript:](v307 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
    if ((v202 | (v203 << 32)) == [*(v19 + 128) ultraHighResSensorRawPoolDimensions] && (objc_msgSend(-[CMTime objectForKeyedSubscript:](v307, "objectForKeyedSubscript:", *off_1E798B1B8), "intValue") > 0 || objc_msgSend(-[CMTime objectForKeyedSubscript:](v307, "objectForKeyedSubscript:", *off_1E798B558), "BOOLValue")))
    {
      v204 = MEMORY[0x1E695E118];
      CMSetAttachment(v139, @"IsHarvestedStillFrame", MEMORY[0x1E695E118], 1u);
      CMSetAttachment(v139, @"IsHarvestedUltraHighResolutionStillFrame", v204, 1u);
    }
  }

LABEL_309:
  if ((v303 & 2) != 0)
  {
    [BWMultiStreamCameraSourceNode _prependPreservedMotionDataToSampleBuffer:v19];
  }

  if (!v126)
  {
    [(BWMultiStreamCameraSourceNode *)v19 _addMetadataUsedByVideoEncoderToPixelBufferForSampleBuffer:v139 nodeOutput:v78];
    [(BWMultiStreamCameraSourceNode *)v19 _addDolbyVisionMetadataToPreviewPixelBufferForSampleBuffer:v139 nodeOutput:v78];
  }

  v205 = buffer;
  if ([*(v19 + v117[673]) depthType] - 1 > 1)
  {
    goto LABEL_351;
  }

  [*(v19 + 128) maxContinuousZoomFactorForDepthDataDelivery];
  v207 = v206;
  [objc_msgSend(*(v19 + 128) "zoomCommandHandler")];
  v210 = v208 > v207 && v207 > 0.0;
  if (DWORD2(v309) == 6)
  {
    if (v210)
    {
      goto LABEL_203;
    }

    v205 = buffer;
    if (!sbuf)
    {
      goto LABEL_332;
    }

    value = CFRetain(sbuf);
    if (!value)
    {
      goto LABEL_332;
    }

    goto LABEL_324;
  }

  if ((BYTE4(v309) & 1) == 0 && ![*(v19 + v117[673]) depthOutputEnabled] || (objc_msgSend(*(v19 + v117[673]), "discardsDepthDataForStillImages") & 1) == 0)
  {
    if (v210)
    {
      CMRemoveAttachment(sbuf, *off_1E798A328);
    }

    else
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_5();
      value = time.duration.value;
      if (time.duration.value)
      {
LABEL_324:
        if ([v19 hardwareDepthFilteringEnabled])
        {
          [CMGetAttachment(value *(&buffer + 1)];
        }

        CMSetAttachment(value, @"DepthPixelBufferType", *(v19 + 392), 1u);
        CFRelease(value);
      }
    }
  }

LABEL_332:
  if (*(v19 + 192) != 1)
  {
    goto LABEL_351;
  }

  v212 = [(CMTime *)v307 objectForKeyedSubscript:*off_1E798B708];
  v213 = [v212 intValue];
  v214 = [(CMTime *)v307 objectForKeyedSubscript:*off_1E798B3F8];
  if (v212)
  {
    v215 = v214;
    if ([v214 intValue] == 2)
    {
      v216 = *(v19 + 12064);
      v217 = v216 - v213 > 30 && v216 > v213;
      if (v216 < v213 || v217)
      {
        v218 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__infraredProjectorUptimeInUsForLowPowerSparse;
        if (DWORD1(v309))
        {
          v218 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__infraredProjectorUptimeInUsForHighPowerSparse;
        }

        *(v19 + *v218) += 2940;
      }
    }

    [-[CMTime objectForKeyedSubscript:](v307 objectForKeyedSubscript:{*off_1E798B6F0), "BOOLValue"}];
    [v215 intValue];
    *(v19 + 12064) = v213;
  }

  v219 = [CMGetAttachment(sbuf *off_1E798D4E0];
  if ((*(v19 + 12168) & 1) == 0 && v219 > 1)
  {
    v220 = 1;
    v221 = MEMORY[0x1E695E110];
LABEL_350:
    [*(v310 + 144) setPropertyIfSupported:*off_1E798C1A8 value:v221];
    *(v310 + 12168) = v220;
    v19 = v310;
    goto LABEL_351;
  }

  if (*(v19 + 12168) && v219 <= 1)
  {
    v220 = 0;
    v221 = MEMORY[0x1E695E118];
    goto LABEL_350;
  }

LABEL_351:
  if (DWORD1(v309))
  {
    if ([*(v19 + v117[673]) stillImageOutputSensorInterfaceRawAttachmentOptionRetainedBufferCount])
    {
      v222 = *off_1E798A448;
      v223 = CMGetAttachment(sbuf, *off_1E798A448, 0);
      v224 = [v223 objectForKeyedSubscript:*off_1E798A2D0];
      if (v224)
      {
        [(BWMultiStreamCameraSourceNode *)v19 _propagatePixelBufferAttachment:v224 sampleBuffer:sbuf attachedMediaKey:-233133328 removeAttachmentKey:v222 resetValidBufferRect:0, v225, v226, v296, target, v298, *(&v298 + 1), FrameworkRadarComponent, v300, buffer, *(&buffer + 1), cf, *(&cf + 1)];
      }
    }

    if ([*(v19 + v117[673]) stillImageOutputSashimiRawAttachmentOptionRetainedBufferCount])
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_6(v19, sbuf, v227, v228);
    }

    if ([*(v19 + v117[673]) stillImageOutputSushiRawAttachmentOptionSupportEnabled] && *(v19 + 11912) == 1)
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_7(v19, sbuf, v229, v230);
    }

    if ([*(v19 + v117[673]) stillImageOutputFocusPixelDataAttachmentOptionRetainedBufferCount])
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_8(v19, sbuf);
    }
  }

  if ([*(v19 + v117[673]) visionDataConfiguration])
  {
    v231 = BYTE4(v309);
  }

  else
  {
    v231 = 1;
  }

  if ((v231 & 1) == 0)
  {
    v232 = *off_1E798A530;
    v233 = CVBufferCopyAttachment(v205, *off_1E798A530, 0);
    if (v233)
    {
      v234 = CFAutorelease(v233);
      if (v234)
      {
        v235 = v234;
        if (([CMGetAttachment(sbuf @"FrameIsBlackened"] & 1) == 0)
        {
          time1.value = 0;
          v236 = *(MEMORY[0x1E6960CF0] + 48);
          *&time.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
          *&time.decodeTimeStamp.value = v236;
          time.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
          v237 = *(MEMORY[0x1E6960CF0] + 16);
          *&time.duration.value = *MEMORY[0x1E6960CF0];
          *&time.duration.epoch = v237;
          if ((*(v19 + 12136) || !CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], v235, (v19 + 12136))) && !CMSampleBufferGetSampleTimingInfo(sbuf, 0, &time))
          {
            CMSampleBufferCreateForImageBuffer(*MEMORY[0x1E695E480], v235, 1u, 0, 0, *(v19 + 12136), &time, &time1);
          }

          if (time1.value)
          {
            v238 = CMGetAttachment(sbuf, *MEMORY[0x1E6960470], 0);
            if (v238)
            {
              v239 = v238;
              [objc_msgSend(objc_msgSend(*(v19 + v117[673]) "visionDataConfiguration")];
              v241 = BWGetScaledCameraIntrinsicsMatrix(v239, 1.0 / v240);
              if (v241)
              {
                CMSetAttachment(time1.value, @"VisionDataCameraIntrinsicMatrix", v241, 1u);
              }
            }

            BWSampleBufferSetAttachedMedia(sbuf, 0x1F2192EF0, time1.value);
            CMSetAttachment(sbuf, *off_1E798D2C8, MEMORY[0x1E695E118], 1u);
            if (time1.value)
            {
              CFRelease(time1.value);
            }
          }
        }

        CVBufferRemoveAttachment(v205, v232);
      }
    }
  }

  v242 = *(v308 + 16);
  if (v242 == [v19 previewOutput] && (objc_msgSend(objc_msgSend(v19, "configuration"), "preLTMThumbnailOnPreviewOutputEnabled") & 1) != 0 || (v243 = *(v308 + 16), v243 == objc_msgSend(v19, "videoCaptureOutput")) && objc_msgSend(objc_msgSend(v19, "configuration"), "preLTMThumbnailOnVideoCaptureOutputEnabled"))
  {
    v244 = *off_1E798B000;
    v245 = CMGetAttachment(v205, *off_1E798B000, 0);
    if (v245)
    {
      v246 = v245;
      time1.value = 0;
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      v247 = BWSampleBufferCreateFromPixelBuffer(v246, &time, (v19 + 11960), &time1);
      if (v247)
      {
        multiStreamCameraSourceNode_outputSampleBuffer_cold_9(v247, &time1);
        goto LABEL_203;
      }

      Attachment = CMC_CVBufferGetAttachment(v246, *(&buffer + 1));
      if (Attachment)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Attachment);
        CMSetAttachment(time1.value, *(&buffer + 1), MutableCopy, 1u);
        CMSetAttachment(v246, *(&buffer + 1), MutableCopy, 1u);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      BWSampleBufferSetAttachedMedia(sbuf, @"PreLTMThumbnail", time1.value);
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      CVBufferRemoveAttachment(v205, v244);
    }
  }

  v250 = *(v308 + 16);
  if (v250 == [v19 previewOutput] && (objc_msgSend(objc_msgSend(v19, "configuration"), "ltmThumbnailOnPreviewOutputEnabled") & 1) != 0 || (v251 = *(v308 + 16), v251 == objc_msgSend(v19, "videoCaptureOutput")) && objc_msgSend(objc_msgSend(v19, "configuration"), "ltmThumbnailOnVideoCaptureOutputEnabled"))
  {
    v252 = *off_1E798AFE8;
    v253 = CMGetAttachment(v205, *off_1E798AFE8, 0);
    if (v253)
    {
      v254 = v253;
      time1.value = 0;
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      v255 = BWSampleBufferCreateFromPixelBuffer(v254, &time, (v19 + 11968), &time1);
      if (v255)
      {
        multiStreamCameraSourceNode_outputSampleBuffer_cold_10(v255, &time1);
        goto LABEL_203;
      }

      v256 = CMC_CVBufferGetAttachment(v254, *(&buffer + 1));
      if (v256)
      {
        v257 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v256);
        CMSetAttachment(time1.value, *(&buffer + 1), v257, 1u);
        CMSetAttachment(v254, *(&buffer + 1), v257, 1u);
        if (v257)
        {
          CFRelease(v257);
        }
      }

      BWSampleBufferSetAttachedMedia(sbuf, @"LTMThumbnail", time1.value);
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      CVBufferRemoveAttachment(v205, v252);
    }
  }

  v258 = *(v308 + 16);
  if (v258 == [v19 previewOutput] && (objc_msgSend(objc_msgSend(v19, "configuration"), "weightSegmentMapOnPreviewOutputEnabled") & 1) != 0 || (v259 = *(v308 + 16), v259 == objc_msgSend(v19, "videoCaptureOutput")) && objc_msgSend(objc_msgSend(v19, "configuration"), "weightSegmentMapOnVideoCaptureOutputEnabled"))
  {
    v260 = *off_1E798B040;
    v261 = CMGetAttachment(v205, *off_1E798B040, 0);
    if (v261)
    {
      v262 = v261;
      time1.value = 0;
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      v263 = BWSampleBufferCreateFromPixelBuffer(v262, &time, (v19 + 11976), &time1);
      if (v263)
      {
        multiStreamCameraSourceNode_outputSampleBuffer_cold_11(v263, &time1);
        goto LABEL_203;
      }

      v264 = CMC_CVBufferGetAttachment(v262, *(&buffer + 1));
      if (v264)
      {
        v265 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v264);
        CMSetAttachment(time1.value, *(&buffer + 1), v265, 1u);
        CMSetAttachment(v262, *(&buffer + 1), v265, 1u);
        if (v265)
        {
          CFRelease(v265);
        }
      }

      BWSampleBufferSetAttachedMedia(sbuf, 0x1F21AB1F0, time1.value);
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      CVBufferRemoveAttachment(v205, v260);
    }
  }

  v266 = *(v308 + 16);
  if (v266 != [v19 previewOutput] || (objc_msgSend(objc_msgSend(v19, "configuration"), "postColorProcessingThumbnailOnPreviewOutputEnabled") & 1) == 0)
  {
    v267 = *(v308 + 16);
    if (v267 != [v19 videoCaptureOutput] || !objc_msgSend(objc_msgSend(v19, "configuration"), "postColorProcessingThumbnailOnVideoCaptureOutputEnabled"))
    {
      goto LABEL_429;
    }
  }

  v268 = *off_1E798AFF8;
  v269 = CMGetAttachment(v205, *off_1E798AFF8, 0);
  if (!v269)
  {
    goto LABEL_429;
  }

  v270 = v269;
  time1.value = 0;
  CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
  v271 = BWSampleBufferCreateFromPixelBuffer(v270, &time, (v19 + 11984), &time1);
  if (v271)
  {
    multiStreamCameraSourceNode_outputSampleBuffer_cold_12(v271, &time1);
    goto LABEL_203;
  }

  v272 = CMC_CVBufferGetAttachment(v270, *(&buffer + 1));
  if (v272)
  {
    v273 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v272);
    CMSetAttachment(time1.value, *(&buffer + 1), v273, 1u);
    CMRemoveAttachment(v270, *(&buffer + 1));
    if (v273)
    {
      CFRelease(v273);
    }
  }

  BWSampleBufferSetAttachedMedia(sbuf, 0x1F21AB1D0, time1.value);
  if (time1.value)
  {
    CFRelease(time1.value);
  }

  CVBufferRemoveAttachment(v205, v268);
LABEL_429:
  if (*(v308 + 184) && (*(v308 + 494) & 1) == 0)
  {
    [BWMultiStreamCameraSourceNode _tallyCompressedIOSurfaceStatsForSBuf:v19 outputStorage:?];
  }

  if ((v303 & 2) != 0 && *(v19 + 12132) == 1)
  {
    [(BWMultiStreamCameraSourceNode *)v19 _tallyCompressedIOSurfaceStatsForRawForSBuf:?];
  }

  if (v78 == *(v19 + 248))
  {
    FigCaptureMetadataUtilitiesAdjustValidBufferRectForDarkShadeCropping(sbuf);
  }

  if (*(v308 + 495) == 1)
  {
    IOSurface = CVPixelBufferGetIOSurface(v205);
    ID = IOSurfaceGetID(IOSurface);
  }

  else
  {
    ID = 0;
  }

  if (((v78 == *(v19 + 248)) & ~DWORD1(v309)) == 0)
  {
    [v78 emitSampleBuffer:sbuf];
    CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
    *(v308 + 56) = *&time.duration.value;
    *(v308 + 72) = time.duration.epoch;
    if (HIDWORD(cf) == 1)
    {
      memset(&time, 0, 24);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      v276 = *(v308 + 80);
      time1 = time.duration;
      [v276 incrementWithPTS:&time1];
    }
  }

  if (*(v308 + 496) == 1)
  {
    [(BWMultiStreamCameraSourceNode *)v19 _prefetchPixelBufferForOutputStorage:v308 numberOfBuffersToFetch:2 lastEmittedSurfaceID:ID];
  }

  v138 = cf;
  if (cf)
  {
    [*(v19 + 136) sourceNodeWillEmitDetectedFacesSampleBuffer:cf];
    [*(v19 + 312) emitSampleBuffer:cf];
LABEL_447:
    CFRelease(v138);
  }
}

uint64_t captureSessionServer_serializeSessionNotification(const char *a1, uint64_t a2, uint64_t a3, void *a4, __CFDictionary **a5, void *a6)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v45, v46, value, v49, v51, v52, v53);
    return 1;
  }

  if (a4)
  {
    v69[0] = @"DidStartFigAssetWriterRecording";
    v69[1] = @"DidStopFigAssetWriterRecording";
    if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:{2), "containsObject:", a3}] & 1) == 0)
    {
      v54 = a6;
      v68[0] = 0x1F21863F0;
      v68[1] = 0x1F2186410;
      v68[2] = 0x1F2186430;
      v68[3] = 0x1F2186450;
      v68[4] = 0x1F2186470;
      v68[5] = 0x1F2186410;
      v68[6] = 0x1F2186430;
      v68[7] = 0x1F2186450;
      v68[8] = 0x1F21863F0;
      v68[9] = 0x1F2186410;
      v68[10] = 0x1F2186490;
      v68[11] = 0x1F2186430;
      v68[12] = 0x1F2186450;
      v68[13] = 0x1F21864B0;
      v68[14] = 0x1F21864D0;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:15];
      v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
      v11 = [objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a4, "allKeys")), "intersectsSet:", v10}];
      v12 = CFDictionaryGetValue(a4, @"FormatDescription");
      v13 = CFDictionaryGetValue(a4, @"SampleBuffer");
      v67 = CFDictionaryGetValue(a4, @"Surface");
      v66 = CFDictionaryGetValue(a4, @"PreviewSampleBuffer");
      v65 = CFDictionaryGetValue(a4, @"PreviewSurface");
      v64 = CFDictionaryGetValue(a4, @"ThumbnailSurface");
      v63 = CFDictionaryGetValue(a4, @"DepthDataSurface");
      v55 = CFDictionaryGetValue(a4, @"ConstantColorConfidenceMapSurface");
      v61 = CFDictionaryGetValue(a4, @"PortraitEffectsMatteSurface");
      v60 = CFDictionaryGetValue(a4, @"HairSegmentationMatteSurface");
      v59 = CFDictionaryGetValue(a4, @"SkinSegmentationMatteSurface");
      v58 = CFDictionaryGetValue(a4, @"TeethSegmentationMatteSurface");
      v57 = CFDictionaryGetValue(a4, @"GlassesSegmentationMatteSurface");
      v62 = CFDictionaryGetValue(a4, @"DeferredPhotoProxySurface");
      v56 = CFDictionaryGetValue(a4, @"MasterClock");
      v14 = CFDictionaryGetValue(a4, @"RemoteQueueReceiver");
      v15 = v13 != 0;
      if ((v11 & 1) == 0 && !v12 && !v13 && !v67 && !v62 && !v66 && !v65 && !v64 && !v63 && !v61 && !v60 && !v59 && !v58 && !v57 && !v14 && !v56 && !v55)
      {
        return 0;
      }

      valuea = v14;
      v18 = *MEMORY[0x1E695E480];
      Count = CFDictionaryGetCount(a4);
      MutableCopy = CFDictionaryCreateMutableCopy(v18, Count, a4);
      v21 = MutableCopy;
      if (v11)
      {
        [(__CFDictionary *)MutableCopy removeObjectsForKeys:v9];
      }

      if (v12)
      {
        CFDictionaryRemoveValue(v21, @"FormatDescription");
        if (FigRemote_CreateSerializableDictionaryForFormatDescription())
        {
          goto LABEL_95;
        }

        CFDictionarySetValue(v21, @"FormatDescription_Serialized", 0);
      }

      if (v13)
      {
        CFDictionaryRemoveValue(v21, @"SampleBuffer");
        v44 = a1;
        OUTLINED_FUNCTION_6_70();
        if (FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer())
        {
          goto LABEL_95;
        }

        FigXPCMessageSetAndConsumeVMData();
      }

      if (v67)
      {
        CFDictionaryRemoveValue(v21, @"Surface");
        XPCObject = IOSurfaceCreateXPCObject(v67);
        if (!XPCObject)
        {
          goto LABEL_86;
        }

        v23 = XPCObject;
        xpc_dictionary_set_value(v54, kFigCaptureSessionNotificationPayloadKey_Surface_Serialized, XPCObject);
        xpc_release(v23);
        v15 = 1;
        if (!v66)
        {
LABEL_38:
          if (v65)
          {
            CFDictionaryRemoveValue(v21, @"PreviewSurface");
            v24 = IOSurfaceCreateXPCObject(v65);
            if (!v24)
            {
              goto LABEL_86;
            }

            v25 = v24;
            OUTLINED_FUNCTION_5_72(v24, kFigCaptureSessionNotificationPayloadKey_PreviewSurface_Serialized);
            xpc_release(v25);
            v15 = 1;
          }

          if (v64)
          {
            CFDictionaryRemoveValue(v21, @"ThumbnailSurface");
            v26 = IOSurfaceCreateXPCObject(v64);
            if (!v26)
            {
              goto LABEL_86;
            }

            v27 = v26;
            OUTLINED_FUNCTION_5_72(v26, kFigCaptureSessionNotificationPayloadKey_ThumbnailSurface_Serialized);
            xpc_release(v27);
            v15 = 1;
          }

          if (v63)
          {
            CFDictionaryRemoveValue(v21, @"DepthDataSurface");
            v28 = IOSurfaceCreateXPCObject(v63);
            if (!v28)
            {
              goto LABEL_86;
            }

            v29 = v28;
            OUTLINED_FUNCTION_5_72(v28, kFigCaptureSessionNotificationPayloadKey_DepthDataSurface_Serialized);
            xpc_release(v29);
            v15 = 1;
          }

          if (v55)
          {
            CFDictionaryRemoveValue(v21, @"ConstantColorConfidenceMapSurface");
            v30 = IOSurfaceCreateXPCObject(v55);
            if (!v30)
            {
              goto LABEL_86;
            }

            v31 = v30;
            OUTLINED_FUNCTION_5_72(v30, kFigCaptureSessionNotificationPayloadKey_ConstantColorConfidenceMapSurface_Serialized);
            xpc_release(v31);
            v15 = 1;
          }

          if (v61)
          {
            CFDictionaryRemoveValue(v21, @"PortraitEffectsMatteSurface");
            v32 = IOSurfaceCreateXPCObject(v61);
            if (!v32)
            {
              goto LABEL_86;
            }

            v33 = v32;
            OUTLINED_FUNCTION_5_72(v32, kFigCaptureSessionNotificationPayloadKey_PortraitEffectsMatteSurface_Serialized);
            xpc_release(v33);
            v15 = 1;
          }

          if (v60)
          {
            CFDictionaryRemoveValue(v21, @"HairSegmentationMatteSurface");
            v34 = IOSurfaceCreateXPCObject(v60);
            if (!v34)
            {
              goto LABEL_86;
            }

            v35 = v34;
            OUTLINED_FUNCTION_5_72(v34, kFigCaptureSessionNotificationPayloadKey_HairSegmentationMatteSurface_Serialized);
            xpc_release(v35);
            v15 = 1;
          }

          if (v59)
          {
            CFDictionaryRemoveValue(v21, @"SkinSegmentationMatteSurface");
            v36 = IOSurfaceCreateXPCObject(v59);
            if (!v36)
            {
              goto LABEL_86;
            }

            v37 = v36;
            OUTLINED_FUNCTION_5_72(v36, kFigCaptureSessionNotificationPayloadKey_SkinSegmentationMatteSurface_Serialized);
            xpc_release(v37);
            v15 = 1;
          }

          if (v58)
          {
            CFDictionaryRemoveValue(v21, @"TeethSegmentationMatteSurface");
            v38 = IOSurfaceCreateXPCObject(v58);
            if (!v38)
            {
              goto LABEL_86;
            }

            v39 = v38;
            OUTLINED_FUNCTION_5_72(v38, kFigCaptureSessionNotificationPayloadKey_TeethSegmentationMatteSurface_Serialized);
            xpc_release(v39);
            v15 = 1;
          }

          if (v57)
          {
            CFDictionaryRemoveValue(v21, @"GlassesSegmentationMatteSurface");
            v40 = IOSurfaceCreateXPCObject(v57);
            if (!v40)
            {
              goto LABEL_86;
            }

            v41 = v40;
            OUTLINED_FUNCTION_5_72(v40, kFigCaptureSessionNotificationPayloadKey_GlassesSegmentationMatteSurface_Serialized);
            xpc_release(v41);
            v15 = 1;
          }

          if (!v62)
          {
            goto LABEL_68;
          }

          CFDictionaryRemoveValue(v21, @"DeferredPhotoProxySurface");
          v42 = IOSurfaceCreateXPCObject(v62);
          if (v42)
          {
            v43 = v42;
            OUTLINED_FUNCTION_5_72(v42, kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurface_Serialized);
            xpc_release(v43);
            v15 = 1;
LABEL_68:
            if (v56)
            {
              CFDictionaryRemoveValue(v21, @"MasterClock");
            }

            if (valuea)
            {
              xpc_dictionary_set_value(v54, kFigCaptureSessionRemoteQueueUpdatedNotificationPayloadKey_RemoteQueueReceiver_Serialized, valuea);
              CFDictionaryRemoveValue(v21, @"RemoteQueueReceiver");
              v15 = 1;
            }

            if (!CFDictionaryGetCount(v21) && v21)
            {
              CFRelease(v21);
              v21 = 0;
            }

            if (!v15)
            {
              *a5 = v21;
              return 4;
            }

            if (!FigXPCMessageSetCFDictionary())
            {
              v16 = 2;
              if (!v21)
              {
                return v16;
              }

LABEL_78:
              CFRelease(v21);
              return v16;
            }

            goto LABEL_95;
          }

LABEL_86:
          OUTLINED_FUNCTION_0_100();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44);
          goto LABEL_96;
        }
      }

      else if (!v66)
      {
        goto LABEL_38;
      }

      CFDictionaryRemoveValue(v21, @"PreviewSampleBuffer");
      v44 = a1 + 16;
      OUTLINED_FUNCTION_6_70();
      if (!FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer())
      {
        FigXPCMessageSetAndConsumeVMData();
        v15 = 1;
        goto LABEL_38;
      }

LABEL_95:
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44);
LABEL_96:
      v16 = 1;
      if (!v21)
      {
        return v16;
      }

      goto LABEL_78;
    }

    return 1;
  }

  return 0;
}

void *cs_notificationPayloadForSectionFormatChanged(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v8 = @"SectionID";
      v9 = @"FormatDescription";
      v10 = result;
      v11 = a2;
      v2 = MEMORY[0x1E695DF20];
      v3 = &v10;
      v4 = &v8;
      v5 = 2;
    }

    else
    {
      v6 = @"SectionID";
      v7 = result;
      v2 = MEMORY[0x1E695DF20];
      v3 = &v7;
      v4 = &v6;
      v5 = 1;
    }

    return [v2 dictionaryWithObjects:v3 forKeys:v4 count:{v5, v6, v7, v8, v9, v10, v11}];
  }

  return result;
}

void FigCaptureLogCameraStreamingPowerEvent(int a1, const void *a2, int a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, float a9, __int128 *a10)
{
  if (a10)
  {
    v16 = a10[1];
    v42 = *a10;
    v43 = v16;
    v44 = *(a10 + 8);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v17 = fig_note_initialize_category_with_default_work_cf();
  if (qword_1ED844E98)
  {
    if (sCameraPowerLogEventQueue)
    {
      if (dword_1ED844470)
      {
        v41 = 0;
        v40 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a2)
      {
        CFRetain(a2);
      }

      atomic_fetch_add_explicit(&qword_1ED844EA8, 1uLL, memory_order_relaxed);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __FigCaptureLogCameraStreamingPowerEvent_block_invoke;
      block[3] = &__block_descriptor_108_e5_v8__0l;
      v30 = a1;
      v31 = a3;
      v36 = a4;
      block[4] = a2;
      block[5] = a5;
      block[6] = a6;
      v32 = a9;
      v37 = a7;
      v38 = a8;
      v39 = a10 != 0;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      dispatch_async(sCameraPowerLogEventQueue, block);
    }

    else
    {
      FigCaptureLogCameraStreamingPowerEvent_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    FigCaptureLogCameraStreamingPowerEvent_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

unint64_t BWPixelBufferDimensionsFromSampleBuffer(opaqueCMSampleBuffer *a1)
{
  if (!a1)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (!ImageBuffer)
  {
    return 0;
  }

  v2 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  return Width | (CVPixelBufferGetHeight(v2) << 32);
}

double FigCaptureMetadataUtilitiesGetValidBufferRect(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F050];
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return *&v2;
  }

  else
  {
    return 0.0;
  }
}

double FigCaptureMetadataUtilitiesGetSensorReadoutRect(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F050];
  FigCFDictionaryGetCGRectIfPresent();
  return *&v2;
}

BOOL OUTLINED_FUNCTION_192(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_192_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 objectForKeyedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_232_0(uint64_t a1, void *a2)
{

  return [(BWPhotonicEngineNode *)a1 _setupProcessingStateForScalerIfNeededWithSettings:a2 sequenceNumber:v4 portType:v3 preNoiseReductionScaler:1 processingPlan:v2];
}

uint64_t OUTLINED_FUNCTION_127_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 countByEnumeratingWithState:v13 - 160 objects:va count:{16, a6}];
}

BOOL OUTLINED_FUNCTION_127_2(NSObject *a1)
{
  v3 = *(v1 - 121);

  return os_log_type_enabled(a1, v3);
}

CGFloat mscsn_applyPreviewShiftToCropRect(__n128 a1, __n128 a2, CGFloat a3, CGFloat a4, double a5, __n128 a6, float a7)
{
  v7 = a1.n128_f64[0] + a5;
  if (1.0 - a3 < v7)
  {
    v7 = 1.0 - a3;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = a2.n128_f64[0] + a6.n128_f64[0];
  if (1.0 - a4 < v8)
  {
    v8 = 1.0 - a4;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  return FigCaptureMetadataUtilitiesScaleRect(v7, v8, a3, a4, a7, a6);
}

uint64_t FigCaptureMetadataUtilitiesDenormalizeCropRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = CGRectIsEmpty(*&a1);
  if (!result)
  {
    return CMIDenormalizeCropRect();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_240_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{

  return [a20 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

uint64_t BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (v1)
  {
    v2 = v1;
    v3 = *off_1E798A060;
    result = [objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798A060), "BOOLValue"}];
    if ((result & 1) == 0)
    {
      v5 = *off_1E798B218;
      v6 = [v2 objectForKeyedSubscript:*off_1E798B218];
      result = [v6 count];
      if (result)
      {
        v7 = OUTLINED_FUNCTION_5_49();
        TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching = mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching(v7, v2, v8);
        OUTLINED_FUNCTION_14(TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching, v10, v11, v12, v13, v14, v15, v16, v25, v27, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
        IsIdentity = CGAffineTransformIsIdentity(&v29);
        if (!IsIdentity)
        {
          OUTLINED_FUNCTION_14(IsIdentity, v18, v19, v20, v21, v22, v23, v24, v26, v28, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
          [v2 setObject:FigCaptureMetadataUtilitiesApplyAffineTransformToFacesArray(v6 forKeyedSubscript:{&v29), v5}];
        }

        return [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v3];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25, v27, *&v29.a, *&v29.b, LODWORD(v29.c), *&v29.d, *&v29.tx, LODWORD(v29.ty));
  }

  return result;
}

uint64_t BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (v1)
  {
    v2 = v1;
    v3 = *off_1E798A0B0;
    result = [objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798A0B0), "BOOLValue"}];
    if ((result & 1) == 0)
    {
      v5 = *off_1E798B220;
      result = [v2 objectForKeyedSubscript:*off_1E798B220];
      if (result)
      {
        v6 = result;
        v7 = OUTLINED_FUNCTION_5_49();
        TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching = mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching(v7, v2, v8);
        OUTLINED_FUNCTION_14(TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching, v10, v11, v12, v13, v14, v15, v16, v25, v27, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
        IsIdentity = CGAffineTransformIsIdentity(&v29);
        if (!IsIdentity)
        {
          OUTLINED_FUNCTION_14(IsIdentity, v18, v19, v20, v21, v22, v23, v24, v26, v28, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
          [v2 setObject:FigCaptureMetadataUtilitiesApplyAffineTransformToDetectedObjectsInfo(v6 forKeyedSubscript:{&v29), v5}];
        }

        return [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v3];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25, v27, *&v29.a, *&v29.b, LODWORD(v29.c), *&v29.d, *&v29.tx, LODWORD(v29.ty));
  }

  return result;
}

CMSampleBufferRef BWDetectedObjectsCreateFilteredDetectedObjectsOnlySampleBufferFromSampleBufferUsingSet(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v41 = 0;
  v12 = *off_1E798A3C8;
  result = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (result)
  {
    v14 = result;
    v15 = *off_1E798B218;
    v16 = [(opaqueCMSampleBuffer *)result objectForKeyedSubscript:*off_1E798B218];
    v17 = *off_1E798B220;
    v18 = [(opaqueCMSampleBuffer *)v14 objectForKeyedSubscript:*off_1E798B220];
    if (v16 | v18)
    {
      v19 = v18;
      memset(&timingArrayOut, 0, sizeof(timingArrayOut));
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a1, 1, &timingArrayOut, 0);
      result = 0;
      if (!SampleTimingInfoArray)
      {
        v21 = *MEMORY[0x1E695E480];
        CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &timingArrayOut, 0, 0, &v41);
        v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v23 = [a2 containsObject:*off_1E798ACB8];
        if (v16)
        {
          v24 = v23 == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          [v22 setObject:v16 forKeyedSubscript:v15];
        }

        v42.origin.x = a3;
        v42.origin.y = a4;
        v42.size.width = a5;
        v42.size.height = a6;
        if (!CGRectEqualToRect(v42, *MEMORY[0x1E695F058]))
        {
          v43.origin.x = a3;
          v43.origin.y = a4;
          v43.size.width = a5;
          v43.size.height = a6;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v43);
          if (DictionaryRepresentation)
          {
            [v22 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A5C8];
            [v22 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A5D8];
          }
        }

        v26 = *off_1E798B710;
        v27 = [(opaqueCMSampleBuffer *)v14 objectForKeyedSubscript:*off_1E798B710];
        if (v27)
        {
          [v22 setObject:v27 forKeyedSubscript:v26];
        }

        if (v19)
        {
          v34 = v22;
          DeepCopy = CFPropertyListCreateDeepCopy(v21, v19, 1uLL);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v29 = [v19 countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v37;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v37 != v31)
                {
                  objc_enumerationMutation(v19);
                }

                v33 = *(*(&v36 + 1) + 8 * i);
                if (([a2 containsObject:v33] & 1) == 0)
                {
                  [DeepCopy removeObjectForKey:v33];
                }
              }

              v30 = [v19 countByEnumeratingWithState:&v36 objects:v35 count:16];
            }

            while (v30);
          }

          v22 = v34;
          [v34 setObject:DeepCopy forKeyedSubscript:v17];
        }

        [v22 setObject:-[opaqueCMSampleBuffer objectForKeyedSubscript:](v14 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B228), *off_1E798B228}];
        CMSetAttachment(v41, v12, v22, 1u);

        return v41;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t doirb_findDetectedObjectsInfoClosestToPTS(void *a1, CMTime *a2)
{
  v4 = [a1 count];
  if (v4 < 1)
  {
    v7 = -1;
    v19 = -1;
  }

  else
  {
    v5 = 0;
    v6 = *off_1E798B780;
    v22 = v4 & 0x7FFFFFFF;
    v7 = -1;
    v23 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    while (1)
    {
      v9 = [a1 objectAtIndexedSubscript:v5];
      v33.epoch = v8;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      *&v33.value = v23;
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        v13 = 3.4028e38;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [objc_msgSend(v9 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * i)), "objectForKeyedSubscript:", v6}];
            if (v15)
            {
              memset(&time1, 0, sizeof(time1));
              [v15 longLongValue];
              v16 = FigHostTimeToNanoseconds();
              CMTimeMake(&time, v16, 1000000000);
              CMTimeConvertScale(&time1, &time, a2->timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              lhs = *a2;
              rhs = time1;
              CMTimeSubtract(&time, &lhs, &rhs);
              Seconds = CMTimeGetSeconds(&time);
              if (v13 > Seconds)
              {
                v33 = time1;
                v13 = Seconds;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v11);
      }

      else
      {
        v13 = 3.4028e38;
      }

      if (fabsf(v13) > 0.5)
      {
        break;
      }

      time1 = v33;
      time = *a2;
      v18 = CMTimeCompare(&time1, &time);
      if (!v18)
      {
        if (v9)
        {
          return v9;
        }

        break;
      }

      v19 = v5;
      if (v18 < 1)
      {
        goto LABEL_26;
      }

      ++v5;
      v7 = v19;
      if (v5 == v22)
      {
        v7 = v19;
        break;
      }
    }

    v19 = -1;
LABEL_26:
    if ((v7 & 0x80000000) == 0 && v19 == -1)
    {
      return [a1 lastObject];
    }

    if (v7 == -1 && (v19 & 0x80000000) == 0)
    {
      return [a1 firstObject];
    }
  }

  if (((v19 | v7) & 0x80000000) == 0)
  {
    return [a1 objectAtIndexedSubscript:(v19 + v7) >> 1];
  }

  return 0;
}

void __captureSession_buildGraphDidBecomeLiveObserver_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  if ((*(a1 + 48) & 1) != 0 || [a3 mediaType] != 1936684398)
  {
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v8 = [*(*(a1 + 32) + 512) configurationID];
    os_unfair_lock_unlock((*(a1 + 32) + 384));
    if (v8 == a4)
    {
      v9 = [a3 node];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = *(a1 + 40);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (a2)
        {
          if ([v9 sinkID])
          {
            v12 = cs_notificationPayloadForSectionFormatChanged([v9 sinkID], objc_msgSend(a2, "formatDescription"));
            captureSession_postNotificationWithPayload(v10, @"PreviewFormatDidChange", v12);
          }
        }

        else
        {
          captureSession_setPreviewRunning(v10, 0, [*(DerivedStorage + 784) previewSinkPipelineWithSinkID:{objc_msgSend(v9, "sinkID")}]);
        }
      }

      if (*(a1 + 49) == 1)
      {
        v13 = *(a1 + 40);
        v14 = CMBaseObjectGetDerivedStorage();
        if (a2)
        {
          v15 = v14;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [*(v15 + 784) previewSinkPipelineWithSinkID:{objc_msgSend(v9, "sinkID")}];
            if ([v16 previewSinkEnabled])
            {
              captureSession_setPreviewRunning(v13, 1, v16);
            }
          }

          captureSession_makeCommittedConfigurationLive(v13, a4, @"chosen sink node live");
        }
      }
    }
  }
}

uint64_t FigMotionComputeLensPositionScalingFactor(const __CFDictionary *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    FigMotionComputeLensPositionScalingFactor_cold_5(&v19);
    return v19;
  }

  if (!a6)
  {
    FigMotionComputeLensPositionScalingFactor_cold_4(&v19);
    return v19;
  }

  v9 = a4;
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *MEMORY[0x1E695F058];
  v21 = *MEMORY[0x1E695F058];
  v22 = v17;
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1, &v21, a3, a4, a5, a6, a7, a8, v17);
  if (SensorValidCropRect)
  {
    v15 = SensorValidCropRect;
    FigMotionComputeLensPositionScalingFactor_cold_1();
    return v15;
  }

  if (CFDictionaryContainsKey(a1, *off_1E798B7A0))
  {
    v19 = v18;
    v20 = v17;
    FigCFDictionaryGetCGRectIfPresent();
    if (*(&v17 + 1) > 0.0 && *&v20 > 0.0)
    {
      a2 = *&v20;
    }
  }

  v14 = *&v22;
  if (v14 <= 0.0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_3(&v19);
    return v19;
  }

  if (v9 <= 0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_2(&v19);
    return v19;
  }

  v15 = 0;
  *a6 = a2 / (v9 * v14);
  return v15;
}

uint64_t FigMotionGetSensorValidCropRect(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (!CFDictionaryContainsKey(a1, *off_1E798B668))
  {
    if (CFDictionaryContainsKey(a1, *off_1E798B790))
    {
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v11 = 381;
        goto LABEL_12;
      }
    }

    else
    {
      if (!CFDictionaryContainsKey(a1, *off_1E798B598))
      {
        v11 = 393;
        goto LABEL_12;
      }

      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v11 = 388;
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return 0;
  }

  v11 = 373;
LABEL_12:
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "(Fig)", v11, v9, v14, v15, a9);
}

void BWPreviewSynchronizerDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t FigMotionComputePrincipalPoint(const __CFDictionary *a1, int a2, int a3, int a4, int a5, int a6, _OWORD *a7, float a8, float a9, double a10, uint64_t a11, id *a12)
{
  value = 0;
  v33 = *MEMORY[0x1E695EFF8];
  point = v33;
  if (a1 && a7)
  {
    v21 = (a2 + -1.0) * 0.5;
    v22 = (a3 + -1.0) * 0.5;
    v37.f64[0] = v21;
    v37.f64[1] = v22;
    if (CFDictionaryGetValueIfPresent(a1, *off_1E798B520, &value) && CGPointMakeWithDictionaryRepresentation(value, &point) && FigMotionComputeSensorCroppedReferenceCenter(a1, &v33, v23, v24, v25, v26, v27, v28))
    {
      v37.f64[0] = v21 + (point.x - v33.x) * a9 * a4;
      v37.f64[1] = v22 + (point.y - v33.y) * a9 * a5;
    }

    if (!a6 || (result = FigMotionAdjustPointForSphereMovement(a1, &v37, a8, a9, a10, v23, v24), !result))
    {
      result = 0;
      *a7 = v37;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v12, *&v33.x, *&v33.y, LODWORD(point.x), *&point.y, v35, value);
    v30 = OUTLINED_FUNCTION_7_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0xFFFFCE14, "(Fig)", 0xB58, v12, v31, v32, a12);
  }

  return result;
}

BOOL FigMotionComputeSensorCroppedReferenceCenter(const __CFDictionary *a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(MEMORY[0x1E695F058] + 16);
  v19 = *MEMORY[0x1E695F058];
  v20 = v9;
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1, &v19, a3, a4, a5, a6, a7, a8, *&v19.f64[0]);
  if (!SensorValidCropRect)
  {
    __asm { FMOV            V2.2D, #-1.0 }

    v16 = vaddq_f64(v20, _Q2);
    __asm { FMOV            V2.2D, #0.5 }

    *a2 = vmlaq_f64(v19, _Q2, v16);
  }

  return SensorValidCropRect == 0;
}

uint64_t FigMotionAdjustPointForSphereMovement(uint64_t a1, float64x2_t *a2, float a3, float a4, double a5, uint64_t a6, uint64_t a7)
{
  v13 = 0;
  if (a1)
  {
    v10 = FigMotionComputeAverageSpherePosition(a1, &v13, a6, a7);
    v11 = v10;
    if (v10)
    {
      FigMotionAdjustPointForSphereMovement_cold_1(v10);
    }

    else
    {
      *a2 = vaddq_f64(*a2, vcvtq_f64_f32(vmul_n_f32(v13, a3 * a4)));
    }
  }

  else
  {
    FigMotionAdjustPointForSphereMovement_cold_2(&v14);
    return v14;
  }

  return v11;
}

uint64_t FigMotionComputeAverageSpherePosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v28 = 0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(v4, *off_1E798B2A8);
  if (!Value)
  {
    FigMotionComputeAverageSpherePosition_cold_3(v29);
    return LODWORD(v29[0]);
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  v11 = CFDictionaryGetValue(v9, *off_1E798B328);
  if (!v11)
  {
    FigMotionComputeAverageSpherePosition_cold_2(v29);
    return LODWORD(v29[0]);
  }

  CFNumberGetValue(v11, kCFNumberSInt32Type, &v28);
  v12 = v28;
  v13 = valuePtr;
  *v6 = 0;
  v30 = 0;
  *v6 = 0;
  v14 = CFDictionaryGetValue(v9, *off_1E798B3B8);
  if (v14)
  {
    ISPHallData = FigMotionGetISPHallData(v14, v29, &v30, 510);
    if (ISPHallData)
    {
      v25 = ISPHallData;
      FigMotionComputeAverageSpherePosition_cold_1(ISPHallData);
      return v25;
    }

    v16 = v30;
    if (v30 >= 1)
    {
      v17 = 0;
      v18 = v8 + v13 * -0.5;
      v19 = v12 / 1000000.0 + v18;
      v20 = &v29[1];
      v21 = v30;
      do
      {
        v22 = *&v20[-1];
        if (v22 >= v18 && v22 <= v19)
        {
          *v6 = vadd_f32(*v20, *v6);
          ++v17;
        }

        v20 += 3;
        --v21;
      }

      while (v21);
      if (v17)
      {
        *&v19 = v17;
        *v6 = vdiv_f32(*v6, vdup_lane_s32(*&v19, 0));
      }

      else
      {
        v24 = v16 - 1;
        if (v29[0] > v19)
        {
          v24 = 0;
        }

        *v6 = *&v29[3 * v24 + 1];
        low_freq_error_logging();
      }
    }
  }

  return 0;
}

uint64_t FigMotionGetISPHallData(const __CFData *a1, uint64_t a2, int *a3, int a4)
{
  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionGetISPHallData_cold_3(&time);
  }

  else
  {
    v10 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    if (*BytePtr >= 2u)
    {
      FigMotionGetISPHallData_cold_2(&time);
    }

    else
    {
      v12 = 16;
      if (*BytePtr == 1)
      {
        v12 = 24;
      }

      if (v10 == v12 * *(BytePtr + 1) + 8)
      {
        if (a3)
        {
          goto LABEL_7;
        }

LABEL_26:
        FigMotionGetISPHallData_cold_4(&time);
        return LODWORD(time.value);
      }

      FigMotionGetISPHallData_cold_1(&time);
    }
  }

  value_low = LODWORD(time.value);
  if (LODWORD(time.value))
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", value_low, v4, v25, time.value, time.timescale, time.epoch, v27, v28);
    return value_low;
  }

  BytePtr = 0;
  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v13 = *(BytePtr + 1);
  if (v13 >= a4)
  {
    v13 = a4;
  }

  *a3 = v13;
  if (*BytePtr == 1)
  {
    if (v13 >= 1)
    {
      v19 = 0;
      v20 = (BytePtr + 16);
      v21 = (a2 + 12);
      do
      {
        v22 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v22, 1000000000);
        *(v21 - 3) = CMTimeGetSeconds(&time);
        *(v21 - 1) = *v20 * 0.0039062;
        *v21 = v20[1] * 0.0039062;
        v21[1] = v20[2] * 0.0039062;
        v21[2] = v20[3] * 0.0039062;
        ++v19;
        v20 += 6;
        v21 += 6;
      }

      while (v19 < *a3);
    }
  }

  else
  {
    if (*BytePtr)
    {
      return 4294954515;
    }

    if (v13 >= 1)
    {
      v14 = 0;
      v15 = (a2 + 16);
      v16 = (BytePtr + 20);
      do
      {
        v17 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v17, 1000000000);
        *(v15 - 2) = CMTimeGetSeconds(&time);
        *(v15 - 2) = *(v16 - 1) * 0.0039062;
        v18 = *v16;
        v16 += 4;
        *(v15 - 1) = v18 * 0.0039062;
        *v15 = 0.0;
        v15 += 3;
        ++v14;
      }

      while (v14 < *a3);
    }
  }

  return 0;
}

uint64_t FigImageControl_SetContinuousAutoFocusAreaOfInterestByPortType(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7612) != 1)
  {
    return 4294954516;
  }

  v5 = DerivedStorage;
  if (([*(DerivedStorage + 9064) isEqualToDictionary:a2] & 1) == 0)
  {

    *(v5 + 9064) = a2;
    v6 = *(MEMORY[0x1E695F050] + 16);
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v6;
    CGRectMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(a2, "allKeys"), "firstObject")}], &rect);
    if (CGRectIsNull(rect))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v20, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v22, v23);
    }

    else
    {
      width = rect.size.width;
      height = rect.size.height;
      v9 = CMBaseObjectGetDerivedStorage();
      v10 = v9[4536] * width / 1000;
      v11 = v9[4537] * height / 1000;
      v12 = __OFSUB__(v11, v10);
      v13 = v11 - v10;
      v15 = v13 < 0 != v12 || v13 < 5;
      if (v15)
      {
        v16 = 5;
      }

      else
      {
        v16 = 3;
      }

      if (v15)
      {
        v17 = 3;
      }

      else
      {
        v17 = 5;
      }

      v9[1909] = v16;
      v9[1910] = v17;
      if (*(v5 + 625) != 1)
      {
        result = 0;
        *(v5 + 9056) = 1;
        return result;
      }

      setupFocusWindowMatrixByPortType(a1, a2, *(v5 + 560), *(v5 + 7636), *(v5 + 7640), 1);
    }
  }

  return 0;
}

uint64_t FigImageControl_SetAutoExposureAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) == 1)
  {
    if (*(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
    {
      *(DerivedStorage + 7476) = a2;
      *(DerivedStorage + 7480) = a3;
      *(DerivedStorage + 7484) = a4;
      *(DerivedStorage + 7488) = a5;
      *(DerivedStorage + 7457) = 1;
    }
  }

  else
  {
    FigImageControl_AutoExposure(a1, a2, a3, a4, a5);
  }

  return 0;
}

uint64_t FigMotionGetMotionDataFromISP(CFDictionaryRef theDict, float64x2_t *a2, uint64_t a3, int a4, int *a5, float32x2_t *a6, uint64_t a7, int a8, int *a9)
{
  if (!theDict)
  {
    FigMotionGetMotionDataFromISP_cold_3(&time);
    return LODWORD(time.value);
  }

  if (a2 && a5)
  {
    Value = CFDictionaryGetValue(theDict, *off_1E798B3D0);
    if (Value)
    {
      v40 = 0;
      v18 = FigMotionISPMotionDataFromCFData(Value, &v40);
      if (v18)
      {
        v34 = v18;
        FigMotionGetMotionDataFromISP_cold_1(v18);
        return v34;
      }

      LODWORD(v20) = *(v40 + 1);
      if (v20 >= a4)
      {
        LODWORD(v20) = a4;
      }

      *a5 = v20;
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = (a3 + 8);
        v23 = a2 + 1;
        v24 = 0;
        v25 = 0.0;
        v26 = 44;
        v38 = vdupq_n_s64(0x3E10000000000000uLL);
        v27 = vdup_n_s32(0x37800000u);
        do
        {
          v28 = FigHostTimeToNanoseconds();
          CMTimeMake(&time, v28, 1000000000);
          v23[-1].f64[1] = CMTimeGetSeconds(&time);
          v29 = &v40[v26];
          v30 = *&v40[v26 - 24];
          v31.i64[0] = v30;
          v31.i64[1] = SHIDWORD(v30);
          *v23 = vmulq_f64(vcvtq_f64_s64(v31), v38);
          v32 = *(v29 - 2);
          v31.i64[0] = v32;
          v31.i64[1] = SHIDWORD(v32);
          v23[1] = vmulq_f64(vcvtq_f64_s64(v31), v38);
          v19 = vmul_f32(vcvt_f32_s32(*(v29 - 2)), v27);
          v33 = *v29 * 0.000015259;
          if (a3)
          {
            *(v22 - 1) = v19;
            *v22 = v33;
          }

          v24 = vadd_f32(v24, v19);
          v25 = v25 + v33;
          ++v21;
          v20 = *a5;
          v22 += 3;
          v23 += 3;
          v26 += 40;
        }

        while (v21 < v20);
        if (!a6)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v24 = 0;
      v25 = 0.0;
      if (a6)
      {
LABEL_17:
        if (v20)
        {
          v19.f32[0] = v20;
          *a6 = vdiv_f32(v24, vdup_lane_s32(v19, 0));
          a6[1].f32[0] = v25 / v20;
        }
      }
    }

    else
    {
      *a5 = 0;
    }
  }

LABEL_19:
  v34 = 0;
  if (a7 && a9)
  {
    v35 = CFDictionaryGetValue(theDict, *off_1E798B3B8);
    if (v35)
    {
      ISPHallData = FigMotionGetISPHallData(v35, a7, a9, a8);
      v34 = ISPHallData;
      if (ISPHallData)
      {
        FigMotionGetMotionDataFromISP_cold_2(ISPHallData);
      }
    }

    else
    {
      v34 = 0;
      *a9 = 0;
    }
  }

  return v34;
}

uint64_t FigMotionISPMotionDataFromCFData(const __CFData *a1, const UInt8 **a2)
{
  if (!a2)
  {
    FigMotionISPMotionDataFromCFData_cold_5(&v9);
    return v9;
  }

  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionISPMotionDataFromCFData_cold_4(&v9);
    return v9;
  }

  v5 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    FigMotionISPMotionDataFromCFData_cold_3(&v9);
    return v9;
  }

  v7 = BytePtr;
  if (v5 != 40 * *(BytePtr + 1) + 8)
  {
    FigMotionISPMotionDataFromCFData_cold_1(&v9);
    return v9;
  }

  if (*BytePtr)
  {
    FigMotionISPMotionDataFromCFData_cold_2(&v9);
    return v9;
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t processBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 4294954511;
  }

  v7 = DerivedStorage;
  v8 = *off_1E798A3C8;
  result = CMGetAttachment(a2, *off_1E798A3C8, 0);
  if (result)
  {
    v360 = v7;
    v9 = (v7 + 7536);
    FigImageControl_Sharpness(a1);
    FigImageControl_ToneMapping(a1, a2);
    v10 = CMBaseObjectGetDerivedStorage();
    pixelBuffer = CMSampleBufferGetImageBuffer(a2);
    v361 = v8;
    sbuf = a2;
    v11 = CMGetAttachment(a2, v8, 0);
    Value = CFDictionaryGetValue(v11, *off_1E798B0A8);
    v13 = CFDictionaryGetValue(v11, *off_1E798B0A0);
    LODWORD(v365) = 0;
    *v375 = 0;
    v14 = *off_1E798B300;
    if (!CFDictionaryGetValue(v11, *off_1E798B300))
    {
      goto LABEL_221;
    }

    v352 = v13;
    *&valuePtr = 0.0;
    v15 = *(v10 + 48);
    if (v15)
    {
      CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
      CMTimeGetSeconds(&time);
      FigCoreMotionGetVector(v15, &v365, &v375[1], v375);
      v16 = *&v365;
      v18 = *v375;
      v17 = *&v375[1];
    }

    else
    {
      v18 = 0.0;
      v17 = 0.0;
      v16 = 0.0;
    }

    v19 = (((*(v10 + 5636) - v16) * (*(v10 + 5636) - v16)) + ((*(v10 + 5640) - v17) * (*(v10 + 5640) - v17))) + ((*(v10 + 5644) - v18) * (*(v10 + 5644) - v18));
    valuePtr = *(v10 + 5500);
    v20 = valuePtr;
    *(v10 + 4 * valuePtr + 5508) = v19;
    *(v10 + 5636) = v16;
    *(v10 + 5640) = v17;
    *(v10 + 5644) = v18;
    *(v10 + 5500) = (v20 + 1) & 0x1F;
    v21 = ((v17 * v17) + (v16 * v16)) + (v18 * v18);
    if (v21 < 1.3225 && v21 > 0.7225)
    {
      v22 = *(v10 + 5504);
      if (v22 <= 6)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      *(v10 + 5504) = v23;
      if (fabsf((v18 * v18) / v21) <= 0.81)
      {
        if (!*(v10 + 573))
        {
          v16 = -v16;
        }

        v27 = atan2f(v17, v16);
        if (v27 < 0.0)
        {
          v27 = v27 + 6.2832;
        }

        v25 = llroundf(v27 * 0.63662);
        v26 = v25 - 4;
        v24 = v25 <= 3;
      }

      else
      {
        v24 = v18 <= 0.0;
        LOWORD(v25) = 4;
        v26 = 5;
      }

      if (v24)
      {
        v28 = v25;
      }

      else
      {
        v28 = v26;
      }

      v29 = 0;
      v30 = 0;
      *(v10 + 5648 + 2 * v22) = v28;
      memset(&time, 0, 24);
      do
      {
        v31 = *(v10 + 5648 + v29);
        if (v31 <= 5)
        {
          ++*(&time.origin.x + v31);
          ++v30;
        }

        v29 += 2;
      }

      while (v29 != 16);
      v32 = 0;
      v33 = v30 / 2;
      while (*(&time.origin.x + v32) <= v33)
      {
        if (++v32 == 6)
        {
          valuePtr = 6;
          goto LABEL_35;
        }
      }

      valuePtr = v32;
      if (*(v10 + 5664) != v32)
      {
        *(v10 + 5664) = v32;
        if (v32 <= 3 && (*(v10 + 518) & 1) != 0)
        {
          *(v10 + 5666) = v32;
          v34 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
          captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BE00, v34);
          CFRelease(v34);
        }
      }
    }

LABEL_35:
    v35 = CFDictionaryGetValue(v11, *off_1E798D030);
    if (v35)
    {
      v36 = *(v10 + 9032);
      *(v10 + 9032) = v35;
      CFRetain(v35);
      if (v36)
      {
        CFRelease(v36);
      }
    }

    v37 = CFDictionaryGetValue(v11, v14);
    theDict = v9;
    if (v37)
    {
      v38 = v37;
      v39 = a1;
      v40 = CFGetTypeID(v37);
      if (v40 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v38);
        v42 = Count >= 0x10 ? 16 : Count;
        if (Count)
        {
          v43 = Count;
          x_low = 0;
          v45 = 0;
          do
          {
            LODWORD(time.origin.x) = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v38, v45);
            CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &time);
            if (v43 == 1)
            {
              x_low = LODWORD(time.origin.x);
            }

            else
            {
              x_low += LODWORD(time.origin.x) * *(v10 + 436 + 4 * v45);
            }

            ++v45;
          }

          while (v42 != v45);
LABEL_52:
          a1 = v39;
          v9 = theDict;
          if (Value && v352)
          {
            *v367 = 0;
            v364 = 0.0;
            CFNumberGetValue(Value, kCFNumberIntType, v367);
            CFNumberGetValue(v352, kCFNumberIntType, &v364);
            if (*v367 != 4)
            {
              v48 = *(v10 + 640) != 0;
              v47 = v10 + 4096;
LABEL_63:
              *(v47 + 2120) = v48;
              if (LODWORD(v364) == 1)
              {
                v363 = -1;
                v54 = CFDictionaryGetValue(v11, *off_1E798B208);
                if (v54)
                {
                  CFNumberGetValue(v54, kCFNumberIntType, &v363);
                }

                v55 = v363;
                if (*(v10 + 6220) > 0 || v363 == *(v10 + 92))
                {
                  v56 = CMBaseObjectGetDerivedStorage();
                  v57 = v56;
                  v58 = *(v56 + 6220);
                  if (v58 < 1)
                  {
                    v63 = v39;
                    v64 = 0;
                  }

                  else
                  {
                    v59 = (v56 + 5736);
                    v60 = (v56 + 5896);
                    v61 = *(v56 + 6220);
                    do
                    {
                      v62 = *v59++;
                      if (v62 == v55)
                      {
                        *v60 = x_low;
                        goto LABEL_175;
                      }

                      ++v60;
                      --v61;
                    }

                    while (v61);
                    if (v58 > 19)
                    {
                      goto LABEL_175;
                    }

                    v63 = v39;
                    v64 = 0;
                    v65 = 0;
                    v66 = v56 + 5904;
                    v67 = 8 * v58;
                    v68 = (v56 + 5904);
                    while (*(v66 + v65 - 168) < v55)
                    {
                      v68 += 8;
                      v65 += 4;
                      ++v64;
                      v67 -= 8;
                      if (4 * v58 == v65)
                      {
                        v64 = *(v56 + 6220);
                        goto LABEL_173;
                      }
                    }

                    memmove((v66 + v65 - 164), (v66 + v65 - 168), 4 * v58 - v65);
                    memmove(v68, v68 - 8, v67);
LABEL_173:
                    v9 = theDict;
                    v47 = v10 + 4096;
                  }

                  *(v57 + 4 * v64 + 5736) = v55;
                  *(v57 + 8 * v64 + 5896) = x_low;
                  ++*(v57 + 6220);
                  a1 = v63;
LABEL_175:
                  CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
                  *(v10 + 5672) = CMTimeGetSeconds(&time);
                }

                if (*(v10 + 640))
                {
                  if (*v367 == 4)
                  {
                    v151 = x_low;
                    *(v10 + 6232) = (x_low * 0.85);
                    *(v10 + 6248) = (x_low * 1.4);
                    *(v10 + 6280) = v363;
                    *(v10 + 6264) = x_low;
                    if (*(v47 + 3486) == 1)
                    {
                      v152 = *(v10 + 6220);
                      v153 = v152 >= 20 ? 20 : v152;
                      if (v152 < 2)
                      {
                        goto LABEL_438;
                      }

                      v154 = 0;
                      v155 = (v10 + 5904);
                      v156 = 1;
                      do
                      {
                        v157 = *v155++;
                        if (v157 > *(v10 + 5896 + 8 * v154))
                        {
                          v154 = v156;
                        }

                        ++v156;
                      }

                      while (v153 != v156);
                      if (!v154)
                      {
LABEL_438:
                        v154 = *(v10 + 5736);
                        if (v154)
                        {
                          goto LABEL_191;
                        }
                      }

                      if (v154 == v153 - 1 && *(v10 + 4 * v154 + 5736) != 255)
                      {
LABEL_191:
                        *(v10 + 6232) = (v151 * 0.98);
                        *(v10 + 6248) = (v151 * 1.02);
                      }
                    }
                  }
                }

                else
                {
                  LODWORD(v158) = *(v10 + 6220);
                  if (v158 < 1)
                  {
                    v162 = 0;
                    v161 = 0;
                    v160 = 0;
                  }

                  else
                  {
                    v159 = 0;
                    v160 = 0;
                    v161 = 0;
                    v162 = 0;
                    if (v158 >= 0x14)
                    {
                      v158 = 20;
                    }

                    else
                    {
                      v158 = v158;
                    }

                    v163 = (v10 + 5912);
                    v164 = (v10 + 5744);
                    do
                    {
                      v165 = *(v163 - 2);
                      if (v165 > v162)
                      {
                        v160 = *(v164 - 2);
                        v166 = ((6844998857600 * v160) >> 32) - 3200 * v160;
                        v167 = ((v166 >> 7) + (v166 >> 31) + 9600) >> 8;
                        if (v159)
                        {
                          v168 = v160 - *(v164 - 3);
                          v169 = (v165 - *(v163 - 3)) * v167;
                          if (v169 >= v168)
                          {
                            v161 = v169 / v168;
                          }

                          else
                          {
                            v161 = 0;
                          }

                          if (v159 != 1)
                          {
                            v170 = v165 - *(v163 - 4);
                            v171 = v160 - *(v164 - 4);
                            if (v170 * v167 / v171 > v161)
                            {
                              v161 = v170 * v167 / v171;
                            }
                          }
                        }

                        else
                        {
                          v161 = 0;
                        }

                        if (v159 < (v158 - 1))
                        {
                          v172 = *(v164 - 1) - v160;
                          if ((v165 - *(v163 - 1)) * v167 / v172 > v161)
                          {
                            v161 = (v165 - *(v163 - 1)) * v167 / v172;
                          }

                          if (v159 < v158 - 2)
                          {
                            v173 = *v164;
                            v174 = (v165 - *v163) * v167;
                            if (v174 / (v160 - v173) > v161)
                            {
                              v161 = v174 / (v160 - v173);
                            }
                          }
                        }

                        v162 = *(v163 - 2);
                      }

                      ++v159;
                      ++v163;
                      ++v164;
                    }

                    while (v158 != v159);
                  }

                  v175 = v162 >> 5;
                  if (v161 > v162 >> 5)
                  {
                    v175 = v161;
                  }

                  if (v175 >= v162 >> 2)
                  {
                    v175 = v162 >> 2;
                  }

                  *(v10 + 6232) = v162 - v175;
                  *(v10 + 6248) = v162 + ((7 * v175) >> 2);
                  *(v10 + 6280) = v160;
                  *(v10 + 6264) = v162;
                }
              }

LABEL_221:
              v176 = sbuf;
              FigImageControl_Focus(a1, sbuf);
              FigImageControl_Exposure(a1, sbuf);
              FigImageControl_WhiteBalance(a1, sbuf);
              v177 = v360;
              v178 = v361;
              if (((*(v9 + 1) | *(v9 + 1557)) & (*v9 ^ 0xFF)) == 0)
              {
                goto LABEL_276;
              }

              v179 = CMBaseObjectGetDerivedStorage();
              v180 = CMGetAttachment(sbuf, v361, 0);
              v181 = *off_1E798B540;
              theDicta = v180;
              v182 = CFDictionaryGetValue(v180, *off_1E798B540);
              CameraParametersForPortType = af_sbp_getCameraParametersForPortType(a1, v182);
              if (CameraParametersForPortType && (v184 = CameraParametersForPortType, *(CameraParametersForPortType + 1236)))
              {
                v185 = *(CameraParametersForPortType + 1204);
                v186 = *(v179 + 9092);
                v348 = *(v179 + 17353);
                *v375 = 0;
                v187 = CFDictionaryGetValue(theDicta, *off_1E798B510);
                if (v187)
                {
                  CFNumberGetValue(v187, kCFNumberFloatType, v375);
                }

                pixelBufferb = v181;
                key = *off_1E798B078;
                v188 = CFDictionaryGetValue(theDicta, *off_1E798B078);
                if (v188)
                {
                  CFNumberGetValue(v188, kCFNumberSInt32Type, &v375[1]);
                }

                v189 = 1224;
                if (!v375[1])
                {
                  v189 = 1220;
                }

                if (v186)
                {
                  v190 = -*(v184 + v189);
                }

                else
                {
                  v190 = *(v184 + v189);
                }

                *(v179 + 9092) = 0;
                v191 = CFDictionaryGetValue(theDicta, *off_1E798B398);
                if (v191)
                {
                  v192 = v191;
                  if (CFDataGetLength(v191) == 1024)
                  {
                    v344 = (v179 + 17336);
                    v193 = *(v184 + 1200);
                    BytePtr = CFDataGetBytePtr(v192);
                    v195 = CFDictionaryGetValue(theDicta, *off_1E798B390);
                    v196 = CFDataGetBytePtr(v195);
                    v197 = CFDictionaryGetValue(theDicta, *off_1E798B388);
                    v198 = CFDataGetBytePtr(v197);
                    v199 = v198;
                    v342 = *(v179 + 10212);
                    if (!v342)
                    {
                      v200 = 0;
                      v201 = 0uLL;
                      do
                      {
                        v201 = vaddq_s32(*&BytePtr[v200], v201);
                        v200 += 16;
                      }

                      while (v200 != 1024);
                      v202 = vaddvq_s32(v201);
                      *(v179 + 10212) = v202;
                      v342 = v202;
                    }

                    if (*(v179 + 7538) == 1)
                    {
                      v203 = 0;
                      v204 = (v179 + 10216);
                      do
                      {
                        v205 = *&BytePtr[v203];
                        v206.i64[0] = v205;
                        v206.i64[1] = DWORD1(v205);
                        v207 = vcvtq_f64_u64(v206);
                        v206.i64[0] = DWORD2(v205);
                        v206.i64[1] = HIDWORD(v205);
                        *v204 = v207;
                        v204[1] = vcvtq_f64_u64(v206);
                        v208 = *&v196[v203];
                        v206.i64[0] = v208;
                        v206.i64[1] = DWORD1(v208);
                        v209 = vcvtq_f64_u64(v206);
                        v206.i64[0] = DWORD2(v208);
                        v206.i64[1] = HIDWORD(v208);
                        v204[129] = vcvtq_f64_u64(v206);
                        v204[128] = v209;
                        v210 = *&v198[v203];
                        v206.i64[0] = v210;
                        v206.i64[1] = DWORD1(v210);
                        v211 = vcvtq_f64_u64(v206);
                        v206.i64[0] = DWORD2(v210);
                        v206.i64[1] = HIDWORD(v210);
                        v204[257] = vcvtq_f64_u64(v206);
                        v204[256] = v211;
                        v203 += 16;
                        v204 += 2;
                      }

                      while (v203 != 1024);
                    }

                    v365 = 0;
                    v366 = 0;
                    LOWORD(v363) = 0;
                    FigCFDictionaryGetInt16IfPresent();
                    v354 = v184;
                    if (v363 <= 0)
                    {
                      if ((*(v184 + 1216) - 256) >= 0xFFFFFFC8)
                      {
                        v212 = *(v184 + 1216);
                      }

                      else
                      {
                        v212 = 255;
                      }
                    }

                    else
                    {
                      HIWORD(v365) = v363;
                      FigCFDictionaryGetInt16IfPresent();
                      FigCFDictionaryGetInt16IfPresent();
                      FigCFDictionaryGetInt16IfPresent();
                      if ((*(v184 + 1216) - 256) >= 0xFFFFFFC8)
                      {
                        v212 = *(v184 + 1216);
                      }

                      else
                      {
                        v212 = 255;
                      }

                      if (v363 >= 1)
                      {
                        v213 = 0;
                        v214 = vcvts_n_f32_s32(SWORD2(v365), 8uLL);
                        v215 = vcvts_n_f32_s32(SHIWORD(v365), 8uLL);
                        v216 = vcvts_n_f32_s32(v366, 8uLL);
                        v217 = (v216 + vcvts_n_f32_s32(SWORD1(v366), 8uLL)) + -2.0;
                        do
                        {
                          v218 = vcvts_n_f32_u32(v213, 8uLL);
                          *&v367[4 * v213] = v218;
                          v219 = fminf(v215 * fmaxf(v218 - v214, 0.0), 1.0);
                          v220 = v219 * (v216 + (v219 * (((1.0 - v216) - v217) + (v219 * v217))));
                          if (v220 < 0.0)
                          {
                            v220 = 0.0;
                          }

                          if (v220 > 1.0)
                          {
                            v220 = 1.0;
                          }

                          *(&time.origin.x + v213++) = v220;
                        }

                        while (v213 != 257);
                        v221 = 0;
                        v222 = 0;
                        LODWORD(time.origin.x) = 0;
                        v373 = 1065353216;
                        v223 = 1;
                        v224 = v369;
                        do
                        {
                          v225 = *(v179 + 9184 + 4 * v221);
                          if (v225 >= v224)
                          {
                            v225 = v224;
                          }

                          if (v222 <= 0xFF)
                          {
                            v226 = v222;
                            do
                            {
                              v227 = *&v367[4 * v226];
                              if (v227 >= v225)
                              {
                                break;
                              }

                              if (v225 >= v227 && v227 > *&v367[4 * v222])
                              {
                                v222 = v226;
                              }

                              ++v226;
                            }

                            while (v226 != 256);
                          }

                          if (v223 <= 0x100)
                          {
                            v228 = v223;
                            do
                            {
                              v229 = *&v367[4 * v228];
                              if (v225 <= v229)
                              {
                                v223 = v228;
                                if (v229 > *&v367[4 * v222])
                                {
                                  break;
                                }
                              }

                              ++v228;
                            }

                            while (v228 != 257);
                          }

                          ispToneCurve[v221++] = *(&time.origin.x + v222) + (((*(&time.origin.x + v223) - *(&time.origin.x + v222)) / (*&v367[4 * v223] - *&v367[4 * v222])) * (v225 - *&v367[4 * v222]));
                        }

                        while (v221 != 257);
                        goto LABEL_332;
                      }
                    }

                    v271 = CFDictionaryGetValue(theDicta, *off_1E798B358);
                    if (v271)
                    {
                      v272 = CFDataGetBytePtr(v271);
                      if (v272)
                      {
                        if (*v272 == 257)
                        {
                          for (i = 0; i != 257; ++i)
                          {
                            LOWORD(v273) = *&v272[2 * i + 2];
                            v273 = LODWORD(v273) * 0.000015259;
                            ispToneCurve[i] = v273;
                          }
                        }
                      }
                    }

LABEL_332:
                    v275 = v185 + v190;
                    v276 = 256;
                    do
                    {
                      v277 = v276;
                      v278 = ispToneCurve[v276--];
                    }

                    while (v278 > (v212 / 255.0));
                    v279 = v277 - 1;
                    v280 = v277 - 1;
                    do
                    {
                      v281 = v280;
                      v282 = ispToneCurve[v280--];
                    }

                    while (v282 > ((v212 - 1) / 255.0));
                    if (v277 <= 0xFE)
                    {
                      for (j = 254; j >= v277; --j)
                      {
                        *(BytePtr + 255) += *&BytePtr[4 * j];
                        *(v196 + 255) += *&v196[4 * j];
                        *(v199 + 255) += *&v199[4 * j];
                      }
                    }

                    *(BytePtr + 254) = *&BytePtr[4 * v279];
                    *(v196 + 254) = *&v196[4 * v279];
                    v284 = *&v199[4 * v279];
                    *(v199 + 254) = v284;
                    v285 = v277 - 2;
                    if ((v277 - 2) >= v281 && v279 > v281)
                    {
                      do
                      {
                        *(BytePtr + 254) += *&BytePtr[4 * v285];
                        *(v196 + 254) += *&v196[4 * v285];
                        v284 = *(v199 + 254) + *&v199[4 * v285];
                        *(v199 + 254) = v284;
                        --v285;
                      }

                      while (v285 >= v281);
                    }

                    v339 = v186;
                    v286 = *(v354 + 1000);
                    if (v286 >= 1)
                    {
                      v287 = 0;
                      v359 = v354 + 1008;
                      v288 = *(v354 + 1004);
                      do
                      {
                        v289 = v287;
                        v290 = *(v354 + 1072 + 4 * v287);
                        v291 = 0.0;
                        if (v290 > 4)
                        {
                          switch(v290)
                          {
                            case 5:
                              v293 = *&BytePtr[4 * *(v359 + 4 * v289)];
                              v294 = *(BytePtr + 255);
                              goto LABEL_358;
                            case 6:
                              v293 = *&v196[4 * *(v359 + 4 * v289)];
                              v294 = *(v196 + 255);
                              goto LABEL_358;
                            case 7:
                              v293 = *&v199[4 * *(v359 + 4 * v289)];
                              v294 = *(v199 + 255);
LABEL_358:
                              v291 = v293 / v294;
                              break;
                          }
                        }

                        else
                        {
                          switch(v290)
                          {
                            case 1:
                              v292 = *&BytePtr[4 * *(v359 + 4 * v289)];
                              goto LABEL_356;
                            case 2:
                              v292 = *&v196[4 * *(v359 + 4 * v289)];
                              goto LABEL_356;
                            case 3:
                              v292 = *&v199[4 * *(v359 + 4 * v289)];
LABEL_356:
                              v291 = v292 / v342;
                              break;
                          }
                        }

                        v295 = *(v354 + 1136 + 4 * v289);
                        v193 = v193 + (v295 * powf(v291, v288));
                        v287 = v289 + 1;
                      }

                      while (v286 > (v289 + 1));
                    }

                    *(v179 + 16360) = v277;
                    *(v179 + 16368) = v281;
                    v296 = *(BytePtr + 127);
                    v297.i64[0] = v296;
                    v297.i64[1] = HIDWORD(v296);
                    *(v179 + 9128) = vcvtq_f64_u64(v297);
                    v298 = *(v196 + 127);
                    v297.i64[0] = v298;
                    v297.i64[1] = HIDWORD(v298);
                    v299 = vcvtq_f64_u64(v297);
                    *(v179 + 9144) = v299;
                    *(v179 + 9160) = v284;
                    LODWORD(v299.f64[0]) = *(v199 + 255);
                    *(v179 + 9168) = *&v299.f64[0];
                    *(v179 + 9176) = v342;
                    *&valuePtr = 0.0;
                    FigCFDictionaryGetFloatIfPresent();
                    v364 = 0.0;
                    if (*(v354 + 1248) > 0.0)
                    {
                      FigCaptureComputeImageGainFromMetadata();
                    }

                    v300 = *(v354 + 1236);
                    v301 = v193;
                    v302 = *(v179 + 17344) % v300;
                    *(v179 + 16376 + 8 * v302) = v193;
                    v178 = v361;
                    if (*(v179 + 17354))
                    {
                      goto LABEL_363;
                    }

                    v304 = *(v354 + 1244);
                    if (v364 <= 0.0)
                    {
                      if (*&valuePtr > v304 || *v375 < *(v354 + 1212))
                      {
                        goto LABEL_370;
                      }
                    }

                    else if (*&valuePtr >= v304 || v364 >= *(v354 + 1248))
                    {
LABEL_370:
                      v303 = 1;
LABEL_371:
                      v305 = (*v344 + v303) & ~((*v344 + v303) >> 31);
                      *v344 = v305;
                      if (v305 >= *(v354 + 1232))
                      {
                        v305 = *(v354 + 1232);
                      }

                      *v344 = v305;
                      *(v179 + 16856 + 8 * v302) = vabdd_f64(v301, *(v179 + 9104));
                      *(v179 + 9104) = v301;
                      *(v179 + 17344) = v302 + 1;
                      if (v300 < 1)
                      {
                        v306 = 0;
                        v308 = 0.0;
                      }

                      else
                      {
                        v306 = 0;
                        v307 = 0;
                        v308 = 0.0;
                        v309 = 0.0;
                        do
                        {
                          v310 = *(v179 + 16376 + 8 * v307);
                          if (v310 < 1.79769313e308)
                          {
                            ++v306;
                            v309 = v309 + v310;
                            v308 = v308 + *(v179 + 16856 + 8 * v307);
                          }

                          ++v307;
                        }

                        while (v300 > v307);
                        if (v306)
                        {
                          *(v179 + 9096) = v309 / v306;
                          v308 = v308 / v306;
                          *(v179 + 17353) = v305 > 0;
                        }
                      }

                      if (v306 >= *(v354 + 1240))
                      {
                        v311 = v275;
                      }

                      else
                      {
                        v311 = v275 + v275;
                      }

                      if (*(v179 + 7464) == 2)
                      {
                        if (v348)
                        {
                          goto LABEL_390;
                        }

                        v312 = *(v179 + 17353);
                        if (v312 != 1)
                        {
                          goto LABEL_390;
                        }
                      }

                      else
                      {
                        LOBYTE(v312) = 0;
                      }

                      *(v179 + 17352) = v312;
LABEL_390:
                      v313 = CMBaseObjectGetDerivedStorage();
                      v314 = CMGetAttachment(sbuf, v361, 0);
                      v315 = CFDictionaryGetValue(v314, pixelBufferb);
                      v316 = af_sbp_getCameraParametersForPortType(a1, v315);
                      if (v316)
                      {
                        v317 = v316;
                        v318 = *(v316 + 1208);
                        v319 = v354;
                        LODWORD(time.origin.x) = 0;
                        v320 = CFDictionaryGetValue(v314, *off_1E798CEC8);
                        if (v320)
                        {
                          CFNumberGetValue(v320, kCFNumberFloatType, &time);
                          v321 = *(v317 + 1236);
                          v322 = *(v313 + 17348) % v321;
                          v323 = *&time.origin.x;
                          *(v313 + 16616 + 8 * v322) = *&time.origin.x;
                          *(v313 + 17096 + 8 * v322) = vabdd_f64(v323, *(v313 + 9120));
                          *(v313 + 9120) = v323;
                          *(v313 + 17348) = v322 + 1;
                          if (v321 < 1)
                          {
                            v324 = 0;
                            v326 = 0.0;
                          }

                          else
                          {
                            v324 = 0;
                            v325 = 0;
                            v326 = 0.0;
                            v327 = 0.0;
                            do
                            {
                              v328 = *(v313 + 16616 + 8 * v325);
                              if (v328 < 1.79769313e308)
                              {
                                ++v324;
                                v327 = v327 + v328;
                                v326 = v326 + *(v313 + 17096 + 8 * v325);
                              }

                              ++v325;
                            }

                            while (v321 > v325);
                            if (v324)
                            {
                              *(v313 + 9112) = v327 / v324;
                              v326 = v326 / v324;
                            }
                          }

                          if (v324 < *(v317 + 1240))
                          {
                            v318 = v318 + v318;
                          }

                          *v367 = 0;
                          v330 = CFDictionaryGetValue(v314, key);
                          if (v330)
                          {
                            CFNumberGetValue(v330, kCFNumberSInt32Type, v367);
                            v331 = 1224;
                            if (!*v367)
                            {
                              v331 = 1220;
                            }
                          }

                          else
                          {
                            v331 = 1220;
                          }

                          v176 = sbuf;
                          v332 = *(v317 + v331);
                          if (v339)
                          {
                            v332 = -v332;
                          }

                          v329 = *(v313 + 9112) > (v318 + v332);
                        }

                        else
                        {
                          v329 = 0;
                          v326 = 0.0;
                          v176 = sbuf;
                        }

                        v177 = v360;
                      }

                      else
                      {
                        v329 = 0;
                        v326 = 0.0;
                        v176 = sbuf;
                        v177 = v360;
                        v319 = v354;
                      }

                      v333 = *(v179 + 9096) <= v311 && !v329;
                      if (!v333 && (*(v179 + 17353) != 1 || *(v179 + 17352) == 1))
                      {
                        *(v179 + 9092) = 1;
                      }

                      v334 = *(v319 + 1228);
                      if (v308 > v334 && v326 > v334 && *(v179 + 9092) != v339)
                      {
                        *(v179 + 9092) = v339;
                      }

                      goto LABEL_276;
                    }

LABEL_363:
                    v303 = -1;
                    goto LABEL_371;
                  }
                }
              }

              else
              {
                FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
                LODWORD(v365) = 0;
                LOBYTE(v375[1]) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v232 = v365;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v375[1]))
                {
                  v233 = v232;
                }

                else
                {
                  v233 = v232 & 0xFFFFFFFE;
                }

                if (v233)
                {
                  *v367 = 136315394;
                  *&v367[4] = "hdrSceneDetectionProcessing";
                  *&v367[12] = 2112;
                  *&v367[14] = v182;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                LODWORD(time.origin.x) = 138412290;
                *(&time.origin.x + 4) = v182;
                v234 = _os_log_send_and_compose_impl();
                FigCapturePleaseFileRadar(FrameworkRadarComponent, v234, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/VideoProcessors/Autofocus/FigSampleBufferProcessor_Autofocus.m", 915, @"LastShownDate:FigSampleBufferProcessor_Autofocus.m:915", @"LastShownBuild:FigSampleBufferProcessor_Autofocus.m:915", 0);
                free(v234);
              }

LABEL_276:
              v235 = *(v177 + 7460);
              v236 = *(v177 + 7604);
              if (v235 <= 0 && v236 < 1)
              {
                goto LABEL_291;
              }

              if (v235 >= 1)
              {
                v237 = *(v177 + 7544);
                if (v237)
                {
                  captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC30, v237);
                }
              }

              if (v236 >= 1)
              {
                v238 = *(v177 + 9072);
                if (v238)
                {
                  v239 = off_1E798CC68;
LABEL_286:
                  captureStreamSetPropertyOnActivityScheduler(a1, *v239, v238);
                  goto LABEL_287;
                }

                v238 = *(v177 + 9040);
                if (v238)
                {
                  v239 = off_1E798BC50;
                  goto LABEL_286;
                }
              }

LABEL_287:
              captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC80, *MEMORY[0x1E695E4D0]);
              if (v235)
              {
                atomic_fetch_add_explicit((v177 + 7460), -v235, memory_order_relaxed);
              }

              if (v236)
              {
                atomic_fetch_add_explicit((v177 + 7604), -v236, memory_order_relaxed);
              }

LABEL_291:
              v240 = CMBaseObjectGetDerivedStorage();
              v241 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v242 = CMBaseObjectGetDerivedStorage();
              v243 = CMGetAttachment(v176, v178, 0);
              LODWORD(v365) = 0;
              *v375 = 0;
              *&valuePtr = 0.0;
              if (*(v242 + 7464) == 2)
              {
                v244 = 3;
              }

              else
              {
                v244 = 1;
              }

              [v241 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v244), *off_1E798B4E8}];
              v245 = *off_1E798C0E0;
              v246 = [v243 objectForKeyedSubscript:*off_1E798C0E0];
              [v241 setObject:v246 forKeyedSubscript:v245];
              FigImageControl_CurrentFocusRectByPortType(a1);
              v247 = *(MEMORY[0x1E695F050] + 16);
              time.origin = *MEMORY[0x1E695F050];
              time.size = v247;
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                v248 = (time.origin.y * 1000.0);
                v249 = (time.size.width * 1000.0);
                LODWORD(v365) = (time.origin.x * 1000.0);
                v375[0] = (time.size.width * 1000.0);
                v375[1] = (time.origin.y * 1000.0);
                v250 = (time.size.height * 1000.0);
                valuePtr = (time.size.height * 1000.0);
                *v367 = [MEMORY[0x1E696AD98] numberWithInt:?];
                *&v367[8] = [MEMORY[0x1E696AD98] numberWithInt:v248];
                *&v367[16] = [MEMORY[0x1E696AD98] numberWithInt:v249];
                v251 = MEMORY[0x1E696AD98];
                v252 = v250;
              }

              else
              {
                FigImageControl_CurrentFocusRect(a1, &v365, &v375[1], v375, &valuePtr);
                if (v375[0] < 1 || valuePtr < 1)
                {
                  goto LABEL_297;
                }

                if (*(v242 + 7672) == 1)
                {
                  v268 = v365;
                }

                else
                {
                  v269 = af_sbp_getCameraParametersForPortType(a1, v246);
                  if (!v269)
                  {
LABEL_308:
                    if ((*(v240 + 88) & 1) == 0)
                    {
                      FigSimpleMutexLock();
                      if ((*(v240 + 88) & 1) == 0)
                      {
                        v263 = v240 + 17376;
                        v264 = *(v240 + 17376 + 16 * *(v240 + 17360) + 8);
                        if (v264)
                        {
                          CFRelease(v264);
                          *(v263 + 16 * *(v240 + 17360) + 8) = 0;
                        }

                        CMSampleBufferGetPresentationTimeStamp(&time, v176);
                        *(v263 + 16 * *(v240 + 17360)) = CMTimeGetSeconds(&time);
                        v265 = v241;
                        v266 = *(v240 + 17360);
                        *(v263 + 16 * v266 + 8) = v265;
                        *(v240 + 17360) = (v266 + 1) % 20;
                      }

                      FigSimpleMutexUnlock();
                    }

                    return 0;
                  }

                  LODWORD(v267) = *v269;
                  v268 = v365;
                  if (*v269 != 1.0)
                  {
                    v270 = (1000.0 - 1000.0 / *&v267) * 0.5;
                    v268 = (*&v267 * (v365 - v270));
                    LODWORD(v365) = (*&v267 * (v365 - v270));
                    v375[0] = (*&v267 * v375[0]);
                    v375[1] = (*&v267 * (v375[1] - v270));
                    *&v267 = *&v267 * valuePtr;
                    valuePtr = *&v267;
                  }
                }

                *v367 = [MEMORY[0x1E696AD98] numberWithInt:{v268, v267}];
                *&v367[8] = [MEMORY[0x1E696AD98] numberWithInt:v375[1]];
                *&v367[16] = [MEMORY[0x1E696AD98] numberWithInt:v375[0]];
                v251 = MEMORY[0x1E696AD98];
                v252 = valuePtr;
              }

              v368 = [v251 numberWithInt:v252];
              [v241 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v367, 4), *off_1E7989DF8}];
LABEL_297:
              v253 = [v243 objectForKeyedSubscript:*off_1E798B088];
              v254 = [v243 objectForKeyedSubscript:*off_1E798B048];
              if (v253 && v254)
              {
                *&v255 = log2f(([v254 intValue] / objc_msgSend(v253, "intValue")));
                [v241 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v255), @"AEOffset"}];
              }

              v256 = *(v242 + 7464);
              if (v256 - 1 >= 5)
              {
                v257 = 0;
              }

              else
              {
                v257 = v256;
              }

              [v241 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v257), *off_1E798A5C0}];
              ImageBuffer = CMSampleBufferGetImageBuffer(v176);
              if (ImageBuffer)
              {
                v259 = CVBufferCopyAttachment(ImageBuffer, v178, 0);
                if (v259)
                {
                  v260 = CFAutorelease(v259);
                  if (v260)
                  {
                    v261 = v260;
                    v262 = *off_1E798A658;
                    if ([v260 objectForKeyedSubscript:*off_1E798A658])
                    {
                      [v241 setObject:objc_msgSend(v261 forKeyedSubscript:{"objectForKeyedSubscript:", v262), v262}];
                    }
                  }
                }
              }

              goto LABEL_308;
            }

            v47 = v10 + 4096;
            if (*(v10 + 6216))
            {
              v48 = 0;
              goto LABEL_63;
            }
          }

          if (v19 < 0.0016)
          {
            *(v10 + 6264) = (((1.0 - ((v19 * 62.5) + 0.9)) * x_low) + (*(v10 + 6264) * ((v19 * 62.5) + 0.9)));
          }

          if (*(v10 + 9064))
          {
            v49 = [*(v10 + 9064) objectForKeyedSubscript:{CFDictionaryGetValue(v11, *off_1E798B540)}];
            v50 = *(MEMORY[0x1E695F050] + 16);
            time.origin = *MEMORY[0x1E695F050];
            time.size = v50;
            CGRectMakeWithDictionaryRepresentation(v49, &time);
            if (CGRectIsNull(time))
            {
              goto LABEL_221;
            }

            v51 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(time.origin, vdupq_n_s64(0x408F400000000000uLL))));
            v52 = (time.size.width * 1000.0);
            v53 = (time.size.height * 1000.0);
          }

          else
          {
            v52 = *(v10 + 7628);
            if (v52 < 1 || (v53 = *(v10 + 7632), v53 < 1))
            {
              v52 = *(v10 + 7484);
              if (!v52)
              {
                goto LABEL_221;
              }

              v53 = *(v10 + 7488);
              if (!v53)
              {
                goto LABEL_221;
              }

              v69 = (v10 + 7476);
            }

            else
            {
              v69 = (v10 + 7620);
            }

            v51 = *v69;
          }

          if ((*(v10 + 4336) & 1) == 0)
          {
            v84 = *(v10 + 6296);
            if (v84)
            {
              CFRelease(v84);
              *(v10 + 6296) = 0;
            }

            goto LABEL_221;
          }

          v357 = v51;
          CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
          Seconds = CMTimeGetSeconds(&time);
          if (Seconds - *(v10 + 6304) < 0.00826446281)
          {
            goto LABEL_221;
          }

          *(v10 + 6304) = Seconds;
          v71 = (*(v10 + 5492) + 1) & 0x1F;
          *(v10 + 5492) = *&v71;
          valuePtr = v71;
          v72 = pixelBuffer;
          PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
          v345 = a1;
          if (!FigCapturePixelFormatGetCompressionType(PixelFormatType) && !FigCapturePixelFormatIsTenBit(PixelFormatType))
          {
            if (!pixelBuffer)
            {
              processBuffer_cold_1(&time);
              goto LABEL_131;
            }

LABEL_102:
            v83 = CVPixelBufferGetPixelFormatType(v72);
            if (v83 > 2037741157)
            {
              if (v83 != 2037741171 && v83 != 2037741158)
              {
                goto LABEL_167;
              }

              v353 = 0;
            }

            else
            {
              v353 = 1;
              if (v83 != 875704422 && v83 != 875704438)
              {
LABEL_167:
                fig_log_get_emitter();
                x = *&v2;
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v336, v337, v338, v340, v341, v343);
                goto LABEL_168;
              }
            }

            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v72, 0);
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(v72, 0);
            pixelBuffera = v72;
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(v72, 0);
            v88 = v357.i32[0] * WidthOfPlane / 1000;
            v89 = v52 * WidthOfPlane / 1000;
            v90 = v357.i32[1] * HeightOfPlane / 1000;
            v91 = v53 * HeightOfPlane / 1000;
            if (v357.i32[0] * WidthOfPlane >= -999)
            {
              v92 = (v357.i32[0] * WidthOfPlane / 1000) & 0xF;
            }

            else
            {
              v92 = v357.i32[0] * WidthOfPlane / 1000;
            }

            v93 = v88 - v92;
            v94 = v92 + v89;
            if (v357.i32[1] * HeightOfPlane >= -999)
            {
              v95 = (v357.i32[1] * HeightOfPlane / 1000) & 3;
            }

            else
            {
              v95 = v357.i32[1] * HeightOfPlane / 1000;
            }

            v96 = WidthOfPlane - (v89 + v88);
            if (WidthOfPlane >= v89 + v88)
            {
              v96 = ((v94 + 7) & 0xFFFFFFF0) - v94;
            }

            if (v91 + v90 <= HeightOfPlane)
            {
              v97 = v91 + v90 - ((v95 + v91) & 3);
            }

            else
            {
              v97 = HeightOfPlane;
            }

            if (v93 >= WidthOfPlane)
            {
              processBuffer_cold_5(&time);
              goto LABEL_131;
            }

            v98 = v90 - v95;
            if (v90 - v95 >= HeightOfPlane)
            {
              processBuffer_cold_6(&time);
              goto LABEL_131;
            }

            v99 = v96 + v94;
            if ((v96 + v94 + v93) > WidthOfPlane)
            {
              processBuffer_cold_12(&time);
              goto LABEL_131;
            }

            if (v97 > HeightOfPlane)
            {
              processBuffer_cold_11(&time);
              goto LABEL_131;
            }

            if (v353)
            {
              if (BytesPerRowOfPlane < WidthOfPlane)
              {
LABEL_130:
                processBuffer_cold_10(&time);
LABEL_131:
                x = time.origin.x;
LABEL_168:
                v150 = -12780;
LABEL_169:
                fig_log_get_emitter();
                LODWORD(v335) = v150;
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, *&x, v336, v337, v338, v340, v341, v343);
                a1 = v345;
                v9 = theDict;
                goto LABEL_221;
              }
            }

            else if (BytesPerRowOfPlane < 2 * WidthOfPlane)
            {
              goto LABEL_130;
            }

            v358 = v95;
            v347 = v92;
            v371 = 0u;
            v372 = 0u;
            memset(&time, 0, sizeof(time));
            v101 = CVPixelBufferLockBaseAddress(pixelBuffera, 1uLL);
            if (v101)
            {
              v150 = v101;
              processBuffer_cold_7(v101);
            }

            else
            {
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffera, 0);
              if (!BaseAddressOfPlane)
              {
                processBuffer_cold_9(v367);
                x = *v367;
                goto LABEL_168;
              }

              if (v353)
              {
                if (v98 < v97)
                {
                  v103 = v98;
                  v104 = &BaseAddressOfPlane[BytesPerRowOfPlane * v98 + v88 - v347];
                  v105 = 4 * BytesPerRowOfPlane;
                  v106 = v90 - v358;
                  v107 = &BaseAddressOfPlane[BytesPerRowOfPlane + BytesPerRowOfPlane * v106 + v88 - v347];
                  v108 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v106 + 2) + v88 - v347];
                  v109 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v106 + 3) + v88 - v347];
                  do
                  {
                    if (v99 >= 1)
                    {
                      v110 = 0;
                      do
                      {
                        v111 = vshrq_n_u32(vpaddlq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(*&v107[v110]), *&v104[v110]), *&v108[v110]), *&v109[v110])), 8uLL);
                        ++*(&time.origin.x + v111.u32[0]);
                        ++*(&time.origin.x + v111.u32[1]);
                        ++*(&time.origin.x + v111.u32[2]);
                        ++*(&time.origin.x + v111.u32[3]);
                        v110 += 16;
                      }

                      while (v110 < v99);
                    }

                    v103 += 4;
                    v104 += v105;
                    v107 += v105;
                    v108 += v105;
                    v109 += v105;
                  }

                  while (v103 < v97);
                }
              }

              else if (v98 < v97)
              {
                v112 = 2 * v93;
                v113 = v98;
                v114 = &BaseAddressOfPlane[BytesPerRowOfPlane * v98];
                v115 = 4 * BytesPerRowOfPlane;
                v116 = v90 - v358;
                v117 = &BaseAddressOfPlane[BytesPerRowOfPlane + BytesPerRowOfPlane * v116];
                v118 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v116 + 2)];
                v119 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v116 + 3)];
                do
                {
                  if (v99 >= 1)
                  {
                    v120 = 0;
                    v121 = v119;
                    v122 = v118;
                    v123 = v117;
                    v124 = v114;
                    do
                    {
                      v125 = &v123[v112];
                      v126 = vld2q_s8(v125);
                      v127 = &v124[v112];
                      v128 = vld2q_s8(v127);
                      v129 = &v122[v112];
                      v130 = vld2q_s8(v129);
                      v131 = &v121[v112];
                      v132 = vld2q_s8(v131);
                      v133 = vshrq_n_u32(vpaddlq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v126), v128), v130), v132)), 8uLL);
                      ++*(&time.origin.x + v133.u32[0]);
                      ++*(&time.origin.x + v133.u32[1]);
                      ++*(&time.origin.x + v133.u32[2]);
                      ++*(&time.origin.x + v133.u32[3]);
                      v120 += 16;
                      v124 += 32;
                      v123 += 32;
                      v122 += 32;
                      v121 += 32;
                    }

                    while (v120 < v99);
                  }

                  v113 += 4;
                  v114 += v115;
                  v117 += v115;
                  v118 += v115;
                  v119 += v115;
                }

                while (v113 < v97);
              }

              v134 = CVPixelBufferUnlockBaseAddress(pixelBuffera, 1uLL);
              if (!v134)
              {
                v135 = 0;
                v136 = 0uLL;
                do
                {
                  v136 = vaddq_s32(*(&time.origin + v135), v136);
                  v135 += 16;
                }

                while (v135 != 64);
                v137 = 0;
                v138 = vaddvq_s32(v136);
                v139 = valuePtr;
                v140 = v10 + 32 * valuePtr;
                do
                {
                  *(v140 + 4338 + 2 * v137) = 4095 * *(&time.origin.x + v137) / v138;
                  ++v137;
                }

                while (v137 != 16);
                v141 = 0;
                v142 = v140 + 4338;
                v143 = v10 + 32 * ((v139 + 26) & 0x1F) + 4338;
                v144 = 0.0;
                do
                {
                  if (*(v143 + v141) && *(v142 + v141))
                  {
                    v145 = *(v143 + v141);
                    v144 = v144 + (v145 * log2f(v145 / *(v142 + v141)));
                  }

                  v141 += 2;
                }

                while (v141 != 32);
                v146 = 0;
                ++*(v10 + 5496);
                *(v10 + 5364 + 4 * v139) = fmaxf(v144, 0.0);
                v147 = v139 - 1;
                v148 = -5;
                do
                {
                  if (*(v10 + 5364 + 4 * (v147 & 0x1F)) > *(v10 + 9088))
                  {
                    ++v146;
                  }

                  --v147;
                }

                while (!__CFADD__(v148++, 1));
                a1 = v345;
                v9 = theDict;
                if (v146 >= 4 && *(v10 + 5496) >= 49)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  CMNotificationCenterPostNotification();
                }

                goto LABEL_221;
              }

              v150 = v134;
              processBuffer_cold_8(v134);
            }

            x = *v367;
            goto LABEL_169;
          }

          v74 = CMBaseObjectGetDerivedStorage();
          if (*(v74 + 6296))
          {
            goto LABEL_97;
          }

          v75 = CVPixelBufferGetPixelFormatType(pixelBuffer);
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          if (FigCapturePixelFormatIsFullRange(v75))
          {
            v78 = 875704422;
          }

          else
          {
            v78 = 875704438;
          }

          v79 = Width >> 2;
          if (Width <= 0xA03)
          {
            v79 = 640;
          }

          if (v79 >= Width)
          {
            v79 = Width;
          }

          v80 = 2 * llroundf(vcvts_n_f32_u64(v79, 1uLL));
          v81 = Height * v80 / Width;
          v9 = theDict;
          if (BWCreateIOSurfaceBackedCVPixelBuffer(v80, 2 * llroundf(vcvts_n_f32_u64(v81, 1uLL)), v78, (v74 + 6296), @"AF SBP: Scene Monitoring Intermediate"))
          {
            processBuffer_cold_2();
          }

          else
          {
LABEL_97:
            v82 = *(v74 + 6288);
            if (!v82)
            {
              if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (v74 + 6288)))
              {
                processBuffer_cold_3();
                goto LABEL_435;
              }

              v82 = *(v74 + 6288);
            }

            if (VTPixelTransferSessionTransferImage(v82, pixelBuffer, *(v74 + 6296)))
            {
              processBuffer_cold_4();
            }

            else
            {
              v72 = *(v74 + 6296);
              if (v72)
              {
                goto LABEL_102;
              }
            }
          }

LABEL_435:
          processBuffer_cold_13();
          goto LABEL_221;
        }
      }
    }

    else
    {
      v39 = a1;
    }

    x_low = 0;
    goto LABEL_52;
  }

  return result;
}

uint64_t FigImageControl_Sharpness(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 736))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 7448))
  {
    return 0;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v6 = v5;
  v7 = 0;
  v48 = 0u;
  v49 = 0u;
  *values = 0u;
  v47 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = (v5 + 736);
  *keys = 0u;
  v42 = 0u;
  while (*&v8[4 * v7])
  {
    if (++v7 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v7)
  {
LABEL_9:
    keys[0] = *off_1E798BB58;
    v9 = v7;
    values[0] = createCFArrayFromIntArray((v5 + 696), v7);
    keys[1] = *off_1E798BB50;
    values[1] = createCFArrayFromIntArray(v8, v9);
    v10 = 2;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  v11 = 0;
  while (*&v6[4 * v11 + 896])
  {
    if (++v11 == 10)
    {
      goto LABEL_15;
    }
  }

  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_15:
  keys[v10] = *off_1E798BB28;
  v12 = v11;
  values[v10] = createCFArrayFromIntArray(v6 + 856, v11);
  v13 = a1;
  v14 = v10 | 1;
  keys[v10 | 1u] = *off_1E798BB20;
  v10 += 2;
  values[v14] = createCFArrayFromIntArray(v6 + 896, v12);
  a1 = v13;
LABEL_16:
  v15 = 0;
  v16 = v6 + 936;
  while (*&v16[4 * v15])
  {
    if (++v15 == 10)
    {
      goto LABEL_21;
    }
  }

  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_21:
  keys[v10] = *off_1E798BA48;
  v17 = v15;
  values[v10] = createCFArrayFromIntArray(v16, v15);
  v18 = v10 + 1;
  keys[v10 + 1] = *off_1E798BA40;
  v10 += 2;
  values[v18] = createCFArrayFromIntArray(v6 + 976, v17);
LABEL_22:
  v19 = MEMORY[0x1E695E480];
  if (v10 >= 1)
  {
    v20 = v10;
    v21 = values;
    v22 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFD0, v22);
    do
    {
      v23 = *v21++;
      CFRelease(v23);
      --v20;
    }

    while (v20);
    CFRelease(v22);
  }

  v24 = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *values = 0u;
  v47 = 0u;
  v26 = (v24 + 1448);
  v27 = (v24 + 1448);
  while (*(v27 - 8) && *v27)
  {
    ++v27;
    if (++v25 == 8)
    {
      goto LABEL_32;
    }
  }

  if (!v25)
  {
    v4 = 0;
    goto LABEL_57;
  }

LABEL_32:
  v40 = a1;
  v28 = 0;
  v29 = *v19;
  v30 = *off_1E798ADD0;
  v31 = *off_1E798ADD8;
  do
  {
    v32 = CFNumberCreate(v29, kCFNumberSInt32Type, v26 - 32);
    v33 = CFNumberCreate(v29, kCFNumberSInt32Type, v26);
    v34 = v33;
    keys[0] = v30;
    keys[1] = v31;
    v45[0] = v32;
    v45[1] = v33;
    if (v32 && v33)
    {
      v35 = CFDictionaryCreate(v29, keys, v45, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      values[v28] = v35;
      if (v35)
      {
        v4 = 0;
      }

      else
      {
        v4 = 4294954510;
      }
    }

    else
    {
      v4 = 4294954510;
      if (!v32)
      {
        goto LABEL_40;
      }
    }

    CFRelease(v32);
LABEL_40:
    if (v34)
    {
      CFRelease(v34);
    }

    if (v4)
    {
      FigImageControl_Sharpness_cold_1(v4, v45, keys);
      v36 = 0;
      goto LABEL_48;
    }

    ++v28;
    v26 += 4;
  }

  while (v25 != v28);
  v50 = CFArrayCreate(v29, values, v25, MEMORY[0x1E695E9C0]);
  if (!v50)
  {
    FigImageControl_Sharpness_cold_4();
    v36 = 0;
LABEL_63:
    v4 = 4294954510;
    goto LABEL_48;
  }

  v36 = CFDictionaryCreate(v29, off_1E798ADE0, &v50, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v36)
  {
    FigImageControl_Sharpness_cold_3();
    goto LABEL_63;
  }

  v37 = captureStreamSetPropertyOnActivityScheduler(v40, *off_1E798BEB0, v36);
  v4 = v37;
  if (v37)
  {
    FigImageControl_Sharpness_cold_2(v37);
  }

LABEL_48:
  v38 = values;
  do
  {
    if (*v38)
    {
      CFRelease(*v38);
    }

    ++v38;
    --v25;
  }

  while (v25);
  if (v50)
  {
    CFRelease(v50);
  }

  if (v36)
  {
    CFRelease(v36);
  }

LABEL_57:
  *(v3 + 7448) = 1;
  return v4;
}

uint64_t FigImageControl_ToneMapping(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v6 = 0;
  v117 = 256;
  v118 = 256;
  valuePtr = 64;
  v116 = 256;
  v113 = 64;
  v114 = 64;
  v112 = 0;
  if ((*(DerivedStorage + 6336) & 1) == 0)
  {
    if (*(DerivedStorage + 508))
    {
      v6 = 0;
    }

    else
    {
      *(DerivedStorage + 6348) = 1065353216;
      *(DerivedStorage + 6352) = *(DerivedStorage + 584);
      v7 = *(DerivedStorage + 580);
      *(DerivedStorage + 6368) = v7;
      *(DerivedStorage + 6372) = 1.0 / (1.0 - v7);
      atomic_fetch_add_explicit((DerivedStorage + 6340), 1u, memory_order_relaxed);
      keys[0] = *off_1E798BA80;
      values[0] = *MEMORY[0x1E695E4D0];
      v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BEE8, v8);
      CFRelease(v8);
    }

    *(DerivedStorage + 6336) = 1;
  }

  if (*(DerivedStorage + 508))
  {
    return v6;
  }

  Value = CFDictionaryGetValue(v5, *off_1E798B120);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  v10 = CFDictionaryGetValue(v5, *off_1E798B0F8);
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberIntType, &v114);
  }

  v11 = CFDictionaryGetValue(v5, *off_1E798B0C0);
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberIntType, &v113);
  }

  v12 = CFDictionaryGetValue(v5, *off_1E798B0B8);
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberIntType, &v118);
  }

  v13 = CFDictionaryGetValue(v5, *off_1E798B7D0);
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberIntType, &v117);
  }

  v14 = CFDictionaryGetValue(v5, *off_1E798B7B8);
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberIntType, &v116);
  }

  v16 = v117;
  v15 = v118;
  v17 = v116;
  v18 = CFDictionaryGetValue(v5, *off_1E798B398);
  v19 = CFDictionaryGetValue(v5, *off_1E798B390);
  v20 = CFDictionaryGetValue(v5, *off_1E798B388);
  if (v18)
  {
    if (v19)
    {
      v21 = v20;
      if (v20)
      {
        BytePtr = CFDataGetBytePtr(v18);
        v23 = CFDataGetBytePtr(v19);
        v24 = CFDataGetBytePtr(v21);
        v25 = 0;
        v26 = DerivedStorage + 6388;
        do
        {
          v27 = *&v23[v25] + *&BytePtr[v25] + *&v24[v25];
          v28 = *(v26 + v25);
          if (v28)
          {
            v27 = (5 * v27 + 11 * v28 + 7) >> 4;
          }

          *(v26 + v25) = v27;
          v25 += 4;
        }

        while (v25 != 1024);
      }
    }
  }

  v29 = *(DerivedStorage + 6344);
  *(DerivedStorage + 6344) = v29 + 1;
  if ((v29 & 1) == 0)
  {
    return v6;
  }

  v30 = *(DerivedStorage + 7468);
  if (!v30)
  {
    v30 = *(DerivedStorage + 7464);
  }

  if ((v30 - 3) < 2)
  {
    return v6;
  }

  v110 = *(DerivedStorage + 584);
  v31 = *(DerivedStorage + 580);
  if (*(DerivedStorage + 522) == 1)
  {
    v32 = *(DerivedStorage + 604);
    if (*(DerivedStorage + 40))
    {
      v32 = v32 + (((v32 - *(DerivedStorage + 600)) * -0.066667) * ((((v15 * v16) * v17) * 0.000000059605) + -1.0));
    }

    if (v32 != *(DerivedStorage + 6348))
    {
      *(DerivedStorage + 6348) = v32;
      v112 = vcvts_n_s32_f32(v32, 0xAuLL);
      v33 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v112);
      v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BD60, v33);
      CFRelease(v33);
    }
  }

  v34 = CFDictionaryGetValue(v5, *off_1E798B3A0);
  if (v34)
  {
    *(DerivedStorage + 6384) = 1;
    v36 = CFDataGetBytePtr(v34);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = *(DerivedStorage + 592);
    v43.i32[0] = *(DerivedStorage + 596);
    do
    {
      v41 += *(DerivedStorage + 6388 + v39);
      v40 += *&v36[v39];
      *(keys + v39) = v41;
      *(values + v39) = v40;
      v39 += 4;
    }

    while (v39 != 1024);
    v44 = v41;
    v45 = ((v41 * 0.001) + 0.5);
    v46 = keys[0];
    if (SLODWORD(keys[0]) >= v45)
    {
      v50 = 0;
      v48 = 0;
      v47 = 0;
      v49 = ((v44 * 0.985) + 0.5);
LABEL_47:
      if (v46 < v49)
      {
        v53 = v46;
        while (1)
        {
          v54 = v53;
          if (v47 == 255)
          {
            break;
          }

          v53 = *(keys + ++v47);
          if (v53 >= v49)
          {
            goto LABEL_58;
          }
        }

        LODWORD(v47) = 256;
        goto LABEL_58;
      }

      LODWORD(v47) = v50;
    }

    else
    {
      v47 = 0;
      do
      {
        v48 = v46;
        if (v47 == 255)
        {
          v50 = 256;
          v49 = ((v44 * 0.985) + 0.5);
          LODWORD(v47) = 256;
          v54 = v46;
          v53 = v46;
          goto LABEL_58;
        }

        v46 = *(keys + ++v47);
      }

      while (v46 < v45);
      v49 = ((v44 * 0.985) + 0.5);
      if ((v47 - 1) <= 0xFE)
      {
        v50 = v47;
        goto LABEL_47;
      }

      v50 = v47;
    }

    v54 = v48;
    v53 = v46;
LABEL_58:
    v55 = v42 + ((1.0 - v42) * ((((v49 - v54) / (v53 - v54)) + v47) * 0.0039062));
    v56 = 0.005625;
    if ((v31 * ((((v45 - v48) / (v46 - v48)) + v50) * 0.0039062)) <= 0.005625)
    {
      v56 = v31 * ((((v45 - v48) / (v46 - v48)) + v50) * 0.0039062);
    }

    if (v55 >= 0.62996)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0.62996;
    }

    v58 = v56 + ((v57 - v56) * 0.18);
    v59 = *(values + ((v58 * 90.51) + 0.5));
    v60 = v59 - *(values + ((v58 * 11.314) + 0.5));
    v61 = ((v58 * 724.08) + 0.5);
    if (v61 >= 255)
    {
      v61 = 255;
    }

    v62 = *(values + v61);
    v63 = v62 - v59;
    if (((v58 * 5792.6) + 0.5) >= 255)
    {
      v64 = 255;
    }

    else
    {
      v64 = ((v58 * 5792.6) + 0.5);
    }

    *v37.i32 = v40;
    v65 = v63 / v40;
    *v38.i32 = 1.2 - v65;
    v66 = vdiv_f32(vcvt_f32_s32(__PAIR64__(*(values + v64) - v62, v60)), vdup_lane_s32(v37, 0));
    v67 = vmla_n_f32(vdup_lane_s32(v43, 0), vsub_f32(vdup_lane_s32(v38, 0), v66), 1.0 - *v43.i32);
    v68 = vdup_n_s32(0x3DCCCCCDu);
    v69 = vdup_n_s32(0x3F99999Au);
    v111 = vbsl_s8(vcgt_f32(v67, v68), vbsl_s8(vcgt_f32(v67, v69), v69, v67), v68);
    *(DerivedStorage + 7412) = v66.i32[0];
    *(DerivedStorage + 7416) = v65;
    *(DerivedStorage + 7420) = v66.i32[1];
    v31 = powf(v56, 0.45455);
    v70 = powf(v57, 0.45455);
    v51 = v111;
    v52 = 1.0 / (v70 - v31);
    goto LABEL_69;
  }

  if (*(DerivedStorage + 6384) == 1)
  {
    v51 = *(DerivedStorage + 6360);
    v31 = *(DerivedStorage + 6376);
    v52 = *(DerivedStorage + 6380);
  }

  else
  {
    v52 = 1.0 / (1.0 - v31);
    v51 = v110;
  }

LABEL_69:
  v71 = *(DerivedStorage + 6340);
  v72 = *(DerivedStorage + 6352);
  v73 = vsub_f32(v72, v51);
  if (fabsf(v73.f32[0]) > 0.02 || fabsf(v73.f32[1]) > 0.02 || ((v74 = *(DerivedStorage + 6372), v74 <= (v52 * 1.02)) ? (_NF = (v74 * 1.02) < v52) : (_NF = 1), _NF))
  {
    v76 = (DerivedStorage + 6385);
    v77 = *(DerivedStorage + 6368);
    v74 = *(DerivedStorage + 6372);
  }

  else
  {
    v77 = *(DerivedStorage + 6368);
    v76 = (DerivedStorage + 6385);
    if ((*(DerivedStorage + 6385) & 1) == 0 && vabds_f32(v77, v31) <= 0.01 && v71 == 0)
    {
      return v6;
    }
  }

  *(DerivedStorage + 6360) = v51;
  *(DerivedStorage + 6376) = v31;
  *(DerivedStorage + 6380) = v52;
  v78 = vsub_f32(v51, v72);
  v79 = 0.01;
  if ((v31 - v77) <= 0.01)
  {
    v79 = v31 - v77;
  }

  if ((v31 - v77) <= -0.01)
  {
    v80 = -0.01;
  }

  else
  {
    v80 = v79;
  }

  *v35.i32 = v77 + v80;
  v81 = 1.008;
  if ((v52 / v74) <= 1.008)
  {
    v81 = v52 / v74;
  }

  if ((v52 / v74) <= 0.99206)
  {
    v82 = 0.99206;
  }

  else
  {
    v82 = v81;
  }

  v83 = v74 * v82;
  v84 = vdup_n_s32(0xBC23D70A);
  v85 = vdup_n_s32(0x3C23D70Au);
  v86 = vbsl_s8(vcgt_f32(v78, v84), vbsl_s8(vcgt_f32(v78, v85), v85, v78), v84);
  v87 = vadd_f32(v72, v86);
  *(DerivedStorage + 6352) = v87;
  *(DerivedStorage + 6368) = v35.i32[0];
  *(DerivedStorage + 6372) = v83;
  v88 = vsub_f32(v51, v87);
  v89 = fabsf(*v88.i32) > 0.00001 || fabsf(*&v88.i32[1]) > 0.00001 || vabds_f32(v52, v83) > 0.00001 || vabds_f32(v31, *v35.i32) > 0.00001;
  v90 = 0;
  *v76 = v89;
  *v88.i32 = vaddv_f32(v87) + -2.0;
  v91 = vdupq_lane_s32(v35, 0);
  v92 = vdupq_lane_s32(v88, 0);
  v86.f32[0] = (1.0 - v87.f32[0]) - *v88.i32;
  v93 = vdupq_lane_s32(v86, 0);
  v94 = vdupq_lane_s32(v87, 0);
  v95 = xmmword_1ACF06180;
  v96 = vdupq_n_s32(0x3B808081u);
  __asm { FMOV            V16.4S, #1.0 }

  v100 = vdupq_n_s32(0x437F0000u);
  v101.i64[0] = 0xFF000000FFLL;
  v101.i64[1] = 0xFF000000FFLL;
  v102.i64[0] = 0x400000004;
  v102.i64[1] = 0x400000004;
  do
  {
    v103 = vminnmq_f32(vmulq_n_f32(vmaxnmq_f32(vsubq_f32(vmulq_f32(vcvtq_f32_u32(v95), v96), v91), 0), v83), _Q16);
    v104.i64[0] = 0x3F0000003F000000;
    v104.i64[1] = 0x3F0000003F000000;
    v105 = vminq_s32(vmaxq_s32(vcvtq_s32_f32(vmlaq_f32(v104, v100, vmulq_f32(v103, vmlaq_f32(v94, vmlaq_f32(v93, v92, v103), v103)))), 0), v101);
    *(keys + v90) = vuzp1_s8(vmovn_s32(v105), *v91.f32).u32[0];
    v90 += 4;
    v95 = vaddq_s32(v95, v102);
  }

  while (v90 != 256);
  v112 = v105.u32[3];
  v106 = *MEMORY[0x1E695E480];
  values[0] = CFDataCreate(*MEMORY[0x1E695E480], keys, 256);
  values[1] = values[0];
  values[2] = values[0];
  v107 = CFArrayCreate(v106, values, 3, MEMORY[0x1E695E9C0]);
  if (*(DerivedStorage + 508) == 1)
  {
    v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BD70, v107);
  }

  if (v71)
  {
    atomic_fetch_add_explicit((DerivedStorage + 6340), -v71, memory_order_relaxed);
  }

  CFRelease(values[0]);
  CFRelease(v107);
  return v6;
}

uint64_t FigImageControl_Focus(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 7616);
  if (!v6)
  {
    v6 = *(DerivedStorage + 7612);
  }

  v235 = v6;
  v241 = a1;
  v7 = CMBaseObjectGetDerivedStorage();
  v238 = a2;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v9 = *(v7 + 6220);
  target = ImageBuffer;
  key = *off_1E798A3C8;
  v10 = CMGetAttachment(ImageBuffer, *off_1E798A3C8, 0);
  Mutable = v10;
  v239 = v5;
  if (!v10)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      FigImageControl_Focus_cold_9(&keys);
      x_low = LODWORD(keys.origin.x);
      v53 = v241;
      goto LABEL_45;
    }
  }

  *time = 0;
  v12 = CFArrayCreateMutable(0, v9, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    v187 = FigImageControl_Focus_cold_8(v10 == 0, &keys);
    x_low = LODWORD(keys.origin.x);
    v53 = v241;
    if ((v187 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v13 = v12;
  theDict = Mutable;
  if (v9 < 1)
  {
LABEL_12:
    if (*(v7 + 8297) == 1 && *(v7 + 8296) != 1)
    {
      v23 = MEMORY[0x1E695E4D0];
    }

    else if (*(v7 + 7612))
    {
      v23 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v23 = MEMORY[0x1E695E4D0];
    }

    Mutable = theDict;
    CFDictionaryAddValue(theDict, *off_1E798B098, *v23);
    v24 = *MEMORY[0x1E695E480];
    v25 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9C0]);
    v26 = CFNumberCreate(v24, kCFNumberFloat32Type, (v7 + 5636));
    if (v26)
    {
      v27 = v26;
      CFArrayAppendValue(v25, v26);
      CFRelease(v27);
      v28 = CFNumberCreate(v24, kCFNumberFloat32Type, (v7 + 5640));
      if (v28)
      {
        v29 = v28;
        CFArrayAppendValue(v25, v28);
        CFRelease(v29);
        v30 = (v7 + 5644);
        v31 = CFNumberCreate(v24, kCFNumberFloat32Type, (v7 + 5644));
        if (v31)
        {
          v32 = v31;
          CFArrayAppendValue(v25, v31);
          CFRelease(v32);
          CFDictionaryAddValue(theDict, *off_1E798A658, v25);
          CMSetAttachment(target, key, theDict, 1u);
          Value = CFDictionaryGetValue(v10, *off_1E798B540);
          if (Value)
          {
            v34 = Value;
            if (!CFEqual(Value, *off_1E798A0E0) && !CFEqual(v34, *off_1E798A0E8) && !CFEqual(v34, *off_1E798A0F8))
            {
              v41 = portIndexFromPortType(v34, time, v35, v36, v37, v38, v39, v40, v232);
              if (v41)
              {
                x_low = v41;
                FigImageControl_Focus_cold_1();
                goto LABEL_40;
              }

              if (*(v7 + 18160) == 1)
              {
                v42 = v7 + 56 * *time + 17744;
                if ((*(v7 + 56 * *time + 17760) & 1) != 0 || *(v7 + *time + 18136))
                {
                  v43 = [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
                  if (v43 <= 1)
                  {
                    v44 = 1;
                  }

                  else
                  {
                    v44 = v43;
                  }

                  v233 = *(v7 + 18152) * v44;
                  v45 = (*(v7 + 18156) * v44);
                  LODWORD(keys.origin.x) = 1065353216;
                  v46 = v42;
                  Width = CVPixelBufferGetWidth(target);
                  Height = CVPixelBufferGetHeight(target);
                  v49 = v45;
                  Mutable = theDict;
                  FigMotionComputeLensPositionScalingFactor(v10, Width, Height, v233, v49, &keys, v50, v51);
                  LODWORD(valuePtr.origin.x) = 0;
                  v52 = *(v7 + *time + 18136);
                  v53 = v241;
                  if (!v52)
                  {
                    goto LABEL_36;
                  }

                  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
                  v55 = *&valuePtr.origin.x;
                  if (FloatIfPresent)
                  {
                    v55 = *&valuePtr.origin.x * (*(v46 + 44) * *&keys.origin.x);
                    *&valuePtr.origin.x = v55;
                  }

                  if (v55 == 0.0)
                  {
LABEL_36:
                    if (*(v46 + 16) == 1)
                    {
                      FigMotionCalculateAdjustedLensPosition(v10, v46, &valuePtr, *v30, *&keys.origin.x);
                    }
                  }

                  v56 = CFNumberCreate(v24, kCFNumberFloat32Type, &valuePtr);
                  CFDictionaryAddValue(theDict, *off_1E798B538, v56);
                  CFRelease(v56);
                  x_low = 0;
LABEL_41:
                  CFRelease(v13);
                  if (v25)
                  {
                    CFRelease(v25);
                  }

                  v5 = v239;
                  if (v10)
                  {
                    goto LABEL_45;
                  }

LABEL_44:
                  CFRelease(Mutable);
                  goto LABEL_45;
                }
              }
            }
          }

          x_low = 0;
LABEL_40:
          v53 = v241;
          goto LABEL_41;
        }

        FigImageControl_Focus_cold_2(&keys);
      }

      else
      {
        FigImageControl_Focus_cold_3(&keys);
      }
    }

    else
    {
      FigImageControl_Focus_cold_4(&keys);
    }

    x_low = LODWORD(keys.origin.x);
    goto LABEL_40;
  }

  v14 = (v7 + 5736);
  v15 = (v7 + 5896);
  v16 = MEMORY[0x1E695E9C0];
  while (1)
  {
    v17 = CFArrayCreateMutable(0, 2, v16);
    if (!v17)
    {
      FigImageControl_Focus_cold_7(&keys);
      x_low = LODWORD(keys.origin.x);
      goto LABEL_242;
    }

    v18 = v17;
    v19 = CFNumberCreate(0, kCFNumberIntType, v14);
    if (!v19)
    {
      FigImageControl_Focus_cold_6(&keys);
      goto LABEL_241;
    }

    v20 = v19;
    CFArraySetValueAtIndex(v18, 0, v19);
    v21 = CFNumberCreate(0, kCFNumberSInt64Type, v15);
    if (!v21)
    {
      break;
    }

    v22 = v21;
    CFArraySetValueAtIndex(v18, 1, v21);
    CFArrayAppendValue(v13, v18);
    CFRelease(v20);
    CFRelease(v22);
    CFRelease(v18);
    v15 += 8;
    v14 += 4;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

  FigImageControl_Focus_cold_5(v20, &keys);
LABEL_241:
  x_low = LODWORD(keys.origin.x);
  CFRelease(v18);
LABEL_242:
  v53 = v241;
  CFRelease(v13);
  v5 = v239;
  Mutable = theDict;
  if (!v10)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (!*(v5 + 652))
  {
    goto LABEL_135;
  }

  v58 = CMBaseObjectGetDerivedStorage();
  v59 = CMGetAttachment(v238, key, 0);
  v60 = CFDictionaryGetValue(v59, *off_1E798B0A8);
  v61 = CFDictionaryGetValue(v59, *off_1E798B0A0);
  v62 = CFDictionaryGetValue(v59, *off_1E798B320);
  LODWORD(v244.value) = 0;
  v258[0] = 0uLL;
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  memset(&keys, 0, sizeof(keys));
  v63 = *(v58 + 40);
  FigCFDictionaryGetInt32IfPresent();
  if (!CFDictionaryGetValue(v59, *off_1E798B300))
  {
    goto LABEL_134;
  }

  v64 = ((v63 - 1) & 0xFFFFFFFA) == 0;
  v65 = *(v58 + 7585);
  getFocusPeakSums(v59, &keys);
  LODWORD(v258[0]) = -1;
  v66 = CFDictionaryGetValue(v59, *off_1E798B208);
  if (v66)
  {
    CFNumberGetValue(v66, kCFNumberIntType, v258);
  }

  v67 = *(v58 + 48);
  if (v67)
  {
    CMSampleBufferGetPresentationTimeStamp(time, v238);
    CMTimeGetSeconds(time);
    FigCoreMotionGetVector(v67, v258 + 12, v258 + 8, v258 + 4);
  }

  if (!v60 || !v61)
  {
    goto LABEL_134;
  }

  v257 = 0;
  v255 = 0;
  CFNumberGetValue(v60, kCFNumberIntType, &v255 + 4);
  CFNumberGetValue(v61, kCFNumberIntType, &v255);
  if (v62)
  {
    CFNumberGetValue(v62, kCFNumberSInt32Type, &v257);
  }

  if ((*(v58 + 7664) > 0 || *(v58 + 81) == 1) && HIDWORD(v255) != 2 && (*(v58 + 7586) != 1 || *(v58 + 7588) == *(v58 + 7592)))
  {
    v68 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v69 = v68;
    v70 = *(v58 + 84);
    if (v70 == 1)
    {
      v71 = kFigAutofocusSampleBufferProcessorFocusMode_FixedFocusPoints;
    }

    else
    {
      if (v70 != 5)
      {
LABEL_65:
        *(v58 + 81) = 0;
        v72 = *(v58 + 7664);
        v73 = __OFSUB__(v72, 1);
        v74 = v72 - 1;
        if (v74 < 0 == v73)
        {
          *(v58 + 7664) = v74;
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        if (v69)
        {
          CFRelease(v69);
        }

        goto LABEL_69;
      }

      v71 = kFigAutofocusSampleBufferProcessorFocusMode_FocusAtPoint;
    }

    CFDictionaryAddValue(v68, @"FocusMode", *v71);
    goto LABEL_65;
  }

LABEL_69:
  v75 = HIDWORD(v255);
  if (HIDWORD(v255) != *(v58 + 7668))
  {
    if (HIDWORD(v255) == 2 && !*(v58 + 7664) && (v257 - 13) <= 0xFFFFFFF6)
    {
      sendFocusStartNotification(v241, 0);
      v75 = HIDWORD(v255);
    }

    *(v58 + 7668) = v75;
  }

  if (v75 == 4)
  {
    if (*(v58 + 8296))
    {
      v76 = v65 | v64;
      HIDWORD(v246) = 0;
      *(v58 + 8296) = 0;
      v77 = *(v58 + 9024);
      v78 = 1.0;
      if (v77 >= 2)
      {
        v79 = 0;
        v80 = (v77 - 1);
        v81 = v77 - 1;
        v82 = (v58 + 8304);
        do
        {
          v83 = *(v58 + 8300 + 4 * v79);
          v84 = *(v58 + 8540 + 4 * v79);
          v85 = *(v58 + 8780 + 4 * v79);
          v86 = sqrtf(((v84 * v84) + (v83 * v83)) + (v85 * v85));
          if (v86 > 0.0)
          {
            v87 = 1.0 / v86;
            v88 = v83 * v87;
            v89 = v84 * v87;
            v90 = v85 * v87;
            v91 = v82;
            v92 = v81;
            do
            {
              v93 = *v91;
              v94 = v91[60];
              v95 = v91[120];
              v96 = sqrtf(((v94 * v94) + (v93 * v93)) + (v95 * v95));
              if (v96 > 0.0)
              {
                v97 = (((v89 * v94) + (v88 * v93)) + (v90 * v95)) / v96;
                if (v97 < v78)
                {
                  v78 = v97;
                }
              }

              ++v91;
              --v92;
            }

            while (v92);
          }

          ++v79;
          --v81;
          ++v82;
        }

        while (v79 != v80);
      }

      *(v58 + 9020) = acosf(v78);
      if ((v65 | v64))
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
      }

      else
      {
        v103 = [*(v58 + 8) copyProperty:*off_1E798BE70 error:&v246 + 4];
        v100 = v103;
        v98 = HIDWORD(v246);
        v99 = v103 != 0;
        if (HIDWORD(v246) && v103)
        {
          FigImageControl_Focus_cold_10();
        }
      }

      v104 = *(v58 + 8288);
      if (v104)
      {
        CFRelease(v104);
        *(v58 + 8288) = 0;
        v98 = HIDWORD(v246);
      }

      *time = 0x101010101010101;
      *&time[8] = 0x101010101010101;
      if (v98)
      {
        v105 = 0;
      }

      else
      {
        v105 = v99;
      }

      if (v105)
      {
        v245 = 0;
        LODWORD(v246) = 0;
        *(v58 + 8288) = v100;
        v106 = CFDictionaryGetValue(v100, *off_1E798A1E0);
        if (v106)
        {
          CFNumberGetValue(v106, kCFNumberIntType, &v246);
        }

        v107 = CFDictionaryGetValue(v100, *off_1E798A1F0);
        if (v107)
        {
          CFNumberGetValue(v107, kCFNumberIntType, &v245);
        }

        v108 = CFDictionaryGetValue(v100, *off_1E798A1E8);
        if (!v108)
        {
          goto LABEL_122;
        }

        v109 = v245;
        if (v245 < 1)
        {
          goto LABEL_122;
        }

        v110 = v108;
        theDicta = x_low;
        v111 = 0;
        v112 = 0;
        v113 = v246;
        do
        {
          valuePtr.origin.x = 0.0;
          if (v113 < 1)
          {
            v115 = 0.0;
            x = NAN;
          }

          else
          {
            v114 = 0;
            v115 = 0.0;
            x = NAN;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v110, v114 + v111 * v113);
              if (ValueAtIndex)
              {
                CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
                if (*&valuePtr.origin.x < *&x)
                {
                  x = valuePtr.origin.x;
                }

                if (*&valuePtr.origin.x > *&v115)
                {
                  v115 = valuePtr.origin.x;
                }
              }

              v113 = v246;
              ++v114;
            }

            while (v114 < v246);
            v109 = v245;
          }

          time[v111] = 100 * (*&v115 - *&x) <= 20 * *&v115;
          if (100 * (*&v115 - *&x) > 20 * *&v115)
          {
            ++v112;
          }

          ++v111;
        }

        while (v111 < v109);
        x_low = theDicta;
        if (!v112)
        {
LABEL_122:
          *time = 0uLL;
        }
      }

      v118 = 0;
      v119 = (v58 + 7712);
      v120 = (v58 + 7840);
      do
      {
        v121 = *(&keys.origin.x + v118);
        v119[v118] = (v121 * 0.85);
        *(v120 + v118) = (v121 * 1.4);
        if (v121 < 1)
        {
          v125 = 0;
        }

        else if (v76)
        {
          v122 = 0;
          v123 = vdupq_n_s64(v121);
          v124 = 0uLL;
          do
          {
            v124 = vsubq_s32(v124, vuzp1q_s32(vcgtq_s64(*(&keys.origin + v122), v123), vcgtq_s64(*(&keys.size + v122), v123)));
            v122 += 32;
          }

          while (v122 != 128);
          v125 = 16 - vaddvq_s32(v124);
        }

        else
        {
          v125 = time[v118] ^ 1;
        }

        *(v58 + 7968 + 4 * v118++) = v125;
      }

      while (v118 != 16);
      if (*(v58 + 9020) > 0.044)
      {
        memset_pattern16(v119, &unk_1AD056010, 0x80uLL);
        *(v58 + 7936) = 0u;
        *(v58 + 7952) = 0u;
        *(v58 + 7904) = 0u;
        *(v58 + 7920) = 0u;
        *(v58 + 7872) = 0u;
        *(v58 + 7888) = 0u;
        *v120 = 0u;
        *(v58 + 7856) = 0u;
        memset_pattern16((v58 + 7968), &unk_1AD056030, 0x40uLL);
      }
    }

    goto LABEL_134;
  }

  if (*(v58 + 8296))
  {
    v101 = *(v58 + 9024);
    if (v101 > 59)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v101 = 0;
    *(v58 + 8296) = 1;
  }

  *(v58 + 9024) = v101 + 1;
  v102 = (v58 + 4 * v101);
  v102[2075] = HIDWORD(v258[0]);
  v102[2135] = DWORD2(v258[0]);
  v102[2195] = DWORD1(v258[0]);
LABEL_134:
  v53 = v241;
  v5 = v239;
LABEL_135:
  if (v235 > 2)
  {
    if (v235 == 3)
    {
      if ((*(v5 + 7580) & 1) == 0)
      {
        doLockFocusNow(v53);
        *(v5 + 7580) = 1;
      }

      return x_low;
    }

    if (v235 != 4 || (*(v5 + 7580) & 1) != 0 || (*(v5 + 81) & 1) != 0)
    {
      return x_low;
    }

    doLockFocusNow(v53);
    v133 = *(v5 + 7656);
    LODWORD(valuePtr.origin.x) = v133;
    if (v133 == -1)
    {
      v133 = *(v5 + 7652);
      LODWORD(valuePtr.origin.x) = v133;
    }

    if (v133 == 0x7FFFFFFF)
    {
      v134 = CMGetAttachment(v238, key, 0);
      if (v134)
      {
        v135 = CFDictionaryGetValue(v134, *off_1E798B208);
        if (v135)
        {
          CFNumberGetValue(v135, kCFNumberSInt32Type, &valuePtr);
        }
      }
    }

    if (*(v5 + 516))
    {
      v136 = *MEMORY[0x1E695E480];
      if (*(v5 + 7660))
      {
        v137 = *off_1E798A1C8;
        keys.origin.x = *off_1E798AEB8;
        keys.origin.y = v137;
        *time = CFNumberCreate(v136, kCFNumberSInt32Type, &valuePtr);
        *&time[8] = CFNumberCreate(v136, kCFNumberSInt32Type, (v5 + 7660));
        v138 = CFDictionaryCreate(v136, &keys, time, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(*time);
        CFRelease(*&time[8]);
LABEL_203:
        x_low = captureStreamSetPropertyOnActivityScheduler(v53, *off_1E798BFF0, v138);
        CFRelease(v138);
        *(v5 + 7580) = 1;
        return x_low;
      }
    }

    else
    {
      v136 = *MEMORY[0x1E695E480];
    }

    v138 = CFNumberCreate(v136, kCFNumberSInt32Type, &valuePtr);
    goto LABEL_203;
  }

  if (v235 == 1)
  {
    v139 = CMBaseObjectGetDerivedStorage();
    v140 = (v139 + 7580);
    v141 = CMGetAttachment(v238, key, 0);
    v258[0] = 0uLL;
    v257 = 0;
    v142 = *(MEMORY[0x1E695F058] + 16);
    *keya = *MEMORY[0x1E695F058];
    valuePtr.origin = *MEMORY[0x1E695F058];
    valuePtr.size = v142;
    v240 = v142;
    HIDWORD(v255) = 0;
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    v143 = 0;
    if (*(v258 + 4) && LODWORD(v258[0]))
    {
      v143 = *(v139 + 7700) + 1;
    }

    *(v139 + 7700) = v143;
    v144 = CFDictionaryGetValue(v141, *off_1E798B090);
    if (v144 && *(v139 + 560) == 1)
    {
      CGRectMakeWithDictionaryRepresentation(v144, &valuePtr);
      *(v139 + 7676) = CGRectGetMinX(valuePtr);
      *(v139 + 7680) = CGRectGetMinY(valuePtr);
      *(v139 + 7684) = CGRectGetWidth(valuePtr);
      *(v139 + 7688) = CGRectGetHeight(valuePtr);
      *(v139 + 7672) = CGRectGetHeight(valuePtr) > 0.0;
      *(v139 + 556) = 0;
      v145 = *(v139 + 9032);
      if (v145)
      {
        Count = CFArrayGetCount(v145);
        if (Count >= 1)
        {
          v147 = 0;
          v148 = *off_1E798D040;
          v149 = Count & 0x7FFFFFFF;
          v150 = 1000000.0;
          do
          {
            v151 = CFArrayGetValueAtIndex(*(v139 + 9032), v147);
            if (v151)
            {
              keys.origin = *keya;
              keys.size = v240;
              v152 = CFDictionaryGetValue(v151, v148);
              if (v152)
              {
                CGRectMakeWithDictionaryRepresentation(v152, &keys);
              }

              MidX = CGRectGetMidX(valuePtr);
              v154 = MidX - CGRectGetMidX(keys);
              v155 = fabsf(v154);
              MidY = CGRectGetMidY(valuePtr);
              v157 = MidY - CGRectGetMidY(keys);
              v158 = v155 + fabsf(v157);
              if (v158 < v150)
              {
                *(v139 + 556) = v147;
                v150 = v158;
              }
            }

            ++v147;
          }

          while (v149 != v147);
        }
      }
    }

    else
    {
      *(v139 + 7672) = 0;
    }

    if (*v140)
    {
      if (*(v139 + 7581) == 1)
      {
        setupFocusWindowMatrix(v53, *(v139 + 7620), *(v139 + 7624), *(v139 + 7628), *(v139 + 7632), *(v139 + 560), *(v139 + 7636), *(v139 + 7640), 1);
        x_low = 0;
        *(v139 + 7581) = 0;
        return x_low;
      }

      if (*(v139 + 9056) == 1)
      {
        FigImageControl_Focus_cold_13(v139, v53, (v139 + 9056));
        return 0;
      }

      if (HIDWORD(v258[0]) == 4)
      {
        v165 = *(v139 + 7692);
        v73 = __OFSUB__(v165, 1);
        v166 = v165 - 1;
        if (v166 < 0 == v73)
        {
          x_low = 0;
          *(v139 + 7692) = v166;
          return x_low;
        }
      }

      else
      {
        *(v139 + 7692) = 0;
      }

      if ((*(v139 + 81) & 1) != 0 || (*(v139 + 8296) & 1) != 0 || *(v139 + 44) != 1)
      {
        return 0;
      }

      v167 = CFDictionaryGetValue(v141, *off_1E798B208);
      if (v167)
      {
        CFNumberGetValue(v167, kCFNumberIntType, &v255 + 4);
      }

      if (v257)
      {
        x_low = 0;
        *(v139 + 7608) = 0;
        goto LABEL_212;
      }

      os_unfair_lock_lock((v139 + 7576));
      v184 = *(v139 + 7608);
      v73 = __OFSUB__(v184, 1);
      v185 = v184 - 1;
      if (v185 < 0 == v73)
      {
        *(v139 + 7608) = v185;
        os_unfair_lock_unlock((v139 + 7576));
        return 0;
      }

      os_unfair_lock_unlock((v139 + 7576));
      if (*(v139 + 7582))
      {
        x_low = 0;
        goto LABEL_295;
      }

      if (*(v139 + 40))
      {
        v186 = *(v139 + 692) + 1;
      }

      else
      {
        v186 = 1;
      }

      LODWORD(keys.origin.x) = v186;
      v188 = *(v139 + 5500);
      v189 = v139 + 5508;
      v190 = 20;
      v191 = 3.4028e38;
      LOBYTE(v192) = v188;
      do
      {
        v192 = (v192 - 1) & 0x1F;
        if (*(v189 + 4 * v192) < v191)
        {
          v191 = *(v189 + 4 * v192);
        }

        --v190;
      }

      while (v190);
      if (v191 > 0.0004)
      {
        if (*(v139 + 652))
        {
          if (*(v139 + 7712 + 8 * v192) >= 2)
          {
            memset_pattern16((v139 + 7712), &unk_1AD056020, 0x80uLL);
            *(v139 + 7952) = 0u;
            *(v139 + 7936) = 0u;
            *(v139 + 7920) = 0u;
            *(v139 + 7904) = 0u;
            *(v139 + 7888) = 0u;
            *(v139 + 7872) = 0u;
            *(v139 + 7856) = 0u;
            *(v139 + 7840) = 0u;
            memset_pattern16((v139 + 7968), &unk_1AD056030, 0x40uLL);
          }
        }

        else if (HIDWORD(v255) != v186)
        {
          v228 = CFNumberCreate(0, kCFNumberIntType, &keys);
          x_low = doManualFocusNow(v53, v228);
          CFRelease(v228);
          *(v139 + 6232) = 1;
          *(v139 + 6248) = 1;
          v188 = *(v139 + 5500);
          goto LABEL_290;
        }
      }

      x_low = 0;
LABEL_290:
      v193 = 0.0;
      v194 = 3;
      do
      {
        v188 = (v188 - 1) & 0x1F;
        if (*(v189 + 4 * v188) > v193)
        {
          v193 = *(v189 + 4 * v188);
        }

        --v194;
      }

      while (v194);
      if (v193 > 0.0004)
      {
        return x_low;
      }

LABEL_295:
      if (*(v139 + 573) != 1 || (*(v139 + 7587) & 1) == 0)
      {
        v195 = *(v139 + 628);
        if (v195 < 1)
        {
          if (!*(v258 + 4))
          {
            return x_low;
          }
        }

        else if (*(v139 + 7700) < v195)
        {
          return x_low;
        }
      }

      if (*(v139 + 560) == 1 && CGRectGetHeight(valuePtr) > 0.0)
      {
        v196 = *(v139 + 6284);
        if (CGRectGetHeight(valuePtr) * 0.800000012 < v196 && CGRectGetHeight(valuePtr) > (v196 * 0.8))
        {
          return x_low;
        }
      }

      v197 = currentGain(v238);
      if (*(v139 + 652))
      {
        v198 = CFDictionaryGetValue(v141, *off_1E798B300);
        if (!v198)
        {
          return x_low;
        }

        v199 = CFArrayGetCount(v198);
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        memset(&keys, 0, sizeof(keys));
        getFocusPeakSums(v141, &keys);
        v200 = 0;
        memset(time, 0, sizeof(time));
        do
        {
          *&time[v200] = CFNumberCreate(0, kCFNumberSInt64Type, &keys + v200);
          v200 += 8;
        }

        while (v200 != 128);
        v201 = CFArrayCreate(0, time, 16, MEMORY[0x1E695E9C0]);
        for (i = 0; i != 128; i += 8)
        {
          CFRelease(*&time[i]);
        }

        if (v199 < 1)
        {
          v204 = 0;
          v203 = 0;
        }

        else
        {
          v203 = 0;
          v204 = 0;
          if (v199 >= 0x10)
          {
            v205 = 16;
          }

          else
          {
            v205 = v199;
          }

          v206 = (v139 + 7968);
          v207 = (v139 + 7840);
          p_keys = &keys;
          do
          {
            v210 = *v206++;
            v209 = v210;
            v212 = p_keys->origin.x;
            p_keys = (p_keys + 8);
            v211 = v212;
            if (*&v212 < *(v207 - 16) || *&v211 > *v207)
            {
              v203 += v209;
            }

            v204 += v209;
            ++v207;
            --v205;
          }

          while (v205);
        }

        if (v201)
        {
          v216 = *(v139 + 7704);
          v217 = *(v139 + 8032 + 8 * v216);
          if (v217)
          {
            CFRelease(v217);
          }

          *(v139 + 8032 + 8 * v216) = v201;
          if (v216 <= 30)
          {
            v218 = v216 + 1;
          }

          else
          {
            v218 = 0;
          }

          *(v139 + 7704) = v218;
        }

        v219 = v203 > (v204 * 0.666) || v204 == 0;
        if (v219 || *(v139 + 7587) == 1)
        {
          v220 = *(v139 + 7696);
          *(v139 + 7696) = v220 + 1;
          if (v220 >= 4)
          {
            LODWORD(v255) = 0;
            v246 = 0;
            v245 = 0;
            getDefaultFocusScanRange(v53, &v255, &v246 + 1, &v246, &v245);
            setupSearchPositions(v53, v255, HIDWORD(v246), v246, v245, 1, 1, v197);
            if (*(v139 + 7587) == 1)
            {
              v221 = off_1E798C2F0;
              if (!*(v139 + 561))
              {
                v221 = off_1E798C2E8;
              }

              x_low = doFocusNow(v53, 0, *v221, 1);
              *(v139 + 7587) = 0;
            }

            else if ((*(v139 + 7586) & 1) != 0 || *(v139 + 7585) == 1)
            {
              x_low = captureStreamSetPropertyOnActivityScheduler(v53, *off_1E798BCA0, 0);
              *(v139 + 6220) = 0;
              *(v139 + 5496) = 0;
            }

            else if (*(v139 + 7583) == 1)
            {
              if (*(v139 + 660) <= 1)
              {
                v231 = 1;
              }

              else
              {
                v231 = *(v139 + 660);
              }

              v53 = v241;
              doPeakTrackingAutofocusNow(v241, v231);
            }

            else
            {
              v53 = v241;
              x_low = doAutofocusNow(v241);
            }

            CMSampleBufferGetPresentationTimeStamp(&v244, v238);
            *(v139 + 5688) = CMTimeGetSeconds(&v244);
            FigImageControl_CurrentFocusRect(v53, (v139 + 5704), (v139 + 5708), (v139 + 5712), (v139 + 5716));
            *(v139 + 7692) = 10;
            ++*(v139 + 9052);
          }

          return x_low;
        }

LABEL_212:
        *(v139 + 7696) = 0;
        return x_low;
      }

      v213 = *(v139 + 6264);
      if (v213 >= *(v139 + 6232) && v213 <= *(v139 + 6248))
      {
        goto LABEL_212;
      }

      v214 = *(v139 + 7696);
      *(v139 + 7696) = v214 + 1;
      if (v214 < 2)
      {
        return x_low;
      }

      HIDWORD(v246) = 0;
      *time = 0;
      LODWORD(v244.value) = 0;
      LODWORD(v255) = 0;
      if (*(v139 + 560) == 1 && CGRectGetHeight(valuePtr) > 0.0)
      {
        v215 = 0;
        *(v139 + 6284) = CGRectGetHeight(valuePtr);
      }

      else
      {
        v215 = 0;
        *(v139 + 6284) = 0;
        v222 = v238;
        if (SHIDWORD(v255) < 97)
        {
LABEL_361:
          getDefaultFocusScanRange(v53, time, &v244, &v255, &v246 + 1);
          if (*(v139 + 7582))
          {
            v229 = v255;
          }

          else
          {
            v229 = v215;
          }

          setupSearchPositions(v53, *time, LODWORD(v244.value), v229, SHIDWORD(v246), 0, 1, v197);
          ++*(v139 + 9052);
          if (*(v139 + 7583) == 1)
          {
            if (*(v139 + 660) <= 1)
            {
              v230 = 1;
            }

            else
            {
              v230 = *(v139 + 660);
            }

            doPeakTrackingAutofocusNow(v53, v230);
          }

          else
          {
            x_low = doAutofocusNow(v53);
          }

          CMSampleBufferGetPresentationTimeStamp(&keys, v222);
          *(v139 + 5688) = CMTimeGetSeconds(&keys);
          FigImageControl_CurrentFocusRect(v53, (v139 + 5704), (v139 + 5708), (v139 + 5712), (v139 + 5716));
          *(v139 + 7692) = 10;
          return x_low;
        }

        v215 = HIDWORD(v255) - 80;
        if (v213 < *(v139 + 6232))
        {
          v223 = *(v139 + 6220);
          if (v223 >= 2)
          {
            v224 = (v223 - 1);
            v225 = (v139 + 5740);
            v226 = (v139 + 5904);
            v53 = v241;
            v222 = v238;
            do
            {
              v227 = *(v226 - 1);
              if (v213 > v227 && *v226 >= v213)
              {
                v215 = *(v225 - 1) + (v213 - v227) * (*v225 - *(v225 - 1)) / (*v226 - v227) - 20;
              }

              ++v225;
              ++v226;
              --v224;
            }

            while (v224);
            goto LABEL_361;
          }
        }

        v53 = v241;
      }

      v222 = v238;
      goto LABEL_361;
    }

    if (*(v139 + 652))
    {
      if (HIDWORD(v258[0]) != 4 || (*(v139 + 81) & 1) != 0)
      {
        return 0;
      }

      if (*(v139 + 9064))
      {
        FigImageControl_Focus_cold_12(v139, v53);
      }

      else
      {
        setupFocusWindowMatrix(v53, *(v139 + 7620), *(v139 + 7624), *(v139 + 7628), *(v139 + 7632), *(v139 + 560), *(v139 + 7636), *(v139 + 7640), 1);
      }

      if (*(v139 + 7586) == 1)
      {
        if (*(v139 + 7585))
        {
          LODWORD(keys.origin.x) = 0;
          *time = 0;
          LODWORD(v244.value) = 0;
          LODWORD(v255) = 0;
          getDefaultFocusScanRange(v53, &keys, time, &v244, &v255);
          setupSearchPositions(v53, LODWORD(keys.origin.x), *time, v244.value, v255, 1, 1, 1.0);
          v164 = off_1E798C2F0;
          if (!*(v139 + 561))
          {
            v164 = off_1E798C2E8;
          }

          x_low = doFocusNow(v53, 0, *v164, 1);
          *(v139 + 7587) = 0;
        }

        else
        {
          x_low = 0;
          *(v139 + 7587) = 1;
        }

        goto LABEL_236;
      }

      if (*(v139 + 7585))
      {
        captureStreamSetPropertyOnActivityScheduler(v53, *off_1E798BD90, 0);
        x_low = 0;
        *(v139 + 8297) = 0;
LABEL_236:
        *(v139 + 540) = vmulq_f32(vcvtq_f32_s32(*(v139 + 7620)), vdupq_n_s32(0x3A83126Fu));
        *(v139 + 7672) = 0;
        *v140 = 1;
        *(v139 + 6232) = 1;
        *(v139 + 6248) = 0;
        *(v139 + 7608) = 0;
        return x_low;
      }
    }

    else
    {
      setupFocusWindows(v53, *(v139 + 560), *(v139 + 7620) * 0.001, *(v139 + 7624) * 0.001, *(v139 + 7628) * 0.001, *(v139 + 7632) * 0.001);
    }

    x_low = 0;
    goto LABEL_236;
  }

  if (v235 != 2)
  {
    return x_low;
  }

  v126 = CMBaseObjectGetDerivedStorage();
  v127 = CMGetAttachment(v238, key, 0);
  v128 = CFDictionaryGetValue(v127, *off_1E798B078);
  v129 = CFDictionaryGetValue(v127, *off_1E798B148);
  v130 = CFDictionaryGetValue(v127, *off_1E798B060);
  if (*(v126 + 636) >= 1)
  {
    v131 = *(v126 + 636);
  }

  else
  {
    v131 = 12;
  }

  v132 = 692;
  if (!*(v126 + 40))
  {
    v132 = 688;
  }

  if (*(v126 + 81))
  {
    return 0;
  }

  v159 = v130;
  v160 = *(v126 + v132);
  v161 = currentGain(v238);
  v162 = *(v126 + 652);
  if (*(v126 + 626) == 1)
  {
    v163 = v162 != 0;
  }

  else if (v162)
  {
    v163 = *(v126 + 7583) ^ 1;
  }

  else
  {
    v163 = 0;
  }

  if (*(v126 + 7580))
  {
    if (*(v126 + 44))
    {
      v168 = *(v126 + 524);
      v73 = __OFSUB__(v168, 1);
      v169 = v168 - 1;
      if (v169 < 0 == v73)
      {
        x_low = 0;
        *(v126 + 524) = v169;
        return x_low;
      }

      if (v128 && v129)
      {
        LODWORD(keys.origin.x) = 0;
        *time = 0;
        LODWORD(valuePtr.origin.x) = 0;
        CFNumberGetValue(v128, kCFNumberIntType, &keys);
        CFNumberGetValue(v129, kCFNumberIntType, time);
        if (v159)
        {
          CFNumberGetValue(v159, kCFNumberIntType, &valuePtr);
        }

        if (!((LODWORD(valuePtr.origin.x) != 0) | *(v126 + 7472) & 1 | (LODWORD(keys.origin.x) != 0)) || !*time)
        {
          v180 = *(v126 + 528);
          v73 = __OFSUB__(v180, 1);
          v181 = v180 - 1;
          if (v181 < 0 == v73)
          {
            x_low = 0;
            *(v126 + 528) = v181;
            return x_low;
          }
        }
      }

      if (*(v126 + 7586) == 1)
      {
        v182 = doFocusNow(v53, 1, *off_1E798C2F0, 1);
      }

      else
      {
        if (*(v126 + 7583) == 1)
        {
          if (*(v126 + 660) <= 1)
          {
            v183 = 1;
          }

          else
          {
            v183 = *(v126 + 660);
          }

          doPeakTrackingAutofocusNow(v53, v183);
          x_low = 0;
          goto LABEL_263;
        }

        v182 = doAutofocusNow(v53);
      }

      x_low = v182;
LABEL_263:
      CMSampleBufferGetPresentationTimeStamp(&keys, v238);
      *(v126 + 5688) = CMTimeGetSeconds(&keys);
      FigImageControl_CurrentFocusRect(v53, (v126 + 5704), (v126 + 5708), (v126 + 5712), (v126 + 5716));
      *(v126 + 6284) = 0;
      if (*(v126 + 7612) == 2)
      {
        *(v126 + 7612) = 3;
        *(v126 + 8297) = 1;
      }

      return x_low;
    }

    v171 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigAutofocusSampleBufferProcessorProperty_FocusMode, kFigAutofocusSampleBufferProcessorFocusMode_FocusAtPoint, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v171)
    {
      CFRelease(v171);
    }

    return 0;
  }

  if (*(v126 + 515) == 1)
  {
    captureStreamSetPropertyOnActivityScheduler(v53, *off_1E798BF98, 0);
  }

  if (v163)
  {
    v170 = *(v126 + 9064);
    if (v170)
    {
      FigImageControl_Focus_cold_11(v126, v53, v170);
    }

    else
    {
      setupFocusWindowMatrix(v53, *(v126 + 7620), *(v126 + 7624), *(v126 + 7628), *(v126 + 7632), 0, *(v126 + 7636), *(v126 + 7640), 1);
    }
  }

  else
  {
    setupFocusWindows(v53, 0, *(v126 + 7620) * 0.001, *(v126 + 7624) * 0.001, *(v126 + 7628) * 0.001, *(v126 + 7632) * 0.001);
  }

  *(v126 + 540) = vmulq_f32(vcvtq_f32_s32(*(v126 + 7620)), vdupq_n_s32(0x3A83126Fu));
  *(v126 + 7672) = 0;
  if (*(v126 + 7582) == 1)
  {
    v172 = *(v126 + 7648);
    v173 = *(v126 + 7644);
    v174 = 2 * v131 * (v172 - v173) / 255;
    if (v174 >= v131)
    {
      v174 = v131;
    }

    if (v174 <= 5)
    {
      v175 = 5;
    }

    else
    {
      v175 = v174;
    }

    v176 = v163 & 1;
    v177 = v53;
    v178 = *(v126 + 7644);
  }

  else
  {
    v176 = v163 & 1;
    v177 = v53;
    v173 = v160;
    v172 = 255;
    v178 = v160;
    v175 = v131;
  }

  x_low = setupSearchPositions(v177, v173, v172, v178, v175, v176, 1, v161);
  *(v126 + 524) = 0x1400000004;
  *(v126 + 7580) = 1;
  return x_low;
}

CFIndex getFocusPeakSums(const __CFDictionary *a1, char *a2)
{
  result = CFDictionaryGetValue(a1, *off_1E798B300);
  if (result)
  {
    v4 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v5 = 0;
      if (result >= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = result;
      }

      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        result = CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, a2);
        ++v5;
        a2 += 8;
      }

      while (v6 != v5);
    }
  }

  return result;
}

_BYTE *FigImageControl_Focus_cold_13(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = setupFocusWindowMatrixByPortType(a2, *(a1 + 9064), *(a1 + 560), *(a1 + 7636), *(a1 + 7640), 1);
  *a3 = 0;
  return result;
}

uint64_t FigImageControl_Exposure(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage + 4096;
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v8 = *(DerivedStorage + 7468);
  if (!v8)
  {
    v8 = *(DerivedStorage + 7464);
  }

  if (*(DerivedStorage + 7456) == 1 && *(DerivedStorage + 7457) != 1)
  {
    v13 = 0;
    goto LABEL_156;
  }

  v9 = *(DerivedStorage + 7484);
  if (!v9 || (v10 = *(DerivedStorage + 7488)) == 0)
  {
    v11 = *(DerivedStorage + 608);
    v12 = (((v11 * -1000.0) + 1000.0) * 0.5);
    *(DerivedStorage + 7476) = v12;
    *(DerivedStorage + 7480) = v12;
    v10 = (v11 * 1000.0);
    *(DerivedStorage + 7484) = v10;
    *(DerivedStorage + 7488) = v10;
    LOWORD(v9) = v10;
  }

  v13 = 0;
  if (v8 <= 3)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        if (*(DerivedStorage + 7472) == 1)
        {
          unlockAEnow(a1);
          v9 = *(DerivedStorage + 7484);
          v10 = *(DerivedStorage + 7488);
        }

        setupExposureWindow(a1, *(DerivedStorage + 7476), *(DerivedStorage + 7480), v9, v10, *(DerivedStorage + 40) != 3);
        if ((*(DerivedStorage + 7456) & 1) != 0 || *(DerivedStorage + 512) != 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC08, *off_1E798BB10);
        }

        if (*(DerivedStorage + 40) == 3)
        {
          *buffer = 204;
          LODWORD(v293[0]) = 60;
          LODWORD(v279[0]) = 75;
          LODWORD(v271[0]) = 8;
          v33 = CFNumberCreate(0, kCFNumberIntType, v279);
          if (*(DerivedStorage + 511) == 1)
          {
            keys[0].origin.y = 0.0;
            keys[0].origin.x = 0.0;
            values[1] = 0;
            values[0] = 0;
            v34 = *MEMORY[0x1E695E480];
            v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v271);
            v36 = *off_1E798B9D8;
            keys[0].origin.x = *off_1E798B9E0;
            keys[0].origin.y = v36;
            values[0] = v33;
            values[1] = v35;
            v37 = CFDictionaryCreate(v34, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v37))
            {
              FigImageControl_Exposure_cold_11();
            }

            CFRelease(v37);
            CFRelease(v35);
          }

          else if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v33))
          {
            FigImageControl_Exposure_cold_10();
          }

          v45 = CFNumberCreate(0, kCFNumberIntType, v293);
          if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v45))
          {
            FigImageControl_Exposure_cold_12();
          }

          v46 = CFNumberCreate(0, kCFNumberIntType, buffer);
          v47 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BE20, v46);
          v13 = v47;
          if (v47)
          {
            FigImageControl_Exposure_cold_13(v47);
          }

          CFRelease(v33);
          CFRelease(v45);
          CFRelease(v46);
        }
      }

      else if (v8 == 3)
      {
        v14 = CMBaseObjectGetDerivedStorage();
        if (*(v14 + 40) == 4)
        {
          *(v14 + 17737) = 1;
          if (*(v14 + 1548))
          {
            v15 = *(v14 + 9080);
            if (v15 < 1)
            {
              v16 = 0.001;
            }

            else
            {
              v16 = 1.0 / v15;
            }

            FigImageControl_SetExposureStabilityZone(a1, 1, v16);
            v48 = *MEMORY[0x1E695E480];
            v49 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v14 + 1552));
            keys[0].origin.x = *off_1E798BBB8;
            values[0] = v49;
            v50 = CFNumberCreate(v48, kCFNumberIntType, (v14 + 1556));
            keys[0].origin.y = *off_1E798BAC8;
            values[1] = v50;
            v51 = CFDictionaryCreate(v48, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF70, v51))
            {
              FigImageControl_Exposure_cold_3();
            }

            CFRelease(v51);
            CFRelease(v49);
            CFRelease(v50);
            v52 = CFNumberCreate(0, kCFNumberIntType, (v14 + 1560));
            if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BAF0, v52))
            {
              FigImageControl_Exposure_cold_4();
            }

            CFRelease(v52);
            if ((*(v14 + 1566) & 1) == 0)
            {
              v53 = CFNumberCreate(0, kCFNumberIntType, (v14 + 612));
              if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v53))
              {
                FigImageControl_Exposure_cold_5();
              }

              CFRelease(v53);
            }
          }

          else if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_6();
          }

          if ((*(v14 + 1564) & 1) == 0 && captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFA8, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_7();
          }
        }

        else if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]))
        {
          FigImageControl_Exposure_cold_2();
        }

        if ((*(v14 + 40) != 4 || (*(v14 + 1565) & 1) == 0) && (*(v14 + 620) & 1) == 0)
        {
          if (*(v14 + 508) == 1 && captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFB0, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_8();
          }

          if (*(v14 + 520) == 1 && captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFB8, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_9();
          }
        }

        v13 = 0;
        *(v14 + 7472) = 1;
      }

      goto LABEL_155;
    }

    if (*(DerivedStorage + 7472) == 1)
    {
      unlockAEnow(a1);
    }

    if (*(DerivedStorage + 1508) > 0.0)
    {
      v22 = setupMeteringFaceDetection(a1, *(DerivedStorage + 8), 1);
LABEL_55:
      v13 = v22;
      goto LABEL_155;
    }

    v17 = *(DerivedStorage + 7476);
    v18 = *(DerivedStorage + 7480);
    v9 = *(DerivedStorage + 7484);
    v10 = *(DerivedStorage + 7488);
    goto LABEL_57;
  }

  if (v8 > 7)
  {
    if (v8 != 8)
    {
      if (v8 != 10)
      {
        goto LABEL_155;
      }

      if (*(DerivedStorage + 7472) == 1)
      {
        unlockAEnow(a1);
        v9 = *(DerivedStorage + 7484);
        v10 = *(DerivedStorage + 7488);
      }

      setupExposureWindow(a1, *(DerivedStorage + 7476), *(DerivedStorage + 7480), v9, v10, *(DerivedStorage + 40) != 3);
      if ((*(DerivedStorage + 7456) & 1) != 0 || *(DerivedStorage + 512) != 1)
      {
        goto LABEL_58;
      }

      v19 = *off_1E798BC08;
      v20 = *off_1E798BB08;
      v21 = a1;
LABEL_54:
      v22 = captureStreamSetPropertyOnActivityScheduler(v21, v19, v20);
      goto LABEL_55;
    }

    HIDWORD(valuePtr) = 1032358025;
    *(DerivedStorage + 7472) = 1;
    *(DerivedStorage + 7532) = 0;
    v26 = *MEMORY[0x1E695E4D0];
    v269 = a1;
    v13 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]);
    v27 = CFPreferencesCopyAppValue(@"exposure_table:Disable", @"com.apple.coremedia");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFBooleanGetTypeID())
      {
        *(DerivedStorage + 7568) = CFBooleanGetValue(v28) != 0;
      }

      CFRelease(v28);
    }

    if (*(DerivedStorage + 7568) == 1)
    {
      Value = CFDictionaryGetValue(v7, *off_1E798B2A8);
      LODWORD(keys[0].origin.x) = 256;
      a1 = v269;
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr + 4);
      }

      v31 = CFDictionaryGetValue(v7, *off_1E798B0B8);
      if (v31)
      {
        CFNumberGetValue(v31, kCFNumberIntType, keys);
      }

      v32 = (*(&valuePtr + 1) * SLODWORD(keys[0].origin.x)) * 0.0039062;
      if (v32 < 0.000125)
      {
        v32 = 0.000125;
      }

      *(&valuePtr + 1) = v32;
      *(DerivedStorage + 7528) = v32;
      v19 = *off_1E798BBF8;
      v21 = v269;
      v20 = v26;
      goto LABEL_54;
    }

    a1 = v269;
    if (*(DerivedStorage + 7560))
    {
      goto LABEL_155;
    }

    *buffer = 0u;
    v286 = 0u;
    v294 = 0u;
    *v293 = 0u;
    v43 = CFPreferencesCopyAppValue(@"exposure_table:IntegrationTime", @"com.apple.coremedia");
    if (v43)
    {
      *buffer = @"IntegrationTime";
      v293[0] = v43;
      LODWORD(v44) = 1;
    }

    else
    {
      LODWORD(v44) = 0;
    }

    v63 = CFPreferencesCopyAppValue(@"exposure_table:MaxGain", @"com.apple.coremedia");
    if (v63)
    {
      *(buffer | (8 * v44)) = @"MaxGain";
      *(v293 & 0xFFFFFFFFFFFFFFF7 | (8 * (v44 & 1))) = v63;
      LODWORD(v44) = v44 + 1;
    }

    v64 = CFPreferencesCopyAppValue(@"exposure_table:ExposureDelta", @"com.apple.coremedia");
    if (v64)
    {
      *&buffer[8 * v44] = @"ExposureDelta";
      v293[v44] = v64;
      LODWORD(v44) = v44 + 1;
    }

    v65 = CFPreferencesCopyAppValue(@"exposure_table:StabilityZone", @"com.apple.coremedia");
    if (v65)
    {
      *&buffer[8 * v44] = @"StabilityZone";
      v293[v44] = v65;
      LODWORD(v44) = v44 + 1;
    }

    else if (!v44)
    {
      goto LABEL_351;
    }

    v44 = v44;
    v138 = CFDictionaryCreate(*MEMORY[0x1E695E480], buffer, v293, v44, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v139 = malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL);
    v140 = exposure_table_initialize(v139, v138);
    if (v140)
    {
      free(v139);
    }

    else
    {
      *(DerivedStorage + 7560) = v139;
    }

    CFRelease(v138);
    v242 = v293;
    do
    {
      v243 = *v242++;
      CFRelease(v243);
      --v44;
    }

    while (v44);
    if (!v140)
    {
      v13 = 0;
LABEL_359:
      a1 = v269;
      goto LABEL_155;
    }

LABEL_351:
    v244 = 0;
    v296 = 0;
    memset(keys, 0, sizeof(keys));
    v292 = 0;
    v291 = 0u;
    *v290 = 0u;
    *cf = 0u;
    *values = 0u;
    v245 = *MEMORY[0x1E695E480];
    v246 = &gDefaultExposureTable;
    do
    {
      *(&keys[0].origin.x + v244 * 8) = CFNumberCreate(v245, kCFNumberDoubleType, v246);
      values[v244] = CFNumberCreate(v245, kCFNumberDoubleType, v246 + 72);
      v246 += 8;
      ++v244;
    }

    while (v244 != 9);
    v247 = MEMORY[0x1E695E9C0];
    v248 = CFArrayCreate(v245, keys, 9, MEMORY[0x1E695E9C0]);
    v249 = CFArrayCreate(v245, values, 9, v247);
    *v279 = xmmword_1E799DFC0;
    v271[0] = v248;
    v271[1] = v249;
    v250 = CFDictionaryCreate(v245, v279, v271, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v251 = malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL);
    v13 = exposure_table_initialize(v251, v250);
    if (v13)
    {
      free(v251);
    }

    else
    {
      *(DerivedStorage + 7560) = v251;
    }

    CFRelease(v250);
    CFRelease(v248);
    CFRelease(v249);
    for (i = 0; i != 9; ++i)
    {
      CFRelease(*(&keys[0].origin.x + i * 8));
      CFRelease(values[i]);
    }

    goto LABEL_359;
  }

  if (v8 == 4)
  {
    *buffer = 0;
    if ((*(DerivedStorage + 7472) & 1) == 0)
    {
      if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]))
      {
        FigImageControl_Exposure_cold_1();
      }

      *(DerivedStorage + 7472) = 1;
    }

    v23 = *(DerivedStorage + 7492);
    if (v23 <= 0.125)
    {
      v24 = ((1.0 / v23) + 0.5);
      v25 = 1;
    }

    else
    {
      if (v23 >= 0.01)
      {
        v24 = 1000;
      }

      else
      {
        v24 = 100000;
      }

      v25 = ((v24 * v23) + 0.5);
    }

    LODWORD(v279[0]) = v24;
    LODWORD(v293[0]) = v25;
    v38 = *(DerivedStorage + 7504);
    if (v38 != 0.0)
    {
      v39 = *(DerivedStorage + 7512);
      if (v39 != 0.0)
      {
        v40 = v24 / v25;
        if (v40 >= v38)
        {
          if (v40 <= v39)
          {
            *buffer = floor(v40);
          }

          else
          {
            *buffer = *(DerivedStorage + 7512);
          }
        }

        else
        {
          *buffer = *(DerivedStorage + 7504);
          v41 = 1.0 / v38;
          *(DerivedStorage + 7492) = v41;
          if (v41 <= 0.125)
          {
            LODWORD(v293[0]) = 1;
            LODWORD(v279[0]) = ((1.0 / v41) + 0.5);
          }

          else
          {
            if (v41 >= 0.01)
            {
              v42 = 1000;
            }

            else
            {
              v42 = 100000;
            }

            LODWORD(v279[0]) = v42;
            LODWORD(v293[0]) = ((v42 * v41) + 0.5);
          }
        }
      }
    }

    LODWORD(v271[0]) = 256;
    valuePtr = 0x10000000100;
    v54 = *(DerivedStorage + 7500);
    if (v54 == 3.4028e38)
    {
      v55 = CFDictionaryGetValue(v7, *off_1E798B3B0);
      if (v55)
      {
        CFNumberGetValue(v55, kCFNumberFloatType, (DerivedStorage + 7500));
      }

      v56 = CFDictionaryGetValue(v7, *off_1E798B0B8);
      if (v56)
      {
        CFNumberGetValue(v56, kCFNumberIntType, &valuePtr);
      }

      v57 = CFDictionaryGetValue(v7, *off_1E798B7D0);
      if (v57)
      {
        CFNumberGetValue(v57, kCFNumberIntType, v271);
      }

      v58 = CFDictionaryGetValue(v7, *off_1E798B7B8);
      if (v58)
      {
        CFNumberGetValue(v58, kCFNumberIntType, &valuePtr + 4);
      }

      LODWORD(keys[0].origin.x) = 1065353216;
      v59 = CFDictionaryGetValue(v7, *off_1E798B7C0);
      if (v59)
      {
        CFNumberGetValue(v59, kCFNumberFloatType, keys);
      }

      HIDWORD(valuePtr) = vcvtps_s32_f32(SHIDWORD(valuePtr) / *&keys[0].origin.x);
    }

    else
    {
      if (v54 <= 0.0)
      {
        v62 = vcvts_n_s32_f32(*(DerivedStorage + 7496), 8uLL);
      }

      else
      {
        LODWORD(keys[0].origin.x) = 1112014848;
        v60 = CFDictionaryGetValue(v7, *off_1E798B3A8);
        if (v60)
        {
          CFNumberGetValue(v60, kCFNumberFloatType, keys);
          v61 = *&keys[0].origin.x;
        }

        else
        {
          v61 = 50.0;
        }

        v66 = *(DerivedStorage + 7500) / v61;
        v67 = v66 * 256.0;
        if (v66 <= 255.0)
        {
          v62 = v67;
        }

        else
        {
          HIDWORD(valuePtr) = (v67 / 255.0);
          v62 = 65280;
        }
      }

      LODWORD(valuePtr) = v62;
    }

    memset(&keys[0].origin.y, 0, 48);
    *&v291 = 0;
    *v290 = 0u;
    *cf = 0u;
    *values = 0u;
    keys[0].origin.x = *off_1E798A2A8;
    v68 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v293);
    keys[0].origin.y = *off_1E798A2A0;
    values[1] = CFNumberCreate(v68, kCFNumberIntType, v279);
    keys[0].size.width = *off_1E798A1B0;
    cf[0] = CFNumberCreate(v68, kCFNumberIntType, &valuePtr);
    keys[0].size.height = *off_1E798A298;
    cf[1] = CFNumberCreate(v68, kCFNumberIntType, v271);
    keys[1].origin.x = *off_1E798A290;
    v290[0] = CFNumberCreate(v68, kCFNumberIntType, &valuePtr + 4);
    if (*buffer <= 0.0)
    {
      v69 = 5;
    }

    else
    {
      keys[1].origin.y = *off_1E798A200;
      v290[1] = CFNumberCreate(v68, kCFNumberDoubleType, buffer);
      v69 = 6;
    }

    if (*(DerivedStorage + 7520) >= 1)
    {
      *(&keys[0].origin.x + v69) = *off_1E798A1C8;
      values[v69++] = CFNumberCreate(v68, kCFNumberSInt32Type, (DerivedStorage + 7520));
    }

    v70 = CFDictionaryCreate(v68, keys, values, v69, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v71 = a1;
    v13 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFE8, v70);
    v72 = 0;
    v73 = 8 * v69;
    do
    {
      CFRelease(values[v72 / 8]);
      v72 += 8;
    }

    while (v73 != v72);
    CFRelease(v70);
    a1 = v71;
    goto LABEL_155;
  }

  if (v8 == 5)
  {
    if (*(DerivedStorage + 1508) > 0.0)
    {
LABEL_58:
      v13 = 0;
      goto LABEL_155;
    }

    v17 = *(DerivedStorage + 7476);
    v18 = *(DerivedStorage + 7480);
LABEL_57:
    setupExposureWindow(a1, v17, v18, v9, v10, 1);
    goto LABEL_58;
  }

LABEL_155:
  *(v5 + 3360) = 1;
LABEL_156:
  if (v8 != 8)
  {
    return v13;
  }

  if (*(v5 + 3472))
  {
    v74 = CMBaseObjectGetDerivedStorage();
    v75 = CMGetAttachment(a2, v6, 0);
    v76 = CFDictionaryGetValue(v75, *off_1E798B070);
    if (v76)
    {
      BytePtr = CFDataGetBytePtr(v76);
      v78 = 0;
      v79 = values;
      do
      {
        v80 = 0;
        v81 = v79;
        do
        {
          v82 = *&BytePtr[v80];
          *v81 = vmovl_u16(*v82.i8);
          v81[1] = vmovl_high_u16(v82);
          v81 += 2;
          v80 += 16;
        }

        while (v80 != 32);
        ++v78;
        v79 += 8;
        BytePtr += 32;
      }

      while (v78 != 16);
      LODWORD(v271[0]) = 0;
      valuePtr = 0;
      v83 = CFDictionaryGetValue(v75, *off_1E798B120);
      if (v83)
      {
        CFNumberGetValue(v83, kCFNumberIntType, v271);
      }

      v84 = CFDictionaryGetValue(v75, *off_1E798B0F8);
      if (v84)
      {
        CFNumberGetValue(v84, kCFNumberIntType, &valuePtr + 4);
      }

      v85 = CFDictionaryGetValue(v75, *off_1E798B0C0);
      if (v85)
      {
        CFNumberGetValue(v85, kCFNumberIntType, &valuePtr);
      }

      v86 = CFDictionaryGetValue(v75, *off_1E798B3A0);
      if (v86)
      {
        v87 = v86;
        if (CFDataGetLength(v86) == 1024)
        {
          v297.location = 0;
          v297.length = 1024;
          CFDataGetBytes(v87, v297, buffer);
          v88 = 0;
          v89 = 0uLL;
          do
          {
            v89 = vaddq_s32(*&buffer[v88], v89);
            v88 += 16;
          }

          while (v88 != 1024);
          v90 = 0;
          v91 = vdupq_lane_s64(COERCE__INT64(vaddvq_s32(v89)), 0);
          v92 = vdupq_n_s64(0x4117E80000000000uLL);
          do
          {
            v93 = *&buffer[v90];
            v94.i64[0] = v93;
            v94.i64[1] = DWORD1(v93);
            v95 = vcvtq_f64_u64(v94);
            v94.i64[0] = DWORD2(v93);
            v94.i64[1] = HIDWORD(v93);
            *&buffer[v90] = vuzp1q_s32(vcvtq_u64_f64(vdivq_f64(vmulq_f64(v95, v92), v91)), vcvtq_u64_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v94), v92), v91)));
            v90 += 16;
          }

          while (v90 != 1024);
          v96 = 0;
          v97 = 0;
          v98 = 0;
          do
          {
            v99 = *&buffer[4 * v96];
            v98 += v99;
            if (v99 > *&buffer[4 * v97])
            {
              v97 = v96;
            }

            ++v96;
          }

          while (v96 != 256);
          *&buffer[4 * v97] = *&buffer[4 * v97] - v98 + 391680;
          v100 = *(v74 + 7532);
          *(v74 + 7532) = v100 + 1;
          if (v100)
          {
            v101 = CFDictionaryGetValue(v75, *off_1E798D030);
            v270 = a1;
            if (v101)
            {
              v102 = v101;
              memset(keys, 0, 32);
              Count = CFArrayGetCount(v101);
              if (Count >= 8)
              {
                v104 = 8;
              }

              else
              {
                v104 = Count;
              }

              if (Count)
              {
                v105 = 0;
                v106 = 0;
                v107 = *off_1E798D040;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v102, v105);
                  if (ValueAtIndex)
                  {
                    v109 = CFDictionaryGetValue(ValueAtIndex, v107);
                    if (v109)
                    {
                      CGRectMakeWithDictionaryRepresentation(v109, keys);
                      v110 = &v293[2 * v106];
                      *v110 = (CGRectGetMinX(keys[0]) * 3264.0 + 0.5);
                      *(v110 + 1) = (CGRectGetMinY(keys[0]) * 2448.0 + 0.5);
                      *(v110 + 2) = (CGRectGetWidth(keys[0]) * 3264.0 + 0.5);
                      *(v110 + 3) = (CGRectGetHeight(keys[0]) * 2448.0 + 0.5);
                      ++v106;
                    }
                  }

                  ++v105;
                }

                while (v104 != v105);
              }

              else
              {
                v106 = 0;
              }
            }

            else
            {
              v106 = 0;
            }

            v268 = fopen("/tmp/ae.txt", "a");
            v141 = 0;
            v142 = 0;
            v143 = *(v74 + 7532);
            v144 = &centerWeight;
            do
            {
              v145 = 0;
              v146 = v141;
              do
              {
                v147 = *&v144[v145];
                v148 = vorrq_s8(vshlq_n_s32(*(&values[2] + v146), 0x10uLL), vmovl_high_u16(v147));
                v149 = (keys + v146);
                *v149 = vorrq_s8(vshlq_n_s32(*(values + v146), 0x10uLL), vmovl_u16(*v147.i8));
                v149[1] = v148;
                v146 += 32;
                v145 += 16;
              }

              while (v145 != 32);
              ++v142;
              v141 += 64;
              v144 += 32;
            }

            while (v142 != 16);
            for (j = 0; j != 9; ++j)
            {
              if ((j - 3) <= 5)
              {
                v151 = sort_uint32_increments[j];
                if (v151 <= 0xFF)
                {
                  v152 = 255;
                }

                else
                {
                  v152 = sort_uint32_increments[j];
                }

                v153 = keys;
                v154 = keys + 4 * v151;
                v155 = sort_uint32_increments[j];
                do
                {
                  v156 = *(&keys[0].origin.x + v155);
                  v157 = v155;
                  if (v155 >= v151)
                  {
                    v158 = 0;
                    while (1)
                    {
                      v159 = *(&v153->origin.x + v158);
                      if (v159 <= v156)
                      {
                        break;
                      }

                      *&v154[4 * v158] = v159;
                      v158 -= v151;
                      v157 = v155 + v158;
                      if (v155 + v158 < v151)
                      {
                        goto LABEL_233;
                      }
                    }

                    v157 = v155 + v158;
                  }

LABEL_233:
                  *(&keys[0].origin.x + v157) = v156;
                  v154 += 4;
                  v153 = (v153 + 4);
                }

                while (v155++ != v152);
              }
            }

            v267 = v74;
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v165 = 0;
            v166 = 0;
            do
            {
              v167 = *(&keys[0].origin.x + v161);
              v168 = v167;
              v164 += v167;
              if (v164 > 319)
              {
                v169 = v163;
              }

              else
              {
                v169 = v163 + 1;
              }

              if (v164 <= 319)
              {
                v170 = v162;
              }

              else
              {
                v170 = v162 + 1;
              }

              v171 = v166 + v167 * HIWORD(v167);
              v172 = v168 + v165;
              if ((v164 - 15569) < 0xFFFFC46F)
              {
                v163 = v169;
                v162 = v170;
              }

              else
              {
                v166 = v171;
                v165 = v172;
              }

              v161 += 4;
            }

            while (v161 != 1024);
            if (v165 < 1)
            {
              v173 = 0;
            }

            else
            {
              v173 = v166 / v165;
            }

            for (k = 0; k != 16; ++k)
            {
              v175 = 0;
              v176 = &autoExposureSimulation_state + 32 * k;
              do
              {
                if (v106 < 1)
                {
                  v177 = 0;
                }

                else
                {
                  v177 = 0;
                  v178 = &v293[1];
                  v179 = v106;
                  do
                  {
                    v180 = *(v178 - 2);
                    v181 = *(v178 - 1);
                    v182 = (v180 << 12) / 3264;
                    v183 = (v181 << 12) / 2448;
                    v184 = ((*v178 + v180) << 12) / 0xCC0u;
                    v185 = ((*(v178 + 1) + v181) << 12) / 0x990u;
                    if (v182 <= v175 << 8)
                    {
                      v182 = v175 << 8;
                    }

                    if (v183 <= k << 8)
                    {
                      v186 = k << 8;
                    }

                    else
                    {
                      v186 = v183;
                    }

                    if (v184 >= (v175 << 8) + 256)
                    {
                      v187 = (v175 << 8) + 256;
                    }

                    else
                    {
                      v187 = v184;
                    }

                    if (v185 >= (k << 8) + 256)
                    {
                      v185 = (k << 8) + 256;
                    }

                    v188 = v187 >= v182;
                    v189 = v187 - v182;
                    if (v189 != 0 && v188 && v185 > v186)
                    {
                      v177 += ((v185 - v186) * v189) >> 8;
                    }

                    v178 += 2;
                    --v179;
                  }

                  while (v179);
                }

                if (v143 > 1)
                {
                  v177 = (9 * v177 - *&v176[2 * v175] + 8 * *&v176[2 * v175] + 7) >> 4;
                }

                *&v176[2 * v175++] = v177;
              }

              while (v175 != 16);
            }

            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = values;
            v195 = &autoExposureSimulation_state;
            do
            {
              v196 = 0;
              v197 = v192;
              v198 = 0uLL;
              v199 = v193;
              v200 = v194;
              v201 = 0uLL;
              do
              {
                v202 = *&v195[v196];
                v204 = *v200;
                v203 = v200[1];
                v200 += 2;
                v201 = vmlaq_s32(v201, v203, vmovl_high_u16(v202));
                v199 = vmlaq_s32(v199, v204, vmovl_u16(*v202.i8));
                v198 = vaddw_high_u16(v198, v202);
                v197 = vaddw_u16(v197, *v202.i8);
                v196 += 16;
              }

              while (v196 != 32);
              v192 = vaddvq_s32(vaddq_s32(v197, v198));
              v193 = vaddvq_s32(vaddq_s32(v199, v201));
              ++v191;
              v195 += 32;
              v194 += 8;
            }

            while (v191 != 16);
            v205 = 0;
            v206 = 0x10000;
            do
            {
              if (((v205 + v206) >> 1) * ((v205 + v206) >> 1) > v192)
              {
                v206 = (v205 + v206) >> 1;
              }

              else
              {
                v205 = (v205 + v206) >> 1;
              }
            }

            while (v205 + 1 < v206);
            v207 = 0;
            v208 = 0uLL;
            do
            {
              v208 = vaddq_s32(*&buffer[v207], v208);
              v207 += 16;
            }

            while (v207 != 1024);
            v209 = 0;
            v210 = 0;
            v211 = vaddvq_s32(v208);
            v212 = -1;
            v213 = -1;
            v214 = -1;
            do
            {
              v210 += *&buffer[4 * v209];
              if (v214 == -1 && v210 >= (10 * v211) >> 10)
              {
                v214 = v209;
              }

              if (v213 == -1 && v210 >= (665 * v211) >> 10)
              {
                v213 = v209;
              }

              if (v212 == -1 && v210 >= (972 * v211) >> 10)
              {
                v212 = v209;
              }

              ++v209;
            }

            while (v209 != 256);
            v218 = (v213 << 11) / (v212 + v214);
            if (v218 <= 512)
            {
              v219 = 512;
            }

            else
            {
              v219 = (v213 << 11) / (v212 + v214);
            }

            if (v219 >= 2048)
            {
              v220 = 2048;
            }

            else
            {
              v220 = v219;
            }

            v221 = v220 - 1024;
            v222 = v193 / v192;
            if (v218 < 1025)
            {
              v223 = (112976 * v221 + 192937984) >> 20;
            }

            else
            {
              v223 = (131744 * v221 + 192937984) >> 20;
              v224 = (((v287 << 10) / v211) + -51.2);
              if (v224 >= 1)
              {
                v225 = 4 * v224;
                if (v225 >= 1024)
                {
                  v225 = 1024;
                }

                v223 = (184 * v225 + (1024 - v225) * v223) >> 10;
              }
            }

            v226 = 8 * v205;
            if ((8 * v205) >= 768)
            {
              v226 = 768;
            }

            v227 = v226 & ~(v226 >> 31);
            v228 = ((1024 - v227) * v173 + v222 * v227) >> 10;
            v229 = (225 * v227 + v223 * (1024 - v227)) >> 10;
            if (v268)
            {
              v263 = v223;
              v264 = ((1024 - v227) * v173 + v222 * v227) >> 10;
              v265 = v220;
              v266 = v222;
              LODWORD(keys[0].origin.x) = 1065353216;
              LODWORD(v279[0]) = 256;
              v230 = CFDictionaryGetValue(v75, *off_1E798B2A8);
              if (v230)
              {
                CFNumberGetValue(v230, kCFNumberFloatType, keys);
              }

              v231 = CFDictionaryGetValue(v75, *off_1E798B0B8);
              if (v231)
              {
                CFNumberGetValue(v231, kCFNumberIntType, v279);
                v232 = vcvtd_n_f64_s32(v279[0], 8uLL);
              }

              else
              {
                v232 = 1.0;
              }

              fprintf(v268, "avg:%3d tgt:%3d  current: t=%.1fms %.1fx", v264, v229, *&keys[0].origin.x * 1000.0, v232);
              fprintf(v268, " faceAvg=%d faceWeight=%d (xl=%d xm=%d xh=%d) scale:%d sceneTarget:%d blend:%d average:%d target:%d outliers:%d/%d", v266, 4 * v205, v214, v213, v212, v265, v263, v227, v264, v229, v163, v162);
              v228 = v264;
            }

            if (v229 * 1.0443 < v228 || v229 * 0.9576 > v228)
            {
              v234 = 256;
              v283 = 256;
              v235 = (((v229 * 0.1) / v228) + 0.9) * *(v267 + 7528);
              v236 = 0.066667;
              if (v235 <= 0.066667)
              {
                v236 = (((v229 * 0.1) / v228) + 0.9) * *(v267 + 7528);
              }

              else
              {
                v234 = vcvts_n_s32_f32(v235 / 0.066667, 8uLL);
                if (v234 >= 3840)
                {
                  v234 = 3840;
                }
              }

              v277 = v234;
              if (v236 >= 0.000125)
              {
                v237 = v236;
              }

              else
              {
                v237 = 0.000125;
              }

              if (v237 >= 0.01)
              {
                v238 = 1000;
              }

              else
              {
                v238 = 100000;
              }

              LODWORD(v278) = v238;
              HIDWORD(v278) = ((v238 * v237) + 0.5);
              keys[0].origin.x = *off_1E798A2A8;
              v239 = *MEMORY[0x1E695E480];
              v279[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v278 + 4);
              keys[0].origin.y = *off_1E798A2A0;
              v279[1] = CFNumberCreate(v239, kCFNumberIntType, &v278);
              keys[0].size.width = *off_1E798A1B0;
              v280 = CFNumberCreate(v239, kCFNumberIntType, &v277);
              keys[0].size.height = *off_1E798A298;
              v281 = CFNumberCreate(v239, kCFNumberIntType, &v283);
              keys[1].origin.x = *off_1E798A290;
              v282 = CFNumberCreate(v239, kCFNumberIntType, &v283);
              v240 = CFDictionaryCreate(v239, keys, v279, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              for (m = 0; m != 5; ++m)
              {
                CFRelease(v279[m]);
              }

              if (v268)
              {
                fprintf(v268, "  set: t=%.1fms %.1fx", v237 * 1000.0, (v277 * 0.0039062));
              }

              captureStreamSetPropertyOnActivityScheduler(v270, *off_1E798BFE8, v240);
              *(v267 + 7528) = (v237 * v277) * 0.0039062;
            }

            if (v268)
            {
              fputc(10, v268);
              fclose(v268);
            }
          }
        }
      }
    }

    return v13;
  }

  v111 = CMBaseObjectGetDerivedStorage();
  v112 = *(v111 + 7560);
  v113 = CMGetAttachment(a2, v6, 0);
  if (!v113)
  {
    FigImageControl_Exposure_cold_26();
    return v13;
  }

  if (v112)
  {
    if (*v112)
    {
      v114 = *(v111 + 7532);
      *(v111 + 7532) = v114 + 1;
      if (v114)
      {
        v115 = v113;
        valuePtr = 0;
        *buffer = 0;
        v293[0] = 0;
        v276 = 0;
        v278 = 0;
        v279[0] = 0;
        v283 = 0;
        v271[0] = 0;
        v116 = CFDictionaryGetValue(v113, *off_1E798B048);
        if (!v116)
        {
          FigImageControl_Exposure_cold_25();
          return v13;
        }

        CFNumberGetValue(v116, kCFNumberIntType, &valuePtr + 4);
        v117 = CFDictionaryGetValue(v115, *off_1E798B088);
        if (!v117)
        {
          FigImageControl_Exposure_cold_24();
          return v13;
        }

        CFNumberGetValue(v117, kCFNumberIntType, &valuePtr);
        v118 = CFDictionaryGetValue(v115, *off_1E798B2D0);
        if (!v118)
        {
          FigImageControl_Exposure_cold_23();
          return v13;
        }

        CFNumberGetValue(v118, kCFNumberDoubleType, buffer);
        v119 = CFDictionaryGetValue(v115, *off_1E798B2A8);
        if (!v119)
        {
          FigImageControl_Exposure_cold_22();
          return v13;
        }

        CFNumberGetValue(v119, kCFNumberDoubleType, v293);
        v120 = CFDictionaryGetValue(v115, *off_1E798B3B0);
        if (!v120)
        {
          FigImageControl_Exposure_cold_21();
          return v13;
        }

        CFNumberGetValue(v120, kCFNumberSInt16Type, &v276);
        v121 = CFDictionaryGetValue(v115, *off_1E798B3A8);
        if (!v121)
        {
          FigImageControl_Exposure_cold_20();
          return v13;
        }

        CFNumberGetValue(v121, kCFNumberDoubleType, v279);
        v122 = CFDictionaryGetValue(v115, *off_1E798B0B8);
        if (!v122)
        {
          FigImageControl_Exposure_cold_19();
          return v13;
        }

        CFNumberGetValue(v122, kCFNumberIntType, &v283);
        v123 = CFDictionaryGetValue(v115, *off_1E798B7B8);
        if (!v123)
        {
          FigImageControl_Exposure_cold_18();
          return v13;
        }

        CFNumberGetValue(v123, kCFNumberIntType, &v278 + 4);
        v124 = CFDictionaryGetValue(v115, *off_1E798B7D0);
        if (!v124)
        {
          FigImageControl_Exposure_cold_17();
          return v13;
        }

        CFNumberGetValue(v124, kCFNumberIntType, &v278);
        v125 = CFDictionaryGetValue(v115, *off_1E798B7C0);
        if (!v125)
        {
          FigImageControl_Exposure_cold_16();
          return v13;
        }

        CFNumberGetValue(v125, kCFNumberDoubleType, v271);
        v126 = *buffer * *buffer;
        v127 = log2(*buffer * *buffer / (*v293 * (v276 / 100.0)));
        v128 = log2(SHIDWORD(valuePtr));
        v129 = v127 + v128 - log2(valuePtr);
        if (vabdd_f64(v127, v129) > *(v112 + 3))
        {
          v130 = *v112;
          if (*v112)
          {
            v131 = *(v112 + 2);
            if (v131)
            {
              v132 = *v279 * *v271;
              v133 = log2(v126 / (*(v130 + 8) * ((*v279 * *v271 * *(v130 + 16)) / 100.0)));
              v134 = (*v130 + (v129 - v133) * ((*(v130 + 24 * v131 - 24) - *v130) / (log2(v126 / (*(v130 + 24 * v131 - 16) * ((v132 * *(v130 + 24 * v131 - 8)) / 100.0))) - v133)) + 0.5);
              if ((v134 & 0x80000000) == 0)
              {
                if (v131 <= v134)
                {
                  v134 = v131 - 1;
                }

                v135 = v130 + 24 * v134;
                v136 = *(v135 + 8);
                v137 = vcvtd_n_s64_f64(*(v135 + 16), 8uLL);
LABEL_375:
                if (v136 >= 0.01)
                {
                  v255 = 1000;
                }

                else
                {
                  v255 = 100000;
                }

                v277 = v255;
                v275 = (v255 * v136 + 0.5);
                v256 = v137 >> 3;
                v257 = v137 >> 5;
                if (v137 <= 256)
                {
                  v137 = 256;
                }

                if (v137 >= 2048)
                {
                  v137 = 2048;
                }

                v274 = v137;
                if (v256 <= 256)
                {
                  v258 = 256;
                }

                else
                {
                  v258 = v256;
                }

                if (v258 >= 1024)
                {
                  v258 = 1024;
                }

                v273 = v258;
                if (v257 <= 256)
                {
                  v259 = 256;
                }

                else
                {
                  v259 = v257;
                }

                if (v259 >= 512)
                {
                  v259 = 512;
                }

                v272 = v259;
                keys[0].origin.x = *off_1E798A2A8;
                v260 = *MEMORY[0x1E695E480];
                values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v275);
                keys[0].origin.y = *off_1E798A2A0;
                values[1] = CFNumberCreate(v260, kCFNumberIntType, &v277);
                keys[0].size.width = *off_1E798A1B0;
                cf[0] = CFNumberCreate(v260, kCFNumberIntType, &v274);
                keys[0].size.height = *off_1E798A290;
                cf[1] = CFNumberCreate(v260, kCFNumberIntType, &v273);
                keys[1].origin.x = *off_1E798A298;
                v290[0] = CFNumberCreate(v260, kCFNumberIntType, &v272);
                v261 = CFDictionaryCreate(v260, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFE8, v261);
                CFRelease(values[0]);
                CFRelease(values[1]);
                CFRelease(cf[0]);
                CFRelease(cf[1]);
                CFRelease(v290[0]);
                CFRelease(v261);
                return v13;
              }
            }

            else
            {
              FigImageControl_Exposure_cold_14();
            }
          }

          else
          {
            FigImageControl_Exposure_cold_15();
          }

          v253 = v279[0];
          v254 = *buffer * *buffer;
          v136 = v254 / (exp2(v129) * (*&v253 / 100.0));
          v137 = 256;
          if (v136 < 0.00001)
          {
            v136 = 0.00001;
          }

          goto LABEL_375;
        }
      }
    }
  }

  return v13;
}

uint64_t FigImageControl_WhiteBalance(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage + 4096;
  if ((*(DerivedStorage + 7444) & 1) == 0)
  {
    v7 = DerivedStorage;
    v8 = *(DerivedStorage + 7428);
    if (v8 == 1)
    {
      if (*(DerivedStorage + 7424) == 1)
      {
        v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C250, 0);
        *(v5 + 3328) = 0;
        goto LABEL_27;
      }
    }

    else if (!v8)
    {
      if (*(DerivedStorage + 7424))
      {
        v6 = 0;
      }

      else
      {
        v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFA0, 0);
        *(v5 + 3328) = 1;
      }

      if (*(v7 + 3716))
      {
        if ((!*(v7 + 3717) || !*(v7 + 3718)) && !v7[1860])
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

      if (v7[1860])
      {
        if (!*(v7 + 3717) && !*(v7 + 3718))
        {
          v15 = CMGetAttachment(a2, *off_1E798A3C8, 0);
          if (v15)
          {
            v16 = v15;
            Value = CFDictionaryGetValue(v15, *off_1E798B120);
            if (Value)
            {
              CFNumberGetValue(Value, kCFNumberSInt16Type, v7 + 1858);
            }

            v18 = CFDictionaryGetValue(v16, *off_1E798B0F8);
            if (v18)
            {
              CFNumberGetValue(v18, kCFNumberSInt16Type, v7 + 7434);
            }

            v19 = CFDictionaryGetValue(v16, *off_1E798B0C0);
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberSInt16Type, v7 + 1859);
            }
          }
        }

LABEL_19:
        if (v7[1860] <= 0)
        {
          v9 = 3;
        }

        else
        {
          v9 = 4;
        }

        v21 = 0;
        v10 = *off_1E798AED0;
        v23 = 0;
        keys[0] = v10;
        v11 = *MEMORY[0x1E695E480];
        v20[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, v7 + 1858);
        keys[1] = *off_1E798AEC8;
        v20[1] = CFNumberCreate(v11, kCFNumberSInt16Type, v7 + 7434);
        keys[2] = *off_1E798AEC0;
        v20[2] = CFNumberCreate(v11, kCFNumberSInt16Type, v7 + 1859);
        if (v7[1860] >= 1)
        {
          v23 = *off_1E798A1C8;
          v21 = CFNumberCreate(v11, kCFNumberSInt32Type, v7 + 1860);
        }

        v12 = CFDictionaryCreate(v11, keys, v20, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFF8, v12);
        for (i = 0; i != v9; ++i)
        {
          CFRelease(v20[i]);
        }

        CFRelease(v12);
      }

LABEL_27:
      *(v5 + 3348) = 1;
      return v6;
    }

    v6 = 0;
    goto LABEL_27;
  }

  return 0;
}

uint64_t FigImageControl_CurrentFocusRectByPortType(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 7612);
  if ((v2 - 2) < 2 || v2 == 1 && (*(DerivedStorage + 7672) & 1) == 0)
  {
    return *(DerivedStorage + 9064);
  }

  else
  {
    return 0;
  }
}