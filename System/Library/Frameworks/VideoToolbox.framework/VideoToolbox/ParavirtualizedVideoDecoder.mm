@interface ParavirtualizedVideoDecoder
@end

@implementation ParavirtualizedVideoDecoder

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  v179[16] = *MEMORY[0x1E69E9840];
  HIDWORD(v163) = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v163 + 1, 0, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      v7 = HIDWORD(v163);
      if (SHIDWORD(v163) <= 1148021093)
      {
        if (SHIDWORD(v163) > 1147433056)
        {
          if (HIDWORD(v163) == 1147433057)
          {
            VTVideoDecoderGetCMBaseObject();
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            theArray = 0;
            cf = 0;
            os_unfair_lock_lock((DerivedStorage + 16));
            if (*DerivedStorage)
            {
              DestinationPixelBufferAttributes = VTDecoderSessionGetDestinationPixelBufferAttributes(*DerivedStorage);
            }

            else
            {
              DestinationPixelBufferAttributes = 0;
            }

            os_unfair_lock_unlock((DerivedStorage + 16));
            appended = VTParavirtualizationCreateReplyAndByteStream(a2, 8u, &cf, &theArray);
            if (!appended && (!DestinationPixelBufferAttributes || (appended = VTParavirtualizationMessageAppendCFDictionary(theArray, 0x2C706261u, DestinationPixelBufferAttributes)) == 0))
            {
              appended = VTParavirtualizationGuestSendMessageToHostAsync(cf);
              if (!appended)
              {
                goto LABEL_265;
              }
            }

            v80 = appended;
            LODWORD(pixelBuffer) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v82 = pixelBuffer;
            v83 = type[0];
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
            {
              v84 = v82;
            }

            else
            {
              v84 = v82 & 0xFFFFFFFE;
            }

            if (v84)
            {
              *v174 = 136315650;
              *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionGetDestinationPixelBufferAttributes";
              v175 = 2048;
              *v176 = v6;
              *&v176[8] = 1024;
              *v177 = v80;
              LODWORD(v154) = 28;
              _os_log_send_and_compose_impl(v84, 0, v179, 128, &dword_18F99C000, os_log_and_send_and_compose_flags_and_os_log_type, v83, "<<<< ParavirtualizedVideoDecoder >>>> %s: (decoder %p) VTDecoderSessionGetDestinationPixelBufferAttributes failed with error %d", v174, v154, v155);
            }

            goto LABEL_264;
          }

          if (HIDWORD(v163) != 1147497844)
          {
            if (HIDWORD(v163) == 1147565410)
            {
              v179[0] = 0;
              if (!VTParavirtualizationMessageCopyCFUUIDArray())
              {
                if (!v179[0])
                {
LABEL_265:
                  CFRelease(v6);
                  return MessageTypeAndFlagsAndGuestUUID;
                }

                if (CFArrayGetCount(v179[0]) >= 1)
                {
                  paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs(v6, v179[0], 0);
                }
              }

              goto LABEL_57;
            }

            goto LABEL_85;
          }

          VTVideoDecoderGetCMBaseObject();
          v41 = CMBaseObjectGetDerivedStorage();
          theArray = 0;
          cf = 0;
          LODWORD(v168) = 0;
          LODWORD(IOSurface) = 0;
          *type = 0;
          pixelBuffer = 0;
          SInt64 = VTParavirtualizationMessageGetSInt64();
          if (!SInt64)
          {
            v43 = cf;
            VTParavirtualizationMessageGetSInt32();
            if (v44)
            {
              v54 = v44;
              v159 = v43;
              v52 = 0;
              v158 = 0;
              LODWORD(v45) = 0;
              goto LABEL_319;
            }

            v45 = v168;
            VTParavirtualizationMessageGetUInt32();
            if (v46)
            {
              v54 = v46;
              v159 = v43;
              v52 = 0;
              v158 = 0;
              goto LABEL_319;
            }

            v47 = IOSurface;
            v48 = VTParavirtualizationMessageCopyCFUUID();
            if (v48)
            {
              v54 = v48;
              v158 = v47;
              v159 = v43;
              v52 = 0;
              goto LABEL_319;
            }

            v49 = theArray;
            if (theArray)
            {
              VTVideoDecoderGetCMBaseObject();
              v50 = CMBaseObjectGetDerivedStorage();
              os_unfair_lock_lock((v50 + 64));
              Value = CFDictionaryGetValue(*(v50 + 72), v49);
              v52 = Value;
              if (Value)
              {
                CFRetain(Value);
                CFDictionaryRemoveValue(*(v50 + 72), v49);
                os_unfair_lock_unlock((v50 + 64));
                v53 = VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(a2, v52);
                if (v53)
                {
                  v54 = v53;
                  v158 = v47;
                  v159 = v43;
LABEL_319:
                  LODWORD(v166) = 0;
                  v169[4] = OS_LOG_TYPE_DEFAULT;
                  v149 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v150 = v166;
                  v151 = v169[4];
                  v152 = v149;
                  if (os_log_type_enabled(v149, v169[4]))
                  {
                    v153 = v150;
                  }

                  else
                  {
                    v153 = v150 & 0xFFFFFFFE;
                  }

                  if (v153)
                  {
                    *v174 = 136315650;
                    *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedFrameMessage";
                    v175 = 2048;
                    *v176 = v6;
                    *&v176[8] = 1024;
                    *v177 = v54;
                    LODWORD(v154) = 28;
                    _os_log_send_and_compose_impl(v153, 0, v179, 128, &dword_18F99C000, v152, v151, "<<<< ParavirtualizedVideoDecoder >>>> %s: decoder %p -> %d", v174, v154, v155);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  os_unfair_lock_lock((v41 + 16));
                  if (*v41)
                  {
                    VTDecoderSessionEmitDecodedFrame(*v41, v159, v54, v158, 0);
                  }

                  os_unfair_lock_unlock((v41 + 16));
                  LODWORD(v43) = v159;
                  LODWORD(v47) = v158;
                  goto LABEL_163;
                }
              }

              else
              {
                v158 = v47;
                v159 = v43;
                if (!__ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_6((v50 + 64), v179))
                {
                  v54 = LODWORD(v179[0]);
                  goto LABEL_319;
                }

                v47 = v47;
              }
            }

            else
            {
              v52 = 0;
            }

            os_unfair_lock_lock((v41 + 16));
            if (*v41)
            {
              v99 = VTDecoderSessionEmitDecodedFrame(*v41, v43, v45, v47, v52);
            }

            else
            {
              v99 = 0;
            }

            os_unfair_lock_unlock((v41 + 16));
            v115 = VTParavirtualizationCreateReplyAndByteStream(a2, 8u, &pixelBuffer, type);
            if (v115 || (v115 = VTParavirtualizationMessageAppendSInt32(*type, 744845938, v99)) != 0)
            {
              LODWORD(v54) = v115;
            }

            else
            {
              v116 = VTParavirtualizationGuestSendMessageToHostAsync(pixelBuffer);
              if (v116)
              {
                LODWORD(v54) = v116;
              }

              else
              {
                LODWORD(v54) = v99;
              }

              if (!v54)
              {
                goto LABEL_189;
              }
            }

LABEL_163:
            LODWORD(v166) = 0;
            v169[4] = OS_LOG_TYPE_DEFAULT;
            v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v118 = v166;
            v119 = v169[4];
            if (os_log_type_enabled(v117, v169[4]))
            {
              v120 = v118;
            }

            else
            {
              v120 = v118 & 0xFFFFFFFE;
            }

            if (v120)
            {
              *v174 = 136316674;
              *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedFrameMessage";
              v175 = 2048;
              *v176 = v6;
              *&v176[8] = 1024;
              *v177 = v54;
              *&v177[4] = 1024;
              *v178 = v43;
              *&v178[4] = 1024;
              *&v178[6] = v45;
              *&v178[10] = 1024;
              *&v178[12] = v47;
              *&v178[16] = 2048;
              *&v178[18] = v52;
              LODWORD(v154) = 56;
              _os_log_send_and_compose_impl(v120, 0, v179, 128, &dword_18F99C000, v117, v119, "<<<< ParavirtualizedVideoDecoder >>>> %s: (decoder %p) VTDecoderSessionEmitDecodedFrame failed with error %d, frame %d, status %d, infoFlags 0x%x, pixelBuffer %p", v174, v154, v155, v156, v157, v159, v163);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_189:
            if (v52)
            {
              CFRelease(v52);
            }

            v131 = theArray;
            if (!theArray)
            {
              goto LABEL_199;
            }

            goto LABEL_198;
          }

          v54 = SInt64;
          v52 = 0;
          v158 = 0;
          LODWORD(v45) = 0;
          v159 = 0;
          goto LABEL_319;
        }

        if (HIDWORD(v163) == 1115252001)
        {
          VTVideoDecoderGetCMBaseObject();
          v24 = CMBaseObjectGetDerivedStorage();
          os_unfair_lock_lock((v24 + 64));
          CFDictionaryRemoveAllValues(*(v24 + 72));
          os_unfair_lock_unlock((v24 + 64));
          VTVideoDecoderGetCMBaseObject();
          v25 = CMBaseObjectGetDerivedStorage();
          os_unfair_lock_lock((v25 + 80));
          CFDictionaryRemoveAllValues(*(v25 + 88));
          os_unfair_lock_unlock((v25 + 80));
          VTVideoDecoderGetCMBaseObject();
          v26 = CMBaseObjectGetDerivedStorage();
          v27 = VTParavirtualizationCopyNotificationQueueForGuestUUID(v26 + 2);
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          if (v27)
          {
            dispatch_release(v27);
          }

          goto LABEL_265;
        }

        if (HIDWORD(v163) == 1147303270)
        {
          VTVideoDecoderGetCMBaseObject();
          v16 = CMBaseObjectGetDerivedStorage();
          theArray = 0;
          cf = 0;
          *type = 0;
          pixelBuffer = 0;
          IOSurface = 0;
          v168 = 0;
          v17 = VTParavirtualizationMessageGetSInt64();
          if (v17)
          {
            v103 = v17;
            LODWORD(v18) = 0;
          }

          else
          {
            v18 = cf;
            v19 = VTParavirtualizationMessageCopyCFDictionary(a2, 745566064, &theArray);
            if (!v19)
            {
              os_unfair_lock_lock((v16 + 16));
              if (*v16)
              {
                v20 = VTDecoderSessionCreatePixelBufferWithOptions(*v16, v18, theArray, &pixelBuffer);
              }

              else
              {
                v20 = 0;
              }

              os_unfair_lock_unlock((v16 + 16));
              if (pixelBuffer)
              {
                v87 = CFUUIDCreate(*MEMORY[0x1E695E480]);
                v88 = pixelBuffer;
                VTVideoDecoderGetCMBaseObject();
                v89 = CMBaseObjectGetDerivedStorage();
                os_unfair_lock_lock((v89 + 64));
                CFDictionarySetValue(*(v89 + 72), v87, v88);
                CFDictionaryGetCount(*(v89 + 72));
                os_unfair_lock_unlock((v89 + 64));
                v20 = 0;
              }

              else
              {
                v87 = 0;
              }

              v90 = VTParavirtualizationCreateReplyAndByteStream(a2, 8u, type, &v168);
              if (v90 || (v90 = VTParavirtualizationMessageAppendSInt32(v168, 744845938, v20)) != 0 || v87 && (v90 = VTParavirtualizationMessageAppendCFUUID()) != 0)
              {
                v103 = v90;
              }

              else
              {
                if (pixelBuffer)
                {
                  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
                  v91 = IOSurface != 0;
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
                  v91 = 0;
                  p_IOSurface = 0;
                }

                v102 = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAsync(*type, p_IOSurface, v91);
                if (v102)
                {
                  v103 = v102;
                }

                else
                {
                  v103 = v20;
                }

                if (!v103)
                {
                  goto LABEL_205;
                }
              }

LABEL_139:
              v104 = FigCFCopyCompactDescription();
              LODWORD(v166) = 0;
              v169[4] = OS_LOG_TYPE_DEFAULT;
              v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v106 = v166;
              v107 = v169[4];
              if (os_log_type_enabled(v105, v169[4]))
              {
                v108 = v106;
              }

              else
              {
                v108 = v106 & 0xFFFFFFFE;
              }

              if (v108)
              {
                *v174 = 136316162;
                *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionCreatePixelBufferMessage";
                v175 = 2048;
                *v176 = v6;
                *&v176[8] = 1024;
                *v177 = v103;
                *&v177[4] = 1024;
                *v178 = v18;
                *&v178[4] = 2114;
                *&v178[6] = v104;
                _os_log_send_and_compose_impl(v108, 0, v179, 128, &dword_18F99C000, v105, v107, "<<<< ParavirtualizedVideoDecoder >>>> %s: (decoder %p) VTDecoderSessionCreatePixelBufferWithOptions failed with err %d for frame %d options %{public}@", v174, 44);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (v104)
              {
                CFRelease(v104);
              }

LABEL_205:
              if (pixelBuffer)
              {
                CFRelease(pixelBuffer);
              }

              if (v87)
              {
                CFRelease(v87);
              }

              if (*type)
              {
                CFRelease(*type);
              }

              if (v168)
              {
                CFRelease(v168);
              }

              v40 = theArray;
              if (!theArray)
              {
                goto LABEL_265;
              }

              goto LABEL_240;
            }

            v103 = v19;
          }

          v87 = 0;
          goto LABEL_139;
        }

LABEL_85:
        LODWORD(cf) = 0;
        LOBYTE(theArray) = 0;
        v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v74 = cf;
        v75 = theArray;
        if (os_log_type_enabled(v73, theArray))
        {
          v76 = v74;
        }

        else
        {
          v76 = v74 & 0xFFFFFFFE;
        }

        if (v76)
        {
          v77 = MEMORY[0x1E69E9830];
          if ((v7 & 0x80000000) != 0)
          {
            v78 = __maskrune(v7 >> 24, 0x40000uLL);
          }

          else
          {
            v78 = *(MEMORY[0x1E69E9830] + 4 * (v7 >> 24) + 60) & 0x40000;
          }

          if (v78)
          {
            v132 = v7 >> 24;
          }

          else
          {
            v132 = 46;
          }

          v161 = v132;
          if (BYTE2(v7) > 0x7Fu)
          {
            v133 = __maskrune(BYTE2(v7), 0x40000uLL);
          }

          else
          {
            v133 = *(v77 + 4 * BYTE2(v7) + 60) & 0x40000;
          }

          if (v133)
          {
            v134 = BYTE2(v7);
          }

          else
          {
            v134 = 46;
          }

          v135 = v77;
          if (BYTE1(v7) > 0x7Fu)
          {
            v136 = __maskrune(BYTE1(v7), 0x40000uLL);
          }

          else
          {
            v136 = *(v77 + 4 * BYTE1(v7) + 60) & 0x40000;
          }

          if (v136)
          {
            v137 = BYTE1(v7);
          }

          else
          {
            v137 = 46;
          }

          if (v7 > 0x7Fu)
          {
            v138 = __maskrune(v7, 0x40000uLL);
          }

          else
          {
            v138 = *(v135 + 4 * v7 + 60) & 0x40000;
          }

          *&v174[4] = "paravirtualizedVideoDecoder_HandleMessageFromHost";
          *v174 = 136316162;
          if (v138)
          {
            v139 = v7;
          }

          else
          {
            v139 = 46;
          }

          v175 = 1024;
          *v176 = v161;
          *&v176[4] = 1024;
          *&v176[6] = v134;
          *v177 = 1024;
          *&v177[2] = v137;
          *v178 = 1024;
          *&v178[2] = v139;
          _os_log_send_and_compose_impl(v76, 0, v179, 128, &dword_18F99C000, v73, v75, "<<<< ParavirtualizedVideoDecoder >>>> %s: unhandled message %c%c%c%c", v174, 36, v155, v156, v157);
        }

LABEL_264:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_265;
      }

      if (SHIDWORD(v163) > 1148350560)
      {
        if (HIDWORD(v163) == 1148350561)
        {
          VTVideoDecoderGetCMBaseObject();
          v39 = CMBaseObjectGetDerivedStorage();
          v179[0] = 0;
          cf = 0;
          *v174 = 0;
          if (!VTDecoderSessionCopyResolvedPixelBufferAttributes(*v39, *MEMORY[0x1E695E480], v179) && !VTParavirtualizationCreateReplyAndByteStream(a2, 8u, v174, &cf) && (!v179[0] || !VTParavirtualizationMessageAppendCFDictionary(cf, 0x2C706261u, v179[0])))
          {
            VTParavirtualizationGuestSendMessageToHostAsync(*v174);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (*v174)
          {
            CFRelease(*v174);
          }

LABEL_57:
          v40 = v179[0];
          if (!v179[0])
          {
            goto LABEL_265;
          }

          goto LABEL_240;
        }

        if (HIDWORD(v163) != 1413768557)
        {
          if (HIDWORD(v163) != 1413772146)
          {
            goto LABEL_85;
          }

          VTVideoDecoderGetCMBaseObject();
          v8 = CMBaseObjectGetDerivedStorage();
          theArray = 0;
          cf = 0;
          v9 = VTParavirtualizationMessageCopyCFDictionary(a2, 744710753, &cf);
          if (v9)
          {
            v15 = v9;
            v10 = 0;
            v12 = 0;
            goto LABEL_123;
          }

          v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v10)
          {
            MutableCopy = FigCFDictionaryCreateMutableCopy();
            v12 = MutableCopy;
            if (MutableCopy)
            {
              CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E69660D8], v10);
              v13 = VTParavirtualizationMessageCopyCFDictionary(a2, 745825394, &theArray);
              if (!v13)
              {
                os_unfair_lock_lock((v8 + 16));
                v14 = *(v8 + 8);
                if (v14)
                {
                  v15 = VTTileDecoderSessionSetTileDecodeRequirements(v14, cf, theArray);
                }

                else
                {
                  v15 = 0;
                }

                os_unfair_lock_unlock((v8 + 16));
                if (v15)
                {
                  goto LABEL_123;
                }

LABEL_219:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (theArray)
                {
                  CFRelease(theArray);
                }

                if (v10)
                {
                  CFRelease(v10);
                }

                if (!v12)
                {
                  goto LABEL_265;
                }

                v40 = v12;
                goto LABEL_240;
              }

              v15 = v13;
LABEL_123:
              v93 = FigCFCopyCompactDescription();
              v94 = FigCFCopyCompactDescription();
              LODWORD(pixelBuffer) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v96 = pixelBuffer;
              v97 = type[0];
              if (os_log_type_enabled(v95, type[0]))
              {
                v98 = v96;
              }

              else
              {
                v98 = v96 & 0xFFFFFFFE;
              }

              if (v98)
              {
                *v174 = 136316162;
                *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionSetTileDecodeRequirementsMessage";
                v175 = 2048;
                *v176 = v6;
                *&v176[8] = 1024;
                *v177 = v15;
                *&v177[4] = 2114;
                *v178 = v93;
                *&v178[8] = 2114;
                *&v178[10] = v94;
                _os_log_send_and_compose_impl(v98, 0, v179, 128, &dword_18F99C000, v95, v97, "<<<< ParavirtualizedVideoDecoder >>>> %s: (decoder %p) VTTileDecoderSessionSetTileDecodeRequirements failed with error %d for canvasPixelBufferAttributes=%{public}@ tileDecodeRequirementsDesc=%{public}@", v174, 48);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (v94)
              {
                CFRelease(v94);
              }

              if (v93)
              {
                CFRelease(v93);
              }

              goto LABEL_219;
            }

            __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_3(v179);
          }

          else
          {
            __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_4(v179);
            v12 = 0;
          }

          v15 = v179[0];
          if (!LODWORD(v179[0]))
          {
            goto LABEL_219;
          }

          goto LABEL_123;
        }

        VTVideoDecoderGetCMBaseObject();
        v55 = CMBaseObjectGetDerivedStorage();
        theArray = 0;
        cf = 0;
        LODWORD(v168) = 0;
        LODWORD(IOSurface) = 0;
        *type = 0;
        pixelBuffer = 0;
        v56 = VTParavirtualizationMessageGetSInt64();
        if (v56)
        {
          v72 = v56;
          v57 = 0;
        }

        else
        {
          v57 = cf;
          VTParavirtualizationMessageGetSInt32();
          if (!v58)
          {
            HIDWORD(v157) = v168;
            VTParavirtualizationMessageGetUInt32();
            if (!v59)
            {
              v160 = IOSurface;
              v60 = VTParavirtualizationMessageCopyCFUUID();
              if (!v60)
              {
                v61 = theArray;
                if (!theArray)
                {
                  v67 = 0;
LABEL_132:
                  os_unfair_lock_lock((v55 + 16));
                  v100 = *(v55 + 8);
                  if (v100)
                  {
                    v101 = VTTileDecoderSessionEmitDecodedTile(v100, v57, HIDWORD(v157), v160, v67);
                  }

                  else
                  {
                    v101 = 0;
                  }

                  os_unfair_lock_unlock((v55 + 16));
                  v109 = VTParavirtualizationCreateReplyAndByteStream(a2, 8u, &pixelBuffer, type);
                  if (v109 || (v109 = VTParavirtualizationMessageAppendSInt32(*type, 744845938, v101)) != 0)
                  {
                    v72 = v109;
                  }

                  else
                  {
                    v110 = VTParavirtualizationGuestSendMessageToHostAsync(pixelBuffer);
                    if (v110)
                    {
                      v72 = v110;
                    }

                    else
                    {
                      v72 = v101;
                    }

                    if (!v72)
                    {
LABEL_194:
                      if (theArray)
                      {
                        CFRelease(theArray);
                      }

                      if (!v67)
                      {
LABEL_199:
                        if (pixelBuffer)
                        {
                          CFRelease(pixelBuffer);
                        }

                        v40 = *type;
                        if (!*type)
                        {
                          goto LABEL_265;
                        }

                        goto LABEL_240;
                      }

                      v131 = v67;
LABEL_198:
                      CFRelease(v131);
                      goto LABEL_199;
                    }
                  }

LABEL_151:
                  LODWORD(v166) = 0;
                  v169[4] = OS_LOG_TYPE_DEFAULT;
                  v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v112 = v166;
                  v113 = v169[4];
                  if (os_log_type_enabled(v111, v169[4]))
                  {
                    v114 = v112;
                  }

                  else
                  {
                    v114 = v112 & 0xFFFFFFFE;
                  }

                  if (v114)
                  {
                    *v174 = 136316674;
                    *&v174[4] = "ParavirtualizationVideoDecoder_HandleDecoderSessionEmitDecodedTileMessage";
                    v175 = 2048;
                    *v176 = v6;
                    *&v176[8] = 1024;
                    *v177 = v72;
                    *&v177[4] = 2048;
                    *v178 = v57;
                    *&v178[8] = 1024;
                    *&v178[10] = HIDWORD(v157);
                    *&v178[14] = 1024;
                    *&v178[16] = v160;
                    *&v178[20] = 2048;
                    *&v178[22] = v67;
                    LODWORD(v154) = 60;
                    _os_log_send_and_compose_impl(v114, 0, v179, 128, &dword_18F99C000, v111, v113, "<<<< ParavirtualizedVideoDecoder >>>> %s: (decoder %p) VTTileDecoderSessionEmitDecodedTile failed with error %d for tile %p: status %d decodeFlags 0x%x pixelBuffer %p", v174, v154, v155, v156, v157, v160, v163);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  goto LABEL_194;
                }

                VTVideoDecoderGetCMBaseObject();
                v62 = CMBaseObjectGetDerivedStorage();
                v156 = v57;
                v63 = FigCFNumberCreateSInt64();
                os_unfair_lock_lock((v62 + 80));
                v64 = CFDictionaryGetValue(*(v62 + 88), v61);
                if (v64)
                {
                  v65 = v64;
                  v66 = CFDictionaryGetValue(v64, @"PixelBufferKey");
                  v67 = v66;
                  if (v66)
                  {
                    CFRetain(v66);
                    v68 = CFDictionaryGetValue(v65, @"TilesUsingPixelBuffer");
                    if (v68)
                    {
                      v69 = v68;
                      Count = CFArrayGetCount(v68);
                      if (Count)
                      {
                        v180.length = Count;
                        v180.location = 0;
                        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v69, v180, v63);
                        if (FirstIndexOfValue != -1)
                        {
                          CFArrayRemoveValueAtIndex(v69, FirstIndexOfValue);
                        }

                        if (!CFArrayGetCount(v69))
                        {
                          CFDictionaryRemoveValue(*(v62 + 88), v61);
                        }
                      }
                    }

                    v72 = 0;
LABEL_81:
                    v57 = v156;
                    os_unfair_lock_unlock((v62 + 80));
                    if (v63)
                    {
                      CFRelease(v63);
                    }

                    if (v72)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_132;
                  }

                  __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_1(v179);
                }

                else
                {
                  __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_2(v179);
                  v67 = 0;
                }

                v72 = v179[0];
                goto LABEL_81;
              }

              v72 = v60;
LABEL_300:
              v67 = 0;
              goto LABEL_151;
            }

            v72 = v59;
LABEL_296:
            v160 = 0;
            goto LABEL_300;
          }

          v72 = v58;
        }

        HIDWORD(v157) = 0;
        goto LABEL_296;
      }

      if (HIDWORD(v163) != 1148021094)
      {
        if (HIDWORD(v163) != 1148215905)
        {
          goto LABEL_85;
        }

        VTVideoDecoderGetCMBaseObject();
        v21 = CMBaseObjectGetDerivedStorage();
        cf = 0;
        v22 = VTParavirtualizationMessageCopyCFDictionary(a2, 745562721, &cf);
        if (!v22)
        {
          *(v21 + 113) = VTParavirtualizationPixelBufferAttributesContainIOSurfaceProtectionOptions(cf);
          os_unfair_lock_lock((v21 + 16));
          if (*v21)
          {
            v23 = VTDecoderSessionSetPixelBufferAttributes(*v21, cf);
            os_unfair_lock_unlock((v21 + 16));
            if (v23)
            {
LABEL_274:
              v85 = FigCFCopyCompactDescription();
              LODWORD(theArray) = 0;
              LOBYTE(pixelBuffer) = 0;
              v141 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v142 = theArray;
              v143 = pixelBuffer;
              if (os_log_type_enabled(v141, pixelBuffer))
              {
                v144 = v142;
              }

              else
              {
                v144 = v142 & 0xFFFFFFFE;
              }

              if (v144)
              {
                *v174 = 136315906;
                *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionSetPixelBufferAttributesMessage";
                v175 = 2048;
                *v176 = v6;
                *&v176[8] = 1024;
                *v177 = v23;
                *&v177[4] = 2114;
                *v178 = v85;
                _os_log_send_and_compose_impl(v144, 0, v179, 128, &dword_18F99C000, v141, v143, "<<<< ParavirtualizedVideoDecoder >>>> %s: (decoder %p) VTDecoderSessionSetPixelBufferAttributes failed with error %d for %{public}@", v174, 38);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (!v85)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }
          }

          else
          {
            os_unfair_lock_unlock((v21 + 16));
          }

          *(v21 + 112) = 0;
          v85 = *(v21 + 104);
          v86 = cf;
          *(v21 + 104) = cf;
          if (v86)
          {
            CFRetain(v86);
          }

          if (!v85)
          {
LABEL_107:
            v40 = cf;
            if (!cf)
            {
              goto LABEL_265;
            }

            goto LABEL_240;
          }

LABEL_106:
          CFRelease(v85);
          goto LABEL_107;
        }

        v23 = v22;
        goto LABEL_274;
      }

      VTVideoDecoderGetCMBaseObject();
      v28 = CMBaseObjectGetDerivedStorage();
      theArray = 0;
      cf = 0;
      *v169 = 0;
      *type = 0;
      pixelBuffer = 0;
      IOSurface = 0;
      v168 = 0;
      v166 = 0;
      v29 = VTParavirtualizationMessageGetSInt64();
      if (v29)
      {
        v125 = v29;
        v34 = 0;
        LODWORD(v32) = 0;
        v162 = 0;
      }

      else
      {
        v30 = cf;
        VTParavirtualizationMessageGetSInt32();
        if (v31)
        {
          v125 = v31;
          v162 = v30;
          v34 = 0;
          LODWORD(v32) = 0;
        }

        else
        {
          v32 = *&v169[4];
          VTParavirtualizationMessageGetUInt32();
          if (v33)
          {
            v125 = v33;
            v162 = v30;
            v34 = 0;
          }

          else
          {
            v34 = *v169;
            v35 = VTParavirtualizationMessageCopyCFUUIDArray();
            if (v35 || theArray && CFArrayGetCount(theArray) >= 1 && (v35 = paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs(v6, theArray, &pixelBuffer), v35) || (v35 = VTParavirtualizationMessageCopyFigTagCollectionArray(a2, 745825067, &IOSurface), v35))
            {
LABEL_267:
              v125 = v35;
              v162 = v30;
              goto LABEL_302;
            }

            if (pixelBuffer)
            {
              v36 = CFArrayGetCount(pixelBuffer);
            }

            else
            {
              v36 = 0;
            }

            v121 = IOSurface;
            if (IOSurface)
            {
              v121 = CFArrayGetCount(IOSurface);
            }

            if (v36 == v121)
            {
              if (!pixelBuffer || (v35 = MEMORY[0x193AE2F70](*MEMORY[0x1E695E480], IOSurface, pixelBuffer, &v166), !v35))
              {
                os_unfair_lock_lock((v28 + 16));
                if (*v28)
                {
                  v122 = VTDecoderSessionEmitDecodedMultiImageFrame(*v28, v30, v32, v34, v166);
                }

                else
                {
                  v122 = 0;
                }

                os_unfair_lock_unlock((v28 + 16));
                v123 = VTParavirtualizationCreateReplyAndByteStream(a2, 8u, type, &v168);
                if (v123 || (v123 = VTParavirtualizationMessageAppendSInt32(v168, 744845938, v122)) != 0)
                {
                  LODWORD(v125) = v123;
                }

                else
                {
                  v124 = VTParavirtualizationGuestSendMessageToHostAsync(*type);
                  if (v124)
                  {
                    LODWORD(v125) = v124;
                  }

                  else
                  {
                    LODWORD(v125) = v122;
                  }

                  if (!v125)
                  {
                    goto LABEL_229;
                  }
                }

                goto LABEL_183;
              }

              goto LABEL_267;
            }

            v162 = v30;
            __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_5(v179);
            v125 = LODWORD(v179[0]);
          }
        }
      }

LABEL_302:
      v165 = 0;
      v164 = OS_LOG_TYPE_DEFAULT;
      v145 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v146 = v165;
      v147 = v164;
      if (os_log_type_enabled(v145, v164))
      {
        v148 = v146;
      }

      else
      {
        v148 = v146 & 0xFFFFFFFE;
      }

      if (v148)
      {
        *v174 = 136315394;
        *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedMultiImageFrame";
        v175 = 1024;
        *v176 = v125;
        _os_log_send_and_compose_impl(v148, 0, v179, 128, &dword_18F99C000, v145, v147, "<<<< ParavirtualizedVideoDecoder >>>> %s: -> %d", v174, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      os_unfair_lock_lock((v28 + 16));
      if (*v28)
      {
        VTDecoderSessionEmitDecodedMultiImageFrame(*v28, v162, v125, v34, 0);
      }

      os_unfair_lock_unlock((v28 + 16));
      LODWORD(v30) = v162;
      if (!v125)
      {
LABEL_229:
        if (v166)
        {
          CFRelease(v166);
        }

        if (IOSurface)
        {
          CFRelease(IOSurface);
        }

        if (pixelBuffer)
        {
          CFRelease(pixelBuffer);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        if (*type)
        {
          CFRelease(*type);
        }

        v40 = v168;
        if (!v168)
        {
          goto LABEL_265;
        }

LABEL_240:
        CFRelease(v40);
        goto LABEL_265;
      }

LABEL_183:
      v126 = FigCFCopyCompactDescription();
      v165 = 0;
      v164 = OS_LOG_TYPE_DEFAULT;
      v127 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v128 = v165;
      v129 = v164;
      if (os_log_type_enabled(v127, v164))
      {
        v130 = v128;
      }

      else
      {
        v130 = v128 & 0xFFFFFFFE;
      }

      if (v130)
      {
        *v174 = 136316674;
        *&v174[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedMultiImageFrame";
        v175 = 2048;
        *v176 = v6;
        *&v176[8] = 1024;
        *v177 = v125;
        *&v177[4] = 1024;
        *v178 = v30;
        *&v178[4] = 1024;
        *&v178[6] = v32;
        *&v178[10] = 1024;
        *&v178[12] = v34;
        *&v178[16] = 2114;
        *&v178[18] = v126;
        LODWORD(v154) = 56;
        _os_log_send_and_compose_impl(v130, 0, v179, 128, &dword_18F99C000, v127, v129, "<<<< ParavirtualizedVideoDecoder >>>> %s: (decoder %p) VTDecoderSessionEmitDecodedMultiImageFrame failed with error %d for frame %d: status %d decodeFlags 0x%x taggedBufferGroup %{public}@", v174, v154);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v126)
      {
        CFRelease(v126);
      }

      goto LABEL_229;
    }
  }

  return MessageTypeAndFlagsAndGuestUUID;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_6(os_unfair_lock_s *a1, _DWORD *a2)
{
  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = v4;
  os_unfair_lock_unlock(a1);
  return v4 == 0;
}

@end