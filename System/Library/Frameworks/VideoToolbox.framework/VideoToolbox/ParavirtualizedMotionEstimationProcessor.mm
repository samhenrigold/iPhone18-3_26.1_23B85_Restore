@interface ParavirtualizedMotionEstimationProcessor
@end

@implementation ParavirtualizedMotionEstimationProcessor

uint64_t __ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  HIDWORD(v65) = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v65 + 1, 0, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      v7 = HIDWORD(v65);
      if (SHIDWORD(v65) <= 1298492787)
      {
        if (HIDWORD(v65) == 1298298214)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          pixelBuffer = 0;
          *v73 = 0;
          v69 = 0;
          cf = 0;
          IOSurface = 0;
          if (VTParavirtualizationMessageGetSInt64() || (v39 = theArray[0], VTParavirtualizationMessageCopyCFDictionary(a2, 745566064, v73)))
          {
            v41 = 0;
          }

          else
          {
            MotionVectorPixelBufferWithOptions = VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions(*DerivedStorage, v39, *v73, &pixelBuffer);
            if (pixelBuffer)
            {
              v41 = CFUUIDCreate(*MEMORY[0x1E695E480]);
              paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(v6, v41, pixelBuffer);
              v42 = 0;
            }

            else
            {
              v42 = MotionVectorPixelBufferWithOptions;
              v41 = 0;
            }

            if (!VTParavirtualizationCreateReplyAndByteStream(a2, 8u, &cf, &v69) && !VTParavirtualizationMessageAppendSInt32(v69, 744845938, v42) && (!v41 || !VTParavirtualizationMessageAppendCFUUID()))
            {
              if (pixelBuffer)
              {
                IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
                v49 = IOSurface != 0;
                if (IOSurface)
                {
                  p_IOSurface = &IOSurface;
                }

                else
                {
                  p_IOSurface = 0;
                }
              }

              else
              {
                v49 = 0;
                p_IOSurface = 0;
              }

              VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAsync(cf, p_IOSurface, v49);
            }
          }

          if (pixelBuffer)
          {
            CFRelease(pixelBuffer);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v69)
          {
            CFRelease(v69);
          }

          v20 = *v73;
          if (!*v73)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (HIDWORD(v65) != 1298428002)
          {
            goto LABEL_61;
          }

          CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          if (!VTParavirtualizationMessageCopyCFUUIDArray())
          {
            for (i = 0; ; ++i)
            {
              Count = theArray[0];
              if (theArray[0])
              {
                Count = CFArrayGetCount(theArray[0]);
              }

              if (i >= Count)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
              v19 = CMBaseObjectGetDerivedStorage();
              os_unfair_lock_lock((v19 + 40));
              if (CFDictionaryGetValue(*(v19 + 48), ValueAtIndex))
              {
                CFDictionaryRemoveValue(*(v19 + 48), ValueAtIndex);
                os_unfair_lock_unlock((v19 + 40));
              }

              else if (!__ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke_cold_1((v19 + 40)))
              {
                break;
              }
            }
          }

          v20 = theArray[0];
          if (!theArray[0])
          {
            goto LABEL_113;
          }
        }

LABEL_88:
        CFRelease(v20);
LABEL_113:
        CFRelease(v6);
        return MessageTypeAndFlagsAndGuestUUID;
      }

      if (HIDWORD(v65) != 1298492788)
      {
        if (HIDWORD(v65) == 1299411041)
        {
          v31 = CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          pixelBuffer = 0;
          *v73 = 0;
          if (VTParavirtualizationCreateReplyAndByteStream(a2, 8u, v73, &pixelBuffer) || VTParavirtualizationMessageCopyCFDictionary(a2, 745562721, theArray))
          {
            goto LABEL_51;
          }

          v15 = VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(*v31, theArray[0], v32, v33, v34, v35, v36, v37);
LABEL_49:
          if (!VTParavirtualizationMessageAppendSInt32(pixelBuffer, 744845938, v15))
          {
            VTParavirtualizationGuestSendMessageToHostAsync(*v73);
          }

LABEL_51:
          if (theArray[0])
          {
            CFRelease(theArray[0]);
          }

          if (*v73)
          {
            CFRelease(*v73);
          }

          v20 = pixelBuffer;
          if (!pixelBuffer)
          {
            goto LABEL_113;
          }

          goto LABEL_88;
        }

        if (HIDWORD(v65) == 1299607650)
        {
          v8 = CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          pixelBuffer = 0;
          *v73 = 0;
          if (VTParavirtualizationCreateReplyAndByteStream(a2, 8u, v73, &pixelBuffer) || VTParavirtualizationMessageCopyCFDictionary(a2, 745562721, theArray))
          {
            goto LABEL_51;
          }

          v15 = VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(*v8, theArray[0], v9, v10, v11, v12, v13, v14);
          goto LABEL_49;
        }

LABEL_61:
        LODWORD(pixelBuffer) = 0;
        LOBYTE(cf) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v44 = pixelBuffer;
        v45 = cf;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, cf))
        {
          v46 = v44;
        }

        else
        {
          v46 = v44 & 0xFFFFFFFE;
        }

        if (v46)
        {
          v47 = MEMORY[0x1E69E9830];
          if ((v7 & 0x80000000) != 0)
          {
            v48 = __maskrune(v7 >> 24, 0x40000uLL);
          }

          else
          {
            v48 = *(MEMORY[0x1E69E9830] + 4 * (v7 >> 24) + 60) & 0x40000;
          }

          if (v48)
          {
            v51 = v7 >> 24;
          }

          else
          {
            v51 = 46;
          }

          LODWORD(v65) = v51;
          if (BYTE2(v7) > 0x7Fu)
          {
            v52 = __maskrune(BYTE2(v7), 0x40000uLL);
          }

          else
          {
            v52 = *(v47 + 4 * BYTE2(v7) + 60) & 0x40000;
          }

          if (v52)
          {
            v53 = BYTE2(v7);
          }

          else
          {
            v53 = 46;
          }

          v54 = v47;
          if (BYTE1(v7) > 0x7Fu)
          {
            v55 = __maskrune(BYTE1(v7), 0x40000uLL);
          }

          else
          {
            v55 = *(v47 + 4 * BYTE1(v7) + 60) & 0x40000;
          }

          if (v55)
          {
            v56 = BYTE1(v7);
          }

          else
          {
            v56 = 46;
          }

          if (v7 > 0x7Fu)
          {
            v57 = __maskrune(v7, 0x40000uLL);
          }

          else
          {
            v57 = *(v54 + 4 * v7 + 60) & 0x40000;
          }

          *&v73[4] = "paravirtualizedMotionEstimationProcessor_HandleMessageFromHost";
          *v73 = 136316162;
          if (v57)
          {
            v58 = v7;
          }

          else
          {
            v58 = 46;
          }

          v74 = 1024;
          v75 = v65;
          v76 = 1024;
          v77 = v53;
          v78 = 1024;
          v79 = v56;
          v80 = 1024;
          v81 = v58;
          _os_log_send_and_compose_impl(v46, 0, theArray, 128, &dword_18F99C000, os_log_and_send_and_compose_flags_and_os_log_type, v45, "<<<< ParavirtualizedMotionEstimationProcessor >>>> %s: unhandled message %c%c%c%c", v73, 36, v65, v66, v67);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_113;
      }

      v21 = CMBaseObjectGetDerivedStorage();
      v71 = 0;
      pixelBuffer = 0;
      v69 = 0;
      cf = 0;
      v67 = 0;
      IOSurface = 0;
      SInt64 = VTParavirtualizationCreateReplyAndByteStream(a2, 8u, &IOSurface, &v67);
      if (SInt64 || (SInt64 = VTParavirtualizationMessageGetSInt64(), SInt64))
      {
        v60 = SInt64;
        v26 = 0;
        v23 = 0;
      }

      else
      {
        v23 = pixelBuffer;
        VTParavirtualizationMessageGetSInt32();
        if (v24 || (v25 = HIDWORD(v71), VTParavirtualizationMessageGetUInt32(), v24) || (v24 = VTParavirtualizationMessageCopyCFDictionary(a2, 745365860, &cf), v24) || (v24 = VTParavirtualizationMessageCopyCFUUID(), v24))
        {
          v60 = v24;
          v26 = 0;
        }

        else
        {
          v26 = v69;
          if (v69)
          {
            v27 = CMBaseObjectGetDerivedStorage();
            os_unfair_lock_lock((v27 + 40));
            Value = CFDictionaryGetValue(*(v27 + 48), v26);
            v26 = Value;
            if (Value)
            {
              CFRetain(Value);
            }

            else
            {
              __ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke_cold_2();
            }

            os_unfair_lock_unlock((v27 + 40));
          }

          v29 = VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(a2, v26);
          if (!v29)
          {
            v30 = VTMotionEstimationProcessorSessionEmitMotionVectors(*v21, v23, v25, v71, cf, v26);
            if (!VTParavirtualizationMessageAppendSInt32(v67, 744845938, v30))
            {
              VTParavirtualizationGuestSendMessageToHostAsync(IOSurface);
            }

            goto LABEL_36;
          }

          v60 = v29;
        }
      }

      HIDWORD(v66) = 0;
      BYTE3(v66) = 0;
      v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v62 = HIDWORD(v66);
      v63 = BYTE3(v66);
      if (os_log_type_enabled(v61, BYTE3(v66)))
      {
        v64 = v62;
      }

      else
      {
        v64 = v62 & 0xFFFFFFFE;
      }

      if (v64)
      {
        *v73 = 136315394;
        *&v73[4] = "ParavirtualizedMotionEstimationProcessor_HandleEmitMotionVectors";
        v74 = 1024;
        v75 = v60;
        _os_log_send_and_compose_impl(v64, 0, theArray, 128, &dword_18F99C000, v61, v63, "<<<< ParavirtualizedMotionEstimationProcessor >>>> %s: -> %d", v73, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTMotionEstimationProcessorSessionEmitMotionVectors(*v21, v23, v60, v71, cf, 0);
LABEL_36:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (v69)
      {
        CFRelease(v69);
      }

      if (IOSurface)
      {
        CFRelease(IOSurface);
      }

      v20 = v67;
      if (!v67)
      {
        goto LABEL_113;
      }

      goto LABEL_88;
    }
  }

  return MessageTypeAndFlagsAndGuestUUID;
}

BOOL __ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke_cold_1(os_unfair_lock_s *a1)
{
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  os_unfair_lock_unlock(a1);
  return v2 == 0;
}

@end