size_t FigHALAudioObjectMapperAddMapping(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = FigAtomicIncrement32((a1 + 8));
  result = FigCFWeakReferenceTableAddValueAssociatedWithKey(*a1, a2, v6);
  *a3 = v6;
  return result;
}

size_t FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionDataWithOptionsAndReporter(const __CFAllocator *a1, __int128 *a2, unint64_t a3, CFStringEncoding a4, CFTypeRef cf1, char a6, const void *a7, CMBlockBufferRef *a8, CMBlockBufferRef *a9)
{
  v160 = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  v153 = 0;
  v152 = 0;
  v150 = 0;
  cf = 0;
  v148 = 0;
  count = 0;
  v147 = 0;
  v145 = 0;
  valuePtr = 0;
  v144 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v9;
    v15 = emitter;
    v16 = 1058;
    goto LABEL_9;
  }

  if (a3 > 0x55)
  {
    if (!a9)
    {
      v25 = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = v9;
      v15 = v25;
      v16 = 1062;
      goto LABEL_9;
    }

    if (cf1)
    {
      v24 = CFEqual(cf1, @"ISOFamily") == 0;
    }

    else
    {
      v24 = 1;
    }

    v27 = bswap32(*a2);
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    memset(v159, 0, sizeof(v159));
    if (v27 < 0x56 || v27 > a3)
    {
      strcpy(context, "Image description size is incorrect");
      v89 = fig_log_get_emitter("com.apple.coremedia", "");
      v90 = a8;
      v42 = 4294954582;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x432, v9, v91, v92, v135);
      figSoundBridge_ReportParsingFailureMessage(v90, context);
      return v42;
    }

    alloc = a1;
    *&v159[30] = *(a2 + 78);
    v28 = a2[3];
    v158 = a2[2];
    *v159 = v28;
    *&v159[16] = a2[4];
    v29 = a2[1];
    v156 = *a2;
    v157 = v29;
    v30 = bswap32(DWORD1(v156));
    v153 = v30;
    v31 = bswap32(*&v159[34]);
    v152 = HIWORD(v31);
    if (DWORD1(v156) == 544694642)
    {
      v153 = v31 >> 16;
      v152 = 0;
      v30 = v31 >> 16;
    }

    else if (v31 >> 16 < 0)
    {
      strcpy(context, "Image description has negative depth");
      v93 = fig_log_get_emitter("com.apple.coremedia", "");
      v96 = v9;
      v35 = a8;
      v42 = 4294954582;
      v97 = 1093;
      goto LABEL_120;
    }

    if (!v158)
    {
      strcpy(context, "Image description has negative or zero width");
      v93 = fig_log_get_emitter("com.apple.coremedia", "");
      v96 = v9;
      v35 = a8;
      v42 = 4294954582;
      v97 = 1099;
      goto LABEL_120;
    }

    if (!WORD1(v158))
    {
      strcpy(context, "Image description has negative or zero height");
      v93 = fig_log_get_emitter("com.apple.coremedia", "");
      v96 = v9;
      v35 = a8;
      v42 = 4294954582;
      v97 = 1105;
      goto LABEL_120;
    }

    if ((v30 & 0xFFFFFFFE) == 0x64766870 && v158 == 5 && WORD1(v158) == 53250)
    {
      v32 = 960;
LABEL_37:
      width = v32;
      if (*&v159[36])
      {
        v34 = 86;
        goto LABEL_42;
      }

      v35 = a8;
      if (v27 <= 0x65)
      {
        strcpy(context, "Image description is too small to have a color table");
        v93 = fig_log_get_emitter("com.apple.coremedia", "");
        v96 = v9;
        v42 = 4294954582;
        v97 = 1121;
      }

      else
      {
        v36 = bswap32(*(a2 + 46)) >> 16;
        if (v36 < 0)
        {
          strcpy(context, "Image description has negative color table size");
          v93 = fig_log_get_emitter("com.apple.coremedia", "");
          v96 = v9;
          v42 = 4294954582;
          v97 = 1129;
        }

        else
        {
          v34 = 8 * v36 + 102;
          if (v34 <= v27)
          {
LABEL_42:
            encoding = a4;
            v37 = WORD1(v158);
            v140 = v24;
            v38 = v27 - v34;
            v138 = a7;
            v39 = a7;
            v40 = v34;
            v41 = figBridge_WalkAndConvertImageDescriptionExtensions(a1, a2 + v34, v38, &count, 0, 0, &v147, 0, a8, a6, v138);
            if (v41)
            {
              v42 = v41;
LABEL_121:
              v88 = 0;
              v49 = 0;
              v50 = 0;
LABEL_122:
              v46 = 0;
              goto LABEL_123;
            }

            v43 = 0;
            v139 = __rev16(v37);
            while (figBridge_ConvertMPEG2ProfileCodecTypesToProfileExtensions_mpeg2ConformingVideoCodecTypes[v43] != v153)
            {
              if (++v43 == 39)
              {
                v44 = count;
                goto LABEL_49;
              }
            }

            v44 = count + 1;
LABEL_49:
            count = v44 + 1;
            if (v159[2] - 1 > 0x1E)
            {
              v136 = (bswap32(DWORD1(v156)) >> 24);
              v45 = CFStringCreateWithFormat(a1, 0, @"'%c%c%c%c'");
            }

            else
            {
              v45 = CFStringCreateWithPascalString(a1, &v159[2], encoding);
            }

            v46 = v45;
            v47 = count;
            if (v45)
            {
              v47 = count + 1;
            }

            v48 = v47 + 4;
            count = v47 + 4;
            if (DWORD1(v157))
            {
              v48 = v47 + 5;
              count = v47 + 5;
            }

            if (v152)
            {
              count = ++v48;
            }

            if (v48)
            {
              v49 = malloc_type_calloc(v48, 8uLL, 0x6004044C4A2DFuLL);
              if (v49)
              {
                v50 = malloc_type_calloc(count, 8uLL, 0xC0040B8AA526DuLL);
                if (v50)
                {
                  v51 = figBridge_WalkAndConvertImageDescriptionExtensions(alloc, a2 + v40, v38, &v148, v49, v50, 0, v147, a8, a6, v39);
                  if (!v51)
                  {
                    v52 = a8;
                    figBridge_ConvertMPEG2ProfileCodecTypesToProfileExtensions(v153, &v153, &v148, v49, v50);
                    v53 = &kCMFormatDescriptionExtension_VerbatimSampleDescription;
                    if (!v140)
                    {
                      v53 = &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
                    }

                    v54 = CFRetain(*v53);
                    v49[v148] = v54;
                    v55 = CFDataCreate(alloc, a2, a3);
                    v56 = v148;
                    v50[v148] = v55;
                    v148 = v56 + 1;
                    if (v46)
                    {
                      v57 = CFRetain(@"FormatName");
                      v58 = v148;
                      v49[v148] = v57;
                      v50[v58] = v46;
                      v148 = v58 + 1;
                    }

                    HIWORD(valuePtr) = bswap32(v157) >> 16;
                    v59 = CFRetain(@"Version");
                    v49[v148] = v59;
                    v60 = *MEMORY[0x1E695E480];
                    v61 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr + 2);
                    v62 = v148;
                    v50[v148] = v61;
                    v148 = v62 + 1;
                    LOWORD(valuePtr) = bswap32(WORD1(v157)) >> 16;
                    v63 = CFRetain(@"RevisionLevel");
                    v49[v148] = v63;
                    v64 = CFNumberCreate(v60, kCFNumberSInt16Type, &valuePtr);
                    v65 = v148;
                    v50[v148] = v64;
                    v148 = v65 + 1;
                    v145 = bswap32(DWORD2(v157));
                    v66 = CFRetain(@"TemporalQuality");
                    v49[v148] = v66;
                    v67 = CFNumberCreate(v60, kCFNumberSInt32Type, &v145);
                    v68 = v148;
                    v50[v148] = v67;
                    v148 = v68 + 1;
                    v144 = bswap32(HIDWORD(v157));
                    v69 = CFRetain(@"SpatialQuality");
                    v49[v148] = v69;
                    v70 = CFNumberCreate(v60, kCFNumberSInt32Type, &v144);
                    v71 = v148;
                    v50[v148] = v70;
                    v72 = v71 + 1;
                    v148 = v71 + 1;
                    if (DWORD1(v157))
                    {
                      v73 = CFRetain(@"Vendor");
                      v49[v148] = v73;
                      v74 = CFStringCreateWithBytes(alloc, &v157 + 4, 4, 0, 0);
                      v75 = v148;
                      v50[v148] = v74;
                      v72 = v75 + 1;
                      v148 = v75 + 1;
                    }

                    v76 = a9;
                    if (v152)
                    {
                      v77 = CFRetain(@"Depth");
                      v49[v148] = v77;
                      v78 = CFNumberCreate(v60, kCFNumberSInt16Type, &v152);
                      v79 = v148;
                      v50[v148] = v78;
                      v72 = v79 + 1;
                      v148 = v79 + 1;
                    }

                    if (count == v72)
                    {
                      cf = CFDictionaryCreate(alloc, v49, v50, v72, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (cf)
                      {
                        v80 = 0;
                        goto LABEL_74;
                      }

                      v129 = fig_log_get_emitter("com.apple.coremedia", "");
                      v42 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v129, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x4EA, v9, v130, v131, v136);
                    }

                    else
                    {
                      strcpy(context, "Image description data could have changed");
                      v132 = fig_log_get_emitter("com.apple.coremedia", "");
                      v42 = 4294954582;
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x4E4, v9, v133, v134, v136);
                      figSoundBridge_ReportParsingFailureMessage(v52, context);
                    }

                    v88 = 0;
                    goto LABEL_122;
                  }
                }

                else
                {
                  v98 = fig_log_get_emitter("com.apple.coremedia", "");
                  v51 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v98, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x4A3, v9, v99, v100, v136);
                }

                v42 = v51;
                v88 = 0;
              }

              else
              {
                v85 = fig_log_get_emitter("com.apple.coremedia", "");
                v42 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x49D, v9, v86, v87, v136);
                v88 = 0;
                v50 = 0;
              }

LABEL_123:
              FigFormatDescriptionRelease(v88);
              if (v150)
              {
                CFRelease(v150);
              }

              if (v46)
              {
                CFRelease(v46);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v49)
              {
                v123 = count;
                if (count)
                {
                  v124 = 0;
                  do
                  {
                    v125 = v49[v124];
                    if (v125)
                    {
                      CFRelease(v125);
                      v123 = count;
                    }

                    ++v124;
                  }

                  while (v124 < v123);
                }

                free(v49);
              }

              if (v50)
              {
                v126 = count;
                if (count)
                {
                  v127 = 0;
                  do
                  {
                    v128 = v50[v127];
                    if (v128)
                    {
                      CFRelease(v128);
                      v126 = count;
                    }

                    ++v127;
                  }

                  while (v127 < v126);
                }

                free(v50);
              }

              return v42;
            }

            v80 = v46;
            v49 = 0;
            v50 = 0;
            v76 = a9;
LABEL_74:
            v81 = v153;
            v82 = v139;
            if (v153 == 1836070006)
            {
              MPEG4VideoCodecTypeAndCopyDecoderSpecificInfo = figBridge_GetMPEG4VideoCodecTypeAndCopyDecoderSpecificInfo(cf, &v153, &v150);
              if (MPEG4VideoCodecTypeAndCopyDecoderSpecificInfo)
              {
                v42 = MPEG4VideoCodecTypeAndCopyDecoderSpecificInfo;
                goto LABEL_112;
              }

              if (FigCFDictionaryGetCount(v150) >= 1)
              {
                context[0] = cf;
                *&context[1] = __PAIR64__(v139, width);
                CFDictionaryApplyFunction(v150, figbridge_ConsumeMP4BridgeDecoderSpecificInfo, context);
                v82 = DWORD1(context[1]);
                width = context[1];
                v84 = *(&context[0] + 1);
                if (*(&context[0] + 1))
                {
                  if (cf)
                  {
                    CFRelease(cf);
                    v84 = *(&context[0] + 1);
                  }

                  cf = v84;
                }
              }

              v81 = v153;
            }

            if (v81 == 1701733238)
            {
              ConciseProtectedCodecType = figBridge_GetConciseProtectedCodecType(cf);
              if (ConciseProtectedCodecType)
              {
                v81 = ConciseProtectedCodecType;
                v153 = ConciseProtectedCodecType;
              }

              else
              {
                v81 = v153;
              }
            }

            if (FigVideoCodecTypeIsH264Flavor(v81) || FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(v81))
            {
              goto LABEL_95;
            }

            if (v81 > 1902212656)
            {
              if (v81 != 1902403958)
              {
                v122 = 1902212657;
LABEL_148:
                if (v81 != v122)
                {
                  goto LABEL_98;
                }
              }
            }

            else if (v81 != 1635135537)
            {
              v122 = 1684108849;
              goto LABEL_148;
            }

LABEL_95:
            FigBridge_MakeFallbackExtensionsFromVUI(alloc, v81, a8, &cf);
            if (FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(v153))
            {
              Value = CFDictionaryGetValue(cf, @"AlternativeTransferCharacteristics");
              if (Value)
              {
                figBridge_OverrideTransferFunctionFromAlternativeTransferCharacteristics(alloc, Value, &cf, v103, v104, v105, v106, v107, v136);
              }
            }

LABEL_98:
            v108 = v153;
            if (FigVideoCodecTypeIsProRes(v153))
            {
              figBridge_GetBitsPerComponentForProRes(alloc, v108, &cf, v109, v110, v111, v112, v113, v136);
              figBridge_GetAlphaChannelExtensionForProRes(alloc, &cf, v114, v115, v116, v117, v118, v119, v137);
              v108 = v153;
            }

            v120 = v140;
            if (v108 == 1932670515)
            {
              if (figBridge_Is3GP263ExtensionPresent(cf))
              {
                v108 = 1748121139;
                goto LABEL_109;
              }

              v108 = v153;
              v120 = v140;
            }

            if (v108 == 1835692135)
            {
              v121 = v120;
            }

            else
            {
              v121 = 1;
            }

            if (v121)
            {
              goto LABEL_110;
            }

            v108 = 1785750887;
LABEL_109:
            v153 = v108;
LABEL_110:
            v42 = CMVideoFormatDescriptionCreate(alloc, v108, width, v82, cf, &formatDescriptionOut);
            v88 = formatDescriptionOut;
            if (v42)
            {
LABEL_113:
              v46 = v80;
              goto LABEL_123;
            }

            *v76 = formatDescriptionOut;
            formatDescriptionOut = 0;
LABEL_112:
            v88 = 0;
            goto LABEL_113;
          }

          strcpy(context, "Image description color table size is too big");
          v93 = fig_log_get_emitter("com.apple.coremedia", "");
          v96 = v9;
          v42 = 4294954582;
          v97 = 1136;
        }
      }

LABEL_120:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", v97, v96, v94, v95, v135);
      figSoundBridge_ReportParsingFailureMessage(v35, context);
      goto LABEL_121;
    }

    v32 = __rev16(v158);
    if (v30 > 1685481524)
    {
      if (v30 != 1685481525)
      {
        v33 = 26678;
        goto LABEL_29;
      }
    }

    else if (v30 != 1685481522)
    {
      v33 = 26675;
LABEL_29:
      if (v30 == (v33 | 0x64760000) && v158 == 32775 && WORD1(v158) == 14340)
      {
        v32 = 1280;
      }

      goto LABEL_37;
    }

    if (v158 == 32775 && WORD1(v158) == 14340)
    {
      v32 = 1440;
    }

    goto LABEL_37;
  }

  v11 = fig_log_get_emitter("com.apple.coremedia", "");
  v14 = v9;
  v15 = v11;
  v16 = 1060;
LABEL_9:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", v16, v14, v12, v13, a9);
}

const __CFDictionary *figBridge_GetMPEG4VideoCodecTypeAndCopyDecoderSpecificInfo(const __CFDictionary *result, int *a2, CFMutableDictionaryRef *a3)
{
  if (result)
  {
    v20 = 0;
    Value = CFDictionaryGetValue(result, @"SampleDescriptionExtensionAtoms");
    if (!Value)
    {
      return 0;
    }

    v7 = Value;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v7))
    {
      return 0;
    }

    v9 = CFDictionaryGetValue(v7, @"esds");
    if (!v9)
    {
      return 0;
    }

    ValueAtIndex = v9;
    v11 = CFArrayGetTypeID();
    if (v11 == CFGetTypeID(ValueAtIndex))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      if (!ValueAtIndex)
      {
        return 0;
      }
    }

    v12 = CFDataGetTypeID();
    if (v12 != CFGetTypeID(ValueAtIndex))
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    Length = CFDataGetLength(ValueAtIndex);
    if (FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(BytePtr, Length, &v20, 0, a3))
    {
      return 0;
    }

    v15 = 1836069238;
    if (v20 > 0x64u)
    {
      if (v20 != 101)
      {
        if (v20 == 106)
        {
          goto LABEL_18;
        }

        if (v20 == 108)
        {
          v15 = 1785750887;
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    else if (v20 - 96 >= 2)
    {
      if (v20 == 32)
      {
        v15 = 1836070006;
LABEL_18:
        *a2 = v15;
        return 0;
      }

LABEL_21:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xAEB, v3, v17, v18, v19);
    }

    v15 = 1836069494;
    goto LABEL_18;
  }

  return result;
}

void figbridge_ConsumeMP4BridgeDecoderSpecificInfo(const void *a1, const __CFNumber *a2, uint64_t a3)
{
  if (CFEqual(a1, @"VideoWidth"))
  {
    SInt32 = FigCFNumberGetSInt32(a2);
    if (SInt32 >= 1)
    {
      *(a3 + 16) = SInt32;
    }
  }

  else if (CFEqual(a1, @"VideoHeight"))
  {
    v7 = FigCFNumberGetSInt32(a2);
    if (v7 >= 1)
    {
      *(a3 + 20) = v7;
    }
  }

  else if (!CFDictionaryContainsKey(*a3, a1))
  {
    MutableCopy = *(a3 + 8);
    if (MutableCopy || (MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], *a3), (*(a3 + 8) = MutableCopy) != 0))
    {

      CFDictionaryAddValue(MutableCopy, a1, a2);
    }
  }
}

const __CFDictionary *figBridge_GetConciseProtectedCodecType(const __CFDictionary *result)
{
  if (!result)
  {
    return result;
  }

  result = CFDictionaryGetValue(result, @"SampleDescriptionExtensionAtoms");
  if (!result)
  {
    return result;
  }

  result = CFDictionaryGetValue(result, @"sinf");
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = CFGetTypeID(result);
  if (v2 != CFArrayGetTypeID())
  {
    v8 = CFGetTypeID(v1);
    if (v8 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      Length = CFDataGetLength(v1);

      return figBridge_GetConciseProtectedCodecTypeFromSinfData(BytePtr, Length);
    }

    return 0;
  }

  if (CFArrayGetCount(v1) < 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v3);
    v5 = CFGetTypeID(ValueAtIndex);
    if (v5 == CFDataGetTypeID())
    {
      v6 = CFDataGetBytePtr(ValueAtIndex);
      v7 = CFDataGetLength(ValueAtIndex);
      result = figBridge_GetConciseProtectedCodecTypeFromSinfData(v6, v7);
      if (result)
      {
        break;
      }
    }

    if (CFArrayGetCount(v1) <= ++v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigVideoCodecTypeIsH264Flavor(int a1)
{
  result = 1;
  if (a1 <= 1700886114)
  {
    if (a1 > 1667331682)
    {
      if (a1 == 1667331683)
      {
        return result;
      }

      v3 = 1685220713;
    }

    else
    {
      if (a1 == 1635148593)
      {
        return result;
      }

      v3 = 1635148595;
    }

    goto LABEL_13;
  }

  if (a1 <= 1902212706)
  {
    if (a1 == 1700886115)
    {
      return result;
    }

    v3 = 1718908515;
    goto LABEL_13;
  }

  if (a1 != 1902212707 && a1 != 1902212709)
  {
    v3 = 2053207651;
LABEL_13:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(int a1)
{
  result = 1;
  if (a1 <= 1752589104)
  {
    if (a1 > 1685481572)
    {
      if (a1 > 1718908527)
      {
        if (a1 == 1718908528)
        {
          return result;
        }

        v3 = 1751479857;
      }

      else
      {
        if (a1 == 1685481573)
        {
          return result;
        }

        v3 = 1718908520;
      }
    }

    else if (a1 > 1684895095)
    {
      if (a1 == 1684895096)
      {
        return result;
      }

      v3 = 1685481521;
    }

    else
    {
      if (a1 == 1667524657)
      {
        return result;
      }

      v3 = 1667790435;
    }

    goto LABEL_26;
  }

  if (a1 <= 1902405732)
  {
    if (a1 <= 1869117026)
    {
      if (a1 == 1752589105)
      {
        return result;
      }

      v3 = 1836415073;
      goto LABEL_26;
    }

    if (a1 == 1869117027)
    {
      return result;
    }

    v4 = 26673;
    goto LABEL_25;
  }

  if (a1 <= 1902667125)
  {
    if (a1 == 1902405733)
    {
      return result;
    }

    v4 = 28024;
LABEL_25:
    v3 = v4 | 0x71640000;
LABEL_26:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 != 1902667126 && a1 != 1902671459)
  {
    v3 = 1902998904;
    goto LABEL_26;
  }

  return result;
}

size_t FigBridge_MakeFallbackExtensionsFromVUI(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFDictionary **a4)
{
  v161 = *MEMORY[0x1E69E9840];
  v5 = *a4;
  v157 = 0;
  memset(v160, 0, sizeof(v160));
  memset(v159, 0, sizeof(v159));
  if (!v5)
  {
    return 0;
  }

  v8 = a2;
  Value = CFDictionaryGetValue(v5, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    return 0;
  }

  v11 = Value;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v11))
  {
    return 0;
  }

  v13 = @"avcC";
  if (v8 <= 1751479856)
  {
    if (v8 > 1684895095)
    {
      if (v8 > 1700886114)
      {
        if (v8 <= 1718908519)
        {
          if (v8 == 1700886115)
          {
            goto LABEL_46;
          }

          v14 = 1718908515;
          goto LABEL_67;
        }

        if (v8 == 1718908520)
        {
          goto LABEL_45;
        }

        v16 = 1718908528;
      }

      else
      {
        if (v8 <= 1685481520)
        {
          if (v8 != 1684895096)
          {
            v14 = 1685220713;
            goto LABEL_67;
          }

LABEL_45:
          v13 = @"hvcC";
          goto LABEL_46;
        }

        if (v8 == 1685481521)
        {
          goto LABEL_45;
        }

        v16 = 1685481573;
      }

      goto LABEL_44;
    }

    if (v8 <= 1667331682)
    {
      if (v8 != 1635135537)
      {
        if (v8 == 1635148593)
        {
          goto LABEL_46;
        }

        v14 = 1635148595;
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    if (v8 <= 1667790434)
    {
      if (v8 == 1667331683)
      {
        goto LABEL_46;
      }

      v16 = 1667524657;
      goto LABEL_44;
    }

    if (v8 == 1667790435)
    {
      goto LABEL_45;
    }

    v17 = 1684108849;
LABEL_63:
    if (v8 != v17)
    {
      goto LABEL_68;
    }

LABEL_64:
    v13 = @"av1C";
    goto LABEL_46;
  }

  if (v8 > 1902403957)
  {
    if (v8 > 1902667125)
    {
      if (v8 > 1902998903)
      {
        if (v8 == 2053207651)
        {
          goto LABEL_46;
        }

        v16 = 1902998904;
      }

      else
      {
        if (v8 == 1902667126)
        {
          goto LABEL_45;
        }

        v16 = 1902671459;
      }

      goto LABEL_44;
    }

    if (v8 > 1902405732)
    {
      if (v8 == 1902405733)
      {
        goto LABEL_45;
      }

      v15 = 28024;
    }

    else
    {
      if (v8 == 1902403958)
      {
        goto LABEL_64;
      }

      v15 = 26673;
    }

    v16 = v15 | 0x71640000;
    goto LABEL_44;
  }

  if (v8 <= 1869117026)
  {
    if (v8 == 1751479857 || v8 == 1752589105)
    {
      goto LABEL_45;
    }

    v16 = 1836415073;
LABEL_44:
    if (v8 == v16)
    {
      goto LABEL_45;
    }

LABEL_68:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_9();
    return 0;
  }

  if (v8 <= 1902212706)
  {
    if (v8 == 1869117027)
    {
      goto LABEL_45;
    }

    v17 = 1902212657;
    goto LABEL_63;
  }

  if (v8 == 1902212707)
  {
    goto LABEL_46;
  }

  v14 = 1902212709;
LABEL_67:
  if (v8 != v14)
  {
    goto LABEL_68;
  }

LABEL_46:
  v18 = CFDictionaryGetValue(v11, v13);
  if (!v18)
  {
    return 0;
  }

  ValueAtIndex = v18;
  v20 = CFArrayGetTypeID();
  if (v20 == CFGetTypeID(ValueAtIndex))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    if (!ValueAtIndex)
    {
      return 0;
    }
  }

  v21 = CFDataGetTypeID();
  if (v21 != CFGetTypeID(ValueAtIndex))
  {
    return 0;
  }

  v155 = 0;
  v156 = 0;
  if (v8 > 1751479856)
  {
    if (v8 <= 1902403957)
    {
      if (v8 <= 1869117026)
      {
        if (v8 == 1751479857 || v8 == 1752589105)
        {
          goto LABEL_97;
        }

        v29 = 1836415073;
        goto LABEL_96;
      }

      if (v8 <= 1902212706)
      {
        if (v8 == 1869117027)
        {
          goto LABEL_97;
        }

        v30 = 1902212657;
LABEL_102:
        if (v8 != v30)
        {
          goto LABEL_111;
        }

LABEL_103:
        HEVCParameterSetAtIndex = FigAV1Bridge_Getav1CStartAndLength(ValueAtIndex, &v156, &v155, v22, v23, v24, v25, v26, v152);
        goto LABEL_108;
      }

      if (v8 == 1902212707)
      {
        goto LABEL_107;
      }

      v27 = 1902212709;
    }

    else
    {
      if (v8 <= 1902667125)
      {
        if (v8 > 1902405732)
        {
          if (v8 == 1902405733)
          {
            goto LABEL_97;
          }

          v28 = 28024;
        }

        else
        {
          if (v8 == 1902403958)
          {
            goto LABEL_103;
          }

          v28 = 26673;
        }

        v29 = v28 | 0x71640000;
        goto LABEL_96;
      }

      if (v8 <= 1902998903)
      {
        if (v8 == 1902667126)
        {
          goto LABEL_97;
        }

        v29 = 1902671459;
        goto LABEL_96;
      }

      if (v8 == 1902998904)
      {
        goto LABEL_97;
      }

      v27 = 2053207651;
    }

LABEL_106:
    if (v8 == v27)
    {
      goto LABEL_107;
    }

LABEL_111:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_1();
    goto LABEL_112;
  }

  if (v8 <= 1684895095)
  {
    if (v8 > 1667331682)
    {
      if (v8 <= 1667790434)
      {
        if (v8 != 1667331683)
        {
          v29 = 1667524657;
          goto LABEL_96;
        }

        goto LABEL_107;
      }

      if (v8 == 1667790435)
      {
        goto LABEL_97;
      }

      v30 = 1684108849;
      goto LABEL_102;
    }

    if (v8 == 1635135537)
    {
      goto LABEL_103;
    }

    if (v8 == 1635148593)
    {
      goto LABEL_107;
    }

    v27 = 1635148595;
    goto LABEL_106;
  }

  if (v8 <= 1700886114)
  {
    if (v8 <= 1685481520)
    {
      if (v8 != 1684895096)
      {
        v27 = 1685220713;
        goto LABEL_106;
      }

LABEL_97:
      HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex(ValueAtIndex, 33, 0, &v156, &v155, 0, 0);
      goto LABEL_108;
    }

    if (v8 == 1685481521)
    {
      goto LABEL_97;
    }

    v29 = 1685481573;
LABEL_96:
    if (v8 != v29)
    {
      goto LABEL_111;
    }

    goto LABEL_97;
  }

  if (v8 > 1718908519)
  {
    if (v8 == 1718908520)
    {
      goto LABEL_97;
    }

    v29 = 1718908528;
    goto LABEL_96;
  }

  if (v8 != 1700886115)
  {
    v27 = 1718908515;
    goto LABEL_106;
  }

LABEL_107:
  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  Length = CFDataGetLength(ValueAtIndex);
  HEVCParameterSetAtIndex = FigH264Bridge_GetSPSFromAVCC(BytePtr, Length, 0, &v156, &v155, v34, v35, v36, v152);
LABEL_108:
  if (HEVCParameterSetAtIndex)
  {
    return 0;
  }

LABEL_112:
  v39 = *MEMORY[0x1E6965D00];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965D00]))
  {
    v44 = 0;
    goto LABEL_114;
  }

  colorPrimariesCodePoint[0] = 0;
  transferFunctionCodePoint[1] = 0;
  if (v8 <= 1751479856)
  {
    if (v8 > 1684895095)
    {
      if (v8 <= 1700886114)
      {
        if (v8 <= 1685481520)
        {
          if (v8 != 1684895096)
          {
            v50 = 1685220713;
            goto LABEL_281;
          }

          goto LABEL_194;
        }

        if (v8 != 1685481521)
        {
          v54 = 1685481573;
          goto LABEL_193;
        }

LABEL_194:
        if (FigHEVCBridge_GetSPS_VUI_ChromaLocation(v156, v155, colorPrimariesCodePoint, &transferFunctionCodePoint[1]))
        {
LABEL_284:
          transferFunctionCodePoint[1] = 0;
          colorPrimariesCodePoint[0] = 0;
          goto LABEL_285;
        }

        goto LABEL_285;
      }

      if (v8 <= 1718908519)
      {
        if (v8 != 1700886115)
        {
          v50 = 1718908515;
          goto LABEL_281;
        }

LABEL_282:
        SPS_VUI_ChromaLocation = FigH264Bridge_GetSPS_VUI_ChromaLocation(v156, v155, colorPrimariesCodePoint, &transferFunctionCodePoint[1], v40, v41, v42, v43);
LABEL_283:
        if (!SPS_VUI_ChromaLocation)
        {
          goto LABEL_285;
        }

        goto LABEL_284;
      }

      if (v8 == 1718908520)
      {
        goto LABEL_194;
      }

      v54 = 1718908528;
LABEL_193:
      if (v8 == v54)
      {
        goto LABEL_194;
      }

LABEL_551:
      FigBridge_MakeFallbackExtensionsFromVUI_cold_2();
      goto LABEL_285;
    }

    if (v8 > 1667331682)
    {
      if (v8 <= 1667790434)
      {
        if (v8 != 1667331683)
        {
          v54 = 1667524657;
          goto LABEL_193;
        }

        goto LABEL_282;
      }

      if (v8 == 1667790435)
      {
        goto LABEL_194;
      }

      v56 = 1684108849;
      goto LABEL_206;
    }

    if (v8 == 1635135537)
    {
      goto LABEL_207;
    }

    if (v8 == 1635148593)
    {
      goto LABEL_282;
    }

    v50 = 1635148595;
LABEL_281:
    if (v8 == v50)
    {
      goto LABEL_282;
    }

    goto LABEL_551;
  }

  if (v8 > 1902403957)
  {
    if (v8 <= 1902667125)
    {
      if (v8 > 1902405732)
      {
        if (v8 == 1902405733)
        {
          goto LABEL_194;
        }

        v52 = 28024;
      }

      else
      {
        if (v8 == 1902403958)
        {
          goto LABEL_207;
        }

        v52 = 26673;
      }

      v54 = v52 | 0x71640000;
      goto LABEL_193;
    }

    if (v8 <= 1902998903)
    {
      if (v8 == 1902667126)
      {
        goto LABEL_194;
      }

      v54 = 1902671459;
      goto LABEL_193;
    }

    if (v8 == 1902998904)
    {
      goto LABEL_194;
    }

    v50 = 2053207651;
    goto LABEL_281;
  }

  if (v8 <= 1869117026)
  {
    if (v8 != 1751479857 && v8 != 1752589105)
    {
      v54 = 1836415073;
      goto LABEL_193;
    }

    goto LABEL_194;
  }

  if (v8 > 1902212706)
  {
    if (v8 == 1902212707)
    {
      goto LABEL_282;
    }

    v50 = 1902212709;
    goto LABEL_281;
  }

  if (v8 == 1869117027)
  {
    goto LABEL_194;
  }

  v56 = 1902212657;
LABEL_206:
  if (v8 != v56)
  {
    goto LABEL_551;
  }

LABEL_207:
  LOBYTE(transferFunctionCodePoint[0]) = 0;
  v158 = 0;
  SPS_VUI_ChromaLocation = FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord(v156, v155, &v158, transferFunctionCodePoint, 0, v41, v42, v43, v152);
  if (SPS_VUI_ChromaLocation)
  {
    goto LABEL_283;
  }

  if (LOBYTE(transferFunctionCodePoint[0]) == 2)
  {
    v60 = 3;
  }

  else if (LOBYTE(transferFunctionCodePoint[0]))
  {
    v60 = 0;
  }

  else
  {
    if (v158 == 100)
    {
      v59 = 3;
    }

    else
    {
      v59 = 0;
    }

    if (v158)
    {
      v60 = v59;
    }

    else
    {
      v60 = 1;
    }
  }

  colorPrimariesCodePoint[0] = v60;
  transferFunctionCodePoint[1] = v60;
LABEL_285:
  if (v8 <= 1700886114)
  {
    if (v8 > 1667331682)
    {
      if (v8 == 1667331683)
      {
        goto LABEL_298;
      }

      v85 = 1685220713;
    }

    else
    {
      if (v8 == 1635148593)
      {
        goto LABEL_298;
      }

      v85 = 1635148595;
    }
  }

  else if (v8 <= 1902212706)
  {
    if (v8 == 1700886115)
    {
      goto LABEL_298;
    }

    v85 = 1718908515;
  }

  else
  {
    if (v8 == 1902212707 || v8 == 1902212709)
    {
      goto LABEL_298;
    }

    v85 = 2053207651;
  }

  if (v8 != v85)
  {
    v86 = colorPrimariesCodePoint[0];
    goto LABEL_301;
  }

LABEL_298:
  v86 = colorPrimariesCodePoint[0];
  if (colorPrimariesCodePoint[0] == 2 && transferFunctionCodePoint[1] == 2)
  {
    v86 = 1;
    transferFunctionCodePoint[1] = 1;
    colorPrimariesCodePoint[0] = 1;
  }

LABEL_301:
  v87 = figConvertChromaLocationIndexToString(v86);
  if (v87)
  {
    *&v159[0] = CFRetain(v87);
    if (*&v159[0])
    {
      v88 = v159 + 1;
      v89 = v160 + 1;
      *&v160[0] = v39;
      v44 = 1;
      goto LABEL_307;
    }

    v44 = 0;
  }

  else
  {
    v44 = 0;
    *&v159[0] = 0;
  }

  v89 = v160;
  v88 = v159;
LABEL_307:
  v90 = figConvertChromaLocationIndexToString(LOBYTE(transferFunctionCodePoint[1]));
  if (v90)
  {
    v91 = CFRetain(v90);
    *v88 = v91;
    if (v91)
    {
      ++v44;
      *v89 = *MEMORY[0x1E6965CF0];
    }
  }

  else
  {
    *v88 = 0;
  }

LABEL_114:
  v45 = *MEMORY[0x1E6965D88];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965D88]))
  {
    goto LABEL_236;
  }

  colorPrimariesCodePoint[0] = 0;
  *transferFunctionCodePoint = 0;
  if (v8 > 1751479856)
  {
    if (v8 <= 1902403957)
    {
      if (v8 <= 1869117026)
      {
        if (v8 == 1751479857 || v8 == 1752589105)
        {
          goto LABEL_190;
        }

        v53 = 1836415073;
        goto LABEL_189;
      }

      if (v8 <= 1902212706)
      {
        if (v8 == 1869117027)
        {
          goto LABEL_190;
        }

        v55 = 1902212657;
LABEL_202:
        if (v8 != v55)
        {
          goto LABEL_550;
        }

LABEL_203:
        SeqOBU_VUI_NCLC = FigAV1Bridge_GetSeqOBU_VUI_NCLC(v156, v155, colorPrimariesCodePoint, &transferFunctionCodePoint[1], transferFunctionCodePoint, v46, v47, v48, v152);
        goto LABEL_220;
      }

      if (v8 == 1902212707)
      {
        goto LABEL_219;
      }

      v49 = 1902212709;
    }

    else
    {
      if (v8 <= 1902667125)
      {
        if (v8 > 1902405732)
        {
          if (v8 == 1902405733)
          {
            goto LABEL_190;
          }

          v51 = 28024;
        }

        else
        {
          if (v8 == 1902403958)
          {
            goto LABEL_203;
          }

          v51 = 26673;
        }

        v53 = v51 | 0x71640000;
        goto LABEL_189;
      }

      if (v8 <= 1902998903)
      {
        if (v8 == 1902667126)
        {
          goto LABEL_190;
        }

        v53 = 1902671459;
        goto LABEL_189;
      }

      if (v8 == 1902998904)
      {
        goto LABEL_190;
      }

      v49 = 2053207651;
    }

LABEL_218:
    if (v8 == v49)
    {
      goto LABEL_219;
    }

LABEL_550:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_3();
    goto LABEL_221;
  }

  if (v8 <= 1684895095)
  {
    if (v8 > 1667331682)
    {
      if (v8 <= 1667790434)
      {
        if (v8 != 1667331683)
        {
          v53 = 1667524657;
          goto LABEL_189;
        }

        goto LABEL_219;
      }

      if (v8 == 1667790435)
      {
        goto LABEL_190;
      }

      v55 = 1684108849;
      goto LABEL_202;
    }

    if (v8 == 1635135537)
    {
      goto LABEL_203;
    }

    if (v8 == 1635148593)
    {
      goto LABEL_219;
    }

    v49 = 1635148595;
    goto LABEL_218;
  }

  if (v8 <= 1700886114)
  {
    if (v8 <= 1685481520)
    {
      if (v8 != 1684895096)
      {
        v49 = 1685220713;
        goto LABEL_218;
      }

LABEL_190:
      SeqOBU_VUI_NCLC = FigHEVCBridge_GetSPS_VUI_NCLC();
      goto LABEL_220;
    }

    if (v8 == 1685481521)
    {
      goto LABEL_190;
    }

    v53 = 1685481573;
LABEL_189:
    if (v8 != v53)
    {
      goto LABEL_550;
    }

    goto LABEL_190;
  }

  if (v8 > 1718908519)
  {
    if (v8 == 1718908520)
    {
      goto LABEL_190;
    }

    v53 = 1718908528;
    goto LABEL_189;
  }

  if (v8 != 1700886115)
  {
    v49 = 1718908515;
    goto LABEL_218;
  }

LABEL_219:
  SeqOBU_VUI_NCLC = FigH264Bridge_GetSPS_VUI_NCLC(v156, v155, colorPrimariesCodePoint, &transferFunctionCodePoint[1], transferFunctionCodePoint, v46, v47, v48);
LABEL_220:
  if (SeqOBU_VUI_NCLC)
  {
    goto LABEL_236;
  }

LABEL_221:
  StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(colorPrimariesCodePoint[0]);
  v62 = v159;
  if (StringForIntegerCodePoint)
  {
    v63 = CFRetain(StringForIntegerCodePoint);
    *(v159 + v44) = v63;
    if (!v63)
    {
      goto LABEL_226;
    }

    v64 = v44 + 1;
    v62 = v160;
  }

  else
  {
    v45 = 0;
    v64 = v44;
  }

  *(v62 + v44) = v45;
  v44 = v64;
LABEL_226:
  v65 = CVTransferFunctionGetStringForIntegerCodePoint(transferFunctionCodePoint[1]);
  v66 = v159;
  if (v65)
  {
    v67 = CFRetain(v65);
    *(v159 + v44) = v67;
    if (!v67)
    {
      goto LABEL_231;
    }

    v68 = *MEMORY[0x1E6965F30];
    v69 = v44 + 1;
    v66 = v160;
  }

  else
  {
    v68 = 0;
    v69 = v44;
  }

  *(v66 + v44) = v68;
  v44 = v69;
LABEL_231:
  v70 = CVYCbCrMatrixGetStringForIntegerCodePoint(transferFunctionCodePoint[0]);
  v71 = v159;
  if (v70)
  {
    v72 = CFRetain(v70);
    *(v159 + v44) = v72;
    if (!v72)
    {
      goto LABEL_236;
    }

    v73 = *MEMORY[0x1E6965F98];
    v74 = v44 + 1;
    v71 = v160;
  }

  else
  {
    v73 = 0;
    v74 = v44;
  }

  *(v71 + v44) = v73;
  v44 = v74;
LABEL_236:
  if (CFDictionaryContainsKey(v5, @"FullRangeVideo"))
  {
    goto LABEL_326;
  }

  LOBYTE(colorPrimariesCodePoint[0]) = 0;
  if (v8 > 1751479856)
  {
    if (v8 <= 1902403957)
    {
      if (v8 <= 1869117026)
      {
        if (v8 == 1751479857 || v8 == 1752589105)
        {
          goto LABEL_276;
        }

        v82 = 1836415073;
        goto LABEL_275;
      }

      if (v8 <= 1902212706)
      {
        if (v8 == 1869117027)
        {
          goto LABEL_276;
        }

        v83 = 1902212657;
LABEL_314:
        if (v8 != v83)
        {
          goto LABEL_552;
        }

LABEL_315:
        ColorRangeFromAV1CodecConfigurationRecord = FigAV1Bridge_GetColorRangeFromAV1CodecConfigurationRecord(v156, v155, colorPrimariesCodePoint, v75, v76, v77, v78, v79, v152);
        goto LABEL_320;
      }

      if (v8 == 1902212707)
      {
        goto LABEL_319;
      }

      v80 = 1902212709;
    }

    else
    {
      if (v8 <= 1902667125)
      {
        if (v8 > 1902405732)
        {
          if (v8 == 1902405733)
          {
            goto LABEL_276;
          }

          v81 = 28024;
        }

        else
        {
          if (v8 == 1902403958)
          {
            goto LABEL_315;
          }

          v81 = 26673;
        }

        v82 = v81 | 0x71640000;
        goto LABEL_275;
      }

      if (v8 <= 1902998903)
      {
        if (v8 == 1902667126)
        {
          goto LABEL_276;
        }

        v82 = 1902671459;
        goto LABEL_275;
      }

      if (v8 == 1902998904)
      {
        goto LABEL_276;
      }

      v80 = 2053207651;
    }
  }

  else
  {
    if (v8 > 1684895095)
    {
      if (v8 <= 1700886114)
      {
        if (v8 <= 1685481520)
        {
          if (v8 != 1684895096)
          {
            v80 = 1685220713;
            goto LABEL_318;
          }

LABEL_276:
          ColorRangeFromAV1CodecConfigurationRecord = FigHEVCBridge_GetSPS_VUI_FullRangeVideo(v156, v155, colorPrimariesCodePoint);
          goto LABEL_320;
        }

        if (v8 == 1685481521)
        {
          goto LABEL_276;
        }

        v82 = 1685481573;
LABEL_275:
        if (v8 != v82)
        {
          goto LABEL_552;
        }

        goto LABEL_276;
      }

      if (v8 > 1718908519)
      {
        if (v8 == 1718908520)
        {
          goto LABEL_276;
        }

        v82 = 1718908528;
        goto LABEL_275;
      }

      if (v8 != 1700886115)
      {
        v80 = 1718908515;
        goto LABEL_318;
      }

LABEL_319:
      ColorRangeFromAV1CodecConfigurationRecord = FigH264Bridge_GetSPS_VUI_FullRangeVideo();
LABEL_320:
      if (ColorRangeFromAV1CodecConfigurationRecord)
      {
        goto LABEL_326;
      }

      goto LABEL_321;
    }

    if (v8 > 1667331682)
    {
      if (v8 <= 1667790434)
      {
        if (v8 != 1667331683)
        {
          v82 = 1667524657;
          goto LABEL_275;
        }

        goto LABEL_319;
      }

      if (v8 == 1667790435)
      {
        goto LABEL_276;
      }

      v83 = 1684108849;
      goto LABEL_314;
    }

    if (v8 == 1635135537)
    {
      goto LABEL_315;
    }

    if (v8 == 1635148593)
    {
      goto LABEL_319;
    }

    v80 = 1635148595;
  }

LABEL_318:
  if (v8 == v80)
  {
    goto LABEL_319;
  }

LABEL_552:
  FigBridge_MakeFallbackExtensionsFromVUI_cold_4();
LABEL_321:
  v92 = MEMORY[0x1E695E4D0];
  if (!LOBYTE(colorPrimariesCodePoint[0]))
  {
    v92 = MEMORY[0x1E695E4C0];
  }

  v93 = *v92;
  if (*v92)
  {
    v93 = CFRetain(v93);
  }

  *(v159 + v44) = v93;
  *(v160 + v44++) = @"FullRangeVideo";
LABEL_326:
  v94 = *MEMORY[0x1E6965EF8];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965EF8]))
  {
    goto LABEL_327;
  }

  colorPrimariesCodePoint[0] = 0;
  transferFunctionCodePoint[1] = 0;
  if (v8 > 1751479856)
  {
    if (v8 > 1902403957)
    {
      if (v8 > 1902667125)
      {
        if (v8 <= 1902998903)
        {
          if (v8 == 1902667126)
          {
            goto LABEL_495;
          }

          v107 = 1902671459;
          goto LABEL_494;
        }

        if (v8 == 1902998904)
        {
          goto LABEL_495;
        }

        v101 = 2053207651;
        goto LABEL_506;
      }

      if (v8 > 1902405732)
      {
        if (v8 == 1902405733)
        {
          goto LABEL_495;
        }

        v104 = 28024;
      }

      else
      {
        if (v8 == 1902403958)
        {
          goto LABEL_502;
        }

        v104 = 26673;
      }

      v107 = v104 | 0x71640000;
      goto LABEL_494;
    }

    if (v8 <= 1869117026)
    {
      if (v8 == 1751479857 || v8 == 1752589105)
      {
        goto LABEL_495;
      }

      v107 = 1836415073;
      goto LABEL_494;
    }

    if (v8 > 1902212706)
    {
      if (v8 == 1902212707)
      {
        goto LABEL_507;
      }

      v101 = 1902212709;
      goto LABEL_506;
    }

    if (v8 == 1869117027)
    {
      goto LABEL_495;
    }

    v108 = 1902212657;
    goto LABEL_501;
  }

  if (v8 <= 1684895095)
  {
    if (v8 <= 1667331682)
    {
      if (v8 != 1635135537)
      {
        if (v8 == 1635148593)
        {
          goto LABEL_507;
        }

        v101 = 1635148595;
        goto LABEL_506;
      }

LABEL_502:
      if (FigAV1Bridge_GetSeqOBU_VUI_AspectRatio(v156, v155, colorPrimariesCodePoint, &transferFunctionCodePoint[1], v95, v96, v97, v98, v152))
      {
        goto LABEL_327;
      }

      goto LABEL_508;
    }

    if (v8 <= 1667790434)
    {
      if (v8 == 1667331683)
      {
        goto LABEL_507;
      }

      v107 = 1667524657;
      goto LABEL_494;
    }

    if (v8 == 1667790435)
    {
      goto LABEL_495;
    }

    v108 = 1684108849;
LABEL_501:
    if (v8 != v108)
    {
      goto LABEL_553;
    }

    goto LABEL_502;
  }

  if (v8 <= 1700886114)
  {
    if (v8 <= 1685481520)
    {
      if (v8 != 1684895096)
      {
        v101 = 1685220713;
        goto LABEL_506;
      }

LABEL_495:
      if (FigHEVCBridge_GetSPS_VUI_AspectRatio(v156, v155, colorPrimariesCodePoint, &transferFunctionCodePoint[1]))
      {
        goto LABEL_327;
      }

      goto LABEL_508;
    }

    if (v8 == 1685481521)
    {
      goto LABEL_495;
    }

    v107 = 1685481573;
LABEL_494:
    if (v8 != v107)
    {
      goto LABEL_553;
    }

    goto LABEL_495;
  }

  if (v8 > 1718908519)
  {
    if (v8 == 1718908520)
    {
      goto LABEL_495;
    }

    v107 = 1718908528;
    goto LABEL_494;
  }

  if (v8 == 1700886115)
  {
    goto LABEL_507;
  }

  v101 = 1718908515;
LABEL_506:
  if (v8 == v101)
  {
LABEL_507:
    if (FigH264Bridge_GetSPS_VUI_AspectRatio(v156, v155, colorPrimariesCodePoint, &transferFunctionCodePoint[1], v95, v96, v97, v98))
    {
      goto LABEL_327;
    }

    goto LABEL_508;
  }

LABEL_553:
  FigBridge_MakeFallbackExtensionsFromVUI_cold_5();
LABEL_508:
  v142 = colorPrimariesCodePoint[0];
  if (colorPrimariesCodePoint[0] && transferFunctionCodePoint[1])
  {
    *(v160 + v44) = v94;
    v143 = figBridge_CFDictionaryCreateWithNumbers(a1, v136, *MEMORY[0x1E6965EF0], v137, v138, v139, v140, v141, v142);
    *(v159 + v44) = v143;
    if (!v143)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v147 = v4;
      v148 = 3638;
      goto LABEL_538;
    }

    ++v44;
  }

LABEL_327:
  v99 = *MEMORY[0x1E6965E50];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965E50]))
  {
    goto LABEL_328;
  }

  v102 = 0;
  LOBYTE(transferFunctionCodePoint[1]) = 0;
  if (v8 > 1751479856)
  {
    if (v8 <= 1902403957)
    {
      if (v8 <= 1869117026)
      {
        if (v8 == 1751479857 || v8 == 1752589105)
        {
          goto LABEL_521;
        }

        v109 = 1836415073;
        goto LABEL_520;
      }

      if (v8 <= 1902212706)
      {
        if (v8 == 1869117027)
        {
          goto LABEL_521;
        }

        v110 = 1902212657;
        goto LABEL_526;
      }

      if (v8 == 1902212707)
      {
        goto LABEL_531;
      }

      v103 = 1902212709;
    }

    else
    {
      if (v8 <= 1902667125)
      {
        if (v8 > 1902405732)
        {
          if (v8 == 1902405733)
          {
            goto LABEL_521;
          }

          v105 = 28024;
        }

        else
        {
          if (v8 == 1902403958)
          {
            goto LABEL_533;
          }

          v105 = 26673;
        }

        v109 = v105 | 0x71640000;
        goto LABEL_520;
      }

      if (v8 <= 1902998903)
      {
        if (v8 == 1902667126)
        {
          goto LABEL_521;
        }

        v109 = 1902671459;
        goto LABEL_520;
      }

      if (v8 == 1902998904)
      {
        goto LABEL_521;
      }

      v103 = 2053207651;
    }

LABEL_530:
    if (v8 == v103)
    {
      goto LABEL_531;
    }

LABEL_554:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_6();
    goto LABEL_534;
  }

  if (v8 <= 1684895095)
  {
    if (v8 > 1667331682)
    {
      if (v8 <= 1667790434)
      {
        if (v8 == 1667331683)
        {
          goto LABEL_531;
        }

        v109 = 1667524657;
        goto LABEL_520;
      }

      if (v8 == 1667790435)
      {
        goto LABEL_521;
      }

      v110 = 1684108849;
LABEL_526:
      if (v8 == v110)
      {
        goto LABEL_533;
      }

      goto LABEL_554;
    }

    if (v8 == 1635135537)
    {
      goto LABEL_533;
    }

    if (v8 == 1635148593)
    {
      goto LABEL_531;
    }

    v103 = 1635148595;
    goto LABEL_530;
  }

  if (v8 > 1700886114)
  {
    if (v8 <= 1718908519)
    {
      if (v8 != 1700886115)
      {
        v103 = 1718908515;
        goto LABEL_530;
      }

LABEL_531:
      SPSIsInterlaced = FigH264Bridge_GetSPSIsInterlaced();
      goto LABEL_532;
    }

    if (v8 == 1718908520)
    {
      goto LABEL_521;
    }

    v109 = 1718908528;
LABEL_520:
    if (v8 != v109)
    {
      goto LABEL_554;
    }

    goto LABEL_521;
  }

  if (v8 > 1685481520)
  {
    if (v8 == 1685481521)
    {
      goto LABEL_521;
    }

    v109 = 1685481573;
    goto LABEL_520;
  }

  if (v8 != 1684895096)
  {
    v103 = 1685220713;
    goto LABEL_530;
  }

LABEL_521:
  SPSIsInterlaced = FigHEVCBridge_GetSPSIsInterlaced(v156, v155, &transferFunctionCodePoint[1]);
LABEL_532:
  v102 = SPSIsInterlaced;
LABEL_533:
  if (v102)
  {
    goto LABEL_328;
  }

LABEL_534:
  if (LOBYTE(transferFunctionCodePoint[1]))
  {
    goto LABEL_328;
  }

  colorPrimariesCodePoint[0] = 1;
  *(v160 + v44) = v99;
  v150 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, colorPrimariesCodePoint);
  *(v159 + v44) = v150;
  if (!v150)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v147 = v4;
    v148 = 3668;
LABEL_538:
    v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", v148, v147, v145, v146, v152);
    if (!v44)
    {
      return v37;
    }

    goto LABEL_539;
  }

  ++v44;
LABEL_328:
  if (CFDictionaryContainsKey(v5, @"MasteringDisplayColorVolume"))
  {
    goto LABEL_383;
  }

  *colorPrimariesCodePoint = 0;
  IsHEVCFlavor = FigVideoCodecTypeIsHEVCFlavor(v8);
  if (!IsHEVCFlavor)
  {
    if (v8 > 1902212656)
    {
      if (v8 == 1902403958)
      {
        goto LABEL_375;
      }

      v106 = 1902212657;
    }

    else
    {
      if (v8 == 1635135537)
      {
        goto LABEL_375;
      }

      v106 = 1684108849;
    }

    if (v8 != v106)
    {
      goto LABEL_376;
    }

LABEL_375:
    IsHEVCFlavor = FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU(ValueAtIndex, colorPrimariesCodePoint);
    goto LABEL_376;
  }

  IsHEVCFlavor = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 137, colorPrimariesCodePoint);
LABEL_376:
  v111 = *colorPrimariesCodePoint;
  if (!IsHEVCFlavor && *colorPrimariesCodePoint)
  {
    if (CFDataGetLength(*colorPrimariesCodePoint) == 24)
    {
      *(v160 + v44) = @"MasteringDisplayColorVolume";
      *(v159 + v44++) = *colorPrimariesCodePoint;
      goto LABEL_383;
    }

    v111 = *colorPrimariesCodePoint;
  }

  if (v111)
  {
    CFRelease(v111);
  }

LABEL_383:
  if (CFDictionaryContainsKey(v5, @"ContentLightLevelInfo"))
  {
    goto LABEL_400;
  }

  *colorPrimariesCodePoint = 0;
  v112 = FigVideoCodecTypeIsHEVCFlavor(v8);
  if (v112)
  {
    v112 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 144, colorPrimariesCodePoint);
    goto LABEL_393;
  }

  if (v8 > 1902212656)
  {
    if (v8 != 1902403958)
    {
      v113 = 1902212657;
LABEL_391:
      if (v8 != v113)
      {
        goto LABEL_393;
      }
    }
  }

  else if (v8 != 1635135537)
  {
    v113 = 1684108849;
    goto LABEL_391;
  }

  v112 = FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU(ValueAtIndex, colorPrimariesCodePoint);
LABEL_393:
  v114 = *colorPrimariesCodePoint;
  if (!v112 && *colorPrimariesCodePoint)
  {
    if (CFDataGetLength(*colorPrimariesCodePoint) == 4)
    {
      *(v160 + v44) = @"ContentLightLevelInfo";
      *(v159 + v44++) = *colorPrimariesCodePoint;
      goto LABEL_400;
    }

    v114 = *colorPrimariesCodePoint;
  }

  if (v114)
  {
    CFRelease(v114);
  }

LABEL_400:
  if (!CFDictionaryContainsKey(v5, @"AmbientViewingEnvironment") && FigVideoCodecTypeIsHEVCFlavor(v8))
  {
    *colorPrimariesCodePoint = 0;
    v117 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 148, colorPrimariesCodePoint);
    v118 = *colorPrimariesCodePoint;
    if (!v117 && *colorPrimariesCodePoint)
    {
      if (CFDataGetLength(*colorPrimariesCodePoint) == 8)
      {
        *(v160 + v44) = @"AmbientViewingEnvironment";
        *(v159 + v44++) = *colorPrimariesCodePoint;
        goto LABEL_401;
      }

      v118 = *colorPrimariesCodePoint;
    }

    if (v118)
    {
      CFRelease(v118);
    }
  }

LABEL_401:
  if (!CFDictionaryContainsKey(v5, @"ContentColorVolume") && FigVideoCodecTypeIsHEVCFlavor(v8))
  {
    *colorPrimariesCodePoint = 0;
    v119 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 149, colorPrimariesCodePoint);
    v120 = *colorPrimariesCodePoint;
    if (v119 || !*colorPrimariesCodePoint)
    {
      if (*colorPrimariesCodePoint)
      {
        CFRelease(*colorPrimariesCodePoint);
      }
    }

    else
    {
      *(v160 + v44) = @"ContentColorVolume";
      *(v159 + v44++) = v120;
    }
  }

  if (!CFDictionaryContainsKey(v5, @"AlternativeTransferCharacteristics"))
  {
    if (FigVideoCodecTypeIsHEVCFlavor(v8))
    {
      LOBYTE(colorPrimariesCodePoint[0]) = 0;
      if (!FigHEVCBridge_GetATCSEI(ValueAtIndex, colorPrimariesCodePoint, v121, v122, v123, v124, v125, v126, v152))
      {
        *(v160 + v44) = @"AlternativeTransferCharacteristics";
        v127 = CVTransferFunctionGetStringForIntegerCodePoint(LOBYTE(colorPrimariesCodePoint[0]));
        if (v127)
        {
          v127 = CFRetain(v127);
        }

        *(v159 + v44++) = v127;
      }
    }
  }

  if (!CFDictionaryContainsKey(v5, @"AlphaChannelMode"))
  {
    if (FigVideoCodecTypeIsHEVCFlavor(v8))
    {
      *colorPrimariesCodePoint = 0;
      if (!FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 165, colorPrimariesCodePoint))
      {
        if (*colorPrimariesCodePoint)
        {
          LOBYTE(transferFunctionCodePoint[1]) = 0;
          v128 = CFDataGetBytePtr(*colorPrimariesCodePoint);
          v129 = CFDataGetLength(*colorPrimariesCodePoint);
          if (!FigHEVCBridge_GetSEIAlphaChannelInfo(v128, v129, &transferFunctionCodePoint[1]))
          {
            if (LOBYTE(transferFunctionCodePoint[1]))
            {
              v130 = &kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha;
            }

            else
            {
              v130 = &kCMFormatDescriptionAlphaChannelMode_StraightAlpha;
            }

            *(v159 + v44) = *v130;
            *(v160 + v44++) = @"AlphaChannelMode";
          }

          if (*colorPrimariesCodePoint)
          {
            CFRelease(*colorPrimariesCodePoint);
          }
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v5, @"ContainsAlphaChannel"))
  {
    v115 = *MEMORY[0x1E695E4D0];
    v116 = v115 == CFDictionaryGetValue(v5, @"ContainsAlphaChannel");
  }

  else if (FigVideoCodecTypeIsHEVCFlavor(v8) && figBridge_AlphaLayerIsPresent(v5))
  {
    *(v159 + v44) = *MEMORY[0x1E695E4D0];
    *(v160 + v44++) = @"ContainsAlphaChannel";
    v116 = 1;
  }

  else
  {
    v116 = 0;
  }

  if (v8 > 1836415072)
  {
    if (v8 <= 1902667125)
    {
      if (v8 == 1836415073)
      {
        goto LABEL_446;
      }

      v131 = 1869117027;
    }

    else
    {
      if (v8 == 1902667126 || v8 == 1902998904)
      {
        goto LABEL_446;
      }

      v131 = 1902671459;
    }
  }

  else
  {
    if (v8 > 1718908527)
    {
      if (v8 != 1718908528 && v8 != 1751479857)
      {
        v131 = 1752589105;
        goto LABEL_445;
      }

LABEL_446:
      if (v116)
      {
        colorPrimariesCodePoint[0] = 0;
        if (!FigHEVCBridge_CheckVPSPrimaryAlphaLayerCompatibility(ValueAtIndex, colorPrimariesCodePoint))
        {
          if (colorPrimariesCodePoint[0] == 2)
          {
            FigBridge_MakeFallbackExtensionsFromVUI_cold_7(a3);
          }

          else if (colorPrimariesCodePoint[0] == 1)
          {
            FigBridge_MakeFallbackExtensionsFromVUI_cold_8(a3);
          }
        }
      }

      goto LABEL_451;
    }

    if (v8 == 1667790435)
    {
      goto LABEL_446;
    }

    v131 = 1718908520;
  }

LABEL_445:
  if (v8 == v131)
  {
    goto LABEL_446;
  }

LABEL_451:
  if (!CFDictionaryContainsKey(v5, @"BitsPerComponent"))
  {
    LOBYTE(colorPrimariesCodePoint[0]) = 0;
    if (!figBridge_getSPS_VUI_ComponentBitDepth(v8, v156, v155, colorPrimariesCodePoint, v132, v133, v134, v135))
    {
      *(v159 + v44) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, colorPrimariesCodePoint);
      *(v160 + v44++) = @"BitsPerComponent";
    }
  }

  if (!v44)
  {
    return 0;
  }

  v37 = FigCFCreateExtendedDictionary(a1, v5, v160, v159, v44, &v157, v134, v135, v152);
  if (!v37 && v157)
  {
    *a4 = v157;
    CFRelease(v5);
  }

LABEL_539:
  v151 = v159;
  do
  {
    if (*v151)
    {
      CFRelease(*v151);
    }

    ++v151;
    --v44;
  }

  while (v44);
  return v37;
}

void figBridge_OverrideTransferFunctionFromAlternativeTransferCharacteristics(const __CFAllocator *a1, const void *a2, CFDictionaryRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a3)
  {
    v13 = *MEMORY[0x1E6965F30];
    Value = CFDictionaryGetValue(*a3, *MEMORY[0x1E6965F30]);
    if (!Value || !FigCFEqual(Value, a2))
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy(a1, *a3);
      CFDictionarySetValue(MutableCopy, v13, a2);
      if (*a3)
      {
        CFRelease(*a3);
      }

      *a3 = MutableCopy;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xCD3, v9, v17, v18, a9);
  }
}

uint64_t FigVideoCodecTypeIsProRes(int a1)
{
  result = 1;
  if (a1 <= 1634743415)
  {
    if (a1 != 1634742376 && a1 != 1634742888)
    {
      v3 = 13416;
LABEL_9:
      if (a1 != (v3 | 0x61700000))
      {
        return 0;
      }
    }
  }

  else if (((a1 - 1634755432) > 0xB || ((1 << (a1 - 104)) & 0x8C1) == 0) && ((a1 - 1634759272) > 6 || ((1 << (a1 - 104)) & 0x51) == 0))
  {
    v3 = 13432;
    goto LABEL_9;
  }

  return result;
}

void figBridge_GetAlphaChannelExtensionForProRes(const __CFAllocator *a1, CFDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  HIWORD(_8[0]) = 0;
  if (a2 && *a2)
  {
    FigCFDictionaryGetInt16IfPresent(*a2, @"Depth", _8 + 6, a4, a5, a6, a7, a8, v21, _8[0], _8[1], _8[2], _8[3], _8[4], _8[5], _8[6], _8[7], vars8);
    if (HIWORD(_8[0]) == 32)
    {
      v12 = CFDictionaryContainsKey(*a2, @"ContainsAlphaChannel");
      v13 = CFDictionaryContainsKey(*a2, @"AlphaChannelMode");
      if (!v12 || v13 == 0)
      {
        v15 = v13;
        MutableCopy = FigCFDictionaryCreateMutableCopy(a1, *a2);
        if (MutableCopy)
        {
          v17 = MutableCopy;
          if (!v12)
          {
            CFDictionarySetValue(MutableCopy, @"ContainsAlphaChannel", *MEMORY[0x1E695E4D0]);
          }

          if (!v15)
          {
            CFDictionarySetValue(v17, @"AlphaChannelMode", @"StraightAlpha");
          }

          if (*a2)
          {
            CFRelease(*a2);
          }

          *a2 = v17;
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xD30, v9, v19, v20, a9);
  }
}

const __CFDictionary *figBridge_Is3GP263ExtensionPresent(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"SampleDescriptionExtensionAtoms");
  if (result)
  {
    v2 = result;
    TypeID = CFDictionaryGetTypeID();
    result = 0;
    if (TypeID == CFGetTypeID(v2))
    {
      Value = CFDictionaryGetValue(v2, @"d263");
      if (Value)
      {
        v5 = Value;
        v6 = CFDataGetTypeID();
        if (v6 == CFGetTypeID(v5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t figConvertChromaLocationIndexToString(int a1)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        v2 = MEMORY[0x1E6965D38];
      }

      else
      {
        v2 = MEMORY[0x1E6965D10];
      }

      return *v2;
    }

    if (a1 == 5)
    {
      v2 = MEMORY[0x1E6965D08];
      return *v2;
    }

    if (a1 == 255)
    {
      v2 = MEMORY[0x1E6965D28];
      return *v2;
    }

LABEL_13:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0, "<<<< ImageDescriptionBridge >>>>", 0x874, v1, v4, v5, v7);
    return 0;
  }

  if (!a1)
  {
    v2 = MEMORY[0x1E6965D30];
    return *v2;
  }

  if (a1 == 1)
  {
    v2 = MEMORY[0x1E6965D20];
    return *v2;
  }

  if (a1 != 2)
  {
    goto LABEL_13;
  }

  v2 = MEMORY[0x1E6965D40];
  return *v2;
}

CFDictionaryRef figBridge_CFDictionaryCreateWithNumbers(const __CFAllocator *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  *keys = 0u;
  v29 = 0u;
  v30 = 0u;
  *values = 0u;
  v28 = 0u;
  v26 = &a9;
  if (a3)
  {
    v11 = a3;
    v12 = 0;
    v13 = *MEMORY[0x1E695E480];
    while (v12 < 10)
    {
      v14 = v26++;
      HIDWORD(v25) = *v14;
      v15 = CFNumberCreate(v13, kCFNumberSInt32Type, &v25 + 4);
      values[v12] = v15;
      if (v15)
      {
        keys[v12++] = v11;
      }

      v16 = v26++;
      v11 = *v16;
      if (!*v16)
      {
        goto LABEL_10;
      }
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0x572, v9, v18, v19, v25);
  }

  else
  {
    v12 = 0;
  }

LABEL_10:
  v20 = CFDictionaryCreate(a1, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v12 >= 1)
  {
    v21 = v12 + 1;
    v22 = &values[v12 - 1];
    do
    {
      v23 = *v22--;
      CFRelease(v23);
      --v21;
    }

    while (v21 > 1);
  }

  return v20;
}

uint64_t figBridge_getSPS_VUI_ComponentBitDepth(int a1, char *a2, unint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  result = 4294954579;
  if (a1 <= 1752589104)
  {
    if (a1 > 1685481520)
    {
      if (a1 <= 1718908519)
      {
        if (a1 == 1685481521)
        {
          goto LABEL_32;
        }

        v11 = 1685481573;
      }

      else
      {
        if (a1 == 1718908520 || a1 == 1718908528)
        {
          goto LABEL_32;
        }

        v11 = 1751479857;
      }

      goto LABEL_31;
    }

    if (a1 <= 1667790434)
    {
      if (a1 != 1635135537)
      {
        v11 = 1667524657;
        goto LABEL_31;
      }
    }

    else
    {
      if (a1 == 1667790435)
      {
        goto LABEL_32;
      }

      if (a1 != 1684108849)
      {
        v11 = 1684895096;
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

  if (a1 > 1902405680)
  {
    if (a1 <= 1902667125)
    {
      if (a1 != 1902405681 && a1 != 1902405733)
      {
        v11 = 1902407032;
        goto LABEL_31;
      }

LABEL_32:
      result = FigHEVCBridge_GetSPSBitDepths(a2, a3, &v14 + 1, &v14);
      if (result)
      {
        return result;
      }

      v12 = HIBYTE(v14);
      if (HIBYTE(v14) <= v14)
      {
        v12 = v14;
      }

      goto LABEL_35;
    }

    if (a1 == 1902667126 || a1 == 1902998904)
    {
      goto LABEL_32;
    }

    v11 = 1902671459;
LABEL_31:
    if (a1 != v11)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (a1 <= 1869117026)
  {
    if (a1 == 1752589105)
    {
      goto LABEL_32;
    }

    v11 = 1836415073;
    goto LABEL_31;
  }

  if (a1 == 1869117027)
  {
    goto LABEL_32;
  }

  if (a1 == 1902212657 || a1 == 1902403958)
  {
LABEL_28:
    result = FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord(a2, a3, 0, 0, &v14, a6, a7, a8, v13);
    v12 = v14;
LABEL_35:
    *a4 = v12;
  }

  return result;
}

size_t FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBufferWithOptionsAndReporter(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CFStringEncoding a3, const void *a4, char a5, const void *a6, CMBlockBufferRef *a7, CMBlockBufferRef *a8, CMBlockBufferRef *a9)
{
  blockBufferOut = 0;
  if (theBuffer)
  {
    dataPointerOut = 0;
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
    {
      v19 = CFRetain(theBuffer);
      blockBufferOut = v19;
    }

    else
    {
      v20 = CMBlockBufferCreateContiguous(a1, theBuffer, a1, 0, 0, DataLength, 0, &blockBufferOut);
      if (v20)
      {
        goto LABEL_9;
      }

      v19 = blockBufferOut;
    }

    CMBlockBufferGetDataPointer(v19, 0, 0, 0, &dataPointerOut);
    v20 = FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionDataWithOptionsAndReporter(a1, dataPointerOut, DataLength, a3, a4, a5, a6, a7, a8);
LABEL_9:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    return v20;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0x107E, v9, v22, v23, a9);
}

OSStatus CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(CFAllocatorRef allocator, CMVideoFormatDescriptionRef videoFormatDescription, CFStringEncoding stringEncoding, CMImageDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  v80 = 0;
  theBuffer = 0;
  v79 = 0;
  if (videoFormatDescription)
  {
    TypeID = CMFormatDescriptionGetTypeID();
    if (TypeID == CFGetTypeID(videoFormatDescription))
    {
      if (CMFormatDescriptionGetMediaType(videoFormatDescription) == 1986618469)
      {
        if (blockBufferOut)
        {
          if (flavor)
          {
            if (CFEqual(flavor, @"ISOFamily"))
            {
              v12 = 0;
              LOBYTE(flavor) = 1;
            }

            else if (CFEqual(flavor, @"3GPFamily"))
            {
              v12 = 0;
              LOBYTE(flavor) = 3;
            }

            else if (CFEqual(flavor, @"FMP4InStreamParameterSets"))
            {
              v12 = 0;
              LOBYTE(flavor) = 5;
            }

            else if (CFEqual(flavor, @"ISOFamilyWithAppleExtensions"))
            {
              LOBYTE(flavor) = 9;
              v12 = 1;
            }

            else
            {
              if (!CFEqual(flavor, @"QuickTimeMovie"))
              {
                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                v16 = v5;
                v17 = 4294954579;
                v18 = 4362;
                goto LABEL_77;
              }

              v12 = 0;
              LOBYTE(flavor) = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          MediaSubType = CMFormatDescriptionGetMediaSubType(videoFormatDescription);
          if (MediaSubType == 1785750887)
          {
            v20 = v12;
          }

          else
          {
            v20 = 1;
          }

          if ((flavor & 1) == 0)
          {
            v20 = 1;
          }

          if (v20)
          {
            v21 = MediaSubType;
          }

          else
          {
            v21 = 1835692135;
          }

          v77 = v21;
          if (v21 <= 1902403957)
          {
            if (v21 > 1902212656)
            {
              if ((v21 - 1902212657) > 0x34 || ((1 << (v21 - 49)) & 0x14000000000001) == 0)
              {
LABEL_49:
                if ((flavor & 7) != 1)
                {
                  goto LABEL_68;
                }

                if (v21 <= 1701733237)
                {
                  if (v21 > 1684890160)
                  {
                    if (v21 == 1684890161 || v21 == 1685220713)
                    {
                      goto LABEL_68;
                    }

                    v24 = 1685481521;
                  }

                  else
                  {
                    if (v21 == 1635135537 || v21 == 1635148593)
                    {
                      goto LABEL_68;
                    }

                    v24 = 1684108849;
                  }
                }

                else if (v21 <= 1785750886)
                {
                  if (v21 == 1701733238 || v21 == 1748121139)
                  {
                    goto LABEL_68;
                  }

                  v24 = 1752589105;
                }

                else if (v21 > 1836070005)
                {
                  if (v21 == 1836070006)
                  {
                    goto LABEL_68;
                  }

                  v24 = 1987063865;
                }

                else
                {
                  if (v21 == 1785750887)
                  {
                    goto LABEL_68;
                  }

                  v24 = 1835692135;
                }

                if (v21 != v24)
                {
                  emitter = fig_log_get_emitter("com.apple.coremedia", "");
                  v16 = v5;
                  v17 = 4294954579;
                  v18 = 4416;
                  goto LABEL_77;
                }

LABEL_68:
                if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v21), xmmword_197165C00))) & 1) == 0 && v21 != 1701733238 && (flavor & 2) != 0)
                {
                  emitter = fig_log_get_emitter("com.apple.coremedia", "");
                  v16 = v5;
                  v17 = 4294954579;
                  v18 = 4424;
                  goto LABEL_77;
                }

                if ((flavor & 4) != 0 && v21 != 1635148595 && v21 != 1751479857 && v21 != 1685481573)
                {
                  emitter = fig_log_get_emitter("com.apple.coremedia", "");
                  v16 = v5;
                  v17 = 4294954579;
                  v18 = 4430;
                  goto LABEL_77;
                }

                v26 = &kCMFormatDescriptionExtension_VerbatimSampleDescription;
                if (flavor)
                {
                  v26 = &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
                }

                Extension = CMFormatDescriptionGetExtension(videoFormatDescription, *v26);
                v78 = 0;
                if (Extension)
                {
                  v28 = Extension;
                  v29 = CFDataGetTypeID();
                  if (v29 == CFGetTypeID(v28))
                  {
                    Length = CFDataGetLength(v28);
                    BytePtr = CFDataGetBytePtr(v28);
                    dataPointerOut = 0;
                    v32 = CMBlockBufferCreateWithMemoryBlock(allocator, 0, Length, allocator, 0, 0, Length, 1u, &theBuffer);
                    if (!v32)
                    {
                      DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
                      if (!DataPointer)
                      {
                        memcpy(dataPointerOut, BytePtr, Length);
                        *blockBufferOut = theBuffer;
                        theBuffer = 0;
                      }

                      goto LABEL_93;
                    }

                    goto LABEL_92;
                  }
                }

                v34 = CMFormatDescriptionGetExtension(videoFormatDescription, @"RequiredButUnrecognizedFormatAtoms");
                if (v34)
                {
                  v35 = v34;
                  v36 = CFGetTypeID(v34);
                  if (v36 != CFArrayGetTypeID() || CFArrayGetCount(v35))
                  {
                    CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer_cold_1(&dataPointerOut);
                    DataPointer = dataPointerOut;
LABEL_93:
                    if (theBuffer)
                    {
                      CFRelease(theBuffer);
                    }

                    return DataPointer;
                  }
                }

                figBridge_WalkAndConvertVideoFormatDescriptionExtensions(videoFormatDescription, flavor, &v80, 0);
                v37 = v80 + 86;
                v32 = CMBlockBufferCreateWithMemoryBlock(allocator, 0, v80 + 86, allocator, 0, 0, v80 + 86, 1u, &theBuffer);
                if (v32 || (v32 = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v78)) != 0)
                {
LABEL_92:
                  DataPointer = v32;
                  goto LABEL_93;
                }

                Dimensions = CMVideoFormatDescriptionGetDimensions(videoFormatDescription);
                if (flavor)
                {
                  v49 = v78;
                  if ((flavor & 2) != 0 && v77 == 1748121139)
                  {
                    v32 = figBridge_ConvertH263SampleDescriptionExtensionToCodecType(videoFormatDescription, &v77, *&v38, *&v39, *&v40, *&v41, *&v42, *&v43, blockBufferOuta);
                    if (v32)
                    {
                      goto LABEL_92;
                    }
                  }

                  *v49 = bswap32(v37);
                  *(v49 + 1) = bswap32(v77);
                  *(v49 + 2) = 0;
                  *(v49 + 3) = 0;
                  *(v49 + 1) = 0xFFFF000000000000;
                  *(v49 + 16) = bswap32(Dimensions.width) >> 16;
                  *(v49 + 17) = bswap32(Dimensions.height) >> 16;
                  *(v49 + 36) = 0x480000004800;
                  *(v49 + 11) = 0;
                  *(v49 + 24) = 256;
                  *(v49 + 82) = -59392;
                  *(v49 + 50) = 0u;
                  *(v49 + 66) = 0u;
                }

                else
                {
                  v45 = CMFormatDescriptionGetExtension(videoFormatDescription, @"Depth");
                  if (v45)
                  {
                    v46 = v45;
                    v47 = CFNumberGetTypeID();
                    v48 = 24;
                    if (v47 == CFGetTypeID(v46))
                    {
                      LOWORD(dataPointerOut) = 0;
                      if (CFNumberGetValue(v46, kCFNumberSInt16Type, &dataPointerOut))
                      {
                        v48 = dataPointerOut;
                      }

                      else
                      {
                        v48 = 24;
                      }
                    }
                  }

                  else
                  {
                    v48 = 24;
                  }

                  v50 = v77;
                  if (v77 <= 0x28 && ((1 << v77) & 0x11701010116) != 0)
                  {
                    v77 = 1918990112;
                    v48 = v50;
                  }

                  else if (v77 == 1836069494)
                  {
                    figBridge_ConvertMPEG2ProfileExtensionToCodecType(videoFormatDescription, &v77);
                  }

                  v51 = v78;
                  *v78 = bswap32(v37);
                  *(v51 + 1) = bswap32(v77);
                  *(v51 + 1) = 0xFFFF000000000000;
                  *(v51 + 2) = 0;
                  *(v51 + 3) = 0x2000000020000;
                  *(v51 + 16) = bswap32(Dimensions.width) >> 16;
                  *(v51 + 17) = bswap32(Dimensions.height) >> 16;
                  *(v51 + 36) = 0x480000004800;
                  *(v51 + 11) = 0;
                  *(v51 + 24) = 256;
                  *(v51 + 41) = bswap32(v48) >> 16;
                  *(v51 + 42) = -1;
                  *(v51 + 50) = 0u;
                  *(v51 + 66) = 0u;
                  v52 = CMFormatDescriptionGetExtension(videoFormatDescription, @"FormatName");
                  if (!v52 || (v53 = v52, v54 = CFStringGetTypeID(), v54 != CFGetTypeID(v53)) || !CFStringGetPascalString(v53, v78 + 50, 32, stringEncoding))
                  {
                    v55 = v78;
                    if (*(v78 + 1) == 1752589105)
                    {
                      *(v78 + 25) = 18436;
                      v55[52] = 69;
                      v56 = 67;
                      LOBYTE(v57) = 86;
                      v58 = 54;
                      v59 = 53;
                    }

                    else
                    {
                      *(v78 + 25) = 9990;
                      v57 = v77;
                      v55[52] = HIBYTE(v77);
                      v55[53] = BYTE2(v57);
                      v55[54] = BYTE1(v57);
                      v56 = 39;
                      v58 = 56;
                      v59 = 55;
                    }

                    v55[v59] = v57;
                    v55[v58] = v56;
                  }

                  v60 = CMFormatDescriptionGetExtension(videoFormatDescription, @"TemporalQuality");
                  if (v60)
                  {
                    v61 = v60;
                    v62 = CFNumberGetTypeID();
                    if (v62 == CFGetTypeID(v61))
                    {
                      LODWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v61, kCFNumberSInt32Type, &dataPointerOut);
                      *(v78 + 6) = bswap32(dataPointerOut);
                    }
                  }

                  v63 = CMFormatDescriptionGetExtension(videoFormatDescription, @"SpatialQuality");
                  if (v63)
                  {
                    v64 = v63;
                    v65 = CFNumberGetTypeID();
                    if (v65 == CFGetTypeID(v64))
                    {
                      LODWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v64, kCFNumberSInt32Type, &dataPointerOut);
                      *(v78 + 7) = bswap32(dataPointerOut);
                    }
                  }

                  v66 = CMFormatDescriptionGetExtension(videoFormatDescription, @"Version");
                  if (v66)
                  {
                    v67 = v66;
                    v68 = CFNumberGetTypeID();
                    if (v68 == CFGetTypeID(v67))
                    {
                      LOWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v67, kCFNumberSInt16Type, &dataPointerOut);
                      *(v78 + 8) = bswap32(dataPointerOut) >> 16;
                    }
                  }

                  v69 = CMFormatDescriptionGetExtension(videoFormatDescription, @"RevisionLevel");
                  if (v69)
                  {
                    v70 = v69;
                    v71 = CFNumberGetTypeID();
                    if (v71 == CFGetTypeID(v70))
                    {
                      LOWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v70, kCFNumberSInt16Type, &dataPointerOut);
                      *(v78 + 9) = bswap32(dataPointerOut) >> 16;
                    }
                  }

                  v72 = CMFormatDescriptionGetExtension(videoFormatDescription, @"Vendor");
                  if (v72)
                  {
                    v73 = v72;
                    v74 = CFStringGetTypeID();
                    if (v74 == CFGetTypeID(v73))
                    {
                      v84.location = 0;
                      v84.length = 4;
                      if (CFStringGetBytes(v73, v84, 0, 0, 0, v78 + 20, 4, 0) != 4)
                      {
                        *(v78 + 5) = 0;
                      }
                    }
                  }
                }

                if (v80)
                {
                  dataPointerOut = 0;
                  v32 = CMBlockBufferGetDataPointer(theBuffer, 0x56uLL, 0, 0, &dataPointerOut);
                  if (v32)
                  {
                    goto LABEL_92;
                  }

                  figBridge_WalkAndConvertVideoFormatDescriptionExtensions(videoFormatDescription, flavor, &v79, dataPointerOut);
                }

                DataPointer = 0;
                *blockBufferOut = theBuffer;
                return DataPointer;
              }
            }

            else if (v21 != 1667331683 && v21 != 1667524657)
            {
              v23 = 1667790435;
              goto LABEL_47;
            }
          }

          else if (v21 <= 1902407031)
          {
            if (v21 != 1902403958 && v21 != 1902405681)
            {
              v23 = 1902405733;
              goto LABEL_47;
            }
          }

          else if (v21 > 1902671458)
          {
            if (v21 != 1902998904)
            {
              v22 = 30307;
              goto LABEL_46;
            }
          }

          else if (v21 != 1902407032)
          {
            v22 = 25974;
LABEL_46:
            v23 = v22 | 0x71680000;
LABEL_47:
            if (v21 != v23)
            {
              goto LABEL_49;
            }
          }

          v77 = 1701733238;
          v21 = 1701733238;
          goto LABEL_49;
        }

        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v16 = v5;
        v17 = 4294954584;
        v18 = 4346;
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v16 = v5;
        v17 = 4294954584;
        v18 = 4344;
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v16 = v5;
      v17 = 4294954584;
      v18 = 4342;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v5;
    v17 = 4294954584;
    v18 = 4340;
  }

LABEL_77:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<<<< ImageDescriptionBridge >>>>", v18, v16, v14, v15, v83);
}

CFTypeID figBridge_WalkAndConvertVideoFormatDescriptionExtensions(const opaqueCMFormatDescription *a1, char a2, void *a3, uint64_t a4)
{
  v187 = 0;
  Extension = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
  v184 = a2;
  if (Extension)
  {
    v9 = Extension;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v9))
    {
      Count = CFDictionaryGetCount(v9);
      if (Count)
      {
        v12 = Count;
        v13 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        v14 = malloc_type_calloc(v12, 8uLL, 0x6004044C4A2DFuLL);
        if (v13)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        v182 = v13;
        v186 = v14;
        if (v15)
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x1576, v4, v17, v18, usedBufLen);
        }

        else
        {
          v19 = v14;
          v183 = a4;
          v180 = a3;
          CFDictionaryGetKeysAndValues(v9, v13, v14);
          v20 = 0;
          v21 = 0;
          v22 = v13;
          v23 = v19;
          do
          {
            v24 = v22[v21];
            v25 = v23[v21];
            v26 = CFStringGetTypeID();
            if (v26 == CFGetTypeID(v24) && CFStringGetPascalString(v24, buffer, 5, 0) && buffer[0] == 4)
            {
              v28 = bswap32(*&buffer[1]);
              if (v28)
              {
                v29 = CFGetTypeID(v25);
                if (CFDataGetTypeID() == v29)
                {
                  Length = CFDataGetLength(v25);
                  v31 = (Length + 8);
                  if (v183)
                  {
                    *(v183 + v20) = bswap64(v28 | (v31 << 32));
                    BytePtr = CFDataGetBytePtr(v25);
                    memcpy((v183 + v20 + 8), BytePtr, Length);
                  }

                  v20 += v31;
                  v22 = v182;
                }

                else if (CFArrayGetTypeID() == v29)
                {
                  v179 = v28;
                  v33 = CFArrayGetCount(v25);
                  if (v33)
                  {
                    v34 = v33;
                    for (i = 0; i != v34; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v25, i);
                      v37 = CFDataGetTypeID();
                      if (v37 == CFGetTypeID(ValueAtIndex))
                      {
                        v38 = CFDataGetLength(ValueAtIndex);
                        v39 = (v38 + 8);
                        if (v183)
                        {
                          *(v183 + v20) = bswap64(v179 | (v39 << 32));
                          v40 = CFDataGetBytePtr(ValueAtIndex);
                          v22 = v182;
                          memcpy((v183 + v20 + 8), v40, v38);
                        }

                        v20 += v39;
                        a2 = v184;
                      }

                      v23 = v186;
                    }
                  }
                }
              }
            }

            ++v21;
          }

          while (v21 != v12);
          v187 = v20;
          a3 = v180;
          a4 = v183;
        }

        if (v182)
        {
          free(v182);
        }

        if (v186)
        {
          free(v186);
        }
      }
    }
  }

  v41 = v187;
  if (a4)
  {
    v42 = a4 + v187;
  }

  else
  {
    v42 = 0;
  }

  if ((a2 & 2) != 0)
  {
    v47 = a1;
    goto LABEL_96;
  }

  v43 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965D88]);
  if (v43)
  {
    v44 = v43;
    v45 = CFGetTypeID(v43);
    if (v45 == CFStringGetTypeID())
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v48 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  v49 = v48;
  if (v48)
  {
    v50 = CFGetTypeID(v48);
    if (v50 != CFStringGetTypeID())
    {
      v49 = 0;
    }
  }

  v51 = a2 & 1;
  v52 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F98]);
  v181 = a3;
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFStringGetTypeID())
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v55 = 0;
  }

  v56 = CMFormatDescriptionGetExtension(a1, @"FullRangeVideo");
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(v46);
  v59 = CVTransferFunctionGetIntegerCodePointForString(v49);
  v60 = CVYCbCrMatrixGetIntegerCodePointForString(v55);
  if (MediaSubType > 1836415072)
  {
    if (MediaSubType <= 1902667125)
    {
      if (MediaSubType == 1836415073)
      {
        goto LABEL_67;
      }

      v61 = 1869117027;
    }

    else
    {
      if (MediaSubType == 1902667126 || MediaSubType == 1902998904)
      {
        goto LABEL_67;
      }

      v61 = 1902671459;
    }

LABEL_66:
    if (MediaSubType != v61)
    {
      goto LABEL_77;
    }

    goto LABEL_67;
  }

  if (MediaSubType <= 1718908527)
  {
    if (MediaSubType == 1667790435)
    {
      goto LABEL_67;
    }

    v61 = 1718908520;
    goto LABEL_66;
  }

  if (MediaSubType != 1718908528 && MediaSubType != 1751479857)
  {
    v61 = 1752589105;
    goto LABEL_66;
  }

LABEL_67:
  if (v59 == 18)
  {
    if (v51)
    {
      v62 = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
      if (v62)
      {
        v63 = v62;
        v64 = CFGetTypeID(v62);
        if (v64 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v63, @"hvcC");
          if (Value)
          {
            v72 = CFArrayGetTypeID();
            if (v72 == CFGetTypeID(Value))
            {
              Value = CFArrayGetValueAtIndex(Value, 0);
            }
          }

          buffer[0] = 0;
          if (!FigHEVCBridge_GetATCSEI(Value, buffer, v65, v66, v67, v68, v69, v70, usedBufLen))
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (CMFormatDescriptionGetExtension(a1, @"AlternativeTransferCharacteristics"))
    {
LABEL_70:
      v59 = 14;
    }
  }

LABEL_77:
  if (IntegerCodePointForString == 2 && v59 == 2 && v60 == 2)
  {
    v47 = a1;
    v73 = CMFormatDescriptionGetExtension(a1, @"CVImageBufferICCProfile");
    if (v73)
    {
      v74 = v73;
      v75 = CFDataGetTypeID();
      a3 = v181;
      a2 = v184;
      if (v75 == CFGetTypeID(v74))
      {
        v76 = CFDataGetLength(v74);
        v77 = v76 + 12;
        if (v42)
        {
          *v42 = bswap32(v77) | 0x726C6F6300000000;
          *(v42 + 8) = 1718579824;
          v78 = CFDataGetBytePtr(v74);
          memcpy((v42 + 12), v78, v76);
        }
      }

      else
      {
        v77 = 0;
      }

      goto LABEL_92;
    }

    v77 = 0;
  }

  else
  {
    v77 = v51 | 0x12;
    v47 = a1;
    if (v42)
    {
      *v42 = (v77 << 24) | 0x726C6F6300000000;
      v79 = v51 ? 2020369262 : 1668047726;
      *(v42 + 8) = v79;
      *(v42 + 12) = bswap32(IntegerCodePointForString) >> 16;
      *(v42 + 14) = bswap32(v59) >> 16;
      *(v42 + 16) = bswap32(v60) >> 16;
      if (v51)
      {
        *(v42 + 18) = (*MEMORY[0x1E695E4D0] == v56) << 7;
      }
    }
  }

  a3 = v181;
  a2 = v184;
LABEL_92:
  v187 = v77;
  if (v42)
  {
    v42 += v77;
  }

  else
  {
    v42 = 0;
  }

  v41 += v77;
LABEL_96:
  *buffer = 0;
  v80 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965E80]);
  if (v80 && (v81 = v80, v82 = CFNumberGetTypeID(), v82 == CFGetTypeID(v81)) && CFNumberGetValue(v81, kCFNumberDoubleType, buffer) && (v83 = vcvtd_n_s64_f64(*buffer, 0x10uLL)) != 0)
  {
    if (v42)
    {
      *v42 = 0x616D61670C000000;
      *(v42 + 8) = bswap32(v83);
    }

    v84 = 12;
  }

  else
  {
    v84 = 0;
  }

  v187 = v84;
  if (v42)
  {
    v85 = v42 + v84;
  }

  else
  {
    v85 = 0;
  }

  buffer[0] = 0;
  v86 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965E50]);
  v87 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965E58]);
  if (v86)
  {
    v88 = CFNumberGetTypeID();
    if (v88 == CFGetTypeID(v86))
    {
      CFNumberGetValue(v86, kCFNumberSInt8Type, buffer);
    }
  }

  if (v87 && (v89 = CFStringGetTypeID(), v89 == CFGetTypeID(v87)))
  {
    if (CFEqual(v87, *MEMORY[0x1E6965E78]))
    {
      v90 = 1;
    }

    else if (CFEqual(v87, *MEMORY[0x1E6965E70]))
    {
      v90 = 6;
    }

    else if (CFEqual(v87, *MEMORY[0x1E6965E60]))
    {
      v90 = 9;
    }

    else if (CFEqual(v87, *MEMORY[0x1E6965E68]))
    {
      v90 = 14;
    }

    else
    {
      v90 = 0;
    }
  }

  else
  {
    v90 = 0;
  }

  v91 = buffer[0];
  if (buffer[0])
  {
    if (v85)
    {
      *v85 = 0x6C6569660A000000;
      *(v85 + 8) = v91;
      *(v85 + 9) = v90;
    }

    v92 = 10;
  }

  else
  {
    v92 = 0;
  }

  v187 = v92;
  if (v85)
  {
    v93 = v85 + v92;
  }

  else
  {
    v93 = 0;
  }

  v94 = v84 + v41 + v92;
  *buffer = 0;
  v95 = CMFormatDescriptionGetExtension(v47, @"CVBytesPerRow");
  if (v95 && (v96 = v95, v97 = CFNumberGetTypeID(), v97 == CFGetTypeID(v96)) && CFNumberGetValue(v96, kCFNumberSInt32Type, buffer))
  {
    if (v93)
    {
      *v93 = 0x62776F720C000000;
      *(v93 + 8) = bswap32(*buffer);
    }

    v98 = 12;
  }

  else
  {
    v98 = 0;
  }

  v187 = v98;
  if (v93)
  {
    v99 = v93 + v98;
  }

  else
  {
    v99 = 0;
  }

  v100 = v94 + v98;
  buffer[0] = 0;
  valuePtr[4] = 0;
  v101 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965D00]);
  v102 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965CF0]);
  if (v101 && (v103 = v102, v104 = CFStringGetTypeID(), v104 == CFGetTypeID(v101)) && figBridge_ConvertChromaLocationStringToUInt8(v101, buffer))
  {
    if (!v103 || (v105 = CFStringGetTypeID(), v105 != CFGetTypeID(v103)) || !figBridge_ConvertChromaLocationStringToUInt8(v103, &valuePtr[4]))
    {
      valuePtr[4] = buffer[0];
    }

    if (v99)
    {
      *v99 = 0x6D7268630A000000;
      *(v99 + 8) = buffer[0];
      *(v99 + 9) = valuePtr[4];
    }

    v106 = 10;
  }

  else
  {
    v106 = 0;
  }

  v187 = v106;
  if (v99)
  {
    v107 = (v99 + v106);
  }

  else
  {
    v107 = 0;
  }

  v108 = v100 + v106;
  *buffer = 0;
  *&valuePtr[4] = 0;
  v109 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965EF8]);
  if (!v109)
  {
    goto LABEL_159;
  }

  v110 = v109;
  v111 = CFGetTypeID(v109);
  if (v111 != CFDictionaryGetTypeID())
  {
    goto LABEL_159;
  }

  v112 = CFDictionaryGetValue(v110, *MEMORY[0x1E6965EF0]);
  v113 = CFDictionaryGetValue(v110, *MEMORY[0x1E6965F00]);
  if (v112)
  {
    v114 = CFNumberGetTypeID();
    if (v114 == CFGetTypeID(v112))
    {
      CFNumberGetValue(v112, kCFNumberSInt32Type, buffer);
    }
  }

  if (v113 && (v115 = CFNumberGetTypeID(), v115 == CFGetTypeID(v113)))
  {
    CFNumberGetValue(v113, kCFNumberSInt32Type, &valuePtr[4]);
    v116 = 0;
    if (*buffer >= 1 && *&valuePtr[4] >= 1)
    {
      if (v107)
      {
        v117 = bswap64(*&valuePtr[4] | (*buffer << 32));
        *v107 = 0x7073617010000000;
        v107[1] = v117;
      }

      v116 = 2;
    }
  }

  else
  {
LABEL_159:
    v116 = 0;
  }

  v187 = v116 * 8;
  if (v107)
  {
    v118 = &v107[v116];
  }

  else
  {
    v118 = 0;
  }

  VEXUBridge_ConvertVideoExtendedUsageExtensionToAtom(v47, &v187, v118);
  if (v118)
  {
    v119 = &v118[v187];
  }

  else
  {
    v119 = 0;
  }

  v120 = v108 + v116 * 8 + v187;
  *buffer = 0;
  *valuePtr = 0;
  v190 = 0;
  v188 = 0;
  v189 = 0;
  v121 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965D70]);
  if (v121 && (v122 = v121, v123 = CFGetTypeID(v121), v123 == CFDictionaryGetTypeID()))
  {
    figBridge_ReadRationalOrIntegerFromDictionary(v122, @"WidthAsRational", *MEMORY[0x1E6965D80], buffer, &valuePtr[4]);
    figBridge_ReadRationalOrIntegerFromDictionary(v122, @"HeightAsRational", *MEMORY[0x1E6965D60], valuePtr, &v190);
    figBridge_ReadRationalOrIntegerFromDictionary(v122, @"HorizontalOffsetAsRational", *MEMORY[0x1E6965D68], &v189 + 4, &v189);
    figBridge_ReadRationalOrIntegerFromDictionary(v122, @"VerticalOffsetAsRational", *MEMORY[0x1E6965D78], &v188 + 4, &v188);
    v124 = 0;
    v125 = *buffer;
    if (*buffer)
    {
      v126 = *valuePtr;
      if (*valuePtr)
      {
        v127 = *&valuePtr[4];
        if (*&valuePtr[4])
        {
          v128 = v190;
          if (v190)
          {
            v129 = v189;
            if (v189)
            {
              v130 = v188;
              if (v188)
              {
                if (v119)
                {
                  *v119 = 0x70616C6328000000;
                  v131 = bswap32(v125);
                  v132 = bswap32(v127);
                  v133 = bswap32(v128);
                  v134 = bswap32(HIDWORD(v189));
                  v135 = bswap32(HIDWORD(v188));
                  *(v119 + 2) = v131;
                  *(v119 + 3) = v132;
                  *(v119 + 4) = bswap32(v126);
                  *(v119 + 5) = v133;
                  *(v119 + 6) = v134;
                  *(v119 + 7) = bswap32(v129);
                  *(v119 + 8) = v135;
                  *(v119 + 9) = bswap32(v130);
                }

                v124 = 40;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v124 = 0;
  }

  v187 = v124;
  if (v119)
  {
    v136 = &v119[v124];
  }

  else
  {
    v136 = 0;
  }

  v137 = v120 + v124;
  if ((a2 & 2) == 0)
  {
    figBridge_ConvertCFDataExtensionToAtom(v47, &v187, v136, @"MasteringDisplayColorVolume", 0x6D646376u);
    v138 = v187;
    if (v136)
    {
      v139 = &v136[v187];
    }

    else
    {
      v139 = 0;
    }

    figBridge_ConvertCFDataExtensionToAtom(v47, &v187, v139, @"ContentLightLevelInfo", 0x636C6C69u);
    if (v139)
    {
      v140 = &v139[v187];
    }

    else
    {
      v140 = 0;
    }

    v141 = v138 + v187;
    figBridge_ConvertCFDataExtensionToAtom(v47, &v187, v140, @"AmbientViewingEnvironment", 0x616D7665u);
    if (v140)
    {
      v142 = &v140[v187];
    }

    else
    {
      v142 = 0;
    }

    v143 = v141 + v187;
    figBridge_ConvertCFDataExtensionToAtom(v47, &v187, v142, @"ContentColorVolume", 0x63636C76u);
    if (v142)
    {
      v136 = &v142[v187];
    }

    else
    {
      v136 = 0;
    }

    v137 += v143 + v187;
  }

  if ((a2 & 1) == 0)
  {
    v144 = CMFormatDescriptionGetMediaSubType(v47);
    v145 = CMFormatDescriptionGetExtension(v47, @"AlternativeTransferCharacteristics");
    if (!v145 || (v146 = v145, v147 = CFGetTypeID(v145), v147 != CFStringGetTypeID()))
    {
      v148 = 0;
      goto LABEL_221;
    }

    v148 = 0;
    if (v144 > 1836415072)
    {
      if (v144 > 1902667125)
      {
        if (v144 == 1902667126 || v144 == 1902998904)
        {
          goto LABEL_218;
        }

        v149 = 1902671459;
        goto LABEL_217;
      }

      if (v144 != 1836415073)
      {
        v149 = 1869117027;
        goto LABEL_217;
      }
    }

    else
    {
      if (v144 > 1718908527)
      {
        if (v144 == 1718908528 || v144 == 1751479857)
        {
          goto LABEL_218;
        }

        v149 = 1752589105;
LABEL_217:
        if (v144 == v149)
        {
          goto LABEL_218;
        }

LABEL_221:
        v187 = v148;
        if (v136)
        {
          v136 += v148;
        }

        else
        {
          v136 = 0;
        }

        v137 += v148;
        goto LABEL_225;
      }

      if (v144 != 1667790435)
      {
        v149 = 1718908520;
        goto LABEL_217;
      }
    }

LABEL_218:
    v150 = CVTransferFunctionGetIntegerCodePointForString(v146);
    if (v136)
    {
      *v136 = 0x6863746109000000;
      v136[8] = v150;
    }

    v148 = 9;
    goto LABEL_221;
  }

LABEL_225:
  v151 = CMFormatDescriptionGetExtension(v47, @"AlphaChannelMode");
  if (FigCFEqual(v151, @"StraightAlpha"))
  {
    v152 = 0x10000;
    if (!v136)
    {
LABEL_228:
      v153 = 12;
      goto LABEL_229;
    }

LABEL_227:
    *v136 = 0x6F6D6C610C000000;
    *(v136 + 2) = v152;
    goto LABEL_228;
  }

  if (FigCFEqual(v151, @"PremultipliedAlpha"))
  {
    v152 = 33619968;
    if (!v136)
    {
      goto LABEL_228;
    }

    goto LABEL_227;
  }

  v153 = 0;
LABEL_229:
  v187 = v153;
  if (v136)
  {
    v154 = &v136[v153];
  }

  else
  {
    v154 = 0;
  }

  v155 = v153 + v137;
  v156 = CMFormatDescriptionGetExtension(v47, @"AuxiliaryTypeInfo");
  if (v156 && (v157 = v156, v158 = CFStringGetTypeID(), v158 == CFGetTypeID(v157)))
  {
    v159 = CFStringGetLength(v157);
    *buffer = 0;
    v193.location = 0;
    v193.length = v159;
    v160 = 0;
    if (CFStringGetBytes(v157, v193, 0x8000100u, 0, 0, 0, 0, buffer) == v159)
    {
      v161 = 0;
      if (*buffer >= 1)
      {
        v161 = malloc_type_malloc(*buffer + 1, 0x62240A63uLL);
        *&valuePtr[4] = 0;
        v194.location = 0;
        v194.length = v159;
        if (CFStringGetBytes(v157, v194, 0x8000100u, 0, 0, v161, *buffer, &valuePtr[4]) == v159 && *buffer == *&valuePtr[4])
        {
          v161[*buffer] = 0;
          v162 = *buffer;
          v163 = ++*buffer;
          v160 = (v162 + 9);
          if (v154)
          {
            *v154 = bswap32(v160) | 0x6978756100000000;
            memcpy(v154 + 1, v161, v163);
          }
        }

        else
        {
          v160 = 0;
        }
      }
    }

    else
    {
      v161 = 0;
    }
  }

  else
  {
    v160 = 0;
    v161 = 0;
  }

  v187 = v160;
  free(v161);
  if (v154)
  {
    v164 = v154 + v187;
  }

  else
  {
    v164 = 0;
  }

  v165 = v155 + v187;
  *buffer = 0;
  result = CMFormatDescriptionGetExtension(v47, @"HorizontalFieldOfView");
  if (result && (v167 = result, v168 = CFNumberGetTypeID(), result = CFGetTypeID(v167), v168 == result) && (result = CFNumberGetValue(v167, kCFNumberSInt32Type, buffer), result))
  {
    if (v164)
    {
      *v164 = 0x766F66680C000000;
      *(v164 + 2) = bswap32(*buffer);
    }

    v169 = 12;
  }

  else
  {
    v169 = 0;
  }

  v187 = v169;
  if (v164)
  {
    v170 = &v164[v169];
  }

  else
  {
    v170 = 0;
  }

  v171 = v165 + v169;
  if (a2)
  {
LABEL_269:
    if (!a3)
    {
      return result;
    }

    goto LABEL_270;
  }

  result = CMFormatDescriptionGetExtension(v47, @"LogTransferFunction");
  if (result && (v172 = result, v173 = CFGetTypeID(result), result = CFStringGetTypeID(), v173 == result) && (v174 = CFStringGetLength(v172), *buffer = 0, v195.location = 0, v195.length = v174, result = CFStringGetBytes(v172, v195, 0x600u, 0, 0, 0, 0, buffer), result == v174) && (v175 = *buffer, (*buffer - 1) <= 0xFFFFFFF6))
  {
    v176 = (*buffer + 8);
    if (v170)
    {
      *&valuePtr[4] = 0;
      *v170 = bswap32(v176) | 0x73676F6C00000000;
      v196.location = 0;
      v196.length = v174;
      result = CFStringGetBytes(v172, v196, 0x600u, 0, 0, v170 + 8, *&v175, &valuePtr[4]);
    }
  }

  else
  {
    v176 = 0;
  }

  if (v170)
  {
    v177 = &v170[v176];
  }

  else
  {
    v177 = 0;
  }

  if (v176 + v171)
  {
    if (v177)
    {
      *v177 = 0;
    }

    v171 += v176 + 4;
    goto LABEL_269;
  }

  v171 = 0;
  if (a3)
  {
LABEL_270:
    *a3 = v171;
  }

  return result;
}

size_t figBridge_ConvertH263SampleDescriptionExtensionToCodecType(const opaqueCMFormatDescription *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (Extensions && figBridge_Is3GP263ExtensionPresent(Extensions))
  {
    *a2 = 1932670515;
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0x167E, v9, v14, v15, a9);
  }
}

CFTypeID figBridge_ConvertMPEG2ProfileExtensionToCodecType(const opaqueCMFormatDescription *a1, void *a2)
{
  result = CMFormatDescriptionGetExtension(a1, @"ConformsToMPEG2VideoProfile");
  if (result)
  {
    v4 = result;
    TypeID = CFNumberGetTypeID();
    result = CFGetTypeID(v4);
    if (TypeID == result)
    {

      return CFNumberGetValue(v4, kCFNumberSInt32Type, a2);
    }
  }

  return result;
}

uint64_t figBridge_FlipImageDescriptionData(uint64_t a1, unint64_t a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figBridge_FlipImageDescriptionData_cold_5(&v27);
    return v27;
  }

  v3 = bswap32(*a1);
  if (a3)
  {
    v3 = *a1;
  }

  if (v3 < 0x56 || v3 > a2)
  {
    figBridge_FlipImageDescriptionData_cold_4(&v27);
    return v27;
  }

  v5 = *(a1 + 84);
  if (!*(a1 + 84))
  {
    if (v3 <= 0x65)
    {
      figBridge_FlipImageDescriptionData_cold_3(&v27);
    }

    else
    {
      v7 = *(a1 + 92);
      v8 = bswap32(v7) >> 16;
      if (!a3)
      {
        LOWORD(v7) = v8;
      }

      if ((v7 & 0x8000) != 0)
      {
        figBridge_FlipImageDescriptionData_cold_2(&v27);
      }

      else
      {
        if (8 * v7 + 102 <= v3)
        {
          v6 = a1 + 86;
          goto LABEL_16;
        }

        figBridge_FlipImageDescriptionData_cold_1(&v27);
      }
    }

    return v27;
  }

  v6 = 0;
LABEL_16:
  v9 = *(a1 + 8);
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  v12 = *(a1 + 34);
  v13 = *(a1 + 44);
  v14 = *(a1 + 48);
  v15 = *(a1 + 66);
  v27 = *(a1 + 50);
  v28 = v15;
  *&v15 = vrev16_s8(*(a1 + 12));
  v16 = vrev32_s8(*(a1 + 20));
  v17 = vrev32_s8(*(a1 + 36));
  v18 = bswap32(*(a1 + 82)) >> 16;
  v19 = bswap32(*(a1 + 84)) >> 16;
  *a1 = vrev32_s8(*a1);
  *(a1 + 8) = bswap32(v9);
  *(a1 + 12) = v15;
  *(a1 + 20) = v16;
  *(a1 + 28) = bswap32(v10);
  *(a1 + 32) = bswap32(v11) >> 16;
  *(a1 + 34) = bswap32(v12) >> 16;
  *(a1 + 36) = v17;
  *(a1 + 44) = bswap32(v13);
  *(a1 + 48) = bswap32(v14) >> 16;
  v20 = v27;
  *(a1 + 66) = v28;
  *(a1 + 50) = v20;
  *(a1 + 82) = v18;
  *(a1 + 84) = v19;
  if (!v5)
  {
    v21 = *(v6 + 6);
    v22 = bswap32(v21) >> 16;
    if (!a3)
    {
      LOWORD(v21) = v22;
    }

    v21 = v21;
    *v6 = bswap32(*v6) | ((bswap32(HIDWORD(*v6)) >> 16) << 32) | (__rev16(HIWORD(*v6)) << 48);
    if (v21 >= 1)
    {
      v23 = (a1 + 94);
      do
      {
        v24 = bswap32(*v23);
        *v23 = HIWORD(v24) | (v24 << 16) | ((bswap32(HIDWORD(*v23)) >> 16) << 32) | (__rev16(HIWORD(*v23)) << 48);
        ++v23;
        v25 = v21--;
      }

      while (v25 > 1);
    }
  }

  return 0;
}

size_t figBridge_WrapPayloadAsCFData(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, void *a4, UInt8 *bytes, CFIndex length, CFTypeRef cf)
{
  if (a2)
  {
    *(a2 + 8 * *a4) = CFRetain(cf);
  }

  if (a3 && (v13 = CFDataCreate(allocator, bytes, length), (*(a3 + 8 * *a4) = v13) == 0))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x5BB, v7, v16, v17, v18);
  }

  else
  {
    result = 0;
  }

  ++*a4;
  return result;
}

CFArrayRef figBridge_CFArrayCreateWithTwoIntegers(const __CFAllocator *a1, int a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a3;
  valuePtr = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  values = v5;
  v6 = CFNumberCreate(v4, kCFNumberIntType, &v10);
  cf = v6;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = CFArrayCreate(a1, &values, 2, MEMORY[0x1E695E9C0]);
    v5 = values;
    if (!values)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  if (v5)
  {
LABEL_9:
    CFRelease(v5);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t figBridge_GetConciseProtectedCodecTypeFromSinfData(uint64_t a1, uint64_t a2)
{
  OriginalFormatFromSinf = FigBridgeGetOriginalFormatFromSinf(a1, a2);
  CommonEncryptionScheme = FigBridgeGetCommonEncryptionScheme(a1, a2);
  v6 = &dword_197165C18;
  v7 = 21;
  while (OriginalFormatFromSinf != *(v6 - 2) || CommonEncryptionScheme != *(v6 - 1))
  {
    v6 += 3;
    if (!--v7)
    {
      return 0;
    }
  }

  return *v6;
}

const __CFData *figBridge_ConvertCFDataExtensionToAtom(const opaqueCMFormatDescription *a1, void *a2, _DWORD *a3, CFStringRef extensionKey, unsigned int a5)
{
  result = CMFormatDescriptionGetExtension(a1, extensionKey);
  if (result && (v9 = result, TypeID = CFDataGetTypeID(), result = CFGetTypeID(v9), TypeID == result) && (result = CFDataGetLength(v9), result <= 0xFFFFFFF7))
  {
    v11 = result;
    v12 = (result + 8);
    if (a3)
    {
      *a3 = bswap32(v12);
      a3[1] = bswap32(a5);
      BytePtr = CFDataGetBytePtr(v9);
      result = memcpy(a3 + 2, BytePtr, v11);
    }
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t figBridge_ConvertChromaLocationStringToUInt8(const void *a1, char *a2)
{
  if (CFEqual(a1, *MEMORY[0x1E6965D30]))
  {
    v4 = 0;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D20]))
  {
    v4 = 1;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D40]))
  {
    v4 = 2;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D38]))
  {
    v4 = 3;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D10]))
  {
    v4 = 4;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D08]))
  {
    v4 = 5;
  }

  else
  {
    result = CFEqual(a1, *MEMORY[0x1E6965D28]);
    if (!result)
    {
      return result;
    }

    v4 = -1;
  }

  *a2 = v4;
  return 1;
}

CFTypeID figBridge_ReadRationalOrIntegerFromDictionary(const __CFDictionary *a1, const void *a2, const void *a3, void *a4, _DWORD *a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v10 = Value, v11 = CFArrayGetTypeID(), v11 == CFGetTypeID(v10)) && CFArrayGetCount(v10) == 2 && (ValueAtIndex = CFArrayGetValueAtIndex(v10, 0), v13 = CFArrayGetValueAtIndex(v10, 1), ValueAtIndex) && (v14 = v13, v15 = CFNumberGetTypeID(), v15 == CFGetTypeID(ValueAtIndex)) && v14 && (v16 = CFNumberGetTypeID(), v16 == CFGetTypeID(v14)))
  {
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a4);

    return CFNumberGetValue(v14, kCFNumberSInt32Type, a5);
  }

  else
  {
    result = CFDictionaryGetValue(a1, a3);
    if (result)
    {
      v18 = result;
      TypeID = CFNumberGetTypeID();
      result = CFGetTypeID(v18);
      if (TypeID == result)
      {
        result = CFNumberGetValue(v18, kCFNumberSInt32Type, a4);
        *a5 = 1;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_19(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{

  return FigHEVCBridge_GetHEVCParameterSetAtIndex(a1, 32, 0, a4, a5, 0, 0);
}

void OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  figSoundBridge_ReportParsingFailureMessage(v10, va);
}

uint64_t OUTLINED_FUNCTION_5_17(int a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return snprintf(va, 0x100uLL, a3, a4, a5, a6, a7, a8);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(unint64_t a1, unint64_t a2, _BYTE *a3, _WORD *a4, CFMutableDictionaryRef *a5)
{
  result = 4294954582;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v526 = a2;
  v527 = 0;
  HIBYTE(v525) = 32;
  v530 = a1;
  v531 = a2;
  v534 = 0;
  v532 = a1;
  v533 = a1 + a2;
  result = CopyNextWord(&v530);
  if (result)
  {
    return result;
  }

  v17 = v532;
  v18 = v533;
  if (v532 >= v533)
  {
    goto LABEL_115;
  }

  Bits = 0;
  while (1)
  {
    v20 = v18 - v17;
    v21 = HIDWORD(v533) || v20 > 4;
    v22 = Bits;
    if (!v21 || Bits == 3)
    {
      break;
    }

    Bits = GetBits(&v530, 8, v11, v12, v13, v14, v15, v16);
    v17 = v532;
    v18 = v533;
    if (v532 >= v533)
    {
      v22 = Bits;
      break;
    }
  }

  if (v22 != 3)
  {
LABEL_115:
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_1(&v535);
    goto LABEL_118;
  }

  v528 = 0;
  if (!GetBERInteger(&v530, &v528, v11, v12, v13, v14, v15, v16))
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_6(&v535);
    goto LABEL_118;
  }

  if (v528 <= 0)
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_5(&v535);
    goto LABEL_118;
  }

  if (v532 >= v533 || v533 - (v534 + v532) + (HIDWORD(v533) >> 3) < v528)
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_4(&v535);
    goto LABEL_118;
  }

  if (v533 - v532 <= 4 && !HIDWORD(v533))
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_3(&v535);
    goto LABEL_118;
  }

  SkipBits(&v530, 0x10u, v24, v25, v26, v27, v28, v29);
  v36 = GetBits(&v530, 8, v30, v31, v32, v33, v34, v35);
  v43 = v36;
  if (v36 < 0)
  {
    SkipBits(&v530, 0x10u, v37, v38, v39, v40, v41, v42);
    if ((v43 & 0x40) == 0)
    {
LABEL_24:
      if ((v43 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v36 & 0x40) == 0)
  {
    goto LABEL_24;
  }

  v52 = GetBits(&v530, 8, v37, v38, v39, v40, v41, v42);
  SkipBits(&v530, 8 * v52 + 8, v53, v54, v55, v56, v57, v58);
  if ((v43 & 0x20) != 0)
  {
LABEL_25:
    SkipBits(&v530, 0x10u, v37, v38, v39, v40, v41, v42);
  }

LABEL_26:
  if (v532 < v533 && (v533 - v532 > 4 || HIDWORD(v533)))
  {
    result = MP4Brige_ParseDecoderConfigDescriptor(&v530, &v525 + 7, &v527, &v526, v39, v40, v41, v42);
    if (result)
    {
      return result;
    }

    goto LABEL_30;
  }

  FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_2(&v535);
LABEL_118:
  result = v535;
  if (v535)
  {
    return result;
  }

LABEL_30:
  v48 = HIBYTE(v525);
  if (a3)
  {
    *a3 = HIBYTE(v525);
  }

  result = 0;
  if (v48 > 101)
  {
    if (v48 >= 105)
    {
      if (v48 <= 106)
      {
        if (v48 != 105)
        {
          v49 = v526;
          if (!v526)
          {
            return 0;
          }

          v50 = a1 + v527;
          v51 = 0;
          return MP4Bridge_ParseMPEGVideoSequenceHeader(v50, v49, v51, a5, v44, v45, v46, v47, v525);
        }

        goto LABEL_67;
      }

      if (v48 == 107)
      {
LABEL_67:
        if (v526)
        {
          if (v526 <= 5)
          {
            FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_11();
          }

          else
          {
            v530 = a1 + v527;
            v531 = v526;
            v534 = 0;
            v532 = a1 + v527;
            v533 = a1 + v527 + v526;
            if (!CopyNextWord(&v530))
            {
              SkipBits(&v530, 0xBu, v153, v154, v155, v156, v157, v158);
              v165 = GetBits(&v530, 2, v159, v160, v161, v162, v163, v164);
              if (v165 == 1)
              {
                FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_10();
              }

              else
              {
                v172 = v165;
                v173 = GetBits(&v530, 2, v166, v167, v168, v169, v170, v171);
                v180 = 4 - v173;
                if ((4 - v173) < 4u)
                {
                  if (a5)
                  {
                    v181 = v173;
                    SkipBits(&v530, 5u, v174, v175, v176, v177, v178, v179);
                    v188 = GetBits(&v530, 2, v182, v183, v184, v185, v186, v187);
                    if (v188 == 3)
                    {
                      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_8();
                      return 0;
                    }

                    if (v188 > 2u)
                    {
                      v195 = 0;
                    }

                    else
                    {
                      v195 = dword_197165F50[v188 & 3];
                    }

                    if (v172)
                    {
                      if (v172 == 2)
                      {
                        v195 >>= 1;
                      }
                    }

                    else
                    {
                      v195 >>= 2;
                    }

                    SkipBits(&v530, 2u, v189, v190, v191, v192, v193, v194);
                    if (GetBits(&v530, 2, v301, v302, v303, v304, v305, v306) == 3)
                    {
                      v307 = 1;
                    }

                    else
                    {
                      v307 = 2;
                    }

                    switch(v181)
                    {
                      case 1:
                        if (v195 <= 0x5DC0)
                        {
                          v308 = 576;
                        }

                        else
                        {
                          v308 = 1152;
                        }

                        break;
                      case 2:
                        v308 = 1152;
                        break;
                      case 3:
                        v308 = 384;
                        break;
                      default:
                        v308 = 0;
                        break;
                    }

                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (!Mutable)
                    {
                      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_7();
                      return 0;
                    }

                    v315 = Mutable;
                    FigCFDictionarySetInt32(Mutable, @"AudioSampleRate", v195, v310, v311, v312, v313, v314);
                    FigCFDictionarySetInt32(v315, @"AudioChannelCount", v307, v316, v317, v318, v319, v320);
                    FigCFDictionarySetInt32(v315, @"AudioFramesPerPacket", v308, v321, v322, v323, v324, v325);
                    *a5 = v315;
                  }

                  if (a4)
                  {
                    *a4 = v180;
                  }

                  return 0;
                }

                FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_9();
              }
            }
          }
        }

        return 0;
      }

      if (v48 != 108)
      {
        return result;
      }

      if (v526 < 7)
      {
        return 0;
      }

      v530 = a1 + v527;
      v531 = v526;
      v534 = 0;
      v532 = a1 + v527;
      v533 = a1 + v527 + v526;
      result = CopyNextWord(&v530);
      if (result)
      {
        return result;
      }

      SkipBits(&v530, 0x10u, v124, v125, v126, v127, v128, v129);
      v136 = GetBits(&v530, 16, v130, v131, v132, v133, v134, v135);
      v143 = GetBits(&v530, 16, v137, v138, v139, v140, v141, v142);
      SkipBits(&v530, 8u, v144, v145, v146, v147, v148, v149);
      v150 = *MEMORY[0x1E695E480];
      v113 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v113)
      {
        PixelAspectRatioDictionary = createPixelAspectRatioDictionary(v150, v136, v143);
        FigCFDictionarySetValue(v113, *MEMORY[0x1E6965EF8], PixelAspectRatioDictionary);
        if (PixelAspectRatioDictionary)
        {
          CFRelease(PixelAspectRatioDictionary);
        }

        if (!a5)
        {
          v152 = v113;
LABEL_66:
          CFRelease(v152);
          return 0;
        }
      }

      else if (!a5)
      {
        return 0;
      }

LABEL_135:
      result = 0;
      *a5 = v113;
      return result;
    }

    v59 = a1 + v527;
    v60 = v526;
    v535 = 0;
    v529 = 0;
    v530 = v59;
    v531 = v526;
    v534 = 0;
    v532 = v59;
    v533 = v59 + v526;
    result = CopyNextWord(&v530);
    if (result)
    {
      return result;
    }

    if (GetBits(&v530, 32, v61, v62, v63, v64, v65, v66) != 1094994246)
    {
      v300 = v59;
      v299 = v60;
      return MP4Bridge_ParseMPEG4AudioSpecificConfig(v300, v299, a4, a5, v44, v45, v46, v47, v525);
    }

    if (GetBits(&v530, 1, v67, v68, v44, v45, v46, v47) == 1)
    {
      v75 = 9;
      do
      {
        SkipBits(&v530, 8u, v69, v70, v71, v72, v73, v74);
        --v75;
      }

      while (v75);
    }

    SkipBits(&v530, 1u, v69, v70, v71, v72, v73, v74);
    SkipBits(&v530, 1u, v76, v77, v78, v79, v80, v81);
    v88 = GetBits(&v530, 1, v82, v83, v84, v85, v86, v87);
    SkipBits(&v530, 0x17u, v89, v90, v91, v92, v93, v94);
    if ((GetBits(&v530, 4, v95, v96, v97, v98, v99, v100) + 1) == 1)
    {
      if (!v88)
      {
        SkipBits(&v530, 0x14u, v101, v102, v103, v104, v105, v106);
      }

      result = MP4Bridge_ParseProgramConfigElement(&v530, &v535, &v529, v102, v103, v104, v105, v106);
      if (!a5 || result)
      {
        return result;
      }

      v107 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v107)
      {
        v113 = v107;
        FigCFDictionarySetInt32(v107, @"AudioSampleRate", v535, v108, v109, v110, v111, v112);
        FigCFDictionarySetInt32(v113, @"AudioChannelCount", v529, v114, v115, v116, v117, v118);
        FigCFDictionarySetInt32(v113, @"AudioFramesPerPacket", 1024, v119, v120, v121, v122, v123);
        goto LABEL_135;
      }

      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_13(&v528);
    }

    else
    {
      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_12(&v528);
    }

    return v528;
  }

  if ((v48 - 96) < 6)
  {
    v49 = v526;
    if (!v526)
    {
      return 0;
    }

    v50 = a1 + v527;
    v51 = 1;
    return MP4Bridge_ParseMPEGVideoSequenceHeader(v50, v49, v51, a5, v44, v45, v46, v47, v525);
  }

  if (v48 != 32)
  {
    if (v48 != 64)
    {
      return result;
    }

    v299 = v526;
    v300 = a1 + v527;
    return MP4Bridge_ParseMPEG4AudioSpecificConfig(v300, v299, a4, a5, v44, v45, v46, v47, v525);
  }

  if (!v526)
  {
    if (!FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_14(&v530))
    {
      return v530;
    }

    return 4294954582;
  }

  v530 = a1 + v527;
  v531 = v526;
  v534 = 0;
  v532 = a1 + v527;
  v533 = a1 + v527 + v526;
  result = CopyNextWord(&v530);
  if (result)
  {
    return result;
  }

  v202 = v532;
  v203 = v533;
  while (1)
  {
    if (v202 >= v203 || v203 - v202 <= 4 && !HIDWORD(v533))
    {
      return 4294954582;
    }

    while (PeekBits(&v530, 24, v196, v197, v198, v199, v200, v201) != 1)
    {
      GetBits(&v530, 8, v204, v205, v206, v207, v208, v209);
      if (v532 < v533 && (v533 - v532 > 4 || HIDWORD(v533) != 0))
      {
        continue;
      }

      return 4294954582;
    }

    GetBits(&v530, 24, v204, v205, v206, v207, v208, v209);
    v217 = GetBits(&v530, 8, v211, v212, v213, v214, v215, v216);
    if (v217 != 181)
    {
      break;
    }

    if (GetBits(&v530, 1, v196, v197, v198, v199, v200, v201) == 1)
    {
      GetBits(&v530, 4, v219, v220, v221, v222, v223, v224);
      GetBits(&v530, 3, v225, v226, v227, v228, v229, v230);
    }

    v237 = GetBits(&v530, 4, v219, v220, v221, v222, v223, v224);
    if ((v237 - 1) <= 1 && GetBits(&v530, 1, v231, v232, v233, v234, v235, v236) == 1)
    {
      GetBits(&v530, 3, v231, v232, v233, v234, v235, v236);
      GetBits(&v530, 1, v238, v239, v240, v241, v242, v243);
      if (GetBits(&v530, 1, v244, v245, v246, v247, v248, v249))
      {
        GetBits(&v530, 8, v231, v232, v233, v234, v235, v236);
        GetBits(&v530, 8, v250, v251, v252, v253, v254, v255);
        GetBits(&v530, 8, v256, v257, v258, v259, v260, v261);
      }
    }

    GetBits(&v530, 1, v231, v232, v233, v234, v235, v236);
    GetBits(&v530, BYTE12(v533) & 7, v262, v263, v264, v265, v266, v267);
    if (PeekBits(&v530, 32, v268, v269, v270, v271, v272, v273) == 434)
    {
LABEL_113:
      result = EatUserData(&v530, v274, v196, v197, v198, v199, v200, v201);
      if (result)
      {
        return result;
      }

      goto LABEL_96;
    }

    if (v237 != 1)
    {
      return 4294954579;
    }

    GetBits(&v530, 24, v196, v197, v198, v199, v200, v201);
    GetBits(&v530, 8, v275, v276, v277, v278, v279, v280);
    if (PeekBits(&v530, 22, v281, v282, v283, v284, v285, v286) == 32)
    {
      return 4294954579;
    }

LABEL_96:
    v202 = v532;
    v203 = v533;
    if (v532 >= v533 || v533 - v532 <= 4 && !HIDWORD(v533))
    {
      return 4294954582;
    }
  }

  if (v217 == 176)
  {
    v218 = 8;
LABEL_112:
    GetBits(&v530, v218, v196, v197, v198, v199, v200, v201);
    if (PeekBits(&v530, 32, v293, v294, v295, v296, v297, v298) == 434)
    {
      goto LABEL_113;
    }

    goto LABEL_96;
  }

  if (v217 < 0x20)
  {
    goto LABEL_96;
  }

  if ((v217 & 0xFFFFFFF0) != 0x20)
  {
    if (v217 != 179)
    {
      goto LABEL_96;
    }

    GetBits(&v530, 20, v196, v197, v198, v199, v200, v201);
    GetBits(&v530, 1, v287, v288, v289, v290, v291, v292);
    v218 = BYTE12(v533) & 7;
    goto LABEL_112;
  }

  GetBits(&v530, 1, v196, v197, v198, v199, v200, v201);
  if (GetBits(&v530, 8, v326, v327, v328, v329, v330, v331) == 18)
  {
    return 4294954579;
  }

  v338 = 1;
  if (GetBits(&v530, 1, v332, v333, v334, v335, v336, v337))
  {
    v338 = GetBits(&v530, 4, v339, v340, v341, v342, v343, v344);
    GetBits(&v530, 3, v345, v346, v347, v348, v349, v350);
  }

  if (GetBits(&v530, 4, v339, v340, v341, v342, v343, v344) == 15)
  {
    GetBits(&v530, 8, v351, v352, v353, v354, v355, v356);
    GetBits(&v530, 8, v357, v358, v359, v360, v361, v362);
  }

  if (GetBits(&v530, 1, v351, v352, v353, v354, v355, v356) == 1)
  {
    GetBits(&v530, 2, v363, v364, v365, v366, v367, v368);
    GetBits(&v530, 1, v369, v370, v371, v372, v373, v374);
    if (GetBits(&v530, 1, v375, v376, v377, v378, v379, v380) == 1)
    {
      GetBits(&v530, 27, v363, v364, v365, v366, v367, v368);
      GetBits(&v530, 27, v381, v382, v383, v384, v385, v386);
      GetBits(&v530, 25, v387, v388, v389, v390, v391, v392);
    }
  }

  v399 = GetBits(&v530, 2, v363, v364, v365, v366, v367, v368);
  if (v399 == 3 && v338 != 1)
  {
    return 4294954579;
  }

  if (!GetBits(&v530, 1, v393, v394, v395, v396, v397, v398))
  {
    return 4294954582;
  }

  v406 = GetBits(&v530, 16, v400, v401, v402, v403, v404, v405);
  if (!GetBits(&v530, 1, v407, v408, v409, v410, v411, v412))
  {
    return 4294954582;
  }

  if (GetBits(&v530, 1, v413, v414, v415, v416, v417, v418))
  {
    v425 = 32 - __clz(v406);
    if (v406 <= 1)
    {
      v426 = 1;
    }

    else
    {
      v426 = v425;
    }

    GetBits(&v530, v426, v419, v420, v421, v422, v423, v424);
  }

  if (v399 == 2)
  {
    return 4294954579;
  }

  if (v399)
  {
    v459 = 0;
LABEL_188:
    if (!GetBits(&v530, 1, v419, v420, v421, v422, v423, v424) && GetBits(&v530, 1, v465, v466, v467, v468, v469, v470))
    {
      v477 = v338 == 1 ? 1 : 2;
      if (!GetBits(&v530, v477, v471, v472, v473, v474, v475, v476) && (v338 == 1 || !v399 || GetBits(&v530, 1, v478, v479, v480, v481, v482, v483)))
      {
        v490 = GetBits(&v530, 1, v478, v479, v480, v481, v482, v483);
        result = 4294954579;
        if (v399 == 3 || v490 == 1)
        {
          return result;
        }

        if (GetBits(&v530, 1, v484, v485, v486, v487, v488, v489) != 1 && (v338 == 1 || !GetBits(&v530, 1, v491, v492, v493, v494, v495, v496)))
        {
          if (!GetBits(&v530, 1, v491, v492, v493, v494, v495, v496))
          {
            DefineVOPComplexityEstimationHeader(&v530, v497, v498, v499, v500, v501, v502, v503);
          }

          GetBits(&v530, 1, v498, v499, v500, v501, v502, v503);
          if (GetBits(&v530, 1, v504, v505, v506, v507, v508, v509))
          {
            GetBits(&v530, 1, v510, v511, v512, v513, v514, v515);
          }

          if ((v338 == 1 || !GetBits(&v530, 1, v510, v511, v512, v513, v514, v515) && !GetBits(&v530, 1, v516, v517, v518, v519, v520, v521)) && !GetBits(&v530, 1, v510, v511, v512, v513, v514, v515))
          {
            if (a5 && FigCFDictionaryGetCount(v459) >= 1)
            {
              result = 0;
              *a5 = v459;
              return result;
            }

            if (!v459)
            {
              return 0;
            }

            v152 = v459;
            goto LABEL_66;
          }
        }
      }
    }

    return 4294954579;
  }

  if (!GetBits(&v530, 1, v419, v420, v421, v422, v423, v424))
  {
    return 4294954582;
  }

  v433 = GetBits(&v530, 13, v427, v428, v429, v430, v431, v432);
  if (!GetBits(&v530, 1, v434, v435, v436, v437, v438, v439))
  {
    return 4294954582;
  }

  v446 = GetBits(&v530, 13, v440, v441, v442, v443, v444, v445);
  if (!GetBits(&v530, 1, v447, v448, v449, v450, v451, v452))
  {
    return 4294954582;
  }

  v453 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v453)
  {
    v459 = v453;
    FigCFDictionarySetInt32(v453, @"VideoWidth", v433, v454, v455, v456, v457, v458);
    FigCFDictionarySetInt32(v459, @"VideoHeight", v446, v460, v461, v462, v463, v464);
    goto LABEL_188;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "(Fig)", 0x6D2, v5, v523, v524, v525);
}

uint64_t GetBERInteger(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v9 >= v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    Bits = 128;
    v14 = 5;
    while ((v10 - v9 > 4 || *(a1 + 36)) && (Bits & 0x80) != 0)
    {
      if (!--v14)
      {
        GetBERInteger_cold_1(Bits, a2, a3, a4, a5, a6, a7, a8, v16);
        return 0;
      }

      Bits = GetBits(a1, 8, a3, a4, a5, a6, a7, a8);
      v12 = Bits & 0x7F | (v12 << 7);
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      if (v9 >= v10)
      {
        break;
      }
    }
  }

  *a2 = v12;
  return 1;
}

uint64_t SkipBits(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 16);
  v9 = *(result + 24);
  if (v8 < v9)
  {
    v11 = result;
    do
    {
      if (v9 - v8 <= 4 && !*(v11 + 36))
      {
        break;
      }

      if (!a2)
      {
        break;
      }

      v12 = a2 >= 4 ? 4 : a2;
      result = GetBits(v11, v12, a3, a4, a5, a6, a7, a8);
      a2 -= v12;
      v8 = *(v11 + 16);
      v9 = *(v11 + 24);
    }

    while (v8 < v9);
  }

  return result;
}

uint64_t MP4Brige_ParseDecoderConfigDescriptor(uint64_t a1, _BYTE *a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (GetBits(a1, 8, a3, a4, a5, a6, a7, a8) != 4)
  {
    MP4Brige_ParseDecoderConfigDescriptor_cold_1(&v64);
    return v64;
  }

  v63 = 0;
  if (!GetBERInteger(a1, &v63, v12, v13, v14, v15, v16, v17))
  {
    MP4Brige_ParseDecoderConfigDescriptor_cold_8(&v64);
    return v64;
  }

  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (v24 >= v25)
  {
    if (!v63)
    {
LABEL_22:
      MP4Brige_ParseDecoderConfigDescriptor_cold_6(&v64);
      return v64;
    }

LABEL_26:
    MP4Brige_ParseDecoderConfigDescriptor_cold_7(&v64);
    return v64;
  }

  v26 = *(a1 + 36);
  v27 = v25 - (*(a1 + 40) + v24) + (v26 >> 3);
  v28 = v63 - v27;
  if (v63 > v27)
  {
    goto LABEL_26;
  }

  if (v25 - v24 <= 4 && !v26)
  {
    goto LABEL_22;
  }

  Bits = GetBits(a1, 8, v18, v19, v20, v21, v22, v23);
  if ((GetBits(a1, 8, v30, v31, v32, v33, v34, v35) & 0x3F8) != 0x10)
  {
    MP4Brige_ParseDecoderConfigDescriptor_cold_2(&v64);
    return v64;
  }

  SkipBits(a1, 0x58u, v36, v37, v38, v39, v40, v41);
  v48 = *(a1 + 16);
  v49 = *(a1 + 24);
  if (v48 < v49)
  {
    v50 = *(a1 + 36);
    v51 = v49 - (*(a1 + 40) + v48) + (v50 >> 3);
    v62 = 0;
    if (v49 - v48 <= 4 && !v50 || GetBits(a1, 8, v42, v43, v44, v45, v46, v47) != 5)
    {
      v60 = 0;
      goto LABEL_19;
    }

    if (GetBERInteger(a1, &v62, v52, v53, v54, v55, v56, v57))
    {
      v58 = *(a1 + 16);
      v59 = *(a1 + 24);
      if (v58 >= v59)
      {
        v51 = 0;
      }

      else
      {
        v51 = v59 - (*(a1 + 40) + v58) + (*(a1 + 36) >> 3);
      }

      v60 = v62;
      if (v51 < v62)
      {
        MP4Brige_ParseDecoderConfigDescriptor_cold_4(&v64);
      }

      else
      {
        if (v28 + v51 >= v62)
        {
          goto LABEL_19;
        }

        MP4Brige_ParseDecoderConfigDescriptor_cold_3(&v64);
      }
    }

    else
    {
      MP4Brige_ParseDecoderConfigDescriptor_cold_5(&v64);
    }

    return v64;
  }

  v60 = 0;
  v51 = 0;
LABEL_19:
  result = 0;
  *a2 = Bits;
  *a3 = *(a1 + 8) - v51;
  *a4 = v60;
  return result;
}

uint64_t CopyNextWord(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v3 - v2;
  if (v3 <= v2 || v3 == v2)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    return 4294954584;
  }

  else
  {
    if (v4 > 3)
    {
      v4 = 4;
    }

    else
    {
      *(a1 + 32) = 0;
    }

    memcpy((a1 + 32), v2, v4);
    v7 = bswap32(*(a1 + 32));
    *(a1 + 32) = v7;
    *(a1 + 36) = 8 * v4;
    if (v4 <= 3)
    {
      *(a1 + 32) = v7 >> (-8 * v4);
    }

    result = 0;
    *(a1 + 40) = v4;
  }

  return result;
}

void FigCFCharacterSetCreatePredefinedEscapeSetForRFC6381()
{
  v0 = CFStringCreateWithBytes(0, FigCFCharacterSetCreatePredefinedEscapeSetForRFC6381_rawCharsToEscapeForRFC6381, 53, 0x600u, 0);
  qword_1ED4CC968 = CFCharacterSetCreateWithCharactersInString(0, v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t UnpackLEB128(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v9 >= v10)
  {
    v14 = 0;
    v13 = 0;
    v17 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 128;
    while (1)
    {
      v16 = v10 - v9 > 4 || *(a1 + 36) != 0;
      v17 = v15 != 0;
      if (!v16 || !v15 || v12 > 0x37)
      {
        break;
      }

      Bits = GetBits(a1, 8, a3, a4, a5, a6, a7, a8);
      ++v13;
      v15 = Bits & 0x80;
      v14 |= (Bits & 0x7F) << v12;
      v12 += 7;
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      if (v9 >= v10)
      {
        v17 = v15 != 0;
        break;
      }
    }
  }

  if (a2)
  {
    *a2 = v13;
  }

  if (HIDWORD(v14) != 0 || v17)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t UnpackOBUHeader(uint64_t a1, _BYTE *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Bits = GetBits(a1, 5, a3, a4, a5, a6, a7, a8);
  SkipBits(a1, 1u, v12, v13, v14, v15, v16, v17);
  v24 = GetBits(a1, 1, v18, v19, v20, v21, v22, v23);
  v31 = GetBits(a1, 1, v25, v26, v27, v28, v29, v30);
  v68 = 0;
  result = UnpackLEB128(a1, &v68, v32, v33, v34, v35, v36, v37);
  v45 = result;
  v46 = 0;
  v48 = *(a1 + 16);
  v47 = *(a1 + 24);
  if (v48 < v47)
  {
    v46 = v47 - (*(a1 + 40) + v48) + (*(a1 + 36) >> 3);
  }

  if (v24)
  {
    UnpackLEB128(a1, &v68, v39, v40, v41, v42, v43, v44);
    result = UnpackLEB128(a1, &v68, v49, v50, v51, v52, v53, v54);
  }

  if (v31)
  {
    v55 = UnpackLEB128(a1, &v68, v39, v40, v41, v42, v43, v44);
    result = SkipBits(a1, 8 * v55, v56, v57, v58, v59, v60, v61);
  }

  v63 = *(a1 + 16);
  v62 = *(a1 + 24);
  if (v63 >= v62)
  {
    v64 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v64 = v62 - (*(a1 + 40) + v63) + (*(a1 + 36) >> 3);
  if (a2)
  {
LABEL_11:
    *a2 = Bits;
  }

LABEL_12:
  if (a3)
  {
    v65 = v46 - v64;
    v66 = v45 >= v65;
    v67 = v45 - v65;
    if (!v66)
    {
      v67 = 0;
    }

    *a3 = v67;
  }

  return result;
}

uint64_t EatUserData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 4294954582;
  if (GetBits(a1, 32, a3, a4, a5, a6, a7, a8) == 434)
  {
    if (AdvanceToNextStartCode(a1, v9, v10, v11, v12, v13, v14, v15) == 1)
    {
      return 0;
    }

    else
    {
      return 4294954582;
    }
  }

  return v16;
}

uint64_t DefineVOPComplexityEstimationHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = GetBits(a1, 2, a3, a4, a5, a6, a7, a8);
  if (result <= 1)
  {
    v16 = result;
    if (!GetBits(a1, 1, v10, v11, v12, v13, v14, v15))
    {
      GetBits(a1, 6, v17, v18, v19, v20, v21, v22);
    }

    if (!GetBits(a1, 1, v17, v18, v19, v20, v21, v22))
    {
      GetBits(a1, 4, v23, v24, v25, v26, v27, v28);
    }

    GetBits(a1, 1, v23, v24, v25, v26, v27, v28);
    if (!GetBits(a1, 1, v29, v30, v31, v32, v33, v34))
    {
      GetBits(a1, 4, v35, v36, v37, v38, v39, v40);
    }

    if (!GetBits(a1, 1, v35, v36, v37, v38, v39, v40))
    {
      GetBits(a1, 6, v41, v42, v43, v44, v45, v46);
    }

    result = GetBits(a1, 1, v41, v42, v43, v44, v45, v46);
    if (v16 == 1)
    {
      result = GetBits(a1, 1, v47, v48, v49, v50, v51, v52);
      if (!result)
      {

        return GetBits(a1, 2, v53, v54, v55, v56, v57, v58);
      }
    }
  }

  return result;
}

CFMutableDictionaryRef createPixelAspectRatioDictionary(const __CFAllocator *a1, int a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, *MEMORY[0x1E6965EF0], a2, v6, v7, v8, v9, v10);
  FigCFDictionarySetInt32(Mutable, *MEMORY[0x1E6965F00], a3, v11, v12, v13, v14, v15);
  return Mutable;
}

uint64_t MP4Bridge_ParseProgramConfigElement(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SkipBits(a1, 4u, a3, a4, a5, a6, a7, a8);
  SkipBits(a1, 2u, v11, v12, v13, v14, v15, v16);
  Bits = GetBits(a1, 4, v17, v18, v19, v20, v21, v22);
  if (Bits >= 0xD)
  {
    MP4Bridge_ParseProgramConfigElement_cold_1(&v145);
    return v145;
  }

  else
  {
    v144 = a2;
    v143 = sSamplingFrequencies[Bits];
    v30 = GetBits(a1, 4, v23, v24, v25, v26, v27, v28);
    LOBYTE(v37) = GetBits(a1, 4, v31, v32, v33, v34, v35, v36);
    LOBYTE(v44) = GetBits(a1, 4, v38, v39, v40, v41, v42, v43);
    LOBYTE(v51) = GetBits(a1, 2, v45, v46, v47, v48, v49, v50);
    v58 = GetBits(a1, 3, v52, v53, v54, v55, v56, v57);
    v65 = GetBits(a1, 4, v59, v60, v61, v62, v63, v64);
    if (GetBits(a1, 1, v66, v67, v68, v69, v70, v71) == 1)
    {
      SkipBits(a1, 4u, v72, v73, v74, v75, v76, v77);
    }

    if (GetBits(a1, 1, v72, v73, v74, v75, v76, v77) == 1)
    {
      SkipBits(a1, 4u, v78, v79, v80, v81, v82, v83);
    }

    if (GetBits(a1, 1, v78, v79, v80, v81, v82, v83) == 1)
    {
      SkipBits(a1, 2u, v84, v85, v86, v87, v88, v89);
      SkipBits(a1, 1u, v90, v91, v92, v93, v94, v95);
    }

    v96 = a3;
    v97 = v30;
    if (v30)
    {
      v98 = 0;
      do
      {
        if (GetBits(a1, 1, v84, v85, v86, v87, v88, v89) == 1)
        {
          v105 = 2;
        }

        else
        {
          v105 = 1;
        }

        v98 += v105;
        SkipBits(a1, 4u, v99, v100, v101, v102, v103, v104);
        --v97;
      }

      while (v97);
    }

    else
    {
      v98 = 0;
    }

    v37 = v37;
    if (v37)
    {
      do
      {
        if (GetBits(a1, 1, v84, v85, v86, v87, v88, v89) == 1)
        {
          v112 = 2;
        }

        else
        {
          v112 = 1;
        }

        v98 += v112;
        SkipBits(a1, 4u, v106, v107, v108, v109, v110, v111);
        --v37;
      }

      while (v37);
    }

    v44 = v44;
    if (v44)
    {
      do
      {
        if (GetBits(a1, 1, v84, v85, v86, v87, v88, v89) == 1)
        {
          v119 = 2;
        }

        else
        {
          v119 = 1;
        }

        v98 += v119;
        SkipBits(a1, 4u, v113, v114, v115, v116, v117, v118);
        --v44;
      }

      while (v44);
    }

    v120 = v51;
    if (v51)
    {
      v51 = v51;
      do
      {
        SkipBits(a1, 4u, v84, v85, v86, v87, v88, v89);
        --v51;
      }

      while (v51);
      v98 += v120;
    }

    v121 = v58;
    if (v58)
    {
      do
      {
        SkipBits(a1, 4u, v84, v85, v86, v87, v88, v89);
        --v121;
      }

      while (v121);
    }

    v122 = v65;
    if (v65)
    {
      do
      {
        SkipBits(a1, 1u, v84, v85, v86, v87, v88, v89);
        SkipBits(a1, 4u, v123, v124, v125, v126, v127, v128);
        --v122;
      }

      while (v122);
    }

    GetBits(a1, *(a1 + 36) & 7, v84, v85, v86, v87, v88, v89);
    for (i = GetBits(a1, 8, v129, v130, v131, v132, v133, v134); i; --i)
    {
      SkipBits(a1, 8u, v135, v136, v137, v138, v139, v140);
    }

    if (v144)
    {
      *v144 = v143;
    }

    result = 0;
    if (v96)
    {
      *v96 = v98;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_7_14@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = 0.0;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v11 - 104) = 0;
  *(v11 - 144) = a9 + a1;
  *(v11 - 136) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 - 108) & 7;

  return GetBits(v8 - 144, v10, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return GetBits(va, 1, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return GetBits(va, 4, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return GetBits(va, 2, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return GetBits(va, 14, a3, a4, a5, a6, a7, a8);
}

uint64_t FigTransportConnectionXPCClientCreate(uint64_t a1, void *a2)
{
  if (ntcxpc_getConnectionShared_once != -1)
  {
    FigTransportConnectionXPCClientCreate_cold_1();
  }

  if (ntcxpc_getConnectionShared_transportConnection)
  {
    v3 = CFRetain(ntcxpc_getConnectionShared_transportConnection);
    *a2 = v3;
    if (v3)
    {
      return 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return 4294955245;
}

void __ntcxpc_getConnectionShared_block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v16, &type);
  v1 = v16;
  v2 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFE;
  }

  if (v3)
  {
    v17 = 136315138;
    v18 = "ntcxpc_getConnectionShared_block_invoke";
    v4 = _os_log_send_and_compose_impl(v3, 0, v19, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v2, "<<<< NeroTransportConnectionXPCClient >>>> %s: Creating FigTransportConnectionXPCClient", &v17);
    LOBYTE(v1) = v16;
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v4, v4 != v19, v1);
  v5 = *MEMORY[0x1E695E480];
  ClassID = NeroTransportConnectionGetClassID(v6, v7);
  if (!CMDerivedObjectCreate(v5, kFigTransportConnectionXPCVTable, ClassID, &ntcxpc_getConnectionShared_transportConnection, v9, v10, v11, v12, v14))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(ntcxpc_getConnectionShared_transportConnection);
    if (ntcxpc_getClient_once != -1)
    {
      __ntcxpc_getConnectionShared_block_invoke_cold_1();
    }

    *DerivedStorage = ntcxpc_getClient_client;
    ntcxpc_initTransportConnection(ntcxpc_getConnectionShared_transportConnection);
  }
}

void ntcxpc_initTransportConnection(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = 0;
  v5 = 0;
  v2 = FigXPCCreateBasicMessage(0x696E6974u, 0, &v5);
  v3 = 0;
  if (!v2)
  {
    FigXPCRemoteClientSendSyncMessageCreatingReply(*DerivedStorage, v5, &v4);
    v3 = v4;
  }

  FigXPCRelease(v3);
  FigXPCRelease(v5);
}

void ntcxpc_Finalize()
{
  v9 = 0;
  v8 = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v9, &v8);
  v1 = v9;
  v2 = v8;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v8))
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFE;
  }

  if (v3)
  {
    v5 = 136315138;
    v6 = "ntcxpc_Finalize";
    v4 = _os_log_send_and_compose_impl(v3, 0, v7, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v2, "<<<< NeroTransportConnectionXPCClient >>>> %s: Object overreleased!", &v5);
    LOBYTE(v1) = v9;
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v4, v4 != v7, v1);
  __break(1u);
}

__CFString *ntcxpc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTransportConnectionXPC %p>", a1);
  return Mutable;
}

void __ntcxpc_getClient_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v18, &type);
  v2 = v18;
  v3 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFE;
  }

  if (v4)
  {
    v19 = 136315394;
    v20 = "ntcxpc_getClient_block_invoke";
    v21 = 2080;
    v22 = "com.apple.coremedia.nerotransportconnectionxpc";
    v5 = _os_log_send_and_compose_impl(v4, 0, v23, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v3, "<<<< NeroTransportConnectionXPCClient >>>> %s: Create NeroTransportConnectionXPC client for '%s'", &v19, 22);
    LOBYTE(v2) = v18;
  }

  else
  {
    v5 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v5, v5 != v23, v2);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"FigTransportNTCXPCServerDied");
  FigCFDictionarySetInt32(Mutable, @"xpcRemoteClientOption_QueuePriority", 28, v6, v7, v8, v9, v10);
  v11 = FigXPCRemoteClientCreate("com.apple.coremedia.nerotransportconnectionxpc", kFigTransportConnectionXPC_FigTransportConnectionClass_block_invoke_clientCallbacks, Mutable, &ntcxpc_getClient_client);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v18, &type);
    v13 = v18;
    v14 = type;
    if (os_log_type_enabled(v12, type))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v19 = 136315394;
      v20 = "ntcxpc_getClient_block_invoke";
      v21 = 1024;
      LODWORD(v22) = v11;
      v16 = _os_log_send_and_compose_impl(v15, 0, v23, 128, &dword_196FA7000, v12, v14, "<<<< NeroTransportConnectionXPCClient >>>> %s: NeroTransportConnectionXPC client creation error: %d", &v19, 18);
      LOBYTE(v13) = v18;
    }

    else
    {
      v16 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v16, v16 != v23, v13);
  }
}

void ntcxpc_handleServerDeath()
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v6, &type);
  v1 = v6;
  v2 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFE;
  }

  if (v3)
  {
    v7 = 136315138;
    v8 = "ntcxpc_handleServerDeath";
    v4 = _os_log_send_and_compose_impl(v3, 0, v9, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v2, "<<<< NeroTransportConnectionXPCClient >>>> %s: Got server death notice", &v7);
    LOBYTE(v1) = v6;
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v4, v4 != v9, v1);
  if (ntcxpc_getConnectionShared_once != -1)
  {
    ntcxpc_handleServerDeath_cold_1();
  }

  ntcxpc_initTransportConnection(ntcxpc_getConnectionShared_transportConnection);
}

uint64_t ntcxpc_handleServerMessage(void *a1)
{
  if (ntcxpc_getConnectionShared_once != -1)
  {
    FigTransportConnectionXPCClientCreate_cold_1();
  }

  v2 = ntcxpc_getConnectionShared_transportConnection;
  v5 = 0;
  result = FigXPCMessageGetOpCode(a1, &v5);
  if (!result)
  {
    if (v5 == 1701671783)
    {
      v6 = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
      if (!*(DerivedStorage + 16))
      {
        ntcxpc_handleServerMessage_cold_2(a1, &v6, DerivedStorage);
      }

      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

void figCustomAllocatorsInit(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figCustomAllocatorsInit_block_invoke;
  block[3] = &__block_descriptor_tmp_30;
  v2 = a1;
  if (figCustomAllocatorsInit_onceToken != -1)
  {
    dispatch_once(&figCustomAllocatorsInit_onceToken, block);
  }
}

malloc_zone_t *__figCustomAllocatorsInit_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  figCustomAllocatorsInit_allocators = "CMMediaAllocator";
  qword_1ED4CC988 = "CMPermanentAllocator";
  if (v1)
  {
    qword_1ED4CC978 = malloc_create_zone(0, 0);
    malloc_set_zone_name(qword_1ED4CC978, "CMMediaZone");
    qword_1ED4CC980 = darwinMemory_createCustomAllocator(&figCustomAllocatorsInit_allocators);
    qword_1ED4CC990 = malloc_create_zone(0, 0);
    malloc_set_zone_name(qword_1ED4CC990, "CMPermanentZone");
    result = darwinMemory_createCustomAllocator(&qword_1ED4CC988);
    qword_1ED4CC998 = result;
  }

  else
  {
    qword_1ED4CC980 = *MEMORY[0x1E695E480];
    v3 = qword_1ED4CC980;
    qword_1ED4CC978 = malloc_default_zone();
    qword_1ED4CC998 = v3;
    result = malloc_default_zone();
    qword_1ED4CC990 = result;
  }

  return result;
}

CFAllocatorRef darwinMemory_createCustomAllocator(void *a1)
{
  if (!_os_feature_enabled_impl() || (result = CFAllocatorCreateWithZone()) == 0)
  {
    context.version = 0;
    context.info = a1;
    context.retain = 0;
    context.release = 0;
    context.copyDescription = darwinMemory_copyDebugDescForCustomAllocator;
    context.allocate = darwinMemory_allocForCustomAllocator;
    context.reallocate = darwinMemory_reallocForCustomAllocator;
    context.deallocate = darwinMemory_deallocForCustomAllocator;
    context.preferredSize = 0;
    return CFAllocatorCreate(0, &context);
  }

  return result;
}

CFStringRef darwinMemory_copyDebugDescForCustomAllocator(uint64_t *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *a1;
  zone_name = malloc_get_zone_name(a1[1]);
  return CFStringCreateWithFormat(v2, 0, @"<%s with zone: %s(%p)>", v3, zone_name, a1[1]);
}

uint64_t metremote_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __metremote_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E74A0400;
  block[4] = &v3;
  if (metremote_ensureClientEstablished_sFigMetricEventTimelineRemoteClientSetupOnce != -1)
  {
    dispatch_once(&metremote_ensureClientEstablished_sFigMetricEventTimelineRemoteClientSetupOnce, block);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

size_t metremote_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, CFTypeRef *a5)
{
  cf = 0;
  if (a5)
  {
    ClassID = FigMetricEventTimelineGetClassID(a1, a2);
    v15 = CMDerivedObjectCreate(a1, kMetricEventTimeline_VTable, ClassID, &cf, v11, v12, v13, v14, cf);
    v16 = cf;
    if (v15 || (DerivedStorage = CMBaseObjectGetDerivedStorage(cf), *DerivedStorage = a2, v18 = (DerivedStorage + 2), AllocatorForMedia = FigGetAllocatorForMedia(), v15 = FigMetricEventTimelineCreate(AllocatorForMedia, a3, a4, 0, 0, v18), v16 = cf, v15))
    {
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      *a5 = cf;
    }
  }

  else
  {
    metremote_create_cold_1(&v22);
    return v22;
  }

  return v15;
}

uint64_t __metremote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  v3[0] = 1;
  v3[1] = metremote_deadConnectionCallback;
  v3[2] = 0;
  v3[3] = metremote_handleServerMessage;
  v4 = 0u;
  v5 = 0u;
  result = FigXPCRemoteClientCreate("com.apple.coremedia.mediaplaybackd.figmetriceventtimeline.xpc", v3, 0, &gFigMetricEventTimelineRemoteClient);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t metremote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  *(result + 8) = 1;
  return result;
}

CFStringRef metremote_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigMetricEventTimelineRemote %p %lld]", a1, *DerivedStorage);
}

size_t FigVirtualCaptureCardServerStart()
{
  v7[0] = 2;
  v7[1] = FigVirtualCaptureCardServerReplyingMessageHandler;
  v7[2] = FigVirtualCaptureCardServerNoReplyMessageHandler;
  memset(&v7[3], 0, 24);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcServerOption_SiloObjectIDs", *MEMORY[0x1E695E4D0]);
  v5 = FigXPCServerStart("com.apple.coremedia.figvirtualcapturecard.xpc", v7, Mutable, &gFigVirtualCaptureCardServer, v1, v2, v3, v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t __HandleFigVirtualCaptureCardCreationMessage_block_invoke()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CC9B0 = result;
  return result;
}

uint64_t AudioToolbox_IsAmbisonicChannelLayout(uint64_t a1)
{
  v2 = pAudioFormatIsAmbisonicChannelLayout;
  if (!pAudioFormatIsAmbisonicChannelLayout)
  {
    FigThreadRunOnce(&loadAudioToolboxPointers_sLoadAudioToolboxPointersOnce, loadAudioToolboxPointersOnce);
    v2 = pAudioFormatIsAmbisonicChannelLayout;
    if (!pAudioFormatIsAmbisonicChannelLayout)
    {
      return 0;
    }
  }

  return v2(a1);
}

uint64_t FigHALAudioObjectGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigHALAudioObjectGetClassID_sRegisterFigHALAudioDeviceOnce != -1)
  {
    FigHALAudioObjectGetClassID_cold_1();
  }

  return FigHALAudioObjectGetClassID_sFigHALAudioObjectClassID;
}

size_t __FigHALAudioObjectGetClassID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&FigHALAudioObjectGetClassID_sFigHALAudioObjectClassDesc, ClassID, 1, &FigHALAudioObjectGetClassID_sFigHALAudioObjectClassID, v10, v11, v12, v13, a9);
}

uint64_t CelestialIsAppleTV(uint64_t a1, uint64_t a2)
{
  if (getDeviceClass_onceToken != -1)
  {
    CelestialIsAppleTV_cold_1();
  }

  if (getDeviceClass_deviceClass != 4)
  {
    return CelestialIsAppleTV_sIsAppleTV;
  }

  result = 1;
  CelestialIsAppleTV_sIsAppleTV = 1;
  return result;
}

uint64_t CelestialIsiPad(uint64_t a1, uint64_t a2)
{
  if (getDeviceClass_onceToken != -1)
  {
    CelestialIsAppleTV_cold_1();
  }

  if (getDeviceClass_deviceClass != 3)
  {
    return CelestialIsiPad_sIsiPad;
  }

  result = 1;
  CelestialIsiPad_sIsiPad = 1;
  return result;
}

uint64_t CelestialIsiPhone(uint64_t a1, uint64_t a2)
{
  if (getDeviceClass_onceToken != -1)
  {
    CelestialIsAppleTV_cold_1();
  }

  if (getDeviceClass_deviceClass != 1)
  {
    return CelestialIsiPhone_sIsiPhone;
  }

  result = 1;
  CelestialIsiPhone_sIsiPhone = 1;
  return result;
}

void CelestialGetSupportedAVCProfileAndLevel(_BYTE *result, _BYTE *a2)
{
  if (CelestialGetSupportedAVCProfileAndLevel_onceToken == -1)
  {
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CelestialGetSupportedAVCProfileAndLevel_cold_1();
  if (result)
  {
LABEL_3:
    *result = 100;
  }

LABEL_4:
  if (a2)
  {
    *a2 = CelestialGetSupportedAVCProfileAndLevel_sLevel;
  }
}

void __CelestialGetSupportedAVCProfileAndLevel_block_invoke()
{
  v0 = MGCopyAnswer();
  SInt8 = FigCFNumberGetSInt8(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  if (SInt8 <= 0x33)
  {
    if (SInt8 == 51)
    {
      v2 = 51;
    }

    else if (SInt8 <= 0x31)
    {
      if (SInt8 < 0x2A)
      {
        return;
      }

      v2 = 42;
    }

    else
    {
      v2 = 50;
    }
  }

  else
  {
    v2 = 52;
  }

  CelestialGetSupportedAVCProfileAndLevel_sLevel = v2;
}

uint64_t CelestialGetModelSpecificResolutionCap(double *a1, double *a2, __int128 *a3)
{
  v12 = xmmword_197165F80;
  v10 = 0.0;
  v11 = 0.0;
  CelestialGetMainScreenSize(&v11, &v10, 2048.0);
  result = 0;
  v8 = v10;
  v7 = v11;
  if (v11 > 0.0 && v10 > 0.0 && v10 > 7.0)
  {
    v12 = kResolutionCap3K;
    result = 1;
  }

  *a3 = v12;
  *a1 = v7;
  *a2 = v8;
  return result;
}

double CelestialGetMainScreenSize(double *a1, double *a2, double result)
{
  if (a1)
  {
    if (a2)
    {
      *a1 = 0.0;
      *a2 = 0.0;
      v5 = MGGetSInt32Answer();
      v6 = MGGetSInt32Answer();
      v7 = MGGetSInt32Answer();
      if (v5 >= 1 && v6 >= 1)
      {
        v8 = v7;
        v9 = v6;
        if (v5 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v5;
        }

        if (v5 <= v6)
        {
          v9 = v5;
        }

        *a1 = v10 / v8;
        result = v9 / v8;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t CelestialIsAudioAccessory(uint64_t a1, uint64_t a2)
{
  if (CelestialIsAudioAccessory_onceToken != -1)
  {
    CelestialIsAudioAccessory_cold_1();
  }

  return CelestialIsAudioAccessory_sIsAudioAccessory;
}

uint64_t __CelestialIsAudioAccessory_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 7)
  {
    CelestialIsAudioAccessory_sIsAudioAccessory = 1;
  }

  return result;
}

BOOL CelestialIs1GBAudioAccessory(uint64_t a1, uint64_t a2)
{
  if (CelestialIsAudioAccessory_onceToken != -1)
  {
    CelestialIsAudioAccessory_cold_1();
  }

  if (CelestialIsAudioAccessory_sIsAudioAccessory != 1)
  {
    return 0;
  }

  FigThreadRunOnce(&sGetSystemMemorySizeOnce, celestialGetSystemMemorySizeOnce);
  return sMemorySize < 0x40000001;
}

void __CelestialGetModelSpecificName_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  *cStr = 0u;
  v9 = 0u;
  v7 = 64;
  sysctlbyname("hw.model", cStr, &v7, 0, 0);
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v2 = Mutable;
    CFStringAppendCString(Mutable, cStr, 0);
    Length = CFStringGetLength(v2);
    if (CFStringHasSuffix(v2, @"AP"))
    {
      v4 = Length - 2;
    }

    else
    {
      v4 = 0;
    }

    if (CFStringHasSuffix(v2, @"DEV"))
    {
      v5.length = Length - 3;
    }

    else
    {
      v5.length = v4;
    }

    if (v5.length < 1)
    {
      v6 = CFRetain(v2);
    }

    else
    {
      v5.location = 0;
      v6 = CFStringCreateWithSubstring(v0, v2, v5);
    }

    CelestialGetModelSpecificName_sModelNameStr = v6;
    CFRelease(v2);
  }

  if (!CelestialGetModelSpecificName_sModelNameStr)
  {
    CelestialGetModelSpecificName_sModelNameStr = @"D421";
  }
}

uint64_t celestialGetSystemMemorySizeOnce()
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0x1800000006;
  v1 = 8;
  result = sysctl(v2, 2u, &sMemorySize, &v1, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    sMemorySize = 0;
  }

  return result;
}

CFPropertyListRef FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(const __CFAllocator *a1, CFStringRef bundleID, const __CFString *a3, __CFString *cf)
{
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    if (!FigCFBundleIDResourceSubdirExists(bundleID, v4))
    {
      CFRelease(v4);
      v4 = @"Default";
    }
  }

  PropertyListFromBundleIdentifier = FigCreatePropertyListFromBundleIdentifier(a1, bundleID, a3, v4);
  v9 = PropertyListFromBundleIdentifier;
  if (v4 && !PropertyListFromBundleIdentifier)
  {
    v9 = FigCreatePropertyListFromBundleIdentifier(a1, bundleID, a3, 0);
LABEL_8:
    CFRelease(v4);
    return v9;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  return v9;
}

CFPropertyListRef FigCreateModelSpecificPropertyList(const __CFAllocator *a1, const __CFString *a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v4 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(a1, @"com.apple.MediaToolbox", a2, v4);
}

CFPropertyListRef CelestialCFCreatePropertyListFromBundleIdentifier(CFStringRef bundleID, const __CFString *a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v4 = CelestialGetModelSpecificName_sModelNameStr;
  v5 = *MEMORY[0x1E695E480];

  return FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(v5, bundleID, a2, v4);
}

CFPropertyListRef FigCreateModelSpecificPropertyListFromBundleIdentifier(const __CFAllocator *a1, CFStringRef bundleID, const __CFString *a3)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v6 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(a1, bundleID, a3, v6);
}

uint64_t CelestialCustomizePlaybackImageQueueLevels(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4)
{
  result = CelestialIsAppleTV(a1, a2);
  if (result)
  {
    memset(&v13, 0, sizeof(v13));
    v12 = *a2;
    CMTimeConvertScale(&v13, &v12, 60, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault(@"decode_depth", @"com.apple.coremedia", LODWORD(v13.value));
    CMTimeMake(&v12, CFPreferenceNumberWithDefault, 60);
    *&a2->value = *&v12.value;
    epoch = v12.epoch;
    a2->epoch = v12.epoch;
    v10 = *&a2->value;
    *(a3 + 16) = epoch;
    *a3 = v10;
    v11 = *&a2->value;
    *(a4 + 16) = a2->epoch;
    *a4 = v11;
    return 1;
  }

  return result;
}

double CelestialGetStreamingBackBufferDuration(double a1)
{
  v2 = FigThreadRunOnce(&sGetSystemMemorySizeOnce, celestialGetSystemMemorySizeOnce);
  if (sMemorySize <= 0x20000000 && !CelestialIsAppleTV(v2, v3))
  {
    return 1.0;
  }

  return a1;
}

uint64_t CelestialShouldLimitConcurrent4K60HEVCDecoding(uint64_t a1, uint64_t a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v3 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCFEqual(v3, @"J105a");
}

uint64_t CelestialShouldLimitHDRConcurrentPlayback(_DWORD *a1, uint64_t a2)
{
  result = CelestialIsAppleTV(a1, a2);
  if (result)
  {
    result = 1;
    if (a1)
    {
      *a1 = 1;
    }
  }

  return result;
}

uint64_t CelestialShouldLimitMVHEVCEncoding(uint64_t a1, uint64_t a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v3 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCFEqual(v3, @"J105a");
}

BOOL CelestialShouldLimitMVHEVCDecoding(uint64_t a1, uint64_t a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v2 = CelestialGetModelSpecificName_sModelNameStr;
  return FigCFEqual(CelestialGetModelSpecificName_sModelNameStr, @"J71b") || FigCFEqual(v2, @"J72b") || FigCFEqual(v2, @"J120") || FigCFEqual(v2, @"J121") || FigCFEqual(v2, @"J171") || FigCFEqual(v2, @"J172") || FigCFEqual(v2, @"J207") || FigCFEqual(v2, @"J208") != 0;
}

uint64_t CelestialShouldLimit4kConcurrentPlayback(_DWORD *a1, uint64_t a2)
{
  result = CelestialIsAppleTV(a1, a2);
  if (result)
  {
    result = 1;
    if (a1)
    {
      *a1 = 1;
    }
  }

  return result;
}

uint64_t CelestialShouldLimitHDRFrameRateForPlayback(void *a1, uint64_t a2, double a3, double a4)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v7 = FigCFEqual(CelestialGetModelSpecificName_sModelNameStr, @"J105a");
  result = 0;
  if (v7)
  {
    v9 = a4 <= 1920.0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && a3 > 1080.0)
  {
    if (a1)
    {
      *a1 = 0x403E000000000000;
    }

    return 1;
  }

  return result;
}

BOOL CelestialShouldSupportHDR10Plus(uint64_t a1, uint64_t a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v2 = CelestialGetModelSpecificName_sModelNameStr;
  return !FigCFEqual(CelestialGetModelSpecificName_sModelNameStr, @"J42d") && !FigCFEqual(v2, @"J105a") && !FigCFEqual(v2, @"J305");
}

uint64_t CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA(uint64_t a1, uint64_t a2)
{
  if (CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_once != -1)
  {
    CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_cold_1();
  }

  return CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_result;
}

void __CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x1E695E4D0];
    if (v2 == CFDictionaryGetValue(v0, @"buffer-compression") && v2 == CFDictionaryGetValue(v1, @"media-compression"))
    {
      CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_result = 1;
    }

    CFRelease(v1);
  }
}

uint64_t FigIsAirplaydEnabled(uint64_t a1, uint64_t a2)
{
  if (FigIsAirplaydEnabled_once != -1)
  {
    FigIsAirplaydEnabled_cold_1();
  }

  return FigIsAirplaydEnabled_result;
}

uint64_t __FigIsAirplaydEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  FigIsAirplaydEnabled_result = result;
  return result;
}

uint64_t __getDeviceClass_block_invoke()
{
  result = MGGetSInt32Answer();
  getDeviceClass_deviceClass = result;
  return result;
}

uint64_t FigOSTransactionCreateWithProcessName(const char *a1, const char *a2, uint64_t a3, const __CFURL *a4, uint64_t a5)
{
  v113 = *MEMORY[0x1E69E9840];
  v70 = 0;
  cf = 0;
  memset(v112, 0, 128);
  v68 = 0;
  v69 = 0;
  v110 = 0u;
  memset(v111, 0, sizeof(v111));
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  qmemcpy(v80, "n/a", sizeof(v80));
  v10 = time(0);
  v67 = 0;
  theString = 0;
  memset(buffer, 0, sizeof(buffer));
  if (!a1)
  {
    FigOSTransactionCreateWithProcessName_cold_3(v10, v11, v12, v13, v14, v15, v16, v17, v60);
    v46 = 0;
    goto LABEL_42;
  }

  v63 = v10;
  v18 = FigNote_AllowInternalDefaultLogs(v10, v11) != 0;
  fig_note_initialize_category_with_default_work_cf(&unk_1ED4CC2F0, @"figostransactionutilities_trace", @"com.apple.coremedia", "playback-memory", "com.apple.coremedia", v18, 0, &gFigOSTransactionUtilities);
  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC300, @"figostransactionutilities_trace", @"com.apple.coremedia", "playback-memory", "com.apple.coremedia", 1u, 0, &qword_1ED4CC2F8);
  if (a3 < 1 || a5)
  {
    v27 = a2;
    v28 = a1;
    if (a3 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    FigServer_CopyProcessName(a3, &cf, v21, v22, v23, v24, v25, v26);
    FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(cf, v112, 128, 0x600u);
    v27 = a2;
    v28 = a1;
  }

  FigApplicationStateMonitorGetHostPIDIfAvailable(a3, &v67, v21, v22, v23, v24, v25, v26, v60);
  CString = v67;
  if (v67 >= 1)
  {
    FigServer_CopyProcessName(v67, &theString, v29, v30, v31, v32, v33, v34);
    CString = theString;
    if (theString)
    {
      CString = CFStringGetCString(theString, buffer, 128, 0x600u);
    }
  }

LABEL_9:
  if (a4)
  {
    if (FigIsItOKToLogURLs(CString, v20))
    {
      v35 = CFURLGetString(a4);
      if (v35)
      {
        CFStringGetCString(v35, v80, 512, 0x8000100u);
      }
    }

    else
    {
      v36 = CFURLCopyScheme(a4);
      if (v36)
      {
        v37 = v36;
        v38 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@://<redacted>", v36);
        CFStringGetCString(v38, v80, 512, 0x8000100u);
        if (v38)
        {
          CFRelease(v38);
        }

        CFRelease(v37);
      }
    }
  }

  if (!v67 || v67 == a3)
  {
    asprintf(&v70, "%ld %s %s %d:%s ");
  }

  else
  {
    asprintf(&v70, "%ld %s %s %d->%d:%s->%s ", v63);
  }

  asprintf(&v69, "%s %s", v70, v80);
  v46 = os_transaction_create();
  if (!v46)
  {
    FigOSTransactionCreateWithProcessName_cold_2(0, v39, v40, v41, v42, v43, v44, v45);
    goto LABEL_42;
  }

  if (sFigOSTransactions != -1)
  {
    FigOSTransactionCreateWithProcessName_cold_1();
  }

  v47 = FigCFWeakReferenceHolderCreateWithReferencedObject(v46);
  FigSimpleMutexLock(qword_1ED4CCA30);
  figPruneOSTransactionArrayWhilePerformingOperation(0);
  CFArrayAppendValue(qword_1ED4CCA28, v47);
  if (!a4)
  {
    if (!dword_1ED4CC300)
    {
      goto LABEL_40;
    }

    v65 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2F8, 1, &v65, &type);
    v51 = v65;
    v56 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v57 = v51;
    }

    else
    {
      v57 = v51 & 0xFFFFFFFE;
    }

    if (v57)
    {
      v72 = 136315650;
      v73 = "FigOSTransactionCreateWithProcessName";
      v74 = 2048;
      v75 = v47;
      v76 = 2080;
      v77 = v70;
      LODWORD(v61) = 32;
      v54 = _os_log_send_and_compose_impl(v57, 0, v78, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v56, "<<< FigOSTransactionsUtilities >>> %s: [Fig Transaction] Added transaction weak reference holder <%p>: %s", &v72, v61);
      goto LABEL_37;
    }

LABEL_38:
    v58 = 0;
    goto LABEL_39;
  }

  v48 = v70;
  v49 = CFHash(a4);
  asprintf(&v68, "%s %lu", v48, v49);
  if (!dword_1ED4CC300)
  {
    goto LABEL_40;
  }

  v65 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2F8, 1, &v65, &type);
  v51 = v65;
  v52 = type;
  if (os_log_type_enabled(v50, type))
  {
    v53 = v51;
  }

  else
  {
    v53 = v51 & 0xFFFFFFFE;
  }

  if (!v53)
  {
    goto LABEL_38;
  }

  v72 = 136315650;
  v73 = "FigOSTransactionCreateWithProcessName";
  v74 = 2048;
  v75 = v47;
  v76 = 2080;
  v77 = v68;
  LODWORD(v62) = 32;
  v54 = _os_log_send_and_compose_impl(v53, 0, v78, 128, &dword_196FA7000, v50, v52, "<<< FigOSTransactionsUtilities >>> %s: [Fig Transaction] Added transaction weak reference holder <%p>: %s", &v72, v62);
LABEL_37:
  v58 = v54;
  LOBYTE(v51) = v65;
LABEL_39:
  fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2F8, 1, 1, v58, v58 != v78, v51);
LABEL_40:
  FigSimpleMutexUnlock(qword_1ED4CCA30);
  FigPerformanceMonitorUpdateOSTransactionData(v47, v28, v27, a3);
  if (v47)
  {
    CFRelease(v47);
  }

LABEL_42:
  free(v69);
  free(v70);
  free(v68);
  if (cf)
  {
    CFRelease(cf);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v46;
}

void figPruneOSTransactionArrayWhilePerformingOperation(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(qword_1ED4CCA28);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1ED4CCA28, v4);
      v6 = FigCFWeakReferenceHolderCopyReferencedObject(ValueAtIndex);
      if (v6)
      {
        v7 = v6;
        if (a1)
        {
          (*(a1 + 16))(a1, v6);
        }

        ++v4;
        os_release(v7);
      }

      else
      {
        if (dword_1ED4CC300)
        {
          v15 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2F8, 1, &v15, &type);
          v9 = v15;
          v10 = type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v11 = v9;
          }

          else
          {
            v11 = v9 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v16 = 136315394;
            v17 = "figPruneOSTransactionArrayWhilePerformingOperation";
            v18 = 2048;
            v19 = ValueAtIndex;
            LODWORD(v13) = 22;
            v12 = _os_log_send_and_compose_impl(v11, 0, v20, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v10, "<<< FigOSTransactionsUtilities >>> %s: [Fig Transaction] Pruned transaction weak reference holder: <%p>", &v16, v13);
            LOBYTE(v9) = v15;
          }

          else
          {
            v12 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2F8, 1, 1, v12, v12 != v20, v9);
        }

        CFArrayRemoveValueAtIndex(qword_1ED4CCA28, v4);
        --v3;
      }
    }

    while (v4 < v3);
  }
}

CFMutableArrayRef FigOSTransactionCopyDescriptions(const __CFAllocator *a1)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (sFigOSTransactions != -1)
  {
    FigOSTransactionCopyDescriptions_cold_1();
  }

  FigSimpleMutexLock(qword_1ED4CCA30);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigOSTransactionCopyDescriptions_block_invoke;
  v4[3] = &__block_descriptor_tmp_35;
  v4[4] = a1;
  v4[5] = Mutable;
  figPruneOSTransactionArrayWhilePerformingOperation(v4);
  FigSimpleMutexUnlock(qword_1ED4CCA30);
  return Mutable;
}

void __FigOSTransactionCopyDescriptions_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = os_transaction_copy_description();
  v4 = CFStringCreateWithCString(*(a1 + 32), v3, 0x8000100u);
  CFArrayAppendValue(*(a1 + 40), v4);
  if (v4)
  {
    CFRelease(v4);
  }

  free(v3);
}

uint64_t figOSTransactionsInitializer_block_invoke()
{
  qword_1ED4CCA28 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  qword_1ED4CCA30 = result;
  return result;
}

uint64_t FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint(uint64_t a1, unint64_t **a2)
{
  result = FigXPCRemoteClientCreateWithXPCEndpoint("customURLHandler", a1, FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint_sFigCustomURLHandlerRemoteClientCallbacks, 0, a2);
  if (result)
  {
    FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint_cold_1(&v3);
    return v3;
  }

  return result;
}

uint64_t figCustomURLHandlerRemote_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  result = FigCustomURLHandlerGetTypeID();
  if (v2 == result)
  {
    result = CMBaseObjectGetDerivedStorage(a1);
    *(result + 40) = 1;
  }

  return result;
}

uint64_t figCustomURLHandlerRemote_MessageHandler(uint64_t a1, void *a2)
{
  v13 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v13);
  if (OpCode || v13 != 1667777603)
  {
    return OpCode;
  }

  if (_MergedGlobals_33 != -1)
  {
    figCustomURLHandlerRemote_MessageHandler_cold_1();
  }

  v5 = qword_1ED4CCA40;
  if (!qword_1ED4CCA40 && !figCustomURLHandlerRemote_MessageHandler_cold_2(&v14))
  {
    return v14;
  }

  v6 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (!v6)
  {
    figCustomURLHandlerRemote_MessageHandler_cold_4(&v14);
    return v14;
  }

  v7 = v6;
  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v6, 8, v5);
  if (!v8)
  {
    figCustomURLHandlerRemote_MessageHandler_cold_3(v7, &v14);
    return v14;
  }

  v9 = v8;
  *v7 = FigXPCRetain(a2);
  uint64 = xpc_dictionary_get_uint64(a2, "CustomURLHandler_RequestID");
  v11 = *(*(CMBaseObjectGetVTable(a1) + 16) + 56);
  if (v11)
  {
    OpCode = v11(a1, uint64, figCustomURLHandler_handleDataCallbackMessageWithRegisteredRequestInfo, v9);
  }

  else
  {
    OpCode = 4294954514;
  }

  CFRelease(v9);
  return OpCode;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint(int a1, uint64_t a2, uint64_t *a3)
{
  if (FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_sFigCustomURLRemoteXPCRemoteClientByPIDMutexRegisterOnce != -1)
  {
    FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_1();
  }

  if (!gFigCustomURLRemoteXPCRemoteClientByPIDTable)
  {
    FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_4(&v14);
    return v14;
  }

  FigSimpleMutexLock(gFigCustomURLRemoteXPCRemoteClientByPIDMutex);
  v14 = FigCFWeakReferenceTableCopyValue(gFigCustomURLRemoteXPCRemoteClientByPIDTable, a1, v6, v7, v8, v9, v10, v11);
  if (!v14)
  {
    if (a2)
    {
      if (!FigXPCRemoteClientCreateWithXPCEndpoint("customURLHandler", a2, FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_sFigCustomURLHandlerRemoteClientCallbacks, 0, &v14))
      {
        FigCFWeakReferenceTableRemoveValue(gFigCustomURLRemoteXPCRemoteClientByPIDTable, a1);
        v12 = FigCFWeakReferenceTableAddValueAssociatedWithKey(gFigCustomURLRemoteXPCRemoteClientByPIDTable, v14, a1);
        goto LABEL_9;
      }

      FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_2(&v15);
    }

    else
    {
      FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_3(&v15);
    }

    v12 = v15;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  FigSimpleMutexUnlock(gFigCustomURLRemoteXPCRemoteClientByPIDMutex);
  *a3 = v14;
  return v12;
}

uint64_t __FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_block_invoke()
{
  gFigCustomURLRemoteXPCRemoteClientByPIDMutex = FigSimpleMutexCreate();
  v0 = *MEMORY[0x1E695E480];

  return FigCFWeakReferenceTableCreate(v0, 1, &gFigCustomURLRemoteXPCRemoteClientByPIDTable);
}

void figCustomURLHandlerRemote_shimHandleRequestCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t), uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *v42 = 0;
  v11 = (DerivedStorage + 40);
  if (*(DerivedStorage + 40))
  {
    v38 = 0;
    v27 = 4294949923;
    goto LABEL_20;
  }

  v12 = DerivedStorage;
  v13 = FigXPCCreateBasicMessage(0x63684852u, *(DerivedStorage + 32), v42);
  if (v13)
  {
    v27 = v13;
LABEL_31:
    v38 = 0;
    goto LABEL_20;
  }

  v43 = 0;
  if (*v11)
  {
    v27 = 4294949923;
    goto LABEL_31;
  }

  NSSecureCodingTypesSerializable = FigCustomURLRequestInfoCreateMutableCopy(*MEMORY[0x1E695E480], a3, &v43, v14, v15, v16, v17, v18);
  if (NSSecureCodingTypesSerializable)
  {
    goto LABEL_24;
  }

  v20 = v43;
  v44 = 0;
  cf = 0;
  v21 = FigCustomURLRequestInfoCopyCryptor(v43, &cf);
  if (v21 == -17360)
  {
    v27 = 0;
  }

  else
  {
    v27 = v21;
    if (!v21)
    {
      IDForCryptorByAssociatingWithClientPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID(cf, *(v12 + 8), &v44, v22, v23, v24, v25, v26);
      if (IDForCryptorByAssociatingWithClientPID)
      {
        v27 = IDForCryptorByAssociatingWithClientPID;
        figCustomURLHandlerRemote_shimHandleRequestCallback_cold_1(IDForCryptorByAssociatingWithClientPID);
      }

      else
      {
        v35 = FigCustomURLRequestInfoSetCryptorID(v20, v44, v29, v30, v31, v32, v33, v34);
        if (v35)
        {
          v27 = v35;
          figCustomURLHandlerRemote_shimHandleRequestCallback_cold_2(v35);
        }

        else
        {
          v36 = FigCustomURLRequestInfoSetCryptor(v20, 0);
          v27 = v36;
          if (v36)
          {
            figCustomURLHandlerRemote_shimHandleRequestCallback_cold_3(v36);
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    goto LABEL_29;
  }

  v37 = FigCustomURLRequestInfoSetNetworkHistory(v43, 0);
  if (v37)
  {
    v27 = v37;
    figCustomURLHandlerRemote_shimHandleRequestCallback_cold_4(v37);
LABEL_29:
    if (v43)
    {
      CFRelease(v43);
    }

    goto LABEL_31;
  }

  NSSecureCodingTypesSerializable = FigCustomURLRequestInfoMakeNSSecureCodingTypesSerializable(v43);
  if (NSSecureCodingTypesSerializable)
  {
LABEL_24:
    v27 = NSSecureCodingTypesSerializable;
    goto LABEL_29;
  }

  v38 = v43;
  xpc_dictionary_set_uint64(*v42, "CustomURLHandler_RequestID", a4);
  FigXPCMessageSetCFDictionary(*v42, "CustomURLHandler_RequestInfo", v38);
  v39 = *v12;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 0x40000000;
  v41[2] = __figCustomURLHandlerRemote_shimHandleRequestCallback_block_invoke;
  v41[3] = &__block_descriptor_tmp_11_2;
  v41[4] = a5;
  v41[5] = a6;
  v40 = FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler(v39, *v42, v41);
  if (!v40)
  {
    goto LABEL_21;
  }

  v27 = v40;
  if (v38)
  {
    figCustomURLHandlerRemote_shimHandleRequestCallback_cold_5(v11, v38, v12);
  }

LABEL_20:
  a5(a6, 0, v27);
LABEL_21:
  FigXPCRelease(*v42);
  if (v38)
  {
    CFRelease(v38);
  }
}

void dataCallbackMessageRec_dealloc(xpc_object_t *a1)
{
  FigXPCRelease(*a1);

  free(a1);
}

uint64_t figCustomURLHandlerRemote_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = *(DerivedStorage + 16);
  if (!v2)
  {
    return 4294954516;
  }

  v3 = *(*(CMBaseObjectGetVTable(*(DerivedStorage + 16)) + 8) + 24);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v2);
}

void figCustomURLHandlerRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = *(DerivedStorage + 32);
  v10 = 0;
  figCustomURLHandlerRemote_Invalidate(a1);
  if (!*(DerivedStorage + 40))
  {
    if (!*DerivedStorage)
    {
      goto LABEL_3;
    }

    figCustomURLHandlerRemote_Finalize_cold_1(*DerivedStorage, v3, &v10, DerivedStorage, v4, v5, v6, v7);
  }

  figCustomURLHandlerRemote_Finalize_cold_2(DerivedStorage);
LABEL_3:
  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 16) = 0;
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 24) = 0;
  }

  FigXPCRelease(v10);
}

uint64_t figCustomURLHandlerRemote_HandleRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(CMBaseObjectGetDerivedStorage(a1) + 16);
  v16 = *(*(CMBaseObjectGetVTable(v15) + 16) + 32);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v15, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t figCustomURLHandlerRemote_CancelRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage(a1) + 16);
  v4 = *(*(CMBaseObjectGetVTable(v3) + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t figCustomURLHandlerRemote_RequestSetDormant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage(a1) + 16);
  v6 = *(*(CMBaseObjectGetVTable(v5) + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (qword_1ED4CCA48 != -1)
  {
    figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_1();
  }

  v9 = qword_1ED4CCA50;
  if (!qword_1ED4CCA50 && !figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_2(&v20))
  {
    return v20;
  }

  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0xE0040C2B16B6AuLL);
  if (v10)
  {
    v11 = v10;
    v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, 24, v9);
    if (v12)
    {
      v13 = v12;
      if (a1)
      {
        v14 = CFRetain(a1);
      }

      else
      {
        v14 = 0;
      }

      *v11 = v14;
      *(v11 + 1) = a3;
      if (a4)
      {
        v15 = CFRetain(a4);
      }

      else
      {
        v15 = 0;
      }

      *(v11 + 2) = v15;
      v16 = *(DerivedStorage + 16);
      v17 = *(*(CMBaseObjectGetVTable(v16) + 16) + 56);
      if (v17)
      {
        v18 = v17(v16, a2, figCustomURLHandlerRemote_shimLookupAndRetainRegisteredInfoCallback, v13);
      }

      else
      {
        v18 = 4294954514;
      }

      CFRelease(v13);
    }

    else
    {
      figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_3(v11, &v21);
      return v21;
    }
  }

  else
  {
    figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_4(&v22);
    return v22;
  }

  return v18;
}

uint64_t figCustomURLHandlerRemote_shimLookupAndRetainRegisteredInfoCallback(int a1, uint64_t a2, CFDataRef theData, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  BytePtr = CFDataGetBytePtr(theData);
  v18 = *(BytePtr + 1);
  v19 = *(BytePtr + 2);
  v20 = *BytePtr;

  return v18(v20, a2, v19, a4, a5, a6, a7, a8, a9, a10, a11);
}

void remoteHandlerLookupAndRetainRec_dealloc(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

void __NeroValeriaListenerCreate_block_invoke(uint64_t result, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 1684628836)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v10, &type);
    v5 = v10;
    v6 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v11 = 136315138;
      v12 = "NeroValeriaListenerCreate_block_invoke";
      v8 = _os_log_send_and_compose_impl(v7, 0, v13, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v6, "<< NeroValeriaListener >> %s: Received Valeria disconnect message", &v11);
      LOBYTE(v5) = v10;
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v8, v8 != v13, v5);
  }

  else if (a2 == 1651470958)
  {
    NeroTransportStopAcceptingConnections(**(result + 40));
    v3 = *(*(result + 32) + 16);

    v3();
  }
}

void NeroValeriaListenerDestroy(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      NeroTransportInvalidate(v2);
      if (*a1)
      {
        CFRelease(*a1);
        *a1 = 0;
      }
    }

    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    free(a1);
  }
}

void NeroValeriaListenerSetActiveStatus(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __NeroValeriaListenerSetActiveStatus_block_invoke;
    v3[3] = &__block_descriptor_tmp_3_0;
    v4 = a2;
    v3[4] = a1;
    dispatch_async(v2, v3);
  }
}

uint64_t __NeroValeriaListenerSetActiveStatus_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(a1 + 32);
  if (v1)
  {
    return NeroTransportStartAcceptingConnections(v2);
  }

  else
  {
    return NeroTransportStopAcceptingConnections(v2);
  }
}

uint64_t FigTransportSessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_34 != -1)
  {
    FigTransportSessionGetClassID_cold_1();
  }

  return qword_1ED4CCA60;
}

size_t session_getClassID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&session_getClassID_sClassDesc, ClassID, 1, a1, v11, v12, v13, v14, a9);
}

uint64_t FigTransportSessionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_34 != -1)
  {
    FigTransportSessionGetClassID_cold_1();
  }

  v3 = qword_1ED4CCA60;

  return CMBaseClassGetCFTypeID(v3);
}

uint64_t FigEndpointStreamAirPlayGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_35 != -1)
  {
    FigEndpointStreamAirPlayGetClassID_cold_1();
  }

  return qword_1ED4CCA70;
}

size_t FigEndpointStreamAirPlayGetClassIDCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = FigEndpointStreamGetClassID(a1, a2);

  return FigBaseClassRegisterClass(&FigEndpointStreamAirPlayGetClassIDCallback_sFigEndpointStreamAirPlayClassDesc, ClassID, 0, a1, v11, v12, v13, v14, a9);
}

uint64_t CMTimeSyncCoPresenceNTPClockGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_36 != -1)
  {
    CMTimeSyncCoPresenceNTPClockGetTypeID_cold_1();
  }

  return qword_1ED4CCA80;
}

uint64_t RegisterFigTimeSyncCoPresenceNTPClockIDType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCA80 = result;
  return result;
}

size_t CMTimeSyncCoPresenceNTPClockCreate(uint64_t cold_1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (sTimeSyncFunctionsLoadedOnce_0 != -1)
  {
    CMTimeSyncCoPresenceNTPClockCreate_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = qword_1EAF1CE40;
    v13 = v8;
    v14 = 4294947546;
    v15 = 409;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (_MergedGlobals_36 != -1)
  {
    CMTimeSyncCoPresenceNTPClockGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v11 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 24) = FigReentrantMutexCreate();
    *(v11 + 32) = FigConditionVariableCreate();
    *(v11 + 16) = 1;
    FigNTPClientCreate(*MEMORY[0x1E695E480], (v11 + 40));
    goto LABEL_12;
  }

  v12 = qword_1EAF1CE40;
  v13 = v8;
  v14 = 4294947545;
  v15 = 415;
LABEL_10:
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v14, "<<<< TimeSyncCoPresenceNTPClock >>>>", v15, v13, a7, a8, v17);
  if (result)
  {
    return result;
  }

  v11 = 0;
LABEL_12:
  result = 0;
  *a2 = v11;
  return result;
}

uint64_t (*LoadTimeSyncFunctions_0(uint64_t a1, uint64_t a2))(void)
{
  v2 = FigNote_AllowInternalDefaultLogs(a1, a2) != 0;
  fig_note_initialize_category_with_default_work_cf(&unk_1EAF1CE38, @"ts_cop_ntp_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v2, 0, &gFigTimeSyncCoPresenceNTPClockTrace);
  fig_note_initialize_category_with_default_work_cf(algn_1EAF1CE48, @"ts_cop_ntp_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CE40);
  v3 = dlopen("/System/Library/PrivateFrameworks/TimeSync.framework/TimeSync", 4);
  if (!v3)
  {
    v13 = 111;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  v11 = v3;
  sTimeSyncClockDispose_0 = dlsym(v3, "TimeSyncClockDispose");
  if (!sTimeSyncClockDispose_0)
  {
    v13 = 92;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncAddgPTPServices = dlsym(v11, "TimeSyncAddgPTPServices");
  if (!sTimeSyncAddgPTPServices)
  {
    v13 = 93;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncgPTPManagerNotifyWhenAvailable = dlsym(v11, "TimeSyncgPTPManagerNotifyWhenAvailable");
  if (!sTimeSyncgPTPManagerNotifyWhenAvailable)
  {
    v13 = 94;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncCopresencePTPInstanceClockIdentifier = dlsym(v11, "TimeSyncCopresencePTPInstanceClockIdentifier");
  if (!sTimeSyncCopresencePTPInstanceClockIdentifier)
  {
    v13 = 95;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncGetCopresencePTPInstanceConfiguration = dlsym(v11, "TimeSyncGetCopresencePTPInstanceConfiguration");
  if (!sTimeSyncGetCopresencePTPInstanceConfiguration)
  {
    v13 = 96;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncClockGetgPTPGrandmasterIdentity_0 = dlsym(v11, "TimeSyncClockGetgPTPGrandmasterIdentity");
  if (!sTimeSyncClockGetgPTPGrandmasterIdentity_0)
  {
    v13 = 97;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncClockSetLockStateChangeCallback_0 = dlsym(v11, "TimeSyncClockSetLockStateChangeCallback");
  if (!sTimeSyncClockSetLockStateChangeCallback_0)
  {
    v13 = 98;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncClockSetMasterChangeCallback = dlsym(v11, "TimeSyncClockSetMasterChangeCallback");
  if (!sTimeSyncClockSetMasterChangeCallback)
  {
    v13 = 99;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncClockCreateWithClockIdentifer_0 = dlsym(v11, "TimeSyncClockCreateWithClockIdentifer");
  if (!sTimeSyncClockCreateWithClockIdentifer_0)
  {
    v13 = 100;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncAddCopresencePTPInstanceRef = dlsym(v11, "TimeSyncAddCopresencePTPInstanceRef");
  if (!sTimeSyncAddCopresencePTPInstanceRef)
  {
    v13 = 101;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncRemoveCopresencePTPInstance = dlsym(v11, "TimeSyncRemoveCopresencePTPInstance");
  if (!sTimeSyncRemoveCopresencePTPInstance)
  {
    v13 = 102;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  sTimeSyncClockGetLockState_0 = dlsym(v11, "TimeSyncClockGetLockState");
  if (!sTimeSyncClockGetLockState_0)
  {
    v13 = 103;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  off_1ED4CCA88 = dlsym(v11, "TimeSyncClockGetClockTimeForHostTime");
  if (!off_1ED4CCA88)
  {
    v13 = 104;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  off_1ED4CCA90 = dlsym(v11, "TimeSyncClockGetHostTimeForClockTime");
  if (!off_1ED4CCA90)
  {
    v13 = 105;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  result = dlsym(v11, "TimeSyncClockCreateAudioClockDeviceUID");
  sTimeSyncClockCreateAudioClockDeviceUID = result;
  if (!result)
  {
    v13 = 106;
    return LoadTimeSyncFunctions_cold_1_0(v13, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  return result;
}

uint64_t figTimeSyncCoPresenceNTPClock_GetCoPresenceNTPAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v12 = 0uLL;
  memset(&v11, 0, sizeof(v11));
  memset(&v10, 0, sizeof(v10));
  v5 = FigNTPGetTimeOfDay(a1, &v12);
  UpTime = FigGetUpTime();
  if (!v5)
  {
    v7 = UpTime;
    CMTimeMake(&v11, ((*(&v12 + 1) / 1000000000.0 + v12) * 1000000.0), 1000000);
    v8 = FigHostTimeToNanoseconds(v7);
    CMTimeMake(&v10, v8, 1000000000);
    *a2 = v11;
    *a3 = v10;
  }

  return v5;
}

size_t CMTimeSyncCoPresenceNTPClockCopyDeviceIdentifier(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v10 = *(a1 + 80);
  if (v10)
  {
    *a2 = sTimeSyncClockCreateAudioClockDeviceUID(v10, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  else
  {
    v12 = qword_1EAF1CE40;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFB2D8uLL, "<<<< TimeSyncCoPresenceNTPClock >>>>", 0x2DB, v9, a7, a8, a9);
  }
}

double figTimeSyncCoPresenceNTPClock_Init(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figTimeSyncCoPresenceNTPClock_Finalize(uint64_t a1)
{
  if (*(a1 + 80))
  {
    sTimeSyncClockDispose_0();
    *(a1 + 80) = 0;
    dispatch_source_cancel(*(a1 + 88));
    v2 = *(a1 + 88);
    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 88) = 0;
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      dispatch_release(v3);
    }

    sTimeSyncRemoveCopresencePTPInstance();
  }

  FigConditionVariableDestroy(*(a1 + 32));
  FigReentrantMutexDestroy(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

CFStringRef figTimeSyncCoPresenceNTPClock_CopyFormattingDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"CMTimeSyncCoPresenceNTPClock");
}

CFStringRef figTimeSyncCoPresenceNTPClock_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"CMTimeSyncCoPresenceNTPClock");
}

uint64_t OUTLINED_FUNCTION_1_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a23 = 0;
  a24 = 0;
  a25 = 0;
  a20 = 0;
  a21 = 0;
  a22 = 0;
  v27 = *(v25 + 40);

  return figTimeSyncCoPresenceNTPClock_GetCoPresenceNTPAnchorTime(v27, &a20, &a23);
}

CMTime *OUTLINED_FUNCTION_2_22@<X0>(CMTime *a1@<X8>, __int128 a2, uint64_t a3, uint64_t a4, CMTime *lhs, uint64_t lhs_8, CMTime *lhs_16, uint64_t a8, uint64_t a9)
{
  lhs_16 = a1;
  a2 = *v9;
  a3 = *(v9 + 16);

  return CMTimeSubtract(&a9, &lhs, &a2);
}

CMTime *OUTLINED_FUNCTION_3_21@<X0>(uint64_t a1@<X8>, __int128 a2, uint64_t a3, uint64_t a4, CMTime *lhs, uint64_t lhs_8, __int128 lhs_16, __int128 a8, uint64_t a9)
{
  *&lhs_16 = a1;
  a2 = a8;
  a3 = a9;

  return CMTimeSubtract((v9 - 80), &lhs, &a2);
}

__n128 OUTLINED_FUNCTION_5_19()
{
  result = *(v1 - 80);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 64);
  return result;
}

__n128 OUTLINED_FUNCTION_6_17@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 80) = *a1;
  *(v1 - 64) = a1[1].n128_u64[0];
  return result;
}

size_t FigAudioDeviceClockServerStart(uint64_t a1, uint64_t a2)
{
  v14 = 1;
  v15 = HandleAudioDeviceClockMessage;
  v16 = 0u;
  v17 = 0u;
  IsMediaparserd = FigServer_IsMediaparserd(a1, a2);
  if (IsMediaparserd)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<<<< FADCS(XPC) >>>>", 0xF5, v2, v6, v7, v14, v15, v16, v17);
  }

  else
  {
    if (FigServer_IsMediaplaybackd(IsMediaparserd, v4))
    {
      v13 = "com.apple.coremedia.mediaplaybackd.audiodeviceclock.xpc";
    }

    else
    {
      v13 = "com.apple.coremedia.audiodeviceclock.xpc";
    }

    return FigXPCServerStart(v13, &v14, 0, &gAudioDeviceClockServer, v9, v10, v11, v12);
  }
}

uint64_t FigXPCAudioDeviceClockServerCopyClockForID(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = FigXPCServerRetainNeighborObjectFromID(gAudioDeviceClockServer, a1, a2, a4, a5, a6, a7, a8);
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v10 = CFGetTypeID(*a2);
    if (v10 == CMClockGetTypeID())
    {
      return 0;
    }

    FigXPCAudioDeviceClockServerCopyClockForID_cold_1(&v13);
    v11 = v13;
  }

  if (a2 && v11 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v11;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = category | 0x200000000;
  result.value = value;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CMTag CMTagMakeWithFloat64Value(CMTagCategory category, Float64 value)
{
  v3 = category | 0x300000000;
  *&result.value = value;
  result.category = v3;
  result.dataType = HIDWORD(v3);
  return result;
}

CMTag CMTagMakeWithOSTypeValue(CMTagCategory category, OSType value)
{
  v2 = value;
  v3 = category | 0x500000000;
  result.category = v3;
  result.dataType = HIDWORD(v3);
  LODWORD(result.value) = value;
  return result;
}

CMTag CMTagMakeWithFlagsValue(CMTagCategory category, uint64_t flagsForTag)
{
  v2 = category | 0x700000000;
  result.value = flagsForTag;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CFHashCode CMTagHash(CMTag tag)
{
  v5 = tag;
  v4 = tag.dataType & 0xBFFFFFFF;
  if ((tag.dataType & 0xBFFFFFFF) != 0)
  {
    v1 = _CMTagCFHashBytes(&v5.value, 8);
  }

  else
  {
    v1 = 0x1000000;
  }

  v2 = (_CMTagCFHashBytes(&v4, 4) + (v1 << 6) + (v1 >> 2) + 2654435769u) ^ v1;
  return (_CMTagCFHashBytes(&v5, 4) + (v2 << 6) + (v2 >> 2) + 2654435769u) ^ v2;
}

uint64_t _CMTagCFHashBytes(uint64_t a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = 0;
    v3 = a2;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    v4 = a2 + 4;
    v5 = ((a2 & 0xFFFFFFFF00000000) + a1 + 3);
    do
    {
      v6 = *(v5 - 3) + 16 * v2;
      v7 = *(v5 - 2) + 16 * (v6 ^ (16 * (v6 >> 28)));
      v8 = *(v5 - 1) + 16 * (v7 ^ (16 * (v7 >> 28)));
      v9 = *v5;
      v5 += 4;
      v10 = v9 + 16 * (v8 ^ (16 * (v8 >> 28)));
      v2 = (v10 ^ ((v10 & 0xF0000000) >> 24)) & ~(v10 & 0xF0000000);
      v3 -= 4;
      v4 -= 4;
    }

    while (v4 > 7);
  }

  switch(v3)
  {
    case 1:
      goto LABEL_11;
    case 2:
LABEL_10:
      v12 = *(a1 + a2 - 2) + 16 * v2;
      v2 = (v12 ^ ((v12 & 0xF0000000) >> 24)) & ~(v12 & 0xF0000000);
LABEL_11:
      v13 = *(a1 + a2 - 1) + 16 * v2;
      return (v13 ^ ((v13 & 0xF0000000) >> 24)) & ~(v13 & 0xF0000000);
    case 3:
      v11 = *(a1 + a2 - 3) + 16 * v2;
      v2 = (v11 ^ ((v11 & 0xF0000000) >> 24)) & ~(v11 & 0xF0000000);
      goto LABEL_10;
  }

  return v2;
}

Boolean CMTagEqualToTag(CMTag tag1, CMTag tag2)
{
  v3 = ((*&tag2.category ^ *&tag1.category) & 0xBFFFFFFF00000000) == 0 && tag1.value == tag2.value;
  if (tag1.category == tag2.category)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

CFComparisonResult CMTagCompare(CMTag tag1, CMTag tag2)
{
  if (tag1.category < tag2.category)
  {
    return -1;
  }

  if (tag1.category != tag2.category)
  {
    return 1;
  }

  v3 = tag1.dataType & 0xBFFFFFFF;
  if ((tag1.dataType & 0xBFFFFFFF) < (tag2.dataType & 0xBFFFFFFF))
  {
    return -1;
  }

  if (v3 != (tag2.dataType & 0xBFFFFFFF))
  {
    return 1;
  }

  v4 = (tag1.value > tag2.value);
  if (tag1.value < tag2.value)
  {
    v4 = kCFCompareLessThan;
  }

  v5 = (*&tag1.value > *&tag2.value);
  if (*&tag1.value < *&tag2.value)
  {
    v5 = kCFCompareLessThan;
  }

  if (v3 == 3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

CFStringRef CMTagCopyDescription(CFAllocatorRef allocator, CMTag tag)
{
  value = tag.value;
  v3 = *&tag.category;
  Mutable = CFStringCreateMutable(allocator, 0);
  v5 = Mutable;
  if (Mutable)
  {
    v10 = bswap32(v3);
    CFStringAppendFormat(Mutable, 0, @"{");
    CFStringAppendFormat(v5, 0, @"category:'%.4s'", &v10);
    v6 = HIDWORD(v3);
    if (!v6)
    {
      CFStringAppendFormat(v5, 0, @"{INVALID}");
      return v5;
    }

    CFStringAppendFormat(v5, 0, @" value:");
    v7 = v6 & 0xBFFFFFFF;
    if ((v6 & 0xBFFFFFFF) <= 2)
    {
      if (!v7)
      {
        CFStringAppendFormat(v5, 0, @"<invalid>", v9);
        goto LABEL_16;
      }

      if (v7 == 2)
      {
        CFStringAppendFormat(v5, 0, @"%lld <int64>", value);
        goto LABEL_16;
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          CFStringAppendFormat(v5, 0, @"%0.2f <Flt64>", value);
          goto LABEL_16;
        case 5:
          v11 = bswap32(value);
          CFStringAppendFormat(v5, 0, @"'%.4s' <OSType>", &v11);
          goto LABEL_16;
        case 7:
          CFStringAppendFormat(v5, 0, @"0x%llx <flags>", value);
LABEL_16:
          CFStringAppendFormat(v5, 0, @"}");
          return v5;
      }
    }

    CFStringAppendFormat(v5, 0, @"<raw:0x%0llu type:%d>", value, v6 & 0xBFFFFFFF);
    goto LABEL_16;
  }

  return v5;
}

CFDictionaryRef CMTagCopyAsDictionary(CMTag tag, CFAllocatorRef allocator)
{
  value = tag.value;
  dataType = tag.dataType;
  v44 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E74A0708;
  v43 = @"value";
  SInt32 = 0;
  SInt64 = 0;
  v5 = *MEMORY[0x1E695E480];
  values = FigCFNumberCreateSInt32(*MEMORY[0x1E695E480], tag.category);
  if (!values)
  {
    CMTagCopyAsDictionary_cold_4(0, v6, v7, v8, v9, v10, v11, v12, v38);
LABEL_14:
    v34 = 0;
    goto LABEL_6;
  }

  SInt32 = FigCFNumberCreateSInt32(v5, dataType & 0xBFFFFFFF);
  if (!SInt32)
  {
    CMTagCopyAsDictionary_cold_3(0, v13, v14, v15, v16, v17, v18, v19, v38);
    goto LABEL_14;
  }

  SInt64 = FigCFNumberCreateSInt64(v5, value);
  if (!SInt64)
  {
    CMTagCopyAsDictionary_cold_2(0, v20, v21, v22, v23, v24, v25, v26, v38);
    goto LABEL_14;
  }

  v34 = CFDictionaryCreate(allocator, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v34)
  {
    CMTagCopyAsDictionary_cold_1(0, v27, v28, v29, v30, v31, v32, v33);
  }

LABEL_6:
  for (i = 0; i != 24; i += 8)
  {
    v36 = *(&values + i);
    if (v36)
    {
      CFRelease(v36);
    }
  }

  return v34;
}

void *FigTagCopyAsXPCDictionary(unint64_t a1, uint64_t a2)
{
  empty = xpc_dictionary_create_empty();
  v12 = empty;
  if (empty)
  {
    xpc_dictionary_set_uint64(empty, "CMTagCategory", a1);
    xpc_dictionary_set_uint64(v12, "CMTagDataType", HIDWORD(a1) & 0xFFFFFFFFBFFFFFFFLL);
    xpc_dictionary_set_uint64(v12, "CMTagValue", a2);
  }

  else
  {
    FigTagCopyAsXPCDictionary_cold_1(0, v5, v6, v7, v8, v9, v10, v11, v14);
  }

  return v12;
}

uint64_t FigTagMakeFromXPCDictionary(void *a1)
{
  if (a1)
  {
    uint64 = xpc_dictionary_get_uint64(a1, "CMTagCategory");
    v3 = xpc_dictionary_get_uint64(a1, "CMTagDataType");
    xpc_dictionary_get_uint64(a1, "CMTagValue");
    v4 = HIDWORD(uint64);
    if (HIDWORD(v3))
    {
      v5 = 0;
    }

    else
    {
      v5 = v3 << 32;
    }

    if (HIDWORD(v3))
    {
      v6 = 0;
    }

    else
    {
      v6 = uint64;
    }

    v7 = v4 == 0;
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t FigNote_AllowInternalDefaultLogs(uint64_t a1, uint64_t a2)
{
  if (FigNote_AllowInternalDefaultLogs_onceToken != -1)
  {
    FigNote_AllowInternalDefaultLogs_cold_1();
  }

  return gAllowInternalDefaultLogs;
}

uint64_t fig_note_initialize_allow_internal_default_logs(uint64_t a1, uint64_t a2)
{
  result = FigDebugIsInternalBuild(a1, a2);
  gAllowInternalDefaultLogs = result;
  return result;
}

char *fig_get_timestamp(uint64_t a1, char *__str, size_t __size)
{
  if (a1 == 2)
  {
    fig_get_offsetTimeStamp(__str, __size);
  }

  else if (a1 == 1)
  {
    FigCFGetLocalTimeString(__str, __size);
  }

  else
  {
    snprintf(__str, __size, " ");
  }

  return __str;
}

char *fig_get_offsetTimeStamp(char *a1, size_t a2)
{
  v11.tv_sec = 0;
  *&v11.tv_usec = 0;
  gettimeofday(&v11, 0);
  v4 = v11.tv_usec - dword_1ED4CCAB0;
  if (v11.tv_usec - dword_1ED4CCAB0 < 0)
  {
    if (v4 <= 0xFFF0BDC0)
    {
      v4 = -1000000;
    }

    v6 = dword_1ED4CCAB0 + v4;
    if (v6 == v11.tv_usec)
    {
      tv_usec = v11.tv_usec;
    }

    else
    {
      tv_usec = v11.tv_usec + 1;
    }

    v8 = v6 == v11.tv_usec;
    LODWORD(v9) = (v6 - tv_usec) / 0xF4240;
    if (v8)
    {
      v9 = v9;
    }

    else
    {
      v9 = (v9 + 1);
    }

    v5 = v11.tv_sec + ~sStartTime - v9;
    v4 = v11.tv_usec + 1000000 * v9 + 1000000 - dword_1ED4CCAB0;
  }

  else
  {
    v5 = v11.tv_sec - sStartTime;
  }

  snprintf(a1, a2, "%02d:%02d.%06d", v5 / 60, v5 % 60, v4);
  return a1;
}

uint64_t fig_log_emitter_get_os_log(uint64_t *a1, BOOL *a2, char *a3)
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  if (!a1 || (result = *a1) == 0)
  {
    result = *fig_log_get_emitter("com.apple.coremedia", "");
  }

  if (a2)
  {
    *a2 = (_MergedGlobals_1 & 0xFFFFFFFE) == 8;
  }

  if (a3)
  {
    if (byte_1ED4CC169)
    {
      v7 = 0;
    }

    else
    {
      v7 = _MergedGlobals_1 == 8;
    }

    v8 = !v7;
    *a3 = v8;
  }

  return result;
}

void *fig_log_get_emitter(const char *a1, const char *a2)
{
  if (fig_log_get_emitter_onceToken != -1)
  {
    fig_log_get_emitter_cold_1();
  }

  if (!a1)
  {
    a1 = "com.apple.coremedia";
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s-%s", a1, v4);
  os_unfair_lock_lock(&fig_log_get_emitter_lock);
  Value = CFDictionaryGetValue(fig_log_get_emitter_emitterTable, v5);
  if (!Value)
  {
    AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
    Copy = CFStringCreateCopy(AllocatorForPermanentAllocations, v5);
    MallocZoneForPermanentAllocations = FigGetMallocZoneForPermanentAllocations();
    Value = malloc_type_zone_calloc(MallocZoneForPermanentAllocations, 1uLL, 8uLL, 0x2004093837F09uLL);
    *Value = os_log_create(a1, v4);
    CFDictionarySetValue(fig_log_get_emitter_emitterTable, Copy, Value);
    CFRelease(Copy);
  }

  os_unfair_lock_unlock(&fig_log_get_emitter_lock);
  if (v5)
  {
    CFRelease(v5);
  }

  return Value;
}

uint64_t fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(uint64_t *a1, uint64_t a2, int *a3, _BYTE *a4)
{
  os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(a1, a3);
  if (a4)
  {
    *a4 = fig_log_get_os_log_type(a2, v6);
  }

  return os_log_and_send_and_compose_flags;
}

uint64_t fig_log_emitter_get_os_log_and_send_and_compose_flags(uint64_t *a1, int *a2)
{
  v5 = 0;
  result = fig_log_emitter_get_os_log(a1, &v5 + 1, &v5);
  if (a2)
  {
    v4 = 2 * (v5 != 0);
    *a2 = v4;
    if (HIBYTE(v5))
    {
      *a2 = v4 | 1;
    }
  }

  return result;
}

uint64_t fig_log_get_os_log_type(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    if (a1 == 3)
    {
      return 17;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    if (FigNote_AllowInternalDefaultLogs_onceToken != -1)
    {
      FigNote_AllowInternalDefaultLogs_cold_1();
    }

    if (gAllowInternalDefaultLogs)
    {
      return 16;
    }

    else
    {
      return 16 * FigServer_ShouldLogFigErrorsAsErrorsInThisProcess();
    }
  }
}

void fig_log_call_emit_and_clean_up_after_send_and_compose(uint64_t *a1, uint64_t a2, int a3, char *a4, uint64_t a5, char a6)
{
  if ((a6 & 2) != 0)
  {
    v6 = a5;
    fig_log_emit(a1, a2, a3 | 8u, 0, a5, "%s", a4);
    if (v6)
    {

      free(a4);
    }
  }
}

void fig_log_emit(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, ...)
{
  va_start(va, a6);
  if (_MergedGlobals_1)
  {
    v7 = (a4 | a6) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (!a4)
    {
      LOBYTE(a3) = a3 | 4;
    }

    fig_log_internal(result, a2, a3, a4, a6, va, v6);
  }
}

void fig_log(uint64_t result, char a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    if (_MergedGlobals_1)
    {
      fig_log_internal(0, result, a2 | 4, 0, a5, va, v5);
    }
  }
}

void fig_log_with_return_address(uint64_t *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    if (_MergedGlobals_1)
    {
      fig_log_internal(result, a2, a3 | 4, 0, a7, va, a6);
    }
  }
}

void fig_log_CF1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    if (_MergedGlobals_1)
    {
      fig_log_internal(0, result, a2, 0, a5, va, v5);
    }
  }
}