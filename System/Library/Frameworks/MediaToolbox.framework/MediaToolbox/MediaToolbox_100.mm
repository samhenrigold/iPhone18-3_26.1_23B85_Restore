uint64_t downloaderModeratorPostProcessPayloadForEvent(int a1, int a2, CFDictionaryRef theDict)
{
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    v4 = *MEMORY[0x1E695E480];
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
    if (Copy)
    {
      v6 = Copy;
      CFDictionaryApplyFunction(Copy, fsdrm_stringifyArrayFunc, theDict);
      CFRelease(v6);
    }

    v10 = 0;
    value = 0;
    v7 = CFDictionaryCreateCopy(v4, theDict);
    if (v7)
    {
      v8 = v7;
      CFDictionaryGetValueIfPresent(v7, @"TotBytesDown", &value);
      if (value)
      {
        CFNumberGetValue(value, kCFNumberSInt64Type, &v10);
        v10 = 1000000 * (v10 / 1000000);
        FigCFDictionarySetInt64();
      }

      CFRelease(v8);
    }
  }

  return 0;
}

CFArrayRef fsdrm_createStaticKeyArrayFromEventKeys()
{
  v10 = *MEMORY[0x1E69E9840];
  memcpy(v9, off_1E7477A30, 0x168uLL);
  v0 = OUTLINED_FUNCTION_4_9();
  result = CFArrayCreate(v0, v1, 45, 0);
  _MergedGlobals_18 = result;
  if (result)
  {
    memcpy(v9, off_1E7477B98, sizeof(v9));
    v3 = OUTLINED_FUNCTION_4_9();
    result = CFArrayCreate(v3, v4, 51, 0);
    qword_1ED4CA450 = result;
    if (result)
    {
      memcpy(v9, off_1E7477D30, 0x138uLL);
      v5 = OUTLINED_FUNCTION_4_9();
      result = CFArrayCreate(v5, v6, 39, 0);
      qword_1ED4CA458 = result;
      if (result)
      {
        memcpy(v9, off_1E7477E68, 0xD8uLL);
        v7 = OUTLINED_FUNCTION_4_9();
        result = CFArrayCreate(v7, v8, 27, 0);
        qword_1ED4CA460 = result;
      }
    }
  }

  return result;
}

void fsdrm_stringifyArrayFunc(const void *a1, const __CFArray *a2, __CFDictionary *a3)
{
  if (a3)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v8 = Mutable;
        if (CFArrayGetCount(a2) >= 1)
        {
          v9 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
            if (ValueAtIndex)
            {
              v11 = ValueAtIndex;
              v12 = CFNumberGetTypeID();
              if (v12 == CFGetTypeID(v11))
              {
                valuePtr = 0;
                CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr);
                CFStringAppendFormat(v8, 0, @"%lld", valuePtr);
              }

              else
              {
                v13 = CFStringGetTypeID();
                if (v13 == CFGetTypeID(v11))
                {
                  CFStringAppendFormat(v8, 0, @"%@", v11);
                }
              }
            }

            else
            {
              CFStringAppend(v8, @"-");
            }

            if (++v9 < CFArrayGetCount(a2))
            {
              CFStringAppend(v8, @",");
            }
          }

          while (v9 < CFArrayGetCount(a2));
        }

        CFDictionarySetValue(a3, a1, v8);
        CFRelease(v8);
      }
    }
  }
}

uint64_t FigMetricMediaResourceRequestEventDeserializeAndCopy(void *a1, CFTypeRef *a2)
{
  v77 = *MEMORY[0x1E6960C70];
  v78 = *(MEMORY[0x1E6960C70] + 16);
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  cf = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B48, 4294947836, "metricevent", 466, v2);
LABEL_21:
    v51 = CMTime;
    goto LABEL_22;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B48, 4294947836, "metricevent", 467, v2);
    goto LABEL_21;
  }

  int64 = xpc_dictionary_get_int64(a1, "EventID");
  v6 = xpc_dictionary_get_int64(a1, "ByteRangeLength");
  v7 = xpc_dictionary_get_int64(a1, "ByteRangeLocation");
  v8 = xpc_dictionary_get_BOOL(a1, "ReadFromCache");
  v9 = xpc_dictionary_get_int64(a1, "MediaType");
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFURL();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFData();
  if (CMTime)
  {
    goto LABEL_21;
  }

  v60 = v9;
  v61 = v8;
  CMTime = FigXPCMessageCopyCFError();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  switch(int64)
  {
    case 0:
      FigGetAllocatorForMedia();
      MEMORY[0x19A8CCD90](v70);
      MEMORY[0x19A8CCD90](v69);
      MEMORY[0x19A8CCD90](v68);
      MEMORY[0x19A8CCD90](v67);
      OUTLINED_FUNCTION_0_14();
      v55 = v11;
      v12 = OUTLINED_FUNCTION_1_13();
      CMTime = FigMetricMediaResourceRequestEventCreateInternal(v13, v76, v73, v14, cf, v74, v7, v6, v12, v15, v16, v17, v8, v55, 0, a2);
      goto LABEL_21;
    case 1:
      v44 = xpc_dictionary_get_BOOL(a1, "IsMultivariantPlaylist");
      FigGetAllocatorForMedia();
      MEMORY[0x19A8CCD90](v70);
      MEMORY[0x19A8CCD90](v69);
      MEMORY[0x19A8CCD90](v68);
      MEMORY[0x19A8CCD90](v67);
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_2_13();
      v45 = OUTLINED_FUNCTION_1_13();
      CMTime = FigMetricHLSPlaylistRequestEventCreateInternal(v46, v76, v73, v47, cf, v74, v7, v6, v45, v48, v49, v50, v53, v54, v56, v57, v44, a2);
      goto LABEL_21;
    case 2:
      v59 = v7;
      v18 = v6;
      v19 = xpc_dictionary_get_BOOL(a1, "IsMapSegment");
      CMTime = FigXPCMessageCopyCFURL();
      if (!CMTime)
      {
        v20 = xpc_dictionary_get_double(a1, "SegmentDuration");
        AllocatorForMedia = FigGetAllocatorForMedia();
        v23 = v75;
        v22 = v76;
        v24 = v73;
        v25 = cf;
        v26 = v74;
        v27 = MEMORY[0x19A8CCD90](v70);
        v28 = MEMORY[0x19A8CCD90](v69);
        v29 = MEMORY[0x19A8CCD90](v68);
        MEMORY[0x19A8CCD90](v67);
        OUTLINED_FUNCTION_0_14();
        CMTime = FigMetricHLSMediaSegmentRequestEventCreateInternal(AllocatorForMedia, v22, v23, v24, &v62, v25, v26, v27, v28, v29, v32, v20, v30, v59, v18, v61, v31, 0, v60, v19, a2);
      }

      goto LABEL_21;
    case 3:
      v33 = xpc_dictionary_get_BOOL(a1, "IsClientInitiated");
      CMTime = FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(a1, &v65);
      if (!CMTime)
      {
        FigGetAllocatorForMedia();
        v34 = v76;
        v35 = v73;
        v36 = cf;
        v37 = v74;
        MEMORY[0x19A8CCD90](v70);
        MEMORY[0x19A8CCD90](v69);
        MEMORY[0x19A8CCD90](v68);
        MEMORY[0x19A8CCD90](v67);
        v62 = v77;
        v63 = v78;
        v58 = v65;
        OUTLINED_FUNCTION_2_13();
        v38 = OUTLINED_FUNCTION_1_13();
        CMTime = FigMetricContentKeyRequestEventCreateInternal(v39, v34, v35, v40, v36, v37, v7, v6, v38, v41, v42, v43, v53, v54, v56, v57, v33, v58, a2);
      }

      goto LABEL_21;
    default:
      v51 = 4294947834;
      break;
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  return v51;
}

double merr_serialize(uint64_t a1, void *a2)
{
  v49 = 0;
  if (!a1)
  {
    v44 = qword_1EAF16B48;
    v45 = v2;
    v46 = 354;
LABEL_86:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 4294947835, "metricevent", v46, v45);
  }

  if (!a2)
  {
    v44 = qword_1EAF16B48;
    v45 = v2;
    v46 = 355;
    goto LABEL_86;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = -12782;
  }

  xpc_dictionary_set_int64(a2, "EventID", v6);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(&v47, a1);
  }

  else
  {
    v47 = *MEMORY[0x1E6960C70];
    v48 = *(MEMORY[0x1E6960C70] + 16);
  }

  if (!FigXPCMessageSetCMTime())
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(a1);
    }

    if (!FigXPCMessageSetCFDate())
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v10)
      {
        v11 = v10(a1);
      }

      else
      {
        v11 = 0;
      }

      if (FigXPCMessageSetCFString())
      {
        goto LABEL_79;
      }

      v12 = *(*(CMBaseObjectGetVTable() + 32) + 8);
      if (v12)
      {
        v12(a1);
      }

      if (FigXPCMessageSetCFURL())
      {
        goto LABEL_79;
      }

      v13 = *(*(CMBaseObjectGetVTable() + 32) + 16);
      if (v13)
      {
        v13(a1);
      }

      if (FigXPCMessageSetCFString())
      {
        goto LABEL_79;
      }

      v14 = *(*(CMBaseObjectGetVTable() + 32) + 24);
      if (v14)
      {
        v14(a1);
      }

      if (FigXPCMessageSetCFDate())
      {
        goto LABEL_79;
      }

      v15 = *(*(CMBaseObjectGetVTable() + 32) + 32);
      if (v15)
      {
        v15(a1);
      }

      if (FigXPCMessageSetCFDate())
      {
        goto LABEL_79;
      }

      v16 = *(*(CMBaseObjectGetVTable() + 32) + 40);
      if (v16)
      {
        v16(a1);
      }

      if (FigXPCMessageSetCFDate())
      {
        goto LABEL_79;
      }

      v17 = *(*(CMBaseObjectGetVTable() + 32) + 48);
      if (v17)
      {
        v17(a1);
      }

      if (FigXPCMessageSetCFDate())
      {
        goto LABEL_79;
      }

      v18 = *(*(CMBaseObjectGetVTable() + 32) + 72);
      if (v18)
      {
        v18(a1);
      }

      if (FigXPCMessageSetCFError())
      {
        goto LABEL_79;
      }

      v19 = *(*(CMBaseObjectGetVTable() + 32) + 80);
      if (!v19)
      {
        goto LABEL_43;
      }

      v20 = v19(a1);
      if (!v20)
      {
        goto LABEL_43;
      }

      v21 = v20;
      v22 = objc_autoreleasePoolPush();
      [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v49];
      if (v49)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, DWORD2(v47), v48);
      }

      else if (!FigXPCMessageSetCFData())
      {
        objc_autoreleasePoolPop(v22);
LABEL_43:
        v23 = *(*(CMBaseObjectGetVTable() + 32) + 56);
        if (v23)
        {
          v23(a1);
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        xpc_dictionary_set_int64(a2, "ByteRangeLength", v25);
        v26 = *(*(CMBaseObjectGetVTable() + 32) + 56);
        if (v26)
        {
          v27 = v26(a1);
        }

        else
        {
          v27 = 0;
        }

        xpc_dictionary_set_int64(a2, "ByteRangeLocation", v27);
        v28 = *(*(CMBaseObjectGetVTable() + 32) + 64);
        if (v28)
        {
          v28(a1);
          OUTLINED_FUNCTION_3_7();
        }

        else
        {
          v29 = 0;
        }

        xpc_dictionary_set_BOOL(a2, "ReadFromCache", v29);
        if (!v6)
        {
          goto LABEL_79;
        }

        v30 = 1836415096;
        v31 = *(*(CMBaseObjectGetVTable() + 32) + 96);
        if (v31)
        {
          v30 = v31(a1);
        }

        xpc_dictionary_set_int64(a2, "MediaType", v30);
        switch(v6)
        {
          case 3:
            v36 = *(*(CMBaseObjectGetVTable() + 32) + 112);
            if (v36)
            {
              v37 = v36(a1);
            }

            else
            {
              v37 = 0;
            }

            result = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(a2, v37);
            if (v41)
            {
              break;
            }

            v42 = *(*(CMBaseObjectGetVTable() + 32) + 120);
            if (v42)
            {
              v42(a1);
              OUTLINED_FUNCTION_3_7();
            }

            else
            {
              v33 = 0;
            }

            v43 = "IsClientInitiated";
            goto LABEL_78;
          case 2:
            v34 = *(*(CMBaseObjectGetVTable() + 32) + 104);
            if (v34)
            {
              v34(a1);
              OUTLINED_FUNCTION_3_7();
            }

            else
            {
              v35 = 0;
            }

            xpc_dictionary_set_BOOL(a2, "IsMapSegment", v35);
            v38 = *(*(CMBaseObjectGetVTable() + 32) + 128);
            if (v38)
            {
              v38(a1);
            }

            FigXPCMessageSetCFURL();
            v39 = *(*(CMBaseObjectGetVTable() + 32) + 136);
            v40.n128_u64[0] = 0;
            if (v39)
            {
              v40.n128_f64[0] = v39(a1, v40);
            }

            xpc_dictionary_set_double(a2, "SegmentDuration", v40.n128_f64[0]);
            break;
          case 1:
            v32 = *(*(CMBaseObjectGetVTable() + 32) + 88);
            if (v32)
            {
              v32(a1);
              OUTLINED_FUNCTION_3_7();
            }

            else
            {
              v33 = 0;
            }

            v43 = "IsMultivariantPlaylist";
LABEL_78:
            xpc_dictionary_set_BOOL(a2, v43, v33);
            break;
        }

LABEL_79:
        if (v11)
        {
          CFRelease(v11);
        }

        return result;
      }

      objc_autoreleasePoolPop(v22);
      goto LABEL_79;
    }
  }

  return result;
}

void FigCEA608DataGeneratorCaptionInfoRelease(uint64_t a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = *(a1 + 112);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = OUTLINED_FUNCTION_298();
    CFAllocatorDeallocate(v3, v4);
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

void FigCEA608DataGeneratorRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 104));
    FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 112));
    v3 = *(a1 + 88);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = OUTLINED_FUNCTION_298();
    CFAllocatorDeallocate(v4, v5);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

double FigCEA608DataGeneratorBeginCaption(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v40 = *(a1 + 60);
  v41 = *(a1 + 76);
  if (!a4 || (v9 = a1, v10 = (a1 + 112), *(a1 + 112)))
  {
LABEL_42:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    if (v14 == 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    time1 = *(a1 + 60);
    v38 = *(a1 + 12);
    cea608dgCCDataGetQuantizedTimeByFrameDuration(&time1, &v38, &range);
    *(v9 + 120) = *&range.start.value;
    *(v9 + 136) = range.start.epoch;
  }

  if (*(a2 + 12))
  {
    v15 = *a2;
    *(v9 + 136) = *(a2 + 2);
    *(v9 + 120) = v15;
  }

  if (!a3 || (FigCEA608DataGeneratorCaptionInfoRelease(*(v9 + 104)), OUTLINED_FUNCTION_4_10(v28, v29, v30, v31, v32, v33, v34, v35, v38.value, *&v38.timescale, v38.epoch, v39, v40), a1 = cea608dgCaptionInfoCopy(v36, a3, v8, (v9 + 104)), !a1))
  {
    v16 = *(v9 + 104);
    if (v16)
    {
      v17 = v16[2];
      *&range.start.value = v16[1];
      *&range.start.epoch = v17;
      *&range.duration.timescale = v16[3];
      CMTimeRangeGetEnd(&time1, &range);
      *&range.start.value = *(a4 + 16);
      range.start.epoch = *(a4 + 32);
      a1 = CMTimeCompare(&time1, &range.start);
      if (a1 >= 1)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38.value, v38.timescale, LODWORD(v38.epoch));
      }
    }

    OUTLINED_FUNCTION_4_10(a1, a2, a3, a4, a5, a6, a7, a8, v38.value, *&v38.timescale, v38.epoch, v39, v40);
    if (!cea608dgCaptionInfoCopy(v18, a4, v8, v10))
    {
      v21 = *(v9 + 104);
      v20 = *(v9 + 112);
      v22 = *(v9 + 101);
      Mutable = CFDataCreateMutable(*v20, 0);
      *(v20 + 112) = Mutable;
      if (!Mutable)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38.value, v38.timescale, LODWORD(v38.epoch));
        if (v37)
        {
          return result;
        }

        goto LABEL_38;
      }

      LOWORD(v38.value) = 0;
      v24 = *(v20 + 8);
      switch(v24)
      {
        case 3:
          v27 = *(v20 + 12);
          switch(v27)
          {
            case 4:
              v25 = 10004;
              break;
            case 3:
              v25 = 9748;
              break;
            case 2:
              v25 = 9492;
              break;
            default:
LABEL_34:
              LOWORD(range.start.value) = 11540;
LABEL_37:
              CFDataAppendBytes(Mutable, &range, 2);
              goto LABEL_38;
          }

          break;
        case 2:
          if (v21 && *(v21 + 8) == 2)
          {
            v26 = *(v21 + 80);
            *&range.start.value = *(v21 + 64);
            *&range.start.epoch = v26;
            *&range.duration.timescale = *(v21 + 96);
            CMTimeRangeGetEnd(&time1, &range);
            *&range.start.value = *(v20 + 64);
            range.start.epoch = *(v20 + 80);
            if (!CMTimeCompare(&time1, &range.start))
            {
LABEL_30:
              v24 = *(v20 + 8);
LABEL_31:
              if (v24 == 1)
              {
                if (v22)
                {
                  LOWORD(range.start.value) = 11796;
                  Mutable = *(v20 + 112);
                  goto LABEL_37;
                }
              }

              else if (v24 == 3)
              {
                Mutable = *(v20 + 112);
                goto LABEL_34;
              }

LABEL_38:
              *(v9 + 96) = 1;
              return result;
            }

            Mutable = *(v20 + 112);
          }

          v25 = 10516;
          break;
        case 1:
          v25 = kFigCEA608MiscControlCodes;
          break;
        default:
          goto LABEL_31;
      }

      LOWORD(v38.value) = v25;
      CFDataAppendBytes(Mutable, &v38, 2);
      goto LABEL_30;
    }
  }

  return result;
}

double FigCEA608DataGeneratorFinish(uint64_t a1)
{
  if (!a1 || *(a1 + 112))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else if (!*(a1 + 104) || !cea608dgStoreCCDataSequentially(a1, 0, 0))
  {
    *(a1 + 96) = 2;
  }

  return result;
}

double cea608dgOutputCCData(uint64_t a1, CFMutableDataRef theData)
{
  if (!*(a1 + 152))
  {
    goto LABEL_7;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  for (i = CFDataGetLength(theData); i; --i)
  {
    v6 = *MutableBytePtr;
    v7 = vdupq_n_s32(v6);
    v8 = vshlq_u32(v7, xmmword_196E72F40);
    v9 = vaddq_s32(vshlq_u32(v7, xmmword_196E72F50), v8);
    v9.i32[3] = v8.i32[3];
    if ((vaddvq_s32(v9) & 1) == 0)
    {
      *MutableBytePtr = v6 | 0x80;
    }

    ++MutableBytePtr;
  }

  v10 = OUTLINED_FUNCTION_6_8();
  if (!v11(theData, &range, v10))
  {
LABEL_7:
    OUTLINED_FUNCTION_6_8();
    CMTimeRangeGetEnd(&v13, &range);
    result = *&v13.value;
    *(a1 + 120) = v13;
  }

  return result;
}

void FigCEA608DataGeneratorCaptionInfoCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorCaptionInfoCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;
  CFRelease(a2);
}

void FigCEA608DataGeneratorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea608dgCaptionInfoCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return OUTLINED_FUNCTION_2_14(v0);
}

void FigCEA608DataGeneratorAddCaptionLine_cold_4(__int16 *a1, _WORD *a2, __CFData *a3)
{
  OUTLINED_FUNCTION_3_8(a3, a2, *a1, v6, v7, SWORD2(v7), SBYTE6(v7), HIBYTE(v7));
  cea608dgCCDataAppendPaddingIfNeeded(a3);
  v4 = OUTLINED_FUNCTION_298();
  CFDataAppendBytes(v4, v5, 2);
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return OUTLINED_FUNCTION_2_14(v0);
}

void FigCEA608DataGeneratorAddCaptionLine_cold_6(char a1, _WORD *a2, __CFData *a3)
{
  v4 = 2;
  if (a1)
  {
    v4 = 4;
  }

  OUTLINED_FUNCTION_3_8(a3, a2, *(&kFigCEA608ForegroundAttributeCodes + v4), v7, v8, SWORD2(v8), SBYTE6(v8), HIBYTE(v8));
  cea608dgCCDataAppendPaddingIfNeeded(a3);
  v5 = OUTLINED_FUNCTION_298();
  CFDataAppendBytes(v5, v6, 2);
}

void FigCEA608DataGeneratorAddCaptionLine_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorAddCaptionLine_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorAddCaptionLine_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorAddCaptionLine_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorAddCaptionLine_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorAddCaptionLine_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorEndCaption_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorEndCaption_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea608dgStoreCCDataSequentially_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigCEA608DataGeneratorGetTimeLineRange_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigCEA608DataGeneratorGetTimeLineRange_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigCEA608DataGeneratorSetTimeLineRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataGeneratorSetTimeLineRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigCEA608DataGeneratorGetClosedCaptionChannel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void cea608dgCreateEraseCCData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea608dgCCDataGetDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea608dgGetAheadDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea608dgCCDataGetByteLengthFromDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea608dgCCDataGetByteLengthFromDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteRateHistoryCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteRateHistoryAllocSampleArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t ParseReferenceMovieAtom(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_15();
  if (!FigAtomStreamInitWithParent())
  {
    ParseDescriptorAtoms(&v4, ParseReferenceMovieAtom_atomDispatch, 1, a2);
  }

  return 0;
}

uint64_t ParseReferenceMovieDescriptorAtom(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_0_15();
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
  if (v3)
  {
    if (!FigAtomStreamInitWithParent() && !ParseDescriptorAtoms(&v6, ParseReferenceMovieDescriptorAtom_atomDispatch, 3, v3) && v3[3])
    {
      v4 = a2[1];
      if (v4)
      {
        *v4 = v3;
      }

      else
      {
        *a2 = v3;
      }

      a2[1] = v3;
      v3 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  DisposeReferenceMovieAlternate(v3);
  return 0;
}

double ParseReferenceMovieDataRateAtom(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  if (!*(a2 + 8) && !FigAtomStreamReadCurrentAtomDataAndCreateBBuf() && CMBlockBufferGetDataLength(*v2) != 8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void ParseReferenceMovieDataRefAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseReferenceMovieVersionCheckAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseReferenceMovieVersionCheckAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigNWActivitySubmitMetricsForInitialStartup(uint64_t a1, double a2, double a3, double a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (!v7)
  {
    return 4294954510;
  }

  v8 = v7;
  xpc_dictionary_set_double(v7, "CMInitialStartup_ItemCreationToLTKU", a3 - a2);
  xpc_dictionary_set_double(v8, "CMInitialStartup_ItemCreationToReadyToPlay", a4 - a2);
  nw_activity_submit_metrics();
  xpc_release(v8);
  return 0;
}

CFDataRef FigNWActivityCreateToken(CFDataRef result)
{
  v3 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v2 = 0;
  if (result)
  {
    nw_activity_get_token();
    if (uuid_is_null(uu))
    {
      return 0;
    }

    else
    {
      return CFDataCreate(*MEMORY[0x1E695E480], uu, 16);
    }
  }

  return result;
}

const __CFData *FigNWActivityCreateFromToken(const __CFData *result)
{
  v3 = *MEMORY[0x1E69E9840];
  *buffer = 0;
  v2 = 0;
  if (result)
  {
    v4.location = 0;
    v4.length = 16;
    CFDataGetBytes(result, v4, buffer);
    if (uuid_is_null(buffer))
    {
      return 0;
    }

    else
    {
      return nw_activity_create_from_token();
    }
  }

  return result;
}

double FigBytePumpCreateForICY(const __CFAllocator *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, NSObject *a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v68 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_11_4();
  fig_note_initialize_category_with_default_work_cf();
  v13 = a8;
  OUTLINED_FUNCTION_11_4();
  fig_note_initialize_category_with_default_work_cf();
  if (a2 && a8)
  {
    cf = 0;
    FigBytePumpGetClassID();
    if (CMDerivedObjectCreate())
    {
LABEL_44:
      OUTLINED_FUNCTION_252();
      return result;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigRetainProxyCreate())
    {
      v22 = 0;
      goto LABEL_49;
    }

    Default = a1;
    if (!a1)
    {
      Default = CFAllocatorGetDefault();
    }

    *DerivedStorage = CFRetain(Default);
    *(DerivedStorage + 72) = FigRetainProxyRetain();
    if (a5)
    {
      Local = a5;
    }

    else
    {
      Local = FigHTTPSchedulerCreateLocal(0);
      *(DerivedStorage + 80) = Local;
      if (Local)
      {
LABEL_11:
        if (a3)
        {
          Value = CFRetain(a3);
          *(DerivedStorage + 104) = Value;
          if (!Value)
          {
            goto LABEL_18;
          }

          Value = CFDictionaryGetValue(Value, @"X-Playback-Session-Id");
          if (Value)
          {
            Value = CFRetain(Value);
          }

          v20 = 112;
        }

        else
        {
          Value = 0;
          v20 = 104;
        }

        *(DerivedStorage + v20) = Value;
LABEL_18:
        if (a4)
        {
          v21 = CFDictionaryGetValue(a4, @"FBPCreateOption_HTTPRequestOptions");
          v22 = v21;
          if (v21)
          {
            if (CFGetTypeID(v21) && CFDictionaryGetTypeID())
            {
              v67[0] = 0;
              v23 = CFRetain(v22);
              *(DerivedStorage + 120) = v23;
              v24 = CFDictionaryGetValue(v23, @"FHRP_StorageSession");
              if (v24)
              {
                v24 = CFRetain(v24);
              }

              *(DerivedStorage + 128) = v24;
              v25 = CFDictionaryGetValue(*(DerivedStorage + 120), @"FHRP_ClientAuditToken");
              v22 = FigCFHTTPCopyClientProcessName(v25);
              v26 = CFDictionaryGetValue(a4, @"FBPCreateOption_AlternativeConfigurationOptions");
              FigCFDictionaryGetBooleanIfPresent();
              *(DerivedStorage + 379) = v67[0] == 0;
            }

            else
            {
              v26 = 0;
              v22 = 0;
            }
          }

          else
          {
            v26 = 0;
          }

          v27 = *MEMORY[0x1E695E4D0];
          *(DerivedStorage + 32) = v27 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowCellularAccess");
          *(DerivedStorage + 33) = v27 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsExpensiveNetworkAccess");
          *(DerivedStorage + 34) = v27 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsConstrainedNetworkAccess");
          *(DerivedStorage + 304) = CFDictionaryGetValue(a4, @"FBPCreateOption_DisableNativeHTTPReads") == v27;
          Value = CFDictionaryGetValue(a4, @"FBPCreateOption_CustomURLLoader");
          if (Value)
          {
            Value = CFRetain(Value);
          }

          *(DerivedStorage + 312) = Value;
        }

        else
        {
          v26 = 0;
          v22 = 0;
        }

        if (*(DerivedStorage + 304))
        {
          if (!*(DerivedStorage + 312) || (Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 360) = Mutable) == 0))
          {
            OUTLINED_FUNCTION_5_8();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            if (!v48)
            {
LABEL_42:
              if (v22)
              {
                CFRelease(v22);
              }

              goto LABEL_44;
            }

LABEL_49:
            CFRelease(0);
            goto LABEL_42;
          }
        }

        else if (!*(DerivedStorage + 136))
        {
          v44 = *(DerivedStorage + 128);
          if (!v44)
          {
            v44 = FigURLStorageSessionCopyGlobalSession(Value, v18);
            *(DerivedStorage + 128) = v44;
            if (!v44)
            {
              goto LABEL_49;
            }
          }

          a1 = *(DerivedStorage + 80);
          v45 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v45 || v45(v44, a1, 0, DerivedStorage + 136))
          {
            goto LABEL_49;
          }
        }

        FigRCLCreateConfiguration(v22, @"kFigRemoteConfigurationLoaderStoreBagType_Pump", v26, (DerivedStorage + 296));
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (OUTLINED_FUNCTION_16_4(os_log_and_send_and_compose_flags_and_os_log_type, v30, v31, v32, v33, v34, v35, v36, v49, v50, v52, v54, a2, a6, a7, a4, *v63, v63[2], OS_LOG_TYPE_DEFAULT, 0))
        {
          v42 = a1;
        }

        else
        {
          v42 = a1 & 0xFFFFFFFE;
        }

        if (v42)
        {
          *v66 = 136315650;
          *&v66[4] = "FigBytePumpCreateForICY";
          *&v66[12] = 2048;
          *&v66[14] = 0;
          *&v66[22] = 2112;
          LODWORD(v51) = 32;
          OUTLINED_FUNCTION_9_4(v42, v37, v38, v39, &dword_1962D5000, v40, v41, "<<<< ICY PUMP >>>> %s: %p: client %@", v66, v51, v53, v55, v56, v58, v60, v62, v64, 0, *v66, *&v66[8], *&v66[16], v22);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(DerivedStorage + 378) = FigRCLGetNumberWithDefault(*(DerivedStorage + 296), @"enableHTTP3Connection", 1) != 0;
        *(DerivedStorage + 379) = FigRCLGetNumberWithDefault(*(DerivedStorage + 296), @"enableL4S", 1) != 0;
        *(DerivedStorage + 24) = 0;
        *(DerivedStorage + 96) = CFRetain(v56);
        *(DerivedStorage + 64) = v58;
        *v13 = cf;
        goto LABEL_42;
      }
    }

    *(DerivedStorage + 80) = FigHTTPSchedulerRetain(Local, v16);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_252();

  return FigSignalErrorAtGM(v46);
}

uint64_t FigICYBytePumpOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _BYTE *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
LABEL_10:
    v11 = v13;
    goto LABEL_6;
  }

  if (!*(DerivedStorage + 19) && !*(DerivedStorage + 18))
  {
    FigICY_CreateHTTPRequest(a1, *(DerivedStorage + 96), 0);
    if (v13)
    {
      goto LABEL_10;
    }
  }

  *(DerivedStorage + 18) = 1;
  *a6 = 0;
  v11 = 0;
  if (a7)
  {
    *a7 = 0;
  }

LABEL_6:
  FigRetainProxyUnlockMutex();
  return v11;
}

void FigICY_CreateHTTPRequest(uint64_t a1, const void *a2, int a3)
{
  v63 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (a3)
  {
    v8 = *(DerivedStorage + 200) & ~(*(DerivedStorage + 200) >> 63);
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  if (*(v7 + 379))
  {
    v10 = v9 | 0x10000;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 104);
  if (v11)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v11);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_43;
  }

  CFDictionaryAddValue(MutableCopy, @"icy-metadata", @"1");
  if (!*(v7 + 304))
  {
    if (dword_1EAF16B70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (OUTLINED_FUNCTION_16_4(os_log_and_send_and_compose_flags_and_os_log_type, v22, v23, v24, v25, v26, v27, v28, v42, v43, v45, v47, v49, v51, v53, v55, *v57, v57[2], OS_LOG_TYPE_DEFAULT, 0))
      {
        v34 = v3;
      }

      else
      {
        v34 = v3 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *v60 = 136315651;
        *&v60[4] = "FigICY_CreateHTTPRequest";
        *&v60[12] = 2113;
        *&v60[14] = a2;
        *&v60[22] = 1024;
        LODWORD(v61) = v10;
        LODWORD(v44) = 28;
        OUTLINED_FUNCTION_9_4(v34, v29, v30, v31, &dword_1962D5000, v32, v33, "<<<< ICY PUMP >>>> %s: FigHTTPRequest for URL %{private}@ flags=0x%x", v60, v44, v46, v48, v50, v52, v54, v56, v58, 0, *v60, *&v60[8], *&v60[16], v61);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v35 = *(v7 + 136);
    v36 = *(v7 + 120);
    v37 = *v7;
    v38 = *(v7 + 8);
    v39 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v39)
    {
      memset(v62, 0, 112);
      v20 = v39(v35, v37, 0, a2, 0, v13, v36, v10, v62, v8, 0, 0, FigICY_HTTPPumpFn, v38, v7 + 144, v7 + 152);
      v14 = 0;
      goto LABEL_32;
    }

    v14 = 0;
LABEL_31:
    v20 = -12782;
    goto LABEL_32;
  }

  *(v7 + 336) = 0;
  *(v7 + 344) = 0;
  *(v7 + 352) = 0;
  if (FigCustomURLRequestInfoCreateMutable() || FigCustomURLRequestInfoSetHTTPHeaders())
  {
    goto LABEL_43;
  }

  v14 = FigCFHTTPCreateUserAgent();
  if (FigCustomURLRequestInfoSetUserAgent() || v8 && (*(v7 + 336) = 1, *(v7 + 344) = v8, FigCustomURLRequestInfoSetByteRange()))
  {
    if (v14)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v7 + 328);
  if (v15)
  {
    CFRelease(v15);
    *(v7 + 328) = 0;
  }

  v16 = *(v7 + 312);
  v17 = *(v7 + 8);
  v18 = *(v7 + 80);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = v19(v16, 0, v17, v18, FigICY_CustomURLLoaderCallbackFn, v7 + 320);
LABEL_32:
  if (v8)
  {
    if (v20)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(v7 + 200) = 0;
    *(v7 + 224) = 0;
    *(v7 + 248) = 0;
    v40 = *(v7 + 216);
    if (v40)
    {
      CFRelease(v40);
      *(v7 + 216) = 0;
    }

    *(v7 + 232) = 0;
    if (v20)
    {
LABEL_34:
      if (!v14)
      {
        goto LABEL_43;
      }

LABEL_42:
      CFRelease(v14);
      goto LABEL_43;
    }
  }

  v41 = *(v7 + 96);
  if (v41)
  {
    CFRelease(v41);
  }

  *(v7 + 96) = CFRetain(a2);
  FigHTTPCreateTimer(*(v7 + 8), fbp_NetworkInactivityTimer, *(v7 + 80), (v7 + 48), 15.0);
  if (v14)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_252();
}

uint64_t FigICY_CustomURLLoaderCallbackFn(uint64_t a1, uint64_t a2, const void *a3, void *a4, char a5)
{
  theBuffer = 0;
  v8 = FigICY_LockAndCopyPump(a1, a2);
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = v8;
  v10 = a5 & 1;
  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  theBuffer = v11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  v14 = v10;
  if (a3)
  {
    v14 = v10;
    if (!*(DerivedStorage + 328))
    {
      *(DerivedStorage + 328) = CFRetain(a3);
      value = 0;
      theDict = 0;
      if (*(v13 + 336))
      {
        v28 = 0;
        *(v13 + 337) = 1;
        FigCustomURLResponseInfoCopyHTTPHeaders();
        if (theDict)
        {
          if (CFDictionaryGetValueIfPresent(theDict, @"Content-Range", &value) && FigCFHTTPGetContentRangeFromHeaderString(value, &v28, 0, 0, 0) && v28 == *(v13 + 344))
          {
            *(v13 + 337) = 0;
          }

          if (theDict)
          {
            CFRelease(theDict);
          }
        }
      }

      v14 = 1;
    }
  }

  v15 = 0;
  if (a4 && *(v13 + 337))
  {
    if (*(v13 + 352) >= *(v13 + 344))
    {
      v15 = 0;
      *(v13 + 337) = 0;
      if (v11)
      {
        goto LABEL_24;
      }

LABEL_33:
      v21 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_34;
    }

    DataLength = CMBlockBufferGetDataLength(a4);
    v17 = *(v13 + 352);
    v18 = *(v13 + 344) - v17;
    *(v13 + 352) = v17 + DataLength;
    if (v11)
    {
      CFRelease(v11);
      theBuffer = 0;
    }

    if (DataLength <= v18)
    {
      v21 = 0;
      v19 = 0;
      v20 = 0;
      v15 = 0;
      if (v14)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    v15 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], a4, v18, DataLength - v18, 0, &theBuffer);
    v14 = 1;
    v11 = theBuffer;
  }

  if (!v11)
  {
    goto LABEL_33;
  }

LABEL_24:
  v19 = CMBlockBufferGetDataLength(v11);
  v20 = theBuffer;
  v21 = theBuffer != 0;
  if (*(v13 + 19) && theBuffer)
  {
    CFArrayAppendValue(*(v13 + 360), theBuffer);
    v22 = *(v13 + 368) + CMBlockBufferGetDataLength(theBuffer);
    *(v13 + 368) = v22;
    if (v22 > 0x100000)
    {
      v23 = *(v13 + 312);
      v24 = *(v13 + 320);
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v25)
      {
        v25(v23, v24);
      }

      *(v13 + 320) = 0;
      *(v13 + 376) = 1;
    }

    if (v10)
    {
      *(v13 + 377) = 1;
    }

    goto LABEL_36;
  }

LABEL_34:
  if (v14)
  {
LABEL_41:
    FigICY_HTTPCommonCallback(v9, v20, 0, v19, v10, v15);
    goto LABEL_36;
  }

LABEL_35:
  if (v21)
  {
    goto LABEL_41;
  }

LABEL_36:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  CFRelease(v9);
LABEL_39:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t FigICY_HTTPPumpFn(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, unsigned int a7, size_t a8)
{
  v13 = FigICY_LockAndCopyPump(a3, a2);
  if (v13)
  {
    v14 = v13;
    FigICY_HTTPCommonCallback(v13, a4, a5, a6, (a7 >> 1) & 1, a8);
    CFRelease(v14);
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

const void *FigICY_LockAndCopyPump(uint64_t a1, uint64_t a2)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    return 0;
  }

  Owner = FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    result = 0;
    if (!Owner)
    {
      return result;
    }

    v6 = *(DerivedStorage + 320);
  }

  else
  {
    result = 0;
    if (!Owner)
    {
      return result;
    }

    v6 = *(DerivedStorage + 152);
  }

  if (v6 == a2)
  {
    CFRetain(Owner);
    return Owner;
  }

  return result;
}

void FigICY_HTTPCommonCallback(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, size_t a4, int a5, size_t a6)
{
  HIDWORD(v163) = a5;
  destination[16] = *MEMORY[0x1E69E9840];
  blockBufferOut = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  appended = a6;
  HIDWORD(v161) = a6;
  if (a6)
  {
    goto LABEL_196;
  }

  *(DerivedStorage + 40) = FigGetUpTimeNanoseconds();
  *(DerivedStorage + 56) = 0;
  if (HIDWORD(v163))
  {
    FigHTTPStopAndReleaseTimer((DerivedStorage + 48));
  }

  if (*(DerivedStorage + 19))
  {
    *(DerivedStorage + 288) = FigGetUpTimeNanoseconds();
  }

  if (!a2)
  {
    appended = 0;
    goto LABEL_155;
  }

  v7 = *MEMORY[0x1E695E480];
  appended = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a2, *MEMORY[0x1E695E480], 0, a3, a4, 2u, &blockBufferOut);
  if (!appended)
  {
    a2 = blockBufferOut;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  v23 = DataLength;
  v24 = *(DerivedStorage + 216);
  if (v24 && DataLength)
  {
    v25 = CMBlockBufferGetDataLength(a2);
    appended = CMBlockBufferAppendBufferReference(v24, a2, 0, v25, 0);
    v23 = CMBlockBufferGetDataLength(*(DerivedStorage + 216));
  }

  else if (a2 && DataLength)
  {
    *(DerivedStorage + 216) = CFRetain(a2);
    *(DerivedStorage + 232) = 0;
  }

  if (HIDWORD(v163))
  {
    v26 = 0;
  }

  else
  {
    v26 = v23 > 0x10000;
  }

  v27 = v26;
  HIDWORD(v148) = v27;
  v159 = 0x1F0B1FC18;
  v158 = 0x1F0B1FC38;
  v160 = @"FHRP_HTTPFinalURL";
  inTagClass = *MEMORY[0x1E6963718];
  v151 = @"FHRP_PayloadLength";
  v154 = @"FHRP_HTTPResponseHeaders";
LABEL_23:
  while (2)
  {
    switch(*(DerivedStorage + 224))
    {
      case 0:
        HIDWORD(v164) = 0;
        url = 0;
        if (*(DerivedStorage + 304))
        {
          if (!*(DerivedStorage + 328))
          {
            appended = 4294954651;
            goto LABEL_196;
          }

          v28 = FigCustomURLResponseInfoCopyFinalURL();
        }

        else
        {
          v71 = *(*(OUTLINED_FUNCTION_17_3() + 8) + 48);
          if (!v71)
          {
            appended = 4294954514;
            goto LABEL_196;
          }

          v28 = v71(appended, @"FHRP_HTTPFinalURL", 0, &url);
        }

        appended = v28;
        if (v28)
        {
          goto LABEL_196;
        }

        if (!url)
        {
          goto LABEL_83;
        }

        appended = CFURLCopyPathExtension(url);
        CFRelease(url);
        if (!appended)
        {
          goto LABEL_83;
        }

        if (CFStringCompare(appended, @"pls", 1uLL) == kCFCompareEqualTo || CFStringCompare(appended, @"m3u8", 1uLL) == kCFCompareEqualTo || CFStringCompare(appended, @"m3u", 1uLL) == kCFCompareEqualTo)
        {
          CFRelease(appended);
          if (*(DerivedStorage + 168))
          {
            goto LABEL_193;
          }

          v63 = OUTLINED_FUNCTION_14_2();
          if (v63)
          {
            goto LABEL_194;
          }

          v78 = *(DerivedStorage + 280) + 1;
          *(DerivedStorage + 280) = v78;
          if (v78 >= 2)
          {
            goto LABEL_193;
          }

          goto LABEL_117;
        }

        CFRelease(appended);
LABEL_83:
        destination[0] = 0;
        if (*(DerivedStorage + 304))
        {
          if (!*(DerivedStorage + 328))
          {
            goto LABEL_110;
          }

          appended = FigCustomURLResponseInfoCopyUniversalTypeIdentifier();
          v72 = destination[0];
          if (!appended)
          {
            v73 = UTTypeCopyPreferredTagWithClass(destination[0], inTagClass);
            v72 = destination[0];
            if (!destination[0])
            {
              goto LABEL_104;
            }

            goto LABEL_102;
          }

          v73 = 0;
          if (destination[0])
          {
            goto LABEL_102;
          }
        }

        else
        {
          *cf = 0;
          if (*(*(OUTLINED_FUNCTION_17_3() + 8) + 48))
          {
            v79 = OUTLINED_FUNCTION_10_4();
            appended = v80(v79);
            if (!appended)
            {
              v73 = FigCFHTTPCopyMimeTypeFromHTTPResponse(*cf);
              v72 = *cf;
LABEL_102:
              CFRelease(v72);
              goto LABEL_104;
            }

            v73 = 0;
          }

          else
          {
            v73 = 0;
            appended = 4294954514;
          }
        }

LABEL_104:
        if (appended)
        {
          goto LABEL_196;
        }

        if (v73)
        {
          if (CFStringCompare(v73, @"audio/mpegurl", 1uLL) == kCFCompareEqualTo || CFStringCompare(v73, @"audio/x-mpegurl", 1uLL) == kCFCompareEqualTo || CFStringCompare(v73, @"audio/scpls", 1uLL) == kCFCompareEqualTo)
          {
            CFRelease(v73);
LABEL_115:
            if (*(DerivedStorage + 168))
            {
LABEL_193:
              OUTLINED_FUNCTION_43_1();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_194:
              appended = v63;
              goto LABEL_195;
            }

            v63 = OUTLINED_FUNCTION_14_2();
            if (v63)
            {
              goto LABEL_194;
            }

LABEL_117:
            appended = 0;
            *(DerivedStorage + 224) = 5;
            continue;
          }

          appended = CFStringCompare(v73, @"audio/x-scpls", 1uLL);
          CFRelease(v73);
          if (!appended)
          {
            goto LABEL_115;
          }
        }

LABEL_110:
        *(DerivedStorage + 208) = 0;
        if (*(DerivedStorage + 304))
        {
          destination[0] = 0;
          if (*(DerivedStorage + 328) && !FigCustomURLResponseInfoGetContentLength())
          {
            goto LABEL_113;
          }
        }

        else
        {
          destination[0] = 0;
          *cf = 0;
          v81 = *(*(OUTLINED_FUNCTION_17_3() + 8) + 48);
          if (v81 && !v81(appended, @"FHRP_PayloadLength", 0, cf) && CFNumberGetValue(*cf, kCFNumberSInt64Type, destination))
          {
LABEL_113:
            *(DerivedStorage + 208) = destination[0];
          }
        }

        destination[0] = 0;
        *cf = 0;
        v164 = 0;
        if (*(DerivedStorage + 304))
        {
          if (*(DerivedStorage + 328) && !FigCustomURLResponseInfoCopyHTTPHeaders())
          {
            FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent();
          }
        }

        else if (*(*(OUTLINED_FUNCTION_17_3() + 8) + 48))
        {
          v82 = OUTLINED_FUNCTION_10_4();
          if (!v83(v82))
          {
            v164 = CFHTTPMessageCopyHeaderFieldValue(*cf, @"icy-metaint");
          }
        }

        if (destination[0])
        {
          CFRelease(destination[0]);
        }

        if (*cf)
        {
          CFRelease(*cf);
        }

        if (v164)
        {
          *(DerivedStorage + 60) = 1;
          fbp_SetMetadataPeriod(DerivedStorage, v164);
          CFRelease(v164);
          v61 = 0;
          *(DerivedStorage + 224) = 2;
        }

        else if (fbp_CopyChars(DerivedStorage, destination, 0xCuLL))
        {
          if (!strncasecmp(destination, "ICY 200 OK\r\n", 0xCuLL))
          {
            fbp_AdvanceChars(DerivedStorage, 0xCuLL);
            v84 = 1;
          }

          else
          {
            v84 = 2;
          }

          v61 = 0;
          *(DerivedStorage + 224) = v84;
        }

        else
        {
LABEL_90:
          v61 = 1;
        }

LABEL_133:
        appended = 0;
        if (v61)
        {
          goto LABEL_148;
        }

        continue;
      case 1:
        *cf = 0;
        LOBYTE(url) = 0;
        break;
      case 2:
        v46 = *(DerivedStorage + 216);
        if (!v46)
        {
          goto LABEL_193;
        }

        v47 = CMBlockBufferGetDataLength(v46);
        v48 = *(DerivedStorage + 232);
        v49 = *(DerivedStorage + 240);
        v6 = v47 - v48;
        if (!v49)
        {
          v74 = OUTLINED_FUNCTION_298();
          if (fbp_SendDataCallback(v74, v75, v76, a2, 0, v77, MEMORY[0x1E6960C70], 0))
          {
            goto LABEL_211;
          }

          *(DerivedStorage + 232) += v6;
          OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v6));
          goto LABEL_90;
        }

        destination[0] = 0;
        v50 = *(DerivedStorage + 248);
        a6 = v49 - v50;
        if (v49 - v50 >= v6)
        {
          v51 = v47 - v48;
        }

        else
        {
          v51 = v49 - v50;
        }

        PlaylistFileParserFromData = CMBlockBufferCreateWithBufferReference(*DerivedStorage, *(DerivedStorage + 216), v48, v51, 0, destination);
        if (PlaylistFileParserFromData)
        {
          goto LABEL_188;
        }

        v52 = OUTLINED_FUNCTION_3_10();
        v58 = fbp_SendDataCallback(v52, v53, v54, v55, v56, v57, MEMORY[0x1E6960C70], 0);
        if (destination[0])
        {
          CFRelease(destination[0]);
        }

        if (v58)
        {
          goto LABEL_211;
        }

        *(DerivedStorage + 248) += v51;
        *(DerivedStorage + 232) += v51;
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v51));
        if (v59 >= v60)
        {
          *(DerivedStorage + 224) = 3;
          *(DerivedStorage + 248) = 0;
        }

        v61 = v6 <= a6;
        goto LABEL_133;
      case 3:
        LOBYTE(destination[0]) = 0;
        *(DerivedStorage + 248) = 0;
        v62 = *(DerivedStorage + 216);
        if (!v62)
        {
          goto LABEL_193;
        }

        v63 = CMBlockBufferCopyDataBytes(v62, *(DerivedStorage + 232), 1uLL, destination);
        if (v63)
        {
          goto LABEL_194;
        }

        v64 = LOBYTE(destination[0]);
        *(DerivedStorage + 256) = LOBYTE(destination[0]);
        if (v64)
        {
          v65 = *(DerivedStorage + 272);
          if (v65)
          {
            CFAllocatorDeallocate(v7, v65);
            *(DerivedStorage + 272) = 0;
            v64 = *(DerivedStorage + 256);
          }

          *(DerivedStorage + 256) = 16 * v64;
          v66 = MEMORY[0x19A8CC720](v7, (16 * v64) | 1, 0x100004077774924, 0);
          *(DerivedStorage + 272) = v66;
          if (v66)
          {
            *(v66 + *(DerivedStorage + 256)) = 0;
          }

          *(DerivedStorage + 264) = 0;
          v67 = 4;
        }

        else
        {
          v67 = 2;
        }

        *(DerivedStorage + 224) = v67;
        a6 = *(DerivedStorage + 232) + 1;
        *(DerivedStorage + 232) = a6;
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(1uLL));
        v45 = CMBlockBufferGetDataLength(*(DerivedStorage + 216));
        appended = 0;
        goto LABEL_93;
      case 4:
        v29 = *(DerivedStorage + 216);
        if (!v29)
        {
          goto LABEL_193;
        }

        v30 = CMBlockBufferGetDataLength(v29);
        v31 = *(DerivedStorage + 232);
        v32 = *(DerivedStorage + 256);
        v33 = *(DerivedStorage + 264);
        if (v30 - v31 >= v32 - v33)
        {
          v34 = v32 - v33;
        }

        else
        {
          v34 = v30 - v31;
        }

        v35 = *(DerivedStorage + 272);
        if (!v35)
        {
          goto LABEL_34;
        }

        appended = CMBlockBufferCopyDataBytes(*(DerivedStorage + 216), v31, v34, (v35 + v33));
        if (appended)
        {
          goto LABEL_196;
        }

        v31 = *(DerivedStorage + 232);
        v32 = *(DerivedStorage + 256);
        v33 = *(DerivedStorage + 264);
LABEL_34:
        a6 = v31 + v34;
        *(DerivedStorage + 232) = v31 + v34;
        v36 = v33 + v34;
        *(DerivedStorage + 264) = v36;
        if (v36 < v32)
        {
          goto LABEL_39;
        }

        *(DerivedStorage + 224) = 2;
        v37 = *(DerivedStorage + 272);
        if (!v37)
        {
          goto LABEL_39;
        }

        destination[0] = 0;
        PlaylistFileParserFromData = CMBlockBufferCreateWithMemoryBlock(*DerivedStorage, v37, v32 + 1, v7, 0, 0, v32 + 1, 0, destination);
        if (PlaylistFileParserFromData)
        {
          goto LABEL_188;
        }

        *(DerivedStorage + 272) = 0;
        CMSetAttachment(destination[0], @"FBPAKey_TimedData", @"FBPA_TimedData_ICY", 0);
        v39 = OUTLINED_FUNCTION_3_10();
        appended = fbp_SendDataCallback(v39, v40, v41, v42, v43, v44, MEMORY[0x1E6960C70], 0);
        CFRelease(destination[0]);
        if (appended)
        {
          goto LABEL_211;
        }

        a6 = *(DerivedStorage + 232);
LABEL_39:
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v34));
        v45 = CMBlockBufferGetDataLength(*(DerivedStorage + 216));
LABEL_93:
        if (a6 >= v45)
        {
          goto LABEL_148;
        }

        continue;
      case 5:
        if (!HIDWORD(v148))
        {
          goto LABEL_148;
        }

        goto LABEL_193;
      default:
        continue;
    }

    break;
  }

  do
  {
    if (!fbp_CopyChars(DerivedStorage, destination, 0x20uLL))
    {
      goto LABEL_146;
    }

    if (!strncasecmp(destination, "icy-metaint:", 0xCuLL))
    {
      appended = fbp_GrabHeaderPayload(DerivedStorage, 0xCuLL, cf, &url);
      if (!appended)
      {
        v13 = *cf;
        if (*cf)
        {
          *(DerivedStorage + 60) = 1;
          fbp_SetMetadataPeriod(DerivedStorage, v13);
          CFRelease(*cf);
          appended = 0;
        }
      }
    }

    else
    {
      if (!strncasecmp(destination, "\r\n", 2uLL))
      {
        fbp_AdvanceChars(DerivedStorage, 2uLL);
        *(DerivedStorage + 224) = 2;
LABEL_72:
        appended = 0;
        v68 = (DerivedStorage + 232);
        v69 = vld1q_dup_f64(v68);
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), v69);
        if (v70)
        {
LABEL_148:
          v13 = *(DerivedStorage + 216);
          if (!v13)
          {
            goto LABEL_155;
          }

          v85 = *(DerivedStorage + 232);
          if (v85 >= v23)
          {
            CFRelease(*(DerivedStorage + 216));
            *(DerivedStorage + 216) = 0;
            goto LABEL_155;
          }

          destination[0] = 0;
          PlaylistFileParserFromData = CMBlockBufferCreateWithBufferReference(*DerivedStorage, v13, v85, 0, 0, destination);
          if (PlaylistFileParserFromData)
          {
            goto LABEL_188;
          }

          v86 = *(DerivedStorage + 216);
          if (v86)
          {
            CFRelease(v86);
          }

          appended = 0;
          *(DerivedStorage + 216) = destination[0];
          *(DerivedStorage + 232) = 0;
LABEL_155:
          if (HIDWORD(v163))
          {
            if (*(DerivedStorage + 224) != 5)
            {
              goto LABEL_165;
            }

            destination[0] = 0;
            PlaylistFileParserFromData = CreatePlaylistFileParserFromData(*(DerivedStorage + 216), 0, destination);
            if (PlaylistFileParserFromData)
            {
              goto LABEL_188;
            }

            v87 = destination[0];
            if (destination[0])
            {
              v88 = *(DerivedStorage + 168);
              if (v88)
              {
                PlaylistFileParserDestroy(v88);
                v87 = destination[0];
              }

              *(DerivedStorage + 168) = v87;
              *(DerivedStorage + 176) = 0;
            }

            v89 = *(DerivedStorage + 216);
            if (v89)
            {
              CFRelease(v89);
            }

            *(DerivedStorage + 216) = 0;
            *(DerivedStorage + 232) = 0;
LABEL_165:
            v90 = *(DerivedStorage + 168);
            if (v90 && (v91 = PlaylistFileParserItemCount(v90), (v92 = *(DerivedStorage + 168)) != 0))
            {
              v93 = *(DerivedStorage + 176);
              if (v93 < v91)
              {
                destination[0] = 0;
                PlaylistFileParserCopyItem(v92, v93, destination);
                if (!PlaylistFileParserFromData)
                {
                  ++*(DerivedStorage + 176);
                  FigICY_InvalidateHTTP(DerivedStorage);
                  *(DerivedStorage + 20) = 0;
                  v7 = CFURLCreateWithString(*MEMORY[0x1E695E480], destination[0], 0);
                  CFRelease(destination[0]);
                  if (!v7)
                  {
                    *(DerivedStorage + 224) = 0;
                    *(DerivedStorage + 21) = 1;
                    goto LABEL_211;
                  }

                  FigICY_CreateHTTPRequest(a1, v7, 0);
                  appended = v125;
                  CFRelease(v7);
                  *(DerivedStorage + 224) = 0;
                  *(DerivedStorage + 21) = 1;
                  goto LABEL_195;
                }

LABEL_188:
                appended = PlaylistFileParserFromData;
                goto LABEL_196;
              }

              if (dword_1EAF16B70)
              {
                LODWORD(url) = 0;
                v103 = OUTLINED_FUNCTION_8_3(qword_1EAF16B68, v93, v14, v15, v16, v17, v18, v19, v145, v148, v151, v154);
                if (OUTLINED_FUNCTION_15_3(v103, v104, v105, v106, v107, v108, v109, v110, v146, v149, v152, v155, v157, v158, v159, v160, v161, inTagClass, v163, OS_LOG_TYPE_DEFAULT, SHIDWORD(v164), url))
                {
                  v111 = v7;
                }

                else
                {
                  v111 = v7 & 0xFFFFFFFE;
                }

                if (v111)
                {
                  v112 = *(DerivedStorage + 176);
                  *cf = 136315650;
                  *&cf[4] = "FigICY_HTTPCommonCallback";
                  v168 = 1024;
                  v169 = v112;
                  v170 = 1024;
                  v171 = v91;
                  OUTLINED_FUNCTION_66();
                  OUTLINED_FUNCTION_7_4();
                  _os_log_send_and_compose_impl(v113, v114, v115, v116, v117, a6, v6, v118);
                }

                goto LABEL_185;
              }
            }

            else if (dword_1EAF16B70)
            {
              LODWORD(url) = 0;
              v94 = OUTLINED_FUNCTION_8_3(qword_1EAF16B68, v13, v14, v15, v16, v17, v18, v19, v145, v148, v151, v154);
              v95 = url;
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                v96 = v95;
              }

              else
              {
                v96 = v95 & 0xFFFFFFFE;
              }

              if (v96)
              {
                *cf = 136315138;
                *&cf[4] = "FigICY_HTTPCommonCallback";
                OUTLINED_FUNCTION_66();
                OUTLINED_FUNCTION_7_4();
                _os_log_send_and_compose_impl(v97, v98, v99, v100, v101, v94, 0, v102);
              }

LABEL_185:
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v119 = OUTLINED_FUNCTION_298();
            v124 = 0;
            goto LABEL_210;
          }

LABEL_195:
          if (appended)
          {
            goto LABEL_196;
          }

          goto LABEL_211;
        }

        goto LABEL_23;
      }

      appended = fbp_GrabHeaderPayload(DerivedStorage, 0, 0, &url);
    }
  }

  while (!url && !appended);
  if (!appended)
  {
    if (!url)
    {
      goto LABEL_72;
    }

LABEL_146:
    appended = 0;
    OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v23));
    goto LABEL_148;
  }

LABEL_196:
  v126 = *(DerivedStorage + 216);
  if (v126)
  {
    CFRelease(v126);
    *(DerivedStorage + 216) = 0;
  }

  *(DerivedStorage + 232) = 0;
  v127 = HIDWORD(v161);
  if (HIDWORD(v163) || HIDWORD(v161))
  {
    FigICY_InvalidateHTTP(DerivedStorage);
    if (HIDWORD(v161))
    {
      v128 = OUTLINED_FUNCTION_298();
      fbp_CancelAndRetryRequest(v128, v129, appended);
      goto LABEL_211;
    }
  }

  if (dword_1EAF16B70)
  {
    LODWORD(url) = 0;
    v130 = OUTLINED_FUNCTION_8_3(qword_1EAF16B68, v13, v14, v15, v16, v17, v18, v19, v145, v148, v151, v154);
    if (OUTLINED_FUNCTION_15_3(v130, v131, v132, v133, v134, v135, v136, v137, v147, v150, v153, v156, v157, v158, v159, v160, v161, inTagClass, v163, OS_LOG_TYPE_DEFAULT, SHIDWORD(v164), url))
    {
      v138 = v7;
    }

    else
    {
      v138 = v7 & 0xFFFFFFFE;
    }

    if (v138)
    {
      *cf = 136315394;
      *&cf[4] = "FigICY_HTTPCommonCallback";
      v168 = 1024;
      v169 = appended;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl(v139, v140, v141, v142, v143, v127, v6, v144);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v119 = OUTLINED_FUNCTION_298();
  v124 = appended;
LABEL_210:
  fbp_SendDataCallback(v119, v120, v121, 0, 2, v122, v123, v124);
LABEL_211:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }
}

uint64_t fbp_CopyChars(uint64_t result, void *a2, size_t a3)
{
  if (result)
  {
    v3 = result;
    result = *(result + 216);
    if (result)
    {
      DataLength = CMBlockBufferGetDataLength(result);
      v7 = *(v3 + 232);
      if (DataLength - v7 < a3)
      {
        return 0;
      }

      else
      {
        if (DataLength != v7)
        {
          CMBlockBufferCopyDataBytes(*(v3 + 216), v7, a3, a2);
        }

        return 1;
      }
    }
  }

  return result;
}

void fbp_AdvanceChars(uint64_t a1, size_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 216);
    if (v3)
    {
      DataLength = CMBlockBufferGetDataLength(v3);
      v6 = *(a1 + 232);
      if (DataLength - v6 <= a2)
      {
        v8 = *(a1 + 216);
        if (v8)
        {
          CFRelease(v8);
        }

        v7 = 0;
        *(a1 + 216) = 0;
      }

      else
      {
        v7 = v6 + a2;
      }

      *(a1 + 232) = v7;
    }
  }
}

uint64_t patchMediaDataAtomSizeIfNeeded(uint64_t a1)
{
  if (*(a1 + 108) != 1)
  {
    return 0;
  }

  v7[3] = v1;
  v7[4] = v2;
  v7[0] = 0;
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    return 4294954514;
  }

  result = v5(v4, 0, v7);
  if (!result)
  {
    return patchMediaDataAtomSize(a1, *(a1 + 112), v7[0] - *(a1 + 112), *(a1 + 106));
  }

  return result;
}

double writeFreeAtom(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 7)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v10[0] = bswap32(a3);
    v10[1] = 1701147238;
    v9 = 0;
    v6 = *(a1 + 40);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7 && !v7(v6, 8, a2, v10, &v9))
    {
      if (v9 == 8)
      {
        writeZeroData(a1, *(a1 + 40), a2 + 8, (a3 - 8));
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10[0], v10[2]);
      }
    }
  }

  return result;
}

uint64_t appendFileTypeAtomAndMediaDataAtomHeaderAndPaddingIfNeeded(uint64_t a1, CMBlockBufferRef a2)
{
  cf = 0;
  blockBufferOut = 0;
  v4 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 3u, 0, &blockBufferOut);
  if (v4)
  {
    v19 = v4;
    goto LABEL_35;
  }

  FileTypeAtomIfNeeded = createFileTypeAtomIfNeeded(a1, &cf);
  if (FileTypeAtomIfNeeded)
  {
    goto LABEL_38;
  }

  v6 = cf;
  if (cf)
  {
    FileTypeAtomIfNeeded = OUTLINED_FUNCTION_1_14(blockBufferOut, cf);
    if (FileTypeAtomIfNeeded)
    {
      goto LABEL_38;
    }

    DataLength = CMBlockBufferGetDataLength(v6);
  }

  else
  {
    DataLength = 0;
  }

  v25 = 0;
  if (*(a1 + 105) != 1 || *(a1 + 108))
  {
    v10 = 0;
    goto LABEL_40;
  }

  FileTypeAtomIfNeeded = MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer(*(a1 + 16), *(a1 + 104), *(a1 + 136), &v25);
  if (!FileTypeAtomIfNeeded)
  {
    v8 = *(a1 + 104) != 0;
    if (*(a1 + 136))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    *(a1 + 108) = v9;
    v10 = v25;
    if (v25)
    {
      v22 = 0;
      v11 = *(a1 + 40);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v12)
      {
        v19 = 4294954514;
        goto LABEL_31;
      }

      PreferredChunkAlignment = v12(v11, 0, &v22);
      if (PreferredChunkAlignment)
      {
        goto LABEL_41;
      }

      v14 = 8 * v8 + DataLength + v22;
      *(a1 + 112) = v14;
      if (!*(a1 + 120))
      {
        *(a1 + 128) = v14;
        *(a1 + 120) = 1;
      }

      PreferredChunkAlignment = OUTLINED_FUNCTION_1_14(blockBufferOut, v10);
      if (PreferredChunkAlignment)
      {
        goto LABEL_41;
      }

      if (!a2)
      {
        goto LABEL_26;
      }

      v15 = CMBlockBufferGetDataLength(v10);
      v16 = v22;
      v21 = 0;
      PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkAlignment(a1, a2, &v21);
      if (PreferredChunkAlignment)
      {
LABEL_41:
        v19 = PreferredChunkAlignment;
LABEL_31:
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_33;
      }

      v25 = 0;
      if (v21 >= 2)
      {
        v17 = (v15 + DataLength + v16) % v21;
        if (v17)
        {
          PreferredChunkAlignment = createPadding(a1, v21 - v17, &v25);
          if (!PreferredChunkAlignment)
          {
            a2 = v25;
            if (v25)
            {
              v18 = OUTLINED_FUNCTION_1_14(blockBufferOut, v25);
              if (v18)
              {
LABEL_27:
                v19 = v18;
                if (a2)
                {
                  CFRelease(a2);
                }

                goto LABEL_31;
              }
            }

LABEL_26:
            byteStreamAppendBlockBuffer(*(a1 + 40), blockBufferOut);
            goto LABEL_27;
          }

          goto LABEL_41;
        }
      }
    }

LABEL_40:
    a2 = 0;
    goto LABEL_26;
  }

LABEL_38:
  v19 = FileTypeAtomIfNeeded;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v19;
}

void checkIfMediaDataAtomSizeExceededPredeterminedSizeIfNeeded(uint64_t *a1)
{
  if (a1[17])
  {
    v3 = 0;
    if (!MediaDataChunkWriterGetEntireLength(a1[4], a1[5], &v3) && v3 - a1[14] > a1[17])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
    }
  }
}

uint64_t writeZeroData(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = createPadding(a1, a4, &v8);
  v5 = v8;
  if (!v4)
  {
    v4 = CMByteStreamWriteBlockBuffer();
    if (!v4)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v8, v9);
    }
  }

  v7 = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t createFileTypeAtomIfNeeded(uint64_t a1, CMBlockBufferRef *a2)
{
  v6 = 0;
  if (*(a1 + 72) != 1 || *(a1 + 73))
  {
    v5 = 0;
  }

  else
  {
    result = MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(*(a1 + 16), *(a1 + 80), *(a1 + 88), *(a1 + 96), &v6);
    if (result)
    {
      return result;
    }

    *(a1 + 73) = 1;
    v5 = v6;
  }

  result = 0;
  *a2 = v5;
  return result;
}

double byteStreamAppendBlockBuffer(uint64_t a1, CMBlockBufferRef theBuffer)
{
  if (CMBlockBufferGetDataLength(theBuffer))
  {
    if (!CMByteStreamAppendBlockBuffer())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0, v4);
    }
  }

  return result;
}

void MovieSampleDataWriterCreate_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void MovieSampleDataWriterCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAddTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterFlushPendingAsynchronousTasks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void patchMediaDataAtomSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void patchMediaDataAtomSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void patchMediaDataAtomSize_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t MovieSampleDataWriterSetDefaultByteStream_cold_1(uint64_t a1, const void *a2, unsigned int *a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 40);
  *(a1 + 40) = a2;
  CFRetain(a2);
  if (v6)
  {
    CFRelease(v6);
  }

  started = startNewChunkForAllTracks(a1);
  *a3 = started;
  if (!started)
  {
    *(a1 + 108) = 0;
  }

  return FigSimpleMutexUnlock();
}

void MovieSampleDataWriterSetDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSynchronizeDefaultByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSynchronizeDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSynchronizeDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSynchronizeDefaultByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterWriteData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterWriteData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterWriteData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterWriteData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterWriteData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterWriteFreeAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterWriteFreeAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendFreeAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendFreeAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendHeader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendHeader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterAppendHeader_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterFlush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterFlush_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackAppendSampleData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackAppendSampleData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackAppendSampleData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackAppendSampleReference_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackAppendSampleReference_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackSetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackSetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetMajorBrand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetMajorBrand_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetMajorBrand_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyMajorBrand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyMajorBrand_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetMinorVersion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetMinorVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetMinorVersion_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyMinorVersion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyMinorVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetCompatibleBrands_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetCompatibleBrands_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterSetCompatibleBrands_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyCompatibleBrands_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleDataWriterCopyCompatibleBrands_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCLCPCaptionFormatConformerCreate_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

void FigCLCPCaptionFormatConformerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcfc_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void clcpcfc_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcfc_CreateConformedCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcfc_CreateConformedCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcfc_CreateConformedCaptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcfc_CreateConformedCaptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcfc_CreateConformedCaptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcfcFromSbufOutputCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigManifoldCreateForICY(const __CFAllocator *a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  inPropertyData[2] = *MEMORY[0x1E69E9840];
  values = @"IcyManifoldMemoryPool";
  theBuffera = 0;
  if (!theBuffer)
  {
    emitter = fig_log_get_emitter();
    v37 = v6;
    v38 = emitter;
    v39 = 2912;
LABEL_47:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 4294951252, "<<<< FIM >>>>", v39, v37);
  }

  if (!CMBlockBufferGetDataLength(theBuffer))
  {
    v40 = fig_log_get_emitter();
    v37 = v6;
    v38 = v40;
    v39 = 2913;
    goto LABEL_47;
  }

  inClientData = 0;
  FigManifoldGetClassID();
  if (CMDerivedObjectCreate())
  {
LABEL_52:
    v22 = 0;
LABEL_39:
    if (theBuffera)
    {
      CFRelease(theBuffera);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Default = a1;
  if (!a1)
  {
    Default = CFAllocatorGetDefault();
  }

  *DerivedStorage = CFRetain(Default);
  v16 = FigReentrantMutexCreate();
  *(DerivedStorage + 8) = v16;
  if (!v16)
  {
    v22 = 0;
LABEL_38:
    CFRelease(inClientData);
    goto LABEL_39;
  }

  *(DerivedStorage + 464) = 0;
  *(DerivedStorage + 472) = DerivedStorage + 464;
  *(DerivedStorage + 48) = 100;
  v17 = MEMORY[0x1E6960C70];
  v18 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 280) = *MEMORY[0x1E6960C70];
  v19 = *(v17 + 16);
  *(DerivedStorage + 296) = v19;
  *(DerivedStorage + 480) = v18;
  *(DerivedStorage + 496) = v19;
  *(DerivedStorage + 576) = v18;
  *(DerivedStorage + 592) = v19;
  *(DerivedStorage + 600) = v18;
  *(DerivedStorage + 616) = v19;
  *(DerivedStorage + 528) = 0;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 560) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, v43);
    goto LABEL_52;
  }

  v21 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69628C8], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = v21;
  if (!v21 || (v23 = CMMemoryPoolCreate(v21), (*(DerivedStorage + 16) = v23) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_39;
  }

  if (CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
  {
    theBuffera = CFRetain(theBuffer);
LABEL_13:
    v44 = a3;
    v45 = a4;
    v46 = a5;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    while (1)
    {
      *(DerivedStorage + 35) = 0;
      fim_DestroyAudioStream(DerivedStorage + 80);
      OUTLINED_FUNCTION_8_4();
      *(DerivedStorage + 552) = 0;
      v28 = possibleAudioTypes[v24];
      *(DerivedStorage + 144) = v28;
      if (AudioFileStreamOpen(inClientData, AudioFileStreamStartupPropertyListener, AudioFileStreamStartupPackets, v28, (DerivedStorage + 152)))
      {
        goto LABEL_38;
      }

      inPropertyData[0] = 0x5052495669643365;
      AudioFileStreamSetProperty(*(DerivedStorage + 152), 0x6F707470u, 8u, inPropertyData);
      *(DerivedStorage + 33) = 1;
      FigIcyManifoldInjectData(inClientData, v29, v30, theBuffera);
      *(DerivedStorage + 33) = 0;
      if (!*(DerivedStorage + 35))
      {
        goto LABEL_23;
      }

      v31 = *(DerivedStorage + 136);
      if (v31 < 2)
      {
        goto LABEL_23;
      }

      v32 = *(DerivedStorage + 144);
      if (v31 > v25)
      {
        v35 = v32 != v28 || v24++ >= 3;
        v27 = 1;
        v25 = *(DerivedStorage + 136);
        v26 = *(DerivedStorage + 144);
        if (v35)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v31 == v25 && v32 != v26)
        {
LABEL_24:
          v34 = *(DerivedStorage + 552);
          if (v34 > CMBlockBufferGetDataLength(theBuffera))
          {
            goto LABEL_38;
          }

          v27 = 0;
          goto LABEL_26;
        }

LABEL_23:
        if (!v27)
        {
          goto LABEL_24;
        }

LABEL_26:
        v35 = v24++ >= 3;
        if (v35)
        {
          v32 = v26;
          if (!v27)
          {
            goto LABEL_38;
          }

LABEL_36:
          *(DerivedStorage + 52) = v32;
          *(DerivedStorage + 56) = v44;
          *(DerivedStorage + 64) = v45;
          *(DerivedStorage + 72) = v46;
          *(DerivedStorage + 35) = 0;
          fim_DestroyAudioStream(DerivedStorage + 80);
          OUTLINED_FUNCTION_8_4();
          *(DerivedStorage + 552) = 0;
          if (fim_NewAudioStream(inClientData))
          {
            goto LABEL_38;
          }

          *a6 = inClientData;
          goto LABEL_39;
        }
      }
    }
  }

  if (!FigMemoryPoolCreateContiguousBlockBuffer())
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t AudioFileStreamStartupPropertyListener(uint64_t a1, OpaqueAudioFileStreamID *a2, int a3, unsigned int *a4)
{
  result = CMBaseObjectGetDerivedStorage();
  v7 = result;
  outPropertyData = 0;
  switch(a3)
  {
    case 1684434292:
      v12 = OUTLINED_FUNCTION_4_12();
      result = AudioFileStreamGetProperty(v12, 0x64666D74u, v13, (v7 + 232));
      if (!result && *(v7 + 232) != 0.0 && *(v7 + 240))
      {
        *(v7 + 35) = 1;
      }

      break;
    case 1768174437:
      v10 = OUTLINED_FUNCTION_4_12();
      result = AudioFileStreamGetProperty(v10, 0x69643365u, v11, &outPropertyData);
      if (!result)
      {
        return ProcessID3HeaderTagFromAudioFileStream(a1, outPropertyData);
      }

      break;
    case 1717988724:
      v8 = OUTLINED_FUNCTION_4_12();
      return AudioFileStreamGetProperty(v8, 0x66666D74u, v9, (v7 + 144));
  }

  return result;
}

uint64_t fim_MakePushSampleBufferCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, void, opaqueCMSampleBuffer *), uint64_t a5, CMSampleBufferRef sbuf)
{
  if (!a4)
  {
    return 0;
  }

  v6 = sbuf;
  v12 = CMSampleBufferGetFormatDescription(sbuf);
  v13 = 0;
  if (*(a2 + 276) && v12)
  {
    if (CMFormatDescriptionGetMediaType(v12) == 1936684398)
    {
      v53 = a1;
      v61 = 0;
      v62 = 0;
      blockBufferOut = 0;
      packetDescriptionsPointerOut = 0;
      v57 = 0;
      v14 = CMSampleBufferGetNumSamples(v6);
      v15 = CMSampleBufferGetFormatDescription(v6);
      CMSampleBufferGetPresentationTimeStamp(&v60, v6);
      DataBuffer = CMSampleBufferGetDataBuffer(v6);
      if (DataBuffer)
      {
        v17 = DataBuffer;
        formatDescription = v15;
        AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(v6, &packetDescriptionsPointerOut, 0);
        if (!AudioStreamPacketDescriptionsPtr)
        {
          v52 = a3;
          v19 = *MEMORY[0x1E695E480];
          v20 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], v14, 0, &blockBufferOut);
          if (!v20)
          {
            OUTLINED_FUNCTION_11_5();
            numSamples = v21;
            packetDescriptions = malloc_type_calloc(v21, 0x10uLL, v22);
            if (packetDescriptions)
            {
              v51 = a5;
              v23 = *(a2 + 200);
              v24 = MEMORY[0x1E6960FB8];
              if (v23 != 1700998451)
              {
                v24 = MEMORY[0x1E6960FA0];
              }

              if (v23 == 1633889587)
              {
                v25 = MEMORY[0x1E6960FB0];
              }

              else
              {
                v25 = v24;
              }

              if (!v14)
              {
LABEL_28:
                v41 = *a2;
                presentationTimeStamp = v60;
                v42 = CMAudioSampleBufferCreateWithPacketDescriptions(v41, blockBufferOut, 1u, 0, 0, formatDescription, numSamples, &presentationTimeStamp, packetDescriptions, &v57);
                a5 = v51;
                a3 = v52;
                a1 = v53;
                if (v42)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = v57;
                  v57 = 0;
                }

LABEL_35:
                if (v62)
                {
                  CFRelease(v62);
                }

                if (v61)
                {
                  CFRelease(v61);
                }

                if (blockBufferOut)
                {
                  CFRelease(blockBufferOut);
                }

                free(packetDescriptions);
                if (v57)
                {
                  CFRelease(v57);
                }

                v6 = v13;
                if (v42)
                {
                  goto LABEL_53;
                }

                goto LABEL_44;
              }

              v26 = 0;
              v27 = *v25;
              v28 = *MEMORY[0x1E6961000];
              while (1)
              {
                DataLength = CMBlockBufferGetDataLength(blockBufferOut);
                v30 = &packetDescriptions[v26];
                v30->mStartOffset = DataLength;
                v31 = *&packetDescriptionsPointerOut[v26].mVariableFramesInPacket;
                *&v30->mVariableFramesInPacket = v31;
                v32 = HIDWORD(v31);
                appended = CMBlockBufferCreateWithMemoryBlock(*a2, 0, HIDWORD(v31), v19, 0, 0, HIDWORD(v31), 1u, &v61);
                if (appended)
                {
                  break;
                }

                CMBlockBufferCreateWithBufferReference(*a2, v17, packetDescriptionsPointerOut[v26].mStartOffset, v32, 0, &v62);
                v34 = *(a2 + 568);
                v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v35)
                {
                  goto LABEL_31;
                }

                appended = v35(v34, v28, v27);
                if (appended)
                {
                  break;
                }

                v36 = *(a2 + 568);
                v37 = v61;
                v38 = v62;
                v39 = *(CMBaseObjectGetVTable() + 16);
                if (*v39 < 4uLL || (v40 = v39[4]) == 0)
                {
LABEL_31:
                  v13 = 0;
                  v42 = 4294954514;
                  goto LABEL_32;
                }

                appended = v40(v36, v38, v37);
                if (appended)
                {
                  break;
                }

                appended = CMBlockBufferAppendBufferReference(blockBufferOut, v61, 0, 0, 0);
                if (appended)
                {
                  break;
                }

                if (v62)
                {
                  CFRelease(v62);
                  v62 = 0;
                }

                if (v61)
                {
                  CFRelease(v61);
                  v61 = 0;
                }

                if (numSamples == ++v26)
                {
                  goto LABEL_28;
                }
              }

              v42 = appended;
              v13 = 0;
LABEL_32:
              a5 = v51;
              goto LABEL_33;
            }

            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, sampleBufferOut, v49);
          }

          v42 = v20;
          v13 = 0;
          packetDescriptions = 0;
LABEL_33:
          a3 = v52;
LABEL_34:
          a1 = v53;
          goto LABEL_35;
        }

        v42 = AudioStreamPacketDescriptionsPtr;
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v42 = 0;
      }

      packetDescriptions = 0;
      goto LABEL_34;
    }

    v13 = 0;
  }

LABEL_44:
  v43 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v43 >= 1)
  {
    v44 = v43;
    do
    {
      FigSimpleMutexUnlock();
      --v44;
    }

    while (v44);
  }

  v42 = a4(a1, a3, a5, 0, 0, v6);
  do
  {
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_7_5();
  }

  while (v45 < v43);
  if (!v42)
  {
    if (!*(a2 + 32) && !*(a2 + 37))
    {
      v42 = 0;
      if (!v13)
      {
        return v42;
      }

      goto LABEL_54;
    }

    v42 = 4294951251;
  }

LABEL_53:
  if (v13)
  {
LABEL_54:
    CFRelease(v13);
  }

  return v42;
}

uint64_t FigIcyManifoldInstallCallbacksForTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v8 + 1;
  if (a3 && *(DerivedStorage + 32))
  {
    v10 = 4294954511;
    goto LABEL_15;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (*(DerivedStorage + 80) == a2)
  {
    if (a3)
    {
      *(DerivedStorage + 88) = *a3;
      *(DerivedStorage + 96) = a3[1];
      *(DerivedStorage + 104) = a3[2];
    }

    else
    {
      *(DerivedStorage + 88) = 0;
      *(DerivedStorage + 96) = 0;
      *(DerivedStorage + 104) = 0;
    }

    v10 = 0;
    *(DerivedStorage + 112) = a4;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 400) != a2)
  {
LABEL_10:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    v10 = v9;
    v8 = *(DerivedStorage + 24) - 1;
    goto LABEL_15;
  }

  if (a3)
  {
    *(DerivedStorage + 408) = *a3;
    *(DerivedStorage + 416) = a3[1];
    *(DerivedStorage + 424) = a3[2];
  }

  else
  {
    *(DerivedStorage + 408) = 0;
    *(DerivedStorage + 416) = 0;
    *(DerivedStorage + 424) = 0;
  }

  v10 = 0;
  *(DerivedStorage + 432) = a4;
LABEL_15:
  *(DerivedStorage + 24) = v8;
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigIcyManifoldCopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, CFNumberRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_7_5();
  if (*(DerivedStorage + 32))
  {
    v11 = 4294954511;
  }

  else if (*(DerivedStorage + 80) == a2)
  {
    if (CFEqual(a3, @"FMFD_TrackEstimatedDataRate"))
    {
      ioPropertyDataSize = 4;
      outPropertyData = 0;
      Property = AudioFileStreamGetProperty(*(DerivedStorage + 152), 0x62726174u, &ioPropertyDataSize, &outPropertyData);
      if (Property)
      {
        v11 = Property;
      }

      else
      {
        outPropertyData >>= 3;
        v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &outPropertyData);
        *a5 = v10;
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = 4294954510;
        }
      }
    }

    else
    {
      v11 = 4294954512;
    }
  }

  else if (*(DerivedStorage + 400) == a2)
  {
    v11 = 4294954513;
  }

  else
  {
    v11 = 4294951254;
  }

  OUTLINED_FUNCTION_12_4();
  return v11;
}

uint64_t FigIcyManifoldReannounceUnregisteredTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_7_5();
  if (*(DerivedStorage + 32))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  else
  {
    *(DerivedStorage + 37) = 0;
    if (!*(DerivedStorage + 56) || ((v3 = *(DerivedStorage + 80), !v3) || *(DerivedStorage + 88) || *(DerivedStorage + 96) || (v4 = fim_ReannounceTrack(a1, v3, *(DerivedStorage + 120), 0), !v4)) && ((v6 = *(DerivedStorage + 400), !v6) || *(DerivedStorage + 408) || *(DerivedStorage + 416) || (v7 = *(DerivedStorage + 456)) == 0 || (v4 = fim_ReannounceTrack(a1, v6, v7, 0), !v4)))
    {
      v5 = 0;
      goto LABEL_14;
    }
  }

  v5 = v4;
LABEL_14:
  OUTLINED_FUNCTION_12_4();
  return v5;
}

uint64_t fim_MakeFormatDescriptionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  v14 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v14 >= 1)
  {
    v15 = v14;
    do
    {
      FigSimpleMutexUnlock();
      --v15;
    }

    while (v15);
  }

  v16 = a4(a1, a3, a5, a6, a7);
  do
  {
    FigSimpleMutexLock();
    v17 = *(a2 + 24);
    *(a2 + 24) = v17 + 1;
  }

  while (v17 + 1 < v14);
  if (!v16)
  {
    if (*(a2 + 32) || *(a2 + 37))
    {
      return 4294951251;
    }

    if (!*(a2 + 38))
    {
      return 0;
    }

    v16 = 0;
    v19 = *(a2 + 80);
    if (v19 && (v19 & 1) == 0)
    {
      *(a2 + 38) = 0;
      v20 = *(a2 + 64);
      if (v20)
      {
        *(a2 + 24) = 0;
        if ((v17 & 0x8000000000000000) == 0)
        {
          v21 = v17 + 1;
          do
          {
            FigSimpleMutexUnlock();
            --v21;
          }

          while (v21);
          v20 = *(a2 + 64);
        }

        v20(a1, *(a2 + 72));
        do
        {
          FigSimpleMutexLock();
          v22 = *(a2 + 24);
          *(a2 + 24) = v22 + 1;
        }

        while (v22 < v17);
        if (*(a2 + 32) || *(a2 + 37))
        {
          return 4294951251;
        }
      }

      return 0;
    }
  }

  return v16;
}

uint64_t ProcessID3HeaderTagFromAudioFileStream(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  if (DerivedStorage[65])
  {
    return 0;
  }

  v5 = DerivedStorage;
  outPropertyData = 0;
  if (DerivedStorage[66])
  {
    goto LABEL_20;
  }

  if (a2 < 0)
  {
    v8 = -a2;
    memcpy(&__dst, DerivedStorage + 10 - v8 + 504, v8);
    memcpy(&__dst + v8, v5[40], 10 - v8);
    v7 = v5[41];
  }

  else
  {
    v6 = DerivedStorage[41];
    if (v6 < a2)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_30;
    }

    v7 = v6 - a2;
    if (v7 < 0xA)
    {
      v12 = 0;
      DerivedStorage[66] = v7;
      return v12;
    }

    v8 = 0;
    v9 = (DerivedStorage[40] + a2);
    v10 = *(v9 + 4);
    __dst = *v9;
    v31 = v10;
  }

  HIDWORD(outPropertyData) = 4;
  Property = AudioFormatGetProperty(0x69643373u, 0xAu, &__dst, &outPropertyData + 1, &outPropertyData);
  if (Property)
  {
    goto LABEL_30;
  }

  if (*(v5 + 33))
  {
    v12 = 0;
    v5[69] += outPropertyData;
    goto LABEL_33;
  }

  if (outPropertyData < 0xB)
  {
LABEL_20:
    v12 = 0;
    goto LABEL_33;
  }

  v13 = v7 + v8;
  if (v7 + v8 >= outPropertyData)
  {
    v14 = outPropertyData;
  }

  else
  {
    v14 = v7 + v8;
  }

  if (!v8)
  {
    appended = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v5[42], v5[43] + a2, v14, 0, &theBuffer);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_9_5();
  v16 = malloc_type_malloc(v8, v15);
  if (!v16)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_30;
  }

  v17 = v16;
  memcpy(v16, &__dst, v8);
  v18 = *MEMORY[0x1E695E480];
  GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
  Property = CMBlockBufferCreateWithMemoryBlock(v18, v17, v8, GlobalCFAllocatorFigMalloc, 0, 0, v8, 0, &theBuffer);
  if (!Property)
  {
    appended = CMBlockBufferAppendBufferReference(theBuffer, v5[42], v5[43], v14 - v8, 0);
LABEL_22:
    v12 = appended;
    if (appended)
    {
      goto LABEL_33;
    }

    v21 = outPropertyData;
    if (v13 < outPropertyData)
    {
      v22 = theBuffer;
      v5[65] = theBuffer;
      theBuffer = 0;
      v5[68] = v21;
      v12 = 0;
      v5[67] = v21 - CMBlockBufferGetDataLength(v22);
      goto LABEL_33;
    }

    v23 = theBuffer;
    if (a2)
    {
      v24 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
      if (v24)
      {
        v25 = v24;
        if (v23)
        {
          v26 = CFRetain(v23);
        }

        else
        {
          v26 = 0;
        }

        v12 = 0;
        v25[4] = 1768174368;
        v25[5] = a2;
        *v25 = 0;
        *(v25 + 1) = v26;
        *v5[59] = v25;
        v5[59] = v25;
        goto LABEL_33;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      Property = fim_PushMetaData(a1, theBuffer, 0x69643320u);
    }
  }

LABEL_30:
  v12 = Property;
LABEL_33:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v12;
}

uint64_t fim_NewAudioStream(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = AudioFileStreamOpen(a1, AudioFileStreamPropertyListener, AudioFileStreamPackets, *(DerivedStorage + 52), (DerivedStorage + 152));
  if (!v3)
  {
    fim_ConfigureAudioFileStreamOptionalProperties(DerivedStorage, 0);
  }

  return v3;
}

void AudioFileStreamPropertyListener(void *a1, OpaqueAudioFileStreamID *a2, int a3, unsigned int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v25 = 0;
  outPropertyData = 0;
  if (a3 == 1684434292)
  {
    v21 = OUTLINED_FUNCTION_3_11();
    Property = AudioFileStreamGetProperty(v21, 0x64666D74u, v22, (v7 + 232));
    if (!Property)
    {
      *(v7 + 272) = 1;
      return;
    }

    goto LABEL_33;
  }

  if (a3 != 1986225779)
  {
    if (a3 == 1768174437)
    {
      v19 = OUTLINED_FUNCTION_3_11();
      Property = AudioFileStreamGetProperty(v19, 0x69643365u, v20, &outPropertyData + 4);
      if (!Property)
      {
        Property = ProcessID3HeaderTagFromAudioFileStream(a1, SHIDWORD(outPropertyData));
        if (!Property)
        {
          return;
        }
      }
    }

    else
    {
      if (a3 != 1818586995)
      {
        if (a3 == 1717988724)
        {

          fim_ConfigureAudioFileStreamOptionalProperties(DerivedStorage, 0);
        }

        return;
      }

      v14 = OUTLINED_FUNCTION_3_11();
      Property = AudioFileStreamGetProperty(v14, 0x6C656F73u, v15, &outPropertyData);
      if (!Property)
      {
        v17 = outPropertyData;
        v18 = CMBaseObjectGetDerivedStorage();
        if ((v17 & 0x80000000) == 0)
        {
          *(v18 + 352) = 1;
          *(v18 + 356) = v17;
        }

        return;
      }
    }

LABEL_33:
    fim_EndAllTracks(a1, Property);
    return;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  outPropertyDataSize = 0;
  if (AudioFileStreamGetPropertyInfo(*(v8 + 152), 0x76636673u, &outPropertyDataSize, 0) || !outPropertyDataSize)
  {
    v12 = 0;
    v9 = 0;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, outPropertyDataSize, 0x10E0040CAA52137uLL);
    if (v9)
    {
      if (!AudioFileStreamGetProperty(*(v8 + 152), 0x76636673u, &outPropertyDataSize, v9))
      {
        v10 = *MEMORY[0x1E695E480];
        v27 = 0;
        theArray = 0;
        if (FigMetadataArrayCreateWithAudioFileMetadataItemList(v10, v9, 0, 0, 1, &theArray))
        {
          v12 = 0;
          v13 = 0;
LABEL_26:
          if (theArray)
          {
            CFRelease(theArray);
          }

          if (v12)
          {
            v23 = v13;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            fim_PushMetaData(a1, v12, 0x706C7374u);
          }

          goto LABEL_37;
        }

        if (theArray)
        {
          if (CFArrayGetCount(theArray) < 1)
          {
            v12 = 0;
            v13 = 1;
          }

          else
          {
            v11 = FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems(v10, theArray, &v27);
            v12 = v27;
            v13 = v11 == 0;
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outPropertyData, v25, v27);
    }

    v12 = 0;
  }

LABEL_37:
  FigReleaseAudioFileMetadataItems(v9);
  free(v9);
  if (v12)
  {
    CFRelease(v12);
  }
}

void AudioFileStreamPackets(void *a1, unsigned int a2, unsigned int a3, char *a4, AudioStreamPacketDescription *a5)
{
  keys[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outWritable = 0;
  v10 = *(DerivedStorage + 275);
  v137 = 0;
  values = 0;
  keys[0] = 0;
  if (*(DerivedStorage + 32) || (v11 = DerivedStorage, *(DerivedStorage + 37)) || *(DerivedStorage + 44))
  {
    v121 = 0;
    cf = 0;
    goto LABEL_205;
  }

  *(DerivedStorage + 128) += a3;
  v125 = a5;
  if (*(DerivedStorage + 272) || (v20 = *(DerivedStorage + 80), !v20) || !*(DerivedStorage + 120))
  {
    ioPropertyDataSize[0] = 32;
    outPropertyDataSize = 0;
    Property = AudioFileStreamGetProperty(*(DerivedStorage + 152), 0x636D6170u, ioPropertyDataSize, (DerivedStorage + 160));
    v13 = 0;
    if (!AudioFileStreamGetPropertyInfo(*(v11 + 152), 0x6D676963u, &outPropertyDataSize, &outWritable))
    {
      if (outPropertyDataSize)
      {
        OUTLINED_FUNCTION_9_5();
        v13 = malloc_type_malloc(v14, v15);
        if (v13)
        {
          if (AudioFileStreamGetProperty(*(v11 + 152), 0x6D676963u, &outPropertyDataSize, v13))
          {
            outPropertyDataSize = 0;
            free(v13);
            v13 = 0;
          }
        }
      }
    }

    v16 = *(v11 + 120);
    if (v16)
    {
      CFRelease(v16);
      *(v11 + 120) = 0;
    }

    v17 = *(v11 + 136);
    if (v17 >= 1)
    {
      memset(&outPropertyData, 0, sizeof(outPropertyData));
      CMTimeMake(&outPropertyData, v17, *(v11 + 192));
      v18 = (v11 + 280);
      if (*(v11 + 292))
      {
        *&lhs.value = *v18;
        lhs.epoch = *(v11 + 296);
        rhs = outPropertyData;
        CMTimeAdd(&presentationTimeStamp, &lhs, &rhs);
        *v18 = *&presentationTimeStamp.value;
        epoch = presentationTimeStamp.epoch;
      }

      else
      {
        *v18 = *&outPropertyData.value;
        epoch = outPropertyData.epoch;
      }

      *(v11 + 296) = epoch;
    }

    *(v11 + 136) = 0;
    v23 = *(v11 + 248);
    *(v11 + 192) = *(v11 + 232);
    *(v11 + 208) = v23;
    *(v11 + 224) = *(v11 + 264);
    *(v11 + 276) = 0;
    if (!*(v11 + 568) || (FigBasicAESCPECryptorGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
LABEL_36:
      v26 = *(v11 + 200);
      if ((v26 - 2053202739) <= 0x3D && ((1 << (v26 - 51)) & 0x2020000000000001) != 0 || (v26 != 1667331683 ? (v27 = v26 == 1700886115) : (v27 = 1), !v27 ? (v28 = v26 == 1902212707) : (v28 = 1), !v28 ? (v29 = v26 == 2053202275) : (v29 = 1), !v29 ? (v30 = v26 == 2053464883) : (v30 = 1), !v30 ? (v31 = v26 == 2053207651) : (v31 = 1), v31))
      {
        inited = PKDCreateTransportStreamEncryptionInitData(1936684398, v26);
        if (!inited)
        {
          cf = 0;
          goto LABEL_223;
        }

        v34 = *MEMORY[0x1E69627C8];
        values = inited;
        keys[0] = v34;
        cf = inited;
        v32 = 1;
      }

      else
      {
        v32 = 0;
        cf = 0;
      }

      v35 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v32, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      if (v35)
      {
        if (Property)
        {
          v36 = 0;
        }

        else
        {
          v36 = (v11 + 160);
        }

        v121 = v35;
        v37 = CMAudioFormatDescriptionCreate(*v11, (v11 + 192), 32 * (Property == 0), v36, outPropertyDataSize, v13, v35, (v11 + 120));
        free(v13);
        if (v37)
        {
          goto LABEL_204;
        }

        a5 = v125;
        if (!*(v11 + 80))
        {
          v38 = CMBaseObjectGetDerivedStorage();
          *(v38 + 38) = 1;
          v39 = *(v38 + 48);
          *(v38 + 80) = v39;
          *(v38 + 48) = v39 + 2;
          v40 = *(v38 + 56);
          if (v40)
          {
            v41 = v38;
            v42 = *(v38 + 24);
            *(v38 + 24) = 0;
            if (v42 >= 1)
            {
              v43 = v42;
              do
              {
                FigSimpleMutexUnlock();
                --v43;
              }

              while (v43);
              v40 = *(v41 + 56);
              v39 = *(v41 + 80);
            }

            v37 = v40(a1, *(v41 + 72), 1936684398, v39);
            do
            {
              FigSimpleMutexLock();
              v44 = *(v41 + 24) + 1;
              *(v41 + 24) = v44;
            }

            while (v44 < v42);
            if (v37)
            {
              goto LABEL_204;
            }

            if (*(v41 + 32) || *(v41 + 37))
            {
              v37 = 4294951251;
              goto LABEL_204;
            }
          }
        }

        LODWORD(outPropertyData.value) = 0;
        LODWORD(presentationTimeStamp.value) = 4;
        AudioFileStreamGetProperty(*(v11 + 152), 0x72726170u, &presentationTimeStamp, &outPropertyData);
        *(v11 + 360) = LODWORD(outPropertyData.value) != 0;
        v20 = *(v11 + 80);
        goto LABEL_75;
      }

LABEL_223:
      v121 = 0;
      v37 = 4294954510;
      goto LABEL_204;
    }

    *(v11 + 276) = 1;
    if (*(v11 + 200) == 2053464883)
    {
      v24 = 1700998451;
    }

    else
    {
      OUTLINED_FUNCTION_10_5();
      if (v27)
      {
        v24 = 1633889587;
      }

      else
      {
        OUTLINED_FUNCTION_10_5();
        if (v27)
        {
          v25 = 72;
        }

        else
        {
          OUTLINED_FUNCTION_10_5();
          if (!v27)
          {
            OUTLINED_FUNCTION_10_5();
            if (!v27)
            {
              *(v11 + 276) = 0;
              goto LABEL_36;
            }

            v24 = 1633772320;
            goto LABEL_35;
          }

          v25 = 80;
        }

        v24 = v25 | 0x61616320;
      }
    }

LABEL_35:
    *(v11 + 200) = v24;
    goto LABEL_36;
  }

  v21 = 0;
  if (!v10)
  {
    v22 = 0;
    goto LABEL_82;
  }

  v121 = 0;
  cf = 0;
LABEL_75:
  if (*(v11 + 88))
  {
    v45 = *(v11 + 88);
  }

  else
  {
    v45 = 0;
  }

  FormatDescriptionCallback = fim_MakeFormatDescriptionCallback(a1, v11, v20, v45, *(v11 + 112), *(v11 + 120), *(v11 + 568));
  if (FormatDescriptionCallback)
  {
    v37 = FormatDescriptionCallback;
    *(v11 + 44) = FormatDescriptionCallback;
    goto LABEL_204;
  }

  if (*(v11 + 44))
  {
    goto LABEL_205;
  }

  *(v11 + 275) = 0;
  *(v11 + 272) = 0;
  v21 = v121;
  v22 = cf;
LABEL_82:
  v47 = *(v11 + 240);
  v48 = MEMORY[0x1E695E4D0];
  v121 = v21;
  cf = v22;
  if (((v47 - 2053202739) > 0x3D || ((1 << (v47 - 51)) & 0x2020000000000001) == 0) && v47 != 2053464883 && v47 != 2053202275)
  {
    goto LABEL_95;
  }

  v50 = *(v11 + 568);
  if (*(v11 + 276))
  {
    v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v51)
    {
      v37 = 4294954514;
      goto LABEL_204;
    }

    v52 = v51(v50, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v137);
    if (v52)
    {
      v37 = v52;
      goto LABEL_204;
    }
  }

  else if (v50)
  {
LABEL_95:
    v137 = CFRetain(*MEMORY[0x1E695E4D0]);
  }

  v120 = v137;
  v53 = CMBaseObjectGetDerivedStorage();
  v54 = v53;
  *ioPropertyDataSize = 0;
  v55 = *(v53 + 320);
  if (v55 > a4 || &a4[a2] > &v55[*(v53 + 328)])
  {
    v56 = CMBlockBufferCreateWithMemoryBlock(*v53, 0, a2, *v53, 0, 0, a2, 1u, ioPropertyDataSize);
    v57 = *ioPropertyDataSize;
    if (v56)
    {
      goto LABEL_218;
    }

    v56 = CMBlockBufferReplaceDataBytes(a4, *ioPropertyDataSize, 0, a2);
LABEL_100:
    v57 = *ioPropertyDataSize;
    if (!v56)
    {
      v58 = *ioPropertyDataSize;
      goto LABEL_102;
    }

LABEL_218:
    v37 = v56;
    if (!v57)
    {
      goto LABEL_203;
    }

LABEL_202:
    CFRelease(v57);
    goto LABEL_203;
  }

  v112 = *(v53 + 344);
  if (v55 != a4 || v112)
  {
    v56 = CMBlockBufferCreateWithBufferReference(*v53, *(v53 + 336), a4 - v55 + v112, a2, 0, ioPropertyDataSize);
    goto LABEL_100;
  }

  v57 = 0;
  v58 = *(v53 + 336);
LABEL_102:
  v59 = *(v54 + 212);
  if (v59)
  {
    LODWORD(v60) = (*(v54 + 192) / (2 * v59));
  }

  else if (a5)
  {
    if (!a3)
    {
      goto LABEL_212;
    }

    v60 = 0;
    v61 = 0;
    p_mVariableFramesInPacket = &a5->mVariableFramesInPacket;
    while (1)
    {
      v63 = *p_mVariableFramesInPacket;
      p_mVariableFramesInPacket += 4;
      v61 += v63;
      if (*(v54 + 192) * 0.5 < v61)
      {
        break;
      }

      if (a3 == ++v60)
      {
        goto LABEL_109;
      }
    }
  }

  else
  {
LABEL_109:
    LODWORD(v60) = a3;
  }

  if (v60 <= 1)
  {
    LODWORD(v60) = 1;
  }

  v124 = v60;
  if (!a3)
  {
LABEL_212:
    v37 = 0;
    if (!v57)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

  theBuffer = v58;
  v64 = 0;
  v129 = (v54 + 368);
  v130 = a1;
  v119 = *MEMORY[0x1E695E4C0];
  v118 = *MEMORY[0x1E69604D0];
  v131 = (v54 + 384);
  v132 = (v54 + 392);
  v65 = (v54 + 464);
  v116 = *(v54 + 128) - a3;
  v115 = &a5->mVariableFramesInPacket;
  v117 = *v48;
  do
  {
    v126 = a3;
    if (v124 >= a3)
    {
      v66 = a3;
    }

    else
    {
      v66 = v124;
    }

    v127 = v66;
    v128 = v64;
    lhs.value = 0;
    rhs.value = 0;
    if (!a5)
    {
      goto LABEL_199;
    }

    v67 = &a5[v64];
    v68 = &v67[(v66 - 1)];
    mStartOffset = v67->mStartOffset;
    if (v67->mStartOffset)
    {
      v70 = v68->mStartOffset + v68->mDataByteSize;
      value = theBuffer;
LABEL_122:
      if (*(v54 + 312) < v66)
      {
        OUTLINED_FUNCTION_11_5();
        v76 = malloc_type_realloc(v73, v74, v75);
        *(v54 + 304) = v76;
        if (!v76)
        {
          goto LABEL_199;
        }

        *(v54 + 312) = v66;
      }

      v77 = CMBlockBufferCreateWithBufferReference(*v54, value, mStartOffset, v70 - mStartOffset, 0, &lhs);
      if (v77)
      {
        goto LABEL_200;
      }

      v78 = 0;
      value = lhs.value;
      v79 = *(v54 + 304);
      v80 = v66;
      do
      {
        v79[v78] = v67[v78];
        v79 = *(v54 + 304);
        v79[v78].mStartOffset = v67[v78].mStartOffset - mStartOffset;
        ++v78;
        --v80;
      }

      while (v80);
      goto LABEL_128;
    }

    value = theBuffer;
    v72 = CMBlockBufferGetDataLength(theBuffer);
    v70 = v68->mStartOffset + v68->mDataByteSize;
    if (v72 > v70)
    {
      mStartOffset = v67->mStartOffset;
      goto LABEL_122;
    }

    v79 = v67;
LABEL_128:
    fim_GetCurrentAudioTime(v54 + 80, &presentationTimeStamp);
    outPropertyData = presentationTimeStamp;
    fim_AdjustPTS(v54, &outPropertyData);
    v81 = *v54;
    v82 = *(v54 + 120);
    presentationTimeStamp = outPropertyData;
    v77 = CMAudioSampleBufferCreateWithPacketDescriptions(v81, value, 1u, 0, 0, v82, v66, &presentationTimeStamp, v79, &rhs);
    if (v77)
    {
      goto LABEL_200;
    }

    if (!*(v54 + 96))
    {
      goto LABEL_159;
    }

    if (*(v54 + 274))
    {
      CMSetAttachment(rhs.value, v118, v117, 1u);
    }

    if (*(v54 + 360))
    {
      a5 = v125;
      dataLengtha = CMSampleBufferGetSampleAttachmentsArray(rhs.value, 1u);
      if (dataLengtha)
      {
        v83 = 0;
        v84 = v116 + v128;
        v85 = v66;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(dataLengtha, v83);
          outPropertyDataSize = 16;
          presentationTimeStamp.value = v84;
          *&presentationTimeStamp.timescale = 0;
          if (!ValueAtIndex)
          {
LABEL_196:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_16();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v37 = v110;
            goto LABEL_197;
          }

          v87 = ValueAtIndex;
          v88 = AudioFileStreamGetProperty(*(v54 + 152), 0x706B6470u, &outPropertyDataSize, &presentationTimeStamp);
          if (v88)
          {
            v37 = v88;
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_16();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v114, v115);
LABEL_197:
            a5 = v125;
            goto LABEL_180;
          }

          flags = presentationTimeStamp.flags;
          if (presentationTimeStamp.timescale)
          {
            if (presentationTimeStamp.flags)
            {
              v90 = (v54 + 384);
              v91 = *v131;
              if (*v131)
              {
                if (*(v54 + 376) == presentationTimeStamp.flags)
                {
                  a1 = v130;
                  goto LABEL_152;
                }

                CFRelease(v91);
                v90 = (v54 + 384);
                *v131 = 0;
              }

              if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary())
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_16();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v114, v115);
                v37 = v111;
                a5 = v125;
                a1 = v130;
                goto LABEL_180;
              }

              *(v54 + 376) = flags;
              v92 = v90;
              a1 = v130;
            }

            else
            {
              v91 = *v129;
              if (*v129)
              {
                goto LABEL_152;
              }

              v92 = (v54 + 368);
              if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary())
              {
                goto LABEL_196;
              }
            }
          }

          else
          {
            v91 = *v132;
            if (*v132)
            {
              goto LABEL_152;
            }

            v92 = (v54 + 392);
            if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary())
            {
              goto LABEL_196;
            }
          }

          v91 = *v92;
          if (!*v92)
          {
            goto LABEL_196;
          }

LABEL_152:
          CFDictionaryApplyFunction(v91, appendAttributesToDictionary, v87);
          ++v83;
          ++v84;
          if (!--v85)
          {
            goto LABEL_153;
          }
        }
      }

LABEL_199:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_16();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_200:
      v37 = v77;
      goto LABEL_180;
    }

LABEL_153:
    v93 = *(v54 + 560);
    if (v120 == v119)
    {
      CFArrayAppendValue(v93, rhs.value);
      a5 = v125;
    }

    else
    {
      a5 = v125;
      if (CFArrayGetCount(v93) >= 1)
      {
        CFArrayGetCount(*(v54 + 560));
        v106 = OUTLINED_FUNCTION_2_16();
        CFArrayApplyFunction(v106, v145, v107, a1);
        CFArrayRemoveAllValues(*(v54 + 560));
      }

      if (*(v54 + 96))
      {
        v108 = *(v54 + 96);
      }

      else
      {
        v108 = 0;
      }

      PushSampleBufferCallback = fim_MakePushSampleBufferCallback(a1, v54, *(v54 + 80), v108, *(v54 + 112), rhs.value);
      if (PushSampleBufferCallback)
      {
        v37 = PushSampleBufferCallback;
        *(v54 + 44) = PushSampleBufferCallback;
        goto LABEL_180;
      }
    }

    v94 = *(v54 + 440);
    if (!v94)
    {
      goto LABEL_159;
    }

    v37 = fim_PushMetaData(a1, v94, *(v54 + 448));
    v95 = *(v54 + 440);
    if (v95)
    {
      CFRelease(v95);
      *(v54 + 440) = 0;
    }

    if (!v37)
    {
LABEL_159:
      *(v54 + 274) = 0;
      v96 = *(v54 + 464);
      if (v96)
      {
        v97 = 0;
        do
        {
          v98 = &v67[v97];
          if (v96)
          {
            do
            {
              if (v98->mStartOffset < *(v96 + 5))
              {
                break;
              }

              v77 = fim_PushMetaData(a1, v96[1], *(v96 + 4));
              if (v77)
              {
                goto LABEL_200;
              }

              v99 = **v65;
              *v65 = v99;
              if (!v99)
              {
                *(v54 + 472) = v65;
              }

              v100 = v96[1];
              if (v100)
              {
                CFRelease(v100);
              }

              free(v96);
              v96 = *v65;
            }

            while (*v65);
          }

          mVariableFramesInPacket = *(v54 + 212);
          if (!mVariableFramesInPacket)
          {
            mVariableFramesInPacket = v98->mVariableFramesInPacket;
          }

          *(v54 + 136) += mVariableFramesInPacket;
          ++v97;
        }

        while (v97 != v66);
        v37 = 0;
      }

      else
      {
        v102 = *(v54 + 212);
        if (v102)
        {
          v37 = 0;
          v103 = *(v54 + 136) + (v102 * v66);
        }

        else
        {
          v103 = *(v54 + 136);
          v104 = &v115[4 * v128];
          do
          {
            v105 = *v104;
            v104 += 4;
            v103 += v105;
            --v66;
          }

          while (v66);
          v37 = 0;
        }

        *(v54 + 136) = v103;
      }
    }

LABEL_180:
    if (rhs.value)
    {
      CFRelease(rhs.value);
    }

    if (lhs.value)
    {
      CFRelease(lhs.value);
    }

    if (v37)
    {
      break;
    }

    v64 = v127 + v128;
    a3 = v126 - v127;
  }

  while (v126 != v127);
  v57 = *ioPropertyDataSize;
  if (*ioPropertyDataSize)
  {
    goto LABEL_202;
  }

LABEL_203:
  if (v37)
  {
LABEL_204:
    fim_EndAllTracks(a1, v37);
  }

LABEL_205:
  if (v137)
  {
    CFRelease(v137);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v121)
  {
    CFRelease(v121);
  }
}

void FigIcyManifoldInjectData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyManifoldCopyProperty(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyManifoldSetProperty(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyManifoldFlush(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyManifoldFlush(uint64_t a1, void *a2)
{
  if (CFArrayGetCount(*(a1 + 560)) >= 1)
  {
    CFArrayGetCount(*(a1 + 560));
    v4 = OUTLINED_FUNCTION_2_16();
    CFArrayApplyFunction(v4, v6, v5, a2);
    CFArrayRemoveAllValues(*(a1 + 560));
  }
}

void FigIcyManifoldNoteStreamEnd(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyManifoldCopyCurrentFormatDescriptionForTrack(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fim_PushMetaData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingLiveServerClockCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigContentKeySessionCreateWithCallbacks(const __CFAllocator *a1, const __CFDictionary *a2, uint64_t a3, NSObject *a4, uint64_t a5, CFTypeRef *a6)
{
  v11 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_7_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_7_6();
  fig_note_initialize_category_with_default_work_cf();
  if (!a6 || (*a6 = 0, MEMORY[0x19A8D3660](&FigContentKeySessionGetClassID_sRegisterFigContentKeySessionTypeOnce, RegisterFigContentKeySessionType), v7 = CMDerivedObjectCreate(), !v7))
  {
    OUTLINED_FUNCTION_1_15();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v10 = v7;
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v10;
}

uint64_t fcks_invalidate(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    v3 = *(DerivedStorage + 16);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }

    *DerivedStorage = 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fcks_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  fcks_freeAllCryptorEntries(a1);
  fcks_removeListenersForSecureStopGenerationOnDefaultManager(a1);
  if (a1 && DerivedStorage[21])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_17();
    FigNotificationCenterRemoveWeakListener();
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[6] = 0;
  }

  v8 = DerivedStorage[8];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[8] = 0;
  }

  v9 = DerivedStorage[15];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[15] = 0;
  }

  v10 = DerivedStorage[18];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[18] = 0;
  }

  v11 = DerivedStorage[19];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[19] = 0;
  }

  v12 = DerivedStorage[20];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[20] = 0;
  }

  v13 = DerivedStorage[21];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[21] = 0;
  }

  v14 = DerivedStorage[22];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[22] = 0;
  }

  FigSimpleMutexUnlock();

  return FigSimpleMutexDestroy();
}

uint64_t fcks_removeListenersForSecureStopGenerationOnDefaultManager(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = FigSecureStopManagerCopyDefaultRuntimeInstance(*MEMORY[0x1E695E480], &cf);
  if (v1)
  {
    goto LABEL_5;
  }

  if (!cf)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_0_17();
  v1 = FigNotificationCenterRemoveWeakListener();
LABEL_5:
  v2 = v1;
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void fcks_persistentKeyUpdatedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return;
  }

  OUTLINED_FUNCTION_5_9();
  theDict = 0;
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      return;
    }

    v10 = v9(v7, *MEMORY[0x1E69610A8], *MEMORY[0x1E695E480], &theDict);
    v11 = theDict;
    if (v10)
    {
      v7 = 0;
      if (theDict)
      {
LABEL_9:
        CFRelease(v11);
      }
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960F28]);
      if (Value)
      {
        v7 = CFRetain(Value);
      }

      else
      {
        v7 = 0;
      }

      v11 = theDict;
      if (theDict)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, theDict, v20);
    v10 = v17;
  }

  if (!v10)
  {
    v13 = CFDictionaryGetValue(v6, *MEMORY[0x1E6961080]);
    if (v13)
    {
      v14 = CFRetain(v13);
      if (v14)
      {
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v16)
        {
          v16(v5, v7, v15);
        }

        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, theDict, v20);
  }

  v15 = 0;
LABEL_17:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void fcks_keyResponseErrorOccurredCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (!a5)
  {
    return;
  }

  OUTLINED_FUNCTION_5_9();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8 && !v8(v7, *MEMORY[0x1E6961130], *MEMORY[0x1E695E480], &cf))
  {
    if (FigCFDictionaryGetInt64IfPresent())
    {
      Value = CFDictionaryGetValue(v6, *MEMORY[0x1E6961020]);
      if (Value)
      {
        v10 = CFRetain(Value);
        if (v10)
        {
          v11 = v10;
          v12 = cf;
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v13)
          {
            v13(v5, v12, 0, v11);
          }

          goto LABEL_11;
        }
      }
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v11 = 0;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void fcks_keyResponseSuccessfullyProcessedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (a5)
  {
    OUTLINED_FUNCTION_5_9();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7 && !v7(v6, *MEMORY[0x1E6961130], *MEMORY[0x1E695E480], &cf))
    {
      if (FigCFDictionaryGetInt64IfPresent())
      {
        v8 = cf;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v9)
        {
          v9(v5, v8, 0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, cf, v11);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fcks_externalProtectionStateChangedCallback(int a1, uint64_t a2, int a3, CFTypeRef cf, uint64_t a5)
{
  cfa = 0;
  if (a5)
  {
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == FigCPECryptorGetTypeID())
      {
        FigCFDictionaryGetInt32IfPresent();
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B88, 4294950004, "<<< FigContentKeySession >>>", 616, v5);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B88, 4294950006, "<<< FigContentKeySession >>>", 615, v5);
    }
  }
}

uint64_t fcks_ensureSecureStopManager(const void *a1)
{
  v2 = (CMBaseObjectGetDerivedStorage() + 168);
  if (*v2)
  {
    return 0;
  }

  v3 = CFGetAllocator(a1);
  result = FigSecureStopManagerCreate(v3, v2);
  if (!result)
  {
    if (!a1 || !*v2 || (CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_0_17(), result = FigNotificationCenterAddWeakListener(), !result))
    {

      return fcks_removeListenersForSecureStopGenerationOnDefaultManager(a1);
    }
  }

  return result;
}

void fcks_setClientAuditTokenForChildSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexUnlock();
  if (!FigCFEqual())
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      if (!v7(a2))
      {
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v8)
        {
          v8(a2, *MEMORY[0x1E6960F80], a3);
        }
      }
    }
  }

  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v9 = qword_1EAF16B88;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294950003, "<<< FigContentKeySession >>>", 394, v3);
  }
}

uint64_t fcsk_externalProtectionStatusForCryptor(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  cf[26] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v21 = 0;
  v20 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B88, 4294950006, "<<< FigContentKeySession >>>", 454, v4);
    goto LABEL_32;
  }

  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B88, 4294950006, "<<< FigContentKeySession >>>", 455, v4);
    goto LABEL_32;
  }

  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B88, 4294950006, "<<< FigContentKeySession >>>", 456, v4);
    goto LABEL_32;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8(a2, *MEMORY[0x1E6961120], *MEMORY[0x1E695E480], cf);
  if (v9)
  {
LABEL_32:
    v17 = v9;
    goto LABEL_22;
  }

  v10 = cf[0];
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
LABEL_21:
    v17 = 4294954514;
    goto LABEL_22;
  }

  v9 = v11(a2, *MEMORY[0x1E69610C0], v10);
  if (v9)
  {
    goto LABEL_32;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    goto LABEL_21;
  }

  v9 = v12(a2, @"DisplayList", a3);
  if (v9)
  {
    goto LABEL_32;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v13)
  {
    goto LABEL_21;
  }

  v9 = v13(a2, 0, &v21);
  if (v9)
  {
    goto LABEL_32;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (!v14)
  {
    goto LABEL_21;
  }

  v9 = v14(a2, &v20);
  if (v9)
  {
    goto LABEL_32;
  }

  if (v20)
  {
    if (v21 == 1 || v21 == 4)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    v16 = 1;
  }

  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = 0;
  *a4 = v16;
LABEL_22:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v17;
}

void fcks_releaseAndClearFigContentKeySessionCallbackContext(CFTypeRef **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*v2)
      {
        CFRelease(*v2);
        v2 = *a1;
      }

      if (v2[2])
      {
        CFRelease(v2[2]);
        v2 = *a1;
      }

      if (v2[3])
      {
        CFRelease(v2[3]);
        v2 = *a1;
      }

      if (v2[4])
      {
        CFRelease(v2[4]);
        v2 = *a1;
      }

      if (v2[5])
      {
        CFRelease(v2[5]);
        v2 = *a1;
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void fcks_dispatchKeyResponseSuccessfullyProcessedCallback(CFTypeRef *a1)
{
  v2 = a1;
  v1 = a1[8];
  if (v1)
  {
    v1(a1[5], *a1, a1[1]);
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

void fcks_dispatchPersistentKeyUpdatedCallback(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 72);
  if (v1)
  {
    v1(*(a1 + 40), *(a1 + 16), *(a1 + 32));
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

void fcks_dispatchSecureStopDidFinalizeRecordCallback(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 80);
  if (v1)
  {
    v1(*(a1 + 40));
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

void fcks_dispatchExternalProtectionStateChangedCallback(CFTypeRef *a1)
{
  v1 = a1;
  if (a1[10])
  {
    (a1[11])(a1[5], *a1);
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v1);
}

void fcks_setProperty_cold_3(const __CFArray *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_8:
    v14 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(a1, v10);
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v11)
      {
        v12 = v11;
        fcks_setClientAuditTokenForChildSession(a2, v11, a3);
        v14 = v13;
        CFRelease(v12);
        if (v14)
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_8;
      }
    }
  }

  *a4 = v14;

  CFRelease(a1);
}

uint64_t fcks_freeCryptorEntry_cold_1(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_84_0();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();
    result = FigNotificationCenterRemoveWeakListener();
    if (!result)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_84_0();
      result = FigNotificationCenterRemoveWeakListener();
      if (!result)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_84_0();

        return FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  return result;
}

uint64_t fcks_copyCryptor_cold_6(const __CFAllocator *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  *a4 = v7;
  if (!v7)
  {
    return 1;
  }

  CFAllocatorDeallocate(a1, a2);
  return 0;
}

uint64_t FigAssetWriterCreateWithURL(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5, void *a6)
{
  CFPreferenceBooleanWithDefault = 0;
  v18 = 0;
  cf = 0;
  FigKTraceInit();
  if (!a2 || !remakerFamily_CFURLSchemeIsFile(a2) || FigFileDoesFileExist() || !a6 || ((FigCFDictionaryGetBooleanIfPresent(), CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault(), v11 = CMByteStreamCreateForFileURL(), v11 != -12204) ? (v12 = v11 == 0) : (v12 = 1), v12 ? (v13 = v11) : (v13 = -12143), v13))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_22;
  }

  v14 = assetWriter_CreateWithByteStreamOrFormatWriterSegmentCallback(a1, cf, 0, a4, a5, &v18);
  if (v14)
  {
LABEL_22:
    v16 = v14;
    goto LABEL_16;
  }

  v15 = v18;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  v16 = 0;
  *a6 = v15;
  v18 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t assetWriter_CreateWithByteStreamOrFormatWriterSegmentCallback(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  cf = 0;
  v33 = 0;
  IsServerProcess = FigServer_IsServerProcess();
  if (IsServerProcess)
  {
    v14 = FigOSTransactionCreate();
    if (!v14)
    {
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955196, "<<<< FigAssetWriter >>>>", 504, v6);
LABEL_33:
      v28 = LoggingIdentifier;
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
  }

  FigAssetWriterGetClassID();
  LoggingIdentifier = CMDerivedObjectCreate();
  if (LoggingIdentifier)
  {
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LoggingIdentifier = remakerFamily_generateLoggingIdentifier(87, (DerivedStorage + 41));
  if (LoggingIdentifier)
  {
    goto LABEL_33;
  }

  v18 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 88) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 104) = *(v18 + 16);
  v19 = MEMORY[0x1E6960C88];
  *(DerivedStorage + 112) = *MEMORY[0x1E6960C88];
  *(DerivedStorage + 128) = *(v19 + 16);
  *(DerivedStorage + 456) = -1;
  *(DerivedStorage + 8) = FigReentrantMutexCreate();
  *(DerivedStorage + 64) = FigReentrantMutexCreate();
  if (IsServerProcess)
  {
    *(DerivedStorage + 448) = v14;
    v14 = 0;
  }

  remakerFamily_SetRemakerState(v33, 1, 0);
  *(DerivedStorage + 24) = FigSemaphoreCreate();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt64IfPresent();
  *(DerivedStorage + 56) = FigDispatchQueueCreateWithPriorityAndClientPID();
  FigCFDictionaryGetBooleanIfPresent();
  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"Remaker_TemporaryDirectoryURL");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 232) = Value;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 80) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294954885, "<<<< FigAssetWriter >>>>", 552, v31);
    goto LABEL_33;
  }

  if (a2)
  {
    *(DerivedStorage + 168) = CFRetain(a2);
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23 && (v23(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf), cf))
    {
      v24 = CFRetain(cf);
      v25 = cf;
      *(DerivedStorage + 160) = v24;
      if (v25)
      {
        v26 = CFURLCopyAbsoluteURL(v25);
        if (v26)
        {
          v27 = v26;
          *(DerivedStorage + 176) = FigFileIsFileOnExternalStorageDevice();
          CFRelease(v27);
        }
      }
    }

    else
    {
      *(DerivedStorage + 160) = 0;
    }
  }

  else
  {
    *(DerivedStorage + 168) = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 360) = -1;
  LoggingIdentifier = remakerFamily_createFormatWriter(v33, a1, 0, a3, a5, (DerivedStorage + 184));
  if (LoggingIdentifier)
  {
    goto LABEL_33;
  }

  *(DerivedStorage + 192) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CMNotificationCenterGetDefaultLocalCenter();
  v28 = FigNotificationCenterAddWeakListeners();
  if (!v28)
  {
    *a6 = v33;
    v33 = 0;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v14)
  {
    os_release(v14);
  }

  return v28;
}

uint64_t assetWriter_FormatWriterSegmentCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 312) && !*(DerivedStorage + 305) && *(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v11 = *(v6 + 184);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v12)
    {
      v9 = 4294954514;
      goto LABEL_7;
    }

    v8 = v12(v11, 0, &cf);
    if (v8)
    {
      goto LABEL_5;
    }

    v8 = (*(v6 + 312))(cf, *(v6 + 328));
    if (v8)
    {
      goto LABEL_5;
    }

    *(v6 + 305) = 1;
  }

  v7 = *(v6 + 320);
  if (v7)
  {
    v8 = v7(a2, a3, *(v6 + 328));
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t assetWriter_AddNativeTrack(const void *a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  if (*DerivedStorage != 1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_25;
  }

  v7 = DerivedStorage;
  v8 = remakerFamily_createChannel(a1, 0, a2, &v32);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = *(v7 + 23);
  v10 = v32;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v19 = 4294954514;
    goto LABEL_23;
  }

  if ((v8 = v11(v9, a2, 0, v10 + 300), v8) || (v8 = remakerFamily_setFormatWriterTrackProperties(a1, *(v32 + 300), 0, 0), v8) || (v8 = remakerFamily_setFormatWriterProperties(a1, 0), v8) || (v12 = *(v7 + 23), v13 = *(v32 + 300), v14 = CFGetAllocator(a1), v15 = *(v32 + 160), (v16 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0) && !v16(v12, v13, @"SourceSampleBufferQueue", v14, v15 + 32) && ((v17 = *(v32 + 160), !*(v7 + 32)) ? (v18 = 1) : (v18 = 8), (CMTimeMake(&v31, v18, 1), *(v17 + 40) = *&v31.value, v20 = v32, *(v17 + 56) = v31.epoch, v21 = *(v20 + 160), !*(v7 + 32)) ? (v22 = 2) : (v22 = 10), CMTimeMake(&v31, v22, 1), *(v21 + 64) = *&v31.value, v23 = v32, *(v21 + 80) = v31.epoch, v31 = *(*(v23 + 160) + 40), OUTLINED_FUNCTION_6_10(), v8 = CMBufferQueueInstallTrigger(v24, v25, v26, 2, &v31, v26 + 13), v8))
  {
LABEL_25:
    v19 = v8;
    goto LABEL_23;
  }

  v27 = v32;
  if (*(v32 + 32) == 1936684398)
  {
    v28 = *(v7 + 25);
    if (v28)
    {
      v29 = CFEqual(v28, @"AudioPrimingFormat_Manual");
      v27 = v32;
      if (!v29)
      {
        *(*(v32 + 160) + 192) = 1;
      }
    }
  }

  *a3 = *(v27 + 300);
  remakerFamily_commitChannel(a1, v27);
  v19 = 0;
  v32 = 0;
LABEL_23:
  remakerFamily_discardChannel(a1, v32);
  return v19;
}

uint64_t assetWriter_AddAudioTrackWithCompression(const void *a1, uint64_t a2, size_t a3, const void *a4, const void *a5, const __CFDictionary *a6, _DWORD *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v46 = 0;
  if (*DerivedStorage != 1 || !a2 || !a7)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_32;
  }

  v15 = DerivedStorage;
  v16 = remakerFamily_createChannel(a1, 0, 1936684398, &v46);
  if (v16)
  {
    goto LABEL_32;
  }

  v17 = *(v15 + 23);
  v18 = v46;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v24 = 4294954514;
    goto LABEL_30;
  }

  if ((v16 = v19(v17, 1936684398, 0, v18 + 300), v16) || (v16 = remakerFamily_setFormatWriterTrackProperties(a1, *(v46 + 300), *(a2 + 8), 0), v16) || (v16 = remakerFamily_setFormatWriterProperties(a1, *(a2 + 8)), v16) || (v20 = CFGetAllocator(a1), CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers(), v16 = CMBufferQueueCreate(v20, 0, CallbacksForUnsortedSampleBuffers, (*(v46 + 160) + 32)), v16) || ((v22 = *(v46 + 160), !*(v15 + 32)) ? (v23 = 1) : (v23 = 8), (CMTimeMake(&time, v23, 1), *(v22 + 40) = *&time.value, v25 = v46, *(v22 + 56) = time.epoch, v26 = *(v25 + 160), !*(v15 + 32)) ? (v27 = 2) : (v27 = 10), CMTimeMake(&time, v27, 1), *(v26 + 64) = *&time.value, v28 = v46, *(v26 + 80) = time.epoch, time = *(*(v28 + 160) + 40), OUTLINED_FUNCTION_6_10(), v16 = CMBufferQueueInstallTrigger(v29, v30, v31, 2, &time, v31 + 13), v16))
  {
LABEL_32:
    v24 = v16;
    goto LABEL_30;
  }

  v32 = v46;
  v33 = *(v46 + 160);
  v34 = *(a2 + 32);
  v35 = *(a2 + 16);
  *(v33 + 128) = *a2;
  *(v33 + 144) = v35;
  *(v33 + 160) = v34;
  *(*(v32 + 160) + 168) = a3;
  if (a3 && a4)
  {
    v36 = malloc_type_malloc(a3, 0x50811D91uLL);
    *(*(v46 + 160) + 176) = v36;
    if (!v36)
    {
LABEL_33:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_32;
    }

    memcpy(v36, a4, a3);
  }

  if (a5)
  {
    v37 = CFRetain(a5);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v46 + 160);
  *(v38 + 184) = v37;
  *(v38 + 120) = 1;
  if (!a6)
  {
    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(a6, @"AssetWriterAudioTrackProcessingOption_SourceAudioFormatDescriptionHint");
  if (!Value)
  {
    goto LABEL_29;
  }

  v40 = Value;
  v41 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v41)
  {
    goto LABEL_33;
  }

  v42 = v41;
  v24 = assetWriter_finishBuildingAudioTrackWithSourceFormatDescription(a1, *(v46 + 160), v40);
  CFRelease(v42);
  if (!v24)
  {
LABEL_29:
    v43 = v46;
    *a7 = *(v46 + 300);
    remakerFamily_commitChannel(a1, v43);
    v24 = 0;
    v46 = 0;
  }

LABEL_30:
  remakerFamily_discardChannel(a1, v46);
  return v24;
}

double assetWriter_BeginSession(const void *a1, CMTime *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  HIBYTE(v98) = 0;
  if (*CMBaseObjectGetDerivedStorage() >= 4u)
  {
    emitter = fig_log_get_emitter();
    v62 = v2;
    v63 = emitter;
    v64 = 4294955156;
    v65 = 2022;
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_29();
  if (!v6)
  {
    v61 = fig_log_get_emitter();
    v62 = v2;
    v63 = v61;
    v64 = 4294954877;
    v65 = 2023;
LABEL_72:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v64, "<<<< FigAssetWriter >>>>", v65, v62);
  }

  v7 = v5;
  v69 = v2;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  if (*(v7 + 32))
  {
    v71 = a2;
    v73 = v7;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = MEMORY[0x1E6960C70];
    v117 = *MEMORY[0x1E6960C70];
    v118 = *(MEMORY[0x1E6960C70] + 8);
    v10 = *(MEMORY[0x1E6960C70] + 16);
    v115 = v117;
    v116 = v118;
    v86 = *MEMORY[0x1E6960C70];
    *&v101.value = *MEMORY[0x1E6960C70];
    v101.epoch = v10;
    Count = CFArrayGetCount(*(DerivedStorage + 80));
    if (Count >= 2)
    {
      v92 = 0;
      v11 = 0;
      v12 = *(v9 + 12);
      v13 = v10;
      v14 = v10;
      v15 = v12;
      do
      {
        assetWriter_GetInputQueueLengthBeforeFormatWriterForTrackIndex(a1, v11, &time);
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        if (time.flags)
        {
          epoch = time.epoch;
          time.value = value;
          time.timescale = timescale;
          time2.value = v117;
          time2.timescale = v118;
          time2.flags = v12;
          time2.epoch = v13;
          if (CMTimeCompare(&time, &time2) < 0)
          {
            v115 = v117;
            v116 = v118;
            v117 = value;
            v92 = v11;
            v118 = timescale;
            v15 = v12;
            v14 = v13;
            v12 = flags;
            v13 = epoch;
          }

          else
          {
            time2.value = v115;
            time2.timescale = v116;
            time2.flags = v15;
            time2.epoch = v14;
            lhs.value = value;
            lhs.timescale = timescale;
            lhs.flags = flags;
            lhs.epoch = epoch;
            CMTimeMinimum(&time, &time2, &lhs);
            v115 = time.value;
            v15 = time.flags;
            v116 = time.timescale;
            v14 = time.epoch;
          }
        }

        ++v11;
      }

      while (Count != v11);
      if (v12)
      {
        *&time.value = v86;
        time.epoch = v10;
        CMBaseObjectGetDerivedStorage();
        time2.value = 0;
        v18 = CFGetAllocator(a1);
        FigFormatWriterGetFigBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21)
        {
          v22 = v21(v20, @"InterleavingPeriod", v18, &time2);
          v23 = time2.value;
          if (!v22)
          {
            CMTimeMakeFromDictionary(&time, time2.value);
            v23 = time2.value;
          }

          if (v23)
          {
            CFRelease(v23);
          }
        }

        v103 = time;
        CMTimeMake(&time2, 1, 1);
        lhs.value = v117;
        lhs.timescale = v118;
        lhs.flags = v12;
        lhs.epoch = v13;
        CMTimeSubtract(&time, &lhs, &time2);
        v114 = time.timescale;
        v113 = time.value;
        OUTLINED_FUNCTION_8_5(time.timescale, v66, v2, v71, v73, v75, v77, v80, v83, v86, *(&v86 + 1), v90, v92, Count, v98, *&v99.value, v99.epoch, v100, v101.value, *&v101.timescale, v101.epoch, v102, *&v103.value, v103.epoch, v104, *&lhs.value, lhs.epoch, v106, time2.value);
        v113 = time.value;
        v24 = time.flags;
        v114 = time.timescale;
        v25 = time.epoch;
        CMTimeMake(&time2, 1, 1);
        lhs.value = v115;
        lhs.timescale = v116;
        lhs.flags = v15;
        lhs.epoch = v14;
        CMTimeSubtract(&time, &lhs, &time2);
        v112 = time.timescale;
        v111 = time.value;
        OUTLINED_FUNCTION_8_5(time.timescale, v67, v70, v72, v74, v76, v78, v81, v84, v87, v89, v91, v93, v96, v98, *&v99.value, v99.epoch, v100, v101.value, *&v101.timescale, v101.epoch, v102, *&v103.value, v103.epoch, v104, *&lhs.value, lhs.epoch, v106, time2.value);
        v111 = time.value;
        v26 = time.flags;
        v112 = time.timescale;
        v27 = time.epoch;
        CMTimeMake(&time, 1, 1);
        time2 = v103;
        CMTimeAdd(&v101, &time2, &time);
        v28 = 0;
        v79 = v27;
        v85 = v25;
        v82 = v26;
        while (1)
        {
          v29 = v94 == v28 ? &v111 : &v113;
          v30 = v94 == v28 ? v26 : v24;
          v31 = v94 == v28 ? v27 : v25;
          v109 = *v29;
          v110 = *(v29 + 2);
          if (v30)
          {
            break;
          }

LABEL_46:
          if (v97 == ++v28)
          {
            goto LABEL_47;
          }
        }

        *&time.value = v88;
        v32 = v10;
        time.epoch = v10;
        v33 = CMBaseObjectGetDerivedStorage();
        time2.value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(*(v33 + 80), v28);
        v35 = *(v33 + 184);
        v36 = ValueAtIndex[75];
        v37 = CFGetAllocator(a1);
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v38)
        {
          v39 = v38(v35, v36, @"InterleavingAdvance", v37, &time2);
          v40 = time2.value;
          if (!v39)
          {
            CMTimeMakeFromDictionary(&time, time2.value);
            v40 = time2.value;
          }

          if (v40)
          {
            CFRelease(v40);
          }
        }

        time2 = time;
        time.value = v109;
        time.timescale = v110;
        time.flags = v30;
        time.epoch = v31;
        if (CMTimeCompare(&time2, &time) < 1)
        {
LABEL_43:
          v99 = v101;
          v50 = CMBaseObjectGetDerivedStorage();
          *&time.value = v88;
          v10 = v32;
          time.epoch = v32;
          assetWriter_GetInputQueueLengthBeforeFormatWriterForTrackIndex(a1, v28, &time);
          time2 = time;
          lhs = v99;
          if (CMTimeCompare(&time2, &lhs) < 0)
          {
            *(*(CFArrayGetValueAtIndex(*(v50 + 80), v28) + 20) + 64) = v99;
          }

          v25 = v85;
          v26 = v82;
          v27 = v79;
          goto LABEL_46;
        }

        v41 = CMBaseObjectGetDerivedStorage();
        v42 = CFGetAllocator(a1);
        time.value = v109;
        time.timescale = v110;
        time.flags = v30;
        time.epoch = v31;
        v43 = CMTimeCopyAsDictionary(&time, v42);
        v44 = CFArrayGetValueAtIndex(*(v41 + 80), v28);
        v45 = *(v41 + 184);
        v46 = v44[75];
        v47 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v47)
        {
          v49 = v47(v45, v46, @"InterleavingAdvance", v43);
          if (!v43)
          {
LABEL_42:
            if (v49)
            {
              return result;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v49 = -12782;
          if (!v43)
          {
            goto LABEL_42;
          }
        }

        CFRelease(v43);
        goto LABEL_42;
      }
    }

LABEL_47:
    a2 = v71;
    v7 = v73;
  }

  if (remakerfamily_updateClientPID(a1))
  {
    return result;
  }

  remakerfamily_updateThrottleForBackground(a1);
  if (v51)
  {
    return result;
  }

  if (remakerfamily_updateJoinWritingThreadToNewWorkgroup(a1))
  {
    return result;
  }

  v52 = *(v7 + 184);
  time2 = *a2;
  v53 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v53)
  {
    return result;
  }

  time = time2;
  if (v53(v52, &time))
  {
    return result;
  }

  remakerFamily_transferMetadata(a1);
  if (*v7 == 3)
  {
LABEL_54:
    *(v7 + 472) = mach_absolute_time();
    remakerFamily_SetRemakerState(a1, 3, 0);
    return result;
  }

  if (!remakerFamily_startAllMultiPassTracks(a1, &v98 + 7) && (HIBYTE(v98) || !remakerFamily_startAllSinglePassTracks(a1)))
  {
    v54 = *(v7 + 336);
    if (!v54)
    {
      goto LABEL_65;
    }

    v55 = 224;
    if (!*(v7 + 240))
    {
      v55 = 160;
    }

    v56 = *(v7 + v55);
    v57 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v57)
    {
      if (!v57(v54, v56))
      {
LABEL_65:
        v58 = CMBaseObjectGetDerivedStorage();
        if (remakerFamily_hasTrackForMediaType(a1, 1986618469) && !*(v58 + 352))
        {
          v59 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.coremedia.figassetwriter.writing-video-%d", *(v58 + 36));
          *(v58 + 352) = v59;
          if (v59)
          {
            if (!remakerFamily_registerDarwinNotification(v59, (v58 + 360)) && !remakerFamily_postDarwinNotificationWithState(*(v58 + 352), *(v58 + 360), 1uLL))
            {
              *(v58 + 368) = 1;
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_2();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, v69, v71);
          }
        }

        goto LABEL_54;
      }
    }
  }

  return result;
}

uint64_t assetWriter_AddPixelBuffer(const void *a1, int a2, __CVBuffer *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v37 = 0;
  v36 = 0;
  v35 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  if (*DerivedStorage >= 7u)
  {
    goto LABEL_27;
  }

  if (DerivedStorage[5])
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  if (*DerivedStorage != 3 || !a3 || (OUTLINED_FUNCTION_29(), !v14) || (ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2)) == 0 || (v10 = ChannelByWriterTrackID, !*(ChannelByWriterTrackID + 16)) || (v11 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
LABEL_27:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_28:
    v27 = v28;
    v12 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v13 = *(v11 + 32);
  v14 = v13 == 1635088502 || v13 == 1986618469;
  if (!v14)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
LABEL_29:
    v27 = v29;
    goto LABEL_30;
  }

  v16 = (v10 + 112);
  v15 = *(v10 + 112);
  if (v15)
  {
    if (CMVideoFormatDescriptionMatchesImageBuffer(v15, a3))
    {
      goto LABEL_20;
    }

    if (*v16)
    {
      CFRelease(*v16);
      *v16 = 0;
    }
  }

  v17 = CFGetAllocator(a1);
  v29 = CMVideoFormatDescriptionCreateForImageBuffer(v17, a3, (v10 + 112));
  if (v29)
  {
    goto LABEL_29;
  }

LABEL_20:
  v33 = *MEMORY[0x1E6960C70];
  *&v34[0] = *(MEMORY[0x1E6960C70] + 16);
  *(v34 + 8) = *a4;
  *(&v34[1] + 1) = *(a4 + 16);
  v35 = v33;
  v36 = *&v34[0];
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_197();
  v29 = CMSampleBufferCreateForImageBuffer(v18, v19, v20, v21, v22, v23, v24, v25);
  if (v29)
  {
    goto LABEL_29;
  }

  if (!*(v10 + 120))
  {
    goto LABEL_26;
  }

  v32 = 0;
  v29 = assetWriter_copyPixelBufferAttributesForHintingEncoder(a3, &v32);
  if (v29)
  {
    goto LABEL_29;
  }

  v26 = v32;
  v27 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, v32);
  if (v26)
  {
    CFRelease(v26);
  }

  if (!v27)
  {
LABEL_26:
    v29 = CMBufferQueueEnqueue(*(v10 + 32), v37);
    goto LABEL_29;
  }

LABEL_30:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v27;
}

double assetWriter_EndSession(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  v5 = *DerivedStorage;
  if (*DerivedStorage >= 7u)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954511, "<<<< FigAssetWriter >>>>", 2518, v17);
  }

  else if (*(DerivedStorage + 20))
  {
    emitter = fig_log_get_emitter();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, *(DerivedStorage + 20), "<<<< FigAssetWriter >>>>", 2519, v2);
  }

  else if (v5 >= 5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 4294955156, "<<<< FigAssetWriter >>>>", 2520, v20);
  }

  else if (v5 <= 2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294955154, "<<<< FigAssetWriter >>>>", 2521, v22);
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (v6)
    {
      Count = CFArrayGetCount(*(DerivedStorage + 80));
      if (Count < 1)
      {
LABEL_16:
        v14 = *(DerivedStorage + 184);
        *&v26.value = *&a2->value;
        v26.epoch = a2->epoch;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v15)
        {
          time = v26;
          v15(v14, &time);
        }
      }

      else
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
          CMBufferQueueMarkEndOfData(*(ValueAtIndex[20] + 32));
        }

        v11 = 0;
        while (1)
        {
          v12 = *(CFArrayGetValueAtIndex(*(DerivedStorage + 80), v11) + 36);
          if (v12)
          {
            FigMediaProcessorFlush(v12);
            if (v13)
            {
              break;
            }
          }

          if (v8 == ++v11)
          {
            goto LABEL_16;
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954877, "<<<< FigAssetWriter >>>>", 2522, v24);
    }
  }

  return result;
}

uint64_t assetWriter_AddTaggedPixelBufferGroup(const void *a1, int a2, OpaqueCMTaggedBufferGroup *a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  buf = 0;
  if (*DerivedStorage >= 7u)
  {
    goto LABEL_26;
  }

  if (DerivedStorage[5])
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_27;
  }

  if (*DerivedStorage != 3 || !a3 || (OUTLINED_FUNCTION_29(), !v14) || (ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2)) == 0 || (v10 = ChannelByWriterTrackID, !*(ChannelByWriterTrackID + 16)) || (v11 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
LABEL_26:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_27:
    v18 = v19;
    v12 = 0;
    goto LABEL_29;
  }

  v12 = v11;
  v13 = *(v11 + 32);
  v14 = v13 == 1986618469 || v13 == 1635088502;
  if (!v14)
  {
LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_28:
    v18 = v20;
    goto LABEL_29;
  }

  if (CMTaggedBufferGroupGetCount(a3) >= 1)
  {
    v15 = 0;
    while (CMTaggedBufferGroupGetCVPixelBufferAtIndex(a3, v15))
    {
      if (++v15 >= CMTaggedBufferGroupGetCount(a3))
      {
        goto LABEL_19;
      }
    }

    goto LABEL_14;
  }

LABEL_19:
  CFGetAllocator(a1);
  v22 = *a4;
  v23 = *(a4 + 2);
  v20 = FigSampleBufferCreateForTaggedBufferGroup();
  if (v20)
  {
    goto LABEL_28;
  }

  if (!*(v10 + 120))
  {
    goto LABEL_25;
  }

  *&v22 = 0;
  CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
  v20 = assetWriter_copyPixelBufferAttributesForHintingEncoder(CVPixelBufferAtIndex, &v22);
  if (v20)
  {
    goto LABEL_28;
  }

  v17 = v22;
  v18 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, v22);
  if (v17)
  {
    CFRelease(v17);
  }

  if (!v18)
  {
LABEL_25:
    v20 = CMBufferQueueEnqueue(*(v10 + 32), buf);
    goto LABEL_28;
  }

LABEL_29:
  if (buf)
  {
    CFRelease(buf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v18;
}

double assetWriter_finishAsyncDispatch(const void *a1)
{
  if (*CMBaseObjectGetDerivedStorage() != 4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage > 6u)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    if (v9)
    {
      return result;
    }

    goto LABEL_10;
  }

  v3 = DerivedStorage;
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
LABEL_9:
    *(v3 + 384) = 1;
LABEL_10:

    remakerFamily_performLastStepIfComplete(a1);
    return result;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 80), v6);
    if (remakerFamily_MarkEndOfDataForTrack(ValueAtIndex, 1))
    {
      return result;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }
}

void FigAssetWriterCreateForWritingFragmentedData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double assetWriter_SetProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetWriter_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetProperty_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddAudioTrackWithPresetCompression_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddAudioTrackWithPresetCompression_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetTrackProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_SetTrackProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_CopyTrackProperty_cold_1(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = *(a1 + 288);
  if (v5 && ((v6 = *(a1 + 32), v6 != 1635088502) ? (v7 = v6 == 1986618469) : (v7 = 1), v7))
  {
    PixelBufferPool = FigMediaProcessorGetPixelBufferPool(v5);
    if (PixelBufferPool)
    {
      v10 = CFRetain(PixelBufferPool);
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    *a2 = v10;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  }

  *a3 = v11;
}

void assetWriter_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_CopyTrackProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_CopyTrackProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void assetWriter_AddSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddSampleBuffer_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double assetWriter_IsTrackQueueAboveHighWaterLevel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double assetWriter_IsTrackQueueAboveHighWaterLevel_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetWriter_MarkEndOfDataForTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_MarkEndOfDataForTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_MarkEndOfDataForTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_MarkEndOfDataForTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_Finish_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void assetWriter_Finish_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_Finish_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_FinishAsync_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void assetWriter_FinishAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_FinishAsync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_BeginPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_BeginPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_BeginPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_BeginPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_BeginPass_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_BeginPass_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_EndPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_EndPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_EndPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_EndPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddCaptionTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddCaptionTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_Flush_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void assetWriter_Flush_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_Flush_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_Flush_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double assetWriterTrack_reachedLowWater_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double assetWriterTrack_reachedLowWater_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

double assetWriter_IsTrackNativeTrack_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

CMTime *fmi_CalculateMPEG2WrapForTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  *a3 = **&MEMORY[0x1E6960C70];
  if ((result->flags & 0x1D) == 1 && (*(a2 + 12) & 0x1D) == 1)
  {
    OUTLINED_FUNCTION_0_18(result->epoch, result->value, *&result->timescale, v9, v11);
    v5 = v12;
    OUTLINED_FUNCTION_0_18(*(a2 + 16), *a2, *(a2 + 8), v10, v12);
    v6 = v5 & 0xFFFFFFFE00000000 | v13 & 0x1FFFFFFFFLL;
    v7 = v5 - v6;
    if ((v5 - v6) < 0 && ((v6 - v5) & 0x100000000) != 0)
    {
      v6 -= 0x200000000;
    }

    else if ((v7 & 0x100000000) != 0 && v7 >= 1)
    {
      v6 += 0x200000000;
    }

    return CMTimeMake(a3, v6 - v13, 90000);
  }

  return result;
}

__n128 FigManifoldAdjustTimestampAndUpdateRefTime(uint64_t a1, CMTime *a2, __n128 *a3)
{
  memset(&v10, 0, sizeof(v10));
  if (a2 && (*(a1 + 12) & 0x1D) == 1 && (a2->flags & 0x1D) == 1)
  {
    lhs = *a2;
    OUTLINED_FUNCTION_1_16();
    CMTimeSubtract(&v10, &lhs, &rhs);
    rhs = v10;
    CMTimeAbsoluteValue(&lhs, &rhs);
    *&rhs.value = FigManifoldAdjustTimestampAndUpdateRefTime_kAlmostHalfWrap;
    rhs.epoch = 0;
    if (CMTimeCompare(&lhs, &rhs) >= 1)
    {
      memset(&lhs, 0, sizeof(lhs));
      OUTLINED_FUNCTION_1_16();
      OUTLINED_FUNCTION_73();
      fmi_CalculateMPEG2WrapForTime(&rhs, &v7, &lhs);
      OUTLINED_FUNCTION_73();
      v6 = lhs;
      CMTimeAdd(&rhs, &v7, &v6);
      result.n128_u64[0] = rhs.value;
      *a2 = rhs;
    }

    if (a3)
    {
      result = *&a2->value;
      a3[1].n128_u64[0] = a2->epoch;
      *a3 = result;
    }
  }

  return result;
}

uint64_t FigAIOClientCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  MEMORY[0x19A8D3660](&unk_1ED4C9F40, figAIOInitOnce);
  if (_MergedGlobals_0)
  {
    return 0;
  }

  v7 = FigSimpleMutexLock();
  if (v7)
  {
    return v7;
  }

  v8 = qword_1EAF189A0;
  if (qword_1EAF189A0)
  {
    while (*v8 != a2 || *(v8 + 8) != a3)
    {
      v8 = *(v8 + 16);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v11 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_7:
    v9 = malloc_type_malloc(0x20uLL, 0x10E004028FE4D45uLL);
    if (v9)
    {
      v10 = v9;
      *v9 = a2;
      if (a3)
      {
        CFRetain(a3);
      }

      v11 = 0;
      v10[2] = 0;
      v10[1] = a3;
      *qword_1EAF189A8 = v10;
      qword_1EAF189A8 = (v10 + 2);
      *a4 = v10;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
      v11 = v13;
    }
  }

  FigSimpleMutexUnlock();
  return v11;
}

void figAIOInitOnce()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631E8], *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631F0], @"com.apple.coremedia.asyncio");
  _MergedGlobals_5 = FigReentrantMutexCreate();
  if (_MergedGlobals_5 && (qword_1EAF189A0 = 0, qword_1EAF189A8 = &qword_1EAF189A0, (qword_1EAF18990 = FigReentrantMutexCreate()) != 0))
  {
    qword_1EAF18980 = 0;
    qword_1EAF18988 = 0;
    qword_1EAF18998 = FigSemaphoreCreate();
    v1 = FigThreadCreate();
  }

  else
  {
    v1 = -1;
  }

  _MergedGlobals_0 = v1;
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t FigAIOClientRelease(void *a1)
{
  v2 = FigSimpleMutexLock();
  if (!v2)
  {
    v3 = &qword_1EAF189A0;
    v4 = &qword_1EAF189A0;
    do
    {
      v5 = *v4;
      v4 = (*v4 + 16);
      if (v5)
      {
        v6 = v5 == a1;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
    if (!v5)
    {
      goto LABEL_16;
    }

    FinalizeClientRequestsOnList(a1, &qword_1EAF18980, 1);
    FinalizeClientRequestsOnList(a1, &qword_1EAF18988, 0);
    v7 = qword_1EAF189A0;
    if (qword_1EAF189A0 == v5)
    {
      qword_1EAF189A0 = *(qword_1EAF189A0 + 16);
      if (qword_1EAF189A0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 16);
      }

      while (v7 != v5);
      v9 = *(v7 + 16);
      *(v8 + 16) = v9;
      v3 = (v8 + 16);
      if (v9)
      {
LABEL_13:
        v10 = v5[1];
        if (v10)
        {
          CFRelease(v10);
          v5[1] = 0;
        }

        free(v5);
LABEL_16:
        FigSimpleMutexUnlock();
        return v2;
      }
    }

    qword_1EAF189A8 = v3;
    goto LABEL_13;
  }

  return v2;
}

uint64_t FigAIOIssueRead()
{
  v2 = OUTLINED_FUNCTION_0_19();
  if (!v2)
  {
    return 4294949775;
  }

  v3 = v2;
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  v5 = OUTLINED_FUNCTION_1_17(DarwinFileDesc);
  if (aio_read(v5))
  {
    v6 = *__error();
    free(v3);
  }

  else
  {
    v3[10] = v1;
    AddPendingRequest(v3);
    v6 = 0;
    *v0 = v3;
  }

  return v6;
}

uint64_t FigAIOIssueWrite()
{
  v2 = OUTLINED_FUNCTION_0_19();
  if (!v2)
  {
    return 4294949775;
  }

  v3 = v2;
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  v5 = OUTLINED_FUNCTION_1_17(DarwinFileDesc);
  if (aio_write(v5))
  {
    v6 = *__error();
    free(v3);
  }

  else
  {
    v3[10] = v1;
    AddPendingRequest(v3);
    v6 = 0;
    *v0 = v3;
  }

  return v6;
}

uint64_t figTTMLFeaturesConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, cf, v14);
    goto LABEL_19;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v14, &cf);
    if (v8)
    {
      goto LABEL_19;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLFeatureCreate(v9, a1, a2, &value);
      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 144), value);
        goto LABEL_9;
      }

LABEL_19:
      v10 = v8;
      goto LABEL_11;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_9:
  v10 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

uint64_t FigAssetImageGeneratorCreateRemoteFromAssetWithOptions(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v14 = 0;
  xdict = 0;
  value = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAIG_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E74791E0;
  block[4] = &v17;
  if (qword_1ED4CA480 != -1)
  {
    dispatch_once(&qword_1ED4CA480, block);
  }

  started = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  if (started)
  {
    goto LABEL_13;
  }

  ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
  if (ObjectID)
  {
    goto LABEL_19;
  }

  if (!a4)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v14, xdict);
LABEL_19:
    started = ObjectID;
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  block[0] = 0;
  FigAssetImageGeneratorGetClassID();
  v8 = CMDerivedObjectCreate();
  v9 = block[0];
  if (v8)
  {
    started = v8;
    if (block[0])
    {
      CFRelease(block[0]);
    }

    goto LABEL_13;
  }

  v10 = FigXPCCreateBasicMessage();
  if (!v10)
  {
    xpc_dictionary_set_uint64(xdict, "Asset", value);
    v10 = FigXPCMessageSetCFDictionary();
    if (!v10)
    {
      v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v10)
      {
        uint64 = xpc_dictionary_get_uint64(v14, *MEMORY[0x1E69615A0]);
        *CMBaseObjectGetDerivedStorage() = uint64;
        v10 = FigXPCRemoteClientAssociateObject();
        if (!v10)
        {
          started = FigStartMonitoringMediaServicesProcessDeath();
          if (started)
          {
            goto LABEL_14;
          }

          *a4 = v9;
          goto LABEL_13;
        }
      }
    }
  }

  started = v10;
LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  if (v9)
  {
    CFRelease(v9);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return started;
}

uint64_t remoteXPCAIG_CopyCGImageFromMessage(void *a1, CGImageRef *a2)
{
  v11 = 0;
  length = 0;
  cf = 0;
  if (xpc_dictionary_get_data(a1, "ImageParams", &length))
  {
    if (length)
    {
      v3 = MEMORY[0x19A8D2B00]();
      if (v3)
      {
        goto LABEL_9;
      }
    }
  }

  FigXPCMessageCreateBlockBufferData();
  value = xpc_dictionary_get_value(a1, "IOSurface");
  if (!value)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, 0);
LABEL_9:
    v7 = v3;
    v5 = 0;
    goto LABEL_10;
  }

  v5 = IOSurfaceLookupFromXPCObject(value);
  if (v5)
  {
    FigCFDictionaryGetNumberValue();
    CGImageFromIOSurfaceAndAttributes = FigCreateCGImageFromIOSurfaceAndAttributes();
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, 0);
  }

  v7 = CGImageFromIOSurfaceAndAttributes;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t remoteXPCAIG_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (v2 = DerivedStorage, FigStopMonitoringMediaServicesProcessDeath(), *(v2 + 8) = 1, FigXPCRemoteClientDisassociateObject(), *(v2 + 9)))
  {
    v3 = 0;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage();
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCAIG_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294954863;
  if (a2)
  {
    if (a3)
    {
      return remoteXPCAIG_GetObjectID(a1, &v7);
    }
  }

  return result;
}

uint64_t remoteXPCAIG_CopyCGImageAtTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, CGImageRef *a5, uint64_t a6)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  ObjectID = remoteXPCAIG_GetObjectID(a1, &v12);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (FigXPCMessageSetCMTime(), a3) && (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v10 = ObjectID;
  }

  else
  {
    v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v10)
    {
      v10 = remoteXPCAIG_CopyCGImageFromMessage(v13, a5);
      if (a6)
      {
        if (!v10)
        {
          FigXPCMessageGetCMTime();
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

uint64_t remoteXPCAIG_RequestCGImageAtTimeAsync(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  ObjectID = remoteXPCAIG_GetObjectID(a1, v7);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      FigXPCMessageSetCMTime();
      if (!a3 || (ObjectID = FigXPCMessageSetCFDictionary(), !ObjectID))
      {
        ObjectID = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  v5 = ObjectID;
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteXPCAIG_CancelAllCGImageAsyncRequests(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  ObjectID = remoteXPCAIG_GetObjectID(a1, v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

void remoteXPCAIG_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAIG_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigReportingAgentStatsSetIntValue_0(uint64_t result)
{
  if (result)
  {
    v1 = OUTLINED_FUNCTION_34_3(result);
    v2 = *(v1 + 16);
    result = v1 + 16;
    if (*(v2 + 56))
    {
      v3 = OUTLINED_FUNCTION_184();

      return v4(v3);
    }
  }

  return result;
}

uint64_t FigReportingAgentStatsAddToCountValue_0(uint64_t result)
{
  if (result)
  {
    v1 = OUTLINED_FUNCTION_34_3(result);
    v2 = *(v1 + 16);
    result = v1 + 16;
    if (*(v2 + 32))
    {
      v3 = OUTLINED_FUNCTION_184();

      return v4(v3);
    }
  }

  return result;
}

uint64_t crabsReportingIssueIRATEventIfNeeded(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (a2 == 800)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = *(result + 928);
    if (!v5)
    {
      v6 = *(result + 920);
      if (v6)
      {
        VTable = CMBaseObjectGetVTable();
        v8 = *(VTable + 16);
        result = VTable + 16;
        v9 = *(v8 + 56);
        if (v9)
        {
          result = v9(v6, 0x1F0B64598, 0x1F0B66118, 300, 0);
        }
      }
    }

    if (v4 != v5)
    {
      result = crabsReportingIssueEvent(v3, a2);
      *(v3 + 928) = v4;
    }
  }

  return result;
}

uint64_t crabsCreateReadStatsDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!a3)
  {
    return 4294954516;
  }

  FigByteFlumeGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"FBF_URL", *MEMORY[0x1E695E480], &cf);
  }

  StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
  OUTLINED_FUNCTION_184();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, cf, v14);
    v9 = v11;
    if (!StatsDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigRetainProxyUnlockMutex();
    v9 = 4294954511;
    if (!StatsDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigRetainProxyUnlockMutex();
  v9 = 0;
  *a3 = MutableCopy;
  MutableCopy = 0;
  if (StatsDictionary)
  {
LABEL_9:
    CFRelease(StatsDictionary);
  }

LABEL_10:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t crabsAIOCallback(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 104))
    {
      v4 = DerivedStorage;
      crabsTaskHints(DerivedStorage, 0);
      OUTLINED_FUNCTION_13_3();
      if (!v5)
      {
        crabsRebalanceWorkingSet(v4);
      }
    }
  }

  return crabsRetainProxyUnlockWithActions(a2);
}

void crabsRebalanceWorkingSet(uint64_t a1)
{
  IsBusy = crabsDiskBackingIsBusy(a1, 0);
  flushPendingReleaseSet(a1);
  v3 = 0;
  if (*(a1 + 504))
  {
    v3 = crabsCompleteLazySync(a1, 0);
  }

  if (*(a1 + 352) < *(a1 + 344) / 2)
  {
    v4 = IsBusy;
    do
    {
      v5 = **(*(a1 + 320) + 8);
      if (!v5)
      {
        return;
      }

      v6 = *(v5 + 8);
      if ((v6 & 8) == 0)
      {
LABEL_7:
        v7 = OUTLINED_FUNCTION_198_0();
        removeFromWorkingSet(v7, v8);
        v10 = OUTLINED_FUNCTION_198_0();
        addToWorkingSet(v10, v11, v12, 1);
        continue;
      }

      if ((v6 & 0x200) != 0)
      {
        if ((v6 >> 8))
        {
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_400_1();
        if (v9)
        {
          goto LABEL_14;
        }
      }

      v13 = OUTLINED_FUNCTION_198_0();
      if (!crabsAllocBacking(v13, v14))
      {
        goto LABEL_7;
      }

      v15 = OUTLINED_FUNCTION_198_0();
      crabsAddBlockToBackedList(v15, v16);
LABEL_14:
      if ((*(a1 + 504) & 1) == 0)
      {
        v17 = *(v5 + 8);
        if ((v17 & 0x200) != 0)
        {
          if (((v17 >> 8) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          OUTLINED_FUNCTION_400_1();
          if (!v18)
          {
LABEL_26:
            if (v3)
            {
              return;
            }

            continue;
          }
        }

        v20 = OUTLINED_FUNCTION_198_0();
        crabsSyncBlock(v20, v21);
        v3 = v22;
        goto LABEL_26;
      }

      if (*(a1 + 728) || !*(a1 + 720) || *(a1 + 135) | v4)
      {
        return;
      }

      v19 = FigAIOIssueWrite();
      v3 = v19;
      if (v19)
      {
        if (v19 == 35)
        {
          return;
        }
      }

      else
      {
        *(v5 + 8) &= ~8u;
        v23 = OUTLINED_FUNCTION_198_0();
        crabsRetainWorking(v23, v24);
        *(a1 + 728) = v5;
      }
    }

    while (*(a1 + 352) < *(a1 + 344) / 2);
  }
}

double FigCRABSWrite(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a4)
  {
    goto LABEL_65;
  }

  v10 = DerivedStorage;
  if (crabsEnsureInitialized(a1))
  {
    return result;
  }

  v12 = *(v10 + 96);
  if (v12 == 0x4000)
  {
    v13 = a3 >> 14;
  }

  else
  {
    v13 = v12 == 0x10000 ? a3 >> 16 : a3 / v12;
  }

  if (v13 >= *(v10 + 88) || !*(v10 + 104))
  {
    goto LABEL_65;
  }

  v14 = v13 * v12;
  if (a3 > v13 * v12)
  {
    if (a3 - v13 * v12 >= 0)
    {
      if (readOrRef(a1, a3 - v13 * v12, v13 * v12, 0, &cf, 0, -1))
      {
        return result;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_15;
    }

LABEL_65:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_15:
  if (FigRetainProxyLockMutex())
  {
    return result;
  }

  if (FigRetainProxyIsInvalidated())
  {
    v15 = 0;
    goto LABEL_56;
  }

  FigSimpleMutexLock();
  if (!a2)
  {
    v15 = 0;
    goto LABEL_56;
  }

  v40 = a5;
  v15 = 0;
  v16 = 0;
  v41 = a4;
  while (v13 < *(v10 + 88))
  {
    v17 = *(*(v10 + 80) + 8 * v13);
    if (!v17)
    {
      if (crabsInitBlock(v10, v13))
      {
        break;
      }

      v17 = *(*(v10 + 80) + 8 * v13);
      if (!v17)
      {
        break;
      }
    }

    v18 = *(v17 + 80);
    if (!v18)
    {
      v19 = OUTLINED_FUNCTION_266();
      if (!crabsReadyBlockForLoad(v19, v20, 1))
      {
        break;
      }

      v18 = *(v17 + 80);
    }

    v21 = a3 - v14;
    if (a2 - v15 >= *(v10 + 96) - (a3 - v14))
    {
      v22 = *(v10 + 96) - (a3 - v14);
    }

    else
    {
      v22 = a2 - v15;
    }

    memcpy((*(v18 + 16) + v21), (a4 + v16), v22);
    v23 = *(v17 + 4);
    v24 = v22 + v21;
    if (v24 > v23)
    {
      v42 = a3;
      v25 = *(v10 + 64) + v24 - v23;
      *(v10 + 64) = v25;
      v26 = *(v10 + 920);
      if (v26)
      {
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v27)
        {
          v27(v26, 0x1F0B64598, 0x1F0B65638, v25, 0);
        }
      }

      *(v17 + 4) = v24;
      v23 = v24;
      a4 = v41;
      a3 = v42;
    }

    v28 = *(v17 + 8);
    v29 = v28 | 8;
    *(v17 + 8) = v28 | 8;
    if ((*(v10 + 504) & 1) == 0 && (v28 & 0x100) != 0)
    {
      v29 = v28 | 0x48;
      *(v17 + 8) = v28 | 0x48;
    }

    if (*(v10 + 96) == v23 || v13 + 1 == *(v10 + 88) && *(v10 + 56) - v14 == v23)
    {
      LOBYTE(v30) = v29 | 4;
      *(v17 + 8) = v29 | 4;
      if (v29)
      {
        v31 = OUTLINED_FUNCTION_266();
        crabsUnhint(v31, v32);
        v30 = *(v17 + 8);
      }

      if ((v30 & 0x20) == 0)
      {
        goto LABEL_42;
      }
    }

    else if ((v29 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    v33 = OUTLINED_FUNCTION_266();
    crabsRetainWorking(v33, v34);
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_29_2();
    crabsReleaseWorking(v35, v36, v37, v38);
LABEL_42:
    a3 += v22;
    *(v10 + 176) |= 1u;
    v39 = *(v10 + 96);
    if (v39 == 0x4000)
    {
      v13 = a3 >> 14;
    }

    else if (v39 == 0x10000)
    {
      v13 = a3 >> 16;
    }

    else
    {
      v13 = a3 / v39;
    }

    v15 += v22;
    v16 += v22;
    v14 = v13 * v39;
    if (v15 >= a2)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_3_12();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_55:
  a5 = v40;
LABEL_56:
  FigSimpleMutexUnlock();
  crabsUnlockWithActions(v10);
  if (a5)
  {
    *a5 = v15;
  }

  return result;
}