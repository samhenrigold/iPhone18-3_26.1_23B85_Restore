uint64_t hevcbridgeMeasureSliceHeaderCallbackUnsigned(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 <= 0x1F)
  {
    v3 = 0;
  }

  else
  {
    v3 = -12712;
  }

  if (a2)
  {
    return 4294954584;
  }

  else
  {
    return v3;
  }
}

size_t FigHEVCBridge_CopyParsingInformation(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  v30 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  v24 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = 0;
  v23[3] = a1 + a2;
  BYTE8(v24) = 1;
  v25 = a1;
  v26 = a1;
  DWORD2(v27) = 0;
  v15 = hevcbridgeAdvanceInBitstream(v23, 0, v9, v10, v11, v12, v13, v14, v19);
  if (v15)
  {
    goto LABEL_8;
  }

  *(&v22[7] + 1) = -1;
  *&v16 = -1;
  *(&v16 + 1) = -1;
  *(&v22[6] + 8) = v16;
  *(&v22[5] + 8) = v16;
  *(&v22[4] + 8) = v16;
  *(&v22[3] + 8) = v16;
  *(&v22[2] + 8) = v16;
  *(&v22[1] + 8) = v16;
  *(v22 + 8) = v16;
  *&v20 = Mutable;
  *(&v20 + 1) = hevcbridgeCopyParsingInformationCallbackFlag;
  *&v21 = hevcbridgeCopyParsingInformationCallbackUnsigned;
  *(&v21 + 1) = hevcbridgeCopyParsingInformationCallbackSigned;
  *&v22[0] = hevcbridgeCopyParsingInformationCallbackCFData;
  if (a3)
  {
    *&v22[6] = *a3;
    *(&v22[6] + 1) = a3 + 1;
  }

  *&v22[7] = 0;
  v17 = hevcbridgeParseNALUnit(v23, &v20);
  if (v17)
  {
    CFStringAppendFormat(Mutable, 0, @"Error found: %d\n", v17);
  }

  if (!a4)
  {
LABEL_8:
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a4 = Mutable;
  }

  return v15;
}

uint64_t hevcbridgeCopyParsingInformationCallbackFlag(__CFString *a1, int a2, int a3, uint64_t a4)
{
  if (a2 < 0)
  {
    v4 = "unknown field";
  }

  else
  {
    v4 = NALFieldsStrings[a2];
  }

  v5 = "SET";
  if (!a3)
  {
    v5 = "not set";
  }

  if ((a4 & 0x80000000) != 0)
  {
    CFStringAppendFormat(a1, 0, @"%s: %s\n", v4, v5);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%s[%d]: %s\n", v4, a4, v5);
  }

  return 0;
}

uint64_t hevcbridgeCopyParsingInformationCallbackUnsigned(__CFString *a1, int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v3 = "unknown field";
  }

  else
  {
    v3 = NALFieldsStrings[a2];
  }

  if (a2 <= 115)
  {
    if (a2 <= 29)
    {
      if (a2)
      {
        if (a2 == 27)
        {
          v7 = a3;
          v8 = a3 >> 8;
LABEL_33:
          CFStringAppendFormat(a1, 0, @"%s: %u and %u\n", v3, v7, v8);
          return 0;
        }

        goto LABEL_35;
      }

      v4 = nalUnitTypeString;
      goto LABEL_29;
    }

    if (a2 == 30)
    {
      v7 = a3;
      v8 = WORD1(a3);
      goto LABEL_33;
    }

    if (a2 != 72)
    {
LABEL_35:
      CFStringAppendFormat(a1, 0, @"%s: %u\n", v3, a3);
      return 0;
    }

    if (a3 <= 3)
    {
      v4 = off_1E74A2A50;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a2 <= 327)
  {
    if (a2 == 116)
    {
      if (a3 <= 5)
      {
        v4 = off_1E74A2A70;
        goto LABEL_29;
      }
    }

    else
    {
      if (a2 != 269)
      {
        goto LABEL_35;
      }

      if (a3 <= 2)
      {
        v4 = off_1E74A2AA0;
LABEL_29:
        v5 = v4[a3];
        goto LABEL_31;
      }
    }

LABEL_30:
    v5 = "?";
    goto LABEL_31;
  }

  if (a2 == 328)
  {
    CFStringAppendFormat(a1, 0, @"%s: %u (%f)\n", v3, a3, (a3 / 30.0));
    return 0;
  }

  if (a2 != 344)
  {
    goto LABEL_35;
  }

  v5 = "?";
  if (a3 > 136)
  {
    if (a3 <= 147)
    {
      switch(a3)
      {
        case 0x89:
          v5 = "mastering_display_colour_volume";
          break;
        case 0x90:
          v5 = "content_light_level_info";
          break;
        case 0x93:
          v5 = "alternative_transfer_characteristics";
          break;
      }
    }

    else if (a3 > 164)
    {
      if (a3 == 165)
      {
        v5 = "alpha_channel_info";
      }

      else if (a3 == 176)
      {
        v5 = "three_dimensional_reference_displays_info";
      }
    }

    else if (a3 == 148)
    {
      v5 = "ambient_viewing_environment";
    }

    else if (a3 == 149)
    {
      v5 = "content_color_volume";
    }
  }

  else if (a3 <= 4)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = "pic_timing";
      }

      else if (a3 == 4)
      {
        v5 = "user_data_registered_itut35";
      }
    }

    else
    {
      v5 = "buffering_period";
    }
  }

  else if (a3 > 128)
  {
    if (a3 == 129)
    {
      v5 = "active_parameter_sets";
    }

    else if (a3 == 132)
    {
      v5 = "decoded_picture_hash";
    }
  }

  else if (a3 == 5)
  {
    v5 = "user_data_unregistered";
  }

  else if (a3 == 128)
  {
    v5 = "structure_of_pictures_info";
  }

LABEL_31:
  CFStringAppendFormat(a1, 0, @"%s: %s (%u)\n", v3, v5, a3);
  return 0;
}

uint64_t hevcbridgeCopyParsingInformationCallbackSigned(__CFString *a1, int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v5 = "unknown field";
  }

  else
  {
    v5 = NALFieldsStrings[a2];
  }

  CFStringAppendFormat(a1, 0, @"%s: %d\n", v5, a3, v3, v4);
  return 0;
}

uint64_t hevcbridgeCopyParsingInformationCallbackCFData(__CFString *a1, int a2, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  if (a2 < 0)
  {
    v8 = "unknown field";
  }

  else
  {
    v8 = NALFieldsStrings[a2];
  }

  CFStringAppendFormat(a1, 0, @"%s: ", v8);
  CFStringAppendFormat(a1, 0, @"{length = %lu, bytes = 0x", Length);
  if (Length < 25)
  {
    if (Length >= 1)
    {
      do
      {
        v12 = *BytePtr++;
        CFStringAppendFormat(a1, 0, @"%02x", v12);
        --Length;
      }

      while (Length);
    }
  }

  else
  {
    v9 = 0;
    do
    {
      CFStringAppendFormat(a1, 0, @"%02x%02x%02x%02x", BytePtr[v9], BytePtr[v9 + 1], BytePtr[v9 + 2], BytePtr[v9 + 3]);
      v10 = v9 >= 0xC;
      v9 += 4;
    }

    while (!v10);
    CFStringAppend(a1, @" ... ");
    v11 = Length - 8;
    do
    {
      CFStringAppendFormat(a1, 0, @"%02x%02x%02x%02x", BytePtr[v11], BytePtr[v11 + 1], BytePtr[v11 + 2], BytePtr[v11 + 3]);
      v11 += 4;
    }

    while (v11 < Length);
  }

  CFStringAppend(a1, @"}\n");
  return 0;
}

uint64_t hevcbridgeGetRPUMetadataCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if (a3 != 62 && a2 == 0)
  {
    return 4294954584;
  }

  else
  {
    return 0;
  }
}

size_t FigHEVCBridge_WritePaddingNALU(unsigned int a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (!a3)
  {
    FigHEVCBridge_WritePaddingNALU_cold_5(&v19);
    return v19;
  }

  if (a2 <= 4 && ((1 << a2) & 0x16) != 0)
  {
    v12 = a1 - (a2 + 2);
    if (a1 <= a2 + 2)
    {
      FigHEVCBridge_WritePaddingNALU_cold_1(&v19);
    }

    else
    {
      v13 = a1 - a2;
      if (a2 == 2)
      {
        if (a1 < 0x10000)
        {
          *a3 = bswap32(v13) >> 16;
          goto LABEL_17;
        }

        FigHEVCBridge_WritePaddingNALU_cold_2(&v19);
      }

      else if (a2 == 1)
      {
        if (a1 < 0x100)
        {
          *a3 = v13;
LABEL_17:
          v18 = (a3 + a2);
          *v18 = 332;
          memset(v18 + 1, 255, v12);
          result = 0;
          *(a3 + a1 - 1) = 0x80;
          return result;
        }

        FigHEVCBridge_WritePaddingNALU_cold_3(&v19);
      }

      else
      {
        if (a1 <= 0x10000 || a2 != 4)
        {
          *a3 = bswap32(v13);
          goto LABEL_17;
        }

        FigHEVCBridge_WritePaddingNALU_cold_4(&v19);
      }
    }

    return v19;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x37FE, v9, v15, v16, a9);
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload(CFDataRef theData, CFDataRef *a2)
{
  if (!a2)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_6(&v27);
LABEL_23:
    v11 = 0;
    v3 = 0;
    goto LABEL_24;
  }

  v3 = theData;
  if (!theData)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_5(&v27);
    v11 = 0;
    goto LABEL_24;
  }

  Length = CFDataGetLength(theData);
  if (Length >= 0xFF)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_4(&v27);
    goto LABEL_23;
  }

  v6 = Length;
  BytePtr = CFDataGetBytePtr(v3);
  if (!BytePtr)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_3(&v27);
    goto LABEL_23;
  }

  v8 = BytePtr;
  v9 = *BytePtr;
  if (v9 == 4 || v9 == 181)
  {
    v10 = v6 + 2;
    v3 = malloc_type_calloc(1uLL, v6 + 2, 0xECEC7A3EuLL);
    v11 = malloc_type_calloc(1uLL, 2 * (v6 + 2), 0x24D5DD78uLL);
    if (v3)
    {
      if (*v8 == 181)
      {
        *v3 = 4;
        *(v3 + 1) = v6;
        memcpy(v3 + 2, v8, v6);
      }

      else
      {
        v10 = v6 - 2;
        v16 = v8[v6 - 2];
        v17 = v8[v6 - 1];
        memcpy(v3, v8, v6 - 2);
        if (v16 != 128 || v17 != 0)
        {
          v10 = v6;
        }
      }

      BufferWithStartCodeEmulationBytes = generateBufferWithStartCodeEmulationBytes(v10, v3, v11);
      v20 = BufferWithStartCodeEmulationBytes;
      v21 = *MEMORY[0x1E695E480];
      GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(BufferWithStartCodeEmulationBytes, v22);
      v24 = CFDataCreateWithBytesNoCopy(v21, v11, v20, GlobalCFAllocatorFigMalloc);
      if (v24)
      {
        v11 = 0;
        v15 = 0;
        *a2 = v24;
        goto LABEL_18;
      }

      FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_1(&v27);
    }

    else
    {
      FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_2(&v27);
    }

LABEL_24:
    v15 = v27;
    goto LABEL_18;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3837, v2, v13, v14, v26);
  v11 = 0;
  v3 = 0;
LABEL_18:
  free(v3);
  free(v11);
  return v15;
}

size_t hevcbridgeUPullLong(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  if (*(a1 + 41))
  {
    hevcbridgeUPullLong_cold_1(&v19);
LABEL_12:
    v11 = 0;
    result = v19;
    goto LABEL_8;
  }

  if (a2 <= 0)
  {
    hevcbridgeUPullLong_cold_3(&v19);
    goto LABEL_12;
  }

  if (a2 >= 0x21)
  {
    hevcbridgeUPullLong_cold_2(&v19);
    goto LABEL_12;
  }

  if (a2 > 0x18)
  {
    v19 = 0;
    v17 = 0;
    result = hevcbridgeUPull(a1, (a2 - 16), &v19, a4, a5, a6, a7, a8);
    if (result)
    {
      v11 = 0;
    }

    else
    {
      result = hevcbridgeUPull(a1, 16, &v17, v12, v13, v14, v15, v16);
      v11 = v17 + (v19 << 16);
    }
  }

  else
  {
    result = hevcbridgeUPull(a1, a2, &v18, a4, a5, a6, a7, a8);
    v11 = v18;
  }

LABEL_8:
  *a3 = v11;
  return result;
}

size_t hevcbridgeUPullAlways(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = hevcbridgeUPullLong(a1, a6, a5, a4, a5, a6, a7, a8);
  if (a3 && !result)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = *a5;

    return v13(v14, a4, v15, 0xFFFFFFFFLL);
  }

  return result;
}

size_t hevcbridgeParseVideoParameterSet(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v10 = *(a2 + 44);
  v11 = hevcbridgeUPullLong(a1, 4, &v147, a4, a5, a6, a7, a8);
  v15 = v11;
  if ((v10 & 1) != 0 && !v11)
  {
    v15 = (a2[2])(*a2, 3, v147, 0xFFFFFFFFLL);
  }

  if (v15)
  {
    goto LABEL_5;
  }

  v24 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 1) & 1, 4, &v146 + 1, v12, v13, v14);
  if (v24)
  {
    goto LABEL_17;
  }

  v24 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 2) & 1, 5, &v146, v25, v26, v27);
  if (v24)
  {
    goto LABEL_17;
  }

  v33 = *(a2 + 44);
  v34 = hevcbridgeUPullLong(a1, 6, &v145 + 1, v28, v29, v30, v31, v32);
  v15 = v34;
  if ((v33 & 8) != 0 && !v34)
  {
    v15 = (a2[2])(*a2, 6, HIDWORD(v145), 0xFFFFFFFFLL);
  }

  if (v15)
  {
    goto LABEL_5;
  }

  v24 = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 4) & 1, 7, &v145, 3, v35, v36);
  if (v24)
  {
    goto LABEL_17;
  }

  v24 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 5) & 1, 8, v37, v38, v39, v40, v129);
  if (v24)
  {
    goto LABEL_17;
  }

  v24 = hevcbridgeUSkip(a1, 16, v41, v42, v43, v44, v45, v46, v130);
  if (v24)
  {
    goto LABEL_17;
  }

  v51 = v145;
  v52 = hevcbridgeParseProfileTierLevel(a1, a2, 1, v145, v47, v48, v49, v50);
  v15 = v52;
  if (v52 == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = a2[18];
    if (!v18)
    {
      goto LABEL_15;
    }

LABEL_11:
    v20 = *v18;
    if (v20)
    {
      v21 = v147;
      *v20 = 32;
      v20[1] = v21;
    }

    goto LABEL_15;
  }

  if (v52)
  {
    goto LABEL_5;
  }

  v24 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 6) & 1, 9, &v144, v53, v54, v55);
  if (v24)
  {
    goto LABEL_17;
  }

  v63 = v144 ? 0 : v51;
  do
  {
    v24 = hevcbridgeUESkip(a1, v56, v57, v58, v59, v60, v61, v62, v131);
    if (v24)
    {
      goto LABEL_17;
    }

    v24 = hevcbridgeUESkip(a1, v64, v65, v66, v67, v68, v69, v70, v132);
    if (v24)
    {
      goto LABEL_17;
    }

    v24 = hevcbridgeUESkip(a1, v71, v72, v73, v74, v75, v76, v77, v133);
    if (v24)
    {
      goto LABEL_17;
    }

    ++v63;
  }

  while (v63 <= v51);
  v24 = hevcbridgeUPullAlways(a1, a2, *(a2 + 44) >> 7, 10, &v143, 6, v61, v62);
  if (v24 || (v24 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 8) & 1, 11, &v142, v78, v79, v80), v24))
  {
LABEL_17:
    v15 = v24;
LABEL_5:
    v16 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v136 = v142;
  if (v142 < 0x400)
  {
    if (v142)
    {
      v88 = v143;
      v89 = v143 + 1;
      v137 = malloc_type_calloc(v142 + 1, v143 + 1, 0x100004077774924uLL);
      v90 = 1;
      v135 = malloc_type_calloc(v136 + 1, 1uLL, 0x100004077774924uLL);
LABEL_43:
      v91 = 0;
      v92 = 0;
      while (1)
      {
        LOBYTE(v139) = 0;
        v93 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 9) & 1, 12, &v139, v85, v86, v87);
        if (v93)
        {
          goto LABEL_55;
        }

        if (v139)
        {
          v137[v89 * v90 + v91++] = v92;
        }

        if (++v92 > v88)
        {
          v135[v90++] = v91;
          if (v90 <= v136)
          {
            goto LABEL_43;
          }

          goto LABEL_51;
        }
      }
    }

    v135 = 0;
    v137 = 0;
LABEL_51:
    v93 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 10) & 1, 13, &v141 + 1, v85, v86, v87);
    if (v93)
    {
      goto LABEL_55;
    }

    if (HIBYTE(v141))
    {
      v140 = 0;
      v139 = 0;
      v93 = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 11) & 1, 14, 32, v94, v95, v96, v131);
      if (v93)
      {
        goto LABEL_55;
      }

      v93 = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 12) & 1, 15, 32, v97, v98, v99, v134);
      if (v93)
      {
        goto LABEL_55;
      }

      v93 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 13) & 1, 16, &v140, v100, v101, v102);
      if (v93)
      {
        goto LABEL_55;
      }

      if (v140)
      {
        v93 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 14) & 1, 17, v103, v104, v105, v106, v131);
        if (v93)
        {
          goto LABEL_55;
        }
      }

      v93 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 15) & 1, 18, &v139, v104, v105, v106);
      if (v93)
      {
        goto LABEL_55;
      }

      v111 = v139;
      if (v139)
      {
        v112 = 0;
        do
        {
          v93 = hevcbridgeUESkip(a1, v107, v108, v109, v110, v94, v95, v96, v131);
          if (v93)
          {
            goto LABEL_55;
          }

          if (v112)
          {
            v138 = 0;
            v93 = hevcbridgeUPull(a1, 1, &v138, v113, v114, v115, v116, v117);
            if (v93)
            {
              goto LABEL_55;
            }

            v118 = v138;
          }

          else
          {
            v118 = 1;
          }

          v93 = hevcbridgeParseHRDParameters(a1, a2, v118, v51, v114, v115, v116, v117);
          if (v93)
          {
            goto LABEL_55;
          }
        }

        while (v111 != ++v112);
      }
    }

    v15 = hevcbridgeUPullFlagAlways(a1, a2, HIWORD(*(a2 + 11)) & 1, 19, &v141, v94, v95, v96);
    if (v15 || !v141)
    {
      goto LABEL_56;
    }

    v139 = 0;
    while (*(a1 + 76))
    {
      v93 = hevcbridgeUPullLong(a1, 1, &v139, v119, v120, v121, v122, v123);
      if (v93)
      {
        goto LABEL_55;
      }

      if (v139 != 1)
      {
        hevcbridgeParseVideoParameterSet_cold_1(v93, v124, v125, v119, v120, v121, v122, v123, v131);
        v15 = 4294954582;
        goto LABEL_56;
      }
    }

    v93 = hevcbridgeParseVPSExtension(a1, a2, HIBYTE(v146), v146, HIDWORD(v145), v51, v136, v143, v137, v135);
    if (!v93)
    {
      v93 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 17) & 1, 20, &v138, v126, v127, v128);
    }

LABEL_55:
    v15 = v93;
LABEL_56:
    v16 = v137;
    v17 = v135;
    goto LABEL_6;
  }

  hevcbridgeParseVideoParameterSet_cold_2(v24, v81, v82, v83, v84, v85, v86, v87, v131);
  v16 = 0;
  v17 = 0;
  v15 = 4294954582;
LABEL_6:
  v18 = a2[18];
  if (v18)
  {
    v19 = v15 >= 2;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    if (!v18)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v22 = *v18;
  if (*v18)
  {
    *v18 = 0;
    free(v22);
  }

LABEL_15:
  free(v16);
  free(v17);
  return v15;
}

uint64_t hevcbridgeParsePictureParameterSet(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v237 = 0;
  v238 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v10 = *(a2 + 44);
  v11 = hevcbridgeUEPullLong(a1, &v238, a3, a4, a5, a6, a7, a8);
  v18 = v11;
  if ((v10 & 1) != 0 && !v11)
  {
    v18 = (a2[2])(*a2, 163, v238, 0xFFFFFFFFLL);
  }

  if (v18)
  {
    goto LABEL_13;
  }

  if (a2[18])
  {
    *a2[18] = malloc_type_calloc(1uLL, 0x11A0uLL, 0x1000040A601553DuLL);
    v19 = *a2[18];
    if (!v19)
    {
      v18 = 4294954583;
      goto LABEL_13;
    }

    v20 = v238;
    *v19 = 34;
    v19[1] = v20;
    v21 = v19 + 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a2 + 44);
  v23 = hevcbridgeUEPullLong(a1, &v237, v12, v13, v14, v15, v16, v17);
  v18 = v23;
  if ((v22 & 2) != 0 && !v23)
  {
    v18 = (a2[2])(*a2, 164, v237, 0xFFFFFFFFLL);
  }

  if (v18)
  {
    goto LABEL_13;
  }

  v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 2) & 1, 165, &v236 + 1, v24, v25, v26);
  if (v30)
  {
    goto LABEL_19;
  }

  v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 3) & 1, 166, &v236, v31, v32, v33);
  if (v30)
  {
    goto LABEL_19;
  }

  v30 = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 4) & 1, 167, &v233, 3, v34, v35);
  if (v30)
  {
    goto LABEL_19;
  }

  v30 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 5) & 1, 168, v36, v37, v38, v39, v206);
  if (v30)
  {
    goto LABEL_19;
  }

  v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 6) & 1, 169, &v235, v40, v41, v42);
  if (v30)
  {
    goto LABEL_19;
  }

  v30 = hevcbridgeUEPullAlways(a1, a2, *(a2 + 44) >> 7, 170, &v234 + 1, v43, v44, v45);
  if (v30)
  {
    goto LABEL_19;
  }

  v53 = HIDWORD(v234);
  if (HIDWORD(v234) >= 0xF)
  {
    hevcbridgeParsePictureParameterSet_cold_4(v30, v46, v47, v48, v49, v50, v51, v52, v207);
    goto LABEL_51;
  }

  v30 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 8) & 1, 171, &v234, v50, v51, v52);
  if (v30)
  {
    goto LABEL_19;
  }

  v61 = v234;
  if (v234 >= 0xF)
  {
    hevcbridgeParsePictureParameterSet_cold_3(v30, v54, v55, v56, v57, v58, v59, v60, v207);
    goto LABEL_51;
  }

  if ((v30 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 9) & 1, 172, v57, v58, v59, v60, v207), v30) || (v30 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 10) & 1, 173, v62, v63, v64, v65, v208), v30) || (v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 11) & 1, 174, &v232 + 1, v66, v67, v68), v30) || (v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 12) & 1, 175, &v232, v69, v70, v71), v30) || v232 && (v30 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 13) & 1, 176, v72, v73, v74, v75, v209), v30) || (v30 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 14) & 1, 177, v72, v73, v74, v75, v209), v30) || (v30 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 15) & 1, 178, v76, v77, v78, v79, v210), v30) || (v30 = hevcbridgeUPullFlagAlways(a1, a2, HIWORD(*(a2 + 11)) & 1, 179, &v231 + 1, v80, v81, v82), v30) || (v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 17) & 1, 180, &v231, v83, v84, v85), v30) || (v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 18) & 1, 181, &v230 + 1, v86, v87, v88), v30) || (v30 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 19) & 1, 182, v89, v90, v91, v92, v211), v30) || (v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 20) & 1, 183, &v230, v93, v94, v95), v30) || (v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 21) & 1, 184, &v229 + 1, v96, v97, v98), v30))
  {
LABEL_19:
    v18 = v30;
    goto LABEL_13;
  }

  v102 = a2[16];
  if (v102)
  {
    v103 = a2[17];
    while (1)
    {
      v104 = *v103;
      if (**v103 == 33 && v104[1] == v237)
      {
        break;
      }

      ++v103;
      if (!--v102)
      {
        goto LABEL_47;
      }
    }

    v105 = v104 + 2;
  }

  else
  {
LABEL_47:
    v105 = 0;
  }

  v218 = v230;
  if (v230)
  {
    v239 = 0;
    v220 = 0;
    v219 = 0;
    v30 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 22) & 1, 185, &v239, v99, v100, v101);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 23) & 1, 186, &v220, v106, v107, v108);
    if (v30)
    {
      goto LABEL_19;
    }

    if (v105)
    {
      v116 = ~(-1 << (*(v105 + 8) + *(v105 + 12) + 3));
      if (v239 >= (v105[4] + v116) >> (*(v105 + 8) + *(v105 + 12) + 3))
      {
        v204 = 4500;
      }

      else
      {
        if (v220 < (v105[5] + v116) >> (*(v105 + 8) + *(v105 + 12) + 3))
        {
          goto LABEL_59;
        }

        v204 = 4502;
      }

      hevcbridgeParsePictureParameterSet_cold_1(v204, v109, v110, v111, v112, v113, v114, v115, v212);
      goto LABEL_51;
    }

LABEL_59:
    v30 = hevcbridgeUPullFlagAlways(a1, a2, HIBYTE(*(a2 + 11)) & 1, 187, &v219, v113, v114, v115);
    if (v30)
    {
      goto LABEL_19;
    }

    if (!v219)
    {
      v124 = v239;
      if (v239)
      {
        do
        {
          v30 = hevcbridgeUESkip(a1, v117, v118, v119, v120, v121, v122, v123, v212);
          if (v30)
          {
            goto LABEL_19;
          }
        }

        while (--v124);
      }

      v125 = v220;
      if (v220)
      {
        do
        {
          v30 = hevcbridgeUESkip(a1, v117, v118, v119, v120, v121, v122, v123, v212);
          if (v30)
          {
            goto LABEL_19;
          }
        }

        while (--v125);
      }
    }

    v30 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 25) & 1, 188, v120, v121, v122, v123, v212);
    if (v30)
    {
      goto LABEL_19;
    }
  }

  v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 26) & 1, 189, &v229, v99, v100, v101);
  if (v30)
  {
    goto LABEL_19;
  }

  v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 27) & 1, 190, &v228 + 1, v126, v127, v128);
  if (v30)
  {
    goto LABEL_19;
  }

  if (!HIBYTE(v228))
  {
LABEL_76:
    v136 = 0;
    goto LABEL_77;
  }

  v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 28) & 1, 191, &v228, v129, v130, v131);
  if (v30)
  {
    goto LABEL_19;
  }

  v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 29) & 1, 192, &v227 + 1, v132, v133, v134);
  if (v30)
  {
    goto LABEL_19;
  }

  v136 = HIBYTE(v227);
  if (!HIBYTE(v227))
  {
    v30 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 30) & 1, 193, v135, v129, v130, v131, v212);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeSEPullIfRequested(a1, a2, *(a2 + 11) >> 31, 194, v137, v138, v139, v140, v213);
    if (v30)
    {
      goto LABEL_19;
    }

    goto LABEL_76;
  }

LABEL_77:
  v30 = hevcbridgeUPullFlagAlways(a1, a2, a2[6] & 1, 195, &v227, v129, v130, v131);
  if (v30)
  {
    goto LABEL_19;
  }

  if (!v227)
  {
    goto LABEL_81;
  }

  v148 = hevcbridgeParseScalingListData(a1, v141, v142, v143, v144, v145, v146, v147);
  v18 = v148;
  if (v148 == 1)
  {
    return v18;
  }

  if (!v148)
  {
LABEL_81:
    v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 33) & 1, 196, &v226 + 1, v145, v146, v147);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 34) & 1, 197, v149, v150, v151, v152, v212);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 35) & 1, 198, &v226, v153, v154, v155);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 36) & 1, 199, &v225 + 1, v156, v157, v158);
    if (v30)
    {
      goto LABEL_19;
    }

    if (!HIBYTE(v225))
    {
      goto LABEL_110;
    }

    v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 37) & 1, 200, &v225, v163, v164, v165);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 38) & 1, 201, &v224 + 1, v166, v167, v168);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 39) & 1, 202, &v224, v169, v170, v171);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 40) & 1, 203, &v223, v172, v173, v174);
    if (v30)
    {
      goto LABEL_19;
    }

    v30 = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 41) & 1, 204, &v222, 4, v175, v176);
    if (v30)
    {
      goto LABEL_19;
    }

    if (v225)
    {
      if (HIBYTE(v232))
      {
        v30 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 42) & 1, 205, v162, v163, v164, v165, v214);
        if (v30)
        {
          goto LABEL_19;
        }
      }

      v30 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 43) & 1, 206, v162, v163, v164, v165, v214);
      if (v30)
      {
        goto LABEL_19;
      }

      v30 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 44) & 1, 207, &v221, v177, v178, v179);
      if (v30)
      {
        goto LABEL_19;
      }

      v184 = v221;
      if (v221)
      {
        v239 = 0;
        v30 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 45) & 1, 208, v180, v181, v182, v183, v215);
        if (!v30)
        {
          v30 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 46) & 1, 209, &v239, v185, v186, v187);
          if (!v30)
          {
            v191 = v239;
            if (v239 <= 5)
            {
              v192 = 0;
              while (1)
              {
                v30 = hevcbridgeSESkip(a1, v188, v189, v190, v180, v181, v182, v183, v215);
                if (v30)
                {
                  goto LABEL_19;
                }

                v30 = hevcbridgeSESkip(a1, v193, v194, v195, v196, v197, v198, v199, v216);
                if (v30)
                {
                  goto LABEL_19;
                }

                if (++v192 > v191)
                {
                  goto LABEL_104;
                }
              }
            }

            hevcbridgeParsePictureParameterSet_cold_2(v30, v188, v189, v190, v180, v181, v182, v183, v215);
LABEL_51:
            v18 = 4294954582;
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_104:
      v30 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 47) & 1, 210, v180, v181, v182, v183, v215);
      if (v30)
      {
        goto LABEL_19;
      }

      v30 = hevcbridgeUEPullIfRequested(a1, a2, *(a2 + 25) & 1, 211, v200, v201, v202, v203, v217);
      if (v30)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_110:
      v184 = 0;
    }

    if (v21)
    {
      v205 = v233;
      *v21 = v237;
      v21[1] = v205;
      v21[2] = v53;
      v21[3] = v61;
      *(v21 + 16) = HIBYTE(v236);
      *(v21 + 17) = v236;
      *(v21 + 18) = HIBYTE(v226);
      *(v21 + 19) = v235;
      *(v21 + 20) = v231;
      *(v21 + 21) = HIBYTE(v230);
      *(v21 + 22) = HIBYTE(v231);
      *(v21 + 23) = v184;
      *(v21 + 24) = v228;
      *(v21 + 25) = v136;
      *(v21 + 26) = v229;
      *(v21 + 27) = v218;
      *(v21 + 28) = HIBYTE(v229);
      *(v21 + 29) = v226;
    }

    if (HIBYTE(v224))
    {
      v30 = hevcbridgeParsePictureParameterSetMultilayerExtension(a1, a2, v160, v161, v162, v163, v164, v165);
      if (v30)
      {
        goto LABEL_19;
      }
    }

    if (v224)
    {
      hevcbridgeParsePictureParameterSet_cold_6(v30, v159, v160, v161, v162, v163, v164, v165, v214);
      goto LABEL_51;
    }

    if (!v223)
    {
      if (!v222)
      {
        return 0;
      }

      goto LABEL_124;
    }

    v18 = hevcbridgeParsePictureParameterSetSCCExtension(a1, a2, v160, v161, v162, v163, v164, v165);
    if (!v18 && v222)
    {
LABEL_124:
      hevcbridgeParsePictureParameterSet_cold_5(a1, a2, &v239);
      v18 = v239;
    }
  }

LABEL_13:
  if (v18 >= 2)
  {
    v27 = a2[18];
    if (v27)
    {
      v28 = *v27;
      if (*v27)
      {
        *v27 = 0;
        free(v28);
      }
    }
  }

  return v18;
}

uint64_t hevcbridgeParseSEIRBSP(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v11 = *MEMORY[0x1E695E480];
  do
  {
    v65 = 0;
    v66 = 0;
    if (*(a2 + 44))
    {
      Mutable = CFDataCreateMutable(v11, 0);
      if (!Mutable)
      {
        hevcbridgeParseSEIRBSP_cold_1(bytes);
        v16 = *bytes;
        if (*bytes)
        {
          return v16;
        }

        continue;
      }
    }

    else
    {
      Mutable = 0;
    }

    LODWORD(v13) = 0;
    do
    {
      v14 = *(a2 + 44);
      v15 = hevcbridgeUPullLong(a1, 8, &v66, a4, a5, a6, a7, a8);
      v16 = v15;
      if ((v14 & 2) != 0 && !v15)
      {
        v16 = (a2[2])(*a2, 343, v66, 0xFFFFFFFFLL);
      }

      if (v16)
      {
LABEL_92:
        if (!Mutable)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      v17 = v66;
      if (Mutable)
      {
        bytes[0] = v66;
        CFDataAppendBytes(Mutable, bytes, 1);
      }

      v13 = v17 + v13;
    }

    while (v17 == 255);
    if ((*(a2 + 44) & 4) != 0)
    {
      v18 = (a2[2])(*a2, 344, v13, 0xFFFFFFFFLL);
      if (v18)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v19) = 0;
    do
    {
      v20 = *(a2 + 44);
      v21 = hevcbridgeUPullLong(a1, 8, &v65, a4, a5, a6, a7, a8);
      v16 = v21;
      if ((v20 & 8) != 0 && !v21)
      {
        v16 = (a2[2])(*a2, 345, v65, 0xFFFFFFFFLL);
      }

      if (v16)
      {
        goto LABEL_92;
      }

      v23 = v65;
      if (Mutable)
      {
        bytes[0] = v65;
        CFDataAppendBytes(Mutable, bytes, 1);
      }

      v19 = v23 + v19;
    }

    while (v23 == 255);
    if (v19 >= 0x100000)
    {
      hevcbridgeParseSEIRBSP_cold_8(bytes);
    }

    else
    {
      if (!Mutable)
      {
        v27 = 0;
        goto LABEL_30;
      }

      Length = CFDataGetLength(Mutable);
      if ((Length & 0x8000000000000000) != 0)
      {
        hevcbridgeParseSEIRBSP_cold_4(bytes);
        goto LABEL_132;
      }

      v25 = Length;
      if (Length >= 0x100000)
      {
        hevcbridgeParseSEIRBSP_cold_3(bytes);
        goto LABEL_132;
      }

      CFDataSetLength(Mutable, Length + v19);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      if (!MutableBytePtr)
      {
        hevcbridgeParseSEIRBSP_cold_2(bytes);
LABEL_132:
        v16 = *bytes;
LABEL_93:
        CFRelease(Mutable);
        goto LABEL_94;
      }

      v27 = &MutableBytePtr[v25];
LABEL_30:
      if ((*(a2 + 44) & 0x10) != 0)
      {
        v18 = (a2[2])(*a2, 346, v19, 0xFFFFFFFFLL);
        if (v18)
        {
LABEL_32:
          v16 = v18;
          if (!Mutable)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }
      }

      if (a3 != 39 || ((v62 = 1, (v13 - 148) > 0x1C) || ((1 << (v13 + 108)) & 0x10020001) == 0) && v13 != 4)
      {
        if ((*(a2 + 44) & 0x20) == 0)
        {
          if (!v27)
          {
            v18 = hevcbridgeUSkip(a1, (8 * v19), v22, a4, a5, a6, a7, a8, v61);
            if (v18)
            {
              goto LABEL_32;
            }

            v35 = 0;
            v62 = 0;
LABEL_54:
            v36 = *(a2 + 44);
            if ((v36 & 0x20) != 0)
            {
              v37 = (a2[4])(*a2, 347, v35);
              if (v37)
              {
                v16 = v37;
                goto LABEL_90;
              }

              v36 = *(a2 + 44);
            }

            if (v36)
            {
              v38 = (a2[4])(*a2, 342, Mutable);
              v16 = v38;
              if (v38 == 1)
              {
                goto LABEL_90;
              }

              v39 = v62;
              if (v38)
              {
                v39 = 0;
              }

              if ((v39 & 1) == 0)
              {
                goto LABEL_90;
              }
            }

            else if (!v62)
            {
LABEL_61:
              v16 = 0;
              goto LABEL_90;
            }

            v75 = 0;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            *bytes = 0u;
            v70 = 0u;
            BytePtr = CFDataGetBytePtr(v35);
            v41 = CFDataGetLength(v35);
            *bytes = BytePtr;
            *&bytes[8] = v41;
            *&v70 = 0;
            *(&v70 + 1) = &BytePtr[v41];
            WORD4(v71) = 0;
            *&v72 = BytePtr;
            *(&v72 + 1) = BytePtr;
            v73 = 0uLL;
            *(&v74 + 1) = 0;
            LODWORD(v75) = 0;
            v48 = hevcbridgeAdvanceInBitstream(bytes, 0, v42, v43, v44, v45, v46, v47, v61);
            if (v48)
            {
              v16 = v48;
            }

            else
            {
              v16 = 4294954584;
            }

            if (v48 || a3 != 39)
            {
              goto LABEL_90;
            }

            v16 = 4294954584;
            if (v13 > 164)
            {
              if (v13 == 176)
              {
                v50 = hevcbridgeParseSEI3DReferenceDisplaysInformation(bytes, a2, v49, a4, a5, a6, a7, a8, v61);
              }

              else
              {
                if (v13 != 165)
                {
                  goto LABEL_90;
                }

                v50 = hevcbridgeParseSEIAlphaChannelInfo(bytes, a2, v49, a4, a5, a6, a7, a8);
              }

              goto LABEL_88;
            }

            if (v13 != 4)
            {
              if (v13 != 148)
              {
                goto LABEL_90;
              }

              v50 = hevcbridgeUPullIfRequested(bytes, a2, a2[9] & 1, 356, 32, a6, a7, a8, v61);
              if (!v50)
              {
                v50 = hevcbridgeUPullIfRequested(bytes, a2, (*(a2 + 72) >> 1) & 1, 357, 16, a6, a7, a8, v61);
                if (!v50)
                {
                  v50 = hevcbridgeUPullIfRequested(bytes, a2, (*(a2 + 72) >> 2) & 1, 358, 16, a6, a7, a8, v61);
                }
              }

LABEL_88:
              v16 = v50;
              v53 = 1;
              goto LABEL_89;
            }

            v68 = 0;
            v67 = 0;
            v51 = *(a2 + 80);
            v52 = hevcbridgeUPullLong(bytes, 8, &v68 + 1, a4, a5, a6, a7, a8);
            v16 = v52;
            if ((v51 & 1) != 0 && !v52)
            {
              v16 = (a2[2])(*a2, 372, HIDWORD(v68), 0xFFFFFFFFLL);
            }

            if (!v16)
            {
              if (HIDWORD(v68) == 181)
              {
                v55 = *(a2 + 80);
                v56 = hevcbridgeUPullLong(bytes, 16, &v68, a4, a5, a6, a7, a8);
                v16 = v56;
                if ((v55 & 4) != 0 && !v56)
                {
                  v16 = (a2[2])(*a2, 374, v68, 0xFFFFFFFFLL);
                }

                if (v16)
                {
                  goto LABEL_86;
                }

                if (v68 != 60)
                {
                  goto LABEL_138;
                }

                v57 = *(a2 + 80);
                v58 = hevcbridgeUPullLong(bytes, 16, &v67, a4, a5, a6, a7, a8);
                v16 = v58;
                if ((v57 & 8) != 0 && !v58)
                {
                  v16 = (a2[2])(*a2, 375, v67, 0xFFFFFFFFLL);
                }

                if (v16)
                {
                  goto LABEL_86;
                }

                if (v67 == 1)
                {
                  v16 = hevcbridgeParseHDR10PlusITUT35();
                }

                else
                {
LABEL_138:
                  v16 = 0;
                }
              }

              else if (HIDWORD(v68) == 255)
              {
                v16 = hevcbridgeUPullIfRequested(bytes, a2, (*(a2 + 80) >> 1) & 1, 373, 8, a6, a7, a8, v61);
              }

              else
              {
                v16 = 0;
              }
            }

LABEL_86:
            v53 = 0;
LABEL_89:
            if (v16 == 1)
            {
              goto LABEL_90;
            }

            if (!v16)
            {
              if (BYTE9(v71))
              {
                goto LABEL_61;
              }

              HIDWORD(v68) = 0;
              v16 = hevcbridgeUPullLong(bytes, (8 - HIDWORD(v73)), &v68 + 1, a4, a5, a6, a7, a8);
              if (!v16)
              {
                if (BYTE9(v71))
                {
                  v54 = HIDWORD(v68);
                }

                else
                {
                  v54 = *(*bytes + *&bytes[8] - 1);
                }

                if (v54)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = v53;
                }

                if (v59 == 1)
                {
                  hevcbridgeParseSEIRBSP_cold_7();
                  v16 = 4294954582;
                  goto LABEL_90;
                }

                v16 = 0;
              }
            }

            if (!v16)
            {
              goto LABEL_61;
            }

LABEL_90:
            if (!v35)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }

          v63 = v11;
          v28 = a3;
          v29 = 0;
          v30 = 0;
          v62 = 0;
          if (v19)
          {
            goto LABEL_47;
          }

LABEL_53:
          a3 = v28;
          v35 = v30;
          v11 = v63;
          goto LABEL_54;
        }

        v62 = 0;
      }

      v31 = CFDataCreateMutable(v11, v19);
      if (v31)
      {
        v32 = v31;
        v63 = v11;
        v28 = a3;
        CFDataSetLength(v31, v19);
        v30 = v32;
        v33 = CFDataGetMutableBytePtr(v32);
        if (!v33)
        {
          hevcbridgeParseSEIRBSP_cold_5(bytes);
          v16 = *bytes;
          v35 = v30;
          v11 = v63;
LABEL_91:
          CFRelease(v35);
          goto LABEL_92;
        }

        v29 = v33;
        if (v19)
        {
LABEL_47:
          while (1)
          {
            *bytes = 0;
            v34 = hevcbridgeUPullLong(a1, 8, bytes, a4, a5, a6, a7, a8);
            if (v34)
            {
              break;
            }

            if (v29)
            {
              *v29++ = bytes[0];
            }

            if (v27)
            {
              *v27++ = bytes[0];
            }

            if (!--v19)
            {
              goto LABEL_53;
            }
          }

          v16 = v34;
          a3 = v28;
          v35 = v30;
          v11 = v63;
          goto LABEL_90;
        }

        goto LABEL_53;
      }

      hevcbridgeParseSEIRBSP_cold_6(bytes);
    }

    v16 = *bytes;
    if (Mutable)
    {
      goto LABEL_93;
    }

LABEL_94:
    if (v16)
    {
      return v16;
    }
  }

  while ((a1[6] + 1) < a1[1] + *a1 && hevcbridgeMoreRBSPData(a1));
  v16 = hevcbridgeUPullLong(a1, 8, &v64, a4, a5, a6, a7, a8);
  if (!v16)
  {
    if (v64 == 128)
    {
      return 0;
    }

    else
    {
      hevcbridgeParseSEIRBSP_cold_9();
      return 4294954582;
    }
  }

  return v16;
}

uint64_t hevcbridgeParseSliceSegmentLayer(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v264 = *MEMORY[0x1E69E9840];
  v257 = 0;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 11) & 1, 263, &v257, a6, a7, a8);
  if (result)
  {
    return result;
  }

  if ((a3 & 0xFFFFFFF8) == 0x10)
  {
    result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 1) & 1, 264, v18, v19, v20, v21, v218);
    if (result)
    {
      return result;
    }
  }

  v22 = *(a2 + 44);
  result = hevcbridgeUEPullLong(a1, &v256, v16, v17, v18, v19, v20, v21);
  if ((v22 & 4) != 0 && !result)
  {
    result = (a2[2])(*a2, 265, v256, 0xFFFFFFFFLL);
  }

  if (result)
  {
    return result;
  }

  v29 = a2[16];
  if (v29)
  {
    v30 = a2[17];
    v31 = a2[16];
    while (1)
    {
      v32 = *v30;
      if (**v30 == 34 && v32[1] == v256)
      {
        break;
      }

      ++v30;
      if (!--v31)
      {
        goto LABEL_14;
      }
    }

    v39 = a2[17];
    v40 = a2[16];
    while (1)
    {
      v41 = *v39;
      if (**v39 == 33 && v41[1] == v32[2])
      {
        break;
      }

      ++v39;
      if (!--v40)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v36 = v9;
        v37 = emitter;
        v38 = 4672;
        goto LABEL_15;
      }
    }

    v43 = a2[17];
    while (1)
    {
      v44 = *v43;
      if (**v43 == 32 && v44[1] == v41[2])
      {
        break;
      }

      ++v43;
      if (!--v29)
      {
        v45 = 0;
        goto LABEL_29;
      }
    }

    v45 = v44 + 2;
LABEL_29:
    if (*(v41 + 53))
    {
      if (!v45)
      {
        hevcbridgeParseSliceSegmentLayer_cold_1(v263);
        return v263[0];
      }
    }

    else if (!a4 || !v45)
    {
      v233 = 0;
      v231 = 0;
      v234 = 0;
      v49 = v41 + 6;
      v50 = v41 + 7;
      v51 = v41 + 54;
      v52 = v41 + 11;
      goto LABEL_39;
    }

    v46 = v45 + a4;
    if (*(v41 + 52))
    {
      v47 = v41[12];
    }

    else
    {
      v47 = v46[4];
    }

    if (v47 > *v45)
    {
      hevcbridgeParseSliceSegmentLayer_cold_11(v263);
      return v263[0];
    }

    v48 = &v45[4 * v47];
    v49 = v48 + 1122;
    v50 = v48 + 1123;
    v51 = (v48 + 1125);
    v52 = (v48 + 1124);
    v231 = *(v45 + 197);
    v234 = v46[132] != 0;
    LODWORD(v233) = v46[68];
    HIDWORD(v233) = *(v45 + 196) != 0;
LABEL_39:
    v239 = *v51;
    v232 = *v52;
    if (!v257)
    {
      v58 = ~(-1 << (*(v41 + 16) + *(v41 + 20) + 3));
      v63 = log2((((*v49 + v58) >> (*(v41 + 16) + *(v41 + 20) + 3)) * ((*v50 + v58) >> (*(v41 + 16) + *(v41 + 20) + 3))));
      if (*(v32 + 24))
      {
        v95 = v63;
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 3) & 1, 266, &v255, v60, v61, v62);
        v63 = v95;
        if (result)
        {
          return result;
        }
      }

      LODWORD(v59) = vcvtpd_s64_f64(v63);
      result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 4) & 1, 267, v59, v60, v61, v62, v218);
      if (result)
      {
        return result;
      }

      if (v255)
      {
LABEL_48:
        if (*(v32 + 35) || *(v32 + 36))
        {
          v263[0] = 0;
          v64 = *(a2 + 44);
          result = hevcbridgeUEPullLong(a1, v263, v23, v24, v25, v26, v27, v28);
          if ((v64 & 0x20000000000) != 0 && !result)
          {
            result = (a2[2])(*a2, 304, v263[0], 0xFFFFFFFFLL);
          }

          if (result)
          {
            return result;
          }

          v65 = v263[0];
          if (v263[0])
          {
            LODWORD(v262[0]) = 0;
            result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 42) & 1, 305, v262, v26, v27, v28);
            if (!result)
            {
              v69 = v262[0];
              while (1)
              {
                result = hevcbridgeUSkip(a1, (v69 + 1), v66, v67, v68, v26, v27, v28, v218);
                if (result)
                {
                  break;
                }

                if (!--v65)
                {
                  goto LABEL_59;
                }
              }
            }

            return result;
          }
        }

LABEL_59:
        if (*(v32 + 37))
        {
          v263[0] = 0;
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 43) & 1, 306, v263, v26, v27, v28);
          if (result)
          {
            return result;
          }

          v74 = v263[0];
          if (v263[0])
          {
            do
            {
              result = hevcbridgeUSkip(a1, 8, v70, v71, v72, v73, v27, v28, v218);
              if (result)
              {
                return result;
              }
            }

            while (--v74);
          }
        }

        result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 44) & 1, 307, &v253 + 1, 1, v27, v28);
        if (result)
        {
          return result;
        }

        if (HIDWORD(v253) == 1)
        {
          while (*(a1 + 76))
          {
            result = hevcbridgeUPullLong(a1, 1, &v253, v75, v76, v77, v78, v79);
            if (result)
            {
              return result;
            }

            if (v253)
            {
              hevcbridgeParseSliceSegmentLayer_cold_9();
              return 4294954582;
            }
          }

          return 0;
        }

        hevcbridgeParseSliceSegmentLayer_cold_8();
        return 4294954582;
      }
    }

    memset(v263, 0, 164);
    v252 = 0;
    v262[1] = 0;
    v262[0] = 0;
    v251 = 0;
    v250 = 0;
    v249 = 0;
    v248 = 0;
    if (v32[3])
    {
      result = hevcbridgeUSkip(a1, 1, v23, v24, v25, v26, v27, v28, v218);
      if (result)
      {
        return result;
      }

      v56 = v32[3];
      if (v56 >= 2)
      {
        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 5) & 1, 268, v55, v26, v27, v28, v218);
        if (!result)
        {
          v56 = v32[3];
          v57 = 2;
          goto LABEL_75;
        }

        return result;
      }

      v57 = 1;
LABEL_75:
      while (v57 < v56)
      {
        result = hevcbridgeUSkip(a1, 1, v53, v54, v55, v26, v27, v28, v218);
        if (result)
        {
          return result;
        }

        ++v57;
        v56 = v32[3];
      }
    }

    result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 6) & 1, 269, &v254, v26, v27, v28);
    if (result)
    {
      return result;
    }

    if (*(v32 + 25))
    {
      result = hevcbridgeUPullFlagIfRequested(a1, a2, *(a2 + 44) >> 7, 270, v80, v81, v82, v83, v218);
      if (result)
      {
        return result;
      }
    }

    if (v239 == 1)
    {
      result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 8) & 1, 271, 2, v81, v82, v83, v218);
      if (result)
      {
        return result;
      }
    }

    if (a4 == 0 || v234)
    {
      if ((a3 - 21) > 0xFFFFFFFD)
      {
        goto LABEL_88;
      }
    }

    else if ((a3 - 21) >= 0xFFFFFFFE && *(v41 + 89))
    {
      goto LABEL_88;
    }

    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 9) & 1, 272, (v41[8] + 4), v81, v82, v83, v218);
    if (result)
    {
      return result;
    }

    if ((a3 - 21) <= 0xFFFFFFFD)
    {
      v258[0] = 0;
      LODWORD(v261[0]) = 0;
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 10) & 1, 273, v258, v81, v82, v83);
      if (result)
      {
        return result;
      }

      v109 = v258[0];
      v110 = v41[23];
      if (v258[0])
      {
        if (v110 >= 2)
        {
          LODWORD(v111) = vcvtpd_s64_f64(log2(v110));
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 11) >> 11) & 1, 274, v261, v111, v112, v113);
          if (result)
          {
            return result;
          }
        }

        if (v109 == 1)
        {
          if (LODWORD(v261[0]) >= v41[23])
          {
            hevcbridgeParseSliceSegmentLayer_cold_2(result, v110, v107, v108, v80, v81, v82, v83, v218);
            return 4294954582;
          }

          v114 = &v41[41 * LODWORD(v261[0]) + 24];
        }

        else
        {
          v114 = v263;
        }

        v227 = v114;
      }

      else
      {
        v227 = v263;
        result = hevcbridgeParseSTRefPicSet(a1, v110, v110, (v41 + 24), v263, v81, v82, v83);
        if (result)
        {
          return result;
        }
      }

      if (*(v41 + 55))
      {
        if (v41[9])
        {
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 12) & 1, 275, &v252 + 1, v81, v82, v83);
          if (result)
          {
            return result;
          }
        }

        result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 13) & 1, 276, &v252, v81, v82, v83);
        if (result)
        {
          return result;
        }

        v243 = HIDWORD(v252);
        if (HIDWORD(v252) >= 0x11)
        {
          hevcbridgeParseSliceSegmentLayer_cold_5(result, v124, v125, v126, v80, v81, v82, v83, v218);
          return 4294954582;
        }

        v230 = v252;
        if (v252 >= 0x11)
        {
          hevcbridgeParseSliceSegmentLayer_cold_4(result, v124, v125, v126, v80, v81, v82, v83, v218);
          return 4294954582;
        }

        v238 = (v252 + HIDWORD(v252));
        if (v238 > 0x10)
        {
          hevcbridgeParseSliceSegmentLayer_cold_3(result, v124, v125, v126, v80, v81, v82, v83, v218);
          return 4294954582;
        }

        if (v238)
        {
          for (i = 0; i != v238; ++i)
          {
            LODWORD(v260[0]) = 0;
            if (i >= v243)
            {
              result = hevcbridgeUSkip(a1, (v41[8] + 4), v125, v126, v80, v81, v82, v83, v218);
              if (result)
              {
                return result;
              }

              LODWORD(v259[0]) = 0;
              result = hevcbridgeUPull(a1, 1, v259, v136, v137, v138, v139, v140);
              if (result)
              {
                return result;
              }

              v135 = v259[0];
            }

            else
            {
              v128 = v41[9];
              if (v128 >= 2)
              {
                LODWORD(v129) = vcvtpd_s64_f64(log2(v128));
                result = hevcbridgeUPullLong(a1, v129, v260, v130, v131, v132, v133, v134);
                if (result)
                {
                  return result;
                }
              }

              v135 = 0;
            }

            LODWORD(v259[0]) = 0;
            result = hevcbridgeUPull(a1, 1, v259, v126, v80, v81, v82, v83);
            if (result)
            {
              return result;
            }

            if (LOBYTE(v259[0]))
            {
              result = hevcbridgeUESkip(a1, v141, v125, v126, v80, v81, v82, v83, v218);
              if (result)
              {
                return result;
              }
            }

            if (i < v243)
            {
              v135 = *(v41 + LODWORD(v260[0]) + 56);
            }

            *(v262 + i) = v135;
          }
        }
      }

      else
      {
        v230 = 0;
        LODWORD(v243) = 0;
      }

      if (v41[10])
      {
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 14) & 1, 277, &v251 + 1, v81, v82, v83);
        if (result)
        {
          return result;
        }
      }

      v86 = 1;
      v87 = v227;
      v85 = v243;
      v84 = v230;
LABEL_89:
      LODWORD(v88) = 0;
      if ((a4 == 0) | BYTE4(v233) & 1 || !v233)
      {
LABEL_91:
        if (*(v41 + 88))
        {
          v236 = v86;
          v96 = v84;
          v241 = v85;
          result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 18) & 1, 281, &v250 + 1, v81, v82, v83);
          if (result)
          {
            return result;
          }

          v85 = v241;
          v84 = v96;
          v86 = v236;
          if (v232)
          {
            result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 19) & 1, 282, &v250, v81, v82, v83);
            v86 = v236;
            v84 = v96;
            v85 = v241;
            if (result)
            {
              return result;
            }
          }
        }

        v89 = v254;
        if (v254 > 1)
        {
          goto LABEL_93;
        }

        v237 = v86;
        v229 = v84;
        v242 = v85;
        v247 = 0;
        v226 = v32[4];
        v245 = v32[5];
        v246 = v226;
        v225 = v245;
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 20) & 1, 283, &v247, v81, v82, v83);
        if (result)
        {
          return result;
        }

        if (v247)
        {
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 21) & 1, 284, &v246, v98, v99, v100);
          if (result)
          {
            return result;
          }

          v226 = v246;
          if (v246 >= 0xF)
          {
            hevcbridgeParseSliceSegmentLayer_cold_7(result, v101, v102, v103, v97, v98, v99, v100, v218);
            return 4294954582;
          }

          if (!v89)
          {
            result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 22) & 1, 285, &v245, v98, v99, v100);
            if (result)
            {
              return result;
            }

            v225 = v245;
            if (v245 >= 0xF)
            {
              hevcbridgeParseSliceSegmentLayer_cold_6(result, v121, v122, v123, v97, v98, v99, v100, v218);
              return 4294954582;
            }
          }
        }

        v104 = a2[17];
        if (!v104 || v45)
        {
          if (v45)
          {
LABEL_189:
            v142 = *(v45 + a4 + 68);
            if (!*(v45 + a4 + 68))
            {
LABEL_208:
              v148 = v237;
              if (v237)
              {
                if (!v87)
                {
                  hevcbridgeParseSliceSegmentLayer_cold_10();
                  return 4294954582;
                }

                v149 = v87[160];
                if (v87[160])
                {
                  v148 = 0;
                  v150 = v87 + 128;
                  do
                  {
                    if (*v150++)
                    {
                      ++v148;
                    }

                    --v149;
                  }

                  while (v149);
                }

                else
                {
                  v148 = 0;
                }

                v152 = v87[161];
                if (v87[161])
                {
                  v153 = v87 + 144;
                  do
                  {
                    if (*v153++)
                    {
                      ++v148;
                    }

                    --v152;
                  }

                  while (v152);
                }

                v155 = (v229 + v242);
                if (v229 + v242)
                {
                  v156 = v262;
                  do
                  {
                    if (*v156++)
                    {
                      ++v148;
                    }

                    --v155;
                  }

                  while (v155);
                }
              }

              if (*(v32 + 38))
              {
                ++v148;
              }

              v158 = v148 + v142;
              if (*(v32 + 26))
              {
                v159 = v158 >= 2;
              }

              else
              {
                v159 = 0;
              }

              if (v159)
              {
                LOBYTE(v261[0]) = 0;
                v183 = log2(v158);
                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 23) & 1, 286, v261, v184, v185, v186);
                if (result)
                {
                  return result;
                }

                LODWORD(a4) = vcvtpd_s64_f64(v183);
                if (LOBYTE(v261[0]))
                {
                  v189 = 0;
                  do
                  {
                    result = hevcbridgeUSkip(a1, a4, v187, v188, v97, v98, v99, v100, v218);
                    if (result)
                    {
                      return result;
                    }
                  }

                  while (++v189 <= v226);
                }

                if (!v89)
                {
                  LOBYTE(v260[0]) = 0;
                  result = hevcbridgeUPullFlagAlways(a1, a2, HIBYTE(*(a2 + 11)) & 1, 287, v260, v98, v99, v100);
                  if (result)
                  {
                    return result;
                  }

                  if (LOBYTE(v260[0]))
                  {
                    v192 = 0;
                    do
                    {
                      result = hevcbridgeUSkip(a1, a4, v190, v191, v97, v98, v99, v100, v218);
                      if (result)
                      {
                        return result;
                      }
                    }

                    while (++v192 <= v225);
                  }
                }
              }

              if (!v89)
              {
                result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 25) & 1, 288, v97, v98, v99, v100, v218);
                if (result)
                {
                  return result;
                }
              }

              if (*(v32 + 27))
              {
                result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 26) & 1, 289, v97, v98, v99, v100, v218);
                if (result)
                {
                  return result;
                }
              }

              if (HIBYTE(v251))
              {
                v160 = 1;
                LOBYTE(v261[0]) = 1;
                if (v89)
                {
                  goto LABEL_238;
                }

                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 27) & 1, 290, v261, v98, v99, v100);
                if (result)
                {
                  return result;
                }

                v160 = LOBYTE(v261[0]);
                if (LOBYTE(v261[0]))
                {
LABEL_238:
                  if (v226)
                  {
                    goto LABEL_241;
                  }
                }

                if (!v160 && v225)
                {
LABEL_241:
                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 28) & 1, 291, v97, v98, v99, v100, v218);
                  if (result)
                  {
                    return result;
                  }
                }
              }

              if (v89 == 1 && *(v32 + 28) || !v89 && *(v32 + 29))
              {
                memset(v261, 0, 15);
                memset(v260, 0, 15);
                result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 29) & 1, 292, v97, v98, v99, v100, v218);
                if (!result)
                {
                  if (!v232 || (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 30) & 1, 293, v97, v98, v99, v100, v218), !result))
                  {
                    v162 = 0;
                    while (1)
                    {
                      LODWORD(v259[0]) = 0;
                      result = hevcbridgeUPull(a1, 1, v259, v161, v97, v98, v99, v100);
                      *(v261 + v162) = v259[0];
                      if (result)
                      {
                        break;
                      }

                      if (++v162 > v226)
                      {
                        if (v232)
                        {
                          v165 = 0;
                          while (1)
                          {
                            LODWORD(v259[0]) = 0;
                            result = hevcbridgeUPull(a1, 1, v259, v161, v97, v98, v99, v100);
                            *(v260 + v165) = v259[0];
                            if (result)
                            {
                              break;
                            }

                            if (++v165 > v226)
                            {
                              goto LABEL_256;
                            }
                          }
                        }

                        else
                        {
LABEL_256:
                          v166 = 0;
                          while (1)
                          {
                            if (*(v261 + v166))
                            {
                              result = hevcbridgeSESkip(a1, v163, v164, v161, v97, v98, v99, v100, v218);
                              if (result)
                              {
                                break;
                              }

                              result = hevcbridgeSESkip(a1, v167, v168, v169, v170, v171, v172, v173, v220);
                              if (result)
                              {
                                break;
                              }
                            }

                            if (*(v260 + v166))
                            {
                              v174 = 1;
                              do
                              {
                                v175 = v174;
                                result = hevcbridgeSESkip(a1, v163, v164, v161, v97, v98, v99, v100, v218);
                                if (result)
                                {
                                  return result;
                                }

                                result = hevcbridgeSESkip(a1, v176, v177, v178, v179, v180, v181, v182, v221);
                                if (result)
                                {
                                  return result;
                                }

                                v174 = 0;
                              }

                              while ((v175 & 1) != 0);
                            }

                            if (++v166 > v226)
                            {
                              if (v89)
                              {
                                goto LABEL_267;
                              }

                              v197 = 0;
                              memset(v259, 0, 15);
                              *&v258[7] = 0;
                              *v258 = 0;
                              while (1)
                              {
                                v244 = 0;
                                result = hevcbridgeUPull(a1, 1, &v244, v161, v97, v98, v99, v100);
                                *(v259 + v197) = v244;
                                if (result)
                                {
                                  return result;
                                }

                                if (++v197 > v225)
                                {
                                  if (v232)
                                  {
                                    v200 = 0;
                                    while (1)
                                    {
                                      v244 = 0;
                                      result = hevcbridgeUPull(a1, 1, &v244, v161, v97, v98, v99, v100);
                                      v258[v200] = v244;
                                      if (result)
                                      {
                                        break;
                                      }

                                      if (++v200 > v225)
                                      {
                                        goto LABEL_299;
                                      }
                                    }
                                  }

                                  else
                                  {
LABEL_299:
                                    v201 = 0;
                                    while (1)
                                    {
                                      if (*(v259 + v201))
                                      {
                                        result = hevcbridgeSESkip(a1, v198, v199, v161, v97, v98, v99, v100, v218);
                                        if (result)
                                        {
                                          break;
                                        }

                                        result = hevcbridgeSESkip(a1, v202, v203, v204, v205, v206, v207, v208, v223);
                                        if (result)
                                        {
                                          break;
                                        }
                                      }

                                      if (v258[v201])
                                      {
                                        v209 = 1;
                                        do
                                        {
                                          v210 = v209;
                                          result = hevcbridgeSESkip(a1, v198, v199, v161, v97, v98, v99, v100, v218);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          result = hevcbridgeSESkip(a1, v211, v212, v213, v214, v215, v216, v217, v224);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          v209 = 0;
                                        }

                                        while ((v210 & 1) != 0);
                                      }

                                      if (++v201 > v225)
                                      {
                                        goto LABEL_267;
                                      }
                                    }
                                  }

                                  return result;
                                }
                              }
                            }
                          }
                        }

                        return result;
                      }
                    }
                  }
                }

                return result;
              }

LABEL_267:
              result = hevcbridgeUEPullIfRequested(a1, a2, *(a2 + 11) >> 31, 294, v97, v98, v99, v100, v218);
              if (result)
              {
                return result;
              }

LABEL_93:
              result = hevcbridgeSEPullIfRequested(a1, a2, a2[6] & 1, 295, v80, v81, v82, v83, v218);
              if (result)
              {
                return result;
              }

              if (*(v32 + 30))
              {
                result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 33) & 1, 296, v25, v26, v27, v28, v218);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 34) & 1, 297, v90, v91, v92, v93, v219);
                if (result)
                {
                  return result;
                }
              }

              if (*(v32 + 31))
              {
                result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 35) & 1, 298, v25, v26, v27, v28, v218);
                if (result)
                {
                  return result;
                }
              }

              if (!*(v32 + 32))
              {
                goto LABEL_100;
              }

              result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 36) & 1, 299, &v251, v26, v27, v28);
              if (result)
              {
                return result;
              }

              if (v251)
              {
                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 37) & 1, 300, &v249 + 1, v26, v27, v28);
                if (result)
                {
                  return result;
                }

                if (HIBYTE(v249))
                {
                  v94 = 1;
                }

                else
                {
                  result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 38) & 1, 301, v25, v26, v27, v28, v218);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 39) & 1, 302, v193, v194, v195, v196, v222);
                  if (result)
                  {
                    return result;
                  }

                  v94 = 0;
                }
              }

              else
              {
LABEL_100:
                v94 = *(v32 + 33) != 0;
              }

              if (*(v32 + 34))
              {
                if ((HIBYTE(v250) | v250) != 0 || !v94)
                {
                  result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 40) & 1, 303, v25, v26, v27, v28, v218);
                  if (result)
                  {
                    return result;
                  }
                }
              }

              goto LABEL_48;
            }

            v115 = 0;
            v143 = *(v45 + a4 + 198);
            v144 = a5 - 1;
            v145 = *(v45 + v143 + 262);
            v146 = &v45[16 * v143 + 97] + 2;
            do
            {
              if (v144 <= v145 && (a5 == 1 || v144 < *(v146 + *(v45 + a4 + 326))))
              {
                ++v115;
              }

              --v142;
            }

            while (v142);
LABEL_196:
            if (a4)
            {
              v142 = v115;
            }

            else
            {
              v142 = 0;
            }

            if (v115)
            {
              v147 = a4 == 0;
            }

            else
            {
              v147 = 1;
            }

            if (((v147 | HIDWORD(v233)) & 1) == 0)
            {
              if (v88)
              {
                v142 = 1;
                if (!v231 && v233 != 1)
                {
                  v142 = v248 + 1;
                }
              }

              else
              {
                v142 = 0;
              }
            }

            goto LABEL_208;
          }
        }

        else
        {
          v105 = a2[16];
          if (v105)
          {
            while (1)
            {
              v106 = *v104;
              if (**v104 == 32 && v106[1] == v41[2])
              {
                break;
              }

              ++v104;
              if (!--v105)
              {
                goto LABEL_142;
              }
            }

            v45 = v106 + 2;
            goto LABEL_189;
          }
        }

LABEL_142:
        v115 = 1;
        goto LABEL_196;
      }

      v235 = v86;
      v228 = v84;
      v240 = v85;
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 15) & 1, 278, &v249, v81, v82, v83);
      if (result)
      {
        return result;
      }

      v88 = v249;
      if (!v249)
      {
LABEL_115:
        v85 = v240;
        v84 = v228;
        v86 = v235;
        goto LABEL_91;
      }

      v85 = v240;
      v84 = v228;
      v86 = v235;
      if (v233 < 2)
      {
        goto LABEL_91;
      }

      LODWORD(v88) = vcvtpd_s64_f64(log2(v233));
      if (!v231)
      {
        if ((v88 & 0x80000000) != 0 || v233 <= v88)
        {
          v116 = fig_log_get_emitter("com.apple.coremedia", "");
          v119 = v9;
          v120 = 4847;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v116, 1uLL, "<<<< HEVCBridge >>>>", v120, v119, v117, v118, v218);
        }

        result = hevcbridgeUPullAlways(a1, a2, HIWORD(*(a2 + 11)) & 1, 279, &v248, v88, v82, v83);
        if (result)
        {
          return result;
        }
      }

      if ((v88 & 0x80000000) == 0 && v88 < v233)
      {
        LODWORD(v88) = 1;
        goto LABEL_115;
      }

      v116 = fig_log_get_emitter("com.apple.coremedia", "");
      v119 = v9;
      v120 = 4857;
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v116, 1uLL, "<<<< HEVCBridge >>>>", v120, v119, v117, v118, v218);
    }

LABEL_88:
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    goto LABEL_89;
  }

LABEL_14:
  v33 = fig_log_get_emitter("com.apple.coremedia", "");
  v36 = v9;
  v37 = v33;
  v38 = 4663;
LABEL_15:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v38, v36, v34, v35, a9);
}

size_t hevcbridgeUPull(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 41))
  {
    hevcbridgeUPull_cold_1(&v11 + 1);
    v9 = 0;
    result = HIDWORD(v11);
  }

  else if (a2 <= 0)
  {
    hevcbridgeUPull_cold_3(&v13);
    v9 = 0;
    result = v13;
  }

  else if (a2 >= 0x1A)
  {
    hevcbridgeUPull_cold_2(&v12);
    v9 = 0;
    result = v12;
  }

  else
  {
    v9 = *(a1 + 80) >> -a2;
    result = hevcbridgeAdvanceInBitstream(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  }

  *a3 = v9;
  return result;
}

uint64_t hevcbridgeUPullFlagIfRequested(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a3)
  {
    v15 = 0;
    result = hevcbridgeUPull(a1, 1, &v15, a4, a5, a6, a7, a8);
    if (!result)
    {
      v12 = *a2;
      v13 = a2[1];
      v14 = v15;

      return v13(v12, a4, v14, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeUSkip(a1, 1, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

size_t hevcbridgeUSkip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (*(a1 + 41))
  {
    hevcbridgeUSkip_cold_1(&v10);
    return v10;
  }

  else if ((a2 & 0x80000000) != 0)
  {
    hevcbridgeUSkip_cold_2(&v11);
    return v11;
  }

  else
  {

    return hevcbridgeAdvanceInBitstream(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t hevcbridgeParseProfileTierLevel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v145 = 0;
  *(v144 + 3) = 0;
  v144[0] = 0;
  *(v143 + 3) = 0;
  v143[0] = 0;
  if (a4 >= 7)
  {
    hevcbridgeParseProfileTierLevel_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v121);
    return 4294954582;
  }

  v8 = a4;
  if (a3)
  {
    result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 15) & 1, 308, 2, a6, a7, a8, v121);
    if (result)
    {
      return result;
    }

    result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 60) >> 1) & 1, 309, v12, v13, v14, v15, v122);
    if (result)
    {
      return result;
    }

    v21 = *(a2 + 15);
    result = hevcbridgeUPullLong(a1, 5, &v145 + 1, v16, v17, v18, v19, v20);
    if ((v21 & 4) != 0 && !result)
    {
      result = (a2[2])(*a2, 310, HIDWORD(v145), 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v27 = *(a2 + 15);
    result = hevcbridgeUPullLong(a1, 32, &v145, v22, v23, v24, v25, v26);
    if ((v27 & 8) != 0 && !result)
    {
      result = (a2[2])(*a2, 311, v145, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v32 = *(a2 + 15);
    if ((v32 & 0x30) != 0)
    {
      result = hevcbridgeUPullIfRequested(a1, a2, (v32 >> 4) & 1, 312, 16, v29, v30, v31, v123);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 60) >> 5) & 1, 313, 32, v33, v34, v35, v124);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v56 = &v145;
      v57 = vld1q_dup_f32(v56);
      v140 = v57;
      result = hevcbridgeUPullFlagIfRequested(a1, a2, (v32 >> 6) & 1, 314, v28, v29, v30, v31, v123);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullFlagIfRequested(a1, a2, *(a2 + 60) >> 7, 315, v58, v59, v60, v61, v126);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 8) & 1, 316, v62, v63, v64, v65, v127);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 9) & 1, 317, v66, v67, v68, v69, v128);
      if (result)
      {
        return result;
      }

      v76.i64[0] = 0x101010101010101;
      v76.i64[1] = 0x101010101010101;
      v129 = vbicq_s8(v76, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v140, xmmword_197166480)), vceqzq_s32(vandq_s8(v140, xmmword_197166490))), vuzp1q_s16(vceqzq_s32(vandq_s8(v140, xmmword_1971664A0)), vceqzq_s32(vandq_s8(v140, xmmword_1971664B0))))).u64[0];
      v77 = *&vzip2_s8(v129, v129) & 0xFF00FF00FF00FFLL;
      v78 = vtst_s16(v77, v77);
      v141 = v78.i32[0];
      v139 = HIDWORD(v145);
      if ((vmaxv_u16(v78) & 1) != 0 || (HIDWORD(v145) - 4) <= 3)
      {
        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 10) & 1, 318, v72, v73, v74, v75, v129);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 11) & 1, 319, v89, v90, v91, v92, v131);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 12) & 1, 320, v93, v94, v95, v96, v132);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 13) & 1, 321, v97, v98, v99, v100, v133);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 14) & 1, 322, v101, v102, v103, v104, v134);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 15) & 1, 323, v105, v106, v107, v108, v135);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, HIWORD(*(a2 + 15)) & 1, 324, v109, v110, v111, v112, v136);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 17) & 1, 325, v113, v114, v115, v116, v137);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 18) & 1, 326, v117, v118, v119, v120, v138);
        if (result)
        {
          return result;
        }

        v79 = a1;
        v80 = 34;
      }

      else
      {
        v79 = a1;
        v80 = 43;
      }

      result = hevcbridgeUSkip(v79, v80, v70, v71, v72, v73, v74, v75, v129);
      if (result)
      {
        return result;
      }

      if ((v139 - 1) < 5 || (!BYTE1(v130) ? (v87 = BYTE2(v130) == 0) : (v87 = 0), v87 ? (v88 = BYTE3(v130) == 0) : (v88 = 0), !v88 || (v141 & 1) != 0 || (v141 & 0x10000) != 0))
      {
        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 19) & 1, 327, v83, v84, v85, v86, v130);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = hevcbridgeUSkip(a1, 1, v81, v82, v83, v84, v85, v86, v130);
        if (result)
        {
          return result;
        }
      }
    }
  }

  result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 15) >> 20) & 1, 328, 8, a6, a7, a8, v121);
  if (!result)
  {
    if (v8)
    {
      v41 = v8;
      v42 = v144;
      v43 = v143;
      v44 = v8;
      while (1)
      {
        v142 = 0;
        result = hevcbridgeUPull(a1, 1, &v142, v36, v37, v38, v39, v40);
        *v42 = v142;
        if (result)
        {
          break;
        }

        v142 = 0;
        result = hevcbridgeUPull(a1, 1, &v142, v45, v46, v47, v48, v49);
        *v43 = v142;
        if (result)
        {
          break;
        }

        ++v42;
        ++v43;
        if (!--v44)
        {
          v51 = v8 - 8;
          while (1)
          {
            result = hevcbridgeUSkip(a1, 2, v50, v36, v37, v38, v39, v40, v125);
            if (result)
            {
              break;
            }

            if (__CFADD__(v51++, 1))
            {
              v53 = v144;
              v54 = v143;
              do
              {
                if (*v53++)
                {
                  result = hevcbridgeUSkip(a1, 88, v50, v36, v37, v38, v39, v40, v125);
                  if (result)
                  {
                    break;
                  }
                }

                if (*v54)
                {
                  result = hevcbridgeUSkip(a1, 8, v50, v36, v37, v38, v39, v40, v125);
                  if (result)
                  {
                    break;
                  }
                }

                result = 0;
                ++v54;
                --v41;
              }

              while (v41);
              return result;
            }
          }

          return result;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t hevcbridgeUESkip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (*(a1 + 41))
  {
    hevcbridgeUESkip_cold_1(&v22);
    return v22;
  }

  v10 = *(a1 + 80);
  if (v10 >= 0x80)
  {
    v19 = (2 * __clz(v10)) | 1;

    return hevcbridgeAdvanceInBitstream(a1, v19, a3, a4, a5, a6, a7, a8, a9);
  }

  v21 = 0;
  hevcbridgeUPull(a1, 1, &v21, a4, a5, a6, a7, a8);
  if (v21)
  {
    hevcbridgeUESkip_cold_2(&v22);
    return v22;
  }

  v16 = 0;
  while (1)
  {
    result = hevcbridgeUPull(a1, 1, &v21, v11, v12, v13, v14, v15);
    if (result)
    {
      break;
    }

    ++v16;
    if (v21)
    {
      if (v16 < 0x20)
      {
        return hevcbridgeAdvanceInBitstream(a1, v16, v18, v11, v12, v13, v14, v15, v20);
      }

      hevcbridgeUESkip_cold_3(&v22);
      return v22;
    }
  }

  return result;
}

size_t hevcbridgeUEPullAlways(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  result = hevcbridgeUEPullLong(a1, a5, a3, a4, a5, a6, a7, a8);
  if (v10 && !result)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = *a5;

    return v13(v14, a4, v15, 0xFFFFFFFFLL);
  }

  return result;
}

uint64_t hevcbridgeUPullIfRequested(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a3)
  {
    v15 = 0;
    result = hevcbridgeUPullLong(a1, a5, &v15, a4, a5, a6, a7, a8);
    if (!result)
    {
      v12 = a2[2];
      v13 = *a2;
      v14 = v15;

      return v12(v13, a4, v14, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeUSkip(a1, a5, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

size_t hevcbridgeUEPullIfRequested(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a3)
  {
    v15 = 0;
    result = hevcbridgeUEPullLong(a1, &v15, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      v12 = a2[2];
      v13 = *a2;
      v14 = v15;

      return v12(v13, a4, v14, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeUESkip(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t hevcbridgeParseHRDParameters(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v102 = 0;
  v101 = 0;
  if (!a3)
  {
    goto LABEL_2;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 64) & 1, 329, &v102 + 1, a6, a7, a8);
  if (!result)
  {
    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 64) >> 1) & 1, 330, &v102, v70, v71, v72);
    if (!result)
    {
      v12 = HIBYTE(v102);
      v10 = v102;
      if (!(HIBYTE(v102) | v102))
      {
LABEL_2:
        v10 = 0;
        v11 = 0;
        v12 = 0;
LABEL_3:
        v13 = 0;
        while (1)
        {
          HIDWORD(v99) = 0;
          v100 = 0;
          result = hevcbridgeUPull(a1, 1, &v99 + 1, a4, a5, a6, a7, a8);
          if (result)
          {
            return result;
          }

          if (BYTE4(v99))
          {
            goto LABEL_8;
          }

          HIDWORD(v99) = 0;
          result = hevcbridgeUPull(a1, 1, &v99 + 1, v17, v18, v19, v20, v21);
          if (result)
          {
            return result;
          }

          if (BYTE4(v99))
          {
LABEL_8:
            result = hevcbridgeUESkip(a1, v15, v16, v17, v18, v19, v20, v21, v99);
            if (result)
            {
              return result;
            }
          }

          else
          {
            HIDWORD(v99) = 0;
            result = hevcbridgeUPull(a1, 1, &v99 + 1, v17, v18, v19, v20, v21);
            if (result)
            {
              return result;
            }

            if (BYTE4(v99))
            {
              v24 = 0;
              if (v12)
              {
                goto LABEL_12;
              }

              goto LABEL_24;
            }
          }

          result = hevcbridgeUEPullLong(a1, &v100, v22, a4, a5, a6, a7, a8);
          if (result)
          {
            return result;
          }

          v24 = v100;
          if (v100 >= 0x20)
          {
            hevcbridgeParseHRDParameters_cold_1(result, v23, v22, a4, a5, a6, a7, a8, v99);
            return 4294954582;
          }

          if (v12)
          {
LABEL_12:
            v25 = 0;
            do
            {
              result = hevcbridgeUESkip(a1, v23, v22, a4, a5, a6, a7, a8, v99);
              if (result)
              {
                return result;
              }

              result = hevcbridgeUESkip(a1, v26, v27, v28, v29, v30, v31, v32, v99);
              if (result)
              {
                return result;
              }

              if (v11)
              {
                result = hevcbridgeUESkip(a1, v33, v34, v35, v36, v37, v38, v39, v99);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeUESkip(a1, v40, v41, v42, v43, v44, v45, v46, v99);
                if (result)
                {
                  return result;
                }
              }

              result = hevcbridgeUSkip(a1, 1, v34, v35, v36, v37, v38, v39, v99);
              if (result)
              {
                return result;
              }
            }

            while (++v25 <= v24);
          }

LABEL_24:
          if (v10)
          {
            v47 = 0;
            do
            {
              result = hevcbridgeUESkip(a1, v23, v22, a4, a5, a6, a7, a8, v99);
              if (result)
              {
                return result;
              }

              result = hevcbridgeUESkip(a1, v48, v49, v50, v51, v52, v53, v54, v99);
              if (result)
              {
                return result;
              }

              if (v11)
              {
                result = hevcbridgeUESkip(a1, v55, v56, v57, v58, v59, v60, v61, v99);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeUESkip(a1, v62, v63, v64, v65, v66, v67, v68, v99);
                if (result)
                {
                  return result;
                }
              }

              result = hevcbridgeUSkip(a1, 1, v56, v57, v58, v59, v60, v61, v99);
              if (result)
              {
                return result;
              }
            }

            while (++v47 <= v24);
          }

          if (++v13 > v8)
          {
            return 0;
          }
        }
      }

      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 64) >> 2) & 1, 331, &v101, a6, a7, a8);
      if (!result)
      {
        v76 = v101;
        if (!v101 || (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 3) & 1, 332, 8, v73, v74, v75, v99), !result) && (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 4) & 1, 333, 5, v77, v78, v79, v99), !result) && (result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 64) >> 5) & 1, 334, v80, v81, v82, v83, v99), !result) && (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 6) & 1, 335, 5, v84, v85, v86, v99), !result))
        {
          result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 64) >> 7, 336, 4, v73, v74, v75, v99);
          if (!result)
          {
            result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 65) & 1, 337, 4, v87, v88, v89, v99);
            if (!result)
            {
              if (!v76 || (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 9) & 1, 338, 4, v90, v91, v92, v99), !result))
              {
                result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 10) & 1, 339, 5, v90, v91, v92, v99);
                if (!result)
                {
                  result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 11) & 1, 340, 5, v93, v94, v95, v99);
                  if (!result)
                  {
                    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 12) & 1, 341, 5, v96, v97, v98, v99);
                    if (!result)
                    {
                      v11 = v76;
                      goto LABEL_3;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t hevcbridgeUEPullLong(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  if (*(a1 + 41))
  {
    hevcbridgeUEPullLong_cold_1(&v23);
LABEL_17:
    v18 = 0;
    result = v23;
    goto LABEL_9;
  }

  v10 = *(a1 + 80);
  if (v10 < 0x80000)
  {
    HIDWORD(v21) = 0;
    hevcbridgeUPull(a1, 1, &v21 + 1, a4, a5, a6, a7, a8);
    if (HIDWORD(v21))
    {
      hevcbridgeUEPullLong_cold_2(&v23);
    }

    else
    {
      LODWORD(v16) = 0;
      do
      {
        result = hevcbridgeUPull(a1, 1, &v21 + 1, v11, v12, v13, v14, v15);
        if (result)
        {
          v18 = 0;
          goto LABEL_9;
        }

        v16 = (v16 + 1);
      }

      while (!HIDWORD(v21));
      if (v16 < 0x20)
      {
        result = hevcbridgeUPullLong(a1, v16, &v22, v11, v12, v13, v14, v15);
        v18 = v22 + ~(-1 << v16);
        goto LABEL_9;
      }

      hevcbridgeUEPullLong_cold_3(&v23);
    }

    goto LABEL_17;
  }

  v19 = __clz(v10);
  v20 = v10 << (v19 + 1) >> -v19;
  if (!v19)
  {
    v20 = 0;
  }

  *(a1 + 80) = v20;
  v18 = v20 + ~(-1 << v19);
  result = hevcbridgeAdvanceInBitstream(a1, v19 + 1 + v19, a3, a4, a5, a6, a7, a8, v21);
LABEL_9:
  *a2 = v18;
  return result;
}

uint64_t hevcbridgeParseRepFormat(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v12 = *(a2 + 44);
  result = hevcbridgeUPullLong(a1, 16, &v63 + 1, a4, a5, a6, a7, a8);
  if ((v12 & 0x4000000000000) != 0 && !result)
  {
    result = (a2[2])(*a2, 53, HIDWORD(v63), 0xFFFFFFFFLL);
  }

  if (!result)
  {
    v19 = *(a2 + 44);
    result = hevcbridgeUPullLong(a1, 16, &v63, v14, v15, v16, v17, v18);
    if ((v19 & 0x8000000000000) != 0 && !result)
    {
      result = (a2[2])(*a2, 54, v63, 0xFFFFFFFFLL);
    }

    if (!result)
    {
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 52) & 1, 55, &v62, v20, v21, v22);
      if (!result)
      {
        if (!v62)
        {
          v33 = 0;
          goto LABEL_22;
        }

        v28 = *(a2 + 44);
        result = hevcbridgeUPullLong(a1, 2, &v61, v23, v24, v25, v26, v27);
        if ((v28 & 0x20000000000000) != 0 && !result)
        {
          result = (a2[2])(*a2, 56, v61, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v33 = v61;
          if (v61 != 3 || (result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 54) & 1, 57, v29, v30, v31, v32, v55), !result))
          {
            result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 55) & 1, 58, 4, v30, v31, v32, v55);
            if (!result)
            {
              result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 51) & 1, 59, 4, v34, v35, v36, v56);
              if (!result)
              {
LABEL_22:
                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) & 0x200000000000000) != 0, 60, &v60, v25, v26, v27);
                if (result)
                {
                  return result;
                }

                if (v60)
                {
                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 58) & 1, 61, v37, v38, v39, v40, v55);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 59) & 1, 62, v41, v42, v43, v44, v57);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 60) & 1, 63, v45, v46, v47, v48, v58);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 61) & 1, 64, v49, v50, v51, v52, v59);
                  if (!a4 || result)
                  {
                    return result;
                  }
                }

                else if (!a4)
                {
                  return 0;
                }

                result = 0;
                v53 = v63;
                v54 = a4 + 16 * a3;
                *(v54 + 4488) = HIDWORD(v63);
                *(v54 + 4492) = v53;
                *(v54 + 4496) = v33;
                *(v54 + 4500) = 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hevcbridgeParseScalingListData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
LABEL_2:
  v10 = 0;
  v11 = 16 << (2 * v9);
  if (v11 >= 0x40)
  {
    v11 = 64;
  }

  if (v9 == 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  if (v11 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  while (1)
  {
    v19 = 0;
    result = hevcbridgeUPull(a1, 1, &v19, a4, a5, a6, a7, a8);
    if (result)
    {
      return result;
    }

    if (v19)
    {
      v17 = v13;
      if (v9 < 2 || (result = hevcbridgeSESkip(a1, v15, v16, a4, a5, a6, a7, a8, v18), v17 = v13, !result))
      {
        while (1)
        {
          result = hevcbridgeSESkip(a1, v15, v16, a4, a5, a6, a7, a8, v18);
          if (result)
          {
            break;
          }

          if (!--v17)
          {
            goto LABEL_18;
          }
        }
      }

      return result;
    }

    result = hevcbridgeUESkip(a1, v15, v16, a4, a5, a6, a7, a8, v18);
    if (result)
    {
      return result;
    }

LABEL_18:
    v10 += v12;
    if (v10 >= 6)
    {
      if (++v9 != 4)
      {
        goto LABEL_2;
      }

      return 0;
    }
  }
}

size_t hevcbridgeParseSTRefPicSet(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101[2] = *MEMORY[0x1E69E9840];
  v99 = 0;
  if (a2)
  {
    v11 = a3;
    LODWORD(v101[0]) = 0;
    result = hevcbridgeUPull(a1, 1, v101, a4, a5, a6, a7, a8);
    if (result)
    {
      return result;
    }

    if (LOBYTE(v101[0]))
    {
      v14 = 0;
      v98 = 0;
      v97 = 0;
      v101[0] = 0;
      v101[1] = 0;
      v100[0] = 0;
      v100[1] = 0;
      if (a2 != v11)
      {
        goto LABEL_7;
      }

      result = hevcbridgeUEPullLong(a1, &v98 + 1, a3, a4, a5, a6, a7, a8);
      if (result)
      {
        return result;
      }

      v14 = HIDWORD(v98);
      if (HIDWORD(v98) > a2 - 1)
      {
        hevcbridgeParseSTRefPicSet_cold_4(result, v15, v16, a4, a5, a6, a7, a8, v94);
      }

      else
      {
LABEL_7:
        result = hevcbridgeUPullLong(a1, 1, &v98, a4, a5, a6, a7, a8);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUEPullLong(a1, &v97, v17, v18, v19, v20, v21, v22);
        if (result)
        {
          return result;
        }

        if (v97 >= 0x8000)
        {
          hevcbridgeParseSTRefPicSet_cold_3(result, v23, v24, v25, v26, v27, v28, v29, v94);
        }

        else
        {
          v30 = ~v14 + a2;
          v31 = a4 + 164 * v30;
          v32 = *(v31 + 161) + *(v31 + 160);
          if (v32 <= 0xF)
          {
            v33 = v97 + 1 - 2 * v98 * (v97 + 1);
            v95 = *(v31 + 161) + *(v31 + 160);
            v34 = v32 + 1;
            v35 = v100;
            v36 = v101;
            while (1)
            {
              v96 = 0;
              result = hevcbridgeUPull(a1, 1, &v96, v25, v26, v27, v28, v29);
              v39 = v96;
              *v36 = v96;
              if (result)
              {
                return result;
              }

              if (v39)
              {
                *v35 = 1;
              }

              else
              {
                v96 = 0;
                result = hevcbridgeUPull(a1, 1, &v96, v25, v26, v27, v28, v29);
                *v35 = v96;
                if (result)
                {
                  return result;
                }
              }

              ++v35;
              ++v36;
              if (!--v34)
              {
                v40 = *(v31 + 161);
                if (*(v31 + 161))
                {
                  v41 = 0;
                  v42 = v40 - 1;
                  v43 = (4 * v40 + 164 * v30 + a4 + 60);
                  v44 = v95;
                  do
                  {
                    v45 = *v43--;
                    v46 = v45 + v33;
                    if (v45 + v33 < 0)
                    {
                      v47 = v42 + *(v31 + 160);
                      if (*(v100 + v47))
                      {
                        *(a5 + 4 * v41) = v46;
                        *(a5 + 128 + v41++) = *(v101 + v47);
                      }
                    }

                    v48 = v42-- + 1;
                  }

                  while (v48 > 1);
                }

                else
                {
                  v41 = 0;
                  v44 = v95;
                }

                if (v33 < 0 && *(v100 + v44))
                {
                  *(a5 + 4 * v41) = v33;
                  *(a5 + v41++ + 128) = *(v101 + v44);
                }

                v82 = *(v31 + 160);
                if (!*(v31 + 160))
                {
                  goto LABEL_67;
                }

                v83 = 0;
                do
                {
                  v84 = *(v31 + 4 * v83) + v33;
                  if (v84 < 0 && *(v100 + v83))
                  {
                    *(a5 + 4 * v41) = v84;
                    *(a5 + 128 + v41++) = *(v101 + v83);
                    v82 = *(v31 + 160);
                  }

                  ++v83;
                }

                while (v83 < v82);
                if (v82)
                {
                  v85 = 0;
                  v86 = v82 - 1;
                  do
                  {
                    v87 = *(v31 + 4 * v86) + v33;
                    if (v87 >= 1 && *(v100 + v86))
                    {
                      *(a5 + 64 + 4 * v85) = v87;
                      *(a5 + 144 + v85++) = *(v101 + v86);
                    }

                    v88 = v86-- + 1;
                  }

                  while (v88 > 1);
                }

                else
                {
LABEL_67:
                  v85 = 0;
                }

                if (v33 >= 1 && *(v100 + v44))
                {
                  *(a5 + 4 * v85 + 64) = v33;
                  *(a5 + v85++ + 144) = *(v101 + v44);
                }

                v89 = *(v31 + 161);
                if (*(v31 + 161))
                {
                  v90 = 0;
                  v91 = v100;
                  v92 = v101;
                  do
                  {
                    v93 = *(v31 + 64 + 4 * v90) + v33;
                    if (v93 >= 1)
                    {
                      result = *(v31 + 160);
                      v37 = *(v91 + result);
                      if (*(v91 + result))
                      {
                        *(a5 + 64 + 4 * v85) = v93;
                        *(a5 + 144 + v85++) = *(v92 + result);
                        v89 = *(v31 + 161);
                      }
                    }

                    ++v90;
                    v91 = (v91 + 1);
                    v92 = (v92 + 1);
                  }

                  while (v90 < v89);
                }

                if (v85 + v41 < 0x10)
                {
                  result = 0;
                  *(a5 + 160) = v41;
                  *(a5 + 161) = v85;
                  return result;
                }

                hevcbridgeParseSTRefPicSet_cold_1(result, v37, v38, v25, v26, v27, v28, v29, v94);
                return 4294954582;
              }
            }
          }

          hevcbridgeParseSTRefPicSet_cold_2(result, v23, v24, v25, v26, v27, v28, v29, v94);
        }
      }

      return 4294954582;
    }
  }

  result = hevcbridgeUEPullLong(a1, &v99 + 1, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    return result;
  }

  result = hevcbridgeUEPullLong(a1, &v99, v49, v50, v51, v52, v53, v54);
  if (result)
  {
    return result;
  }

  v62 = HIDWORD(v99);
  if (HIDWORD(v99) >= 0x10)
  {
    hevcbridgeParseSTRefPicSet_cold_9(result, v55, v56, v57, v58, v59, v60, v61, v94);
    return 4294954582;
  }

  v63 = v99;
  if (v99 >= 0x10)
  {
    hevcbridgeParseSTRefPicSet_cold_8(result, v55, v56, v57, v58, v59, v60, v61, v94);
    return 4294954582;
  }

  if ((v99 + HIDWORD(v99)) >= 0x10)
  {
    hevcbridgeParseSTRefPicSet_cold_7(result, v55, v56, v57, v58, v59, v60, v61, v94);
    return 4294954582;
  }

  *(a5 + 160) = BYTE4(v99);
  *(a5 + 161) = v63;
  if (v62)
  {
    v64 = 0;
    while (1)
    {
      LODWORD(v101[0]) = 0;
      result = hevcbridgeUEPullLong(a1, v101, v56, v57, v58, v59, v60, v61);
      if (result)
      {
        break;
      }

      LODWORD(v100[0]) = 0;
      result = hevcbridgeUPull(a1, 1, v100, v65, v66, v67, v68, v69);
      if (result)
      {
        break;
      }

      v71 = v101[0];
      if (LODWORD(v101[0]) >= 0x8000)
      {
        hevcbridgeParseSTRefPicSet_cold_5(result, v70, v56, v57, v58, v59, v60, v61, v94);
        return 4294954582;
      }

      *(a5 + v64 + 128) = v100[0];
      if (v64)
      {
        v72 = *(a5 + 4 * v64 - 4) + ~v71;
      }

      else
      {
        v72 = ~v71;
      }

      *(a5 + 4 * v64++) = v72;
      if (v62 == v64)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
LABEL_39:
    if (v63)
    {
      v73 = 0;
      v74 = a5 + 144;
      do
      {
        LODWORD(v101[0]) = 0;
        result = hevcbridgeUEPullLong(a1, v101, v56, v57, v58, v59, v60, v61);
        if (result)
        {
          break;
        }

        LODWORD(v100[0]) = 0;
        result = hevcbridgeUPull(a1, 1, v100, v75, v76, v77, v78, v79);
        if (result)
        {
          break;
        }

        v81 = v101[0];
        if (LODWORD(v101[0]) >= 0x8000)
        {
          hevcbridgeParseSTRefPicSet_cold_6(result, v80, v56, v57, v58, v59, v60, v61, v94);
          return 4294954582;
        }

        *(v74 + v73) = v100[0];
        if (v73)
        {
          *(v74 + 4 * v73 - 80) = v81 + *(v74 + 4 * v73 - 84) + 1;
        }

        else
        {
          *(a5 + 64) = v81 + 1;
        }

        result = 0;
        ++v73;
      }

      while (v63 != v73);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t hevcbridgeSESkip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (*(a1 + 41))
  {
    v13 = v9;
    v14 = v10;
    hevcbridgeSESkip_cold_1(&v12);
    return v12;
  }

  else
  {

    return hevcbridgeUESkip(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

size_t hevcbridgeSEPullIfRequested(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a3)
  {
    v15 = 0;
    result = hevcbridgeSEPullLong(a1, &v15, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      v12 = a2[3];
      v13 = *a2;
      v14 = v15;

      return v12(v13, a4, v14, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeSESkip(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t hevcbridgeParsePictureParameterSetMultilayerExtension(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 49) & 1, 212, a5, a6, a7, a8, v121);
  if (result)
  {
    return result;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 50) & 1, 213, &v142, v11, v12, v13);
  if (result)
  {
    return result;
  }

  if (v142)
  {
    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 51) & 1, 214, 6, v17, v18, v19, v122);
    if (result)
    {
      return result;
    }
  }

  v20 = *(a2 + 44);
  result = hevcbridgeUEPullLong(a1, &v141, v14, v15, v16, v17, v18, v19);
  if ((v20 & 0x10000000000000) != 0 && !result)
  {
    result = (a2[2])(*a2, 215, v141, 0xFFFFFFFFLL);
  }

  if (result)
  {
    return result;
  }

  v28 = v141;
  if (v141 > 0x400)
  {
    hevcbridgeParsePictureParameterSetMultilayerExtension_cold_2(result, v21, v22, v23, v24, v25, v26, v27, v122);
    return 4294954582;
  }

  if (!v141)
  {
LABEL_32:
    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 52) >> 5) & 1, 232, &v139, v25, v26, v27);
    if (result)
    {
      return result;
    }

    if (!v139)
    {
      return result;
    }

    result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 52) >> 6) & 1, 233, &v138, v77, v78, v79);
    if (result)
    {
      return result;
    }

    v87 = v138;
    if (v138 <= 0x3D)
    {
      if (v138)
      {
        while (1)
        {
          result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 52) >> 7, 234, 6, v84, v85, v86, v122);
          if (result)
          {
            break;
          }

          if (!--v87)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_39:
        result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 8) & 1, 235, &v137 + 1, 2, v85, v86);
        if (!result)
        {
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 9) & 1, 236, &v137, 2, v88, v89);
          if (!result)
          {
            result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 13) >> 10) & 1, 237, &v136 + 1, v90, v91, v92);
            if (!result)
            {
              result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 13) >> 11) & 1, 238, v93, v94, v95, v96, v122);
              if (!result)
              {
                result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 13) >> 12) & 1, 239, &v136, v97, v98, v99);
                if (!result)
                {
                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 13) >> 13) & 1, 240, v100, v101, v102, v103, v132);
                  if (!result)
                  {
                    result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 14) & 1, 241, &v135 + 1, 2, v104, v105);
                    if (!result)
                    {
                      result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 15) & 1, 242, &v135, 2, v106, v107);
                      if (!result)
                      {
                        v113 = v136;
                        v112 = HIDWORD(v136);
                        v115 = v135;
                        v114 = HIDWORD(v135);
                        v116 = HIDWORD(v137);
                        if (HIDWORD(v137) != 1 || (result = hevcbridgeSEPullIfRequested(a1, a2, HIWORD(*(a2 + 13)) & 1, 243, v108, v109, v110, v111, v133), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 13) >> 17) & 1, 244, v117, v118, v119, v120, v134), !result))
                        {
                          hevcBridgeParseColourMappingOctants(a1, a2, v116, v137, (v112 - (v113 + v114) + ~v115 + 10), 0, 0, 0, 0, 1 << v116);
                          return 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      return result;
    }

    hevcbridgeParsePictureParameterSetMultilayerExtension_cold_1(result, v80, v81, v82, v83, v84, v85, v86, v122);
    return 4294954582;
  }

  while (1)
  {
    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 53) & 1, 216, 6, v25, v26, v27, v122);
    if (result)
    {
      return result;
    }

    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 54) & 1, 217, &v140 + 1, v29, v30, v31);
    if (result)
    {
      return result;
    }

    if (HIBYTE(v140))
    {
      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 55) & 1, 218, v32, v33, v34, v35, v122);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, *(a2 + 51) & 1, 219, v36, v37, v38, v39, v123);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 57) & 1, 220, v40, v41, v42, v43, v124);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 58) & 1, 221, v44, v45, v46, v47, v125);
      if (result)
      {
        return result;
      }
    }

    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) & 0x800000000000000) != 0, 222, &v140, v33, v34, v35);
    if (result)
    {
      return result;
    }

    if (v140)
    {
      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 60) & 1, 223, v48, v49, v50, v51, v122);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 61) & 1, 224, v52, v53, v54, v55, v126);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 62) & 1, 225, v56, v57, v58, v59, v127);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, *(a2 + 44) >> 63, 226, v60, v61, v62, v63, v128);
      if (result)
      {
        return result;
      }
    }

    result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 13) & 1, 227, &v139 + 1, v49, v50, v51);
    if (result)
    {
      return result;
    }

    if (HIBYTE(v139))
    {
      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 1) & 1, 228, v64, v25, v26, v27, v122);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 2) & 1, 229, v65, v66, v67, v68, v129);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 3) & 1, 230, v69, v70, v71, v72, v130);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 4) & 1, 231, v73, v74, v75, v76, v131);
      if (result)
      {
        return result;
      }
    }

    if (!--v28)
    {
      goto LABEL_32;
    }
  }
}

uint64_t hevcbridgeParsePictureParameterSetSCCExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v10 = *(a2 + 144);
  if (v10)
  {
    v11 = *v10;
    if (!v11)
    {
      return 4294954583;
    }

    v13 = v11 + 8;
  }

  else
  {
    v13 = 0;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 52) >> 23) & 1, 250, &v63 + 1, a6, a7, a8);
  if (!result)
  {
    result = hevcbridgeUPullFlagAlways(a1, a2, HIBYTE(*(a2 + 52)) & 1, 251, &v63, v14, v15, v16);
    if (!result)
    {
      if (!v63 || (result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 52) >> 25) & 1, 252, v17, v18, v19, v20, v54), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 52) >> 26) & 1, 253, v21, v22, v23, v24, v55), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 52) >> 27) & 1, 254, v25, v26, v27, v28, v56), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 52) >> 28) & 1, 255, v29, v30, v31, v32, v57), !result))
      {
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 52) >> 29) & 1, 256, &v62, v18, v19, v20);
        if (!result)
        {
          if (!v62)
          {
            goto LABEL_18;
          }

          v58 = 0;
          v59 = 0;
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 52) >> 30) & 1, 257, &v61, v33, v34, v35);
          if (result)
          {
            return result;
          }

          v39 = v61;
          if (v61)
          {
            result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 52) >> 31, 258, &v60, v36, v37, v38);
            if (!result)
            {
              result = hevcbridgeUEPullAlways(a1, a2, *(a2 + 56) & 1, 259, &v59, v40, v41, v42);
              if (!result)
              {
                if (v60)
                {
                  v46 = 1;
                  v47 = 8;
                }

                else
                {
                  result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 52) >> 33) & 1, 260, &v58, v43, v44, v45);
                  if (result)
                  {
                    return result;
                  }

                  v47 = v58 + 8;
                  v46 = 3;
                }

                v48 = 0;
                v49 = v59;
LABEL_25:
                v50 = v39;
                while (1)
                {
                  if (v48)
                  {
                    v51 = a1;
                    v52 = a2;
                    v53 = v47;
                  }

                  else
                  {
                    v53 = v49 + 8;
                    v51 = a1;
                    v52 = a2;
                  }

                  result = hevcbridgeUPullIfRequested(v51, v52, (*(a2 + 52) >> 34) & 1, 261, v53, v43, v44, v45, v54);
                  if (result)
                  {
                    break;
                  }

                  if (!--v50)
                  {
                    if (++v48 != v46)
                    {
                      goto LABEL_25;
                    }

                    goto LABEL_18;
                  }
                }
              }
            }
          }

          else
          {
LABEL_18:
            result = 0;
            if (v13)
            {
              *(v13 + 30) = HIBYTE(v63);
            }
          }
        }
      }
    }
  }

  return result;
}

size_t hevcbridgeSEPullLong(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  if (*(a1 + 41))
  {
    hevcbridgeSEPullLong_cold_1(&v12);
    v10 = 0;
    result = v12;
  }

  else
  {
    result = hevcbridgeUEPullLong(a1, &v11, a3, a4, a5, a6, a7, a8);
    v10 = ((v11 + 1) >> 1) - ((v11 + 1) >> 1) * 2 * ((v11 + 1) & 1);
  }

  *a2 = v10;
  return result;
}

uint64_t hevcBridgeParseColourMappingOctants(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10)
{
  v46 = 0;
  if (a6 >= a3)
  {
    goto LABEL_2;
  }

  v24 = a8;
  v25 = a7;
  v26 = a6;
  result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 13) >> 18) & 1, 245, &v46, a6, a7, a8);
  if (result)
  {
    return result;
  }

  if (v46)
  {
    v28 = 0;
    v29 = a10;
    v30 = 1;
    v42 = a4;
LABEL_29:
    v31 = 0;
    v39 = v30;
    v41 = v25 + (((v28 << a4) * v29) >> 1);
    v32 = 1;
LABEL_30:
    v33 = 0;
    v40 = v32;
    v34 = v24 + ((v31 * v29) >> 1);
    v35 = 1;
    while (1)
    {
      v36 = v35;
      v37 = v29;
      result = hevcBridgeParseColourMappingOctants(a1, a2, a3, v42, a5, v26 + 1, v41, v34, a9 + ((v33 * v29) >> 1), a10 >> 1);
      if (result)
      {
        break;
      }

      v35 = 0;
      v33 = 1;
      v29 = v37;
      if ((v36 & 1) == 0)
      {
        v32 = 0;
        v31 = 1;
        if (v40)
        {
          goto LABEL_30;
        }

        v30 = 0;
        result = 0;
        v28 = 1;
        LOBYTE(a4) = v42;
        if (v39)
        {
          goto LABEL_29;
        }

        return result;
      }
    }
  }

  else
  {
LABEL_2:
    v14 = 0;
LABEL_3:
    v15 = 0;
    while (1)
    {
      v45 = 0;
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 13) >> 19) & 1, 246, &v45, a6, a7, a8);
      if (result)
      {
        break;
      }

      if (v45)
      {
        v20 = 3;
        do
        {
          v43 = 0;
          v44 = 0;
          v21 = *(a2 + 52);
          result = hevcbridgeUEPullLong(a1, &v44, v17, v18, v19, a6, a7, a8);
          if ((v21 & 0x100000) != 0 && !result)
          {
            result = (a2[2])(*a2, 247, v44, 0xFFFFFFFFLL);
          }

          if (result)
          {
            return result;
          }

          if (a5)
          {
            v22 = *(a2 + 52);
            result = hevcbridgeUPullLong(a1, a5, &v43, v18, v19, a6, a7, a8);
            if ((v22 & 0x200000) != 0 && !result)
            {
              result = (a2[2])(*a2, 248, v43, 0xFFFFFFFFLL);
            }

            if (result)
            {
              return result;
            }

            v23 = v43 != 0;
          }

          else
          {
            v23 = 0;
          }

          if (v44 || v23)
          {
            result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 13) >> 22) & 1, 249, v19, a6, a7, a8, v38);
            if (result)
            {
              return result;
            }
          }
        }

        while (--v20);
      }

      if (++v15 == 4)
      {
        if (!(++v14 >> a4))
        {
          goto LABEL_3;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t hevcbridgeParseVPSForHVCCCallbackFlag(uint64_t a1, int a2, char a3)
{
  if (a2 == 309)
  {
    result = 0;
    *(a1 + 33) = a3;
  }

  else if (a2 == 8)
  {
    result = 0;
    *(a1 + 32) = a3;
  }

  else
  {
    return 4294954584;
  }

  return result;
}

uint64_t hevcbridgeParseVPSForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  v3 = 4294954584;
  if (a2 <= 309)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        ++a1;
      }

      else
      {
        if (a2 != 308)
        {
          return v3;
        }

        a1 += 2;
      }
    }

    else
    {
      if (!a2)
      {
        if (a3 != 32)
        {
          return v3;
        }

        return 0;
      }

      if (a2 != 3)
      {
        return v3;
      }
    }

LABEL_22:
    *a1 = a3;
    return 0;
  }

  if (a2 <= 311)
  {
    if (a2 == 310)
    {
      a1 += 3;
    }

    else
    {
      a1 += 4;
    }

    goto LABEL_22;
  }

  switch(a2)
  {
    case 312:
      a1 += 5;
      goto LABEL_22;
    case 313:
      a1 += 6;
      goto LABEL_22;
    case 328:
      a1[7] = a3;
      return 1;
  }

  return v3;
}

uint64_t hevcbridgeParseSPSForHVCCCallbackFlag(uint64_t a1, int a2, int a3)
{
  if (a2 == 139 || a2 == 108)
  {
    return a3 == 0;
  }

  else
  {
    return 4294954584;
  }
}

BOOL hevcbridgeParseSPSForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  v3 = 4294954584;
  if (a2 > 76)
  {
    if (a2 <= 79)
    {
      if (a2 == 77)
      {
        a1 += 8;
      }

      else if (a2 == 78)
      {
        a1 += 9;
      }

      else
      {
        a1 += 10;
      }

      goto LABEL_31;
    }

    if (a2 <= 81)
    {
      if (a2 == 80)
      {
        a1 += 11;
      }

      else
      {
        a1 += 3;
      }

      goto LABEL_31;
    }

    if (a2 != 82)
    {
      if (a2 == 143)
      {
        a1[5] = a3;
        return 1;
      }

      return v3;
    }

    a1 += 4;
LABEL_31:
    *a1 = a3;
    return 0;
  }

  if (a2 > 71)
  {
    switch(a2)
    {
      case 'H':
        a1 += 2;
        break;
      case 'J':
        a1 += 6;
        break;
      case 'K':
        a1 += 7;
        break;
      default:
        return v3;
    }

    goto LABEL_31;
  }

  switch(a2)
  {
    case 0:
      if (a3 != 33)
      {
        return v3;
      }

      return 0;
    case 1:
      goto LABEL_31;
    case 69:
      a1[1] = a3;
      return *a1 != 0;
  }

  return v3;
}

uint64_t hevcbridgeParsePPSForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  if (a2 == 163)
  {
    *a1 = a3;
    return 1;
  }

  else
  {
    if (a3 == 34)
    {
      v3 = 0;
    }

    else
    {
      v3 = -12712;
    }

    if (a2)
    {
      return 4294954584;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t hevcbridgeParseSEIForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  if (a2 == 344)
  {
    *a1 = a3;
    return 1;
  }

  else
  {
    if ((a3 - 41) >= 0xFFFFFFFE)
    {
      v3 = 0;
    }

    else
    {
      v3 = -12712;
    }

    if (a2)
    {
      return 4294954584;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t hevcbridgeParseSEIPayloadData(uint64_t a1, int a2, CFTypeRef cf)
{
  if (a2 != 347)
  {
    return 4294954584;
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 1;
}

__CFData *hevcbridge_copyPatchedParameterSet(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataAppendBytes(Mutable, (a1 + a2), a3);
  *newBytes = bswap32(a4 & 0xFFFFFE07 | (8 * a5)) >> 16;
  v13.location = 0;
  v13.length = 2;
  CFDataReplaceBytes(Mutable, v13, newBytes, 2);
  return Mutable;
}

size_t hevcbridgeSPullAlways(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (*(a1 + 41))
  {
    hevcbridgeSPullAlways_cold_1(&v20);
    v16 = 0;
    result = v20;
  }

  else
  {
    v12 = a6;
    v13 = *(a1 + 80);
    v14 = v13 >> -a6;
    result = hevcbridgeAdvanceInBitstream(a1, a6, a3, a4, a5, a6, a7, a8, v19);
    if (v13 >= 0)
    {
      v16 = v14 & 0x7FFFFFF;
    }

    else
    {
      v16 = (-1 << v12) | (v13 >> 1 >> ~v12);
    }
  }

  *a5 = v16;
  if (v10 && !result)
  {
    v17 = a2[3];
    v18 = *a2;

    return v17(v18, a4);
  }

  return result;
}

uint64_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a3 == 1)
  {
    v256 = 0;
    v255 = 0;
    v12 = *(a2 + 120);
    result = hevcbridgeUEPullLong(a1, &v256, a3, a4, a5, a6, a7, a8);
    if ((v12 & 1) != 0 && !result)
    {
      result = (a2[2])(*a2, 512, v256, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v19 = *(a2 + 120);
    result = hevcbridgeUPullLong(a1, 8, &v255, v14, v15, v16, v17, v18);
    if ((v19 & 2) != 0 && !result)
    {
      result = (a2[2])(*a2, 513, v255, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v256 = 0;
    v255 = 0;
    v26 = *(a2 + 124);
    result = hevcbridgeUEPullLong(a1, &v256, a3, a4, a5, a6, a7, a8);
    if ((v26 & 2) != 0 && !result)
    {
      result = (a2[2])(*a2, 592, v256, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v32 = *(a2 + 124);
    result = hevcbridgeUPullLong(a1, 8, &v255, v27, v28, v29, v30, v31);
    if ((v32 & 4) != 0 && !result)
    {
      result = (a2[2])(*a2, 593, v255, 0xFFFFFFFFLL);
    }
  }

  if (result)
  {
    return result;
  }

  v33 = v256;
  if (v256 >= 0x101)
  {
    hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_3(&v256);
    return v256;
  }

  if (v255 >= 0x100)
  {
    hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_2(&v256);
    return v256;
  }

  if (a1[1] + *a1 - a1[7] < v256)
  {
    hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_1(&v256);
    return v256;
  }

  v34 = 0;
  if (v255 > 7u)
  {
    if (v255 > 0xAu)
    {
      switch(v255)
      {
        case 0xBu:
          v256 = 0;
          v255 = 0;
          v254 = 0;
          v128 = *(a2 + 58);
          result = hevcbridgeUPullLong(a1, 8, &v256, v21, v22, v23, v24, v25);
          if ((v128 & 2) != 0 && !result)
          {
            result = (a2[2])(*a2, 579, v256, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 2) & 1, 580, &v255, 8, v129, v130);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 3) & 1, 581, &v254 + 1, 8, v131, v132);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 4) & 1, 582, &v254, 8, v133, v134);
                if (!result)
                {
                  if (a4)
                  {
                    *(a4 + 29129) = 1;
                    *(a4 + 29604) = v256;
                    v135 = BYTE4(v254);
                    *(a4 + 29605) = v255;
                    *(a4 + 29606) = v135;
                    *(a4 + 29607) = v254;
                  }

                  v34 = 32;
                  goto LABEL_205;
                }
              }
            }
          }

          break;
        case 0xFEu:
          v256 = 0;
          v255 = 0;
          v180 = *(a2 + 58);
          result = hevcbridgeUPullLong(a1, 8, &v256, v21, v22, v23, v24, v25);
          if ((v180 & 0x20) != 0 && !result)
          {
            result = (a2[2])(*a2, 583, v256, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 6) & 1, 584, &v255, 8, v181, v182);
            if (!result)
            {
              if (a4)
              {
                *(a4 + 29130) = 1;
                *(a4 + 29608) = v256;
                v183 = v255;
                *(a4 + 29609) = v255;
                if (v183 == 2)
                {
                  *(a4 + 4) = 1;
                }
              }

              v34 = 16;
              goto LABEL_205;
            }
          }

          break;
        case 0xFFu:
          v256 = 0;
          v255 = 0;
          v253 = 0;
          v254 = 0;
          v72 = *(a2 + 58);
          result = hevcbridgeUPullLong(a1, 8, &v256, v21, v22, v23, v24, v25);
          if ((v72 & 0x80) != 0 && !result)
          {
            result = (a2[2])(*a2, 585, v256, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, *(a2 + 117) & 1, 586, &v255, 8, v73, v74);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 9) & 1, 587, &v254 + 1, 8, v75, v76);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 10) & 1, 588, &v254, 8, v77, v78);
                if (!result)
                {
                  result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 11) & 1, 589, &v253 + 1, 8, v79, v80);
                  if (!result)
                  {
                    result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 12) & 1, 590, &v253, 8, v81, v82);
                    if (!result)
                    {
                      if (a4)
                      {
                        *(a4 + 29131) = 1;
                        *(a4 + 29610) = v256;
                        v83 = BYTE4(v254);
                        *(a4 + 29611) = v255;
                        *(a4 + 29612) = v83;
                        v84 = BYTE4(v253);
                        *(a4 + 29613) = v254;
                        *(a4 + 29614) = v84;
                        *(a4 + 29615) = v253;
                      }

                      v34 = 48;
                      goto LABEL_205;
                    }
                  }
                }
              }
            }
          }

          break;
        default:
          goto LABEL_205;
      }
    }

    else if (v255 == 8)
    {
      v256 = 0;
      v255 = 0;
      v253 = 0;
      v254 = 0;
      HIDWORD(v252) = 0;
      v99 = *(a2 + 108);
      result = hevcbridgeUPullLong(a1, 8, &v256, v21, v22, v23, v24, v25);
      if ((v99 & 0x800000) != 0 && !result)
      {
        result = (a2[2])(*a2, 537, v256, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        v105 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v255, v100, v101, v102, v103, v104);
        if ((v105 & 0x1000000) != 0 && !result)
        {
          result = (a2[2])(*a2, 538, v255, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 25) & 1, 539, &v254 + 1, 12, v106, v107);
          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 26) & 1, 540, &v254, 12, v108, v109);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 27) & 1, 541, &v253 + 1, 12, v110, v111);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 28) & 1, 542, &v253, 12, v112, v113);
                if (!result)
                {
                  result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 29) & 1, 543, &v252 + 1, 12, v114, v115);
                  if (!result)
                  {
                    if (a4)
                    {
                      *(a4 + 29126) = 1;
                      v116 = *(a4 + 29284);
                      v117 = a4 + 36 * v116 + 29288;
                      *(v117 + 4) = v256;
                      v118 = WORD2(v254);
                      *(v117 + 6) = v255;
                      *(v117 + 8) = v118;
                      v119 = WORD2(v253);
                      *(v117 + 10) = v254;
                      *(v117 + 12) = v119;
                      v120 = WORD2(v252);
                      *(v117 + 14) = v253;
                      *(v117 + 16) = v120;
                      *v117 = v33;
                      if (v116 <= 4)
                      {
                        *(a4 + 29284) = v116 + 1;
                      }
                    }

                    else
                    {
                      v116 = 0;
                    }

                    if (v33 < 0xB)
                    {
                      v34 = 80;
                    }

                    else
                    {
                      LODWORD(v252) = 0;
                      result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 30) & 1, 544, &v252, 12, v24, v25);
                      if (result)
                      {
                        return result;
                      }

                      if (a4)
                      {
                        *(a4 + 36 * v116 + 29306) = v252;
                      }

                      if (v33 < 0xD)
                      {
                        v34 = 92;
                      }

                      else
                      {
                        LODWORD(v252) = 0;
                        result = hevcbridgeUPullAlways(a1, a2, *(a2 + 27) >> 31, 545, &v252, 12, v24, v25);
                        if (result)
                        {
                          return result;
                        }

                        if (a4)
                        {
                          *(a4 + 36 * v116 + 29308) = v252;
                        }

                        if (v33 == 13)
                        {
                          v34 = 104;
                        }

                        else
                        {
                          LODWORD(v252) = 0;
                          v250 = 0;
                          v251 = 0;
                          v249 = 0;
                          result = hevcbridgeUPullAlways(a1, a2, a2[14] & 1, 546, &v252, 8, v24, v25);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 33) & 1, 547, &v251 + 1, 8, v221, v222);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 34) & 1, 548, &v251, 8, v223, v224);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 35) & 1, 549, &v250 + 1, 8, v225, v226);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 36) & 1, 550, &v250, 8, v227, v228);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 37) & 1, 551, &v249, 8, v229, v230);
                          if (result)
                          {
                            return result;
                          }

                          if (a4)
                          {
                            v231 = BYTE4(v251);
                            v232 = (a4 + 36 * v116 + 29288);
                            v232[22] = v252;
                            v232[23] = v231;
                            v233 = BYTE4(v250);
                            v232[24] = v251;
                            v232[25] = v233;
                            v234 = v249;
                            v232[26] = v250;
                            v232[27] = v234;
                          }

                          if (v33 < 0x14)
                          {
                            v34 = 152;
                          }

                          else
                          {
                            LODWORD(v252) = 0;
                            v250 = 0;
                            v251 = 0;
                            v249 = 0;
                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 38) & 1, 552, &v252, 8, v24, v25);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 39) & 1, 553, &v251 + 1, 8, v235, v236);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 40) & 1, 554, &v251, 8, v237, v238);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 41) & 1, 555, &v250 + 1, 8, v239, v240);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 42) & 1, 556, &v250, 8, v241, v242);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 43) & 1, 557, &v249, 8, v243, v244);
                            if (result)
                            {
                              return result;
                            }

                            if (a4)
                            {
                              v245 = BYTE4(v251);
                              v246 = (a4 + 36 * v116 + 29288);
                              v246[28] = v252;
                              v246[29] = v245;
                              v247 = BYTE4(v250);
                              v246[30] = v251;
                              v246[31] = v247;
                              v248 = v249;
                              v246[32] = v250;
                              v246[33] = v248;
                            }

                            v34 = 200;
                          }
                        }
                      }
                    }

                    goto LABEL_205;
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (v255 == 9)
    {
      v256 = 0;
      v162 = *(a2 + 108);
      result = hevcbridgeUPullLong(a1, 8, &v256, v21, v22, v23, v24, v25);
      if ((v162 & 0x100000000000) != 0 && !result)
      {
        result = (a2[2])(*a2, 558, v256, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        if (a4)
        {
          *(a4 + 29127) = 1;
          v163 = v256;
          *(a4 + 29468) = v256;
        }

        else
        {
          v163 = v256;
        }

        if (v163 < 0x13)
        {
          v34 = 8;
        }

        else
        {
          v255 = 0;
          v253 = 0;
          v254 = 0;
          v252 = 0;
          HIDWORD(v251) = 0;
          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 45) & 1, 559, &v255, 16, v24, v25);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 46) & 1, 560, &v254 + 1, 16, v184, v185);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 47) & 1, 561, &v254, 16, v186, v187);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, *(a2 + 57) & 1, 562, &v253 + 1, 16, v188, v189);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 49) & 1, 563, &v253, 16, v190, v191);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 50) & 1, 564, &v252 + 1, 16, v192, v193);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 51) & 1, 565, &v252, 16, v194, v195);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 52) & 1, 566, &v251 + 1, 16, v196, v197);
          if (result)
          {
            return result;
          }

          if (a4)
          {
            v198 = WORD2(v254);
            *(a4 + 29470) = v255;
            *(a4 + 29472) = v198;
            v199 = WORD2(v253);
            *(a4 + 29474) = v254;
            *(a4 + 29476) = v199;
            v200 = WORD2(v252);
            *(a4 + 29478) = v253;
            *(a4 + 29480) = v200;
            v201 = WORD2(v251);
            *(a4 + 29482) = v252;
            *(a4 + 29484) = v201;
          }

          v34 = 136;
        }

        goto LABEL_205;
      }
    }

    else
    {
      v256 = 0;
      v255 = 0;
      v254 = 0;
      v49 = *(a2 + 108);
      result = hevcbridgeUPullLong(a1, 8, &v256, v21, v22, v23, v24, v25);
      if ((v49 & 0x20000000000000) != 0 && !result)
      {
        result = (a2[2])(*a2, 567, v256, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 54) & 1, 568, &v255, 12, v50, v51);
        if (!result)
        {
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 55) & 1, 569, &v254 + 1, 12, v52, v53);
          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, *(a2 + 115) & 1, 570, &v254, 8, v54, v55);
            if (!result)
            {
              if (a4)
              {
                *(a4 + 29128) = 1;
                v56 = *(a4 + 29488);
                if (v56 <= 3)
                {
                  *(a4 + 29488) = v56 + 1;
                }

                v57 = a4 + 28 * v56 + 29492;
                *(v57 + 4) = v256;
                v58 = WORD2(v254);
                *(v57 + 6) = v255;
                *(v57 + 8) = v58;
                v59 = v254;
                *(v57 + 10) = v254;
              }

              else
              {
                v56 = 0;
                v59 = v254;
              }

              if (v59 < 0x13)
              {
                v34 = 40;
              }

              else
              {
                v252 = 0;
                v253 = 0;
                v250 = 0;
                v251 = 0;
                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 57) & 1, 571, &v253 + 1, 16, v24, v25);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 58) & 1, 572, &v253, 16, v202, v203);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 59) & 1, 573, &v252 + 1, 16, v204, v205);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 60) & 1, 574, &v252, 16, v206, v207);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 61) & 1, 575, &v251 + 1, 16, v208, v209);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 62) & 1, 576, &v251, 16, v210, v211);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, *(a2 + 108) >> 63, 577, &v250 + 1, 16, v212, v213);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, *(a2 + 58) & 1, 578, &v250, 16, v214, v215);
                if (result)
                {
                  return result;
                }

                if (a4)
                {
                  v216 = v253;
                  v217 = (a4 + 28 * v56 + 29492);
                  v217[6] = WORD2(v253);
                  v217[7] = v216;
                  v218 = v252;
                  v217[8] = WORD2(v252);
                  v217[9] = v218;
                  v219 = v251;
                  v217[10] = WORD2(v251);
                  v217[11] = v219;
                  v220 = v250;
                  v217[12] = WORD2(v250);
                  v217[13] = v220;
                }

                v34 = 168;
              }

              goto LABEL_205;
            }
          }
        }
      }
    }
  }

  else if (v255 > 3u)
  {
    switch(v255)
    {
      case 4u:
        v256 = 0;
        v255 = 0;
        v121 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v256, v21, v22, v23, v24, v25);
        if ((v121 & 0x2000) != 0 && !result)
        {
          result = (a2[2])(*a2, 527, v256, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v127 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v255, v122, v123, v124, v125, v126);
          if ((v127 & 0x4000) != 0 && !result)
          {
            result = (a2[2])(*a2, 528, v255, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            if (a4)
            {
              *(a4 + 29123) = 1;
              *(a4 + 29262) = v256;
              *(a4 + 29264) = v255;
            }

            v34 = 24;
            goto LABEL_205;
          }
        }

        break;
      case 5u:
        v256 = 0;
        v255 = 0;
        v254 = 0;
        v164 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 13, &v256, v21, v22, v23, v24, v25);
        if ((v164 & 0x8000) != 0 && !result)
        {
          result = (a2[2])(*a2, 529, v256, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v170 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 13, &v255, v165, v166, v167, v168, v169);
          if ((v170 & 0x10000) != 0 && !result)
          {
            result = (a2[2])(*a2, 530, v255, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v176 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 13, &v254 + 1, v171, v172, v173, v174, v175);
            if ((v176 & 0x20000) != 0 && !result)
            {
              result = (a2[2])(*a2, 531, HIDWORD(v254), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 18) & 1, 532, &v254, 13, v177, v178);
              if (!result)
              {
                if (a4)
                {
                  *(a4 + 29124) = 1;
                  *(a4 + 29266) = v256;
                  v179 = WORD2(v254);
                  *(a4 + 29268) = v255;
                  *(a4 + 29270) = v179;
                  *(a4 + 29272) = v254;
                }

                v34 = 52;
                goto LABEL_205;
              }
            }
          }
        }

        break;
      case 6u:
        v256 = 0;
        v255 = 0;
        v254 = 0;
        v60 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 16, &v256, v21, v22, v23, v24, v25);
        if ((v60 & 0x80000) != 0 && !result)
        {
          result = (a2[2])(*a2, 533, v256, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v66 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 16, &v255, v61, v62, v63, v64, v65);
          if ((v66 & 0x100000) != 0 && !result)
          {
            result = (a2[2])(*a2, 534, v255, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 21) & 1, 535, &v254 + 1, 16, v67, v68);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 22) & 1, 536, &v254, 16, v69, v70);
              if (!result)
              {
                if (a4)
                {
                  *(a4 + 29125) = 1;
                  *(a4 + 29274) = v256;
                  v71 = WORD2(v254);
                  *(a4 + 29276) = v255;
                  *(a4 + 29278) = v71;
                  *(a4 + 29280) = v254;
                }

                v34 = 64;
                goto LABEL_205;
              }
            }
          }
        }

        break;
      default:
        goto LABEL_205;
    }
  }

  else
  {
    switch(v255)
    {
      case 1u:
        v256 = 0;
        HIDWORD(v254) = 0;
        v255 = 0;
        v85 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v256, v21, v22, v23, v24, v25);
        if ((v85 & 1) != 0 && !result)
        {
          result = (a2[2])(*a2, 514, v256, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v91 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v255, v86, v87, v88, v89, v90);
          if ((v91 & 2) != 0 && !result)
          {
            result = (a2[2])(*a2, 515, v255, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v97 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 12, &v254 + 1, v92, v93, v94, v95, v96);
            if ((v97 & 4) != 0 && !result)
            {
              result = (a2[2])(*a2, 516, HIDWORD(v254), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              if (a4)
              {
                *(a4 + 29120) = 1;
                *(a4 + 29132) = v256;
                v98 = WORD2(v254);
                *(a4 + 29134) = v255;
                *(a4 + 29136) = v98;
              }

              goto LABEL_99;
            }
          }
        }

        break;
      case 2u:
        v256 = 0;
        v255 = 0;
        v253 = 0;
        v254 = 0;
        HIDWORD(v252) = 0;
        if (a4)
        {
          ++*(a4 + 29140);
        }

        v136 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v256, v21, v22, v23, v24, v25);
        if ((v136 & 8) != 0 && !result)
        {
          result = (a2[2])(*a2, 517, v256, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v142 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v255, v137, v138, v139, v140, v141);
          if ((v142 & 0x10) != 0 && !result)
          {
            result = (a2[2])(*a2, 518, v255, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v148 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 12, &v254 + 1, v143, v144, v145, v146, v147);
            if ((v148 & 0x20) != 0 && !result)
            {
              result = (a2[2])(*a2, 519, HIDWORD(v254), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 6) & 1, 520, &v254, 12, v149, v150);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, *(a2 + 108) >> 7, 521, &v253 + 1, 12, v151, v152);
                if (!result)
                {
                  result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 8) & 1, 522, &v253, 12, v153, v154);
                  if (!result)
                  {
                    result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 27) >> 9) & 1, 523, &v252 + 1, 13, v155, v156);
                    if (!result)
                    {
                      if (a4)
                      {
                        v157 = *(a4 + 29140);
                        *(a4 + 29121) = 1;
                        v158 = (a4 + 14 * (v157 - 1) + 29144);
                        *v158 = v256;
                        v159 = WORD2(v254);
                        v158[1] = v255;
                        v158[2] = v159;
                        v160 = WORD2(v253);
                        v158[3] = v254;
                        v158[4] = v160;
                        v161 = WORD2(v252);
                        v158[5] = v253;
                        v158[6] = v161;
                        if (v157 >= 8)
                        {
                          v157 = 8;
                        }

                        *(a4 + 29140) = v157;
                      }

                      v34 = 85;
                      goto LABEL_205;
                    }
                  }
                }
              }
            }
          }
        }

        break;
      case 3u:
        v256 = 0;
        HIDWORD(v254) = 0;
        v255 = 0;
        v35 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v256, v21, v22, v23, v24, v25);
        if ((v35 & 0x400) != 0 && !result)
        {
          result = (a2[2])(*a2, 524, v256, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v41 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v255, v36, v37, v38, v39, v40);
          if ((v41 & 0x800) != 0 && !result)
          {
            result = (a2[2])(*a2, 525, v255, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v47 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 12, &v254 + 1, v42, v43, v44, v45, v46);
            if ((v47 & 0x1000) != 0 && !result)
            {
              result = (a2[2])(*a2, 526, HIDWORD(v254), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              if (a4)
              {
                *(a4 + 29122) = 1;
                *(a4 + 29256) = v256;
                v48 = WORD2(v254);
                *(a4 + 29258) = v255;
                *(a4 + 29260) = v48;
              }

LABEL_99:
              v34 = 36;
LABEL_205:
              if (8 * v33 <= v34)
              {
                return 0;
              }

              else
              {

                return hevcbridgeUSkip(a1, 8 * v33 - v34, v20, v21, v22, v23, v24, v25, a9);
              }
            }
          }
        }

        break;
      default:
        goto LABEL_205;
    }
  }

  return result;
}

uint64_t hevcbridgeSEPush(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (*(a1 + 41))
  {
    hevcbridgeSEPush_cold_1(&v22);
    return v22;
  }

  else
  {
    v10 = a2 < 1;
    if (a2 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = -a2;
    }

    v12 = 0;
    if (a2)
    {
      v13 = v11;
      do
      {
        v14 = v12++;
        if (v14 > 0x1D)
        {
          break;
        }

        v15 = v13 > 1;
        v13 >>= 1;
      }

      while (v15);
    }

    result = hevcbridgeUPush(a1, v12 + 1, 1, 0, a5, a6, a7, a8, v21);
    if (v12 && !result)
    {

      return hevcbridgeUPush(a1, v12, (((2 * v11) | v10) - (1 << v12)) & ((1 << v12) - 1), 0, v17, v18, v19, v20, a9);
    }
  }

  return result;
}

size_t hevcbridgeIPush(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (*(a1 + 41))
  {
    hevcbridgeIPush_cold_1(&v11);
    return v11;
  }

  else if (1 << (a2 - 1) <= a3)
  {
    hevcbridgeIPush_cold_2(&v12);
    return v12;
  }

  else if (-1 << (a2 - 1) > a3)
  {
    hevcbridgeIPush_cold_3(&v13);
    return v13;
  }

  else
  {
    v9 = a3 & ~(-1 << a2);

    return hevcbridgeUPush(a1, a2, v9, 0, a5, a6, a7, a8, a9);
  }
}

double OUTLINED_FUNCTION_8_17()
{
  v1 = v0 - 208;
  *(v1 + 96) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  return result;
}

void OUTLINED_FUNCTION_10_13(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 - 56) = a1;
  *(v6 - 64) = 0;
  *(v6 - 96) = 0u;
  *(v6 - 80) = 0u;
  *(v6 - 128) = 0u;
  *(v6 - 112) = 0u;

  bzero(va, 0x88uLL);
}

size_t OUTLINED_FUNCTION_13_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  *(v11 - 160) = v10;
  *(v11 - 152) = v9;
  *(v11 - 144) = 0;
  *(v11 - 136) = v10 + v9;
  *(v11 - 120) = 1;
  *(v11 - 112) = v10;
  *(v11 - 104) = v10;
  *(v11 - 96) = 0;
  *(v11 - 88) = 0;
  *(v11 - 72) = 0;
  *(v11 - 64) = 0;

  return hevcbridgeAdvanceInBitstream(v11 - 160, 0, a3, a4, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_14_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  *(v9 - 96) = 0;
  *(v9 - 88) = 0;
  *(v9 - 72) = 0;
  *(v9 - 64) = 0;

  return hevcbridgeAdvanceInBitstream(v9 - 160, 0, a3, a4, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(&a9, 0xAu, 256, 0, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_22_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  *(v9 - 144) = 0;
  *(v9 - 136) = 0;
  *(v9 - 120) = 0;
  *(v9 - 112) = 0;

  return hevcbridgeAdvanceInBitstream(v9 - 208, 0, a3, a4, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_26_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(&a9, 0xAu, 128, 0, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_28_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(&a9, 0xCu, a3, 0, a5, a6, a7, a8, a9);
}

void OUTLINED_FUNCTION_32_3(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v7 - 56) = a1;
  *(v6 + 96) = 0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;

  bzero(va, 0x88uLL);
}

__n128 OUTLINED_FUNCTION_34_2()
{
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  return result;
}

size_t OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  *(v10 + 48) = v9;
  *(v10 + 56) = v9;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;

  return hevcbridgeAdvanceInBitstream(v11 - 160, 0, a3, a4, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  a39 = 0;
  a40 = 0;
  a42 = 0;
  a43 = 0;

  return hevcbridgeAdvanceInBitstream(&a31, 0, a3, a4, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_50_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(a1, 1u, 1, 0, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_54_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return hevcbridgeUPush(va, 1u, a3, 1, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeSEPush(&a9, -1, a3, a4, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_58_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(a1, a2, 1, 0, a5, a6, a7, a8, a9);
}

double OUTLINED_FUNCTION_59_0@<D0>(_OWORD *a1@<X8>)
{
  *(v2 - 56) = v1;
  *(v2 - 64) = 0;
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_0(const void *a1, int a2, int a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return hevcbridge_getHEVCParameterSetAtIndex(a1, a2, a3, 0, a5, a6, 0, 0, a9, a10);
}

size_t OUTLINED_FUNCTION_64_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return hevcbridgeUPush(va, 4u, a3, 1, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_65_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return hevcbridgeUPush(va, 5u, a3, 1, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeSEPush(&a9, -2, a3, a4, a5, a6, a7, a8, a9);
}

void OUTLINED_FUNCTION_70()
{
  *v2 = v1;
  v2[1] = v0;
  v2[2] = 0;
  v2[3] = v1 + v0;
}

void OUTLINED_FUNCTION_71()
{
  *(v2 - 208) = v1;
  *(v2 - 200) = v0;
  *(v2 - 192) = 0;
  *(v2 - 184) = v1 + v0;
}

size_t OUTLINED_FUNCTION_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (*(v8 + 100) >> 1) & 1;

  return hevcbridgeUPullFlagAlways(v9, v8, v12, 497, (v10 - 109), a6, a7, a8);
}

size_t OUTLINED_FUNCTION_75(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(a1, 0x17u, a3, 0, a5, a6, a7, a8, a9);
}

void *OUTLINED_FUNCTION_81()
{

  return malloc_type_calloc(v1, 1uLL, v0);
}

void *OUTLINED_FUNCTION_82(size_t a1, size_t a2)
{

  return malloc_type_calloc(a1, a2, 0x100004077774924uLL);
}

size_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return hevcbridgeUPush(va, 0x11u, a3, 1, a5, a6, a7, a8, a9);
}

void OUTLINED_FUNCTION_84(uint64_t a1@<X8>)
{

  bzero((a1 + 8), 0x98uLL);
}

size_t OUTLINED_FUNCTION_85(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(a1, a2, 2, 0, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  result = 0;
  *v11 = a9;
  *v10 = a10;
  return result;
}

size_t OUTLINED_FUNCTION_103(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 - 124);

  return hevcbridgeUPullLong(v8, v11, (v9 - 96), a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeSEPush(&a9, -4, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeSEPush(&a9, -5, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_106()
{

  return hevcbridgeParseNALUnit(v0 - 208, &STACK[0x2B0]);
}

size_t OUTLINED_FUNCTION_107(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(a1, a2, 480, 0, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_108(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(a1, a2, 288, 0, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_109(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return hevcbridgeUPush(a1, a2, 96, 0, a5, a6, a7, a8, a9);
}

CC_MD5_CTX *FigDigestMD5Create()
{
  v0 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  v1 = v0;
  if (v0)
  {
    CC_MD5_Init(v0);
  }

  return v1;
}

CC_SHA1_CTX *FigDigestSHA1Create()
{
  v0 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  v1 = v0;
  if (v0)
  {
    CC_SHA1_Init(v0);
  }

  return v1;
}

uint64_t FigOSEventLinkRemoteCreateFromXPCObject(uint64_t a1, void *a2, const void *a3, const void *a4, uint64_t *a5)
{
  v18 = 0;
  cf = 0;
  if (!a2)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_8(&v20);
LABEL_27:
    LODWORD(v6) = 0;
    goto LABEL_28;
  }

  if (!a3)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_7(&v20);
    goto LABEL_27;
  }

  v6 = a4;
  if (!a4)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_6(&v20);
LABEL_28:
    v16 = v20;
    goto LABEL_15;
  }

  if (MEMORY[0x19A8DA4F0](a2) != MEMORY[0x1E69E9E80])
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_1(&v20);
    goto LABEL_27;
  }

  value = xpc_dictionary_get_value(a2, "RemoteEventLinkCreationInfo");
  if (figOSEventLinkRemote_GetTypeID_sRegisterFigOSEventLinkRemoteTypeOnce != -1)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_5(&v20);
    goto LABEL_27;
  }

  v12 = Instance;
  v13 = FigXPCMessageCopyBlockBufferUsingMemoryRecipient(*MEMORY[0x1E695E480], value, "BlockBuffer", v6, &cf);
  if (v13 || (v13 = figOSEventLinkMemoryObjects_createInternal(a1, a3, v6, cf, &v18), v13))
  {
    v16 = v13;
    v14 = 0;
    LODWORD(v6) = 0;
    goto LABEL_33;
  }

  *(v12 + 16) = v18;
  LODWORD(v6) = xpc_dictionary_copy_mach_send();
  if (!v6)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_4(&v20);
    v14 = 0;
LABEL_31:
    v16 = v20;
    goto LABEL_33;
  }

  xpc_dictionary_get_string(value, "EventLinkIdentifier");
  v14 = os_eventlink_create_with_port();
  if (!v14)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_3(&v20);
    goto LABEL_31;
  }

  v15 = os_eventlink_activate();
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = os_eventlink_associate();
    if (!v16)
    {
      *(v12 + 24) = v14;
      *(v12 + 32) = 0;
      *(v12 + 40) = 5;
      *a5 = v12;
LABEL_15:
      FigMachPortReleaseSendRight_(v6, 0, 0, 0, 0);
      v14 = 0;
      goto LABEL_16;
    }
  }

LABEL_33:
  FigMachPortReleaseSendRight_(v6, 0, 0, 0, 0);
  CFRelease(v12);
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
  }

  return v16;
}

uint64_t figOSEventLinkMemoryObjects_createInternal(uint64_t a1, const void *a2, const void *a3, CMBlockBufferRef theBuffer, uint64_t *a5)
{
  if (!theBuffer)
  {
    figOSEventLinkMemoryObjects_createInternal_cold_4(&v21);
    return v21;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (DataLength % *MEMORY[0x1E69E9AC8])
  {
    figOSEventLinkMemoryObjects_createInternal_cold_1(&v19);
    return v19;
  }

  v10 = DataLength;
  if (figOSEventLinkMemoryObjects_GetTypeID_sRegisterFigOSEventLinkMemoryObjectsTypeOnce != -1)
  {
    figOSEventLinkMemoryObjects_createInternal_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    figOSEventLinkMemoryObjects_createInternal_cold_3(&v20);
    return v20;
  }

  v12 = Instance;
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 16) = v13;
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  *(v12 + 24) = v14;
  v15 = CMBlockBufferCreateWithBufferReference(0, theBuffer, 0, 0x20uLL, 0, (v12 + 32));
  if (v15 || (v16 = (v10 - 32) >> 1, v15 = CMBlockBufferCreateWithBufferReference(0, theBuffer, 0x20uLL, v16, 0, (v12 + 40)), v15))
  {
    v17 = v15;
    goto LABEL_18;
  }

  v17 = CMBlockBufferCreateWithBufferReference(0, theBuffer, v16 + 32, v16, 0, (v12 + 48));
  if (v17)
  {
LABEL_18:
    CFRelease(v12);
    return v17;
  }

  *a5 = v12;
  return v17;
}

uint64_t FigOSEventLinkRemoteSetAbortActionCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_5(&v7);
    return v7;
  }

  if (!a2)
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_4(&v7);
    return v7;
  }

  if (!a3)
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 48))
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_1(&v7);
    return v7;
  }

  if (*(a1 + 56))
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_2(&v7);
    return v7;
  }

  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
  result = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = a3;
  return result;
}

uint64_t figOSEventLinkResolveMessageStatus(atomic_uint *a1, BOOL *a2)
{
  while (1)
  {
    v4 = FigAtomicCompareAndSwap32(2, 2u, a1);
    v5 = v4;
    if (v4)
    {
LABEL_4:
      result = 0;
      goto LABEL_5;
    }

    if ((*a1 - 3) <= 0xFFFFFFFD)
    {
      break;
    }

    if (FigAtomicCompareAndSwap32(1, 3u, a1))
    {
      goto LABEL_4;
    }
  }

  figOSEventLinkResolveMessageStatus_cold_1(&v7);
  result = v7;
LABEL_5:
  *a2 = v5;
  return result;
}

uint64_t FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority(os_unfair_lock_s *a1, uint32_t a2)
{
  if (a1)
  {
    if (a2 - 98 <= 0xFFFFFF9E)
    {
      FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_1(&v5);
      return v5;
    }

    else
    {
      os_unfair_lock_lock(a1 + 8);
      a1[9]._os_unfair_lock_opaque = a2;
      a1[10]._os_unfair_lock_opaque = 5;
      os_unfair_lock_unlock(a1 + 8);
      return 0;
    }
  }

  else
  {
    FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_2(&v6);
    return v6;
  }
}

uint64_t FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority(os_unfair_lock_s *a1, uint32_t a2)
{
  if (a1)
  {
    if (a2 == 5 || a2 >= 0x33)
    {
      FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_1(&v5);
      return v5;
    }

    else
    {
      os_unfair_lock_lock(a1 + 8);
      a1[9]._os_unfair_lock_opaque = 0;
      a1[10]._os_unfair_lock_opaque = a2;
      os_unfair_lock_unlock(a1 + 8);
      return 0;
    }
  }

  else
  {
    FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_2(&v6);
    return v6;
  }
}

size_t FigOSEventLinkServerCreate(uint64_t a1, uint64_t a2, int a3, const __CFString *a4, uint64_t a5, const void *a6, const void *a7, const void *a8, void *a9)
{
  cf = 0;
  v34 = 0;
  v32 = 0;
  if (!a7)
  {
    FigOSEventLinkServerCreate_cold_8(&v35);
LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  if (!a8)
  {
    FigOSEventLinkServerCreate_cold_7(&v35);
    goto LABEL_31;
  }

  if (!a6)
  {
    FigOSEventLinkServerCreate_cold_6(&v35);
    goto LABEL_31;
  }

  v11 = a4;
  if (!a4)
  {
    FigOSEventLinkServerCreate_cold_5(&v35);
LABEL_32:
    v30 = v35;
    goto LABEL_19;
  }

  if (a2 == 5 && !a3)
  {
    FigOSEventLinkServerCreate_cold_4(&v35);
    goto LABEL_31;
  }

  if (figOSEventLinkServer_GetTypeID_sRegisterFigOSEventLinkServerTypeOnce != -1)
  {
    FigOSEventLinkServerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigOSEventLinkServerCreate_cold_3(&v35);
    goto LABEL_31;
  }

  v18 = Instance;
  BlockBuffer = FigMemoryPoolCreateBlockBuffer(a6, *MEMORY[0x1E69E9AC8], &cf, v17);
  if (BlockBuffer || (BlockBuffer = figOSEventLinkMemoryObjects_createInternal(a1, a7, a8, cf, &v32), BlockBuffer))
  {
LABEL_24:
    v30 = BlockBuffer;
    Mutable = 0;
    v11 = 0;
    goto LABEL_34;
  }

  v18[3] = v32;
  v32 = 0;
  v20 = CFRetain(a6);
  v18[4] = cf;
  v18[5] = v20;
  cf = 0;
  v18[10] = CFRetain(v11);
  CFStringGetCStringPtr(v11, 0x8000100u);
  v21 = os_eventlink_create();
  if (v21)
  {
    v22 = v21;
    BlockBuffer = os_eventlink_activate();
    if (!BlockBuffer)
    {
      v18[6] = v22;
      v23 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = CFStringCreateWithFormat(v23, 0, @"%@.%p", v11, v22);
      CFDictionarySetValue(Mutable, @"com.apple.fig.ThreadCreateKey_Identifier", v11);
      if (a3)
      {
        FigCFDictionarySetInt32(Mutable, @"com.apple.fig.ThreadCreateKey_MachThreadPriority", a3, v25, v26, v27, v28, v29);
      }

      v30 = FigThreadCreate(FigOSEventLinkServerMain, v18, a2, 0, Mutable, &v34, v28, v29);
      if (!v30)
      {
        CFRetain(v18);
        *a9 = v18;
        if (!Mutable)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_34;
    }

    goto LABEL_24;
  }

  FigOSEventLinkServerCreate_cold_2(&v35);
  Mutable = 0;
  v11 = 0;
  v30 = v35;
LABEL_34:
  CFRelease(v18);
  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v30;
}

uint64_t FigOSEventLinkServerSetCallbacks(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    a1[7] = *a3;
    a1[8] = a3[1];
    v5 = a1[9];
    if (v5)
    {
      CFRelease(v5);
      a1[9] = 0;
    }

    if (a2)
    {
      v6 = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
      result = 0;
      a1[9] = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigOSEventLinkServerSetCallbacks_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t FigOSEventLinkServerSetAbortActionCallbacks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_7(&v9);
    return v9;
  }

  if (!a2)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_6(&v9);
    return v9;
  }

  if (!a3)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_5(&v9);
    return v9;
  }

  if (!a4)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_4(&v9);
    return v9;
  }

  if (a1[11])
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_1(&v9);
    return v9;
  }

  if (a1[12])
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_2(&v9);
    return v9;
  }

  if (a1[13])
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_3(&v9);
    return v9;
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
  result = 0;
  a1[11] = v7;
  a1[12] = a3;
  a1[13] = a4;
  return result;
}

uint64_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16))
      {
        FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_1(&v5);
        return v5;
      }

      else
      {
        v3 = FigXPCRetain(a2);
        result = 0;
        *(a1 + 16) = v3;
      }
    }

    else
    {
      FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v8);
  return 0;
}

double figOSEventLinkRemote_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__CFString *figOSEventLinkRemote_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(*(a1 + 16) + 40);
  DataLength = CMBlockBufferGetDataLength(v3);
  v5 = *(*(a1 + 16) + 48);
  v6 = CMBlockBufferGetDataLength(v5);
  CFStringAppendFormat(Mutable, 0, @"<FigOSEventLinkRemote %p sharedMessageBBuf %p (size %zu) sharedReplyBBuf %p (size %zu)>", a1, v3, DataLength, v5, v6);
  return Mutable;
}

double figOSEventLinkMemoryObjects_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figOSEventLinkMemoryObjects_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }
}

__CFString *figOSEventLinkMemoryObjects_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(a1 + 40);
  DataLength = CMBlockBufferGetDataLength(v3);
  v5 = *(a1 + 48);
  v6 = CMBlockBufferGetDataLength(v5);
  CFStringAppendFormat(Mutable, 0, @"<FigOSEventLinkMemoryObjects %p sharedMessageBBuf %p (size %zu) sharedReplyBBuf %p (size %zu)>", a1, v3, DataLength, v5, v6);
  return Mutable;
}

void figOSEventLinkRemoteAbortAction(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 8));
  if (v2)
  {
    v3 = v2;
    (*a1)(v2, *(a1 + 16));

    CFRelease(v3);
  }
}

double figOSEventLinkServer_Init(_OWORD *a1)
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

void figOSEventLinkServer_Finalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[6];
  if (v5)
  {

    a1[6] = 0;
  }

  v6 = a1[2];
  if (v6)
  {

    a1[2] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  a1[12] = 0;
  a1[13] = 0;
}

__CFString *figOSEventLinkServer_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(*(a1 + 24) + 40);
  DataLength = CMBlockBufferGetDataLength(v3);
  v5 = *(a1 + 24);
  v6 = *(v5 + 48);
  v7 = CMBlockBufferGetDataLength(*(v5 + 40));
  CFStringAppendFormat(Mutable, 0, @"<FigOSEventLinkServer %p sharedMessageBBuf %p (size %zu) sharedReplyBBuf %p (size %zu)>", a1, v3, DataLength, v6, v7);
  return Mutable;
}

uint64_t FigPreferAudioSessionOverCMSession(uint64_t a1, uint64_t a2)
{
  if (FigPreferAudioSessionOverCMSession_onceToken != -1)
  {
    FigPreferAudioSessionOverCMSession_cold_1();
  }

  return 1;
}

size_t FigCaptionGroupFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  v10 = 0;
  v14 = figCaptionGroupFormatDescriptionFinalize;
  v13 = figCaptionGroupFormatDescriptionCopyDebugDesc;
  v11 = 4;
  v12 = figCaptionGroupFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x63706772u, &v10, a3, a4, a5, a6, a7, a8, v9);
}

size_t FigCaptionGroupFormatDescriptionCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    FigThreadRunOnce(&sFigCaptionGroupFormatDescriptionRegisterOnce, FigCaptionGroupFormatDescriptionRegisterOnce);
    v16 = FigDerivedFormatDescriptionCreate(a1, 0x63706772, a2, 0, &cf, v6, v7, v8, cf);
    if (v16)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *FigDerivedFormatDescriptionGetDerivedStorage(cf, v9, v10, v11, v12, v13, v14, v15) = a2;
      *a3 = cf;
    }
  }

  else
  {
    FigCaptionGroupFormatDescriptionCreate_cold_1(&v19);
    return v19;
  }

  return v16;
}

__CFString *figCaptionGroupFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  CFStringAppendFormat(Mutable, 0, @"\t\tsubType: '%c%c%c%c'", HIBYTE(*DerivedStorage), BYTE2(*DerivedStorage), BYTE1(*DerivedStorage), *DerivedStorage);
  return Mutable;
}

uint64_t FigTaggedBufferGroupGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_45 != -1)
  {
    FigTaggedBufferGroupGetTypeID_cold_1();
  }

  return qword_1ED4CCC60;
}

CFTypeID CMTaggedBufferGroupGetTypeID(void)
{
  if (_MergedGlobals_45 != -1)
  {
    FigTaggedBufferGroupGetTypeID_cold_1();
  }

  return qword_1ED4CCC60;
}

uint64_t taggedBufferGroup_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t taggedBufferGroup_createCommon(uint64_t a1, const __CFArray *a2, CFArrayRef theArray, uint64_t *a4)
{
  if (!a2)
  {
    taggedBufferGroup_createCommon_cold_6(&v15);
    return v15;
  }

  if (!theArray)
  {
    taggedBufferGroup_createCommon_cold_5(&v15);
    return v15;
  }

  Count = CFArrayGetCount(theArray);
  if (Count != CFArrayGetCount(a2))
  {
    taggedBufferGroup_createCommon_cold_1(&v15);
    return v15;
  }

  if (!a4)
  {
    taggedBufferGroup_createCommon_cold_4(&v15);
    return v15;
  }

  if (_MergedGlobals_45 != -1)
  {
    FigTaggedBufferGroupGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    taggedBufferGroup_createCommon_cold_3(&v15);
    return v15;
  }

  v9 = Instance;
  *(Instance + 16) = Count;
  if (Count >= 1)
  {
    v10 = 0;
    v11 = (Instance + 32);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      *(v11 - 1) = CFRetain(ValueAtIndex);
      v13 = CFArrayGetValueAtIndex(a2, v10);
      *v11 = CFRetain(v13);
      v11 += 2;
      ++v10;
    }

    while (v10 < *(v9 + 16));
  }

  result = 0;
  *a4 = v9;
  return result;
}

OSStatus CMTaggedBufferGroupCreateCombined(CFAllocatorRef allocator, CFArrayRef taggedBufferGroups, CMTaggedBufferGroupRef *groupOut)
{
  cf = 0;
  if (!taggedBufferGroups || (Count = CFArrayGetCount(taggedBufferGroups), Count <= 0))
  {
    CMTaggedBufferGroupCreateCombined_cold_4(&v21);
LABEL_18:
    Common = v21;
    goto LABEL_14;
  }

  if (!groupOut)
  {
    CMTaggedBufferGroupCreateCombined_cold_3(&v21);
    goto LABEL_18;
  }

  v7 = Count;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    CMTaggedBufferGroupCreateCombined_cold_2(&v21);
    goto LABEL_18;
  }

  v9 = Mutable;
  v10 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v10)
  {
    CMTaggedBufferGroupCreateCombined_cold_1(v9, &v21);
    goto LABEL_18;
  }

  v11 = v10;
  for (i = 0; i != v7; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(taggedBufferGroups, i);
    if (*(ValueAtIndex + 2) >= 1)
    {
      v14 = ValueAtIndex;
      v15 = 0;
      v16 = (ValueAtIndex + 32);
      do
      {
        CFArrayAppendValue(v11, *(v16 - 1));
        v17 = *v16;
        v16 += 2;
        CFArrayAppendValue(v9, v17);
        ++v15;
      }

      while (v15 < *(v14 + 2));
    }
  }

  Common = taggedBufferGroup_createCommon(allocator, v9, v11, &cf);
  if (!Common)
  {
    *groupOut = cf;
    cf = 0;
  }

  CFRelease(v9);
  CFRelease(v11);
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return Common;
}

CMItemCount CMTaggedBufferGroupGetCount(CMTaggedBufferGroupRef group)
{
  if (group)
  {
    return *(group + 2);
  }

  CMTaggedBufferGroupGetCount_cold_1(group, v1, v2, v3, v4, v5, v6, v7, v8);
  return 0;
}

CMTagCollectionRef CMTaggedBufferGroupGetTagCollectionAtIndex(CMTaggedBufferGroupRef group, CFIndex index)
{
  if (!group)
  {
    CMTaggedBufferGroupGetTagCollectionAtIndex_cold_2(0, index, v2, v3, v4, v5, v6, v7, vars0);
    return 0;
  }

  if (index < 0 || *(group + 2) <= index)
  {
    CMTaggedBufferGroupGetTagCollectionAtIndex_cold_1(group, index, v2, v3, v4, v5, v6, v7, vars0);
    return 0;
  }

  return *(group + 2 * index + 4);
}

uint64_t FigTaggedBufferGroupGetCVPixelBufferAtIndex(uint64_t a1, uint64_t a2)
{
  TypeID = CVPixelBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(a1, a2, TypeID, v5, v6, v7, v8, v9);
}

CVPixelBufferRef CMTaggedBufferGroupGetCVPixelBufferAtIndex(CMTaggedBufferGroupRef group, CFIndex index)
{
  TypeID = CVPixelBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, index, TypeID, v5, v6, v7, v8, v9);
}

uint64_t taggedBufferGroup_getBufferAtIndexWithTypeCheck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    taggedBufferGroup_getBufferAtIndexWithTypeCheck_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v11);
    return 0;
  }

  if (a2 < 0 || *(a1 + 16) <= a2)
  {
    taggedBufferGroup_getBufferAtIndexWithTypeCheck_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v11);
    return 0;
  }

  v8 = a1 + 16 * a2;
  v9 = *(v8 + 24);
  if (!v9)
  {
    return 0;
  }

  if (CFGetTypeID(*(v8 + 24)) == a3)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

CVPixelBufferRef CMTaggedBufferGroupGetCVPixelBufferForTagCollection(CMTaggedBufferGroupRef group, CMTagCollectionRef tagCollection, CFIndex *indexOut)
{
  v20 = -1;
  CountAndLastIndexForMatchedTagCollection = taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection(group, tagCollection, &v20, v3, v4, v5, v6, v7);
  v11 = v20;
  if (CountAndLastIndexForMatchedTagCollection != 1 || v20 == -1)
  {
    return 0;
  }

  TypeID = CVPixelBufferGetTypeID();
  result = taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, v11, TypeID, v14, v15, v16, v17, v18);
  if (indexOut)
  {
    if (result)
    {
      *indexOut = v20;
    }
  }

  return result;
}

uint64_t taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection(uint64_t a1, CMTagCollectionRef containedTagCollection, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection_cold_2(0, containedTagCollection, a3, a4, a5, a6, a7, a8, v17);
    return 0;
  }

  if (!containedTagCollection)
  {
    taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v17);
    return 0;
  }

  if (*(a1 + 16) < 1)
  {
    v11 = 0;
    v14 = -1;
    if (!a3)
    {
      return v11;
    }

LABEL_11:
    *a3 = v14;
    return v11;
  }

  v11 = 0;
  v12 = 0;
  v13 = (a1 + 32);
  v14 = -1;
  do
  {
    v15 = *v13;
    v13 += 2;
    if (CMTagCollectionContainsTagsOfCollection(v15, containedTagCollection))
    {
      v14 = v12;
      ++v11;
    }

    ++v12;
  }

  while (v12 < *(a1 + 16));
  if (a3)
  {
    goto LABEL_11;
  }

  return v11;
}

uint64_t FigTaggedBufferGroupGetCMSampleBufferAtIndex(uint64_t a1, uint64_t a2)
{
  TypeID = CMSampleBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(a1, a2, TypeID, v5, v6, v7, v8, v9);
}

CMSampleBufferRef CMTaggedBufferGroupGetCMSampleBufferAtIndex(CMTaggedBufferGroupRef group, CFIndex index)
{
  TypeID = CMSampleBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, index, TypeID, v5, v6, v7, v8, v9);
}

CMSampleBufferRef CMTaggedBufferGroupGetCMSampleBufferForTagCollection(CMTaggedBufferGroupRef group, CMTagCollectionRef tagCollection, CFIndex *indexOut)
{
  v20 = -1;
  CountAndLastIndexForMatchedTagCollection = taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection(group, tagCollection, &v20, v3, v4, v5, v6, v7);
  v11 = v20;
  if (CountAndLastIndexForMatchedTagCollection != 1 || v20 == -1)
  {
    return 0;
  }

  TypeID = CMSampleBufferGetTypeID();
  result = taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, v11, TypeID, v14, v15, v16, v17, v18);
  if (indexOut)
  {
    if (result)
    {
      *indexOut = v20;
    }
  }

  return result;
}

void taggedBufferGroup_finalize(uint64_t a1)
{
  if (*(a1 + 16) >= 1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v4 = *(v3 - 1);
      if (v4)
      {
        CFRelease(v4);
        *(v3 - 1) = 0;
      }

      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      ++v2;
      v3 += 2;
    }

    while (v2 < *(a1 + 16));
  }
}

uint64_t taggedBufferGroup_equal(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = (a2 + 32);
  for (i = (a1 + 32); ; i += 2)
  {
    result = CFEqual(*(i - 1), *(v5 - 1));
    if (!result)
    {
      break;
    }

    result = CFEqual(*i, *v5);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 2;
    if (v4 >= *(a1 + 16))
    {
      return 1;
    }
  }

  return result;
}

CFHashCode taggedBufferGroup_hash(uint64_t a1)
{
  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = (a1 + 32);
  do
  {
    v5 = ((v2 << 6) + 2654435769u + (v2 >> 2) + CFHash(*(v4 - 1))) ^ v2;
    v6 = *v4;
    v4 += 2;
    v2 = (CFHash(v6) + 2654435769u + (v5 << 6) + (v5 >> 2)) ^ v5;
    ++v3;
  }

  while (v3 < *(a1 + 16));
  return v2;
}

__CFString *taggedBufferGroup_copyDesc(const void **a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (Mutable)
  {
    v11 = CFGetAllocator(a1);
    v12 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      v13 = v12;
      if (a1[2] >= 1)
      {
        v14 = 0;
        v15 = a1 + 4;
        do
        {
          CFArrayAppendValue(v13, *(v15 - 1));
          v16 = *v15;
          v15 += 2;
          CFArrayAppendValue(v13, v16);
          ++v14;
        }

        while (v14 < a1[2]);
      }

      v17 = FigCFCopyCompactDescription(v13);
      CFStringAppendFormat(Mutable, 0, @"<CMTaggedBufferGroup %p>: TaggedBuffers %@", a1, v17);
      if (v17)
      {
        CFRelease(v17);
      }

      CFRelease(v13);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"<CMTaggedBufferGroup %p>: TaggedBuffers %@", a1, 0);
    }
  }

  else
  {
    taggedBufferGroup_copyDesc_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v19);
  }

  return Mutable;
}

uint64_t registerFigRegistryItem()
{
  result = _CFRuntimeRegisterClass();
  sFigRegistryItemID = result;
  return result;
}

uint64_t FigRegistryItemCopyDescription(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRetain(v4);
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return 0;
}

uint64_t FigRegistryItemCopyMatchingInfo(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    CFRetain(v4);
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return 0;
}

uint64_t FigRegistryItemCopyBundle(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    CFRetain(*(v3 + 8));
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 0;
}

size_t FigRegistryItemGetFactory(uint64_t a1, int a2, void *a3)
{
  result = 0;
  v7 = *(a1 + 72);
  if (a2 && !v7)
  {
    v8 = *(a1 + 24);
    FigSimpleMutexLock(*v8);
    if (!*(a1 + 72))
    {
      *(a1 + 72) = CFBundleGetFunctionPointerForName(*(v8 + 8), *(a1 + 48));
    }

    FigSimpleMutexUnlock(*v8);
    v7 = *(a1 + 72);
    if (v7)
    {
      result = 0;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6CuLL, "<<<< FigRegistry >>>>", 0x353, v3, v10, v11, v12);
      v7 = *(a1 + 72);
    }
  }

  *a3 = v7;
  return result;
}

uint64_t registerFigRegistry()
{
  result = _CFRuntimeRegisterClass();
  sFigRegistryID = result;
  return result;
}

size_t FigRegistryCreate(const __CFAllocator *a1, const __CFString *a2, void *a3)
{
  FigThreadRunOnce(&FigRegistryGetTypeID_registerOnce, registerFigRegistry);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v8 = MEMORY[0x1E695E9F8];
    Instance[3] = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
    Instance[4] = CFArrayCreateMutable(a1, 0, 0);
    Instance[5] = CFSetCreateMutable(a1, 0, v8);
    Instance[6] = FigReentrantMutexCreate();
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Instance[7] = Mutable;
    if (Instance[3] && Instance[4] && Instance[5] && (Instance[6] ? (v10 = Mutable == 0) : (v10 = 1), !v10))
    {
      v18 = 0;
      Instance[2] = CFStringCreateCopy(a1, a2);
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x6FB, v3, v12, v13, v19);
      if (v18)
      {
        CFRelease(Instance);
        Instance = 0;
      }
    }
  }

  else
  {
    v14 = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x6EB, v3, v15, v16, v19);
  }

  *a3 = Instance;
  return v18;
}

size_t FigRegistryAddSearchPathWithOptions(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  FigReentrantMutexLock(*(a1 + 48));
  if (CFSetContainsValue(*(a1 + 24), a2))
  {
    v6 = 0;
  }

  else
  {
    value = 0;
    v6 = registryCacheAddPath(a2, 0, v3, &value);
    if (!v6)
    {
      CFArrayAppendValue(*(a1 + 32), value);
      CFSetAddValue(*(a1 + 24), a2);
    }
  }

  FigReentrantMutexUnlock(*(a1 + 48));
  return v6;
}

size_t registryCacheAddPath(const void *a1, int a2, int a3, CFTypeRef **a4)
{
  FigThreadRunOnce(&stru_1EAF1B650, registryCacheInitOnce);
  if (!qword_1EAF1B648)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x66A, v4, v14, v15, v29);
    Value = 0;
    goto LABEL_22;
  }

  FigSimpleMutexLock(qword_1EAF1B648);
  Value = CFDictionaryGetValue(sRegistryCache, a1);
  if (!Value)
  {
    v17 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
    if (v17)
    {
      Value = v17;
      *(v17 + 4) = a3;
      *(v17 + 5) = 0;
      Mutable = CFDictionaryCreateMutable(qword_1EAF1B640, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *Value = Mutable;
      if (Mutable)
      {
        v19 = FigSimpleMutexCreate();
        Value[1] = v19;
        if (v19)
        {
          CFDictionaryAddValue(sRegistryCache, a1, Value);
          goto LABEL_3;
        }
      }

      v20 = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x39D, v4, v21, v22, v29);
      if (*Value)
      {
        CFRelease(*Value);
      }

      free(Value);
    }

    else
    {
      v23 = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x39D, v4, v24, v25, v29);
    }

    FigSimpleMutexUnlock(qword_1EAF1B648);
    Value = 0;
    result = 4294954603;
    goto LABEL_22;
  }

LABEL_3:
  FigSimpleMutexUnlock(qword_1EAF1B648);
  FigSimpleMutexLock(Value[1]);
  v10 = *(Value + 5);
  if (!a2 && v10)
  {
    goto LABEL_21;
  }

  if (v10)
  {
    CFDictionaryApplyFunction(*Value, registryCacheClearClass, 0);
  }

  BundlesFromDirectory = CFBundleCreateBundlesFromDirectory(qword_1EAF1B640, a1, @"bundle");
  if (BundlesFromDirectory)
  {
    v12 = BundlesFromDirectory;
    v30.length = CFArrayGetCount(BundlesFromDirectory);
    v30.location = 0;
    CFArrayApplyFunction(v12, v30, registryCacheProcessBundle, Value);
    CFRelease(v12);
  }

  else
  {
    v26 = fig_log_get_emitter("com.apple.coremedia", "");
    if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE6DuLL, "<<<< FigRegistry >>>>", 0x64C, v4, v27, v28, v29))
    {
      goto LABEL_21;
    }
  }

  ++*(Value + 5);
LABEL_21:
  FigSimpleMutexUnlock(Value[1]);
  result = 0;
LABEL_22:
  if (a4)
  {
    *a4 = Value;
  }

  return result;
}

size_t FigRegistryAddItem(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  cf = 0;
  Value = CFDictionaryGetValue(theDict, @"CMClassID");
  if (Value && CFEqual(Value, *(a1 + 16)))
  {
    v14 = CFGetAllocator(a1);
    v15 = figRegistryItemCreate(v14, 0, a3, theDict, &cf);
    if (v15)
    {
      v16 = cf;
      if (!cf)
      {
        return v15;
      }
    }

    else
    {
      FigReentrantMutexLock(*(a1 + 48));
      v16 = cf;
      CFSetAddValue(*(a1 + 40), cf);
      FigReentrantMutexUnlock(*(a1 + 48));
      if (!v16)
      {
        return v15;
      }
    }

    CFRelease(v16);
    return v15;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6EuLL, "<<<< FigRegistry >>>>", 0x734, v9, v19, v20, a9);
}

size_t figRegistryItemCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, void *a5)
{
  if (!(a2 | a3) || (v7 = theDict) == 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6EuLL, "<<<< FigRegistry >>>>", 0x257, v5, v13, v14, v45);
LABEL_6:
    *a5 = 0;
    return v15;
  }

  valuePtr = 0;
  if (CFDictionaryGetValue(theDict, @"CMClassImplementationID"))
  {
    v11 = 0;
    goto LABEL_14;
  }

  if (a2)
  {
    v16 = *(a2 + 8);
    if (v16)
    {
      v17 = CFBundleCopyBundleURL(v16);
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy(a1, v7);
  if (!MutableCopy)
  {
    figRegistryItemCreate_cold_2(&v50);
    v15 = v50;
    goto LABEL_6;
  }

  v11 = MutableCopy;
  v19 = FigAtomicIncrement32(figRegistryItemCreate_sNextMadeUpNumber);
  v20 = CFStringCreateWithFormat(a1, 0, @"anon-%d", v19);
  if (!v20)
  {
    figRegistryItemCreate_cold_1(a5, &v50);
    v15 = v50;
    goto LABEL_34;
  }

  v21 = v20;
  CFDictionarySetValue(v11, @"CMClassImplementationID", v20);
  CFRelease(v21);
  v7 = v11;
LABEL_14:
  Value = CFDictionaryGetValue(v7, @"CMClassID");
  cf = CFDictionaryGetValue(v7, @"CMClassImplementationName");
  v46 = CFDictionaryGetValue(v7, @"CMFactoryFunction");
  v23 = CFDictionaryGetValue(v7, @"CMClassImplementationVersion");
  v24 = CFDictionaryGetValue(v7, @"CMClassImplementationID");
  v47 = CFDictionaryGetValue(v7, @"CMMatchingInfo");
  if (!Value)
  {
    goto LABEL_32;
  }

  if (!cf)
  {
    goto LABEL_32;
  }

  if (!v23)
  {
    goto LABEL_32;
  }

  if (!v47)
  {
    goto LABEL_32;
  }

  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = a5;
  v26 = CFGetTypeID(Value);
  v27 = v26 == CFStringGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v28 = CFGetTypeID(cf);
  v27 = v28 == CFStringGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v29 = CFGetTypeID(v23);
  v27 = v29 == CFNumberGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v30 = CFGetTypeID(v47);
  v27 = v30 == CFDictionaryGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v31 = CFGetTypeID(v24);
  v27 = v31 == CFStringGetTypeID();
  a5 = v25;
  if (!v27 || !CFNumberGetValue(v23, kCFNumberSInt64Type, &valuePtr))
  {
    goto LABEL_32;
  }

  if (v46)
  {
    v32 = CFGetTypeID(v46);
    if (v32 != CFStringGetTypeID())
    {
LABEL_32:
      v33 = fig_log_get_emitter("com.apple.coremedia", "");
      v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFCE6EuLL, "<<<< FigRegistry >>>>", 0x28C, v5, v34, v35, v45);
      Instance = 0;
      goto LABEL_33;
    }
  }

  else if (!a3)
  {
    goto LABEL_32;
  }

  FigThreadRunOnce(&FigRegistryItemGetTypeID_registerOnce, registerFigRegistryItem);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = CFRetain(v7);
    Instance[3] = a2;
    if (a2)
    {
      FigAtomicIncrement32((a2 + 16));
      v38 = *(a2 + 8);
      if (v38)
      {
        CFRetain(v38);
      }
    }

    Instance[4] = CFRetain(Value);
    Instance[5] = CFRetain(cf);
    v39 = v46;
    if (v46)
    {
      v39 = CFRetain(v46);
    }

    Instance[6] = v39;
    v40 = CFRetain(v47);
    v15 = 0;
    v41 = valuePtr;
    Instance[7] = v40;
    Instance[8] = v41;
    Instance[9] = a3;
  }

  else
  {
    v42 = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x2A7, v5, v43, v44, v45);
  }

LABEL_33:
  *a5 = Instance;
  if (v11)
  {
LABEL_34:
    CFRelease(v11);
  }

  return v15;
}

uint64_t FigRegistryRemoveItem(uint64_t a1, const void *a2)
{
  FigReentrantMutexLock(*(a1 + 48));
  CFSetRemoveValue(*(a1 + 40), a2);
  FigReentrantMutexUnlock(*(a1 + 48));
  return 0;
}

uint64_t FigRegistryRescan(uint64_t a1)
{
  FigReentrantMutexLock(*(a1 + 48));
  CFSetApplyFunction(*(a1 + 24), figRegistryRescanDirectory, a1);
  FigReentrantMutexUnlock(*(a1 + 48));
  return 0;
}

size_t FigRegistryCopyFilteredItemList(CFTypeRef cf, uint64_t a2, uint64_t a3, CFMutableArrayRef *a4, _DWORD *a5)
{
  context[0] = cf;
  context[1] = a2;
  context[2] = a3;
  if (a4)
  {
    v9 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x7F0, v5, v12, v13, v23);
      Count = 0;
      goto LABEL_15;
    }
  }

  else
  {
    Mutable = 0;
  }

  FigReentrantMutexLock(*(cf + 6));
  Count = CFSetGetCount(*(cf + 5));
  if (a4)
  {
    CFDictionaryRemoveAllValues(*(cf + 7));
  }

  v16 = CFArrayGetCount(*(cf + 4));
  if (v16 >= 1)
  {
    v17 = v16;
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(cf + 4), i);
      FigSimpleMutexLock(ValueAtIndex[1]);
      v20 = *(ValueAtIndex + 5);
      if (a4)
      {
        Value = CFDictionaryGetValue(*ValueAtIndex, *(cf + 2));
        if (Value)
        {
          CFSetApplyFunction(Value, figRegistryAddResultItem, context);
        }
      }

      Count += v20;
      FigSimpleMutexUnlock(ValueAtIndex[1]);
    }
  }

  if (a4)
  {
    CFSetApplyFunction(*(cf + 5), figRegistryAddResultItem, context);
    CFDictionaryApplyFunction(*(cf + 7), figRegistryAddItemsToResult, Mutable);
    FigReentrantMutexUnlock(*(cf + 6));
    v14 = 0;
LABEL_15:
    *a4 = Mutable;
    Mutable = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  FigReentrantMutexUnlock(*(cf + 6));
  v14 = 0;
  if (a5)
  {
LABEL_16:
    *a5 = Count;
  }

LABEL_17:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

void figRegistryAddResultItem(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (!v3 || v3(*(a2 + 16), a1))
  {
    Value = CFDictionaryGetValue(*(a1 + 16), @"CMClassImplementationID");
    v6 = CFDictionaryGetValue(v4[7], Value);
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
          v11 = *(a1 + 64);
          v12 = ValueAtIndex[8];
          if (v11 > v12)
          {
            break;
          }

          if (v11 == v12)
          {
            goto LABEL_15;
          }

          if (Count == ++v9)
          {
            goto LABEL_16;
          }
        }

        CFArrayInsertValueAtIndex(v7, v9, a1);
      }

LABEL_15:
      if (v9 == Count)
      {
LABEL_16:

        CFArrayAppendValue(v7, a1);
      }
    }

    else
    {
      v13 = CFGetAllocator(v4);
      Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, a1);
      CFDictionarySetValue(v4[7], Value, Mutable);

      CFRelease(Mutable);
    }
  }
}

void figRegistryAddItemsToResult(int a1, const __CFArray *a2, CFMutableArrayRef theArray)
{
  v4.location = 0;
  v4.length = 1;
  CFArrayAppendArray(theArray, a2, v4);
}

double figRegistryItemInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

double figRegistryItemFinalize(void *a1)
{
  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = a1[3];
  if (v4)
  {
    if (!CFBundleIsExecutableLoaded(*(v4 + 8)) || CFGetRetainCount(*(v4 + 8)) >= 2)
    {
      CFRelease(*(v4 + 8));
    }

    if (!FigAtomicDecrement32((v4 + 16)))
    {
      FigSimpleMutexDestroy(*v4);
      free(v4);
    }
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    CFRelease(v8);
  }

  result = 0.0;
  v3[2] = 0u;
  v3[3] = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

uint64_t figRegistryItemEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), @"CMClassImplementationID");
  v5 = CFDictionaryGetValue(*(a2 + 16), @"CMClassImplementationID");
  result = CFEqual(Value, v5);
  if (result)
  {
    return CFEqual(*(a1 + 32), *(a2 + 32)) != 0;
  }

  return result;
}

CFHashCode figRegistryItemHash(uint64_t a1)
{
  v2 = CFHash(*(a1 + 32));
  v3 = CFHash(*(a1 + 40));
  v6 = *(a1 + 64);
  v7 = v6;
  if (v6 < 0)
  {
    v7 = -v6;
  }

  *v4.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  v11 = v10 + v8;
  v12 = fabs(v8);
  if (v8 <= 0.0)
  {
    v11 = v10;
  }

  v13 = v10 - v12;
  if (v8 >= 0.0)
  {
    v13 = v11;
  }

  return v3 ^ v2 ^ v13;
}

CFStringRef figRegistryItemCopyDebugDesc(CFTypeRef cf)
{
  v2 = *(cf + 3);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = CFBundleCopyBundleURL(*(v2 + 8));
    v5 = CFGetAllocator(cf);
    if (CFBundleIsExecutableLoaded(v3))
    {
      v6 = @" (loaded)";
    }

    else
    {
      v6 = &stru_1F0B78830;
    }

    if (v4)
    {
      v7 = CFURLGetString(v4);
      v8 = 0;
    }

    else
    {
      v7 = @"none";
      v8 = 1;
    }
  }

  else
  {
    v5 = CFGetAllocator(cf);
    v3 = 0;
    v4 = 0;
    v7 = @"none";
    v8 = 1;
    v6 = &stru_1F0B78830;
  }

  v9 = *(cf + 4);
  Value = CFDictionaryGetValue(*(cf + 2), @"CMClassImplementationID");
  v11 = *(cf + 6);
  if (!v11)
  {
    v11 = &stru_1F0B78830;
  }

  v12 = CFStringCreateWithFormat(v5, 0, @"<FigRegistryItem %p> {\n\tBundle: %p%@\n\tBundle URL: %@\n\tClass ID: %@\n\tClass Implementation ID: %@\n\tObject name: %@\n\tVersion: %lld\n\tFactory function name: %@\n\tFactory function: %p\n}", cf, v3, v6, v7, v9, Value, *(cf + 5), *(cf + 8), v11, *(cf + 9));
  if ((v8 & 1) == 0)
  {
    CFRelease(v4);
  }

  return v12;
}

double figRegistryInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

double figRegistryFinalize(void *a1)
{
  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    FigReentrantMutexDestroy(v8);
  }

  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  return result;
}

size_t registryCacheInitOnce()
{
  sRegistryCache = CFDictionaryCreateMutable(qword_1EAF1B640, 0, MEMORY[0x1E695E9D8], 0);
  if (sRegistryCache)
  {
    qword_1EAF1B648 = FigSimpleMutexCreate();
    if (qword_1EAF1B648)
    {
      return 0;
    }

    v2 = 881;
  }

  else
  {
    v2 = 876;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", v2, v0, v4, v5, v7);
  if (v1 && sRegistryCache)
  {
    CFRelease(sRegistryCache);
    sRegistryCache = 0;
  }

  return v1;
}

void registryCacheProcessBundle(__CFBundle *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(a1, @"CMClassImplementations");
  if (ValueForInfoDictionaryKey)
  {
    v7 = ValueForInfoDictionaryKey;
    v8 = CFGetTypeID(ValueForInfoDictionaryKey);
    if (v8 == CFArrayGetTypeID())
    {
      v34 = a2;
      v32 = v2;
      Count = CFArrayGetCount(v7);
      v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200404B2C534EuLL);
      *(v10 + 1) = a1;
      v10[20] = v5 & 1;
      *(v10 + 4) = 1;
      v33 = (v10 + 16);
      v36 = v10;
      *v10 = FigSimpleMutexCreate();
      if (Count >= 1)
      {
        v11 = 0;
        v35 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 == CFDictionaryGetTypeID())
          {
            break;
          }

LABEL_33:
          if (Count == ++v11)
          {
            goto LABEL_39;
          }
        }

        if ((((v5 >> 2) | (v5 >> 1) | (v5 >> 3)) & 1) == 0 || (Value = CFDictionaryGetValue(ValueAtIndex, @"CMMatchingInfo")) == 0 || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFDictionaryGetTypeID()))
        {
          MutableCopy = 0;
          goto LABEL_17;
        }

        v17 = CFGetAllocator(ValueAtIndex);
        MutableCopy = FigCFDictionaryCreateMutableCopy(v17, ValueAtIndex);
        v19 = CFGetAllocator(v15);
        v20 = FigCFDictionaryCreateMutableCopy(v19, v15);
        v21 = v20;
        if ((v5 & 2) != 0)
        {
          FigCFDictionarySetValue(v20, @"IsProWorkflowPlugin", v35);
          if ((v5 & 4) == 0)
          {
LABEL_11:
            if ((v5 & 8) == 0)
            {
LABEL_13:
              FigCFDictionarySetValue(MutableCopy, @"CMMatchingInfo", v21);
              if (v21)
              {
                CFRelease(v21);
              }

              ValueAtIndex = MutableCopy;
LABEL_17:
              cf = 0;
              v22 = CFDictionaryGetValue(ValueAtIndex, @"CMExecutableArchitectures");
              if (!v22 || (v23 = v22, v24 = CFGetTypeID(v22), v24 != CFArrayGetTypeID()) || !FigCFArrayContainsValue(v23, @"arm64e") && (!CFEqual(@"arm64e", @"arm64e") || !FigCFArrayContainsValue(v23, @"arm64")))
              {
LABEL_31:
                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                goto LABEL_33;
              }

              v25 = figRegistryItemCreate(qword_1EAF1B640, v36, 0, ValueAtIndex, &cf);
              v26 = cf;
              if (v25)
              {
                if (!cf)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                v27 = CFDictionaryGetValue(*v34, *(cf + 4));
                if (!v27)
                {
                  Mutable = CFSetCreateMutable(qword_1EAF1B640, 0, MEMORY[0x1E695E9F8]);
                  if (!Mutable)
                  {
                    emitter = fig_log_get_emitter("com.apple.coremedia", "");
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x562, v32, v30, v31, v32);
                    goto LABEL_30;
                  }

                  v27 = Mutable;
                  CFDictionaryAddValue(*v34, v26[4], Mutable);
                  CFRelease(v27);
                }

                CFSetAddValue(v27, v26);
              }

LABEL_30:
              CFRelease(v26);
              goto LABEL_31;
            }

LABEL_12:
            FigCFDictionarySetValue(v21, @"IsPreferredInternalPlugin", v35);
            goto LABEL_13;
          }
        }

        else if ((v5 & 4) == 0)
        {
          goto LABEL_11;
        }

        FigCFDictionarySetValue(v21, @"IsAppExclusivePlugin", v35);
        if ((v5 & 8) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

LABEL_39:
      if (!FigAtomicDecrement32(v33))
      {
        FigSimpleMutexDestroy(*v36);
        free(v36);
      }
    }
  }

  CFRelease(a1);
}

uint64_t FigEndpointGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_46 != -1)
  {
    FigEndpointGetClassID_cold_1();
  }

  return qword_1ED4CCC80;
}

size_t FigEndpointGetClassIDCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&FigEndpointGetClassIDCallback_sFigEndpointClassDesc, ClassID, 1, a1, v11, v12, v13, v14, a9);
}

uint64_t FigEndpointGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_46 != -1)
  {
    FigEndpointGetClassID_cold_1();
  }

  v3 = qword_1ED4CCC80;

  return CMBaseClassGetCFTypeID(v3);
}

uint64_t registerFigHALAudioConduitDevice()
{
  result = _CFRuntimeRegisterClass();
  sFigHALAudioConduitDeviceID = result;
  return result;
}

uint64_t FigHALAudioConduitDeviceSuspendAndInvalidate(uint64_t a1)
{
  FigSimpleMutexLock(*(a1 + 168));
  if (*(a1 + 129))
  {
    v6 = 0;
LABEL_7:
    FigSimpleMutexUnlock(*(a1 + 168));
    return v6;
  }

  *(a1 + 129) = 1;
  if (*(a1 + 128) != 1)
  {
    v6 = 4294954514;
    goto LABEL_7;
  }

  *(a1 + 128) = 0;
  FigSimpleMutexUnlock(*(a1 + 168));
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, @"Suspended", a1, 0, 0, v3, v4, v5, v8);
  return 0;
}

uint64_t figHALAudioConduitDeviceCallControlIODelegate(uint64_t a1, int a2, uint64_t a3)
{
  FigSimpleMutexLock(*(a1 + 168));
  if (*(a1 + 128) && !*(a1 + 129))
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        v6 = *(a1 + 112);
        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v6 = *(a1 + 104);
      if (v6)
      {
LABEL_13:
        v6(*(a1 + 120), a3);
      }
    }

    else
    {
      if (a2 == 1)
      {
        v6 = *(a1 + 88);
        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v6 = *(a1 + 96);
      if (v6)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v7 = *(a1 + 168);

  return FigSimpleMutexUnlock(v7);
}

double FigHALAudioConduitDeviceInit(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigHALAudioConduitDeviceFinalize(uint64_t a1)
{
  FigSimpleMutexDestroy(*(a1 + 80));
  FigSimpleMutexDestroy(*(a1 + 168));
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 152);
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *FigHALAudioConduitDeviceCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  CFStringAppendFormat(Mutable, 0, @"FigHALAudioConduitDevice");
  return Mutable;
}

uint64_t FigGeometryMappingGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigGeometryMappingTypeOnce != -1)
  {
    FigGeometryMappingGetTypeID_cold_1();
  }

  return sFigGeometryMappingID;
}

uint64_t RegisterFigGeometryMappingType()
{
  result = _CFRuntimeRegisterClass();
  sFigGeometryMappingID = result;
  return result;
}

uint64_t FigGeometryMappingGetSourceUnits(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      v6 = *(a1 + 72);
      *a2 = *(a1 + 56);
      a2[1] = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigGeometryMappingGetSourceUnits_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigGeometryMappingGetDestinationUnits(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      v6 = *(a1 + 104);
      *a2 = *(a1 + 88);
      a2[1] = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigGeometryMappingGetDestinationUnits_cold_1(&v7);
    return v7;
  }

  return result;
}

size_t FigGeometryMappingCreate(uint64_t a1, const void *a2, int a3, const void *a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigGeometryMappingCreate_cold_7(__src);
    return LODWORD(__src[0]);
  }

  if (!a4)
  {
    FigGeometryMappingCreate_cold_6(__src);
    return LODWORD(__src[0]);
  }

  if ((a3 - 3) <= 0xFFFFFFFD)
  {
    FigGeometryMappingCreate_cold_5(__src);
    return LODWORD(__src[0]);
  }

  if ((a5 - 3) <= 0xFFFFFFFD)
  {
    FigGeometryMappingCreate_cold_4(__src);
    return LODWORD(__src[0]);
  }

  if (!a6)
  {
    FigGeometryMappingCreate_cold_3(__src);
    return LODWORD(__src[0]);
  }

  *a6 = 0;
  if (sRegisterFigGeometryMappingTypeOnce != -1)
  {
    FigGeometryMappingGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC4DuLL, "<<<< FigGeometryMapping >>>>", 0x54E, v9, v17, v18, a9);
  }

  v20 = Instance;
  memset(__src, 0, sizeof(__src));
  *(Instance + 16) = 0x16D617070;
  *(Instance + 128) = CFRetain(a2);
  *(v20 + 136) = CFRetain(a4);
  *(v20 + 120) = 0;
  *(v20 + 24) = kFigGeometryAffineTransform1DIdentity;
  *(v20 + 40) = kFigGeometryAffineTransform1DIdentity;
  *(v20 + 56) = kFigGeometrySizeZero;
  *(v20 + 72) = unk_1971652B8;
  *(v20 + 88) = kFigGeometrySizeZero;
  *(v20 + 104) = unk_1971652B8;
  if (!_figUpdateCoordinateSpaceGeometryCache(a2, __src))
  {
    v51 = 1377;
LABEL_32:
    FigGeometryMappingCreate_cold_2(v51, v20, &v58);
    return v58;
  }

  memset(v65, 0, sizeof(v65));
  if (!_figUpdateCoordinateSpaceGeometryCache(a4, v65))
  {
    v51 = 1379;
    goto LABEL_32;
  }

  memcpy((v20 + 144), __src, 0x160uLL);
  memcpy((v20 + 496), v65, 0x160uLL);
  *(v20 + 848) = a3;
  *(v20 + 852) = a5;
  if (a3 == 1)
  {
    v75 = __src[12];
    v76 = __src[13];
    v77 = *&__src[14];
    v73 = *(&__src[14] + 12);
    v21 = DWORD2(__src[14]);
    v74 = DWORD1(__src[15]);
    v56 = *(&__src[15] + 1);
    if (a5 == 1)
    {
      v67 = v65[16];
      v68 = v65[17];
      v22 = v65[18];
      v23 = v65[19];
    }

    else
    {
      v67 = v65[0];
      v68 = v65[1];
      v22 = v65[2];
      v23 = v65[3];
    }

    v69 = v22;
    v70 = v23;
    _figApplyNormalizedCGRectToFigGeometryRect(&v67, &v58, *&__src[20], *(&__src[20] + 1), *&__src[21], *(&__src[21] + 1));
    v67 = v58;
    v68 = v59;
    *&v69 = v60;
    v25 = v61;
    v71 = v62;
    v72 = v63;
    v55 = v64;
    v24 = v56;
  }

  else
  {
    if (a5 == 1)
    {
      v67 = __src[16];
      v68 = __src[17];
      v69 = __src[18];
      v70 = __src[19];
      _figApplyNormalizedCGRectToFigGeometryRect(&v67, &v58, *&v65[20], *(&v65[20] + 1), *&v65[21], *(&v65[21] + 1));
      v75 = v58;
      v76 = v59;
      v77 = v60;
      v21 = v61;
      v73 = v62;
      v74 = v63;
      v24 = v64;
      v67 = v65[12];
      v68 = v65[13];
      *&v69 = *&v65[14];
      v25 = DWORD2(v65[14]);
      v72 = DWORD1(v65[15]);
      v71 = *(&v65[14] + 12);
      v26 = *(&v65[15] + 1);
    }

    else
    {
      v75 = __src[0];
      v76 = __src[1];
      v77 = *&__src[2];
      v73 = *(&__src[2] + 12);
      v21 = DWORD2(__src[2]);
      v74 = DWORD1(__src[3]);
      v24 = *(&__src[3] + 1);
      *&v69 = *&v65[2];
      v67 = v65[0];
      v68 = v65[1];
      v25 = DWORD2(v65[2]);
      v72 = DWORD1(v65[3]);
      v71 = *(&v65[2] + 12);
      v26 = *(&v65[3] + 1);
    }

    v55 = v26;
  }

  v57 = v24;
  v58 = v75;
  v59 = v76;
  v60 = v77;
  v61 = v21;
  v62 = v73;
  v63 = v74;
  v64 = v24;
  v27 = FigGeometryRectGetCGRect(&v58);
  v29 = v28;
  v53 = v28;
  v31 = v30;
  v33 = v32;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v61 = v25;
  v62 = v71;
  v63 = v72;
  v64 = v55;
  v54 = FigGeometryRectGetCGRect(&v58);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v80.origin.x = v27;
  v80.origin.y = v29;
  v52 = v31;
  v80.size.width = v31;
  v80.size.height = v33;
  MinX = CGRectGetMinX(v80);
  v81.origin.x = v27;
  v81.origin.y = v29;
  v81.size.width = v31;
  v41 = v33;
  v81.size.height = v33;
  MaxX = CGRectGetMaxX(v81);
  v82.origin.x = v54;
  v82.origin.y = v35;
  v82.size.width = v37;
  v82.size.height = v39;
  v43 = CGRectGetMinX(v82);
  v83.origin.x = v54;
  v83.origin.y = v35;
  v83.size.width = v37;
  v83.size.height = v39;
  v44 = (CGRectGetMaxX(v83) - v43) / (MaxX - MinX);
  *(v20 + 24) = v44;
  *(v20 + 32) = v43 - MinX * v44;
  v84.origin.x = v27;
  v84.origin.y = v53;
  v84.size.width = v52;
  v84.size.height = v41;
  v45 = v41;
  MinY = CGRectGetMinY(v84);
  v85.origin.x = v27;
  v85.origin.y = v53;
  v85.size.width = v52;
  v85.size.height = v45;
  MaxY = CGRectGetMaxY(v85);
  v86.origin.x = v54;
  v86.origin.y = v35;
  v86.size.width = v37;
  v86.size.height = v39;
  v48 = CGRectGetMinY(v86);
  v87.origin.x = v54;
  v87.origin.y = v35;
  v87.size.width = v37;
  v87.size.height = v39;
  v49 = CGRectGetMaxY(v87);
  result = 0;
  v50 = (v49 - v48) / (MaxY - MinY);
  *(v20 + 40) = v50;
  *(v20 + 48) = v48 - MinY * v50;
  *(v20 + 64) = v21;
  *(v20 + 80) = v57;
  *(v20 + 96) = v25;
  *(v20 + 112) = v55;
  *a6 = v20;
  return result;
}