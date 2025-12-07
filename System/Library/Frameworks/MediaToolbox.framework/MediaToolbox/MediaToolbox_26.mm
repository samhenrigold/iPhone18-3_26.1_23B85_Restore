uint64_t videoMentorThreadSendReversedGroup(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 a5, int a6, const void *a7, int a8, uint64_t a9)
{
  v82 = *MEMORY[0x1E69E9840];
  if (a4 >= 0)
  {
    v11 = a4 + 1;
  }

  else
  {
    v11 = a3;
  }

  if (*(a1 + 940) < a4)
  {
    *(a1 + 940) = a4;
  }

  v74 = *(MEMORY[0x1E6960C70] + 12);
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v73 = *(MEMORY[0x1E6960C80] + 16);
  v72 = *(MEMORY[0x1E6960C80] + 12);
  v63 = *MEMORY[0x1E6960450];
  v67 = *MEMORY[0x1E6960520];
  v13 = a3 - 1;
  v60 = (a2 + 30);
  v66 = *MEMORY[0x1E695E4D0];
  v65 = *MEMORY[0x1E6960560];
  v64 = *MEMORY[0x1E6960558];
  key = *MEMORY[0x1E6960540];
  v61 = *MEMORY[0x1E6960460];
  v62 = *MEMORY[0x1E6960458];
  do
  {
LABEL_7:
    if (a8)
    {
      sampleSizeArray.value = *MEMORY[0x1E6960C80];
      sampleSizeArray.timescale = *(MEMORY[0x1E6960C80] + 8);
      if (a3 < 1)
      {
        sampleSizeArray.value = *MEMORY[0x1E6960C70];
        sampleSizeArray.timescale = *(MEMORY[0x1E6960C70] + 8);
      }

      else
      {
        v14 = 0;
        v15 = a2;
        v16 = a3;
        epoch = v73;
        flags = v72;
        do
        {
          if (*(v15 + 29))
          {
            memset(&sampleTimingArray, 0, 24);
            CMSampleBufferGetOutputPresentationTimeStamp(&sampleTimingArray.duration, *v15);
            time1 = sampleTimingArray.duration;
            time2.value = sampleSizeArray.value;
            time2.timescale = sampleSizeArray.timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              sampleSizeArray.value = sampleTimingArray.duration.value;
              flags = sampleTimingArray.duration.flags;
              sampleSizeArray.timescale = sampleTimingArray.duration.timescale;
              epoch = sampleTimingArray.duration.epoch;
            }

            ++v14;
          }

          v15 += 32;
          --v16;
        }

        while (v16);
        if ((flags & 0x1D) == 1 && v14 > 1 || (sampleSizeArray.value = *MEMORY[0x1E6960C70], sampleSizeArray.timescale = *(MEMORY[0x1E6960C70] + 8), epoch = v12, flags = v74, v14 > 1))
        {
LABEL_21:
          sampleTimingArray.duration.value = sampleSizeArray.value;
          sampleTimingArray.duration.timescale = sampleSizeArray.timescale;
          sampleTimingArray.duration.flags = flags;
          sampleTimingArray.duration.epoch = epoch;
          videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], &sampleTimingArray.duration.value);
          *a9 = sampleSizeArray.value;
          *(a9 + 8) = sampleSizeArray.timescale;
          *(a9 + 12) = flags;
          *(a9 + 16) = epoch;
          goto LABEL_22;
        }
      }

      epoch = v12;
      flags = v74;
      if (*(a9 + 12))
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    v19 = videoMentorThreadWaitForOutputQueueToDropBelowHighWater(a1, a7);
    if (v19 || v11 < 1)
    {
      if (v19)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    v20 = 0;
    v21 = -1;
LABEL_25:
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    sampleTimingArray.duration.epoch = v12;
    if (a3 < 1)
    {
      return 0;
    }

    v22 = 0;
    v23 = 1;
    v24 = -1;
LABEL_27:
    v25 = a2 + 32 * v22;
    v26 = v22;
    do
    {
      if (*(v25 + 29))
      {
        memset(&time1, 0, sizeof(time1));
        CMSampleBufferGetPresentationTimeStamp(&time1, *v25);
        if ((v23 & 1) != 0 || (time2 = sampleTimingArray.duration, sampleSizeArray = time1, CMTimeCompare(&time2, &sampleSizeArray) < 0))
        {
          sampleTimingArray.duration = time1;
          v24 = v26;
        }

        v23 = 0;
        v22 = v26 + 1;
        if (v13 != v26)
        {
          goto LABEL_27;
        }

LABEL_37:
        *(a2 + 32 * v24 + 29) = 256;
        if (v21 <= v24)
        {
          v21 = v24;
        }

        if (++v20 == v11)
        {
          goto LABEL_42;
        }

        goto LABEL_25;
      }

      ++v26;
      v25 += 32;
    }

    while (a3 != v26);
    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v20)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  while (v21 < 0);
  v27 = v21 + 1;
  v28 = 1;
  v29 = v60;
  while (1)
  {
    v30 = *v29;
    if (*v29)
    {
      *(v29 - 1) = 0;
    }

    else if (*(v29 - 2))
    {
      goto LABEL_89;
    }

    v31 = *(v29 - 30);
    v58 = *(v29 - 6);
    v59 = v28;
    sbuf = v31;
    if (v58 >= 1)
    {
      break;
    }

    CFRetain(v31);
    v49 = *(v29 - 6);
    v50 = a1;
    v40 = v59;
LABEL_66:
    *(v29 - 6) = v49 + 1;
    if (a6)
    {
      memset(&sampleTimingArray, 0, 24);
      if (v30)
      {
        if (v58 >= 1)
        {
          v51 = *(v29 - 22);
          if (v51)
          {
            CMSetAttachment(sbuf, v65, v51, 1u);
          }

          v52 = *(v29 - 14);
          if (v52)
          {
            CMSetAttachment(sbuf, v64, v52, 1u);
          }
        }
      }

      else
      {
        if (v58 <= 0)
        {
          v53 = CMGetAttachment(sbuf, v65, 0);
          *(v29 - 22) = v53;
          if (v53)
          {
            CFRetain(v53);
          }

          v54 = CMGetAttachment(sbuf, v64, 0);
          *(v29 - 14) = v54;
          if (v54)
          {
            CFRetain(v54);
          }
        }

        CMSampleBufferGetDuration(&sampleTimingArray.duration, sbuf);
        time1 = sampleTimingArray.duration;
        audioMentorSetAttachmentAsFigTimeDictionary(sbuf, v65, &time1);
        CMSetAttachment(sbuf, v64, 0, 1u);
        v40 = v59;
      }
    }

    v55 = videoMentorThreadSendSampleBuffer(v50, sbuf, 0, v30 == 0, 0, a5, 0, v40);
    if (!v55)
    {
      if (!v30)
      {
        ++*(a1 + 948);
      }

      if (*(a1 + 116))
      {
        v55 = 0xFFFFFFFFLL;
      }

      else
      {
        v55 = 0;
      }
    }

    if (sbuf)
    {
      CFRelease(sbuf);
    }

    if (v55)
    {
      return v55;
    }

    a5 = 0;
    v28 = 0;
LABEL_89:
    v29 += 32;
    if (!--v27)
    {
      goto LABEL_7;
    }
  }

  time2.value = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  sampleSizeArray.value = CMSampleBufferGetSampleSize(v31, 0);
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(v31, 0, &sampleTimingArray);
  if (SampleTimingInfo)
  {
    return SampleTimingInfo;
  }

  v57 = v30;
  v33 = CFGetAllocator(v31);
  DataBuffer = CMSampleBufferGetDataBuffer(v31);
  FormatDescription = CMSampleBufferGetFormatDescription(v31);
  v36 = CMSampleBufferCreate(v33, DataBuffer, 0, 0, 0, FormatDescription, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &time2);
  value = time2.value;
  if (!v36)
  {
    v36 = CMSampleBufferTrackDataReadiness(time2.value, v31);
    value = time2.value;
    if (!v36)
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v31);
      CMSampleBufferSetOutputPresentationTimeStamp(value, &time1);
      v38 = CMGetAttachment(v31, key, 0);
      if (v38)
      {
        CMSetAttachment(time2.value, key, v38, 1u);
      }

      SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v31, 0);
      v40 = v59;
      if (SampleAttachmentsArray)
      {
        v41 = SampleAttachmentsArray;
        v42 = CMSampleBufferGetSampleAttachmentsArray(time2.value, 1u);
        if (v42)
        {
          v43 = v42;
          ValueAtIndex = CFArrayGetValueAtIndex(v41, 0);
          v45 = CFArrayGetValueAtIndex(v43, 0);
          v46 = CFDictionaryGetValue(ValueAtIndex, v62);
          if (v46)
          {
            CFDictionarySetValue(v45, v62, v46);
          }

          v47 = CFDictionaryGetValue(ValueAtIndex, v61);
          if (v47)
          {
            CFDictionarySetValue(v45, v61, v47);
          }

          v48 = CFDictionaryGetValue(ValueAtIndex, v63);
          v40 = v59;
          if (v48)
          {
            CFDictionarySetValue(v45, v63, v48);
          }
        }
      }

      FigSampleBufferGetDecryptor();
      FigSampleBufferSetDecryptor();
      sbuf = time2.value;
      CMSetAttachment(time2.value, v67, v66, 1u);
      v49 = *(v29 - 6);
      v50 = a1;
      if (v49 > *(a1 + 944))
      {
        *(a1 + 944) = v49;
      }

      v30 = v57;
      goto LABEL_66;
    }
  }

  v55 = v36;
  if (value)
  {
    CFRelease(value);
  }

  return v55;
}

void videoMentorThreadReleaseSampleBuffersInReversalArray(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2 >= 1)
    {
      v3 = (a1 + 16);
      do
      {
        v4 = *(v3 - 2);
        if (v4)
        {
          CFRelease(v4);
          *(v3 - 2) = 0;
        }

        v5 = *(v3 - 1);
        if (v5)
        {
          CFRelease(v5);
          *(v3 - 1) = 0;
        }

        if (*v3)
        {
          CFRelease(*v3);
          *v3 = 0;
        }

        v3 += 4;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t videoMentorPushCursorIntoSelectedCursors(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 80);
    while (*v6)
    {
      ++v5;
      v6 += 32;
      if (v4 == v5)
      {
        v5 = *(a1 + 88);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == v4)
  {
LABEL_8:
    if (v4 - 0x400000000000000 < 0xFC00000000000001 || (v7 = malloc_type_realloc(*(a1 + 80), v4 << 6, 0x5BB01B74uLL)) == 0)
    {
      videoMentorThrottlingStateClearSelectedCursors(a1);
      v11 = *(a1 + 80);
      if (v11)
      {
        *(a1 + 80) = 0;
        free(v11);
      }

      *(a1 + 88) = 0;
      return -1;
    }

    v8 = v7;
    bzero(&v7[32 * *(a1 + 88)], (v4 << 6) - 32 * *(a1 + 88));
    v9 = 2 * *(a1 + 88);
    *(a1 + 80) = v8;
    *(a1 + 88) = v9;
    if (v4 >= v9)
    {
      return -1;
    }

    v6 = &v8[32 * v4];
  }

  if (!v6 || *v6)
  {
    return -1;
  }

  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  *v6 = v10;
  v13 = MEMORY[0x1E6960C70];
  *(v6 + 8) = *MEMORY[0x1E6960C70];
  *(v6 + 3) = *(v13 + 16);
  return v5;
}

uint64_t videoMentorIsDroppableFrame(uint64_t a1)
{
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v3)
    {
      v4 = v3(a1, &v13 + 1, &v13, 0);
      if (!v4)
      {
        v5 = HIBYTE(v13) - 66;
        if (v5 <= 0xE && ((1 << v5) & 0x4081) != 0)
        {
          return HIBYTE(v13) == 66;
        }

        v9 = qword_1EAF16DF0;
        v10 = v1;
        v4 = 4294967294;
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 4294954514;
    }

    v9 = qword_1EAF16DF0;
    v10 = v1;
LABEL_14:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v4, "<<<< VideoMentor >>>>", 5729, v10);
    return 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = v7(a1, &v12 + 1, &v12, 0, &v11);
    if (!v8)
    {
      return v11;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v8, "<<<< VideoMentor >>>>", 5732, v1);
  return 0;
}

__n128 OUTLINED_FUNCTION_3_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(v47 + 32) = *a47;
  *(v47 + 48) = *(a47 + 16);
  result = *a39;
  *v47 = *a39;
  *(v47 + 16) = a39[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_14_11()
{
  *(v1 + 32) = *(v2 + 112);
  *(v1 + 48) = *(v2 + 128);
  result = *v0;
  *v1 = *v0;
  *(v1 + 16) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_19_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a43, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a44)
{
  result = a44;
  v45[2] = a44;
  v45[3].n128_u64[0] = v44;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  v51 = *(v49 + 296);

  return videoMentorDependencyStateGetNodeForCursor(v48, v48 + 744, v51, a30, 0, va);
}

uint64_t OUTLINED_FUNCTION_23_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *time2, uint64_t a50, CMTime *time1, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, __int128 time2a, uint64_t time2_16, uint64_t a59, uint64_t time1a)
{
  time2a = *v60;
  time2_16 = *(v60 + 16);

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_24_6()
{
  result = v0[17];
  v1[10] = result;
  v1[11].n128_u64[0] = v0[18].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_27_5@<Q0>(unint64_t a1@<X8>)
{
  v2[9].n128_u64[0] = a1;
  result = v1[20];
  v2[6] = result;
  v2[7].n128_u64[0] = v1[21].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_7@<X0>(uint64_t a1@<X8>, CMTime *time2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CMTime *time1, uint64_t time2_8, uint64_t time2_16, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time1);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return CMBaseObjectGetVTable();
}

CFMutableArrayRef OUTLINED_FUNCTION_30_5()
{

  return CFArrayCreateMutable(v0, 0, v1);
}

__n128 OUTLINED_FUNCTION_40_3@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 240) = *a1;
  *(v1 - 224) = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_43_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a43, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a44)
{
  result = a44;
  *a25 = a44;
  a25[1].n128_u64[0] = v44;
  return result;
}

void OUTLINED_FUNCTION_53_3(CFIndex otherRange)
{
  v4.length = otherRange;
  v4.location = 0;

  CFArrayAppendArray(v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_54_5()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigCEA608DataInspectorCreate(const void *a1, void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x19A8CC720](a1, 24, 0x10600408A10481FLL, 0);
    if (v4)
    {
      v5 = v4;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      v7 = 0;
      *v5 = v6;
      *a2 = v5;
    }

    else
    {
      FigCEA608DataInspectorCreate_cold_1(&v9);
      v7 = v9;
    }
  }

  else
  {
    FigCEA608DataInspectorCreate_cold_2(&v10);
    v7 = v10;
  }

  FigCEA608DataInspectorRelease(0);
  return v7;
}

void FigCEA608DataInspectorRelease(CFAllocatorRef *ptr)
{
  if (ptr)
  {
    v1 = *ptr;
    CFAllocatorDeallocate(*ptr, ptr);
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t FigCEA608DataInspectorInspectBytePair(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, CFMutableStringRef *a5)
{
  v15 = 0;
  if (!a1)
  {
    FigCEA608DataInspectorInspectBytePair_cold_5(&v16);
    return v16;
  }

  if (!a2)
  {
    FigCEA608DataInspectorInspectBytePair_cold_4(&v16);
    return v16;
  }

  if (!a3)
  {
    FigCEA608DataInspectorInspectBytePair_cold_3(&v16);
    return v16;
  }

  if (!a4)
  {
    FigCEA608DataInspectorInspectBytePair_cold_2(&v16);
    return v16;
  }

  LOBYTE(v15) = *a2 & 0x7F;
  if (a3 != 1)
  {
    HIBYTE(v15) = a2[1] & 0x7F;
  }

  if (!a5)
  {
    inspectorInspectBytePair(a1, &v15, a3, a4, 0);
    return v9;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    FigCEA608DataInspectorInspectBytePair_cold_1(&v16);
    return v16;
  }

  v12 = Mutable;
  inspectorInspectBytePair(a1, &v15, a3, a4, Mutable);
  v10 = v13;
  if (v13)
  {
    CFRelease(v12);
  }

  else
  {
    *a5 = v12;
  }

  return v10;
}

CFStringRef OUTLINED_FUNCTION_3_30(const __CFAllocator *a1, const UInt8 *a2)
{

  return CFStringCreateWithBytes(a1, a2, 2, 0x10000100u, 0);
}

void OUTLINED_FUNCTION_4_34(CFStringRef appendedString)
{

  CFStringAppend(v1, appendedString);
}

uint64_t faqts_waitAudioQueueStartSynchronous(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    return 4294954348;
  }

  v5 = a1;
  v6 = 0;
  if (v1 == dispatch_get_current_queue())
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = &v6;
    dispatch_sync_f(v1, &v5, faqts_getAudioQueueStartErrorInternal);
  }

  return *v3;
}

uint64_t faqts_convertTimingShimTimeStampToAQTimeStamp@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (*(a2 + 56))
  {
    v7 = result;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    v18 = 0.0;
    CMTimeMake(&v17, *a2, *(result + 52));
    lhs = v17;
    rhs = *(v7 + 28);
    CMTimeSubtract(&v16, &lhs, &rhs);
    v8 = *(v7 + 52);
    lhs = v16;
    CMTimeConvertScale(&v13, &lhs, v8, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v13.value;
    result = AudioQueueConvertToUnscaledSampleTime();
    v10 = v18;
    if (result)
    {
      v10 = value;
    }

    v11 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v11;
    v12 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v12;
    *a3 = v10;
  }

  else
  {
    v5 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v5;
    v6 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v6;
  }

  return result;
}

CMTime *faqts_convertAQTimeStampToTimingShimTimeStamp@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (*(a2 + 56))
  {
    v7 = result;
    v17 = 0.0;
    memset(&v16, 0, sizeof(v16));
    memset(&v15, 0, sizeof(v15));
    v8 = *a2;
    if (AudioQueueConvertToScaledSampleTime())
    {
      v17 = v8;
    }

    else
    {
      v8 = v17;
    }

    CMTimeMake(&v16, v8, HIDWORD(v7[2].value));
    lhs = v16;
    rhs = *(v7 + 28);
    CMTimeAdd(&v15, &lhs, &rhs);
    v9 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v9;
    v10 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v10;
    value_high = HIDWORD(v7[2].value);
    lhs = v15;
    result = CMTimeConvertScale(&v12, &lhs, value_high, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a3 = v12.value;
  }

  else
  {
    v5 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v5;
    v6 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v6;
  }

  return result;
}

void faqts_audioQueueStartAsync(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = malloc_type_malloc(0x38uLL, 0x10A0040BEAD7E86uLL);
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v12 + 24) = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = FigGetUpTimeNanoseconds();
  if (a1)
  {
    CFRetain(a1);
  }

  v13 = a1[8];

  dispatch_async_f(v13, v12, faqts_audioQueueStartInternal);
}

uint64_t registerFigAudioQueueTimingShimType()
{
  result = _CFRuntimeRegisterClass();
  sFigAudioQueueTimingShimID = result;
  return result;
}

void faqts_audioQueueStartInternal(CFTypeRef *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 17);
  if (*(a1 + 24))
  {
    if (v3)
    {
      if (!dword_1EAF16E18)
      {
LABEL_12:
        v6 = AudioQueueStartWithFlags();
        goto LABEL_14;
      }
    }

    else if (!dword_1EAF16E18)
    {
      goto LABEL_12;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  if (!v3)
  {
    if (!dword_1EAF16E18)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (dword_1EAF16E18)
  {
LABEL_7:
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  v6 = AudioQueueStart(v2[2], v2[17]);
LABEL_14:
  *(v2 + 6) = v6;
  v7 = a1[1];
  if (v7)
  {
    v7(a1[2], v6);
  }

  v8 = a1[4];
  if (v8)
  {
    v8(a1[5], 0);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t faqts_getAudioDeviceScreenLatencyFromDevice(uint64_t a1, void *a2)
{
  inQualifierData = a1;
  *&inAddress.mSelector = 0x676C6F6272756964;
  inAddress.mElement = 0;
  inObjectID = 0;
  ioDataSize = 4;
  PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 8u, &inQualifierData, &ioDataSize, &inObjectID);
  if (!PropertyData && inObjectID)
  {
    *&inAddress.mSelector = 0x6F7574706170736CLL;
    inAddress.mElement = 0;
    ioDataSize = 4;
    return AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, a2);
  }

  return PropertyData;
}

double faqts_init(_OWORD *a1)
{
  result = 0.0;
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

void faqts_finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CMTime *OUTLINED_FUNCTION_7_16(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CMTime *a17)
{
  *(v17 - 24) = 0;
  *(v17 - 40) = 0u;
  *(v17 - 56) = 0u;
  *(v17 - 72) = 0u;
  *(v17 - 24) = 1;
  v19 = *(a1 + 52);
  a9 = *a2;
  a10 = *(a2 + 16);

  return CMTimeConvertScale(&a17, &a9, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

Float64 OUTLINED_FUNCTION_14_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, CMTime *time, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_15_10(AudioObjectID a1, const AudioObjectPropertyAddress *a2, uint64_t a3, uint64_t a4, UInt32 *a5, void *a6)
{

  return AudioObjectGetPropertyData(a1, a2, 0, 0, a5, a6);
}

__n128 OUTLINED_FUNCTION_16_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12, __int128 a13)
{
  *v13 = a9;
  v13[1] = a10;
  result = a12;
  v13[2] = a12;
  v13[3] = a13;
  return result;
}

__n128 OUTLINED_FUNCTION_17_7@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

CMTime *OUTLINED_FUNCTION_19_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v12 = *(v10 + 52);

  return CMTimeMake(v9, *&a9, v12);
}

void *EditMentorSetDebugName(void *result, CFTypeRef cf)
{
  if (result)
  {
    v3 = result;
    v4 = result[37];
    if (v4)
    {
      CFRelease(v4);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    v3[37] = result;
  }

  return result;
}

uint64_t EditMentorSetModeToDoNothing_fun(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  editMentorStartNewParentOrder(v2, 0, 0);
  *(v2 + 320) = 0;
  v6 = *(v2 + 672);
  if (v6)
  {
    CFRelease(v6);
    *(v2 + 672) = 0;
  }

  result = editMentorSetChildMentorModeToDoNothing(v2, v3, v4);
  *(a1 + 24) = result;
  return result;
}

void EditMentorSetModeToScrub_fun(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v37.value = *(a1 + 8);
  v6 = *(a1 + 32);
  v37.epoch = *(a1 + 24);
  timescale = 0;
  value = 0;
  if (dword_1EAF16E38)
  {
    v36 = v4;
    LODWORD(v40.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = v36;
  }

  editMentorStartNewParentOrder(v2, v6, v5);
  *(v2 + 320) = 1;
  v8 = *(v2 + 672);
  if (v8)
  {
    CFRelease(v8);
    *(v2 + 672) = 0;
  }

  FigSimpleMutexLock();
  v9 = *(v2 + 336);
  if (v9)
  {
    CFRelease(v9);
    *(v2 + 336) = 0;
  }

  FigSimpleMutexUnlock();
  v43 = 0u;
  memset(&v44, 0, sizeof(v44));
  memset(time, 0, sizeof(time));
  memset(&v40, 0, sizeof(v40));
  cf = 0;
  v10 = *(v2 + 128);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      *&time1.start.value = *&v37.value;
      time1.start.epoch = v37.epoch;
      v12 = v11(v10, &time1, &cf);
      if (!v12)
      {
        v13 = cf;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v14)
        {
          v15 = 4294954514;
LABEL_21:
          EditMentorSetModeToScrub_fun_cold_1(v15);
          goto LABEL_22;
        }

        v15 = v14(v13, time);
        if (v15)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v12 = 4294954514;
    }

    EditMentorSetModeToScrub_fun_cold_2(v12);
    goto LABEL_22;
  }

  v16 = *(v2 + 184);
  v43 = *(v2 + 168);
  *&v44.start.value = v16;
  v17 = *(v2 + 216);
  *&v44.start.epoch = *(v2 + 200);
  *&v44.duration.timescale = v17;
  v18 = *(v2 + 152);
  *time = *(v2 + 136);
  *&time[16] = v18;
LABEL_14:
  *&time1.start.value = *&v37.value;
  time1.start.epoch = v37.epoch;
  type = v44.start;
  if ((CMTimeCompare(&time1.start, &type) & 0x80000000) == 0)
  {
    time1 = v44;
    CMTimeRangeGetEnd(&v40, &time1);
    time1.start = v40;
    type = v37;
    if ((CMTimeCompare(&time1.start, &type) & 0x80000000) == 0 && (time[12] & 0x1D) == 1)
    {
      v19 = 0;
      v20 = *&v44.start.value;
      *(v2 + 400) = v43;
      *(v2 + 416) = v20;
      v21 = *&v44.duration.timescale;
      *(v2 + 432) = *&v44.start.epoch;
      *(v2 + 448) = v21;
      v22 = *&time[16];
      *(v2 + 368) = *time;
      *(v2 + 384) = v22;
      goto LABEL_23;
    }
  }

LABEL_22:
  v19 = 1;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    v40 = **&MEMORY[0x1E6960C70];
  }

  else
  {
    *&time1.start.value = *&v37.value;
    time1.start.epoch = v37.epoch;
    v23 = *(v2 + 416);
    v43 = *(v2 + 400);
    *&v44.start.value = v23;
    v24 = *(v2 + 448);
    *&v44.start.epoch = *(v2 + 432);
    *&v44.duration.timescale = v24;
    v25 = *(v2 + 384);
    *time = *(v2 + 368);
    *&time[16] = v25;
    editMentorMapTrackTimeToMediaTimeUsingEditSegment(&time1.start, time, &v40);
  }

  value = v40.value;
  flags = v40.flags;
  timescale = v40.timescale;
  if ((v40.flags & 0x1D) != 1)
  {
    *time = *&v37.value;
    *&time[16] = v37.epoch;
    v31 = editMentorSetChildMentorModeToEmptyEdit(v2, 0, time, 0, v5, v3);
    goto LABEL_39;
  }

  epoch = v40.epoch;
  time1.start.value = 0;
  v28 = editMentorRetainCurrentChildOrderAndOptionsDictionary(v2, &time1);
  v29 = *v2;
  if (*v2)
  {
    *time = value;
    *&time[8] = timescale;
    *&time[12] = flags;
    *&time[16] = epoch;
    v30 = VideoMentorSetModeToScrub(v29, 0, time, time1.start.value, v4, v3, v28);
  }

  else
  {
    v32 = *(v2 + 8);
    if (v32)
    {
      v30 = AudioMentorSetModeToDoNothing(v32, 0, v3);
    }

    else
    {
      v33 = *(v2 + 16);
      if (v33)
      {
        *&time[16] = timescale;
        *&time[20] = flags;
        *time = v33;
        *&time[8] = value;
        *&time[24] = epoch;
        *&v43 = time1.start.value;
        *(&v43 + 1) = v4;
        v44.start.value = v3;
        *&v44.start.timescale = v28;
        v44.start.epoch = 0;
        dispatch_sync_f(*(v33 + 304), time, EditMentorSetModeToScrub_fun);
        v31 = v44.start.epoch;
        goto LABEL_35;
      }

      if (!*(v2 + 24))
      {
        v31 = 0;
        goto LABEL_35;
      }

      v34 = *(v2 + 72);
      v35 = *(v2 + 40);
      *time = value;
      *&time[8] = timescale;
      *&time[12] = flags;
      *&time[16] = epoch;
      v30 = v34(v35, time, time1.start.value, v4, v3, v28);
    }
  }

  v31 = v30;
LABEL_35:
  if (v28)
  {
    CFRelease(v28);
  }

  if (time1.start.value)
  {
    CFRelease(time1.start.value);
  }

LABEL_39:
  *(a1 + 64) = v31;
}

uint64_t EditMentorSetModeToForwardPlayback_fun(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 72);
  v14 = *(a1 + 64);
  v4 = *(a1 + 80);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  v15 = *(a1 + 32);
  v5 = *(a1 + 56);
  v16 = *(a1 + 48);
  v19 = 1;
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  editMentorStartNewParentOrder(v2, v5, v4);
  *(v2 + 320) = 2;
  *(v2 + 620) = v17;
  *(v2 + 636) = v18;
  *(v2 + 644) = v15;
  *(v2 + 660) = v16;
  v7 = *(v2 + 672);
  if (v7)
  {
    CFRelease(v7);
    *(v2 + 672) = 0;
  }

  v24 = 0u;
  memset(time, 0, sizeof(time));
  v8 = *(v2 + 636);
  v20 = *(v2 + 620);
  v21 = v8;
  *v22 = *(v2 + 652);
  if (editMentorSelectFirstEditSegmentForParentRange(v2, &v20, &v19, time))
  {
    *(v2 + 672) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (!v19)
    {
      v20 = time[0];
      v21 = time[1];
      *v22 = v24;
      result = editMentorSetChildMentorModeToForwardPlayback(v2, &v20, v14);
      goto LABEL_13;
    }

    v20 = v17;
    *&v21 = v18;
    v9 = v2;
    v10 = 0;
    v11 = v4;
    v12 = 0;
  }

  else
  {
    v20 = v17;
    *&v21 = v18;
    v9 = v2;
    v10 = 1;
    v11 = v4;
    v12 = v3;
  }

  result = editMentorSetChildMentorModeToEmptyEdit(v9, 0, &v20, v10, v11, v12);
LABEL_13:
  *(a1 + 88) = result;
  return result;
}

uint64_t EditMentorSetModeToReversePlayback(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = 0;
  dispatch_sync_f(*(a1 + 304), &v8, EditMentorSetModeToReversePlayback_fun);
  return v17;
}

uint64_t EditMentorSetModeToReversePlayback_fun(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 72);
  v16 = *(a1 + 64);
  v4 = *(a1 + 80);
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v21 = *(a1 + 32);
  v5 = *(a1 + 44);
  v22 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v20 = 1;
  if (dword_1EAF16E38)
  {
    v17 = v3;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = v17;
  }

  if ((v5 & 1) == 0)
  {
    v21 = *MEMORY[0x1E6960C80];
    v5 = *(MEMORY[0x1E6960C80] + 12);
    v22 = *(MEMORY[0x1E6960C80] + 8);
    v6 = *(MEMORY[0x1E6960C80] + 16);
  }

  editMentorStartNewParentOrder(v2, v7, v4);
  *(v2 + 320) = 3;
  *(v2 + 620) = v21;
  *(v2 + 628) = v22;
  *(v2 + 632) = v5;
  *(v2 + 636) = v6;
  *(v2 + 644) = v18;
  *(v2 + 660) = v19;
  v9 = *(v2 + 672);
  if (v9)
  {
    CFRelease(v9);
    *(v2 + 672) = 0;
  }

  v27 = 0u;
  memset(time, 0, sizeof(time));
  v10 = *(v2 + 636);
  v23 = *(v2 + 620);
  v24 = v10;
  *v25 = *(v2 + 652);
  if (editMentorSelectFirstEditSegmentForParentRange(v2, &v23, &v20, time))
  {
    *(v2 + 672) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (!v20)
    {
      v23 = time[0];
      v24 = time[1];
      *v25 = v27;
      result = editMentorSetChildMentorModeToReversePlayback(v2, &v23, v16);
      goto LABEL_15;
    }

    v23 = v18;
    *&v24 = v19;
    v11 = v2;
    v12 = 0;
    v13 = v4;
    v14 = 0;
  }

  else
  {
    v23 = v18;
    *&v24 = v19;
    v11 = v2;
    v12 = 1;
    v13 = v4;
    v14 = v3;
  }

  result = editMentorSetChildMentorModeToEmptyEdit(v11, 0, &v23, v12, v13, v14);
LABEL_15:
  *(a1 + 88) = result;
  return result;
}

uint64_t EditMentorSetModeToEmptyEdit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v7 = 0;
  dispatch_sync_f(*(a1 + 304), v6, EditMentorSetModeToEmptyEdit_fun);
  return v7;
}

uint64_t EditMentorSetModeToEmptyEdit_fun(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  editMentorStartNewParentOrder(v2, v5, v6);
  *(v2 + 320) = 0;
  v8 = *(v2 + 672);
  if (v8)
  {
    CFRelease(v8);
    *(v2 + 672) = 0;
  }

  result = editMentorSetChildMentorModeToEmptyEdit(v2, v3, MEMORY[0x1E6960C70], 0, v6, v4);
  *(a1 + 40) = result;
  return result;
}

uint64_t EditMentorSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 304), v4, EditMentorSetProperty_fun);
  return v5;
}

uint64_t EditMentorSetProperty_fun(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (editMentorPropertyNeedsToBeRescaled(v3))
  {
    FigSimpleMutexLock();
    v5 = *(v2 + 280);
    if (v4)
    {
      CFDictionarySetValue(v5, v3, v4);
    }

    else
    {
      CFDictionaryRemoveValue(v5, v3);
    }

    FigSimpleMutexUnlock();
  }

  result = editMentorSetChildMentorProperty(v2, v3, v4);
  *(a1 + 6) = result;
  return result;
}

void editMentorEditsChanged_orderQueue(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a2 + 304));
  if (*(a2 + 566))
  {
    *(a2 + 566) = 0;
    v3 = *(a2 + 568);
    if (v3)
    {
      v4 = CFRetain(v3);
      editMentorAdvanceToNextEdit(a2, v4, *(a2 + 320), 0, 0);
      if (v4)
      {

        CFRelease(v4);
      }
    }

    else
    {
      v5 = *(a2 + 320);

      editMentorAdvanceToNextEdit(a2, 0, v5, 0, 0);
    }
  }
}

void editMentorAdvanceToNextEdit(uint64_t a1, const char *a2, int a3, int a4, uint64_t a5)
{
  v96 = *MEMORY[0x1E69E9840];
  memset(&v87, 0, sizeof(v87));
  editMentorStartNewChildOrder(a1, a2);
  if ((a3 & 0xFFFFFFFE) != 2)
  {

    editMentorPostOrderCompletionNotification(a1, a2, 0);
    return;
  }

  if (a4 && *(a1 + 289))
  {
    if (dword_1EAF16E38)
    {
      LODWORD(v88.start.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = a1;
    v15 = a2;
    v16 = 1;
    goto LABEL_21;
  }

  *&type.start.value = *(a1 + 620);
  *&type.start.epoch = *(a1 + 636);
  *&type.duration.timescale = *(a1 + 652);
  if (!*(a1 + 562))
  {
    if (*(a1 + 560))
    {
      *(a1 + 560) = 0;
      v17 = (a1 + 565);
      *(a1 + 565) = editMentorCurrentEditIsLastOpenEndedEdit(a1);
LABEL_59:
      v50 = *(a1 + 416);
      *&range.duration.timescale = *(a1 + 400);
      *&v94.start.value = v50;
      v51 = *(a1 + 448);
      *&v94.start.epoch = *(a1 + 432);
      *&v94.duration.timescale = v51;
      v52 = *(a1 + 384);
      *&range.start.value = *(a1 + 368);
      *&range.start.epoch = v52;
      v95 = type;
      if (editMentorDoesEditSegmentIntersectTrackRange(&range, &v95))
      {
        if ((*(a1 + 380) & 1) == 0)
        {
          v53 = *(a1 + 561);
LABEL_110:
          *&v95.start.value = *(a1 + 416);
          v95.start.epoch = *(a1 + 432);
          if (v53 != (a3 == 3))
          {
            v76 = *(a1 + 432);
            *&range.start.value = *(a1 + 416);
            *&range.start.epoch = v76;
            *&range.duration.timescale = *(a1 + 448);
            CMTimeRangeGetEnd(&v95.start, &range);
            v53 = *(a1 + 561);
          }

          *&range.start.value = *&v95.start.value;
          range.start.epoch = v95.start.epoch;
          v75 = editMentorSetChildMentorModeToEmptyEdit(a1, 0, &range, v53, a2, 0);
          goto LABEL_113;
        }

        v95 = type;
        v56 = *(a1 + 416);
        *&range.duration.timescale = *(a1 + 400);
        *&v94.start.value = v56;
        v57 = *(a1 + 448);
        *&v94.start.epoch = *(a1 + 432);
        *&v94.duration.timescale = v57;
        v58 = *(a1 + 384);
        *&range.start.value = *(a1 + 368);
        *&range.start.epoch = v58;
        editMentorIntersectTrackRangeWithEditSegmentAndMapToMediaRange(a1, &v95.start, &range.start.value, &v87);
        editMentorUpdateChildMentorProperties(a1);
        v59 = *(a1 + 563);
        dispatch_assert_queue_V2(*(a1 + 304));
        Mutable = *(a1 + 608);
        v61 = MEMORY[0x1E695E4D0];
        if (v59 && !Mutable)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(a1 + 608) = Mutable;
          if (Mutable)
          {
            goto LABEL_70;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, LODWORD(type.start.value));
          Mutable = *(a1 + 608);
        }

        if (!Mutable)
        {
          goto LABEL_87;
        }

        if (!v59)
        {
          CFDictionaryRemoveValue(Mutable, @"ContinueFromPreviousOrder");
LABEL_87:
          v69 = *(a1 + 564);
          dispatch_assert_queue_V2(*(a1 + 304));
          v70 = *(a1 + 608);
          if (v69 && !v70)
          {
            v70 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(a1 + 608) = v70;
            if (v70)
            {
LABEL_93:
              CFDictionarySetValue(v70, @"OrderIsContinuousWithPreviousOrder", *v61);
              goto LABEL_95;
            }

            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, LODWORD(type.start.value));
            v70 = *(a1 + 608);
          }

          if (v70)
          {
            if (!v69)
            {
              CFDictionaryRemoveValue(v70, @"OrderIsContinuousWithPreviousOrder");
              goto LABEL_95;
            }

            goto LABEL_93;
          }

LABEL_95:
          if (*(a1 + 566))
          {
            if (dword_1EAF16E38)
            {
              LODWORD(v88.start.value) = 0;
              v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = v88.start.value;
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                v73 = value;
              }

              else
              {
                v73 = value & 0xFFFFFFFE;
              }

              if (v73)
              {
                v74 = *(a1 + 296);
                LODWORD(v95.start.value) = 136315650;
                *(&v95.start.value + 4) = "editMentorAdvanceToNextEdit";
                LOWORD(v95.start.flags) = 2048;
                *(&v95.start.flags + 2) = a1;
                HIWORD(v95.start.epoch) = 2114;
                v95.duration.value = v74;
                LODWORD(v85) = 32;
                _os_log_send_and_compose_impl(v73, 0, &range, 128, &dword_1962D5000, v71, 0, "<<<< EditMentor >>>> %s: (%p) %{public}@: now waiting for last edit to grow", &v95, v85);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (*(a1 + 680))
            {
              editMentorPostSyntheticPrerollCompleteNotification(a1, a2, 1);
            }

            return;
          }

          range = v87;
          if (a3 == 2)
          {
            v75 = editMentorSetChildMentorModeToForwardPlayback(a1, &range, 0);
          }

          else
          {
            v75 = editMentorSetChildMentorModeToReversePlayback(a1, &range, 0);
          }

LABEL_113:
          if (v75)
          {
            v77 = FigMentorNotificationPayloadCreate(@"MentorStoppingDueToError", a2, v75, *(a1 + 288), *(a1 + 672), a5);
            v78 = *(a1 + 672);
            if (v78)
            {
              CFRelease(v78);
              *(a1 + 672) = 0;
            }

            LODWORD(v88.start.value) = 0;
            v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v80 = v88.start.value;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v81 = v80;
            }

            else
            {
              v81 = v80 & 0xFFFFFFFE;
            }

            if (v81)
            {
              v82 = *(a1 + 296);
              if (*(a1 + 288))
              {
                v83 = "YES";
              }

              else
              {
                v83 = "NO";
              }

              LODWORD(v95.start.value) = 136315906;
              *(&v95.start.value + 4) = "editMentorAdvanceToNextEdit";
              LOWORD(v95.start.flags) = 2048;
              *(&v95.start.flags + 2) = a1;
              HIWORD(v95.start.epoch) = 2114;
              v95.duration.value = v82;
              LOWORD(v95.duration.timescale) = 2082;
              *(&v95.duration.timescale + 2) = v83;
              LODWORD(v85) = 42;
              _os_log_send_and_compose_impl(v81, 0, &range, 128, &dword_1962D5000, v79, 0, "<<<< EditMentor >>>> %s: (%p) %{public}@: StoppingDueToError, mentor->samplesWereGenerated = %{public}s", &v95, v85);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            if (v77)
            {
              CFRelease(v77);
            }
          }

          return;
        }

LABEL_70:
        CFDictionarySetValue(Mutable, @"ContinueFromPreviousOrder", *v61);
        goto LABEL_87;
      }

LABEL_62:
      if (*(a1 + 320) == 2)
      {
        memset(&v95, 0, 24);
        v54 = *(a1 + 432);
        *&range.start.value = *(a1 + 416);
        *&range.start.epoch = v54;
        *&range.duration.timescale = *(a1 + 448);
        CMTimeRangeGetEnd(&v95.start, &range);
        *&range.start.value = *&v95.start.value;
        range.start.epoch = v95.start.epoch;
        *&v88.start.value = *&type.duration.value;
        v88.start.epoch = type.duration.epoch;
        v55 = &v88;
      }

      else
      {
        *&range.start.value = *&type.start.value;
        range.start.epoch = type.start.epoch;
        *&v95.start.value = *(a1 + 416);
        v95.start.epoch = *(a1 + 432);
        v55 = &v95;
      }

      v62 = CMTimeCompare(&range.start, &v55->start);
      if (!*v17)
      {
        if (*(a1 + 561) || (v62 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        if (dword_1EAF16E38)
        {
          LODWORD(v88.start.value) = 0;
          LOBYTE(start.value) = 0;
          v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v64 = v88.start.value;
          value_low = LOBYTE(start.value);
          if (os_log_type_enabled(v63, start.value))
          {
            v66 = v64;
          }

          else
          {
            v66 = v64 & 0xFFFFFFFE;
          }

          if (v66)
          {
            v67 = *(a1 + 296);
            if (*(a1 + 320) == 2)
            {
              v68 = "forward";
            }

            else
            {
              v68 = "reverse";
            }

            LODWORD(v95.start.value) = 136315906;
            *(&v95.start.value + 4) = "editMentorSelectNextEditSegmentForParentRange";
            LOWORD(v95.start.flags) = 2048;
            *(&v95.start.flags + 2) = a1;
            HIWORD(v95.start.epoch) = 2114;
            v95.duration.value = v67;
            LOWORD(v95.duration.timescale) = 2082;
            *(&v95.duration.timescale + 2) = v68;
            LODWORD(v85) = 42;
            _os_log_send_and_compose_impl(v66, 0, &range, 128, &dword_1962D5000, v63, value_low, "<<<< EditMentor >>>> %s: (%p) %{public}@: synthesising empty edit after end of edit list (end of %{public}s playback)", &v95, v85);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v53 = 1;
        *(a1 + 561) = 1;
        goto LABEL_110;
      }

      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      *(a1 + 566) = 1;
      goto LABEL_95;
    }

    v20 = *(a1 + 636);
    *&v88.start.value = *(a1 + 620);
    *&v88.start.epoch = v20;
    *&v88.duration.timescale = *(a1 + 652);
    FigSimpleMutexLock();
    v21 = *(a1 + 336);
    if (!v21)
    {
      v24 = 1;
      goto LABEL_58;
    }

    start = *(a1 + 416);
    if (*(a1 + 320) == 2)
    {
      v22 = *(a1 + 432);
      *&range.start.value = *(a1 + 416);
      *&range.start.epoch = v22;
      *&range.duration.timescale = *(a1 + 448);
      CMTimeRangeGetEnd(&start, &range);
      v21 = *(a1 + 336);
      if (*(a1 + 320) == 2)
      {
        v23 = 1;
      }

      else
      {
        v23 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v23 = 0xFFFFFFFFLL;
    }

    v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v25)
    {
      v26 = v25(v21, v23);
      if (v26 == -12520)
      {
        editMentorSetCurrentConsolidatedEdit(a1, 0);
        v27 = *(a1 + 565);
        if (!*(a1 + 565))
        {
LABEL_57:
          v24 = v27 == 0;
LABEL_58:
          FigSimpleMutexUnlock();
          v17 = (a1 + 565);
          *(a1 + 565) = editMentorCurrentEditIsLastOpenEndedEdit(a1);
          if (v24)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }

        memset(&v94, 0, sizeof(v94));
        memset(&range, 0, sizeof(range));
        v28 = *(a1 + 336);
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v29)
        {
          if (!v29(v28, &range))
          {
            v95 = range;
            CMTimeRangeGetEnd(&time1, &v95);
            v30 = *(a1 + 384);
            *&v95.start.value = *(a1 + 368);
            *&v95.start.epoch = v30;
            *&v95.duration.timescale = *(a1 + 400);
            CMTimeRangeGetEnd(&time2, &v95);
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              v31 = *&range.duration.timescale;
              v32 = *&v94.start.value;
              *(a1 + 496) = *&range.duration.timescale;
              *(a1 + 512) = v32;
              v33 = *&v94.duration.timescale;
              *(a1 + 528) = *&v94.start.epoch;
              *(a1 + 544) = v33;
              v34 = *&range.start.value;
              v35 = *&range.start.epoch;
              *(a1 + 464) = *&range.start.value;
              *(a1 + 480) = v35;
              *&v95.start.value = v34;
              *&v95.start.epoch = v35;
              *&v95.duration.timescale = v31;
              CMTimeRangeGetEnd(&time1, &v95);
              range.duration = time1;
              v36 = *(a1 + 384);
              *&v95.start.value = *(a1 + 368);
              *&v95.start.epoch = v36;
              *&v95.duration.timescale = *(a1 + 400);
              CMTimeRangeGetEnd(&time1, &v95);
              range.start = time1;
              time1 = range.duration;
              time2 = range.start;
              CMTimeSubtract(&v95.start, &time1, &time2);
              range.duration = v95.start;
              v95 = v94;
              CMTimeRangeGetEnd(&time1, &v95);
              v94.duration = time1;
              v37 = *(a1 + 432);
              *&v95.start.value = *(a1 + 416);
              *&v95.start.epoch = v37;
              *&v95.duration.timescale = *(a1 + 448);
              CMTimeRangeGetEnd(&time1, &v95);
              v94.start = time1;
              time1 = v94.duration;
              time2 = v94.start;
              CMTimeSubtract(&v95.start, &time1, &time2);
              v94.duration = v95.start;
              v38 = *&v94.start.value;
              *(a1 + 400) = *&range.duration.timescale;
              *(a1 + 416) = v38;
              v39 = *&v94.duration.timescale;
              *(a1 + 432) = *&v94.start.epoch;
              *(a1 + 448) = v39;
              v40 = *&range.start.epoch;
              *(a1 + 368) = *&range.start.value;
              *(a1 + 384) = v40;
              v27 = 1;
              *(a1 + 563) = 1;
              goto LABEL_57;
            }
          }
        }

LABEL_129:
        v27 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v26 = 4294954514;
    }

    v41 = *(a1 + 384);
    *&v95.start.value = *(a1 + 368);
    v95.start.epoch = *(a1 + 384);
    memset(&time1, 0, sizeof(time1));
    v42 = *(a1 + 400);
    *&range.start.value = *(a1 + 368);
    *&range.start.epoch = v41;
    *&range.duration.timescale = v42;
    CMTimeRangeGetEnd(&time1, &range);
    if (v26)
    {
      editMentorAdvanceToNextEdit_cold_1(v26);
      goto LABEL_129;
    }

    *(a1 + 563) = 0;
    v43 = *(a1 + 336);
    v44 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v44)
    {
      v45 = v44(v43, a1 + 368);
      if (!v45)
      {
        range = v88;
        if (!editMentorConsolidateCurrentEdit(a1, &range))
        {
          v46 = *(a1 + 320);
          if (v46 == 3)
          {
            v49 = *(a1 + 384);
            *&range.start.value = *(a1 + 368);
            *&range.start.epoch = v49;
            *&range.duration.timescale = *(a1 + 400);
            CMTimeRangeGetEnd(&time2, &range);
            *&range.start.value = *&v95.start.value;
            range.start.epoch = v95.start.epoch;
            p_time2 = &time2;
            p_range = &range;
          }

          else
          {
            if (v46 != 2)
            {
LABEL_54:
              *&range.start.value = *(a1 + 416);
              range.start.epoch = *(a1 + 432);
              time2 = start;
              if (CMTimeCompare(&range.start, &time2))
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, LODWORD(type.start.value));
              }

              goto LABEL_56;
            }

            *&range.start.value = *(a1 + 368);
            range.start.epoch = *(a1 + 384);
            time2 = time1;
            p_time2 = &range;
            p_range = &time2;
          }

          if (!CMTimeCompare(&p_time2->start, &p_range->start))
          {
            *(a1 + 564) = 1;
          }

          if (*(a1 + 320) == 3)
          {
            time2 = start;
            rhs = *(a1 + 440);
            CMTimeSubtract(&range.start, &time2, &rhs);
            start = range.start;
            if ((~*(a1 + 452) & 5) == 0)
            {
              start = *(a1 + 416);
            }
          }

          goto LABEL_54;
        }

LABEL_56:
        v27 = 1;
        goto LABEL_57;
      }
    }

    else
    {
      v45 = 4294954514;
    }

    editMentorAdvanceToNextEdit_cold_2(v45);
    goto LABEL_56;
  }

LABEL_10:
  if (a5 || !*(a1 + 616))
  {
    goto LABEL_17;
  }

  v11 = a1 + 644;
  if (a3 != 2)
  {
    v11 = a1 + 620;
  }

  v12 = 632;
  if (a3 == 2)
  {
    v12 = 656;
  }

  v95.start.value = *v11;
  v95.start.timescale = *(v11 + 8);
  v13 = *(a1 + v12);
  if ((v13 & 1) == 0)
  {
LABEL_17:
    v14 = a1;
    v15 = a2;
    v16 = a5;
LABEL_21:
    editMentorPostOrderCompletionNotification(v14, v15, v16);
    return;
  }

  v18 = 636;
  if (a3 == 2)
  {
    v18 = 660;
  }

  v19 = *(a1 + v18);
  range.start.value = v95.start.value;
  range.start.timescale = v95.start.timescale;
  range.start.flags = v13;
  range.start.epoch = v19;
  editMentorSetChildMentorModeToEmptyEdit(a1, 0, &range, 1, a2, 0);
}

uint64_t editMentorSetChildMentorModeToEmptyEdit(uint64_t a1, CMSampleBufferRef a2, uint64_t a3, int a4, uint64_t a5, const void *a6)
{
  cf = 0;
  v12 = editMentorRetainCurrentChildOrderAndOptionsDictionary(a1, &cf);
  v13 = 0;
  if (!a2)
  {
    if (a4 && *(a1 + 616))
    {
      v14 = 0;
      *(a1 + 616) = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a3 + 12);
    v16 = *(a3 + 16);
    v28 = 0;
    if ((v15 & 0x1D) == 1)
    {
      *&context.duration.value = *MEMORY[0x1E6960CC0];
      v17 = *a3;
      context.duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
      context.presentationTimeStamp.value = v17;
      context.presentationTimeStamp.timescale = *(a3 + 8);
      context.presentationTimeStamp.flags = v15;
      context.presentationTimeStamp.epoch = v16;
      context.decodeTimeStamp = **&MEMORY[0x1E6960C70];
      v18 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &context, 0, 0, &v28);
      if (v18)
      {
        epoch_low = v18;
        v13 = 0;
        goto LABEL_23;
      }

      v20 = *MEMORY[0x1E695E4D0];
      CMSetAttachment(v28, *MEMORY[0x1E69604B0], *MEMORY[0x1E695E4D0], 1u);
      if (*(a1 + 320) == 1)
      {
        CMSetAttachment(v28, *MEMORY[0x1E6960480], v20, 1u);
      }

      if ((v14 & 1) == 0)
      {
        CMSetAttachment(v28, *MEMORY[0x1E69604F8], v20, 1u);
        if (*(a1 + 320) == 3)
        {
          CMSetAttachment(v28, *MEMORY[0x1E69604B8], v20, 1u);
        }
      }

      FigSimpleMutexLock();
      v21 = *(a1 + 240);
      if (v21)
      {
        v21(*(a1 + 256), a5, v28);
      }

      FigSimpleMutexUnlock();
      a2 = v28;
      v13 = v28;
    }

    else
    {
      a2 = 0;
      v13 = 0;
    }
  }

  if (*a1)
  {
    v22 = VideoMentorSetModeToEmptyEdit(*a1, a2, cf, a6, v12);
LABEL_22:
    epoch_low = v22;
    goto LABEL_23;
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v22 = AudioMentorSetModeToEmptyEdit(v23, a2, cf, a6, v12);
    goto LABEL_22;
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    context.duration.value = *(a1 + 16);
    *&context.duration.timescale = a2;
    context.duration.epoch = cf;
    context.presentationTimeStamp.value = a6;
    *&context.presentationTimeStamp.timescale = v12;
    context.presentationTimeStamp.epoch = 0;
    dispatch_sync_f(*(v25 + 304), &context, EditMentorSetModeToEmptyEdit_fun);
    epoch_low = LODWORD(context.presentationTimeStamp.epoch);
  }

  else
  {
    if (*(a1 + 24))
    {
      v22 = (*(a1 + 96))(*(a1 + 40), a2, cf, a6, v12);
      goto LABEL_22;
    }

    epoch_low = 0;
  }

LABEL_23:
  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return epoch_low;
}

double editMentorPostSyntheticPrerollCompleteNotification(uint64_t a1, const void *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = FigMentorPrerollCompletePayloadCreate(a2, a3);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }

  dispatch_assert_queue_V2(*(a1 + 304));
  if (*(a1 + 568) == a2)
  {
    *(a1 + 680) = 0;
  }

  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t editMentorSetChildMentorModeToReversePlayback(uint64_t a1, uint64_t a2, const void *a3)
{
  cf = 0;
  v6 = editMentorRetainCurrentChildOrderAndOptionsDictionary(a1, &cf);
  v7 = *a1;
  if (*a1)
  {
    *context = *(a2 + 24);
    *&context[16] = *(a2 + 40);
    v16 = *a2;
    v17 = *(a2 + 16);
    v8 = VideoMentorSetModeToReversePlayback(v7, 0, context, 0, &v16, cf, a3, 0, v6);
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    *context = *(a2 + 24);
    *&context[16] = *(a2 + 40);
    v16 = *a2;
    v17 = *(a2 + 16);
    v8 = AudioMentorSetModeToReversePlayback(v9, 0, context, 0, &v16, cf, 0, v6);
    goto LABEL_5;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    *&context[8] = *(a2 + 24);
    v20 = *(a2 + 40);
    v21 = *a2;
    v13 = *(a2 + 16);
    *context = v12;
    v22 = v13;
    v23 = cf;
    v24 = a3;
    v25 = 0;
    v26 = v6;
    v27 = 0;
    dispatch_sync_f(*(v12 + 304), context, EditMentorSetModeToReversePlayback_fun);
    v10 = v27;
  }

  else
  {
    if (*(a1 + 24))
    {
      v14 = *(a1 + 88);
      v15 = *(a1 + 40);
      *context = *(a2 + 24);
      *&context[16] = *(a2 + 40);
      v16 = *a2;
      v17 = *(a2 + 16);
      v8 = v14(v15, context, &v16, cf, a3, 0, v6);
      goto LABEL_5;
    }

    v10 = 0;
  }

LABEL_6:
  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

unint64_t editMentorCurrentEditIsLastOpenEndedEdit(uint64_t a1)
{
  v13 = 0;
  cf = 0;
  FigSimpleMutexLock();
  v2 = *(a1 + 336);
  if (!v2)
  {
    FigSimpleMutexUnlock();
    v10 = 0;
    v3 = 0;
LABEL_14:
    v5 = 0;
    v11 = 1;
    goto LABEL_15;
  }

  v3 = CFRetain(v2);
  FigSimpleMutexUnlock();
  if (!v3)
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (*(a1 + 320) != 2 || !*(a1 + 617))
  {
    goto LABEL_12;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v4(v3, &cf);
  v5 = cf;
  if (!cf)
  {
LABEL_20:
    CFRelease(v3);
    return v5;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6 || v6(v5, 1) != -12520)
  {
LABEL_12:
    v10 = 0;
    v11 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  FigEditCursorGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"TimeRangesMayIncrease", *MEMORY[0x1E695E480], &v13);
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v5 = v10 == *MEMORY[0x1E695E4D0];
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
    v10 = v13;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_20;
  }

  return v5;
}

BOOL editMentorDoesEditSegmentIntersectTrackRange(uint64_t a1, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  result = 0;
  if ((*(a2 + 36) & 0x1D) != 1 || (*&v6.start.value = *(a2 + 24), v6.start.epoch = *(a2 + 40), time2 = *(a1 + 48), CMTimeCompare(&v6.start, &time2) >= 1))
  {
    v4 = *(a1 + 64);
    *&v6.start.value = *(a1 + 48);
    *&v6.start.epoch = v4;
    *&v6.duration.timescale = *(a1 + 80);
    CMTimeRangeGetEnd(&v8, &v6);
    if ((*(a2 + 12) & 0x1D) != 1)
    {
      return 1;
    }

    v6.start = v8;
    time2 = *a2;
    if (CMTimeCompare(&v6.start, &time2) >= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t editMentorUpdateChildMentorProperties(CFDictionaryRef *a1)
{
  FigSimpleMutexLock();
  CFDictionaryApplyFunction(a1[35], editMentorUpdateChildMentorProperties_applier, a1);

  return FigSimpleMutexUnlock();
}

uint64_t editMentorSetCurrentConsolidatedEdit(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 352);
  *(a1 + 352) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexUnlock();
}

uint64_t editMentorConsolidateCurrentEdit(uint64_t a1, _OWORD *a2)
{
  v53 = 0;
  v54[0] = 0;
  if (*(a1 + 681))
  {
    v5 = *(a1 + 416);
    *&value.duration.timescale = *(a1 + 400);
    *&v52.start.value = v5;
    v6 = *(a1 + 448);
    *&v52.start.epoch = *(a1 + 432);
    *&v52.duration.timescale = v6;
    v7 = *(a1 + 384);
    *&value.start.value = *(a1 + 368);
    *&value.start.epoch = v7;
    if (*(a1 + 320) == 3)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = 1;
    }

    v9 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &editMentorCMTimeMappingArrayCallbacks);
    if (Mutable)
    {
      v11 = 0;
      v12 = *MEMORY[0x1E695E4D0];
      v43 = *(MEMORY[0x1E6960C78] + 48);
      v44 = *(MEMORY[0x1E6960C78] + 32);
      v41 = *(MEMORY[0x1E6960C78] + 80);
      v42 = *(MEMORY[0x1E6960C78] + 64);
      v39 = *(MEMORY[0x1E6960C78] + 16);
      v40 = *MEMORY[0x1E6960C78];
      while (1)
      {
        *&v49.duration.timescale = v44;
        *&v50.start.value = v43;
        *&v50.start.epoch = v42;
        *&v50.duration.timescale = v41;
        *&v49.start.value = v40;
        *&v49.start.epoch = v39;
        if (v11)
        {
          CFRelease(v11);
          v54[0] = 0;
        }

        v13 = *(a1 + 336);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v14)
        {
          value_low = 4294954514;
          goto LABEL_49;
        }

        v15 = v14(v13, v54);
        if (v15)
        {
          value_low = v15;
          goto LABEL_49;
        }

        if (v53)
        {
          CFRelease(v53);
          v53 = 0;
        }

        FigEditCursorGetFigBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, @"TimeRangesMayIncrease", v9, &v53);
        }

        v19 = v53;
        v20 = v54[0];
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v21)
        {
          v22 = v21(v20, v8);
          v23 = v22 == -12520;
          if (v19 == v12 && v22 == -12520)
          {
            break;
          }
        }

        else
        {
          v23 = 0;
        }

        if (*(a1 + 320) == 3)
        {
          CFArrayInsertValueAtIndex(Mutable, 0, &value);
          if (v23)
          {
            break;
          }
        }

        else
        {
          CFArrayAppendValue(Mutable, &value);
          if (v23)
          {
            break;
          }
        }

        v24 = v54[0];
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v25)
        {
          value_low = 4294954514;
LABEL_44:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v2, v39);
          goto LABEL_49;
        }

        v26 = v25(v24, &v49);
        if (v26)
        {
          value_low = v26;
          goto LABEL_44;
        }

        if (*(a1 + 320) == 3)
        {
          range = v49;
          CMTimeRangeGetEnd(time1, &range);
          *&range.start.value = *&value.start.value;
          epoch = value.start.epoch;
        }

        else
        {
          range = value;
          CMTimeRangeGetEnd(time1, &range);
          *&range.start.value = *&v49.start.value;
          epoch = v49.start.epoch;
        }

        range.start.epoch = epoch;
        if (CMTimeCompare(time1, &range.start))
        {
          break;
        }

        range = v49;
        v48 = v50;
        v28 = a2[1];
        *time1 = *a2;
        *&time1[16] = v28;
        v46 = a2[2];
        if (!editMentorDoesEditSegmentIntersectTrackRange(&range, time1))
        {
          break;
        }

        v29 = *(a1 + 336);
        v30 = v54[0];
        *(a1 + 336) = v54[0];
        if (v30)
        {
          CFRetain(v30);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        value = v49;
        v52 = v50;
        v11 = v54[0];
      }

      if (CFArrayGetCount(Mutable) < 1)
      {
        editMentorSetCurrentConsolidatedEdit(a1, 0);
        value_low = 0;
      }

      else
      {
        editMentorSetCurrentConsolidatedEdit(a1, Mutable);
        if (*(a1 + 320) == 3)
        {
          if (value.start.flags)
          {
            v32 = *(a1 + 384);
            *&v49.start.value = *(a1 + 368);
            *&v49.start.epoch = v32;
            *&v49.duration.timescale = *(a1 + 400);
            CMTimeRangeGetEnd(&range.start, &v49);
            *time1 = *&value.start.value;
            *&time1[16] = value.start.epoch;
            CMTimeSubtract(&v49.start, &range.start, time1);
            value.duration = v49.start;
          }

          v33 = *(a1 + 432);
          *&v49.start.value = *(a1 + 416);
          *&v49.start.epoch = v33;
          *&v49.duration.timescale = *(a1 + 448);
          CMTimeRangeGetEnd(&range.start, &v49);
          *time1 = *&v52.start.value;
          *&time1[16] = v52.start.epoch;
          CMTimeSubtract(&v49.start, &range.start, time1);
          value_low = 0;
          v52.duration = v49.start;
          v34 = *&v52.start.value;
          *(a1 + 400) = *&value.duration.timescale;
          *(a1 + 416) = v34;
          v35 = *&v52.duration.timescale;
          *(a1 + 432) = *&v52.start.epoch;
          *(a1 + 448) = v35;
          v36 = *&value.start.epoch;
          *(a1 + 368) = *&value.start.value;
          *(a1 + 384) = v36;
        }

        else
        {
          if (value.start.flags)
          {
            v49 = value;
            CMTimeRangeGetEnd(&range.start, &v49);
            *time1 = *(a1 + 368);
            *&time1[16] = *(a1 + 384);
            CMTimeSubtract(&v49.start, &range.start, time1);
            *(a1 + 392) = *&v49.start.value;
            *(a1 + 408) = v49.start.epoch;
          }

          v49 = v52;
          CMTimeRangeGetEnd(&range.start, &v49);
          *time1 = *(a1 + 416);
          *&time1[16] = *(a1 + 432);
          CMTimeSubtract(&v49.start, &range.start, time1);
          value_low = 0;
          *(a1 + 440) = *&v49.start.value;
          *(a1 + 456) = v49.start.epoch;
        }
      }
    }

    else
    {
      editMentorConsolidateCurrentEdit_cold_1(&v49);
      value_low = LODWORD(v49.start.value);
    }

LABEL_49:
    if (v53)
    {
      CFRelease(v53);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    value_low = 0;
  }

  if (v54[0])
  {
    CFRelease(v54[0]);
  }

  return value_low;
}

__n128 editMentorCMTimeMappingArrayRetainCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 96, 0x1000040565EDBD2, 0);
  if (v3)
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    result = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v7;
    *(v3 + 32) = result;
    *(v3 + 48) = v6;
  }

  return result;
}

CFStringRef editMentorCMTimeMappingArrayCopyDescriptionCallback(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[3];
  *&v6.source.duration.timescale = a1[2];
  *&v6.target.start.value = v2;
  v3 = a1[5];
  *&v6.target.start.epoch = a1[4];
  *&v6.target.duration.timescale = v3;
  v4 = a1[1];
  *&v6.source.start.value = *a1;
  *&v6.source.start.epoch = v4;
  return CMTimeMappingCopyDescription(v1, &v6);
}

uint64_t editMentorCMTimeMappingArrayEqualCallback(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  *&range1.start.value = *a1;
  *&range1.start.epoch = v4;
  *&range1.duration.timescale = a1[2];
  v5 = a2[1];
  *&v9.start.value = *a2;
  *&v9.start.epoch = v5;
  *&v9.duration.timescale = a2[2];
  result = CMTimeRangeEqual(&range1, &v9);
  if (result)
  {
    v7 = a1[4];
    *&range1.start.value = a1[3];
    *&range1.start.epoch = v7;
    *&range1.duration.timescale = a1[5];
    v8 = a2[4];
    *&v9.start.value = a2[3];
    *&v9.start.epoch = v8;
    *&v9.duration.timescale = a2[5];
    return CMTimeRangeEqual(&range1, &v9) != 0;
  }

  return result;
}

void editMentorSelectEditForTimeInConsolidatedEdit(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  if (!*(a1 + 681))
  {
    goto LABEL_16;
  }

  FigSimpleMutexLock();
  v8 = *(a1 + 352);
  if (!v8)
  {
    FigSimpleMutexUnlock();
    goto LABEL_16;
  }

  v9 = CFRetain(v8);
  FigSimpleMutexUnlock();
  if (!v9)
  {
LABEL_16:
    if (*(a1 + 563))
    {
      v17 = *(a1 + 512);
      a4[2] = *(a1 + 496);
      a4[3] = v17;
      v18 = *(a1 + 544);
      a4[4] = *(a1 + 528);
      a4[5] = v18;
      v19 = *(a1 + 464);
      v20 = *(a1 + 480);
    }

    else
    {
      v21 = *(a1 + 416);
      a4[2] = *(a1 + 400);
      a4[3] = v21;
      v22 = *(a1 + 448);
      a4[4] = *(a1 + 432);
      a4[5] = v22;
      v19 = *(a1 + 368);
      v20 = *(a1 + 384);
    }

    *a4 = v19;
    a4[1] = v20;
    return;
  }

  if (CFArrayGetCount(v9) < 2)
  {
    if (*(a1 + 563))
    {
      v23 = *(a1 + 512);
      a4[2] = *(a1 + 496);
      a4[3] = v23;
      v24 = *(a1 + 544);
      a4[4] = *(a1 + 528);
      a4[5] = v24;
      v25 = *(a1 + 464);
      v26 = *(a1 + 480);
    }

    else
    {
      v30 = *(a1 + 416);
      a4[2] = *(a1 + 400);
      a4[3] = v30;
      v31 = *(a1 + 448);
      a4[4] = *(a1 + 432);
      a4[5] = v31;
      v25 = *(a1 + 368);
      v26 = *(a1 + 384);
    }
  }

  else
  {
    Count = CFArrayGetCount(v9);
    if (Count >= 2)
    {
      v11 = 0;
      v12 = Count - 1;
      if (a3)
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      while (1)
      {
        v14 = (v11 + v12) / 2;
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v14);
        v16 = ValueAtIndex[v13 + 1];
        *&v36.start.value = ValueAtIndex[v13];
        *&v36.start.epoch = v16;
        *&v36.duration.timescale = ValueAtIndex[v13 + 2];
        *&v34.start.value = *a2;
        v34.start.epoch = *(a2 + 16);
        *&time2.value = *&v36.start.value;
        time2.epoch = v16;
        if (CMTimeCompare(&v34.start, &time2) < 0)
        {
          v12 = v14 - 1;
        }

        else
        {
          v34 = v36;
          CMTimeRangeGetEnd(&time2, &v34);
          *&v34.start.value = *a2;
          v34.start.epoch = *(a2 + 16);
          if (CMTimeCompare(&v34.start, &time2) < 0)
          {
            v32 = ValueAtIndex[3];
            a4[2] = ValueAtIndex[2];
            a4[3] = v32;
            v33 = ValueAtIndex[5];
            a4[4] = ValueAtIndex[4];
            a4[5] = v33;
            v25 = *ValueAtIndex;
            v26 = ValueAtIndex[1];
            goto LABEL_26;
          }

          v11 = v14 + 1;
        }

        if (v12 <= v11)
        {
          goto LABEL_23;
        }
      }
    }

    v11 = 0;
LABEL_23:
    v27 = CFArrayGetValueAtIndex(v9, v11);
    v28 = v27[3];
    a4[2] = v27[2];
    a4[3] = v28;
    v29 = v27[5];
    a4[4] = v27[4];
    a4[5] = v29;
    v25 = *v27;
    v26 = v27[1];
  }

LABEL_26:
  *a4 = v25;
  a4[1] = v26;
  CFRelease(v9);
}

uint64_t editMentorSetChildMentorProperty(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v3 = a3;
  if (a3 && editMentorPropertyNeedsToBeRescaled(a2))
  {
    CMTimeMakeFromDictionary(&context, v3);
    time1 = *(a1 + 440);
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      time2 = context;
      CMTimeMultiplyTimeByTimeRatio();
      context = time1;
    }

    v6 = *MEMORY[0x1E695E480];
    time1 = context;
    v3 = CMTimeCopyAsDictionary(&time1, v6);
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  if (*a1)
  {
    VideoMentorSetProperty(*a1, a2, v3);
    goto LABEL_9;
  }

  if (!*(a1 + 8))
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      context.value = *(a1 + 16);
      *&context.timescale = a2;
      context.epoch = v3;
      v15 = 0;
      dispatch_sync_f(*(v11 + 304), &context, EditMentorSetProperty_fun);
      v9 = v15;
      if (!v7)
      {
        return v9;
      }

      goto LABEL_13;
    }

    if (*(a1 + 24))
    {
      v8 = (*(a1 + 104))(*(a1 + 40), a2, v3);
LABEL_9:
      v9 = v8;
      if (!v7)
      {
        return v9;
      }

      goto LABEL_13;
    }
  }

  v9 = 0;
  if (v7)
  {
LABEL_13:
    CFRelease(v7);
  }

  return v9;
}

void editMentorTimeRangesMayNoLongerIncrease_orderQueue(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a2 + 304));
  if (*(a2 + 566))
  {
    *(a2 + 566) = 0;
    v3 = *(a2 + 568);
    if (v3)
    {
      v4 = CFRetain(v3);
      editMentorAdvanceToNextEdit(a2, v4, *(a2 + 320), 0, 0);
      if (v4)
      {

        CFRelease(v4);
      }
    }

    else
    {
      v5 = *(a2 + 320);

      editMentorAdvanceToNextEdit(a2, 0, v5, 0, 0);
    }
  }
}

void editMentorChildMentorStoppedDueToError_orderQueue(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Mentor_Order");
    FigCFDictionaryGetInt32IfPresent();
    v8 = CFDictionaryGetValue(theDict, @"Mentor_SamplesWereGenerated") == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v8 = 0;
    Value = 0;
  }

  *(a2 + 288) = *(a2 + 288) != 0 || v8;
  IsCurrent_RetainParentOrder = editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, cf, 0);
  v10 = cf[0];
  if (IsCurrent_RetainParentOrder)
  {
    if (*(a2 + 680))
    {
      editMentorPostSyntheticPrerollCompleteNotification(a2, cf[0], 0);
    }

    editMentorStartNewChildOrder(a2, v10);
    v11 = *(a2 + 672);
    if (theDict && !v11)
    {
      v11 = CFDictionaryGetValue(theDict, @"Mentor_NotificationThatWasRequestedButDropped");
    }

    v12 = FigMentorNotificationPayloadCreate(@"MentorStoppingDueToError", v10, 0, *(a2 + 288), v11, 0);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v12)
    {
      CFRelease(v12);
    }

    v14 = *(a2 + 672);
    if (v14)
    {
      CFRelease(v14);
      *(a2 + 672) = 0;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void editMentorChildMentorStoppedDueToCompletion_orderQueue(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  v5 = theDict;
  v18[26] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v17 = 1;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Mentor_Order");
    v8 = CFDictionaryGetValue(v5, @"Mentor_SamplesWereGenerated");
    v9 = *MEMORY[0x1E695E4D0];
    v10 = v8 == *MEMORY[0x1E695E4D0];
    v5 = CFDictionaryGetValue(v5, @"Mentor_LastsForever") == v9;
  }

  else
  {
    v10 = 0;
    Value = 0;
  }

  if (dword_1EAF16E38)
  {
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, v18, &v17))
  {
    v13 = v18[0];
    if (!v18[0])
    {
      return;
    }

    goto LABEL_12;
  }

  Mutable = *(a2 + 608);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a2 + 608) = Mutable) != 0) || (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16), (Mutable = *(a2 + 608)) != 0))
  {
    CFDictionarySetValue(Mutable, @"ModeChangePolicy", @"PreservePreviousOutput");
    CFDictionarySetValue(*(a2 + 608), @"SynchronouslyResetOutput", *MEMORY[0x1E695E4C0]);
    CFDictionaryRemoveValue(*(a2 + 608), @"CollectorCoherenceToken");
  }

  *(a2 + 288) = (v10 | *(a2 + 288)) != 0;
  v13 = v18[0];
  editMentorAdvanceToNextEdit(a2, v18[0], v17, !v10, v5);
  if (v13)
  {
LABEL_12:
    CFRelease(v13);
  }
}

void editMentorForwardNotificationFromChildMentor_orderQueue(int a1, uint64_t a2, uint64_t a3, int a4, CFDictionaryRef theDict)
{
  v5 = theDict;
  cf = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Mentor_Order");
    FigCFDictionaryGetInt32IfPresent();
    v9 = CFDictionaryGetValue(v5, @"Mentor_NotificationThatWasRequestedButDropped");
    LODWORD(v5) = CFDictionaryGetValue(v5, @"Mentor_SamplesWereGenerated") == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v9 = 0;
    Value = 0;
  }

  IsCurrent_RetainParentOrder = editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, &cf, 0);
  v11 = cf;
  if (IsCurrent_RetainParentOrder)
  {
    v12 = FigMentorNotificationPayloadCreate(a3, cf, 0, v5, v9, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void editMentorChildMentorPrerollComplete_orderQueue(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  cf = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"MentorPrerollComplete_Order"), FigCFDictionaryGetInt32IfPresent(), v13 - 1 < 2))
  {
    if (editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, &cf, 0))
    {
      *(a2 + 680) = 0;
      v7 = *(a2 + 608);
      if (v7)
      {
        CFDictionarySetValue(v7, @"PrerollPolicy", @"NoPreroll");
      }

      v8 = FigMentorPrerollCompletePayloadCreate(cf, v13);
      if (dword_1EAF16E38)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else if (dword_1EAF16E38)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else if (dword_1EAF16E38 >= 2)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t editMentorRemapTimeInterval(void *a1, const void *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (editMentorChildOrderRefIsCurrent_RetainParentOrder(a1, a2, &v17, 0))
  {
    if (!a3)
    {
      memset(v16, 0, sizeof(v16));
      v18 = *a4;
      v19 = *(a4 + 2);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 1, v16);
      memset(v15, 0, sizeof(v15));
      v18 = *a5;
      v19 = *(a5 + 2);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 1, v15);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v16, 0, a4);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v15, 0, a5);
    }

    FigSimpleMutexLock();
    v9 = a1[31];
    if (v9)
    {
      v10 = v9(a1[32], v17, a3, a4, a5);
    }

    else
    {
      v10 = 0;
    }

    FigSimpleMutexUnlock();
    if (a3)
    {
      memset(v14, 0, sizeof(v14));
      v18 = *a4;
      v19 = *(a4 + 2);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 0, v14);
      memset(v13, 0, sizeof(v13));
      v18 = *a5;
      v19 = *(a5 + 2);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 0, v13);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v14, a3, a4);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v13, a3, a5);
    }
  }

  else
  {
    if (dword_1EAF16E38)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

__n128 editMentorMapTimeFromRangeToRange@<Q0>(CMTime *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CMTime *a4@<X8>)
{
  *a4 = **&MEMORY[0x1E6960C70];
  if (((a1->flags & 0x1D) != 1 || (time1.start = *a1, *&v11.start.value = *a2, v11.start.epoch = *(a2 + 16), CMTimeCompare(&time1.start, &v11.start))) && ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0 || (*&time1.start.value = *(a3 + 24), time1.start.epoch = *(a3 + 40), *&v11.start.value = *MEMORY[0x1E6960CC0], v11.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &v11.start))))
  {
    v13 = *a1;
    v8 = *(a2 + 16);
    *&time1.start.value = *a2;
    *&time1.start.epoch = v8;
    *&time1.duration.timescale = *(a2 + 32);
    v9 = *(a3 + 16);
    *&v11.start.value = *a3;
    *&v11.start.epoch = v9;
    *&v11.duration.timescale = *(a3 + 32);
    CMTimeMapTimeFromRangeToRange(a4, &v13, &time1, &v11);
  }

  else
  {
    result = *a3;
    *&a4->value = *a3;
    a4->epoch = *(a3 + 16);
  }

  return result;
}

void editMentorAddToTrimAttachment(const void *a1, CMTime *a2, CFStringRef key)
{
  v13 = **&MEMORY[0x1E6960CC0];
  v6 = CMGetAttachment(a1, key, 0);
  if (v6)
  {
    CMTimeMakeFromDictionary(&v13, v6);
    lhs = v13;
    v10 = *a2;
    CMTimeAdd(&time, &lhs, &v10);
    *&v13.value = *&time.value;
    epoch = time.epoch;
  }

  else
  {
    *&v13.value = *&a2->value;
    epoch = a2->epoch;
  }

  v13.epoch = epoch;
  v8 = *MEMORY[0x1E695E480];
  *&time.value = *&v13.value;
  time.epoch = epoch;
  v9 = CMTimeCopyAsDictionary(&time, v8);
  CMSetAttachment(a1, key, v9, 1u);
  if (v9)
  {
    CFRelease(v9);
  }
}

double editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(_OWORD *a1, int a2, __int128 *a3)
{
  if (a2)
  {
    v4 = a1[4];
    *&v14.start.value = a1[3];
    *&v14.start.epoch = v4;
    *&v14.duration.timescale = a1[5];
  }

  else
  {
    v5 = a1[1];
    *&v14.start.value = *a1;
    *&v14.start.epoch = v5;
    *&v14.duration.timescale = a1[2];
    a1 += 3;
  }

  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v13[2] = a1[2];
  v7 = *a3;
  time.epoch = *(a3 + 2);
  v10 = v14;
  *&time.value = v7;
  CMTimeClampToRange(&v12, &time, &v10);
  *a3 = *&v12.value;
  epoch = v12.epoch;
  *(a3 + 2) = v12.epoch;
  *&v12.value = *a3;
  v12.epoch = epoch;
  editMentorMapTimeFromRangeToRange(&v12, &v14, v13, &v10.start);
  result = *&v10.start.value;
  *a3 = *&v10.start.value;
  *(a3 + 2) = v10.start.epoch;
  return result;
}

const char *editMentorGetModeChangePolicyStr(const __CFDictionary *a1)
{
  if (!a1)
  {
    return "default:preserve";
  }

  Value = CFDictionaryGetValue(a1, @"ModeChangePolicy");
  if (!Value)
  {
    return "default:preserve";
  }

  v2 = Value;
  if (CFEqual(Value, @"PreservePreviousOutput"))
  {
    return "preserve";
  }

  if (CFEqual(v2, @"CancelPreviousOutput"))
  {
    return "cancel";
  }

  if (CFEqual(v2, @"RepurposeOrCancelPreviousOutput"))
  {
    return "repurpose";
  }

  else
  {
    return "default:preserve";
  }
}

void __synchronizerRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
    FigCFDictionarySetInt32();
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -16372;
  }
}

_BYTE *synchronizerRemote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

__CFString *synchronizerRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferRenderSynchronizerRemote=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" objectID=%lld", *(DerivedStorage + 8));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t synchronizerRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    synchronizerRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

uint64_t synchronizerRemote_AddAudioRenderer(uint64_t a1, uint64_t a2)
{
  v2 = synchronizerRemote_sendMessageWithAudioRendererPayload(a1, 1633969249);
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t synchronizerRemote_RemoveAudioRenderer(uint64_t a1, uint64_t a2)
{
  v2 = synchronizerRemote_sendMessageWithAudioRendererPayload(a1, 1919776353);
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t FigDetermineAudioFileTypeHintAndCreateAudioFileInfos(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  outDataSize = 0;
  url = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E695FFA0], 0, &url);
    if (url)
    {
      inSpecifier = CFURLCopyPathExtension(url);
      outDataSize = 0;
      if (inSpecifier)
      {
        v8 = 0;
        if (!AudioFileGetGlobalInfoSize(0x74657874u, 8u, &inSpecifier, &outDataSize) && outDataSize)
        {
          v9 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL);
          if (v9)
          {
            v10 = v9;
            if (AudioFileGetGlobalInfo(0x74657874u, 8u, &inSpecifier, &outDataSize, v9))
            {
              v8 = 0;
            }

            else
            {
              v8 = *v10;
            }

            free(v10);
          }

          else
          {
            v8 = 0;
          }
        }

        if (inSpecifier)
        {
          CFRelease(inSpecifier);
        }

        CFRelease(url);
        if (v8)
        {
          goto LABEL_50;
        }
      }

      else
      {
        CFRelease(url);
      }
    }
  }

  url = 0;
  v11 = CMByteStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E6960DC8], 0, &url);
  }

  if (url)
  {
    LODWORD(inSpecifier) = 0;
    CFNumberGetValue(url, kCFNumberSInt32Type, &inSpecifier);
    v13 = inSpecifier;
    LODWORD(inSpecifier) = bswap32(inSpecifier);
    outDataSize = 0;
    if (v13 && !AudioFileGetGlobalInfoSize(0x74686673u, 4u, &inSpecifier, &outDataSize) && outDataSize && (v14 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL)) != 0)
    {
      v15 = v14;
      if (AudioFileGetGlobalInfo(0x74686673u, 4u, &inSpecifier, &outDataSize, v14))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v15;
      }

      free(v15);
      CFRelease(url);
      if (v8)
      {
        goto LABEL_50;
      }
    }

    else
    {
      CFRelease(url);
    }
  }

  url = 0;
  v16 = CMByteStreamGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    goto LABEL_42;
  }

  v17(v16, *MEMORY[0x1E6960DE0], 0, &url);
  if (!url)
  {
    goto LABEL_42;
  }

  outDataSize = 0;
  v8 = 0;
  if (!AudioFileGetGlobalInfoSize(0x746D696Du, 8u, &url, &outDataSize) && outDataSize)
  {
    v18 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL);
    if (v18)
    {
      v19 = v18;
      if (AudioFileGetGlobalInfo(0x746D696Du, 8u, &url, &outDataSize, v18))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v19;
      }

      free(v19);
    }

    else
    {
      v8 = 0;
    }
  }

  if (url)
  {
    CFRelease(url);
  }

  if (!v8)
  {
LABEL_42:
    url = 0;
    v20 = CMByteStreamGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21 && (v21(v20, *MEMORY[0x1E6960E38], *MEMORY[0x1E695E480], &url), url))
    {
      outDataSize = 0;
      v8 = 0;
      if (!AudioFileGetGlobalInfoSize(0x74757469u, 8u, &url, &outDataSize) && outDataSize)
      {
        v22 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL);
        if (v22)
        {
          v23 = v22;
          if (AudioFileGetGlobalInfo(0x74757469u, 8u, &url, &outDataSize, v22))
          {
            v8 = 0;
          }

          else
          {
            v8 = *v23;
          }

          free(v23);
        }

        else
        {
          v8 = 0;
        }
      }

      if (url)
      {
        CFRelease(url);
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_50:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (v8)
  {
    return v8;
  }

  else
  {
    return 1297106739;
  }
}

uint64_t FigAudioFileShouldNotUseAllowList(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CA768 != -1)
  {
    FigAudioFileShouldNotUseAllowList_cold_1();
  }

  return _MergedGlobals_35;
}

uint64_t AudioFileShouldNotUseAllowList(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

uint64_t FigAudioFormatReaderConvertCodecElementsToMediaSubType(int a1, int a2, char *__s1, uint64_t a4, _DWORD *a5, int *a6, int *a7)
{
  v28 = a1;
  if (!a4)
  {
    if (!__s1)
    {
      if (a7)
      {
        v8 = 0;
        v9 = 4;
        goto LABEL_4;
      }

      return 0;
    }

    v26 = 0;
    v27 = 0;
    outPropertyData = 0;
    inSpecifier = a1;
    if (a1 > 1332176741)
    {
      switch(a1)
      {
        case 1332176742:
          if (!strcmp(__s1, "opus"))
          {
            v13 = 1869641075;
            goto LABEL_50;
          }

          if (!strcmp(__s1, "vorbis"))
          {
            v13 = 1987015266;
            goto LABEL_50;
          }

          if (!strcmp(__s1, "flac"))
          {
            v13 = 1718378851;
            goto LABEL_50;
          }

          if (!strcmp(__s1, "speex"))
          {
            v13 = 1936745848;
            goto LABEL_50;
          }

          goto LABEL_35;
        case 1667327590:
          goto LABEL_24;
        case 1463899717:
          LOWORD(outPropertyDataSize) = 0;
          v23 = 0;
          v14 = sscanf(__s1, "%hx%c", &outPropertyDataSize, &v23);
          if (v14 == 2)
          {
            if (!a7)
            {
              goto LABEL_46;
            }

            v15 = 10;
          }

          else
          {
            if (v14 == 1)
            {
              v26 = 2;
              LOWORD(v27) = outPropertyDataSize;
              v16 = 10;
              goto LABEL_26;
            }

            if (v14 || !a7)
            {
              goto LABEL_46;
            }

            v15 = 6;
          }

          *a7 = v15;
          goto LABEL_46;
      }
    }

    else
    {
      if ((a1 - 1297106737) < 3)
      {
        if (!strcmp(__s1, "mp3"))
        {
          v28 = 1297106739;
          v13 = 778924083;
          goto LABEL_50;
        }

        if (!strcmp(__s1, "mp2"))
        {
          v28 = 1297106738;
          v13 = 778924082;
          goto LABEL_50;
        }

        if (!strcmp(__s1, "mp1"))
        {
          v28 = 1297106737;
          v13 = 778924081;
LABEL_50:
          outPropertyData = v13;
          goto LABEL_51;
        }

LABEL_35:
        if (a7)
        {
          v8 = 0;
          v17 = 0;
          v18 = 2;
LABEL_39:
          *a7 = v18;
LABEL_62:
          free(v17);
          return v8;
        }

        goto LABEL_46;
      }

      if (a1 == 1095321155)
      {
LABEL_24:
        if (!a2)
        {
          goto LABEL_35;
        }

        v26 = 4;
        v27 = a2;
        v16 = 12;
LABEL_26:
        outPropertyDataSize = 0;
        if (!AudioFormatGetPropertyInfo(0x6964636Eu, v16, &inSpecifier, &outPropertyDataSize))
        {
          outPropertyDataSize = 4;
          if (!AudioFormatGetProperty(0x6964636Eu, v16, &inSpecifier, &outPropertyDataSize, &outPropertyData))
          {
            if (outPropertyData)
            {
LABEL_51:
              outPropertyDataSize = 0;
              if (!AudioFileGetGlobalInfoSize(0x666D6964u, 4u, &v28, &outPropertyDataSize))
              {
                v17 = malloc_type_calloc(1uLL, outPropertyDataSize, 0x2826678BuLL);
                AudioFileGetGlobalInfo(0x666D6964u, 4u, &v28, &outPropertyDataSize, v17);
                if (outPropertyDataSize < 4)
                {
LABEL_56:
                  v8 = 0;
                }

                else
                {
                  v19 = 0;
                  v20 = outPropertyData;
                  while (*&v17[v19] != outPropertyData)
                  {
                    v19 += 4;
                    if ((outPropertyDataSize & 0xFFFFFFFC) == v19)
                    {
                      goto LABEL_56;
                    }
                  }

                  if (a5)
                  {
                    *a5 = 1936684398;
                  }

                  if (a6)
                  {
                    *a6 = v20;
                  }

                  v8 = 1;
                }

                goto LABEL_62;
              }

              goto LABEL_46;
            }
          }
        }

        goto LABEL_46;
      }
    }

    if (a7)
    {
      v8 = 0;
      v17 = 0;
      v18 = 1;
      goto LABEL_39;
    }

LABEL_46:
    v8 = 0;
    v17 = 0;
    goto LABEL_62;
  }

  if (!a7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 8;
LABEL_4:
  *a7 = v9;
  return v8;
}

void FigAudioFileFormatReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *FigAudioFileFormatReaderCopyDebugDescription(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = CFCopyDescription(v3);
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileFormatReader: stream<%@>", v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileFormatReader: stream<%@>", 0);
  }

  return Mutable;
}

double FigAudioFileFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileFormatReaderCopyProperty_cold_1(&inSpecifier);
    return result;
  }

  v9 = DerivedStorage;
  v10 = *DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"Duration"))
  {
    v12 = v9[1];
    if (!v12)
    {
      return result;
    }

    v13 = kFigTrackProperty_EditedDuration;
LABEL_21:
    v17 = *v13;

    return FigAudioFileTrackReaderCopyProperty(v12, v17, a3, a4);
  }

  if (CFEqual(a2, @"NominalDuration"))
  {
    v12 = v9[1];
    if (!v12)
    {
      return result;
    }

    v13 = kFigTrackProperty_UneditedDuration;
    goto LABEL_21;
  }

  if (CFEqual(a2, @"Identifier"))
  {
    v14 = kFigFormatReaderIdentifier_AudioFile;
LABEL_13:
    GaplessInfoDictionary_0 = CFRetain(*v14);
LABEL_14:
    v16 = GaplessInfoDictionary_0;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"LyricsScanCompleted"))
  {
    v14 = MEMORY[0x1E695E4D0];
    if (!*(v10 + 177))
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"Lyrics"))
  {

    CopyLyricsFromAudioFile(a1, a4);
    return result;
  }

  if (CFEqual(a2, @"AccurateDurationIsKnown") || CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
  {
    v14 = MEMORY[0x1E695E4D0];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"iTunesGaplessInfo"))
  {
    GaplessInfoDictionary_0 = CreateGaplessInfoDictionary_0(v10);
    goto LABEL_14;
  }

  if (!CFEqual(a2, @"iTunesSoundCheckVolumeNormalization"))
  {
    if (CFEqual(a2, @"SoundCheckInfo"))
    {
      GaplessInfoDictionary_0 = CopySoundCheckInfoDictionary(v10);
      goto LABEL_14;
    }

    if (CFEqual(a2, @"IndicatesContentProtection"))
    {
      v19 = IndicatesContentProtection(v10);
      v14 = MEMORY[0x1E695E4D0];
      if (!v19)
      {
        v14 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"MetadataReaders"))
    {
      EnsureMetadataReaderCreated(v10, a3);
      if (*(v10 + 224))
      {
        Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, *(v10 + 224));
      }

      else
      {
        Mutable = 0;
      }

      *a4 = Mutable;
      return result;
    }

    if (CFEqual(a2, @"MetadataReader") || CFEqual(a2, @"FormatSpecificMetadataReader"))
    {
      EnsureMetadataReaderCreated(v10, a3);
      v21 = *(v10 + 224);
      if (v21)
      {
LABEL_49:
        v21 = CFRetain(v21);
      }

LABEL_50:
      *a4 = v21;
      return result;
    }

    if (CFEqual(a2, @"ID3MetadataReader"))
    {
      EnsureMetadataReaderCreated(v10, a3);
      v21 = *(v10 + 224);
      if (!v21)
      {
        goto LABEL_50;
      }

      if (*(v10 + 232))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (CFEqual(a2, @"ID3MetadataReaderBC"))
      {
        inSpecifier = 0;
        v22 = *(v10 + 216);
        if (v22 < 0)
        {
          v16 = 0;
        }

        else
        {
          result = FigMetadataReaderCreateForID3WithBackwardCompatibility(a3, *(v10 + 24), v22, &inSpecifier);
          v16 = inSpecifier;
        }

        goto LABEL_15;
      }

      if (!CFEqual(a2, @"VorbisCommentMetadataReader"))
      {
        if (!CFEqual(a2, @"Chapters"))
        {
          return result;
        }

        inSpecifier = 0;
        EnsureMetadataReaderCreated(v10, a3);
        v23 = *(v10 + 224);
        if (!v23 || (!*(v10 + 232) ? (ChapterArray = FigVorbisCommentMetadataCreateChapterArray(a3, v23)) : (ChapterArray = FigID3MetadataCreateChapterArrayFromTopLevelTableOfContents(a3, v23)), v16 = ChapterArray, (inSpecifier = ChapterArray) == 0))
        {
          CreateChaptersFromAudioFileChapterList(v10);
          v16 = inSpecifier;
        }

LABEL_15:
        *a4 = v16;
        return result;
      }

      EnsureMetadataReaderCreated(v10, a3);
      v21 = *(v10 + 224);
      if (!v21)
      {
        goto LABEL_50;
      }

      if (*(v10 + 233))
      {
        goto LABEL_49;
      }
    }

    v21 = 0;
    goto LABEL_50;
  }

  inSpecifier = CopySoundCheckInfoDictionary(v10);
  if (inSpecifier)
  {
    v25 = 4;
    outPropertyData = 0;
    if (AudioFormatGetProperty(0x73636462u, 8u, &inSpecifier, &v25, &outPropertyData))
    {
      CFRelease(inSpecifier);
    }

    else
    {
      v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &outPropertyData);
      CFRelease(inSpecifier);
      if (v18)
      {
        *a4 = v18;
      }
    }
  }

  return result;
}

uint64_t CopyLyricsFromAudioFile(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = 0;
  if (*(v3 + 176))
  {
    goto LABEL_8;
  }

  ioDataSize = 8;
  Property = AudioFileGetProperty(*(v3 + 32), 0x4C595243u, &ioDataSize, a2);
  if (!*(v3 + 177))
  {
    *(v3 + 177) = 1;
    if (!Property)
    {
      goto LABEL_6;
    }

LABEL_8:
    *(v3 + 176) = 1;
    v5 = 4294954513;
    goto LABEL_9;
  }

  if (Property)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!*a2)
  {
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

CFTypeRef CopySoundCheckInfoDictionary(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 202))
  {
    ioDataSize = 8;
    AudioFileGetProperty(*(a1 + 32), 0x73636463u, &ioDataSize, (a1 + 208));
    *(a1 + 202) = 1;
  }

  FigSimpleMutexUnlock();
  result = *(a1 + 208);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

BOOL IndicatesContentProtection(uint64_t a1)
{
  FigSimpleMutexLock();
  ioDataSize = 4;
  outPropertyData = 0;
  AudioFileGetProperty(*(a1 + 32), 0x63727074u, &ioDataSize, &outPropertyData);
  v2 = outPropertyData != 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t EnsureMetadataReaderCreated(uint64_t a1, const __CFAllocator *a2)
{
  outPropertyData = 0;
  FigSimpleMutexLock();
  v5 = (a1 + 224);
  v4 = *(a1 + 224);
  v6 = *(a1 + 216);
  if (v6 < 0)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_25;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  FigMetadataReaderCreateForID3(a2, *(a1 + 24), v6, (a1 + 224));
  if (*(a1 + 224))
  {
    v7 = 0;
    *(a1 + 232) = 1;
    goto LABEL_25;
  }

LABEL_7:
  ioDataSize = 8;
  AudioFileGetProperty(*(a1 + 32), 0x61617274u, &ioDataSize, &outPropertyData);
  v8 = outPropertyData;
  outDataSize[0] = 0;
  cf = 0;
  if (AudioFileGetPropertyInfo(*(a1 + 32), 0x76636673u, outDataSize, 0) || !outDataSize[0])
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, outDataSize[0], 0xB36113CEuLL);
    if (v9)
    {
      if (!AudioFileGetProperty(*(a1 + 32), 0x76636673u, outDataSize, v9))
      {
        FigMetadataReaderCreateWithVorbisCommentFields(a2, v9, v8, &cf);
        v10 = cf;
        goto LABEL_12;
      }
    }

    else
    {
      EnsureMetadataReaderCreated_cold_1();
    }

    v10 = 0;
  }

LABEL_12:
  *v5 = v10;
  FigReleaseAudioFileMetadataItems(v9);
  free(v9);
  if (*v5)
  {
    v7 = 0;
    v15 = 1;
    goto LABEL_24;
  }

  v11 = outPropertyData;
  cf = 0;
  v20 = 8;
  *outDataSize = 0;
  if (AudioFileGetProperty(*(a1 + 32), 0x696E666Fu, &v20, &cf))
  {
    goto LABEL_28;
  }

  v7 = 0;
  v12 = 0;
  v13 = cf;
  if (v20 == 8 && cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFDictionaryGetTypeID() && CFDictionaryGetCount(cf) >= 1)
    {
      v7 = FigMetadataReaderCreateWithAudioFileProperties(a2, cf, v11, outDataSize);
      v12 = *outDataSize;
LABEL_19:
      v13 = cf;
      goto LABEL_20;
    }

LABEL_28:
    v12 = 0;
    v7 = 0;
    goto LABEL_19;
  }

LABEL_20:
  *v5 = v12;
  if (v13)
  {
    CFRelease(v13);
    v12 = *v5;
  }

  if (v12)
  {
    v15 = 0;
LABEL_24:
    *(a1 + 232) = 0;
    *(a1 + 233) = v15;
  }

LABEL_25:
  FigSimpleMutexUnlock();
  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

  return v7;
}

uint64_t GetAudioFilePacketTableInfo(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 178))
  {
    ioDataSize = 16;
    if (!AudioFileGetProperty(*(a1 + 32), 0x706E666Fu, &ioDataSize, (a1 + 184)) && *(a1 + 184) >= 1)
    {
      *(a1 + 179) = 1;
      if ((*(a1 + 192) & 0x80000000) != 0)
      {
        *(a1 + 192) = 0;
      }

      if ((*(a1 + 196) & 0x80000000) != 0)
      {
        *(a1 + 196) = 0;
      }
    }

    *(a1 + 178) = 1;
  }

  return FigSimpleMutexUnlock();
}

uint64_t AudioFileHasSampleDependencies(uint64_t a1)
{
  if (!*(a1 + 200))
  {
    ioDataSize = 4;
    outPropertyData = 0;
    *(a1 + 200) = 1;
    if (!AudioFileGetProperty(*(a1 + 32), 0x72726170u, &ioDataSize, &outPropertyData))
    {
      *(a1 + 201) = outPropertyData != 0;
    }
  }

  return *(a1 + 201);
}

uint64_t MapPacketNumberToFrameNumber_0(uint64_t a1, int64_t a2, int64_t *a3)
{
  v4 = *(a1 + 68);
  if (v4)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 1;
  }

  if ((0x7FFFFFFFFFFEA06FLL / v5) <= a2)
  {
    result = 0;
    *a3 = 0x7FFFFFFFFFFEA06FLL;
    return result;
  }

  if (v4)
  {
    result = 0;
    v7 = v4 * a2;
  }

  else
  {
    outPropertyData[0] = 0;
    outPropertyData[1] = a2;
    outPropertyData[2] = 0;
    ioDataSize = 24;
    result = AudioFileGetProperty(*(a1 + 32), 0x706B6672u, &ioDataSize, outPropertyData);
    if (result)
    {
      return result;
    }

    v7 = outPropertyData[0];
  }

  *a3 = v7;
  return result;
}

uint64_t FigAudioFileFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    return 4294954453;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = *(DerivedStorage + 8);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a3 = v10;
  }

  if (a4)
  {
    *a4 = 1936684398;
  }

  result = 0;
  if (a5)
  {
    *a5 = 1;
  }

  return result;
}

double FigAudioFileFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (a2 == 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *a3 = v9;
    }

    if (a4)
    {
      *a4 = 1936684398;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954453, "-+= FFR_AudioFile =+-", 2872, v4);
  }

  return result;
}

uint64_t FigAudioFileFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = 4294954453;
  if (!a2 && a3 == 1936684398)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a4)
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *a4 = v9;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

uint64_t AudioFile_FigReadProc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v12 = 0;
  v9 = *(a1 + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    result = v10(v9, a3, a2, a4, &v12);
    LODWORD(v10) = v12;
  }

  else
  {
    result = 4294954514;
  }

  *a5 = v10;
  return result;
}

uint64_t AudioFile_FigGetSizeProc(uint64_t a1)
{
  v2 = (a1 + 152);
  v1 = *(a1 + 152);
  if (!v1)
  {
    number = 0;
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      if (v4(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number))
      {
        v5 = 1;
      }

      else
      {
        v5 = number == 0;
      }

      if (!v5)
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, v2);
        CFRelease(number);
      }
    }

    return *v2;
  }

  return v1;
}

uint64_t RegisterFigAudioFileInfoType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA778 = result;
  return result;
}

double InitFigAudioFileInfo(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
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

uint64_t FinalizeFigAudioFileInfo(uint64_t a1)
{
  free(*(a1 + 168));
  FigFormatDescriptionRelease();
  v2 = *(a1 + 32);
  if (v2)
  {
    AudioFileClose(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    CFRelease(v5);
  }

  result = *(a1 + 16);
  if (result)
  {

    return FigSimpleMutexDestroy();
  }

  return result;
}

void FigAudioFileTrackReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileTrackReaderCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*DerivedStorage)
  {
    v3 = *(*DerivedStorage + 24);
    if (v3)
    {
      v4 = CFCopyDescription(v3);
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileTrackReader: stream<%@> trackID %d", v4, 1);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileTrackReader: stream<%@> trackID %d", 0, 1);
    }
  }

  return Mutable;
}

uint64_t FigAudioFileTrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 1936684398;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t FigAudioFileTrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleCursorServiceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileTrackReaderCopySampleCursorService_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v3)
    {
      v6 = CFRetain(v3);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    *a2 = 0;
  }

  return v4;
}

void FigAudioFileCursorService_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileCursorService_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFile_CursorService %p>{ samplerate %d }", a1, *(*DerivedStorage + 88));
  return Mutable;
}

void FigAudioFileCursor_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileCursor_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFile_SampleCursor %p>{ curPacketNum %lld }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t FigAudioFileCursor_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    FigAudioFileCursor_copyProperty_cold_1(outPacketDescriptions);
    value_low = LODWORD(outPacketDescriptions[0].value);
    goto LABEL_17;
  }

  *a4 = 0;
  if (!CFEqual(a2, @"CursorPlayableHorizon"))
  {
    if (CFEqual(a2, @"PreferCreateSampleBuffer"))
    {
      v14 = CFRetain(*MEMORY[0x1E695E4D0]);
      goto LABEL_16;
    }

    if (!CFEqual(a2, @"SampleDependencyAttributes"))
    {
      value_low = 4294954512;
      goto LABEL_17;
    }

    v26 = CMBaseObjectGetDerivedStorage();
    outPacketDescriptions[0].value = 0;
    HasSampleDependencies = AudioFileHasSampleDependencies(*v26);
    v28 = 0;
    if (HasSampleDependencies)
    {
      outPropertyData = 0;
      DependencyInfo = fafc_GetDependencyInfo(a1, &outPropertyData);
      if (DependencyInfo)
      {
        goto LABEL_41;
      }

      v29 = FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary();
      if (v29)
      {
        value_low = v29;
        if (outPacketDescriptions[0].value)
        {
          CFRelease(outPacketDescriptions[0].value);
        }

        goto LABEL_17;
      }

      v28 = outPacketDescriptions[0].value;
    }

    value_low = 0;
    *a4 = v28;
    goto LABEL_17;
  }

  memset(&v30, 0, sizeof(v30));
  outPropertyData = 0;
  v41 = 0;
  v42 = 0;
  ioDataSize = 24;
  v9 = *DerivedStorage;
  v10 = DerivedStorage[1];
  LODWORD(v11) = *(*DerivedStorage + 68);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  if (v10 >= (0x7FFFFFFFFFFEA06FLL / v11))
  {
    v30 = **&MEMORY[0x1E6960CC0];
    goto LABEL_13;
  }

  v43 = 0;
  v41 = v10;
  value_low = AudioFileGetProperty(*(v9 + 32), 0x706B6279u, &ioDataSize, &outPropertyData);
  if (value_low == 1836020325)
  {
    ioNumPackets[0] = 8;
    DependencyInfo = AudioFileReadPacketData(*(*DerivedStorage + 32), 0, 0, outPacketDescriptions, 0, ioNumPackets, 0);
    if (!DependencyInfo)
    {
      value_low = AudioFileGetProperty(*(*DerivedStorage + 32), 0x706B6279u, &ioDataSize, &outPropertyData);
      goto LABEL_10;
    }

LABEL_41:
    value_low = DependencyInfo;
    goto LABEL_17;
  }

LABEL_10:
  if (value_low)
  {
LABEL_11:
    v30 = **&MEMORY[0x1E6960CC0];
    goto LABEL_12;
  }

  v16 = *(*DerivedStorage + 24);
  v17 = outPropertyData;
  v18 = *(*DerivedStorage + 144);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v19 || (v20 = v19(v16, v18 + v17, &v43), v20 == -12782))
  {
    SizeProc = AudioFile_FigGetSizeProc(*DerivedStorage);
    if (!SizeProc)
    {
      goto LABEL_22;
    }
  }

  else
  {
    value_low = v20;
    if (v20)
    {
      goto LABEL_11;
    }

    SizeProc = v43 + outPropertyData;
    if (!(v43 + outPropertyData))
    {
LABEL_22:
      value_low = 0;
      goto LABEL_11;
    }
  }

  v37 = 0;
  v38 = 0;
  value = 0;
  v34 = 0;
  v35 = 0;
  *ioNumPackets = SizeProc;
  v32 = 24;
  value_low = AudioFileGetProperty(*(*DerivedStorage + 32), 0x6279706Bu, &v32, ioNumPackets);
  if (value_low == 1836020325)
  {
    v31 = 8;
    v22 = AudioFileReadPacketData(*(*DerivedStorage + 32), 0, 0, outPacketDescriptions, 0, &v31, 0);
    if (v22)
    {
      value_low = v22;
      goto LABEL_12;
    }

    value_low = AudioFileGetProperty(*(*DerivedStorage + 32), 0x6279706Bu, &v32, ioNumPackets);
  }

  if (!value_low)
  {
    v23 = *DerivedStorage;
    v24 = *(*DerivedStorage + 68);
    if (v24)
    {
      value_low = 0;
      v25 = (v37 - DerivedStorage[1]) * v24;
    }

    else
    {
      v32 = 24;
      v34 = v37;
      value_low = AudioFileGetProperty(*(v23 + 32), 0x706B6672u, &v32, &value);
      v25 = value;
      v23 = *DerivedStorage;
    }

    CMTimeMake(&v30, v25, *(v23 + 88));
  }

LABEL_12:
  if (!value_low)
  {
LABEL_13:
    outPacketDescriptions[0] = v30;
    v14 = CMTimeCopyAsDictionary(outPacketDescriptions, a3);
LABEL_16:
    value_low = 0;
    *a4 = v14;
  }

LABEL_17:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigAudioFileCursor_copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileCursor_copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v6 = *v5;
    if (v6)
    {
      CFRetain(v6);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t FigAudioFileCursor_compareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  v5 = *(v3 + 8);
  v6 = v4 < v5;
  v7 = v4 > v5;
  if (v6)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t FigAudioFileCursor_getPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  v5 = PacketToPTS(v4, DerivedStorage[1], a2);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAudioFileCursor_getDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  mVariableFramesInPacket = *(v4 + 68);
  if (!mVariableFramesInPacket)
  {
    outPacketDescriptions.mStartOffset = 0;
    *&outPacketDescriptions.mVariableFramesInPacket = 0;
    ioNumPackets = 1;
    v6 = AudioFileReadPacketData(*(v4 + 32), 0, 0, &outPacketDescriptions, DerivedStorage[1], &ioNumPackets, 0);
    if (v6)
    {
      v7 = v6;
      goto LABEL_5;
    }

    mVariableFramesInPacket = outPacketDescriptions.mVariableFramesInPacket;
    if (!outPacketDescriptions.mVariableFramesInPacket)
    {
      v7 = 4294954516;
      goto LABEL_5;
    }
  }

  CMTimeMake(&v11, mVariableFramesInPacket, *(v4 + 88));
  v7 = 0;
  *a2 = v11;
LABEL_5:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigAudioFileCursor_copyChunkDetails(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unint64_t *a6, unint64_t *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *DerivedStorage;
  FigSimpleMutexLock();
  if (!*(v16 + 120))
  {
    outPropertyData = 0;
    ioDataSize = 8;
    Property = AudioFileGetProperty(*(v16 + 32), 0x646F6666u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      v31 = Property;
      goto LABEL_33;
    }

    *(v16 + 120) = 1;
    *(v16 + 144) = outPropertyData;
  }

  v34 = a8;
  v33 = a7;
  if (*(v16 + 264))
  {
    v18 = *(v16 + 240);
    v19 = *(v16 + 256);
    v20 = a4;
  }

  else
  {
    v21 = 0.5;
    LODWORD(v21) = *(v16 + 68);
    v22 = *(v16 + 48) * 0.5 / v21;
    if (v22 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v22;
    }

    v23 = *(v16 + 128);
    v19 = v23 / v18;
    v24 = v23 % v18;
    *(v16 + 240) = v18;
    *(v16 + 248) = v24;
    *(v16 + 256) = v19;
    if (v24)
    {
      *(v16 + 256) = ++v19;
    }

    else
    {
      *(v16 + 248) = v18;
    }

    v20 = a4;
    *(v16 + 264) = 1;
  }

  v25 = DerivedStorage[1];
  v26 = *(v16 + 96);
  v27 = v18;
  if (v25 / v26 == v19 - 1)
  {
    v27 = *(v16 + 248);
  }

  v28 = *(v16 + 64);
  v29 = *(v16 + 144);
  if (a2)
  {
    v30 = CFRetain(*(v16 + 24));
    v20 = a4;
    *a2 = v30;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (v20)
  {
    *v20 = v29 + v25 / v26 * v26 * v28;
  }

  if (a5)
  {
    *a5 = v27 * v28;
  }

  if (a6)
  {
    *a6 = v27;
  }

  if (v33)
  {
    *v33 = v25 % v18;
  }

  if (v34)
  {
    *v34 = 1;
  }

  if (a9)
  {
    *a9 = 1;
  }

  v31 = 0;
  if (a10)
  {
    *a10 = 1;
  }

LABEL_33:
  FigSimpleMutexUnlock();
  return v31;
}

uint64_t FigAudioFileCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(*DerivedStorage + 104);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a2 = v4;
  }

  return 0;
}

uint64_t ensureAllocationOfPacketDescriptions(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 160) >= a2)
  {
    return 0;
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v5 = a2;
    free(*(a1 + 168));
    v6 = malloc_type_calloc(v5, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 168) = v6;
    if (v6)
    {
      v7 = 0;
      *(a1 + 160) = v5;
    }

    else
    {
      ensureAllocationOfPacketDescriptions_cold_1(&v9);
      return v9;
    }
  }

  return v7;
}

CFDictionaryRef OUTLINED_FUNCTION_6_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  a9 = a11;
  a10 = a12;

  return CMTimeCopyAsDictionary(&a9, v12);
}

uint64_t figTTMLDocumentWriter_RegisterFigTTMLDocumentWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLDocumentWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLDocumentWriterGetClassID_sRegisterFigTTMLDocumentWriterBaseTypeOnce, figTTMLDocumentWriter_RegisterFigTTMLDocumentWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTTMLDocumentWriterSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLDocumentWriterCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigTTMLDocumentWriterInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLDocumentWriterStartElement(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLDocumentWriterEndElement(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLDocumentWriterAddCaptionData(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLDocumentWriterSetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLDocumentWriterFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t RegisterFigSampleCursorServiceType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleCursorServiceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleCursorServiceGetClassID_sRegisterFigSampleCursorServiceTypeOnce, RegisterFigSampleCursorServiceType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleCursorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleCursorGetClassID_sRegisterFigSampleCursorTypeOnce, RegisterFigSampleCursorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleCursorUtilityGetBatchSampleTimingAndSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    FigSampleCursorUtilityGetBatchSampleTimingAndSizes_cold_1(&v41);
    return v41;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v17 = v16(a1, &cf);
    if (!v17)
    {
      if (a2 < 1)
      {
        a2 = 0;
        if (a4)
        {
LABEL_42:
          *a4 = a2;
        }

LABEL_43:
        if (a5)
        {
          *a5 = a2;
        }

        v37 = 0;
        if (a7)
        {
          *a7 = a2;
        }

        goto LABEL_38;
      }

      v39 = a5;
      v40 = a7;
      v18 = a6 + 48;
      v19 = -1;
      v20 = a8;
      while (1)
      {
        if (a8)
        {
          v21 = cf;
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 144);
          if (!v22)
          {
            goto LABEL_37;
          }

          v17 = v22(v21, 0, v20, 0, 0);
          if (v17)
          {
            break;
          }
        }

        if (a6)
        {
          v23 = cf;
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v24)
          {
            goto LABEL_37;
          }

          v17 = v24(v23, v18 - 24);
          if (v17)
          {
            break;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            v25 = cf;
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (!v26)
            {
              goto LABEL_37;
            }

            v17 = v26(v25, v18);
            if (v17)
            {
              break;
            }
          }

          else
          {
            v27 = MEMORY[0x1E6960C70];
            *v18 = *MEMORY[0x1E6960C70];
            *(v18 + 16) = *(v27 + 16);
          }

          v28 = cf;
          v29 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v29)
          {
            goto LABEL_37;
          }

          v17 = v29(v28, v18 - 48);
          if (v17)
          {
            break;
          }
        }

        v41 = 0;
        v30 = cf;
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (!v31)
        {
          goto LABEL_37;
        }

        v17 = v31(v30, 1, &v41);
        if (v17)
        {
          break;
        }

        if (v41 != 1 || a3 && ((v32 = cf, (v33 = *(CMBaseObjectGetVTable() + 16)) == 0) ? (v34 = 0) : (v34 = v33), (v35 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v36 = 0) : (v36 = v35), v34 == v36 && *(v34 + 32) && (*(v36 + 32))(v32, a3) == 1))
        {
          a2 = -v19;
LABEL_35:
          a5 = v39;
          a7 = v40;
          if (a4)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        --v19;
        v18 += 72;
        v20 += 8;
        if (a2 + v19 == -1)
        {
          goto LABEL_35;
        }
      }
    }

    v37 = v17;
  }

  else
  {
LABEL_37:
    v37 = 4294954514;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  return v37;
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigBufferedAirPlayGlobalRoutingRegistryStartServer_block_invoke;
  block[3] = &unk_1E7481570;
  block[4] = &v3;
  if (FigBufferedAirPlayGlobalRoutingRegistryStartServer_once != -1)
  {
    dispatch_once(&FigBufferedAirPlayGlobalRoutingRegistryStartServer_once, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

double __FigBufferedAirPlayGlobalRoutingRegistryStartServer_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void globalRoutingRegistry_disposeConnectionState(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(a1, a2);
    if (SharedInstance)
    {
      v4 = SharedInstance;
      v5 = *a1;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v6)
      {
        v6(v4, v5);
      }
    }

    free(a1);
  }
}

uint64_t OUTLINED_FUNCTION_2_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v15, v16, a8);
}

BOOL OUTLINED_FUNCTION_5_31(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t type, int a13)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigSnippetEditCursorServiceSetTrackDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(a2 + 16);
  *&DerivedStorage->value = *a2;
  DerivedStorage->epoch = v4;
  snippet_updateSnippetCount(DerivedStorage);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigSnippetEditCursorServiceSetSnippetDurationAndStep(uint64_t a1, CMTime *a2, CMTime *a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a2->flags & 0x1D) != 1 || (a3->flags & 0x1D) != 1 || (time1 = *a2, v15 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v8 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v8, CMTimeCompare(&time1, &time2) < 1) || (time1 = *a3, *&time2.value = v15, time2.epoch = v8, CMTimeCompare(&time1, &time2) <= 0))
  {
    v9 = MEMORY[0x1E6960C70];
    v10 = *MEMORY[0x1E6960C70];
    *&a2->value = *MEMORY[0x1E6960C70];
    v11 = *(v9 + 16);
    a2->epoch = v11;
    *&a3->value = v10;
    a3->epoch = v11;
  }

  FigSimpleMutexLock();
  v12 = *&a2->value;
  *(DerivedStorage + 40) = a2->epoch;
  *(DerivedStorage + 24) = v12;
  epoch = a3->epoch;
  *(DerivedStorage + 48) = *&a3->value;
  *(DerivedStorage + 64) = epoch;
  *(DerivedStorage + 72) = a4;
  snippet_updateSnippetCount(DerivedStorage);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigSnippetEditCursorServiceCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  FigEditCursorServiceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(a2 + 16);
    *DerivedStorage = *a2;
    *(DerivedStorage + 16) = v7;
    v8 = MEMORY[0x1E6960C70];
    v9 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
    v10 = *(v8 + 16);
    *(DerivedStorage + 40) = v10;
    *(DerivedStorage + 48) = v9;
    *(DerivedStorage + 64) = v10;
    *(DerivedStorage + 72) = 1;
    *(DerivedStorage + 80) = 1;
    *(DerivedStorage + 88) = FigSimpleMutexCreate();
    *a3 = 0;
  }

  return v5;
}

uint64_t snippetCursorService_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 88);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 88) = 0;
  }

  return result;
}

__CFString *snippetCursorService_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSnippetEditCursorService %p>", a1);
  v4 = *DerivedStorage;
  time.epoch = *(DerivedStorage + 16);
  *&time.value = v4;
  Seconds = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"{ trackDuration %1.3f", *&Seconds);
  if ((*(DerivedStorage + 36) & 0x1D) == 1 && (*(DerivedStorage + 60) & 0x1D) == 1)
  {
    time = *(DerivedStorage + 24);
    v6 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @", snippetDuration %1.3f", *&v6);
    time = *(DerivedStorage + 48);
    v7 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @", snippetStep %1.3f", *&v7);
  }

  CFStringAppendFormat(Mutable, 0, @" }");
  return Mutable;
}

void snippetCursor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *snippetCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSnippetEditCursor %p>{ service %p, editIndex %d }", a1, *DerivedStorage, DerivedStorage[1]);
  return Mutable;
}

uint64_t snippetCursor_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(v4 + 80);
  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 8) + a2;
  v7 = v5 - 1;
  if (v6 >= v5)
  {
    v8 = -12520;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < v5)
  {
    v7 = *(DerivedStorage + 8) + a2;
  }

  if (v6 >= 0)
  {
    result = v8;
  }

  else
  {
    result = 4294954776;
  }

  if (v6 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 8) = v10;
  return result;
}

uint64_t snippetCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if ((*(v4 + 60) & 0x1D) == 1)
  {
    v5 = *(DerivedStorage + 8);
    if (v5 >> 31)
    {
      snippetCursor_GetEditSegment_cold_1(&lhs);
      value_low = LODWORD(lhs.value);
    }

    else
    {
      time = *(v4 + 48);
      CMTimeMultiply(&lhs, &time, v5);
      *(a2 + 48) = lhs;
      v6 = *(v4 + 48);
      *(a2 + 88) = *(v4 + 64);
      *(a2 + 72) = v6;
      if (*(v4 + 72))
      {
        lhs = *(v4 + 48);
        v16 = *(v4 + 24);
        CMTimeSubtract(&time, &lhs, &v16);
        v16 = *(a2 + 48);
        CMTimeAdd(&lhs, &v16, &time);
        *a2 = *&lhs.value;
        epoch = lhs.epoch;
      }

      else
      {
        *a2 = *(a2 + 48);
        epoch = *(a2 + 64);
      }

      *(a2 + 16) = epoch;
      value_low = 0;
      v14 = *(v4 + 24);
      *(a2 + 40) = *(v4 + 40);
      *(a2 + 24) = v14;
    }
  }

  else
  {
    value_low = 0;
    v9 = MEMORY[0x1E6960CC0];
    v10 = *MEMORY[0x1E6960CC0];
    *(a2 + 48) = *MEMORY[0x1E6960CC0];
    v11 = *(v9 + 16);
    *(a2 + 64) = v11;
    v12 = *v4;
    *(a2 + 88) = *(v4 + 16);
    *(a2 + 72) = v12;
    *(a2 + 16) = v11;
    *a2 = v10;
    v13 = *(v4 + 16);
    *(a2 + 24) = *v4;
    *(a2 + 40) = v13;
  }

  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t RegisterFigCaptionRendererOutputType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void sapl_didUpdateContentKeyBossToNewBoss(const void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (dword_1EAF16E58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(a2 + 64);
    *(a2 + 64) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

CFIndex FigStreamingAssetLoaderCopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  if (!a4)
  {
    FigStreamingAssetLoaderCopyProperty_cold_3(&time);
    return LODWORD(time.value);
  }

  if (!a1)
  {
    FigStreamingAssetLoaderCopyProperty_cold_2(&time);
    return LODWORD(time.value);
  }

  FigSimpleMutexLock();
  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    MultivariantPlaylist = sapl_loadMultivariantPlaylist(a1);
    if (MultivariantPlaylist)
    {
      goto LABEL_102;
    }

    if (*(a1 + 120))
    {
      goto LABEL_71;
    }

    if (!*(a1 + 240))
    {
      v10 = *(a1 + 256);
      if (v10)
      {
        goto LABEL_104;
      }

      goto LABEL_71;
    }

    if (FigCFEqual())
    {
      Alternates = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
      ContentKeySpecifiers = FigStreamAlternateCopyAlternates(Alternates);
      goto LABEL_89;
    }

    if (FigCFEqual())
    {
      ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(*(a1 + 240));
      if (!ContentKeySpecifiers)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    if (FigCFEqual())
    {
      ContentKeySpecifiers = FigMultivariantPlaylistGetMediaSelectionArray(*(a1 + 240));
      if (!ContentKeySpecifiers)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    if (FigCFEqual())
    {
      v19 = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
      v20 = FigStreamAlternateCopyNominalVideoFrameRate(v19);
    }

    else
    {
      if (FigCFEqual())
      {
        SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 240));
        if (!SessionDataSpecifiers || CFArrayGetCount(SessionDataSpecifiers) < 1)
        {
          goto LABEL_71;
        }

        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          FigStreamingAssetLoaderCopyProperty_cold_1(&time);
          value_low = LODWORD(time.value);
          goto LABEL_97;
        }

        v27 = Mutable;
        CFArrayAppendValue(Mutable, @"com.apple.quicktime.HLS");
        *a4 = CFRetain(v27);
        CFRelease(v27);
        goto LABEL_96;
      }

      if (!FigCFEqual())
      {
        if (!FigCFEqual())
        {
          goto LABEL_96;
        }

        *&time.value = *MEMORY[0x1E695F060];
        v29 = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
        if (FigStreamAlternateCopyMaximumVideoResolution(v29, &time.value))
        {
          *&v33.width = time.value;
          v33.height = *&time.timescale;
          ContentKeySpecifiers = CGSizeCreateDictionaryRepresentation(v33);
          goto LABEL_89;
        }

        goto LABEL_71;
      }

      v28 = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
      v20 = FigStreamAlternateCopyAvailableVideoDynamicRanges(v28);
    }

    *a4 = v20;
    v21 = v20 == 0;
    v22 = -12783;
LABEL_75:
    if (v21)
    {
      value_low = v22;
    }

    else
    {
      value_low = 0;
    }

    goto LABEL_97;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    MultivariantPlaylist = sapl_loadMultivariantPlaylist(a1);
    if (MultivariantPlaylist)
    {
      goto LABEL_102;
    }

    MultivariantPlaylist = sapl_loadMediaPlaylist(a1);
    if (MultivariantPlaylist)
    {
      goto LABEL_102;
    }

    if (!*(a1 + 264))
    {
      if (!*(a1 + 240) && (v13 = *(a1 + 256)) != 0 || (v13 = *(a1 + 280)) != 0)
      {
        value_low = CFErrorGetCode(v13);
        if (value_low)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_71;
    }

    if (FigCFEqual())
    {
      time = **&MEMORY[0x1E6960C68];
      HasEndTag = FigMediaPlaylistHasEndTag(*(a1 + 264));
      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a1 + 264));
      if (HasEndTag)
      {
        CMTimeMakeWithSeconds(&time, PlaylistActiveDurationSecs, 1000);
      }

      else if (PlaylistActiveDurationSecs <= 0.0)
      {
        goto LABEL_71;
      }

      v31 = time;
      ContentKeySpecifiers = CMTimeCopyAsDictionary(&v31, a3);
LABEL_89:
      value_low = 0;
      *a4 = ContentKeySpecifiers;
      goto LABEL_97;
    }

    if (FigCFEqual())
    {
      v14 = FigMediaPlaylistGetContentKeySpecifiers(*(a1 + 264));
      if (v14 && CFArrayGetCount(v14) > 0 || (v15 = *(a1 + 240)) != 0 && (v16 = FigMultivariantPlaylistGetContentKeySpecifiers(v15)) != 0 && CFArrayGetCount(v16) >= 1)
      {
        value_low = 0;
        v18 = MEMORY[0x1E695E4D0];
      }

      else
      {
        value_low = 0;
        v18 = MEMORY[0x1E695E4C0];
      }

      *a4 = *v18;
      goto LABEL_97;
    }

    if (!FigCFEqual())
    {
      goto LABEL_96;
    }

    if (!FigMediaPlaylistGetTargetDuration(*(a1 + 264)))
    {
      *a4 = 0;
      goto LABEL_71;
    }

    MinimumTimeOffsetFromLive = sapl_getMinimumTimeOffsetFromLive(a1);
    CMTimeMakeWithSeconds(&time, MinimumTimeOffsetFromLive, 1000000);
    v24 = CMTimeCopyAsDictionary(&time, a3);
    *a4 = v24;
    v21 = v24 == 0;
    v22 = -12786;
    goto LABEL_75;
  }

  if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
  {
    if (FigCFEqual())
    {
      ContentKeySpecifiers = *(a1 + 392);
      if (!ContentKeySpecifiers)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_96:
    value_low = 0;
    goto LABEL_97;
  }

  MultivariantPlaylist = sapl_loadMultivariantPlaylist(a1);
  if (MultivariantPlaylist || (FigCFEqual() || FigCFEqual()) && (MultivariantPlaylist = sapl_loadMediaPlaylist(a1), MultivariantPlaylist) || (MultivariantPlaylist = sapl_loadSessionData(a1), MultivariantPlaylist))
  {
LABEL_102:
    value_low = MultivariantPlaylist;
    goto LABEL_97;
  }

  if (FigCFEqual())
  {
    v10 = *(a1 + 304);
    if (!v10)
    {
      ContentKeySpecifiers = *(a1 + 288);
      if (!ContentKeySpecifiers)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_104:
    value_low = CFErrorGetCode(v10);
    goto LABEL_97;
  }

  if (FigCFEqual())
  {
    v10 = *(a1 + 352);
    if (v10)
    {
      goto LABEL_104;
    }

    ContentKeySpecifiers = *(a1 + 336);
    if (!ContentKeySpecifiers)
    {
      goto LABEL_71;
    }

    goto LABEL_88;
  }

  if (FigCFEqual())
  {
    v10 = *(a1 + 328);
    if (v10)
    {
      goto LABEL_104;
    }

    ContentKeySpecifiers = *(a1 + 312);
    if (!ContentKeySpecifiers)
    {
      goto LABEL_71;
    }

    goto LABEL_88;
  }

  if (!FigCFEqual())
  {
    goto LABEL_96;
  }

  v10 = *(a1 + 376);
  if (v10)
  {
    goto LABEL_104;
  }

  ContentKeySpecifiers = *(a1 + 360);
  if (ContentKeySpecifiers)
  {
LABEL_88:
    ContentKeySpecifiers = CFRetain(ContentKeySpecifiers);
    goto LABEL_89;
  }

LABEL_71:
  value_low = 4294954513;
LABEL_97:
  FigSimpleMutexUnlock();
  return value_low;
}

double sapl_getMinimumTimeOffsetFromLive(uint64_t a1)
{
  if (FigMediaPlaylistDoesServerSupportsBlockingReload(*(a1 + 264)) && FigMediaPlaylistGetPartTargetDuration(*(a1 + 264)) > 0.0)
  {
    PartTargetDuration = FigMediaPlaylistGetPartTargetDuration(*(a1 + 264));
    v3 = PartTargetDuration + PartTargetDuration;
    if (FigMediaPlaylistGetHoldBackDuration(*(a1 + 264)) <= PartTargetDuration + PartTargetDuration)
    {
      return v3;
    }
  }

  else
  {
    v3 = FigMediaPlaylistGetTargetDuration(*(a1 + 264)) * 3.0;
    if (v3 >= FigMediaPlaylistGetHoldBackDuration(*(a1 + 264)))
    {
      return v3;
    }
  }

  v5 = *(a1 + 264);

  return FigMediaPlaylistGetHoldBackDuration(v5);
}

uint64_t FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v4 = *(a1 + 384);
      if (v4)
      {
        v5 = CFRetain(v4);
        v6 = *(a1 + 384);
        if (v6)
        {
          CFRelease(v6);
          *(a1 + 384) = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      FigSimpleMutexUnlock();
      result = 0;
      *a2 = v5;
    }

    else
    {
      FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t FigStreamingAssetPropertyLoaderCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, uint64_t a7, const void *a8, const void *a9, char a10, const void *a11, const void *a12, const void *a13, char a14, uint64_t *a15)
{
  v39 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a15)
  {
    if (!a9 && dword_1EAF16E58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *context = xmmword_1E7481598;
    if (sapl_getTypeID_once != -1)
    {
      dispatch_once_f(&sapl_getTypeID_once, context, spptUtil_registerClass_0);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v20 = Instance;
      if (a2)
      {
        *(Instance + 16) = CFRetain(a2);
        v21 = CFRetain(a2);
      }

      else
      {
        v21 = 0;
        *(v20 + 16) = 0;
      }

      *(v20 + 24) = v21;
      if (a3)
      {
        v22 = CFRetain(a3);
      }

      else
      {
        v22 = 0;
      }

      *(v20 + 32) = v22;
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      *(v20 + 40) = v23;
      v24 = a5;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      *(v20 + 48) = v24;
      v25 = a8;
      if (a8)
      {
        v25 = CFRetain(a8);
      }

      *(v20 + 56) = v25;
      if (a9)
      {
        v26 = CFRetain(a9);
      }

      else
      {
        v26 = 0;
      }

      *(v20 + 144) = v26;
      *(v20 + 152) = a10;
      *(v20 + 184) = a7;
      *(v20 + 216) = 0;
      if (a11)
      {
        v27 = CFRetain(a11);
      }

      else
      {
        v27 = 0;
      }

      *(v20 + 72) = v27;
      *(v20 + 176) = a7 & 8;
      *(v20 + 80) = a14;
      if (a12)
      {
        v28 = CFRetain(a12);
      }

      else
      {
        v28 = 0;
      }

      *(v20 + 88) = v28;
      if (a13)
      {
        v29 = CFRetain(a13);
      }

      else
      {
        v29 = 0;
      }

      *(v20 + 96) = v29;
      *(v20 + 104) = a6;
      *(v20 + 112) = FigReentrantMutexCreate();
      *(v20 + 200) = FigReentrantMutexCreate();
      v31 = FigHTTPSchedulerRetain(0, v30);
      *(v20 + 136) = v31;
      if (v31)
      {
        v32 = dispatch_semaphore_create(0);
        result = 0;
        *(v20 + 224) = v32;
        *a15 = v20;
        return result;
      }

      FigStreamingAssetPropertyLoaderCreate_cold_1(v20, context);
    }

    else
    {
      FigStreamingAssetPropertyLoaderCreate_cold_2(context);
    }
  }

  else
  {
    FigStreamingAssetPropertyLoaderCreate_cold_3(context);
  }

  return context[0];
}

uint64_t sapl_waitForSemaphore(uint64_t a1)
{
  FigSimpleMutexUnlock();
  if (!FigThreadRegisterAbortAction())
  {
    dispatch_semaphore_wait(*(a1 + 224), 0xFFFFFFFFFFFFFFFFLL);
  }

  FigThreadUnregisterAbortAction();
  return FigSimpleMutexLock();
}

void sapl_playlistDidProduceDataOutput(uint64_t a1, uint64_t a2, const __CFData *a3, uint64_t a4, uint64_t a5, OpaqueCMBlockBuffer *a6, int a7, uint64_t a8)
{
  v8 = a8;
  v35 = 0;
  v34 = 0uLL;
  v32 = 0;
  cf2 = 0;
  FigSimpleMutexLock();
  if (!a7)
  {
    sapl_playlistDidProduceDataOutput_cold_2(&v36);
LABEL_51:
    v26 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  FigMediaRequestForPlaylistCopyURL(a1, &cf2);
  URLForCacheLookup = FigMediaRequestForPlaylistGetURLForCacheLookup(a1);
  ParamsAsDict = FigCFHTTPCopyQueryParamsAsDict(cf2, &v32);
  if (ParamsAsDict)
  {
    v26 = ParamsAsDict;
LABEL_36:
    AllocatorForMedia = FigGetAllocatorForMedia();
    CFError = CFErrorCreate(AllocatorForMedia, @"CoreMediaErrorDomain", v26, 0);
    v19 = 0;
    if (CFError)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

  PlaylistVariables = *(a2 + 240);
  if (PlaylistVariables)
  {
    PlaylistVariables = FigMultivariantPlaylistGetPlaylistVariables(PlaylistVariables);
  }

  v17 = FigStreamPlaylistParse(a6, cf2, URLForCacheLookup, &v35, 0, 1, 1, 1u, (a2 + 392), *(a2 + 72), PlaylistVariables, v32, &v34 + 1, &v34);
  if ((v17 & 0xFFFFFFFB) != 0xFFFFCE9A)
  {
    if (v34 != 0)
    {
      if (!v8 && (*(&v34 + 1) || v34 && FigMediaPlaylistHasEndTag(v34) && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v34)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1))
      {
        FigMediaRequestDeliverOnceWithCacheSaveDataToCache(a1, a6);
      }

      v21 = *(&v34 + 1);
      if (*(&v34 + 1))
      {
        v24 = *(a2 + 240);
        *(a2 + 240) = *(&v34 + 1);
        CFRetain(v21);
        if (v24)
        {
          CFRelease(v24);
        }

        if (FigCFHTTPCompareURLs(*(a2 + 16), cf2))
        {
LABEL_28:
          v25 = *(a2 + 208);
          if (v25 == 2)
          {
            LOBYTE(v25) = 1;
          }

          else
          {
            if (v25 != 1)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
              goto LABEL_35;
            }

            *(a2 + 248) = 1;
            if (!*(a2 + 120))
            {
LABEL_35:
              v26 = sapl_appendToUnpublishedPlaylistRequestEvents(a2, a3, cf2, 0, *(&v34 + 1) != 0, v8);
              if (!v26)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }
          }

          *(a2 + 272) = v25;
          goto LABEL_35;
        }

        v23 = *(a2 + 16);
        v22 = cf2;
        *(a2 + 16) = cf2;
        if (!v22)
        {
LABEL_26:
          if (v23)
          {
            CFRelease(v23);
          }

          goto LABEL_28;
        }
      }

      else
      {
        v22 = v34;
        if (!v34)
        {
          goto LABEL_28;
        }

        if (*(a2 + 208) == 1)
        {
          *(a2 + 120) = 1;
        }

        v23 = *(a2 + 264);
        *(a2 + 264) = v22;
      }

      CFRetain(v22);
      goto LABEL_26;
    }

    sapl_playlistDidProduceDataOutput_cold_1(&v36);
    goto LABEL_51;
  }

  CFError = FigCreateCFError(@"CoreMediaErrorDomain", v17, @"Playlist parse error", 0, 0, cf2, 0);
  v19 = 6;
  if (CFError)
  {
LABEL_7:
    sapl_playlistDidFail(a1, a2, a3, CFError, v19);
    CFRelease(CFError);
    goto LABEL_41;
  }

LABEL_37:
  sapl_setCurrentMediaRequest(a2, 0);
  if (*(a2 + 232) > 0)
  {
    v28 = 0;
    do
    {
      dispatch_semaphore_signal(*(a2 + 224));
      ++v28;
    }

    while (v28 < *(a2 + 232));
  }

  *(a2 + 232) = 0;
LABEL_41:
  FigSimpleMutexUnlock();
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (*(&v34 + 1))
  {
    CFRelease(*(&v34 + 1));
  }

  if (v34)
  {
    CFRelease(v34);
  }
}

void sapl_playlistDidFail(uint64_t a1, uint64_t a2, const __CFData *a3, void *a4, uint64_t a5)
{
  v28 = 0;
  cf = 0;
  v27 = 0;
  if (a5 == 8)
  {
    v25 = -19582;
    goto LABEL_45;
  }

  FigSimpleMutexLock();
  FigMediaRequestForPlaylistCopyURL(a1, &cf);
  sapl_appendToUnpublishedPlaylistRequestEvents(a2, a3, cf, a4, *(a2 + 208) == 1, 0);
  v10 = *(a2 + 208);
  if (v10 == 2)
  {
    if (a5 == 6)
    {
      v12 = *(a2 + 240);
      if (v12)
      {
        v13 = *(a2 + 216) + 1;
        *(a2 + 216) = v13;
        Alternates = FigMultivariantPlaylistGetAlternates(v12);
        if (Alternates)
        {
          Alternates = CFArrayGetCount(Alternates);
        }

        if (v13 < Alternates)
        {
          v15 = 0;
          v16 = 2;
          goto LABEL_21;
        }

        *(a2 + 216) = 0;
      }
    }

    if (a4)
    {
      v17 = CFRetain(a4);
    }

    else
    {
      v17 = 0;
    }

    *(a2 + 280) = v17;
    v15 = 1;
    *(a2 + 272) = 1;
  }

  else if (v10 == 1)
  {
    if (a4)
    {
      v11 = CFRetain(a4);
    }

    else
    {
      v11 = 0;
    }

    *(a2 + 256) = v11;
    v15 = 1;
    *(a2 + 248) = 1;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
    v15 = 1;
  }

  v16 = 1;
LABEL_21:
  if (a4)
  {
    if (*(a2 + 392) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a2 + 392) = Mutable) != 0))
    {
      ErrorLogEntry = FigMediaRequestCreateErrorLogEntry(a1, a4, 1, v16);
      CFArrayAppendValue(*(a2 + 392), ErrorLogEntry);
      if (ErrorLogEntry)
      {
        CFRelease(ErrorLogEntry);
      }
    }
  }

  sapl_setCurrentMediaRequest(a2, 0);
  if ((v15 & 1) == 0)
  {
    NextAlternate = sapl_findNextAlternate(a2, &v28);
    if (!NextAlternate)
    {
      PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v28);
      if (PlaylistAlternateURL)
      {
        v24 = CFRetain(PlaylistAlternateURL);
      }

      else
      {
        v24 = 0;
      }

      v27 = v24;
      if (!*(a2 + 80))
      {
        goto LABEL_43;
      }

      NextAlternate = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a2 + 16), &v27);
      if (!NextAlternate)
      {
        v24 = v27;
LABEL_43:
        sapl_playlistDidFail_cold_1(&v28, a2, v24);
        goto LABEL_31;
      }
    }

    v25 = NextAlternate;
LABEL_45:
    sapl_playlistDidFail_cold_2(a2, v25);
    goto LABEL_31;
  }

  if (*(a2 + 232) >= 1)
  {
    v21 = 0;
    do
    {
      dispatch_semaphore_signal(*(a2 + 224));
      ++v21;
    }

    while (v21 < *(a2 + 232));
  }

  *(a2 + 232) = 0;
LABEL_31:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

uint64_t sapl_setCurrentMediaRequest(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 192);
  *(a1 + 192) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexUnlock();
}

uint64_t sapl_sessionDataSchedulerDidFailForItem(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  FigSimpleMutexLock();
  if (FigSessionDataSpecifierIsChapterMetadata(a2))
  {
    v7 = a3[38];
    a3[38] = a4;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(a2))
  {
    v7 = a3[41];
    a3[41] = a4;
    if (!a4)
    {
      goto LABEL_4;
    }

LABEL_3:
    CFRetain(a4);
    goto LABEL_4;
  }

  if (FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(a2))
  {
    v7 = a3[47];
    a3[47] = a4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = a3[44];
    a3[44] = a4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  if (v7)
  {
    CFRelease(v7);
  }

  return FigSimpleMutexUnlock();
}

uint64_t sapl_sessionDataSchedulerDidFinishReadQueue(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  *(a2 + 344) = 1;
  sapl_setCurrentMediaRequest(a2, 0);
  if (*(a2 + 232) >= 1)
  {
    v3 = 0;
    do
    {
      dispatch_semaphore_signal(*(a2 + 224));
      ++v3;
    }

    while (v3 < *(a2 + 232));
  }

  *(a2 + 232) = 0;

  return FigSimpleMutexUnlock();
}

uint64_t sapl_finalize(void *a1)
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

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
    a1[16] = 0;
  }

  v9 = a1[17];
  if (v9)
  {
    dispatch_release(v9);
    a1[17] = 0;
  }

  v10 = a1[18];
  if (v10)
  {
    CFRelease(v10);
    a1[18] = 0;
  }

  v11 = a1[20];
  if (v11)
  {
    CFRelease(v11);
    a1[20] = 0;
  }

  v12 = a1[21];
  if (v12)
  {
    CFRelease(v12);
    a1[21] = 0;
  }

  v13 = a1[11];
  if (v13)
  {
    CFRelease(v13);
    a1[11] = 0;
  }

  v14 = a1[12];
  if (v14)
  {
    CFRelease(v14);
    a1[12] = 0;
  }

  sapl_setCurrentMediaRequest(a1, 0);
  v15 = a1[28];
  if (v15)
  {
    dispatch_release(v15);
    a1[28] = 0;
  }

  v16 = a1[30];
  if (v16)
  {
    CFRelease(v16);
    a1[30] = 0;
  }

  v17 = a1[32];
  if (v17)
  {
    CFRelease(v17);
    a1[32] = 0;
  }

  v18 = a1[33];
  if (v18)
  {
    CFRelease(v18);
    a1[33] = 0;
  }

  v19 = a1[35];
  if (v19)
  {
    CFRelease(v19);
    a1[35] = 0;
  }

  v20 = a1[42];
  if (v20)
  {
    CFRelease(v20);
    a1[42] = 0;
  }

  v21 = a1[44];
  if (v21)
  {
    CFRelease(v21);
    a1[44] = 0;
  }

  v22 = a1[36];
  if (v22)
  {
    CFRelease(v22);
    a1[36] = 0;
  }

  v23 = a1[38];
  if (v23)
  {
    CFRelease(v23);
    a1[38] = 0;
  }

  v24 = a1[39];
  if (v24)
  {
    CFRelease(v24);
    a1[39] = 0;
  }

  v25 = a1[41];
  if (v25)
  {
    CFRelease(v25);
    a1[41] = 0;
  }

  v26 = a1[45];
  if (v26)
  {
    CFRelease(v26);
    a1[45] = 0;
  }

  v27 = a1[47];
  if (v27)
  {
    CFRelease(v27);
    a1[47] = 0;
  }

  v28 = a1[49];
  if (v28)
  {
    CFRelease(v28);
    a1[49] = 0;
  }

  v29 = a1[48];
  if (v29)
  {
    CFRelease(v29);
    a1[48] = 0;
  }

  v30 = a1[9];
  if (v30)
  {
    CFRelease(v30);
    a1[9] = 0;
  }

  FigSimpleMutexDestroy();

  return FigSimpleMutexDestroy();
}

uint64_t spptUtil_registerClass_0(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

CFPropertyListRef OUTLINED_FUNCTION_5_32(const __CFAllocator *a1)
{

  return CFPropertyListCreateWithData(a1, v1, 1uLL, 0, 0);
}

uint64_t OUTLINED_FUNCTION_6_25()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigTrackReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTrackReaderGetClassID_sRegisterFigTrackReaderBaseTypeOnce, RegisterFigTrackReaderBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigEditCursorServiceBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigEditCursorServiceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigEditCursorServiceGetClassID_sRegisterFigEditCursorServiceBaseTypeOnce, RegisterFigEditCursorServiceBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigEditCursorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigEditCursorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigEditCursorGetClassID_sRegisterFigEditCursorBaseTypeOnce, RegisterFigEditCursorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPlaybackItemLogCreateW3CLogData(const __CFArray *a1, __CFString **a2)
{
  if (!a1 || !a2)
  {
    FigPlaybackItemLogCreateW3CLogData_cold_3(&v70);
    return v70;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    FigPlaybackItemLogCreateW3CLogData_cold_2(&v69);
    return v69;
  }

  v6 = Mutable;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = CFDateCreate(v4, Current);
  if (!v8)
  {
    v65 = 608;
    goto LABEL_54;
  }

  if (!FigPlaybackItemLogCreateW3CLogData_sDateFormatter)
  {
    v9 = CFDateFormatterCreate(v4, 0, kCFDateFormatterShortStyle, kCFDateFormatterLongStyle);
    if (v9)
    {
      v10 = v9;
      CFDateFormatterSetFormat(v9, @"yyyy/MM/dd HH:mm:ss.sss");
      if (!FigAtomicCompareAndSwapPtr())
      {
        CFRelease(v10);
      }
    }

    if (!FigPlaybackItemLogCreateW3CLogData_sDateFormatter)
    {
      v65 = 620;
LABEL_54:
      FigPlaybackItemLogCreateW3CLogData_cold_1(v65, v6, &v68);
      v63 = v68;
      if (!v8)
      {
        return v63;
      }

      goto LABEL_48;
    }
  }

  v66 = a2;
  CFStringAppend(v6, @"#Version: 1.0\n#Software: ");
  v11 = FigCFHTTPCreateUserAgent();
  if (v11)
  {
    v12 = v11;
    CFStringAppend(v6, v11);
    CFRelease(v12);
  }

  CFStringAppend(v6, @"\n#Date: ");
  v67 = v8;
  StringWithDate = CFDateFormatterCreateStringWithDate(v4, FigPlaybackItemLogCreateW3CLogData_sDateFormatter, v8);
  if (StringWithDate)
  {
    v14 = StringWithDate;
    CFStringAppend(v6, StringWithDate);
    CFRelease(v14);
  }

  if (CFArrayGetCount(a1) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    v16 = CFDictionaryContainsKey(ValueAtIndex, @"status");
    v17 = FigPlaybackItemLogCreateW3CLogData_sDateFormatter;
    v18 = a1;
    Count = CFArrayGetCount(a1);
    if (v16)
    {
      CFStringAppend(v6, @"\n#Fields: date time uri cs-guid s-ip status domain comment cs-iftype\n");
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v21 = CFArrayGetValueAtIndex(a1, i);
          Value = CFDictionaryGetValue(v21, @"date");
          w3cAppendDateString(v6, Value, v17);
          v23 = CFDictionaryGetValue(v21, @"uri");
          if (v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = @"-";
          }

          CFStringAppend(v6, v24);
          CFStringAppend(v6, @" ");
          v25 = CFDictionaryGetValue(v21, @"cs-guid");
          if (v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = @"-";
          }

          CFStringAppend(v6, v26);
          CFStringAppend(v6, @" ");
          v27 = CFDictionaryGetValue(v21, @"s-ip");
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = @"-";
          }

          CFStringAppend(v6, v28);
          CFStringAppend(v6, @" ");
          v29 = CFDictionaryGetValue(v21, @"status");
          w3cAppendNumber(v6, v29, 1);
          v30 = CFDictionaryGetValue(v21, @"domain");
          w3cAppendQuotedString(v6, v30);
          v31 = CFDictionaryGetValue(v21, @"comment");
          w3cAppendQuotedString(v6, v31);
          v32 = CFDictionaryGetValue(v21, @"cs-iftype");
          if (v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = @"-";
          }

          CFStringAppend(v6, v33);
          CFStringAppend(v6, @"\n");
        }
      }
    }

    else
    {
      CFStringAppend(v6, @"\n#Fields: date time uri cs-guid s-ip s-ip-changes sc-count c-duration-downloaded c-start-time c-duration-watched bytes c-observed-bitrate sc-indicated-bitrate c-stalls c-frames-dropped c-startup-time c-overdue c-reason c-observed-min-bitrate c-observed-max-bitrate c-observed-bitrate-sd s-playback-type sc-wwan-count c-switch-bitrate\n");
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v35 = CFArrayGetValueAtIndex(v18, j);
          v36 = CFDictionaryGetValue(v35, @"date");
          w3cAppendDateString(v6, v36, v17);
          v37 = CFDictionaryGetValue(v35, @"uri");
          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = @"-";
          }

          CFStringAppend(v6, v38);
          CFStringAppend(v6, @" ");
          v39 = CFDictionaryGetValue(v35, @"cs-guid");
          if (v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = @"-";
          }

          CFStringAppend(v6, v40);
          CFStringAppend(v6, @" ");
          v41 = CFDictionaryGetValue(v35, @"s-ip");
          if (v41)
          {
            v42 = v41;
          }

          else
          {
            v42 = @"-";
          }

          CFStringAppend(v6, v42);
          CFStringAppend(v6, @" ");
          v43 = CFDictionaryGetValue(v35, @"s-ip-changes");
          w3cAppendNumber(v6, v43, 1);
          v44 = CFDictionaryGetValue(v35, @"sc-count");
          w3cAppendNumber(v6, v44, 1);
          v45 = CFDictionaryGetValue(v35, @"c-duration-downloaded");
          w3cAppendNumber(v6, v45, 1);
          v46 = CFDictionaryGetValue(v35, @"c-start-time");
          w3cAppendNumber(v6, v46, 1);
          v47 = CFDictionaryGetValue(v35, @"c-duration-watched");
          w3cAppendNumber(v6, v47, 1);
          v48 = CFDictionaryGetValue(v35, @"bytes");
          w3cAppendNumber(v6, v48, 1);
          v49 = CFDictionaryGetValue(v35, @"c-observed-bitrate");
          w3cAppendNumber(v6, v49, 1);
          v50 = CFDictionaryGetValue(v35, @"sc-indicated-bitrate");
          w3cAppendNumber(v6, v50, 1);
          v51 = CFDictionaryGetValue(v35, @"c-stalls");
          w3cAppendNumber(v6, v51, 1);
          v52 = CFDictionaryGetValue(v35, @"c-frames-dropped");
          w3cAppendNumber(v6, v52, 1);
          v53 = CFDictionaryGetValue(v35, @"c-startup-time");
          w3cAppendNumber(v6, v53, 1);
          v54 = CFDictionaryGetValue(v35, @"c-overdue");
          w3cAppendNumber(v6, v54, 1);
          v55 = CFDictionaryGetValue(v35, @"c-reason");
          w3cAppendNumber(v6, v55, 1);
          v56 = CFDictionaryGetValue(v35, @"c-observed-min-bitrate");
          w3cAppendNumber(v6, v56, 1);
          v57 = CFDictionaryGetValue(v35, @"c-observed-max-bitrate");
          w3cAppendNumber(v6, v57, 1);
          v58 = CFDictionaryGetValue(v35, @"c-observed-bitrate-sd");
          w3cAppendNumber(v6, v58, 1);
          v59 = CFDictionaryGetValue(v35, @"s-playback-type");
          if (v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = @"-";
          }

          CFStringAppend(v6, v60);
          CFStringAppend(v6, @" ");
          v61 = CFDictionaryGetValue(v35, @"sc-wwan-count");
          w3cAppendNumber(v6, v61, 1);
          v62 = CFDictionaryGetValue(v35, @"c-switch-bitrate");
          w3cAppendNumber(v6, v62, 0);
          CFStringAppend(v6, @"\n");
        }
      }
    }
  }

  v63 = 0;
  v8 = v67;
  *v66 = v6;
LABEL_48:
  CFRelease(v8);
  return v63;
}

void w3cAppendDateString(CFMutableStringRef theString, CFDateRef date, CFDateFormatterRef formatter)
{
  if (date && (StringWithDate = CFDateFormatterCreateStringWithDate(*MEMORY[0x1E695E480], formatter, date)) != 0)
  {
    v5 = StringWithDate;
    CFStringAppend(theString, StringWithDate);
    CFStringAppend(theString, @" ");

    CFRelease(v5);
  }

  else
  {
    CFStringAppend(theString, @"-");
    CFStringAppend(theString, @" ");
    CFStringAppend(theString, @"-");

    CFStringAppend(theString, @" ");
  }
}

void w3cAppendNumber(CFMutableStringRef theString, CFNumberRef number, int a3)
{
  if (!number || (!CFNumberIsFloatType(number) ? (v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@", number)) : (valuePtr = 0, CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr), v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%.3f", valuePtr)), (v7 = v6) == 0))
  {
    CFStringAppend(theString, @"-");
    if (!a3)
    {
      return;
    }

    goto LABEL_9;
  }

  CFStringAppend(theString, v6);
  CFRelease(v7);
  if (a3)
  {
LABEL_9:
    CFStringAppend(theString, @" ");
  }
}

void w3cAppendQuotedString(CFMutableStringRef theString, const __CFString *a2)
{
  if (a2)
  {
    v4 = @"";
    CFStringAppend(theString, @"");
    CFStringAppend(theString, a2);
  }

  else
  {
    v4 = @"-";
  }

  CFStringAppend(theString, v4);

  CFStringAppend(theString, @" ");
}

uint64_t FigAlternateSetErrorCategory(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 208) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSetIsFairPlayStreamingVideoAlternate(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 224) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSetPeakBitRate(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 228) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSetStreamBitrateCurve(uint64_t a1, const void *a2, unint64_t a3)
{
  result = 4294954516;
  if (a1 && a3 <= 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a3)
    {
      if (!*(DerivedStorage + 248))
      {
        if (a2)
        {
          v8 = CFRetain(a2);
        }

        else
        {
          v8 = 0;
        }

        *(DerivedStorage + 248) = v8;
      }
    }

    else if (!*(DerivedStorage + 240))
    {
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      *(DerivedStorage + 240) = v9;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

CFTypeRef FigAlternateCopyStreamBitrateCurve(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2 <= 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a2)
    {
      v5 = *(DerivedStorage + 248);
      if (v5)
      {
LABEL_5:
        v2 = CFRetain(v5);
LABEL_8:
        FigSimpleMutexUnlock();
        return v2;
      }
    }

    else
    {
      v5 = *(DerivedStorage + 240);
      if (v5)
      {
        goto LABEL_5;
      }
    }

    v2 = 0;
    goto LABEL_8;
  }

  return v2;
}

uint64_t FigAlternateSetLateDiscoveredMediaType(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1986618469)
  {
    return 4294954514;
  }

  v4 = DerivedStorage;
  FigSimpleMutexLock();
  *(v4 + 232) = 1986618469;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateGetCurrentErrorCategory(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 208);
  FigSimpleMutexUnlock();
  return v2;
}

BOOL FigAlternateHasUndeclaredVideo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 232) == 1986618469;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateHasVideo(uint64_t result)
{
  if (result)
  {
    v1 = result;
    return FigAlternateHasVideoDeclared(result) || FigAlternateHasUndeclaredVideo(v1);
  }

  return result;
}

uint64_t FigAlternateHasVideoDeclared(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 422))
  {
    v2 = *(DerivedStorage + 421);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (!v3)
    {
      goto LABEL_9;
    }

    MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
    if (!MediaValidatorPlist)
    {
      MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    }

    if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, &v7, 0))
    {
      v2 = v7 & 2;
    }

    else
    {
LABEL_9:
      v2 = 1;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 421) = v2;
    *(v5 + 422) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateHasStereoVideo(__CFArray *a1)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 466))
    {
      LOBYTE(DerivedStorage) = *(DerivedStorage + 465);
LABEL_14:
      FigSimpleMutexUnlock();
      return DerivedStorage;
    }

    FigSimpleMutexUnlock();
  }

  v4 = 0;
  LODWORD(DerivedStorage) = 0;
  v5 = *MEMORY[0x1E6960688];
  v6 = *(MEMORY[0x1E6960688] + 8);
  if (!VideoLayoutTags)
  {
    goto LABEL_7;
  }

LABEL_6:
  for (i = CFArrayGetCount(VideoLayoutTags); v4 < i && !DerivedStorage; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v4);
    *&v11.category = v5;
    v11.value = v6;
    LODWORD(DerivedStorage) = CMTagCollectionContainsTag(ValueAtIndex, v11);
    ++v4;
    if (VideoLayoutTags)
    {
      goto LABEL_6;
    }

LABEL_7:
    ;
  }

  if (a1)
  {
    v9 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v9 + 465) = DerivedStorage;
    *(v9 + 466) = 1;
    goto LABEL_14;
  }

  return DerivedStorage;
}

__CFArray *FigAlternateGetVideoLayoutTags(__CFArray *result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    result = *(DerivedStorage + 144);
    if (!result)
    {
      result = FigAlternateCreateDefaultTagCollectionsArrayForVideo();
      *(DerivedStorage + 144) = result;
    }
  }

  return result;
}

uint64_t FigAlternateHasMVStereoVideo(__CFArray *a1)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  v2 = 0;
  v3 = *MEMORY[0x1E6960688];
  v4 = *(MEMORY[0x1E6960688] + 8);
  v5 = *MEMORY[0x1E6963158];
  v6 = *(MEMORY[0x1E6963158] + 8);
  if (!VideoLayoutTags)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(VideoLayoutTags); ; i = 0)
  {
    if (v2 >= i)
    {
      return 0;
    }

    *&tagBuffer.category = 0;
    tagBuffer.value = 0;
    numberOfTagsCopied = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v2);
    CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_PackingType, &tagBuffer, 1, &numberOfTagsCopied);
    *&v12.category = v3;
    v12.value = v4;
    if (CMTagCollectionContainsTag(ValueAtIndex, v12))
    {
      *&v13.category = v5;
      v13.value = v6;
      if (CMTagEqualToTag(tagBuffer, v13))
      {
        break;
      }
    }

    ++v2;
    if (VideoLayoutTags)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 1;
}

uint64_t FigAlternateHasAudioDeclared(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 420))
  {
    v2 = *(DerivedStorage + 419);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (!v3)
    {
      goto LABEL_9;
    }

    MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
    if (!MediaValidatorPlist)
    {
      MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    }

    if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, &v7, 0))
    {
      v2 = v7 & 1;
    }

    else
    {
LABEL_9:
      v2 = 1;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 419) = v2;
    *(v5 + 420) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateIsAudioOnly(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (FigAlternateHasVideoDeclared(result))
    {
      return 0;
    }

    else
    {
      result = FigAlternateHasAudioDeclared(v1);
      if (result)
      {
        return !FigAlternateHasUndeclaredVideo(v1);
      }
    }
  }

  return result;
}

uint64_t FigAlternateGetLastKnownValueForIsFullyCached(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 236);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateGetPeakBitRate(uint64_t result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v2 = *(DerivedStorage + 228);
    FigSimpleMutexUnlock();
    if (v2)
    {
      return v2;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

  return result;
}

uint64_t FigAlternateGetExpectedAverageBitrate(uint64_t result)
{
  if (result)
  {
    return fa_GetAlternateAverageBandwidth(result);
  }

  return result;
}

uint64_t fa_GetAlternateAverageBandwidth(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 48);
  if (!result)
  {

    return FigAlternateGetPeakBitRate(a1);
  }

  return result;
}

uint64_t FigAlternateGetDeclaredPeakBitRate(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 8);
  }

  return result;
}

uint64_t FigAlternateGetAverageBitRate(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 48);
  }

  return result;
}

double FigAlternateGetRankingScore(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 64);
  }

  else
  {
    return -1.0;
  }
}

uint64_t FigAlternateGetVideoQualityIndex(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    VideoRange = FigAlternateGetVideoRange(result);
    BestVideoFormat = FigAlternateGetBestVideoFormat(v2);
    if (BestVideoFormat <= 3)
    {
      if (VideoRange >= 2)
      {
        v5 = 0;
      }

      else
      {
        v5 = 20;
      }

      v6 = VideoRange < 2;
      if (VideoRange == 2)
      {
        v7 = 14;
      }

      else
      {
        v7 = 0;
      }

      if (VideoRange == 3)
      {
        v7 = 13;
      }

      if (VideoRange >= 2)
      {
        v8 = v7;
      }

      else
      {
        v8 = 3;
      }

      if (BestVideoFormat != 3)
      {
        v8 = 0;
      }

      if (BestVideoFormat != 2)
      {
        v6 = v8;
      }

      if (BestVideoFormat == 1)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }

    else if (BestVideoFormat > 6)
    {
      if (BestVideoFormat == 7)
      {
        if (VideoRange == 3)
        {
          v10 = fa_CodecsIncludeVideoFormat(v2, 1685481521, 20) == 0;
          v11 = 22;
          v12 = 12;
          goto LABEL_48;
        }

        return 0;
      }

      if (VideoRange == 3)
      {
        v9 = 17;
      }

      else
      {
        v9 = 0;
      }

      if (BestVideoFormat == 8)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (BestVideoFormat != 4)
      {
        if (BestVideoFormat == 5)
        {
          if (VideoRange < 2)
          {
            return 4;
          }

          if (VideoRange == 2)
          {
            v10 = FigAlternateGetBestSupplementalVideoFormat(v2) == 3;
            v11 = 15;
            v12 = 21;
LABEL_48:
            if (v10)
            {
              return v12;
            }

            else
            {
              return v11;
            }
          }

          if (VideoRange == 3)
          {
            v10 = FigAlternateGetBestSupplementalVideoFormat(v2) == 3;
            v11 = 16;
            v12 = 19;
            goto LABEL_48;
          }
        }

        return 0;
      }

      if (VideoRange == 1)
      {
        return 2;
      }

      if (VideoRange != 2)
      {
        if (VideoRange == 3)
        {
          v10 = FigAlternateGetBestSupplementalVideoFormat(v2) == 3;
          v11 = 11;
          v12 = 18;
          goto LABEL_48;
        }

        return 0;
      }

      if (FigAlternateGetBestSupplementalVideoFormat(v2) == 2)
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  return result;
}

uint64_t FigAlternateGetVideoRange(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 364))
  {
    v2 = *(DerivedStorage + 360);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 132) + 2;
    if (v3 > 4)
    {
      v2 = 0;
    }

    else
    {
      v2 = dword_196E76354[v3];
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 360) = v2;
    *(v4 + 364) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateGetBestVideoFormat(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 260))
  {
    v3 = *(DerivedStorage + 256);
  }

  else
  {
    FigSimpleMutexUnlock();
    if (fa_CodecsIncludeVideoFormat(a1, 1684108849, 0))
    {
      v3 = 8;
    }

    else
    {
      v3 = 7;
      if (!FigAlternateHasVideoFormat(a1, 7))
      {
        if (fa_CodecsIncludeVideoFormat(a1, 1635135537, 0))
        {
          v3 = 5;
        }

        else
        {
          v3 = 4;
          if (!FigAlternateHasVideoFormat(a1, 4))
          {
            if (fa_CodecsIncludeVideoFormat(a1, 1987063865, 0))
            {
              v3 = 3;
            }

            else
            {
              v3 = 2;
              if (!FigAlternateHasVideoFormat(a1, 2))
              {
                v3 = FigAlternateHasVideoFormat(a1, 1) != 0;
              }
            }
          }
        }
      }
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 256) = v3;
    *(v4 + 260) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateGetBestSupplementalVideoFormat(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 268))
  {
    v3 = *(DerivedStorage + 264);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = 3;
    if (!FigAlternateHasSupplementalVideoFormat(a1, 3))
    {
      v3 = 2;
      if (!FigAlternateHasSupplementalVideoFormat(a1, 2))
      {
        v3 = FigAlternateHasSupplementalVideoFormat(a1, 1) != 0;
      }
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 264) = v3;
    *(v5 + 268) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateHasVideoDolbyVisionHEVCProfile(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return fa_CodecsIncludeVideoFormat(result, 1685481521, a2);
  }

  return result;
}

BOOL FigAlternateMeetsVideoChoice(_BOOL8 result, _DWORD *a2)
{
  if (result)
  {
    v3 = result;
    VideoRange = FigAlternateGetVideoRange(result);
    if (FigAlternateHasVideoFormat(v3, 7))
    {
      return *a2 == 7;
    }

    if (fa_CodecsIncludeVideoFormat(v3, 1684108849, 0))
    {
      return *a2 == 8;
    }

    if (FigAlternateHasVideoFormat(v3, 4))
    {
      v6 = *a2 | 2;
      goto LABEL_12;
    }

    if (fa_CodecsIncludeVideoFormat(v3, 1987063865, 0))
    {
      if (*a2 != 6 && *a2 != 3)
      {
        return 0;
      }
    }

    else if (fa_CodecsIncludeVideoFormat(v3, 1635135537, 0))
    {
      if ((*a2 - 5) > 1)
      {
        return 0;
      }
    }

    else
    {
      if (FigAlternateHasVideoFormat(v3, 2))
      {
        v6 = *a2 | 4;
LABEL_12:
        if (v6 != 6)
        {
          return 0;
        }

        return a2[1] == VideoRange;
      }

      if (!FigAlternateHasVideoFormat(v3, 1))
      {
        return FigAlternateHasUndeclaredVideo(v3) && *a2 == 2;
      }

      if (*a2 != 6 && *a2 != 1)
      {
        return 0;
      }
    }

    return a2[1] == VideoRange;
  }

  return result;
}

uint64_t FigAlternateHasVideoFormat(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2 > 4)
    {
      if (a2 > 6)
      {
        if (a2 == 7)
        {
          if (!fa_CodecsIncludeVideoFormat(v2, 1685481521, 0))
          {
            v3 = 1685481573;
            goto LABEL_32;
          }

          return 1;
        }

        if (a2 != 8)
        {
          return result;
        }

        v5 = v2;
        v6 = 1684108849;
      }

      else
      {
        if (a2 != 5)
        {
          if (fa_CodecsIncludeVideoFormat(v2, 1635148593, 0) || fa_CodecsIncludeVideoFormat(v2, 1635148595, 0) || fa_CodecsIncludeVideoFormat(v2, 1752589105, 0) || fa_CodecsIncludeVideoFormat(v2, 1751479857, 0) || fa_CodecsIncludeVideoFormat(v2, 1987063865, 0))
          {
            return 1;
          }

          v4 = v2;
          v3 = 1635135537;
          return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
        }

        v5 = v2;
        v6 = 1635135537;
      }
    }

    else
    {
      if (a2 <= 2)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            return result;
          }

          if (!fa_CodecsIncludeVideoFormat(v2, 1635148593, 0))
          {
            v3 = 1635148595;
LABEL_32:
            v4 = v2;
            return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
          }

          return 1;
        }

        if (fa_CodecsIncludeVideoFormat(v2, 1785750887, 0))
        {
          return 1;
        }

        v4 = v2;
        v3 = 1835692135;
        return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
      }

      if (a2 != 3)
      {
        if (fa_CodecsIncludeVideoFormat(v2, 1752589105, 0))
        {
          return 1;
        }

        v4 = v2;
        v3 = 1751479857;
        return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
      }

      v5 = v2;
      v6 = 1987063865;
    }

    return fa_CodecsIncludeVideoFormat(v5, v6, 0);
  }

  return result;
}

uint64_t FigAlternateGetNormalizedPeakBitrate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    BestVideoFormat = FigAlternateGetBestVideoFormat(result);
    if (BestVideoFormat >= 9)
    {
      v3 = 0;
    }

    else
    {
      v3 = BestVideoFormat;
    }

    v4 = kVideoCodecScoreFactor[v3];
    PeakBitRate = FigAlternateGetPeakBitRate(v1);
    if (PeakBitRate == 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return (v4 * PeakBitRate);
    }
  }

  return result;
}

int FigAlternateGetVariantBitrateRank(uint64_t a1, signed int a2)
{
  if (a1)
  {
    NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
    if (NormalizedPeakBitrate <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = NormalizedPeakBitrate;
    }

    if (v4 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4;
    }

    LODWORD(a1) = vcvtpd_s64_f64(v4 * 100.0 / v5);
  }

  return a1;
}

uint64_t FigAlternateGetCodecString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 16);
  }

  return result;
}

uint64_t FigAlternateGetSupplementalCodecString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 72);
  }

  return result;
}

BOOL FigAlternateHasDeclaredPathwayID(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 152) != 0;
  }

  return result;
}

__CFString *FigAlternateGetPathwayID(uint64_t a1)
{
  v1 = @".";
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 152))
    {
      return *(DerivedStorage + 152);
    }
  }

  return v1;
}

uint64_t FigAlternateIsIFrameOnly(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 24);
  }

  return result;
}

uint64_t FigAlternateHasValidCodecs(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 418))
  {
    IsValidCodecString = *(DerivedStorage + 417);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (v3)
    {
      MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
      if (!MediaValidatorPlist)
      {
        MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
      }

      IsValidCodecString = FigStreamAlternateIsValidCodecString(v3, MediaValidatorPlist, 0, 0, 0, 0);
    }

    else
    {
      IsValidCodecString = 1;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 417) = IsValidCodecString;
    *(v5 + 418) = 1;
  }

  FigSimpleMutexUnlock();
  return IsValidCodecString;
}

const __CFString *FigAlternateHasUnknownCodecs(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 424))
  {
    v2 = *(DerivedStorage + 423);
  }

  else
  {
    FigSimpleMutexUnlock();
    v2 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (v2)
    {
      MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
      if (!MediaValidatorPlist)
      {
        MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
      }

      if (FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v2, MediaValidatorPlist, &v6, 0))
      {
        v2 = 0;
      }

      else
      {
        v2 = ((v6 >> 2) & 1);
      }
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 423) = v2;
    *(v4 + 424) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateHasVideoCodecType(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return fa_CodecsIncludeVideoFormat(result, a2, 0);
  }

  return result;
}

uint64_t fa_CodecsIncludeVideoFormat(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  }

  else
  {
    v5 = 0;
  }

  CodecAndProfile = 0;
  if (a2 <= 1685481572)
  {
    if (a2 <= 1635148594)
    {
      if (a2 == 1635135537)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(DerivedStorage + 316))
        {
          CodecAndProfile = *(DerivedStorage + 315);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v18 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v18 + 315) = CodecAndProfile;
          *(v18 + 316) = 1;
        }

        goto LABEL_63;
      }

      if (a2 == 1635148593)
      {
        v10 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v10 + 300))
        {
          CodecAndProfile = *(v10 + 299);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v19 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v19 + 299) = CodecAndProfile;
          *(v19 + 300) = 1;
        }

        goto LABEL_63;
      }
    }

    else
    {
      switch(a2)
      {
        case 1635148595:
          v15 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v15 + 302))
          {
            CodecAndProfile = *(v15 + 301);
          }

          else
          {
            FigSimpleMutexUnlock();
            CodecAndProfile = FigCFStringFind();
            v22 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v22 + 301) = CodecAndProfile;
            *(v22 + 302) = 1;
          }

          goto LABEL_63;
        case 1684108849:
          v12 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (a3 == 10)
          {
            if (v12[320])
            {
              CodecAndProfile = v12[319];
            }

            else
            {
              FigSimpleMutexUnlock();
              CodecAndProfile = fa_CodecStringFindCodecAndProfile(v5, @"dav1", 10);
              v27 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v27 + 319) = CodecAndProfile;
              *(v27 + 320) = 1;
            }
          }

          else if (v12[318])
          {
            CodecAndProfile = v12[317];
          }

          else
          {
            FigSimpleMutexUnlock();
            CodecAndProfile = FigCFStringFind();
            v28 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v28 + 317) = CodecAndProfile;
            *(v28 + 318) = 1;
          }

          goto LABEL_63;
        case 1685481521:
          v8 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (a3 == 5)
          {
            if (v8[314])
            {
              CodecAndProfile = v8[313];
            }

            else
            {
              FigSimpleMutexUnlock();
              CodecAndProfile = fa_CodecStringFindCodecAndProfile(v5, @"dvh1", 5);
              v30 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v30 + 313) = CodecAndProfile;
              *(v30 + 314) = 1;
            }
          }

          else if (a3 == 20)
          {
            if (v8[312])
            {
              CodecAndProfile = v8[311];
            }

            else
            {
              FigSimpleMutexUnlock();
              CodecAndProfile = fa_CodecStringFindCodecAndProfile(v5, @"dvh1", 20);
              v29 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v29 + 311) = CodecAndProfile;
              *(v29 + 312) = 1;
            }
          }

          else if (v8[310])
          {
            CodecAndProfile = v8[309];
          }

          else
          {
            FigSimpleMutexUnlock();
            CodecAndProfile = FigCFStringFind();
            v31 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v31 + 309) = CodecAndProfile;
            *(v31 + 310) = 1;
          }

          goto LABEL_63;
      }
    }
  }

  else if (a2 > 1785750886)
  {
    switch(a2)
    {
      case 1785750887:
        v17 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v17 + 296))
        {
          CodecAndProfile = *(v17 + 295);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v26 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v26 + 295) = CodecAndProfile;
          *(v26 + 296) = 1;
        }

        goto LABEL_63;
      case 1835692135:
        v14 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v14 + 298))
        {
          CodecAndProfile = *(v14 + 297);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v21 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v21 + 297) = CodecAndProfile;
          *(v21 + 298) = 1;
        }

        goto LABEL_63;
      case 1987063865:
        v9 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v9 + 322))
        {
          CodecAndProfile = *(v9 + 321);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v24 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v24 + 321) = CodecAndProfile;
          *(v24 + 322) = 1;
        }

        goto LABEL_63;
    }
  }

  else
  {
    switch(a2)
    {
      case 1685481573:
        v16 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v16 + 308))
        {
          CodecAndProfile = *(v16 + 307);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v25 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v25 + 307) = CodecAndProfile;
          *(v25 + 308) = 1;
        }

        goto LABEL_63;
      case 1751479857:
        v13 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v13 + 306))
        {
          CodecAndProfile = *(v13 + 305);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v20 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v20 + 305) = CodecAndProfile;
          *(v20 + 306) = 1;
        }

        goto LABEL_63;
      case 1752589105:
        v7 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v7 + 304))
        {
          CodecAndProfile = *(v7 + 303);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v23 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v23 + 303) = CodecAndProfile;
          *(v23 + 304) = 1;
        }

LABEL_63:
        FigSimpleMutexUnlock();
        break;
    }
  }

  return CodecAndProfile;
}

BOOL FigAlternateHasVideoDolbyVisionProfile(_BOOL8 result, int a2)
{
  if (result)
  {
    v3 = result;
    return fa_CodecsIncludeVideoFormat(result, 1685481521, a2) || fa_CodecsIncludeVideoFormat(v3, 1684108849, a2) != 0;
  }

  return result;
}

double FigAlternateGetResolution(uint64_t a1)
{
  if (a1)
  {
    v1 = CMBaseObjectGetDerivedStorage() + 160;
  }

  else
  {
    v1 = MEMORY[0x1E695F060];
  }

  return *v1;
}

uint64_t FigAlternateGetPixelCount(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = (DerivedStorage + 160);
    v3 = (DerivedStorage + 168);
  }

  else
  {
    v2 = MEMORY[0x1E695F060];
    v3 = (MEMORY[0x1E695F060] + 8);
  }

  return *v3 * *v2;
}

uint64_t FigAlternateGetPixelPerSecondCount(__CFArray *a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = *(DerivedStorage + 168) * *(DerivedStorage + 160);
    v4 = *(CMBaseObjectGetDerivedStorage() + 56);
  }

  else
  {
    v3 = *(MEMORY[0x1E695F060] + 8) * *MEMORY[0x1E695F060];
    v4 = 0.0;
  }

  if (v4 == 0.0)
  {
    v4 = 23.976;
  }

  return (v4 * v3) << FigAlternateHasMVStereoVideo(a1);
}

double FigAlternateGetFrameRate(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 56);
  }

  else
  {
    return 0.0;
  }
}

uint64_t FigAlternateGetFrameRateBucket(uint64_t a1)
{
  if (a1)
  {
    v1 = *(CMBaseObjectGetDerivedStorage() + 56);
  }

  else
  {
    v1 = 0.0;
  }

  if (v1 <= 60.0)
  {
    return v1 > 30.0;
  }

  else
  {
    return 2;
  }
}

uint64_t FigFrameRateToFrameRateBucket(double a1)
{
  if (a1 <= 60.0)
  {
    return a1 > 30.0;
  }

  else
  {
    return 2;
  }
}

uint64_t FigAlternateGetRankingScoreOrAverageBWWithVideoCodecScore(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    CMBaseObjectGetDerivedStorage();
    result = fa_GetAlternateAverageBandwidth(v5);
    v6 = result;
    if (a2)
    {
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      result = FigAlternateGetBestVideoFormat(v5);
      if (!a3)
      {
        return result;
      }
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t FigAlternateGetAlternateIndex(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 28);
  }

  return result;
}

uint64_t FigAlternateGetZeroIndexedAlternateIndex(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 32);
  }

  return result;
}

BOOL FigAlternateHasRankingScore(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 64) > 0.0;
  }

  return result;
}

double FigAlternateGetStartupScore(uint64_t a1)
{
  if (!a1)
  {
    return -1.79769313e308;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 216);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateGetAllowedAOCP(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 116);
  }

  else
  {
    return 1;
  }
}

uint64_t FigAlternateGetAllowedCPC(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 136);
  }

  else
  {
    return -1;
  }
}

uint64_t FigAlternateGetHDCPLevel(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 128);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t FigAlternateHasDeclaredVideoLayoutTags(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 117);
  }

  return result;
}

CFMutableStringRef FigAlternateGetVideoLayoutString(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v4 + 448))
  {
    VideoLayoutLoggingStringFromCollectionArray = *(v4 + 440);
LABEL_10:
    FigSimpleMutexUnlock();
    return VideoLayoutLoggingStringFromCollectionArray;
  }

  FigSimpleMutexUnlock();
  if (!*(CMBaseObjectGetDerivedStorage() + 117))
  {
    VideoLayoutLoggingStringFromCollectionArray = 0;
LABEL_9:
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v6 + 440) = VideoLayoutLoggingStringFromCollectionArray;
    *(v6 + 448) = 1;
    goto LABEL_10;
  }

  VideoLayoutLoggingStringFromCollectionArray = FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(*(v3 + 144));
  if (VideoLayoutLoggingStringFromCollectionArray)
  {
    goto LABEL_9;
  }

  return VideoLayoutLoggingStringFromCollectionArray;
}

CFMutableStringRef FigAlternateGetVideoContentTypeString(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v4 + 464))
  {
    VideoContentTypeStringFromCollectionArray = *(v4 + 456);
LABEL_10:
    FigSimpleMutexUnlock();
    return VideoContentTypeStringFromCollectionArray;
  }

  FigSimpleMutexUnlock();
  if (!*(CMBaseObjectGetDerivedStorage() + 117))
  {
    VideoContentTypeStringFromCollectionArray = 0;
LABEL_9:
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v6 + 456) = VideoContentTypeStringFromCollectionArray;
    *(v6 + 464) = 1;
    goto LABEL_10;
  }

  VideoContentTypeStringFromCollectionArray = FigAlternateCreateVideoContentTypeStringFromCollectionArray(*(v3 + 144));
  if (VideoContentTypeStringFromCollectionArray)
  {
    goto LABEL_9;
  }

  return VideoContentTypeStringFromCollectionArray;
}

__CFString *FigAlternateGetHDCPString(uint64_t a1)
{
  if (a1 && (v1 = *(CMBaseObjectGetDerivedStorage() + 128) + 1, v1 <= 2))
  {
    return off_1E7481AB0[v1];
  }

  else
  {
    return @"Unknown";
  }
}

__CFString *FigAlternateGetLoggingStringFromHDCPLevel(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481AB0[a1 + 1];
  }
}

uint64_t FigAlternateGetAudioGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 80);
  }

  return result;
}

uint64_t FigAlternateGetVideoGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 88);
  }

  return result;
}