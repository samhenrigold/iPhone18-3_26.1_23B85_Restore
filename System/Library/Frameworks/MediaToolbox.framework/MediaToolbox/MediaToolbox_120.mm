uint64_t CreateSampleGeneratorForDolby(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x1E0uLL, 0x102004048EB5213uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = DolbyPushForType;
  a1[8] = DolbyResyncForType;
  a1[7] = DolbyFlushForType;
  a1[9] = DolbyDestroyForType;
  a1[10] = DolbyReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t DolbyFlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 48);
  presentationTimeStamp = *(v1 + 64);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, (v1 + 96), &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 36);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 36);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 88), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  v10 = *(v1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 56) = 0;
  *(v1 + 44) = 0;
  *(v1 + 36) = 0;
  return v9;
}

uint64_t H264ParamSetAddSPS(void *a1, CMBlockBufferRef theBuffer, size_t offset, size_t a4, void *a5, _BYTE *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v23 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v13 = lengthAtOffsetOut;
  if (lengthAtOffsetOut < a4)
  {
    dataPointerOut = malloc_type_malloc(a4, 0xF908CF31uLL);
    DataPointer = CMBlockBufferCopyDataBytes(theBuffer, offset, a4, dataPointerOut);
    if (DataPointer)
    {
      return DataPointer;
    }
  }

  SPSSequenceID = FigH264Bridge_GetSPSSequenceID();
  if (SPSSequenceID)
  {
    v17 = SPSSequenceID;
    goto LABEL_18;
  }

  v15 = a1;
  do
  {
    v15 = *v15;
    if (!v15)
    {
      v15 = H264AddParamSetToList(a1, dataPointerOut, a4, v23, 0);
      if (v15)
      {
        if (a6)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

LABEL_29:
      v17 = 4294954510;
      goto LABEL_18;
    }
  }

  while (*(v15 + 6) != v23);
  if (v15[2] == a4)
  {
    v16 = v15[1];
    if (!memcmp(dataPointerOut, v16, a4))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = v15[1];
  }

  if (v15 + 4 != v16)
  {
    free(v16);
    v15[1] = 0;
  }

  OUTLINED_FUNCTION_9_5();
  v20 = malloc_type_malloc(a4, v19);
  v15[1] = v20;
  if (!v20)
  {
    goto LABEL_29;
  }

  memcpy(v20, dataPointerOut, a4);
  v15[2] = a4;
  if (!a6)
  {
    goto LABEL_16;
  }

LABEL_15:
  *a6 = 1;
LABEL_16:
  v17 = 0;
  if (a5)
  {
    *a5 = v15;
  }

LABEL_18:
  if (v13 < a4)
  {
    free(dataPointerOut);
  }

  return v17;
}

uint64_t H264ParamSetAddPPS(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, size_t a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  dataPointerOut = 0;
  v25 = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v11 = lengthAtOffsetOut;
  if (lengthAtOffsetOut >= a4)
  {
    goto LABEL_7;
  }

  v12 = malloc_type_malloc(a4, 0xD3A72E7CuLL);
  dataPointerOut = v12;
  if (!v12)
  {
    return 4294954510;
  }

  DataPointer = CMBlockBufferCopyDataBytes(theBuffer, offset, a4, v12);
  if (DataPointer)
  {
    return DataPointer;
  }

LABEL_7:
  PPSSequenceID = FigH264Bridge_GetPPSSequenceID();
  if (PPSSequenceID)
  {
    v19 = PPSSequenceID;
  }

  else
  {
    v14 = a1 + 16;
    v15 = (a1 + 16);
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (*(v15 + 6) == v25)
      {
        if (*(v15 + 7) == HIDWORD(v25) && v15[2] == a4 && !memcmp(v15[1], dataPointerOut, a4))
        {
          v19 = 0;
          goto LABEL_25;
        }

        v16 = v15[1];
        if (v15 + 4 != v16)
        {
          free(v16);
        }

        OUTLINED_FUNCTION_9_5();
        v18 = malloc_type_malloc(a4, v17);
        v15[1] = v18;
        if (!v18)
        {
          v19 = 4294954510;
          goto LABEL_25;
        }

        memcpy(v18, dataPointerOut, a4);
        v19 = 0;
        v15[2] = a4;
        v20 = 1;
        if (!a5)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    v21 = H264AddParamSetToList(v14, dataPointerOut, a4, v25, SHIDWORD(v25));
    v20 = v21 != 0;
    if (v21)
    {
      v19 = 0;
    }

    else
    {
      v19 = 4294954510;
    }

    if (!a5)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v20)
    {
      *a5 = 1;
    }
  }

LABEL_25:
  if (v11 < a4)
  {
    free(dataPointerOut);
  }

  return v19;
}

uint64_t CreateSampleGeneratorForH264(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10E0040FC223A1CuLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  *(v3 + 1) = v3;
  *(v3 + 3) = v3 + 16;
  v5 = MEMORY[0x1E6960CC0];
  *(v3 + 164) = *MEMORY[0x1E6960CC0];
  *(v3 + 180) = *(v5 + 16);
  a1[6] = H264PushForType;
  a1[8] = H264ResyncForType;
  a1[7] = H264FlushForType;
  a1[9] = H264DestroyForType;
  a1[10] = H264ReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t H264PushForType(unsigned int *a1, OpaqueCMBlockBuffer *cf, __int128 *a3, __int128 *a4, unsigned int a5, uint64_t a6, uint64_t a7, CFDictionaryRef a8, uint64_t a9, unsigned __int8 *a10)
{
  v16 = cf;
  v17 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 11);
  if (cf)
  {
    CFRetain(cf);
  }

  v93 = 0;
  v19 = (*(v18 + 136) & 0x600);
  v90 = a6;
  if ((a5 & 2) == 0 && (*(v18 + 136) & 0x600) == (a5 & 0x600))
  {
LABEL_24:
    inited = OUTLINED_FUNCTION_1_97();
    v36 = 1;
    goto LABEL_25;
  }

  v93 = 0;
  v82 = a4;
  if (a7 < 1)
  {
    a8 = (v17 + 10);
    v10 = *(v17 + 5);
    if (!v10)
    {
      v41 = 0;
      goto LABEL_43;
    }

    v85 = a5 & 0x600;
    v33 = 0;
LABEL_21:
    v34 = 0;
    if (!v33 && !v93 && v19 == v85)
    {
      goto LABEL_24;
    }

LABEL_51:
    v99 = 0;
    *keys = 0u;
    v98 = 0u;
    v96 = 0;
    *values = 0u;
    v95 = 0u;
    v91 = 24;
    valuePtr = 1;
    v48 = *v17;
    if (v48 != 2053207651)
    {
      if (v48 == 1748121140)
      {
        v48 = 1635148593;
      }

      else if (v48 != 1700886115)
      {
        inited = OUTLINED_FUNCTION_1_97();
        v41 = 4294954326;
        goto LABEL_37;
      }
    }

    if ((v34 & 1) == 0)
    {
      CFRelease(v10);
      *a8 = 0;
    }

    v50 = v48 == 1700886115 || v48 == 1902212707 || v48 == 2053207651;
    v51 = v17;
    if (v50 || v48 == 2053202739)
    {
      inited = PKDCreateTransportStreamEncryptionInitData(1986618469, v48);
      v10 = inited;
      if (!inited)
      {
        goto LABEL_115;
      }

      keys[0] = *MEMORY[0x1E69627C8];
      values[0] = inited;
      v75 = 1;
    }

    else
    {
      v10 = 0;
      v75 = 0;
    }

    if (v85)
    {
      v53 = MEMORY[0x1E6965E68];
      *(keys | (8 * v75)) = *MEMORY[0x1E6965E58];
      v54 = MEMORY[0x1E6965E60];
      if ((a5 & 0x200) == 0)
      {
        v54 = v53;
      }

      *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v75++ & 1))) = *v54;
      valuePtr = 2;
    }

    inited = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (inited)
    {
      keys[v75] = *MEMORY[0x1E6965E50];
      v55 = v75 + 1;
      values[v75] = inited;
      cfc = inited;
      if (valuePtr == 2)
      {
        keys[v55] = *MEMORY[0x1E6962770];
        values[v55] = inited;
        v55 = v75 + 2;
      }

      v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v91);
      v19 = v56;
      if (v56)
      {
        keys[v55] = *MEMORY[0x1E6960028];
        values[v55] = v56;
        a8 = CFDictionaryCreate(*(v51 + 1), keys, values, v55 + 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        if (a8)
        {
          v57 = *v18;
          inited = cfc;
          if (*v18)
          {
            v58 = 0;
            v59 = 0;
            do
            {
              v60 = v57[2];
              v58 += v60;
              if (v60)
              {
                ++v59;
              }

              v57 = *v57;
            }

            while (v57);
          }

          else
          {
            v59 = 0;
            v58 = 0;
          }

          v61 = *(v18 + 16);
          if (v61)
          {
            v84 = v51;
            v62 = 0;
            v63 = 0;
            do
            {
              v64 = v61[2];
              v62 += v64;
              if (v64)
              {
                ++v63;
              }

              v61 = *v61;
            }

            while (v61);
            v41 = 4294954510;
            if (!v58 || !v62)
            {
              goto LABEL_37;
            }

            v81 = a5;
            v65 = v16;
            v66 = (v58 + v62 + 2 * (v63 + v59) + 7);
            OUTLINED_FUNCTION_9_5();
            v68 = malloc_type_malloc(v66, v67);
            if (v68)
            {
              v69 = v68;
              v70 = *v18;
              *v68 = 1;
              v68[1] = *(v70[1] + 1);
              v68[2] = *(v70[1] + 2);
              v68[3] = *(v70[1] + 3);
              v68[4] = -1;
              v68[5] = v59 | 0xE0;
              v71 = *v18;
              if (*v18)
              {
                v72 = 6;
                do
                {
                  v73 = v71[2];
                  if (v73)
                  {
                    v74 = &v69[v72];
                    *v74 = BYTE1(v73);
                    v69[v72 + 1] = v71[2];
                    memcpy(v74 + 2, v71[1], v71[2]);
                    v72 += *(v71 + 4) + 2;
                  }

                  v71 = *v71;
                }

                while (v71);
              }

              else
              {
                v72 = 6;
              }

              v69[v72] = v63;
              v76 = *(v18 + 16);
              if (v76)
              {
                v77 = v72 + 1;
                do
                {
                  v78 = v76[2];
                  if (v78)
                  {
                    v79 = &v69[v77];
                    *v79 = BYTE1(v78);
                    v69[v77 + 1] = v76[2];
                    memcpy(v79 + 2, v76[1], v76[2]);
                    v77 += *(v76 + 4) + 2;
                  }

                  v76 = *v76;
                }

                while (v76);
              }

              v17 = v84;
              v41 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom();
              free(v69);
              if (!v41)
              {
                v36 = 0;
                v16 = v65;
                a4 = v82;
                a5 = v81;
                inited = cfc;
LABEL_25:
                if (!*(v17 + 5))
                {
                  v41 = 0;
                  goto LABEL_37;
                }

                cfb = v10;
                v37 = v19;
                v38 = a8;
                v39 = inited;
                if (((a5 >> 1) & 1) == 0)
                {
                  a5 &= ~0x10u;
                }

                *keys = *a4;
                *&v98 = *(a4 + 2);
                v40 = PushH264Frame(v17, keys, 1);
                if (v36)
                {
                  v41 = v40;
                  v42 = v17;
                }

                else
                {
                  v42 = v17;
                  v41 = (*(v17 + 2))(v17, *(v17 + 4), *(v17 + 5));
                  if (v41)
                  {
LABEL_36:
                    inited = v39;
                    a8 = v38;
                    v19 = v37;
                    v10 = cfb;
LABEL_37:
                    if (inited)
                    {
                      CFRelease(inited);
                    }

                    if (v19)
                    {
                      CFRelease(v19);
                    }

                    if (a8)
                    {
                      CFRelease(a8);
                    }

                    goto LABEL_43;
                  }
                }

                v43 = v16;
                if (v16)
                {
                  v43 = CFRetain(v16);
                }

                *(v18 + 48) = v43;
                v44 = *(v42 + 5);
                if (v44)
                {
                  v44 = CFRetain(v44);
                }

                *(v18 + 56) = v44;
                v45 = *a3;
                *(v18 + 80) = *(a3 + 2);
                *(v18 + 64) = v45;
                v46 = *a4;
                *(v18 + 104) = *(a4 + 2);
                *(v18 + 88) = v46;
                *(v18 + 136) = a5;
                *(v18 + 144) = v90;
                goto LABEL_36;
              }
            }

            else
            {
              v41 = 4294954510;
            }

            v16 = v65;
LABEL_111:
            inited = cfc;
            goto LABEL_37;
          }

LABEL_116:
          v41 = 4294954510;
          goto LABEL_37;
        }
      }

      else
      {
        a8 = 0;
      }

      v41 = 4294954510;
      goto LABEL_111;
    }

LABEL_115:
    a8 = 0;
    v19 = 0;
    goto LABEL_116;
  }

  v85 = a5 & 0x600;
  v80 = a5;
  v83 = v17;
  v20 = v16;
  cfa = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    v26 = *a10++;
    v25 = v26;
    if (v26 == 8)
    {
      OUTLINED_FUNCTION_2_94();
      SPSWidthAndHeight = H264ParamSetAddPPS(v18, v20, v31, v32, &v93);
      if (SPSWidthAndHeight)
      {
        goto LABEL_113;
      }

      cfa = 1;
    }

    else if (v25 == 7)
    {
      keys[0] = 0;
      LOBYTE(values[0]) = 0;
      OUTLINED_FUNCTION_2_94();
      SPSWidthAndHeight = H264ParamSetAddSPS(v18, v20, v27, v28, keys, values);
      if (SPSWidthAndHeight || (v30 = LOBYTE(values[0]), LOBYTE(values[0])) && (SPSWidthAndHeight = FigH264Bridge_GetSPSWidthAndHeight(), SPSWidthAndHeight))
      {
LABEL_113:
        v41 = SPSWidthAndHeight;
        v10 = 0;
        v16 = v20;
        goto LABEL_43;
      }

      v22 |= v30;
      v21 = 1;
    }

    a9 += 8;
    a8 = (a8 + 8);
    --a7;
  }

  while (a7);
  v33 = v22 != 0;
  v17 = v83;
  a8 = (v83 + 10);
  v10 = *(v83 + 5);
  if (v10)
  {
    v16 = v20;
    a4 = v82;
    a5 = v80;
    goto LABEL_21;
  }

  v41 = 0;
  v16 = v20;
  if (cfa)
  {
    a5 = v80;
    if (v21)
    {
      v34 = 1;
      goto LABEL_51;
    }
  }

LABEL_43:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v41;
}

uint64_t CreateSampleGeneratorForMP3(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x1D8uLL, 0x102004091A1CF87uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = MP3PushForType;
  a1[8] = MP3ResyncForType;
  a1[7] = MP3FlushForType;
  a1[9] = MP3DestroyForType;
  a1[10] = MP3ReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t MP3PushForType(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 88);
  returnedPointerOut = 0;
  if ((a5 & 1) == 0 || (appended = MP3FlushForType(a1), !appended))
  {
    appended = CMBlockBufferAccessDataBytes(theBuffer, 0, 4uLL, temporaryBlock, &returnedPointerOut);
    if (!appended)
    {
      FormatID = MP3GetFormatID(returnedPointerOut);
      ChannelLayout = MP3GetChannelLayout(returnedPointerOut);
      SampleFrequency = MP3GetSampleFrequency(returnedPointerOut);
      if (!SampleFrequency)
      {
        v32 = 0;
        goto LABEL_36;
      }

      v16 = SampleFrequency;
      if (*(a1 + 40))
      {
        if (FormatID == *(v11 + 20) && ChannelLayout == *(v11 + 16) && SampleFrequency == *v11)
        {
          goto LABEL_8;
        }
      }

      v36 = a6;
      MP3FlushForType(a1);
      SamplesPerFrame = MP3GetSamplesPerFrame(returnedPointerOut);
      *(v11 + 12) = MP3GetBitRate(returnedPointerOut);
      memset(&layout.mChannelBitmap, 0, 28);
      memset(&asbd.mFormatID, 0, 32);
      layout.mChannelLayoutTag = ChannelLayout;
      asbd.mSampleRate = v16;
      asbd.mFormatID = FormatID;
      asbd.mFramesPerPacket = SamplesPerFrame;
      asbd.mChannelsPerFrame = ChannelLayout;
      v26 = *(a1 + 40);
      if (v26)
      {
        CFRelease(v26);
        *(a1 + 40) = 0;
      }

      Empty = CMAudioFormatDescriptionCreate(*(a1 + 8), &asbd, 0x20uLL, &layout, 0, 0, 0, (a1 + 40));
      if (Empty)
      {
        return Empty;
      }

      *(v11 + 16) = ChannelLayout;
      *(v11 + 20) = FormatID;
      *v11 = v16;
      v27 = (v16 >> 1) / SamplesPerFrame;
      if (v27 >= 0x18)
      {
        v27 = 24;
      }

      *(v11 + 8) = v27;
      v28 = *(a1 + 16);
      a6 = v36;
      if (!v28 || (appended = v28(a1, *(a1 + 32), *(a1 + 40)), !appended))
      {
LABEL_8:
        DataLength = CMBlockBufferGetDataLength(theBuffer);
        v18 = *(a1 + 96);
        if (!v18)
        {
          v18 = *(v11 + 8);
        }

        if (v18 == 1)
        {
          if (theBuffer)
          {
            v19 = CFRetain(theBuffer);
          }

          else
          {
            v19 = 0;
          }

          v24 = 0;
          v23 = 0;
          *(v11 + 32) = v19;
          *(v11 + 40) = 0;
          *(v11 + 48) = 0;
          v29 = *(a3 + 16);
          *(v11 + 56) = *a3;
          *(v11 + 24) = a5;
          *(v11 + 72) = v29;
          *(v11 + 80) = a6;
        }

        else
        {
          v20 = *(v11 + 32);
          if (!v20)
          {
            Empty = CMBlockBufferCreateEmpty(*(a1 + 8), *(v11 + 8), 0, (v11 + 32));
            if (Empty)
            {
              return Empty;
            }

            *(v11 + 40) = 0;
            *(v11 + 48) = 0;
            v22 = *(a3 + 16);
            *(v11 + 56) = *a3;
            *(v11 + 24) = a5;
            *(v11 + 72) = v22;
            *(v11 + 80) = a6;
            v20 = *(v11 + 32);
          }

          appended = CMBlockBufferAppendBufferReference(v20, theBuffer, 0, DataLength, 0);
          if (appended)
          {
            goto LABEL_32;
          }

          v23 = *(v11 + 40);
          v24 = *(v11 + 48);
        }

        v30 = v11 + 16 * v23;
        *(v30 + 88) = v24;
        *(v30 + 96) = 1;
        *(v30 + 100) = DataLength;
        v31 = v23 + 1;
        *(v11 + 40) = v31;
        *(v11 + 48) = v24 + DataLength;
        if (v18 > v31)
        {
          return 0;
        }

        return MP3FlushForType(a1);
      }
    }
  }

LABEL_32:
  v32 = appended;
LABEL_36:
  v34 = *(a1 + 88);
  v35 = *(v34 + 32);
  if (v35)
  {
    CFRelease(v35);
  }

  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  return v32;
}

uint64_t MP3FlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 40);
  presentationTimeStamp = *(v1 + 56);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, (v1 + 88), &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 24);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 24);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 80), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return v9;
}

uint64_t FigAirPlayURLProcessorUtilHandleStreamingKeyResponse(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!*DerivedStorage)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v5 = *(DerivedStorage + 120);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigAirPlayURLProcessorUtilHandleStreamingKeyResponse_block_invoke;
    block[3] = &__block_descriptor_tmp_57;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_async(v5, block);
  }

  return FigReadWriteLockUnlockForRead();
}

void __FigAirPlayURLProcessorUtilHandleStreamingKeyResponse_block_invoke(uint64_t a1)
{
  dsema[16] = *MEMORY[0x1E69E9840];
  FigReadWriteLockLockForRead();
  if (!**(a1 + 32))
  {
    FigCFDictionaryGetValueIfPresent();
    if (FigCFEqual())
    {
      FigCFDictionaryGetValueIfPresent();
      if (dword_1EAF17368)
      {
        OUTLINED_FUNCTION_147();
        v9 = OUTLINED_FUNCTION_126(qword_1EAF17360, v2, v3, v4, v5, v6, v7, v8, v16, v17, v19, *v20, v20[2], v20[3], v20[4]);
        if (os_log_type_enabled(v9, type))
        {
          v10 = v22;
        }

        else
        {
          v10 = v22 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v11 = *(a1 + 48);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v13 = (DerivedStorage + 128);
          v24 = "FigAirPlayURLProcessorUtilHandleStreamingKeyResponse_block_invoke";
          v25 = 2048;
          v23 = 136315906;
          if (!DerivedStorage)
          {
            v13 = "";
          }

          v26 = v11;
          v27 = 2082;
          v28 = v13;
          v29 = 2112;
          v30 = 0;
          LODWORD(v18) = 42;
          _os_log_send_and_compose_impl(v10, 0, dsema, 128, &dword_1962D5000, v9, type, "<<<< FigAirPlayURLProcessor >>>> %s: [%p] %{public}s Matching RequestID %@ not found", &v23, v18);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      dsema[0] = 0;
      FigSimpleMutexLock();
      FigCFDictionaryGetValueIfPresent();
      FigCFDictionaryGetValueIfPresent();
      FigSimpleMutexUnlock();
    }
  }

  FigReadWriteLockUnlockForRead();
  v14 = *(a1 + 48);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t urlProcessor_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    FigReadWriteLockLockForWrite();
    FigReadWriteLockUnlockForWrite();
  }

  return 0;
}

void urlProcessor_Finalize(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17368 >= 2)
  {
    OUTLINED_FUNCTION_147();
    v10 = OUTLINED_FUNCTION_126(qword_1EAF17360, v3, v4, v5, v6, v7, v8, v9, v25, v26, v27, *v28, v28[2], v28[3], v28[4]);
    if (os_log_type_enabled(v10, type))
    {
      v11 = v30;
    }

    else
    {
      v11 = v30 & 0xFFFFFFFE;
    }

    if (v11)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_39();
      _os_log_send_and_compose_impl(v11, 0, v31, 128, &dword_1962D5000, v10, type, "<<<< FigAirPlayURLProcessor >>>> %s: [%p] %{public}s called");
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  urlProcessor_Invalidate(a1);
  FigCFDictionaryApplyBlock();
  v12 = DerivedStorage[11];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[11] = 0;
  }

  v13 = DerivedStorage[13];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[13] = 0;
  }

  FigCFDictionaryRemoveAllValues();
  v14 = DerivedStorage[8];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[8] = 0;
  }

  FigCFDictionaryRemoveAllValues();
  v15 = DerivedStorage[9];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[9] = 0;
  }

  v16 = DerivedStorage[18];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[18] = 0;
  }

  v17 = DerivedStorage[1];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[1] = 0;
  }

  while (1)
  {
    v18 = DerivedStorage[6];
    if (!v18)
    {
      break;
    }

    DerivedStorage[6] = *v18;
    urlProcessor_freeCustomURLRequestListEntry(a1, v18);
  }

  while (1)
  {
    v19 = DerivedStorage[7];
    if (!v19)
    {
      break;
    }

    DerivedStorage[7] = *v19;
    urlProcessor_freeContentKeyRequestListEntry(a1, v19);
  }

  if (DerivedStorage[5])
  {
    FigReadWriteLockDestroy();
    DerivedStorage[5] = 0;
  }

  v20 = DerivedStorage[15];
  if (v20)
  {
    dispatch_release(v20);
    DerivedStorage[15] = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v21 = DerivedStorage[4];
  if (v21)
  {
    CFRelease(v21);
    DerivedStorage[4] = 0;
  }

  v22 = DerivedStorage[3];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[3] = 0;
  }

  v23 = DerivedStorage[19];
  if (v23)
  {
    CFRelease(v23);
    DerivedStorage[19] = 0;
  }

  v24 = DerivedStorage[20];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[20] = 0;
  }
}

uint64_t urlProcessor_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      if (!*DerivedStorage)
      {
        if (CFEqual(a2, @"shouldProvideFPSSecureStop"))
        {
          v9 = MEMORY[0x1E695E4D0];
          if (!v8[96])
          {
            v9 = MEMORY[0x1E695E4C0];
          }

          v10 = *v9;
          if (*v9)
          {
            v10 = CFRetain(v10);
          }

          *a4 = v10;
        }
      }
    }
  }

  return 0;
}

void urlProcessor_handleCreateKeyRequest(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigReadWriteLockLockForRead();
    if (!*DerivedStorage)
    {
      Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
      if (Int64IfPresent | FigCFDictionaryGetInt64IfPresent())
      {
        if (*(DerivedStorage + 24))
        {
          v10 = (CMBaseObjectGetDerivedStorage() + 56);
          while (1)
          {
            v10 = *v10;
            if (!v10)
            {
              break;
            }

            if (!v10[1])
            {
              OUTLINED_FUNCTION_496();
              APCustomURLResponseFromContentKeyResponse = urlProcessor_createAPCustomURLResponseFromContentKeyResponse(v11, v12, v13, v14);
              goto LABEL_13;
            }
          }
        }

        else
        {
          v16 = (CMBaseObjectGetDerivedStorage() + 48);
          while (1)
          {
            v16 = *v16;
            if (!v16)
            {
              break;
            }

            if (!v16[1])
            {
              OUTLINED_FUNCTION_496();
              APCustomURLResponseFromContentKeyResponse = urlProcessor_createAPCustomURLResponseFromLocalCustomURLResponse(v17, v18, v19, v20);
LABEL_13:
              v21 = APCustomURLResponseFromContentKeyResponse;
              if (!APCustomURLResponseFromContentKeyResponse)
              {
                v27 = 0;
                v25 = 0;
                goto LABEL_20;
              }

              v22 = *MEMORY[0x1E695E480];
              v23 = 1;
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v25 = Mutable;
              if (Mutable)
              {
                CFDictionaryAddValue(Mutable, @"CSKRO_RemoteContext", 0);
                FigCFDictionarySetValueFromKeyInDict();
                v26 = MEMORY[0x1E695E4D0];
                v27 = CFDictionaryCreateMutable(v22, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v27)
                {
                  goto LABEL_20;
                }

                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
                CFDictionaryAddValue(v27, *MEMORY[0x1E6961CB8], v21);
                CFDictionaryAddValue(v27, *MEMORY[0x1E6961C60], v25);
                CFDictionaryAddValue(v27, @"IsContentKeyRequest", *v26);
                FigSimpleMutexLock();
                ++*(DerivedStorage + 112);
                UInt64 = FigCFNumberCreateUInt64();
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                if (UInt64)
                {
                  CFRelease(UInt64);
                }

                FigSimpleMutexUnlock();
                urlProcessor_postNotification(a2, @"StreamingKeyRequest", v27);
                v23 = 0;
              }

              else
              {
                v27 = 0;
              }

              goto LABEL_21;
            }
          }
        }
      }
    }
  }

  v27 = 0;
  v25 = 0;
  v21 = 0;
LABEL_20:
  v23 = 1;
LABEL_21:
  FigReadWriteLockUnlockForRead();
  if (a4 && v23)
  {
    FigAirPlayCryptorUtilHandleStreamingKeyResponse(a4, 0);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

CFMutableDictionaryRef urlProcessor_createAPCustomURLResponseFromContentKeyResponse(uint64_t a1, uint64_t a2, uint64_t a3, __CFError *Code)
{
  CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = 0;
  v8 = FigCFHTTPCreateURLString(*(a2 + 24));
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (Code)
    {
      CFErrorGetCode(Code);
    }

    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
    FigCFDictionarySetCFIndex();
    if (a3)
    {
      v23 = 0;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(a3, *MEMORY[0x1E6961138], v10, &v24);
      }

      if (!FigCFEqual())
      {
        cf[0] = 0;
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v14 = OUTLINED_FUNCTION_797();
          v15(v14);
        }

        FigCFDictionarySetValue();
        v13 = 0;
LABEL_14:
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v16 = OUTLINED_FUNCTION_797();
          v17(v16);
        }

        FigCFDictionarySetValue();
        CFRelease(v9);
        if (!v13)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay(a1, Mutable, a3, &v25);
      v13 = v25;
      if (v25)
      {
        FigCFDictionarySetValue();
        goto LABEL_14;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
    }
  }

  v13 = v9;
LABEL_21:
  CFRelease(v13);
LABEL_22:
  if (v24)
  {
    CFRelease(v24);
  }

  return Mutable;
}

CFMutableDictionaryRef urlProcessor_createAPCustomURLResponseFromLocalCustomURLResponse(uint64_t a1, void *a2, uint64_t a3, __CFError *a4)
{
  v34 = 0;
  cf = 0;
  Code = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  blockBufferOut = 0;
  v27 = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (!FigCustomURLRequestInfoCopyURL())
    {
      v10 = FigCFHTTPCreateURLString(cf);
      if (v10)
      {
        v11 = v10;
        if (a3)
        {
          FigCustomURLResponseInfoCopyHTTPHeaders();
          FigCustomURLResponseInfoCopyContentRenewalDate();
          v12 = FigCustomURLResponseInfoCopyUniversalTypeIdentifier();
          if (v12 != -17360 && v12)
          {
            OUTLINED_FUNCTION_243();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_27;
          }

          if (!a4)
          {
            FigCustomURLResponseInfoGetHTTPStatusCode();
LABEL_11:
            v13 = a2[5];
            if (!v13 || !CMBlockBufferCreateContiguous(v8, v13, v8, 0, 0, 0, 0, &blockBufferOut) && (OUTLINED_FUNCTION_496(), !FigCreateCFDataWithBlockBufferNoCopy()))
            {
              FigCFDictionarySetInt64();
              FigCFDictionarySetValue();
              FigCFDictionarySetCFIndex();
              if (!FigCFEqual())
              {
                FigCFDictionarySetValue();
                v16 = 0;
                goto LABEL_22;
              }

              v14 = a2[6];
              if (v14)
              {
                v15 = CFRetain(v14);
                if (v15)
                {
                  v16 = v15;
                  v17 = v34;
                  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v18)
                  {
                    v18(v16, *MEMORY[0x1E69610F0], v17);
                  }

                  urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay(a1, Mutable, v16, &v27);
                  if (v27)
                  {
                    FigCFDictionarySetValue();
LABEL_22:
                    FigCFDictionarySetValue();
                    FigCFDictionarySetValue();
                    if (v30)
                    {
                      v19 = MEMORY[0x19A8CCD90]();
                      Current = CFAbsoluteTimeGetCurrent();
                      memset(&v26, 0, sizeof(v26));
                      CMTimeMakeWithSeconds(&v26, v19 - Current, 1000);
                      FigCFDictionarySetCMTime();
                    }

                    v21 = Mutable;
                    Mutable = 0;
                    goto LABEL_28;
                  }

                  OUTLINED_FUNCTION_243();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
                  v21 = 0;
LABEL_28:
                  CFRelease(v11);
                  goto LABEL_29;
                }
              }

              OUTLINED_FUNCTION_243();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

LABEL_27:
            v21 = 0;
            v16 = 0;
            goto LABEL_28;
          }
        }

        else if (!a4)
        {
          goto LABEL_11;
        }

        Code = CFErrorGetCode(a4);
        goto LABEL_11;
      }
    }
  }

  v16 = 0;
  v21 = 0;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v21;
}

_BYTE *urlProcessor_postNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = result;
    if (!*result)
    {
      FigReadWriteLockLockForRead();
      if (!*v5)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      return FigReadWriteLockUnlockForRead();
    }
  }

  return result;
}

uint64_t urlp_FigCFDictionaryGetBooleanIfPresent(uint64_t result, const void *a2, _BYTE *a3)
{
  value = 0;
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 == CFDictionaryGetTypeID())
    {
      if (a2)
      {
        if (a3)
        {
          result = CFDictionaryGetValueIfPresent(v6, a2, &value);
          if (!result)
          {
            return result;
          }

          TypeID = CFBooleanGetTypeID();
          if (TypeID == CFGetTypeID(value))
          {
            *a3 = CFBooleanGetValue(value);
            return 1;
          }

          v9 = CFNumberGetTypeID();
          if (v9 == CFGetTypeID(value) && !CFNumberIsFloatType(value))
          {
            v10 = 0;
            CFNumberGetValue(value, kCFNumberSInt64Type, &v10);
            *a3 = v10 != 0;
            return 1;
          }
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17360, 4294954306, "<<<< FigAirPlayURLProcessor >>>>", 463, v3);
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17360, 4294954306, "<<<< FigAirPlayURLProcessor >>>>", 462, v3);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17360, 4294954306, "<<<< FigAirPlayURLProcessor >>>>", 461, v3);
    }

    return 0;
  }

  return result;
}

uint64_t urlProcessor_customURLLoaderDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char a5, __CFError *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = (CMBaseObjectGetDerivedStorage() + 48);
  do
  {
    v13 = *v13;
    if (!v13)
    {
      if (dword_1EAF17368)
      {
        OUTLINED_FUNCTION_147();
        v25 = OUTLINED_FUNCTION_126(qword_1EAF17360, v18, v19, v20, v21, v22, v23, v24, v42, v43, v44, *v45, v45[2], v45[3], v45[4]);
        os_log_type_enabled(v25, type);
        OUTLINED_FUNCTION_46();
        if (a6)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_39();
          v26 = OUTLINED_FUNCTION_30();
          _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v25, type, v31);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      valuePtr[0] = -17227;
      v32 = CMBaseObjectGetDerivedStorage();
      v33 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v35 = CFNumberCreate(v33, kCFNumberSInt32Type, valuePtr);
      if (v32)
      {
        CFDictionarySetValue(Mutable, @"ResultIsFatal", *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(Mutable, @"Result", v35);
        urlProcessor_postNotification(a1, @"RequestFailed", Mutable);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v35)
      {
        goto LABEL_17;
      }

      return FigReadWriteLockUnlockForRead();
    }
  }

  while (v13[1] != a2);
  FigReadWriteLockLockForRead();
  if (!*DerivedStorage)
  {
    if (a4)
    {
      if (v13[5])
      {
        OUTLINED_FUNCTION_496();
        CMBlockBufferAppendBufferReference(v14, v15, v16, v17, 0);
      }

      else
      {
        v13[5] = CFRetain(a4);
      }
    }

    if ((a5 & 3) != 0)
    {
      APCustomURLResponseFromLocalCustomURLResponse = urlProcessor_createAPCustomURLResponseFromLocalCustomURLResponse(a1, v13, a3, a6);
      if (APCustomURLResponseFromLocalCustomURLResponse)
      {
        v35 = APCustomURLResponseFromLocalCustomURLResponse;
        v38 = CMBaseObjectGetDerivedStorage();
        LOBYTE(valuePtr[0]) = 0;
        if (!v38 || (v39 = v38, *v38))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v44);
        }

        else
        {
          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionarySetUInt64();
          FigCFDictionarySetBoolean();
          v41 = v39 + 48;
          for (i = *(v39 + 6); i != v13; i = *i)
          {
            v41 = i;
          }

          *v41 = *i;
          if (LOBYTE(valuePtr[0]) && v39[96])
          {
            FigAirPlaySecureStopRouterCommitToDisk(*(v39 + 13));
          }

          urlProcessor_postNotification(a1, @"UnhandledURLResponse", v35);
        }

        urlProcessor_freeCustomURLRequestListEntry(a1, v13);
LABEL_17:
        CFRelease(v35);
      }
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void urlProcessor_HandleRequest_cold_3(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

void urlProcessor_contentKeyDataCallback_cold_1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 56);
  v7 = (a1 + 56);
  for (i = v9; i != a2; i = *i)
  {
    v7 = i;
  }

  *v7 = *i;
  FigCFDictionarySetUInt64();
  urlProcessor_postNotification(a4, @"UnhandledURLResponse", a3);

  urlProcessor_freeContentKeyRequestListEntry(a4, a2);
}

void urlProcessor_contentKeyDataCallback_cold_2(uint64_t a1, void *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);

  urlProcessor_freeContentKeyRequestListEntry(a1, a2);
}

__CFString *FigVTTCopyNodeTypeName(int a1)
{
  valuePtr = a1;
  MEMORY[0x19A8D3660](&FigVTTCopyNodeTypeName_once, figVTT_initNodeVTTTypeNameMapping);
  if (sVTTNodeTypeNameMapping && (v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr)) != 0 && (v2 = v1, Value = CFDictionaryGetValue(sVTTNodeTypeNameMapping, v1), CFRelease(v2), Value))
  {
    return CFRetain(Value);
  }

  else
  {
    return @"<node-type-name-failure>";
  }
}

__CFString *FigVTTCopySectionTypeName(int a1)
{
  valuePtr = a1;
  MEMORY[0x19A8D3660](&FigVTTCopySectionTypeName_once, figVTT_initVTTSectionTypeNameMapping);
  if (sVTTSectionTypeNameMapping && (v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr)) != 0 && (v2 = v1, Value = CFDictionaryGetValue(sVTTSectionTypeNameMapping, v1), CFRelease(v2), Value))
  {
    return CFRetain(Value);
  }

  else
  {
    return @"<section-type-name-failure>";
  }
}

uint64_t CreateSampleGeneratorForMpeg2Video(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x10600405E1F1638uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = M2VPushForType;
  a1[8] = M2VResyncForType;
  a1[7] = M2VFlushForType;
  a1[9] = M2VDestroyForType;
  a1[10] = M2VGetBitRateForType;
  a1[11] = v3;
  return result;
}

uint64_t M2VPushForType(uint64_t a1, OpaqueCMBlockBuffer *cf, uint64_t a3, CMTime *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v145 = a3;
  v146 = a4;
  DataPointer = 0;
  v169 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 88);
  v165 = 24;
  v166 = 1;
  blockBufferOut = 0;
  v148 = (a1 + 40);
  v13 = (a5 >> 1) & 1;
  if (*(a1 + 40))
  {
    v13 = 1;
  }

  if ((a5 & 0x800) != 0 || !v13)
  {
    return DataPointer;
  }

  v16 = a5;
  v17 = v10;
  DataLength = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  returnedPointerOut = 0;
  memset(temporaryBlock, 0, sizeof(temporaryBlock));
  Mutable = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  targetBBuf = DataLength;
  if (!Mutable)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v128, v129);
LABEL_224:
    DataPointer = Contiguous;
    goto LABEL_225;
  }

  v147 = a1;
  HIDWORD(v142) = v16;
  v22 = CMGetAttachment(DataLength, @"ByteOffsetToSecondField", 0);
  cfa = v22;
  v30 = v22 != 0;
  v141 = a6;
  if ((v16 & 2) == 0 && *(v12 + 16) == v30)
  {
    v31 = Mutable;
    LODWORD(DataPointer) = 0;
    v154 = 0;
    v156 = 0;
    OUTLINED_FUNCTION_1_98();
    v150 = 0;
    goto LABEL_170;
  }

  HIDWORD(v139) = v16;
  v152 = v12;
  if (a7 < 1)
  {
    v42 = 0;
    v157 = 0;
    v75 = 0;
    LODWORD(v39) = 0;
    v76 = 0;
    LODWORD(DataPointer) = 0;
    v40 = 0;
LABEL_85:
    if (*v148)
    {
LABEL_86:
      if (*(v12 + 16) != v30)
      {
        v155 = v75;
        v151 = v76;
        v77 = v30;
        v78 = FigFormatDescriptionRelease();
        *v148 = 0;
        v79 = v77;
        if (!DataPointer)
        {
LABEL_99:
          *(v12 + 16) = v79;
          LODWORD(valuePtr.value) = 0;
          LODWORD(dataPointerOut) = 0;
          DataLength = MEMORY[0x1E695E480];
          v16 = HIDWORD(v139);
          if (v40)
          {
            v87 = *(v12 + 12);
            if ((v87 - 2) > 2)
            {
              goto LABEL_148;
            }

            v88 = v12[1];
            if (v88 != 720)
            {
              goto LABEL_115;
            }

            v89 = *v12;
            if (*v12 == 480)
            {
LABEL_105:
              if (v87 != 3)
              {
                if (v87 != 2)
                {
                  goto LABEL_125;
                }

LABEL_114:
                v92 = 10;
                LODWORD(valuePtr.value) = 10;
                v93 = 11;
                goto LABEL_143;
              }

              v92 = 40;
              LODWORD(valuePtr.value) = 40;
              v93 = 33;
LABEL_143:
              LODWORD(dataPointerOut) = v93;
              if (v92 >= 1 && v93 >= 1)
              {
                v104 = OUTLINED_FUNCTION_2_95(v78, v23, v24, v25, v26, v27, v28, v29, v127, v128, v129, v130, value, v132, key, v134, v135, v136, v137, v138, v139, theDict, v141, v142, cfa, v144, v145, v146, v147);
                v105 = CFDictionaryCreateMutable(v104, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v102 = v105;
                if (v105)
                {
                  v106 = *DataLength;
                  v103 = CFNumberCreate(*DataLength, kCFNumberSInt32Type, &valuePtr);
                  if (v103)
                  {
                    v107 = CFNumberCreate(v106, kCFNumberSInt32Type, &dataPointerOut);
                    if (v107)
                    {
                      v108 = v107;
                      CFDictionarySetValue(v102, *MEMORY[0x1E6965EF0], v103);
                      v150 = v108;
                      CFDictionarySetValue(v102, *MEMORY[0x1E6965F00], v108);
                      CFDictionarySetValue(Mutable, *MEMORY[0x1E6965EF8], v102);
LABEL_153:
                      v156 = v102;
                      if (!cfa)
                      {
                        v109 = a7;
                        if ((v16 & 0x600) != 0)
                        {
                          v166 = 2;
                        }

                        goto LABEL_161;
                      }

                      v166 = 2;
                      v109 = a7;
                      if ((v16 & 0x200) != 0)
                      {
                        v110 = *MEMORY[0x1E6965E58];
                        v111 = MEMORY[0x1E6965E60];
                      }

                      else
                      {
                        if ((v16 & 0x400) == 0)
                        {
LABEL_161:
                          v112 = *DataLength;
                          v17 = CFNumberCreate(*DataLength, kCFNumberIntType, &v166);
                          CFDictionarySetValue(Mutable, *MEMORY[0x1E6965E50], v17);
                          DataLength = CFNumberCreate(v112, kCFNumberSInt32Type, &v165);
                          CFDictionarySetValue(Mutable, *MEMORY[0x1E6960028], DataLength);
                          v154 = v103;
                          if (!CFDictionaryGetCount(Mutable))
                          {
                            CFRelease(Mutable);
                            Mutable = 0;
                          }

                          if (*(v152 + 128))
                          {
                            v113 = 1836069494;
                          }

                          else
                          {
                            v113 = 1836069238;
                          }

                          v31 = Mutable;
                          appended = CMVideoFormatDescriptionCreate(*(v147 + 8), v113, v152[1], *v152, Mutable, v148);
                          if (appended)
                          {
                            goto LABEL_168;
                          }

                          appended = (*(v147 + 16))(v147, *(v147 + 32), *(v147 + 40));
                          if (appended)
                          {
                            goto LABEL_168;
                          }

                          a7 = v109;
                          v12 = v152;
LABEL_170:
                          v114 = targetBBuf;
                          if ((v142 & 0x1000000000) == 0 || (v114 = targetBBuf, DataPointer) || (v115 = *(v12 + 17), v114 = targetBBuf, !v115))
                          {
LABEL_176:
                            if (*v148)
                            {
                              if ((*(v145 + 12) & 1) == 0)
                              {
                                puts("mpeg2 video pts is invalid");
                              }

                              valuePtr = *v146;
                              DataPointer = PushM2VFrame(v147, &valuePtr, 1);
                              v118 = cfa;
                              if (cfa)
                              {
                                v118 = CFRetain(cfa);
                              }

                              *(v12 + 15) = v118;
                              if (v114)
                              {
                                v119 = CFRetain(v114);
                              }

                              else
                              {
                                v119 = 0;
                              }

                              *(v12 + 3) = v119;
                              v120 = *v145;
                              *(v12 + 6) = *(v145 + 16);
                              *(v12 + 2) = v120;
                              v121 = *&v146->value;
                              *(v12 + 9) = v146->epoch;
                              *(v12 + 14) = v121;
                              v12[26] = v16;
                              *(v12 + 14) = v141;
                              *(v12 + 15) = 0;
                              if ((v16 & 0x20) != 0)
                              {
                                *(v12 + 14) = 1;
                                if (a7 < 1)
                                {
                                  v122 = v150;
                                }

                                else
                                {
                                  v123 = 0;
                                  while (*(a10 + v123) != 184)
                                  {
                                    if (++v123 >= a7)
                                    {
                                      v122 = v150;
                                      goto LABEL_198;
                                    }
                                  }

                                  LOBYTE(valuePtr.value) = 0;
                                  appended = CMBlockBufferCopyDataBytes(v114, *(a8 + 8 * v123) + 7, 1uLL, &valuePtr);
                                  if (appended)
                                  {
                                    goto LABEL_168;
                                  }

                                  v124 = valuePtr.value;
                                  v122 = v150;
                                  if ((valuePtr.value & 0x40) == 0)
                                  {
                                    *(v12 + 14) = 0;
                                  }

                                  if ((v124 & 0x20) != 0)
                                  {
                                    *(v12 + 15) = 1;
                                  }

                                  DataPointer = 0;
LABEL_198:
                                  if (!*(v12 + 14))
                                  {
                                    v12[26] |= 0x40u;
                                  }
                                }

                                if (*(v12 + 15))
                                {
                                  v12[26] |= 0x80u;
                                }

                                Mutable = v31;
                                v103 = v154;
                                v102 = v156;
                                goto LABEL_203;
                              }
                            }

                            else
                            {
                              DataPointer = 0;
                            }

LABEL_185:
                            Mutable = v31;
                            v103 = v154;
                            v102 = v156;
                            v122 = v150;
                            goto LABEL_203;
                          }

                          v116 = OUTLINED_FUNCTION_2_95(appended, v115, v33, v34, v35, v36, v37, v38, v127, v128, v129, v130, value, v132, key, v134, v135, v136, v137, v138, v139, theDict, v141, v142, cfa, v144, v145, v146, v147);
                          appended = CMBlockBufferCreateWithBufferReference(v116, v117, 0, 0, 0, &blockBufferOut);
                          if (!appended)
                          {
                            appended = CMBlockBufferAppendBufferReference(blockBufferOut, targetBBuf, 0, 0, 0);
                            if (!appended)
                            {
                              v114 = blockBufferOut;
                              goto LABEL_176;
                            }
                          }

LABEL_168:
                          DataPointer = appended;
                          goto LABEL_185;
                        }

                        v110 = *MEMORY[0x1E6965E58];
                        v111 = MEMORY[0x1E6965E68];
                      }

                      CFDictionarySetValue(Mutable, v110, *v111);
                      goto LABEL_161;
                    }
                  }
                }

                else
                {
                  v103 = 0;
                }

                fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v128, v129);
                DataPointer = v126;
                OUTLINED_FUNCTION_1_98();
                goto LABEL_226;
              }

LABEL_148:
              v102 = 0;
              v103 = 0;
              v150 = 0;
              goto LABEL_153;
            }

            if (v89 != 576)
            {
              if (v89 == 486)
              {
                goto LABEL_105;
              }

LABEL_115:
              v94 = 4 * v87 - 8;
              v95 = *(&unk_196E77838 + v94);
              v96 = *(&unk_196E77844 + v94);
LABEL_116:
              v92 = *v12 * v96;
              LODWORD(valuePtr.value) = v92;
              v93 = v88 * v95;
              goto LABEL_143;
            }

            if (v87 == 3)
            {
              v92 = 118;
              LODWORD(valuePtr.value) = 118;
              v93 = 81;
              goto LABEL_143;
            }

            if (v87 != 2)
            {
LABEL_125:
              v96 = 221;
              v95 = 100;
              goto LABEL_116;
            }

LABEL_124:
            v92 = 59;
            LODWORD(valuePtr.value) = 59;
            v93 = 54;
            goto LABEL_143;
          }

          v90 = *(v12 + 13);
          if (v90 != 4)
          {
            if (v90 == 3)
            {
              v97 = *v12;
              if (*v12 == 208)
              {
                if (v12[1] != 368)
                {
                  goto LABEL_141;
                }

                v92 = 65;
              }

              else
              {
                if (v97 != 272)
                {
                  if (v97 == 288 && v12[1] == 352)
                  {
                    goto LABEL_124;
                  }

LABEL_141:
                  if (*(v12 + 12) - 1 > 0xD)
                  {
                    goto LABEL_148;
                  }

                  v100 = &sM1VPixelAspectRatios + 4 * v39;
                  v92 = *(v100 - 2);
                  LODWORD(valuePtr.value) = v92;
                  v93 = *(v100 - 1);
                  goto LABEL_143;
                }

                if (v12[1] != 368)
                {
                  goto LABEL_141;
                }

                v92 = 68;
              }

              LODWORD(valuePtr.value) = v92;
              v93 = 69;
              goto LABEL_143;
            }

            if (v90 != 1)
            {
              goto LABEL_141;
            }
          }

          if (*v12 == 240)
          {
            v91 = v12[1];
            if (v91 == 384)
            {
              v99 = *(v12 + 12);
              if (v99 == 14 || v99 == 1)
              {
                v92 = 5;
                LODWORD(valuePtr.value) = 5;
                v93 = 6;
                goto LABEL_143;
              }
            }

            else if (v91 == 352)
            {
              goto LABEL_114;
            }
          }

          goto LABEL_141;
        }

LABEL_98:
        *v12 = v42;
        v12[1] = v157;
        v12[2] = v155;
        *(v12 + 12) = v39;
        *(v12 + 13) = v151;
        *(v12 + 128) = v40;
        goto LABEL_99;
      }
    }

    v31 = Mutable;
    v154 = 0;
    v156 = 0;
    OUTLINED_FUNCTION_1_98();
    v150 = 0;
    v16 = HIDWORD(v139);
    goto LABEL_170;
  }

  HIDWORD(v135) = v22 != 0;
  v136 = v10;
  theDict = Mutable;
  v144 = 0;
  LODWORD(v39) = 0;
  v40 = 0;
  v41 = 0;
  v17 = 0;
  v149 = 0;
  v151 = 0;
  v155 = 0;
  v157 = 0;
  v42 = 0;
  key = *MEMORY[0x1E6965D88];
  value = *MEMORY[0x1E6965DD8];
  v138 = *MEMORY[0x1E6965DB8];
  v132 = *MEMORY[0x1E6965F30];
  v130 = *MEMORY[0x1E6965F68];
  v137 = *MEMORY[0x1E6965F50];
  v134 = *MEMORY[0x1E6965F98];
  v129 = *MEMORY[0x1E6965FF0];
  v127 = *MEMORY[0x1E6965FD0];
  v128 = *MEMORY[0x1E6965FC8];
  do
  {
    v43 = *(a10 + v17);
    if (*(a10 + v17) && v43 != 184)
    {
      if (!v39)
      {
        v144 += *(a9 + 8 * v17);
      }
    }

    else
    {
      LODWORD(v39) = 1;
    }

    if (v43 != 179)
    {
      if (v43 != 181)
      {
        if (!*(a10 + v17))
        {
          break;
        }

        goto LABEL_52;
      }

      if (*(a9 + 8 * v17) <= 7uLL)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_76();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v128, v129);
LABEL_222:
        DataPointer = v22;
        v102 = 0;
        OUTLINED_FUNCTION_1_98();
        v103 = 0;
        v122 = 0;
        goto LABEL_203;
      }

      v44 = a7;
      v45 = a10;
      v46 = v41;
      if (v41)
      {
        v40 = 1;
      }

      v22 = CMBlockBufferAccessDataBytes(DataLength, *(a8 + 8 * v17) + 4, 4uLL, temporaryBlock, &returnedPointerOut);
      if (v22)
      {
        goto LABEL_222;
      }

      v47 = *returnedPointerOut;
      if (v47 >> 4 != 2)
      {
        v41 = v46;
        if (v47 >> 4 == 1)
        {
          v48 = returnedPointerOut[2];
          v157 |= (32 * (v48 & 0x80)) & 0xDFFF | ((returnedPointerOut[1] & 1) << 13);
          v42 |= (v48 & 0x60) << 7;
          v155 |= (returnedPointerOut[3] << 17) & 0x1FC0000 | ((v48 & 0x1F) << 25);
        }

        goto LABEL_51;
      }

      if ((v47 & 1) == 0)
      {
        goto LABEL_50;
      }

      v52 = returnedPointerOut[1];
      v53 = returnedPointerOut[2];
      LODWORD(DataPointer) = returnedPointerOut[3];
      v54 = v138;
      if (v52 != 1)
      {
        if (v52 != 6)
        {
          goto LABEL_38;
        }

        v54 = value;
      }

      CFDictionarySetValue(Mutable, key, v54);
LABEL_38:
      v24 = v137;
      if (v53 != 1)
      {
        v55 = v53 == 7;
        DataLength = targetBBuf;
        if (!v55)
        {
          goto LABEL_43;
        }

        v24 = v130;
      }

      CFDictionarySetValue(Mutable, v132, v24);
      DataLength = targetBBuf;
LABEL_43:
      switch(DataPointer)
      {
        case 7:
          v56 = Mutable;
          v57 = v134;
          v58 = v129;
          goto LABEL_49;
        case 6:
          v56 = Mutable;
          v57 = v134;
          v58 = v128;
          goto LABEL_49;
        case 1:
          v56 = Mutable;
          v57 = v134;
          v58 = v127;
LABEL_49:
          CFDictionarySetValue(v56, v57, v58);
          break;
      }

LABEL_50:
      v41 = v46;
LABEL_51:
      a10 = v45;
      a7 = v44;
      v12 = v152;
      goto LABEL_52;
    }

    if (*(a9 + 8 * v17) < 0xBuLL)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_76();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v128, v129);
      if (v22)
      {
        goto LABEL_222;
      }
    }

    else
    {
      v49 = *(a8 + 8 * v17);
      valuePtr.value = 0;
      v22 = CMBlockBufferAccessDataBytes(DataLength, v49 + 4, 7uLL, &dataPointerOut, &valuePtr);
      if (v22)
      {
        goto LABEL_222;
      }

      v50 = *(valuePtr.value + 1);
      v157 = (v50 >> 4) | (16 * *valuePtr.value);
      v42 = *(valuePtr.value + 2) | ((v50 & 0xF) << 8);
      v51 = *(valuePtr.value + 3);
      v149 = v51 >> 4;
      v151 = v51 & 0xF;
      v155 = (*(valuePtr.value + 4) << 10) | (4 * *(valuePtr.value + 5)) | (*(valuePtr.value + 6) >> 6);
    }

    v41 = 1;
LABEL_52:
    ++v17;
  }

  while (v17 < a7);
  LODWORD(v138) = v41;
  if ((v142 & 0x1000000000) == 0 || !v41)
  {
    v17 = v10;
    if (!v41)
    {
      OUTLINED_FUNCTION_3_70();
      goto LABEL_85;
    }

    goto LABEL_91;
  }

  v39 = (v12 + 34);
  v17 = v10;
  if (!*(v12 + 17))
  {
    OUTLINED_FUNCTION_2_95(v22, v23, v24, v25, v26, v27, v28, v29, v127, v128, v129, v130, value, v132, key, v134, v135, v10, v137, v138, v139, Mutable, v141, v142, cfa, v144, v145, v146, v147);
    OUTLINED_FUNCTION_0_110();
    Contiguous = CMBlockBufferCreateContiguous(v80, v81, v82, v83, v84, v85, v86, v12 + 17);
    if (Contiguous)
    {
      goto LABEL_224;
    }

    goto LABEL_91;
  }

  valuePtr.value = 0;
  OUTLINED_FUNCTION_2_95(v22, v23, v24, v25, v26, v27, v28, v29, v127, v128, v129, v130, value, v132, key, v134, v135, v10, v137, v138, v139, Mutable, v141, v142, cfa, v144, v145, v146, v147);
  OUTLINED_FUNCTION_0_110();
  Contiguous = CMBlockBufferCreateContiguous(v59, v60, v61, v62, v63, v64, v65, v66);
  if (Contiguous)
  {
    goto LABEL_224;
  }

  LODWORD(DataPointer) = v12 + 136;
  if (!FigBlockBufferCompare())
  {
LABEL_80:
    if (valuePtr.value)
    {
      CFRelease(valuePtr.value);
    }

LABEL_91:
    v78 = *v148;
    if (*v148)
    {
      if (v42 == *v12 && v157 == v12[1] && v149 == *(v12 + 12))
      {
        OUTLINED_FUNCTION_3_70();
        goto LABEL_86;
      }

      v78 = FigFormatDescriptionRelease();
      *v148 = 0;
    }

    LODWORD(DataPointer) = v138;
    LODWORD(v39) = v149;
    v79 = BYTE4(v135);
    goto LABEL_98;
  }

  v162 = 0;
  dataPointerOut = 0;
  DataLength = CMBlockBufferGetDataLength(*v39);
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(*v39, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v68 = valuePtr.value;
  if (!DataPointer)
  {
    v69 = CMBlockBufferGetDataPointer(valuePtr.value, 0, &lengthAtOffsetOut, &totalLengthOut, &v162);
    if (!v69)
    {
      v70 = 0;
      if (DataLength)
      {
        v71 = dataPointerOut - 1;
        while (!*(DataLength + v71))
        {
          --v71;
          v70 = (v70 + 1);
          if (DataLength == v70)
          {
            v70 = DataLength;
            break;
          }
        }
      }

      v72 = 0;
      if (v144)
      {
        v73 = v162 - 1;
        while (!v73[v144])
        {
          --v73;
          if (v144 == ++v72)
          {
            v72 = v144;
            break;
          }
        }
      }

      v24 = (DataLength - v70);
      if (DataLength - v70 == v144 - v72 && !memcmp(dataPointerOut, v162, v24))
      {
        if (v144 < DataLength)
        {
          if (*v39)
          {
            CFRelease(*v39);
          }

          v98 = valuePtr.value;
          if (valuePtr.value)
          {
            v98 = CFRetain(valuePtr.value);
          }

          *v39 = v98;
        }
      }

      else
      {
        if (*v39)
        {
          CFRelease(*v39);
        }

        v74 = valuePtr.value;
        if (valuePtr.value)
        {
          v74 = CFRetain(valuePtr.value);
        }

        *(v12 + 17) = v74;
        *(v12 + 144) = 1;
      }

      goto LABEL_80;
    }

    DataPointer = v69;
    v68 = valuePtr.value;
  }

  if (v68)
  {
    CFRelease(v68);
  }

  Mutable = theDict;
LABEL_225:
  v102 = 0;
  OUTLINED_FUNCTION_1_98();
  v103 = 0;
LABEL_226:
  v122 = 0;
LABEL_203:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (DataLength)
  {
    CFRelease(DataLength);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  return DataPointer;
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  theArray.start.value = 0;
  v59 = *MEMORY[0x1E6961268];
  v4 = *MEMORY[0x1E695E480];
  v64 = a2;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    Mutable = 0;
    v11 = 4294954514;
    goto LABEL_20;
  }

  v7 = v6(CMBaseObject, v59, v4, &theArray);
  if (v7)
  {
    v11 = v7;
LABEL_19:
    Mutable = 0;
    goto LABEL_20;
  }

  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v10 = v9(v64);
    }

    else
    {
      v10 = &stru_1F0B1AFB8;
    }

    Length = CFStringGetLength(v10);
    Count = CFArrayGetCount(theArray.start.value);
    if (!Count)
    {
LABEL_16:
      v81.length = CFArrayGetCount(Mutable);
      v81.location = 0;
      CFArraySortValues(Mutable, v81, MEMORY[0x1E695D7A0], 0);
      v11 = 0;
      goto LABEL_20;
    }

    v14 = Count;
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray.start.value, v15);
      *start = 0;
      *&start[8] = 0;
      if (Length)
      {
        break;
      }

LABEL_15:
      if (++v15 == v14)
      {
        goto LABEL_16;
      }
    }

    v17 = ValueAtIndex;
    v18 = 0;
    while (1)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v19)
      {
        v11 = 4294954514;
        goto LABEL_18;
      }

      v20 = v19(v64, v18, v17, v4, 0, start);
      if (v20)
      {
        break;
      }

      v18 = *&start[8] + *start;
      FigCFArrayAppendCFIndex();
      if (v18 == Length)
      {
        goto LABEL_15;
      }
    }

    v11 = v20;
LABEL_18:
    CFRelease(Mutable);
    goto LABEL_19;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v57, v59);
  v11 = v55;
LABEL_20:
  if (theArray.start.value)
  {
    CFRelease(theArray.start.value);
  }

  if (v11)
  {
LABEL_87:
    if (!Mutable)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v21 = CFArrayGetCount(Mutable);
  if (v21)
  {
    v22 = v21;
    v58 = v2;
    v23 = 0;
    v24 = 0;
    v25 = *MEMORY[0x1E69614E0];
    v61 = *MEMORY[0x1E69614E0];
    v62 = v21;
    v60 = Mutable;
    while (1)
    {
      v70 = 0;
      FigCFArrayGetCFIndexAtIndex();
      if (v70 == v24)
      {
        goto LABEL_77;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v26 = FigCaptionDataCopySubrange();
      if (v26)
      {
        goto LABEL_93;
      }

      v66 = *DerivedStorage;
      v27 = cf;
      v28 = *(DerivedStorage + 8);
      *&start[16] = *(DerivedStorage + 24);
      *start = v28;
      *&theArray.start.value = *(DerivedStorage + 32);
      theArray.start.epoch = *(DerivedStorage + 48);
      CMTimeRangeFromTimeToTime(&v69, start, &theArray.start);
      *start = 0;
      v68 = v27;
      v29 = FigCaptionDataGetCMBaseObject();
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30)
      {
        v31 = v30(v29, v59, v4, start);
        if (!v31)
        {
          v32 = CFArrayGetCount(*start);
          v33 = CFArrayCreateMutable(v4, v32, MEMORY[0x1E695E9C0]);
          if (v33)
          {
            v34 = v33;
            v35 = CFArrayGetCount(*start);
            v67 = v34;
            if (v35)
            {
              v36 = v35;
              for (i = 0; i != v36; ++i)
              {
                v38 = CFArrayGetValueAtIndex(*start, i);
                if (!CFEqual(v38, v25))
                {
                  CFArrayAppendValue(v34, v38);
                }
              }
            }

            v11 = 0;
            goto LABEL_39;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v58, v59);
        }

        v11 = v31;
        v67 = 0;
      }

      else
      {
        v67 = 0;
        v11 = 4294954514;
      }

LABEL_39:
      if (*start)
      {
        CFRelease(*start);
      }

      if (v11)
      {
        goto LABEL_73;
      }

      theArray = v69;
      v79 = 0;
      v80 = 0;
      MEMORY[0x19A8D3660](&getCaptionStylePropertyToAttributesMapping_once, initCaptionStylePropertyToAttributesMapping);
      v39 = sCaptionStylePropertyToAttributesMapping;
      v40 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *&start[8] = theArray;
      *start = v68;
      v76 = v40;
      v77 = v39;
      v78 = 0;
      v82.length = CFArrayGetCount(v67);
      v82.location = 0;
      CFArrayApplyFunction(v67, v82, buildTimeToAttributesMap, start);
      if (v78 || (v41 = CFDictionaryGetCount(v40), v41 < 1))
      {
        v53 = 0;
        v46 = 0;
        v43 = 0;
        v11 = 0;
        if (v40)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      v42 = v41;
      v65 = v23;
      if (v41 >> 61)
      {
        v43 = 0;
      }

      else
      {
        v43 = malloc_type_malloc(8 * v41, 0x6004044C4A2DFuLL);
      }

      CFDictionaryGetKeysAndValues(v40, v43, 0);
      qsort_r(v43, v42, 8uLL, 0, compareCFNumber);
      v44 = FigTTMLDocumentWriterElementCreate(v4, 5, 0, &v80);
      if (v44)
      {
        v11 = v44;
        v53 = 0;
        v46 = 0;
        goto LABEL_60;
      }

      v45 = 0;
      v46 = 0;
      while (1)
      {
        v47 = v43[v45];
        Value = CFDictionaryGetValue(v40, v47);
        if (v45)
        {
          break;
        }

        OUTLINED_FUNCTION_0_111(Value, v49, v80);
LABEL_57:
        if (v42 == ++v45)
        {
          FigTTMLDocumentWriterElementAddChildElement(v80, v68);
          v11 = 0;
          v53 = v80;
          v80 = 0;
          goto LABEL_59;
        }
      }

      if (v79)
      {
        CFRelease(v79);
        v79 = 0;
      }

      v50 = FigTTMLDocumentWriterElementCreate(v4, 1, v80, &v79);
      if (!v50)
      {
        valuePtr = 0;
        CFNumberGetValue(v47, kCFNumberSInt32Type, &valuePtr);
        if (v46)
        {
          CFRelease(v46);
        }

        CMTimeMake(&time, valuePtr, 1000);
        v46 = CMTimeCopyAsDictionary(&time, v4);
        FigTTMLDocumentWriterElementSetAttribute(v79, @"begin", v46);
        OUTLINED_FUNCTION_0_111(v51, v52, v79);
        FigTTMLDocumentWriterElementAddChildElement(v80, v79);
        goto LABEL_57;
      }

      v11 = v50;
      v53 = 0;
LABEL_59:
      Mutable = v60;
LABEL_60:
      v23 = v65;
      if (v40)
      {
LABEL_61:
        CFRelease(v40);
      }

LABEL_62:
      if (v46)
      {
        CFRelease(v46);
      }

      free(v43);
      v25 = v61;
      if (v79)
      {
        CFRelease(v79);
      }

      v22 = v62;
      if (v80)
      {
        CFRelease(v80);
      }

      if (v11)
      {
        if (v53)
        {
LABEL_71:
          CFRelease(v53);
        }
      }

      else
      {
        if (v53)
        {
          v11 = FigTTMLDocumentWriterElementWriteTree(v53, v66);
          goto LABEL_71;
        }

        v11 = FigTTMLDocumentWriterAddCaptionData(v66, v68);
      }

LABEL_73:
      if (v67)
      {
        CFRelease(v67);
      }

      if (v11)
      {
        goto LABEL_87;
      }

      v24 = v70;
LABEL_77:
      if (++v23 == v22)
      {
        v11 = 0;
        goto LABEL_87;
      }
    }
  }

  v26 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, v64);
LABEL_93:
  v11 = v26;
  if (Mutable)
  {
LABEL_88:
    CFRelease(Mutable);
  }

LABEL_89:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_SetAttribute(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
  if (!v6)
  {
    if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      v7 = *&v9.value;
      *(DerivedStorage + 24) = v9.epoch;
      *(DerivedStorage + 8) = v7;
    }

    else if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      *(DerivedStorage + 32) = v9;
    }
  }

  return v6;
}

void buildTimeToAttributesMap(void *key, uint64_t *a2)
{
  v19 = 0;
  cf = 0;
  if (*(a2 + 18))
  {
    goto LABEL_26;
  }

  Value = CFDictionaryGetValue(a2[8], key);
  if (Value)
  {
    v5 = Value;
    v6 = *a2;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v8 = v7(v6, 0, key, *MEMORY[0x1E695E480], &cf, 0);
      if (!v8)
      {
        if (!cf)
        {
          goto LABEL_21;
        }

        v9 = CFGetTypeID(cf);
        if (v9 == FigCaptionDynamicStyleGetTypeID())
        {
          KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
          if (KeyFrameCount < 1)
          {
            goto LABEL_24;
          }

          v11 = KeyFrameCount;
          v12 = 0;
          while (1)
          {
            v18 = 0.0;
            if (v19)
            {
              CFRelease(v19);
              v19 = 0;
            }

            v8 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
            if (v8)
            {
              goto LABEL_23;
            }

            if ((*(a2 + 11) & 0x1D) == 1)
            {
              v13 = v18;
              v17 = *(a2 + 4);
              v14 = (v13 * CMTimeGetSeconds(&v17) * 1000.0);
            }

            else
            {
              v14 = 0;
            }

            AttributeDictionaryForAnimationTime = insertOrGetAttributeDictionaryForAnimationTime(a2[7], v14);
            v8 = v5(v19, AttributeDictionaryForAnimationTime);
            if (v8)
            {
              goto LABEL_23;
            }

            if (v11 == ++v12)
            {
              goto LABEL_24;
            }
          }
        }

        if (cf)
        {
          v16 = insertOrGetAttributeDictionaryForAnimationTime(a2[7], 0);
          v8 = v5(cf, v16);
        }

        else
        {
LABEL_21:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17.value, v17.timescale, LODWORD(v17.epoch));
        }

        if (!v8)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v8 = -12782;
    }

LABEL_23:
    *(a2 + 18) = v8;
  }

LABEL_24:
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }
}

void FigVTTNodeSetAttribute_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigVTTNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigVTTNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t MPEG2TSSniff(OpaqueCMBlockBuffer *a1, char a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v14 = 0;
  if ((a2 & 3) == 0)
  {
    return 0;
  }

  v5 = DataLength;
  result = FindTSHeader(a1, 0, DataLength, &v14);
  if (result)
  {
    while (1)
    {
      v7 = v14;
      v8 = OUTLINED_FUNCTION_5_66();
      if (SniffRestOfBuffer(v8, v9, v10, 188, v11, v12, 0))
      {
        break;
      }

      v14 = v7 + 1;
      TSHeader = FindTSHeader(a1, v7 + 1, v5, &v14);
      result = 0;
      if (!TSHeader)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t FindTSHeader(CMBlockBufferRef theBuffer, size_t offset, size_t a3, size_t *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v13 = 0;
  dataPointerOut = 0;
  while (1)
  {
    if (CMBlockBufferGetDataPointer(theBuffer, offset, &v13, 0, &dataPointerOut))
    {
      return 0;
    }

    v8 = v13;
    if (v13 > v5)
    {
      break;
    }

    if (v13)
    {
      goto LABEL_7;
    }

LABEL_10:
    offset += v8;
    v5 -= v8;
    if (!v5)
    {
      return 0;
    }
  }

  v13 = v5;
  v8 = v5;
LABEL_7:
  v9 = dataPointerOut + 1;
  v10 = v8;
  v11 = offset;
  while (*(v9 - 1) != 71)
  {
    dataPointerOut = v9;
    ++v11;
    ++v9;
    if (!--v10)
    {
      goto LABEL_10;
    }
  }

  *a4 = v11;
  return 1;
}

uint64_t SniffRestOfBuffer(CMBlockBufferRef theBuffer, size_t offset, size_t a3, uint64_t a4, _BYTE *a5, BOOL *a6, _DWORD *a7)
{
  v14 = 0;
  dataPointerOut = 0;
  *a5 = 0;
  *a6 = 0;
  while (1)
  {
    result = CMBlockBufferGetDataPointer(theBuffer, offset, 0, 0, &dataPointerOut);
    if (result || *dataPointerOut != 71)
    {
      break;
    }

    *a5 = 1;
    offset += a4;
    ++v14;
    if (offset >= a3)
    {
      *a6 = v14 != 1;
      break;
    }
  }

  if (a7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t MPEG2TSInitialize(uint64_t a1)
{
  *(a1 + 168) = MPEG2TSInject;
  *(a1 + 176) = MPEG2TSReset;
  v1 = 192;
  if (*(a1 + 48) == 1)
  {
    v1 = 188;
  }

  v11 = 0;
  *(a1 + 392) = v1;
  *(a1 + 400) = v1 - 188;
  OUTLINED_FUNCTION_0_112();
  result = AddPes(v2, v3, v4, v5, v6, v7, v8, 0, 0, &v11);
  if (!result)
  {
    *(v11 + 440) = PatProcessPak;
    v10 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
    *(v11 + 48) = v10;
    if (v10)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t MPEG2TSInject(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v2 = theBuffer;
  v57 = *MEMORY[0x1E69E9840];
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v5 = DataLength;
  v54 = 0;
  blockBufferOut = 0;
  v53 = 0;
  v6 = *(a1 + 384);
  if (v6)
  {
    if (DataLength >= *(a1 + 392) - v6)
    {
      v7 = *(a1 + 392) - v6;
    }

    else
    {
      v7 = DataLength;
    }

    v8 = CMBlockBufferCopyDataBytes(v2, 0, v7, (a1 + 192 + v6));
    v9 = *(a1 + 384);
    v10 = *(a1 + 392);
    *(a1 + 384) = v9 + v7;
    if (v9 + v7 != v10)
    {
      goto LABEL_81;
    }

    v11 = (a1 + 192 + *(a1 + 400));
    if (*v11 == 71)
    {
      v12 = v11[2] | ((v11[1] & 0x1F) << 8);
      if (v12 != 0x1FFF)
      {
        for (i = *(a1 + 24); i; i = *(i + 32))
        {
          v14 = *(i + 448);
          if (v14 > v12)
          {
            break;
          }

          if (v14 == v12)
          {
            v8 = (*(i + 440))();
            if (v8)
            {
              goto LABEL_81;
            }

            break;
          }
        }
      }

      v5 -= v7;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 384) = 0;
    goto LABEL_31;
  }

  v15 = *(a1 + 456);
  if (v15)
  {
    v16 = CMBlockBufferGetDataLength(v15);
    appended = CMBlockBufferCreateWithBufferReference(*(a1 + 40), *(a1 + 456), 0, 0, 0, &blockBufferOut);
    if (appended)
    {
      goto LABEL_80;
    }

    appended = CMBlockBufferAppendBufferReference(blockBufferOut, v2, 0, v5, 0);
    if (appended)
    {
      goto LABEL_80;
    }

    v5 += v16;
    v2 = blockBufferOut;
    v18 = *(a1 + 456);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 456) = 0;
    }

LABEL_18:
    v19 = 0;
    v7 = 0;
    v8 = 0;
    v20 = 3 * *(a1 + 392);
    goto LABEL_32;
  }

  if (*(a1 + 450))
  {
    v21 = *(a1 + 392);
    if (!v21 || v5 >= 3 * v21)
    {
      goto LABEL_18;
    }

    LOBYTE(v52) = 0;
    v56[0] = 0;
    appended = SniffRestOfBuffer(v2, 0, v5, v21, &v52, &offset, v56);
    if (appended)
    {
LABEL_80:
      v8 = appended;
      goto LABEL_81;
    }

    if (!v52 || v56[0] < (v5 / v21))
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    *(a1 + 450) = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_31:
  v20 = *(a1 + 392);
  v19 = 1;
LABEL_32:
  if (v5 >= v20)
  {
    v22 = v7;
    do
    {
      v52 = 0;
      v23 = v53;
      if (v53 + v7 < *(a1 + 392) + v22)
      {
        v24 = OUTLINED_FUNCTION_622();
        if (CMBlockBufferGetDataPointer(v24, v25, v26, 0, v27))
        {
          v23 = 0;
          v53 = 0;
        }

        else
        {
          v23 = v53;
          v7 = v22;
        }
      }

      if (v23 + v7 >= *(a1 + 392) + v22)
      {
        v52 = v54 + v22 - v7;
        if (!v54)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v28 = OUTLINED_FUNCTION_622();
        v8 = CMBlockBufferAccessDataBytes(v28, v29, v30, v31, v32);
        if (v8)
        {
          goto LABEL_81;
        }
      }

      if (v19 && (v33 = (v52 + *(a1 + 400)), *v33 == 71))
      {
        v34 = v33[2] | ((v33[1] & 0x1F) << 8);
        if (v34 != 0x1FFF)
        {
          for (j = *(a1 + 24); j; j = *(j + 32))
          {
            v36 = *(j + 448);
            if (v36 > v34)
            {
              break;
            }

            if (v36 == v34)
            {
              appended = (*(j + 440))();
              if (appended)
              {
                goto LABEL_80;
              }

              if (!*(a1 + 8))
              {
                v8 = 0;
                break;
              }

              v8 = 4294954511;
              goto LABEL_81;
            }
          }
        }

        v45 = *(a1 + 392);
        v22 += v45;
        v5 -= v45;
      }

      else
      {
        v20 = 3 * *(a1 + 392);
        if (v5 >= v20)
        {
          do
          {
            offset = 0;
            v50 = 0;
            v37 = OUTLINED_FUNCTION_622();
            if (FindTSHeader(v37, v38, v5, v39))
            {
              v49 = 0;
              v40 = offset;
              v41 = *(a1 + 400);
              v42 = offset - v41;
              if (offset >= v41)
              {
                offset -= v41;
                v5 += v22 - v42;
                appended = SniffRestOfBuffer(v2, v40, v5, *(a1 + 392), &v50 + 1, &v50, &v49);
                if (appended)
                {
                  goto LABEL_80;
                }

                if (v49 > 2)
                {
                  *(a1 + 450) = 0;
                  v19 = 1;
                  v22 = v42;
                }

                else
                {
                  v19 = 0;
                  v44 = *(a1 + 400) + 1;
                  v22 = v44 + v42;
                  v5 -= v44;
                }

                v8 = 0;
              }

              else
              {
                v19 = 0;
                v5 += v22 + ~offset;
                v22 = offset + 1;
              }
            }

            else
            {
              v5 = 0;
              v19 = 0;
            }

            v43 = *(a1 + 392);
          }

          while (!v19 && v5 >= 3 * v43);
          if (v19)
          {
            v20 = *(a1 + 392);
          }

          else
          {
            v20 = 3 * v43;
          }
        }

        else
        {
          v19 = 0;
        }
      }
    }

    while (v5 >= v20);
  }

  else
  {
    v22 = v7;
  }

  if (!v19)
  {
    if (!v5)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  if (v5)
  {
    v46 = OUTLINED_FUNCTION_622();
    if (!CMBlockBufferCopyDataBytes(v46, v47, v5, (a1 + 192)))
    {
      if (*(a1 + 192 + *(a1 + 400)) == 71)
      {
        *(a1 + 384) = v5;
        goto LABEL_81;
      }

LABEL_79:
      appended = CMBlockBufferCreateContiguous(*(a1 + 40), v2, *(a1 + 40), 0, v22, v5, 2u, (a1 + 456));
      goto LABEL_80;
    }
  }

LABEL_81:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v8;
}

void PatProcessPak(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 449) || a2[1] < 0)
  {
    return;
  }

  v5 = *(a1 + 48);
  if ((a2[3] & 0x30) == 0x10)
  {
    v6 = 4;
  }

  else
  {
    if ((a2[3] & 0x10) == 0 || (v9 = a2[4], v9 > 0xB3))
    {
      v7 = 1094;
LABEL_8:
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", v7, v2);
      return;
    }

    v6 = v9 + 5;
  }

  if (a2[1] < 0x40u)
  {
    return;
  }

  v10 = a2[v6];
  if (188 - v6 < (v10 + 4))
  {
    v7 = 1103;
    goto LABEL_8;
  }

  v11 = v10 + 1;
  v12 = &a2[v6 + 1 + v10];
  if (!*v12)
  {
    v13 = v12[1];
    if ((v13 & 0xC0) == 0x80)
    {
      v14 = v12[2] | ((v13 & 3) << 8);
      v15 = 185 - (v6 + v11);
      if (v14 >= 9 && v15 >= v14)
      {
        *v5 = 1;
        v5[1] = (v12[5] >> 1) & 0x1F;
        for (i = *(v3 + 16); i; i = *(i + 8))
        {
          *(i + 58) = 0;
        }

        if (v14 - 9 >= 4)
        {
          v18 = 0;
          v19 = (v12 + 8);
          if ((v14 - 9) >> 2 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = (v14 - 9) >> 2;
          }

          do
          {
            v21 = __rev16(*v19);
            if (v21)
            {
              v22 = *(v19 + 3) | ((v19[1] & 0x1F) << 8);
              if (v22 >= 0x10 && v22 != 0x1FFF)
              {
                v24 = *(a1 + 8);
                v25 = *(v24 + 16);
                if (!v25)
                {
                  goto LABEL_40;
                }

                while (*(v25 + 40) != v21)
                {
                  v25 = *(v25 + 8);
                  if (!v25)
                  {
                    goto LABEL_40;
                  }
                }

                v26 = *(v25 + 48);
                if (v26 && *(v26 + 448) == v22)
                {
                  *(v25 + 58) = 1;
                }

                else
                {
LABEL_40:
                  v36 = 0;
                  v37 = 0;
                  if (!AddProgram(v24, v21, &v36))
                  {
                    v27 = v36;
                    OUTLINED_FUNCTION_0_112();
                    if (!AddPes(v28, v29, v30, v31, v32, v33, v34, v22, 0, &v37))
                    {
                      v35 = v37;
                      *(v37 + 440) = PmapProcessPak;
                      *(v27 + 58) = 1;
                      *(v27 + 48) = v35;
                    }
                  }
                }
              }
            }

            v19 += 2;
            ++v18;
          }

          while (v18 != v20);
        }
      }
    }
  }
}

uint64_t MPEG2TSAddTrack(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return 4294954326;
  }

  v19[7] = v4;
  v19[8] = v5;
  v9 = off_1F0AE8FB8[a4];
  for (i = *(a1 + 24); i; i = *(i + 32))
  {
    v11 = *(i + 448);
    if (v11 > a2)
    {
      break;
    }

    if (v11 == a2)
    {
      return 4294954513;
    }
  }

  v18 = 0;
  v19[0] = 0;
  result = AddProgram(a1, 0x10000, &v18);
  if (!result)
  {
    result = AddPes(a1, v18, 0, a3, 1, a2, 0, a2, 1, v19);
    v16 = a3 == 1700886115 || a3 == 1748121140 || a3 == 1836070006 || a3 == 1836476772 || a3 == 2053207651;
    v17 = v19[0];
    if (v16)
    {
      *(v19[0] + 120) = 1;
    }

    *(v17 + 440) = v9;
  }

  return result;
}

double PesEmitTsPak(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 84))
  {
    return result;
  }

  if (a2[1] < 0)
  {
    PesErrorHandling(a1, 4294954320);
    return result;
  }

  v5 = *(a1 + 450);
  if ((a2[3] & 0x10) != 0)
  {
    v5 = (v5 + 1) & 0xF;
  }

  v6 = a2[3] & 0xF;
  if (*(a1 + 451) && v6 != v5)
  {
    PesErrorHandling(a1, 4294954320);
  }

  *(a1 + 451) = 1;
  *(a1 + 450) = v6;
  if ((a2[3] & 0x30) == 0x10)
  {
    v7 = 4;
    goto LABEL_16;
  }

  if ((a2[3] & 0x10) == 0)
  {
    v7 = 188;
    goto LABEL_16;
  }

  v9 = a2[4];
  if (v9 < 0xB8)
  {
    v7 = v9 + 5;
LABEL_16:
    blockBufferOut = 0;
    if (!CMBlockBufferCreateWithMemoryBlock(*(*(a1 + 8) + 40), 0, 188 - v7, *(*(a1 + 8) + 40), 0, 0, 188 - v7, 1u, &blockBufferOut))
    {
      if (!CMBlockBufferReplaceDataBytes(&a2[v7], blockBufferOut, 0, 188 - v7))
      {
        OUTLINED_FUNCTION_3_71();
        v10 = OUTLINED_FUNCTION_1_99();
        v11(v10);
      }

      CFRelease(blockBufferOut);
    }

    return result;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", 514, v2);
}

uint64_t PesProcessAdaptationPrivate(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 84))
  {
    return 0;
  }

  if (a2[1] < 0)
  {
    PesErrorHandling(a1, 4294954320);
    return 0;
  }

  if ((a2[3] & 0x20) == 0)
  {
    return 0;
  }

  v2 = a2[5];
  if ((v2 & 2) == 0)
  {
    return 0;
  }

  v3 = 12;
  if ((v2 & 0x10) == 0)
  {
    v3 = 6;
  }

  if ((v2 & 8) != 0)
  {
    v3 += 6;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFFELL | (v2 >> 2) & 1;
  v6 = &a2[v4 + 1];
  v5 = a2[v4];
  if (v4 + v5 > 0xBC)
  {
    return 4294954325;
  }

  blockBufferOut = 0;
  v7 = CMBlockBufferCreateWithMemoryBlock(*(*(a1 + 8) + 40), 0, v5, *(*(a1 + 8) + 40), 0, 0, v5, 1u, &blockBufferOut);
  if (v7)
  {
    return v7;
  }

  v8 = CMBlockBufferReplaceDataBytes(v6, blockBufferOut, 0, v5);
  if (!v8)
  {
    OUTLINED_FUNCTION_3_71();
    v9 = OUTLINED_FUNCTION_1_99();
    v8 = v10(v9);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v8;
}

void PmapProcessPak(uint64_t *a1, _BYTE *a2, __n128 a3)
{
  if (a2[1] < 0)
  {
    return;
  }

  v5 = *a1;
  if ((a2[3] & 0x30) == 0x10)
  {
    v6 = 4;
  }

  else
  {
    if ((a2[3] & 0x10) == 0 || (v8 = a2[4], v8 > 0xB3))
    {
      v7 = 861;
LABEL_13:
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", v7, v3);
      return;
    }

    v6 = v8 + 5;
  }

  if (a2[1] < 0x40u)
  {
    return;
  }

  v9 = 188 - v6;
  v10 = &a2[v6];
  v11 = a2[v6];
  if (v9 < v11 + 4)
  {
    v7 = 871;
    goto LABEL_13;
  }

  v13 = v11 + 1;
  v14 = &v10[v11 + 1];
  if (*v14 != 2)
  {
    return;
  }

  v15 = v14[1];
  if ((v15 & 0xC0) != 0x80)
  {
    return;
  }

  v16 = v14[2] | ((v15 & 3) << 8);
  if (v16 < 0xD)
  {
    v7 = 881;
    goto LABEL_13;
  }

  if (v16 + 3 > v9 - v13)
  {
    v7 = 884;
    goto LABEL_13;
  }

  *(v5 + 56) = v14[9] | ((v14[8] & 0x1F) << 8);
  v17 = v14[11] | ((v14[10] & 0xF) << 8);
  v18 = v16 - 13;
  v19 = v18 - v17;
  if (v18 >= v17)
  {
    v20 = &v14[v17 + 12];
    if (v19 < 5)
    {
LABEL_29:
      for (i = *(v5 + 24); i; i = *(i + 16))
      {
        *(i + 452) = 0;
      }

      if (v19 < 5)
      {
        v43 = 1;
LABEL_58:
        v44 = *(v5 + 56);
        for (j = *(a1[1] + 24); j; j = j[4])
        {
          v46 = *(j + 224);
          if (v46 > v44)
          {
            break;
          }

          if (v46 == v44)
          {
            v59 = j;
            if (v43)
            {
              return;
            }

            goto LABEL_66;
          }
        }

        v59 = 0;
        OUTLINED_FUNCTION_0_112();
        if (!AddPes(v47, v48, v49, v50, v51, v52, v53, v54, 0, &v59))
        {
          v55 = v59;
          *(v59 + 452) = 1;
          v55[55] = PCRPidProcessTsPak;
          if (!v43)
          {
LABEL_66:
            v56 = a1[1];
            for (k = v56[3]; k; k = *(k + 32))
            {
              if (!*(k + 657))
              {
                v58 = v56[7];
                if (v58)
                {
                  v58(*v56, v56[9], *(v5 + 40), *(k + 60), *(k + 56), a3);
                }
              }
            }
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v7 = 960;
        while (1)
        {
          v29 = v20[4] | ((v20[3] & 0xF) << 8);
          v25 = v19 - 5 >= v29;
          v19 = v19 - 5 - v29;
          if (!v25)
          {
            break;
          }

          v30 = v20[2] | ((v20[1] & 0x1F) << 8);
          if (!v30)
          {
            goto LABEL_13;
          }

          v31 = *v20;
          v32 = v20 + 5;
          if (v30 == *(v5 + 56))
          {
            v28 = 1;
          }

          for (m = *(a1[1] + 24); m; m = m[4])
          {
            v34 = *(m + 224);
            if (v34 > v30)
            {
              break;
            }

            if (v34 == v30)
            {
              v59 = m;
              v36 = *m;
              if (*(*m + 40) == 0x10000)
              {
                *(m + 16) = v31;
                v37 = m + 2;
                v38 = m[2];
                v39 = m[3];
                v40 = (v36 + 32);
                if (v38)
                {
                  v40 = (v38 + 24);
                }

                *v40 = v39;
                *v39 = v38;
                *v37 = 0;
                v41 = *(v5 + 32);
                m[3] = v41;
                *v41 = m;
                *(v5 + 32) = v37;
                *m = v5;
                goto LABEL_53;
              }

              if (*(m + 16) == v31 && v36 == v5)
              {
                goto LABEL_53;
              }

              return;
            }
          }

          v59 = 0;
          a3.n128_f64[0] = PmapAddPes(v5, v30, v31, v32, v29);
          if (v35)
          {
            break;
          }

          v27 = 1;
LABEL_53:
          v20 = &v32[v29];
          if (v19 <= 4)
          {
            v43 = v27 == 0;
            if (!v28)
            {
              goto LABEL_58;
            }

            if (v27)
            {
              goto LABEL_66;
            }

            return;
          }
        }
      }
    }

    else
    {
      v21 = v20;
      v22 = v19;
      while (1)
      {
        v23 = v21[4] | ((v21[3] & 0xF) << 8);
        v24 = v22 - 5;
        v25 = v24 >= v23;
        v22 = v24 - v23;
        if (!v25)
        {
          break;
        }

        v21 += v23 + 5;
        if (v22 <= 4)
        {
          goto LABEL_29;
        }
      }
    }
  }
}

double PmapAddPes(uint64_t *a1, int a2, int a3, unsigned __int8 *a4, unsigned int a5)
{
  v10 = 0;
  v11 = *a1;
  v40 = 0;
  if ((a3 - 1) < 2)
  {
    v13 = 1836476772;
LABEL_45:
    LOBYTE(v5) = 1;
    goto LABEL_54;
  }

  if ((a3 - 3) < 2)
  {
    OUTLINED_FUNCTION_4_77();
    v13 = 1835103588;
    goto LABEL_54;
  }

  switch(a3)
  {
    case 15:
      OUTLINED_FUNCTION_4_77();
      v13 = 1633973363;
      goto LABEL_54;
    case 16:
      v10 = 0;
      v13 = 1836070006;
      goto LABEL_45;
    case 234:
      LOBYTE(v10) = 1;
      goto LABEL_47;
    case 27:
      v10 = 0;
      v13 = 1748121140;
      goto LABEL_45;
    case 128:
LABEL_47:
      LOBYTE(v5) = v10;
      v13 = 1819304813;
      v10 = 0;
      goto LABEL_54;
    case 129:
      OUTLINED_FUNCTION_4_77();
      v13 = 1633891104;
      goto LABEL_54;
    case 135:
      OUTLINED_FUNCTION_4_77();
      v13 = 1700998451;
      goto LABEL_54;
  }

  v5 = a5;
  v12 = a4;
  switch(a3)
  {
    case 193:
      v28 = OUTLINED_FUNCTION_2_96();
      v33 = CheckDescriptorsForStreamEncryptData(v28, v29, v30, v31, v32);
      LOBYTE(v5) = 0;
      v10 = v33 ^ 1;
      v21 = 1700881203;
      v20 = v33 == 0;
LABEL_40:
      if (v20)
      {
        v13 = 1970170734;
      }

      else
      {
        v13 = v21;
      }

      goto LABEL_54;
    case 194:
      v22 = OUTLINED_FUNCTION_2_96();
      v27 = CheckDescriptorsForStreamEncryptData(v22, v23, v24, v25, v26);
      LOBYTE(v5) = 0;
      v10 = v27 ^ 1;
      v20 = v27 == 0;
      v21 = 1701143347;
      goto LABEL_40;
    case 207:
      v16 = OUTLINED_FUNCTION_2_96();
      LOBYTE(v5) = 0;
      if (CheckDescriptorsForStreamEncryptData(v16, v17, 1633772388, v18, v19))
      {
        v20 = 1;
      }

      else
      {
        v20 = 1;
      }

      v10 = 1;
      v21 = 1700880739;
      goto LABEL_40;
    case 219:
      if (!CheckDescriptorsForStreamEncryptData(a4, a5, 1635148644, 0, 0))
      {
        v34 = CheckDescriptorsForStreamEncryptData(v12, v5, 2053207651, 0, 0);
        LOBYTE(v5) = v34;
        v10 = v34 ^ 1;
        if (v34)
        {
          v13 = 2053207651;
        }

        else
        {
          v13 = 1970170734;
        }

        goto LABEL_54;
      }

      v10 = 0;
      v13 = 1700886115;
      goto LABEL_45;
  }

  if (a3 != 21)
  {
    LOBYTE(v5) = 0;
    v10 = 1;
    v13 = 1970170734;
    goto LABEL_54;
  }

  v13 = 1970170734;
  if (a5 < 2)
  {
    v10 = 1;
    goto LABEL_50;
  }

  v14 = 0;
  do
  {
    v15 = v12[1];
    if (v5 - 2 < v15)
    {
      emitter = fig_log_get_emitter();
      v38 = v6;
      v39 = 718;
LABEL_60:

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", v39, v38);
    }

    if (*v12 != 38)
    {
      goto LABEL_23;
    }

    if (v15 <= 4)
    {
      emitter = fig_log_get_emitter();
      v38 = v6;
      v39 = 721;
      goto LABEL_60;
    }

    if (v15 >= 0xD && !memcmp(&kFigMPEG2MetadataDescriptor, v12 + 2, 0xBuLL))
    {
      v13 = 1768174368;
      v10 = v5 < 2u;
      goto LABEL_50;
    }

    v14 = 1;
LABEL_23:
    LOWORD(v5) = v5 - (v15 + 2);
    v12 += v15 + 2;
  }

  while (v5 > 1u);
  v10 = 1;
  if (!v5 && v14)
  {
    OUTLINED_FUNCTION_4_77();
    v13 = 1768174368;
    goto LABEL_54;
  }

LABEL_50:
  LOBYTE(v5) = 0;
LABEL_54:
  if (!AddPes(v11, a1, v10, v13, 1, a2, a3, a2, 0, &v40))
  {
    v36 = v40;
    *(v40 + 452) = 1;
    *(v36 + 440) = PesProcessTsPak;
    *(v36 + 120) = v5;
  }

  return result;
}

void PesProcessTsPak_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigManifoldCreateForMPEG2(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  cf = 0;
  v28 = 0;
  if (a2)
  {
    FigMPEG2ParserSniff(a2, 1, &v28);
    if (v13)
    {
      return 4294951252;
    }
  }

  FigManifoldGetClassID();
  v14 = CMDerivedObjectCreate();
  if (v14)
  {
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Default = a1;
  if (!a1)
  {
    Default = CFAllocatorGetDefault();
  }

  *DerivedStorage = CFRetain(Default);
  *(DerivedStorage + 64) = a3;
  *(DerivedStorage + 72) = a4;
  *(DerivedStorage + 80) = a5;
  *(DerivedStorage + 88) = a6;
  *(DerivedStorage + 24) = cf;
  *(DerivedStorage + 32) = 1;
  v17 = MEMORY[0x1E6960C70];
  v18 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 120) = *MEMORY[0x1E6960C70];
  v19 = *(v17 + 16);
  *(DerivedStorage + 136) = v19;
  *(DerivedStorage + 144) = v18;
  *(DerivedStorage + 160) = v19;
  *(DerivedStorage + 184) = v19;
  *(DerivedStorage + 168) = v18;
  *(DerivedStorage + 192) = 0;
  *(DerivedStorage + 40) = 0;
  CMTimeMake(&v27, 30, 1);
  v26 = v27;
  FigMPEG2ParserCreate(a1, 2, &v26, 0, 1, mmNewTrackCallback, mmErrorCallback, DerivedStorage, (DerivedStorage + 48));
  if (v20)
  {
LABEL_12:
    v22 = v20;
    CFRelease(cf);
    return v22;
  }

  v21 = FigReentrantMutexCreate();
  *(DerivedStorage + 16) = v21;
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, LODWORD(v26.value));
    goto LABEL_12;
  }

  v22 = 0;
  *a7 = cf;
  return v22;
}

double mmNewTrackCallback(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = (a2 + 40);
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (*(v10 + 5) == a4)
    {
      return result;
    }
  }

  v11 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10E0040A8C83A82uLL);
  if (v11)
  {
    v14 = v11;
    v11[1] = a2;
    *(v11 + 4) = a3;
    *(v11 + 5) = a4;
    *(v11 + 6) = a5;
    *(v11 + 7) = a5;
    v11[22] = 0;
    v11[23] = v11 + 22;
    mmUpdateTrackType(v11, a5);
    *(v14 + 44) = *(a2 + 32);
    v15 = MEMORY[0x1E6960C70];
    *(v14 + 104) = *(MEMORY[0x1E6960C70] + 16);
    *(v14 + 88) = *v15;
    ++*(a2 + 32);
    *(a2 + 11) = 1;
    if (a5 == 1768174368 || !mmSampleGeneratorCreate(v14) && (*(v14 + 112) != 1936684398 || (v18 = 0, v19 = 0, FigMPEG2ParserCopyAudioConfigurationForTrack(*(a2 + 48), *(v14 + 20), &v19, &v18), !v16) && (!v19 || !v18 || (v17 = FigMPEG2SampleGeneratorSetAudioConfiguration(*(v14 + 32), v19, v18), free(v19), !v17))))
    {
      *v14 = *(a2 + 40);
      *(a2 + 40) = v14;
      mmInvokeNewTrackCallback(a2, v14);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<<mpeg manifold>>", 1396, v5);
  }

  return result;
}

uint64_t FigMPEG2ManifoldIsEveryTrackIDUnique(uint64_t a1)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 1;
  }

  v3 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = *(v3 + 40);
  if (!v5)
  {
LABEL_10:
    v9 = 1;
    if (!Mutable)
    {
      return v9;
    }

LABEL_11:
    CFRelease(Mutable);
    return v9;
  }

  while (1)
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (CFArrayGetCount(Mutable) >= 1)
    {
      break;
    }

LABEL_7:
    CFArrayAppendValue(Mutable, SInt32);
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    v5 = *v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v7);
    if (CFEqual(SInt32, ValueAtIndex))
    {
      break;
    }

    if (++v7 >= CFArrayGetCount(Mutable))
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
  if (Mutable)
  {
    goto LABEL_11;
  }

  return v9;
}

double FigMPEG2ManifoldInstallDuplicateTrack()
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 40);
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);

  return mmNewTrackCallback(DerivedStorage, DerivedStorage, v2, v3, 1768174368);
}

uint64_t MPEG2ManifoldCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78(DerivedStorage);
  OUTLINED_FUNCTION_1_100();
  if (*(v4 + 8))
  {
    v11 = 4294954511;
    goto LABEL_12;
  }

  if (CFEqual(a2, @"FMFD_ParserState"))
  {
    valuePtr = 0;
    if (*(v4 + 12))
    {
      if (*(v4 + 40))
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      valuePtr = v9;
    }

    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    if (!CFEqual(a2, @"FMFD_Type"))
    {
      v11 = 4294954512;
      goto LABEL_12;
    }

    v10 = CFStringCreateWithCString(a3, "MPEG2", 0x8000100u);
  }

  v11 = 0;
  *a4 = v10;
LABEL_12:
  OUTLINED_FUNCTION_2_97();
  return v11;
}

uint64_t MPEG2ManifoldSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78(DerivedStorage);
  OUTLINED_FUNCTION_1_100();
  if (!a2)
  {
    goto LABEL_14;
  }

  if (*(v3 + 8))
  {
    v7 = 4294954511;
    goto LABEL_5;
  }

  if (!CFEqual(a2, @"FMFD_MaxSamplesPerBuffer"))
  {
    if (!CFEqual(a2, @"FMFD_HintForStartTime"))
    {
      v7 = 4294954512;
      goto LABEL_5;
    }

    if ((*(v3 + 156) & 0x1D) == 1)
    {
      v7 = 4294951253;
      goto LABEL_5;
    }

    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v13, a3);
        value = v13.value;
        flags = v13.flags;
        timescale = v13.timescale;
        if ((v13.flags & 0x1D) == 1)
        {
          v7 = 0;
          epoch = v13.epoch;
          *(v3 + 120) = value;
          *(v3 + 128) = timescale;
          *(v3 + 132) = flags;
          *(v3 + 136) = epoch;
          goto LABEL_5;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_15:
        v7 = v12;
        goto LABEL_5;
      }
    }

LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  LODWORD(v13.value) = 0;
  CFNumberGetValue(a3, kCFNumberIntType, &v13);
  v7 = 0;
  *(v3 + 56) = SLODWORD(v13.value);
LABEL_5:
  OUTLINED_FUNCTION_2_97();
  return v7;
}

uint64_t MPEG2ManifoldCopyCurrentFormatDescriptionForTrack(uint64_t a1, int a2, uint64_t *a3)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78(DerivedStorage);
  OUTLINED_FUNCTION_6_62();
  if (v8)
  {
    v10 = 4294954511;
  }

  else
  {
    v9 = (v3 + 40);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (*(v9 + 11) == a2)
      {
        v10 = 0;
        *a3 = FigFormatDescriptionRetain();
        v7 = *(v3 + 112) - 1;
        goto LABEL_7;
      }
    }

    v10 = 4294951254;
  }

LABEL_7:
  *(v3 + 112) = v7;
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t MPEG2ManifoldInstallCallbacksForTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78(DerivedStorage);
  OUTLINED_FUNCTION_1_100();
  if (a3 && *(v4 + 8))
  {
    v14 = 4294954511;
  }

  else
  {
    v9 = v4 + 40;
    do
    {
      v9 = *v9;
      if (!v9)
      {
        v14 = 4294951254;
        if (!a3)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    while (*(v9 + 44) != a2);
    if (a3)
    {
      *(v9 + 56) = *a3;
      *(v9 + 64) = a3[1];
      *(v9 + 72) = a3[2];
      v10 = *(v4 + 48);
      if (v10)
      {
        if (*(v9 + 40))
        {
          v14 = 0;
        }

        else
        {
          *(&v17 + 1) = mmMPEG2ParserNoteCommandCallback;
          v11 = *(v9 + 28) == 1768174368;
          v12 = mmMPEG2ParserEmitSampleDataCallback;
          if (*(v9 + 28) == 1768174368)
          {
            v12 = mmMPEG2ParserEmitMetadataDataCallback;
          }

          *&v17 = v12;
          FigMPEG2ParserInstallCallbacksForTrack(v10, *(v9 + 20), &v17, v9, v11);
          v14 = v13;
          if (!v13)
          {
            *(v9 + 40) = 1;
          }
        }
      }

      else
      {
        v14 = 4294951254;
      }
    }

    else
    {
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      v14 = 4294951254;
      *(v9 + 72) = 0;
    }

    *(v9 + 80) = a4;
    if (a3)
    {
LABEL_18:
      if (v14)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, DWORD2(v17), v18);
        v14 = v15;
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_2_97();
  return v14;
}

uint64_t MPEG2ManifoldFlush(const void *a1)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 112);
  if (*(DerivedStorage + 8))
  {
    v3 = 4294954511;
  }

  else if (*(DerivedStorage + 48))
  {
    if (*(DerivedStorage + 9))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
      v3 = v5;
    }

    else
    {
      v3 = mmDoFlush(DerivedStorage);
      *(DerivedStorage + 10) = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  --*(DerivedStorage + 112);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v3;
}

uint64_t MPEG2ManifoldCopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, CFNumberRef *a5)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78(DerivedStorage);
  OUTLINED_FUNCTION_1_100();
  if (*(v5 + 8))
  {
    v13 = 4294954511;
  }

  else if (*(v5 + 48))
  {
    v10 = (v5 + 40);
    do
    {
      v10 = *v10;
      if (!v10)
      {
        v13 = 4294951254;
        goto LABEL_13;
      }
    }

    while (*(v10 + 11) != a2);
    if (CFEqual(a3, @"FMFD_TrackEstimatedDataRate"))
    {
      valuePtr = 0;
      TrackBitRate = FigMPEG2SampleGeneratorGetTrackBitRate(v10[4]);
      if (TrackBitRate)
      {
        v13 = TrackBitRate;
      }

      else
      {
        valuePtr /= 8;
        v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
        *a5 = v12;
        if (v12)
        {
          v13 = 0;
        }

        else
        {
          v13 = 4294954510;
        }
      }
    }

    else
    {
      v13 = 4294954512;
    }
  }

  else
  {
    v13 = 4294954513;
  }

LABEL_13:
  OUTLINED_FUNCTION_2_97();
  return v13;
}

uint64_t MPEG2ManifoldReannounceUnregisteredTracks()
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78(DerivedStorage);
  OUTLINED_FUNCTION_6_62();
  if (v3)
  {
    v6 = 4294954511;
  }

  else if (*(v0 + 48))
  {
    *(v0 + 10) = 0;
    v4 = *(v0 + 40);
    if (v4)
    {
      while (1)
      {
        if (!v4[7] && !v4[8])
        {
          FormatCallback = mmInvokeNewTrackCallback(v0, v4);
          if (FormatCallback)
          {
            break;
          }

          if (v4[7])
          {
            FormatCallback = mmMPEG2MakeFormatCallback(v4);
            if (FormatCallback)
            {
              break;
            }
          }
        }

        v4 = *v4;
        if (!v4)
        {
          v6 = 0;
          goto LABEL_12;
        }
      }

      v6 = FormatCallback;
LABEL_12:
      v2 = *(v0 + 112) - 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 4294954513;
  }

  *(v0 + 112) = v2;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t mmDoFlush(uint64_t a1)
{
  FigMPEG2ParserIssueCommands(*(a1 + 48), 1);
  if (v2)
  {
    return v2;
  }

  v3 = (a1 + 40);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = mmFlushStream(v3);
    mmEmitBufferClear(v3);
    if (v4)
    {
      return v4;
    }
  }

  return 0;
}

uint64_t mmMPEG2ParserEmitMetadataDataCallback(int a1, int a2, uint64_t a3, CMBlockBufferRef targetBBuf, CMTime *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (*(v5 + 8))
  {
    return 4294954511;
  }

  if (a5->flags)
  {
    returnedPointerOut.value = 0;
    mmAdjustPTSDTS(v5, a5, 0);
    Empty = CMBlockBufferAccessDataBytes(targetBBuf, 0, 0xAuLL, &temporaryBlock, &returnedPointerOut);
    if (Empty)
    {
      return Empty;
    }

    if (*returnedPointerOut.value == 73 && *(returnedPointerOut.value + 1) == 68 && *(returnedPointerOut.value + 2) == 51)
    {
      v10 = *(a3 + 120);
      *(a3 + 128) = ((*(returnedPointerOut.value + 6) & 0x7F) << 21) | ((*(returnedPointerOut.value + 7) & 0x7F) << 14) | ((*(returnedPointerOut.value + 8) & 0x7F) << 7) | *(returnedPointerOut.value + 9) & 0x7F;
      if (v10)
      {
        CFRelease(v10);
        *(a3 + 120) = 0;
      }

      Empty = CMBlockBufferCreateEmpty(*v5, 0, 0, (a3 + 120));
      if (Empty)
      {
        return Empty;
      }

      v11 = *&a5->value;
      *(a3 + 152) = a5->epoch;
      *(a3 + 136) = v11;
    }
  }

  v12 = *(a3 + 120);
  if (!v12)
  {
    return 0;
  }

  CMBlockBufferAppendBufferReference(v12, targetBBuf, 0, 0, 0);
  if (CMBlockBufferGetDataLength(*(a3 + 120)) < *(a3 + 128))
  {
    return 0;
  }

  if (!*(a3 + 48))
  {
    temporaryBlock.duration.value = 0;
    Empty = CMFormatDescriptionCreate(*v5, 0x6D657461u, 0x69643320u, 0, &temporaryBlock);
    if (!Empty)
    {
      v21 = FigManifoldRetain(*(v5 + 24));
      v17 = mmMPEG2NewFormatCallback(v21, a3, temporaryBlock.duration.value);
      v22 = *(v5 + 8);
      FigFormatDescriptionRelease();
      CFRelease(*(v5 + 24));
      if (v17)
      {
        return v17;
      }

      if (!v22)
      {
        goto LABEL_14;
      }

      return 4294954511;
    }

    return Empty;
  }

LABEL_14:
  cf = 0;
  sampleSizeArray = CMBlockBufferGetDataLength(*(a3 + 120));
  if (*(a3 + 100))
  {
    *&temporaryBlock.duration.value = *(a3 + 136);
    temporaryBlock.duration.epoch = *(a3 + 152);
    OUTLINED_FUNCTION_5_67();
    if (CMTimeCompare(&temporaryBlock.duration, &returnedPointerOut) <= 0)
    {
      OUTLINED_FUNCTION_5_67();
      CMTimeMake(&rhs, 1, 90000);
      CMTimeAdd(&temporaryBlock.duration, &returnedPointerOut, &rhs);
      *(a3 + 136) = *&temporaryBlock.duration.value;
      *(a3 + 152) = temporaryBlock.duration.epoch;
    }
  }

  temporaryBlock.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  temporaryBlock.presentationTimeStamp = *(a3 + 136);
  CMTimeMake(&temporaryBlock.duration, 1, 90000);
  *(a3 + 88) = *(a3 + 136);
  *(a3 + 104) = *(a3 + 152);
  Empty = CMSampleBufferCreate(*v5, *(a3 + 120), 1u, 0, 0, *(a3 + 48), 1, 1, &temporaryBlock, 1, &sampleSizeArray, &cf);
  if (Empty)
  {
    return Empty;
  }

  v13 = *(a3 + 64);
  if (!v13)
  {
LABEL_28:
    v19 = *(a3 + 120);
    if (v19)
    {
      CFRelease(v19);
      *(a3 + 120) = 0;
    }

    *(a3 + 128) = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  v14 = *(a3 + 80);
  ++*(a3 + 160);
  v15 = *(v5 + 112);
  *(v5 + 112) = 0;
  if (v15 >= 1)
  {
    v16 = v15;
    do
    {
      FigSimpleMutexUnlock();
      --v16;
    }

    while (v16);
  }

  v17 = v13(*(v5 + 24), *(a3 + 44), v14, 0, 0, cf);
  do
  {
    FigSimpleMutexLock();
    v18 = *(v5 + 112) + 1;
    *(v5 + 112) = v18;
  }

  while (v18 < v15);
  if (!v17)
  {
    if (*(v5 + 8) || *(v5 + 10))
    {
      return 4294951251;
    }

    goto LABEL_28;
  }

  return v17;
}

uint64_t mmMPEG2ParserEmitSampleDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, CMTime *a5, CMTime *a6, uint64_t a7)
{
  v7 = *(a3 + 8);
  if (*(v7 + 8) || !*(a3 + 32))
  {
    return 4294954511;
  }

  mmAdjustPTSDTS(*(a3 + 8), a5, a6);
  if ((a5->flags & 0x1D) == 1 && (*(v7 + 180) & 1) == 0)
  {
    v15 = *(a3 + 24);
    v16 = v15 == 1700886115 || v15 == 2053207651;
    v17 = v16 || v15 == 1748121140;
    if (v17 && !*(v7 + 192))
    {
      v18 = *&a5->value;
      *(v7 + 184) = a5->epoch;
      *(v7 + 168) = v18;
    }
  }

  if (*(a3 + 168))
  {
    *(a3 + 168) = 0;
    mmUpdateTrackType(a3, *(a3 + 24));
    if (*(a3 + 28) != 1768174368)
    {
      v26 = mmSampleGeneratorCreate(a3);
      if (v26)
      {
        return v26;
      }
    }
  }

  v29 = *&a5->value;
  epoch = a5->epoch;
  v27 = *&a6->value;
  v28 = a6->epoch;
  DecryptionTypeFromTrackType = getDecryptionTypeFromTrackType(*(a3 + 24));
  v35 = 0;
  v20 = *(a3 + 8);
  v21 = MEMORY[0x1E695E4D0];
  if (*(v20 + 96))
  {
    FigBasicAESCPECryptorGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v22 = *(v20 + 96);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v23)
      {
        return 4294954514;
      }

      v8 = v23(v22, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v35);
      v24 = v35;
      if (v8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v24 = CFRetain(*v21);
      v35 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 == *v21;
  v33 = v29;
  v34 = epoch;
  v31 = v27;
  v32 = v28;
  v8 = mmPushFrame(a3, DecryptionTypeFromTrackType, v25, a4, &v33, &v31, a7);
  v24 = v35;
LABEL_28:
  if (v24)
  {
    CFRelease(v24);
  }

  return v8;
}

uint64_t mmMPEG2MakeFormatCallback(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 96);
  if (*(v2 + 96) == 0)
  {
    goto LABEL_19;
  }

  v4 = *(a1 + 112);
  if (v4 != 1936684398)
  {
    if (v4 == 1986618469)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_20;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 48));
  v7 = MediaSubType - 2053202739 > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0;
  v8 = !v7 || MediaSubType == 2053464883;
  if (!v8 && MediaSubType != 2053202275)
  {
LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  v10 = *(a1 + 8);
  v5 = *(v10 + 104);
  if (!v5)
  {
    v5 = *(v10 + 96);
  }

LABEL_20:
  v11 = *(a1 + 56);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 80);
  v14 = *(v12 + 112);
  *(v12 + 112) = 0;
  v15 = v12;
  if (v14 >= 1)
  {
    v16 = v14;
    do
    {
      FigSimpleMutexUnlock();
      --v16;
    }

    while (v16);
    v15 = *(a1 + 8);
  }

  v17 = v11(*(v15 + 24), *(a1 + 44), v13, *(a1 + 48), v5);
  do
  {
    FigSimpleMutexLock();
    v18 = *(v12 + 112) + 1;
    *(v12 + 112) = v18;
  }

  while (v18 < v14);
  if (!v17)
  {
    if (*(v12 + 8) || *(v12 + 10))
    {
      return 4294951251;
    }

    else
    {
      v17 = 0;
      *(a1 + 41) = 0;
    }
  }

  return v17;
}

uint64_t mmSampleGeneratorCreate(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 32);
  FigMPEG2SampleGeneratorDestroy(*(a1 + 32));
  *v3 = 0;
  FigMPEG2SampleGeneratorCreate(*v2, mmMPEG2NewFormatCallback, mmMPEG2NewSampleCallback, a1, *(a1 + 28), 0, v3);
  v5 = v4;
  if (!v4)
  {
    v6 = *(v2 + 56);
    if (v6 >= 1)
    {
      FigMPEG2SampleGeneratorSetMaxFramesPerSampleBuffer(*v3, v6);
    }
  }

  return v5;
}

uint64_t mmMPEG2NewSampleCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a2 + 8);
  if (*(v5 + 8))
  {
    return 4294954511;
  }

  v7 = (a2 + 64);
  if (!*(a2 + 64))
  {
    return 0;
  }

  if (*(a2 + 41))
  {
    mmMPEG2MakeFormatCallback(a2);
  }

  if (*(v5 + 180))
  {
    v11 = *(a2 + 24);
    v12 = v11 == 1700886115 || v11 == 2053207651;
    if (v12 || v11 == 1748121140)
    {
      v25 = *(v5 + 168);
      v14 = CMTimeCopyAsDictionary(&v25, *MEMORY[0x1E695E480]);
      if (v14)
      {
        v15 = v14;
        CMSetAttachment(a3, *MEMORY[0x1E6962E18], v14, 1u);
        CFRelease(v15);
      }

      v16 = MEMORY[0x1E6960C70];
      *(v5 + 168) = *MEMORY[0x1E6960C70];
      *(v5 + 184) = *(v16 + 16);
      *(v5 + 192) = 1;
    }
  }

  v17 = (a5 >> 4) & 1;
  if (*v7)
  {
    v18 = *v7;
  }

  else
  {
    v18 = 0;
  }

  v20 = *(a2 + 80);
  v21 = *(v5 + 112);
  *(v5 + 112) = 0;
  if (v21 >= 1)
  {
    v22 = v21;
    do
    {
      FigSimpleMutexUnlock();
      --v22;
    }

    while (v22);
  }

  v19 = v18(*(v5 + 24), *(a2 + 44), v20, v17, a4, a3);
  do
  {
    FigSimpleMutexLock();
    v23 = *(v5 + 112) + 1;
    *(v5 + 112) = v23;
  }

  while (v23 < v21);
  if (!v19)
  {
    v19 = 4294951251;
    if (!*(v5 + 8))
    {
      if (*(v5 + 10))
      {
        return 4294951251;
      }

      else
      {
        return 0;
      }
    }
  }

  return v19;
}

uint64_t mmInvokeNewTrackCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 44);
  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      FigSimpleMutexUnlock();
      --v6;
    }

    while (v6);
  }

  v7 = (*(a1 + 64))(*(a1 + 24), *(a1 + 88), v3, v4);
  do
  {
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_1_100();
  }

  while (v8 < v5);
  if (!v7)
  {
    if (*(a1 + 8))
    {
      return 4294951251;
    }

    else if (*(a1 + 10))
    {
      return 4294951251;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

void MPEG2ManifoldInjectData(_DWORD *a1)
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

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MPEG2ManifoldNoteStreamEnd(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mmPushFrame(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigXMLServiceReadAndCopyParsedXML(uint64_t a1, CFTypeRef *a2)
{
  v13 = 0;
  xdict = 0;
  number = 0;
  cf = 0;
  valuePtr = -1;
  v9 = 0;
  if (qword_1ED4CACF0 != -1)
  {
    dispatch_once(&qword_1ED4CACF0, &__block_literal_global_44);
  }

  v3 = _MergedGlobals_70;
  if (!_MergedGlobals_70)
  {
    v4 = FigXPCCreateBasicMessage();
    if (v4)
    {
      goto LABEL_20;
    }

    v5 = *MEMORY[0x1E695E480];
    v4 = CMByteStreamCreateForFileURL();
    if (v4)
    {
      goto LABEL_20;
    }

    CMBaseObject = CMByteStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7)
    {
      v3 = 4294954514;
      goto LABEL_13;
    }

    v4 = v7(CMBaseObject, *MEMORY[0x1E6960DC0], v5, &number);
    if (v4 || (CFNumberGetValue(number, kCFNumberIntType, &valuePtr), xpc_dictionary_set_fd(xdict, "fd", valuePtr), v4 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v4))
    {
LABEL_20:
      v3 = v4;
    }

    else
    {
      v3 = fxs_deserializeFigXMLNode(v13, 0, &v9);
      if (!a2 || v3)
      {
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        *a2 = v9;
      }
    }
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t fxs_deserializeFigXMLNode(void *a1, uint64_t a2, CFTypeRef *a3)
{
  value = a1;
  cf = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  if (!a2)
  {
    value = xpc_dictionary_get_value(a1, "root");
  }

  if (!value)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
    goto LABEL_28;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    goto LABEL_28;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    goto LABEL_28;
  }

  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    goto LABEL_28;
  }

  v7 = *MEMORY[0x1E695E480];
  if (!a2)
  {
    v6 = FigXMLNodeCreateNode(v7, 0, &v19);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_28:
    v14 = v6;
    goto LABEL_18;
  }

  v6 = FigXMLNodeCreateChildNode(v7, a2, 0, &v19);
  if (v6)
  {
    goto LABEL_28;
  }

LABEL_11:
  v8 = xpc_dictionary_get_value(value, "children");
  if (v8)
  {
    v9 = v8;
    count = xpc_array_get_count(v8);
    if (count)
    {
      v11 = count;
      v12 = 0;
      do
      {
        v13 = xpc_array_get_value(v9, v12);
        v6 = fxs_deserializeFigXMLNode(v13, v19, a3);
        if (v6)
        {
          goto LABEL_28;
        }
      }

      while (v11 != ++v12);
    }
  }

  v14 = 0;
  if (!a2)
  {
    *a3 = v19;
    v19 = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t FigXMLServiceReadFromMemoryAndCopyParsedXML(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v9 = 0;
  v10 = 0;
  cf = 0;
  if (qword_1ED4CACF0 != -1)
  {
    dispatch_once(&qword_1ED4CACF0, &__block_literal_global_44);
  }

  v5 = _MergedGlobals_70;
  if (!_MergedGlobals_70)
  {
    v6 = FigXPCCreateBasicMessage();
    if (v6 || (v6 = FigXPCMessageSetBlockBuffer(), v6) || (v6 = FigXPCMessageSetCFURL(), v6) || (v6 = FigXPCMessageSetCFString(), v6) || (v6 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v6))
    {
      v5 = v6;
    }

    else
    {
      v5 = fxs_deserializeFigXMLNode(v9, 0, &cf);
      if (!a4 || v5)
      {
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *a4 = cf;
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v5;
}

CMSampleBufferRef sbp_vc_getAndRetainNextSampleBufferIfReady(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  sampleBufferOut = 0;
  if (*(DerivedStorage + 176) || (result = sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady(a1, 0), (*(DerivedStorage + 176) = result) != 0))
  {
    v4 = sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady(a1, &v35);
    if (v4)
    {
      v5 = v4;
      result = *(DerivedStorage + 176);
      *(DerivedStorage + 176) = v5;
      return result;
    }

    if (v35)
    {
      memset(&v33, 0, sizeof(v33));
      CMSampleBufferGetPresentationTimeStamp(&v33, *(DerivedStorage + 176));
      memset(&v32, 0, sizeof(v32));
      v6 = *(DerivedStorage + 144);
      *&v26.duration.value = *(DerivedStorage + 128);
      *&v26.duration.epoch = v6;
      *&v26.presentationTimeStamp.timescale = *(DerivedStorage + 160);
      CMTimeRangeGetEnd(&v32, &v26);
      memset(&v31, 0, sizeof(v31));
      Duration = CMSampleBufferGetDuration(&v31, *(DerivedStorage + 176));
      if ((v32.flags & 0x1D) != 1 || OUTLINED_FUNCTION_1_101(Duration, v8, v9, v10, v11, v12, v13, v14, v33.value, *&v33.timescale, v33.epoch, v26.presentationTimeStamp.value, *&v26.presentationTimeStamp.timescale, v26.presentationTimeStamp.epoch, v26.decodeTimeStamp.value, *&v26.decodeTimeStamp.timescale, v26.decodeTimeStamp.epoch, v27, rhs.value, *&rhs.timescale, rhs.epoch, v29, *&lhs.value, lhs.epoch) > 0 || (v31.flags & 1) != 0 && (lhs = v33, rhs = v31, v15 = CMTimeAdd(&v26.duration, &lhs, &rhs), OUTLINED_FUNCTION_1_101(v15, v16, v17, v18, v19, v20, v21, v22, v26.duration.value, *&v26.duration.timescale, v26.duration.epoch, v26.presentationTimeStamp.value, *&v26.presentationTimeStamp.timescale, v26.presentationTimeStamp.epoch, v26.decodeTimeStamp.value, *&v26.decodeTimeStamp.timescale, v26.decodeTimeStamp.epoch, v27, rhs.value, *&rhs.timescale, rhs.epoch, v29, *&lhs.value, lhs.epoch) > 0))
      {
        sampleBufferOut = *(DerivedStorage + 176);
      }

      else
      {
        v26.presentationTimeStamp = v33;
        v23 = *MEMORY[0x1E6960C70];
        v26.decodeTimeStamp.epoch = *(MEMORY[0x1E6960C70] + 16);
        lhs = v32;
        memset(&v26, 0, 24);
        *&v26.decodeTimeStamp.value = v23;
        rhs = v33;
        CMTimeSubtract(&v26.duration, &lhs, &rhs);
        v24 = CFGetAllocator(*(DerivedStorage + 176));
        if (CMSampleBufferCreateCopyWithNewTiming(v24, *(DerivedStorage + 176), 1, &v26, &sampleBufferOut))
        {
          return sampleBufferOut;
        }

        v25 = *(DerivedStorage + 176);
        if (!v25)
        {
          return sampleBufferOut;
        }

        CFRelease(v25);
      }

      *(DerivedStorage + 176) = 0;
      return sampleBufferOut;
    }

    return 0;
  }

  return result;
}

void FigSampleBufferProviderCreateForVisualContext_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProviderCreateForVisualContext_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProviderCreateForVisualContextGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigPlaybackMemoryReportMemoryStatus()
{
  buffer[58] = *MEMORY[0x1E69E9840];
  v0 = getpid();
  bzero(buffer, 0x1D0uLL);
  if (!proc_pid_rusage(v0, 6, buffer) && dword_1EAF17388)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t __FigPlaybackMemoryReporterStart_block_invoke()
{
  FigPlaybackMemoryReportMemoryStatus();

  return FigPlaybackMemoryReportCurrentTransactions();
}

double FigPictureCollectionCreateBrandsFromByteStream(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  if (!FigAtomStreamInitWithByteStream() && !FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v3, v4);
  }

  return result;
}

uint64_t CreateGroupsListDescriptor(uint64_t a1, __CFArray **a2)
{
  cf = 0;
  IFFInformationGetGroupsList();
  if (v2)
  {
    return v2;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t IFFPictureCollectionCopyPictureByIndex(uint64_t a1, CFIndex a2, CFTypeRef *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v14 = 0;
  cf = 0;
  IFFInformationGetPictureByIndex(*DerivedStorage, a2, &v15, &v14);
  v8 = 4294950136;
  if (!v9 && v15)
  {
    v10 = CFGetAllocator(*DerivedStorage);
    v11 = CreatePictureReader(v10, *DerivedStorage, v15, &cf);
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      if (a3)
      {
        *a3 = cf;
        cf = 0;
      }

      v8 = 0;
      if (a4)
      {
        *a4 = v14;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t IFFPictureCollectionCopyPictureByID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = 0;
  IFFInformationGetPictureByID(*DerivedStorage, v3);
  return 4294950136;
}

double PictureReaderCopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, uint64_t *a4)
{
  UInt32 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v7 = DerivedStorage;
  if (FigCFEqual())
  {
    IsDisplayable = IFFPictureIsDisplayable(*(v7 + 8));
    v10 = MEMORY[0x1E695E4D0];
    if (!IsDisplayable)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    OUTLINED_FUNCTION_4_79();
    IFFPictureIsPrimary();
    if (v11)
    {
      return result;
    }

    if (LOBYTE(cf[0]))
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v10 = MEMORY[0x1E695E4C0];
    }

LABEL_11:
    v12 = *v10;
    UInt32 = v12;
    if (!v12)
    {
LABEL_13:
      *a4 = UInt32;
      return result;
    }

LABEL_12:
    CFRetain(v12);
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v14 = *v7;
    v13 = *(v7 + 8);
    theArray = 0;
    cf[0] = 0;
    v75 = 0;
    v15 = *(*(v13 + 8) + 44);
    if (v15 != 1768187246 && v15 != 1953325424 && v15 != 1768912492)
    {
      Mutable = 0;
      v28 = -12783;
      goto LABEL_38;
    }

    v18 = IFFPictureCopyDerivation(v13, cf, &theArray, &v75);
    if (v18)
    {
      v28 = v18;
      Mutable = 0;
      goto LABEL_38;
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
LABEL_31:
        v23 = CFDictionaryCreateMutable(a3, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v23)
        {
          v24 = v23;
          CFDictionarySetValue(v23, @"DerivationType", cf[0]);
          CFDictionarySetValue(v24, @"DerivationParents", Mutable);
          if (v75)
          {
            CFDictionarySetValue(v24, @"DerivationDetail", v75);
          }

          v28 = 0;
          UInt32 = v24;
LABEL_38:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v75)
          {
            CFRelease(v75);
          }

          if (!v28)
          {
            goto LABEL_13;
          }

          return result;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        v19 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
          value = 0;
          v21 = CreatePictureReader(a3, v14, ValueAtIndex, &value);
          if (v21)
          {
            break;
          }

          v22 = value;
          CFArrayAppendValue(Mutable, value);
          if (v22)
          {
            CFRelease(v22);
          }

          if (++v19 >= CFArrayGetCount(theArray))
          {
            goto LABEL_31;
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v28 = v21;
    goto LABEL_38;
  }

  if (FigCFEqual())
  {
    v25 = OUTLINED_FUNCTION_3_72();
    if (!IFFPictureCopyCodecType(v25, v26))
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v29 = OUTLINED_FUNCTION_3_72();
    result = IFFPictureCopyItemType(v29);
    if (!v30)
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v31 = OUTLINED_FUNCTION_3_72();
    result = IFFPictureCopyPictureDimensionsDictionary(v31);
    if (!v32)
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v33 = OUTLINED_FUNCTION_3_72();
    IFFPictureCopyCleanApertureDictionary(v33, v34);
    if (!v35)
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v36 = OUTLINED_FUNCTION_3_72();
    result = IFFPictureCopyRotationDegreesCCW(v36);
    if (!v37)
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v38 = OUTLINED_FUNCTION_3_72();
    if (!IFFPictureCopyPixelAspectRatioDictionary(v38))
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v39 = OUTLINED_FUNCTION_3_72();
    result = IFFPictureCopyPixelInformationArray(v39, v40);
    if (!v41)
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v42 = OUTLINED_FUNCTION_3_72();
    result = IFFPictureCopyMirroringDirection(v42);
    if (!v43)
    {
      goto LABEL_13;
    }
  }

  else if (FigCFEqual())
  {
    v44 = OUTLINED_FUNCTION_3_72();
    if (!IFFPictureCopyFormatDescription(v44, v45))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        result = IFFPictureCopyAuxiliaryType(*(v7 + 8), 0, &UInt32);
        if (!v49 && UInt32)
        {
          goto LABEL_13;
        }

        return result;
      }

      if (FigCFEqual())
      {
        v50 = OUTLINED_FUNCTION_4_79();
        result = IFFPictureTilesHaveSameBaseProperties(v50, v51);
        if (v52)
        {
          return result;
        }
      }

      else
      {
        if (!FigCFEqual())
        {
          if (FigCFEqual())
          {
            UInt32 = FigCFNumberCreateUInt32();
            goto LABEL_13;
          }

          if (FigCFEqual())
          {
            v63 = OUTLINED_FUNCTION_3_72();
            result = IFFPictureCopyLayerSelector(v63);
            if (!v64)
            {
              goto LABEL_13;
            }
          }

          else if (FigCFEqual())
          {
            v65 = OUTLINED_FUNCTION_3_72();
            result = IFFPictureCopyOperatingPointSelector(v65);
            if (!v66)
            {
              goto LABEL_13;
            }
          }

          else if (FigCFEqual())
          {
            v67 = OUTLINED_FUNCTION_3_72();
            result = IFFPictureCopyLayerSizes(v67);
            if (!v68)
            {
              goto LABEL_13;
            }
          }

          else if (FigCFEqual())
          {
            v69 = OUTLINED_FUNCTION_3_72();
            result = IFFPictureCopyStereoMetadataProperties(v69, v70);
            if (!v71)
            {
              goto LABEL_13;
            }
          }

          return result;
        }

        v53 = OUTLINED_FUNCTION_4_79();
        result = IFFPictureTilesHaveTransformativeProperties(v53, v54, v55, v56, v57, v58, v59, v60, v72, UInt32, value, v75, theArray, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6]);
        if (v61)
        {
          return result;
        }
      }

      if (LOBYTE(cf[0]))
      {
        v62 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v62 = MEMORY[0x1E695E4C0];
      }

      v12 = *v62;
      UInt32 = *v62;
      goto LABEL_12;
    }

    v46 = OUTLINED_FUNCTION_3_72();
    result = IFFPictureCopyAuxiliaryType(v46, v47, 0);
    if (!v48)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t PictureReaderGetThumbnailCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureThumbnailCount = IFFPictureGetPictureThumbnailCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureThumbnailCount);
}

uint64_t PictureReaderCopyThumbnailByIndex(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294950134;
  }

  v6 = OUTLINED_FUNCTION_5_68(DerivedStorage);
  result = IFFPictureGetPictureThumbnailByIndex(v6, v7);
  if (!result)
  {
    return CreatePictureReader(*MEMORY[0x1E695E480], *v3, v9, a3);
  }

  return result;
}

uint64_t PictureReaderGetAuxiliaryImageCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureAuxiliaryImageCount = IFFPictureGetPictureAuxiliaryImageCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureAuxiliaryImageCount);
}

uint64_t PictureReaderCopyAuxiliaryImageByIndex(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294950134;
  }

  v6 = OUTLINED_FUNCTION_5_68(DerivedStorage);
  result = IFFPictureGetPictureAuxiliaryImageByIndex(v6, v7);
  if (!result)
  {
    return CreatePictureReader(*MEMORY[0x1E695E480], *v3, v9, a3);
  }

  return result;
}

uint64_t PictureReaderGetExifCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureExifCount = IFFPictureGetPictureExifCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureExifCount);
}

uint64_t PictureReaderGetXMPCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureXMPCount = IFFPictureGetPictureXMPCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureXMPCount);
}

uint64_t PictureReaderGetDebugMetadataCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureDebugMetadataCount = IFFPictureGetPictureDebugMetadataCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureDebugMetadataCount);
}

uint64_t PictureReaderGetCustomMetadataCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureCustomMetadataCount = IFFPictureGetPictureCustomMetadataCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureCustomMetadataCount);
}

double PictureTileCursorServiceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (FigCFEqual())
    {
      v5 = OUTLINED_FUNCTION_3_72();
      if (IFFPictureCopyTileDimensionsDictionary(v5, v6))
      {
        return result;
      }

      goto LABEL_7;
    }

    if (FigCFEqual())
    {
      v8 = OUTLINED_FUNCTION_3_72();
      if (!IFFPictureCopyTileGridDimensionsDictionary(v8, v9))
      {
LABEL_7:
        *a4 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double PictureTileCursorServiceCreateCursorAtPosition(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = CFGetAllocator(a1);
    if (!CreatePictureTileCursor(v9, *DerivedStorage, *(DerivedStorage + 8), a4))
    {
      v11 = *a4;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v12 || v12(v11, a2, a3))
      {
        if (*a4)
        {
          CFRelease(*a4);
        }

        *a4 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double PictureTileCursorCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UInt32 = 0;
  if (!a4)
  {
    goto LABEL_20;
  }

  v7 = DerivedStorage;
  if (FigCFEqual())
  {
    if (IFFPictureTileAccessorCopyFormatDescription(v7[1], &UInt32))
    {
      return result;
    }

    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    result = IFFPictureTileAccessorCopyCleanApertureDictionary(v7[1], &UInt32);
    if (v9)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    if (IFFPictureTileAccessorCopySpatialRelationDictionary(v7[1], &UInt32))
    {
      return result;
    }

    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    LODWORD(v11) = 0;
    if (IFFPictureTileAccessorGetItemIdentifier(v7[1], &v11))
    {
      return result;
    }

    UInt32 = FigCFNumberCreateUInt32();
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v12 = 0;
    v11 = 0;
    if (!IFFPictureTileAccessorGetItemIdentifier(v7[1], &v12))
    {
      IFFInformationGetPictureByID(*v7, v12);
      if (!v10 && !CreatePictureReader(a3, *v7, v11, &UInt32))
      {
LABEL_18:
        *a4 = UInt32;
      }
    }
  }

  else
  {
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t PictureTileCursorStepAndReportPosition(uint64_t a1, uint64_t *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v7 = 0;
  v8 = 0;
  result = IFFPictureTileAccessorStepCursor(*(DerivedStorage + 8), &v9);
  if (!result)
  {
    result = IFFPictureTileAccessorGetTileLocation(*(DerivedStorage + 8), &v8, &v7);
    if (!result)
    {
      if (a2)
      {
        *a2 = v8;
      }

      if (a3)
      {
        *a3 = v7;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return 4294950125;
      }
    }
  }

  return result;
}

uint64_t PictureTileCursorGetPosition(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  result = IFFPictureTileAccessorGetTileLocation(*(DerivedStorage + 8), &v8, &v7);
  if (!result)
  {
    if (a2)
    {
      *a2 = v8;
    }

    if (a3)
    {
      *a3 = v7;
    }
  }

  return result;
}

void FigPictureCollectionCreateFromByteStreamWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPictureCollectionCreateFromByteStreamWithOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPictureCollectionCreateFromIFFItemInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPictureCollectionCreateFromIFFItemInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFPictureCollectionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _createGroupDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _createGroupDescription_cold_2(void *value, CFMutableDictionaryRef theDict)
{
  if (value)
  {
    CFDictionarySetValue(theDict, @"StereoAggressors", value);
    CFRelease(value);
  }
}

void CreatePictureReader_cold_1(uint64_t a1, CFTypeRef *a2, void *a3)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = 0;
}

void PictureReaderCopyPictureTileCursorService_cold_1(uint64_t a1, CFTypeRef *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  if (*a2)
  {
    CFRelease(*a2);
  }
}

double CreatePictureTileCursor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t ckbserver_replyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t ckbserver_copyBossAndCompanion(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3, void *a4)
{
  cf = 0;
  if (!xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v10);
    goto LABEL_11;
  }

  v6 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v6)
  {
LABEL_11:
    v7 = v6;
    goto LABEL_7;
  }

  if (a3)
  {
    *a3 = 0;
    cf = 0;
  }

  v7 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t ckbserver_requestDidSucceedRequestStatusCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        v6 = FigXPCCreateBasicMessage();
        v14 = OUTLINED_FUNCTION_582(v6, v7, v8, v9, v10, v11, v12, v13, 0, 0);
        if (!v15)
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v14, v4);
          v24 = OUTLINED_FUNCTION_582(v16, v17, v18, v19, v20, v21, v22, v23, value, message);
          if (!v25)
          {
            xpc_dictionary_set_int64(v24, ".requestID", v3);
            if (!v2)
            {
LABEL_9:
              xpc_connection_send_message(*(v1 + 16), messagea);
              return FigXPCRelease();
            }

            IDForCryptorByAssociatingWithClientConnection = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientConnection();
            v34 = OUTLINED_FUNCTION_582(IDForCryptorByAssociatingWithClientConnection, v27, v28, v29, v30, v31, v32, v33, valuea, messagea);
            if (!v35)
            {
              xpc_dictionary_set_uint64(v34, ".cryptorID", valueb);
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidFailRequestStatusCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v4)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        if (!FigXPCCreateBasicMessage())
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v3);
          if (!v5)
          {
            xpc_dictionary_set_int64(0, ".requestID", v2);
            if (!FigXPCMessageSetCFError())
            {
              OUTLINED_FUNCTION_17_26(0);
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidUpdateContentKeyBossToNewBossStatusCallback(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 24) && *(a2 + 16) && !FigXPCCreateBasicMessage())
  {
    xpc_connection_send_message(*(a2 + 16), 0);
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidSucceedRequestHandlingCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        v6 = FigXPCCreateBasicMessage();
        v14 = OUTLINED_FUNCTION_582(v6, v7, v8, v9, v10, v11, v12, v13, 0, 0);
        if (!v15)
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v14, v4);
          v24 = OUTLINED_FUNCTION_582(v16, v17, v18, v19, v20, v21, v22, v23, value, message);
          if (!v25)
          {
            xpc_dictionary_set_int64(v24, ".requestID", v3);
            if (!v2)
            {
LABEL_9:
              xpc_connection_send_message(*(v1 + 16), messagea);
              return FigXPCRelease();
            }

            IDForCryptorByAssociatingWithClientConnection = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientConnection();
            v34 = OUTLINED_FUNCTION_582(IDForCryptorByAssociatingWithClientConnection, v27, v28, v29, v30, v31, v32, v33, valuea, messagea);
            if (!v35)
            {
              xpc_dictionary_set_uint64(v34, ".cryptorID", valueb);
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidFailRequestHandlingCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v4)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        if (!FigXPCCreateBasicMessage())
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v3);
          if (!v5)
          {
            xpc_dictionary_set_int64(0, ".requestID", v2);
            if (!FigXPCMessageSetCFError())
            {
              OUTLINED_FUNCTION_17_26(0);
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didProvideRequest(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_12_33();
        if (!FigXPCCreateBasicMessage())
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v4);
          if (!v6)
          {
            xpc_dictionary_set_int64(0, ".requestID", v3);
            xpc_dictionary_set_BOOL(0, ".supportsOfflineKey", v2 != 0);
            if (!FigXPCMessageSetCFString())
            {
              OUTLINED_FUNCTION_17_26(0);
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didProvideRenewingRequest(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_12_33();
        if (!FigXPCCreateBasicMessage())
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v4);
          if (!v6)
          {
            xpc_dictionary_set_int64(0, ".requestID", v3);
            xpc_dictionary_set_BOOL(0, ".supportsOfflineKey", v2 != 0);
            if (!FigXPCMessageSetCFString())
            {
              OUTLINED_FUNCTION_17_26(0);
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didUpdatePersistableKey(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v3)
    {
      if (*(v1 + 16))
      {
        v4 = v2;
        v5 = FigXPCCreateBasicMessage();
        v13 = OUTLINED_FUNCTION_582(v5, v6, v7, v8, v9, v10, v11, v12, v25, 0);
        if (!v14)
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v13, v4);
          OUTLINED_FUNCTION_582(v15, v16, v17, v18, v19, v20, v21, v22, v26, message);
          if (!v23)
          {
            FigXPCMessageSetCFData();
            xpc_connection_send_message(*(v1 + 16), messagea);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didExternalProtectionStatusChange(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v3)
    {
      if (*(v1 + 16))
      {
        v4 = v2;
        if (!FigXPCCreateBasicMessage())
        {
          FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v4);
          if (!v5)
          {
            xpc_connection_send_message(*(v1 + 16), 0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

void __FigContentKeyBossStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t HandleVisualContextMessage(uint64_t a1, void *a2, void *a3)
{
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (!OpCode)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      v5 = CFGetTypeID(0);
      if (v5 == FigVisualContextGetTypeID(v5, v6))
      {
        v7 = 4294951138;
        goto LABEL_6;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, 0);
    }
  }

  v7 = OpCode;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t HandleVisualContextNoReplyMessage(uint64_t a1, void *a2)
{
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (!OpCode)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      v4 = CFGetTypeID(0);
      if (v4 == FigVisualContextGetTypeID(v4, v5))
      {
        v6 = 4294951138;
        goto LABEL_6;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v9, v10);
    }
  }

  v6 = OpCode;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t vcs_SendCallback(__int128 *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (!FigXPCCreateBasicMessage())
    {
      if (v4 == 1229017957 || v4 == 1229015405)
      {
        FigXPCMessageSetCMTime();
        xpc_dictionary_set_uint64(0, "Flags", a2);
      }

      xpc_connection_send_message(*(a3 + 8), 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  return FigXPCRelease();
}

uint64_t vcs_ImageAvailableSequentialCallback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  return vcs_SendCallback(&v5, a3, a4, 1229017957);
}

void FigVisualContextServerRetainVisualContextForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigMediaProcessorSetWaterLevels_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigMediaProcessorSetWaterLevels_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigMediaProcessorSetWaterLevels_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigMediaProcessorSetWaterLevels_cold_4(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return FigSimpleMutexUnlock();
}

uint64_t fcd_ttml_flushRubyNodesToStyledTextArray(const void *a1, __CFArray *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = 0;
    v4 = 0;
  }

  v48 = 0;
  v49[0] = 0;
  cf[0] = 0;
  v58[0] = 0;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  theArray = a2;
  if (Mutable)
  {
    Count = CFArrayGetCount(*(v4 + 24));
    if (Count)
    {
      v7 = Count;
      theString = Mutable;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 24), v8);
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }

        v10 = FigTTMLSynchronicTreeCopySSS(*(v4 + 8), ValueAtIndex, cf);
        if (v10)
        {
          break;
        }

        if (!CFDictionaryGetValue(cf[0], @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind"))
        {
          CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling ruby");
        }

        InitialValue = FigCaptionDynamicStyleGetInitialValue();
        v12 = CFEqual(InitialValue, @"rt");
        v13 = FigCaptionDynamicStyleGetInitialValue();
        if (v12 | CFEqual(v13, @"text"))
        {
          v10 = FigCaptionDataCreateMutable();
          if (v10)
          {
            break;
          }

          if (v12)
          {
            v10 = fcd_ttml_setRubyTextPropertyFromDictionary(cf[0], @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position", v49[0]);
            if (v10)
            {
              break;
            }

            v14 = cf[0];
            v15 = v49[0];
            v16 = @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align";
          }

          else
          {
            v10 = fcd_ttml_setRubyTextPropertyFromDictionary(cf[0], @"http://www.w3.org/ns/ttml#styling position", v49[0]);
            if (v10)
            {
              break;
            }

            v14 = cf[0];
            v15 = v49[0];
            v16 = @"http://www.w3.org/ns/ttml#styling rubyAlign";
          }

          v10 = fcd_ttml_setRubyTextPropertyFromDictionary(v14, v16, v15);
          if (v10)
          {
            break;
          }

          if (v58[0])
          {
            CFRelease(v58[0]);
            v58[0] = 0;
          }

          v10 = FigTTMLTextCopyContent(ValueAtIndex, v58);
          if (v10)
          {
            break;
          }

          CFStringAppend(theString, v58[0]);
        }

        if (v7 == ++v8)
        {
          Mutable = theString;
          goto LABEL_26;
        }
      }

      v17 = v10;
      Mutable = theString;
    }

    else
    {
LABEL_26:
      v17 = 0;
      v49[0] = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_27();
    FigSignalErrorAtGM(v40);
    v17 = v41;
  }

  if (v58[0])
  {
    CFRelease(v58[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v17)
  {
    v31 = 0;
  }

  else
  {
    if (a1)
    {
      v18 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v18 = 0;
    }

    v57 = 0;
    v58[0] = 0;
    v55 = 0;
    v56 = 0;
    v19 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    v20 = CFArrayGetCount(*(v18 + 24));
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = CFArrayGetValueAtIndex(*(v18 + 24), v23);
        if (v58[0])
        {
          CFRelease(v58[0]);
          v58[0] = 0;
        }

        v25 = FigTTMLSynchronicTreeCopySSS(*(v18 + 8), v24, v58);
        if (v25)
        {
          break;
        }

        if (!CFDictionaryGetValue(v58[0], @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind"))
        {
          CFDictionaryGetValue(v58[0], @"http://www.w3.org/ns/ttml#styling ruby");
        }

        v26 = FigCaptionDynamicStyleGetInitialValue();
        if (CFEqual(v26, @"rb") || (v27 = FigCaptionDynamicStyleGetInitialValue(), CFEqual(v27, @"base")))
        {
          v53 = 0u;
          v54 = 0u;
          *cf = 0u;
          FigTTMLNodeGetActiveTimeRange(v24, cf);
          if (v25)
          {
            break;
          }

          if (v22)
          {
            CFRelease(v22);
            v57 = 0;
          }

          *v49 = *cf;
          v50 = v53;
          v51 = v54;
          v25 = fcd_ttml_createStylePropertiesFromTTMLStyleSet(v58[0], v49, &v57);
          if (v25)
          {
            break;
          }

          if (v55)
          {
            CFRelease(v55);
            v55 = 0;
          }

          v25 = FigTTMLTextCopyContent(v24, &v55);
          if (v25)
          {
            break;
          }

          if (v56)
          {
            CFRelease(v56);
            v56 = 0;
          }

          v25 = FigCaptionDataCreateMutable();
          if (v25)
          {
            break;
          }

          v29 = v55;
          v28 = v56;
          v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v30)
          {
            v17 = 4294954514;
            goto LABEL_62;
          }

          v25 = v30(v28, v29);
          if (v25)
          {
            break;
          }

          v22 = v57;
          CFDictionaryApplyFunction(v57, fcd_ttml_setStylePropertyToWholeStyledText, v56);
          CFArrayAppendValue(v19, v56);
        }

        if (v21 == ++v23)
        {
          v17 = 0;
          v31 = v19;
          v19 = 0;
          goto LABEL_64;
        }
      }

      v17 = v25;
LABEL_62:
      v31 = 0;
    }

    else
    {
      v17 = 0;
      v31 = v19;
      v19 = 0;
    }

LABEL_64:
    if (v55)
    {
      CFRelease(v55);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v58[0])
    {
      CFRelease(v58[0]);
    }

    if (!v17)
    {
      if (!CFArrayGetCount(v31))
      {
LABEL_76:
        CFArrayRemoveAllValues(*(DerivedStorage + 24));
        v17 = 0;
        goto LABEL_77;
      }

      v33 = CFGetAllocator(a1);
      v34 = fcd_ttml_concatenateStyledTextArray(v31, v33, &v48);
      if (!v34)
      {
        v35 = v48;
        if (!v48)
        {
          OUTLINED_FUNCTION_1_103();
          FigSignalErrorAtGM(v42);
          v17 = v43;
          if (!v31)
          {
            return v17;
          }

          goto LABEL_80;
        }

        v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v36)
        {
          v37 = v36(v35);
        }

        else
        {
          v37 = &stru_1F0B1AFB8;
        }

        Length = CFStringGetLength(v37);
        v39 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v39)
        {
          v17 = 4294954514;
          goto LABEL_77;
        }

        v34 = v39(v35, *MEMORY[0x1E69614E0], 0, 0, Length);
        if (!v34)
        {
          CFArrayAppendValue(theArray, v48);
          goto LABEL_76;
        }
      }

      v17 = v34;
    }
  }

LABEL_77:
  if (v48)
  {
    CFRelease(v48);
  }

  if (v31)
  {
LABEL_80:
    CFRelease(v31);
  }

  return v17;
}

uint64_t fcd_ttml_concatenateStyledTextArray(const __CFArray *a1, const __CFAllocator *a2, void *a3)
{
  v51 = 0;
  v49 = 0;
  cf = 0;
  Mutable = FigCaptionDataCreateMutable();
  if (Mutable)
  {
    v36 = Mutable;
    v7 = 0;
  }

  else
  {
    v7 = CFStringCreateMutable(a2, 0);
    if (v7)
    {
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v11)
          {
            v12 = v11(ValueAtIndex);
          }

          else
          {
            v12 = &stru_1F0B1AFB8;
          }

          CFStringAppend(v7, v12);
        }
      }

      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        v14 = v13(v51, v7);
        if (v14)
        {
          v36 = v14;
        }

        else
        {
          if (Count)
          {
            v45 = 0;
            v15 = 0;
            v16 = *MEMORY[0x1E6961268];
            v17 = *MEMORY[0x1E695E480];
            v39 = *MEMORY[0x1E6961268];
            v40 = a3;
            v43 = v7;
            while (1)
            {
              v18 = CFArrayGetValueAtIndex(a1, v15);
              v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v19)
              {
                v20 = v19(v18);
              }

              else
              {
                v20 = &stru_1F0B1AFB8;
              }

              Length = CFStringGetLength(v20);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              CMBaseObject = FigCaptionDataGetCMBaseObject();
              v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v22)
              {
                goto LABEL_36;
              }

              v41 = v15;
              v23 = v22(CMBaseObject, v16, v17, &cf);
              if (v23)
              {
                break;
              }

              v42 = CFArrayGetCount(cf);
              if (v42)
              {
                v24 = 0;
                while (1)
                {
                  v44 = v24;
                  v25 = CFArrayGetValueAtIndex(cf, v24);
                  if (Length)
                  {
                    break;
                  }

LABEL_33:
                  v24 = v44 + 1;
                  if (v44 + 1 == v42)
                  {
                    goto LABEL_34;
                  }
                }

                v26 = v25;
                v27 = 0;
                while (1)
                {
                  v47 = 0;
                  v48 = 0;
                  if (v49)
                  {
                    CFRelease(v49);
                    v49 = 0;
                  }

                  v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (!v28)
                  {
                    break;
                  }

                  v23 = v28(v18, v27, v26, v17, &v49, &v47);
                  if (v23)
                  {
                    goto LABEL_50;
                  }

                  v29 = v48;
                  v30 = v49;
                  if (v49)
                  {
                    v31 = v18;
                    v32 = v17;
                    v33 = v47;
                    v34 = v51;
                    v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                    if (!v35)
                    {
                      break;
                    }

                    v23 = v35(v34, v26, v30, v33 + v45, v29);
                    if (v23)
                    {
                      goto LABEL_50;
                    }

                    v29 = v48;
                    v17 = v32;
                    v18 = v31;
                  }

                  v27 += v29;
                  if (v27 == Length)
                  {
                    goto LABEL_33;
                  }
                }

                v36 = 4294954514;
                goto LABEL_38;
              }

LABEL_34:
              v45 += Length;
              a3 = v40;
              v15 = v41 + 1;
              v16 = v39;
              v7 = v43;
              if (v41 + 1 == Count)
              {
                goto LABEL_35;
              }
            }

LABEL_50:
            v36 = v23;
LABEL_38:
            v7 = v43;
            goto LABEL_39;
          }

LABEL_35:
          v36 = 0;
          *a3 = v51;
          v51 = 0;
        }
      }

      else
      {
LABEL_36:
        v36 = 4294954514;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_27();
      FigSignalErrorAtGM(v38);
      v36 = 0;
    }
  }

LABEL_39:
  if (v49)
  {
    CFRelease(v49);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  return v36;
}

uint64_t fcd_ttml_addParentDirectionAndUnicodeBidiRecursively(uint64_t a1, const void *a2, __CFArray *a3, __CFArray *a4)
{
  value = 0;
  cf = 0;
  v21 = 0;
  NodeType = FigTTMLNodeGetNodeType(a2, &v21);
  if (NodeType)
  {
    goto LABEL_23;
  }

  if ((v21 - 6) < 0xFFFFFFFE)
  {
LABEL_3:
    v9 = 0;
    goto LABEL_4;
  }

  ParentNode = FigTTMLNodeGetParentNode(a2);
  NodeType = fcd_ttml_addParentDirectionAndUnicodeBidiRecursively(a1, ParentNode, a3, a4);
  if (NodeType || (NodeType = FigTTMLSynchronicTreeCopySSS(a1, a2, &cf), NodeType))
  {
LABEL_23:
    v9 = NodeType;
  }

  else
  {
    v12 = v21;
    v13 = CFDictionaryGetValue(cf, @"http://www.w3.org/ns/ttml#styling direction");
    v14 = v13;
    if (v12 == 4)
    {
      if (v13)
      {
        CFArrayAppendValue(a3, v13);
      }

      v15 = CFDictionaryGetValue(cf, @"http://www.w3.org/ns/ttml#styling unicodeBidi");
      if (v15)
      {
        v16 = v15;
        v17 = a4;
LABEL_17:
        CFArrayAppendValue(v17, v16);
        goto LABEL_3;
      }

      if (!v14)
      {
        goto LABEL_3;
      }

      v9 = FigCaptionDynamicStyleCreate();
      v20 = value;
      if (!v9)
      {
        CFArrayAppendValue(a4, value);
        v20 = value;
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    else
    {
      v18 = CFDictionaryGetValue(cf, @"http://www.w3.org/ns/ttml#styling unicodeBidi");
      v9 = 0;
      if (v14)
      {
        v19 = v18;
        if (v18)
        {
          CFArrayAppendValue(a3, v14);
          v17 = a4;
          v16 = v19;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

double fcd_ttml_createStylePropertyFromTTMLStyle_textEmphasis(const void *a1)
{
  if (a1 && (v2 = OUTLINED_FUNCTION_3_75(a1), v2 == CFStringGetTypeID()))
  {
    v3 = OUTLINED_FUNCTION_104_0();
    if (!FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis(v3, v4))
    {
      *v1 = *MEMORY[0x1E6961528];
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM(v6);
  }

  return result;
}

double fcd_ttml_createStylePropertyFromTTMLStyle_textShear(const __CFString *a1, void *a2, uint64_t *a3)
{
  v10 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    if (!FigTTMLParseLength(a1, &v10 + 1, &v10))
    {
      if (v10)
      {
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_1_19();
        return FigSignalErrorAtGM(v9);
      }

      else
      {
        FigGeometryDimensionMake();
        *a2 = *MEMORY[0x1E6961540];
        *a3 = FigGeometryDimensionCopyAsDictionary();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM(v8);
  }

  return result;
}

double fcd_ttml_createStylePropertyFromTTMLStyle_textShadow(const void *a1)
{
  if (a1 && (v2 = OUTLINED_FUNCTION_3_75(a1), v2 == CFStringGetTypeID()))
  {
    v3 = OUTLINED_FUNCTION_104_0();
    if (!FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList(v3, v4))
    {
      *v1 = *MEMORY[0x1E6961538];
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM(v6);
  }

  return result;
}

double fcd_ttml_createCaptionPropertyFromTTMLStyle_rubyReserve(const __CFString *a1, void *a2, void *a3)
{
  v9 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    if (!FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve(a1, &v9))
    {
      *a2 = *MEMORY[0x1E6961258];
      *a3 = v9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM(v8);
  }

  return result;
}

uint64_t fcd_ttml_setDimensionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = FigGeometryDimensionCopyAsDictionary();
  v5 = FigCaptionDynamicStyleCreate();
  if (v5)
  {
    goto LABEL_4;
  }

  FigCaptionRegionGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v6 = OUTLINED_FUNCTION_104_0();
    v5 = v7(v6);
LABEL_4:
    v8 = v5;
    goto LABEL_6;
  }

  v8 = 4294954514;
LABEL_6:
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

uint64_t fcd_ttml_createRegionFromNode(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7)
{
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v14 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionRegionCreateMutable();
  if (Mutable)
  {
    goto LABEL_23;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v17)
  {
    goto LABEL_17;
  }

  Mutable = v17(CMBaseObject, *MEMORY[0x1E6961300], a4);
  if (Mutable)
  {
    goto LABEL_23;
  }

  v18 = FigCaptionRegionGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v19)
  {
LABEL_17:
    v24 = 4294954514;
    goto LABEL_18;
  }

  Mutable = v19(v18, *MEMORY[0x1E6961338], a3);
  if (Mutable)
  {
    goto LABEL_23;
  }

  Mutable = FigTTMLNodeGetNodeType(a2, &v37);
  if (Mutable)
  {
    goto LABEL_23;
  }

  if (v37 == 10)
  {
    v20 = FigCaptionRegionGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      Mutable = v21(v20, *MEMORY[0x1E6961318], *MEMORY[0x1E695E4D0]);
      if (!Mutable)
      {
        goto LABEL_10;
      }

LABEL_23:
      v24 = Mutable;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_10:
  Mutable = FigTTMLSynchronicTreeCopySSS(a1, a2, &v38);
  if (Mutable)
  {
    goto LABEL_23;
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  FigTTMLNodeGetActiveTimeRange(a2, &v34);
  if (Mutable)
  {
    goto LABEL_23;
  }

  v22 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v27[0] = 0;
  MEMORY[0x19A8D3660](&fcd_ttml_getRegionPropertyMappingDictionary_sInitializeRegionPropertyMappingOnce, fcd_ttml_initializeRegionPropertyMappingDictionary);
  v28 = v34;
  v23 = a5[1];
  v30 = *a5;
  v27[1] = sRegionPropertyMappingDictionary;
  v29 = v35;
  v31 = v23;
  v32 = a5[2];
  v33 = v22;
  CFDictionaryApplyFunction(v38, fcd_ttml_convertTTMLStyleToRegionPropertyAndAddToDictionary, v27);
  v24 = LODWORD(v27[0]);
  if (!LODWORD(v27[0]))
  {
    CellResolutionProperty = fcd_ttml_createCellResolutionProperty(a6);
    CFDictionaryAddValue(v22, *MEMORY[0x1E69612F0], CellResolutionProperty);
    CFDictionaryApplyFunction(v22, fcd_ttml_setPropertyToObject, v39);
    *a7 = v39;
    v39 = 0;
    if (CellResolutionProperty)
    {
      CFRelease(CellResolutionProperty);
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_18:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v24;
}

double fcd_ttml_createRegionPropertyFromTTMLStyle_position(const void *a1)
{
  if (a1 && (v2 = OUTLINED_FUNCTION_3_75(a1), v2 == CFStringGetTypeID()))
  {
    v3 = OUTLINED_FUNCTION_104_0();
    if (!FigTTMLParsePositionSyntaxAndCreateCaptionPosition(v3, v4))
    {
      *v1 = *MEMORY[0x1E69612C8];
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM(v6);
  }

  return result;
}

__CFString *fcd_ttml_GetCaptionText(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  LODWORD(a1) = fcd_ttml_ensureStyledTextIsLoaded(a1);
  FigSimpleMutexUnlock();
  if (a1)
  {
    return &stru_1F0B1AFB8;
  }

  v3 = *(DerivedStorage + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return &stru_1F0B1AFB8;
  }

  return v4(v3);
}

uint64_t fcd_ttml_CopyStylePropertyAtIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, _OWORD *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v18 = 0uLL;
  FigSimpleMutexLock();
  IsLoaded = fcd_ttml_ensureStyledTextIsLoaded(a1);
  FigSimpleMutexUnlock();
  if (!IsLoaded)
  {
    v14 = *(DerivedStorage + 16);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v16 = v15(v14, a2, a3, a4, &cf, &v18);
      if (v16)
      {
        IsLoaded = v16;
      }

      else
      {
        if (a5)
        {
          *a5 = cf;
          cf = 0;
        }

        IsLoaded = 0;
        if (a6)
        {
          *a6 = v18;
        }
      }
    }

    else
    {
      IsLoaded = 4294954514;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return IsLoaded;
}

void FigCaptionDataCreateForTTML_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_ensureStyledTextIsLoaded_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_ensureStyledTextIsLoaded_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertiesFromTTMLStyleSet_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_color_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_display_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_1(uint64_t a1, CGColor *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v5);
  *a3 = v6;

  CGColorRelease(a2);
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;

  CGColorRelease(0);
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v4);
  if (a1)
  {
    CFRelease(a1);
  }

  *a2 = 0;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_fontSize_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_visibility_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textCombine_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createDynamicStyleFromTTML_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createCaptionPropertyFromTTMLStyle_display_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_overflow_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_opacity_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_display_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_visibility_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigMediaProcessorCreateForAudioCompressionCommon(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, unsigned int a16, uint64_t *a17)
{
  v34 = 0;
  v35 = 0;
  cf = 0;
  v33 = 0;
  v20 = *MEMORY[0x1E695E480];
  FigSampleBufferProcessorCreateWithAudioCompression(a1, a2, a3, a4, a5, a6, *MEMORY[0x1E695E480], &v35);
  if (!v21)
  {
    FigSampleBufferProviderCreateForBufferQueue(v20, a7, &v34);
    if (!v21)
    {
      if (a8)
      {
        OUTLINED_FUNCTION_0_114();
        FigSampleBufferConsumerCreateForFormatWriter(a8, v24, v31, v26, v30, v25, &v33);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_114();
        FigSampleBufferConsumerCreateForBufferQueue2(v27, v31, v29, v30, v28, &v33);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      if (a15)
      {
        FigActivitySchedulerCreateForCFRunLoop(a1, a15, &cf);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        FigActivitySchedulerCreateForNewThread(a1, a16, @"com.apple.coremedia.mediaprocessor.audiocompression", &cf);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      v21 = FigMediaProcessorCreate(a1, v35, v34, v33, cf, a17);
    }
  }

LABEL_3:
  v22 = v21;
  if (v34)
  {
    CFRelease(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v22;
}

uint64_t FigMediaProcessorCreateForAudioCompression(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, uint64_t a8, __int128 *a9, uint64_t a10, __int128 *a11, uint64_t a12, const void *a13, unsigned int a14, uint64_t *a15)
{
  v19 = *a9;
  v20 = *(a9 + 2);
  v17 = *a11;
  v18 = *(a11 + 2);
  LODWORD(v16) = 0;
  return FigMediaProcessorCreateForAudioCompressionCommon(a1, a2, a3, a4, a5, a6, a7, 0, v16, a8, &v19, a10, &v17, a12, a13, a14, a15);
}

uint64_t FigMediaProcessorCreateForAudioDecompressionWithBufferQueue(const void *a1, uint64_t a2, size_t a3, const AudioChannelLayout *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, unsigned int a11, uint64_t *a12)
{
  v25 = 0;
  v26 = 0;
  cf = 0;
  v24 = 0;
  FigSampleBufferProcessorCreateWithAudioDecompression(a1, a2, a3, a4, a5, &v26);
  if (!v16)
  {
    FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a6, &v25);
    if (!v16)
    {
      v21 = *a8;
      v22 = *(a8 + 16);
      v19 = *a9;
      v20 = *(a9 + 16);
      FigSampleBufferConsumerCreateForBufferQueue(a7, &v21, &v19, &v24);
      if (!v16)
      {
        if (a10)
        {
          FigActivitySchedulerCreateForCFRunLoop(a1, a10, &cf);
          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          FigActivitySchedulerCreateForNewThread(a1, a11, @"com.apple.coremedia.mediaprocessor.audiodecompression", &cf);
          if (v16)
          {
            goto LABEL_4;
          }
        }

        v16 = FigMediaProcessorCreate(a1, v26, v25, v24, cf, a12);
      }
    }
  }

LABEL_4:
  v17 = v16;
  if (v25)
  {
    CFRelease(v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v17;
}

uint64_t FigRemakerCreateBaseWithURLs(const __CFAllocator *a1, uint64_t a2, const void *a3, const __CFURL *a4, uint64_t a5, const __CFDictionary *a6, const __CFDictionary *a7, void *a8)
{
  v10 = a3;
  v25 = a3;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_12_34();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_12_34();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  FigCFDictionaryGetBooleanIfPresent();
  if (!(a2 | v10) || a2 && !FigCFURLIsLocalResource() || !a8)
  {
    OUTLINED_FUNCTION_3_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_37;
  }

  v13 = 0;
  if (a2 && !v10)
  {
    FigGetDefaultManagedFilePool();
    ByteStreamForFile = FigManagedFilePoolCreateByteStreamForFile();
    if (ByteStreamForFile)
    {
      v19 = ByteStreamForFile;
      OUTLINED_FUNCTION_3_12();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, a4, a6);
      goto LABEL_38;
    }

    v15 = FigFormatReaderCreateForStream(0, a1, 0, &v25);
    if (!v15)
    {
      v13 = 1;
      v10 = v25;
      goto LABEL_10;
    }

LABEL_37:
    v19 = v15;
LABEL_38:
    v13 = 0;
    goto LABEL_23;
  }

LABEL_10:
  cf = 0;
  v27 = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_11_40();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_11_40();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  if (!v10)
  {
    OUTLINED_FUNCTION_3_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, a4, a6);
LABEL_30:
    v19 = v18;
    goto LABEL_35;
  }

  if (a7)
  {
    v16 = *MEMORY[0x1E695E4D0];
    if (v16 == CFDictionaryGetValue(a7, @"Remaker_SecurityPolicyForbidLocalToLocal"))
    {
      v17 = 33;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = FigAssetCreateWithFormatReader(a1, v10, v17, 0, &cf);
  if (v18)
  {
    goto LABEL_30;
  }

  v19 = FigRemakerCreateWithAsset(a1, cf, a4, a6, a7, &v27);
  v20 = v27;
  if (v19)
  {
    if (!v27)
    {
      goto LABEL_19;
    }

    CFRelease(v27);
LABEL_35:
    v20 = 0;
    goto LABEL_19;
  }

  v27 = 0;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    *a8 = v20;
  }

LABEL_23:
  if (v13 && v25)
  {
    CFRelease(v25);
  }

  return v19;
}

uint64_t FigRemakerCreateWithURLs(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _OWORD *a14, uint64_t a15, const __CFURL *a16, const __CFDictionary *a17, const __CFDictionary *a18, _DWORD *a19, _DWORD *a20, void *a21)
{
  v52 = 0;
  v53 = 0;
  if (a19)
  {
    *a19 = 0;
  }

  if (a20)
  {
    *a20 = 0;
  }

  v26 = FigRemakerCreateBaseWithURLs(a1, a2, 0, a16, a5, a17, a18, &v53);
  if (v26)
  {
    goto LABEL_36;
  }

  v27 = v53;
  v28 = a14[1];
  *&range.start.value = *a14;
  *&range.start.epoch = v28;
  *&range.duration.timescale = a14[2];
  CMTimeRangeGetEnd(&v51, &range);
  v48 = *a14;
  v49 = *(a14 + 2);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v29)
  {
    goto LABEL_31;
  }

  *&range.start.value = v48;
  range.start.epoch = v49;
  v54 = v51;
  v26 = v29(v27, &range, &v54);
  if (v26)
  {
    goto LABEL_36;
  }

  v30 = v53;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v31)
  {
    goto LABEL_31;
  }

  v26 = v31(v30, &v52);
  if (v26)
  {
    goto LABEL_36;
  }

  v32 = v53;
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v33)
  {
    goto LABEL_31;
  }

  v26 = v33(v32, &v52 + 4);
  if (v26)
  {
    goto LABEL_36;
  }

  v35 = v52;
  v34 = HIDWORD(v52);
  if (!v52)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
    goto LABEL_36;
  }

  if (!v52)
  {
    goto LABEL_17;
  }

  v36 = v53;
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v37)
  {
    goto LABEL_31;
  }

  v26 = v37(v36, v35, a3, a4, a19);
  if (v26)
  {
LABEL_36:
    v34 = v26;
    goto LABEL_32;
  }

  v34 = HIDWORD(v52);
LABEL_17:
  if (!v34)
  {
LABEL_30:
    *a21 = v53;
    return v34;
  }

  LODWORD(v51.value) = 0;
  if (!a8)
  {
    v38 = v53;
    v39 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v39)
    {
      v40 = v39(v38, v34, &v51);
      goto LABEL_26;
    }

LABEL_31:
    v34 = 4294954514;
    goto LABEL_32;
  }

  if (a8 == 1851876449)
  {
    if (!a20)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v41 = v53;
  *&v54.value = *a13;
  v54.epoch = *(a13 + 16);
  v42 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v42)
  {
    goto LABEL_31;
  }

  range.start = v54;
  v40 = v42(v41, v34, a5, a6, a7, a8, a9, a10, a11, a12, &range, &v51);
LABEL_26:
  v34 = v40;
  if (a20 && !v40)
  {
LABEL_28:
    *a20 = v51.value;
LABEL_29:
    v34 = 0;
    goto LABEL_30;
  }

  if (!(4 * (v40 != 0)))
  {
    goto LABEL_30;
  }

LABEL_32:
  if (v53)
  {
    CFRelease(v53);
  }

  return v34;
}

uint64_t remaker_AddAudioTrack(const void *a1, unsigned int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = a2;
  v15 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  cf = CFDictionaryCreate(v15, &kFigRemakerAudioMixdown_SourceTrackID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = CFArrayCreate(v15, &cf, 1, MEMORY[0x1E695E9C0]);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, LODWORD(v24[0]));
    goto LABEL_6;
  }

  SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, valuePtr, &v26);
  if (SourceASBDForTrackID)
  {
    goto LABEL_6;
  }

  SourceASBDForTrackID = remaker_createSanitizedDestinationASBDAndAudioOptions(HIDWORD(v27), a3, a5 != 0, a6, v24, &v23, *&v26);
  if (SourceASBDForTrackID)
  {
    goto LABEL_6;
  }

  v18 = v23;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v19)
  {
    SourceASBDForTrackID = v19(a1, v16, v24, a4, a5, v18, a7, a8);
LABEL_6:
    v20 = SourceASBDForTrackID;
    goto LABEL_8;
  }

  v20 = 4294954514;
LABEL_8:
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v20;
}

uint64_t remaker_StartOutput(const void *a1)
{
  v2 = a1;
  v155 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  BYTE2(v133) = 0;
  if (dword_1EAF173A8)
  {
    LODWORD(v137.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (*Storage != 1 || (remakerFamily_SetRemakerState(v2, 2, 0), *Storage >= 7u))
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_172;
  }

  v132 = v2;
  if (*(Storage + 144) >= 1)
  {
    v5 = remakerFamily_getStorage(v2);
    HIDWORD(v138) = 0;
    v137 = **&MEMORY[0x1E6960C70];
    cf = 0;
    *type = 0;
    number = 0;
    Count = CFArrayGetCount(*(v5 + 80));
    if (remakerFamily_getExpectedDuration(v2, &v137))
    {
      goto LABEL_80;
    }

    time = v137;
    Seconds = CMTimeGetSeconds(&time);
    if (dword_1EAF173A8)
    {
      HIDWORD(v133) = 0;
      BYTE3(v133) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Count >= 1)
    {
      v9 = 0;
      v10 = 0;
      v129 = @"UneditedSampleCount";
      allocator = *MEMORY[0x1E695E480];
      v11 = (Seconds * 16.0 * 0.5);
      v12 = 2000;
      OUTLINED_FUNCTION_7_49();
      LODWORD(v13) = 1986618469;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 80), v9);
        if (ValueAtIndex[48] || !*(ValueAtIndex + 75))
        {
          goto LABEL_14;
        }

        v23 = *(ValueAtIndex + 8);
        if (v23 == v1)
        {
          time.value = 0;
          v1 = *(v5 + 72);
          v24 = *(ValueAtIndex + 7);
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v25 || v25(v1, v24, type))
          {
            goto LABEL_80;
          }

          FigAssetTrackGetCMBaseObject();
          v1 = v26;
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          v22 = (Seconds * 16.0 * 0.5);
          LODWORD(v13) = 1986618469;
          if (v27)
          {
            if (v27(v1, v129, allocator, &number) || !number)
            {
              v22 = (Seconds * 16.0 * 0.5);
            }

            else
            {
              CFNumberGetValue(number, kCFNumberSInt64Type, &time);
              v22 = (Seconds * 16.0 * 0.5) + 12 * time.value;
            }
          }

          OUTLINED_FUNCTION_7_49();
          if (v28)
          {
            CFRelease(v28);
            number = 0;
          }

          if (*type)
          {
            CFRelease(*type);
            *type = 0;
          }

          goto LABEL_15;
        }

        if (v23 == 1986618469)
        {
          v22 = (Seconds * 4.0 + (Seconds / OUTLINED_FUNCTION_6_65(ValueAtIndex, v15, v16, v17, v18, v19, v20, v21, v123, v124, v125, v126, v127, key, v129, v130, allocator, v132, v133, number, cf, *type, v137.value, *&v137.timescale, v137.epoch, v138, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v140, *&time.value, time.epoch) + 1.0) * 21.0 + v11);
          ++v10;
          goto LABEL_15;
        }

        if (v23 == 1936684398 && ValueAtIndex[324])
        {
          v22 = (v11 + (Seconds / OUTLINED_FUNCTION_6_65(ValueAtIndex, v15, v16, v17, v18, v19, v20, v21, v123, v124, v125, v126, v127, key, v129, v130, allocator, v132, v133, number, cf, *type, v137.value, *&v137.timescale, v137.epoch, v138, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v140, *&time.value, time.epoch) + 1.0) * 4.0);
        }

        else
        {
LABEL_14:
          v22 = (Seconds * 16.0 * 0.5);
        }

LABEL_15:
        v12 += v22;
        if (Count == ++v9)
        {
          v29 = 0;
          v30 = 0;
          v31 = v10;
          key = @"EstimatedDataRate";
          v129 = @"SampleBufferProcessor_OutputBitRate";
          OUTLINED_FUNCTION_7_49();
          OUTLINED_FUNCTION_9_39();
          while (1)
          {
            v32 = CFArrayGetValueAtIndex(*(v5 + 80), v29);
            if (*(v32 + 48) || !v32[75])
            {
              goto LABEL_36;
            }

            v34 = v32[8];
            if (v34 == v1)
            {
              break;
            }

            if (v34 != v13)
            {
              goto LABEL_36;
            }

            v35 = *(v32 + 36);
            if (!v35)
            {
              goto LABEL_36;
            }

            time.value = 0;
            valuePtr.value = 0;
            if (!FigMediaProcessorGetSampleBufferProcessor(v35))
            {
              OUTLINED_FUNCTION_2_40();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v124, v125);
              goto LABEL_80;
            }

            v13 = CFGetAllocator(v132);
            FigSampleBufferProcessorGetFigBaseObject();
            v37 = v36;
            v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v38 || v38(v37, @"SampleBufferProcessor_OutputBitRate", v13, &time))
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_9_39();
            if (v39)
            {
              CFNumberGetValue(v39, kCFNumberDoubleType, &valuePtr);
              CFRelease(time.value);
            }

            v33 = (Seconds * *&valuePtr.value * 0.125);
LABEL_37:
            v30 += v33;
            if (Count == ++v29)
            {
              v47 = v30 + v12;
              goto LABEL_63;
            }
          }

          if (*(v32 + 36))
          {
            LODWORD(time.value) = 0;
            v40 = *(v5 + 72);
            v41 = v32[7];
            v42 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (!v42 || v42(v40, v41, type))
            {
              goto LABEL_80;
            }

            FigAssetTrackGetCMBaseObject();
            v13 = v43;
            v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v44)
            {
              v44(v13, @"EstimatedDataRate", allocator, &cf);
              v33 = 0;
              OUTLINED_FUNCTION_9_39();
              if (!v46 && v45)
              {
                CFNumberGetValue(v45, kCFNumberFloat32Type, &time);
                v33 = (Seconds * *&time.value);
                goto LABEL_57;
              }
            }

            else
            {
              v33 = 0;
              OUTLINED_FUNCTION_9_39();
LABEL_57:
              v45 = cf;
            }

            if (v45)
            {
              CFRelease(v45);
              cf = 0;
            }

            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            goto LABEL_37;
          }

LABEL_36:
          v33 = 0;
          goto LABEL_37;
        }
      }
    }

    v31 = 0.0;
    v47 = 2000;
LABEL_63:
    v48 = vcvtd_n_s64_f64((*(v5 + 144) - v47) / Seconds / v31 * 0.95, 3uLL);
    if (v48 <= 64000)
    {
      v48 = 64000;
    }

    HIDWORD(v138) = v48;
    if (Count >= 1)
    {
      v49 = 0;
      v50 = *MEMORY[0x1E695E480];
      v51 = *MEMORY[0x1E6983558];
      do
      {
        v52 = CFArrayGetValueAtIndex(*(v5 + 80), v49);
        if (!*(v52 + 48))
        {
          v1 = v52;
          if (v52[75])
          {
            if (v52[8] == 1986618469)
            {
              v53 = v52[88];
              if (!v53 || v53 > SHIDWORD(v138))
              {
                v55 = CFNumberCreate(v50, kCFNumberSInt32Type, &v138 + 4);
                VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(v1 + 36));
                VTSessionSetProperty(VTCompressionSession, v51, v55);
                CFRelease(v55);
              }
            }
          }
        }

        ++v49;
      }

      while (Count != v49);
    }

LABEL_80:
    if (number)
    {
      CFRelease(number);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v2 = v132;
    if (*type)
    {
      CFRelease(*type);
    }
  }

  v58 = CFArrayGetCount(*(Storage + 80));
  if (!v58)
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_172;
  }

  v59 = v58;
  v60 = remakerFamily_getStorage(v2);
  v61 = CFArrayGetCount(*(v60 + 80));
  if (v61 >= 1)
  {
    v62 = v61;
    v63 = 0;
    v64 = *MEMORY[0x1E695E480];
    v1 = *MEMORY[0x1E6983630];
    do
    {
      v65 = CFArrayGetValueAtIndex(*(v60 + 80), v63);
      if (!*(v65 + 48))
      {
        v66 = v65;
        if (*(v65 + 8) == 1986618469)
        {
          if (v65[36])
          {
            time = **&MEMORY[0x1E6960C70];
            v137.value = 0;
            if (remakerFamily_getExpectedDuration(v132, &time))
            {
              break;
            }

            valuePtr = time;
            v137.value = CMTimeGetSeconds(&valuePtr);
            v67 = CFNumberCreate(v64, kCFNumberDoubleType, &v137);
            v68 = FigMediaProcessorGetVTCompressionSession(v66[36]);
            VTSessionSetProperty(v68, v1, v67);
            CFRelease(v67);
          }
        }
      }

      ++v63;
    }

    while (v62 != v63);
  }

  v2 = v132;
  v69 = remakerFamily_getStorage(v132);
  v70 = CFArrayGetCount(*(v69 + 80));
  if (v70 >= 1)
  {
    v71 = v70;
    v72 = 0;
    v129 = @"assetProperty_TrackReferences";
    allocator = *MEMORY[0x1E695E480];
    key = @"cdep";
    v127 = @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers";
    v126 = @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers";
    OUTLINED_FUNCTION_7_49();
    do
    {
      while (1)
      {
        v73 = CFArrayGetValueAtIndex(*(v69 + 80), v72);
        if (*(v73 + 8) == v1)
        {
          v74 = v73;
          if (v73[36])
          {
            break;
          }
        }

        if (++v72 == v71)
        {
          goto LABEL_146;
        }
      }

      v75 = remakerFamily_getStorage(v2);
      valuePtr.value = 0;
      v76 = v74[36];
      if (v76)
      {
        SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v76);
      }

      else
      {
        SampleBufferProcessor = 0;
      }

      if (*(v75 + 72))
      {
        v78 = *(v74 + 7);
        FigAssetGetCMBaseObject();
        v80 = v79;
        v81 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v81 || v81(v80, @"assetProperty_TrackReferences", allocator, &valuePtr))
        {
LABEL_132:
          Mutable = 0;
          v94 = 0;
LABEL_133:
          value = 0;
LABEL_134:
          LODWORD(v1) = 1;
          goto LABEL_135;
        }

        value = valuePtr.value;
        time.value = 0;
        if (!valuePtr.value)
        {
          Mutable = 0;
          v94 = 0;
          goto LABEL_134;
        }

        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          if (CFDictionaryGetValueIfPresent(value, @"cdep", &time))
          {
            v84 = CFArrayGetCount(time.value);
            if (v84 >= 2)
            {
              v85 = 1;
              v86 = v84 / 2;
              do
              {
                v87 = CFArrayGetValueAtIndex(time.value, v85 - 1);
                LODWORD(v137.value) = 0;
                CFNumberGetValue(v87, kCFNumberSInt32Type, &v137);
                if (LODWORD(v137.value) == v78)
                {
                  v88 = CFArrayGetValueAtIndex(time.value, v85);
                  CFArrayAppendValue(Mutable, v88);
                }

                v85 += 2;
                --v86;
              }

              while (v86);
            }
          }

          v2 = v132;
        }

        else
        {
          OUTLINED_FUNCTION_2_40();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v124, v125);
          if (v101)
          {
            goto LABEL_132;
          }
        }

        v89 = CFArrayGetCount(Mutable);
        if (v89 < 1)
        {
LABEL_121:
          v94 = 0;
          value = 0;
        }

        else
        {
          v90 = v89;
          v91 = 0;
          while (1)
          {
            LODWORD(time.value) = 0;
            v92 = CFArrayGetValueAtIndex(Mutable, v91);
            CFNumberGetValue(v92, kCFNumberSInt32Type, &time);
            ChannelBySourceTrackID = remakerFamily_getChannelBySourceTrackID(v2, time.value);
            if (ChannelBySourceTrackID)
            {
              if (ChannelBySourceTrackID[80] > 1u)
              {
                break;
              }
            }

            if (v90 == ++v91)
            {
              goto LABEL_121;
            }
          }

          if (!SampleBufferProcessor)
          {
            OUTLINED_FUNCTION_2_40();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v124, v125);
            v94 = 0;
            value = 0;
            LODWORD(v1) = v103 != 0;
            goto LABEL_135;
          }

          v94 = CFArrayCreate(allocator, 0, 0, MEMORY[0x1E695E9C0]);
          FigSampleBufferProcessorGetFigBaseObject();
          v96 = v95;
          v97 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v97 || v97(v96, @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers", v94))
          {
            goto LABEL_133;
          }

          value = CFArrayCreate(allocator, 0, 0, MEMORY[0x1E695E9C0]);
          FigSampleBufferProcessorGetFigBaseObject();
          v99 = v98;
          v100 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v100 || v100(v99, @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers", value))
          {
            goto LABEL_134;
          }
        }

        LODWORD(v1) = 0;
      }

      else
      {
        Mutable = 0;
        LODWORD(v1) = 0;
        v94 = 0;
        value = 0;
      }

LABEL_135:
      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      ++v72;
      OUTLINED_FUNCTION_7_49();
    }

    while ((v102 & 1) == 0);
  }

LABEL_146:
  if (v59 >= 1)
  {
    v104 = 0;
    do
    {
      v105 = CFArrayGetValueAtIndex(*(Storage + 80), v104);
      if (*(v105 + 356))
      {
        MultiPassPlaybackBossForTrack = remakerFamily_createMultiPassPlaybackBossForTrack(v105, v105 + 52);
        if (MultiPassPlaybackBossForTrack)
        {
          goto LABEL_172;
        }
      }
    }

    while (v59 != ++v104);
  }

  MultiPassPlaybackBossForTrack = remakerFamily_createSinglePassPlaybackBoss(v2, (Storage + 376));
  if (MultiPassPlaybackBossForTrack)
  {
    goto LABEL_172;
  }

  if (!*(Storage + 376))
  {
    *(Storage + 384) = 1;
  }

  v106 = *(Storage + 184);
  valuePtr = *(Storage + 88);
  v107 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v107)
  {
    v121 = 4294954514;
    goto LABEL_170;
  }

  time = valuePtr;
  MultiPassPlaybackBossForTrack = v107(v106, &time);
  if (MultiPassPlaybackBossForTrack || (remakerFamily_transferMetadata(v2), MultiPassPlaybackBossForTrack = remakerfamily_updateClientPID(v2), MultiPassPlaybackBossForTrack) || (remakerfamily_updateThrottleForBackground(v2), MultiPassPlaybackBossForTrack) || (MultiPassPlaybackBossForTrack = remakerFamily_startAllMultiPassTracks(v2, &v133 + 2), MultiPassPlaybackBossForTrack) || !BYTE2(v133) && (MultiPassPlaybackBossForTrack = remakerFamily_startAllSinglePassTracks(v2), MultiPassPlaybackBossForTrack))
  {
LABEL_172:
    v121 = MultiPassPlaybackBossForTrack;
    goto LABEL_170;
  }

  *(Storage + 472) = mach_absolute_time();
  remakerFamily_SetRemakerState(v2, 3, 0);
  if (dword_1EAF173A8)
  {
    LODWORD(v137.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v112 = v137.value;
    v113 = type[0];
    if (os_log_type_enabled(v111, type[0]))
    {
      v114 = v112;
    }

    else
    {
      v114 = v112 & 0xFFFFFFFE;
    }

    if (v114)
    {
      LODWORD(valuePtr.value) = 136315394;
      OUTLINED_FUNCTION_3_76();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v115, v116, v117, v118, v119, v111, v113, v120);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  remakerFamily_safelyPostNotification(v2, 0, @"Remaker_Started", 0, v2, v108, v109, v110, v123, v124, v125, v126, SBYTE2(v126), BYTE3(v126), SHIDWORD(v126), v127, SHIDWORD(v127), key, SWORD2(key), v129, v130, allocator, v132, v133, number, cf, *type, v137.value, *&v137.timescale, v137.epoch, v138, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v140, time.value, *&time.timescale, time.epoch, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
  v121 = 0;
LABEL_170:
  remakerFamily_PostFailureNotificationIfError(v2, 0, v121, 1u, 0);
  return v121;
}